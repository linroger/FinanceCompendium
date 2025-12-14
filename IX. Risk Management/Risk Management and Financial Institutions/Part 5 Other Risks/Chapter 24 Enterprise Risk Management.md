---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Chapter 24
linter-yaml-title-alias: Chapter 24
---

# Chapter 24

# Enterprise Risk Management

Much of this book has focused on understanding and quantifying different types of risk: market risk, credit risk, operational risk, and so on. An important part of a risk manager's job is to ensure that these risks are correctly evaluated. But it is also important for the risk management function to take a holistic, big-picture view of risk. It should identify potential adverse events and their full consequences. The total exposure to an adverse event can be greater than (or less than) the result obtained by considering each risk type separately. Enterprise risk management (ERM) is the name given to this holistic approach to risk management.

In understanding ERM, it is important to distinguish top-down and bottom-up approaches to risk management. Bottom-up approaches are concerned with assessing the different types of risk borne by different business units and combining them. In top-down approaches, the overall risk appetite of the organization is defined, and this is then used to define risk limits for different parts of the organization. In practice, a financial institution needs to use both top-down and bottom-up approaches. A top-down approach is necessary to define the overall risk appetite, and a bottom-up approach is necessary to evaluate whether the risks being taken by business units are consistent with this risk appetite.

In 2004, the Committee of Sponsoring Organizations of the Treadway Commission (COSO) issued the Enterprise Risk Management Integrated Framework (see www.coso.org) and proposed this definition of ERM:

Enterprise risk management is a process, effected by an entity's board of directors, management, and other personnel, applied in strategy setting and across the enterprise, designed to identify potential events that may affect the entity, and manage risk to be within its risk appetite, to provide reasonable assurance regarding the achievement of entity objectives.

This definition makes a number of points. First, there should be board involvement in ERM. Second, ERM is a component of a company's strategy. Third, it involves identifying potential adverse events. Fourth, as part of ERM the company must identify its risk appetite and manage risks in a way that is consistent with that appetite. Fifth, ERM should help a company achieve its objectives and be a core part of strategic planning and strategic execution processes.

Many financial institutions (and their boards) have historically had a compliance orientation as far as top-down risk management is concerned. Their aim was to satisfy regulators and stay within the letter of the law. ERM is moving financial institutions away from this mind-set. It is leading to the risk management function having a strategic orientation and being value enhancing. A company that manages risk effectively has a competitive advantage over another company that does not do so.

This chapter considers the essential elements of ERM. It considers risk appetite, risk culture, how potential adverse events are identified, and how ERM is integrated into a financial institution's strategy.

# 24.1 Risk Appetite

An essential part of ERM is concerned with specifying the organization's risk appetite. How much risk is the organization prepared to take in order to achieve its strategic objectives and business plans? One dimension of the risk appetite of a financial institution is likely to be concerned with the loss it is prepared to incur if a worst-case scenario happens. This can be expressed in terms of an enterprise-wide value at risk (VaR) or expected shortfall (ES) measure.

For a fund manager, this dimension of risk appetite is relatively easy to quantify—at least in theory. Chapter 1 explained the theoretical trade-off between expected return and risk. The mix of assets influences the beta of the portfolio, and this in turn determines the theoretical expected return and risk. Figure 24.1, which is similar to Figure 1.4 in Chapter 1, shows the trade-off between risk and expected return for a portfolio. As shown in Section 1.2, if the beta of the portfolio is  $\beta$ , the expected return  $\mu_{P}$  is

$$
\mu_ {P} = (1 - \beta) R _ {F} + \beta R _ {M}
$$ and the standard deviation of the return is


$$

\sigma_ {P} = \beta \sigma_ {M}

$$ where  $\sigma_{M}$  is the standard deviation of the market return,  $R_{F}$  is the risk-free return, and  $R_{M}$  is the expected return on the market. Assume returns are normally distributed. $^{2}$  The return,  $R$ , that has a probability  $p$  of being exceeded in one year is given by

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/f92d6a55-cea9-43e0-894c-41ef6fed0a93/9f8126102b4871bb420b641f96836de7d9722a4bef5088a7f0ffd2f191a2c8dc.jpg)

Figure 24.1 Dependence of Mean and Standard Deviation of a Portfolio on Beta,  $\beta$

$$
N \left(\frac {R - \mu_ {p}}{\sigma_ {p}}\right) = 1 - p
$$ where  $N$  is the cumulative normal distribution function. Substituting for  $\mu_P$  and  $\sigma_P$  we obtain


$$

