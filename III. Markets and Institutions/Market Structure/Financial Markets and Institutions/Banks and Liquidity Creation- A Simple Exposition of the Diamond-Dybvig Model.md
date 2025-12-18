---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: "Banks and Liquidity Creation: A Simple Exposition of the Diamond-Dybvig Model"
linter-yaml-title-alias: "Banks and Liquidity Creation: A Simple Exposition of the Diamond-Dybvig Model"
---

# Banks and Liquidity Creation: A Simple Exposition of the Diamond-Dybvig Model

Douglas W. Diamond

Banks make loans that cannot be sold quickly at a high price. Banks issue demand deposits that allow depositors to withdraw at any time. This mismatch of liquidity, in which a bank's liabilities are more liquid than its assets, has caused problems for banks when too many depositors attempt to withdraw at once (a situation referred to as a bank run). Banks have followed policies to stop runs, and governments have instituted deposit insurance to prevent runs. Diamond and Dybvig (1983) develop a model to explain why banks choose to issue deposits that are more liquid than their assets and to understand why banks are subject to runs. The model has been widely used to understand bank runs and other types of financial crises, as well as ways to prevent such crises. This article uses narrative and numerical examples to provide a straightforward explanation of the ideas in Diamond and Dybvig (1983).

Diamond and Dybvig (1983) argue that an important function of banks is to create liquidity, that is, to offer deposits that are more liquid than the assets that they hold. Investors who have a demand for liquidity will prefer to invest via a bank, rather than hold assets directly. Before discussing the

methods by which banks might create liquidity, it is important to understand why there is a demand for liquidity by consumers or producers. I begin with the consumer demand for liquidity. Investors demand liquidity because they are uncertain about when they need to consume and, thus, how long they wish to hold assets. As a result, they care about the value of liquidating their assets on several possible dates, rather than on a single date.

Creating deposits that are more liquid than the assets held by banks can be viewed as an insurance arrangement in which depositors share the risk of liquidating an asset early at a loss. This model explains an important function of banks. It also shows that offering these demand deposits subjects the banks to bank runs if too many depositors withdraw.

Creating liquid deposits is one important function of financial intermediaries like banks. Another function is monitoring borrowers and enforcing loan covenants. The latter function is modeled in Diamond (1984), and is described in a simple framework in Diamond (1996).

# 1. THE DEMAND FOR LIQUIDITY

This section first analyzes some important reasons for the demand for more liquid assets by investors who are consumers. It then provides an alternative motivation for a demand for liquid assets by entrepreneurs. When the assets that investors can hold directly are illiquid, there is a demand for creating more liquid assets.

An illiquid asset is one in which the proceeds available from physical liquidation or a sale on some date are less than the present value of its payoff on some future date. In the extreme, a totally illiquid asset is worthless (cannot be sold or physically liquidated for a positive amount) on some date but has a positive value on a later date. The lower the fraction of the present value of the future cash flow that can be obtained today, the less liquid is the asset.

Consider the following asset on three dates,  $T = 0$ ,  $T = 1$ , and  $T = 2$ . If one invests one unit at date 0, it will be worth  $r_2$  at date 2, but only  $r_1 < r_2$  at date 1. The lower  $\frac{r_1}{r_2}$  is (holding constant market discount rates), the less liquid is the asset.

# The Uncertain Horizon of Investors

Investors face an uncertain horizon to hold the asset. Each will need to consume either at date  $T = 1$  or  $T = 2$ . However, as of date 0, an investor does not know at which date he will need to consume. Each begins with 1 with which to invest on date  $T = 0$ . An investor cannot buy direct insurance against his need for liquidity, because the need is private information and, thus, is not due to some observable event such as a hurricane. However, contracts can be designed that indirectly provide this insurance. Liquid assets that offer a

smaller loss when liquidated early can provide indirect insurance. As a result, for some risks, investors can save and liquidate the liquid assets as needed. I will call an investor a "type 1" if he needs to liquidate at  $T = 1$  and a "type 2" if he can wait until  $T = 2$ . For this example, this means he will consume only at  $T = 1$  if of type 1, and only at  $T = 2$  if of type 2 (or he can store date 1 consumption goods and consume them at date 2).

