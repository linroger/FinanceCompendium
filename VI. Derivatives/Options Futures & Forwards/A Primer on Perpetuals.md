---
title: "A Primer on Perpetuals"
aliases:
  - Perpetuals
  - Perpetual Contracts
parent_directory: Options Futures & Forwards
cssclasses: academia
---

# A primer on perpetuals

Guillermo Angeris*

Tarun Chitra†

Alex Evans†

Matthew Lorig $^{8}$

This version: September 9, 2022

# Abstract

We consider a continuous-time financial market with no arbitrage and no transactions costs. In this setting, we introduce two types of perpetual contracts, one in which the payoff to the long side is a fixed function of the underlyers and the long side pays a funding rate to the short side, the other in which the payoff to the long side is a fixed function of the underlyers times a discount factor that changes over time but no funding payments are required. Assuming asset prices are continuous and strictly positive, we derive model-free expressions for the funding rate and discount rate of these perpetual contracts as well as replication strategies for the short side. When asset prices can jump, we derive expressions for the funding and discount rates, which are semi-robust in the sense that they do not depend on the dynamics of the volatility process of the underlying risky assets, but do depend on the intensity of jumps under the market's pricing measure. When asset prices can jump and the volatility process is independent of the underlying risky assets, we derive an explicit replication strategy for the short side of a perpetual contract. Throughout the paper, we illustrate through examples how specific perpetual contracts relate to traditional financial instruments such as variance swaps and leveraged exchange traded funds.

# 1 Introduction

A perpetual contract (often just perp, for short) is a type of financial contract that enables relatively general payoffs. At a high level, a perp contract can be described as follows: two parties, which we will call the long side and the short side, enter into an agreement. The short side agrees to pay the long side some payoff, which is a function of the prices of the underlying assets, at a time of the long side's choosing. In exchange for this, the long side pays a continual cash-flow to the short side up until contract termination. This cash flow can be implemented in two distinct ways. First, it can be implemented directly as a literal cash flow, where the long side pays the short side cash at fixed time increments. Second, a sometimes more practical approach is instead to replace the cash flow by discounting the payoff at contract termination.

Perps were first suggested in Shiller (1993) as a way of approximately measuring the prices of dividend-yielding assets and also as a tool to hedge certain illiquid assets. But, only the special case where the payoff

function was linear in the price of the underlying assets was considered. Perps with linear payoffs later gained widespread popularity as a way of taking leveraged bets on cryptocurrency markets, where common derivatives markets were initially relatively illiquid, if available at all. As of 2022, perps are some of the most actively-traded cryptocurrency derivatives, with daily volume in the tens of billions of dollars (see, e.g., CoinGecko (2022)).

While perpetual futures never gained traction outside of cryptocurrencies, they were introduced as a convenient way for miners (who produce newly minted tokens or coins) to hedge inherent risks in cryptocurrency production. The two main risks that miners of currencies such as Bitcoin and Ethereum face are that their future income (which can be viewed as a dividend-yielding stream) is randomized with variance depending on their resource contribution to the network (Lewenberg et al. (2015)). To reduce this variance, miners used two tactics: mining pools (e.g. pooling together resources and distributing dividends pro-rata) and futures contracts. Initially, miner perpetual futures contracts were over-the-counter quanto futures, where miners took premiums in cash with strike prices struck denominated in Bitcoin. The failure of the early quanto derivatives market led to the creation of stablecoins (dollar-pegged demand deposit assets) which then naturally led to the creation of the crypto perpetuals market in 2016 (Alexander et al. (2020)).

Recently, perps with payoffs that are proportional to some power of the price of an asset have been proposed (c.f., lllvvuu (2021); White et al. (2021)). This extension led to the creation of a decentralized perps protocol on the Ethereum blockchain called Squeeth (short for "Squared ETH"), see Opyn (2021). This protocol allows users to take long (and short) positions on these power perps without requiring an intermediary such as a broker or exchange.

The role of this paper is to clearly define perps, show a number of natural generalizations to those known in the literature, and correct some of the misinformation that exists online as to how the rate of cash-flow should be computed in a no-arbitrage setting. The rest of the paper proceeds as follows: in Section 2 we introduce a financial market in which risky assets have continuous price paths. Next, in Section 3, we define a perpetual contract in which the long side must pay a funding rate to the short side. We derive a model-free expression for the funding rate as well as a replication strategy for the short side. In Section 4 we define a second type of perpetual contract in which no funding payments are required but the payoff is discounted over time. We derive a model-free expression for the discount rate as well as a replication strategy for the short side. Lastly, in Section 5, we consider a market with a single risky asset whose value may jump. In this setting, we derive expressions for the funding and discount rates of the two types of perpetual contracts introduced in Sections 3 and 4. And, under the assumption of an independent volatility process, we derive a replication strategy for the short side of a perpetual contract.

# 2 Market model and assumptions

In Sections 2, 3, and 4, we consider a continuous-time financial market, defined on a filtered probability space  $(\Omega, \mathcal{F}, \mathbb{I}, \mathbb{P})$ , with no arbitrage and no transaction costs. The filtration  $\mathbb{I} = (\mathcal{F}_t)_{t \geq 0}$  represents the history of the market and  $\mathbb{P}$  represents the real-world probability measure. We suppose that the market

contains a risk-free money market account, whose value in dollars is denoted by  $\mathbf{M} = (\mathbf{M}_t)_{t\geq 0}$ , as well as  $n\in \mathbb{N}$  risky assets (typically, tokens or cryptocurrencies), whose values in dollars are denoted by  $\mathbf{S} = (\mathbf{S}_t^{(1)},\mathbf{S}_t^{(2)},\dots ,\mathbf{S}_t^{(n)})_{t\geq 0}$ .

We assume the value of the money market account  $\mathbf{M}$  is continuous, strictly positive and non-decreasing. As such, there exists a non-negative IF-measurable process  $r = (r_t)_{t \geq 0}$ , known as the risk-free rate, such that

$$
\mathrm {d M} _ {t} = r _ {t} \mathrm {M} _ {t} \mathrm {d} t, \quad \mathrm {M} _ {0} \geq 0.
$$

We further assume that the prices of the risky assets are continuous and strictly positive. As such, there exists an  $\mathbb{R}^n$ -valued IF-measurable drift vector  $\mu = (\mu_t^{(1)},\mu_t^{(2)},\dots,\mu_t^{(n)})$  and an  $\mathbb{R}_+^{n\times d}$ -valued IF-measurable volatility matrix  $\sigma = (\sigma_t^{(1,1)},\sigma_t^{(1,2)},\dots,\sigma_t^{(n,d)})$  with  $d\in \mathbb{N}$ , such that, for every  $i$ , the value  $S^{(i)}$  of the  $i$ th risky asset is given by

$$
\mathrm {d S} _ {t} ^ {(i)} = \mu_ {t} ^ {(i)} \mathrm {S} _ {t} ^ {(i)} \mathrm {d} t + \sum_ {j = 1} ^ {d} \sigma_ {t} ^ {(i, j)} \mathrm {S} _ {t} ^ {(i)} \mathrm {d W} _ {t} ^ {(j)}, \quad \mathrm {S} _ {0} ^ {(i)} \geq 0,
$$

where  $\mathrm{W} = (\mathrm{W}_t^{(1)},\mathrm{W}_t^{(2)},\dots ,\mathrm{W}_t^{(d)})$  is a  $d$ -dimensional (IF, IP)-Brownian motion with independent components. Lastly, throughout this paper, in order to avoid unnecessary complications, we assume all local martingales are true martingales.

# 3 Perpetual contracts with funding

We will discuss two types of perpetual contracts in this paper: (i) perpetual contracts with funding and (ii) perpetual contrast with discounting. In this section, we focus on the former. We begin with a definition.

DEFINITION 1. A perpetual contract with funding (or simply, a perp) written on S with payoff function  $\varphi : \mathbb{R}^n \to \mathbb{R}$  is a agreement between two parties, referred to as the long side and short side. The long side has the right to terminate the contract at any time  $t \geq 0$ , at which point it will receive a payment of  $\varphi(\mathrm{S}_t)$ . In return, the long-side must pay to the short side  $\varphi(\mathrm{S}_0)$  at the time  $t = 0$  of inception as well as a continuous IF-adapted cash-flow of  $\mathrm{F} = (\mathrm{F}_t)_{t \geq 0}$  per unit time, referred to as the funding rate, up until the contract is terminated.

The following theorem gives an expression for the funding rate.

THEOREM 2. Consider a perpetual contract as described in Definition 1. Suppose that the function  $\varphi \in \mathbb{C}^2 (\mathbb{R}^d,\mathbb{R})$ . Under the assumptions of Section 2, the funding rate  $\mathbf{F}$  is given by

