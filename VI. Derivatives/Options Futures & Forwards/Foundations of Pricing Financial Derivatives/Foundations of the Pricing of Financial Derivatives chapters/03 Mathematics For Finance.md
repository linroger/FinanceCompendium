---
aliases: null
tags: null
key_concepts: null
parent_directory: null
cssclasses: academia
title: Elementary Review of Mathematics for Finance
linter-yaml-title-alias: Elementary Review of Mathematics for Finance
primary_tags:
- constituent securities
- two derivatives
- financial analysis
- following expression
secondary_tags:
- math classes
- domestic stocks
- international bonds
- such symbols
- third derivative
- common algebraic functions
- various finance applications
- major formulas
- product notation
tags_extracted: '2025-12-18T04:08:56.402780'
tags_method: max_quality_v1
---

# Elementary Review of Mathematics for Finance

The study of financial derivatives and much of financial economics at the graduate level requires a solid foundation in basic mathematical concepts, some of which may seem incredibly simple to certain well-prepared students and to others who are less well prepared not so obvious. In fact, there are entire courses devoted to mathematical economics. One of the highly acclaimed books on this subject is Fundamental Methods of Mathematical Economics (Chiang and Wainwright 2005), and the reader is encouraged to get a copy of that book to fill in some details of the material in this chapter.

# 3.1 SUMMATION NOTATION

The summation symbol is often used in finance. For example, portfolios and stock indexes are additive combinations of their constituent securities. Consider the summation expression,

$$
\sum_ {i = 1} ^ {n} x _ {i} = x _ {1} + x _ {2} + \dots + x _ {n}. \tag {3.1}
$$

The subscript is sometimes called the index. Any variable that appears on the RHS without the index can be brought to the LHS, as in the following examples:<sup>1</sup>

$$
\sum_ {i = 1} ^ {n} x _ {i} y = y \sum_ {i = 1} ^ {n} x _ {i}, \text {a n d ,} \tag {3.2}
$$

$$
\sum_ {i = 1} ^ {n} x _ {i} a _ {j} = a _ {j} \sum_ {i = 1} ^ {n} x _ {i}. \tag {3.3}
$$

This step often simplifies the equation considerably. In finance, we sometimes encounter a double summation, as is the case when there are two assets. For example,

$$
\sum_ {i = 1} ^ {n} \sum_ {j = 1} ^ {q} x _ {i} a _ {j}, \tag {3.4}
$$

which is like a double loop in computer code. We start with the outer summation, letting  $i = 1$ . We then sum through the inner summation. Then we increment the index in the outer summation and sum through the inner summation again, continuing in that manner until both summations have been completely covered. Thus, the previous equation amounts to the following expression in expanded form,

$$
\begin{array}{l} x _ {1} a _ {1} + x _ {1} a _ {2} + \dots + x _ {1} a _ {q} \\ + x _ {2} a _ {1} + x _ {2} a _ {2} + \dots + x _ {2} a _ {q} \\ + \dots \\ + x _ {n} a _ {1} + x _ {n} a _ {2} + \dots + x _ {n} a _ {q}. \\ \end{array}
$$

Because we can move the  $x_{i}$  outside the second summation, we could have written this equation as

$$
\sum_ {i = 1} ^ {n} x _ {i} \sum_ {j = 1} ^ {q} a _ {j} = \left(x _ {1} + x _ {2} + \dots + x _ {n}\right) \left(a _ {1} + a _ {2} + \dots + a _ {q}\right). \tag {3.5}
$$

Also note that the following operations are appropriate and often used in finance:

$$
\begin{array}{l} \sum_ {i = 1} ^ {n} \left(x _ {i} + y _ {i}\right) = \sum_ {i = 1} ^ {n} x _ {i} + \sum_ {i = 1} ^ {n} y _ {i} \text {a n d} (3.6) \\ \sum_ {i = 1} ^ {n} a _ {j} = n a _ {j}. (3.7) \\ \end{array}
$$

For example, most portfolio managers will frequently need to know the values of their portfolios. The manager may own financial instruments in numerous categories, such as domestic bonds, domestic stocks, international bonds, international stocks, financial derivatives, private equity, and so forth. Within each category, the manager may own varying amounts of numerous individual instruments. Based on the principle of value additivity, the portfolio value of each category is found by summing the number of units held for each instrument  $(N_{t,j,i})$  times the estimated price of the instrument  $(P_{t,j,i})$ , where  $t$  denotes the point in time,  $j$  denotes the category, and  $i$  denotes the specific instrument. Thus, each category's value  $(C_{t,j})$  can be represented as

$$
C _ {t, j} = \sum_ {i = 1} ^ {N _ {j}} N _ {t, j, i} P _ {t, j, i}.
$$

The overall portfolio value  $(V_{t},$  uppercase Greek  $pi)$  can be expressed as

$$
V _ {t} = \sum_ {j = 1} ^ {N _ {C}} C _ {t, j} = \sum_ {j = 1} ^ {N _ {C}} \sum_ {i = 1} ^ {N _ {j}} N _ {t, j, i} P _ {t, j, i}.
$$

# 3.2 PRODUCT NOTATION

Product notation often occurs when linking rates of return. Consider the specification,

$$
\prod_ {i = 1} ^ {n} x _ {i} = x _ {1} x _ {2} \dots x _ {n}. \tag {3.8}
$$

The following operations are appropriate,

$$
\prod_ {i = 1} ^ {n} x _ {i} y = y ^ {n} \prod_ {i = 1} ^ {n} x _ {i}. \tag {3.9}
$$

Here we simply factored out all the  $y$ 's, because they are not indexed and can move to the left of the product sign. Note, however, we can write this as  $y$  raised to the power of  $n$ , inasmuch as  $y$  is multiplied  $n$  times. That is, the previous expression is  $x_{1}yx_{2}y\ldots x_{n}y$  so  $y$  appears as multiplied by itself  $n$  times.

Another permissible operation is

$$
\prod_ {i = 1} ^ {n} x _ {i} a _ {j} = a _ {j} ^ {n} \prod_ {i = 1} ^ {n} x _ {i}. \tag {3.10}
$$

Even though  $a$  is subscripted with  $j$ , its value does not change, because there is no  $j$  in the product expression. Thus,  $a_{j}$  is simply a constant, just as  $y$  was a constant in Equation (3.9).

We can also do the following:

$$
\prod_ {i = 1} ^ {n} x _ {i} y _ {i} = \prod_ {i = 1} ^ {n} x _ {i} \prod_ {i = 1} ^ {n} y _ {i}. \tag {3.11}
$$

That is, if we write out the expression on the LHS, we have  $x_{1}y_{1}x_{2}y_{2}\ldots x_{n}y_{n}$ . This is clearly equal to  $x_{1}x_{2}\ldots x_{n}y_{1}y_{2}\ldots y_{n}$ , the expression on the RHS.

