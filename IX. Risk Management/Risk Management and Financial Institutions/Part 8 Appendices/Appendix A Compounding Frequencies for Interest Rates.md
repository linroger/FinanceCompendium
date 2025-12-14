---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Appendix A
linter-yaml-title-alias: Appendix A
---

# Appendix A

# Compounding Frequencies for Interest Rates statement by a bank that the interest rate on one-year deposits is  $10\%$  per annum sounds straightforward and unambiguous. In fact, its precise meaning depends on the way the interest rate is measured.

If the interest rate is measured with annual compounding, the bank's statement that the interest rate is  $10\%$  means that  $\$ 100$  grows to

$$
\$ 100 \times 1.1 = \$ 110
$$ at the end of one year. When the interest rate is measured with semiannual compounding, it means that we earn  $5\%$  every six months, with the interest being reinvested. In this case,  $\$ 100$  grows to


$$

\$ 100 \times 1.05 \times 1.05 = \$ 110.25

$$ at the end of one year. When the interest rate is measured with quarterly compounding, the bank's statement means that we earn  $2.5\%$  every three months, with the interest being reinvested. The  $\$ 100$ then grows to

$$
\$ 100 \times 1.025 ^ {4} = \$ 110.38
$$ at the end of one year. Table A.1 shows the effect of increasing the compounding frequency further.


The compounding frequency defines the units in which an interest rate is measured. A rate expressed with one compounding frequency can be converted into an equivalent

Table A.1 Effect of the Compounding Frequency on the Value of  $\$ {100}$  at the End of One Year When the Interest Rate is 10\% per Annum

<table><tr><td>Compounding Frequency</td><td>Value of $100 at End of Year ($)</td></tr><tr><td>Annually (m = 1)</td><td>110.00</td></tr><tr><td>Semiannually (m = 2)</td><td>110.25</td></tr><tr><td>Quarterly (m = 4)</td><td>110.38</td></tr><tr><td>Monthly (m = 12)</td><td>110.47</td></tr><tr><td>Weekly (m = 52)</td><td>110.51</td></tr><tr><td>Daily (m = 365)</td><td>110.52</td></tr></table> rate with a different compounding frequency. For example, from Table A.1 we see that  $10.25\%$  with annual compounding is equivalent to  $10\%$  with semiannual compounding. We can think of the difference between one compounding frequency and another to be analogous to the difference between kilometers and miles. They are two different units of measurement.


To generalize our results, suppose that an amount  $A$  is invested for  $n$  years at an interest rate of  $R$  per annum. If the rate is compounded once per annum, the terminal value of the investment is

$$

A (1 + R) ^ {n}

$$

If the rate is compounded  $m$  times per annum, the terminal value of the investment is

$$

A \left(1 + \frac {R}{m}\right) ^ {m n} \tag {A.1}

$$

When  $m = 1$  the rate is sometimes referred to as the equivalent annual interest rate.

# A.1 Continuous Compounding

The limit as the compounding frequency,  $m$ , tends to infinity is known as continuous compounding. With continuous compounding, it can be shown that an amount  $A$  invested for  $n$  years at rate  $R$  grows to

$$

A e ^ {R n} \tag {A.2}

$$ where  $e = 2.71828$ . The function  $e^x$ , which is also written  $\exp(x)$ , is built into most calculators, so the computation of the expression in equation (A.2) presents no problems. In the example in Table A.1,  $A = 100$ ,  $n = 1$ , and  $R = 0.1$ , so that the value to which  $A$  grows with continuous compounding is

$$
1 0 0 e ^ {0. 1} = \$ 1 1 0. 5 2
$$

This is (to two decimal places) the same as the value with daily compounding. For most practical purposes, continuous compounding can be thought of as being equivalent to daily compounding. Compounding a sum of money at a continuously compounded rate  $R$  for  $n$  years involves multiplying it by  $e^{Rn}$ . Discounting it at a continuously compounded rate  $R$  for  $n$  years involves multiplying by  $e^{-Rn}$ .

Suppose that  $R_{c}$  is a rate of interest with continuous compounding and  $R_{m}$  is the equivalent rate with compounding  $m$  times per annum. From the results in equations (A.1) and (A.2), we have

$$
A e ^ {R _ {c} n} = A \left(1 + \frac {R _ {m}}{m}\right) ^ {m n}
$$ or


$$ e ^ {R _ {c}} = \left(1 + \frac {R _ {m}}{m}\right) ^ {m}
$$

This means that

$$
R _ {c} = m \ln \left(1 + \frac {R _ {m}}{m}\right) \tag {A.3}
$$ and


$$

R _ {m} = m \left(e ^ {R _ {c} / m} - 1\right) \tag {A.4}

$$

These equations can be used to convert a rate with a compounding frequency of  $m$  times per annum to a continuously compounded rate and vice versa. The function  $\ln x$  is the natural logarithm function and is built into most calculators. It is defined so that if  $\gamma = \ln x$ , then  $x = e^y$ .

# Example A.1

Consider an interest rate that is quoted as  $10\%$  per annum with semiannual compounding. From equation (A.3), with  $m = 2$  and  $R_{m} = 0.1$ , the equivalent rate with continuous compounding is

$$

2 \ln \left(1 + \frac {0 . 1}{2}\right) = 0. 0 9 7 5 8

$$ or  $9.758\%$  per annum.

# Example A.2

Suppose that a lender quotes the interest rate on loans as  $8\%$  per annum with continuous compounding, and that interest is actually paid quarterly. From equation (A.4), with  $m = 4$  and  $R_{c} = 0.08$ , the equivalent rate with quarterly compounding is

$$
4 (e ^ {0. 0 8 / 4} - 1) = 0. 0 8 0 8
$$ or  $8.08\%$  per annum. This means that on a  $\$ 1,000$  loan, interest payments of  $\$ 20.20$  would be required each quarter.


