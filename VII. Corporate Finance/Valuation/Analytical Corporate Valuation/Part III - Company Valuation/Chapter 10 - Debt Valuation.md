---
title: Chapter 10 - Debt Valuation
parent_directory: Analytical Corporate Valuation/Part III - Company Valuation
formatted: 2025-12-20 20:15:00 PM
formatter_model: kimi-k2-turbo
cli-tool: opencode
primary_tags:
  - debt valuation
  - bond pricing
  - interest rate rules
secondary_tags:
  - simple interest
  - compound interest
  - continuously compounded interest
  - commercial interest
cssclasses: academia
---

# Chapter 10 - Debt Valuation

Abstract Governments and companies can raise the capital needed to finance their activities by issuing bonds to a public market. A bond is nothing more than a loan. There are several types of bonds. However, there are some elements common to all of them. In reality, any bond can be defined on the basis of five main elements: face value, price, coupon, maturity date, issuer. There is a strict relationship between price and risk of the bond. Specifically, the lower the grade of the bond, the higher the risk and therefore higher the return offered by the issuer to the investors in the bond. Therefore, not all bonds are inherently safer than stocks. Certain types of bonds can be just as risky, if not riskier in certain conditions, than stocks. Usually it is normal to measure the free-risk rate on the basis of the government bonds. Indeed, the default risk of the government tend to be small (mostly for the developed countries). It is because the government will always be able (or should be able) to bring in future revenues through taxation. On the other hand, companies must be able to generate profit in order to survive and face their debt obligations. The difference in risk between government and corporate bonds implies that the corporate bonds must offer a higher yield than government bonds. Therefore, it is necessary to evaluate the government bonds in order to estimate the free-risk rate, as well the company bonds on the basis of its default risk.

## 10.1 Interest Rate Rules

Any financial operations can be obtained by combining three main mechanisms for the transaction of goods and assets (Hicks 1939):

- spot transaction: when the two parts of the transaction perform their obligations at the date of the agreement or signing of the contract;
- forward transaction: when the two parts of the transaction perform their obligations at a future date;
- loan transaction: when one of the parts perform its obligations immediately and the other part in a future time.

Generally, any financial operation can be defined on the basis of two variables: time and money.

On the basis of these two variables, two main basic capital financial operations can be defined:

- loan: at an initial time  $t$  the investor obtains a capital  $C$  (cash-in) and at the end of the period  $T$  he has to reimburse the capital  $M$  (cash-out);
- investment: at an initial time  $t$  the investor lends a capital  $C$  (cash-out) and at the end of the time  $T$  he receives a capital  $M$  (cash-in).

The time of the financial operation plays a key role in the investment valuation. The main problem refers to the equivalence between the  $C$ -capital in  $t$ -time  $(K_{t})$  and the  $M$ -capital in  $T$ -time  $(M_{T})$ :

$$
C _ {t} \sim M _ {T}
$$

There are two mechanisms to move money over time:

- investment: it defines the value of  $M$ -capital in  $T$ -time related to the  $C$ -capital invested in  $t$ -time. In this case,  $M$ -capital in  $T$ -time is equal to the principal ( $C$ -capital in  $t$ -time) plus accrued interests ( $I$ );
- discounting: it defines the present value of the  $C$ -capital in  $t$ -time related to the  $M$ -capital that will be received in  $T$ -time. In this case,  $C$ -capital in  $t$ -time is the present value of the  $M$ -capital in  $T$ -time.

The investor always prefers (in a strict sense  $(\succ)$ ) a  $C$ -capital in  $t$ -time rather than  $M$ -capital in  $T$ -time (the capital of today is preferred to capital tomorrow):

$$
C _ {t} \succ M _ {T}
$$

For further understanding of these two operations, consider a time equal to one year.

In the investment operation, the capital  $(C)$  invested today  $(t_0)$  will be equal from one year  $(t_1)$  to the capital invested  $(C)$  plus the interest  $(I)$  as follows:

$$
M = C + I \tag {10.1}
$$

On the basis of Eq. (10.1), we have the Interest  $(I)$  as difference between  $M$  and  $C$  as follows:

$$
I = M - C \tag {10.2}
$$

The Interest Rate  $(i)$  can be defined as the ratio between the Interest  $(I)$  and the Capital invested  $(C)$ , as follows:

## 10.1 Interest Rate Rules

$$
i = \frac {I}{C} \tag {10.3}
$$

Therefore, on the basis of Interest Rate  $(i)$  as defined in Eq. (10.3), it is possible to obtain the Interest  $(I)$  as follows:

$$
I = C i \tag {10.4}
$$

On the basis of Eqs. (10.2) and (10.4), we have:

$$
C i = M - C
$$

and by solving for  $\mathbf{M}$ , we have:

$$
M = C (1 + i) \tag {10.5}
$$

The factor  $(1 + i)$  is called the capitalization factor and it is usually denoting with  $r$ , so that:

$$
r = (1 + i) \tag {10.6}
$$

Therefore, Eq. (10.5) can also be rewritten as follows:

$$
M = C r \tag {10.7}
$$

In the case of discounting operation, the present value  $(V)$  today  $(t_0)$  of the capital  $(C)$  that will be received from one year  $(t_1)$  is equal to the capital  $(C)$  minus a discount factor  $(D)$  as follows:

$$
V = C - D \tag {10.8}
$$

On the basis of Eq. (10.8) it gets the Discount  $(D)$  as difference between  $C$  and  $V$  as follows:

$$
D = C - V \tag {10.9}
$$

The Discount Rate  $(d)$  can be defined as the ratio between the Discount  $(D)$  and the Capital  $(C)$ , as follows:

$$
d = \frac {D}{C} \tag {10.10}
$$

Therefore, on the basis of Discount Rate  $(d)$  as defined in Eq. (10.10), it is possible to obtain the Discount  $(D)$  as follows:

$$
D = C d \tag {10.11}
$$

On the basis of Eqs. (10.9) and (10.11), we have:

$$
C d = C - V
$$

and solving for  $\mathrm{V}$ , we have:

$$
V = C (1 - d) \tag {10.12}
$$

The factor  $(1 - d)$  is called discount factor and it is usually denoting by  $\nu$  as follows:

$$
v = (1 - d) \tag {10.13}
$$

On the basis of Eq. (10.13), Eq. (10.12) can also rewritten as follows:

$$
V = C v \tag {10.14}
$$

These two operations can be summarized as in Fig. 10.1.

Between the Interest Rate  $(i)$  and Discount Rate  $(d)$  a relationship can be defined. Assume receiving a capital  $(C)$  from one year  $(t_1)$ . Its value today  $(t_0)$  is equal to  $C(1 - d)$ . Assume investing this capital from one year  $(t_1)$ . Its value is equal to  $C(1 - d)(1 + i)$ . These two financial operations can be summarized as in Fig. 10.2.

The amount of the capital at the start must be equal to the amount of the capital at the end, so that:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/87fea16b-33f6-43ec-8056-5ef3565ac4c2/8c9aba3f85bfff89d5112d8dc7ef30d405c7ca56511ded22d20237030fdae9a9.jpg)
Fig. 10.1 Financial operations

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/87fea16b-33f6-43ec-8056-5ef3565ac4c2/c9435fc0a5981510ba24ea16ca8d7906c9a954ccfc109682bd7c79ab9ed9f3db.jpg)
Fig. 10.2 The relationship between interest rate and discount rate

## 10.1 Interest Rate Rules

$$
C (1 - d) (1 + i) = C
$$

and then:

$$
(1 - d) (1 + i) = 1 \rightarrow\begin{array}{l}i = \frac {d}{1 - d}\\d = \frac {i}{1 + i}\end{array}\tag {10.15}
$$

Therefore, for a time period longer than one ( $t > 1$ ), the interest and discount rates as well as interest and discount factors are function of the time:  $i(t), d(t), r(t), \nu(t)$ . They are defined on the basis of the following rules:

Simple Interest;
- Compound Interest;
- Continuously Compound Interest;
- Commercial Interest.

It is relevant to note that the time  $t$  can be expressed on the basis of the year, month and day. For the second and the third a ratio must be used in which the denominator is equal to 12 for the months and 360 for the days.

Obviously, time and interest rates must be expressed in the same unit-time period: time in years, and interest rate in year; time in months and interest rates in months.

## Simple Interest

Interest is paid at the end of the accrued period without any capital reinvestment. Consequently, there is no new-interest earned on the matured interest.

The basic equation of capitalization factor  $(r(t))$  is the following:

$$
r (t) = 1 + i \cdot t \tag {10.16}
$$

and then:

$$
M = C r (t) \rightarrow M = C (1 + i \cdot t) \tag {10.17}
$$

The interest rate  $(i(t))$  is equal to:

$$
i (t) = \frac {I}{C} = \frac {M - C}{C} = \frac {C (1 + i \cdot t) - C}{C} = \frac {C [ (1 + i \cdot t) - 1 ]}{C} = (1 + i \cdot t) - 1 = i \cdot t
$$

and then:

$$
i (t) = i \cdot t \tag {10.18}
$$

The relationship between the capitalization factor  $(r(t))$  and discount factor  $(\nu(t))$  can be defined as follows:

$$
r (t) \cdot v (t) = 1 \tag {10.19}
$$

and consequently:

$$
v (t) = \frac {1}{r (t)} \leftrightarrow r (t) = \frac {1}{v (t)} \tag {10.20}
$$

On the basis of Eq. (10.16), the discount factor  $(\nu(t))$  as defined in Eq. (10.20) on the basis of Eq. (10.19) can be defined as follows:

$$
v (t) = \frac {1}{r (t)} \rightarrow v (t) = \frac {1}{1 + i \cdot t} \tag {10.21}
$$

Consequently, we have:

$$
V = C v (t) \rightarrow V = C \frac {1}{r (t)} \rightarrow V = C \cdot \frac {1}{1 + i \cdot t} \tag {10.22}
$$

The discount factor  $(\nu(t))$  can be defined as follows:

$$
v (t) = 1 - d \cdot t \tag {10.23}
$$

On the basis of Eqs. (10.16), (10.20) and (10.23), it is possible to define  $d \cdot t$  as follows:

$$
v (t) = \frac {1}{r (t)}
$$

$$
r (t) = 1 + i \cdot t \rightarrow \frac {1}{1 + i \cdot t} = 1 - d \cdot t
$$

$$
v (t) = 1 - d \cdot t
$$

and then:

$$
d \cdot t = \frac {i \cdot t}{1 + i \cdot t} \tag {10.24}
$$

On the basis of  $r(t)$  and the interest rate  $(i)$ , it is possible to define the time by solving Eq. (10.16) for time  $t$  as follows:

$$
t = \frac {r (t) - 1}{i} \tag {10.25}
$$

## 10.1 Interest Rate Rules

It is possible to define the rules of Simple Interest in terms of discount rate  $(d)$  rather than the interest rate  $(i)$ . On the basis of Eq. (10.15), we have:

$$
i = \frac {d}{1 - d}; \quad d = \frac {i}{1 + i}
$$

and on the basis of Eq. (10.18), and by considering Eq. (10.15), it is possible to define  $i(t)$  in terms of  $d(t)$  as follows:

$$
\begin{array}{l} i (t) = i \cdot t \rightarrow i = \frac {d}{1 - d} \rightarrow i (t) = \left(\frac {d}{1 - d}\right) \cdot t \\ i (t) = \frac {d}{1 - d} \cdot t \tag {10.26} \\ \end{array}
$$

On the basis of Eq. (10.26) it is possible to redefine  $r(t), \nu(t), d(t), t$  as follows:

$$
\begin{array}{l} r (t) = 1 + i \cdot t \rightarrow r (t) = 1 + \frac {d}{1 - d} \cdot t = \frac {1 - d + d \cdot t}{1 - d} \\ v (t) = \frac {1}{r (t)} = \frac {1}{1 + i \cdot t} \rightarrow v (t) = \frac {1}{\frac {1 - d + d \cdot t}{1 - d}} = \frac {1 - d}{1 - d + d \cdot t} \\ d (t) = \frac {i \cdot t}{1 + i \cdot t} \rightarrow d (t) = \frac {\frac {d \cdot t}{1 - d}}{\frac {1 - d + d \cdot t}{1 - d}} = \frac {d \cdot t}{1 - d} \cdot \frac {1 - d}{1 - d + d \cdot t} = \frac {d \cdot t}{1 - d + d \cdot t} \\ t = \frac {r (t) - 1}{i} \rightarrow t = \frac {r (t) - 1}{\frac {d}{1 - d}} = \frac {[ r (t) - 1 ] \cdot (1 - d)}{d} \\ \end{array}
$$

In the simple interest, the basic relationship can be summarized as follows:

$$
r (t) = 1 + i \cdot t; \quad r (t) = \frac {1 - d + d \cdot t}{1 - d}
$$

$$
v (t) = \frac {1}{1 + i ^ {d}}; \quad v (t) = \frac {1 - d ^ {w}}{1 - d + d ^ {c} t}
$$

$$
i (t) = i \cdot t; \quad i (t) = \frac {d}{1 - d} \cdot t \tag {10.27}
$$

$$
d (t) = \frac {i \cdot t}{1 + i \cdot t}; \quad d (t) = \frac {a \cdot d \cdot t}{1 - d + d \cdot t}
$$

$$
t = \frac {r (t) - 1}{i}; \quad t = \frac {[ r (t) - 1 ] \cdot (1 - d)}{d}
$$

Therefore, by considering the initial capital  $C$  and the final capital  $C$ , in the simple interest rule we have:

$$
C = M \cdot \frac {1}{(1 + i \cdot t)}
$$

$$
\begin{array}{l} M = C (1 + i \cdot t) \rightarrow \quad i = \frac {M - C}{C t} \tag {10.28} \\ t = \frac {M _ {C , i} ^ {\rightarrow C}}{C . i} \\ \end{array}
$$

It is relevant to know the dynamics of  $\nu(t)$  and  $d(t)$  as function of time  $t$ :

-  $\lim_{t\to \infty}r(t) = \infty$ $\lim_{t\to 0}r(t) = 1$
-  $\lim_{t\to \infty}v(t) = \frac{1}{\infty} = 0;\quad \lim_{t\to 0}v(t) = \frac{1}{1} = 1$
-  $\lim_{t\to \infty}d(t) = \frac{\infty}{\infty} = \frac{i}{i} = 1;\quad \lim_{t\to 0}d(t) = \frac{0}{1} = 0.$

Otherwise,  $r(t)$  draws a straight-line with slope equal to  $i$  and intercept equal to 1. Therefore,  $i$  measures the increase of  $r(t)$  to the increase of the time  $(t)$ . The relationship shows how the interest is always the same and the capital increases in order to the sum of interests. It is possible to summarize these relationships as follows as in Fig. 10.3.

## Compound Interest

Interest generates interest. At the end of the compounding period accrued interest is reinvested with capital. Consequently, in each period interests are calculated based on capital and interest matured in the previous period with increasing of the amount earned at the end of the periods.

The basic equation of capitalization factor  $(r(t))$  is as follows:

$$
r (t) = (1 + i) ^ {t} \tag {10.29}
$$

and then:

$$
M = C r (t) \rightarrow M = C (1 + i) ^ {t} \tag {10.30}
$$

The interest rate  $(i(t))$  is equal to:

$$
i (t) = \frac {M - C}{C} = \frac {C (1 + i) ^ {t} - C}{C} = \frac {C [ (1 + i) ^ {t} - 1 ]}{C} = (1 + i) ^ {t} - 1
$$

