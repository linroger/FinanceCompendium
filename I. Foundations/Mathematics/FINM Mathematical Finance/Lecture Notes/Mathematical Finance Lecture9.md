---
parent_directory: I. Foundations/Mathematics/FINM Mathematical Finance/Lecture Notes
title: 'Lecture 9: A Model for Foreign Exchange'
tags: null
aliases:
- A Model for Foreign Exchange
parent_folder: Lecture Notes
subfolder: null
key_concepts: null
cssclasses: academia
linter-yaml-title-alias: 'Lecture 9: A Model for Foreign Exchange'
primary_tags:
- bretton woods agreement
- exchange rate process
- dollar/pound sterling exchange rate
secondary_tags:
- .4 british pounds
- exchange contracts
- exchange contract
- simplest model
- 2.5 u. s. dollars
- forward exchange contract
tags_extracted: '2025-12-18T17:58:19.993174'
tags_method: max_quality_v1
---

# LECTURE 9: A MODEL FOR FOREIGN EXCHANGE

# 1. FOREIGN EXCHANGE CONTRACTS

There was a time, not so long ago, when a U. S. dollar would buy you precisely .4 British pounds sterling<sup>1</sup>, and a British pound sterling would buy 2.5 U. S. dollars, and you could count on this rate of exchange to persist. By an agreement made in 1944 at the Bretton Woods conference, exchange rates between the major currencies were fixed; if imbalances in supply and demand for different currencies threatened to upset exchange rates, central banks would step in, buying or selling currencies and/or precious metals to correct the supply/demand situation. The agreement lasted until about 1970, when stresses on some of the world's major economies (such as inflation in the U. S. brought on by the Vietnam war) made it impossible for central banks to maintain the exchange rates set by the Bretton Woods agreement. Since then, the central banks have allowed market forces to determine exchange rates between the dollar and the major European currencies.<sup>2</sup> The end result is that the value of the U. S. dollar vis a vis the pound sterling fluctuates in much the same way as does the share price of IBM or British petroleum.

There is, however, an important difference between the dollar/pound sterling exchange rate and the share price of IBM. Equity in IBM is a tradeable asset, but (from the vantage point of a dollar investor) a British pound is not a tradeable asset. This sounds crazy, at first, since you can obviously walk into a currency exchange and trade your dollars for British pounds (or your British pounds for dollars). But whereas you might keep stock certificates for 1000 shares of IBM in a safe deposit box for an extended period of time, you wouldn't do this with 1000 dollars or 1000 British pounds, because you could hold them just as securely in a riskless money market account which would pay interest on your deposit. Thus, the tradeable assets are not really dollars or pounds sterling, but rather "shares" in riskless money market accounts. This is crucially important, because the riskless rates of return on dollars, British pounds, Japanese yen, and other currencies are (usually) different.

Because there is uncertainty about future rates of exchange between different currencies, there is a market for derivative securities whose payoffs depend on exchange rates. In this lecture, we shall look at a simple example, a call option on an exchange of currencies. Investment banks and hedge funds also deal in more complex derivative securities, that may involve bonds and equities traded in different currencies, whose payoffs involve more than one source of uncertainty. In a later lecture, we shall develop techniques for pricing and hedging contracts in the presence of multiple sources of uncertainty.

# 2. A MODEL FOR EXCHANGE RATES

Assume that there are riskless assets US MONEYMARKET and UK MONEYMARKET in dollars and British pounds sterling, respectively, with riskless rates of return  $r_A$  and  $r_B$ . Because of uncertainty about future exchange rates, the asset UK MONEYMARKET does not appear riskless to the dollar investor, nor does the asset US MONEYMARKET appear riskless to the pound sterling

investor; the choice of numeraire (dollar or pound sterling) determines which asset is riskless. Let's take the point of view of the pound-sterling investor. Let  $Y_{t}$  be the rate of exchange at time  $t$  (that is,  $Y_{t}$  is the number of British pounds that one dollar will buy at time  $t$ ). In the simplest model<sup>3</sup>,  $Y_{t}$  behaves like a geometric Brownian motion, that is, it follows a stochastic differential equation of the form

$$
dY_{t} = \mu Y_{t}dt + \sigma Y_{t}dW_{t}, \tag{1}
$$

where  $W_{t}$  is a Wiener process. Let  $A_{t}$  and  $B_{t}$  denote the share prices of the assets US MONEY-MARKET and UK MONEY MARKET, reported in units of dollars and British pounds, respectively, and normalized so that the time-zero share prices are both 1. Then

$$
A_{t} = \exp\{r_{A}t\} \quad \text{and} \tag{2}
$$

$$
B_{t} = \exp\{r_{B}t\}. \tag{3}
$$

The share price of US MONEYMARKET at time  $t$  in pounds sterling is  $A_{t}Y_{t}$ . Solving the stochastic differential equation (1) gives the explicit formula

