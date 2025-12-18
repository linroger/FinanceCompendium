---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Chapter 21
linter-yaml-title-alias: Chapter 21
---

# Chapter 21

# Liquidity Risk

The Global Financial Crisis that started in the middle of 2007 has emphasized the importance of liquidity risk for both financial institutions and their regulators. Some financial institutions that relied on wholesale deposits for their funding experienced problems as investors lost confidence in financial institutions. Moreover, financial institutions found that some instruments for which there had previously been a liquid market could only be sold at fire-sale prices during the crisis. A important role of the Treasury function within a financial institution is to manage liquidity risk.

It is important to distinguish solvency from liquidity. Solvency refers to a company having more assets than liabilities, so that the value of its equity is positive. Liquidity refers to the ability of a company to make cash payments as they become due. Financial institutions that are solvent can—and sometimes do—fail because of liquidity problems. Consider a bank whose assets are mostly illiquid mortgages. Suppose the assets are financed  $90\%$  with deposits and  $10\%$  with equity. The bank is comfortably solvent. But it could fail if there is a run on deposits with  $25\%$  of depositors suddenly deciding to withdraw their funds. In this chapter we will examine how Northern Rock, a British bank specializing in mortgage lending, failed largely because of liquidity problems of this type.

It is clearly important for financial institutions to manage liquidity carefully. Liquidity needs are uncertain. A financial institution should assess a worst-case liquidity scenario and make sure that it can survive that scenario by either converting assets into cash or raising cash in some other way. As explained in later chapters, regulators have introduced liquidity requirements that are designed to ensure that banks do this.

Liquidity is also an important consideration in trading. A liquid position in an asset is one that can be unwound at short notice. As the market for an asset becomes less liquid, traders are more likely to take losses because they face bigger bid-ask spreads. For an option or other derivative, it is important for there to be a liquid market for the underlying asset so that the trader has no difficulty in doing the daily trades necessary to maintain delta neutrality (see Chapter 15).

This chapter discusses different aspects of liquidity risk. It considers liquidity trading risk and liquidity funding risk. It also looks at what are termed "liquidity black holes." These are situations where a shock to financial markets causes liquidity to almost completely dry up.

# 21.1 Liquidity Trading Risk

If a financial institution owns 100, 1,000, 10,000, or even 100,000 shares in IBM, liquidity risk is not a concern. Several million IBM shares trade on the New York Stock Exchange every day. The quoted price of the shares is very close to the price that the financial institution would be able to sell the shares for. However, not all assets are as readily convertible into cash. For example, a 100 million investment in the bonds of a non-investment-grade U.S. company might be quite difficult to sell at close to the market price in one day. Shares and debt of companies in emerging markets are likely to be even less easy to sell.

The price at which a particular asset can be sold depends on

1. The mid-market price of the asset, or an estimate of its value
2. How much of the asset is to be sold
3. How quickly it is to be sold
4. The economic environment

When there is a market maker who quotes a bid and ask price for a financial asset, the financial institution can sell the asset at the bid and buy at the ask. (The ask price is sometimes referred to as the offer price.) However, it is usually stated (or understood) that a particular quote is good for trades up to a certain size. Above that size, the market maker is likely to increase the bid-ask spread. This is because the market maker knows that, as the size of a trade increases, the difficulty of hedging the exposure created by the trade also increases.

When there is no market maker for a financial instrument, there is still an implicit bid-ask spread. If a financial institution approaches another financial institution (or an interdealer broker) to do a trade, the price depends on which side of the trade it wants to take. The bid-ask spread for an asset can vary from  $0.01\%$  of the asset's mid-market price to as much as  $5\%$ , or even  $10\%$ , of its mid-market price.

The general nature of the relationship between bid quotes, ask quotes, and trade size is indicated in Figure 21.1. The bid price tends to decrease and the ask price tends to increase with the size of a trade. For an instrument where there is a market maker, the bids and asks are the same up to the market maker's size limit and then start to diverge.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/a90764898b41acbd599424adbe21cffecad700ab426794d41e7dcd534dcba5cd.jpg)

Figure 21.1 Bid and Ask Prices as a Function of Quantity Transacted

Figure 21.1 describes the market for large deals between sophisticated financial institutions. It is interesting to note that bid-ask spreads in the retail market sometimes show the opposite pattern to that in Figure 21.1. Consider, for example, an individual who approaches a branch of a bank wanting to do a foreign exchange transaction or invest money for 90 days. As the size of the transaction increases, the individual is likely to get a better quote.

The price that can be realized for an asset often depends on how quickly it is to be liquidated and the economic environment. Suppose you want to sell your house. Sometimes the real estate market is referred to as a "seller's market." Almost as soon as you put the house on the market, you can expect to get several offers to purchase and the house will be sold within a week. In other markets, it may take six months or more to sell the house. In the latter case, if you need to sell the house immediately, you will have to reduce the asking price well below the estimated market value.

Financial assets are similar to real assets as far as this is concerned. Sometimes liquidity is tight (e.g., after the Russian default of 1998 and during the Global Financial Crisis). Liquidating even a relatively small position can then be time-consuming and is sometimes impossible. On other occasions, there is plenty of liquidity in the market and relatively large positions can be unwound without difficulty.

Liquidating a large position can be affected by what is termed predatory trading. This occurs when a market participant, say Company X, has a large position and other market participants guess that it will have to be unwound in the near future. The other market participants attempt to profit by doing similar trades to those they expect from

Company X. For example, if it is expected that Company X will have to sell a large position in a particular stock, they short the stock in anticipation of a price decline. This makes it more difficult than it would otherwise be for Company X to exit from its position at competitive prices. To avoid predatory trading, financial institutions emphasize to employees the importance of keeping their positions and their future trading plans confidential. Predatory trading was an issue for the trader known as the London Whale in 2012 (see Business Snapshot 22.1) and for Metallgesellschaft (see Business Snapshot 21.3). In the case of Long-Term Capital Management (see Business Snapshot 16.1), positions were unwound slowly over a period of time under the supervision of the Federal Reserve to avoid predatory trading.

Another problem in the market for financial assets is that, when one financial institution finds that it needs to unwind a position, it is often the case that many other financial institutions with similar positions need to do the same thing. The liquidity normally present in the market then evaporates. This is the "liquidity black hole" phenomenon that will be discussed later in this chapter.

# 21.1.1 The Importance of Transparency

One thing that the market has learned from the Global Financial Crisis is that transparency is important for liquidity. If the nature of an asset is uncertain, it is not likely to trade in a liquid market for very long.

As explained in Chapter 7, it had become common practice in the years prior to 2007 to form portfolios of subprime mortgages and other assets and to create financial instruments by securitizing, re-securitizing, and re-re-securitizing the credit risk. Many of the financial instruments were even more complicated than indicated in Chapter 7. Sometimes the ABS CDOs that were created included non-mortgage assets and even tranches from other ABS CDOs. After August 2007, market participants realized that they knew very little about the risks in the instruments they had traded. Moreover, it was very difficult for them to find out very much about this. Belatedly, they realized they had been using credit ratings as a substitute for an understanding of the instruments.

After August 2007, the instruments created from subprime mortgages became illiquid. Financial institutions had no idea how to mark to market investments that they had been scrambling to buy a few months earlier. They realized that they had purchased highly complicated credit derivatives and that they did not have the tools to value them. They lacked both the necessary models and solid information about the assets in the portfolios underlying the derivatives.