\frac {R - (1 - \beta) R _ {F} - \beta R _ {M}}{\beta \sigma_ {M}} = N ^ {- 1} (1 - p)

$$ or


$$

\beta = \frac {R - R _ {F}}{R _ {M} - R _ {F} + N ^ {- 1} (1 - p) \sigma_ {M}} \tag {24.1}

$$

This formula allows us to determine the beta that is consistent with a particular VaR objective. Table 24.1 shows returns including dividends from the S&P 500 over the years between 1970 and 2021. The mean and standard deviation of returns over the period are  $12.45\%$  and  $16.88\%$  so that  $R_{M} = 0.1245$  and  $\sigma_{M} = 0.1688$ . Suppose that the risk-free rate is  $2\%$  ( $R_{F} = 0.02$ ). Suppose further that a fund's risk appetite is such that it wants to

Table 24.1 Total Annual Return from the S&P 500 (including dividends) between 1970 and 2021

<table><tr><td>Year</td><td>Return (\%)</td><td>Year</td><td>Return (\%)</td><td>Year</td><td>Return (\%)</td></tr><tr><td>1970</td><td>4.01</td><td>1988</td><td>16.61</td><td>2006</td><td>15.79</td></tr><tr><td>1971</td><td>14.31</td><td>1989</td><td>31.69</td><td>2007</td><td>5.49</td></tr><tr><td>1972</td><td>18.98</td><td>1990</td><td>-3.10</td><td>2008</td><td>-37.00</td></tr><tr><td>1973</td><td>-14.66</td><td>1991</td><td>30.47</td><td>2009</td><td>26.46</td></tr><tr><td>1974</td><td>-26.47</td><td>1992</td><td>7.62</td><td>2010</td><td>15.06</td></tr><tr><td>1975</td><td>37.20</td><td>1993</td><td>10.08</td><td>2011</td><td>2.11</td></tr><tr><td>1976</td><td>23.84</td><td>1994</td><td>1.32</td><td>2012</td><td>16.00</td></tr><tr><td>1977</td><td>-7.18</td><td>1995</td><td>37.58</td><td>2013</td><td>32.39</td></tr><tr><td>1978</td><td>6.56</td><td>1996</td><td>22.96</td><td>2014</td><td>13.69</td></tr><tr><td>1979</td><td>18.44</td><td>1997</td><td>33.36</td><td>2015</td><td>1.38</td></tr><tr><td>1980</td><td>32.50</td><td>1998</td><td>28.58</td><td>2016</td><td>11.96</td></tr><tr><td>1981</td><td>-4.92</td><td>1999</td><td>21.04</td><td>2017</td><td>21.83</td></tr><tr><td>1982</td><td>21.55</td><td>2000</td><td>-9.10</td><td>2018</td><td>-4.38</td></tr><tr><td>1983</td><td>22.56</td><td>2001</td><td>-11.89</td><td>2019</td><td>31.46</td></tr><tr><td>1984</td><td>6.27</td><td>2002</td><td>-22.10</td><td>2020</td><td>18.40</td></tr><tr><td>1985</td><td>31.73</td><td>2003</td><td>28.68</td><td>2021</td><td>28.71</td></tr><tr><td>1986</td><td>18.67</td><td>2004</td><td>10.88</td><td></td><td></td></tr><tr><td>1987</td><td>5.25</td><td>2005</td><td>4.91</td><td></td><td></td></tr></table> have a  $95\%$  probability of not losing more than  $10\%$  in one year. Substituting  $R = -0.1$  and  $p = 0.95$  into equation (24.1), the fund manager's beta should be


$$

\beta = \frac {- 0 . 1 - 0 . 0 2}{0 . 1 2 4 5 - 0 . 0 2 + N ^ {- 1} (0 . 0 5) \times 0 . 1 6 8 8} = 0. 6 9

$$

This means that to achieve the VaR objective the risk manager should invest  $69\%$  of the portfolio in the market and the rest in a risk-free asset.

Unfortunately, the available risk-return alternatives for a financial institution such as a bank or an insurance company cannot usually be quantified as easily as for a fund manager. When markets are efficient, we can use the arguments in Chapter 1 to show that for stock market and similar investments an efficient frontier similar to that in Figure 24.1 should exist. But there is no reason why this efficient frontier should define trade-offs between risk and expected return for major strategic investments undertaken by a bank, insurance company, or other type of financial institution. Some strategic investments will be above the efficient frontier and some will be well below.

