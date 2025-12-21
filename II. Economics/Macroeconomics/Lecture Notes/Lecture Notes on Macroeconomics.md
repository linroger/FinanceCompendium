---
title: Lecture Notes on Macroeconomics
parent_directory: Lecture Notes
formatted: 2025-12-21 08:10:00 AM
formatter_model: grok-code-fast-1
cli_tool: opencode
primary_tags:
  - macroeconomic theory
  - money and prices
  - economic fluctuations
  - nominal rigidities
  - general equilibrium
secondary_tags:
  - quantity theory of money
  - baumol-tobin model
  - seigniorage
  - hyperinflation
  - keynesian economics
  - walrasian equilibrium
  - aggregate supply
  - aggregate demand
  - business cycles
cssclasses: academia
---

# Lecture Notes on Macroeconomics

## Contents

## 1 Money and Prices

### 1.1 Definitions

#### 1.1.1 Prices
#### 1.1.2 Money

### 1.2 The History of Money

### 1.3 The Demand for Money

#### 1.3.1 The Baumol-Tobin Model of Money Demand

### 1.4 Money in Dynamic General Equilibrium

#### 1.4.1 Discrete Time
#### 1.4.2 Continuous Time
#### 1.4.3 Solving the Model

### 1.5 The Optimum Quantity of Money
#### 1.5.1 The Quantity Theory of Money
### 1.6 Seigniorage, Hyperinflation and the Cost of Inflation
### 1.7 Problems

## 2 Nominal Rigidities and Economic Fluctuations

### 2.1 Old Keynesian Economics: The Neoclassical Synthesis

#### 2.1.1 Open Economy
#### 2.1.2 Aggregate Supply

### 2.2 Disequilibrium Economics

#### 2.2.1 Setup
#### 2.2.2 The Walrasian Benchmark Case
#### 2.2.3 Exogenously Fixed Price
#### 2.2.4 Exogenously Fixed Nominal Wage
#### 2.2.5 Both Prices and Wages Inflexible
#### 2.2.6 Analysis of This Model

### 2.3 Imperfect Information Models

### 2.4 New Keynesian Models

#### 2.4.1 Contracting Models
#### 2.4.2 Predetermined Wages
#### 2.4.3 Fixed Wages

### 2.5 Imperfect Competition and New Keynesian Economics

#### 2.5.1 Macroeconomic Effects of Imperfect Competition

#### 2.5.2 Imperfect Competition and Costs of Changing Prices
#### 2.5.3 Dynamic Models

### 2.6 Evidence and New Directions
### 2.7 Problems

## 3 Macroeconomic Policy

### 3.1 Rules vs. Discretion

#### 3.1.1 The Traditional Case for Rules
### 3.2 The Modern Case for Rules: Time Consistency
#### 3.2.1 Fischer's Model of the Benevolent, Dissembling Government
#### 3.2.2 Monetary Policy and Time Inconsistency
#### 3.2.3 Reputation

### 3.3 The Lucas Critique
### 3.4 Monetarist Arithmetic: Links Between Monetary and Fiscal Policy
### 3.5 Problems

## 4 Investment

### 4.1 The Classical Approach
### 4.2 Adjustment Costs and Investment: q Theory

#### 4.2.1 The Housing Market: After Mankiw and Weil and Poterba

### 4.3 Credit Rationing
### 4.4 Investment and Financial Markets

#### 4.4.1 The Effects of Changing Cash Flow
#### 4.4.2 The Modigliani-Miller Theorem

### 4.5 Banking Issues: Bank Runs, Deposit Insurance and Moral Hazard
### 4.6 Investment Under Uncertainty and Irreversible Investment
#### 4.6.1 Investment Under Uncertainty
### 4.7 Problems

## 5 Unemployment And Coordination Failure

### 5.1 Efficiency Wages, or Why the Real Wage Is Too High

#### 5.1.1 Solow Model
#### 5.1.2 The Shapiro-Stiglitz Shirking Model
#### 5.1.3 Other Models of Wage Rigidity

### 5.2 Search

#### 5.2.1 Setup
#### 5.2.2 Steady State Equilibrium

### 5.3 Coordination Failure and Aggregate Demand Externalities

#### 5.3.1 Model Set-Up
#### 5.3.2 Assumptions
#### 5.3.3 Definitions
#### 5.3.4 Propositions

### 5.4 Problems

## Continuous-Time Dynamic Optimization

## Introduction

## Course Mechanics

- Requirements: Two exams, each $50\%$ of grade, each covers half of material in class. First exam: on Tuesday, March 12th. Second and final exam: on Tuesday, April 30th.
- Problem sets: will be several, which will be handed in and corrected, but not graded. Good way to learn macro, good practice for exams and core.
- On the reading list: It is very ambitious. We may well not cover everything. That is fine, as not everything is essential. I may cut material as I go along, and will try to give you fair warning when that happens.
- The lectures will very closely follow my lecture notes. There are two other general textbooks available: Romer, which should be familiar and Blanchard and Fischer. The latter is harder but covers more material. The lecture notes combine the approaches of and adapt materials in both books.
- References in the notes refer to articles given on the reading list. With few exceptions, the articles are also summarized in Romer or Blanchard and Fischer. It is thus not necessary to read all or even most of the articles on the list. Since articles are the primary means through which economists communicate, you should read at least one. Some of the articles are in the two recommended volumes by Mankiw and Romer, New Keynesian Economics, both of which will eventually be in the bookstore. Just about all articles prior to 1989 are available via the internet at the site www.jstor.org, provided one connects through a computer connected to Brown's network. I would ask that everyone not individually print out every article, since that would take a lot of paper, energy and computing power.
- Students considering macroeconomics as a field are strongly encouraged to attend the Macroeconomics Workshop, on Wednesdays from 4:00-5:30 in Robinson 301.

## Motivation

Consider the handout labeled "The First Measured Century." It presents graphs for the U. S. of the three most important macroeconomic statistics, output, unemployment and inflation, since 1900. Essentially, Ec 207 tried to explain why the graph of real GDP sloped upwards. It also tried to explain why there were fluctuations around the trend, via real business cycle theory, but was much less successful. This course will explain the trend in and growth rates of inflation and unemployment, and fluctuations in real GDP. It will also explain why these variables move togetherthat is, unemployment tends to be low when output growth is high, and inflation is often (but not always) low when output growth is low.

Omitted in Spring 2002: An important distinction that I have made implicitly above is the separation of variables into a trend component and a cyclical component. The trend component can be thought of informally as the long-run average behavior of the variable, and the cyclical component deviations from that trend. For inflation and unemployment, the trend components appear to be horizontal lines (with possible shifts in the level of the line for both over time). When one assumes that a model like the Solow growth model explains the long-run growth rate of output, but not the short run, one is already doing such a division. There has been a debate in recent years over whether it is appropriate to do such a division; some claim that variables like output, rather than having a deterministic trend, as is claimed in the Solow model (where the trend component, in log terms, is just proportional to time), instead have a stochastic trend. Algebraically, the two cases are:

$$ y_{t} = \alpha + \beta t + \epsilon_{t} \tag {1}
$$ for the deterministic trend case, and

$$ y_{t} = \beta + y_{t - 1} + \epsilon_{t} \tag {2}
$$ in the stochastic trend case (a random walk with drift).<sup>1</sup> $y_{t} = \ln(GDP)$ measured at time $t$. In the first case, $\beta t$ is the trend component or GDP and $\epsilon_{t}$ is the deviation around the trend. Changes in $\epsilon_{t}$ cause temporary variations in GDP, but do not affect the long-run level of $y_{t}$, which is only determined by $\alpha + \beta t$, trend growth. In contrast, in the second specification changes in $\epsilon_{t}$ permanently affect the level of $y_{t}$.

In the stochastic-trend case, it may be more appropriate in some instances to study the long-run and the short-run together. This was one of the motivations of the RBC literature. For the purposes of this course, I am going to sidestep this debate, partly because it requires some heavy-duty econometrics to fully understand, but primarily because many macroeconomists have concluded that even if output does have a stochastic trend, analyzes assuming it has a deterministic trend will give many of the right answers. This is because computing $\Delta y_{t} = y_{t} - y_{t - 1}$ gives the same answer in both cases, so that any finite-sample time series with average growth rate of $\beta$ can be represented by both processes. For more information, see the first chapter of Blanchard and Fischer.]

We will cover the following topics in this course:
    - Money and Prices: In Ec 207, although you may have occasionally referred to variables denominated in dollars, the fact that transactions required a medium of exchange wasn't mentioned, and played no role in any of the analyses you went through. This section will define what money is (which turns out to be less obvious a question than one might immediately think), describe theories of money demand, and describe the long-run behavior of money and the price level.
    - Nominal Rigidities and Economic Fluctuations: The previous section was merely a prelude to this section, in a way. In the RBC section of 207, you saw some explanations for why output and unemployment fluctuated around their trend values (loosely speaking): variations in technology and in tastes for leisure. In this section of the course you will see other explanations. They all center around the notion that prices and wages may be inflexible, and thus do not move rapidly enough to clear the markets for goods or labor. This is an idea which dates back to the foundations of macroeconomics, with the writings of Keynes. Over the years, in response to problems fitting the model to empirical data and theoretical challenges, people have made Keynes' thinking more mathematically precise. Many of the same conclusions remain. This section will essentially present these models as they developed historically. Along the way, we will need to think about how firms set prices and wages and about the macroeconomic implications of imperfect competition.
    - Macroeconomic Policy: Given an understanding of what causes economic fluctuations, here we consider what policy can and should do about them. We focus on whether policy should consist of adherence to (simple, but possibly contingent) rules or should be permitted to vary at the policymaker's discretion.
    - Investment: Investment is the most volatile components of real GDP, and is an important part to any serious theory of business cycles, as well as growth. We will consider various theories of investment and also how imperfections in financial markets may affect real economic outcomes.
    - Unemployment and Coordination Failure: We will conclude with a consideration of several important kinds of macroeconomic models. We first consider several reasons why the labor market fails to clear fully. We will then think about models in which agents are searching for something- a job, the best price, etc. These turn out to be important for determining the average rate of unemployment. Next, we turn to models involving coordination failure- that is, models in which all individuals would be better off if they were allowed to coordinate among themselves. These models are important for some theories of economic fluctuations.

## Chapter 1: Money and Prices

In Ec 207, there was scant reference to the fact that transactions needed a medium of exchange to be carried out. The only references to money came in the few cases where you were presented economic data denominated in some currency. In this part of the course, we will see why it may have been acceptable to ignore money, and look at the long-run relationship between money and prices.

For some of this section, with an important exception, real output will be exogenous with respect to money- that is, changes in the supply of money have no effect on the level of real GDP (which is determined, for example, by the neoclassical growth model). Later in the course, you will see models in which changes in the nominal stock of money have real effects. Economists who believe such models are sometimes referred to as Keynesians.

The models here obey what is known as the "classical dichotomy"- they will have the property that real variables are determined by other real variables, and not by nominal variables such as the money stock. Most, if not all, economists believe that the classical dichotomy holds in the long run. Some also believe this is true in the short run- such economists are known as "new classical" economists; they are usually proponents of the Real Business Cycle view, which you saw at the end of last semester. Note that the concepts of long-run and short-run here are a little different from long-run and short-run for growth models. There, the short run can be a few decades. Here, it's a few years; this is the more usual definition within macroeconomics.

We'll begin with some definitions and history, continue with first a partial equilibrium and then a general equilibrium model of the demand for money, discuss the relation between money and prices, talk about how inflation can be used as a source of revenue, and finally talk about what causes hyperinflations and how to stop them.

### 1.1 Definitions

#### 1.1.1 Prices

The price level is easier, so we'll start with that. We want to measure the average level of prices, i.e. the quantity which converts some measure of the quantity of all goods and services into dollars. There are a variety of ways of doing this, which essentially depend on whether you let the basket of goods you are using be fixed over time or vary; for the purposes of this class, the distinction does not matter. $^{1}$ We'll just call it $P$

Inflation is simply the percent change in the price level; negative inflation is also called deflation. In discrete time, it is $\pi_{t} = \frac{P_{t} - P_{t - 1}}{P_{t - 1}}$, or $\dot{P}$ in continuous time.

We use the price level to deflate other nominal variables, such as the nominal wage- thus if $W$ is the nominal wage, $\frac{W}{P}$ is the real wage.

For rates, such as interest rates, we need to subtract the rate of inflation. Thus if the real interest rate is $r$, and the nominal interest rate is $i$, then the real interest rate $r = i - \pi$. Note that this is an approximation; the true relationship<sup>2</sup> is that:

$$

1 + r_{t} = \frac{\left(1 + i_{t}\right) P_{t}}{P_{t + 1}}. \tag {1.1}

$$

If $r$ is exogenous, this relationship is known as the Fisher equation, after Irving Fisher. Since at any given time we know the nominal interest rate, but do not know for certain what the rate of inflation will be for the future, we often must distinguish between the ex ante real interest rate, $i_t - E_t\pi_{t+1}$ from the ex post real interest rate, which is $i_t - \pi_{t+1}$, i.e., the actual real interest rate observed after inflation has been observed. There is a large literature testing whether the ex ante and ex post rates are equal.

#### 1.1.2 Money

Defining money is harder. There are three classical qualifications for money:

Medium of exchange
- Store of value
- Unit of account

The first simply means that money can be used to perform transactions. This must be a fundamental reason why we hold it, and is a definite advantage over a barter economy. Without money, in order to carry out trades we would have to wait for a "double coincidence of wants" $^{3}$ - that is, we'd have to wait until we found a person who would give us something we wanted in return for something we have.

The second means that money can transfer purchasing power in the future—it is a form of asset. It would be pretty dumb to use it solely as an asset, though, because in general it pays less interest than other assets which are about as safe (for example, treasury bills). Money is a dominated asset.

The third means that money is the unit in which we quote prices or in which accounts are kept. Note that this doesn't need to be the same as the transactions medium- we could do our exchange with one kind of money and quote our prices in another (true for countries with high inflation).

In principle, any asset which satisfies these criteria is money. In practice, it is hard to measure.

The government computes a series of definitions of money which get progressively larger as they include more and more money-like objects. Currently, three important definitions of money in the U. S. and their values (as of December 1998) are:

- Currency: \$460 billion
- Monetary Base (Currency + Reserves): \$515 billion
 • $M_{1}$ (Currency + checking accounts):\$1.1 trillion
 • M2 (M1+ savings accounts):\$4.4 trillion

Remember that the technical definition of money here is different from the popular definition, which equates money with the stock of wealth. The total stock of wealth in the US is about three times GDP, or \$24 trillion, much larger than even the largest definition of money here.

We'll ignore these distinctions, and just assume there is some aggregate $M$ which is paid no interest and used for transaction, and some other asset paid nominal interest $i$ which can't be used for transactions.

### 1.2 The History Of Money

The kinds of money in existence have changed over time. Originally, money consisted of mostly precious metals, which were often made into coins. This kind of money is known as commodity money, because money has an alternate use (that is, the substance used as money is intrinsically valuable). This implies that the stock of money is hard for the government to control, because it's determined by however much of the stuff is out there. A reduction in the money supply could well occur by the sinking of a Spanish galleon.<sup>4</sup>

Over time, people got tired of passing coins back and forth, so they starting passing around pieces of paper which were promises to pay people in coins. Holding a dollar bill once entitled you to march into a Federal Reserve bank and demand a dollars worth of gold. Then, they forgot about the coins altogether, but kept the pieces of paper. These could be passed around and exchanged for other pieces of paper or for goods. This standard of money is known as fiat money, because the money is valuable by fiat- in this case, because the government says so. In a fiat money system, the government controls the stock of money. In the U. S., this is done by an open market operation- the Federal reserve exchanges bonds for money with the public.

### 1.3 The Demand For Money

We briefly mentioned the supply of money above. Particular details on how money is supplied are important to some economic problems, but not the ones we will study here. For a more full description of how this works in the U. S., consult Mankiw Chapter
18. Now let's think about the demand for money. We'll start with a simple partial equilibrium model which is based on the transactions role of money.

#### 1.3.1 The Baumol-Tobin Model Of Money Demand

Suppose that you want to spend some nominal amount $PY$ at a constant rate over some interval of time. To buy stuff, let's suppose that you have to have the money in advance (this is known as a cash-in-advance constraint; Robert Clower develops this idea in another set of models). You can hold your wealth in the form of some asset or in the form of money. You have to go to the "bank" to transfer wealth from the asset to money. It is costly for you to go to the bank, and it is costly for you to hold money, so the question is how often do you go to the bank, and how much money should you hold.

Suppose you went once during the period. Then, your average money holdings would be: $PY / 2$. For N times per year, you would get $PY / 2N$ (Figure 1.1)

What's the opportunity cost of holding real balances? Since we assume money doesn't pay interest, the cost is equal to the interest rate (even the parts of money that do pay interest generally pay much lower than other non-monetary assets).

Which interest rate is it, real or nominal? Answer is nominal. To see this, recall that assets may pay real return $r$, but that money declines in value with inflation, so that it has real return $-\pi$. Hence the difference in real returns between the two is just $r - (-\pi) = r + \pi = i$. The nominal interest rate is the opportunity cost of holding cash.

Suppose the nominal cost of going to the bank is $PF$. This is due to the time it takes to go to the bank.

The total cost of holding money is then: $i\frac{PY}{2N} + PFN$

We'd like to minimize this- to do so, find the first-order condition with respect to $\mathbf{N}$:

$$

0 = - i \frac{PY}{2} N^{- 2} + PF \tag {1.2}

$$ which implies:

$$

N = \sqrt{\frac{i Y}{2 F}} \tag {1.3}

$$

The amount withdrawn each time is $\frac{PY}{N}$, so average nominal money holdings are:

$$

M = \frac{PY}{2 N} = P \sqrt{\frac{YF}{2 i}} \tag {1.4}

$$

A numerical example: for \$720 worth of expenditures, a cost F of going to the bank of \$2, and a nominal interest rate of 5%, you should go the bank 3 times per month, withdraw \$240 each time, and hold an average of \$120 in your wallet. Evidence suggests that people go much more often than is implied.

For other short-run models developed later in the class, we will want to see how money holdings vary with income and the nominal interest rate. From the expression above, we can derive:

- Interest elasticity $= - \frac{1}{2}$
Income elasticity $= +\frac{1}{2}$

The latter is too low empirically. However if $F$ is proportional to income, as it might be if it is an opportunity cost, then the elasticity will be close to
1. This model links real balances with the price level, the nominal interest rate and output. These links seem to be a general property of most monetary models- the exact dependence is determined by the form of the model.

Other models of money demand:5.
    - Miller-Orr inventory model. This model was originally developed for money demand by firms. The basic idea is that the firms will set trigger points for their level of cash balances, at $S$ and $s$. If because of receipts, their cash balances rise until they hit the level $S$, the firms will go to the bank and deposit $S - r$, where $r$ is the return level, and is somewhere between the trigger levels. Similarly, if cash balances fall to $s$, the firm with withdraw funds until they are back up at the return level, $r$ (Figure 1.2). One can show that this model produces an income elasticity equal to $\frac{2}{3}$ and an interest elasticity of $-\frac{1}{3}$. This is also known as a two-sided (S, s) model, and it has figured in other areas of economics, including inventories, price setting and portfolio management. We will see it again in the next part of this course. It is generally the optimal policy in a model when the state variable follows a random walk and there is a fixed cost of adjustment.
    - Clower Cash-in-Advance- a simpler version of the Baumol-Tobin model, which just acknowledges that cash is needed in hand in order to buy goods thus the amount of cash one has is a constraint on consumption.
    - Double-Coincidence of Wants Models- these model the decision to hold money as a way of reducing search costs in an economy that is originally a barter economy.
    - Cash and Credit Models - these models incorporate the fact that some goods can be bought with cash, and some with credit; thus the distribution of goods is an important determinant of money demand.
    - Overlapping Generations - these models use money as a way of passing resources from one generation to another. The old can pass pieces of paper along to the young in exchange for resources; the young will be willing to accept those pieces of paper provided they in turn can pass them on to other generations when they themselves are old. While favored by some people, these don't work very well when money is not the only asset. However, they do explain the acceptance of fiat money quite well.

Many of these models can be subsumed into a more general model, the money-in-the-utility-functionmodel. We will use this framework to integrate money holdings into a general-equilibrium, growth framework.

### 1.4 Money In Dynamic General Equilibrium

Thus far we've seen an interesting partial-equilibrium version of the money demand model. Now let's see what happens when we introduce money into a model of economic growth. We will use a model developed by Miguel Sidrauski, who like Ramsey died at a tragically young age. The presentation below will largely follow that developed by Blanchard and Fischer.

As noted above, the fact that money is a dominated asset makes it difficult to model the demand for it; demand must come through its ability to facilitate transactions. To get around this, we assume that money directly enters the utility function; then people hold it because they like it.

This may seem a little crazy, but in fact Feenstra (JME, 1986) has shown that many models of money demand can be written this way. The intuitive reason is that money provides "liquidity" or "transactions" services which people value. Putting money in the utility function is a way of giving it value without explicitly modeling the way it provides value.<sup>6</sup>

I first present and solve the model in discrete time, and then solve it in continuous time. The latter solution will introduce a solution method which is very useful in dynamic models.

#### 1.4.1 Discrete Time

**Setup**

For convenience, let's assume there is a single agent and no population growth. The agent derives
(instantaneous) utility from two sources:

- Consumption, denoted $C_t$.
- Holding real balances, denoted $\frac{M_t}{P_t}$

With discount factor $\theta$, the time-zero present value of felicities is:

$$

\sum_{t = 0}^{\infty} \left(\frac{1}{1 + \theta}\right)^{t} U \left(C_{t}, \frac{M_{t}}{P_{t}}\right) \tag {1.5}

$$

Each period, the consumer receives income<sup>7</sup> $Y_{t} = F(K_{t - 1})$ and a lump-sum transfer $X_{t}$. She also has money left over from last period, $M_{t - 1}$, whose current real value is $\frac{M_{t - 1}}{P_t}$, and capital, $K_{t - 1}$ (assume depreciation is zero). She must choose to allocate these resources in three ways:

- As consumption, $C_t$.
- As new money holdings, with real value $\frac{M_t}{P_t}$.
- As capital, $K_{t}$.

Let $r_{t-1} = F'(K_{t-1})$, i.e. the marginal product of capital and the real interest rate.

Hence we can write each period's budget constraint as:

$$

C_{t} + K_{t} + \frac{M_{t}}{P_{t}} = F \left(K_{t - 1}\right) + K_{t - 1} + \frac{M_{t - 1}}{P_{t}} + X_{t} \tag {1.6}

$$

The consumer maximizes utility subject to the above set of budget constraints.

Let $\lambda_{t}$ denote the set of Lagrange multipliers for the time $t$ flow constraint.

Assume that the transfer is provided by the government, which also supplies nominal balances to meet demand. By supplying nominal balances (i.e. printing money), the government creates revenue for itself. This revenue is known as seigniorage. Assume that the revenue from seignorage is entirely refunded back to the public in the form of the transfer (alternatively, you could assume that it helps pay for some form of government expenditure, $G$ ). Then the government's budget constraint becomes:

$$

\frac{M_{t} - M_{t - 1}}{P_{t}} = X_{t}. \tag {1.7}

$$

**Solution: The Hard Way**

Form the Lagrangian and differentiate with respect to the three choice variables $(C_t, M_t, K_t)$ to obtain the following three sets of first-order conditions:

$$

\left(\frac{1}{1 + \theta}\right)^{t} U_{C_{t}} \left(C_{t}, \frac{M_{t}}{P_{t}}\right) - \lambda_{t} = 0 \tag {1.8}

$$

$$

\frac{1}{P_{t}} \left(\frac{1}{1 + \theta}\right)^{t} U_{M_{t}} \left(C_{t}, \frac{M_{t}}{P_{t}}\right) - \frac{\lambda_{t}}{P_{t}} + \frac{\lambda_{t + 1}}{P_{t + 1}} = 0 \tag {1.9}

$$

$$
- \lambda_{t} + \lambda_{t + 1} \left(1 + F^{\prime} \left(K_{t}\right)\right) = 0. \tag {1.10}
$$

In addition, there are two transversality conditions for capital and money:

$$

\overline {{\lim t \rightarrow 0 \left(\frac{1}{1 + \theta}\right)^{t} \lambda_{t} K_{t} = 0}} \tag {1.11}

$$

$$

\overline {{\lim t \rightarrow 0 \left(\frac{1}{1 + \theta}\right)^{t} \lambda_{t} \frac{M_{t}}{P_{t}} = 0.}} \tag {1.12}

$$

Note that $\lambda_{t}$ has an interpretation as the marginal utility of consumption.

For diminishing marginal utility of consumption and real balances, the budget constraint will bind each period.

We now have all the ingredients to solve the model. In the end, we'll be interested in expressions for consumption growth, money growth, and output growth. To derive these, let's derive an intertemporal Euler equation for consumption and an intratemporal one for consumption and real balances.

We can obtain the intertemporal condition by solving out for $\lambda_{t}$ and $\lambda_{t + 1}$, and using the definition of $r_t$:

$$

U_{\mathcal {C}_{t}} = \frac{1 + r_{t}}{1 + \theta} U_{\mathcal {C}_{t + 1}} \tag {1.13}

$$

The intratemporal condition can similarly be obtained by solving out for $\lambda_{t}$ and $\lambda_{t + 1}$:

$$

U_{M_{t}} = \left(1 - \frac{\frac{P_{t}}{P_{t + 1}}}{1 + r_{t}}\right) U_{\mathcal {C}_{t}}. \tag {1.14}

$$

Also, let's note that if we substitute the government's budget constraint into the consumer's budget constraint, we obtain the following form of the constraint:

$$

C_{t} + \Delta K_{t} = F \left(K_{t - 1}\right), \tag {1.15}

$$ or $C_t + I_t = Y_t$, the national income accounting identity.

The consumption condition looks identical to the standard consumption Euler equation. There is a key difference, however: the marginal utility of consumption may be a function of real balances. Hence equation this may be an intertemporal equation not just for consumption, but also for real balances.

To explore the implications of this, let's assume a particular form of the felicity function:

$$
U \left(C_{t}, m_{t}\right) = \frac{\left(C_{t} m_{t}^{\alpha}\right)^{1 - \sigma}}{1 - \sigma}, \tag {1.16}
$$ where for convenience we've set $m_t = \frac{M_t}{P_t}$

This function has the advantage that if $\alpha = 0$, we revert to the standard CRRA utility function. Also note that in the general case where $\alpha \neq 0$ that consumption and real balances are nonseparable; this will turn out to be important later.

By inserting these expressions into the first-order conditions, and using the relation $1 + r_{t} = \frac{(1 + i_{t})P_{t}}{P_{t + 1}}$, we can rewrite them as follows:

$$

\left(\frac{C_{t}}{C_{t + 1}}\right)^{- \sigma} = \frac{1 + r_{t}}{1 + \theta} \left(\frac{m_{t + 1}}{m_{t}}\right)^{\alpha (1 - \sigma)} \tag {1.17}

$$

$$ m_{t} = \alpha \left(1 + \frac{1}{i_{t}}\right) C_{t} \tag {1.18}
$$

Finally, taking logs, we can rewrite the two equations as follows:

$$
\Delta \ln \left(C_{t + 1}\right) = \frac{r_{t} - \theta}{\sigma} + \frac{\alpha (1 - \sigma)}{\sigma} \Delta \ln \left(m_{t + 1}\right) \tag {1.19}
$$

$$
\ln (m_{t}) = \ln (\alpha) - \ln (i_{t}) + \ln (C_{t}), \tag {1.20}
$$ where we've used the approximation that $\ln(1 + x_t) \approx x_t$ for small $x_t$.

These two equations have nice economic interpretations. The first one is the standard discrete-time expression for consumption growth from the Ramsey model, with the addition of a term for growth of real balances. Note that in a steady state where consumption and real balances are not growing (recall that there is no population growth or technical progress), we have the standard condition that $r_t = \theta$. This pins down the steady-state capital stock and thus steady-state output. From (11), we can then get steady state consumption. All three values are exactly the same as in the model without money. Hence, in the long-run steady-state, this model obeys the classical dichotomy; no real variable is affected by money growth (although, as we will see below, the level of utility is). Out of steady-state, note that growth of real balances does affect consumption growth, if $\alpha \neq 0$. This arises from the fact that money is both a store of value and provides utility through transactions services.

The second equation is simply a standard money demand equation relating real balances to the nominal interest rate and expenditure (here, consumption). The income elasticity is $+1$ and the interest elasticity is $-1$, both larger in absolute value than the Baumol-Tobin model values.

The next section considers an easier way of solving this model.

**Solution: The Easy Way**

For an easier way of solving this model, let's derive the intertemporal consumption Euler equation and the intratemporal consumption-real balances Euler equation from
(xx) -(zz) using perturbation arguments.

First, let's consider the experiment of, along the optimal path, reducing consumption by one unit in period $t$, investing it in capital, and consuming the proceeds next period. To first order, the utility change from reducing consumption in $t$ is: $-U_{C_t}$. The returns from investing in capital are $1 + r_t$. The utility change from consuming the proceeds, discounted back to period $t$, are: $\frac{1 + r_t}{1 + \theta} U_{C_{t+1}}$. If we were on the optimal path to consumption, first-order changes for small perturbations leave the discounted value of utility unchanged, so the sum of the above changes is zero, or:

$$
- U_{C_{t}} + \frac{1 + r_{t}}{1 + \theta} U_{C_{t + 1}} = 0. \tag {1.21}
$$

For the intertemporal condition, let's consider the experiment of, again along the optimal path, reducing consumption in period $t$ by one unit, putting the proceeds in the form of money, and consuming the resulting real amount next period. To first order, the utility change from reducing consumption in $t$ is again: $-U_{C_t}$. One unit of consumption is $P_t$ units of nominal money $M_t$, or 1 unit of real balances $m_t$, yielding utility change of $U_{M_t}$. Next period, $P_t$ dollars have a real value of $\frac{P_t}{P_{t+1}}$, yielding a
(discounted) utility change of $\frac{1}{1+\theta} \frac{P_t}{P_{t+1}} U_{C_{t+1}}$. These again sum to zero, yielding:

$$
- U_{C_{t}} + U_{M_{t}} + \frac{1}{1 + \theta} \frac{P_{t}}{P_{t + 1}} U_{C_{t + 1}} = 0. \tag {1.22}
$$

By substituting in the consumption Euler equation, we can proceed as in the previous section.

#### 1.4.2 Continuous Time

Assume that instantaneous utility per person is given by $u(c, m)$, where $m = \frac{M}{PN}$, i.e. real balances per person. We have real balances rather than nominal balances because money is only desirable to the extent it can be used to purchase real goods; the amount of real goods that a nominal amount of money $M$ can purchase is simple $\frac{M}{P}$. As usual, people discount at the instantaneous rate $\theta$, meaning their lifetime utility is:

$$

V = \int_{0}^{\infty} u (c, m) e^{- \theta t} dt. \tag {1.23}

$$

As before, they will receive income in the form of
(real) wages, $w$, and as interest on their assets. They may hold assets in the form of either capital, $K$ in real terms, or as money, $M$, in nominal terms. The rate of return on capital is $r$, and money has no nominal rate of return; we will derive its real rate of return below. We will also assume for now that they receive a real transfer $X$ from the government; more on this later.

Given this income, they can choose to consume it, accumulate capital or accumulate real balances. In non-per-capita terms, the total budget constraint is then:

$$

C + \dot {K} + \frac{\dot {M}}{P} = w N + r K + X \tag {1.24}

$$

We can convert the third term on the left-hand-side into changes in real balances by noting that $\frac{\dot{M}}{P} = \left(\frac{\dot{M}}{P}\right) + \pi \frac{M}{P}$, where $\pi = \frac{\dot{P}}{P}$, the rate of inflation. Hence:

$$

C + \dot {K} + \left(\frac{\dot {M}}{P}\right) = w N + r K - \pi \frac{M}{P} + X \tag {1.25}

$$ which illustrates the fact derived above for the Baumol-Tobin model that real balances have a return equal to minus the rate of inflation. This may be written in per-capita terms as:

$$ c + \dot {k} + \dot {m} = w + rk + x - n (k + m) - \pi m \tag {1.26}
$$ where lower case letters denote real per capita terms (recall that $m = \frac{M}{PN}$ ). Note that real balances enter the right-hand-side with a real return of $-\pi$; even though their nominal return is zero, their real return is negative due to inflation. To solve the optimization problem, it will be convenient to let $a = k + m$, where $a$ denotes total per person assets. Then we may write the budget constraint as:

$$

\dot {a} = [ w + x + (r - n) a ] - [ c + (r + \pi) m ] \tag {1.27}

$$

$r + \pi$, which is the nominal interest rate, is the opportunity cost of holding money.

Let's also note that the growth in real balances per person, $\frac{\dot{m}}{m}$ is by definition equal to the growth in nominal balances less growth in prices (i.e. inflation) and population growth, or $\frac{\dot{m}}{m} = \frac{\dot{M}}{M} -\frac{\dot{P}}{P} -n$.<sup>8</sup> If we let $\mu$ denote the growth in nominal balances, then: $\frac{\dot{m}}{m} = \mu -\pi -n$. $\mu$ is a policy variables which is set by the government. Thus if we can pin down the growth rate of real balances per person, and are given a growth rate for nominal money and for population, we will know the inflation rate.

Before we close the model, let's note that we have enough information to solve the consumer's optimization problem. The solution is characterized by the following first-order conditions from the Hamiltonian:9
First for $m$ and $c$

$$ u_{c} (c, m) = \lambda \tag {1.28}
$$

$$ u_{m} (c, m) = \lambda (r + \pi) \tag {1.29}
$$

Then from the asset accumulation equation:

$$
\dot {\lambda} - \theta \lambda = - (r - n) \lambda. \tag {1.30}
$$

Note: I've done something a little sneaky here. When I did this, I wrote the Hamiltonian as:

$$
H = u (c, m) e^{- \theta t} + \lambda e^{- \theta t} [ w + x + (r - n) a - (c + (r + \pi) m) ] \qquad (1.31)
$$

That is, I replaced the usual Lagrange multiplier with one multiplied by $e^{-\theta t}$. This is known as the present-value version of the Lagrange multiplier. This won't alter the results (remember, $\lambda$ is a function of time, so multiplying it by another function of time isn't going to change its properties). It's convenient to work with because it allows us to collapse the whole Hamiltonian expression to a time discount term multiplied by something which looks like a usual Lagrangian.

There are several things to note about this:

1. We can combine the first two first-order conditions to obtain: $u_{m}(c, m) = u_{c}(c, m)(r + \pi)$, which can
(usually) be solved for $m = \phi (c, r + \pi)$. In other words, we have a money demand equation as a function of the nominal interest rate and consumption. This is an illustration of Feenstra's point that we can get similar results to the model with money in the cash-in-advance constraint.
2. The condition for the evolution of the state variable $\lambda$ is the same as that for the problem without money.

Now, let's close the model. Let's note that in the aggregate economy, $r = f'(k)$ and $w = f(k) - kf'(k)$ (from CRS) as before. Also, let's see where these transfers come from.

Consumers demand the money, which must come from somewhere. The money is issued by the government. We will assume that this issuance is done through the transfer.[10]

What's the revenue from printing money? Money is issued at rate $\dot{M}$; the real value of this is just $\frac{\dot{M}}{P}$. This means that transfers are such that $X = \frac{\dot{M}}{P}$. Note that this means that our original budget constraint is exactly the same as it was in the Ramsey model; however, we'll assume that consumers take the government transfer as given when they decide how much money to accumulate.

### 1.4.3 Solving The Model

First, as usual differentiate the first-order condition for consumption with respect to time, to obtain:

$$
\dot {\lambda} = u_{cc} (c, m) \dot {c} + u_{cm} (c, m) \dot {m} \tag {1.32}
$$

Combine this with the third first-order condition to obtain the following equation of motion:

$$
\frac{\dot {c}}{c} = \frac{\left(\theta + n - f^{\prime}
(k) \right) u_{c}}{u_{cc} c} - \frac{u_{cm} m}{u_{cc} c} \frac{\dot {m}}{m}. \tag {1.33}
$$

Note that the first term is exactly the same as in the standard Ramsey growth model.

From the budget constraint, the other equation of motion is:

$$
\dot {k} = f
(k) - c - nk \tag {1.34}
$$

In the steady-state, per-capita consumption, capital and real balances are not growing (i.e.

$\dot{c} = \dot{m} = \dot{k} = 0)$. This implies that:

$$ f^{\prime} \left(k^{*}\right) = \theta + n \tag {1.35}
$$ and:

$$ c^{*} = f \left(k^{*}\right) - nk \tag {1.36}
$$

The condition that real balances per person not grow in the steady state (i.e. $\frac{\dot{m}}{m} = 0$ ) also implies that the rate of inflation is pinned down by:

$$
\pi = \mu - n \tag {1.37}
$$

Let's note several things about this:

