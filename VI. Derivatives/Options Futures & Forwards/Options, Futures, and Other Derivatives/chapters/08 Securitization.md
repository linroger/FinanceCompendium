---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: 8.1 SECURITIZATION
linter-yaml-title-alias: 8.1 SECURITIZATION
---

# 8.1 SECURITIZATION

Traditionally, banks have funded their loans primarily from deposits. In the 1960s, U.S. banks found that they could not keep pace with the demand for residential mortgages with this type of funding. This led to the development of the mortgage-backed security (MBS) market. Organizations that were active in this market are:

- The Government National Mortgage Association (GNMA, also known as Ginnie Mae)
- The Federal National Mortgage Association (FNMA, also known as Fannie Mae)
- The Federal Home Loan Mortgage Corporation (FHLMC, also known as Freddie Mac).

These organizations bought portfolios of mortgages from the originating banks and packaged them as securities that were sold to investors. They guaranteed (for a fee) the interest and principal payments on the mortgages.

Thus, although banks originated the mortgages, they did not keep them on their balance sheets. Securitization allowed them to increase their lending faster than their deposits were growing. The guarantees provided by GNMA, FNMA, and FHLMC protected MBS investors against defaults by borrowers.

In the 1980s, the securitization techniques developed for the mortgage market were applied to asset classes such as automobile loans and credit card receivables in the United States. Securitization also become popular in other parts of the world. As the securitization market developed, investors became comfortable with situations where they did not have a guarantee against defaults by borrowers.

# ABSs

A securitization arrangement of the type used during the 2000 to 2007 period (with no guarantees against default) is shown in Figure 8.1. This is known as an asset-backed security or ABS. A portfolio of income-producing assets such as loans is sold by the originating banks to a special purpose vehicle (SPV) and the cash flows from the assets are then allocated to tranches. Figure 8.1 is simpler than the structures that were typically created because it has only three tranches (in practice, many more tranches were used). These are the senior tranche, the mezzanine tranche, and the equity tranche.

The portfolio in Figure 8.1 has a principal of  \$100 million. This is divided as follows:\$ 80 million to the senior tranche, \$15 million to the mezzanine tranche, and \$5 million to the equity tranche. The senior tranche's return is LIBOR plus 60 basis points, the mezzanine tranche's return is LIBOR plus 250 basis points, and the equity tranche's return is LIBOR plus 2,000 basis points.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/384255f3ff05de39bd8037e02cf1d9c6471552a7619896ffd9ea83b834856112.jpg)

Figure 8.1 An asset-backed security (simplified); bp = basis points  $(1\mathrm{bp} = 0.01\%)$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/7fcc79619d2ef3520bc3f5e1d3c535b1272ba471506f272b4615d3ad145c8584.jpg)

Figure 8.2 The waterfall in an asset-backed security.

It sounds as though the equity tranche has the best deal, but this is not necessarily the case. The payments of interest and principal are not guaranteed. The return is like the yield on a bond. It is the return that will be realized if there are no defaults affecting the tranche. As we will see, the equity tranche is more likely to lose part of its principal, and less likely to receive the promised interest payments on its outstanding principal, than the other tranches.

Cash flows are allocated to tranches by specifying what is known as a waterfall. The general way a waterfall works is illustrated in Figure 8.2. A separate waterfall is applied to principal and interest payments. Principal payments are allocated to the senior tranche until its principal has been fully repaid. They are then allocated to mezzanine tranche until its principal has been fully repaid. Only after this has happened do principal repayments go to the equity tranche. Interest payments are allocated to the senior tranche until the senior tranche has received its promised return on its outstanding principal. Assuming that this promised return can be made, interest payments are then allocated to the mezzanine tranche. If the promised return to the mezzanine tranche can be made and cash flows are left over, they are allocated to pay interest on the equity tranche.

The extent to which the tranches get their principal back depends on losses on the underlying assets. The effect of the waterfall is roughly as follows. The first  $5\%$  of losses are borne by the equity tranche. If losses exceed  $5\%$ , the equity tranche loses all its principal and some losses are borne by the principal of the mezzanine tranche. If losses exceed  $20\%$ , the mezzanine tranche loses all its principal and some losses are borne by the principal of the senior tranche.

