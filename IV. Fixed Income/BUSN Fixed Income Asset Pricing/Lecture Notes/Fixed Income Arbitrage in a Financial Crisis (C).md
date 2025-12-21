---
title: Fixed Income Arbitrage in a Financial Crisis (C): TED Spread and Swap Spread in November 2008
parent_directory: Lecture Notes
formatted: 2025-12-21 06:45:00 AM
formatter_model: grok-code-fast-1
cli_tool: opencode
primary_tags:
   - fixed income arbitrage
   - swap spread dynamics
   - ted spread analysis
   - financial crisis trading
   - interest rate derivatives
   - treasury bond valuation
   - libor rate impacts
   - collateralized lending
   - repo financing mechanisms
   - risk neutral strategies
secondary_tags:
   - crisis market volatility
   - lehman brothers collapse
   - federal reserve intervention
   - troubled asset relief program
   - mortgage market avoidance
   - treasury relative value trades
   - yield curve steepening
   - interbank lending confidence
   - bank solvency concerns
   - swap contract structures
   - floating rate benchmarks
   - repurchase agreements
   - credit worthiness measures
   - arbitrage opportunity identification
   - dv01 sensitivity analysis
   - margin call requirements
   - haircut financing risks
   - balance sheet management
   - duration matching strategies
   - notional principal calculations
   - basis point calculations
   - interest rate risk hedging
   - market normalization expectations
   - leverage position management
   - prime broker relationships
cssclasses: academia
---

RYANT TALIAFERRO

STEPHEN BLYTH

# Fixed Income Arbitrage in a Financial Crisis (C): TED Spread and Swap Spread in November 2008

