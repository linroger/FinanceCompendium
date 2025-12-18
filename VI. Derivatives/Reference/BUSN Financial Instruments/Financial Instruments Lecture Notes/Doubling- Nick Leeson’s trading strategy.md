---
parent_directory:
title: "Doubling: Nick Leeson's trading strategy"
tags:
aliases:
parent_folder: Lecture Notes
subfolder:
key_concepts:
cssclasses: academia
linter-yaml-title-alias: "Doubling: Nick Leeson's trading strategy"
---

# Doubling: Nick Leeson's trading strategy

Stephen J. Brown<sup>a</sup>, Onno W. Steenbeek<sup>b, *</sup>

$^{a}$  Stern School of Business, New York University, New York, NY 10012-1126, USA

$^{b}$  Department of Finance, Erasmus University, Rotterdam, Netherlands

# Abstract

This paper examines the trading strategy attributed to Mr. Nicholas Leeson, who was the chief derivatives trader of Barings bank in Singapore. His activities were the main cause of the eventual collapse of Barings bank. Daily information is available for the full period Leeson was active in Singapore, from January 1992 until 1995, for all relevant products. The information includes daily volume, open interest, opening, closing, highest and lowest price. The empirical evidence suggests that Leeson followed a doubling strategy: he continuously doubled his position as prices were falling. © 2001 Elsevier Science B.V. All rights reserved.

JEL classification: G13; G28

Keywords: Nick Leeson; Doubling; Barings bank

# 1. Introduction

This paper examines the trading strategy attributed to Mr. Nicholas Leeson, who was the chief derivatives trader of Barings bank in Singapore. His activities were the main cause of the eventual collapse of Barings bank. The evidence suggests that Leeson followed a doubling strategy: he continuously doubled his position as prices were falling.

Leeson's trading activities mainly involved three futures markets: futures on the Japanese Nikkei 225 stock index, futures on 10-year Japanese Government bonds (JGB futures) and Euroyen futures. These products are all traded simultaneously and in similar design on SIMEX and on a Japanese exchange. Leeson's main assignment was to arbitrage between SIMEX and the exchanges in Japan and try

to capitalize on small price differences between the futures contracts. In reality, however, he was taking massive speculative positions, financing SIMEX' margin requirements by selling options and borrowing huge amounts of money from Barings' head office in London. By the end of February 1995, the losses had become too large and Barings bank went bankrupt.

Our interest in Mr. Leeson comes from the fact that doubling strategies are potentially dangerous from a systemic point of view. An important attribute of doubling strategies is that the inevitable and devastating loss is preceded by a period of high returns with low volatility. Conditional on the bad event not having happened (yet), the doubler's investment performance appears to indicate significant investment skill. The doubler may then become too big to fail, both from the perspective of the investment firm and from the market regulators,[1] so that the inevitable failure can have catastrophic effects, both for the firm and for the market. Among other things, this has important consequences for the effectiveness of Value at Risk-controls. Being able to track and take out these traders sooner would limit possible systemic risks.

Our empirical study follows two paths. First, we examine the raw daily data provided by the exchanges to see whether a doubler may have been active during the period when Leeson was active. Second, we look at the actual data on Leeson's activities during the final weeks of his career, in order to find out whether Leeson indeed followed a doubling strategy. Based on the analysis of the raw data, we conclude that someone, probably Leeson, did indeed follow a doubling strategy in these markets. This impression is confirmed when we study his trading immediately prior to the failure of Barings. Leeson clearly expanded his exposure substantially when prices fell, while selling off some of his gains when price rose.

This paper is structured as follows. Section 2 elaborates on the authorized and unauthorized trading activities, which led to the collapse of Barings. Section 3 focuses on the issue of doubling in general. Section 4 discusses previous literature on the relationship between volume and returns. Section 5 presents the data and the methodology, followed by our empirical results in Section 6. Finally, Section 7 concludes.

# 2. The Barings collapse

# 2.1. Background

On July 1, 1992, Barings Futures Singapore (BFS) started trading on the Singapore International Monetary Exchange (SIMEX). Mr. Nicholas Leeson was

put in charge of operations for BFS, with responsibilities both for trading and the accounting and settlements activities. It was believed to be unnecessary to segregate these functions, because Leeson and his staff would merely execute orders placed by other Baring Group companies on behalf of their external clients (SR3.1, 5.15).<sup>2</sup> Later in 1992, this situation gradually changed because many Japanese institutional investors had set up their own execution capability in Singapore. As a result, the external client business of Baring Securities Japan (BSJ) became less viable (Hogan, 1999). To compensate for the loss in this line of business, BSJ commenced proprietary trading on behalf of the Barings group. One of the primary trading strategies they implemented was arbitraging baskets of stocks in the Japanese cash market against Nikkei futures (SR2.10). Initially, these transactions were executed between the Tokyo Stock Exchange (TSE) and the Osaka Securities Exchange (OSE), which was the main market for Nikkei futures. However, after the OSE had implemented tighter restrictions, trading on SIMEX became easier and cheaper. As a result, BSJ traders asked Leeson to execute Nikkei futures trades on SIMEX (SR2.11). The trading volume handled by Leeson gradually increased over time and by early 1993, Leeson was involved in executing proprietary trades as well as trades for the external clients of the Barings Group (SR2.13).