There are therefore two ways of looking at an ABS. One is with reference to the waterfall in Figure 8.2. Cash flows go first to the senior tranche, then to the mezzanine tranche, and then to the equity tranche. The other is in terms of losses. Losses of principal are first borne by the equity tranche, then by the mezzanine tranche, and then by the senior tranche. Rating agencies such as Moody's, S&P, and Fitch played a key role in securitization. The ABS in Figure 8.1 is likely to be designed so that the senior tranche is given the highest possible rating, AAA. The mezzanine tranche is typically rated BBB (well below AAA, but still investment grade). The equity tranche is typically unrated.

The description of ABSs that we have given so far is somewhat simplified. Typically, more than three tranches with a wide range of ratings were created. In the waterfall rules, as we have described them, the allocation of cash flows to tranches is sequential in that they always flow first to the most senior tranche, then to the next most senior tranche, and so on. In practice, the rules are somewhat more complicated than this and are described in a legal document that is several hundred pages long. Another complication is that there was often some overcollateralization where the total principal of the tranches was less than the total principal of the underlying assets. Also, the weighted average return promised to the tranches was less than the weighted average return payable on the assets.[2]

# ABS CDOs

Finding investors to buy the senior AAA-rated tranches of ABSs was usually not difficult, because the tranches promised returns that were very attractive when compared with the return on AAA-rated bonds. Equity tranches were typically retained by the originator of the assets or sold to a hedge fund.

Finding investors for mezzanine tranches was more difficult. This led to the creation of ABSs of ABSs. The way this was done is shown in Figure 8.3. Many different mezzanine tranches, created in the way indicated in Figure 8.1, are put in a portfolio and the risks associated with the cash flows from the portfolio are tranched out in the same way as the risks associated with cash flows from the assets are tranched out in Figure 8.1. The resulting structure is known as an ABS CDO or Mezz ABS CDO. (CDO is short for collateralized debt obligation.) In the example in Figure 8.3, the senior tranche of the ABS CDO accounts for  $65\%$  of the principal of the ABS mezzanine tranches, the mezzanine tranche of the ABS CDO accounts for  $25\%$  of the principal, and the equity tranche accounts for the remaining  $10\%$  of the principal. The structure is designed so that the senior tranche of the ABS CDO is given the highest credit rating of AAA. This means that the total of the AAA-rated instruments created in the example that is considered here is about  $90\%$  ( $80\%$  plus  $65\%$  of  $15\%$ ) of the principal of the underlying portfolios. This seems high but, if the securitization were carried further with an ABS being created from branches of ABS CDOs (and this did happen), the percentage would be pushed even higher.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/5bc9cfc79a77436d6ad8128e1658dc06858de1fb58a3f3d16ea733a2bcaad033.jpg)

Figure 8.3 Creation of ABSs and an ABS CDO from portfolios of assets (simplified).

Table 8.1 Estimated losses to tranches of ABS CDO in Figure 8.3.

<table><tr><td>Losses on underlying assets</td><td>Losses to mezzanine tranche of ABS</td><td>Losses to equity tranche of ABS CDO</td><td>Losses to mezzanine tranche of ABS CDO</td><td>Losses to senior tranche of ABS CDO</td></tr><tr><td>10\%</td><td>33.3\%</td><td>100.0\%</td><td>93.3\%</td><td>0.0\%</td></tr><tr><td>13\%</td><td>53.3\%</td><td>100.0\%</td><td>100.0\%</td><td>28.2\%</td></tr><tr><td>17\%</td><td>80.0\%</td><td>100.0\%</td><td>100.0\%</td><td>69.2\%</td></tr><tr><td>20\%</td><td>100.0\%</td><td>100.0\%</td><td>100.0\%</td><td>100.0\%</td></tr></table>

In the example in Figure 8.3, the AAA-rated tranche of the ABS can expect to receive its promised return and get its principal back if losses on the underlying portfolio of assets is less than  $20\%$  because all losses of principal would then be absorbed by the more junior tranches. The AAA-rated tranche of the ABS CDO in Figure 8.3 is more risky. It will receive the promised return and get its principal back if losses on the underlying assets are  $10.25\%$  or less. This is because a loss of  $10.25\%$  means that mezzanine tranches of ABSs have to absorb losses equal to  $5.25\%$  of the ABS principal. As these tranches have a total principal equal to  $15\%$  of the ABS principal, they lose  $5.25/15$  or  $35\%$  of their principal. The equity and mezzanine tranches of the ABS CDO are then wiped out, but the senior tranche just manages to survive intact.

