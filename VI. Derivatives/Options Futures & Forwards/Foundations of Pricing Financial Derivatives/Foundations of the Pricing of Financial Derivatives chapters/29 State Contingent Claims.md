---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Option Prices and the Prices of State-Contingent Claims
linter-yaml-title-alias: Option Prices and the Prices of State-Contingent Claims
---

# Option Prices and the Prices of State-Contingent Claims

An option is sometimes referred to as a contingent claim. A contingent claim is a special type of asset that provides a payoff that is dependent (contingent) on something specific happening. An option is a contingent claim in that it provides a positive payoff under the condition that the option expires in-the-money. If the option does not expire in-the-money, the payoff is obviously zero. In this chapter, we look at another form of a contingent claim that happens to be an asset that pays 1.0 in a given outcome and zero otherwise. These outcomes are referred to as states or states of nature, and this particular asset is sometimes called a state-contingent claim. Other common names for this type of security are pure asset, the term we shall use, fundamental asset, and Arrow-Debreu asset, the last arising out of the work of Nobel Laureates Kenneth Arrow (1964) and Gerard Debreu (1964) and the extension to valuation by Myers (1968).<sup>1</sup> In this chapter, we examine some properties of pure assets and demonstrate how they relate to options in a framework called state preference theory and occasionally state pricing theory.

State pricing theory, which is also sometimes known as time state preference theory, provides a framework for the valuation of financial assets. It can be shown to provide a general equilibrium theory of asset pricing, consistent with a market in which assets are risky, and investors have homogeneous beliefs and aversion to risk. State preference theory was developed around the same time as the capital asset pricing model but has not received as much attention as the capital asset pricing model. This is probably because state preference theory is a more abstract theoretical framework, relying as it does on the existence of pure assets, whose prices cannot be observed in financial newspapers, from the Bloomberg, or on the internet. It is more appropriately viewed as what one would see if one took a microscopic look at the financial markets.

In order to understand this material, we shall have to tread carefully with the terminology. We shall make reference to assets that could be stocks, bonds, or commodities, and we shall call them complex assets, though there is nothing particularly complex about them. A share of Google stock is a complex asset, a barrel of oil is a complex asset, a bond issued by GE is a complex asset. They are complex assets in that they are made up of pure assets. In some ways, this idea is analogous to the fact that humans (and animals) are complex combinations of fundamental elements. In fact, you should think of this chapter as taking a microscopic look at a financial market and learning about the basic building blocks that enable markets to generate prices. It so happens that pure assets play a tremendous role in the functioning of a market. As such, we can gain a better appreciation for the value that options provide markets and society as a whole.

# 29.1 PURE ASSETS IN THE MARKET

Suppose we face a risky situation, which could be as basic as a commitment of capital to an investment in the stock market. Let us define the possible outcomes in terms of three states in which the market goes down  $2\%$  (state 1), the market is unchanged (state 2), or the market goes up  $2\%$  (state 3). Of course, in reality, the possible outcomes are infinite and cannot be reduced to such simple statements, but the framework provided by this simplification is, nonetheless, useful and generalizes to the case of a continuous spectrum of states.

Consider a complex asset that will be worth 110 in state 1, 100 in state 2, and 90 in state 3. Consider another complex asset that will be worth 105 in state 1, 101 in state 2, and 98 in state 3. Suppose the risk-free rate is  $2\%$ . Then a risk-free asset worth 100 today will have a value of 102 in each state.

Now consider a pure asset, which pays 1.0 in state 1 and zero in all other states. Another pure asset pays 1.0 in state 2 and zero in all other states. A third pure asset pays 1.0 in state 3 and zero in all other states. Our first complex asset, whose three possible future values are 110, 100, and 90, can be viewed as a portfolio of 110 units of the first pure asset, 100 units of the second pure asset, and 90 units of the third pure asset. Our second complex asset can be viewed as a portfolio of 105 units of the first pure asset, 101 units of the second pure asset, and 98 units of the third pure asset. A risk-free asset worth 100 today can be viewed as 102 units of all three pure assets. The price of a pure asset is called a state price. A particular pure asset pays off 1.0 if a particular state occurs and zero otherwise. The price of that pure asset, thus, is the amount of money you would need to pay to receive a fixed payoff in that state of the world.

It follows that the price of each complex asset must be the value today of the equivalent portfolio of pure assets. In other words, if we know the state prices, we can determine the prices of all complex assets. Alternatively, if we know the prices of the complex assets, we can determine the state prices. We shall see how this is done in this chapter.

These pure assets are the fundamental assets in the market. We cannot see them or trade them, but they are there, similar to financial atoms in the market. Let us now develop a formal framework for understanding these concepts.

# 29.2 PRICING PURE AND COMPLEX ASSETS

