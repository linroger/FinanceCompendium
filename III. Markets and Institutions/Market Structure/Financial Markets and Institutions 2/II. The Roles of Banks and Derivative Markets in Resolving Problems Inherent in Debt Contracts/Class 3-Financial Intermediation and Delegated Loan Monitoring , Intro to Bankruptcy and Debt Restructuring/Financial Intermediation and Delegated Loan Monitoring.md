---
parent_directory: Class 3-Financial Intermediation and Delegated Loan Monitoring , Intro to Bankruptcy and Debt Restructuring
title: "Class 3: Financial Intermediation and Delegated Loan Monitoring"
tags:
aliases:
  - Financial Intermediation and Delegated Loan Monitoring
parent_folder: Class 3-Financial Intermediation and Delegated Loan Monitoring , Intro to Bankruptcy and Debt Restructuring
subfolder:
key_concepts:
cssclasses: academia
linter-yaml-title-alias: "Class 3: Financial Intermediation and Delegated Loan Monitoring"
---

# Class Note 3

# Financial Intermediation and Delegated Loan Monitoring: Bank Asset Services This continues the discussion from class note 2

# Financial Intermediation

If there is a small supply of large investors who can lend 1 on personal account and then monitor (fewer such investors than profitable large projects), and no way to delegate monitoring, then some projects that would benefit from monitoring would be financed with non-monitored, publicly-traded, debt.

I want to show how financial intermediaries can be set up to create synthetic large investors. There will be a profit opportunity to set up such intermediaries if none are present and there is a short supply of large investors. If there are few large investors and no intermediaries then we saw in class note 2 that loans are made at  $31.25\%$  and finding a way to make monitored loans at  $31.25\%$  can allow a banker to make a profit. Of course, if other banks can enter and compete, the loan rates will be pushed down.

# The Example from class note 2