Another simplifying operation is

$$
\prod_ {i = 1} ^ {n} a _ {j} = a _ {j} ^ {n}. \tag {3.12}
$$

Here the value of  $a_{j}$  does not change, so the same term is simply being multiplied by itself  $n$  times.

The rate of return is an important metric in finance and can be measured in many different ways. For this illustration, we assume monthly discrete compounded rates of return based on the portfolio's estimated value at the start  $(V_{t - 1})$  and end  $(V_{t})$  of the month. Thus, the monthly discrete compounded rate of return  $(R_{t}^{d})$  is defined as

$$
R _ {t} ^ {d} = \frac {V _ {t} - V _ {t - 1}}{V _ {t - 1}} = \frac {V _ {t}}{V _ {t - 1}} - 1.
$$

Note that we assume the initial value is positive. Many financial derivatives have initial values of zero presenting some challenges addressed later. The monthly total return  $(TR_{t})$  is based on rearranging the monthly rate of return expression or

$$
T R _ {t} = \frac {V _ {t}}{V _ {t - 1}} = 1 + R _ {t} ^ {d}.
$$

For example, consider a portfolio's return performance over the past five years measured monthly. Hence, we have 60 observations of the rate of return and the five-year total return is

$$
T R _ {T} = \frac {V _ {T}}{V _ {0}},
$$

where the subscript in this case is 60. Based on the definition of monthly total return, we observe the following relationship based on the product notation,

$$
T R _ {T} = \frac {V _ {T}}{V _ {0}} = \prod_ {t = 1} ^ {6 0} T R _ {t} = \prod_ {t = 1} ^ {6 0} \left(1 + R _ {t} ^ {d}\right).
$$

Using the properties of products above, one could easily manipulate total returns based on calendar months (January, February, and so forth) or further decompose monthly total returns into daily returns.

# 3.3 LOGARITHMS AND EXPONENTIALS

The logarithm of a number is an exponent to which a base raised to that power equals the number. There are two primary types of logarithms, the base  $e$ , called the natural or Naperian log, and the base 10, called the common log. We write the former as  $\log_{e}$  or sometimes  $\ln$ , and the latter as  $\log_{10}$ . In financial applications we nearly always use natural logs, which is primarily because continuously compounded interest is consistent with the natural log function.

By definition, the natural log of a value  $x$  is the power to which  $e = 2.71828 \ldots$  must be raised to equal  $x$ . That is, when we say that  $\ln x = a$ , we mean that  $e^a = x$ .

The notation we use for the natural log of  $x$  is sometimes written as  $\ln x$  or  $\ln (x)$  and occasionally  $\log (x)$ . Working with logarithms oftentimes greatly facilitates mathematical operations. The following are typical operations performed with logarithms:

$$
\ln (x y) = \ln x + \ln y, \tag {3.13}
$$

$$
\ln (x ^ {a}) = a \ln x, \tag {3.14}
$$

$$
\ln \left(\frac {x}{y}\right) = \ln x - \ln y, \tag {3.15}
$$

$$
\ln e = 1, \tag {3.16}
$$

$$
\ln e ^ {x} = x, \text {a n d} \tag {3.17}
$$

$$
\ln 1 = 0. \tag {3.18}
$$

Be aware, however, that  $\ln (x + y) \neq \ln x + \ln y$ .

The mathematical definition of  $e$  is

$$
e = \lim  _ {n \rightarrow \infty} \left(1 + \frac {1}{n}\right) ^ {n}. \tag {3.19}
$$

The expression  $e^x$ , which is

$$
e ^ {x} = \lim  _ {n \rightarrow \infty} \left(1 + \frac {x}{n}\right) ^ {n}, \tag {3.20}
$$

and can be approximated as

$$
e ^ {x} = \lim  _ {n \rightarrow \infty} \left(1 + x + \frac {1}{2 !} x ^ {2} + \frac {1}{3 !} x ^ {3} + \dots + \frac {1}{n !} x ^ {n}\right) = \sum_ {i = 0} ^ {\infty} x ^ {i} / i!. \tag {3.21}
$$

The expression  $e^x$  is sometimes written  $\exp(x)$ . Some typical operations with the exponential function are as follows:

$$
e ^ {x} e ^ {y} = e ^ {x + y}, \tag {3.22}
$$

$$
e ^ {x} e ^ {- y} = e ^ {x - y}, \text {a n d} \tag {3.23}
$$

$$
\left(e ^ {x}\right) ^ {n} = e ^ {n x}. \tag {3.24}
$$

Rather than compute discrete rates of return, it is often much more useful to compute continuously compounded rates of return  $(R_{t}^{c})$ . Following the previous illustration, we assume monthly continuous compounding. The monthly continuous rate of return can be expressed as

$$
R _ {t} ^ {c} = \ln \left(\frac {V _ {t}}{V _ {t - 1}}\right).
$$

Clearly, we once again must assume an initial positive value and no possibility of nonpositive value in the future as  $\ln (0)$  is undefined. Unfortunately, many instruments have a significant chance of being nonpositive in the future. The terminal value at time  $t$  can be expressed as

$$
V _ {t} = V _ {t - 1} e ^ {R _ {t} ^ {\zeta}}.
$$

Thus, the monthly total return with continuous compounding is

$$
T R _ {t} = \frac {V _ {t}}{V _ {t - 1}} = e ^ {R _ {t} ^ {c}}.
$$

Again, consider a portfolio's performance over the past five years measured monthly with continuous compounding. Hence, we have 60 observations of the rate of return and the five-year total return is

$$
T R _ {T} = \frac {V _ {T}}{V _ {0}} = \prod_ {t = 1} ^ {6 0} T R _ {t} = \prod_ {t = 1} ^ {6 0} e ^ {R _ {t} ^ {c}} = e ^ {\sum_ {t = 1} ^ {6 0} R _ {t} ^ {c}}.
$$

Using the previous product and summation properties, one could again easily manipulate total returns based on calendar months (January, February, and so forth) or further decompose monthly total returns into daily returns.

# 3.4 SERIES FORMULAS

The following formulas for the sums of various finite and infinite series can be useful. These expressions are not easy to memorize and do not show up often in finance, but they can be used on occasion to simplify results, and you should have an accessible list such as the following:

$$
(\text {a s s u m e s} | x | <   1)
$$

$$
\sum_ {i = 0} ^ {n - 1} x ^ {i} = \frac {1 - x ^ {n}}{1 - x}, \tag {3.25}
$$

$$
\sum_ {i = m} ^ {n} x ^ {i} = \frac {x ^ {m} - x ^ {n + 1}}{1 - x}, \tag {3.26}
$$

$$
\sum_ {i = 1} ^ {n} i = \frac {n (n + 1)}{2}, \tag {3.27}
$$

$$
\sum_ {i = 1} ^ {n} i ^ {2} = \frac {n (n + 1) (2 n + 1)}{6}, \tag {3.28}
$$

