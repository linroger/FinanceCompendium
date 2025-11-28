---
tags:
  - forward_contract_pricing
  - futures_contract_mechanics
  - interest_rate_swaps
  - no_arbitrage_principle
  - currency_exchange_hedging
  - mark_to_market_accounting
  - libor_sofr_transition
  - covered_interest_rate_parity
key_concepts:
  - forward_pricing_formula
  - arbitrage_enforcement_mechanisms
  - futures_vs_forwards_comparison
  - swap_rate_determination
  - hedging_with_derivatives
  - overnight_index_swaps
  - basis_risk_in_futures
  - cross_currency_basis_violations
aliases: []
cssclasses: academia
---

# Financial Instruments - Teaching Note 2: Futures, Forwards And Swaps

John Heaton
The University of Chicago
Booth School of Business

## Table of Contents

1. Forward Contracts
  1.1 The Forward Price
  1.2 The Value of a Forward Contract

2. Futures Contracts
  2.1 Hedging with Futures
  2.2 The Futures Price

3. Swaps
  3.1 Swaps versus Forwards
  3.2 The Swap Rate

## No Arbitrage

- An Arbitrage Opportunity is a trading strategy that either:

1. Costs nothing today and yields a positive profit in the future; or
2. Yields a positive profit today, and zero cash in the future.

- In well functioning markets, no arbitrage opportunities may arise.
- If there were, arbitrageurs would take massive positions to profit from them, equilibrating the market.
- The value of derivative securities, including forwards, futures, swaps and options, are determined by assuming that no arbitrage opportunities exist.
- The Law of One Price: Securities with identical payoffs must have the same price.
- Otherwise, an arbitrage opportunities arises

Buy Cheap / Sell Dear

- $\Longrightarrow$ Buy the low-priced security and sell the high-priced one.
- At maturity the arbitrageur is hedged, since the cash flows are the same.

## Forward Contracts

- A Forward contract is an agreement between two counterparties to buy or sell a prespecified amount of goods or securities at a prespecified future date $T$ at a prespecified price $F$.
- It does not cost anything to enter into a forward contract at time 0: The contract is about exchanging goods (or securities) for money in the future, and not today.
- The prespecified price $F$ moves to ensure that the value of the forward contract is zero for both counterparties at the inception of the contract.
- Let $N$ be the size of the contract and $M_{t}$ the price of the good or security at $t$.
- The Profit/Loss at $T$ are

$$
\mathrm{P/L \ counterparty \ long \ the \ forward} = N \times (M_{T} - F)
$$

$$
\mathrm{P/L \ counterparty \ short \ the \ forward} = N \times (F - M_{T})
$$

- For instance, the party long the forward agrees to buy at $T$ a security for $F$ when its value is $M_T$.
- If $M_T > F$, it makes a profit (it pays only $F$ instead of $M_T$)
- If $M_T < F$, it makes a loss (it pays $F$ instead of the cheaper $M_T$)

### Forward Contracts Example

- Example: A US firm has sold a piece of equipment to a German client and now it has a receivable of EUR 5 million in $T = 6$ months.
- Let $M_{t} = \text{USD/EUR}$ exchange rate at $t$. Assume the current rate $M_{0} = 1.2673$, the continuously compounded (c.c.) US rate is $r_{\$} = 5\%$ and the (c.c.) Euro rate is $r_{e} = 3\%$.

$$
\mathrm{Dollar \ payoff \ at} \ T = 5 \ \mathrm{mil} \times M_{T}
$$

- Exchange rate risk: Euro can depreciate versus the dollar ($M_T$ decline).
- Hedging strategy: enter into a forward contract with a bank to exchange euros for dollars at $T$ at an exchange rate $F$, say $F = 1.28$, decided today.

$$
\mathrm{Dollar \ P/L \ of \ forward \ contract \ at} \ T = 5 \ \mathrm{mil} \times (F - M_{T})
$$

Total payoff at $T =$ payoff from original position $T +$ payoff of forward contract at $T$

$$
\begin{array}{l}
= (5 \ \mathrm{mil} \times M_{T}) + 5 \ \mathrm{mil} \times (F - M_{T}) \\
= \quad 5 \ \mathrm{mil} \times F = \quad \$ 6.4 \ \mathrm{mil} \\
\end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/c367ebce-6d60-4546-a9bc-67e458f9fada/63623b0d7fe921753cd694c11123fd61a10ec146c5258cbbd32924515cf7a807.jpg)

Forward Contracts: The Payoff Diagram

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/c367ebce-6d60-4546-a9bc-67e458f9fada/9999a719a52f0bd325e4c02bb380db589a3994ddb291f50a5b4516f62763a760.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/c367ebce-6d60-4546-a9bc-67e458f9fada/da9b7a6da7e53fe2a932eb37cba142571de65890191dfe6a70bc3635831576b1.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/c367ebce-6d60-4546-a9bc-67e458f9fada/f22d5bfb6ed07ed6d0f6875674d8421573ad721dd7b8fdc2fb82fb95d3b47438.jpg)

### Example: April 4 2007