For any company, strategic investments that are above the efficient frontier are usually those that take advantage of the company's competitive advantages. Companies, whether financial or non-financial, should therefore define their competitive advantages and look for strategic investments that exploit those advantages. There is some evidence that they have not always been very successful at doing this. A well-known study by Bowman uncovered a negative relationship between risk and return for companies in most sectors. This is sometimes termed the Bowman paradox. In a further study, Bowman showed that more troubled firms often take less justifiable risks. One explanation for this might be that a company experiencing difficulties often has few competitive advantages. It may be tempted to undertake a major project that has only a small probability of success if success would ensure survival.


The market in which financial institutions operate is highly competitive, and competitive advantages are not as common as they are in some other industries. Typically, attempts by a financial institution to increase returns involve an increase in systematic (beta) risk, and the financial institution's shareholders can often achieve an equivalent (and sometimes better) risk-return trade-off for themselves. The main competitive advantage of a financial institution is the trust of its customer base (retail and commercial) that it has built up. Providing services to that customer base should give a satisfactory risk-return trade-off. For regulated financial institutions, the risk-return trade-off is impacted by increasingly stringent capital and liquidity requirements.

As mentioned, the part of a financial institution's risk appetite concerned with the worst-case loss, or equivalently the worst-case erosion of equity capital, can be expressed by specifying VaR or expected shortfall with a particular time horizon and confidence level. Other parts of the risk appetite are less easy to quantify. They are likely to be concerned with reputational risk, credit rating risk, the risk of not complying with regulations, legal risks, and so on. Some of these are likely to be expressed qualitatively rather than quantitatively. For example, a bank might state that any project that could appreciably reduce its reputation among its core customers, and how trustworthy it is perceived to be by those customers, is unacceptable.

Business Snapshot 24.1 describes how Wells Fargo put employees under a huge amount of pressure to meet unrealistic sales targets in order to increase sales. This strategy led to employees engaging in questionable and sometimes fraudulent activities in order to meet the targets. The strategy should have been rejected (or at least monitored more carefully) because of its potential adverse effect on how customers perceived the bank and because of its adverse effect on the bank's relationship with its employees.

The quantification of risk has been a major theme running through this book. Up to now we have implicitly tended to take a bottom-up approach. We have looked at different ways risk measures can be calculated by business units and then considered how the risk measures can be combined to produce a risk measure for the whole enterprise. The specification of a risk appetite framework is a top-down activity that should involve

# BUSINESS SNAPSHOT 24.1

# Cross-Selling at Wells Fargo

Wells Fargo is a bank that survived the 2007-2008 crisis well. It avoided the risks taken by other banks during the period leading up to the crisis and gained a reputation for stability. Unfortunately, subsequent events tarnished its reputation and led to a loss of trust from potential clients.

Cross-selling involves attempting to sell multiple products to clients. A client with a checking account might be encouraged to take out a credit card or open a savings account. Wells Fargo was considered to be one of the best banks at cross-selling, and indeed there is nothing wrong with cross-selling. But if it is carried out too aggressively it can be bad for a bank's reputation and even be fraudulent.

Wells Fargo considered branch employees to be "salespeople" and clients to be "customers." Branch personnel were given very aggressive quotas for the number of products they were expected to sell to clients, and they were under a huge amount of pressure. As a result, they ordered credit cards for clients without the clients' consent. They also created checking and savings accounts for clients who had not asked for them. In many cases, these activities led to clients paying additional fees to the bank. Quotas were sometimes even satisfied by enrolling homeless people in fee-accruing products, even though they would almost certainly fail to make payments as they became due.

Wells Fargo's dysfunctional sales culture was first documented by the Wall Street Journal in 2011 and further described in an article in the Los Angeles Times in 2013. Some reforms were then made, but the bank was fined 185 million in September 2016 for creating more than 1.5 million unauthorized deposit accounts and over 0.5 million unauthorized credit-card accounts between 2011 and 2016. Later estimates in May 2017 suggested that the number of unauthorized accounts was higher than this, closer to 3.5 million in total.

Senior executives claimed that they were unaware of what was going on as a result of the company's pressure-cooker sales culture. This seems unlikely given that employees made calls to the company's ethics hotline and complaints from customers had to be dealt with. The bank fired 5,300 employees between 2011 and 2016 as a result of the fraudulent sales practices. The CEO, John Stumpf, agreed to forgo  $41 million in stock options and resigned in October 2016. Later,$ 28 million of his earnings were clawed back. Other executives also lost earnings. The bank paid 110 million to clients who had accounts opened without their permission. Investigations were commenced by the Senate Banking Committee, the Securities and Exchange Commission, and prosecutors in a number of jurisdictions.