$$
\sum_ {i = 1} ^ {n} x ^ {i} = x \left(\frac {1 - x ^ {n}}{1 - x}\right), \tag {3.29}
$$

$$
\sum_ {i = 1} ^ {n} i x ^ {i} = x \frac {1 - (n + 1) x ^ {n} + n x ^ {n + 1}}{(1 - x) ^ {2}}, \tag {3.30}
$$

$$
\sum_ {i = 1} ^ {n} i ^ {2} x ^ {i} = x \frac {1 + x - (n + 1) ^ {2} x ^ {n} + (2 n ^ {2} + 2 n - 1) x ^ {n + 1} - n ^ {2} x ^ {n + 2}}{(1 - x) ^ {3}}, \tag {3.31}
$$

$$
\sum_ {i = 1} ^ {\infty} i x ^ {i} = \frac {x}{(1 - x) ^ {2}} \quad \text {f o r} 0 <   x <   1, \tag {3.32}
$$

$$
\sum_ {k = 0} ^ {\infty} a x ^ {k} = \frac {a}{1 - x}, \tag {3.33}
$$

$$
\sum_ {i = 0} ^ {\infty} x ^ {i} = \frac {1}{1 - x} \text {a s s u m i n g} | x | <   1, \tag {3.34}
$$

$$
\sum_ {i = 1} ^ {\infty} x ^ {i} = \frac {x}{1 - x} \text {a s s u m i n g} | x | <   1, \text {a n d} \tag {3.35}
$$

$$
\sum_ {i = 1} ^ {\infty} \frac {x ^ {i}}{i} = \ln \left(\frac {1}{1 - x}\right) \text {a s s u m i n g} | x | <   1. \tag {3.36}
$$

For example, the value of a simple annual coupon-paying bond  $(V_{B})$  can be expressed as

$$
V _ {B} = \sum_ {i = 1} ^ {N} \frac {C}{(1 + y) ^ {i}} + \frac {P a r}{(1 + y) ^ {N}},
$$

where  $C$  denotes the dollar amount of coupon,  $Par$  denotes the principle or par amount of the bond,  $y$  denotes the yield to maturity expressed in decimal terms, and  $N$  denotes the number of remaining coupons (or years in this case). Rearranging, we have

$$
V _ {B} = C \sum_ {i = 1} ^ {N} \frac {1}{(1 + y) ^ {i}} + \frac {P a r}{(1 + y) ^ {N}}.
$$

Based on Equation (3.29) and  $x = 1 / (1 + y)$ , we have

$$
\begin{array}{l} V _ {B} = C \sum_ {i = 1} ^ {N} x ^ {i} + P a r \left(x ^ {N}\right) = C x \left(\frac {1 - x ^ {n}}{1 - x}\right) + P a r \left(x ^ {N}\right) \\ = C \frac {1}{(1 + y)} \left(\frac {1 - \frac {1}{(1 + y) ^ {N}}}{1 - \frac {1}{(1 + y)}}\right) + \frac {P a r}{(1 + y) ^ {N}} = \frac {C}{y} \left[ 1 - \frac {1}{(1 + y) ^ {N}} \right] + \frac {P a r}{(1 + y) ^ {N}}. \\ \end{array}
$$

This result is much easier to manipulate and express in a spreadsheet or other programming platforms.

# 3.5 CALCULUS DERIVATIVES

The derivative of a function describes the rate at which the function changes. The derivative is a function that is obtained (hence derived) from the original function. Given a function,  $y = f(x)$ , the first derivative is denoted as  $dy / dx$  or  $f'(x)$  and is formally defined as

$$
\frac {d y}{d x} = \lim  _ {\Delta x \rightarrow 0} \frac {\Delta y}{\Delta x} = \lim  _ {\Delta x \rightarrow 0} \frac {f (x + \Delta x) - f (x)}{\Delta x}. \tag {3.37}
$$

An alternative notation for the first derivative is  $y_{x}$ , but we do not use this notation much in finance because we tend to use subscripts for other purposes, such as an indication of a point in time. Thus, an expression such as  $y_{t}$ , which in math might mean  $dy/dt$ , in finance often means the value of  $y$  at time  $t$ .

In words, the first derivative is the limit of the slope of the line tangent to a function at a specific point. It is the rate of change of the function at that point. The terms  $\Delta y$  and  $\Delta x$  are called differentials and the ratio of differentials when  $\Delta x \to 0$  is the derivative. For some functions, however, the derivative does not exist at a certain point, such as a derivative that contains division by  $x$  when  $x = 0$ .

The first derivative is a function itself. There are various rules for determining the derivative of a function. The most commonly used ones are summarized in the following subsections.

# 3.5.1 Derivatives of Common Algebraic Functions

We highlight several algebraic functions that are useful in various finance applications:

$$
y = c (c \text {a c o n s t} \tan t),
$$

$$
\frac {d y}{d x} = 0 (x \text {i s n o t e v e n i n t h e f u n c t i o n}), \tag {3.38}
$$

$$
y = c b \text {w h e r e} b = f (x),
$$

$$
\frac {d y}{d x} = c \frac {d b}{d x}, \tag {3.39}
$$

$$
y = b + \nu \text {w h e r e} b = f (x) \text {a n d} \nu = g (x),
$$

$$
\frac {d y}{d x} = \frac {d b}{d x} + \frac {d v}{d x}, \tag {3.40}
$$

$$
y = b \nu \text {w h e r e} b = f (x) \text {a n d} \nu = g (x),
$$

$$
\frac {d y}{d x} = b \frac {d v}{d x} + v \frac {d b}{d x} (\text {t h e p r o d u c t r u l e}), \tag {3.41}
$$

$$
y = \frac {b}{\nu} \text {w h e r e} b = f (x), \nu = g (x), \text {a n d} \nu \neq 0,
$$

$$
\frac {d y}{d x} = \frac {\nu \frac {d b}{d x} - b \frac {d \nu}{d x}}{\nu^ {2}} (\text {t h e q u o t i e n t r u l e}), \tag {3.42}
$$

$$
y = a ^ {x},
$$

$$
\frac {d y}{d x} = a ^ {x} \ln a, \text {a n d} \tag {3.43}
$$

$$
y = b ^ {n} \text {w h e r e} b = f (x) \text {a n d} n \text {i s i n d e p e n d e n t o f} x,
$$

$$
\frac {d y}{d x} = n b ^ {n - 1} \frac {d b}{d x}. \tag {3.44}
$$

Note in the last example the simple case of  $y = b^{n}$  where  $b = x$  gives

$$
d y / d x = n b ^ {n - 1} (d x / d x) = n x ^ {n - 1}.
$$

To illustrate several of these results, recall the value of a simple bond can be expressed as