and then:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/87fea16b-33f6-43ec-8056-5ef3565ac4c2/19bc7d8eee53bb48c088825b468a749e82d2398bd5a52b5454008db104b5c8c4.jpg)
Fig. 10.3 Relationship between time  $t$  and  $r(t)$ ,  $\nu(t)$ ;  $d(t)$  in simple interest rule

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/87fea16b-33f6-43ec-8056-5ef3565ac4c2/e4568ae3b8d63ca979a3675006f293460ec7cf68ad529af0ee32b57f749d9490.jpg)

## 10.1 Interest Rate Rules

$$
i (t) = (1 + i) ^ {t} - 1 \tag {10.31}
$$

The relationship between the capitalization factor  $(r(t))$  and discount factor  $(\nu(t))$  are defined by Eqs. (10.19) and (10.20) as follows:

$$
r (t) \cdot v (t) = 1 \to \begin{array}{c} v (t) = \frac {1}{r (t)} \\ r (t) = \frac {1}{v (t)} \end{array}
$$

and in this context we have:

$$
v (t) = \frac {1}{(1 + i) ^ {t}} \tag {10.32}
$$

Consequently, we have:

$$
V = C v (t) \rightarrow V = C \frac {1}{r (t)} \rightarrow V = C \cdot \frac {1}{(1 + i) ^ {t}} \tag {10.33}
$$

On the basis of Eq. (10.23), the discount factor  $(\nu(t))$  is equal to:

$$
v (t) = 1 - d \cdot t
$$

On the basis of Eqs. (10.20), (10.23) and (10.29), it is possible to define  $d \cdot t$  as follows:

$$
v (t) = \frac {1}{r (t)}
$$

$$
r (t) = (1 + i) ^ {t} \rightarrow \frac {1}{(1 + i) ^ {t}} = 1 - d \cdot t
$$

$$
v (t) = 1 - d \cdot t
$$

and then:

$$
d \cdot t = \frac {(1 + i) ^ {t} - 1}{(1 + i) ^ {t}} \tag {10.34}
$$

On the basis of  $r(t)$  and the interest rate  $(i)$ , it is possible to define the time  $t$  by solving Eq. (10.29) as follows:

$$
r (t) = (1 + i) ^ {t} \rightarrow \ln r (t) = \ln (1 + i) ^ {t}; \quad \ln r (t) = t \ln (1 + i)
$$

and then:

$$
t = \frac {\ln r (t)}{\ln (1 + i)} \tag {10.35}
$$

It is possible to define the rules of Compound Interest in terms of discount rate  $(d)$  rather than the interest rate  $(i)$ . On the basis of Eq. (10.15) we have:

$$
i = \frac {d}{1 - d}; \quad d = \frac {i}{1 + i}
$$

and on the basis of Eq. (10.31) and on the basis of Eq. (10.15), it is possible to define  $i(t)$  in terms of  $d(t)$  as follows:

$$
\begin{array}{l} i (t) = (1 + i) ^ {t} - 1 \rightarrow i (t) = \left(1 + \frac {d}{1 - d}\right) ^ {t} - 1 = \frac {1 - (1 - d) ^ {t}}{(1 - d) ^ {t}} \\ i (t) = \frac {1 - (1 - d) ^ {t}}{(1 - d) ^ {t}} \tag {10.36} \\ \end{array}
$$

On the basis of Eq. (10.36) it is possible to redefine  $r(t), \nu(t), d(t), t$  as follows:

$$
\begin{array}{l} r (t) = (1 + i) ^ {t} \rightarrow r (t) = \left(1 + \frac {d}{1 - d}\right) ^ {t} = \frac {1}{(1 - d) ^ {t}} \\ v (t) = \frac {1}{r (t)} = \frac {1}{(1 + i) ^ {t}} \rightarrow v (t) = \frac {1}{\left(1 + \frac {d}{1 - d}\right) ^ {t}} = \frac {1}{\frac {1}{(1 - d) ^ {t}}} = (1 - d) ^ {t} \\ d (t) = \frac {(1 + i) ^ {t} - 1}{(1 + i) ^ {t}} \rightarrow d (t) = \frac {\left(1 + \frac {d}{1 - d}\right) ^ {t} - 1}{\left(1 + \frac {d}{1 - d}\right) ^ {t}} = \frac {\frac {1}{(1 - d) ^ {t}} - 1}{\frac {1}{(1 - d) ^ {t}}} = (1 - d) ^ {t} \\ t = \frac {\ln r (t)}{\ln (1 + i)} \rightarrow t = \frac {\ln r (t)}{\ln \left(1 + \frac {d}{1 - d}\right)} = \frac {\ln r (t)}{\ln \left(\frac {1}{1 - d}\right)} \\ \end{array}
$$

In the compound interest, the baseline relationship can be summarized as follows:

$$
r (t) = (1 + i) ^ {t}; \quad r (t) = \frac {1}{(1 - d) ^ {t}}
$$

$$
v (t) = \frac {1}{(1 + i) ^ {t}}; \quad v (t) = (1 - d) ^ {t}
$$

$$
i (t) = (1 + i) ^ {t} - 1; \quad i (t) = \frac {1 - (1 - d) ^ {t}}{(1 - d) ^ {t}} \tag {10.37}
$$

$$
d (t) = \frac {(1 + i) ^ {t} - 1}{(1 + i) ^ {t}}; \quad d (t) = 1 - (1 - d) ^ {t}
$$

$$
t = \frac {\ln r (t)}{\ln (1 + i)}; \quad t = \frac {\ln r (t)}{\ln \left(\frac {1}{1 - d}\right)}
$$

Therefore, by considering the initial capital  $C$  and the final capital  $C$ , in the compound interest rule we have:

$$
C = M \cdot \frac {1}{(1 + i) ^ {t}}
$$

$$
M = C (1 + i) ^ {t} \rightarrow \quad i = \left(\frac {M}{C}\right) ^ {t} - 1 \tag {10.38}
$$

$$
t = \frac {\ln \left(\frac {M}{C}\right)}{\ln (1 + i)}
$$

With regards to the interest rate and time, it is worth noting that:

$$
M = C (1 + i) ^ {t} \rightarrow\begin{array}{c}\left(\frac {M}{C}\right) ^ {\frac {1}{t}} = \left[ (1 + i) ^ {t} \right] ^ {\frac {1}{t}} \rightarrow \left(\frac {M}{C}\right) ^ {\frac {1}{t}} = (1 + i) ^ {t - \frac {1}{t}} \rightarrow i = \left(\frac {M}{C}\right) ^ {\frac {1}{t}} = i\\\ln \left(\frac {M}{C}\right) = \ln (1 + i) ^ {t} \rightarrow \ln \left(\frac {M}{C}\right) = t \ln (1 + i) \rightarrow t = \frac {\ln \left(\frac {M}{C}\right)}{\ln (1 + i)}\end{array}\tag {10.39}
$$

The  $r(t)$  equation draws an exponential curve with intercept equal to 1.

It is relevant to know the dynamics of  $\nu(t)$  and  $d(t)$  as function of time  $t$ :

-  $\lim_{t\to \infty}r(t) = \infty$  ;  $\lim_{t\to 0}r(t) = 1$
-  $\lim_{t\to \infty}\nu (t) = \frac{1}{\infty} = 0;\lim_{t\to 0}\nu (t) = \frac{1}{1} = 1$
-  $\lim_{t\to \infty}d(t) = \frac{\infty}{\infty} = \frac{i}{i} = 1;\lim_{t\to 0}d(t) = \frac{0}{1} = 0.$

It is possible to summarize these relationships as follows as in Fig. 10.4.

## Continuously Compound Interest

Interest is generated continuously on the basis of a succession of instantaneous intervals. The interest matured in the previous instant is added to the capital by generating interest in the next period. It is based on the compound interest by reducing the period at the infinitesimal level ( $ds$ ).

By considering the instant  $s$  and the instant  $ds$  immediately following, the value of capital  $M$  can be defined as follows:

$$
M (s + d s) = M (s) + M (s) \cdot d s \cdot i \tag {10.40}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/87fea16b-33f6-43ec-8056-5ef3565ac4c2/a70e7bd418d06f0b30261686133eb89b80df96a44ae92458a576d4bdee007b01.jpg)
Fig. 10.4 Relationship between time  $t$  and  $r(t), \nu(t); d(t)$  in compound interest rule

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/87fea16b-33f6-43ec-8056-5ef3565ac4c2/a137012a8b73e7cfe49a663b946a6a599df41815a101866fbf93ec23e8e99012.jpg)

It is worth noting that:

$$
\frac {M (s + d s) - M (s)}{d s} = M (s) \cdot i \tag {10.41}
$$

is the derivative of the  $M$  in the instant  $s$  compared with time  $s$ , so that

$$
\frac {d M (s)}{d s} = M (s) \cdot i \tag {10.42}
$$

The solution of this differential equation is the following:

$$
M = C \cdot e ^ {t \cdot i} \tag {10.43}
$$

Solving Eq. (10.43) by initial capital  $C$  we have:

$$
C = \frac {M}{e ^ {t \cdot i}} \leftrightarrow C = M \cdot e ^ {- t \cdot i} \tag {10.44}
$$

In interest rate  $(i)$  is equal to:

$$
M = C \cdot e ^ {t \cdot i} \rightarrow \frac {M}{C} = e ^ {t \cdot i} \rightarrow \ln \left(\frac {M}{C}\right) = \ln e ^ {t \cdot i} \rightarrow \ln \left(\frac {M}{C}\right) = t \cdot i
$$

and then:

$$
i = \frac {\ln \left(\frac {M}{C}\right)}{t} \tag {10.45}
$$

On the basis of Eq. (10.45) it is possible to define the time  $(t)$  as follows:

$$
t = \frac {\ln \left(\frac {M}{C}\right)}{i} \tag {10.46}
$$

Therefore, the continuously compound interest rule can be summarized as follows:

$$
C = M \cdot e ^ {- (t \cdot i)}
$$

$$
M = C \cdot e ^ {t \cdot i} \rightarrow \quad i = \frac {\ln \left(\frac {M}{c}\right)}{t} \tag {10.47}
$$

$$
t = \frac {\ln \left(\frac {M}{C}\right)}{i}
$$

## Bank Discount Rate

The bank discount rate rule is normally used by banks to discount short-time marketable assets.

In this case the discount is function of the discount rate and the time:  $d(t) = d \cdot t$ .

The baseline equation is the following:

## 10.1 Interest Rate Rules

$$
v (t) = 1 - d \cdot t \tag {10.48}
$$

and by considering the relationship between  $\nu (t)$  and  $r(t)$ , we have:

$$
r (t) = \frac {1}{v (t)}
$$

Therefore:

$$
r (t) = \frac {1}{1 - d \cdot t} \tag {10.49}
$$

The interest rate can be obtained as follows:

$$
\begin{array}{l} i (t) = \frac {C \left(\frac {1}{1 - d \cdot t}\right) - C}{C} = \frac {C \left[ \left(\frac {1}{1 - d \cdot t}\right) - 1 \right]}{C} = \left(\frac {1}{1 - d \cdot t}\right) - 1 = \frac {1 - 1 + d \cdot t}{1 - d \cdot t} \\ = \frac {d \cdot t}{1 - d \cdot t} \\ \end{array}
$$

and then:

$$
i (t) = \frac {d \cdot t}{1 - d \cdot t} \tag {10.50}
$$

On the basis of Eq. (10.48), it is possible to define the time  $(t)$  as follows:

$$
t = \frac {1 - v (t)}{d} \tag {10.51}
$$

On the basis of the relationship between  $i$  and  $d$  as defined in Eq. (10.15):

$$
i = \frac {d}{1 - d}; \quad d = \frac {i}{1 + i}
$$

it is possible to define  $r(t), \nu(t), i(t), d(t)$  in terms of the interest rate  $i$  rather than in terms of discount rate  $d$  as follows:

$$
d (t) = d \cdot t \rightarrow d (t) = \frac {i}{1 + i} \cdot t = \frac {i \cdot t}{1 + i}
$$

$$
r (t) = \frac {1}{1 - d \cdot t} \rightarrow r (t) = \frac {1}{1 - \frac {i \cdot t}{1 + i}} = \frac {1}{\frac {1 + i - i \cdot t}{1 + i}} = \frac {1 + i}{1 + i - i \cdot t}
$$

$$
v (t) = 1 - d \cdot t \rightarrow v (t) = 1 - \frac {i \cdot t}{1 + i} = \frac {1 + i - i \cdot t}{1 + i}
$$

$$
i (t) = \frac {d \cdot t}{1 - d \cdot t} \rightarrow i (t) = \frac {\frac {i \cdot t}{1 + i}}{1 - \frac {i \cdot t}{1 + i}} = \frac {\frac {i \cdot t}{1 + i}}{\frac {1 + i - i \cdot t}{1 + i}} = \frac {i \cdot t}{1 + i - i \cdot t}
$$

$$
t = \frac {1 - v (t)}{d} \rightarrow t = \frac {1 - v (t)}{\frac {i}{1 + i}} = \frac {(1 - v (t)) (1 + i)}{i}
$$

Therefore, it is possible to summarize the bank discount rate rule as follows:

$$
v (t) = 1 - d \cdot t; \quad v (t) = \frac {1 + i - i \cdot t}{1 + i}
$$

$$
r (t) = \frac {1}{1 - d \cdot t}; \quad r (t) = \frac {1 + i}{1 + i - i \cdot t} \tag {10.52}
$$

$$
d (t) = d \cdot t; \quad d (t) = \frac {i \cdot t}{1 + i}
$$

$$
i (t) = \frac {d \cdot t}{1 - d \cdot t}; \quad i (t) = \frac {i \cdot t}{1 + i - i \cdot t}
$$

Therefore, by considering an initial capital  $C$  and the final capital  $M$ , it is possible to define the bank discount rate rule as follows:

$$
\begin{array}{l} C = M \cdot (1 - d \cdot t) \rightarrow d = \frac {M - C}{M \cdot t} \tag {10.53} \\ t = \frac {\frac {M - t}{M - C}}{M \cdot d} \\ \end{array}
$$

It is worth noting that:

$$
\begin{array}{l} - \lim  _ {t \rightarrow \infty} r (t) = 0; \lim  _ {t \rightarrow 0} r (t) = 1 \\ - \lim  _ {t \rightarrow \infty} v (t) = \infty ; \lim  _ {t \rightarrow 0} v (t) = 1 \\ - \lim  _ {t \rightarrow \infty} d (t) = \frac {\infty}{\infty} = \frac {d}{d} = 1; \lim  _ {t \rightarrow 0} d (t) = \frac {0}{1} = 0. \\ \end{array}
$$

Therefore, it is relevant to note that there is a vertical asymptote. Indeed, the existence of the  $r(t)$  equation requires that:

$$
1 - d \cdot t \neq 0 \rightarrow t \neq \frac {1}{d} \rightarrow t = \frac {1}{d}
$$

Also:

$$
\begin{array}{l} - \lim  _ {t \rightarrow 0} \frac {1}{1 - d \cdot t} = \frac {1}{1} = 1 \\ - \lim  _ {t \rightarrow \infty} \frac {1}{1 - d \cdot t} = \frac {1}{\infty} = 0 \\ - \lim  _ {t \rightarrow \frac {1}{d} ^ {\pm}} \frac {1}{1 - d \cdot t} = \pm \infty . \\ \end{array}
$$

Also, with regards to the  $r(t)$  equation, it is equal to zero for  $t = \frac{1}{d}$  and positive before and negative after this value, as follows:

$$
v (t) = 0 \rightarrow 1 - d \cdot t = 0 \rightarrow t = \frac {1}{d}
$$

$$
v (t) > 0 \rightarrow 1 - d \cdot t > 0 \rightarrow t <   \frac {1}{d}
$$