First, we state without proof the fact that there must always be at least as many assets as there are states. This principle is referred to as the spanning property, which means that the pure assets must be sufficient to reproduce any complex asset. Here we shall make the number of assets equal to the number of states. Specifically let there be  $n$  states, where each state is identified as state  $i$ ,  $i = 1,2,\ldots,n$ , and there are  $n$  complex assets, with each complex asset identified with the index  $j$ ,  $j = 1,2,\ldots,n$ . Each complex asset has price  $S_{j}$ . Let  $H_{ij}$  be the payoff of complex asset  $j$  in state  $i$ . A complex asset can be defined in terms of the number of units of each pure asset required to replicate the payoffs of the complex asset. We can alternatively define each pure asset in terms of the number of units of each complex asset required to replicate its outcomes. Define pure asset  $i$  as an asset that pays 1.0 in state  $i$  and zero in all other states. Then let  $\alpha_{ij}$  be the number of units of asset  $j$  that should be held to reproduce the payoff of pure asset  $i$ . Alternatively, we can view the payoff  $H_{ij}$  as the number of units of pure asset  $i$  that are implicit in complex asset  $j$ . Let us now

organize this information in a more meaningful way. We shall use both matrix and scalar notation, though the matrix notation is somewhat more useful in facilitating the solution of the simultaneous equations that will arise here.

As stated, a pure asset is a combination of complex assets. The payoffs of pure asset 1 in each of the possible states are as follows:

$$
\alpha_ {1 1} H _ {1 1} + \alpha_ {1 2} H _ {1 2} + \dots + \alpha_ {1 n} H _ {1 n} = 1 \text {(o u t c o m e i n s t a t e 1)}
$$

$$
\alpha_ {1 1} H _ {2 1} + \alpha_ {1 2} H _ {2 2} + \dots + \alpha_ {1 n} H _ {2 n} = 0 \text {(o u t c o m e i n s t a t e 2)}
$$

··

$$
\alpha_ {1 1} H _ {n 1} + \alpha_ {1 2} H _ {n 2} + \dots + \alpha_ {1 n} H _ {n n} = 0 (\text {o u t c o m e i n s t a t e} n).
$$

In other words, pure asset 1 is a combination of  $\alpha_{11}$  units of complex asset 1,  $\alpha_{12}$  units of complex asset 2, …, and  $\alpha_{1n}$  units of complex asset  $n$ .

Similarly the payoffs of pure asset 2 in each of the possible states are as follows:

$$
\alpha_ {2 1} H _ {1 1} + \alpha_ {2 2} H _ {1 2} + \dots + \alpha_ {2 n} H _ {1 n} = 0 \text {(o u t c o m e i n s t a t e 1)}
$$

$$
\alpha_ {2 1} H _ {2 1} + \alpha_ {2 2} H _ {2 2} + \dots + \alpha_ {2 n} H _ {2 n} = 1 \text {(o u t c o m e i n s t a t e 2)}
$$

.

$$
\alpha_ {2 1} H _ {n 1} + \alpha_ {2 2} H _ {n 2} + \dots + \alpha_ {2 n} H _ {n n} = 0 (\text {o u t c o m e i n s t a t e} n).
$$

Pure asset 2 is, thus, a combination of  $\alpha_{21}$  units of complex asset 1,  $\alpha_{22}$  units of complex asset 2, and  $\alpha_{2n}$  units of complex asset  $n$ .

The payoffs of pure asset  $n$  in each of the possible states are as follows:

$$
\alpha_ {n 1} H _ {1 1} + \alpha_ {n 2} H _ {1 2} + \dots + \alpha_ {n n} H _ {1 n} = 0 \text {(o u t c o m e i n s t a t e 1)}
$$

$$
\alpha_ {n 1} H _ {2 1} + \alpha_ {n 2} H _ {2 2} + \dots + \alpha_ {n n} H _ {2 n} = 0 \text {(o u t c o m e i n s t a t e 2)}
$$

.

$$
\alpha_ {n 1} H _ {n 1} + \alpha_ {n 2} H _ {n 2} + \dots + \alpha_ {n n} H _ {n n} = 1 (\text {o u t c o m e i n s t a t e} n).
$$

Pure asset  $n$  is, thus, a combination of  $\alpha_{n1}$  units of complex asset 1,  $\alpha_{n2}$  units of complex asset 2, and  $\alpha_{nn}$  units of complex asset  $n$ .

These conditions can be easily expressed in matrix notation as follows. The  $\mathbf{H}$  matrix represents the payoffs of each asset in each state:

$$
\mathbf {H} = \left| \begin{array}{c c c c} H _ {1 1} & H _ {1 2} & \dots & H _ {1 n} \\ H _ {2 1} & H _ {2 2} & \dots & H _ {2 n} \\ \cdot & \cdot & \dots & \cdot \\ \cdot & \cdot & \dots & \cdot \\ \cdot & \cdot & \dots & \cdot \\ H _ {n 1} & H _ {n 2} & \dots & H _ {n n} \end{array} \right|. \tag {29.1}
$$

