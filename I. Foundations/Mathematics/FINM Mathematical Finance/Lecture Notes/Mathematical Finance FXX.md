---
parent_directory: I. Foundations/Mathematics/FINM Mathematical Finance/Lecture Notes
title: Foreign Exchange & Stochastic Calculus
tags: null
aliases:
- Foreign Exchange & Stochastic Calculus
parent_folder: Lecture Notes
subfolder: null
key_concepts: null
cssclasses: academia
linter-yaml-title-alias: Foreign Exchange & Stochastic Calculus
primary_tags:
- fluctuations models
- currency exchange processes
- us money market
secondary_tags:
- foreign exchange models
- exchange models
- risk neutral measure
- risk-neutral probability measure
- tradeable asset
- stochastic process
tags_extracted: '2025-12-18T17:57:32.464976'
tags_method: max_quality_v1
---

# Stochastic Calculus

# Steve Lalley

http://www.stat.uchicago.edu/1alley/Courses/390/

# Tonight —

Foreign Exchange & Exchange Rate Fluctuations  
Linear Stochastic Differential Equations  
Cameron-Martin-Girsanov Formula

# Foreign Exchange

Stochastic Models for Exchange Rates  
Interest Rates and Exchange Rates  
Options on Currency Exchange

# Basic Principles

- Share price processes of tradeable assets are martingales under any risk-neutral probability measure.  
- Risk-neutrality of a probability measure depends on the numeraire.  
Currencies are not tradeable assets!  
Money market shares are!

Let  $Y_{t}$  denote the exchange rate at time  $t$  between US Dollars  $\$$  and UK Pounds Sterling  $\mathcal{L}$ , i.e., the number of pounds that one dollar will buy. A simple model:

$$
d Y _ {t} = \mu Y _ {t} d t + \sigma Y _ {t} d W _ {t}
$$

where  $W_{t}$  is a standard Wiener process under the risk neutral measure for  $\mathcal{L}$  investors, and  $\mu$  and  $\sigma$  are constants.

Let  $Y_{t}$  denote the exchange rate at time  $t$  between US Dollars  $\$$  and UK Pounds Sterling  $\mathcal{L}$ , i.e., the number of pounds that one dollar will buy. A simple model:

$$
d Y _ {t} = \mu Y _ {t} d t + \sigma Y _ {t} d W _ {t}
$$

where  $W_{t}$  is a standard Wiener process under the risk neutral measure for  $\mathcal{L}$  investors, and  $\mu$  and  $\sigma$  are constants.

In a more realistic model, the drift and/or diffusion coefficients might be time-varying but deterministic:

$$
d Y _ {t} = \mu_ {t} Y _ {t} d t + \sigma_ {t} Y _ {t} d W _ {t}
$$

An Itô process is a stochastic process that satisfies a stochastic differential equation of the form

$$
d Z _ {t} = A _ {t} d t + B _ {t} d W _ {t}
$$

An Itô process is a stochastic process that satisfies a stochastic differential equation of the form

$$
d Z _ {t} = A _ {t} d t + B _ {t} d W _ {t}
$$

Here  $W_{t}$  is a standard Wiener process (Brownian motion), and  $A_{t}, B_{t}$  are adapted process, that is, processes such that for any time  $t$ , the current values  $A_{t}, B_{t}$  are independent of the future increments of the Wiener process.

An Itô process is a stochastic process that satisfies a stochastic differential equation of the form

$$
d Z _ {t} = A _ {t} d t + B _ {t} d W _ {t}
$$

Here  $W_{t}$  is a standard Wiener process (Brownian motion), and  $A_{t}, B_{t}$  are adapted process, that is, processes such that for any time  $t$ , the current values  $A_{t}, B_{t}$  are independent of the future increments of the Wiener process.

The local quadratic variation of the Itô process  $Z_{t}$  is defined by

$$
d [ Z, Z ] _ {t} = B _ {t} ^ {2} d t
$$

# Itô's Formula

If  $Z_{t}$  is an Itô process, and if  $f(x)$  is a smooth function, then  $f(Z_{t})$  is also an Itô process whose Itô SDE is