$$
v (t) <   0 \rightarrow 1 - d \cdot t \langle 0 \rightarrow t \rangle \frac {1}{d}
$$

Therefore, equations  $r(t)$  and  $\nu(t)$  in the bank discount rate can be represented as in Fig. 10.5.

It is possible to summarize the simple interest, compound interest, continuously compound interest and bank discount rate rules as in Table 10.1:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/87fea16b-33f6-43ec-8056-5ef3565ac4c2/4ae469429a25cda55f6ac6144380f976841d77ccbaeee2bf170a22bf33142129.jpg)
Fig. 10.5 Relationship between time  $t$  and  $r(t)$ ,  $\nu(t)$ ;  $d(t)$  in bank discount rule

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/87fea16b-33f6-43ec-8056-5ef3565ac4c2/87f22bb2f638db8ebfea2f700368e27200a7e77e3d78b09d17005fbce5bc477e.jpg)

Table 10.1 Interest rules

<table><tr><td>Simple Interest</td><td>Compound interest</td><td>Continuously compound interest</td><td>Bank discount rate</td></tr><tr><td>M = C(1+i·t)</td><td>M = C(1+i)t</td><td>M = C·e^{t·i}</td><td>C = M·(1-d·t)</td></tr><tr><td>↓</td><td>↓</td><td>↓</td><td>↓</td></tr><tr><td>C = M·1/(1+i·t)</td><td>C = M·1/(1+i)t</td><td>C = M·e^{-i·i}</td><td>M = C/1-d·t</td></tr><tr><td>i = M-C/C·t</td><td>i = (M/C)t-1</td><td>i = ln(M/C)/t</td><td>d = M-C/M·t</td></tr><tr><td>t = M-C/C·i</td><td>t = ln(M/C)/ln(1+i)</td><td>t = ln(M/C)/i</td><td>t = M-C/M·d</td></tr></table>

## Relationships Between Interest Rates

The relationships with regards to time  $t$  can be defined among the simple interest, compounded interest and bank discount rate.

For  $t = 1$  these three rules provide the same result, but the results are different for  $t < 1$  and  $t > 1$  as shown in Fig. 10.6.

Denoting with the pedicle "S" the simple interest, "C" the compound interest, "D" the bank discount rate, relationships among them as shown in Fig. 10.6. can be summarized as follows:

$$
0 <   t <   1 \rightarrow r (t) _ {S} > r (t) _ {C} > r (t) _ {D} \Leftrightarrow v (t) _ {D} > r (t) _ {C} > r (t) _ {S}
$$

$$
t = 1 \rightarrow r (t) _ {S} = r (t) _ {C} = r (t) _ {D} \Leftrightarrow v (t) _ {S} = v (t) _ {C} = v (t) _ {D} \tag {10.54}
$$

$$
t > 1 \rightarrow r (t) _ {D} > r (t) _ {C} > r (t) _ {S} \Leftrightarrow v (t) _ {S} > v (t) _ {C} > v (t) _ {D}
$$

These results can be confirmed on the basis of the following Table 10.2. It is possible to define the relationships among the different rules in order to have equivalent interest rates.

Denote with:  $i_S$  the interest rate in the simple interest rule;  $i_C$  the interest rate in the compound interest rule;  $i_{CC}$  the interest rate in the continuously compound interest rule;  $d$  the discount rate in the bank discount rate rule.

Assume equal initial capital  $C$  and consider the same time period  $t$ . Assume use of the same interest rates  $i_{S} = i_{C} = i_{CC}$ . At the end of the period the capital obtained by applying  $i_{CC}(M_{CC})$  is higher than the capital obtained by applying  $i_{C}(M_{C})$  that in turn is higher than the capital obtained by applying  $i_{S}(M_{S})$ . The relationship can be defined as follows:

$$
M _ {C C} > M _ {C} > M _ {S} \tag {10.55}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/87fea16b-33f6-43ec-8056-5ef3565ac4c2/aeac8bd74502e05955e029542c7e5b178b5ec29bf3a7943d347f5756aab67854.jpg)
Fig. 10.6 Relationships among interest rates

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/87fea16b-33f6-43ec-8056-5ef3565ac4c2/a1b23bae234d500513f619613ec8a53b8ff37d340b2729579d1d746e594d6a60.jpg)

Table 10.2 Relationships among interest rates

<table><tr><td>Interest rate (i) (%)</td><td colspan="2">Time (t)</td><td>r(t) Simple interest</td><td>r(t) Compound interest</td><td>r(t) Bank discount rate</td><td>v(t) Simple interest</td><td>v(t) Compound interest</td><td>v(t) Bank discount rate</td></tr><tr><td>10</td><td>1 month</td><td>0.083</td><td>1.0083</td><td>1.0080</td><td>1.0076</td><td>0.9917</td><td>0.9921</td><td>0.9924</td></tr><tr><td>10</td><td>2 months</td><td>0.167</td><td>1.0167</td><td>1.0160</td><td>1.0154</td><td>0.9836</td><td>0.9842</td><td>0.9848</td></tr><tr><td>10</td><td>3 months</td><td>0.250</td><td>1.0250</td><td>1.0241</td><td>1.0233</td><td>0.9756</td><td>0.9765</td><td>0.9773</td></tr><tr><td>10</td><td>4 months</td><td>0.333</td><td>1.0333</td><td>1.0323</td><td>1.0313</td><td>0.9677</td><td>0.9687</td><td>0.9697</td></tr><tr><td>10</td><td>5 months</td><td>0.417</td><td>1.0417</td><td>1.0405</td><td>1.0394</td><td>0.9600</td><td>0.9611</td><td>0.9621</td></tr><tr><td>10</td><td>6 months</td><td>0.500</td><td>1.0500</td><td>1.0488</td><td>1.0476</td><td>0.9524</td><td>0.9535</td><td>0.9545</td></tr><tr><td>10</td><td>7 months</td><td>0.583</td><td>1.0583</td><td>1.0572</td><td>1.0560</td><td>0.9449</td><td>0.9459</td><td>0.9470</td></tr><tr><td>10</td><td>8 months</td><td>0.667</td><td>1.0667</td><td>1.0656</td><td>1.0645</td><td>0.9375</td><td>0.9384</td><td>0.9394</td></tr><tr><td>10</td><td>9 months</td><td>0.750</td><td>1.0750</td><td>1.0741</td><td>1.0732</td><td>0.9302</td><td>0.9310</td><td>0.9318</td></tr><tr><td>10</td><td>10 months</td><td>0.833</td><td>1.0833</td><td>1.0827</td><td>1.0820</td><td>0.9231</td><td>0.9236</td><td>0.9242</td></tr><tr><td>10</td><td>11 months</td><td>0.917</td><td>1.0917</td><td>1.0913</td><td>1.0909</td><td>0.9160</td><td>0.9163</td><td>0.9167</td></tr><tr><td>10</td><td>1 year</td><td>1</td><td>1.1000</td><td>1.1000</td><td>1.1000</td><td>0.9091</td><td>0.9091</td><td>0.9091</td></tr><tr><td>10</td><td>1 year and 1 month</td><td>1.083</td><td>1.1083</td><td>1.1088</td><td>1.1092</td><td>0.9023</td><td>0.9019</td><td>0.9015</td></tr><tr><td>10</td><td>1 year and 2 months</td><td>1.167</td><td>1.1167</td><td>1.1176</td><td>1.1186</td><td>0.8955</td><td>0.8948</td><td>0.8939</td></tr><tr><td>10</td><td>1 year and 3 months</td><td>1.250</td><td>1.1250</td><td>1.1265</td><td>1.1282</td><td>0.8889</td><td>0.8877</td><td>0.8864</td></tr><tr><td>10</td><td>1 year and 4 months</td><td>1.333</td><td>1.1333</td><td>1.1355</td><td>1.1379</td><td>0.8824</td><td>0.8807</td><td>0.8788</td></tr><tr><td>10</td><td>1 year and 5 months</td><td>1.417</td><td>1.1417</td><td>1.1446</td><td>1.1478</td><td>0.8759</td><td>0.8737</td><td>0.8712</td></tr><tr><td>10</td><td>1 year and 6 months</td><td>1.500</td><td>1.1500</td><td>1.1537</td><td>1.1579</td><td>0.8696</td><td>0.8668</td><td>0.8636</td></tr><tr><td>10</td><td>1 year and 7 months</td><td>1.583</td><td>1.1583</td><td>1.1629</td><td>1.1681</td><td>0.8633</td><td>0.8599</td><td>0.8561</td></tr><tr><td>10</td><td>1 year and 8 months</td><td>1.667</td><td>1.1667</td><td>1.1722</td><td>1.1786</td><td>0.8571</td><td>0.8531</td><td>0.8485</td></tr></table>

(continued)

Table 10.2 (continued)

<table><tr><td>Interest rate (i) (%)</td><td colspan="2">Time (t)</td><td>r(t) Simple interest</td><td>r(t) Compound interest</td><td>r(t) Bank discount rate</td><td>v(t) Simple interest</td><td>v(t) Compound interest</td><td>v(t) Bank discount rate</td></tr><tr><td>10</td><td>1 year and 9 months</td><td>1.750</td><td>1.1750</td><td>1.1815</td><td>1.1892</td><td>0.8511</td><td>0.8464</td><td>0.8409</td></tr><tr><td>10</td><td>1 year and 10 months</td><td>1.833</td><td>1.1833</td><td>1.1909</td><td>1.2000</td><td>0.8451</td><td>0.8397</td><td>0.8333</td></tr><tr><td>10</td><td>1 year and 11 months</td><td>1.917</td><td>1.1917</td><td>1.2004</td><td>1.2110</td><td>0.8392</td><td>0.8330</td><td>0.8258</td></tr><tr><td>10</td><td>2 years</td><td>2</td><td>1.2000</td><td>1.2100</td><td>1.2222</td><td>0.8333</td><td>0.8264</td><td>0.8182</td></tr></table>

## 10.1 Interest Rate Rules

By starting with the same capital  $C$  and considering the same time period  $t$  and by assuming the same capital  $M$  at the end of the period, it is possible to define the relationships between the different interest rates and therefore the equivalent interest rates.

Consider the simple interest  $(i_S)$  and the compound interest  $(i_C)$ . Consider the same time period  $t$  and the initial capital  $C$ . Assume that at the end of period the capital obtained with simple interest  $(M_S)$  must be equal to the capital obtained with compound interest  $(M_C)$  as follows:

$$
M _ {S} = M _ {C} \rightarrow C \left(1 + i _ {S} \cdot t\right) = C \left(1 + i _ {C}\right) ^ {t}
$$

and then:

$$
\left(1 + i _ {S} \cdot t\right) = \left(1 + i _ {C}\right) ^ {t} \tag {10.56}
$$

On the basis of Eq. (10.56), by knowing  $i_S$  it is possible to define the equivalent compound interest rate  $(i_C)$  as follows:

$$
\left(1 + i _ {S} \cdot t\right) ^ {\frac {1}{t}} = \left[\left(1 + i _ {C}\right) ^ {t} \right] ^ {\frac {1}{t}} \rightarrow \left(1 + i _ {S} \cdot t\right) ^ {\frac {1}{t}} = 1 + i _ {C} \rightarrow i _ {C} = \left(1 + i _ {S} \cdot t\right) ^ {\frac {1}{t}} - 1
$$

and then:

$$
i _ {C} = \left(1 + i _ {S} \cdot t\right) ^ {\frac {1}{t}} - 1 \tag {10.57}
$$

Similarly, by knowing  $i_C$  it is possible to define the equivalent simple interest rate  $(i_S)$  as follows:

$$
(1 + i _ {S} \cdot t) = (1 + i _ {C}) ^ {t} \rightarrow i _ {S} = \frac {(1 + i _ {C}) ^ {t} - 1}{t}
$$

and then:

$$
i _ {S} = \frac {\left(1 + i _ {C}\right) ^ {t} - 1}{t} \tag {10.58}
$$

Equations (10.56), (10.57) and (10.58) can be summarized as follows:

$$
(1 + i _ {S} \cdot t) = (1 + i _ {C}) ^ {t} \rightarrow\begin{array}{c}i _ {C} = (1 + i _ {S} \cdot t) ^ {\frac {1}{t}} - 1\\i _ {S} = \frac {(1 + i _ {C}) ^ {t} - 1}{t}\end{array}
$$

On the basis of the same reasoning it is possible to define the relationship between the compound interest rate  $(i_C)$  and the continuously compound interest rate  $(i_{CC})$ , as follows:

$$
M _ {C} = M _ {C C} \rightarrow C (1 + i _ {C}) ^ {t} = C \cdot e ^ {t \cdot i _ {C C}}
$$

and then:

$$
\left(1 + i _ {C}\right) ^ {t} = e ^ {t \cdot i _ {C C}} \tag {10.59}
$$

On the basis of Eq. (10.59), by knowing  $i_{C}$  it is possible to define the equivalent continuously compound interest rate  $(i_{CC})$  as follows:

$$
\ln \left(1 + i _ {C}\right) ^ {t} = \ln e ^ {t \cdot i _ {C C}} \rightarrow t \ln \left(1 + i _ {C}\right) = t \cdot i _ {C C} \rightarrow i _ {C C} = \ln \left(1 + i _ {C}\right)
$$

and then:

$$
i _ {C C} = \ln \left(1 + i _ {C}\right) \tag {10.60}
$$

Similarly, by knowing  $i_{CC}$  it is possible to define the equivalent compound interest rate  $(i_C)$  as follows:

$$
\left[\left(1 + i _ {C}\right) ^ {t} \right] ^ {\frac {1}{t}} = \left[ e ^ {t \cdot i _ {C C}} \right] ^ {\frac {1}{t}} \rightarrow 1 + i _ {C} = e ^ {i _ {C C}} \rightarrow i _ {C} = e ^ {i _ {C C}} - 1
$$

and then:

$$
i _ {C} = e ^ {i _ {C C}} - 1 \tag {10.61}
$$

Equations (10.59), (10.60) and (10.61) can be summarized as follows:

$$
(1 + i _ {C}) ^ {t} = e ^ {t \cdot i _ {C C}} \to \begin{array}{c} i _ {C C} = \ln (1 + i _ {C}) \\ i _ {C} = e ^ {i _ {C C}} - 1 \end{array}
$$

## Equivalence Among the Interest and Discount Rates in Different Time-Periods

For periods of less than a year, relationship can be defined between the annual interest rate and the interest rates.

Generally, two interest rates are equivalent among them if they give the same result when they are applied for the same period time.

Denoting with:  $m$  the months,  $i$  the annual interest rate,  $i \cdot \frac{1}{m}$  the interest rate for period less than a year (where:  $i \cdot \frac{1}{2}$  is the half-year interest rate;  $i \cdot \frac{1}{12}$  is the monthly interest rate;  $i \cdot \frac{1}{4}$  is the quarterly interest rate, etc.), the baseline equation is the following:

$$
(1 + i) = \left(1 + i \frac {1}{m}\right) ^ {m} \tag {10.62}
$$

On the basis of Eq. (10.62) the annual interest rate  $(i)$  can be deducted from the interest rate for a shorter period  $\left(i\cdot \frac{1}{m}\right)$  and vice versa as follows:

## 10.1 Interest Rate Rules

$$
i = \left(1 + i \frac {1}{m}\right) ^ {m} - 1 \tag {10.63}
$$

and:

$$
(1 + i) = \left(1 + i \frac {1}{m}\right) ^ {m} \rightarrow (1 + i) ^ {\frac {1}{m}} = \left(1 + i \frac {1}{m}\right) ^ {m \frac {1}{m}} \rightarrow i \frac {1}{m} = (1 + i) ^ {\frac {1}{m}} - 1
$$