Suppose that there are no large investors, only small investors each with .0001 (\(100) to lend, and 10,000 small lenders are needed to finance 1 (\)1 million). Suppose the cost of monitoring 0.0002 (\(200) for each. If each of 10,000 lenders were to monitor whenever there is a default on the loan, the cost would be 2, which is prohibitive, and no one would monitor. When monitoring cost is prohibitive, the optimal contract is publicly-traded debt with face value 1.3125 (see class note 2). Delegating monitoring to one agent avoids the duplication, but causes incentive problems for the agent delegated the monitoring task. Small lenders will not observe the effort put into monitoring, or the information monitored by the agent. The agent (let's call him or her "the banker") has a conflict of interest with the small lenders. The conflict is similar to the conflict of interest between the borrower and the small lenders.

How can the monitoring task be delegated without the need to monitor the monitor? Answer: The banker can face liquidation as a function of the amount paid to the 10,000 small lenders.

# Delegated Monitoring Requires Diversification: the one-loan bank

Suppose that the banker monitors a single loan (runs a one-loan bank) on behalf of the small lenders, and does not diversify across loans. When the borrower's project returns 1, the banker can monitor and collect the 1 without actually liquidating. However, the bank itself would

need to be liquidated in this case, because the face value of the bank's debt must exceed 1. If the bank's debt contract with the small depositors has a face value of 1 or less, the small depositors never receive more than 1, which delivers less that the 1.05 expected repayment they need to receive the required  $5\%$  expected return.<sup>1</sup> If the bank is liquidated when its loan defaults by paying 1, the bank is liquidated whenever the borrower would have been liquidated, had the borrower used publicly-traded debt. Unless the 10,000 lenders each monitor the banker (costing .0002 each, or a prohibitive total of 2), the one-loan bank will default and be liquidated just as often as the borrower. This seems to imply that delegating the loan monitoring to the banker will not succeed.

# Can the banker use diversification to reduce delegation costs?

# The two-loan bank

Suppose the banker monitored not one loan, but a diversified portfolio of loans. A very simple way to show the value of diversification is to examine the two-loan bank.

In particular, suppose the banker monitors loans of two borrowers, whose returns are independently distributed but are otherwise just like that of the single borrower (each loan has a .8 probability of returning 1.4 and .2 probability of returning 1). The banker attracts 2 (\(2 million) in "deposits" from 20,000 investors and lends it out to two different borrowers.

The banker gives each borrower a debt contract with face F ( $F million) and collects F when the borrower has 1.4 and monitors to collect 1 when the borrower has 1. As a result, the banker does not need to use costly liquidation to enforce his loan contract with either borrower. The banker issues deposits that are like publicly-traded debt: the bank is liquidated whenever it pays less than face value to any investor. This is the best contract because it requires no monitoring by the 20,000 small investors. Let B denote the face value of bank deposits per loan, implying that the two-loan bank has total deposits of 2B, and each 0.0001 (\$ 100) deposit has face value  $\frac{1}{10,000}$  B.

Suppose the banker monitors both loans. If both borrowers pay if full, the bank will

receive 2F. If one defaults but not the other, the bank will receive  $1 + F$ . If both default, the bank will receive 1 from each, or 2. The diversification from having two borrowers borrow from the bank will reduce agency costs. The distribution of payments to the bank, if the banker monitors, is:

<table><tr><td>Payment</td><td>Probability</td><td>Probability that 
Payment ≥ this value</td><td>Explanation</td></tr><tr><td>2F</td><td>.64 [P²]</td><td>.64</td><td>both pay F</td></tr><tr><td>F+1</td><td>.32 [2(P)(1-P)]</td><td>.96</td><td>one pays F, one 1</td></tr><tr><td>2</td><td>.04 [(1-P)²]</td><td>1.00</td><td>both pay 1</td></tr></table>

Assume that liquidating the bank yields nothing to depositors or to the banker, similar to the liquidation of borrowing firms. The bank has total face value of deposits of 2B. If the bank must be liquidated when it collects face value of F from one borrower and 1 from the other, it will be liquidated whenever at least one loan defaults, and there will be no possible savings in costs of financial distress. Alternatively, if the bank can and will pay its deposits when exactly one loan defaults, it defaults only when both loans default, and can reduce the probability of liquidation to  $0.04 = (1 - P)^{2}$ . To examine when payment of all deposits is possible when just one loan defaults, the total payment received by all depositors will be 2B with probability .96 and 0 with probability .04. The expected payment is .96(2)B. The initial capital needed to make two loans is 2 ( \$2 million), and it requires a 5% expected rate of return, implying that .96(2)B = 2(1.05), or 2 B = 2.1875 is the promised payment to 2 (\$ 2 million) in deposits. Equivalently, let the promised interest rate on bank deposits be  $r_{B}$ , then from 2B  $= 2(1 + r_{B}) = 2(1.09375)$  the promised interest rate on the bank deposit is  $9.375\%$ .

If the bank is to be able to pay 2.1875 when one loan defaults (paying 1) and the other does not default (paying F), then  $1 + F$  must be at least 2.1875, and the face value of each loan must satisfy  $F \geq 1.1875$ . If the bank made loans with this face value, it could avoid liquidation with probability .96. In summary, if the bank monitors its loans, it will have the cash and the incentives to pay bank deposits in full with probability .96 so long as  $F \geq 1.1875$ , or the interest rate on bank loans is at least  $18.75\%$ .

# Will the bank monitor?

Without monitoring, the bank would not be able to offer to take 1 when only 1 is available, and would instead liquidate the borrower's asset. Monitoring provides no benefit to the banker when all loans pay in full (monitoring is not needed to force a borrower to pay F) nor when all loans default (because the bank fails and is liquidated). If the banker obtains nothing whenever at least one loan defaults, there will be no incentive to monitor. An incentive to

monitor requires that the increase in the bank's expected payment exceeds 0.0002 (\(200) per loan. The banker's return when just one loan defaults, \(1 + F - 2B = 1 + F - 2.1875\), times the probability of exactly one default, .32, must exceed .0004, the cost of monitoring two loans.\(^{2}\) This works out to .0004 ≤ .32(1+F-2.1875), or \(F \geq 1.18875\). So long as the interest rate on bank loans exceeds \(18.875\%\), the banker is willing to invest \(\$ 400\) worth of time to increase the value of his residual claim on the bank. If the loan rate were below \(18.875\%\), banking would be too unprofitable to make monitoring worthwhile.

The two-loan banker must earn a small profit in excess of the cost of monitoring. The need to provide the bank an incentive to monitor and to avoid bank failure when just one loan defaults (by cross-subsidizing the losses from the defaulting loan with the profit from the non-defaulting loan), lead to profits for the banker delegated the monitoring of the loan. The banker will only monitor if it yields a profit, and due to limited liability and limited wealth, the banker never makes deposit payments in excess of loan repayments. The need to provide incentives puts a floor on the banker's expected profit, which is sometimes called a control rent, because the banker's control of decisions requires that the rent (profit) go to him. If further diversification is not possible, either because there are just two loans or because a two-eyed banker can only monitor two loans, bank profits cannot be driven to zero by competition. The two-loan bank has the following profits. The banker gets the residual claim above 2.1875, or:

2.3775 - 2.1875 =0.19 with probability .64, when neither loan defaults,

2.18875 - 2.1875 = 0.00125 with probability .32, when one loan defaults, and

0 with probability .04, when both loans default.

This works out to a total expected payment of 0.122 (\(122,000), or (.19).64 +

(.00125).32=0.122. This is a return to the banker of 0.061 per loan, which is in excess of

.0002. the cost per borrower of monitoring, and the banker earns a control rent of 0.061 - 0.0002

$= {0.0608}$  .  ${}^{3}$

The delegation cost per borrower, D, equals the cost of financial distress of the bank or .04(1)=.04, plus control rent to the banker of .0608, or a total of 0.1008. All parties are better off with the banker as delegated monitor. The borrower prefers to borrow at  $18.875\%$  from the bank, versus  $31.25\%$  direct. The investors get a  $5\%$  expected return in either situation. The banker is happy with any claim with an expected payment above  \$400, and ends up with an expected payment of\$ 122,000.

# Summary of Financial Intermediation and Diversification

We considered three types of contracting arrangements:

1. No monitoring: a publicly traded debt contract with face=1.3125 for each borrower.  
2. Direct monitoring by investors, which saves distress costs of  $S = .2$  but costs 2.  
3. Delegated monitoring by an intermediary, which saves distress costs  $S = .2$  at monitoring plus delegation cost, .1408.

Diversification within the intermediary works to make option 3 work by reducing the liquidation cost of providing the bank an incentive to repay small investors. To simplify, we use an example where the diversification from a bank making only two loans was sufficient to give the bank reduced delegation costs. However, it is more generally true that diversification allows financial intermediation to provide low cost delegated monitoring. The law of large numbers implies that if the bank gets sufficiently diversified across independent loans with expected repayments in excess of the face value of bank deposits, then the chance that it defaults on its deposits gets arbitrarily close to zero. In the limit of a perfectly diversified bank, the bank would never default and would face no liquidation costs. In addition, the control rent needed to provide incentives to monitor approaches zero. The delegation cost for the bank approaches zero, and the only cost of intermediation is the (unavoidable) cost of monitoring. Competitive and fully-diversified intermediation would drive borrowers' expected cost of capital down to  $5.02\%$ . In the limit of perfect diversification, the face value of bank debt approaches F= 1.06275 which is the solution to .8F + .2(1)= 1.0502; it gives the bank a  $5\%$  expected return after covering the 0.0002 (\$200) cost of monitoring. This is too strong because in practice the default risk of borrowers is not independent, but is positively correlated, and because the number of loans in the bank's portfolio is limited.

# Mathematical Appendix: The General Case for monitoring versus not monitoring.

If you don't like math, don't read this. It is not required. Some students like to see more generally what is making things work. This year I have yielded to these requests. Do not memorize these as formulae-- they will rot your brain.

This appendix briefly generalizes the example given above. The derivation is only sketched because the details are provided with the example given above.

# Publicly traded debt without monitoring

Debt uses the threat of liquidation to get the borrower to pay. Recall that the realized payoff of the project is  $V$  (either  $V = H$  or  $V = L$ ), and that the probability that  $V = H$  is  $P$ . The lenders will get an expected repayment of:  $Pf$  if  $f$  is between  $H$  and  $L$ , or  $f$ , if  $f$  does not exceed  $L$ . This implies that the lowest face value,  $f$ , that provides an expected repayment of  $1 + r$  is given by:

$$
\begin{array}{c c} \frac{1 + r}{P} & \text{if L <1 +r} \end{array}
$$

$$
f = \left\{ \begin{array}{l} \end{array} \right.
$$

$$
1 + r \quad i f L \geq 1 + r,
$$

so long as this value of  $f$  does not exceed  $H$ . If it exceeds  $H$ , the borrower cannot raise publicly-traded debt.

If there is never default on debt (because  $\mathrm{L} \geq 1 + \mathrm{r}$ ), there is no cost of financial distress. I assume that the borrower cannot issue default free debt ( $\mathrm{L} < 1 + \mathrm{r}$ ), but the borrower can raise risky publicly-traded debt ( $\mathrm{H} > \frac{1 + \mathrm{r}}{\mathrm{P}}$ ). Publicly-traded debt's cost of financial distress is then given by  $S = L(1 - P)$ , because  $\mathrm{L}$  is the loss from inefficient liquidation when  $V = L$ , and the probability of this is  $1 - P$ .

When there is a cost to financial distress there is value to monitoring to avoid it. The saving due to monitoring is S, because a lender who monitors does not need to liquidate when  $V = L$ . Monitoring and restructuring the debt outside bankruptcy increases the borrower's payment when the project returns L from 0 to L. Monitoring can make both borrower and lender weakly better off if its cost is less than the cost of financial distress,  $S = (1 - P)L$ .

If there were many large investors willing to make and monitor loans of size 1, then monitoring would be used whenever its cost is below S. Suppose instead that all investors have wealth of  $1 / \mathfrak{m}$  and that  $\mathfrak{m} \to \infty$ , implying that all investors are small and the costs of direct monitoring are very large ( $\mathfrak{mK} \to \infty$ ). Some projects will need to be funded by publicly-traded debt, unless there is a way to delegate monitoring.

As before, financial intermediation is a way to delegate monitoring by manufacturing synthetic high-wealth investors. Delegated monitoring by one banker takes place without any monitoring of the banker, because monitoring the banker costs mK. If the bank is liquidated, the value to depositors is zero, similar to the conclusion about liquidation of a borrower's assets. The banker's cost of monitoring is K per loan. As we saw above, when an unmonitored borrower's project returns L a lender receives a payment net of liquidation costs of 0. With monitoring the payment is L. Let the face value of a bank loan (a loan from the banker) be given by F, to distinguish it from the face value of a publicly traded bond, with face value f. Delegated monitoring banking is feasible only if the borrower, lenders and the banker can be made at least as well off as with publicly traded debt, and when the banker is provided with the proper incentives.

A bank that monitored a single loan with face value  $F$  would issue deposits to  $m$  lenders to raise the amount 1. The total face value of bank debt (per loan) is  $B$ , and there is one loan so total face value is  $B$ . Whenever the bank does not pay  $B$ , the bank is liquidated. Using the

bank to monitor is not a free method of making the value of V known to the public by liquidating the bank. The bank will need to diversify in order to act as a delegated monitor. This is because a bank that did not diversify would need to default on its claims whenever its single loan defaulted. I examine the diversification of making two independent and identically distributed loans, with face value F each. The bank raises deposits from 2m lenders, and these deposits have total face value of 2B.

The face value of each loan is F. The constraint that the borrower not default when V=H is:

$$
F \leq H \quad (\text{Lo an re pa me nt in ce nt iv es})
$$

The bank will provide an expected return of exactly  $r$  to each depositor if the face value per loan is given by:

$$
B = \frac{(1 + r)}{1 - (1 - P)^{2}}. \quad (F a c e v a l u e o f b a n k d e p o s i t s, p e r l o a n)
$$

When one of the bank's two loans defaults, and it has monitored, it will collect  $F + L$ . The bank owes deposits of 2B. The bank will have the ability and incentive to pay its deposits when one of two loans default if and only if  $F + L \geq 2B = 2(1 + r) / [1 - (1 - P)^2]$  or

$$
\mathrm{F} \geq \frac{2 (1 + \mathrm{r})}{1 - (\mathrm{1 -P})^{2}} - \mathrm{L} \equiv \mathrm{F}_{\text{pa y}}. \quad (\text{ba nk ca np ay de po si ts wi th on ed ef au lt})
$$

In addition, the banker must have incentives to monitor the loans. The cost of monitoring is incurred before the banker knows the return of the loan. When neither loan defaults, there is no effect of monitoring on the banker's receipts. When both loans default, the bank must default on its deposits, leading to liquidation giving the bank zero, and again there is no benefit to the banker from monitoring. When exactly one loan defaults, the banker's payoff if he monitors and repays the deposits is  $\mathrm{F} + \mathrm{L} - 2\mathrm{B}$ , while if the banker does not monitor the payoff is 0. Taking the expectation of the increase in the banker's payoff and subtracting the cost of monitoring 2 loans implies that when the banker has incentives to monitor, and the bank is not to fail when only one loan defaults, it must be true that:

$$
2 P (1 - P) \{F + L - 2 B \} - 2 K \geq 0, o r
$$

$$
\mathrm{F} \geq \frac{\mathrm{K}}{\mathrm{P} (1 - \mathrm{P})} + \frac{2 (1 + \mathrm{r})}{1 - (1 - \mathrm{P})^{2}} - \mathrm{L} \equiv \mathrm{F}_{\mathrm{IC}}. (\text{In ce nt iv et om on it or})
$$

Because of the cost of monitoring,  $K > 0$ , the incentive to monitor is the binding constraint, and  $F_{IC} > F_{Pay}$ . For the two-loan bank, the face value of each loan is  $F = F_{IC} = \frac{K}{P(1 - P)} + \frac{2(1 + r)}{1 - (1 - P)^2} - L$ .

The bank loan is cheaper for the borrower if  $F \leq f = \frac{1 + r}{P}$ , or

$$
K \leq \frac{P (1 - P) [ 1 + r - L (2 - P) ]}{2 - P}.
$$

One can show that the delegation cost of monitoring declines as the bank becomes more diversified, but in cases where the number of independent loans is above 2 the equations become a bit messy. The easiest way to show the benefits of increased diversification is the show what happens as  $N$ , the number of independent loans monitored, gets arbitrarily large.

# The Limiting Case: Fully Diversified Banks

Suppose the bank became so diversified that a proportion exactly equal to  $P$  of its loans were able to pay in full and  $1 - P$  could not. The bank will face no uncertainty, and will either always default or never default. Unless it will always default, the well-diversified bank can borrow at the riskless rate of interest. If the average amount of loan payments received per loan, were less than  $1 + r$ , the bank would default. When the average exceeds  $1 + r$ , the bank will repay  $1 + r$  per unit of deposits.

If the bank can pay  $1 + r$  per loan with monitoring, then at the margin it will keep all of the gains from monitoring, and will monitor.

If the bank monitors all of its loans with face value  $F$ , incurring cost  $K$  per loan and paying  $1 + r$  in deposits per loan, it will receive an average payoff per loan of exactly  $PF + (1 - P)L - (1 + r) - K$ . The banker will receive a nonnegative profit from making and monitoring loans so long as this is nonnegative or:

$$
\mathrm{F} \geq \frac{1 + \mathrm{r} + \mathrm{K} - (1 - \mathrm{P}) \mathrm{L}}{\mathrm{P}}. \quad (\text{mi ni ma lc om pe ns at io nf or am on it or ed lo an})
$$

The value of the minimum face value of a publicly-traded non-monitored loan,  $f = \frac{1 + r}{P}$ , is the lowest such that an expected return of  $1 + r$  is received without monitoring. If the bank makes loans with face value below  $\frac{1 + r}{P}$ , the bank will fail if it monitors none of its loans. As a result, if the bank monitors none of its loans, the banker receives nothing. For any face value of bank debt where it is preferred by borrowers to non-monitored debt, the banker will receive at least as much profit from monitoring all of its loans as monitoring none.

To compare the banker's profit from monitoring some of its loans, note there is a positive fraction that it must monitor to avoid failure. If the fraction of loans monitored is  $\mu$ , and the bank does not default given the fraction, the banker's payoff is  $PF + (1 - P)\mu L - (1 + r) - \mu K$ , which is increasing in  $\mu$  if monitoring is worth its cost or  $(1 - P)L > K$ . When monitoring is worth its cost, the banker prefers to monitor all loans and the optimal value of  $\mu$  is 1. In the limit where the bank is

perfectly diversified, the face value of a loan is  $\mathrm{F} = \frac{1 + \mathrm{r} + \mathrm{K} - (1 - \mathrm{P})\mathrm{L}}{\mathrm{P}}$ , because otherwise a competing intermediary can be set up with a positive profit. The expected return received by the bank is  $1 + \mathrm{r} + \mathrm{K}$ , just enough to cover its cost of capital,  $1 + \mathrm{r}$ , plus its monitoring cost,  $\mathrm{K}$ .