1. The steady-state conditions for the capital stock and consumption are exactly the same as those under the Ramsey model. Money does not affect the steady-state values of the other variables. This implies that money is superneutral in the steady state; that is, not only do nominal balances have no real effects, but real balances have no real effects in the long-run, either.[11] In the long run, the model obeys the classical dichotomy: nominal variables are determined by nominal variables, real variables by real variables. Real balances do have an effect on the level of utility, however.
2. Out of steady state, note that if $u_{cm} = 0$, i.e. utility is separable in consumption and money, real balances are also superneutral, since the equation for the evolution of consumption is the same as it was before. If utility is not separable, then the accumulation of money has real effects along the transition path, because it affects the level of consumption and of capital accumulation. However, as we saw above, money is a bad store of value; thus, it is unlikely that money has large effects on capital accumulation simply through its role as an alternate store of value, and empirically the effects seem to be quite small.[12] This is known as the Tobin effect.

Thus we see it is possible to add money to a general equilibrium growth model, where we specify all the agents and markets, and that it has no long-run effects on capital accumulation. It may have effects along the transition path, depending on whether $u_{cm}$ is nonzero. Later this semester you will see an example of money in another general equilibrium model, in which nominal balances may have real effects and the role of money in general will be somewhat larger than it has been here.

## 1.5 The Optimum Quantity Of Money

The fact that money does affect utility but does not affect the steady-state value of other real variables means that the government can maximize the utility from holding money without having to worry about unfortunate real effects. In particular, it should try to induce people to hold real balances until in steady-state the marginal utility from holding additional real balances is zero.

Since in steady-state, changing the growth rate of nominal balances is equivalent to changing the inflation rate, this is like picking the optimal inflation rate. From first-order condition (10) (i.e. $u_{m}(c, m) = \lambda (r + \pi)$ ), we see that marginal utility of money becomes zero if we have a rate of deflation equal to the interest rate, or $\pi = -r$, which implies a rate of money growth (actually, shrinkage) of $-(\theta +n)$. Note that by doing this, we have pushed the return of real balances to be equal to the return on capital, or equivalently the nominal interest rate to zero. This result was derived by Milton Friedman in an article on the reading list some time before the Sidrauski article came out, and is known as the optimum quantity of money result. In practice, though, nominal balances have shown a distinct upward trend, and the Federal reserve has aimed for price stability, not reduced prices. However, Japan has recently seen zero (and perhaps even slightly negative) nominal interest rates.

### 1.5.1 The Quantity Theory Of Money

Note that another characteristic of the steady state is that the growth rate of nominal balances $=$ the growth rate of prices

(inflation) + the growth rate of output (population growth). This is a version of a more general proposition, called the Quantity Theory of Money, which states that nominal balances are proportional to nominal income, or $MV = PY$, where $V$ is a constant of proportionality known as velocity. $V$ has this name because it tells us how much a given quantity of money circulates through the income for a given stock of transactions (nominal income). Note that this proposition implies that

$$
\frac{\dot {M}}{M} + \frac{\dot {V}}{V} = \frac{\dot {P}}{P} + \frac{\dot {Y}}{Y} \tag {1.38}
$$ which yields the result of the first sentence, assuming that $\frac{\dot{V}}{V} = 0$.

Where does this result come from, and what is its relation to theories of the demand for money? Suppose we think of money demand as $\frac{M}{P} = L(i, Y)$, and assume a unit income elasticity so that we may write it as $\frac{M}{P} = L(i)Y$. Then we see that if we define $V = 1 / L(i)$, we have the quantity theory.

Looked at this way, velocity can change for two reasons:

- The nominal interest rate changes
- The form of the money demand function changes

Velocity changes due to the first reason are known as endogenous changes in velocity, since they are changing due to the nominal interest rate, which is something specified within the model. The second kind of velocity changes are exogenous- they are disturbances which are not specified in the model. They include things like changes in the demand for money due to the introduction of new monetary assets, or due to the introduction of ATM machines. The quantity theory's assumption is that movements in velocity due to both of these reasons are small and on average about zero. It's not clear that this is true in practice- velocity appears to have a permanent upward trend. Nevertheless, over very long periods of time, it looks like the quantity theory approximately holds (see Friedman and Schwartz, A Monetary History of the United States, for a full description). This theory is one of the oldest theories in economics still in use, older even than Adam Smith's "Invisible Hand." One can find references to the quantity theory in the writings of David Hume in the 1750s, and possibly even earlier in the 18th century. The modern version has been popularized by Milton Friedman, and the quantity theory shows up in many (although, in fact not all) monetary models. This makes sense - money should certainly be proportional to the number of transactions, and the number of transactions is probably proportional to income. Let's use this theory to look at the behavior of prices in a number of different cases. Output growth is zero in both, but in one, money is growing a $5\%$ and in the other, money is growing at $10\%$. It is useful in such models to make a plot with time on the x axis and the log of prices on the y axis, so that things growing at a constant rate are straight lines<sup>13</sup>. If money grows at rate $g$, and velocity and output are not growing, then prices will also grow at rate $g$. Hence the first economy will have prices which are a straight line with slope 5, and the second a straight line with slope 10 (Figure 1.3).

Now suppose velocity increases suddenly, for some reason. What happens to prices? Well, we can use the quantity equation to write: $P = \frac{MV}{V}$, or

$\log P = \log M + \log V - \log Y$. So if velocity jumps up, prices will immediately jump up, too (Figure 1.4).

Finally, suppose that money is growing at $5\%$, but the rate of growth suddenly increases to $10\%$. What happens? Well, we know from the first part, that we have an increased slope. However, in this case, velocity will also change. Why? Because increased money growth will lead to increased inflation, which will lower desired real balances through a higher nominal interest rate and raise velocity. Thus prices will experience a one-time jump. We'll see this kind of analysis a lot more formally and in depth in the next section.

### 1.6 Seigniorage, Hyperinflation And The Cost Of Inflation

We've seen how money can be integrated into a growth model, and a little bit of the long-run dynamics of money and prices. Now, let's look at the short-run dynamics. Let's assume a particular form of the money demand function, and look at things in discrete-time (this will be a discrete-time version of a model by Sargent and Wallace (Econometrica, 1973)).

$$

\ln M_{t} - \ln P_{t} = - \alpha \left(i_{t}\right) + \ln Y_{t} \tag {1.39}

$$

Now, recall from the Fisher equation that $i_{t} = r_{t} + E_{t}\pi_{t + 1}$, where $E_{t}$ denotes expectations taken with respect to the information set at time $t$ and that $\pi_{t + 1} = \frac{P_{t + 1} - P_t}{P_t}$. Recall that for $x$ near 1, $\ln
(x) = x - 1\$. Hence we may rewrite $\pi_{t + 1}$ as $\ln (P_{t + 1}) - \ln (P_t)$, so that $E_{t}\pi_{t + 1}$ is approximately $E_{t}[ln(P_{t + 1})] - \ln (P_{t})$. Given this, we can rewrite the money demand equation as (now using lower case letters to indicate logs):

$$ m_{t} - p_{t} = - \alpha \left(r_{t} + E_{t} p_{t + 1} - p_{t}\right) + y_{t} \tag {1.40}
$$

Let's ignore the real interest and output terms, and normalize them to zero, since they're exogenous (we could alternatively write them as a constant and not change the subsequent results). Then we have that:

$$ m_{t} - p_{t} = - \alpha \left(E_{t} p_{t + 1} - p_{t}\right) \tag {1.41}
$$

This says that if we knew the expected future price level and the current stock of money, that would tell us where the current price level has to be. The big question is then how to get the expected future price level. We will get it by assuming rational expectations, that is that people form expectations of the price level using the model. How do we apply this?

Well, first let's solve the above equation for $p_t$:

$$ p_{t} = \frac{\alpha}{1 + \alpha} E_{t} p_{t + 1} + \frac{1}{1 + \alpha} m_{t} \tag {1.42}
$$

Now, let's lead it one period, to obtain:

$$ p_{t + 1} = \frac{\alpha}{1 + \alpha} E_{t + 1} p_{t + 2} + \frac{1}{1 + \alpha} m_{t + 1} \tag {1.43}
$$ and let's take expectations:

$$

E_{t} p_{t + 1} = \frac{\alpha}{1 + \alpha} E_{t} \left(E_{t + 1} p_{t + 2}\right) + \frac{1}{1 + \alpha} E_{t} m_{t + 1}. \tag {1.44}

$$

Now, using the law of iterated expectations, $E_{t}(E_{t + 1}p_{t + 2}) = E_{t}p_{t + 2}$, since your best guess today of your best guess tomorrow of the price the day after tomorrow is just your best guess today of the price the day after tomorrow.[14]

Let's substitute this into our original equation for $p_t$, to obtain:

$$ p_{t} = \left(\frac{\alpha}{1 + \alpha}\right)^{2} E_{t} p_{t + 2} + \frac{1}{1 + \alpha} \left(m_{t} + \frac{\alpha}{1 + \alpha} E_{t} m_{t + 1}\right) \tag {1.45}
$$ repeating this operation, we obtain:

$$ p_{t} = \lim_{n \rightarrow \infty} \left(\frac{\alpha}{1 + \alpha}\right)^{n} E_{t} p_{t + n} + \frac{1}{1 + \alpha} \left(m_{t} + \frac{\alpha}{1 + \alpha} E_{t} m_{t + 1} + \left(\frac{\alpha}{1 + \alpha}\right)^{2} E_{t} m_{t + 2} + \dots\right) \tag {1.46}
$$

If we assume that the expected path of the price level is nonexplosive, so that the first term goes to zero, $^{15}$ then we're left with only the second parenthetical term.

This implies that the current price level depends on not only the current but also the entire expected future path of the money stock. To go further, I would either need to give you:

- Explicit values for the expected future path of money
- A stochastic process for money, from which you could then derive the expected future path of the money stock.

We can use this framework to analyze what happens when there are anticipated and unanticipated changes in monetary policy (i.e. in the way $M$ moves).

For example, suppose it is announced that $M$ is supposed to jump at some point in the future.

What should happen to the price level?

Well, it must be the case that the price level jumps at the time of the announcement, because the expected future value of money has changed. The price level can't jump at the time of the change.

Why? Well, you've seen the math, which has that implication. The intuition is that the price level is expected to be higher than it was in the future. If there were a jump at the time of the change, we would then expect that holding money at the time of the change would involve a capital loss.

But we can't have an expected capital loss like this; just before the time of the change, people would be off their money demand curves. Hence prices must jump now, then gradually increase, to insure that there is no expected discrete capital loss.

**Seigniorage**

When we discussed the Sidrauski model, we noticed that in the act of issuing money, the government was in fact also collecting revenue. This revenue is known as seigniorage, from the French seigneur, or lord<sup>16</sup>. It has been an important source of revenue for some countries.

The problem with seigniorage, the revenue from printing money, is that printing money increases inflation, which reduces the amount of revenue the government can collect. If the government wishes to continue to pay its bills by printing money, it has to print it at a faster and faster rate.

This can be seen by looking at the definition of seigniorage: $\frac{\dot{M}}{P} = \frac{\dot{M}}{M}\frac{M}{P}$. The first part is the growth in the nominal money stock; increasing money growth increases the revenue from seigniorage.

The second part is real balances, which decreases with increased money growth because increased inflation reduces money demand. To talk about this decrease sensibly, we need a specification for the demand for money.

Let's do this by using the Cagan money demand function, which specifies that:

$$
\frac{M}{P} = Y e^{\alpha (- r - \pi)} \tag {1.47}
$$

If we substitute this into the expression for seigniorage, and note that the rate of inflation is just equal to the growth rate of the money stock in steady state, we can write the expression for seigniorage as just:

$$
Y \pi e^{\alpha (- r - \pi)} \tag {1.48}
$$

Choosing the rate of inflation which maximizes this has the first order condition:

$$
Y (1 - \alpha \pi) e^{\alpha (- r - \pi)} = 0 \tag {1.49}
$$

Thus seigniorage is zero when $\pi = 0$, is maximized when $\pi = \frac{1}{\alpha}$ and then decreases thereafter, although it never goes to zero. Seigniorage has a Laffer curve, like any other kind of tax.

Note that this tax is distortionary like many other kinds of taxes, so we should have a mix of distortionary taxes.

**Hyperinflation**

The principle problem with seigniorage is that governments tend to overdo it when they use it; that is, they tend to print increasingly large amounts of money, leading to large amounts of inflation. Why? Well, often governments which resort to seigniorage to pay their debts have no other source of finance-in particular, they may be unable or unwilling to raise taxes.

Furthermore, the government may not understand the economics, or may hope that they can consistently fool people by printing money at a faster rate than people expect prices to rise.

The usual outcome in such cases is hyperinflation, defined as a rate of inflation exceeding 50 percent per month. This is important because inflation rates at this level or above tend to be very costly; we'll say more about the costs of inflation in a little bit, but you might imagine if inflation gets very high, people spend a lot of time trying to hold as little money as possible, and the distribution of relative prices becomes somewhat confused.

One could model hyperinflations by specifying an expectations mechanism in which people don't realize what's happening immediatelyin other words, with non-rational expectations. Blanchard and Fischer, pp. 195-201, have such a model. I won't derive it here, but essentially what one can show is that if people form inflationary expectations based on past rates of inflation, the government can always stay one step ahead of them by increasing the rate of money growth, and thus getting a little more revenue. In the limit, both the rate of money growth and inflation approach infinity.

Fortunately, stopping hyperinflations is something that economists think they actually know how to do. The root cause of hyperinflations is usually the inability to raise revenues by other means to pay off government debts. Therefore putting the fiscal house in order by reducing spending or increasing taxes is an important step. Since many taxes are usually collected in nominal terms, hyperinflation reduces the value of taxes collected, so stopping the hyperinflation will in and of itself help this (this is known as the Olivera-Tanzi effect). Simultaneous with the fiscal reform, the government should stop printing money. Note that if it does so cold turkey, the resulting drop in expected inflation would result in increased money demand immediately; to satisfy this, we have to have a one-time increase in the level of the money stock, followed by the reduction in money growth (Figures 1.5(a), 1.5(b)).

The problem with implementing this, of course, is that after printing money in large quantities for a long-period of time, announcing that there will be a one-time only increase in the stock of money followed by zero money growth may not be credible. There is a large literature on how to establish credibility in monetary policy, in general, which I won't go into here. Essentially, that literature argues that credibility is built up from one's past reputation. In this case, that would seem to imply that the old central bankers be replaced, since their reputation would work against them.

**Costs Of Inflation**

Let me conclude with a brief discussion of the costs of inflation.

I have already talked a little about this in the context of hyperinflationit should be intuitively pretty clear there that inflation is quite costly. But what about the costs of inflation when the level of inflation is moderate?

This is a subject which isn't well understoodbasically, people seem to find inflation much more costly than economists can find reason for. It's traditional to divide the costs of inflation into two parts: The costs of anticipated inflation, and the costs of unanticipated inflation.

Anticipated Inflation:

- Shoeleather costs: people have to go to the bank more frequently (and hence wear out their shoes).
- Menu costs: costs of changing prices; L. L. Bean has to print catalogs more often if inflation is higher.
- Liquidity effect: High inflation means high nominal interest rates, which means that payments made in nominal terms on debt (such as a mortgage) will be high. In real terms, this won't matter, but if for some reasons you are limited in nominal terms by the amount you can borrow, high inflation will limit your borrowing.

**Unanticipated Inflation:**

The costs here are a little more obvious

- The biggest effect is redistribution from creditors to debtors. For example, consider thirty-year mortgages written in the 1960s; the average
(nominal) interest rate on mortgages in 1965 was 5.38 percent. Over the next thirty years, inflation averaged 6.5 percent.

This led to a negative real interest rate, which was good for homeowners but bad for banks, which had their comeuppance in the mid 1980s. This fact has sometimes led people mistakenly to think that inflation is always good for debtors but bad for creditors. For example, during the late 19th century, when prices were falling, farmers, who were debtors, agitated for allowing silver as well as gold to be used as money. This would have produced inflation, which the farmers reasoned would have allowed them to pay back their loans much more easily. But if this were expected, nothing would change. Economic historian Hugh Rockoff The Wizard of

$Oz$ is in fact a monetary allegory which advocates just what the farmers wanted.[17]

The solution to such problems is simply to index things. It's not clear why nominal assets aren't indexedsome governments (such as that of the U. K.) do issue them; the U. S. just started last year. It would be really helpful for economists, because then we'd have a measure of both the real interest rate and expected inflation.

- Many taxes are in fact on nominal quantities. We get what's called "bracket creep" when peoples' income rises due to inflation and they are pushed into higher tax brackets. This has been eliminated for labor income from the U. S. tax code, but capital gains taxes are still not indexed, for example.

Inflation can actually be beneficial by increasing the flexibility of wages and prices. If nominal wages can't be lowered for some reason, inflation can lower real wages.

## 1.7 Problems

1. Consider an economy with a money-demand function given by the Baumol-Tobin model. $Y$ and $M$ are constant. Assume now that the real interest rate has been constant at $2\%$, and that it now jumps to $8\%$, and will remain at that level. How will the price level in the new steady-state compare to the price level in the old steady state?
2. (Old final question) Suppose that per capita money demand is given by the standard Baumol-Tobin model:

$$
\frac{M}{P} = \sqrt{\frac{FY}{2 i}} \tag {1.50}
$$

Where $Y$ is real income per capita, $M$ is nominal money balances per capita, $P$ is the price level, $i$ is the nominal interest rate, and $F$ is the cost of going to the bank. Inflation is equal to zero and the real interest rate is constant. Suppose that total real income in this economy is growing at a rate of $10\%$ per year. For each of the two cases below, calculate the rate at which the money supply must be growing, and describe what is happening to velocity over time.

(a) Income per capita is constant, and the population is rising at $10\%$ per year.

(b) Population is constant, and income per capita is rising at $10\%$ per year.

3. Consider an economy with a money demand function:

$$
\frac{M}{P} = Y e^{- i} \tag {1.51}
$$

Assume that the real interest rate is $5\%$, Y is growing at $3\%$ and money is growing at a rate of $20\%$ (and that people expect it to keep growing at this rate). All of a sudden, the growth rate of money falls to zero (and people expect it to remain at zero). What will happen to the price level? To the rate of inflation? Draw a picture of the log of the price level.

4. (Old midterm question) Consider the problem of maximizing seigniorage in a growing economy. Money demand is given by:

$$
\frac{M}{P} = Y e^{- i} \tag {1.52}
$$

The real rate of interest is zero. Output grows exogenously at rate $g$. Find the rate of inflation which maximizes steady-state seigniorage as a fraction of output. Explain why the seigniorage-maximizing rate of output depends on the growth rate of output.

5. Consider an infinitely-lived individual who receives real wage of 100 per period. The price level at the beginning of her life is 1, and she buys a house of value 500 the moment she is born. She pays for the house by taking out a mortgage for its full price. She never repays any of the any of the nominal principal of her loan; instead, she pays interest at rate i for perpetuity. The real interest rate is $r$ and the rate of inflation is $\pi$.

What money she does not spend on mortgage payments she consumes. She is unable to borrow for purposes other than buying a house. Her utility from non-housing consumption is:

$$
V = \int_{0}^{\infty} e^{- \theta t} cdt \tag {1.53}
$$ where her time discount rate is $\theta$. Note that the instantaneous utility function is assumed to be linear.

(a) Find the path of her real mortgage payments
(b) Calculate the path of her real consumption
(c) Why does inflation make this person worse off? Assume $r = 5\%$, $\theta = 10\%$ and

$\pi = 10\%$. Calculate the reduction in her real wage she would accept in order to live in a world with zero inflation.

6. Analyze the relation between inflation and real seigniorage in the case where money demand is described by the Baumol-Tobin model and the real interest rate is zero

# 1.7. Problems

7. A person lives for two periods. His utility function is $U = \ln(c_1) + \ln(C_2)$. In the first period, he does not earn any income, while in the second period he earns a wage with a real value of
8. In the first period, he can borrow at a nominal interest rate of $10\%$ per period. It is known that the actual rate of inflation will be $0\%$ with probability 0.5 and $20\%$ with probability 0.5.

What would be the value to this person, expressed in terms of real income in the second period, of being able to borrow at a guaranteed real interest rate of $0\%$.

8. Assume the money demand function is (in logs):

$$ m_{t} - p_{t} = - \alpha \left(E_{t} p_{t + 1} - p_{t}\right) \tag {1.54}
$$ and that expected inflation is set equal to last period's inflation:

$$

\left(E_{t} p_{t + 1} - p_{t}\right) = \left(p_{t} - p_{t - 1}\right) \tag {1.55}

$$

Solve for the price level in period $t$ as a function of the level of the money stock in current and past periods. Why is it the case that, holding money in period $t$ constant, a higher level of money in period $t - 1$ leads to a lower price level in period $t$.

9. (Old final exam question) Assume that money demand in each period is given by:

$$ m_{t} - p_{t} = \gamma - \alpha \left(E_{t} p_{t + 1} - p_{t}\right) \tag {1.56}
$$ where $m$ and $p$ are the logs of the money supply and the price level. It is known with certainty from time zero that the pattern of the money supply will be as follows: for periods $0, \ldots, s$ $m = 1$. For periods $s + 1, \ldots, \infty$ $m = 2$. Solve for the price level in period $s$.

10. Suppose that the demand for money is described by the following familiar model:

$$ m_{t} - p_{t} = - \alpha \left(E_{t} p_{t + 1} - p_{t}\right) \tag {1.57}
$$

Suppose that at time $T - 1$, the stock of money is $\bar{M}_1$, and is expected to remain at that level for the indefinite future. Now, at time $T$, the stock of money is raised to level $\bar{M}_2$, and it is expected to remain there for the indefinite future. Derive the price level for periods $T - 1, T, T + 1, T + 2, \ldots$.

11. Consider an economy in which money has been growing at rate $\mu$ for some time and is expected to continue to grow at that rate, so that:

$$ m_{t} = \mu + m_{t - 1} + \epsilon_{t} \tag {1.58}
$$ where $m_t = \ln(M_t)$ and $\epsilon_t$ is iid with zero mean. Money demand is described by the familiar function:

$$

\frac{M_{t}}{P_{t}} = Y_{t} e^{- \alpha \left(r_{t} + E_{t} \frac{P_{t + 1} - P_{t}}{P_{t}}\right)}. \tag {1.59}

$$

You may normalize any irrelevant exogenous variables as you see fit. Assume the classical dichotomy holds. Also, recall that $\ln (1 + x) \approx x$ for small $x$. You need not completely simplify your results.

(a) Solve for the price level at time $T$

Now suppose that a monetary reform is announced at time $T$. If the reform is successful, the money stock will be:

$$ m_{t} = m_{t - 1} + \epsilon_{t} \tag {1.60}
$$ from time $T + 1$ onwards. The reform has probability $\theta$ of success. If it is unsuccessful, the money supply process remains unchanged from the previous equation, and it is believed that the reform will not be tried again.

(b) What is the new price level at time $T$ after the announcement has been made?
(c) Work out the new price level at time $T + 1$, first assuming that the reform succeeds and then assuming that it fails. Provide intuition for your results.

Now suppose it is believed that if the reform fails, it will be tried once and only once more. The new reform has a probability of success $\phi < \theta$.

(d) Work out the price level at time $T$ after the announcement of the reform package has been made. Compare your answer to the one obtained in part
(b) and explain.
(e) Work out the price level at time $T + 1$ first assuming the reform has been successful and then assuming it has been unsuccessful. Compare your answer to the one obtained in part
(c) and explain.

12. Consider an economy where money demand has the Cagan form:

$$

\frac{M}{P} = Y e^{- \alpha i}.

$$

Assume the Fisher equation relating nominal and real interest rates holds. Suppose there are two types of beings in the economy: economists, who form expectations rationally, and normal people, who expect prices to grow at rate $\gamma$ forever. Normal people comprise fraction $\beta$ of the population.

(a) Solve for the price level and the inflation rate, assuming the Classical dichotomy. You may also make any convenient normalizations you wish.
(b) Solve for the price level and inflation rate under the assumption that Alan Greenspan has in fact been implementing a policy of growing the money stock at $\gamma$ percent per year. What happens to prices and inflation as $\beta$ gets close to one? What happens as it gets close to zero?

(c) Now suppose that Fed Chairman Alan Greenspan is replaced by his evil Mirror Universe counterpart. The Evil Greenspan is only interested in maximizing the amount of seignorage collected by the government. What growth rate of the money stock maximizes the amount of seignorage?
(d) Assume the growth rate of the money stock you derived in the previous part is implemented. At some point, the normal people realize that a change in regime has occurred, and adjust their inflationary expectations to be equal to the growth rate of the money stock you derived in the previous part. Describe the path of the price level and inflation from a time before this realization to a time after it.

13. Consider the following variant of the Sargent and Wallace/Brock model of forward determination of the price level:

$$ m_{t} - p_{t} = - \alpha \left(r_{t} + \left(E_{t} \left(p_{t + 1}\right) - p_{t}\right)\right) + y_{t} \tag {1.61}
$$

$$ y_{t} = - \beta r_{t} \tag {1.62}
$$

$$ y_{t} = d \left(p_{t} - E_{t - 1} p_{t}\right), \tag {1.63}
$$ where all notation is standard and all variables (except for $r_t$ ) are in natural logs.