so that:

$$
i \frac {1}{m} = (1 + i) ^ {\frac {1}{m}} - 1 \tag {10.64}
$$

Therefore, these relationships can be summarized as follows:

$$
(1 + i) = \left(1 + i \frac {1}{m}\right) ^ {m} \rightarrow\begin{array}{l}i = \left(1 + i \frac {1}{m}\right) ^ {m} - 1\\i \frac {1}{m} = (1 + i) ^ {\frac {1}{m}} - 1\end{array}
$$

On the basis of these relationships the annual convertible interest rate  $m$ -times in a year  $J(m)$  can be defined. Denoting with  $m$  is number of time in a year and with  $i \cdot \frac{1}{m}$  is the annual interest rate for a  $m$ -part of the year,  $J(m)$  is equal to:

$$
J (m) = m \cdot i \frac {1}{m} \tag {10.65}
$$

Generally, by considering the relationship between  $i$  and  $i \cdot \frac{1}{m}$  as defined in Eqs. (10.63) and (10.64), and by using  $J(m)$ , it generates an annual effective interest rate  $\left(i = \left(1 + i\frac{1}{m}\right)^m - 1\right)$  higher than the annual interest rate as follows:

$$
i <   i = \left(1 + i \frac {1}{m}\right) ^ {m} - 1
$$

Therefore, the higher  $m$  and then the higher the annual convertible interest rate  $m$ -times in a year  $J(m)$ , the higher the annual effective interest rate.

Also, by considering  $i\frac{1}{m}$  as defined in Eq. (10.64),  $J(m)$  is equal to:

$$
J (m) = m \cdot \left[ (1 + i) ^ {\frac {1}{m}} - 1 \right] \tag {10.66}
$$

Therefore, the increase of  $m$  reduces the value of the  $J(m)$ . Generally,  $J(m)$  decreases with the increase of  $m$  until reaching a defined value.

Therefore, in the presence of an annual convertible interest rate  $m$ -times in a year  $J(m)$ , the increase of  $m$  has two main implications:

- first, the increase of the effective annual interest rate that is higher than the annual interest rate;
- second, the decrease of  $J(m)$  until a defined value is reached.

These two effects can be showed by Table 10.3.

In the same way, it is possible to define the relationship between the annual discount rate and the discount rates for periods of less than a year.

Generally, two discount rates are equivalent among them if they give the same result when they are applied for the same period time.

Denoting with  $m$  the months,  $d$  the annual discount rate,  $d \cdot \frac{1}{m}$  the discount rate for period less than a year (where:  $d \cdot \frac{1}{2}$  is the half-year discount rate;  $d \cdot \frac{1}{12}$  is the monthly discount rate;  $d \cdot \frac{1}{4}$  is the quarterly discount rate, etc.), the baseline equation is the following:

$$
(1 - d) = \left(1 - d \frac {1}{m}\right) ^ {m} \tag {10.67}
$$

On the basis of Eq. (10.67) the annual discount rate  $(d)$  can be deducted by the discount rate for a shorter period  $\left(d\cdot \frac{1}{m}\right)$  and vice versa as follows:

$$
d = 1 - \left(1 - d \frac {1}{m}\right) ^ {m} \tag {10.68}
$$

and:

$$
(1 - d) = \left(1 - d \frac {1}{m}\right) ^ {m} \rightarrow (1 - d) ^ {\frac {1}{m}} = \left(1 - d \frac {1}{m}\right) ^ {m \frac {1}{m}} \rightarrow d \frac {1}{m} = 1 - (1 - d) ^ {\frac {1}{m}}
$$

so that:

$$
d \frac {1}{m} = 1 - (1 - d) ^ {\frac {1}{m}} \tag {10.69}
$$

Therefore, these relationships can be summarized as follows:

$$
(1 - d) = \left(1 - d \frac {1}{m}\right) ^ {m} \to \begin{array}{c} d = 1 - \left(1 - d \frac {1}{m}\right) ^ {m} \\ d \frac {1}{m} = 1 - (1 - d) ^ {\frac {1}{m}} \end{array}
$$

It is possible to define the annual convertible discount rate  $m$ -times in a year  $\mathbb{C}(m)$ . Denoting with  $m$  the number of times in a year and with  $d\frac{1}{m}$  the annual discount rate for a  $m$ -part of the year,  $\mathbb{C}(m)$  is equal to:

Table 10.3 Annual convertible interest rate m-times in a year  $\mathrm{J}\left( \mathrm{m}\right)$

<table><tr><td>i (%)</td><td>m</td><td>i1/m</td><td>J(m) = m · i1/m</td><td>i = (1 + i1/m)m - 1</td><td>J(m) = m · [(1 + i)^1/m - 1]</td></tr><tr><td>12</td><td>m = 1
(1 times in a year)</td><td>12% · 1/1 = 12%</td><td>J(1) = 1 · 12%</td><td>i = (1 + 12%)1 - 1 = 12.00%</td><td>J(1) = 1[(1 + 12%)1/1 - 1] = 12.00%</td></tr><tr><td>12</td><td>m = 2
(2 times in a year)</td><td>12% · 1/2 = 6%</td><td>J(2) = 2 · 6%</td><td>i = (1 + 6%)2 - 1 = 12.36%</td><td>J(2) = 2[(1 + 12%)1/2 - 1] = 11.66%</td></tr><tr><td>12</td><td>m = 3
(3 times in a year)</td><td>12% · 1/3 = 4%</td><td>J(3) = 3 · 4%</td><td>i = (1 + 4%)3 - 1 = 12.49%</td><td>J(3) = 3[(1 + 12%)1/3 - 1] = 11.55%</td></tr><tr><td>12</td><td>m = 4
(4 times in a year)</td><td>12% · 1/4 = 3%</td><td>J(4) = 4 · 3%</td><td>i = (1 + 3%)4 - 1 = 12.55%</td><td>J(4) = 4[(1 + 12%)1/4 - 1] = 11.49%</td></tr></table>

$$
\mathbb {C} (m) = m \cdot d \frac {1}{m} \tag {10.70}
$$

Generally, by considering the relationship between  $d$  and  $d\frac{1}{m}$  as defined by Eqs. (10.68) and (10.69) and by using  $\mathbb{C}(m)$  as defined by Eq. (10.70) it provides an annual effective discount rate  $\left(d = 1 - \left(1 - d\frac{1}{m}\right)^{m}\right)$  higher than the annual interest rate as follows:

$$
d > d = 1 - \left(1 - d \frac {1}{m}\right) ^ {m}
$$

Therefore, the higher  $m$  and then the higher the annual convertible discount rate  $m$ -times in a year  $\mathbb{C}(m)$ , the lower the annual effective discount rate.

Also, by considering the  $d\frac{1}{m}$  as defined in Eq. (10.69),  $\mathbb{C}(m)$  is equal to:

$$
\mathbb {C} (m) = m \cdot \left[ 1 - (1 - d) ^ {\frac {1}{m}} \right] \tag {10.71}
$$

Therefore, the increase of  $m$  increases the value of the  $\mathbb{C}(m)$ . Generally,  $\mathbb{C}(m)$  increases according to the increase of  $m$  until a defined value is reached.

Therefore, in the presence of an annual convertible discount rate  $m$ -times in a year  $\mathbb{C}(m)$ , the increase of  $m$  has two main implications:

- first, the decrease of the annual effective discount rate that is lower than the annual discount rate;
- second, the increase of  $\mathbb{C}(m)$  until a defined value is reached.

These two effects can be showed by Table 10.4.

Tables 10.3 and 10.4 show that with an increase of  $m$ ,  $J(m)$  decreases while  $\mathbb{C}(m)$  increases. In both cases until a defined level is reached.

In the case of  $J(m)$ , we have:

$$
\lim  _ {m \rightarrow \infty} J (m) = \lim  _ {m \rightarrow \infty} m \cdot \left[ (1 + i) ^ {\frac {1}{m}} - 1 \right] = \lim  _ {m \rightarrow \infty} \frac {\left[ (1 + i) ^ {\frac {1}{m}} - 1 \right]}{\frac {1}{m}} = \frac {0}{0}
$$

In order to solve the de Hôpital Theorem can be used by considering the first derivatives of numerator and denominator, as follows:

$$
\begin{array}{l} \lim  _ {m \rightarrow \infty} \frac {\left[ (1 + i) ^ {\frac {1}{m}} - 1 \right]}{\frac {1}{m}} = \lim  _ {m \rightarrow \infty} \frac {(1 + i) ^ {\frac {1}{m}} \cdot \log (1 + i) \cdot \left(- \frac {1}{m ^ {2}}\right)}{\left(- \frac {1}{m ^ {2}}\right)} \tag {10.72} \\ = \lim  _ {m \rightarrow \infty} (1 + i) ^ {\frac {1}{m}}. \log (1 + i) = \log (1 + i) \\ \end{array}
$$

Table 10.4 Annual convertible discount rate m-times in a year  $\complement \left( \mathrm{m}\right)$

<table><tr><td>d</td><td>m</td><td>d1/m</td><td>C(m) = m · d1/m</td><td>d = 1 - (1 - d1/m)m</td><td>C(m) = m · [1 - (1 - d1/m)]</td></tr><tr><td>12</td><td>m = 1
(1 times in a year)</td><td>12% · 1/1 = 12%</td><td>C(1) = 1 · 12%</td><td>d = 1 - (1 - 12%)1 = 12.00%</td><td>C(1) = 1[1 - (1 - 12%)1] = 12.00%</td></tr><tr><td>12</td><td>m = 2
(2 times in a year)</td><td>12% · 1/2 = 6%</td><td>C(2) = 2 · 6%</td><td>d = 1 - (1 - 6%)2 = 11.64%</td><td>C(2) = 2[1 - (1 - 12%)1/2] = 12.38%</td></tr><tr><td>12</td><td>m = 3
(3 times in a year)</td><td>12% · 1/3 = 4%</td><td>C(3) = 3 · 4%</td><td>d = 1 - (1 - 4%)3 = 11.53%</td><td>C(3) = 3[1 - (1 - 12%)1/3] = 12.51%</td></tr><tr><td>12</td><td>m = 4
(4 times in a year)</td><td>12% · 1/4 = 3%</td><td>C(4) = 4 · 3%</td><td>d = 1 - (1 - 3%)4 = 11.47%</td><td>C(4) = 4[1 - (1 - 12%)1/4] = 12.58%</td></tr></table>

Similarly, in the case of  $\mathbb{C}(m)$  we have:

$$
\lim  _ {m \rightarrow \infty} \mathbb {C} (m) = \lim  _ {m \rightarrow \infty} m \cdot \left[ 1 - (1 - d) ^ {\frac {1}{m}} \right] = \lim  _ {m \rightarrow \infty} \frac {\left[ 1 - (1 - d) ^ {\frac {1}{m}} \right]}{\frac {1}{m}} = \frac {0}{0}
$$

Also in this case it is possible to use the de Hôpital Theorem by considering the first derivatives of numerator and denominator as follows:

$$
\begin{array}{l} \lim  _ {m \rightarrow \infty} \frac {\left[ 1 - (1 - d) ^ {\frac {1}{m}} \right]}{\frac {1}{m}} = \lim  _ {m \rightarrow \infty} \frac {- (1 - d) ^ {\frac {1}{m}} \cdot \log (1 - d) \cdot \left(- \frac {1}{m ^ {2}}\right)}{\left(- \frac {1}{m ^ {2}}\right)} \tag {10.73} \\ = \lim  _ {m \rightarrow \infty} - (1 - d) ^ {\frac {1}{m}} \cdot \log (1 - d) = - \log (1 - d) \\ \end{array}
$$

The  $\log (1 - d)$  can be expressed in terms of interest rate  $(i)$  rather than the discount rate  $(d)$  on the basis of Eq. (10.15) as follows:

$$
\begin{array}{l} d = \frac {i}{1 + i} \rightarrow - \log (1 - d) = - \log \left(1 - \frac {i}{1 + i}\right) = - \log \left(\frac {1}{1 + i}\right) = - \log (1 + i) ^ {- 1} \\ = \log (1 + i) \\ \end{array}
$$

The behaviour of  $J(m)$  and  $\mathbb{C}(m)$  to the increase of  $m$  can be represented as in Fig. 10.7.

## Inflation and Interest Rates

The difference between nominal interest rate and real interest rate is due to inflation. Denote with:  $r$  the real interest rate;  $i$  the nominal interest rate;  $\pi$  the inflation rate;  $t$  is the time period. The relationship between real and nominal interest rates, can be defined as follows (Fisher 1930):

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/87fea16b-33f6-43ec-8056-5ef3565ac4c2/832fcdcfbf5633e9593d4039c0530296c0655127b77144ed0be3f52cc8b58bd3.jpg)
Fig. 10.7 Behaviour of  $J(m)$  and  $\mathbb{C}(m)$  to the increase of  $m$

## 10.1 Interest Rate Rules

$$
1 + r _ {t + 1} = \frac {1 + i _ {t}}{1 + \pi_ {t + 1}} \tag {10.74}
$$

By solving Eq. (10.74) for  $i_t$ , we have:

$$
\begin{array}{l} 1 + i _ {t} = \left(1 + r _ {t + 1}\right) \left(1 + \pi_ {t + 1}\right) \\ 1 + i _ {t} = 1 + \pi_ {t + 1} + r _ {t + 1} + r _ {t + 1} \pi_ {t + 1} \\ \end{array}
$$

and then:

$$
i _ {t} = \pi_ {t + 1} + r _ {t + 1} + r _ {t + 1} \pi_ {t + 1} \tag {10.75}
$$

By assuming that both real interest rates and the inflation rate are fairly small, therefore  $(\pi_{t + 1} + r_{t + 1})$  is much larger than  $(r_{t + 1}\pi_{t + 1})$  and so it can be dropped, so that:

$$
i _ {t} \approx \pi_ {t + 1} + r _ {t + 1} \tag {10.76}
$$

Specifically, this linear approximation is given by using two 1st order Taylor expansions:

$$
\begin{array}{l} \frac {1}{1 + x} \approx 1 - x \\ (1 + x) (1 + y) \approx 1 + x + y \\ \end{array}
$$

Therefore, by applying this linear approximation we have:

$$
1 + r = \frac {1 + i}{1 + \pi} \approx (1 + i) (1 - \pi) \approx 1 + i - \pi
$$

and therefore:

$$
r \approx i - \pi \tag {10.77}
$$

## 10.2 Bond: Price and Yield

Based on the fundamentals relationship defined in the previous paragraph, the price and yield of bonds can be defined.

Governments and companies can raise the capital needed to finance their activities by issuing bonds to a public market. In this context, we will refer to the government bonds.

A bond is nothing more than a loan for which the investor (bondholder) is the lender, while the organization that issues the bond (borrower) is defined as issuer.

There are several types of bonds. However, there are some elements common to all of them. In reality, any bond can be defined on the basis of five main elements:

(a) face value (also known as par value or principal): it is the amount that issuer has to pay back to the investor at the bond maturity  $(T)$ ;
(b) price: it is the price of the bond that the bondholder has to pay today  $(t)$ ;
(c) coupon: it is the interest rate (in percentage) paid by the issuer. Therefore, the value of the coupon, expressed as a percentage of the face value, is the amount that the bondholder will receive as interest payments. The interest is implicit and it is equal to the difference between the capital invested and the face value and coupon paid by the issuer.
(d) maturity date: it is the date in the future on which the issuer has to pay back the face value of the bond. Generally, the maturity can range from as little as one day to as long as 30 years. There is an inverse relationship between maturity and interest rate: the longer the time for maturity, the higher the risk, and therefore the higher the interest rate. Generally, other variables being equal, longer term bonds may fluctuate more than a shorter term bond;
(e) issuer: it is the organization, government or company that issues the bonds. It is one of the most relevant variables of the bond. The issuer's stability is the main assurance for bondholder of being paid.