$$
\mathrm {F} _ {t} = \frac {1}{2} \sum_ {i = 1} ^ {n} \sum_ {j = 1} ^ {n} \left(\sigma_ {t} \sigma_ {t} ^ {\top}\right) ^ {(i, j)} \mathrm {S} _ {t} ^ {(i)} \mathrm {S} _ {t} ^ {(j)} \partial_ {i} \partial_ {j} \varphi (\mathrm {S} _ {t}) - \left(\varphi (\mathrm {S} _ {t}) - \sum_ {i = 1} ^ {n} \mathrm {S} _ {t} ^ {(i)} \partial_ {i} \varphi (\mathrm {S} _ {t})\right) r _ {t}. \tag {1}
$$

where  $(\sigma_t\sigma_t^\top)^{(i,j)}$  denotes the of  $(i,j)$ -th component of  $\sigma_t\sigma_t^\top$  and  $\partial_j \coloneqq \frac{\partial}{\partial s_j}$ .

Proof. We will show that, with  $\mathbf{F}_t$  given by (1), the short side can create a self-financing portfolio whose value  $\mathrm{X} = (\mathrm{X}_t)_{t\geq 0}$  satisfies

$$
\mathrm {X} _ {t} = \varphi (\mathrm {S} _ {t}), \tag {2}
$$

for all  $t \geq 0$ . To begin, we note that the value of the short side's portfolio must be of the form

$$
\begin{array}{l} \mathrm {d} \mathrm {X} _ {t} = \sum_ {i = 1} ^ {n} \Delta_ {t} ^ {(i)} \mathrm {d S} _ {t} ^ {i} + \left(\mathrm {X} _ {t} - \sum_ {i = 1} ^ {n} \Delta_ {t} ^ {(i)} \mathrm {S} _ {t} ^ {(i)}\right) \frac {1}{\mathrm {M} _ {t}} \mathrm {d M} _ {t} + \mathrm {F} _ {t} \mathrm {d} t \\ = \sum_ {i = 1} ^ {n} \Delta_ {t} ^ {(i)} \mathrm {d S} _ {t} ^ {i} + \left(\mathrm {X} _ {t} - \sum_ {i = 1} ^ {n} \Delta_ {t} ^ {(i)} \mathrm {S} _ {t} ^ {(i)}\right) r _ {t} \mathrm {d} t + \mathrm {F} _ {t} \mathrm {d} t, \tag {3} \\ \end{array}
$$

where  $\Delta_t^{(i)}$  denotes the number of shares of invested in asset  $i$  at time  $t$ . Next, we have by Ito's Lemma that

$$
\begin{array}{l} \mathrm {d} \varphi (\mathbb {S} _ {t}) = \sum_ {i = 1} ^ {n} \partial_ {i} \varphi (\mathbb {S} _ {t}) \mathrm {d} \mathbb {S} _ {t} ^ {(i)} + \frac {1}{2} \sum_ {i = 1} ^ {n} \sum_ {j = 1} ^ {n} \partial_ {i} \partial_ {j} \varphi (\mathbb {S} _ {t}) \mathrm {d} \langle \mathbb {S} ^ {(i)}, \mathbb {S} ^ {(i)} \rangle_ {t} \\ = \sum_ {i = 1} ^ {n} \partial_ {i} \varphi \left(\mathrm {S} _ {t}\right) \mathrm {d} \mathrm {S} _ {t} ^ {(i)} + \frac {1}{2} \sum_ {i = 1} ^ {n} \sum_ {j = 1} ^ {n} \left(\sigma_ {t} \sigma_ {t} ^ {\top}\right) ^ {(i, j)} \mathrm {S} _ {t} ^ {(i)} \mathrm {S} _ {t} ^ {(j)} \partial_ {i} \partial_ {j} \varphi \left(\mathrm {S} _ {t}\right) \mathrm {d} t. \tag {4} \\ \end{array}
$$

Now, note that (2) holds for all  $t \geq 0$  if and only if  $\mathrm{X}_0 = \varphi(\mathrm{S}_0)$  and  $\mathrm{dX}_t = \mathrm{d}\varphi(\mathrm{S}_t)$ . Comparing (3) with (4), we see that the  $\mathrm{dS}_t^{(i)}$  terms will be equal if we set

$$
\Delta_ {t} ^ {(i)} = \partial_ {i} \varphi (\mathrm {S} _ {t}).
$$

Next, using  $\mathrm{X}_t = \varphi(\mathrm{S}_t)$  and  $\Delta_t^{(i)} = \partial_i \varphi(\mathrm{S}_t)$ , we see that the dt terms in (3) and (4) will be equal if  $\mathrm{F}_t$  is given by (1).

REMARK 3. Note that the funding rate can be positive or negative. If at time  $t$  the funding rate is negative, then short side pays the long side at a rate of  $-\mathbf{F}_t$ .

REMARK 4. Observe that precise knowledge of  $r, \mu$  and  $\sigma$  is not needed to determine the funding rate  $\mathbf{F}_t$ . Indeed, using

$$
r _ {t} = \frac {\mathrm {d}}{\mathrm {d} t} \log \mathsf {M} _ {t}, \qquad \qquad (\sigma_ {t} \sigma_ {t} ^ {\top}) ^ {(i, j)} = \frac {\mathrm {d}}{\mathrm {d} t} \langle \log \mathsf {S} ^ {(i)}, \log \mathsf {S} ^ {(j)} \rangle_ {t},
$$

we can express  $\mathbf{F}$  in the following model-free form

$$
\mathrm {F} _ {t} \mathrm {d} t = \frac {1}{2} \sum_ {i = 1} ^ {n} \sum_ {j = 1} ^ {n} \mathrm {S} ^ {(i)} \mathrm {S} ^ {(j)} \partial_ {i} \partial_ {j} \varphi (\mathrm {S} _ {t}) \mathrm {d} \left\langle \log \mathrm {S} ^ {(i)}, \log \mathrm {S} ^ {(j)} \right\rangle_ {t} - \left(\varphi (\mathrm {S} _ {t}) - \sum_ {i = 1} ^ {n} \mathrm {S} _ {t} ^ {(i)} \partial_ {i} \varphi (\mathrm {S} _ {t})\right) \mathrm {d} \log \mathrm {M} _ {t}. \tag {5}
$$

By contrast, in order to price and replicate most traditional financial derivatives such as European, American, Bermudan and Barrier options, one requires a parametric model for the underlying S as well as knowledge of unobservable model parameters.

EXAMPLE 5. A (continuously monitored) variance swap (VS), written on an asset  $S \equiv S^{(1)}$  is an agreement between two parties, referred to as the long and short sides. At the maturity date  $T$ , the short side pays the long side

$$
\int_ {0} ^ {\mathrm {T}} \mathrm {d} \langle \log \mathrm {S} \rangle_ {t} - \mathrm {K},
$$

where the swap rate  $K$  is determined at inception  $t = 0$  so that the initial cost to enter the swap is zero. Under the assumptions of Section 2, the swap rate  $K$  is given by  $-2\widetilde{\mathbb{E}}\log (\mathrm{S_T} / \mathrm{S_0})$ , where  $\widetilde{\mathbb{E}}$  denotes expectation under the market's chosen pricing measure  $\widetilde{\mathbb{P}}$ , which can be deduced by observing implied volatilities of T-maturity European calls and puts (see, e.g., Carr and Madan (2001)). Because implied volatilities tend to be higher than realized volatility (this is sometimes known as the volatility premium) taking the long side of a VS is typically a losing trade. As an alternative to entering the long side of a VS, an investor wishing to gain exposure to volatility could take a long position in a perp as described in Definition 1 with payoff  $\varphi (\mathrm{S}_t) = 2\log (\mathrm{S}_t / \mathrm{S}_0)$ . Like a VS, there is no cost to entering this perp because  $\varphi (\mathrm{S}_0) = 2\log (\mathrm{S}_0 / \mathrm{S}_0) = 0$ . Moreover, assuming  $r \equiv 0$  for simplicity, we have from (5) that the funding rate is

$$
\mathrm {F} _ {t} \mathrm {d} t = - \mathrm {d} \langle \log \mathrm {S} \rangle_ {t}.
$$

Therefore, if the long side chooses to terminate the contract at time  $T$ , the value of the payoff minus funding paid is

$$
\varphi (\mathrm {S} _ {\mathrm {T}}) - \int_ {0} ^ {\mathrm {T}} \mathrm {F} _ {t} \mathrm {d} t = 2 \log \left(\frac {\mathrm {S} _ {\mathrm {T}}}{\mathrm {S} _ {0}}\right) + \int_ {0} ^ {\mathrm {T}} \mathrm {d} \langle \log \mathrm {S} \rangle_ {t}.
$$