$$
d f (Z _ {t}) = f ^ {\prime} (Z _ {t}) d Z _ {t} + \frac {1}{2} f ^ {\prime \prime} (Z _ {t}) d [ Z, Z ] _ {t}
$$

If  $Z_{t}$  is an Itô process, and if  $f(x)$  is a smooth function, then  $f(Z_{t})$  is also an Itô process whose Itô SDE is

$$
d f (Z _ {t}) = f ^ {\prime} (Z _ {t}) d Z _ {t} + \frac {1}{2} f ^ {\prime \prime} (Z _ {t}) d [ Z, Z ] _ {t}
$$

Itô's formula has a number of important generalizations. Here is one which is sometimes useful in solving SDEs with time-dependent coefficients: If  $u(x, t)$  is a smooth function of two variables, then

$$
d u (Z _ {t}, t) = u _ {t} d t + u _ {x} d Z _ {t} + \frac {1}{2} u _ {x x} d [ Z, Z ] _ {t}
$$

# Solving the SDE

The idea is to guess a solution by applying the Itô formula to the right process. Assume that under the probability measure  $P$  the exchange rate  $Y_{t}$  satisfies

$$
d Y _ {t} = \mu Y _ {t} d t + \sigma Y _ {t} d W _ {t}
$$

The idea is to guess a solution by applying the Itô formula to the right process. Assume that under the probability measure  $P$  the exchange rate  $Y_{t}$  satisfies

$$
d Y _ {t} = \mu Y _ {t} d t + \sigma Y _ {t} d W _ {t}
$$

Try Itô with  $f(x) = \log x$ :

$$
d \log (Y _ {t}) = \mu d t + \sigma d W _ {t} - (\sigma^ {2} / 2) d t
$$

The idea is to guess a solution by applying the Itô formula to the right process. Assume that under the probability measure  $P$  the exchange rate  $Y_{t}$  satisfies

$$
d Y _ {t} = \mu Y _ {t} d t + \sigma Y _ {t} d W _ {t}
$$

Try Itô with  $f(x) = \log x$ :

$$
d \log (Y _ {t}) = \mu d t + \sigma d W _ {t} - (\sigma^ {2} / 2) d t
$$

Since  $\mu$  and  $\sigma$  are constants, this is easily integrated to give the general solution to the SDE:

$$
Y _ {t} = Y _ {0} \exp \left\{\left(\mu - \sigma^ {2} / 2\right) t + \sigma W _ {t} \right\}
$$

# Time-Dependent SDEs

A similar strategy works for equations with time-dependent coefficients, for example:

$$
d Y _ {t} = \mu Y _ {t} d t + \sigma Y _ {t} d W _ {t}
$$

# Time-Dependent SDEs

A similar strategy works for equations with time-dependent coefficients, for example:

$$
d Y _ {t} = \mu Y _ {t} d t + \sigma Y _ {t} d W _ {t}
$$

Itô:

$$
d \log (Y _ {t}) = \mu_ {t} d t + \sigma d W _ {t} - (\sigma^ {2} / 2) d t
$$

A similar strategy works for equations with time-dependent coefficients, for example:

$$
d Y _ {t} = \mu Y _ {t} d t + \sigma Y _ {t} d W _ {t}
$$

Itô:

$$
d \log (Y _ {t}) = \mu_ {t} d t + \sigma d W _ {t} - (\sigma^ {2} / 2) d t
$$

and so

$$
\left| Y _ {t} = Y _ {0} \exp \{(\bar {\mu} _ {t} - \sigma^ {2} / 2) t + \sigma W _ {t} \right\}
$$

where

$$
\bar {\mu} _ {t} = \frac {1}{t} \int_ {0} ^ {t} \mu_ {s} d s
$$

Assume that for each of the two currencies US Dollar and UK Pound Sterling there is a riskless Money Market. Let  $A_{t}$  and  $B_{t}$  be the "share prices" of US Money Market and UK Money Market, respectively, and for simplicity assume that the time-zero share prices are both 1.

Assume that for each of the two currencies US Dollar and UK Pound Sterling there is a riskless Money Market. Let  $A_{t}$  and  $B_{t}$  be the "share prices" of US Money Market and UK Money Market, respectively, and for simplicity assume that the time-zero share prices are both 1.

