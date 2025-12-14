---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: 9.1 CVA AND DVA
linter-yaml-title-alias: 9.1 CVA AND DVA
---

# 9.1 CVA AND DVA

Most of this book is concerned with determining the no-default value of derivatives, that is, the value assuming that neither of the two sides will default. CVA and DVA are adjustments to the no-default value reflecting the possibility of a default by one of the two sides. Here we provide an overview of them. More details on their calculation are in Chapter 24.

Suppose that a bank and a counterparty have entered into a portfolio of derivative transactions that are cleared bilaterally. The master agreement between the bank and the counterparty will almost certainly state that netting applies. This means that all outstanding derivatives between the two sides are considered as a single derivative in the event of a default. When one party declares bankruptcy, fails to post collateral as required, or fails to perform as promised in some other way, the other party will declare an event of default. This leads to an early termination of the outstanding derivatives between the bank and the counterparty a few days later and a settlement amount is calculated. The settlement amount reflects the value of the derivatives and is adjusted to allow for the fact that the nondefaulting party will incur costs equal to half the applicable bid-ask spreads when replacing the transactions in the portfolio.

Suppose that it is the bank's counterparty that defaults and neither side posts collateral. (Later we explain the impact of collateral.) If the early termination happens when the outstanding derivatives portfolio has a positive value to the bank and a negative value to the counterparty, the bank will be an unsecured creditor for the settlement amount and is likely to incur a loss because it will fail to receive it in full. In the opposite situation, where the portfolio has a negative value to the bank and a positive value to the counterparty, the settlement amount is owed by the bank to the counterparty (or to the counterparty's liquidators) and will be paid in full so that there is no loss.

The credit valuation adjustment (CVA) is the bank's estimate of the present value of the expected cost to the bank of a counterparty default. Suppose that the life of the longest outstanding derivatives transaction between the bank and the counterparty is  $T$  years. To calculate CVA, the bank divides the next  $T$  years into a number of intervals. For each interval, it calculates:

1. The probability of an early termination during the interval arising from a counterparty default; and
2. The present value of the expected loss from the derivatives portfolio if there is an early termination at the midpoint of the interval.

Suppose that there are  $N$  intervals,  $q_{i}$  is the probability of default by the counterparty during the  $i$ th interval, and  $\nu_{i}$  is the present value of the expected loss if there is a default at the midpoint of the  $i$ th interval. CVA is calculated as:

$$
\mathrm {C V A} = \sum_ {i = 1} ^ {N} q _ {i} v _ {i} \tag {9.1}
$$

This formula is deceptively simple but the procedure for implementing it is quite complicated and computationally very time-consuming. It will be explained in Chapter 24.

Define  $f_{\mathrm{nd}}$  as the no-default value of the derivatives portfolio to the bank. As explained earlier, this is the value of the portfolio assuming that neither side will default. When the possibility of a counterparty default is taken into account, the value of the portfolio to the bank becomes

$$ f _ {\mathrm {n d}} - \mathrm {C V A}
$$

But this is not the end of the story. The bank itself might default. This is liable to lead to a loss to the counterparty and an equal and opposite gain to the bank. The debit (or debt) valuation adjustment (DVA) is the present value of the expected gain to the bank from the possibility that it might itself default. It is calculated similarly to CVA:

$$
\mathrm {D V A} = \sum_ {i = 1} ^ {N} q _ {i} ^ {*} v _ {i} ^ {*} \tag {9.2}
$$ where  $q_{i}^{*}$  is the probability of a default by the bank during the  $i$ th interval and  $\nu_{i}^{*}$  is the present value of the bank's gain (and the counterparty's loss) if the bank defaults at the midpoint of the interval. Taking both CVA and DVA into account, the value of the portfolio to the bank is


$$ f _ {\mathrm {n d}} - \mathrm {C V A} + \mathrm {D V A}
$$

The idea that a bank will gain from its own default seems strange to many people. How can there be a gain from a default? One way of thinking about this is as follows. Derivatives are what are referred to as "zero-sum games." The gain to one side always equals the loss to the other side. If the bank's counterparty is worse off because of the possibility that the bank will default on the outstanding derivatives, the bank (or the bank's creditors) must be better off. The reason why this is so is that, in circumstances where it defaults, a bank avoids having to honor its contracts when the no-default value of those contracts to the bank is negative.