The senior tranche of the ABS CDO suffers losses if losses on the underlying portfolios are more than  $10.25\%$ . Consider, for example, the situation where losses are  $17\%$  on the underlying portfolios. Of the  $17\%$ ,  $5\%$  is borne by the equity tranche of the ABS and  $12\%$  by the mezzanine tranche of the ABS. Losses on the mezzanine tranches are therefore  $12/15$  or  $80\%$  of their principal. The first  $35\%$  is absorbed by the equity and mezzanine tranches of the ABS CDO. The senior tranche of the ABS CDO therefore loses  $45/65$  or  $69.2\%$  of its value. These and other results are summarized in Table 8.1. Our calculations assume that all ABS portfolios have the same default rate.

# 8.2 THE U.S. HOUSING MARKET

Figure 8.4 gives the S&P/Case-Shiller composite-10 index for house prices in the United States between January 1987 and February 2020. This tracks house prices for ten metropolitan areas of the United States. It shows that, in about the year 2000, house prices started to rise much faster than they had in the previous decade. The very low level of interest rates between 2002 and 2005 was an important contributory factor, but the bubble in house prices was also fueled by mortgage-lending practices.

The 2000 to 2006 period was characterized by a huge increase in what is termed subprime mortgage lending. Subprime mortgages are mortgages that are considered to be significantly more risky than average. Before 2000, most mortgages classified as subprime were second mortgages. After 2000, this changed as financial institutions became more comfortable with the notion of a subprime first mortgage.

# The Relaxation of Lending Standards

The relaxation of lending standards and the growth of subprime mortgages made house purchase possible for many families that had previously been considered to be not sufficiently creditworthy to qualify for a mortgage. These families increased the demand for real estate and prices rose. To mortgage brokers and mortgage lenders, it was attractive to make more loans, particularly when higher house prices resulted. More lending meant bigger profits. Higher house prices meant that the lending was well covered by the underlying collateral. If the borrower defaulted, it was less likely that the resulting foreclosure would lead to a loss.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/e0814f0324566d20e9594082fe48a35710882c0a317cf88729327588f1c19a3b.jpg)

Figure 8.4 The S&P/Case-Shiller Composite-10 index of U.S. real estate prices, 1987-2020.

Mortgage brokers and mortgage lenders naturally wanted to keep increasing their profits. Their problem was that, as house prices rose, it was more difficult for first-time buyers to afford a house. In order to continue to attract new entrants to the housing market, they had to find ways to relax their lending standards even more—and this is exactly what they did. The amount lent as a percentage of the house price increased. Adjustable-rate mortgages (ARMS) were developed where there was a low "teaser" rate of interest that would last for two or three years and be followed by a rate that was much higher.[3] A typical teaser rate was about  $6\%$  and the interest rate after the end of the teaser rate period was typically six-month LIBOR plus  $6\%$ .[4] However, teaser rates as low as  $1\%$  or  $2\%$  have been reported. Lenders also became more cavalier in the way they reviewed mortgage applications. Indeed, the applicant's income and other information reported on the application form were frequently not checked.

# Subprime Mortgage Securitization

Subprime mortgages were frequently securitized in the way indicated in Figures 8.1 to 8.3. The investors in tranches created from subprime mortgages usually had no guarantees that interest and principal would be paid. Securitization played a part in the crisis. The behavior of mortgage originators was influenced by their knowledge that mortgages would be securitized.5 When considering new mortgage applications, the question was not "Is this a credit risk we want to assume?" Instead it was "Is this a mortgage we can make money on by selling it to someone else?"

When a portfolio of mortgages was securitized, the buyers of the products that were created felt they had enough information if they knew, for each mortgage in the portfolio, the loan-to-value ratio (i.e., the ratio of the size of the loan to the assessed value of the house) and the borrower's FICO score. Other information on the mortgage application forms was considered irrelevant and, as already mentioned, was often not even checked by lenders. The most important thing for the lender was whether the mortgage could be sold to others—and this depended largely on the loan-to-value ratio and the applicant's FICO score.

It is interesting to note in passing that both the loan-to-value ratio and the FICO score were of doubtful quality. The property assessors who determined the value of a house at the time of a mortgage application sometimes succumbed to pressure from the lenders to come up with high values. Potential borrowers were sometimes counseled to take certain actions that would improve their FICO scores.[7]