Thus, by taking a long position in a perp, the investor can achieve the same exposure to volatility that they would have had they taken the long side of a VS, without paying a volatility premium.

# 4 Perpetual contracts with discounting

One of the problems with a perp with funding is that execution of the contract requires the long side to place a deposit (e.g., on an exchange or into a smart contract) at inception in order to pay the funding rate. If the time-integral of the funding rate ever exceeds the deposit, the contract is automatically terminated. One way to avoid automatic termination of the contract is to consider, instead, a perpetual contract with discounting, whose mechanics are described in the following definition.

DEFINITION 6. An perpetual contract with discounting (or simply, a perp) written on S with payoff function  $\varphi : \mathbb{R}^n \to \mathbb{R}$  is a agreement between two parties, referred to as the long side and short side. The long side has the right to terminate the contract at any time  $t \geq 0$ , at which point it will receive a payment of  $\mathrm{e}^{-\int_0^t \mathrm{D}_s \mathrm{d}s} \varphi(\mathrm{S}_t)$ , where  $\mathrm{D} = (\mathrm{D}_t)_{t \geq 0}$  is an IF-adapted process known as the discount rate. In return, at the time of inception  $t = 0$ , the long side must pay to the short side a premium  $\varphi(\mathrm{S}_0)$ .

The following theorem gives an expression for the discount rate.

THEOREM 7. Consider a perpetual contract with discounting as described in Definition 6. Suppose that the function  $\varphi \in \mathbb{C}^2 (\mathbb{R}^d,\mathbb{R})$  and is either strictly positive or strictly negative. Then, under the assumptions of Section 2, the discount rate D is given by

$$
\mathrm {D} _ {t} = \frac {\mathrm {F} _ {t}}{\varphi (\mathrm {S} _ {t})}, \tag {6}
$$

where  $\mathbf{F}_t$  is given by (1).

Proof. We will show that, with  $\mathrm{D}_t$  given by (6), the short side can create a self-financing portfolio whose value  $\mathrm{X} = (\mathrm{X}_t)_{t\geq 0}$  satisfies

$$
\mathrm {X} _ {t} = \exp \left(- \int_ {0} ^ {t} \mathrm {D} _ {s} \mathrm {d} s\right) \varphi (\mathrm {S} _ {t}), \tag {7}
$$

for all  $t \geq 0$ . To begin, we note that the dynamics of the short side's portfolio  $X$  must be of the form

$$
\begin{array}{l} \mathrm {d X} _ {t} = \sum_ {i = 1} ^ {n} \Delta_ {t} ^ {(i)} \mathrm {d S} _ {t} ^ {i} + \left(\mathrm {X} _ {t} - \sum_ {i = 1} ^ {n} \Delta_ {t} ^ {(i)} \mathrm {S} _ {t} ^ {(i)}\right) \frac {1}{\mathrm {M} _ {t}} \mathrm {d M} _ {t} \\ = \sum_ {i = 1} ^ {n} \Delta_ {t} ^ {(i)} \mathrm {d S} _ {t} ^ {i} + \left(\mathrm {X} _ {t} - \sum_ {i = 1} ^ {n} \Delta_ {t} ^ {(i)} \mathrm {S} _ {t} ^ {(i)}\right) r _ {t} \mathrm {d} t, \tag {8} \\ \end{array}
$$

where  $\Delta_t^{(i)}$  denotes the number of shares of invested in asset  $i$  at time  $t$ . Next, we have by Ito's Lemma that

$$
\begin{array}{l} \mathrm {d} \left(\mathrm {e} ^ {- \int_ {0} ^ {t} \mathrm {D} _ {s} \mathrm {d} s} \varphi (\mathrm {S} _ {t})\right) \\ = \mathrm {e} ^ {- \int_ {0} ^ {t} \mathrm {D} _ {s} \mathrm {d} s} \Big (\sum_ {i = 1} ^ {n} \partial_ {i} \varphi (\mathrm {S} _ {t}) \mathrm {d} \mathrm {S} _ {t} ^ {(i)} + \frac {1}{2} \sum_ {i = 1} ^ {n} \sum_ {j = 1} ^ {n} \partial_ {i} \partial_ {j} \varphi (\mathrm {S} _ {t}) \mathrm {d} \langle \mathrm {S} ^ {(i)}, \mathrm {S} ^ {(i)} \rangle_ {t} \Big) - \mathrm {D} _ {t} \mathrm {e} ^ {- \int_ {0} ^ {t} \mathrm {D} _ {s} \mathrm {d} s} \varphi (\mathrm {S} _ {t}) \mathrm {d} t \\ = \mathrm {e} ^ {- \int_ {0} ^ {t} \mathrm {D} _ {s} \mathrm {d} s} \Big (\sum_ {i = 1} ^ {n} \partial_ {i} \varphi (\mathrm {S} _ {t}) \mathrm {d} \mathrm {S} _ {t} ^ {(i)} + \frac {1}{2} \sum_ {i = 1} ^ {n} \sum_ {j = 1} ^ {n} (\sigma_ {t} \sigma_ {t} ^ {\top}) ^ {(i, j)} \mathrm {S} _ {t} ^ {(i)} \mathrm {S} _ {t} ^ {(j)} \partial_ {i} \partial_ {j} \varphi (\mathrm {S} _ {t}) \mathrm {d} t \Big) - \mathrm {D} _ {t} \mathrm {e} ^ {- \int_ {0} ^ {t} \mathrm {D} _ {s} \mathrm {d} s} \varphi (\mathrm {S} _ {t}) \mathrm {d} t. (9) \\ \end{array}
$$

Now, note that (7) will hold for all  $t \geq 0$  if and only if  $\mathrm{X}_0 = \varphi(\mathrm{S}_0)$  and  $\mathrm{dX}_t = \mathrm{d}\left(\mathrm{e}^{-\int_0^t \mathrm{D}_s \mathrm{d}s} \varphi(\mathrm{S}_t)\right)$ . Comparing (8) with (9), we see that the  $\mathrm{dS}_t^{(i)}$  terms will be equal if we set

$$
\Delta_ {t} ^ {(i)} = \mathrm {e} ^ {- \int_ {0} ^ {t} \mathrm {D} _ {s} \mathrm {d} s} \partial_ {i} \varphi (\mathrm {S} _ {t}).
$$

Next, using  $X_{t} = \exp (-\int_{0}^{t}\mathrm{D}_{s}\mathrm{d}s)\varphi (\mathrm{S}_{t})$  and  $\Delta_t^{(i)} = \exp (-\int_0^t\mathrm{D}_s\mathrm{d}s)\partial_i\varphi (\mathrm{S}_t)$ , we see that the dt terms in (8) and (9) will be equal if  $D_{t}$  is given by (6).

EXAMPLE 8. Let  $\mathrm{L} = (\mathrm{L}_t)_{t \geq 0}$  be the value of a leveraged exchange traded fund (LETF) with underlayer  $\mathrm{S} \equiv \mathrm{S}^{(1)}$  and leverage ratio  $\gamma$ . The manager of such an LETF seeks to multiply the returns of S by a factor of  $\gamma$  by holding  $\gamma \mathrm{L}_t / \mathrm{S}_t$  shares of the underlayer for all  $t \geq 0$  and borrowing from the bank to finance the position (see, e.g., Leung and Santoli (2016)). Thus, the dynamics of L are as follows

$$
\mathrm {d L} _ {t} = \Delta_ {t} \mathrm {d S} _ {t} + (\mathrm {X} _ {t} - \Delta_ {t} \mathrm {S} _ {t}) \frac {1}{\mathrm {M} _ {t}} \mathrm {d M} _ {t}, \quad \Delta_ {t} = \gamma \mathrm {L} _ {t} / \mathrm {S} _ {t}.
$$

Solving for  $\mathrm{L}_t$  one obtains the following expression

$$
\mathrm {L} _ {t} = \mathrm {L} _ {0} \Big (\frac {\mathrm {S} _ {t}}{\mathrm {S} _ {0}} \Big) ^ {\gamma} \Big (\frac {\mathrm {M} _ {t}}{\mathrm {M} _ {0}} \Big) ^ {(1 - \gamma)} \exp \Big (\frac {\gamma (1 - \gamma)}{2} \langle \log \mathrm {S} \rangle_ {t} \Big).
$$

Now, consider a perp as described in Definition 6 with payoff  $\varphi (\mathrm{S}_t) = \mathrm{L}_0(\mathrm{S}_t / \mathrm{S}_0)^{\Upsilon}$ . We have from (5) and (6) that