Other well-defined credit derivatives, such as credit default swaps, continued to trade actively during the credit crisis. The lesson from all this is that the market can sometimes get carried away trading complex products that are not transparent, but, when it comes to its senses, liquidity for the products soon disappears. When the products do trade again, prices are likely to be low and bid-ask spreads are likely to be high. As mentioned in Chapter 7, in July 2008 Merrill Lynch agreed to sell 30.6 billion of ABS CDO tranches (previously rated AAA) to Lone Star Funds for 22 cents on the dollar.

# 21.1.2 Measuring Market Liquidity

One measure of the market liquidity of an asset is its bid-ask spread. This can be measured either as a cash amount or as a proportion of the asset price. The cash bid-ask spread is

$$ p = \text {A s k p r i c e - B i d p r i c e}
$$

The proportional bid-ask spread for an asset is defined as

$$ s = \frac {\text {A s k p r i c e - B i d p r i c e}}{\text {M i d - m a r k e t p r i c e}}
$$ where the mid-market price is halfway between the bid and the ask price. Sometimes it is convenient to work with the cash bid-ask spread,  $p$ , and sometimes with the proportional bid-ask spread,  $s$ .


The mid-market price can be regarded as the fair price. In liquidating a position in an asset, a financial institution incurs a cost equal to  $\frac{\alpha}{2}$  where  $\alpha$  is the (mid-market) value of the position. This reflects the fact that trades are not done at the mid-market price. A buy trade is done at the ask price and a sell trade is done at the bid price.

One measure of the liquidity of a book is how much it would cost to liquidate the book in normal market conditions within a certain time. Suppose that  $s_i$  is an estimate of the proportional bid-ask spread in normal market conditions for the  $i$ th financial instrument held by a financial institution and  $\alpha_i$  is the value of the position in the instrument. Then

$$

\text {C o s t} \quad \text {l i q u i d a t i o n (n o r m a l m a r k e t)} = \sum_ {i = 1} ^ {n} \frac {s _ {i} \alpha_ {i}}{2} \tag {21.1}

$$ where  $n$  is the number of positions. Note that although diversification reduces market risk, it does not necessarily reduce liquidity trading risk. However, as explained earlier,  $s_i$  increases with the size of position  $i$ . Holding many small positions rather than a few large positions therefore tends to entail less liquidity risk. Setting limits to the size of any one position can therefore be one way of reducing liquidity trading risk.

# Example 21.1

Suppose that a financial institution has bought 10 million shares of one company and 50 million ounces of a commodity. The shares are bid $89.5, ask $90.5. The commodity is bid $15, ask $15.1. The mid-market value of the position in the shares is 90 × 10 = \$900 million. The mid-market value of the position in the commodity is 15.05 × 50 = \$752.50 million. The proportional bid–ask spread for the shares is 1/90 or 0.01111. The proportional bid–ask spread for the commodity is 0.1/15.05 or 0.006645. The cost of liquidation in a normal market is

$$
9 0 0 \times 0. 0 1 1 1 1 / 2 + 7 5 2. 5 \times 0. 0 0 6 6 4 5 / 2 = 7. 5
$$ or 7.5 million.


Another measure of liquidity is the cost of liquidation in stressed market conditions within a certain time period. Define  $\mu_{i}$  and  $\sigma_{i}$  as the mean and standard deviation of the proportional bid-ask spread for the  $i$ th financial instrument held. Then:

$$

\text {C o s t} \quad (\text {s t r e s s e d m a r k e t}) = \sum_ {i = 1} ^ {n} \frac {\left(\mu_ {i} + \lambda \sigma_ {i}\right) \alpha_ {i}}{2} \tag {21.2}

$$

The parameter  $\lambda$  gives the required confidence level for the spread. If, for example, we are interested in considering "worst case" spreads that are exceeded only  $1\%$  of the time, and if it is assumed that spreads are normally distributed, then  $\lambda = 2.326$ .

# Example 21.2

Suppose that in Example 21.1 the mean and standard deviation for the bid-ask spread for the shares are  \$1.0 and\$ 2.0, respectively. Suppose further that the mean and standard deviation for the bid-ask spread for the commodity are both 0.1. The mean and standard deviation for the proportional bid-ask spread for the shares are 0.01111 and 0.02222, respectively. The mean and standard deviation for the proportional bid-ask spread for the commodity are both 0.006645. Assuming the spreads are normally distributed, the cost of liquidation that we are 99\% confident will not be exceeded is

$$

\begin{array}{l} 0. 5 \times 9 0 0 \times (0. 0 1 1 1 1 + 2. 3 2 6 \times 0. 0 2 2 2 2) \\ + 0. 5 \times 7 5 2. 5 \times (0. 0 0 6 6 4 5 + 2. 3 2 6 \times 0. 0 0 6 6 4 5) = 3 6. 5 8 \\ \end{array}

$$ or 36.58 million. This is almost five times the cost of liquidation in normal market conditions.


In practice, bid-ask spreads are not normally distributed and it may be appropriate to use a value of  $\lambda$  that reflects their empirical distribution. For example, if it is found that the 99 percentile point of the distribution is 3.6 standard deviations above the mean for a particular category of financial instruments,  $\lambda$  can be set equal to 3.6 for those instruments.

Equation (21.2) assumes that spreads in all instruments are perfectly correlated. This may seem overly conservative, but it is not. When liquidity is tight and bid-ask spreads widen, they tend to do so for all instruments. It makes sense for a financial institution to monitor changes in the liquidity of its book by calculating the measures in equations (21.1) and (21.2) on a regular basis. As we have seen, the bid-ask spread depends on how quickly a position is to be liquidated. The measures in equations (21.1) and (21.2) are therefore likely to be decreasing functions of the time period assumed for the liquidation.

# 21.1.3 Liquidity-Adjusted VaR

Market value at risk, which we discussed in Chapters 11 to 13, is designed to calculate an estimate of a "worst case" change in the mark-to-market valuation of the trading book. The measures in equations (21.1) and (21.2) are designed to calculate the cost of liquidating a book if market prices do not change. Although VaR and liquidity risk measures deal with different types of risks, some researchers have suggested combining them into a liquidity-adjusted VaR measure. One definition of liquidity-adjusted VaR is regular VaR plus the cost of unwinding positions in a normal market. From equation (21.1) this gives


$$

\text {L i q u i d i t y - A d j u s t e d V a R} = \mathrm {V a R} + \sum_ {i = 1} ^ {n} \frac {s _ {i} \alpha_ {i}}{2} \tag {21.3}

$$

Alternatively it can be defined as regular VaR plus the cost of unwinding positions in a stressed market. From equation (21.2) this gives

$$

\text {L i q u i d i t y - A d j u s t e d V a R} = \mathrm {V a R} + \sum_ {i = 1} ^ {n} \frac {\left(\mu_ {i} + \lambda \sigma_ {i}\right) \alpha_ {i}}{2}

$$

# 21.1.4 Unwinding a Position Optimally

A trader wishing to unwind a large position in a financial instrument has to decide on the best trading strategy. If the position is unwound quickly, the trader will face large bid-ask spreads, but the potential loss from the mid-market price moving against the trader is small. If the trader chooses to take several days to unwind the position, the bid-ask spread the trader faces each day will be lower, but the potential loss from the mid-market price moving against the trader is larger.

