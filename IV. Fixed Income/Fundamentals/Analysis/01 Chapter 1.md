---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Chapter 1
linter-yaml-title-alias: Chapter 1
---

# Chapter 1

# Introduction

# 1.1 Introduction

# 1.1.1 What Is A Fixed Income Security?

The name "fixed income" is misleading. In the old days, this name referred to those fixed rate bonds that paid fixed coupons and therefore provided a fixed stream of cash payoffs. Today, however, from floating rate bonds and notes to mortgage backed securities, there are an unbelievably number of fixed income derivatives that pay floating interests and yet they are under the scope of fixed income security. Today, fixed income securities really mean interest rate sensitive securities.

We should be aware that many interest rate derivatives now are also derivatives of other assets. For example, a convertible bond is a derivative of at least two assets: interest rate and stock. An asset swap is an interest rate derivative as well as a credit derivative. Hence, we should define interest rate derivatives to include any derivative asset whose value is sensitive to interest rate movement. However, by this definition, literally all assets are interest rate derivatives, even the most straightforward stocks. Stocks are sensitive to interest rate movement, as we have seen again and again when the Fed raises or drops interest rates their values respond almost instantly. So, where do we draw the line? As we can see, there is no clear definition of what should be an interest rate derivative (or fixed income security). What we call fixed income securities or interest rate derivatives are just by convention and experience.

# 1.1.2 Trading Conventions

One thing very unique about fixed income securities markets is the trading and quoting conventions. Fixed income securities have the most complex trading and quoting conventions than any other securities. Lets try several examples here. Most fixed income securities are quoted on the thirty second basis. For example, a bond quoted at 100.16 does not mean the bond will be bought and sold at 100 dollars and 16 cents. But rather, the bond will be bought and sold at  $100 + 16/32$ , which is 100 dollars and 50 cents. One tick in fixed income securities is 1/32. Stocks used to have ticks too of 1/8 and 1/16 but they do not have that anymore.

Another interesting trading convention is dirty price versus clean price. Bonds are quoted by the clean price but transacted by the dirty price. The difference is the accrued interest. Investors who buy and sell bonds need to compute the accrued interest by themselves and the add to the clean price to get the dirty price.

Daycount convention is another complexity in trading fixed income securities. Due to the fact that we do not have equal number of days in every month, the number of days between two consecutive coupons varies from time to time. For example, a bond pays coupons on the fifteen of June and the fifteen of December. From 2008/6/15 to 2008/12/15 is 183 days and yet from 2008/12/15 to 2009/6/15 is 182 days. Daycount convention is designed to equalize the difference in days. Misusing daycount can lead to wrong a clean price calculation.

We should explain these conventions in details later in this chapter.

# 1.1.3 OTC Trading and Liquidity Risk

Another very unique feature of trading fixed income securities is that, except for a small quantity of corporate bonds and standardized futures and options contracts, nearly all fixed income securities are transacted in the over-the-counter (OTC) market and in large notionals. This prohibits individual investors from trading the fixed income securities. Institutional investors, like mutual funds, pension funds, hedge funds, and insurance companies are the participants in the market.

Many of these companies buy and hold fixed income securities and count on their interests. As a result only a small percentage of fixed income securities are actively transacted. Although there is formal statistic of what percentage of fixed income securities that are actively transacted but people believe that it is less than  $10\%$ . Hence, it is important to realize that fixed income securities usually suffer very large bid-ask spreads. It is not unusual in the municipal bond market where the bid-ask spreads can be as large as  $10\%$  of the face value! Compared to 9.95 flat fee that discount brokers charge for trading large amount of stocks, fixed income securities investors pay large liquidity premiums.

# 1.2 How Many Interest Rates Are Out There?

You would not believe the number of interest rates that we observe on a daily basis. These interest rates are highly related, either by tax, or by default risk, or by market microstructure.

# 1.2.1 US Treasuries

To support the government work, the United State Treasury department borrows money from its citizens (ironically, China and Japan own over  $30\%$  of the U.S. Treasuries) by issuing IOUs. These IOUs are categorized, by their coupon structure and issuance frequency, into the following three groups:

- T bills - zero coupon, up to 1 year
- T notes - semi-annual coupon, 1 10 years
T bonds - semi-annual coupon, 10 30 years
CMT (Constant Maturity Treasury)
TIPS (Treasury Inflation Protected Security)
- STRIPS (Separate Trading of Registered Interest and Principal Securities)

Treasury bills (T bills) are less than one year zero coupon Treasury securities. Three T bills are auctioned once a week on Thursdays - 4 week (Monday auction), 13 week, and 26 week T bills. Hence, these are "on-the-run" T bills.

Treasury notes (T notes) usually auctioned every month. The "on-the-run" T notes are currently 2, 5, and 10 year T notes. Only 30-year Treasury bonds (T bonds) are auctioned right now, four times a year, in February, May, August, and November.

TIPS are inflation protected Treasuries and are auctioned for 5 and 10 years only on an irregular basis. TIPS pay coupons that are inflation adjusted where the adjustment is tied to CPI (Consumer Price Index) that is published by the monthly by the Bureau of Labor Statistics of the United States Department of Labor.

CMTs are interpolated (weighted average of Treasury yields) Treasury interest rates published on the fly by the Treasury department. Given that the actual Treasury issues have fixed maturities, and hence cannot provide good benchmarking for other interest rates (e.g. swap rates), the Treasury department compiles interest rates for "constant maturities". Note that CMT rates are "semi-annual par rates", which means, it is the coupon rate of a Treasury issue of the given tenor sold at the face value. Currently, there are 1, 3, 6 month, and 1, 2, 3, 5, 7, 10, 20, 30 year CMTs available.

STRIPS are T-Notes, T-Bonds and TIPS whose interest and principal portions of the security have been separated, or "stripped"; these may then be sold separately in the secondary market. The name derives from the notional practice of literally tearing the interest coupons off (paper) securities. The government does not directly issue STRIPS; they are formed by investment banks or brokerage firms, but the government does register STRIPS in its book-entry system. They cannot be bought through TreasuryDirect, but only through a broker.

