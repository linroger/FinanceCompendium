# Bond Prices and Yields

# 14

IN THE PREVIOUS chapters on risk and return relationships, we treated securities at a high level of abstraction. We assumed implicitly that a prior, detailed analysis of each security already had been performed and that its risk and return features had been assessed.

We now turn to specific analyses of particular security markets. We examine valuation principles, determinants of risk and return, and portfolio strategies commonly used within and across the various markets.

We begin by analyzing debt securities, which are claims on a specified periodic stream of cash flows. Debt securities are often called fixed-income securities because they promise either a fixed stream of income or one that is determined according to a specified formula. They have the advantage of being relatively easy to understand because the payment formulas are laid out in advance. Uncertainty about cash flows is minimal as long as the issuer of the security is sufficiently creditworthy. That makes them a convenient starting point for our analysis of the universe of potential investment vehicles.


The bond is the basic debt security, and this chapter starts with an overview of the universe of bond markets, including Treasury, corporate, and international bonds. We turn next to pricing, showing how bond prices are set in accordance with market interest rates and why they change with those rates. Given this background, we can compare myriad measures of bond returns such as yield to maturity, yield to call, holding-period return, and realized compound rate of return. We show how bond prices evolve over time, discuss tax rules that apply to debt securities, and show how to calculate after-tax returns.

Finally, we consider the impact of default or credit risk on bond pricing and look at the determinants of credit risk and the default premium built into bond yields. Credit risk is central to fixed-income derivatives such as collateralized debt obligations and credit default swaps, so we examine these instruments as well.

# 14.1 Bond Characteristics

A bond is a security that is issued in connection with a borrowing arrangement. The borrower issues (i.e., sells) a bond to the lender for some amount of cash; the bond is the "IOU" of the borrower. The issuer agrees to make specified payments to the bondholder on specified dates. In a typical coupon bond, the issuer makes semiannual payments of interest for the life of the bond. These are called coupon payments because in precomputer days, most bonds had coupons that investors would clip off and present to claim the interest payment. When the bond matures, the issuer repays the debt by paying the bond's par value (equivalently, its face value). The coupon rate of the bond determines the interest payment: The annual payment is the coupon rate times the bond's par value. The coupon rate, maturity date, and par value of the bond are part of the bond indenture, which is the contract between the issuer and the bondholder.

To illustrate, a bond with par value of 1,000 and coupon rate of 8\% might be sold for 1,000. The bondholder is entitled to a payment of 8\% of par value, or 80 per year, for the life of the bond, say, 30 years. The \$80 payment typically comes in two semiannual installments of \$40 each. At the end of the bond's 30-year life, the issuer also pays the 1,000 par value to the bondholder.

Bonds usually are issued with coupon rates set just high enough to induce investors to pay par value for them. Sometimes, however, zero-coupon bonds are issued that make no coupon payments. In this case, investors receive par value at the maturity date but receive no interest payments until then: The bond has a coupon rate of zero. These bonds are issued at prices considerably below par value, and the investor's return comes solely from the difference between the issue price and the payment of par value at maturity. We will return to these bonds later.

U.S. Treasury Quotes
ASKED

<table><tr><td>MATURITY</td><td>COUPON</td><td>BID</td><td>ASK</td><td>CHANGE</td><td>YIELD (\%)</td></tr><tr><td>Aug 15 24</td><td>2.375</td><td>105.8188</td><td>105.8313</td><td>0.030</td><td>0.417</td></tr><tr><td>Aug 15 26</td><td>1.500</td><td>103.4563</td><td>103.4750</td><td>0.064</td><td>0.790</td></tr><tr><td>Aug 15 30</td><td>0.625</td><td>94.6938</td><td>94.7250</td><td>0.186</td><td>1.246</td></tr><tr><td>Aug 15 40</td><td>1.125</td><td>88.4125</td><td>88.4750</td><td>1.002</td><td>1.847</td></tr><tr><td>Aug 15 40</td><td>3.875</td><td>134.1875</td><td>134.2500</td><td>1.748</td><td>1.749</td></tr><tr><td>Nov 15 44</td><td>3.000</td><td>120.4500</td><td>120.5125</td><td>1.830</td><td>1.904</td></tr><tr><td>Feb 15 47</td><td>3.000</td><td>121.9750</td><td>122.0375</td><td>1.280</td><td>1.905</td></tr><tr><td>Aug 15 49</td><td>2.250</td><td>106.6625</td><td>106.7250</td><td>1.948</td><td>1.938</td></tr></table>

Figure 14.1 Prices and yields of U.S. Treasury bonds, August 15, 2021.

Source: The Wall Street Journal Online, August 15, 2021.

# Treasury Bonds and Notes

Figure 14.1 is an excerpt from the listing of Treasury issues. Treasury notes are issued with original maturities ranging between 1 and 10 years, while Treasury bonds are issued with maturities ranging from 10 to 30 years. Both bonds and notes may be purchased directly from the Treasury in denominations of only \$100, but denominations of \$1,000 are far more common. Both make semiannual coupon payments.

The highlighted bond in Figure 14.1 matures on August 15, 2049. Its coupon rate is  $2.25\%$ . Par value typically is  $\$1,000$ ; thus, the bond pays interest of  $\$22.50$  per year in two semiannual payments of  $\$11.25$ . Payments are made in February and August of each year. Although bonds usually are sold in denominations of  $\$1,000$ , the bid and ask prices are quoted as a percentage of par value. $^{1}$  Therefore, the ask price is  $106.725\%$  of par or  $\$1,067.25$ .

The last column, labeled "Asked Yield," is the yield to maturity on the bond based on the ask price. The yield to maturity is a measure of the average rate of return to an investor who purchases the bond for the ask price and holds it until its maturity date. We will have much to say about yield to maturity below.

Accrued Interest and Quoted Bond Prices The prices you see quoted online or in the financial pages are not the prices that investors actually pay for the bond. This is because the quoted price does not include the interest that accrues between coupon payment dates.

If a bond is purchased between coupon payments, the buyer must pay the seller for accrued interest, the prorated share of the upcoming semiannual coupon. For example, if 30 days have passed since the last coupon payment, and there are 182 days in the semiannual coupon period, the seller is entitled to accrued interest of 30/182 of the semiannual coupon. The sale, or invoice, price of the bond would equal the stated price (sometimes called the flat price) plus the accrued interest.

In general, the formula for the accrued interest between two dates is

$$
\text {A c c r u e d i n t e r e s t} = \frac {\text {A n n u a l c o u p o n p a y m e n t}}{2} \times \frac {\text {D a y s s i n c e l a s t c o u p o n p a y m e n t}}{\text {D a y s s e p a r a t i n g c o u p o n p a y m e n t}}
$$

# Example 14.1 Accrued Interest

Suppose that the coupon rate is 8\%. Then the annual coupon is \$80 and the semiannual coupon payment is \$40. Because 30 days have passed since the last coupon payment, the accrued interest on the bond is $40 × (30/182) = $6.59. If the quoted price of the bond is \$990, then the invoice price will be $990 + $6.59 = \$996.59.

The practice of quoting bond prices net of accrued interest explains why the price of a maturing bond is listed at  \$1,000 rather than\$ 1,000 plus one coupon payment. A purchaser of an 8\% coupon bond one day before the bond's maturity would receive \$1,040 (par value plus semiannual interest) on the following day and so should be willing to pay $1,040. But $40 of that payment constitutes the accrued interest for the preceding half-year period. The bond price is quoted net of accrued interest in the financial pages and thus appears as \$1,000.[2]

# Corporate Bonds

Like the government, corporations borrow money by issuing bonds. Figure 14.2 is a sample of listings for a few actively traded corporate bonds. Although some bonds trade electronically on the NYSE Bonds platform, and some electronic trading platforms now allow participants to trade bonds directly, most bonds still trade on a traditional over-the-counter market in a network of bond dealers linked by a computer quotation system. In part, this is

<table><tr><td rowspan="2">ISSUER NAME</td><td rowspan="2">SYMBOL</td><td colspan="8">MOODY&#x27;S®/</td></tr><tr><td>COUPON</td><td>MATURITY</td><td>S&amp;P</td><td>HIGH</td><td>LOW</td><td>LAST</td><td>CHANGE</td><td>YIELD \%</td></tr><tr><td>AMAZON COM INC</td><td>AMZN5182954</td><td>0.450\%</td><td>May 12 24</td><td>/AA</td><td>99.913</td><td>99.739</td><td>99.913</td><td>-0.176</td><td>0.482282</td></tr><tr><td>HORMEL FOODS CORP</td><td>HRL5193038</td><td>0.650\%</td><td>June 03 24</td><td>/A</td><td>100.193</td><td>99.622</td><td>100.122</td><td>-0.061</td><td>0.491393</td></tr><tr><td>GENERAL MTRS FINL CO INC</td><td>GM5198643</td><td>1.500\%</td><td>June 10 26</td><td>/BBB</td><td>100.822</td><td>99.811</td><td>99.903</td><td>-0.872</td><td>1.520917</td></tr><tr><td>BP CAP MKTS AMER INC</td><td>BP4763976</td><td>3.790\%</td><td>Feb 06 24</td><td>A1/</td><td>107.388</td><td>107.34</td><td>107.34</td><td>-0.116</td><td>0.655786</td></tr><tr><td>GLAXOSMITHKLINE CAP INC</td><td>GSK4632356</td><td>3.375\%</td><td>May 15 23</td><td>A2/</td><td>105.279</td><td>105.214</td><td>105.228</td><td>-0.028</td><td>0.328114</td></tr><tr><td>INTEL CORP</td><td>INTC4969549</td><td>4.750\%</td><td>Mar 25 50</td><td>A1/A+</td><td>134.693</td><td>134.275</td><td>134.596</td><td>0.365</td><td>2.933182</td></tr></table> due to the lack of uniformity of bond issues. While most public firms have issued only one class of common stock, they may have dozens of bonds differing by maturity, coupon rate, seniority, and so on. Therefore, the bond market can be quite "thin," with few investors interested in trading a particular issue at any particular time.


The bond listings in Figure 14.2 include the coupon, maturity, price, and yield to maturity of each bond. The "rating" column is the estimation of bond safety given by the bond-rating agencies Moody's and Standard & Poor's. Bonds with gradations of A ratings are safer than those with B ratings or below. As a general rule, safer bonds with higher ratings promise lower yields to maturity than other bonds with similar maturities. We will return to this topic toward the end of the chapter.

Call Provisions on Corporate Bonds Some corporate bonds are issued with call provisions allowing the issuer to repurchase the bond at a specified call price before the maturity date. For example, if a company issues a bond with a high coupon rate when market interest rates are high and interest rates later fall, the firm might like to retire the high-coupon debt and issue new bonds at a lower coupon rate to reduce interest payments. This is called refunding. Callable bonds typically come with a period of call protection, an initial time during which the bonds are not callable. These are referred to as deferred callable bonds.

The option to call the bond is valuable to the firm, allowing it to buy back the bonds and refinance at lower interest rates when market rates fall. Of course, the firm's benefit is the bondholder's burden. When bonds are called, investors must forfeit them for the call price, thereby giving up the attractive coupon rate on their original investment. As compensation for this risk, callable bonds are issued with higher coupons and promised yields to maturity than noncallable bonds.

Figure 14.2 Listing of corporate bonds
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/fa3a3d2b758ba116331b46831fb21c59d70dc476cdf8ccfb2e88bc0afa4c0fef.jpg)
Source: FINRA (Financial Industry Regulatory Authority), August 24, 2021.

# Concept Check 14.1

Suppose that Verizon issues two bonds with identical coupon rates and maturity dates. One bond is callable, however, whereas the other is not. Which bond will sell at a lower price?

Convertible Bonds Convertible bonds give bondholders an option to exchange each bond for a specified number of shares of common stock of the firm. The conversion ratio is the number of shares for which each bond may be exchanged. Suppose a convertible bond is issued at par value of  \$1,000 and is convertible into 40 shares of a firm's stock. The current stock price is\$ 20 per share, so the option to convert is not profitable now. Should the stock price later rise to \$30, however, each bond may be converted profitably into \$1,200 worth of stock. The market conversion value is the current value of the shares for which the bonds may be exchanged. At the \$20 stock price, for example, the bond's conversion value is \$800. The conversion premium is the excess of the bond's value over its conversion value. If the bond were selling currently for \$950, its premium would be \$150.

Convertible bondholders benefit from price appreciation of the company's stock. Not surprisingly, this benefit comes at a price: Convertible bonds offer lower coupon rates and yields to maturity than nonconvertible bonds. However, the actual return on the convertible bond may exceed the stated yield to maturity if the option to convert becomes profitable.

We discuss convertible and callable bonds further in Chapter 20.

Puttable Bonds While a callable bond gives the issuer the option to extend or retire the bond at the call date, an extendable or put bond gives this option to the bondholder. If the bond's coupon rate exceeds current market yields, for instance, the bondholder will choose to extend the bond's life. If the bond's coupon rate is too low, it will be optimal not to extend; in this case, the bondholder will instead reclaim principal, which can be invested at current yields.

Floating-Rate Bonds Floating-rate bonds make interest payments tied to some measure of current market rates. For example, the rate might be adjusted annually to the current T-bill rate plus  $2\%$ . If the 1-year T-bill rate at the adjustment date is  $4\%$ , the bond's coupon rate over the next year would then be  $6\%$ . Therefore, the bond always pays approximately current market rates.

The major risk in floaters has to do with changes in the firm's financial strength. The yield spread is fixed over the life of the security, which may be many years. If the financial health of the firm deteriorates, then investors will demand a greater yield premium than is offered by the security, and the price of the bond will fall. Although the coupon rate on floaters adjusts to changes in the general level of market interest rates, it does not adjust to changes in financial condition.

# Preferred Stock

Although preferred stock, strictly speaking, is considered to be equity, it often is included in the fixed-income universe. This is because, like bonds, preferred stock promises to pay a specified cash flow stream. However, unlike bonds, the failure to pay the promised dividend does not result in corporate bankruptcy. Instead, the dividends owed simply cumulate, and the common stockholders may not receive any dividends until the preferred stockholders have been paid in full. In the event of bankruptcy, preferred stockholders' claims to the firm's assets have lower priority than those of bondholders but higher priority than those of common stockholders.

Preferred stock commonly pays a fixed dividend. Therefore, it is in effect a perpetuity, providing a level cash flow indefinitely. In contrast, floating-rate preferred stock is much like floating-rate bonds. The dividend rate is linked to a measure of current market interest rates and is adjusted at regular intervals.

Unlike interest payments on bonds, dividends on preferred stock are not considered tax-deductible expenses. This reduces their attractiveness as a source of capital for issuing firms. On the other hand, preferred stock offers an offsetting tax advantage. When one corporation buys the preferred stock of another, it pays taxes on only  $50\%$  of the dividends received. For example, if the firm's tax bracket is  $21\%$ , and it receives  $\$10,000$  in preferred-dividend payments, it pays taxes on only half of that income: Total taxes are  $21 \times$ 5,000 = \$1,050. The firm's effective tax rate on preferred dividends is therefore only  $21 \times 50\% = 10.5\%$ . Given this tax rule, it is not surprising that most preferred stock is held by corporations.

Preferred stock rarely gives its holders full voting privileges in the firm. However, if the preferred dividend is skipped, the preferred stockholders may then be provided some voting power.

# Other Domestic Issuers

There are, of course, several issuers of bonds in addition to the Treasury and private corporations. For example, state and local governments issue municipal bonds. Their outstanding feature is that interest payments are tax-free. We examined municipal bonds, the value of the tax exemption, and the equivalent taxable yield of these bonds in Chapter 2.

Government agencies such as the Federal Home Loan Bank Board, the Farm Credit agencies, and the mortgage pass-through agencies Ginnie Mae, Fannie Mae, and Freddie Mac also issue considerable amounts of bonds. These too were reviewed in Chapter 2.

# International Bonds