DOLLAR SPOT FORWARD AGAINST THE DOLLAR

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|c|c|c|c|c|c|}
\hline
Apr 4 & & Closing mid-point & Change on day & Bid/offer spread & Day's mid & One month & Three months & One year & J. P. Morgan Index & & & & \\ \hline
high & low & Rate & \%PA & Rate & \%PA & Rate & \%PA & & & & & & \\ \hline
Europe & & & & & & & & & & & & & \\ \hline
Czech Rep. & (Koruna) & 20.8984 & -0.0132 & 844 - 123 & 21.0040 & 20.8844 & 20.8478 & 2.9 & 20.7499 & 2.8 & 20.4229 & 2.3 & - \\ \hline
Denmark & (DKr) & 5.5734 & 0.0004 & 726 - 741 & 5.5944 & 5.5708 & 5.5673 & 1.3 & 5.5562 & 1.2 & 5.5265 & 0.8 & 110.00 \\ \hline
Hungary & (Forint) & 183.947 & 0.3426 & 867 - 028 & 184.720 & 183.590 & 184.357 & -2.7 & 185.117 & -2.5 & 188.057 & -2.2 & - \\ \hline
Norway & (NKr) & 6.1194 & 0.0046 & 172 - 215 & 6.1372 & 6.1120 & 6.1138 & 1.1 & 6.1049 & 0.9 & 6.1006 & 0.3 & 112.60 \\ \hline
Poland & (Zloty) & 2.8765 & -0.0009 & 746 - 783 & 2.8878 & 2.8746 & 2.8734 & 1.3 & 2.8681 & 1.2 & 2.8594 & 0.6 & - \\ \hline
Russia & (Rouble) & 25.9694 & -0.0042 & 669 - 719 & 26.0270 & 25.9620 & 25.9662 & 0.2 & 25.9603 & 0.1 & 25.9865 & -0.1 & - \\ \hline
Slovakia & (Koruna) & 25.0013 & 0.2019 & 761 - 265 & 25.2560 & 24.8350 & 24.9695 & 1.5 & 24.8948 & 1.7 & 24.6513 & 1.4 & - \\ \hline
Sweden & (SKr) & 6.9687 & -0.0387 & 667 - 706 & 7.0301 & 6.9603 & 6.9570 & 2.0 & 6.9347 & 1.9 & 6.8702 & 1.4 & 101.80 \\ \hline
Switzerland & (SFr) & 1.2181 & 0.0002 & 178 - 184 & 1.2232 & 1.2174 & 1.2150 & 3.1 & 1.2089 & 3.0 & 1.1870 & 2.6 & 107.10 \\ \hline
Turkey & (Lira) & 1.3730 & - & 715 - 745 & 1.3790 & 1.3680 & 1.3889 & -13.9 & 1.4182 & -13.2 & 1.5600 & -13.6 & - \\ \hline
UK (0.5058)* & (£) & 1.9772 & -0.0014 & 770 - 774 & 1.9775 & 1.9717 & 1.9770 & 0.1 & 1.9761 & 0.2 & 1.9658 & 0.6 & 103.50 \\ \hline
Euro (0.7477)* & (Euro) & 1.3375 & 0.0002 & 373 - 376 & 1.3380 & 1.3319 & 1.3391 & -1.4 & 1.3421 & -1.4 & 1.3506 & -1.0 & 128.80 \\ \hline
SDR & - & 0.6605 & - & - & - & - & - & - & - & - & - & - & 88.10 \\ \hline
Americas & & & & & & & & & & & & & \\ \hline
Argentina & (Peso) & 3.1013 & - & 000 - 025 & 3.1025 & 3.1000 & 3.0978 & 1.4 & 3.1023 & -0.1 & 3.1663 & -2.1 & - \\ \hline
Brazil & (R\$) & 2.0365 & -0.0021 & 355 - 375 & 2.0400 & 2.0310 & 2.0460 & -5.6 & 2.0610 & -4.8 & 2.1465 & -5.4 & - \\ \hline
Canada & (C\$) & 1.1575 & 0.0009 & 572 - 577 & 1.1593 & 1.1544 & 1.1564 & 1.1 & 1.1544 & 1.1 & 1.1473 & 0.9 & 123.90 \\ \hline
Mexico & (New Peso) & 10.9998 & 0.0160 & 975 - 020 & 11.0025 & 10.9714 & 11.0160 & -1.8 & 11.0520 & -1.9 & 11.2448 & -2.2 & 81.90 \\ \hline
Peru & (New Sol) & 3.1815 & 0.0010 & 810 - 820 & 3.1830 & 3.1800 & 3.1795 & 0.8 & 3.1765 & 0.6 & 3.1795 & 0.1 & - \\ \hline
USA & (\$) & - & - & - & - & - & - & - & - & - & - & - & 88.10 \\ \hline
Pacific/Middle East/Africa & & & & & & & & & & & & & \\ \hline
Australia & (A\$) & 1.2231 & -0.0056 & 228 - 234 & 1.2398 & 1.2204 & - & - & - & - & - & - & 125.40 \\ \hline
Hong Kong & (HK\$) & 7.8161 & 0.0009 & 159 - 163 & 7.8171 & 7.8147 & 7.8097 & 1.0 & 7.7929 & 1.2 & 7.7434 & 0.9 & 92.70 \\ \hline
India & (Rs) & 43.0700 & 0.0050 & 600 - 800 & 43.1350 & 42.8450 & 43.3225 & -7.0 & 43.7050 & -5.9 & 44.8423 & -4.1 & - \\ \hline
Indonesia & (Rupiah) & 9116.00 & 21.0000 & 200 - 000 & 9121.00 & 9098.00 & 9116.00 & - & 9116.00 & - & 9116.00 & - & - \\ \hline
Iran & (Rial) & 9244.00 & -1.0000 & 800 - 000 & - & - & - & - & - & - & - & - & - \\ \hline
Israel & (Shk) & 4.1310 & -0.0290 & 280 - 340 & 4.1580 & 4.1240 & 4.1275 & 1.0 & 4.1201 & 1.1 & 4.0968 & 0.8 & - \\ \hline
Japan & (Y) & 118.615 & -0.1700 & 600 - 630 & 119.080 & 118.550 & 118.139 & 4.8 & 117.231 & 4.7 & 113.528 & 4.3 & 80.20 \\ \hline
Kuwait & (Dinar) & 0.2893 & -0.0001 & 892 - 893 & 0.2894 & 0.2892 & 0.2892 & 0.1 & 0.2893 & - & 0.2894 & -0.1 & - \\ \hline
Malaysia & (M\$) & 3.4570 & -0.0035 & 545 - 595 & 3.4600 & 3.4545 & 3.4516 & 1.9 & 3.4415 & 1.8 & 3.3985 & 1.7 & - \\ \hline
New Zealand & (NZ\$) & 1.3865 & -0.0013 & 860 - 870 & 1.3953 & 1.3841 & - & - & - & - & - & - & 137.20 \\ \hline
Philippines & (Peso) & 48.0500 & -0.0750 & 400 - 600 & 48.2000 & 47.8700 & 48.0492 & - & 48.0563 & -0.1 & 48.0615 & - & - \\ \hline
Saudi Arabia & (SR) & 3.7504 & - & 499 - 509 & 3.7509 & 3.7499 & 3.7489 & 0.5 & 3.7472 & 0.3 & 3.7435 & 0.2 & - \\ \hline
Singapore & (S\$) & 1.5150 & -0.0038 & 147 - 153 & 1.5205 & 1.5137 & 1.5119 & 2.5 & 1.5062 & 2.3 & 1.4824 & 2.2 & 105.70 \\ \hline
South Africa & (R) & 7.1718 & -0.0168 & 667 - 768 & 7.1962 & 7.1460 & 7.1942 & -3.8 & 7.2421 & -3.9 & 7.4743 & -4.2 & - \\ \hline
South Korea & (Won) & 936.500 & -0.2500 & 000 - 000 & 937.000 & 935.500 & 935.850 & 0.8 & 934.600 & 0.8 & 930.300 & 0.7 & 113.00 \\ \hline
Taiwan & (T\$) & 33.0900 & -0.0310 & 850 - 950 & 33.1360 & 33.0640 & 33.0550 & 1.3 & 32.9300 & 1.9 & 32.3500 & 2.2 & 87.20 \\ \hline
Thailand & (Bt) & 34.9450 & -0.0200 & 100 - 800 & 34.9800 & 31.9000 & 34.9215 & 0.8 & 34.8600 & 1.0 & 34.5550 & 1.1 & - \\ \hline
U A E & (Dirham) & 3.6723 & 0.0001 & 721 - 724 & 3.6724 & 3.6721 & 3.6715 & 0.2 & 3.6700 & 0.2 & 3.6688 & 0.1 & - \\ \hline
\end{tabular}
\end{document}
```

*The closing mid-point rates for the Euro and £ are shown in brackets. The other figures in both rows are in the reciprocal form in line with market convention. † Official rate set by Malaysian government. The WM/Reuters rate for the valuation of capital assets is 3.80 MYR/USD. Bid/offer spreads in the Dollar Spot table show only the last three decimal places. J. P. Morgan nominal indices: Base average 2000 = 100. Bid, offer, mid spot rates and forward rates in both this and tha pound table are derived from the WM/REUTERS 4pm (London time) CLOSING SPOT and FORWARD RATE services. Some values are rounded by the F. T.

source: Financial Times www.ft.com

### Forward Price

- How is the prespecified exchange rate $F = 1.28$ USD/EUR decided?
- The bank hedges its commitment to pay dollars for euros at the fixed rate $F$ as follows:

1. Borrow the Present Value of 5 mil euros at the euro rate $r_e = 3\%$.

$$
\Rightarrow \text{Borrow} \left(e^{-r_{e} \times T} \times 5 \ \mathrm{mil}\right) = \text{euros} \ 4.925 \ \mathrm{mil}
$$

2. Exchange this amount into dollars today.

$$
\mathrm{If} \ M_{0} = 1.2673 \Longrightarrow \mathrm{the \ bank \ gets \ (euros \ 4.925)} \times M_{0} = \$ 6.242 \ \mathrm{mil}.
$$

3. Invest this amount in dollar deposit at rate $r_{\$} = 5\%$.

$$
\Longrightarrow \mathrm{Today \ the \ bank \ nets} \ 0.
$$

- At time $T$ the bank:
  - Receives 5 mil euros from the US firm (from fwd contract).
  - Uses this money to close the 5 mil euro loan.
  - Cashes in the dollar investment: (\$6.242 mil) $e^{r_{\$}T}$ = \$6.4 mil.
  - Gives this money to the client

$$
\Longrightarrow \text{Effective} \ F = \frac{\$ 6.4 \ \mathrm{mil}}{\mathrm{EUR} \ 5 \ \mathrm{mil}} = 1.28
$$

### Diagram Of Bank's Hedging Strategy

1. Firms and Bank agree: Bank will buy 5 mil euro (forward) at T for F=1.28 \$/Euro
2. (a) Bank borrows Euros $4.925\mathrm{m} = \mathrm{PV}(5\mathrm{m})$ at $r_e = 3\%$
   (b) Exchange them into dollars at $\mathsf{M}_0 = 1.2673 \, \text{\$/Euro}$
   (c) Invest proceeds of \$ 6.242 mil at $r_{\$}$ = 5%
3. Firms gives bank 5 mil Euros
4. (a) Bank uses Firm's payment to close 5 mil Euro loan
   (b) Bank liquidates \$ investment $6.242 e^{5\%}$ = \$6.4 mil
   (c) Gives the proceeds to the firm

Exchange Rate for firm = \$6.4mil / Eur 5 mil

$$
\begin{array}{l}
= 1.28 \ \$ / \text{Eur} \\
= \text{quoted} \ F \ \text{at} \ 0 \\
\end{array}
$$

0 = today

T = 6 month

### Forward Price Derivation

- Indeed, what is the payoff at time $T$ from the dollar investment in formulas?

$$
\begin{array}{l}
\mathrm{Payoff \ at} \ T = \left[\left(e^{-r_{e} \times T} \times 5 \ \mathrm{mil}\right) \times M_{0}\right] \times e^{r_{\$} \times T} \\
= M_{0} \times e^{(r_{\$} - r_{e}) \times T} \times 5 \ \mathrm{mil} \\
\Longrightarrow \mathrm{Effective} \ F = M_{0} \times e^{(r_{\$} - r_{e}) \times T} \\
\end{array}
$$

- $F =$ Forward rate.
- Since $F$ is determined at time 0 for an exchange of euros for dollars at $T$ we denote it as $F_{0, T}$

### Forward Price: A No Arbitrage Argument

- Consider a US investor who has \$ 100 million (mil) to invest for $T = 6$ months.
- There are two strategies:

A. Invest in 6-months U.S. Treasury bills at the rate $r_{\$} = 5\%$ yielding:

$$
\mathrm{Payoff \ strategy \ A \ at} \ T = \$ 100 \ \mathrm{mil} \times e^{r_{\$} T}
$$

B. (a) Exchange the \$100 mil into euros at rate $1/M_0$ = EUR/USD, (b) invest the proceeds in 6-month Euro Treasuries, and (c) enter into a forward contract to buy dollars at $F_{0, T}$.

$$
\mathrm{Payoff \ of \ strategy \ B \ at} \ T = \frac{\$ 100 \ \mathrm{mil}}{M_{0}} \times e^{r_{e} T} \times F_{0, T}
$$

- Both strategies final payoffs are known at time 0. Thus, we must have

$$
\mathrm{Payoff \ of \ strategy \ A \ at} \ T = \mathrm{Payoff \ of \ strategy \ B \ at} \ T
$$

or, substituting

$$
\$ 100 \ \mathrm{mil} \times e^{r_{\$} T} = \frac{\$ 100 \ \mathrm{mil}}{M_{0}} \times e^{r_{e} T} \times F_{0, T}
$$

- Solving for $F_{0, T}$ gives

$$
F_{0, T} = M_{0} e^{(r_{\$} - r_{e}) T}
$$

### Forward Price: A No Arbitrage Argument

- How do arbitrageurs keep the markets in line?
- Assume

$$
F_{0, T} < M_{0} \times e^{(r_{\$} - r_{e}) \times T}
$$

- Arbitrageur: "Buy cheap - Sell dear"

1. Enter into a forward contract with maturity $T$ to buy $N$ euros at forward rate $F_{0, T}$;
2. Borrow $N \times e^{-r_e \times T}$ euros and exchange them to $N \times e^{-r_e \times T} \times M_0$ dollars;
3. Invest $N \times e^{-r_{e} \times T} \times M_{0}$ dollars at the dollar rate $r_{\$}$.

$\Longrightarrow$ at 0 arbitrageur evens out.

- At $T$ the arbitrageur:
  - Receive $N$ euros from forward contract, and pays \$\$ F_{0, T} \times N\$ for them;
  - Pay back the euro loan of $N$ euros (as borrowed $N \times e^{-r_e \times T}$ grew to $N$ by $T$);
  - Receive proceeds $\left(N \times e^{-r_{e} \times T} \times M_{0}\right) \times e^{r_{\$} \times T}$ from dollar investment.

Dollar Profit at $T = N \times \left(M_0 \times e^{(r_{\$} - r_e)T} - F_{0, T}\right) > 0$

### Forward Price: A No Arbitrage Argument - The Reverse

What if

$$
F_{0, T} > M_{0} \times e^{(r_{\$} - r_{e}) \times T}?
$$

- Arbitrageur: "Buy cheap - Sell dear"

1. Enter into a forward contract with maturity $T$ to sell $N$ euros at forward rate $F_{0, T}$;
2. Borrow $N \times e^{-r_e \times T} \times M_0$ dollars and use it to buy $N \times e^{-r_e \times T}$ euros;
3. Invest $N \times e^{-r_e \times T}$ euros at euro rate $r_e$ until T.

$\Longrightarrow$ at 0 arbitrageur evens out.

- At $T$ the arbitrageur:
  - Receives \$ $F_{0, T} \times N$ from forward sale of euros in exchange of $N$ euros;
  - Position is covered by 3. above, as $N \times e^{-r_e T}$ euros at 0 grow up to $N$ by $T$;
  - Pay back loan of $(N \times e^{-r_e \times T} \times M_0) \times e^{r_{\$}T}$

Dollar Profit at $T = N \times \left(F_{0, T} - M_0 \times e^{(r_{\$} - r_e)T}\right) > 0$

### Example: April 4 2007

- The formula for the forward price is $F_{0, T} = M_0 \times e^{(r_{\$} - r_e)T}$. Does it work?
- Interest Rates on April 4 2007:

MARKET RATES

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|c|}
\hline
Apr 4 & Overnight & Day & ChangeWeek & Month & One month & Three months & Six months & One year \\ \hline
US\$ Libor* & 5.32125 & +0.015 & +0.010 & +0.023 & 5.32000 & 5.35000 & 5.33563 & 5.23656 \\ \hline
Euro Libor* & 3.85250 & +0.003 & +0.028 & +0.284 & 3.86538 & 3.94300 & 4.06863 & 4.20350 \\ \hline
£ Libor* & 5.30625 & -0.011 & -0.033 & +0.050 & 5.51000 & 5.63688 & 5.74625 & 5.88875 \\ \hline
Swiss Fr Libor* & 2.15000 & +0.010 & -0.023 & +0.130 & 2.20917 & 2.30000 & 2.41417 & 2.57000 \\ \hline
Yen Libor* & 0.62375 & -0.010 & -0.156 & +0.045 & 0.64063 & 0.66063 & 0.69625 & 0.78375 \\ \hline
Canada Libor* & 4.25000 & -0.002 & & & 4.26000 & 4.27583 & 4.29000 & 4.32000 \\ \hline
Euro Euribor & & & & & 3.86 & 3.94 & 4.07 & 4.20 \\ \hline
Sterling CDs & & & & & 5.46 & 5.59 & 5.69 & 5.83 \\ \hline
US\$ CDs & & & & & 5.27 & 5.28 & 5.28 & 5.18 \\ \hline
Euro CDs & & & & & 3.845 & 3.920 & 4.035 & 4.150 \\ \hline
US overnight repo & 5.25 & -0.010 & +0.005 & +0.020 & & & & \\ \hline
Fed Funds eff & 5.20 & -0.050 & -0.050 & -0.020 & & & & \\ \hline
US 3m Bills & 4.91 & -0.015 & -0.020 & -0.060 & & & & \\ \hline
SDR int rate & 4.09 & & & & & & & \\ \hline
EONIA & 3.84 & & +0.020 & +0.290 & & & & \\ \hline
EURONIA & 3.8369 & +0.0047 & +0.0240 & +0.2849 & & & & \\ \hline
SONIA & 5.2673 & & -0.0296 & +0.0404 & & & & \\ \hline
 & Overnight & OneWeek & Onemonth & Threemonths & Sixmonths & Oneyear & & \\ \hline
Interbank £ & 5.30-5.22 & 5.44-5.35 & 5.51-5.43 & 5.64-5.56 & 5.74-5.66 & 5.89-5.81 & & \\ \hline
\end{tabular}
\end{document}
```