# 1.2.2 FED rates

There are two interest rates controlled by the Federal Reserve Bank.

FED fund rate

Discount rate

The Fed funds rate is the interest rate at which banks lend their federal funds at the Federal Reserve to banks, usually overnight. Hence, it is an interbank lending rate. This rate is usually higher than the short term Treasury rates.

The discount rate is the interest rate at which member banks may borrow short term funds directly from a Federal Reserve Bank. The discount rate is one of the two interest rates set by the Fed, the other being the Federal funds rate. The Fed actually controls this rate directly, but this fact does not really help in policy implementation, since banks can also find such funds elsewhere. This rate is lower than the short term Treasury rates.

# 1.2.3 LIBOR based products

LIBOR stands for London InterBank Offer Rate and is an interbank rate between major commercial banks, led by the Bank of England, in London. LIBORs have become the benchmark interest rates in the financial industry (in place of Treasury rates), mainly because these are the funding costs of most banks in the financial industry. There are three popular LIBOR rates set by the major commercial banks: 1 month, 3 month, and 6 month rates. However, there are long term LIBOR derivatives such as Eurodollar futures contracts and interest rate swaps.

- LIBOR (London Interbank Offer Rate)
- Eurodollar futures
- IRS (Interest Rate Swaps)

Given that U.K. has no central bank, unlike the U.S., the Bank of England serves the role of the central bank for the U.K. As a result, LIBOR symbolizes the government rate. However, technically the Bank of England is not the central after all, LIBOR as a result remains a private interest rate.

LIBOR is published by the British Bankers Association (BBA) after 11:00 am (and generally around 11:45 am) each day, London time, and is a filtered average of inter-bank deposit rates offered by designated contributor banks, for maturities ranging from overnight to one year. There are 16 such contributor banks and the reported interest is the mean of the 8 middle values. The shorter rates, i.e. up to 6 months, are usually quite reliable and tend to precisely reflect market conditions. The actual rate at which banks will lend to one another will, however, continue to vary throughout the day.

Floating rate products use LIBORs as benchmarks, mainly because companies that issue floating rate bonds cannot borrow at the Treasury rates. Although the actual situations may change, by and large, LIBORs are in between AAA and AA corporate yields.

# 1.2.4 Agencies

Agencies refer to three government supported financial institutions that underwrite and guarantee residential mortgages.

- corporate bonds of GNMA, FNMA, FHLMC

Government National Mortgage Association (GNMA, pronounced Gennie Mae), Federal National Mortgage Association (FNMA, pronounced Fannie Mae), and Federal Home Loan Mortgage Corporation (FHLMC, pronounced Freddie Mac) are three government agencies that underwrite residential mortgages to the secondary market.

These three agencies were set up after the World War II to help low income and military veterans to purchase homes. Recently the congress, after recognizing the historical mission has been successfully accomplished, announced that they were no longer government agencies but private financial institutions. Yet, investors still believe that there is implicit government backing when these three agencies are in trouble. As a result, they issue corporate bonds with lower yields. An informal rating for these three agencies is AAAA, one rating higher than the highest rating given by rating agencies.

# 1.2.5 Corporates (Credit rating)

Corporations borrow to finance their investment projects. There is a wide variety of forms of how corporate borrowing – ranging from short term borrowings like lines of credit, commercial papers (90 days and 180 days typically), and bank term loans (which themselves take various forms), to medium term corporate notes and bonds, to long term corporate bonds (some can be as long as 100 years!)

There is a wide variety of forms within corporate bonds – fixed rate bonds, floating rate bonds (floaters), bonds with sinking funds, bonds with amortizing principals, convertible bonds, callable and puttable bonds, … etc. Corporate bonds also vary in terms of covenants, collaterals, and seniorities.

Rating agencies rate corporate bonds by their default likelihoods and recovery values once defaults happen. Hence, ratings provide investors a rough idea of how risky corporate bonds are in a general way. In other words, ratings summarize all the information with a single letter to help investors understand the credit risk of corporate bonds. While ratings are very helpful, due to their simplicity, they are often criticized to be inaccurate and behind market timing. Despite many rating agencies that provide different rating systems, in general we have 9 rating groups:

AAA

AA

A

BBB

BB

B

- CCC
CC
C
D
where within each rating there could be multiple, usually three, sub-groups (called notches).

Due to different business characteristics (business risk), we often classify companies into industry sectors. The highest level of classification is to divide companies into two groups: financial and industrial. Financial companies have high leverage ratios due the nature of the business, hence cannot be compared with other industrial firms. Industrial companies are further divided into many groups. Different service companies classify industrial companies differently. For example, Compustat, the largest financial data source, classifies the companies as follows:

- Division 0: Agriculture, Forestry, And Fishing
- Division 1: Mining, and Construction
- Division 2,3: Manufacturing
- Division 4: Transportation, Communications, Electric, Gas, And Sanitary Services
- Division 5: Wholesale Trade, Retail Trade
- Division 6: Finance, Insurance, and Real Estate
- Division 7,8: Services
- Division 9: Public Administration

Combining every industry sector and every credit rating, we are able assign each and every firm into a "cohort". For example, 9 credit ratings (from AAA to C) and 9 industry sectors result in 81 cohorts. Within each cohort, companies should be rather homogeneous since they belong the same industry and rating. As a result, we can compute 81 cohort yield curves.

# 1.2.6 Sovereigns (USD denominated)

There are two major types of sovereign bonds traded in the United States (and denominated in dollars):

- Yankee bonds
- Brady bonds

According to www.investopedia.com, a Yankee bond is a bond denominated in U.S. dollars and is publicly issued in the United States by foreign banks and corporations. According to the Securities Act of 1933, these bonds must first be registered with the Securities and Exchange Commission (SEC) before they can be sold. Yankee bonds are often issued in tranches and each offering can be as large as 1 billion.