As a result of these developments, a new business opportunity arose, in which Leeson would play a major role, i.e. arbitrage trading of the Nikkei futures contract between SIMEX and the OSE. Apparently, large price differences existed between the two contracts that were very similar in design. The profits from exploiting such price differences between exchanges are small, and therefore, trading volumes tend to be large. Still, the risks are low, because every long position on one exchange is offset by a short position on the other. In addition to arbitrage trading, Leeson developed an even more lucrative activity, namely 'switching'. As Barings was able to trade in Japan as well as in Singapore, it could select the cheapest market to execute a client's order. For example, it could tell a client it would buy 1000 Nikkei futures contracts in Osaka, while in reality, it made the purchase on SIMEX, where at that moment, the price was lower. Barings would charge the client the price quoted on the OSE or slightly better, which was still worse than the price in Singapore. The difference meant extra profit for Barings (SR3.9). This selection of the more profitable location of the two to do business was referred to as 'switching'.

The end result of all these activities was that the Structured Products Group, which includes Leeson's activities, showed an operating profit over 1994, which was five times what had been planned for that year. Nobody within Barings questioned these impressive figures from a business that should be virtually

riskless. In particular in the Nikkei futures market, headquarters believed it occupied a niche, because Barings were members of both the OSE and SIMEX and had developed the business, clientele and reputation to deal in and between those markets (BoE, §3.58-3.60). Chairman Peter Baring concluded that "it is not actually terribly difficult to make money in the securities business" (Leeson, 1996, p. 56). Specifically commenting on Barings' main profit center, Leeson's direct boss in London, Michael Killian, said in February 1995: "That guy is a turbo arbitrageur!" (BoE, §3.63).

# 2.2. Unauthorized trading

On July 3, 1992, only two days after Barings was granted membership by SIMEX, Leeson opened Account 88888, and that same day, the first transaction was booked in this account (SR3.13). On BFS's system, this account was described as an error account. It is common for traders to set up such an account for the purpose of netting minor trading mistakes. The net position should be closed each day and the net value of gains and losses incurred in negating the position should be recorded as part of the unit's daily profit (Leeson, 1996, pp. 38-39). However, already during the first month of its existence, a large number of transactions were booked in Account 88888, which shows according to the Singapore Report (SR3.13) that it could never have been intended to serve solely as an error account. As a matter of fact, Leeson gave specific instructions around July 8, 1992, to change the software to exclude Account 88888 from all market activity reports, and the information was only used for the estimation of SIMEX's margins. In other words, the steps taken by Leeson in the first days of responsibility for activities of BFS, were to ensure that his actions would not be transparent (Hogan, 1999).

During 1993, the main focus of Leeson's unauthorized speculative positions in Account 88888 was the generation of profits in the ordinary trading accounts of BSL and BSJ for their clients or proprietary traders. This enabled Leeson to gain a reputation as a star trader on SIMEX and enhanced his intrafirm executive standing. However, by the end of 1993, the cumulative losses in Account 88888 were over ¥4 billion (about US\$35.8 million), which made the situation much more complex. Leeson's main problem became the management of the flow of funds to support the margin calls from SIMEX.

An important way to arrange the funding was by manipulating the trading and accounting records. This was done in a number of ways. First, most transactions booked in Account 88888 were initially booked in the accounts of BSJ and BSL. If these positions had been correctly reported to BSJ or BSL, it would have been clear that risk limits had been exceeded, since such transactions were not hedged. However, Leeson would execute offsetting trades about 30 seconds before market close to place transactions from BSL or BSJ accounts into Account 88888. With these so-called "transfer trades", Leeson avoided disclosure of unhedged positions

in the reports to BSJ and BSL (SR3.21). The prices of these transfer trades were later adjusted to favor BSL or BSJ, at the expense of Account 88888, in order to confirm his reputation as an exceptional trader. This would often require complicated alterations between different sets of records (SR3.24). A second way to manipulate the records was to record fictitious trades between the accounts of BSL and BSJ and Account 88888 in the BFS daily list of transactions, when no transfer trades had been executed. The effect was that unhedged positions were transferred from the BSJ or BSL accounts to Account 88888, so that no unhedged positions were reported at the end of the day (SR3.31). Finally, Leeson often instructed his settlements staff to record fictitious trades in the accounting system. These fictitious trades were reversed at the opening of the market on the following day. The purpose was to reduce end-of-day open positions in Nikkei and JGB futures, in BFS's accounting records, and consequently, in the SIMEX computer system. This practice effectively reduced margin calls from SIMEX (SR3.37). Fig. 1 shows an example of the effect of recording fictitious trades on margin calls.