Without DVA, it is liable to be difficult for derivatives transactions to be agreed to. Consider two market participants, X and Y, who are negotiating a bilaterally cleared interest rate swap where X will be paying a fixed rate of interest and receiving LIBOR with no collateral being posted. For the purposes of our example we assume that there are no other trades between these two parties. The two sides agree that, if there is no default risk, the fixed rate should be  $2.2\%$ . We suppose that, when X takes Y's default risk into account, it determines it should pay  $2.1\%$  rather than  $2.2\%$ . (The  $0.1\%$  per annum reduction is compensation to X for possibility that Y might default.) But when Y takes X's default risk into account, it determines that it should receive  $2.35\%$  rather than  $2.2\%$ . (The extra  $0.15\%$  is compensation to Y for the possibility that X might default.) It is easy to see that the two sides are unlikely do a deal if each side considers only the possibility of the other side defaulting. But if each side calculates a DVA (recognizing that it might itself default), the two sides will have a better chance of doing a deal because they will value the expected cash flows from the swap similarly.

DVA has a counterintuitive effect. As the bank's creditworthiness declines,  $q_{i}^{*}$  in equation (9.2) increases and DVA increases. This makes the derivatives portfolio more valuable to the bank. As the bank's creditworthiness improves,  $q_{i}^{*}$  decreases and DVA decreases so that the portfolio is less valuable. Why should the bank gain from a worsening of its credit quality? The reason is that as the bank becomes more likely to default it is more likely that it will not have to honor its derivatives obligations.

# Collateral

When the agreement between the two parties requires collateral to be posted, the situation is more complicated. A credit support annex (CSA) to the master agreement specifies how the required amount of collateral is calculated and what form the collateral can take. Interest is normally paid on cash collateral at close to the fed funds rate or similar overnight rate. When the collateral takes the form of securities, a haircut is usually applied to the market value of the securities.

If a bank's counterparty defaults, the bank is entitled to keep any collateral that has been posted by the counterparty if it is less than any settlement amount it is owed. Similarly, if the bank defaults, the counterparty can use any collateral posted by the bank to cover any settlement amount it is owed. Any collateral in excess of the settlement amount must be returned.

Equations (9.1) and (9.2) are still correct when collateral is posted, but the calculation of  $\nu_{i}$  and  $\nu_{i}^{*}$  is more complicated. The calculation must take into account the collateral that would be provided by the bank to the counterparty or by the counterparty to the bank at the time of an early termination. Usually the calculation involves an assumption that the defaulting party will stop posting collateral, and will stop returning excess collateral, several days before the early termination. The number of days assumed here is known as the cure period or margin period of risk. For example, if the cure period is 10 days, the collateral at the time of the early termination would be assumed to be that specified in the CSA 10 days earlier.

# 9.2 FVA AND MVA

The funding valuation adjustment (FVA) and margin valuation adjustment (MVA) are adjustments to the value of a derivatives portfolio for the cost of funding derivative positions. To illustrate how they might arise, suppose that a derivatives dealer, Bank A, is in the situation illustrated in Figure 9.1. It has entered into a five-year interest rate swap with a corporate end user and has hedged its risk by entering into an exactly offsetting swap with another dealer, Bank B. It appears that Bank A has locked in a profit of  $0.1\%$  per year because it receives  $3\%$  from Bank B and pays  $2.9\%$  to the end user. We suppose that the transaction between Bank A and Bank B is cleared through a CCP with both sides posting initial margin and variation margin. (As explained in earlier chapters, this is required under post-crisis regulations for a standard swap such as this.)

If the transaction with the end user in Figure 9.1 were cleared through the same CCP as the transaction between the banks, Bank A's situation is straightforward. The CCP will net off the two transactions so that they do not lead to any incremental initial margin requirement for Bank A. Indeed, because the transactions always give a net positive value to the bank, margin requirements should be slightly less than they would be without the two transactions.