As of date 0, an investor does not know which type he will be, but each investor has a probability  $t$  of being of type 1 and  $1 - t$  of being of type 2. There is no aggregate uncertainty, and there will be a fraction  $t$  of investors of type 1. To be concrete, suppose that  $t = \frac{1}{4}$  and that there are 100 investors. As a result, 25 will be of type 1 and 75 will be of type 2, but it is not known at date 0 which investors will be of each type.

A type 1 investor with utility function  $U(c)$  who consumes  $c_{1}$  at  $T = 1$  has utility  $U(c_{1})$ . A type 2 investor who consumes  $c_{2}$  at  $T = 2$  (this  $c_{2}$  includes any stored date 1 consumption goods) has utility  $U(c_{2})$ . The utility function is the same for both types, but the date on which an investor wishes to consume depends on his type. An investor who holds the asset  $(r_{1}, r_{2})$ , which gives a choice of  $r_{1}$  at date 1 or  $r_{2} > r_{1}$  at date 2, consumes  $c_{1} = r_{1}$  if of type 1 (with probability  $t$ ) or  $c_{2} = r_{2}$  if of type 2 (with probability  $1 - t$ ). The investor's expected utility is given by

$$
t U (r _ {1}) + (1 - t) U (r _ {2}).
$$

I assume that the investor has the risk-averse utility function of  $U(c) = \frac{-1}{c}$ . To simplify exposition, I add a constant of 1 to the utility (with no effect on any decisions) and use the utility function  $U(c) = 1 - (\frac{1}{c})$ . This allows the expected utility calculations to yield positive numbers.

# Comparing More and Less Liquid Assets

Consider the following two assets, both of which cost 1 at date 0. The illiquid asset has  $(r_1 = 1, r_2 = R)$  and a more liquid asset has  $(r_1 > 1, r_2 < R)$ . Investors have access only to the illiquid asset. Later, I will show how banks can create the more liquid asset, although there is no physical asset with its payoffs, but for now I simply illustrate the demand for liquidity with the following numerical example for the case where the probability of being of type 1 is  $t = \frac{1}{4}$  and the illiquid asset has  $(r_1 = 1, r_2 = R = 2)$ . As a comparison, consider a hypothetical more liquid asset that has  $(r_1 = 1.28, r_2 = 1.813)$ . Section 2 explains why these particular numerical values are used. The expected utility from holding the illiquid asset is

$$
\frac {1}{4} U (1) + \frac {3}{4} U (2) = 0. 3 7 5.
$$

The expected utility from holding the more liquid asset is

$$
\frac {1}{4} U (1. 2 8) + \frac {3}{4} U (1. 8 1 3) = 0. 3 9 1 > 0. 3 7 5.
$$

Each investor prefers the more liquid asset. A risk-averse investor prefers this smoother pattern of returns; holding the illiquid asset is risky because it delivers a low amount when liquidated early, on date 1.

Note that if investors were not risk averse and had constant marginal utility of consumption, they would not prefer this particular liquid asset. That is, if  $U(c) = c$ , then the expected utility of holding any asset is equal to its expected payoff given the policy of liquidating when of type 1. For the illiquid asset, the expected payoff is

$$
\frac {1}{4} (1) + \frac {3}{4} (2) = 1. 7 5.
$$

The more liquid asset gives an expected payoff of:

$$
\frac {1}{4} (1. 2 8) + \frac {3}{4} (1. 8 1 3) = 1. 6 8 <   1. 7 5.
$$

The more liquid asset has a lower expected rate of return. Sufficiently risk-averse investors, but not risk-neutral investors, are willing to give up some expected return to get a more liquid asset.

Investors choose to liquidate assets when consumption is highly valuable to them. In particular, a type 1 investor liquidates the asset at a time when his marginal utility of consumption is high. An investor's demand for liquidity is greater the higher his (relative) risk aversion is, because liquidating early implies low consumption and, thus, high marginal utility of consumption.