The rating agencies define the bond rating based on the characteristics of the issuer (based on both past and expected performance). It is a synthetic judgment about the issuer's reliability and therefore the quality of the bonds issued. Table 10.5 reports the bond rating of the three main rating agencies: Moody's, Standard & Poors (S&P), and Fitch.

There is a relevant implication: the lower the grade of the bonds, the higher the risk and therefore higher the return offered by the issuer to the investors in the bond. Therefore, not all bonds are inherently safer than stocks. Certain types of bonds can be just as risky, if not riskier in certain conditions, than stocks.

Note that it is normal to measure the free-risk rate on the basis of the government bonds. Indeed, the default risk of the governments tend to be small (mostly for the

Table 10.5 Agencies rating on bonds

<table><tr><td>Moody&#x27;s</td><td>S&amp;P</td><td>Fitch</td><td>Grade</td><td>Risk</td></tr><tr><td>Aaa</td><td>AAA</td><td>AAA</td><td>Investment</td><td>Highest quality</td></tr><tr><td>Aa</td><td>AA</td><td>AA</td><td>Investment</td><td>High quality</td></tr><tr><td>A</td><td>A</td><td>A</td><td>Investment</td><td>Strong</td></tr><tr><td>Baa</td><td>BBB</td><td>BBB</td><td>Investment</td><td>Medium grade</td></tr><tr><td>Ba, B</td><td>BB, B</td><td>BB, B</td><td>Junk</td><td>Speculative</td></tr><tr><td>Caa/Ca/C</td><td>CCC/CC/C</td><td>CCC/CC/C</td><td>Junk</td><td>Highly speculative</td></tr><tr><td>C</td><td>D</td><td>D</td><td>Junk</td><td>In default</td></tr></table>

developed countries). It is because the government will always be able (or should be able) to bring in future revenues through taxation. On the other hand, companies must be able to generate profit in order to survive and face their debt obligations. The difference in risk between government and corporate bonds implies that the corporate bonds must offer a higher yield than government bonds.

It is necessary to introduce a distinction between the primary market and secondary market.

The bonds are issued in the primary market and underwritten by bondholders. Bonds can be held by bondholders until their maturity and in this case all of the considerations made up until now are valid and sufficient.

But the bondholder can decide to sell the bonds owned to another investor in bonds at any time. In this second case, bonds are not held until the maturity date but sold before in the secondary market or open market. In the open market, the price of bond changes on a daily basis. Therefore, in the open market the bond's price can fluctuate just like any other traded security.

The face value is not the price of the bond. It is the amount of monetary unit that will be paid at the maturity date  $(T)$ . It is conventionally defined in 100 monetary units. The price is the amount paid by the investor to buy the bond at the start-time  $(t)$ . Therefore, the price  $P$  with reference to the time period  $\tau = T - t$  and then  $P(t,T)$  can be defined as the monetary units that the investor has to pay today in time  $t$  in order to receive 100 monetary units (face value) at the maturity date of bond in time  $T$ , as follows:

$$
P (t, T) = \frac {F V}{(1 + i) ^ {\tau}} = \frac {1 0 0}{(1 + i) ^ {\tau}} \tag {10.78}
$$

The face value is conventionally defined as equal to 100. Therefore, having defined the price at time  $t$ , the interest rate is obtained indirectly. Also,  $\tau$  defines the time-period and it is equal to the difference  $(\tau = T - t)$ .

By knowing the price of the bond at the start of the period  $(t)$  and having defined the face value equal to 100 units in money, it is possible to define the interest rate that the bond pays at maturity  $(T)$  as follows:

$$
(1 + i) ^ {\tau} = \frac {F V}{P (t , T)} \rightarrow [ (1 + i) ^ {\tau} ] ^ {\frac {1}{\tau}} = \left(\frac {F V}{P (t , T)}\right) ^ {\frac {1}{\tau}} \rightarrow 1 + i = \left(\frac {F V}{P (t , T)}\right) ^ {\frac {1}{\tau}}
$$

and therefore, we have:

$$
i = \left(\frac {F V}{P (t , T)}\right) ^ {\frac {1}{\tau}} - 1 \tag {10.79}
$$

Therefore, the price and the interest rate provide the same information: having defined the one it provides the other, as follows:

$$
P (t, T) = \frac {F V}{(1 + i) ^ {\tau}} \leftrightarrow i = \left(\frac {F V}{P (t , T)}\right) ^ {\frac {1}{\tau}} - 1 \tag {10.80}
$$

It is can be rewritten by using the operator present value  $PV_{t}$ , as follows (Cesari 2012):

$$
P (t, T) = P V _ {t} [ 1 0 0 (T) ] \tag {10.81}
$$

Based on the linear properties of the present value, any capital amount can be defined. For example a capital equal to 250,000€, it can be defined as 2500 times 100 monetary units:

$$
P V _ {t} [ 2 5, 0 0 0 0 (T) ] = 2 5 0 0 P V _ {t} [ 1 0 0 (T) ] = 2 5, 0 0 0 0 P V _ {t} [ 1 (T) ]
$$

A bond's price fluctuates throughout its life in function of many variables. Generally, when a bond is traded at the price:

- above its face value, it is sold at a premium;
- below its face value, it is sold at a discount.

It is relevant to note that there is an inverse relationship between price on the one hand and interest rate and time on the other:

- the higher the interest rate, the lower the price; the lower the interest rate, the higher the price;
- the higher the maturity period, the lower the price; the lower the maturity period, the higher the price.

There are three main categories of bonds (Cesari 2012):

(a) bonds with a defined face value and fixed coupon. These bonds are defined as fixed-income securities because the exact amount of cash that bondholders get back if they keep the security until maturity is known.

The coupon can be constant or variable during the bond's maturity (step-up, if the coupon increases over time, or step-down, if the coupon decreases over time) but, however, well defined at the time of emission of the bond.

There are two main types:

- fixed-coupon bond (Coupon Bond (CB)): it has a medium-long term maturity. The maturity goes from 3, 5, 10, 15 and 30 years. Coupons are normally constant and they are paid twice a year (every six months).
- zero-coupon bond (ZCB)  $^{2}$ : it has a short-term maturity. The maturity goes from 3, 6 to 12 months. They are reimbursed in one solution at maturity;
(b) bonds with defined face value and coupon "unknown". These bonds are characterized by a coupon's amount unknown until the maturity. The coupon of these bonds is function of a specific market parameter as defined by the yield of other bonds. The amount of the coupon will be known at the maturity of the bond or at least at a later time following emission.

These bonds are defined financial index bond because they are function of an interest rates. There are two main types:

- floater: the coupon is direct function of another bond's yield. It can take on this form:

$$
Coupon = 3 \% + ZCB \text {yield to 12 months}
$$

Therefore, there is a proportional relationship between interest rates and coupon: if the interest rates increase, the Coupon increases.

- reverse floater: the coupon is inverse function of another bond's yield. It can take on this form:

$$
Coupon = 8\% - ZCB \text {yield to 3 months}
$$

Therefore, there is an inverse relationship between interest rates and coupon: if the interest rates increase, the Coupon decreases. However, the coupon cannot be negative. Therefore, the right form is:

$$
Coupon = \text{Max}(0;8\% -ZCB\text{yield to} 3\text{months})
$$

(c) bonds with face value and coupon "unknown". These bonds are characterized by the unknown value of the coupon and/or the reimbursement value. There are two main types:

- Real index bonds: the coupon and/or the bond reimbursement value are function of a specific market parameter different from the interest rate. In this sense, the market parameter could be the inflation rate. In this case, the bond could take on the following form:

$$
Coupon \text {and} \text {reimbursment} = 3 \% \cdot 100 \cdot (1 + \text {Inflation Rate})
$$

- Structural Bonds: they are based on the other types of assets. They are usually issued by the company. The most common are:
- Callable Bond: it is structured on the basis of the Coupon Bond and the acquisition of a call option by the issuer on the coupon bond as follows:

$$
\text {C a l l a b l e B o n d} = C B - \text {C a l l O p t i o n (C B)}
$$

- Putable Bond: it is structured on the basis of the Coupon Bond and the acquisition of a put option by bondholder on the coupon bond as follows:

$$
\text {P u t t a b l e B o n d} = C B + \text {P u t O p t i o n} (C B)
$$

- Convertible Bond: it is structured on the basis of the Coupon Bond and the acquisition of an option to convert the bond into stock by bondholder as follows:

$$
\text {C o n v e r t i b l e B o n d} = C B + \text {C a l l O p t i o n} (C B, \text {S t o c k})
$$

The yield to maturity indicates what the debt holder earns if he keeps the debt until maturity by receiving all of the payments as promised.

The bond yield is defined with regards to a time-period  $(\tau)$  equal to the difference between the start of the period  $t$  and the end of the time-period  $T$  ( $\tau = T - t$ ).

The yield can be defined ex-post in  $T$ -time and therefore at the end of the period (ex-post perspective) or ex-ante in  $t$ -time and therefore at the start of the period (ex-ante perspective) (Cesari 2012).

In the ex-post perspective, and then in  $T$ -time, the problem is simple. The aim is to measure the yield with regards to the period between  $T$  and  $t$  and therefore in the time period  $\tau = T - t$ . In this case the price paid in in  $t$ -time  $(P_{t})$  and the price on market value in  $T$ -time  $(P_{T})$  is known.

Therefore, in order to define the yield, the interest rule must be defined. For a period higher than one year, the compound interest rule is normally used. In this case, the yield and therefore the return on investment  $(R)$  it is equal to the compound interest rate, as follows (Cesari 2012):

$$
i _ {e x - p o s t} = \left(\frac {P _ {T}}{P _ {t}}\right) ^ {\frac {1}{T - t}} - 1 \tag {10.82}
$$

Note that if the bond pays coupons in the period  $\tau = T - t$ , their value must be considered in  $P_T$ . Indeed, in this case the  $P_T$  is equal to the price of the bond at  $T$ -time plus the sum of all payments received in the time-period  $\tau$ .

If the coupons paid during the time-period  $\tau$  are re-invested until the  $T$ -time on the basis of a compound interest rate, we have:

# 10.2 Bond: Price and Yield

$$
P _ {T} = c _ {t 1} (1 + i) ^ {T - t _ {1}} + c _ {t 2} (1 + i) ^ {T - t _ {2}} + \dots + c _ {T} (1 + i) ^ {T - T = 1} + P \tag {10.83}
$$

where  $c_{t}$  are the payments received in a time between the start of the period  $(t)$  and the end of the period  $(T)$  so that  $t \leq t_{n} \leq T$  and  $i$  the interest rate used in the compound interest rule.

Otherwise, if the coupons paid are not invested in the time-period  $(\tau)$  only the payments received are considered as follows:

$$
P _ {T} = c _ {t 1} + c _ {t 2} + \dots + c _ {T} + P \tag {10.84}
$$

In the ex-ante perspective it is necessary to make assumptions with regards to duration, price and interest rate.

In this case the current yield (or Coupon Yield) can be calculated. The easiest criteria to calculate the bond's yield is the ratio between coupon amount and price as follows (Cesari 2012):

$$
\text {Coupon Yield} (\%) = \frac {C}{P _ {t}} \cdot 100 \tag{10.85}
$$

where  $C$  is the coupon amount on an annual basis and  $P_{t}$  is the bond price at the start of the period  $(t)$ .

Whenever the coupon amount is in percentage of the bond's face value ( $FV$ ) we have:

$$
Y i e l d (\%) = \frac {C (\%) \cdot F V}{P _ {t}} \tag{10.86}
$$

Therefore, if the bond is bought at a par value (face value), yield is equal to the interest rate. Otherwise, if the price changes, the yield changes. This happens because the guarantee of the bond (coupon and face value) does not change. Consequently, there is an inverse relationship between price and yield, so that when:

price decreases, yield increases;
price increases, yield decreases.

The coupon yield is a part of the total yield. It requires calculation at the end of the period  $(T)$ . Usually, the investors refer to Yield to Maturity (YTM). The YTM defines the total return that the investor will receive if he keeps the bond until maturity. It is equal to all of the interest payments that the investor will receive (by assuming that he will reinvest the interest payment at the same rates as the current yield on the bond) plus the capital gain (if purchased at a discount) or loss (if purchased at a premium), as follows (Cesari 2012):

$$
YTM(\%) = \frac{C}{P_{t}} +\frac{\overline{P_{T}} - P_{t}}{P_{t}}\cdot \frac{1}{\tau} \tag{10.87}
$$

where  $C$  is the coupon amount on annual basis;  $P_{t}$  is the bond price at the start of the period  $(t)$ ;  $\overline{P_T}$  is the expected bond price to maturity at the end of the period  $(T)$ ;  $\tau$  is the time-period of the bond maturity  $(\tau = T - t)$ .

Generally, the factor that influences a bond more than any other is the level of prevailing interest rates in the economy. When:

- the interest rates rise, the prices of bonds in the market fall, thereby raising the yield of the older bonds and putting them in line with newer bonds being issued with higher coupons;
- the interest rates fall, the prices of bonds in the market rise, thereby lowering the yield of the older bonds and putting them in line with newer bond being issued with lower coupons.

## 10.3 Term Structure of Interest Rate

The term structure of interest rates (TSI) defines the Yield Curve and it indicates the structure relationship between interest rates at different maturities (Alexander 1980; Altman 1987; Asquith et al. 1989; Balduzzi et al. 2001; Black and Cox 1976; Black and Scholes 1973; Brennan and Schwartz 1977, 1980, 1982; Chance 1990; Cox et al. 1980; Elton et al. 2001; Fama 1984a, b; Fraine and Mills 1961; Johnson 1967; Malkiel 1966; Rao 1982; Smith and Warner 1979; Sundaresan 1983; Zwick 1980). Specifically, the term structure of interest rates defines, at a defined time  $t$ , the relationship between the prices (or interest rates, as obtained indirectly on the price basis) of the bonds on markets and their maturity and therefore the end time-period  $T$ , as well as their time-period  $\tau = T - t$ . In other words, the term structure of interest rates illustrates the relationship between the interest rates when only the maturity changes in a defined both market and time: the different interest rates refer to the different maturity that define the curve of the term structure of interest rates, the Yield Curve. It is worth noting that in a different time-period and market, the structure of interest rates is different and then the yield curve is different.

In order to define the term structure, it is necessary that for each bonds all other variables must be equal. The objective is to highlight the term structure only.

The zero-coupon bonds lie at the basis of the term structure of interest rate. They are elementary bonds and they are very important for finance.

The zero-coupon bond gives the right to receive 100 units monetary at the maturity date. Therefore, the price of a zero-coupon bonds with face value equal to 100 units of money is equal to:

$$
P (t, T) = \frac {1 0 0}{(1 + i (t , T)) ^ {T - t}} \tag {10.88}
$$

On the basis of Eq. (10.88) it is possible to calculate the interest rate as follows (Cesari 2012):

$$
i (t, T) = \left(\frac {1 0 0}{P (t , T)}\right) ^ {\frac {1}{T - t}} - 1 \tag {10.89}
$$

Assume a zero-coupon bond with face value equal to 100 units in money and time-period equal to 1 year ( $T - t = 1$ ). If the interest rates are different with regards to the different time-period, for the same bond it will pay a different price due to the change of the interest rates according to its maturity date.

Assume different interest rates for different maturity of the same bond in the same market as in Table 10.6 (adapted from Cesari 2012).