Assume that the riskless rates of return  $r_A, r_B$  in the two currencies are constant, but not necessarily equal. Then

$$
A _ {t} = \exp \left\{r _ {A} t \right\} \quad \mathrm {d o l l a r s}
$$

$$
B _ {t} = \exp \{r _ {B} t \} \quad \mathrm {p o u n d s}
$$

# Exchange and Interest Rates

The asset US Money Market is riskless to a Dollar investor, but not to a Pound Sterling investor. Evaluated in Pounds Sterling, the share price of the US Money Market asset is

$$
A _ {t} Y _ {t} = Y _ {0} \exp \{r _ {A} t + \mu t - \sigma^ {2} t / 2 + \sigma W _ {t} \}
$$

where  $W_{t}$  is a standard Wiener Process under the risk neutral probability measure  $Q_{B}$  for Pound investors.

# Exchange and Interest Rates

The asset US Money Market is riskless to a Dollar investor, but not to a Pound Sterling investor. Evaluated in Pounds Sterling, the share price of the US Money Market asset is

$$
A _ {t} Y _ {t} = Y _ {0} \exp \{r _ {A} t + \mu t - \sigma^ {2} t / 2 + \sigma W _ {t} \}
$$

where  $W_{t}$  is a standard Wiener Process under the risk neutral probability measure  $Q_{B}$  for Pound investors.

Theorem:  $\mu = r_{B} - r_{A}$ .

Since US Money Market is a tradeable asset, its share price  $Y_{0}$  at time  $t = 0$  must be the expected value of its discounted share price  $A_{t}Y_{t}$  (in  $\mathcal{L}$ ) at time  $t$ , where

the discount rate is  $r_{B}$ , and

Since US Money Market is a tradeable asset, its share price  $Y_{0}$  at time  $t = 0$  must be the expected value of its discounted share price  $A_{t}Y_{t}$  (in  $\mathcal{L}$ ) at time  $t$ , where

the discount rate is  $r_{B}$ , and  
the expectation is taken under  $Q_{B}$ .

Since US Money Market is a tradeable asset, its share price  $Y_{0}$  at time  $t = 0$  must be the expected value of its discounted share price  $A_{t}Y_{t}$  (in  $\mathcal{L}$ ) at time  $t$ , where

the discount rate is  $r_{B}$ , and  
the expectation is taken under  $Q_{B}$ .

Thus

$$
Y _ {0} = E _ {Q _ {B}} e ^ {- r _ {B} t} A _ {t} Y _ {t}
$$

Since US Money Market is a tradeable asset, its share price  $Y_{0}$  at time  $t = 0$  must be the expected value of its discounted share price  $A_{t}Y_{t}$  (in  $\mathcal{L}$ ) at time  $t$ , where

the discount rate is  $r_{B}$ , and  
the expectation is taken under  $Q_{B}$ .

Thus

$$
\begin{array}{l} Y _ {0} = E _ {Q _ {B}} e ^ {- r _ {B} t} A _ {t} Y _ {t} \\ = E _ {Q _ {B}} e ^ {- r _ {B} t} Y _ {0} \exp \{r _ {A} t + \mu t - \sigma^ {2} t + \sigma W _ {t} \} \\ \end{array}
$$

Since US Money Market is a tradeable asset, its share price  $Y_{0}$  at time  $t = 0$  must be the expected value of its discounted share price  $A_{t}Y_{t}$  (in  $\mathcal{L}$ ) at time  $t$ , where

the discount rate is  $r_{B}$ , and  
the expectation is taken under  $Q_{B}$ .

Thus

$$
\begin{array}{l} Y _ {0} = E _ {Q _ {B}} e ^ {- r _ {B} t} A _ {t} Y _ {t} \\ = E _ {Q _ {B}} e ^ {- r _ {B} t} Y _ {0} \exp \{r _ {A} t + \mu t - \sigma^ {2} t + \sigma W _ {t} \} \\ = Y _ {0} \exp \{(r _ {A} - r _ {B} + \mu - \sigma^ {2} / 2) t \} E _ {Q _ {B}} \exp \{\sigma W _ {t} \} \\ \end{array}
$$