The matrix of weights is

$$
\mathbf {A} = \left| \begin{array}{c c c c} \alpha_ {1 1} & \alpha_ {1 2} & \dots & \alpha_ {1 n} \\ \alpha_ {2 1} & \alpha_ {2 2} & \dots & \alpha_ {2 n} \\ \cdot & \cdot & \dots & \cdot \\ \cdot & \cdot & \dots & \cdot \\ \cdot & \cdot & \dots & \cdot \\ \alpha_ {n 1} & \alpha_ {n 2} & \dots & \alpha_ {n n} \end{array} \right|. \tag {29.2}
$$

As is often the case in matrix algebra, we shall need the identity matrix:

$$
\mathbf {I} = \left| \begin{array}{l l l l} 1 & 0 & \dots & 0 \\ 0 & 1 & \dots & 0 \\ \cdot & \cdot & \dots & \cdot \\ \cdot & \cdot & \dots & \cdot \\ \cdot & \cdot & \dots & \cdot \\ 0 & 0 & \dots & 1 \end{array} \right|. \tag {29.3}
$$

The key relationship is  $\mathbf{HA}' = \mathbf{I}$ . We can then solve for the weights using the expression<sup>2</sup>

$$
\mathbf {A} = (\mathbf {H} ^ {- 1} \mathbf {I}) ^ {\prime}. \tag {29.4}
$$

We can also obtain this result using scalar notation. Letting  $I_{ij}$  be the  $ij^{th}$  element of matrix  $\mathbf{I}$ , then

$$
I _ {i j} = \sum_ {k = 1} ^ {n} H _ {i k} \alpha_ {j k}. \tag {29.5}
$$

In other words, the rows and columns of matrix  $\mathbf{I}$  are

$$
\begin{array}{l} I _ {1 1} = H _ {1 1} \alpha_ {1 1} + H _ {1 2} \alpha_ {1 2} + \ldots + H _ {1 n} \alpha_ {1 n} = 1 \\ I _ {1 2} = H _ {1 1} \alpha_ {2 1} + H _ {1 2} \alpha_ {2 2} + \ldots + H _ {1 n} \alpha_ {2 n} = 0 \\ \end{array}
$$

$$
\begin{array}{l} I _ {1 n} = H _ {1 1} \alpha_ {n 1} + H _ {1 2} \alpha_ {n 2} + \ldots + H _ {1 n} \alpha_ {n n} = 0 \\ I _ {2 1} = H _ {2 1} \alpha_ {1 1} + H _ {2 2} \alpha_ {1 2} + \ldots + H _ {2 n} \alpha_ {1 n} = 0 \\ I _ {2 2} = H _ {2 1} \alpha_ {2 1} + H _ {2 2} \alpha_ {2 2} + \ldots + H _ {2 n} \alpha_ {2 n} = 1 \\ \end{array}
$$

$$
I _ {2 n} = H _ {2 1} \alpha_ {n 1} + H _ {2 2} \alpha_ {n 2} + \dots + H _ {2 n} \alpha_ {n n} = 0
$$

$$
I _ {n 1} = H _ {n 1} \alpha_ {1 1} + H _ {n 2} \alpha_ {1 2} + \dots + H _ {n n} \alpha_ {1 n} = 0
$$

$$
I _ {n 2} = H _ {n 1} \alpha_ {2 1} + H _ {n 2} \alpha_ {2 2} + \ldots + H _ {n n} \alpha_ {2 n} = 0
$$

$$
I _ {n n} = H _ {n 1} a _ {n 1} + H _ {n 2} a _ {n 2} + \dots + H _ {n n} a _ {n n} = 1. \tag {29.6}
$$

Now let us introduce a vector  $\Psi$ , where the element  $\psi_{i}$  is the price today of pure asset  $i$ :

$$
\Psi = \left| \begin{array}{l} \psi_ {1} \\ \psi_ {2} \\ \cdot \\ \cdot \\ \cdot \\ \psi_ {n} \end{array} \right|. \tag {29.7}
$$

The price of a complex asset can be obtained, in matrix notation, as

$$
\mathbf {S} = \mathbf {H} ^ {\prime} \boldsymbol {\Psi}. \tag {29.8}
$$

or in scalar notation as

$$
S = H ^ {\prime} \Psi . \tag {29.9}
$$

The equations written out are as follows:

$$
\begin{array}{l} S _ {1} = H _ {1 1} \psi_ {1} + H _ {2 1} \psi_ {2} + \ldots + H _ {n 1} \psi_ {n} \\ S _ {2} = H _ {1 2} \psi_ {1} + H _ {2 2} \psi_ {2} + \dots + H _ {n 2} \psi_ {n} \\ \end{array}
$$