Clearly, the aggressive sales culture at Wells Fargo was misguided. It alienated employees, many of whom were under unreasonable stress and found it difficult to find new jobs when they were fired. It also destroyed the trust and good reputation that Wells Fargo had built up with its clients over many years. If Wells Fargo's risk appetite had included a desire to avoid doing activities that could adversely affect its reputation, it would surely have reduced the sales pressure and emphasized the importance of developing good long-term relationships with clients.

Wells Fargo took steps to change its sales culture under a new CEO in late 2016. It stopped the practice of giving employees sales quotas. Some employees who had been fired were rehired. It has taken time for the bank's relationships with employees and clients to recover, but fortunately Wells Fargo is financially strong enough to bounce back.

the board of directors. Risk appetite is first defined for the institution as a whole. It is then used to define risk limits for business lines. This can involve some experimentation where bottom-up calculations are used to see if the risk appetite of the organization is being met. For example, a financial institution wanting to preserve its AA rating might decide that the probability of losses exceeding 50 billion in one year must be 0.03\% or less. It then needs to determine by trial and error what the VaR limits for its trading activities, its lending activities, and so on must be so that when aggregated they are consistent with this aspect of the risk appetite. Once risk limits have been set, it is important to monitor the decisions taken in the business units to ensure that the limits are being adhered to.

One important element of risk appetite is risk concentration. With the benefit of hindsight we can say that some large banks had portfolios that were too concentrated in subprime mortgages in 2006 and 2007. The risk appetite statement should directly or indirectly have implications for concentration risk. It should limit credit exposure to any one company, limit credit exposure to any one sector of the economy, limit credit exposure to movements in any one market variable, and so on.

Not surprisingly, regulators are interested in encouraging banks to develop risk appetite frameworks. Indeed, bank supervisors are required to ensure that effective risk appetite statements have been developed and implemented. In 2013, the Financial Stability Board published a document that contained definitions of relevant terminology and the principles on which a risk appetite framework should be based. The document spell out the responsibilities of the board of directors, the chief executive officer, the chief risk officer, the chief financial officer, and business line managers.


# 24.2 Risk Culture

A financial institution's risk culture is all about how decisions are made. If the risk culture is good, all decisions are made in a disciplined way with a careful consideration of possible outcomes, weighing risks and rewards. It should be emphasized that this does not mean that no risks are taken. It means that risks are considered in relation to potential rewards and the risk appetite of the organization. The Financial Stability Board has suggested the way bank supervisors can assess risk culture at large systemically important banks.[7]

Decisions often involve trade-offs between short-term profits and medium- to long-term risks. A decision that is certain to lead to an immediate profit sometimes has the disadvantage that it is liable to give rise to serious problems later. Consider the situation of a salesman who works for a financial institution and is deciding whether to sell a sophisticated financial product to a customer when he knows it does not meet the customer's true needs. The sale would be profitable to the financial institution and would increase the year-end bonuses of the salesman and the group that developed the product. But it might have adverse future consequences. For example, the reputation of the financial institution could suffer if the customer incurs losses as a result of the product. Expensive lawsuits might follow.

The product described in Business Snapshot 5.4, which was sold by Bankers Trust to Procter & Gamble, is a classic example of what can go wrong. The product had a fairly high probability of saving Procter & Gamble 75 basis points on its funding and a small probability of costing the company a huge amount of money. The scenario where there is a huge cost to Procter & Gamble may or may not have been fully explained by the Bankers Trust salesman. But, if there had been a good risk culture within Bankers Trust, management would have questioned whether it made any sense for it to sell the product at all. Indeed, the quants working for Bankers Trust would have been told not to develop the product in the first place.

Procter & Gamble was one of many companies that entered into transactions similar to the one described in Business Snapshot 5.4 with Bankers Trust. As it happens, the low-probability outcome materialized and the transactions proved to be very costly for Bankers Trust's clients. There were numerous lawsuits, all of which were settled out of court. Bankers Trust, a company that had built an enviable reputation in financial markets, was ruined and later acquired by Deutsche Bank. Of course things could have worked out well and Bankers Trust's clients could have been grateful to the bank for saving them 75 basis points on their funding. But the risk to Bankers Trust and its reputation of huge client losses was clearly too great. The risk culture was one where employees thought only about short-term profits and not about the longer-term repercussions.

# BUSINESS SNAPSHOT 24.2

# The Santander Rail Deal

In 2007, the Portuguese rail company Metro do Porto (MdP) was looking for a way to reduce its  $4.76\%$  per annum funding costs. After consulting a number of banks, it agreed to a 14-year swap with the Spanish bank Santander. In this swap, Santander paid the  $4.76\%$  funding cost and in return MdP paid  $1.76\%$  plus a spread. For the first two years, the spread was zero, saving MdP  $3\%$  on its funding. After that, the spread was calculated each quarter as