# Entrepreneurial Liquidity Demand

An alternative motivation for a large demand for liquid assets comes from an entrepreneur who may have a sudden need to fund a very high return project at date 1 (which cannot be funded elsewhere). The entrepreneur wishes only to consume on date 2 but may choose to liquidate assets on date 1 to fund this high return project. As a result, the entrepreneur places an especially high value on date 1 liquidation proceeds in the circumstances where he wants to liquidate early. Suppose that with probability  $t$ , the entrepreneur will be able to fund the high return investment project and that it returns  $\Psi > R$  per unit invested. With probability  $1 - t$ , he does not get this opportunity and has access only to storage (storing one unit of goods at date 1 returns one unit at date 2). The availability of the high return is private information. Consider an asset that costs 1 at date 0 and offers either  $r_1$  at date 1 or  $r_2 > r_1$ , at date 2. When the entrepreneur has access only to storage, he will not liquidate the asset. However, when he needs to fund the high return project he will liquidate it if the project's return  $\Psi$  exceeds  $\frac{r_2}{r_1}$ , the rate of return from continuing to hold

the asset. As of date 0, the entrepreneur values an asset that can be liquidated for  $r_1$  at date 1 or  $r_2$  at date 2, as follows:  $tr_1\Psi + (1 - t)r_2$ , if  $\Psi > \frac{r_2}{r_1}$ , and as  $tr_1 + (1 - t)r_2$ , if  $\Psi \leq \frac{r_2}{r_1}$ . This is qualitatively similar to the risk-averse consumer, because the entrepreneur liquidates when the value of the proceeds is very high. Suppose that if  $\Psi = 2.5$ ,  $R = 2$ , and  $t = \frac{1}{4}$ , the entrepreneur then values the illiquid asset  $(r_1 = 1, r_2 = 2)$  as  $\frac{1}{4}\Psi(1) + \frac{3}{4}(2) = 2.125$ , and the liquid asset  $(r_1 = 1.28, r_2 = 1.813)$  as  $\frac{1}{4}\Psi(1.28) + \frac{3}{4}(1.813) = 2.160$ . The entrepreneur prefers the more liquid asset.

The entrepreneurial demand for liquidity will be even more similar to the investor/consumer demand for liquidity if the high return project has decreasing returns to scale.

I do not continue to analyze the entrepreneurial demand for liquidity here, but refer the reader to Diamond and Rajan (2001) and Holmström and Tirole (1998). I now return to the consumer demand for liquidity.

# 2. BANK LIQUIDITY CREATION

I now show that a bank can provide the more liquid asset by offering demand deposits, even though the bank invests in the illiquid asset  $(r_1 = 1, r_2 = 2)$ . I assume a mutual bank without equity (purely for expositional simplicity). Suppose that in return for a deposit of 1 at date  $T = 0$ , the bank offers to pay  $r_1 = 1.28$  to those who withdraw at  $T = 1$  or to pay  $r_2 = 1.813$  to those who withdraw at  $T = 2$ .

If the bank receives \$1 from each of the 100 investors, it receives \$100 in deposits on date T = 0. If the bank invests in the illiquid asset, it will need to liquidate some of the illiquid asset at T = 1 to pay 1.28 to those who withdraw.

At  $T = 1$ , the bank's entire portfolio is worth \$100. Suppose 25 depositors withdraw 1.28 each, then  $25(1.28) = 32$  assets must be liquidated: 32 percent of the portfolio must be liquidated. If 32 assets are liquidated, then 68 will remain until  $T = 2$ , when they will be worth  $R = 2$  each. On date 2, there remain 75 depositors, each will receive

$$
\frac {[ 1 0 0 - 3 2 ] 2}{7 5} = \frac {[ 6 8 ] 2}{7 5} = 1. 8 1 3.
$$