This type of problem is discussed by Almgren and Chriss (2001). Suppose that the size of a position is  $V$  units and that a trader has to decide how to liquidate it over an  $n$ -day period. In this case, it is convenient to define the bid-ask spread as a cash amount rather than as a proportion. Define the cash bid-ask spread when the trader trades  $q$  units in one day as  $p(q)$ . Define  $q_{i}$  as the units traded on day  $i$  and  $x_{i}$  as the size of the trader's position at the end of day  $i$  ( $1 \leq i \leq n$ ). It follows that  $x_{i} = x_{i - 1} - q_{i}$  for  $1 \leq i \leq n$  where  $x_{0}$  is defined as the initial position size,  $V$ .

Each trade costs half the bid-ask spread. The total of the costs related to the bid-ask spread is therefore

$$

\sum_ {i = 1} ^ {n} q _ {i} \frac {p (q _ {i})}{2}

$$

Suppose that the mid-market price changes are normally distributed with a standard deviation of  $\sigma$  per day and trading takes place at the beginning of a day. The variance of the change in the value of the trader's position on day  $i$  is  $\sigma^2 x_i^2$ . Assuming that price changes on successive days are independent, the variance of the change in the value of the position applicable to the unwind is therefore


$$

\sum_ {i = 1} ^ {n} \sigma^ {2} x _ {i} ^ {2}

$$

A trader might reasonably wish to minimize VaR after trading costs have been considered. This corresponds to minimizing something similar to the liquidity-adjusted VaR measure in equation (21.3). The trader's objective is to choose the  $q_{i}$  so that

$$

\lambda \sqrt {\sum_ {i = 1} ^ {n} \sigma^ {2} x _ {i} ^ {2}} + \sum_ {i = 1} ^ {n} q _ {i} \frac {p (q _ {i})}{2}

$$ is minimized subject to


$$

\sum_ {i = 1} ^ {n} q _ {i} = V

$$ with the  $x_{i}$  being calculated from  $V$  and the  $q_{i}$ , as indicated above. The parameter  $\lambda$  measures the confidence level in the VaR estimate. For example, when the confidence level is 99\%, and daily price changes are assumed to be normally distributed,  $\lambda = 2.326$ . Once the  $p(q)$  function has been estimated, Excel's Solver can be used for the optimization.

# Example 21.3

A trader wishes to unwind a position of 100 million units in an asset over five days. Suppose that the bid-ask spread  $p$  (measured in cash) as a function of the daily trading volume is

$$ p (q) = a + b e ^ {c q}
$$ where  $a = 0.1$ ,  $b = 0.05$ , and  $c = 0.03$  and the amount traded,  $q$ , is measured in millions of units.


The standard deviation of the price change per day is 0.1. A spreadsheet for calculating the optimal strategy can be downloaded from the author's website: www2.rotman.utoronto.ca/~hull/riskman. When the confidence level is 95\%, the amounts that should be traded on days 1, 2, 3, 4, and 5 are 48.9, 30.0, 14.1, 5.1, and 1.9 million units, respectively. As the VaR confidence level is reduced, the amounts traded per day show less variability. For example, when the confidence level is 90\%, they are 45.0, 29.1, 15.6, 7.0, and 3.3 million units, respectively. When the confidence level is 75\% they are 36.1, 26.2, 17.7, 11.6, and 8.4 million units, respectively. In the limit when the confidence level is set equal to 50\%, so that the trader is interested only in expected costs, not in the standard deviation of costs, 20 million units should be traded each day.

As this example illustrates, when a position is to be closed out over  $n$  days, more than  $1/n$  of the position should be traded on the first day. This is because the longer any part of the position is held, the greater the risk of adverse market moves.

# 21.1.5 Other Measures of Market Liquidity

So far we have focused on bid-ask spread as a measure of market liquidity. Many other measures have been proposed. The volume of trading per day (i.e., the number of times the asset trades in a day) is an important measure. When an asset is highly illiquid, the volume of trading in a day is often zero. The price impact of a trade of a certain size is another measure. A measure somewhat similar to this, but more easily calculated, was proposed by Amihud (2002). It is the average of

# Absolute value of daily return

# Daily dollar volume over all days in the period considered. This measure is widely used by researchers. Amihud shows that an asset's expected return increases as its liquidity decreases. In other words, investors do get compensated for illiquidity.


# 21.2 Liquidity Funding Risk

We now move on to consider liquidity funding risk. This is the financial institution's ability to meet its cash needs as they arise. As mentioned at the outset of this chapter, liquidity is not the same as solvency. Financial institutions that are solvent (i.e., have positive equity) can, and sometimes do, fail because of liquidity problems. Northern Rock, a British mortgage lender, is a case in point (see Business Snapshot 21.1).

Liquidity funding problems at a financial institution can be caused by:

1. Liquidity stresses in the economy (e.g., a flight to quality such as that seen during the 2007 to 2009 period). Investors are then reluctant to provide funding in situations where there is any credit risk at all.
2. Overly aggressive funding decisions. There is a tendency for all financial institutions to use short-term instruments to fund long-term needs, creating a liquidity mismatch. Financial institutions need to ask themselves: "How much of a mismatch is too much?"
3. A poor financial performance, leading to a lack of confidence. This can result in a loss of deposits and difficulties in rolling over funding.

Often, when a company experiences severe liquidity problems, all three of these have occurred at the same time. The key to managing liquidity risk is predicting cash needs and ensuring that they can be met in adverse scenarios. Some cash needs are predictable. For example, if a bank has issued a bond, it knows when coupons will have to be paid. Others, such as those associated with withdrawals of deposits by retail customers and drawdowns by corporations on lines of credit that the bank has granted, are less predictable. As the financial instruments entered into by financial institutions have

# BUSINESS SNAPSHOT 21.1

# Northern Rock

Northern Rock, a British bank, was founded in 1997 when the Northern Rock Building Society floated shares on the London Stock Exchange. In 2007, it was one of the top five mortgage lenders in the United Kingdom. It had 76 branches and offered deposit accounts, savings accounts, loans, and house/contents insurance. The bank grew rapidly between 1997 and 2007. Some of its mortgages were securitized through a subsidiary, Granite, that was based in the Channel Islands.

Northern Rock relied on selling short-term debt instruments for much of its funding. Following the subprime crisis of August 2007, the bank found it very difficult to replace maturing instruments because institutional investors became very nervous about lending to banks that were heavily involved in the mortgage business. The bank's assets were sufficient to cover its liabilities so it was not insolvent. To quote from the Financial Services Authority (FSA) in September 2007: "The FSA judges that Northern Rock is solvent, exceeds its regulatory capital requirement, and has a good quality loan book." But Northern Rock's inability to fund itself was a serious problem. It approached the Bank of England for funding on September 12, 2007, and borrowed about £3 billion from the Tripartite Authority (Bank of England, the Financial Services Authority, and HM Treasury) in the following few days.

On September 13, 2007, the BBC business editor Robert Peston broke the news that the bank had requested emergency support from the Bank of England. On Friday, September 14, there was a run on the bank. Thousands of people lined up for hours to withdraw their funds. This was the first run on a British bank in 150 years. Some customers held their funds in an "Internet-only" account, which they were unable to access due to the volume of customers trying to log on. On Monday, September 17, worried savers continued to withdraw their funds. An estimated £2 billion was withdrawn between September 12 and September 17, 2007.