But let us assume that the transaction between Bank A and the end user is cleared bilaterally with no collateral being required while, as already mentioned, the transaction between Bank A and Bank B is cleared through a CCP. The transactions do then have some funding implications. First, the swap with Bank B is liable to lead the CCP requiring additional initial margin from Bank A during the life of the transaction. If we assume that the cost of funding initial margin is greater than the interest paid by the CCP on initial margin there is a cost to Bank A in funding the incremental initial margin attributable to the transaction. This is referred to as a margin valuation adjustment (MVA) and reduces the value to the bank of its transaction with the end user.[2]

The CCP's variation margin can also lead to funding requirements. Suppose that the transaction with Bank B has a negative value to Bank A so that the transaction with the end user has a positive value to Bank A. Bank A will have funds tied up in the variation margin it has posted with the CCP. It will not receive any collateral to offset this initial margin from the end user. This gives rise to a funding need because Bank A has to increase its funding from external sources. In the opposite situation, where the transaction with Bank B has a positive value and the transaction with the end user has a negative value, it receives variation margin from the CCP and does not have to provide any collateral or margin to the end user. This gives rise to a source of funding.

We continue to assume that the cost of funding margin is greater than the interest paid on it. There is a cost in the first case just considered (Bank A has to increase its funding from external sources) and a benefit in the second case (Bank A can reduce its funding from external sources). FVA is an adjustment to the value of derivatives that reflects these costs and benefits. The present value of the expected future funding cost is referred to as the funding cost adjustment (FCA) and the present value of the expected future funding benefit is referred to as the funding benefit adjustment (FBA). The funding value adjustment, FVA, reduces the value of derivatives by the excess of FCA over FBA. Whether there is a positive or negative adjustment to the value of the swaps in Figure 9.1 depends on whether the swap with Bank B is more likely to have a positive or negative value as time passes. This depends on the shape of the term structure of interest rates, as discussed in Section 7.7.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/a352edd032093b967e996d8b187b0da8f67ca3ed82568462f5a0e45a479a654b.jpg)

Figure 9.1 Swaps entered into by Bank A. The transaction with Bank B is cleared through a CCP. The transaction with the end user is cleared bilaterally.

The situation in Figure 9.1 is not the only way FVA and MVA can arise. An FVA potentially arises whenever a bank enters into an uncollateralized derivative transaction with a counterparty. When the uncollateralized derivative has a positive value, there is a funding cost. When it has a negative value, there is a funding benefit. For example, if the bank buys an uncollateralized option from a counterparty, the option has a positive value and there is a funding cost equal to the excess of the assumed cost of funding over the risk-free rate assumed in the pricing of the option. If the bank sells an uncollateralized option to the counterparty, the option has a negative value and there is a funding benefit. MVA can arise whenever a transaction gives rise to incremental initial margin requirements. As explained in earlier chapters, rules are being implemented requiring initial margin for bilaterally cleared transactions between financial institutions as well as for those cleared through CCPs.

To calculate the MVA or FVA it is necessary to answer the question: "What is the cost of funding the margin in a situation such as Figure 9.1?" This is where there is often a disagreement between theory and practice. Many banks argue that the cost of funding margin is equal to their average debt funding cost. Suppose the margin is provided in U.S. dollars. If the interest received by a bank on U.S. dollar margin is the federal funds rate minus 20 basis points and a bank's average funding cost is the federal funds rate plus 100 basis points, FVA and MVA would be calculated by these banks on the assumption of a funding cost of 120 basis points per year.

Financial economics argues that the way an investment is funded should not affect the required return on the investment. The required return should reflect the riskiness of the investment. An investment in initial margin or variation margin usually has very low risk. As such, the bank should be comfortable with a return that is close to the risk-free rate. If the return requirement on margin in our example is assumed to be the fed funds rate plus 10 basis points and the interest paid on margin is the federal funds rate minus 20 basis points, then the funding cost (or benefit) is 30 basis points, not the 120 basis points calculated earlier.

To explain why the average funding cost of the fed funds rate plus 100 basis points should not be used, Hull and White (2012) use two arguments. The first argument is that there is a gain to the bank from the 100 basis points credit spread because it might default on the debt it issues. This is similar to the DVA discussed earlier and is referred to as DVA2 by Hull and White. Because of this benefit, the bank does not have to pass the funding cost on to the derivatives desk.