Why was the government not regulating the behavior of mortgage lenders? The answer is that the U.S. government had since the 1990s been trying to expand home ownership and had been applying pressure to mortgage lenders to increase loans to lowand moderate-income people. Some state legislators, such as those in Ohio and Georgia, were concerned about what was going on and wanted to curtail predatory lending.[8] However, the courts decided that national standards should prevail.

A number of terms have been used to describe mortgage lending during the period leading up to the 2007-8 crisis. One is "liar loans" because individuals applying for a mortgage, knowing that no checks would be carried out, sometimes chose to lie on the application form. Another term used to describe some borrowers is "NINJA" (no income, no job, no assets).

# The Bubble Bursts

All bubbles burst eventually and this one was no exception. In 2007, many mortgage holders found they could no longer afford their mortgages when the teaser rates ended. This led to foreclosures and large numbers of houses coming on the market, which in turn led to a decline in house prices. Other mortgage holders, who had borrowed  $100\%$ , or close to  $100\%$ , of the cost of a house found that they had negative equity.

One of the features of the U.S. housing market is that mortgages are nonrecourse in many states. This means that, when there is a default, the lender is able to take possession of the house, but other assets of the borrower are off-limits. Consequently, the borrower has a free American-style put option. He or she can at any time sell the house to the lender for the principal outstanding on the mortgage. This feature encouraged speculative activity and was partly responsible for the bubble. Market participants realized belatedly how costly and destabilizing the put option could be. If the borrower had negative equity, the optimal decision was to exchange the house for the outstanding principal on the mortgage. The house was then sold by the lender, adding to the downward pressure on house prices.

It would be a mistake to assume that all mortgage defaulters were in the same position. Some were unable to meet mortgage payments and suffered greatly when they had to give up their homes. But many of the defaulters were speculators who bought multiple homes as rental properties and chose to exercise their put options. It was their tenants who suffered. There are also reports that some house owners (who were not speculators) were quite creative in extracting value from their put options. After handing the keys to their houses to the lender, they turned around and bought (sometimes at a bargain price) other houses that were in foreclosure. Imagine two people owning identical houses next to each other. Both have mortgages of  \$250,000. Both houses are worth\$ 200,000 and in foreclosure can be expected to sell for 170,000. What is the owners' optimal strategy? The answer is that each person should exercise the put option and buy the neighbor's house.

The United States was not alone in having declining real estate prices. Prices declined in many other countries as well. Real estate prices in the United Kingdom were particularly badly affected. As Figure 8.4 indicates, average house prices in the United States did recover after 2012.

# The Losses

As foreclosures increased, the losses on mortgages also increased. It might be thought that a  $35\%$  reduction in house prices would lead to at most a  $35\%$  loss of principal on defaulting mortgages. In fact, the losses were far greater than that. Houses in foreclosure were often in poor condition and sold for a small fraction of their value prior to the financial crisis. In 2008 and 2009, losses as high  $75\%$  of the mortgage principal were reported for mortgages on houses in foreclosure in some cases.

Investors in tranches that were formed from the mortgages incurred big losses. The value of the ABS tranches created from subprime mortgages was monitored by a series of indices known as ABX. These indices indicated that the tranches originally rated BBB had lost about  $80\%$  of their value by the end of 2007 and about  $97\%$  of their value by mid-2009. The value of the ABS CDO tranches created from BBB tranches was monitored by a series of indices known as TABX. These indices indicated that the tranches originally rated AAA lost about  $80\%$  of their value by the end of 2007 and were essentially worthless by mid-2009.

Financial institutions such as UBS, Merrill Lynch, and Citigroup had big positions in some of the tranches and incurred huge losses, as did the insurance giant AIG, which provided protection against losses on ABS CDO tranches that had originally been rated AAA. Many financial institutions had to be rescued with government funds. There have been few worse years in financial history than 2008. Bear Stearns was taken over by JP Morgan Chase; Merrill Lynch was taken over by Bank of America; Goldman Sachs and Morgan Stanley, which had formerly been investment banks, became bank holding companies with both commercial and investment banking interests; and Lehman Brothers was allowed to fail (see Business Snapshot 1.1).

# Credit Spreads