Depositor insurance in the UK guaranteed  $100\%$  of the first  $\pounds 2,000$  and  $90\%$  of the next  $\pounds 33,000$ . Late on September 17, 2007, the British Chancellor of the Exchequer, Alistair Darling, announced that the British government and the Bank of England would guarantee all deposits held at Northern Rock. As a result of this announcement and subsequent advertisements in major UK newspapers, the lines outside Northern Rock's branches gradually disappeared. Northern Rock's shares, which had fallen from  $\pounds 12$  earlier in the year to  $\pounds 2.67$ , rose  $16\%$  on Mr. Darling's announcement.

During the months following September 12, 2007, Northern Rock's emergency borrowing requirement increased. The Bank of England insisted on a penalty rate of interest to discourage other banks from taking excessive risks. Northern Rock raised some funds by selling assets, but by February 2008 the emergency borrowing reached £25 billion. The bank was then nationalized and the management of the bank was changed. It was split into Northern Rock plc and Northern Rock (Asset Management), with the company's bad debt being put in Northern Rock (Asset Management). In November 2011, Northern Rock plc was bought from the British government for £747 million by the Virgin Group, which is headed by the colorful entrepreneur Sir Richard Branson.

The Northern Rock story illustrates just how quickly liquidity problems can lead to a bank spiraling downward. If the bank had been managed a little more conservatively and had paid more attention to ensuring that it had access to funding, it might have survived.

become more complex, cash needs have become more difficult to predict. For example, downgrade triggers (see Section 18.2.3), guarantees provided by a financial institution, and possible defaults by counterparties in derivatives transactions can have an unexpected impact on cash resources.

# 21.2.1 Sources of Liquidity

The main sources of liquidity for a financial institution are:

1. Holdings of cash and Treasury securities
2. The ability to liquidate trading book positions
3. The ability to borrow money at short notice
4. The ability to offer favorable terms to attract retail and wholesale deposits at short notice
5. The ability to securitize assets (such as loans) at short notice
6. Borrowings from the central bank

We now consider each of these in turn.

Cash and Treasury Securities Cash and Treasury securities are excellent sources of liquidity. Cash is of course always available to meet liquidity needs and Treasury securities issued by countries such as the United States and the United Kingdom can generally be converted into cash at short notice without any problem. However, cash and Treasury securities are relatively expensive sources of liquidity. There is a trade-off between the liquidity of an asset and the return it provides. In order to be profitable, a financial institution needs to invest in assets such as loans to corporations that provide a higher rate of return than Treasury instruments. There is therefore a limit to the cash and Treasury securities that can reasonably be held.


Liquidating Trading Book Positions Liquidity funding risk is related to liquidity trading risk, considered in Section 21.1, because one way a financial institution can meet its funding requirements is by liquidating part of its trading book. It is therefore important for a financial institution to quantify the liquidity of its trading book so that it knows how easy it would be to use the book to raise cash. The financial institution wants to make sure that it will be able to survive stressed market conditions where there is a general shortage of liquidity. The financial institution's analysis should therefore be based on stressed market conditions, not normal market conditions. This is the reason why the measures discussed in the previous section concerned with bid-ask spreads in stressed markets are important.

Ability to Borrow When markets are unstressed, a creditworthy bank usually has no problem in borrowing money, but in stressed market conditions there is a heightened aversion to risk. This leads to higher interest rates, shorter maturities for loans, and in some cases a refusal to provide funds at all. Financial institutions should monitor the assets that can be pledged as collateral for loans at short notice. A financial institution can (at a cost) mitigate its funding risks somewhat by arranging lines of credit. For example, Countrywide, an originator of mortgages in the United States, had a syndicated loan facility of 11.5 billion, which it was able to use during the credit crisis of 2007. (This helped keep the company afloat, but it still experienced significant problems and was taken over by Bank of America in January 2008.) As Business Snapshot 21.1 shows, Northern Rock, a similar British mortgage lender, did not fare so well.

Wholesale and Retail Deposits Wholesale deposits are a more volatile source of funding than retail deposits and can disappear quickly in stressed market conditions. Even retail deposits are not as stable as they used to be because it is very easy to compare interest rates offered by different financial institutions and make transfers via the Internet. Unfortunately, liquidity problems tend to be market-wide rather than something that affects one or two financial institutions. When one financial institution wants to increase its retail or wholesale deposit base for liquidity reasons by offering more attractive rates of interest, others usually want to do the same thing and the increased funding is likely to be difficult to achieve.

Securitization As mentioned in Chapter 2, banks have found the "originate-to-distribute" model attractive. Rather than keep illiquid assets such as loans on their balance sheet, they have securitized them. The structures developed for doing this were discussed in Chapter 7. Prior to August 2007, securitization was an important source of liquidity for banks. However, this source of liquidity dried up almost overnight in August 2007 as investors decided that the securitized products were too risky. "Originate-to-distribute" was no longer a viable strategy, and banks had to fund their loans. Not surprisingly, banks became a lot less willing to lend.

Securitization led to other liquidity problems in August 2007. Banks had entered into liquidity backstop arrangements on the asset-backed commercial paper (ABCP) that was used to fund debt instruments, such as mortgages, prior to their securitization. When buyers could not be found, they had to buy the instruments themselves. In some cases, in order to avoid their reputations being adversely impacted, they had to provide financial support to conduits and other off-balance-sheet vehicles that were involved in securitization, even though they were not legally required to do so.

Central Bank Borrowing Central banks (e.g., the Federal Reserve Board in the United States, the Bank of England in the UK, or the European Central Bank) are often referred to as "lenders of last resort." When commercial banks are experiencing financial difficulties, central banks are prepared to lend money to maintain the health of the financial system. Collateral has to be posted by the borrowers and the central bank typically applies a haircut (i.e., it lends less than  $100\%$  of the value of the collateral) and may charge a relatively high rate of interest. In March 2008, after the failure of Bear Stearns (which was taken over by JPMorgan Chase), the Federal Reserve Board extended its borrowing facility to investment banks as well as commercial banks.4 Later, it also made the facility available to Fannie Mae and Freddie Mac (which were taken over by the government in September 2008).

Different central banks apply different rules. Following the credit crisis of August 2007, the haircuts used by the European Central Bank (ECB) were lower than those of other central banks. As a result, some British banks preferred to borrow from the European Central Bank (ECB) rather than the Bank of England. (There are even stories of North American banks contemplating the setting up of subsidiaries in Ireland to access the ECB.) By September 2008, the ECB had lent 467 billion euros and announced that it would apply larger haircuts in the future.

Banks try to keep their borrowing from a central bank a secret. There is a danger that the use of central bank borrowings will be interpreted by the market as a sign that the bank is experiencing financial difficulties with the result that other sources of liquidity dry up. As Business Snapshot 21.1 discusses, news that Northern Rock required emergency borrowing led to an immediate run on the bank, exacerbating its liquidity problems.

Hedging Issues Liquidity problems are liable to arise when companies hedge illiquid assets with contracts that are subject to margin requirements. As indicated in Business Snapshot 8.1, gold-mining companies often hedge their risks by entering into agreements with financial institutions to sell gold forward for two or three years. Often the gold-mining company is required to post margin and the amount of the margin required is calculated every day to reflect the value of its forward agreements. If the price