Despite the manipulations of the books, the funds needed for SIMEX's margin calls steadily increased. Leeson used a number of methods to convince BSL management of the necessity to transfer large sums of money to Singapore. First, he explained that the profits from individual arbitrage transactions are small, and therefore, trading volumes should be large. Since both exchanges involved in the transaction require separate margins to be deposited, large amounts of money are needed. Second, Leeson claimed that SIMEX demanded so-called "advance margin calls" (SR3.42). Supposedly, these advance margin calls were intra-day margin requirements imposed by SIMEX as a result of volatility in the trading prices of the relevant contracts (SR3.43). Leeson convinced BSL that it was difficult to obtain same-day payment from the ultimate client due to differences in time zones. Therefore, BSL had to finance these requirements. In addition to the funds transferred from London, Leeson sold options on the Nikkei index through Account 88888 from the start of 1993. From January 1994, the position in Nikkei options increased significantly when Leeson set up a large series of short straddle positions.<sup>3</sup>

# 2.3. Positions in February 1995

The largest part of Barings' losses came from a massive long position in Nikkei futures. Until October 1993, Leeson's losses were always recovered. After that, losses increased gradually, but accelerated in the final 2 months leading up to the collapse of Barings. During that final stage, Leeson expanded his long position in Nikkei futures to  $49\%$  of the open interest in the March 1995 contract and  $24\%$  in the June 1995 contract (BoE, §4.25). The total monthly trading volume through

<table><tr><td colspan="3">a. Without entry of fictitious trade</td></tr><tr><td colspan="3">Assuming no outstanding contracts had been brought forward –</td></tr><tr><td>Trades executed during the day</td><td>Long</td><td>Short</td></tr><tr><td>Client A</td><td></td><td>30,000</td></tr><tr><td>Account 88888</td><td>27,000</td><td></td></tr><tr><td>Position at the end of the day</td><td>27,000</td><td>30,000</td></tr><tr><td>Gross long position to be reported to SIMEX via Position Change Sheet (PCS)</td><td>27,000</td><td></td></tr><tr><td>On receiving PCS, SIMEX will show the following outstanding position</td><td>27,000</td><td>30,000</td></tr><tr><td colspan="3">Margin deposits required will be calculated as follows: 
Number of gross contracts x margin per contract 
= (27,000 + 30,000) x margin per contract, 
= 57,000 x margin per contract</td></tr><tr><td colspan="3">b. With entry of fictitious trade</td></tr><tr><td colspan="3">Assuming no outstanding contracts had been brought forward –</td></tr><tr><td>Trades executed during the day</td><td>Long</td><td>Short</td></tr><tr><td>Client A</td><td></td><td>30,000</td></tr><tr><td>Account 88888</td><td>27,000</td><td></td></tr><tr><td>Entry of fictitious trade for Account 88888</td><td></td><td>26,000</td></tr><tr><td>Position at the end of the day after the entry of the fictitious trade will be Client A</td><td></td><td>30,000</td></tr><tr><td>Account 88888 (27,000 – 26,000)</td><td>1,000</td><td></td></tr><tr><td></td><td>1,000</td><td>30,000</td></tr><tr><td>Gross long position to be reported to SIMEX via PCS</td><td>1,000</td><td></td></tr><tr><td>On receiving PCS, SIMEX will compute the outstanding short position as follows</td><td></td><td>4000</td></tr><tr><td colspan="3">Margin deposits required will then be calculated as follows: 
= (1,000 + 4,000) x margin per contract 
= 5,000 x margin per contract</td></tr></table>

Source: SR, App. 3H, p.176

Fig. 1. Example illustrating the effect of recording fictitious trades on SIMEX margin calls.

Account 88888 increased from 2051 in July 1992 to a peak of 96,121 in September 1994. In January 1995, the total was 90,000 contracts (SR3.14) or about  $7.5\%$  of total trading volume.

There had been a similar growth in the trading of JGB futures. By November 1994, the volume of JGB futures transacted through Account 88888 represented  $24\%$  of the total volume on SIMEX (SR3.19). The volume of Leeson's unhedged JGB position in the 88888-account also increased, in particular during the 2

months leading up to Barings' collapse. Eventually, his short position was over 28,000 contracts.

Leeson started to trade Euroyen futures through the 88888-account in October 1993, but after that month, his transactions in this market were limited to certain short time intervals only. The eventual loss on these Euroyen positions was 'only' £3 million (BoE, §4.43).

Leeson first sold options on the Nikkei index in October 1992, but his activity in this market really started in the second half of 1993. The value of the option portfolio fluctuated wildly over time, but it had mostly been positive. The highest value was reached by the end of December 1994, when the total value of the options was approximately US \$178 million. Mainly due to the Kobe Earthquake, this reversed to a loss of approximately US\$ 108 million by the end of February 1995 (SR App. 3K, p.179).

Eventually, on February 23, 1995, Barings was not able to meet its margin requirements on SIMEX. The total loss accumulated by Leeson was US\$1.4 billion.

# 3. Doubling

That managers take additional risks to escape from a threatening situation is a well known theme in the field of managerial decision making. For example, Shapira (1997) and Kahneman and Tversky (1986, p. S258) show that people will take greater risks to escape losses than to secure gains. As a consequence, people's behavior tends to change in unexpected and unattractive ways when they are confronted with increasing losses. Thus in finance, where many occupations are high-wire acts, the fear of falling is constantly in the background and sometimes can lure people into disastrous activities. Individuals can become gripped by a frantic panic and may try to conceal these losses, or double up their bets like crazed gamblers trying to pun their way out of their mounting debts. This is the classic gambler's fallacy.

