---
parent_directory:
title: Financial Instruments
tags:
aliases:
parent_folder: Financial Instruments Lecture Notes
subfolder:
key_concepts:
cssclasses: academia
linter-yaml-title-alias: Financial Instruments
---

# Financial Instruments

# Teaching Note 2

# Futures, Forwards and Swaps

John Heaton

The University of Chicago

Booth School of Business

1. Forward Contracts

1.1 The Forward Price  
1.2 The Value of a Forward Contract

2. Futures Contracts

2.1 Hedging with Futures  
2.2 The Futures Price

3. Swaps

3.1 Swaps versus Forwards  
3.2 The Swap Rate

# No Arbitrage

- An Arbitrage Opportunity is a trading strategy that either

1. Costs nothing today and yields a positive profit in the future; or  
2. Yields a positive profit today, and zero cash in the future.

- In well functioning markets, no arbitrage opportunities may arise.  
- If there were, arbitrageurs would take massive positions to profit from them, equilibrating the market.  
- The value of derivative securities, including forwards, futures, swaps and options, are determined by assuming that no arbitrage opportunities exist.  
- The Law of One Price: Securities with identical payoffs must have the same price.
- Otherwise, an arbitrage opportunities arises

Buy Cheap / Sell Dear

- $\Longrightarrow$  Buy the low-priced security and sell the high-priced one.  
- At maturity the arbitrageur is hedged, since the cash flows are the same.

# Forward Contracts

- A Forward contract is an agreement between two counterparties to buy or sell a prespecified amount of goods or securities at a prespecified future date  $T$  at a prespecified price  $F$ .  
- It does not cost anything to enter into a forward contract at time 0: The contract is about exchanging goods (or securities) for money in the future, and not today.
- The prespecified price  $F$  moves to ensure that the value of the forward contract is zero for both counterparties at the inception of the contract.
- Let  $N$  be the size of the contract and  $M_{t}$  the price of the good or security at  $t$ .  
- The Profit/Loss at  $T$  are

$$
\mathrm {P / L c o u n t e r p a r y l o n g t h e f o r w a r d} = N \times (M _ {T} - F)
$$

$$
\mathrm {P / L c o u n t e r p a r y s h o r t t h e f o r w a r d} = N \times (F - M _ {T})
$$

- For instance, the party long the forward agrees to buy at  $T$  a security for  $F$  when its value is  $M_T$ .

* If  $M_T > F$ , it makes a profit (it pays only  $F$  instead of  $M_T$ )  
* If  $M_T < F$ , it makes a loss (it pays  $F$  instead of the cheaper  $M_T$ )

# Forward Contracts

- Example: A US firm has sold a piece of equipment to a German client and now it has a receivable of EUR 5 million in  $T = 6$  months.  
- Let  $M_{t} = \text{USD/EUR}$  exchange rate at  $t$ . Assume the current rate  $M_{0} = 1.2673$ , the continuously compounded (c.c.) US rate is  $r_{\S} = 5\%$  and the (c.c.) Euro rate is  $r_{e} = 3\%$ .

$$
\mathrm {D o l l a r p a y o f f a t} T = 5 \mathrm {m i l} \times M _ {T}
$$

- Exchange rate risk: Euro can depreciate versus the dollar ( $M_T$  decline).
- Hedging strategy: enter into a forward contract with a bank to exchange euros for dollars at  $T$  at an exchange rate  $F$ , say  $F = 1.28$ , decided today.

$$
\mathrm {D o l l a r P / L o f f o r w a r d c o n t r a c t a t} T = 5 \mathrm {m i l} \times (F - M _ {T})
$$

Total payoff at  $T =$  payoff from original position  $T +$  payoff of forward contract at  $T$

$$
\begin{array}{l} = (5 \mathrm {m i l} \times M _ {T}) + 5 \mathrm {m i l} \times (F - M _ {T}) \\ = \quad 5 \mathrm {m i l} \times F = \quad \$ 6. 4 \mathrm {m i l} \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/15de9a37f772e436a7a7f7035d86032c495d2982a4b2eddb322d25cba15a94fc.jpg)  
Forward Contracts: The Payoff Diagram

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/a80c928195710e4cd2264ec87929cb6a963d762b579fc965bbb1f61700aa9c1e.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/7d554c0d5e479ec1d6922318326d2f60e1e80931be450e7a4eb5cab130938204.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/2edaa01308c703442a8f8d0e6c5d6847a8cf8f21e2c20850d65ddd315f27359d.jpg)

# Example: April 4 2007

DOLLAR SPOT FORWARD AGAINST THE DOLLAR  

<table><tr><td rowspan="2">Apr 4</td><td rowspan="2"></td><td rowspan="2">Closing
mid-point</td><td rowspan="2">Change
on day</td><td rowspan="2">Bid/offer
spread</td><td colspan="2">Day&#x27;s mid</td><td colspan="2">One month</td><td colspan="2">Three months</td><td colspan="2">One year</td><td rowspan="2">J.P. Morgan
Index</td></tr><tr><td>high</td><td>low</td><td>Rate</td><td>%PA</td><td>Rate</td><td>%PA</td><td>Rate</td><td>%PA</td></tr><tr><td>Europe</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Czech Rep.</td><td>(Koruna)</td><td>20.8984</td><td>-0.0132</td><td>844 - 123</td><td>21.0040</td><td>20.8844</td><td>20.8478</td><td>2.9</td><td>20.7499</td><td>2.8</td><td>20.4229</td><td>2.3</td><td>-</td></tr><tr><td>Denmark</td><td>(DKr)</td><td>5.5734</td><td>0.0004</td><td>726 - 741</td><td>5.5944</td><td>5.5708</td><td>5.5673</td><td>1.3</td><td>5.5562</td><td>1.2</td><td>5.5265</td><td>0.8</td><td>110.00</td></tr><tr><td>Hungary</td><td>(Forint)</td><td>183.947</td><td>0.3426</td><td>867 - 028</td><td>184.720</td><td>183.590</td><td>184.357</td><td>-2.7</td><td>185.117</td><td>-2.5</td><td>188.057</td><td>-2.2</td><td>-</td></tr><tr><td>Norway</td><td>(NKr)</td><td>6.1194</td><td>0.0046</td><td>172 - 215</td><td>6.1372</td><td>6.1120</td><td>6.1138</td><td>1.1</td><td>6.1049</td><td>0.9</td><td>6.1006</td><td>0.3</td><td>112.60</td></tr><tr><td>Poland</td><td>(Zloty)</td><td>2.8765</td><td>-0.0009</td><td>746 - 783</td><td>2.8878</td><td>2.8746</td><td>2.8734</td><td>1.3</td><td>2.8681</td><td>1.2</td><td>2.8594</td><td>0.6</td><td>-</td></tr><tr><td>Russia</td><td>(Rouble)</td><td>25.9694</td><td>-0.0042</td><td>669 - 719</td><td>26.0270</td><td>25.9620</td><td>25.9662</td><td>0.2</td><td>25.9603</td><td>0.1</td><td>25.9865</td><td>-0.1</td><td>-</td></tr><tr><td>Slovakia</td><td>(Koruna)</td><td>25.0013</td><td>0.2019</td><td>761 - 265</td><td>25.2560</td><td>24.8350</td><td>24.9695</td><td>1.5</td><td>24.8948</td><td>1.7</td><td>24.6513</td><td>1.4</td><td>-</td></tr><tr><td>Sweden</td><td>(SKr)</td><td>6.9687</td><td>-0.0387</td><td>667 - 706</td><td>7.0301</td><td>6.9603</td><td>6.9570</td><td>2.0</td><td>6.9347</td><td>1.9</td><td>6.8702</td><td>1.4</td><td>101.80</td></tr><tr><td>Switzerland</td><td>(SFr)</td><td>1.2181</td><td>0.0002</td><td>178 - 184</td><td>1.2232</td><td>1.2174</td><td>1.2150</td><td>3.1</td><td>1.2089</td><td>3.0</td><td>1.1870</td><td>2.6</td><td>107.10</td></tr><tr><td>Turkey</td><td>(Lira)</td><td>1.3730</td><td>-</td><td>715 - 745</td><td>1.3790</td><td>1.3680</td><td>1.3889</td><td>-13.9</td><td>1.4182</td><td>-13.2</td><td>1.5600</td><td>-13.6</td><td>-</td></tr><tr><td>UK (0.5058)*</td><td>(£)</td><td>1.9772</td><td>-0.0014</td><td>770 - 774</td><td>1.9775</td><td>1.9717</td><td>1.9770</td><td>0.1</td><td>1.9761</td><td>0.2</td><td>1.9658</td><td>0.6</td><td>103.50</td></tr><tr><td>Euro (0.7477)*</td><td>(Euro)</td><td>1.3375</td><td>0.0002</td><td>373 - 376</td><td>1.3380</td><td>1.3319</td><td>1.3391</td><td>-1.4</td><td>1.3421</td><td>-1.4</td><td>1.3506</td><td>-1.0</td><td>128.80</td></tr><tr><td>SDR</td><td>-</td><td>0.6605</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>88.10</td></tr><tr><td>Americas</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Argentina</td><td>(Peso)</td><td>3.1013</td><td>-</td><td>000 - 025</td><td>3.1025</td><td>3.1000</td><td>3.0978</td><td>1.4</td><td>3.1023</td><td>-0.1</td><td>3.1663</td><td>-2.1</td><td>-</td></tr><tr><td>Brazil</td><td>(R$)</td><td>2.0365</td><td>-0.0021</td><td>355 - 375</td><td>2.0400</td><td>2.0310</td><td>2.0460</td><td>-5.6</td><td>2.0610</td><td>-4.8</td><td>2.1465</td><td>-5.4</td><td>-</td></tr><tr><td>Canada</td><td>(C$)</td><td>1.1575</td><td>0.0009</td><td>572 - 577</td><td>1.1593</td><td>1.1544</td><td>1.1564</td><td>1.1</td><td>1.1544</td><td>1.1</td><td>1.1473</td><td>0.9</td><td>123.90</td></tr><tr><td>Mexico</td><td>(New Peso)</td><td>10.9998</td><td>0.0160</td><td>975 - 020</td><td>11.0025</td><td>10.9714</td><td>11.0160</td><td>-1.8</td><td>11.0520</td><td>-1.9</td><td>11.2448</td><td>-2.2</td><td>81.90</td></tr><tr><td>Peru</td><td>(New Sol)</td><td>3.1815</td><td>0.0010</td><td>810 - 820</td><td>3.1830</td><td>3.1800</td><td>3.1795</td><td>0.8</td><td>3.1765</td><td>0.6</td><td>3.1795</td><td>0.1</td><td>-</td></tr><tr><td>USA</td><td>($)</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>88.10</td></tr><tr><td>Pacific/Middle East/Africa</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Australia</td><td>(A$)</td><td>1.2231</td><td>-0.0056</td><td>228 - 234</td><td>1.2398</td><td>1.2204</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>125.40</td></tr><tr><td>Hong Kong</td><td>(HK$)</td><td>7.8161</td><td>0.0009</td><td>159 - 163</td><td>7.8171</td><td>7.8147</td><td>7.8097</td><td>1.0</td><td>7.7929</td><td>1.2</td><td>7.7434</td><td>0.9</td><td>92.70</td></tr><tr><td>India</td><td>(Rs)</td><td>43.0700</td><td>0.0050</td><td>600 - 800</td><td>43.1350</td><td>42.8450</td><td>43.3225</td><td>-7.0</td><td>43.7050</td><td>-5.9</td><td>44.8423</td><td>-4.1</td><td>-</td></tr><tr><td>Indonesia</td><td>(Rupiah)</td><td>9116.00</td><td>21.0000</td><td>200 - 000</td><td>9121.00</td><td>9098.00</td><td>9116.00</td><td>-</td><td>9116.00</td><td>-</td><td>9116.00</td><td>-</td><td>-</td></tr><tr><td>Iran</td><td>(Rial)</td><td>9244.00</td><td>-1.0000</td><td>800 - 000</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td></tr><tr><td>Israel</td><td>(Shk)</td><td>4.1310</td><td>-0.0290</td><td>280 - 340</td><td>4.1580</td><td>4.1240</td><td>4.1275</td><td>1.0</td><td>4.1201</td><td>1.1</td><td>4.0968</td><td>0.8</td><td>-</td></tr><tr><td>Japan</td><td>(Y)</td><td>118.615</td><td>-0.1700</td><td>600 - 630</td><td>119.080</td><td>118.550</td><td>118.139</td><td>4.8</td><td>117.231</td><td>4.7</td><td>113.528</td><td>4.3</td><td>80.20</td></tr><tr><td>Kuwait</td><td>(Dinar)</td><td>0.2893</td><td>-0.0001</td><td>892 - 893</td><td>0.2894</td><td>0.2892</td><td>0.2892</td><td>0.1</td><td>0.2893</td><td>-</td><td>0.2894</td><td>-0.1</td><td>-</td></tr><tr><td>Malaysia</td><td>(M$)</td><td>3.4570</td><td>-0.0035</td><td>545 - 595</td><td>3.4600</td><td>3.4545</td><td>3.4516</td><td>1.9</td><td>3.4415</td><td>1.8</td><td>3.3985</td><td>1.7</td><td>-</td></tr><tr><td>New Zealand</td><td>(NZ$)</td><td>1.3865</td><td>-0.0013</td><td>860 - 870</td><td>1.3953</td><td>1.3841</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>137.20</td></tr><tr><td>Philippines</td><td>(Peso)</td><td>48.0500</td><td>-0.0750</td><td>400 - 600</td><td>48.2000</td><td>47.8700</td><td>48.0492</td><td>-</td><td>48.0563</td><td>-0.1</td><td>48.0615</td><td>-</td><td>-</td></tr><tr><td>Saudi Arabia</td><td>(SR)</td><td>3.7504</td><td>-</td><td>499 - 509</td><td>3.7509</td><td>3.7499</td><td>3.7489</td><td>0.5</td><td>3.7472</td><td>0.3</td><td>3.7435</td><td>0.2</td><td>-</td></tr><tr><td>Singapore</td><td>(S$)</td><td>1.5150</td><td>-0.0038</td><td>147 - 153</td><td>1.5205</td><td>1.5137</td><td>1.5119</td><td>2.5</td><td>1.5062</td><td>2.3</td><td>1.4824</td><td>2.2</td><td>105.70</td></tr><tr><td>South Africa</td><td>(R)</td><td>7.1718</td><td>-0.0168</td><td>667 - 768</td><td>7.1962</td><td>7.1460</td><td>7.1942</td><td>-3.8</td><td>7.2421</td><td>-3.9</td><td>7.4743</td><td>-4.2</td><td>-</td></tr><tr><td>South Korea</td><td>(Won)</td><td>936.500</td><td>-0.2500</td><td>000 - 000</td><td>937.000</td><td>935.500</td><td>935.850</td><td>0.8</td><td>934.600</td><td>0.8</td><td>930.300</td><td>0.7</td><td>113.00</td></tr><tr><td>Taiwan</td><td>(T$)</td><td>33.0900</td><td>-0.0310</td><td>850 - 950</td><td>33.1360</td><td>33.0640</td><td>33.0550</td><td>1.3</td><td>32.9300</td><td>1.9</td><td>32.3500</td><td>2.2</td><td>87.20</td></tr><tr><td>Thailand</td><td>(Bt)</td><td>34.9450</td><td>-0.0200</td><td>100 - 800</td><td>34.9800</td><td>31.9000</td><td>34.9215</td><td>0.8</td><td>34.8600</td><td>1.0</td><td>34.5550</td><td>1.1</td><td>-</td></tr><tr><td>U A E</td><td>(Dirham)</td><td>3.6723</td><td>0.0001</td><td>721 - 724</td><td>3.6724</td><td>3.6721</td><td>3.6715</td><td>0.2</td><td>3.6700</td><td>0.2</td><td>3.6688</td><td>0.1</td><td>-</td></tr></table>

*The closing mid-point rates for the Euro and £ are shown in brackets. The other figures in both rows are in the reciprocal form in line with market convention. † Official rate set by Malaysian government. The WM/Reuters rate for the valuation of capital assets is 3.80 MYR/USD. Bid/offer spreads in the Dollar Spot table show only the last three decimal places. J.P. Morgan nominal indices: Base average 2000 = 100. Bid, offer, mid spot rates and forward rates in both this and tha pound table are derived from the WM/REUTERS 4pm (London time) CLOSING SPOT and FORWARD RATE services. Some values are rounded by the F.T.

source: Financial Times www.ft.com)

# Forward Price

- How is the prespecified exchange rate  $F = 1.28$  USD/EUR decided?  
- The bank hedges its commitment to pay dollars for euros at the fixed rate  $F$  as follows:

1. Borrow the Present Value of 5 mil euros at the euro rate  $r_e = 3\%$ .

$$
- \Rightarrow \text {B o r r o w} \left(e ^ {- r _ {e} \times T} \times 5 \mathrm {m i l}\right) = \text {e u r o s} 4. 9 2 5 \mathrm {m i l}
$$

2. Exchange this amount into dollars today.

$$
- \mathrm {I f} M _ {0} = 1. 2 6 7 3 \Longrightarrow \mathrm {t h e b a n k g e t s (e u r o s 4 . 9 2 5)} \times M _ {0} = \$ 6. 2 4 2 \mathrm {m i l}.
$$

3. Invest this amount in dollar deposit at rate  $r_{\S} = 5\%$ .

$$
\Longrightarrow \mathrm {T o d a y t h e b a n k n e t s 0 .}
$$

- At time  $T$  the bank:
- Receives 5 mil euros from the US firm (from fwd contract).  
- Uses this money to close the 5 mil euro loan.  
 - Cashes in the dollar investment: ($6.242 mil) e rT = $6.4 mil.  
- Gives this money to the client

$$
\Longrightarrow \text {E f f e c t i v e} F = \frac {\mathrm {S 6 . 4 m i l}}{\mathrm {E U R 5 m i l}} = 1. 2 8
$$

# Diagram of Bank's Hedging Strategy

1. Firms and Bank agree
Bank will buy 5 mil euro (forward)
at T for F=1.28 $/Euro  
2. (a) Bank borrows Euros  $4.925\mathrm{m} = \mathrm{PV}(5\mathrm{m})$  at  $r_e = 3\%$   
(b) Exchange them into dollars at  $\mathsf{M}_0 = 1.2673 \, \text{$/Euro}$  
 (c) Invest proceeds of $ 6.242 mil at r$ = 5%

3. Firms gives bank 5 mil Euros  
4. (a) Bank uses Firm's payment to close 5 mil Euro loan  
(b) Bank liquidates $ investment
$6.242 e $^{5\%}$  = $6.4 mil  
(c) Gives the proceeds to the firm

Exchange Rate for firm = $6.4mil / Eur 5 mil

$$
\begin{array}{l} = 1. 2 8 \mathbb {S} / \text {E u r} \\ = \text {q u o t e d} F \text {a t} 0 \\ \end{array}
$$

0 = today

T = 6 month

# Forward Price

- Indeed, what is the payoff at time  $T$  from the dollar investment in formulas?

$$
\begin{array}{l} \mathrm {P a y o f f a t} T = \left[ \left(e ^ {- r _ {e} \times T} \times 5 \mathrm {m i l}\right) \times M _ {0} \right] \times e ^ {r _ {\S} \times T} \\ = M _ {0} \times e ^ {(r _ {\S} - r _ {e}) \times T} \times 5 \mathrm {m i l} \\ \Longrightarrow \mathrm {E f f e c t i v e} F = M _ {0} \times e ^ {(r _ {\S} - r _ {e}) \times T} \\ \end{array}
$$

- $F =$  Forward rate.
- Since  $F$  is determined at time 0 for an exchange of euros for dollars at  $T$  we denote it as  $F_{0,T}$

# Forward Price: A No Arbitrage Argument

- Consider a US investor who has $ 100 million (mil) to invest for  $T = 6$  months.  
- There are two strategies:

A. Invest in 6-months U.S. Treasury bills at the rate  $r_{\S} = 5\%$  yielding:

$$
\mathrm {P a y o f f} \mathrm {s t r a t e g y A a t} T = \\mathbb {S} 1 0 0 \mathrm {m i l} \times e ^ {r _ {\S} T}
$$

B. (a) Exchange the $100 mil into euros at rate 1/M₀ = EUR/USD, (b) invest the proceeds in 6-month Euro Treasuries, and (c) enter into a forward contract to buy dollars at F₀,T.

$$
\mathrm {P a y o f f o f s t r a t e g y B a t} T = \frac {\mathbb {S} 1 0 0 \mathrm {m i l}}{M _ {0}} \times e ^ {r _ {e} T} \times F _ {0, T}
$$

- Both strategies final payoffs are known at time 0. Thus, we must have

$$
\mathrm {P a y o f f o f s t r a t e g y A a t} T = \mathrm {P a y o f f o f s t r a t e g y B a t} T
$$

or, substituting

$$
\$ 100 \mathrm {m i l} \times e ^ {r _ {\S} T} = \frac {\S 1 0 0 \mathrm {m i l}}{M _ {0}} \times e ^ {r _ {e} T} \times F _ {0, T}
$$

- Solving for  $F_{0,T}$  gives

$$
F _ {0, T} = M _ {0} e ^ {(r _ {\S} - r _ {e}) T}
$$

# Forward Price: A No Arbitrage Argument

- How do arbitrageurs keep the markets in line?  
- Assume

$$
F _ {0, T} <   M _ {0} \times e ^ {(r _ {\S} - r _ {e}) \times T}
$$

- Arbitrageur: "Buy cheap - Sell dear"

1. Enter into a forward contract with maturity  $T$  to buy  $N$  euros at forward rate  $F_{0,T}$ ;  
2. Borrow  $N \times e^{-r_e \times T}$  euros and exchange them to  $N \times e^{-r_e \times T} \times M_0$  dollars;  
3. Invest  $N \times e^{-r_{e} \times T} \times M_{0}$  dollars at the dollar rate  $r_{\S}$ .

$\Longrightarrow$  at 0 arbitrageur evens out.

- At  $T$  the arbitrageur:
- Receive  $N$  euros from forward contract, and pays  $\$ 5F_{0,T} \times N$  for them;  
- Pay back the euro loan of  $N$  euros (as borrowed  $N \times e^{-r_e \times T}$  grew to  $N$  by  $T$ );  
- Receive proceeds  $\left(N \times e^{-r_{e} \times T} \times M_{0}\right) \times e^{r_{\S} \times T}$  from dollar investment.

Dollar Profit at  $T = N \times \left(M_0 \times e^{(r_{\S} - r_e \times)T} - F_{0,T}\right) > 0$

# Forward Price: A No Arbitrage Argument - the reverse

What if

$$
F _ {0, T} > M _ {0} \times e ^ {(r _ {\S} - r _ {e}) \times T}?
$$

- Arbitrageur: "Buy cheap - Sell dear"

1. Enter into a forward contract with maturity  $T$  to sell  $N$  euros at forward rate  $F_{0,T}$ ;  
2. Borrow  $N \times e^{-r_e \times T} \times M_0$  dollars and use it to buy  $N \times e^{-r_e \times T}$  euros;  
3. Invest  $N \times e^{-r_e \times T}$  euros at euro rate  $r_e$  until T.

$\Longrightarrow$  at 0 arbitrageur evens out.

- At  $T$  the arbitrageur:
- Receives \( \\( F_{0,T} \times N \) from forward sale of euros in exchange of \( N \) euros;  
* Position is covered by 3. above, as  $N \times e^{-r_e T}$  euros at 0 grow up to  $N$  by  $T$ ;  
- Pay back loan of  $(N \times e^{-r_e \times T} \times M_0) \times e^{r_{\S}T}$

Dollar Profit at  $T = N \times \left(F_{0,T} - M_0 \times e^{(r_{\S} - r_e \times)T}\right) > 0$

# Example: April 4 2007

- The formula for the forward price is  $F_{0,T} = M_0 \times e^{(r_{\mathbb{S}} - r_e)T}$ . Does it work?  
- Interest Rates on April 4 2007:

MARKET RATES  

<table><tr><td>Apr 4</td><td>Overnight</td><td>Day</td><td>ChangeWeek</td><td>Month</td><td>One month</td><td>Three months</td><td>Six months</td><td>One year</td></tr><tr><td>US$ Libor*</td><td>5.32125</td><td>+0.015</td><td>+0.010</td><td>+0.023</td><td>5.32000</td><td>5.35000</td><td>5.33563</td><td>5.23656</td></tr><tr><td>Euro Libor*</td><td>3.85250</td><td>+0.003</td><td>+0.028</td><td>+0.284</td><td>3.86538</td><td>3.94300</td><td>4.06863</td><td>4.20350</td></tr><tr><td>£ Libor*</td><td>5.30625</td><td>-0.011</td><td>-0.033</td><td>+0.050</td><td>5.51000</td><td>5.63688</td><td>5.74625</td><td>5.88875</td></tr><tr><td>Swiss Fr Libor*</td><td>2.15000</td><td>+0.010</td><td>-0.023</td><td>+0.130</td><td>2.20917</td><td>2.30000</td><td>2.41417</td><td>2.57000</td></tr><tr><td>Yen Libor*</td><td>0.62375</td><td>-0.010</td><td>-0.156</td><td>+0.045</td><td>0.64063</td><td>0.66063</td><td>0.69625</td><td>0.78375</td></tr><tr><td>Canada Libor*</td><td>4.25000</td><td>-0.002</td><td></td><td></td><td>4.26000</td><td>4.27583</td><td>4.29000</td><td>4.32000</td></tr><tr><td>Euro Euribor</td><td></td><td></td><td></td><td></td><td>3.86</td><td>3.94</td><td>4.07</td><td>4.20</td></tr><tr><td>Sterling CDs</td><td></td><td></td><td></td><td></td><td>5.46</td><td>5.59</td><td>5.69</td><td>5.83</td></tr><tr><td>US$ CDs</td><td></td><td></td><td></td><td></td><td>5.27</td><td>5.28</td><td>5.28</td><td>5.18</td></tr><tr><td>Euro CDs</td><td></td><td></td><td></td><td></td><td>3.845</td><td>3.920</td><td>4.035</td><td>4.150</td></tr><tr><td>US o&#x27;night repo</td><td>5.25</td><td>-0.010</td><td>+0.005</td><td>+0.020</td><td></td><td></td><td></td><td></td></tr><tr><td>Fed Funds eff</td><td>5.20</td><td>-0.050</td><td>-0.050</td><td>-0.020</td><td></td><td></td><td></td><td></td></tr><tr><td>US 3m Bills</td><td>4.91</td><td>-0.015</td><td>-0.020</td><td>-0.060</td><td></td><td></td><td></td><td></td></tr><tr><td>SDR int rate</td><td>4.09</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>EONIA</td><td>3.84</td><td></td><td>+0.020</td><td>+0.290</td><td></td><td></td><td></td><td></td></tr><tr><td>EURONIA</td><td>3.8369</td><td>+0.0047</td><td>+0.0240</td><td>+0.2849</td><td></td><td></td><td></td><td></td></tr><tr><td>SONIA</td><td>5.2673</td><td></td><td>-0.0296</td><td>+0.0404</td><td></td><td></td><td></td><td></td></tr><tr><td></td><td>Overnight</td><td colspan="2">OneWeek</td><td>Onemonth</td><td>Threemonths</td><td>Sixmonths</td><td colspan="2">Oneyear</td></tr><tr><td>Interbank £</td><td>5.30-5.22</td><td colspan="2">5.44-5.35</td><td>5.51-5.43</td><td>5.64-5.56</td><td>5.74-5.66</td><td colspan="2">5.89-5.81</td></tr></table>

*Libor rates come from BBA (see www.bba.org.uk) and are fixed at 11am UK time. Other data sources: US $, Euro & Cds: dealers; SDR int rate: IMF; EONIA: ECB; EURONIA & SONIA: WMBA.

source: Financial Times www.ft.com)

# Example: April 4 2007 (contd.)

- The 1 month US and EURO Libor rates were  $R_{\S} = 5.32\%$  and  $R_{e} = 3.86538\%$ .  
- The continuous compounded interest rate are  $r_{\S} = \log (1 + R_{\S} / 12) \times 12 = 5.3082\%$ $r_e = \log (1 + R_e / 12) \times 12 = 3.8592\%$  
- Since  $M_0 = 1.3375$ , we obtain that for  $T = 1/12$

$$
F _ {0, T} = M _ {0} \times e ^ {(r _ {\S} - r _ {e}) \times 1 / 1 2} = 1. 3 3 9 1
$$

- which coincides with market forward exchange rate.  
- The same steps for  $T = 3 / 12$  yield  $r_{\S} = 5.3145\%$  and  $r_e = 3.9237\%$ , and thus

$$
F _ {0, T} = M _ {0} \times e ^ {(r _ {\S} - r _ {e}) \times 3 / 1 2} = 1. 3 4 2 2
$$

- which (almost) coincides with the market forward exchange rate.  
- And so on…

# The Determinant of the Forward Price

- The forward price only depends on the interest rate differential of the two countries, i.e.  $(r_{\mathbb{S}} - r_e)$  - If  $r_{\mathbb{S}} > r_e$ , then  $F_{0,T} > M_0$  and if  $r_{\mathbb{S}} < r_e$ , then  $F_{0,T} < M_0$ .  
- That is: There is no more information in the forward price about future exchange rates than there is in the interest rate differential.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/1afae7e6995dbd49473c92c9d79f01d70bc1fb87891312acddb59ac60935c7c8.jpg)  
Data Source: Bloomberg

# The Value of a Forward Contract

- Let's go back to the initial example:
- Recall that a US company was hedging a 5 million Euro receivable through a forward contract with  $F_{0,T} = 1.28$ .  
- Assume that at time  $t = 3$  months the Euro appreciated from  $M_0 = 1.2673$  to  $M_t = 1.29$  
- If the US firm wants to cancel the contract with the bank, how much does it have to pay?
- The US firm can enter into the reverse forward contract with the bank, with payoff Dollar payoff at  $T$  of reverse forward contract  $= 5 \mathrm{mil} \times (M_T - F_{t,T})$

$$
- \mathrm {N o w :} F _ {t, T} = M _ {t} \times e ^ {(r _ {\S} - r _ {e}) \times (T - t)} = 1. 2 9 \times e ^ {(0. 0 5 - 0. 0 3) \times 0. 2 5} = 1. 2 9 6 \mathrm {\S / E U R}
$$

- The reverse contract neutralizes the former one.

# The Value of a Forward Contract (contd.)

Payoff at  $T$  from forward + reverse forward  $= 5\mathrm{mil}\times (F_{0,T} - M_T) + 5\mathrm{mil}\times (M_T - F_{t,T})$

$$
\begin{array}{l} = 5 \mathrm {m i l} \times (F _ {0, T} - F _ {t, T}) \\ = 5 \mathrm {m i l} \times (1. 2 8 - 1. 2 9 6) = - \$ 8 0, 0 0 0 \\ \end{array}
$$

$\bullet \Longrightarrow$  The US firm will have to pay the bank $80,000 at  $T$ .  

- The Present Value of  $-\$ 80,000$  is the value of the original forward contract to the US firm:

$$
f _ {t, T} = e ^ {- r _ {\S} \times (T - t)} \times (F _ {0, T} - F _ {t, T}) \times 5 \mathrm {m i l} = - \$ 7 9, 0 0 6. 2
$$

- Since it costs $79,006.2 to close the position, the value of the forward contract to the firm must equal this amount. Viceversa, the value to the bank must be $79,006.2  
- The above formula is general: The value of a forward contract to sell euros at a prespecified price  $K$  is always given by

$$
f _ {t, T} = e ^ {- r _ {\S} \times (T - t)} \times (K - F _ {t, T})
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/c4644eab05a02ff07103c895c0591dd4425b02589583e565910a024470dfaa73.jpg)  
The Value of a Forward Contract (contd.)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/828581f669cd51f46b969db2a6da63b8b58497f37ae770826b7edc1ab51dd45b.jpg)

$$
\mathrm {P / L = 5 m i l (1 . 2 8 - M _ {T})}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/8b3df1e033bafef832e1b1d46c0ab9eabe111c280267363763a135dd9d48448d.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/a3e9efa60aa671683f826b2b8e4a71e547712f81a14ac05782ff8005c6f18ec8.jpg)

$$
\mathrm {P / L = 5 m i l (M _ {T} - 1 . 2 9 6)}
$$

Total  $= 5$  mil (1.28 - 1.296)

$$
= - \mathbb {S} 8 0, 0 0 0
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/25cd0f70ac95333230bbafd78e7a3a7127d102393158b38dd7a296ed5941cea4.jpg)

# Forward Price and the Value of a Forward Contract

- To summarize, we found:

1. The Forward (Delivery) Price – the price decided at time 0 to buy / sell goods (Euros) in the future – is given by

$$
F _ {0, T} = M _ {0} \times e ^ {(r _ {\S} - r _ {e}) T}
$$

2. The value of an existing forward contract to deliver goods (Euros) at preset price  $K$  (determined some time in the past) is equal to the cost / profit of closing the contract:

$$
f _ {t, T} = [ K - F _ {t, T} ] \times e ^ {- r _ {\S} (T - t)}
$$

- This is the value of forward contract to sell. What is the value of a forward contract to buy (i.e. a long forward contract?)
- Important Note: The value of a forward contract at inception  $t = 0$  is zero.
- The Forward delivery price  $K = F_{0,T}$ , which makes  $f_{0,T} = 0$ .

* When two counterparties enter into a forward contract, they do not exchange any money.  
* In fact, they agree to exchange money only in the future, depending on  $M_T$ .

- Finally, an equivalent formula is obtained by substituting  $F_{t,T}$

$$
f _ {t, T} = K e ^ {- r _ {\S} (T - t)} - M _ {t} e ^ {- r _ {e} (T - t)}
$$

# Forward Contracts for other securities

- The earlier derivation was obtained for currency forwards.  
- Similar derivations hold for other securities, such as stocks, bonds, and commodities.  
- Here is a list of "formulas". A good exercise is to go over the steps again.

Security

Currency (e.g. dollar vs euro)

Stock: no dividend

Stock: dividend yield  $q$

Stock: known Dividend  $D$  at  $T_{1} < T$

Commodity: Storage cost  $U$ . No "convenience yield"

Commodity:  $\%$  storage cost  $u$ . No "convenience yield"

Commodity:  $\%$  storage cost  $u$ , convenient yield  $y$

Bond: Zero Coupon with Maturity  $T^{*} > T$

$\left\{ \begin{array}{l}\mathrm{Bond:~with~Semi - annual~Coupon~}c,\mathrm{Maturity} T_{n}\\ \mathrm{Payment~dates} T_{1},\ldots ,T_{n}\mathrm{~and~with~}T_{m} = T \end{array} \right.$

Forward Price

$$
\overline {{F _ {0 , T} = M _ {0} \times e ^ {(r _ {\S} - r _ {e}) T}}}
$$

$$
\overline {{F _ {0 , T}}} = S _ {0} \times e ^ {r T}
$$

$$
F _ {0, T} = S _ {0} \times e ^ {(r - q) T}
$$

$$
F _ {0, T} = \left(S _ {0} - D \times e ^ {- r T _ {1}}\right) \times e ^ {r T}
$$

$$
\overline {{F _ {0 , T} = (S _ {0} + P V (U)) \times e ^ {r T}}}
$$

$$
F _ {0, T} = S _ {0} \times e ^ {(r + u) T}
$$

$$
F _ {0, T} = S _ {0} \times e ^ {(r + u - y) T}
$$

$$
\overline {{F _ {0 , T} = \frac {Z (0 , T ^ {*})}{Z (0 , T)}}}
$$

$$
F _ {0, T} = \Sigma_ {i = m + 1} ^ {n} \frac {c}{2} \times \frac {Z (0 , T _ {i})}{Z (0 , T)} + \frac {Z (0 , T _ {n})}{Z (0 , T)}
$$

- In all cases, the value of a forward contract at time  $t > 0$  (after initiation) is:

$$
f _ {t, T} = e ^ {- r (T - t)} \left[ F _ {0, T} - F _ {t, T} \right]
$$

# Example 1: The Forward Price of a Stock with Known Dividend Payment

- Consider the a stock with price  $S_{0}$  which pays a known dividend at time  $T_{1} < T$ .  
- The pricing formula  $F_{0,T} = (S_0 - PV(D))e^{rT}$ .  
- Arbitrage argument. What if

$$
F _ {0, T} > (S _ {0} - P V (D)) e ^ {r T}?
$$

- Arbitrageur:
- At time 0:

(a) Short forward  $F_{0,T}$ ;  
 (b) borrow $(S_0 - PV(D))$ with maturity T and $PV(D)$ with maturity T1;  
 (c) use total $S0 to buy stock.

- At time  $T_{1}$

* Receive dividend  $D$  from stock. Use it to replay  $PV(D)$  loan at  $T_{1}$ .

- At time  $T$ :

(a) Receive  $F_{0,T}$  from sale of stock (which is covered, because of (c) above);  
(b) repay the loan  $(S_0 - PV(D))e^{rT}$

$$
\mathrm {P a y o f f a t} T = F _ {0, T} - (S _ {0} - P V (D)) e ^ {r T} > 0
$$

# Example 2: The Forward Price of a Stock with Constant Dividend Yield

- Dividend Yield = Stock's payoff per unit of stock price =  $D / S_t$  
- Continuously compounded dividend yield  $q$

$$
- \Longrightarrow \mathrm {T o t a l d i v i d e n d i n a s m a l l i n t e r v a l} [ t, t + d t ] \mathrm {i s} D _ {t} = q \times S _ {t} \times d t
$$

- Forward price:  $F_{0,T} = S_0 \times e^{(r - q)T}$  
What if

$$
F _ {0, T} > S _ {0} \times e ^ {(r - q) T}?
$$

1. Short Forward at  $F_{0,T}$  
2. Borrow  $S_0 \times e^{-qT}$  and buy  $N_0 = e^{-qT} < 1$  shares.  
3. For every  $t$  reinvest the dividends in the stock.

$$
\text {C h a n g e i n n u m b e r o f s h a r e s i n a s m a l l i n t e r v a l} d t: (N _ {t + d t} - N _ {t}) = \frac {N _ {t} \times D _ {t}}{S _ {t}} = N _ {t} \times q \times d t
$$

$$
\mathrm {T o t a l n u m b e r o f s h a r e s b e t w e e n 0 a n d} T: N _ {T} = N _ {0} \times e ^ {q T} = e ^ {- q T} \times e ^ {q T} = 1
$$

- The arbitrageur has exactly the right amount of shares to cover the short forward position.

$$
\text {P a y o f f} T = F _ {0, T} - S _ {0} \times e ^ {(r - q) T} > 0 \tag {1}
$$

# The Forward Price of Commodities

- Can we apply the same formula for commodities?  
- What if the commodity is held by economic agents for consumption purposes as well.
- Stocks, bonds and currencies are held for investment reasons.  
- Most commodities are held by economic agents for an economic purpose, such as heating houses, or feeding hungry people.  
- What may go wrong in the "no arbitrage strategy"?

# Covered Interest Rate Parity Violation during the 2007 - 2009 Financial Crisis

- Sometimes, arbitrageurs fail to keep markets together.  
- The 2007 - 2009 provides a simple example.  
- Define the discrepancy between forward and the "theoretical" forward rate as:

$$
\begin{array}{l} B a s i s = \mathrm {T r a d e d F o r w a r d R a t e - T h e o r e t i c a l F o r w a r d R a t e} (2) \\ = F _ {t, t + m} ^ {t r a d e d} - F _ {t, t + m} (3) \\ \end{array}
$$

where  $m =$  maturity (e.g. 3 month, 6 months etc.), and recall

$$
F _ {t, t + m} = M _ {t} e ^ {(r _ {\S} - r _ {e}) m}
$$

- The latter relation is also called "Covered Interest Rate Parity" (CIP)  
- If Basis above is not close to zero, we say that there is a violation of the covered interest rate parity.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/4799d60e336f7afb7185a9b6039eba4e9f2ea1baf87ffa329ab9e3c42880f9e3.jpg)  
CIP Violation during the 2007 - 2009 Financial Crisis: Euro / Dollar

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/fe6f3e74730502048494ca529127123785cdba1a660e07c2be55e75658da67df.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/0824fda7a505b7779668d322bd6da2c8b7160e1bfa32381aa8567deb7a26994e.jpg)  
CIP Violation during the 2007 - 2009 Financial Crisis: UKP / Dollar

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/e60c4be09fc90e2eab961ec5900cae403814a1809cb825e78a5720e668c35f86.jpg)

# Why may arbitrage fail?

- There are several generic reasons, such as

1. Lack of borrowing capacity.

- Most arbitrage trades require long-short strategies and leverage to increase the return on capital.  
- If borrowing is difficult due to market disruptions or increase in risk aversion of lenders (e.g. banks), it may not be worthwhile to engage in the arbitrage strategy.

2. Funding risk.

- An arbitrage strategy must be held until maturity  $T$  to payoff. Thus, it may imply large outflows if spreads increase before  $T$ . Lenders may ask for more collateral (margin calls) while holding the position.  
- If arbitrageur thinks it cannot hold the position until maturity, it won't take the trade.

3. Lack of capital or fear of withdrawals.

- Many hedge funds experience large outflows if trading positions lose money.  
- A possible increase in spreads generates mark-to-market losses, which can require the fund to close the position before arbitrage pays off.

* $\Longrightarrow$  Snowball effect: As some funds must close the positions, the spread increases, generating mark-to-market losses to other funds.
* Lock up provisions mitigate the problem, but competition across hedge funds may make them hard to implement

# Why Did Covered Interest Rate Parity Fail during the 2007-2009 Crisis?

- Holding US Treasuries has its own "convenience yield" when everyone needs cash collateral.  
- During the crisis, from the graph, we had the basis being positive. That is:

$$
F _ {t, t + m} ^ {d a t a} > F _ {t, t + m} = M _ {t} e ^ {(r _ {\S} - r _ {e}) m}
$$

- Recall that in this case, an arbitrage trade requires the following:

(a) Short forward;  
(b) borrow dollars (or sell US Treasuries);  
(c) change them into Euro;  
(d) invest in Euro (or buy Euro bonds)

- But point (b) failed during the crisis, as:

1. Increase in credit risk concerns impaired the ability of financial institutions to borrow;  
2. Holding safe dollars (US Treasuries) is valuable during a financial crisis for liquidity management

- US Treasuries are the only collateral accepted for short-term lending transactions.  
- It is very valuable to hold on to them for future cash management

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/a073afe7aee5abdcaa80fa9740d3c9bb9a3c46c2a3181fb00c7f5e0cb07e1537.jpg)  
Cross-Currency Basis Risk after the Crisis  
Figure 5 from Du, Tepper, and Verdelhan (2017), "Deviations form Covered Interest Rate Parity," NBER working paper.

# Issues with LIBOR

- Until January 31, 2014: British Bankers Association (BBA) LIBOR
- Survey of a panel of banks  
- Banks could underestimate their borrowing costs  
- Conflict within the bank: impact of LIBOR setting on derivatives trading.
- Now ICE LIBOR
- ICE now the benchmark administrator  
- Regulator in UK: Financial Conduct Authority (FCA)  
- Rules for fall-back rates if there are issues

# Alternatives

- SOFR: "Secured Overnight Financing Rate"  
- ARRC: Alternative Reference Rates Committee.  
- Others:
- SONIA (Sterling Over Night Indexed Average)  
- EONIA (Euro Overnight Index Average)  
- TONAR (Tokyo Overnight Average Rate)  
- SARON (Swiss Average Rate Over-Night)  
- Measure of overnight secured borrowing.  
- Collateralized US Treasuries in the repo market.  
- Very liquid and likely resilient markets: $1 trillion in daily volume  
- Contrast: USD LIBOR three-month tenor: about $1 billion  
- Published by New York Fed. Along with 30-day, 90-day and 180-day averages

# Transition

- LIBOR market: $200+ trillion of financial transactions contracts reference LIBOR  
- Transition was set for end of 2021, but now 18 month extension  
- LIBOR permeates many contracts for in securities markets and the corporate world: leases, debt, …  
- Derivatives market with Central Clearing Partners (e.g. CME …).
- Cleared US Dollar interest rate swap contracts at CME: move to SOFR discounting.  
- Intercontinental Exchange (ICE) Benchmark Administration: USD LIBOR benchmarks will stop June 30, 2023
- Fannie and Freddie: have moved bo SOFR contracts  
- New York Fed: conducts repo and reverse repo through tri-party repo.  
- OTC SOFR swaps  
- SOFR caps products have developed since September 2020

# SOFR Derivatives

As an example: at the CME

- Futures: 3-month and 1-month. Using compounding or simple averages.  
- Term SOFR Reference rates based on futures contracts.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/a951ab61ca00f68a3b99703e4a42b689e970f800ae3678f15552b38b35b85e26.jpg)  
Some History

# Futures Contracts

- Futures contracts are similar to forward contracts, as they are agreements between two counterparties to exchange a pre-specified amount of good (e.g. corn, or Euros) at a prespecified time for a predetermined price.  
- The are three notable differences between forwards and futures

1. The contracts are traded on an exchange (e.g. CME);  
2. The contracts are standardized (size, maturity);  
3. Profits and losses are mark to market.

- Standardization is important to improve liquidity
- but it introduces basis risk: Mismatch between futures contract size and maturity versus actual corporate needs.
- Mark to market is important: decreases probability of default
- At the end of each trading day, profits and losses accrue to the account of the trader.  
- If trading losses become too large, exchange issues a margin call: the trader must post additional collateral or the position is immediately closed.

# Futures Contracts

- Futures contracts are available on numerous goods and financial securities.
- Commodities, such as  
* Corn, Wheat, Soybean, etc.  
\* Cocoa, Coffee, Orange Juice,  
* Gold, Silver etc.  
* Crude Oil, Natural Gas etc.

- Currencies, such as  
* USD/EUR, USD/UKP, USD/Australian Dollar, Euro/Australian Dollar etc.  
- Equities, such as  
* S&P 500, NASDAQ 100, RUSSELL 2000, S&P 500/Citigroup Value, etc.  
- Interest rates, such as  
* Eurodollar, 30 year T-Bond, 10-year T-Note etc.  
- Weather, such as  
* Heating Degree in Atlanta, Chicago, New York, Las Vegas etc.  
- Energy, such as Electricity etc.

# Futures Contracts

- Futures price  $\widehat{F}_{t,T} =$  delivery price at which trader who is short the futures agrees at  $t$  to sell the underlying commodity or securities at  $T$  to the trader who is long the futures.
- As futures price move over time, profits and losses accrue to both counterparties  
- The party Long the futures – who agrees to buy the good at maturity – gains when prices increase, and his/her daily P/L is given by

$$
\mathrm {D a i l y P / L = C o n t r a c t S i z e \times} \left(\widehat {F} _ {t, T} - \widehat {F} _ {t - 1, T}\right)
$$

- The party Short the futures – who agrees to sell the good at maturity – gains when prices decrease, and the P/L is the opposite.
- Delivery Months: Futures are referred to by their delivery months, specified by the exchange.
- Only during these months can delivery of the good occur (typically, the exact period within the month is specified as well)

* While we will keep this issue in mind, for simplicity we will typically think that delivery must occur on a specific date.

- Delivery must occur at a given location, also specified by the contract.

# Futures Contracts: Example

CURRENCY FUTURES  

<table><tr><td>Apr 5</td><td></td><td>Open</td><td>Latest</td><td>Change</td><td>High</td><td>Low</td><td>Est. vol</td><td>Open int</td></tr><tr><td>€-Sterling*</td><td>Jun</td><td>0.6786</td><td>0.6833</td><td>+0.0047</td><td>0.6829</td><td>0.6783</td><td>32</td><td>7,409</td></tr><tr><td>€-Yen*</td><td>Jun</td><td>157.58</td><td>158.37</td><td>+0.79</td><td>158.37</td><td>157.52</td><td>1,502</td><td>22,836</td></tr><tr><td>$-Can $ †</td><td>Jun</td><td>0.8645</td><td>0.8709</td><td>+0.0059</td><td>0.8723</td><td>0.8642</td><td>40,713</td><td>109,313</td></tr><tr><td>$-Euro € †</td><td>Jun</td><td>1.3408</td><td>1.3463</td><td>+0.0059</td><td>1.3480</td><td>1.3390</td><td>137,588</td><td>203,013</td></tr><tr><td>$-Euro € †</td><td>Sep</td><td>1.3448</td><td>1.3501</td><td>+0.0059</td><td>1.3517</td><td>1.3430</td><td>185</td><td>1,531</td></tr><tr><td>$-Sw Franc †</td><td>Jun</td><td>0.8247</td><td>0.8278</td><td>+0.0034</td><td>0.8299</td><td>0.8238</td><td>43,982</td><td>59,858</td></tr><tr><td>$-Yen †</td><td>Jun</td><td>0.8504</td><td>0.8506</td><td>-0.0002</td><td>0.8525</td><td>0.8481</td><td>68,521</td><td>186,570</td></tr><tr><td>$-Yen †</td><td>Sep</td><td>0.8602</td><td>0.8604</td><td>-0.0002</td><td>0.8619</td><td>0.8579</td><td>124</td><td>8,439</td></tr><tr><td>$-Sterling †</td><td>Jun</td><td>1.9751</td><td>1.9699</td><td>-0.0046</td><td>1.9763</td><td>1.9662</td><td>78,095</td><td>124,217</td></tr><tr><td>$-Aust $ †</td><td>Jun</td><td>0.8168</td><td>0.8175</td><td>+0.0009</td><td>0.8195</td><td>0.8149</td><td>21,724</td><td>117,293</td></tr><tr><td>$-Mex Peso †</td><td>Jun</td><td>90450</td><td>90625</td><td>+75</td><td>90750</td><td>90425</td><td>3,114</td><td>13,306</td></tr></table>

Sources: * NYBOT; Sterling €100,000 and Yen: €100,000. †CME: Australian $: A$100,000, Canadian $: C$100,000, Euro: €125,000; Mexican Peso: 500,000, Swiss Franc: SFr125,000; Yen: Y12.5m ($ per Y100); Sterling: £62,500. CME volume, high & low for pit & electronic trading at settlement. Contracts shown are based on the volumes traded in 2004.

# Futures Contracts

- Convergence Property: At maturity  $T$  we must have  $\widehat{F}_{T,T} = M_T$ .
- Otherwise, there is an immediate arbitrage at  $T$ .  
- If  $F_{T,T} > M_T \Longrightarrow$  (a) short the futures; (b) buy underlying; (c) deliver.  
- If  $F_{T,T} < M_T \Rightarrow$  (a) long the futures; (b) sell underlying (if you have it); (c) buy it back from futures.
- Margin Limits
- Both counterparties must set up an amount of collateral with the exchange, called initial margin.  
- As Profits and Losses accrue on the account, the margin may be eroded over time.

* If the amount falls below a maintenance margin, the exchange issues a margin call.  
* The trader must post additional collateral up to the initial margin to keep the position open, otherwise it is closed.

- For instance, on CME Euro FX Futures:  
·Initial Margin = $2,995; Maintenance Margin = $1,700.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/3c38d2da2b5bdecfe5b6e60d71caecfa915e9dbfac81f3f1d8c7a48ddd36e3de.jpg)  
CME Euro FX Futures

# Example: Hedging with Futures

- Consider earlier example: The US firm could hedge with futures contracts instead of forwards. - CME Euro FX Futures have size of 125,000 Euro and expire on Mar, Jun, Sep and Dec.  
Suppose that  $T = \operatorname{Mar} 2007$  and  $\widehat{F}_{0,T} = 1.28$ .  
- US firm can short  $k = 5$  mil/125,000 = 40 futures contracts.  
- Every day  $t$ ,  $(P / L)_t = k \times 125,000 \times (\widehat{F}_{t - 1,T} - \widehat{F}_{t,T}) = 5$  mil ×  $(\widehat{F}_{t - 1,T} - \widehat{F}_{t,T})$  
- At maturity  $T$ :

$$
\begin{array}{l} \mathrm {P a y o f f a t} T = (P / L) _ {1} + (P / L) _ {2} + \dots + (P / L) _ {T} \\ = 5 \mathrm {m i l} \times (\widehat {F} _ {0, T} - \widehat {F} _ {1, T}) + 5 \mathrm {m i l} \times (\widehat {F} _ {1, T} - \widehat {F} _ {2, T}) + \dots + 5 \mathrm {m i l} \times (\widehat {F} _ {T - 1, T} - \widehat {F} _ {T, T}) \\ = 5 \mathrm {m i l} \times (\widehat {F} _ {0, T} - \widehat {F} _ {T, T}) \\ = 5 \mathrm {m i l} \times (\widehat {F} _ {0, T} - M _ {T}) \\ = \mathrm {P a y o f f} \mathrm {o f F o r w a r d C o n t r a c t a t} T (\mathrm {i f} \widehat {F} _ {0, T} = F _ {0, T}) \\ \end{array}
$$

# Hedging with Futures

- Caveat: The total payoff from using a constant number of contracts  $k$  every period is actually not exactly equivalent to the one of forward contract.
- Because of mark to market, trading profits and losses accrue over time to the hedger.  
- The correct statement of the payoff at  $T$  is in fact:

$$
\begin{array}{l} \mathrm {P a y o f f a t} T = (P / L) _ {1} \times e ^ {r _ {\S} \times (T - d t)} + (P / L) _ {2} \times e ^ {r _ {\S} \times (T - 2 d t)} + \dots + (P / L) _ {T - 1} \times e ^ {r _ {\S} \times d t} + (P / L) _ {T} \\ - \mathrm {w h e r e} d t = 1 / 3 6 5 = 1 \mathrm {d a y (i n a n n u a l u n i t s)} \\ \end{array}
$$

- To obtain the forward contract's payoff, we must tail the hedge and choose the number of contracts  $k_{t}$  per period as (recall  $\frac{5\mathrm{mil}}{125,000} = 40$ ):

$$
k _ {0} = 4 0 \times e ^ {- r _ {\S} \times (T - d t)}; k _ {1} = 4 0 \times e ^ {- r _ {\S} \times (T - 2 d t)}; \ldots ; k _ {i} = 4 0 \times e ^ {- r _ {\S} \times (T - i d t)}; \ldots ; k _ {T - 1} = 4 0
$$

- which yields the payoff sequence

$$
\begin{array}{l} \mathrm {P a y o f f a t} T = \left[ 5 \mathrm {m} \times e ^ {- r _ {\S} \times (T - d t)} \times (\widehat {F} _ {0, T} - \widehat {F} _ {1, T}) \right] \times e ^ {r _ {\S} \times (T - d t)} + \\ + \left[ 5 \mathrm {m} \times e ^ {- r _ {\S} \times (T - 2 d t)} \times (\widehat {F} _ {1, T} - \widehat {F} _ {2, T}) \right] \times e ^ {r _ {\S} \times (T - 2 d t)} + \dots . + \left[ 5 \mathrm {m} \times (\widehat {F} _ {T - 1, T} - \widehat {F} _ {T, T}) \right] \\ \end{array}
$$

$$
\begin{array}{l} = 5 \mathrm {m i l} \times (\widehat {F} _ {0, T} - \widehat {F} _ {1, T}) + 5 \mathrm {m i l} \times (\widehat {F} _ {1, T} - \widehat {F} _ {2, T}) + \dots + 5 \mathrm {m i l} \times (\widehat {F} _ {T - 1, T} - \widehat {F} _ {T, T}) \\ = 5 \mathrm {m i l} \times (\widehat {F} _ {0, T} - M _ {T}) \\ \end{array}
$$

# Speculating with Futures

- Futures are also excellent vehicles to speculate on a view about the variation in the underlying.  
- Example: Let today be Friday Jan 1, 2010. The Euro/Dollar exchange rate is  $M_0 = 1.4326$ .  
- A speculator believes that the Euro/Dollar rate will increase over the weekend.  
- Consider two strategies:

1. Funded Speculative Position:

- Buy 125,000 Euros for  $179,075 = 125,000 \times 1.4326$ .

2. Unfunded Speculative Position through Futures

- Go long 1 Futures contract at the CME. E.g. The March 10 Futures price on Jan 1, 2010 was  $F_{t,T} = 1.4334$  
 - Post initial margin $2,995.

# Speculating with Futures (cntd.)

- On Monday, Jan 4, 2010  $(t')$ , the exchange rate was  $M_{t'} = 1.4413$  and the Mar 10 Futures was  $F_{t',T} = 1.441$ .

1. Funded Speculative Position: The position is \( \\( {180162.5} = {125},{000} \times  {1.441} \) . Thus

$$
\mathrm {P r o f i t} = \\(1 8 0 1 6 2. 5 - \\)1 7 9, 0 7 5 = \$ 1 0 8 7. 5
$$

$$
\mathrm{Return~on~Investment} = \frac{\mathbb{S}1087.5}{\mathbb{S}179,075} = 0.607\%
$$

2. Unfunded Speculative Position through Futures:

$$
\mathrm {P r o f i t} = 1 2 5, 0 0 0 \times (1. 4 4 1 - 1. 4 3 3 4) = \$ 9 5 0
$$

$$
\mathrm{Return~on~Investment} = \frac{\mathbb{S}950}{\mathbb{S}2,995} = 31.72\%
$$

- Futures provide a much higher profit (or loss) as a percentage of investment.
- Moreover, the margin can be cash equivalent (e.g. T-bills) and so it earns interest.
- Indeed, a futures position is equivalent to a Levered investment in the underlying security:

(a) Borrow $179,075 = 125,000 × 1.4326 minus the safety margin (haircut) $2,995  
(b) Invest in Euros (as before).

* The return on investment is then  $1087.5 /$ 2,995 = 36.3%.

# The Futures Price vs the Forward Price

- Fact: If interest rates are constant, the futures price equals the forward price:

$$
\widehat {F} _ {t, T} = F _ {t, T}
$$

Why?

- Hedging with futures or with forwards cost nothing at inception  $t$  and provide the same payoff at  $T$ .  
- The delivery price has to be the same using either contract.  
- If not  $\Longrightarrow$  arbitrage opportunity: "Short" the contract with higher delivery price and "Long" the one with lower delivery price. Sure profits at  $T$ !
- Why this condition only holds if interest rates are constant?
- Because the "tailing of the hedge" works exactly only when interest rates are constant.  
- If interest rates move over time, the payoff at  $T$  of a Futures contract is only approximately  $\widehat{F}_{0,T} - M_T$ , as there is some cumulated interest rate determined by the sequence of  $(P / L)_t$  over time.

# Swaps

- Back to the example, assume the US firm is due to receive the 5 mil euros in 5 equal installments, every 6 months.  
- The US company can enter into five forward (or futures) contracts, and hedge each single installment as a stand-alone cash flow.
- $M_0 = 1.2673$ ,  $r_{\S} = 5\%$ ,  $r_e = 3\%$  imply the following forward rates

Forward Rates  

<table><tr><td>Maturity T</td><td>0.5</td><td>1</td><td>1.5</td><td>2</td><td>2.5</td></tr><tr><td>Forward Rate F0,T</td><td>1.28</td><td>1.2929</td><td>1.3059</td><td>1.3190</td><td>1.3323</td></tr></table>

- For each cash flow, same arguments as above hold.

# Swaps

- Alternatively, the US firm can also enter into a FX swap:
- A FX swap is a contractual agreement between two counterparties to exchange prespecified amounts of moneys denominated in different currencies.
- For instance, the swap contract between the US firm and a bank may be specified as follows:

1. US firm pays Bank 1 mil euros on every date  $T = .5, 1, \ldots, 2.5$ ;  
2. Bank pays US firm  $1\mathrm{mil} \times K$ , say 1.306 mil, dollar on the same dates.

- What is the net cash flow for the firm from the swap at any payment date?
- We need to express cash flows in the same currency.  
- Every  $T$ , the firm receives 1 mil  $\times K$  dollars, and must pay 1 mil  $\times M_T$  dollars.

Net  $\$ 6$ CF at  $T = 1 \mathrm{mil} \times (K - M_T)$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/124a09ff926ae833c99630f23d8dcbd7806a2f7056fcd793383a9cf09ae5cc44.jpg)  
Example: Hedging with Swaps

# Swap Rate

- How is the swap rate  $K = 1.306$  determined?
- The Swap Rate  $K$  is chosen at time 0 so that the Value of the swap is equal to zero.  
- $\Longrightarrow$  no exchange of money at inception but only in the future.
- How can we determine the value of a swap?
- Let's use the same methodology we used to value forwards, that is, let's find how much would the firm pay to get out of the position.
- No arbitrage condition: Suppose the firm wants to close the swap exposure by using a sequence of forwards.  
- The payoff for every  $T = 0.5, \ldots, 2.5$  is

$$
\begin{array}{l} \mathrm {P a y o f t} T \mathrm {o f s w a p + r e v e r s e f o r w a r d = 1 m i l \times (K - M _ {T}) + 1 m i l \times (M _ {T} - F _ {0 , T})} \\ = 1 \mathrm {m i l} \times (K - F _ {0, T}) \\ \end{array}
$$

# Swap Rate

- The Present Value of these sequence of net payments is

$$
\begin{array}{l} \mathrm {P V} \mathrm {o f s w a p + r e v e r s e f o r w a r d c a s h f l o w s = e ^ {- r _ {\S} \times 0 . 5} \times 1 m i l \times (K - F _ {0 , 0 . 5}) +} \\ + e ^ {- r _ {\S} \times 1} \times 1 \mathrm {m i l} \times (K - F _ {0, 1}) + \ldots + \\ + \ldots + e ^ {- r _ {\S} \times 2. 5} \times 1 \mathrm {m i l} \times (K - F _ {0, 2. 5}) \\ \end{array}
$$

- No arbitrage  $\Longrightarrow$  At time 0, the PV of swap + reverse forwards cash flows = 0
- Why?  $K$  and  $F_{0,T}$  are chosen so that it costs nothing to enter into a swap or forward.  
- If PV of these cash flows  $\neq 0$ , infinite profits are available.
- We obtain one equation in one unknown  $K$

$$
\begin{array}{l} 0 = e ^ {- r _ {\S} \times 0. 5} \times 1 \mathrm {m i l} \times (K - F _ {0, 0. 5}) + e ^ {- r _ {\S} \times 1} \times 1 \mathrm {m i l} \times (K - F _ {0, 1}) + \dots + \\ + \dots + e ^ {- r _ {\S} \times 2. 5} \times 1 \mathrm {m i l} \times (K - F _ {0, 2. 5}) \\ \end{array}
$$

# Swap Rate

- The solution to the equation is a weighted average of forward prices:

$$
\mathrm {C u r r e n c y S w a p R a t e} = K = w _ {0. 5} F _ {0. 5} + w _ {1} F _ {0, 1} + \ldots + w _ {2. 5} F _ {0, 2. 5}
$$

- The weights  $w_{T}$  are given by the relative time value of money across maturities

$$
w _ {T} = \frac {e ^ {- r _ {\S} \times T}}{e ^ {- r _ {\S} \times 0 . 5} + e ^ {- r _ {\S} \times 1} + \ldots + e ^ {- r _ {\S} \times 2 . 5}}
$$

- We obtain an alternative (equivalent) formulation by substituting the forward prices  $F_{0,T} = M_0 e^{(r_{\S} - r_e)T}$ :

$$
\mathrm {C u r r e n c y S w a p R a t e} = K = M _ {0} \frac {e ^ {- r _ {e} \times 0 . 5} + e ^ {- r _ {e} \times 1} + \ldots + e ^ {- r _ {e} \times 2 . 5}}{e ^ {- r _ {\S} \times 0 . 5} + e ^ {- r _ {\S} \times 1} + \ldots + e ^ {- r _ {\S} \times 2 . 5}}
$$

- The FX Swap rate equals the current exchange rate multiplied by the ratio of the relative borrowing costs in the two currencies.

# Hedging with Swaps versus Forwards

- The payoff profile from the sequence of forwards and one swap is different:

1. The sequence of forwards imply the US firms gets less money early on, and more later on (from $ 1.28 mil to $1.3323 mil).  
2. The swap implies the firm gets a constant amount $1.306 mil every six months.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/bfe5d371b7e07c0993605a6ab2a62be0873ac30de30fa68545c1f80a994dfb8a.jpg)

- Both strategies perfectly hedge the exposure, as the exchange rate risk is eliminated and both payoff profiles are known at 0.

# The Value of the Swap Contract after Initiation

- What is the value of a swap contract after initiation?
- Let today be  $t$ ,  $K$  be the swap rate of the existing swap, and  $T_{1}, T_{2}, \ldots, T_{n}$  be the remaining payment periods.  
- Use the same logic as for forward and ask: What would the firm have to pay to get out of the position?  
- As before, using a sequence of forwards to get out of the position gives

$$
\begin{array}{l} V _ {t} ^ {s w a p} = \mathrm {P V o f s w a p + r e v e r s e f o r w a r d c a s h f l o w s} \\ = e ^ {- r _ {\S} \times (T _ {1} - t)} \times (K - F _ {t, T _ {1}}) + e ^ {- r _ {\S} \times (T _ {2} - t)} \times (K - F _ {t, T _ {2}}) + \ldots + e ^ {- r _ {\S} \times (T _ {n} - t)} \times (K - F _ {t, T _ {n}}) \\ \end{array}
$$

Obtaining the formula

$$
V _ {t} ^ {s w a p} = \sum_ {i = 1} ^ {n} e ^ {- r _ {\S} (T _ {i} - t)} \times (K - F _ {t, T _ {i}})
$$

- Substituting the value of  $F_{t,T_i} = M_t \times e^{(r_{\mathbb{S}} - r_e) \times (T_i - t)}$  we obtain the equivalent formula:

$$
V _ {t} ^ {s w a p} = K \times \left(\sum_ {i = 1} ^ {n} e ^ {- r _ {\S} (T _ {i} - t)}\right) - M _ {t} \times \left(\sum_ {i = 1} ^ {n} e ^ {- r _ {e} (T _ {i} - t)}\right)
$$

# Plain Vanilla FX Swaps

- In the example above I assumed the counterparties swap equal payments in the two currencies.

– The US Firm pays Eur 1 Mil to the Bank every six months and at the same time the Bank pays $1.306 mil to the US Firm.

- The plain vanilla FX (or currency) swap is slightly different, as the two counterparties not only exchange a series of equal cash flows over time (coupons), but also a (larger) notional amount at both the initiation and maturity of the contract.
- The primary use of plain vanilla FX swaps is to allow firms to borrow in any foreign currency and hedge the foreign exchange risk.  
- Because of this, it is important for the firm to also hedge the principal amount of the loan, which must be paid at maturity of the bond.

# Plain Vanilla FX Swaps - 2

- Example: A US firm issues 100 million Euro-denominated 5 year note with coupon \( c = 4\% \). The firm exchanges the proceeds into \\(126.73 million at the current exchange rate \( M_0 = 1.2673 \)/Eur.
- If the firm's revenues are mainly in US dollars, then the firm is subject to exchange rate risk.  
- Every six month, the firm must pay Eur 2 mil = 100 mil × 2%. In addition, at  $T = 5$ , the firm must pay back the Eur 100 mil principal.
- A plain vanilla FX swap that hedges this exchange rate risk is as follows:
- US Firm receives from Bank 2 mil euros every six months, plus 100 mil euros at  $T$ ;  
- US Firm pays to bank  $K \times 2$  mil dollars every six month, plus  $K \times 100$  mil dollars at  $T$ .

What is Swap Rate  $K$ ?

- It is that value of the exchange rate that makes the value of the swap null at inception.

# Plain Vanilla FX Swaps - 3

What is the value of the swap to the US firm?

- In the swap contract, the firm is long a Euro-denominated 4% coupon bond with 100 mil Euro principal, and short K dollar-denominated bond 4% with principal $100 mil.  
- Let  $B^{e}(t,T)$  and  $B^{\S}(t,T)$  be the value of the two bond (in their respective currencies).

$$
* \text {E.g. If the (c.c.) rates are constant across maturities at} r_{e} = 4\% \text {and} r_{\S} = 6\%, \text {then} B^{e}(0,T) = 100\mathrm{mil}2\% \left(e^{-r_{e}\times 0.5} + e^{-r_{e}\times 1} + \dots +e^{-r_{e}\times 5}\right) + 100\mathrm{mil}e^{-r_{e}\times 5} = EUR99,819,335
$$

$$
B ^ {\S} (0, T) = 1 0 0 \mathrm {mil} 2
$$

- The value of the swap at  $t$  is then

$$
V _ {t} ^ {s w a p} = M _ {t} \times B ^ {e} (t, T) - K \times B ^ {\$} (t, T)
$$

- Therefore, at time  $t = 0$ , the value of  $K$  that makes the value of the swap equal to zero is

$$
V _ {0} ^ {\text {s w a p}} = 0 \Longrightarrow M _ {0} \times B ^ {e} (0, T) = K \times B ^ {\S} (0, T) \Longrightarrow K = M _ {0} \times \frac {B ^ {e} (0 , T)}{B ^ {\S} (0 , T)}
$$

- This is the same expression we obtained earlier when the last (notional) payment is zero.  
- In this case we obtain  $K = 1.2673 \times 1.0957 = 1.389$

* US firm pays 2 × K = $2.778 mil every 6 months, plus $138.9 mil at maturity.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/833023e23f6207326e34251e5b21c4b494d15b3df257e846000ae0abe75679f3.jpg)  
Plain Vanilla FX Swaps - 4

# Other Swaps

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

# Overnight Index Swaps (Is)

- In a Is, the two counterparties agree to exchange fixed for floating payments, where the floating payment is tied to the cumulative return from an overnight rate  
- Federal funds rate, SOFR in US. Europe: short-term rate (€STR), (formerly Euro OverNight Index Average (EONIA) rate).  
- Given a notional  $N$ , the floating rate payment at time  $T_{i}$  is

$$
C F (T _ {i}) = N \left(\prod_ {j = 1} ^ {n _ {j}} \left(1 + r _ {t _ {j}} \delta\right) - 1\right) \tag {4}
$$

- where  $\delta$  is the daily interval,  $r_t$  is the reference (annualized) overnight rate, and  $n_j$  is the number of days between reset periods.  
- The day count convention is normally Actual/360.  
- In the continuous time limit  $(\delta \to 0)$ , we have that

$$
C F \left(T _ {i}\right) = N \left(e ^ {\int_ {T _ {i - 1}} ^ {T _ {i}} r (u) d u} - 1\right) \tag {5}
$$

- Is with maturity less than 1 year have only one payment at the maturity.  
- Is with longer maturities have normally quarterly payments.

# What is the value of Is?

- The value of Is is the difference between the floating leg and the fixed leg:

$$
V _ {t} ^ {O I S} = V _ {t} ^ {F l o a t i n g} - V _ {t} ^ {F i x e d} \tag {6}
$$

- Floating Leg: At reset dates, and assuming the payment of a principal at maturity of the swap, the value of the floating leg is par.
- Indeed, investing the notional  $N$  in the overnight index daily gives at  $T_{i}$

$$
N \prod_ {j = 1} ^ {n _ {j}} \left(1 + r _ {t _ {j}} \Delta\right) = C F \left(T _ {i}\right) + N
$$

- $\Longrightarrow$  we can replicate the floating payments, plus a residual of notional at maturity  $T_{i}$ , with an investment  $N$  at time 0.
- It follows

$$
V _ {0} ^ {F l o a t i n g} = N
$$

- Fixed leg: Given a proper discount function  $Z^{OIS}(0,T_i)$ , we obtain

$$
V _ {0} ^ {F i x e d} = N c \Delta \sum_ {i = 1} ^ {n} Z ^ {O I S} (0, T _ {i}) + N Z ^ {O I S} (0, T _ {n}) \tag {7}
$$

- The value of the contract at inception is zero,  $V_0^{OIS} = 0$ .  
- It follows from (6) then that

$$
V _ {0} ^ {O I S} = V _ {0} ^ {F l o a t i n g} - V _ {0} ^ {F i x e d} = 0 \tag {8}
$$

- This equation implies that the swap rate  $c$  can be computed from

$$
1 = c \Delta \sum_ {i = 1} ^ {n} Z ^ {O I S} (0, T _ {i}) + Z ^ {O I S} (0, T _ {n}) \tag {9}
$$

- which gives

$$
c (T _ {n}) = \frac {1}{\Delta} \frac {1 - Z ^ {O I S} (0 , T _ {n})}{\Sigma_ {i = 1} ^ {n} Z ^ {O I S} (0 , T _ {i})} \tag {10}
$$

- where we now emphasize that the coupon rate  $c$  is for a swap with maturity  $T_{n}$ , and thus write  $c(T_{n})$ .

# Is Discount Curve

- Given the Is coupon rates  $c\left( {T}_{i}\right)$  for every maturity  ${T}_{i}$  ,we can bootstrap the Is zero-coupon curve from (8).  
- We obtain the relation:

$$
Z ^ {O I S} \left(0, T _ {i}\right) = \frac {1 - c \left(T _ {i}\right) \Delta \sum_ {j = 1} ^ {i - 1} Z ^ {O I S} \left(0 , T _ {j}\right)}{1 + c \left(T _ {i}\right) \Delta} \tag {11}
$$

- recalling, however, that Is with maturity less than or equal to 1 year generally have only one payment.  
- Next Figure shows an example of bootstrapping from Is quotes, on January 2, 2009. Panel A reports the original Is quotes from Bloomberg. Panel B uses the quotes from Panel A along with bootstrap methodology (11) and defines the Is discount function  $Z^{OIS}(0,T)$ .

# Is Discount Curve on January 2th, 2009

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/baea22de9d78ea40386f77c52874a1b041889bb554f88063a9a94025af1c1e4e.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/612a38192592d5490b5f86865ee59578e854d52c73187c161e5aab20cd68fcd8.jpg)  
Data Source: Bloomberg

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/753b06460f266aef4bb6a7da4b5da475cf63d504cbb3c0c6684c2b8ca0539525.jpg)  
Is and LIBOR Discount Curve on January 2nd, 2007

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/e56bba3533390f330ba0346fa2df3babca6bd1829fbc9f30e4a8740b2604c920.jpg)  
Data Source: Bloomberg

- However, if we try after the crisis, we obtain the following figure:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/4469c87d807c9392d7f5a8b3687e660d12e1820347868e38797f22268a72b28a.jpg)  
Is and LIBOR Discount Curve on January 2nd, 2009  
Panel A. Is and LIBOR Zero Coupon Curve

Panel B. Is and LIBOR Zero Curve  
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/5a82977e63646ecf499c48e0cdea8bf9088eb4fe916a88d1819f4d82d23a5af8.jpg)  
Data Source: Bloomberg

- which are quite different.

# Financial Instruments

# Teaching Note 3

# Introduction to Options

John Heaton

The University of Chicago

Booth School of Business

# 1. Options

1.1 Options Payoffs  
1.2 Put Call Parity  
1.3 Hedging with Options  
1.4 No Arbitrage Bounds  
1.5 Options' Combinations  
1.6 Slope and Convexity Restrictions

# Options

- A European option gives its holder the right, but not the obligation, to buy (call) or sell (put) a prespecified security or commodity for a prespecified price at a prespecified date.  
- Since the holder of the option has a right, but not the obligation to exercise, the option has always a non-negative value to the option holder.  
- Differently from forwards, futures and swaps, there is an exchange of money when two parties enter in an option contract.
- The option buyer pays the option premium to the option seller (sometimes called "option writer").
- In exchange of the option premium (received at 0), the seller of the option takes on the obligation to deliver the underlying security at maturity  $T$ , if requested by the option buyer.  
- An American option is the same, but exercise can occur any time before maturity.

# Call Option Payoff

- For instance, stock options have:
- Underlying  $= S$  = stock price; Prespecified price  $= K$  = strike price; Prespecified date  $= T$  = maturity date.
- How is the payoff of a call option determined?
- If at  $T$ ,  $S_T < K$  the option buyer has the choice between  
* Buy the stock in the market at  $S_{T}$  
* Buy the stock from the option seller for  $K > S_{T}$  
$\Longrightarrow$  Walk away from the contract is optimal

- If at  $T$ ,  $S_T > K$  the option buyer has the choice between

* Buy the stock in the market at  $S_{T}$  
* Buy the stock from the option seller for  $K < S_{T}$

$\Longrightarrow$  exercise the option is optimal and profit  $= S_{T} - K$

* The option seller must deliver the stock in exchange of a price  $K$ .

- Thus, the payoff to the option buyer is

$$
\mathrm {P a y o f f o f a C a l l} = \max (S _ {T} - K, 0)
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/1223dee8f9e76b5aa8d14cfb951c9db1af22acd06103eaf9b43e41d26dade0d4.jpg)  
Call Option Payoff Diagram

- For a stock price below  $K = 100$ , the call option expires worthless
- Out of the Money = OTM  
- After  $K = 100$ , the call option payoff increases with stock price at 45 degree.
- In the Money = ITM

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/02452709279911854acf29d5bef6f10afb8afe4e5f078d9b95df4485b693d111.jpg)  
Call Option Payoff Diagram to Call Option Writer

- Zero sum game: Losses of one party = gains of the other party.

# Put Option Payoff

- How is the payoff of a put option determined?
- If at  $T$ ,  $S_T < K$  the put option buyer has the choice between

* Sell the stock in the market at  $S_{T}$ ;  
* Sell the stock to the option writer for  $K > {S}_{T}$

$$
\Longrightarrow \text {E x e r c i s e t h e p u t o p i o n t o s e l l i s o p t i m a l , a n d p r o f i t} = K - S _ {T}
$$

* The option seller must purchase the stock in exchange of a price  $K$ .

- If at  $T$ ,  $S_T > K$  the option buyer has the choice between

* Sell the stock in the market at  $S_{T}$ ;  
* Sell the stock to the option writer for  $K < S_{T}$

$$
\Longrightarrow \mathrm {w a l k a w a y f r o m t h e o p t i o n c o n t r a c t i s o p t i m a l}
$$

- Thus, the payoff of a put is as follows:

$$
\mathrm {P a y o f f o f a P u t} = \max (K - S _ {T}, 0)
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/d54aa091c9218e01505493280102f5719cf69599ca5df3c1f4a97f15f5970c06.jpg)  
Put Option Payoff Diagram

- For a stock price above  $K = 100$ , the put option expires worthless (OTM)  
- Before  $K = 100$ , the put option payoff decreases with stock price at 45 degree. (ITM)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/14b4aa99ea7044245df9df15cbbeed6a434adca41f0e5c2b7a2806be4da2db85.jpg)  
Put Option Payoff Diagram for Put Option Seller

# Payoff versus Profit

- An option buyer has to pay a premium to seller. Thus, his/her profit is equal to payoff in previous pictures, minus the premium.  
- Similarly, an option seller receives the premium from the buyer. Thus, his/her profit is equal to payoff in previous pictures, plus the premium.

# Payoff versus Profit

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/d1acffa3cae4a0189c4866d86aec2bed0751753d8d3487b6f82ac717e3d07131.jpg)  
Payoff versus Profit for Call Option Buyer  
Payoff versus Profit for Put Option Buyer

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/82c559ce13b68de2c8ea334244492c4830f0108d17a6372f5bc5c149f7876703.jpg)  
Payoff versus Profit for Call Option Seller

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/ab91d00ce376dfb8a52f77163d11cb6c17f73a21332a459207b00649757be606.jpg)  
Payoff versus Profit for Put Option Seller

# Types of Options

Stock Options

- CBOE, AMEX, PHLX, PSE, ISE;  
- Over 1000 different stocks;  
- 1 contract  $= {100}$  shares (normally);  
- American Options;  
- Expirations based on Jan, Feb, or March cycles (on Saturday after 3rd Friday)  
- Options are traded for the two closest months, and two more months on the cycle.  
- Options are not adjusted for dividends, but they are adjusted for stock splits.
- Index Options
- E.g. DJ Industrial, S&P100, S&P500, Nasdaq 100, Russell 2000 (on CBOE)
- Foreign Currency Options (mainly on PHLX)  
- Options on Futures
- Based on agricultural, oil, livestock, metals, currency, and stock index futures.  
- E.g. Options on the 30 year Treasury Bond Futures (traded on CBOT)

# Example: S&P500 Options

SPX (S&P 500 INDEX)

Apr16,2007 @ 19:53 ET

1468.47 +15.62

<table><tr><td>Calls</td><td>Last Sale</td><td>Net</td><td>Bid</td><td>Ask</td><td>Vol</td><td>Open Int</td><td>Puts</td><td>Last Sale</td><td>Net</td><td>Bid</td><td>Ask</td><td>Vol</td><td>Open Int</td></tr><tr><td colspan="14"></td></tr><tr><td>07 Apr1460.00 (SXZ DL-E)</td><td>11.50</td><td>+7.70</td><td>11.00</td><td>12.00</td><td>15219</td><td>43236</td><td>07 Apr1460.00 (SXZ PL-E)</td><td>3.00</td><td>-6.60</td><td>2.80</td><td>3.00</td><td>11341</td><td>2272</td></tr><tr><td>07 Apr1465.00 (SXZ DM-E)</td><td>7.80</td><td>+5.70</td><td>7.50</td><td>7.80</td><td>14614</td><td>35628</td><td>07 Apr1465.00 (SXZ PM-E)</td><td>4.30</td><td>-8.60</td><td>4.20</td><td>4.60</td><td>6362</td><td>1244</td></tr><tr><td>07 Apr1470.00 (SXZ DN-E)</td><td>4.90</td><td>+3.70</td><td>4.70</td><td>5.00</td><td>21319</td><td>62519</td><td>07 Apr1470.00 (SXZ PN-E)</td><td>6.10</td><td>-12.90</td><td>6.20</td><td>6.60</td><td>1871</td><td>396</td></tr><tr><td>07 Apr1475.00 (SXZ DO-E)</td><td>2.90</td><td>+2.25</td><td>2.55</td><td>2.80</td><td>60145</td><td>97862</td><td>07 Apr1475.00 (SXZ PO-E)</td><td>9.50</td><td>-12.60</td><td>9.10</td><td>9.50</td><td>4362</td><td>5141</td></tr><tr><td>07 May 1460.00 (SXZ EL-E)</td><td>25.00</td><td>+7.30</td><td>24.10</td><td>25.90</td><td>341</td><td>5947</td><td>07 May 1460.00 (SXZ QL-E)</td><td>13.60</td><td>-6.40</td><td>13.30</td><td>14.50</td><td>11554</td><td>1385</td></tr><tr><td>07 May 1465.00 (SXZ EM-E)</td><td>21.50</td><td>+6.90</td><td>20.70</td><td>22.50</td><td>762</td><td>2930</td><td>07 May 1465.00 (SXZ QM-E)</td><td>15.20</td><td>-7.30</td><td>15.00</td><td>16.10</td><td>2509</td><td>107</td></tr><tr><td>07 May 1470.00 (SXZ EN-E)</td><td>18.70</td><td>+7.20</td><td>17.80</td><td>19.30</td><td>628</td><td>19443</td><td>07 May 1470.00 (SXZ QN-E)</td><td>17.50</td><td>-15.30</td><td>16.50</td><td>17.00</td><td>806</td><td>267</td></tr><tr><td>07 May 1475.00 (SXZ EO-E)</td><td>15.50</td><td>+6.10</td><td>14.80</td><td>15.90</td><td>8118</td><td>31731</td><td>07 May 1475.00 (SXZ QO-E)</td><td>18.80</td><td>-8.70</td><td>18.50</td><td>19.10</td><td>5115</td><td>4847</td></tr></table>

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/52550534773a9830d756c54060c586d78016bcd20f90bb3b1e461dfc42b04b16.jpg)

RealTime Streaming Option Chains -30-day FREE trial

# Example: Microsoft Corp.

MSFT (MROSOFTCORP)

Apr17,2007 @ 00:22 ET

28.73 +0.12

Bid 28.72 Ask 28.73 Size 14x645 Vol30742957

<table><tr><td>Calls</td><td>Last Sale</td><td>Net</td><td>Bid</td><td>Ask</td><td>Vol</td><td>Open Int</td><td>Puts</td><td>Last Sale</td><td>Net</td><td>Bid</td><td>Ask</td><td>Vol</td><td>Open Int</td></tr><tr><td colspan="14"></td></tr><tr><td>07 Apr25.00 (MSQ DJ-E)</td><td>3.62</td><td>+0.12</td><td>3.70</td><td>3.80</td><td>6</td><td>40071</td><td>07 Apr25.00 (MSQ PJ-E)</td><td>0.01</td><td>0.0</td><td>0.0</td><td>0.01</td><td>0</td><td>24117</td></tr><tr><td>07 Apr27.50 (MSQ DY-E)</td><td>1.24</td><td>+0.11</td><td>1.24</td><td>1.28</td><td>707</td><td>101260</td><td>07 Apr27.50 (MSQ PY-E)</td><td>0.04</td><td>+0.01</td><td>0.02</td><td>0.04</td><td>627</td><td>73725</td></tr><tr><td>07 Apr30.00 (MSQ DK-E)</td><td>0.02</td><td>-0.01</td><td>0.02</td><td>0.03</td><td>20</td><td>176999</td><td>07 Apr30.00 (MSQ PK-E)</td><td>1.32</td><td>-0.18</td><td>1.28</td><td>1.31</td><td>437</td><td>52705</td></tr><tr><td>07 Apr32.50 (MSQ DZ-E)</td><td>0.01</td><td>0.0</td><td>0.0</td><td>0.01</td><td>0</td><td>65125</td><td>07 Apr32.50 (MSQ PZ-E)</td><td>3.80</td><td>-0.30</td><td>3.75</td><td>3.85</td><td>3</td><td>326</td></tr><tr><td>07 May 25.00 (MSQ EJ-E)</td><td>3.80</td><td>+0.20</td><td>3.80</td><td>3.90</td><td>1</td><td>2126</td><td>07 May 25.00 (MSQ QJ-E)</td><td>0.05</td><td>-0.02</td><td>0.03</td><td>0.06</td><td>25</td><td>4779</td></tr><tr><td>07 May 27.50 (MQVEY-E)</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0</td><td>0</td><td>07 May 27.50 (MQV QY-E)</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0</td><td>0</td></tr><tr><td>07 May 27.50 (MSQ EY-E)</td><td>1.55</td><td>+0.04</td><td>1.56</td><td>1.59</td><td>1650</td><td>58823</td><td>07 May 27.50 (MSQ QY-E)</td><td>0.29</td><td>-0.02</td><td>0.27</td><td>0.29</td><td>108</td><td>23535</td></tr><tr><td>07 May 30.00 (MQVEK-E)</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0</td><td>0</td><td>07 May 30.00 (MQV QK-E)</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0</td><td>0</td></tr><tr><td>07 May 30.00 (MSQ EK-E)</td><td>0.25</td><td>0.0</td><td>0.25</td><td>0.26</td><td>428</td><td>20336</td><td>07 May 30.00 (MSQ QK-E)</td><td>1.49</td><td>-0.10</td><td>1.48</td><td>1.52</td><td>479</td><td>4122</td></tr><tr><td>07 May 32.50 (MSQ EZ-E)</td><td>0.02</td><td>0.0</td><td>0.01</td><td>0.03</td><td>0</td><td>1844</td><td>07 May 32.50 (MSQ QZ-E)</td><td>0.0</td><td>0.0</td><td>3.75</td><td>3.85</td><td>0</td><td>20</td></tr></table>

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/82a3b67b1ac551ff8e83cd07add972c8e8800e05ac9c3a9a6907032ddafe9c03.jpg)  
Put - Call Parity

- The combination "Long Put - Short Call" equals a short forward contract with delivery rate  $K$ .  
- We found the value of a short forward earlier, obtaining the Put Call Parity relation

$$
\Longrightarrow \operatorname {P u t} - \operatorname {C a l l} = e ^ {- r \times T} \times (K - F _ {0, T})
$$

# Put - Call Parity

- $\Rightarrow$  Given the price of a call, we can always get the price of the put (and vice-versa)  
- For instance, for a non-dividend paying stock, we have

$$
\begin{array}{l} \mathrm {P u t} = \mathrm {C a l l} + e ^ {- r \times T} \times (K - F _ {0, T}) \\ = \mathrm {C a l l} + e ^ {- r \times T} \times K - e ^ {- r \times T} \times F _ {0, T} \\ = \mathrm {C a l l} + e ^ {- r \times T} \times K - e ^ {- r \times T} \times S _ {0} \times e ^ {r \times T} \\ = \mathrm {C a l l} + e ^ {- r \times T} \times K - S _ {0} \\ \end{array}
$$

- For instance, if  $K = \$ 100$ ,  $S_{0} = \$ 100$ ,  $T = 1$ ,  $r = 5\%$  and  $Call = \$ 10.4506$ , then

$$
\mathrm {P u t} = \$ 10.4506 + e ^ {- 5 \% \times 1} \times \$ 100 - \$ 100 = \$ 10.4506 + \$ 95.1229 - \$ 100 = \$ 5.5735
$$

# Hedging with Options

- Options are really insurance contracts.  
- Example: A firm is long a stock  $S$  and it is worried about  $S$  declining.  
- Consider 2 strategies

1. It can hedge the risk by using a forward (or futures) contract on  $S$  with delivery price  $K$ .

$$
\Rightarrow \mathrm {P a y o f f} \mathrm {a t} T = S _ {T} + (K - S _ {T}) = K
$$

2. It can insure against the risk by buying a put option

$$
\Rightarrow \mathrm {P a y o f f a t} T = S _ {T} + \max (K - S _ {T}, 0) = \left\{ \begin{array}{l l} S _ {T} & \mathrm {i f} S _ {T} > K \\ K & \mathrm {i f} S _ {T} <   K \end{array} \right.
$$

- As any insurance contract, it costs money upfront to purchase options (the option's premium) - In contrast, it costs nothing to enter into forward contracts.

# Option Premium

- How can we compute the option premium?  
- Usual insurance principle does not apply: The risks of underlying are not independent.  
- In the future, we will study two main (related) methodologies to determine the option premium, the "binomial tree" approach, and the Black, Scholes, and Merton model.  
- In what follows, we instead look at some basic no arbitrage "bounds" that have to hold.

# Option Premium: No Arbitrage Bounds

- A call option, European or American, is never worth more than the stock:

$$
\mathrm {C a l l} \leq S _ {t}
$$

- A put option, European or American, is never worth more than the strike:

$$
\mathrm {P u t} \leq K
$$

- Options never have negative values.  
- A European put is never worth more than the present value of the strike price

$$
\mathrm {E u r o p e a n P u t} \leq K e ^ {- r (T - t)}
$$

- Think what happens if a company goes bankrupt  $\Longrightarrow S_{t} = 0$ .

# Option Premium: No Arbitrage Bounds

- The value of a call (put) option is always higher than the value of long (short) forward with delivery price equal to strike price.
- Recall from Teaching Notes 2 (consider a non-dividend paying stock for simplicity):

$$
\mathrm {L o n g F o r w a r d} = e ^ {- r T} \left[ F _ {t, T} - K \right] = S _ {t} - K e ^ {- r (T - t)}
$$

$$
\mathrm {S h o r t F o r w a r d} = e ^ {- r T} \left[ K - F _ {t, T} \right] = K e ^ {- r (T - t)} - S _ {t}
$$

- So, we have

$$
\mathrm {C a l l} \geq \max \left(0, S _ {t} - K e ^ {- r (T - t)}\right)
$$

$$
\mathrm {P u t} \geq \max \left(0, K e ^ {- r (T - t)} - S _ {t}\right)
$$

- Intuition:
- An option always pays no less than the forward contract (as the option payoff equals the positive part of the forward).

# Option Premium: No Arbitrage Bounds

- Putting together the previous bounds, we find that for a non-dividend paying stock the call option premium has to be in the shaded area

$$
S _ {t} \geq \mathrm {C a l l} \geq \max \left(0, S _ {t} - K e ^ {- r (T - t)}\right)
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/6f5cd5d5aa00befa9774c819e330eee23ab97d5cd1176f6e02524d9a5d59488d.jpg)

# Option Premium: No Arbitrage Bounds

- Putting together the previous bounds, we find that for a non-dividend paying stock the put option premium has to be in the shaded area

$$
e ^ {- r (T - t)} K \geq \mathrm {P u t} \geq \max \left(0, K e ^ {- r (T - t)} - S _ {t}\right)
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/ddf9777e947f000b2c5c377c546352a0c216cfd52ce408fbab15a7d9781e94a7.jpg)

# Options' Combinations

- Combining options with various strike prices allows a trader to speculate on particular views, or a hedger to make up a customized hedged portfolios.  
- **Protective Put:** A long position in stock is risky. Purchasing a put provides a hedge against the fall in stock.  $\Rightarrow$  Payoff at  $T = S_{T} + \max(K - S_{T}, 0)$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/bf65a4035d62649da5188cee77ebba15ab1caff2dae87b8d1a3664d152a210f7.jpg)

# Options' Combinations

- Covered Call: A short call gives potentially infinite liability. Holding the stock provides a hedge for the option seller.  $\Rightarrow$  Payoff at  $T = S_{T} - \max(S_{T} - K, 0)$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/9039d6db54c7c7487406aa8f8ec3430049822fb647a34169d2edfbeba6e2fd97.jpg)

# Options' Spreads

- Bear Spread: Bet on a decrease in the stock price. Short OTM put (strike  $K_{1}$ ) and long ITM put (strike  $K_{2} > K_{1}$ ).

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/56f088e65df38b04a89e49757762baca266d4724adfdd98a8a1be3222dc226d9.jpg)

# Options' Spreads

- Bull Spread: Bet on an increase in the stock price. Long ITM call (strike  $K_{1}$ ) and short OTM call (strike  $K_{2} > K_{1}$ ).

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/c2f9fe6cc687c07653bdccd14cce1f8c8c9f1ab0bc43d551262821f00e24fead.jpg)

# Options' Spreads

- Bull Spread using Puts: Long OTM put (strike  $K_{1}$ ) and short ITM put (strike  $K_{2} > K_{1}$ ) [this part is a short bear spread] plus cash  $K_{2} - K_{1}$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/7d0208865cb1e4bd5b96d2944932282231b4471bea15a9113ae27a8a2b6d7d3a.jpg)

# Options' Spreads

- **Butterfly Spread:** Long 1 call with strike  $K_{0}$ , short 2 calls with strike  $K_{1}$ , and long 1 call with strike  $K_{2}$ , with  $K_{0} < K_{1} < 2$  and  $K_{1} = (K_{0} + K_{2}) / 2$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/bfcd1ea707a6429237ff20b6b141c27d70e867b7e6752503cabad161308292b7.jpg)

What are you betting on here?

# Options' Spreads

- **Butterfly Spread - 2:** Long 1 put with strike  $K_{0}$ , short 2 puts with strike  $K_{1}$ , and long 1 put with strike  $K_{2}$ , with  $K_{0} < K_{1} < 2$  and  $K_{1} = (K_{0} + K_{2}) / 2$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/9f5e0dd0b1b58547d835a4f37ad31b34dc8f4f02e3153d74601252ec4f25af74.jpg)

# Slope Restrictions

- What is the sensitivity of a put option to changes in the strike price?
- Consider the bull spread with puts. Its payoff is always positive for every stock price at maturity, and therefore its value today must be positive.

$$
\mathrm {P u t} (K _ {1}) - \mathrm {P u t} (K _ {2}) + (K _ {2} - K _ {1}) e ^ {- r (T - t)} \geq 0 \Longrightarrow (K _ {2} - K _ {1}) e ^ {- r (T - t)} \geq \mathrm {P u t} (K _ {2}) - \mathrm {P u t} (K _ {1})
$$

- We also know that  $\operatorname{Put}(K_2) > \operatorname{Put}(K_1)$ , as  $K_2 > K_1$ .  
- Therefore, we have:

$$
0 \leq \frac {\mathrm {P u t} (K _ {2}) - \mathrm {P u t} (K _ {1})}{K _ {2} - K _ {1}} \leq e ^ {- r (T - t)}
$$

- Taking the limit at  $K_{2} \to K_{1}$ , we realize the middle term is the first derivative of a put option with respect to the strike price, obtaining

$$
0 \leq \frac {d P u t (K)}{d K} \leq e ^ {- r (T - t)}
$$

- $\Longrightarrow$  One dollar increase in the strike price, increases the put price by less than the present value of one dollar.
- A similar derivation can be made for calls.

# Convexity Restrictions

- The put price increases as the strike price increases. How does the rate of increase depend on the strike price?  
- Consider the butterfly spread. The payoff is positive, so its value is always positive.

$$
\mathrm {P u t} (K _ {0}) - 2 \mathrm {P u t} (K _ {1}) + \mathrm {P u t} (K _ {2}) \geq 0
$$

$$
\Longrightarrow (\operatorname {P u t} (K _ {2}) - \operatorname {P u t} (K _ {1})) - (\operatorname {P u t} (K _ {1}) - \operatorname {P u t} (K _ {0})) \geq 0
$$

- We assumed  $K_{1} = (K_{2} + K_{0}) / 2 \Longrightarrow K_{2} - K_{1} = K_{1} - K_{0}$ , therefore we obtain

$$
\frac {\mathrm {P u t} (K _ {2}) - \mathrm {P u t} (K _ {1})}{K _ {2} - K _ {1}} - \frac {\mathrm {P u t} (K _ {1}) - \mathrm {P u t} (K _ {0})}{K _ {1} - K _ {0}} \geq 0
$$

Slope between  $K_{1}$  and  $K_{2}$  Slope between  $K_{0}$  and  $K_{1}$

- The Change in Slope is positive.  
$\bullet \Longrightarrow$  The put price is convex in the strike price.  
- A similar derivation can be made for calls.

# Convexity Restrictions

- Graphically, the following figure plots the S&P500 put prices versus strike prices on May 11, 2007, when the S&P500=1505.42.
- The convexity is evident.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/7cab330113174d8a2ffadd275a711f036b4d6df8eeafaf3eaf739afe4eac5c46.jpg)

# Other Popular Strategies

- Straddle. Bet on high volatility. Long a call and a put with the same strike price.
- To understand this strategy, it is better to use a profit diagram, rather than a payoff diagram.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/81bff0764b8c54a698db7a7089571fae2db13a03c257143b3b1e93495ce0c9c7.jpg)

# Other Popular Strategies

- Strangle. Bet on large movements. Long a put with strike  $K_{0}$  and a call with strike  $K_{1} > K_{0}$ . - The profit diagram is as follows.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/fb662f9e67d944217c7f5321d996cbd1942f00e14ecd16aa7c42f294fd840d22.jpg)

# Other Popular Strategies

- European Box Spread. Long ITM put and call (strike  $K_{1}$  and  $K_{2} > K_{1}$ ) and short OTM call and put (strike  $K_{1}$  and  $K_{2} > K_{1}$ ).

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/b473d339dd594e18fd9cb74b950281db40baa7c7d676a7899a0c69759c507209.jpg)

- $\Longrightarrow$  Payoff is the same as a zero coupon bond with principal  $K_{2} - K_{1}$ .  
- $\Longrightarrow$  The short Box Spread allows a trader to borrow using the option's market.

# Options and Payoff Flexibility

- The number of option's strategies is virtually endless.  
- Indeed, a trader can draw pretty much any desired payoff structure on a board, and find a portfolio of options that generates that payoff structure.  
- For instance, what is the portfolio that generates the following payoff?

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/8dd6c595ba0ebf71639f395f1ebafa7991a5e1536d8ce21b5b26af8a859e9c35.jpg)

# Financial Instruments

# Teaching Note 4

# Binomial Trees and Risk Neutral Pricing

John Heaton

The University of Chicago

Booth School of Business

1. Binomial Trees

1.1 One Step Binomial Trees  
1.2 Replicating Portfolio

2 Risk Neutral Pricing  
3 Two-Step Binomial Trees  
4 Multi Step Trees

4.1 Binomial Trees and the Log-normal Distribution of Stock Returns

# Binomial Trees

- Binomial trees are a convenient tool to introduce a fundamental technique to price derivative securities, called Risk Neutral Pricing  
- In addition, besides being simple to understand, they also offer a pricing methodology for complicated problems.
- Indeed, the use of binomial and trinomial trees is a standard numerical procedure to solve for American options, or options with time varying volatility.

# One Step Binomial Trees

- Today is  $t = 0$  and you are evaluating a given stock.  
- At  $t = 1$  analysts believe the stock can either be  $S_{1,u} = 70$  with probability  $q = 0.7$ , or  $S_{1,d} = 35$  with probability  $1 - q = .3$ .  
- Given a (simple) expected return of  $R = 19\%$ , the market value today of the stock is

$$
S _ {0} = \frac {E [ S _ {1} ]}{1 + R} = \frac {q \times S _ {1 , u} + (1 - q) \times S _ {1 , d}}{1 + R} = \frac {. 7 \times 7 0 + . 3 \times 3 5}{1 . 1 9} = 5 0
$$

- The stock tree is given by:

$$
i = 0
$$

$$
i = 1
$$

$$
\boxed {S _ {0} = 5 0}
$$

$$
\boxed {S _ {1, u} = 7 0}
$$

$$
\boxed {S _ {1, d} = 3 5}
$$

- What are the expected return and variance of the stock return?

# Expected Return and Volatility on Binomial Trees

- Expected (Gross) Return:

$$
\begin{array}{l} E \left(\frac {S _ {1}}{S _ {0}}\right) = q \times \left(\frac {S _ {1 , u}}{S _ {0}}\right) + (1 - q) \times \left(\frac {S _ {1 , d}}{S _ {0}}\right) \\ = 0. 7 \times \left(\frac {7 0}{5 0}\right) + 0. 3 \times \left(\frac {3 5}{5 0}\right) \\ = 1. 1 9 \\ \end{array}
$$

- Variance. From the definition of variance:

$$
\begin{array}{l} E \left\{\left[ \frac {S _ {1}}{S _ {0}} - E \left(\frac {S _ {1}}{S _ {0}}\right) \right] ^ {2} \right\} = q \times \left(\frac {S _ {1 , u}}{S _ {0}} - 1. 1 9\right) ^ {2} + (1 - q) \times \left(\frac {S _ {1 , d}}{S _ {0}} - 1. 1 9\right) ^ {2} \\ = 0. 7 \times \left(\frac {7 0}{5 0} - 1. 1 9\right) ^ {2} + 0. 3 \times \left(\frac {3 5}{5 0} - 1. 1 9\right) ^ {2} \\ \begin{array}{r l} {{=}} & {{. 1 0 2 9}} \end{array} \\ \end{array}
$$

- The standard deviation (volatility) is then  $= \sqrt{1029} = 0.3207$

# Option Prices on a Binomial Tree

- We want to price a call option with maturity  $T = 1$  and strike price  $K = 50$ .
- The idea of binomial trees is to proceed backward from the end of the tree.

* According to the tree, what is the value of a call option at  $T = 1$ ?

$$
\mathrm {I n t h e U p N o d e} = c _ {1, u} = \max  (S _ {1, u} - K, 0) = \max  (7 0 - 5 0, 0) = 2 0
$$

$$
\mathrm {I n t h e D o w n N o d e} = c _ {1, d} = \max (S _ {1, d} - K, 0) = \max (3 5 - 5 0, 0) = 0
$$

* On the tree:

$$
i = 0
$$

$$
i = 1
$$

$$
S _ {0} = 5 0
$$

$$
c _ {0} = \ref {e q : 1}
$$

$$
S _ {1, u} = 7 0
$$

$$
c _ {1, u} = \max (7 0 - 5 0, 0) = 2 0
$$

$$
S _ {1, d} = 3 5
$$

$$
c _ {1, d} = \max (3 5 - 5 0, 0) = 0
$$

- What is the value of the call option  $c_0$ ?

# Replicating Portfolio

- Let the (continuously compounded) interest rate be  $r = .11$ .  
- Consider a portfolio of stocks and bonds, with
- Position  $\Delta = 0.5714$  in stocks, for a dollar value  $\Delta \times S_0 = 28.5714$  
- Position of  $B_{0} = -17.9167$  in bonds (negative = short bonds).  
- The value of the portfolio today is  $P_{0} = 28.5714 - 17.9167 = 10.6547$
- What is the value of the portfolio at time  $i = 1$ ?

$$
\mathrm {I n t h e U p N o d e} = P _ {1, u} = \Delta \times S _ {1, u} + B _ {0} \times e ^ {r} = 0. 5 7 1 4 \times 7 0 - 2 0 = 2 0
$$

$$
\mathrm {I n t h e D o w n N o d e} = P _ {1, d} = \Delta \times S _ {1, d} + B _ {0} \times e ^ {r} = 0. 5 7 1 4 \times 3 5 - 2 0 = 0
$$

- But this is the payoff of the call option!

$$
\text {N o A r b i t r a g e} \Rightarrow c _ {0} = P _ {0} = \Delta \times S _ {0} + B _ {0} = 1 0. 6 5 4 7
$$

- If not, "buy cheap and sell dear"

* E.g. if  $c_0 > P_0$ , sell the call option, and buy the replicating portfolio.

# Where Does the Replicating Portfolio Come From?

- Consider an arbitrageur who buys a call option and hedge it using  $\Delta$  stocks.  
- The value portfolio of the arbitrageur is

$$
\Pi_ {0} = c _ {0} - \Delta \times S _ {0}
$$

- Delta Hedging  $\Longrightarrow$  whatever the stock does at  $i = 1$ , the portfolio value must be the same.
- $\Longrightarrow$  The arbitrageur chooses  $\Delta$  at time 0 so that

Value of Portfolio in Up Node = Value of Portfolio in Down Node

$$
\Pi_ {1, u} = \Pi_ {1, d}
$$

$$
c _ {1, u} - \Delta \times S _ {1, u} = c _ {1, d} - \Delta \times S _ {1, d}
$$

- One equation in one unknown  $(\Delta)$ :

$$
\Longrightarrow \Delta = \frac {c _ {1 , u} - c _ {1 , d}}{S _ {1 , u} - S _ {1 , d}}
$$

- That is:  $\Delta =$  sensitivity of call price to changes in the stock price.

# Where Does the Replicating Portfolio Come From?

- With this choice of  $\Delta$ , the portfolio  $\Pi$  has equal value in both up and down node:

$$
\Pi_ {1, u} = \Pi_ {1, d}
$$

- $\Longrightarrow$  its value at time  $i = 0$  must then be the simple riskless present value  $PV(\Pi_{1,u})$ , i.e.:

$$
\Pi_ {0} = e ^ {- r \times T} \times \Pi_ {1, u}
$$

- Recall that by definition  $\Pi_0 = c_0 - \Delta S_0$ . We now know  $\Pi_0$ , therefore, we obtain

$$
c _ {0} = \Delta S _ {0} + \Pi_ {0}
$$

- Compare this expression with the replicating portfolio  $P_{0} = \Delta S_{0} + B_{0}$  (which equals  $c_{0}$  by no arbitrage) we see that the position in bonds must then be

$$
B _ {0} = \Pi_ {0} = e ^ {- r T} \Pi_ {1, u} = e ^ {- r T} \left(c _ {1, u} - \Delta \times S _ {1, u}\right)
$$

# Example

$$
i = 0
$$

$$
i = 1
$$

$$
S _ {0} = 5 0
$$

$$
c _ {0} =??
$$

$$
S _ {1, u} = 7 0
$$

$$
c _ {1, u} = \max \left(7 0 - 5 0, 0\right) = 2 0
$$

$$
S _ {1, d} = 3 5
$$

$$
c _ {1, d} = \max \left(3 5 - 5 0, 0\right) = 0
$$

$$
\Longrightarrow \Delta = \frac {c _ {1 , u} - c _ {1 , d}}{S _ {1 , u} - S _ {1 , d}} = \frac {2 0 - 0}{7 0 - 3 5} = 0. 5 7 1 4
$$

- The portfolio long the call and short  $\Delta$  stocks is valued at time  $i = 1$

$$
\Pi_ {1, u} = c _ {1, u} - \Delta \times S _ {1, u} = 2 0 - 0. 5 7 1 4 \times 7 0 = - 2 0
$$

$$
\Pi_ {1, d} = c _ {1, d} - \Delta \times S _ {1, d} = 0 - 0. 5 7 1 4 \times 3 5 = - 2 0
$$

- The bond position is then

$$
B _ {0} = e ^ {- 11 \%} \times (- 20) = - 17.9167
$$

- A negative number indicates borrowing.

# Summing Up

- To summarize, in order to price any derivative security with payoff  $V_{1,u}$  and  $V_{1,d}$  on the tree, we proceed as follows:

1. Define delta to invest in stocks:  $\Delta = \frac{V_{1,u} - V_{1,d}}{S_{1,u} - S_{1,d}}$  
2. Compute amount of bonds:  $B_{0} = e^{-rT}\times (V_{1,u} - \Delta \times S_{1,u})$  
3. Compute value of security:  $V_{0} = \Delta \times S_{0} + B_{0}$

- Example: put option with strike price  $K = 50$ .

$$
- \Longrightarrow p _ {1, u} = 0 \mathrm {a n d} p _ {1, d} = \max (K - S _ {1, d}, 0) = 1 5
$$

1. Delta:  $\Delta = \frac{p_{1,u} - p_{1,d}}{S_{1,u} - S_{1,d}} = \frac{0 - 15}{70 - 35} = -0.4285$  
2. Bonds:  $B_{0} = e^{-rT}\times (p_{1,u} - \Delta \times S_{1,u}) = e^{-.11}\times (0 + 0.4285\times 70) = 26.8750$  
3. Value:  $p_0 = \Delta \times S_0 + B_0 = -0.4285 \times 50 + 26.8750 = 5.4464$

- If you sold the option, the replicating portfolio is simply  $P_{0} = \Delta \times S_{0} + B_{0} = 5.4464$ . At  $t = 1$ :

$$
\begin{array}{l} - \Rightarrow P _ {1, u} = \Delta \times S _ {1, u} + e ^ {r} B _ {0} = 0, \text {o r} \\ - \Longrightarrow P _ {1, d} = \Delta \times S _ {1, d} + e ^ {r} B _ {0} = 1 5. \\ \end{array}
$$

# Where is the probability  $\pmb{q}$  of moving up?

- The pricing formula does not include the probability of moving up  $q$ .  
- Does this imply that the probability of moving up does not impact option prices?
- Answer: yes and no.

1. Given  $S_0$ ,  $S_{1,u}$  and  $S_{1,d}$ , options' payoffs can be replicated without reference to probabilities.

$\ast \Longrightarrow$  No impact of  $q$  on prices.

2. However,  $q$  determines the expected future stock price. Given a discount (e.g.  $19\%$ ),  $S_0$  is determined as the PV of future stock price.

$\ast \Longrightarrow$  The current value of  $S_{0}$  already depends on  $q$ .

* Since option values depend on  $S_0$ , the probability  $q$  does impact the value of options.

# Risk Neutral Pricing

- The above procedure is rather cumbersome.  
- There is an alternative procedure that is much easier to work with.  
- Since given  $S_0, S_{1,u}$  and  $S_{1,d}$ , the probability  $q$  does not impact the price of the option, we can choose a fake  $q^*$  that allows us to make our computations easy.  
- Risk Neutral Pricing: Choose  $q^*$  so that all risky assets yield the risk free rate. - Find  $q^*$  such that

$$
E ^ {*} \left(\frac {S _ {1}}{S _ {0}}\right) = e ^ {r \times T}
$$

$$
\begin{array}{l} \Longrightarrow q ^ {*} \times \left(\frac {S _ {1 , u}}{S _ {0}}\right) + (1 - q ^ {*}) \times \left(\frac {S _ {1 , d}}{S _ {0}}\right) = e ^ {r \times T} \\ \Longrightarrow \quad q ^ {*} = \frac {S _ {0} \times e ^ {r \times T} - S _ {1 , d}}{S _ {1 , u} - S _ {1 , d}} \\ \end{array}
$$

# Risk Neutral Pricing

- We can now use  $q^*$  to price any derivative assets simply as the  $PV(\text{payoff})$ :

$$
\text {P r i c e} = E ^ {*} \left[ e ^ {- r T} \text {D e r i v a t i v e P a y o f f} \right] \tag {1}
$$

- The star  $*$  on  $E^{*}[\cdot]$  denotes the fact that we use the fake probability  $q^{*}$  to compute it.  
- Does it work?

1. Risk Neutral Probability:  $q^{*} = \frac{50 \times e^{.11} - 35}{70 - 35} = 0.5947$  
2. Call Price:

$$
c _ {0} = e ^ {- r \times T} \times E ^ {*} [ c _ {1} ] = e ^ {-. 1 1} \times [ q ^ {*} \times 2 0 + (1 - q ^ {*}) \times 0 ] = 1 0. 6 5 4 7
$$

3. Put Price:

$$
p _ {0} = e ^ {- r \times T} \times E ^ {*} [ p _ {1} ] = e ^ {-. 1 1} \times [ q ^ {*} \times 0 + (1 - q ^ {*}) \times 1 5 ] = 5. 4 4 6 4
$$

4. Forward contract to deliver at  $K = 50$

$$
f _ {0} = e ^ {- r \times T} \times E ^ {*} [ K - S _ {1} ] = e ^ {-. 1 1} \times [ q ^ {*} \times (5 0 - 7 0) + (1 - q ^ {*}) \times (5 0 - 3 5) ] = - 5. 2 0 8 3
$$

- Any derivative security satisfies risk neutral pricing formula (1)

# Risk Neutral Pricing: A Recipe

- The recipe to price derivative securities is as follows:

1. Assume everybody is risk neutral.  
2. Compute probabilities consistent with risk neutralities.  
3. Price any derivative security as

Price of Derivative Security  $= E^{*}\left[e^{-r\times T}\times \left(\mathrm{Payoff~at}T\right)\right]$

- This methodology works even outside of the binomial tree model.
- It is an implication of no arbitrage.

# Risk Neutral Pricing: Examples

- Forward Contracts.
- The profit at  $T$  from a forward contract is

$$
\mathrm {P r o f i t a t} T = S _ {T} - F _ {0, T}
$$

- It costs nothing to enter into a forward contract.  
- If everybody is risk neutral, what should be the expected profit?

* Zero, as risk does not matter.

$$
E ^ {*} \left[ S _ {T} - F _ {0, T} \right] = 0 \Longrightarrow F _ {0, T} = E ^ {*} \left[ S _ {T} \right]
$$

- If everybody is risk neutral, what should be the return on stocks?

* The risk free rate

$$
S _ {0} = e ^ {- r \times T} E ^ {*} [ S _ {T} ]
$$

- Thus, we find

$$
F _ {0, T} = E ^ {*} \left[ S _ {T} \right] = S _ {0} \times e ^ {r \times T}
$$

- The same result as in TN2.

# Risk Neutral Pricing: Examples

- Swaps.
- In a swap, two counterparties agree to exchange at  $T_{1}, T_{2}, \ldots, T_{n}$

$$
\mathrm {C a s h F l o w a t} T _ {i} = (S _ {T _ {i}} - K)
$$

- The value of the swap at time zero can be computed using the risk neutral pricing formula

$$
\begin{array}{l} V _ {0} ^ {s w a p} = \mathrm {P r e s e n t V a l u e (u s i n g} r) \mathrm {o f E x p e c t e d F u t u r e C a s h F l o w s (u s i n g} q ^ {*}) \\ = e ^ {- r \times T _ {1}} \times E ^ {*} [ S _ {T _ {1}} - K ] + e ^ {- r \times T _ {2}} \times E ^ {*} [ S _ {T _ {2}} - K ] + \ldots + e ^ {- r \times T _ {n}} \times E ^ {*} [ S _ {T _ {n}} - K ] \\ \end{array}
$$

- From Risk Neutral Pricing formula, we know  $F_{0,T_i} = E^*[S_{T_i}]$

$$
V _ {0} ^ {s w a p} = e ^ {- r \times T _ {1}} \times [ F _ {0, T _ {1}} - K ] + e ^ {- r \times T _ {2}} \times [ F _ {0, T _ {2}} - K ] + \ldots + e ^ {- r \times T _ {n}} \times [ F _ {0, T _ {n}} - K ]
$$

- If we are looking for  $K =$  Swap Price, we need to set  $V_0^{swap} = 0$  and solve for  $K$

$$
K = w _ {1} F _ {0, T _ {1}} + w _ {2} F _ {0, T _ {2}} + \ldots + w _ {n} F _ {0, T _ {n}} \quad \mathrm {w h e r e} \quad w _ {i} = \frac {e ^ {- r T _ {i}}}{e ^ {- r T _ {1}} + e ^ {- r T _ {2}} + \ldots + e ^ {- r T _ {n}}}
$$

# Risk Neutral Pricing and Discount Rates

- The previous examples show the convenience of risk neutral pricing technique.  
- This technique can only be used to price derivative securities, and it follows by no arbitrage.  
- It is a convenient pricing device, and it must not be confused with an assumption that market participants are risk neutral.
- Market participants are risk averse in our setting  
- However, the dynamic hedging strategy takes away the risk (delta hedging), and thus for the pricing of derivative securities, we can pretend market participants are risk neutral.

# Risk Neutral Pricing and Discount Rates: Forward Prices

- As a final comment, we found that the forward price is

$$
F _ {0, T} = E ^ {*} [ S _ {T} ]
$$

- I.e. the forward price is the risk neutral expected future stock price.
- There is little information in forward prices about the true market expectations of future stock prices (or exchange rates etc).
- In particular, a risk adjustment has to be made. In fact, we have

$$
F _ {0, T} = S _ {0} \times e ^ {r \times T}
$$

- However, we also know that using the true expectations and expected return for stocks  $\mu$ :

$$
E [ S _ {T} ] = S _ {0} \times e ^ {\mu \times T}
$$

- Substitute, to obtain the relation

$$
F _ {0, T} = e ^ {- (\mu - r) \times T} E [ S _ {T} ]
$$

- $\Rightarrow$  The forward price is the expected future stock price, discounted at the excess rate of return  $(\mu - r)$

# Risk Neutral Pricing and Discount Rates: Forward Prices

DOLLAR SPOT FORWARD AGAINST THE DOLLAR  

<table><tr><td rowspan="2">Apr 4</td><td rowspan="2"></td><td rowspan="2">Closing
mid-point</td><td rowspan="2">Change
on day</td><td rowspan="2">Bid/offer
spread</td><td colspan="2">Day&#x27;s mid</td><td colspan="2">One month</td><td colspan="2">Three months</td><td colspan="2">One year</td><td rowspan="2">J.P. Morgan
Index</td></tr><tr><td>high</td><td>low</td><td>Rate</td><td>%PA</td><td>Rate</td><td>%PA</td><td>Rate</td><td>%PA</td></tr><tr><td>Europe</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Czech Rep.</td><td>(Koruna)</td><td>20.8984</td><td>-0.0132</td><td>844 - 123</td><td>21.0040</td><td>20.8844</td><td>20.8478</td><td>2.9</td><td>20.7499</td><td>2.8</td><td>20.4229</td><td>2.3</td><td>-</td></tr><tr><td>Denmark</td><td>(DKr)</td><td>5.5734</td><td>0.0004</td><td>726 - 741</td><td>5.5944</td><td>5.5708</td><td>5.5673</td><td>1.3</td><td>5.5562</td><td>1.2</td><td>5.5265</td><td>0.8</td><td>110.00</td></tr><tr><td>Hungary</td><td>(Forint)</td><td>183.947</td><td>0.3426</td><td>867 - 028</td><td>184.720</td><td>183.590</td><td>184.357</td><td>-2.7</td><td>185.117</td><td>-2.5</td><td>188.057</td><td>-2.2</td><td>-</td></tr><tr><td>Norway</td><td>(NKr)</td><td>6.1194</td><td>0.0046</td><td>172 - 215</td><td>6.1372</td><td>6.1120</td><td>6.1138</td><td>1.1</td><td>6.1049</td><td>0.9</td><td>6.1006</td><td>0.3</td><td>112.60</td></tr><tr><td>Poland</td><td>(Zloty)</td><td>2.8765</td><td>-0.0009</td><td>746 - 783</td><td>2.8878</td><td>2.8746</td><td>2.8734</td><td>1.3</td><td>2.8681</td><td>1.2</td><td>2.8594</td><td>0.6</td><td>-</td></tr><tr><td>Russia</td><td>(Rouble)</td><td>25.9694</td><td>-0.0042</td><td>669 - 719</td><td>26.0270</td><td>25.9620</td><td>25.9662</td><td>0.2</td><td>25.9603</td><td>0.1</td><td>25.9865</td><td>-0.1</td><td>-</td></tr><tr><td>Slovakia</td><td>(Koruna)</td><td>25.0013</td><td>0.2019</td><td>761 - 265</td><td>25.2560</td><td>24.8350</td><td>24.9695</td><td>1.5</td><td>24.8948</td><td>1.7</td><td>24.6513</td><td>1.4</td><td>-</td></tr><tr><td>Sweden</td><td>(SKr)</td><td>6.9687</td><td>-0.0387</td><td>667 - 706</td><td>7.0301</td><td>6.9603</td><td>6.9570</td><td>2.0</td><td>6.9347</td><td>1.9</td><td>6.8702</td><td>1.4</td><td>101.80</td></tr><tr><td>Switzerland</td><td>(SFr)</td><td>1.2181</td><td>0.0002</td><td>178 - 184</td><td>1.2232</td><td>1.2174</td><td>1.2150</td><td>3.1</td><td>1.2089</td><td>3.0</td><td>1.1870</td><td>2.6</td><td>107.10</td></tr><tr><td>Turkey</td><td>(Lira)</td><td>1.3730</td><td>-</td><td>715 - 745</td><td>1.3790</td><td>1.3680</td><td>1.3889</td><td>-13.9</td><td>1.4182</td><td>-13.2</td><td>1.5600</td><td>-13.6</td><td>-</td></tr><tr><td>UK (0.5058)*</td><td>(£)</td><td>1.9772</td><td>-0.0014</td><td>770 - 774</td><td>1.9775</td><td>1.9717</td><td>1.9770</td><td>0.1</td><td>1.9761</td><td>0.2</td><td>1.9658</td><td>0.6</td><td>103.50</td></tr><tr><td>Euro (0.7477)*</td><td>(Euro)</td><td>1.3375</td><td>0.0002</td><td>373 - 376</td><td>1.3380</td><td>1.3319</td><td>1.3391</td><td>-1.4</td><td>1.3421</td><td>-1.4</td><td>1.3506</td><td>-1.0</td><td>128.80</td></tr><tr><td>SDR</td><td>-</td><td>0.6605</td><td>-</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Americas</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Argentina</td><td>(Peso)</td><td>3.1013</td><td>-</td><td>000 - 025</td><td>3.1025</td><td>3.1000</td><td>3.0978</td><td>1.4</td><td>3.1023</td><td>-0.1</td><td>3.1663</td><td>-2.1</td><td>-</td></tr><tr><td>Brazil</td><td>(R$)</td><td>2.0365</td><td>-0.0021</td><td>355 - 375</td><td>2.0400</td><td>2.0310</td><td>2.0460</td><td>-5.6</td><td>2.0610</td><td>-4.8</td><td>2.1465</td><td>-5.4</td><td>-</td></tr><tr><td>Canada</td><td>(C$)</td><td>1.1575</td><td>0.0009</td><td>572 - 577</td><td>1.1593</td><td>1.1544</td><td>1.1564</td><td>1.1</td><td>1.1544</td><td>1.1</td><td>1.1473</td><td>0.9</td><td>123.90</td></tr><tr><td>Mexico</td><td>(New Peso)</td><td>10.9998</td><td>0.0160</td><td>975 - 020</td><td>11.0025</td><td>10.9714</td><td>11.0160</td><td>-1.8</td><td>11.0520</td><td>-1.9</td><td>11.2448</td><td>-2.2</td><td>81.90</td></tr><tr><td>Peru</td><td>(New Sol)</td><td>3.1815</td><td>0.0010</td><td>810 - 820</td><td>3.1830</td><td>3.1800</td><td>3.1795</td><td>0.8</td><td>3.1765</td><td>0.6</td><td>3.1795</td><td>0.1</td><td>-</td></tr><tr><td>USA</td><td>($)</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>88.10</td></tr><tr><td>Pacific/Middle East/Africa</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Australia</td><td>(A$)</td><td>1.2231</td><td>-0.0056</td><td>228 - 234</td><td>1.2398</td><td>1.2204</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>125.40</td></tr><tr><td>Hong Kong</td><td>(HK$)</td><td>7.8161</td><td>0.0009</td><td>159 - 163</td><td>7.8171</td><td>7.8147</td><td>7.8097</td><td>1.0</td><td>7.7929</td><td>1.2</td><td>7.7434</td><td>0.9</td><td>92.70</td></tr><tr><td>India</td><td>(Rs)</td><td>43.0700</td><td>0.0050</td><td>600 - 800</td><td>43.1350</td><td>42.8450</td><td>43.3225</td><td>-7.0</td><td>43.7050</td><td>-5.9</td><td>44.8423</td><td>-4.1</td><td>-</td></tr><tr><td>Indonesia</td><td>(Rupiah)</td><td>9116.00</td><td>21.0000</td><td>200 - 000</td><td>9121.00</td><td>9098.00</td><td>9116.00</td><td>-</td><td>9116.00</td><td>-</td><td>9116.00</td><td>-</td><td>-</td></tr><tr><td>Iran</td><td>(Rial)</td><td>9244.00</td><td>-1.0000</td><td>800 - 000</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Israel</td><td>(Shk)</td><td>4.1310</td><td>-0.0290</td><td>280 - 340</td><td>4.1580</td><td>4.1240</td><td>4.1275</td><td>1.0</td><td>4.1201</td><td>1.1</td><td>4.0968</td><td>0.8</td><td>-</td></tr><tr><td>Japan</td><td>(Y)</td><td>118.615</td><td>-0.1700</td><td>600 - 630</td><td>119.080</td><td>118.550</td><td>118.139</td><td>4.8</td><td>117.231</td><td>4.7</td><td>113.528</td><td>4.3</td><td>80.20</td></tr><tr><td>Kuwait</td><td>(Dinar)</td><td>0.2893</td><td>-0.0001</td><td>892 - 893</td><td>0.2894</td><td>0.2892</td><td>0.2892</td><td>0.1</td><td>0.2893</td><td>-</td><td>0.2894</td><td>-0.1</td><td>-</td></tr><tr><td>Malaysia</td><td>(M$)</td><td>3.4570</td><td>-0.0035</td><td>545 - 595</td><td>3.4600</td><td>3.4545</td><td>3.4516</td><td>1.9</td><td>3.4415</td><td>1.8</td><td>3.3985</td><td>1.7</td><td>-</td></tr><tr><td>New Zealand</td><td>(NZ$)</td><td>1.3865</td><td>-0.0013</td><td>860 - 870</td><td>1.3953</td><td>1.3841</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>137.20</td></tr><tr><td>Philippines</td><td>(Peso)</td><td>48.0500</td><td>-0.0750</td><td>400 - 600</td><td>48.2000</td><td>47.8700</td><td>48.0492</td><td>-</td><td>48.0563</td><td>-0.1</td><td>48.0615</td><td>-</td><td>-</td></tr><tr><td>Saudi Arabia</td><td>(SR)</td><td>3.7504</td><td>-</td><td>499 - 509</td><td>3.7509</td><td>3.7499</td><td>3.7489</td><td>0.5</td><td>3.7472</td><td>0.3</td><td>3.7435</td><td>0.2</td><td>-</td></tr><tr><td>Singapore</td><td>(S$)</td><td>1.5150</td><td>-0.0038</td><td>147 - 153</td><td>1.5205</td><td>1.5137</td><td>1.5119</td><td>2.5</td><td>1.5062</td><td>2.3</td><td>1.4824</td><td>2.2</td><td>105.70</td></tr><tr><td>South Africa</td><td>(R)</td><td>7.1718</td><td>-0.0168</td><td>667 - 768</td><td>7.1962</td><td>7.1460</td><td>7.1942</td><td>-3.8</td><td>7.2421</td><td>-3.9</td><td>7.4743</td><td>-4.2</td><td>-</td></tr><tr><td>South Korea</td><td>(Won)</td><td>936.500</td><td>-0.2500</td><td>000 - 000</td><td>937.000</td><td>935.500</td><td>935.850</td><td>0.8</td><td>934.600</td><td>0.8</td><td>930.300</td><td>0.7</td><td>113.00</td></tr><tr><td>Taiwan</td><td>(T$)</td><td>33.0900</td><td>-0.0310</td><td>850 - 950</td><td>33.1360</td><td>33.0640</td><td>33.0550</td><td>1.3</td><td>32.9300</td><td>1.9</td><td>32.3500</td><td>2.2</td><td>87.20</td></tr><tr><td>Thailand</td><td>(Bt)</td><td>34.9450</td><td>-0.0200</td><td>100 - 800</td><td>34.9800</td><td>31.9000</td><td>34.9215</td><td>0.8</td><td>34.8600</td><td>1.0</td><td>34.5550</td><td>1.1</td><td>-</td></tr><tr><td>U A E</td><td>(Dirham)</td><td>3.6723</td><td>0.0001</td><td>721 - 724</td><td>3.6724</td><td>3.6721</td><td>3.6715</td><td>0.2</td><td>3.6700</td><td>0.2</td><td>3.6688</td><td>0.1</td><td>-</td></tr></table>

*The closing mid-point rates for the Euro and £ are shown in brackets. The other figures in both rows are in the reciprocal form in line with market convention. † Official rate set by Malaysian government. The WM/Reuters rate for the valuation of capital assets is 3.80 MYR/USD. Bid/offer spreads in the Dollar Spot table show only the last three decimal places. J.P. Morgan nominal indices: Base average  $2000 = 100$ . Bid, offer, mid spot rates and forward rates in both this and tha pound table are derived from the WM/REUTERS 4pm (London time) CLOSING SPOT and FORWARD RATE services. Some values are rounded by the F.T.  
source:Financial Times www.ft.com)

# Risk Neutral Pricing and Discount Rates: Forward Prices

- For instance, on April 7 2007,  
- Current Exchange Rate  $M_0 = 1.3375 = \text{USD/EUR}$  
- One Year Forward Exchange Rate  $F_{0,1} = 1.3506$
- Does the market really expect the Euro to appreciate  $1.5\%$  ( $= 1.3506 / 1.3375 - 1$ )?
- Not necessarily, because the forward exchange rate is the risk neutral expectation of future exchange rate,  $F_{0,1} = E^{*}[M_{1}]$ , and it does not represent the true expectation,  $F_{0,1} \neq E[M_1]$ .  
- Indeed, we recall from TN 2 that by no arbitrage, the forward rate only depends on the interest rate differential between the two countries.
- Notice in fact that if the risk premium  $\mu - r_{\S}$  is negative (e.g. if the Euro moves inversely with the US stock market) then we may well have

$$
F _ {0, 1} = e ^ {- (\mu - r _ {\S}) T} E [ M _ {1} ] = 1. 3 5 0 6 > M _ {0} \quad \mathrm {b u t} \quad E [ M _ {1} ] \leq M _ {0}
$$

- This example simply illustrates that the relation between forward prices and expected forward prices is complicated by the risk

# Two-Step Binomial Trees

- Given the above methodology, we can now see it at work in a slightly more complicated example.  
- Consider the two step binomial tree

$$
\begin{array}{l} i = 0 \\ i = 1 \\ i = 2 \\ S _ {2, u u} = 1 0 0 \\ \end{array}
$$

$$
S _ {1, u} = 7 0
$$

$$
S _ {0} = 5 0
$$

$$
S _ {1, d} = 3 5
$$

$$
\begin{array}{c} S _ {2, u d} \\ S _ {2, d u} \end{array} = 5 0
$$

$$
S _ {2, d d} = 2 5
$$

- We want to price an option with maturity  $T = 2$  and strike price  $K = 50$ .  
- Consider the two methodologies.

# Methodology 1: Dynamic Replication

- Move backward on the tree.

$$
i = 0
$$

$$
i = 1
$$

$$
i = 2
$$

$$
S _ {2, u u} = 1 0 0
$$

$$
c _ {2, u u} = 5 0
$$

$$
S _ {0} = 5 0
$$

$$
c _ {0} =??
$$

$$
S _ {1, u} = 7 0
$$

$$
\Delta_ {1, u} = (5 0 - 0) / (1 0 0 - 5 0) = 1
$$

$$
B _ {1, u} = e ^ {- r} \left(c _ {2, u u} - \Delta_ {1, u} S _ {2, u u}\right) = - 4 4. 7 9 1 7
$$

$$
c _ {1, u} = \Delta_ {1, u} \times S _ {1, u} + B _ {1, u} = 2 5. 2 0 8 3
$$

$$
S _ {2, u d} = S _ {2, d u} = 5 0
$$

$$
c _ {2, u d} = c _ {2, d u} = 0
$$

$$
S _ {1, d} = 3 5
$$

$$
\Delta_ {1, d} = (0 - 0) / (5 0 - 2 5) = 0
$$

$$
B _ {1, d} = e ^ {- r} \left(c _ {2, d d} - \Delta_ {1, d} S _ {2, d d}\right) = 0
$$

$$
c _ {1, d} = \Delta_ {1, d} \times S _ {1, d} + B _ {1, d} = 0
$$

$$
S _ {2, d d} = 2 5
$$

$$
c _ {2, d d} = 0
$$

# Methodology 1: Dynamic Replication (cntd.)

- To summarize so far, the step from  $i = 2$  to  $i = 1$  determined that  $c_{1,u} = 25.2083$  and  $c_{1,d} = 0$  
- The last step is to compute the value at time 0, using at this point the same tree as before

$$
i = 0
$$

$$
i = 1
$$

$$
S _ {1, u} = 7 0
$$

$$
c _ {1, u} = 2 5. 2 0 8 3
$$

$$
S _ {0} = 5 0
$$

$$
\Delta_ {0} = (2 5. 2 0 8 3 - 0) / (7 0 - 3 5) = 0. 7 2 0 2
$$

$$
B _ {0} = e ^ {- r} \times (c _ {1, u} - \Delta_ {0} \times S _ {1, u}) = - 2 2. 5 8 2 4
$$

$$
c _ {0} = \Delta_ {0} \times S _ {0} + B _ {0} = 1 3. 4 2 9 4
$$

$$
S _ {1, d} = 3 5
$$

$$
c _ {1, d} = 0
$$

- Not exactly a piece of cake.  
- Risk neutral pricing simplify things considerably.

# Methodology 2: Risk Neutral Pricing

- Move backward on the tree.

$$
i = 0
$$

$$
i = 1
$$

$$
i = 2
$$

$$
S _ {2, u u} = 1 0 0
$$

$$
c _ {2, u u} = 5 0
$$

$$
S _ {0} = 5 0
$$

$$
q _ {0} ^ {*} = 0. 5 9 4 7
$$

$$
c _ {0} = e ^ {- r} \times q _ {0} ^ {*} \times c _ {1, u}
$$

$$
= 1 3. 4 2 9 4
$$

$$
S _ {1, u} = 7 0
$$

$$
q _ {1, u} ^ {*} = (7 0 e ^ {r} - 5 0) / (1 0 0 - 5 0) = 0. 5 6 2 8
$$

$$
c _ {1, u} = e ^ {- r} \times q _ {1, u} ^ {*} \times c _ {2, u u} = 2 5. 2 0 8 3
$$

$$
S _ {2, u d} = S _ {2, d u} = 5 0
$$

$$
c _ {2, u d} = c _ {2, d u} = 0
$$

$$
S _ {1, d} = 3 5
$$

$$
c _ {1, d} = e ^ {- r} \times E ^ {*} [ c _ {2} ] = 0
$$

$$
S _ {2, d d} = 2 5
$$

$$
c _ {2, d d} = 0
$$

# Risk Neutral Pricing

- It appears that risk neutral pricing simplifies computations considerably.  
- In particular, we can use the backward formula for all of the computations, that can be easily programmed with a computer.  
- Denote by  $(i,j)$  node the (time, node) on the tree.
- E.g.  $i = 0,1,2$  in previous example, and  $j = \{u\}, \{uu\}, \{ud\}$
- We then have

$$
V _ {i, j} = e ^ {- r \times h} \times E ^ {*} [ V _ {i + 1} | (\mathrm {t i m e}, \mathrm {n o d e}) = (i, j) ]
$$

- where  $h$  is the time interval between steps in the tree

# Risk Neutral Pricing - 2

- Indeed, if we know the (risk neutral) probabilities of stock prices at time  $T$ , risk neutral pricing can be applied directly using

$$
V _ {0} = e ^ {- r \times T} \times E ^ {*} [ \mathrm {P a y o f f a t} T ]
$$

- In previous example,

$$
\begin{array}{l} * \operatorname * {P r} (S _ {2, u u}) = q _ {0} ^ {*} \times q _ {1, u} ^ {*} = 0. 3 3 4 7; \\ * \operatorname * {P r} (S _ {2, u d}) = q _ {0} ^ {*} \times (1 - q _ {1, u} ^ {*}) + (1 - q _ {0} ^ {*}) * q _ {1, d} = 0. 4 8 8 1; \mathrm {a n d} \\ * \operatorname * {P r} (S _ {2, d d}) = 0. 1 7 7 2 \\ \end{array}
$$

- Thus, the price of the call option with strike  $K = 50$  is

$$
c _ {0} = e ^ {-. 1 1 \times 2} \times 0. 3 3 4 7 \times (1 0 0 - 5 0) = 1 3. 4 2 9 4
$$

- The price of a put is

$$
p _ {0} = e ^ {- 0. 1 1 \times 2} \times 0. 1 7 7 2 \times (5 0 - 2 5) = 3. 5 5 5.
$$

- The price of a short forward

$$
f _ {0} = e ^ {- 0. 1 1 \times 2} \left[ 0. 3 3 4 7 \times (5 0 - 1 0 0) + 0. 4 8 8 1 \times (5 0 - 5 0) + 0. 1 7 7 2 \times (5 0 - 2 5) \right] = - 9. 8 7 4 1
$$

# Multi Step Trees

- Binomial trees are extremely useful also to compute numerically the price of derivative securities under realistic assumptions.  
- We now first consider an extension of the previous 2-step model to an  $n$  step model.  
- Assume log returns have constant expected return  $\mu$  and constant volatility  $\sigma$ .
- That is, over a small interval of time  $h$ :

$$
E \left[ \frac {S _ {t + h}}{S _ {t}} \right] = e ^ {\mu \times h}; \quad \mathrm {a n d} \quad E \left[ \left(\frac {S _ {t + h}}{S _ {t}} - e \mu h\right) ^ {2} \right] = \sigma^ {2} \times h
$$

- Consider an option with maturity  $T$ .  
- We chop off the time interval  $[0, T]$  into  $n$  little intervals  $[0, T/n, 2T/n, 3T/n, \ldots, (n-1)T/n, T]$ . - Each interval is of size  $h = T/n$ . We denote the steps  $i = 0, 1, \ldots, n$ .

$\ast \Longrightarrow i\times h =$  calendar time on the tree.

# Multi Step Trees

- Assume that the stock process follows:

$$
S _ {i + 1} = \left\{ \begin{array}{l l} S _ {i} \times u & \text {w i t h p r o b a b i l i t y} q \\ S _ {i} \times d & \text {w i t h p r o b a b i l i t y} 1 - q \end{array} \right. \tag {1}
$$

- We now choose  $u, d$  and  $q$  to approximate the expected return  $\mu$  and variance  $\sigma^2$  on the tree.  
- The following conditions must be satisfied

1. Expected Return:  $E\left(\frac{S_{i + 1}}{S_i}\right) = e^{\mu \times h}$  so that

$$
q \times u + (1 - q) \times d = e ^ {\mu \times h}
$$

2. Variance:  $E\left(\left(\frac{S_{i + 1}}{S_i} - e^{\mu \times h}\right)^2\right) = \sigma^2 \times h$  which implies

$$
q \left(u - e ^ {\mu \times h}\right) ^ {2} + (1 - q) \left(d - e ^ {\mu \times h}\right) ^ {2} = \sigma^ {2} \times h
$$

- We have two equations and three parameters to choose  $\Longrightarrow$  we have one degree of freedom left. The following assumption gives symmetry to the problem.

3. Percentage increase in stock = percentage decrease in stock

$$
u = 1 / d
$$

# Multi Step Trees

- These three equations in three unknowns give the solution:

$$
u = e ^ {\sigma \times \sqrt {h}}; d = 1 / u; \mathrm {a n d} q = \frac {e ^ {\mu \times h} - d}{u - d}.
$$

- We can then use these parameters and the procedure (1) to construct our tree relatively easily.  
- Next figure shows an example from BinomialTree.xls

# Multi Step Trees: Example

# BINOMIAL TREE MODEL

<table><tr><td></td><td colspan="2">Stock Assumption</td><td colspan="3">Option Assumption</td><td colspan="2">Tree</td><td colspan="3">Risk Neutral Prob</td></tr><tr><td></td><td>mu</td><td>0.1</td><td>T</td><td colspan="2">0.1</td><td>n</td><td>10</td><td>q*</td><td>0.495834</td><td></td></tr><tr><td></td><td>sigma</td><td>0.3</td><td>K</td><td colspan="2">100</td><td>h</td><td>0.01</td><td></td><td></td><td></td></tr><tr><td></td><td>r</td><td>0.02</td><td>Call or Put</td><td colspan="2">1 (=1 for call</td><td>u</td><td>1.030455</td><td>Price Binomial</td><td>3.787</td><td></td></tr><tr><td></td><td>q</td><td>0</td><td></td><td colspan="2"></td><td>d</td><td>0.970446</td><td>Delta Binomial</td><td>0.527</td><td></td></tr><tr><td></td><td>S0</td><td>100</td><td></td><td colspan="2"></td><td>p</td><td>0.509173</td><td></td><td></td><td></td></tr><tr><td>time =&gt;</td><td>0</td><td>0.01</td><td>0.02</td><td>0.03</td><td>0.04</td><td>0.05</td><td>0.06</td><td>0.07</td><td>0.08</td><td>0.09</td></tr><tr><td>i=&gt;</td><td>0</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td><td>8</td><td>9</td></tr><tr><td>0</td><td>100.000</td><td>103.045</td><td>106.184</td><td>109.417</td><td>112.750</td><td>116.183</td><td>119.722</td><td>123.368</td><td>127.125</td><td>130.996</td></tr><tr><td>1</td><td></td><td>97.045</td><td>100.000</td><td>103.045</td><td>106.184</td><td>109.417</td><td>112.750</td><td>116.183</td><td>119.722</td><td>123.368</td></tr><tr><td>2</td><td></td><td></td><td>94.176</td><td>97.045</td><td>100.000</td><td>103.045</td><td>106.184</td><td>109.417</td><td>112.750</td><td>116.183</td></tr><tr><td>3</td><td></td><td></td><td></td><td>91.393</td><td>94.176</td><td>97.045</td><td>100.000</td><td>103.045</td><td>106.184</td><td>109.417</td></tr><tr><td>4</td><td></td><td></td><td></td><td></td><td>88.692</td><td>91.393</td><td>94.176</td><td>97.045</td><td>100.000</td><td>103.045</td></tr><tr><td>5</td><td></td><td></td><td></td><td></td><td></td><td>86.071</td><td>88.692</td><td>91.393</td><td>94.176</td><td>97.045</td></tr><tr><td>6</td><td></td><td></td><td></td><td></td><td></td><td></td><td>83.527</td><td>86.071</td><td>88.692</td><td>91.393</td></tr><tr><td>7</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>81.058</td><td>83.527</td><td>86.071</td></tr><tr><td>8</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>78.663</td><td>81.058</td></tr><tr><td>9</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>76.338</td></tr><tr><td>10</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></table>

- Note 1. Time index:  $i = 0,1,\dots,n$ . Node index:  $j = 0,1,\dots,n$ ;  
- Note 2. Because we start from up-left corner,:
- an up movement in  $S$  between  $i$  and  $i + 1$  correspond to same index  $j$ ;  
- a down movement in  $S$  between  $i$  and  $i + 1$  corresponds to an increase in the index  $j$ .

# Multi Step Trees: Derivative Pricing

- How do we price a derivative security on this binomial tree?
- Risk neutral pricing provides an immediate answer.

1. Compute the risk neutral probability

$$
q ^ {*} = \frac {e ^ {r \times h} - d}{u - d}
$$

2. Move backward on the tree using

$$
V _ {i, j} = e ^ {- r \times h} \times E ^ {*} [ V _ {i + 1} | (i, j) ]
$$

* where  $i, j$  is the (time, node) state on the tree.

- For instance, for call options, start from the end of the tree with the final condition

$$
c _ {n, j} = \max (S _ {n, j} - K, 0) \quad \mathrm {f o r} \quad j = 0, 1, \ldots , n
$$

- Then move backward applying

$$
c _ {i, j} = e ^ {- r \times h} \times (q ^ {*} c _ {i + 1, j} + (1 - q ^ {*}) c _ {i + 1, j + 1})
$$

# Multi Step Trees: Example

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/1c48f7146638315092fa601ff4cb430fcda7d9fb1b9e1b1142c0b36b53856ef5.jpg)  
BINOMIAL TREE MODEL

Option Price  

<table><tr><td colspan="2">time =&gt;</td><td>0.000</td><td>0.010</td><td>0.020</td><td>0.030</td><td>0.040</td><td>0.050</td><td>0.060</td><td>0.070</td><td>0.080</td><td>0.090</td><td>0.100</td></tr><tr><td colspan="2">i==&gt;</td><td>0.0</td><td>1.0</td><td>2.0</td><td>3.0</td><td>4.0</td><td>5.0</td><td>6.0</td><td>7.0</td><td>8.0</td><td>9.0</td><td>10.0</td></tr><tr><td colspan="2">1.0</td><td>3.787</td><td>5.381</td><td>7.440</td><td>9.982</td><td>12.965</td><td>16.283</td><td>19.802</td><td>23.428</td><td>27.165</td><td>31.016</td><td>34.986</td></tr><tr><td colspan="2">2.0</td><td></td><td>2.221</td><td>3.358</td><td>4.943</td><td>7.053</td><td>9.707</td><td>12.830</td><td>16.243</td><td>19.762</td><td>23.388</td><td>27.125</td></tr><tr><td colspan="2">3.0</td><td></td><td></td><td>1.103</td><td>1.801</td><td>2.871</td><td>4.445</td><td>6.640</td><td>9.477</td><td>12.790</td><td>16.203</td><td>19.722</td></tr><tr><td colspan="2">4.0</td><td></td><td></td><td></td><td>0.418</td><td>0.749</td><td>1.323</td><td>2.289</td><td>3.851</td><td>6.224</td><td>9.437</td><td>12.750</td></tr><tr><td colspan="2">5.0</td><td></td><td></td><td></td><td></td><td>0.092</td><td>0.185</td><td>0.373</td><td>0.753</td><td>1.520</td><td>3.065</td><td>6.184</td></tr><tr><td colspan="2">6.0</td><td></td><td></td><td></td><td></td><td></td><td>0.000</td><td>0.000</td><td>0.000</td><td>0.000</td><td>0.000</td><td>0.000</td></tr><tr><td colspan="2">7.0</td><td></td><td></td><td></td><td></td><td></td><td></td><td>0.000</td><td>0.000</td><td>0.000</td><td>0.000</td><td>0.000</td></tr><tr><td colspan="2">8.0</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>0.000</td><td>0.000</td><td>0.000</td><td>0.000</td></tr><tr><td colspan="2">9.0</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>0.000</td><td>0.000</td><td>0.000</td></tr><tr><td colspan="2">10.0</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>0.000</td><td>0.000</td></tr><tr><td colspan="2">11.0</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>0.000</td></tr></table>

Multi Step Trees: Example with 250 steps  
BINOMIAL TREE MODEL  

<table><tr><td></td><td colspan="2">Stock Assumption</td><td colspan="3">Option Assumption</td><td colspan="2">Tree</td><td colspan="3">Risk Neutral Prob</td></tr><tr><td></td><td>mu</td><td>0.1</td><td>T</td><td>0.1</td><td></td><td>n</td><td>250</td><td>q*</td><td>0.499167</td><td></td></tr><tr><td></td><td>sigma</td><td>0.3</td><td>K</td><td>100</td><td></td><td>h</td><td>0.0004</td><td></td><td></td><td></td></tr><tr><td></td><td>r</td><td>0.02</td><td>Call or Put</td><td>1</td><td>(=1 for call</td><td>u</td><td>1.006018</td><td>Price Binomial</td><td>3.876</td><td></td></tr><tr><td></td><td>q</td><td>0</td><td></td><td></td><td></td><td>d</td><td>0.994018</td><td>Delta Binomial</td><td>0.527</td><td></td></tr><tr><td></td><td>S0</td><td>100</td><td></td><td></td><td></td><td>p</td><td>0.501833</td><td></td><td></td><td></td></tr><tr><td rowspan="2">time =&gt; i=&gt;</td><td>0</td><td>0.0004</td><td>0.0008</td><td>0.0012</td><td>0.0016</td><td>0.002</td><td>0.0024</td><td>0.0028</td><td>0.0032</td><td>0.0036</td></tr><tr><td>0</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td><td>8</td><td>9</td></tr><tr><td>0</td><td>100.000</td><td>100.602</td><td>101.207</td><td>101.816</td><td>102.429</td><td>103.045</td><td>103.666</td><td>104.289</td><td>104.917</td><td>105.548</td></tr><tr><td>1</td><td></td><td>99.402</td><td>100.000</td><td>100.602</td><td>101.207</td><td>101.816</td><td>102.429</td><td>103.045</td><td>103.666</td><td>104.289</td></tr><tr><td>2</td><td></td><td></td><td>98.807</td><td>99.402</td><td>100.000</td><td>100.602</td><td>101.207</td><td>101.816</td><td>102.429</td><td>103.045</td></tr><tr><td>3</td><td></td><td></td><td></td><td>98.216</td><td>98.807</td><td>99.402</td><td>100.000</td><td>100.602</td><td>101.207</td><td>101.816</td></tr><tr><td>4</td><td></td><td></td><td></td><td></td><td>97.629</td><td>98.216</td><td>98.807</td><td>99.402</td><td>100.000</td><td>100.602</td></tr><tr><td>5</td><td></td><td></td><td></td><td></td><td></td><td>97.045</td><td>97.629</td><td>98.216</td><td>98.807</td><td>99.402</td></tr><tr><td>6</td><td></td><td></td><td></td><td></td><td></td><td></td><td>96.464</td><td>97.045</td><td>97.629</td><td>98.216</td></tr><tr><td>7</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>95.887</td><td>96.464</td><td>97.045</td></tr><tr><td>8</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>95.313</td><td>95.887</td></tr><tr><td>9</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>94.743</td><td>95.313</td></tr><tr><td>10</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>94.176</td></tr></table>

Option Price  

<table><tr><td colspan="2">time =&gt;</td><td>0.000</td><td>0.000</td><td>0.001</td><td>0.001</td><td>0.002</td><td>0.002</td><td>0.002</td><td>0.003</td><td>0.003</td><td>0.004</td><td>0.004</td></tr><tr><td colspan="2">i=&gt;</td><td>0.0</td><td>1.0</td><td>2.0</td><td>3.0</td><td>4.0</td><td>5.0</td><td>6.0</td><td>7.0</td><td>8.0</td><td>9.0</td><td>10.0</td></tr><tr><td colspan="2">0</td><td>3.876</td><td>4.193</td><td>4.527</td><td>4.879</td><td>5.247</td><td>5.633</td><td>6.036</td><td>6.457</td><td>6.894</td><td>7.348</td><td>7.818</td></tr><tr><td colspan="2">1</td><td></td><td>3.561</td><td>3.861</td><td>4.177</td><td>4.511</td><td>4.863</td><td>5.231</td><td>5.618</td><td>6.021</td><td>6.442</td><td>6.879</td></tr><tr><td colspan="2">2</td><td></td><td></td><td>3.262</td><td>3.545</td><td>3.845</td><td>4.161</td><td>4.495</td><td>4.847</td><td>5.216</td><td>5.602</td><td>6.005</td></tr><tr><td colspan="2">3</td><td></td><td></td><td></td><td>2.980</td><td>3.246</td><td>3.529</td><td>3.828</td><td>4.145</td><td>4.479</td><td>4.831</td><td>5.200</td></tr><tr><td colspan="2">4</td><td></td><td></td><td></td><td></td><td>2.715</td><td>2.964</td><td>3.230</td><td>3.513</td><td>3.812</td><td>4.129</td><td>4.463</td></tr><tr><td colspan="2">5</td><td></td><td></td><td></td><td></td><td></td><td>2.466</td><td>2.699</td><td>2.949</td><td>3.214</td><td>3.497</td><td>3.796</td></tr><tr><td colspan="2">6</td><td></td><td></td><td></td><td></td><td></td><td></td><td>2.233</td><td>2.451</td><td>2.684</td><td>2.933</td><td>3.198</td></tr><tr><td colspan="2">7</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>2.016</td><td>2.218</td><td>2.436</td><td>2.668</td></tr><tr><td colspan="2">8</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>1.814</td><td>2.002</td><td>2.204</td></tr><tr><td colspan="2">9</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>1.628</td><td>1.801</td></tr><tr><td colspan="2">10</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>1.455</td></tr></table>

# Multi Step Trees: Probability Distribution of  $S_T$

- What is the probability distribution of the stock price at maturity  $S_{T}$ ?  
- Without going into details, consider a  $n$  steps tree.  
- There are  $n + 1$  nodes at maturity,  $j = 0, 1, \ldots, n$ .
- Note that

* The top node  $j = 0$  can only be reached with  $n$  ups  $u$  and 0 downs  $d$ .  
* Node  $j = 1$  can only be reached with  $n - 1$  ups  $u$  and 1 down  $d$ .

：

* Node  $j = n$  can only be reached with 0 ups  $u$  and  $n$  downs  $d$ .

- If each up  $u$  has probability  $q^*$ , what is the probability of reaching exactly node  $j$ ?

$$
\operatorname * {P r} \left(\mathrm {n o d e} = j \mathrm {a t} T = n \times h\right) = \left(\frac {n !}{j ! (n - j) !}\right) \times (q ^ {*}) ^ {n - j} \times (1 - q ^ {*}) ^ {j}
$$

* where  $n! = 1 \times 2 \times 3 \times \ldots \times n$  (note:  $0! = 1$ ).

# Multi Step Trees: Probability Distribution of  $S_T$

- For instance, if  $n = 3$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/489e2851d11895d8c9dcad1064830f5c687a435d7b37a36aab4567112d646f4a.jpg)

$$
\operatorname * {P r} \left(j = 0 \mathrm {a t} T = n \times h\right) = \left(\frac {3 !}{0 ! \times 3 !}\right) \times (q ^ {*}) ^ {3} \times (1 - q ^ {*}) ^ {0} = (q ^ {*}) ^ {3}
$$

$$
\operatorname * {P r} \left(j = 1 \mathrm {a t} T = n \times h\right) = \left(\frac {3 \times 2}{1 \times 2}\right) \times (q ^ {*}) ^ {2} \times (1 - q ^ {*}) = 3 (q ^ {*}) ^ {2} (1 - q ^ {*})
$$

# Multi Step Trees: Probability Distribution of  $S_T$

- As  $n$  increases to infinity, the distribution at  $T = n \times h$  of the stock price  $S_{T}$  converges to a log-normal distribution.
- Next figure shows the probabilities of  $S_{T}$  for  $n = 250$  and  $T = 1$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/b346f788660b1ae1b0f0f444296d388931559cee1a0ef19792a42c229a76922c.jpg)

# Multi Step Trees: Probability Distribution of  $S_{T}$

- Or, plotting the probability density with respect to  $\log \left( {S}_{T}\right)$  ,we obtain

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/4165d172b8a4763943e0e14985af1289c0e1c85ffd26e62a22f483810ac7dc15.jpg)  
Log Stock Price

- Also plotted is the normal density with mean  $\mu_T = \log(S_0) + (r - q - \frac{\sigma^2}{2})T$  and standard deviation  $\sigma_T = \sigma \sqrt{T}$

# Multi Step Trees and Black and Scholes Model

- It is evident that the probability distribution of  $\log(S_T)$  implied by the binomial tree is the same as the normal distribution.  
- The option price from the binomial tree is given by

$$
c = E ^ {*} \left[ e ^ {- r T} \max (S _ {T} - K, 0) \right] = \sum_ {j = 1} ^ {n} e ^ {- r T} \max (S _ {n, j} - K, 0) Q _ {n, j} ^ {*}
$$

- where  $Q_{n,j}^{*}$  is the risk neutral probability of  $S_{n,j}$ .<sup>2</sup>
- Using the approximation that  $S_{T}$  is log-normally distributed, denote

$f(S_{T}) = \operatorname{Log}$  normal distribution with mean  $\mu_{T}$  and standard deviation  $\sigma_{T}$

- Then, we obtain the statement that as  $n$  increases, the call option is given by:

$$
c = \int_ {0} ^ {\infty} e ^ {- r T} \max (S _ {T} - K, 0) f (S _ {T}) d S _ {T}
$$

- This formula leads to Black and Scholes formula, discussed in next teaching notes.

# Conclusions

- Binomial trees are very useful tools for derivative pricing.
- They can be easily programmed on computers to carry out the backward procedure to compute the value of any derivative security.  
- Moreover, we can use them to compute the positions in the dynamic replication portfolio.  
- Under a particular assumption on how we build the tree, as the number of steps  $n$  increases, the distribution at maturity converges to a log-normal distribution, the key assumption in Black-Scholes model.  
- As we will see, we can also use binomial trees to compute the value of American options (much harder than Europeans) as well as to carry out Monte Carlo simulations, and price more complicated exotic securities.
- Risk neutral pricing is another useful tool for pricing securities
- It is a tool, and it is not the assumption that agents are risk neutral. They are not in our models.  
- The risk neutral methodology stems from the fact that we can use a replicating portfolio to hedge the exposure from a derivative security.

* The hedge eliminates all of the risk in the total position (e.g. short derivative and long replicating portfolio)
* $\Longrightarrow$  we can choose the probabilities on the tree to make computations simpler.

# Financial Instruments

# Teaching Note 5

# Black and Scholes Formula

John Heaton

The University of Chicago

Booth School of Business

1. Black and Scholes Formula

1.1 Dynamic Replication  
1.2 Black and Scholes and the Binomial Trees  
1.3 Delta, Gamma, and other Greeks  
1.4 Options' Beta and Expected Returns  
1.5 Delta Hedging  
1.6 Delta Gamma Hedging

# Option Premium

- Black, Scholes and Merton show that (under certain conditions) there exists a trading strategy involving only stocks and bonds that replicate the payoff at  $T$  of a call or a put option.  
- Assume a stock  $S_{t}$  has constant expected (log) return  $\mu$  and constant volatility  $\sigma$ .  
- That is, if the log return during a small time interval  $h$  be  $R_{t} = \log (S_{t + h} / S_{t})$ , assume

$$
E [ R _ {t} ] = \mu \times h; E [ R _ {t} ^ {2} ] = \sigma^ {2} \times h
$$

- ( $\mu$  and  $\sigma$ , are the annualized expected log return and volatility)
- Consider now a put option with strike price  $K$  and maturity  $T$ .  
- The following trading strategy replicates the final payoff  $\max (K - S_T,0)$ .

# Option Premium by Dynamic Replication

1. At time 0:

(a) Short  $\Delta_0 = -N(-d_{1,0})$  of stocks

- Here  $N(x)$  is the standard normal cumulative density function, and  $d_{1,t}$  is

$$
d _ {1, t} = \frac {\ln (S _ {t} / K) + (r + \sigma^ {2} / 2) (T - t)}{\sigma \sqrt {T - t}}
$$

- $r$  is the continuously compounded risk free rate;  $\sigma$  is the volatility of stock returns.

(b) Buy an amount  $B_{0} = K \times e^{-r \times T} \times N(-d_{2,0})$  of Treasury Zero Coupon bonds.

Here  $d_{2,0} = d_{1,t} - \sigma \times \sqrt{T}$  

- The portfolio so constructed has value at time 0

$$
P _ {0} = B _ {0} + \Delta_ {0} S _ {0}
$$

- (it can be shown  $P_{0} > 0$ ).

2. From now on, rebalance the portfolio, to make sure that at every  $t$ , the portfolio has a position in stocks given by  $\Delta_t = -N(-d_{1,t})$

- E.g. if  $S_{t} \downarrow \Rightarrow \Delta_{t} \downarrow \Rightarrow$  short more stocks and put proceeds into bonds  $\Rightarrow B_{t} \uparrow$ .  
- Or if  $S_{t} \uparrow \Longrightarrow \Delta_{t} \uparrow \Longrightarrow$  buy back stocks by liquidating some bonds  $\Longrightarrow B_{t} \downarrow$ .

# Option Premium by Dynamic Replication

- For instance, let  $S = K = 100$ ,  $T = 1$ ,  $r = 5\%$ ,  $\sigma = 20\%$ . Then,

$$
d _ {1} = . 3 5; d _ {2} = . 1 5; N (- d _ {1}) = 0. 3 6 3 2; N (- d _ {2}) = 0. 4 4 0 4 \Longrightarrow \Delta_ {0} = - N (- d _ {1}) = - 0. 3 6 3 2
$$

- Initial short position in stocks:  $\Delta \times 100 = -N(d_{1}) \times 100 = -0.3632 \times 100 = -\$36.32.$
- Initial bond position: \(B_{0} = Ke^{-rT}N(-d_{2}) = \\)41.89.\(
- Initial value of the portfolio: \(P_{0} = B_{0} + \Delta_{0}S_{0} = \\)41.89 - \\(36.32 = \$5.57\(
- One day later ( $h = 1/252 = 1$  day) the stock is  $S_{h} = 99 \Rightarrow \Delta_{h} = -N(-d_{1,h}) = -.3821$
- Need to short more, and thus sell  $|\Delta_h - \Delta_0| = |-.3821 - (-0.3632)| = 0.0189$  shares.  
- Obtain cash = 0.0189 × 99 = $1.879, and put it in bonds:

New Bond Position  $= B_{h} = B_{0}\times e^{r\times h} + \\$ 1.879 = \ $41.89 - \$ 1.879 = \$43.777

New Portfolio Position = \(P_{h} = B_{h} + \Delta_{h}\times S_{h} = \\)43.777 - .3821\times 99 = \\(5.941$

# Option Premium by Dynamic Replication

- Fact: The portfolio  $P_{t} = \Delta_{t}S_{t} + B_{t}$  obtained from the above trading strategy replicates the put option payoff.
- That is, at maturity

$$
P _ {T} = \Delta_ {T} S _ {T} + B _ {T} = \max (K - S _ {T}, 0)
$$

- Proof by simulation: Next two figures show that the strategy works, even when portfolio rebalancing is at daily interval  $(h = 1 / 252)$ .
- I simulate stock price paths. And then performed the above trading strategy.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/81ebb68eb926f543747e1ffe5876f744894327ac2cadbcb72e6ffe13b7769e81.jpg)  
Option Premium by Dynamic Replication

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/7547961306889c7a0be477b2efc62dee245963a4f7ec533c884a481ca743e0e4.jpg)  
Position in Stocks  $\Delta_{t}$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/a528da5c9fd056d4b6f3422ee3f499b2b1661d224ed6803d1afa37b1d60990c8.jpg)  
Replicating Portfolio and Black and Scholes Price

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/19b5fe62d08df5c7db7806d11695ab642ba7ee952a1392cbc2a213506a65e654.jpg)  
Option Premium by Dynamic Replication

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/771d3777f09adc63b0c595e3d28508e6a23e0c284a92e39c24df5f3eb27c14a5.jpg)  
Position in Stocks  $\Delta_{t}$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/3dbb097cb6062515053893dbfebdc8a04d83a857a0cc1070114818c4d75e8800.jpg)  
Replicating Portfolio and Black and Scholes Price

# Black and Scholes Formula

- Since portfolio  $P_{t}$  replicates the payoff of the put option, the value of the portfolio at any time must equal the value of the put option.
- Why?  
- Arbitrage: "Buy Cheap / Sell Dear".  
- For instance, if  $P_t < \text{Put Option Premium} \Rightarrow$

1. Sell option and set up the replicating portfolio (which costs  $P_{t}$ )  
2. Today make (Put Option Premium  $-P_{t}) > 0$  
3. At maturity  $T$  the replicating portfolio provides the payoff, exactly.

- In particular, at time 0, the value of the option must be

$$
\begin{array}{l} \mathrm {P u t P r e m i u m a t 0 ,} p _ {0} = P _ {0} = B _ {0} + \Delta_ {0} \times S _ {0} \\ = K \times e ^ {- r T} \times N (- d _ {2, 0}) - S _ {0} \times N (- d _ {1, 0}) \\ \end{array}
$$

- This is the celebrated "Black and Scholes" formula for option pricing.
- Similarly, a call option formula is given by

$$
\mathrm {C a l l P r e m i u m a t 0 ,} c _ {0} = S _ {0} \times N (d _ {1, 0}) - K \times e ^ {- r T} \times N (d _ {2, 0})
$$

# Delta Hedging and Dynamic Replication

- Why does the dynamic replication strategy work?
- Suppose you sold a put option and decide to hedge using the replicating portfolio  $P$ .  
- Let  $\Pi$  be the portfolio short the put  $(-p)$  and long the replicating portfolio

$$
\begin{array}{l} \Pi = - p + P \\ {\bf \Pi} = - p + \Delta S + B \\ \end{array}
$$

- What is the sensitivity of  $\Pi$  to small variations in stocks?

$$
\frac {d \Pi}{d S} = - \frac {d p}{d S} + \Delta \times 1 + 0
$$

- The portfolio  $\Pi$  is delta hedged ( $d\ \Pi / d\ S = 0$ ) if

$$
\Delta = \frac {d p}{d S}
$$

- It can be shown that indeed  $\Delta = -N(-d_{1})$  is exactly  $d p / d S$
- This implies that for every small variation in stock  $S$ , the portfolio and the option move exactly by the same amount.
- $\Longrightarrow$  the dynamic replication works.

# Delta Hedging and Dynamic Replication

- The next figure shows the dynamic replication at work in a graph:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/c3b0e627c7005540baab3898cea754e443b55d6263cc0063aaf5a899eb69cd7e.jpg)

# Black and Scholes Formula

- Example: Consider an at-the-money option.
- The stock price is  $S = 100$ , the strike price is  $K = 100$ , the (continuously compounded) interest rate is  $r = 5\%$ , maturity is  $T = 1$ , and the return volatility  $\sigma = 30\%$ .
- We then have

$$
d _ {1} = \frac {\log \left(\frac {S}{K}\right) + (r - \delta + \sigma^ {2} / 2) T}{\sigma \sqrt {T}} = \frac {\log \left(\frac {1 0 0}{1 0 0}\right) + (. 0 5 + (0 . 3 0) ^ {2} / 2) \times 1}{0 . 3 0 \sqrt {1}} = 0. 3 1 6 7;
$$

$$
d _ {2} = d _ {1} - \sigma \sqrt {T} = 0. 3 1 6 7 -. 3 \sqrt {1} = 0. 0 1 6 7
$$

- Therefore  $N(d_{1}) = 0.62425$  and  $N(d_{2}) = 0.50665$ .  
- The value of the call option is

$$
c _ {0} = S N (d _ {1}) - K e ^ {- r T} N (d _ {2}) = 1 0 0 \times 0. 6 2 4 2 5 - 1 0 0 \times e ^ {. 0 5 \times 1} \times 0. 5 0 6 6 5 = 1 4. 2 3 1 2
$$

- The value of a put option can be computed from these data by recalling that

$$
N (- d _ {1}) = 1 - N (d _ {1}) = 0. 3 7 5 7 5; \quad N (- d _ {2}) = 1 - N (d _ {2}) = 0. 4 9 3 3 5
$$

so that

$$
p _ {0} = - S N (- d _ {1}) + K e ^ {- r T} N (- d _ {2}) = - 1 0 0 \times 0. 3 7 5 7 5 + 1 0 0 \times e ^ {. 0 5 \times 1} \times 0. 4 9 3 3 5 = 9. 3 5 4 2
$$

# The Binomial Tree and Black and Scholes Formula

- To interpret the Black and Scholes formula it is convenient to go back to binomial trees discussed in TN 4.  
- Black and Scholes model assumes continuous trading
  - That is, traders can trade at any instant  $t$  
- Moreover, stock prices can take on any value, and not only the values on a tree.  
- Both conditions are approximately met as we let the time interval  $h = T / n$  in the binomial tree go to zero.  
- Indeed, as we have seen, recall that we have the following:  
- Fact: As  $n$  goes to infinity, the Binomial Tree price converges to Black and Scholes price.  
- To see the similarity of Black and Scholes formula with the one stemming from a binomial tree, consider the following example.

# The Binomial Tree and Black and Scholes Formula

$$
i = 0
$$

$$
i = 1
$$

$$
\begin{array}{l} {S _ {0}} \\ {c _ {0} = e ^ {- r \times T} E ^ {*} [ \max (S _ {1} - K, 0) ]} \end{array}
$$

$$
\begin{array}{l} {S _ {1, u} = S _ {0} \times u} \\ {c _ {1, u} = \max (S _ {1} - K, 0) = S _ {1} - K} \end{array}
$$

$$
\begin{array}{l} {S _ {1, d} = S _ {0} \times d} \\ {c _ {1, d} = \max (S _ {1} - K, 0) = 0} \end{array}
$$

- Consider  $i = 0$  and  $i = 1$  with  $S_{1,u} = S_0 \times u$  and  $S_{1,d} = S_0 \times d$ .  
- Assume the price of the option has  $S_{1,u} > K > S_{1,d}$ , so that the payoffs from the tree above result.  
- Let  $q^{*}$  be the risk neutral probability of going up in the tree.

# The Binomial Tree and Black and Scholes Formula

- The price of the option at time 0 according to risk neutral pricing is the

$$
\begin{array}{l} c _ {0} = e ^ {- r \times T} E ^ {*} [ \max (S _ {1} - K, 0) ] \\ = e ^ {- r \times T} \times [ q ^ {*} \times \max (S _ {1, u} - K, 0) + (1 - q ^ {*}) \times \max (S _ {1, d} - K, 0) ] \\ = e ^ {- r \times T} \times q ^ {*} \times (S _ {1, u} - K) \\ = S _ {0} \times e ^ {- r \times T} \times q ^ {*} \times u - e ^ {- r \times T} \times K \times q ^ {*} \\ = S _ {0} \times N _ {1} - e ^ {- r \times T} \times K \times N _ {2} \\ \end{array}
$$

- where, defining by  $u_{cc}$  the annualized c.c. return from an up movement  $S_{1,u} / S_0 = e^{u_{cc}\times T} = u$

$$
N _ {1} = e ^ {- r \times T} \times q ^ {*} \times u = e ^ {(u _ {c c} - r) \times T} \times q ^ {*} \quad \mathrm {a n d} \quad N _ {2} = q ^ {*}
$$

- The similarity with Black and Scholes formula is not coincidental

$$
\mathrm {C a l l} = S \times N (d _ {1}) - K \times e ^ {- r T} \times N (d _ {2})
$$

- Interpretation:

$$
\begin{array}{l} - N _ {2} = N (d _ {2}) \mathrm {r i s k n e u t r a l p r o b a b i l i t y t o b e i n t h e m o n e y a t m a t u r i t y}; \\ - N _ {1} = N (d _ {1}) \mathrm {r i s k n e u t r a l e x p e c t e d e x c e s s r e t u r n c o n d i t i o n a l o n e x e r c i s e a t} T. \\ \end{array}
$$

# The Binomial Tree and Black and Scholes Formula

- Indeed, recall we obtained the following formula in TN 4 for a large number of steps  $n$ :

$$
\begin{array}{l} c _ {0} = e ^ {- r T} E ^ {*} [ \max (S _ {T} - K, 0) ] \\ = e ^ {- r \times T} \sum_ {j = 0} ^ {n} \left(\frac {n !}{j ! (n - j) !}\right) \max (S _ {T, j} - K, 0) \\ \end{array}
$$

where  $S_{T,j} = S_0 \times u^{(n - j)} \times d^j$ .  

- Let  $a$  be the smallest integer for which  $S_{T,j} > K$  for  $j \geq a$ , and  $S_{T,j} < K$  for  $j < a$ .  
- Putting all together:

$$
\begin{array}{l} c _ {0} = e ^ {- r \times T} \sum_ {j = a} ^ {n} \left(\frac {n !}{j ! (n - j) !}\right) (S _ {T, j} - K) \\ = S _ {0} \times N _ {1} - K \times e ^ {- r \times T} \times N _ {2} \\ \end{array}
$$

$$
\mathrm {w i t h} N _ {1} = \left(e ^ {- r \times T} \sum_ {j = a} ^ {n} \left(\frac {n !}{j ! (n - j) !}\right) \times u ^ {(n - j)} \times d ^ {j}\right) \quad \mathrm {a n d} N _ {2} = \sum_ {j = a} ^ {n} \left(\frac {n !}{j ! (n - j) !}\right)
$$

- It can be shown that  $N_{1} \to N(d_{1})$  and  $N_{2} \to N(d_{2})$  as  $n \to \infty$  
- The interpretation, though, is the same as in the simple 2-period model.

# Does the Dynamic Replication Strategy Work in Reality?

- Black and Scholes formula relies on dynamic replication. Does it actually work in reality?  
- Sometimes yes: e.g. Jan - Dec 2000
- Replication of S&P500 option with  $T = 1$  year.  $\sigma =$  standard deviation of returns in 1999.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/6dc293b94e031ae9746ddc305bb52f929575d9c0c37ecaa0fe2b54d8bc3ff1dc.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/f869682f10d5ae471020e4a12344633f44b1fa4344a011faa9e75ede26993319.jpg)  
Position in Stocks  $\Delta_{t}$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/f029fd604c1186013a0405450a0d2514b96a786f458bafceb5d4b93274748698.jpg)  
Replicating Portfolio and Black and Scholes Price

# Does the Dynamic Replication Strategy Work in Reality?

- Sometimes no: e.g. Jan - Dec 1987

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/5f95e63210a80810d6c205cf6b71ee4e64df73ea57355ed7e478f218948a3a99.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/dc7317804b32c640f832d36313af923cd470a42f17d40ad694a6bb01a999a0ea.jpg)  
Position in Stocks  $\Delta_{t}$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/d90842dbc0ca1fe2ca29a9ac4208707ff6fc386b14392af6c1785aec39b6a86c.jpg)  
Replicating Portfolio and Black and Scholes Price

- We will return on the empirical performance of Black and Scholes model in the next TNs.

# Black and Scholes Pricing Formula

- Like futures, simple modifications to the option specification can still be treated within the Black and Scholes framework.

# 1. Options with known dividend.

- Define  $S^{*} = S - PV(D)$  where  $PV(D) = \text{Present Value of Dividends before Expiration}$ .  
- Use Black and Scholes formula with  $S^*$  instead of  $S$ .

# 2. Options with known dividend yield  $q$ .

- Define  $S^{*} = S \times e^{-q \times T}$  and use Black and Scholes formula as usual.

$$
c = S e ^ {- q T} N (d _ {1}) - K e ^ {- r T} N (d _ {2}); \quad p = K e ^ {- r T} N (- d _ {2}) - S e ^ {- q T} N (- d _ {1})
$$

$$
d _ {1} = \frac {\ln (S / K) + (r - q + \sigma^ {2} / 2) T}{\sigma \sqrt {T}}; d _ {2} = d _ {1} - \sigma \sqrt {T}
$$

# 3. Options on currencies

- When you buy foreign currency, you would invest in foreign Treasuries. Thus,  $r_{foreign}$  is a dividend yield. Apply previous formula with  $q = r_{foreign}$ .

# Black and Scholes Pricing Formula

# 4. Futures Options

- Entering into a futures position does not cost anything. Thus, compared to the dynamic replication with stocks, a trader would save the riskless rate.  
- The option pricing formula is then Black and Scholes formula in which the futures price  $F$  is used instead of  $S$ , but the "dividend yield" equals the risk free rate  $q = r$ .  
- Substituting this in the previous formula:

$$
c = e ^ {- r T} [ F N (d _ {1}) - K N (d _ {2}) ]; \quad p = e ^ {- r T} [ K N (- d _ {2}) - F N (- d _ {1}) ]
$$

$$
d _ {1} = \frac {\ln (F / K) + (\sigma^ {2} / 2) T}{\sigma \sqrt {T}}; d _ {2} = d _ {1} - \sigma \sqrt {T}
$$

# Risks in Options and the Greeks

- Risk managers and traders need to control the sensitivity of options to changes in the underlying.  
- Terminology:

1. Delta: Sensitivity of option to changes in underlying

$$
\Delta = \frac {d \mathrm {O p t i o n P r i c e}}{d S} = \left\{ \begin{array}{l l} N (d _ {1}) & \mathrm {f o r C a l l s} \\ - N (- d _ {1}) & \mathrm {f o r P u t s} \end{array} \right.
$$

2. Gamma: Sensitivity of Delta  $\Delta$  to changes in the underlying. For both calls and puts:

$$
\Gamma = \frac {d \Delta}{d S} = \frac {N ^ {\prime} (d _ {1})}{S \sigma \sqrt {T}} \quad \mathrm {w i t h} N ^ {\prime} (x) = \frac {e ^ {- x ^ {2}} 2}{\sqrt {2 \pi}}
$$

- $\Longrightarrow$ $\Gamma =$  curvature of option price with respect to stock  $S$ ;

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/eecf3759774a4b232cb3873195c2ebd8d1b2b51b6494584f5ce87ee24601669f.jpg)  
Risks in Options and the Greeks

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/f75befe5966c14c7a83dd78bcf769569159fbdb263d5444d75b08fe766ed517d.jpg)  
Risks in Options and the Greeks

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/0674622ead0f36d283a283955f6295414678b85f3a66a3a8bd228dfd970d10d2.jpg)

# Risks in Options and the Greeks

3. Theta: Sensitivity of option to passage of time  $t$

$$
\Theta = \frac {d \mathrm {O p t i o n P r i c e}}{d t} = \mathrm {L o n g u g l y f o r m u l a}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/eafbd8e52441496256ad362b0d5685f15ecb986dc5028e40f85f83acbe8bd61c.jpg)  
Put Option Profile versus Payoff at T

# Risks in Options and the Greeks

- Why for a put option  $\Theta > 0$  for low  $S$  and  $\Theta < 0$  for high  $S$ ?
- For  $S$  high, payoff is zero, but put price is positive.

* $\Longrightarrow$  As time passes (but keeping  $S$  fixed), the put price must decline.

- For  $S$  low, why is  $\Theta > 0$ ?

* Simple example: the firm goes bankrupt  $\Rightarrow S = 0$ .  
$\ast \Longrightarrow$  Put payoff at  $T = K$  
* Value at time  $t < T$  is  $p = e^{-r(T - t)}K$ , which increases with  $t$ .

What about call options?

- For non-dividend paying stock,  $\Theta < 0$  for call options.

* If  $S$  is very very high, option holder will receive  $S - K$  at maturity (with high probability)  
* This is the payoff of a long forward, so present value at  $t < T$  is  $c = S - Ke^{-rT} > S - K$ . Intuition: for calls, we will pay  $K$ , whose present value today is smaller than  $K$ , pushing up the price of the call.

- If the stock pays (a lot of) dividends, then  $\Theta > 0$  for high  $S$ , as the option holder misses the dividend payout during the life of the option (compared to a stock holder).

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/b5cc3e1717ad99c652c1a81ba45e9e69f9124f5fbb91130ce74ff5c7fbe19162.jpg)  
Risks in Options and the Greeks

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/667b3953c13ecc0a52a72070f94216a464eae9a9e4446b51830d95d951c1af8b.jpg)  
Call Option Profile versus Payoff at T with high dividend yield

# Risks in Options and the Greeks

- In Black and Scholes model, the volatility  $\sigma$  and the interest rate  $r$  are constant.  
- However, it is interesting how does a change in  $\sigma$  and  $r$  change the value of the option.

4. Rho: Change in option price due to a change in interest rate  $r$

$$
\mathrm {R h o} = \frac {d \mathrm {O p t i o n P r i c e}}{d r} = \left\{ \begin{array}{l l} K T e ^ {- r T} N (d _ {2}) > 0 & \mathrm {f o r C a l l s} \\ - K T e ^ {- r T} N (- d _ {2}) <   0 & \mathrm {f o r P u t s} \end{array} \right.
$$

- Intuition: it all depends on whether the option holder will pay  $K$  (call) or receive  $K$  (put). The PV of  $K$  declines as  $r$  increases, yielding the result.

# Risks in Options and the Greeks

5. Vega: Change in option price due to a change in volatility  $\sigma$

$$
\mathrm {V e g a} = \frac {d \mathrm {O p t i o n P r i c e}}{d \sigma} = S \sqrt {T} N ^ {\prime} (d _ {1}) > 0
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/606722f046a27fb0b41466bf52fffdbca2cc6cda3be57c365634e6f6c88af42d.jpg)

# Example of Risk Management Problem

- Assume today is Feb 22, 2008 and you sold the following Capital Protected Note:
- Maturity: February 20, 2015  
 - Issue Price: $10  
- Principal: $10  
- Interest: 0  
- Principal Protection:  $100\%$  
- Payoff at maturity: Principal plus Supplemental Redemption Amount (SRA), if positive.

$$
S R A = \$ 10 \times 116 \% \times \frac {\text {Final Index Value} - \text {Initial Index Value}}{\text {Initial Index Value}}
$$

- Index : S&P 500, renormalized to have Initial Index Value = $10.
- If you sell this security, then you must protect your position against increases in the stock price.
- $\Longrightarrow$  Delta-hedge  $\Longrightarrow$  need to set up the replicating portfolio.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/3c03f38a414d4bebcf0d605850215b1823d37a33f8ba3ec9368492b4a3e60e66.jpg)  
The Capital Protected Note's Payoff

# The Capital Protected Note's Payoff

- The Capital Protected Note's payoff can be decomposed into

1. A zero coupon bond with principal  $10 and maturity T = 7.$  
2. 1.16 at-the-money call options on the (normalized) S&P 500 with maturity  $T = 7$ .

- The reference index is normalized so that  $S_0 = \beta \times S \& P500 = \$ 10$ .  
- On Feb 28, 2008, we had S&P 500 = 1353.1.  $\Rightarrow \beta = 10 / 1353.1$ .
- Other data on Feb 28, 2008, are as follows
- The 7-year (c.c.) interest rate was  $r = 3.23\%$ .  
- The dividend yield of SP500 is  $\delta = 2\%$ .
- Let the volatility forecast over 7-year be  $\sigma = 15\%$  
- The value of the security is

$$
\begin{array}{l} V a l u e = e ^ {- r T} \S 1 0 + 1. 1 6 \times C a l l (1 0, 1 0, r, \delta , \sigma , T) \\ = \$ 7. 9 7 6 4 + 1. 1 6 \times \$ 1. 7 \\ = \$ 9. 9 4 8 3 \\ \end{array}
$$

- Close to $10  
- Note that an investor in CPN trades off coupons for 1.16 call options.

# Delta Hedging at time 0

- How can we hedge the short CPN?  
- Theoretically, we just need a position in the replicating portfolio:

1. Buy a zero coupon bond today for \(7.9764 (to hedge the "bond" component)  
2. Purchase 1.16 units of the replicating portfolio for the (embedded) call option.

- The replicating portfolio for each call is as follows:
- Given the call  $\Delta = e^{-\delta T}N(d_1) = 0.5747$ , we have:

$$
\begin{array}{l} \mathrm {P o s i t i o n i n (n o r m a l i z e d) S \& P 5 0 0 = 0 . 5 7 4 7 ;} \\ \mathrm {B o n d P o s i t i o n} = C a l l (1 0, 1 0, r, \delta , \sigma , T) - \Delta \times S _ {0} \\ = 1. 7 - \Delta \times 1 0 = - 4. 0 4 7 \\ \end{array}
$$

- That is, for each call option, invest  $0.5747 \times \$10 = 5.747$  in stock and borrow  $\$ 4.047$ .

Value of Replicating Portfolio  $= 0.5747 \times 10 - 4.047 = 1.7$

- Multiply the positions above by 1.16 and we obtain the replicating portfolio for a CPN.

# Dynamic Delta Hedging

- Theoretically, if we rebalance frequently the position in stocks, the portfolio will replicate exactly the payoff the structured derivative.
- If  $S_{t}$  increases,  $\Delta$  increases and we must borrow more to invest more in stocks (how much?);  
- If  $S_{t}$  decreases,  $\Delta$  decreases and we sell some stocks and use the proceeds to repay some of the loan.

# Delta-Gamma Hedging

- There are some issues with delta-hedging

1. For any small variation in stock price we need to rebalance the portfolio  $-\Rightarrow$  with transaction costs this is expensive.  
2. Large variations in the stock price imply the hedge does not work too well.

- We can alleviate somewhat these problems by "Delta-Gamma" hedging:
- In addition to stocks, we need a position in a security with positive Gamma, such as a short-term traded option.
- Consider a portfolio  $\Pi$  which is short the  $T$ -dated call  $Call(S, T)$  (as the one implicit in the CPN), long  $N$  stock and long also  $N^c$  of  $T_1$ -date calls  $Call(S, T_1)$

$$
\Pi = - C a l l (S, T) + N \times S + N ^ {c} \times C a l l (S, T _ {1})
$$

- We want to hedge both the sensitivity of  $\Pi$  to changes in the stock  $\left(\frac{d\Pi}{dS} = 0\right)$  and the change in such sensitivity to changes in the stock, that is, the convexity

$$
\frac {d \left(\frac {d \Pi}{d S}\right)}{d S} = \frac {d \Pi^ {2}}{d S ^ {2}} = 0
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/6da3cd93d5f897e3428b16c6bdbaaf2c3554e65e11ce87ccd97734be8d0cb525.jpg)  
Delta Hedging: The Capital Protected Note

# Delta-Gamma Hedging

- The Delta-Gamma hedge then requires:

$$
\frac {d \Pi}{d S} = 0 \Longrightarrow - \frac {d C a l l (S , T)}{d S} + N + N ^ {c} \times \frac {d C a l l (S , T _ {1})}{d S} = 0 \qquad (\mathrm {D e l t a H e d g i n g})
$$

$$
\frac {d ^ {2} \Pi}{d S ^ {2}} = 0 \Longrightarrow - \frac {d ^ {2} C a l l (S , T)}{d S ^ {2}} + N ^ {c} \times \frac {d ^ {2} C a l l (S , T _ {1})}{d S ^ {2}} = 0 \qquad (\mathrm {G a m m a H e d g i n g})
$$

- Using the notation  $\Delta(S, T)$  and  $\Gamma(S, T)$  to indicate the Delta and Gamma of the option with maturity  $T$ , solving the two equations in two unknowns we obtain:

$$
N ^ {c} = \frac {\Gamma (S , T)}{\Gamma (S , T _ {1})}; N = \Delta (S, T) - N ^ {c} \times \Delta (S, T _ {1})
$$

- Note that the position in stocks is smaller (if  $N^c > 0$ ) than in the case of only Delta-hedging, as we now have to also hedge the position in the short-term call option, which is used to hedge against Gamma.

# Delta-Gamma Hedging: The Capital Protected Note

- For instance, using a 1-year option to hedge the CPN, we have

$$
C a l l (S, T) = 1. 7; \Gamma (S, T) = 0. 0 8 0 1 6; \Delta (S, T) = 0. 5 7 4 7
$$

$$
C a l l (S, T _ {1}) = 0. 6 4 4 3; \quad \Gamma (S, T _ {1}) = 0. 2 5 7 5; \quad \Delta (S, T _ {1}) = 0. 5 5 1 2
$$

we obtain

$$
\mathrm {P o s i t i o n i n s h o r t - t e r m c a l l} = N ^ {c} = 0. 3 1 1 3;
$$

$$
\mathrm {P o s i t i o n i n s t o c k} = N = 0. 4 0 3 1;
$$

$$
\mathrm {P o s i t i o n i n b o n d s} = 1. 7 - N \times S - N ^ {c} \times C a l l (S, T _ {1}) = - 2. 5 3 1 5
$$

- Next figure plots the CPN for various stock prices, along with the Delta hedge portfolio and the Delta-Gamma hedge portfolio.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/d90b7f6395c75c85266d16776d1f175754dba13482f6993313e35674e13db6b3.jpg)  
Delta-Gamma Hedging: The Capital Protected Note

# Delta-Gamma Hedging: The Capital Protected Note

- The Delta-Gamma hedging strategy allows for larger swings in the stock price before calling for a rebalancing.  
- For instance, under Delta hedging, we need rebalance to when  $S < 9$  or  $S > 11$ , as the dashed line starts diverging from solid line.  
- Instead, Delta-Gamma requires rebalancing only when  $S < 8$  or  $S > 13$ , as the dotted line is very close to the solid line for a much wider range of prices.  
- Less frequent rebalancing implies lower transaction costs.  
- Of course, now we have more transaction costs because we have to rebalance also the  $T_{1}$ -option positions.  
- We need to use very liquid, exchange traded securities to minimize transaction costs on options.  
- Note that the additional benefit of the strategy is that large sudden changes in the stock price (plus/minus  $20\%$ ) are hedged.  
 - A curiosity: From the figure, the CPN is valued at $8 for S low. In what sense this is a “capital protected note”? If the investor sells the security when S is low, he/she would not recover $10.

# Options' Beta and Expected Returns

- We know that  $\Delta = N(d_{1})$  is the sensitivity of a call option price to changes in the stock price

$$
\frac {d \mathrm {C a l l}}{d S} = N (d _ {1})
$$

- What is the percentage sensitivity of the call price to percentage change in the stock price?

$$
\begin{array}{l} \frac {\% \mathrm {age} \text {Change in Call}}{\% \mathrm {agee} \text {Change in Stock}} = \frac {\left(\frac {d \mathrm {Call}}{\mathrm {Call}}\right)}{\left(\frac {d S}{S}\right)} \\ = \frac {S}{\mathrm {C a l l}} \times \frac {d \mathrm {C a l l}}{d S} \\ = \frac {S}{\mathrm {C a l l}} \times N (d _ {1}) \\ = \frac {S N (d _ {1})}{S N (d _ {1}) - K e ^ {- r T} N (d _ {2})} \\ > 1 \\ \end{array}
$$

- $\Rightarrow$  In percentage, call options move more than the underlying stock

# Options' Beta and Expected Returns

What is the risk premium on an option?  

- Recall that a call option is given by a portfolio of stocks and bonds

$$
\mathrm {C a l l} = \Delta \times S + B
$$

- As for any portfolio,

Return on a portfolio  $=$  weighted average of the returns of the individual assets

- where the weights are given by relative positions in the assets.
- That is, let  $R_C$  be the return on the call,  $R_S$  the return on stock, and  $R_B$  the return on bonds over a small interval of time

$$
R _ {C} = w \times R _ {S} + (1 - w) \times R _ {B}
$$

where the weight on stock is

$$
w = \frac {\text {Position in Stock}}{\text {Value of Portfolio}} = \frac {\Delta \times S}{\text {Call}} = \frac {\% \text {age Change in Call}}{\% \text {agee Change in Stock}}
$$

# Options' Beta and Expected Returns

- If  $S$  is the aggregate market (e.g. S&P500), then we can think of  $w$  as the Call Option's Beta.  
- Developing the return equation and using also the notation  $w = \beta$ , we obtain

$$
(R _ {C} - R _ {B}) = \beta \times (R _ {S} - R _ {B})
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/b46b88ff8e21b01b3ef4b03fc80bbc1b502c626b72e288ffb58dccfc2c72e5f5.jpg)

# Options' Beta and Expected Returns

- Given such large  $\beta$ , the excess return on a call option is much larger than the one on the stock.  
- A call option is effectively a Leveraged Investment
- We borrow  $(B)$  to purchase  $(\Delta)$  stock with minimum equity investment (Call)  
- $\Longrightarrow$  Expected Excess Return is very high:  $E\left[R_{C} - R_{B}\right] = \beta \times E\left[R_{S} - R_{B}\right]$  
- Note that  $\beta$  depends on  $S$ , so it is not constant.
- Clearly, the risk is also very high. What is the variance of call option returns?
- It is  $\beta^2 \times$  variance of stock returns:  $\sigma_C^2 = \beta^2 \times \sigma_S^2$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/d006888409c3f9a82cbcd397333909b9b7c7bbae492f3f0dcdff305613409c80.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/343e697eb5479efbdaa75752010057ebdfdfbd52360db19edd94af70dce2767d.jpg)  
Example: Volatility of 4000 Call Expiring on 12/17/2021

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/86e37106266b8c9f1ca3a7cc1dbf7357d728ab7a0c0a7692cb365ab50bf161f0.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/b34109b3eabd3691432106527ac12eda3c31e2cc241600d3f201ff75147207a0.jpg)  
Example: Volatility of 4000 Call Expiring on 12/17/2021

- The volatility of the call option, computed as the 22-day standard deviation of returns, is much higher than the one of the SP500 index.

# The Risk / Return Characteristics of Options

- The Risk / Return characteristics of an investment is often measured by the Sharpe Ratio

$$
\mathrm {S h a r p e R a t i o} = \frac {\mathrm {E x p e c t e d E x c e s s R e t u r n}}{\mathrm {V o l a t i l i t y}}
$$

- The Sharpe Ratio of a Call option is therefore

$$
\begin{array}{l} \mathrm {S h a r p e R a t i o o f C a l l} = \frac {\mathrm {E x p e c t e d E x c e s s R e t u r n C a l l}}{\mathrm {V o l a t i l i t y C a l l}} \\ = \frac {E [ R _ {C} - R _ {B} ]}{\sigma_ {C}} \\ = \frac {\beta E [ R _ {S} - R _ {B} ]}{\beta \sigma_ {S}} \\ = \mathrm {S h a r p e R a t i o o f S t o c k} \\ \end{array}
$$

- The Sharpe Ratio is the same as the one of stocks (theoretically, at least)

# Financial Instruments

# Teaching Note 6

# Implied Volatility

John Heaton

The University of Chicago

Booth School of Business

1. Black and Scholes Option Pricing Model: Does it work?

1.1 Fat Tails  
1.2 Stochastic Volatility  
1.3 Jumps

2. Implied Volatility

2.1 The Smirk  
2.2 Implied Volatility and Empirical Volatility  
2.3 Implied Volatility Surface

3. Improvements on Black and Scholes Model

3.1 Deterministic and Stochastic Volatility Models  
3.2 Jump Model  
2.3 Implied Tree Models

# Black and Scholes Model: Does it Work?

- Does the Black and Scholes model yield option prices similar to the market price of traded options?  
- On October 31:
- The S&P 500 index was  $S = 3871.98$  and the one month risk free rate was  $r = 3.75\%$  (c.c).  
- The dividend yield on the S&P500 is about  $q = 1.69\%$ .  
- Observed options prices with maturity end of November  $T = 1 / 12$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/91ea3f41add7132cb033d43d4a46a73eb82cd110491851e0373d29d948ddef47.jpg)

# Black and Scholes Model: Does it Work?

- Moneyness: is defined as the ratio of the strike price to the current stock price  $K / S$

$$
\begin{array}{l} \Rightarrow K / S <   1 \Rightarrow K <   S \Rightarrow \mathrm {p u t s a r e O T M}, \mathrm {c a l l s a r e I T M} \\ \Rightarrow K / S > 1 \Rightarrow K > S \Rightarrow \mathrm {p u t s a r e I T M}, \mathrm {c a l l s a r e O T M} \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/481b8b431ea0f005090d1a088b308f20e73ca2075d63b113872784151f56b825.jpg)

# Black and Scholes Model: Does it Work?

- Let's compare to Black Scholes using historical volatility of  $22.2\%$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/3ca17e64c8d0043b6094e51ae85df219185a3156be9728f8d0f6f8b1ba7c6675.jpg)

# Black and Scholes Model: Does it Work?

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/27da9181d686239ddb0046b2347c3529ff9e0b2172a2a3894625766dfd0978c6.jpg)  
BSM using historical volatility relative to observed prices

# Black and Scholes Model: Does it Work?

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/0d566bb2bbf8f4b41bca90127d382efba59480104ce51ff9621d4c8676e95b7b.jpg)  
BSM using historical volatility relative to observed prices

# Black and Scholes Model: Does it Work?

BSM put prices relative to observed prices. This time with volatility set to match the "ATM" put option with strike of 3870. This "implied volatility" was  $23.1\%$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/40f8f66889614b44c757476d534d4adcf7d24f071b937a8042e27a5daa7f8e48.jpg)

# Black and Scholes: What is wrong?

- Black and Scholes assume log-normal returns
- That is,  $r_{S} = \log \left(\left(S_{t + h} + \text{dividends}\right) / S_{t}\right)$  is normally distributed.
- Figure 1 plots the empirical distribution of monthly returns and the normal distribution

$\Longrightarrow$  Fat Tails: Extreme observations more likely than implied by normal.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/2111e468fe47c0448de1170e9f7c984e7cd96141a75a78c09d4cec0803314994.jpg)

# Black and Scholes: What is wrong?

- The Black and Scholes model assumes that the volatility of stock returns is constant.  
- But volatility is in fact Stochastic: It moves unpredictability over time.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/6e7210cef9330e76aee832260b0e58ed0d139a75fdc1fb2d5b6c0dedfef07d5a.jpg)

# Black and Scholes: What is wrong?

- The Black and Scholes model assumes that trading is continuous, and prices do not jump.  
- But prices sometimes jump discretely to other levels.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/3f9187a104abc1f1ff2f85d36a5bec3e5608815a69840e403effa82d5e45748f.jpg)

# Black and Scholes Implied Volatility

- Implied Volatility: The level of volatility  $\sigma$  that once inserted in Black and Scholes formula, it matches the value of a traded option.  
- For instance, let  $put^{mkt}(K,T)$  be a traded put price at strike price  $K$  and time to maturity  $T$ . - E.g. on October 31,  $put^{mkt}(3870,1/12) = \$98.50$  
- Define:

$$
\sigma_ {I m p} \quad \mathrm {i s c h o s e n s u c h t h a t} \quad p u t ^ {m k t} (K, T) = B S P (S _ {0}, K, T, r, q, \sigma_ {I m p})
$$

- The implied volatility for this option was  $23.1\%$  
Note:

- Every option has a potentially different implied volatility  $\sigma_{Imp}$ .

# Black and Scholes Implied Volatility

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/7a63feddf949749014469f7250719279df05c15e3d13919f8951a9d0039ab7b7.jpg)  
Implied Volatility Smile (or, Smirk)

# Black and Scholes Implied Volatility

- Uses of Implied Volatility:
- Gauge the general market uncertainty about future returns.

* Higher uncertainty  $\Longrightarrow$  higher option prices  $\Longrightarrow$  higher implied volatility.  
* It augments return volatility itself, as implied volatility is Forward Looking

# VIX

NOTE: the VIX uses the concept of "Volatility Swaps" where one creates a portfolio of options that is hedged against index level moves but is only exposed to volatility changes. Technically it is not an "implied volatility" as in the B-S-M model.

# Black and Scholes Implied Volatility

- Uses of Implied Volatility:
- Gauge the relative pricing of options.

* It is hard to compare prices with different strike prices or maturities.

- Different strike prices  $\Longrightarrow$  different intrinsic values  $S_{0} - K$  
- Different maturities  $\Longrightarrow$  different time value of money and uncertainty.

Option Prices across Strike Prices and maturitirs  

<table><tr><td rowspan="2" colspan="2"></td><td colspan="6">Maturity</td></tr><tr><td>0.12</td><td>0.21</td><td>0.39</td><td>0.64</td><td>0.88</td><td>1.13</td></tr><tr><td rowspan="6">Strike Prices</td><td>1450</td><td>8.7</td><td>14.65</td><td>23.8</td><td>34</td><td>40.6</td><td>47.5</td></tr><tr><td>1475</td><td>12.6</td><td>19.7</td><td>29.1</td><td>39.2</td><td>47</td><td>54.1</td></tr><tr><td>1500</td><td>20.35</td><td>26.8</td><td>36.75</td><td>47.3</td><td>54.2</td><td>61.3</td></tr><tr><td>1525</td><td>31.2</td><td>36.8</td><td>45.6</td><td>55.3</td><td>62.6</td><td>69.5</td></tr><tr><td>1550</td><td>47.4</td><td>50.2</td><td>57</td><td>65.4</td><td>72.1</td><td>78.6</td></tr><tr><td>1575</td><td>68.2</td><td>67.4</td><td>71</td><td>77.1</td><td>82.8</td><td>88.7</td></tr></table>

* E.g. on May 3, 2007, put $mkt$ 1500,.12) =  $\$ 20.35$  while put $mkt$ 1475,.12) =  $\$ 12.60$ .

- Is the 7.75 dollar difference only due to the 25 dollar difference in strike prices, or "something else"?

# Black and Scholes Implied Volatility

- Using implied volatilities helps eliminating differences in intrinsic values and maturities.  
- $\Longrightarrow$  implied volatility is a simple measure of how expensive options are relative to each other.
- Implied Volatility Surface = Implied volatilities across strikes and maturities.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/d372c5da8f42e9cd2dc6407f2adf4bf9de2b657e45ca997bd275a8590afee7d0.jpg)

# Black and Scholes Model: Shall we throw it away?

- No: it is a useful benchmark.  
- It still works reasonably well to hedge against changes in stock prices
- Recall the Delta Hedging in Teaching Notes 5.
- New models have been proposed to deal with the shortcomings of Black and Scholes models.
- Deterministic and Stochastic Volatility Models

* Take into account that volatility is in fact time varying.

- Models with Price Jumps

* Take into account that jumps may occur

- Implied Tree Models

* Find the trees that actually price options

- All of these models imply that put prices are overpriced because investors seeking protection from downside (e.g. jumps) are willing to pay a larger (insurance) premium.

# Deterministic Volatility Models

- Assume that volatility  $\sigma$  depends on the stock price itself.  
- E.g. Constant Elasticity of Variance model:  $\sigma(S) = \Sigma \times S^{\alpha}$

$$
\log \left(\frac {S _ {t , t + h}}{S _ {t}}\right) = \mu \times h + S _ {t} ^ {\alpha} \times \Sigma \times \epsilon_ {t}
$$

- If  $\alpha < 0$ , a lower  $S_{t}$  implies a higher volatility.  
$\bullet \Longrightarrow$  implied volatility smirk

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/5e46459d891dae182c1c385dd307fd23af132a8db2afbada89cadee61f99397d.jpg)

# Stochastic Volatility Models

- Assume that volatility  $\sigma_{t}$  is moving over time.  
E.g. let  $\sigma_t = \sqrt{v_t}$

$$
R _ {t, t + h} = \mu \times h + \sqrt {v _ {t}} \times \epsilon_ {1, t}
$$

$$
\left(v _ {t + h} - v _ {t}\right) = k \times \left(\overline {{v}} - v _ {t}\right) \times h + \Sigma \times \sqrt {v _ {t}} \times \epsilon_ {2, t}
$$

- (It is hard to ensure  $v_{t} > 0$  for every  $t$  unless interval size  $h$  is very small)
- Result: if volatility is negatively correlated with stock returns, OTM put options become relatively more expensive  $\Longrightarrow$  Volatility Smirk  
- Intuition:
- A decline in price  $\Longrightarrow$  higher volatility  $\Longrightarrow$  higher probability of even larger declines  $\Longrightarrow$  higher price of insurance against downturns.

# Jump in Prices

- Assume that sometimes big changes in stock prices occur (e.g. October 1987)

$$
R _ {t, t + h} = \mu \times h + \sigma \times \epsilon_ {t} + \omega \times Q _ {t}
$$

- where  $Q_{t} = 0$  most of the time, but some times  $Q_{t} = 1$  (with small probability)  
- $\omega$  can be a random variable (e.g. normal), or a constant.
- Result: If  $\omega < 0$  (or  $E[\omega] < 0$ ), then OTM put options are relatively more expensive.
- If  $\omega < 0$ , it becomes more likely that bad negative outcomes occur.  
- Investors willing to pay a higher premium to insure against those bad events.
- Pricing with jumps is particularly complicated.
- The pricing formulas are not as "nice" as the Black and Scholes formula.

# An Example of "Implied Tree"

- The idea is reasonably simple.  
- In Teaching Note 4, we learnt how to go from a tree to option prices.  
- The "implied tree" methodology does the opposite: Uses (some) option prices to obtain a tree.
- For instance, consider the binomial tree model in Teaching Note 4.  
- Given  $S_{0} = 1502.39$ ,  $\sigma = 12.36\%$ ,  $r = 4.713\%$ ,  $\delta = 1.91\%$  and  $T = .12$ , we find  $u = \exp(\sigma \sqrt{T}) = 1.043746137$  and  $d = 1 / u = 0.958087378$ . Thus, the risk neutral probability

$$
q ^ {*} = \frac {e ^ {(r - \delta) T} - d}{u - d} = 0. 5 2 8 6 3 1 1 1 3
$$

- The price of the \(K = 1500\) put option come out to be \(p_0 = \\)28.394\(, higher than the traded market price \(p^{mkt}(1500,.12) = \$20.35\).

# An Example of "Implied Tree"

$$
i = 0
$$

$$
i = 1
$$

$$
S _ {1, u} = 1 5 6 8. 1 1 4
$$

$$
p _ {1, u} = 0
$$

$$
S _ {0} = 1 5 0 2. 3 9
$$

$$
q _ {0} ^ {*} = 0. 5 2 8 6 3 1 1 1 3
$$

$$
p _ {0} = e ^ {- r \times 0. 1 2} \times (1 - q _ {0} ^ {*}) \times p _ {1, d} = 2 8. 3 9 4
$$

$$
S _ {1, d} = 1 4 3 9. 4 2 1
$$

$$
p _ {1, d} = 6 0. 5 7 9
$$

- An implied tree has the same logic of implied volatility: Since the model is not working using the correct inputs, we look for an alternative specification that makes it work.
- In the above example, we can choose  $S_{1,u}$  to price the option correctly.  
- To avoid too many parameters, define  $u = S_{1,u} / S_0$  and define  $S_{1,d} = S_0 / u$ .  
- We obtain the following

# An Example of "Implied Tree"

$$
i = 0
$$

$$
i = 1
$$

$$
S _ {1, u} = 1 5 5 1. 2 6
$$

$$
p _ {1, u} = 0
$$

$$
S _ {0} = 1 5 0 2. 3 9
$$

$$
q _ {0} ^ {*} = 0. 5 4 4 6
$$

$$
p _ {0} = e ^ {- r \times 0. 1 2} \times (1 - q _ {0} ^ {*}) \times p _ {1, d} = 2 0. 3 5
$$

$$
S _ {1, d} = 1 4 5 5. 0 5 9
$$

$$
p _ {1, d} = 4 4. 9 4 1
$$

- What do we use an implied tree for?
- To price other options. For instance, if K = 1490, the put price from the binomial tree is $15.82184291, closer to the market value of p^mkt(1490,.12) = $17.05, compared to the original case (which would be $23.707)  
- With more elaborated trees, one can also price more elaborated derivatives, which have path dependencies, or American features.

# An Example of 2-step "Implied Tree"

- Once we solved for the first step, we can proceed to obtain a two step tree - We need to keep the first step fixed though  
What do we choose?

$$
- S _ {2, u u}, S _ {2, u d} = S _ {2, d u} \mathrm {a n d} S _ {2, d d}.
$$

- It is desirable to keep the tree somewhat balanced around the starting value  $S_0$ .  
  - $\Rightarrow$  choose  $S_{2,ud} = S_{2,du} = S_0$  
- Since we have two price levels to choose, we need two options.  
- The following example has  $p^{mkt}(1450,.21) = \$ 14.65$  and  $p^{mkt}(1550,.21) = \$ 50.2$

# An Example of 2-step "Implied Tree"

$$
i = 0
$$

$$
i = 1
$$

$$
i = 2
$$

$$
S _ {2, u u} = 1 5 6 7. 0 7 1 3
$$

$$
p _ {2, u u} ^ {1} = 0
$$

$$
p _ {2, u u} ^ {2} = 0
$$

$$
S _ {0} = 1 5 0 2. 3 9
$$

$$
q _ {0} ^ {*} = 0. 5 4 4 6
$$

$$
p _ {0} ^ {1} = 5 0. 2 = p ^ {m k t} (1 5 5 0,. 2 1)
$$

$$
p _ {0} ^ {2} = 1 4. 6 5 = p ^ {m k t} (1 4 5 0,. 2 1)
$$

$$
S _ {1, u} = 1 5 5 1. 2 6
$$

$$
q _ {1, u} ^ {*} = 0. 7 1 4 4
$$

$$
p _ {1, u} ^ {1} = 1 3. 5 4 1 3
$$

$$
p _ {1, u} ^ {2} = 0
$$

$$
S _ {2, u d} = S _ {2, d u} = 1 5 0 2. 3 9
$$

$$
p _ {2, u d} ^ {1} = 4 7. 6 1
$$

$$
p _ {2, u d} ^ {2} = 0
$$

$$
S _ {1, d} = 1 4 5 5. 0 5 9
$$

$$
q _ {1, d} ^ {*} = 0. 7 3 7 3
$$

$$
p _ {1, d} ^ {1} = 9 4. 6 7
$$

$$
p _ {1, d} ^ {2} = 3 2. 3 6
$$

$$
S _ {2, d d} = 1 3 3 6. 2 3 1 6
$$

$$
p _ {2, d d} ^ {1} = 2 1 3. 7 6 8 4
$$

$$
p _ {2, d d} ^ {2} = 1 1 3. 7 6 8 4
$$

# Conclusions

- Black-Scholes formula does not price options consistently, neither at the cross-section (i.e. different strike prices) nor at the time series.
- Stochastic Volatility  
- Jumps  
-Fat tails

- Black-Scholes formula still a very useful benchmark
- To first order, prices and hedge ratios are fine
- More complicated models fit the data better and can be used to set up arbitrage strategies
- Such models do perform better than Black-Scholes model, but gains are not very large
- Black-Scholes model has become the industry standard for traders to quote options
- Trading quotes are in "implied volatility" terms.  
- Implied volatility surfaces provide a simple way to gauge the relative value of options.

# Financial Instruments

# Teaching Note 7

# Exotic Options and Derivative Pricing by Monte Carlo Simulation

John Heaton

The University of Chicago

Booth School of Business

1. Risk Neutral Trees and Monte Carlo Simulations

1.1 One Step tree  
1.2 Multi-Step Tree  
1.3 Why Monte Carlo Simulations?

2. Monte Carlo Simulations without Trees

2.1 Lognormal Model  
2.2 Multi Factors  
2.3 Delta Calculation

# Risk Neutral Trees

- Consider again a one-step tree (to begin with).  
- Assume  $S_{0} = 100$ ;  $K = 100$ ,  $T = 1$ ,  $r = 2\%$ ,  $\sigma = 30\%$ .  
- Given that  $u = e^{\sigma \sqrt{T}} = 1.34986$ , the price of any derivative security with payoff  $V(S_{1})$  can be computed as

$$
V _ {0} = E ^ {*} \left[ e ^ {- r T} V (S _ {1}) \right] = e ^ {- r T} \left[ q ^ {*} V (S _ {1, u}) + (1 - q ^ {*}) V (S _ {1, d}) \right]
$$

- For instance, a call option has price given by

$$
i = 0
$$

$$
i = 1
$$

$$
S _ {0} = 1 0 0. 0 0 0
$$

$$
q _ {0} ^ {*} = 0. 4 5 8 7
$$

$$
c _ {0} = e ^ {- r T} \times q _ {0} ^ {*} \times c _ {1, u} = 1 5. 7 3 1
$$

$$
\begin{array}{l} S _ {1, u} = 1 3 4. 9 8 6 \\ c _ {1, u} = 3 4. 9 8 6 \\ \end{array}
$$

$$
\begin{array}{l} S _ {1, d} = 7 4. 0 8 2 \\ c _ {1, d} = 0 \\ \end{array}
$$

# Monte Carlo Simulations on the Risk Neutral Trees

- An alternative way of computing the expected future payoff is to simulate up and down movements using a computer.  
- For instance, in Excel the function  $\text{RAND}()$  simulates a uniform between  $[0,1]$ .
- Thus,  $RAND() > q^*$  occurs with probability  $(1 - q^*)$ , and vice-versa (e.g.  $q^* = 1$  implies that  $(1 - q^*) = 0$ , and indeed  $RAND()$  can never be above  $q^*$ ).
- We can simulate  $\text{RAND}()$  many times, say  $N$ :
- Whenever the realization  $\text{RAND}() > q^*$  we say that we went down the tree;  
- Whenever  $\operatorname{RAND}\left( \right)  < {q}^{ * }$  ,we say we went up the tree.
- Compute the value of the stock price at time  $T = 1$ ,  $S_{1,u}$  or  $S_{1,d}$  for each simulation
- Let  $S_1^i$  denote the realization of  $S_1$  in simulation run  $i$ .
- Compute the payoff of the security at time  $T = 1$  for each simulation run, e.g.  $V(S_1^i) = \max (S_1^i - K, 0)$  
- The value of the security is the average of the realizations

$$
\widehat {V} _ {0} = \mathrm {a v e r a g e o f} \{e ^ {- r T} V (S _ {1} ^ {1}), e ^ {- r T} V (S _ {1} ^ {2}), e ^ {- r T} V (S _ {1} ^ {3}), \ldots , e ^ {- r T} V (S _ {1} ^ {N}) \} = \frac {1}{N} \sum_ {i = 1} ^ {N} e ^ {- r T} V (S _ {1} ^ {i})
$$

# Monte Carlo Simulations on the Risk Neutral Trees

- For instance, given  $q^{*} = 0.4587$ , we obtain the following table

<table><tr><td>RAND()</td><td>Move on Tree</td><td>Price at T</td><td>Payoff</td><td>discounted</td></tr><tr><td>0.457335</td><td>up</td><td>134.986</td><td>34.986</td><td>34.293</td></tr><tr><td>0.393937</td><td>up</td><td>134.986</td><td>34.986</td><td>34.293</td></tr><tr><td>0.090053</td><td>up</td><td>134.986</td><td>34.986</td><td>34.293</td></tr><tr><td>0.878148</td><td>down</td><td>74.082</td><td>0</td><td>0</td></tr><tr><td>0.658659</td><td>down</td><td>74.082</td><td>0</td><td>0</td></tr><tr><td>0.759579</td><td>down</td><td>74.082</td><td>0</td><td>0</td></tr><tr><td>0.798027</td><td>down</td><td>74.082</td><td>0</td><td>0</td></tr><tr><td>0.061689</td><td>up</td><td>134.986</td><td>34.986</td><td>34.293</td></tr><tr><td>0.969222</td><td>down</td><td>74.082</td><td>0</td><td>0</td></tr><tr><td>0.39267</td><td>up</td><td>134.986</td><td>34.986</td><td>34.293</td></tr><tr><td></td><td></td><td></td><td>Average</td><td>17.147</td></tr><tr><td></td><td></td><td></td><td>st. error</td><td>5.715</td></tr></table>

- With only  $N = 10$  simulation, it is no surprise that the value of the security  $\widehat{V}_0 = 17.147$  comes rather different from the value from the tree ( $V_0 = 15.731$ ).  
- As  $N$  increases, the value gets more and more precise.

# Monte Carlo Simulations on the Risk Neutral Trees

- How many simulations?
- The number of simulations  $N$  should be large enough to obtain a reasonable "standard error", that is, standard deviation of our estimate itself.  
- This is computed as the standard deviation of our discounted payoff, divided by  $\sqrt{N}$ :

$$
\mathrm {s t a n d a r d e r r o r} = \frac {\mathrm {S t a n d a r d D e v i a t i o n o f} \{e ^ {- r T} V (S _ {1} ^ {1}) , e ^ {- r T} V (S _ {1} ^ {2}) , e ^ {- r T} V (S _ {1} ^ {3}) , \ldots , e ^ {- r T} V (S _ {1} ^ {N}) \}}{\sqrt {N}}
$$

- In the previous example, the standard error was  $s.e. = 5.715$
- This implies that with  $95\%$  probability, the true value of the security is between

$$
\mathrm {C o n f i d e n c e I n t e r v a l} = [ \widehat {V _ {0}} - 2 \times s. e., \widehat {V _ {0}} + 2 \times s. e. ] = [ 5. 7 1 5, 2 8. 5 7 7 ]
$$

- Given the number of simulations, we give  $95\%$  probability that the true value is between 5.715 and 28.577, a rather large interval.
- Increasing the number of simulations to  $N = 1000$ , we obtain  $\widehat{V}_0 = 15.725$  with s.e.  $= 0.54$ .
- The confidence interval is [14.644, 16.806], much tighter than beofre.

# Monte Carlo Simulations on the Multi-Step Risk Neutral Trees

- The same logic applies to multi step trees.  
- Consider a two step tree, with the same parameters

$$
i = 0
$$

$$
i = 1
$$

$$
i = 2
$$

$$
S _ {2, u u} = 1 5 2. 8 4 7
$$

$$
S _ {0} = 1 0 0
$$

$$
S _ {1, u} = 1 2 3. 6 3 1
$$

$$
S _ {2, u d} = S _ {2, d u} = 1 0 0
$$

$$
S _ {1, d} = 8 0. 8 8 6
$$

$$
S _ {2, d d} = 6 5. 4 2 5
$$

- Again, the value of any derivative security with payoff  $V(S_{2})$  is given by

$$
V (S) = E ^ {*} [ e ^ {- r T} V (S _ {2}) ]
$$

# Monte Carlo Simulations on the Multi-Step Risk Neutral Trees

- For instance, with  $N = 10$  simulations, we may obtain something as follows:

<table><tr><td>RAND()</td><td>Move on Tree</td><td>RAND()</td><td>Move on Tree</td><td>Price at T</td><td>Payoff</td><td>discounted</td></tr><tr><td>0.535163</td><td>down</td><td>0.621716</td><td>down</td><td>65.425</td><td>0.000</td><td>0</td></tr><tr><td>0.501443</td><td>down</td><td>0.542492</td><td>down</td><td>65.425</td><td>0.000</td><td>0</td></tr><tr><td>0.079387</td><td>up</td><td>0.021237</td><td>up</td><td>152.847</td><td>52.847</td><td>51.80</td></tr><tr><td>0.194357</td><td>up</td><td>0.964902</td><td>down</td><td>100.000</td><td>0.000</td><td>0</td></tr><tr><td>0.329731</td><td>up</td><td>0.487593</td><td>down</td><td>100.000</td><td>0.000</td><td>0</td></tr><tr><td>0.581736</td><td>down</td><td>0.841805</td><td>down</td><td>65.425</td><td>0.000</td><td>0</td></tr><tr><td>0.450822</td><td>up</td><td>0.30804</td><td>up</td><td>152.847</td><td>52.847</td><td>51.80</td></tr><tr><td>0.017819</td><td>up</td><td>0.978316</td><td>down</td><td>100.000</td><td>0.000</td><td>0</td></tr><tr><td>0.110075</td><td>up</td><td>0.636362</td><td>down</td><td>100.000</td><td>0.000</td><td>0</td></tr><tr><td>0.452457</td><td>up</td><td>0.84503</td><td>down</td><td>100.000</td><td>0.000</td><td>0</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td>Average</td><td>10.36</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td>st. error</td><td>6.90</td></tr></table>

- With  $N = 1000$  simulations, the price is  $\widehat{V}_0 = 10.453$  with s.e.  $= 0.657$ .  
- The value from the risk neutral tree is instead 11.476

# Monte Carlo Simulations on the Multi-Step Risk Neutral Trees

- A 10-step tree is as follows:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/dc5bfb1cc9a46049d4d3326837cf57ffad75c3f32c13317ec016520ad7ab6cf3.jpg)  
BINOMIAL TREE MODEL

# Monte Carlo Simulations on the Multi-Step Risk Neutral Trees

- 10 simulated paths are given by (the price in the table refers to  $N = 1000$  though.)

Option Prices By Simulations (on the Tree)  

<table><tr><td rowspan="2">Simulated Put Price</td><td rowspan="2">Simulated Call Price</td><td></td><td></td><td></td><td></td><td></td><td colspan="3">Call Price Binomial Tree</td><td>12.530</td><td></td><td></td><td></td></tr><tr><td></td><td></td><td>Maturity (years)</td><td>1.000</td><td>Call Price Black and Scholk</td><td>12.822</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>11.030</td><td>12.637</td><td>Price</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>0.480</td><td>0.675</td><td>St. Error</td><td></td><td>Maturity (steps)</td><td>10.000</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan="4">Time</td><td colspan="10">SIMULATION OF RISK NEUTRAL PRICE PROCESS</td></tr><tr><td colspan="3">Discountec Discounted</td><td>0.000</td><td>0.100</td><td>0.200</td><td>0.300</td><td>0.400</td><td>0.500</td><td>0.600</td><td>0.700</td><td>0.800</td><td>0.900</td><td>1.000</td></tr><tr><td>Put Payoff</td><td>Call Payoff</td><td>Simulation</td><td>0.000</td><td>1.000</td><td>2.000</td><td>3.000</td><td>4.000</td><td>5.000</td><td>6.000</td><td>7.000</td><td>8.000</td><td>9.000</td><td>10.000</td></tr><tr><td>0.000</td><td>45.238</td><td>1.000</td><td>100.000</td><td>90.949</td><td>82.718</td><td>90.949</td><td>100.000</td><td>109.951</td><td>120.893</td><td>132.924</td><td>120.893</td><td>132.924</td><td>146.151</td></tr><tr><td>0.000</td><td>20.479</td><td>2.000</td><td>100.000</td><td>109.951</td><td>120.893</td><td>132.924</td><td>146.151</td><td>132.924</td><td>146.151</td><td>132.924</td><td>120.893</td><td>132.924</td><td>120.893</td></tr><tr><td>16.940</td><td>0.000</td><td>3.000</td><td>100.000</td><td>90.949</td><td>82.718</td><td>75.231</td><td>82.718</td><td>75.231</td><td>68.422</td><td>75.231</td><td>82.718</td><td>90.949</td><td>82.718</td></tr><tr><td>0.000</td><td>0.000</td><td>4.000</td><td>100.000</td><td>109.951</td><td>100.000</td><td>109.951</td><td>100.000</td><td>90.949</td><td>100.000</td><td>109.951</td><td>100.000</td><td>90.949</td><td>100.000</td></tr><tr><td>16.940</td><td>0.000</td><td>5.000</td><td>100.000</td><td>109.951</td><td>120.893</td><td>109.951</td><td>120.893</td><td>109.951</td><td>100.000</td><td>90.949</td><td>82.718</td><td>75.231</td><td>82.718</td></tr><tr><td>0.000</td><td>0.000</td><td>6.000</td><td>100.000</td><td>90.949</td><td>82.718</td><td>75.231</td><td>82.718</td><td>90.949</td><td>100.000</td><td>90.949</td><td>100.000</td><td>90.949</td><td>100.000</td></tr><tr><td>16.940</td><td>0.000</td><td>7.000</td><td>100.000</td><td>90.949</td><td>82.718</td><td>90.949</td><td>82.718</td><td>75.231</td><td>82.718</td><td>90.949</td><td>82.718</td><td>75.231</td><td>82.718</td></tr><tr><td>0.000</td><td>0.000</td><td>8.000</td><td>100.000</td><td>90.949</td><td>100.000</td><td>109.951</td><td>120.893</td><td>109.951</td><td>100.000</td><td>109.951</td><td>100.000</td><td>109.951</td><td>100.000</td></tr><tr><td>16.940</td><td>0.000</td><td>9.000</td><td>100.000</td><td>90.949</td><td>82.718</td><td>90.949</td><td>82.718</td><td>75.231</td><td>82.718</td><td>90.949</td><td>100.000</td><td>90.949</td><td>82.718</td></tr><tr><td>0.000</td><td>0.000</td><td>10.000</td><td>100.000</td><td>90.949</td><td>100.000</td><td>90.949</td><td>100.000</td><td>90.949</td><td>82.718</td><td>90.949</td><td>100.000</td><td>109.951</td><td>100.000</td></tr></table>

# Monte Carlo Simulations on the Multi-Step Risk Neutral Trees

- The simulation paths are (they look like a tree, with missing branches).

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/f2fdb89aacb957e11ca5e415cd05506649c4595598674641d2d291674f199d17.jpg)

# Why Monte Carlo Simulations?

- Why do we need Monte Carlo Simulations on the tree, when we have the tree itself?
- Monte Carlo Simulations may be useful to price derivative securities with path dependent payoff.

* That is, the value at maturity depends on the path taken by the stock during the life of the security.

- For instance, Asian options have payoff given by

$$
\mathrm {A s i a n C a l l O p t i o n} = \max \left(\{\mathrm {A v e r a g e o f} S _ {t} \mathrm {f r o m 0 t o T} \} - K, 0\right)
$$

$$
\mathrm {A s i a n P u t O p t i o n} = \max (K - \{\mathrm {A v e r a g e o f} S _ {t} \mathrm {f r o m 0 t o T} \}, 0)
$$

- These options are very hard to price on a tree without simulations.  
- Consider a two step tree.

<table><tr><td>i=0</td><td>i=1</td><td colspan="2">i=2</td><td>(r.nprob)</td></tr><tr><td></td><td></td><td>S2,uu=152.847
S2,uu=125.4925</td><td>c2,uu=25.4925</td><td>(Q2,uu=22.15%)</td></tr><tr><td></td><td>S1,u=123.631</td><td></td><td></td><td></td></tr><tr><td></td><td></td><td>S2,ud=100
S2,ud=107.877</td><td>c2,ud=7.877</td><td>(Q2,ud=24.91%)</td></tr><tr><td>S0=100</td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td>S2,du=100
S2,ud=93.628</td><td>c2,du=0</td><td>(Q2,du=24.91%)</td></tr><tr><td></td><td>S1,d=80.886</td><td></td><td></td><td></td></tr><tr><td></td><td></td><td>S2,dd=65.425
S2,ud=82.1036</td><td>c2,dd=0</td><td>(Q2,dd=28.01%)</td></tr></table>

- Even if  $S_{2,ud} = S_{2,du} = 100$ , the payoff when the final price is 100 depends on the path of  $S$ , namely, whether  $S_{1} = S_{1,u} = 123.631$  or  $S_{1} = S_{1,d} = 80.886$ .  
- In this case, we can compute the value of the security on the tree  $V_{0} = \Sigma_{j=1}^{4} Q_{j}^{*} V_{2,j} = 7.45$  
- 1000 Monte Carlo simulations yield  $\widehat{V}_0 = 7.560$  with  $s.e. = 0.316$

# Why Monte Carlo Simulations?

- When we move to multi-period trees, path dependent options become much difficult to price without Monte Carlo Simulations.  
- The following picture shows the averages  $\overline{S}_t$  over 10 paths.
- While the original paths look like the recombining tree we started out with, the averages look like paths on a non-recombining tree.  
- Non recombining trees are much harder to evaluate numerically for a large number of time steps

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/a5ef1709d5a7bcee400204110be2366595040e8e34a573fac31080d1db0437f7.jpg)  
Why Monte Carlo Simulations?  
Asian Paths

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/deb212ef295da840214ae44520b839219f661f5a2eb08d830f03fd339eb883cd.jpg)

# Why Monte Carlo Simulations?

- The number of path dependent options is very large.  
- Besides the asian option discussed, some other popular examples are:

# - Barrier Options:

* The option expires if stock hits an upper (up and out) or a lower (down and out) barrier  
* The option comes into existence if the stock hits and upper (up and in) or a lower (down and in) barrier

- Lookback Options: The final payoff depends on the maximum or minimum value achieved by the stock before maturity. For instance:

$$
g _ {T} = (\max (S _ {0}, \dots , S _ {T}) - S _ {T})
$$

- Asian Strike Options: The strike price is equal to the average stock price. E.g.

$$
g _ {T} = \max (S _ {T} - A v e r a g e (S _ {0}, \dots , S _ {T}), 0)
$$

# Monte Carlo Simulations without Trees

- There is no reason to limit MC simulations to trees.
- The main motivation behind pricing by MC simulations is risk neutral pricing.

* That is, dynamic replication can be achieved.

- These no arbitrage conditions are naturally satisfied on trees, as we have seen.
- However, once we decide we can use risk neutral pricing, we can simulate out of any distribution.
- In particular, we can use the lognormal model, as in Black and Scholes
- Risk neutral pricing implies that over a small period

$$
E ^ {*} \left(\frac {S _ {t + h}}{S _ {t}}\right) = e ^ {r h}
$$

# Monte Carlo Simulations under Log Normality

- One way to simulate is then to use the following algorithm

$$
S _ {t + h} = S _ {t} \times e ^ {(r - \frac {\sigma^ {2}}{2}) h + \sigma \sqrt {h} \epsilon_ {t}}
$$

- where

$$
\epsilon_ {t} \sim N (0, 1)
$$

- The rules of the log-normal distribution imply

$$
E ^ {*} \left(\frac {S _ {t + h}}{S _ {t}}\right) = e ^ {(r - \frac {\sigma^ {2}}{2}) h + \left\{E ^ {*} [ \sigma \sqrt {h} \times \epsilon_ {t} ] + 1 / 2 V a r [ \sigma \sqrt {h} \times \epsilon_ {t} ] \right\}} = e ^ {r h}
$$

- Moreover,  $\sigma^2$  converges to the (annualized) variance of log returns  $Var[\log (S_{t + h} / S_t)]$

# Monte Carlo Simulations under Log Normality

- For instance, a few 10-period paths are plotted in the next figure

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/4ddb283987c5259d6b8598c3eb1dfc7c5aff1a16fd58d48f9d94a34b4188dbff.jpg)  
Log Normal Simulations

# Monte Carlo Simulations under Log Normality

- MC price of put and calls under Black and Scholes assumptions (1000 simulations)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/8b9832957c033f4096c109e45e6d99268edaa1883f4b8c08fbf5274c8b6f4294.jpg)  
Option Prices By Simulations (Log-Normal Distribution)

# Monte Carlo Simulations with many "factors"

- The Monte Carlo Simulation method to price options can be extended to price derivative securities that depend on multiple factors. For instance:
- time varying interest rates  
- time varying volatility  
- payoffs on the relative value of different stocks, exchange rates etc.
- The methodology is the same

1. Simulate risk neutral factors  
2. Compute the cash flows of the security  
3. Compute the present value, discounting at the risk free rate  
4. Average all of the simulated paths.

- One difficulty is with obtaining risk neutral dynamics for factors:
- Traded factors are simple: the expected return on such factor must be the risk free rate.  
- It is harder for non-traded factors (e.g. interest rates, volatility). We attack this problem later on.

# Monte Carlo Simulations with many "factors"

- Consider an option that pays the maximum between the stock return on IBM and Apple within a prespecified period.  
- That is, if  $S_0$  and  $N_0$  are the current prices of the two stocks, the payoff at maturity of the option is

$$
\mathrm {P a y o f f a t} T = \max \left(\frac {S _ {T}}{S _ {0}}, \frac {N _ {T}}{N _ {0}}\right)
$$

- How much would pay for this security?
- We can use Monte Carlo Simulations to find out.  
- The risk neutral processes of  $S_{t}$  and  $N_{t}$  are the same as before, so we simulate

$$
S _ {t + h} = S _ {t} \times e ^ {(r - \frac {\sigma_ {S} ^ {2}}{2}) h + \sigma_ {S} \sqrt {h} \epsilon_ {1, t}}
$$

$$
N _ {t + h} = N _ {t} \times e ^ {(r - \frac {\sigma_ {N} ^ {2}}{2}) h + \sigma_ {N} \sqrt {h} \epsilon_ {2, t}}
$$

- If IBM and Apple are correlated stocks (as they are), we need a methodology to simulate correlated shocks  $\epsilon_{1,t},\epsilon_{2,t}$

* Let  $\hat{\epsilon}_t$  be a standard normal, uncorrelated with  $\epsilon_{1,t}$ . Then, define

$$
\epsilon_ {2, t} = \rho \epsilon_ {1, t} + \sqrt {1 - \rho^ {2}} \hat {\epsilon} _ {t}
$$

* Claim:  $\epsilon_{2,t}$  has zero mean, variance 1, and correlation  $\rho$  with  $\epsilon_{1,t}$  (check!)

# Monte Carlo Simulations with many "factors"

- For each simulation run  $i$ , compute the discounted payoff

$$
V ^ {i} = e ^ {- r T} \max \left(\frac {S _ {T} ^ {i}}{S _ {0}}, \frac {N _ {T} ^ {i}}{N _ {0}}\right)
$$

- The price of the security is then

$$
\widehat {V} _ {0} = \frac {1}{n} \sum_ {i = 1} ^ {n} V ^ {i}
$$

- Assuming  $\sigma_{S} = \sigma_{N} = .3$ ,  $r = .02$  and  $\rho = .7$ , the value of this option is  $\widehat{V}_{0} = 1.134$ .
- As a second example, consider an option with the payoff

$$
\mathrm {P a y o f f a t} T = \max \left(\frac {S _ {T}}{S _ {0}} - \frac {N _ {T}}{N _ {0}}, 0\right)
$$

- That is, it pays only when the first stock (say IBM) does better than the second (say Apple).  
- The same simulations show that the fair value of this option is  $\widehat{V}_0 = 0.1$
- Note that the difference between one option and another is simply the final payoff. The methodology is identical.

Option Prices By Simulations (Log-Normal Distribution)  

<table><tr><td colspan="4">Stock S Assumption</td><td colspan="7">Option Assumption</td></tr><tr><td></td><td></td><td></td><td>mu</td><td>0.1</td><td>T</td><td colspan="5">1</td></tr><tr><td></td><td></td><td></td><td>sigma</td><td>0.3</td><td>K</td><td colspan="5">100</td></tr><tr><td>Payoff = max(ST/S0 - NT/N0,0)</td><td>Payoff = max(ST/S0,NT/N0)</td><td></td><td>r</td><td>0.02</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td>q</td><td>0</td><td>n</td><td>252</td><td>(&lt;252)</td><td></td><td></td><td></td></tr><tr><td>0.100</td><td>1.134</td><td>Price</td><td>S0</td><td>100</td><td>h</td><td>0.003968</td><td></td><td></td><td></td><td></td></tr><tr><td>0.008</td><td>0.018</td><td>St. Error</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan="4">Time</td><td colspan="7">SIMULATION OF RISK NEUTRAL PRICE PROCESS</td></tr><tr><td>Discounted</td><td>Discounted</td><td></td><td>0.000</td><td>0.004</td><td>0.008</td><td>0.012</td><td>0.016</td><td>0.020</td><td>0.024</td><td></td></tr><tr><td>Put Payoff</td><td>Call Payoff</td><td>Simulation</td><td>0.000</td><td>1.000</td><td>2.000</td><td>3.000</td><td>4.000</td><td>5.000</td><td>6.000</td><td></td></tr><tr><td>0.000</td><td>1.215</td><td>1.000</td><td>100.000</td><td>100.302</td><td>98.673</td><td>100.314</td><td>100.721</td><td>100.624</td><td>99.894</td><td></td></tr><tr><td>0.000</td><td>0.961</td><td>2.000</td><td>100.000</td><td>100.580</td><td>101.532</td><td>103.190</td><td>101.181</td><td>101.547</td><td>103.710</td><td></td></tr><tr><td>0.000</td><td>1.239</td><td>3.000</td><td>100.000</td><td>102.966</td><td>101.310</td><td>102.796</td><td>103.523</td><td>104.315</td><td>106.980</td><td></td></tr><tr><td>0.197</td><td>1.010</td><td>4.000</td><td>100.000</td><td>100.704</td><td>101.976</td><td>103.820</td><td>105.250</td><td>107.532</td><td>110.269</td><td></td></tr><tr><td>0.307</td><td>0.891</td><td>5.000</td><td>100.000</td><td>100.525</td><td>97.271</td><td>95.557</td><td>93.942</td><td>93.288</td><td>93.062</td><td></td></tr><tr><td>0.040</td><td>0.930</td><td>6.000</td><td>100.000</td><td>102.864</td><td>106.022</td><td>103.541</td><td>101.559</td><td>101.838</td><td>103.471</td><td></td></tr><tr><td>0.079</td><td>0.675</td><td>7.000</td><td>100.000</td><td>97.681</td><td>97.768</td><td>96.612</td><td>92.258</td><td>92.593</td><td>93.897</td><td></td></tr><tr><td>0.000</td><td>1.236</td><td>8.000</td><td>100.000</td><td>100.442</td><td>98.513</td><td>94.624</td><td>94.781</td><td>97.290</td><td>98.014</td><td></td></tr><tr><td>0.008</td><td>1.665</td><td>9.000</td><td>100.000</td><td>98.807</td><td>97.080</td><td>97.667</td><td>99.475</td><td>100.306</td><td>102.362</td><td></td></tr><tr><td>0.475</td><td>1.281</td><td>10.000</td><td>100.000</td><td>96.897</td><td>98.374</td><td>97.406</td><td>97.495</td><td>96.087</td><td>96.882</td><td></td></tr></table>

# Simulation Second Stock

Stock N Assumption  

<table><tr><td>mu</td><td>0.1</td></tr><tr><td>sigma</td><td>0.3</td></tr><tr><td>rho</td><td>0.700</td></tr><tr><td>q</td><td>0</td></tr><tr><td>S0</td><td>100</td></tr></table>

Time  
SIMULATION OF RISK NEUTRAL PRICE PROCESS  

<table><tr><td rowspan="2">Simulation</td><td>0.000</td><td>0.004</td><td>0.008</td><td>0.012</td><td>0.016</td><td>0.020</td><td>0.024</td></tr><tr><td>0.000</td><td>1.000</td><td>2.000</td><td>3.000</td><td>4.000</td><td>5.000</td><td>6.000</td></tr><tr><td>1.000</td><td>100.000</td><td>98.498</td><td>97.697</td><td>100.548</td><td>102.477</td><td>104.831</td><td>101.270</td></tr><tr><td>2.000</td><td>100.000</td><td>100.697</td><td>100.882</td><td>103.319</td><td>101.228</td><td>104.745</td><td>107.374</td></tr><tr><td>3.000</td><td>100.000</td><td>104.143</td><td>102.590</td><td>101.671</td><td>101.579</td><td>102.504</td><td>103.337</td></tr><tr><td>4.000</td><td>100.000</td><td>100.266</td><td>98.972</td><td>99.121</td><td>99.309</td><td>99.744</td><td>99.729</td></tr><tr><td>5.000</td><td>100.000</td><td>101.133</td><td>98.477</td><td>96.643</td><td>98.565</td><td>96.410</td><td>96.365</td></tr><tr><td>6.000</td><td>100.000</td><td>101.824</td><td>103.298</td><td>101.684</td><td>98.772</td><td>97.923</td><td>100.191</td></tr><tr><td>7.000</td><td>100.000</td><td>97.859</td><td>101.048</td><td>101.048</td><td>95.698</td><td>95.496</td><td>96.103</td></tr><tr><td>8.000</td><td>100.000</td><td>100.923</td><td>99.002</td><td>96.070</td><td>98.452</td><td>97.768</td><td>96.828</td></tr><tr><td>9.000</td><td>100.000</td><td>101.021</td><td>99.586</td><td>98.328</td><td>98.466</td><td>99.917</td><td>103.322</td></tr><tr><td>10.000</td><td>100.000</td><td>94.981</td><td>93.695</td><td>92.245</td><td>92.556</td><td>91.834</td><td>92.319</td></tr></table>

# How can we Compute " $\Delta$ " with Monte Carlo Simulations?

- Once we have computed the value of the security, we may want to know what is its sensitivity to changes in the stock.  
- Computing the " $\Delta$ " is not hard, and we use Monte Carlo simulations again.

$$
\Delta = \frac {d V (S)}{d S} \approx \frac {V (S + h) - V (S)}{h}
$$

- Thus, compute  $V(S)$  and  $V(S + h)$  using MC simulations<sup>1</sup>  
- Apply the above formula.  
- For instance, we obtained earlier the price of a call equal to  $c(100) = 13.359$ .  
Using  $S = 101$  we obtain  $c(101) = 13.979$ .  $\Rightarrow \Delta = (13.979 - 13.359) / 1 = 0.62$ .

- Black and Scholes Delta is  $\Delta = N(d_1) = 0.58$ . As  $N$  increases, the simulated  $\Delta$  converges to the true one.

# Conclusion

- The Monte Carlo Simulations Method is one of the main tools used by practitioners to price complex securities under fairly general assumption about the underlying stochastic processes  
- Just three steps:

1. Simulate many paths of underlying stochastic variables under the risk neutral probabilities  
2. For each path, compute the discounted simulated payoff of the security  
3. Compute the average

- MCS are especially useful to value path dependent securities, or securities that depend on the value of multiple underlying variables
- Barrier options, Asian options, Lookback options  
- Options on maximum, options on relative returns across securities
- MCS are also very useful to value securities under general processes for underlying stochastic variable, such as
- Stochastic volatility  
- Stochastic interest rates  
- Jumps
- The ever increasing gains in the computer speed make MCS methodology increasingly attractive.

# Financial Instruments

# Teaching Note 8

# American Options

John Heaton

The University of Chicago

Booth School of Business

1. American options

1.1 No Arbitrage Bounds  
1.2 Early Exercise

2. American Options on Binomial Trees

2.1 Two-Step Trees  
2.2 Multi-Step Trees  
2.3 Dynamic Replication

# American Options

- An American Option is identical to a European Option, but it can be exercised anytime before expiration.  
Examples of American options

1. Individual stock options  
2. Some options that essentially track indexes: e.g. SPY (CBOE)  
3. Some widely traded OTC interest rate options

- E.g. American Interest Rate Swaptions (options to enter into an interest rate swap) are particularly popular.

4. American options embedded in other contracts  
- E.g. Callable and Puttable bonds; Convertible Bonds; Mortgages.

5. Real options

- Real investments have optionality (e.g. option to invest in a new project, option to close down a plant etc.)
- In all these cases, not only decide IF we want to exercise the option, but also WHEN.

# American Options: No Arbitrage Bounds

- American options must satisfy some basic no arbitrage bounds.

1. American options are at least as valuable as European options

$$
C ^ {A} (S, K, t, T) \geq C ^ {E} (S, K, t, T); P ^ {A} (S, K, t, T) \geq P ^ {E} (S, K, t, T)
$$

2. American options with longer time to maturity are at least as valuable as the same option with shorter time to maturity. If  $T_{2} > T_{1}$

$$
C ^ {A} (S, K, t, T _ {2}) \geq C ^ {A} (S, K, t, T _ {1}); \qquad P ^ {A} (S, K, t, T _ {2}) \geq P ^ {A} (S, K, t, T _ {1})
$$

3. An American option is at least as valuable as its intrinsic value

$$
C ^ {A} (S, K, t, T) \geq \max (S - K, 0); P ^ {A} (S, K, t, T) \geq \max (K - S, 0)
$$

# American Options: No Arbitrage Bounds

4. An American Call option on a non dividend paying stocks has

$$
C ^ {A} (S, K, t, T) \geq \max (S - K \times e ^ {- r (T - t)}, 0)
$$

- To see this, if  $S < K \times e^{-r(T - t)} \Rightarrow$  right-hand-side  $= 0$  and the inequality is obvious.  
- If  $S > K \times e^{-r(T - t)}$  and  $C^A(S, K, t, T) < S - K \times e^{-r(T - t)}$ , then (a) short stock  $S$ , (b) buy the option and (c) invest  $K \times e^{-r(T - t)}$ . Today we get  $S - C^A - Ke^{-r(T - t)} > 0$ .  
- At maturity  $T$ ,
- If  $S_T > K$ , exercise the option, obtain  $S_T - K$ , cash in  $K$  from bond investment, and pay the short  $-S_T$ , netting $0.  
- If  $S_T < K$ , cash in  $K$  from bond investment, and pay the short  $-S_T$ , netting  $K - S_T > 0$
- (Note that the above no arbitrage bound also holds for European options.)

# Example: SPY Options

- As an example, consider the SPY options.  
- Next figure plots the March 17, 2023 call and put options for various moneyness  $K / S_{0}$ .
- To compare with the option prices on S&P 500, I normalize option values by the value of the index.  
- Thus, the figure plots  $\text{Call} / S_0$  and  $\text{Put} / S_0$
- The figure also plots the intrinsic value, also normalized by the value of the index:

For Puts: Normalized Intrinsic Value  $= \frac{\max(K - S_0, 0)}{S_0} = \max(\text{Moneyness} - 1, 0)$

For Calls: Normalized Intrinsic Value  $= \frac{\max(S_0 - K, 0)}{S_0} = \max(1 - \text{Moneyness}, 0)$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/2c55f8d19b51df5abf26b32b1641c35a2b0394e6cf6d5d1e918e468133af538c.jpg)  
Example: SPY Options

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/7fed3e4b0f5f60a1c1014182e7faa16c8820a8a54d999837d40fe32f65fff597.jpg)

# Example: SPY Options

# Note:

1. American Options are always as valuable as Europeans.  
- True in the diagram for puts, not quite for calls  
- Differences in the underlying securities: paper index versus an ETF  
- Settlement differences: cash for SPX, shares for SPY  
- Tradings costs (e.g. bid-ask spread) bigger for SPY than SPX

2. The European ITM Put Option is below its intrinsic value, but the American ITM Put Option is above.  
3. The American Put option touches the intrinsic value for high  $K / S_0$ .  
4. The American Call option appears close to being equal to the European Call option for every  $K / S_0$ .

# American Call Options: Early Exercise

- Question: Should you ever exercise an American Call option on a non dividend paying stock before maturity?  
 - Example: You own a 3 month Call option with K = 100. Today S = 105. If you exercise, you gain $5 = S - K. If you wait one more day, you may get more as the price may increase. But you may also lose.
- Should you exercise now or wait until maturity?
- If you sell the option, you get  $C(S, K, 0, T)$  today. If you exercise, you get  $S - K$ .  
- We know that for non dividend paying stocks

$$
C (S, K, 0, T) \geq \max (0, S - K e ^ {- r T})
$$

- Since  $S - Ke^{-rT} > S - K > 0$ , selling the option is better as  $C(S, K, 0, T) > S - K$ .

# American Call Options: Early Exercise

- What if we cannot sell the option? Is it optimal to exercise early?
- No. If you exercise, you get  $S - K$ , which at maturity is  $(S - K)e^{rT}$ .  
- Instead, keep the call, short the stock for  $S$  and buy bonds.

* At  $T$ , you have

$$
S e ^ {r T} - S _ {T} + \max (S _ {T} - K, 0) = \left\{ \begin{array}{l l} S e ^ {r T} - K = (S - K) e ^ {r T} + K (e ^ {r T} - 1) & \mathrm {i f} S _ {T} > K \\ S e ^ {r T} - S _ {T} > S e ^ {r T} - K & \mathrm {i f} S _ {T} <   K \end{array} \right.
$$

* Either way, it is more than  $(S - K)e^{rT}$

- Especially if  $S_T < K$  at maturity, we make a killing.
- "An American Call on a non dividend paying stock is always worth more alive than dead"  
- Intuition:
- If we exercise early, we lose both

1. The time value of money on the strike.  
2. the value of the right to exercise the option in the future.

- When is it optimal to exercise early?

# American Options. Pros and Cons of Early Exercise

- If we exercise a Call early:

(Good) We get any dividends paid between now and maturity

(Bad) We pay  $K$  today instead of in the future  $\Longrightarrow$  lose the interest on  $K$ .

(Bad) We pay  $K$  today for a stock that may be worth less than  $K$  at  $T$ .

* Even if  $S > K$  today, it may well be that  $S_T < K$ , in which case we will not want to exercise.  
* $S$  today reflects all of the possible possibilities, including low  $S_{T}$ .  
* By waiting, we reserve the right of not to exercise if  $S_T < K$ .

· "But if we exercise we get  $S - K$  today…"  

- Yes, but you can get more by shorting the stock and buying bonds (see earlier). In fact, this strategy pays handsomely exactly when  $S_{T} < K$  at maturity.

# American Options. Pros and Cons of Early Exercise

- If we exercise a Put early:

(Good) We receive  $K$  today instead of in the future  $\Longrightarrow$  gain the interest on  $K$ .  
(Bad) We lose any dividends paid between now and maturity.  
(Bad) We receive  $K$  today for a stock that may be worth more than  $K$  at  $T$ .

* Even if  $S < K$  today, it may well be that  $S_T > K$ , in which case we will not want to exercise.  
* $S$  today reflects all of the possible possibilities, including high  $S_{T}$ .  
* By waiting, we reserve the right of not to exercise if  $S_T > K$ .

- Still, even if there is no dividends, put options may be worth exercise early.
- For example, if the company goes bankrupt, then  $S = 0$ . Exercising immediately is then optimal, as you receive  $K$  today. It cannot get any better than this, and waiting you lose the interest.

# American Options. Dividend Rules

- Suppose dividends are unknown, but

$$
D ^ {+} = \max P V [ \mathrm {d i v i d e n d s u n t i l m a t u r i t y} ]
$$

$$
D ^ {-} = \min P V [ \mathrm {d i v i d e n d s u n t i l m a t u r i t y} ]
$$

- Then
- Never exercise a call if  $D^{+} < K \times (1 - e^{-rT})$  
- Never exercise a put if  $D^{-} > K \times (1 - e^{-rT})$
- To see this, consider the call (for the put it is similar).
- The value of a call is always higher than the value of a forward contract with the same strike price (the call always pays at least as much as the forward!):

$$
\begin{array}{l} C (S, K, t, T) \geq S - P V (D) - K e ^ {- r T} \\ \geq S - D ^ {+} - K e ^ {- r T} \\ > S - K (1 - e ^ {- r T}) - K e ^ {- r T} \\ = S - K \\ \end{array}
$$

- $\Rightarrow$  Sell the option, rather than exercise it.

# American Options. Dividend Rules - 2

- It is only optimal to exercise an American Call at maturity, or just before a dividend payment.  
- It is never optimal to exercise an American Put just before a dividend payment.
- Intuitively, consider the figures

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/a4af48e50a6ab62d36ed86a14de89cd7a65da0f16f42641b1952e0f719354d2b.jpg)

- By exercising a Call at (1) instead of (2) you: (A) lose both the interest between (1) and (2), and the right not to exercise; (B) gain nothing, as there is no dividend between (1) and (2). It cannot be optimal.  
- By exercising a Call at (3) instead of (2) you: (A) lose both the dividend, and the right not to exercise; (B) gain a little interest, but small given the small interval.  
- By exercising a Put at (2) instead of (3) you: (A) lose both the dividend and the right not to exercise; (B) gain a little interest, but small given the small interval.

# American Options: Pricing and Optimal Exercise Time

- How do we price American Options? How can we compute the optimal exercise time?  
- For instance, you are long a Sep 07 put option on the S&P 100 index with strike price  $K = 740$ .  
- On May 11 2007 the S&P 100 closed at 689.83. You are  $7 \%$ inthemoney.  
- Question: Is it time to exercise?  
- Or keeping the option alive has still sufficient value to wait longer?
- In order to decide whether it is optimal to exercise, we have to compare the payoff today (if exercise) with the expected payoff in the future (if we wait)  
- That is, we exercise if and only if

# $\mathbf{K} - \mathbf{S} >$  Discounted Expected Future Payoff if Wait

- How do we compute the discounted expected future payoff if we wait?
- Binomial Trees are excellent tools that allow us to perform this computation.

# American Option: Two Step Tree

- Let  $S_0 = 100$ ;  $K = 100$ ,  $T = 1$ ,  $r = 2\%$ ,  $\sigma = 30\% \Rightarrow u = e^{\sigma \sqrt{T}} = 1.34986$  and  $q^{*} = 0.4707$ .  
- Consider a put option with  $K = 100$ . The European option is given by

$$
i = 0
$$

$$
i = 1
$$

$$
i = 2
$$

$$
S _ {2, u u} = 1 5 2. 8 4 7
$$

$$
p _ {2, u u} ^ {E} = 0
$$

$$
\begin{array}{l} S _ {0} = 1 0 0 \\ p _ {0} ^ {E} = e ^ {- r / 2} E ^ {*} [ p _ {1} ] \\ = e ^ {- r / 2} \left(1 - q ^ {*}\right) p _ {1, d} = 9. 4 9 5 \\ \end{array}
$$

$$
\begin{array}{l} S _ {1, u} = 1 2 3. 6 3 1 \\ p _ {1, u} ^ {E} = e ^ {- r / 2} E ^ {*} [ p _ {2} | S _ {1, u} ] = 0 \\ \end{array}
$$

$$
\begin{array}{l} S _ {2, u d} = S _ {2, d u} = 1 0 0 \\ p _ {2, u d} ^ {E} = p _ {2, d u} ^ {E} = 0 \\ \end{array}
$$

$$
\begin{array}{l} S _ {1, d} = 8 0. 8 8 6 \\ p _ {1, d} ^ {E} = e ^ {- r / 2} E ^ {*} [ p _ {2} | S _ {1, d} ] \\ = e ^ {- r / 2} \left(1 - q ^ {*}\right) p _ {2, d d} = 1 8. 1 1 9 \\ \end{array}
$$

$$
\begin{array}{l} S _ {2, d d} = 6 5. 4 2 5 \\ p _ {2, d d} ^ {E} = 3 4. 5 7 5 \\ \end{array}
$$

# American Option: Two Step Tree

- Consider now the American put option  
- At maturity  $i = 2$  the payoff of the American option is the same as the European option

$$
p _ {2, j} ^ {A} = p _ {2, j} ^ {E} \quad \mathrm {f o r} \quad j = u u, u d, d u, d d
$$

- At  $i = 1$ , at each node  $u$  and  $d$  compare the payoff if exercise with expected payoff if wait.
- In node  $(1, u)$  the put option is OTM  $\Longrightarrow$  no exercise. Note that  $p_{1,u}^{A} = 0$ .  
-In node  $(1,d)$

1. If exercise get  $K - S = 100 - 80.886 = 19.114$ .  
2. If wait, the value of the option is equal to the European counterpart

$$
\mathrm {V a l u e o f O p t i o n i f W a i t} = e ^ {- r / 2} E ^ {*} [ p _ {2} ^ {A} | S _ {1, d} ] = e ^ {- r / 2} E ^ {*} [ p _ {2} ^ {E} | S _ {1, d} ] = 1 8. 1 1 9
$$

- Thus, exercise in node  $(1,d)$  is optimal.
- $\Rightarrow$  The value of the option in node  $(1, d)$  is equal to 19.114. That is

$$
p _ {1, d} ^ {A} = \max (K - S _ {1, d}, \mathrm {V a l u e o f O p t i o n i f W a i t})
$$

- The value of the option at time 0 is then

$$
p _ {0} ^ {A} = e ^ {- r / 2} E ^ {*} \left[ p _ {1} ^ {A} \right] = e ^ {- r / 2} \left(1 - q ^ {*}\right) p _ {1, d} ^ {A} = 1 0. 0 1 7
$$

# American Option: Two Step Tree

$$
i = 0
$$

$$
i = 1
$$

$$
i = 2
$$

$$
S _ {2, u u} = 1 5 2. 8 4 7
$$

$$
p _ {2, u u} ^ {A} = 0
$$

$$
\begin{array}{l} S _ {0} = 1 0 0 \\ p _ {0} ^ {A} = \max  \left(K - S _ {0}, e ^ {- r / 2} E ^ {*} [ p _ {1} ^ {A} ]\right) \\ = e ^ {- r / 2} q ^ {*} p _ {1, d} ^ {A} = 1 0. 0 1 7 \\ \end{array}
$$

$$
\begin{array}{l} S _ {1, u} = 1 2 3. 6 3 1 \\ p _ {1, u} ^ {A} = \max  \left(K - S _ {1, u}, e ^ {- r / 2} E ^ {*} [ p _ {2} ^ {A} | S _ {1, u} ]\right) \\ = 0 \\ \end{array}
$$

$$
\begin{array}{l} S _ {2, u d} = S _ {2, d u} = 1 0 \phi \\ p _ {2, u d} ^ {A} = p _ {2, d u} ^ {A} = 0 \\ \end{array}
$$

$$
\begin{array}{l} S _ {1, d} = 8 0. 8 8 6 \\ p _ {1, d} ^ {A} = \max  \left(K - S _ {1, d}, e ^ {- r / 2} E ^ {*} [ p _ {2} ^ {A} | S _ {1, d} ]\right) \\ = \max  (1 9. 1 1 4, 1 8. 1 1 9) = 1 9. 1 1 4 \\ \end{array}
$$

$$
\begin{array}{l} S _ {2, d d} = 6 5. 4 2 5 \\ p _ {2, d d} ^ {A} = 3 4. 5 7 5 \\ \end{array}
$$

# American Options. Multi Step Trees

- The tree methodology can be easily extended to many steps.  
- Remember that the pair  $(i,j)$  represent time  $i = 0,1,2\ldots ,n$  and node  $j = 1,2,\dots,n$  
- With European style derivatives, we solve for prices  $V_{i,j}$  using the rule

$$
V _ {i, j} ^ {E} = e ^ {- r \times h} \times E ^ {*} \left[ V _ {i + 1} ^ {E} | (i, j) \right]
$$

- where  $h = T / n$  is the time interval between steps.
- With American style derivatives, we solve for prices  $V_{i,j}$  using the rule

$$
V _ {i, j} ^ {A} = \max \left\{g _ {i, j}, e ^ {- r \times h} \times E ^ {*} \left[ V _ {i + 1} ^ {A} | (i, j) \right] \right\}
$$

- where  $g_{i,j}$  is the payoff from the American derivative if exercise occurs in node  $(i,j)$
- For instance, for the case of put options, we have

$$
p _ {i, j} ^ {A} = \max \big \{K - S _ {i, j}, e ^ {- r \times h} \times \big (q ^ {*} \times p _ {i + 1, j} ^ {A} + (1 - q ^ {*}) \times p _ {i + 1, j + 1} ^ {A} \big) \big \}
$$

# American Options. Multi Step Trees

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/9d1555019b4d6912c3f714b1f46cdfa058287017cd2021bddb593c714508193e.jpg)  
BINOMIAL TREE MODEL

AMERICAN  

<table><tr><td colspan="2">time =&gt;</td><td>0.000</td><td>0.100</td><td>0.200</td><td>0.300</td><td>0.400</td><td>0.500</td><td>0.600</td><td>0.700</td><td>0.800</td><td>0.900</td><td>1.000</td></tr><tr><td colspan="2">i=&gt;</td><td>0.0</td><td>1.0</td><td>2.0</td><td>3.0</td><td>4.0</td><td>5.0</td><td>6.0</td><td>7.0</td><td>8.0</td><td>9.0</td><td>10.0</td></tr><tr><td>0</td><td>10.819</td><td>6.669</td><td>3.481</td><td>1.384</td><td>0.319</td><td>0.000</td><td>0.000</td><td>0.000</td><td>0.000</td><td>0.000</td><td>0.000</td><td>0.000</td></tr><tr><td>1</td><td></td><td>14.799</td><td>9.719</td><td>5.484</td><td>2.399</td><td>0.623</td><td>0.000</td><td>0.000</td><td>0.000</td><td>0.000</td><td>0.000</td><td>0.000</td></tr><tr><td>2</td><td></td><td></td><td>19.676</td><td>13.774</td><td>8.433</td><td>4.094</td><td>1.216</td><td>0.000</td><td>0.000</td><td>0.000</td><td>0.000</td><td>0.000</td></tr><tr><td>3</td><td></td><td></td><td></td><td>25.352</td><td>18.894</td><td>12.582</td><td>6.840</td><td>2.374</td><td>0.000</td><td>0.000</td><td>0.000</td><td>0.000</td></tr><tr><td>4</td><td></td><td></td><td></td><td></td><td>31.578</td><td>24.956</td><td>18.080</td><td>11.103</td><td>4.635</td><td>0.000</td><td>0.000</td><td>0.000</td></tr><tr><td>5</td><td></td><td></td><td></td><td></td><td></td><td>37.771</td><td>31.578</td><td>24.769</td><td>17.282</td><td>9.051</td><td>0.000</td><td>0.000</td></tr><tr><td>6</td><td></td><td></td><td></td><td></td><td></td><td></td><td>43.403</td><td>37.771</td><td>31.578</td><td>24.769</td><td>17.282</td><td>17.282</td></tr><tr><td>7</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>48.525</td><td>43.403</td><td>37.771</td><td>31.578</td><td>31.578</td></tr><tr><td>8</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>53.184</td><td>48.525</td><td>43.403</td><td>43.403</td></tr><tr><td>9</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>57.421</td><td>53.184</td><td>61.275</td></tr><tr><td>10</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>61.275</td></tr></table>

# Multi Step Tree: Does it Work?

- Consider the relative pricing of S&P 500 options (European) and S&P 100 options (American)  
- For instance, the  $5\%$  in the money Sep Put have (renormalized) values of

$$
p ^ {S \& P 5 0 0} (1. 0 5) = 0. 0 4 9 1 \mathrm {a n d} p ^ {S \& P 1 0 0} (1. 0 5) = 0. 0 5 4 0
$$

- The three month interest rate is  $r = 0.0483$  and the dividend yield around  $\delta = 0.0191$ .  
- The implied volatility that exactly prices the S&P 500 put option is  $\sigma = 0.10366$  
- The value of the corresponding American Option is  $p^A = 0.0529$ , a little lower than the market value.

# Multi Step Tree: Does it Work?

BINOMIAL TREE MODEL  

<table><tr><td></td><td colspan="2">Stock Assumption</td><td colspan="3">Option Assumption</td><td colspan="3">Tree</td><td colspan="3">Risk Neutral Prob</td><td>Data</td></tr><tr><td></td><td>mu</td><td>0.1183</td><td>T</td><td colspan="2">0.364</td><td>n</td><td colspan="2">91</td><td>q*</td><td colspan="2">0.50727</td><td></td></tr><tr><td></td><td>sigma</td><td>0.103661</td><td>K</td><td colspan="2">1.05</td><td>h</td><td colspan="2">0.004</td><td>Price European</td><td>0.0491</td><td>0.0491</td><td></td></tr><tr><td></td><td>r</td><td>0.0483</td><td>Call or Put</td><td colspan="2">0 (=1 for call</td><td>u</td><td colspan="2">1.006578</td><td>Delta European</td><td>-0.7145</td><td></td><td></td></tr><tr><td></td><td>q</td><td>0.0191</td><td></td><td colspan="2"></td><td>d</td><td colspan="2">0.993465</td><td>Price American</td><td>0.0529</td><td>0.0540</td><td></td></tr><tr><td></td><td>S0</td><td>1</td><td></td><td colspan="2"></td><td>p</td><td colspan="2">0.528629</td><td>Delta American</td><td>-0.8015</td><td></td><td></td></tr><tr><td>time =&gt;</td><td>0</td><td>0.004</td><td>0.008</td><td>0.012</td><td>0.016</td><td>0.02</td><td>0.024</td><td>0.028</td><td>0.032</td><td>0.036</td><td>0.04</td><td>0.044</td></tr><tr><td>i=&gt;</td><td>0</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td><td>8</td><td>9</td><td>10</td><td>11</td></tr><tr><td>0</td><td>1.000</td><td>1.007</td><td>1.013</td><td>1.020</td><td>1.027</td><td>1.033</td><td>1.040</td><td>1.047</td><td>1.054</td><td>1.061</td><td>1.068</td><td>1.075</td></tr><tr><td>1</td><td></td><td>0.993</td><td>1.000</td><td>1.007</td><td>1.013</td><td>1.020</td><td>1.027</td><td>1.033</td><td>1.040</td><td>1.047</td><td>1.054</td><td>1.061</td></tr><tr><td>2</td><td></td><td></td><td>0.987</td><td>0.993</td><td>1.000</td><td>1.007</td><td>1.013</td><td>1.020</td><td>1.027</td><td>1.033</td><td>1.040</td><td>1.047</td></tr><tr><td>3</td><td></td><td></td><td></td><td>0.981</td><td>0.987</td><td>0.993</td><td>1.000</td><td>1.007</td><td>1.013</td><td>1.020</td><td>1.027</td><td>1.033</td></tr><tr><td>4</td><td></td><td></td><td></td><td></td><td>0.974</td><td>0.981</td><td>0.987</td><td>0.993</td><td>1.000</td><td>1.007</td><td>1.013</td><td>1.020</td></tr><tr><td>5</td><td></td><td></td><td></td><td></td><td></td><td>0.968</td><td>0.974</td><td>0.981</td><td>0.987</td><td>0.993</td><td>1.000</td><td>1.007</td></tr><tr><td>6</td><td></td><td></td><td></td><td></td><td></td><td></td><td>0.961</td><td>0.968</td><td>0.974</td><td>0.981</td><td>0.987</td><td>0.993</td></tr><tr><td>7</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>0.955</td><td>0.961</td><td>0.968</td><td>0.974</td><td>0.981</td></tr><tr><td>8</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>0.949</td><td>0.955</td><td>0.961</td><td>0.968</td></tr><tr><td>9</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>0.943</td><td>0.949</td><td>0.955</td></tr><tr><td>10</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>0.937</td><td>0.943</td></tr><tr><td>11</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>0.930</td></tr></table>

# American Options. Dynamic Replication

- Can we "dynamically replicate" an American option using a portfolio of stocks and bonds?
- Yes! Once we solve for the optimal exercise strategy, we have a standard option tree.  
- Consider the earlier example:

$$
\begin{array}{l} i = 0 \\ i = 1 \\ i = 2 \\ S _ {2, u u} = 1 5 2. 8 4 7 \\ p _ {2, u u} ^ {A} = 0 \\ \end{array}
$$

$$
S _ {0} = 1 0 0
$$

$$
p _ {0} ^ {A} = 1 0. 0 1 7
$$

$$
\begin{array}{l} S _ {1, u} = 1 2 3. 6 3 1 \\ p _ {1, u} ^ {A} = 0 \\ \end{array}
$$

$$
S _ {1, d} = 8 0. 8 8 6
$$

$$
p _ {1, d} ^ {A} = 1 9. 1 1 4
$$

$$
\begin{array}{l} S _ {2, u d} = S _ {2, d u} = 1 0 0 \\ p _ {2, u d} ^ {A} = p _ {2, d u} ^ {A} = 0 \\ \end{array}
$$

$$
\begin{array}{l} S _ {2, d d} = 6 5. 4 2 5 \\ p _ {2, d d} ^ {A} = 3 4. 5 7 5 \\ \end{array}
$$

# American Options. Dynamic Replication

- Suppose you sold the option to a client.  
- At time  $i = 0$  we must set up a portfolio that replicates  $p_1^A$ . The same rule as in TN 4 applies:

1. Compute  $\Delta = (p_{1,u}^{A} - p_{1,d}^{A}) / (S_{1,u} - S_{1,d}) = -0.447$  
2. Compute bonds  $B_{0} = e^{-r / 2}\left(p_{1,u}^{A} - \Delta S_{1,u}\right) = 54.733$  
3. The replicating portfolio is  $P_{0} = \Delta S_{0} + B_{0} = 10.017 = p_{0}^{A}$

- At time  $i = 1$  the replicating portfolio has payoffs

$$
\mathrm {I n t h e U p N o d e} P _ {1, u} = \Delta S _ {1, u} + B _ {0} e ^ {r / 2} = 0
$$

$$
\mathrm {I n t h e D o w n N o d e} P _ {1, d} = \Delta S _ {1, d} + B _ {0} e ^ {r / 2} = 1 9. 1 1 4
$$

- At time  $i = 1$  we need to rebalance.
- In the up node,  $\Delta = 0$ , and so we are out of the market.  
- In the down node, the option holder is supposed to optimally exercise the option, and so we simply hand them the payoff

$$
P _ {1, d} = K - S _ {1, d} = 1 9. 1 1 4
$$

- Note that the node  $(2, d)$  is never reached under the optimal exercise strategy.

# American Options. Dynamic Replication

- What if the option holder does not exercise the American option in node  $(1, d)$ ?
- In this case, we need to keep going with the replicating portfolio until time  $i = 2$ .  
- The new replicating portfolio has  $\Delta_{1,d} = (p_{2,du}^{A} - p_{2,dd}^{A}) / (S_{2,du} - S_{2,dd}) = -1$  and  $B_{1,d} = e^{r/2}(p_{2,u} - \Delta_{1,d}S_{2,u}) = 99.005$ .  
- The value of the new replicating portfolio in node  $(1, d)$  is

$$
P _ {1, d} ^ {\mathrm {n e w}} = \Delta_ {1, d} S _ {1, d} + B _ {1, d} = 1 8. 1 1 9
$$

- The value of the new replicating portfolio is lower than the value  $P_{1,d} = 19.114$  obtained earlier from the initial replicating strategy.  
- $\Longrightarrow$  The fact that the counterpart forgets to exercise the American option at node  $(1, d)$  make us earn money:

Profit from suboptimal exercise of option holder  $= P_{1,d} - P_{1,d}^{new} = 19.113 - 18.119 = 0.99$

# Conclusion

- American options are much harder to evaluate because of the timing decision of when to exercise, if at all.
- The decision to exercise or not relies on the value of the option in case of no exercise.  
- The methodology requires a backward procedure to evaluate such option to wait.
- Binomial trees are especially useful, because the procedure is naturally backward  
- However, binomial trees are restrictive
- Hard to use with multiple factors (e.g. what if volatility is stochastic?)  
- Hard to use for path-dependent securities
- To deal with these issues, new methodologies have recently been put forward to value American options by Monte Carlo Simulations

# Financial Instruments

# Teaching Note 9

# Corporate Securities and Credit Derivatives

John Heaton

The University of Chicago

Booth School of Business

1. The Merton Model

1.1 Equity and Debt  
1.2 Credit Spreads  
1.3 Relative Pricing  
1.4 Warrants  
1.5 Conflict of Interests between Equity and Bond holders

2. Credit Risk Measurement: The KMV Model
3. Credit Derivatives

3.1 Credit Default Swaps

# The Merton Model

- Today is  $t = 0$  and consider a firm with current assets  $V_{0}$ .  
- Assume the firm's return on assets (ROA) between 0 and  $T$  is log-normally distributed.
- That is, let  $\epsilon \sim N(0,1)$ , then

$$
V _ {T} = V _ {0} \times e ^ {\left(\mu - \frac {1}{2} \sigma^ {2}\right) T + \sigma \sqrt {T} \epsilon}
$$

- Note that Black & Scholes assumes that equity returns are log-normally distributed. This is not a coincidence.
- The firm finances its operation by issuing both equity and debt. Assume first that the firm issues a zero coupon bond, whose face value is  $F$  and maturity is  $T$ .  
- There are two possible outcomes for debt holders at maturity  $T$ :
- If  $V_{T} > F \Rightarrow$  the firm can liquidate some of its assets, and pay the debt holders.

$\ast \Longrightarrow$  Debt holders get  $F$ ;  
$\ast \Longrightarrow$  Equity holders get the residual  $V_{T} - F$ ;

- If  $V_{T} < F \Rightarrow$  the firm will be unable to pay its debt, and therefore there is default.

* $\Longrightarrow$  The debt holders take possession of the assets of the firm  $\Longrightarrow$  their payoff is  $V_{T}$ .  
$\ast \Longrightarrow$  Equity holders get nothing.

# The Merton Model - 2

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/add872632c8a65d32491d0393801d8017443a7ce6c2fedc1d344191b89c8806d.jpg)  
Debt holders Payoff at  $T$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/649786a086c621236b79b04d85285f8db469355bc6062439d689f24923e4b46f.jpg)

# The Merton Model - The Value of Equity

- The payoff to equity holders is then the one of a call option

$$
\max (V _ {T} - F, 0)
$$

- If we denote  $E_0$  the value of equity today, we can apply Black and Scholes formula and obtain

$$
E _ {0} = \mathrm {C a l l} (V _ {0}, F, r, T, \sigma)
$$

- where  $\operatorname{Call}(V_0, F, r, T, \sigma)$  is just Black & Scholes formula

$$
\mathrm {C a l l} \left(V _ {0}, F, r, T, \sigma\right) = V _ {0} N (d _ {1}) - F e ^ {- r T} N (d _ {2})
$$

$$
d _ {1} = \frac {\ln \left(\frac {V _ {0}}{F}\right) + (r + \sigma^ {2} / 2) T}{\sigma \sqrt {T}}; d _ {2} = d _ {1} - \sigma \sqrt {T}
$$

# The Volatility of Levered Equity

- What is the volatility of levered equity?
- We have already investigated the volatility of an option given the volatility of the underlying (see TN 5). Applying the same reasoning, we obtain

$$
\mathrm {V o l a t i l i t y o f E q u i t y R e t u r n s} = \sigma_ {E} = \left(\frac {V N (d _ {1})}{V N (d _ {1}) - K e ^ {- r T} N (d _ {2})}\right) \times \sigma
$$

- The term in parenthesis is much larger than 1, implying that equity return volatility is many times higher than the volatility of the underlying assets.
- In addition, as  $V$  decreases, the parenthesis increases also, thereby increasing the volatility.  
- Since equity  $E = \operatorname{Call}(V, F)$  is strictly increasing in  $V$ , we have then that when  $E_V$  decreases its volatility increases.  
- This is called "Leverage effect" and it was first noticed by Fisher Black.
- $\Longrightarrow$  The model generates time varying volatility correlated with the value of equity: When equity drop, volatility increases.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/9ae002ad7a9905c127537ae1725e3bde0b85aeb3ab0e429addacdf0af9096d53.jpg)  
Volatility of Equity Returns versus Asset Value

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/413e9381781e957575cd3d2a95b33366f53976db40fbd59d59da8a3a72f9204a.jpg)  
Volatility of Equity Returns versus Equity Value

# The Merton Model - The Value of Debt

- What is the value of defaultable debt in the model?  
- The payoff to debt holders is

$$
\min (V _ {T}, F) = V _ {T} - \max (V _ {T} - F, 0)
$$

- The value today of this payoff is then

$$
D _ {0} = V _ {0} - E _ {0} = V _ {0} - C a l l (V _ {0}, F, r, T, \sigma)
$$

- Note that this expression also comes immediately from the balance sheet identity

Assets of a Firm = Debt + Equity

- Exploiting put call parity, we can express the value of debt alternatively, and more intuitively, as

$$
D _ {0} = F e ^ {- r \times T} - P u t (V _ {0}, F, r, T, \sigma)
$$

- The value of debt is equal to the risk free debt  $F e^{-rT}$  minus a put option, representing the (risk adjusted) expected losses due to the possibility that risky assets will not be sufficient to pay the debt at maturity.

# Credit Spreads under the Merton Model

- We can then use the Merton's model to compute a corporate bond credit spread.  
- From the definition of yield to maturity  $y$  for a corporate bond, we have the equality

$$
D _ {0} = e ^ {- y \times T} \times F \quad \Longrightarrow \quad F e ^ {- r \times T} - P u t (V _ {0}, F, r, T, \sigma) = e ^ {- y \times T} F
$$

- which implies

$$
e ^ {- r \times T} - P u t \left(\frac {V _ {0}}{F}, 1, r, T, \sigma\right) = e ^ {- y \times T}
$$

$$
1 - e ^ {r \times T} \times P u t \left(\frac {V _ {0}}{F}, 1, r, T, \sigma\right) = e ^ {- (y - r) \times T}
$$

and finally

$$
\mathrm {C r e d i t S p r e a d} = y - r = - \frac {1}{T} l o g \left[ 1 - e ^ {r \times T} P u t \left(\frac {V _ {0}}{F}, 1, r, T, \sigma\right) \right]
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/27cfbed846329ce04bd064ce0dad7bb6cc5ab2bcbd86a1840408ba55d7f3757c.jpg)  
Credit Spreads under the Merton Model

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/318ef00fce28d615a3fce7864e1b324d2daeebbe7c718ceb6ff834f3e5782b50.jpg)

- Issues: (A) They are small; (B) They converge to zero at  $T \to 0$

# The Merton Model - Extensions

- Many extensions of this basic model exist, including
- Coupon bonds: The debt is not zero-coupon;  
- Stochastic interest rates: Interest rates follow one of the processes we have seen.  
- Early Bankruptcy: There is a lower bound  $V_{b}$  to assets so that if  $V(t) < V_{b}$  the firm is bankrupt.  
- Unobservable  $V(t)$ : Investors may only rely on accounting measures to estimate  $V(t)$ : The default barrier could be closer than you think.

# Relative Pricing of Junior and Senior Debt

- The Merton's model can be used also for relative pricing across different bond classes of the same issuer.  
- For example, suppose that a firm issues two bonds: one senior and one junior debt, with face value  $F_{J}$  and  $F_{S}$ .  
- At maturity, we have the following payoff

Table 1: Payoffs  

<table><tr><td></td><td>0 &lt; VT &lt; FS</td><td>FS &lt; VT &lt; FS + FJ</td><td>FS + FJ &lt; VT</td></tr><tr><td>Senior</td><td>VT</td><td>FS</td><td>FS</td></tr><tr><td>Junior</td><td>0</td><td>VT - FS</td><td>FJ</td></tr><tr><td>Equity</td><td>0</td><td>0</td><td>VT - (FS + FJ)</td></tr></table>

# Relative Pricing of Junior and Senior Debt

- That is, senior and junior debt and equity must satisfy

$$
\mathrm {P a y o f f o f S e n i o r D e b t} = V - \max (V - F _ {S}, 0)
$$

$$
\mathrm {P a y o f f o r m e d} \mathrm {J u n i o r D e b t} = \max (V - F _ {S}, 0) - \max (V - (F _ {S} + F _ {J}), 0)
$$

$$
\mathrm {P a y o f f E q u i t y} = \max (V - (F _ {S} + F _ {J}), 0)
$$

- We have then have

$$
D _ {S, 0} = V - B S C (V, F _ {S}, r, T, \sigma)
$$

$$
D _ {J, 0} = B S C (V, F _ {S}, r, T, \sigma) - B S C (V, F _ {S} + F _ {J}, r, T, \sigma)
$$

$$
E _ {0} = B S C (V, F _ {S} + F _ {J}, r, T, \sigma)
$$

- Next Figure plots  $D_{J,0}$  and  $D_{S,0}$  when  $F_{S} = F_{J} = 100$ .

# Relative Pricing of Junior and Senior Debt

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/aaeadea1c86fc0c50cf211c93232e15f29447bcc22ed3ea3e812fc2fdccffa70.jpg)  
The Value of Senior and Junior Debt  
Value of Senior and Junior Debt

- Given these relationships, we can also look at the relationship between  $D_{J,0}$  and  $D_{S,0}$

# Relative Pricing of Junior and Senior Debt

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/ea332b460712f468cb6926ff618401866104da736e2edbd6cfbc663056eb554c.jpg)  
Junior vs. Senior Debt

- This gives a measure of how Senior and Junior debt should be related.  
- It could help spotting misalignments of the two debt values.

# Warrants

- Warrants are options issued by the firm on its own stock
- The holder of the warrant has the right, but not the obligation, to purchase a given number  $m$  of shares from the firm at the given strike price  $K$  at maturity  $T$ .
- The firm may issue new shares to make whole to the warrant holder, which generates a dilution effect on the total value of equity, as the firm is selling shares at a lower value than they are worth.  
- Example: Consider a whole equity firm with  $n$  shares outstanding, and total value of assets equal to  $V$ .
- If the warrant-holders exercise the warrant, they pay  $K$  per share and receive  $m$  shares.  
- After the exercise of the warrant, the firm's assets are  $V_{T} + m \times K$ .  
- Therefore, the exercised warrants are worth

$$
\mathrm {V a l u e o f 1 S h a r e a f t e r E x e r c i s e -} K = \frac {V _ {T} + m \times K}{n + m} - K = \frac {n}{n + m} \left(\frac {V _ {T}}{n} - K\right)
$$

- The term  $V_{T} / n$  is the value of one share without the warrants. The term  $n / (n + m)$  is called "dilution adjustment".
- Thus:

$$
\text {V a l u e o f w a r r a n t s} = \frac {n}{n + m} B S C \left(\frac {V _ {0}}{n}, K, r, \sigma , T\right)
$$

# Bond and Equity Holders' Conflicts of Interest

- The Merton's model is at the basis of the agency theory of the firm, in which there is a natural conflict between equity holders and debt holders.

# 1. Volatility

- Equity holders are long a call option  $\Longrightarrow$  They like volatility and thus risky projects.  
- Bond holders are short the call option  $\Longrightarrow$  They dislike volatility.

# 2. Dividends

- Equity holders are long a call option  $\Longrightarrow$  They like dividend payments

* The decrease in value of equity is less than the dollar amount received in dividends.  
 * Intuition: The Delta of equity is less than 1, Δ = N(d₁) < 1, ⇒ $1 dollar decrease in assets V implies less than $1 decrease in equity.

- Example: A firm has V = $10bil, F = $10bil, T = 5, r = 2%, σ = 10%. Then E0 = $1.4066 bil.

* If the firm makes a cash dividend payment of $ 1 bil ⇒ V = 9 ⇒ E0 = 0.7794 ⇒ Equity lost 0.6272 bil in equity value, but got the 1 bil cash.  
* Where is this money coming from?

- The value of bonds must have gone down by the same amount  $\Longrightarrow$  Bondholders dislike dividend payments.

# Bond and Equity Holders' Conflicts of Interest

- $\Longrightarrow$  If there are monitoring costs to check what equityholders do, bondholders require a higher premium because they take into account the incentive of equityholders to maximize their value. - Unusual dividend payments can be taken care through bond covenants. But the choice of risky/safe projects is harder.

# Leveraged Firms and Debt Overhang

- During crisis periods, such as the 2007/08 crisis, it is hard for firms to raise new equity capital.  
Why?

- For highly levered firms, injecting capital into the firm implies a direct transfer of value from equity holders to debt holders.  
- This effect is called "debt overhang"
- Example: A firm has  $V = 9$  bil,  $F = 10$  bil,  $T = 5$  years,  $\sigma = .1$ ,  $r = .02$ .

$$
- \Longrightarrow E _ {0} = \$ 0. 7 7 9 3 \mathrm {a n d} D _ {0} = 8. 2 2 0 6.
$$

- Suppose the firm issue shares and raises $1 bil in cash.
- The value of assets is now  $V = 10$  bil. Given that the face value of debt did not change, what is the value of equity and debt?

$$
* \Longrightarrow E _ {0} = 1. 4 0 6 6 \mathrm {a n d} D _ {0} = 8. 5 9 3 3 7.
$$

* Equity increased by only $0.6272 billion but they put $1 billion.  
* The value of bonds increased by $0.3728

- Of course, the intuition is the same as for dividend cash payments: The Delta of the option is less than 1.

# Credit Risk Measurement: KMV

- How can we compute the probability of default of a particular bond or entity?  
- Credit rating agencies provide credit rating to bonds, which provide (their) assessment of their probability of default.
- For instance, the following table is from Standard and Poor. This is called the transition matrix

<table><tr><td>Initial Rating</td><td colspan="8">Rating at the end of the year</td></tr><tr><td></td><td>AAA</td><td>AA</td><td>A</td><td>BBB</td><td>BB</td><td>B</td><td>CCC</td><td>D</td></tr><tr><td>AAA</td><td>0.8910</td><td>0.0963</td><td>0.0078</td><td>0.0019</td><td>0.0030</td><td>0.0000</td><td>0.0000</td><td>0.0000</td></tr><tr><td>AA</td><td>0.0086</td><td>0.9010</td><td>0.0747</td><td>0.0099</td><td>0.0029</td><td>0.0029</td><td>0.0000</td><td>0.0000</td></tr><tr><td>A</td><td>0.0009</td><td>0.0291</td><td>0.8894</td><td>0.0649</td><td>0.0101</td><td>0.0045</td><td>0.0000</td><td>0.0009</td></tr><tr><td>BBB</td><td>0.0006</td><td>0.0043</td><td>0.0656</td><td>0.8427</td><td>0.0644</td><td>0.0160</td><td>0.0018</td><td>0.0045</td></tr><tr><td>BB</td><td>0.0004</td><td>0.0022</td><td>0.0079</td><td>0.0719</td><td>0.7764</td><td>0.1043</td><td>0.0127</td><td>0.0241</td></tr><tr><td>B</td><td>0.0000</td><td>0.0019</td><td>0.0031</td><td>0.0066</td><td>0.0517</td><td>0.8246</td><td>0.0435</td><td>0.0685</td></tr><tr><td>CCC</td><td>0.0000</td><td>0.0000</td><td>0.0116</td><td>0.0116</td><td>0.0203</td><td>0.0754</td><td>0.6493</td><td>0.2319</td></tr></table>

- For instance, a BBB rated company has a probability .06% to move to AAA, .43% to AA, 6.5% to A, 84.27% to remain at BBB, 6% to move to BB, etc.

# Credit Risk Measurement: KMV

- KMV argues that credit ratings did not tell the whole story (they said so way before the crisis).
  - e.g. Bonds in the same credit rating class show different probabilities of default  
- They use Merton's model to compute the probabilities of default:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/4f9e30bdf395ddba0cd32cec81eeb76ae1990f4ba725869e447a067ca90eaa41.jpg)  
Fig. 7. Distribution of the firm's assets value at maturity of the debt obligation.

(Figure from Choi, Galai, and Mark, "A comparative analysis of current credit risk models", Journal of Banking and Finance, 2000)

# Credit Risk Measurement: KMV

- More specifically, they obtain

$$
\mathrm {E x p e c t e d D e f a u l t F r e q u e n c y (E D F)} = p _ {T} = \operatorname * {P r} \left[ V _ {T} <   F | V _ {0} \right] = N (- d _ {2})
$$

$$
\mathrm {D i s t a n c e t o D e f a u l t (D D)} = d _ {2} = \frac {\ln \left(\frac {V _ {0}}{F}\right) + (\mu - \sigma^ {2} / 2) T}{\sigma \sqrt {T}}
$$

What are the unknowns?

1. $V_{0}$ : as book values of assets are unreliable;  
2. $\sigma$ : the volatility of assets  
3. $F$ : The default point.

- They find empirically that  $F =$  Short Term Debt + 1/2 Long Term Debt works well.

# Credit Risk Measurement: KMV

- The last two items are  $V_{0}$  and  $\sigma$ .  
- What can we observe about a firm?
- The market value of equity;  
- The volatility of equity.
- From the Black Scholes formula for equity we obtained earlier

$$
E _ {0} = \mathrm {C a l l} (V _ {0}, K, T, r, \delta , \sigma) = N (d _ {1}) V _ {0} - K e ^ {- r (T - t)} N (d _ {2})
$$

- Note that here we may use a different  $K$ , as the horizon is different.  
- From here, we can also compute the volatility of equity

$$
\sigma_ {E} = N \left(d _ {1}\right) \left(\frac {V _ {0}}{E _ {0}}\right) \sigma
$$

- Therefore, we set

$$
E _ {0} = \mathrm {M a r k e t V a l u e o f E q u i t y}; \quad \sigma_ {E} = \mathrm {V o l a t i l i t y o f E q u i t y}
$$

- We solve two equations in the two unknown  $V_{0}$  and  $\sigma$ .

# Credit Risk Measurement: KMV

- Simple Example (KMV model is much more elaborate):
- Enron market capitalization on May 30 1989 was 2.260 bil (from CRSP).  
- The book value of debt  $= 3.249$  bil (prospectus).  
- Volatility of equity return  $= 20\%$ .  
- The nominal one year interest rate was  $8.6\%$  (continuously compounded).  
- Assume  $T = 8$  years (long term debt).
- Next two figures plot the value of equity and volatility of equity implied by the Merton model for various levels of current assets  $V_{0}$  and volatility  $\sigma$

# Credit Risk Measurement: KMV

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/8250e683a18e5b51721450cc5c6e148c49a2d9bc7821f223cf79a6e4638aca95.jpg)  
Enron Corp Returns and Volatility

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/c723e7143337aca22547a3dd40bdcff8c2c7b84799429106dab81e2031905d11.jpg)

# Credit Risk Measurement: KMV

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/a0c6a343c88f2bc641bb4dd46f16578bfb9646d44139e69c6f91cfd5417c2b00.jpg)  
Model implied value of equity

- The plot shows a combination of  $V_{0}$  and  $\sigma$  that equates the model equity value to the market equity capitalization of 2.26 bil.

# Credit Risk Measurement: KMV

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/1e5169d71b10efbd0f99538b4d9fe82d21d63bb5be348dc3d68ee7203c6212e9.jpg)  
Model implied volatility of equity

- We therefore find  $V_{0} = 3.84$  bil and  $\sigma = 12\%$ .  
- We finally use these quantities to compute the distance to default and the expected frequency of default.

* We need one more input: the growth rate of assets  $\mu$ .  
* This must be forecasted from fundamentals. Assume  $\mu = 15\%$ . We find:

$$
d _ {2} = 2. 6 9 \quad \mathrm {a n d} \quad p _ {T} = 3 6 \mathrm {b p}
$$

# Credit Risk Measurement: KMV

- According to the transition table at the end of the case, a BBB company has 45 bp chance of defaulting.  
- KMV argues that the normal distribution is imperfect, especially because of the thin tails.  
- So, they define a new map from distance to default and expected default frequency, which is estimated from data.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/b660265ec5b9b653741c584fafbd5a2d14e8a0174d2d5b3549e6560f88329d0a.jpg)  
Figure 15: Distance to Default and Expected Default Frequency  
Fig. 17. Mapping of the "distance-to-default" into the "expected default frequencies", for a given time horizon.

- For  $d_{2} = 2.69$  it looks on target.

# The Credit Derivatives Market

- Credit derivatives are securities whose payoff depend on a "credit event"  
- The credit event could be "default," change in the credit rating of the issuer, or change in credit spreads.  
- The credit derivatives market skyrocketed in the 2000 - 2008 period.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/546adc2f5212dc18f5bcd280c440fc67bedac0c146591239c44f772f841c67e2.jpg)

Figure 1. Market breakdown by instrument type  
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/becc8b4ba20811e13736371fbc6610bf26572bdf1210a05859b598471a375546.jpg)  
Source: Risk Magazine 2003 Credit Derivatives Survey

Figure 2. Breakdown by end users  
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/5e14ad0559cd61e8bb5372db39c1d29dd6f13693466cdca66e64289ca5520a19.jpg)  
Source: Risk Magazine 2003 Credit Derivatives Survey.

# Credit Derivatives

- Definition of Default: Any non-compliance with the exact specification of a contract.  
- The contracts generally involve three parties:

1. The issuer of the underlying risky security (bond)  
2. The investor who bought the security and wants protection (protection buyer)  
3. A counterparty who is willing to sell protection (protection seller)

- The credit derivative exchange only involves the protection buyer and seller.  
- The original issuer is just "the reference entity" over which the credit derivative contract is determined.

# Single Name Credit Default Swap

Issuer  
↓  
issues defaultable asset P  
↓

Investor (protection buyer)

Investor pays bank a premium

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/266a53be23e2a4b4c3473c57589e94d5042f65126e5bf8aba8da113255eb68ed.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/107b013ff3d1533d44a804403c4cbe82eb71d01b2ad6bae2804ce2cd029b97bc.jpg)

Bank pays Investor if credit event

Bank (protection seller)

- Investor pays interest on a notional amount  $N$  to Bank until maturity  $T$  or the default of the issuer (reference entity);  
- In case of default, Bank pays Investor the notional amount  $N$  in exchange of the physical delivery of the underlying asset.
- If cash settled, bank pays investor the net loss (=notional minus value of defaulted bond).
- This is by far the most popular credit derivative. It is essentially an insurance contract.

# Single Name Credit Default Swap

- Example:
- It is 2008 and an investor holds $10 mm of 5-year bonds from Lehman Brothers.  
- Given recent events, the investor is now worried about Lehman defaulting on its obligations.  
- Two strategies:

1. Sell out the position

* Problem: Low liquidity and high transaction costs.

2. Enter into a CDS with, say, AIG Financial Products, to obtain insurance against Lehman defaulting.

* This solution is cheaper, and easier to perform.  
* It is the equivalent for credit markets to the now standard interest rate swaps that corporations use to manage assets and liabilities.
* Assume CDS spread is 400bp, then investor pays AIG  $10 \times .04 \times .25 = \$ 100,000$ each quarter until default  
* If default occurs, AIG FP pays $10 mm in exchange of the defaulted bond (physical delivery).  
* If it is cash settled, dealer quotes for recovery rate are obtained, and Lehman pays "notional minus recovery."

# CDS Spread: Lehman and Bear Stearns

- The CDS spread capture important information about the likelihood of survival of individual companies.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/a5f5d2c5b7e7155d8a23e034fd71da64bb00434647bec1bc90f68a6076ce06ba.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/715e094aa6fdf9441448020b9f305762a6b5c6364e42287e0e8d338cadac141f.jpg)  
CDS Spread: Italy, Greece, and USA

# The Credit Default Swap Spread

- In principle, the credit default swap spread should coincide with the credit spread of the underlying bond.
- For instance, with the credit spread formula in Merton's model discussed earlier:

$$
\mathrm {C r e d i t S p r e a d} = y - r = - \frac {1}{T} l o g \left[ 1 - e ^ {r \times T} P u t \left(\frac {V _ {0}}{F}, 1, r, T, \sigma\right) \right]
$$

- However, traders do not use this formula, for a number of reasons:
- The bonds underlying CDS are not zero coupon, and so we have to adjust for coupon payments of the underlying bonds.  
- The default could occur earlier than maturity  $T$ , and therefore

* [A] The insurance buyer stops making quarterly payments to insurance seller.  
* [B] We have to compute the probability of getting the notional back whenever default occurs.

- These items generate some additional complications, that more complicated models take into account.

# Financial Instruments Observations about CDS

John Heaton

The University of Chicago

Booth School of Business

# Types of CDS, Quantities

# Types

- Single-name CDS: single reference entity such as a corporation or sovereign  
- Multi-name CDS: cover defaults in a reference portfolio such as a basic credit default swap or a CDS index (typically an index of commonly negotiated single-name CDS)

# Quantities:

- From BIS (2021): $8.5 trillion notional at end of 2020. 1.5% of notional of all global derivatives.  
GFC likely reduced size we see even today  
- $62\%$  now with central counterparties that act like exchanges.  
- Increased size of sovereign CDS since GFC:  $4\%$  of total notional in 2007 to  $14\%$  in 2020.

# CDS Market

From Bomfim (2022), "Credit Default Swaps," Finance and Economics Discussion Series, Federal Reserve

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/8bb7b44e716b0bfa99e19582bd0c40b377e816c22ac2cd46b66ae880214a137e.jpg)  
Source: Bank for International Settlements (2021) and author's calculations.  
Note: "End Users" refers to non-dealer end users.  
List of abbreviations used in Figure 1:  
Other MN: Other multi-name CDS (non-index product)  
Spec purp: Special-purpose vehicle, special-purpose corporation, or special-purpose entity  
Sec prod: Securitized products  
Ref Entity: Reference Entity

# Sovereign Crises

- Italy:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/b706aad37c91dd3686743b5a00957c8cb55a00ea24c70ba68efa2344949ff5f9.jpg)  
Figure 2: SOVEREIGN CDS CURVE, ITALY

- Russia: 10-year CDS:  $2.54\%$  on 1/31/2022 to  $4.04\%$  on 02/28/2022. Spike for 5-year CDS:  $8.94\%$  on 2/24/2022.

# CDS Indexes

A nice discussion of indexes is here.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/16cefcde3716b3be985ef1b6968f517121d0c1ee3855ac2a0b1e81ff406a1f26.jpg)  
Source: His Markit

# Financial Instruments

# Interest Rate Derivatives

John Heaton

The University of Chicago

Booth School of Business

1. Interest rate FRA and Swaps  
2. Black's model for interest rate derivatives  
3. Interest Rate Trees

3.1 Interest Rate Trees versus Stock Trees  
3.2 Risk Neutral Pricing on Trees  
3.3 A 3-Period Bond

4. The Ho Lee Model

4.1 Risk Neutral Trees  
4.2 Calibration of Ho Lee Model

4. Using Risk Neutral Trees

4.1 Callable Bonds

# The Growth in Interest Rate Derivatives

# The Notional Amount of Over-the-Counter Derivatives

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/713dd77afed0ea5d5c8531f7c446037a61d384b950ebb1eccbd333be2534a062.jpg)  
Panel A. Millions of US Dollars

Panel B. Multiple of Global GDP  
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/42771355659f8ed8e0ba3cdad5e306edd6a3badf882a258e995a4ac13dc7d9ba.jpg)  
(Data Source: OTC derivatives data are from the Bank for International Settlements, while global GDP data are from the World Bank.)

# Forward Rate Agreements

- A Forward Rate Agreement (FRA) is an agreement between two counterparties A and B according to which at maturity  $T$
- Counterparty A makes a payment to B equal to  $N \times F \times \Delta$ , where  $N$  is the notional,  $\Delta$  the compounding frequency, and  $F$  is a fixed rate decided at time 0;  
- Counterparty B makes a payment to A equal to  $N \times R(T_0, T) \times \Delta$ , where  $T_0 = T - \Delta$ .
- The reference floating rate  $R$  is typically the LIBOR rate. The forward rate  $F$  is determined at time 0 so that the value of the FRA is zero.  
- What is the value of this net cash flow at time 0 for given  $F$ ?  
- Assume we have available the values of zero coupon bonds  $Z(0, T_0)$  and  $Z(0, T)$ .  
- The Net Cash flow to counterparty A is

$$
\begin{array}{l} \mathrm {N e t C a s h F l o w a t} T = N \times \Delta \times (F - R (T _ {0}, T)) \\ = N \times (1 + F \times \Delta) \qquad (\mathrm {F i x e d L e g}) \\ - N \times (1 + R (T _ {0}, T) \times \Delta) \qquad \mathrm {(F l o a t i n g L e g)} \\ \end{array}
$$

- We compute the value of the FRA by computing the value of each leg.

# Forward Rate Agreements

- Present value of fixed leg. This can be computed immediately:

$$
\mathrm {V a l u e o f F i x e d L e g} = Z (0, T) \times N \times (1 + F \times \Delta)
$$

- Present value of floating leg. This must be computed in two steps

1. Compute the value of cash flow  $N \times R(T_0, T)$  as of time  $T_0$ . Note that at that time we will know the rate  $R(T_0, T)$

$$
\mathrm {V a l u e o f F l o a t i n g L e g a t} T _ {0} = \frac {\mathrm {C a s h F l o w a t} T}{1 \mathrm {p e r i o d d i s c o u n t}} = N \times \frac {(1 + R (T _ {0} , T) \times \Delta)}{(1 + R (T _ {0} , T) \times \Delta)} = N
$$

2. Obtain the value of Floating Leg at 0

$$
\mathrm {V a l u e o f F l o a t i n g L e g a t} 0 = Z (0, T _ {0}) \times N
$$

- Therefore, the value of the FRA is

$$
V = N \times [ Z (0, T) \times (1 + F \times \Delta) - Z (0, T _ {0}) ] = N \times Z (0, T) \times \left[ (1 + F \times \Delta) - \frac {Z (0 , T _ {0})}{Z (0 , T)} \right]
$$

- The forward rate  $F$  makes this quantity equal to zero

$$
1 + F \times \Delta = \frac {Z (0 , T _ {0})}{Z (0 , T)} \Longrightarrow F = \frac {1}{\Delta} \left(\frac {Z (0 , T _ {0})}{Z (0 , T)} - 1\right)
$$

# Forward Rate Agreement: Example

- It is November 1, 2022. A firm has a receivable of $100 million in six months (T₁ = 0.5), and wishes to park this money for an additional six months (until T₂ = 1), when it will need to use it for some capital expenditure.  
- The firm is worried that the six-month rate will decline at  $T_{1}$  and thus wants to lock-in a six-month rate today.  
- To hedge, the firm can enter into a six-month FRA with a bank for the period  $T_{1}$  to  $T_{2}$ , and notional  $N = \$ 100$ million.
- Today the bank agrees to pay in one year ( $T_{2} = 1$ ) the amount  $\frac{N}{2} \times F(0, .5, 1)$ ;  
- The firm agrees to pay on the same day the amount  $\frac{N}{2} \times R(0.5, 1)$ .
- That is, they exchange the payment at  $T_{2} = 1$

$$
\text {N e t} T _ {2} = \frac {N}{2} \times [ F (0., 5, 1) - R (0. 5, 1) ] \tag {1}
$$

What is the forward rate?

- On November 1, 2022, the value of 6-months Treasury bills is \(Z(0,0.5) = \\)97.728\( and the value of 1-year Treasury bills is \)Z(0,1) = \$95.713\(. Thus:

$$
F(0,0.5,1) = 2\times \left(\frac{Z(0,0.5)}{Z(0,1)} -1\right) = 4.21\%.
$$

# Forward Rate Agreement: Example

- Why does the FRA solves the hedging problem of the firm?  
- Because at  $T_{1} = 0.5$ , when the firm receives its $100 million receivable, it can simply invest it at the market rate  $R(0.5, 1)$ .  
- Then, at  $T_{2} = 1$ , the firm receives the payoff from the investment, plus the net payment from the FRA. In total:

$$
\begin{array}{l} \begin{array}{r l} \frac {\mathrm {T o t a l a m o u n t}}{\mathrm {a t} T _ {2}} & = \left\{\$ 1 0 0 \mathrm {m i l l i o n} \times \left[ 1 + \frac {R (0 . 5 , 1)}{2} \right] \right\} \quad (\mathrm {R e t u r n o n i n v e s t m e n t}) \end{array} \\ \left. + \left\{\frac {N}{2} \times [ F (0,. 5, 1) - R (0. 5, 1) ] \right\} \quad \mathrm {(F R A p a y m e n t)} \right. \\ = \$ 100 \text {m i l l i o n} \times \left[ 1 + \frac {F (0 , . 5 , 1)}{2} \right] \\ = \$ 102.105 \text {m i l l i o n} \\ \end{array}
$$

- That is, the firm locked in the forward rate  $F(0,.5,1) = 4.21\%$

# Interest Rate Swaps

- An interest rate swap is an agreement between two counterparties, according to which at dates  $T_{1}, T_{2}, \ldots, T_{n}$ , with  $T_{i} = T_{i - 1} + \Delta$ , the counterparties exchange the net cash flows

$$
\mathrm {S w a p N e t C a s h F l o w a t} T _ {i} = N \times \Delta \times (K - R (T _ {i - 1}, T _ {i}))
$$

- The swap rate  $K$  is chosen to make the value of the swap equal to zero at time 0.  
What is the value of the swap at 0?

- Clearly, this specific cash flow is the same we had earlier for a FRA, and therefore

$$
\begin{array}{l} \mathrm {P V o f C a s h F l o w a t} T _ {i} = N \times Z (0, T _ {i}) \times \left[ (1 + K \times \Delta) - \frac {Z (0 , T _ {i - 1})}{Z (0 , T _ {i})} \right] \\ = N \times Z (0, T _ {i}) \times [ (1 + K \times \Delta) - (1 + F (0, T _ {i - 1}, T _ {i}) \Delta) ] \\ = N \times \Delta \times Z (0, T _ {i}) [ K - F (0, T _ {i - 1}, T _ {i}) ] \\ \end{array}
$$

- where we denote  $F(0, T_{i - 1}, T_i)$  the forward rate at time 0 for a FRA between  $T_{i - 1}$  and  $T_i$ .

# Interest Rate Swaps

- It follows that for given  $K$ , the value of the swap is the sum of these values

$$
\mathrm {V a l u e o f S w a p} = N \times \Delta \times \sum_ {i = 1} ^ {n} Z (0, T _ {i}) \times [ K - F (0, T _ {i - 1}, T _ {i}) ]
$$

- The swap rate is then the  $K$  that makes the value of the swap equal to zero

$$
\sum_ {i = 1} ^ {n} Z (0, T _ {i}) \times [ K - F (0, T _ {i - 1}, T _ {i}) ] = 0 \Longrightarrow K = \sum_ {i = 1} ^ {n} w _ {i} \times F (0, T _ {i - 1}, T _ {i})
$$

- where

$$
w _ {i} = \frac {Z (0 , T _ {i})}{\sum_ {i = 1} ^ {n} Z (0 , T _ {i})}
$$

- The swap rate is a weighted average of forward rates.  
- This is very similar to our findings in Teaching Notes 2.

# Interest Rate Swap Example

- Today is November 1, 2022. A firm has receivables of $5.5 million every six months for the next 5 years.  
- The firm has also a 5-year, semi-annual,  $200 \mathrm{~m}$  floating rate debt outstanding, with floating rate LIBOR + 4 bps.  
- How can the firm use the receivables to service the coupons on the debt?
- A solution is to enter into a fixed-for-floating swap with an investment bank.  
- On November 1, 2022, the swap rate for a 5-year fixed-for-floating swap was quoted at  $K = 5.46\%$ .  
- So, the net cash flow to the firm from the swap contract is

Net cash flow to the firm at \(T_{i} = \\) 200\( million \(\times\) 0.5 \(\times\) \([R(T_{i - 1},T_i) - 5.46\% ]\)

- Why does this swap resolve the problem?

# Interest Rate Swap Example

time  $T_{i}$

# RECEIVABLE

\$5.5 m

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/cdc763f5d3e18683f19a1b553d6af7a50d3c396a8b3848a79d9c18b1afa5003e.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/8fcf65586a58685113ce93e4ac96f2c5f8fd5e53bf104af43202977282b58721.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/eef158c7fd9253dc8d954f7f687694edb68de7877a34e8489fb4f8aaef5a00ec.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/d7898a1c753088cb4405e7c7624d128567cf5a709d3a62e3cb739cb0bc1dadc5.jpg)

MARKET

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/4e6179f5976c1a6838c76d9a7bbbc8dc94f19cd71d24a0701945899d85eaaaea.jpg)

FIRM

Swap: fixed leg

$$
\frac {\mathrm {~$ 200 m}}{2} \times 5.46 \%
$$

$$
\Rightarrow \Rightarrow \Rightarrow
$$

$$
\Longleftarrow \quad \Longleftarrow \quad \Longleftarrow
$$

Swap: floating leg

$$
\frac {\mathrm {s g m a l} 2 0 0 \mathrm {m}}{2} \times R (T _ {i - 1}, T _ {i})
$$

SWAP

DEALER

Floating rate bond

$$
\frac {\$ 2 0 0 \mathrm {m}}{2} \times (R (T _ {i - 1}, T _ {i}) + 4 b p s)
$$

Net Flow  $= 0$

- One of the main reasons for the massive increase in the size of the swap market is its flexibility for cash flow management and risk management.

# Issues with LIBOR

- Until January 31, 2014: British Bankers Association (BBA) LIBOR
- Survey of a panel of banks  
- Banks could underestimate their borrowing costs  
- Conflict within the bank: impact of LIBOR setting on derivatives trading.
- Now ICE LIBOR
- ICE now the benchmark administrator  
- Regulator in UK: Financial Conduct Authority (FCA)  
- Rules for fall-back rates if there are issues

# Alternatives

- SOFR: "Secured Overnight Financing Rate"  
- ARRC: Alternative Reference Rates Committee.  
- Others:
- SONIA (Sterling Over Night Indexed Average)  
- EONIA (Euro Overnight Index Average)  
- TONAR (Tokyo Overnight Average Rate)  
- SARON (Swiss Average Rate Over-Night)  
- Measure of overnight secured borrowing.  
- Collateralized US Treasuries in the repo market.  
- Very liquid and likely resilient markets: $1 trillion in daily volume  
- Contrast: USD LIBOR three-month tenor: about $1 billion  
- Published by New York Fed. Along with 30-day, 90-day and 180-day averages

# Transition

- LIBOR market: $200+ trillion of financial transactions contracts reference LIBOR  
- Transition was set for end of 2021, but now 18 month extension  
- LIBOR permeates many contracts for in securities markets and the corporate world: leases, debt, …  
- Derivatives market with Central Clearing Partners (e.g. CME …).
- Cleared US Dollar interest rate swap contracts at CME: move to SOFR discounting.  
- Intercontinental Exchange (ICE) Benchmark Administration: USD LIBOR benchmarks will stop June 30, 2023
- Fannie and Freddie: have moved bo SOFR contracts  
- New York Fed: conducts repo and reverse repo through tri-party repo.  
- OTC SOFR swaps  
- SOFR caps products have developed since September 2020

# SOFR Derivatives

As an example: at the CME

- Futures: 3-month and 1-month. Using compounding or simple averages.  
- Term SOFR Reference rates based on futures contracts.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/956c2c09aa028a5fc90e9f3d847c70bde5af9289001bf5b4fc02f2f011f7f0d2.jpg)  
Some History

# Overnight Index Swaps (Is)

- In a Is, the two counterparties agree to exchange fixed for floating payments, where the floating payment is tied to the cumulative return from an overnight rate  
- Federal funds rate, SOFR in US. Europe: short-term rate (€STR), (formerly Euro OverNight Index Average (EONIA) rate).  
- Given a notional  $N$ , the floating rate payment at time  $T_{i}$  is

$$
C F (T _ {i}) = N \left(\prod_ {j = 1} ^ {n _ {j}} \left(1 + r _ {t _ {j}} \delta\right) - 1\right) \tag {2}
$$

- where  $\delta$  is the daily interval,  $r_t$  is the reference (annualized) overnight rate, and  $n_j$  is the number of days between reset periods.  
- The day count convention is normally Actual/360.  
- In the continuous time limit  $(\delta \to 0)$ , we have that

$$
C F \left(T _ {i}\right) = N \left(e ^ {\int_ {T _ {i - 1}} ^ {T _ {i}} r (u) d u} - 1\right) \tag {3}
$$

- Is with maturity less than 1 year have only one payment at the maturity.  
- Is with longer maturities have normally quarterly payments.

# What is the value of Is?

- The value of Is is the difference between the floating leg and the fixed leg:

$$
V _ {t} ^ {O I S} = V _ {t} ^ {F l o a t i n g} - V _ {t} ^ {F i x e d} \tag {4}
$$

- Floating Leg: At reset dates, and assuming the payment of a principal at maturity of the swap, the value of the floating leg is par.
- Indeed, investing the notional  $N$  in the overnight index daily gives at  $T_{i}$

$$
N \prod_ {j = 1} ^ {n _ {j}} \left(1 + r _ {t _ {j}} \Delta\right) = C F \left(T _ {i}\right) + N
$$

- $\Longrightarrow$  we can replicate the floating payments, plus a residual of notional at maturity  $T_{i}$ , with an investment  $N$  at time 0.
- It follows

$$
V _ {0} ^ {F l o a t i n g} = N
$$

- Fixed leg: Given a proper discount function  $Z^{OIS}(0,T_i)$ , we obtain

$$
V _ {0} ^ {F i x e d} = N c \Delta \sum_ {i = 1} ^ {n} Z ^ {O I S} (0, T _ {i}) + N Z ^ {O I S} (0, T _ {n}) \tag {5}
$$

- The value of the contract at inception is zero,  $V_{0}^{OIS} = 0$ .  
- It follows from (4) then that

$$
V _ {0} ^ {O I S} = V _ {0} ^ {F l o a t i n g} - V _ {0} ^ {F i x e d} = 0 \tag {6}
$$

- This equation implies that the swap rate  $c$  can be computed from

$$
1 = c \Delta \sum_ {i = 1} ^ {n} Z ^ {O I S} \left(0, T _ {i}\right) + Z ^ {O I S} \left(0, T _ {n}\right) \tag {7}
$$

- which gives

$$
c (T _ {n}) = \frac {1}{\Delta} \frac {1 - Z ^ {O I S} (0 , T _ {n})}{\Sigma_ {i = 1} ^ {n} Z ^ {O I S} (0 , T _ {i})} \tag {8}
$$

- where we now emphasize that the coupon rate  $c$  is for a swap with maturity  $T_{n}$ , and thus write  $c(T_{n})$ .

# Is Discount Curve

- Given the Is coupon rates  $c\left( {T}_{i}\right)$  for every maturity  ${T}_{i}$  ,we can bootstrap the Is zero-coupon curve from (6).  
- We obtain the relation:

$$
Z ^ {O I S} \left(0, T _ {i}\right) = \frac {1 - c \left(T _ {i}\right) \Delta \sum_ {j = 1} ^ {i - 1} Z ^ {O I S} \left(0 , T _ {j}\right)}{1 + c \left(T _ {i}\right) \Delta} \tag {9}
$$

- recalling, however, that Is with maturity less than or equal to 1 year generally have only one payment.  
- Next Figure shows an example of bootstrapping from Is quotes, on January 2, 2009. Panel A reports the original Is quotes from Bloomberg. Panel B uses the quotes from Panel A along with bootstrap methodology (9) and defines the Is discount function  $Z^{OIS}(0,T)$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/85cf823ed2c8911c20744cf1a48fb9a227e7449147f6a45517ea1bc7a09349e7.jpg)  
Is Discount Curve on January 2th, 2009

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/540d6f1944fafaec83b027814d7dabc488a09873bcc821d71c16036bfce027e6.jpg)  
Data Source: Bloomberg

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/588051703b5e2c1c02f7b4f877800daf252b518d3946f18c4d5eba1688b5c5e4.jpg)  
Is and LIBOR Discount Curve on January 2nd, 2007

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/64debf7d71258cb823639782218c429ea237772146d37943aa3934f895467949.jpg)  
Data Source: Bloomberg

- However, if we try after the crisis, we obtain the following figure:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/00c87d0029616751e36519c530913ccf34d037822ac928796623c158f393d1ca.jpg)  
Is and LIBOR Discount Curve on January 2nd, 2009  
Panel A. Is and LIBOR Zero Coupon Curve

Panel B. Is and LIBOR Zero Curve  
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/a28866b9492cbc828df5acbce2def91eda8dbacfcaef7f238061140fec9fbfb5.jpg)  
Data Source: Bloomberg

- which are quite different.

# Interest Rate Options

- The market for plain vanilla interest rate options is very large.  
These include

- Treasury bond options: Options to purchase a Treasury bond  
- Swaptions: Options to enter into a swap at a given strike (swap) rate.

* Receiver Swaptions: Options to enter into a swap and receive the strike swap rate;  
* Payer Swaptions: Options to enter into a swap and pay the strike swap rate.

- Caps and Floors: Securities that pay when rates go up (Caps) or down (Floors). Their cash flows are given by

$$
\mathrm {C a p C F a t} T _ {i} = N \times \Delta \times \max (R (T _ {i - 1}, T _ {i}) - K, 0);
$$

$$
\mathrm {F l o o r C F a t} T _ {i} = N \times \Delta \times \max (K - R (T _ {i - 1}, T _ {i}), 0)
$$

* Popular derivative instruments to insure agains increases or decreases in interest rates  
* For instance, caps typically accompany floating rate bond issuance.

- Caption and Floortion: Options to enter into a cap or a floor.

# The Black's Formula for Interest Rate options

- The assumptions of Black and Scholes do not apply to interest rate options

1. The Black-Scholes model assumes a constant interest rate, while we are trying to price risk on interest rates;  
2. The Black-Scholes model assumes constant volatility, but if the underlying is e.g. a T-Bond, the volatility depends on duration and thus it is declining with time.

- Even so, practitioners use the Black-Scholes formula to price a number of interest rate derivatives
- For long this has been thought to be at best an approximation of no arbitrage models, because of the violations to Black-Scholes formula's assumption described earlier  
- In recent times, it has been shown that the Black and Scholes formula can be derived by no-arbitrage principles under some assumptions.
- In what follow, we only look at one simple example.

# Example: The Black's formula to price caps

- The Cap pays the sequence of cash flows

$$
\mathrm {C a p C F a t} T _ {i} = N \times \Delta \times \max \left(R (T _ {i - 1}, T _ {i}) - K, 0\right);
$$

- where  $\Delta = T_{i} - T_{i - 1}$ . Each payment is called a caplet.  
- The original Black's formula uses as underlying the futures price, which equals the forward price when interest rates are constant.  
- In the case of caplets, we use the forward rate directly, which is given by

$$
F (0, T _ {i - 1}, T _ {i}) = \frac {1}{\Delta} \left(\frac {Z (0 , T _ {i - 1})}{Z (0 , T _ {i})} - 1\right)
$$

- The model assumes that under the proper risk-adjusted probabilities, at time  $T_{i}$

$$
R (T _ {i - 1}, T _ {i}) = F (T _ {i - 1}, T _ {i - 1}, T _ {i}) \sim L o g N o r m a l
$$

with Variance  $[R(T_{i - 1},T_i)] = \sigma_F^2 T_{i - 1}$  

- Then, the Black formula (see Teaching Notes 5) has

$$
C a p l e t (T _ {i}) = Z (0, T _ {i}) \times [ F (0, T _ {i - 1}, T _ {i}) \times N (d _ {1}) - K \times N (d _ {2}) ]
$$

where

$$
d _ {1} = \frac {\log \left(\frac {F (0 , T _ {i - 1} , T _ {i})}{K}\right) + \frac {1}{2} \sigma_ {F} ^ {2} T _ {i - 1}}{\sigma_ {F} \sqrt {T _ {i - 1}}}; d _ {2} = d _ {1} - \sigma_ {F} \sqrt {T _ {i - 1}}
$$

# Example: The Black's formula to price caps

- Indeed, market participants quote caps and floors directly in terms of implied volatility. For instance, from Bloomberg we have

Table 1: Quotes of Caps and Swaptions on November 1, 2004  

<table><tr><td rowspan="2">Maturity</td><td rowspan="2">Swap Rates</td><td colspan="3">Swaption Vols</td><td colspan="2">Volatilities</td></tr><tr><td>3M</td><td>6M</td><td>1Y</td><td>Caps</td><td>Floors</td></tr><tr><td>1 Y</td><td>2.555</td><td>27.115</td><td>30.234</td><td>31.750</td><td>23.50</td><td>23.50</td></tr><tr><td>2 Y</td><td>2.932</td><td>32.210</td><td>32.327</td><td>31.258</td><td>29.89</td><td>29.89</td></tr><tr><td>3 Y</td><td>3.254</td><td>31.011</td><td>30.937</td><td>29.801</td><td>30.55</td><td>30.55</td></tr><tr><td>4 Y</td><td>3.520</td><td>29.901</td><td>29.622</td><td>28.491</td><td>29.86</td><td>29.86</td></tr><tr><td>5 Y</td><td>3.751</td><td>28.719</td><td>28.513</td><td>27.404</td><td>28.62</td><td>28.62</td></tr><tr><td>7 Y</td><td>4.118</td><td>25.337</td><td>25.332</td><td>24.711</td><td>26.48</td><td>26.48</td></tr><tr><td>10 Y</td><td>4.505</td><td>21.889</td><td>21.833</td><td>21.570</td><td>23.68</td><td>23.68</td></tr></table>

Source: Bloomberg.

- Each entry is a volatility quote for an "at-the-money" instrument, meaning that its strike rate (equal for all the caplets) is the swap rate with the same maturity of the cap.  
- The payment frequency of the underlying caps and floors is 3 months.  
- Since the first payment at horizon 3 months is known at time 0, it is practice to set this caplet equal to zero.

# Example: The Black's formula to price caps

- Example: Consider a 1-year, quarterly cap with strike rate  $r_{K} = 2.555\%$ , quoted at volatility  $\sigma_{F} = 23.5\%$ .  
- The current LIBOR discount curve is as follows

$$
Z (0, 0. 2 5) = 9 9. 4 5 8 0; Z (0, 0. 5) = 9 9. 8 5 1 0; Z (0, 0. 7 5) = 9 9. 1 8 9 9; Z (0, 1) = 9 7. 4 8 3 4.
$$

- From the LIBOR curve, we can compute the quarterly compounded forward rates:

$$
F(0,0.25,0.5) = 2.4562\%; F(0,0.5,0.75) = 2.6932\%; F(0,0.75,1) = 2.8987\%
$$

- Finally, from the quoted volatility  $\sigma_{F} = 23.5\%$ , we obtain the three relevant volatilities:

$$
\sigma_ {F} \times [ \sqrt {T _ {1}}, \sqrt {T _ {2}}, \sqrt {T _ {3}} ] = 23.5 \% \times [ \sqrt {0 . 2 5}, \sqrt {0 . 5}, \sqrt {0 . 7 5} ] = [ 1 1. 7 5 \%, 1 6. 6 2 \%, 2 0. 3 5 \% ].
$$

Using the formula for  $d_{1}$  and  $d_{2}$  we obtain

$$
d _ {1} (0. 5 0) = -. 0 2 7 7 0; d _ {2} (0. 5 0) = -. 0 3 9 4 5 \Longrightarrow \mathrm {C a p l e t} (0. 5 0) = 0. 0 1 8 4
$$

$$
d _ {1} (0. 7 5) = . 4 0 0 0; d _ {2} (0. 7 5) = . 2 3 2 8 \Longrightarrow \mathrm {C a p l e t} (0. 7 5) = 0. 0 6 1 7
$$

$$
d _ {1} (1) = . 7 2 1 8; d _ {2} (1) = . 5 1 8 3 \Longrightarrow \text {C a p l e t} (1) = 0. 1 0 5 7
$$

obtaning

$$
C a p (1 Y) = 0. 0 1 8 4 + 0. 0 6 1 7 + 0. 1 0 5 7 = 0. 1 8 5 9
$$

# The Time Series of Implied Volatility

- The quoted volatility of caps is strongly time varying, denoting time variation in uncertainty about changes in future interest rates.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/ff5f37e5a8e22b1bc0b8fe8624a98793be528bbabe8cb501d2d842c515801850.jpg)  
Source: Pietro Veronesi Fixed Income Securities, Wiley, 2010

# Interest Rate Trees

- We now develop the same arguments we used in TN 4, but for interest rates.  
- Let  $r_t =$  be the six-month, continuously compounded risk-free rate.  
- Let  $q = 1/2$  be the (true) probability to move up or down on the tree.
- The movement of the short-term interest rate is exogenous to investors.  
- E.g. the Federal Reserve sets the Fed Fund rate because of monetary policy issues.

$$
\begin{array}{l} i = 0 \\ i = 1 \\ i = 2 \\ t = 0 \\ t = 0. 5 \\ t = 1 \\ \end{array}
$$

$$
r _ {2, u u} = 0. 0 5 5 7
$$

$$
r _ {1, u} = 0. 0 3 8 7
$$

$$
\begin{array}{c} r _ {2, u d} \\ r _ {2, d u} \end{array} = 0. 0 2 7 9
$$

$$
\begin{array}{l} r _ {0} = 0. 0 1 6 8 \\ r _ {1, d} = 0. 0 0 7 4 \\ r _ {2, d d} = 0. 0 0 0 1 \\ \end{array}
$$

# Interest Rate Trees

- The expected rate in six and twelve months are

$$
E \left[ r _ {1} \right] = \frac {1}{2} r _ {1, u} + \frac {1}{2} r _ {1, d} = 0. 0 2 3 0 5
$$

$$
E \left[ r _ {2} \right] = \frac {1}{4} r _ {2, u u} + \frac {1}{2} r _ {2, u d} + \frac {1}{4} r _ {2, d d} = . 0 2 7 9
$$

- This tree naturally translates into a tree of one period (six months) zero coupon bonds.  
Let

$$
Z _ {i, j} (k)
$$

- be the value of a zero coupon bond at index time  $i$  (e.g.  $i = 1$ ), at node  $j$  (e.g.  $j = u, d \ldots$ ) and with maturity at index  $k$  (e.g.  $k = 2$ ).  
- For instance

$$
Z _ {0} (1) = \mathrm {Z e r o a t t i m e 0 t h a t m a t u r e s a t t i m e 1}
$$

$$
Z _ {1, u} (2) = \mathrm {Z e r o a t t i m e 1 i n n o d e} u p \mathrm {t h a t m a t u r e s a t t i m e 2}
$$

# Interest Rate Trees

- Recall that since steps are every 6 months:

$$
Z _ {i, j} (i + 1) = e ^ {- r _ {i, j} \frac {1}{2}}
$$

- We obtain

$$
\begin{array}{l} i = 0 \\ i = 1 \\ i = 2 \\ \end{array}
$$

$$
Z _ {2, u u} (3) = 0. 9 7 2 5
$$

$$
\boxed {Z _ {0} (1) = 0. 9 9 1 6}
$$

$$
\boxed {Z _ {1, u} (2) = 0. 9 8 0 8}
$$

$$
\boxed { \begin{array}{c} Z _ {2, u d} (3) \\ Z _ {2, d u} (3) \end{array} = 0. 9 8 6 1}
$$

$$
\boxed {Z _ {1, d} (2) = 0. 9 9 6 3}
$$

$$
\boxed {Z _ {2, d d} (3) = 0. 9 9 9 9}
$$

- Important: Note that there is a key distinction between this zero-coupon tree, and the trees for stocks in TN 4.

# Interest Rate Trees vs Stock Trees

- For instance, suppose you assume that the stock process is given by  $(q = 1/2$  to move up)

$$
\begin{array}{l} i = 0 \\ i = 1 \\ i = 2 \\ \boxed {S _ {u u} = 9 0} \\ \end{array}
$$

$$
S _ {u} = 7 0
$$

$$
\boxed { \begin{array}{c} S _ {u d} \\ S _ {d u} \end{array} } = 6 0
$$

$$
\boxed {S _ {0} = 5 0}
$$

$$
\boxed {S _ {d} = 4 0}
$$

$$
\boxed {S _ {d d} = 3 0}
$$

- It is always the same security whose price is quoted along the tree.  
- This is important, as if you buy the stock at time 0 for 50, and wait one period, you can sell it at 70 or 40 depending on the realization along the tree.

# Interest Rate Trees vs Stock Trees

- This is not the case in the zero coupon tree we saw above.
- The price along the tree is the price of a different security at each node: it is always the one period ahead zero coupon bond.  
- So, if I buy at time  $t = 0$  for 0.94, at time  $t = 1$  I will get 1 for sure, and not 0.962 or 0.993.
- How can we model a proper tree, to use in derivative pricing?
- We need more information.  
- For instance, assume that today  $t = 0$ , a zero coupon with maturity  $T = 1$  (i.e.  $i = 2$ ) trades at

$$
Z _ {0} (2) = 0. 9 7 8 1
$$

- Combining this price with the previous tree, we obtain a tree for the bond maturing at  $i = 2$

# The Tree for a Bond Expiring at  $\pmb{i} = \pmb{2}$

$$
i = 0
$$

$$
i = 1
$$

$$
i = 2
$$

$$
Z _ {2, u u} (2) = 1
$$

$$
Z _ {0} (2) = 0. 9 7 8 1
$$

$$
Z _ {1, u} (2) = 0. 9 8 0 8
$$

$$
\begin{array}{l} {Z _ {2, u d} (2)} \\ {Z _ {2, d u} (2)} \end{array} = 1
$$

$$
Z _ {1, d} (2) = 0. 9 9 6 3
$$

$$
Z _ {2, d d} (2) = 1
$$

- This is a proper asset pricing tree, in the sense that the security along the tree is always the same, namely, the bond expiring at time  $i = 2$ .  
- Since the last payoff of any bond is always 1, we typically do not report it.

# Risk Neutral Pricing on Trees

- At this point, risk neutral pricing allows us to price derivative securities on the interest rate tree.  
- As before, we first compute the risk neutral probability to move up the tree  $q_0^*$ .
- The expected risk neutral return to invest in the  $i = 2$  bond is

$$
E ^ {*} \left[ \frac {Z _ {1} (2)}{Z _ {0} (2)} \right] = q _ {0} ^ {*} \frac {Z _ {1 , u} (2)}{Z _ {0} (2)} + (1 - q _ {0} ^ {*}) \frac {Z _ {1 , d} (2)}{Z _ {0} (2)}
$$

- Risk neutral pricing implies that this expected return must equal the safe return of an investment in a zero that matures at time  $i = 1$

$$
\underbrace {q _ {0} ^ {*} \frac {Z _ {1 , u} (2)}{Z _ {0} (2)} + (1 - q _ {0} ^ {*}) \frac {Z _ {1 , d} (2)}{Z _ {0} (2)}} = \underbrace {1} _ {Z _ {0} (1)}
$$

Expected Return on 2-period bond = Return on 1-period Bond

-yielding

$$
q _ {0} ^ {*} = \frac {Z _ {0} (2) / Z _ {0} (1) - Z _ {1 , d} (2)}{Z _ {1 , u} (2) - Z _ {1 , d} (2)}
$$

- Note that this is the same equation we found in TN 4.

# Risk Neutral Pricing on Trees

- Given the risk neutral probability, the value  $V_{i}$  of every traded security must satisfy

$$
V _ {0} = Z _ {0} \left(1\right) E ^ {*} \left[ V _ {1} \right]
$$

- For instance, in the example we have

$$
q _ {0} ^ {*} = \frac {Z _ {0} (2) / Z _ {0} (1) - Z _ {1 , d} (2)}{Z _ {1 , u} (2) - Z _ {1 , d} (2)} = \frac {0 . 9 7 8 1 / 0 . 9 9 1 6 - 0 . 9 9 6 3}{0 . 9 8 0 8 - 0 . 9 9 6 3} = 0. 6 4 3 5
$$

- Option on Interest Rate:
- Suppose we want to price an option on the interest rate, with strike  $\bar{r} = 0.0168$  
- The payoffs are:

$$
\mathrm {p a y} _ {1, u} = 1 0 0 \times \max (r _ {1, u} - \overline {{r}}, 0) = 2 1. 9 \mathrm {a n d} \mathrm {p a y} _ {1, d} = 1 0 0 \times \max (r _ {1, d} - \overline {{r}}, 0) = 0
$$

$$
\begin{array}{l} \mathrm {O p t i o n} _ {0} = Z _ {0} (1) \times E ^ {*} [ \mathrm {p a y} _ {1} ] \\ = 0. 9 9 1 6 \times (0. 6 4 3 5 \times 2 1. 9 + 0. 3 5 6 4 5 \times 0) \\ = 1 3. 9 7 \\ \end{array}
$$

# Risk Neutral Pricing on Trees

# - Question

- Under the risk neutral probabilities, the expected interest rate is

$$
E ^ {*} \left[ r _ {1} \right] = q _ {0} ^ {*} \times r _ {1, u} + \left(1 - q _ {0} ^ {*}\right) \times r _ {1, d} = 0. 0 2 7 5
$$

- If your boss asks you what is your forecast of the interest rate in six months, would you tell him  $2.75\%$ ?
- In the real world, the expected interest rate was

$$
E \left[ r _ {1} \right] = 2.305 \% <   2.75 \% = E ^ {*} \left[ r _ {1} \right]
$$

- Passing from the real to the risk neutral world implies increasing the expected interest rate.

# A Problem in Finding the Tree for a Bond Expiring at  $\pmb{i} = \pmb{3}$

- What is then a tree for a bond expiring at  $i = 3$ ?  
- Let  $Z_{0}(3) = 0.9615$  be the current market price of a bond maturing at  $T = 1.5$ , i.e.  $i = 3$ .

$$
i = 0
$$

$$
i = 1
$$

$$
i = 2
$$

$$
Z _ {2, u u} (3) = 0. 9 7 2 5
$$

$$
Z _ {0} (3) = 0. 9 7 8 1
$$

$$
Z _ {1, u} \left(3\right) =??
$$

$$
\begin{array}{l} Z _ {2, u d} (3) \\ Z _ {2, d u} (3) \end{array} = . 9 8 6 1
$$

$$
Z _ {1, d} \left(3\right) =??
$$

$$
Z _ {2, d d} (2) = . 9 9 9 9
$$

- While from the interest rate tree we find  $Z_{2,j}(3)$ , there is not an obvious way to compute  $Z_{1,j}(3)$ . - We need no arbitrage restrictions.

# Finding the Tree for a Bond Expiring at  $\pmb{i} = \pmb{3}$

- The first no arbitrage restriction is provided by the risk neutral probability  $q_0^*$ , which implies

$$
Z _ {0} (3) = Z _ {0} (1) E ^ {*} [ Z _ {1} (3) ] = Z _ {0} (1) [ q _ {0} ^ {*} Z _ {1, u} (3) + (1 - q _ {0} ^ {*}) Z _ {1, d} (3) ]
$$

- How can we compute  $Z_{1,u}(3)$  and  $Z_{1,d}(3)$ ?
- We can use the "implied tree" methodology, discussed in TN 5.  
- Let  $q_{1,u}^{*}$  and  $q_{1,d}^{*}$  be the risk neutral probabilities to move up or down the tree at time  $i = 1$ .  
- Since the same formula as earlier applies, we have

$$
q _ {1, u} ^ {*} = \frac {Z _ {1 , u} (3) / Z _ {1 , u} (2) - Z _ {2 , u d} (3)}{Z _ {2 , u u} (3) - Z _ {2 , u d} (3)}
$$

$$
q _ {2, d} ^ {*} = \frac {Z _ {1 , d} (3) / Z _ {1 , d} (2) - Z _ {2 , d d} (3)}{Z _ {2 , d u} (3) - Z _ {2 , d d} (3)}
$$

- Choose  $Z_{1,u}(3)$  and  $Z_{1,d}(3)$  so that the current price of the bond  $Z_0(3) = 0.9615$
- Problem: We have one equation (the value of the bond) and two unknowns  $(Z_{1,u}(3)$  and  $Z_{1,u}(3))$
- We need one more equation. Use for instance  $q_{1,u}^{*} = q_{1,d}^{*} = q_{1}^{*}$ .  
- Practically, then, for every  $q_1^*$  we obtain the two values of  $Z_{1,u}(3)$  and  $Z_{1,d}(3)$  from the equations above, and thus the tree.

# Finding the Tree for a Bond Expiring at  $\pmb{i} = \pmb{3}$

- We can find numerically (e.g. using Solver) the value  $q_{1}^{*}$  such that the price of the traded security  $Z_{0}(3) = 0.9615$  equals the "model price"

$$
\begin{array}{r l} \widehat {Z} _ {0} (3) = & Z _ {0} (1) \left\{q _ {0} ^ {*} Z _ {1, u} (3) + (1 - q _ {0} ^ {*}) Z _ {1, d} (3) \right\} \\ & \mathrm {w h e r e} \end{array}
$$

$$
Z _ {1, u} (3) = Z _ {1, u} (2) \left\{q _ {1} ^ {*} Z _ {2, u u} (3) + (1 - q _ {1} ^ {*}) Z _ {2, u d} (3) \right\}
$$

$$
Z _ {1, d} (3) = Z _ {1, d} (2) \left\{q _ {1} ^ {*} Z _ {2, d u} (3) + (1 - q _ {1} ^ {*}) Z _ {2, d d} (3) \right\}
$$

- We find  $q_1^* = 0.5912$  which implies  $Z_{1,u}(3) == 0.959$  and  $Z_{1,d}(3) = 0.988$ .

# Finding the Tree for a Bond Expiring at  $\pmb{i} = \pmb{3}$

$$
i = 0
$$

$$
i = 1
$$

$$
i = 2
$$

$$
Z _ {2, u u} (3) = 0. 9 7 2 5
$$

$$
Z _ {1, u} (3) = 0. 9 5 9
$$

$$
Z _ {0} (3) = 0. 9 6 1 5
$$

$$
\begin{array}{c} Z _ {2, u d} (3) \\ \text {一} \end{array} = 0. 9 8 6 1
$$

$$
Z _ {2, d u} (3)
$$

$$
Z _ {1, d} (3) = 0. 9 8 8
$$

$$
Z _ {2, d d} (3) = 0. 9 9 9 9
$$

- In summary, building trees to price fixed income securities is not straightforward.  
- The task is made complicated from the fact that no-arbitrage restrictions exist between bonds of different maturities.

# The Ho Lee Model

- Moving from risk natural to risk neutral trees is complicated.  
- The current main methodology is to build directly a risk neutral tree.  
- A famous model is the Ho Lee model.

$$
r _ {i + 1} = r _ {i} + \theta (i) \Delta \pm \sigma \sqrt {\Delta}
$$

- where  $\Delta$  is the time step,  $\theta(i)$  is a function of time chosen to match current prices, and  $\pm \sqrt{\Delta}$  occur with  $1/2$  (risk neutral) probability.
- This process generates a recombining tree, independently of  $\theta(i)$ . Starting from  $r_0$

$$
r _ {1, u} = r _ {0} + \theta (0) \Delta + \sigma \sqrt {\Delta}
$$

$$
r _ {1, d} = r _ {0} + \theta (0) \Delta - \sigma \sqrt {\Delta}
$$

$$
r _ {2, u u} = r _ {1, u} + \theta (1) \Delta + \sigma \sqrt {\Delta}
$$

$$
r _ {2, u d} = r _ {1, u} + \theta (1) \Delta - \sigma \sqrt {\Delta}
$$

$$
r _ {2, d u} = r _ {1, d} + \theta (1) \Delta + \sigma \sqrt {\Delta}
$$

$$
r _ {2, d d} = r _ {1, d} + \theta (1) \Delta - \sigma \sqrt {\Delta}
$$

- It is easy to see that  $r_{2,ud} = r_{2,du} = r_0 + (\theta (0) + \theta (1))\Delta$

# The Ho Lee Model

- The tree is "implied" as follows:  
- Inputs: (a) Time series of short term interest rates; (b) Current bond prices.

1. From historical interest rates, obtain an estimate of  $\sigma = st.dev(\Delta r_i)$  
2. Then, compute  $\theta(i)$  recursively, as follows

Use bond maturing at time  $i = 2$  to obtain  $\theta(0)$

Use bond maturing at time  $i = 3$  to obtain  $\theta(1)$

：

Use bond maturing at time  $i = n$  to obtain  $\theta (n - 2)$

- In order to perform this, we must first see how to use "risk neutral" trees to price bonds.

# Using Risk Neutral Trees

- Assume that we built the risk neutral tree already, and we simply use it.  
- Let  $r_{i,j}$  be the 6 month, continuously compounded interest rate.  
- At every time (1 period =  $\Delta = 6$  months), there is equal risk neutral probability ( $q^{*} = 1/2$ ) to move up or down.

$$
i = 0
$$

$$
i = 1
$$

$$
i = 2
$$

$$
r _ {1, u} = 0. 0 4 3 3
$$

$$
r _ {2, u u} = 0. 0 6 3 8
$$

$$
r _ {0} = 0. 0 1 6 8
$$

$$
\begin{array}{c} {r _ {2, u d}} \\ {r _ {2, d u}} \end{array} = 0. 0 3 6 1
$$

$$
r _ {1, d} = 0. 0 1 2 0
$$

$$
r _ {2, d d} = 0. 0 0 8 3
$$

# Using Risk Neutral Trees

From the tree,  $Z_{0}(1) = e^{-r_{0}\Delta} \times 1 = 0.9916$  

- What is the value of bond paying $1 in one year (i = 2)?  
- As usual, it can be obtained by proceeding backward on the tree:

$$
i = 0
$$

$$
i = 1
$$

$$
i = 2
$$

$$
Z _ {2, u u} (2) = 1
$$

$$
\begin{array}{l} r _ {0} = 0. 0 1 6 8 \\ Z _ {0} (2) = e ^ {- r _ {0} \Delta} \times \left(\frac {1}{2} Z _ {1, u} (2) + \frac {1}{2} Z _ {1, d} (2)\right) \\ = 0. 9 7 8 1 \\ \end{array}
$$

$$
\begin{array}{l} r _ {1, u} = 0. 0 4 3 3 \\ Z _ {1, u} (2) = e ^ {- r _ {1, u} \Delta} \times 1 = 0. 9 7 8 6 \\ \end{array}
$$

$$
\begin{array}{l} Z _ {2, u d} (2) \underset {- 1} {\mathrm {}} \\ Z _ {2, d u} (2) \\ \end{array}
$$

$$
\begin{array}{l} r _ {1, d} = 0. 0 1 2 0 \\ Z _ {1, d} (2) = e ^ {- r _ {1, d} \Delta} \times 1 = 0. 9 9 4 0 \\ \end{array}
$$

$$
Z _ {2, d d} (2) = 1
$$

# Using Risk Neutral Trees

- Similarly, a bond paying $1 in 1.5 years (i = 3):

$$
\begin{array}{l} i = 0 \\ i = 1 \\ i = 2 \\ i = 3 \\ \end{array}
$$

$$
Z _ {3, u u u} (3) = 1
$$

$$
r _ {0} = 0. 0 1 6 8
$$

$$
Z _ {0} (3) = 0. 9 6 0 7
$$

$$
r _ {1, u} = 0. 0 4 3 3
$$

$$
Z _ {1, u} (3) = 0. 9 5 4 5
$$

$$
r _ {2, u d} = 0. 0 3 6 1
$$

$$
Z _ {2, u d} \left(3\right) = 0. 9 8 2 1
$$

$$
Z _ {3, u u d} (3)
$$

$$
Z _ {3, u d u} (3)
$$

$$
= 1
$$

$$
r _ {1, d} = 0. 0 1 2 0
$$

$$
Z _ {1, d} (3) = 0. 9 8 3 0
$$

$$
r _ {2, d d} = 0. 0 0 8 3
$$

$$
Z _ {2, d d} (3) = 0. 9 9 5 9
$$

$$
Z _ {3, u d d} (3)
$$

$$
Z _ {3, d d u} (3)
$$

$$
= 1
$$

$$
Z _ {3, d d d} (3) = 1
$$

# Risk Neutral Trees

- In addition, computers can be programmed rather easily to carry out the backward computation.

<table><tr><td colspan="12">Table 2: An Interest Rate Tree</td></tr><tr><td>i</td><td>0</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td><td>8</td><td>9</td><td>10</td></tr><tr><td>t</td><td>0</td><td>0.5</td><td>1</td><td>1.5</td><td>2</td><td>2.5</td><td>3</td><td>3.5</td><td>4</td><td>4.5</td><td>5</td></tr><tr><td>j</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>1</td><td>1.68</td><td>5.71</td><td>9.6</td><td>13.35</td><td>16.97</td><td>20.46</td><td>23.83</td><td>27.09</td><td>30.23</td><td>33.25</td><td></td></tr><tr><td>2</td><td></td><td>-0.84</td><td>3.17</td><td>6.97</td><td>10.62</td><td>14.13</td><td>17.5</td><td>20.76</td><td>23.9</td><td>26.93</td><td></td></tr><tr><td>3</td><td></td><td></td><td>-3.27</td><td>0.77</td><td>4.55</td><td>8.13</td><td>11.55</td><td>14.83</td><td>17.99</td><td>21.02</td><td></td></tr><tr><td>4</td><td></td><td></td><td></td><td>-5.61</td><td>-1.52</td><td>2.27</td><td>5.84</td><td>9.2</td><td>12.41</td><td>15.48</td><td></td></tr><tr><td>5</td><td></td><td></td><td></td><td></td><td>-7.87</td><td>-3.72</td><td>0.12</td><td>3.69</td><td>7.04</td><td>10.2</td><td></td></tr><tr><td>6</td><td></td><td></td><td></td><td></td><td></td><td>-10.06</td><td>-5.83</td><td>-1.94</td><td>1.66</td><td>5.01</td><td></td></tr><tr><td>7</td><td></td><td></td><td></td><td></td><td></td><td></td><td>-12.16</td><td>-7.87</td><td>-3.92</td><td>-0.27</td><td></td></tr><tr><td>8</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>-14.19</td><td>-9.83</td><td>-5.82</td><td></td></tr><tr><td>9</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>-16.15</td><td>-11.72</td><td></td></tr><tr><td>10</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>-18.05</td><td></td></tr><tr><td>11</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan="12">Backward Computation of Bond Prices</td></tr><tr><td>j,i</td><td>0</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td><td>8</td><td>9</td><td>10</td></tr><tr><td>1</td><td>81.15</td><td>70.9</td><td>64.39</td><td>60.65</td><td>59.12</td><td>59.58</td><td>62.03</td><td>66.68</td><td>73.97</td><td>84.68</td><td>100</td></tr><tr><td>2</td><td></td><td>92.78</td><td>81.51</td><td>74.47</td><td>70.54</td><td>69.13</td><td>69.97</td><td>73.09</td><td>78.72</td><td>87.4</td><td>100</td></tr><tr><td>3</td><td></td><td></td><td>103.27</td><td>91.14</td><td>83.68</td><td>79.65</td><td>78.4</td><td>79.66</td><td>83.44</td><td>90.02</td><td>100</td></tr><tr><td>4</td><td></td><td></td><td></td><td>112.06</td><td>99.3</td><td>91.56</td><td>87.52</td><td>86.48</td><td>88.15</td><td>92.55</td><td>100</td></tr><tr><td>5</td><td></td><td></td><td></td><td></td><td>118.62</td><td>105.54</td><td>97.69</td><td>93.74</td><td>92.95</td><td>95.03</td><td>100</td></tr><tr><td>6</td><td></td><td></td><td></td><td></td><td></td><td>122.54</td><td>109.5</td><td>101.77</td><td>98.02</td><td>97.53</td><td>100</td></tr><tr><td>7</td><td></td><td></td><td></td><td></td><td></td><td></td><td>123.56</td><td>110.93</td><td>103.55</td><td>100.14</td><td>100</td></tr><tr><td>8</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>121.61</td><td>109.76</td><td>102.95</td><td>100</td></tr><tr><td>9</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>116.8</td><td>106.04</td><td>100</td></tr><tr><td>10</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>109.44</td><td>100</td></tr><tr><td>11</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>100</td></tr></table>

# Calibration of Ho Lee Model

- Given data on interest rates, I estimated a volatility  $\sigma = .022$ .  
- Given data from current zero coupon bonds (STRIPS) as of May 25 2007, we can compute iteratively  $\theta(i)$  so that model prices equal actual prices for every  $i$ .  
- In the example below, I am only showing the model price for  $T = 5$  bond.

<table><tr><td colspan="3">HO-LEE BINOMIAL TREE MODEL</td><td colspan="2">Today</td><td colspan="2">25-May-07</td><td colspan="2">First Zero</td><td colspan="2">15-Nov-07</td><td></td><td></td></tr><tr><td colspan="3">Interest Rate Assumptions</td><td colspan="4">Bond Assumption</td><td colspan="4">Tree</td><td></td><td></td></tr><tr><td>sigma</td><td>0.022</td><td></td><td>T</td><td>5</td><td></td><td></td><td>h</td><td>0.5</td><td></td><td>Price Binomial</td><td>80.147</td><td></td></tr><tr><td>r0</td><td>0.047222</td><td></td><td>coupon</td><td>0</td><td></td><td></td><td>h0</td><td>0.48</td><td></td><td></td><td></td><td></td></tr><tr><td>Maturity</td><td>Nov-07</td><td>May-08</td><td>Nov-08</td><td>May-09</td><td>Nov-09</td><td>May-10</td><td>Nov-10</td><td>May-11</td><td>Nov-11</td><td>May-12</td><td></td><td></td></tr><tr><td>Zeros</td><td>97.774</td><td>95.356</td><td>93.100</td><td>91.047</td><td>88.888</td><td>86.910</td><td>84.903</td><td>83.673</td><td>82.776</td><td>80.147</td><td></td><td></td></tr><tr><td rowspan="2">Model Price Target</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>80.147</td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>2.019E-28</td><td></td><td></td></tr><tr><td>theta (+2)</td><td></td><td>0.006121</td><td>-0.003672</td><td>-0.0057966</td><td>0.007737</td><td>-0.004846</td><td>0.004791</td><td>-0.033499</td><td>-0.013441</td><td>0.0880469</td><td></td><td></td></tr><tr><td rowspan="2">time =&gt; i=&gt;</td><td>0</td><td>0.5</td><td>1</td><td>1.5</td><td>2</td><td>2.5</td><td>3</td><td>3.5</td><td>4</td><td>4.5</td><td>5</td><td></td></tr><tr><td>0</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td><td>8</td><td>9</td><td>10</td><td></td></tr><tr><td>0</td><td>0.047</td><td>0.065</td><td>0.079</td><td>0.092</td><td>0.111</td><td>0.124</td><td>0.142</td><td>0.141</td><td>0.150</td><td>0.209</td><td>0.234</td><td></td></tr><tr><td>1</td><td></td><td>0.035</td><td>0.048</td><td>0.061</td><td>0.080</td><td>0.093</td><td>0.111</td><td>0.110</td><td>0.119</td><td>0.178</td><td>0.203</td><td></td></tr><tr><td>2</td><td></td><td></td><td>0.018</td><td>0.029</td><td>0.049</td><td>0.062</td><td>0.080</td><td>0.079</td><td>0.088</td><td>0.147</td><td>0.172</td><td></td></tr><tr><td>3</td><td></td><td></td><td></td><td>-0.001</td><td>0.018</td><td>0.031</td><td>0.049</td><td>0.048</td><td>0.057</td><td>0.116</td><td>0.141</td><td></td></tr><tr><td>4</td><td></td><td></td><td></td><td></td><td>-0.013</td><td>0.000</td><td>0.018</td><td>0.017</td><td>0.025</td><td>0.085</td><td>0.110</td><td></td></tr><tr><td>5</td><td></td><td></td><td></td><td></td><td></td><td>-0.031</td><td>-0.013</td><td>-0.015</td><td>-0.006</td><td>0.054</td><td>0.079</td><td></td></tr><tr><td>6</td><td></td><td></td><td></td><td></td><td></td><td></td><td>-0.044</td><td>-0.046</td><td>-0.037</td><td>0.023</td><td>0.048</td><td></td></tr><tr><td>7</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>-0.076</td><td>-0.068</td><td>-0.008</td><td>0.017</td><td></td></tr><tr><td>8</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>-0.098</td><td>-0.039</td><td>-0.014</td><td></td></tr><tr><td>9</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>-0.070</td><td>-0.046</td><td></td></tr><tr><td>10</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>-0.076</td><td></td></tr></table>

# Intermediate Cash Flows

- Notice that given a tree, we can insert any type of known cash flow.  
- Specifically, at any time-node  $(i,j)$ , we just must add the CF

$$
P _ {i, j} = e ^ {- r _ {i, j} \Delta} \left(\frac {1}{2} P _ {i + 1, j} + \frac {1}{2} P _ {i + 1, j + 1} + C F _ {i + 1}\right)
$$

- So, for example, a 1.5 year,  $4\%$  coupon bond is just given by

$$
\begin{array}{l} i = 0 \\ i = 1 \\ i = 2 \\ i = 3 \\ P _ {3, u u u} (3) = 1 0 0 \\ \end{array}
$$

$$
\begin{array}{l} \hline P _ {0} (3) \\ = e ^ {- 0. 0 1 6 8 / 2} \\ \times [ \frac {1}{2} (9 9. 3 1 + 1 0 2. 2 6) \\ + 2 ] = 1 0 1. 9 3 \\ \hline \end{array}
$$

$$
\begin{array}{l} \hline P _ {1, u} (3) \\ = e ^ {- 0. 0 4 3 3 / 2} \\ \times [ \frac {1}{2} (9 8. 8 0 + 1 0 0. 1 8) \\ + 2 ] = 9 9. 3 1 \\ \hline \end{array}
$$

$$
\boxed { \begin{array}{l} P _ {1, d} (3) \\ = e ^ {- 0. 0 1 2 0 / 2} \\ \times [ \frac {1}{2} (1 0 0. 1 8 + 1 0 1. 5 8) \\ + 2 ] = 1 0 2. 2 6 \end{array} }
$$

$$
\boxed { \begin{array}{c} P _ {3, u u d} (3) \\ P _ {3, u d u} (3) \end{array} = 1 0 0}
$$

$$
\begin{array}{l} \hline P _ {2, u d} (3) \\ = e ^ {- 0. 0 3 6 1 / 2} (1 0 0 + 2) \\ = 1 0 0. 1 8 \end{array}
$$

$$
\begin{array}{c c} \hline P _ {2, d d} (3) \\ = e ^ {- 0. 0 0 8 3 / 2} (1 0 0 + 2) \\ = 1 0 1. 5 8 \\ \hline \end{array}
$$

- This tree gives "ex-coupon" prices.

$$
P _ {3, d d d} \left(3\right) = 1 0 0
$$

# Example: Callable Bonds

- Trees turn out to be very useful tools (not only pedagogically).  
- One of the most important features of them is the ability to deal with "American options."  
- As a consequence, a very simple application of the "tree" methodology is the computation of prices of callable bonds.  
- Consider the 1.5 year,  $4 \%$ coupon bond we discussed earlier, but assume it is callable at par 100.  
- That is, at any point in time before maturity, the issuer (Treasury) may "call it back" in exchange of 100.
- In general, bonds become callable after some period of time.  
- For example, the Nov 2012 Treasury bond is callable at par starting on Nov 2007.  
- If the issuer calls the bond between coupon days, it has to pay the accrued interest to the bond holder.

# Example: Callable Bonds

- How do we compute the price of the implicit American option?  
- At any node  $(i,j)$  the issuer can decide whether to "exercise" option or wait.
- If exercises, the payoff (  $=$  value of the option) is

$$
C a l l _ {i, j} ^ {\mathrm {E x}} = P _ {i, j} - 1 0 0
$$

- If waits, the value of the option

$$
C a l l _ {i, j} ^ {\mathrm {W a i t}} = e ^ {- r _ {i, j} \Delta} E ^ {*} [ C a l l _ {i + 1} ] = e ^ {- r _ {i, j} \Delta} \left(\frac {1}{2} C a l l _ {i + 1, j} + \frac {1}{2} C a l l _ {i + 1, j + 1}\right)
$$

- Therefore, the value at node  $i, j$  is

$$
\begin{array}{l} C a l l _ {i, j} = \max  \left(C a l l _ {i, j} ^ {\mathrm {W a i t}}, C a l l _ {i, j} ^ {\mathrm {E x}}\right) \\ = \max \left(e ^ {- r _ {i, j} \times \Delta} E ^ {*} [ C a l l _ {i + 1} ], P _ {i, j} - 1 0 0\right) \\ \end{array}
$$

- At maturity  $I = T / \Delta$  we have

$$
C a l l _ {I, j} = 0 \mathrm {f o r a l l} j
$$

# Example: Callable Bonds

$$
i = 0
$$

$$
i = 1
$$

$$
i = 2
$$

$$
i = 3
$$

$$
C _ {3, u u u} \left(3\right) = 0
$$

$$
C _ {1, u} (3) =
$$

$$
= \max \left(9 9. 3 1 - 1 0 0, e ^ {-. 0 4 3 3 / 2} 0. 1 8 / 2\right)
$$

$$
= 0. 0 9
$$

$$
\begin{array}{l} C _ {2, u u} (3) = \\ = \max  (9 8. 8 0 - 1 0 0, 0) \\ = 0 \\ \end{array}
$$

$$
\begin{array}{l} C _ {3, u u d} (3) \\ C _ {3, u d u} (3) \end{array} = 0
$$

$$
\begin{array}{l} C _ {0} (3) = \\ = e ^ {- 0. 0 1 6 8 / 2} \\ \times \frac {1}{2} (. 0 9 + 2. 2 6) \\ = 1. 1 6 \\ \end{array}
$$

$$
\begin{array}{l} C _ {1, d} (3) = \\ = \max  (1 0 2. 2 6 - 1 0 0, \\ e ^ {- 0. 0 1 2 0 / 2} (1 8 + 1. 5 8) / 2) \\ = 2. 2 6 \\ \end{array}
$$

$$
\begin{array}{l} C _ {2, u d} (3) = \\ = \max  (1 0 0. 1 8 - 1 0 0, 0) \\ = 0. 1 8 \\ \end{array}
$$

$$
\begin{array}{l} C _ {3, u d d} (3) - 0 \\ C _ {3, d d u} (3) \\ \end{array}
$$

$$
\begin{array}{l} C _ {2, d d} (3) \\ = \max  (1 0 1. 5 8 - 1 0 0, 0) \\ = 1. 5 8 \\ \end{array}
$$

$$
C _ {3, d d d} (3) = 0
$$

# Example: Callable Bonds

# - What is then the price of the callable bond?

- The buyer of a callable bond is: (1) buying a non-callable bond; + (2) Selling a call to the issuer.  
- Hence,

$$
\begin{array}{l} P _ {0} ^ {\mathrm {C a l l}} (3) = P _ {0} ^ {\mathrm {N o C a l l}} (3) - C _ {0} (3) \\ = 1 0 1. 9 3 - 1. 1 6 \\ = 1 0 0. 7 7 \\ \end{array}
$$