For the second argument, suppose that the risk-free rate is  $2\%$  and the bank's funding cost is  $3.5\%$ . If a project comes along that is risk-free and provides a return of  $3\%$ , should the bank undertake it? The answer is that the project should be undertaken. The appropriate discount rate for the project's cash flows is  $2\%$  and the project has a positive present value when this discount rate is used. It is not correct to argue that the bank is funding itself at  $3.5\%$  and should therefore only undertake projects earning more than  $3.5\%$ .

Consider what happens as the bank enters into projects that are risk-free (or nearly risk-free). Its funding costs should come down in such a way that the incremental costs of funding a risk-free project should be  $2\%$ , not  $3.5\%$ . To take an extreme example, suppose that the bank we are considering were to double in size by undertaking entirely risk-free projects. The bank's funding cost should change to  $2.75\%$  (an average of  $3.5\%$  for the old projects and  $2\%$  for the new projects). If the average funding cost of  $3.5\%$  is used as the required return for all projects, low-risk projects will tend to seem unattractive and high-risk projects will tend to seem attractive.

Andersen et al. (2016) also question the use of average funding costs in calculating FVA. They consider the situation where debtholders do not anticipate the investment in margin that will be made by the bank and are pleasantly surprised because it leads to the bank becoming less risky.[10] There is then a transfer of wealth from the shareholders to the debtholders.

The XVA debate has an interesting analogy. In a first corporate finance course, students learn how to calculate a weighted average cost of capital (WACC) for a (nonfinancial) corporation and how the discount rate used for the expected cash flows of a capital investment project should be calculated. They learn that the discount rate should depend on the risk of the project, not how it is financed. For projects that are more risky than average, the discount rate should be higher than the WACC. For projects that are less risky than average, the discount rate should be lower than the WACC.

But many companies use a single discount rate for all projects. This tends to make risky projects more attractive than they should be and safe projects less attractive than they should be. With all else equal, the use of a single discount rate leads to companies becoming more risky over time.

The XVA analogy is that many of a bank's investments that we are concerned with when considering FVA and MVA are lower-than-average-risk investments. An investment in initial margin or variation margin is usually low risk compared with other things the bank does. As such, its marginal effect is to lower the average cost of the bank's funding.

The difference between the views of some financial engineers and financial economists on FVA and MVA is that financial economists work with marginal funding costs while the financial engineers work with average costs. The essence of the debate can be summarized by the following imaginary dialogue:

Financial Economist: The cost you should use for funding a project should reflect the risk of the project. By using average funding costs you are assuming that all the bank's projects are equally risky.

Financial Engineer: But tying up funds in initial margin or a low-risk hedged derivatives position prevents me from using the funds elsewhere. On average the bank gets a much higher return than it does on things like initial margin. There is a cost to low-risk, low-return projects.

Financial Economist: You talk as though funds for your business are in short supply. If you have good projects, whether they are low risk or high risk, the market will provide funding for you.

Financial Engineer: I am not sure that is how things work in practice.

# 9.3 KVA

KVA, capital valuation adjustment, is a charge to a derivatives transaction for the incremental capital requirements that the transaction gives rise to. Suppose that as a result of entering into a particular transaction a bank calculates that regulations require it to hold an extra 1 million of equity capital throughout the life of the transaction.[11] What is the cost of this?

Again there is a divergence between between financial economics theory and the opinions of many practitioners. Many practitioners would argue that if equity shareholders require a return of  $15\%$  per annum and a bank invests in a low-risk project that will require additional equity capital, the return on the additional capital should be at least  $15\%$ . (This is similar to nonfinancial companies using WACC as a hurdle rate for all projects, as discussed earlier.) In the derivatives context this means that there should be a price adjustment, a KVA, to ensure that the return on the incremental equity capital is  $15\%$ . Financial economists argue that how a company is financed should not affect how it evaluates projects (except possibly for tax effects). As a bank uses more equity to finance itself, it becomes less risky and the providers of both debt and equity capital require a lower return. This argument is over 50 years old in the finance literature and so its theoretical validity has stood the test of time. $^{12}$  Many practitioners disagree with the theory. As in the case of MVA and FVA the difference between the two sides is whether average or marginal capital costs should be used. We can imagine the following dialogue:

Financial Economist: You do not need to make a KVA. As long as derivatives book provides a return reflecting its risk your investors will be happy.

Practitioner: Equity capital requirements for derivatives have gone up since the crisis. My equity investors require a  $15\%$  per annum return. If I enter into a derivatives transaction that requires additional capital under the new regulations, I need to make sure that the return on that capital is at least  $15\%$ .

Financial Economist: But as more of the bank is financed by equity capital it becomes less risky and the return required by equity investors goes down. This is true even if the average risk of the whole bank does not change. So the marginal return required on new equity capital is low.

Practitioner: I am not sure that is how things work in practice.

# 9.4 CALCULATION ISSUES

All of the XVAs are computationally time-consuming to calculate. Monte Carlo simulations are necessary to determine expected credit exposures, expected funding costs, and expected capital requirements at future times. CVA is often actively managed by banks. They sometimes buy protection against their counterparties defaulting using credit default swaps (see Section 7.12 and Chapter 25) or similar instruments. This reduces their expected losses from defaults.

As discussed in Section 9.1, CVA and DVA must be calculated on the whole portfolio of derivatives that a bank has with a counterparty. It cannot be calculated on a transaction-by-transaction basis. This is because of the impact of netting. A new bilaterally cleared transaction with a counterparty will increase or decrease CVA and DVA depending on what happens when it is netted with other transactions that have been entered into with the counterparty. If it tends to increase credit exposure for the bank in the future, the incremental CVA will be positive; if it tends to decrease credit exposure in the future, the incremental CVA will decrease. Similarly for DVA.

The incremental FVA can be calculated on a transaction-by-transaction basis. This is because the net funding required for a portfolio of transactions at any future time is the sum of that for the individual transactions. $^{13}$  MVA for transactions cleared through a

CCP has to be calculated on a portfolio basis. In the case of the example in Figure 9.1, it is the impact of a new transaction on the initial margin required by the CCP for portfolio that Bank A is clearing through the CCP that determines the incremental initial margin requirements and therefore MVA. KVA is even more complicated. The rules used by regulators are such that a bank must in theory sometimes model the bank's whole portfolio when calculating incremental capital requirements.

# Application of Machine Learning

Because the calculation of XVAs is computationally quite time-consuming, some banks are using machine learning to get faster results. They are particularly interested in being able to quickly answer queries about the incremental effect of a proposed new transaction on the XVAs. A neural network is a tool that can be used to do this. It is a flexible algorithm that can learn any continuous relationship between the value of a target variable (the output) and the values of features (the inputs) when a huge volume of data is available. Once the network has been constructed, calculating the target from the features is very fast.

To create a neural network to calculate incremental XVAs, an analyst randomly creates many different data sets that are inputs to the calculation. (The data set will include features describing the proposed new transaction and features describing relevant aspects of existing trades with the counterparty.) Monte Carlo simulation is used to calculate the XVAs for each data set and an algorithm is used to find a neural network that replicates the Monte Carlo calculations as accurately as possible.

# SUMMARY

Banks and other derivatives market participants have for many years been concerned about counterparty credit risk. Two adjustments are the credit valuation adjustment (CVA) and debt or debit valuation adjustment (DVA). CVA is an adjustment by a bank for the possibility that its counterparty will default and it reduces the value of the derivatives portfolio it has with the counterparty. DVA is an adjustment for the possibility that the bank will default and it increases the value of the derivatives portfolio. There is no real argument about whether these adjustments should be made, but many people are less comfortable with DVA than CVA. Why should a bank benefit from the possibility that it will itself default? As the probability of a default increases, the benefit increases.

The funding valuation adjustment (FVA) is an adjustment to the value of a derivatives position arising from the funding required (or the funding generated) by a derivatives transaction. The margin valuation adjustment (MVA) quantifies the cost of funding initial margin. The capital valuation adjustment (KVA) is a valuation adjustment reflecting the impact of a derivatives position on capital requirements. Finance theory argues that the way a project is funded should not influence its valuation. In particular, the current average debt and equity costs should not be assumed to be the same as the incremental effect of a new transaction on funding costs. In spite of this, many banks do calculate MVA, FVA, and KVA based on these average costs.