On November 4, 2008, Albert Mills<sup>1</sup> was looking intently at his Bloomberg screen. Over the last four weeks, the thirty-year U.S. dollar fixed-floating swap spread had plummeted from 30.25 basis points (0.3025%) to 6.25 basis points,<sup>2</sup> and it had even touched negative values a few days prior. While 30.25 was lower than the average spread in recent years, it was not unprecedented; in fact, the average thirty-year swap spread in 2003 and 2004 and been about 33. However, 6.25 was unprecedented: Mills would never have imagined the spread could be so low, and just a month ago he would have asserted confidently that a swap spread could never be negative. Yet both the current spread of 6.25 and the momentarily negative spreads from the weeks prior were written clearly on his screen. (Exhibit 1 reproduces Mills' graph of historical thirty-year swap spreads.)

Mills was convinced that these low spreads were a consequence of ongoing turmoil in fixed income and other financial markets, and he was sure that when prices normalized, the thirty-year swap spread would return to historical values in the 30s, 40s, or 50s. Consequently, he felt that the current low spreads presented a profitable trading opportunity for Kentish Town Capital (KTC), a hedge fund that Mills recently had joined.

After accumulating 9 years of experience as a fixed-income strategist and trader at Morgan Stanley, Mills had received a call from his former colleague James Franey, who had founded a new investment management company. The two had known each other well in their former roles, and Franey had thought that Mills would bring valuable experience in interest rate derivatives to the new fund. Franey had opened the fund by raising an initial \$300 million, and he had invited Mills to join and have direct responsibility for \$75 million.

Building on Franey's background and experience, KTC's focus was on fixed income relative value strategies, which exploit pricing differences between otherwise similar bonds or related securities. Looking back on KTC's two year history, Mills realized that joining a new fund on the cusp of a great financial crisis and significant market volatility could have been highly problematic. However, Franey's and Mills' experience at Morgan Stanley had been gained predominantly in Treasury and interest rate derivatives trading, and they had not developed a full understanding of the technicalities of mortgage securities. As a consequence KTC had stayed away from those products and had taken no risk in mortgage markets.

Instead, KTC had invested in traditional fixed income and Treasury relative value trades, which in the ensuing turmoil had performed well. By November 2008 the firm was significantly ahead of many competitors that had encountered serious trouble in mortgage markets. Whether it was luck or smarts or a bit of both, Mills felt that if he and his colleagues could continue to make appropriate decisions, they were well positioned to take advantage of one of the most unusual market environments in history.

## The Environment

Like many market participants, Mills had first became aware of serious troubles in the financial markets in August of 2007, when LIBOR, the rate at which large financial institutions lent to each other on an uncollateralized basis, had begun to drift up after having been flat for a full year. This uptick in interbank lending rates had surprised many, and Mills had believed it reflected deteriorating confidence in banks' solvency, especially since it had occurred at about the time that the Bank of England had begun taking steps to support Northern Rock, a large U.K. commercial bank.

By December 2007, U.S. financial institutions were struggling, and the U.S. Federal Reserve was offering temporary funding and accepting as collateral an unusually diverse set of securities. Into 2008 conditions had deteriorated further, and by February, Northern Rock had collapsed. In late March, the Fed had facilitated the purchase of Bear Stearns by J. P. Morgan Chase to avoid an imminent bankruptcy filing by the fifth largest U.S. investment bank.

In early September, Fannie Mae and Freddie Mac, two large U.S. government agencies that owned or guaranteed many mortgages in the United States, had been placed into conservatorship by the government. Then on September 15, 2008, in a shock to financial markets around the world, Lehman Brothers had filed for protection in the largest bankruptcy ever recorded. The next day, as a consequence of its exposure to Lehman commercial paper, the Reserve Primary Money Fund "broke the buck," with shares in its money market fund valued at less than a dollar.

After Lehman's collapse, volatility had intensified as Lehman's former counterparties had struggled to replace positions that had existed with Lehman. While these counterparties—including all the major investment and commercial banks—had not necessarily suffered any instantaneous losses on these positions when Lehman collapsed, since most had held collateral from Lehman against the aggregate value of their trades, on the night of September 14, 2008 they had suddenly become exposed to the market risks that the Lehman contracts had offset. As these financial institutions had struggled to replace their Lehman positions in vast waves of "risk replacement," trades had hit the market in large chunks and prices had fluctuated wildly.

As these events had unfolded, particularly in the days after the Lehman collapse, Mills had sensed an increasing mood of panic. Volatility had spiked dramatically in all asset classes, and the stress on market participants, who were trying desperately to react to wildly changing prices, had been overwhelming. Simultaneously, as the money market had disintegrated, the risk aversion of market participants had risen to extraordinary levels.

Early in the crisis, as conditions had begun to deteriorate, Franey and Mills had anticipated that the yield curve would steepen as the Fed cut short-term rates. They had been right, and the "steepener" trades, in which KTC owned short-dated treasuries and sold short longer-dated treasuries in duration-matched amounts, had performed well. However, after the Lehman bankruptcy, many investors, KTC included, had closed positions as quickly as possible and had been content to hold Treasury bills and little else. Prime brokers, KTC's included, had increased collateral requirements to such an extent that it had become nearly impossible to hold positions in anything but Treasuries anyway. For a few weeks, Mills had had no ability to exploit even the most lucrative opportunity, and in fact had been thankful that he had actually been able to reduce his portfolio and simply hold Treasury bills.

At the same time, government intervention had accelerated, and by the first week in October, the U.S. Congress had passed the Troubled Asset Relief Program, which had granted broad powers to the U.S. Treasury. Treasury had used its new powers quickly to purchase equity stakes in financial intermediaries. By mid-October Treasury had announced that it would be purchasing \$125 billion of preferred shares from nine large institutions. That purchase had been finalized on October 24, exactly one week ago.

Because of the fund's bet on a steepening yield curve, KTC had done well in spite of the crisis. With the ability to execute trades returning, Mills now felt ready to take advantage of what he thought was an even more attractive opportunity in the market for U.S. dollar fixed-floating swaps.

# Swap spread

The swap spread that Mills was studying was the difference between two interest rates, the rate on the fixed leg of a fixed-floating swap and the yield on a Treasury bond of comparable maturity. The swap was a thirty-year swap, so the relevant Treasury bond was a $4.5\%$ coupon bond due May 15, 2038. On November 4, this bond had a yield of $4.193\%$.<sup>3</sup> On the same day, the fixed leg of a fixed-floating swap had a rate of $4.2560\%$,<sup>4</sup> just $6.255$ basis points more than the yield on the Treasury. It was this low 6.25 spread that had caught Mills' attention.

## Swap

Fixed-floating swaps were the most common and important interest rate derivative contract. In such a contract, two parties agreed to exchange payments at specified intervals for a specified period of time called the term of the swap. One party, the payer, agreed to pay to the other, the receiver, a specified fixed interest rate on a specified principal amount called the notional. For example, if the notional was \$1 billion and the swap's fixed rate was $5\%$ annual, then the payer would pay the receiver $25 million $(= 5\% / 2 \times 1$ billion) every six months for the term of the swap.

In exchange, the receiver would pay to the payer a floating rate payment based on the most recent short-term interest rate on the same notional. For example, if the three-month interest rate had been 1% annual in the most recent quarter, the receiver would pay $2.5 million $(1/4 \times \$1$ billion)$^6$ to the payer on the quarterly payment date. (The payment frequency on the fixed and floating legs of the swaps often differed depending on market standards. For example, the standard for U.S. dollar swaps was semi-annual on the fixed side and quarterly payments linked to three-month LIBOR on the floating side.) Succeeding payments might be bigger or smaller, depending on whether the short-term interest rate increased or decreased. Payments made by both parties on the same days would be netted, so that money flowed only one direction. The \$1 billion would not change hands, but would be used only as a reference point to determine the size of the quarterly or semi-annual payments.

Fixed-floating swaps were invented in the early 1980s and since had grown into a vast and frequently used contract. (Exhibit 2 plots the growth of the interest rate swap market.) An example of a common use was to enable a company that had borrowed money from a bank at a variable rate to substitute a fixed stream of payments for its variable bank loan payments. Banks often preferred to lend at variable rates, since they tended to have financing obligations, such as deposit accounts or obligations to other banks, that themselves earned variable interest rates; meanwhile, companies often preferred the predictability of a fixed payment obligation.

# LIBOR

The floating rate used as the benchmark in a fixed-floating swap was LIBOR, the London InterBank Offered Rate, an average short-term lending rate between large banks. The rate was variable and would change to reflect the relative abundance or scarcity of credit as well as market participants' confidence in banks' solvency. Worries about banks' ability to pay back their loans could drive LIBOR higher.

LIBOR was an uncollateralized lending rate. That is, the LIBOR rate was the rate paid by a bank for funds that were not collateralized by specific assets of the bank. The lender to the bank had no security, other than the bank's promise to repay.

# Collateralized (repo) lending

An alternative lending arrangement was a collateralized loan in which the lender held an asset of value belonging to the borrower until the borrower repaid. Because a collateralized loan had less risk in case of default—the lender simply kept the collateral if the borrower didn't repay—a collateralized loan would earn a lower interest rate than an otherwise identical uncollateralized loan.

An example of a collateralized loan was a repurchase agreement, or "repo." An investor that wished to buy an asset such as a Treasury bond could borrow money and use the bond as collateral. Typically a repo contract would require the borrower to repay in twenty-four hours, but it was a standard practice to renew (roll over) the loans daily, unless the borrower or the collateral suffered an impairment.

# TED spread

The difference between the rate at which banks could borrow without collateral and the rate at which banks could borrow if they posted appropriate collateral was an important measure of the credit worthiness of banks. A closely related spread was the Treasury-Eurodollar ("TED") spread, a widely followed measure of confidence in financial intermediaries. The TED spread was the difference between three-month LIBOR rate and the three-month Treasury bill yield; that is, the difference between lending unsecured to a bank and to the U.S. government. Exhibit 3 reproduces the historical TED spreads that Mills could see on his screen. Not surprisingly, since the TED spread was the difference between an uncollateralized risky loan and a safe loan to the US government, the spread had always been positive. Mills could see that the spread widened at times of financial crisis as investors sought the safety of government securities as opposed to unsecured deposits at banks. The TED spread closely tracked the difference between LIBOR and repo rates, since repo contracts are loans secured by government bonds.

```d2
direction: right

LIBOR: LIBOR Rate {
  style.fill: "#e3f2fd"
  style.stroke: "#1976d2"
}

TED_Spread: TED Spread {
  style.fill: "#fff3e0"
  style.stroke: "#f57c00"
}

Treasury_Bill: 3M Treasury Bill Yield {
  style.fill: "#e8f5e9"
  style.stroke: "#388e3c"
}

Repo_Rate: Repo Rate {
  style.fill: "#fce4ec"
  style.stroke: "#c2185b"
}

LIBOR -> TED_Spread: "Unsecured lending rate"
Treasury_Bill -> TED_Spread: "Risk-free rate"
TED_Spread -> Repo_Rate: "Tracks closely (difference = haircut)"
```

**Figure: TED Spread Components** - The TED spread measures the difference between risky unsecured bank borrowing (LIBOR) and risk-free government borrowing (Treasury bills). During crises, this spread widens as confidence in banks deteriorates.

# A missed opportunity

Mills had been startled by the negative swap spread that had momentarily appeared several days before, because he knew that he could have entered into a set of no-cost contracts that would have generated positive cash flows afterwards. For example, if he had entered into the thirty-year swap as a payer and simultaneously bought a U.S. Treasury of the same maturity and financed it with an overnight repo, he would have been obligated to pay a fixed rate on the swap that was less than the fixed rate yield he was receiving from the Treasury bond, since the swap spread was negative.<sup>7</sup> At the same time, the (uncollateralized) LIBOR rate that he would have been receiving from the variable leg of the swap would have been greater than the rate that he would have been paying on the overnight repo that financed his Treasury bond, since he would have used the bond to collateralize the overnight loan and receive a low, collateralized rate. In short, he would have received money from both the variable side of the trade and the fixed side of his trade, which to Mills seemed like free money. Exhibit 4 displays the flows of securities and money that Mills was pondering.

```d2
direction: down

Swap_Payer: Hedge Fund {
  style.fill: "#e3f2fd"
  style.stroke: "#1976d2"
}

Swap_Receiver: Counterparty Bank {
  style.fill: "#fff3e0"
  style.stroke: "#f57c00"
}

Treasury_Bond: Treasury Bond {
  style.fill: "#e8f5e9"
  style.stroke: "#388e3c"
}

Repo_Lender: Repo Lender {
  style.fill: "#fce4ec"
  style.stroke: "#c2185b"
}

Swap_Payer -> Swap_Receiver: "Pay fixed rate\n(4.256%)" {
  style.stroke: "#1976d2"
}

Swap_Receiver -> Swap_Payer: "Receive floating\n(LIBOR)" {
  style.stroke: "#f57c00"
}

Swap_Payer -> Treasury_Bond: "Buy bond" {
  style.stroke: "#388e3c"
}

Treasury_Bond -> Repo_Lender: "Post as collateral" {
  style.stroke: "#c2185b"
}

Repo_Lender -> Swap_Payer: "Lend cash\n(repo rate)" {
  style.stroke: "#c2185b"
}
```

**Figure: Negative Swap Spread Arbitrage** - When swap spreads turn negative, hedge funds can construct riskless arbitrage by receiving fixed payments from Treasuries while paying lower fixed rates on swaps, financed by low repo rates. The trade captures the spread differential as "free money."

# Another opportunity

Mills thought that he might have missed the opportunity to exploit a truly riskless arbitrage when the spread had become negative, but the currently low 6.25 spread still seemed promising. As markets normalized, if the spread returned to its historical level of between 30 and 50, a swap spread at 6.25 would become very valuable. If Mills entered into the swap now when the spread was 6.25, he could exit later at a profit, once spreads returned to their historic levels. Put differently, Mills believed he could "buy" a certain amount of the spread at 6.25, and assuming the spread jumped instantaneously by 30 to 36.25, he would realize a profit roughly equal to 30 times the amount's dollar sensitivity to a one-basis point change in spread. (That is, he would realize a profit equal to 30 times his trade's DV01 measure.) Since he viewed a spread of 0 as a lower bound, Mills believed the size of his loss would be limited to 6.25 times his trade's DV01.