Depositors prefer the more liquid asset to the illiquid asset. A bank can provide the more liquid deposit which has a smaller loss from early liquidation than is available from holding the illiquid assets directly. This liquidity transformation service is one of the most important functions of banks. If the bank offers the more liquid deposits and invests in the illiquid assets, it can create liquidity. It is an equilibrium (a Nash equilibrium) for 25 depositors to withdraw at  $T = 1$ , because if all depositors expect 25 to withdraw at  $T = 1$ , only type 1 depositors will withdraw because the 75 type 2 depositors prefer the 1.813 available at  $T = 2$  to the 1.28 available at  $T = 1$ .

When assets are illiquid and risk-averse investors do not know when they will need to liquidate, the bank can create a more liquid asset that allows investors to share the risk of liquidation losses. The bank can give a fraction  $t$  of investors  $r_1$  at date 1 and a fraction  $1 - t$  of investors  $r_2 = \frac{[1 - tr_1]R}{1 - t}$  at date 2, because if a fraction  $t$  of the depositors get  $r_1$  in period  $T = 1$ , this will leave a fraction  $[1 - tr_1]$  of the assets unliquidated and in place until date 2. Each of the remaining fraction  $(1 - t)$  of depositors can receive  $r_2 = \frac{[1 - tc_1]R}{1 - t}$  in period 2. Note that for the illiquid asset,  $r_1 = 1$  and  $r_2 = R$ .

# The Optimal Amount of Liquidity

This section derives the optimal amount of liquidity for the bank to create. The optimal levels of  $r_1$  and  $r_2$  will maximize the ex ante expected utility of each investor at date 0. The optimum is to provide a choice between  $r_1 = 1.28$  at date 1 or  $r_2 = 1.813$  at date 2. This derivation is not essential to understanding the balance of the article. The optimal amount of liquidity to create is the amount that maximizes each investor's ex ante expected utility, choosing  $c_1 = r_1$ ,  $c_2 = r_2$  to maximize  $tU(r_1) + (1 - t)U(r_2)$ , subject to  $r_2 \leq \frac{[1 - tr_1]R}{1 - t}$ ,  $r_1 \geq 0$ ,  $r_2 \geq 0$ . For an interior optimum, the optimal values satisfy  $U'(r_1) = RU'(r_2)$ , so the marginal utility is in line with the marginal cost of liquidity, and  $r_2 = \frac{[1 - tr_1]R}{1 - t}$ , because no liquidity is wasted. For the case used in the example where  $U(c) = 1 - \frac{1}{c}$ , marginal utility is  $U'(c) = \frac{1}{c^2}$  and the condition is  $\frac{r_2^2}{r_1^2} = R$ , or  $\frac{r_2}{r_1} = \sqrt{R}$  because both  $r_1$  and  $r_2$  are positive. From  $r_2 = \frac{[1 - tr_1]R}{1 - t}$ , this becomes  $r_1 = \frac{\sqrt{R}}{1 - t + t\sqrt{R}}$ . For the example of  $R = 2$ ,  $t = \frac{1}{4}$ , this optimum is  $r_1 = 1.28$ .

# An Extension

When long-term assets are even more illiquid, there is an additional way that banks can help investors share the risk of liquidation losses. Suppose that the illiquid asset is as before, except that it returns  $1 - \tau$  (instead of 1) if liquidated at date 1, and  $\tau > 0$ . In this case a short-term liquid asset (equivalent to storage) that returns one unit per unit invested in the previous period offers a higher one-period return than investing in a long-term asset and liquidating it at date 1. However, because a bank knows that a fraction  $t$  of depositors needs to withdraw at  $T = 1$ , it can obtain the same set of payoffs as before:

$r_2 = \frac{[1 - tr_1]R}{1 - t}$ , by investing in enough short-term assets to finance all of the date 1 withdrawals. If the bank pays  $r_1$  at date 1 or  $r_2$  at date 2, it puts a fraction  $(tr_1)$  of assets into short-term assets and  $1 - (tr_1)$  into long-term illiquid assets and achieves the same payoffs as in the previous case. This holding of an inventory of liquid assets is referred to as the asset management of liquidity.