$\max [0\%$  , Previous Spread  $+2\times \max (2\% -R,0) + 2\times \max (R - 6\% ,0) - D]$ where  $R$  is the three-month Euribor rate and  $D$ , referred to as the DigiCoupon, is  $0.5\%$  if  $R$  lies between  $2\%$  and  $6\%$ , and zero otherwise.


At the start of the deal, three-month Euribor was about  $4\%$ . If it had stayed between  $2\%$  and  $6\%$  for the whole 14 years, MdP would have saved  $3\%$  per annum on its funding for the whole period. As it happened, three-month Euribor had dropped below  $2\%$  by 2009 when the deal was only two years old, and it stayed below  $2\%$  for several years. As a result, the spread increased rapidly, reaching  $40.6\%$  in September 2013. The problem for MdP was that the spread in one quarter is dependent on the spread in the previous quarter. Suppose that three-month Euribor is  $0.5\%$  from year 2 onward. MdP's spread would increase by  $3\%$  per quarter or  $12\%$  per year. If subsequently three-month Euribor increases so that it is in the  $2\%$  to  $6\%$  range, the spread declines, but only at the rate of  $0.5\%$  per quarter or  $2\%$  per year.

The deal was subject to a lawsuit. (Disputes over other similar deals entered into by Santander with other Portuguese state-owned entities were settled out of court.) MdP should of course have run scenario analyses to understand the potential costs of the transaction. Whether it did this and whether it understood the cumulative nature of the spread adjustments is not known. Possibly, it overweighted the attractiveness of saving  $3\%$  per year for the first two years. According to an article in Risk magazine in 2014, one London-based corporate hedging adviser has described this deal as a contender for the worst trade of all time!

Another example is provided by the transaction between the Spanish bank Santander and the Portuguese state-backed rail operator Metro do Porto in 2007, described in Business Snapshot 24.2. The transaction allowed the rail operator to reduce its funding costs for the first two years, but this was at the risk of very high funding costs for later years. From Metro do Porto's perspective, the trade-off being made between short-term

# BUSINESS SNAPSHOT 24.3

# ABACUS

In 2007, Goldman Sachs created a product called ABACUS from a synthetic ABS CDO. As explained in Chapter 6, an ABS CDO is formed from a portfolio of tranches (often mezzanine tranches) of ABSs. The word synthetic means that Goldman defined the ABS CDO, but it did not actually buy the underlying tranches. It then acted as an intermediary between two parties. Party A bought a credit default swap providing protection against what the losses on the senior tranche of the ABS CDO would have been if it had been created. Party B sold the credit default swap, agreeing to provide the protection. Party A paid Party B an insurance premium (the CDS spread).

So far, so good. This is what investment banks such as Goldman Sachs do all the time. They act as intermediaries between buyers and sellers. In this particular case, Party A was a hedge fund controlled by John Paulson. This was one of the few hedge funds to make big bets against the performance of subprime mortgages and the housing market generally. It transpired that Paulson paid Goldman Sachs 15 million for creating the structure and that his hedge fund had a hand in choosing the ABSs that went into the structure. Party B was IKB Deutsche Industriebank AG (IKB), a bank based in Düsseldorf, Germany, that specializes in lending to small and medium-size companies. The portfolio manager was ACA, which at the time had a good reputation for managing ABS CDOs.

It is alleged that Goldman Sachs represented to IKB that the ABS CDO had been defined by ACA when the ABSs in the portfolio had in fact been chosen by John Paulson's hedge fund as ones that were likely to incur huge losses. Specifically, it is alleged that Paulson constructed the synthetic ABS CDO with tranches formed from portfolios of mortgages where the borrowers had low FICO scores and came from states where the rate of house appreciation had been the highest.

Both IKB and ACA took huge losses on ABACUS, and Paulson's hedge fund made a huge profit. (IKB had to be bailed out because of the massive losses it sustained from the subprime meltdown.) The deal was investigated by the Securities and Exchange Commission (SEC), and Goldman Sachs ended up paying a fine of 550 million, the largest in the history of the SEC at that time. Goldman Sachs's position was hurt when it was revealed that an executive working on the deal, Fabrice Tourre, had sent the following e-mail to a friend: "More and more leverage in the system. The whole building is about to collapse anytime now.... Only potential survivor, the fabulous Fab... standing in the middle of all these complex, highly leveraged, exotic trades he created without necessarily understanding all the implications of those monstrosities!!!"