Mills saw that DV01 for \$10 million notional of the thirty-year swap with fixed leg at 4.256% was \$17,191 The DV01 measure meant that if the thirty-year swap rate increased by 1 basis point, the value of a swap with a fixed leg of 4.256% would increase by about \$17 thousand for each notional \$10 million. If the notional were \$1 billion, a one basis point increase in the market thirty-year swap rate would mean a \$1.7 million increase in the value of a 4.256% thirty-year swap.

Mills knew that if at the same time he entered into the thirty-year swap he also purchased an appropriate amount of the May 2038 Treasury using repo financing, he would be neutral with respect to the level of market interest rates, but he would make money if the swap spread widened. He also knew that the DV01 measure was only valid for small changes in the market swap rate, so he couldn't predict exactly how much money he would make if the thirty-year swap spread widened by 30 basis points or more, but he knew the potential profit was substantial.

# Financing

To put on the trade, Mills would enter into a thirty-year swap as the fixed-rate payer on a certain notional amount, for example \$1 billion. He could enter into this contract without paying any money to his prime broker,[9] though he would take on the obligation to make the semi-annual net payments and also the obligation to post cash margin if the swap moved against him, that is, if the market thirty-year swap rate fell.

At the same time, he would purchase the May 2038 Treasury bond in an amount that had a DV01 equivalent to the swap, so that his position would be neutral with respect to changes in the market interest rate. Mills saw that the price of the May 2038 Treasury was $105.17^{10}$ (per \$100 face amount), and it had a DV01 of $0.1746$.<sup>11</sup> The DV01 measure reflected the change in price that would result if interest rates increased by 1 basis point. The swap in notional \$1 billion had DV01 of \$1.7 million, so Mills would need to buy face amount $0.97$ billion $(= 1.7$ million/$(0.1746 \times 100))$ of the thirty-year Treasury to neutralize his swap's DV01 exposure to the market interest rate. At a price of $105.17 + 2.13$ accrual,<sup>12</sup> the \$0.97 billion face would cost him about \$1.04 billion $(= 0.97$ billion $\times (105.17 + 2.13)/100)$, which he would borrow.