Investors holding the assets directly cannot perform as well as the bank. One possibility is for the bank to offer the choice between  $r_1 = 1$  or  $r_2 = R$ . If an individual were to directly hold assets that allowed 1 to be obtained at date 1 (to consume 1 if of type 1), he would need to put 100 percent into short-term liquid assets and would consume only 1 if of type 2, by reinvesting in the short-term asset at date 1. The individual cannot achieve  $r_1 > 1$  at all. To obtain  $r_2 = R$ , he must hold only illiquid long-term assets, implying that the largest  $r_1$  available is  $r_1 = 1 - \tau$ . When long-term assets are more illiquid ( $\tau$  is positive), then banks not only allow the risk of liquidating an illiquid asset to be shared, but also reduce the opportunity cost of creating a liquid date 1 payoff,  $r_1$ . This advantage of banks is present in the models of Bryant (1980), Jacklin (1987), Haubrich and King (1990), and Cooper and Ross (1998). An investor's opportunity set without the bank is worse than the bank's, because an investor needs all or none of his liquidity, while the bank knows that a fraction  $t$  of its depositors will need liquidity at date 1. To be precise, the individual investor without using the bank can put a fraction  $\alpha$  in short-term assets and the remainder in long-term assets to obtain a choice between  $r_1 = \alpha + (1 - \alpha)(1 - \tau)$  and  $r_2 = \alpha + (1 - \alpha)R$ . Substituting out  $\alpha$ , the individual's tradeoff between  $r_1$  and  $r_2$  is given by  $r_2 = 1 + (1 - r_1)\frac{(R - 1)}{\tau}$ . When the probability of being of type 1,  $t$  is not equal to 1 or zero, the individual's opportunity set is dominated by the bank's opportunity set of  $r_2 = \frac{[1 - tr_1]R}{1 - t}$ . For example when  $t = \frac{1}{4}$ ,  $\tau = \frac{1}{2}$ , and  $R = 2$ , then without the bank the investor can get  $r_2 = 1 - 2(r_1 - 1)$ , so  $r_1 = 0.9$  implies  $r_2 = 1.2$ . However, if the bank sets  $r_1 = 0.9$ , it can offer  $r_2 = \frac{[1 - 0.25(0.9)]^2}{0.75} = 2.07$ . This provides an extra reason for banks to create liquidity when assets are illiquid. The ability of banks to offer a given amount of liquidity and the problems that this can possibly cause are identical to the original model with  $\tau = 0$ . As a result, for the rest of this article, I return to the original Diamond and Dybvig (1983) model with  $\tau = 0$ .

# Bank Runs

Banks can create liquidity by offering deposits that are more liquid than their assets. If only the proper depositors withdraw, it works very well. However, creating this liquidity subjects the bank to bank runs. The bank may have liquidity problems. If a depositor's need for liquidity (the depositor's type) were a verifiable characteristic that could be written into contracts, the contract

could specify that a type 1 be given  $r_1$  at date 1, and a type 2 be given  $r_2$  at date 2. However, on date 1 when each depositor learns his type, this is unverifiable private information. If a bank offers liquid deposits that offer each depositor the opportunity to withdraw  $r_1$  on date 1 or  $r_2$  on date 2, the depositors may select the appropriate withdrawal date for their type. That is, the type 1s take  $r_1$  and the type 2s take  $r_2$ , and if all are expected to do this, each will choose the option that is best for him. It turns out, however, that there are multiple equilibria. That is, there is more than one self-fulfilling prophecy about who withdraws at date 1. There is a good equilibrium in which only the type 1 depositors withdraw and a bad equilibrium (a bank run) in which all withdraw at date 1 because they all expect each other to do the same.