$$
A_{t}Y_{t} = Y_{0}\exp\{r_{A}t + \mu t - \sigma^{2}t/2 + \sigma W_{t}\}. \tag{4}
$$

Proposition 1. Let  $Q_B$  be a risk-neutral probability measure for the pound-sterling investor. If the dollar/pound sterling exchange rate obeys a stochastic differential equation of the form (1), and if the riskless rates of return for dollar investors and pound-sterling investors are  $r_A$  and  $r_B$ , respectively, then under  $Q_B$  it must be the case that

$$
\mu = r_{B} - r_{A}. \tag{5}
$$

Therefore, exchange rate  $Y_{t}$  is given by

$$
Y_{t} = Y_{0}\exp\{(r_{B} - r_{A})t - \sigma^{2}t/2 + \sigma W_{t}\}, \tag{6}
$$

where under the measure  $Q_B$  the process  $W_t$  is a standard Wiener process.

Proof. Under  $Q_B$ , the discounted share price of the asset US MONEYMARKET in pound sterling must be a martingale. But the discounted share price is  $\exp\{-r_B t\} A_t Y_t$ , which by equation (4) equals

$$
Y_{0}\exp\{(r_{A} - r_{B})t + \mu t\}\exp\{-\sigma^{2}t/2 + \sigma W_{t}\}.
$$

The second exponential is by itself a martingale (see Lecture 8), and the first exponential is nonrandom. Thus, in order that the product of the two exponentials be a martingale it must be that  $r_A - r_B + \mu = 0$ .

EXERCISE: Show that if  $M_t$  is a martingale and  $f(t)$  is a continuous, nonrandom function of  $t$ , then  $f(t)M_t$  is a martingale if and only if  $f(t)$  is constant or  $M_t$  is identically zero.

Proposition 1 is fairly straightforward, given the results from stochastic calculus that we have obtained earlier in the course. Nevertheless, there is something puzzling about it. What if we had taken the point of view of the dollar investor? Then the roles of  $r_A$  and  $r_B$  would be reversed, and the share price of UK MONEY MARKET in dollars at time  $t$  would be  $B_t / Y_t$ . Reasoning as above, we would be led to the following result:

Proposition 2. Let  $Q_A$  be a risk-neutral probability measure for the dollar investor. If the dollar/pound sterling exchange rate obeys a stochastic differential equation of the form (1), where  $W_t$  is a standard Brownian motion under  $Q_A$ , and if the riskless rates of return for dollar investors and pound-sterling investors are  $r_A$  and  $r_B$ , respectively, then under  $Q_A$  it must be the case that

$$
\mu = r_{B} - r_{A} + \sigma^{2}. \tag{7}
$$

Proof. Homework.

Thus, unless the riskless rates of return for dollar and pound-sterling investors are equal, they will necessarily disagree about the drift coefficient  $\mu$  in the stochastic differential equation (1)! Put this way, the situation seems somewhat paradoxical: one's stochastic model for an observable process, the exchange rate, must depend on the currency in which he or she trades. But this is the wrong way to put it. The risk-neutral probability measure is not (necessarily) an accurate model for the price processes of traded assets; rather, it is imposed by the market, and dependent on the numeraire. It is useful only insofar as it allows the computation of arbitrage prices of derivative securities.

# 3. THE LIKELIHOOD RATIO

The risk-neutral probability measures  $Q_{A}$  and  $Q_{B}$  for dollar and pound-sterling investors are both measures on the same space of market scenarios, specifically, the set of all possible paths  $\{Y_{t}\}_{0\leq t\leq T}$  of the exchange rate.

Proposition 3. The measures  $Q_{A}$  and  $Q_{B}$  are mutually absolutely continuous, that is, they are related by the likelihood ratio

$$
\left(\frac{dQ_{A}}{dQ_{B}}\right)_{\mathcal{F}_{T}} = \exp\{\sigma W_{T} - \sigma^{2}T/2\}. \tag{8}
$$

Proof. Consider a contingent claim whose value at time  $t$  in dollars is  $V_{t}$ . The price  $V_{0}$  of this claim at time  $t = 0$ , in dollars, is the discounted expected value of its price, in dollars, at time  $T$ , where the expectation is computed under  $Q_{A}$ , the risk-neutral measure for dollar investors:

$$
V_{0} = e^{-r_{A}T}E_{A}V_{T}. \tag{9}
$$

Let  $U_{t}$  be the time- $t$  price of the claim in pounds sterling. Then  $U_{t} = V_{t}Y_{t}$ , where  $Y_{t}$  is the rate of exchange between dollars and pounds sterling. Since the claim is a tradeable asset, its price in pounds sterling must be a martingale under  $Q_{B}$ , the risk-neutral measure for pound-sterling investors. In particular, the time-zero price must be the discounted expected value of the time- $T$  price:

$$
U_{0} = e^{-r_{B}T}E_{B}U_{T} \quad \Longrightarrow
$$