$$
S _ {n} = H _ {1 n} \psi_ {1} + H _ {2 n} \psi_ {2} + \dots + H _ {n n} \psi_ {n}. \tag {29.10}
$$

Here we see how the complex assets are combinations of the pure assets. Alternatively, we can obtain the state prices from the prices of the complex asset. This would be found as

$$
\Psi = \left(\mathbf {H} ^ {\prime}\right) ^ {- 1} \mathbf {S}. \tag {29.11}
$$

Alternatively, one could solve for the  $\psi_{i}$  values in the scalar equations for  $S_{j}$  shown in Equation (29.10).

In other words, a complex asset  $j$  can be priced by multiplying its payoff in each state by the price of the pure asset that pays off in that given state. In this way, we see that the payoffs of complex assets, or what we ordinarily just call assets, can be expressed in terms of the payoffs of more fundamental assets, those whose payoffs are contingent on the given states.

The risk-free asset is extremely easy to see in this context. Its payoffs are the same in all states. Denoting the risk-free asset with 1.0 current price as asset  $S_r$  and its payoff as  $R$ , we have

$$
S _ {r} = \sum_ {k = 1} ^ {n} R \psi_ {k} = R \sum_ {k = 1} ^ {n} \psi_ {k}. \tag {29.12}
$$

One plus the risk-free rate is, by definition,  $R / S_r$ . Consequently, the risk-free rate, which we write as  $r$ , is given as<sup>3</sup>

$$
r = \left(\frac {1}{\sum_ {k = 1} ^ {n} \psi_ {k}}\right) - 1. \tag {29.13}
$$

We see that the risk-free rate is just the inverse of the sum of the state prices minus 1. This result should make sense. A risk-free asset is one that pays 1.0 in each state. Thus, a portfolio of one unit of each pure asset will replicate the payoff of the risk-free asset. It follows that the sums of the values of one unit of each pure asset will give the present value of 1.0, which will be the price of the risk-free asset. Inverting the price gives one plus the rate.

# 29.3 NUMERICAL EXAMPLE

Let there be four states and four complex assets. The payoffs of these assets are shown in the columns of the matrix  $\mathbf{H}$  here, where the rows are the states and the columns are the assets:

$$
\mathbf {H} = \left| \begin{array}{l l l l} 1 0 0 & 7 5 & 2 0 & 8 5 \\ 1 0 0 & 1 0 0 & 6 5 & 7 2 \\ 1 0 0 & 1 2 5 & 9 0 & 1 3 5 \\ 1 0 0 & 1 5 0 & 1 1 8 & 1 1 0 \end{array} \right|.
$$

It is also apparent that the first complex asset is the risk-free asset, whose payoffs are in the first column. The A matrix will, of course, be

$$
\mathbf {A} = \left| \begin{array}{l l l l} \alpha_ {1 1} & \alpha_ {1 2} & \alpha_ {1 3} & \alpha_ {1 4} \\ \alpha_ {2 1} & \alpha_ {2 2} & \alpha_ {2 3} & \alpha_ {2 4} \\ \alpha_ {3 1} & \alpha_ {3 2} & \alpha_ {3 3} & \alpha_ {3 4} \\ \alpha_ {4 1} & \alpha_ {4 2} & \alpha_ {4 3} & \alpha_ {4 4} \end{array} \right|.
$$

We can solve for  $\mathbf{A}$  by obtaining  $\mathbf{A} = (\mathbf{H}^{-1})'$ . The solution is

$$
\mathbf {A} = \left| \begin{array}{c c c c} - 0. 0 2 3 6 & 0. 0 6 2 4 & - 0. 0 5 7 4 & - 0. 0 0 2 0 \\ 0. 0 5 6 4 & - 0. 0 8 2 2 & 0. 0 6 5 3 & - 0. 0 0 9 1 \\ 0. 0 1 8 1 & - 0. 0 6 2 6 & 0. 0 4 1 8 & 0. 0 2 4 2 \\ - 0. 0 4 0 9 & 0. 0 8 2 5 & - 0. 0 4 9 6 & - 0. 0 1 3 1 \end{array} \right|.
$$

Let us assume we observe the prices of the complex assets in the market as:

$$
\mathsf {S} = \left| \begin{array}{c} 9 2. 0 0 \\ 1 1 8. 0 0 \\ 8 5. 8 6 \\ 9 9. 3 6 \end{array} \right|.
$$