To see why there are multiple equilibria, consider how much is left to pay depositors who wait until date 2 to withdraw if a fraction  $f$  of initial depositors withdraw at date 1. Because each asset is worth 1 at date 1, a fraction  $fr_{1}$  of the total assets must be liquidated at date 1. This leaves  $r_{2}(f) = \frac{\{1 - [f \times r_{1}]\}R}{1 - f}$  for each of the fraction  $1 - f$  who wait until date 2. In any equilibrium, at least a fraction  $t$  of deposits will be withdrawn, or  $f \geq t$ , because type 1s always withdraw at date 1. The type 2 depositors will choose to withdraw at date 1 as well if  $r_{2}(f) < r_{1}$ . In the example with 100 depositors,  $t = \frac{1}{4}$ , or 25 are of type 1. If just the type 1 depositors withdraw, or  $f = t = \frac{1}{4}$ , and  $r_{1} = 1.28$ , then  $r_{2} = 1.813 > r_{1}$ , and the type 2 depositors will choose to wait until date 2 to withdraw. Depositors must choose simultaneously, before they know the actions of others. Each needs a forecast of  $f$ , denoted by  $\hat{f}$ . Given a borrower's forecast, he chooses whether to withdraw at date 1. A Nash equilibrium is a self-fulfilling prophecy of  $\hat{f} = f$ , and in the good equilibrium,  $f = \hat{f} = t = \frac{1}{4}$ .

However, suppose all depositors forecast that everybody else will withdraw (i.e., 99 depositors, so  $\hat{f} \geq 0.99$ ). Then the bank will fail before  $T = 2$ . If 79 depositors or more are expected to withdraw, then the bank will be worthless at date 2: the bank can be liquidated for at most 100 at  $T = 1$ , and if 79 depositors were to each receive 1.28, at  $T = 1$ , the bank would not have sufficient assets, because  $79 \times 1.28 = 101.12 > 100$ . Note that a prophecy of  $\hat{f} = 0.99$  is not self-fulfilling, because if it is believed by all, then every depositor will withdraw. The self-fulfilling prophecy of a bank run is  $f = \hat{f} = 1$ , where all rush to withdraw. Providing liquidity subjects the bank to runs. If a run is feared, it becomes a self-fulfilling prophecy.

The first paragraph of Diamond and Dybvig (1983) follows: "Bank runs are a common feature of the extreme crises that have played a prominent role in monetary history. During a bank run, depositors rush to withdraw their deposits because they expect the bank to fail. In fact, the sudden withdrawals can force the bank to liquidate many of its assets at a loss and to fail. In a panic with many bank failures, there is a disruption of the monetary system and a reduction in production."

Bank runs disrupt production because they force banks to call in loans early. This forces the borrowers to disrupt their production. The model does not have an explicit model of loans from the banks; it simply models the bank loans as illiquid. See Diamond and Rajan (2001) for a description of why bank loans are illiquid.

These two possible equilibrium beliefs (self-fulfilling forecasts of  $f$ ) are locally stable. That is, if  $t = \frac{1}{4}$ , a type 2 depositor will not run given that a forecast  $\hat{f}$  is just above  $\frac{1}{4}$ , for example  $\hat{f} = 0.27$ . Similarly, a type 2 depositor would run given a forecast  $\hat{f}$  just below 1, for example,  $\hat{f} = 0.97$ . The tipping point for a run is a forecast implying that  $r_1 \geq r_2$  or  $r_1 > r_2(\hat{f}) = \frac{\{1 - [\hat{f} \times r_1]\}R}{1 - \hat{f}}$ , which in the example is  $\hat{f} > \frac{(R - r_1)}{r_1(R - 1)} = \frac{2 - 1.28}{1.28(2 - 1)} = 0.5625$ .

Because moving away from a good equilibrium requires a large change in beliefs, the initiation of a run when none was expected requires something that all (or nearly all) depositors see (and believe that others see). For example, a newspaper story that the bank is performing poorly could cause a run even if many knew that it was inaccurate, because those who know it is inaccurate can believe that the others will decide to withdraw based on the story. Even sunspots could cause runs if everyone believed that they did.

Using diversified funding sources can help insulate a bank from runs if diversified means that there is no commonly observed information source that is seen by a large number of the diverse depositors. An older example is also useful. It would make sense for a bank to have a large lobby (or fast bank tellers), because if a line to withdraw extended out to the street, passersby may conclude that a run is in progress. Conversely, once a run is in progress, it will be important to be able to convince all depositors that it will stop and to ensure all the depositors know that all others have been so convinced.