International bonds are commonly divided into two categories, foreign bonds and Eurobonds. Foreign bonds are issued by a borrower from a country other than the one in which the bond is sold. The bond is denominated in the currency of the country in which it is marketed. For example, a dollar-denominated bond issued in the United States by a German firm is considered a foreign bond. These bonds are given colorful names based on the countries in which they are marketed. Foreign bonds sold in the United States are called Yankee bonds. Yen-denominated bonds sold in Japan by non-Japanese issuers are called *Samurai* bonds. British pound-denominated foreign bonds sold in the United Kingdom are called *bulldog* bonds.

In contrast to foreign bonds, Eurobonds are denominated in one currency, usually that of the issuer, but sold in other national markets. For example, the Eurodollar market refers to dollar-denominated bonds sold outside the United States (not just in Europe). Because the Eurodollar market falls outside U.S. jurisdiction, these bonds are not regulated by U.S. federal agencies. Similarly, Euroyen bonds are yen-denominated bonds selling outside Japan, Eurosterling bonds are pound-denominated bonds selling outside the United Kingdom, and so on.

# Innovation in the Bond Market

Issuers constantly develop innovative bonds with unusual features; these issues illustrate that bond design can be extremely flexible. The novel bonds discussed next will give you a sense of the potential variety in security design.

Maturity Bonds conventionally are issued with maturities up to 30 years, but there is nothing sacrosanct about that limit. In recent years, Japan, the United Kingdom, and Austria have issued bonds with maturities ranging from 50 to 100 years. In the 18th century, the British government issued bonds called consols with infinite maturity (thus making these bonds perpetuities). These, however, have been redeemed and thus no longer trade.

Inverse Floaters These are similar to the floating-rate bonds we described earlier, except that the coupon rate on these bonds falls when the general level of interest rates rises. Investors in these bonds suffer doubly when rates rise. Not only does the present value of each dollar of cash flow from the bond fall, but the level of those cash flows falls as well. Of course, investors in these bonds benefit doubly when rates fall.


Asset-Backed Bonds Miramax has issued bonds with coupon rates tied to the financial performance of its films. Tesla has issued bonds with payments backed by revenue generated by leases of its Model S and Model X cars. Some shale companies have created bonds that will be paid off using the revenue generated by oil and gas wells. These are examples of asset-backed securities. The income from a specified group of assets is used to service the debt. More conventional asset-backed securities are mortgage-backed securities or securities backed by auto or credit card loans, as we discussed in Chapter 2.

Catastrophe Bonds Oriental Land Co., which manages Tokyo Disneyland, has issued bonds with a final payment that depends on whether there has been an earthquake near the park. FIFA (the Fédération Internationale de Football Association) once issued catastrophe bonds with payments that would have been halted if terrorism had forced the cancellation of the World Cup. The World Bank has issued "pandemic bonds" in which investors will forfeit their principal if any of six deadly viruses such as Ebola reach a specified contagion level. The bonds raised money for the World Bank's efforts to fight potential pandemics, but they will relieve the Bank of its payment burden if it is overwhelmed with expenses from disease outbreaks.

These bonds are a way to transfer "catastrophe risk" to the capital markets. Investors in these bonds receive compensation in the form of higher coupon rates for taking on the risk. But in the event of a catastrophe, the bondholders will lose all or part of their investments. "Disaster" can be defined either by total insured losses or by specific criteria such as wind speed in a hurricane, Richter level in an earthquake, or contagion level as in the pandemic bonds. Issuance of catastrophe bonds has grown in recent years as insurers have sought ways to spread their risks across a wider spectrum of the capital market. More than 100 billion of various catastrophe bonds were outstanding in 2021.

Indexed Bonds Indexed bonds make payments that are tied to a general price index or the price of a particular commodity. For example, Mexico has issued bonds with payments that depend on the price of oil. Some bonds are indexed to the general price level. The U.S. Treasury started issuing such inflation-indexed bonds in January 1997. They are called Treasury Inflation Protected Securities (TIPS). By tying the par value of the bond to the general level of prices, coupon payments as well as the final repayment of par value on these bonds increase in direct proportion to the Consumer Price Index. Therefore, the interest rate on these bonds is a risk-free real rate.

To illustrate how TIPS work, consider a newly issued bond with a 3-year maturity, par value of  \$1,000, and a coupon rate of 4\%$ . For simplicity, we will assume the bond makes annual coupon payments. Assume that inflation turns out to be  $2\%$ ,  $3\%$ , and  $1\%$  in the next three years. Table 14.1 shows how the bond's cash flows will be calculated. The first payment comes at the end of the first year, at  $t = 1$ . Because inflation over the year was  $2\%$ , the par value of the bond increases from 1,000 to \$1,020. The  $4\%$  coupon payment is therefore .04 × $1,020 = $40.80. Notice that par value increases by the inflation rate, and because the coupon payments are  $4\%$  of par, they too increase in proportion to the general price level. Therefore, the cash flows paid by the bond are fixed in real terms. When the bond matures, the investor receives a final coupon payment of \$42.44 plus the (price-level-indexed) repayment of principal, 1,061.11.

Table 14.1
Principal and interest payments for a Treasury Inflation Protected Security

<table><tr><td>Time</td><td>Inflation in Year Just Ended</td><td>Par Value</td><td>Coupon Payment</td><td>+</td><td>Principal Repayment</td><td>=</td><td>Total Payment</td></tr><tr><td>0</td><td></td><td>$1,000.00</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>1</td><td>2\%</td><td>1,020.00</td><td>$40.80</td><td></td><td>$ 0</td><td></td><td>$ 40.80</td></tr><tr><td>2</td><td>3</td><td>1,050.60</td><td>42.02</td><td></td><td>0</td><td></td><td>42.02</td></tr><tr><td>3</td><td>1</td><td>1,061.11</td><td>42.44</td><td></td><td>1,061.11</td><td></td><td>1,103.55</td></tr></table>

The nominal rate of return on the bond in the first year is

$$
\text {Nominal return} = \frac {\text {Interest} + \text {Price appreciation}}{\text {Initial price}} = \frac {40.80 + 20}{1,000} = 6.08 \%
$$

The real rate of return is precisely the  $4\%$  real yield on the bond:

$$
\text{Real return} = \frac {1 + \text {Nominal return}}{1 + \text {Inflation}} - 1 = \frac {1.0608}{1.02} - 1 = .04, \text {or} 4 \%
$$

One can show in a similar manner (see Problem 18 in the end-of-chapter problems) that the rate of return in each of the three years is  $4\%$  as long as the real yield on the bond remains constant. If real yields do change, then there will be capital gains or losses on the bond. In mid-2022, the real yield on 10-year TIPS bonds was a bit higher than  $5\%$ .

# 14.2 Bond Pricing

A bond's coupon and principal repayments all occur months or years in the future. Therefore, the price an investor is willing to pay for the bond depends on the value of dollars to be received in the future compared to dollars in hand today. This "present value" calculation depends in turn on market interest rates. As we saw in Chapter 5, the nominal risk-free interest rate equals the sum of (1) a real risk-free rate of return and (2) a premium above the real rate to compensate for expected inflation. In addition, because most bonds are not riskless, the discount rate will embody an additional premium that reflects bond-specific characteristics such as default risk, liquidity, tax attributes, call risk, and so on.

We simplify for now by assuming there is one interest rate that is appropriate for discounting cash flows of any maturity, but we can relax this assumption easily. In practice, there may be different discount rates for cash flows accruing in different periods. For the time being, however, we ignore this refinement.

To value a security, we discount its expected cash flows by the appropriate discount rate. Bond cash flows consist of coupon payments until the maturity date plus the final payment of par value. Therefore, the present value of all payments is:

Bond value  $=$  Present value of coupons  $^+$  Present value of par value

This present value is the equilibrium price at which we should expect the bond to sell.

If we call the maturity date  $T$  and call the interest rate appropriate for discounting that bond's payments  $r$ , the present value can be written as

$$
\text {B o n d v a l u e} = \sum_ {t = 1} ^ {T} \frac {\text {C o u p o n}}{(1 + r) ^ {t}} + \frac {\text {P a r v a l u e}}{(1 + r) ^ {T}} \tag {14.1}
$$

The summation sign in Equation 14.1 directs us to add the present value of each coupon payment; each coupon is discounted based on the time until it will be paid. The first term on the right-hand side of Equation 14.1 is the present value of an annuity. The second term is the present value of a single amount, the final payment of the bond's par value.

A word about terminology. It is common to refer to  $r$  as the market interest rate. In reality, of course, each bond will have its own appropriate discount rate depending on its risk, maturity, liquidity, and so on, so  $r$  really should be interpreted as an equilibrium rate for each specific bond. Because these rates all move together, however, use of the abstract notion of "a" market interest rate is usually acceptable. We will see in the next section that each particular bond's discount rate is usually measured by its yield to maturity, which is the discount rate at which the bond's price equals the present value of its cash flows.

You may recall from an introductory finance class that the present value of a 1 annuity that lasts for T periods when the interest rate equals r is \frac{1}{r} \left[ 1 - \frac{1}{(1 + r)^T} \right]. We call this expression the T-period annuity factor for an interest rate of r. Similarly, we call \frac{1}{(1 + r)^T} the PV factor, that is, the present value of a single payment of 1 to be received in T periods. Therefore, we can write the rewrite Equation 14.1 for the value of the bond as

$$
\begin{array}{l} \text {V a l u e} = \text {C o u p o n} \times \frac {1}{r} \left[ 1 - \frac {1}{(1 + r) ^ {T}} \right] + \text {P a r v a l u e} \times \frac {1}{(1 + r) ^ {T}} \tag {14.2} \\ = \text {C o u p o n} \times \text {A n n u i t y f a c t o r} (r, T) + \text {P a r v a l u e} \times \text {P V f a c t o r} (r, T) \\ \end{array}
$$

# Example 14.2 Bond Pricing

We discussed earlier an  $8 \%$ coupon, 30- year maturity bond with par value of  \$1,000 paying 60 semiannual coupon payments of\$ 40 each. Suppose that the interest rate is  $8 \%$ annually, or  $r = 4 \%$  per six- month period. Then the value of the bond can be written as

$$
\begin{array}{l} \text {B o n d V a l u e} = \sum_ {t = 1} ^ {6 0} \frac {\mathbb {S} 4 0}{(1 . 0 4) ^ {t}} + \frac {\mathbb {S} 1 , 0 0 0}{(1 . 0 4) ^ {6 0}} \tag {14.3} \\ = \ 40 \times \text{Annuity factor} (4\% ,60) + \ 1,000 \times \text{PV factor} (4\% ,60)$ \\ \end{array}
$$

It is easy to confirm that the present value of the bond's 60 semiannual coupon payments of  \$40 each is\$ 904.94 and that the \$1,000 final payment of par value has a present value of \$95.06, for a total bond value of 1,000. You can calculate this value directly from Equation 14.2, perform these calculations on any financial calculator (see Example 14.3), use a spreadsheet program (see column F of Spreadsheet 14.1), or use a set of present value tables.

In this example, the coupon rate equals the market interest rate, and the bond should sell at par value. If the interest rate were not equal to the bond's coupon rate, the bond would

4Here is a quick derivation of the formula for the present value of an annuity. An annuity lasting T periods can be viewed as equivalent to a perpetuity whose first payment comes at the end of the current period less another perpetuity whose first payment comes at the end of the (T + 1)\mathrm{st} period. The immediate perpetuity net of the delayed perpetuity provides exactly T payments. We know that the value of a \1 per period perpetuity is \1/r. Therefore, the present value of the delayed perpetuity is \1/r discounted for T additional periods, or \frac{1}{r} \times \frac{1}{(1 + r)^T}.

The present value of the annuity is the present value of the first perpetuity minus the present value of the delayed perpetuity, or  $\frac{1}{r}\left[1 - \frac{1}{(1 + r)^T}\right]$ .

not sell at par. For example, if the interest rate rises to  $10\%$  (5\% per six months), the bond's present value will fall by \$189.29 to \$ 810.71, as follows:

$$
\begin{array}{l} \$ 40 \times Annuity factor (5 \%, 60) + \$ 1,000 \times PV factor (5 \%, 60) \\ = \$ 7 5 7. 1 7 + \$ 5 3. 5 4 = \$ 8 1 0. 7 1 \\ \end{array}
$$

At a higher discount rate, the present value of the payments (and therefore, the equilibrium bond price) is lower. Therefore, bond prices fall as market interest rates rise. This illustrates a crucial general rule in bond valuation.

Bond values are tedious to calculate without a spreadsheet or a financial calculator, but they are easy to calculate with either. Financial calculators designed with present and future value formulas already programmed can greatly simplify calculations of the sort we just encountered in Example 14.2. The basic financial calculator uses five keys that correspond to the inputs for time-value-of-money problems such as bond pricing:

1.  $n$  is the number of time periods. For a bond,  $n$  equals the number of periods until maturity. If the bond makes semiannual payments,  $n$  is the number of half-year periods or, equivalently, the number of semiannual coupon payments. For example, if the bond has 10 years until maturity, you would enter 20 for  $n$  because each payment period is one-half year.
2.  $i$  is the interest rate per period, expressed as a percentage (not as a decimal). For example, if the interest rate is  $6\%$ , you would enter 6, not .06.
3. PV is the present value. Many calculators require that PV be entered as a negative number because the purchase of the bond entails a cash outflow, while the receipt of coupon payments and face value are cash inflows.
4.  $FV$  is the future value or face value of the bond. In general, FV is interpreted as a one-time future cash flow, which, for bonds, is the face (i.e., par) value.
5. PMT is the amount of any recurring payment. For coupon bonds, PMT is the coupon payment; for zero-coupon bonds, PMT is zero.

Given any four of these inputs, the calculator will solve for the fifth. We can illustrate with the bond presented in Example 14.2.

# Example 14.3 Bond Pricing on a Financial Calculator

To find the bond value when the annual market interest rate is  $8\%$ , you would enter these inputs (in any order): n 60 The bond has a maturity of 30 years, so it makes 60 semiannual payments.


i 4 The semiannual market interest rate is  $4\%$

FV 1,000 The bond will provide a one-time cash flow of 1,000 when it matures.

PMT 40 Each semiannual coupon payment is 40.

Here is a trap to avoid. You should not confuse the bond's coupon rate, which determines the interest paid to the bondholder, with the market interest rate. Once a bond is issued, its coupon rate is fixed. When the market interest rate increases, investors discount any fixed payments at a higher discount rate, which implies that present values and bond prices fall.

On most calculators, you now punch the "compute" key (labeled COMP or CPT) and then enter PV to obtain the present value today of the bond's cash flows. If you do this, you should find a value of  $-1,000$ . The negative sign signifies that while the investor receives cash flows from the bond, the price you must pay to buy the bond is a cash outflow, or a negative cash flow.

If you want to find the value of the bond when the interest rate is  $10\%$  (the second part of Example 14.2), just enter  $5\%$  for the semiannual interest rate (type "5" and then "i"), and when you compute PV, you will find that it is  $-810.71$ .

Figure 14.3 shows the value of the 30-year,  $8\%$  coupon bond for a range of interest rates, including  $8\%$ , at which the bond will sell at par, and  $10\%$ , at which it will sell for 810.71. The negative slope illustrates the inverse relationship between bond values and the interest rate. The shape of the curve in Figure 14.3 implies that an increase in the interest rate results in a smaller decline in value than the increase resulting from a rate decrease of equal magnitude. This property is called convexity because of the convex shape of the valuation curve. This curvature reflects the fact that progressive increases in the interest rate result in progressively smaller reductions in bond value. Therefore, the curve becomes flatter at higher interest rates. We return to convexity in Chapter 16.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/0afe6769056a2c047130b3e6a8e9de598de6b6339c2a1cb09eca16726d2ffd5a.jpg)

# Concept Check 14.2

Calculate the value of the 30-year,  $8\%$  coupon bond if the market interest rate falls from  $4\%$  to  $3\%$  per half-year. Compare the increase in value when the interest rate falls from  $4\%$  to  $3\%$  to the loss of value when the rate increases from  $4\%$  to  $5\%$ .

