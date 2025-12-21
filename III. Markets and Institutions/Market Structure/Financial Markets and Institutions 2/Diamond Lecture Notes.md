---
title: Class Note 1 Borrower-Lender Conflicts and Debt Contracts
parent_directory: Financial Markets and Institutions 2
primary_tags:
   - borrower lender conflicts
   - debt contracts
   - asset substitution theory
   - financial contracting
   - capital structure theory
secondary_tags:
   - agency problems
   - debt covenants
   - bankruptcy costs
   - monitoring incentives
   - risk shifting
   - financial distress
   - leverage incentives
   - capital budgeting distortions
   - bankruptcy law
   - lender monitoring
cssclasses: academia
---

# Class Note 1: Borrower-Lender Conflicts and Debt Contracts

## Borrower-Lender conflicts and implied agency problems.

The amount of leverage has an impact on the incentives of someone who maximizes the value of the residual equity claim. This "asset substitution theory" is a popular theory of capital structure, but it is not too plausible for large firms. It makes the most sense for owner managed firms, where the manager is the stockholder. If the owner and manager differ, one needs to examine the manager's incentive contract to learn his/her incentives. We will see later that the owner's and manager's incentives are naturally aligned for nearly insolvent firms and for some financial institutions that have government deposit insurance.

The example illustrates how divided ownership of different parts of the cash flow distribution distorts capital budgeting decisions.

Debt holders own the lower tail of the distribution of firm value, and equity owners the upper tail. This is the cause of the conflict of interest because some decisions hurt the lower tail and help the upper tail (and can help or hurt the overall value of the firm).

## 1. No Debt

Two projects, the riskier one also has a lower expected return. Each has only two possible outcomes, one if a depression (D), one if prosperity (P). The probability of each outcome is  $\frac{1}{2}$ . Each project requires an initial outlay of \$800.

<table><tr><td>Project</td><td>Value in D</td><td>Value in P</td><td>Expected value</td><td>Expected return</td></tr><tr><td>1</td><td>500</td><td>1500</td><td>1000</td><td>200/800 = 25%</td></tr><tr><td>2</td><td>0</td><td>1551</td><td>775.5</td><td>-24.5/800 = -3.06%</td></tr></table>

We could get fancy and use the states model to take account of the positive "beta" of each project (each pays off more in prosperity). Project 2 has a higher beta, implying that it should require a higher discount rate than project 1. It is sufficient for our purposes to use the expected returns to see the incentive problem with debt.

Clearly, project 1 is the best investment. An owner-managed firm with no debt would select it, since all require the same initial outlay.

## 2. What about a firm with debt with face \$600 in place?

The fixed payment of \$600 is a sunk cost. If the firm is going to default, then it does not care "how big" the default is. It wants to make more when not in default.

## Cash flows to equity when debt of \$600 is in place

<table><tr><td>Project #</td><td>Cash flow if D</td><td>Cash flow if P</td><td>Expected value</td></tr><tr><td>1</td><td>0</td><td>1500-600=900</td><td>450</td></tr><tr><td>2</td><td>0</td><td>1551-600=951</td><td>475.5</td></tr></table>

The levered firm would select project number 2, despite its lower net present value, because it has a higher present value conditional on not leading to bankruptcy. The equity owner owns the upper tail, and is only concerned with the returns he owns. Note that no matter how the equity owner values the cash flows if P, he prefers project 2 since both have identical cash flows if D and project 2 has higher payments if P.

This does not mean that firms "want" to go bankrupt. Instead, it is a statement about debt capacity. If the leverage ratio gets too high, then these perverse incentive effects of debt increase. This can lead the firm to tilt its decisions toward excessively risky projects, with a lower net present value. Potential bond holders can put themselves into the owner's shoes, and take this into account when deciding what interest rate to charge on the bond. The lender can predict what the borrower will do, but there is a problem because the lender cannot directly observe the project choice.

What is the debt capacity of the firm? What is the highest face value, F, that the borrower prefers project 1?

The borrower's equity payoff from Project 1 with debt of face F is:

$$
\begin{array}{l} \frac{1}{2} (1500 - F) + \frac{1}{2} (500 - F) = 1000 - F \quad (\text{for} F \leq 500) \\ \frac{1}{2} (1500 - F) + \frac{1}{2} (0) \quad (\text{for} F \text{between} 500 \text{and} 1500), \\ 0 \text{for} F > 1500. \\ \end{array}
$$

The borrower's equity payoff from Project 2 with debt of face F is:

$$
\begin{array}{l} \frac{1}{2} (1551 - F) + \frac{1}{2} (0) \quad (\text{for} F < 1551) \\ 0 \quad (\text{for} F > 1551) \\ \end{array}
$$

The debt capacity must be less than 500, because if the firm will certainly default in Depression, all that matters is what it is worth in Prosperity.

For  $F < 500$ , Project 1 is preferred for all  $F$  that satisfy  $1000 - F \geq \frac{1}{2}(1551 - F)$ , which solves out to  $F \leq 449$ . As a result, 449 is the debt capacity in face value.

Suppose lenders require an expected return of  $r$  for investing in any security of the firm. If the firm issued debt with face value 448 debt, it would choose project 1, and then the debt could raise up to  $\frac{448}{1 + r}$ . (Project 1 is also selected for face 449, because the borrower will not hurt the lender if it does not help himself.) If the firm issued debt with face  $F > 449$ , it would lead to project 2 and raise  $\frac{\frac{1}{2}F + \frac{1}{2}(0)}{1 + r}$ .

Risky debt (debt with a positive probability of bankruptcy) distorts capital budgeting decisions. It provides incentives to make tradeoffs between cash in bankruptcy and not in bankruptcy that differ from the ones that maximize the value of the firm.

The potential bondholders will require a high enough interest rate to give themselves a competitive rate of return, for example  $10\%$ . Thus, any reductions in the value of the capital budgeting program of the firm will come out of the owner's pockets. If the firm selected too high a leverage ratio, it would be giving itself a perverse incentive contract. It would not do this in the first place, if it had alternatives. Thus, we might not expect a firm to choose a capital structure with as much debt as our example if it faced an unobservable choice between these projects.

This leaves us with some unanswered questions:

How can these bad effects of debt be reduced?

How do bank asset services help reduce these bad effects?

If debt is so bad, why is it so common, especially for smaller firms?

Why not use another financial contract?

Beginning with question a, we examine problems with bond covenants, contractual provisions in bond or loan indentures. See the Wruck paper in the packet for a description of typical covenants.

- Just prohibiting an action in a bond covenant does not prevent it from happening. The lender needs to know about the violation before it happens or soon thereafter. In addition, the lender must have some bargaining power over the borrower in order to stop a "crime in progress."

- Enforcement requires effort and monitoring of the borrower. Without substantial monitoring, the contract cannot depend on anything except the grossest public information.

- If not all contingencies are spelled out, contracts must be renegotiated over time. This too requires the lender to have lots of information about the borrower's situation.

- If the lender is not one individual, but many small bondholders, the covenants can be difficult to enforce. There can be either duplication of effort if each lender monitors the situation carefully, or more likely, a "free rider" problem, where none of the small bondholders find it worthwhile to bother to monitor. Without monitoring, covenants will not be renegotiated or contain much detail. If there is no monitoring, covenants will be written contingent only on the grossest public information.

- This gives an advantage to having a single lender, rather than many lenders. We will see that this is a part of the argument why asset services of banks and other intermediaries are important.
- The US Federal Trust Indenture Act prohibits majority voting to restructure debt contracts that reduce principal or interest or extend the debt maturity. A  $100\%$  vote required to change these "key covenants." Thus, even if public bondholders had the information, they probably could not use it. Changes to other covenants in bonds require a 2/3 vote in dollar value, and  $50\%$  measured in the fraction of bondholders (not weighted by dollar value).

### Class Note 2 Debt contracts due to the lack of information: Debt as a promise and a threat

This is our initial view of the role of debt in corporate control. This is simple but abstract. This will not be our only view of this issue.

Consider a borrower who needs to raise a large quantity of capital. All lenders and borrowers are risk neutral. The borrower has no capital and needs to raise 1 (\(1 million).

Outside investors do not observe the borrower's operations directly, not even its sales or cash flows. How can the lenders write a contract where they do not need to monitor this information?

The firm needs to raise 1 (\$1 million), and investors require an expected return of $r=5\%$.

### What is the best financial contract without monitoring?

All lenders and the borrower agree that the borrower has a profitable (positive net present value) project to fund. However, only the borrower will observe how profitable it turns out to be. The borrower can consume any part of the project's return that he does not pay out to the investor. The interpretation is that the borrower can appropriate the return to himself, since no one else observes how successful is the project. If the project is a retail store, the borrower can take some sales in cash to himself. More generally, the borrower can inflate costs. The net cash flows to the firm are very unobservable in practice for many firms. In addition, most other conflicts of interest faced by borrowers can be reinterpreted as equivalent to the borrower's ability to retain under reported cash. The ability to retain under reported cash is simply the most extreme example of a conflict of interest.

The project costs 1 to fund, and its realized value is a random variable with realization denoted by V. The distribution of V, the value of the project, known to all borrowers and lenders

is: H=1.4 million with probability P=.8

L=1 million with probability  $1 - P = .2$ .

### A simple candidate for a financial contract is equity

An equity contract in this context is a profit-sharing agreement, where the profit shared depends on the profits reported by the borrower.

Let the fraction of reported profits that goes to the outside investor be a, while the borrower retains the fraction 1!a, plus any under reported profits. Suppose that the borrower's contract is just to pay a fraction of reported profits, with no other details or penalties specified. The borrower's payoff given the true value of V and the reported value, denoted by Z, is  $V - aZ$ .

### What profit will the borrower report if he is supposed to pay out a fraction of it?

The borrower will choose the smallest value of  $Z$ . Supposing that the borrower can't make the lender take a share of a reported loss (by reporting  $Z < 0$ ), the borrower will report  $Z = 0$ .

No matter what is the true value of V, the most profitable choice for the borrower is to pay the lowest possible value. If there is no cost to the borrower of understating the amount, the borrower always does. Even if the lender knew the value of V, if the borrower obtains it first and thus controls it, the lender will not be paid unless the borrower suffers some consequence of not paying.

### What can the lender do if the borrower claims a low amount?

The lender would like to impose a penalty for low payments to give incentives for higher payments. There are two interpretations. The lender can liquidate the project if the borrower pays too little, preventing the borrower from absconding with it, or the lender can impose a non-monetary penalty on the borrower. Bankruptcy in the world is some combination of these two effects. In ancient history, the non-monetary penalties were very common, i.e., debtors' prisons and physical penalties. Such sanctions are now illegal, but the loss of reputation of a borrower of a bankrupt firm is similar.

# Bankruptcy, liquidation, and the optimal liquidation policy

Suppose that it is not possible to impose a penalty on the borrower or take other assets outside the business that are valued by the borrower. The only sanction available to give the borrower an incentive to pay is liquidation of the borrower's assets. To focus on the inefficiency of disrupting firm operations, I assume that liquidating the firm's assets gives no proceeds to the lender or to the borrower. Liquidation and bankruptcy are useful as a penalty that a borrower can avoid by paying the debt, but regular liquidation is not a good way to run a firm.

# How does one specify an optimal financial contract between investor and borrower when one can decide to liquidate (to penalize the borrower) or not contingent on any payment?

Liquidation is best used as a payment-contingent penalty in the following way. If the lender is ever to liquidate for a given payment, he also should liquidate for all lower payments.

Suppose instead that the lender does not liquidate if 1 is paid, but will liquidate for some higher payment. Then, whenever the borrower has at least 1, he will avoid liquidation by paying 1, and keep the remainder for himself. This makes the threat to liquidate given higher payments meaningless because the payment will never exceed 1.

The borrower will pay the lowest amount that avoids liquidation, and keep the rest for himself. The only exception is if the borrower has insufficient funds to pay that amount. This implies a description of the optimal financial contract without monitoring: select a payment, f, that, if paid, liquidation is avoided. The lender then liquidates for all lower payments. This implies that the optimal contract when monitoring is impossible is a debt contract with face f. Face value includes the promised payment of principal and interest. Determination of the face value of non-monitored debt

This section determines the minimum face value, f, of non-monitored debt which will lead to payments with an expected return of  $5\%$  on a loan of 1 ( $\$ 1$  million), or an expected value of 1.05. Any face value below L=1 will always be repaid, but this will not deliver an expected repayment of 1.05. To make this very clear, here is what f=1 would lead to.

Suppose \( f = \\( 1 \). When \( V = 1 \), the borrower pays 1 (paying less would result in liquidation). The borrower gets 0, which is as much as if he paid any lower amount. When \( V = 1.4 \), the borrower pays 1 (to avoid liquidation), and keeps .4 for himself. This implies that with face value of 1, the lender gets 1 for sure, which is less than 1.05 and not acceptable.

Any face value of debt between 1 and 1.4 will force the borrower into liquidation when the project returns 1, but will be paid in full when the project returns 1.4. This will give the lender an expected return of .8F, because nothing is received when there is liquidation. Solving .8F=1.05 yields F=1.3125. Non-monitored debt with that face value works as follows.

# Suppose  $f = 1.3125$ .

When  $V = 1$  borrower pays less than 1.3125 and the asset is liquidated. The borrower gets 0 for any payment less than or equal to 1. The best interpretation is that the borrower then chooses to pay 0, because this is the best choice when the borrower can keep any positive fraction of the retained cash. The lender receives 0. This occurs with probability .2.

When  $V = 1.4$  the borrower pays 1.3125, avoids liquidation, and keeps 1.4-1.3125=.0875 for himself. This is more than he could get from any smaller payment: any smaller payment gives 0. The payment 1.3125 is received with probability .8. Liquidation is only avoided when  $V = H$  and the face of 1.3125 is paid. The lender receives 1.3125 with probability .8 and zero with probability .2, which is an expected payment of .8(1.3125)=1.05. Any lower face value will give

the lender an expected rate of return below  $5\%$ .

When outside investors cannot observe the cash flows and cannot monitor the business, equity contracts do not work. Enforcing them requires excessively costly monitoring. If this monitoring (sitting on the board of directors, or keeping close tabs on the business in other ways) is too costly, then simple financial contracts that do not require monitoring are best. These are debt contracts. They induce the borrower to pay investors because default serves as a penalty that the borrower seeks to avoid.

The analysis can be extended to apply not only to defaults on principal and interest covenants of debt contracts, but to any other covenant that depends on hard-to-observe information. When it too costly for lenders to collect the information to enforce or renegotiate other detailed covenants, then covenants that "mean what they say" (and involve a default when violated) must be used.

A publicly-traded bond with many lenders needs to have easy to enforce covenants. If it is costly to monitor and enforce detailed loan covenants, then bond covenants will be based on easily observed information. Because the public will not have better information, these covenants will not be renegotiated. This is especially true of the "key covenants" of principal, interest, and maturity. Public debt will be enforced by the threat of liquidation, and liquidation will occur whenever there is a default. More generally, we will later see that public debt is enforced by the threat of filing formal bankruptcy (which may not lead to liquidation). I will not yet add this complication.

Debt contracts can be improved by costly monitoring. The next section shows the value of monitoring in allowing renegotiation of loan contracts.

# The Value of monitoring in restructuring and renegotiation of debt

Suppose that it is possible for the lender to monitor the value of the borrower's operations. Then, instead of liquidating when less than the face value of debt is paid, the lender who monitors can instead use the threat of liquidation and offer to refrain from liquidation so long as the borrower repays as much as possible.

Instead of always or never accepting 1 in lieu of liquidation, the lender who monitors the firm's cash flow can accept 1 when  $V = 1$  and reject it when  $V = 1.4$ . The lender can use the extra information to allow beneficial renegotiation of loan contracts. This policy leads the borrower to pay  $f$  when  $V = 1.4$  and 1 when  $V = 1$ . I assume that the lender has all of the bargaining power and can offer to accept less than  $f$  only when  $V = 1$ . The value of monitoring is the expected savings in financial distress costs, which are equal to  $.2(1) = .2$ .

Monitoring of the exact value of the borrower's project costs 0.002 (\(200). If there is a single lender lending his or her own funds, that lender would monitor because the cost, 0.002, is less than the saving from monitoring, .2.

The lender must commit the time to monitoring before observing the payment offered by the borrower. This can be interpreted as meaning that the lender learn in advance about the borrower's business to properly interpret any data about the project's return. The lender must establish a relationship in order to monitor the borrower. If, instead, the lender can wait until after the borrower defaults on a loan to incur monitoring costs, then monitoring cost is required only when  $V = 1$ , or with probability .2. In practice, a relationship is required and in addition there is extra monitoring when the borrower might default.

Duplication of effort in monitoring implies that when monitoring is important, it may be best to have a single lender (a fat cat) who owns the entire bond issue. This would have an advantage over public security issues. We will see next time how financial intermediaries can replace the single lender, and offer better financial contracts. Banking is the original type of financial-engineering: a way of manufacturing synthetic fat cats.

# University of Chicago Booth School

# Business 35202

# Douglas W. Diamond

# Class 2 - Corporate Bond Contracts

Bonds are defined by legal contracts, called indentures, which spell out the rights and responsibilities of both sides. We will explore this contracting by reading the prospectus of a recent offering and analyzing its salient features, and by discussing contract features that arise elsewhere.

On December  $13^{\text{th }}$ , MGM Mirage issued a bond:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/98287042-82d6-415f-98b5-0f347af6d1c3/282a2c0c0379d555631f526d24e3764648f7c96e641aa094fd6ab1649b8b0864.jpg)

10 years (approximately), 7 5/8 coupon, issued @ par, rated BB/Ba2, which is two notches below investment grade.

Inside the prospectus (which I've posted on the canvas webpage), we see:

<table><tr><td></td><td>Per Note</td><td>Total</td></tr><tr><td>Initial public offering price(1)</td><td>100%</td><td>\$750,000,000</td></tr><tr><td>Underwriting discount</td><td>0.325%</td><td>\$ 2,437,500</td></tr><tr><td>Proceeds, before expenses, to MGM MIRAGE(1)</td><td>99.675%</td><td>\$747,562,500</td></tr><tr><td colspan="3">(1) Plus accrued interest, if any</td></tr></table>

So the underwriters, led by Barclays, BNP, UBS and Wachovia, share \$2.4375MM.

The easiest place to start reading a prospectus is at the Summary, which gives the big picture:

Coupon rate, payment dates and maturity  

- Call or other option features, if any  
Seniority  
- Issue size  
- Trustee  
Use of proceeds

In this bond's summary we see the same material from the Bloomberg, and also

There is some sort of optional redemption  
The are several covenants

We'll return to the covenants later. First, let's look at this optional redemption. On page S-10, we get this:

# Optional Redemption

The notes are redeemable at our election, in whole or in part at any time at a redemption price equal to the greater of:

100% of the principal amount of the notes then outstanding; or  

- as determined by an Independent Investment Banker, the sum of the present values of the remaining scheduled payments of principal and interest on the notes to be redeemed (not including any portion of such payments of interest accrued to the date of redemption) discounted to the redemption date on a semiannual basis (assuming a 360-day year consisting of 12 30-day months) at the Adjusted Treasury Rate, plus 50 basis points,

plus, in either of the above cases, accrued and unpaid interest to the date of redemption on the notes to be redeemed.

What is the purpose of this call? MGM can buy the bond back for the maximum of (i) par, and (ii) the present value of the future payments on the note, discounted at the Treasury rate plus 50 basis points. To see what this means, note that

- The present value, discounted at the Treasury rate plus 0 basis points, is what the note would sell for if it were totally riskless  
- Because, by construction, that's what a Treasury note with the same payments would sell for

So if we discount at the Treasury rate plus  $50bp$ , we get a slightly lower number

What the note would sell for if it traded 50bp over Treasuries  

- The bond was issued 304bp above Treasuries, so 50bp would be a much higher price, corresponding to much higher creditworthiness
- Even a AAA-rated issuer would not generally expect to trade within 50bp of the Treasury yield

When the bond was issued

- It sold at par, which implies a yield-to-maturity of equal to its coupon rate of  $7.625\%$ .  
- Since this was 304bp above Treasuries, 50bp above Treasuries would be 254bp lower, or  $5.085\%$  
- In order to yield  $5.085\%$ , the MGM note would have had to sell for 119.72

So to exercise this make-whole call option right now, MGM would have to pay the maximum of 100 and 119.72, i.e. 119.72

So, putting this together, the option is to buy the bond back for more than it is worth. Why bother writing this option into the contract? We'll see at the end of class, it is there to help the bondholder get out of the contract, should this become necessary.

Much of the rest of the prospectus is boilerplate and standard disclosure

- Currency & location of payments; tax consequences; registration; listing  
- Dire warnings about risks facing the issuer  
Financials related to interest coverage

The key moments in the prospectus, looking ahead to a distress situation, are

- Covenants, positive and negative  
- Rights of creditors if the issuer defaults  
How the contract can be changed by a vote

# Covenants

An indenture will have a section on covenants, which are actions the issuer either commits to do (positive covenants) or not do (negative covenants). How do they add value?

- If management always maximizes expected value, there is no positive role for covenants. They can only reduce expected value by constraining management

○ A covenant might make debt sell for more, but if it doesn't increase total value then it must simultaneously make equity worth less, so the net effect to equity from selling the debt is negative

So covenants must be there to defend against management's bad incentives, particularly its willingness to take negative NPV actions that move value from debt to equity

The MGM bond lists three covenants:

# Negative Pledge

- This bond is not secured. Thus, the assets supporting it are, generally speaking, the company assets that are not already pledged to other creditors

The purpose of the Negative Pledge clause is to prevent the company from now giving some new debt prior claim on those assets.

In the prospectus on page S-12, we see

# Limitations on Liens

Other than as provided below under "- Exempted Liens and Sale-Lease-Back Transactions," neither MGM MIRAGE nor any of the Subsidiary Guarantors may issue, assume or guarantee any indebtedness secured by a Lien upon any Principal Property or on any evidences of Indebtedness or shares of capital stock of, or other ownership interests in, any Subsidiaries (regardless of whether the Principal Property, Indebtedness, capital stock or ownership interests were acquired before or after the date of the indenture) without effectively providing that the notes shall be secured equally and ratably with (or prior to) such Indebtedness so long as such Indebtedness shall be so secured, except that this restriction will not apply to:

(a) Liens existing on the date of original issuance of the notes;  
(b) - (l) [other exceptions]

# Restrictions on Sale and Leaseback Transactions

A sale-and-leaseback transaction is almost equivalent, economically, to secured borrowing

Firm sells an asset to another firm (e.g. GE Capital) and simultaneously enters a long-term contract to lease the same asset

If the firm defaults on the contract, the owner can take back the asset

If the lease term covers the economic life of the asset, this is very, very close to secured borrowing (note that the owner gets to keep the asset after the lease expires, but its economic life is over)

So this is similar to the negative pledge clause. However, it is not possible to pledge some of the value of the sold asset to the bondholders, so what this restriction says instead is that sale-and-leaseback is OK as long as the sale proceeds either

- Buy new assets that are available to the bondholders, or  
- Are spent on retiring MGM debt

# Limitation on Sale and Lease-Back Transactions

Other than as provided below under "– Exempted Liens and Sale and Lease-Back Transactions," neither MGM MIRAGE nor any Subsidiary Guarantor will enter into any Sale and Lease-Back Transaction unless either:

(i) [the notes would also be secured by the property] or  
(ii)[MGM spends the sale proceeds paying down debt]

# Exempted Liens and Sale and Lease-Back Transactions

[MGM can enter into such transactions for up to 15% of its Consolidated Net Tangible Assets]

# Consolidation, Merger and Sale of Assets

This just says that, MGM will not be involved in a merger or acquisition, either as acquirer or target, unless

- The resulting firm is still a U.S. firm responsible for paying this bond  
- The merger does not cause a default

This prospectus does not constrain some other common bond covenants, such as

- Dividend and share-repurchase restrictions  
Asset-sale restrictions  
- Requirements to maintain and/or insure assets

With any covenant, the key questions are

What bad incentives does it address?  
What good actions does it interfere with?  

- Does the benefit of the first outweigh the costs of the second?

# Rights of creditors upon default

Following the covenants, the indenture lists the Events of Default:

a) Default on interest beyond a 30-day grace period  
b) Default on principal when it's due  
c) Acceleration of any other sufficiently big debt of MGM  
d) A sufficiently big judgment against MGM  
e) Default on any other covenants, if either

i) the trustee wants to pursue this, or  
ii) the trustee does not want to pursue it but holders of at least  $25\%$  of the bond do want to pursue it, and holders of no more than  $50\%$  of the bond disagree

Reading further down, we can condense the legalese to the following:

So to put it another way, if the debtor defaults, then

- If the default is a failure to pay this bond on time, then every creditor has the individual right to take legal action to force payment. This sort of default is called a financial default  
- But if the default is on anything else, i.e. a covenant default, then the trustee has the right to take action, but individual creditors do not.

Instead, we see that

A majority (by value) of bondholders can tell the trustee what to do  
○ A quarter of bondholders can take action, provided that a majority does not oppose them

So while it might seem that a bondholder can pursue any failure on an indenture, in fact his rights are more limited than that.

# Role of the Trustee

This shows us the role of the bond's trustee, which in the case of this MGM Mirage note is U.S. Bank. The trustee is there to represent the rights of bondholders, but is not an active monitor like a loan officer. Rather, it receives reports of compliance or non-compliance from the issuer, and decides on the course of action

# Example: Getty Images:

HEADLINE: Getty Images Announces Commencement of Consent Solicitation for  $0.50\%$  Convertible Subordinated Debentures, Series B Due 2023