Due to the high level of stringent regulations and standards that must be adhered to, it may take up to 14 weeks (or 3.5 months) for a Yankee bond to be offered to the public. Part of the process involves having debt-rating agencies evaluate the creditworthiness of the Yankee bond's underlying issuer.

Foreign issuers tend to prefer issuing Yankee bonds during times when the U.S. interest rates are low, because this enables the foreign issuer to pay out less money in interest payments.

According to Wikipedia, Brady bonds are dollar-denominated bonds, issued mostly by Latin American countries in the 1980s, named after U.S. Treasury Secretary Nicholas Brady.

Brady bonds were created in March 1989 in order to convert bonds issued by mostly Latin American countries into a variety or "menu" of new bonds after many of those countries defaulted on their debt in the 1980's. At that time, the market for sovereign debt was small and illiquid, and the standardization of emerging-market debt facilitated risk-spreading and trading. In exchange for commercial bank loans, the countries issued new bonds for the principal and, in some cases, unpaid interest. Because they were tradable and came with some guarantees, in some cases they were more valuable to the creditors than the original bonds.

The key innovation behind the introduction of Brady Bonds was to allow the commercial banks to exchange their claims on developing countries into tradable instruments, allowing them to get the debt off their balance sheets. This reduced the concentration risk to these banks.

The plan included two rounds. In the first round, creditors bargained with debtors over the terms of these new claims. Loosely interpreted, the options contained different mixes of "exit" and "new money" options. The exit options were designed for creditors who wanted to reduce their exposure to a debtor country. These options allowed creditors to reduce their exposure to debtor nations, albeit at a discount. The new money options reflected the belief that those creditors who chose not to exit would experience a capital gain from the transaction, since the nominal outstanding debt obligation of the debtor would be reduced, and with it the probability of future default. These options allowed creditors to retain their exposure, but required additional credit extension designed to "tax" the expected capital gains. The principal of many instruments was collateralized, as were "rolling interest guarantees," which guaranteed payment for fixed short periods. The first round negotiations thus involved the determination of the effective magnitude of discount on the exit options together with the amount of new lending called for under the new money options.

In the second round, creditors converted their existing claims into their choice among the "menu" of options agreed upon in the first round. The penalties for creditors failing to comply with the terms of the deal were never made explicit. Nevertheless, compliance was not an important problem under the Brady Plan. Banks wishing to cease their foreign lending activities tended to choose the exit option under the auspices of the deal.

By offering a "menu" of options, the Brady Plan permitted credit restructurings to be tailored to the heterogeneous preferences of creditors. The terms achieved under these deals indicate that debtors used the menu approach to reduce the cost of debt reduction. Furthermore, it reduced the holdout problem where certain shareholders have an incentive to not participate in the restructuring in hopes of getting a better deal.

The principal amount is usually but not always collateralized by specially issued U.S. Treasury 30-year zero-coupon bonds purchased by the debtor country using a combination of International Monetary Fund, World Bank, and the country's own foreign currency reserves. Interest payments on Brady bonds, in some cases, are guaranteed by securities of at least double-A-rated credit quality held with the Federal Reserve Bank of New York.

Countries that participated in the initial round of Brady bond issuance were Argentina, Brazil, Bulgaria, Costa Rica, Dominican Republic, Ecuador, Mexico, Morocco, Nigeria, Philippines, Poland, Uruguay.

# 1.2.7 Municipals (Munis)

According to Wikipedia, in the United States, a municipal bond (or muni) is a bond issued by a state, city or other local government, or their agencies. Potential issuers of municipal bonds include cities, counties, redevelopment agencies, school districts, publicly owned airports and seaports, and any other governmental entity (or group of governments) below the state level. Municipal bonds may be general obligations of the issuer or secured by specified revenues. Interest income received by holders of municipal bonds is often exempt from the federal income tax and from the income tax of the state in which they are issued, although municipal bonds issued for certain purposes may not be tax exempt.

Muni bonds are as risky as corporate bonds. Rating agencies rate muni bonds as they rate corporate bonds.

# 1.2.8 Retail Credits

The above credit risks are roughly categorized as corporate credits. That is, the credit risk of an entity. In addition, there are also credit risks from individuals. Individuals borrow money just like corporations do and they can default on their loans as well. This is known as retail credit risk. Due to a number of various reasons, we must model retail credit risk different from corporate credit risk. There are a number retail loans that are transacted in the secondary market. The most important one is residential home mortgages.

# Mortgage rates

Home owners borrow from banks to purchase their homes and use their homes as collaterals. These loans are called mortgages. Many mortgage banks lend home owners with the deposits they receive from their depositors. Many others sell their mortgages to the secondary market as mortgage-backed securities.

Regardless if a mortgage is lent directly by deposits or selling to the secondary market, the interest rate charged (called mortgage rate) on the borrower is a function of the borrower's credit history, which is categorized as follows:

- prime
Alt-A
- sub-prime

These mortgage rates reflect the credit quality of the borrowers and hence vary widely. Prime borrowers are the safest. They must meet many strict criteria such as low LTV (loan to value ratio, typically less than  $80\%$ ) and low PI (payment to income ratio, usually less than 1/3). Alt-A borrowers are less safe. They may not be high credit-risky but are classified as such due to lack of long credit history or lack of documentation. Sub-prime borrowers are regarded as unsafe or high risk, but they do not necessarily have bad credit history. Some may not have steady job or regular income.

# Credit cards

Credit card loans are the money owed by card owners by not paying the full amount each month. It is notoriously well known that credit card interest rates are extremely high (like  $18\%$  on a per annum basis). Credit card loans, along with other retail lendings are packaged in "asset backed securities" and transacted in the secondary market. A credit card loan can be short or long depending on the borrower's consumption and financing habit. It can range from a few days to several months.

# Auto loans

Loans borrowed to purchase automobiles are packaged in asset backed securities as well. However, unlike credit card loans, these auto loans are collateralized (by the vehicles). As a result, they are much less risky than credit card loans. In fact, the asset backed securities backed by auto loans are consider extremely safe and they often receive AAA ratings. Student loans Student loans are government subsidized loans which are in many cases guaranteed by the government. The student loans that are securitized in the secondary market are performed by SLM Corporation (commonly known as Sallie Mae; originally the Student Loan Marketing Association).