Corporate bonds typically are issued at par value. This means that the underwriters of the bond issue (the firms that market the bonds to the public for the issuing corporation) must choose a coupon rate that very closely approximates market yields. If the coupon rate is inadequate, investors will not be willing to pay par value for the bond.

After the bonds are issued, bondholders may buy or sell bonds in secondary markets. In these markets, bond values (and therefore prices) fluctuate inversely with the market interest rate.

The inverse relationship between price and the interest rate is a central feature of fixed-income securities. Interest rate fluctuations represent the main source of risk in the fixed-income market, and we devote considerable attention in Chapter 16 to assessing the sensitivity of bond value to

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/abf45b9780b906a033215f55674ce2fecd46eb3724e8f3a3fe4508026178ba63.jpg)
Figure 14.3 The inverse relationship between bond values and the interest rate. Value of an  $8\%$  coupon bond with 30-year maturity making semiannual payments.

# Table 14.2

Bond values at different interest rates (8\% coupon bond, coupons paid semiannually).

<table><tr><td rowspan="2">Time to Maturity</td><td colspan="5">Bond Value at Given Market Interest Rate</td></tr><tr><td>2\%</td><td>4\%</td><td>6\%</td><td>8\%</td><td>10\%</td></tr><tr><td>1 year</td><td>1,059.11</td><td>1,038.83</td><td>1,019.13</td><td>1,000.00</td><td>981.41</td></tr><tr><td>10 years</td><td>1,541.37</td><td>1,327.03</td><td>1,148.77</td><td>1,000.00</td><td>875.35</td></tr><tr><td>20 years</td><td>1,985.04</td><td>1,547.11</td><td>1,231.15</td><td>1,000.00</td><td>828.41</td></tr><tr><td>30 years</td><td>2,348.65</td><td>1,695.22</td><td>1,276.76</td><td>1,000.00</td><td>810.71</td></tr></table> market yields. For now, however, we simply highlight one key factor that determines that sensitivity, namely, the maturity of the bond.


As a general rule, keeping all other factors the same, the longer the maturity of the bond, the greater the sensitivity of value to fluctuations in the interest rate. For example, consider Table 14.2, which presents the value of an  $8\%$  coupon bond at different market yields and times to maturity. For any departure of the interest rate from  $8\%$  (the rate at which the bond should sell at par value), the change in value is greater for longer times to maturity.

This makes sense. If you buy the bond at par with an  $8\%$  coupon rate, and market rates subsequently rise, then you suffer a loss: You have tied up your money earning  $8\%$  when alternative investments offer higher returns. The bond is now worth less than you paid for it. The longer the period for which your money is tied up, the greater the loss, and correspondingly the greater the drop in the bond price. In Table 14.2, the row for 1-year maturity bonds shows little price sensitivity—that is, with only one year's earnings at stake, changes in interest rates are not too threatening. But for 30-year maturity bonds, interest rate swings have a large impact on value. The force of discounting is greatest for the longest-term bonds.

This is why short-term Treasury securities such as T-bills are considered to be the safest. In addition to being free of default risk, they are also largely free of price risk attributable to interest rate volatility.

# Bond Pricing between Coupon Dates

Equation 14.2 assumes that the next coupon payment is in precisely one payment period, either a year for an annual payment bond or six months for a semiannual payment bond. But you probably want to be able to value bonds all 365 days of the year, not just on the one or two dates each year that it makes a coupon payment!

In principle, the fact that the bond is between coupon dates does not affect the valuation problem. The procedure is always the same: Compute the present value of each remaining payment and sum up. But if you are between coupon dates, there will be fractional periods remaining until each payment, and this does complicate the arithmetic computations.

Fortunately, bond pricing functions are included in most spreadsheet programs such as Excel. The spreadsheet allows you to enter today's date as well as the maturity date of the bond and so can provide equilibrium bond prices for any date. The nearby box shows you how.

As we pointed out earlier, bond prices are typically quoted net of accrued interest. These prices, which appear in the financial press, are called flat prices. The invoice price a buyer actually pays for the bond includes accrued interest. Thus,

$$
\text {I n v o i c e} = \text {F l a t} + \text {A c c r u e d}
$$

When a bond pays its coupon, flat price equals invoice price because at that moment, accrued interest reverts to zero. However, this will be the exception, not the rule.

Excel pricing functions provide the flat price of the bond. To find the invoice price, we need to add accrued interest. Fortunately, Excel also provides functions that count the days since the last coupon payment date and thus can be used to compute accrued interest. The nearby box also illustrates how to use these functions. The box provides examples using a bond that has just paid a coupon, and so has zero accrued interest, as well as a bond that is between coupon dates.

# 14.3 Bond Yields

Most bonds do not sell for par value. But ultimately, barring default, they will mature to par value. Therefore, we would like a measure of rate of return that accounts for both current income and the price increase or decrease over the bond's life. The yield to maturity is the standard measure of the total rate of return. However, it is far from perfect, and we will explore several variations of this measure.

# Yield to Maturity

In practice, an investor considering the purchase of a bond is not quoted a promised rate of return. Instead, one must use the bond price, maturity date, and coupon payments to infer the return offered over the bond's life. The yield to maturity (YTM) is defined as the interest rate that makes the present value of a bond's payments equal to its price. It is often interpreted as a measure of the average rate of return that will be earned on a bond if it is bought now and held until maturity. To calculate the yield to maturity, we solve the bond valuation equation for the interest rate given the bond's price.

# Example 14.4 Yield to Maturity

Suppose an  $8 \%$ coupon, 30- year bond is selling at \$1,276.76. What average rate of return would be earned by an investor purchasing the bond at this price? We find the interest rate at which the present value of the remaining 60 semiannual payments equals the bond price. This is the rate consistent with the observed price of the bond. Therefore, we solve for  $r$  in the following equation:

Price = Present Value

$$
\$ 1,276.76 = \sum_ {t = 1} ^ {6 0} \frac {\$ 4 0}{(1 + r) ^ {t}} + \frac {\$ 1 , 0 0 0}{(1 + r) ^ {6 0}}
$$

$$
1, 2 7 6. 7 6 = 4 0 \times \text {A n n u i t y f a c t o r} (r, 6 0) + 1, 0 0 0 \times \text {P V f a c t o r} (r, 6 0)
$$

These equations have only one unknown variable, the interest rate,  $r$ . As we will see in a moment, you can use a financial calculator or spreadsheet to confirm that the solution is  $r = .03$ , or  $3\%$ , per half-year. This is the bond's yield to maturity.

The financial press annualizes the semiannual yield using simple interest techniques, resulting in an annual percentage rate, or APR. Yields annualized using simple interest are also called "bond equivalent yields." Therefore, the semiannual yield would be doubled and reported as a bond equivalent yield of  $6\%$ .

The effective annual yield of the bond, in contrast, accounts for compound interest. If one earns  $3\%$  interest every six months, then after one year, each dollar invested grows with interest to  $\$1 \times (1.03)^2 = \$1.0609$ , and the effective annual interest rate on the bond is  $6.09\%$ .

In Example 14.4, we noted that a financial calculator or spreadsheet can be used to find the yield to maturity on the coupon bond. Here are two examples demonstrating how

Excel and most other spreadsheet programs provide built-in functions to compute bond prices and yields. They typically ask you to input both the date you buy the bond (called the settlement date) and the maturity date of the bond. The Excel function for the bond's value is

= PRICE(settlement date, maturity date, annual coupon rate, yield to maturity, redemption value as percent of par value, number of coupon payments per year)

For the  $2.25\%$  coupon August 2049 maturity bond highlighted in Figure 14.1, we would enter the values in Spreadsheet 14.1, Column B (Notice that in spreadsheets, we must enter interest rates as decimals, not percentages). Alternatively, we could simply enter the following function in Excel:

= PRICE(DATE(2021,8,15), DATE(2049,8,15), .0225, .01938, 100, 2)

The DATE function in Excel, which we use for both the settlement and maturity dates, uses the format DATE(year,month,day). The first date is August 15, 2021, when the bond is purchased, and the second is August 15, 2049, when it matures. Most bonds pay coupons either on the 15th or the last business day of the month.

Notice that the coupon rate and yield to maturity are expressed as decimals, not percentages. In most cases, redemption value is 100 (i.e.,  $100\%$  of par value), and the resulting price similarly is expressed as a percent of par value. Occasionally, however, you may encounter bonds that pay off at a premium or discount to par value. One example would be callable bonds, discussed shortly.

The value of the bond returned by the pricing function is 106.7176 (cell B12), which is within one cent of the ask price reported in Table 14.1. (The yield to maturity is reported to only three decimal places, which results in a little rounding error.) This bond has just paid a coupon. In other words, the settlement date is precisely at the beginning of the coupon period, so no adjustment for accrued interest is necessary.


To illustrate the procedure for bonds between coupon payments, consider the  $3\%$  coupon November 2044 bond, also appearing in Figure 14.1. Using the entries in column D of the spreadsheet, we find in cell D12 that the (flat) price of the bond is 120.5103, which matches the ask price given in the figure except for trivial rounding error.

What about the bond's invoice price? Rows 13 through 16 make the necessary adjustments. The function described in cell C13 counts the days since the last coupon. This day count is based on the bond's settlement date, maturity date, coupon period (1 = annual; 2 = semiannual), and day count convention (choice 1 uses actual days). The function described in cell C14 counts the total days in each coupon payment period. Therefore, the entries for accrued interest in row 15 are the semiannual coupon multiplied by the fraction of a coupon period that has elapsed since the last payment. Finally, the invoice price in row 16 is the sum of the flat price plus accrued interest.

As a final example, suppose you wish to find the price of the bond in Example 14.2. It is a 30-year maturity bond with a coupon rate of  $8\%$  (paid semiannually). The market interest rate given in the latter part of the example is  $10\%$ . However, you are not given a specific settlement or maturity date. You can still use the PRICE function to value the bond. Simply choose an arbitrary settlement date (January 1, 2000, is convenient) and let the maturity date be 30 years hence. The appropriate inputs appear in column F of the spreadsheet, with the resulting price,  $81.0707\%$  of face value, appearing in cell F16.

<table><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td></tr><tr><td>1</td><td colspan="2">2.25\% coupon bond,</td><td></td><td colspan="2">3\% coupon bond,</td><td>8\% coupon bond,</td></tr><tr><td>2</td><td colspan="2">maturing Aug 2049</td><td>Formula in column B</td><td colspan="2">maturing November 2044</td><td>30-year maturity</td></tr><tr><td>3</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>4</td><td>Settlement date</td><td>8/15/2021</td><td>=DATE (2021, 8, 15)</td><td>8/15/2021</td><td></td><td>1/1/2000</td></tr><tr><td>5</td><td>Maturity date</td><td>8/15/2049</td><td>=DATE (2049, 8, 15)</td><td>11/15/2044</td><td></td><td>1/1/2030</td></tr><tr><td>6</td><td>Annual coupon rate</td><td>0.0225</td><td></td><td>0.03</td><td></td><td>0.08</td></tr><tr><td>7</td><td>Yield to maturity</td><td>0.01938</td><td></td><td>0.01904</td><td></td><td>0.1</td></tr><tr><td>8</td><td>Redemption value (\% of face value)</td><td>100</td><td></td><td>100</td><td></td><td>100</td></tr><tr><td>9</td><td>Coupon payments per year</td><td>2</td><td></td><td>2</td><td></td><td>2</td></tr><tr><td>10</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>11</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>12</td><td>Flat price (\% of par)</td><td>106.7176</td><td>=PRICE(B4,B5,B6,B7,B8,B9)</td><td>120.5103</td><td></td><td>81.0707</td></tr><tr><td>13</td><td>Days since last coupon</td><td>0</td><td>=COUPDAYBS(B4,B5,2,1)</td><td>92</td><td></td><td>0</td></tr><tr><td>14</td><td>Days in coupon period</td><td>184</td><td>=COUPDAYS(B4,B5,2,1)</td><td>184</td><td></td><td>182</td></tr><tr><td>15</td><td>Accrued interest</td><td>0</td><td>=(B13/B14)*B6*100/2</td><td>0.750</td><td></td><td>0</td></tr><tr><td>16</td><td>Invoice price</td><td>106.7176</td><td>=B12+B15</td><td>121.2603</td><td></td><td>81.0707</td></tr></table>

# Spreadsheet 14.1

Bond Pricing in Excel

# excel

Please visit us at www.mhhe.com/Bodie13e


you can use these tools. Example 14.5 illustrates the use of financial calculators while Example 14.6 uses Excel.

# Example 14.5 Finding the Yield to Maturity Using a Financial Calculator n 60 The bond has a maturity of 30 years, so it makes 60 semiannual payments.


PMT 40 Each semiannual coupon payment is 40.

PV  $(-)1,276.76$  The bond can be purchased for  $1,276.76$ , which on some calculators must be entered as a negative number as it is a cash outflow.

FV 1,000 The bond will provide a one-time cash flow of 1,000 when it matures.

Given these inputs, you now use the calculator to find the interest rate at which  \$1,276.76 actually equals the present value of the 60 payments of\$ 40 plus the one-time payment of 1,000 at maturity. On some calculators, you first punch the "compute" key (labeled COMP or CPT) and then enter i. You should find that i = 3, or 3\% semiannually, as we claimed. Notice that just as the cash flows are paid semiannually, the computed interest rate is a rate per semi-annual time period. The bond equivalent yield will be reported in the financial press as 6\%.

Excel also contains built-in functions that you can use to find yield to maturity. Example 14.6, along with Spreadsheet 14.2, illustrates these functions.

# Example 14.6 Finding Yield to Maturity Using Excel

Excel's function for yield to maturity is:

= YIELD(settlement date, maturity date, annual coupon rate, bond price, redemption value as percent of par value, number of coupon payments per year)

The bond price used in the function should be the reported, or "flat," price, without accrued interest. For example, to find the yield to maturity of the semiannual payment bond in Example 14.4, we would use column B of Spreadsheet 14.2. If the coupons were paid only annually, we would change the entry for payments per year to 1 (see cell D8), and the yield would fall slightly to  $5.99\%$ .

<table><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td></tr><tr><td>1</td><td colspan="3">Semiannual coupons</td><td colspan="2">Annual coupons</td></tr><tr><td>2</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>3</td><td>Settlement date</td><td>1/1/2000</td><td></td><td>1/1/2000</td><td></td></tr><tr><td>4</td><td>Maturity date</td><td>1/1/2030</td><td></td><td>1/1/2030</td><td></td></tr><tr><td>5</td><td>Annual coupon rate</td><td>0.08</td><td></td><td>0.08</td><td></td></tr><tr><td>6</td><td>Bond price (flat)</td><td>127.676</td><td></td><td>127.676</td><td></td></tr><tr><td>7</td><td>Redemption value (\% of face value)</td><td>100</td><td></td><td>100</td><td></td></tr><tr><td>8</td><td>Coupon payments per year</td><td>2</td><td></td><td>1</td><td></td></tr><tr><td>9</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>10</td><td>Yield to maturity (decimal)</td><td>0.0600</td><td></td><td>0.0599</td><td></td></tr><tr><td>11</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>12</td><td colspan="4">The formula entered here is: =YIELD(B3,B4,B5,B6,B7,B8)</td><td></td></tr></table>

# Spreadsheet 14.2

Finding yield to maturity in Excel

The yield to maturity is the internal rate of return on an investment in the bond. It can be interpreted as the compound rate of return over the life of the bond under the assumption that all bond coupons can be reinvested at that yield and is therefore widely accepted as a proxy for average return.

Yield to maturity differs from the current yield of a bond, which is the bond's annual coupon payment divided by its price. The current yield of the  $8\%$ , 30-year bond selling at \$1,276.76 is \$ 80/\$1,276.76 = .0627, or 6.27\%$ , per year. In contrast, we just saw that the effective annual yield to maturity is  $6.09\%$ . For this bond, which is selling at a premium over par value (1,276 rather than \$1,000), the coupon rate (8\%) exceeds the current yield (6.27\%), which exceeds the yield to maturity (6.09\%). The coupon rate exceeds current yield because the coupon rate divides the coupon payments by par value (\$ 1,000), which is less than the bond price ( \$1,276). In turn, the current yield exceeds yield to maturity because the yield to maturity accounts for the built-in capital loss on the bond; the bond bought today for \$ 1,276 will eventually fall in value to \$1,000 at maturity.