In the case of Leeson, Gapper and Denton (1997) paint a vivid picture of a person who seeks to become the master of the universe, managing to gain a reputation as a star performer. Leeson tried at all cost not to lose that image. When losses were mounting, he followed a strategy of continuously expanding his position. A quote from Leeson (1996) may illustrate our point:

I felt no elation at this success. I was determined to win back the losses. And as the spring wore on, I traded harder and harder, risking more and more. I was well down, but increasingly sure that my doubling up and doubling up would pay off… I redoubled my exposure. The risk was that the market could crumble down, but on this occasion it carried on upwards… As the market soared in July [1993] my position translated from a £6 million loss back into glorious profit.

I was so happy that night I didn't think I'd ever go through that kind of tension again. I'd pulled back a large position simply by holding my nerve… but first thing on Monday morning I found that I had to use the 88888-account again… it became an addiction. (Leeson, 1996, pp. 63-64).

Our interest in doubling comes from the fact that it is potentially harmful to the system. An important attribute of doubling strategies is that the inevitable and devastating loss is preceded by a period of high returns with low volatility. Conditional on the bad event not having happened (yet), the doubler's investment performance appears to indicate significant investment skill. The doubler may then become too big to fail, both from the perspective of the investment firm and from the market regulators, so that the inevitable failure can have catastrophic effects, both for the firm and for the market. Should Leeson's activities have been discovered and stopped 1 month earlier, i.e. by the end of January 1995, the total loss would have been about one quarter of the eventual loss. This could probably have been absorbed by Barings, saving the bank as an independent entity (SR.ES36, p.B-i). Kane and DeTrask (1999, p. 216) suggest that the Barings management may even have known about Leeson's exposures and allowed him to expand his bets as their only chance to avert disaster.

# 4. Return-volume relationships

A doubling strategy implies a relationship between a security's return and its trading volume. This relationship should be asymmetric: in the case of a long (short) position, a price fall (rise) would be followed by a significant volume increase, while a price rise (fall) would not. In addition, a trader following such a strategy may only start doubling his position after the price crosses a certain threshold. This should be distinguished from the information hypothesis that posits a contemporaneous or lagged relation from volume to returns. Under this hypothesis, volume is proxying for the flow of information and changes in investor's expectations (Harris and Raviv, 1993). There has been some study of the asymmetric relationship between volume and return. Karpoff (1988) and Suominen (1996) suggest that in equity markets, the observed positive correlation between volume and returns can be explained by the presence of differential costs in acquiring short and long positions. This asymmetry is not observed in futures markets, since the costs of taking short and long positions in such markets are equal. For example, Kocagil and Shachmurove (1998) calculate the contemporaneous correlation coefficients between the two variables in 16 major US futures markets and find no significant relationship. $^4$

One rationalization for a doubling strategy is that it is a way to exploit market inefficiencies, particularly where large volumes of trading can influence market prices. Indeed, Leeson (1996) defends his actions in these terms. This market inefficiency explanation posits an intertemporal causality relationship running from volume to return.

# 5. Data and methodology

# 5.1.Data

Daily information is available for the full period Leeson was active in Singapore, i.e. from January 1992 until 1995, for all relevant products. The information includes daily volume, open interest, opening, closing, highest and lowest price.

For all SIMEX products, we have tick data as well. The information includes price, type of price (trade, bid or ask) and time to the second. However, the size of individual transactions is not recorded simultaneously in the open-outcry system.

For Nikkei futures and options traded on the OSE, we also have transaction data for the period from July 1, 1994, which is 6 months before the Kobe earthquake, until July 1, 1995, which is 4 months after the bankruptcy of Barings. The information includes time to the minute, price (only trades) and trading volume. However, the Japanese dataset does not include quotes.

A first look at the data reveals that the Nikkei futures market, which is the most important market in our study, is very liquid. Table 1 compares daily average trading value of Nikkei futures during five sub-periods of our sample. Please note that the OSE contract has twice the size of the SIMEX contract.

Information on the trading activities of Nick Leeson were collected from secondary material, in particular from the Singapore Report (Lim and Tan, 1995) and the Bank of England's Board of Banking Supervision (1995).

Table 1  
Nikkei futures: Average daily trading activity  

<table><tr><td rowspan="2"></td><td colspan="2">Number of contracts</td><td colspan="2">Number of transactions</td></tr><tr><td>OSE</td><td>SIMEX</td><td>OSE</td><td>SIMEX</td></tr><tr><td>July–October 1994</td><td>21,567</td><td>20,568</td><td>1362</td><td>1365</td></tr><tr><td>November 1994–earthquake</td><td>24,818</td><td>20,267</td><td>1292</td><td>1081</td></tr><tr><td>Earthquake–bankruptcy</td><td>35,376</td><td>35,421</td><td>1960</td><td>1670</td></tr><tr><td>Bankruptcy–purchase by ING</td><td>29,054</td><td>35,877</td><td>1687</td><td>1649</td></tr><tr><td>Purchase by ING–July 1995</td><td>25,435</td><td>24,878</td><td>1817</td><td>1679</td></tr></table>