# BUSINESS SNAPSHOT 21.2

# Ashanti Goldfields

Ashanti Goldfields, a West African gold-mining company based in Ghana, experienced problems resulting from its hedging program in 1999. It had sought to protect its shareholders from gold price declines by selling gold forward. On September 26, 1999, 15 European central banks surprised the market with an announcement that they would limit their gold sales over the following five years. The price of gold jumped up over  $25\%$ . Ashanti was unable to meet margin calls and this resulted in a major restructuring, which included the sale of a mine, a dilution of the interest of its equity shareholders, and a restructuring of its hedge positions.

of gold rises fast, the forward agreements lose money and result in big margin calls being made by the financial institution on the gold-mining company. The losses on the forward agreements are offset by increases in the value of the gold in the ground—but this is an illiquid asset. As discussed in Business Snapshot 21.2, Ashanti Goldfields was forced to undertake a major restructuring when it could not meet margin calls after a sharp rise in the price of gold.

Another extreme example of a liquidity funding problem caused by hedging is provided by a German company, Metallgesellschaft, that entered into profitable fixed-price oil and gas contracts with its customers (see Business Snapshot 21.3). The lesson from the Ashanti and Metallgesellschaft episodes is not that companies should not use forward and futures contracts for hedging, but rather that they should ensure that they have access to funding to handle the cash flow mismatches that might arise in extreme circumstances.

# 21.2.2 Reserve Requirements

Reserve requirements require that a proportion of a bank's deposits be kept as cash or on deposit with the central bank. Some countries, such as Canada and the United Kingdom, have no compulsory reserve requirements. The United States eliminated reserve requirements in March 2020. In China, reserve requirements were set at  $8\%$  in December 2021.

In addition to ensuring that banks keep a minimum amount of liquidity, reserve requirements affect the money supply. When the reserve requirement is  $10\%$ , a  $\$100$  deposit leads to  $\$90$  of lending, which leads to a further  $\$90$  of deposits in the banking system, which leads to further  $\$81$  of lending, and so on. As this process continues, the total money supply (M1) that is created is  $90 + 81 + 72.9 + \ldots$  or  $\$900$ . If the reserve requirement is  $20\%$ , a  $\$100$  deposit leads to  $\$80$  of lending, which leads to  $\$64$  of lending, and so on. The total increase in the money supply is  $80 + 64 + 51.2 + \ldots$  or  $\$400$ .

# BUSINESS SNAPSHOT 21.3

# Metallgesellschaft

In the early 1990s, Metallgesellschaft (MG) sold a huge volume of 5- to 10-year heating oil and gasoline fixed-price supply contracts to its customers at six to eight cents above market prices. It hedged its exposure with long positions in short-dated futures contracts that were rolled forward. As it turned out, the price of oil fell and there were margin calls on the futures positions. MG's trading was made more difficult by the fact that its trades were very large and were anticipated by others.

Considerable short-term cash flow pressures were placed on MG. The members of MG who devised the hedging strategy argued that these short-term cash outflows were offset by positive cash flows that would ultimately be realized on the long-term fixed-price contracts. However, the company's senior management and its bankers became concerned about the huge cash drain. As a result, the company closed out all the hedge positions and agreed with its customers that the fixed-price contracts would be abandoned. The outcome was a loss to MG of 1.33 billion.

# 21.2.3 Regulation

As will be explained in Chapter 26, as part of the Basel III, bank regulators have introduced two liquidity risk requirements: the liquidity coverage ratio (LCR) and the net stable funding ratio (NSFR).

The LCR requirement is

$$

\frac{\text{High - quality liquid assets}}{\text{Net cash outflows in a 30 - day period}}\geq 100\%

$$

The 30-day period considered in the calculation of LCR is one of acute stress involving a downgrade of three notches (e.g., from  $\mathrm{AA}+$  to  $\mathrm{A}+$ ), a partial loss of deposits, a complete loss of wholesale funding, increased haircuts on secured funding, and drawdowns on lines of credit.

The NSFR requirement is

$$

\frac{\text{Amount of stable funding}}{\text{Required amount of stable funding}}\geq 100\%

$$

The numerator is calculated by multiplying each category of funding (capital, wholesale deposits, retail deposits, etc.) by an available stable funding (ASF) factor, reflecting their stability (see Table 26.4). The denominator is calculated from the assets and off-balance-sheet items requiring funding. Each category of these is multiplied by a required stable funding (RSF) factor to reflect the permanence of the funding (see Table 26.5).


Bank regulators have issued the following principles for the management of liquidity risk.

1. A bank is responsible for the sound management of liquidity risk. A bank should establish a robust liquidity risk management framework that ensures it maintains sufficient liquidity, including a cushion of unencumbered, high-quality liquid assets, to withstand a range of stress events, including those involving the loss or impairment of both unsecured and secured funding sources. Supervisors should assess the adequacy of both a bank's liquidity risk management framework and its liquidity position and should take prompt action if a bank is deficient in either area in order to protect depositors and to limit potential damage to the financial system.

2. A bank should clearly articulate a liquidity risk tolerance that is appropriate for its business strategy and its role in the financial system.

3. Senior management should develop a strategy, policies, and practices to manage liquidity risk in accordance with the risk tolerance and to ensure that the bank maintains sufficient liquidity. Senior management should continuously review information on the bank's liquidity developments and report to the board of directors on a regular basis. A bank's board of directors should review and approve the strategy, policies, and practices related to the management of liquidity at least annually and ensure that senior management manages liquidity risk effectively.

4. A bank should incorporate liquidity costs, benefits, and risks in the internal pricing, performance measurement, and new product approval process for all significant business activities (both on- and off-balance-sheet), thereby aligning the risk-taking incentives of individual business lines with the liquidity risk exposures their activities create for the bank as a whole.

5. A bank should have a sound process for identifying, measuring, monitoring, and controlling liquidity risk. This process should include a robust framework for comprehensively projecting cash flows arising from assets, liabilities, and off-balance-sheet items over an appropriate set of time horizons.

6. A bank should actively monitor and control liquidity risk exposures and funding needs within and across legal entities, business lines, and currencies, taking into account legal, regulatory, and operational limitations to the transferability of liquidity.

7. A bank should establish a funding strategy that provides effective diversification in the sources and tenor of funding. It should maintain an ongoing presence in its chosen funding markets and strong relationships with funds providers to promote effective diversification of funding sources. A bank should regularly gauge its capacity to raise funds quickly from each source. It should identify the main factors that affect its ability to raise funds and monitor those factors closely to ensure that estimates of fund-raising capacity remain valid.