# Student loans

Student loans are government subsidized loans which are in many cases guaranteed by the government. The student loans that are securitized in the secondary market are performed by SLM Corporation (commonly known as Sallie Mae; originally the Student Loan Marketing Association).

# 1.3 Types of Fixed Income Securities

To speculate or hedge the above interest rate changes/risks, there are a number of different types of fixed income securities transacted in the marketplace, such as:

- bonds (fixed rate or floating rate), options,
- futures/forwards, and
- swaps.

No matter how complex a fixed income security is, it can always be decomposed into a combination of the above types of contracts. These types of derivative contracts are well explained in any standard options and futures textbooks. We shall not repeat the effort here.

We should note that two of the types, bonds and options, require an upfront payment. So they are like products to be purchased and owned. Two of the types, futures/forwards and swaps, require no upfront payment. So they are commitments made by two counterparties. Futures contracts that guaranteed by the exchange and hence are free from default risk yet the forward contracts are subject to default risk.

Different contract designs will represent the same risk very differently. For example, credit default swaps are designed to protect default loss. A credit default swap contract takes over the defaulted bond issue and pays the owner notional value of the bond upon default. In return, the buyer pays in a series of premiums until either default or maturity (whichever is earlier). This is a swap contract hence there is no cash changed hands at inception. On the other hand, a put option will provide exactly the same protection, yet the option requires an upfront payment. It can be shown that these two contracts are priced very differently. Another example is property index futures versus property index swaps. Chicago Mercantile Exchange trades Case-Shiller property index futures while over the counter institutional investors trade RPX (Radar Logic) property index swaps.

# 1.4 Market Basics

# 1.4.1 Yield

Yield, or yield to maturity, represents an expected return of a fixed income security. Yield is also known as the internal rate of return, which technically means the flat discount rate that equates the cash flows and the price of the security. There are various ways to define such a yield. The most elementary ones are:

$$
P = \frac {c _ {1}}{1 + y} + \frac {c _ {2}}{(1 + y) ^ {2}} + \dots + \frac {c _ {n}}{(1 + y) ^ {n}} \tag {1.1}
$$ where  $c_{j}$  is the  $j$ -th period cash flow. The top line is discrete discounting and the bottom line is continuous discounting. In a typical case the cash flows are fixed and the principal is redeemed at the maturity:


$$ c _ {j} = c \mathrm {f o r} j <   n \mathrm {a n d} c _ {n} = 1 + c.
$$

For example, a 10-year 6\% coupon bond that pays annual coupons with a face value of \$1000 and a market price of \$980 can be calculated to have the following yield:

$$
9 8 0 = \frac {6 0}{1 + y} + \frac {6 0}{(1 + y) ^ {2}} + \dots + \frac {1 0 6 0}{(1 + y) ^ {1 0}}
$$

The solution is  $y = 6.2753\%$  in discrete time. This yield is an expected return, or internal rate of return, and not the actual return of the bond. The actual return depends on how interest rates move and how each  \$60 is invested. If rates go up in the next 10 years, the re-investment of each\$ 60 will earn more than 6.2753\% and the final outcome will be more. On the other hand, if rates drop and the re-investment incomes of 60 coupons will suffer less returns and the final outcome will be less.

In the above equation, the period over which the yield  $y$  is generated is consistent with the length of the period. That is, if the period is semi-annual, then  $y$  is a semi-annual yield. However, it is customary to report yields in an annual basis (per annum) and hence this semi-annual yield needs to be multiplied by 2. As a result, it is more convenient to embed annualization into the formula. There are two ways to do that:

$$
\begin{array}{l} \# 1) P = \frac {c _ {1}}{1 + y / m} + \frac {c _ {2}}{(1 + y / m) ^ {2}} + \dots + \frac {c _ {m \times n}}{(1 + y / m) ^ {m \times n}} \tag {1.2} \\ \# 2) P = \frac {c _ {1}}{(1 + y) ^ {1 / m}} + \frac {c _ {2}}{(1 + y) ^ {2 / m}} + \dots + \frac {c _ {m \times n}}{(1 + y) ^ {n}} \\ \end{array}
$$ where  $m$  is the frequency the coupon is paid during a year. In a semi-annual (or quarterly) case,  $m = 2$  ( $m = 4$ ). Now the total number of payments is 20 and each  $c_i = 60 \div 2 = 30$  and the last payment is  $c_{20} = 1030$ . This way,  $y$  is automatically already annualized (per annum). Take the same example but assume semi-annual coupons, each coupon payment is now 30 but paid every 6 months. Hence,


$$

\begin{array}{l} 9 8 0 = \frac {3 0}{1 + y / 2} + \frac {3 0}{(1 + y / 2) ^ {2}} + \dots + \frac {1 0 3 0}{(1 + y / 2) ^ {2 0}} \\ 9 8 0 = \frac {3 0}{(1 + y) ^ {0 . 5}} + \frac {3 0}{(1 + y) ^ {1}} + \dots + \frac {3 0}{(1 + y) ^ {9 . 5}} + \frac {1 0 3 0}{(1 + y) ^ {1 0}} \\ \end{array}

$$ and the yield now is equal to  $6.2723\%$  and  $6.3706\%$  respectively.

For quarterly (m = 4) where coupon payment at each quarter is \$15 (last payment is \$1015) and 40 quarters, y = 6.2707\%. As we can see now that more frequent discounting leads to less yield. This is intuitive in that if an investment is paying more frequently and reinvestment income is higher and hence you do not need a high-return investment to generate the same total cash flow (in the example it is 60 × 10 + 1000 = 1600).

In the extreme case where discounting is continuous:

$$
\begin{array}{l} P = c _ {1} e ^ {- y} + c _ {2} e ^ {- 2 y} + \dots + c _ {n} e ^ {- 1 0 y} \\ 9 8 0 = 6 0 e ^ {- y} + 6 0 e ^ {- 2 y} + \dots + 1 0 6 0 e ^ {- 1 0 y} \\ \end{array}
$$ and  $y = 6.09\%$ , which is the lowest.


The above demonstration, seen in most text books, however is not realistic. We observe prices all the time and at no circumstances where we have an integer number of periods. So how do we deal with this realistic situation?

The continuous discounting method is the easiest to adjust:

$$

P = c _ {1} e ^ {- y \times t _ {1}} + c _ {2} e ^ {- y \times t _ {2}} + \dots + c _ {n} e ^ {- y \times t _ {n}}

$$ where  $t_i$  is the distance (per annum) between now and the payment date.

For example, we have a  $6\%$  coupon bond that matures on December 31, 2030 and today is August 26, 2020 and the bond is paying semi-annual coupons (i.e. \$30 per six months). Given the maturity of December 31, 2030, we know that coupons are paid on June 30 and December 31 every year. Hence, the next coupon payment date is  $12/31/2020$ . There are 127 days between now (8/26/2020) and end of the year, which is 0.347 year (i.e.  $127 \div 366$  because 2020 is a leap year). Then we can write the equation as:

$$
P = 3 0 e ^ {- y \times 0. 3 4 7} + 3 0 e ^ {- y \times 0. 8 4 7} + \dots + 1 0 3 0 e ^ {- y \times 1 0. 3 4 7}
$$ and the solution is  $y = 6.2877\%$ .


The discrete case is more complicated. There are two discrete methods in equation (1.2). For the first method, 0.347 year is 0.694 half-year. Hence,

$$

9 8 0 = \frac {3 0}{(1 + y / 2) ^ {0 . 6 9 4}} + \frac {3 0}{(1 + y / 2) ^ {1 . 6 9 4}} + \dots + \frac {1 0 3 0}{(1 + y / 2) ^ {2 0 . 6 9 4}} \tag {1.3}

$$

Note that this is the same as the two-step discounting method. If we factor out  $1 / (1 + y / 2)^{0.694}$ , then it is the same as equation (1.2). In other words, we simply use equation (1.2) and then discount the fractional period separately.

For the second method, it is more straightforward, given that the power of  $1 + y$  is already per annum:

$$

9 8 0 = \frac {3 0}{(1 + y) ^ {0 . 3 4 7}} + \frac {3 0}{(1 + y) ^ {0 . 8 4 7}} + \dots + \frac {1 0 3 0}{(1 + y) ^ {1 0 . 3 4 7}}

$$

Later, we will introduce daycount conventions which will modify the fractional year (0.347) we compute here. Different daycount conventions will lead to different results of the fractional year.

As we can see that how to discount has an impact on the yield. So we can conclude that yields are not unique and highly dependent upon the methods used. This demonstration hopefully can convince you that we should not use yields for any serious modeling efforts but use prices.

# 1.4.2 Par Yield and Zero Rate

At the surface, it seems like the second method is superior, as it is more generic and easier. Yet, the first method has one big advantage and hence remains as the major discounting method (especially for securities that pay semi-annual coupons). When the price is equal to the face value, the first method of equation (1.2) has a nice result:

$$ c = y$$

The bond in this case is called a par bond and the yield (also coupon rate) is called the par yield.

Practitioners believe that when a bond is priced at par, its "convexity bias" is the least. If it is priced below par (discount) or above par (premium), then the bias is worse. Hence this makes it easier to compare bonds with different coupons. Note that (to be discussed in Chapter 3 in details) higher coupons lead to shorter durations and consequently less risk. Hence it is usually frowned upon when we compare yields of different coupons and different maturities. However, it is customary in the fixed income world that par yields are compared - known ad the par yield curve.

While coupon bonds have no unique yield result, zero-coupon bonds do. In a zero-coupon bond, you pay a price now and receive the face value at maturity. The internal return is the actual return. It is common that we only use continuous formula to compute the yield of a zero-coupon bond:

$$

\begin{array}{l} P = e ^ {- y \tau} \\ y = - \frac {1}{\tau} \ln P \\ \end{array}

$$ where  $\tau$  represents time to maturity. When we build the yield curve, we use only zero coupon bonds. Hence, the resulting yield curve is also called the zero curve. In Chapter 2, we will define each term carefully and rigorously. Time indices will be added to the variables.

# 1.4.3 Price Quote vs. Rate Quote or Volatility Quote

Unlike equities, not all fixed income securities are quoted in term of price. Many markets use rate quotes and the swaption market is custom to volatility quotes. We should note that in the Treasury auction market, bids are submitted in terms of yields.

# T Bills are Rate Quotes

It is important to differentiate rate quotes, that are to determine transaction prices, and rates of return, that represent percentage return of an investment. Rate quotes are subject to day count conventions. For example, T bill quotes are subject to Actual/360 convention. Hence, a quote of 3.24 of a bill 21 days to maturity has a price of:

$$
1 0 0 - 3. 2 4 \times \frac {2 1}{3 6 0} = 9 9. 8 1
$$

The rate of return of this bill can be computed discretely as:

$$
\frac{100 - 99.81}{99.81}\times \frac{365}{21} = 3.285\%
$$

Hence 3.24 is not representing rate of return, 3.285 is.

Note that 99.81 is a percent quote. It represents the price to pay for acquiring a bond is 99.81\% of its face value. If the face value is \$100, it costs \$99.81; if it is \$100,000, it costs \$99,810. If it is 1, then it costs 0.9981. This is known as the discount factor.

# Swaptions are Volatility Quotes

Swaptions are quoted by volatility, more specifically, Black volatility:

$$
C = P (t, T _ {C}) [ w (t) N (d _ {+}) - w _ {K} N (d _ {-}) ]
$$ where


$$ d _ {\pm} = \frac {\ln w (t) - \ln w _ {K}}{v (t , T)} \pm \frac {1}{2} v (t, T) ^ {2}
$$ and  $w(t)$  is the current swap rate,  $w_{K}$  is the strike price.