*Libor rates come from BBA (see www.bba.org.uk) and are fixed at 11am UK time. Other data sources: US \$, Euro & Cds: dealers; SDR int rate: IMF; EONIA: ECB; EURONIA & SONIA: WMBA.

source: Financial Times www.ft.com

### Example: April 4 2007 (Contd.)

- The 1 month US and EURO Libor rates were $R_{\$} = 5.32\%$ and $R_{e} = 3.86538\%$.
- The continuous compounded interest rate are $r_{\$} = \log(1 + R_{\$} / 12) \times 12 = 5.3082\%$ and $r_e = \log(1 + R_e / 12) \times 12 = 3.8592\%$
- Since $M_0 = 1.3375$, we obtain that for $T = 1/12$

$$
F_{0, T} = M_{0} \times e^{(r_{\$} - r_{e}) \times 1/12} = 1.3391
$$

- which coincides with market forward exchange rate.
- The same steps for $T = 3/12$ yield $r_{\$} = 5.3145\%$ and $r_e = 3.9237\%$, and thus

$$
F_{0, T} = M_{0} \times e^{(r_{\$} - r_{e}) \times 3/12} = 1.3422
$$

- which (almost) coincides with the market forward exchange rate.
- And so on...

### The Determinant Of The Forward Price

- The forward price only depends on the interest rate differential of the two countries, i.e. $(r_{\$} - r_e)$
- If $r_{\$} > r_e$, then $F_{0, T} > M_0$ and if $r_{\$} < r_e$, then $F_{0, T} < M_0$.
- That is: There is no more information in the forward price about future exchange rates than there is in the interest rate differential.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/c367ebce-6d60-4546-a9bc-67e458f9fada/1afae7e6995dbd49473c92c9d79f01d70bc1fb87891312acddb59ac60935c7c8.jpg)

Data Source: Bloomberg

### The Value Of A Forward Contract

- Let's go back to the initial example:
- Recall that a US company was hedging a 5 million Euro receivable through a forward contract with $F_{0, T} = 1.28$.
- Assume that at time $t = 3$ months the Euro appreciated from $M_0 = 1.2673$ to $M_t = 1.29$
- If the US firm wants to cancel the contract with the bank, how much does it have to pay?
- The US firm can enter into the reverse forward contract with the bank, with payoff Dollar payoff at $T$ of reverse forward contract $= 5 \ \mathrm{mil} \times (M_T - F_{t, T})$

$$
\mathrm{Now:} \ F_{t, T} = M_{t} \times e^{(r_{\$} - r_{e}) \times (T - t)} = 1.29 \times e^{(0.05 - 0.03) \times 0.25} = 1.296 \ \$/\text{EUR}
$$