SEATLE, Jan. 4 /PRNewswire-FirstCall/ -- Getty Images, Inc. (NYSE:GYI) today announced that it is soliciting consents (the "Consent Solicitation") from the holders of record at the close of business on January 4, 2007 of its outstanding 0.50% Convertible Subordinated Debentures, Series B due 2023 in the aggregate principal amount of \$265 million (the "Debentures") to an amendment to, and a waiver of an alleged or existing default or event of default under, the indenture governing the Debentures (the "Indenture"). The terms and conditions of the Consent Solicitation are described in the Consent Solicitation Statement, dated January 4, 2007 (the "Consent Solicitation Statement"), a copy of which will be attached as an exhibit to the Current Report on Form 8-K to be furnished by Getty Images to the Securities and Exchange Commission (the "SEC").

On November 9, 2006, Getty Images announced that its Board of Directors had established a special committee to conduct an internal investigation relating to Getty Images' stock option grant practices and related accounting for stock option grants and that it would delay the filing of its Quarterly Report on Form 10-Q for the quarter ended September 30, 2006 (the "Third Quarter Form 10-Q") until the special committee's review is complete. On November 29, 2006, Getty Images announced that it had received notices of a purported default from holders who claim to hold more than  $25\%$  in principal amount of the outstanding Debentures asserting that Getty Images' failure to file its Third Quarter Form 10-Q by the prescribed filing date under SEC regulations was a default under Section 17.01 of the Indenture, which incorporates by reference Section 314(a) of the Trust Indenture Act of 1939 (the "TIA").

As previously stated, Getty Images does not believe that it has failed to perform any of its obligations under the Indenture, which does not contain an express covenant requiring Getty Images to provide the trustee under the Indenture or the holders with periodic reports, such as the Third Quarter Form 10-Q. While Section 314(a) of TIA is incorporated into the Indenture by virtue of Section 17.01 thereof, Getty Images does not believe that the TIA requires periodic reports to be filed with the SEC or provided within any prescribed period of time.

Notwithstanding Getty Images' position regarding notices of default, it is seeking an amendment to, and a waiver of the alleged or existing default or event of default under, the Indenture. The proposed amendment to the Indenture would provide that no notice of default delivered to Getty Images on or prior to March 2, 2007 that specifies as the basis for the default a failure to file with the SEC the Third Quarter Form 10-Q and/or the Company's Annual Report on Form 10-K for the year ended December 31, 2006, as applicable, and to file the applicable reports with the trustee under the Indenture, shall have any force or effect with respect to the exercise of remedies by the trustee or any holder of Debentures if Getty Images files the applicable reports on or prior to May 1, 2007. The Consent Solicitation also includes a waiver of any defaults and events of default under Section 17.01 of the Indenture that may exist as a result of its failure to file the Third Quarter Form 10-Q.

Getty Images proposes to make a cash payment to consenting holders of the Debentures of $5.00 per $1,000 in aggregate principal amount of the Debentures (the "consent payment") held by such consenting holders, upon or promptly following expiration of the Consent Solicitation. Only registered holders of the Debentures on the January 4, 2007 record date that validly deliver, and do not revoke, consents prior to 5:00 p.m. New York City time on January 17, 2007, the expiration of the Consent Solicitation, will be eligible to receive the consent payment.

The consummation of the Consent Solicitation (including the payment of the consent payment) is subject to the receipt of valid consents in respect of a majority in aggregate principal amount of all outstanding Debentures, the execution of the supplemental indenture by us and the trustee under the Indenture, and the absence of any existing or proposed law or regulation or any proceeding that would make unlawful or invalid or enjoin or delay the proposed amendment, the entering into of the supplemental indenture or the payment of the consent payment.

Why limit bondholders' rights this way? Suppose you didn't, and instead let any bondholder demand immediate repayment after any infraction

- May not be best for bondholders, particularly if they are junior  
- A bondholder may not realize this, or may have a conflict of interest  
- Trustee is charged with taking the prudent action

Of course, the trustee might misjudge or have conflicts of its own, which is why there is the override provision

Why does this limitation apply to covenant defaults but not to financial defaults?

- Legal Answer: This is required by the Federal Trust Indenture Act
- Mandates that each bondholder has the inalienable right to get his principal and interest on time
- Economic Answer: Bondholders can actually benefit when it is hard for the firm to negotiate with them. More on this later.

# How the Contract can be Changed by a Vote

# Under Modification and Waiver, the indenture reads

We and the trustee, at any time and from time to time, may modify the indenture in respect of the notes without prior notice to or consent of any holder of the notes for any of the following purposes:

to permit a successor corporation to assume our covenants and obligations under the indenture and in the notes in accordance with the terms of the indenture;  
to add to our covenants for the benefit of the holders of the notes;  
to surrender any of our rights or powers conferred in the indenture;  
to add any additional events of default;  
to supplement any of the provisions of the indenture to the extent needed to permit or facilitate the defeasance and discharge of the notes in a manner that will not adversely affect the interests of the holders of such notes in any material respect;  
to provide for the acceptance of appointment by a successor trustee with respect to the notes and to add to or change any of the provisions of the indenture as is necessary to provide for the administration of the trust by more than one trustee;  
to comply with the requirements of the SEC in connection with qualification of the indenture under the Trust Indenture Act;  
to cure any ambiguity;  
to correct or supplement any provision in the indenture which may be defective or inconsistent with any other provision in the indenture;  
to eliminate any conflict between the terms of the indenture and the notes and the Trust Indenture Act; or  
to make any other provisions with respect to matters or questions arising under the indenture which will not be inconsistent with any provision of the indenture as long as the new provisions do not adversely affect in any material respect the interests of the holders of the notes.

We may also modify the indenture in respect of the notes for any other purpose if we receive the written consent of the holders of not less than a majority in principal amount of the outstanding notes. However, we may not, without the consent of the holder of each note affected thereby;

- change the stated maturity or reduce the principal amount or the rate of interest, or extend the time for payment of interest of the notes or any premium payable upon the redemption of the notes, or impair the right to institute suit for the enforcement of any payment on or after the due date thereof (including, in the case of redemption, on or after the redemption date), or alter any redemption provisions in a manner adverse to the holders of the notes or release any Subsidiary Guarantor Subsidiary Guarantee) or collateral, if any, securing the notes (except in accordance with the terms of the Indenture or the documents governing such collateral, if any);  
- reduce the percentage in principal amount of the notes where the consent of the holder is required for any such amendment, supplemental indenture or waiver which is provided for in the indenture; or  
- modify any of the waiver provisions, except to increase any required percentage or to provide that certain other provisions of the indenture cannot be modified or waived without the consent of the holder of each outstanding note which would be affected.

The indenture provides that the holders of not less than a majority in aggregate principal amount of the notes, by notice to the trustee, may on behalf of the holders of the notes waive any default and its consequences under the indenture in respect of the notes, except (1) a continuing default in the payment of interest on, premium, if any, or the principal of, any note held by a nonconsenting holder or (2) a default in respect of a covenant or provision hereof which cannot be modified or amended without the consent of the holder of each note.

What this says is, the issuer can change almost anything in the indenture if a majority of the bond agrees (the text in green). What they can't change, due to the Trust Indenture Act, is anything having to do with timely payment of principal and interest (the text in red). That can be amended only with a unanimous vote.

Holding a vote to remove covenants and other contract features turns out to be a useful tactic for distressed firms, which we will cover in detail. For now, notice that one could seriously damage the value of a bond without changing its principal, interest or maturity

- For example, with this bond, one could remove the part of the indenture that says the bond is senior, and instead make it junior

The law does not mandate that covenants be changeable by majority vote. An indenture could require a  $\frac{3}{4}$  vote or some other supermajority, and it could also require a unanimous vote.

# Defeasance

Essentially all corporate bonds allow for defeasance and discharge:

Defeasance and Discharge. The indenture provides that we may be discharged from any and all obligations under the notes other than:

- certain obligations to pay additional amounts, if any, upon the occurrence of certain tax, assessment or governmental charge events regarding payments on the notes;  
to revister the transfer or exchange of the notes;  
to replace stolen, lost or mutilated notes; or  
to maintain paying agencies and to hold money for payment in trust.

We may only defeat and discharge all of our obligations under the notes if:

- we irrevocably deposit with the trustee, in trust, the amount, as certified by an officers' certificate, of money and/or U.S. government obligations that, through the payment of interest and principal in respect thereof in accordance with their terms, will be sufficient to pay and discharge each installment of principal and premium, if any and any interest on, and any mandatory sinking fund payments in respect of, the notes on the dates such payments are due; and  
- we deliver to the trustee an opinion of counsel or a ruling from the United States Internal Revenue Service, in either case to the effect that holders of the notes will not recognize income, gain or loss for United States federal income tax purposes as a result of such deposit, defeasance and discharge.

In other words, the issuer can get out of, i.e. be discharged of, whatever it committed to in the indenture by arranging for the bond to be paid by a trust containing sufficient securities, i.e. to be defeased. So the firm will

- Assemble a portfolio of government bonds whose scheduled payments will pay off the bond  
- On or before each coupon or principal repayment date of the bond, the portfolio pays at least as much as the scheduled payment  
- Place this portfolio in an irrevocable trust which is directed to use the portfolio's payments to make the remaining payments on the bond  
- The investors in a defeated bond would regard it as riskless, and it would trade at something very close to the Treasury yield  
- By the same token, the cost of the portfolio of Treasuries is the present value of the bond's future payments, discounted at the Treasury rate If the bond's indenture gives the issuer the right to defease the bond, then the issuer is no longer bound by the covenants after defeasance

# Connection between defeasance and make-whole call options:

If MGM were to exercise its make-whole call option, it would pay bondholders the present value of its bond's future payments, discounted at the Treasury rate plus 50bp

- If MGM were to defeat the bond, it would buy the portfolio of Treasury bonds. The cost is the present value of its bond's future payments, discounted at the Treasury rate. By construction, this is a somewhat higher cost

The net effect of exercising the make-whole option is the same as the net effect of defeating the bond

- After exercising the make-whole option, the bond is gone  
- After defeating the bond, it is effectively gone – the payments to bondholders will come from the trust, not from MGM, and the covenants are no longer in effect

From the bondholders' point of view, the two strategies are very similar

- With the make-whole call, they get an amount slightly less than the present value of the future payments discounted at the Treasury rate  
- With the defeasance, they get a bond that is now as safe as a Treasury bond, but isn't a Treasury bond. It is still an MGM note, and is probably somewhat illiquid Which do they prefer? They might actually prefer the make-whole call, depending on how close the defeased bond trades to the Treasury rate. In any case, they are very similar.

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

### The two-loan bank

Suppose the banker monitored not one loan, but a diversified portfolio of loans. A very simple way to show the value of diversification is to examine the two-loan bank.