$$
\mathrm {D} _ {t} \mathrm {d} t = \frac {\gamma (\gamma - 1)}{2} \mathrm {d} \langle \log \mathrm {S} \rangle_ {t} - (1 - \gamma) \mathrm {d} \log \mathrm {M} _ {t}.
$$

If the long side terminates the perp at time  $t$  it will receive

$$
\begin{array}{l} \varphi (\mathrm {S} _ {t}) \mathrm {e} ^ {- \int_ {0} ^ {t} \mathrm {D} _ {s} \mathrm {d} s} = \mathrm {L} _ {0} \left(\frac {\mathrm {S} _ {t}}{\mathrm {S} _ {0}}\right) ^ {\Upsilon} \exp \left(- \frac {\gamma (\Upsilon - 1)}{2} \int_ {0} ^ {t} \mathrm {d} \langle \log \mathrm {S} \rangle_ {s} + (1 - \Upsilon) \int_ {0} ^ {t} \mathrm {d} \log \mathrm {M} _ {s}\right) \\ = \mathrm {L} _ {0} \Big (\frac {\mathrm {S} _ {t}}{\mathrm {S} _ {0}} \Big) ^ {\gamma} \Big (\frac {\mathrm {M} _ {t}}{\mathrm {M} _ {0}} \Big) ^ {(1 - \gamma)} \exp \Big (\frac {\gamma (1 - \gamma)}{2} \langle \log \mathrm {S} \rangle_ {t} \Big). \\ \end{array}
$$

Thus, an LETF written on S with leverage ratio  $\gamma$  can be viewed as a special case of a perp with payoff function  $\varphi(\mathbf{S}_t) = \mathrm{L}_0(\mathrm{S}_t / \mathrm{S}_0)^\gamma$ . Such perps trade widely on the Ethereum blockchain. Indeed, Squared ETH or Squeeth, which trades on the Decentralized Finance (DeFi) protocol Opyn, is simply a perp with payoff function  $\varphi(\mathbf{S}_t) = \mathbf{S}_t^2$ , where  $\mathbf{S}_t$  is the value on dollars of Ethereum.

EXAMPLE 9. If, at time  $t = 0$ , one deposits two tokens into a geometric mean constant function market maker (CFMM), then, ignoring fees collected by the CFMM, the value  $V = (V_{t})_{t\geq 0}$  of this deposit at time  $t\geq 0$  is

$$
\begin{array}{l} \mathrm {V} _ {t} = \left(\frac {p \mathrm {V} _ {0}}{\mathrm {S} _ {0} ^ {(1)}} \mathrm {S} _ {t} ^ {(1)} + \frac {q \mathrm {V} _ {0}}{\mathrm {S} _ {0} ^ {(2)}} \mathrm {S} _ {t} ^ {(2)}\right) \frac {(\mathrm {S} _ {t} ^ {(1)} / \mathrm {S} _ {0} ^ {(1)}) ^ {p} (\mathrm {S} _ {t} ^ {(2)} / \mathrm {S} _ {0} ^ {(2)}) ^ {q}}{p (\mathrm {S} _ {t} ^ {(1)} / \mathrm {S} _ {0} ^ {(1)}) + q (\mathrm {S} _ {t} ^ {(2)} / \mathrm {S} _ {0} ^ {(2)})} \\ = \mathrm {V} _ {0} \Big (\frac {\mathrm {S} _ {t} ^ {(1)}}{\mathrm {S} _ {0} ^ {(1)}} \Big) ^ {p} \Big (\frac {\mathrm {S} _ {t} ^ {(2)}}{\mathrm {S} _ {0} ^ {(2)}} \Big) ^ {q}, \\ \end{array}
$$

where  $p$  and  $q$  are constants satisfying  $p, q > 0$  and  $p + q = 1$  (c.f., Angeris and Chitra (2020); Evans (2020)).

Now, consider a perp as described in Definition 6 with payoff

$$
\varphi \left(\mathrm {S} _ {t}\right) = \mathrm {V} _ {0} \left(\frac {\mathrm {S} _ {t} ^ {(1)}}{\mathrm {S} _ {0} ^ {(1)}}\right) ^ {p} \left(\frac {\mathrm {S} _ {t} ^ {(2)}}{\mathrm {S} _ {0} ^ {(2)}}\right) ^ {q}. \tag {10}
$$

We have from (5) and (6) that

$$
\mathrm {D} _ {t} \mathrm {d} t = \frac {p (p - 1)}{2} \mathrm {d} \langle \log \mathrm {S} ^ {(1)} \rangle_ {t} + \frac {q (q - 1)}{2} \mathrm {d} \langle \log \mathrm {S} ^ {(2)} \rangle_ {t} + p q \mathrm {d} \langle \log \mathrm {S} ^ {(1)}, \log \mathrm {S} ^ {(2)} \rangle_ {t}.
$$

If the perp is terminated at time  $t$  the value of the payoff to the long side is

$$
\begin{array}{l} \varphi (\mathrm {S} _ {t}) \mathrm {e} ^ {- \int_ {0} ^ {t} \mathrm {D} _ {s} \mathrm {d} s} = \mathrm {V} _ {0} \Big (\frac {\mathrm {S} _ {t} ^ {(1)}}{\mathrm {S} _ {0} ^ {(1)}} \Big) ^ {p} \Big (\frac {\mathrm {S} _ {t} ^ {(2)}}{\mathrm {S} _ {0} ^ {(2)}} \Big) ^ {q} \\ \times \exp \left(\frac {p (1 - p)}{2} \langle \log {\bf S} ^ {(1)} \rangle_ {t} + \frac {q (1 - q)}{2} \langle \log {\bf S} ^ {(2)} \rangle_ {t} - p q \langle \log {\bf S} ^ {(1)}, \log {\bf S} ^ {(2)} \rangle_ {t}\right). \\ \end{array}
$$

One can show that the term in the exponent is positive along every path of  $(\mathbf{S}^{(1)},\mathbf{S}^{(2)})$ . Thus, ignoring fees, rather than deposit tokens into a CFMM it would always be better to take a long position in a payoff with payoff (10).

This follows from  $p(1 - p)\mathrm{d}x^2 + q(1 - q)\mathrm{d}y^2 - 2pq\mathrm{d}x\mathrm{d}y = pq\mathrm{d}x^2 + pq\mathrm{d}y^2 - 2pq\mathrm{d}x\mathrm{d}y = (p\mathrm{d}x - q\mathrm{d}y)^2 \geq 0$ .

# 5 Extension to models with jumps

In this section, we derive funding and discount rates for perpetual contracts as well as replication strategies for the short side when asset prices are allowed to jump. For simplicity, we will assume the risk-free rate of interest is zero ( $r_t = 0$ ) and we will consider perpetuals written on a single risky asset S. The extension to non-zero interest rates and multiple assets it straightforward, but tedious.

Fix a filtered probability space  $(\Omega, \mathcal{F}, \mathbb{I}, \widetilde{\mathbb{P}})$  where the filtration  $\mathbb{I}$  represents the history of the market and  $\widetilde{\mathbb{P}}$  denotes the market's chosen pricing measure. We suppose that the dynamics of the risky asset  $S$  are of the form

$$
\mathrm {d S} _ {t} = \sigma_ {t -} \mathrm {S} _ {t -} \mathrm {d} \widetilde {\mathrm {W}} _ {t} + \int \mathrm {S} _ {t -} \left(\mathrm {e} ^ {\gamma_ {t -} (z)} - 1\right) \widetilde {\mathrm {N}} (\mathrm {d} t, \mathrm {d} z), \tag {11}
$$

where  $\sigma = (\sigma_{t})_{t\geq 0}$  and  $\gamma (z) = (\gamma_{t}(z))_{t\geq 0}$  for every  $z\in \mathbb{R}$  are scalar IF-adapted processes,  $\widetilde{\mathsf{W}} = (\widetilde{\mathsf{W}}_t)_{t\geq 0}$  is a scalar  $(\widetilde{\mathbb{P}},\mathbb{F})$  -Brownian motion and  $\widetilde{\mathrm{N}} (\mathrm{dt},\mathrm{dz}) = \mathrm{N}(\mathrm{dt},\mathrm{dz}) - \nu (\mathrm{d}z)\mathrm{d}t$  is a compensated Poisson random measure on  $\mathbb{R}$ . Observe that S is a  $(\widetilde{\mathbb{P}},\mathbb{F})$  -martingale, as it must be in the absence of arbitrage. The following theorem gives the funding rate F and discount rate D for the perpetual contracts described in Definitions 1 and 6, respectively, when the dynamics of the underlying S are given by (11).