Examples 14.4, 14.5, and 14.6 illustrate a general rule: For premium bonds (bonds selling above par value), coupon rate is greater than current yield, which in turn is greater than yield to maturity. For discount bonds (bonds selling below par value), these relationships are reversed (see Concept Check 14.3).

It is common to hear people talking loosely about the yield on a bond. In these cases, they almost always are referring to the yield to maturity.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/a6237ae1da017688ae7791676c3ff6df3da38f509c6c799a392acb6f4cd5c787.jpg)

# Concept Check 14.3

What will be the relationship among coupon rate, current yield, and yield to maturity for bonds selling at discounts from par? Illustrate using the 30-year maturity,  $8\%$  (semiannual payment) coupon bond, assuming it is selling at a yield to maturity of  $10\%$ .

# Yield to Call

Yield to maturity is calculated on the assumption that the bond will be held until maturity. What if the bond is callable, however, and may be retired prior to the maturity date?

Figure 14.4 illustrates the risk of call to the bondholder. The top curve is the value of a "straight" (i.e., noncallable) bond with par value 1,000, an 8\% coupon rate, and a 30-year time to maturity as a function of the market interest rate. If interest rates fall, the bond price, which equals the present value of the promised payments, can rise substantially.

Now consider a bond that has the same coupon rate and maturity date but is callable at  $110\%$  of par value, or 1,100. When interest rates fall, the present value of the bond's scheduled payments rises, but the call provision allows the issuer to repurchase the bond at the call price. If the call price is less than the present value of the scheduled payments, the issuer may call the bond back from the bondholder.

The lower curve in Figure 14.4 is the value of the callable bond. At high interest rates, the risk of call is negligible because the present value of scheduled payments is less than the call price; therefore the values of the straight and callable bonds converge. At lower rates, however, the values of the bonds begin to diverge, with the difference reflecting the value of the firm's option to reclaim the callable bond at the call price. At very low rates, the present value of scheduled payments significantly exceeds the call price, so the bond is called. Its value at this point is simply the call price, 1,100.


This analysis suggests that investors might be more interested in a bond's yield to call than its yield to maturity, especially if the bond is likely to be called. The yield to call is calculated just like the yield to maturity except that the time until call replaces time until maturity, and the call price replaces par value. This computation is sometimes called "yield to first call," as it assumes the issuer will call the bond as soon as it may do so.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/0e07522e387ebc7478a163c0fd445d888ab582e6b26d3ee484a9aa741c5afa9a.jpg)
Figure 14.4 Bond values: Callable and straight debt (coupon = 8\%; maturity = 30 years; semiannual payments)

# Example 14.7 Yield to Call

Suppose the  $8 \%$ coupon, 30- year- maturity bond sells for \$1,150 and is callable in 10 years at a call price of \$1,100. Its yield to maturity and yield to call would be calculated using the following inputs:

<table><tr><td></td><td>Yield to Call</td><td>Yield to Maturity</td></tr><tr><td>Coupon payment</td><td>$40</td><td>$40</td></tr><tr><td>Number of semiannual periods</td><td>20 periods</td><td>60 periods</td></tr><tr><td>Final payment</td><td>$1,100</td><td>$1,000</td></tr><tr><td>Price</td><td>$1,150</td><td>$1,150</td></tr></table>

Yield to call is then  $6.64\%$ . [To confirm this on a calculator, input  $n = 20$ ;  $\mathrm{PV} = (-)1150$ ;  $\mathrm{FV} = 1100$ ;  $\mathrm{PMT} = 40$ ; compute  $i$  as  $3.32\%$ , or  $6.64\%$  bond equivalent yield.] Yield to maturity is  $6.82\%$ . [To confirm, input  $n = 60$ ;  $\mathrm{PV} = (-)1150$ ;  $\mathrm{FV} = 1000$ ;  $\mathrm{PMT} = 40$ ; compute  $i$  as  $3.41\%$ , or  $6.82\%$  bond equivalent yield.] In Excel, you can calculate yield to call as  $= \mathrm{YIELD(DATE(2000,1,1), DATE(2010,1,1), .08, 115, 110, 2)}$ . Notice that redemption value is input as  $110$ , that is,  $110\%$  of par value.

While most callable bonds are issued with an initial period of explicit call protection, an additional implicit form of call protection operates for bonds selling at deep discounts from their call prices. Even if interest rates fall a bit, deep-discount bonds still will sell below the call price and thus will not be vulnerable to a call.

Premium bonds selling near their call prices are especially apt to be called if rates fall further. If interest rates fall, a callable premium bond is likely to provide a lower return than could be earned on a discount bond whose potential price appreciation is not limited by the likelihood of a call. This is why investors in premium bonds may be most interested in yield to call.


![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/c07e0c91ce28023070855d446fa1cdc16996a6d545e609ef57ef31e26718d4fd.jpg)

# Concept Check 14.4 a. The yield to maturity on two 10-year-maturity bonds currently is  $7 \%$ Each bond has a call price of \$1,100. One bond has a coupon rate of  $6 \text{‰}$ , the other  $8 \%$ Assume for simplicity that bonds are called as soon as the present value of their remaining payments exceeds their call price. What will be the capital gain on each bond if the market interest rate suddenly falls to  $6 \%$ ?

b. A 20-year-maturity 9 \%coupon bond paying coupons semiannually is callable in five years at a call price of \1,050. The bond currently sells at a yield to maturity of 8 \%What is the yield to call?

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/8d9b2ee523f89a08a17eb5dd300ba7a61890fb9ab127e5dceee29d940b65b8be.jpg)
A: Reinvestment Rate = 10\%

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/1c8100590a873817e77ad1fa139777df8acaa81bed164a7d8dcae2cac4f11bbf.jpg)
B: Reinvestment Rate = 8\%
Figure 14.5 Growth of invested funds

# Realized Compound Return versus Yield to Maturity

Yield to maturity will equal the rate of return realized over the life of the bond if all coupons are reinvested and earn the bond's yield to maturity. Consider, for example, a 2-year bond selling at par value paying a  $10\%$  coupon once a year. The yield to maturity is  $10\%$ . If the  $\$100$  coupon payment is reinvested at an interest rate of  $10\%$ , the  $\$1,000$  investment in the bond will grow after two years to  $\$1,210$ , as illustrated in Figure 14.5, Panel A. The coupon paid in the first year is reinvested and grows with interest to a second-year value of  $\$110$ , which together with the second coupon payment and payment of par value in the second year results in a total value of  $\$1,210$ .

To summarize, the initial value of the investment is  $V_{0} = \1,000$ . The final value in two years is  $V_{2} = \$ 1,210 . The compound rate of return, therefore, is calculated as follows:

$$
\begin{array}{l} V _ {0} (1 + r) ^ {2} = V _ {2} \\ \$ 1,000 (1 + r) ^ {2} = \$ 1,210 \\ r = .10 = 10\% \\ \end{array}
$$

With a reinvestment rate equal to the  $10\%$  yield to maturity, the realized compound return also equals yield to maturity.

But what if the reinvestment rate is not  $10\%$ ? If the coupon can be invested at more than  $10\%$ , funds will grow to more than \$1,210, and the realized compound return will exceed  $10\%$ . If the reinvestment rate is less than  $10\%$ , so will be the realized compound return. Consider the following example.

# Example 14.8 Realized Compound Return

Suppose the interest rate at which the coupon can be invested is only  $8\%$ . The following calculations are illustrated in Figure 14.5, Panel B.

Future value of first coupon payment with interest earnings = \ 100 \times 1.08 = \ 108\$
+ Cash payment in second year (final coupon plus par value) 1,100
= Total value of investment with reinvested coupons 1,208

The realized compound return is the compound rate of growth of invested funds, assuming that all coupon payments are reinvested. The investor purchased the bond for par at  \$1,000, and this investment grew to\$ 1,208. So the realized compound yield is less than 10\%:

$$
\begin{array}{l} V _ {0} (1 + r) ^ {2} = V _ {2} \\ \$ 1,000 (1 + r) ^ {2} = \$ 1,208 \\ r = .0991 = 9.91 \% \\ \end{array}
$$

Example 14.8 highlights the problem with conventional yield to maturity when reinvestment rates can change over time. Conventional yield to maturity will not equal realized compound return. However, with future interest rate uncertainty, the rates at which interim coupons will be reinvested are not yet known. Therefore, although realized compound return can be computed after the investment period, it cannot be computed in advance without a forecast of future reinvestment rates. This reduces much of the attraction of the realized return measure.

Forecasting the realized compound yield over various investment periods is called horizon analysis. The forecast of total return depends on your forecasts of both the price of the bond when you sell it at the end of your horizon and the rate at which you are able to reinvest coupon income. The sales price depends in turn on the yield to maturity at the horizon date. With a longer investment horizon, however, reinvested coupons will be a larger component of final proceeds.

# Example 14.9 Horizon Analysis

Suppose you buy a 30-year, 7.5\% (annual payment) coupon bond for \$980 (when its yield to maturity is 7.67\%) and plan to hold it for 20 years. You forecast that the bond's yield to maturity will be 8\% when it is sold and that the reinvestment rate on the coupons will be 6\%. At the end of your investment horizon, the bond will have 10 years remaining until maturity, so the forecast sales price (using a yield to maturity of 8\%) is \$966.45. The 20 coupon payments will grow with compound interest to \$2,758.92. (This is the future value of a 20-year \$75 annuity with an interest rate of 6\%).

On the basis of these forecasts, your  \$980 investment will grow in 20 years to$ 966.45 +  $2,758.92 =\$ 3,725.37. This corresponds to an annualized compound return of 6.90\%:

$$
\begin{array}{l} V _ {0} (1 + r) ^ {2 0} = V _ {2 0} \\ \mathbb {S} 9 8 0 (1 + r) ^ {2 0} = \mathbb {S} 3, 7 2 5. 3 7 \\ r = .0690 = 6.90\% \\ \end{array}
$$

Examples 14.8 and 14.9 demonstrate that as interest rates change, bond investors are subject to two offsetting sources of risk. On the one hand, when rates rise, bond prices fall, which reduces the value of the portfolio. On the other hand, reinvested coupon income will compound more rapidly at those higher rates. This reinvestment rate risk offsets price risk. In Chapter 16, we will explore this trade-off in more detail and will discover that by carefully tailoring their bond portfolios, investors can precisely balance these two effects for any given investment horizon.

# 14.4 Bond Prices over Time

A bond will sell at par value when its coupon rate equals the market interest rate. In this case, the coupon payments are sufficient to provide fair compensation for the time value of money.

When the coupon rate is lower than the market interest rate, the coupon payments alone will not provide bond investors as high a return as they could earn elsewhere. To receive a competitive return, they also need some price appreciation. The bonds, therefore, must sell below par value to provide a "built-in" capital gain on the investment.

# Example 14.10 Fair Holding-Period Return

Suppose a bond was issued several years ago when the interest rate was  $7\%$ . The bond's annual coupon rate was thus set at  $7\%$ . (We suppose for simplicity that the bond pays its coupon annually.) Now, with three years left in the bond's life, the market interest rate is  $8\%$  per year. The bond's market price is the present value of the remaining annual coupons plus payment of par value. That present value is

$$
\$ 70 \times Annuity factor(8\%, 3) + \$ 1,000 \times PV factor(8\%, 3) = \$ 974.23
$$ which is less than par value.


In another year, after the next coupon is paid and remaining maturity falls to two years, the bond will sell at

$$
\$ 70 \times Annuity factor(8\%, 2) + \$ 1,000 \times PV factor(8\%, 2) = \$ 982.17
$$ thereby providing a capital gain over the year of  \$7.94. If an investor had purchased the bond at\$ 974.23, the total return over the year would equal the coupon payment plus capital gain, or  $70 +$ 7.94 = \$77.94. This represents a rate of return of  \$77.94/974.23, or 8\%, exactly the rate of return currently available elsewhere in the market.


![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/be6c6e1e0ada59fadecf7e1dcd30b9df74595b2a650531c409cb594b083f9a85.jpg)

# Concept Check 14.5

At what price will the bond in Example 14.10 sell in yet another year, when only one year remains until maturity? Assume the yield to maturity remains at  $8\%$ . What is the rate of return to an investor who purchases the bond when its price is 982.17 and sells it one year hence?

When bond prices are set according to the present value formula, any discount from par value provides an anticipated capital gain that will augment a below-market coupon rate by just enough to provide a competitive (i.e., market) total rate of return. Conversely, if the coupon rate exceeds the market interest rate, the interest income by itself is greater than that available elsewhere in the market. Investors will bid up the bond price above par value. As the bond approaches maturity, its price will fall because fewer of these above-market coupon payments remain. The resulting capital loss offsets the large coupon payments so that the bondholder again receives only a competitive rate of return.


Problem 14 at the end of the chapter asks you to work through the case of the high-coupon bond. Figure 14.6 traces out the price paths (net of accrued interest) of two 30-year bonds, each selling at a yield to maturity of  $8\%$ . One is a premium bond with a coupon rate above its  $8\%$  yield to maturity, while the other is a discount bond, with a coupon rate below yield to maturity. As time passes and the bonds approach their maturity dates, their prices steadily close in on par value. This means that the discount bond will enjoy capital gains that offset its relatively low coupon rate, while the premium bond will suffer capital losses that offset a portion of its generous coupon.[9]

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/dd4ea2c8cd966c0074e09ba8a9049311029d00ac5bcc3787916a70ff9ea2d3c5.jpg)
Figure 14.6 Price path of two 30-year maturity bonds, each selling at a yield to maturity of  $8\%$ . Bond price approaches par value as maturity date approaches.


We conclude that each bond offers investors the same total rate of return. Although the capital gains versus income components differ, the price of each bond is set to provide competitive rates, as we should expect in well-functioning capital markets. Security returns all should be comparable on an after-tax risk-adjusted basis. If they are not, investors will try to sell low-return securities, thereby driving down their prices until the total return at the now-lower price is competitive with other securities. Prices should continue to adjust until all expected returns are comparable, given appropriate risk and tax adjustments.

We see evidence of this price adjustment in Figure 14.1. Compare the two bonds maturing in August 2040. One has a coupon rate of  $3.875\%$ , while the other's coupon rate is less than one-third of that value, only  $1.125\%$ . But the higher coupon rate on the first bond does not mean that it offers a higher return; instead, it sells at a higher price. The yields to maturity on the two bonds are very similar, both close to  $1.8\%$ . This makes sense because investors should care about their total return, including both coupon income as well as price change. In the end, prices of similar-maturity bonds adjust until yields are pretty much equalized.

Of course, the yields across bonds in Figure 14.1 are not all precisely equal. Clearly, longer-term bonds at this time offered higher promised yields, a common pattern and one that reflects the relative risks of the bonds. We will explore the relationship between yield and time to maturity in the next chapter.

We assume in the figure that the market interest rate is constant. If the market interest rate is volatile, the price path will be "jumpy," vibrating around the price path in Figure 14.6 and reflecting capital gains or losses as interest rates fluctuate. Ultimately, however, the price must reach par value at the maturity date, so the price of the premium bond will fall over time while that of the discount bond will rise.

# Yield to Maturity versus Holding-Period Return

In Example 14.10, the holding-period return and the yield to maturity were equal. The bond yield started and ended the year at  $8\%$ , and the bond's holding-period return also equaled  $8\%$ . This turns out to be a general result. When the yield to maturity is unchanged over the period, the rate of return on the bond will equal that yield. As we learned from Example 14.10, this should not be surprising: The bond must offer a rate of return competitive with those available on other securities.