$$
V _ {B} = \frac {C}{y} \left[ 1 - \frac {1}{(1 + y) ^ {N}} \right] + \frac {P a r}{(1 + y) ^ {N}},
$$

where  $C$  denotes the coupon amount,  $y$  denotes the periodic yield to maturity,  $N$  denotes the number of remaining payments, and  $Par$  denotes the bond's par value. The first derivative of the bond value with respect to yield to maturity is

$$
\frac {d V _ {B}}{d y} = \frac {d}{d y} \left\{\frac {C}{y} \left[ 1 - \frac {1}{(1 + y) ^ {N}} \right] + \frac {\operatorname {P a r}}{(1 + y) ^ {N}} \right\}. \tag {3.45}
$$

Based on the following definitions,

$$
\begin{array}{l} f (y) = \frac {C}{y} = C y ^ {- 1}, \\ g (y) = 1 - \frac {1}{(1 + y) ^ {N}} = 1 - (1 + y) ^ {- N}, a n d \\ b (y) = \frac {P a r}{(1 + y) ^ {N}} = P a r (1 + y) ^ {- N}. \\ \end{array}
$$

Thus, based on the product rule [Equation (3.41)] and Equation (3.45), we have

$$
\frac {d V _ {B}}{d y} = \frac {d}{d y} [ f (y) g (y) + b (y) ] = f \frac {d g}{d y} + g \frac {d f}{d y} + \frac {d b}{d y}.
$$

Based on Equations (3.39) and (3.45), we have

$$
\frac {d f}{d y} = - C y ^ {- 2} = - \frac {C}{y ^ {2}}.
$$

Based on Equations (3.35) and (3.45), we have

$$
\frac {d g}{d y} = N (1 + y) ^ {- (N + 1)}.
$$

Based on Equations (3.44) and (3.45), we have

$$
\frac {d h}{d y} = - N P a r (1 + y) ^ {- (N + 1)}.
$$

Substituting we have

$$
\begin{array}{l} \frac {d V _ {B}}{d y} = f \frac {d g}{d y} + g \frac {d f}{d y} + \frac {d b}{d y} = \frac {C}{y} N (1 + y) ^ {- (N + 1)} + \left[ 1 - \frac {1}{(1 + y) ^ {N}} \right] \left(- \frac {C}{y ^ {2}}\right) \\ + \left[ - N P a r (1 + y) ^ {- (N + 1)} \right]. \\ \end{array}
$$

Rearranging we have the following well-known result,

$$
\frac {d V _ {B}}{d y} = \frac {C}{y} \left\{\frac {N}{(1 + y) ^ {N + 1}} - \frac {1}{y} \left[ 1 - \frac {1}{(1 + y) ^ {N}} \right] \right\} - \frac {N P a r}{(1 + y) ^ {N + 1}}.
$$

Sensitivities such as these have proven very useful in various risk management tasks, particularly related to managing bond portfolios. We leave one specific application related to bond duration and convexity to an end-of-chapter problem.

# 3.5.2 Derivatives of Logarithmic Functions

We review selected logarithmic functions that are useful in various finance applications:

$$
y = \log_ {a} b \text {w h e r e} b = f (x),
$$

$$
\frac {d y}{d x} = \frac {\log_ {a} e}{b} \frac {d b}{d x}, \tag {3.46}
$$

$$
y = \ln b,
$$

$$
\frac {d y}{d x} = \frac {1}{b} \frac {d b}{d x}, \text {a n d} \tag {3.47}
$$

$$
y = \ln x,
$$

$$
\frac {d y}{d x} = \frac {1}{x}. \tag {3.48}
$$

Several of these results are particularly useful when deriving various risk measures related to option valuation models.

# 3.5.3 Derivatives of Exponential Functions

We review selected exponential functions that are useful in various finance applications:

$$
y = a ^ {b} \text {w h e r e} b = f (x),
$$

$$
\frac {d y}{d x} = a ^ {b} \ln a \frac {d b}{d x}, \tag {3.49}
$$

$$
y = e ^ {b} \text {w h e r e} b = f (x),
$$

$$
\frac {d y}{d x} = e ^ {b} \frac {d b}{d x}, \text {a n d} \tag {3.50}
$$

$$
y = b ^ {\nu} \text {w h e r e} b = f (x) \text {a n d} \nu = g (x),
$$

$$
\frac {d y}{d x} = v b ^ {v - 1} \frac {d b}{d x} + b ^ {v} \ln b \frac {d v}{d x}. \tag {3.51}
$$

Again, several of these results are particularly useful when deriving various risk measures related to option valuation models. We illustrate here an application related to coupon-bearing bonds. Based on continuously compounded discount rates, the value of a bond can be expressed as

$$
V _ {B} = C \sum_ {i = 1} ^ {N} e ^ {- y (i)} + P a r \left(e ^ {- y (N)}\right).
$$

Thus, the first derivative of bond value with respect to the continuously compounded yield to maturity is

$$
\frac {d V _ {B}}{d y} = C \sum_ {i = 1} ^ {N} (- i) e ^ {- y (i)} + (- N) P a r \left(e ^ {- y (N)}\right) = - C \sum_ {i = 1} ^ {N} i e ^ {- y (i)} - (N) P a r \left(e ^ {- y (N)}\right).
$$

Clearly, as the yield increases, the bond value decreases.

# 3.5.4 Derivatives of Trigonometric Functions

Although trigonometric functions rarely make their way into finance applications, it does happen occasionally, particularly when estimating functions, such as the yield curve, or when deploying econometric models. We show here selected derivatives of trigonometric functions:

$$
y = \sin b \mathrm {w h e r e} b = f (x),
$$

$$
\frac {d y}{d x} = \cos b \frac {d b}{d x}, \tag {3.52}
$$

$$
y = \cos b \text {w h e r e} b = f (x),
$$

$$
\frac {d y}{d x} = - \sin b \frac {d b}{d x}, \text {a n d} \tag {3.53}
$$

$$
y = \tan b \text {w h e r e} b = f (x),
$$

$$
\frac {d y}{d x} = \sec^ {2} b \frac {d b}{d x}. \tag {3.54}
$$

One application is modeling calendar seasonality with trigonometric functions.

# 3.5.5 Derivatives of Inverse Functions

The derivative of an inverse functions can be expressed as

$$
y = f (x) \text {a n d} x = g (y) \text {a r e i n v e r s e f u n c t i o n s ,}
$$

$$
\frac {d y}{d x} = \frac {1}{\frac {d x}{d y}}. \tag {3.55}
$$

For example, based on periodic compounding, the future value  $(FV)$  of some present value  $(PV)$  can be expressed as a function of the annualized yield to maturity  $(y)$  or

$$
F V = P V \Big (1 + \frac {y}{m} \Big) ^ {N},
$$

where  $m$  denotes the number of compounding periods per year, and  $N$  denotes time to maturity expressed in compounding periods. Alternatively, we can express the annualized yield to maturity as a function of the future value in the following form,