In other words, the quoting mechanism assumes that the underlying swap rate follows a log-normal distribution.

# 1.4.4 Daycount

Daycount is a very special trading convention in the world of fixed income securities. Other markets have trading conventions (e.g. CBOE does not specify maturity date as a fixed date but the Saturday of the third Friday of the expiration month). The daycount convention specifies how many days should be in a month and in a year. There are 5 popular daycount conventions:

- 0: 30/360 (corporate fixed, fixed leg of IRS USD)
1: A/A (T notes/bonds)
2 A/360 (corporate floaters, T bills, floating leg of IRS to match with 30/360))
3: A/365 (floating leg of IRS to match with 30/365)
4: European 30/360
- : 30/365 (fixed leg of IRS non-USD)

The code is what is used by the Excel function yearfrac(a,b,c) where a is the beginning date, b is the ending date, and c is the code of the daycount convention. Lets first study 30/360 convention. This convention assumes that there are exactly 30 days in a month for any fraction of a month. For example, from 1/2/2003 to 2/28/2003, both months are not full months. In a normal calendar, January has 29 days and February has 28 days. But under 30/360, there are only 28 days in January (28 = 30 - 2) and 28 days in February. Hence, the period in years is:

$$
0. 1 5 5 5 5 6 = \left[ \frac {3 0 - 2}{3 0} + \frac {2 8}{3 0} \right] \div 1 2
$$

This implies that there will be 1 day in January if we count from 1/29/2003 and 0 day if we count from 1/30/2003:

$$
0. 0 8 0 5 5 5 5 6 = \left[ \frac {3 0 - 2 9}{3 0} + \frac {2 8}{3 0} \right] \div 1 2
$$

Interestingly, since there can be only 30 days in a month, it will be 0 day if we count from 1/30/2003 and 1/31/2003:

$$
0. 0 7 7 7 7 7 7 8 = \left[ \frac {0}{3 0} + \frac {2 8}{3 0} \right] \div 1 2
$$

But on the other hand, if the ending date is  $3/1/2003$ , then we will have a full month for February. Hence, although there is only one day difference between 2/28 and  $3/1$ , the 30/360 daycount treats it as three days apart:

$$
0. 1 6 3 8 8 8 8 8 9 = \left[ \frac {3 0 - 2}{3 0} + 1 + \frac {1}{3 0} \right] \div 1 2
$$

The following table summarizes the result.

<table><tr><td>beginning</td><td>ending</td><td>daycount</td><td>year frac</td></tr><tr><td>1/2/2003</td><td>2/28/2003</td><td>30/360</td><td>0.15556</td></tr><tr><td>1/29/2003</td><td>2/28/2003</td><td>30/360</td><td>0.08056</td></tr><tr><td>1/30/2003</td><td>2/28/2003</td><td>30/360</td><td>0.07778</td></tr><tr><td>1/31/2003</td><td>2/28/2003</td><td>30/360</td><td>0.07778</td></tr><tr><td>1/2/2003</td><td>3/1/2003</td><td>30/360</td><td>0.16389</td></tr></table>

Table 1.1: Daycount

Under A/A, the year fraction from 1/2/2003 to 2/28/2003 is 57 days (actual number of days between 1/2/2003 to 2/28/2003) divided by 365 (which is the actual number of days in year 2003):