However, when yields fluctuate, so will a bond's rate of return. Unanticipated changes in market rates will result in unanticipated changes in bond prices and, after the fact, a bond's holding-period return can be better or worse than the yield at which it initially sells. An increase in the bond's yield acts to reduce its price, which reduces the holding-period return. In this event, the holding-period return is likely to be less than the initial yield to maturity.[10] Conversely, a decline in yield will result in a holding-period return greater than the initial yield.

# Example 14.11 Yield to Maturity versus Holding-Period Return

Consider a 30-year bond paying an annual coupon of \$80 and selling at par value of \$1,000. The bond's initial yield to maturity is 8\%. If the yield remains at 8\% over the year, the bond price will remain at par, so the holding-period return also will be 8\%. But if the yield falls below 8\%, the bond price will increase. Suppose the yield falls and the price increases to 1,050. Then the holding-period return is greater than 8\%:

$$
\text{Holding - period return} = \frac {\mathbb {S} 80 + (\mathbb {S} 1, 050 - \mathbb {S} 1, 000)}{\mathbb {S} 1, 000} = . 1 3, \text {or} 13 \%
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/05fe4327f17915cce15606ecc5ea08fe5a7c8d826981851b224f9f2189a82434.jpg)

# Concept Check 14.6

Show that if yield to maturity increases, then holding-period return is less than initial yield. For example, suppose in Example 14.11 that by the end of the first year, the bond's yield to maturity is  $8.5\%$ . Find the 1-year holding-period return and compare it to the bond's initial  $8\%$  yield to maturity.

Here is another way to think about the difference between yield to maturity and holding-period return. Yield to maturity depends only on the bond's coupon, current price, and par value at maturity. All of these values are observable today, so yield to maturity can be easily calculated. Yield to maturity is commonly interpreted as a measure of the average rate of return if the investment in the bond is held until the bond matures. In contrast, holding-period return is the rate of return over a particular investment period and depends on the market price of the bond at the end of that holding period; this price is not known today. Because bond prices over the holding period will respond to unanticipated changes in interest rates, holding-period return can at most be forecast.

We have to be a bit careful here. When yields increase, coupon income can be reinvested at higher rates, which offsets the impact of the initial price decline. If your holding period is sufficiently long, the positive impact of the higher reinvestment rate can more than offset the initial price decline. But common performance evaluation periods for portfolio managers are no more than one year, and over these shorter horizons the price impact will almost always dominate the impact of the reinvestment rate. We discuss the trade-off between price risk and reinvestment rate risk more fully in Chapter 16.

# Zero-Coupon Bonds and Treasury Strips

Original-issue-discount bonds are less common than coupon bonds issued at par. These are bonds that are issued intentionally with low coupon rates that cause the bond to sell at a discount from par value. The most common example of this type of bond is the zero-coupon bond, which carries no coupons and provides all of its return in the form of price appreciation. Zeros provide only one cash flow to their owners, on the maturity date of the bond.

U.S. Treasury bills are examples of short-term zero-coupon instruments. If the bill has face value of  \$10,000, the Treasury issues or sells it for some amount less than\$ 10,000, agreeing to repay 10,000 at maturity. All of the investor's return comes in the form of price appreciation.

Longer-term zero-coupon bonds are commonly created from coupon-bearing notes and bonds. A bond dealer who purchases a Treasury coupon bond may ask the Treasury to separate the cash flows into a series of independent securities, where each security is a claim to one of the payments of the original bond. For example, a 10-year coupon bond would be "stripped" of its 20 semiannual coupons, and each coupon payment would be treated as a stand-alone zero-coupon bond. The maturities of these bonds would thus range from six months to 10 years. The final payment of principal would be treated as another stand-alone zero-coupon security. Each of the payments is now treated as an independent security and is assigned its own CUSIP number (by the Committee on Uniform Securities Identification Procedures). The CUSIP number is the security identifier that allows for electronic trading over the Fedwire system, a network that connects all Federal Reserve banks and their branches. The payments are still considered obligations of the U.S. Treasury. The Treasury program under which coupon stripping is performed is called STRIPS (Separate Trading of Registered Interest and Principal of Securities), and these zero-coupon securities are called Treasury strips.

What should happen to prices of zeros as time passes? On their maturity dates, zeros must sell for par value. Before maturity, however, they should sell at discounts from par because of the time value of money. As time passes, price should approach par value. In fact, if the interest rate is constant, a zero's price will increase at exactly the rate of interest.

To illustrate, consider a zero with 30 years until maturity, and suppose the market interest rate is  $10\%$  per year. The price of the bond today is  $\$1,000 / (1.10)^{30} = \$57.31$ . Next year, with only 29 years until maturity, if the yield is still  $10\%$ , the price will be  $\$1,000 / (1.10)^{29} = \$63.04$ , a  $10\%$  increase over its previous-year value. Because the par value of the bond is now discounted for one less year, its price has increased by the 1-year discount factor.

Figure 14.7 presents the price path of a 30-year zero-coupon bond for an annual market interest rate of  $10\%$ . The bond's price rises exponentially, not linearly, until its maturity.

# After-Tax Returns

The tax authorities recognize that the "built-in" price appreciation on original-issue-discount (OID) bonds such as zero-coupon bonds represents an implicit interest payment to the holder of the security. The IRS, therefore, calculates a price appreciation schedule to impute taxable interest income for the built-in appreciation during a tax year, even if the asset is not sold or does not mature. Any additional gains or losses that arise from changes in market interest rates are treated as capital gains or losses if the OID bond is sold during the tax year.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/cc77b4af9a8426c754db955d5254428e83ea3994c57cce39b9448adbc08bc1f8.jpg)
Figure 14.7 The price of a 30-year zero-coupon bond over time at a yield to maturity of  $10\%$ . Price equals  $\$ 1,000 / (1.10)^T$ , where  $T$  is time until maturity.


# Example 14.12 Taxation of Original-Issue-Discount Bonds

Continuing with the example in the text, if the interest rate originally is 10\%, the 30-year zero will be issued at a price of $1,000/1.10³⁰ = $57.31. The following year, the IRS will calculate what the bond price would be if the yield were still 10\%. This is $1,000/1.10²⁹ = $63.04. Therefore, the IRS imputes interest income of $63.04 - $57.31 = 5.73. This amount is subject to tax. Notice that the imputed interest income is based on a "constant yield method" that ignores any changes in market interest rates.

If interest rates actually fall, let's say to 9.9\%, next year's bond price will be $1,000/1.099²⁹ = $64.72. If the bond is sold, the difference between \$64.72 and \$63.04 will be treated as capital gains income and taxed at the capital gains tax rate. If the bond is not sold, then the price difference is an unrealized capital gain and will not result in taxes in that year. In either case, the investor must pay taxes on the 5.73 of imputed interest at whatever tax rate applies to interest income.

The procedure illustrated in Example 14.12 applies as well to the taxation of other original-issue-discount bonds, even if they are not zero-coupon bonds. Consider a 30-year-maturity bond issued with a coupon rate of  $4\%$  and a yield to maturity of  $8\%$ . For simplicity, we will assume that the bond pays coupons once annually. Because of the low coupon rate, the bond will be issued at a price far below par value, specifically at \$549.69. If the bond's yield to maturity is still  $8\%$ , then its price in one year will rise to \$553.66. (Confirm this for yourself.) The pretax holding-period return (HPR) is exactly  $8\%$ :

$$
\mathrm {H P R} = \frac {\mathbb {S} 4 0 + (\mathbb {S} 5 5 3 . 6 6 - \mathbb {S} 5 4 9 . 6 9)}{\mathbb {S} 5 4 9 . 6 9} = . 0 8
$$

The increase in the bond price based on a constant yield, however, is treated as interest income, so the investor is required to pay taxes on the explicit coupon income, \$40, as well as the imputed interest income of $553.66 - $549.69 = \$3.97. If the bond's yield actually changes during the year, the difference between the bond's price and the constant-yield value of 553.66 will be treated as capital gains income if the bond is sold.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/fe203fb2c2d55228c34e423c02427d8f802138e87e156267d59cc9605ab15cd3.jpg)

# Concept Check 14.7

Suppose that the yield to maturity of the  $4\%$  coupon, 30-year-maturity bond falls to  $7\%$  by the end of the first year and that the investor sells the bond after the first year. If the investor's federal plus state tax rate on interest income is  $38\%$  and the combined tax rate on capital gains is  $20\%$ , what is the investor's after-tax rate of return?

# 14.5 Default Risk and Bond Pricing

Although bonds generally promise a fixed flow of income, that income stream is not guaranteed unless the investor can be sure the issuer will not default on the obligation. While U.S. government bonds are effectively free of default risk, corporate bonds are not. The payments on these bonds are uncertain, for they depend to some degree on the ultimate financial status of the firm.

Bond default risk, usually called credit risk, is measured by rating agencies such as Moody's Investor Services, Standard & Poor's Corporation, and Fitch Ratings, all of which provide financial information on firms as well as quality ratings of large corporate and municipal bond issues. International sovereign bonds, especially in emerging markets, also are commonly rated for default risk. Each rating firm assigns letter grades to the bonds of corporations and municipalities to reflect their assessment of the safety of the bond issue. The top rating is AAA or Aaa, a designation awarded to very few firms. Moody's modifies each rating class with a 1, 2, or 3 suffix (e.g., Aaa1, Aaa2, Aaa3) to provide a finer gradation of ratings. The other agencies use a + or - modification.