$$
y = m \left[ e ^ {\frac {\ln \left(\frac {F V}{P V}\right)}{N}} - 1 \right].
$$

Thus,  $y = f(FV)$  and  $FV = g(y)$ . Thus, based on the previous inverse equation, we note

$$
\frac {d y}{d F V} = \frac {1}{\frac {d F V}{d y}},
$$

and

$$
\frac {d F V}{d y} = \frac {d}{d y} \left[ P V \Big (1 + \frac {y}{m} \Big) ^ {N} \right] = \frac {(N) P V}{m} \Big (1 + \frac {y}{m} \Big) ^ {N - 1}.
$$

Therefore,

$$
\frac {d y}{d F V} = \frac {1}{\frac {d F V}{d y}} = \frac {1}{\frac {(N) P V}{m} \left(1 + \frac {y}{m}\right) ^ {N - 1}}.
$$

At times, the derivative of an inverse is easier to obtain than the derivative directly. For example, the direct approach is a bit more tedious as shown here:

$$
\begin{array}{l} \frac {d y}{d x} = \frac {d}{d F V} \left\{m \left[ e ^ {\frac {\ln \left(\frac {F V}{P V}\right)}{N}} - 1 \right] \right\} = m \frac {d}{d F V} \left[ e ^ {\frac {\ln \left(\frac {F V}{P V}\right)}{N}} \right] \\ = \frac {m}{(N) F V} e ^ {\frac {\ln \left(\frac {F V}{P V}\right)}{N}} = \frac {m}{(N) F V} e ^ {\frac {N \ln \left(1 + \frac {y}{m}\right)}{N}} \\ = \frac {m}{(N) P V \left(1 + \frac {y}{m}\right) ^ {N}} \left(1 + \frac {y}{m}\right) = \frac {m}{(N) P V \left(1 + \frac {y}{m}\right) ^ {N - 1}}. \\ \end{array}
$$

# 3.5.6 The Chain Rule

If we have a function  $y = f(x)$  and  $x$  is also a function such as  $x = f(g)$ , then we take the derivative  $dy / dg$  in the following manner:

$$
\frac {d y}{d g} = \left(\frac {d y}{d x}\right) \left(\frac {d x}{d g}\right), \tag {3.56}
$$

or in other words, as the product of two derivatives. This is called the chain rule.

For example, manipulating the Black-Scholes-Merton option pricing model often requires use of the chain rule. For example, the cumulative standard normal distribution can be expressed as

$$
y = N \left(d _ {1}\right) = \int_ {- \infty} ^ {d _ {1}} \frac {e ^ {- \frac {x ^ {2}}{2}}}{\sqrt {2 \pi}} d x.
$$

The value of  $d_{1}$  is

$$
x = d _ {1} \equiv \frac {\ln \left(\frac {S}{X}\right) + \left(r _ {c} + \frac {\sigma^ {2}}{2}\right) \tau}{\sigma \sqrt {\tau}},
$$

where  $S$  denotes the current stock price,  $X$  denotes the strike price,  $r_c$  denotes the annualized, continuously compounded, risk-free interest rate,  $\sigma$  denotes the volatility, and  $\tau$  denotes the time to expiration. Therefore, the first derivative of  $N(d_1)$ , the normal probability based on  $d_1$ , with respect to the stock price can be worked out based on the chain rule or

$$
\frac {d N (d _ {1})}{d S} = \left(\frac {d N (d _ {1})}{d d _ {1}}\right) \left(\frac {d d _ {1}}{d S}\right) = \frac {e ^ {- \frac {d _ {1} ^ {2}}{2}}}{S _ {t} \sigma \sqrt {2 \pi \tau}}.
$$

# 3.5.7 Higher-Order Derivatives

These are examples of the first derivative, the rate of change of the function at the indicated point. There is also a second derivative, which is the rate of change of the first derivative. For example, consider  $y = f(x)$  and its first derivative,  $dy/dx$ . Its second derivative is written as follows:

$$
\frac {d \left(\frac {d y}{d x}\right)}{d x} = \frac {d ^ {2} y}{d x ^ {2}}, \tag {3.57}
$$

and sometimes as  $f''(x)$ . The second derivative provides further information, beyond that of the first derivative, about the characteristics of the function. For example, a positive first derivative and positive second derivative describes a function that is upward sloping with the slope increasing at an increasing rate. A positive first derivative and negative second derivative describes a function that is increasing at a decreasing rate. A negative first derivative and positive second derivative is a function that is decreasing at a decreasing rate. A negative first derivative and negative second derivative is a function that is decreasing at an increasing rate. A zero first derivative and positive second derivative is a function that is at a minimum, whereas a zero first derivative and negative second derivative is a function that is at a maximum. There are also thirdand higher-order derivatives, but we rarely need them in finance.

Again, manipulating the Black-Scholes-Merton option pricing model often requires use of the higher-order derivatives. For example, the second derivative of the call option price with respect to the underlying instrument is known as gamma and, though rarely used, the third derivative of the call option price with respect to the underlying instrument is known as speed.

# 3.5.3 Partial Derivatives

A function containing more than one variable that can be differentiated with respect to one of the variables by treating the other variables as constants is a derivative called a partial derivative. Consider  $y = f(x,z)$  where both  $x$  and  $z$  are variables. Then the partial derivatives are written as  $\partial y / \partial x$  and  $\partial y / \partial z$ , and they represent the change in  $y$  for a change in either  $x$  or  $z$ , while treating the other variable as a constant.

The rules for taking partial derivatives are the same as the rules for taking ordinary derivatives. For example, consider the function  $y = 2x^{3} + 4z^{2} + c$  where  $c$  is a constant. Then

$$
\frac {\partial y}{\partial x} = 6 x ^ {2}
$$

$$
\frac {\partial y}{\partial z} = 8 z.
$$

Likewise, there are second partial derivatives. Hence,

$$
\frac {\partial \left(\frac {\partial y}{\partial x}\right)}{\partial x} = \frac {\partial^ {2} y}{\partial x ^ {2}} = 1 2 x
$$

$$
\frac {\partial \left(\frac {\partial y}{\partial z}\right)}{\partial z} = \frac {\partial^ {2} y}{\partial z ^ {2}} = 8.
$$

It is common in mathematical notation that given a function  $y(x,z)$ , we use an expression such as  $y_{1}$  to be the partial derivative of  $y$  with respect to the first variable indicated in the expression, that is,  $\partial y / \partial x$ , and  $y_{2}$  to be the partial derivative with respect to the second variable, that is,  $\partial y / \partial z$ . Likewise  $y_{11}$  is  $\partial^2 y / \partial x^2$  and  $y_{22}$  is  $\partial^2 y / \partial z^2$ . We do not use this notation much in finance, however, owing to the use of subscripts as other indications such as a point in time or the identity of a variable.