# 5.2. Methodology

# 5.2.1. Price effects: Nikkei futures

Leeson gradually became a dominant player on the Nikkei futures market in Singapore and he clearly believed his actions had price impact.5 Therefore, a first test is to see whether his trades actually influenced prices during the months leading up to Barings' collapse. His transactions on SIMEX may have led to structural price differences between the OSE and SIMEX. This also provides us with a direct test of the efficiency of the market.

We directly calculate the mean price difference of the two contracts every 15 minutes of the trading day, provided there is a transaction on both exchanges. The prices are based on the last transaction in a given 15-minute interval. We also test Eq. (2), using the lagged SIMEX price, because purchases by Leeson, which lead to a positive price difference will be followed by arbitrage transactions between the OSE and SIMEX.

$$
\operatorname {D I F F} _ {t} = P _ {t} ^ {\text {O S E}} - P _ {t} ^ {\text {S I M E X}}, \tag {1}
$$

$$
\operatorname {L A G D I F F} _ {t} = P _ {t} ^ {\text {O S E}} - P _ {t - 1} ^ {\text {S I M E X}}, \tag {2}
$$

where  $\mathrm{DIFF} =$  price difference OSE vs. SIMEX; LAGDIFF  $=$  price on OSE vs. lagged price on SIMEX;  $P_{t} =$  last transaction price in interval  $t$ .

For this test we split the sample into five sub-periods.6

<table><tr><td>Period</td><td>Start</td><td>End</td><td></td></tr><tr><td>1</td><td>July 1, 1994</td><td>Oct. 31, 1994</td><td>base period</td></tr><tr><td>2</td><td>Nov. 1, 1994</td><td>Jan. 16, 1995</td><td>heavy trading by Leeson</td></tr><tr><td>3</td><td>Jan. 17, 1995</td><td>Feb. 23, 1995</td><td>between earthquake and Leeson&#x27;s departure</td></tr><tr><td>4</td><td>Feb. 24, 1995</td><td>Mar. 10, 1995</td><td>period of uncertainty until ING takes over all liabilities</td></tr><tr><td>5</td><td>Mar. 11, 1995</td><td>July 1, 1995</td><td>stabilization</td></tr></table>

During period 1, one would not expect a significant price difference, since no major events took place and arbitrage would probably take care of price differentials instantly. In period 2, Leeson purchases massive amounts of futures on

SIMEX, trying to push up prices. His actions may have caused price differentials to be more persistent. During period 3, the market became much more volatile and price differentials may have persisted for a longer period. Leeson stepped up his purchases on SIMEX. Period 4 covers the interval during which SIMEX experienced the largest threat. If traders were concerned about the health of the exchange, one would expect them to be prepared to pay a premium to hold Osaka futures. Ito and Lin (1996) find some evidence for an increased systemic threat during this period. Finally, period 5 would be a period of stabilization, returning to a 'normal' market.

# 5.2.2. Doubling and price-volume relationship

We investigate whether Leeson—or some other trader on SIMEX—was involved in doubling transactions. If the doubling story is correct, we would expect to see an asymmetric response of SIMEX volume to price changes: prices go down, volume increases, with the increase in volume a function of the number of downticks. However, if prices go up, we should not see such a strong relationship. Of course, we only have aggregate data, but if it is true that Leeson was such a significant player, we should see his trades in the aggregate data. We should realize that many studies have shown a relationship between trading activity and volatility, but as noted before, Kocagil and Shachmurove (1998) show such asymmetry does not exist in futures markets. In our sample, however, we do expect to find asymmetry between a falling and a rising market, resulting from Leeson's trading strategy. As indicated above, Leeson's losses would increase with a falling Nikkei index and rising JGB futures prices. Hence, we take the spread between the Nikkei futures return and the JGB futures return on day  $t - 1$  as the explanatory variable for doubling activities on day  $t$ . Formally, we test the following equation for the Nikkei and for the JGB futures market:

$$
\operatorname {v o l u m e} _ {t} = \alpha + \beta \left(\Delta P _ {\text {N i k k e i}, t - 1} - \Delta P _ {\mathrm {J G B}, t - 1}\right) + \varepsilon_ {t} \tag {3}
$$

where  $\mathrm{volume}_t =$  daily trading volume on SIMEX on day  $t$ ,  $\Delta P_{t-1} =$  the logarithmic close-to-close return day  $t-1$ .

For this test, we split the sample into three periods of approximately 75 trading days each. Period 1 covers the interval from July 1, 1994 until October 31, 1994, period 2 from November 1, 1994 until February 23, 1995, and period 3 from February 25, 1995 until June 30, 1995. $^{7}$  The asymmetry is expected to be strongest in period 2. $^{8}$

# 5.2.3. Doubling: Direct tests