- The reverse contract neutralizes the former one.

### The Value Of A Forward Contract (Contd.)

Payoff at $T$ from forward + reverse forward $= 5\mathrm{mil}\times (F_{0, T} - M_T) + 5\mathrm{mil}\times (M_T - F_{t, T})$

$$
\begin{array}{l}
= 5 \ \mathrm{mil} \times (F_{0, T} - F_{t, T}) \\
= 5 \ \mathrm{mil} \times (1.28 - 1.296) = - \$ 80,000 \\
\end{array}
$$

$\Longrightarrow$ The US firm will have to pay the bank \$80,000 at $T$.

- The Present Value of $-$\$80,000 is the value of the original forward contract to the US firm:

$$
f_{t, T} = e^{-r_{\$} \times (T - t)} \times (F_{0, T} - F_{t, T}) \times 5 \ \mathrm{mil} = - \$ 79,006.2
$$

- Since it costs \$79,006.2 to close the position, the value of the forward contract to the firm must equal this amount. Viceversa, the value to the bank must be \$79,006.2
- The above formula is general: The value of a forward contract to sell euros at a prespecified price $K$ is always given by

$$
f_{t, T} = e^{-r_{\$} \times (T - t)} \times (K - F_{t, T})
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/c367ebce-6d60-4546-a9bc-67e458f9fada/c4644eab05a02ff07103c895c0591dd4425b02589583e565910a024470dfaa73.jpg)

The Value of a Forward Contract (contd.)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/c367ebce-6d60-4546-a9bc-67e458f9fada/828581f669cd51f46b969db2a6da63b8b58497f37ae770826b7edc1ab51dd45b.jpg)

$$
\mathrm{P/L} = 5 \ \mathrm{mil} \ (1.28 - M_{T})
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/c367ebce-6d60-4546-a9bc-67e458f9fada/8b3df1e033bafef832e1b1d46c0ab9eabe111c280267363763a135dd9d48448d.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/c367ebce-6d60-4546-a9bc-67e458f9fada/a3e9efa60aa671683f826b2b8e4a71e547712f81a14ac05782ff8005c6f18ec8.jpg)

$$
\mathrm{P/L} = 5 \ \mathrm{mil} \ (M_{T} - 1.296)
$$

Total $= 5$ mil $(1.28 - 1.296)$

$$
= - \$ 80,000
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/c367ebce-6d60-4546-a9bc-67e458f9fada/6783a6c0cfc346fd4befec6cbd7559e0114d3a62146dc766c169ff188ab80975.jpg)

### Forward Price And The Value Of A Forward Contract

- To summarize, we found:

1. The Forward (Delivery) Price – the price decided at time 0 to buy / sell goods (Euros) in the future – is given by

$$
F_{0, T} = M_{0} \times e^{(r_{\$} - r_{e}) T}
$$

2. The value of an existing forward contract to deliver goods (Euros) at preset price $K$ (determined some time in the past) is equal to the cost / profit of closing the contract:

$$
f_{t, T} = [K - F_{t, T}] \times e^{-r_{\$} (T - t)}
$$

- This is the value of forward contract to sell. What is the value of a forward contract to buy (i.e. a long forward contract?)
- Important Note: The value of a forward contract at inception $t = 0$ is zero.
- The Forward delivery price $K = F_{0, T}$, which makes $f_{0, T} = 0$.
- When two counterparties enter into a forward contract, they do not exchange any money.
- In fact, they agree to exchange money only in the future, depending on $M_T$.
- Finally, an equivalent formula is obtained by substituting $F_{t, T}$

$$
f_{t, T} = K e^{-r_{\$} (T - t)} - M_{t} e^{-r_{e} (T - t)}
$$

### Forward Contracts For Other Securities

- The earlier derivation was obtained for currency forwards.
- Similar derivations hold for other securities, such as stocks, bonds, and commodities.
- Here is a list of "formulas". A good exercise is to go over the steps again.

```latex
\begin{document}
\begin{tabular}{|l|l|}
\hline
Security & Forward Price \\ \hline
Currency (e.g. dollar vs euro) & $F_{0, T} = M_{0} \times e^{(r_{\$} - r_{e}) T}$ \\ \hline
Stock: no dividend & $F_{0, T} = S_{0} \times e^{r T}$ \\ \hline
Stock: dividend yield $q$ & $F_{0, T} = S_{0} \times e^{(r - q) T}$ \\ \hline
Stock: known Dividend $D$ at $T_{1} < T$ & $F_{0, T} = \left(S_{0} - D \times e^{-r T_{1}}\right) \times e^{r T}$ \\ \hline
Commodity: Storage cost $U$. No "convenience yield" & $F_{0, T} = (S_{0} + PV(U)) \times e^{r T}$ \\ \hline
Commodity: \% storage cost $u$. No "convenience yield" & $F_{0, T} = S_{0} \times e^{(r + u) T}$ \\ \hline
Commodity: \% storage cost $u$, convenient yield $y$ & $F_{0, T} = S_{0} \times e^{(r + u - y) T}$ \\ \hline
Bond: Zero Coupon with Maturity $T^{*} > T$ & $F_{0, T} = \frac{Z(0, T^{*})}{Z(0, T)}$ \\ \hline
Bond: with Semi-annual Coupon $c$, Maturity $T_{n}$ & $F_{0, T} = \sum_{i = m + 1}^{n} \frac{c}{2} \times \frac{Z(0, T_{i})}{Z(0, T)} + \frac{Z(0, T_{n})}{Z(0, T)}$ \\
Payment dates $T_{1},\ldots, T_{n}$ and with $T_{m} = T$ & \\ \hline
\end{tabular}
\end{document}
```

- In all cases, the value of a forward contract at time $t > 0$ (after initiation) is:

$$
f_{t, T} = e^{-r (T - t)} \left[F_{0, T} - F_{t, T}\right]
$$

### Example 1: The Forward Price Of A Stock With Known Dividend Payment

- Consider the a stock with price $S_{0}$ which pays a known dividend at time $T_{1} < T$.
- The pricing formula $F_{0, T} = (S_0 - PV(D))e^{rT}$.
- Arbitrage argument. What if

$$
F_{0, T} > (S_{0} - PV(D)) e^{r T}?
$$

- Arbitrageur:
- At time 0:

(a) Short forward $F_{0, T}$; (b) borrow $(S_0 - PV(D))$ with maturity $T$ and $PV(D)$ with maturity $T_1$; (c) use total \$\$$S_{0}$ to buy stock.

- At time $T_{1}$:
  - Receive dividend $D$ from stock. Use it to replay $PV(D)$ loan at $T_{1}$.

- At time $T$:

(a) Receive $F_{0, T}$ from sale of stock (which is covered, because of (c) above); (b) repay the loan $(S_0 - PV(D))e^{rT}$

$$
\mathrm{Payoff \ at} \ T = F_{0, T} - (S_{0} - PV(D)) e^{r T} > 0
$$

### Example 2: The Forward Price Of A Stock With Constant Dividend Yield

- Dividend Yield = Stock's payoff per unit of stock price = $D / S_t$
- Continuously compounded dividend yield $q$
- $\Rightarrow$ Total dividend in a small interval $[t, t + dt]$ is $D_{t} = q \times S_{t} \times dt$
- Forward price: $F_{0, T} = S_0 \times e^{(r - q)T}$

What if

$$
F_{0, T} > S_{0} \times e^{(r - q) T}?
$$

1. Short Forward at $F_{0, T}$
2. Borrow $S_0 \times e^{-qT}$ and buy $N_0 = e^{-qT} < 1$ shares.
3. For every $t$ reinvest the dividends in the stock.

Change in number of shares in a small interval $dt$: $(N_{t + dt} - N_t) = \frac{N_t \times D_t}{S_t} = N_t \times q \times dt$

Total number of shares between 0 and $T$: $N_{T} = N_{0} \times e^{qT} = e^{-qT} \times e^{qT} = 1$

- The arbitrageur has exactly the right amount of shares to cover the short forward position.

$$
\text{Payoff} \ T = F_{0, T} - S_{0} \times e^{(r - q) T} > 0 \tag{1}
$$

### The Forward Price Of Commodities

- Can we apply the same formula for commodities?
- What if the commodity is held by economic agents for consumption purposes as well.
- Stocks, bonds and currencies are held for investment reasons.
- Most commodities are held by economic agents for an economic purpose, such as heating houses, or feeding hungry people.
- What may go wrong in the "no arbitrage strategy"?

## Covered Interest Rate Parity Violation During The 2007-2009 Financial Crisis

- Sometimes, arbitrageurs fail to keep markets together.
- The 2007-2009 provides a simple example.
- Define the discrepancy between forward and the "theoretical" forward rate as:

$$
\begin{array}{l}
Basis = \mathrm{Traded \ forward \ Rate - theoretical \ forward \ Rate} \\
= F_{t, t + m}^{traded} - F_{t, t + m} \\
\end{array}
$$