gain and long-term risk was highly questionable. But the same was true of Santander. This was one of many similar products sold by Santander to Portuguese state-owned entities. No doubt the products were viewed as profitable by Santander at the time it entered into them, but, as later settlements and lawsuits show, subsequent costs and the negative impact on Santander's reputation have the potential to outweigh the short-term profits.

Yet another example of the conflicts that can exist between short-term profits and long-term risks is provided by Business Snapshot 24.3. This describes a deal, ABACUS, that Goldman Sachs sold to one of its clients without, it is alleged, fully explaining the risks and how it had been created. This is another example of short-term profit being booked without regard for longer-term reputational risk and costs.

The ABACUS deal and one or two other events have led Goldman Sachs to embark on a program to change its corporate culture. Everyone at the top agreed that change was necessary if Goldman was to win back the allegiance of its corporate and investment clients. The CEO, Lloyd Blankfein, traveled to 23 countries during an 18-month period during which he stressed that ethics and reputation were as important as making money (i.e., short-term profits should not be taken if there are potential adverse long-term implications). Gary Cohn was appointed head of the Firmwide Client and Business Standards Committee. One thing this committee did was assess "whether our clients had the background experience and capacity to understand the range of outcomes from transactions they execute with us." The Firmwide Client and Business Standards Committee took steps to ensure that Goldman's bankers and traders were interfacing honestly with clients and avoiding any questionable activities. Consensus is that the reputation of Goldman Sachs has improved as a result of the changes.

In financial institutions, compensation plays a key role in determining the trade-offs between short-term profits and long-term risks. Traditionally, bonuses have been paid once a year to employees based on their performance during the year. This meant that the time horizon for decision making was usually the next bonus date (always less than a year). If a deal could lead to adverse consequences but not before the year end, the possible adverse consequences were likely to be ignored. There has been an attempt in many financial institutions to change compensation arrangements to address this short-term focus. The payment of the bonus for a year is now often spread out over several subsequent years, and bonuses can be clawed back (i.e., not paid) if subsequent events indicate that the year was not as profitable as thought.[8]

# 24.3 Identifying Major Risks

An important part of ERM is identifying key exposures for both a financial institution's existing business and any proposed strategic investments. The identification of these exposures is in many ways similar to the choice of scenarios for stress testing. History can provide some guidelines. For example, a financial institution should consider how it would fare if a recession as bad as that experienced during 2007 to 2009 were to occur. The impact of current and emerging trends should also be carefully analyzed. Economists and senior management working for the financial institution can provide useful insights. As indicated in earlier chapters, the environment is changing for banks. One of the results of the credit crisis that started in 2007 is that banks are becoming more tightly regulated. Some activities such as proprietary trading can (at least in the United States) no longer be undertaken. Capital requirements and liquidity requirements are higher. Some financial intermediation business is moving from banks to shadow banks such as money market funds, mortgage companies, securitization vehicles, and so on. In many cases, shadow banks are less heavily regulated than banks and, as a result, can offer more competitive services.


# 24.3.1 Cognitive Biases

Our ability to identify risks effectively is affected by what are termed cognitive biases. These describe the tendencies for human beings to think in certain ways and be less than perfectly rational. One common cognitive bias is wishful thinking. It is sometimes difficult to distinguish between what we want to happen (e.g., a project to be a success) and what we think will happen. (Try asking a Manchester United supporter to estimate the chance of Manchester United winning the FA cup next year!) When we want something to happen, we are liable to think only of reasons why it will happen.

Over 100 cognitive biases have been listed by psychologists. Much of the pioneering work was done by Daniel Kahneman and Amos Tversky.[9] Kahneman won the Nobel prize for economics in 2002 for his work with Tversky on prospect theory, which is concerned with the way people choose between risky alternatives. (Tversky had died a few years earlier.)

One important bias is anchoring. When evaluating a potential outcome (e.g., the revenue resulting from a major new venture), we are liable to anchor onto the first estimate that is made. We tend to make relatively small adjustments to that estimate (this is referred to as "anchoring and adjustment") and often never consider the full range of possible outcomes. In particular, important adverse outcomes may implicitly be considered to have no chance of occurring. To illustrate anchoring, one could ask a group of people to make a best guess of something that is unknown to them such as, perhaps the population of Iceland. They can then be asked to provide a range consisting of the 5th percentile to 95th percentile of their subjective probability distribution. If their estimates are good, the true population of Iceland should lie outside the range only  $10\%$  of the time. In practice, it is found that this happens much more frequently. Anchoring causes people to behave as though they know more than they do.