8. A bank should actively manage its intraday liquidity positions and risks to meet payment and settlement obligations on a timely basis under both normal and stressed conditions and thus contribute to the smooth functioning of payment and settlement systems.
9. A bank should actively manage its collateral positions, differentiating between encumbered and unencumbered assets. A bank should monitor the legal entity and physical location where collateral is held and how it may be mobilized in a timely manner.
10. A bank should conduct stress tests on a regular basis for a variety of short-term and protracted institution-specific and market-wide stress scenarios (individually and in combination) to identify sources of potential liquidity strain and to ensure that current exposures remain in accordance with a bank's established liquidity risk tolerance. A bank should use stress test outcomes to adjust its liquidity risk management strategies, policies, and positions and to develop effective contingency plans.
11. A bank should have a formal contingency funding plan (CFP) that clearly sets out the strategies for addressing liquidity shortfalls in emergency situations. A CFP should outline policies to manage a range of stress environments, establish clear lines of responsibility, include clear invocation and escalation procedures, and be regularly tested and updated to ensure that it is operationally robust.
12. A bank should maintain a cushion of unencumbered, high-quality liquid assets to be held as insurance against a range of liquidity stress scenarios, including those that involve the loss or impairment of unsecured and typically available secured funding sources. There should be no legal, regulatory, or operational impediment to using these assets to obtain funding.
13. A bank should publicly disclose information on a regular basis that enables market participants to make an informed judgment about the soundness of its liquidity risk management framework and liquidity position.

Recommendations for banks supervisors are:

14. Supervisors should regularly perform a comprehensive assessment of a bank's overall liquidity risk management framework and liquidity position to determine whether they deliver an adequate level of resilience to liquidity stress given the bank's role in the financial system.
15. Supervisors should supplement their regular assessments of a bank's liquidity risk management framework and liquidity position by monitoring a combination of internal reports, prudential reports, and market information.
16. Supervisors should intervene to require effective and timely remedial action by a bank to address deficiencies in its liquidity risk management processes or liquidity position.

17. Supervisors should communicate with other supervisors and public authorities, such as central banks, both within and across national borders, to facilitate effective cooperation regarding the supervision and oversight of liquidity risk management. Communication should occur regularly during normal times, with the nature and frequency of the information sharing increasing as appropriate during times of stress.

# 21.3 Liquidity Black Holes

It is sometimes argued that technological and other developments have led to an improvement in the liquidity of financial markets. This is questionable. It is true that bid-ask spreads have on average declined. But there has also been an increasing tendency for situations to develop where almost everyone wants to do the same type of trade at the same time. The result has been that what are referred to as "liquidity black holes" occur with increasing frequency.[6] A liquidity black hole describes a situation where liquidity has dried up in a particular market because everyone wants to sell and no one wants to buy. It is sometimes also referred to as a "crowded exit."[7]

In a well-functioning market, the market may change its opinion about the price of an asset because of new information. However, the price does not overreact. If a price decrease is too great, traders will quickly move in and buy the asset and a new equilibrium price will be established. A liquidity black hole is created when a price decline causes more market participants to want to sell, driving prices well below where they will eventually settle. During the sell-off, liquidity dries up and the asset can be sold only at a fire-sale price.[8]

# 21.3.1 Positive and Negative Feedback Traders

Changes in the liquidity of financial markets are driven by the behavior of traders. There are two sorts of traders in the market: negative feedback traders and positive feedback traders. Negative feedback traders buy when prices fall and sell when prices rise; positive feedback traders sell when prices fall and buy when prices rise.

In liquid markets, negative feedback traders dominate the trading. If the price of an asset gets unreasonably low, traders will move in and buy. This creates demand for the asset that restores the price to a more reasonable level. Similarly, if the price of an asset gets unreasonably high, traders will sell. This creates supply of the asset that also restores the price to a more reasonable level. The result is that the market is liquid with reasonable prices and a good balance of buyers and sellers.


When positive feedback traders dominate the trading, market prices are liable to be unstable and the market may become one-sided and illiquid. A reduction in the price of an asset causes traders to sell. This results in prices falling further and more selling. An increase in the price of an asset causes traders to buy. This results in the price of the asset increasing further and more buying.

There are a number of reasons why positive feedback trading exists. For example:

1. Trend trading. Trend traders attempt to identify trends in an asset price. They buy when the asset price appears to be trending up and sell when it appears to be trending down. A related strategy is breakout trading, which involves trading when an asset's price moves outside an established range. For example, if a stock has been trading in the range of $25 to $30 for the last six months, traders might be inclined to buy it as soon as it moves above \$30 and sell it as soon as it moves below \$25.
2. Stop-loss rules. Traders often have rules to limit their losses. When the price of an asset that is owned falls below a certain level, they automatically sell to limit their losses. These rules are known as "stop-loss" rules and are a source of positive feedback trading that is always present in the market.
3. Dynamic hedging. Chapter 15 explains how options traders maintain a delta-neutral position using dynamic hedging. In particular, Tables 15.2 and 15.3 show how a trader would hedge a short position in an option over a 20-week period. Hedging a short option position (call or put) involves buying after a price rise and selling after a price decline. This is positive feedback trading that has the potential to reduce liquidity. (By contrast, dynamically hedging a long position in a call or put option involves selling after a price rise and buying after a price decline. This is negative feedback trading and should not interfere with market liquidity.) Any situation where banks have a large short option position has the potential to destabilize the market and cause illiquidity. As discussed in Business Snapshot 3.1, at one point banks sold a huge volume of options on long-term interest rates to British insurance companies. As the banks hedged their risks, the behavior of long-term interest rates in the UK was dramatically affected.
4. Creating options synthetically. Hedging a short position in an option is equivalent to creating a long position in the same option synthetically. It follows that a financial institution can create a long option position synthetically by doing the same sort of trading as it would do if it were hedging a short option position. This leads to positive feedback trading that can cause market instability and illiquidity. The classic example here is the stock market crash of October 1987. In the period leading up to the crash, the stock market had done very well. Increasing numbers of portfolio managers were using commercially available programs to synthetically create put options on their portfolios. These programs told them to sell part of their portfolio immediately after a price decline and buy it back immediately after a price increase. The result, as indicated in Business Snapshot 21.4, was a liquidity black hole where prices plunged on October 19, 1987. In this case, the liquidity black hole was relatively short-lived. Within four months the market recovered to close to its pre-crash level.

# BUSINESS SNAPSHOT 21.4

# The Crash of 1987

On Monday, October 19, 1987, the Dow Jones Industrial Average dropped by more than  $20\%$ . Portfolio insurance played a major role in this crash. In October 1987, portfolios involving over 60 billion of equity assets were being managed with trading rules that were designed to synthetically create put options on the portfolios. These trading rules involved selling equities (or selling index futures) when the market declined and buying equities (or buying equity futures) when the market rose.

During the period Wednesday, October 14, 1987, to Friday, October 16, 1987, the market declined by about  $10\%$ , with much of this decline taking place on Friday afternoon. The portfolio insurance rules should have generated at least \$12 billion of equity or index futures sales as a result of this decline. In fact, portfolio insurers had time to sell only \$4 billion and they approached the following week with huge amounts of selling already dictated by their models. It is estimated that on Monday, October 19, sell programs by three portfolio insurers accounted for almost  $10\%$  of the sales on the New York Stock Exchange, and that portfolio insurance sales amounted to  $21.3\%$  of all sales in index futures markets. It is likely that the decline in equity prices was exacerbated by investors other than portfolio insurers selling heavily because they anticipated the actions of portfolio insurers.

Because the market declined so fast and the stock exchange systems were overloaded, many portfolio insurers were unable to execute the trades generated by their models and failed to obtain the protection they required. Needless to say, the popularity of portfolio insurance schemes has declined significantly since 1987. One of the lessons from this story is that it is dangerous to follow a particular trading strategy—even a hedging strategy—when many other market participants are doing the same thing. To quote from a report on the crash, "Liquidity sufficient to absorb the limited selling demands of investors became an illusion of liquidity by massive selling, as everyone showed up on the same side of the market at once. Ironically, it was this illusion of liquidity which led certain similarly motivated investors, such as portfolio insurers, to adopt strategies which call for liquidity far in excess of what the market could supply."