Table 10.6. shows that by changing the maturity of the bond, it changes the interest rate and therefore it changes the price of the bond. Therefore, the same bond has different prices with regards to the different maturity due to the changes of the interest rates for different time periods. The different interest rates refer to the different maturities defining the yield curve. Therefore, the term structure of interest rates, and therefore the yield curve, defines the relationship between interest rates when the maturity changes only, in the same market at a defined time. This last condition implies that the interest rates for the different maturities are defined at a defined date. Therefore, in a different date on the same market the interest rates referring to the maturities can change and therefore change the yield curve. The yield curve can undertake different shapes: increasing, decreasing, hump, etc.

Note that Table 10.6. shows a relevant relationship: price and interest rate provide the same information. Indeed, given the one it is possible to calculate the other on the basis of a mathematical relationship.

The term structure of interest rates and therefore the yield curve is fundamental for the determination of the price of all other assets.

In the same analysis, the yield curve is assumed flat. In this case the same interest rate for different maturities is assumed. This assumption is hardly noted in reality, but it has the advantage of simplifying the analysis.

It is relevant to know that the TSI's are the Internal Rate of Return (IRR) of the zero-coupon bond. They are the interest rates that can be achieved at the maturity date. For the zero-coupon bond there is no problem regarding reinvestment of the coupon.

By considering the coupons, it is possible to define the relationship between the TSI and IRR for coupon bonds.

Assume that the  $P_B$  is the bond's price with coupon c. By considering the IRR, we have (Cesari 2012):

Table 10.6 Relationship between interest rate, price and maturity

<table><tr><td>PRICE</td><td colspan="10">Maturity
Time-period (T-t)</td></tr><tr><td>Interest rate i(t,T) (%)</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td><td>8</td><td>9</td><td>10</td></tr><tr><td>3</td><td>97.09</td><td>94.26</td><td>91.51</td><td>88.85</td><td>86.26</td><td>83.75</td><td>81.31</td><td>78.94</td><td>76.64</td><td>74.41</td></tr><tr><td>4</td><td>96.15</td><td>92.46</td><td>88.90</td><td>85.48</td><td>82.19</td><td>79.03</td><td>75.99</td><td>73.07</td><td>70.26</td><td>67.56</td></tr><tr><td>5</td><td>95.24</td><td>90.70</td><td>86.38</td><td>82.27</td><td>78.35</td><td>74.62</td><td>71.07</td><td>67.68</td><td>64.46</td><td>61.39</td></tr><tr><td>6</td><td>94.34</td><td>89.00</td><td>83.96</td><td>79.21</td><td>74.73</td><td>70.50</td><td>66.51</td><td>62.74</td><td>59.19</td><td>55.84</td></tr><tr><td>7</td><td>93.46</td><td>87.39</td><td>81.63</td><td>76.29</td><td>71.30</td><td>66.63</td><td>62.27</td><td>58.20</td><td>54.39</td><td>50.83</td></tr><tr><td>8</td><td>92.59</td><td>85.73</td><td>79.38</td><td>73.50</td><td>68.06</td><td>63.02</td><td>58.35</td><td>54.03</td><td>50.02</td><td>46.32</td></tr><tr><td>9</td><td>91.74</td><td>84.17</td><td>77.22</td><td>70.84</td><td>64.99</td><td>59.63</td><td>54.70</td><td>50.19</td><td>46.04</td><td>42.24</td></tr><tr><td>10</td><td>90.91</td><td>82.64</td><td>75.13</td><td>68.30</td><td>62.09</td><td>56.45</td><td>52.32</td><td>46.65</td><td>42.41</td><td>38.55</td></tr></table>

$$
P _ {B} = \frac {c}{(1 + i)} + \frac {c}{(1 + i) ^ {2}} + \dots + \frac {c + 1 0 0}{(1 + i) ^ {n}}
$$

By considering the TSI, we have:

$$
P _ {B} = \frac {c}{\left(1 + R _ {1}\right)} + \frac {c}{\left(1 + R _ {2}\right) ^ {2}} + \dots + \frac {c + 1 0 0}{\left(1 + R _ {n}\right) ^ {n}}.
$$

Therefore, the IRR is a function of the TSI and others elements such as duration  $n$ , the coupon  $c$ , the nature and solidity of the bond offered, etc.

By considering the n rate  $(R_{1}, R_{2}, R_{n})$  of the TSI, the IRR can be defined as follows:

$$
f (i, i, i, \dots , i) = f \left(x _ {1}, x _ {2}, x _ {3}, \dots , x _ {n}\right) \equiv \frac {c}{\left(1 + x _ {1}\right)} + \frac {c}{\left(1 + x _ {2}\right) ^ {2}} + \dots + \frac {c + 1 0 0}{\left(1 + x _ {n}\right) ^ {n}} \tag {10.90}
$$

It is possible to analyse this relation by considering three main relationships (Cesari 2012):

(a) IRR and the bond offered:
(b) IRR and the bond duration;
(c) IRR and the coupon bond;
(d) Duration

# (a) Irr and the Bond Offered

The capability of the bond offered to face debt obligations has important effects on the price and then on the interest rate, with all other conditions equal. The higher the default probability of the bond offered, the lower the value of the bond: the lower price or in equivalent terms, the higher the interest rate to be offered to the bond-holders in order to acquire the bond.

The price of the bond is inverse related to the default probability of the bond offer: the higher the default probability, the lower the price and subsequently the higher the interest rate. Therefore, ceteris paribus, the IRR of the bond increases with the increase of the default probability of the bond offer.

The bond offer rating measures the bond offer's ability to face debt obligations: the lower the rating, the lower the bond offer's ability to face debt obligations, then higher the default risk and then lower the bond's price and higher the interest rate to be offered ex-ante to the bondholders in order to sell the bond. The higher interest rate is required by bondholders in order to face the higher default risk of the bond offer.

Therefore, each bond offer has a specific IRR and therefore a specific TSI. The difference between the TSI of the bond offer and the TSI of the market with regards to the best rating class, defines the credit spread. Denoting with  $R^{e}(t,T)$  the specific

TSI of the bond offer and with  $R(t, T)$  the TSI of the best class rating in the market, the credit spread (CS) can be defined as follows:

$$
C S = R ^ {e} (t, T) - R (t, T) \tag {10.91}
$$

Generally, the IRR of issuer can be defined on the basis of four elements (Cesari 2012):

$$
R ^ {e} (t, T) = p (t) + \pi (t) + \text {t e r m s p r e a d} + \text {c r e d i t s p r e a d} \tag {10.92}
$$

where  $p(t)$  is the real interest rate in short-term and  $\pi (t)$  is the inflation rate.

# (b) Irr and the Bond Duration

Assume a bond with coupon. In this case, the relationship between the IRR  $(i)$  and the duration  $(n)$  is due to the TSI.

It is possible to show this relationship by considering three main cases (Cesari 2012). In all cases, assume two different bonds with the same coupon but different with a different duration: bond (A) with coupon equal  $3\%$  and duration of 5 years; bond (B) with coupon equal  $3\%$  and duration of 10 years.

## Case 1: Tsi Increases Over Time

In case the TSI increases over time, the bond with a long duration has a higher IRR than the bond with short duration as shown in Table 10.7 (adapted from Cesari 2012).

Table 10.7 shows how the TSI's increase over time, the longer bond (bond B) is preferred to shorter bond (bond A).

## Case 2: Tsi Decreases Over Time

In case the TSI decreases over time, the bond with a short duration has a higher IRR than the bond with long duration as shown in Table 10.8 (adapted from Cesari 2012).

Table 10.8 shows how the TSI decreases over time, shorter bond (bond A) is preferred to longer bond (bond B).

## Case 3: Tsi is Flat Over Time

In case the TSI is flat over time, both bonds have the same IRR equal to the TSI as shown in Table 10.9 (adapted from Cesari 2012).

# (c) Irr and the Coupon Bond

There is a relationship between IRR and the coupon bond. With other conditions equal, the higher the coupon, the higher the value of the bond.

The relationship between IRR and coupon is strictly related to the TSI curve. Specifically:

- if TSI increases, the bond with a lower coupon has a higher IRR;

Table 10.7 Case 1: TSI is assumed to increase over time

<table><tr><td>Years</td><td>Duration</td><td>TSI (%)</td><td>Discount rate</td><td>Coupon</td><td>Face value</td></tr><tr><td>0</td><td>01/01/2006</td><td></td><td></td><td></td><td>100</td></tr><tr><td>1</td><td>01/01/2007</td><td>3.0</td><td>0.97087</td><td>3</td><td></td></tr><tr><td>2</td><td>01/01/2008</td><td>3.5</td><td>0.93351</td><td>3</td><td></td></tr><tr><td>3</td><td>01/01/2009</td><td>4.0</td><td>0.88900</td><td>3</td><td></td></tr><tr><td>4</td><td>01/01/2010</td><td>4.5</td><td>0.83856</td><td>3</td><td></td></tr><tr><td>5</td><td>01/01/2011</td><td>5.0</td><td>0.78353</td><td>3</td><td></td></tr><tr><td>6</td><td>01/01/2012</td><td>5.5</td><td>0.72525</td><td>3</td><td></td></tr><tr><td>7</td><td>01/01/2013</td><td>6.0</td><td>0.66506</td><td>3</td><td></td></tr><tr><td>8</td><td>01/01/2014</td><td>6.5</td><td>0.60423</td><td>3</td><td></td></tr><tr><td>9</td><td>01/01/2015</td><td>7.0</td><td>0.54393</td><td>3</td><td></td></tr><tr><td>10</td><td>01/01/2016</td><td>7.5</td><td>0.48519</td><td>3</td><td></td></tr><tr><td colspan="6">Bond A</td></tr><tr><td colspan="2">Price</td><td colspan="2">Coupon and face value</td><td colspan="2">Present value</td></tr><tr><td colspan="2">-91.60</td><td colspan="2"></td><td colspan="2"></td></tr><tr><td colspan="2"></td><td colspan="2">3</td><td colspan="2">2.91262</td></tr><tr><td colspan="2"></td><td colspan="2">3</td><td colspan="2">2.80053</td></tr><tr><td colspan="2"></td><td colspan="2">3</td><td colspan="2">2.66699</td></tr><tr><td colspan="2"></td><td colspan="2">3</td><td colspan="2">2.51568</td></tr><tr><td colspan="2"></td><td colspan="2">103</td><td colspan="2">80.70320</td></tr><tr><td colspan="6">IRR 4.937%</td></tr><tr><td colspan="6">Bond B</td></tr><tr><td colspan="2">Price</td><td colspan="2">Coupon and face value</td><td colspan="2">Present value</td></tr><tr><td colspan="2">-70.84</td><td colspan="2"></td><td colspan="2"></td></tr><tr><td colspan="2"></td><td colspan="2">3</td><td colspan="2">2.91262</td></tr><tr><td colspan="2"></td><td colspan="2">3</td><td colspan="2">2.80053</td></tr><tr><td colspan="2"></td><td colspan="2">3</td><td colspan="2">2.66699</td></tr><tr><td colspan="2"></td><td colspan="2">3</td><td colspan="2">2.51568</td></tr><tr><td colspan="2"></td><td colspan="2">3</td><td colspan="2">2.35058</td></tr><tr><td colspan="2"></td><td colspan="2">3</td><td colspan="2">2.17574</td></tr><tr><td colspan="2"></td><td colspan="2">3</td><td colspan="2">1.99517</td></tr><tr><td colspan="2"></td><td colspan="2">3</td><td colspan="2">1.81269</td></tr><tr><td colspan="2"></td><td colspan="2">3</td><td colspan="2">1.63180</td></tr><tr><td colspan="2"></td><td colspan="2">103</td><td colspan="2">49.97497</td></tr><tr><td colspan="6">IRR 7.188%</td></tr></table>

- if TSI decreases, the bond with a lower coupon has a lower IRR.

These relationships are based on two different elements (Cesari 2012):

- general rule: the higher the coupon, the higher the cash-in of investment. Therefore, the higher the coupon, the lower the time of investment return and

Table 10.8 Case 2: TSI is assumed to decrease over time

<table><tr><td>Years</td><td>Duration</td><td>TSI (%)</td><td>Discount rate</td><td>Coupon</td><td>Face value</td></tr><tr><td>0</td><td>01/01/2006</td><td></td><td></td><td></td><td>100</td></tr><tr><td>1</td><td>01/01/2007</td><td>7.5</td><td>0.93023</td><td>3</td><td></td></tr><tr><td>2</td><td>01/01/2008</td><td>7.0</td><td>0.87344</td><td>3</td><td></td></tr><tr><td>3</td><td>01/01/2009</td><td>6.5</td><td>0.82785</td><td>3</td><td></td></tr><tr><td>4</td><td>01/01/2010</td><td>6.0</td><td>0.79209</td><td>3</td><td></td></tr><tr><td>5</td><td>01/01/2011</td><td>5.5</td><td>0.76513</td><td>3</td><td></td></tr><tr><td>6</td><td>01/01/2012</td><td>5.0</td><td>0.74622</td><td>3</td><td></td></tr><tr><td>7</td><td>01/01/2013</td><td>4.5</td><td>0.73483</td><td>3</td><td></td></tr><tr><td>8</td><td>01/01/2014</td><td>4.0</td><td>0.73069</td><td>3</td><td></td></tr><tr><td>9</td><td>01/01/2015</td><td>3.5</td><td>0.73373</td><td>3</td><td></td></tr><tr><td>10</td><td>01/01/2016</td><td>3.0</td><td>0.74409</td><td>3</td><td></td></tr><tr><td colspan="6">Bond A</td></tr><tr><td colspan="2">Price</td><td colspan="2">Coupon and face value</td><td colspan="2">Present value</td></tr><tr><td colspan="2">-89.08</td><td colspan="2"></td><td colspan="2"></td></tr><tr><td colspan="2"></td><td colspan="2">3</td><td colspan="2">2.79070</td></tr><tr><td colspan="2"></td><td colspan="2">3</td><td colspan="2">2.62032</td></tr><tr><td colspan="2"></td><td colspan="2">3</td><td colspan="2">2.48355</td></tr><tr><td colspan="2"></td><td colspan="2">3</td><td colspan="2">2.37628</td></tr><tr><td colspan="2"></td><td colspan="2">103</td><td colspan="2">78.80884</td></tr><tr><td colspan="6">IRR 5.562%</td></tr><tr><td colspan="6">Bond B</td></tr><tr><td colspan="2">Price</td><td colspan="2">Coupon and face value</td><td colspan="2">Present value</td></tr><tr><td colspan="2">-98.04</td><td colspan="2"></td><td colspan="2"></td></tr><tr><td colspan="2"></td><td colspan="2">3</td><td colspan="2">2.79070</td></tr><tr><td colspan="2"></td><td colspan="2">3</td><td colspan="2">2.62032</td></tr><tr><td colspan="2"></td><td colspan="2">3</td><td colspan="2">2.48355</td></tr><tr><td colspan="2"></td><td colspan="2">3</td><td colspan="2">2.37628</td></tr><tr><td colspan="2"></td><td colspan="2">3</td><td colspan="2">2.29540</td></tr><tr><td colspan="2"></td><td colspan="2">3</td><td colspan="2">2.23865</td></tr><tr><td colspan="2"></td><td colspan="2">3</td><td colspan="2">2.20449</td></tr><tr><td colspan="2"></td><td colspan="2">3</td><td colspan="2">2.19207</td></tr><tr><td colspan="2"></td><td colspan="2">3</td><td colspan="2">2.20119</td></tr><tr><td colspan="2"></td><td colspan="2">103</td><td colspan="2">76.64167</td></tr><tr><td colspan="6">IRR 3.232%</td></tr></table>