Another cognitive bias is availability. This is where recent information is given undue weight. Sadly, enterprise risk management—and risk management generally—can suffer from availability. Prior to the credit crisis, risk managers in some financial institutions were often not listened to because recent experience had been good. After the crisis, risk managers have had more influence, but as memories of the crisis fade, the "good times will last forever" attitude may return.

Another cognitive bias is known as representativeness. This is where an individual categorizes a situation based on a pattern of previous experiences or beliefs about the underlying scenario. It can be useful when trying to make a quick decision, but it can also be limiting because it leads to close-mindedness and stereotyping. Based on previous experience, a senior manager at a financial institution might consider it almost impossible for any other financial institution to successfully compete with it in a particular market. However, if the manager's past experience is limited, the previous situations might not be representative of future scenarios.

A more subtle mistake sometimes made in estimating probabilities is inverting the conditionality. Suppose that 1 in 10,000 people have a particular disease. A test that is always  $99\%$  accurate gives you a positive result (suggesting that you have the disease). What is the chance that you have the disease? Your immediate response is likely to be  $99\%$ . However, the true answer is actually about  $1\%$ ! We are interested in

$$

\operatorname {P r o b} (D | T P)

$$ where D indicates that you have the disease and TP indicates a positive result from the test.


Because the test is always  $99\%$  accurate

$$

\mathrm {P r o b} (\mathrm {T P} | \mathrm {D}) = 0. 9 9

$$ but


$$

\operatorname {P r o b} (\mathrm {D} | \mathrm {T P}) \neq \operatorname {P r o b} (\mathrm {T P} | \mathrm {D})

$$

Out of 10,000 people there will be about 100 positive results on average but only one person with the disease. $^{10}$  Hence the probability we are interested in is about 0.01. This is an application of the result in probability theory known as Bayes' theorem.

Yet another bias is the sunk costs bias. Suppose that a financial institution has already spent  $1 billion trying to enter a new market. Things are not going well and there seems to be very little prospect of success. Should the$ 1 billion influence the financial institution's decision making? The answer is the 1 billion is what accountants refer to as a sunk cost. Regardless of the decisions taken now, it cannot be recovered. The key issue is whether future profits will be sufficiently high to justify future expenditures. In practice, many people are reluctant to admit mistakes, and they continue with projects that are clearly failures for too long. Irrationally, they want to try to get back money already spent, even when the chance of this is very small.


Understanding these biases may assist decision making and the identification of key risks. It should be noted, however, that experiments have shown that it is extremely difficult to eliminate biases. Even when biases such as anchoring are carefully explained and subjects are given financial incentives to make good estimates, the biases persist.

The challenge for ERM is identifying tail risks and trying to estimate the probabilities associated with the adverse scenarios giving rise to the tail risks as well as possible. The cognitive biases we have discussed (and many others have been documented) suggest that the risks will be underestimated. Nassim Taleb makes this point in a best-selling book.[11] He is particularly critical of the use of normal distributions for calculating risk measures (as we have been in this book) and argues that extreme events such as the crash of 1987 or the credit crisis of 2007 to 2009 are more likely than many people think.

Using committees of senior management and economists to define adverse scenarios can be useful. Encouraging employees to play the role of devil's advocate when ideas are discussed can also be important. Risks are obviously less likely to be considered if there is an authoritarian CEO who is convinced that he or she is right on major strategic decisions and does not encourage contrary views to be expressed.

# 24.4 Strategic Risk Management

Once a company's strategy has been defined, strategic risk management involves considering what assumptions have been made and what can go wrong. What will competitors do? How will customers react? How could the strategy be impacted by adverse external events? To quote Michael Porter: "Risk is a function of how poorly a strategy will perform if the 'wrong' scenario occurs."

Once a particular risk has been identified, either in the existing business or in a new strategic investment, there are a number of alternative courses of action:

Avoid: Exit the business/investment.

Reduce: Take action to reduce the probability of the adverse event or its impact.

Adjust: Modify plans to reduce risks.

Share or insure: Transfer or share a portion of the risk.

Accept: Take no action.

Which of these actions is taken is likely to depend on the situation, but it is important that the risk is identified and carefully considered, rather than being ignored.