THEOREM 10. Suppose the dynamics of a single underlying risky asset are of the form (11) and the payoff function  $\varphi$  of a perpetual satisfies  $\varphi \in C^2 (\mathbb{R},\mathbb{R})$  and  $\varphi \neq 0$ . Then, the funding rate  $F$  of the perpetual contract described in Definition 1 is given by

$$
\mathrm {F} _ {t} = \frac {1}{2} \sigma_ {t} ^ {2} \mathrm {S} _ {t} ^ {2} \varphi^ {\prime \prime} (\mathrm {S} _ {t}) + \int \left(\varphi (\mathrm {S} _ {t} \mathrm {e} ^ {\gamma_ {t} (z)}) - \varphi (\mathrm {S} _ {t}) - \mathrm {S} _ {t} (\mathrm {e} ^ {\gamma_ {t} (z)} - 1) \varphi^ {\prime} (\mathrm {S} _ {t})\right) \nu (\mathrm {d} z). \tag {12}
$$

and the discount rate  $\mathrm{D}$  of a perpetual contract described in Definition 6 is given by  $\mathrm{D}_t = \mathrm{F}_t / \varphi(\mathrm{S}_t)$ .

Proof. Consider first a perpetual contract with funding, as described in Definition 1. The infinitesimal change in value of the long side is

$$
\mathrm {d} \varphi (\mathrm {S} _ {t}) - \mathrm {F} _ {t} \mathrm {d} t = \mathcal {A} _ {t} \varphi (\mathrm {S} _ {t}) \mathrm {d} t + \sigma_ {t} \mathrm {S} _ {t} \varphi^ {\prime} (\mathrm {S} _ {t}) \mathrm {d} \widetilde {\mathrm {W}} _ {t} + \int \left(\varphi \left(\mathrm {S} _ {t -} \mathrm {e} ^ {\gamma_ {t -} (z)}\right) - \varphi (\mathrm {S} _ {t -})\right) \widetilde {\mathrm {N}} (\mathrm {d} t, \mathrm {d} z) - \mathrm {F} _ {t} \mathrm {d} t, \tag {13}
$$

$$
\mathcal {A} _ {t} \varphi (\mathrm {S} _ {t}) := \frac {1}{2} \sigma_ {t} ^ {2} \mathrm {S} _ {t} ^ {2} \varphi^ {\prime \prime} (\mathrm {S} _ {t}) + \int \Bigl (\varphi (\mathrm {S} _ {t} \mathrm {e} ^ {\gamma_ {t} (z)}) - \varphi (\mathrm {S} _ {t}) - \mathrm {S} _ {t} (\mathrm {e} ^ {\gamma_ {t} (z)} - 1) \varphi^ {\prime} (\mathrm {S} _ {t}) \Bigr) \nu (\mathrm {d} z).
$$

In the absence of arbitrage, the value of the long-side must be a  $(\mathbb{P},\mathbb{F})$ -martingale. As such, the sum of the dt terms in (13) must be zero, which leads to the expression (12) for F. Next, consider a perpetual contract with discounting, as described in Definition 6. The infinitesimal change in value of the long side is given by

$$
\begin{array}{l} \mathrm {d} \left(\mathrm {e} ^ {- \int_ {0} ^ {t} \mathrm {D} _ {s} \mathrm {d} s} \varphi (\mathrm {S} _ {t})\right) = - \mathrm {D} _ {t} \mathrm {e} ^ {- \int_ {0} ^ {t} \mathrm {D} _ {s} \mathrm {d} s} \varphi (\mathrm {S} _ {t}) \mathrm {d} t + \mathrm {e} ^ {- \int_ {0} ^ {t} \mathrm {D} _ {s} \mathrm {d} s} \mathrm {d} \varphi (\mathrm {S} _ {t}) \\ = - D _ {t} \mathrm {e} ^ {- \int_ {0} ^ {t} D _ {s} \mathrm {d} s} \varphi (S _ {t}) \mathrm {d} t + \mathrm {e} ^ {- \int_ {0} ^ {t} D _ {s} \mathrm {d} s} \mathcal {A} _ {t} \varphi (S _ {t}) \mathrm {d} t + \mathrm {e} ^ {- \int_ {0} ^ {t} D _ {s} \mathrm {d} s} \sigma_ {t} S _ {t} \varphi^ {\prime \prime} (S _ {t}) \mathrm {d} \widetilde {W} _ {t} \\ + \mathrm {e} ^ {- \int_ {0} ^ {t} \mathrm {D} _ {s} \mathrm {d} s} \int \left(\varphi \left(\mathrm {S} _ {t -} \mathrm {e} ^ {\gamma_ {t -} (z)}\right) - \varphi \left(\mathrm {S} _ {t -}\right)\right) \tilde {\mathrm {N}} (\mathrm {d} t, \mathrm {d} z). \tag {14} \\ \end{array}
$$

Once again, in the absence of arbitrage, the value of the long side must be a  $(\mathbb{P},\mathbb{F})$ -martingale. As such, the sum of the dt terms in (14) must be zero, which leads to  $\mathrm{D}_t = \mathrm{F}_t / \varphi (\mathrm{S}_t)$ , where  $\mathbf{F}$  is given by (12).

REMARK 11. Note that, unlike the proofs of Theorems 2 and 7, which provide expressions for the funding rate  $\mathbf{F}$  and discount rate  $\mathrm{D}$  of the perpetual contracts described in Definitions 1 and 6 as well as replication strategies for the short-side, the proof of Theorem 10 provides only the funding and discount rates for perpetual contracts but says nothing about a replication strategy for the short-side. In order to derive a replication strategy for the short side when the underlying asset  $\mathrm{S}$  can jump, we will need to make some additional assumptions.

Henceforth, assume that the dynamics of the risky asset  $S$  are of the form

$$
\mathrm {d S} _ {t} = \sigma_ {t -} \mathrm {S} _ {t -} \mathrm {d} \widetilde {\mathrm {W}} _ {t} + \int \mathrm {S} _ {t -} \left(\mathrm {e} ^ {z} - 1\right) \widetilde {\mathrm {N}} (\mathrm {d} t, \mathrm {d} z), \tag {15}
$$

where the Lévy measure  $\nu$  associated with  $\tilde{\mathbf{N}}$  is a Dirac comb

$$
v (d z) = \sum_ {j = 1} ^ {n} \lambda_ {j} \delta_ {z _ {j}} (z) d z, \tag {16}
$$

and the volatility process  $\sigma$  evolves independently of the Brownian motion  $\widetilde{W}$  and the Poisson random measure  $\widetilde{N}$  that appear in (15)

$$
\sigma \perp \perp \widetilde {W}, \quad \sigma \perp \perp \widetilde {N}. \tag {17}
$$

Assume further that one can trade call and put options with any strike at a fixed maturity  $T$ . This is equivalent to assuming one can trade any  $T$ -maturity European option whose payoff can be written as the difference of convex functions, as these payoffs can be synthesized from call and put payoffs.

THEOREM 12. Suppose the dynamics of S satisfy (15), (16) and (17) and consider a perpetual contract as described in Definition 1. From Theorem 10 the funding rate F is given by

$$
\mathrm {F} _ {t} = \frac {1}{2} \sigma_ {t} ^ {2} \mathrm {S} _ {t} ^ {2} \varphi^ {\prime \prime} (\mathrm {S} _ {t}) + \int \left(\varphi \left(\mathrm {S} _ {t} \mathrm {e} ^ {z}\right) - \varphi (\mathrm {S} _ {t}) - \mathrm {S} _ {t} \left(\mathrm {e} ^ {z} - 1\right) \varphi^ {\prime} (\mathrm {S} _ {t})\right) v (\mathrm {d} z). \tag {18}
$$

Let  $\mathbb{P}^{(p)} = (\mathbb{P}_t^{(p)})_{0\leq t\leq \mathrm{T}}$  denote the value of a European power contract, which pays  $\mathrm{S_T^p}$  at time T where  $p\in \mathbb{R}$ . Fix  $(p_1,p_2,\ldots ,p_n)\in \mathbb{R}^n$  such that the  $(n + 1)\times (n + 1)$  stochastic matrix  $\mathrm{H} = (\mathrm{H}_t)_{0\leq t\leq \mathrm{T}}$  with entries given by