where $m =$ maturity (e.g. 3 month, 6 months etc.), and recall

$$
F_{t, t + m} = M_{t} e^{(r_{\$} - r_{e}) m}
$$

- The latter relation is also called "Covered Interest Rate Parity" (CIP)
- If Basis above is not close to zero, we say that there is a violation of the covered interest rate parity.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/c367ebce-6d60-4546-a9bc-67e458f9fada/6ff85b2bfc825ff4335d92527019784e1e0d320906abc0dd2f54e65d261b74cd.jpg)

CIP Violation during the 2007-2009 Financial Crisis: Euro / Dollar

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/c367ebce-6d60-4546-a9bc-67e458f9fada/a754f959cfb7e2920954d562edad5681f554f8721c0d15f45e2994f401ec036c.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/c367ebce-6d60-4546-a9bc-67e458f9fada/0824fda7a505b7779668d322bd6da2c8b7160e1bfa32381aa8567deb7a26994e.jpg)

CIP Violation during the 2007-2009 Financial Crisis: UKP / Dollar

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/c367ebce-6d60-4546-a9bc-67e458f9fada/e60c4be09fc90e2eab961ec5900cae403814a1809cb825e78a5720e668c35f86.jpg)

### Why May Arbitrage Fail?

- There are several generic reasons, such as:

1. Lack of borrowing capacity.
  - Most arbitrage trades require long-short strategies and leverage to increase the return on capital.
  - If borrowing is difficult due to market disruptions or increase in risk aversion of lenders (e.g. banks), it may not be worthwhile to engage in the arbitrage strategy.

2. Funding risk.
  - An arbitrage strategy must be held until maturity $T$ to payoff. Thus, it may imply large outflows if spreads increase before $T$. Lenders may ask for more collateral (margin calls) while holding the position.
  - If arbitrageur thinks it cannot hold the position until maturity, it won't take the trade.

3. Lack of capital or fear of withdrawals.
  - Many hedge funds experience large outflows if trading positions lose money.
  - A possible increase in spreads generates mark-to-market losses, which can require the fund to close the position before arbitrage pays off.
  - $\Longrightarrow$ Snowball effect: As some funds must close the positions, the spread increases, generating mark-to-market losses to other funds.
  - Lock up provisions mitigate the problem, but competition across hedge funds may make them hard to implement

### Why Did Covered Interest Rate Parity Fail During The 2007-2009 Crisis?

- Holding US Treasuries has its own "convenience yield" when everyone needs cash collateral.
- During the crisis, from the graph, we had the basis being positive. That is:

$$
F_{t, t + m}^{data} > F_{t, t + m} = M_{t} e^{(r_{\$} - r_{e}) m}
$$

- Recall that in this case, an arbitrage trade requires the following:

(a) Short forward; (b) borrow dollars (or sell US Treasuries); (c) change them into Euro; (d) invest in Euro (or buy Euro bonds)

- But point (b) failed during the crisis, as:

1. Increase in credit risk concerns impaired the ability of financial institutions to borrow;
2. Holding safe dollars (US Treasuries) is valuable during a financial crisis for liquidity management

- US Treasuries are the only collateral accepted for short-term lending transactions.
- It is very valuable to hold on to them for future cash management

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/c367ebce-6d60-4546-a9bc-67e458f9fada/a073afe7aee5abdcaa80fa9740d3c9bb9a3c46c2a3181fb00c7f5e0cb07e1537.jpg)

Cross-Currency Basis Risk after the Crisis Figure 5 from Du, Tepper, and Verdelhan (2017), "Deviations form Covered Interest Rate Parity," NBER working paper.

### Issues With Libor

- Until January 31, 2014: British Bankers Association (BBA) LIBOR
  - Survey of a panel of banks
  - Banks could underestimate their borrowing costs
  - Conflict within the bank: impact of LIBOR setting on derivatives trading.

- Now ICE LIBOR
  - ICE now the benchmark administrator
  - Regulator in UK: Financial Conduct Authority (FCA)
  - Rules for fall-back rates if there are issues

### Alternatives

- SOFR: "Secured Overnight Financing Rate"
- ARRC: Alternative Reference Rates Committee.
- Others:
  - SONIA (Sterling Over Night Indexed Average)
  - EONIA (Euro Overnight Index Average)
  - TONAR (Tokyo Overnight Average Rate)
  - SARON (Swiss Average Rate Over-Night)
  - Measure of overnight secured borrowing.
  - Collateralized US Treasuries in the repo market.
  - Very liquid and likely resilient markets: \$1 trillion in daily volume
  - Contrast: USD LIBOR three-month tenor: about \$1 billion
  - Published by New York Fed. Along with 30-day, 90-day and 180-day averages

### Transition

- LIBOR market: \$200+ trillion of financial transactions contracts reference LIBOR
- Transition was set for end of 2021, but now 18 month extension
- LIBOR permeates many contracts for in securities markets and the corporate world: leases, debt,...
- Derivatives market with Central Clearing Partners (e.g. CME...).
- Cleared US Dollar interest rate swap contracts at CME: move to SOFR discounting.
- Intercontinental Exchange (ICE) Benchmark Administration: USD LIBOR benchmarks will stop June 30, 2023
- Fannie and Freddie: have moved to SOFR contracts
- New York Fed: conducts repo and reverse repo through tri-party repo.
- OTC SOFR swaps
- SOFR caps products have developed since September 2020

### SOFR Derivatives

As an example: at the CME

- Futures: 3-month and 1-month. Using compounding or simple averages.
- Term SOFR Reference rates based on futures contracts.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/c367ebce-6d60-4546-a9bc-67e458f9fada/a951ab61ca00f68a3b99703e4a42b689e970f800ae3678f15552b38b35b85e26.jpg)

Some History

## Futures Contracts

- Futures contracts are similar to forward contracts, as they are agreements between two counterparties to exchange a pre-specified amount of good (e.g. corn, or Euros) at a prespecified time for a predetermined price.
- The are three notable differences between forwards and futures:

1. The contracts are traded on an exchange (e.g. CME);
2. The contracts are standardized (size, maturity);
3. Profits and losses are mark to market.

- Standardization is important to improve liquidity
  - but it introduces basis risk: Mismatch between futures contract size and maturity versus actual corporate needs.

- Mark to market is important: decreases probability of default
  - At the end of each trading day, profits and losses accrue to the account of the trader.
  - If trading losses become too large, exchange issues a margin call: the trader must post additional collateral or the position is immediately closed.

### Futures Contracts Types

- Futures contracts are available on numerous goods and financial securities.

- Commodities, such as
  - Corn, Wheat, Soybean, etc.
  - Cocoa, Coffee, Orange Juice,
  - Gold, Silver etc.
  - Crude Oil, Natural Gas etc.

- Currencies, such as
  - USD/EUR, USD/UKP, USD/Australian Dollar, Euro/Australian Dollar etc.

- Equities, such as
  - S&P 500, NASDAQ 100, RUSSELL 2000, S&P 500/Citigroup Value, etc.

- Interest rates, such as
  - Eurodollar, 30 year T-Bond, 10-year T-Note etc.

- Weather, such as
  - Heating Degree in Atlanta, Chicago, New York, Las Vegas etc.

- Energy, such as Electricity etc.

### Futures Contracts Mechanics

- Futures price $\widehat{F}_{t, T} =$ delivery price at which trader who is short the futures agrees at $t$ to sell the underlying commodity or securities at $T$ to the trader who is long the futures.

- As futures price move over time, profits and losses accrue to both counterparties
- The party Long the futures – who agrees to buy the good at maturity – gains when prices increase, and his/her daily P/L is given by

$$
\mathrm{Daily \ P/L} = \mathrm{Contract \ Size} \times \left(\widehat{F}_{t, T} - \widehat{F}_{t - 1, T}\right)
$$

- The party Short the futures – who agrees to sell the good at maturity – gains when prices decrease, and the P/L is the opposite.

- Delivery Months: Futures are referred to by their delivery months, specified by the exchange.
  - Only during these months can delivery of the good occur (typically, the exact period within the month is specified as well)
  - While we will keep this issue in mind, for simplicity we will typically think that delivery must occur on a specific date.
  - Delivery must occur at a given location, also specified by the contract.

### Futures Contracts: Example