The losses on securities backed by residential mortgages led to a severe financial crisis. In 2006, banks were reasonably well capitalized, loans were relatively easy to obtain, and credit spreads (the excess of the interest rate on a loan over the risk-free interest rate) were low. By 2008, the situation was totally different. The capital of banks had been badly eroded by their losses. They had become much more risk-averse and were reluctant to lend. Creditworthy individuals and corporations found borrowing difficult. Credit spreads had increased dramatically. The world experienced its worst recession in several generations. The three-month LIBOR-OIS spread briefly reached 364 basis points in October 2008, indicating an extreme reluctance of banks to lend to each other for longer periods than overnight. Another measure of the stress in financial markets is the TED spread. This is the excess of the three-month Eurodollar deposit rate over the three-month Treasury interest. In normal market conditions, it is 30 to 50 basis points. It reached over 450 basis points in October 2008.

# 8.3 WHAT WENT WRONG?

"Irrational exuberance" is a phrase coined by Alan Greenspan, Chairman of the Federal Reserve Board, to describe the behavior of investors during the bull market of the 1990s. It can also be applied to the period leading up to the financial crisis. Mortgage lenders, the investors in tranches of ABSs and ABS CDOs that were created from residential mortgages, and the companies that sold protection on the tranches assumed that the good times would last for ever. They thought that U.S. house prices would continue to increase. There might be declines in one or two areas, but the possibility of the widespread decline shown in Figure 8.4 was a scenario not considered by most people.

Many factors contributed to the crisis that started in 2007. Mortgage originators used lax lending standards. Products were developed to enable mortgage originators to profitably transfer credit risk to investors. Rating agencies moved from their traditional business of rating bonds, where they had a great deal of experience, to rating structured products, which were relatively new and for which there were relatively little historical data. The products bought by investors were complex and in many instances investors and rating agencies had inaccurate or incomplete information about the quality of the underlying assets. Investors in the structured products that were created thought they had found a money machine and chose to rely on rating agencies rather than forming their own opinions about the underlying risks. The return offered by the products rated AAA was high compared with the returns on bonds rated AAA.

Structured products such as those in Figures 8.1 and 8.3 are highly dependent on the default correlation between the underlying assets. Default correlation measures the tendency for different borrowers to default at about the same time. If the default correlation between the underlying assets in Figure 8.1 is low, the AAA-rated tranches are very unlikely to experience losses. As this default correlation increases, they become more vulnerable. The tranches of ABS CDOs in Figure 8.3 are even more heavily dependent on default correlation.

If mortgages exhibit moderate default correlation (as they do in normal times), there is very little chance of a high overall default rate and the AAA-rated tranches of both ABSs and ABS CDOs that are created from mortgages are fairly safe. However, as many investors found to their cost, default correlations tend to increase in stressed market conditions. This makes very high default rates possible.

There was a tendency to assume that a tranche with a particular rating could be equated to a bond with the that rating. The rating agencies published the criteria they used for rating tranches. S&P and Fitch rated a tranche so as to ensure that the probability of the tranche experiencing a loss was the same as the probability of a similarly rated bond experiencing a loss. Moody's rated a tranche so that the expected loss from the tranche was the same as the expected loss from a similarly rated bond. The procedures used by rating agencies were therefore designed to ensure that one aspect of the loss distributions of tranches and bonds were matched. However, other aspects of the distributions were liable to be quite different.

The differences between tranches and bonds were accentuated by the fact tranches were often quite thin. The AAA tranches often accounted for about  $80\%$  of the principal as in Figure 8.1, but it was not unusual for there to be 15 to 20 other tranches. Each of these tranches would be  $1\%$  or  $2\%$  wide. Such thin tranches are likely to either incur no losses or be totally wiped out. The chance of investors recovering part of their principal (as bondholders usually do) is small. Consider, for example, a BBB tranche that is responsible for losses in the range  $5\%$  to  $6\%$ , If losses on the underlying portfolio are less than  $5\%$ , the tranche is safe. If losses are greater than  $6\%$ , the tranche is wiped out. Only in the case where losses are between  $5\%$  and  $6\%$  is a partial recovery made by investors.