then the lower the effective duration of investment. On the other hand, the lower the coupon, the higher the time of investment return and then the higher the effective duration of investment. Therefore, regardless of nominal duration, the effective duration of the bond depends on the amount of the coupon;

Table 10.9 Case 3: TSI is assumed flat over time

<table><tr><td>Years</td><td>Duration</td><td>TSI (%)</td><td>Discount rate</td><td>Coupon</td><td>Face value</td></tr><tr><td>0</td><td>01/01/2006</td><td></td><td></td><td></td><td>100</td></tr><tr><td>1</td><td>01/01/2007</td><td>5.0</td><td>0.95238</td><td>3</td><td></td></tr><tr><td>2</td><td>01/01/2008</td><td>5.0</td><td>0.90703</td><td>3</td><td></td></tr><tr><td>3</td><td>01/01/2009</td><td>5.0</td><td>0.86384</td><td>3</td><td></td></tr><tr><td>4</td><td>01/01/2010</td><td>5.0</td><td>0.82270</td><td>3</td><td></td></tr><tr><td>5</td><td>01/01/2011</td><td>5.0</td><td>0.78353</td><td>3</td><td></td></tr><tr><td>6</td><td>01/01/2012</td><td>5.0</td><td>0.74622</td><td>3</td><td></td></tr><tr><td>7</td><td>01/01/2013</td><td>5.0</td><td>0.71068</td><td>3</td><td></td></tr><tr><td>8</td><td>01/01/2014</td><td>5.0</td><td>0.67684</td><td>3</td><td></td></tr><tr><td>9</td><td>01/01/2015</td><td>5.0</td><td>0.64461</td><td>3</td><td></td></tr><tr><td>10</td><td>01/01/2016</td><td>5.0</td><td>0.61391</td><td>3</td><td></td></tr><tr><td colspan="6">Bond A</td></tr><tr><td colspan="2">Price</td><td colspan="2">Coupon and face value</td><td colspan="2">Present value</td></tr><tr><td colspan="2">-91.34</td><td colspan="2"></td><td colspan="2"></td></tr><tr><td colspan="2"></td><td colspan="2">3</td><td colspan="2">2.85714</td></tr><tr><td colspan="2"></td><td colspan="2">3</td><td colspan="2">2.72109</td></tr><tr><td colspan="2"></td><td colspan="2">3</td><td colspan="2">2.59151</td></tr><tr><td colspan="2"></td><td colspan="2">3</td><td colspan="2">2.46811</td></tr><tr><td colspan="2"></td><td colspan="2">103</td><td colspan="2">80.70320</td></tr><tr><td colspan="6">IRR 5.000%</td></tr><tr><td colspan="6">Bond B</td></tr><tr><td colspan="2">Price</td><td colspan="2">Coupon and face value</td><td colspan="2">Present value</td></tr><tr><td colspan="2">-84.56</td><td colspan="2"></td><td colspan="2"></td></tr><tr><td colspan="2"></td><td colspan="2">3</td><td colspan="2">2.85714</td></tr><tr><td colspan="2"></td><td colspan="2">3</td><td colspan="2">2.72109</td></tr><tr><td colspan="2"></td><td colspan="2">3</td><td colspan="2">2.59151</td></tr><tr><td colspan="2"></td><td colspan="2">3</td><td colspan="2">2.46811</td></tr><tr><td colspan="2"></td><td colspan="2">3</td><td colspan="2">2.35058</td></tr><tr><td colspan="2"></td><td colspan="2">3</td><td colspan="2">2.23865</td></tr><tr><td colspan="2"></td><td colspan="2">3</td><td colspan="2">2.13204</td></tr><tr><td colspan="2"></td><td colspan="2">3</td><td colspan="2">2.03052</td></tr><tr><td colspan="2"></td><td colspan="2">3</td><td colspan="2">1.93383</td></tr><tr><td colspan="2"></td><td colspan="2">103</td><td colspan="2">63.23307</td></tr><tr><td colspan="6">IRR 5.000%</td></tr></table>

- effect of TSI: if the TSI increases over time, the discount factor decreases over time. Therefore, its effect on present value is higher for a higher coupon than a lower one.

The combination of these two elements affects the IRR. Assume two bonds: bond (A) with a coupon of  $3\%$  and a duration of 10 years; bond (B) with a coupon

Table 10.10 Case 1: TSI increases over time

<table><tr><td>Years</td><td>Duration</td><td>TSI (%)</td><td>Discount rate</td><td>Face value</td></tr><tr><td>0</td><td>01/01/2006</td><td></td><td></td><td>100</td></tr><tr><td>1</td><td>01/01/2007</td><td>3.0</td><td>0.97087</td><td></td></tr><tr><td>2</td><td>01/01/2008</td><td>3.5</td><td>0.93351</td><td></td></tr><tr><td>3</td><td>01/01/2009</td><td>4.0</td><td>0.88900</td><td></td></tr><tr><td>4</td><td>01/01/2010</td><td>4.5</td><td>0.83856</td><td></td></tr><tr><td>5</td><td>01/01/2011</td><td>5.0</td><td>0.78353</td><td></td></tr><tr><td>6</td><td>01/01/2012</td><td>5.5</td><td>0.72525</td><td></td></tr><tr><td>7</td><td>01/01/2013</td><td>6.0</td><td>0.66506</td><td></td></tr><tr><td>8</td><td>01/01/2014</td><td>6.5</td><td>0.60423</td><td></td></tr><tr><td>9</td><td>01/01/2015</td><td>7.0</td><td>0.54393</td><td></td></tr><tr><td>10</td><td>01/01/2016</td><td>7.5</td><td>0.48519</td><td></td></tr></table>

Bond A

<table><tr><td>Price</td><td>Coupon</td><td>Coupon and face value</td><td>Present value</td></tr><tr><td>-70.84</td><td></td><td></td><td></td></tr><tr><td></td><td>3</td><td>3</td><td>2.91262</td></tr><tr><td></td><td>3</td><td>3</td><td>2.80053</td></tr><tr><td></td><td>3</td><td>3</td><td>2.66699</td></tr><tr><td></td><td>3</td><td>3</td><td>2.51568</td></tr><tr><td></td><td>3</td><td>3</td><td>2.35058</td></tr><tr><td></td><td>3</td><td>3</td><td>2.17574</td></tr><tr><td></td><td>3</td><td>3</td><td>1.99517</td></tr><tr><td></td><td>3</td><td>3</td><td>1.81269</td></tr><tr><td></td><td>3</td><td>3</td><td>1.63180</td></tr><tr><td></td><td>3</td><td>103</td><td>49.97497</td></tr></table>

IRR  $7.188\%$
Bond B

<table><tr><td>Price</td><td>Coupon</td><td>Coupon and face value</td><td>Present value</td></tr><tr><td>-85.72</td><td></td><td></td><td></td></tr><tr><td></td><td>5</td><td>5</td><td>4.85437</td></tr><tr><td></td><td>5</td><td>5</td><td>4.66755</td></tr><tr><td></td><td>5</td><td>5</td><td>4.44498</td></tr><tr><td></td><td>5</td><td>5</td><td>4.19281</td></tr><tr><td></td><td>5</td><td>5</td><td>3.91763</td></tr><tr><td></td><td>5</td><td>5</td><td>3.62623</td></tr><tr><td></td><td>5</td><td>5</td><td>3.32529</td></tr><tr><td></td><td>5</td><td>5</td><td>3.02116</td></tr><tr><td></td><td>5</td><td>5</td><td>2.71967</td></tr><tr><td></td><td>5</td><td>105</td><td>50.94536</td></tr></table>

IRR 7.037%

of  $5\%$  and a duration of 10 years. Consider two cases: (i) TSI increases over time; (ii) TSI decreases over time (Cesari 2012).

## Case 1: Tsi Increases Over Time

In case the TSI increases over time. Therefore, the bond (A) with lower coupon than the bond (B) is characterized by a higher IRR as shown in Table 10.10 (adapted from Cesari 2012).

Therefore, if the TSI increases, the bond with a lower coupon has a higher IRR.

## Case 2: Tsi Decreases Over Time

In case the TSI decreases over time. Therefore, the bond (A) with lower coupon than the bond  $B$  is characterized by a lower IRR as shown in Table 10.11 (adapted from Cesari 2012).

Therefore, if the TSI decreases, the bond with a lower coupon has a lower IRR.

# (d) Duration

In the previous cases, the analysis shows that the higher amount of coupon reduces the effective duration of the bond. Indeed, the higher the coupon, the faster the return investment.

It is possible to define the duration as the weighted average of a single deadline by using the present values of each expected payment as weights and by using the TSI as interest rate to calculate the present value.

Denote with  $c_{t}(c_{1},c_{2},c_{3},\ldots c_{n})$  the future expected payments for each year  $(t = 1,2,\dots ,n)$ . Since it is a weight average, the denominator is the sum of the weights. But in its formal expression, it is the price of the  $(P)$  of the bond. The duration  $(D)$  is equal to (Cesari 2012):

$$
D = \frac {\sum_ {t = 1} ^ {n} t \cdot c _ {t} \cdot \frac {1}{\left(1 + R _ {t}\right) ^ {t}}}{\sum_ {t = 1} ^ {n} c _ {t} \cdot \frac {1}{\left(1 + R _ {t}\right) ^ {t}}} = \frac {\sum_ {t = 1} ^ {n} t \cdot c _ {t} \cdot \frac {1}{\left(1 + R _ {t}\right) ^ {t}}}{P} \tag {10.93}
$$

Note that if the coupon is equal to zero, the duration is equal to the time  $n$  of the investment.

Assume two bonds: bond (A) with a coupon of  $3\%$  and a duration of 10 years; bond (B) with a coupon of  $5\%$  and a duration of 10 years. Consider two cases: (i) TSI increases over time; (ii) TSI decreases over time.

## Case 1: Tsi Increases Over Time

In case the TSI increases over time, the higher coupon, the lower the effective duration as shown in Table 10.12 (adapted from Cesari 2012).

## Case 2: Tsi Decreases Over Time

In case the TSI decreases over time, the higher coupon, the lower the effective duration as shown in Table 10.13 (adapted from Cesari 2012).

Table 10.11 Case 2: TSI decreases over time

<table><tr><td>Years</td><td>Duration</td><td>TSI (%)</td><td>Discount rate</td><td>Face value</td></tr><tr><td>0</td><td>01/01/2006</td><td></td><td></td><td>100</td></tr><tr><td>1</td><td>01/01/2007</td><td>7.5</td><td>0.93023</td><td></td></tr><tr><td>2</td><td>01/01/2008</td><td>7.0</td><td>0.87344</td><td></td></tr><tr><td>3</td><td>01/01/2009</td><td>6.5</td><td>0.82785</td><td></td></tr><tr><td>4</td><td>01/01/2010</td><td>6.0</td><td>0.79209</td><td></td></tr><tr><td>5</td><td>01/01/2011</td><td>5.5</td><td>0.76513</td><td></td></tr><tr><td>6</td><td>01/01/2012</td><td>5.0</td><td>0.74622</td><td></td></tr><tr><td>7</td><td>01/01/2013</td><td>4.5</td><td>0.73483</td><td></td></tr><tr><td>8</td><td>01/01/2014</td><td>4.0</td><td>0.73069</td><td></td></tr><tr><td>9</td><td>01/01/2015</td><td>3.5</td><td>0.73373</td><td></td></tr><tr><td>10</td><td>01/01/2016</td><td>3.0</td><td>0.74409</td><td></td></tr></table>

Bond A

<table><tr><td>Price</td><td>Coupon</td><td>Coupon and face value</td><td>Present value</td></tr><tr><td>-98.04</td><td></td><td></td><td></td></tr><tr><td></td><td>3</td><td>3</td><td>2.79070</td></tr><tr><td></td><td>3</td><td>3</td><td>2.62032</td></tr><tr><td></td><td>3</td><td>3</td><td>2.48355</td></tr><tr><td></td><td>3</td><td>3</td><td>2.37628</td></tr><tr><td></td><td>3</td><td>3</td><td>2.29540</td></tr><tr><td></td><td>3</td><td>3</td><td>2.23865</td></tr><tr><td></td><td>3</td><td>3</td><td>2.20449</td></tr><tr><td></td><td>3</td><td>3</td><td>2.19207</td></tr><tr><td></td><td>3</td><td>3</td><td>2.20119</td></tr><tr><td></td><td>3</td><td>103</td><td>76.64167</td></tr></table>

IRR  $3.232\%$
Bond B

<table><tr><td>Price</td><td>Coupon</td><td>Coupon and face value</td><td>Present value</td></tr><tr><td>-113.80</td><td></td><td></td><td></td></tr><tr><td></td><td>5</td><td>5</td><td>4.65116</td></tr><tr><td></td><td>5</td><td>5</td><td>4.36719</td></tr><tr><td></td><td>5</td><td>5</td><td>4.13925</td></tr><tr><td></td><td>5</td><td>5</td><td>3.96047</td></tr><tr><td></td><td>5</td><td>5</td><td>3.82567</td></tr><tr><td></td><td>5</td><td>5</td><td>3.73108</td></tr><tr><td></td><td>5</td><td>5</td><td>3.67414</td></tr><tr><td></td><td>5</td><td>5</td><td>3.65345</td></tr><tr><td></td><td>5</td><td>5</td><td>3.66865</td></tr><tr><td></td><td>5</td><td>105</td><td>78.12986</td></tr></table>

IRR  $3.353\%$

Table 10.12 Case 1: TSI increases over time

<table><tr><td>Duration in years</td><td>TSI (%)</td><td>Discount rate</td><td>Face value</td></tr><tr><td></td><td></td><td></td><td>100</td></tr><tr><td>1</td><td>3.0</td><td>0.97087</td><td></td></tr><tr><td>2</td><td>3.5</td><td>0.93351</td><td></td></tr><tr><td>3</td><td>4.0</td><td>0.88900</td><td></td></tr><tr><td>4</td><td>4.5</td><td>0.83856</td><td></td></tr><tr><td>5</td><td>5.0</td><td>0.78353</td><td></td></tr><tr><td>6</td><td>5.5</td><td>0.72525</td><td></td></tr><tr><td>7</td><td>6.0</td><td>0.66506</td><td></td></tr><tr><td>8</td><td>6.5</td><td>0.60423</td><td></td></tr><tr><td>9</td><td>7.0</td><td>0.54393</td><td></td></tr><tr><td>10</td><td>7.5</td><td>0.48519</td><td></td></tr></table>

Bond A

<table><tr><td>Price</td><td>Coupon</td><td>Coupon and face value</td><td>Present value</td><td>Weights (%)</td><td>Duration effective</td></tr><tr><td>70.84</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td>3</td><td>3</td><td>2.91262</td><td>4</td><td>0.04</td></tr><tr><td></td><td>3</td><td>3</td><td>2.80053</td><td>4</td><td>0.08</td></tr><tr><td></td><td>3</td><td>3</td><td>2.66699</td><td>4</td><td>0.11</td></tr><tr><td></td><td>3</td><td>3</td><td>2.51568</td><td>4</td><td>0.14</td></tr><tr><td></td><td>3</td><td>3</td><td>2.35058</td><td>3</td><td>0.17</td></tr><tr><td></td><td>3</td><td>3</td><td>2.17574</td><td>3</td><td>0.18</td></tr><tr><td></td><td>3</td><td>3</td><td>1.99517</td><td>3</td><td>0.20</td></tr><tr><td></td><td>3</td><td>3</td><td>1.81269</td><td>3</td><td>0.20</td></tr><tr><td></td><td>3</td><td>3</td><td>1.63180</td><td>2</td><td>0.21</td></tr><tr><td></td><td>3</td><td>103</td><td>49.97497</td><td>71</td><td>7.05</td></tr><tr><td></td><td></td><td></td><td></td><td>100.00</td><td>8.39</td></tr></table>