$$
\left. \begin{array}{l l} \mathrm {H} _ {t -} ^ {(j, i)} = \mathrm {e} ^ {\psi (\bar {p} _ {i}) (\mathrm {T} - t)} \mathrm {P} _ {t -} ^ {(p _ {i})} \mathrm {S} _ {t -} ^ {\bar {p} _ {i}} \left(\mathrm {e} ^ {p _ {i} z _ {j}} - 1\right) - \mathrm {e} ^ {\psi (p _ {i}) (\mathrm {T} - t)} \mathrm {P} _ {t -} ^ {(\bar {p} _ {i})} \mathrm {S} _ {t -} ^ {p _ {i}} \left(\mathrm {e} ^ {\bar {p} _ {i} z _ {j}} - 1\right), & j, i \leq n, \\ \text {上}, n + 1) = \mathrm {S} _ {t -} \left(\mathrm {e} ^ {z _ {j}} - 1\right), & j \leq n, \\ \text {上}, n + 1, i) = \sigma_ {t -} \left(p _ {i} \mathrm {e} ^ {\psi (\bar {p} _ {i}) (\mathrm {T} - t)} \mathrm {P} _ {t -} ^ {(p _ {i})} \mathrm {S} _ {t -} ^ {\bar {p} _ {i}} - \bar {p} _ {i} \mathrm {e} ^ {\psi (p _ {i}) (\mathrm {T} - t)} \mathrm {P} _ {t -} ^ {(\bar {p} _ {i})} \mathrm {S} _ {t -} ^ {p _ {i}}\right), & i \leq n, \\ \text {上}, n + 1) = \sigma_ {t -} \mathrm {S} _ {t -}. & \end{array} \right\} \tag {19}
$$

is invertible for all  $t \in [0, T]$ , where  $\bar{p}_i := 1 - p_i$  for all  $i$  and the function  $\psi$  is defined as follows

$$
\psi (p) = \int \left((\mathrm {e} ^ {p z} - 1) - p (\mathrm {e} ^ {z} - 1)\right) v (\mathrm {d} z).
$$

Let  $\mathrm{X} = (\mathrm{X}_t)_{0\leq t\leq T}$  be a the value of self-financing portfolio with dynamics of the form

$$
\mathrm {d} X _ {t} = \Delta_ {t -} \mathrm {d} S _ {t} + \sum_ {i = 1} ^ {n} \Gamma_ {t -} ^ {\left(p _ {i}\right)} \mathrm {d} Y _ {t} ^ {\left(p _ {i}\right)} + F _ {t -} \mathrm {d} t, \quad \mathrm {X} _ {0} = \varphi \left(\mathrm {S} _ {0}\right), \tag {20}
$$

$$
\mathrm {d Y} _ {t} ^ {(p _ {i})} = \mathrm {e} ^ {\psi (\bar {p} _ {i}) (\mathrm {T} - t)} \mathrm {S} _ {t -} ^ {\bar {p} _ {i}} \mathrm {d P} _ {t} ^ {(p _ {i})} - \mathrm {e} ^ {\psi (p _ {i}) (\mathrm {T} - t)} \mathrm {S} _ {t -} ^ {p _ {i}} \mathrm {d P} _ {t} ^ {(\bar {p} _ {i})}, \tag {21}
$$

where  $\Delta$  and  $\Gamma^{(p_1)},\ldots ,\Gamma^{(p_n)}$  are given by

$$
\left[ \begin{array}{c} \Gamma_ {t -} ^ {(p _ {1})} \\ \vdots \\ \Gamma_ {t -} ^ {(p _ {n})} \\ \Delta_ {t -} \end{array} \right] = \mathrm {H} _ {t -} ^ {- 1} \left[ \begin{array}{c} \varphi (\mathrm {S} _ {t -} \mathrm {e} ^ {p z _ {1}}) - \varphi (\mathrm {S} _ {t -}) \\ \vdots \\ \varphi (\mathrm {S} _ {t -} \mathrm {e} ^ {p z _ {n}}) - \varphi (\mathrm {S} _ {t -}) \\ \sigma_ {t -} \mathrm {S} _ {t -} \varphi^ {\prime} (\mathrm {S} _ {t -}) \end{array} \right]. \tag {22}
$$

Then the portfolio X replicates the perpetual payoff. That is, the following holds

$$
\mathrm {X} _ {t} = \varphi (\mathrm {S} _ {t}), \tag {23}
$$

for all  $0 \leq t \leq \mathrm{T}$ .

Proof. We begin by computing the dynamics of  $\varphi(S)$ . Using (15) and Ito's Lemma we have

$$
\begin{array}{l} \mathrm {d} \varphi (\mathrm {S} _ {t}) = \frac {1}{2} \sigma_ {t -} ^ {2} \mathrm {S} _ {t -} ^ {2} \varphi^ {\prime \prime} (\mathrm {S} _ {t -}) \mathrm {d} t + \sigma_ {t -} \mathrm {S} _ {t -} \varphi^ {\prime} (\mathrm {S} _ {t -}) \mathrm {d} \widetilde {\mathrm {W}} _ {t} \\ + \int \left(\varphi \left(\mathrm {S} _ {t -} \mathrm {e} ^ {z}\right) - \varphi \left(\mathrm {S} _ {t -}\right) - \mathrm {S} _ {t -} \left(\mathrm {e} ^ {z} - 1\right) \varphi^ {\prime} \left(\mathrm {S} _ {t -}\right)\right) v (\mathrm {d} s) \mathrm {d} t \\ + \int \left(\varphi \left(\mathrm {S} _ {t -} \mathrm {e} ^ {z}\right) - \varphi \left(\mathrm {S} _ {t -}\right)\right) \widetilde {\mathrm {N}} (\mathrm {d} t, \mathrm {d} z). \tag {24} \\ \end{array}
$$

Next, it will be helpful to introduce  $\mathsf{Z} = \log \mathsf{S}$ . We will separate  $\mathsf{Z}$  into a continuous component  $\mathsf{Z}^c$  and a jump component  $\mathsf{Z}^j$ . Using Itô's Lemma, we have

$$
\mathrm {d} Z _ {t} = \mathrm {d} Z _ {t} ^ {c} + \mathrm {d} Z _ {t} ^ {j}, \qquad \mathrm {d} Z _ {t} ^ {c} = - \frac {1}{2} \sigma_ {t -} ^ {2} \mathrm {d} t + \sigma_ {- t} \mathrm {d} \widetilde {\mathbf {W}} _ {t}, \qquad \mathrm {d} Z _ {t} ^ {j} = - \int (\mathrm {e} ^ {z} - 1 - z) \nu (\mathrm {d} z) \mathrm {d} t + \int z \widetilde {\mathbf {N}} (\mathrm {d} t, \mathrm {d} z).
$$

Note that  $\mathbf{Z}_{\mathrm{T}}^{c} - \mathbf{Z}_{t}^{c}$  is normally distributed conditional on the path of  $\sigma$  and that  $\mathbf{Z}^j$  is a Lévy process with characteristic exponent  $\psi(\mathbf{i} \cdot)$ . Thus, conditioning on the path of  $\sigma$  and using the Lévy-Kintchine formula, we have

$$
\widetilde {\mathbb {E}} _ {t} \mathrm {e} ^ {p \left(\mathrm {Z} _ {\mathrm {T}} ^ {c} - \mathrm {Z} _ {t} ^ {c}\right)} = \widetilde {\mathbb {E}} _ {t} \mathrm {e} ^ {\frac {1}{2} \left(p ^ {2} - p\right) \left(\langle \mathrm {Z} ^ {c} \rangle_ {\mathrm {T}} - \langle \mathrm {Z} ^ {c} \rangle_ {t}\right)}, \quad \langle \mathrm {Z} ^ {c} \rangle_ {\mathrm {T}} - \langle \mathrm {Z} ^ {c} \rangle_ {t} = \int_ {t} ^ {\mathrm {T}} \sigma_ {s} ^ {2} \mathrm {d} s, \quad \widetilde {\mathbb {E}} _ {t} \mathrm {e} ^ {p \left(\mathrm {Z} _ {\mathrm {T}} ^ {j} - \mathrm {Z} _ {t} ^ {j}\right)} = \mathrm {e} ^ {\left(\mathrm {T} - t\right) \psi (p)}, \tag {25}
$$

where we have introduced the short-hand notation  $\widetilde{\mathbb{E}}_t\cdot \coloneqq \widetilde{\mathbb{E}} (\cdot |\mathcal{F}_t)$ . Now, using (25) as well as  $Z^c\perp \mathbb{Z}^j$ , we find that the value of a European power option satisfies

$$
\mathrm {P} _ {t} ^ {(p)} = \mathbb {\widetilde {E}} _ {t} \mathrm {S} _ {\mathrm {T}} ^ {p} = \mathrm {e} ^ {p \mathrm {Z} _ {t}} \mathbb {\widetilde {E}} _ {t} \mathrm {e} ^ {p (\mathrm {Z} _ {\mathrm {T}} ^ {c} - \mathrm {Z} _ {t} ^ {c})} \mathbb {\widetilde {E}} _ {t} \mathrm {e} ^ {p (\mathrm {Z} _ {\mathrm {T}} ^ {j} - \mathrm {Z} _ {t} ^ {j})} = \mathrm {S} _ {t} ^ {p} \mathrm {e} ^ {\psi (p) (\mathrm {T} - t)} \mathbb {\widetilde {E}} _ {t} \mathrm {e} ^ {\frac {1}{2} (p ^ {2} - p) (\langle \mathrm {Z} ^ {c} \rangle_ {\mathrm {T}} - \langle \mathrm {Z} ^ {c} \rangle_ {t})}.
$$