As Leeson was betting on rising Japanese share prices and interest rates, we expect the net long Nikkei position and short JGB position to increase as losses increase. Using daily information between January 25 and February 24, 1995 (SR App. 3J, p.178), we relate the build-up of new positions in the 88888-account to the cumulated profit and loss. We test the following equation:

$$
\mathrm {P O S} _ {t} = \alpha + \beta \cdot \mathrm {C U M G} _ {t} + \varepsilon_ {t} \tag {4}
$$

where  $\mathrm{POS}_t =$  net Nikkei and JGB futures position after January 25, 1995, on day  $t$ ,  $\mathrm{CUMG}_t =$  the cumulated gain on day  $t$ .

# 6. Results

From the literature, it appears that Leeson was an active trader in Nikkei futures on SIMEX. Leeson (1996) shows that during certain periods, he was a very active buyer of Nikkei futures on SIMEX (see Fig. 2). His desperate attempts to 'double' himself out of the losses increased in the final months of 1994 and, in particular, the first two months of 1995.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/52be6cc3-4a83-479a-b3d2-962415744c8b/1bb496664619eff417d7db793f2c825b6495a4fa7b1f70ee4fc2d9cccc0d66c6.jpg)  
Fig. 2. Leeson and SIMEX Nikkei futures.

Table 2 Nikkei futures price difference OSE and SIMEX  

<table><tr><td rowspan="2"></td><td rowspan="2">Mean</td><td rowspan="2">Standard deviation</td><td rowspan="2">N</td><td colspan="2">T-test</td></tr><tr><td>t-Value</td><td>p-Value</td></tr><tr><td colspan="6">DIFF</td></tr><tr><td>Total</td><td>-0.3383</td><td>6.654</td><td>56,258</td><td>-12.06</td><td>0.000</td></tr><tr><td>Period 1</td><td>-0.0071</td><td>6.061</td><td>20,438</td><td>-0.17</td><td>0.876</td></tr><tr><td>Period 2</td><td>-0.5391</td><td>5.325</td><td>6567</td><td>-8.20</td><td>0.000</td></tr><tr><td>Period 3</td><td>-0.7086</td><td>6.666</td><td>6781</td><td>-8.75</td><td>0.000</td></tr><tr><td>Period 4</td><td>-0.4080</td><td>8.364</td><td>2733</td><td>-2.55</td><td>0.011</td></tr><tr><td>Period 5</td><td>-0.4775</td><td>7.320</td><td>19,739</td><td>-9.16</td><td>0.000</td></tr><tr><td colspan="6">LAGDIFF</td></tr><tr><td>Total</td><td>-0.3427</td><td>26.0421</td><td>55,020</td><td>-3.09</td><td>0.002</td></tr><tr><td>Period 1</td><td>-0.0853</td><td>9.028</td><td>19,868</td><td>-1.33</td><td>0.183</td></tr><tr><td>Period 2</td><td>-0.6778</td><td>14.599</td><td>6300</td><td>-3.68</td><td>0.000</td></tr><tr><td>Period 3</td><td>-0.7581</td><td>10.767</td><td>6694</td><td>-5.76</td><td>0.000</td></tr><tr><td>Period 4</td><td>-0.6605</td><td>12.380</td><td>2710</td><td>-2.78</td><td>0.006</td></tr><tr><td>Period 5</td><td>-0.3098</td><td>41.291</td><td>19,448</td><td>-1.05</td><td>0.295</td></tr></table>

Table 2 presents the results of the  $T$ -test. The price difference is calculated as the price on the OSE minus the price on SIMEX.<sup>9</sup>

Over the whole sample, the SIMEX contract appears to be slightly, but significantly, more expensive than the OSE contract. As expected, price differences during period 1 are insignificant. During period 2, price differences increase and become significant. After the earthquake, the price difference increases even more. After Leeson's departure, price differences decline, but prices in Singapore remain higher than in Osaka. Traders apparently did not demand a discount to hold SIMEX futures during this period of confusion. Finally, the price difference increases slightly in period 5 and remains significant.

Table 3 presents the evidence relating to doubling activities in the Nikkei futures market on SIMEX. We take the spread between Nikkei futures return and the JGB futures return on day  $t - 1$  to explain increased trading on day  $t$ . The wider the spread, the larger the losses Leeson incurred on day  $t - 1$ , and the more inclined he should have been to double his position on day  $t$ . During period 1, the relationship between price movements and trading volume were not significant. During period 2, the relationship between volume and negative price changes becomes highly significant, both economically and statistically. This result is strongly suggestive of doubling activity in this market. In period 3, after Leeson

Table 3 Asymmetries in volume-return relationships: Nikkei futures trading on SIMEX  