Consider the following function:  $y = 4x^{3}z^{2}$ . The partial derivatives are  $\frac{\partial y}{\partial x} = 12x^{2}z^{2}$  and  $\frac{\partial y}{\partial z} = 8x^{3}z$ . You can also take the partial derivative of each of these derivatives with respect to the other variable. In other words,

$$
\begin{array}{l} \frac {\partial \left(\frac {\partial y}{\partial x}\right)}{\partial z} = \frac {\partial^ {2} y}{\partial x \partial z} = 2 4 x ^ {2} z \\ \frac {\partial \left(\frac {\partial y}{\partial z}\right)}{\partial x} = \frac {\partial^ {2} y}{\partial z \partial x} = 2 4 x ^ {2} z. \\ \end{array}
$$

Note that they are the same. It does not matter which order you do the differentiation.

In mathematical notation these derivatives, sometimes called cross-partial derivatives, often are indicated with such symbols as  $y_{12}$  and  $y_{21}$ , but as noted as shown previously we do not use this notation much in finance.

# 3.5.9 Taylor's Theorem

Taylor's theorem appears a surprising number of times in finance. Consider a function,  $f(x)$ , observed at two points,  $x$  and  $x + \Delta x$ . In other words, the function is  $f(x)$  at point  $x$  and  $f(x + \Delta x)$  at point  $x + \Delta x$ . Taylor's theorem states that we can take the value of the function at  $f(x)$  and add a series of terms to obtain its value at  $f(x + \Delta x)$  in the following manner:

$$
\begin{array}{l} f (x + \Delta x) = f (x) + \frac {f ^ {\prime} (x)}{1 !} \Delta x + \frac {f ^ {\prime \prime} (x)}{2 !} \Delta x ^ {2} + \frac {f ^ {\prime \prime \prime} (x)}{3 !} \Delta x ^ {3} + \dots \\ f (x + \Delta x) - f (x) = \frac {f ^ {\prime} (x)}{1} \Delta x + \frac {f ^ {\prime \prime} (x)}{2} \Delta x ^ {2} + \frac {f ^ {\prime \prime \prime} (x)}{6} \Delta x ^ {3} + \dots \tag {3.58} \\ \Delta f (x) = f ^ {\prime} (x) \Delta x + \frac {f ^ {\prime \prime} (x)}{2} \Delta x ^ {2} + \frac {f ^ {\prime \prime \prime} (x)}{6} \Delta x ^ {3} + \dots . \\ \end{array}
$$

This operation is also called a Taylor series expansion, which is useful when we need to study the properties of the rate of change of a function, rather than its specific value at a point. Although derivatives do the same thing, they represent the change in a function when there is an infinitesimal change in a variable. Taylor series expansions are useful when the variable change is not infinitesimal, as is often the case in finance.

If the function has more than one variable, we can apply Taylor's Theorem to a given variable at a time, holding the other variables constant. The derivatives expressed are then partial derivatives. Alternatively, we could do a Taylor series expansion for more than one

variable. For example, let  $y = f(x,z)$ . Then a Taylor series expansion for both  $x$  and  $z$  would be written as

$$
\begin{array}{l} \Delta y = \frac {\partial y}{\partial x} \Delta x + \frac {\partial y}{\partial z} \Delta z \\ + \frac {1}{2} \frac {\partial^ {2} y}{\partial x ^ {2}} \Delta x ^ {2} + \frac {1}{2} \frac {\partial^ {2} y}{\partial z ^ {2}} \Delta z ^ {2} + \frac {\partial^ {2} y}{\partial x \partial z} \Delta x \Delta z \\ + \dots , \tag {3.59} \\ \end{array}
$$

where the additional terms would represent higher-order partial derivatives and all possible cross-partial combinations.

A Taylor series expansion is exact only in the limit, that is, where the number of terms on the RHS is infinite. In applications we often do a Taylor series expansion to the second order, that is, where terms after the second derivative are dropped, and then change the equals sign to the approximation sign, which is  $\approx$ .

The Taylor series approximation is a widely used tool in financial analysis. For example, various risk measures related to bonds, such as duration and convexity, are derived based on this approximation.

# 3.5.10 Total Differential

Consider a function  $y = f(x, z)$ . Suppose both  $x$  and  $z$  change. If we want to know by how much the function changes, we can obtain the answer using a function called the total differential, which is

$$
d y = \frac {\partial y}{\partial x} d x + \frac {\partial y}{\partial z} d z. \tag {3.60}
$$

This expression essentially says that the change in  $y$  is the change in  $x$  multiplied by the rate at which  $y$  changes if  $x$  changes plus the change in  $z$  multiplied by the rate at which  $y$  changes if  $z$  changes. It is exact only if the changes in  $x$  and  $z$  are very small.

Note that the total differential looks somewhat like a first-order Taylor series expansion. A first-order Taylor series expansion, however, is just an approximation. The total differential is an exact expression. The distinction lies in the fact that the Taylor series expansion applies to discrete changes in  $x$  and  $z$  ( $\Delta x$  and  $\Delta z$ ) and uses partial derivatives to approximate the discrete change in  $y$  ( $\Delta y$ ). If we let  $\Delta x$  and  $\Delta z$  be infinitesimal changes, we denote them as  $dx$  and  $dz$ . Then we restate the Taylor series expansion for the two variables that we presented previously as

$$
\begin{array}{l} d y = \frac {\partial y}{\partial x} d x + \frac {\partial y}{\partial z} d z \\ + \frac {1}{2} \frac {\partial^ {2} y}{\partial x ^ {2}} d x ^ {2} + \frac {1}{2} \frac {\partial^ {2} y}{\partial z ^ {2}} d z ^ {2} + \frac {\partial^ {2} y}{\partial x \partial z} d x d z \\ + \dots \\ = \frac {\partial y}{\partial x} d x + \frac {\partial y}{\partial z} d z, \tag {3.61} \\ \end{array}
$$

which is the total differential and which holds by virtue of the fact that any product such as  $dx \, dx = dx^2$  or  $dx \, dz$  is zero because  $dx$  is a differential and is defined as an infinitesimally small value, which when squared moves it closer to zero. In general,  $dx^k \to 0$  if  $k > 1$ . Interestingly, this result is used a great deal in option pricing as we shall see in later chapters.

# 3.5.11 Total Derivative

As previously noted, a derivative is a ratio of differentials. Working with the total differential, we can divide by one of the variables and obtain the total derivative with respect to that variable. In other words,

$$
\frac {d y}{d x} = \frac {\partial y}{\partial x} + \frac {\partial y}{\partial z} \frac {d z}{d x} \tag {3.62}
$$

$$
{\frac {d y}{d z}} = {\frac {\partial y}{\partial x}} {\frac {d x}{d z}} + {\frac {\partial y}{\partial z}}.
$$