Bond B

<table><tr><td>Price</td><td>Coupon</td><td>Coupon and face value</td><td>Present value</td><td>Weights (%)</td><td>Duration effective</td></tr><tr><td>85.72</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td>5</td><td>5</td><td>4.85437</td><td>6</td><td>0.06</td></tr><tr><td></td><td>5</td><td>5</td><td>4.66755</td><td>5</td><td>0.11</td></tr><tr><td></td><td>5</td><td>5</td><td>4.44498</td><td>5</td><td>0.16</td></tr><tr><td></td><td>5</td><td>5</td><td>4.19281</td><td>5</td><td>0.20</td></tr><tr><td></td><td>5</td><td>5</td><td>3.91763</td><td>5</td><td>0.23</td></tr><tr><td></td><td>5</td><td>5</td><td>3.62623</td><td>4</td><td>0.25</td></tr><tr><td></td><td>5</td><td>5</td><td>3.32529</td><td>4</td><td>0.27</td></tr><tr><td></td><td>5</td><td>5</td><td>3.02116</td><td>4</td><td>0.28</td></tr><tr><td></td><td>5</td><td>5</td><td>2.71967</td><td>3</td><td>0.29</td></tr><tr><td></td><td>5</td><td>105</td><td>50.94536</td><td>59</td><td>5.94</td></tr><tr><td></td><td></td><td></td><td></td><td>100.00</td><td>7.78</td></tr></table>

Table 10.13 Case 2: TSI decreases over time

<table><tr><td>Duration in years</td><td>TSI (%)</td><td>Discount rate</td><td>Face value</td></tr><tr><td></td><td></td><td></td><td>100</td></tr><tr><td>1</td><td>7.5</td><td>0.93023</td><td></td></tr><tr><td>2</td><td>7.0</td><td>0.87344</td><td></td></tr><tr><td>3</td><td>6.5</td><td>0.82785</td><td></td></tr><tr><td>4</td><td>6.0</td><td>0.79209</td><td></td></tr><tr><td>5</td><td>5.5</td><td>0.76513</td><td></td></tr><tr><td>6</td><td>5.0</td><td>0.74622</td><td></td></tr><tr><td>7</td><td>4.5</td><td>0.73483</td><td></td></tr><tr><td>8</td><td>4.0</td><td>0.73069</td><td></td></tr><tr><td>9</td><td>3.5</td><td>0.73373</td><td></td></tr><tr><td>10</td><td>3.0</td><td>0.74409</td><td></td></tr></table>

Bond A

<table><tr><td>Price</td><td>Coupon</td><td>Coupon and face value</td><td>Present value</td><td>Weights (%)</td><td>Duration effective</td></tr><tr><td>98.04</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td>3</td><td>3</td><td>2.79070</td><td>3</td><td>0.03</td></tr><tr><td></td><td>3</td><td>3</td><td>2.62032</td><td>3</td><td>0.05</td></tr><tr><td></td><td>3</td><td>3</td><td>2.48355</td><td>3</td><td>0.08</td></tr><tr><td></td><td>3</td><td>3</td><td>2.37628</td><td>2</td><td>0.10</td></tr><tr><td></td><td>3</td><td>3</td><td>2.29540</td><td>2</td><td>0.12</td></tr><tr><td></td><td>3</td><td>3</td><td>2.23865</td><td>2</td><td>0.14</td></tr><tr><td></td><td>3</td><td>3</td><td>2.20449</td><td>2</td><td>0.16</td></tr><tr><td></td><td>3</td><td>3</td><td>2.19207</td><td>2</td><td>0.18</td></tr><tr><td></td><td>3</td><td>3</td><td>2.20119</td><td>2</td><td>0.20</td></tr><tr><td></td><td>3</td><td>103</td><td>76.64167</td><td>78</td><td>7.82</td></tr><tr><td></td><td></td><td></td><td></td><td>100.00</td><td>8.86</td></tr></table>

Bond B

<table><tr><td>Price</td><td>Coupon</td><td>Coupon and face value</td><td>Present value</td><td>Weights (%)</td><td>Duration effective</td></tr><tr><td>113.80</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td>5</td><td>5</td><td>4.65116</td><td>4</td><td>0.04</td></tr><tr><td></td><td>5</td><td>5</td><td>4.36719</td><td>4</td><td>0.08</td></tr><tr><td></td><td>5</td><td>5</td><td>4.13925</td><td>4</td><td>0.11</td></tr><tr><td></td><td>5</td><td>5</td><td>3.96047</td><td>3</td><td>0.14</td></tr><tr><td></td><td>5</td><td>5</td><td>3.82567</td><td>3</td><td>0.17</td></tr><tr><td></td><td>5</td><td>5</td><td>3.73108</td><td>3</td><td>0.20</td></tr><tr><td></td><td>5</td><td>5</td><td>3.67414</td><td>3</td><td>0.23</td></tr><tr><td></td><td>5</td><td>5</td><td>3.65345</td><td>3</td><td>0.26</td></tr><tr><td></td><td>5</td><td>5</td><td>3.66865</td><td>3</td><td>0.29</td></tr><tr><td></td><td>5</td><td>105</td><td>78.12986</td><td>69</td><td>6.87</td></tr><tr><td></td><td></td><td></td><td></td><td>100.00</td><td>8.37</td></tr></table>

In both cases the duration of the bond with a lower coupon is higher than the bond with a higher coupon. However, in both cases the duration is lower if the TSI increases.

In the analysis on duration, IRR coupon, the TSI shows that it is not possible to define criteria capable of identifying ex-ante the best bond. Indeed, if admitting the existence of this criteria, it implies the existence of arbitrage opportunities. All criteria used is based on the expectation of the interest rates.

# 10.4 Expectation Theory of Term Structure Interest Rate

A theory about TSI can be defined as a theoretical model capable of explaining the curve of TSI and its movements over time. There are several models to estimate the curve of TSI (McCulloch 1971, 1975; Nelson and Siegel 1985; Svensson 1994; Merton 1974; Vasicek 1977; Cox et al. 1985; Ho and Lee 1986; Hull and White 1990; Heath et al. 1992; Brace et al. 1997; Chan and Thomson 1988; Campbell 1986; Carleton and Cooper 1976; Chambers et al. 1984; Fama 1976, 1984a, b; Modigliani and Sutch 1966; Roll 1970; Van Horne 1965, 1966). It is outside of this present work. The aim of this paragraph is to provide a brief introduction on the expectation theory of TSI.

The term structure of interest rates (TSI) are spot rates and relative prices  $P(t, T)$  where  $t$  is the current time and  $T$  is the end-time.

Denote with:  $T$  and  $S$  two end-times where  $S < T$ ;  $R(t, T)$  the long-term interest rate;  $R(t, S)$  the short-term interest rate;  $R(t, S, T)$  the forward interest rate applied in time between short-term  $(S)$  and long-term  $(T)$ . In a condition of non-arbitrage, we have (Cesari 2012):

$$
[ 1 + R (t, T) ] ^ {(T - t)} = [ 1 + R (t, S) ] ^ {(S - t)} [ 1 + R (t, S, T) ] ^ {(T - S)} \tag {10.94}
$$

Equation (10.94) shows that in a condition of non-arbitrage the long-term interest rate  $(R(t,T))$  is equal to the short-term interest rate  $(R(t,S))$  combined with the forward interest rate  $(R(t,S,T))$  in the time period between short-term  $(S)$  and long-term  $(T)$ .

This Eq. (10.94) cannot be considered a theory of long-term interest rate. However, its application avoids arbitrage in financial markets and therefore theories capable of admitting arbitrage.

One of the most relevant theories on the long-term interest rates is the Expectation Theory (also known as Unbiased Expectations Theory) whose fathers are Fisher (1930) and Hicks (1939).

For further understanding assume a context of no-uncertainty (Cesari 2012). Assume two different time periods: time  $S$  and time  $T$  with  $S < T$ . Assume two different strategies:

- perfect matching: to buy an asset with maturity in time  $S$  at price  $P(t, S)$  with earning equal to  $\frac{100}{P(t, S)}$ ;
- yield curve riding: to buy an asset with maturity in time  $T$  and sell it in time  $S$  by earnings equal to  $\frac{P(S, T)}{P(t, T)}$ .

In a condition of no-uncertainty, the no-arbitrage condition implies that the results of these two strategies must be equal as follows:

$$
\frac {P (S , T)}{P (t , T)} = \frac {1 0 0}{P (t , S)}
$$

Therefore, the total rate of return in the entire period  $\left(\frac{P(S,T)}{P(t,T)}\right)$  is equal to rate of return to maturity  $\left(\frac{100}{P(t,S)}\right)$ . Based on this equivalence, the price in the future time  $S$  can be achieved, as follows (Cesari 2012):

$$
P (S, T) = \frac {P (t , T)}{P (t , S)} 1 0 0 = Q (t, S, T) \tag {10.95}
$$

Equation (10.95) shows that in a condition of no-uncertainty and no-arbitrage, the forward price is equal to the future price.

By introducing the uncertainty, it is possible to maintain the structure of the reasoning by saying that the forward price is not equal to the future price but it is equal to the expectations on future price. By using the operator expected value  $E[.]$ , Eq. (10.95) becomes (Cesari 2012):

$$
Q (t, S, T) = E _ {t} [ P (S, T) ] \rightarrow Q (t, S, T) - E _ {t} [ P (S, T) ] = 0 \tag {10.96}
$$

It is relevant to note that the  $E_{t}[.]$  is the expected value according to the information available to the current time  $t$ . This is the pure version of the expectation theory.

Unlike the pure expectation theory, Keynes hypothesized negative differences between the forward price and future expected price called normal backwardation. In this case Eq. (10.96) becomes (Cesari 2012):

$$
Q (t, S, T) <   E _ {t} [ P (S, T) ] \rightarrow Q (t, S, T) - E _ {t} [ P (S, T) ] <   0 \tag {10.97}
$$

This happens because hedgers tend to be short-sellers and then they have to push the speculators to assume a long-position. It implies a forward price lower than the future expected price resulting in a positive profit expectation on long-positions. Therefore, the forward price tends to increase over time between time  $t$  and time  $S$  because the forward price must be equal to the spot price.

Similarly if the hedgers assume a long-position. In this case, the relation is inverted and there is a positive difference between the forward price and the future expected price as follows (Cesari 2012):

$$
Q (t, S, T) > E _ {t} [ P (S, T) ] \rightarrow Q (t, S, T) - E _ {t} [ P (S, T) ] > 0 \tag {10.98}
$$

This happens because hedgers tend to be long-position and then they have to push the speculators to assume short-position. It implies a forward price higher than the future expected price resulting in a positive profit expectation on short-positions. Therefore, the forward price tends to decrease over time between time  $t$  and time  $S$  because the forward price must be equal to the spot price.

The pure version of the Expectation Theory can be applied on interest rates. The theory can be formulated by saying that the forward interest rate is the expected value of the spot interest rate in the future time. On the basis of Eq. (10.96) we have (Cesari 2012):

$$
R (t, S, T) = E _ {t} [ R (S, T) ] \rightarrow R (t, S, T) - E _ {t} [ R (S, T) ] = 0 \tag {10.99}
$$

In a condition of no-arbitrage, Eq. (10.94) can be rewritten as follows:

$$
[ 1 + R (t, T) ] ^ {(T - t)} = [ 1 + R (t, S) ] ^ {(S - t)} [ 1 + E _ {t} [ R (S, T) ] ] ^ {(T - S)} \tag {10.100}
$$

A general formulation can be obtained by considering a special case of a single period interest rate (Cesari 2012). Assume:  $S = t + 1$ ;  $T - S = 1$ ;  $T = t + 2$ .

In a condition of no-arbitrage, by applying Eq. (10.94) we have:

$$
[ 1 + R (t, t + 2) ] ^ {(t + 2 - t)} = [ 1 + R (t, t + 1) ] ^ {(t + 1 - t)} [ 1 + R (t, t + 1, t + 2) ] ^ {(t + 2 - t - 1)}
$$

and then:

$$
[ 1 + R (t, t + 2) ] ^ {2} = [ 1 + R (t, t + 1) ] [ 1 + R (t, t + 1, t + 2) ]
$$

By using the linear approximation, we have:

$$
R (t, t + 2) = \frac {R (t , t + 1) + R (t , t + 1 , t + 2)}{2}
$$

It shows that the interest rate at 2 years is equal to the arithmetical average of the one-year spot rate and one-year forward rate in a year.

Based on the pure expectation theory, applying Eq. (10.99) we have:

$$
R (t, t + 1, t + 2) = E _ {t} [ R (t + 1, t + 2) ]
$$

and:

$$
R (t, t + 1) = E _ {t} [ R (t, t + 1) ]
$$

and then:

$$
R (t, t + 2) = \frac {1}{2} \sum_ {h = 1} ^ {2} E _ {t} [ R (t + h - 1, t + h) ]
$$

Generalizing we have (Cesari 2012):

$$
R (t, t + \tau) = \frac {1}{\tau} \sum_ {h = 1} ^ {\tau} E _ {t} [ R (t + h - 1, t + h) ] \tag {10.101}
$$

Equation (10.101) shows on that the spot rate for the period of  $\tau$  years  $(R(t, \tau))$  is an arithmetical average of the  $\tau$  future expected single period rates.

Therefore, the return investment on the long-term is equal to the return of investment in a short-term repeated from year to year (roll-over mechanism). On the basis of this mechanism, the pure version of the Expectation Theory can be used to explain the dynamic of the TSI curve. Specifically (Cesari 2012):

- if the curve of TSI has a positive slope, it implies a long-term rate  $(R(t,t + \tau))$  higher than short rate  $(R(t,t + 1))$ . It can be explained with expectations of future spot rates higher than current spot rates;
- if the curve of TSI has a negative slope, it implies a long-term rate  $(R(t,t + \tau))$  lower than short rate  $(R(t,t + 1))$ . It can be explained with expectations of future spot rates lower than current spot rates;
- if the curve of TSI is flat, it implies a long-term rate  $(R(t,t + \tau))$  equal to the short rate  $(R(t,t + 1))$ . It can be explained with expectations of future spot rates equal to the current spot rates.

A general formulation of the Expectation Theory that also considers the normal backwardation, can be achieved by introducing a liquidity premium (or term premium)  $(\delta)$ . In this case, Eq. (10.99) becomes (Cesari 2012):

$$
R (t, t + \tau - 1, t + \tau) = E _ {t} [ R (t + \tau - 1, t + \tau) ] + \delta (\tau) \quad w i t h \quad \delta (\tau) > 0 \tag {10.102}
$$

The liquidity premium  $\delta(\tau)$  is positive and it represents the difference between the forward rate and the future expected rate.

Based on this relationship, Eq. (10.101) can be rewritten as follows (Cesari 2012):

$$
R (t, t + \tau) = \frac {1}{\tau} \sum_ {h = 1} ^ {\tau} E _ {t} [ R (t + h - 1, t + h) ] + \pi (\tau) \tag {10.103}
$$

The term  $\pi (\tau)$  in Eq. (10.103) is a premium linkage to the uncertainty of the future rates. Based on:

- Liquidity preference theory, the premium is positive  $(\pi(\tau) > 0)$  because it is the premium required by investors to invest in the long-term renouncing to liquidity.
- Preferred habitat theory, the premium is negative  $(\pi(\tau) < 0)$  because the premium is required by investors to invest in a short-term while they prefer the long-term;
- Pure version of the Expectation Theory requires no premium  $(\pi(\tau) = 0)$ .