<table><tr><td rowspan="2"></td><td colspan="3">Positive prior return</td><td colspan="3">Negative prior return</td><td>Difference</td></tr><tr><td>αup</td><td>βup</td><td>Adjusted R2</td><td>αdown</td><td>βdown</td><td>Adjusted R2</td><td>βup - βdown</td></tr><tr><td>July-</td><td>23294.2</td><td>-374792.8</td><td>0.01</td><td>20779.1</td><td>-399334.3</td><td>0.01</td><td>24541.5</td></tr><tr><td>October</td><td>(9.54)</td><td>(-1.22)</td><td></td><td>(6.19)</td><td>(-1.15)</td><td></td><td>(0.05)</td></tr><tr><td>1994</td><td>0.000</td><td>0.114</td><td></td><td>0.000</td><td>0.129</td><td></td><td>0.479</td></tr><tr><td>November</td><td>25496.4</td><td>324559.7</td><td>0.02</td><td>25778.3</td><td>-441181.3</td><td>0.09</td><td>765741.1</td></tr><tr><td>1994-</td><td>(9.51)</td><td>(1.21)</td><td></td><td>(11.51)</td><td>(-2.35)</td><td></td><td>(2.34)</td></tr><tr><td>bankruptcy</td><td>0.000</td><td>0.117</td><td></td><td>0.000</td><td>0.012</td><td></td><td>0.010</td></tr><tr><td>Bankruptcy-</td><td>28274.5</td><td>-6410.3</td><td>-0.03</td><td>26053.2</td><td>-251528.4</td><td>0.05</td><td>245118.1</td></tr><tr><td>July</td><td>(9.06)</td><td>(-0.03)</td><td></td><td>(10.24)</td><td>(-1.88)</td><td></td><td>(1.04)</td></tr><tr><td>1995</td><td>0.000</td><td>0.487</td><td></td><td>0.000</td><td>0.033</td><td></td><td>0.150</td></tr></table>

Numbers in this table represent the regression coefficients in the regression

$$
\operatorname {v o l u m e} _ {t} = \alpha + \beta \left(\Delta P _ {\text {N i k k e i}, t - 1} - \Delta P _ {\text {J G B}, t - 1}\right) + \varepsilon_ {t},
$$

where  $\Delta P_{t}$  represents the first difference in the natural logarithm of prices and Nikkei and JGB represent the SIMEX Nikkei and JBG contracts, respectively. The subscripts up and down represent regimes, where the prior change in price was positive and negative respectively. Numbers in brackets represent  $t$ -values, with associated  $p$ -values in italics.

left the market, the relationship works in a similar direction, probably the result of a reversal in the causal relationship as Leeson's positions were unwound in a falling market. However, the economic and statistical significance of the negative return-volume relationship is greatly diminished.

Table 4 presents our findings regarding JGB futures. Results do not support the presence of doubling activity, consistent with there being a different market for JGB futures than merely Leeson's trading behavior.[10]

# 6.1. Doubling: Direct tests

During the final month at Barings, Leeson was betting on rising Japanese share prices and interest rates. He built up large positions on both the Nikkei and the JGB futures market. We directly test whether Leeson behaved like a doubler, by relating increases in cumulated losses to increases in his net position. Fig. 3 provides an indication that there is a relationship. Cumulating the positions and trading gains (losses) from January 26,  $1995^{11}$  we find that net long positions

Table 4 Asymmetries in volume-return relationships: JGB futures trading on SIMEX  

<table><tr><td rowspan="2"></td><td colspan="3">Positive prior return</td><td colspan="3">Negative prior return</td><td>Difference</td></tr><tr><td>αup</td><td>βup</td><td>Adjusted R2</td><td>αdown</td><td>βdown</td><td>Adjusted R2</td><td>βup - βdown</td></tr><tr><td>July-</td><td>2500.5</td><td>-31985.1</td><td>-0.02</td><td>2130.2</td><td>-27206.4</td><td>-0.02</td><td>-4778.7</td></tr><tr><td>October</td><td>(5.36)</td><td>(-0.55)</td><td></td><td>(4.41)</td><td>(-0.54)</td><td></td><td>(-0.06)</td></tr><tr><td>1994</td><td>0.000</td><td>0.294</td><td></td><td>0.000</td><td>0.295</td><td></td><td>0.475</td></tr><tr><td>November</td><td>5280.3</td><td>-111408.9</td><td>0.02</td><td>4128.8</td><td>31737.2</td><td>-0.02</td><td>-143146.1</td></tr><tr><td>1994-</td><td>(5.84)</td><td>(-1.24)</td><td></td><td>(6.10)</td><td>(0.56)</td><td></td><td>(-1.34)</td></tr><tr><td>bankruptcy</td><td>0.000</td><td>0.113</td><td></td><td>0.000</td><td>0.289</td><td></td><td>0.090</td></tr><tr><td>Bankruptcy-</td><td>756.6</td><td>6954.8</td><td>-0.02</td><td>840.9</td><td>-2667.7</td><td>-0.02</td><td>9622.5</td></tr><tr><td>July</td><td>(4.42)</td><td>(0.65)</td><td></td><td>(5.84)</td><td>(-0.35)</td><td></td><td>(0.74)</td></tr><tr><td>1995</td><td>0.000</td><td>0.260</td><td></td><td>0.000</td><td>0.363</td><td></td><td>0.231</td></tr></table>

Numbers in this table represent the regression coefficients in the regression

$\mathrm{volume}_t = \alpha + \beta (\Delta P_{\mathrm{Nikkei}, t-1} - \Delta P_{\mathrm{JGB}, t-1}) + \varepsilon_t,$