In particular, suppose the banker monitors loans of two borrowers, whose returns are independently distributed but are otherwise just like that of the single borrower (each loan has a .8 probability of returning 1.4 and .2 probability of returning 1). The banker attracts 2 (\(2 million) in "deposits" from 20,000 investors and lends it out to two different borrowers.

The banker gives each borrower a debt contract with face F ( $F million) and collects F when the borrower has 1.4 and monitors to collect 1 when the borrower has 1. As a result, the banker does not need to use costly liquidation to enforce his loan contract with either borrower. The banker issues deposits that are like publicly-traded debt: the bank is liquidated whenever it pays less than face value to any investor. This is the best contract because it requires no monitoring by the 20,000 small investors. Let B denote the face value of bank deposits per loan, implying that the two-loan bank has total deposits of 2B, and each 0.0001 (\$ 100) deposit has face value  $\frac{1}{10,000}$  B.

Suppose the banker monitors both loans. If both borrowers pay if full, the bank will

receive 2F. If one defaults but not the other, the bank will receive  $1 + F$ . If both default, the bank will receive 1 from each, or 2. The diversification from having two borrowers borrow from the bank will reduce agency costs. The distribution of payments to the bank, if the banker monitors, is:

<table><tr><td>Payment</td><td>Probability</td><td>Probability that 
Payment ≥ this value</td><td>Explanation</td></tr><tr><td>2F</td><td>.64 [P²]</td><td>.64</td><td>both pay F</td></tr><tr><td>F+1</td><td>.32 [2(P)(1-P)]</td><td>.96</td><td>one pays F, one 1</td></tr><tr><td>2</td><td>.04 [(1-P)²]</td><td>1.00</td><td>both pay 1</td></tr></table>

Assume that liquidating the bank yields nothing to depositors or to the banker, similar to the liquidation of borrowing firms. The bank has total face value of deposits of 2B. If the bank must be liquidated when it collects face value of F from one borrower and 1 from the other, it will be liquidated whenever at least one loan defaults, and there will be no possible savings in costs of financial distress. Alternatively, if the bank can and will pay its deposits when exactly one loan defaults, it defaults only when both loans default, and can reduce the probability of liquidation to  $0.04 = (1 - \mathrm{P})^2$ . To examine when payment of all deposits is possible when just one loan defaults, the total payment received by all depositors will be 2B with probability .96 and 0 with probability .04. The expected payment is .96(2)B. The initial capital needed to make two loans is 2 ( \$2 million), and it requires a 5% expected rate of return, implying that .96(2)B = 2(1.05), or 2 B = 2.1875 is the promised payment to 2 (\$ 2 million) in deposits. Equivalently, let the promised interest rate on bank deposits be  $r_B$ , then from 2B  $= 2(1 + r_B) = 2(1.09375)$  the promised interest rate on the bank deposit is  $9.375\%$ .

If the bank is to be able to pay 2.1875 when one loan defaults (paying 1) and the other does not default (paying F), then  $1 + F$  must be at least 2.1875, and the face value of each loan must satisfy  $F \geq 1.1875$ . If the bank made loans with this face value, it could avoid liquidation with probability .96. In summary, if the bank monitors its loans, it will have the cash and the incentives to pay bank deposits in full with probability .96 so long as  $F \geq 1.1875$ , or the interest rate on bank loans is at least  $18.75\%$ .

### Will the bank monitor?

Without monitoring, the bank would not be able to offer to take 1 when only 1 is available, and would instead liquidate the borrower's asset. Monitoring provides no benefit to the banker when all loans pay in full (monitoring is not needed to force a borrower to pay F) nor when all loans default (because the bank fails and is liquidated). If the banker obtains nothing whenever at least one loan defaults, there will be no incentive to monitor. An incentive to

monitor requires that the increase in the bank's expected payment exceeds 0.0002 ( \$200) per loan. The banker's return when just one loan defaults, \(1 + F - 2B = 1 + F - 2.1875\$ , times the probability of exactly one default, .32, must exceed .0004, the cost of monitoring two loans. $^2$  This works out to .0004 ≤ .32(1+F-2.1875), or  $F \geq 1.18875$ . So long as the interest rate on bank loans exceeds  $18.875\%$ , the banker is willing to invest \)400 worth of time to increase the value of his residual claim on the bank. If the loan rate were below  $18.875\%$ , banking would be too unprofitable to make monitoring worthwhile.

The two-loan banker must earn a small profit in excess of the cost of monitoring. The need to provide the bank an incentive to monitor and to avoid bank failure when just one loan defaults (by cross-subsidizing the losses from the defaulting loan with the profit from the non-defaulting loan), lead to profits for the banker delegated the monitoring of the loan. The banker will only monitor if it yields a profit, and due to limited liability and limited wealth, the banker never makes deposit payments in excess of loan repayments. The need to provide incentives puts a floor on the banker's expected profit, which is sometimes called a control rent, because the banker's control of decisions requires that the rent (profit) go to him. If further diversification is not possible, either because there are just two loans or because a two-eyed banker can only monitor two loans, bank profits cannot be driven to zero by competition. The two-loan bank has the following profits. The banker gets the residual claim above 2.1875, or:

2.3775 - 2.1875 =0.19 with probability .64, when neither loan defaults,

2.18875 - 2.1875 = 0.00125 with probability .32, when one loan defaults, and

0 with probability .04, when both loans default.

This works out to a total expected payment of 0.122 (\(122,000), or (.19).64 +

(.00125).32=0.122. This is a return to the banker of 0.061 per loan, which is in excess of

.0002. the cost per borrower of monitoring, and the banker earns a control rent of 0.061 - 0.0002

$= 0.0608$

The delegation cost per borrower, D, equals the cost of financial distress of the bank or .04(1)=.04, plus control rent to the banker of .0608, or a total of 0.1008. All parties are better off with the banker as delegated monitor. The borrower prefers to borrow at  $18.875\%$  from the bank, versus  $31.25\%$  direct. The investors get a  $5\%$  expected return in either situation. The banker is happy with any claim with an expected payment above  \$400, and ends up with an expected payment of\$ 122,000.

### Summary of Financial Intermediation and Diversification

We considered three types of contracting arrangements:

1. No monitoring: a publicly traded debt contract with face=1.3125 for each borrower.  
2. Direct monitoring by investors, which saves distress costs of  $S = .2$  but costs 2.  
3. Delegated monitoring by an intermediary, which saves distress costs  $S = .2$  at monitoring plus delegation cost, .1408.

Diversification within the intermediary works to make option 3 work by reducing the liquidation cost of providing the bank an incentive to repay small investors. To simplify, we use an example where the diversification from a bank making only two loans was sufficient to give the bank reduced delegation costs. However, it is more generally true that diversification allows financial intermediation to provide low cost delegated monitoring. The law of large numbers implies that if the bank gets sufficiently diversified across independent loans with expected repayments in excess of the face value of bank deposits, then the chance that it defaults on its deposits gets arbitrarily close to zero. In the limit of a perfectly diversified bank, the bank would never default and would face no liquidation costs. In addition, the control rent needed to provide incentives to monitor approaches zero. The delegation cost for the bank approaches zero, and the only cost of intermediation is the (unavoidable) cost of monitoring. Competitive and fully-diversified intermediation would drive borrowers' expected cost of capital down to  $5.02\%$ . In the limit of perfect diversification, the face value of bank debt approaches F= 1.06275 which is the solution to .8F + .2(1)= 1.0502; it gives the bank a  $5\%$  expected return after covering the 0.0002 (\$200) cost of monitoring. This is too strong because in practice the default risk of borrowers is not independent, but is positively correlated, and because the number of loans in the bank's portfolio is limited.

### Mathematical Appendix: The General Case for monitoring versus not monitoring

If you don't like math, don't read this. It is not required. Some students like to see more generally what is making things work. This year I have yielded to these requests. Do not memorize these as formulae-- they will rot your brain.

This appendix briefly generalizes the example given above. The derivation is only sketched because the details are provided with the example given above.

## Publicly traded debt without monitoring

Debt uses the threat of liquidation to get the borrower to pay. Recall that the realized payoff of the project is  $V$  (either  $V = H$  or  $V = L$ ), and that the probability that  $V = H$  is  $P$ . The lenders will get an expected repayment of:  $Pf$  if  $f$  is between  $H$  and  $L$ , or  $f$ , if  $f$  does not exceed  $L$ . This implies that the lowest face value,  $f$ , that provides an expected repayment of  $1 + r$  is given by:

$$
\begin{array}{c c} \frac{1 + r}{P} & \text{if L <1 +r} \end{array}
$$

$$
f = \left\{\right.
$$

$$
\begin{array}{l l} 1 + r & \text{if L \geq1 +r ,} \end{array}
$$

so long as this value of  $f$  does not exceed  $H$ . If it exceeds  $H$ , the borrower cannot raise publicly-traded debt.

If there is never default on debt (because  $\mathrm{L} \geq 1 + \mathrm{r}$ ), there is no cost of financial distress. I assume that the borrower cannot issue default free debt ( $\mathrm{L} < 1 + \mathrm{r}$ ), but the borrower can raise risky publicly-traded debt ( $\mathrm{H} > \frac{\mathrm{l} + \mathrm{r}}{\mathrm{P}}$ ). Publicly-traded debt's cost of financial distress is then given by  $S = \mathrm{L}(1 - \mathrm{P})$ , because  $\mathrm{L}$  is the loss from inefficient liquidation when  $V = \mathrm{L}$ , and the probability of this is  $1 - \mathrm{P}$ .

When there is a cost to financial distress there is value to monitoring to avoid it. The saving due to monitoring is S, because a lender who monitors does not need to liquidate when  $V = L$ . Monitoring and restructuring the debt outside bankruptcy increases the borrower's payment when the project returns L from 0 to L. Monitoring can make both borrower and lender weakly better off if its cost is less than the cost of financial distress,  $S = (1 - P)L$ .

If there were many large investors willing to make and monitor loans of size 1, then monitoring would be used whenever its cost is below S. Suppose instead that all investors have wealth of  $1 / \mathfrak{m}$  and that  $\mathfrak{m} \to \infty$ , implying that all investors are small and the costs of direct monitoring are very large  $(\mathsf{mK} \to \infty)$ . Some projects will need to be funded by publicly-traded debt, unless there is a way to delegate monitoring.

As before, financial intermediation is a way to delegate monitoring by manufacturing synthetic high-wealth investors. Delegated monitoring by one banker takes place without any monitoring of the banker, because monitoring the banker costs mK. If the bank is liquidated, the value to depositors is zero, similar to the conclusion about liquidation of a borrower's assets. The banker's cost of monitoring is K per loan. As we saw above, when an unmonitored borrower's project returns L a lender receives a payment net of liquidation costs of 0. With monitoring the payment is L. Let the face value of a bank loan (a loan from the banker) be given by F, to distinguish it from the face value of a publicly traded bond, with face value f. Delegated monitoring banking is feasible only if the borrower, lenders and the banker can be made at least as well off as with publicly traded debt, and when the banker is provided with the proper incentives.

A bank that monitored a single loan with face value  $F$  would issue deposits to  $m$  lenders to raise the amount 1. The total face value of bank debt (per loan) is  $B$ , and there is one loan so total face value is  $B$ . Whenever the bank does not pay  $B$ , the bank is liquidated. Using the

bank to monitor is not a free method of making the value of V known to the public by liquidating the bank. The bank will need to diversify in order to act as a delegated monitor. This is because a bank that did not diversify would need to default on its claims whenever its single loan defaulted. I examine the diversification of making two independent and identically distributed loans, with face value F each. The bank raises deposits from 2m lenders, and these deposits have total face value of 2B.

The face value of each loan is  $F$ . The constraint that the borrower not default when  $V = H$  is:

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
\mathrm{F} \geq \frac{1 + \mathrm{r} + \mathrm{K} - (1 - \mathrm{P}) \mathrm{L}}{\mathrm{P}}. (\text{mi ni ma lc om pe ns at io nf or am on it or ed lo an})
$$

The value of the minimum face value of a publicly-traded non-monitored loan,  $f = \frac{1 + r}{P}$ , is the lowest such that an expected return of  $1 + r$  is received without monitoring. If the bank makes loans with face value below  $\frac{1 + r}{P}$ , the bank will fail if it monitors none of its loans. As a result, if the bank monitors none of its loans, the banker receives nothing. For any face value of bank debt where it is preferred by borrowers to non-monitored debt, the banker will receive at least as much profit from monitoring all of its loans as monitoring none.

To compare the banker's profit from monitoring some of its loans, note there is a positive fraction that it must monitor to avoid failure. If the fraction of loans monitored is  $\mu$ , and the bank does not default given the fraction, the banker's payoff is PF  $+(1 - P)\mu$  L-  $(1 + r) - \mu K$ , which is increasing in  $\mu$  if monitoring is worth its cost or  $(1 - P)L > K$ . When monitoring is worth its cost, the banker prefers to monitor all loans and the optimal value of  $\mu$  is 1. In the limit where the bank is

perfectly diversified, the face value of a loan is  $\mathrm{F} = \frac{1 + \mathrm{r} + \mathrm{K} - (1 - \mathrm{P})\mathrm{L}}{\mathrm{P}}$ , because otherwise a competing intermediary can be set up with a positive profit. The expected return received by the bank is  $1 + \mathrm{r} + \mathrm{K}$ , just enough to cover its cost of capital,  $1 + \mathrm{r}$ , plus its monitoring cost,  $\mathrm{K}$ .

University of Chicago

Booth School of Business

Financial Markets and Institutions

Business 35202

Douglas W. Diamond

# Class Note 4: Restructuring debt outside bankruptcy

We have seen that because public bondholders cannot make informed concessions outside bankruptcy, a structure of all public debt will get into bankruptcy court too often. The reasons are the individual bondholders' lack of information and the U.S. Federal trust indenture act. In practice, there is almost never a successful vote on these issues on public bond issues in the United States.

All private placement debt with a single lender would avoid this problem. However, the single bank lender solution is sometimes too expensive because of bank operating costs and reserve requirement type taxes on intermediation. In addition, for large borrowers, the single bank lender solution cannot be used because individual banks have a lending limit of  $100\%$  (or less) of their capital to a single borrower. Further, with only one lender, that lender may have too much power, from the borrower's point of view. In practice, large borrowers have both public and bank debt. We now examine how the inability to renegotiate public debt outside bankruptcy influences the bankruptcy decision for borrowers with public and bank debt. There are two lenders: one bank, one public.

# 1. NO PUBLIC DEBT CONCESSIONS AT ALL

The easiest case is when the public can never make a concession. This implies the use of bankruptcy court and possibly liquidation whenever there is a default. The only party who can make concessions outside bankruptcy is the bank lender. In practice, the bank loans are short term and senior, the public is long term and junior to the bank. Later in the course, we will examine why this is the structure that is commonly used. For now, we will just look at the structure's implications for restructuring debt outside bankruptcy. If the public never makes a concession, the bank decides whether to make a concession of its own to stay out of bankruptcy, or instead to force the borrower into bankruptcy. If the bank forces bankruptcy, then it is paid from the bankruptcy proceeds by its specified priority (it is senior). The bank debt is maturing today and needs to be refinanced. The public debt is long-term, and matures in the future.

The future ("date 2") value of the firm is 2, 1, or 0, with probability  $q_2$ ,  $q_1$ , and  $q_0$  respectively. The current going concern value of the firm is then  $2q_2 + q_1$ .

Let  $q_2 = .2$ ,  $q_1 = .6$  and  $q_0 = .2$ . The going concern value,  $V_{\mathrm{GO}}$ , is the  $2(.2) + .6(1) = 1.0$ .

If the firm gets into bankruptcy court, some going-concern value is destroyed. Let  $L$  be the value if the firm gets into bankruptcy. This can be interpreted as the value that the firm will sell for if liquidated, or the value under current management net of direct and indirect costs of bankruptcy.

The face value of maturing bank debt is B, the face value of public debt (which matures in the future, on date 2) is P.

# Example 1: Going concern value may be lost.

Let the value in bankruptcy be  $\mathrm{L} = .4$  (this example holds for all L exceeding .26).

The going concern value,  $\mathrm{V}_{\mathrm{GO}}$ , is 1, but this can be achieved only if the bank does not force bankruptcy now. There are two ways the firm can avoid bankruptcy, it can fully repay the bank, or it can convince the bank to make a concession.

The Bank is owed  $\mathrm{B} = .3$  and the loan matures today. The Public is owed  $\mathrm{P} = 1.6$ , maturing on date 2. There is no current interest payment owed the public (it has already been paid).

If the firm gets into bankruptcy court, the firm will be worth only  $\mathrm{L} = .4$ . The difference  $\mathrm{V}_{\mathrm{GO}} - \mathrm{L} = 1 -.4 = .6$  is the going concern value at risk if no agreement can be reached outside bankruptcy.

Suppose that the bank extends the maturity of its loan to date 2, and keeps the face value equal to .3. It is senior, and gets paid .3 when the firm is worth 1 or 2. Therefore it will get .3 with probability .8, and the claim is worth  $.8(.3) = .24$ . The bank would not accept this because it can get paid in full by forcing bankruptcy (it is senior, and L exceeds B).

There is a third option (besides bankruptcy or extending maturity with face .3). This is to extend maturity and increase the face value of the debt (increase the interest rate). However, the existence of the public debt limits how much the bank can obtain by increasing the face value.

The public debt has a covenant that prohibits issuing future debt that is senior to it (this is sometimes called a "me first" rule). Although the bank debt is senior to the public debt, the me first rule limits the part of the future cash that can go to the bank. The bank has a senior claim of  $\mathrm{B} = .3$ , then the public has a claim on  $\mathrm{P} = 1.6$ . Any new claims that the borrower issues (to the bank or to other lenders) must be junior to the public.

This implies that the most the bank can receive from the borrower at date 2 is .4. It can get .3 by extending the maturity of the senior claim that it already has. Any other claim would be junior to the public. The public's claim of 1.6, plus the bank's senior claim of .3, adds up to 1.9. The maximum value

of the firm is 2, implying that at most an additional  $2 - 1.9 = .1$  can be paid to the bank. This .1, plus the .3 senior claim add up to .4.

If the bank took this junior claim on .1 in addition to its senior claim on .3, its payoff would be as follows. If the firm is worth 1, it would get .3 (because its junior claim would be worthless). If the firm is worth 2, it would get .4. The expected value of its claim is then  $.2(.4) + .6(.3) = .26$ .

Because the bank can get  $\mathrm{B} = .3$  (which is more than .26) from forcing bankruptcy, it will force bankruptcy and destroy the going concern value.

The public can make no concessions. Therefore the public cannot prevent the bank from forcing bankruptcy, and the going concern value will be destroyed.

# Example 2: Maybe Going Concern Value will be preserved.

Example 2a: Even more going concern value is at risk

Keep everything from the first example, except make bankruptcy even more inefficient. Let the value of the firm in bankruptcy be  $\mathrm{L} = .2$ . Now the bank will not force bankruptcy. This is because the value of extending maturity and taking the junior claim of .1 is worth .26 (see above), which is worth more than .2. Suppose bankruptcy is even more inefficient, and  $\mathrm{L} = 0$ . Then the bank would never force bankruptcy when making a concession gives it something in the future.

Example 2b: Less public debt, but same total amount of debt

(This puts the bank at sufficient risk)

Keep everything from example 1 except let the amount of bank debt be  $\mathrm{B} = .5$  and the amount of public debt be  $\mathrm{P} = 1.4$ . Note that  $\mathrm{L} = .4$ . The amount of total debt is still 1.9, but less of it is public debt. The public makes no concessions.

The bank can force bankruptcy and get  $\mathrm{L} = .4$  (because the bank is senior). Alternatively, it can extend maturity on its senior claim on .5 to date 2, and take an additional claim junior to the public. This junior claim is worth at most .1 (2-1.9), as in example 1. The value of the bank's claim if it does not force bankruptcy is as follows. If the firm is worth 1, it receives .5. If the firm is worth 2, it receives .6 (.5+.1). The expected value of the bank's claim is  $.2(.6) + .6(.5) = .42$ . This exceeds the .4 that the bank gets in bankruptcy.

What matters is the value at risk from going into bankruptcy relative to the amount of public debt. It is not just the size of the value at risk. If the amount of public debt is large relative to the value at risk, then the value at risk will be destroyed.

In the next class note, we examine exchange offers of one public debt issue for another as a way of forcing concessions by the public.

# University of Chicago Booth School of Business

Financial Markets and Institutions Douglas W. Diamond Business 35202

# Class Note 5: US Bankruptcy Rules

Now I want to highlight some of the most important features of the rules when actually filing for bankruptcy under chapter 11.

1. Automatic Stay of all Creditor claims. This prevents a rush to foreclose ahead of the other creditors, which would have all creditors trying to get effective priority by getting paid first in time. This allows an orderly renegotiation of claims without giving excess bargaining power to the lenders whose claims are due immediately (or those who can call their loans and make them due immediately, or trade creditors who can take away supplies to protect their claim).
2. Debtor in Possession Financing. This allows new debt to come in senior to all unsecured debt in place before the filing. This allows the firm access to cash to continue operations. This would have been impossible outside bankruptcy if the existing debt had negative pledge clauses that the existing lenders were unwilling to waive.
3. The debtor in possession (typically the management) has the exclusive right to propose reorganization plans for the first 120 days of the bankruptcy. The bankruptcy judge can extend this exclusive period. This gives the debtor substantial bargaining power because the firm's profits are reduced by longer periods in bankruptcy, and the power to delay is then the power to destroy value. Other creditors are then willing to vote for plans that are more pro-borrower than they would be otherwise, because if they vote no, they must wait longer for a better plan to be proposed. It is rare and difficult for creditor-originated plans to be proposed even after the exclusive period expires. The rules require a formal appraisal only for creditor-proposed plans.
4. Voting not only can be used, it must be used. Outside bankruptcy, the trust indenture act prohibits a majority vote from imposing concessions on holdouts. The chapter 11 rules impose concessions on holdouts if  $50\%$  of each class of lender,

representing at least  $2/3$  of the dollar value of each class, vote in favor of the plan. This imposes the will of the majority on minority holdouts. Note that only "impaired classes" get to vote. Classes that make no concessions and lose no priority or collateral then would not be able to vote. Because all impaired classes vote, there will generally be violation of absolute priority among unsecured creditors in the form of larger than absolute priority payments to very junior classes to attract their vote. Absent a difficult to get "cram down," the junior creditors can delay and this makes it worth giving them something.

5. There is substantial discretion in setting up the definition of a class. Secured lenders are entitled to be a class by themselves, but the plan proposed by the borrower has substantial freedom to choose how to group unsecured creditors into classes. This implies that the only sure way to get priority over another class is for the senior class to be secured.
6. Lenders do not accrue interest during bankruptcy. This provides them with an incentive to settle quickly. The only exception is secured creditors who are pledged collateral worth more than they are currently owed.

# Class Note 6: Restructuring public debt out of bankruptcy: Exchange Offers Includes Note 6A: Coercive exchange offers and exit consents at the end

The primary way that borrowers and banks try to get concessions from the public is to get the public to exchange their bond for one that requires a smaller payment (i.e., either a principal, interest or maturity concession). Although the Federal Trust Indenture Act prohibits such concessions by voting, it does not prohibit exchange offers.

Because the public consists of many small holders, each holder may assume that he is so small that his decision to tender his bond for exchange will not influence the outcome of the exchange offer. As a result, each decides by comparing the value of the new security with the value of the old security that is expected to prevail after the exchange offer. This evaluation of the future value is made by making a forecast of how much of the issue will be exchanged by other holders.

# Example 3: Public exchanges for junior securities tend to fail.

Keep everything from example 1: going concern value of  $\mathrm{V}_{\mathrm{GO}} = 1$ , bankruptcy value of  $\mathrm{L} = .4$ . The Bank is owed  $\mathrm{B} = .3$  and the Public is owed  $\mathrm{P} = 1.6$ . The public is junior and long-term. If the public does not make a concession, we saw in example 1 that the bank will force bankruptcy, and the public will then get  $\mathrm{L} - \mathrm{B} = .4 - .3 = .1$ . Suppose that the public is offered the chance to exchange for a bond with face  $\mathrm{P}' = 1$ , and the bank agrees not to force bankruptcy if the exchange succeeds. Suppose that the offer succeeds if 99% of the bonds are exchanged. Let "f" denote the fraction of the total bond issue that you expect to be exchanged by other holders.

The key point in this example is to look at the case where the new bonds (with face  $P' = 1$ ) are junior to the old bonds with face  $P = 1.6$ . The bank's claim of .3 remains senior to the public.

Suppose that you own  $1\%$  of the old bonds, with face value .016. Your return from tendering of holding out depends on whether you expect the exchange offer to succeed in keeping the firm out of bankruptcy.

1. Suppose that you expect the offer to succeed, for example because every other holder tenders, and  $f = .99$ . You choose between tendering and "holding out" by not tendering.

A. To determine what you get if you tender, do the following calculation. If you tender, then all are tendered. Your new bond is paid (1% of) 1 when the firm is worth 2, and worth (1% of)  $1 - .3 = .7$  when the firm is worth 1 (this is because the bank has a senior claim on .3). The expected value of this claim is (1% of)  $0.2(1) + .6(.7) = .62$ . 1% of .62 is .0062.

B. If, instead, you hold out and refuse to tender the bond, the offer will still succeed (because only  $99\%$  is needed). Then your bond is senior to the public bonds that tender: you will get paid before those that tender when the firm is worth 1. The bank is first paid .3, leaving  $1 - .3 = .7$ . This means you

are paid the full face value of .016 if you hold out instead of exchanging. You receive .016 when the firm is worth 1 and when it is worth 2: as a holdout, you receive .016 with probability .8, an expected value of .0128. This exceeds the .0062 that you get from tendering your bond.

Therefore, if you expect the exchange offer to succeed you will not tender because your claim will be worth more if you hold out! If all bondholders expect the offer to succeed, none of them will tender. A prophesy that the offer will succeed is not self-fulfilling!

2. Consider the case where you expect the exchange offer to fail (less than  $98\%$  of bonds exchanged:  $f < .98$ ). If the offer fails, the bank will force bankruptcy. The firm will then be worth  $L = .4$ . After the bank is paid its .3, there remains .1 to be divided among the public.

If you hold out, and so does everyone else, you get  $1\%$  of .1. If you hold out and anyone exchanges, you get more than  $1\%$  of .1, because the holdouts are senior and are paid first. If more than  $93.75\%$  exchange  $(f > .9375)$ , the holdouts (who are senior) get paid in full (then  $1 - f < .0625$ , and  $6.25\%$  of  $1.6 = .1$ ).

If you exchange, you get nothing if less than  $93.75\%$  of the others exchange; holding out dominates this. If more than  $93.75\%$  exchange, the holdouts get paid in full, and if you exchange for a reduced face value you do not, implying that you prefer to hold out.

No matter what fraction of others you expect to exchange, you prefer to hold out. One is always worse off with a junior claim with lower face value, so here you would still not tender.

Exchange offers for junior securities with lower face value will always fail if aimed at small holders. The small holders each expect that their decision to exchange will not tip the balance between the offer succeeding (staying out of bankruptcy) and failing (going into bankruptcy). In the example, you do not influence success unless you expect more than  $98\%$  but less than  $99\%$  of others to exchange. If you do not tip the balance, you never prefer a new bond with lower face value and lower priority, because it is never worth more than the old bond.

If, instead, the bonds you exchange for are equal in priority to the original bonds, the same arguments apply. If the offer succeeds, or if it does not, you are better off with an equal priority claim of higher promised payment (which you get by holding out and not tendering), because when there is equal priority the payment is proportional to the amount promised. You would only tender for a junior security if you though that your bond would tip the balance between the bank forcing bankruptcy and not forcing bankruptcy.

# Example 4: Public exchanges for Senior securities are more successful, if allowed.

Keep everything from the last example, except let the bonds with face  $\mathrm{P}^{\prime} = 1$  offered to the public in exchange for their bonds with face  $\mathrm{P} = 1.6$  be senior to the original 1.6 bonds. This means that if you exchange for the new bond, you will be paid prior to those who hold out. This added priority is not relevant when the firm is worth 0 (all bonds are worthless) or when the firm is worth 2 (both the bonds

with face  $\mathrm{P} = 1.6$  and those with  $\mathrm{P}' = 1$  are paid in full). The added priority is useful when the firm is worth 1. I now examine the relative value of senior bonds with  $\mathrm{P}' = 1$  and junior bonds with face  $\mathrm{P} = 1.6$ , when the firm is worth 1.

As before, suppose that you own  $1\%$  of the bonds, and you expect all of the other bonds to tender  $(f=.99)$ . If you tender, all of the bonds are tendered, and you get  $1\%$  of  $1 - B = 1 - .3 = .7$ , or .007. Your expected return from tendering is then  $(1\% \text{of}) q_2 P' + q_1 (1 - B) = (1\% \text{of}) .2(1) + .6(.7) = (1\% \text{of}) .62$ . This is .0062.

If you hold out, then those who tender are senior to you. When the firm is worth 1, the public as a whole gets  $1 - \mathrm{B} = 1 - .3 = .7$ . There are bonds with face value of (99% of) 1, senior to you, they are owed .99, but get only .7. Therefore, as a holdout you will get nothing when the firm is worth 1.

By holding out, you will get  $\mathrm{P} = 1.6$  when the firm is worth 2, and nothing otherwise. Your expected payment from holding out is then (1% of)  $\mathrm{q}_1\mathrm{P} = (1\%$  of).2(1.6), or .0032. This is less than the .0062 that you obtain from exchanging your bond. Therefore if you expect the offer to succeed, you exchange. A prophecy that the offer to exchange will succeed is self-fulfilling.

When the new security offered in exchange is senior to the old, there is a lower payment received by the old security whenever the new one is not paid in full. This is in contrast to the case where the new security is junior, and the old one gets more than the new whenever the new is not paid in full. This makes small holders willing to join in the bond exchange. Exchanging for a senior security can put the bondholders in a rush to exchange to jump ahead of the holdouts. I will later show that rushing to exchange for something senior is very similar to a bank run.

Now consider what happens when the offer is expected to fail (less than  $98\%$  of the bonds are tendered:  $\mathbf{f} < .98$ ). If the exchange offer is expected to fail (leading to bankruptcy), you will want to exchange. The reason follows. If you exchange you divide L-B  $(= .4 - .3 = .1)$  with the others who exchange (a positive number). For example, if others representing less than  $9\%$  exchange, and you exchange too (a total of  $10\%$  or less exchange), then those who exchange are paid in full (because those who exchange and are senior are owed less than .1). You get  $1\%$  of  $1 = .01$  if you exchange. If you hold out, those who exchange get paid first, and you divide L-B-  $\mathrm{fP^{\prime}} = .1 - \mathrm{f}$ , among the other holdouts (unless  $\mathrm{f} > .1$  and this is a negative number, and holdouts get nothing). The other holdouts represent a fraction 1-f of the bond issue, and you represent a fraction .01. If you hold out, you then get a fraction .01/(1-f) of L-B- $\mathrm{fP^{\prime}} = .1 - \mathrm{f}$ . If  $\mathrm{f} = 0$ , this is exactly .001 (1% of .1), and it is less than .001 for all greater values of f. Therefore, you will exchange. If you expect that f will exceed .1, you get nothing if you hold out, and something positive if you exchange. For all values of f, you are better off exchanging.

# Note 5A:

# Coercive exchange offers and exit consents.

See the Kahan and Tuckman paper in the packet.

An exit consent vote is one where a change in covenants is combined with an exchange offer where a new bond is given in exchange for the old bond if and only if one votes to change the covenants in the old. As a result, those who are exiting the old bond are the ones choosing to change its covenants. If a holder prefers the new bond given his or her belief that the vote will pass, any reduction in the value of the old bond will not matter (because he or she will hold the new bond).

Suppose there is an exit consent vote that will pass if  $\mathrm{M} + 1$  bondholders vote yes and tender their bond in exchange for a new one. The deal is structured so that you may only get the new bond if you vote to change the covenants in the old bond to make it drop in value. If fewer than M other holders tender, you can't make it pass, if  $\mathrm{M} + 1$  or more tender, it passes no matter what you do.

Value of bond as it stands  $=$  B

Value of new bond that you get if you tender, vote yes and the vote passes:  $\mathrm{B}_{\mathrm{n}}$

Value of old bond if the consent vote passes (some covenants are removed): B'

Payment for consent vote, in addition to new bond  $= \mathfrak{p}$ . This is called the consent payment.

If you hold it all the issue, you compare  $\mathbf{p} + \mathbf{B}_{\mathfrak{n}}$  to B.

There are N old bondholders, it passes if  $\mathbf{M} + 1$  holders accept the new bond and vote to change the covenant.

If you expect less than M to accept, you expect to have the tender fail, and even if you tender you get the old bond back. As a result, you get B no matter what. It does not matter if you tender or not.

If you hold the bond and expect more than  $\mathrm{M} + 1$  to accept and tender their bonds, you get  $\mathrm{B}'$  if you keep the old bond, and  $\mathrm{p} + \mathrm{B}_{\mathrm{n}}$  if you take the new one. Call this expecting the consent vote to succeed.

If you expect the consent vote to succeed, you will tender if and only if  $\mathbf{p} + \mathbf{B}_{\mathfrak{n}} > \mathbf{B}'$

This might be coercive, if the old bond drops in value by more than the cash payment  $(\mathfrak{p} + \mathrm{B}_{\mathrm{n}} < \mathrm{B})$

You would tender here, even though you would not if you owned the total bond issue. That is if  $p + B_n < B$  while  $p + B_n > B'$ .

Example 1. Suppose there was no trust indenture act, and the exit consent vote was to set the principal and interest of the old bond to zero: that is  $\mathbf{B}' = 0$ . Suppose that there is no consent payment,  $p = 0$ . And suppose that you expect the consent vote to succeed, you tender if  $\mathbf{p} + \mathbf{B}_n > \mathbf{B}'$ , which is  $\mathbf{B}_n > 0$ . You will take a bond worth a penny if you expect the old bond to be made worthless. Perhaps this is the scenario that made them pass the trust indenture act!

Example 2 If there are no covenant changes in the old bond, the consent payment is zero, and the new bond is junior to the old bond and has a lower face value, as in class note 4. Here the offer will fail because the new bond is worth less than the old bond will be worth if others exchange their bonds:  $\mathrm{B}_{\mathrm{n}} < \mathrm{B}^{\prime}$ .

Example 3 If there are no other covenant changes in the old bond, the consent payment is zero, and the new bond is senior to the old bond and has a lower face value, as in class note 4, then it is possible that the offer will succeed. The reason is that  $\mathrm{B}_{\mathrm{n}}$  may exceed  $\mathrm{B}'$ . In the example in note 4, exchanging the old bond with face  $\mathrm{P} = 1.6$  for a new bond with face value  $\mathrm{P}' = 1$  resulted in success.

Suppose you own 1/100 of the old bond, with face value .016, you are offered a new senior bond with face value .01. If you expect everyone else to take the new bond, we saw that their face value of .99 will be senior to you, and you get zero unless the firm is worth 2 in the future.

The value of the old bond,  $\mathbf{B}^{\prime}$ , drops to  $0.2(.016) + 0.8(0) = 0.0032$ .

The new bond is worth  $\mathrm{B_n =0.2(.01) +0.6(1 -B) /100 +0.2(0) =0.2(0.1) +0.6(0.007) =}$  0.0062.

Thus the new bond is of higher value.

If the new senior bond had a smaller face value of  $\mathrm{P}' = 0.5$ , the offer would fail, because it would not reduce the payment to the old junior bond in the case where  $\mathrm{V} = 1$ .

The new bond with face value  $\mathrm{P}' = 0.5$  is small enough that it will be paid in full when  $\mathrm{V} = 1$  as well as  $\mathrm{V} = 2$ , because there is 0.7 left when  $\mathrm{V} = 1$  after the bank takes 0.3. More importantly, it allows the old (junior) bond to be fully repaid when  $\mathrm{V} = 1$ .

Your 1/100 part of the new bond has face value  $\mathrm{P}^{\prime} = 0.005$  and would be worth

$$
\mathrm{B}_{\mathrm{n}} = 0. 2 (0. 0 0 5) + 0. 6 (0. 0 0 5) + 0. 2 (0) = 0. 8 (0. 0 0 5) = 0. 0 0 4.
$$

The old bond with face value 0.016 would be paid in full when  $\mathrm{V} = 2$  and when  $\mathbf{V} = \mathbf{1}$  because there is .7 left after the bank, and  $0.99(0.5) = 0.495$  of debt is senior to you (99% are assumed to take the 0.5 face value senior bond). This leaves  $0.7 - 0.495 = 0.205 > 0.016$  to pay your bond, so the value of the old bond is:

$\mathrm{B}^{\prime} = 0.2(0.016) + 0.6(0.016) + 0.2(0) = 0.0128.$  The loss of priority does not reduce the value of the old bond here.

Think of the extreme case where the new bond had zero face value. A bond with face value zero does

not causes pain by coming in senior to you! In that case  $\mathrm{B}_{\mathrm{n}} = 0$  and  $\mathrm{B}' = \mathrm{B}$ .

# Financial Intermediation as Delegated Monitoring: A Simple Example

Douglas W. Diamond

Banks and other financial intermediaries are the main source of external funds to firms. Intermediaries provided more than 50 percent of external funds from 1970 to 1985 in the United States, Japan, the United Kingdom, Germany, and France (Mayer 1990). Why do investors first lend to banks who then lend to borrowers, instead of lending directly? What is the financial technology that gives the banks the ability to serve as middleman? To answer these questions, this article presents a simplified version of the model in Financial Intermediation and Delegated Monitoring (Diamond 1984). The results explain the key role of debt contracts in bank finance and the importance of diversification within financial intermediaries. The framework can be used to understand the organizational form of intermediaries, the role of banks in capital formation, and the effects of policies that limit bank diversification.

Financial intermediaries are agents, or groups of agents, who are delegated the authority to invest in financial assets. In particular, they issue securities in order to buy other securities. A first step in understanding intermediaries is to describe the features of the financial markets where they play an important role and highlight what allows them to provide beneficial services. It is important to understand the financial contracts written by intermediaries, how the contracts differ from those that do not involve an intermediary, and why these are optimal financial contracts. Debt contracts are central to the understanding

of intermediaries. The cost of monitoring and enforcing debt contracts issued directly to investors (widely held debt) is a reason that raising funds through an intermediary can be superior. Debt contracts include contracts issued to intermediaries by the borrowers that they fund (these are bank loans) and the contracts issued by intermediaries when they borrow from investors (these are bank deposits). Portfolio diversification within financial intermediaries is the financial-engineering technology that facilitates a bank's transformation of loans that need costly monitoring and enforcement into bank deposits that do not.

This article both simplifies and extends the analysis in Diamond (1984). Adding an assumption about the probability distribution of the returns of borrowers' projects makes the analysis simpler. There are a few new results that extend the analysis because this article drops the assumption that nonpecuniary penalties can be imposed on borrowers. The change of assumption implies that there is a minimum level of bank profitability required to provide incentives for bankers to properly monitor loans. This article is not a general survey of the financial intermediation literature. Two recent surveys are Hellwig (1991) and Bhattacharya and Thakor (1993). For a survey of the role of debt in corporate finance, see Lacker (1991).

Intermediaries provide services: this is clear because intermediaries issue "secondary" financial assets to buy "primary" financial assets. If an intermediary provided no services, investors who buy the secondary securities issued by the intermediary might as well purchase the primary securities directly and save the intermediary's costs. To explain the sorts of services that intermediaries offer, it is useful to categorize them in terms of a simplified balance sheet. Asset services are those provided to the issuers of the assets held by an intermediary, e.g., to bank borrowers. An intermediary that provides asset services is distinguished by its atypical asset portfolio. Relative to an intermediary that provides no asset services, it will concentrate its portfolio in assets that it has a comparative advantage in holding. The model presented below provides a foundation for understanding this aspect of intermediation, showing that reduced monitoring costs are a source of this comparative advantage.<sup>3</sup> There are other important aspects of intermediation that we do not discuss here: liability services and transformation services. Liability services are those provided to the holder of intermediary liabilities in addition to the services provided by most other securities. Examples include the ability to use bank demand deposits as a means of payment and the personalization of contingent contracts available from life insurance companies. Some liability services, such

as check clearing, are well understood, while others relate to difficult issues in microeconomic theory regarding the role of money. Transformation services involve the conversion of illiquid assets into liquid liabilities, offering improved risk sharing and better liquidity compared with investment in the assets held by intermediaries (see Diamond and Dybvig [1983] and Diamond [1995]). Although there may be interactions between these types of service, this article focuses only on asset services.

If intermediaries provide asset services, they provide services to borrowers who issue assets to them. That is, it matters to the issuer of an asset that the asset is to be held by an intermediary rather than directly by investors. Some costs are lower if the asset is held by an intermediary rather than a large number of individuals. The imperfections that give rise to costs of issuing securities by primary borrowers also give rise to similar costs to an intermediary that issues deposits. I examine how a financial intermediary acting as a middleman can lead to net cost savings, and I develop the implications of this role for the structure of intermediaries. The model yields strong predictions about the contracts used by intermediaries and this provides a setting to analyze important issues in banking policy.

# 1. AN OVERVIEW OF FINANCIAL INTERMEDIATION: THE COSTS AND BENEFITS OF MONITORING

Theories based on the collection of private information by an intermediary require that there be some benefit to using this additional information in lending. A key result in the agency theory literature is that monitoring by a principal can allow improved contracts. The net demand for this monitoring also depends on the cost of monitoring. This cost depends on the number of lenders who contract with a given borrower.

In contracting situations involving a single lender and a single borrower, one compares the physical cost of monitoring with the resulting savings of contracting costs. Let  $K$  be the cost of monitoring and  $S$  the savings from monitoring. When there are multiple lenders involved, either each must be able to monitor the additional information directly at a total cost of  $m \times K$ , where  $m$  is the number of lenders per borrower, or the monitoring must be delegated to someone.<sup>4</sup> Delegating the monitoring gives rise to a new private information problem: the person doing the monitoring as agent now has private information. It is not even verifiable whether the monitoring has been undertaken. Delegated monitoring can lead to delegation costs. Let  $D$  denote the delegation cost per

borrower. A complete financial intermediary theory based on contracting costs of borrowers must model the delegation costs and explain why intermediation leads to an overall improvement in the set of available contracts. That is, delegated monitoring pays when

$$
K + D \leq \min  [ S, m \times K ],
$$

because  $K + D$  is the cost using an intermediary,  $S$  is the cost without monitoring, and  $m \times K$  is the cost of direct monitoring.

The model in this article illustrates the more general results in Diamond (1984), which analyzes delegation costs by characterizing the organizational structure and contractual form that minimize the costs of delegating monitoring to an intermediary. The first step in studying the benefits of intermediation is to find the best available contracts between borrowers and lenders if there is no intermediary and no monitoring. The optimal unmonitored financial contract between a borrower and lenders is shown to be a debt contract that involves positive expected deadweight liquidation costs which are necessary to provide incentives for repayment.<sup>5</sup> The gross demand for monitoring arises because one can use lower cost contracts (with reduced liquidation costs), if the project's return can be monitored, with an ex ante cost saving of  $S$ .

Monitoring is costly, especially if duplicated. If not duplicated, the act of monitoring must be delegated, and then the information obtained is not publicly observed. As a result of the remaining information disadvantage of those who do not monitor, there may be delegation costs associated with providing incentives for delegated monitoring. The best way to delegate monitoring is for the delegated monitor to issue unmonitored debt, which will be subject to liquidation costs. The delegated monitor is a financial intermediary because it borrows from small investors (depositors), using unmonitored debt (deposits) to lend to borrowers (whose loans it monitors).

# 2. AN EXAMPLE OF OPTIMAL DEBT WITHOUT DELEGATED MONITORING

Consider a borrower who needs to raise a large quantity of capital. All lenders and borrowers are risk neutral, but borrowers have no capital, and each lender's capital to invest is small relative to the amount needed to fund the borrower's investment. The borrower needs to raise 1 (where the units are millions of dollars, and these units will be mentioned only parenthetically), while each investor has  $1/m$  units to invest, implying that a borrower needs to raise capital from  $m$  investors if  $m > 1$ . The example assumes that  $m$  is very large:  $m = 10,000$ ,

and each lender has capital or 0.0001 ( \$100). Monitoring the borrower costs \(K = 0.0002\$  (\)200), and duplicated monitoring by each of  $m$  investors costs  $mK = 2$  and is prohibitively expensive. Because monitoring is expensive, one should examine the best contract available without any monitoring.

Investors do not observe the borrower's operations directly, not even its sales or cash flows. How can the lenders write a contract in which they do not need to monitor this information?

# The Best Contract without Monitoring

The firm needs to raise 1 (\(1 million), and each investor requires an expected return of \( r = 5\% \). All lenders and the borrower agree that the borrower has a profitable, positive net present value project to fund, but only the borrower will observe how profitable it turns out to be. The borrower can consume any part of the project's return that he does not pay out to the investor. The interpretation is that the borrower can appropriate the return to himself, since no one else observes the project's success. If the project is a retail store, the borrower can take some sales in cash to himself. More generally, the borrower can inflate costs. In practice, the net cash flows to the firm are very unobservable for many firms. In addition, most other conflicts of interest faced by borrowers can be reinterpreted as equivalent to the borrower's ability to retain underreported cash. The ability to retain underreported cash is simply the most extreme example of a conflict of interest.

The project costs 1 to fund, and its realized value is a random variable with realization denoted by  $V$ . The distribution of  $V$ , the value of the project, known to all borrowers and lenders is

$$
\begin{array}{l} H = 1. 4 \text{mi ll on ,w it hp ro ba bi li ty} P = 0. 8, \\ L = 1 \text{mi ll on ,w it hp ro ba bi li ty} 1 - P = 0. 2. \\ \end{array}
$$

# A Simple Candidate for a Contract is Equity

An equity contract in this context is a profit-sharing agreement, where the profit shared depends on the profits reported by the borrower. Let the fraction of reported profits that goes to the outside investor be  $a$ , while the borrower retains a fraction  $1 - a$ , plus any underreported profits. Suppose that the borrower's contract is just to pay a fraction of reported profits, with no other details or penalties specified. The borrower's payoff, given the true value of  $V$  and the reported value, denoted by  $Z$ , is  $V - aZ$ . What profit will the borrower report if he is supposed to pay out a fraction of it? The borrower will choose the smallest value of  $Z$ . Supposing that the borrower can't make the lender take a share of a reported loss (by reporting  $Z < 0$ ), the borrower will report  $Z = 0$ . A simple profit-sharing contract works very poorly when profits cannot be verified. It does not even provide incentives to repay  $L = 1$ , the minimum possible value

of profit. Even adding the requirement that profit reports can never be less than  $L = 1$  does nothing to induce higher payments.

No matter what the true value of  $V$ , the best response of the borrower to a profit sharing contract is to pay the lowest possible value. If there is no cost to the borrower of understating the amount, the borrower always does. Even if the lender knows the value of  $V$ , if the borrower obtains it first and thus controls it, the lender will not be paid unless the borrower suffers some consequence of not paying.

# What Can the Lender Do If the Borrower Claims a Low Amount?

The lender would like to impose a penalty for low payments to give incentives for higher payments. There are two interpretations. The lender can liquidate the project if the borrower pays too little, preventing the borrower from absconding with it, or the lender can impose a nonmonetary penalty on the borrower. Bankruptcy in the world today is some combination of these two actions. In ancient history, the nonmonetary penalties were very common, i.e., debtors' prisons and physical penalties. Such sanctions are now illegal, but the loss of reputation of a borrower of a bankrupt firm is similar to a sanction.

# Bankruptcy, Liquidation, and the Optimal Liquidation Policy

Suppose that it is not possible to impose a penalty on the borrower or take other assets (outside the business) that are valued by the borrower. See Diamond (1984) for analysis when these nonpecuniary penalties are possible. The only sanction available to give the borrower an incentive to pay is liquidation of the borrower's assets (as in Diamond [1989, 1991]). To focus on the inefficiency of disrupting firm operations, I assume that liquidating the firm's asset gives no proceeds to the lender or to the borrower. The results are similar when liquidation yields a positive amount that is much less than the value of the unliquidated asset. Liquidation and bankruptcy are useful penalties that a borrower can avoid by paying the debt, but regular liquidation is not a good way to run a firm. How does one specify an optimal financial contract between investor and borrower when one can decide to liquidate (to penalize the borrower) or not, contingent on any payment?

Liquidation is best used as a payment-contingent penalty in the following way. If the lender is ever to liquidate for a given payment, he also should liquidate for all lower payments. Suppose instead that the lender does not liquidate if 1 is paid but will liquidate for some higher payment. Then, whenever the borrower has at least 1, he will avoid liquidation by paying 1 and keep the remainder for himself. This makes meaningless the threat to liquidate given higher payments, because the payment will never exceed 1.

The borrower will pay the lowest amount that avoids liquidation, and keep the rest for himself. The only exception is if the borrower has insufficient funds

to pay that amount. This implies a description of the optimal financial contract without monitoring: select a payment,  $f$ , that, if paid, avoids liquidation. The lender then liquidates for all lower payments. This implies that the optimal contract when monitoring is impossible is a debt contract with face  $f$ . The face value includes the promised payment of principal and interest.

# Determination of the Face Value of Unmonitored Debt

This section determines the minimum face value, \( f \), of unmonitored debt which will lead to payments with an expected return of 5 percent on a loan of 1 (\(1 million), or an expected value of 1.05.

Suppose  $\mathbf{f} = 1$ . When  $V = 1$ , the borrower pays 1 (paying less would result in liquidation). The borrower gets 0, which is as much as if he paid any lower amount. When  $V = 1.4$ , the borrower pays 1 (to avoid liquidation), and keeps 0.4 for himself. This implies that with face value of 1, the lender gets 1 for sure, which is less than 1.05 and not acceptable.

Any face value of debt between 1 and 1.4 forces the borrower into liquidation when the project returns 1 but is paid in full when the project returns 1.4. This gives the lender an expected return of  $0.8f$ , because nothing is received when there is liquidation. Solving for the face value of debt (between 1 and 1.4) that gives lenders a 5 percent expected return solves  $0.8f = 1.05$  and yields  $f = 1.3125$ . Unmonitored debt with that face value works as follows.

Suppose  $\mathbf{f} = 1.3125$ . When  $V = 1$ , the borrower pays less than 1.3125, and the asset is liquidated. The borrower gets zero for any payment less than or equal to 1. The best interpretation is that the borrower chooses to pay zero when  $V = 1$  because it is the best choice when liquidation is generalized to allow the borrower to keep a positive fraction of the retained cash. This leads the lender to liquidate and receive zero, which occurs with probability 0.2. When  $V = 1.4$  the borrower pays 1.3125, avoids liquidation, and keeps  $1.4 - 1.3175 = 0.0825$  for himself. This is more than he could get from any smaller payment: any smaller payment gives zero. The payment 1.3125 is received with probability 0.8. Liquidation is only avoided when  $V = H$  and the face of 1.3125 is paid. The lender receives 1.3125 with probability 0.8 and zero with probability 0.2, which is an expected payment of  $0.8(1.3125) = 1.05$ . Any lower face value will give the lender an expected rate of return below 5 percent.

When outside investors cannot observe the cash flows and cannot monitor the business, equity contracts do not work. Enforcing them requires excessively costly monitoring. If this monitoring (sitting on the board of directors or keeping close tabs on the business in other ways) is too costly, then simple financial contracts that do not require monitoring are best. These are debt contracts. They induce the borrower to pay investors because default serves as a penalty that the borrower seeks to avoid.

The analysis can be extended to apply not only to defaults on principal and interest covenants of debt contracts but to any other covenant whose violation implies a potential default on a debt contract. Consider a covenant that might be violated for a variety of hard-to-observe reasons. When it is too costly for lenders to determine the reason for the covenant violation, the covenant will "mean what it says," and involve a default whenever it is violated, rather than being renegotiated based on the reason for the violation.

# The Value of Monitoring

Suppose that it is possible for the lender to monitor the value of the borrower's operations. Then, instead of liquidating when less than the face value of debt is paid, the lender who monitors can instead use the threat of liquidation and offer to refrain from liquidation so long as the borrower repays as much as possible. Instead of always or never offering to accept 1 in lieu of liquidation, the lender can offer to accept it when  $V = 1$  but not when  $V = 1.4$ . This policy leads the borrower to pay  $f$  when  $V = 1.4$  and 1 when  $V = 1$ . I assume that the lender has all of the bargaining power and will offer to accept less than  $f$  only when  $V = 1$ .

The value of monitoring is the expected savings in financial distress costs, which are equal to  $0.2(1) = 0.2$ . This is the savings from monitoring,  $S$ , described in Section 1. This savings must be compared with the cost of monitoring. The cost of monitoring the value of the borrower's project is  $K$ . If there were a single lender, then monitoring would cost  $K$ . Duplicated monitoring by each of  $m$  lenders would cost  $mK$  and would be equivalent to a single lender facing a monitoring cost of  $mK$ . I assume that the cost of monitoring is incurred ex ante, before a loan is repaid. Ex ante monitoring implies that the lender must learn in advance about the borrower's business to properly interpret any data about the project's return. In this case, the lender or lenders must establish a costly relationship in order to monitor the borrower. The results can be reinterpreted as also applying to ex post monitoring, where no relationship is needed and where the costs of monitoring are incurred only when the borrower defaults on the debt. If the lender or lenders can commit in advance to monitor if and only if the borrower pays less than face value, the ex ante monitoring results can be adapted as follows. In place of the fixed cost of ex ante monitoring,  $K$ , use the expected cost of ex post monitoring, which is the cost  $K$ , multiplied by the probability that the borrower must default. If the borrower knows he will be monitored given a default, he will default only when he has no choice, i.e., when  $V = 1$  (see Townsend [1979]). The ability to wait to incur the ex post cost of monitoring yields an expected cost of monitoring equivalent to an ex ante cost of monitoring of  $(1 - P)K$  or  $0.2K$ .

# 3. FINANCIAL INTERMEDIATION

If all  $m$  lenders monitor, and  $m$  is large, then the cost of monitoring is  $mK$ , and monitoring is too expensive. If there were many large investors with personal capital above 1, then monitoring at cost  $K$  would be available. With a small supply of large investors who can lend 1 on personal account (fewer such investors than profitable large projects), and no way to delegate monitoring, some projects that would benefit from monitoring will be financed with unmonitored, widely held debt. This section shows how financial intermediaries can be set up to create synthetic large investors. There will be a profit opportunity to set up such intermediaries if none are present. If there are few large investors and no intermediaries, then loans are made at 31.25 percent. Finding a way to make monitored loans at 31.25 percent can allow a banker to make a profit. If intermediation reduces the cost of making monitored loans and there is free entry, bankers will not earn excess profits but instead loan rates will be pushed down.

Suppose that there are no large investors, only small investors each with 0.0001 (\(100) to lend, and 10,000 small lenders are needed to finance 1 (\)1 million). Suppose the cost of monitoring \(V\) is \(K = 0.0002\) (\(200) for each. If each of 10,000 lenders were to monitor whenever there is a default on the loan, the cost would be 2, which is prohibitive, and no one would monitor. When the monitoring cost is prohibitive, the optimal contract is widely held debt with face value 1.3125 (see the subsection entitled "Determination of the Face Value of Unmonitored Debt"). Delegating monitoring to one agent avoids duplication, but can cause incentive problems for the agent who was delegated the monitoring task. Small lenders will not observe the effort put into monitoring, or the information monitored by the agent. The agent (let's call him or her "the banker") has a conflict of interest with the small lenders. The conflict is similar to the conflict of interest between the borrower and the small lenders. How can the monitoring task be delegated without the need to monitor the monitor? The answer is for the banker to face liquidation as a function of the amount paid to the 10,000 small lenders (depositors). This provides incentives to the banker in the same way it does to a borrower: the banker is always better off paying a sufficient amount to avoid liquidation.

Liquidation is a sanction that the banker tries to avoid. For simplicity and for symmetry with the assumption made about liquidation of borrowers' projects, I assume that liquidation of the bank is only a sanction and yields no cash to the small depositors or to the banker. There are several ways to interpret this high cost of bank liquidation. One interpretation is that when too little is paid to the depositors, the assets of the bank's borrowers are liquidated to make sure that the banker and the borrowers have not colluded to take funds owed to depositors. Another interpretation is that liquidating the bank's assets consumes all of the assets. In addition, because the banker gets zero

when there is a default on deposits, a banker who anticipates that the bank is about to fail will reduce any discretionary component of monitoring. The reduced monitoring will decrease the value of bank assets. The assumption that borrowers and lenders get zero serves as a simple shorthand for these more complicated aspects of the cost of bank liquidation.

# Delegated Monitoring without Diversification Does Not Succeed

Suppose that the banker monitors a single loan (runs a one-loan bank) on behalf of the small lenders, and does not diversify across loans. When the borrower's project returns 1, the banker can monitor and collect the 1 without actually liquidating. However, the bank itself would need to be liquidated in this case, because the face value of the bank's debt must exceed 1. If the bank's debt contract with the small depositors has a face value of 1 or less, the small depositors never receive more than 1, which delivers less that the 1.05 expected repayment they need to receive the required 5 percent expected return.<sup>6</sup> If the bank is liquidated when its loan defaults by paying 1, the bank is liquidated whenever the borrower would have been liquidated, had the borrower used widely held debt. Unless the 10,000 lenders each monitor the banker (costing 0.0002 each or a prohibitive total of 2), the one-loan bank will default and be liquidated just as often as the borrower. This one-loan bank example seems to imply that delegating the loan monitoring to the banker will not succeed.

# Can the Banker Use Diversification to Reduce Delegation Costs?

Suppose the banker monitored not one loan, but a diversified portfolio of loans. A very simple way to show the value of diversification is to examine the two-loan bank. In particular, suppose the banker monitors the loans of two borrowers whose returns are independently distributed but are otherwise just like that of the single borrower (each loan has a 0.8 probability of returning 1.4 and a 0.2 probability of returning 1). The banker attracts 2 (\(2 million) in "deposits" from 20,000 investors and lends it out to two different borrowers. The banker gives each borrower a debt contract with face \(F\) (\(F million) and collects \(F\) when the borrower has 1.4 and monitors to collect 1 when the borrower has 1. As a result, the banker does not need to use costly liquidation to enforce his loan contract with either borrower. The banker issues unmonitored debt

deposits that are widely held, and the bank is liquidated whenever it pays less than face value to any investor. This requires no monitoring by the 20,000 small investors. Let \( B \) denote the face value of bank deposits per loan, implying that the two-loan bank has total deposits of \( 2B \) and each 0.001 (\(100) deposit has face value \( \frac{1}{10,000} \) B.

Suppose the banker monitors both loans. If both borrowers pay in full, the bank will receive  $2F$ . If one defaults but not the other, the bank will receive  $1 + F$ . If both default, the bank will receive 1 from each, or 2. The diversification from having two borrowers borrow from the bank will reduce agency costs. The distribution of payments to the bank, if the banker monitors, is as follows:

<table><tr><td>Payment</td><td>Probability</td><td>Probability that Payment is ≥ this value</td><td>Explanation</td></tr><tr><td>2F</td><td>0.64[P2]</td><td>0.64</td><td>both pay F</td></tr><tr><td>F+1</td><td>0.32[2(P)(1-P)]</td><td>0.96</td><td>one pays F, one 1</td></tr><tr><td>2</td><td>0.04[(1-P)2]</td><td>1.00</td><td>both pay 1</td></tr></table>

Assume that liquidating the bank yields nothing to depositors or to the banker, similar to the liquidation of borrowing firms. The bank has total face value of deposits of  $2B$ . If the bank must be liquidated when it collects face value of  $F$  from one borrower and 1 from the other, it will be liquidated whenever at least one loan defaults, and there will be no possible savings in costs of financial distress. Alternatively, if the bank can and will pay its deposits when one loan defaults, it defaults only when both loans default, and it can reduce the probability of liquidation to  $0.04 = (1 - P)^{2}$ . To examine when payment of all deposits is possible when just one loan defaults, the total payment received by all depositors will be  $2B$  with probability 0.96 and 0 with probability 0.04. The expected payment is  $0.96(2)B$ . The initial capital needed to make two loans is 2 ( $\$2 million$ ), and it requires a 5 percent expected rate of return, implying that  $0.96(2)B = 2(1.05)$ , or  $2B = 2.1875$ , is the promised payment to 2 ( $\$2 million$ ) in deposits. Equivalently, let the promised interest rate on bank deposits be  $r_B$ . Then, because  $2B = 2(1 + r_B)$ , the promised interest rate on the bank deposit is  $r_B = 9.375\%$ .

If the bank is to be able to pay 2.1875 when one loan defaults (paying 1) and the other does not default (paying  $F$ ), then  $1 + F$  must be at least 2.1875, and the face value of each loan must satisfy  $F \geq 1.1875$ . If the bank made loans with this face value, it could avoid liquidation with probability 0.96. In summary, if the bank monitors its loans, it will have the cash and the incentives to pay bank deposits in full with probability 0.96 so long as  $F \geq 1.1875$  or the interest rate on bank loans is at least 18.75 percent.

# Will the Bank Monitor?

A remaining question is whether the banker will choose to monitor the loans. Without monitoring, the bank would not be able to offer to take 1 when only 1 is available and would instead liquidate the borrower's asset. Monitoring provides no benefit to the banker when all loans pay in full (monitoring is not needed to force a borrower to pay  $F$ ) nor when all loans default (because the bank fails and is liquidated). The entire increase in the banker's return comes from increasing the return when just one loan defaults.

If the banker who monitors obtains nothing whenever at least one loan defaults, there will be no incentive to monitor. An incentive to monitor requires that monitoring increases the bank's expected payment by at least 0.0002 (\(200) per loan. If the banker monitors neither loan, then the bank will fail when just one loan defaults, and the banker will get zero. If a loan that is monitored defaults, and the other loan does not, the banker's return will be \(1 + F - 2B = 1 + F - 2.1875\). This is the ex post increase in the banker's return due to monitoring. Monitoring one of the loans gives this increased return with the probability that it alone defaults, or with probability 0.16. Monitoring of one of the loans will be in the banker's interest if \(0.16(1 + F - 2.1875)\) exceeds the cost of monitoring or 0.0002. Monitoring one loan will pay if \(F \geq 1.18875\). Monitoring both loans gives the same increased return with the probability that one of the two loans is the only default, or with probability 0.32. Monitoring both loans is in the banker's interest so long as \(0.32(1 + F - 2.1875)\) exceeds 0.0004, which also implies \(F \geq 1.18875\). So long as the interest rate on bank loans exceeds 18.875 percent, the banker is willing to invest \$400 worth of time to monitor all loans because it increases the value of his residual claim on the bank.

The two-loan banker must earn a small profit in excess of the cost of monitoring. The need to provide the bank an incentive to monitor and to avoid bank failure when just one loan defaults (by cross-subsidizing the losses from the defaulting loan with the profit from the nondefaulting loan) leads to profits for the banker who was delegated the monitoring of the loan. The banker will monitor only if it yields a profit, and due to limited liability and limited wealth, the banker never makes deposit payments in excess of loan repayments. The need to provide incentives puts a floor on the banker's expected profit, which is sometimes called a control rent, because the banker's control of decisions requires that the rent (profit) go to him. If further diversification is not possible, either because there are just two loans or because a two-eyed banker can only monitor two loans, bank profits cannot be driven to zero by competition. The two-loan bank has the following profits. The banker gets the residual claim above 2.1875, or

$2.3775 - 2.1875 = 0.19$ , with probability 0.64, when neither loan defaults;  $2.18875 - 2.1875 = 0.00125$ , with probability 0.32, when one loan defaults; and 0, with probability 0.04, when both loans default.

This works out to a total expected payment of 0.122 (\$122,000) or (0.19)0.64 + (0.00125)0.32 = 0.122. This is a return to the banker of 0.061 per loan, which is in excess of 0.0002 the cost per borrower of monitoring, and the banker earns a control rent of 0.061 - 0.0002 = 0.0608.<sup>7</sup>

The delegation cost per borrower,  $D$ , equals the cost of financial distress of the bank or  $0.04(2) = 0.08$ , plus control rent to the banker of 0.0608 or a total of 0.1408. All parties are better off with the banker as delegated monitor. The borrower prefers to borrow at 18.875 percent from the bank, versus at 31.25 percent direct. The investors get a 5 percent expected return in either situation. The banker is happy with any claim with an expected payment above \$400 and ends up with an expected payment of \$122,000.

# Summary of Financial Intermediation and Diversification

I consider three types of contracting arrangements: (1) no monitoring: a widely held traded debt contract with face  $= 1.3125$  for each borrower; (2) direct monitoring by investors, which saves distress costs of  $S = 0.2$  but costs  $mK = 2$ ; and (3) delegated monitoring by an intermediary, which saves distress costs  $S = 0.2$  at cost monitoring plus delegation cost,  $K + D = 0.1408$ .

Diversification within the intermediary works to make option (3) work by reducing the liquidation cost of providing the bank an incentive to repay small investors. To simplify, I use an example where the diversification from a bank making only two loans was sufficient to give the bank reduced delegation costs. However, it is more generally true that diversification allows financial intermediation to provide low-cost delegated monitoring. The law of large numbers implies that if the bank gets sufficiently diversified across independent loans with expected repayments in excess of the face value of bank deposits, then the chance that it will default on its deposits gets arbitrarily close to zero. In the limit of a perfectly diversified bank, the bank would never default and would face no liquidation costs.[8] In addition, the control rent needed to

provide incentives to monitor approaches zero. The delegation cost for the bank approaches zero, and the only cost of intermediation is the (unavoidable) cost of monitoring. Competitive and fully diversified intermediation would drive borrowers' expected cost of capital down to 5.02 percent. In the limit of perfect diversification, the face value of bank debt approaches  $F = 1.06275$ , which is the solution to  $0.8F + 0.2(1) = 1.0502$ ; it gives the bank a 5 percent expected return after covering the 0.0002 (\$200) cost of monitoring. This is too strong because in practice the default risk of borrowers is not independent, it is positively correlated. In addition, the number of loans in the bank's portfolio is limited.

The general message is that diversification allows banks to transform monitored debt into unmonitored debt, delegating the monitoring to bankers. The banks' organizational form minimizes the sum of monitoring and financial distress costs.

## Policy Implications

There are important implications of this view of intermediaries. Because there are costs of bank failure, and there are incentive benefits from the bank receiving the profit derived from its monitoring, banks can increase their value by hedging or avoiding risks that they cannot control or reduce via monitoring. For example, monitoring can do nothing to influence the level of riskless interest rates. Thus, there is no incentive reason for the bank to bear general interest rate risk. The bank's high leverage means that a small loss might force a costly default. Hedging of interest rate risk is desirable, through futures markets or interest rate swaps, because it can remove risks that have no incentive value to bank managers. Banks rely on diversification to eliminate the risks of being very highly levered. Unless a risk is intimately related to their monitoring task, banks should avoid risks that are not diversifiable unless the bank can remove the risk from its balance sheet through another (swap or futures) transaction.

Diversification makes bank deposits much safer than bank loans, and in the limit of fully diversified banks with independently distributed loans, bank deposits become riskless. This suggests that even without deposit insurance, deposits ought to be very low risk. Laws that limit bank diversification remove much of the technological advantage of the banking contract. The prohibition on interstate banking in the United States, only recently eliminated, made delegation costs much larger and banks much riskier than they would be without the prohibition. The delegation cost from excessively limited diversification has two components. One is the increased probability of bank failure, which may also have contributed to the historical political pressure for deposit insurance. The other component is excessively high control rents: small undiversified banks require higher levels of future profits to remove their manager's otherwise poor incentives. This suggests that in the United States, where the economy

is large enough to have several competing, well-diversified intermediaries, the increased diversification from geographical deregulation may reduce managerial moral hazard and help eliminate the need for high future bank profits (high charter value) to provide good incentives to bankers. If this is correct, banks and similar financial intermediaries will be more stable in the future than in recent experience in the United States.

## 4. CONCLUSIONS

The purpose of this article is to clarify the roles of debt and diversification in the financial engineering that is banking. Debt has several roles related to financial intermediation. The right to liquidate on default provides any outside lender with power over the borrower, inducing the borrower to repay the debt. This power is limited by the borrower's right to repay the debt in full and remove the lender's liquidation rights. However, liquidation is potentially inefficient. If the lender cannot monitor the borrower's business, then the lender should liquidate whenever there is a default, no matter what the cause. If the lender can monitor the situation, then the ability to selectively remove the threat to liquidate in return for a concession from the borrower can provide power over the borrower without using inefficient liquidation. Financial intermediaries such as banks can centralize costly monitoring and avoid the duplication of effort of the monitoring of borrowers by small investors. Banks monitor debt (loan) contracts, and issue unmonitored debt (deposit) contracts. Diversification is the financial-engineering technology that makes monitoring of deposit contracts unnecessary when monitoring of loan contracts is necessary. This allows banks to deliver delegated monitoring. Debt, monitoring, and diversification are the keys to understanding the link between financial intermediation and delegated monitoring.

## REFERENCES

Bhattacharya, Sudipto, and Anjan V. Thakor. "Contemporary Banking Theory," Journal of Financial Intermediation, vol. 3 (October 1993), pp. 2-50.  
Boyd, John H., and Edward C. Prescott. "Financial Intermediary-Coalitions," Journal of Economic Theory, vol. 38 (April 1986), pp. 211-32.  
Diamond, Douglas W. "Liquidity, Banks, and Markets," University of Chicago CRSP Working Paper. December 1995.  
_______. "Monitoring and Reputation: The Choice between Bank Loans and Directly Placed Debt," Journal of Political Economy, vol. 99 (August 1991), pp. 689-721.

_____. "Reputation Acquisition in Debt Markets," Journal of Political Economy, vol. 97 (August 1989), pp. 828-62.  
_______. "Financial Intermediation and Delegated Monitoring," Review of Economic Studies, vol. 51 (July 1984), pp. 393-414.  
________, and Philip H. Dybvig. "Bank Runs, Deposit Insurance, and Liquidity," Journal of Political Economy, vol. 91 (June 1983), pp. 401-19.  
Fama, Eugene F. "What's Different about Banks?" Journal of Monetary Economics, vol. 15 (January 1985), pp. 29-39.  
Gale, Douglas, and Martin Hellwig. "Incentive-Compatible Debt Contracts: The One-Period Problem," Review of Economic Studies, vol. 52 (October 1985), pp. 647-64.  
Hellwig, Martin. "Banking, Intermediation and Corporate Finance," in Alberto Giovannini and Colin Mayer, eds., European Financial Integration. Cambridge: Cambridge University Press, 1991.  
Krasa, Stefan, and Anne P. Villamil. "Monitoring the Monitor: An Incentive Structure for a Financial Intermediary," Journal of Economic Theory, vol. 57 (June 1992), pp. 197-221.  
Lacker, Jeffrey M. "Why Is There Debt?" Federal Reserve Bank of Richmond Economic Review, vol. 77 (July/August 1991), pp. 3-19.  
Ramakrishnan, Ram T. S., and Anjan V. Thakor. "Information Reliability and a Theory of Financial Intermediation," Review of Economic Studies, vol. 51 (July 1984), pp. 415-32.  
Townsend, Robert M. "Optimal Contracts and Competitive Markets with Costly State Verification," Journal of Economic Theory, vol. 21 (October 1979), pp. 265-93.  
Williamson, Stephen D. "Costly Monitoring, Loan Contracts, and Equilibrium Credit Rationing," Quarterly Journal of Economics, vol. 102 (February 1987), pp. 135-45.  
Winton, Andrew. "Costly State Verification and Multiple Investors: The Role of Seniority," Review of Financial Studies, vol. 8 (Spring 1995), pp. 91-123.

## Class note 9 BID and ASK PRICES WITH ADVERSE SELECTION/PRIVATE INFORMATION Based on The Only Game in Town, and Glosten-Milgrom

### I. The Setup

1. Two types of trader: informed and liquidity (can lump the "misinformed" of The Only Game in Town together with the uninformed). All traders and market makers are risk neutral, so there is no risk premium.

a. Simple private information: informed traders know exactly what the firm will be worth on some fixed date in the future.

i. V is the unknown value. Everyone knows V will be either zero or one, and the informed know which of the values will occur.

ii. The uninformed liquidity traders start out believing that the probability that  $\mathrm{V} = 1$  is  $\frac{1}{2}$  ( $\frac{1}{2}$  is also the probability that  $\mathrm{V} = 0$ ).

b. Each instant, at most one trade comes in, and we assume all trades are the same size (abstracts from block trading). This means at each instant, at most one trader either gets private information about V (and then has a reason to speculate), or finds out about his (or her) need for liquidity (implying a non-speculative reason to buy or sell).

c. Informed traders buy when stock is underpriced at the ask, sell when overpriced at the bid (and do nothing if value is between the bid and the ask).

i. Liquidity traders buy when they have excess liquidity (money to invest) and sell when they need liquidity. The need for liquidity is not related to the value of the stock or the private information that they do not have. Half of all liquidity traders buy and the other half sell. Any given liquidity trader buys with probability one-half.

ii. A trader buys one share if he buys and sells one if he sells. We abstract from block trading and note that introducing risk aversion would result in a limit to the size of trades made by even very well informed traders.

d. The competitive market makers earn zero monopoly profits and break even on average across trades.

i. Market makers do not observe the private information of the informed traders. As a result, market makers lose money when trading with the informed.

ii. The market maker sets prices first, then traders can choose the type of trade they want at the fixed price. To break even, market makers set a bid-ask spread. This implies that they make money from trades with liquidity traders. The competitive break even condition implies that the average loss to informed traders is equal to the average profit from liquidity

motivated trades.

iii.The market maker cannot distinguish between liquidity trades and

information trades and must quote a single bid and ask price pair. Break even on average implies that:

(1) The bid is the expected value of the stock given public information and the fact that a sell order arrives this instant.  
(2) The ask is the expected value of the stock given all public information and the fact that a buy order arrives this instant.

For example, if there are no informed traders the bid-ask spread is zero. If there are nothing but informed traders, there is no bid-ask spread which allows the market maker to break even, because he loses on all trades to informed.

# e.One Period Example.

i. Absent a trade, price of the stock would be  $\frac{1}{2}$  because there is a 50-50 chance of being worth 1 or 0. If no informed traders existed, this would be the price, with no spread. This represents the "grand mean" average value of the stock.

ii.  $\frac{1}{2}$  of all traders are informed (more than in reality),  $\frac{1}{2}$  uninformed. This means that when an order comes in, the probability it is an informed trade is  $\frac{1}{2}$ .

iii. Consider first the ask price. If a buy order comes in, and it is from an informed, it must be that the private information is that the stock is worth 1 (otherwise the informed trader would sell) and the market maker will make a "profit" of:

ask-1  $(= a$  loss of 1-ask).

If the buy is from a liquidity trader, the stock is equally likely to be worth 0 as 1, so the average profit from the trade is: ask  $-[(\frac{1}{2} x1) + (\frac{1}{2} x0)] = \text{ask} - \frac{1}{2}$ .

The average profit is the average of these two "profits," so break even is when

$$
\frac{1}{2} x (a s k - 1) + \frac{1}{2} x (a s k - \frac{1}{2}) = 0 o r
$$

$$
\mathrm{as k} = 3 / 4.
$$

(Equivalently,  $\frac{3}{4}$  is the expected value of the stock given a buy order).

iv. Bid price determination

If a sell order comes in, and it is from an informed, it must be that the private information is that

the stock is worth 0 (otherwise the informed trader would buy) and the market maker will make a "profit" of:  $0 - \text{bid} (= \text{alossofbid} - 0)$ .

If the sell is from a liquidity trader, the stock is equally likely to be worth 0 as 1, so the average profit from the trade is:  $[( \frac{1}{2} x 1) + (\frac{1}{2} x 0)] - \text{bid} = \frac{1}{2} - \text{bid}$ .

A similar calculation to that for the ask, but for the bid price solves:

$$
\frac{1}{2} x (0 - \text{bi d}) + \frac{1}{2} x (\frac{1}{2} - \text{bi d}) = 0 \quad \text{or}
$$

$$
\mathrm{bi d} = 1 / 4.
$$

(Equivalently,  $\frac{1}{4}$  is the expected value of the stock given a sell order).

A positive bid-ask spread is due to the losses to informed trading. It also makes the price reveal and reflect some of the private information of information traders.

If the first trade were a buy (at the ask of  $\frac{3}{4}$ ), then  $\frac{3}{4}$  would be the transaction price, and would be the "baseline" for the next transaction. The new ask would be above  $\frac{3}{4}$  and the new bid above  $\frac{1}{4}$ . Trade by informed traders makes the price adjust toward the value that is not yet known to the public.

# 2. Results

- Private information reduces liquidity. The larger the fraction of informed traders, the larger the bid-ask spread, but the quicker the price reflects the private information.  
- Private information implies that buying or selling a security will move the price, even if you have no information and the market is competitive.  
- Market efficiency is consistent with the ability to make money by trading if you have private information (but it is often difficult to tell if you have information that is really private!).

## Class Note 10 Liquidity and liquidity Management

### I. An Overview of Liquidity Management

A common measure of the liquidity of an asset is the % of its true value one can obtain from a quick "forced" sale. Adverse selection issues and special asset services (such as monitoring of special information about the borrower) can make assets illiquid. An illiquid asset is, roughly, one with a large bid-ask spread. This is only rough because illiquidity also implies that one expects to get a better price if one has time to wait until the asset is sold (i.e., a bigger bid-ask spread for quick sales or (in the case of assets which mature, for sales before maturity).

An asset is perfectly liquid if the holder does not expect to care if he is forced to sell at an unknown date. Apart from tax considerations, treasury securities and most NYSE stocks are in this category. If you (an individual) owned such an asset and were forced to sell (liquidate) with one day's notice (not on the weekend) you would not be upset, because you would get a fair market price.

On the other hand, it the asset were a house or a private placement bond, you would be very upset if you were forced to sell on one day's notice. In less developed countries, the financial markets are often illiquid, with little abity to get a fair price on short notice.

If you knew in advance that you would need cash on some fixed date in advance, you could arrange to hold an illiquid asset which matured on that date. The demand for always having liquidity is due to uncertainty about when you will be forced to liquidate. These uncertainties for an individual include unexpected expenses, loss of a job, etc.

The liquidity of an asset does not relate directly to the risk of the asset, i.e., not to fluctuations in its true value. Instead, it relates to the "costs" of selling it in a hurry.

# Liquidity risk sharing.

Given that certain assets are illiquid, someone must hold illiquid assets. If there were no financial intermediaries, then individuals would have to hold them directly, and incur the liquidation costs whenever there was a personal need for liquidity.

A partial substitute for holding liquid assets is the ability to borrow in the future at a favorable rate of interest. An individual or firm can get into a liquidity crisis if unable to borrow and unable to sell off assets. The two ways to avoid such a crisis are to hold liquid assets and to

have a sure ability to borrow (either due to an explicit contract, like a line of credit, or absolute faith that you will be able to borrow in the market).

# Liquidity and financial intermediaries

Banks can provide liquidity to customers either by offering deposits which are very liquid, or by offering lines of credit. Offering either one when a bank owns some illiquid assets exposes the bank to some liquidity risk of its own.

When the net effect of withdrawals of deposits and take-downs of lines of credit yields an outflow of cash from the bank, something else on the bank's balance sheet must adjust. If the bank has substantial uncertainty about these net flows of cash, then it must structure its balance sheet to take these fluctuations into account. If the bank was not expected to be able to meet the liquidity demands that is implied by offering liquid deposits and lines of credit, then the bank would not be able to credibly offer these products. We will see that this "credibility" issue means that having liquidity today in the form of the ability to issue new deposits requires the expectations that the bank will have access to liquidity in the future. That is, anticipations of liquidity problems can lead to current liquidity problems.

# Sources of a Bank's Liquidity

<table><tr><td>Liquid assets:</td><td>1.</td><td>Maturing assets</td></tr><tr><td rowspan="2">(Asset management)</td><td>2.</td><td>Liquid assets (small bid-ask spread)</td></tr><tr><td>3.</td><td>Assets that can serve as collateral for a repurchase agreement, but not yet pledged (&quot;not yet RFed&quot;).</td></tr></table>

<table><tr><td>Borrowing</td><td>1. Issue new deposits in spot market</td></tr><tr><td>Ability</td><td>2. Borrow Fed Funds from other banks (spot market)</td></tr><tr><td>(Liability</td><td>3. Lines of credit for Fed funds from other banks</td></tr><tr><td>Management)</td><td>4. Federal Reserve discount window</td></tr></table>

<table><tr><td>Some of Both</td><td>1. Contracts to sell illiquid assets to other banks in the future (such as loan participation agreements).</td></tr></table>

Asset management of liquidity implies that when the bank experiences a net cash outflow, it adjusts by reducing the size of assets (selling assets) and it protects itself by having many liquid assets around to make the cost of this adjustment low. Until the last 10-15 years, this was the main method of managing liquidity risk. A bank would hold a portfolio of government bonds to sell off if it needed to make loans under its lines of credit, or to fund net withdrawals of deposits. This used to be the only option when rates were regulated on deposits, since the bank could not adjust the interest rate to attract additional deposits. In addition, the interbank Federal Funds market was less active than it is today, and was not used as a major

source of funds by many banks. As a result, the banks' borrowing opportunities were limited and sale of liquid assets was the primary available source of liquidity.

The more recent liability management approach lets the bank adjust interest rates on liabilities to attract additional funds when needed. This approach works well if the bank can attract large quantities of new funds without making a large change in the interest rate which it pays. In some sense, this is related to the elasticity of supply of deposits to the bank. If the bank can attract sufficient new deposits when current depositors withdraw or when lines of credit are taken down, then it never need liquidate any assets. The problem is, that the bank may not be able to borrow exactly when it most needs to borrow. In extreme, this is the problem of the threat of bank runs. Continental Bank (among others) experienced this problem.

# II. An Outline of Managing Liquidity When Depositors Can Panic (best read after class note 11 on bank runs).

# 1. Tactical Liquidity Management

a. Predict the volatility normal fluctuations (those without a panic) in the withdrawal of deposits and takedowns of lines of credit.  
b. Determine the costs of asset management (foregone expected return from holding very liquid assets) and liability management (the costs of maintaining borrowing ability) to deal with these normal liquidity needs.  
c. Take account of how news about the bank's net worth or future profitability will influence its ability to borrow and to maintain its current deposits. This involves estimating how quickly those who lend to the bank will get nervous and pull out their funds. This is a measure of how risks in the bank's fundamentals will effect liquidity risk.  
d. Choose the assets and liabilities that reflect these risks and costs of a liquidity crisis.

# 2. Strategic Liquidity Management: Influencing the risk of a panic for given fundamentals

a. Control the response to news or rumors about your institution by managing the information flow to your clients. This involves having access to your depositories to disclose information if there are rumors regarding your institution's soundness.  
b. Control the ability for identical information (especially misinformation) to reach your depositors simultaneously. This is important to prevent a coordinated move in expectations of others expectations; the input for a bank run. In the old days, this meant preventing the line of people who are withdrawing from spilling into the street (add more tellers, have a large lobby,

etc.). If "N" is the number of people withdrawing, do not put N on the time and temperature sign.

c. A modern way of putting N on the time and temperature sign is to allow all depositors to see information about the secondary market price of a bank's uninsured CD's. Not putting it on the time and temperature sign requires that they not see this price. When the secondary market price drops (relative to other banks' CD's of the same maturity), it indicates excess supply of the CD's that have not yet matured (selling pressure indicating possible bad news or bad misinformation). This common information to all large depositors of excess supply can indicate that a bank run may be starting (currently maturing deposits are being withdrawn), or it may start one, just like a mistaken headline in the newspaper "Bank Run Today."

Because there is a secondary market for bank CD's, the only way from keeping depositors from learning about the information that causes the price to change (relative to other banks) is to prevent the price from changing (relative to other banks). To avoid information contagion, many large banks stabilize the secondary market price of their CD's. By having an investment bank keep their CD trading at the same secondary market price as other large money-center banks, no information is revealed from the price (the N on the time and temperature sign never changes). However, keeping the price (relative to other CD's) constant in the face of selling pressure requires that the investment bank buy the CD's from the sellers at the fixed price. The CD's bought by the investment bank are then cashed in early by the bank (one day later), effectively turning the time deposits into demand deposits. The direct effects of this are to make any already given run worse: not only maturing deposits must be paid off, but also those that did not mature but were repurchased.

The indirect effects are favorable, because it prevents coordinated contagion of beliefs about N. This serves to keep a panic from beginning. The fact that banks choose to do this suggests that they are concerned about panics, and have some notion of how to deal with them.

The role of the investment bank involves a small amount of delegated monitoring. It the I-bank sees an excess supply of the bank's CD's, it will buy them at the fixed price only if it expects the bank to stay in business until it can sell them back to the bank (stay open at least one more day). If the news generating the run were that the bank was about to be closed, the I-bank would not stabilize the price.

Chicago Booth, Business 35202, Douglas Diamond

Extra Class note to read before Fremont Financial

## Addressing Risk with Securitization Design

A securitization is a trust: a legal entity with assets but not employees. It makes no judgments, but rather just follows a flow chart. Servicing the assets requires some judgment, but servicing is subcontracted to an outside firm that does have employees.

The trust's flow chart describes how the cash flows coming in will be paid back out to different claims. This income generally comes from three sources

- Interest paid on the receivables  
Principal paid on the receivables

Scheduled principal  
Prepayment

Recoveries on defaulted receivables

Foreclosing on collateral  
Extracting payment on unsecured receivables

One additional source used in some situations is a bank account used to store money for a rainy day

- Called a spread account, or reserve account, its role is to be a last resort when the receivables perform badly

The securities issued by the trust generally have a senior/subordinated structure. The most senior tranche is typically the largest, and typically is rated AAA. What the trust could do is pay all money coming in to the most senior tranche until it is paid down, and then to next-most senior until it is paid down, and so on down to the most junior. But that is typically not what happens. Instead of paying securities sequentially like this, in good times the trust typically pays down securities the senior and junior in parallel, maintaining their relative sizes

- If and when bad times hit, then the trust will start favoring the senior over the junior piece, focusing on getting the senior paid down  
- So the senior creditors know that, in this situation, there will be a prearranged amount of protection ready for them

Let's look at a large, representative securitization to see this in action. Consider this securitization of car loans:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/98287042-82d6-415f-98b5-0f347af6d1c3/e7608eacddde9507066a5e29211fbc3475f9fd63aa9f9baced627005859bc716.jpg)

### HYUNDAI

\$774,000,000

# Hyundai Auto Receivables Trust 2005-A

Issuer

Hyundai ABS Funding Corporation

Depositor

Hyundai Motor Finance Company

Seller and Servicer

You should carefully read the "risk factors", beginning on page S-15 of this prospectus supplement and page 5 of the prospectus.

The notes are asset-backed securities. The notes will be the sole obligation of the issuer and will not be obligations of or guaranteed by Hyundai Motor Finance Company, Hyundai ABS Funding Corporation or any of their affiliates.

No one may use this prospectus supplement to offer and sell these notes unless it is accompanied by the prospectus.

The following notes are being offered by this prospectus supplement:  

<table><tr><td></td><td>Principal Amount</td><td>Interest Rate</td><td>Stated Maturity Date</td></tr><tr><td>Class A-1 Notes</td><td>\$ 169,000,000</td><td>3.51438%</td><td>July 17, 2006</td></tr><tr><td>Class A-2 Notes</td><td>\$ 230,000,000</td><td>3.88%</td><td>June 16, 2008</td></tr><tr><td>Class A-3 Notes</td><td>\$ 171,000,000</td><td>3.98%</td><td>November 16, 2009</td></tr><tr><td>Class A-4 Notes</td><td>\$ 110,300,000</td><td>4.18%</td><td>February 15, 2012</td></tr><tr><td>Class B Notes</td><td>\$ 31,900,000</td><td>4.20%</td><td>February 15, 2012</td></tr><tr><td>Class C Notes</td><td>\$ 27,900,000</td><td>4.22%</td><td>February 15, 2012</td></tr><tr><td>Class D Notes</td><td>\$ 33,900,000</td><td>4.45%</td><td>February 15, 2012</td></tr></table>

<table><tr><td></td><td>Price to Public</td><td>Underwriting Discount</td><td>Proceeds to the Depositor</td></tr><tr><td>Per Class A-1 Note</td><td>100.00000%</td><td>0.1000%</td><td>99.90000%</td></tr><tr><td>Per Class A-2 Note</td><td>99.99264%</td><td>0.1250%</td><td>99.86764%</td></tr><tr><td>Per Class A-3 Note</td><td>99.99618%</td><td>0.1500%</td><td>99.84618%</td></tr><tr><td>Per Class A-4 Note</td><td>99.98624%</td><td>0.1850%</td><td>99.80124%</td></tr><tr><td>Per Class B Note</td><td>99.98110%</td><td>0.2500%</td><td>99.73110%</td></tr><tr><td>Per Class C Note</td><td>99.98252%</td><td>0.3000%</td><td>99.68252%</td></tr><tr><td>Per Class D Note</td><td>99.98496%</td><td>0.4000%</td><td>99.58496%</td></tr><tr><td>Total</td><td>$773,945,357.94</td><td>$1,216,105.00</td><td>\$772,729,252.94</td></tr></table>

- The notes are payable solely from the assets of the issuer, which consist primarily of motor vehicle retail installment sale contracts that are secured by new and used automobiles and light-duty trucks.  
- The issuer will pay interest and principal of the notes on the 15th day of each month, or on the next business day if such 15th day is not a business day, starting on, August 15, 2005.  
- The issuer will pay principal of the notes in accordance with the payment priorities described in this prospectus supplement.  
- Credit enhancement will consist of overcollateralization, a reserve account with an initial deposit of \(3,989,857.94, and the subordination of the certificateholder's right to receive excess interest.

Neither the Securities and Exchange Commission nor any state securities commission has approved or disapproved of these notes or determined if this prospectus supplement or the accompanying prospectus is truthful or complete. Any representation to the contrary is a criminal offense.

Joint Bookrunners of the Class A, B, C and D Notes

Deutsche Bank Securities

SG Corporate & Investment Banking

Barclays Capital

Co-Managers of the Class A Notes

JPMorgan

Wachovia Securities

# Inside the prospectus, we learn:

PRINCIPAL AND INTEREST

Principal payments to be made will generally be divided among the classes of notes in a manner intended to maintain credit enhancement, including amounts on deposit in the reserve account, for each such class (after giving effect to such allocation) in an amount equal to the greater of the target overcollateralization amount and the following approximate percentage of the aggregate principal balance of the contracts (excluding for this purpose, the yield supplement overcollateralization amount) as of the last day of the preceding month:  $35.00\%$  for the Class A notes,  $25.00\%$  for the Class B notes,  $21.00\%$  for the Class C notes and  $7.50\%$  for the Class D notes; provided, however, that prior to the payment date on which the Class A-1 notes are paid in full, all funds on deposit in the principal distribution account will be distributed to the Class A-1 notes. As a result of this allocation, after the Class A-1 notes are paid in full and after the required credit enhancement for the Class A notes is met, the Class B, Class C and Class D notes may receive a disproportionately larger percentage of principal distributions than the Class A notes that remain outstanding.

On each payment date after a specified event of default under the indenture occurs and the notes are accelerated or the receivables are liquidated, no distributions of principal or interest will be made on the Class B notes until the payment in full of principal and interest on the Class A notes. Payments of principal on the Class A notes will be made first to the Class A-1 notes until the Class A-1 notes are repaid in full, and then pro rata to the Class A-2 notes, Class A-3 notes and Class A-4 notes. In addition, no distributions of principal or interest will be made on the Class C notes until payment in full of principal and interest on the Class B notes, and no distributions of principal or interest will be made on the Class D notes until payment in full of principal and interest on the Class C notes.

On each payment date, the issuer will generally pay principal on the notes in the following amounts and order of priority:

to the Class A notes, the class A principal distributable amount in the following order of priority:  
to the Class A-1 notes, until the Class A-1 notes are paid in full;  
to the Class A-2 notes, until the Class A-2 notes are paid in full;  
to the Class A-3 notes, until the Class A-3 notes are paid in full;  
to the Class A-4 notes, until the Class A-4 notes are paid in full;  
to the Class B notes, the class B principal distributable amount until the Class B notes are paid in full;  

- to the Class C notes, the class C principal distributable amount until the Class C notes are paid in full; and  
- to the Class D notes, the class D principal distributable amount until the Class D notes are paid in full.

# We also learn

As of May 31, 2005, which we refer to herein as the cut-off date, the receivables have the following characteristics:

Aggregate Principal Balance \$855,479,000.03  
Number of Receivables 52,391  
Weighted Average Contract Rate 7.17%  
Weighted Average Original Term 63.89 months  
Weighted Average Remaining Term 59.43 months

# and

ADJUSTED POOL BALANCE

The adjusted pool balance with respect to a payment date is equal to the pool balance as of the end of the previous collection period or, initially, as of the cut-off date, minus the yield supplement overcollateralization amount as of the related payment date or, initially, as of the cut-off date.

YIELD SUPPLEMENT OVERCOLLATERALIZATION AMOUNT

On the closing date, there will be an additional balance of receivables in the amount of \(57,507,412.22 representing the initial yield supplement overcollateralization amount, which is approximately \(6.72\%\) of the aggregate principal balance of all receivables of the issuer as of the cut-off date. The yield supplement overcollateralization amount will decline on each payment date. The yield supplement overcollateralization amount is intended to compensate for the low annual percentage rates on some of the receivables.

# and

Reserve Account

On or prior to the closing date, the issuer will establish an account, which we refer to herein as the reserve account, and will make a deposit thereto of an amount equal to \(3,989,857.94. The reserve account will be an asset of the issuer, will be an eligible account held by the indenture trustee, and will be pledged to the indenture trustee for the benefit of the noteholders.

On each payment date, after making required payments to the servicer and the holders of the notes, the issuer will make a deposit to the reserve account to the extent necessary to cause the amount on deposit in the reserve account to equal the reserve account required amount.

The amount that we refer to as the reserve account required amount with respect to any payment date is equal to  $0.50\%$  of the adjusted pool balance as of the cut-off date. However, in no event will the reserve account required amount on any payment date be more than the then aggregate outstanding principal amount of the notes on such payment date. As of any payment date, the amount of funds actually on deposit in the reserve account may, in certain circumstances, be less than the reserve account required amount.

All amounts on deposit in the reserve account on any payment date will be available to make up shortfalls in the amounts payable to the noteholders on such payment date to the extent described herein. On each payment date, amounts on deposit in the reserve account in excess of the reserve account required amount may be released to the certificateholder, subject to certain conditions set forth in the sale and servicing agreement. The noteholders will have no further interest in or rights with respect to any amounts so released from the reserve account.

and,

Overcollateralization

On the closing date, the adjusted pool balance will exceed the principal amount of the notes of all classes by \(23,971,587.81, which is approximately \(3.00\%\) of the adjusted pool balance as of the cut-off date. This excess represents overcollateralization. The level of overcollateralization, as of each payment date, is required to increase to, and thereafter be maintained at, a target level equal to \(7.50\%\) of the outstanding adjusted pool balance less the amounts in the reserve account on such payment date, after giving effect to withdrawals from, but prior to deposits to, the reserve account on such payment date. In general, the target amount of overcollateralization will decrease as the adjusted pool balance decreases. However, the target amount of overcollateralization on any payment date will generally not be less than \(1.50\%\) of the adjusted pool balance as of the cut-off date.

and finally,

The issuer will also issue one certificate, which represents the residual interest in the issuer and is not offered hereby, and to which we refer herein as the certificate. The depositor will initially retain the certificate. Any information in this prospectus supplement relating to the certificate is presented solely to provide you with a better understanding of the notes.

What does all this mean?

Hyundai sells  \$774MM face value of asset-backed bonds, where the assets are car loans with\$ 855.5MM Aggregate Principal Balance

However, some of these car loans are low-interest car loans Hyundai has offered has sales inducements e.g.  $0\%$  APR loans  

- These loans are worth less than their face value. To account for that, Hyundai calculates the Yield Supplement Overcollateralization Amount, which is intended to be the difference between the face value of these loans and what they're actually worth  
- Initially, this amount is  $57.5 \mathrm{MM}, so$ Hyundai adjusts the Aggregate Principal Balance downward by this much, so the Adjusted Pool Balance (APB) is  $855.5 \mathrm{MM} -$ 57.5MM = \$798MM  
 - And therefore, the Overcollateralization is $798MM - $744MM = \$24MM, which is 3% of the APB  
- So Hyundai says this pool starts with  $3\%$  overcollateralization

Hyundai also pays cash of \(4MM, which constitutes the initial Reserve Account Balance. Notice that this is \(0.5\%\) of the initial APB

So, at the beginning of the deal, the investors as a whole enjoy Total Credit Enhancement, i.e. credit enhancement from overcollateralization plus credit enhancement from cash in the reserve account, of  $3\% + 0.5\% = 3.5\%$  of the APB

Going forward, what happens depends on whether we're in good times or bad times

# Good Times

The trust always pays each tranche interest according to its remaining principal balance and stated coupon rate. The tranches get principal as follows

- First, all principal goes to A1 until it is completely paid down  
- Then, principal is spread across A, B, C and D so that

The remaining balance of tranches A2-A4 is (65% of the APB) plus (the cash in the reserve account)  
The remaining balance of tranche B is  $10\%$  of the APB  
The remaining balance of tranche C is  $4\%$  of the APB  
The remaining balance of tranche D is  $13.5\%$  of the APB

Note that this adds up to  $92.5\%$  of the APB

So let's say the Car loans pay \$1MM of principal to the trust, and there are no defaults (we'll get to those in a moment), so the APB goes down by \$1MM. The trust takes this \$1MM and pays

$\circ$  \$650K to the A notes  
 o Notice that the A notes, among themselves, are sequential-pay, so all this \$650K will go to the A tranche currently being paid down  
$\circ$  \$100K to the B notes  
$\circ$  \$40K to the C notes  
$\circ$  \$135K to the D notes  
$\circ$  \$75K to the certificate holder, i.e. the issuer

# Bad Times

The idea behind how the trust pays out in good times is for each tranche to have a prearranged amount of credit enhancement protecting it in bad times, where this amount is fixed as a fraction of the ABP

A notes:  $35\%$  of ABP  
B notes:  $25\%$  of ABP  
C notes:  $21\%$  of ABP  
D notes:  $7.5\%$  of ABP

Suppose, for example, we have good times for a while, and the ABP now stands at \$400MM, and there is still the \$4MM in the reserve account.

Consequently, the remaining principal balances are

$\circ$  A notes: (.65) $400MM +$ 4MM = \$264MM  

- B notes: (.10) $400MM =$ 40MM$  
 C notes: (.04)$400MM = $16MM  
D notes: (.135) $400MM =$ \$52MM$

Now suppose we liquidated the pool and paid the proceeds to the notes according to absolute priority, using the \$4MM reserve account to cover any shortfall

\(0.15\%\) A notes could withstand \(35 \%\)credit loss on the receivables, because that would leave \(65 \%\)of \(\$ 400 \mathrm{MM} = \(\$ 260 \mathrm{MM}\)cash, which, combined with the reserve account, covers the \(\$ 264 \mathrm{MM}\)remaining balance  
 \(0 B\) notes could withstand 25% credit loss, because that would leave 75% of \(\$ 400MM = \(\$ 300MM\) cash, minus \(\$ 264MM\) paid to the A notes, leaves \(\$ 36MM\), plus the \(\$ 4MM\) from the reserve account + \(\$ 40MM\)  
$\circ$  Likewise, C notes could withstand  $21\%$  credit loss and D notes could withstand  $7.5\%$ .

In actuality, the pool is not liquidated in bad times. Rather, the trust follows absolute priority each month, giving each tranche its scheduled cash only if the tranche ahead of it was paid in full. Whether this happens depends entirely on whether the excess interest coming in is sufficient to cover the net default losses that have occurred

# Covering Defaults in Good Times and Bad Times

Suppose we are in the situation just described, where the APB is  \$400MM, the reserve account balance is\$ 4MM and the tranches have the indicated remaining balances.

# Good Times

Let's say the receivables pay \$10MM principal, and \$1MM of them default, so the APB goes down by $10MM+$1MM = \$11MM. Let's say further that

the receivables pay \$4MM in interest  
the servicer recovers \$0.5MM on the defaulted receivables  
$\circ$  the servicer is owed  $0.4 \mathrm{MM}$  in servicing fees, and  
the trust owes \$2.5MM interest to the tranches

In this case, the trust has  $1M -$ 0.5M = \$0.5M in net default losses, and has $4MM - $0.4MM - $2.5MM = $1.1MM in excess spread, so it can easily cover the net default losses out of the excess spread.

$0.5MM$  The trust adds  $\$ 0.5MM$  out of the excess spread to the  $\$ 0.5MM$  in recoveries to come up with  $\$ 1MM$ , which it adds to the  $\$ 10MM$  in principal that came in, so now it has  $\$ 11MM$  to make principal distributions out of, just as if no defaults had occurred

All tranches get exactly their scheduled interest and principal, and the residual claimant gets  $7.5\%$  of the  $\$ 11$ MM principal plus the  $\$ 0.6$ MM of excess spread left over after covering defaults

# Bad Times

Say all numbers are the same except now, there are \$8MM in defaults and only \$1MM in recoveries, so net default losses are \$7MM and the ABP goes down by $10MM + $8MM = \$18MM

Trust takes the \$1.1MM excess spread, brings it down to \$5.9MM  
 Trust takes the \$4MM out of the reserve account, bringing the shortfall down to \$1.9MM

So now the trust is scheduled to pay (92.5%)(\$18MM) = 16.65MM principal to the tranches with only $10MM+$1.1MM+$4MM = $15.1MM cash, and it can't. So the junior tranches will get no payment, and will instead go into arrears

Principal balance will be below the target balance  
○ Have to be brought up to the target balance before residual claimant gets anything

$\circ$  Also, the reserve account has to be brought back up to \$4MM

So to an investor in this securitization, there are four layers of protection against default losses

Excess spread  
$\circ$  Reserve Account  
Overcollateralization  
Subordination of the tranches below

What does the servicer get?

# Servicing Compensation

The servicing fee for the calendar month immediately preceding any Payment Date (a Collection Period) will be one-twelfth of  $1.00\%$  and the aggregate outstanding principal balance of the Receivables as of the first day of the related Collection Period or, in the case of the first Payment Date, the aggregate outstanding principal balance of the receivables as of the Cut-off Date (the "Servicing Fee"). The Servicing Fee, together with any previously unpaid Servicing Fee, will be paid on each Payment Date solely to the extent of Available Amounts. The servicer will be entitled to collect and retain as additional servicing compensation in respect of each Collection Period any late fees, extension fees, non-sufficient funds charges and any other administrative fees and expenses or similar charges collected during that Collection Period, plus any investment earnings or interest earned during that Collection Period from the investment of monies on deposit in the Collection Account and the Note Distribution Account. The servicer will be paid the Servicing Fee for each Collection Period on the following Payment Date related to that Collection Period. However, if it is acceptable to each Rating Agency without a reduction in the rating of each Class of Notes, the Servicing Fee in respect of a Collection Period (together with any portion of the Servicing Fee that remains unpaid from prior Payment Dates) will be paid at the beginning of that Collection Period out of collections of interest on the Receivables for that Collection Period. The Servicing Fee will be paid from Available Amounts in accordance with the priority of payments set forth under "Payment on the Notes — Payment of Distributable Amounts."

So the servicer gets  $1\%$  of the receivables balance as a servicing fee, and gets to keep any fees or other charges it extracts from borrowers. Note that Hyundai Motor Finance Company is the servicer.

Financial Markets and Institutions

Douglas W. Diamond

Business 35202

## Class Note 12 – Commercial Paper*

### Overview

What is Commercial Paper? What is its significance?  
How are CP prices quoted?  
Where do CP prices come from?  

- What are backup lines of credit, and why do all CP issuers have them?  
- What is meant by the "early-exit mechanism" of the CP market? What has been the default experience of CP investors?  
How do regulations affect the demand for different maturities?  
What happened in 2007-9 Crisis?  
Alternative - Extendible Commercial Notes

CP is the simplest security that corporations issue. It is a short-term promissory note. As long as issuers obey certain guidelines, their CP is exempt from the hassles and expense of registration requirements. The most important of these guidelines are

- Maturity is less than 270 days  
- Issued in denominations too big for individual investors

Almost all CP meets these guidelines. In fact, most CP satisfies the guidelines by a wide margin.

Average maturity of outstanding CP is around 40 days  

- Average trade size is around \$20MM

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/98287042-82d6-415f-98b5-0f347af6d1c3/c8e4e9de78995820896c9c0d0da468fe027f5f9ab85952f3dff7715293849d29.jpg)  
CP Issuance Volume, by Initial Maturity February 2008

The quantity of CP grew steadily and substantially until the 2001/2 recession, and then it surged until its recent drop. Here's the growth in CP outstanding since the beginning of 1991:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/98287042-82d6-415f-98b5-0f347af6d1c3/20ca32858ec3c00958f1cb69952a839e9e410510d0c9c2732f5e5e6657eb6469.jpg)  
CP Outstanding, Finl. vs. Non-Finl

At last count, there was  \$1.85 trillion in CP outstanding, down 14% from its all-time high of\$ 2.16 trillion last July, but up from its recent low of \$1.79 Trillion in December.

The plunge in CP outstanding is due specifically to Asset-Backed Paper:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/98287042-82d6-415f-98b5-0f347af6d1c3/9d10ede7c01d6ff80d6b84bcf2fb88e6510f5ff721be0bd81bf730472c855bb4.jpg)

Asset-Backed paper is sold not by a regular company, but rather by a special-purpose vehicle, or conduit

- Buys financial assets and finances by selling securities backed by these assets  
- Separate legal entity from the sponsoring institution, so the buyers of the securities have recourse only to the financial assets, and not to the sponsoring institution

We consider such securitizations in another class note

Notice that, compared to Tbills, CP is issued in

- Generally shorter maturities – Tbills are 28, 91, or 182 days to maturity when issued  
- Greater variety of maturities – Tbills mature only on Thursdays. You can buy CP maturing on any day you are interested in  
- Greater frequency – The government floats Tbills just once a week, whereas there is new CP every day  
- Larger trade sizes – You can easily buy \$10K face value of Tbills, but not CP

In summary, CP comes from three main categories of issuers

Financial CP - issued by financial corporations such as bank holding companies, GE Capital, etc.  
Non-Financial CP - from any other kind of corporate issuer  

- Asset-Backed CP – issued by a special-purpose entity that holds financial assets such as mortgage-backed securities, car loans, etc.

Here are the quantities of these different kinds of CP over 2001-12:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/98287042-82d6-415f-98b5-0f347af6d1c3/ce6ad6a834eb60992bf27686e4ac5ce2bb5c847115575bcf013dd548c3fa5ceb.jpg)

This graph makes several points

- The CP market is big – altogether it's about \$1 Trillion, though it is half of what it was (peak was \$2.18 Trillion on 8/8/07)  
Non-financial issuers are not a big part of the market, only about  $18\%$  
- All categories are about 2/3 of where they were 11 years ago  
- Asset-backed paper fell off a cliff

Down about  $70 \%$ from the 8/07 peak, and  $\$ 350 \mathrm{BB}$ of this fall occurred in just 4 months starting in early August 2007, with  $\$ 200 \mathrm{BB}$ of that in just 3 weeks

It's worth focusing for a moment on the ABCP crash. Here's the weekly issuance volume:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/98287042-82d6-415f-98b5-0f347af6d1c3/24ad1aff6d14ebe7cd0aa8f9c96352fe88deb7b9ac20e9df50939f00e7aa0f92.jpg)

You can see that in the early part of the decade, there was \$200 Billion or so of new ABCP sold each week, which ramped up to \$500 Billion at the peak. Now it's down to around \$100 Billion each week. If we look just at 2007, we don't see the issuance volume crash quite as hard as in the previous graph, but that's because these numbers combine long-dated and short-dated paper. If we look at the distribution of maturities, we see that in August 2007, issuance abruptly shifted away from longer maturities:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/98287042-82d6-415f-98b5-0f347af6d1c3/b6e60999a13b12827d7de02650c95b348ec53497aab4d6bf6c6e8ba4bd157b8a.jpg)

You can see issuance tilting heavily toward shorter paper in the latter half of 2007. You can also see that, in recent months, issuance of 41+day paper has shrunk significantly, in favor of shorter paper.

Consider also the discount rates this paper paid over this period:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/98287042-82d6-415f-98b5-0f347af6d1c3/d880cec1af1f41a6f0cd6cfcb2be505a2473e8c3303995a7cd2869c2321ee856.jpg)

This shows the rates for the three categories, plus a fourth category "A2 nonfinancial" which is the lower-rated paper from non-financial issuers. The discount rates generally follow the prevailing money-market rate (known as LIBOR, for London InterBank Offered Rate):

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/98287042-82d6-415f-98b5-0f347af6d1c3/4a7c45995f27dfe0a3b4a02d8f6f3f0444831bdc8cc400dc38051d25f1306982.jpg)

What happened to these issuers was essentially a bank run. Firms that go to the CP market know they are exposed to bank-run risk. This is because when they issue CP, they expect to repay it by issuing CP again, i.e. by rolling it over. If they can't roll it over, they've got a problem. For this reason, a CP issuer generally has a committed bank facility at least as big as the amount of CP he has outstanding. This "backup line" plays exactly the role of the lender of last resort in the bank-run model: if the issuer needs extra cash to let investors out, it doesn't have to sell assets for bad prices, it just needs to borrow the necessary cash from the bank. Knowing this, a CP investor calculates that there's no benefit from joining a run, i.e. not rolling over his paper, so he rolls over his paper and there's no run.

- The backup line is intended to be insurance against the market melting down, not the CP issuer melting down, and it often contains covenants that limit or revoke the issuer's right to take down the line if its condition has deteriorated sufficiently  
- This limitation is known as a Material Adverse Change clause. You can read further in the discussions by Dominion Bond Rating Service and A M Best

It's important to distinguish this backup line of credit from a Letter of credit, which is explicitly a credit enhancement. A letter of credit says that if the issuer doesn't repay the paper, the bank will. So the credit quality of the paper is at least as high as the credit quality of the bank.

- So a backup line of credit is more accurately viewed as a liquidity facility, i.e. insurance against the market drying up, than a credit enhancement, i.e. insurance against the issuer going bad

Backup lines became widespread in the CP business after the Penn Central Railroad default in 1970. Penn Central was a big issuer of CP, and this was the first default in many years, and the CP market crashed. The Fed eased this crash by providing liquidity to banks so issuers could borrow to pay their

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/98287042-82d6-415f-98b5-0f347af6d1c3/4c8863b2659da2d3b571d3bc07a3fb0b42ef855fbe42f997e2569d94b4bc96ec.jpg)  
CP

In 1970 some CP issuers had backup lines, and others did not. It was widely suspected during the Penn Central crisis that banks had an easier time borrowing at the discount window when they could show the Fed that they were borrowing more because issuers were taking down their lines.

- In other words, if you didn't have a backup line, and wanted a bank loan to pay off your maturing paper, the bank might say "we're low on cash right now because of other issuers taking down their lines, and if we try to borrow the money for you from the Fed, they won't lend because you're not taking down a backup line"

Ever since the Penn Central crisis, it has been essentially impossible for issuers to sell CP without arranging a backup line of credit. Investors worry that a company without backup credit will have a financial crisis, which could precipitate default, if the CP market panics.

- The thing to remember of backup lines of credit is that they are not credit enhancements. If a company goes bankrupt, the bank is not going to pay off its CP. They are insurance not against the company going bad, but against the CP market going bad. If the CP market panics, a backup line allows an issuer to substitute bank borrowing for his CP borrowing, and the CP investor gets out whole.  
- A backup line of credit is a CP issuer's indirect access to the lender of last resort  
- Mercury Finance had backup lines, but the banks cut off the lines when Mercury got into trouble (from fraudulent accounting).

So in today's market, issuers have backup lines. Now consider the typical issuer. As we saw, the typical issuer has the top credit rating, so if it is downgraded, it is generally still investment grade

- The issuer's banks are not unconditionally obligated to let the issuer use its backup lines, but since the issuer is still investment grade, they generally will let the issuer borrow

There was a trend that grew over the last couple years of the ABCP boom, which was a trend away from backup liquidity. That is, a number of ABCP issuers decided to save the money they would have spent on a backup line, and instead rely on what they called internal liquidity.

- So instead of a backup line, these issuers would be overcollateralized, which is to say that the assets they held (typically mortgage-backed securities) were worth sufficiently more than their liabilities  
- Typically, the issuer would value its portfolio each week, and if the value exceeded the liabilities by more than a stated percentage, then everything was considered to be fine  
- This was considered to be "internal liquidity" because the issuer could, in theory at least, pay down its liabilities by selling its assets  
The proximate cause of the collapse of ABCP issuance in August, 2007, was the failure by several ABCP issuers to meet this valuation test

A related strategy to this "internal liquidity" is what was sometimes called "extendible commercial notes", or just "extendible notes." This was a way to issue something almost like CP without paying for backup liquidity. It worked like this:

Today, I sell an extendible note  

- In 30 days, I can pay down the note. However, I have the option to instead extend the note up to a year. That is, instead of paying my creditors the principal amount, I tell them "your security now matures in a year. Over that year, I'll pay you interest keyed to the prevailing interest rate paid by paper with the same rating." These ended up getting extended during the crisis and that ended their use in new CP issues.

Here's a typical schedule of interest rates for such paper:  

<table><tr><td>Rating</td><td>% of LIBOR</td><td>Minimum Spread over LIBOR</td></tr><tr><td>A1+/P1</td><td>110</td><td>25</td></tr><tr><td>A1/P1</td><td>115</td><td>50</td></tr><tr><td>A2/P2</td><td>130</td><td>150</td></tr><tr><td>A3/P3</td><td>150</td><td>250</td></tr><tr><td>&lt;A3/P3</td><td>175</td><td>400</td></tr></table>

The message the issuer sends is "A backup line of credit would give some assurance that the paper won't default if the market goes bad. Same here – if the market goes bad, the paper won't default. But instead of paying off right away, it will convert to longer-term paper with a high interest rate."

Newstex Web Blogs

Copyright 2007 felixsalmon.com

felixsalmon.com

August 30, 2007 Thursday 7:38 AM EST

HEADLINE: Commercial Paper Market Still in Distress

Aug. 30, 2007 (felixsalmon.com delivered by Newstex) -- Yves Smith at Naked Capitalism

Bloomberg tells us that the commercial paper market is shrinking.

This is a more serious issue than might appear. Commercial paper is an important, if not the most important, source of short-term funding for sizable corporations, mainly because it's cheap and flexible. They can readily adjust the amount outstanding to reflect changes in their need for cash. When CP matures, and an issuer cannot "roll" it, as in replace it with new CP, he has two choices. If he has the option, he can draw down standby lines of credit with his friendly bank. If he has no, or insufficient, backup lines, he has to get the cash somehow. Both option 1 and option 2 have costs. Option 1 means he is using higher-cost funding and has limited the company's alternatives for dealing with emergencies. But more important, the demand for cash at banks means it crowds out other bank lending, such as to small businesses. Option 2 means the company goes into crisis mode, delaying payments to vendors, trying to accelerate payment from customers, possibly even deferring payroll if that is at all an option.

Now on a small scale, these moves would create a few casualties. But on a large scale, as is happening now, both will put a damper on the real economy. They suggest that the \(4\%\) GDP growth release for the second quarter may have perilous little relevance now. From The U.S. commercial paper market shrank for a third week, extending the biggest slump in at least seven years, as investors balked at buying short-term debt backed by mortgage assets. Asset-backed commercial paper, which accounted for half the market, tumbled \(59.4 billion to \)998 billion in the week ended yesterday, the lowest since December, according to the Federal Reserve. Total short-term debt maturing in 270 days or less fell \$62.8 billion to a seasonally adjusted \$1.98 trillion. Commercial paper outstanding has fallen \(244.1 billion, or 11 percent, in the past three weeks, suggesting the Fed's Aug. 17 reduction in the discount rate has yet to entice buyers back into the market. More than 20 companies and funds including Cheyne Finance and Thornburg Mortgage (TMA) Co. failed to sell new paper as investors fled to safer investments. "I don't think the Fed understands how critical the situation is," said Neal Neilinger, co-founder of NSM Capital Management in Greenwich, Connecticut, in an interview today. "The market is going to overshoot itself and not lend money to people who deserve it."

The 11 percent decline over three weeks is the biggest since 2000, according to data compiled by Bloomberg…. In a sign that buyers are still favoring safer assets, an  \$18 billion auction yesterday for two-year U.S. government debt drew the most demand since 1992. The sale drew\$ 3.97 for every \$1 sold, the most since at least 1992, according to Bloomberg data.

# The Globe and Mail (Canada)

September 26, 2007 Wednesday

# HEADLINE: Credit problems put companies on ice

BYLINE: Bloomberg News

On Baffin Island in the Arctic Circle, Baffinland Iron Mines Corp. almost missed its window to ship provisions to workers before winter arrives. The delay came not from the weather, but from a sudden freeze in the market for short-term debt 3,200 kilometres south in Toronto.

Baffinland ran short of funds to pay for food, fuel and drilling equipment after investing in commercial paper that borrowers couldn't repay. Without the money, the company had to arrange an emergency line of credit before shipping lanes froze over.

"We have 200 people to keep alive," chief executive officer Gordon McCreary said in Toronto. "Our lifeline to getting critical materials to the north" was the \$43.8-million invested in commercial paper, he said.

Investors fled Canada's asset-backed commercial paper, paralyzing the  $40$ -billion market for debt that carried the highest credit ratings, after losses from home loans to people with poor credit histories roiled global credit markets.

That left Baffinland and other investors in the lurch because 17 funds run by finance companies, including Toronto-based Coventree Inc., Newshore Financial Corp. and Quanto Financial Corp., couldn't raise money to pay back lenders, according to ratings company DBRS Ltd.

No commercial paper borrower had failed to pay on time in two decades and Toronto-based DBRS gave the securities its top rating of R-1. The funds also had backup lines of credit from banks.

"You can get what the bank pays you, which is not very much, or you can put it in asset-backed commercial paper, which have always been rated as high as you can get," said Geoff Chapter, a spokesman for Vancouver-based First Quantum Resources Minerals Ltd.

First Quantum hasn't been repaid on §7.5-million of debt issued by Coventree that matured on Aug. 14 and Aug. 15, he said. It had about 28 per cent of its cash in commercial paper.

Starting in July, growing defaults in U.S. home loans caused the cost of borrowing to increase for all but the most creditworthy companies. Rates on asset-backed commercial paper soared.

Investors began demanding yields of about 6.03 per cent to own Coventree's commercial paper. On Aug. 13, the company said it couldn't find enough buyers to refinance \( \\(950 \)-million of short-term debt and its banks refused to provide emergency funds. Company spokesman Craig Armitage declined to comment.

A group of 10 banks and pension funds agreed on Aug. 16 to convert \$35-billion of debt into notes maturing in as much as 10 years. Terms of the debt won't be released until mid-October, said Purdy Crawford, a lawyer at the Toronto firm Osler Hoskin & Harcourt LLP, who heads the group.

Until then, investors won't know when they will get their money back, or whether they will be repaid in full.

# From an H&R Block earnings conference call, August 30, 2007 –

I want to comment on our announcement to draw \$850 million on our committed backup lines of credit. These lines, with total capacity of \$2 billion, were put in place to give us flexibility and assure adequate liquidity for short-term needs.

In recent weeks, the commercial paper market has become increasingly constrained and unstable, especially for A2/P2 issuers like Block Financial. As a result, we decided to substitute this more stable source of funds for our working capital needs. These lines of credit extend through August of 2010 and are accessed today at a rate of LIBOR plus 30.5 basis points.

We're using proceeds to pay down commercial paper balances and to meet our ongoing working capital needs. We expect to have adequate liquidity for the upcoming tax season and into our fiscal fourth quarter when we typically become cash flow positive.

# How CP is brought to market

An issuer can sell its CP by hiring a dealer, who then shows the issuer's paper along with the other issuer the dealer handles. An issuer can also sell its CP by itself. That is, it has its own trading floor, where its people show the issuer's rates on trading screens, and interact directly with investors. Here is a Bloomberg screen showing the biggest such issuers:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/98287042-82d6-415f-98b5-0f347af6d1c3/f3796ca99b94ae5062e64d8111233f9c50f439a31f256673246a2ced7d7ac8cd.jpg)

You can see the size of the CP program on the far right, and the program's ratings from S&P, Moody's and Fitch just to the left of that

These three are the major (but not only) raters of CP programs  

- In order to be considered "top tier" for regulatory purposes, a program needs at least two top ratings from "Nationally Recognized Statistical Rating Organizations" (i.e. NRSROs)
- Probably the most important of these regulatory purposes is to qualify for investment by money funds, which are extremely limited in their ability to invest in CP that is not top tier by this definition  
Top tier is A-1 (or A-1+) from S&P, P-1 from Moody's, and F1 (or F1+) from Fitch

Sometimes A-1+ and F1+ are called "top top tier"

- You can see that Sears is "NP", or "Not Prime", and offers rates way above the top tier issuers

You almost never see junk CP like that. For the most part, the lower tier of CP is the A2/P2 paper in the graph a few pages back

<table><tr><td colspan="3">Change Country</td><td colspan="8">US TREASURY &amp; MONEY MARKETS</td><td colspan="3">08:54:47</td></tr><tr><td>07:12</td><td colspan="2">FED FUNDS</td><td colspan="5">US T-BILL YIELD/PRICE</td><td colspan="3">EURO$DEP</td><td colspan="2">REVERSE</td><td>REPO</td></tr><tr><td>BID/ASK</td><td>0.08000</td><td>0.11000</td><td>4W</td><td>0.02</td><td>-0.01</td><td>0.03</td><td>0.02</td><td>3M</td><td>0.3500</td><td>0.5000</td><td>D/N</td><td>0.23</td><td>0.13</td></tr><tr><td>LST/OPEN</td><td>0.08000</td><td>0.08000</td><td>3M</td><td>.04</td><td>0.00</td><td>.05</td><td>.04</td><td>6M</td><td>0.5500</td><td>0.7000</td><td>1W</td><td>0.20</td><td>0.18</td></tr><tr><td>HIGH/LOW</td><td>0.08000</td><td>0.08000</td><td>6M</td><td>0.07</td><td>0.01</td><td>0.07</td><td>0.06</td><td>1Y</td><td>0.8200</td><td>1.0300</td><td>2W</td><td>0.20</td><td>0.10</td></tr><tr><td>DJIA</td><td>12720.48</td><td>96.50</td><td colspan="2">S&amp;P 500 FUT</td><td colspan="2">1310.30</td><td>-0.50</td><td>CCMP</td><td colspan="2">2786.70</td><td>-1.63</td><td>CRB</td><td>312.13</td></tr><tr><td colspan="5">US BONDS YLD/BID/ASK/CHG</td><td colspan="3">DEALER CP</td><td colspan="2">SOD EUR$ FUT</td><td colspan="2">FUNDS FUT</td><td colspan="2">LIBOR FIX</td></tr><tr><td>18 12/31/13</td><td>0.238</td><td>99-2434</td><td colspan="2">99-25</td><td colspan="2">0018</td><td>150</td><td>0.240</td><td>MAR</td><td>99.5000</td><td>JAN</td><td>99.32</td><td>1W 0.19970</td></tr><tr><td>14 01/15/15</td><td>0.374</td><td>99-20</td><td colspan="2">99-2014</td><td colspan="2">-00+</td><td>300</td><td>0.280</td><td>JUN</td><td>99.4800</td><td>FEB</td><td>99.92</td><td>1M 0.27630</td></tr><tr><td>78 12/31/16</td><td>.303</td><td>99-27+</td><td colspan="2">99-2734</td><td colspan="2">-02+</td><td>600</td><td>0.330</td><td>SEP</td><td>99.4550</td><td>MAR</td><td>99.32</td><td>2M 0.40820</td></tr><tr><td>2 11/15/21</td><td>2.046</td><td>99-18+</td><td colspan="2">99-19</td><td colspan="2">-06</td><td>900</td><td>0.510</td><td>DEC</td><td>99.4400</td><td>APR</td><td>99.90</td><td>3M 0.56010</td></tr><tr><td>318 11/15/41</td><td>3.126</td><td>99-30+</td><td colspan="2">99-31+</td><td colspan="2">-16</td><td>1200</td><td>0.620</td><td>MAR</td><td>99.4300</td><td>MAY</td><td>99.90</td><td>4M 0.63900</td></tr><tr><td colspan="2">SPOT FOREX</td><td colspan="2">Key Rates</td><td colspan="3">Swaps</td><td>1800</td><td>0.730</td><td>JUN</td><td>99.4050</td><td>JUN</td><td>99.90</td><td>1Y 1.10995</td></tr><tr><td>JPY</td><td>76.9470</td><td>Prime</td><td>3.25</td><td>3Y</td><td colspan="2">0.706</td><td colspan="3">10yr Note Fut</td><td colspan="4">30Y MBS</td></tr><tr><td>EUR</td><td>1.3017</td><td>BLR</td><td>2.00</td><td>5Y</td><td colspan="2">1.212</td><td>CBT</td><td colspan="2">130-03</td><td>-05+</td><td>GNMA 4.5</td><td>108-29</td><td>108-30 -02</td></tr><tr><td>GBP</td><td>1.5560</td><td>FDTR</td><td>0.25</td><td>10Y</td><td colspan="2">2.167</td><td colspan="4">CRUDE OIL</td><td>GOLD 4.5</td><td>105-28</td><td>105-29 -02</td></tr><tr><td>CHF</td><td>.9271</td><td>Discount</td><td>0.75</td><td>30Y</td><td colspan="2">2.847</td><td>NYM WTI</td><td colspan="2">98.98</td><td>+65</td><td>FNMA 4.5</td><td>106-13</td><td>106-14 -02</td></tr><tr><td colspan="3">Date Time</td><td colspan="5">Exit</td><td colspan="2">Stey</td><td colspan="2">Actual</td><td colspan="2">Prior</td></tr><tr><td>124 10:00</td><td>US</td><td>1)</td><td colspan="4">Richmond Fed Manfact Index</td><td colspan="2">JAN</td><td>1</td><td colspan="2">--</td><td>3</td><td>--</td></tr><tr><td>124 21:00</td><td>US</td><td>2)</td><td colspan="4">2012 State of the U#### Address</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>125 1:00</td><td>US</td><td>3)</td><td colspan="4">MBA Mortgage Applicab#</td><td colspan="2">JAN 20</td><td colspan="2">--</td><td>--</td><td>23.1%</td><td>--</td></tr><tr><td>125 10:00</td><td>US</td><td>4)</td><td colspan="4">House Price Index Mo#</td><td colspan="2">NOV</td><td colspan="2">0.0%</td><td>--</td><td>-0.2%</td><td>--</td></tr></table>

Who buys CP, if not individuals? The biggest customers are money market mutual funds, managing the cash of individuals. The Federal Reserve attempted to identify the owners of the \(1.79 trillion of CP outstanding on 12/31/07, and found

- \$711B held by money funds  
- \$85B held by pension funds  
- $\$ 42$ B held by life insurance companies  
- \$125B held by mutual funds other than money funds  
- \(83B by brokers and dealers and so on.

In other words, the investors in CP are big institutional investors with some short-term money. Selling CP is very much like selling corporate bonds – a short list of potential investors who buy in big lots.

- The difference is that CP matures very quickly, so sellers are going back to the short list of investors many times a year.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/98287042-82d6-415f-98b5-0f347af6d1c3/cb79eb63547b36d7fd6a8a825b816dfd67cbf4a9d14d5f4a452372849dd92b8b.jpg)

CP pays no coupons, it just pays face value at maturity. If you buy \$10M face value of CP from GE Capital (the biggest issuer, by the way) maturing on April 18 (i.e., 30-day paper), then you will get \$10M on 4/18. It is therefore issued and traded at a discount, and when traders quote prices to each other, they talk in terms of discount rates, just like Tbills. So again if we call the face value F, then number of days to maturity n, and the discount rate d, then the price P is

$$
P = F - (d / 1 0 0) (n / 3 6 0) F
$$

So for example, if the discount rate for the \(10M of GECC paper is \(2.63\%\), then the price is

$$
\$ 10M - (2.63 / 100) (30 / 360) \$ 10M = \$ 9,978,083
$$

Compared to Treasury bills of the same maturity, CP has the exact same promised cash flows, but also has three disadvantages, each of which imposes a discount when investors purchase

- CP issues can default, and sometimes they do.
- Biggest ever was \$457MM of Pacific Gas & Electric paper in 2001  
- Treasury bills are widely regarded as free of default risk
- CP is less liquid. The secondary market for CP is not as active as the secondary market for Treasury bills.
- On any given day, an investor can buy CP maturing on any near-term date he wants  
- He can customize his CP investment to his liquidity needs, so there is little chance he will bring it back to the market
- CP interest is subject to the income taxes of many states and municipalities, but TB interest is not

As a result of the credit risk, liquidity, and taxation drawbacks, CP trades at a discount relative to Tbills with the same maturity

Here are the CP and TB rates of recent years:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/98287042-82d6-415f-98b5-0f347af6d1c3/0a53313f176bb1c3c0f411cd7183eb0153ac9b84bfd2dbc621f4b4994400a0d0.jpg)

The magnitude of this spread has varied considerably over this period:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/98287042-82d6-415f-98b5-0f347af6d1c3/d9e8ae358711742bcf0a79856acc9a8dbce126b14d3214a9abd14c9d446cfd33.jpg)

It was quite high, over 100bp, in the 90-91 recession but it has been even higher lately. Notice the volatility around year-ends.

Some of this is due to variation in the TB rate. Notice that, if the state tax on CP interest is  $8\%$  (about what it is here in PA), then

- if TB is paying  $8\%$ , CP has to pay  $8.70\%$  to have the same after-state-tax return. That is,  $(1-.08)(8.70) = 8.00$ , so after paying your state tax you'll have the same return as a TB investor  
- If TB is paying  $3\%$ , CP has to pay  $3.26\%$  to have the same after-state-tax return

So in other words, the spread has to be higher when rates in general are higher, just to keep the after-tax returns the same. It is therefore useful to consider not only the spread itself, but the spread divided by the TB rate:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/98287042-82d6-415f-98b5-0f347af6d1c3/7b04ddda3543d1258e4ee1874685af678fd43868ca70ecb1faf46ed71f328688.jpg)  
CP-TB Spread as Fraction of TB

By this measure, the spread is somewhat steadier over time, generally oscillating around  $8\%$ .

- Spread was so low during the recession because the short rate was so low, so the portion of the spread driven by taxes was small
But the recent spike looks even more extreme by this measure, given the decreases in short rates.

Spikes during higher market uncertainty (esp. the big defaults)

Like other corporate debt, CP is rated by the major agencies. Drexel Burnham sometimes issued unrated CP, but now it is almost unheard-of. All rating agencies have four main categories, which correspond to the categories of Moody's:

- P-1 Top of Investment-Grade, corresponding roughly to the long-term ratings A3 though Aaa (A-1 by S&P)  
- P-2 Middle to bottom of Investment-Grade, corresponding roughly to long-term ratings Baa2 through A2 (A-2)  
P-3 Very bottom of Investment-Grade (A-3)  
- NP Not Prime, corresponding to Speculative-Grade (B)

Not only is CP always rated, but almost all of the outstanding volume is highly-rated. As of 2/29/08 the Fed reports

- \$1,599B of Tier 1 paper (Rated A1 or P1)  
- \$66B of Tier 2 paper (A2 or P2)  
- Minimal amount below that

Of course the lower-rated paper trades at a discount. Here's the spread between 30-day P2 and P1 paper over the past ten years:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/98287042-82d6-415f-98b5-0f347af6d1c3/353472596e295da1a5a794a478a005786ed258c67c7613c58add68fe3525c79f.jpg)

This spread has of course gone nuts too. Notice the run-up in the spread before each year-end, and in particular before this past year-end. Investors are especially reluctant to hold risky paper at disclosure time

# Regulations that affect demand for CP

Money market mutual funds do everything they can to maintain their share prices at exactly \$1.

- Quoting a lower share price is known as breaking the buck. No retail money fund has ever broken the buck

The SEC helps them in this regard by allowing an account standard known as straight-line amortization for instruments with 60 days or fewer to maturity. It works like this: suppose you buy  $n$ -day CP with face value  $F$  at a discount  $D$ . In other words, you paid  $F - D$  for it today, and in  $n$  days you'll get  $F$ .

As long as  $n$  is no more than 60, you can

Value the investment at  $F - D$  

- Book  $D / n$  of interest every day for those  $n$  days

Investors will get interest at the rate  $D$  over those  $n$  days, even if the market rate has changed. If you bought all your paper at  $5\%$  and rates go to  $4\%$ , your investors keep getting  $5\%$  until that paper matures.

The virtue of doing your valuations this way is that you know that your valuation of the CP will not decrease, which could threaten your \$1 share price

- This accounting rule makes money funds especially interested in buying CP with 60 or fewer days to maturity  
- Or in other words, if you as a CP issuer keep your maturities in this range, you'll get better prices from the biggest part of your customer base

Another influence on CP maturities is the Fed's rule that banks can use CP as collateral for borrowing at the discount rule as long as its maturity is not greater than 90 days

- Banks therefore have little interest in buying longer-maturity CP

SEC regulations also affect the relative demand for highand low-rated paper. The SEC divides all CP into three categories

Tier-1: At least two ratings of A-1 or the equivalent from NRSROs  
Tier-2: At least two ratings of A-2, but not two of A-1  

- Everything else

A money fund can invest only in Tier-1 and Tier-2, and can invest only  $1\%$  of its money in any one Tier-2 issuer, and only  $5\%$  of its money in all Tier-2 issuers put together

- So the investment of money funds in Tier-2 paper is limited to  $5\%$  of their total assets. This holds down demand for Tier-2 paper  
- This is part of why demand goes down abruptly when paper is downgraded

## University of Chicago

### Booth School of Business

Financial Markets and Institutions

Douglas W. Diamond

# Business 35202

# Class Note 12 Part 2: Repos

# Repurchase Agreements (Repos)

Probably the easiest way to be introduced to repos is through an example. Suppose I have a security with a market value of V, say \$1M. You and I can enter into the following agreement:

Today, I sell you my security for  $V - m$ . Say  $\$ 1M-$ 50K =  $950K$

$\circ$  We would refer to  $m / V, 5\%$  in this case, as the margin, or haircut

Today, I also agree to repurchase the security tomorrow for

$\circ$ $V$ -m, i.e. the amount I sold it to you for, plus

$\circ$  Interest on  $V - m$  at a negotiated rate, say  $1\%$  /year

So the interest would be $950K(1/360)(1%) = $26.38

- This is how interest is calculated in this case: the loan amount (\(950K) times the number of days divided by 360 (1/360) times the annual rate (1%)

So tomorrow, I am supposed to pay you \$950,026.38, and you are supposed to give me my security back

Here are the key things to notice about this transaction

I am simultaneously

Lending a security, and  
 Borrowing money (i.e., the \$950K), on which I pay interest

- Simultaneously, you are

$\circ$  Borrowing a security, and  
Lending money, on which you get interest

- If I default on my obligation to repurchase the security, then you can try to make yourself whole by selling the security.

Since the security was originally worth  $5\%$  more than the loan, it will be sufficient to make you whole unless its value dropped by more than  $5\%$  during that day

- If you default on your obligation to sell the security back to me for the negotiated price of \(950,026.38, then I keep that amount

Since the security was worth more than the loan amount, I am losing money in this situation unless the security's value dropped by more than  $5\%$ , in which case I'm better off with the cash than the security

So you can think of a repo as collateralized borrowing of cash – I am borrowing against the value of my security by simultaneously selling it and contracting to repurchase it tomorrow (or, instead of tomorrow, whatever other day we agree upon).

- You can equivalently think of it as collateralized borrowing of the security by the other side of the repo. We will return to that perspective tomorrow

Notice that there are three key elements to a repo agreement

The margin (5% in our example)  
The term (1 day in our example)  
The interest rate (1% in our example)

Repos are fundamental to how institutions engaged in securities trading and dealing finance themselves. Notice that if I wanted to buy the security in our example for \(1M from someone, say Albert, I could do the following

- Agree with Albert that I'll buy the security from him for \$1M  
- Arrange with Bob to do a repo of this security with him, say at the terms discussed above  
- Then simultaneously, the following things all happen

Albert gives me the security  
I pass it on to Bob  
 Bob gives me the \$950K  
 o I add \$50K out of my own pocket to the \$950K, and give the $50K+$950K=\$1M to Albert

- At this point, Albert is out of the picture. He's delivered his security and gotten his \$1M, so he's all done. My remaining relationship is with Bob, from whom I'm borrowing money at 1%

The next day, let's say I want to sell the security to Charles, who's offering \$1.1M for it. I can agree to sell it to Charles for that much, and then the following things all happen simultaneously

Bob gives me the security  
I pass it on to Charles  

 - Charles gives me the \$1.1M  
Out of the $1.1M, I pay $950,026.38 to Bob

\(0 Which leaves me with \\(1.1M-\\)950,026.38 = \$149,973.62\$  
 So my net profit it is $149,973.62-$50,000=\$99,973.62

Notice that, as long as Bob and I end our repo according to the contract, Bob is not exposed at all to the value of the security. The rise (or fall) of its market value accrues completely to me.

Notice also that the margin I negotiate with Bob is what determines how much cash of my own I need to do this transaction. With a  $5\%$  margin, I'm paying in only  $5\%$  of the purchase price

# Tri-Party Repo

Much of the repo that occurs is what is called tri-party repo. All this means is that a third party gets involved as follows. Suppose I want to do the repo described above, and suppose Bob wants to do it too, but I don't trust Bob and he doesn't trust me. Suppose also, though, that we both trust JP Morgan. Then we could both do repo with JP Morgan:

- I do the same repo as above, except now the other side of the trade isn't Bob, it's JP Morgan, and the interest rate isn't  $1\%$ , it's  $1.25\%$ .  
- Bob does the same repo as above, except now the other side of the trade isn't me, it's JP Morgan, and the interest rate isn't  $1\%$ , it's  $0.75\%$ .  
- So now I'm paying  $0.25\%$  more interest, but what I get for that is more security: I am less worried that my counterparty will default on its obligation to sell me the security back at the prearranged price  
- And Bob is getting  $0.25\%$  less interest, but he also gets more security: he is less worried that his counterparty will default on its obligation to buy the security back at the prearranged price  
- JP Morgan makes the spread of  $1.25\% - 0.75\% = 0.50\%$  in exchange for bearing our counterparty risk

# Run on the Repo Market

If you are lending money in a repo transaction, the margin is what's protecting you against the scenario where 1) your counterparty fails to repurchase the security, and 2) the security's price has dropped.

- If you think this scenario is highly unlikely, then maybe you wouldn't require any margin at all. But as you start getting worried about your counterparty, or about the risk of the security, then you start requiring more margin

Let's say the security in our example is a subprime mortgage-backed security, and you get a little anxious about these. So you decide that  $5\%$  margin isn't enough; now you want  $10\%$ .

- So when I return to you tomorrow to repurchase the security as contracted, and I ask you if we can do it again, you say "Sure, as long as we increase the margin to  $10\%$ "  
- 10% margin on a \$1M security is \$100K. So this means I have to pay in \$50K more

What if I don't have \$50K more? Then I can't do the repo with you, and if everybody else demands 10%, then I'll just have to sell the security today, even if there's no ready buyer for it.

So let's say I sell the security, and I don't get a good price, say \$960K rather than \$1M. Now everybody else doing repos of that security are going to be affected, because the lenders will say "this security is now apparently worth $960K, not $1M. So now, I'm willing to loan only ($960K)(90%)=$864K against it"

- That is, they are marking the security to market  
- So everybody else borrowing against it now has to not only put up the  $10\%$  margin, but they also have to pay even more cash to cover this decrease in the mark-to-market value of the security  
Some of them won't have this much cash, and will be forced to sell  
- These forced sales will push the mark-to-market value down even more, and force even more investors to sell, and so on  
- Lenders are likely to respond to the increased risk of the securities by increasing margin, which increases the stresses on investors even more

This is again like a bank run, though with a twist. The twist is that marking-to-market spreads the contagion from borrower to borrower. That is, if my lenders aren't nervous but Fred's lenders are, and they force Fred to sell at a bad price, then that bad price is used by my lenders to reduce how much they'll lend to me, which makes me more likely to sell, and that reduces the market price more, and that makes someone else sell, and so on. So the whole market ends up shrinking.

Here's a graph showing margins (i.e. haircuts) of different quality mortgage-backed securities over time:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/98287042-82d6-415f-98b5-0f347af6d1c3/ce1a93f289be0eba9b596b9f9c1b409b60bd717cc536fcc186dcaea4f44ed093.jpg)  
Repo Haircuts, Various Structured Asset Classes, 2005-2008

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/98287042-82d6-415f-98b5-0f347af6d1c3/2393df17603176a7b040e7abaf1fc38ccc9ef03e1c27020d03b7c2b074daf622.jpg)  
G. Gorton, A. Metrick / Journal of Financial Economics 104 (2012) 425-451

Fig. 4. The repo-haircut index. The repo-haircut index is the equally weighted average haircut for all nine asset classes $^{1/4}$ included in Table 2, Panel D.

# Notice that

- Margins are zero until the summer of 2007  
- Then they start ramping up and up, with margin on subprime eventually reaching  $100\%$ 
	- Meaning, we won't lend a dime against subprime collateral  
- So the amount of cash investors needed to keep holding their mortgage-backed securities, particularly the subprime ones, went way up. So they had to either recapitalize, sell their securities, or go bankrupt (maybe all 3)  
- There are no hard numbers on how much the repo market shrank. Obviously it shrank significantly

What has the Fed done about the repo market? They have introduced a program known as the Primary Dealer Credit Facility, whereby the Fed will loan money to dealers, taking as collateral the kind of securities that would normally be used in repo transactions. These loans aren't repos but they are similar. The total size of this program is about \$20B.

# Money Market Mutual Funds

Retail investors have two similar alternatives

Deposit in a bank  

- Invest in a money market mutual fund

Money market mutual funds (I'll call them just money funds) were invented to simulate bank deposits, and yet pay more interest. The first money fund, the Reserve Fund, was rolled out in the 1970s, when banks were limited in how much interest they could pay, and the interest rate that could be earned on CP and similar securities went much higher. Even though those limits on banks are gone now, money funds remain popular as a way to get more interest than banks pay. However, while banks have deposit insurance, money funds are not insured, so with that extra yield comes extra risk.

Over the years, money-fund investors experienced almost exactly zero risk. This is because every time a money fund made an investment that went bad, the fund family ate the loss by buying the bad investment from the fund at 100 cents on the dollar. That is, the fund families did not have to protect money-fund investors from the loss, but they did anyhow to protect the impression that money funds are virtually risk-free. What this has meant is that the share price of (virtually) all money funds has always stayed at precisely \$1/share. In the language of the industry, the funds avoided "breaking the buck." Money funds prospered, and their total assets are now \$3.75 Trillion.

But on September  $16^{\text{th}}$ , 2008, after Lehman went down, it turned out that a big investor in Lehman paper was none other than the Reserve Fund, the original money fund. The loss was far too big for the fund to cover, so they broke the buck. This led to a run on money funds, which in turn led to a giant spike in money-market rates, as money funds became sellers rather than buyers of money-market instruments, and this in turn was causing severe stress to corporations funding themselves in the money market. The Treasury intervened on September  $19^{\text{th}}$ , announcing that it would guarantee all existing investments in money funds that 1) had not already broken the buck, and 2) paid a small fee to be included in the program. All the major fund families have joined this program

- So if you had  \$10K in a money fund on September 19<sup>th</sup>, and you've left it there, and your fund family paid into this program, then that\$ 10K was guaranteed by the Treasury  
Essentially, this is complete deposit insurance for these deposits  
- The program was extended to September  $18^{\text{th}}$  2009. This program succeeded in stopping the run.  
- New regulations of MMF were put into place, but more are probably on the way. Prime money market funds experienced runs again in March 2020, and got a new government/ Federal Reserve lending program to stop it.

## Class note 13: The LTCM meltdown

### I. Introduction

To understand Long Term Capital Management's (LTCM) meltdown, note that they were taking liquidity risk in two ways. First, they were long less liquid assets and short more liquid assets that provided almost the same cash flows. For example, they were long the 29.5 year off the run treasury and short the 30 year on the run treasury bond. Second, they took large margined positions. They were subject to the liquidity risk of a margin call where they would be forced to close out the position. If they faced liquidation losses from unwinding positions, and if their capital was sufficiently impaired to make losses to lenders possible, they could have a "run" as lenders foreclose in anticipation of other lenders foreclosing.

Whenever there is a limit to liquidity creation, illiquid assets will need to offer higher expected returns than more liquid assets. Institutions like banks can be set up to partially arbitrage away this price of illiquidity. The arbitrage between the more and less liquid assets is a significant part of the LTCM strategy. They specialize in near arbitrage between assets for which it was hard to see that their only difference is liquidity (although this is not their stated goal, it is my interpretation). LTCM has a comparative advantage in making these bets. They have the quantitative and creative skills to value the assets (probably the best such skills in the world). And because they lock in investors for a long term, it seemed unlikely that they would need to liquidate early.

Their losses got so large that they faced problems with margin calls rather than investor withdrawals. Thus, they lost their long horizon. Second, during the period of panic after the Russian default, the significance of liquidity on asset prices increased. The Russian default revealed information that the International Monetary Fund (the closest thing to an international lender of last resort) would not bail out a country that did not live up to its promises, even if this might damage the stability of world financial markets. Investors gravitated toward more liquid assets, depressing the price of illiquid assets relative to liquid. This caused the correlation between their positions to increase beyond

what had existed in the previous data they had used to estimate the value at risk in their positions.

All of this we can easily understand in the Diamond-Dybvig bank run model. It shows that it pays to try to earn the liquidity premium, but that you are exposed to the risk that you might melt down. That model does not stress that some liquidity bets are hard to see and require special asset pricing skills to identify. In addition, there is more that we can learn by focusing in general on the risk of taking long-term arbitrage-like positions.

The goal of this class note is to understand the risks in taking positions that are very similar to riskless arbitrage opportunities. I want to both simplify and extend the ideas in the Shleifer-Vishny paper in the packet, "The Limits to Arbitrage." Read the words in that paper. You can use the math in this note if you do not want to invest in the math in their model.

Begin with a traditional arbitrage opportunity. Suppose that shares of ExxonMobil on the NYSE sold for  \$90 per share, and those on the Chicago stock exchange sold for\$ 80 per share. If you can simultaneously buy 1 million in Chicago shares and sell short 1 million on the NYSE, you make a sure profit by immediately covering the short with the shares you buy in Chicago. If the cost were less than \$10 per share, anyone who saw this would make the trade. It takes little skill to see that all ExxonMobil shares are the same security, so we expect that the price will not be much different on the two exchanges.

Suppose that instead, there were two "effectively similar" trades. For example, suppose that a share of a holding company would distribute one share of ExxonMobil plus one of ChevronTexaco in exactly two years, and that the holding company was selling for less than the price of one share of ExxonMobil plus one of ChevronTexaco. You can't just short one share of ExxonMobil and one of ChevronTexaco and buy one share of the holding company to immediately cover the short. There are two problems: the items are not legally identical, and it may be that some others do not see that the holding company will eventually be exactly identical to the two shares of oil stock. Because they are not legally identical, you must carry the position for two years to cover the short. Further, if not everyone sees that positions are identical; the prices will not

necessarily always be in line. The fact that not everyone sees them to be identical is the reason that they might be out of line today, presenting the apparent profit opportunity to you.

Because not everyone sees the opportunity today, it is quite possible that not everyone will see it in one year. If you need to close out the position in one year, the gap may have widened. This is not a problem if you never need to close it out in one year and you have no limit to the amount of capital that you can bring to such positions.

Because outside investors and lenders do not know the ability or see the models of hedge fund managers, they will limit the amount of capital that they provide to managers. Investors and lenders do see their ex-post performance and use it to estimate the ability of managers. This is the reason for arbitrageurs' limited access to capital and for things that work like margin calls after a loss. Shelifer and Vishny call it performance based arbitrage ("PBA"). If an arbitraguer ("arb") loses money, then outsiders reduce their estimate of the quality of the arb's analysis, and pull out funds or force him or her to liquidate positions (or, if the outsider is a lender, force margin calls). This note examines how limits on the amount of capital that an arb can raise, and these possible future losses of capital under management, can influence the bets that an arb will place. We examine a very simple version of this: investors will pull all funds under management out whenever there is a loss. More generally, the amount of capital available would be a function of the extent of the loss, but we can see the main point with the more extreme assumption that if the arb loses any money at all, he loses all assets under management. This simplifies the analysis because the arb will just choose whether to invest at date 1 or date 2, instead of choosing the fraction of funds to invest at each date.

### II.

#### An Example

Consider two assets that will be identical on date 3, but it is not clear yet that they are identical. On date 3, asset A will be worth 100 units of asset B. If A is not selling for 100 times the price of B, there is a long-term arbitrage opportunity.

Today is date 1 and the price of asset A is  $p_1$  ( $p_1$  is the date 1 relative price of asset A to asset B, and the relative price will become 100 on date 3). On date 2, the assets will revert toward the proper price of 100 (possibly all the way) with probability 1-

q. We will refer to this revision toward the proper price as a "news trade." With probability  $q$ , however, the mis-pricing will get worse, and the price will be  $p_2 < p_1 < 100$ . Following Shleifer-Vishny, we will say that this further mis-pricing is due to misinformed "noise traders." It could be for any reason, however. If the assets differ in liquidity, and the significance of liquidity increases, this is an alternative motivation for the prices diverging.

Extreme performance based arbitrage works as follows. If the arb loses money at date  $t$ , he is out of the arb business forever (could generalize this to "if he loses enough money," but this makes the math a little harder).

The arb gets compensated as a percentage of assets under management (a very similar analysis applies if instead the arb gets a percent of profits).

Suppose that the price at date 1 is  $p_1 = 80$ , and that on date 2 with probability  $q$  it will fall to  $p_2 = 70$  (due to a noise trade) and with probability 1-q it will rise to by 20 to  $p_2 = 100$  (due to a news trade). On date 3 the bet will mature and as a result,  $p_3 = 100$  for sure.

To see the effect of PBA, let us compare it with a benchmark of the case of someone investing his or her own money, which is equivalent to a hedge fund not subject to PBA.

# II.A. Decisions by an investor not subject to Performance Based Arbitrage

If the non PBA investor invests at date 1, the value at date 3 is 100 for sure, so if the investor invests  $\mathrm{D}_1$  at date 1, the date 3 value is:

$$
(1 0 0 / 8 0) \mathrm{D}_{1} \text{or}
$$

in general

$$
\left(\mathrm{V} / \mathrm{p}_{1}\right) \mathrm{D}_{1}.
$$

If instead the non PBA investor waits until date 2 to invest (and just holds treasury bills yielding  $0\%$  for the period), then the price will be 70 or 100 (with prob q and 1-q respectively). When the price drops to 70, the non PBA investor will buy  $\mathrm{D}_1$  units, and when the price is 100, the investor will continue to hold treasury bills. The expected date 3 value of waiting until date 2 to take a position is:

$$
[ \mathrm{q} (1 0 0 / 7 0) + (1 - \mathrm{q}) 1 ] \mathrm{D}_{1} \qquad \text{or},
$$

in general

$$
[ \mathrm{q} (\mathrm{V} / \mathrm{p}_{2}) + (1 - \mathrm{q}) ] \mathrm{D}_{1}.
$$

The non PBA investor will go ahead and invest at date 1 when it gives a larger expected value of assets, or:

$$
1 0 0 / 8 0 \geq q (1 0 0 / 7 0) + (1 - q), o r
$$

$$
\mathrm{q} <   7 / 1 2 = 0. 5 8
$$

or in general:  $q \leq \frac{p_2(V - p_1)}{p_1(V - p_2)}$ .

A regular investor would wait only if the increased expected return from waiting to invest times the probability that the return increases, exceeds the return from investing today.

# II.B. Decisions by a hedge fund that is subject to PBA

If the PBA arb invests  $\mathrm{D}_1$  at date 1, his fund is closed with probability  $q$ , when the price moves away from fundamental value.

Investing  $\mathrm{D}_1$  at date 1 produces expected date 2 assets under management of:

$$
(1 - q) (1 0 0 / 8 0) D_{1} + q (0).
$$

The last term,  $\mathbf{q}(0)$  is zero because, if he loses money, he is out of business.

If the PBA arb waits until date 2 to invest, he won't lose assets under management, but with probability 1-q, the profit opportunity goes away. The expected value of date 3 assets under management if he waits to invest at date 2 it then:

$$
\mathrm{q} (1 0 0 / 7 0) \mathrm{D}_{1} + (1 - \mathrm{q}) \mathrm{D}_{1}.
$$

The PBA arb invests at date 1 when:

$$
(1 - q) (1 0 0 / 8 0) \geq q (1 0 0 / 7 0) + (1 - q) \quad \text{or}
$$

$$
\mathrm{q} <   7 / 4 7 = 0. 1 5
$$

$$
\text{or in ge ne ra li f} q <   \frac{p_{2} (V - p_{1})}{p_{1} (V - p_{2}) + p_{2} V}.
$$

Thus, arcs subject to PBA are averse to profitable long-term bets that might go against them.

If it takes special skill to see these opportunities, and all with those skills are subject to PBA, long-term risky investments won't be undertaken by arb's.

Table 1: Current and future prices:  

<table><tr><td>Date</td><td>Price If Noise trade occurs at date 2 (probability = q)</td><td>Price If Revert To True Value (“News trade” at date 2) (probability = 1-q)</td></tr><tr><td>1</td><td>80</td><td></td></tr><tr><td>2</td><td>70</td><td>100</td></tr><tr><td>3</td><td>100</td><td>100</td></tr></table>

On date 2, any arbs that see the opportunity will invest in it, so long as  $p_2 < 100$ . But that need not prevent the market from being out of line at date 2. The arbs who see the date 2 opportunity have limited access to capital, and as a result they will not push the price all the way to 100, despite being a pure arbitrage. Remember that it is not obvious to all that this is an arbitrage opportunity.

The prices in table 1 already reflect the activities of arbs. We will assume that  $q = 0.25$  for some examples, and for other examples we assume  $q = 0.5$ . For both values, no arb subject to PBA will trade at date 1 ( $q > 0.15$ ), but non-PBA arbs will trade at date 1 ( $q < 0.58$ ).

# II.C.

# LTCM as a long term arb

Suppose that your fund had a very good reputation, and you could get funds locked in and avoid PBA. You would have a relatively easy life (assuming that you really did have the skill to see opportunities), because long term opportunities would be passed over by short term PBA funds.

Suppose that at date 1 there are PBA funds and your long-term fund. The PBA funds wait until date 2 to get in, hold treasuries from dates 1 to 2, and hold treasuries from 2 to 3 if the arbitrage opportunity is gone by then.

# The two-period expected return of a PBA fund is:

$$
\begin{array}{l} \mathrm{q} (1 0 0 / 7 0) + (1 - \mathrm{q}) (1) = \mathrm{q} (1 + 3 / 7) + (1 - \mathrm{q}) 1 = \mathrm{q} (3 / 7) + 1 \\ = 0. 2 5 (3 / 7) + 1 = 1. 0 5 2 5 \text{(fo r} q = 0. 2 5) \\ \end{array}
$$

The twoperiod return of the long-term fund (assuming that it raises no new capital at date 2, so it can't scale up its bet if the price goes down at date 2),

$$
1 0 0 / 8 0 = 1. 2 5.
$$

The ability to lock in the funds for the long term allows the fund to take different bets in markets with less competition. This is part of the story behind the establishment of LTCM. Their reputation was so strong that they could get money locked in.

The problem arose when they lost so much money that they faced margin calls. For a large enough loss, even LTCM had the equivalent of PBA, leading to forced sales at the bottom. LTCM had locked in investor's old money. But once they had lost enough to face margin calls, their ability to raise new capital to meet the calls without liquidating their positions was limited. Not only was there standard PBA uncertainty about LTCM's ability to continue to make excess returns at low risk, but there was a bank run style collective action problem. Unless LTCM could attract enough capital to meet all near term margin calls, it would be forced to get out at the bottom. Anticipating this, they would be unable to raise smaller amounts of capital. Since the market thought it was likely that they would soon liquidate and push down the price, the current price of their positions moved against them due to front running.

Let us modify the notion that LTCM will not lose funds under management, to assume instead that they will lose them only if their loss is very large (defined below). If LTCM assumed that their losses would not be "very large", this would not affect the position that they take. And if they (and others like them) did get such a loss, it would push down the price as they were forced to liquidate.

A large unanticipated price drop would result in a meltdown (forced liquidation). A meltdown causes an even larger price drop when the arcs (LTCM in particular)

liquidate. Normally, the trades of arbs are a stabilizing force, offsetting the trades of noise traders who would push the price further below 100. When there is a meltdown, this reverses. Instead of being a stabilizing force, the arbs further destabilize the price by joining the selling.

To evaluate this further, we need to think about price formation. This gets a bit complicated, and we will just follow Shelifer-Vishny.

The prices we used in table 1 are those that prevail AFTER the arbs have put on their trades. If there were no trades coming in during a period, the price would remain unchanged. If there were only noise trading, the price goes down when noise traders sell and up when they buy. If there is also some trade by arbs, the price changes by the net amount of trade. That is:

$$
P_{t} = \left\{ \begin{array}{l l} P_{t - 1} + \text{No is et ra de} + \text{ar bt ra de s} & (\text{ha pp en sw it hp ro bq}) \\ P_{t - 1} + \text{Ne ws tr ad es} & (\text{ha pp en sw it hp ro b1 -q}) \end{array} \right\}
$$

We could allow for arb trades in addition to news trades, but in normal circumstances, news trades from many investors who see the mis-pricing will be sufficient to remove arbitrage opportunities.

Let us assume that LTCM already had established a position in the trade before date 1 (because of past mis-pricing), and was long 20 units. Thus if LTCM was not long 20 units, the price would be lower by 20. Arbs who are subject to PBA would not trade before date 2. (In practice, other arbs sometimes copied LTCM, so there might be some others who each took smaller positions in the same bets as LTCM. We will ignore this.) The prices in back in table 1 include the efforts of various arbs. If they were not present, the date 1 and 2 prices would be lower, in part because of liquidity differences, in part because of "noise trader" selling.

Table 2 shows the impact of the arcs. Before date 1, LTCM had a position of 20. On date 1, the price is 80. The price would have dropped on that date, but LTCM bought 5 more, offsetting selling of 5 by noise traders on date 1. There is further noise trade on date 2 with probability q. If the noise trade occurs at date 2 it is noise trader selling of 25. This is partly offset by added buying of 5 more units by LTCM, and buying of 10 units

by PBA arbs who see the opportunity (and are willing to bet now that it is short-term arbitrage).

Table 2: Trades by arbs and noise traders that produce prices in table 1.  

<table><tr><td colspan="2"></td><td colspan="6">If Noise Trade Occurs At Date 2</td><td rowspan="2"></td><td colspan="2">If News trade at date 2</td></tr><tr><td>Date</td><td>Price</td><td>Noise trade occurs at 1, and with prob. q At 2</td><td>Ltem Trade</td><td>Ltem Position</td><td>Other Arb Trade</td><td>Other Arb Position</td><td>Total Order Imbalance</td><td>News Trade (Prob 1-q)</td><td>Reverted Price If News Trade</td></tr><tr><td>0</td><td>80</td><td></td><td></td><td>20</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>1</td><td>80</td><td>-5</td><td>+5</td><td>25</td><td>0</td><td>0</td><td>0</td><td></td><td></td><td></td></tr><tr><td>2</td><td>70</td><td>-25</td><td>+5</td><td>30</td><td>+10</td><td>10</td><td>-10</td><td>Or</td><td>+20</td><td>100</td></tr><tr><td>3</td><td>100</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></table>

Suppose instead that things play out differently on and after date 1. The Russian default causes panic selling at date 1 by noise traders, when LTCM already has a position of 20. The noise trade at 1 is now  $-30$ . If this loss is large enough to force LTCM out immediately at date 1, forcing them to sell 20 at date 1, look at the meltdown in table 3:

Table 3: A meltdown after the Russian default, if LTCM must liquidate immediately  

<table><tr><td colspan="2"></td><td colspan="6">If Noise Trade Occurs At Date 2</td><td rowspan="3"></td><td colspan="2">If News trade at date 2</td></tr><tr><td>Date</td><td>Price</td><td>Noise trade occurs at 1, and with prob q at date 2</td><td>LTCM trade</td><td>LTCM position</td><td>Other arb trade</td><td>Other arb position</td><td>Total Order imbalance</td><td>News trade (prob. 1-q)</td><td>Reverted price if news trade</td></tr><tr><td>0</td><td>80</td><td></td><td></td><td>20</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>1</td><td>30</td><td>-30</td><td>-20</td><td>0</td><td>0</td><td>0</td><td>-50</td><td></td><td></td><td></td></tr><tr><td>2</td><td>15</td><td>-25</td><td>0</td><td>0</td><td>+10</td><td>10</td><td>-15</td><td>Or</td><td>+20</td><td>50</td></tr><tr><td>3</td><td>100</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></table>

The panic from the Russian crisis would make the price fall by 30 (from 80 to 50 on date 1) by itself. By forcing the LTCM to liquidate, it makes the price fall by 50 (80 to 30). The losses force a liquidation, in a way very similar to a bank run.

In practice, LTCM was careful to get some advanced assurance from margin lenders not to force immediate margin calls. As a result, they had some time to meet the calls. We can interpret this as meaning that they are not forced out at date 1, but can wait until date 2 to sell. If the news trade were to arrive on date 2 (which happens with

probability 1-q), they could avoid liquidating their position. However, with probability q, the noise trade of  $-25$  comes in at date 2, and LTCM would be forced to sell on date 2.

Suppose that LTCM could delay liquidation until date 2, and it could still buy 5 at date 1 to seek a profit. Then the prices after the Russian default would be those shown in table 4.

Table 4: A delayed meltdown if LTCM can wait to liquidate:  

<table><tr><td colspan="8">If Noise Trade Occurs At At Date 2</td><td colspan="2">If News trade at t=2</td></tr><tr><td>Date</td><td>Price</td><td>Noise Trade Occurs At 1, And With Prob q At 2</td><td>LTCM Trade</td><td>LTCM Position</td><td>Other Arb Trade</td><td>Other Arb Position</td><td>Total Order Imbalance</td><td>News Trade (Occurs With Prob q at date 2)</td><td>Reverted Price If News Trade</td></tr><tr><td>0</td><td>80</td><td></td><td></td><td>20</td><td></td><td></td><td></td><td rowspan="2"></td><td></td></tr><tr><td>1</td><td>55</td><td>-30</td><td>+5</td><td>25</td><td>0</td><td>0</td><td>-25</td><td></td></tr><tr><td>2</td><td>15</td><td>-25</td><td>-25</td><td>0</td><td>+10</td><td>10</td><td>-40</td><td>Or</td><td>+20</td></tr><tr><td>3</td><td>100</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></table>

Let us compute the expected price change from date 1 to 2. With probability  $q$ , there is a noise trade that forces it down to 15, because LTCM is forced out. With probability  $1 - q$ , there is a news trade, that pushes the price up to 75 (and then LTCM is not forced out). The expected price change is then:

$$
\mathrm{q} (1 5 - 5 5) + (1 - \mathrm{q}) (7 5 - 5 5) = 2 0 - \mathrm{q} (6 0)
$$

For  $q = .25$ , this is  $+5$ , but for  $q = 0.5$ , it is  $-10$ . Let's assume  $q = 0.5$ , and we will learn something about the front running problem faced by LTCM.

When the expected price change from date 1 to 2 is negative, any trader who knows that he or she must sell on date 2 will instead sell on date 1. Further, if not subject to PBA, it will be profitable to short on date 1 so long as the expected price change is negative. If some of this trade occurs, it will further reduce the date 1 price. We will examine this in homework 5.

University of Chicago

Booth School of Business

Financial Markets and Institutions

Douglas W. Diamond

Business 35202

New Class note (May 22, 2022 revision)

TerraUSD as a bank run or as a failure of fixed exchange rates.

Here is a description of TerraUSD from CoinDesk.com:

So, how does it actually work?

It all has to do with arbitrage. This usually refers to the process of making small profits by finding discrepancies between asset prices on different exchanges. However, in the case of LUNA and UST, it works slightly differently.

In the Terra ecosystem, users can always swap the LUNA token for UST, and vice versa, at a guaranteed price of \$1 – regardless of the market price of either token at the time. This is important to note because it means if demand for UST rises and its price rises above \$1, LUNA holders can bank a risk-free profit by swapping \$1 of LUNA to create one UST token (which due to a rise in demand in this example, is worth more than \$1).

During the swapping process, a percentage of LUNA is burned (permanently removed from circulation) and the remainder is deposited into a community treasury. Funds in the treasury are then used to invest in applications and services that expand the utility of the Terra ecosystem.

Burning a percentage of LUNA tokens reduces the number of overall tokens left in circulation, making them more scarce and, therefore, more valuable. By minting more UST tokens, it has the effect of diluting the existing tokens in circulation and bringing the overall price back down to its \$1 level.

Similarly, if demand is low for UST and the price falls below \(1, UST holders can exchange their UST tokens at a ratio of 1:1 for LUNA – which is worth more because of their scarcity and so the user can bank another risk-free profit. (End of quote from CoinDesk.com)

What does this mean? We can see that this is a highly flawed design and is subject to runs or speculative attacks. Start with two analogies. The first is fixed exchange rates, as the UK Pound in 1992 and the East Asian currencies in 1998. The second is a bank run.

# TerraUSD as fixed exchange rates.

The fiat currencies the UK Pound in 1992 and the East Asian currencies in 1998 tried to keep fixed exchange rates to the dollar, but failed. Each had speculative attacks on them (George Soros in the 1992 event), but the attacks probably just speeded up an inevitable devaluation. The local governments and central banks tried to defend and maintain the exchange rate. They held US Dollar reserves to use to buy their currency to offset selling that would push down their exchange rate. This is like reserves serving as collateral held to back other crypto currencies (such as Tether), or the one-day liquid assets held by a money market fund. Once they are gone, an expected devaluation is probably self-fulfilling. As it turns out, there were no reserves held at Luna or TerraUSD (see below, about Luna Foundation Guard). The only collateral keeping the TerraUSD fixed at 1 USD was Luna, which had no value unless it was useful as a cryptocurrency. If there was selling pressure on Terra, they could be converted into \$1 worth of Luna. But if everyone is expected to swap TerraUSD for Luna and the market value of Luna is believed to be less than all the TerraUSD, the value of TerraUSD will drop below

\$1USD. The supply of Terra will drop but nothing prevents the value of all Luna from dropping to zero (or almost zero as it is on 5/19/2022). An analogy with UK Pound is useful. There is demand for UK pounds and the UK could say that you are free to swap pounds for dollars at fixed exchange rate. This works if all believe it works forever. But if many believe that it may not work in the future all will sell pounds to buy dollars, and the exchange rate peg will break. That's what happened in 1992 and what happened to TerraUSD in 2022. We can see the exact same point a bit more precisely, if we think of this as a bank run (in the next section).

# TerraUSD as a bank run.

The second analogy is tranching claims into short-term "safe" debt (TerraUSD) and equity (Luna). First think of Luna as equity in the value added of Terra and Luna together. The value of the combination is much higher if TerraUSD is a stable coin than if it is predicted to blow up. Call the value if it persists as stable: VS. The value of TerraUSD coins at \$1 each is T.

There is a lower value of value of Terra and Luna together if Terra is not a stable coin. An example of a coin that is not a stable coin is Bitcoin. Call the value if TerraUSD is not a stable coin (is Unstable), VU<VS, the value if a stable coin. For example, VU=10<VS=30.

Case A (no run) Suppose everyone expects TerraUSD to survive, be worth  $1 and be stable, and \mathrm{T} < \mathrm{VS}$  the value if it persists as a stable coin. In this case the value of Luna (equity) is VS -  $\mathrm{T} > 0$ . One could convert Terra to Luna at  $\$ 1$ , but would have no reason to do so once the value of Terra is  $\$ 1$ . This is a self-fulfilling prophecy. For the numbers, suppose that  $\mathrm{T} = 25$ . Then Terra USD is worth 25 and Luna is worth VS-T = 30 - 25 = 5.

Case B (run). Suppose that the value of Terra satisfies  $T > \mathrm{VU}$ . If this happens then the value of Luna today is zero because it would be  $\mathrm{VU -T <0}$ , apart from limited liability. For the numbers, suppose that  $T = 25$ , then Terra is worth  $\mathrm{VU} = 10$  and Luna is worth zero.

In a run, anyone who holds Terra would want to convert to Luna if the price valued a TerraUSD at \$1, and the stable coin Terra will not persist. Terra will drop in value to VU, Luna will be worth zero and there will be run on the stable coin because it is unstable. Terra will become an unstable coin.

There are two self-fulling prophecies: Terra is Stable and Terra is Unstable. There is no real collateral so the most the combined entity is worth in a panic is VU. There was a reserve of some Bitcoin in Luna Foundation Guard, a separate organization, which was to serve a similar function reserves foreign currency (US

dollar) reserves that a government would use to defend its fixed exchange rate against a speculative attack. But it was not enough.

TerraUSD plus Luna could be worth VS=30 if everyone was sure it would be worth that amount. However, the right to convert to equity at \$1 is worthless if the value of equity is wiped out, which occurs if everyone wants to convert. Thus, the ability to convert TerraUSD to Luna does not provide stability or value if it is expected to melt down and have a run. In a run, Terra plus Luna is worth only VU=10. To a first approximation, this is what happened in May 2022. TerraUSD was a fake safe asset.

This is just a part of what was going on. The ability convert Terra to other stable coin crypto currencies provided another way to exit TerraUSD in a run (you can read about Anchor, but that gets quite complicated).