When all depositors do not observe the same news or other information sources, then the depositors will not have a way to tell if others are choosing to panic and run (they will have "incomplete common knowledge"). There are some very interesting analyses of runs in this context (see Morris and Shin 2003 and Goldstein and Pauzner 2005). In addition, there are some important, but somewhat difficult, analyses of bank policies when there is an unavoidable positive probability of a run (see Peck and Shell 2003, Ennis 2003, and Ennis and Keister 2006).

# Suspension of Convertibility

In this simple model, a bank can suspend convertibility of deposits to cash in order to stop a run. That is, suppose the bank does not allow more than a fraction  $t$  of deposits to be withdrawn (does not allow  $f > t$ , or in the example, allows only 25 to withdraw). Then no matter how many depositors attempt to withdraw at date 1, a type 2 will get  $r_2(t) = \frac{\{1 - [t \times r_1]\}R}{1 - t} > r_1$  at date 2. In

the example, the type 2 would get 1.813 at date 2. As a result, the depositors would never panic and a run would never start. In this case, the suspension is a threat that need not actually be carried out. The problem lies in convincing potential participants in a run that convertibility will be suspended at the proper time. In the days before deposit insurance, banks regularly suspended convertibility to stop runs (see Friedman and Schwartz 1963). In a more general model, in which the fraction of type 1 depositors fluctuates sufficiently (and the realized fraction cannot be written into contracts), suspension cannot be used only as a threat. Some suspension would actually occur and would be unpopular. If suspension occurred regularly, depositors would desire another way of stopping runs caused by panics. In practice, government-provided deposit insurance has been instituted following many financial crises. Its effects are described in the next section.

# Deposit Insurance

An alternative way to stop and prevent runs is deposit insurance, a promise to pay the amount promised by the bank no matter how many depositors withdraw, without suspension of convertibility. In the example, this is a promise of 1.28 to those who withdraw at  $T = 1$  and 1.813 to those who withdraw at  $T = 2$ . How can this be accomplished if everyone withdraws? Unless there are outside resources that we did not account for in the model, the only way is to take some resources away from those who run and withdraw. Governments have taxation authority, which is the ability to take resources without prior contracts. This gives government deposit insurance an advantage over private deposit insurers who might themselves fail in a run, or who would need to hold sufficient liquid assets to prevent the financial system from creating liquidity.

In our example with  $t = \frac{1}{4}$ , where exactly 25 people ought to withdraw, suspension of convertibility works as well. However, if there is aggregate uncertainty about  $t$ , then suspension may prevent some type 1 depositors from withdrawing. In this case, suspension is costly. Deposit insurance can stop runs and avoid suspension of convertibility.

A bank with deposit insurance can credibly promise not to have runs. Government deposit insurance works because the government has taxation authority and, unlike most insurance companies, can provide a guarantee against large losses that are usually off the equilibrium path without holding reserves to back up their promise. In addition, a deposit insurance law commits the government to insure banks, which is an advantage over discretionary policies if self-fulfilling prophecies of runs need to be eliminated. Suspension of convertibility is usually a discretionary policy (see Gorton 1985). Another discretionary policy to prevent banks from liquidating illiquid assets and avoiding self-fulfilling runs is central-bank lending, financed by implicit taxation or money creation authority. The extent of the Great Depression in the United

States in the 1930s has been blamed on the lack of Federal Reserve discount window lending by Friedman and Schwartz (1963). Deposit insurance will solve this problem of discretionary lending, but its guaranteed bailout of depositors may cause incentive problems if bank regulation is poorly structured (see Barth, Caprio, and Levine 2006).

# 3. CONCLUSION

Banks create demand deposits to provide investors with liquid assets. When there is a demand for more liquid assets from investors or entrepreneurs, demand deposit contracts serve as a means for quick access to liquidity. Demand deposits work very well when investors forecast that banks will survive, but can cause severe damage if investors lose faith in banks. There is scope for banks to write more refined contracts, such as deposits with suspension of convertibility of deposits to cash. In addition, there may be a role for government policies to eliminate self-fulfilling runs on banks. The government plays a role because its taxation authority is not available to private firms.