$$
0. 1 5 6 1 6 4 = \frac {\mathrm {\# o f d a y s i n b e t w e e n}}{\mathrm {\# o f d a y s i n a y e a r}} = \frac {5 7}{3 6 5}
$$ which is the same as A/365 in a normal year (but not in a leap year, which will be explained later):


$$
0. 1 5 6 1 6 4 = \frac {\mathrm {\# o f d a y s i n b e t w e e n}}{3 6 5} = \frac {5 7}{3 6 5}
$$

Finally, under A/360, the year fraction from 1/2/2003 to 2/28/2003 is:

$$
0. 1 5 8 3 3 3 = \frac {\mathrm {\# o f d a y s i n b e t w e e n}}{3 6 0} = \frac {5 7}{3 6 0}
$$

<table><tr><td>beginning</td><td>ending</td><td>daycount</td><td>code</td><td>year frac</td></tr><tr><td>12/2/1995</td><td>3/1/1996</td><td>0</td><td>30/360</td><td>0.24722</td></tr><tr><td>12/2/1995</td><td>3/1/1996</td><td>1</td><td>A/A</td><td>0.2459</td></tr><tr><td>12/2/1995</td><td>3/1/1996</td><td>2</td><td>A/360</td><td>0.25</td></tr><tr><td>12/2/1995</td><td>3/1/1996</td><td>3</td><td>A/365</td><td>0.24658</td></tr></table>

Table 1.2: Daycount

In a leap year, there are 29 days in February (e.g. 1996). For example, from 12/2/1995 to 3/1/1996, we have the following results: where each of the results above is calculated as follows:


$$

\begin{array}{l} 0. 2 4 7 2 2 2 = \left[ \frac {3 0 - 2}{3 0} + 1 + 1 + \frac {1}{3 0} \right] \div 1 2 \\ 0. 2 4 5 9 0 2 = \frac {\# \text {o f d a y s i n b e t w e e n}}{\# \text {o f d a y s i n a y e a r}} = \frac {9 0}{3 6 6} \\ 0. 2 5 0 0 0 0 = \frac {\mathrm {\# o f d a y s i n b e t w e e n}}{3 6 0} = \frac {9 0}{3 6 0} \\ 0. 2 4 6 5 7 5 = \frac {\# \text {o f d a y s i n b e t w e e n}}{3 6 5} = \frac {9 0}{3 6 5} \\ \end{array}

$$

# 1.4.5 Accrued Interest

Accrued interest is another daycount convention in fixed income. For reason given before I was born, bonds are quoted by their "clean price" instead of the real price (called "dirty price"). Investors of bonds need to compute the price (dirty price) they have to pay by adding accrued interest to the clean price.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/75fe7d38834e7f44a2628e41b93811ae0ec190bba283af85cb54c864116e8a4b.jpg)
Figure 1.1: Accrued Interest

Hence, the dirty price is:

$$

\text {D i r t y P r i c e} = \text {C l e a n P r i c e} + \frac {6 0}{1 8 2} \times \frac {\mathrm {c p n}}{2}

$$

# 1.4.6 Spreads

Spreads represent additional return of owning fixed income securities to Treasuries if the security pays fixed coupons or LIBOR if the security pays floating coupons. Hence, it is commonly used to indicate cheap/expensive of a fixed income security. When a spread is large, the security is said to be cheap, and small is referred to expensive.

Spreads are model-dependent. That is, we need a formula or model to compute a spread.

OAS
- z spread
- DM (Discount margin)
- LIBOR spread
- yield spread
CDS spread

OAS (short for option adjusted spread) is the most popular spread used. There is some common misunderstanding of what OAS really represents. For a long time people regarded OAS as a measure of optionality in a fixed income security. But the correct interpretation of OAS is the "additional optionality" after taking out all known embedded options. For example, a callable bond is priced with the yield curve and the call option. If there is any additional optionality remained, there will be positive OAS. Hence, an OAS can be negative if we take too much option value out of the bond price.

If one believes that the option value taken out is correct and still OAS is non-zero, it means trading opportunity. Indeed investors use OAS to measure cheap/expensive of a fixed income security.

A common optionality that cannot be taken out is credit risk. Credit risk is an important option but unfortunately not properly modeled. We shall discuss how to model credit risk later. Hence, often OAS is regarded as a measure of the credit risk.

A z spread can be thought of OAS with no volatility in the underlying asset. Hence it is similar to the deterministic OAS (only using the yield curve). The only difference is market yield curve (OAS) versus model yield curve (z spread).

DM (short for discount margin) is used commonly with floaters. It represents an additional income, just like OAS. Since floaters do not have a clean yield curve, DM is added to the forward rates (which represents the expected rates). Since floaters are all at par at issuance  $(\mathrm{DM} = 0)$ , DM represents how later on floaters are transacted at discount or premium. Note that a risk free floater should always be priced at par at coupon dates. Hence a positive DM represents that the credit quality of the floater has deteriorated since its issuance. As a result, DM is a common quoting language for a floater.

LIBOR spread is a very general term to measure the credit quality of a fixed income security or the funding cost of a financial institution, relative to LIBOR. This is because LIBOR is the benchmark for major investment banks. Similar to DM, a LIBOR spread represents the credit quality over LIBOR. However, different from DM, a LIBOR spread is not a quoting language. It is common term for the credit quality.

Yield spread refers to the spread over a Treasury. Treasuries are default risk free fixed income securities. Hence, the spread over a Treasury is the absolute measure of credit risk. Depending on what duration of the security, a different Treasury would be used. For example, mortgages are tied to 10 year Treasury; floaters are tied to 6-month or 1-year Treasury. Since Treasuries are fixed rate securities, we can only benchmark to their yields to maturity. As a the securities that use yield spreads are fixed rate securities.

CDS spread is a credit spread reflecting the default risk of a security. Since all the above spreads contain the credit component, we can view CDS spreads to be contained in other spreads.

# 1.4.7 Spot and Forward Rates

The major building block in fixed income securities is the yield curve, or also known as the term structure of interest rates. We shall discuss all the necessary details in Chapter ?? But in this section, we shall introduce the basic idea.

In Figure 1.2, we demonstrate how various rates are defined. Let  $r_t$  be a one-period (say, one year) rate that moves randomly over time. We observe  $r_0$  but do not observe  $r_1, r_2,$  and  $r_3$ . However, we do observe all the yields  $y_{0t}$  for all  $t$ . From the yields, we can then compute the forward rates as follows:

- continuous time:

$$ y _ {0, n} = \frac {1}{n} \sum_ {i = 1} ^ {n} f _ {0, i, i + 1} \tag {1.4}
$$

- discrete time:

$$ y _ {0, n} = \sqrt [ n ]{\prod_ {i = 1} ^ {n} \left(1 + f _ {0 , i , i + 1}\right)} \tag {1.5}
$$ where  $f_{t,u,v}$  represents the forward rate observed at time  $t$  for a forward rate covering a future period between  $u$  and  $v$ . Hence,  $f_{0,i,i+1}$  is the forward rate observed today (traded in the marketplace today) for a future period between  $i$  and  $i+1$  which is one period forward rate). For example,  $f_{012}$ ,  $f_{023}$ ,  $f_{034}$  are one-year forward rates,  $f_{013}$ ,  $f_{024}$  are two-year forward rates, and  $f_{014}$  is a three-year forward rate.


![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/ff6601378c1b0dce2b0ab73ca89087cad1e7d72ca0a28698038128e0f5c51984.jpg)
Figure 1.2: Spot and Forward Rates

Finally, we note that yield to maturity  $=$  rate of return  $=$  holding period return  $=$  capitalization rate  $=$  spot rate

# 1.4.8 Example

Here, there are some demonstrations of how to go from one set of rates (e.g. spot) to another set of rates (e.g. forward). Example 1 (Figure 1.3) is given spot rates as input and computes the forward rates (both discrete and continuous). Similarly, Examples 2 and 3 are given discount factors and forward rates as inputs respectively and compute the rest. Formulas are given by equations (1.4) and (1.5).

From spot rates to forward rates

<table><tr><td>Example 1</td><td colspan="2">From spot to rest</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>time</td><td>spot</td><td>PV disc</td><td>cont</td><td>Fwd Rates disc</td><td>cont</td><td></td><td></td><td></td></tr><tr><td>1</td><td>0.04</td><td>0.9615</td><td>0.9608</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>2</td><td>0.05</td><td>0.9070</td><td>0.9048</td><td>0.0601</td><td>0.06</td><td></td><td></td><td></td></tr><tr><td>3</td><td>0.055</td><td>0.8516</td><td>0.8479</td><td>0.0651</td><td>0.065</td><td></td><td></td><td></td></tr><tr><td>4</td><td>0.058</td><td>0.7981</td><td>0.7929</td><td>0.0671</td><td>0.067</td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td>disc</td><td>1y rate</td><td>2y rate</td><td>3y rate</td><td></td></tr><tr><td></td><td></td><td></td><td></td><td>1y fr now</td><td>0.0601</td><td>0.062581</td><td>0.064069</td><td></td></tr><tr><td></td><td></td><td></td><td></td><td>2y</td><td>0.0651</td><td>0.066061</td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td>3y</td><td>0.0671</td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td>cont</td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td>1y fr now</td><td>1y rate</td><td>2y rate</td><td>3y rate</td><td></td></tr><tr><td></td><td></td><td></td><td></td><td>2y</td><td>0.0600</td><td>0.0625</td><td>0.064</td><td></td></tr><tr><td></td><td></td><td></td><td></td><td>3y</td><td>0.0650</td><td>0.066</td><td></td><td></td></tr></table>

Figure 1.3: Spot and Forward Rates

From discount factors to spot and forward rates

<table><tr><td>Example 2</td><td colspan="2">From PV to rest</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>time</td><td>spot</td><td>PV disc</td><td>cont</td><td>Fwd Rates disc</td><td>cont</td><td></td><td></td><td></td></tr><tr><td>1</td><td>0.052632</td><td>0.9500</td><td>0.9487</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>2</td><td>0.054093</td><td>0.9000</td><td>0.8975</td><td>0.0556</td><td>0.055553</td><td></td><td></td><td></td></tr><tr><td>3</td><td>0.055667</td><td>0.8500</td><td>0.8462</td><td>0.0588</td><td>0.058817</td><td></td><td></td><td></td></tr><tr><td>4</td><td>0.057371</td><td>0.8000</td><td>0.7949</td><td>0.0625</td><td>0.062482</td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td>disc</td><td>1y rate</td><td>2y rate</td><td>3y rate</td><td></td></tr><tr><td></td><td></td><td></td><td></td><td>1y fr now</td><td>0.0556</td><td>0.057188</td><td>0.058956</td><td></td></tr><tr><td></td><td></td><td></td><td></td><td>2y</td><td>0.0588</td><td>0.06066</td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td>3y</td><td>0.0625</td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td>cont</td><td>1y rate</td><td>2y rate</td><td>3y rate</td><td></td></tr><tr><td></td><td></td><td></td><td></td><td>1y fr now</td><td>0.0556</td><td>0.057185</td><td>0.058951</td><td></td></tr><tr><td></td><td></td><td></td><td></td><td>2y</td><td>0.0588</td><td>0.06065</td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td>3y</td><td>0.0625</td><td></td><td></td><td></td></tr></table>

Figure 1.4: Spot and Forward Rates

From forward rates to spot rates

<table><tr><td>Example</td><td colspan="2">From forward to</td><td rowspan="2"></td><td rowspan="2"></td><td rowspan="2"></td><td rowspan="2"></td><td rowspan="2"></td><td rowspan="2"></td></tr><tr><td>3</td><td colspan="2">rest</td></tr><tr><td>time</td><td>spot</td><td>PV disc</td><td>cont</td><td>Fwd Rates disc</td><td>cont</td><td></td><td></td><td></td></tr><tr><td>1</td><td>0.04</td><td>0.9615</td><td>0.9608</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>2</td><td>0.049952</td><td>0.9071</td><td>0.9049</td><td>0.0600</td><td>0.059905</td><td></td><td></td><td></td></tr><tr><td>3</td><td>0.054944</td><td>0.8517</td><td>0.8480</td><td>0.0650</td><td>0.064929</td><td></td><td></td><td></td></tr><tr><td>4</td><td>0.057946</td><td>0.7983</td><td>0.7931</td><td>0.0670</td><td>0.066949</td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td>disc</td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td>1y rate</td><td>2y rate</td><td>3y rate</td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td>1y fr now</td><td>0.0600</td><td>0.062497</td><td>0.063996</td><td></td></tr><tr><td></td><td></td><td></td><td></td><td>2y</td><td>0.0650</td><td>0.066</td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td>3y</td><td>0.0670</td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td>cont</td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td>1y rate</td><td>2y rate</td><td>3y rate</td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td>1y fr now</td><td>0.0599</td><td>0.062417</td><td>0.063927</td><td></td></tr><tr><td></td><td></td><td></td><td></td><td>2y</td><td>0.0649</td><td>0.065939</td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td>3y</td><td>0.0669</td><td></td><td></td><td></td></tr></table>

Figure 1.5: Spot and Forward Rates

# 1.5 Exercises

1. Why is a stock not a fixed income security even though its price is sensitive to rate change?
2. Trading conventions are important for fixed income securities. Name a few.
3. Fixed income securities are predominantly traded in the OTC markets. Why is that?
4. There are many interest rates in the fixed income markets. Name a few. Compare them.
5. There are four basic contract types of fixed income securities. What are they? How do they differ?
6. Given the following zero coupon bond prices:

Table 1.3: Add caption

<table><tr><td>TTM</td><td>P</td></tr><tr><td>1</td><td>0.9</td></tr><tr><td>2</td><td>0.8</td></tr><tr><td>3</td><td>0.7</td></tr><tr><td>4</td><td>0.6</td></tr></table> find the zero rates using (i) annual (ii) semi-annual, and (iii) continuous compounding.


7. Someone computed and reported the following annually discounted yield curve (zero rates) to you. How do you find out the discount factors?

Table 1.4: Add caption

<table><tr><td>TTM</td><td>YTM</td></tr><tr><td>1</td><td>0.04</td></tr><tr><td>2</td><td>0.05</td></tr><tr><td>3</td><td>0.06</td></tr><tr><td>4</td><td>0.07</td></tr></table>

8. If the above yields are continuously discounted, what are the discount factors? What are the 1-year forward rates?
9. Use annually discounted factors, compute the price of a  $6\%$ , 4-year coupon bond. Also compute the yield of this coupon bond.