The difference between a thin BBB-rated tranche and a BBB-rated bond was overlooked by many investors. The difference makes the tranches of ABS CDOs created from the BBB-rated tranches of ABSs much riskier than tranches created in a similar way from BBB bonds. Losses on a portfolio of BBB bonds can reasonably be assumed to be unlikely to exceed  $25\%$  in even the most severe market conditions. Table 8.1 shows that  $100\%$  losses on a portfolio of BBB tranches can occur relatively easily—and this is even more true when the tranches are only  $1\%$  or  $2\%$  wide.

# Regulatory Arbitrage

Many of the mortgages were originated by banks and it was banks that were the main investors in the tranches that were created from the mortgages. Why would banks choose to securitize mortgages and then buy the securitized products that were created? The answer concerns what is termed regulatory arbitrage. The regulatory capital banks were required to keep for the tranches created from a portfolio of mortgages was much less than the regulatory capital that would be required for the mortgages themselves.

# Incentives

One of the lessons from the crisis is the importance of incentives. Economists use the term "agency costs" to describe the situation where incentives are such that the interests of two parties in a business relationship are not perfectly aligned. The process by which mortgages were originated, securitized, and sold to investors was unfortunately riddled with agency costs.

The incentive of the originators of mortgages was to make loans that would be acceptable to the creators of the ABS and ABS CDO tranches. The incentive of the individuals who valued the houses on which the mortgages were written was to please the lender by providing as high a valuation as possible so that the loan-to-value ratio was as low as possible. (Pleasing the lender was likely to lead to more business from that lender.) The main concern of the creators of tranches was how the tranches would be rated. They wanted the volume of AAA-rated tranches that they created to be as high as possible and found ways of using the published criteria of rating agencies to achieve this. The rating agencies were paid by the issuers of the securities they rated and about half their income came from structured products.

Another source of agency costs concerns the incentives of the employees of financial institutions. Employee compensation falls into three categories: regular salary, the end-of-year bonus, and stock or stock options. Many employees at all levels of seniority in financial institutions, particularly traders, receive much of their compensation in the form of end-of-year bonuses. This form of compensation is focused on short-term performance. If an employee generates huge profits one year and is responsible for severe losses the next, the employee will often receive a big bonus the first year and will not have to return it the following year. (The employee might lose his or her job as a result of the second year losses, but even that is not a disaster. Financial institutions seem to be surprisingly willing to recruit individuals with losses on their résumés.)

Imagine you are an employee of a financial institution in 2006 responsible for investing in ABS CDOs created from mortgages. Almost certainly you would have recognized that there was a bubble in the U.S. housing market and would expect that bubble to burst sooner or later. However, it is possible that you would decide to continue with your ABS CDO investments. If the bubble did not burst until after the end of 2006, you would still get a nice bonus at the end of 2006.

# 8.4 THE AFTERMATH

Prior to the crisis, over-the-counter derivatives markets were largely unregulated. This has changed. As mentioned in earlier chapters, there is now a requirement that most standardized over-the-counter derivatives be cleared through central counterparties (CCPs). This means that they are treated similarly to derivatives such as futures that trade on exchanges. Banks are usually members of one or more CCPs. When trading standardized derivatives, they are required to post initial margin and variation margin with the CCP and are also required to contribute to a default fund. For transactions between financial institutions that continue to be cleared bilaterally, collateral arrangements are now regulated rather than chosen by the parties involved.

The bonuses paid by banks have come under more scrutiny and in some jurisdictions there are limits on the size of the bonuses that can be paid. The way bonuses are paid is changing. Before the crisis it was common for a trader's bonus for a year to be paid in full at the end of the year with no possibility of the bonus having to be returned. It is now more common for this bonus to be spread over several years so that part of the bonus can be clawed back if results are not as good as expected.

# Business Snapshot 8.1 The Basel Committee

As the activities of banks became more global in the 1980s, it became necessary for regulators in different countries to work together to determine an international regulatory framework. As a result the Basel Committee on Banking Supervision was formed. In 1988, it published a set of rules for the capital banks were required to keep for credit risk. These capital requirements have become known as Basel I. They were modified to accommodate the netting of transactions in 1995. In 1996 a new capital requirement for market risk was published. This capital requirement was implemented in 1998. In 1999 significant changes were proposed for the calculation of the capital requirements for credit risk and a capital requirement for operational risk was introduced. These rules are referred to as Basel II. Basel II is considerably more complicated than Basel I and its implementation was delayed until 2007 (later in some countries). During the financial crisis and afterwards, the Basel committee introduced new regulatory requirements known as Basel II.5, which increased capital for market risk. This was followed by Basel III, which tightened capital requirements and introduced liquidity requirements. Basel IV, which will be implemented between 2022 and 2027, revises Basel III, placing more emphasis on standardized approaches developed by the Basel committee for determining capital requirements.