# FURTHER READING

Andersen, L. B. G., D. Duffie, and Y. Song. "Funding Value Adjustments," Working Paper, SSRN 2746010.

Gregory, J. The XVA Challenge: Counterparty Credit Risk, Funding, Collateral, and Capital. Chichester: Wiley, 2015.

Hull, J. C. Machine Learning in Business: An Introduction to the World of Data Science, 2nd end., 2020. Available from Amazon. See: www-2.rotman.utoronto.ca/~hull.

Hull, J. C., and A. White. "The FVA Debate," Risk, 25th anniversary edition (July 2012): 83-85.

Hull, J. C., and A. White. "Valuing Derivatives: Funding Value Adjustments and Fair Value," Financial Analysts Journal, 70, 3 (May/June 2014): 46-56.

Hull, J. C., and A. White. "Collateral and Credit Issues in Derivatives Pricing," Journal of Credit Risk, 10, 3 (2014): 3-28.

Hull, J. C., and A. White. "XVAs: A Gap Between Theory and Practice," Risk, 29, 5 (May 2016): 50-52.

Kenyon, C., and Green, A. D. (eds.) Landmarks in XVA. London: Risk Books, 2016.

# Short Concept Questions

9.1. Explain what CVA and DVA measure.
9.2. Explain what MVA and FVA measure.
9.3. Explain what KVA measures.
9.4. Explain how the "cure period" is used in the calculation of CVA.
9.5. If the market considers that the default probability for a bank has increased, what happens to its DVA? What happens to the income it reports?

# Practice Questions

9.6. Explain the difference between the views of financial economists and most practitioners on how MVA and FVA should be calculated.
9.7. Explain the difference between the views of financial economists and most practitioners on how KVA should be calculated.
9.8. Explain why FVA can be calculated for a transaction without considering the portfolio to which the transaction belongs, but that the same is not true of MVA.
9.9. Suppose that a bank buys an option from a client. The option is uncollateralized and there are no other transactions outstanding with the client. The expected values of the option at the midpoint of years 1, 2, and 3 are 6, 5, and 4. The probability of the counterparty defaulting in each of the three years is  $3\%$ . The probability of the bank defaulting in each of the three years is  $2\%$ . Estimate the bank's CVA and DVA for the transaction. Assume no recovery in the event of a default and zero interest rates.
9.10. "The impact of DVA on earnings volatility is generally greater than that of CVA." Explain this statement.

9.11. A company is trying to decide between issuing debt and equity to fulfill a funding need. What in theory should happen to the return required by equity holders if it chooses (a) debt and (b) equity?
9.12. Explain the meaning of "netting". Suppose no collateral is posted. Why does a netting agreement usually reduce credit risks to both sides? Under what circumstances does netting have no effect on credit risk?
9.13. The average funding cost for a company is  $5\%$  per annum when the risk-free rate is  $3\%$ . The company is currently undertaking projects worth  $\$ 9$  million. It plans to increase its size by undertaking  $\$ 1$  million of risk-free projects. What would you expect to happen to its average funding cost?

# Mechanics of Options Markets

We introduced options in Chapter 1. This chapter explains how options markets are organized, what terminology is used, how the contracts are traded, how margin requirements are set, and so on. Later chapters will examine such topics as trading strategies involving options, the determination of option prices, and the ways in which portfolios of options can be hedged. This chapter is concerned primarily with stock options. It also presents some introductory material on currency options, index options, and futures options. More details concerning these instruments can be found in Chapters 17 and 18.

Options are fundamentally different from forward and futures contracts. An option gives the holder of the option the right to do something, but the holder does not have to exercise this right. By contrast, in a forward or futures contract, the two parties have committed themselves to some action. It costs a trader nothing (except for the margin/ collateral requirements) to enter into a forward or futures contract, whereas the purchase of an option requires an up-front payment.

When charts showing the gain or loss from options trading are produced, the usual practice is to ignore the time value of money, so that the profit is the final payoff minus the initial cost. This chapter follows this practice.