# 3.6 INTEGRATION

Integration is closely related to differentiation, but people usually find it to be a much more difficult concept to grasp. There are two general ways to classify an integral. One, called the indefinite integral, is the opposite of differentiation and is sometimes called the antiderivative. Given a derivative, indefinite integration attempts to find the function that when differentiated obtains the given derivative. For example, suppose we were given the expression  $12x$ . The indefinite integral is  $6x^{2} + a$  where  $a$  is an unknown constant. This specification is written as

$$
\int 1 2 x = 6 x ^ {2} + a,
$$

which is true because if  $y = 6x^2$ , then  $dy / dx = 12x$ . But what if  $y = 6x^2$  plus some constant  $c$ ? Then again,  $dy / dx = 12x$ , so in finding the integral, we must allow for an indefinite constant, which is why it is called the indefinite integral. It is not precise.

The other interpretation of integration is as the definite integral, which is the area under a curve between two points on the  $x$ -axis. For example, suppose we have a function  $f(x)$  and wish to know the area under the curve between the points where  $x = j$  and  $x = k$ . We write this as

$$
\int_ {j} ^ {k} f (x) d x = F (k) - F (j), \tag {3.63}
$$

where the  $F$  function is obtained upon integration, which we shall demonstrate next. The definite integral is defined specifically as the limit of the sum of an infinite series of rectangles drawn under the curve as follows,

$$
\lim _ {n \to \infty} \sum_ {i = 1} ^ {n} f (x _ {i}) \Delta x _ {i} = \int_ {j} ^ {k} f (x) d x,
$$

where the curve between  $x = j$  and  $x = k$  has been partitioned into  $n$  rectangles. Note that the expression  $f(x_{i})\Delta x_{i}$  is the area of a rectangle with a base of length  $\Delta x_{i}$  such that

$\Delta x_{i} = x_{i} - x_{i - 1}$  and height of  $f(x_{i})$  . The expression  $f(x_{i})$  is simply the  $y$  value associated with a value of  $x$  of  $x_{i}$  . The value  $x_{1}$  is  $x_{1} = j$  and the value  $x_{n}$  is  $x_{n} = k$  and the range of  $x$  from  $x_{1} = j$  to  $x_{n} = k$  has been partitioned into an infinite number of subranges. This definition is called a Riemann integral (pronounced Ree-mahn).

The actual process of finding the area under the curve involves determining the integral and evaluating it at the end points. We shall do that later. First let us review the major formulas and rules for integration. For indefinite integrals, the major ones are

$$
\int x ^ {n} d x = \frac {1}{n + 1} x ^ {n + 1} + a, \tag {3.64}
$$

$$
\int e ^ {x} d x = e ^ {x} + a \quad (\text {N o t e}: \text {B e c a u s e} d e ^ {x} / d x = e ^ {x}), \tag {3.65}
$$

$$
\int \frac {1}{x} d x = \ln x + a, \tag {3.66}
$$

$$
\int [ f (x) + g (x) ] d x = \int f (x) d x + \int g (x) d x, \tag {3.67}
$$

$$
\int a f (x) d x = a \int f (x) d x, \tag {3.68}
$$

$$
\int f (b) \frac {d b}{d x} d x = \int f (b) d b, \text {a n d} \tag {3.69}
$$

$$
\int v d b = b v - \int b d v \quad (\text {i n t e g r a t i o n b y p a r t s}). \tag {3.70}
$$

Tables have been constructed to provide the integrals for thousands of functions, though not all functions can be integrated.

Definite integration uses these same rules to determine the integrals but without the addition of the constant. In addition, the following rules are useful tricks in definite integration:

$$
\int_ {j} ^ {k} f (x) d x = - \int_ {k} ^ {j} f (x) d x, \tag {3.71}
$$

$$
\int_ {j} ^ {j} f (x) d x = 0, \tag {3.72}
$$

$$
\int_ {i} ^ {k} f (x) d x = \int_ {i} ^ {j} f (x) d x + \int_ {j} ^ {k} f (x) d x, \quad i \leq j \leq k, \tag {3.73}
$$

$$
\int_ {i} ^ {j} - f (x) d x = - \int_ {i} ^ {j} f (x) d x, \tag {3.74}
$$

$$
\int_ {i} ^ {j} a f (x) d x = a \int_ {i} ^ {j} f (x) d x \quad \text {w h e r e} a \text {i s a c o n s t a n t , a n d} \tag {3.75}
$$

$$
\int_ {i} ^ {j} [ f (x) + g (x) ] d x = \int_ {i} ^ {j} f (x) d x + \int_ {i} ^ {j} g (x) d x. \tag {3.76}
$$

Now let us illustrate an example of finding the area under the curve. Suppose we have the following problem:

$$
\int_ {i} ^ {j} 1 2 x d x.
$$

The value is computed by determining the function that represents the integral of  $12x$ . This would be  $F(x) = 6x^{2}$ . Then we determine  $F(b) - F(a)$ . The process is written in the following manner:

$$
\int_ {i} ^ {j} 1 2 x d x = \left. 6 x ^ {2} \right| _ {a} ^ {b} = 6 b ^ {2} - 6 a ^ {2}.
$$

Hence, given whatever choices we make of  $j$  and i (here  $j = b$  and  $i = a$ ), the area under the curve is easily computed in this manner.

# 3.7 DIFFERENTIAL EQUATIONS

A differential equation is an equation that contains a derivative. The objective of solving a differential equation is to determine the original function whose derivative is given by the differential equation. Differential equations that contain only ordinary derivatives are called ordinary differential equations. Differential equations that contain partial derivatives are called partial differential equations.

Taking a derivative creates a differential equation. For example, the expression

$$
\frac {d y}{d x} = 3 q x ^ {4}
$$

is a differential equation. Oftentimes it is written as

$$
d y = 3 q x ^ {4} d x.
$$

The objective is to "solve" the differential equation, meaning to find the original function whose derivative is the differential equation. Solving differential equations can be very difficult. The one just shown is quite simple: We can use indefinite integration to obtain the following:

$$
\begin{array}{l} \int d y = \int 3 q x ^ {4} d x = 3 q \int x ^ {4} d x \\ y = \left(\frac {3 q}{5}\right) x ^ {5} + a. \\ \end{array}
$$

Note, however, that without knowing the value of  $a$  we cannot be very specific about the solution, which can vary widely depending on the value of  $a$ . To determine a more precise solution, we often impose one or more conditions on the value of  $q$ , which are called initial conditions or boundary conditions and represent values we know. For example, if we know that at  $x = 0$ , the function value is 50, then we can substitute zero for  $x$  and obtain  $50 = (3q / 5)0^{2} + a$  so  $a = 50$ . Or if we know that at  $x = 100$ ,  $y = 5,200$ , then we know that  $5,200 = (3q / 5)100^{2} + a$ , giving us a value for  $a$  in terms of  $q$ .