Then we can find the prices of the pure assets as  $\Psi = (\mathbf{H}')^{-1}\mathbf{S}$ . The solution is

$$
\Psi = \left| \begin{array}{l} 0. 0 6 \\ 0. 1 8 \\ 0. 2 6 \\ 0. 4 2 \end{array} \right|. \tag {29.14}
$$

In scalar notation, this would be found by solving the equations:

$$
9 2 = 1 0 0 \psi_ {1} + 1 0 0 \psi_ {2} + 1 0 0 \psi_ {3} + 1 0 0 \psi_ {4}
$$

$$
1 1 8 = 7 5 \psi_ {1} + 1 0 0 \psi_ {2} + 1 2 5 \psi_ {3} + 1 5 0 \psi_ {4}
$$

$$
8 5. 8 6 = 2 0 \psi_ {1} + 6 5 \psi_ {2} + 9 0 \psi_ {3} + 1 1 8 \psi_ {4}
$$

$$
9 9. 3 6 = 8 5 \psi_ {1} + 7 2 \psi_ {2} + 1 3 5 \psi_ {3} + 1 1 0 v _ {4}.
$$

Alternatively, if we had the prices of the pure assets, we could obtain the prices of the complex assets as  $\mathbf{S} = \mathbf{H}'\boldsymbol{\Psi}$  or in the previous scalar equations, inserting values for each  $\psi$  and leaving the left-hand sides as the unknowns.

The risk-free rate is then  $(1 / t\Psi) - 1$  or simply

$$
r = \frac {1}{0 . 0 6 + 0 . 1 8 + 0 . 2 6 + 0 . 4 2} - 1 = 0. 0 8 6 9 5 7.
$$

# 29.4 STATE PRICING AND OPTIONS IN A BINOMIAL FRAMEWORK

In this section, we draw on the work of Banz and Miller (1978) and Breeden and Litzenberger (1978). Consider a one-period binomial option pricing world. Let an asset worth  $V$  today be worth either  $V_u$  or  $V_d$  one period later, where  $u$  and  $d$  are one plus the return on the asset in each of the two outcomes. From what we have previously learned about

state pricing, we know that  $V$  must be  $V u \psi_{1} + V d \psi_{2}$ . Let us divide through by  $V$  and also specify the formula for the risk-free rate in terms of the state prices:

$$
1 = u \psi_ {1} + d \psi_ {2}
$$

$$
r = \left(\frac {1}{\psi_ {1} + \psi_ {2}}\right) - 1. \tag {29.15}
$$

Solving these equations simultaneously for  $\psi_{1}$  and  $\psi_{2}$ , we obtain

$$
\psi_ {1} = \frac {1 + r - d}{(1 + r) (u - d)}
$$

$$
\psi_ {2} = \frac {u - (1 + r)}{(1 + r) (u - d)}. \tag {29.16}
$$

You should note the similarity of these formulas to those of the binomial probability for  $\phi$  and  $1 - \phi$ , which is repeated here:

$$
\phi = \frac {1 + r - d}{(u - d)}
$$

$$
1 - \phi = \frac {u - (1 + r)}{(u - d)}, \tag {29.17}
$$

Compare the formula for  $\phi$  in Equation (29.17), which is the risk-neutral probability of the asset going up, to the formula for  $\psi_{1}$ , which is the price for the state in which the asset goes up. Note that  $\psi_{1} = \phi / (1 + r)$ . Usually when we obtain the value of  $\phi$ , we determine  $1 - \phi$  by simple subtraction, but it can be shown that  $1 - \phi = (u - (1 + r)) / (u - d)$ . Then, it is easily seen that  $\psi_{2} = (1 - \phi) / (1 + r)$ . Thus, in general, the state price is the risk-neutral probability discounted at the risk-free rate. Alternatively, if we are given the risk-free rate, we can easily solve for the state prices as

$$
\psi_ {1} = \frac {p}{1 + r}
$$

$$
\psi_ {2} = \frac {1 - p}{1 + r}. \tag {29.18}
$$

We know that we can obtain the price of a call option on this asset with an exercise price of  $X$  by using the standard binomial pricing formula from Chapter 7,

$$
c = \frac {\phi c _ {u} + (1 - \phi) c _ {d}}{1 + r}, \tag {29.19}
$$

where  $c_{u} = \max (0, Su - X)$  and  $c_{d} = \max (0, Sd - X)$ . Let us demonstrate these results with an example. Consider the following scenario. We have an asset priced at 100 that can go up to either 140 or down to 75 in the next period. Thus,  $u = 140 / 100 = 1.40$  and  $d = 75 / 100 = 0.75$ . The risk-free rate is  $3\%$ . Using the standard binomial pricing approach, we first calculate the risk-neutral probability as

$$
\phi = \frac {1 . 0 3 - 0 . 7 5}{1 . 4 0 - 0 . 7 5} = 0. 4 3 0 8.
$$

And, of course,  $1 - \phi = 0.5692$ . The payoffs of the call are obviously 40 and 0. The call price today is found as

$$
c = \frac {0 . 4 3 0 8 (4 0) + 0 . 5 6 9 2 (0)}{1 . 0 3} = 1 6. 7 3.
$$

Now let us look at how this problem is consistent with state pricing. Given the risk-neutral probabilities of 0.4308 and 0.5692, we can find the state prices as

$$
\psi_ {1} = \frac {0 . 4 3 0 8}{1 . 0 3} = 0. 4 1 8 2
$$

$$
\psi_ {2} = \frac {0 . 5 6 9 2}{1 . 0 3} = 0. 5 5 2 7.
$$

The call price in terms of state prices is

$$
c = c _ {u} \psi_ {u} + c _ {d} \psi_ {d}. \tag {29.20}
$$

Substituting for our numerical example, we arrive at the previous value of

$$
c = 4 0 (0. 4 1 8 2) + 0 (0. 5 5 2 7) = 1 6. 7 3.
$$

We have three financial instruments: a stock, an option, and a riskless bond. To obtain the state prices from the prices of the complex assets, we need as many instruments as there are states. Thus, we need only two of the three assets at a time. Using the formulas, we previously developed, we shall re-derive the state prices, which should be 0.4182 and 0.5527. Let us first use the stock and risk-free bond. We can set the price of the risk-free bond to anything as long as its payoff is  $3\%$  higher than its price. Let us just set it at 100, the same as the stock price. Then our  $\mathbf{H}$  matrix is

$$
\mathbf {H} = \left| \begin{array}{c c} 1 0 3 & 1 4 0 \\ 1 0 3 & 7 5 \end{array} \right|.
$$

Our S vector, the prices of the assets, is

$$
\mathbf {S} = \left| \begin{array}{c} 1 0 0 \\ 1 0 0 \end{array} \right|.
$$

Then performing the matrix operations  $(\mathbf{H}^{\prime})^{-1}\mathbf{S}$ , we obtain

$$
\Psi = \left| \begin{array}{c c} - 0. 0 1 1 2 & 0. 0 1 5 4 \\ 0. 0 2 0 9 & - 0. 0 1 5 4 \end{array} \right| \left| \begin{array}{c} 1 0 0 \\ 1 0 0 \end{array} \right| = \left| \begin{array}{c} 0. 4 1 8 2 \\ 0. 5 5 2 7 \end{array} \right|,
$$

which are the correct values for the state prices.

Alternatively, we could use the option and the stock. Then our  $\mathbf{H}$  matrix would be

$$
\mathbf {H} = \left| \begin{array}{c c} 4 0 & 1 4 0 \\ 0 & 7 5 \end{array} \right|.
$$

Our S vector would be

$$
\mathbf {S} = \left| \begin{array}{c} 1 6. 7 3 \\ 1 0 0 \end{array} \right|.
$$

Then we can find the prices of the pure assets as  $\Psi = (\mathbf{H}')^{-1}\mathbf{S}$ . The solution is

$$
\Psi = \left| \begin{array}{c c} 0. 0 2 5 0 & - 0. 0 4 6 7 \\ 0. 0 0 0 0 & 0. 0 1 3 3 \end{array} \right| \left| \begin{array}{c} 1 6. 7 3 \\ 1 0 0 \end{array} \right| = \left| \begin{array}{c} 0. 4 1 8 2 \\ 0. 5 5 2 7 \end{array} \right|.
$$

Finally, using the option and the risk-free bond, our  $\mathbf{H}$  matrix is

$$
\mathbf {H} = \left| \begin{array}{c c} 4 0 & 1 0 3 \\ 0 & 1 0 3. \end{array} \right|.
$$

The S vector will be

$$
\mathsf {S} = \left| \begin{array}{c} 1 6. 7 3 \\ 1 0 0 \end{array} \right|.
$$

Then we can find the prices of the pure assets as  $\Psi = (\mathbf{H}^{\prime})^{-1}\mathbf{S}$ . The solution is

$$
\Psi = \left| \begin{array}{c c} 0. 0 2 5 0 & - 0. 0 0 0 0 \\ - 0. 0 4 6 7 & 0. 0 1 3 3 \end{array} \right| \left| \begin{array}{c} 1 6. 7 3 \\ 1 0 0 \end{array} \right| = \left| \begin{array}{c} 0. 4 1 8 2 \\ 0. 5 5 2 7 \end{array} \right|.
$$

Thus, it does not matter which assets we use, but it is good to see that the result is internally consistent.

# 29.5 STATE PRICING AND OPTIONS IN CONTINUOUS TIME

In the real world, there are an infinite number of possible states. This makes it difficult, if not impossible, to identify the specific states and derive their prices. It is possible, however, to make some approximations of state prices from the prices of traded options.

As discussed in Chapter 13, a standard European call option on an asset can be decomposed into two components. One is a long position in an asset-or-nothing option, which pays the value of the asset if its price at expiration exceeds the exercise price and nothing otherwise. The other component is a short position in a certain number of cash-or-nothing options, which obligates the seller to pay a certain amount of money if the asset price at expiration exceeds the exercise price and nothing otherwise. The number of such options is the exercise price.

Letting  $c$  be the call price,  $S$  be the underlying asset price,  $X$  be the exercise price,  $r_c$  be the continuous risk-free rate,  $\sigma$  be the volatility of the return on the asset price,

and  $\tau$  be the time to expiration, the value of the European call is well known as the Black-Scholes-Merton formula,

$$
c = S N (d _ {1}) - X e ^ {- r _ {c} \tau} N (d _ {2})
$$

$$
d _ {1} = \frac {\ln (S / X) + (r _ {c} + \sigma^ {2} / 2) \tau}{\sigma \sqrt {\tau}},
$$

and

$$
d _ {2} = \frac {\ln (S / X) + (r _ {c} - \sigma^ {2} / 2) \tau}{\sigma \sqrt {\tau}} = d _ {1} - \sigma \sqrt {\tau}.
$$

As we discussed in Chapter 13, the value of the asset-or-nothing component of a standard European option is  $SN(d_{1})$  and the value of the cash-or-nothing component is  $Xe^{-r_c\tau}N(d_2)$ . For our purposes here, we need the value of a more general cash-or-nothing option, one that pays off 1.0 if it expires with the asset value above the exercise price and zero otherwise. And as covered in Chapter 13, such an option is sometimes called a digital or binary option because it pays off zero or 1.0. Let us denote the price of the digital call option as  $dc$ , and we see that its value is

$$
d c = e ^ {- r _ {c} \tau} N (d _ {2}).
$$

Given the Black-Scholes-Merton put option pricing formula,

$$
p = X e ^ {- r _ {c} \tau} \left[ 1 - N (d _ {2}) \right] - S \left[ 1 - N (d _ {1}) \right],
$$

we can find the price of a digital put, which is an option that pays 1.0 if the asset value at expiration is less than the exercise price. Its formula is

$$
d p = e ^ {- r _ {c} \tau} \big [ 1 - N (d _ {2}) \big ].
$$

These digital option formulas are also the partial derivatives of the Black-Scholes-Merton call and put formulas with respect to the exercise price.<sup>5</sup>

Now let us divide the uncertain outcomes into three possibilities. Let  $S_{T}$  be the value of the asset at a specific future date,  $S_{1}$  be one possible level of the asset, and  $S_{2}$  be another possible level of the asset where  $S_{2} > S_{1}$ . Thus, we know that the asset value must fall within any of a number of ranges, as specified here:

$$
S _ {T} \leq S _ {1}
$$

$$
S _ {1} <   S _ {T} \leq S _ {2}
$$

$$
S _ {T} > S _ {2}.
$$

These ranges are collectively exhaustive. As such, they completely define the state space. Although this specification oversimplifies the real world, it does allow us to work with three easily identifiable states from which we can determine the three state prices.

We wish to find the prices of the pure assets that span the state space. Our problem, therefore, is as follows:

What is the price of an asset that pays 1.0 if  $S_T \leq S_1$ ?  
What is the price of an asset that pays 1.0 if  $S_{1} < S_{T} \leq S_{2}$ ?  
What is the price of an asset that pays 1.0 if  $S_T > S_2$ ?

It turns out that we can use digital calls and puts to obtain the answer.

A digital put with an exercise price of  $S_{1}$  is an asset that pays 1.0 if the first state,  $S_{T} \leq S_{1}$ , occurs and zero otherwise. Thus, its price is the price of the first pure asset. The second pure asset is identical to a long position in a digital call with an exercise price of  $S_{1}$  and a short position in a digital call with an exercise price of  $S_{2}$ . To see this, note that if  $S_{T} \leq S_{1}$ , both options expire out-of-the-money so there is no payoff. If  $S_{1} < S_{T} \leq S_{2}$ , the long digital call struck at  $S_{1}$  pays 1.0 and the short digital call struck at  $S_{2}$  pays nothing for a total payoff of 1.0. If  $S_{T} > S_{2}$  the long digital call struck at  $S_{1}$  pays 1.0 and the short digital call struck at  $S_{2}$  will require a payment of 1.0, thereby offsetting and leaving a zero payoff. The third pure asset, which pays 1.0 if the state  $S_{T} > S_{2}$  occurs, can be replicated with a long digital call with an exercise price of  $S_{2}$ .

Let us put some numbers on these results by deriving the prices of these pure assets from the prices of options on a particular stock index priced at 10,000, with a volatility of  $20\%$  and a yield of  $2\%$ . The continuously compounded risk-free rate is  $2.5\%$ . We consider two options that expire in 60 days, so  $\tau = 60 / 365 = 0.1644$ . The first option has an exercise price of 9,000, and the second an exercise price of 11,000. With this information, we can find the state prices for this index being below 9,000, between 9,000 and 11,000, and above 11,000.

Using the Black-Scholes-Merton option pricing model, we obtain the following values:  $e^{-r_c\tau} = e^{-0.025(0.1644)} = 0.9959$ ,  $N(d_2|X = 9,000) = 0.8978$  and  $N(d_2|X = 11,000) = 0.1139$ . From this, we obtain the following prices for the digital options:

digital call struck at 9,000 0.8941  $(= 0.9959^{*}0.8978)$

digital put struck at 9,000 0.1018  $[= 0.9959^{*}(1 - 0.8978)]$

digital call struck at 11,000 0.1135  $(= 0.9959^{*}0.1139)$

Thus, our state prices are

pure asset 1 0.1018

pure asset 2 0.7806  $(= 0.8941 - 0.1135)$

pure asset 3 0.1135

We can then obtain the risk-free rate over that period as  $1 / (0.1018 + 0.7806 + 0.1135) - 1 = 0.004118$ . This result is consistent with the  $2.5\%$  continuously compounded rate because the equivalent discrete compounded rate for 60 days would be  $e^{0.025(60 / 365)} - 1 = 0.004118$ .

# 29.6 RECAP AND PREVIEW

With the development of option pricing theory, state preference theory has stepped to the back in the family of valuation models. Although, as we have seen here, state preference theory is clearly consistent with option pricing theory, the implications of the latter are much easier to observe in the real world, and, hence, it has become more widely used in practice as well as in scholarly work. Keep in mind, however, that just as a biologist cannot simply observe a specimen with the naked eye and expect to learn much about it, so must a serious student of finance observe the internal structure of the financial pricing process. State preference theory provides the framework to accomplish that task.

In Chapter 30, we examine what option pricing theory implies for the expected returns on options and how this relates to the expected returns on the underlying assets.

# QUESTIONS AND PROBLEMS

1 Compare and contrast pure assets with complex assets.  
2 Suppose we have four states and four complex assets with the payoffs in the HH matrix. Further, assume we observe the prices of the complex assets have all been normalized to 100 (the  $S$  matrix). Compute the prices of the pure assets in this setting:

$$
\mathbf {H} = \left| \begin{array}{c c c c} 1 0 5 & 6 5 & 2 0 & 4 0 \\ 1 0 5 & 9 5 & 1 5 0 & 1 3 0 \\ 1 0 5 & 1 3 0 & 1 1 0 & 2 0 0 \\ 1 0 5 & 1 5 0 & 1 8 0 & 1 1 0 \end{array} \right| \mathbf {S} = \left| \begin{array}{c} 1 0 0. 0 0 \\ 1 0 0. 0 0 \\ 1 0 0. 0 0 \\ 1 0 0. 0 0 \end{array} \right|.
$$

3 With pure assets one must be careful with rounding. Based on the pure asset values given next, compute the implied discrete compounded interest rate when the pure asset values are rounded at the first decimal place. Repeat this exercise for rounding at the second through sixth decimal place. Discuss your findings for the six cases (rounding at first, second, third, fourth, fifth, and sixth decimal place), explaining the role of rounding in computing pure asset values:

$$
\Psi = \left| \begin{array}{c} 0. 3 6 6 5 4 8 \\ 0. 1 8 7 7 8 0 \\ 0. 1 4 3 0 1 5 \\ 0. 2 7 3 5 3 1 \end{array} \right|.
$$

4 Suppose you have an asset priced at 50 that can go either up to 60 or down to 40 in the next year. The risk-free rate is  $5\%$  (discrete compounding). Consider a call option with exercise price of 50. First, compute the correct call option price. Identify three approaches to solving for the state prices and demonstrate that each approach results in the same state prices.  
5 Using just call option prices, explain how to construct pure asset prices when given five different exercise prices for one-month options.

# NOTES

1. Instead of the word asset, some articles and books use the term security, but a security is a claim issued by a company. We shall not use that term here, preferring the more general term asset.  
2. To obtain the inverse of  $\mathbf{H}$ , we require the condition that no row or column of  $\mathbf{H}$  is a linear function of any other row or column. This condition will always hold if no complex asset is a linear function of any other combination of complex assets. Otherwise, that asset would be redundant.  
3. To solve for  $r_{\mathrm{f}}$  in matrix notation we would introduce an  $n \times 1$  row vector,  $\mathfrak{t}$ , which contains 1 as each element. Then  $r_f = (1 / \mathfrak{t}\Psi) - 1$ .  
4. The matrix operations of transposing, multiplying, and taking the inverse can be easily done using Excel's array formulas =transpose(), =mmult(), and =inverse().  
5. The derivative of the call formula with respect to the exercise price has a minus sign, which would have to be ignored if one were using the derivative as the price of a digital option.