Bonds rated BBB or above (S&P, Fitch) or Baa and above (Moody's) are considered investment-grade bonds, whereas lower-rated bonds are classified as speculative-grade or junk bonds. Defaults on low-grade issues are not uncommon. For example, almost half of the bonds rated CCC by Standard & Poor's at issue have defaulted within 10 years. Highly rated bonds rarely default, but even these bonds are not free of credit risk. For example, in 2001 WorldCom sold \$11.8 billion of bonds with an investment-grade rating. Only a year later, the firm filed for bankruptcy and its bondholders lost more than  $80\%$  of their investment. Certain regulated institutional investors such as insurance companies have not always been allowed to invest in speculative-grade bonds.

Figure 14.8 provides the definitions of each bond rating classification.

# Junk Bonds

Junk bonds, also known as high-yield bonds, are nothing more than speculative-grade (low-rated or unrated) bonds. Before 1977, almost all junk bonds were "fallen angels," that is, bonds issued by firms that originally had investment-grade ratings but that had since been downgraded. In 1977, however, firms began to issue "original-issue junk."

Much of the credit for this innovation is given to Drexel Burnham Lambert, and especially its trader Michael Milken. Drexel had long enjoyed a niche as a junk bond trader and had established a network of potential investors in junk bonds. Firms not able to muster an investment-grade rating were happy to have Drexel (and other investment bankers) market their bonds directly to the public, as this opened up a new source of financing. Junk issues were a lower-cost financing alternative than borrowing from banks.

High-yield bonds gained considerable notoriety in the 1980s when they were used as financing vehicles in leveraged buyouts and hostile takeover attempts. Shortly thereafter, however, the junk bond market suffered. The legal difficulties of Drexel and Michael Milken in connection with Wall Street's insider trading scandals of the late 1980s tainted the junk bond market.

At the height of Drexel's difficulties, the high-yield bond market nearly dried up. While the market ultimately rebounded, the average credit quality of newly issued high-yield debt issued today is higher than the average quality in the boom years of the 1980s. Of course, junk bonds are still more vulnerable to economic distress than investment-grade bonds. During the financial crisis of 2008-2009, prices on these bonds fell dramatically, and their

<table><tr><td colspan="8">Bond Ratings</td></tr><tr><td></td><td></td><td>Very High
Quality</td><td>High Quality</td><td>Speculative</td><td>Very Poor</td><td></td><td></td></tr><tr><td>Standard &amp; Poor&#x27;s</td><td>AAA</td><td>AA</td><td>A</td><td>BBB</td><td>BB</td><td>B</td><td>CCC D</td></tr><tr><td>Moody&#x27;s</td><td>Aaa</td><td>Aa</td><td>A</td><td>Baa</td><td>Ba</td><td>B</td><td>Caa C</td></tr><tr><td colspan="8">At times both Moody&#x27;s and Standard &amp; Poor&#x27;s have used adjustments to these ratings:
S&amp;P uses plus and minus signs: A+ is the strongest A rating and A- the weakest.
Moody&#x27;s uses a 1, 2, or 3 designation, with 1 indicating the strongest.</td></tr><tr><td>Moody&#x27;s</td><td>S&amp;P</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Aaa</td><td>AAA</td><td colspan="6">Debt rated Aaa and AAA has the highest rating. Capacity to pay interest and principal is extremely strong.</td></tr><tr><td>Aa</td><td>AA</td><td colspan="6">Debt rated Aa and AA has a very strong capacity to pay interest and repay
principal. Together with the highest rating, this group comprises the high- grade bond class.</td></tr><tr><td>A</td><td>A</td><td colspan="6">Debt rated A has a strong capacity to pay interest and repay principal,
although it is somewhat more susceptible to the adverse effects of changes in circumstances and economic conditions than debt in
higher-rated categories.</td></tr><tr><td>Baa</td><td>BBB</td><td colspan="6">Debt rated Baa and BBB is regarded as having an adequate capacity to pay interest and repay principal. Whereas it normally exhibits adequate
protection parameters, adverse economic conditions or changing circumstances are more likely to lead to a weakened capacity to pay
interest and repay principal for debt in this category than in higher-rated categories. These bonds are medium-grade obligations.</td></tr><tr><td>Ba</td><td>BB</td><td rowspan="4" colspan="6">Debt rated in these categories is regarded, on balance, as predominantly
speculative with respect to capacity to pay interest and repay principal in accordance with the terms of the obligation. BB and Ba indicate the lowest
degree of speculation, and CC and Ca the highest degree of speculation.</td></tr><tr><td>B</td><td>B</td></tr><tr><td>Caa</td><td>CCC</td></tr><tr><td>Ca</td><td>CC</td></tr><tr><td colspan="8">Although such debt will likely have some quality and protective characteristics, these are outweighed by large uncertainties or major risk
exposures to adverse conditions. Some issues may be in default.</td></tr><tr><td>C</td><td>C</td><td colspan="6">This rating is reserved for income bonds on which no interest is being paid.</td></tr><tr><td>D</td><td>D</td><td colspan="6">Debt rated D is in default, and payment of interest and/or repayment of principal is in arrears.</td></tr></table>

Figure 14.8 Definitions of each bond rating class yields to maturity rose equally dramatically. The spread between yields on B-rated bonds and Treasuries widened from around  $3\%$  in early 2007 to an astonishing  $19\%$  by the beginning of 2009.

Source: Stephen A. Ross and Randolph W. Westerfield, Corporate Finance (St. Louis: Times Mirror/Mosby College Publishing, 1988), reproduced with permission from McGraw Hill Education. Data from various editions of Standard & Poor's Bond Guide and Moody's Bond Guide.


# Determinants of Bond Safety

Bond rating agencies base their quality ratings largely on an analysis of the level and trend of some of the issuer's financial ratios. The key ratios used to evaluate safety are

1. Coverage ratios—Ratios of company earnings to fixed costs. For example, the times-interest-earned ratio is the ratio of earnings before interest payments and taxes to interest obligations. The fixed-charge coverage ratio includes lease payments and sinking fund payments with interest obligations to arrive at the ratio of earnings to all fixed cash obligations (sinking funds are described below). Low or falling coverage ratios signal possible cash flow difficulties.
2. Leverage (e.g., debt-to-equity) ratios—A too-high leverage ratio indicates excessive indebtedness, raising the concern the firm will be unable to earn enough to satisfy the obligations on its bonds.
3. Liquidity ratios—The two most common liquidity ratios are the current ratio (current assets/current liabilities) and the quick ratio (current assets excluding inventories/current liabilities). Liquidity ratios measure the firm's ability to pay bills coming due with its most liquid assets.
4. Profitability ratios—These ratios measure a firm's overall financial performance. The return on assets (earnings before interest and taxes divided by total assets) or return on equity (net income/equity) are the most popular of these measures. Firms with higher returns on assets or equity should be better able to raise money in security markets because they offer prospects for better returns on the firm's investments.
5. Cash flow-to-debt ratio—This is the ratio of total cash flow to outstanding debt.

Moody's periodically computes median values of selected ratios for firms in several rating classes, which we present in Table 14.3. Of course, ratios must be evaluated in the context of industry standards, and analysts differ in the weights they place on particular ratios. Nevertheless, Table 14.3 demonstrates the tendency of ratios to improve along with the firm's rating class.

Many studies have tested whether financial ratios can in fact be used to predict default risk. One of the best-known series of tests was conducted by Edward Altman, who used

<table><tr><td></td><td>Aaa</td><td>Aa</td><td>A</td><td>Baa</td><td>Ba</td><td>B</td><td>C</td></tr><tr><td>EBITA/Assets</td><td>12.3\%</td><td>10.5\%</td><td>11.2\%</td><td>9.0\%</td><td>8.8\%</td><td>6.6\%</td><td>4.9\%</td></tr><tr><td>Operating profit margin</td><td>24.8\%</td><td>18.9\%</td><td>14.3\%</td><td>12.9\%</td><td>11.9\%</td><td>9.6\%</td><td>4.6\%</td></tr><tr><td>EBITA to interest coverage (multiple)</td><td>12.0</td><td>19.0</td><td>12.2</td><td>6.5</td><td>3.9</td><td>2.0</td><td>0.8</td></tr><tr><td>Debt/EBITDA (multiple)</td><td>1.9</td><td>1.8</td><td>2.1</td><td>2.8</td><td>3.6</td><td>5.1</td><td>6.9</td></tr><tr><td>Debt/(Debt + Equity)</td><td>42.8\%</td><td>36.6\%</td><td>39.6\%</td><td>45.4\%</td><td>55.7\%</td><td>65.9\%</td><td>79.8\%</td></tr><tr><td>Funds from operations/Total debt</td><td>40.4\%</td><td>44.5\%</td><td>37.7\%</td><td>28.2\%</td><td>21.3\%</td><td>12.5\%</td><td>5.7\%</td></tr><tr><td>Retained Cash Flow / Net Debt</td><td>32.3\%</td><td>29.5\%</td><td>31.2\%</td><td>26.6\%</td><td>21.3\%</td><td>13.0\%</td><td>6.0\%</td></tr></table>

Table 14.3

Financial ratios by rating class discriminant analysis to predict bankruptcy. With this technique a firm is assigned a score based on its financial characteristics. If its score exceeds a cut-off value, the firm is deemed creditworthy. A score below the cut-off value indicates significant bankruptcy risk in the near future.

Note: EBITA is earnings before interest, taxes, and amortization. EBITDA is earnings before interest, taxes, depreciation, and amortization. Source: Moody's Financial Metrics, Key Ratios by Rating and Industry for Global Non-Financial Corporations, December 2017.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/2660e757410db8496ea35f0fc9fb5182e359f2b9f5636926ccdbf295126612d3.jpg)
Figure 14.9 Discriminant analysis


To illustrate the technique, suppose that we collect data on the return on equity (ROE) and coverage ratios of a sample of firms, and then keep records of any corporate bankruptcies. In Figure 14.9 we plot the ROE and coverage ratios for each firm, using  $X$  for firms that eventually went bankrupt and  $O$  for those that remained solvent. Clearly, the  $X$  and  $O$  firms show different patterns of data, with the solvent firms typically showing higher values for the two ratios.

The discriminant analysis determines the equation of the line that best separates the  $X$  and  $O$  obser vations. Suppose that the equation of the line is  $.75 = .9 \times \mathrm{ROE} + .4 \times \mathrm{Coverage}$ . Then, based on its own financial ratios, each firm is assigned a "Z-score" equal to  $.9 \times \mathrm{ROE} + .4 \times \mathrm{Coverage}$ . If its Z-score exceeds .75, the firm plots above the line and is considered a safe bet; Z-scores below .75 foretell financial difficulty.


Altman found the following equation to best separate failing and nonfailing firms:

$$
\begin{array}{l} Z = 3. 1 \frac {\text {E B I T}}{\text {T o t a l a s s e t s}} + 1. 0 \frac {\text {S a l e s}}{\text {A s s e t s}} + . 4 2 \frac {\text {S h a r e h o l d s} ^ {\prime} \text {e q u i t y}}{\text {T o t a l l i a b i l i t i e s}} \\ + . 8 5 \frac {\text {R e t a i n e d e a r n i n g s}}{\text {T o t a l a s s e t s}} + . 7 2 \frac {\text {W o r k i n g c a p i t a l}}{\text {T o t a l a s s e t s}} \\ \end{array}
$$ where  $\mathrm{EBIT} =$  earnings before interest and taxes. $^{11}$  Z-scores below 1.23 indicate vulnerability to bankruptcy, scores between 1.23 and 2.90 are a gray area, and scores above 2.90 are considered safe.


![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/d6a4419ed98b4018ff7430d2b610f0ddec95ba82d462119d4faf487fb393fb80.jpg)

# Concept Check 14.8

Suppose we add a new variable equal to current liabilities/current assets to Altman's equation. Would you expect this variable to receive a positive or negative coefficient?

# Bond Indentures

A bond is issued with an indenture, which is the contract between the issuer and the bondholder. Part of the indenture is a set of restrictions that protect the rights of the bondholders. Such restrictions include provisions relating to collateral, sinking funds, dividend policy, and further borrowing. The issuing firm agrees to these protective covenants in order to market its bonds to investors concerned about the safety of the bond issue.


Sinking Funds Bonds call for the payment of par value at the end of the bond's life. This payment constitutes a large cash commitment for the issuer. To help ensure the commitment does not create a cash flow crisis, the firm agrees to establish a sinking fund to spread the payment burden over several years. The fund may operate in one of two ways:

1. The firm may repurchase a fraction of the outstanding bonds in the open market each year.
2. The firm may purchase a fraction of the outstanding bonds at a special call price associated with the sinking fund provision. The firm has an option to purchase the bonds at either the market price or the sinking fund price, whichever is lower. To allocate the burden of the sinking fund call fairly among bondholders, the bonds chosen for the call are selected at random based on serial number.[12]

The sinking fund call differs from a conventional bond call in two important ways. First, the firm can repurchase only a limited fraction of the bond issue at the sinking fund call price. At most, some indentures allow firms to use a doubling option, which allows repurchase of double the required number of bonds at the sinking fund call price. Second, while callable bonds generally have call prices above par value, the sinking fund call price usually is set at the bond's par value.

Although sinking funds ostensibly protect bondholders by making principal repayment more likely, they can hurt the investor. The firm will choose to buy back discount bonds (selling below par) at market price, while exercising its option to buy back premium bonds at par. Therefore, if interest rates fall and bond prices rise, firms will benefit from the sinking fund provision that enables them to repurchase their bonds at below-market prices. In these circumstances, the firm's gain is the bondholder's loss.

One bond issue that does not require a sinking fund is a serial bond issue, in which the firm sells bonds with staggered maturity dates. As bonds mature sequentially, the principal repayment burden is spread over time, just as it is with a sinking fund. Unlike sinking fund bonds, serial bonds do not confront security holders with the risk that a particular bond will be called for the sinking fund. The disadvantage, however, is that bonds of different maturity dates are not interchangeable, which reduces the liquidity of the issue.

Subordination of Further Debt One of the factors determining bond safety is total outstanding debt of the issuer. If you bought a bond today, you would be understandably distressed to see the firm tripling its outstanding debt tomorrow. The bond would be riskier than it appeared when you bought it. To prevent firms from harming bondholders in this manner, subordination clauses restrict the amount of additional borrowing. Additional debt might be required to be subordinated in priority to existing debt; that is, in the event of bankruptcy, subordinated or junior debtholders will not be paid unless and until the senior debt is fully paid off.

Dividend Restrictions Covenants limiting dividends protect bondholders because they force the firm to retain assets rather than paying them out to stockholders. A typical restriction disallows payments of dividends if cumulative dividends paid since the firm's inception exceed cumulative retained earnings plus proceeds from sales of stock.

Collateral Some bonds are issued with specific collateral behind them. Collateral is a particular asset that the bondholders receive if the firm defaults on the bond. If the collateral is property, the bond is called a mortgage bond. If the collateral takes the form of other securities held by the firm, the bond is a collateral trust bond. In the case of equipment, the bond is known as an equipment obligation bond. This last form of collateral is used most commonly by firms such as railroads, where the equipment is fairly standard and can be easily sold to another firm should the firm default.

Collateralized bonds generally are considered safer than general debenture bonds, which are unsecured, meaning they do not provide for specific collateral. Credit risk of unsecured bonds depends on the general earning power of the firm. If the firm defaults, debenture owners become general creditors of the firm. Because they are safer, collateralized bonds can be issued at lower yields than general debentures.

Figure 14.10 shows the terms of a huge 6.5 billion bond issue by Apple. We have added some explanatory notes alongside the terms of the issue.

# Comment

# Description of Bond

1. Interest of 3.45\% will be payable on February 9 and August 9 of each year. Thus every 6 months each note will pay interest of (0345/2) × $1,000 = $17.25.

ISSUE:Apple Inc.  $3.45\%$  Notes

2. Investors will be repaid the 1,000 face value in 2045.

DUE: February 9, 2045

3. Moody's bond rating is Aa, the second-highest-quality rating.

RATING:Aa

4. A trustee is appointed to look after investors' interest.

TRUSTEE: Issued under an indenture between Apple and The Bank of New York Mellon Trust Company

5. The bonds are registered. The registrar keeps a record of who owns the bonds.

- REGISTERED: Issued in registered, book-entry form

6. The company is not obliged to repay any of the bonds on a regular basis before maturity.

SINKING FUND: None

7. The company has the option to buy back the notes. The redemption price is the greater of 1,000 or a price that is determined by the value of an equivalent Treasury bond.

CALLABLE: In whole or in part at any time

8. The notes are senior debt, ranking equally with all Apple's other unsecured senior debt.

SENIORITY

9. The notes are not secured; that is, no assets have been set aside to protect the noteholders in the event of default. However, if Apple sets aside assets to protect any other bondholders, the notes will also be secured by these assets. This is termed a negative pledge clause.

SECURITY: The notes are unsecured. However, "if Apple shall incur, assume or guarantee any Debt, ... it will secure ... the debt securities then outstanding equally and ratably with ... such Debt."

10. The principal amount of the issue was 2 billion. The notes were sold at 99.11\% of their principal value.

OFFERED: 2,000,000,000 at 99.11\%

11. The book runners are the managing underwriters to the issue and maintain the book of securities sold.

JOINT BOOK-RUNNING MANAGERS: Goldman, Sachs; Deutsche Bank Securities

Figure 14.10 Apple's 2015 bond issue

# Yield to Maturity and Default Risk

Because corporate bonds are subject to default risk, we must distinguish between the bond's promised yield to maturity and its expected yield. The promised or stated yield will be realized only if the firm meets the obligations of the bond issue. Therefore, the stated yield is the maximum possible yield to maturity of the bond. The expected yield to maturity must take into account the possibility of a default.

To compensate for default risk, corporate bonds must offer a default premium. The default premium, also called a credit spread, is the difference between the promised yield on a corporate bond and the yield of an otherwise-identical government bond that is riskless in terms of default. If the firm remains solvent and actually pays the investor all of the promised cash flows, the investor will realize a higher return than would be realized from the government bond. If, however, the firm goes bankrupt, the corporate bond is likely to provide a lower return than the government bond. The corporate bond has the potential for both better and worse performance than the default-free Treasury bond. In other words, it is riskier.

# Example 14.13 Expected versus Promised Yield to Maturity

Suppose a firm issued a  $9 \%$ coupon bond 20 years ago. The bond now has 10 years left until it matures, but the firm is having financial difficulties. Investors believe that the firm will be able to make good on the remaining interest payments, but at the maturity date, it will be forced into bankruptcy, and bondholders will receive only  $70 \%$ of par value. The bond is selling at 750. Yield to maturity (YTM) would then be calculated using the following inputs:

<table><tr><td></td><td>Expected YTM</td><td>Stated YTM</td></tr><tr><td>Coupon payment</td><td>$45</td><td>$45</td></tr><tr><td>Number of semiannual periods</td><td>20 periods</td><td>20 periods</td></tr><tr><td>Final payment</td><td>$700</td><td>$1,000</td></tr><tr><td>Price</td><td>$750</td><td>$750</td></tr></table>

The stated yield to maturity, which is based on promised payments, is  $13.7\%$ . Based on the expected payment of \$700 at maturity, however, the yield to maturity is only  $11.6\%$ . The stated yield to maturity is greater than the yield investors actually expect to earn.

For example, at the height of the financial crisis in October 2008, as Ford Motor Company struggled, its bonds due in 2028 were rated CCC and were selling at about  $33\%$  of par value, resulting in a yield to maturity of about  $20\%$ . Investors did not really believe the expected rate of return on these bonds was  $20\%$ . They recognized that there was a decent chance that bondholders would not receive all the payments promised in the bond contract and that the yield based on expected cash flows was far less than the yield based on promised cash flows. As it turned out, of course, Ford weathered the storm, and investors who purchased its bonds made a very nice profit: 10 years later, the bonds were selling for about  $108\%$  of par value, more than triple their value in 2008.

When a bond becomes more subject to default risk, its price will fall, and therefore its promised yield to maturity will rise. Therefore, its default premium will rise. However, its expected yield to maturity will be far less affected. Let's continue Example 14.13.

# Example 14.14 Default Risk and the Default Premium

Suppose that the condition of the firm in Example 14.13 deteriorates further, and investors now believe that the bond will pay off only  $55\%$  of face value at maturity. Because of the higher risk, investors now demand an expected yield to maturity of  $12\%$  (i.e.,  $6\%$  semiannually), which is  $4\%$  higher than in Example 14.13. But the price of the bond will fall from  $750 to$ 688  $[n = 20; i = 6; \mathrm{FV} = 550; \mathrm{PMT} = \$45]$ . At this price, the stated yield to maturity based on promised cash flows is  $15.2\%$ . While the expected yield to maturity has increased by  $4\%$ , the drop in price has caused the promised yield to maturity to rise by  $1.5\%$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/d872fa10c133fb6f457bd5b7349ce8b86bcc9d9493929c616d41d255ba60b672.jpg)

# Concept Check 14.9

What is the expected yield to maturity in Example 14.14 if the firm is in even worse condition? Investors expect a final payment of only \$500, and the bond price has fallen to \$650.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/e496de7070a69aaff8421b5fce419c5d6485779fc035179c726359ecbd679e49.jpg)
Figure 14.11 Yield spreads between corporate and 10-year Treasury bonds Source: Federal Reserve Bank of St. Louis.

The pattern of default premiums offered on risky bonds is sometimes called the risk structure of interest rates. The greater the default risk, the higher the default premium. Figure 14.11 shows spreads between yields to maturity of bonds of different risk classes. You can see here clear evidence of credit-risk premiums on promised yields. Note, for example, the incredible run-up of credit spreads during the financial crisis of 2008-2009.

# Credit Default Swaps

A credit default swap (CDS) is, in effect, an insurance policy on the default risk of a bond or loan. To illustrate, the annual premium in early 2010 on a 5-year Greek sovereign CDS was about  $3\%$ , meaning that the CDS buyer would pay the seller an annual "insurance premium" of \$3 for each \$100 of bond principal. The CDS seller collects these annual payments for the term of the contract but must compensate the buyer for loss of bond value in the event of a default.[13]

As originally envisioned, credit default swaps were designed to allow lenders to buy protection against default risk. The natural buyers of CDSs would then be large bondholders or banks that wished to enhance the creditworthiness of their loan portfolio. Even if the borrower had a shaky credit standing, the "insured" debt would be as safe as the issuer of the CDS. An investor holding a bond with a BB rating could, in principle, raise the effective quality of the debt to AAA by buying a CDS on the issuer.