CURRENCY FUTURES

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|c|}
\hline
Apr 5 & & Open & Latest & Change & High & Low & Est. vol & Open int \\ \hline
€-Sterling* & Jun & 0.6786 & 0.6833 & +0.0047 & 0.6829 & 0.6783 & 32 & 7,409 \\ \hline
€-Yen* & Jun & 157.58 & 158.37 & +0.79 & 158.37 & 157.52 & 1,502 & 22,836 \\ \hline
\$-Can \$ † & Jun & 0.8645 & 0.8709 & +0.0059 & 0.8723 & 0.8642 & 40,713 & 109,313 \\ \hline
\$-Euro € † & Jun & 1.3408 & 1.3463 & +0.0059 & 1.3480 & 1.3390 & 137,588 & 203,013 \\ \hline
\$-Euro € † & Sep & 1.3448 & 1.3501 & +0.0059 & 1.3517 & 1.3430 & 185 & 1,531 \\ \hline
\$-Sw Franc † & Jun & 0.8247 & 0.8278 & +0.0034 & 0.8299 & 0.8238 & 43,982 & 59,858 \\ \hline
\$-Yen † & Jun & 0.8504 & 0.8506 & -0.0002 & 0.8525 & 0.8481 & 68,521 & 186,570 \\ \hline
\$-Yen † & Sep & 0.8602 & 0.8604 & -0.0002 & 0.8619 & 0.8579 & 124 & 8,439 \\ \hline
\$-Sterling † & Jun & 1.9751 & 1.9699 & -0.0046 & 1.9763 & 1.9662 & 78,095 & 124,217 \\ \hline
\$-Aust \$ † & Jun & 0.8168 & 0.8175 & +0.0009 & 0.8195 & 0.8149 & 21,724 & 117,293 \\ \hline
\$-Mex Peso † & Jun & 90450 & 90625 & +75 & 90750 & 90425 & 3,114 & 13,306 \\ \hline
\end{tabular}
\end{document}
```

Sources: * NYBOT; Sterling €100,000 and Yen: €100,000. †CME: Australian \$: A\$100,000, Canadian \$: C\$100,000, Euro: €125,000; Mexican Peso: 500,000, Swiss Franc: SFr125,000; Yen: \$Y_{12}\$0.5m (\$ per Y100); Sterling: £62,500. CME volume, high & low for pit & electronic trading at settlement. Contracts shown are based on the volumes traded in 2004.

### Futures Contracts Convergence and Margins

- Convergence Property: At maturity $T$ we must have $\widehat{F}_{T, T} = M_T$.
  - Otherwise, there is an immediate arbitrage at $T$.
  - If $F_{T, T} > M_T \Longrightarrow$ (a) short the futures; (b) buy underlying; (c) deliver.
  - If $F_{T, T} < M_T \Rightarrow$ (a) long the futures; (b) sell underlying (if you have it); (c) buy it back from futures.

- Margin Limits
  - Both counterparties must set up an amount of collateral with the exchange, called initial margin.
  - As Profits and Losses accrue on the account, the margin may be eroded over time.
  - If the amount falls below a maintenance margin, the exchange issues a margin call.
  - The trader must post additional collateral up to the initial margin to keep the position open, otherwise it is closed.
  - For instance, on CME Euro FX Futures:

Initial Margin = \$2,995; Maintenance Margin = \$1,700.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/c367ebce-6d60-4546-a9bc-67e458f9fada/3c38d2da2b5bdecfe5b6e60d71caecfa915e9dbfac81f3f1d8c7a48ddd36e3de.jpg)

CME Euro FX Futures

### Example: Hedging With Futures

- Consider earlier example: The US firm could hedge with futures contracts instead of forwards.
- CME Euro FX Futures have size of 125,000 Euro and expire on Mar, Jun, Sep and Dec.

Suppose that $T = \operatorname{Mar} 2007$ and $\widehat{F}_{0, T} = 1.28$.

- US firm can short $k = 5$ mil/125,000 = 40 futures contracts.
- Every day $t$, $(P/L)_t = k \times 125,000 \times (\widehat{F}_{t - 1, T} - \widehat{F}_{t, T}) = 5$ mil $\times (\widehat{F}_{t - 1, T} - \widehat{F}_{t, T})$
- At maturity $T$:

$$
\begin{array}{l}
\mathrm{Payoff \ at} \ T = (P/L)_{1} + (P/L)_{2} + \dots + (P/L)_{T} \\
= 5 \ \mathrm{mil} \times (\widehat{F}_{0, T} - \widehat{F}_{1, T}) + 5 \ \mathrm{mil} \times (\widehat{F}_{1, T} - \widehat{F}_{2, T}) + \dots + 5 \ \mathrm{mil} \times (\widehat{F}_{T - 1, T} - \widehat{F}_{T, T}) \\
= 5 \ \mathrm{mil} \times (\widehat{F}_{0, T} - \widehat{F}_{T, T}) \\
= 5 \ \mathrm{mil} \times (\widehat{F}_{0, T} - M_{T}) \\
= \mathrm{Payoff \ of \ forward \ Contract \ at} \ T \ (\mathrm{if} \ \widehat{F}_{0, T} = F_{0, T}) \\
\end{array}
$$

### Hedging With Futures

- Caveat: The total payoff from using a constant number of contracts $k$ every period is actually not exactly equivalent to the one of forward contract.
- Because of mark to market, trading profits and losses accrue over time to the hedger.
- The correct statement of the payoff at $T$ is in fact:

$$
\begin{array}{l}
\mathrm{Payoff \ at} \ T = (P/L)_{1} \times e^{r_{\$} \times (T - dt)} + (P/L)_{2} \times e^{r_{\$} \times (T - 2dt)} + \dots + (P/L)_{T - 1} \times e^{r_{\$} \times dt} + (P/L)_{T} \\
\mathrm{where} \ dt = 1/365 = 1 \ \mathrm{day \ (in \ annual \ units)} \\
\end{array}
$$

- To obtain the forward contract's payoff, we must tail the hedge and choose the number of contracts $k_{t}$ per period as (recall $\frac{5\mathrm{mil}}{125,000} = 40$):

$$
k_{0} = 40 \times e^{-r_{\$} \times (T - dt)}; \ k_{1} = 40 \times e^{-r_{\$} \times (T - 2dt)}; \ \ldots; \ k_{i} = 40 \times e^{-r_{\$} \times (T - idt)}; \ \ldots; \ k_{T - 1} = 40
$$

- which yields the payoff sequence

$$
\begin{array}{l}
\mathrm{Payoff \ at} \ T = \left[5 \ \mathrm{m} \times e^{-r_{\$} \times (T - dt)} \times (\widehat{F}_{0, T} - \widehat{F}_{1, T})\right] \times e^{r_{\$} \times (T - dt)} + \\
+ \left[5 \ \mathrm{m} \times e^{-r_{\$} \times (T - 2dt)} \times (\widehat{F}_{1, T} - \widehat{F}_{2, T})\right] \times e^{r_{\$} \times (T - 2dt)} + \dots + \left[5 \ \mathrm{m} \times (\widehat{F}_{T - 1, T} - \widehat{F}_{T, T})\right] \\
\end{array}
$$

$$
\begin{array}{l}
= 5 \ \mathrm{mil} \times (\widehat{F}_{0, T} - \widehat{F}_{1, T}) + 5 \ \mathrm{mil} \times (\widehat{F}_{1, T} - \widehat{F}_{2, T}) + \dots + 5 \ \mathrm{mil} \times (\widehat{F}_{T - 1, T} - \widehat{F}_{T, T}) \\
= 5 \ \mathrm{mil} \times (\widehat{F}_{0, T} - M_{T}) \\
\end{array}
$$

### Speculating With Futures

- Futures are also excellent vehicles to speculate on a view about the variation in the underlying.
- Example: Let today be Friday Jan 1, 2010. The Euro/Dollar exchange rate is $M_0 = 1.4326$.
- A speculator believes that the Euro/Dollar rate will increase over the weekend.
- Consider two strategies:

1. Funded Speculative Position:
  - Buy 125,000 Euros for \$179,075 = 125,000 $\times$ 1.4326.

2. Unfunded Speculative Position through Futures
  - Go long 1 Futures contract at the CME. E.g. The March 10 Futures price on Jan 1, 2010 was $F_{t, T} = 1.4334$
  - Post initial margin \$2,995.

### Speculating With Futures (Cntd.)

- On Monday, Jan 4, 2010 $(t')$, the exchange rate was $M_{t'} = 1.4413$ and the Mar 10 Futures was $F_{t', T} = 1.441$.

1. Funded Speculative Position: The position is \$ 180,162.5 = 125,000 $\times$ 1.441. Thus

$$
\mathrm{Profit} = \$180,162.5 - \$179,075 = \$ 1,087.5
$$

$$
\mathrm{Return \ on \ Investment} = \frac{\$1,087.5}{\$179,075} = 0.607\%
$$

2. Unfunded Speculative Position through Futures:

$$
\mathrm{Profit} = 125,000 \times (1.441 - 1.4334) = \$ 950
$$

$$
\mathrm{Return \ on \ Investment} = \frac{\$950}{\$2,995} = 31.72\%
$$

- Futures provide a much higher profit (or loss) as a percentage of investment.
- Moreover, the margin can be cash equivalent (e.g. T-bills) and so it earns interest.
- Indeed, a futures position is equivalent to a Levered investment in the underlying security:

(a) Borrow \$179,075 = 125,000 $\times$ 1.4326 minus the safety margin (haircut) \$2,995 (b) Invest in Euros (as before).

- The return on investment is then \$1,087.5 / \$2,995 = 36.3%.

### The Futures Price Vs The Forward Price

- Fact: If interest rates are constant, the futures price equals the forward price:

$$
\widehat{F}_{t, T} = F_{t, T}
$$

Why?

- Hedging with futures or with forwards cost nothing at inception $t$ and provide the same payoff at $T$.
- The delivery price has to be the same using either contract.
- If not $\Longrightarrow$ arbitrage opportunity: "Short" the contract with higher delivery price and "Long" the one with lower delivery price. Sure profits at $T$!

- Why this condition only holds if interest rates are constant?
  - Because the "tailing of the hedge" works exactly only when interest rates are constant.
  - If interest rates move over time, the payoff at $T$ of a Futures contract is only approximately $\widehat{F}_{0, T} - M_T$, as there is some cumulated interest rate determined by the sequence of $(P/L)_t$ over time.

## Swaps

- Back to the example, assume the US firm is due to receive the 5 mil euros in 5 equal installments, every 6 months.
- The US company can enter into five forward (or futures) contracts, and hedge each single installment as a stand-alone cash flow.
- $M_0 = 1.2673$, $r_{\$} = 5\%$, $r_e = 3\%$ imply the following forward rates

Forward Rates

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
Maturity T & 0.5 & 1 & 1.5 & 2 & 2.5 \\ \hline
Forward Rate $F_{0, T}$ & 1.28 & 1.2929 & 1.3059 & 1.3190 & 1.3323 \\ \hline
\end{tabular}
\end{document}
```