The reasons why bank assets are illiquid and other reasons that banks help to create liquidity are explored in Diamond (1997) and Diamond and Rajan (2001, 2005). Diamond (2005) integrates these approaches with the role of banks in monitoring borrowers which is explored in Diamond (1984, 1996).

# REFERENCES

Barth, James R., Gerard Caprio, and Ross Levine. 2006. Rethinking Bank Regulation: Till Angels Govern. New York: Cambridge University Press.  
Bryant, John. 1980. "A Model of Reserves, Bank Runs, and Deposit Insurance." Journal of Banking and Finance 4 (4): 335-44.  
Cooper, Russell, and T. W. Ross. 1998. "Bank Runs: Liquidity Costs and Investment Decisions." Journal of Monetary Economics 41 (February): 27-38.  
Diamond, Douglas W. 1984. "Financial Intermediation and Delegated Monitoring." Review of Economic Studies 51 (July): 393-414.  
Diamond, Douglas W. 1996. "Financial Intermediation as Delegated Monitoring: A Simple Example." Federal Reserve Bank of Richmond Economic Quarterly 82 (3): 51-66.  
Diamond, Douglas W. 1997. "Liquidity Banks and Markets." Journal of Political Economy 105 (5): 928-56.

Diamond, Douglas W. 2005. "Banks, Liquidity and Legal Protection." Paper presented at the 2005 Princeton Lectures in Finance, Princeton University, Princeton, NJ, June 1-3, 2005.  
Diamond, Douglas W., and Philip H. Dybvig. 1983. "Bank Runs, Deposit Insurance, and Liquidity." Journal of Political Economy 91 (5): 401-19.  
Diamond, Douglas W., and Raghuram Rajan. 2001. "Liquidity Risk, Liquidity Creation and Financial Fragility: A Theory of Banking." Journal of Political Economy 109 (2): 287-327.  
Diamond, Douglas W., and Raghuram Rajan. 2005. "Liquidity Shortages and Banking Crises." Journal of Finance 60 (2): 615-47.  
Ennis, Huberto M. 2003. "Economic Fundamentals and Bank Runs." Federal Reserve Bank of Richmond Economic Quarterly 89 (2): 55-71.  
Ennis, Huberto M., and Todd Keister. 2006. "Bank Runs and Investment Decisions Revisited." Journal of Monetary Economics 53 (2): 217-32.  
Friedman, Milton, and Anna Schwartz. 1963. A Monetary History of the United States 1867-1960. Princeton, NJ: Princeton University Press.  
Goldstein, Itay, and Ady Pauzner. 2005. "Demand Deposit Contracts and the Probability of Bank Runs." Journal of Finance 60 (3): 1,293-1,328.  
Gorton, Gary. 1985. "Bank Suspension of Convertibility." Journal of Monetary Economics 15 (2): 177-93.  
Haubrich, Joseph G., and Robert G. King. 1990. "Banking and Insurance." Journal of Monetary Economics 26 (3): 361-86.  
Holmström, B., and J. Tirole. 1998. "Private and Public Supply of Liquidity." Journal of Political Economy 106 (1): 1-40.  
Jacklin, C. J. 1987. "Demand Deposits, Trading Restrictions, and Risk Sharing." In *Contractual Arrangements for Intertemporal Trade*, eds. E. C. Prescott and N. Wallace. Minneapolis, MN: University of Minnesota Press: 26-47.  
Morris, Stephen, and Hyun Song Shin. 2003. "Global Games: Theory and Applications." In Advances in Economics and Econometrics: Theory and Applications, Eighth World Congress, eds. M. Dewatripont, L. Hansen, and S. Turnovsky. Cambridge, UK: Cambridge University Press.  
Peck, James, and Karl Shell. 2003. "Equilibrium Bank Runs." Journal of Political Economy: 111 (1): 103-23.