Next, observe that

$$
\mathrm {d} \widetilde {\mathrm {I}} \widetilde {\mathrm {E}} _ {t} e ^ {\frac {1}{2} (p ^ {2} - p) \big (\langle Z ^ {c} \rangle_ {\mathrm {T}} - \langle Z ^ {c} \rangle_ {t} \big)} = (\ldots) \mathrm {d} t + \mathrm {d} \widetilde {\mathrm {M}} _ {t} ^ {(p)},
$$

where  $\widetilde{\mathbf{M}}^{(p)}$  is a  $(\widetilde{\mathbb{P}},\mathbb{F})$ -martingale, which is independent of  $\widetilde{\mathbf{W}}$  and  $\widetilde{\mathbf{N}}$ . Thus, using the fact that  $\mathbf{P}^{(p)}$  is a  $(\widetilde{\mathbb{P}},\mathbb{F})$ -martingale, and thus  $\mathrm{d}\mathbb{P}_t^{(p)}$  has no dt terms, we have

$$
\begin{array}{l} \mathrm {d P} _ {t} ^ {(p)} = \mathrm {e} ^ {\psi (p) (\mathrm {T} - t)} \widetilde {\mathbb {E}} _ {t -} \mathrm {e} ^ {\frac {1}{2} (p ^ {2} - p) (\langle \mathrm {Z} ^ {c} \rangle_ {\mathrm {T}} - \langle \mathrm {Z} ^ {c} \rangle_ {t})} \mathrm {d S} _ {t} ^ {p} + \mathrm {S} _ {t -} ^ {p} \mathrm {e} ^ {\psi (p) (\mathrm {T} - t)} \mathrm {d} \widetilde {\mathbb {E}} _ {t} \mathrm {e} ^ {\frac {1}{2} (p ^ {2} - p) (\langle \mathrm {Z} ^ {c} \rangle_ {\mathrm {T}} - \langle \mathrm {Z} ^ {c} \rangle_ {t})} \\ + \mathrm {S} _ {t -} ^ {p} \widetilde {\mathbb {E}} _ {t} \mathrm {e} ^ {\frac {1}{2} (p ^ {2} - p) (\langle \mathrm {Z} ^ {c} \rangle_ {\mathrm {T}} - \langle \mathrm {Z} ^ {c} \rangle_ {t})} \mathrm {d e} ^ {\psi (p) (\mathrm {T} - t)} \\ = \mathrm {e} ^ {\psi (p) (\mathrm {T} - t)} \widetilde {\mathrm {E}} _ {t -} \mathrm {e} ^ {\frac {1}{2} (p ^ {2} - p) (\langle Z ^ {c} \rangle_ {\mathrm {T}} - \langle Z ^ {c} \rangle_ {t})} \left(p \sigma_ {t -} \mathrm {S} _ {t -} ^ {p} \mathrm {d} \widetilde {\mathrm {W}} _ {t} + \int \mathrm {S} _ {t -} ^ {p} (\mathrm {e} ^ {p z} - 1) \widetilde {\mathrm {N}} (\mathrm {d} t, \mathrm {d} z)\right) \\ + \mathrm {S} _ {t -} ^ {p} \mathrm {e} ^ {\psi (p) (\mathrm {T} - t)} \mathrm {d} \widetilde {\mathrm {M}} ^ {(p)} \\ = p \sigma_ {t -} \mathrm {P} _ {t -} ^ {(p)} \mathrm {d} \widetilde {\mathrm {W}} _ {t} + \int \mathrm {P} _ {t -} ^ {(p)} \left(\mathrm {e} ^ {p z} - 1\right) \widetilde {\mathrm {N}} (\mathrm {d} t, \mathrm {d} z) + \mathrm {e} ^ {\psi (p) (\mathrm {T} - t)} \mathrm {S} _ {t -} ^ {p} \mathrm {d} \widetilde {\mathrm {M}} _ {t} ^ {(p)}. \tag {26} \\ \end{array}
$$

Now, defining  $\bar{p} := 1 - p$  and noting that  $p^2 - p = \bar{p}^2 - \bar{p}$ , we have  $\widetilde{\mathbb{M}}^{(p)} = \widetilde{\mathbb{M}}^{(\bar{p})}$ . Therefore, we have from (26) that

$$
\mathrm {d} \mathrm {P} _ {t} ^ {(\bar {p})} = \bar {p} \sigma_ {t -} \mathrm {P} _ {t -} ^ {(\bar {p})} \mathrm {d} \widetilde {\mathrm {W}} _ {t} + \int \mathrm {P} _ {t -} ^ {(\bar {p})} \left(\mathrm {e} ^ {\bar {p} z} - 1\right) \widetilde {\mathrm {N}} (\mathrm {d} t, \mathrm {d} z) + \mathrm {e} ^ {\psi (\bar {p}) (\mathrm {T} - t)} \mathrm {S} _ {t -} ^ {\bar {p}} \mathrm {d} \widetilde {\mathrm {M}} _ {t} ^ {(p)}. \tag {27}
$$

Thus, using (26) and (27), the process  $Y^{(p)}$ , defined in (21), is a self-financing portfolio that satisfies

$$
\begin{array}{l} \mathrm {d} Y _ {t} ^ {(p)} = \mathrm {e} ^ {\psi (\bar {p}) (\mathrm {T} - t)} \mathrm {S} _ {t -} ^ {\bar {p}} \left(p \sigma_ {t -} \mathrm {P} _ {t -} ^ {(p)} \mathrm {d} \widetilde {\mathrm {W}} _ {t} + \int \mathrm {P} _ {t -} ^ {(p)} \left(\mathrm {e} ^ {p z} - 1\right) \widetilde {\mathrm {N}} (\mathrm {d} t, \mathrm {d} z)\right) \\ - \mathrm {e} ^ {\psi (p) (\mathrm {T} - t)} \mathrm {S} _ {t -} ^ {p} \left(\bar {p} \sigma_ {t -} \mathrm {P} _ {t -} ^ {(\bar {p})} \mathrm {d} \widetilde {\mathrm {W}} _ {t} + \int \mathrm {P} _ {t -} ^ {(\bar {p})} \left(\mathrm {e} ^ {\bar {p} z} - 1\right) \widetilde {\mathrm {N}} (\mathrm {d} t, \mathrm {d} z)\right). \tag {28} \\ \end{array}
$$

Now, we wish to create a self-financing portfolio whose value  $X$  satisfies (23). As there are at least  $(n + 1)$  sources of uncertainty (due to the Brownian motion  $\widetilde{W}$  and the  $n$  possible jump sizes  $\Delta Z_t^j \in \{z_1, z_2, \ldots, z_n\}$ ) the portfolio will need at least  $(n + 1)$  hedging assets; we will use the underlying  $S$  as well as "shares" of  $Y^{(p_i)}$  for  $i \in \{1, 2, \ldots, n\}$ . Thus, the dynamics of  $X$  are of the form (20), where, for the moment, the processes  $\Delta$  and  $\Gamma^{(p_1)}, \ldots, \Gamma^{(p_n)}$  are unknown. Using (15), (20) and (28), we have

$$
\begin{array}{l} \mathrm {d} \mathrm {X} _ {t} = \Delta_ {t -} \sigma_ {t -} \mathrm {S} _ {t -} \mathrm {d} \widetilde {\mathrm {W}} _ {t} + \sum_ {i = 1} ^ {n} \Gamma_ {t -} ^ {(p _ {i})} \sigma_ {t -} \left(p _ {i} \mathrm {e} ^ {\psi (\bar {p} _ {i}) (\mathrm {T} - t)} \mathrm {P} _ {t -} ^ {(p _ {i})} \mathrm {S} _ {t -} ^ {\bar {p} _ {i}} - \bar {p} _ {i} \mathrm {e} ^ {\psi (p _ {i}) (\mathrm {T} - t)} \mathrm {P} _ {t -} ^ {(\bar {p} _ {i})} \mathrm {S} _ {t -} ^ {p _ {i}}\right) \mathrm {d} \widetilde {\mathrm {W}} _ {t} \\ + \int \Delta_ {t -} S _ {t -} \left(e ^ {z} - 1\right) \widetilde {N} (d t, d z) + \\ + \int_ {i = 1} ^ {n} \Gamma_ {t -} ^ {(p _ {i})} \left(\mathrm {e} ^ {\psi (\bar {p} _ {i}) (\mathrm {T} - t)} \mathrm {P} _ {t -} ^ {(p _ {i})} \mathrm {S} _ {t -} ^ {\bar {p} _ {i}} \left(\mathrm {e} ^ {p _ {i} z} - 1\right) - \mathrm {e} ^ {\psi (p _ {i}) (\mathrm {T} - t)} \mathrm {P} _ {t -} ^ {(\bar {p} _ {i})} \mathrm {S} _ {t -} ^ {p _ {i}} \left(\mathrm {e} ^ {\bar {p} _ {i} z} - 1\right)\right) \widetilde {\mathrm {N}} (\mathrm {d} t, \mathrm {d} z) + \mathrm {F} _ {t -} \mathrm {d} t. \tag {29} \\ \end{array}
$$