- For each cash flow, same arguments as above hold.

### Swaps Definition

- Alternatively, the US firm can also enter into a FX swap:
- A FX swap is a contractual agreement between two counterparties to exchange prespecified amounts of moneys denominated in different currencies.
- For instance, the swap contract between the US firm and a bank may be specified as follows:

1. US firm pays Bank 1 mil euros on every date $T = 0.5, 1, \ldots, 2.5$;
2. Bank pays US firm \$1mil $\times K$, say 1.306 mil, dollar on the same dates.

- What is the net cash flow for the firm from the swap at any payment date?
- We need to express cash flows in the same currency.
- Every $T$, the firm receives 1 mil $\times K$ dollars, and must pay 1 mil $\times M_T$ dollars.

Net \$ CF at $T = 1 \ \mathrm{mil} \times (K - M_T)$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/c367ebce-6d60-4546-a9bc-67e458f9fada/124a09ff926ae833c99630f23d8dcbd7806a2f7056fcd793383a9cf09ae5cc44.jpg)

Example: Hedging with Swaps

### Swap Rate

- How is the swap rate $K = 1.306$ determined?
- The Swap Rate $K$ is chosen at time 0 so that the Value of the swap is equal to zero.
- $\Rightarrow$ no exchange of money at inception but only in the future.
- How can we determine the value of a swap?
- Let's use the same methodology we used to value forwards, that is, let's find how much would the firm pay to get out of the position.
- No arbitrage condition: Suppose the firm wants to close the swap exposure by using a sequence of forwards.
- The payoff for every $T = 0.5, \ldots, 2.5$ is

$$
\begin{array}{l}
\mathrm{Payoff} \ T \ \mathrm{of \ swap + reverse \ forward} = 1 \ \mathrm{mil} \times (K - M_{T}) + 1 \ \mathrm{mil} \times (M_{T} - F_{0, T}) \\
= 1 \ \mathrm{mil} \times (K - F_{0, T}) \\
\end{array}
$$

### Swap Rate Valuation

- The Present Value of these sequence of net payments is

$$
\begin{array}{l}
\mathrm{PV \ of \ swap + reverse \ forward \ cash \ flows} = e^{-r_{\$} \times 0.5} \times 1 \ \mathrm{mil} \times (K - F_{0,0.5}) + \\
+ e^{-r_{\$} \times 1} \times 1 \ \mathrm{mil} \times (K - F_{0,1}) + \ldots + \\
+ \ldots + e^{-r_{\$} \times 2.5} \times 1 \ \mathrm{mil} \times (K - F_{0,2.5}) \\
\end{array}
$$

- No arbitrage $\Longrightarrow$ At time 0, the PV of swap + reverse forwards cash flows = 0
- Why? $K$ and $F_{0, T}$ are chosen so that it costs nothing to enter into a swap or forward.
- If PV of these cash flows $\neq 0$, infinite profits are available.
- We obtain one equation in one unknown $K$

$$
\begin{array}{l}
0 = e^{-r_{\$} \times 0.5} \times 1 \ \mathrm{mil} \times (K - F_{0,0.5}) + e^{-r_{\$} \times 1} \times 1 \ \mathrm{mil} \times (K - F_{0,1}) + \dots + \\
+ \dots + e^{-r_{\$} \times 2.5} \times 1 \ \mathrm{mil} \times (K - F_{0,2.5}) \\
\end{array}
$$

### Swap Rate Formula

- The solution to the equation is a weighted average of forward prices:

$$
\mathrm{Currency \ Swap \ Rate} = K = w_{0.5} F_{0.5} + w_{1} F_{0,1} + \ldots + w_{2.5} F_{0,2.5}
$$

- The weights $w_{T}$ are given by the relative time value of money across maturities

$$
w_{T} = \frac{e^{-r_{\$} \times T}}{e^{-r_{\$} \times 0.5} + e^{-r_{\$} \times 1} + \ldots + e^{-r_{\$} \times 2.5}}
$$

- We obtain an alternative (equivalent) formulation by substituting the forward prices $F_{0, T} = M_0 e^{(r_{\$} - r_e)T}$:

$$
\mathrm{Currency \ Swap \ Rate} = K = M_{0} \frac{e^{-r_{e} \times 0.5} + e^{-r_{e} \times 1} + \ldots + e^{-r_{e} \times 2.5}}{e^{-r_{\$} \times 0.5} + e^{-r_{\$} \times 1} + \ldots + e^{-r_{\$} \times 2.5}}
$$

- The FX Swap rate equals the current exchange rate multiplied by the ratio of the relative borrowing costs in the two currencies.

### Hedging With Swaps Versus Forwards

- The payoff profile from the sequence of forwards and one swap is different:

1. The sequence of forwards imply the US firms gets less money early on, and more later on (from \$ 1.28 mil to \$1.3323 mil).
2. The swap implies the firm gets a constant amount \$1.306 mil every six months.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/c367ebce-6d60-4546-a9bc-67e458f9fada/bfe5d371b7e07c0993605a6ab2a62be0873ac30de30fa68545c1f80a994dfb8a.jpg)

- Both strategies perfectly hedge the exposure, as the exchange rate risk is eliminated and both payoff profiles are known at 0.

### The Value Of The Swap Contract After Initiation

- What is the value of a swap contract after initiation?
- Let today be $t$, $K$ be the swap rate of the existing swap, and $T_{1}, T_{2}, \dots, T_{n}$ be the remaining payment periods.
- Use the same logic as for forward and ask: What would the firm have to pay to get out of the position?
- As before, using a sequence of forwards to get out of the position gives

$$
\begin{array}{l}
V_{t}^{swap} = \mathrm{PV \ of \ swap + reverse \ forward \ cash \ flows} \\
= e^{-r_{\$} \times (T_{1} - t)} \times (K - F_{t, T_{1}}) + e^{-r_{\$} \times (T_{2} - t)} \times (K - F_{t, T_{2}}) + \ldots + e^{-r_{\$} \times (T_{n} - t)} \times (K - F_{t, T_{n}}) \\
\end{array}
$$

Obtaining the formula

$$
V_{t}^{swap} = \sum_{i = 1}^{n} e^{-r_{\$} (T_{i} - t)} \times (K - F_{t, T_{i}})
$$

- Substituting the value of $F_{t, T_i} = M_t \times e^{(r_{\$} - r_e) \times (T_i - t)}$ we obtain the equivalent formula:

$$
V_{t}^{swap} = K \times \left(\sum_{i = 1}^{n} e^{-r_{\$} (T_{i} - t)}\right) - M_{t} \times \left(\sum_{i = 1}^{n} e^{-r_{e} (T_{i} - t)}\right)
$$

### Plain Vanilla FX Swaps

- In the example above I assumed the counterparties swap equal payments in the two currencies.
- The US Firm pays Eur 1 Mil to the Bank every six months and at the same time the Bank pays \$1.306 mil to the US Firm.
- The plain vanilla FX (or currency) swap is slightly different, as the two counterparties not only exchange a series of equal cash flows over time (coupons), but also a (larger) notional amount at both the initiation and maturity of the contract.
- The primary use of plain vanilla FX swaps is to allow firms to borrow in any foreign currency and hedge the foreign exchange risk.
- Because of this, it is important for the firm to also hedge the principal amount of the loan, which must be paid at maturity of the bond.

### Plain Vanilla FX Swaps - 2