Differential equations that contain partial derivatives are naturally called partial differential equations or PDEs. They are usually much harder to solve than are ordinary differential equations. Much of the process of solving differential equations involves classifying the equation into a given category of differential equations and then following known rules, hints, and suggestions for solutions of equations in that category. We will also sometimes exploit the fact that we have an idea of what the solution might look like. One approach to pricing options relies on solving a PDE.

# 3.8 RECAP AND PREVIEW

In this chapter we reviewed the rules of summations, products, logarithms, exponentials, and series formulas. In addition, we covered calculus derivatives and integrations, as well as differential equations. This material is strictly for the purposes of refreshing our knowledge from math courses that would have been previously taken.

In Chapter 4, we move on to another review, which covers concepts in probability.

# QUESTIONS AND PROBLEMS

1 The following table provides a summary of a particular portfolio at year end. Demonstrate that the value of the overall portfolio can be found two ways: (1) finding the sector's value and then aggregating to the overall portfolio and (2) aggregating each position in the overall portfolio.

<table><tr><td>Instrument ID</td><td>Sector</td><td>Number of Shares</td><td>Price per Share</td></tr><tr><td>ABC147MZO</td><td>Technology</td><td>100</td><td>56.00</td></tr><tr><td>GIM256AEF</td><td>Technology</td><td>300</td><td>27.00</td></tr><tr><td>BRC829GFP</td><td>Technology</td><td>200</td><td>33.00</td></tr><tr><td>FMC061DEC</td><td>Technology</td><td>500</td><td>17.00</td></tr><tr><td>MRF122NAJ</td><td>Financial services</td><td>1,000</td><td>24.00</td></tr><tr><td>BRO010CHN</td><td>Financial services</td><td>600</td><td>54.00</td></tr><tr><td>NOD332BER</td><td>Financial services</td><td>300</td><td>61.00</td></tr><tr><td>CNC522OKS</td><td>Consumer durables</td><td>1,400</td><td>77.00</td></tr><tr><td>ZAF501ZTY</td><td>Consumer durables</td><td>800</td><td>27.00</td></tr></table>

2 Because the dividend discount model assumes the value of a common stock  $(V_{S})$  is simply the present value at a common discretely compounded discount rate  $(k_{dc})$  and expected annual dividend payments  $(D_{i})$ , we have an infinite series or mathematically,

$$
V _ {S} = \frac {D _ {1}}{\left(1 + k _ {d c}\right)} + \frac {D _ {2}}{\left(1 + k _ {d c}\right) ^ {2}} + \frac {D _ {3}}{\left(1 + k _ {d c}\right) ^ {3}} + \dots = \sum_ {i = 1} ^ {\infty} \frac {D _ {i}}{\left(1 + k _ {d c}\right) ^ {i}}.
$$

Let us assume a single growth rate  $(g)$ , annual dividend payments, and apply the growth rate solely on a dividend payment date. Assuming annual discrete compounding, we can express the stock value, based on this model, as

$$
V _ {S} = \sum_ {i = 1} ^ {\infty} \frac {D _ {0} \left(1 + g _ {d c}\right) ^ {i}}{\left(1 + k _ {d c}\right) ^ {i}}.
$$

Assuming a growth rate less than the discount rate and based on the infinite series results presented in this chapter, express the stock value in closed form. Specifically, prove that the stock value can also be expressed as

$$
V _ {S} = \frac {D _ {0} (1 + g _ {d c})}{(k _ {d c} - g _ {d c})}.
$$

3 Derive the first derivative of the stock value with respect to the discount rate as well as the derivative of the stock value with respect to the growth rate when the stock value can be expressed as

$$
V _ {S} = \frac {D _ {0} (1 + g _ {d c})}{(k _ {d c} - g _ {d c})}.
$$

Assuming  $D_0 = 1.0$ ,  $g_{dc} = 5.0\%$ , and  $k_{dc} = 10\%$ , compute the stock value as well as both derivatives. Justify your derivative solutions by recalculating the derivative assuming a one basis point increase in the growth rate and then a one basis point increase in the discount rate. (Note that a basis point is 0.0001, or  $1 / 100\%$ . For example, if a rate goes from  $6\%$  to  $6.03\%$ , it has gone up three basis points.)

4 US Treasury bonds yields  $(y)$  are quoted based on a semiannual compounding basis where the fraction  $(f)$  of the coupon period that has elapsed (measured in portion of the period) is incorporated. That is,

$$
V _ {B} = \sum_ {i = 1} ^ {N} \frac {\left(\frac {C o u p o n}{m}\right) P a r}{\left(1 + \frac {y}{m}\right) ^ {i - f}} + \frac {P a r}{\left(1 + \frac {y}{m}\right) ^ {N - f}},
$$

where Coupon denotes the stated annual coupon percentage rate,  $m$  denotes the payment frequency (for US treasury bonds,  $m = 2$ ), Par denotes the bond dollar par value, and  $N$  denotes the number of remaining coupon payments. Derive the closed-form expression for the bond value.

5 Modified duration and standard convexity are common bond-related risk measures. Mathematically, they are defined as follows (using the notation in the previous question):

$$
\begin{array}{l} M o d D u r _ {B} \equiv - \frac {d V _ {B} / V _ {B}}{d y} = - \frac {d V _ {B}}{d y} \frac {1}{V _ {B}}, a n d \\ C o n v e x i t y _ {B} \equiv \frac {1}{V _ {B}} \frac {d ^ {2} V _ {B}}{d y ^ {2}}. \\ \end{array}
$$

Based on the properties of the bond valuation equation in the previous problem, derive the modified duration and standard convexity expressions. Illustrate the solution in both series format and closed form.

One approach to establishing the theoretical price of a futures contract is based on the carry model. The carry model asserts the futures price that expires at time  $T$  ( $F_T$ ) is simply the spot price at time  $t$  ( $S_t$ ) grossed up by the risk-free interest rate ( $r_c$ ) and other carry costs ( $cc$ ) over the time to expiration  $\tau = T - t$  or  $F_T = S_t e^{(r_c + cc)\tau}$ . For many risk management applications, we are interested in the first derivative, known as delta, and second derivative, known as gamma, with respect to the spot price. Solve for these values as well as interpret them.

# NOTES

1. Recall LHS and RHS denotes the left-hand side and right-hand side of equations.  
2. These derivatives are referred to as calculus derivatives, which is not typical terminology in math classes. In finance, however, options, forwards, futures, and swaps are referred to as derivative instruments inasmuch as they derive their values from an underlying asset or rate. Hence, we are compelled to make a distinction.  
3. Note that  $\Delta x\to 0$  is read, "  $\Delta x$  tends to zero."  
4. The integral symbol, the elongated  $S$ , literally stands for sum. Definite integration is the sum over an infinite number of rectangles under the curve between the endpoints of interest.