The Dodd-Frank Act in the United States and similar legislation in the United Kingdom and European Union provide for more oversight of financial institutions and include much new legislation affecting financial institutions. For example, in the United States proprietary trading and other similar activities of deposit-taking institutions are being restricted. (This is known as the "Volcker rule" because it was proposed by former Federal Reserve chairman Paul Volcker.) An independent committee in the United Kingdom chaired by Sir John Vickers has proposed that the retail operations of banks be ring-fenced. The Liikanen committee in the European Union similarly recommends that proprietary trading and other high-risk activities be separated from other banking activities.

Banks throughout the world are regulated by the Basel Committee on Banking Supervision. $^{10}$  Prior to the crisis, the committee implemented regulations known as Basel I and Basel II. These are summarized in Business Snapshot 8.1. Following the crisis, it has implemented what is known as "Basel II.5." This increases the capital requirements for market risk. Basel III was published in 2010 has been implemented over a period lasting until 2019. It increases the amount of capital and quality of capital that banks are required to keep. It also requires banks to satisfy certain liquidity requirements. As discussed in Business Snapshot 4.2, one cause of problems during the crisis was the tendency of banks to place too much reliance on the use of short-term liabilities for long-term funding needs. The liquidity requirements are designed to make it more difficult for them to do this. Basel IV, to be implemented between 2022 and 2027, revises some of the rules in Basel III and reduces the extent to which banks can use their own internal models to determine their capital requirements.

# SUMMARY

Securitization is a process used by banks to create securities from loans and other income-producing assets. The securities are sold to investors. This removes the loans from the banks' balance sheets and enables the banks to expand their lending faster than would otherwise be possible. The first loans to be securitized were mortgages in the United States in the 1960s and 1970s. Investors who bought the mortgage-backed securities were not exposed to the risk of borrowers defaulting because the loans were backed by the Government National Mortgage Association. Later automobile loans, corporate loans, credit card receivables, and subprime mortgages were securitized. In many cases, investors in the securities created from these instruments did not have a guarantee against defaults.

Securitization played a part in the financial crisis that started in 2007. Tranches were created from subprime mortgages and new tranches were then created from these tranches. The origins of the crisis can be found in the U.S. housing market. The U.S. government was keen to encourage home ownership. Interest rates were low. Mortgage brokers and mortgage lenders found it attractive to do more business by relaxing their lending standards. Securitization meant that the investors bearing the credit risk were not usually the same as the original lenders. Rating agencies gave AAA ratings to the senior tranches that were created. There was no shortage of buyers for these AAA-rated tranches because their yields were higher than the yields on other AAA-rated securities. Banks thought the "good times" would continue and, because compensation plans focused their attention on short-term profits, chose to ignore the housing bubble and its potential impact on some very complicated products they were trading.

House prices rose as both first-time buyers and speculators entered the market. Some mortgages had included a low "teaser rate" for two or three years. After the teaser rate ended, there was a significant increase in the interest rate for some borrowers. Unable to meet the higher interest rate they had no choice but to default. This led to foreclosures and an increase in the supply of houses be sold. The price increases between 2000 and 2006 began to be reversed. Speculators and others who found that the amount owing on their mortgages was greater than the value of their houses (i.e., they had negative equity) defaulted. This accentuated the price decline.

Banks are paying a price for the crisis. New legislation and regulation will reduce their profitability. For example, capital requirements are being increased, liquidity regulations are being introduced, and OTC derivatives are being much more tightly regulated.

# FURTHER READING

Gorton, G. "The Subprime Panic," European Financial Management, 15, 1 (January 2009): 10-46.

Hull, J. C. "The Financial Crisis of 2007: Another Case of Irrational Exuberance," in: The Finance Crisis and Rescue: What Went Wrong? Why? What Lessons Can be Learned. University of Toronto Press, 2008.

Hull, J. C., and A. White. "Ratings Arbitrage and Structured Products," Journal of Derivatives, 20, 1 (Fall 2012): 80-86.