where  $\Delta P_{t}$  represents the first difference in the natural logarithm of prices and Nikkei and JGB represent the SIMEX Nikkei and JBG contracts, respectively. The subscripts up and down represent regimes, where the prior change in price was positive and negative respectively. italics.

increased exponentially as trading losses mounted up to the point where Leeson departed Barings Futures (Singapore). In Fig. 4, we document that the net long position was an increasing function of the net trading losses, and that the only time

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/52be6cc3-4a83-479a-b3d2-962415744c8b/3ed828d8c53ef61a7fb209810d15e46f3306e040bc755c3a14301ab6c769aeaa.jpg)  
Fig. 3. Net investment and cumulated trading profits from 26 January 1995.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/52be6cc3-4a83-479a-b3d2-962415744c8b/58aaf297625abb17656a0fcb3cda559076f6d620b1d71e5c74f0b98a8bc50d39.jpg)  
Fig. 4. Net position as a function of trading results.

there were any (modest) sales were on the occasion of net gains relative to the position as of January 26, 1995. This negative relationship between position and trading results is significant at the  $1\%$  level.

# 7. Conclusions

This paper examines the trading strategy attributed to Mr. Nicholas Leeson, who was the chief derivatives trader of Barings bank in Singapore until the bank's collapse in February 1995. We claim that Leeson followed a doubling strategy: by continuously doubling his position when prices fell, he tried to trade his way out of growing losses. Among other things, this has important consequences for the effectiveness of Value at Risk-controls. Being able to track and take out these traders sooner would limit possible systemic risks.

Leeson's trading activities mainly involved three futures markets: futures on the Nikkei index, futures on 10-year Japanese Government bonds and Euroyen futures. These products are all traded simultaneously and in similar design on SIMEX and on a Japanese exchange. We perform various tests on daily data from all relevant markets, and on transaction data from markets for Nikkei derivatives. Based on the analysis of the raw data, we conclude that someone, probably Leeson, did indeed follow a doubling strategy in the Nikkei futures market. And second, the actual information on Leeson's trading activities confirms that he followed a trading strategy: Leeson clearly expanded his position when prices were falling.

# Acknowledgements

We would like to thank the Osaka Securities Exchange, Mr. Naoto Watari in particular, and the Singapore Exchange for providing data and comments. Also, we would like to thank the Institute for Monetary and Economic Studies of the Bank of Japan. An earlier version of this paper was presented at the 2nd Central Bank Conference on Risk Measurement and Systemic Risk, November 1998, Tokyo and at the 12th PACAP/FMA/AIBF Banking and Finance Conference, July 2000, in Melbourne, Australia. Finally, we would like to thank an anonymous referee.

# References

Bank of England (BoE), Board of Banking Supervision, July 1995. Report of the Board of Banking Supervision Inquiry into the Circumstances of the Collapse of Barings. London, ordered by the House of Commons.  
Gapper, J., Denton, N., 1997. All that Glitters; The Fall of Barings. Penguin Books, London.  
Harris, L., Raviv, A., 1993. Differences of opinion make a horse race. Review of Financial Studies 6 (3), 473-506.  
Hogan, W., 1999. Two failures: Barings in 1890 and 1995. Accounting and Business Review 6 (2), 203-223.  
Ito, T., Lin, W.L., 1996. Race to the center: Competition for the Nikkei 225 futures trade. IMF Working Paper WP/96/117. IMF, Washington DC.  
Kahneman, D., Tversky, A., 1986. Rational choice and the framing of decisions. Journal of Business 59 (4, pt. 2), 251-278.  
Kane, E.J., DeTrask, K., 1999. Breakdown of accounting controls at Barings and Daiwa: Benefits of using opportunity-cost measures for trading activity. Pacific-Basin Finance Journal 7 (3-4), 203-228.  
Karpoff, J.M., 1988. Costly short sales and the correlation of returns with volume. Journal of Financial Research 11 (3), 173-188.  
Kocagil, A.E., Shachmurove, Y., 1998. Return-volume dynamics in futures markets. Journal of Futures Markets 18 (4), 399-426.  
Lim, M., Tan, N., 1995 (Singapore Report, SR). Barings Futures (Singapore) Pte: The Report of the Inspectors appointed by the Minister for Finance. Ministry of Finance, Singapore.  
Leeson, N., 1996. Rogue Trader. Little Brown and Co., London.  
Moosa, I.A., Silvapulle, P., 2000. The price-volume relationship in the crude oil futures market: Some results based on linear and nonlinear causality testing. International Review of Economics and Finance 9 (1), 11-30.  
Quandt, R.E., 1958. The estimation of the parameters of a linear regression system obeying two separate regimes. Journal of the American Statistical Association 55, 324-330.  
Quandt, R.E., 1960. Tests of the hypothesis that a linear regression system obeys two separate regimes. Journal of the American Statistical Association 53 (290), 873-880.  
Shapira, Z.B., 1997. Organizational Decision Making. Cambridge University Press, Cambridge.  
Suominen, M., 1996. Trading volume and information revelation in stock markets. Working Paper, Dept. of Economics, University of Pennsylvania, Philadelphia.