Mills would borrow to purchase the Treasury bonds, and he would use the bonds as collateral to secure overnight repo financing at a collateralized rate. However, he would not be allowed to finance his entire purchase. Instead, his prime broker would only lend $98\%$ of the value of his purchase, and Mills would have to fund the remaining $2\%$ (the "haircut") with KTC's own capital. Therefore, for each \$1 billion notional of the thirty-year swap, KTC would have to use about \$21 million $(= 1.04$ billion $\times 2\%)$ of its own capital to support the leveraged purchase of thirty-year Treasury bonds with offsetting DV01.

Mills knew that the repo financing arrangement introduced additional risks. If the value of the Treasury bonds fell, KTC's prime broker would require KTC to post sufficient capital to make up for the change in value or to sell some of the bonds (at a loss) to reduce KTC's leverage in the position. Moreover, if at any time KTC's prime broker felt that the credit worthiness of either KTC or the U.S. government had changed for the worse, it could increase the haircut on the repo. If the haircut increased, KTC would have to post more cash margin or reduce leverage by selling some of the bonds. Of course, KTC's position in the swap was offsetting, so KTC would be protected from systemic changes in interest rates; nevertheless it would remain exposed to adverse changes in the swap spread. As a final component of the financing arrangement, KTC's broker dealer would charge KTC interest on the repo loan for as long as it was outstanding. At the time, this rate was $0.15\%$ annual.<sup>13</sup>