Equation (23) will be satisfied if and only if the  $\mathrm{dt}$ ,  $\mathrm{d}\widetilde{\mathsf{W}}_t$  and  $\widetilde{\mathsf{N}}(\mathrm{dt},\mathrm{dz})$  terms in (24) and (29) are equal. As such, the funding rate  $\mathbf{F}$  must be given by (18) and the processes  $\Delta$  and  $\Gamma^{(p_1)},\ldots,\Gamma^{(p_n)}$  must satisfy

$$
\sigma_ {t -} \mathrm {S} _ {t -} \varphi^ {\prime} (\mathrm {S} _ {t -}) = \Delta_ {t -} \sigma_ {t -} \mathrm {S} _ {t -} + \sum_ {i = 1} ^ {n} \Gamma_ {t -} ^ {(p _ {i})} \sigma_ {t -} \Big (p _ {i} \mathrm {e} ^ {\psi (\bar {p} _ {i}) (\mathrm {T} - t)} \mathrm {P} _ {t -} ^ {(p _ {i})} \mathrm {S} _ {t -} ^ {\bar {p} _ {i}} - \bar {p} _ {i} \mathrm {e} ^ {\psi (p _ {i}) (\mathrm {T} - t)} \mathrm {P} _ {t -} ^ {(\bar {p} _ {i})} \mathrm {S} _ {t -} ^ {p _ {i}} \Big)
$$

$$
\begin{array}{l} \varphi \left(\mathrm {S} _ {t -} \mathrm {e} ^ {z _ {j}}\right) - \varphi \left(\mathrm {S} _ {t -}\right) = \Delta_ {t -} \mathrm {S} _ {t -} \left(\mathrm {e} ^ {z _ {j}} - 1\right) \\ + \sum_ {i = 1} ^ {n} \Gamma_ {t -} ^ {(p _ {i})} \left(\mathrm {e} ^ {\psi (\bar {p} _ {i}) (\mathrm {T} - t)} \mathrm {P} _ {t -} ^ {(p _ {i})} \mathrm {S} _ {t -} ^ {\bar {p} _ {i}} (\mathrm {e} ^ {p _ {i} z _ {j}} - 1) - \mathrm {e} ^ {\psi (p _ {i}) (\mathrm {T} - t)} \mathrm {P} _ {t -} ^ {(\bar {p} _ {i})} \mathrm {S} _ {t -} ^ {p _ {i}} (\mathrm {e} ^ {\bar {p} _ {i} z _ {j}} - 1)\right), \\ \end{array}
$$

where the last equation must hold for all  $z_{j} \in \{z_{1}, z_{2}, \ldots, z_{n}\}$ . In matrix form, we have

$$
\left[ \begin{array}{c} {\varphi (\mathbf {S} _ {t -} \mathbf {e} ^ {z _ {1}}) - \varphi (\mathbf {S} _ {t -})} \\ {\vdots} \\ {\varphi (\mathbf {S} _ {t -} \mathbf {e} ^ {z _ {n}}) - \varphi (\mathbf {S} _ {t -})} \\ {\sigma_ {t -} \mathbf {S} _ {t -} \varphi^ {\prime} (\mathbf {S} _ {t -})} \end{array} \right] = \mathrm {H} _ {t -} \left[ \begin{array}{c} {\Gamma_ {t -} ^ {(p _ {1})}} \\ {\vdots} \\ {\Gamma_ {t -} ^ {(p _ {n})}} \\ {\Delta_ {t -}} \end{array} \right],
$$

where the entries of  $\mathrm{H}$  are given by (19). Using the fact that  $\mathrm{H}$  is invertible, we find that (23) will hold if  $\Delta$  and  $\Gamma^{(p_1)}, \ldots, \Gamma^{(p_n)}$  are given by (22).

REMARK 13. The replication strategy described in Theorem 12 works only up until the maturity date  $T$  of the European power contracts. However, at time  $T$  one can continue the replication strategy by trading European power contracts with a maturity date  $\overline{T} > T$ .

REMARK 14. Note that  $\mathbf{S}_{t-}$ ,  $\mathbf{P}_{t-}^{(p_i)}$  for all  $i$  and  $\sigma_{t-} = \frac{\mathrm{d}}{\mathrm{d}t} \langle \mathbf{Z}^c \rangle_t$  are observable. Thus, no assumptions about the dynamics of the volatility process  $\sigma$  are needed for the replication strategy to work. We do, however, require knowledge of the possible jump-sizes  $\{z_1, z_2, \ldots, z_n\}$  and jump intensities under the pricing measure  $\{\lambda_1, \lambda_2, \ldots, \lambda_n\}$  as these appear in  $\nu$  and  $\psi$ .

# References

C. Alexander, J. Choi, H. Park, and S. Sohn. Bitmex bitcoin derivatives: Price discovery, informational efficiency, and hedging effectiveness. Journal of Futures Markets, 40(1):23-43, 2020.  
G. Angeris and T. Chitra. Improved price oracles: Constant function market makers. In Proceedings of the 2nd ACM Conference on Advances in Financial Technologies, AFT '20, page 80-91, New York, NY, USA, 2020. Association for Computing Machinery. ISBN 9781450381390.  
P. Carr and D. Madan. Towards a theory of volatility trading. Option Pricing, Interest Rates and Risk Management, Handbooks in Mathematical Finance, 22(7):458-476, 2001.

CoinGecko. Cryptocurrency derivatives (perpetual contract) by volume, 2022. URL https://urldefense.com/v3/__https://www.coingecko.com/en/derivatives_;!!CX2e5RWqcItE!rVO_khNmJf1jE4zB1F_vuwG9KMLnrJEidUwhOVKjoHPVPIepeeTSTr77jfMJLJHBFVwMpYnF2DMgaKF4aw4\$.  
A. Evans. Liquidity provider returns in geometric mean markets. arXiv preprint arXiv:2006.08806, 2020.  
T. Leung and M. Santoli. Leveraged Exchange-Traded Funds: Price Dynamics and Options Valuation. Springer International Publishing, 2016.  
Y. Lewenberg, Y. Bachrach, Y. Sompolinsky, A. Zohar, and J. S. Rosenschein. Bitcoin mining pools: A cooperative game theoretic analysis. In Proceedings of the 2015 international conference on autonomous agents and multiagent systems, pages 919-927. Citeseer, 2015.

lllvvuu. Raw moment derivatives, 2021. URL https://urldefense.com/v3/_https://lllvvuu.dev/blog/raw-moments_;!!CX2e5RWqcItE!rVO_khNmJf1jE4zB1F_vuwG9KMLnrJEidUwh0VKjoHPVPIepeeTSTr77jfMJLJHBFVwMpYnF2DMgIlDFowY$.  
Opyn. Squeeth, 2021. URL https://urldefense.com/v3/__https://squeeth.opyn.co/_;! CX2e5RWqcItE!rV0_khNmJf1jE4zB1F_vuwG9KMLnrJEidUwhOVKjoHPVPIepeeTSTr77jfMJLJHBFVwMpYnF2DMgHZCTfxE$.  
R. J. Shiller. Measuring asset values for cash settlement in derivative markets: Hedonic repeated measures indices and perpetual futures. The Journal of Finance, 48(3):911-931, July 1993. ISSN 00221082. doi: 10.1111/j.1540-6261.1993.tb04024.x.  
D. White, D. Robinson, Z. Koticha, A. Leone, A. Gauba, and A. Krishnan. Power perpetuals, Aug. 2021. URL https://urldefense.com/v3/_https://www.paradigm.xyz/2021/08/power-perpetuals_;!!CX2e5RWqcItE!rV0_khNmJf1jE4zB1F_vuwG9KMLnrJEidUwh0VKjoHPVPIepeeTSTr77jfMJLJHBFVwMpYnF2DMglJFe8lI$.