5. Margins. A big movement in market variables, particularly for traders who are highly leveraged, may lead to margin calls that cannot be met. This forces traders to close out their positions, which reinforces the underlying move in the market variables. It is likely that volatility increases. This may exacerbate the situation because it leads to exchanges increasing their margin requirements.

6. Predatory trading. This was mentioned in Section 21.1. If traders know that an investor must sell large quantities of a certain asset, they know that the price of the asset is likely to decrease. They therefore short the asset. This reinforces the price decline and results in the price falling even further than it would otherwise do. To avoid predatory trading, large positions must usually be unwound slowly.

7. LTCM. The failure of the hedge fund Long-Term Capital Management (LTCM), as outlined in Business Snapshot 16.1, provides an example of positive feedback trading. One type of LTCM's trade was "relative value fixed income." LTCM would take a short position in a liquid bond and a long position in a similar illiquid bond, and wait for the prices to move close together. After the Russian default in 1998, the prices of illiquid instruments declined relative to similar liquid instruments. LTCM (and other companies that were following similar strategies to LTCM) were highly leveraged and unable to meet margin calls. They were forced to close out their positions. This involved buying the liquid bonds and selling the illiquid bonds. This reinforced the flight to quality and made the prices of illiquid and liquid bonds diverge even further.

# 21.3.2 Leveraging and Deleveraging

A phenomenon in the market is leveraging and deleveraging. This is illustrated in Figures 21.2 and 21.3. When banks are awash with liquidity (e.g., because they have developed ways of securitizing assets or because deposit levels are higher than usual), they make credit easily available to businesses, investors, and consumers. Credit spreads decrease. The easy availability of credit increases demand for both financial and nonfinancial assets and the prices of these assets rise. Assets are often pledged as collateral for the loans that are used to finance them. When the prices of the assets rise, the collateral underlying loans (when measured at market prices) is greater and borrowing can increase further. This leads to further asset purchases and a repeat of the cycle. This cycle is referred to as "leveraging" because it leads to more borrowing throughout the economy.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/6cede3611d418d1521c61ebd125d82adb7800640a57176a3e986371c89530949.jpg)
Figure 21.2 Leveraging

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/a859804bd0e6096c29bdb2e414838b6d817268d36835c1c97ebee78fdb83440d.jpg)
Figure 21.3 Deleveraging

Deleveraging is the opposite process to leveraging. Banks find themselves less liquid for some reason (e.g., because there is less demand for the products of securitization). They become more reluctant to lend money. Credit spreads increase. There is less demand for both nonfinancial and financial assets and their prices decrease. The value of the collateral supporting loans decreases and banks reduce lines of credit. This leads to asset sales being necessary and a further reduction in asset prices.

The period leading up to 2007 was characterized by leveraging for many of the world's economies. Credit spreads declined and it was relatively easy to borrow money for a wide range of different purposes. From the middle of 2007 onward, the situation changed and the deleveraging process shown in Figure 21.3 started. Credit spreads increased, it became much less easy to borrow money, and asset prices decreased.

Hedge funds are particularly affected by the leveraging-deleveraging cycle. Consider a hedge fund that is able to borrow 20 times its equity during the pre-2007 period. Soon after the middle of 2007, the hedge fund might get a call from its prime broker telling it to reduce leverage to, say, five times equity. It can only do this by selling assets. Asset prices decrease as a result of what this hedge fund, and other hedge funds, are doing. The hedge fund's equity declines and further sales are necessary.

# 21.3.3 Irrational Exuberance

The term "irrational exuberance" was used by Alan Greenspan, Federal Reserve Board chairman, in a speech in December 1996 when, in reference to the stock market, he asked, "How do we know when irrational exuberance has unduly escalated asset values?" (The phrase has been remembered because the speech was followed by declines in stock prices worldwide.) Most liquidity black holes can be traced to irrational exuberance of one sort or another. What happens is that traders working for many different financial institutions become irrationally exuberant about a particular asset class or a particular market variable. The balance sheets of financial institutions then become overextended through the accumulation of exposure to this asset class or market variable. Often the process is self-reinforcing. When many financial institutions choose to take a particular position, prices increase, making the position look profitable. This creates extra desire on the part of financial institutions to take the position and yet more profits. Risk managers working for the financial institution should (and probably will) complain about the risks being taken, but in many instances senior management are likely to ignore their concerns because high profits are being made. To quote Chuck Prince, ex-CEO of Citigroup, on July 10, 2007: "When the music stops, in terms of liquidity, things will be complicated. But as long as the music is playing, you've got to get up and dance. We're still dancing."


At some stage the bubble must burst. Many traders then try to get out of their positions at the same time, causing illiquid markets and huge losses. Volatility increases and the risk management procedures used within the financial institution (e.g., the calculation of market VaR from historical data) can cause many financial institutions to try to unwind a wide range of risky positions at the same time. This can lead to further losses and more serious illiquidity problems. There may be failures (or rumors of failures) by some banks. Most banks are likely to experience liquidity funding problems and as a result lending may be curtailed.

The classic example of what has been described above is the Global Financial Crisis. Other examples are the 1987 stock market crash, the 1994 bond market crash, the 1997-1998 Asian monetary crisis, and the 1998 Long-Term Capital Management failure. Irrational exuberance is part of human nature and to some extent is inevitable. As discussed in Chapter 7, it is exacerbated by the way traders are paid. A large part of the compensation comes from a bonus at year-end, which depends on performance during the year. A trader may be savvy enough to know that a market is irrationally exuberant and that there will be a correction. However, if there is a good chance that the correction will be delayed until next year, the trader is motivated to continue building up his or her position to maximize short-term compensation.

# 21.3.4 The Impact of Regulation

Regulators try to ensure that banks throughout the world are regulated in the same way. However, a uniform regulatory environment comes with costs. All banks tend to respond in the same way to external events. Consider for example market risk. When volatilities and correlations increase, market risk VaR and the capital required for market risks increase. Banks then take steps to reduce their exposures. Since banks often have similar positions to each other, they try to do similar trades. A liquidity black hole can develop.

There is a similar issue as far as credit risk is concerned. During the low point of the economic cycle, default probabilities are relatively high and capital requirements for loans tend to be high. As a result, banks may be less willing to make loans, creating problems for small and medium-sized businesses. During the high point of the business cycle, default probabilities are relatively low and banks may be too willing to grant credit. (This is similar to the phenomenon described in Figures 21.2 and 21.3.) One way regulators have dealt with this problem is by using an average of the probability of default through the economic or credit cycle, rather than an estimate applicable to one particular point in time.


Should other financial institutions such as life insurance companies and pension funds be regulated in the same way as banks? It is tempting to answer "yes" so that one financial institution is not given an advantage over others. But the answer should be "no." These financial institutions have longer time horizons than banks. They should not be penalized for investing in illiquid assets. Also, they should not be required to adjust their portfolios when volatilities and correlations increase. These parameters tend to be mean reverting and so they eventually decrease again.

# 21.3.5 The Importance of Diversity