Keys, B. J., T. Mukherjee, A. Seru, and V. Vig. "Did Securitization Lead to Lax Screening? Evidence from Subprime Loans," Quarterly Journal of Economics, 125, 1 (2010): 307-62.

Krinsman, A. N. "Subprime Mortgage Meltdown: How Did It Happen and How Will It End," Journal of Structured Finance, 13, 2 (Summer 2007): 13-19.

Mian, A., and A. Sufi. "The Consequences of Mortgage Credit Expansion: Evidence from the U.S. Mortgage Default Crisis," Quarterly Journal of Economics, 124, 4 (November 2009): 1449-96.

Sorkin, A. R. Too Big to Fail. New York: Penguin, 2009.

Tett, G. Fool's Gold: How the Bold Dream of a Small Tribe at JP Morgan Was Corrupted by Wall Street Greed and Unleashed a Catastrophe. New York: Free Press, 2009

Zimmerman, T. "The Great Subprime Meltdown," Journal of Structured Finance, Fall 2007, 7-20.

# Short Concept Questions

8.1. What was the role of agencies such as GNMA (Ginnie Mae) in the MBS market of the 1970s?
8.2. What is a mezzanine tranche?
8.3. Explain how an ABS is structured.
8.4. Explain how an ABS CDO is structured.
8.5. What is a waterfall in a securitization?
8.6. What is a subprime mortgage?
8.7. Why did the relaxation of mortgage lending standards lead to an increase in house prices in the U.S. during the 2000-2006 period?
8.8. What is meant by the term "agency costs"? How did agency costs play a role in the financial crisis of 2007-8?
8.9. What happened to the large investment banks following the 2007-8 crisis?

8.10. Explain the role of the Basel committee in regulating banks.

# Practice Questions

8.11. What are the numbers in Table 8.1 for a loss rate of (a)  $12\%$  and (b)  $15\%$ ?
8.12. Why do you think the increase in house prices during the 2000 to 2007 period is referred to as a bubble?
8.13. Why did mortgage lenders frequently not check on information provided by potential borrowers on mortgage application forms during the 2000 to 2007 period?
8.14. How were the risks in ABS CDOs misjudged by the market?
8.15. How is an ABS CDO created? What was the motivation to create ABS CDOs?
8.16. Explain the impact of an increase in default correlation on the risks of the senior tranche of an ABS. What is its impact on the risks of the equity tranche?
8.17. Explain why the AAA-rated tranche of an ABS CDO is more risky than the AAA-rated tranche of an ABS.
8.18. Explain why the end-of-year bonus is sometimes referred to as "short-term compensation."
8.19. Add rows in Table 8.1 corresponding to losses on the underlying assets of (a)  $2\%$ , (b)  $6\%$ , (c)  $14\%$ , and (d)  $18\%$ .

8.20. Suppose that the principal assigned to the senior, mezzanine, and equity tranches is  $70\%$ ,  $20\%$ , and  $10\%$  for both the ABS and the ABS CDO in Figure 8.3. What difference does this make to Table 8.1?
8.21. "Resecuritization was a badly flawed idea. AAA tranches created from the mezzanine tranches of ABSs are bound to have a higher probability of default than the AAA-rated tranches of ABSs." Discuss this point of view.
8.22. Suppose that mezzanine tranches of the ABS CDOs, similar to those in Figure 8.3, are resecuritized to form what is referred to as a "CDO squared." As in the case of tranches created from ABSs in Figure 8.3,  $65\%$  of the principal is allocated to a AAA tranche,  $25\%$  to a BBB tranche, and  $10\%$  to the equity tranche. How high does the loss percentage have to be on the underlying assets for losses to be experienced by a AAA-rated tranche that is created in this way? (Assume that every portfolio of assets that is used to create ABSs experiences the same loss rate.)

Before moving on to discuss how options and other more complex derivatives are valued, we consider various price adjustments that have become important in derivatives markets. These are the credit valuation adjustment (CVA), the debit (or debt) valuation adjustment (DVA), the funding valuation adjustment (FVA), the margin valuation adjustment (MVA), and the capital valuation adjustment (KVA). Collectively the adjustments are known as XVAs. Some of the adjustments have a stronger theoretical basis than others. As we shall see, financial economists have no problem with CVA and DVA, but have reservations about FVA, MVA, and KVA.