$$
V_{0}Y_{0} = e^{-r_{B}T}E_{B}(V_{T}Y_{T}) \quad \Longrightarrow
$$

$$
V_{0} = e^{-r_{A}T}E_{B}(V_{T}(Y_{T}/Y_{0})e^{(r_{A} - r_{B})T}). \tag{10}
$$

Comparing equations (9) and (10) shows that the expectation operators  $E_{A}$  and  $E_{B}$  are related as follows:

$$
E_{A}V_{T} = E_{B}(V_{T}(Y_{T}/Y_{0})e^{(r_{A} - r_{B})T}).
$$

Since this formula holds for any nonnegative,  $\mathcal{F}_T$ -measurable random variable  $V_T$ , it follows from equation (6) above that

$$
\left(\frac{dQ_{A}}{dQ_{B}}\right)_{\mathcal{F}_{T}} = (Y_{T}/Y_{0})e^{(r_{A} - r_{B})T} = \exp\{\sigma W_{T} - \sigma^{2}T/2\}.
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/14eaf832-35e9-45e0-b1ee-e2cd1bf0a97a/b84ccf2db0b9212ecfe7f3201c12dba3c05d4db585bcf0000680f2ab1c5a771d.jpg)

It is noteworthy that the likelihood ratio (8) is of the same type as occurs in the Cameron-Martin theorem (Lecture 8). Thus, under the risk-neutral measure  $Q_{A}$  for dollar investors, the process  $\{W_t\}_{0 \leq t \leq T}$  appearing in the stochastic differential equation (1) is not a standard Wiener process but rather a Wiener process with drift  $\sigma$ . Equivalently, if we define

(11)

then under  $Q_A$  the process  $\{\tilde{W}_t\}_{0 \leq t \leq T}$  is a standard Wiener process. Substituting this equation into formula (6) gives the following alternative form for the exchange rate process  $Y_t$ :

$$
Y_{t} = Y_{0}\exp\{(r_{B} - r_{A})t - \sigma^{2}t/2 + \sigma W_{t}\}
$$

(12)  $= Y_{0}\exp\{(r_{B} - r_{A})t + \sigma^{2}t/2 + \sigma \tilde{W}_{t}\}.$

It follows by Itô's formula that the exchange rate process obeys the stochastic differential equation

(13)  $dY_{t} = (r_{B} - r_{A} + \sigma^{2})Y_{t}dt + \sigma Y_{t}d\tilde{W}_{t}.$

Observe that this is a second proof of Proposition 2 (the first proof was a homework exercise).

# 4. OPTIONS ON FOREIGN EXCHANGE

Consider an option CALL that gives the owner the right (but no obligation) to exchange 1 dollar for  $K$  pounds sterling at time  $T$ . What is the time  $t = 0$  arbitrage price, in dollars, of this option? Let's take the viewpoint of a dollar investor. (In the homework you will be asked to do the entire problem again from the viewpoint of the pound-sterling investor, and to verify that this leads to the same arbitrage price.) The value in dollars of  $K$  pounds sterling at time  $T$  will be  $K / Y_{T}$ , and so the value  $V_{T}$  (in dollars) of the option at termination  $t = T$  will be  $V_{T} = (K / Y_{T} - 1)_{+}$ . Consequently, the value at time zero is

(14)  $V_{0} = e^{-r_{A}T}E_{A}(K / Y_{T} - 1)_{+}$

$$
= e^{-r_{A}T}E_{A}(KY_{0}\exp\{(r_{A} - r_{B} + \sigma^{2}/2)t - \sigma W_{t}\} - 1)_{+}.
$$

This last expectation is identical in form to the expectation that we encountered in pricing a European call option on a stock in the Black-Scholes theory, and thus may be evaluated explicitly in terms of the cumulative normal distribution function  $\Phi$ .

EXERCISE: Do this.

# 5. EXERCISES

Problem 1: Show that if  $M_t$  is a martingale and  $f(t)$  is a continuous, nonrandom function of  $t$ , then  $f(t)M_t$  is a martingale if and only if  $f(t)$  is constant or  $M_t$  is identically zero.

Problem 2: Prove Proposition 2.

Problem 3: Compute the arbitrage price at time  $t = 0$  of the call option discussed in section 4 by calculating the discounted risk-neutral expectation under the risk-neutral measure  $Q_{B}$  for

pound-sterling investors. Verify that the price agrees with that computed using the risk-neutral measure  $Q_{A}$  for dollar investors.

Problem 4: In a forward exchange contract, two parties  $A$  and  $B$  agree at time  $t = 0$  to an exchange of currency at a future date  $T$ . In particular,  $A$  agrees to pay 1 dollar at time  $T$  to  $B$  in exchange for  $K$  pounds sterling. What is the arbitrage forward price  $K$ ? Do the problem in two different ways: (i) using the information about the risk-neutral measure  $Q_A$  for dollar investors given in Proposition 1, and (ii) by a direct arbitrage argument.