Models in economics sometimes assume that market participants act independently of each other. We have argued that this is often not the case. It is this lack of independence that causes liquidity black holes. Traders working for financial institutions tend to want to do the same trades at the same time. To solve the problem of liquidity black holes, we need more diversity in financial markets. One way of creating diversity is to recognize that different types of financial institutions have different types of risks and should be regulated differently.

Hedge funds have become important market participants. They are much less regulated than banks or insurance companies and can follow any trading strategy they like. To some extent they do add diversity (and therefore liquidity) to the market. But, as mentioned earlier, hedge funds tend to be highly leveraged. When liquidity tightens as it did in the second half of 2007, all hedge funds have to unwind positions accentuating the liquidity problems.

One conclusion from the arguments we have put forward is that a contrarian investment strategy has some merit. If markets overreact for the reasons we have mentioned, an investor can do quite well by buying when everyone else is selling and there is very little liquidity. However, it can be quite difficult for a financial institution to follow such a strategy if it is subject to short-term VaR-based risk management.

# Summary

There are two types of liquidity risk: liquidity trading risk and liquidity funding risk. Liquidity trading risk is concerned with the ease with which positions in the trading book can be unwound. The liquidity trading risk of an asset depends on the nature of the asset, how much of the asset is to be traded, how quickly it is to be traded, and the economic environment. The credit crisis of 2007 emphasizes the importance of transparency. Assets that are not well defined or well understood are unlikely to trade in a liquid market for long. The liquidity of an asset at a particular time can be measured as the cash bid-ask spread or as the proportional bid-ask spread. The latter is the difference between the bid and ask price divided by the average of the bid and ask price. The cost of unwinding a position in the asset is half of the bid-ask spread. Financial institutions should monitor the cost of unwinding the whole trading book in both normal market conditions and stressed market conditions.


A trader, when faced with the problem of unwinding a large position in an asset, has a trade-off between the bid-ask spread and market risk. Unwinding quickly leads to high bid-ask spreads, but low market risk. Unwinding slowly leads to lower bid-ask spreads, but more market risk. The optimal trading strategy depends on (a) the bid-ask spread as a function of the quantity traded in a day and (b) the probability distribution for daily changes in the asset price. For any particular unwind strategy, the trader can choose a confidence level and calculate the unwind cost that will not be exceeded with the confidence level. The unwind strategy that minimizes this cost can then be determined.

Liquidity funding risk management is concerned with being able to meet cash needs as they arise. It is important for a financial institution to forecast its cash needs in both normal market conditions and stressed market conditions to ensure that they can be met with almost total certainty. Cash needs depend on depositor withdrawals, drawdowns on lines of credit, guarantees that have been made, defaults by counterparties, and so on. Sources of cash are instruments that can be readily converted into cash, borrowings in the wholesale market, asset securitizations, new depositors, cash itself, and (as a last resort) borrowings from a central bank. In June 2008, bank regulators issued a list of 17 principles describing how banks should manage their liquidity and indicated that they would be monitoring the liquidity management procedures of banks more carefully in the future.

The most serious liquidity risks arise from what are sometimes termed liquidity black holes. These occur when all traders want to be on the same side of the market at the same time. This may be because they have similar positions and manage risks in similar ways. It may also be because they become irrationally exuberant, overexposing themselves to particular risks. What is needed is more diversity in the trading strategies followed by market participants. Traders who have long-term objectives should avoid allowing themselves to be influenced by the short-term overreaction of markets.

# Further Reading

Almgren, R., and N. Chriss. "Optimal Execution of Portfolio Transactions." Journal of Risk 3 (Winter 2001): 5-39.
Bangia, A., F. Diebold, T. Schuermann, and J. Stroughair. "Liquidity on the Outside." Risk 12 (June 1999): 68-73.
Bank for International Settlements. "Liquidity Risk Management and Supervisory Challenges," February 2008.

Bank for International Settlements. "Principles for Sound Liquidity Risk Management and Supervision," September 2008.
Brunnermeier, M. K., and L. H. Pedersen. "Market Liquidity and Funding Liquidity." Review of Financial Studies 22, no. 6 (2009): 2201-2238.
Brunnermeier, M. K., and L. H. Pedersen. "Predatory Trading." Journal of Finance 60, no. 4 (2005): 1825-1863.
Clunie, J. Predatory Trading and Crowded Exits: New Thinking on Market Volatility. Petersfield, UK: Harriman House, 2010.
Persaud, A. D., ed. Liquidity Black Holes: Understanding, Quantifying and Managing Financial Liquidity Risk. London: Risk Books, 1999.

# Practice Questions and Problems (Answers at End of Book)

21.1 What was the transparency problem in the subprime crisis of 2007?
21.2 An asset is quoted bid 50, ask 55. What does this mean? What is the proportional bid-ask spread?
 21.3 Suppose that an investor has shorted shares worth \$5,000 of Company A and bought shares worth \$3,000 of Company B. The proportional bid-ask spread for Company A is 0.01 and the proportional bid-ask spread for Company B is 0.02. What does it cost the investor to unwind the portfolio?
21.4 Suppose that in Problem 21.3 the bid-ask spreads for the two companies are normally distributed. For Company A the bid-ask spread has a mean of 0.01 and a standard deviation of 0.01. For Company B the bid-ask spread has a mean of 0.02 and a standard deviation of 0.03. What is the cost of unwinding that the investor is  $95\%$  confident will not be exceeded?
21.5 A trader wishes to unwind a position of 60 million units in an asset over 10 days. The cash bid-ask spread as a function of daily trading volume,  $q$ , is  $a + be^{cq}$  where  $a = 0.2$ ,  $b = 0.1$ , and  $c = 0.08$  and  $q$  is measured in millions. The standard deviation of the price change per day is 0.1. What is the optimal strategy that minimizes the 95\% confidence level for the costs?
21.6 Explain the difference between the liquidity coverage ratio (LCR) and the net stable funding ratio (NSFR).
21.7 Why is it risky to rely on wholesale deposits for funding?
21.8 What was the nature of the funding risk problems of Ashanti Goldfields and Metallgesellschaft?
21.9 What is meant by (a) positive feedback trading and (b) negative feedback trading? Which is liable to lead to liquidity problems?
21.10 What is meant by liquidity-adjusted VaR?
21.11 Explain how liquidity black holes occur. How can regulation lead to liquidity black holes?
21.12 Why is it beneficial to the liquidity of markets for traders to follow diverse trading strategies?

# Further Questions

21.13 Discuss whether hedge funds are good or bad for the liquidity of markets.

21.14 Suppose that a trader has bought some illiquid shares. In particular, the trader has 100 shares of A, which is bid \$50 and ask \$60, and 200 shares of B, which is bid \$25 and ask \$35. What are the proportional bid-ask spreads? What is the impact of the high bid-ask spreads on the amount it would cost the trader to unwind the portfolio? If the bid-ask spreads are normally distributed with mean \$10 and standard deviation \$3, what is the 99\% worst-case cost of unwinding in the future as a percentage of the value of the portfolio?

21.15 A trader wishes to unwind a position of 200,000 units in an asset over eight days. The cash bid-ask spread, as a function of daily trading volume q, is a + be^cq where a = 0.2, b = 0.15, and c = 0.1 and q is measured in thousands. The standard deviation of the price change per day is 1.50. What is the optimal trading strategy for minimizing the 99\% confidence level for the costs? What is the average time the trader waits before selling? How does this average time change as the confidence level changes?