Suppose that a successful Canadian bank is considering an expansion of its retail operations by buying a smaller bank in the United States. It has prepared plans indicating that the expansion will increase shareholder value and provide a springboard for increasing its customer base in the United States. There are a number of risks that it needs to consider. Will it be able to transfer its success in Canada to a more competitive banking environment? Will it be able to retain the customers of the bank it is acquiring in the United States? Will it be able to retain key managers? What will happen if there is a severe two-year recession soon after the acquisition is completed? The Canadian bank needs to make sure the acquisition is consistent with its risk appetite. The risk appetite might require it to ensure that if a worst-case scenario happens it will survive without its core Canadian business being appreciably affected. It needs to ensure that the risks can be managed and monitored and that if things work out badly there is a good exit strategy.

# Summary

Enterprise risk management is an attempt to take a holistic approach to risk management rather than addressing risk in silos. The central idea is that business units within the financial institution should be part of an integrated, strategic, and enterprise-wide risk management system. The risk appetite for the organization should be defined at the top and approved by the board. Steps should then be taken to ensure that the management of different types of risks in different business units is consistent with the overall risk appetite framework.

A financial institution's risk appetite statement should define how much risk the organization is prepared to take in pursuit of its objectives. Some aspects of the risk appetite, such as the amount of capital the financial institution is prepared to risk losing, can be expressed quantitatively. Others, such as risks to reputation, are likely to be expressed qualitatively. The risk appetite must then be converted into directives for the risks taken by business units. Appropriate limits are then set on trading risk, how concentrated the financial institution's portfolio can become, how much credit risk can be taken, and so on. The risks being taken should be continually monitored to ensure that they are consistent with the financial institution's risk appetite.

Developing a good risk culture is an important part of ERM. A key element of the risk culture is ensuring that medium- to long-term risks are considered when opportunities that offer short-term profits are evaluated. There are many examples of financial institutions aggressively pursuing short-term profits when the activity being undertaken has led several years later to serious problems such as lawsuits, fines, or a loss of reputation. The bonus structure within financial institutions can encourage employees to use the maximization of short-term profits as their sole criterion for decision making. Since the 2008 credit crisis, there have been attempts to change this by introducing deferred bonuses and clawbacks.

It is important for a financial institution to develop procedures for identifying worst-case outcomes. Unfortunately, there are many biases that are liable to cause managers to misjudge future outcomes and their probabilities of occurring. Once the risks being taken have been identified, it is important to actively manage the risks. Sometimes it will be necessary to discontinue certain activities; sometimes risks can be shared (e.g., with insurance or joint ventures); sometimes steps can be taken to reduce the impact of the risks; and sometimes risks can be accommodated within the organization's risk appetite.

# Further Reading

Fraser, J., and B. J. Simkins. Enterprise Risk Management: Today's Leading Research and Best Practices for Tomorrow's Executives. Hoboken, NJ: John Wiley & Sons, 2010.
Los Angeles Times. "Wells Fargo's Pressure-Cooker Sales Culture Comes at a Cost," December 21, 2013.
Osborn, T. "Worst Trade of All Time Pits Santander Against Portuguese Client." Risk (May 2014).
Porter, M. E. Competitive Advantage. New York: Free Press, 1985.

# Practice Questions and Problems

# (Answers at End of Book)

24.1 Explain the difference between top-down and bottom-up approaches to risk management. Why are both necessary in ERM?
24.2 What is the Bowman paradox?
24.3 "The risk culture at a bank should lead it to consider the longer-term implications of decisions as well as short-term profits." Discuss.
24.4 What steps can a bank take to encourage employees to consider more than short-term profits?
24.5 What distinguishes enterprise risk management from more traditional approaches to risk management?
24.6 A fund's risk appetite is such that it wants to be  $90\%$  certain that it will not lose more than  $20\%$  in any one year. Using the performance of the S&P 500 between 1970 and 2021 (see Table 24.1), determine the beta the fund should have. Assume a risk-free rate of  $3\%$  per annum.
24.7 Calculate the interest rate paid by MdP six years after the beginning of the deal in Business Snapshot 24.2 if the Euribor rate proves to be  $8\%$  from year 2 onward.
24.8 Give three examples of cognitive biases.

# Further Questions

24.9 Assume that in Business Snapshot 24.2 the change in the three-month Euler rate in each quarter is normally distributed with mean zero and a standard deviation equal to  $x$  basis points. Use Monte Carlo simulation (500 trials) to calculate a probability distribution for the average interest rate paid by MdP over the four-year period for values of  $x$  equal to 10, 20, and 50.

24.10 A fund's risk appetite is such that it wants to be  $97.5\%$  certain it will not lose more than  $25\%$  in any one year. Using the performance of the S&P 500 between 1970 and 2021 (see Table 24.1), determine the beta the fund should have. Assume a risk-free rate of  $2.5\%$  per annum.

# Part Six

# REGULATION