This insight suggests how CDS contracts should be priced. If a BB-rated corporate bond bundled with insurance via a CDS is effectively equivalent to an AAA-rated bond, then the premium on the swap ought to approximate the yield spread between AAA-rated and BB-rated bonds. $^{14}$  The risk structure of interest rates and CDS prices ought to be tightly aligned.


Figure 14.12 shows the prices of 5-year CDS contracts on Greek government debt between 2009 and 2010 as well as the spread between yields on Greek and German government bonds. As the strongest economy in the euro zone, German bonds are the natural candidate to play the role of the "risk-free benchmark." As expected, the credit spread and CDS prices move almost in lockstep.

You can see that both the credit spread and the CDS price started to increase dramatically toward the end of 2009. As perceptions of Greece's credit risk increased, so did the price of insuring its debt. Ultimately, in what amounted to the largest ever sovereign default, lenders agreed in 2012 to reduce Greece's debt by around 130 billion.

CDS contracts trade on corporate as well as sovereign debt. While CDSs were conceived as a form of bond insurance, it wasn't long before investors realized that they could be used to speculate on the financial health of particular issuers. For example, an investor in early 2008 who predicted the imminent financial crisis might have purchased CDS contracts on mortgage bonds as well as the debt of financial firms and would have profited as their CDS prices spiked in September. In fact, hedge fund manager John Paulson famously did just this. His bearish bets in 2007-2008 on commercial banks and Wall Street firms as well as on some riskier mortgage-backed securities made his funds more than \$15 billion, bringing him a personal payoff of more than \$3.7 billion.

Figure 14.12 Prices of 5-year Greek government credit default swaps
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/43410f736742e2384c3e056e7480a06014127ed2bb0d80802bd3620c2c70b679.jpg)
*5-year Greek government bond yield spread over German government bonds
Source: Bloomberg, August 1, 2012, http://www.bloomberg.com/quote/CDBR1U5:IND.chart.

We say "approximate" because there are some differences between highly rated bonds and bonds synthetically enhanced with credit default swaps. For example, the term of the swap may not match the maturity of the bond. Tax treatment of coupon payments versus swap payments may differ, as may the liquidity of the bonds. Finally, some CDSs may entail one-time up-front payments in addition to annual premiums.

# Credit Default Swaps, Systemic Risk, and the Financial Crisis of 2008-2009

The credit crisis of 2008-2009, when lending among banks and other financial institutions effectively seized up, was in large measure a crisis of transparency. The biggest problem was a widespread lack of confidence in the financial standing of counterparties to a trade. If one institution could not be confident that another would remain solvent, it would understandably be reluctant to offer it a loan. When doubt about the credit exposure of customers and trading partners spiked to levels not seen since the Great Depression, the market for loans dried up.

Credit default swaps in particular were cited for fostering doubts about counterparty reliability. By August 2008,  \$63 trillion of such swaps were reportedly outstanding. (By comparison, U.S. gross domestic product in 2008 was about\$ 14 trillion.) As the subprime mortgage market collapsed and the economy entered a deep recession, the potential obligations on these contracts ballooned to levels previously considered unimaginable and the ability of CDS sellers to honor their commitments appeared in doubt. For example, the huge insurance firm AIG alone had sold more than 400 billion of CDS contracts on subprime mortgages and other loans and was days from insolvency. But AIG's insolvency could have triggered the insolvency of other firms that had relied on its promise of protection against loan defaults. These in turn might have triggered further defaults. In the end, the government felt compelled to rescue AIG to prevent a chain reaction of insolvencies.


Counterparty risk and lax reporting requirements made it effectively impossible to tease out firms' exposures to credit risk. One problem was that CDS positions did not have to be accounted for on balance sheets. And the possibility of one default setting off a sequence of further defaults meant that lenders were exposed to the default of an institution with which they did not even directly trade. Such knock-on effects create systemic risk, in which the entire financial system can freeze up. With the ripple effects of bad debt extending in ever-widening circles, lending to anyone can seem imprudent.

In the aftermath of the credit crisis, the Dodd-Frank Act called for new regulation and reforms. One reform is a central clearinghouse for credit derivatives such as CDS contracts. Such a system fosters transparency of positions and allows the clearinghouse to replace traders' offsetting long and short positions with a single net position. It also requires daily recognition of gains or losses on positions through a margin or collateral account. If losses mount, positions have to be unwound before growing to unsustainable levels. Allowing traders to accurately assess counterparty risk, and limiting such risk through margin accounts and the extra back-up of the clearinghouse, can go a long way in limiting systemic risk.

# Credit Risk and Collateralized Debt Obligations

Collateralized debt obligations (CDOs) emerged in the last decade as a major mechanism to reallocate credit risk in the fixed-income markets. To create a CDO, a financial institution, commonly a bank, first would establish a legally distinct entity to buy and later resell a portfolio of bonds or other loans. A common vehicle for this purpose was the so-called Structured Investment Vehicle (SIV). An SIV raises funds, often by issuing short-term commercial paper, and uses the proceeds to buy corporate bonds or other forms of debt such as mortgage loans or credit card debt. These loans are first pooled together and then split into a series of classes known as tranches. (Tranche is the French word for "slice.")

Each tranche is given a different level of seniority in terms of its claims on the underlying loan pool, and each can be sold as a stand-alone security. As the loans in the underlying pool make their interest payments, the proceeds are distributed to pay interest to each tranche in order of seniority. This priority structure implies that each tranche has a different exposure to credit risk.

Figure 14.13 illustrates a typical setup. The senior tranche is on top. Its investors may account for perhaps  $80\%$  of the principal of the entire pool. But it has first claim on all the debt service. Using our numbers, even if  $20\%$  of the debt pool defaults, enough principal is repaid to fully pay off the senior tranche. Once the highest seniority tranche is paid off, the next-lower class (e.g., the mezzanine 1 tranche in Figure 14.13) receives the proceeds

<table><tr><td></td><td></td><td>Senior-Subordinated
Tranche Structure</td><td>Typical Terms</td></tr><tr><td></td><td></td><td>Senior tranche</td><td>70–90\% of notional principal, coupon similar to
Aa-Aaa rated bonds</td></tr><tr><td></td><td></td><td>Mezzanine 1</td><td>5–15\% of principal, investment-grade rating</td></tr><tr><td>Bank</td><td>Structured
investment vehicle, SIV</td><td></td><td></td></tr><tr><td></td><td></td><td>Mezzanine 2</td><td>5–15\% of principal, higher-
quality junk rating</td></tr><tr><td></td><td></td><td>Equity/first loss/ residual tranche</td><td>&lt;2\%, unrated, coupon rate
with 20\% credit spread</td></tr></table> from the pool of loans until its claims also are satisfied. Using junior tranches to insulate senior tranches from credit risk in this manner, one can create Aaa-rated bonds even from a junk-bond portfolio.

Figure 14.13 Collateralized debt obligations


Of course, shielding senior tranches from default risk means that the risk is concentrated on the lower tranches. The bottom tranche—called alternatively the equity, first-loss, or residual tranche—has last call on payments from the pool of loans, or, put differently, is at the head of the line in terms of absorbing default or delinquency risk.

Not surprisingly, investors in tranches with the greatest exposure to credit risk demand the highest coupon rates. Therefore, while the lower mezzanine and equity tranches bear the most risk, they will provide the highest returns if credit experience turns out favorably.

Mortgage-backed CDOs were an investment disaster in 2007-2009. These were CDOs formed by pooling subprime mortgage loans made to individuals whose credit standing did not allow them to qualify for conventional mortgages. When home prices stalled in 2007 and interest rates on these typically adjustable-rate loans reset to market levels, mortgage delinquencies and home foreclosures soared, and investors in these securities lost billions of dollars. Even investors in highly rated tranches experienced large losses.

Not surprisingly, the rating agencies that had certified these tranches as investment-grade came under considerable fire. Questions were raised concerning conflicts of interest: Because the rating agencies are paid by bond issuers, the agencies were accused of responding to pressure to ease their standards.

While CDO issuance fell dramatically in the wake of the financial crisis, they have more recently enjoyed a comeback. However, newer CDOs generally appear to be safer than their pre-crisis cousins. The Dodd-Frank Act requires CDO issuers to retain a material portion of the credit risk of the underlying portfolio. This requirement provides an incentive for issuers to limit credit risk rather than simply off-load it onto another investor. Moreover, banks under the Basel III accord are obligated to hold more capital against the risk of losses. Finally, CDOs today are less likely to hold subprime residential mortgages and more likely to hold higher-rated securities with less leverage.

# SUMMARY

1. Fixed-income securities are distinguished by their promise to pay a fixed or specified stream of income to their holders. The coupon bond is a typical fixed-income security.
2. Treasury notes and bonds have original maturities greater than one year. They are issued at or near par value, with their prices quoted net of accrued interest.
3. Callable bonds should offer higher promised yields to maturity to compensate investors for the fact that they will not realize full capital gains should the interest rate fall and the bonds be called away from them at the stipulated call price. Bonds often are issued with a period of call protection. In addition, discount bonds selling significantly below their call price offer implicit call protection.
4. Put bonds give the bondholder rather than the issuer the option to terminate or extend the life of the bond.
5. Convertible bonds may be exchanged, at the bondholder's discretion, for a specified number of shares of stock. Convertible bondholders "pay" for this option by accepting a lower coupon rate on the security.
6. Floating-rate bonds pay a coupon rate at a fixed premium over a reference short-term interest rate. Risk is limited because the rate is tied to current market conditions.
7. The yield to maturity is the single interest rate that equates the present value of a security's cash flows to its price. Bond values and yields are inversely related. For premium bonds, the coupon rate is greater than the current yield, which is greater than the yield to maturity. The order of these inequalities is reversed for discount bonds.
8. The yield to maturity is often interpreted as an estimate of the average rate of return to an investor who purchases a bond and holds it until maturity. However, when future rates are uncertain, actual returns including reinvested coupons may diverge from yield to maturity. Related measures are yield to call, realized compound yield, and expected (versus promised) yield to maturity.
9. Prices of zero-coupon bonds rise exponentially over time, providing a rate of appreciation equal to the interest rate. The IRS treats this built-in price appreciation as imputed taxable interest income to the investor.
10. When bonds are subject to potential default, the stated yield to maturity is the maximum possible yield to maturity that can be realized by the bondholder. In the event of default, however, that promised yield will not be realized. To compensate bond investors for default risk, bonds must offer default premiums, that is, promised yields in excess of those offered by default-free government securities.
11. Bond safety is often measured using financial ratio analysis. Bond indentures are safeguards to protect the claims of bondholders. Common indentures specify sinking fund requirements, collateralization of the loan, dividend restrictions, and subordination of future debt.
12. Credit default swaps provide insurance against the default of a bond or loan. The swap buyer pays an annual premium to the swap seller but collects a payment equal to lost value if the loan later goes into default.
13. Collateralized debt obligations are used to reallocate the credit risk of a pool of loans. The pool is sliced into tranches, with each tranche assigned a different level of seniority in terms of its claims on the cash flows from the underlying loans. High seniority tranches are usually quite safe, with credit risk concentrated on the lower-level tranches. Each tranche can be sold as a stand-alone security.

# KEY TERMS debt securities

bond par value
face value coupon rate
bond indenture zero-coupon bonds

callable bond convertible bond
put bond floating-rate bonds
yield to maturity (YTM) current yield
premium bonds discount bonds

realized compound return horizon analysis
reinvestment rate risk credit risk
investment-grade bond speculative-grade bond

junk bond sinking fund


subordination clauses collateral


debenture bond default premium


credit default swap (CDS) collateralized debt obligation


(CDO)

Value of a coupon bond:

KEY EQUATIONS

$$
\begin{array}{l} \text {V a l u e} = \text {C o u p o n} \times \frac {1}{r} \left[ 1 - \frac {1}{(1 + r) ^ {T}} \right] + \text {P a r v a l u e} \times \frac {1}{(1 + r) ^ {T}} \\ = \text {C o u p o n} \times \text {A n n u i t y f a c t o r} (r, T) + \text {P a r v a l u e} \times \text {P V f a c t o r} (r, T) \\ \end{array}
$$

1. Define the following types of bonds: a. Catastrophe bond

b. Eurobond c. Zero-coupon bond
d. Samurai bond e. Junk bond
f. Convertible bond g. Serial bond
$h$  Equipment obligation bond i. Original-issue-discount bond
j. Indexed bond
$k$ . Callable bond l. Puttable bond

2. Two bonds have identical times to maturity and coupon rates. One is callable at 105, the other at 110. Which should have the higher yield to maturity? Why?
3. The stated yield to maturity and realized compound yield to maturity of a (default-free) zero-coupon bond are always equal. Why?
4. Why do bond prices go down when interest rates go up? Don't bond lenders like to receive high interest rates?
 5. A bond with an annual coupon rate of 4.8\% sells for 970. What is the bond's current yield?
6. Which security has a higher effective annual interest rate?

a. A 3-month T-bill selling at \$97,645 with par value \$100,000.
b. A coupon bond selling at par and paying a  $10\%$  coupon semiannually.

7. Treasury bonds paying an  $8\%$  coupon rate with semiannual payments currently sell at par value. What coupon rate would they have to pay in order to sell at par if they paid their coupons annually? (Hint: What is the effective annual yield on the bond?)
8. Consider a bond with a  $10\%$  coupon and yield to maturity  $= 8\%$ . If the bond's yield to maturity remains constant, then in one year, will the bond price be higher, lower, or unchanged? Why?
 9. Consider an 8\% coupon bond selling for 953.10 with three years until maturity making annual coupon payments. The interest rates in the next three years will be, with certainty, r1 = 8\%, r2 = 10\%, and r3 = 12\%. Calculate the bond's (a) yield to maturity and (b) realized compound yield.
 10. Assume you have a 1-year investment horizon and are trying to choose among three bonds. All have the same degree of default risk and mature in 10 years. The first is a zero-coupon bond that pays \$1,000 at maturity. The second has an 8\% coupon rate and pays the \$80 coupon once per year. The third has a 10\% coupon rate and pays the 100 coupon once per year.

a. If all three bonds are now priced to yield  $8\%$  to maturity, what are the prices of (i) the zero-coupon bond; (ii) the  $8\%$  coupon bond; (iii) the  $10\%$  coupon bond?
b. If you expect their yields to maturity to be  $8\%$  at the beginning of next year, what will be the price of each bond?
c. What is your before-tax holding-period return on each bond?

PROBLEM SETS d. If your tax bracket is  $30\%$  on ordinary income and  $20\%$  on capital gains income, what will be the after-tax rate of return on each bond?

e. Recalculate your answers to parts  $(b) - (d)$  under the assumption that you expect the yields to maturity on each bond to be  $7\%$  at the beginning of next year.

11. A 20-year-maturity bond with par value of \$1,000 makes semiannual coupon payments at a coupon rate of 8\%. Find the bond equivalent and effective annual yield to maturity of the bond if the bond price is: a. \$950

b. $1,000 c. $1,050

12. Repeat Problem 11 using the same data, but now assume that the bond makes its coupon payments annually. Why are the yields you compute lower in this case?
 13. Fill in the table below for the following zero-coupon bonds, all of which have par values of 1,000.

<table><tr><td>Price</td><td>Maturity (years)</td><td>Bond-Equivalent Yield to Maturity</td></tr><tr><td>a. $400</td><td>20</td><td>—</td></tr><tr><td>b. $500</td><td>20</td><td>—</td></tr><tr><td>c. $500</td><td>10</td><td>—</td></tr><tr><td>d. —</td><td>10</td><td>10\%</td></tr><tr><td>e. —</td><td>10</td><td>8\%</td></tr><tr><td>f. $400</td><td>—</td><td>8\%</td></tr></table>

14. Consider a bond paying a coupon rate of  $10\%$  per year semiannually when the market interest rate is only  $4\%$  per half-year. The bond has three years until maturity.

$a$ . Find the bond's price today and six months from now after the next coupon is paid.
$b$ . What is the total (6-month) rate of return on the bond?