# Decision

Mills knew there were risks associated with this trade. In particular, the swap spread could narrow further toward zero. Mills had seen the thirty-year swap spread touch negative values briefly. If it did so again, his position would show a loss until the swap spread recovered.

Thinking of zero as a reasonable lower bound, Mills' exposure to a narrowing swap spread was limited to about 6 basis points, or perhaps a little more. If he put on the trade and the swap spread fell again to zero, Mills would be required to post additional cash margin to make up for the paper loss. However, Mills felt that he would be able to make that margin call, and he was comfortable with that risk, given the potential for profit if the spread widened to its historic levels.

Though he was confident that zero was a reasonable lower bound for the thirty-year swap spread, Mills still wished he understood better what had caused it to fall so low—and to negative values—in the first place. He knew that intermediaries like pension funds sometimes were reluctant to purchase bonds to increase the duration of their portfolios, when they could enter into swap arrangements that would have similar impact but have no immediate effect on their balance sheets. Perhaps the low swap spread reflected a general desire to avoid committing balance sheet, while obtaining economically similar duration exposure through the use of derivatives.

Whatever the underlying cause of the low swap spread, Mills needed to make a final decision about whether to enter into the trade, and if he did, what notional amount of the swap would be appropriate for a hedge fund of KTC's size. He felt confident that if he made good choices, he could realize high returns for his investors.