- Example: A US firm issues 100 million Euro-denominated 5 year note with coupon $c = 4\%$. The firm exchanges the proceeds into \$126.73 million at the current exchange rate $M_0 = 1.2673$ \$/Eur.
- If the firm's revenues are mainly in US dollars, then the firm is subject to exchange rate risk.
- Every six month, the firm must pay Eur 2 mil = 100 mil $\times$ 2%. In addition, at $T = 5$, the firm must pay back the Eur 100 mil principal.
- A plain vanilla FX swap that hedges this exchange rate risk is as follows:
  - US Firm receives from Bank 2 mil euros every six months, plus 100 mil euros at $T$;
  - US Firm pays to bank $K \times 2$ mil dollars every six month, plus $K \times 100$ mil dollars at $T$.

What is Swap Rate $K$?

- It is that value of the exchange rate that makes the value of the swap null at inception.

### Plain Vanilla FX Swaps - 3

What is the value of the swap to the US firm?

- In the swap contract, the firm is long a Euro-denominated 4% coupon bond with 100 mil Euro principal, and short K dollar-denominated bond 4% with principal \$100 mil.
- Let $B^{e}(t, T)$ and $B^{\$}(t, T)$ be the value of the two bond (in their respective currencies).

$$
\text{E.g. If the (c.c.) rates are constant across maturities at} \ r_{e} = 4\% \ \text{and} \ r_{\$} = 6\%, \ \text{then} \ B^{e}(0, T) = 100\mathrm{mil} \times 2\% \left(e^{-r_{e}\times 0.5} + e^{-r_{e}\times 1} + \dots +e^{-r_{e}\times 5}\right) + 100\mathrm{mil}e^{-r_{e}\times 5} = \text{EUR} \ 99,819,335
$$

$$
B^{\$}(0, T) = 100 \ \mathrm{mil} \times 2\% \left(e^{-r_{\$}\times 0.5} + e^{-r_{\$}\times 1} + \dots +e^{-r_{\$}\times 5}\right) + 100 \ \mathrm{mil}e^{-r_{\$}\times 5}
$$

- The value of the swap at $t$ is then

$$
V_{t}^{swap} = M_{t} \times B^{e}(t, T) - K \times B^{\$}(t, T)
$$

- Therefore, at time $t = 0$, the value of $K$ that makes the value of the swap equal to zero is

$$
V_{0}^{\text{swap}} = 0 \Longrightarrow M_{0} \times B^{e}(0, T) = K \times B^{\$}(0, T) \Longrightarrow K = M_{0} \times \frac{B^{e}(0, T)}{B^{\$}(0, T)}
$$

- This is the same expression we obtained earlier when the last (notional) payment is zero.
- In this case we obtain $K = 1.2673 \times 1.0957 = 1.389$
- US firm pays 2 $\times$ K = \$2.778 mil every 6 months, plus \$138.9 mil at maturity.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/c367ebce-6d60-4546-a9bc-67e458f9fada/833023e23f6207326e34251e5b21c4b494d15b3df257e846000ae0abe75679f3.jpg)

Plain Vanilla FX Swaps - 4

### Other Swaps

- The number of swaps that exist in the market is very large.
- The most common are:

1. Interest rate swaps
  - One party pays a fixed coupon and the other party pays a floating rate.
  - Plain vanilla IR swaps have floating rate given by LIBOR

2. Energy swaps
  - One party pays a fixed amount and the other party pays a floating amount linked to some energy index, such as oil prices, gas prices, etc.

3. Basis swaps
  - Both parties make floating payments, but linked to different indices, such as LIBOR versus Treasuries

4. Total return swaps
  - Both parties make floating payments, linked to the total return of different securities.
  - E.g. one party may pay the total return of Apple stock and the other the total return of Microsoft stock.

### Overnight Index Swaps (OIS)

- In a OIS, the two counterparties agree to exchange fixed for floating payments, where the floating payment is tied to the cumulative return from an overnight rate
- Federal funds rate, SOFR in US. Europe: short-term rate (€STR), (formerly Euro OverNight Index Average (EONIA) rate).
- Given a notional $N$, the floating rate payment at time $T_{i}$ is

$$
CF(T_{i}) = N \left(\prod_{j = 1}^{n_{j}} \left(1 + r_{t_{j}} \delta\right) - 1\right) \tag{4}
$$

- where $\delta$ is the daily interval, $r_t$ is the reference (annualized) overnight rate, and $n_j$ is the number of days between reset periods.
- The day count convention is normally Actual/360.
- In the continuous time limit $(\delta \to 0)$, we have that

$$
CF\left(T_{i}\right) = N \left(e^{\int_{T_{i - 1}}^{T_{i}} r(u) du} - 1\right) \tag{5}
$$

- OIS with maturity less than 1 year have only one payment at the maturity.
- OIS with longer maturities have normally quarterly payments.

### What Is The Value Of OIS?

- The value of OIS is the difference between the floating leg and the fixed leg:

$$
V_{t}^{OIS} = V_{t}^{Floating} - V_{t}^{Fixed} \tag{6}
$$

- Floating Leg: At reset dates, and assuming the payment of a principal at maturity of the swap, the value of the floating leg is par.
- Indeed, investing the notional $N$ in the overnight index daily gives at $T_{i}$

$$
N \prod_{j = 1}^{n_{j}} \left(1 + r_{t_{j}} \Delta\right) = CF\left(T_{i}\right) + N
$$

- $\Longrightarrow$ we can replicate the floating payments, plus a residual of notional at maturity $T_{i}$, with an investment $N$ at time 0.
- It follows

$$
V_{0}^{Floating} = N
$$

- Fixed leg: Given a proper discount function $Z^{OIS}(0, T_i)$, we obtain

$$
V_{0}^{Fixed} = N c \Delta \sum_{i = 1}^{n} Z^{OIS}(0, T_{i}) + N Z^{OIS}(0, T_{n}) \tag{7}
$$

- The value of the contract at inception is zero, $V_0^{OIS} = 0$.
- It follows from (6) then that

$$
V_{0}^{OIS} = V_{0}^{Floating} - V_{0}^{Fixed} = 0 \tag{8}
$$

- This equation implies that the swap rate $c$ can be computed from

$$
1 = c \Delta \sum_{i = 1}^{n} Z^{OIS}(0, T_{i}) + Z^{OIS}(0, T_{n}) \tag{9}
$$

- which gives

$$
c(T_{n}) = \frac{1}{\Delta} \frac{1 - Z^{OIS}(0, T_{n})}{\sum_{i = 1}^{n} Z^{OIS}(0, T_{i})} \tag{10}
$$

- where we now emphasize that the coupon rate $c$ is for a swap with maturity $T_{n}$, and thus write $c(T_{n})$.

### OIS Discount Curve

- Given the OIS coupon rates $c\left({T}_{i}\right)$ for every maturity ${T}_{i}$, we can bootstrap the OIS zero-coupon curve from (8).
- We obtain the relation:

$$
Z^{OIS}\left(0, T_{i}\right) = \frac{1 - c\left(T_{i}\right) \Delta \sum_{j = 1}^{i - 1} Z^{OIS}\left(0, T_{j}\right)}{1 + c\left(T_{i}\right) \Delta} \tag{11}
$$

- recalling, however, that OIS with maturity less than or equal to 1 year generally have only one payment.
- Next Figure shows an example of bootstrapping from OIS quotes, on January 2, 2009. Panel A reports the original OIS quotes from Bloomberg. Panel B uses the quotes from Panel A along with bootstrap methodology (11) and defines the OIS discount function $Z^{OIS}(0, T)$.

### OIS Discount Curve On January 2nd, 2009

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/c367ebce-6d60-4546-a9bc-67e458f9fada/baea22de9d78ea40386f77c52874a1b041889bb554f88063a9a94025af1c1e4e.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/c367ebce-6d60-4546-a9bc-67e458f9fada/6c06552912d4ff64a9867392ad9803b0c443bcf7e2b6df147fb9c1abded27bdc.jpg)

Data Source: Bloomberg

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/c367ebce-6d60-4546-a9bc-67e458f9fada/753b06460f266aef4bb6a7da4b5da475cf63d504cbb3c0c6684c2b8ca0539525.jpg)

OIS and LIBOR Discount Curve on January 2nd, 2007

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/c367ebce-6d60-4546-a9bc-67e458f9fada/e56bba3533390f330ba0346fa2df3babca6bd1829fbc9f30e4a8740b2604c920.jpg)

Data Source: Bloomberg

- However, if we try after the crisis, we obtain the following figure:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/c367ebce-6d60-4546-a9bc-67e458f9fada/4469c87d807c9392d7f5a8b3687e660d12e1820347868e38797f22268a72b28a.jpg)

OIS and LIBOR Discount Curve on January 2nd, 2009 Panel A. OIS and LIBOR Zero Coupon Curve

Panel B. OIS and LIBOR Zero Curve

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/c367ebce-6d60-4546-a9bc-67e458f9fada/5a82977e63646ecf499c48e0cdea8bf9088eb4fe916a88d1819f4d82d23a5af8.jpg)

Data Source: Bloomberg

- which are quite different.