Since US Money Market is a tradeable asset, its share price  $Y_{0}$  at time  $t = 0$  must be the expected value of its discounted share price  $A_{t}Y_{t}$  (in  $\mathcal{L}$ ) at time  $t$ , where

the discount rate is  $r_{B}$ , and  
the expectation is taken under  $Q_{B}$ .

Thus

$$
\begin{array}{l} Y _ {0} = E _ {Q _ {B}} e ^ {- r _ {B} t} A _ {t} Y _ {t} \\ = E _ {Q _ {B}} e ^ {- r _ {B} t} Y _ {0} \exp \{r _ {A} t + \mu t - \sigma^ {2} t + \sigma W _ {t} \} \\ = Y _ {0} \exp \{(r _ {A} - r _ {B} + \mu - \sigma^ {2} / 2) t \} E _ {Q _ {B}} \exp \{\sigma W _ {t} \} \\ = Y _ {0} \exp \{(r _ {A} - r _ {B} + \mu) t \} \\ \end{array}
$$

# Currency Options

Consider an option Call that gives the owner the right to buy \(1 for \mathcal {L} K at time T. What is the arbitrage price at time 0?

Consider an option Call that gives the owner the right to buy \(1 for \mathcal {L} K at time T. What is the arbitrage price at time 0?

Solution: The option is identical to a call on  $e^{-r_A T}$  shares of the US Money Market. To a  $\mathcal{L}$  investor, the US Money Market is a risky asset with price process  $e^{-r_A t} Y_t$ . Thus, the call option may be priced using the Black-Sholes Formula.

Consider an option Call that gives the owner the right to buy \(1 for \mathcal {L} K at time T. What is the arbitrage price at time 0?

Solution: The option is identical to a call on  $e^{-r_A T}$  shares of the US Money Market. To a  $\mathcal{L}$  investor, the US Money Market is a risky asset with price process  $e^{-r_A t} Y_t$ . Thus, the call option may be priced using the Black-Sholes Formula.

Exercise: Do it! While you're at it, show how to hedge the option.

Theorem: Let  $Q_{A}$  be the risk-neutral probability measure for the US Dollar investor, and  $Q_{B}$  the risk-neutral measure for the UK Pound Sterling investor. Unless  $\sigma = 0$  (that is, unless the exchange rate is purely deterministic), it must be the case that

$$
Q _ {A} \ne Q _ {B}
$$

Theorem: Let  $Q_{A}$  be the risk-neutral probability measure for the US Dollar investor, and  $Q_{B}$  the risk-neutral measure for the UK Pound Sterling investor. Unless  $\sigma = 0$  (that is, unless the exchange rate is purely deterministic), it must be the case that

$$
Q _ {A} \ne Q _ {B}
$$

This is a special case of a more general phenomenon:

# Numeraire Change

Suppose that a market has tradeable assets  $A, B$  with share price processes  $S_{t}^{A}$  and  $S_{t}^{B}$  (evaluated in a common numeraire  $C$ ). Let  $Q^{A}$  and  $Q^{B}$  be risk-neutral measures for numeraires  $A, B$ , respectively.

# Numeraire Change

Suppose that a market has tradeable assets  $A, B$  with share price processes  $S_{t}^{A}$  and  $S_{t}^{B}$  (evaluated in a common numeraire  $C$ ). Let  $Q^{A}$  and  $Q^{B}$  be risk-neutral measures for numeraires  $A, B$ , respectively.

Theorem:  $Q^{A} = Q^{B}$  if and only if  $S_{t}^{A} / S_{t}^{B}$  is a constant random variable. Furthermore, in general, for any finite time  $T$ ,

$$
\left(\frac {d Q ^ {B}}{d Q ^ {A}}\right) _ {\mathcal {F} _ {T}} = \left(\frac {S _ {T} ^ {B}}{S _ {T} ^ {A}}\right) \left(\frac {S _ {0} ^ {A}}{S _ {0} ^ {B}}\right)
$$

In the foreign exchange context, the riskless assets for the two numeraires are US Money Market and UK Money Market, with share prices (in $)

$$
A _ {t} = \exp \{r _ {A} t \}
$$

$$
B _ {t} = \exp \{r _ {B} t \} / Y _ {t}
$$

In the foreign exchange context, the riskless assets for the two numeraires are US Money Market and UK Money Market, with share prices (in $)

$$
\begin{array}{l} A _ {t} = \exp \{r _ {A} t \} \\ B _ {t} = \exp \{r _ {B} t \} / Y _ {t} \\ \end{array}
$$

Therefore, the likelihood ratio between the risk-neutral measures for  $\mathcal{L}$  and  $\$ 6$ investors is

$$
\left(\frac {d Q ^ {B}}{d Q ^ {A}}\right) _ {\mathcal {F} _ {T}} = \left(\frac {Y _ {T}}{Y _ {0}}\right) ^ {- 1} \exp \{(r _ {B} - r _ {A}) T \}
$$

In the foreign exchange context, the riskless assets for the two numeraires are US Money Market and UK Money Market, with share prices (in $)

$$
\begin{array}{l} A _ {t} = \exp \{r _ {A} t \} \\ B _ {t} = \exp \{r _ {B} t \} / Y _ {t} \\ \end{array}
$$

Therefore, the likelihood ratio between the risk-neutral measures for  $\mathcal{L}$  and  $\$ 6$ investors is

$$
\left(\frac {d Q ^ {B}}{d Q ^ {A}}\right) _ {\mathcal {F} _ {T}} = \left(\frac {Y _ {T}}{Y _ {0}}\right) ^ {- 1} \exp \{(r _ {B} - r _ {A}) T \}
$$

# Likelihood Ratio Identity

Let  $V_{t}^{i}$  be the time-  $t$  share price of any contingent claim in numeraire  $i = A, B, C$ . These share prices satisfy:

# Likelihood Ratio Identity

Let  $V_{t}^{i}$  be the time-  $t$  share price of any contingent claim in numeraire  $i = A, B, C$ . These share prices satisfy:

$$
V _ {t} ^ {A} = V _ {t} ^ {C} / S _ {t} ^ {A}
$$

$$
V _ {t} ^ {B} = V _ {t} ^ {C} / S _ {t} ^ {B}
$$

# Likelihood Ratio Identity

Let  $V_{t}^{i}$  be the time-  $t$  share price of any contingent claim in numeraire  $i = A, B, C$ . These share prices satisfy:

$$
V _ {t} ^ {A} = V _ {t} ^ {C} / S _ {t} ^ {A}
$$

$$
V _ {t} ^ {B} = V _ {t} ^ {C} / S _ {t} ^ {B}
$$

The time-zero share price is the discounted expected value of the time-  $t$  share price for each of the numeraires  $A, B$ . The discount factors are 1, so

# Likelihood Ratio Identity

Let  $V_{t}^{i}$  be the time-  $t$  share price of any contingent claim in numeraire  $i = A, B, C$ . These share prices satisfy:

$$
V _ {t} ^ {A} = V _ {t} ^ {C} / S _ {t} ^ {A}
$$

$$
V _ {t} ^ {B} = V _ {t} ^ {C} / S _ {t} ^ {B}
$$

The time-zero share price is the discounted expected value of the time-  $t$  share price for each of the numeraires  $A, B$ . The discount factors are 1, so

$$
V _ {0} ^ {A} = V _ {0} ^ {C} / S _ {0} ^ {A} = E ^ {A} V _ {t} ^ {C} / S _ {t} ^ {A}
$$

$$
V _ {0} ^ {B} = V _ {0} ^ {C} / S _ {0} ^ {B} = E ^ {B} V _ {t} ^ {C} / S _ {t} ^ {B}
$$

# Likelihood Ratio Identity

It follows that for every contingent claim  $V$  with share price  $V_{t}^{C}$  (in numeraire  $C$ ),

$$
S _ {0} ^ {A} E ^ {A} (V _ {t} ^ {C} / S _ {t} ^ {A}) = S _ {0} ^ {B} E ^ {B} (V _ {t} ^ {C} / S _ {t} ^ {B})
$$

# Likelihood Ratio Identity

It follows that for every contingent claim  $V$  with share price  $V_{t}^{C}$  (in numeraire  $C$ ),

$$
S _ {0} ^ {A} E ^ {A} (V _ {t} ^ {C} / S _ {t} ^ {A}) = S _ {0} ^ {B} E ^ {B} (V _ {t} ^ {C} / S _ {t} ^ {B})
$$

Apply this to the contingent claim with payoff  $V_{T}^{C} S_{T}^{B}$  at time  $T$  to obtain the following identity, valid for all nonnegative random variables  $V_{T}^{C}$  measurable  $\mathcal{F}_{T}$ :

$$
E ^ {B} V _ {T} ^ {C} = E ^ {A} V _ {T} ^ {C} \left(\frac {S _ {T} ^ {B} S _ {0} ^ {A}}{S _ {T} ^ {A} S _ {0} ^ {B}}\right)
$$

# Likelihood Ratio Identity

It follows that for every contingent claim  $V$  with share price  $V_{t}^{C}$  (in numeraire  $C$ ),

$$
S _ {0} ^ {A} E ^ {A} (V _ {t} ^ {C} / S _ {t} ^ {A}) = S _ {0} ^ {B} E ^ {B} (V _ {t} ^ {C} / S _ {t} ^ {B})
$$

Apply this to the contingent claim with payoff  $V_{T}^{C} S_{T}^{B}$  at time  $T$  to obtain the following identity, valid for all nonnegative random variables  $V_{T}^{C}$  measurable  $\mathcal{F}_{T}$ :

$$
E ^ {B} V _ {T} ^ {C} = E ^ {A} V _ {T} ^ {C} \left(\frac {S _ {T} ^ {B} S _ {0} ^ {A}}{S _ {T} ^ {A} S _ {0} ^ {B}}\right)
$$

This is the defining property of a likelihood ratio.

# Exponential Martingales

Let  $W_{t}$  be a standard Wiener process, with Brownian filtration  $\mathcal{F}_t$ , and let  $\theta_t$  be a bounded, adapted process. Define

$$
Z _ {t} = \exp \left\{\int_ {0} ^ {t} \theta_ {s} d W _ {s} - \int_ {0} ^ {t} \theta_ {s} ^ {2} d s / 2 \right\}
$$

# Exponential Martingales

Let  $W_{t}$  be a standard Wiener process, with Brownian filtration  $\mathcal{F}_t$ , and let  $\theta_t$  be a bounded, adapted process. Define

$$
Z _ {t} = \exp \left\{\int_ {0} ^ {t} \theta_ {s} d W _ {s} - \int_ {0} ^ {t} \theta_ {s} ^ {2} d s / 2 \right\}
$$

Fact:  $Z_{t}$  is a positive martingale.

# Exponential Martingales

Let  $W_{t}$  be a standard Wiener process, with Brownian filtration  $\mathcal{F}_t$ , and let  $\theta_t$  be a bounded, adapted process. Define

$$
Z _ {t} = \exp \left\{\int_ {0} ^ {t} \theta_ {s} d W _ {s} - \int_ {0} ^ {t} \theta_ {s} ^ {2} d s / 2 \right\}
$$

Fact:  $Z_{t}$  is a positive martingale. Proof: Itô!

# Exponential Martingales

Let  $W_{t}$  be a standard Wiener process, with Brownian filtration  $\mathcal{F}_t$ , and let  $\theta_t$  be a bounded, adapted process. Define

$$
Z _ {t} = \exp \left\{\int_ {0} ^ {t} \theta_ {s} d W _ {s} - \int_ {0} ^ {t} \theta_ {s} ^ {2} d s / 2 \right\}
$$

Fact:  $Z_{t}$  is a positive martingale. Proof: Itô!

$$
\begin{array}{l} d Z _ {t} = Z _ {t} \theta_ {t} d W _ {t} - Z _ {t} \theta_ {t} ^ {2} d t / 2 + Z _ {t} \theta_ {t} ^ {2} d t / 2 \\ = Z _ {t} \theta_ {t} d W _ {t} \quad \Longrightarrow \\ \end{array}
$$

$$
Z _ {t} = Z _ {0} + \int_ {0} ^ {t} Z _ {s} \theta_ {s} d W _ {s}
$$

# Girsanov's Theorem

Because  $Z_{t}$  is a positive martingale under  $P$  with initial value  $Z_{0} = 1$ , for every fixed time  $T$  the random variable  $Z_{T}$  is a likelihood ratio: that is,

$$
Q (F) := E _ {P} (I _ {F} Z _ {T})
$$

defines a new probability measure on the  $\sigma$ -algebra  $\mathcal{F}_T$  of events  $F$  that are observable by time  $T$ .

# Girsanov's Theorem

Because  $Z_{t}$  is a positive martingale under  $P$  with initial value  $Z_{0} = 1$ , for every fixed time  $T$  the random variable  $Z_{T}$  is a likelihood ratio: that is,

$$
Q (F) := E _ {P} (I _ {F} Z _ {T})
$$

defines a new probability measure on the  $\sigma$ -algebra  $\mathcal{F}_T$  of events  $F$  that are observable by time  $T$ .

Theorem: Under the measure  $Q$ , the process  $\{W_t - \int_0^t \theta_s ds\}_{0 \leq t \leq T}$  is a standard Wiener process.

Consider again the  $\$ 1$ and  $\mathcal {L}$  currencies. Assume that each has a riskless Money Market, and that the rates of return  $r _ {A}, r _ {B}$  are constant. Assume that the exchange rate  $Y _ {t}$  obeys

$$
d Y _ {t} = (r _ {B} - r _ {A}) Y _ {t} d t + \sigma Y _ {t} d W _ {t}
$$

where  $W_{t}$  is a standard Wiener process under the risk-neutral probability  $Q^{B}$  for  $\mathcal{L}$  investors. Thus,

$$
Y _ {t} = Y _ {0} \exp \{(r _ {B} - r _ {A} - \sigma^ {2} / 2) t + \sigma W _ {t} \}.
$$

# Exchange Rates

Since

$$
\begin{array}{l} \left(\frac {d Q ^ {A}}{d Q ^ {B}}\right) _ {\mathcal {F} _ {T}} = \left(\frac {Y _ {T}}{Y _ {0}}\right) \exp \{- (r _ {B} - r _ {A}) T \} \\ = \exp \{\sigma W _ {T} - \sigma^ {2} T / 2 \} \\ \end{array}
$$

Since

$$
\begin{array}{l} \left(\frac {d Q ^ {A}}{d Q ^ {B}}\right) _ {\mathcal {F} _ {T}} = \left(\frac {Y _ {T}}{Y _ {0}}\right) \exp \{- (r _ {B} - r _ {A}) T \} \\ = \exp \{\sigma W _ {T} - \sigma^ {2} T / 2 \} \\ \end{array}
$$

Girsanov implies that under  $Q^{A}$  the process  $W_{t}$  is a Wiener process with drift  $\sigma$ . Thus, to the  $\$ 1$ investor, it appears that the exchange rate obeys

$$
d Y _ {t} = (r _ {B} - r _ {A} - \sigma^ {2}) Y _ {t} d t + \sigma Y _ {t} d \tilde {W} _ {t}
$$

where  $\tilde{W}_t$  is a standard Wiener process under  $Q^A$ .

# Proof of Girsanov 1

The statement that  $X$  is a standard Wiener process is an assertion that the increments of  $X$  are independent Gaussian random variables with the correct variances. Let's show that under  $Q$ , the distribution of  $W_{T} - \Theta_{T}$  is gaussian with var  $T$  (where  $\Theta_{T} = \int_{0}^{T} \theta_{s} ds$ ).

# Proof of Girsanov 1

The statement that  $X$  is a standard Wiener process is an assertion that the increments of  $X$  are independent Gaussian random variables with the correct variances. Let's show that under  $Q$ , the distribution of  $W_{T} - \Theta_{T}$  is gaussian with var  $T$  (where  $\Theta_T = \int_0^T\theta_sds$ ). For this, it suffices to show that for any real  $\lambda$ ,

$$
E _ {Q} \exp \{\lambda (W _ {T} - \Theta_ {T}) \} = \exp \{\lambda^ {2} T / 2 \}
$$

# Proof of Girsanov 1

The statement that  $X$  is a standard Wiener process is an assertion that the increments of  $X$  are independent Gaussian random variables with the correct variances. Let's show that under  $Q$ , the distribution of  $W_{T} - \Theta_{T}$  is gaussian with var  $T$  (where  $\Theta_{T} = \int_{0}^{T} \theta_{s} ds$ ). For this, it suffices to show that for any real  $\lambda$ ,

$$
E _ {Q} \exp \{\lambda (W _ {T} - \Theta_ {T}) \} = \exp \{\lambda^ {2} T / 2 \}
$$

To evaluate the expectation, change measure:

$$
E _ {Q} \exp \{\lambda (W _ {T} - \Theta_ {T}) \} = E _ {P} \exp \{\lambda (W _ {T} - \Theta_ {T}) \} Z _ {T}
$$

# Proof of Girsanov 2

Objective: Show that  $E_{P}H_{T} = 1$ , where

$$
H _ {t} = \exp \{\lambda (W _ {t} - \Theta_ {t}) - \lambda^ {2} t / 2 \} Z _ {t}
$$

# Proof of Girsanov 2

Objective: Show that  $E_{P}H_{T} = 1$ , where

$$
\begin{array}{l} H _ {t} = \exp \{\lambda (W _ {t} - \Theta_ {t}) - \lambda^ {2} t / 2 \} Z _ {t} \\ = \exp \{\int_ {0} ^ {t} (\theta_ {s} + \lambda) d W _ {s} + \int_ {0} ^ {t} (\lambda \theta_ {s} - \theta_ {s} ^ {2} / 2 - \lambda^ {2} / 2) d s \} \\ \end{array}
$$

# Proof of Girsanov 2

Objective: Show that  $E_{P}H_{T} = 1$ , where

$$
\begin{array}{l} H _ {t} = \exp \{\lambda (W _ {t} - \Theta_ {t}) - \lambda^ {2} t / 2 \} Z _ {t} \\ = \exp \{\int_ {0} ^ {t} (\theta_ {s} + \lambda) d W _ {s} + \int_ {0} ^ {t} (\lambda \theta_ {s} - \theta_ {s} ^ {2} / 2 - \lambda^ {2} / 2) d s \} \\ = \exp \{\int_ {0} ^ {t} (\theta_ {s} + \lambda) d W _ {s} - \int_ {0} ^ {t} (\theta_ {s} + \lambda) ^ {2} d s / 2 \} \\ \end{array}
$$

# Proof of Girsanov 2

Objective: Show that  $E_{P}H_{T} = 1$ , where

$$
\begin{array}{l} H _ {t} = \exp \{\lambda (W _ {t} - \Theta_ {t}) - \lambda^ {2} t / 2 \} Z _ {t} \\ = \exp \{\int_ {0} ^ {t} (\theta_ {s} + \lambda) d W _ {s} + \int_ {0} ^ {t} (\lambda \theta_ {s} - \theta_ {s} ^ {2} / 2 - \lambda^ {2} / 2) d s \} \\ = \exp \{\int_ {0} ^ {t} (\theta_ {s} + \lambda) d W _ {s} - \int_ {0} ^ {t} (\theta_ {s} + \lambda) ^ {2} d s / 2 \} \\ \end{array}
$$

Thus,  $H_{t}$  is an exponential martingale under  $P$ , and so its expectation is constant over time.

# Proof of Girsanov 2

Objective: Show that  $E_{P}H_{T} = 1$ , where

$$
\begin{array}{l} H _ {t} = \exp \{\lambda (W _ {t} - \Theta_ {t}) - \lambda^ {2} t / 2 \} Z _ {t} \\ = \exp \{\int_ {0} ^ {t} (\theta_ {s} + \lambda) d W _ {s} + \int_ {0} ^ {t} (\lambda \theta_ {s} - \theta_ {s} ^ {2} / 2 - \lambda^ {2} / 2) d s \} \\ = \exp \{\int_ {0} ^ {t} (\theta_ {s} + \lambda) d W _ {s} - \int_ {0} ^ {t} (\theta_ {s} + \lambda) ^ {2} d s / 2 \} \\ \end{array}
$$

Thus,  $H_{t}$  is an exponential martingale under  $P$ , and so its expectation is constant over time. A similar calculation establishes the independence of the increments.

# Scratch

# Scratch

# Scratch

# Scratch

# Scratch

# Scratch