Exhibit 1 Thirty-year U.S. dollar fixed-for-floating swap spread, for the period January 1, 2003 through November 3, 2008. Spread is the rate on the fixed leg of the swap less the yield-to-maturity of a 30-year U.S. Treasury bond.  
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/a98344f4-7d73-4200-a57e-3e4b16d83bbc/1fc24a5cf825a00e87f4ba755519df7cdf76cb89cfcc0aabf577bb2b1816cb3b.jpg)  
Source: Bloomberg, accessed December 2010.  
a Bloomberg: USSP30<Curncy>GY<GO>.

Exhibit 2 Outstanding notional volume of interest rate swaps, 1987 - 2007.
Outstanding notional (trillions)  
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/a98344f4-7d73-4200-a57e-3e4b16d83bbc/39df7de2852cc3692beab2196b1b03e1d3abf2f69d90045a3eb58e5cb97539f8.jpg)  
Source: Created by casewriter using data from Bank for International Settlements.

Exhibit 3 Three-month Treasury-Eurodollar (TED) spread<sup>a</sup>, for the period January 1, 2003 through November 3, 2008. Three-month TED spread is three-month LIBOR less the yield-to-maturity of a three-month U.S. Treasury bill.

Spread (bp)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/a98344f4-7d73-4200-a57e-3e4b16d83bbc/afe92662589865cf0748ff1fb48064a30ff3f0a792b6614f8fc37aa225a02098.jpg)  
Source: Bloomberg, accessed December 2010.

Exhibit 4 Investor-counterparty relationships for a repurchase agreement (repo) and a fixed-floating swap. Solid lines depict initial movements of securities, dashed lines depict initial movements of cash, and dotted lines depict ongoing cash flows.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/a98344f4-7d73-4200-a57e-3e4b16d83bbc/683ae621ff3dc24287916c7a7028292a162097267bba6331dddc7347ecc0acd5.jpg)  
a Bloomberg: GB03<Govt>US0003M<Index>HS<GO>.  
Source: Casewriters.