15. A bond with a coupon rate of  $7\%$  makes semiannual coupon payments on January 15 and July 15 of each year. The Wall Street Journal reports the ask price for the bond on January 30 at 100.125. What is the invoice price of the bond? The coupon period has 182 days.
16. A bond has a current yield of  $9\%$  and a yield to maturity of  $10\%$ . Is the bond selling above or below par value? Explain.
17. Is the coupon rate of the bond in Problem 16 more or less than  $9\%$ ?
18. Return to Table 14.1, showing the cash flows for TIPS bonds.

$a$ . What is the nominal rate of return on the bond in year 2?
$b$ . What is the real rate of return in year 2?
c. What is the nominal rate of return on the bond in year 3?
$d$ . What is the real rate of return in year 3?

19. A newly issued 20-year maturity, zero-coupon bond is issued with a yield to maturity of 8\% and face value 1,000. Find the imputed interest income in (a) the first year; (b) the second year; and (c) the last year of the bond's life.
 20. A newly issued 10-year maturity, 4\% coupon bond making annual coupon payments is sold to the public at a price of 800. What will be an investor's taxable income from the bond over the coming year? The bond will not be sold at the end of the year. The bond is treated as an original- issue-discount bond.
21. A 30-year-maturity,  $7\%$  coupon bond paying coupons semiannually is callable in five years at a call price of \$1,100. The bond currently sells at a yield to maturity of  $6\%$  (3\% per half-year).

a. What is the yield to call?
b. What is the yield to call if the call price is only 1,050?
 c. What is the yield to call if the call price is 1,100 but the bond can be called in two years instead of five years?

22. A 10-year bond of a firm in severe financial distress has a coupon rate of 14\% and sells for 900. The firm is currently renegotiating the debt, and it appears that the lenders will allow the firm to reduce coupon payments on the bond to one-half the originally contracted amount. The firm can handle these lower payments. What are (a) the stated and (b) the expected yield to maturity of the bonds? The bond makes its coupon payments annually.
 23. A 2-year bond with par value \$1,000 making annual coupon payments of \$100 is priced at 1,000. What is the yield to maturity of the bond? What will be the realized compound yield to maturity if the 1-year interest rate next year turns out to be (a) 8\%, (b) 10\%, (c) 12\%?
24. Suppose that today's date is April 15. A bond with a  $10\%$  coupon paid semiannually every January 15 and July 15 is quoted as selling at an ask price of 101.25. If you buy the bond from a dealer today, what price will you pay for it?
25. Assume that two firms issue bonds with the following characteristics. Both bonds are issued at par.

<table><tr><td></td><td>ABC Bonds</td><td>XYZ Bonds</td></tr><tr><td>Issue size</td><td>\$1.2 billion</td><td>\$150 million</td></tr><tr><td>Maturity</td><td>10 years*</td><td>20 years</td></tr><tr><td>Coupon</td><td>6\%</td><td>7\%</td></tr><tr><td>Collateral</td><td>First mortgage</td><td>General debenture</td></tr><tr><td>Callable</td><td>Not callable</td><td>In 10 years</td></tr><tr><td>Call price</td><td>None</td><td>110</td></tr><tr><td>Sinking fund</td><td>None</td><td>Starting in 5 years</td></tr></table>

*Bond is extendible at the discretion of the bondholder for an additional 10 years.

Ignoring credit quality, identify four features of these issues that might account for the lower coupon on the ABC debt. Explain.

26. An investor believes that a bond may temporarily increase in credit risk. Which of the following would be the most liquid method of exploiting this?

$a$  . The purchase of a credit default swap.
$b$ . The sale of a credit default swap.
$c$ . The short sale of the bond.

27. Which of the following most accurately describes the behavior of credit default swaps?

$a$ . When credit risk increases, swap premiums increase.
$b$ . When credit and interest rate risk increase, swap premiums increase.
c. When credit risk increases, swap premiums increase, but when interest rate risk increases, swap premiums decrease.

28. Describe the likely effect on the yield to maturity of a bond resulting from:

$a$ . An increase in the issuing firm's times-interest-earned ratio.
$b$ . An increase in the issuing firm's debt-to-equity ratio.
c. An increase in the issuing firm's quick ratio.

29. These two bonds were issued five years ago, with terms given in the following table:

<table><tr><td></td><td>6\% Coupon</td><td>Floating-Rate</td></tr><tr><td>Issue size</td><td>\$250 million</td><td>\$280 million</td></tr><tr><td>Original maturity</td><td>20 years</td><td>15 years</td></tr><tr><td>Current price (\% of par)</td><td>93</td><td>98</td></tr><tr><td>Current coupon</td><td>6\%</td><td>4\%</td></tr><tr><td>Coupon adjusts</td><td>Fixed coupon</td><td>Every year</td></tr><tr><td>Coupon reset rule</td><td>—</td><td>1-year T-bill rate + 2\%</td></tr><tr><td>Callable</td><td>10 years after issue</td><td>10 years after issue</td></tr><tr><td>Call price</td><td>106</td><td>102.50</td></tr><tr><td>Sinking fund</td><td>None</td><td>None</td></tr><tr><td>Yield to maturity</td><td>6.9\%</td><td>—</td></tr><tr><td>Price range since issued</td><td>$85–$112</td><td>$97–$102</td></tr></table>

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/cd043736753dba93abf369920568a7bb68c192b358d3ebe2f869f96865ff66d6.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/1259edbc63e61b94a12d50fce69ecaa4c80f1c56960d9e371d6c6153e85151da.jpg)

$a$ . Why is the price range greater for the  $6\%$  coupon bond than the floating-rate bond?
$b$ . What factors could explain why the floating-rate bond is not always sold at par value?
c. Why is the call price for the floating-rate bond not of great importance to investors?
$d$ . Is the probability of a call for the fixed-rate bond high or low?
e. If the firm were to issue a fixed-rate bond with a 15-year maturity, what coupon rate would it need to offer to issue the bond at par value?
$f$ . Why is an entry for yield to maturity for the floating-rate bond not appropriate?

30. FinCorp issued two bonds with 20-year maturities. Both bonds are callable at \$1,050. The first bond was issued at a deep discount with a coupon rate of 4\% and a price of \$580 to yield 8.4\%. The second bond was issued at par value with a coupon rate of 8.75\%.

a. What is the yield to maturity of the par bond? Why is it higher than the yield of the discount bond?
$b$ . If you expect rates to fall substantially in the next two years, which bond has the higher expected rate of return?
$c$ . In what sense does the discount bond offer "implicit call protection"?

31. A newly issued bond pays its coupons once annually. Its coupon rate is  $5\%$ , its maturity is 20 years, and its yield to maturity is  $8\%$ .

a. Find the holding-period return for a 1-year investment period if the bond is selling at a yield to maturity of  $7\%$  by the end of the year.
b. If you sell the bond after one year, what taxes will you owe if the tax rate on interest income is  $40\%$  and the tax rate on capital gains income is  $30\%$ ? The bond is subject to original-issuediscount tax treatment.
c. What is the after-tax holding-period return on the bond?
d. Find the realized compound yield before taxes for a 2-year holding period, assuming that (i) you sell the bond after two years, (ii) the bond yield is  $7\%$  at the end of the second year, and (iii) the coupon can be reinvested for one year at a  $3\%$  interest rate.
e. Use the tax rates in part (b) to compute the after-tax 2-year realized compound yield. Remember to take account of OID tax rules.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/14cbd69a87a528f52883d4ee5e6515eb7737e3c350a67f61aec93ac68d39a7e7.jpg)

1. Leaf Products may issue a 10-year maturity fixed-income security, which might include a sinking fund provision and either refunding or call protection.

$a$ . Describe a sinking fund provision.
$b$ . Explain the impact of a sinking fund provision on: i. The expected average life of the proposed security.

ii. Total principal and interest payments over the life of the proposed security.

c. From the investor's point of view, explain the rationale for demanding a sinking fund provision.

2. Bonds of Zello Corporation with a par value of \$1,000 sell for \$960, mature in five years, and have a 7\% annual coupon rate paid semiannually.

a. Calculate the: i. Current yield.

ii. Yield to maturity to the nearest whole percent (i.e.,  $3\%$ ,  $4\%$ ,  $5\%$ , etc.).
iii. Realized compound yield for an investor with a 3-year holding period and a reinvestment rate of  $6\%$  over the period. At the end of three years, the  $7\%$  coupon bonds with two years remaining will sell to yield  $7\%$ .

$b$ . Cite one major shortcoming for each of the following fixed-income yield measures: i. Current yield.

ii. Yield to maturity.
iii. Realized compound yield.

3. On May 30, 2023, Janice Kerr is considering one of the newly issued 10-year AAA corporate bonds shown in the following exhibit.

<table><tr><td>Description</td><td>Coupon</td><td>Price</td><td>Callable</td><td>Call Price</td></tr><tr><td>Sentinal, due May 30, 2033</td><td>4.00\%</td><td>100</td><td>Noncallable</td><td>NA</td></tr><tr><td>Colina, due May 30, 2033</td><td>4.20\%</td><td>100</td><td>Currently callable</td><td>102</td></tr></table> a. Suppose that market interest rates decline by 100 basis points (i.e.,  $1\%$ ). Contrast the effect of this decline on the price of each bond.

b. Should Kerr prefer the Colina or the Sentinel bond when rates are expected to rise? Which should she prefer when rates are expected to fall?

4. A convertible bond has the following features. What is its conversion premium?

<table><tr><td>Coupon</td><td>5.25\%</td></tr><tr><td>Maturity</td><td>June 15, 2030</td></tr><tr><td>Market price of bond</td><td>\$77.50</td></tr><tr><td>Market price of underlying common stock</td><td>\$28.00</td></tr><tr><td>Annual dividend</td><td>1.20</td></tr><tr><td>Conversion ratio</td><td>20.83 shares</td></tr></table>

5.  $a$ . Explain the likely impact on the offering yield of adding a call feature to a proposed bond issue.

b. Explain the likely impact on the bond's expected life of adding a call feature to a proposed bond issue.
c. Describe one advantage and one disadvantage of investing in callable rather than noncallable bonds.

6. a. An investment in a coupon bond will provide the investor with a return equal to the bond's yield to maturity at the time of purchase if: i. The bond is not called for redemption at a price that exceeds its par value.

ii. All sinking fund payments are made in a prompt and timely fashion over the life of the issue.

iii. The reinvestment rate equals the bond's yield to maturity and the bond is held until maturity.
iv. All of the above.

$b$ . A bond with a call feature: i. Is attractive because the immediate receipt of principal plus premium produces a high return.

ii. Is more apt to be called when interest rates are high because the interest savings will be greater.
iii. Will usually have a higher yield to maturity than a similar noncallable bond.
iv. None of the above.

c. In which one of the following cases is the bond selling at a discount?

i. Coupon rate is greater than current yield, which is greater than yield to maturity.
ii. Coupon rate, current yield, and yield to maturity are all the same.
iii. Coupon rate is less than current yield, which is less than yield to maturity.
iv. Coupon rate is less than current yield, which is greater than yield to maturity.

$d$ . Consider a 5-year bond with a  $10\%$  coupon that has a present yield to maturity of  $8\%$ . If interest rates remain constant, one year from now the price of this bond will be: i. Higher

ii. Lower iii. The same
iv. Par

# E-INVESTMENTS EXERCISE

Go to www.finra-markets.morningstar.com/bondcenter, click on the Bonds tab on the left side of the Web page, click on the Search tab, and enter a company ticker symbol (e.g., AAPL for Apple). When you submit your request, you will be given a list of all bonds issued by Apple. Using this procedure, find the ratings on bonds of at least 10 companies. Try to choose a sample with a wide range of ratings. Then go to a Web site such as money.msn.com or finance.yahoo.com and obtain for each firm as many of the financial ratios tabulated in Table 14.3 as you can find. Which ratios seem to best explain credit ratings?

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/f7f27d6028586988ed684b0650c990f28e06801caf757dd2aeffe0b2991a92d5.jpg)

# SOLUTIONS TO CONCEPT CHECKS

1. The callable bond will sell at the lower price. Investors will not be willing to pay as much if they know that the firm retains a valuable option to reclaim the bond for the call price if interest rates fall.
 2. At a semiannual interest rate of 3\%, the bond is worth \$40 × Annuity factor(3\%, 60) + \$1,000 × PV factor(3\%, 60) = \$1,276.76, which results in a capital gain of \$276.76. This exceeds the capital loss of $189.29 (i.e., $1,000 - 810.71) when the semiannual interest rate increased from 4\% to 5\%.
3. Yield to maturity exceeds current yield, which exceeds coupon rate. Take as an example the  $8\%$  coupon bond with a yield to maturity of  $10\%$  per year ( $5\%$  per half-year). Its price is  $\$ 810.71$ , and therefore its current yield is  $80 / 810.71 = .0987$ , or  $9.87\%$ , which is higher than the coupon rate but lower than the yield to maturity.
 4. a. The bond with the 6\% coupon rate currently sells for 30 × Annuity factor(3.5\%, 20) + 1,000 × PV factor(3.5\%, 20) = \$928.94. If the interest rate immediately drops to 6\% (3\% per half-year), the bond price will rise to \$1,000, for a capital gain of \$71.06, or 7.65\%. The 8\% coupon bond currently sells for \$1,071.06. If the interest rate falls to 6\%, the present value of the scheduled payments increases to \$1,148.77. However, the bond will be called at \$1,100, for a capital gain of only 28.94, or 2.70\%.
b. The current price of the bond can be derived from its yield to maturity. Using your calculator, set  n = 40  (semiannual periods); payment  = \ {45}  per period; future value  = \ 1,{000}  ; interest rate  = 4\%  per semiannual period. Calculate present value as  \$ 1,{098.96}  . Now we can calculate yield to call. The time to call is 5 years, or 10 semiannual periods. The price at which the bond will be called is  \$ 1,{050}  . To find yield to call,we set  n = {10}  (semiannual periods); payment  = \ {45}  per period; future value  = \$ 1,{050}  ; present value  = \ 1,{098.96}  . Calculate yield to call as  {3.72}\%  ,or  {7.44}\%  bond equivalent yield.
5. Price = \$70 × Annuity factor(8\%, 1) + \$1,000 × PV factor(8\%, 1) = 990.74

$$
\text{Rate of return to investor} = \frac {\mathbb {S} 70 + (\mathbb {S} 990.74 - \mathbb {S} 982.17)}{\mathbb {S} 982.17} = . 080 = 8 \%
$$

6. By year-end, remaining maturity is 29 years. If the yield to maturity were still 8\%, the bond would still sell at par and the holding-period return would be 8\%. At a higher yield, price and return will be lower. Suppose, for example, that the yield to maturity rises to 8.5\%. With annual payments of \$80 and a face value of \$1,000, the price of the bond will be $946.70 [n = 29; i = 8.5\%; PMT = $80; FV = \$1,000]. The bond initially sold at \$1,000 when issued at the start of the year. The holding-period return is

$$
\mathrm{HPR} = \frac{80 + (946.70 - 1,000)}{1,000} = .0267 = 2.67\%
$$ which is less than the initial yield to maturity of  $8\%$ .


7. At the lower yield, the bond price will be $631.67 [n = 29, i = 7\%, FV = $1,000, PMT = 40]. Therefore, total after-tax income is

<table><tr><td>Coupon</td><td>$40 × (1 - .38)</td><td>= $24.80</td></tr><tr><td>Imputed interest</td><td>($553.66 - $549.69) × (1 - .38)</td><td>= 2.46</td></tr><tr><td>Capital gains</td><td>($631.67 - $553.66) × (1 - .20)</td><td>= 62.41</td></tr><tr><td>Total income after taxes</td><td></td><td>89.67</td></tr></table>

Rate of return  $= {89.67}/{549.69} = {.163} = {16.3}\%$  .

8. It should receive a negative coefficient. A high ratio of liabilities to assets is a bad omen for a firm, and that should lower its credit rating.
 9. The coupon payment is \$45. There are 20 semiannual periods. The final payment is assumed to be \$500. The present value of expected cash flows is 650. The expected yield to maturity is 6.317\% semiannual or annualized, 12.63\%, bond equivalent yield.