(a) Provide economic interpretations for these equations.
(b) Suppose the money stock has been growing for since time $t = 0$ at rate $\gamma$, and is expected to grow at that rate forever. Define $m_0 = \bar{m}$. Solve for all endogenous variables at time $t$. (Hint: For this part and the next two, it isn't necessary to use recursive substitution to solve the expectational difference equation. Use intuition to get a much simpler solution.)
(c) Suppose the assumptions of the previous question hold, but unexpectedly at time $T$ the money stock jumps by an amount $\epsilon$. This jump is expected never to happen again. Solve for all endogenous variables.
(d) Now assume instead that at $T$, the subsequent growth rate of the money stock is expected to increase to $\gamma + \epsilon$ and remain permanently at that rate. Solve for all endogenous variables.

14. Consider a version of the Sidrauski money-in-the-utility-function model in which nominal government debt is used to carry out transactions instead of money. There are two stores of value: capital, which has real return $r$, and nominal debt, which has nominal return $z$. Let $\pi$ denote the rate of inflation and assume that $z < r + \pi$. The government also purchases a constant amount $g$ per capita of goods and services; this spending does not contribute to utility. The spending and debt service is financed by per-capita lump-sum taxes in the amount $\tau$ and issuance of new nominal debt. Assume agents have discount rate $\theta$, and that there is no population growth or technical progress. Let $k$ denote the per-capita capital stock and $b$ the per-capita stock of nominal debt. Production is given by $y = f(k)$.

(a) Write down the consumer's optimization problem.
(b) Write down the equation of motion for nominal debt.
(c) Solve the optimization problem to give the joint behavior of consumption, capital and debt.
(d) Under what conditions does nominal debt have no effect on consumption or capital accumulation?
(e) Suppose there is a permanent rise in per-capita taxes, $\tau$. Describe the transition path of and steady-state effects on capital, consumption and debt.
(f) Suppose there is a permanent rise in per-capita government purchases, $g$. Describe the transition path of and steady-state effects on capital, consumption and debt.
(g) What happens if $z = r + \pi$? If $z > r + \pi$?

15. Consider the following model of money and growth (due to Tobin):

There are two assets: money and capital. Population grows at rate $n$. There is no technical progress. The government prints nominal money at rate $\mu$. Seignorage is remitted back to the public as a lump-sum transfer. Denote the per-capita production function by $f(k)$. Depreciation occurs at rate $\delta$. The representative agent saves a constant fraction $s$ of her income. Suppose that money demand per capita is proportional to the product of consumption and the nominal interest rate, so that $\frac{M}{PN} = \phi (r + \pi)c$. All notation is standard.

(a) Write down the equation of motion for the capital stock for this particular economy.
(b) Derive the steady-state growth rates and levels of output and capital stock.
(c) Do any of your answers in part
(b) depend on the growth rate or level of the money stock in the steady state?
(d) Compare results with the results from the Sidrauski money-in-the-utility-function growth model. Try to explain any differences between the two models.

## Chapter 2

## Nominal Rigidities And Economic Fluctuations

In Ec207 and so far in Ec208, we have only seen models in which the classical dichotomy holds- that is, real variables are determined by other real variables, and nominal variables by nominal and real variables, but nominal variables don't determine real variables. $^{1}$

In Economics 207, you saw that completely real models had significant difficulties explaining the joint behavior of real macroeconomic variables in the short run. In this section of the course, we will pursue an alternative set of models, sometimes called Keynesian economics, which involve interactions between real and nominal variables. By allowing for some form of nominal price or wage rigidity, these models will imply that changes in the nominal stock of money, and more broadly changes in aggregate demand, will have effects on output, unemployment and other real variables. Hence the potential list of candidates for the causes of economic fluctuations becomes much larger.

We will approach this topic chronologically. In the first section, we will begin by looking at the version of the model generally agreed upon by the mid 1960s. This version, referred to as the "neoclassical synthesis," is still taught in undergraduate classes today. It involved simple aggregate models and a large number of ad hoc assumptions, but provided a fairly useful framework for describing the short-run dynamics of money and prices.

The lack of microeconomic foundations for this model was troubling to many. In the late 1960s and early 1970s, several economists attempted to remedy this deficiency by taking a small-scale Walrasian GE model and adding fixed prices and wages to it. The resulting models, known as disequilibrium economics, shared many predictions with the original Keynesian models. They are the subject of section
2. In the third section, we present an attempt to generate Keynesian results in a model in which expectations are considered more carefully than in the previous model. This model, by Robert Lucas, has the troubling implication that anticipated monetary policy has no real effects.

In the fourth section, we show that models with rational expectations need not imply impotence of monetary policy. We first present models with long-term nominal contracts. After a brief discussion of the macroeconomic effects of imperfect competition, we go on to discuss models in which prices are inflexible because it is costly to change prices. We study these "menu cost" models first in a partial equilibrium framework, then in a static GE framework, and finally in a dynamic GE framework. These models, written in the 1980s and 1990s, are often lumped together until the title "New Keynesian Economics."

We will conclude by looking at some empirical studies of these models, and new directions for this literature. We shall see that although the forms of these models have changed over the years, many of the implications have not.

# 2.1 Old Keynesian Economics: The Neoclassical Synthesis

The standard model of the economy in the short-run which is still presented in undergraduate macroeconomics textbooks (e.g. Mankiw) is the Aggregate Demand/Aggregate Supply model. The Aggregate Demand side was developed by John Maynard Keynes and John Hicks in the 30s and 40s. The Aggregate Supply side, although referred to by Keynes, did not receive its full development until the 1950s and early 1960s. The resulting model is also known as the "neoclassical synthesis."

In general terms, the model assumes there are two relationships between output and the price level: a downward sloping relationship, aggregate demand, and an upward sloping one, aggregate supply. Aggregate demand is usually associated with the joint demand for goods and services of consumers, firms and the government $^2$, while aggregate supply arises from the pricing and production decisions of firms. The intersection of the two curves determines the price level and output. Fluctuations in either aggregate demand or aggregate supply can lead to short-run variations in output and prices. It is assumed that in the long-run, aggregate supply is vertical, and variations in aggregate demand only lead to variations in prices (Figure 2.1).

For the moment, make the extreme assumption that prices are completely inflexible in the short run, so that aggregate demand disturbances affect output completely. Under this assumption, we shall derive the components of aggregate demand, and look at the short-run effects of various shocks to output.

The detailed version of the aggregate demand model is known as the IS/LM

# 2.1. Old Keynesian Economics: The Neoclassical Synthesis29 Model (So Named By Hicks). This Model Specifies Equilibrium Behavior In The Markets For Goods, Money And Bonds.

Recall that from the national income accounting identities, Income=Output=Expenditure. In a closed economy, this implies that $Y = C + I + G$, where $Y$ is real GDP, as usual, $C$ is consumption, $I$ is investment and $G$ is government purchases of goods and services. Next, make the following behavioral assumptions about each of the components of expenditure:

- $C = C(Y - T)$. Consumption is a positive function of current disposable income. It is assumed that $0 < C' < 1$. This function, the Keynesian consumption function, is clearly not consistent with the pure LCH/PIH.

Interest rates and expected future income should appear. However, it is consistent with LCH/PIH if a large fraction of the population is liquidity constrained.

- $I = I(r)$. $r$, the real interest rate, is the opportunity cost associated with investing. Thus the dependence is negative. We shall see later that this may be a valid simplification under some circumstances.
- $G$ and $T$, the fiscal policy variables, are assumed exogenous and fixed.

Given this, one can write the national income accounting identity as: $Y = C(Y - T) + I(r) + G$. Note that as usual, one can rewrite this as: $Y - C(Y - T) - G = I(r)$, or National Saving=Investment. This relationship is known as the IS curve, for investment=saving. Provided aggregate supply is horizontal, this equation also represents goods market equilibrium.

Equilibrium in the money market requires that money supply equals money demand. We can write this condition as: $\frac{M}{P} = L(i, Y)$, where $i$ is the nominal interest rate. This condition is uncontroversial, since one can derive the money demand function from more microeconomic models such as the Baumol-Tobin model. It is known as the LM curve, from demand for liquidity=supply of money.

Since prices are assumed fixed, this implies that expected inflation is zero. Through the Fisher equation, this implies that ex ante real rates are equal to the nominal interest rate, so that $r = i$. The results would not be modified qualitatively if one assumed a constant expected rate of inflation.<sup>4</sup>

We need not specify equilibrium conditions in the market for bonds (which comprise the alternative to holding money), because by Walras' Law, that market clears provided the other two markets clear.

Thus our two equilibrium conditions are:

$$

Y = C (Y - T) + I

(r) + G \tag {2.1}

$$

$$

\frac{M}{P} = L (r, Y) \tag {2.2}

$$

The exogenous variables are $G, T, M$ and $P$, and the endogenous variables are $Y$ and $r$.

We can plot these relationships in a graph with the two endogenous variables on the axes (Figure 2.2)

This yields the usual predictions that expansionary fiscal policy (i.e. $G$ up or $T$ down) will increase output and raise real interest rates (crowding out). Expansionary monetary policy will increase output and lower real interest rates (Figure 2.3). We can state these results more formally by totally differentiating the two equations, to yield:

$$ d Y = C^{\prime} (d Y - d T) + I^{\prime} dr + d G \tag {2.3}
$$

$$ d \left(\frac{M}{P}\right) = L_{r} dr + L_{Y} dy, \tag {2.4}
$$ where derivatives are indicated by primes or subscripts, as appropriate. We can solve out for $dY$ and $dr$, either by direct substitution, or by using Cramer's rule. Either way, solving out for $dY$ obtains:

$$ d Y = - \left(\Gamma C^{\prime}\right) d T + \Gamma d G + \Gamma \frac{I^{\prime}}{L_{r}} d \left(\frac{M}{P}\right) \tag {2.5}
$$ where

$$

\Gamma = \frac{L_{r}}{L_{r} \left(1 - C^{\prime}\right) + I^{\prime} L_{Y}} \tag {2.6}

$$

If the LM curve is nearly horizontal, so that $\frac{L_Y}{L_r}$ is nearly zero, then approximately $\Gamma = \frac{1}{1 - C'}$, and

$$ d Y = \frac{- C^{\prime}}{1 - C^{\prime}} d T + \frac{1}{1 - C^{\prime}} d G \tag {2.7}
$$

The term $\frac{1}{1 - C'}$ is known as the Keynesian multiplier. Note that since $C'$, the marginal propensity to consume out of disposable income, is less than one, this number is greater than one. Thus changes in government spending have a more than one-for one effect on output.

This works through an expenditure mechanism. The initial increase in spending, $dG$ represents income to someone. Some fraction of this income, $C' dG$ is spent. This additional spending is also income to someone; these people spend some fraction $C'$ of it, so that their increased spending is $(C')^2 dG$. The process continues, so that the total increase in expenditure (and therefore output) is:

$$ d G + C^{\prime} d G + \left(C^{\prime}\right)^{2} d G + \left(C^{\prime}\right)^{3} d G + \dots \tag {2.8}
$$ which simplifies to: $\frac{1}{1 - C'} dG$, as above.

Note that the assumption $\frac{L_Y}{L_r} \approx 0$ implies that the effects of monetary policy on output are small. This conclusion was disputed by a group of economists who believed that most short-run fluctuations in output were due to shocks to the money supply. Because of this view, they were known as Monetarists; their leader was Milton Friedman (who, with Anna Schwartz, wrote an 800 page monetary history of the United States referred to in the previous chapter). Although at the time, their views were seen as a significant challenge to Keynesian views, from today's perspective the controversy can simply be categorized as disagreement over the magnitudes of derivatives within the Keynesian model. Thus, Monetarists believe $C'$ to be small, and Keynesians believed it to be large. Monetarists believed $L_r$ to be small, an implication one would get from the quantity theory of money, while Keynesians believe it to be large. Today, the Monetarist perspective has been largely accepted, and money is seen as an important component of models of economic fluctuations.

Finally, note that the IS and LM curves can jointly be solved to produce a relationship between output and prices. Invert the LM curve, to obtain the real interest rate as a function of output and real balances, and then plug it into the IS curve. The result is that $Y = g\left(\frac{M}{P}\right)$. Note that if this function is log-linear, we return to the quantity theory, since that can be rewritten as $Y = V\left(\frac{M}{P}\right)$. We could also have obtained the same result graphically, be observing that an increase in the price level is identical to a contraction in the money stock, and will reduce the level of output (Figure 2.4).

# 2.1.1 Open Economy

This model may easily be extended to the open economy. In this case, the national income accounting identity tell us to rewrite the IS curve as:

$$

Y = C (Y - T) + I

(r) + G + NX (\epsilon), \tag {2.9}

$$ where $NX =$ net exports, exports-imports, and $\epsilon$ is the real exchange rate. If the nominal exchange rate, defined as foreign currency units per domestic unit, is labeled $e$, and if asterisks denote foreign variables, then

$\epsilon = \frac{eP}{P*}$. For fixed domestic and foreign price levels, increases in the nominal exchange rate $e$ lead to real appreciations, since it now requires fewer domestic goods to obtain a given foreign good.

The dependence of $NX$ on $\epsilon$ is negative, since appreciations should lead to an increase in imports and a decline in exports, and vice-versa. Note that we can manipulate this relationship to yield $S - I = NX$, which in other words states that the current account=- the capital account, or that trade deficits must be paid for by other countries accumulating claims on domestic assets. In principle, this also implies that $S$ and $I$ need not move togetherin other words, a country with a relatively low $S$ can have a high $I$.

Also assume that there is perfect capital mobility, so that by arbitrage i = i* - E[ε]. One can derive this by noting that if one invests \$1 in an asset denominated in domestic currency, one will get \$1 + i next period. One should get the same expected return by investing abroad. For each dollar, one gets e1 units of foreign currency. Per unit of foreign currency, one will get 1 + i* next period. Converting this back into U. S. currency, at rate e2, one's total return is (1+i*)e1 / e2. Taking logs, and using the approximation that log(1 + x) = x for small x, we have that: i = i* - e2 - e1 / e2, which implies the result given above.

For now, let's look at the completely static case, and assume that $E[\frac{\dot{e}}{e}] = 0$. This implies that the nominal interest rate is completely determined by the foreign nominal interest rate, a small open-economy assumption. This case was first analyzed by Mundell and Fleming. Then our two relationships are (assuming fixed prices, again):

$$
Y = C (Y - T) + I
(r) + G + NX \left(\frac{e P}{P^{*}}\right) \tag {2.10}
$$

$$
\frac{M}{P} = L \left(i^{*}, Y\right) \tag {2.11}
$$

Here, the exogenous variables are $G, T, M, P, P*$ and $i*$ and the endogenous $Y$ and $e$. Plot the two relationships with $Y$ on the horizontal and $e$ on the vertical axes. The IS relationship is a downward-sloping relationship and the LM relationship is a vertical line (Figure 2.5).

We can consider the effects of policies and shocks in this model under two cases: one in which the nominal exchange rate is allowed to vary freely, and one in which it is held fixed. Nominal exchange rates are fixed through government intervention in currency markets. If the government wishes to cause an appreciation of its currency, it sells foreign currency from its reserves to buy back its own currency. If it wishes to cause a depreciation, it sells its own currency to buy foreign currency.<sup>7</sup>

In the first case, fiscal policy or other shocks to the IS curve simply leads to a change in the nominal exchange rate, but has no effect on the level of output. Intuitively, this occurs because the increase in nominal interest rates which an increase in government spending would normally cause leads to an appreciation, which reduces the level of net exports until the increase in aggregate demand is negated. Monetary policy has effects on output, as usual.

In the case of fixed exchange rates, the opposite is true. There cannot be independent monetary policy, because the central bank must use monetary policy to keep the nominal exchange rate at the same level as before. Any increase in the money supply must be completely counteracted. Conversely, increase in fiscal policy are very effective, because the central bank must then increase monetary policy in order to bring the exchange rate back to its previous level. Now, let's turn to the dynamic case, where expected appreciations are no longer zero. Invert the LM curve, and substitute in for the nominal interest rate to write:

$$
E \left[ \frac{\dot {e}}{e} \right] = i^{*} - i \left(\frac{M}{P}, Y\right) \tag {2.12}
$$

Let's also assume that output adjusts sluggishly, so that

$$
\dot {Y} = \phi [ A (Y, \frac{e P}{P *}) - Y ] \tag {2.13}
$$ where $A$ denotes absorption, the level of domestic demand, and $\frac{\partial A}{\partial Y} < 1$.<sup>8</sup>

This gives us a dynamic system in two variables. We can solve for the two steady-state conditions (namely, $\dot{Y} = 0$ and $\dot{e} = 0$ ) and plot them as follows:((Figure 2.6).

Using this, we can then determine the dynamics of the system, and find that, as usual, it is saddle-path stable, with a unique stable arm (Figure 2.7).

Consider the following policy experiment: There is an increase in the money supply. This shifts the $\dot{e} = 0$ schedule to the right. The new stable arm and new system are as in the diagram below (Figure 2.8). Output adjusts sluggishly, but the exchange rate may move instantaneously. Thus, it falls, and then slow rises over time to its new, lower value.

Intuitively, what has happened is that the increase in the money supply leads to a lower domestic nominal interest rate. In order for uncovered interest parity, the condition that rates of return must be equalized, to hold, it must be the case that people expect an appreciation. Thus the exchange rate must initially drop by more than it eventually will to cause this appreciation.

This result is known as "overshooting," and was first derived by Dornbusch (JPE, 1974). It is a more general feature of rational-expectations models, that variables must initially move more than they will in the end.

The foregoing was a somewhat simplistic introduction to the subject of international finance. For a much more detailed presentation, see Obstfeld and Rogoff, Foundations of International Macroeconomics.

# 2.1.2 Aggregate Supply

The details of aggregate demand are fairly uncontroversial. There is significantly more controversy regarding aggregate supply. Keynes initially focused on the case where (short-run) aggregate supply is horizontal, which implies that movements in aggregate demand have no effect on prices in the short run. This is somewhat unrealistic, and so it was quickly assumed that aggregate supply was upward-sloping. While we will see the theoretical reasons for this view

(which in most cases were not made explicit until much later), it gained considerable empirical support in the 1950s by the discovery of British economist A. W. Phillips of a seeming long-run negative relationship between inflation and unemployment. Thus, one could simply write down $\pi = f(u)$.<sup>9</sup>

It was later found that the relationship worked better if one wrote $\pi_t = \pi^e + f(U)$, where $\pi^e$ is expected inflation. In practice, it was assumed that $\pi_t^e = A(L) \pi_{t-1}$, or that expected inflation was a distributed lag of past inflation.[10] This expectations formation mechanism is known as adaptive expectations, since expectations of inflation evolve over time in response to past inflation.

People told several stories which were consistent with this relationship:

1. The sticky wage story: Suppose workers had to set their wage some time in advance. Suppose they have a target real wage $\omega$. They will then set their nominal wage $W = \omega P^{e}$. The actual ex post real wage paid after $P$ is realized will then be $\frac{W}{P} = \omega \frac{P^{e}}{P}$.
If we assume that firms are on their labor demand curves, then $L^{D} = L^{D}\left(\frac{W}{P}\right) = L^{D}\left(\omega \frac{P^{e}}{P}\right)$. This implies that if prices are un expectedly high, the actual real wage paid will be low, labor demand will be high, and therefore output will be high.
2. Money illusion or worker misperception story: Suppose workers are ignorant of the price level, but firms are not. Then while labor demand will be based on the actual real wage, labor supply will only be based on the expected real wage, so that $L^{D} = L^{D}\left(\frac{W}{P}\right)$, but $L^{S} = L^{S}\left(\frac{W}{P}\frac{P}{P^{e}}\right)$. Here, if $P > P^{e}$, labor supply will increase, the amount of labor hired will go up, and output will go up. Workers are in effect tricked into working more because they confuse nominal wage increases with real wage increases.
3. Sticky prices: Assume some firms are able to adjust prices completely, but some firms cannot change their prices, but must set them in advanced based on expectations of the price level. Then clearly the AS curve will slope upwards, where the slope depends on how many firms are able to change prices.

All three stories imply that unexpected inflation will be associated with a higher level of output. The first two stories (the first of which dates back to Keynes himself) have the implication that the real wage is countercyclical (that is, covaries negatively with the deviations of output from trend). This was found by Tarshis and Dunlop to be untrue in the 1930s shortly after the publication of the General Theory, and is still untrue today. Keynesians have tended to rely more on the last theory as a result.[11]

Even given the presence of several theories and strong empirical support, several economists were uncertain about the formulation of aggregate supply given above. Milton Friedman, in his 1968 AEA presidential address, expressed doubts that the formulation of inflationary expectations as a distributed lag was valid. In particular, since the formulation was purely backwards-looking, it implied that the Federal Reserve could consistently apply expansionary monetary policy to increase output, because $P - P^{e}$ could be permanently made greater than zero. Friedman instead hypothesized that people had forward looking-expectations, and that they would response to changes in Federal Reserve policy. Hence, one could expect the Phillips Curve relationship to break down.

As the graph below (Figure 2.9) shows, it did shortly after his statement. This failure of the Phillips curve in fact discredited Keynesian economics in many peoples' view.

In fact, it need not have done any such thing. It has turned out that if one replaces inflationary expectations with a more sophisticated measure, and if one allows for certain discrete shifts in the aggregate supply curve corresponding to events such as the raising of oil prices by OPEC, that one again achieve a stable aggregate supply curve. Thus empirically, it seems that aggregate supply curves of the following form:

$$

\pi = \pi^{e} + f

(u) + \epsilon \tag {2.14}

$$ where $\pi^e$ is determined rationally, that is from the economic model into which this Phillips curve is embedded, and $\epsilon$ is an aggregate supply shock, are quite successful.

It is not clear that even if the aggregate supply curve were stable, that one should expect to see the pattern of inflation and unemployment seen in the data by Phillips. Recall that although theory suggests that the behavior of the economy is determined by aggregate demand and aggregate supply, in practice we only observe the intersection of aggregate demand and aggregate supply. Suppose in principle there are shocks to aggregate supply and aggregate demand.

Consider the following three cases:

1. Most shocks to the economy are to AD: Then the resulting equilibrium prices and wages will trace out the aggregate supply curve, as Phillips saw (Figure 2.10).
2. Most shock are to AS. Then the equilibria will trace out the AD curve, a downward sloping relationship (Figure 2.11).
3. Shocks are equally distributed. Then we get no relationship between prices and output (Figure 2.12).

Phillips, who just looked at a simple regression involving wage inflation and unemployment, was lucky to have obtained the results he did. Over that period in British history, it must have been the case that most shocks were aggregate demand shocks, and therefore the results traced out the aggregate supply curve.

In general, this would not be true, and the observed pattern need not follow either of the two curves. In general, the problem of estimating a structural relationship from data generating by equilibrium outcomes by several structural relationships is known as the identification problem. A solution to this problem is to find a variable which shifts one of the relationships, but not the other. This variable, known as an instrument, permits estimation of the relationships.

This solution was not known as of the early 1970s, and it appeared that Keynesian economics had serious empirical problems. In part because of this, economists also focused attention on three significant problems with Keynesian theory:

1. Keynesian models were very ad hoc; they posited aggregate relationships not derived from microeconomic theory.
2. Their treatment of expectations was quite primitive, and seemed to involve large elements of irrationality
3. The models also lacked an explicit treatment of dynamics

Thus, while over the next twenty years some economists would invent Real Business Cycle Theory and write articles with titles such as "The Death of Keynesian Economics" or "After Keynesian Economics," others would try to remedy each of these three deficiencies. We turn to these, in chronological order, in the next sections.

# 2.2 Disequilibrium Economics

The first group of economists who attempted to reform Keynesian economics tried to give it microeconomic foundations. They reasoned that since Keynesian models obtained most of their results from the assumption of inflexible wages and/or prices, that one might be able to obtain similar results by imposing inflexible wages and prices on an otherwise Walrasian model. This turned out to be true. The resulting models were referred to as Disequilibrium models, because they had the implication that markets did not always clear. The main developers of these models were Robert Barro and Herschel Grossman. These models later became very popular in France, where Edmond Malinvaud and Jean-Pascal Benassy also worked on them.

# 2.2.1 Setup

The economy consists of a representative agent, a representative firm, and the government. Assume the representative agent has the following utility function, defined over leisure, consumption and real monetary balances:

$$
U = C^{\alpha} \left(\frac{M}{P}\right)^{\beta} - L^{\gamma}. \tag {2.15}
$$

$L$ is labor supply, so that $-L^{\gamma}$ represents the disutility of working (which could alternatively be represented by the utility of leisure). The time endowment is $\bar{L}$.

Her budget constraint in real terms is:

$$
C + \frac{M}{P} = \frac{M^{\prime}}{P} + \frac{W}{P} L + \Pi \tag {2.16}
$$ where $M'$ is initial nominal money holdings and $\Pi$ is profit. The production function is $Y = L^{\eta}$. The firm maximizes profit, $\Pi = Y - \frac{W}{P} L$.

The government is completely passive, and simply supplies money to equal demand; there will be no seigniorage in equilibrium.

Finally, note that the national income accounting identity for this economy, without investment or government spending, is $Y = C$.

# 2.2.2 The Walrasian Benchmark Case

Suppose that prices and wages are purely flexible. The first order conditions for the consumer's maximization problem are:

$$

\alpha C^{\alpha - 1} \left(\frac{M}{P}\right)^{\beta} = \lambda \tag {2.17}

$$

$$

\beta C^{\alpha} \left(\frac{M}{P}\right)^{\beta - 1} = \lambda \tag {2.18}

$$

$$

\gamma L^{\gamma - 1} = \frac{W}{P} \lambda - \nu \tag {2.19}

$$ where $\lambda$ and $\nu$ are the Lagrange multipliers associated with the budget constraint and the time endowment constraint respectively. The time endowment constraint will not bind, so that $\nu = 0$.

The first two first-order conditions can be combined to yield:

$$
\frac{M}{P} = \frac{\beta}{\alpha} C \tag {2.20}
$$

We can use the definition of profits to rewrite the budget constraint as:

$$
C + \frac{M}{P} = \frac{M^{\prime}}{P} + Y \tag {2.21}
$$

Using the optimality condition for $\frac{M}{P}$ derived above, and the national income accounting identity, we can then solve for aggregate demand:

$$
Y = \frac{\alpha}{\beta} \frac{M}{P} \tag {2.22}
$$

We can also use the condition that labor demand equal labor supply to solve for the level of output. Labor demand comes from profit maximization, which implies:

$$
L = \left(\frac{1}{\eta} \frac{W}{P}\right)^{\frac{1}{\eta - 1}} \tag {2.23}
$$

For labor supply, one can combine the first order conditions for $C$ and $L$, and using the production function and the fact that $Y = C$, after some tedious manipulations one can solve for the level of $L^S$ as:

$$
L = \left(\frac{\gamma}{\alpha^{1 - \beta} \beta^{\beta}}\right)^{\frac{1}{\eta (\alpha + \beta - 1) + 1 - \gamma}} \left(\frac{W}{P}\right)^{\frac{1}{- 1 + \gamma - \eta (\alpha + \beta - 1)}} \tag {2.24}
$$

Equating the two, one can see that the equilibrium level of $L$ will be a function of the parameters $\eta$, $\alpha$, $\beta$ and $\gamma$, and not of $M$. Hence equilibrium supply is constant. Money is neutral, as expected.

One can graph the usual supply and demand curves for the labor and goods markets as follows (Figure 2.13).

# 2.2.3 Exogenously Fixed Price

Let us now consider the case where the price level is exogenously fixed at $P = \bar{P}$. There are in principle two cases to consider:

1. $\bar{P}$ is above the goods market clearing level
2. $\bar{P}$ is below the goods market clearing level

I shall only consider the first case, for reasons that will become apparent later in the course.[12] Note that in this case, the desired supply of goods is greater than the level of demand. Let us make the general assumption that when supply and demand are not equal, the quantity transacted is equal to the minimum of supply or demand. Then, the firm is rationed on the goods market.

A key result of these models of disequilibrium is that the presence of rationing in one market may imply alterations in behavior in other markets. In particular, in this case since the firm is rationed on the goods market, it will never be willing to hire more labor than is necessary to produce the level of demand implied by $P = \bar{P}$. Thus, labor demand will be vertical at that point. The new labor demand curve is an example of what has been termed an effective demand curve, that is a demand curve derived under the presence of a constraint in another market. This contrasts with the unconstrained, or notional demand curve (Figure 2.14).

The consumer is not rationed, and therefore her demand remains $Y^{D} = \frac{\alpha}{\beta}\frac{M}{P}$. Output is demand determined, as derived above, so for the fixed price level money is now nonneutral. The aggregate supply curve is horizontal at $P = \bar{P}$.

# 2.2.4 Exogenously Fixed Nominal Wage

In this case, the market for goods clears, but the market for labor does not clear. We again need to in principle consider two cases:

1. $\bar{W}$ is such that $\frac{\bar{W}}{P}$ is above the labor market clearing level
2. $\bar{W}$ is such that $\frac{\bar{W}}{P}$ is below the labor market clearing level.

I shall only consider the first case, because it implies that since $L^D < L^S$ that there is involuntary unemployment.

In this case, the consumer is rationed on the labor market, since she is not able to supply as much labor as she would like at the given level of the real wage. Her constraint on the labor market implies that her demand for goods might be affected. In particular, the constraint in her maximization problem that $L \leq \bar{L}$ is replaced by the constraint that $L \leq L^{D}\left(\frac{\bar{W}}{P}\right)$, which will be binding.

The consumer's three first-order conditions remain the same, but now $\nu \neq 0$. However, we can see that this fact does not affect our solution for $C$ in terms of $\frac{M}{P}$. Hence we may solve for the same expression for aggregate demand as before, so that effective demand for goods and notional demand for goods coincide (Figure 2.15). This is a special case, and arises solely from the assumption that consumption and leisure are separable in utility.

Hence aggregate demand is still:

$$
Y^{D} = \frac{\alpha}{\beta} \frac{M}{P} \tag {2.25}
$$

We may determine aggregate supply from the production function and the fact that firms are on their labor demand curves, so that

$$
Y^{S} = \left(\frac{1}{\eta} \frac{\bar {W}}{P}\right)^{\frac{\eta}{\eta - 1}}. \tag {2.26}
$$

This is upward sloping in $P$. Money is again non-neutral. In terms of the graphical analysis, an increase in $M$ leads to a shift outwards in the demand curve. Were the price level to increase (as would happen in the Walrasian benchmark case), this would imply a lower real wage, and therefore a greater degree of labor demanded and therefore employed. So output also increases.

# 2.2.5 Both Prices And Wages Inflexible

The logical next step is to consider cases in which both the nominal wage and the price level are fixed. There are four cases to be considered:

- Both the wage and the price level are above the market-clearing level. This has been called the Keynesian Unemployment case, because it combines the case of unemployment derived above with the case of real effects of aggregated demand disturbances.
- The wage is above, but the price level is below the market-clearing level. Here, consumers are rationed on the goods market. In principle, their rationing implies that effective labor supply is different from notional. In practice, that isn't the case, for the same reason effective and actual goods demand coincided above. This is known as the Classical Unemployment case. Since labor supply exceeds labor demand, there is unemployment, but changes in aggregate demand are neutral, since firms are not rationed and are on their Walrasian supply curve.
- The wage is below, but the price level is above the market-clearing level. This implies that the firm is constrained in both goods and labor markets. This cannot happen in a static model, so this case is degenerate.
- Both the wage and the price level are below the market-clearing level. In this case, the consumer is rationed in the goods market, and the producer in the labor market. This is known as the Repressed Inflation case, since prices are 'too low'. One can show that in general, increases in aggregate demand, because they increase the degree of rationing faced by the consumer, lead to shifts inward in labor supply as the consumer takes more leisure.

# 2.2.6 Analysis Of This Model

These models provide some microeconomic foundations for the effects of nominal money and government spending on output. Some of these results are Keynesian, some are similar to classical models, and some are neither. The versions presented above are extremely simplified; the models of Barro and Grossman (1976) and Malinvaud (1977) extend these models by adding in more than one kind of consumer, and making the models more dynamic.

Despite the successes in providing microeconomic foundations to Keynesian models, these models were ultimately abandoned. In particular, there were three problems with them:

- The results of the model depend on the rationing rules involved. In models which abandon the representative consumer assumption, changes in the types of consumers rationed greatly change the end results. Also, changes from the short-side rationing rule employed here, where it was assumed that the lesser of supply and demand was the quantity traded, lead to large changes in results.
- The model is still static. This can be remedied.
- The model assumes prices and wages are sticky, without explaining why. In this sense, it is still ad hoc.

We shall see later that the reasons why prices and wages are sticky may not make the effects of money and government spending on output any different from what is implied in these models, and that those models also implicitly involve rationing. Before we come to these models, we will first look at another class of models which were developed at the same time as the disequilibrium models, but took a different route to fixing old Keynesian models.[13]

# 2.3 Imperfect Information Models

These models assume that prices and wages are flexible, but allow misperceptions about changes in relative prices versus changes in the price level to affect real economic decisions. Their innovation over the Keynesian models is in their careful treatment of expectations. Recall that the older Keynesian models parameterized expectations in an ad hoc fashion. The insight of Robert Lucas, who wrote the first of the imperfect information models, was to assume that people optimize over expectations as well as over other things in the models. This implies that agents' expectations should be identical to mathematical expectations, in particular the mathematical expectations one would get from solving out the model.[14]

The model consists of a large number of competitive markets. As an analogy, they may be thought of as farmers living on different islands. There are two shocks in this economy: one to the aggregate stock of money, and one a sector-specific price shock. The farmers do not observe these shocks separately; rather, they only observe the individual price of their good. Thus, the aggregate price level is unobserved. Given the observation of a change in the price of their good, the farmers would like to change their output only in the case where there has been a change in the relative demand for their good, that is in the sector-specific price shock case. If there has been a change in the aggregate stock of money, they do not want to change output.

Assume that the supply curve for market $i$ is:

$$ y_{it} = b \left(p_{it} - E_{t} p_{t}\right) \tag {2.27}
$$ where the $E_{t}$ denotes the expectation taken conditional on the information set at time $t$, which is assumed to include all variables through time $t - 1$ and $p_{it}$. This supply curve is rather ad hoc, but it has the justification that the firm cares about its relative real price.

Aggregate demand is as usual assumed from the quantity theory to be:

$$ y_{t} = m_{t} - p_{t}, \tag {2.28}
$$ where log velocity has been normalized to zero.

Now, we need to think about $E_{t}p_{t}$ and how it is computed.

The consumer knows the past series of $p_t$. From this, one can compute a sample expected value and variance, $\hat{E}p \equiv E_{t-1}p_t$ and $\hat{\sigma}_P^2$. We will assume that all disturbances will be normally distributed, so that the firms' prior is that $p_t$ is distributed normally with the above mean and variance.

The firm also knows that since there are only two shocks to the economy, the price of his or her own good $p_{it} = p_t + z_{it}$, where $z_{it}$ is the unobserved idiosyncratic shock. This shock averages to zero over the cross-section, and is also assumed to have zero time-series mean. From past values of this shock, one can compute a sample variance, $\hat{\sigma_z^2}$.

Given the observed $p_{it}$, the consumer has to decide how much of the observed change in that variable comes from a price-level change, and how much comes from a relative real price change. This essentially reduces to the problem of finding the mean of the posterior distribution of $p_t$ given the prior distribution assumed above. One can show (as in Casella and Berger, Ex. 7.2.10) that:

$$

E_{t} p_{t} = \theta p_{it} + (1 - \theta) \hat {E} p \tag {2.29}

$$ where

$$

\theta = \frac{\hat {\sigma_{p}^{2}}}{\hat {\sigma_{p}^{2}} + \hat {\sigma_{z}^{2}}} \tag {2.30}

$$

In words, the expected change in price is partly attributed to a change in the price level, and partly due to a change in the relative real price.

Note that this implies that the supply curve is:

$$ y_{it} = b (1 - \theta) \left(p_{it} - \hat {E} p\right) \tag {2.31}
$$

If the variance of the price level (i.e. the variance of monetary shocks) were extremely high relative to the variance of idiosyncratic shocks, this means that $\theta$ would be close to one, and output would not vary. In other words, since most shocks were aggregate demand shocks, there would be no reason to supply more output, because it's very likely that any given observe change in prices is due to changes in the money stock and not changes in relative demand for the good.

The opposite happens if there is a high variance to the idiosyncratic shocks.

If we aggregate over consumers by summing over the $i$ (which, given the loglinearity assumed here, means that we are using the geometric mean of output, rather than the average), we get that

$$ y_{t} = \beta \left(p_{t} - \hat {E} p\right) \tag {2.32}
$$ where $\beta = b(1 - \theta)$

Combining this with aggregate demand, and solving for $\hat{E} p$ and $P_{t}$, we get:

$$ y_{t} = \frac{\beta}{1 + \beta} \left(m_{t} - E_{t} m_{t}\right) \tag {2.33}
$$

This has a very striking implication: only unanticipated shocks to the money supply have an effect on output. Any shocks which were anticipated will be correctly perceived to have resulted in changes to the price level, and no one will change his or her supply of goods.

Additional implications:

# 2.4. New Keynesian Models

- Minimizing the variance of output implies setting the variance of monetary shocks equal to zeroin other words, following a strict money supply rule.
- The slope of the Phillips curve, $\beta = b\left(\frac{\sigma_z^2}{\sigma_p^2 + \sigma_z^2}\right)$, will be inversely related to the variance of aggregate demand shocks. This seems to be true in the data.
- Shocks are not persistent.

Both despite and because of the model's striking implications, there are a number of problems with it. They include:

1. The lack of motivation for the supply curve (which is now known as a Lucas supply curve). This was later derived by Robert Barro from an intertemporal substitution argument. It arises rather more naturally in other contexts.
2. The lack of persistence of shocks and dynamics. This can be readily fixed by adding capital markets, inventories or through other means.
3. The dependence of the results on the inability to observe the price level. In fact, observations on the price level are published weekly. Furthermore, if it really were such a key variable, presumably there would be a large incentive to gather information on it.

This last problem has turned out to be a fatal flaw, and it is why this model is no longer regarded as the key reason for why changes in nominal money may have real effects. However, the idea that the economy is noisy and people must do signal extraction to get the information they need is a powerful one worth pursuing.

Reactions to this model took two forms:

One group concluded that in fact, anticipated money doesn't matter, and went off to write Real Business Cycle models. They generally assumed that any model with rational expectations would have this implication.

Another group concluded that in fact, it could, and went off to write models which had rational expectations but also had real effects of money on output. We turn to them next.

# 2.4 New Keynesian Models

# 2.4.1 Contracting Models

The next set of models to be developed also assumed that prices or wages were exogenously sticky, as did the disequilibrium models. These models, however, incorporate dynamics and expectations more thoroughly. In principle, there are two ways in which prices and wage may be set: they may be set in a time-dependent manner, in which prices or wages are changed at fixed time intervals, or in a state-dependent manner, in which they are changed depending on the value of some state-variable. We will consider only time-dependent changes here, not state-dependent ones (which we will return to later).

We will first consider a model in which the level of the price or wage is determined in advance, but not constrained to be equal over all periods the contract is in place. We will next consider cases in which the level of the wage is fixed over all periods of the contract. We will consider models in which the wage is set rather than the price, to conform with the original statement of the models and to provide a contrast with the textbook treatments.

# 2.4.2 Predetermined Wages

Assume the production function $Y_{t} = L_{t}^{1 - \gamma}$. The profit-maximizing condition that the marginal product of labor equal the real wage for this production function is then:

$$
(1 - \gamma) L_{t}^{- \gamma} = \frac{W_{t}}{P_{t}} \tag {2.34}
$$

After taking logs, this implies:

$$ l_{t} = \frac{1}{\gamma} \ln (1 - \gamma) - \frac{1}{\gamma} \left(w_{t} - p_{t}\right) \tag {2.35}
$$

Define $\alpha = \frac{1}{\gamma}\ln (1 - \gamma)$ and $\beta = \frac{1}{\gamma}$. Then we can show that

$$ y_{t} = \frac{\beta - 1}{\beta} \alpha - (\beta - 1) \left(w_{t} - p_{t}\right) \tag {2.36}
$$

Below, even though we will have fixed wages, we will assume that firms are always on their labor demand curves. In the context of the previous models, this implies that the real wage is assumed to be above the market-clearing level.

Assume that aggregate demand follows the usual quantity-theoretic formulation:

$$ y_{t} = m_{t} - p_{t} + v_{t} \tag {2.37}
$$

Finally, we will need to specify how wages are set. Let's consider two cases: one in which wages are set one period in advance, one in which they are set two periods in advance.

## One-Period-Ahead Wages

In this case, we shall assume that $w_{t} = E_{t - 1}p_{t}$, so that the expected

(log) real wage is set to zero (a convenient normalization). Note that this implies that we can rewrite output as:

$$ y_{t} = \frac{\beta - 1}{\beta} \alpha - (\beta - 1) \left(E_{t - 1} p_{t} - p_{t}\right) \tag {2.38}
$$

But this is exactly the same as the Lucas Supply curve, derived above. Again, unexpected inflation will be associated with higher output than usual, but only for one period. Only unanticipated money will matter, and then only for one period.

This is a nice result, because it confirms the results of the Lucas model, but in a somewhat more natural setting, where the appropriate supply curve is derived from more basic assumptions. It still has the unattractive aspect of implying that only unanticipated money matters (which has at best weak support in the data). We shall now review the implications of assuming that wages must be set two periods in advance.

## Two-Period-Ahead Wages

Now assume that wages must be set two periods in advance; i.e. wages are set at time $t$ for periods $t + 1$ and $t + 2$. We will also assume that not all wages are set at the same time: half of the wages will be set every other period. This implies that the wage at period $t$ is equal to:

$$ w_{t} = \frac{1}{2} \left(E_{t - 1} p_{t} + E_{t - 2} p_{t}\right), \tag {2.39}
$$ because half of the economy's wages were set at time $t - 1$ and half at time $t - 2$.

By substituting this into the supply expression for output and equating it to aggregate demand, one can show that the system reduces to:

$$ p_{t} = \frac{1 - \beta}{\beta^{2}} \alpha + \frac{\beta - 1}{2 \beta} \left(E_{t - 1} p_{t} + E_{t - 2} p_{t}\right) + \frac{1}{\beta} \left(m_{t} + v_{t}\right) \tag {2.40}
$$

This is an expectational difference equation. As we did in the section on money and prices, let's try to solve it by recursive substitutionthat is, by taking expectations as of times $t - 1$ and $t - 2$, and plugging the results back into the initial equation. Solving for the two expectations yields:

$$
E_{t - 1} p_{t} = \frac{1 - \beta}{\beta^{2}} \alpha + \frac{\beta - 1}{2 \beta} (E_{t - 1} p_{t} + E_{t - 2} p_{t}) + \frac{1}{\beta} E_{t - 1} (m_{t} + v_{t}) \qquad (2.41)
$$ and

$$

E_{t - 2} p_{t} = \frac{1 - \beta}{\beta^{2}} \alpha + \frac{\beta - 1}{\beta} \left(E_{t - 2} p_{t}\right) + \frac{1}{\beta} E_{t - 2} \left(m_{t} + v_{t}\right) \tag {2.42}

$$ where the second result has used the law of iterated expectations. We can see from this that the second expression can be solved for $E_{t - 2}p_t$, and then plugged into the first to solve for $E_{t - 1}p_t$. The results are:

$$
E_{t - 2} p_{t} = \frac{1 - \beta}{\beta} \alpha + E_{t - 2} \left(m_{t} + v_{t}\right) \tag {2.43}
$$ and:

$$

E_{t - 1} p_{t} = \frac{1 - \beta}{\beta} \alpha + \frac{\beta - 1}{1 + \beta} E_{t - 2} \left(m_{t} + v_{t}\right) + \frac{2}{1 + \beta} E_{t - 1} \left(m_{t} + v_{t}\right) \tag {2.44}

$$

Substituting, this implies:

$$ p_{t} = \frac{1 - \beta}{\beta} \alpha + \frac{\beta - 1}{1 + \beta} E_{t - 2} \left(m_{t} + v_{t}\right) + \frac{\beta - 1}{\beta (1 + \beta)} E_{t - 1} \left(m_{t} + v_{t}\right) + \frac{1}{\beta} \left(m_{t} + v_{t}\right) \tag {2.45}
$$

This expression gives the price level in terms of levels and expectations of exogenous variables. It is as far as we may go in solving for it, without specifying stochastic processes for $m_t$ and $v_t$.

We can plug this back into aggregate demand, and show that output is the following:

$$ y_{t} = \frac{\beta - 1}{\beta} (\alpha + (m_{t} + v_{t}) - \frac{\beta - 1}{1 + \beta} E_{t - 2} (m_{t} + v_{t}) - \frac{\beta}{\beta (1 + \beta)} E_{t - 1} (m_{t} + v_{t})). \tag {2.46}
$$

Assume for simplicity that for all $s$, $E_{t - s}v_t = 0$, so that velocity is unpredictable.

We can then rewrite the answer as:

$$ y_{t} = \frac{(\beta - 1) \alpha}{\beta} + \frac{(\beta - 1)}{\beta} \left(m_{t} - E_{t - 1} m_{t}\right) + \frac{\beta - 1}{1 + \beta} \left(E_{t - 1} m_{t} - E_{t - 2} m_{t}\right) + \frac{\beta - 1}{\beta} v_{t} \tag {2.47}
$$

Note that the first term here is like that of the Lucas model, again. But now we have the second term, which states that a fraction $\frac{\beta - 1}{1 + \beta}$ of changes in $m$ which become known at time $t - 1$ pass into output. In other words, expected money matters, and is passed into output.

Clearly, this arises from the fact that not all wages are set each period. People setting wages later have an opportunity to respond to shocks. In particular, people setting wages at period $t - 1$ can respond to changes in the money stock which have been revealed between $t - 2$ and $t - 1$. But people who have set wages in period $t - 2$ cannot, giving the monetary authority a chance to act on the basis of predetermined variables.

Note that this fraction is not equal to $\frac{1}{2}$, as one might expect simply from the fact that half of the wages are set each period. This is because $\beta$ is a measure of how wages respond to labor supply. If $\beta$ increases, real wages respond less to changes in labor supply, and the effects of money are greater, because firms will respond less to the change in money.

Another clear implication of this result is that monetary policy may now be used to offset shocks and stabilize output. This result thus helped establish the proposition that monetary policy need not be irrelevant under rational expectations.

# 2.4.3 Fixed Wages

The next model we will consider assumes that wages are not only set in advance for two periods, but that they are in fact fixed (i.e. they must be the same over two periods). Here, the wage will be set at time $t$ for periods $t$ and $t + 1$. The model is due to John Taylor.

As before, assume that aggregate demand is determined by:

$$ y_{t} = m_{t} - p_{t} \tag {2.48}
$$

(where velocity is eliminated for simplicity).

Also assume that:

$$ p_{t} = \frac{1}{2} \left(w_{t} + w_{t - 1}\right) \tag {2.49}
$$

This may be justified by looking at it as a markup equation. If production is CRS, marginal cost will be the wage. The wage at $t$ is the average of the two contracts in effect at $t$; that set at $t$, and that set at $t - 1$. The preceding equation then simply says that the markup of price over marginal cost is unity.

Assume wages are set in the following manner:

$$ w_{t} = \frac{1}{2} \left(w_{t - 1} + E_{t} w_{t + 1}\right) + \frac{a}{2} \left(y_{t} + E_{t} y_{t + 1}\right) \tag {2.50}
$$

The first term may be thought of as reflecting a desire by workers to have their wages be equal to those of the other workers in the economy. Over the two periods that this worker's contract is in effect, the other workers will be receiving $w_{t-1}$ and $E_t w_{t+1}$ respectively.

The second term reflects the fact that excess demand puts upward pressure on nominal wages 15

One can first substitute in the expression for prices into aggregate demand, and then substitute the aggregate demand expression into the wage-setting equation. This will yield the following expectational difference equation in wages and the money stock:

$$ w_{t} = \frac{2 - a}{2 (2 + a)} \left(w_{t - 1} + E_{t} w_{t + 1}\right) + \frac{a}{2 + a} \left(m_{t} + E_{t} m_{t + 1}\right) \tag {2.51}
$$

Define $A = \frac{2 - a}{2(2 + a)}$. Then the expression for $w_{t}$ is:

$$ w_{t} = A \left(w_{t - 1} + E_{t} w_{t + 1}\right) + \frac{1 - 2 A}{2} \left(m_{t} + E_{t} m_{t + 1}\right) \tag {2.52}
$$

Recursive substitution will not be helpful in solving this problem (try it and seethe fact that this is a second-order difference equation makes it more difficult). We must thus turn to other methods. There are two commonly used methods:

- Undetermined Coefficients In this method, one makes an educated guess at the form of the solution. One then plugs the solution into the difference equation, and tries to match up the coefficients of one's guess with the coefficients implied by the substitution.
- Lag Operators, or Factorization In this method, we use lag operators to rewrite the solution as a set of lag polynomials in the levels of the endogenous and exogenous variables, then solve out for the endogenous variables.

Here, we will use the second solution method. For an example of the first, since Romer, section 6.8.

Note that we can write $w_{t-1} = Lw_t$, and $LE_tw_{t+1} = E_tw_t = w_t$, which implies that $E_tw_{t+1} = L^{-1}w_t$. (We could define another operator, $B$, which lags the information set over which the condition expectation is taken as well as the variable. This is not needed to solve this problem, however).

Given this, and letting $I$ denote the identity operator, we can factor the expression above as follows:

$$
(I - AL - AL^{- 1}) w_{t} = \frac{1 - 2 A}{2} (I + L^{- 1}) m_{t} \tag {2.53}
$$

The first parenthetical term is simply a polynomial in $\mathrm{L}$, which we may factor into:

$$
(I - \lambda L^{- 1}) (I - \lambda L) \frac{A}{\lambda} w_{t} = \frac{1 - 2 A}{2} (I + L^{- 1}) m_{t} \tag {2.54}
$$ where

$$

\lambda = \frac{1 + (1 - 4 A^{2})^{. 5}}{2 A}, \tag {2.55}

$$ which is less than one. In order to solve this, we would like to get rid of the $E_{t}w_{t + 1}$ term. We see that we may do this by using the fact that:

$$
\frac{1}{I - \lambda L^{- 1}} = I + \lambda L^{- 1} + (\lambda L^{- 1})^{2} + (\lambda L^{- 1})^{3} + \dots \tag {2.56}
$$ and multiplying through on both sides. If we do so, we will see that we get the following expression:

$$ w_{t} = \lambda w_{t - 1} + \frac{\lambda}{A} \frac{1 - 2 A}{2} (m_{t} + (1 + \lambda) (E_{t} m_{t + 1} + \lambda E_{t} m_{t} + 2 + \lambda^{2} E_{t} m_{t + 3} + \dots)) \tag {2.57}
$$

In words, the wage depends on the lagged wage on the expected future path of the money stock.

We could plug this into the expression for the price level and then into aggregate demand to find output. I will do so, but first I want to make a simplifying assumption: namely, that $m_{t}$ follows a random walk. Thus, let

$m_{t} = m_{t - 1} + x_{t}$, where $x_{t}$ is serially uncorrelated. Then, $E_{t}m_{t + i} = m_{t}$. If we do this, and also set the supply shock $u_{t}$ equal to zero, we get:

$$ y_{t} = \lambda y_{t - 1} + \frac{1 + \lambda}{2} x_{t} \tag {2.58}
$$

(where the algebra may be obtained by looking at Romer, pp. 290-291).

This model has some strong implications. In particular, it implies that since $\lambda$ is a positive number, shocks to aggregate demand (here, shocks to the money supply) will have long-lasting effects, even after all contracts set before the shock have expired.

To see this, note that the effects in period zero of a unit shock to aggregate demand will be $\frac{1 + \lambda}{2}$. In period one, they will be $\lambda \frac{1 + \lambda}{2}$. In period two, $\lambda^2 \frac{1 + \lambda}{2}$, and so on. (Note that technically, this may be obtained by multiplying through both sides by $\frac{1}{1 - \lambda L}$ and solving for $y$. The resulting expression is known as the Moving Average Representation or MAR, for $y$, and the tracing out of an effect of a unit shock is known as the impulse response function (Figure 2.16). You will see both of these concepts in time series econometrics).

This occurs because $\lambda$, which remember is ultimately a function of $a$, is a measure of the inertia in nominal wages. It parameterizes to what degree nominal wages will adjust to shocks, and to what degree they will simply remain at whatever level they were last period. Thus, multi-period contracts with staggering lead to long-lasting effects of money on output, even under rational expectations. As a final note, I could have derived the same results assume price contracts rather than wage-contracts; see Romer or Blanchard and Fischer for examples.

These models, although in some ways similar to the disequilibrium models, add to them dynamics and rational expectations. They do use a simplistic version of aggregate demand, which may lead to some of the effects of the Barro-Grossman model to not be present (they essentially do not consider one of the three regimes). They also share Barro and Grossman's shortcoming, in that they assume wages inflexible without explaining why. Fischer has argued that as a positive fact, we do see wages set in the way of his or Taylor's model. Robert Barro and others have argued that wages may seem sticky because they represent payments in a long-term contract between firms and workers, who want stable wages.[16] Several papers have explored the implications of indexing in these models.

Because of this last deficiency, however, researchers in the 1980s and 1990s have moved to models in which prices are inflexible because there are small costs of changing prices. They have modeled this in the context of imperfect competition. It is this we now turn to.

# 2.5 Imperfect Competition And New Keynesian Economics

The next set of models looked at circumstances in which firms set prices, but occasionally chose not to change prices because of costs of doing so. Since we need to think about cases where firms set prices, rather than take them as given, we must first consider the macroeconomic implications of imperfect competition. I will first do this in the context of a model without costs of changing prices, to show that imperfect competition per se can yield Keynesian effects of government spending on output.

# 2.5.1 Macroeconomic Effects Of Imperfect Competition

The following model is after one by Mankiw (1986). It has the same simple flavor as the Disequilibrium model presented above.

## Consumers

Suppose utility for consumers is:

$$
U = \alpha \log C + (1 - \alpha) \log L, \tag {2.59}
$$ where $L$ now denotes leisure, not labor. Suppose $L_0$ is the consumer's time endowment.

Let leisure be the numeraire good, so that the wage is unity. Then we can write total income as $(L_0 - L) + \Pi - T$. Here, $\Pi$ represents profits by firms and $T$ is a lump-sum tax.

If we let $P$ be the relative price of the consumption good, we may write the budget constraint as:

$$

PC = L_{0} - L + \Pi - T \tag {2.60}

$$

Cobb-Douglas utility implies that the solution to the consumer's maximization problem is:

$$

PC = \alpha \left(L_{0} + \Pi - T\right) \tag {2.61}

$$

We may think of $\alpha$ as the MPC.

### Government

The government imposes taxes $T$, and uses it to purchase goods, $G$, or to hire government workers, $L_{G}$.<sup>17</sup>

Total expenditure on the consumption good in this economy is then $Y = PC + G$, or substituting, is equal to:

$$

Y = \alpha \left(L_{0} + \Pi - T\right) + G \tag {2.62}

$$

### Firms

Assume that $N$ firms produce the single consumption good. Total expenditure is taken as given. If we let $Q$ denote output, then $Q = \frac{Y}{P}$.

Assume that firms have an IRS production function. They must pay a fixed cost $F$ in labor, and after that, face a constant marginal cost of $c$ units of labor per good. Total cost is then:

$$

TC = F + c Q_{i} \tag {2.63}

$$

Now assume that the market is imperfectly competitive. The firms play some game to jointly determine the markup of price over marginal cost. Denote this markup by $\mu$, so that

$$

\mu = \frac{P - c}{P} \tag {2.64}

$$

Note that if the firms are playing a Cournot game, $\mu = \frac{1}{N}$. If they are playing Bertrand, i.e. getting close to the perfectly competitive level, $\mu = 0$. If there is perfect collusion, $\mu = 1$. Given this, we can rewrite $Q = \frac{1 - \mu}{c} Y$, and profits as:

$$

\Pi = \mu Y - NF \tag {2.65}

$$

### Equilibrium And Comparative Statics

Our two equilibrium conditions are:

$$

Y = \alpha \left(L_{0} + \Pi - T\right) + G \tag {2.66}

$$

$$

\Pi = \mu Y - NF \tag {2.67}

$$

In words, expenditure depends on profits, and profits on expenditure. From this, one can show that $\frac{dY}{dT} = \frac{-\alpha}{1 - \alpha\mu}$, and, more importantly, that $\frac{dY}{dG} = \frac{1}{1 - \alpha\mu}$ which is clearly greater than one for nonzero $\mu$. Thus we have a Keynesian multiplier.

This result comes about for the same reasons the Keynesian multiplier existed in the old Keynesian model. Namely, if $G$ increases, this leads directly to higher expenditure, which, given that profits are increasing in expenditure due to the imperfect competition, leads to higher profits and higher income, which leads to higher expenditure, and so on. With perfect competition, $\mu = \Pi = 0^{18}$

# 2.5.2 Imperfect Competition And Costs Of Changing Prices

In this section, we will look at a models of imperfect competition with costs to changing prices. We will start with the simple case of a single firm in a static, one-firm model. We will then proceed to a static, multi-firm GE model, and conclude with a dynamic GE model.

# Static, One Firm

The static model presented here is due to Mankiw (QJE, 1985). Suppose there is a single firm, a monopoly. Suppose its nominal cost function is $C = kqM$, where $q$ is the number of units produced, and $M$ is the nominal stock of money (if the nominal wage is proportional to the nominal stock of money, we could get this from a CRS production function).

Suppose the inverse demand curve is $P = f(q)M$; this arises naturally by, for example, assuming a quantity-theoretic version of aggregate demand where $q = V\frac{M}{P}$, which would then imply that $P = \frac{V}{q} M$.

Since the firm is a monopoly, it produces where $MR = MC$. $MC = kM$ and $MR = (qf' + f(q)) M$. In other words, both $MR$ and $MC$ are linear in $M$, so the level of production is independent of $M$. In the absence of costs of changing prices, increases in $M$ will just shift up the demand, marginal cost and marginal revenue curves proportionately, which will mean that the nominal price charged will be higher. Note that, as usual, the price charged (which we will denote $p_m$ ) is greater than the competitive price, and the quantity is less than the competitive quantity (Figure 2.17).

To simplify things, let $c = \frac{C}{M}$ and $p = \frac{P}{M}$. We will measure welfare as the sum of consumer surplus and producer surplus (we haven't specified utility, so just assume a constant marginal utility of wealth). The welfare maximizing point is at the perfectly competitive point.

Now suppose that the firm has costs of price adjust equal to $z$. Suppose further that it needs to set its nominal price one period ahead, based on expectations of what the future money stock is going to be. It will set its nominal price to be $p_{m}M^{e}$. The actual price is then $p_{0} = p_{m}\frac{M^{e}}{M}$. The firm can choose to pay $z$ to reset the actual price to $p_{m}$ after the realization of the monetary shock.

Suppose that money is unexpectedly low. Then the actual price will be higher than the monopoly price. Profits will decline, as will the sum of producer and consumer surplus. In terms of the diagram below (Figure 2.18, same as in Mankiw article), the reduction in profits is $B - A$ and the reduction in surplus is $B + C$, which is greater than $B - A$.

Note that the firm will only choose to change its price if $B - A > z$. But the socially optimal condition for changing price is $B + C > z$. Hence, if $B + C > z > B - A$, there will be cases in which it is in fact socially optimal for the firm to change its price, but not privately optimal to do so. This is because there is an external benefit of $C + A$ to changing prices.

A good measure of the externality may be the ratio of the social benefit to the private benefit, $\frac{B + C}{B - A}$. Let's try to figure out how big this is. Note that $B - A$ is equal to the lost profit, or $\Pi(p_0) - \Pi(p_m)$. Recall that $p_m$ is the profit-maximizing price for the monopolist. Hence, at this price, $\Pi'(p_M) = 0$. A second order Taylor series expansion of profits around this point yields, $\Pi(p_0) \approx \Pi(p_m) + \Pi'(p_m)(p_0 - p_m) + \frac{1}{2} \Pi''(p_m)(p_0 - p_m)^2$, which would imply that the loss in profits $\Pi(p_0) - \Pi(p_m) \approx \frac{1}{2} \Pi''(p_m)(p_0 - p_m)^2$, given the optimality condition above. This loss is only second order in the difference between the actual and ideal price $p_0 - p_m$

In contrast, the numerator is first-order in $p_0 - p_m$, since social welfare is maximized at marginal cost $k$. Hence the social benefit may far exceed the private benefit. Thus, very small menu costs may lead to potentially large welfare effects (Figure 2.19). One can show that expansions in aggregate demand may lead to welfare increases, given sticky prices, because output is now closer to its socially optimal level.

Another way to derive this model is not to have costs of changing prices per se, but to assume that firms do not always optimize due to small costs of optimization. This approach was taken by Akerlof and Yellen, also on the reading list.

# Static Multi-Firm

The next model expands the previous model to the case of imperfect competition with many firms under general equilibrium. It is a version of the model of Blanchard and Kiyotaki, and is adapted from the versions presented in Romer and in Blanchard and Fischer.

We will now assume that there are $N$ producer-consumers. Each producer produces a differentiated good. The production function for each producer-consumer is $Y_{i} = L_{i}$.

We will assume that each consumer has a utility function

$$

U_{i} = \left(\frac{C_{i}}{g}\right)^{g} \left(\frac{\frac{M_{i}}{P}}{1 - g}\right)^{1 - g} - \frac{1}{\gamma} L_{i}^{\gamma} \tag {2.68}

$$ where $g$ is a constant, $M_{i}$ is individual money holdings and $C_{i}$ is the following index over all the consumption goods:

$$
C_{i} = N^{\frac{1}{1 - \eta}} \left(\sum_{j = 1}^{N} C_{ji}^{\frac{\eta - 1}{\eta}}\right)^{\frac{\eta}{\eta - 1}} \tag {2.69}
$$ and the price index is defined over the prices of the individual goods to be:

$$

P = \left(\frac{1}{N} \sum_{i = 1}^{N} P_{i}^{1 - \eta}\right)^{\frac{1}{1 - \eta}} \tag {2.70}

$$

This utility function is known as a Dixit-Stiglitz utility function. The basic idea is that the goods are differentiated products and are potentially close substitutes to one another. Hence firms will have some monopoly power over their goods, but not total, since if firms try to raise prices too high consumers will simply substitute towards other goods.

You may see this again in Micro. $^{19}$

The consumer's nominal budget constraint is:

$$

\sum_{j} P_{j} C_{ji} + M_{i} = \Pi_{i} + WL_{i} + \bar {M}_{i} \tag {2.71}

$$ where $\Pi_{i}$ is profits and $\bar{M}_i$ is individual initial money holdings.

One can work out that the demand for each good by consumer $i$ is:

$$
C_{ji} = \left(\frac{P_{j}}{P}\right)^{- \eta} \left(\frac{g I_{i}}{NP}\right) \tag {2.72}
$$ where $I_{i} = \pi_{i} + wL_{i} + \bar{M}_{i}$. This comes from the fact that utility is Cobb-Douglas in $C$ and $M$, so that total nominal consumption is a constant fraction $g$ of income $I_{i}$.

It follows that $C_i = g\frac{I_i}{P}$ and that $\frac{M_i}{P} = (1 - g)\frac{I_i}{P}$.

This implies that we can rewrite utility as:

$$

U_{i} = \frac{I_{i}}{P} - \frac{1}{\gamma} L_{i}^{\gamma} \tag {2.73}

$$

Thus, utility is linear in wealth.[20]

Now note that we can obtain the total level produced for an individual good by summing over the demands for all consumers. This implies that:

$$

Y_{j} = \left(\frac{P_{j}}{P}\right)^{- \eta} \frac{g}{N} \sum_{i} \frac{I_{i}}{P} \tag {2.74}

$$

If we use the facts that $\frac{I_i}{P} = \frac{P_i}{P} Y_i + \frac{M_i}{P}$ and that $Y = \sum_{i}\frac{P_i}{P} Y_i$ and define $\bar{M} = \sum_{i}\bar{M}_i$, then we can show that $\sum_{i}\frac{I_i}{P} = Y + \frac{\bar{M}}{P}$ and that

$$

Y = \frac{g}{1 - g} \left(\frac{\bar {M}}{P}\right) \tag {2.75}

$$

Thus, we have a standard aggregate demand equation.

We can use our expression for total real wealth, $\sum_{i}\frac{I_i}{P}$ to substitute into the demand curves for each good. This will be:

$$

Y_{i} = \left(\frac{P_{i}}{P}\right)^{- \eta} \frac{Y}{N} \tag {2.76}

$$

Substitute this back into the utility function, to obtain the following:

$$

U_{i} = \left(\frac{P_{i}}{P} - \frac{W}{P}\right) \left(\frac{P_{i}}{P}\right)^{- \eta} \frac{Y}{N} + \frac{W}{P} L_{i} - \frac{1}{\gamma} L_{i}^{\gamma} \tag {2.77}

$$

Now the producer-consumer has two choice variables: $P_{i}$ and $L_{i}$. Let's solve the model by looking at the first-order condition for each of these.

First, for $P_{i}$:

$$

\frac{P_{i}}{P} = \frac{\eta}{\eta - 1} \frac{W}{P} \tag {2.78}

$$

Note that the constant in front of wages is greater than one. Thus, we have a markup $\mu$ of price over marginal cost of greater than one, as expected.

The second condition is:

$$

\frac{W}{P} = L_{i}^{\gamma - 1} \tag {2.79}

$$

To see the full import of the last equation, let's note that the symmetry of the model implies that, in equilibrium, all firms will produce the same output and sell it at the same price. Thus, $P_{i} = P$ and $Y_{i} = Y_{j}$ for all $i$ and $j$. This is an important modeling strategy, and is commonly used. We can then combine the two first-order conditions to solve for $Y$ and $P$:

$$

\frac{Y}{N} = \left(\frac{\eta - 1}{\eta}\right)^{\frac{1}{\gamma - 1}} \tag {2.80}

$$ and:

$$

P = \frac{g}{1 - g} \frac{\bar {M}}{Y} \tag {2.81}

$$

Let's note that so far, without any costs of price adjustment, the price level is proportional to the money stock (since $Y$ is a constant, as solved for above), and that therefore money is neutral. One can also show that the competitive solution simply involves maximizing $L - \frac{1}{\gamma} L^{\gamma}$, which yields a level of output per firm of one. Therefore, the level of output produced under the monopolistic competition case is smaller than the equilibrium level of output, as expected. The level of output small as the elasticity of substitution across goods, $\eta$, diminishes, because the monopoly power of each of the firms increases.

Let us now consider imposing small costs of changing prices. Consider the effects of a shock to the stock of money. What we notice is that since the firm is very close to its optimum, but society is far away from its optimum, we will have the same first-order loss in social welfare of not adjusting versus a second-order loss for the firm of not adjusting. Thus, the same result will hold as in the Mankiw menu-cost article.

However, there is an additional factor here which is solely from the multi-firm aspect. Let's note that the demand for each good is a function both of the relative price of the good and of the level of aggregate demand. Let's think about a decrease in $M$. From the perspective of an individual firm, lowering its price would raise the demand for its good directly through the relative price effect. But, given all other prices, lowering the price of its good would also have a slight effect on the price level. Lowering the price level slightly would raise the level of aggregate demand, and raise the demand for all goods. The firm does not take this effect into account in making its decisions. This second effect on aggregate demand is called the aggregate demand externality. It has the following implications:

Suppose that there is a small cost of changing prices, so that it is not individually optimal for a firm to change prices in response to a change in the money stock. It may be optimal for all firms to do so, though, due to this aggregate demand externality. We may therefore arrive at a situation of multiple equilibria, with the following two equilibria:

- All firms adjust prices. They are all better off, even net of the menu cost, due to the aggregate demand externality
- No firm changes its price. All firms are worse off than they would be under the first equilibrium, but no individual firm has an incentive to change its price.

Because all firms are better off under the first equilibrium, that equilibrium is Pareto superior to the second equilibrium. If all firms were able to coordinate on an equilibrium, they would choose the first one. They may not get there because of the coordination problem. This multiplicity of Pareto-ranked equilibria is known as coordination failure, and is a more general feature of other macroeconomic models we will return to later in the course.

# 2.5.3 Dynamic Models

Let's think about dynamic versions of these models. In logs, we can write individual demand functions, which is what these monopolistically competitive firms care about, as:

$$ y_{i}
(t) = m
(t) - p
(t) - \eta \left(p_{i}
(t) - p
(t) \right) \tag {2.82}
$$

For simplicity, let $\eta = 1$, so that we may write the right-hand-side of the above as $m(t) - p_i(t)$.

Assume the quantity theory is true, so that $y(t) = m(t) - p(t)$, and let the symmetric price index $p(t) = \int p_i(t) \, d\mathrm{i}$.

Suppose that firms must pay a fixed menu cost $z$ to change their nominal price $p_i(t)$.

Then, as in the Miller-Orr model of money demand, we will assume the optimal policy for firms with regard to pricing is an $(s, S)$ policy.

For now, we will assume that the nominal money stock $M(t)$ is monotonically increasing. Hence the $(s, S)$ policy is a one-sided policy; firms will change their nominal price when $m(t) - p_i(t) = S$, and will change it so that $m(t) - p_i(t) = s$, so that the price changes by $S - s$. Firms in the interior of the interval will not change their price, so that $m(t) - p_i(t)$ will simply increase by the amount that $m$ increases (Figure 2.20).

Finally, assume that the initially distribution of relative prices is such that $m(t) - p_i(t)$ is distributed uniformly over the interval $(s, S]$.

Now consider a small change in nominal money of size $\Delta m << (S - s)$. Given the menu cost, only firms within $\Delta m$ of the top of the distribution will want to change prices. From the uniformity assumption, there are $\frac{\Delta m}{S - s}$ of such firms.

Each of these firms changes its price by an amount $S - s$. Thus, the total change in prices is $\frac{\Delta m}{S - s} (S - s) = \Delta m$. Therefore, $\Delta p = \Delta m$, so $\Delta y = \Delta m - \Delta p = 0$. Money is neutral at the aggregate level.

Neutrality comes at the aggregate level because the distribution of prices is unchanged, as illustrated by the picture below. All firms individual change output in response to the monetary shock, but the net aggregate change in quantities is zero (Figure 2.21). This result breaks down if the initial distribution is not uniform (although one can show that under some conditions non-uniform distributions will eventually converge to uniform ones). It also breaks down if the money shocks are so large that all firms become concentrated at $s$.

This result, by Caplin and Spulber (1989) is not meant to be realistic, but is just meant to show that adding dynamics to menu cost models may significantly alter the traditional results.

Caplin and Leahy (1991) subsequently showed that the results of the model are reversed if one makes different assumptions about the money supply process. In particular, assume that $m$ follows a Brownian motion, so that $\Delta m$ is equally likely to be positive as negative. Then the optimal policy under a menu cost is to follow a two-sided $(s, S)$ rule. Assume that the firm's objective function is symmetric in the state variable $m(t) - p_i(t)$, so that the $s, S$ rule is symmetric: the firm will adjust its price so that the state variable equals 0 if $m(t) - p_i(t) = S$ or $m(t) - p_i(t) = -S$. Now assume that the initial distribution of firms is uniform over an interval of length $S$ somewhere within the interval $(-S, S)$.

In this case, changes in nominal money will not cause any firms to change their prices as long as the distribution of firms does not hit $S$ or $-S$. The distribution of firms will be unchanging. Since prices are inflexible and money is changing, money is nonneutral. If there is a series of positive or negative money shocks, the distribution of firms may hit the upper or lower bound, and the results will revert to the Caplin and Spulber model (Figure 2.22).

# 2.6 Evidence And New Directions

The most important empirical results they models confirm is the long-standing body of results which argues that aggregate demand disturbances affect output. These are too numerous to go into here, but include Friedman and Schwarz's Monetary History, referred to above, and much of empirical monetary economics[21] (surprisingly much less work has been done on the effects of government spending on output). The new theoretical results presented here to a large degree only reconfirm older results which are already known.

There are some new implications of these models, however. The first to be tested was simply the idea that the slope of the short-run Phillips curve should be related to the average level of inflation as well as the variance of inflation. If inflation is high, firms are changing prices more often, and it is easier to respond to aggregate demand disturbances by changing prices rather than by changing output. Ball, Mankiw and Romer have tested this, and found it to be so. Recall that Lucas's imperfect information model implied that the Phillips curve became steeper. This is also a prediction of the Ball, Mankiw and Romer model. Thus, Ball Mankiw and Romer have a model which makes the same prediction as the Lucas model for one relationship, and postulates another relationship (between inflation and the slope of the Phillips curve) which is true in the data but not predicted by the Lucas model (Figure 2.23).

This is a very active and large area of research. Among the topics within it:

- The evaluation of monetary policy rules is done within dynamic versions of these models.
- The real effects of imperfect competition. Julio Rotemberg and Michael Woodford have written a variety of RBC-like models with imperfect competition, and explored other effects on output different from the ones presented here
- Dynamic GE models with Keynesian features. Many RBC proponents and Keynesians are starting to write down dynamic models which have fixed prices or menu costs. Authors include Patrick Kehoe, Martin Eichenbaum and Miles Kimball, to name a very few.
- Aggregation issues. Ricardo Caballero, Eduardo Engel and John Leahy have written papers which think about the interactions between firms more carefully, and the relationships between microeconomic behavior and macroeconomic behavior. This is done even for more general Keynesian models.

# 2.7 Problems

1. Suppose the economy is described by the following aggregate demand and supply curves:

$$ y_{t} = m_{t} - p_{t} + v_{t} \tag {2.83}
$$

$$ y_{t} = \alpha \left(p_{t} - E_{t - 1} p_{t}\right) + \epsilon_{t} \tag {2.84}
$$ where $v_{t}$ and $\epsilon_{t}$ are iid disturbances. Suppose that private agents are misinformed, and believe that the economy is described by the same aggregate demand curve as above, but the following aggregate supply curve:

$$ y_{t} = \beta \left(p_{t} - E_{t - 1} p_{t}\right) + \epsilon_{t} \tag {2.85}
$$ where $\beta \neq \alpha$

(a) Will this ignorance lead to any real effects of anticipated money under any of the following monetary policies? (Where relevant, assume the central bank knows the true aggregate supply curve, but people believe the other aggregate supply curve).

$$ m_{t} = \bar {m} + u_{t} \tag {2.86}
$$

$$ m_{t} = \rho m_{t - 1} + u_{t} \tag {2.87}
$$

$$ m_{t} = - cy_{t - 1} + u_{t} \tag {2.88}
$$

Here, $u_{t}$ is a random error, and $0 < \rho < 1$.

(b) Now suppose agents make a different mistake. They think the supply function is:

$$ y_{t} = \alpha \left(p_{t} - E_{t - 2} p_{t}\right) + \epsilon_{t} \tag {2.89}
$$

Answer the same question as in

(a)

(c) Give a brief intuitive explanation of the differences in your answers between parts

(a) and

(b) .

2. Suppose we are in an economy in which wages are set in even periods for each of the following two periods. Thus in period zero, wages are set for periods 1 and 2; in period 2, for periods 3 and 4, and so on. Wages are predetermined, not fixed, and thus may differ across the two periods. Wages are set so that the expected real wage is constant. Expectations are rational. The production function is: $Y_{t} = L_{t}^{\alpha}$, where $\alpha < 1$. Assume that aggregate demand is well represented by the quantity theory. There are no shocks to aggregate supply.

(a) Will anticipated money have real effects in odd periods? In even periods?

(b) For how many periods will a shock to unanticipated money have real effects if the shock occurs in an odd period? In an even period?

(c) Suppose velocity is distributed iid $N(0, \sigma_v^2)$. Are real wages acyclical, countercyclical or procyclical?

3. Consider an economy with a representative firm with a production function of $Y_{t} = A_{t}L_{t}^{\beta}$, where $\beta < 1$.

The firm faces a competitive market for its output, $Y_{t}$ and for labor $L_{t}$. The quantity theory of money, $M_{t}V_{t} = P_{t}Y_{t}$ holds. $V_{t}$ is constant at $\bar{V}$, and $M_{t} = \bar{M}$ for $t = T - 1, T - 2, \ldots$. Today is time $t = T$. Labor supply is given by $L_{t}^{S} = (\frac{W_{t}}{P_{t}})^{\theta}, \theta > 0$. Your answers to each of the following may be qualitative.

(a) Suppose that the wage and price level are perfectly flexible. What is the effect on output, labor and the real wage if the money stock doubles from time $T - 1$ to $T$ (i.e. $M_T = 2\bar{M}$ )?

What is the effect on output, labor and the real wage if the productivity parameter $A$ doubles from time $T - 1$ to $T$? For each of the two shocks, state whether the real wage and employment are procyclical, countercyclical or neither.

(b) Now suppose the nominal wage is perfectly flexible, but the price level $P_{t} = \bar{P}$, which is greater than the level which clears the goods market. What is the effect on output, labor and the real wage if the money stock doubles from time $T - 1$ to $T$?

What is the effect on output, labor and the real wage if the productivity parameter $A$ doubles from time $T - 1$ to $T$? For each case, assume the price level remains above the market-clearing level after the shock.

For each of the two shocks, state whether the real wage and labor are procyclical, countercyclical or neither.

(c) Now suppose the nominal price is perfectly flexible, but the nominal wage is fixed at a level $W_{t} = \bar{W}$, greater than the level which clears the labor market. What is the effect on output, labor and the real wage if the money stock doubles from time $T - 1$ to $T$?

What is the effect on output, labor and the real wage if the productivity parameter $A$ doubles from time $T - 1$ to $T$?

For each case, assume the wage remains above the market-clearing level after the shock.

Does it matter whether the doublings are anticipated or unanticipated?

For each of the two shocks, state whether the real wage and labor are procyclical, countercyclical or neither. Account for any differences in your answer to this part and your answer to the previous part.

4. Consider a firm with the following loss function:

$$
\Pi \left(p_{i}, p, m\right) = - \gamma \left(p_{i} - p - \alpha (m - p)\right)^{2}, \tag {2.90}
$$ where $P_{i}$ is the firm's nominal price, $p$ is a price index, $m$ is the money supply and $\gamma$ and $\alpha$ are positive constants. All variables are in logs. Suppose that initially $P_{i} = p = m = 0$.

(a) Suppose the firm incurs a fixed cost $\beta$ each time it alters its nominal price. Characterize the optimal policy in the face of a once and for all change in $m$ given that the price index remains constant and that the firm discounts future losses at rate $r$. How does this policy depend on the curvature of the loss function $(\gamma)$ and the discount rate $(r)$?

# 2.7. Problems

(b) Suppose that the economy is made up of many firms just like the one above and that the log price index is just the average of log prices $(p = \int p_i di)$. What policy would these firms follow in the face of a once and for all change in the money stock $M$ if they could agree to follow identical strategies? Account for any differences in your answer from the answer given in part
(a) . Interpret the role of $\alpha$.

5. Suppose the economy consists of a representative agent with the following utility function:

$U = C^{\alpha}\left(\frac{M}{P}\right)^{1 - \alpha}$. Labor is supplied exogenously at level $\bar{L}$. Output is supplied by a perfectly competitive representative firm, which has production function $Y = L^{\eta}$. Any profits are remitted to the representative agent. There is a government, which purchases amount $G$ of goods and services. This amount is financed by a lump-sum tax, of level $T$ and seigniorage. Money is the only asset in the economy; initial money holdings are given by $M'$. Money is supplied exogenously by the government.

Assume both prices and wages are flexible.

(a) Write down the consumer's and the firm's intertemporal maximization problems.

(b) Solve for expressions for aggregate demand and supply (that is, output as a function of the price level) and for the equilibrium price and wage levels as a function of exogenous variables.

(c) Describe the effects of increases in initial money holdings $M'$ on all the endogenous variables in this economy.

(d) Describe the effects of increases in government purchases $G$ on all the endogenous variables in this economy.

Now assume that the nominal wage is permanently fixed at $W = \bar{W}$. In solving the problems below, you may make further convenient assumptions about the level of $\bar{W}$, with justification.

(e) Solve for expressions for aggregate demand and supply (that is, output as a function of the price level).

(f) Solve for the level of unemployment, if applicable.

(g) Describe the effects of increases in initial money holdings $M'$ on all the endogenous variables in this economy.

(h) Would your answers to the previous parts qualitatively change if the price level were fixed instead of the nominal wage level?

6. Consider the following dynamic, perfect-foresight version of the IS-LM model:

$$ r = R - \frac{\dot {R}}{\rho} \tag {2.91}
$$

$$ r = \alpha y - \beta m \tag {2.92}
$$

$$
\dot {y} = \gamma (d - y) \tag {2.93}
$$

$$ d = \lambda y - \theta R + g, \tag {2.94}
$$ where $R$ is the long-term interest rate, $r$ is the short-term interest rate, $y$ is output, $m$ is real money balances, $d$ is demand, $g$ is fiscal policy. All parameters are positive. In addition, $\lambda < 1$.

(a) Give interpretations for these equations.
(b) Write the model using two variables and two laws of motion. Identify the state (non-jumping) variable and the costate
(jumping) variable.
(c) Draw the phase diagram, including the steady-state conditions, the implied dynamics, and the saddle-point stable path.
(d) Describe the effects of an immediate permanent decrease in $g$. What happens to short-term and long-term interest rates?

7. Consider the following version of the IS-LM model which incorporates the stock market (after Blanchard, AER, 1981):

$$

\frac{\dot {q}}{q} + \frac{\pi}{q} = r \tag {2.95}

$$

$$

\pi = \alpha_{0} + \alpha_{1} y \tag {2.96}

$$

$$ r = cy - \beta m \tag {2.97}
$$

$$
\dot {y} = \gamma (d - y) \tag {2.98}
$$

$$ d = \lambda y + \theta q + g, \tag {2.99}
$$ where $q$ is the market value of firms, $\pi$ is profits, $r$ is the short-term interest rate, $y$ is output, $m$ is real money balances, $d$ is demand and $g$ is fiscal policy. All parameters are positive. Assume $\lambda < 1$ and that, near the steady-state value of $q$ (i.e. where both $\dot{q}$ and $\dot{y}$ equal zero), $cq - \alpha_{1} < 0$. The first and second equations respectively define an arbitrage condition between the value of the firm and the real interest rate, and define profits.

(a) Write the model using two variables and two laws of motion. Identify the state (non-jumping) variable and the costate
(jumping) variable.
(b) Draw the phase diagram, including the steady-state conditions, the implied dynamics, and the saddle-point stable path.
(c) Describe the effects of an immediate small decrease in $g$ on $y$, $q$ and $r$.

# 2.7. Problems

(d) Describe the effects of an immediate small decrease in $m$ on $y$, $q$ and $r$.
(e) Describe the effects of an announced future small decrease in $g$ on $y$, $q$ and $r$.

# Chapter 3

# Macroeconomic Policy

In the last chapter, we saw models in which disturbances to aggregate demand could affect the GDP and other real variables. These economic fluctuations arose in part as a consequence of the failure of prices to continuously clear markets. We also saw that models with imperfect competition would lead to a suboptimal level of output. These facts suggest that at least in principle, economic policy could be welfare improving, and we will turn to this subject now.<sup>1</sup>

In practice, all policy is subject to lags, both in the time from which it is recognized that policy should be applied to the time it in fact is applied, and from the time policy is applied to the time it has effects. The former is known as the inside lag and the latter as the outside lag. It is usually supposed that fiscal policy (i.e. changes in tax rates or government spending) has a very long inside lag, but a short outside lag. Budgets are often passed late0.2 Monetary policy is assumed to have a very short inside lag, but a long outside one; the Fed can decide to change the Federal Funds rate instantly, but it can take over a year for the effects of monetary policy on the economy to be felt. Largely because of its short inside lag, and because fiscal policy may have concerns other than economic stabilization, we shall make the common assumption that only monetary policy is used to stabilize output. We will focus on stabilization rather than attempts to consistently raise the level of output because the models of the last section imply that those attempts are doomed to failure, as the classical dichotomy holds in the long run.

The next two sections will discuss whether in general one wants to implement policy by following a rule, or by allowing the policymaker to decide what to do at his or her discretion. The first section will describe some of the traditional arguments against allowing for discretionary policy. The second section describes a more modern set of arguments, which have a dynamic programming or game-theoretic basis.

The third section briefly describes an important point made by Robert Lucas concerning the econometric evaluation of policy. The final section briefly discusses long-run links between fiscal and monetary policy.

# 3.1 Rules V. Discretion

# 3.1.1 The Traditional Case For Rules

There has long been debate over whether policy should be set by following a rule (that is, a set of procedures which specifies what policy should be under any circumstances), or by using discretion, that is reoptimizing continuously. It might initially seem that since under discretion, one always has the option of following a rule, that rules would always be dominated by discretion. We shall see later that this is not the case, because the very ability to be free to act may generate undesirable consequences. we will focus on the case for simple rules, rather than more complicated ones, because this is what the literature has done. Keep in mind that in principle rules could be extremely complicated.

The traditional case for rules has focused on the uncertainty associated with economic policy. It may well be the case that if the effects of the policy instrument on output are not well understood, that policy might be destabilizing rather than stabilizing. We will look at two arguments which illustrate this point. The first is due to Milton Friedman.

Suppose there is some variable $X_{t}$ which the policymaker wishes to stabilize. Let $Z_{t}$ denote the behavior of that variable when economic policy is applied, and let $Y_{t}$ be the effects of the policy on the variable. Then $Z_{t} = X_{t} + Y_{t}$, or the behavior of the variable under policy = the behavior without policy + the effects of the policy. Stabilization policy will only be effective when $\sigma_z^2 < \sigma_x^2$, or the variance of the variable under policy is lower than the variance without policy. From the definitions of $X, Y$ and $Z$ we see that $\sigma_z^2 = \sigma_x^2 + \sigma_y^2 + 2r_{xy}\sigma_x\sigma_y$, where $r_{xy}$ is the correlation between $x$ and $y$. Hence policy is only stabilizing if

$$ r_{xy} < - \frac{1}{2} \frac{\sigma_{y}}{\sigma_{x}} \tag {3.1}
$$

First, note that this implies that policy must be countercyclical. Second, note that the requirements this condition places on policy may be hard to fulfill in practice. If the standard deviation of the effects of the policy is equal to the standard deviation of the policy variable itself, then the policy must go in the right direction at least half of the time (i.e. the correlation must be between -0.5 and -1). The presence of lags may result in policymakers stimulating the economy as a recovery is already beginning or dampening it as it reaches its peak.

Note that this condition is more easily met the smaller the effects of policy on the variable are. It is reasonable to assume that policy effects are smaller the smaller the variance of the policy is. Simple policy rules, in which, for example, the rule is to fix the growth rate of some policy instrument are examples of policies with small variance. Discretionary policies also in principle could have small variance, although in practice they may not. Thus this relationship has been taken as a suggestion that simple policy rules are most likely to be stabilizing.

The following example makes the same point in the context of a model in which the effects of monetary policy on the economy aren't known with certainty. Suppose that it is known that output $y$ and money $m$ have the following relationship:

$$ y_{t} = a
(L) y_{t - 1} + b
(L) m_{t} + \epsilon_{t}, \tag {3.2}
$$ where $\epsilon_{t}$ is iid, and $a(L)$ and $b(L)$ are both lag polynomials. Suppose that policy (i.e. $m_{t}$ ) must be set before $\epsilon_{t}$ is observed, and the goal is to minimize the variance of $y$.

The optimal variance-minimizing policy is, assuming $a(L)$ and $b(L)$ are known:

$$ m_{t} = - b
(L)^{- 1} a
(L) y_{t - 1}, \tag {3.3}
$$ which implies $y_{t} = \epsilon_{t}$. Thus monetary policy removes all persistence in output. This may be viewed as a somewhat complicated monetary-policy rule. It is also a discretionary outcome, since it is what would be chosen if there were reoptimization each period.

This may have some undesirable consequences. First, suppose that $a(L) = a_0$ and $b(L) = b_0 + b_1L$. Then the optimal policy is to set $m_t = -\frac{b_1}{b_0} m_{t-1} - \frac{a_0}{b_0} y_{t-1}$. If $b_1 > b_0$, we have an unstable difference equation- $m_t$ will be increasing in absolute value at an explosive rate. Policy each period will become larger and larger, as at each period a "correction" is applied to last period's policy.

This may not be problematic if $a(L)$ and $b(L)$ are known with certainty. If they are not known, however, the overcorrections may well end up destabilizing output by causing larger and larger swings. To see this, suppose that the Fed follows the monetary rule given above, but the true behavior of output is given by:

$$ y_{t} = a_{0} y_{t - 1} + b_{0} m_{t} + (b_{1} + v) m_{t - 1} + \epsilon_{t}, \tag {3.4}
$$ where $v$ is some constant.

The resulting equation for output is:

$$ y_{t} = vm_{t - 1} + \epsilon_{t} \tag {3.5}
$$

Note that under the assumptions above, $m_t$ is nonstationary, and is in fact explosive: the growth rate of $m_t$, $m_t - m_{t-1}$, is growing.

Hence the variance of $y_{t}$, which is equal to $v^{2}\text{var}(m_{t - 1}) + \text{var}(\epsilon)$, will also be growing with $t$.

Now consider the policy of just setting $m_t = \bar{m}$ for all $t$. Then,

$$ y_{t} = a_{0} y_{t - 1} + b_{0} \bar {m} + (b_{1} + v) \bar {m} + \epsilon_{t}, \tag {3.6}
$$ so that $var(y_{t}) = \frac{1}{1 - a_{0}^{2}} var(\epsilon)$.

This variance will be smaller than the variance of the 'optimal policy' for some values of $t$. Thus having a passive policy of setting the money stock to a constant may in fact be more stabilizing than the optimal policy in the presence of parameter uncertainty.

These phenomena reflect the problems associated with monetary policy's "long and variable lags" noted by Friedman.

Both of these arguments suggest that in the presence of uncertainty less variable policy may be more desirable than more variable policy. This is consistent with simple policy rules being preferred to discretionary policy, but does not definitively establish the preference. To do so, we will have to turn to a more modern set of models.

# 3.2 The Modern Case For Rules: Time Consistency

The modern case for rules is essentially predicated on the observation that there may be instances in which the government under discretion has an incentive to fool people. They cannot consistently fool people, however, and this fact may lead to lower welfare than under cases in which their hands are tied.

The following example (which is not original with me) is one I tell undergraduates to illustrate this concept. As a professor, I give exams primarily to ensure that my students study and learn the material. However, taking exams is an unpleasant experience for the students, and writing and grading exams is an unpleasant experience for me. Hence a seemingly better policy for both me and my students is for me to announce an exam, and then not give it.

Of course, the first problem with this policy is that it is not repeatable. Once I have done it once, students will realize that there is some chance I that the next exam I announce will not in fact be given, and they will study less. In fact, they will study less even if from that time afterwards I always give exams I have announced. Even worse, it's possible than even if I never implemented the policy at any time, students would study less because there is some non-zero probability that I could implement the policy.

By following this policy, I will have a one-time gain (by making my students study, but not in fact going through the pain of having an exam), but suffer a permanent loss (students will study at least a little bit less hard from now on).

The following sections will discuss this idea as it applies to economic policy. We will first see a generic fiscal policy model, then a model of monetary policy using some of the models of the last chapter, and finally will consider some alternatives to rules to solving the problem.

# 3.2.1 Fischer'S Model Of The Benevolent, Dissembling Government

[Not covered in Spring 2002]

Consider a two-period economy in which the representative consumer consumes in both periods but only works in the second period. She initially has some level of capital $k_{1}$ and can save by accumulating capital, to level $k_{2}$. The marginal product of labor is constant at level $a$ and the marginal product of capital is constant at level $r$. She has a time endowment $\bar{n}$; second period labor is denoted $n_{2}$.

In the second period, some level of government spending may be provided, which contributes directly to utility.

Utility is:

$$ u \left(c_{1}, c_{2}, n_{2}, g_{2}\right) = \ln c_{1} + \delta \left(\ln c_{2} + \alpha \ln (\bar {n} - n_{2}) + \beta \ln g_{2}\right) \tag {3.7}
$$

We will consider four ways in which this level of government spending may be provided. We will assume throughout that it is the goal of the government to maximize the representative consumer's utility.

# Method 1: Command Economy

In this method, we will assume that the government can directly control the amount of capital accumulated and labor supplied. The aggregate resource constraints the economy faces are:

$$ c_{1} + k_{2} \leq k_{1} r \tag {3.8}
$$

$$ c_{2} + g_{2} \leq k_{2} r + n_{2} a \tag {3.9}
$$

We get the following utility-maximizing solution, which is presented so that subsequent solutions may be contrasted with it:

$$ c_{1} = \frac{rk_{1} + a \frac{\bar {n}}{r}}{1 + \delta (1 + \alpha + \beta)} \tag {3.10}
$$

$$ c_{2} = c_{1} \delta r \tag {3.11}
$$

$$
\bar {n} - n_{2} = c_{2} \frac{\alpha}{a} \tag {3.12}
$$

$$ g_{2} = c_{2} \beta \tag {3.13}
$$

Note that the intraand intertemporal optimality conditions for the choice of labor supply and consumption (the middle two equations) are exactly the same as they would be in the absence of government spending. Thus, the government spending is provided without any distortion, in effect from a lump-sum tax on first-period consumption.

**Method 2: Precommitment**

Now suppose that the government cannot directly control the actions of the consumer. Rather, the government must finance government spending through taxing either labor or capital. Assume that it cannot tax first-period capital (if it could, it would finance government spending through this, since the tax would in effect be a lump-sum tax and therefore non-distortionary).<sup>3</sup> Let the tax imposed in the second period on labor be denoted $\tau_{2}$, and let the second-period after-tax real interest rate be $r_2$.<sup>4</sup>

Assume for now that the government can precommit to its tax policies. That is, it can announce tax rates for period 2 in period 1, and is forced to in fact use those rates in period

2. Then we can consider the problem as follows: Consumers maximize their utility subject to the budget constraints

$$ c_{1} + k_{2} \leq k_{1} r \tag {3.14}
$$

$$ c_{2} \leq k_{2} r_{2}^{e} + n_{2} a \left(1 - \tau_{2}^{e}\right), \tag {3.15}
$$ where the $e$ superscripts denote expected variables.

The solution for this is:

$$ c_{1} = \frac{k_{1} r + a \frac{\bar {n}}{r_{2}^{e}} \left(1 - \tau_{2}^{e}\right)}{1 + \delta (1 + \alpha)} \tag {3.16}
$$

$$ c_{2} = \delta r_{2}^{e} c_{1} \tag {3.17}
$$

$$ n_{2} = \bar {n} - c_{2} \frac{\alpha}{a \left(1 - \tau_{2}^{e}\right)} \tag {3.18}
$$

Note that both taxes introduce distortions. The capital tax distorts the tradeoff between first and second period consumption. The labor tax distorts the tradeoff between consumption and leisure in the second period as well as reducing the level of first and second period consumption. The labor tax is thus more distortionary.

The government takes these decisions as given, and maximizes the consumer's utility (or, strictly speaking, indirect utility where we have inserted the solutions to the consumer's problem into the utility function) subject to the government budget constraint:

$$ g_{2} = k_{2} \left(r - r_{2}\right) + n_{2} a \tau_{2} \tag {3.19}
$$

From this, one can derive an optimal level of taxes on labor and capital income, and can show that the level of government spending provided is $g_{2} = c_{2}\beta$. In principle, ex post the government might have liked to have simply used the capital tax, since the labor tax is more distortionary.

If the government had announced that it was only going to tax capital, however, consumers might choose to not save any capital and instead supply more labor. Thus, the optimal choice of tax instruments involves using a distortionary tax, which means that welfare is worse than under the command economy.

We will next look at cases where the government is unable to precommit to an announced tax rate. We will consider two cases: one in which the government can fool people, and one in which it cannot.

**No Commitment**

To think about both cases, let us consider the problems of the consumer and government by solving backwards. Starting with the second period:

The consumer chooses $c_{2}$ and $n_{2}$ to maximize second-period utility:

$$
\ln c_{2} + \alpha \ln (\bar {n} - n_{2}) + \beta \ln g_{2} \tag {3.20}
$$ subject to the second period budget constraint:

$$ c_{2} \leq k_{2} r_{2} + n_{2} a (1 - \tau_{2}) \tag {3.21}
$$

The implied solution is:

$$ c_{2} = \frac{k_{2} r_{2} + \bar {n} a (1 - \tau_{2})}{1 + \alpha} \tag {3.22}
$$

$$
\bar {n} - n_{2} = c_{2} \frac{\alpha}{a (1 - \tau_{2})} \tag {3.23}
$$

The government also maximizes second period

(indirect) utility, subject to the same constraint as in the previous case.

Note that, as was mentioned above in the previous case, it would now be optimal for the government not to use the labor income tax at all, but just to use the capital tax. The labor income tax distorts the consumption-labor decision, and leads to deadweight loss. Although the capital tax will reduce the amount of second period consumption, it will not lead to second-period deadweight loss. Since capital has already been accumulated, this kind of tax is equivalent to a lump-sum tax. It is more generally termed a capital levy.

However, if we now go back to the first period, consumers will clearly wish to accumulate less capital if they know that only capital is being taxed, and instead supply more labor in the second period. Hence the optimal solution may not be implementable. Thus, we must distinguish two cases:

- The government cannot fool the people. In this case, the government will end up taxing just capital, there will be little capital accumulation, and utility will be low. We will refer to this as the Time Consistent, Dynamically Consistent or Discretionary Case.
- The government can fool the people. In this case, people will accumulate capital, and the government will tax it away in a nondistortionary fashion. Utility will be high. We will refer to this as the Time Inconsistent or Dynamically Inconsistent Case.

**Ranking The Cases And Discussion**

In terms of utility, we can rank the four cases from highest to lowest as follows:

1. Command Economy
2. Time Inconsistent
3. Precommitment or Rule
4. Time Consistent or Discretion

The command economy solution is best because there is no conflict among agents and no need to resort to distortionary taxation. The time inconsistent solution is next because you also get no distortion of second-period labor supply and you get capital accumulation. The precommitment case is better than the discretion case because although there is distortion, you will get capital accumulation. The command economy case essentially assumes away the problem of conflict between the government and consumers and seems unrealistic.<sup>5</sup> Thus, it is usually ignored. The time inconsistent case is itself inconsistent with the notion of forward-looking consumers with rational expectations. Particularly in repeated games, the assumption that the government can continually fool people seems implausible.

Thus, this solution is usually not available. Hence the choice is between precommiting to the two tax rates, which is another way of saying the government follows a policy rule, or allowing the government to reoptimize each period, i.e. following discretion. Clearly rules are better than discretion in this case. The requirement that policies be time-consistent comes from two more general notions in economics.

The first is that the time-consistent solution follows the dynamic programming solution. Solutions to dynamic programming models have the property that they are optimal from each period onwards. Thus, finite dynamic programming models may be solved by working backwards from the last period. Solutions must be optimal given what consumers know will happen in the last period.

The second comes from game theory. Solutions to game-theoretic models are said to be subgame-perfect if they give the optimal answer at each subgame, or decision node of the game tree. One can think of each period as a new decision node for the people and for the government. Again, one can solve such problems by working one's way up the game tree.

There are many examples of policies which involve time-inconsistency issues. Patents are one such policy; one may wish to award patents to promote innovation, but ex post to eliminate them to allow for competition. We shall see in the next section that monetary policy may also involve dynamic inconsistency issues.

## 3.2.2 Monetary Policy And Time Inconsistency

Suppose aggregate supply is determined by the following Lucas-style supply curve:

$$ y = \bar {y} + b (\pi - \pi^{e}) \tag {3.24}
$$

To think about policy, we will need to specify society's preferences over inflation and output. We will not derive this explicitly from utility, but simply make the assumption that society has the following quadratic loss function:

$$
L = \frac{1}{2} (y - k \bar {y})^{2} + \frac{1}{2} a (\pi - \pi^{*})^{2}, \tag {3.25}
$$ where $k > 1$. Thus, society has some optimal level of inflation $\pi^{*}$, which one might derive from optimal tax considerations (i.e. through seigniorage); this may be set to zero without loss of generality. We will also assume that society desires a level of output which is above the natural rate $\bar{y}$. This assumption is crucial to the model, as we will see below. It may be justified by assuming that tax distortions or imperfect competition make output too low, or one may believe that the natural rate of unemployment is too high. The monetary authority therefore has an incentive to try to generate unexpected inflation to raise output above the natural rate.

Using the Phillips curve to substitute for $y$, we may rewrite the loss function as:

$$

\frac{1}{2} \left((1 - k) \bar {y} + b \left(\pi - \pi^{e}\right)\right)^{2} + \frac{1}{2} a \left(\pi - \pi^{*}\right)^{2} \tag {3.26}

$$

As in the taxation model, consider two kinds of solutions.

First, assume that the government can precommit to a level of inflation. People believe the level of inflation they precommit to, so that $\pi = \pi^{e}$. Given this, $y = \bar{y}$. Thus the loss-minimizing level of $\pi$ to commit to is $\pi^{*}$.

Second, assume that the government can't credibly commit to a level of inflation. It then chooses an optimal rate of inflation, taking expected inflation $\pi^e$ as given.

Taking the first-order condition for the above loss function implies:

$$

\pi = \frac{b^{2}}{a + b^{2}} \pi^{e} + \frac{b}{a + b^{2}} (k - 1) \bar {y} + \frac{a}{a + b^{2}} \pi^{*} \tag {3.27}

$$

In a rational expectations equilibrium, $\pi = \pi^{e}$, i.e. actual and expected inflation coincide. Plugging this in, one obtains as a solution for inflation:

$$

\pi = \pi^{*} + \frac{b}{a} (k - 1) \bar {y} \tag {3.28}

$$

That is, inflation exceeds the socially optimal level. It does so because the government has an incentive to create unexpected inflation to put output above the natural rate. If it cannot commit to a level of inflation in advance, people will expect that it will overinflate, leading to the less desirable equilibrium.

There are a variety of ways around this problem:

1. Commit to a policy rule. The potential problem with the commitment solution is that discretion does have an option value. Giving it up may prevent the government from acting in unusual situations the rule did not anticipate.
2. Impose a punishment equilibrium. In a repeated game, have people expect the optimal level of inflation $\pi^{*}$ as long as the central bank cooperates, but have them expect the higher rate of inflation if the central bank ever deviates. One can show that this tit-for-tat strategy is consistent with rational expectations, and that in equilibrium the central banker will always choose to pay $\pi^{*}$ as a result.

3. Directly punish the central bankers, by writing into their contracts a provision which, say, reduces their salary if inflation is high (New Zealand actually has such a scheme). Such contracts are sometimes referred to as Walsh contracts.

4. Delegation

Suppose the loss function for society is:

$$

L = \frac{1}{2} (y - k \bar {y})^{2} + \frac{1}{2} a_{1} (\pi - \pi^{*})^{2} \tag {3.29}

$$

Now suppose the central banker has the loss function

$$

L = \frac{1}{2} (y - k \bar {y})^{2} + \frac{1}{2} a_{2} (\pi - \pi^{*})^{2} \tag {3.30}

$$ and we have the same Phillips curve as before.

Under the no precommitment solution, our solution to the level of inflation now becomes:

$$

\pi = \pi^{*} + \frac{b}{a_{2}} (k - 1) \bar {y} \tag {3.31}

$$ whereas the solution if the central banker has society's preferences would be:

$$

\pi = \pi^{*} + \frac{b}{a_{1}} (k - 1) \bar {y} \tag {3.32}

$$

Provided $a_2 > a_1$, inflation will be lower when authority is delegated to a central banker with preferences different from society's preferences. This model in fact provides a rationale for a conservative central banker; that is, a person who dislikes inflation more than society does.

It might initially seem that we would want to have a central banker with the largest possibly dislike of inflation; that is, to let $a_2$ go to infinity. But if there are disturbances to aggregate supply, by doing so we would in fact increase the variance of output, which would be undesirable.

#### 3.2.3 Reputation

If there is uncertainty about the policymaker's preferences, even a policymaker whose loss function places a very high weight on inflation may have difficulty in persuading the public of his true nature. The benefits from having him will therefore be somewhat less. Central bankers who are not in fact inflation haters may have an incentive to try to pretend to be inflation-haters, as this reputation may later be useful to them.

We will see this first in a two-period model which follows Romer's treatment, and then discuss what this model would look like in a multi-period setting.

For simplicity, let us work with a social welfare function rather than a loss function. Assume that this function is linearly positive in output and quadratically negative in inflation, so that for each period $t$,

$$

W_{t} = \left(y_{t} - \bar {y}\right) - \frac{1}{2} a \pi_{t}^{2}. \tag {3.33}

$$

Note that this still implies that output above the natural rate is desirable, which was the key in the original model.

This equals, after substituting our usual Phillips curve,

$$ b \left(\pi_{t} - \pi_{t}^{e}\right) - \frac{1}{2} a \pi_{t}^{2} \tag {3.34}
$$

Assume the discount rate for society is $\beta$, so that the goal is to maximize $W = W_{1} + \beta W_{2}$.

Now assume there are two kinds of central bankers:

- Type 1, who follow society's preferences
- Type 2, who have an infinite $a$ and will always set $\pi = 0$.

Prior to the first period, the people have some prior probability $p$ that the central banker in power is Type

1. Now note that since the Type 2 central banker will never play anything other than $\pi = 0$, if the public ever observes there is a nonzero inflation rate in period 1, they will know that their central banker is Type 1, and set their expectations accordingly. Thus, the Type 1 central banker has a choice in the first period between:
	- Playing a non-zero inflation rate and exposing his type, with the resultant expectational consequences for the next period.
	- Playing a zero inflation rate, which may increase the public's posterior probability that he is Type 2 and lower expected inflation.

Note that the Type 2 central banker never has an incentive to pretend to be a Type

1. Working backwards, whatever the level of $\pi^e$, the Type 1 central banker's problem is to maximize welfare given $\pi_2^e$. This will lead to a value for $\pi = \frac{b}{a}$. He will inflate, since he or she has nothing to lose. In the first-period, if he chooses $\pi_1 \neq 0$, he will be revealed to be of Type
2. He will then treat the first-period problem as a one-period problem, since the degree to which he inflates doesn't affect next period's expected inflation. Thus, he will set $\pi_1 = \frac{b}{a}$.

Given this, the value of his objective function for the two periods is:

$$
W_{INF} = \left[ b \left(\frac{b}{a} - \pi_{1}^{e}\right) - \frac{1}{2} a \left(\frac{b}{a}\right)^{2} \right] - \beta \frac{1}{2} a \left(\frac{b}{a}\right)^{2} \tag {3.35}
$$

The other possibility is to choose $\pi = 0$. The two possible classes of solution for this game-theoretic model would be for him to play either $\pi_1 = 0$ or $\pi_1 = \frac{b}{a}$ with certainty, or for him to randomize between the two outcomes. The randomization case is the more general one, so we will examine that one.

Let $q$ be the probability that the Type 1 central banker sets $\pi_1 = 0$. Suppose $\pi_1 = 0$ is observed. Then the public knows that it either has a Type 2 central banker, or a type 1 pretending to be a Type

2. Recall that the prior probability of being a Type 1 central banker was $p$. We can work out the posterior probability by Bayes' Rule:

$$
P (T ype 1 \mid \pi = 0) = \frac{P (\pi = 0 \mid T ype 1) P (T ype 1)}{P (\pi = 0 \mid T ype 1) P (T ype 1) + P (\pi = 0 \mid T ype 2) P (T ype 2)} \tag {3.36}
$$ which implies:

$$

P (T ype 1 \mid \pi = 0) = \frac{qp}{qp + (1 - p)} \tag {3.37}

$$

6

Expected inflation in period two is then $\pi_2^e = P(Type1|\pi = 0)\frac{b}{a} + (1 - P(Type1|\pi = 0))0$, or

$$

\pi_{2}^{e} = \frac{pq}{(1 - p) + pq} \frac{b}{a} < \frac{b}{a} \tag {3.38}

$$

We can then rewrite the objective function in the case when the central banker randomizes and in fact chooses $\pi = 0$ as:

$$

W_{0}

(q) = b \left(- \pi_{1}^{e}\right) + \beta \left[ b \left(\frac{b}{a} - \frac{pq}{1 - p + pq} \frac{b}{a}\right) - \frac{1}{2} a \left(\frac{b}{a}\right)^{2} \right] \tag {3.39}

$$

This simplifies to:

$$

\frac{b^{2}}{a} \beta \left[ \frac{1}{2} - \frac{pq}{1 - p + pq} \right] - b \pi_{1}^{e} \tag {3.40}

$$

Note that this is decreasing in $\mathbf{q}$. In the limit, if the central banker always plays $\pi = 0$ even when Type 1, he gets no reputation effect from playing $\pi = 0$.

As $q$ gets very small, observing $\pi_1 = 0$ strongly suggests to the people that the central banker is type
2. Thus, type 1's benefit from a big reputation effect. Suppose that $W_0(0) < W_{INF}$. Then it is never worthwhile for the type 1 central banker to play $\pi_1 = 0$, because the second-period benefits he will get from the reputation effect aren't enough to offset the first-period losses. One can show that this will occur if $\beta < \frac{1}{2}$. Thus, if the central banker doesn't care very much about the future, one reverts to the one-shot game, with the usual time consistency problems.

Now suppose that $W_0(1) > W_{INF}$. Then, even though the central banker doesn't in fact increase the probability that he is Type 2, it will be worthwhile for him to pretend that he is Type 2 just to avoid people raising $p = 1$. This will occur if $\beta > \frac{1}{2}\frac{1}{1 - p}$, which is greater than $\frac{1}{2}$.

Finally, suppose that $W_0(0) > W_{INF} > W_0(1)$. Then there is an incentive to randomize. Clearly from above this situation will occur if the discount rate $\beta$ is between $\frac{1}{2}$ and $\frac{1}{2}\frac{1}{1 - p}$. The actual $q$ chosen will be just at the point where the policymaker is indifferent between inflating and not inflating. One can show that this implies that $q = \frac{1 - p}{p}(2\beta - 1)$ (and that over the range of permissible $\beta$, $q$ therefore ranges continuously between 0 and
1. As stated, this may seem more like a model of deception rather than reputation. The Type 1 policy makers can, by playing low inflation, fool the public in believing they are Type 2, and then exploit this effect in the second period. But note that the Type 2 policymakers are also benefitting in a way. They will always want to play $\pi_1 = 0$, and will receive the benefit of the reputation effect. It would be nice if there were no Type 1 policymakers or if types were directly observable; given that this is not true, getting a reputation for being a Type 2 is the best they can do.

In the multi-period model, the Type 1 policymaker must decide each period between playing $\pi = 0$ or inflating. If he plays $\pi = 0$, he gains in reputation, and expected inflation is lower. If he inflates, he gets a one-period gain, but forever after is known to be Type 1, and we go back to a series of one-period games. Over time, the marginal gain from building up reputation increases, and thus the incentive to inflate increases. Thus, as before, we may have equilibria where Type 1's never inflate, ones where they always inflate, and now new ones where they inflate after some period of time.

Also note that the discount rate is key here. If the discount rate is too low, it isn't worthwhile for Type 1's to build up any form of inflation. One could recast this model into a model in which people are uncertain about the Central bank's discount rate, to obtain a similar sort of result.

### 3.3 The Lucas Critique

We will now turn from the general discussion of whether rules are preferable to discretion to an empirical issue: namely, under what conditions can we use econometric evidence on the effects of policy to help form future policy. For some time, central banks have been building large macroeconometric models, which until recently were large versions of the IS-LM or AD-AS model. One could then use these models to provide simulations for the effects of various different kinds of policies.

Lucas observed that it was in general unwise to believe that the parameters in the macroeconometric model were invariant to changes in policy behavior, particularly in models in which peoples' expectations were important. A change in policy regime will in general change peoples' expectations about policy outcomes. While the structural model of the economy will remain invariant, reduced-form relationships, particularly those involving policy variables, will change. We will see this below for a very simple example of the Lucas supply curve.

Suppose that the following AS and AD equations describe the economy:

$$ y_{t} = \alpha \left(p_{t} - E_{t - 1} p_{t}\right) \tag {3.41}
$$

$$ y_{t} = m_{t} - p_{t} \tag {3.42}
$$

Suppose that the Fed's monetary policy is initially

$$ m_{t} = \mu_{1} + m_{t - 1} + \epsilon_{t} \tag {3.43}
$$ where $\epsilon_{t}$ is an iid shock reflecting the Fed's inability to completely control the money supply.

By substitution, we can easily show that:

$$ y_{t} = \frac{\alpha}{1 + \alpha} \left(m_{t} - E_{t - 1} m_{t}\right) \tag {3.44}
$$

Using the stochastic process above, we can show that $m_{t} - E_{t-1}m_{t} = (m_{t} - m_{t-1}) - \mu_{1}$, and hence that the relationship between output and observed money is:

$$ y_{t} = \frac{\alpha}{1 + \alpha} \left(m_{t} - m_{t - 1}\right) - \frac{\alpha}{1 + \alpha} \mu_{1} \tag {3.45}
$$

In other words, the following graph (Figure 3.2).

Suppose the Fed doesn't know that the economy is described by the Lucas supply curve, but just estimates the relationship between output and money growth from the above equation. There appears to be a stable relationship between output and money growth; this would lead one to believe that increasing the rate of money growth would lead to higher output. But note that if the Fed attempts to exploit this, by for example setting $m_{t} = \mu_{2} + m_{t - 1} + \epsilon_{t}$, where $\mu_{2} > \mu_{1}$, what will happen is that the relationship between money and output will change to:

$$ y_{t} = \frac{\alpha}{1 + \alpha} \left(m_{t} - m_{t - 1}\right) - \frac{\alpha}{1 + \alpha} \mu_{2} \tag {3.46}
$$

In other words, the intercept will shift, and you won't in fact get any more output (Figure 3.3).

The key problem here is that the Fed implicitly assumed that the parameters it was estimating were structural, rather than a function of the policy rule they were employing.

Note that this will be a generic problem of any rational expectations model; it in fact is a form of the identification problem we discussed in the context of the Phillips Curve.

It suggests that in principle the large-scale macroeconometric models used by central banks aren't likely to be useful. The above example was deliberately simple, to illustrate the point. In practice, it is often difficult after estimating empirical relationships to determine whether they are structural or merely reduced-forms of some more fundamental model.

In response to this, the Fed has recently introduced a model which is derived from a dynamic rational-expectations model. It should be noted, however, that the performance of such models as yet is not significantly better than that of the old, "wrong" models.

# 3.4 Monetarist Arithmetic: Links Between Monetary And Fiscal Policy

In a series of papers written in the early 80s, Sargent and Wallace and Michael Darby debated the effects of long-run links between monetary and fiscal policy.

These links arise from a consideration of the government budget constraint. The government has three ways of financing its spending:

1. Taxation
2. Seigniorage
3. Debt

If we let $D$ denote the stock of government debt, the flow budget constraint can be written as:

$$
\dot {D} = r D + G - T - \frac{\dot {M}}{P} \tag {3.47}
$$

In words, this says that the budget deficit is equal to expenditures (government purchases + interest on the debt) less revenues (taxes + seigniorage).

Suppose the government at some point wants to maintain a stock of debt which is a constant fraction of GDP.<sup>7</sup>

We can show that:

$$
\left(\frac{\dot {D}}{Y}\right) = (r - \gamma) \frac{D}{Y} + \frac{G - T - \frac{\dot {M}}{P}}{Y} \tag {3.48}
$$ where $\gamma = \frac{\dot{Y}}{Y}$. Hence a constant debt-GDP ratio implies that $\left(\frac{\dot{D}}{Y}\right) = 0$, or:

$$

D = \frac{G - T - \frac{\dot {M}}{P}}{\gamma - r} \tag {3.49}

$$

Now if $\gamma - r > 0$, we can have a constant debt-GDP ratio even if expenditures exceed revenues because the economy is growing faster than the real interest rate.

If this is not the case, however, then note that we have an explosive differential equation. In this case, monetary and fiscal policy cannot be chosen independently of one another, as it must be the case that the numerator in the expression for $D$ must be negative, or taxes plus seigniorage must exceed government purchases.

This case was first presented by Sargent and Wallace in an article entitled "Some Unpleasant Monetarist Arithmetic." They point out the following fact. Suppose that money growth is low now. If it is known that the government wants to maintain a constant Debt to GDP ratio at some point in the future, this may imply that money growth will have to be higher in the future to help pay off the debt. Thus, tighter money now may lead to looser money later, which may then lead to higher inflation now and later by the same mechanism we saw in the money part of the course.

This result does not apply if the growth rate of the economy exceeds the real interest rate, a result that was pointed out by Darby in his article "Some Pleasant Monetarist Arithmetic." It is commonly believed that most economies are in the good case, and the main result of this literature was to spark interest in analyzing monetary policy from an optimal tax point of view.

There are of course other, political links between monetary and fiscal policy, such as those on the political business cycle, but those more properly belong to a course on political economy.

The literature on this subject has recently been revived by a series of papers which look at government debt as the nominal anchor which pins down the price level in the absence of money.

# 3.5 Problems

1. Suppose there are two political parties, labeled $D$ and $R$. Party $D$ has a utility function over inflation of $-\frac{a_D}{2}\pi^2 + b_D(\pi - \pi^e)$ and party $R$ has a utility function over inflation of

$-\frac{a_R}{2}\pi^2 + b_R(\pi - \pi^e)$, where $b_R < b_D$ and $a_R > a_D$. The economy is described by a standard 'expectations-augmented' Phillips curve, $y = \bar{y} + \beta (\pi - \pi^e)$.

# 3.5. Problems

(a) Derive the inflation rate when each party is in power.
(b) Suppose there is an election next period. Party $D$ has probability $p$ of winning. What is expected inflation? Compare the behavior of output and inflation assuming party $D$ wins against when party $R$ wins.
(c) Consider a multiperiod version of this model, where parties alternate in power randomly. Can there be equilibria where both parties play zero inflation? (Your answer may be qualitative).

Suppose we are in an economy in which aggregate supply is described by the following equation:

$$

\pi_{t} = \phi \pi_{t}^{e} + (1 - \phi) \pi_{t - 1} + \alpha \left(y_{t} - \bar {y}_{t}\right) \tag {3.50}

$$

Assume expectations are formed rationally.

The Central Bank's loss function over output and inflation is:

$$

L_{t} = a \pi_{t}^{2} + \left(y_{t} - k \bar {y}_{t}\right)^{2}, \tag {3.51}

$$ where $k > 1$

Aggregate demand is $y_{t} = m_{t} - p_{t}$. For simplicity, assume that the central bank can directly control inflation, as usual.

(a) What models offer possible justifications for this aggregate supply curve?

(b) Solve for the level of inflation if the Central Bank can precommit.

(c) Solve for the level of inflation if the Central Bank cannot precommit.

(d) Compare the solution obtained when the government can commit for the case where $\phi = 1$ to the case where $\phi = 0$. In which case is inflation bigger? Why?

(e) Now assume that there are two periods and two types of policy makers. Type 1 policymakers have the loss function $L_{t} = \pi_{t}^{2}$, and type 2 policymakers have the same loss function as above. Assume that people have an ex ante probability that the policymaker is of type 1 of $p$. Assume that policymakers do not play mixed strategies. The discount rate is $\beta$, so that $L = L_{1} + \beta L_{2}$. For simplicity, assume that inflation in period 0 was

0. Write down the condition under which the type 2 policymaker will pretend to be type
1. You need not completely simplify this condition.
2. Suppose you are Chairman of the Fed. Your goal in the short run is to stabilize output. You have two policy instruments at your disposal: the money stock and the nominal interest rate. You believe that there are only two kinds of shocks to the economy: 'irrational exuberance' (i.e. random shocks to investment), and shocks to money demand (caused by Y2K fears about ATM machines). You believe prices are inflexible in the short run.

Under the assumptions above, write down and solve a simple model of the economy which allows you to determine the optimal policy. Are there ever cases where it would be optimal to use both the money stock and the nominal interest rate as instruments?

3. As you know, the European Monetary Union
(EMU) has recently adopted a common currency a single central bank (the ECB). Assume the central bank has direct control over the rate of inflation and has a standard loss function defined over output and inflation. Further suppose that all economies in the EMU follow the same underlying model, and that the ECB cannot commit to a particular policy.

(a) Suppose a country has a different target level of output than the ECB. Further assume that a country which decides to leave the EMU pays some annual cost $C$ in units of the loss function (this may be lost trade, fines, lost prestige, etc.) Work out the conditions under which a country will choose to leave the EMU. Provide an intuitive explanation for your answer.

(b) Now suppose that a country has a different weight on inflation in its loss function. Assuming the same cost $C$ as in part

(a) , work out the conditions under which a country will choose to leave the EMU. Provide an intuitive explanation for your answer. Provide an intuitive explanation for your answer.

(c) Now suppose that a country has the same loss function as the ECB, but has a different slope to its short-run aggregate supply curve. Assuming the same cost $C$ as in part

(a) , work out the conditions under which a country will choose to leave the EMU. Provide an intuitive explanation for your answer.

4. Consider an economy described by the following three equations:

$$ y = - ai + g \tag {3.52}
$$

$$ m - p = fy - hi \tag {3.53}
$$

$$ y - \bar {y} = b \left(p - p^{e}\right), \tag {3.54}
$$ where $m$ denotes the
(log) nominal money stock, $g$ denotes
(log) government purchases, $i$ the nominal interest rate and $p^e$ denotes the expected price level. Assume expectations are formed rationally

Suppose the government has the following quadratic loss function over output and prices:

$$

L = \frac{1}{2} (y - k \bar {y})^{2} + \frac{\beta}{2} (p - p^{*})^{2}, \tag {3.55}

$$ where $k > 1$

Further suppose the government controls both $g$ and the money stock $m$.

(a) Provide economic interpretations for equations (1) through (3).

(b) Assuming the government is able to perfectly commit to choices of $m$ and $g$, characterize the loss-minimizing choices of $m$ and $g$.

(c) Answer the previous question assuming that $i$ and $g$ are the policy instruments.

(d) Assume commitment is not possible. Solve for the loss-minimizing choices of $m$ and $g$. Why is it important that $k > 1$?

(e) Describe three ways of solving the time-consistency problem.

5. Consider the following version of the IS-LM model modified to incorporate the stock market (after Blanchard):

$$
\dot {y} = \phi (d - y) \tag {3.56}
$$

$$ d = c (y - t) + g + \theta q \tag {3.57}
$$

$$
\dot {q} + \pi = rq \tag {3.58}
$$

$$
\pi = \alpha y, \tag {3.59}
$$ where all notation is standard. For each of the parts below, assume that the real interest rate is constant at a level $r = \bar{r}$. Also, assume that $(1 - c)\bar{r} > \alpha \theta$.

(a) Provide economic interpretations for these equations.
(b) Write the model using two variables and two laws of motion. Identify the state (non-jumping) and the costate
(jumping) variable.
(c) Draw the phase diagram, including the steady-state conditions, the implied dynamics, and the saddle-point stable path.

Now let's use this to analyze the impact of some currently proposed economic policies.

Because the U. S. is expected to run large budget surpluses over the next decade, one current proposal before Congress is to cut the level of taxes.

(a) Use the model to analyze the effects of an expected permanent decline in $t$ on output and the shadow price of capital.
(b) Suppose the decline in $t$ is accompanied by a decline in $g$ of equal size. Is the net effect on output positive or negative? Explain why.

(c) Now suppose instead that, because the size of the budget surplus is uncertain, the tax cut is expected to be purely temporary. Describe the effects on output and the shadow price of capital of an expected future temporary reduction in $t$.

6. Consider the following economy (due to Weitzman). There are $N$ consumers. Each consumer has the following preferences over $N$ consumption goods and real balances:

$$

U \left(\left\{C_{i} \right\}, \frac{M}{P}\right) = \left[ \left(\sum_{i = 1}^{N} C_{i}^{\frac{E - 1}{E}}\right)^{\frac{E - 1}{E}} \right]^{\theta} \left(\frac{M}{P}\right)^{1 - \theta}, \tag {3.1}

$$ where

$$

P = \left(\frac{1}{N} \sum_{i = 1}^{N} P_{i}^{1 - E}\right)^{\frac{1}{1 - E}}. \tag {3.2}

$$

Labor is supplied inelastically to each firm at level $\frac{1}{N} L$.

There are $N$ firms, each of which produces one good using production function

$$

Y_{i} = \gamma \left(L_{i} - f\right) \tag {3.3}

$$

The firms are monopolistically competitive.

In the following questions, we will be making different assumptions about how real wages $\frac{W}{P}$ are determined.

(a) Assume that wages are purely flexible. Solve for the levels of output, prices and unemployment.
(b) Assume that the nominal wage $W$ is fixed at some level $\bar{W}$. Solve for the equilibrium levels of output, prices and unemployment.

Now assume that real wages are determined by the following profit-sharing arrangement:

$$

\frac{W}{P} = \frac{\omega}{P} + \lambda \left(\frac{\Pi_{i}}{L_{i}}\right), \tag {3.4}

$$ where $\omega$ and $\lambda$ are parameters and $\Pi_{i}$ denotes firm $i$ 's real profits.

(a)

# 3.5. Problems

(e) Solve for the equilibrium levels of output, prices and unemployment. Compare your solution with that for the previous question in the special case that $\omega = \bar{W}$. For which values of $\omega$ and $\lambda$, if any, would the level of the real wage be the same as under perfect competition?

7. Consider the following modifications to the closed economy IS-LM-AS model considered in class: Let consumption depend on the real interest rate as well as disposable income, and let money demand depend on consumption, rather than on income. Assume that the AS curve is horizontal.

(a) Write down the IS-LM model under these modifications.

(b) Should the dependence of consumption on the real interest rate be positive or negative? Why?

(c) For a linear version of this model, solve for the government purchases and tax multipliers (i.e. $\frac{dY}{dG}$ and $\frac{dY}{dT}$ ). Is $\frac{dY}{dG}$ necessarily greater than one?

(d) In the special case that the interest elasticity of money demand is very large, solve for approximate values of $\frac{dY}{dG}$ and $\frac{dY}{dT}$. Provide some intuition for your results.

8. Consider the following simple model of the economy:

$$ m_{t} - p_{t} = - \alpha \left(r_{t} + E_{t} \pi_{t + 1}\right) + \beta y_{t} \tag {3.5}
$$

$$ y_{t} = cy_{t} - dr_{t} \tag {3.6}
$$

$$
\pi_{t} = \pi_{t - 1} + \theta y_{t}, \tag {3.7}
$$ where all variables are in logs and $\pi_t = p_t - p_{t-1}$.

(a) Provide economic interpretations for these equations
(b) Is anticipated money neutral? Is unanticipated money?
(c) Write down, but do not solve, a difference equation for $p_t$.
(d) Solve for $p_t$ assuming that $m_t = \bar{m}$, a constant, for all past, present and future values of $t$.
(e) Solve for $p_t$ assuming that $m_t = \mu + m_{t-1}$. Denote the value of $m_0$ as $\bar{m}$.
(f) Would you answer to either of the previous two parts have changed if people had backwards-looking expectations, so that $E_{t}p_{t + 1} = p_{t - 1}$? Why or why not?

# Chapter 4

# Investment

Thus far in 207 and 208, we have assumed that the saving done by households is instantly transformed into the investment done by firms. In practice, this isn't the case- saving is only transformed into investment after passing through financial institutions and markets (e.g. banks, the stock (or equity) market, the bond market). We've also assumed that investment can change instantaneously in response to changing economic conditions, and that by assumption all funds actually spent on increasing the capital stock actually show up as increased capital. As motivation for studying investment, recall that it is a fundamental determinant of growth, though capital accumulation. It is also the most volatile component of GDP, and therefore may play an important role in aggregate fluctuations.

In this section of the course, we're going to look at several partial equilibrium models which relax these assumptions.

First, we'll consider how investment would be determined by firms in the absence of adjustment costs and without specifying the source of funds.

Then, we'll look at a model in which there are
(convex) costs to adjusting the capital stock.

We will then look at the effects of asymmetric information on investment. We will first look at a model in which adverse selection problems lead to rationing of lending. We then will see that such problems lead to situations where external financing is less costly than internal financing. We will continue with a discussion of issues related to banking.

We conclude by considering the case of fixed or asymmetric costs to investment, and look at the effects of uncertainty on both the timing of and the magnitude of investment.

# 4.1 The Classical Approach

The simplest theory of investment comes from the familiar profit-maximization theory from micro, which we've already seen and used:

$$

\max PF (K, L) - RK - WL \tag {4.1}

$$

From this, we get the usual condition that $F_{K}(K, L) = \frac{R}{P}$, or the capital stock is increased up until the marginal product of capital equals the real rental rate of capital. In the dynamic version of this model, this is done at each point in time for a given exogenous sequence of interest rates.

This can be complicated somewhat to be a little more realistic; in particular, if firms in fact do not rent the capital but instead own it, the rental rate of capital becomes a nebulous concept. In fact, the cost of capital in this case will have three components (Hall and Jorgenson (1967)):

- The capital depreciates at rate $\delta$
- By using the capital, the firm forgoes the choice of selling it and investing the money at interest rate $r$
- The firm may suffer a capital loss or get a capital gain (i.e. the price of the capital good may change).

If we let $p_K$ denote the price of capital, we can write the total cost per unit of capital as:

$$

\frac{R}{P} = rp_{K} + \delta p_{K} - \dot {p_{K}} \tag {4.2}

$$

Here, we take the price of capital as exogenous (and in the growth section, we implicitly assumed that $p_K$ was always one).

There are some theoretical problems with this approach; it isn't forward looking, and it implies very large (in fact, infinite) changes in investment in response to changes in the exogenous parameters. But perhaps the biggest problem is that it doesn't seem to fit the data very well. For example, if one adds taxes to this, and tries to use it to explain the behavior of firms in response to changes in tax-treatment of investment, one does very poorly.

There are several approaches one could take towards fixing this model. One is to assume that there are costs to adjusting the capital stock. Another is to look a little more closely about where the funds for investment come from, and look a little bit into financial markets. We will start by considering adjustment costs.

# 4.2 Adjustment Costs And Investment: $Q$ Theory

Let's denote profits as a function of the capital stock as $\Pi(K)$ (note that $\Pi$ is not inflation), where $\Pi' > 0, \Pi'' < 0$. Suppose that there is now a cost to investment, where the cost is denoted by $C(I) = I + d(I)$, $d' > 0$, $d'' > 0$. This cost should be thought of as including installation or adjustment costs (e.g. costs associated with starting a new factory). We will solve the model in continuous time, as it is both easier to do so than in discrete time and the use of phase diagrams is particularly helpful.

Total profits net of adjustment costs are then

$$

\Pi

(K) - C

(I) . \tag {4.3}

$$

The equation relating the amount of investment to the change in the capital stock is still the same:

$$

\dot {K} = I - \delta K \tag {4.4}

$$

If the interest rate is constant at $r$, the firm then solves the following problem:

$$

\max_{I, K} \int_{0}^{\infty} e^{- rt} (\Pi

(K) - C

(I) ) dt \tag {4.5}

$$

$$ s. t. \dot {K} = I - \delta K, \tag {4.6}
$$ where I've suppressed $t$ subscripts.

By now, we know how to solve such problems- through the Hamiltonian. We can also get our answer more intuitively, but let's first derive it mathematically.

First, let's set up the Hamiltonian, in present value terms:

$$

H = e^{- rt} [ \Pi

(K) - C

(I) + q (I - \delta K) ] \tag {4.7}

$$

Here, I've called the Lagrange multiplier $^1$ $q$, for reasons that will become apparent later on.

Let's work out the two first-order conditions:

$$

\frac{\partial H}{\partial I} = 0 \Rightarrow q = C^{\prime}

(I) = 1 + d^{\prime}

(I) \tag {4.8}

$$

$$

\frac{\partial H}{\partial K} = - \left(qe^{- rt}\right) \Rightarrow \Pi^{\prime}

(K) - \delta q = rq - \dot {q} \tag {4.9}

$$

Note that the first first-order condition implies that in the absence of adjustment costs (i.e. $d = 0$ ), $q = 1$. Since this is constant, the second condition would reduce to $\Pi'(K) = r + \delta$, which would uniquely define the capital stock, as in the model of the previous section.

We can invert this condition to write investment as a function of $q$: $I = I(q)$.

The second first-order condition may be rearranged to yield:

$$

\dot {q} = (r + \delta) q - \Pi^{\prime}

(K) \tag {4.10}

$$

We could, as we did with growth, substitute in the other first order condition and rewrite this to yield $\dot{I}$ as a function of investment and the capital stock.

However, if we want to determine investment, we see from above that investment can be written as a function of the multiplier $q$, and that this first-order condition conveniently gives us an expression for the behavior of $q$. Let's see two interesting ways to express this.

First, recall that we can express the multiplier as the value of being able to relax the constraint by one unit, here the value of having an additional unit of capital.

Note that we can rewrite the first order condition involving $q$ to yield:

$$

(r + \delta) q - \dot {q} = \Pi^{\prime}

(K) \tag {4.11}

$$

As before, this asset pricing equation says that the required rate of return less the capital gain is equal to the flow return on holding a unit of capital. This is the same expression derived initially in the user cost of capital case. What's different now? Well, in this model we're going to be able to determine how the price of capital behaves, not simply take it to be exogenous, and that price is going to be affected by the adjustment cost.

To solve for the price of an additional unit of capital, $q$, we need simply to solve for the differential equation for $q$ we derived above:

$$ q = \int_{0}^{\infty} e^{- (r + \delta) t} \Pi^{\prime}
(K) dt \tag {4.12}
$$

That is, if you raise the capital stock by one unit, and measure from that point onwards the increased profits gained by raising the capital stock, that should give you the price of a given level of capital.

Now let me tell you why I called the Lagrange multiplier (costate variable) $q$, and why writing things this way is a useful thing to do:

In the 1960s, James Tobin hypothesized that investment should depend only on some quantity $q$, where $q$ was the ratio of the market value of the capital stock (i.e. the value of the firm) to the replacement cost of that capital. If $q \gg 1$, or if the market value exceeds the replacement cost, it will be optimal for firms to create more capital by investing, since doing so will add to the value of the firm. If $q \ll 1$, creating additional capital will lower the value for the firm, and in fact it would be optimal for firms to disinvest. This theory has the nice property that it can be readily be tested with data, since $q$ is an object which can be measured. The market value of the existing capital stock can be measured by looking at the market value of outstanding corporate debt and equity, and the replacement cost can simply be gotten by looking for figures on the capital stock.

How does this relate to the theory we just derived? Well, the $q$ from the theory is the increase in market value from having an additional unit of capital, and is thus the value of the marginal unit of capital. It is sometimes referred to as marginal $q$. The $q$ in Tobin's model (which was developed well before the technical analysis I presented above) is the value of an average unit of capital, and it sometimes referred to as average $q$. Fumio Hayashi has worked out that marginal $q$ is equal to average $q$ when the investment cost function is of the form: $C(\cdot) = I(1 + \phi(\frac{I}{K}))$. Hence this model preserves Tobin's insight, and can actually be tested on the data.

Note that even if we write $q$ in this present-value way, and specify investment as a function of it, we haven't entirely determined the level of investment, since $q$ depends on the future value of the capital stock, which in turn depends on the current level of investment. To fully analyze this model, we're going to have to turn to the same phase-diagram analysis we used before. This time, we'll use $K$ and $q$ as our two variables.

The two equations of motion, again, are:

$$
\dot {q} = (r + \delta) q - \Pi^{\prime}
(K) \tag {4.13}
$$

$$
\dot {K} = I
(q) - \delta K \tag {4.14}
$$

Let's derive the usual phase diagram (Figure 4.1). Note that the $\dot{K} = 0$ locus slopes upwards and the $\dot{q} = 0$ locus slopes downwards. Like most other economic models, the situation is saddle-path stable, so we draw the stable arms, and get the same analysis we always do. The key point to remember is that behavior is forward lookingso that announced future policies will cause changes today in the behavior of the costate variable ( $q$, and therefore investment).

This gets more interesting when we introduce taxes, and analyze the effects of various tax policies on investment and the stock-market. Another nice example is the model of the housing market presented below.

# 4.2.1 The Housing Market: After Mankiw And Weil And Poterba

An interest variant of the q-theory models arises when we study investment in housing. The construction of new housing is an important component of investment.

The goal is to model the market for single-family houses.

Let $H$ denote stock of housing and $R$ the rental rate (the latter is going to be analogous to the marginal product of capital).

For simplicity, we assume that everyone participates in the rental market for housing. That is, the rental rate is the "spot price" of housing services. People who own the housing do so in order to earn the required return on it.

Let $N =$ size of the adult population. Changes in this will shift housing demand.

The equation for housing demand is:

$$
H^{D} = f
(R) N, \tag {4.15}
$$ where $f' < 0$, and of course, since the market clears, $H^{D} = H$.

Letting $H / N = h$, (housing per capita), the housing demand equation can be rewritten as:

$$

R = R

(h) , \tag {4.16}

$$

$R^{\prime} < 0$, where $R = f^{-1}(\cdot)$

This just says that the rental rate is a negative function of the amount of housing per person.

How is the price set? Let $p$ be the price of a unit, and $r$ the interest rate. Then:

$$ r + \delta = \frac{(R
(h) + \dot {p})}{p}. \tag {4.17}
$$

This is the usual arbitrage condition for holding an asset.

Rewrite it as:

$$
\dot {p} = (r + \delta) p - R
(h) . \tag {4.18}
$$

So this is the usual sort of differential equation for an asset price. We still do not know the exact price yet – for that, we must look at the differential equation for the other variable in the system: $H$.

So we have to look at housing investment. The role of $q$ in this model will be played by the price of housing: the higher is $p$, the higher will be housing investment. Further, total investment will depend on the number of people in the economy, so we will make investment per person a function of $\mathrm{P}$:

$$
\frac{I}{N} = \pi
(p) . \tag {4.19}
$$

This is gross investment. To get the change in the stock of housing (net investment):

$$
\dot {H} = I - \delta H \tag {4.20}
$$ combining these two, we get:

$$

\dot {H} = \pi

(p) N - \delta H, \tag {4.21}

$$ which implies:

$$

\frac{\dot {H}}{N} = \pi

(p) - \delta h. \tag {4.22}

$$

Let's think for a second about what the steady state in this model should look like. $N$ is the population, which we are going to have growing over time at rate $n$. So presumably $H$, the total stock of housing, will also be growing over time. So we don't want to try to have a steady state where $\dot{H} = 0$. Instead, we will use the trick from growth theory, and look for a steady state where per capita housing stock is zero, that is, $\dot{h} = 0$.

Differentiate $h$ with respect to time and substitute to get:

$$

\dot {h} = \pi

(p) - (n + \delta) h. \tag {4.23}

$$

# 4.3. Credit Rationing

So we have $\dot{h}$ and $\dot{p}$ equations, where $p$ is playing the role $q$ did before.

We first draw the loci: the $h = 0$ locus clearly slopes up and the $\dot{p} = 0$ locus, $\dot{p} = (r + \delta)p - R(h)$ (where $[R' < 0]$ ), clearly slopes down (Figure 4.2).

Using the model:

1. What happens to the steady state value of $p$ if the rate of population growth $(n)$ increases?

Answer: the $\dot{h} = 0$ locus shifts up, while the $\dot{p} = 0$ locus is unchanged. So the steady state amount of housing per capita goes down, and the steady state price goes up. What is going on? Since population is growing faster, more investment has to be done to keep up with the new people. This is accomplished by having the price higher. And higher price means lower consumption of housing

2. What is the effect of an immediate, permanent increase in the rate of population growth?

Answer: From the previous answer, the price of housing must jump up immediately. Over time, the price of housing will continue to rise, and per-capita consumption of housing will decline, until the new steady-state is reached.

3. What is the effect of an increase in the rate of population growth that is announced in advance?

Answer: We know that at the time the population growth actually does increase, we must be on the stable arm of the new system. Until that time, we are following the dynamics of the old system. Hence the price level still jumps, but only to the point where the dynamics of the old system will bring us to the stable arm of the new system (Figure 4.3).

(Note: much of this subsection is adapted from notes by David Weil, who should not be blamed for errors I may have introduced here).

# 4.3 Credit Rationing

Previous sections considered the problems associated with adjustment costs in investment. We now consider problems arising from imperfect information. We first consider a model due to Stiglitz and Weiss (AER, 1981) in which adverse selection or moral hazard play a role.

Suppose there is a continuum of entrepreneurs. The entrepreneurs have projects which have rates of return $R$. These returns are distributed according to the pdf $f(R, \theta)$, where $\theta$ indexes increasing risk in terms of a mean-preserving spread.

Entrepreneurs must borrow some amount $B$ to invest in the project. To do so, they must put up some amount of collateral $C$ (which is some illiquid asset). If the interest rate is $\hat{r}$, the borrower will be in default if $C + R \leq B(1 + \hat{r})$. If the borrower defaults, he loses his collateral and the bank gets whatever return to the project there is.

The profit the entrepreneur makes on the project is then equal to

$$

\pi = \max (R - (1 + \hat {r}) B, - C) \tag {4.24}

$$

The return to the bank is then

$$

\rho = \min (R + C, B (1 + \hat {r})). \tag {4.25}

$$

We sketch these returns below as a function of $R$ (Figure 4.4). Note that if the project becomes more risky, in the sense that more weight is in the tails, the expected return to the entrepreneur rises (because his liability is limited to $-C$ ), while the expected return to the bank falls (it is bearing the downside risk) $^2$ This is the key issue in the analysis which follows.

The preceding point immediately implies that for a given $\hat{r}$, there is some $\hat{\theta}$ such that entrepreneurs only borrow if their $\theta > \hat{\theta}$. Furthermore, $\frac{d\hat{\theta}}{dr} > 0$.

The increase in the interest rate means that, ceteris paribus, expected profits will be lower. Some people who had marginally positive expected profits will now have negative expected profits, and will not want to invest, raising $\hat{\theta}$.

An increase in $\hat{\theta}$ will lower the expected return to the bank, however. The bank does not benefit from the upside of riskier projects beyond a certain return, and is hurt by the increased probability of failure.

Hence a plot of the return to the bank against the interest rate looks something like the following: (Figure 4.5). The adverse selection effect as depicted here outweighs the positive effect on the return from the interest rate for high levels of the interest rate.

The bank would like to charge an interest rate which maximizes the rate of return. Let's think about loan supply and demand. We may determine loan demand by simply multiplying $B$ by the fraction of entrepreneurs who want to invest- i.e. those with $\theta > \hat{\theta}$. Since $\hat{\theta}$ is increasing in $\hat{r}$, loan demand is a downward-sloping function of $\hat{r}$. To determine loan supply, we need to think of the bank's decision of how many loans to make. Assume that the supply of loans is some positive function of the return to the bank. Then loan supply as a function of $\hat{r}$ is also an inverted U-shaped function.

One might naturally think that the equilibrium in this model is where loan demand intersects loan supply (Figure 4.6). This is in fact not the case, because the bank can do better by restricting loan supply to the point where its rate of return is maximized. At this point, as drawn below, loan supply is less than loan demand. Thus, there is equilibrium rationing of credit. Note that credit is being denied to observationally indistinguishable individuals.<sup>3</sup>

This result is robust to a variety of other assumptions. One could also tell a moral hazard story, where the entrepreneurs can affect the value of their project, but limited liability may provide them with an incentive to take on risky projects. See Blanchard and Fischer for a discussion of whether credit rationing is in fact optimal.

# 4.4 Investment And Financial Markets

[Not covered Spring 2002]

Financial markets exist in part because firms do not necessarily have all the funds internally they need to undertake investment projects, and in part because firms cannot directly borrow from individuals due to asymmetric information problems.

The field of corporate finance has grown up to explain the functioning of such markets, and in particular in the past twenty years there has been renewed interest at the theoretical level into why financial markets exist and how they affect investment decisions. We will only see a very brief introduction into this field in this part of the course. (Much of this is taken from the Bernanke, Gertler and Gilchrist paper).

The key result from that field for this part of the course is that external forms of finance are more costly than internal ones. This is because people outside the firm have less information about the probability of success of projects the firm will undertake than do people inside the firm.

Let's use the following model to show this.

Suppose there are two types of firms, 1
(bad) and 2
(good) , distinguished by their production. A fraction $q$ are type 1, and $1 - q$ are type
2. Firms know which type they are, but can't prove it to outsiders.

A type $i$ firm can produce $z_{i}$ units of output at no cost (that is, with no further investment, where $z_{2} > z_{1}$ ). Alternately, it can invest $F$, a fixed amount for either type of firm. Investing $F$ means building a new factory.

Firms which invest will have an output of either $x$ or 0. $\theta_{i}$ the probability of a type $i$ firm having output $x$.

Finally, we assume that it would be profitable for each firm to invest. That is,

$$

\theta_{i} x - F > z_{i}, i = 1,2 \tag {4.26}

$$

So why won't both firms invest? The problem is that firms do not have sufficient funds with which to invest. They have to borrow from some outside source. The outside source does not know what type of firm each one is.

Assume that each firm has a certain amount of money $C$, cash flow, with which to invest. Cash flow is roughly defined as liquid assets obtained through current sales. The rest of the amount to be invested, i.e. $F - C$, must be borrowed at rate $R$. The firm can fully repay its loan when the value of output produced is greater than the value of what was invested. Both firms can repay their loans only if their projects succeed:

$$ x > (F - C) (1 + R) > 0 \tag {4.27}
$$

I said firms could borrow at a given interest rate. In practice, this assumes that lenders cannot distinguish between the two types of firms, because presumably if they could they would want to charge different rates. Let's see whether there can be a pooling equilibrium, where both firms borrow at the same interest rate. Call it $R^P$.

The fraction of firms which succeed is:

$$
\theta^{P} = q \theta_{1} + (1 - q) \theta_{2} \tag {4.28}
$$

(Note: $\theta_{1} < \theta^{P} < \theta_{2}$

Assume lenders are competitive, and have zero expected profit, that they have access to funds at zero interest and are risk neutral. Then in the pooling equilibrium,

$$
F - C = \theta^{P} (F - C) \left(1 + R^{P}\right) \tag {4.29}
$$ which implies:

$$

1 + R^{P} = \frac{1}{\theta^{P}} \tag {4.30}

$$

What about firms? Assume they too are risk neutral, so that firms will want to borrow if:

$$

\theta_{i} [ x - (F - C) \left(1 + R^{P}\right) ] > z_{i} + C \tag {4.31}

$$

We can substitute this into the previous equation to get (after some rewriting):

$$

\theta_{i} x - F - \frac{\left(\theta_{i} - \theta^{P}\right) (F - C)}{\theta^{P}} \geq z_{i} \tag {4.32}

$$

Now, for type 1, or bad, firms, this inequality is satisfied, because the first two terms on the LHS are greater than the term on the RHS by our assumption on profitability, and the third term is negative.

The logic is that the bad firm would want to borrow in the pooling equilibrium, since it is getting the benefit of the investor treating it as an average firm, even though it's below average. For the good firm, the opposite is true- it pays higher interest because of the risk from the bad firm. For those firms, the third term will be positive, and the inequality may not be satisfied.

If the inequality isn't satisfied, then our original assumption that there was an equilibrium in which both types of firms borrowed at the same interest rate is violated. It should be clear that we can't have an equilibrium in which both firms borrow at different interest rates- the firms which borrowed at the higher rates would want to switch to the lower rates. Furthermore, we can't have an equilibrium in which only the good firms borrow; the bad firms will have an incentive to borrow, and the equilibrium will break down.

Hence the only alternate equilibrium is one in which only the bad firms borrow. This will be called the separating equilibrium. Let's verify that this equilibrium exists.

The zero-profit condition for lenders is:

$$

(F - C) = \theta_{1} (F - C) \left(1 + R^{S}\right) \tag {4.33}

$$ which implies that:

$$

R^{S} = \frac{1}{\theta_{1}} - 1 > R^{P} \tag {4.34}

$$

The equilibrium interest rate is higher than that of the pooling equilibrium, which makes sense because the borrowers are now all bad firms, rather than a mixture of good and bad firms.

The condition for each firm to want to invest is now:

$$

\theta_{1} [ x - \frac{(F - C)}{\theta_{1}} ] \geq z_{1} + C \tag {4.35}

$$

Type 2 firms didn't want to invest at the pooling equilibrium, and so they won't want to invest here, either. For type 1 firms, this inequality reduces to:

$$

\theta_{1} x - F \geq z_{1} \tag {4.36}

$$ which is true by assumption.

Hence the separating equilibrium does exist.

This model is quite similar to Akerlof's "lemons" model. The idea of that model is that people can sell used cars for two reasons:
    - The car is fine, but they want a new one for some exogenous reason (they're moving overseas).
    - The car is a lemon.

The price buyers are willing to pay depends on the fraction of used cars of each sort. What is the equilibrium? It could be that the lemon-sellers drive other sellers out of the market (since the price given to the non-lemon seller will be lowered by the presence of lemons). So all used cars would be lemons. This is a very old idea (Gresham's law, that "bad money drives out good" is an expression of it); in modern terms, it is referred to as adverse selection.

# 4.4.1 The Effects Of Changing Cashflow

Let's now come to the principal reason for deriving this model, which is to look at the effect of changing cashflow on investment. First, let's note that if there were no information problem, both firms would be charged it's own interest rate, and whether or not the firms invested would not depend on cashflow.

If there are informational problems, we saw from the model above that the condition for the pooling equilibrium to exist is essentially that the cost of borrowing not be excessive, or that the third term in equation (32) be small. If cashflow increases, firms of both types need to borrow less, the cost of borrowing will decline, and both firms may invest. Hence investment will be higher.

Now you might object that this story isn't very realistic; in particular, the good firms have an incentive to somehow indicate that they are good firms. This indication, or signaling, is one way to get around these informational problems, and there is a large literature which you will see in micro which addresses this issue. One kind of signal which is germane to this model is collateral; the willingness to give up a valuable possession in the event of inability to pay off the loan is seen as an indication of one's own probability of success (it also gets around another problem, called moral hazard, under which the firm might have incentives under some conditions to do things which would make it less likely to pay off the loan, but that's another story).

There has been a recent literature which has looked at the relationship between investment and aggregate fluctuations which builds on this informational asymmetry model when there is collateral. This literature, which is summarized by the Bernanke, Gertler and Gilchrist article on the reading list, starts from the result from the model above that external finance is more costly than internal finance. It combines this with the observation that the cost of external finance is negatively related to the net worth of the borrower. Thus, if the borrower is wealthier, he can offer more collateral, demonstrate more clearly that he is a better loan prospect, and thus pay a lower interest rate.

The resulting conclusion is that exogenous reductions to the borrowers' net worth will cause the premium on external finance to rise, induce the borrower to borrow and thus invest less, which reduces future production. Thus the effects of the initial shock to net worth are magnified. In the aggregate, this phenomenon could explain why investment and output move together during economic fluctuations, and also suggests that aggregate economic conditions are an important determinant of investment.

This result also provides an additional way for monetary policy to affect output. If monetary policy raises the risk-free rate of interest, it will also lower the present value of collateral, and may make it more costly for firms to borrow. This is sometimes known as the broad credit view of monetary policy. We will see a comparable view, the lending view in a subsequent section.

# 4.4.2 The Modigliani-Miller Theorem

When firms do use external finance, they traditionally have a choice between two methods: debt and equity. Debt represents a promise to repay a certain amount $(1 + i)$, where $i$ is the nominal interest rate) for every dollar invested. Payment is not contingent on the result of the project. Equity represents part ownership in the firm, and is a residual claim on profits after debt has been paid. A fundamental question of corporate finance is: What is the optimal debt/equity ratio?

The Modigliani-Miller theorem is a surprising result which states that the value of the firm is unaffected by the debt-equity mix.

Suppose the firm is financing a project. Let $\tilde{X}$ be the cash flow from the project, a random variable. Let $V$ be the value of the equities from financing the project if it is financed $100\%$ with equities. We are not saying anything about how $V$ is determined.<sup>4</sup>

Firm can issue value $B$ of bonds, with interest rate $i$. Let $E$ be the market value of equity issued by the firm, and $E(B)$ be the function that tells you how much the equity is worth (to the market) if some amount of bonds, $B$, is issued. $E$ is the number of dollars at which the equity of the firm will be valued. If $E(B) > V - B$, then the cost of capital is dependent on the debt to equity ratio. That is, issuing bonds in amount $B$ does not lower the value of equity issued by amount $B$.

The Modigliani-Miller theorem says that $E(B) = V - B$, that is, that issuing $B$ dollars in debt will lower the value of the equity by exactly $B$. So $B$ does not matter.

Proof: The firm's net cash flow (after paying bond holders) = $\hat{X} - (1 + i)B$ What price will the market assign to this net cash flow? Denote this price as $V^{*}$.

Say that an investor bought $V^{*}$ worth of equity (that is, all the cash flow from the firm) and also an amount of debt $B$. Then her total return would be

$$

\tilde {X} - (1 + i) B + (1 + i) B = \tilde {X} \tag {4.37}

$$

Note that the investor in this case is "un-leveraging" the firm. Since the investor is getting $\tilde{X}$ for her investment, we know the price of the investment must be $V$ (by arbitrage - we defined $V$ as the market price of return $\tilde{X}$ ). Thus $V^{*} + B = V$. But $V^{*}$ is just $E(B)$. So $E(B) + B = V$.

Corporate finance then in essence is the study of conditions under which the Modigliani-Miller theorem does not hold. Among the complications it considers are the tax treatment of debt vs. equities (which generally implies that only debt should be issued) and bankruptcy.

# 4.5 Banking Issues: Bank Runs, Deposit Insurance And Moral Hazard

[Not covered Spring 2002]

Banks are a particularly important type of financial institution. Most consumer borrowing is done at banks (particularly mortgages), as is borrowing by small firms which do not have ready access to equity or debt markets. Banks are also important providers of liquidity services.

As we noted in the section on credit rationing, banks take funds from consumers and lend out some fraction of them. Since the funds can be withdrawn on demand, the fraction cannot be
0. The amount not lent out by the bank, but kept on hand to satisfy consumer demand for withdrawals, is known as reserves.

There are three important macroeconomic consequences of this fractional-reserve banking system:

1. Since in practice reserves are kept as deposits at the central bank, and traded among banks as needed (in the federal funds market), control of reserves serves as the primary means by which the central bank conducts monetary policy. The exact technical details of how this is accomplished are very important for the evaluation and formation of monetary policy, but are beyond the scope of this course.
2. The existence of reserves expands the money supply beyond the amount of currency. To see this, suppose that $rr$ represents the fraction of every dollar deposited held as reserves. Then $1 - rr$ of every dollar is lent out. But
(simplifying) this $1 - rr$ will ultimate be deposited somewhere within the banking system, and the process will start over again. The total amount of deposits for every dollar initially deposited is then $1 + (1 - rr) + (1 - rr)^{2} + \ldots = \frac{1}{rr}$, which is considerably greater than one. This process is known as money multiplication.
3. Since banks do not have the full amount deposited on hand (assuming the fraction of reserves is less than 1), the bank is in danger of bankruptcy if everyone tries to withdraw his or her money at once. This is known as a bank run.<sup>5</sup>

The last point is particularly important, because it suggests that banks are inherently unstable. The following model, by Diamond and Dybvig (1983), demonstrates this (adapted from Freixas and Rochet, Microeconomics of Banking (1998)).

Suppose the economy has one good, three periods, and a continuum of agents. Each agent is endowed with one unit of the good at period $t = 0$, and would like to consume at $t = 1$ and $t = 2$. The agents are identical ex ante, but with probability $\pi_i$, $i = 1,2$ they will need to consume at date $i$ and no other date. The utility of type $i = 1$
(impatient) agents is $u(C_1)$, and of type $i = 2$
(patient) agents is $\rho u(C_2)$. Ex ante, expected utility is:

$$

U \equiv \pi_{1} u \left(C_{1}\right) + \rho \pi_{2} u \left(C_{2}\right) \tag {4.38}

$$

Assume that a costless storage technology exists. Assume that there is also an illiquid technology which yields $R > 1$ units in period 2 for every unit invested in period
0. If the asset is liquidated prematurely in period 1, it yields $L < 1$.

We will compare four different solutions: autarky (the absence of trade), the solution with financial markets, an optimal allocation and a solution with a fractional reserve banking system.

#
1. Autarkic Solution:

At time 0, the level of investment $I$ in the illiquid asset is chosen to maximize expected utility. If it is revealed ex post that they must consume at date 1, the investment is liquidated, and:

$$

C_{1} = LI + 1 - I \tag {4.39}

$$

If it is revealed ex post that they must consume at date 2, then:

$$

C_{2} = RI + 1 - I. \tag {4.40}

$$

From the constraints, it is clear that $C_1 \leq 1$ and $C_2 \leq R$. This is because the investment decision $I$ will always be ex post inefficient, because one would have liked to invest nothing if one were a type 1 consumer, and everything if type
2. This problem will be fixed if there is a financial market.

#
2. Financial Market

Suppose there is a bond market in period $t = 1$, in which $p$ units of the good are exchanged against the promise to receive one unit of good at time $t = 2$. The two budget constraints are now:

$$

C_{1} = p RI + 1 - I \tag {4.41}

$$

$$

C_{2} = RI + \frac{1 - I}{p} \tag {4.42}

$$

The first agent has sold $RI$ bonds in period 1 after the liquidity shock rather than liquidating his asset (i.e. he has essentially sold the claim to his entire investment in the illiquid asset). The second has bought $\frac{1 - I}{p}$ bonds (i.e. he has taken his liquid wealth, and rather than putting it in storage, he has used it to buy a bond. Since he has $1 - I$ in assets, he can buy $\frac{1 - I}{p}$. It must be the case that $p = \frac{1}{R}$, because otherwise the utility of the agent is increasing in $I$ and we have a trivial maximum. The allocation is then $C_1 = 1, C_2 = R$, which Pareto dominates autarky. But this allocation is still not Pareto optimal

#
3. Pareto Optimal Allocation

The optimal social allocation is obtained by maximizing expected utility subject to the constraints that:

$$

\pi_{1} C_{1} = 1 - I \tag {4.43}

$$

$$

\pi_{2} C_{2} = RI \tag {4.44}

$$ where we have used the fact that we have a continuum of agents.

The first order condition is:

$$ u^{\prime} \left(C_{1}\right) = \rho R u^{\prime} \left(C_{2}\right) \tag {4.45}
$$

It is unlikely that this will be satisfied by the market allocation. If we assume concave utility, it is likely that $u'(1) > \rho Ru'(R)$, so that the optimal $C_1 > 1$. This is to ensure consumers against the shock that they must consume at time 1.

#
4. Banking System

Now suppose there is an institution which can write contracts on the amount $(C_1, C_2)$ that can be withdrawn at dates 1 and 2 for a deposit of one unit in period

0. Assume that competition across banks implies that the deposit contract is the optimal allocation derived above. A key question is whether this is a stable allocation, in the sense that the bank will be able to fulfill its contract

Think of a type 2 consumer who believes that the bank can fulfill his contract. This consumer can withdraw the optimal $C_2$ in period 2, or withdraw $C_1$ in period 1 and store it until period

2. From the first-order condition for the social optimum, if $\rho R < 1$ there will be no way to implement the optimal contract. If $\rho R \geq 1$, two cases may occur. If the consumer trusts the bank, she will withdraw in period
3. By the Law of Large Numbers, a fraction $\pi_1$ of consumers will withdraw in period 1, which means that the bank must have $\pi_1 C_1$ on hand. This is feasible, so the patient consumer's expectations will be fulfilled.

But now suppose the patient consumer distrusts the bank, and thinks that all other patient consumers will want to withdraw at time $t = 1$. Then the bank will be forced to liquidate all of its

(illiquid) assets, yielding an asset value of $\pi_1 C_1 + (1 - \pi_1 C_1) L$, which is less than $C_1$, implying the bank will fail.

Thus banks are inherently unstable because there are equilibria in which it is optimal for everyone to withdraw funds from the bank. This arises from the fact that it is possible the bank will not have enough assets to be able to offset its liabilities.

There are several ways around this problem. One is to allow the bank to prevent withdrawals if withdrawals become too numerous. Another is for the government to provide deposit insurance. However, deposit insurance may itself create a moral hazard problem. Banks may feel free to essentially gamble with depositors funds, knowing that they will be bailed out if their investments go bad; Akerlof and Romer argue this is what happened with respect to savings and loans in the United States in the 1980s. Even if the absence of explicit deposit insurance, many large banks may believe themselves to be 'too big to fail'; it has been argued that this was a leading cause in the recent financial crises in Southeast Asia.

# 4.6 Investment Under Uncertainty And Irreversible Investment

The previous $q$ -theoretic analysis augmented the standard neoclassical approach to cases where there are costs to adjusting the capital stock. Now, we shall look at an extreme case, where investing requires some sunk cost which cannot be recovered. We shall begin by looking at a simple deterministic model when there is a sunk cost. We will then add uncertainty to this model, and finally look at the effects of uncertainty on investment separately. We shall follow models by Dixit and Pindyck (JEL 1991) and Abel (AER 1983). It will turn out that it is easiest to analyze such models using stochastic-calculus techniques first applied to finance theory. These techniques are briefly summarized in Appendix B.

Suppose we are considering investing in some project. To invest, we must pay a constant sunk cost $I$. The project has some value, growing over time at rate $\alpha$, given by $V = V_{0}e^{\alpha t}$. For simplicity, let's use the normalization $V_{0} = 1$. The firm has discount rate $\mu$. Assume $\mu > \alpha$. The firm's problem, as of time zero, is to decide when to make the investment.

It might initially seem that the firm should simply wait until the instant that $V = I$; if it invests at any point before that time, it will make a negative return until $V = I$, and if it waits until after that time, it will lose $V - I$ while waiting. This solution (which I will call the 'neoclassical' solution) is flawed because it ignores the fact that the ability to choose when to invest itself has some value. If you were to imagine selling the right to choose to invest to someone else (e.g. selling the rights to drill an oil well), you would want to sell it for more than the value of the project. After the investment is done, the sunk cost is not recoverable and the firm no longer has the choice of whether or not to invest. Hence the firm should wait until $V$ exceeds $I$ by the option value.

The option value is so called because evaluating the firm's problem is directly comparable to pricing a financial instrument known as an option. An option gives one the right to buy or sell a security at a certain price. It usually (at least in the United States) has a time limit; one must decide whether to exercise this option before the limit. Options and other forms of futures contracts (e.g. derivatives) are traded in financial exchanges. In the early 1970s, Fischer Black and Myron Scholes developed a theory of how these option prices should move. The theory fit the data rather well. Subsequently, options traders started using the formulas themselves to determine the prices of options. The theory predicts actual prices almost perfectly as a result, making option pricing theory one of the most empirically successful economic theories. Scholes and Robert Merton jointly won the Nobel Prize last in 1997 for this theory and elaborations on it.

When we introduce uncertainty, we will use these technique to solve for the value of the option to invest.

For now, let $F(V)$ denote the value of the option to invest. The firm would like a decision rule which maximizes this value. This rule will consist of a time $T$ at which the option to invest is exercised.

Formally, the firm's problem is to chose $T$ to maximize

$$
F
(V) = (V
(T) - I) e^{- \mu T} \tag {4.46}
$$

Substituting the expression for $V(t)$, this becomes:

$$
\left(e^{(\alpha - \mu) T} - I e^{- \mu T}\right) \tag {4.47}
$$

Solving the first-order condition with respect to $t$ implies an optimum value for $T$ of:

$$
T = \frac{1}{\alpha} \ln \left(\frac{I \mu}{\mu - \alpha}\right), \tag {4.48}
$$ and a project value of:

$$

\frac{I \mu}{\mu - \alpha}. \tag {4.49}

$$

We could also plug this back into the formula for $F(V)$ and solve for the option value.

Since by assumption $\mu >\alpha$, the value of the project is greater than $I$. Thus, one should wait, as argued above.

The problem becomes more interesting (and realistic) when we introduce uncertainty in the value of the project. The easiest way to introduce uncertainty is to assume that the project follows a continuous time stochastic process known as a geometric Brownian Motion, so that:

$$ d V = \alpha V dt + \sigma V d W \tag {4.50}
$$ where $W$ is a standard Wiener process. Wiener processes and stochastic calculus will be discussed in section; a brief introduction is also given in appendix B.

Recall that increments in a Wiener process are standard normal, so this expression implies that changes in $\ln V$ are normal with drift $\alpha$.

A before, let $F(V)$ denote the opportunity to invest. The firm would like a rule which maximizes the value of this opportunity. The rule will consist of a time $T$ at which the option to invest is exercised. Given this, we may write the value of the option as:

$$

F

(V) = \max_{T} E_{t} \left[ \left(V_{T} - I\right) e^{- \mu (T - t)} \right] \tag {4.51}

$$ where $\mu$ is the discount rate.

To solve this maximization problem, it will be convenient to use the following asset pricing consideration. If $F$ is to be considered an asset, at each point in time, the holder of the asset has two options:

1. Sell the asset, receive $F$, and invest it in the alternative asset from which the discount rate is derived. Over a period of length $$d_{t}$$, the total return to him or her will then be $\mu F $d_{t}$$.
2. Hold onto the asset. In this case, the holder receives whatever flow of income the asset provides (which is in this case zero) and may receive a capital gain or loss on the asset. The expected value of this capital gain is defined to be $E_{t}dF$.

The return under these two alternatives must be equal. Therefore an optimality condition for the above problem is:

$$
\mu F d t = E_{t} d F \tag {4.52}
$$

Now we must compute $dF$, using the definitions of $F$ and $V$ given above. Since $F$ is a function of a Wiener process, we must use Itô's lemma to solve for the derivative. We can write:

$$ d F = F_{V} d V + \frac{1}{2} F_{V V} (d V)^{2} \tag {4.53}
$$

Substituting for $dV$, one obtains:

$$ d F = \alpha V F_{V} d t + \sigma V F_{V} d W + \frac{1}{2} \sigma^{2} V^{2} F_{V V} d t \tag {4.54}
$$

Now $E_{t}dZ = 0$, since increments of a Wiener process are standard normal. Thus, $$E_{t}dF = (\alpha VF_{V} + \frac{1}{2}\sigma^{2}V^{2}F_{VV})d_{t}$$. We may then rewrite the asset-pricing relationship as:

$$
\mu F = \alpha VF_{V} + \frac{1}{2} \sigma^{2} V^{2} F_{VV} \tag {4.55}
$$

This is a differential equation in $F$. We need boundary conditions for this equation. We will have three:

1. $\mathrm{F}(0) = 0$. Given the definition for $V$, if the value ever reaches 0, it stays there forever. Thus, the value of the option is always 0 (since there is free disposal of the option).
2. If $V^{*}$ is the optimal $V$, then $F(V^{*}) = V^{*} - I$. That is, the value of the option must just be equal to the net value of the project at the time the option is exercised.
3. $F_V(V^*) = 1$. This is known as the smooth pasting condition. If $F(V)$ jumped discretely at the time of exercise, one could improve by exercising at a different pointthe reason is that by Jensen's inequality, the expected return would be higher if one waited for the value to get a little higher.

Solving differential equations like this generally involves guessing a solution (or looking it up in a differential equations book). Here, the correct guess is:

$$
F
(V) = a_{1} V^{b_{1}} + a_{2} V^{b_{2}}, \tag {4.56}
$$ where $a_1, a_2, b_1$ and $b_2$ are parameters to be determined.

To obtain the solution, substitute $F(V)$ into the equation. This yields the following quadratic equations in $b_{1}$ and $b_{2}$:

$$

\frac{1}{2} \sigma^{2} b_{1}^{2} + \left(\alpha - \frac{1}{2} \sigma^{2}\right) b_{1} - \mu = 0 \tag {4.57}

$$

$$

\frac{1}{2} \sigma^{2} b_{2}^{2} + \left(\alpha - \frac{1}{2} \sigma^{2}\right) b_{2} - \mu = 0 \tag {4.58}

$$

These equations are identical. Thus, there are two possible solutions corresponding to the two roots of the quadratic equation. One root will be positive, the other negative. Applying the first boundary condition can eliminate the negative root. The other one is:

$$ b_{1} = \frac{1}{2} - \frac{\mu - r}{\sigma^{2}} + \left(\left[ \frac{\alpha}{\sigma^{2}} - \frac{1}{2} \right]^{2} + 2 \left(\frac{\mu}{\sigma^{2}}\right)\right)^{\frac{1}{2}} > 1. \tag {4.59}
$$

We can solve for $a_1$ and $V^*$ using the other two boundary conditions. One can readily verify from the two conditions and the general form of the solution that:

$$
V^{*} = \frac{b_{1}}{b_{1} - 1} I \tag {4.60}
$$ and

$$ a_{1} = \frac{V^{*} - I}{V^{* b_{1}}} \tag {4.61}
$$

The key point of this solution is that $V^{*} > I$, or that the option value is again indeed positive. Thus, one should wait until $V^{*} > I$ before exercising the option. One can also show that $V^{*}$ and $F(V)$ are increasing in $\sigma$. In other words, more uncertainty increases the value of investing, but decreases the actual amount of investment. The Dixit and Pindyck article contains more comparative statics. Dixit (JPE 1989) gives a similar model of entry which also allows for exit and allows for the price of output rather than the value of the project to be the primitive variable.

It may be of interest to compare this solution for the value of the project at the time of investment to the naive, 'neoclassical' one and the one obtained under certainty. Unfortunately, it is difficult to do this analytically, so we will consider a numerical example. Let $\mu = 0.05$, $\alpha = 0.03$ and $\sigma = 0.01$.<sup>6</sup>

Given these values, the value of the project under the neoclassical solution is (of course) $I$, under the certainty solution is $2.5I$ and under the uncertainty solution is $2.512I$. So the presence of uncertainty adds slightly to the option value, and may therefore end up delaying the investment further. The next section shows that the effects of uncertainty on investment need not always go this way.

# 4.6.1 Investment Under Uncertainty

Here, we follow a paper due to Abel (AER, 1983).

He looks at the effects of uncertainty in the price of output on investment.

Suppose a firm has a Cobb-Douglas production function $Y_{t} = L_{t}^{\alpha}K_{t}^{1 - \alpha}$. The output price is $p_t$, which follows the following geometric Brownian motion:

$$
\frac{dp_{t}}{p_{t}} = \sigma d W \tag {4.62}
$$ where $dW$ is again the increment to a Wiener process. The wage is $w$, and investment has the convex cost function $\gamma I_t^\beta$, where $\beta > 1$. The capital accumulation equation is $\frac{dK_t}{d_{t}} = I_t - \delta K_t$.

The value of the firm is the present value of cash flows (i.e. profits), and can therefore be written as:

$$

V (K_{t}, p_{t}) = \max E_{t} \int_{t}^{\infty} [ p_{s} L_{s}^{\alpha} K_{s}^{1 - \alpha} - w L_{s} - \gamma I_{s}^{\beta} ] e^{- r (s - t)} ds \tag {4.63}

$$ subject to the laws of motion of $K$ and $p$.

This maximization problem has the following Bellman equation:

$$ r V \left(K_{t}, p_{t}\right) dt = \max \left(p_{t} L_{t}^{\alpha} K_{t}^{1 - \alpha} - w L_{t} - \gamma I_{t}^{\beta}\right) dt + E_{t} d V \tag {4.64}
$$ which again states that the value of the asset equals the flow return $+$ the expected capital gain.

To solve the maximization problem on the right-hand-side, we first need to solve for $E_{t}\frac{dV}{d_{t}}$. By Ito's Lemma,

$$ d V = V_{K} d K + V_{p} dp + \frac{1}{2} V_{KK} (d K)^{2} + \frac{1}{2} V_{pp}
(dp)^{2} + V_{p K}
(dp) (d K) \tag {4.65}
$$

Substituting in for $dK$ and $dp$, and using the facts that $E(dz) = 0$, $E($d_{t}$)^2 = 0$ and $E($d_{t}$)(dz) = 0$ implies that the second, third and fifth terms on the right-hand side go away, leaving us with:

$$
E_{t} (d V) = \left[ \left(I_{t} - \delta K_{t}\right) V_{K} + \frac{1}{2} p_{t} \sigma^{2} V_{pp} \right] dt \tag {4.66}
$$

Substituting yields:

$$ r V = \max p_{t} L_{t}^{\alpha} K_{t}^{1 - \alpha} - w L_{t} - \gamma I_{t}^{\beta} + \left(I_{t} - \delta K_{t}\right) V_{K} + \frac{1}{2} p_{t}^{2} \sigma^{2} V_{pp} \tag {4.67}
$$

The maximization problem with respect to $L_{t}$ simply involves the usual condition that the marginal product of labor is set equal to the real wage. After some tedious algebra, one can show that the first two terms reduce to:

$hp_{t}^{\frac{1}{1 - \alpha}}K_{t}$, where $h = 1 - \alpha (\frac{\alpha}{w})^{\frac{\alpha}{1 - \alpha}}$

(given CRS, this is just capital's share in output).

The first order conditions with respect to It imply $\gamma \beta I_{t}^{\beta - 1} = V_{K}$. Substituting, we get that the resulting Bellman equation is:

$$ r V (K, p) = hp^{\frac{1}{1 - \alpha}} K + (\beta - 1) \gamma I^{\beta} - \delta KV_{K} + \frac{1}{2} p \sigma^{2} V_{pp} \tag {4.68}
$$ where I have suppressed the $t$ subscripts.

Noting that $I$ is a function of $V_{K}$, one can see that the above is a nonlinear second-order partial differential equation in $V$. Fortunately, Abel has cooked the model so that it has a solution, which is the following complicated expression:

$$

V (K, p) = q K + \frac{\beta - 1) \gamma \left(\frac{q}{\beta \gamma}\right)^{\frac{\beta}{\beta - 1}}}{r - \frac{\beta (1 - \alpha + \alpha \beta) \sigma^{2}}{2 (1 - \alpha)^{2} (\beta - 1)^{2}}} \tag {4.69}

$$ where:

$$ q = \frac{hp^{\frac{1}{1 - \alpha}}}{r + \delta - \frac{\alpha \sigma^{2}}{2 (1 - \alpha)^{2}}} \tag {4.70}
$$ and one can show that:

$$

I_{t} = \left(\frac{q}{\beta \gamma}\right)^{\frac{1}{\beta - 1}} \tag {4.71}

$$

The important equations are the last two. Investment is again a function of some variable $q$. $q$ depends on the price of the output and on the other parameters of the model, including the variance of the price. Note that an increase in the variance of the price makes $q$ larger, and thereby increases investment. Thus investment becomes larger the greater the amount of uncertainty is.

The intuition for this result is that an increase in the variance of the price puts more weight in the upper and lower parts of the distribution. The value of the marginal product of capital is convex in the price of output, so that gains in the upper tail of the distribution outweigh the increases in the lower tail, so that the expected present value of the marginal revenue product is higher by Jensen's inequality. There is a larger chance of reaping much larger benefits, which outweighs the larger chance of reaping somewhat smaller benefits.

The general cookbook formula for solving such problems is:

1. Write down the optimal control problem:

$$

J \left(x_{0}\right) = \max E_{0} \int_{0}^{\infty} e^{- \rho t} f \left(x_{t}, u_{t}\right) dt \tag {4.72}

$$

$$ d X = \alpha dt + \beta d W, \tag {4.73}
$$ which is just a stochastic version of the Hamiltonian optimal control problem.

# 4.7. Problems:

2. Write down the associated Bellman equation:

$$

\rho J \left(x_{t}\right) dt = \max \left[ f \left(x_{t}, u_{t}\right) dt + E \left(d J \left(x_{t}\right)\right) \right] \tag {4.74}

$$ which states intuitively that the annuity value of the asset (the left-hand side) equals the flow return plus the expected capital gain from holding the asset.

3. Use Ito's lemma to get $dJ$:

$$ d J \left(x_{t}\right) = J^{\prime} \left(x_{t}\right) dx_{t} + \frac{1}{2} J^{\prime \prime} \left(x_{t}\right) \left(d X_{t}\right)^{2} \tag {4.75}
$$

4. Take expectations to get EdJ

$$
E d J \left(x_{t}\right) = \alpha J^{\prime} \left(x_{t}\right) dt + \frac{1}{2} \beta^{2} J^{\prime \prime} \left(x_{t}\right) \tag {4.76}
$$

5. Substitute $EdJ$ into the Bellman equation

$$
\rho J \left(x_{t}\right) = \max \left[ f \left(x_{t}, u_{t}\right) + \alpha J^{\prime} \left(x_{t}\right) + \frac{1}{2} \beta^{2} J^{\prime \prime} \left(x_{t}\right) \right] \tag {4.77}
$$

6. Take the first order condition with respect to the control variable $u$. This gives $u = g(J, J', J'')$.
7. Substitute in for u, which gives a differential equation in $J$
8. Solve the differential equation

# 4.7 Problems:

1. Consider the $q$ theory model of investment presented in class. Add to the model taxes on corporate profits at rate $\tau$, so that after-tax profits for a capital stock $K$ are $(1 - \tau)\Pi(K)$. Suppose that the economy starts off at a steady state. It is announced at date $t$ that there may be a change in corporate tax policy on a future date. Specifically, on date $s$, a coin will be flipped to decide whether to keep the tax rate constant or to raise it. If it is decided to raise taxes, the change will take place immediately. Describe what happens to $q$ and to investment in response to this situation.
2. Consider the following model of the housing market presented in class:

$$
\dot {p} = r * p - R
(h) \tag {4.78}
$$

$$
\dot {h} = \pi
(p) - (n + \delta) h, \tag {4.79}
$$ where $p$ is the price of housing, $h$ is the per capita stock of housing, $r$ is the interest rate, $n$ is the rate of population growth, $\delta$ is the depreciation rate, $R()$ gives rent as a function of the stock of housing per capita, and $\pi()$ gives housing investment per capita as a function of price. $R' < 0$, $\pi' > 0$.

Consider two versions of the model: the usual forward looking one, and one in which price expectations are static: $E(\dot{p}) = 0$.

(a)

(c) Compare the steady state levels of $h$ and $p$ in the two models.
(d) Suppose that the economy is in steady state, and then there is a reduction in the interest rate. In which version of the model will the adjustment to the new steady state level of $h$ be faster?

Why?

3. Discuss informally what you would expect to see in a model of the housing market like the one presented in class, but in which people form expectations of future house price changes by extrapolating from price changes in the recent past.
4. Consider a model of the housing market like the one presented in class, but in which the holders of housing are not rationally forward looking, but rather are always optimistic. (This is true, by the way.) In particular, housing owners always believe that housing prices will rise at some rate $E(\dot{p}) = k$. Analyze the equilibrium in the market. How do the steady state levels of $h$, $p$, and rent compare to the regular model. Show how the effect of a permanent increase in the rate of population growth differs between this model and the regular model.
5. (old core exam question) Consider the following model of the housing market:

$$

\begin{array}{l} H = \text{stock} \\ R = \text{rentalrate} \\ p = \mathrm{priceofaunitofhousing} \\ N = \text{sizeoftheadultpopulation} \\ h = H / N \text{(housingpercapita)} \\ R = R

(h) R^{\prime} < 0 \text{(rentasafunctionofhousingpercapita)} \\ r = \text{required} \\ \end{array}

$$

$$

\dot {h} = \pi

(p) - (n + \delta) h \tag {4.80}

$$

$\pi' > 0$ (differential equation for housing stock, where $n$ is population growth and is the rate of depreciation.)

Consider the effects in this model of a tax on capital gains (and a corresponding tax credit for capital losses). The tax rate is $t$. If an investor holds a house that increases in price by $x$ dollars, then the investor only gets to keep $(1 - t)x$ dollars after taxes. Similarly, if an investor holds a house which decreases in price by $x$ dollars, then the investor only loses $(1 - t)x$ dollars after taxes. Assume that there is no tax on rental income or on any non-housing investments. That is, investors can put their money in an alternative investment that earns them a tax-free rate of return $r$. Investors are assumed to be risk-neutral.

Compare both the steady state and dynamics of the model when there is such a tax policy to the case where $t = 0$. Consider specifically the effect on the steady state and the transitional dynamics of a permanent, unexpected increase in the rate of population growth.

6. Consider the market for used cars in Providence. There are two potential types of sellers of used cars: people who own lemons (cars that are of bad quality) and people who own good cars, but want to sell them because they are moving to Los Angeles. Lemon owners will sell no matter what the price is. Movers will only sell if the expected benefit of selling in Providence and buying in LA is greater than the benefit of keeping their cars and driving cross country.

Buyers of used cars cannot observe the quality of the cars that they buy. Buyers of used cars are risk neutral. Let the value of a good used car be $C$. The value of a lemon is $L$. The price at which people will buy a used car is $P = (1 - q)C + qL$, where $q$ is the fraction of used cars sold that are lemons. Let $l$ be the fraction of potential used car sellers who own lemons. $l$ is known to everyone.

Let $k$ be the cost of moving a good used car from Providence to Los Angeles. In LA, good used cars can be purchased for price $C$ (that is, there is no information problem in LA because buyers can tell from the seller's aura whether she is lying).

Derive the conditions under which a pooling equilibrium (in which people moving to LA sell their cars in Providence) can exist.

Derive the condition under which the pooling equilibrium is the only possible equilibrium.

7. Consider a firm which has profits as a function of its capital stock as: $\Pi
(K) $. Suppose there is a cost to investment of the form $C(I) = b|I|$. Depreciation occurs at rate $\delta$, and the discount rate is $r$.

(a) Derive the conditions for the optimal level of investment.
(b) Suppose the government suddenly decides to reward investment by paying firms $\tau$ for each unit of investment they do (where $\tau < b$ ). Assuming we are initially in the steady state, show the path of investment, profits and the capital stock over time.

(c) Answer the previous question assuming that the government announces that the reward will be made at some specified time in the future.

8. Suppose a firm is considering investing in a project. The project will yield a flow of profits $\pi$ per unit time, where the behavior of $\pi$ is described by the following:

$$

\frac{d \pi}{\pi} = \alpha dt + \sigma d W \tag {4.81}

$$ where $W$ is a standard Brownian motion (i.e. continuous time random walk). To invest in the project, the firm must pay a fixed amount $I$, which is not recoverable. The discount rate is $\rho$.

For simplicity, let's first assume that there is no uncertainty, so $\sigma = 0$.

(a) Work out $V$, the value of the project at time $t$, in terms of profits at time $t$ and other parameters.

(b) Solve for the optimal time $T^{*}$ for the firm to invest in the project, and the value of the project at that time $T^{*}$. You may get different answers for different assumptions about the parameters; if so, specify how the answers depend on your assumptions. Compare the value of the project at time $T^{*}$ to the required value when the cost $I$ is recoverable upon disinvestment.

Now assume that $\sigma > 0$.

(c) Write down, but do not solve, the differential equation for the value of the firm's option to invest in the project.

(d) Without solving for it, compare the value of the project at which the firm chooses to invest under uncertainty with the value of the project at which the firm chooses to invest under certainty. Which one should be larger?

# Two Questions On $Q$ -Theory:

Suppose a firm has profits as a function of its capital stock of $\pi(K)$. The cost of investing is $C(I)$. Depreciation is linear at rate $\delta$, and the rate of time discount equals the real interest rate $r$.

(a) The economy is initially in equilibrium. Suppose it is announced that at some future time $s$, the government will impose a tax on profits at rate $\tau$.

 i. Plot the behavior of $q$, $I$ and $K$ from the time of the announcement until the economy reaches its new steady state. ii. Now suppose that at time $s$, the tax is in fact not imposed. Plot the behavior of $q$, $I$ and $K$ from this time to when the economy reaches its new steady state.

# 4.7. Problems:

 iii. How would the path of $q$, $I$ and $K$ differ if instead it had been announced that the tax would be imposed at time $s$ with some probability $p$

(b) Suppose that due to Global Warming, the rate of depreciation $\delta$ increases. Plot the behavior of $q$, $I$ and $K$ from now until the new steady state.

9. Suppose a firm's profits as a function of its capital stock may be denoted $\Pi(K)$, where $\Pi' > 0$ and $\Pi'' < 0$. The firm faces a cost of investment of $C(I) = I + d(I)$, where $d'(I) > 0$ and $d''(I) > 0$. Depreciation occurs at rate $\delta$, and the discount rate is $r$.

(a) Set up and solve the firm's maximization problem, and draw the phase diagram for the evolution of the capital stock and the shadow price of capital for any given set of initial conditions.

(b) Suppose we are initially in the steady state of the model. Suddenly, an asteroid collides with the firm and destroys 80 percent of its capital stock. Show on a phase diagram the path over time of the capital stock and the shadow price of capital.

(c) Now forget about the asteroid for a moment. Suppose we are in the steady-state, and the government unexpectedly imposes a tax of rate $\tau$ on investment. The tax is expected to be permanent. Show on a phase diagram, from a time just before the tax is imposed, the path over time of the capital stock and the shadow price of capital.

(d) Answer the previous question assuming the tax is known to be temporary.

(e) Compare your answers for parts

(b) through

(d) , and account for any differences among them.

Fun with Itô's Lemma

Calculate $df$ for the following functions of the Brownian motion:

$$ dx = \mu dt + \sigma d W.
$$

(a) $f(x) = x^{3}$

(b) $f(x) = \sin

(x) $

(c) $f(x) = e^{-$r_{t}$}x$

10. Suppose you own an oil well. This well produces a constant flow $x$ of oil. The price of the oil is random, and follows the following geometric Brownian motion: $\frac{dp_t}{p_t} = \mu $d_{t}$ + \sigma dW_t$. The well costs some amount $z$ to operate.

You have the option of being able to costlessly shut down the well and to costlessly start up the well again. Your flow profits are therefore bounded below by zero. You discount at the real rate of interest $r$. Sketch the steps one would have to follow to solve for the value of the option to shut down or start up the project (Hint: You will need to consider two cases, one in which $P < z$, another in which $P > z$ ).

11. Consider the housing market model studied in class. Let $H$ denote the stock of housing, $R$ its rental rate, $N$ adult population (which grows at rate $n$ ) and $\delta$ the depreciation rate. Per capita housing is $h$, with price $p$. Let $\pi(p)$ denote the gross housing investment function, and let housing demand be given by $h^D = f(R)$, where $f' < 0$. The real interest rate is $r$.

(a) Write the equations of motion and draw the phase diagram for this model.

For the remainder of this problem, assume that there is rent control; that is, there is some maximum level of rent, $\bar{R}$, which can be charged for housing. (Hint: You may have to consider multiple cases in each of the problems below.)

(a)

(c) Write the equations of motion and draw the phase diagram(s) for this model.

(d) Suppose we start with the model presented in part

(a) , and now impose rent control. Sketch the paths for $p, h$ and $R$.

(e) Assuming we start from equilibrium under rent control, sketch the paths for $p$, $h$ and $R$ assuming that the adult population growth rate $n$ has increased due to an influx of immigrants.

(f) Answer part

(d) assuming the adult population growth rate $n$ has decreased due to an outflow of emigrants.

(g) Suppose we start with an equilibrium under rent control, and suddenly rent control is removed. Sketch the paths for $p$, $h$ and $R$.

(h) Answer part

(f) assuming that the removal of rent control is announced in advance (as happened in Cambridge, Massachusetts a few years ago).

12. Consider the $q$ -theory model of investment described in class.

(a) Characterize the effects on $q$, the capital stock and investment of a one-time unexpected increase in the real interest rate.

(b) Answer the previous question if the increase in the real interest rate were announced in advance.

Now consider a firm attempting to decide whether and when to invest in a particular project. If the firms invents, it has to invest a fixed, irrecoverable amount $I$. The value of the project $V$ follows the following deterministic process: $V = \alpha_0 + \alpha_1 t$. The firm discounts at the real interest rate $r$.

# 4.7. Problems:

(a)

(d) Solve for the optimal time at which the firm should invest.

(e) How would an increase in the real interest rate affect the time to invest?

(f) Now suppose there are many such firms, each of which has a potential project; these firms only differ in that they discover the existence of these projects at different times. How would the aggregate amount of investment observed over any given time interval change in response to an increase in the real interest rate $r$?

(g) Compare your answer to the last part with your answer to part

(a) . Account for any differences in the response of investment to real interest rates.

13. Consider the model of investment presented in class in which there is an adjustment cost to investment. The total cost of investing is thus $c(I) = I + d(I)$, where $d' > 0$ and $d'' > 0$. The discount rate is $r$, depreciation occurs at a constant rate $\delta$, and profits as a function of the capital stock are given by $\Pi(K)$.

(a) Write down the two equations of motion characterizing the solution to the firm's optimization problem.

(b) Suppose it becomes known at time $t$ that at time $t + s$, a new government will seize $25\%$ of the firm's time $t + s$ capital stock, melt it down and build a huge statue with no productive value. Assume that the firm has no way of avoiding this confiscation. Sketch the path of the capital stock, investment and the shadow price of capital from a time just before $t$ to a time just after $t + s$.

(c) Now suppose instead that it becomes known at time $t$ that at time $t + s$, there is a $50\%$ chance that the new government will seize $50\%$ of the firm's capital stock, and a $50\%$ chance that it will seize nothing. Sketch the path of the capital stock, investment and the shadow price of capital from a time just before $t$ to a time just after $t + s$. Do so for both the case in which the government in fact seizes $50\%$ and in the case where it seizes nothing.

(d) Let's think generally about the government for a moment. Suppose the government wants to make many, many statues over a period of years. Is the policy of occasionally confiscating capital a good way of financing these projects? Why or why not?

# Chapter 5

# Unemployment And Coordination Failure

This last brief section of the course will look at some models of unemployment and related models of the process of search and of coordination failure.

In the chapter on nominal rigidities, we saw why nominal wage rigidity could lead to involuntary unemployment, by implying a real wage at which labor supply exceeded labor demand. Since nominal wages are flexible in the long run, nominal wage rigidity cannot be an explanation for why there is a nonzero average level of unemployment. This chapter offers several explanations for the 'natural rate' of unemployment.

Coordination failure models can be used to explain why there are Keynesian multiplier effects and why economic situations may be characterized by multiple, Pareto-rankable equilibria (i.e. why collective action may lead to a better outcome for all, but this outcome may not be observed). The coordination failure idea you have already seen, in the context of the interactions of price-setters under menu costs.

# 5.1 Efficiency Wages, Or Why The Real Wage Is Too High

The first explanations provide reasons why the real wage may permanently be at a level above that which clears the labor market. We will explicitly look two variants of 'efficiency wage' models. These models argue that firms pay higher wages to encourage workers to work harder.

# 5.1.1 Solow Model

The first model is due to Robert Solow. Assume production is given by $Y = AF(e(\frac{W}{P})L)$, where $e$ denotes effort, which depends positively on the real wage $\frac{W}{P}$. The next subsection will provide one possible rationale for this, but for now it's not implausible to think that people might work harder if paid more.

The firm's objective is profit maximization. We will assume that it can choose both the wage and the level of employment; it is free to do both provided it has some monopsony power in the labor market and the real wage is at least at the market-clearing level. The firm's problem is then:

$$
\left\{\frac{W}{P}^{\max } \right\}, \{L \} \Pi = AF \left(e \left(\frac{W}{P}\right) L\right) - \frac{W}{P} L \tag {5.1}
$$

The first-order conditions for optimization are:

$$
AF^{\prime} \left(e \left(\frac{W}{P}\right) L\right) e^{\prime} \left(\frac{W}{P}\right) = 1 \tag {5.2}
$$

$$
AF^{\prime} \left(e \left(\frac{W}{P}\right) L\right) e \left(\frac{W}{P}\right) = \frac{W}{P}. \tag {5.3}
$$

Combining them yields the following condition:

$$
\frac{W}{P} \frac{e^{\prime} (\frac{W}{P})}{e (\frac{W}{P})} = 1. \tag {5.4}
$$

The real wage is now no longer determined by the condition that labor demand equal labor supply, but instead by the condition that the elasticity of effort with respect to the real wage equal one. The intuition for this is that the firm cares about effective labor, $e\left(\frac{W}{P}\right)L$. The cost of each unit of effective labor is $\frac{\frac{W}{P}}{e\left(\frac{W}{P}\right)}$. At the point where the elasticity of effort is equal to one, changes in the real wage don't change the cost of effective labor

This level of the real wage can easily be above the market-clearing level. Moreover, note that productivity disturbances have no effect on the real wage, although they do change labor demand. The real wage is perfectly and permanently rigid in this model.

# 5.1.2 The Shapiro-Stiglitz Shirking Model

This model provides a reason why effort may depend on the real wage: people are more afraid of losing their job if the real wage is high. Let $\bar{L}$ be the number of workers and $N$ the number of firms. In discrete time, each worker tries to maximize $\sum \left(\frac{1}{1 + r}\right)^t U_t$, where $U_t = W_t - e_t$ if employed and is zero if unemployed. $e_t$ denotes effort, and may take two values: $\bar{e}$ and

0. Hence, people are in one of three states:

# 5.1. Efficiency Wages, Or Why The Real Wage Is Too High119

- employed and exerting effort, which we will denote state $E$
- employed and shirking (i.e. exerting zero effort), denoted state $S$
- unemployed, denoted state $U$.

Assume that per unit time, jobs break up at rate $b$. Formally, one can think of these breakups as a Poisson process. Assume that if a worker shirks, he has an additional probability of losing his job of $q$. If unemployed, new jobs arrive at a constant rate $a$.

Let $V_{S}$ denote the value to the worker of being employed. We are going to derive this value by thinking of being in this state as an asset. If the working is shirking, he will receive wage $w$. Next period, he will be in one of two states. He will either still be employed, but shirking; this has value $V_{S}$, and occurs with probability $1 - (b + q)$. Alternatively, he will have been caught shirking, and will be unemployed; this has value $V_{U}$ and occurs with probability $b + q$. The expression for $V_{S}$ is then:

$$
V_{S} = W + \frac{1}{1 + r} \left[ (b + q) V_{U} + (1 - (b + q)) V_{S} \right]. \tag {5.5}
$$

By similar reasoning, one can deriving that the value of being employed but not shirking, $V_{E}$, is as follows:

$$
V_{E} = W - \bar {e} + \frac{1}{1 + r} [ b V_{U} + (1 - b) V_{E} ]. \tag {5.6}
$$

We can rearrange these two to obtain the following:

$$
V_{S} = \frac{1 + r}{r + b + q} W + \frac{b + q}{r + b + q} V_{U} \tag {5.7}
$$

$$
V_{E} = \frac{1 + r}{r + b} (W - \bar {e}) + \frac{b}{r + b} V_{U}. \tag {5.8}
$$

To solve for the level of the real wage at which workers will not be willing to shirk, equate these two expressions. This yields:

$$
W = \bar {e} \frac{r + b + q}{q} + \frac{r}{1 + r} V_{U}. \tag {5.9}
$$

Assume that firms pay this level of the wage, so that there is no shirking. Then the worker's choice is between been unemployed, or being employed and exerting effort. We may write the value of these two states as:

$$
V_{U} = \frac{1}{1 + r} [ a V_{E} + (1 - a) V_{U} ] \tag {5.10}
$$

$$
V_{E} = W - \bar {e} + \frac{1}{1 + r} [ b V_{U} + (1 - b) V_{E} ], \tag {5.11}
$$ where the second expression is the same as before.

This allows us to solve explicitly for the level of the wage by solving out for $V_U$. Doing so gives a value for $W$ of:

$$

W = \bar {e} + \frac{\bar {e} (a + b + r)}{q}. \tag {5.12}

$$

Finally, note that in equilibrium that flows into unemployment must equal flows out of unemployment, so that:

$$ b L = a (\bar {L} - L). \tag {5.13}
$$

Substituting this into the expression for the wage, we obtain the condition that:

$$
W = \bar {e} + \frac{\bar {e} \left[ \frac{b L}{L - L} + b + r \right]}{q} \tag {5.14}
$$

This is plotted in Figure 5.1, along with labor supply and the condition that the marginal product of labor equal the real wage. Equilibrium is determined by where the marginal product intersects the wage expression given above, rather than where labor supply equals labor demand. Intuitively, firms must pay above the market-clearing level to induce people not to shirk.

# 5.1.3 Other Models Of Wage Rigidity

There are several other models of real wage rigidity which try to explain why the real wage may be above the market clearing level.

- Implicit Contracts: These models argue that firms and workers are engaged in long-term relationships. If workers have more limited access to capital markets than firms, firms may be able to engage in a form of risk-sharing with workers by agreeing to keep their income constant. Hence the marginal product may not equal the real wage at each point in time, although it will on average over the long run.
- Insider-Outsider Models: These models are models of union behavior. They argue that current union members (the insiders) engage in bargaining with firms to ensure a high real wage, at the expense of employment of those outside the union (the outsiders).

# 5.2 Search

The models of the previous section explained unemployment by implying that the real wage exceeded the market-clearing level. This section explores another reason: people may be unemployed because it takes time to find a job.

The following model, although highly stylized, has a labor-market interpretation. To understand the model, first think of the following story.

You and many other people live on an island. On this island, there are coconut palms, of varying heights. Everyone likes to eat coconuts, but in order to get a coconut, you must climb up a palm tree. This takes effort, which varies with the height of the tree, so you don't climb up every tree you come across, only the shorter ones. Furthermore, although all coconuts are identical, taboo prevents you from eating your own coconut; hence even once you have a coconut, you must walk around until you find someone else with a coconut to trade with. The more people there are walking around with coconuts, the more trading opportunities there are. The number of people with coconuts depends on the maximum height people are willing to climb up. If only one person decides to climb up higher trees, that won't increase the number of trading partners, and that person will bear the additional cost of climbing higher. Hence no one person has an incentive to climb higher trees. If everyone climbed higher trees, there would be many more trading partners, and it might be worthwhile to do so. One could thus imagine there would be outcomes where everyone is climbing short trees, and all would be better off if they were climbing higher trees, but no one person has an incentive to do so.[2]

The moral of this story is: Cooperation is good.

Let's see the technical version of this model:

# 5.2.1 Setup

#
1. Utility
	- There is a continuum of individuals, each with instantaneous utility function $U = y - c$, where $y$ is the consumption of a single output good, and $c$ is the cost of production
	- Trade and production take place at discrete times $t_i$, so that utility $V = \sum_{i=1}^{\infty} e^{-rt_i} U_{t_i}$.

#
2. Production
	- People search for production opportunities
	- These arrive at rate $a$. When they arrive, you get an opportunity to produce $y$ units of output at cost $c$. Costs are distributed according to $G(c)$.

#
3. Decision
	- The individual must decide which opportunities to take.
	- He will set a reservation cost of $c^*$, and only take opportunities which have a cost below that point.

#
4. Exchange
	- Assume that people can't consume their own production but must find someone to trade with.
	- Assume that it is easier to find people to trade with when there are more people trading. That is, there is a thick market externality.
	- Trades arrive at a rate $b(e)$, where $e$ is the proportion of the population trading and $b'(e) > 0$.

# 5.2.2 Steady State Equilibrium

Let's think about the fraction of the population trading at any point in time. This fraction, $e$, will increase as people find new production opportunities which they accept, and decrease as those who have produced successfully complete trades. The fraction of successful trading opportunities is $aG(c^{*})$, and there are $(1 - e)$ in the population who can take advantage of such opportunities. Similarly, the fraction of successful trades is $b(e)$, and there are $e$ people in the economy who can trade. Therefore,

$$
\dot {e} = a (1 - e) G \left(c^{*}\right) - eb
(e) . \tag {5.15}
$$

The steady-state condition is $\dot{e} = 0$

One can show that the steady-state level of $e$ is increasing in the value of $c^*$; that is, the fraction of the population trading in the steady-state increases when peoples' reservation cost level increases.

Next, we need to specify how $c^*$ is determined. Let $W_e$ and $W_u$ be the present value of utility for those with and without $y$ units of output.

$$ r W_{e} = b \left(y - W_{e} + W_{u}\right) \tag {5.16}
$$

$$ r W_{u} = a \int_{0}^{c^{*}} \left(W_{e} - W_{u} - c\right) d G
(c) \tag {5.17}
$$

These equations come from the fact that the flow return from remaining in the same state must equal the expected gain from changing state in equilibrium. This, if one is in state $e$, with some probability $b$, you will trade, gain $y$ and change state, thus gaining $W_{u} - W_{e}$ on net. This must be equal to the discounted value of remaining in the same state. This condition has the same justification as it did during the shirking model: one can consider trading the right to be in state $e$, and receiving $rW_{e}$ over the next instant, or holding on to the right, and receiving $(y - W_{e} + W_{u})$ with probability $b$.

One can combine these by noting that

$$ c^{*} = W_{e} - W_{u} = \frac{by + a \int_{0}^{c^{*}} cd G}{r + b + a G \left(c^{*}\right)} \tag {5.18}
$$

From which one can show that $\frac{dc^*}{de} > 0$.

When one combines this with the previous finding that $\frac{de}{dc^*} > 0$, one sees where there are multiple equilibria (Figure 5.2).

What one should take away from this model is that search involves setting some sort of target or reservation price for a relevant variables, and then taking the first opportunity which comes along which exceeds (or, in some models, is less than) that value. One could readily make an analogy between this model and a model of employment and unemployment, and Diamond does so. If we let the $e$ subscript denote the employed, and the $u$ subscript denote the unemployed, this model could be a model of job search. In fact, Diamond has written another paper where that is so. The additional interesting fact about this model is that it has the implication that some fraction of people are always searching, or that there is frictional unemployment. One can find this level by working out what $1 - e$ is at the steady state. Thus, search models are often advocated as ways of determining what the natural rate of unemployment is.

# 5.3 Coordination Failure And Aggregate Demand Externalities

Let's now switch gears and look at another set of models which explore the implications of failure to coordinate across agents. These models of coordination failure aren't a huge departure from the unemployment models, since both imply that there are multiple equilibria, some of which are Pareto-dominated by the others.

We will start with the Murphy, Shleifer and Vishny paper "Industrialization and the Big Push." This paper formalizes an old idea by Rosenstein-Rodan, and has interesting implications for both growth theory and development economics.

# 5.3.1 Model Set-Up

#
1. Consumers
	- There is a representative agent with a Cobb-Douglas utility function. This function is defined over a continuum of goods indexed by $q \in [0,1]$:

$$
\int_{0}^{1} \ln x
(q) dq \tag {5.19}
$$
    - Cobb-Douglas utility implies a constant expenditure share; in this case, if total income is $y$, the consumer spends $y$ on each good (The total number of goods is normalized to one).
    - Consumers receive income from the profits of firms and wages. They have an endowment of labor $L$, which they supply inelastically. If we normalize the wage rate to one, then total income $y = \Pi + L$.

#
2. Firms
	- There are two types of firms in each sector:

(a) A large number of competitive firms with a CRS technology: One unit of labor produces one unit of output

(b) A unique firm with access to an increasing returns to scale technology. It can pay a fixed cost of $F$ units of labor and then one unit of labor produces $\alpha > 1$ units of output. Workers don't like working in the IRS technology, so they command a factory wage premium of $v$.

	- The choice by the firm whether or not to adopt the technology depends on whether or not they can earn positive profits by doing so.

	- The monopolist will charge a price equal to one, by Bertrand competition; if he charged more, the competitive firms would get all his business. He has no incentive to charge less, given the unit elastic demand curve.

	- Profits are:

$$
\pi = \frac{\alpha - 1}{\alpha} y - F \equiv ay - F \tag {5.20}
$$ where $a$ is the markup of price over marginal cost.

#
3. Equilibrium
    - When $n$ firms industrialize, aggregate profits $\Pi(n) = n(ay - F)$.
    - This yields aggregate income $y = \frac{L - nF}{1 - na}$
    - In this case, demand is increased by additional investment only if that investment is profitable, since $\frac{dy}{dn} = \frac{\pi(n)}{1 - an}$. Hence there is no coordination failure. If it is profitable to invest, all firms will want to invest, which will additionally raise the profit from investing.

#
4. Equilibrium When There Is Disutility To Working.
    - Suppose there is a disutility $v$ to working in the industrialized sector
    - The wage in that sector, by compensating differential, is then $1 + v$.
    - Profits conditional on industrialization are then:

$$

\pi = y \left(1 - \frac{1 + v}{\alpha}\right) - F (1 + v) \tag {5.21}

$$
    - If no one industrializes, there are no profits, and aggregate demand $y = L$.
    - If everyone industrializes, $y = \alpha (L - F)$
    - It is quite possible that profits to individual firms when no one else industrializes are negative, but profits are positive when everyone industrializes. Hence there is coordination failure- everyone would be better off if everyone industrialized, but no one firm has the incentive to do so.

Murphy, Shleifer and Vishny go on to give a dynamic version of their model.

This model, although highly stylized, essentially confirms Rosenstein-Rodan's intuition that coordinated investment projects may succeed better than projects to industrialize individual sectors. This is because of an aggregate demand externality. If all sectors industrialize at once, the income generate from the profits of those sectors will raise aggregate demand enough that it is profitable for each firm to have industrialized. If no sectors industrialize, no single sector has an incentive to industrialize, because aggregate income will not be high enough.

This is a concept which recurs over and over again within economics. Some further examples in macroeconomics are:
    - Models of price-setting, in which there are aggregate-demand externalities.
    - Models with trading externalities (or thick-market externalities): The more people who trade, the bigger the market, and the increased probability of a successful trade. It may be the case that no one person himself has an incentive to trade. We'll see a model of this when we look at search.

These models have been collected together into a general theory by Russell Cooper and Andrew John, in their paper "Coordinating Coordination Failures in Keynesian Models." Below, I summarize that paper.

This paper is a pure theory paper and is linked to the literature on game theory.

# 5.3.2 Assumptions

- There are $I$ players indexed by $i \in [1,2,\ldots, I]$
- Each player chooses an action $e_i \in [0, E]$ to maximize some payoff function $\sigma(e_i, e_{\neg i}; \theta_i)$. The $\neg i$ subscript simply means the payoff to agent $i$ depends on the actions of all other agents (i.e. those agents which are not $i$ ). $\theta_i$ is a shift parameter; that is, it is an easy way of parameterizing changes in functional form. Instead of having the functioning changing, we have $\theta$ changing.
- There are appropriate second-order conditions $\left(\frac{\partial^2\sigma}{\partial e_i^2} < 0, \frac{\partial^2\sigma}{\partial e_i\partial\theta_i} > 0\right)$.
- Let's restrict ourselves to considering symmetric Nash equilibria
(SNE) .

- Let $V(e_i, \bar{e})$ denote the payoff to $i$ when $i$ chooses $e_i$ and everyone else chooses $\bar{e}$; i.e. $V(e_i, \bar{e}) = \sigma(e_i, \bar{e}, \theta_i)$.
- The SNE is characterized by the set $S = \{e \in [0, E]: V_1(e, e) = 0\}$. I.e. the equilibrium has everyone doing the same action, and no one changes his or her payoff by changing his or her action. This is simply from the first-order condition for maximization.
- We need some further technical assumptions to make sure the equilibrium exists.
- The social optimum is defined by a Symmetric Competitive Equilibrium
(SCE) , the
(symmetric) equilibrium a social planner would pick: $\tilde{S} = \{e \in [0, E]: V_1(e, e) + V_2(e, e) = 0\}$.

# 5.3.3 Definitions

1. If $V_{2}(e_{i},\bar{e}) > 0$, the game exhibits positive spillovers. Increases in other players' actions increase your payoff.
2. If $V_{12}(e_i, \bar{e}) > 0$ the game exhibits strategic complementarity. This implies that increases in other players' actions lead you to want to increase your own action. To see this, totally differentiate the first-order condition for the SNE: $V_{11}(e_i, e)de_i + V_{12}(e_i, e)de = 0$, which implies: $\frac{de_i}{de} = -\frac{V_{12}}{V_{11}}$. $V_{11} < 0$, from concavity of the original payoff function. Hence for this derivative to be positive, $V_{12} > 0$. We can't assume that $\frac{de_i}{de} > 0$ directly, because this would be imposing a condition on choice variables. We need to make assumptions about preferences which lead to the choices (Figure 5.3).
3. If $\frac{\partial e_i}{\partial \theta_i} < \frac{de_i}{d\theta_i} < \frac{d\sum e_j}{d\theta_i}$, the game exhibits multiplier effects. The first term measures the initial response of agent $i$ to a shock to his payoff function, not taking into account other peoples' responses to his response. The second is the response taking those other responses into account, and the third is the aggregate response. Thus, there are multipliers when the aggregate response to a shock exceeds the individual response.

# 5.3.4 Propositions

Given those definitions, we can establish the following:

1. Strategic complementarity is necessary for multiple SNE.

Proof: Equilibrium requires that the reaction function $e_i(e)$ intersect the 45 degree line, so that $e_i = e$. For this to occur more than once, since the slope of the 45 degree line is one, the slope of the reaction function must exceed one. As we worked out in the definition of strategic complementarity, $\frac{de_i}{de} = -\frac{V_{12}}{V_{11}}$ and hence is positive and greater than one if $V_{12} > |V_{11}| > 0$. Hence strategic complementarity is necessary. Note that it is not sufficient.

# 5.4. Problems

2. If there are spillovers at equilibrium, then it is inefficient.

Proof:
(Technical) At equilibrium, $V_{1} = 0$. If $V_{2} > 0$, then $V_{1} + V_{2} > 0$ which implies we are not at the SCE, which is efficient.
(Intuitive) If all players benefit by higher actions, then equilibrium can't be efficient.

3. If there are positive spillovers, then there is some point $e'$ such that $e' > e$ and $e'$ is a SCE (i.e. it is efficient).

Proof: Follows from previous proposition. At some bigger $e$, the reaction function will cross the 45 degree line to obtain a SCE, given the positive spillovers.

4. If there are positive spillovers everywhere, we can Pareto-rank the SNE; higher actions are preferred.

Proof: $\frac{dV(e_i(e), e)}{de} = V_1 + V_2 = V_2$ hence all agents payoffs are increasing in all agents actions.

5. If $e_i(e) = e$ over an interval and there are positive spillovers, then there is a continuum of Pareto-rankable equilibria.

Proof: follows from previous proposition.

6. Strategic complementarity is necessary and sufficient for the existence of multipliers.

Proof: will be omitted here, since it is long and involved. The gist is that if there are strategic complementarities, a shock to agent $i$ 's payoff will cause him to change his strategy, which will cause others to changes their strategies in the same direction, which causes agent $i$ to further change his strategy, and so on. This is vaguely comparable to the standard IS-LM Keynesian multiplier story, where consuming an extra dollar means giving someone else income, which means more consumption, which means giving someone else income, and so on.

The paper goes on to shoehorn much of the rest of the literature on coordination failure into this framework. Both the Murphy, Shleifer and Vishny model and the Diamond model are examples.

# 5.4 Problems

1. Consider the following model of the labor market (Diamond, 1982):

Let $L$ denote the number of workers, of whom at any given moment $E$ are employed and $U$ are unemployed. There are $K$ jobs, of which $F$ are filled and $V$ are vacant. At any given point in time, a fraction $b$ of employed workers lose their jobs. Output is $y$, the wage is $w$ and the real interest rate is $r$.

(a) Write down the relationship between the unemployment rate $u = \frac{U}{L}$, the vacancy rate $v = \frac{V}{K}$, and the job-to-worker ration, $k = \frac{K}{L}$.

Let $W_{E}$ and $W_{U}$ denote the value to the worker of being employed and unemployed, respectively. Let $W_{F}$ and $W_{V}$ denote the value to the firm of having job filled and having a vacancy, respectively.

(a)

(c) Assuming workers and firms split the joint surplus equally, what is the relationship between $W_{E}$, $W_{U}$, $W_{F}$ and $W_{V}$?
(d) Write asset-pricing relationships for $W_{E}$, $W_{U}$, $W_{F}$ and $W_{V}$.
(e) Solve for the fraction of output paid out as wages. How does this quantity depend on the unemployment rate and the vacancy rate?

2. Consider the following model of the labor market. Suppose the economy has two types of workers, skilled $(S)$ and unskilled $(U)$. The production function is $Y = S^{\alpha}U^{\beta}$. Let $W_{S}$ denote the nominal wage paid to skilled workers, $W_{U}$ the wage paid to unskilled workers and $P$ the price level. Let $\bar{S}$ denote the number of skilled workers and $\bar{U}$ denote the number of unskilled workers, and assume that each workers supplies one unit of labor inelastically. The price level is perfectly flexible.

(a) Solve for the wage, employment, and rate of unemployment (if any) for both types of workers under competitive equilibrium.
(b) Now suppose that a minimum wage $\bar{W}$ is imposed for the unskilled workers. Solve for the wage, employment, and rate of unemployment (if any) for both types of workers.
(c) What level of minimum wage for the unskilled workers, if any, would a social planner who cared about the utility of a representative unskilled worker choose? A social planner who cared about the utility of a representative skilled worker? One who cared about some weighted average of the two?

Now supposed the unskilled workers are unionized. Assume that the union gets to choose the level of the wage, after which the representative firm gets to choose how many workers to hire. Assume that the union's utility function is defined by:

$$

\left(\frac{\hat {U}}{\bar {U}}\right) \frac{\left(\frac{W_{U}}{P}\right)^{1 - \theta}}{1 - \theta} + \left(1 - \frac{\hat {U}}{\bar {U}}\right) UI \tag {5.22}

$$ where $\hat{U}$ is the number of unskilled workers employed and $UI$ is the

(exogenous) level of unemployment insurance.

# 5.4. Problems

(a)

(e) Provide some justification for this objective function.

(f) Conditional on the wage, solve for the firm's maximization problem for how many people to hire.

(g) Knowing how the firm will solve its maximization problem, solve for the level of the wage the union will choose. Then solve for the rate of unemployment in the unskilled sector.

3. Let's consider the following model of unemployment through job creation and matching, due to Christopher Pissarides. We will break the problem into two parts, first focusing on the workers, and then focusing on the firms.

Suppose there are $L$ workers. At a given time, a worker may be employed or unemployed. If a worker is employed, he or she receives a wage $w$, but there is a constant probability $\lambda$ that his or her job may be eliminated. If unemployed, the worker receives unemployment insurance $z$. With probability $\theta q(\theta)$, the worker finds and accepts job. $\theta = \frac{v}{u}$, where $v$ is the ratio of job vacancies to the labor force and $u$ is the unemployment rate.

(a) Write down the equation for how the unemployment rate evolves over time.

(b) Solve for the equilibrium unemployment rate

(c) Assuming the discount rate is $r$, and letting $E$ denote the value to the worker of being employed and $U$ the value of being unemployed, write down the Bellman equations for the worker.

Now consider the firm's problem. If the firm has a job which is filled, the firm produces $y$ units of output and pays wage $w$. There is a constant probability $\lambda$ (the same as above) that the job will be eliminated. If the job is eliminated, the firm does not automatically create a job by posting a vacancy. If the firm does decide to create a job by posting a vacancy, it pays a flow cost $c$ to post the vacancy. With probability $q(\theta)$ it fills the vacancy

(a)

(e) Letting $J$ denote the value to the firm of having a filled job, and $V$ the value of having a vacancy, write down the Bellman equations for the firm.

(f) In equilibrium, $V = 0$. Why?

(N. B. You can go on to solve for the equilibrium job vacancy rate, but we won't do that in this problem).

# Continuous-Time Dynamic Optimization

Many macroeconomic problems have the form:

$$
\begin{array}{l} \left\{u
(t) \right\} V (0, x_{0}) = \int_{0}^{\infty} e^{- rt} J (x
(t) , u
(t) , t) dt (23) \\. \ni. \quad \dot {x}
(t) = f (x
(t) , u
(t) , t) (24) \\ x (0) = x_{0}. (25) \\ \end{array}
$$

Here, $x(t)$ is the state variable, and $u(t)$ is the control variable.

One way of solving the problem is to form an equivalent of the Lagrangian, the (present-value) Hamiltonian:

$$
H = e^{- rt} \left[ J \left(\left(x
(t) , u
(t) , t\right)\right) + q
(t) f (x
(t) , u
(t) , t) \right], \tag {26}
$$ where $q(t)$ is the costate variable; it is essentially a Lagrange multiplier which varies over time, and I have occasionally referred to it as such in the text.

Necessary conditions for optimality are:

$$

\frac{\partial H}{\partial u} = 0 \Longrightarrow J_{u} + qf_{u} = 0 \tag {27}

$$

$$

\frac{\partial H}{\partial x} = - \left[ qe^{- rt} \right] \Longrightarrow - \dot {q} + rq = J_{x} + qf_{x} \tag {28}

$$

In addition, the transversality condition $t \xrightarrow{\lim} \infty e^{-$r_{t}$} q(t) x(t) = 0$ is often, but not always, necessary. Concavity restrictions on $J$ and $f$ are needed to ensure sufficiency of these conditions.

In Harl Ryder's class, you will see a full treatment of both necessary and sufficient conditions for optimality for these problems, as well as a discussion of other techniques.

Foremost among these techniques is Bellman's principle of optimality. This states that:

$$
- V_{t} (t, x) = \max_{u} [ J (x, u, t) + V_{x} (t, x) f (x, u, t) ]. \tag {29}
$$

$V$ denotes the maximized value of the program. For any values of the state variables $t$ and $x$, the change in the value of the program over time has to equal the flow return $J+$ the change in the value of the program induced by $x$ changing.

An example of the use of the Hamiltonian: optimal growth.

$$

\left\{u

(t) \right\} V \left(0, x_{0}\right) = \int_{0}^{\infty} e^{- rt} \frac{C^{1 - \sigma} - 1}{1 - \sigma} dt \tag {30}

$$

$$

\cdot \exists. \quad \dot {k} = f

(k) - c - \delta k \tag {31}

$$

$$ k (0) = k_{0}. \tag {32}
$$

In this case, $J = \frac{C^{1 - \sigma} - 1}{1 - \sigma}, f = f(k) - c - \delta k, x = k$ and $u = c$.

Sufficient conditions for optimality are then:

$$
\frac{\partial H}{\partial u} = 0 \Longrightarrow c^{- \sigma} = q \tag {33}
$$

$$
\frac{\partial H}{\partial x} = - \left[ qe^{- rt} \right] \Longrightarrow - \dot {q} + rq = q \left[ f^{\prime}
(k) - \delta \right] \tag {34}
$$ and the transversality condition $t \to \infty e^{-$r_{t}$} q(t) k(t) = 0$.

By time-differentiating the first condition and inserting it into the second, we can get the following usual expression for consumption:

$$

\frac{\dot {c}}{c} = \frac{\left(f^{\prime}

(k) - (r + \delta)\right)}{\sigma} \tag {35}

$$

For good treatments of dynamic optimization, see Intrilligator, Mathematical Optimization and Economic Theory, Kamien and Schwartz, Dynamic Optimization, or Judd, Numerical Methods in Economics.

# Stochastic Calculus

In thinking about investment under uncertainty, as well as finance theory, we need to specify the behavior of variables as stochastic processes. In discrete time, a convenient process to use is the random walk.<sup>3</sup>

The reason why Brownian motions are useful is that the independent increments property is implied by efficient markets theories of asset pricing.

A process $W_{n}(t)$ is a random walk if it satisfies the following:

1. $W_{n}(0) = 0$
2. Time intervals are of length $\frac{1}{n}$, where $n$ is a positive integer.
3. $W$ can only move up and down by the amount $\frac{1}{\sqrt{n}}$
4. The probability of moving up=the probability of moving down $= \frac{1}{2}$.

The simplest case is when $n = 1$. Then, the process starts at $t = 0$ at zero, and moves randomly up or down by one unit at each point in time, staring from the point it was at last period each time. The process is called a random walk because in two dimensions it is equivalent to imagining a
(drunk) person who at each point in time takes a random step in some direction. One can show that after $t$ steps, the distribution of the random walk variable is $N(0, t)$. Note that the variance depends on $t$. Also note that increments in the random walk process are independent, and that future movements away from any position are independent of where the position is. A convenient way of representing it is: $W_{t} = W_{t - 1} + \epsilon_{t}$.

The continuous-time analog of the random walk is known as a Brownian Motion or a Wiener Process. A process $W_{t}$ is a Brownian motion if and only if:

1. $W_{t}$ is continuous and $W_0 = 0$

2. $W_{t}\sim N(0, t)$

3. $W_{t+s} - W_s \sim N(0, t)$, independent of the history of the process through $s$.

Brownian motions have some very unusual properties:
    - They are continuous everywhere, but differentiable nowhere.
    - A Brownian motion will eventually hit every real value, infinitely often.
    - Brownian motion has the fractal property of looking the same on every scale it is examined.

We will frequently be interested in solving optimization problems where the objective function may depend on a Brownian motion. Because of the odd properties of Brownian motions, we will have to modify the usual calculus techniques we use.

First, we must define a stochastic process $X - t$ as follows:

$$

X_{t} = X_{0} + \int_{0}^{t} \sigma_{s} d W_{s} + \int_{0}^{t} \mu_{s} ds, \tag {36}

$$ where $dW_{s}$ is the increment of a Wiener process.

This simply says that process $X$ can be written as the sum of realizations of a Wiener process from time zero to time $t$ and realizations of a deterministic drift term from time zero to time $t$. If $\mu$ were constant, the second term would simply be $\mu t$.

It is often useful to write this in differential form:

$$ d X_{t} = \sigma_{t} d W_{t} + \mu_{t} dt. \tag {37}
$$

The next question is how to compute differentials of functions of these stochastic processes; i.e. what is $df(X_{t})$? The answer is given by Itô's Lemma:

If $dX_{t} = \sigma_{t}dW_{t} + \mu_{t}$d_{t}$$, then:

$$ d f = \left(\sigma_{t} f^{\prime} \left(X_{t}\right)\right) d W_{t} + \left(\mu_{t} f^{\prime} \left(X_{t}\right) + \frac{1}{2} \sigma_{t}^{2} f^{\prime \prime} \left(X_{t}\right)\right) d t. \tag {38}
$$

Note that the standard non-stochastic version of this would not have the second term in parentheses, $\frac{1}{2}\sigma_t^2 f''(X_t)$.

As an example of how this works, consider the function $F(X_{t}) = X_{t}^{2}$ for the process $dX_{t} = \sigma dW_{t} + \mu $d_{t}$$. Then, $f^{\prime}(X_{t}) = 2X_{t}$ and $f^{\prime \prime}(X_{t}) = 2$. Hence

$$ df \left(X_{t}\right) = \left(2 \sigma X_{t}\right) d W_{t} + \left(2 \mu X_{t} + \sigma^{2}\right) dt \tag {39}
$$

In most economic problems we deal with in Ec208, we will often be taking conditional expectations of the differential. The important point to note here is that because increments in the Brownian motion are independent with zero mean, $E_{t}dW_{t} = 0$. Hence the general expression for $df$ derived above simplifies to:

$$
E_{t} df = \left(\mu_{t} f^{\prime} \left(X_{t}\right) + \frac{1}{2} \sigma_{t}^{2} f^{\prime \prime} \left(X_{t}\right)\right) dt, \tag {40}
$$ which is just a standard second-order differential equation in $X_{t}$, which can be solved with a standard technique, if it is solvable at all.

For functions of two independent Brownian motions, $f(X_{1t}, X_{2t})$, where $X_{1t} = \sigma_{1t} dW_t + \mu_{1t} $d_{t}$$ and $X_{2t} = \sigma_{2t} dW_t + \mu_{2t} $d_{t}$$,

$$

\begin{array}{l} df = \left(\sigma_{1 t} \frac{\partial f}{\partial X_{1 t}}\right) d W_{1 t} + \left(\sigma_{2 t} \frac{\partial f}{\partial X_{2 t}}\right) d W_{2 t} \\ + \left(\mu_{1 t} \frac{\partial f}{\partial X_{1 t}} + \mu_{2 t} \frac{\partial f}{\partial X_{2 t}} + \frac{1}{2} \sigma_{1 t}^{2} \frac{\partial^{2} f}{\partial X_{1 t}^{2}} + \frac{1}{2} \sigma_{2 t}^{2} \frac{\partial^{2} f}{\partial X_{2 t}^{2}} + \sigma_{1 t} \sigma_{2 t} \frac{\partial^{2} f}{\partial X_{1 t} \partial X_{2 t}}\right) dt. \tag {41} \\ \end{array}

$$

This can be obtained from a standard Taylor Series expansion.

The product rule for independent Brownian motions works the same as in the standard calculus case, so that:

$$ d \left(X_{1 t} X_{2 t}\right) = X_{1 t} d X_{2 t} + X_{2 t} d X_{1 t} \tag {42}
$$

If $W_{1t} = W_{2t}$, however, the results are different. In that case, the differential is:

$$ d \left(X_{1 t} X_{2 t}\right) = X_{1 t} d X_{2 t} + X_{2 t} d X_{1 t} + \sigma_{1 t} \sigma_{2 t} dt, \tag {43}
$$ since $(dW_{t})^{2} = $d_{t}$$ by the multiplication laws for Brownian motions.
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/b0885640-f709-4931-afd6-9c5bae2b99c1/84cbdfa5e126fc88699f74f80499a58a58e3f9f0ad6c4f31edea77604c285962.jpg)
Figure 1.1

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/b0885640-f709-4931-afd6-9c5bae2b99c1/cad6c79b3ea528e2b5c139b21958bb4d5bd7f6c0e54a2e7a69fdc29c2b465a8e.jpg)
Chapter 1 Figures
Figure 1.2

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/b0885640-f709-4931-afd6-9c5bae2b99c1/3071c0694cf8415cb0df0ca905ddaac3162daa85eb120932e66ca9900a4c5f58.jpg)
Figure 1.3

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/b0885640-f709-4931-afd6-9c5bae2b99c1/ccbc8c769251cb4491f456ddcc4d7562742a05537c7b214857038b20fcb8f69b.jpg)
Figure 1.4

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/b0885640-f709-4931-afd6-9c5bae2b99c1/55adee5c17b13b6aadc169a7b0829df5a6cd0e74eed45ac36b0e8439eed8b409.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/b0885640-f709-4931-afd6-9c5bae2b99c1/c406085a5add3481c73d7b1b3cbfe4935666a5995e6ad06ddc557a1a62e2d9d2.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/b0885640-f709-4931-afd6-9c5bae2b99c1/6fb373398235108bb5864e8473bc5173aa47dbe684f565ff94951a2dd81c4d75.jpg)
Chapter 2 Figures

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/b0885640-f709-4931-afd6-9c5bae2b99c1/d9e6e2e109c676cab8112e6a5bc4cd21d99236727edbd6e49b1f6e9a98dadf35.jpg)
Figure 2.2

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/b0885640-f709-4931-afd6-9c5bae2b99c1/d9c0fd98e01995ae30df46b9030f535237b4d9b194fb7bf43c80f614a84c77f2.jpg)
Figure 2.1

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/b0885640-f709-4931-afd6-9c5bae2b99c1/adb5b15c1e0581d2ed17b166c6597460f902f0e1c315ee71df1a7a79b094d539.jpg)
Figure 2.4

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/b0885640-f709-4931-afd6-9c5bae2b99c1/d1cdf2b35e27eec5b5805fe5c794a7fbfa4281f3feede2f4e5820b3401d58382.jpg)
Figure 2.3
Figure 2.5

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/b0885640-f709-4931-afd6-9c5bae2b99c1/6f4ed63ef4852b0dd998e02ddaa372e5b25b5ae4d33789a4adfd01e9604ece45.jpg)
Figure 2.6

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/b0885640-f709-4931-afd6-9c5bae2b99c1/cfb6ce04dc731a68ea46c549bb6205fb1231a0bbb44245e097bfb034a1e1960a.jpg)
Figure 2.7

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/b0885640-f709-4931-afd6-9c5bae2b99c1/ceddf964f005492512f3b44a653cefd47c43e2127607084776789ea8adfe2d37.jpg)
Figure 2.8

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/b0885640-f709-4931-afd6-9c5bae2b99c1/076712956f7b6dc635544f7533f993241ce522e9bb44e95048c9a690ae2858df.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/b0885640-f709-4931-afd6-9c5bae2b99c1/b2e5a59bf295abcf625eafe2089c40647b0246c1b678e922aaa40f1ffc0a43b1.jpg)
Figure 2.10

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/b0885640-f709-4931-afd6-9c5bae2b99c1/75d287d940266574564e8c0921ff6cab54b3decfabd2bb5ffd23049fa80a3530.jpg)
Figure 2.9
Figure 2.11

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/b0885640-f709-4931-afd6-9c5bae2b99c1/4d00f3a414efda157d5bd1639e704bb439676bb70a3bf4572f08f796bb7a9133.jpg)
Figure 2.12

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/b0885640-f709-4931-afd6-9c5bae2b99c1/c633013dcf4cd09ab8d3371c87c6f472d33f7bc12d7755931519be6456ef699f.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/b0885640-f709-4931-afd6-9c5bae2b99c1/a354fb5de9d502810d2b1b7c31bfb27a4e0934004c1ac75a0ad7cf30d95ec1a4.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/b0885640-f709-4931-afd6-9c5bae2b99c1/fd277ac3a415f511a50e1ec453fb197115c4b9489e1f33b36aae3d948423101e.jpg)
Figure 2.14

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/b0885640-f709-4931-afd6-9c5bae2b99c1/3b3205cae87d7a25128579f97f8e89d1e6167fccb76aa56155e087c6a8614368.jpg)
Figure 2.13

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/b0885640-f709-4931-afd6-9c5bae2b99c1/500de5dc09203fbba02562a8333746edbc24835cae98ee9126ee882a8c30a1f5.jpg)
Figure 2.15

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/b0885640-f709-4931-afd6-9c5bae2b99c1/51f418a5410c6c62e52de1888f531a764a12e9b58ed92f8819bec27b517a3046.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/b0885640-f709-4931-afd6-9c5bae2b99c1/28ec5e3b78b69cebf2de18b4f5ad185b3cb4a98ac63cee24f3bfb24c483c0fe0.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/b0885640-f709-4931-afd6-9c5bae2b99c1/821fc6429a71e29230b7c90cfddc753952428fb9818b8e9fcf0bb3a5f4e41764.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/b0885640-f709-4931-afd6-9c5bae2b99c1/463a63c60d43f9a7f194253a1092b85c7c68cd494ed8d41637003f15689ec836.jpg)
Welfare or Profits

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/b0885640-f709-4931-afd6-9c5bae2b99c1/ada0db9ebbbfb5e6eb6090a138891bf7d8463b5803e4c170dd99d7e6ee48f92b.jpg)
Figure 2.19

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/b0885640-f709-4931-afd6-9c5bae2b99c1/85098ca2063dd9544c5b57710d625f6670ebd1e9b85d3c00a609073c0d253a8d.jpg)
Figure 2.18
Figure 2.20

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/b0885640-f709-4931-afd6-9c5bae2b99c1/23b4ec5442c63b479e0d8f67b1f246f4ace4827c92dfc4b5b0f0f0641158c3bb.jpg)
Figure 2.21

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/b0885640-f709-4931-afd6-9c5bae2b99c1/aa4e73f42f045f05fecb6a034ad7da1275efad622e5b29d604ab940dbdbb110f.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/b0885640-f709-4931-afd6-9c5bae2b99c1/3512a42ecf64e10df5dbca6c191b5553c441e894972975b8aee36c8e7a72a7b6.jpg)
Figure 2.23

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/b0885640-f709-4931-afd6-9c5bae2b99c1/6c66ecac196533daf544e145752474c87c217fdd84ccf2717d546e3ff8300691.jpg)
Figure 3.1

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/b0885640-f709-4931-afd6-9c5bae2b99c1/080aef985eb6080ba817640cc70e3a2e1f29774a7812043fc6a90bc0bc77b261.jpg)
Chapter 3 Figures
Figure 3.2

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/b0885640-f709-4931-afd6-9c5bae2b99c1/54440e0053cba9079c75a6d1ccbb26617abed8cb0b08e31af82a3e55c89d04f8.jpg)
Figure 3.3

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/b0885640-f709-4931-afd6-9c5bae2b99c1/611998a4a8f48fa850be87cb9a58031caa5d82bc3a58e71ce76afdf88bbeabd7.jpg)
Figure 4.1

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/b0885640-f709-4931-afd6-9c5bae2b99c1/21eb330fbcb1d32577fee0ba17c1ea3730d5a407675dc1c3655488727c9ce489.jpg)
Chapter 4 Figures

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/b0885640-f709-4931-afd6-9c5bae2b99c1/2f233f9a39911e823b128f53cddca5c0bdd20effa055a9bb3bc878eb5395ecf4.jpg)
Figure 4.3

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/b0885640-f709-4931-afd6-9c5bae2b99c1/1f84a27faea19b895d64be03c7483cdb3fee8cf022d099a5c4ca3acd5096d1ab.jpg)
Figure 4.4

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/b0885640-f709-4931-afd6-9c5bae2b99c1/960c3072e91e664952165d61007b2188ee780b2900d8672fd98c5e3d226ba4e2.jpg)
Figure 4.5

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/b0885640-f709-4931-afd6-9c5bae2b99c1/0cbcdba36036666cf690050b51c0f0e7049d14a9c1417aaf7de1fac7dac2763b.jpg)
Figure 4.6 (B&F, Fig. 9.10)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/b0885640-f709-4931-afd6-9c5bae2b99c1/81db04d6fb9fe3e85287ddb7e5b6db03fef3ce58739e4a8f30a8b76f273a8ec2.jpg)
Figure 5.1

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/b0885640-f709-4931-afd6-9c5bae2b99c1/ffd4d7b865bc13d00cc629f43bfaf6f61530c5bc65889c11f5a9c32813a60bcf.jpg)
Chapter 5 Figures
Figure 5.2

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/b0885640-f709-4931-afd6-9c5bae2b99c1/8e46aa1ec7faf7a293e7d76b1c7478a32aacf412d75043a62559bffd85332a17.jpg)
Figure 5.3