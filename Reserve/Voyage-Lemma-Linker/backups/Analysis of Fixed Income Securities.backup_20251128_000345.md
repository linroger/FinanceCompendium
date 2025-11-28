---
tags:
  - credit_risk
  - debt_securities
  - fixed_income
  - interest_rates
  - yield_curve
aliases:
  - Bond Analysis
  - Debt Securities
  - Fixed Income Analysis
key_concepts:
  - Credit spread analysis
  - Fixed income derivatives
  - Fixed income securities
  - Interest rate risk
  - Market developments
  - Yield curve construction
---
# Analysis Of Fixed Income Securities

# Contents

# 1 Introduction 1

1.1 Introduction 1

1.1.1 What Is A Fixed Income Security? 1
1.1.2 Trading Conventions 2
1.1.3 OTC Trading and Liquidity Risk 2

1.2 How Many Interest Rates Are Out There? 3

1.2.1 US Treasuries 3
1.2.2 FED rates 4
1.2.3 LIBOR based products 4
1.2.4Agencies 5
1.2.5 Corporates (Credit rating) 6
1.2.6 Sovereigns (USD denominated) 8
1.2.7 Municipals
(Munis) 9
1.2.8 Retail Credits 10

1.3 Types of Fixed Income Securities 11
1.4 Market Basics 12

1.4.1 Yield 12
1.4.2 Par Yield and Zero Rate 15
1.4.3 Price Quote vs. Rate Quote or Volatility Quote 16
1.4.4 Daycount 17

1.4.5 Accrued Interest 19
1.4.6 Spreads 20
1.4.7 Spot and Forward Rates 21
1.4.8 Example 23

1.5 Exercises 25

# 2 Term And Volatility Structures Of Interest Rates 27

2.1 Introduction 27
2.2 What Is a Yield Curve (Term Structure of Interest Rates)? 28

2.2.1 A Sample: US Treasuries 28
2.2.2 Coupon-bearing Yield Curve and Par Yield Curve 31
2.2.3 Zero Coupon Yield Curve 33
2.2.4 Forward Rate Curve 34

2.3 How to Fit a Yield Curve Function 35

2.3.1 Bootstrapping 35
2.3.2 Using a Functional Form 41
2.3.3 Using a Model 42
2.3.4 A Discussion 42

2.4 Three Hypotheses 42
2.5 How Treasury Rates Change 43

2.5.1 Roll Down E ect 44
2.5.2 Curve Steepening/Flattening 44
2.5.3 Hump 44
2.5.4 Inversion 45

2.6 Yield Curves of Various Interest Rates 46

2.6.1 LIBOR Curve 46
2.6.2 OIS Curve 49
2.6.3 Credit Curve 50
2.6.4 FX Curve 51
2.6.5 Inflation Curve 52

# Contents

V

2.7 LIBOR Floater 53
2.8 Volatility and Volatility Term Structure 56

2.8.1 Volatility Smile and Volatility Term Structure in Equities 56
2.8.2 Volatility Surface in Fixed Income 60
2.8.3 Shape Restriction 62
2.8.4 Sources of Volatility 63

3 Duration and Convexity 69
3.1 Introduction 69
3.1.1 Taylor's Series Expansion 69

3.2 Duration 70

3.2.1 MaCaulay Duration 70
3.2.2 MaCaulay Duration with Yearfraction 77
3.2.3 Fisher-Weil Duration 78
3.2.4 Partial Duration (Key Rate Duration) 79
3.2.5 Eective Duration 80
3.2.6 PV01 (DV01) 80

3.3 Convexity 85

3.3.1 MaCaulay Convexity 85
3.3.2 Dollar Convexity 85

3.4 Yield Curve Trading Strategies 87

3.4.1 Immunization 87
3.4.2 Riding on the Yield Curve 90
3.4.3 Barbell 90

4 Spreads 91
4.1 Introduction 91
4.2 Option Adjusted Spread
(OAS) 91

4.2.1 Static OAS 92
4.2.2 With Model 93

4.2.3 Z Spread 94

4.3 LIBOR Spread 95

4.3.1 Floating Rate Corporate Bond 96
4.3.2 Relationship with CDS 98

4.4 Yield Spread 98

4.4.1 Fixed Rate Corporate Bond 98
4.4.2 Par Spread 101
4.4.3 Spread Duration and Spread 01 101
4.4.4 Spread Convexity and Spread 10/Spread 25 102

4.5 Liquidity Spread 103

4.5.1 Bid/Ask Spread 103
4.5.2 Liquidity Gap 104

4.6 Discount Margin 105

4.7 Basis 108

4.7.1 Futures Basis 108
4.7.2 FX Basis 108
4.7.3 CDS-Bond Yield Basis 109
4.7.4 LIBOR basis 109
4.7.5 LIBOR Treasury Basis 109
4.7.6 LIBOR OIS Basis 110

4.8 Gamma and Vega 110

4.8.1 Supplementary E ect 110
4.8.2 Complementary E ect 111

5 Interest Rate Swaps 113
5.1 Introduction 113
5.2 Comparative Advantage Analysis 113

5.2.1 Basic Idea 114
5.2.2 With a Financial Intermediary 115

5.3 No Arbitrage Analysis 115

# Contents Vii

5.3.1 IRS as a Series of Forward Contracts 115
5.3.2 IRS as a Portfolio of Bonds 117

5.4 Swap Value 118

5.4.1 Reverse swap 119
5.4.2 Another Calculation 119
5.4.3 DV01/PV01 121
5.4.4 Swaption 122
5.4.5 Exposure 125

5.5 FRA and ZCS 126
5.6 Overnight Index Swap
(OIS) 127

5.6.1 Floating Leg 128
5.6.2 OIS Curve 129

5.7 Basis Swaps 130
5.7.1 LIBOR Basis Swap 131
5.8 Appendix 132

6 Foreign Currency Swap 135
6.1 Introduction 135
6.2 Spot Exchange Rate 136

6.2.1 Purchasing Power Parity, PPP 137
6.2.2 Triangular Relationship 138
6.2.3 Exchange Rate and Imports/Exports 140

6.3 Interest Rate Parity, IRP, and FX Forward 141
6.4 FX Swaps 143

6.4.1 Comparative Advantage Analysis 143
6.4.2 No-Arbitrage
(trading) Analysis 144

6.5 Quanto E ect 148

6.5.1 Compo Option 148
6.5.2 Quanto Option 151

6.6 FX Options 152

6.6.1 Option Quotes 152
6.6.2 International Put/Call Parity
(Equivalence) 153
6.6.3 Volatility Smile 154
6.6.4 Exotic FX Options 155

# 6.7 Fx Math 155

6.7.1 Quanto 155
6.7.2 Compo and Quanto Options 157
6.7.3 International Put/Call Parity 158

# 7 Credit Default Swap 161

7.1 Introduction 161
7.2 The Contract 162

7.2.1 CDS spread 162
7.2.2 CDS as a Perfect Hedge to Corporate Floaters 162
7.2.3 CDS as a Put Option 163
7.2.4 CDS as an Insurance Policy 163
7.2.5 CDS as short Credit
(Bond) 163

7.3 Bootstrapping 163
7.4 Big Bang 163

7.4.1 Upfront, Running Spread, and Par Spread 164

7.5Recovery 165

7.5.1 Cash versus Physical Settlement 165
7.5.2 Distressed Bond Market 165
7.5.3 Cheapest to Deliver Option 167
7.5.4 Restructuring Clauses 168

7.6 Sovereign CDS 170
7.7 CDO CDS 170

7.8 Capital Structure Arbitrage 170

7.8.1 CDS versus Put 171
7.8.2 CDS versus Stock 171

# Contents Ix

# 8 Other Swaps

173

8.1 Variance Swap 173

8.1.1 Volatility Swap 175
8.1.2 Forward Starting Variance Swap 176
8.1.3 S&P 500 Variance Futures 177

8.2 Total Return Swap 177
8.3 Index Swap 178
8.4 Inflation Swap 179

8.4.1 Year-on-Year Inflation Swap 180
8.4.2 Zero Coupon Inflation Swap 181

8.5 Equity Swap 182
8.6 Commodity Swap 183

# 9 Exchange Traded Derivatives

187

9.1 Introduction 187
9.2 T Bond Futures 188

9.2.1 Delivery Process 188
9.2.2 Quotes 189
9.2.3 Quality Option and Conversion Factor 190
9.2.4 CTD Bond 191
9.2.5 Timing options 194

9.3 Valuation of T Bond Futures 194

9.3.1 Cost of Carry 195
9.3.2 Using the Exchange Option Model 196
9.3.3 Using an Interest Rate Model 197
9.3.4 Quality Option under no Marking to Market 198
9.3.5 Timing Options 199

9.4 T Bond Futures Options 202
9.5 Ultra T Bond Futures (and Options) 203
9.6 Eurodollar Futures 203

9.6.1 Quote 204
9.6.2 Delivery 204
9.6.3 Pricing 204

9.7 Euro Dollar Futures Options 205
9.8 Relationship between Furutres and Forward Prices 205

# 10 Otc Derivatives 209

10.1 Introduction 209
10.2 Caps/Floors/Collars 209
10.3 Swaptions 213

10.3.1 Cap
(Floor) as a Special Case of Payer
(Receiver) Swaption 216
10.3.2 Function $(t,\cdot,\cdot)$ and a Piece-wise Flat Approximation 217

10.4 Other Derivatives 223

10.4.1 Equity-linked Notes 223
10.4.2 Credit-linked Notes 225

# 11 Other Credit Derivatives 227

11.1 Introduction 227
11.2 Default Basket 227
11.3 CDO, CBO and CLO 229
11.4 Spread Option 231
11.5 Principle Protected Notes 231
11.6 Credit Linked Notes 233
11.7 Convertible Bonds 234

11.7.1 Forced Conversion 234
11.7.2 Added Convexity 235

11.8 Loan 237
11.9 Securities Lending 239
11.10CMBS 239

# 12 Mortgage And Asset Backed Securities 241

# Contents Xi

12.1 Introduction 241

12.1.1 RMBS 242
12.1.2 CMBS 249
12.1.3 ABS 250

12.2 Securitization Process 250
12.3 RMBS 251

12.3.1 Paththroughs 251
12.3.2 CMO 251
12.3.3 Interest Only and Principle Only 253
12.3.4 NBER paper 253

12.4 CMBS 253
12.5 ABS 254

12.5.1 Subprime (Alt-A) 254
12.5.2 Home Equity 255
12.5.3 Others 256

12.6 Other Real Estate Derivatives 258

12.6.1 Case-Shiller Index Futures 259
12.6.2 RPX Swap and Forward Contracts 260
12.6.3 REIT 261
12.6.4 REMIC 262
12.6.5 STACR and Connecticut Avenue Securities
(CAS) 263

12.7 Appendix 264

# 13 Commodities 267

13.1 Introduction 267
13.2 Convenience Yield 268
13.3 Seasonality 270
13.4 Inventory 274
13.5 Various Contracts 278
13.5.1 Futures 278

13.5.2 Index Futures 281
13.5.3 Swaps 283
13.5.4 Basis Swap 286
13.5.5 Option 288

13.6 Swing Contract 290

13.6.1 Basic Contract 290
13.6.2 Random Quantities 293
13.6.3 Extensions (Liquidity and Random Interest Rates) 294

13.7 Water Futures 294

14 Interest Rate Models 297

14.1 Introduction 297
14.2 Vasicek and CIR Models 297
14.3 Ho-Lee Model 299
14.4 Black-Derman-Toy Model 304

14.4.1 Tree (Log Normal) 304
14.4.2 Modified Tree (since ud = 1) 305
14.4.3 The Continuous Time Limit 308
14.4.4 Black-Karasinski Model 308

14.5 Hull-White Model 309
14.6 Heath-Jarrow-Morton Model 309

14.6.1 Example 1 - Ho-Lee Model 312
14.6.2 Example 2 - Vasicek Model 312
14.6.3 Example 3 - Cox-Ingersoll-Ross Model 315

14.7 LMM (LIBOR Market Model) and Shifted LMM 316

14.7.1 Calibration to Caps 322
14.7.2 Swap and Swaption Valuation 324

14.8 Appendix 328

14.8.1 Stock Option Pricing When the Interest Rate Follows the Ho Lee Model 328

# Contents Xiii

14.8.2 Proofs of Lemmas 330

# 15 Credit And Prepayment Models 333

15.1 Introduction 333

15.1.1 Rating Agencies 333
15.1.2 CreditBureau 334

15.2 Corporate Credit 335

15.2.1 Public Firms 335
15.2.2 PrivateFirms 335

15.3 Retail Credit 336

15.3.1 FICO 336
15.3.2 Mortality Rate 337
15.3.3 Constant Default Rate 337
15.3.4 Pay-As-yoU-Go
(PAUG) 338
15.3.5 Foreclosure 338
15.3.6 Real Estate Owned
(REO) 338

15.4 Prepayment Models 339

15.4.1 Richard and Roll Model 340
15.4.2 Andrew Davidson Prepayment Model 340
15.4.3 QRM Prepayment Model 341
15.4.4 BlackRock Prepayment Model 342

# 16 Numerical Models 343

16.1 Introduction 343
16.2 Lattice 343

16.2.1 Binomial 343
16.2.2 Finite Dierence 343

16.3 Monte Carlo 344

16.3.1 Longsta-Schwartz 344
16.3.2 Free-Boundary PDE 347

16.4 AI/ML Tools 349

16.4.1 What is AI? ML? and BD? 349
16.4.2 Particle Swarm Optimization 351
16.4.3 Q Learning - Swing Contract 353
16.4.4 Bayesian Learning - Black-Litterman Model 354
16.4.5 Neural Networks - Credit Ratings 360
16.4.6 Genetic Algorithm 361
16.4.7 Other Classification ML Tools 361
16.4.8 Issues of Overfitting 361

# Index

363

# Chapter 1 Introduction

# 1.1 Introduction

# 1.1.1 What Is A Fixed Income Security?

The name "fixed income" is misleading. In the old days, this name referred to those fixed rate bonds that paid fixed coupons and therefore provided a fixed stream of cash pay o s. Today, however, from floating rate bonds and notes to mortgage backed securities, there are an unbelievably number of fixed income derivatives that pay floating interests and yet they are under the scope of fixed income security. Today, fixed income securities really mean interest rate sensitive securities.

We should be aware that many interest rate derivatives now are also derivatives of other assets. For example, a convertible bond is a derivative of at least two assets: interest rate and stock. An asset swap is an interest rate derivative as well as a credit derivative. Hence, we should define interest rate derivatives to include any derivative asset whose value is sensitive to interest rate movement. However, by this definition, literally all assets are interest rate derivatives, even the most straightforward stocks. Stocks are sensitive to interest rate movement, as we have seen again and again when the Fed raises or drops interest rates their values respond almost instantly. So, where do we draw the line? As we can see, there is no clear definition of what should be an interest rate derivative (or fixed income security). What we call fixed income securities or interest rate derivatives are just by convention and experience.

# 1.1.2 Trading Conventions

One thing very unique about fixed income securities markets is the trading and quoting conventions. Fixed income securities have the most complex trading and quoting conventions than any other securities. Lets try several examples here. Most fixed income securities are quoted on the thirty second basis. For example, a bond quoted at 100.16 does not mean the bond will be bought and sold at 100 dollars and 16 cents. But rather, the bond will be bought and sold at $100 + 16/32$, which is 100 dollars and 50 cents. One tick in fixed income securities is 1/32. Stocks used to have ticks too of 1/8 and 1/16 but they do not have that anymore.

Another interesting trading convention is dirty price versus clean price. Bonds are quoted by the clean price but transacted by the dirty price. The difference is the accrued interest. Investors who buy and sell bonds need to compute the accrued interest by themselves and the add to the clean price to get the dirty price.

Daycount convention is another complexity in trading fixed income securities. Due to the fact that we do not have equal number of days in every month, the number of days between two consecutive coupons varies from time to time. For example, a bond pays coupons on the fifteen of June and the fifteen of December. From 2008/6/15 to 2008/12/15 is 183 days and yet from 2008/12/15 to 2009/6/15 is 182 days. Daycount convention is designed to equalize the difference in days. Misusing daycount can lead to wrong a clean price calculation.

We should explain these conventions in details later in this chapter.

# 1.1.3 Otc Trading And Liquidity Risk

Another very unique feature of trading fixed income securities is that, except for a small quantity of corporate bonds and standardized futures and options contracts, nearly all fixed income securities are transacted in the over-the-counter
(OTC) market and in large notionals. This prohibits individual investors from trading the fixed income securities. Institutional investors, like mutual funds, pension funds, hedge funds, and insurance companies are the participants in the market.

Many of these companies buy and hold fixed income securities and count on their interests. As a result only a small percentage of fixed income securities are actively transacted. Although there is formal statistic of what percentage of fixed income securities that are actively transacted but people believe that it is less than $10\%$. Hence, it is important to realize that fixed income securities usually suffer very large bid-ask spreads. It is not unusual in the municipal bond market where the bid-ask spreads can be as large as $10\%$ of the face value! Compared to 9.95$ flat fee that discount brokers charge for trading large amount of stocks, fixed income securities investors pay large liquidity premiums.

# 1.2 How Many Interest Rates Are Out There?

You would not believe the number of interest rates that we observe on a daily basis. These interest rates are highly related, either by tax, or by default risk, or by market microstructure.

# 1.2.1 Us Treasuries

To support the government work, the United State Treasury department borrows money from its citizens (ironically, China and Japan own over $30\%$ of the U. S. Treasuries) by issuing IOUs. These IOUs are categorized, by their coupon structure and issuance frequency, into the following three groups:

T bills - zero coupon, up to 1 year
T notes - semi-annual coupon, 1 10 years
T bonds - semi-annual coupon, 10 30 years
CMT (Constant Maturity Treasury)
TIPS (Treasury Inflation Protected Security)
STRIPS (Separate Trading of Registered Interest and Principal Securities)

Treasury bills (T bills) are less than one year zero coupon Treasury securities. Three T bills are auctioned once a week on Thursdays - 4 week (Monday auction), 13 week, and 26 week T bills. Hence, these are "on-the-run" T bills.

Treasury notes (T notes) usually auctioned every month. The "on-the-run" T notes are currently 2,5, and 10 year T notes. Only 30-year Treasury bonds (T bonds) are auctioned right now, four times a year, in February, May, August, and November.

TIPS are inflation protected Treasuries and are auctioned for 5 and 10 years only on an irregular basis. TIPS pay coupons that are inflation adjusted where the adjustment is tied to CPI (Consumer Price Index) that is published by the monthly by the Bureau of Labor Statistics of the United States Department of Labor.

CMTs are interpolated (weighted average of Treasury yields) Treasury interest rates published on the fly by the Treasury department. Given that the actual Treasury issues have fixed maturities, and hence cannot provide good benchmarking for other interest rates (e.g. swap rates), the Treasury department compiles interest rates for "constant maturities".<sup>2</sup> Note that CMT rates are "semi-annual par rates", which means, it is the coupon rate of a Treasury issue of the given tenor sold at the face value. Currently, there are 1,3,6 month, and 1,2,3,5,7,10,20,30 year CMTs available.

STRIPS are T-Notes, T-Bonds and TIPS whose interest and principal portions of the security have been separated, or "stripped"; these may then be sold separately in the secondary market. The name derives from the notional practice of literally tearing the interest coupons o
(paper) securities. The government does not directly issue STRIPS; they are formed by investment banks or brokerage firms, but the government does register STRIPS in its book-entry system. They cannot be bought through TreasuryDirect, but only through a broker.

# 1.2.2 Fed Rates

There are two interest rates controlled by the Federal Reserve Bank.

FED fund rate
Discount rate

The Fed funds rate is the interest rate at which banks lend their federal funds at the Federal Reserve to banks, usually overnight. Hence, it is an interbank lending rate. This rate is usually higher than the short term Treasury rates.

The discount rate is the interest rate at which member banks may borrow short term funds directly from a Federal Reserve Bank. The discount rate is one of the two interest rates set by the Fed, the other being the Federal funds rate. The Fed actually controls this rate directly, but this fact does not really help in policy implementation, since banks can also find such funds elsewhere. This rate is lower than the short term Treasury rates.

# 1.2.3 Libor Based Products

LIBOR stands for London InterBank O er Rate and is an interbank rate between major commercial banks, led by the Bank of England, in London. LIBORs have become the benchmark interest rates in the financial industry (in place of Treasury rates), mainly because these are the funding costs of most banks in the financial industry. There are three popular LIBOR rates set by the major commercial banks: 1 month, 3 month, and 6 month rates. However, there are long term LIBOR derivatives such as Eurodollar futures contracts and interest rate swaps.

LIBOR (London Interbank O er Rate)
- Eurodollar futures
- IRS (Interest Rate Swaps)

Given that U. K. has no central bank, unlike the U. S., the Bank of England serves the role of the central bank for the U. K. As a result, LIBOR symbolizes the government rate. However, technically the Bank of England is not the central after all, LIBOR as a result remains a private interest rate.

LIBOR is published by the British Bankers Association
(BBA) after 11:00 am (and generally around 11:45 am) each day, London time, and is a filtered average of inter-bank deposit rates o ered by designated contributor banks, for maturities ranging from overnight to one year. There are 16 such contributor banks and the reported interest is the mean of the 8 middle values. The shorter rates, i.e. up to 6 months, are usually quite reliable and tend to precisely reflect market conditions. The actual rate at which banks will lend to one another will, however, continue to vary throughout the day.

Floating rate products use LIBORs as benchmarks, mainly because companies that issue floating rate bonds cannot borrow at the Treasury rates. Although the actual situations may change, by and large, LIBORs are in between AAA and AA corporate yields.

# 1.2.4 Agencies

Agencies refer to three government supported financial institutions that underwrite and guarantee residential mortgages.<sup>3</sup>

- corporate bonds of GNMA, FNMA, FHLMC

Government National Mortgage Association (GNMA, pronounced Gennie Mae), Federal National Mortgage Association (FNMA, pronounced Fannie Mae), and Federal Home Loan Mortgage Corporation (FHLMC, pronounced Freddie Mac) are three government agencies that underwrite residential mortgages to the secondary market.

These three agencies were set up after the World War II to help low income and military veterans to purchase homes. Recently the congress, after recognizing the historical mission has been successfully accomplished, announced that they were no longer government agencies but private financial institutions. Yet, investors still believe that there is implicit government backing when these three agencies are in trouble. As a result, they issue corporate bonds with lower yields. An informal rating for these three agencies is AAAA, one rating higher than the highest rating given by rating agencies.

# 1.2.5 Corporates (Credit Rating)

Corporations borrow to finance their investment projects. There is a wide variety of forms of how corporate borrowing – ranging from short term borrowings like lines of credit, commercial papers (90 days and 180 days typically), and bank term loans (which themselves take various forms), to medium term corporate notes and bonds, to long term corporate bonds (some can be as long as 100 years!)

There is a wide variety of forms within corporate bonds – fixed rate bonds, floating rate bonds
(floaters) , bonds with sinking funds, bonds with amortizing principals, convertible bonds, callable and puttable bonds,...etc. Corporate bonds also vary in terms of covenants, collaterals, and seniorities.

Rating agencies rate corporate bonds by their default likelihoods and recovery values once defaults happen. Hence, ratings provide investors a rough idea of how risky corporate bonds are in a general way. In other words, ratings summarize all the information with a single letter to help investors understand the credit risk of corporate bonds. While ratings are very helpful, due to their simplicity, they are often criticized to be inaccurate and behind market timing. Despite many rating agencies that provide different rating systems, in general we have 9 rating groups:

AAA
AA
A
BBB
BB
B

CCC
CC
C
D where within each rating there could be multiple, usually three, sub-groups (called notches).

Due to di erent business characteristics (business risk), we often classify companies into industry sectors. The highest level of classification is to divide companies into two groups: financial and industrial. Financial companies have high leverage ratios due the nature of the business, hence cannot be compared with other industrial firms. Industrial companies are further divided into many groups. Di erent service companies classify industrial companies di erently. For example, Compustat, the largest financial data source, classifies the companies as follows:

- Division 0: Agriculture, Forestry, And Fishing
- Division 1: Mining, and Construction
- Division 2,3: Manufacturing
- Division 4: Transportation, Communications, Electric, Gas, And Sanitary Services
- Division 5: Wholesale Trade, Retail Trade
- Division 6: Finance, Insurance, and Real Estate
- Division 7,8: Services
- Division 9: Public Administration

Combining every industry sector and every credit rating, we are able assign each and every firm into a "cohort". For example, 9 credit ratings (from AAA to C) and 9 industry sectors result in 81 cohorts. Within each cohort, companies should be rather homogenous since they belong the same industry and rating. As a result, we can compute 81 cohort yield curves.

# 1.2.6 Sovereigns (Usd Denominated)

There are two major types of sovereign bonds traded in the United States (and denominated in dollars):

- Yankee bonds
Brady bonds

According to www.investopedia.com, a Yankee bond is a bond denominated in U. S. dollars and is publicly issued in the United States by foreign banks and corporations. According to the Securities Act of 1933, these bonds must first be registered with the Securities and Exchange Commission
(SEC) before they can be sold. Yankee bonds are often issued in tranches and each o ering can be as large as $1 billion.

Due to the high level of stringent regulations and standards that must be adhered to, it may take up to 14 weeks (or 3.5 months) for a Yankee bond to be o ered to the public. Part of the process involves having debt-rating agencies evaluate the creditworthiness of the Yankee bond's underlying issuer.

Foreign issuers tend to prefer issuing Yankee bonds during times when the U. S. interest rates are low, because this enables the foreign issuer to pay out less money in interest payments.

According to Wikipedia, Brady bonds are dollar-denominated bonds, issued mostly by Latin American countries in the 1980s, named after U. S. Treasury Secretary Nicholas Brady.

Brady bonds were created in March 1989 in order to convert bonds issued by mostly Latin American countries into a variety or "menu" of new bonds after many of those countries defaulted on their debt in the 1980's. At that time, the market for sovereign debt was small and illiquid, and the standardization of emerging-market debt facilitated risk-spreading and trading. In exchange for commercial bank loans, the countries issued new bonds for the principal and, in some cases, unpaid interest. Because they were tradable and came with some guarantees, in some cases they were more valuable to the creditors than the original bonds.

The key innovation behind the introduction of Brady Bonds was to allow the commercial banks to exchange their claims on developing countries into tradable instruments, allowing them to get the debt or their balance sheets. This reduced the concentration risk to these banks.

The plan included two rounds. In the first round, creditors bargained with debtors over the terms of these new claims. Loosely interpreted, the options contained di erent mixes of "exit" and "new money" options. The exit options were designed for creditors who wanted to reduce their exposure to a debtor country. These options allowed creditors to reduce their exposure to debtor nations, albeit at a discount. The new money options reflected the belief that those creditors who chose not to exit would experience a capital gain from the transaction, since the nominal outstanding debt obligation of the debtor would be reduced, and with it the probability of future default. These options allowed creditors to retain their exposure, but required additional credit extension designed to "tax" the expected capital gains. The principal of many instruments was collateralized, as were "rolling interest guarantees," which guaranteed payment for fixed short periods. The first round negotiations thus involved the determination of the e ective magnitude of discount on the exit options together with the amount of new lending called for under the new money options.

In the second round, creditors converted their existing claims into their choice among the "menu" of options agreed upon in the first round. The penalties for creditors failing to comply with the terms of the deal were never made explicit. Nevertheless, compliance was not an important problem under the Brady Plan. Banks wishing to cease their foreign lending activities tended to choose the exit option under the auspices of the deal.

By o ering a "menu" of options, the Brady Plan permitted credit restructurings to be tailored to the heterogeneous preferences of creditors. The terms achieved under these deals indicate that debtors used the menu approach to reduce the cost of debt reduction. Furthermore, it reduced the holdout problem where certain shareholders have an incentive to not participate in the restructuring in hopes of getting a better deal.

The principal amount is usually but not always collateralized by specially issued U. S. Treasury 30-year zero-coupon bonds purchased by the debtor country using a combination of International Monetary Fund, World Bank, and the country's own foreign currency reserves. Interest payments on Brady bonds, in some cases, are guaranteed by securities of at least double-A-rated credit quality held with the Federal Reserve Bank of New York.

Countries that participated in the initial round of Brady bond issuance were Argentina, Brazil, Bulgaria, Costa Rica, Dominican Republic, Ecuador, Mexico, Morocco, Nigeria, Philippines, Poland, Uruguay.

# 1.2.7 Municipals
(Munis) According to Wikipedia, in the United States, a municipal bond (or muni) is a bond issued by a state, city or other local government, or their agencies. Potential issuers of municipal bonds include cities, counties, redevelopment agencies, school districts, publicly owned airports and seaports, and any other governmental entity (or group of governments) below the state level. Municipal bonds may be general obligations of the issuer or secured by specified revenues. Interest income received by holders of municipal bonds is often exempt from the federal income tax and from the income tax of the state in which they are issued, although municipal bonds issued for certain purposes may not be tax exempt.

Muni bonds are as risky as corporate bonds. Rating agencies rate muni bonds as they rate corporate bonds.

# 1.2.8 Retail Credits

The above credit risks are roughly categorized as corporate credits. That is, the credit risk of an entity. In addition, there are also credit risks from individuals. Individuals borrow money just like corporations do and they can default on their loans as well. This is known as retail credit risk. Due to a number of various reasons, we must model retail credit risk di erent from corporate credit risk. There are a number retail loans that are transacted in the secondary market. The most important one is residential home mortgages.

# Mortgage Rates

Home owners borrow from banks to purchase their homes and use their homes as collaterals. These loans are called mortgages. Many mortgage banks lend home owners with the deposits they receive from their depositors. Many others sell their mortgages to the secondary market as mortgage-backed securities.

Regardless if a mortgage is lent directly by deposits or selling to the secondary market, the interest rate charged (called mortgage rate) on the borrower is a function of the borrower's credit history, which is categorized as follows:

- prime
- Alt-A
- sub-prime

These mortgage rates reflect the credit quality of the borrowers and hence vary widely. Prime borrowers are the safest. They must meet many strict criteria such as low LTV (loan to value ratio, typically less than $80\%$ ) and low PI (payment to income ratio, usually less than 1/3). Alt-A borrowers are less safe. They may not be high credit-risky but are classified as such due to lack of long credit history or lack of documentation. Sub-prime borrowers are regarded as unsafe or high risk, but they do not necessarily have bad credit history. Some may not have steady job or regular income.

# Credit Cards

Credit card loans are the money owed by card owners by not paying the full amount each month. It is notoriously well known that credit card interest rates are extremely high (like $18\%$ on a per annum basis). Credit card loans, along with other retail lendings are packaged in "asset backed securities" and transacted in the secondary market. A credit card loan can be short or long depending on the borrower's consumption and financing habit. It can range from a few days to several months.

# Auto Loans

Loans borrowed to purchase automobiles are packaged in asset backed securities as well. However, unlike credit card loans, these auto loans are collateralized (by the vehicles). As a result, they are much less risky than credit card loans. In fact, the asset backed securities backed by auto loans are consider extremely safe and they often receive AAA ratings. Student loans Student loans are government subsidized loans which are in many cases guaranteed by the government. The student loans that are securitized in the secondary market are performed by SLM Corporation (commonly known as Sallie Mae; originally the Student Loan Marketing Association).

# Student Loans

Student loans are government subsidized loans which are in many cases guaranteed by the government. The student loans that are securitized in the secondary market are performed by SLM Corporation (commonly known as Sallie Mae; originally the Student Loan Marketing Association).

# 1.3 Types Of Fixed Income Securities

To speculate or hedge the above interest rate changes/risks, there are a number of different types of fixed income securities transacted in the marketplace, such as:

- bonds (fixed rate or floating rate),
- options,
- futures/forwards, and
- swaps.

No matter how complex a fixed income security is, it can always be decomposed into a combination of the above types of contracts. These types of derivative contracts are well explained in any standard options and futures textbooks. We shall not repeat the e ort here.

We should note that two of the types, bonds and options, require an upfront payment. So they are like products to be purchased and owned. Two of the types, futures/forwards and swaps, require no upfront payment. So they are commitments made by two counterparties. Futures contracts that guaranteed by the exchange and hence are free from default risk yet the forward contracts are subject to default risk.

Di erent contract designs will represent the same risk very di erently. For example, credit default swaps are designed to protect default loss. A credit default swap contract takes over the defaulted bond issue and pays the owner notional value of the bond upon default. In return, the buyer pays in a series of premiums until either default or maturity (whichever is earlier). This is a swap contract hence there is no cash changed hands at inception. On the other hand, a put option will provide exactly the same protection, yet the option requires an upfront payment. It can be shown that these two contracts are priced very di erently. Another example is property index futures versus property index swaps. Chicago Mercantile Exchange trades Case-Shiller property index futures while over the counter institutional investors trade RPX (Radar Logic) property index swaps.

# 1.4 Market Basics

# 1.4.1 Yield

Yield, or yield to maturity, represents an expected return of a fixed income security. Yield is also known as the internal rate of return, which technically means the flat discount rate that equates the cash flows and the price of the security. There are various ways to define such a yield. The most elementary ones are:

$$
P = \frac {c _ {1}}{1 + y} + \frac {c _ {2}}{(1 + y) ^ {2}} + \dots + \frac {c _ {n}}{(1 + y) ^ {n}} \tag {1.1}
$$ where $c_{j}$ is the $j$ -th period cash flow. The top line is discrete discounting and the bottom line is continuous discounting. In a typical case the cash flows are fixed and the principal is redeemed at the maturity:

$$
\mathbf {c} _ {\mathbf {j}} = \mathbf {c} \text {for} \mathbf {j} < \mathbf {n} \text {and} \mathbf {c} _ {\mathbf {n}} = 1 + \mathbf {c}.
$$

For example, a 10-year 6% coupon bond that pays annual coupons with a face value of $1000 and a market price of $980 can be calculated to have the following yield:

$$
980 = \frac {6 0}{1 + y} + \frac {6 0}{(1 + y) ^ {2}} + \dots + \frac {1060}{(1 + y) ^ {1 0}}
$$

The solution is y = 6.2753% in discrete time. This yield is an expected return, or internal rate of return, and not the actual return of the bond. The actual return depends on how interest rates move and how each $60 is invested. If rates go up in the next 10 years, the re-investment of each $60 will earn more than 6.2753% and the final outcome will be more. On the other hand, if rates drop and the re-investment incomes of $60 coupons will suffer less returns and the final outcome will be less.

In the above equation, the period over which the yield $y$ is generated is consistent with the length of the period. That is, if the period is semi-annual, then $y$ is a semi-annual yield. However, it is customary to report yields in an annual basis (per annum) and hence this semi-annual yield needs to be multiplied by
2. As a result, it is more convenient to embed annualization into the formula. There are two ways to do that:

$$
\# 1) \mathbf {P} = \frac {\mathrm {c} _ {1}}{1 + \mathrm {y} / \mathrm {m}} + \frac {\mathrm {c} _ {2}}{(1 + \mathrm {y} / \mathrm {m}) ^ {2}} + \dots + \frac {\mathrm {c} _ {\mathrm {m} \times \mathrm {n}}}{(1 + \mathrm {y} / \mathrm {m}) ^ {\mathrm {m} \times \mathrm {n}}} \tag {1.2}
$$

$$
\# 2) \mathbf {P} = \frac {\mathrm {c} _ {1}}{(1 + \mathrm {y}) ^ {1 / \mathrm {m}}} + \frac {\mathrm {c} _ {2}}{(1 + \mathrm {y}) ^ {2 / \mathrm {m}}} + \dots + \frac {\mathrm {c} _ {\mathrm {m} \times \mathrm {n}}}{(1 + \mathrm {y}) ^ {\mathrm {n}}}
$$ where $m$ is the frequency the coupon is paid during a year. In a semi-annual (or quarterly) case, $m = 2$ ( $m = 4$ ). Now the total number of payments is 20 and each $c_i = 60 \div 2 = 30$ and the last payment is $c_{20} = 1030$. This way, $y$ is automatically already annualized (per annum). Take the same example but assume semi-annual coupons, each coupon payment is now $30 but paid every 6 months. Hence,

$$
980 = \frac {3 0}{1 + y / 2} + \frac {3 0}{(1 + y / 2) ^ {2}} + \dots + \frac {1030}{(1 + y / 2) ^ {2 0}}
$$

$$
980 = \frac {3 0}{(1 + y) ^ {0.5}} + \frac {3 0}{(1 + y) ^ {1}} + \dots + \frac {3 0}{(1 + y) ^ {9.5}} + \frac {1030}{(1 + y) ^ {1 0}}
$$ and the yield now is equal to $6.2723\%$ and $6.3706\%$ respectively.

For quarterly (m = 4) where coupon payment at each quarter is $15 (last payment is $1015) and 40 quarters, y = 6.2707%. As we can see now that more frequent discounting leads to less yield. This is intuitive in that if an investment is paying more frequently and reinvestment income is higher and hence you do not need a high-return investment to generate the same total cash flow (in the example it is 60 × 10 + 1000 = 1600).

In the extreme case where discounting is continuous:

$$
\begin{array}{l} \mathbf {P} = \mathrm {c} _ {1} \mathrm {e} ^ {- \mathrm {y}} + \mathrm {c} _ {2} \mathrm {e} ^ {- 2 \mathrm {y}} + \dots + \mathrm {c} _ {\mathrm {n}} \mathrm {e} ^ {- 1 0 \mathrm {y}} \\ 980 = 6 0 e ^ {- y} + 6 0 e ^ {- 2 y} + \dots + 1060 e ^ {- 1 0 y} \\ \end{array}
$$ and $y = 6.09\%$, which is the lowest.

The above demonstration, seen in most text books, however is not realistic. We observe prices all the time and at no circumstances where we have an integer number of periods. So how do we deal with this realistic situation?

The continuous discounting method is the easiest to adjust:

$$
P = c _ {1} e ^ {- y \times t _ {1}} + c _ {2} e ^ {- y \times t _ {2}} + \dots + c _ {n} e ^ {- y \times t _ {n}}
$$ where $t_i$ is the distance (per annum) between now and the payment date.

For example, we have a $6\%$ coupon bond that matures on December 31,2030 and today is August 26,2020 and the bond is paying semi-annual coupons (i.e. $30 per six months). Given the maturity of December 31,2030, we know that coupons are paid on June 30 and December 31 every year. Hence, the next coupon payment date is 12/31/2020. There are 127 days between now (8/26/2020) and end of the year, which is 0.347 year (i.e. $127 \div 366$ because 2020 is a leap year).<sup>4</sup> Then we can write the equation as:

$$
P = 3 0 e ^ {- y \times 0.347} + 3 0 e ^ {- y \times 0.847} + \dots + 1030 e ^ {- y \times 1 0.347}
$$ and the solution is $y = 6.2877\%$.

The discrete case is more complicated. There are two discrete methods in equation (1.2). For the first method, 0.347 year is 0.694 half-year. Hence,

$$
980 = \frac {3 0}{(1 + y / 2) ^ {0.694}} + \frac {3 0}{(1 + y / 2) ^ {1.694}} + \dots + \frac {1030}{(1 + y / 2) ^ {2 0.694}} \tag {1.3}
$$

Note that this is the same as the two-step discounting method. If we factor out $1 / (1 + y / 2)^{0.694}$, then it is the same as equation (1.2). In other words, we simply use equation (1.2) and then discount the fractional period separately.

For the second method, it is more straightforward, given that the power of $1 + y$ is already per annum:

$$
980 = \frac {3 0}{(1 + y) ^ {0.347}} + \frac {3 0}{(1 + y) ^ {0.847}} + \dots + \frac {1030}{(1 + y) ^ {1 0.347}}
$$

Later, we will introduce daycount conventions which will modify the fractional year (0.347) we compute here. Di erent daycount conventions will lead to di erent results of the fractional year.

As we can see that how to discount has an impact on the yield. So we can conclude that yields are not unique and highly dependent upon the methods used. This demonstration hopefully can convince you that we should not use yields for any serious modeling e orts but use prices.

# 1.4.2 Par Yield And Zero Rate

At the surface, it seems like the second method is superior, as it is more generic and easier. Yet, the first method has one big advantage and hence remains as the major discounting method (especially for securities that pay semi-annual coupons). When the price is equal to the face value, the first method of equation (1.2) has a nice result:

$$
\mathbf {c} = \mathbf {y}
$$

The bond in this case is called a par bond and the yield (also coupon rate) is called the par yield.

Practitioners believe that when a bond is priced at par, its "convexity bias" is the least. If it is priced below par
(discount) or above par
(premium) , then the bias is worse. Hence this makes it easier to compare bonds with di erent coupons. Note that (to be discussed in Chapter 3 in details) higher coupons lead to shorter durations and consequently less risk. Hence it is usually frowned upon when we compare yields of di erent coupons and di erent maturities. However, it is customary in the fixed income world that par yields are compared – known ad the par yield curve.

While coupon bonds have no unique yield result, zero-coupon bonds do. In a zero-coupon bond, you pay a price now and receive the face value at maturity. The internal return is the actual return. It is common that we only use continuous formula to compute the yield of a zero-coupon bond:

$$
\begin{array}{l} \mathbf {P} = \mathrm {e} ^ {- y} \\ y = - \frac {1}{-} \ln P \\ \end{array}
$$ where $\mathbf{c}$ represents time to maturity. When we build the yield curve, we use only zero coupon bonds. Hence, the resulting yield curve is also called the zero curve. In Chapter 2, we will define each term carefully and rigorously. Time indices will be added to the variables.

# 1.4.3 Price Quote Vs. Rate Quote Or Volatility Quote

Unlike equities, not all fixed income securities are quoted in term of price. Many markets use rate quotes and the swaption market is custom to volatility quotes. We should note that in the Treasury auction market, bids are submitted in terms of yields.

# T Bills Are Rate Quotes

It is important to di erentiate rate quotes, that are to determine transaction prices, and rates of return, that represent percentage return of an investment. Rate quotes are subject to day count conventions. For example, T bill quotes are subject to Actual/360 convention. Hence, a quote of 3.24 of a bill 21 days to maturity has a price of:

$$
100 - 3.24 \times \frac {2 1}{360} = 9 9.81
$$

The rate of return of this bill can be computed discretely as:

$$
\frac{100 - 99.81}{99.81}\times \frac{365}{21} = 3.285\%
$$

Hence 3.24 is not representing rate of return, 3.285 is.

Note that 99.81 is a percent quote. It represents the price to pay for acquiring a bond is 99.81% of its face value. If the face value is $100, it costs $99.81; if it is $100,000, it costs $99,810. If it is $1, then it costs 0.9981. This is known as the discount factor.

# Swaptions Are Volatility Quotes

Swaptions are quoted by volatility, more specifically, Black volatility:

$$
\mathbf {C} = \mathbf {P} (\mathbf {t}, \mathbf {T} _ {\mathbf {C}}) [ \mathbf {w} (\mathbf {t}) \mathbf {N} (\mathbf {d} _ {+}) - \mathbf {w} _ {\mathbf {K}} \mathbf {N} (\mathbf {d} _ {-}) ]
$$ where

$$
\mathbf {d} _ {\pm} = \frac {\ln w
(t) - \ln w _ {K}}{v (t, T)} \pm \frac {1}{2} v (t, T) ^ {2}
$$ and $w(t)$ is the current swap rate, $w_{K}$ is the strike price.

In other words, the quoting mechanism assumes that the underlying swap rate follows a log-normal distribution.

# 1.4.4 Daycount

Daycount is a very special trading convention in the world of fixed income securities. Other markets have trading conventions (e.g. CBOE does not specify maturity date as a fixed date but the Saturday of the third Friday of the expiration month). The daycount convention specifies how many days should be in a month and in a year. There are 5 popular daycount conventions:

- 0: 30/360 (corporate fixed, fixed leg of IRS USD)
1: A/A (T notes/bonds)
- 2 A/360 (corporate floaters, T bills, floating leg of IRS to match with 30/360))
3: A/365 (floating leg of IRS to match with 30/365)
4: European 30/360
-: 30/365 (fixed leg of IRS non-USD)

The code is what is used by the Excel function yearfrac(a, b, c) where a is the beginning date, b is the ending date, and c is the code of the daycount convention. Lets first study 30/360 convention. This convention assumes that there are exactly 30 days in a month for any fraction of a month. For example, from 1/2/2003 to 2/28/2003, both months are not full months. In a normal calendar, January has 29 days and February has 28 days. But under 30/360, there are only 28 days in January (28 = 30 - 2) and 28 days in February. Hence, the period in years is:

$$
0.155556 = \frac {3 0 - 2}{3 0} + \frac {2 8}{3 0} \div 1 2
$$

This implies that there will be 1 day in January if we count from 1/29/2003 and 0 day if we count from 1/30/2003:

$$
0.08055556 = \frac {3 0 - 2 9}{3 0} + \frac {2 8}{3 0} \div 1 2
$$

Interestingly, since there can be only 30 days in a month, it will be 0 day if we count from 1/30/2003 and 1/31/2003:

$$
0.0777778 = \frac {0}{3 0} + \frac {2 8}{3 0} \div 1 2
$$

But on the other hand, if the ending date is 3/1/2003, then we will have a full month for February. Hence, although there is only one day difference between 2/28 and 3/1, the 30/360 daycount treats it as three days apart:

$$
0.163888889 = \frac {3 0 - 2}{3 0} + 1 + \frac {1}{3 0} \div 1 2
$$

The following table summarizes the result.

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline beginning & ending & daycount & year frac \\ \hline
1/2/2003 & 2/28/2003 & 30/360 & 0.15556 \\ \hline
1/29/2003 & 2/28/2003 & 30/360 & 0.08056 \\ \hline
1/30/2003 & 2/28/2003 & 30/360 & 0.07778 \\ \hline
1/31/2003 & 2/28/2003 & 30/360 & 0.07778 \\ \hline
1/2/2003 & 3/1/2003 & 30/360 & 0.16389 \\ \hline
\end{tabular}
\end{document}
```

Table 1.1: Daycount

Under A/A, the year fraction from 1/2/2003 to 2/28/2003 is 57 days (actual number of days between 1/2/2003 to 2/28/2003) divided by 365 (which is the actual number of days in year 2003):

$$
0.156164 = \frac {\# o f d a y s i n b e t w e e n}{\# o f d a y s i n a y e a r} = \frac {5 7}{365}
$$ which is the same as A/365 in a normal year (but not in a leap year, which will be explained later):

$$
0.156164 = \frac {\# o f d a y s i n b e t w e e n}{365} = \frac {5 7}{365}
$$

Finally, under A/360, the year fraction from 1/2/2003 to 2/28/2003 is:

$$
0.158333 = \frac {\# o f d a y s i n b e t w e e n}{360} = \frac {5 7}{360}
$$

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|}
\hline beginning & ending & daycount & code & year frac \\ \hline
12/2/1995 & 3/1/1996 & 0 & 30/360 & 0.24722 \\ \hline
12/2/1995 & 3/1/1996 & 1 & A/A & 0.2459 \\ \hline
12/2/1995 & 3/1/1996 & 2 & A/360 & 0.25 \\ \hline
12/2/1995 & 3/1/1996 & 3 & A/365 & 0.24658 \\ \hline
\end{tabular}
\end{document}
```

Table 1.2: Daycount

In a leap year, there are 29 days in February (e.g. 1996). For example, from 12/2/1995 to 3/1/1996, we have the following results:
 where each of the results above is calculated as follows:

$$
\begin{array}{l} 0.247222 = \frac {3 0 - 2}{3 0} + 1 + 1 + \frac {1}{3 0} \div 1 2 \\ 0.245902 = \frac {\text {# o f d a y s i n b e t w e e n}}{\text {# o f d a y s i n a y e a r}} = \frac {9 0}{366} \\ 0.250000 = \frac {\text {# o f d a y s i n b e t w e e n}}{360} = \frac {9 0}{360} \\ 0.246575 = \frac {\text {# o f d a y s i n b e t w e e n}}{365} = \frac {9 0}{365} \\ \end{array}
$$

# 1.4.5 Accrued Interest

Accrued interest is another daycount convention in fixed income. For reason given before I was born, bonds are quoted by their "clean price" instead of the real price (called "dirty price"). Investors of bonds need to compute the price (dirty price) they have to pay by adding accrued interest to the clean price.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/fc32d3239bc9761821f1ebe0f80166ead80f03fefba9a2f9f0d831d1d43e632d.jpg)

Figure 1.1: Accrued Interest

Hence, the dirty price is:

$$
\text {D i r t y price} = \text {C l e a n price} + \frac {6 0}{182} \times \frac {\mathrm {c p n}}{2}
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

A $z$ spread can be thought of OAS with no volatility in the underlying asset. Hence it is similar to the deterministic OAS (only using the yield curve). The only difference is market yield curve
(OAS) versus model yield curve (z spread).

DM (short for discount margin) is used commonly with floaters. It represents an additional income, just like OAS. Since floaters do not have a clean yield curve, DM is added to the forward rates (which represents the expected rates). Since floaters are all at par at issuance $(\mathrm{DM} = 0)$, DM represents how later on floaters are transacted at discount or premium. Note that a risk free floater should always be priced at par at coupon dates. Hence a positive DM represents that the credit quality of the floater has deteriorated since its issuance. As a result, DM is a common quoting language for a floater.

LIBOR spread is a very general term to measure the credit quality of a fixed income security or the funding cost of a financial institution, relative to LIBOR. This is because LIBOR is the benchmark for major investment banks. Similar to DM, a LIBOR spread represents the credit quality over LIBOR. However, di erent from DM, a LIBOR spread is not a quoting language. It is common term for the credit quality.

Yield spread refers to the spread over a Treasury. Treasuries are default risk free fixed income securities. Hence, the spread over a Treasury is the absolute measure of credit risk. Depending on what duration of the security, a di erent Treasury would be used. For example, mortgages are tied to 10 year Treasury; floaters are tied to 6-month or 1-year Treasury. Since Treasuries are fixed rate securities, we can only benchmark to their yields to maturity. As a the securities that use yield spreads are fixed rate securities.

CDS spread is a credit spread reflecting the default risk of a security. Since all the above spreads contain the credit component, we can view CDS spreads to be contained in other spreads.

# 1.4.7 Spot And Forward Rates

The major building block in fixed income securities is the yield curve, or also known as the term structure of interest rates. We shall discuss all the necessary details in Chapter?? But in this section, we shall introduce the basic idea.

In Figure 1.2, we demonstrate how various rates are defined. Let $r_t$ be a one-period (say, one year) rate that moves randomly over time. We observe $r_0$ but do not observe $r_1, r_2,$ and $r_3$. However, we do observe all the yields $y_{0t}$ for all $t$. From the yields, we can then compute the forward rates as follows:
 continuous time:

$$
\mathbf {y} _ {0, n} = \frac {1}{n} \quad \begin{array}{l} n \\ i = 1 \end{array} f _ {0, i, i + 1} \tag {1.4}
$$

- discrete time:

$$
\mathbf {y} _ {0, n} = \overline {{\begin{array}{l} n \\ i = 1 \end{array} (1 + \mathbf {f} _ {0, i, i + 1})}} \tag {1.5}
$$ where $\mathsf{f}_{t, u, v}$ represents the forward rate observed at time $t$ for a forward rate covering a future period between $u$ and $v$. Hence, $\mathsf{f}_{0, i, i+1}$ is the forward rate observed today (traded in the marketplace today) for a future period between $i$ and $i+1$ which is one period forward rate). For example, $\mathsf{f}_{012}, \mathsf{f}_{023}, \mathsf{f}_{034}$ are one-year forward rates, $\mathsf{f}_{013}, \mathsf{f}_{024}$ are two-year forward rates, and $\mathsf{f}_{014}$ is a three-year forward rate.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/b9532116d2607086bac5001d5c20974fe1ea7d2d894c3e02df5af7efc7530b4e.jpg)

Figure 1.2: Spot and Forward Rates

Finally, we note that yield to maturity $=$ rate of return $=$ holding period return $=$ capitalization rate $=$ spot rate

# 1.4.8 Example

Here, there are some demonstrations of how to go from one set of rates (e.g. spot) to another set of rates (e.g. forward). Example 1 (Figure 1.3) is given spot rates as input and computes the forward rates (both discrete and continuous). Similarly, Examples 2 and 3 are given discount factors and forward rates as inputs respectively and compute the rest. Formulas are given by equations (1.4) and (1.5).

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/20d518ae9487aaff5a3f9e47210aeafd9c924104a8dddfed291d564c5a7ec422.jpg)

Figure 1.3: Spot and Forward Rates

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/77b0ec9f60c51af5a500e36f45a178fa0ccad998494c94120ab982ae22be1e26.jpg)

Figure 1.4: Spot and Forward Rates

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/6d0e080def6c96f41a1ba3b940b4649797b40f1ff28a4bdaa485a46147f63b7e.jpg)

Figure 1.5: Spot and Forward Rates

# 1.5 Exercises

1. Why is a stock not a fixed income security even though its price is sensitive to rate change?
2. Trading conventions are important for fixed income securities. Name a few.
3. Fixed income securities are predominantly traded in the OTC markets. Why is that?
4. There are many interest rates in the fixed income markets. Name a few. Compare them.
5. There are four basic contract types of fixed income securities. What are they? How do they differ?
6. Given the following zero coupon bond prices:

Table 1.3: Add caption

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
TTM & P \\ \hline
1 & 0.9 \\ \hline
2 & 0.8 \\ \hline
3 & 0.7 \\ \hline
4 & 0.6 \\ \hline
\end{tabular}
\end{document}
``` find the zero rates using
(i) annual
(ii) semi-annual, and
(iii) continuous compounding.

7. Someone computed and reported the following annually discounted yield curve (zero rates) to you. How do you find out the discount factors?

Table 1.4: Add caption

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
TTM & YTM \\ \hline
1 & 0.04 \\ \hline
2 & 0.05 \\ \hline
3 & 0.06 \\ \hline
4 & 0.07 \\ \hline
\end{tabular}
\end{document}
```

8. If the above yields are continuously discounted, what are the discount factors? What are the 1-year forward rates?
9. Use annually discounted factors, compute the price of a $6 \%$ 4- year coupon bond. Also compute the yield of this coupon bond.

# Chapter 2

# Term And Volatility Structures Of Interest Rates

The fundamental knowledge underlying the entire universe of fixed income securities lies in the term structure of interest rates (or commonly known as the yield curve) and the term structure of volatilities (or volatility curve). The former is the foundation for fixed income securities that do not have any optionality and the latter is the foundation for those that do. In this chapter, we study both term structures at a very superficial level. In a later chapter, we study the fundamental factors that lie under these two term structures.

# 2.1 Introduction

Di erent from stocks, fixed income securities are like (interest rate) derivatives – duh!, in that the contracts will expire (and cease to exist) at a given future time. As a result, for a given issuer, there are usually contracts with di erent expiration dates. These contracts share the same fundamental risk (issuer risk which is usually the credit risk) and yet they di er in time risk (time-to-maturity risk, or term risk). Hence there exist interesting relationships among these securities of the same issuer and often depicted in two term structures: return and volatility.

The return term structure, i.e. the term structure of interest rates, describes how various returns of these securities (of the same issuer) are related. In the fixed-income language, these returns are also called yield. Hence this term structure is also known as the yield curve.

The volatility term structure, a.k.a. the term structure of volatilities, describes how their volatilities are related. It is also called the volatility curve.

The information of the yield curve can be inferred from traded prices of these securities and the information of the volatility curve can be inferred from the prices of the options written on these securities. Take US Treasuries as an example, there are well over 100 US Treasuries traded in the marketplace (over the counter) and Treasury bond futures options are traded also very frequently on the Chicago Mercantile Exchange.

To analyze the yield and volatility curves separately and in combination, we need to build an interest rate model. In this chapter, we will focus on the markets and in Chapter?? we will discuss how an interest rate model can be used.

# 2.2 What Is A Yield Curve (Term Structure Of Interest Rates)?

A yield curve (or term structure of interest rates) is a collection of yields with various maturities. In Chapter 1, we have seen various interest rates. Hence theoretically each interest rate category has a yield curve of its own. However, due to (lack of) liquidity and too few contracts, it is usually not easy to see a full yield curve of any of these interest rates except for US Treasuries and LIBOR (and more recently OIS).

# 2.2.1 A Sample: Us Treasuries

There are a large number of US Treasury securities traded publicly, as mentioned in Chapter
1. Treasury bills, notes, and bonds are the most important Treasury securities. As of January of 2020, there are 40 T bills, 295 T notes and bonds, and 43 TIPS.<sup>1</sup>

Treasury securities (bills, notes, bonds, and TIPS) of chosen maturities are auctioned regularly periodically0.2 As we can see from Figure 2.1, the auctioned securities are: 4-week (1-month), 8-week (2-month), 13-week (3-month), 26-week (6-month), and 52-week (1-year) T bills, and 2-year, 3-year, 5-year, 7-year, 10-year, 20-year, and 30-year T notes and bonds.

# Treasury Auction System: Taaps

# According To Investopedia:

"Treasury Automated Auction Processing System
(TAAPS) is a computer network system developed by the Federal Reserve Bank. It is facilitated by Fed banks, to process bids and tenders received for Treasury securities.

Treasury auctions began in 1929 with the auctioning of 3-Month Treasury Bills. From 1973 through 1976 the auction system expanded to include bills, notes, bonds, Treasury Inflation Protected Securities, or TIPS, and Floating Rate Notes, or FRNs. Until 1993, bids were received in paper form and processed manually, which was an extremely time-consuming and inefficient process. The TAAPS system created the streamlined and efficient process needed to handle the growing volume of treasury securities trades."

The participants must be certified by the Treasury department. In general, commercial banks are all certified.<sup>3</sup>

# Treasurydirect: Retail

TreasuryDirect was established during the Clinton administration which argued that individuals should be able to participate Treasury auctions as well as financial institutions. Prior to that, individuals can only participate in mutual funds to own Treasury returns.

One hurdle to let individuals participate in Treasury auctions is the denomination of the Treasuries – $100,000.4 Hence, to facilitate individual participation, the denomination is dropped to $1,000.

TreasuryDirect is a website run by the Bureau of the Fiscal Service under the United States Department of the Treasury that allows US individual investors to purchase Treasury securities such as Treasury Bills directly from the U. S. government.

The individuals who participate in purchasing Treasuries via TreasuryDirect cannot participate in bidding but can only take TAAPS prices as given.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/95f8584ebad3f7b3036f56fa97dfbdb413b3165390f41e4eab1bd2929d79ab32.jpg)

Figure 2.1: Treasury Auction Schedule (partial list)

# On-The-Run Treasuries

These auctioned Treasuries are known as "on-the-run" issues. As time goes by and new on-the-run issues roll out, existing old on-the-run issues become "o -the-run" as then roll down in their maturities. These o -the-run issues in general have low liquidity, compared to on-the-run ones. Due to this liquidity difference, their prices are not comparable as o -the-run issues bear an extra risk (and hence their prices should be lower). Hence, when we build a Treasury yield curve, it is customary that we use only on-the-run issues. Nevertheless, some institutions will use all issues to build the yield curve.

When we use only on-the-run issues to build the yield curve, every issue must be correctly repriced. When we use all issues to build the yield curve, we try to reprice on-the-run issues as much as possible and allow for larger errors for o - the-run issues. The allowed errors are quite subjective and there is no science in determining how much errors are appropriate. We shall discuss both methods in this chapter.

Figure 2.2 is an example taken from barchart.com website, a snapshot on 8/24/2020. As we can see, the yield curve is not flat. This is because of inflation, changing expectations and risk premiums for uncertainty.

To explain the shape of the yield curve, the old literature (John Keynes) has provided three hypotheses, which we shall discuss later. In modern finance, due to the needs for trading and hedging, we try to quantify such a shape. Various models have been proposed. In a later chapter, we shall discuss them in much greater details. In this chapter, we shall give a short introduction.

The following plot is a yield curve of selected Treasuries on a given day. This is generally called "par curve" because (except for zero coupon bonds) these are "on-the-run" bonds which are usually traded at par.[5]

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/7bda247b7c9e99d592ae53b4208de77e5697aa60143fa244998fe1e98350f633.jpg)

Figure 2.2: On-the-run Treasury Issues

# 2.2.2 Coupon-Bearing Yield Curve And Par Yield Curve

This regards mainly US Treasury securities. US Treasuries are one of the most liquid fixed income securities traded publicly. The prices of these hundreds of Treasuries are available every day. In Chapter 1, equation (1.3) as follows:

$$
P = \frac {1}{(1 + y / 2) ^ {t}} \frac {c}{2} + \frac {c / 2}{1 + y / 2} + \frac {c / 2}{(1 + y / 2) ^ {2}} + \dots + \frac {1 + c / 2}{(1 + y / 2) ^ {2 \times n}} \tag {2.1}
$$ where $t$ is the yearfraction under the semi-annual basis (see equation (1.3) for the numerical demonstration). As a result, every Treasury issue can obtain a yield which can be plotted as the following example (taken from Chen and Scott (2002)):

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/f1a7a5592df05da13bb60e883c7bddce3e9723e609f80d6665de19fdd42ed419.jpg)

Figure 2.3: All Treasury Issues

# A Remark

It should be noted that there is another yield curve calculation that takes no year-fraction into account but use the clean prices.<sup>6</sup> Yields using clean prices and without yearfraction are not the correct internal rate of return of the bond.

# Par Yield Curve

At issuance, yearfraction is 0 and all issues are auctioned at par. As a result, the formula used in Chapter 1:

$$
\mathbf {P} = \frac {\mathrm {c} / 2}{1 + \mathrm {y} / 2} + \frac {\mathrm {c} / 2}{(1 + \mathrm {y} / 2) ^ {2}} + \dots + \frac {1 + \mathrm {c} / 2}{(1 + \mathrm {y} / 2) ^ {\mathrm {n}}}
$$ where c is the coupon rate and the face value is set at $1. This formula has the following property:

$$
\mathbf {P} = 1 \quad \mathbf {c} = \mathbf {y}
$$

Over time, if rates go up, then previously issued Treasuries will become less than par
(discount) . Conversely, if rates drop, then previously issued Treasuries will become more than par
(premium) . Hence at any given time, the hundreds of Treasuries are mixed with par, discount and premium issues. The plot of all these mixed yields against their corresponding times to maturity (or duration).

# Constant Maturity Treasury
(Cmt) Curve

We should note that the on-the-run Treasury notes and bonds shown in Figure 2.2 are par at issuance. The prices will start fluctuating after issuance. Nevertheless they remain on-the-run until their replacements come to auction.

According to the Treasury Auction Schedule (Figure 2.1), a 10-year note is auctioned on August 5,2020 first, and then on September 03,2020 next. Hence, the 10-year note issued on August 5,2020 will be on-the-run until its replacement on August 5,2020. During this period, the price of the 10-year note issued on August 5 will fluctuate away from par, although it still appears publicly as in Figure 2.2. As a result, those rates shown in Figure 2.2 are not par yields.

Hence, the Treasury department "adjusts" those on-the-run prices and try to result in a par yield for each bond. As a result, we can regard CMT rates as par rates. But note that these rates are not actual market rates but computed by the Treasury department.

# 2.2.3 Zero Coupon Yield Curve

Zero coupon bond yield curve (or zero curve) is the most important yield curve. This is because from this yield curve, we can compute discount factors (or discount curve) for all maturities. These discount factors are used to discount cash flows of the futures. The relationship between the discount factor and the yield for any given maturity is, under continuous time,

$$ y _ {t, T} = - \frac {\ln P (t, T)}{T - t}
$$ or under discrete time,

$$
\mathbf {y} _ {\mathrm {t}, \mathrm {T}} = ^ {\mathrm {T} - \mathrm {t}} \frac {1}{\mathrm {P} (\mathrm {t}, \mathrm {T})} - 1
$$

For example, $r_0 = y_{01} = 6\%$ and $f_{12} = 8\%$ (both annual), then $P(0,2) = e^{-(8\% +6\%)} = 0.8694$
(continuous) or $P(0,2) = \frac{1}{(1 + 6\%) (1 + 8\%)} = 0.8735$
(discrete) . Hence, the two year yield $y_{02} = -\frac{\ln 0.8694}{2} = 7\%$
(continuous) or $y_{02} = \frac{1}{0.8735} - 1 = 6.995\%$.

# A Comment

Note that the coupon bond price is taken by the market, which is a result of no arbitrage trading. Coupon bond price is determined by arbitrage (if zeros are available)

$$
\begin{array}{l} \left(\mathrm {t}, \mathrm {T} _ {1}, \dots \mathrm {T} _ {\mathrm {n}}; \mathrm {c}\right) = \mathrm {c P} \left(\mathrm {t}, \mathrm {T} _ {1}\right) + \mathrm {c P} \left(\mathrm {t}, \mathrm {T} _ {2}\right) + \dots + (100 + \mathrm {c}) \mathrm {P} \left(\mathrm {t}, \mathrm {T} _ {\mathrm {n}}\right) \\ = c \quad \begin{array}{l} n \\ i = 1 \end{array} P \left(t, T _ {i}\right) + 100 P \left(t, T _ {n}\right) \\ \end{array}
$$ where P(t, T_i) is today's (i.e. t = T_0) price of a zero-coupon bond (face value $1) maturing at time T_i. It is also a risk-free discount factor (discounting back to today t = T_0) of $1 paid at time T_i. This is no-arbitrage pricing because both zero-coupon bonds and the coupon bond are traded securities and this relationship must hold or arbitrage profits take place0.7

The yield to maturity of this coupon bond is the internal solution to:

$$
\left(t, T _ {1}, T _ {2}, \dots T _ {n}; c\right) = \sum_ {i = 1} ^ {n} e ^ {- y _ {0 i} \times \left(T _ {i} - t\right)} c + e ^ {- y _ {0 n} \times \left(T _ {n} - t\right)} 100
$$ or

$$
\left(t, T _ {1}, T _ {2}, \dots T _ {n}; c\right) = \underset {i = 1} {n} \frac {c}{\left(1 + y _ {0 i}\right) ^ {T _ {i} - t}} + \frac {100}{\left(1 + y _ {0 n}\right) ^ {T _ {n} - t}}
$$

For example, a 1-yr $7\%$ coupon bond should be sold at 100.77(100 face) because:

$$
107 \mathrm {e} ^ {- 6 \%} = 100.77
$$ and 2-yr $7 \%$ should be: $^{8}$

$$
7 \mathrm {e} ^ {- 6 \%} + 107 \mathrm {e} ^ {- 6 \% - 8 \%} = 99.61
$$

# 2.2.4 Forward Rate Curve

It is important to construct a forward rate curve, once the yield curve is constructed, as demonstrated in Chapter
1. With a spline method, we obtain a continuous function for the yield curve, and hence it is quite easy to use the continuous discounting to construct a forward rate curve.

Recall the continuous yield and forward rate are, respectively:

$$
\begin{array}{l} y (t, T) = - \frac {1}{T - t} \ln P (t, T) \\ f (t, T) = - \frac {\ln P (t, T)}{T} \\ \end{array}
$$

As a result,

$$
\mathbf {f} (t, T) = - \frac {\mathbf {y} (t, T)}{T}
$$ which implies that the forward rate is the first order di erentiation (with respect to maturity) of the yield. Or reversely, yield is an integration of the forward rate. Readers are encouraged to compare this result with the discrete result in Chapter 1.

# 2.3 How To Fit A Yield Curve Function

The first step toward understanding a yield curve is to fit a function through the market observed prices. There are two popular methods of doing so, each serves a purpose. The first method is bootstrapping which is suitable for on-the-run Treasury rates (and later on for LIBOR and OIS curves as well). The second method is a functional form which can be a polynomial or a particularly parameterized function (e.g. Nelson and Siegel $(1987)^{9}$ ). This method is useful if all Treasuries are considered. It is also important to note that the bootstrapping method is best used for zero-coupon bonds (i.e. zero rates) while the functional form method can blend zero-coupon bonds and coupon bonds together.

# 2.3.1 Bootstrapping

As mentioned, the bootstrapping method is best to use zero rates. Hence, to demonstrate the bootstrapping method, we use the CMT (constant maturity Treasury) rates compiled by the Treasury department. CMT rates are calculated by the US Department of Treasury and are published daily on its website at Daily Treasury Yield Curve Rates page by 6:00 PM Eastern Time each trading day.

CMT rates are weighted averages of on-the-run Treasuries. The exact methodology can be found on the Treasury website: https://home.treasury.gov/policy-issues/financing-the-government/interest-rate-statistics/treasury-yield-curve-methodology, if readers are interested. Given that on-the-run Treasuries are presumably par bonds (but they can be o par so CMT essentially practically "restore" them back to par), we can reasonably assume that CMT rates are par rates. Table 2.4 is collected from the St. Louis Federal website
(FRED) . These are CMT rates on 2/19/2016. CMT rates are:

```latex
\begin{document}
\begin{tabular}{|c|c|c|}
\hline t & CMT (%) & \\ \hline
0.083333 & 0.26 & not used \\ \hline
0.25 & 0.30 & not used \\ \hline
0.5 & 0.44 & \\ \hline
1 & 0.53 & \\ \hline
2 & 0.74 & \\ \hline
3 & 0.91 & \\ \hline
5 & 1.24 & \\ \hline
7 & 1.54 & \\ \hline
10 & 1.78 & \\ \hline
20 & 2.19 & \\ \hline
30 & 2.64 & \\ \hline
\end{tabular}
\end{document}
```

The bootstrapping process can be seen from the following table.

Table 2.1: CMT Rates on 2/19/2016

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|c|c|}
\hline
 & & & 0.5 & 1 & 2 & 3 & 5 &... & 30 \\ \hline
 & & & 0.44 & 0.53 & 0.74 & 0.91 & 1.24 &... & 2.64 \\ \hline rate & disc. fact & t & & & & & & & \\ \hline
0.44% & 1.0000 & 0.5 & not used & 0.265 & 0.37 & 0.455 & 0.62 &... & 1.32 \\ \hline
0.53% & 0.9947 & 1 & & 100.265 & 0.37 & 0.455 & 0.62 &... & 1.32 \\ \hline
0.74% & 0.9890 & 1.5 & & & 0.37 & 0.455 & 0.62 &... & 1.32 \\ \hline
0.74% & 0.9853 & 2 & & & 100.37 & 0.455 & 0.62 &... & 1.32 \\ \hline
0.91% & 0.9775 & 2.5 & & & & 0.455 & 0.62 &... & 1.32 \\ \hline
0.91% & 0.9731 & 3 & & & & 100.455 & 0.62 &... & 1.32 \\ \hline
1.25% & 0.9575 & 3.5 & & & & & 0.62 &... & 1.32 \\ \hline
1.25% & 0.9515 & 4 & & & & & 0.62 &... & 1.32 \\ \hline: &: &: &: &: &: &: &: &: &: \\ \hline
2.79% & 0.4544 & 28.5 & & & & & &... & 1.32 \\ \hline
2.79% & 0.4482 & 29 & & & & & &... & 1.32 \\ \hline
2.79% & 0.4420 & 29.5 & & & & & &... & 1.32 \\ \hline
2.79% & 0.4359 & 30 & & & & & &... & 101.32 \\ \hline
\end{tabular}
\end{document}
```

Table 2.2: Cash Flows of CMTs

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|c|c|}
\hline
 & & & 0.5 & 1 & 2 & 3 & 5 &... & 30 \\ \hline
 & & & & 100 & 100 & 100 & 100 &... & 100 \\ \hline rate & disc. fact & t & & & & & & & \\ \hline
0.44% & 1.0000 & 0.5 & not used & 0.264994 & 0.369992 & 0.45499 & 0.619986 &... & 1.319971 \\ \hline
0.53% & 0.9947 & 1 & & 99.73501 & 0.368044 & 0.452595 & 0.616723 &... & 1.313023 \\ \hline
0.74% & 0.9890 & 1.5 & & & 0.365917 & 0.449979 & 0.613159 &... & 1.305435 \\ \hline
0.74% & 0.9853 & 2 & & & 98.89605 & 0.448318 & 0.610895 &... & 1.300616 \\ \hline
0.91% & 0.9775 & 2.5 & & & & 0.444764 & 0.606053 &... & 1.290305 \\ \hline
0.91% & 0.9731 & 3 & & & & 97.74935 & 0.603301 &... & 1.284447 \\ \hline
1.25% & 0.9575 & 3.5 & & & & & 0.593619 &... & 1.263835 \\ \hline
1.25% & 0.9515 & 4 & & & & & 0.589943 &... & 1.256008 \\ \hline: &: &: &: &: &: &: &: &: &: \\ \hline
2.79% & 0.4544 & 28.5 & & & & & &... & 0.59984 \\ \hline
2.79% & 0.4482 & 29 & & & & & &... & 0.591597 \\ \hline
2.79% & 0.4420 & 29.5 & & & & & &... & 0.583467 \\ \hline
2.79% & 0.4359 & 30 & & & & & &... & 44.17008 \\ \hline
\end{tabular}
\end{document}
```

As we can see, the method used here is piece-wise flat. Now we can see how the other methods can be used.

# Piece-Wise Flat

In the next few subsections, we use a hypothetical example as follows:

Table 2.3: CMT Valuation (at Par)

```latex
\begin{document}
\begin{tabular}{|c|c|c|}
\hline i & & y( ) =
(ai) \\ \hline
0 & 0 & 1% \\ \hline
1 & 0.25 & 2 \\ \hline
2 & 0.5 & 3 \\ \hline
3 & 1 & 4 \\ \hline
4 & 2 & 5 \\ \hline
5 & 3 & 6 \\ \hline
6 & 5 & 7 \\ \hline
7 & 7 & 8 \\ \hline
8 & 10 & 9 \\ \hline
\end{tabular}
\end{document}
```

Table 2.4: Hypothetical Zero Rates

Piece-wise flat is the most fundamental method in building the yield curve. It is obvious that it is non-continuous (or more precisely left-continuous). The curve jumps at every knot point.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/98ef1515bea8b9c22e614f9bdbb4ef49437a22ee39571b0581516d3b03a6cba2.jpg)

Figure 2.4: Piece-wise Flat

# Piece-Wise Linear

Piece-wise linear is continuous but non-smooth (i.e. non-di erentiable). The first order derivative is non-continuous.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/57a5305b1039117707098ddcbc45c88488dbf8d54d4f752f451c9c24e28ff946.jpg)

Figure 2.5: Piece-wise Linear

# Splines

The spline method is a polynomial function between any two yields.

$$
\begin{array}{l} \mathbf {y} (\mathbf {\theta}) = \mathbf {a} _ {\mathbf {i}} + \mathbf {b} _ {\mathbf {i}} (\mathbf {\theta} - \mathbf {\theta} _ {\mathbf {i}}) + \mathbf {c} _ {\mathbf {i}} (\mathbf {\theta} - \mathbf {\theta} _ {\mathbf {i}}) ^ {2} \\ \mathbf {y} (\mathbf {\theta}) = \mathbf {a} _ {\mathbf {i}} + \mathbf {b} _ {\mathbf {i}} (\mathbf {\theta} - \mathbf {\theta} _ {\mathbf {i}}) + \mathbf {c} _ {\mathbf {i}} (\mathbf {\theta} - \mathbf {\theta} _ {\mathbf {i}}) ^ {2} + \mathbf {d} _ {\mathbf {i}} (\mathbf {\theta} - \mathbf {\theta} _ {\mathbf {i}}) ^ {3} \tag {2.2} \\ \end{array}
$$

： where $i < < _{i + 1}$ and for convenience $_0 = 0$

The two most popular ones are quadratic and cubic (power 2 and power 3). One can go one more power to have quartic splines. Adams (2001) argues that the quartic spline gives the smoothest interpolator of the forward curve, $^{10}$ yet many agree that this is an overkill.

Quadratic spline is not only continuous but smooth (first order di erentiable). Hence it makes sense to connect the slopes from the left and the right. The quadratic equation given in equation (2.2) is:

$$
\mathbf {y} (\mathbf {\theta}) = \mathbf {a} _ {\mathbf {i}} + \mathbf {b} _ {\mathbf {i}} (\mathbf {\theta} - \mathbf {\theta} _ {\mathbf {i}}) + \mathbf {c} _ {\mathbf {i}} (\mathbf {\theta} - \mathbf {\theta} _ {\mathbf {i}}) ^ {2} \tag {2.3}
$$

First of all, it is obvious that at any $= _{i}$

$$
\mathbf {y} (\mathbf {\mu_ {i}}) = \mathbf {a _ {i}} \tag {2.4}
$$ for all $\mathbf{i} = 0,1,\dots,\mathbf{n}$. Hence we know that the constants of the quadratic equation are key rates at the knot points.

First of all, at $= 0$, $y(0) = a_0$ which is the instantaneous rate. This rate does not exist in reality (only in theory). Hence it must be estimated (using a model) or approximated by a very short term rate (e.g. overnight rate).

From equation (2.4), we know that $y_{(i+1)} = a_{i+1}$. Given that the function is continuous, by equation (2.3), it must be the case that:

$$
\begin{array}{l} \mathbf {a} _ {\mathrm {i} + 1} = \mathbf {y} (\quad_ {\mathrm {i} + 1}) \tag {2.5} \\ = a _ {i} + b _ {i} \left(_ {i + 1} - i\right) + c _ {i} \left(_ {i + 1} - i\right) ^ {2} \\ \end{array}
$$ which allows us to solve for $c_i$ as follows:

$$
\mathrm {c} _ {\mathrm {i}} = \frac {\left(\mathrm {a} _ {\mathrm {i} + 1} - \mathrm {a} _ {\mathrm {i}}\right) - \mathrm {b} _ {\mathrm {i}} \left(\mathrm {b} _ {\mathrm {i} + 1} - \mathrm {b} _ {\mathrm {i}}\right)}{\left(\mathrm {b} _ {\mathrm {i} + 1} - \mathrm {b} _ {\mathrm {i}}\right) ^ {2}} \tag {2.6}
$$

$c_{0}$ hence is:

$$
\mathbf {c} _ {0} = \frac {\left(\mathbf {a} _ {1} - \mathbf {a} _ {0}\right) - \mathbf {b} _ {0} \mathbf {\Sigma} _ {1}}{2}
$$ which relies on $\mathbf{b}_0$. To solve for $\mathbf{b}_0$, we need another equation.

Now we take the first order derivative:

$$ y (\mathbf {\theta}) = b _ {i} + 2 c _ {i} (\mathbf {\theta} - \mathbf {\theta} _ {i}) \tag {2.7}
$$

At $0 = 0$, $\mathbf{y}(0) = \mathbf{b}_0$. This is an extra degree of freedom, and we can, for the sake of convenience, set it to
0. That is: $\mathbf{b}_0 = 0$. Then $\mathbf{c}_0 = \frac{(\mathbf{a}_1 - \mathbf{a}_0)}{2}$.

As a general case, the slope must be the same at the knot points, which means that the slopes from two ends must be equal. From equation (2.7)

$$
\# 1 \quad y
(i) = b _ {i - 1} + 2 c _ {i - 1} (i - 1) \tag {2.8}
$$

$$
\# 2 \quad \mathbf {y} (\mathbf {\mu} _ {i}) = \mathbf {b} _ {i} + 2 c _ {i} (\mathbf {\mu} _ {i} - \mathbf {\mu} _ {i}) = \mathbf {b} _ {i}
$$

Hence, $\mathbf{b}_{\mathrm{i}}$ is:

$$
\mathbf {b} _ {i} = \mathbf {b} _ {i - 1} + 2 \mathbf {c} _ {i - 1} (\quad i - 1) \tag {2.9}
$$ which relies on previous coe cients $b_{i - 1}$ and $c_{i - 1}$ only. Using this result, we can then obtain $c_{i}$ by plugging it in equation (2.6).

The following is an example of a quadratic spline.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/b962b76817f03e56ec2de01762998bfc5302e1569bacb154ebdfb8c97237e89c.jpg)

Figure 2.6: Quadratic Spline

As we can see, at the knot points $(t = 0.25,0.5,1,2)$ the function is both continuous and differentiable.

Cubic spline is twice-di erentiable. There are many varieties of cubic spline.[11]
 natural cubic spline.

The second derivative of the interpolator at $_1$ and at $_n$ are zero.
    - financial cubic spline

The function is linear on the left and horizontal on the right.
 quadratic-natural spline proposed in McCulloch and Kochin (2000)

The function is linear on the right and quadratic on the left.
    - Bessel method

It is also often called the Hermite method. It is popular among software vendors. The values of $\mathsf{b_i}$ for $1 < \mathbf{i} < n$ are chosen to be the slope at $\mathbf{i}$ of the quadratic that passes through $(\mathbf{i},\mathbf{r_j})$ for $\mathbf{j} = \mathbf{i} - 1,\mathbf{i},\mathbf{i} + 1$. The value of $\mathsf{b_1}$ is chosen to be the slope at $\mathbf{\Omega}_1$ of the quadratic that passes through $(\mathbf{i},\mathbf{r_j})$ for $\mathbf{j} = 1,2,3$; the value of $\mathsf{b_n}$ is chosen likewise.
    - monotone preserving cubic spline by Hyman (1983)

The values of $\mathbf{b}_{\mathrm{i}}$ for 1 in.

# 2.3.2 Using A Functional Form

# Nelson-Siegel

The following is the Nelson and Siegel function.

$$ y () = _ {0} + _ {1} \frac {1 - \exp - / _ {1}}{/ _ {1}} + _ {2} \frac {1 - \exp - / _ {2}}{/ _ {2}} - \exp - / _ {2}
$$ where $\mathbf{1}$ is the time to maturity measured in years and $\mathbf{2}$ are two arbitrary constants (to make the yield curve more flexibly shaped). The corresponding formula for the instantaneous forward rate is:

$$ f (.) = _ {0} + _ {1} \exp - / _ {1} + _ {2} - \exp - / _ {2}
$$

The model is typically applied by fitting the zero rate curve, $y(\cdot)$, to a set of bond prices, but one can alternatively fit a model for the forward rate curve using the formula for $f(\cdot)$. Yet Gurkaynak, Sack, and Wright (2006) use a variation of the model to fit the par yield curve. $^{12}$

# Haugen

Haugen<sup>13</sup> suggests the following function:

$$
\mathbf {y} (\mathbf {\theta}) = \mathbf {\theta} _ {0} + \left(\mathbf {\theta} _ {1} + \mathbf {\theta} _ {2}\right) \mathbf {e} ^ {- \mathbf {\theta}}
$$

# Arbitrary Function

Given that there is no theoretical foundation of any of the fitting methods, one can simply seek the function of the best fit. Hence, one can just use a polynomial function between yields and times to maturity.

$$
\mathbf {y} (\mathbf {\theta}) = \begin{array}{l l l l l} 0 & + & 1 & + & 2 \end{array} ^ {2} + \dots
$$

# 2.3.3 Using A Model

See the example Figure 2.3 which is a three-factor CIR model.

# 2.3.4 A Discussion

In this section, I demonstrate how to construct a yield curve. The example of the bootstrapping is a piece-wise flat spot curve. Although this is the standard method used by the industry (e.g. Bloomberg), it should be noted that it is not theoretically preferred. As indicated in Section 2.2.4, forward rates are di erentiation of the spot rates. Hence if the spot rate curve is non-continuous (and hence non-di erentiable), then the forward curve will not exist. As a result, it is more preferred that the forward curve to be piece-wise flat. Later in this chapter, we will see how bootstrapping is applied on the forward curve.

The purpose of having a function for the yield curve is that now discount factor can be computed at any time to maturity. In reality cash flows arrive throughout the calendar year. In order to discount any cash flow at any given time, we must know the discount factor at that time.

# 2.4 Three Hypotheses

# Pure Expectation Hypothesis

There is no uncertainty of interest rates. The shape of the yield curve is entirely determined by the expectations of future interest rates.

# Liquidity Preference

This hypothesis is proposed to explain upward sloping yield curve. It adds to the pure expectation hypothesis by including liquid premiums on longer term Treasury issues. It assumes that investors demand a higher yield for a longer term Treasury issue.

# Market Segmentation (Preferred Habitat)

Market segmentation or preferred habitat hypothesis argues that di erent bonds have di erent clienteles who demand di erent yields.

# Modern Theories

None of the above hypotheses assumes random interest rates. Interest rates move randomly. Furthermore, the more volatile interest rates move, the more curvature is the yield curve. As a result, modern interest rate theories now replace the traditional hypotheses to explain the yield curve.

One such theory is Cox-Ingersoll-Ross (1985) where interest rates that are driven by multiple economic factors move randomly. The shape of the yield curve is a function of the parameters of the model.

# 2.5 How Treasury Rates Change

As we have discussed, prices of Treasuries move around after issuance. So what cause the movements? Unlike stocks whose prices are moved in general by the fundamentals of the companies (disregarding noise trading), Treasury rates are U. S. government rates and hence the drivers must be related macroeconomic conditions of the nation.

Not only is it important to understand why Treasury rates move, but it is also important to know how di erently they move. That is, long term rates move very di erently from short term rates (and medium term rates too). Here we examine a few popular ones.

# 2.5.1 Roll Down E Ect

As time goes by, fixed income securities become closer and closer to maturity. As a result, assuming no new issues are introduced to the market, not only will the yield curve become shorter and shorter, the shape of the yield curve will change, even if nothing else changes.

This roll down e ect is very similar to the "time decay" (a.k.a. theta) in options whose prices will change over time even though the market is completely still. This is important in that such change in value must be considered when calculating the price change of a derivative security.

It is quite obvious to see that if there is absolutely no uncertainty, then today's forward curve will become tomorrow's yield curve. As a result, the difference between today's yields are their corresponding forward rates give the roll down e ect.

# 2.5.2 Curve Steepening/Flattening

According to Investopedia (for dummies):

"A flattening yield curve can indicate economic weakness as it signals that inflation and interest rates are expected to stay low for a while. Markets expect little economic growth, and the willingness of banks to lend is weak."
 and

"A steepening curve typically indicates stronger economic activity and rising inflation expectations, and thus, higher interest rates. When the yield curve is steep, banks are able to borrow money at lower interest rates and lend at higher interest rates. An example of a steepening yield curve can be seen in a 2-year note with a $1.5\%$ yield and a 20-year bond with a $3.5\%$ yield. If after a month, both Treasury yields increase to $1.55\%$ and $3.65\%$, respectively, the spread increases to 210 basis points, from 200 basis points."

# 2.5.3 Hump

"The humped yield curve does not happen very often, but it is an indication that some period of uncertainty or volatility may be expected in the economy. When the curve is bell-shaped, it reflects investor uncertainty about specific economic policies or conditions, or it may reflect a transition of the yield curve from a normal to inverted curve or from an inverted to normal curve. Although a humped yield curve is often an indicator of slowing economic growth, it should not be confused with an inverted yield curve. An inverted yield curve occurs when short-term rates are higher than long-term rates or, to put it another way, when long-term rates fall below short-term rates. An inverted yield curve indicates that investors expect the economy to slow or decline in the future, and this slower growth may lead to lower inflation and lower interest rates for all maturities."

A humped yield curve has important implications to those investors who speculate/arbitrage on the butterfly trading strategy. Here is Investopedia again:

"When short-term and long-term interest rates decrease by a greater degree than intermediate-term rates, a humped yield curve known as a negative butterfly results. The connotation of a butterfly is given because the intermediate maturity sector is likened to the body of the butterfly and the short maturity and long maturity sectors are viewed as the wings of the butterfly."

# 2.5.4 Inversion

"On rare occasions, the yield on short-term bonds is higher than the yield on long-term bonds. When this happens, the curve becomes inverted. An inverted yield curve indicates that investors will tolerate low rates now if they believe rates are going to fall even lower later on. So, investors expect lower inflation rates, and interest rates, in the future."

Given that this is not normal (and does not make sense), one should look out for substantial macroeconomic risks.

Take a look at this. On July 25,2019:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/4bd9ae576ee427c51a6d8c4c2701f6a9c7417b20ad072ad93c680bbc6e8d1825.jpg)

Figure 2.7: Swiss Yield Curve

# 2.6 Yield Curves Of Various Interest Rates

In Chapter 1, we discussed various interest rates. For any interest rate mentioned in Lesson 11I, there exists a yield curve to reflect how investors view the future dynamics and uncertainty of this interest rate. We give a few examples of how a yield curve is constructed.

# 2.6.1 Libor Curve

According to Wikipedia
(adapted) :

"The London Inter-bank O ered Rate is an interest-rate average calculated from estimates submitted by the leading banks in London. Each bank estimates what it would be charged were it to borrow from other banks. The resulting rate is usually abbreviated to LIBOR. It was formerly known as BBA LIBOR (British Bankers' Association) before the responsibility for the administration was transferred to Intercontinental Exchange. It is the primary benchmark, along with the Euribor, for short-term interest rates around the world."14

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/531e8909b257eee26dc82c57389183d0652a7a0771c4b8ad38dd87d77584d778.jpg)

Figure 2.8: LIBOR

These LBIOR rates are only up to a year (Figure 2.8). To complete the LIBOR curve, derivative contracts must be involved: Eurodollar futures and fixed-floating interest rate swaps. An example of the ED futures quotes is given in Figure 2.9. Only up to 4 years of ED futures will be selected. Beyond 4 years, industry use interest rate swaps (Figure 2.10).

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/07563a1a06dd4610a91c1cb71074d6048a2c89e7f0845a6c759f98a3bd557b6f.jpg)

Figure 2.9: EuroDollar Futures

ED futures prices are not forward prices. The former is the risk-neutral expectation of the bond price and the latter is the ratio of two bond prices. Hence to generate LIBOR curve, we must convert the futrues prices to forward prices. There are a number of different ways to do that. The easiest way is to do a simple convexity adjustment.

$$ for w a r d \text {r a t e} = f u t u r e s \text {r a t e} - \frac {1}{2} ^ {2} i j
$$ where $\mathbf{\tau}_{1} = \mathbf{T}_{\mathrm{i}} - \mathbf{t}$ and $\mathbf{\tau}_{2} = \mathbf{T}_{\mathrm{j}} - \mathbf{t}$ are times to maturity of the futures contract and and the underlying bond respectively. $^{15}$

In Chapter 9, we have the following futures rate equation (equation (9.19)):

$$ f u t u r e s \quad r a t e = 100 - Q F P \tag {2.10}
$$ where QFP is quoted futures price. Hence the forward rate can be computed as:

$$
\text {for w a r d r a t e} = \text {f u t u r e s r a t e} - \frac {1}{2} ^ {2} _ {i} 1 / 4
$$

Recall that the forward rate is:

$$
\left(t, T _ {i}, T _ {i} + 1 / 4\right) = \frac {1}{1 + \frac {\text {for w a r d r a t e}}{4}} \tag {2.11}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/8847f906e66f06c1248bbf64fb3e9f490457c06a85d40bd90f3cae844cba0a8e.jpg)

Figure 2.10: IRS Quotes
(Reuters) If we want to be really rigorous, we need to employ a pricing model (Vasicek, CIR, HJM, or LMM).

Lastly, we need to use swap rates to fulfill the LIBOR curve beyond 4 years (note that the fixed leg of a swap is semi-annual and floating leg is quarterly - see Chapter 1 for the conventions):

$$
\mathrm {N P V} = \quad_ {\mathrm {i} = 1} ^ {2 \mathrm {n}} \mathrm {P} (\mathrm {t}, \mathrm {T} _ {\mathrm {i}}) \frac {\mathrm {w} (\mathrm {t}, \mathrm {T} _ {2 \mathrm {n}})}{2} - \quad_ {\mathrm {j} = 1} ^ {4 \mathrm {m}} \mathrm {P} (\mathrm {t}, \mathrm {T} _ {\mathrm {j}}) \mathrm {f} (\mathrm {t}, \mathrm {T} _ {\mathrm {j} - 1}, \mathrm {T} _ {\mathrm {j}}) \quad \frac {\text {d a y s} (\mathrm {T} _ {\mathrm {j} - 1}, \mathrm {T} _ {\mathrm {j}})}{360} \tag {2.12}
$$ where $4\mathsf{m} = 2\mathsf{n}$, $w(\mathbf{t}, T_{2\mathsf{n}})$ is the fixed swap rate for maturity of $\mathsf{n}$ years, and $f(\mathbf{t}, T_{\mathbf{j}-1}, T_{\mathbf{j}})$ is the forward 3 month LIBOR rate for the payment period from $T_{\mathbf{j}-1}$ to $T_{\mathbf{j}}$. We solve for the discount factors
(recursively) by setting the NPV's for all of the swaps are set to zero to build the forward 3 month LIBOR curve.

Note that the above NPV is evaluated right on the coupon date of both legs. Otherwise, the equation will be very complex. This is because the daycount convention is Act/360 of the floating leg and is 30/360 for the fixed leg (see Chapter 1 for daycount conventions) and furthermore the fixed leg coupon frequency is semi-annually (mimicking Treasuries) and the floating leg coupons are paid quarterly (mimicking corporate floaters). For the details of interest rate swaps, see Chapter
5. Because the equation is evaluated on the coupon date of both legs, the fixed leg will have exactly every half year for its year fraction (again, see Chapter 1) while the floating leg will be the exact number of days
(Actual) divided by 360 days for the year.

<See Excel>

# Remark

It is understandable that LIBOR market
(interbanks) , Eurodollar futures market
(CME) , and swap market
(OTC) are quite di erent in may ways (market microstructure, participants, locations, regulations, etc.) and hence no one would expect their rates are consistent. As a result, when building a curve using prices from these di erent markets, it is expected that the curve will not be continuous. As a result of that, various smoothing techniques are used. There is no consensus to which smoothing method is best.

# 2.6.2 Ois Curve

Due to the LIBOR scandal, OIS (overnight index swap) rates have replaced LIBOR as the industry standard discount rates. The LIBOR scandal was a series of fraudulent actions connected to the Libor (London Inter-bank O ered Rate) and also the resulting investigation and reaction. LIBOR is an average interest rate calculated through submissions of interest rates by major banks across the world. The scandal arose when it was discovered that banks were falsely inflating or deflating their rates so as to profit from trades, or to give the impression that they were more creditworthy than they were. LIBOR underpins approximately $350 trillion in derivatives. It is currently administered by Intercontinental Exchange, which took over running the Libor in January
2014. The most liquid instruments that can be used to build OIS curve are Fed Fund Futures and OIS swaps that pay at the daily compounded Fed Fund rate. However, Fed Fund Futures are currently only liquid up to two years and OIS swaps up to ten years. Beyond ten years, the most liquid instruments are Fed Fund versus 3M LIBOR basis swaps, which are liquid up to thirty years.

The problem is that to price these basis swaps one needs both the OIS curve, to project the Fed Fund rate, and the LIBOR curve, to project the LIBOR rate. In the past one could have generated the LIBOR curve data separately, by using the single curve for both forward projection and discounting.[16]

$$
\mathbf {D} (t, T) = \exp \quad_ {t} ^ {T} r
(u) d u = \begin{array}{l} n - 1 \\ i = 0 \end{array} 1 + \frac {\mathbf {R} _ {i}}{360}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/faa3deb349fbfd54e347de881f11b9765fd75233137f94ccf8591662a3f98187.jpg)

Figure 2.11: OIS Curve where $R_i$ is the daily Fed Funds rate for day $i$, $n$ is the number of days, and $T - t = \frac{n}{days per year}$. Note that $D(t, T)$ is random.

The discount function is derived from market input quotes by setting the net present value
(NPV) of each swap to be equal to zero. For OIS with one cash flow, the fixed rate is swapped versus the compounding of the Fed Funds rate, and the NPV is calculated as follows.

$$
\mathbf {N P V} = \mathbf {D} (t, T) w (t, T) \frac {\text {d a y s t i l l} T}{360} - \frac {1}{\mathbf {D} (t, T)} \quad \begin{array}{l} n - 1 \\ i = 0 \end{array} \quad 1 + \frac {\mathbf {R} _ {i}}{360} - 1
$$

$$
0 = \frac {1}{D (t, T)} w (t, T) \frac {\text {d a y s t i l l} T}{360} + 1 - \frac {1}{D (t, T)}
$$

$$
D (t, T) = \frac {1}{w (t, T) \frac {\text {d a y s t i l l} T}{360} + 1}
$$ where $w(t, T)$ is the fixed swap rate for maturity $T$. By setting the NPV $= 0$, one can solve for the discount function for maturity $T$.

# 2.6.3 Credit Curve

A credit curve is a term structure of credit spreads over a benchmark risk-free curve (which could be U. S. Treasuries, LIBOR, or OIS). Either Treasury yield curve, LIBOR yield curve, or OIS yield curve is like a "government" yield curve. The issuer represents the government. Hence ideally, we would like to have a yield curve of a company (which is an issuer). However, no company can issue enough bonds to complete a meaningful yield curve.

However, corporate bonds are complex (many covenants and optionalities). Hence, the price-yield relationship is not clear, which impacts the clarity of the yield curve.

There are two important risk aspects of a corporation's credit risk. The first is its business nature. The credit risk from di erent natures of business (e.g. high tech versus retail, manufacturing versus financial) cannot be fairly compared. Another is credit rating. Companies in di erent rating groups are also viewed as di erent types of companies. As a result, most media report "cohort curves" which is a sector-rating yield curve.

The yield curve construction method is complex and lack of consensus. An example is given below (as a muni-AAA (sector-rating) curve):

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/4ea5edaae9bd98b23633ef75802e139fb0d4910c9bd2479a6bd3b10b25d90b8b.jpg)

Figure 2.12: Muni AAA Curve

# 2.6.4 Fx Curve

Forward FX trades are very popular not only for speculators and arbitrageurs who seek trading profits but also for international corporations that would like to stabilize their revenues and costs. Corporations engage in FX forwards to lock in desired FX rates in the future.

FX forwards are a very liquid market (unlike other assets that are more actively traded in futures markets, which are centralized exchanges). As a result, it is quite straightforward to build a forward for a currency.

A sample is given below Figure 2.13.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/944feba61c3cb00a59190ef244d2e2d2329b9a8c507939e1389de248e841c248.jpg)

Figure 2.13: FX Forward Quotes

# 2.6.5 Inflation Curve

Inflation curves are important for the government to monitor their monetary policies. As well-known, high expected inflation (which usually is accompanied by prosperity) urges the Central Bank to raise interest rates and reversely during recession (low inflation) the Central Bank tends to lower interest rates.

While we observe current inflation levels, expected inflation must be estimated. Historically, expected inflation is conducted via surveys (of prominent macroeconomists), until U. S. Treasury TIPS came along.

They were first auctioned in January 1997 after the market expressed a strong interest in the inflation-indexed asset class. In 2009,20-year TIPS were discontinued in favor of 30-year TIPS. Treasury now offers 5-year, 10-year, and 30-year TIPS.[17]

Given that the coupons of TIPS are inflation protected (i.e. inflation-indexed), the prices of TIPS reflect how the market views the expected inflation.

Coupons paid on TIPS are inflation-indexed (CPI, consumer price index). Let I(t) be the CPI index at time t and $c_0$ is the contractual coupon rate (and the face value is assumed to be $1).

$$
\begin{array}{l} \begin{array}{l l} \mathsf {T I P S} (\mathsf {t}, \underline {{\mathsf {T}}}; \mathsf {c} _ {0}) = & \mathsf {\Pi} _ {\mathsf {i} = 1} ^ {\mathsf {n}} \mathsf {c} _ {\mathsf {i}} \mathsf {P} (\mathsf {t}, \mathsf {T} _ {\mathsf {i}}) + \mathsf {c} _ {\mathsf {n}} \mathsf {P} (\mathsf {t}, \mathsf {T} _ {\mathsf {n}}) \end{array} \\ = \underset {i = 1} {\overset {n} {\operatorname {c}}} c _ {0} \frac {\mathbf {I} \left(\mathrm {T} _ {\mathrm {i}}\right)}{\mathbf {I} (\mathrm {t})} \mathbf {P} \left(\mathrm {t}, \mathrm {T} _ {\mathrm {i}}\right) + \underset {\mathbf {I} (\mathrm {t})} {\overset {\mathbf {I} \left(\mathrm {T} _ {\mathrm {n}}\right)} {\operatorname {P}}} \mathbf {P} \left(\mathrm {t}, \mathrm {T} _ {\mathrm {n}}\right) \\ = \quad_ {i = 1} ^ {n} c _ {0} P _ {\text {r e a l}} (t, T _ {i}) + P _ {\text {r e a l}} (t, T _ {n}) \\ \end{array}
$$ where $\mathbf{P}_{\mathrm{real}}$ is under the real economy. Note that:

$$
\begin{array}{l} \frac {- 1}{T _ {i} - t} \ln P _ {\text {r e a l}} (t, T _ {i}) = \left\{- \left(\ln I \left(T _ {i}\right) - \ln I
(t) \right) - \ln P (t, T _ {i}) \right\} \frac {1}{T _ {i} - t} \\ \left(\mathbf {t}, \mathbf {T} _ {\mathbf {i}}\right) = \mathbf {y} _ {\mathbf {t}, \mathbf {T} _ {\mathbf {i}}} - \mathbf {y} _ {\mathbf {t}, \mathbf {T} _ {\mathbf {i}}} ^ {\text {r e a l}} \\ \end{array}
$$ indicating that expected inflation () is the difference between nominal and real yields. This is the usual common sense that nominal rate is equal to real rate plus inflation.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/909eacb0fb1e8641a1ac7bdcb9e233de29687924654b898a217270f4fbfd2dcb.jpg)

Figure 2.14: Real Rates Time Series (Chen, Cheng, and Liu)

# 2.7 Libor Floater

Floaters, or floating rate bonds, pay floating coupons that are indexed to some benchmark interest rate, say the 3 month LIBOR. Floating rate bonds are popular for corporations to fund their operations. Like fixed rate bonds, floaters are always priced at par at inception. The company (or the underwriter, usually an investment bank) will set the spread so that the price of the floater is at par. The spread is then called LIBOR spread. Usually the index is the 3-month LIBOR. A timeline of LIBOR is given below:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/f8773f7cdf27a8f320dd04c24746befdac00a0780a09a3ef1ccd5bafedf8392d.jpg)

Figure 2.15: LIBOR Timeline

A risk free floater is a floater whose spread is
0. That is, such a floater pays the benchmark interest rate. For such a floater, the value is always at par at coupon dates. In between coupon dates, the value can deviate slightly from par but it must converge to par when it approaches the coupon date.

$$
P = \frac {L _ {1}}{\left(1 + L _ {1}\right)} + \frac {L _ {2}}{\left(1 + L _ {1}\right) \left(1 + L _ {2}\right)} + \dots + \frac {L _ {n - 1}}{i = 1} \left(1 + L _ {i}\right) + \frac {1 + L _ {n}}{i = 1} \left(1 + L _ {i}\right) \tag {2.13}
$$ where L is the LIBOR that is changing over time. Note that this equation always leads to $1, because:

$$
\frac {1 + \mathsf {L} _ {\mathsf {n}}}{(1 + \mathsf {L} _ {1}) (1 + \mathsf {L} _ {2}) \cdots (1 + \mathsf {L} _ {\mathsf {n}})} = \frac {1}{(1 + \mathsf {L} _ {1}) (1 + \mathsf {L} _ {2}) \cdots (1 + \mathsf {L} _ {\mathsf {n - 1}})}
$$ which combines with the coupon in the previous period $L_{n-1}$ to become:

$$
\frac {1 + \mathsf {L} _ {\mathsf {n} - 1}}{(1 + \mathsf {L} _ {1}) (1 + \mathsf {L} _ {2}) \cdots (1 + \mathsf {L} _ {\mathsf {n} - 1})}
$$ which is exactly parallel to the result of n coupons. Repeating this process we obtain the following result for the risk free floater:

$$
P = \frac {1 + L _ {1}}{(1 + L _ {1})} = 1
$$

As a result, we can see that no matter how many coupons to be paid by the floater, its value is always equal to 1 plus the next coupon discounted by the LIBOR. Hence, the risk free floater is always priced at par at coupon dates. In between coupon dates, the discounting is not perfect. The cash flow is still $1 + \mathsf{L}_1$ and yet the discounting is not a full period. For example, if we purchase the floater in exactly the middle of the period, then we could compute the value as:

$$
\mathbf {P} = \frac {1 + \mathsf {L} _ {1}}{1 + 1 / 2 \mathsf {L} _ {1}} > 1
$$

While the value is no longer par, it is still very close to par. For example, if the LIBOR is $3\%$, then the above value is $1.014.

It is easy to tell that the maximum of the above value is $1 + \mathsf{L}_1$. This happens immediately before the coupon is paid. At $3\%$ LIBOR, the value is $1.03.

Because the value of the risk free floater does not fluctuate more than its coupon rate, it has a very small sensitivity to the interest rate. Hence, it has very short duration. It is easy to compute the Fisher-Well duration to be just the length of the coupon period.

A corporate floater varies slightly. A corporate floater has a spread at inception due to its default probability. The larger is the default probability, the larger is the spread.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/7b7ddc262228672c9b3d36ad744e57be9d8dd999e676f006718b9051a03bc2f6.jpg)

Figure 2.16: LIBOR Spread Timeline

The equation is $(\mathsf{P}_0$ is used to present the time of issuance 0 and reflect that the spread to be $s_0$ ):

$$
\mathbf {P} _ {0} = \frac {\mathbf {L} _ {1} + \mathbf {s} _ {0}}{\left(1 + \mathbf {L} _ {1} + \mathbf {s} _ {0}\right)} + \frac {\mathbf {L} _ {2} + \mathbf {s} _ {0}}{\left(1 + \mathbf {L} _ {1} + \mathbf {s} _ {0}\right) \left(1 + \mathbf {L} _ {2} + \mathbf {s} _ {0}\right)} + \dots + \frac {1 + \mathbf {L} _ {\mathrm {n}} + \mathbf {s} _ {0}}{\underset {\mathrm {i} = 1} {\mathrm {n}} \left(1 + \mathbf {L} _ {\mathrm {i}} + \mathbf {s} _ {0}\right)} \\ = 1 \tag {2.14}
$$ where $s_0$ is the initial spread. By the same math, we can show that the value is $1. As times goes by the default risk of the firm may change and hence the spread at time 1 is different from the initial spread. The price at time 1 will not be par if the spread has changed.

$$
\begin{array}{l} P _ {1} = \frac {L _ {2} + s _ {0}}{\left(1 + L _ {2} + s _ {1}\right)} + \dots + \frac {1 + L _ {n} + s _ {0}}{n _ {i = 2} \left(1 + L _ {i} + s _ {0}\right)} \\ = 1 \\ \end{array}
$$

Note that now the numerator and the denominator have di erent spreads and they will not cancel each other. Hence the value will not be par. Should the spread remain the same (i.e. $s_1 = s_0$ ), the bond price would still be at par.

This demonstrates that even on the coupon dates, the value of a corporate floater will not be priced at par. If the value cannot be at par on coupon dates, it will deviate from par even more in between coupon dates. Hence, corporate floaters have much more interest rate risk
(duration) than the risk free floater.

Another way to look at it is that a corporate floater is actually a mixture of fixed rate bond (fixed initial spread as part of the coupon) and floating rate bond (LIBOR coupon). The floating portion has no interest rate risk but the fixed portion does. The larger is the fixed rate portion, i.e. spread, the larger is the duration.

In many high yield bonds where the spreads can be quite comparable to (or even larger than) the LIBOR, the duration can be quite long.

# Remark

Note that corporate floaters pay semi-annual coupons and swaps have a quarterly floating leg. The formula needs to be adjusted accordingly (i.e. $L_{i} / m$ ) and the number of coupons/periods is $m \times n$.

# 2.8 Volatility And Volatility Term Structure

Volatility is important in pricing options. As a result, in addition to the term structure of interest rates that depict the level of interest rates, we must also concern the volatility of various interest rates.

Many models assume a constant volatility value, or flat volatility curve. Yet reality suggests that the volatility curve is non-flat. For interest rates, it is particularly not so. By construction, interest rate volatility curve is non-flat, as we shall see in the section.

# 2.8.1 Volatility Smile And Volatility Term Structure In Equities

Volatility is defined as the standard deviation of the log price. In equity, volatility is defined as $\overline{\mathbb{V}_t(\ln S_T) / (T - t)}$ where $t$ is current time and $T$ is maturity time of the option. In the Black-Scholes model, this quantity is assumed to be constant, However, empirically, a overwhelming body of evidence suggests that this is not true.

First, the literature has documented that stock returns are fat-tailed. That is, the possibility of extreme large profits and losses are more likely than what normality suggests. This causes the option prices for deep-in and deep-out-of the money to be underpriced by the Black-Scholes model. In other words, The Black-Scholes price is less than the market price using the same volatility as the at-the-money. As a result, we must Jag up the volatility for in and out-of money options to match the market prices, causing a volatility smile.[18] See Figure 2.17 below.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/8f37e8e3cc7ee6700cbb67c5491a77e71a3afa9a75bc539e756d43ff445684f8.jpg)

Figure 2.17: Volatility Smile/Skew

Another empirical fact is that volatility is not constant over time. Figure 2.18 shows how volatile S&P 500 index is over time. Individual stocks are even more volati

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/55faace6e4bcca6a792094f433794a8ea0d7600e091c34ad69b15ec4da692b0d.jpg)

Figure 2.18: S&P Volatility

In the Black-Scholes, the volatility that enters into the option formula is:

$$
^ {2} (T - t) = \begin{array}{c c} T & ^ {2}
(u) d u = \\ t & t \end{array} ^ {T} ^ {2} d u
$$

If the volatility
(u) is not constant (or even random) as the data suggest, then the result of the Black-Scholes will fail terribly. Then,

$$
\frac {1}{T - t} ^ {T} _ {t} ^ {2}
(u) d u
$$ will demonstrate a curve (as a function of $T$ ).

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/3e1702ad1f1b832223abc2f732c7daedc931c9ab9578ddaf79b90314355c9163.jpg)

Figure 2.19: S&P Volatility Term Strucure

Note that the volatility term structure is downward sloping empirically. This is partially known as the put option puzzle.[19] What it says is that short term put options are unreasonably expensive (calls as well). There are several explanations of such a phenomenon:

- bid-ask spread

Since out-of-money options are low in price, same bid-ask spreads will account for more price biases than more at or in-the-money options.

- hedge

Put options are common hedges (to prevent large losses). Since they are in high demand, their prices are unreasonably high.

Combining volatility smile and term structure, practitioners watch over the entire volatility surface:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/4290e209ff1c6542f6fe4e59dc717194e43a97b375b519e481eef9c83bddba0f.jpg)

Figure 2.20: S&P Volatility Surface

# 2.8.2 Volatility Surface In Fixed Income

Similarly, here the volatility is the standard deviation of the long bond price

$$
\begin{array}{c} \hline \mathbb {V} \frac {\text {I n P (T, s)}}{\text {s - T}} \end{array}
$$

But since log bond price is yield - $\ln P(T, s) / (s - T) = y_{T, s}$ shown above, the volatility of log bond price is equivalent to the volatility of the yield

$$
\overline {{\mathbb {V} (\mathbf {y} _ {\mathbf {T}, \mathbf {s}})}}
$$

Note that at any future time $T$, the yield till $s$ is the same as the spot rate. Hence, the volatility computed here is also known as the "rate volatility" or "rate vol".

Given that the future time $T$ and the time to maturity $s^TT$ are arbitrary, there are a whole matrix of volatilities to specify, known as the volatility cube, as the diagram below depicts.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/f8251bdcad974a0aae9798af3807db9b393f998e2be71ff1aa3a6b60b531908b.jpg)

Figure 2.21: Interest Rate Volatility Cube

In the above diagram, some models take "yield vols" as inputs. Yield vols are volatilities of all the yields one period (could be one month or one week) from now. In the above table, this would be the first column of the table. Note that in continuous time, $y_{T, S_2} = y_{T, S_1} + f_{T, S_1, S_2}$. As a result, we can write any yield vol as:

$$
\mathbb {V} \left[ \mathbf {y} _ {\mathrm {T}, \mathrm {s} _ {2}} \right] = \mathbb {V} \left[ \mathbf {y} _ {\mathrm {T}, \mathrm {s} _ {1}} \right] + \mathbb {V} \left[ \mathbf {f} _ {\mathrm {T}, \mathrm {s} _ {1}, \mathrm {s} _ {2}} \right] + 2 \mathbb {K} \left[ \mathbf {y} _ {\mathrm {T}, \mathrm {s} _ {1}}, \mathbf {f} _ {\mathrm {T}, \mathrm {s} _ {1}, \mathrm {s} _ {2}} \right]
$$ and this is the relationship between two rate vols, forward vol, and the covariance between the two. To link the rate volatility to the yield volatility, we need an interest rate model. The following is the market of swaptions:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/ac78aeb956d1df095afba89a18d701130e0fbfbc1573359dd514af18f8e4cb1f.jpg)

Figure 2.22: Swaption Quotes

# 2.8.3 Shape Restriction

Fixed income securities have maturity dates. Near the maturity date the volatility must be small as the value of the security should be very close to the face value. However, the farther into the future, the volatility should be larger. As a result, the volatility curve for the diagonal (lower left to upper right) of the above table (given maturity times but changing T) must present a humped shape as follows:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/2b053e04026e36e5f87abd48b731325e3f9abf87817102b31d631da771efcd09.jpg)

Figure 2.23: Volatility

On each column of the above table, the general shape is downward sloping as empirically long term yields tend to fluctuate less than the short term yields.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/36442769c570ac5775df6b0b7a0a71e0a5e7c68ad2684df6f56318e5051b6788.jpg)

Figure 2.24: Volatility

As Figure 2.22 shows, the market quotes in terms of volatility, more specifically the Black volatility. Hence we must know how to compute the Black volatility:

$$
C = P (t, T) \left[ w (t, T, s) N (d _ {+}) - w _ {K} N (d _ {-}) \right]
$$ where

$$
\mathbf {d} _ {\pm} = \frac {\ln w (t, T, s) - \ln w _ {K}}{v (t, T, s)} \pm \frac {1}{2} v (t, T, s) ^ {2}
$$ and $\mathbf{P}(t, T)$ is the discount factor, $w(t)$ is the current swap rate, $w_{K}$ is the strike price, $T$ is the option maturity, $s$ is the maturity of the swap contract, and $v(t, T, s)$ is the volatility of the swap rate.

# 2.8.4 Sources Of Volatility

From option prices, we can back out the volatilities.

# Us Treasuries

Available options on US Treasuries are options various interest rates and T bond futures options. Options on various Treasury interest rates (13-week, 5-year, 10-year, and 30-year) $^{20}$ are cash settled contracts but these contracts are not liquid. On the other hand, options on T bond futures are very liquid. However they contain complex delivery options (details are discussed in Chapter 9) and futures themselves are already derivatives. Hence T bond futures options are derivatives on derivatives.

There are not enough options to construct a volatility surface for Treasuries, as shown in Figure 10.5.

# Libor

However, the LIBOR market has a large number of options written on swaps (a.k.a. swaptions) which have the described structure by Figure 2.22. Hence, swaptions can provide a complete volatility surface for underlying LIBOR.

Actually, besides swaptions, caps and floors and Eurodollar futures options are also LIBOR based options that can provide volatility information. In reality, these volatility numbers are often inconsistent with those from swaptions. While there seems to be arbitrage opportunities, we need to note that there is a liquidity difference (swaptions and caps/floors are traded on over-the-counter and Eurodollar futures options are traded on the exchanges (CME and LIFFE).)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/b7e2e061dba618bf77428da22ab39d9cae98f44d7e2c081e6f38e2705410bd06.jpg)

Figure 2.25: Swap

Figures 2.25 and 2.26 are Bloomberg screen shots of swap cash flows and swaption volatilities respectively. These volatility numbers are known as the Black vol.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/15bd99d8b196c0134cfb048dd2f0c12743e3306f33d2090f72a802f343a1b0a6.jpg)

Figure 2.26: Swaption Volatilities

# Fx

FX forward curve is demonstrated in Figure 2.13. FX options are quoted quite differently from those of Treasuries or LIBOR. They are not quoted by strikes but by deltas. Also they are not quoted by a single option, but by a portfolio of options. The typical quotes of FX options are:

- RR (risk reversal): x Delta Call - x Delta Put
- BF
(butterfly) : (x Delta Call + x Delta Put ) ÷ 2 - ATM

# Over

10 delta
25 delta
ATM (50 delta)
75 delta
90 delta

The quotes are in Black volatility and one must translate the quotes to prices in order trade.

We will discuss the details of FX market in Chapter 6.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/589b5324bcef7a9482b24b1b6a5e8763c22bcd023634e80db75360fdf14f36c2.jpg)

Figure 2.27: FX Option Quotes

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/4c07c54987f0957ac34a8c19e8887b3c8ad0c20c8684c78285e49d28369d460a.jpg)

Figure 2.28: FX Volatility Curve

# Lognormal Vol (Black Vol) Vs. Normal Vol (Basis Point Vol)

Theoretically speaking, volatility is a result of a chosen model. Identically speaking, we match an option pricing model with the market price and solve for the volatility input as the implied volatility. To obtain a lognormal vol, the model must assume lognormality of the underlying asset. Similarly, to obtain a normal vol, the model must assume normality of the underlying asset, which is quite different from a lognormal model.

However, a short cut can be obtained via a stochastic process formula:[21]

$$
\begin{array}{l} \mathrm {d} V = \mu_ {\mathrm {L N}} V \mathrm {d} t + \mu_ {\mathrm {L N}} V \mathrm {d} W \tag {2.15} \\ = \mu_ {N} d t + _ {N} d W \\ \end{array}
$$ where $W$ is a Brownian motion and $dW$ is understood as a normal random variable with mean 0 and variance $$d_{t}$$.<sup>22</sup>

As a result, if one believes that $\mathbf{\Omega}_{\mathsf{LN}}$ is constant, then the asset $\mathbf{V}$ follows a lognormal distribution and $\mathbf{\Omega}_{\mathsf{LN}}$ is the volatility (as lognormal vol). On the other hand, if one believes that $\mathbf{\Omega}_{\mathsf{N}}$ is constant (and hence $\mathbf{\Omega}_{\mathsf{LN}}$ is not) then the asset $\mathbf{V}$ follows a normal distribution and $\mathbf{\Omega}_{\mathsf{N}}$ is the volatility (as normal or bp vol).

It is an empirical observation that when $V$ is close to 0, then normal vol is more reasonable. If $V$ is high, then lognormal vol is more reasonable. The two can be related via equation (2.15):

$$
\begin{array}{r l} \mathbf {L N V} & = \mathbf {\Lambda} _ {\mathbf {N}} \end{array}
$$

For example, a swaption option has a 0.5 lognormal volatility and the swap rate is $2.5\%$. Then its normal
(bp) vol is $1.25\%$.

# Chapter 3

# Duration And Convexity

# 3.1 Introduction

Duration and convexity are very close to delta and gamma in option. It is first and second order derivatives of the bond price (or any fixed income security) with respect to a specific interest rate (or a collection of interest rates). Depending on which interest rate(s) chosen, we have di erent durations and convexities. This lesson introduces various duration and convexity calculations and how to use them. Finally, we shall talk about a very simple idea of immunization.

Recall equation (1.2) in Chapter 1 which will be used in our first part of the chapter as a demonstration. In that equation, the discount periods are integers. There is no yearfraction which is the reality when we compute the duration and convexity of an actual case.

# 3.1.1 Taylor'S Series Expansion

In the universe of fixed income, participants believe that the price of a fixed income security (bond, swap,...) is a function of the yield curve. Hence, the change in the price is then a result of the rate change. Taylor's series expansion then provides a nice tool to analyze how the changes of various interest rates affect the price of the fixed income security.

Let $P$ (later, time indices will be added for accuracy) be the price of a fixed income security and $y_{i}$ be the $i$ -th interest rate on the yield curve that a sells the price. Then Taylor's series expansion gives:

$$
\mathrm {d} \mathbf {P} \left(\mathbf {y} _ {1}, \mathbf {y} _ {2}, \dots \mathbf {y} _ {n}, t\right) = \frac {\mathbf {P}}{t} d t + \quad \begin{array}{l} n \\ j = 1 \end{array} \frac {\mathbf {P}}{\mathbf {y} _ {j}} d \mathbf {y} _ {j} + \frac {1}{2} \quad \begin{array}{l} n \\ i = 1 \end{array} \quad \begin{array}{l} n \\ j = 1 \end{array} \frac {{} ^ {2} \mathbf {P}}{\mathbf {y} _ {i} \mathbf {y} _ {j}} d \mathbf {y} _ {i} d \mathbf {y} _ {j} + o (d t) \tag {3.1}
$$ where $o($d_{t}$)$ includes terms that are small and $\lim_{$d_{t}$ \to 0} \frac{o($d_{t}$)}{$d_{t}$} = 0$. The first term is similar to Theta in option and known as "roll-down" on the yield curve. As time goes by, the life of a fixed income security becomes shorter. If nothing else in the economy changes (hence, the yield curve stays exactly the same), the yield will become less (in an upward sloping situation). The second term is duration with respect to various interest rates, and the third is convexity with respect to various interest rates.

# 3.2 Duration

We return to equation (1.2) where no yearfraction is considered. We first use the case of annual coupons to demonstrate and then use both annual and semi-annual coupons in the numerical examples.

# 3.2.1 Macaulay Duration

MaCaulay duration is to treat the bond as a function of only its own yield. And more importantly it is computed o the clean price and assume the next coupon date. In other words, there is no yearfraction in the MaCaulay duration calculation. As a result, the MaCaulay duration is not an accurate measure of interest rate risk. However, the MaCaulay duration does have some insight and interesting interpretations and hence remains quite popular.

Recall equation (1.2) in Chapter
1. We first assume a coupon bond that pays annual coupons (where we can best see the intuition):

$$
\begin{array}{r l r} \mathbf {P} = & \underset {\mathrm {i} = 1} {\text {n}} \frac {\mathbf {c} _ {\mathrm {i}}}{(1 + \mathbf {y}) ^ {\mathrm {i}}} \\ & \quad \text {o r} \end{array}
$$

$$
P = \underset {i = 1} {\overset {n} {\operatorname {i = 1}}} \frac {c}{(1 + y) ^ {i}} + \frac {1}{(1 + y) ^ {n}}
$$

The MaCaulay duration is defined as the interest rate sensitivity but scaled by the price and yield, as follows:

$$
D _ {\text {M a C a u l a y}} = - \frac {P}{y} \frac {1 + y}{P} \tag {3.2}
$$ which can be shown as:

$$
\begin{array}{l} \frac {\mathrm {P}}{\mathrm {y}} \frac {1 + \mathrm {y}}{\mathrm {P}} = \frac {1}{\mathrm {P}} \quad \begin{array}{l} n \\ i = 1 \end{array} \mathrm {i} \frac {\mathrm {c} _ {\mathrm {i}}}{(1 + \mathrm {y}) ^ {\mathrm {i}}} \tag {3.3} \\ = \begin{array}{c} n \\ i = 1 \end{array} i \times w _ {i} \\ \end{array}
$$

Equation (3.3) is very intuitive and has nice interpretations:

1. interest rate elasticity

$$
    - \frac {\mathrm {d} P}{\mathrm {d} y} \frac {1 + y}{P} = - \frac {\mathrm {d} P / P}{\mathrm {d} (1 + y) / 1 + y} = - \frac {\%}{\%} \text {in} P
$$

2. weighted average of coupon payment times

$$
\begin{array}{c} \mathbf {n} \\ \mathbf {i} = 1 \end{array} \mathbf {i} \times \mathbf {w} _ {\mathbf {i}}
$$ where $\mathbf{\Pi}_{i=1}^{n} w_{i} = 1$. Because of this interpretation, the MaCaulay duration can be regarded as the payback method popular in capital budgeting.

3. mass center

In physics, MaCaulay has an interpretation of "mass center":

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/267b0ad2092927b83db4099554136499df1cfc74499e5328b37d80aca0b635c3.jpg)

Figure 3.1: Duration is the mass center

Recall in the previous chapter, and in most text books, we use integer periods to simplify the calculation:
 annual coupons:

$$
P = \frac {c}{(1 + y)} + \frac {c}{(1 + y) ^ {2}} + \dots + \frac {1 + c}{(1 + y) ^ {n}} N \tag {3.4}
$$
    - semi-annual coupons:

$$
P = \frac {c / 2}{(1 + y / 2)} + \frac {c / 2}{(1 + y / 2) ^ {2}} + \dots + \frac {1 + c / 2}{(1 + y / 2) ^ {2 n}} N \tag {3.5}
$$
    - any arbitrary frequency:

$$
P = \frac {c / m}{(1 + y / m)} + \frac {c / m}{(1 + y / m) ^ {2}} + \dots + \frac {1 + c / m}{(1 + y / m) ^ {m n}} N \tag {3.6}
$$

The MaCaulay duration in the general case:

$$
\mathrm {D} _ {\text {M a C a u l a y}} = \frac {1}{m} \frac {1}{P} \sum_ {i = 1} ^ {m n} i \frac {c / m}{(1 + y / m) ^ {i}} + m n \frac {1}{(1 + y) ^ {m n}} N \tag {3.7}
$$

# Modified Macaulay Duration

The modified MaCaulay duration is simply to multiply the MaCaulay duration by $1 + y$.

$$
\mathbf {D} _ {\text {m o d}} = \mathbf {D} _ {\text {M a C a u l a y}} \times (1 + \mathbf {y}) \tag {3.8}
$$

# Example

Assume a $8\%$, 10-year, face = $100,000 coupon bond and its current price = $105,000.

If the coupons are paid annually, then we solve the following equation for the yield (e.g. Excel Solver to solve for the yield so that the price which at the bottom of Table?? is equal to $105,000):

$$
1.05 = \quad_ {i = 1} ^ {1 0} \frac {0.08}{(1 + y) ^ {i}} + \frac {1.08}{(1 + y) ^ {1 0}}
$$ and the answer is $y = 7.2789\%$.

The duration under annual coupons is to apply equation (3.7) and set $m = 1$. A convenient tabulated form is given in Table??. The discount factor in the Table is

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|}
\hline i & payment & disc fact & PV & PV × i \\ \hline
1 & $8,000 & 0.93215 & $7,457.20 & $7,457.20 \\ \hline
2 & $8,000 & 0.868903 & $6,951.22 & $13,902.45 \\ \hline
3 & $8,000 & 0.809948 & $6,479.58 & $19,438.75 \\ \hline
4 & $8,000 & 0.754993 & $6,039.94 & $24,159.76 \\ \hline
5 & $8,000 & 0.703766 & $5,630.13 & $28,150.64 \\ \hline
6 & $8,000 & 0.656015 & $5,248.12 & $31,488.73 \\ \hline
7 & $8,000 & 0.611504 & $4,892.04 & $34,244.25 \\ \hline
8 & $8,000 & 0.570014 & $4,560.11 & $36,480.88 \\ \hline
9 & $8,000 & 0.531338 & $4,250.70 & $38,256.34 \\ \hline
10 & $108,000 & 0.495287 & $53,490.96 & $534,909.56 \\ \hline
 & & sum: & $105,000.00 & $768,488.55 \\ \hline
\end{tabular}
\end{document}
```

Table 3.1: Duration: Annual Coupons annual: $(1 + 0.072789)^{\mathrm{i}}$. PV is just coupon amount multiplied by the corresponding discount factor. The last column is PV multiplied by the first column t.

The MaCaulay duration is simply the sum of $\mathbf{PV} \times t$ and divided by the current price of the bond:

$$
$ 768,488.55 \div $ 105,000.00 = 7.32 (\text {y e a r s})
$$

This tabulation method is quite popular as it lays out all the details and very e cient to be used in Excel.

If the coupons are paid semi-annually, then we solve the following equation for the yield (e.g. Excel Solver):

$$
1.05 = \quad_ {i = 1} ^ {1 0} \frac {0.04}{(1 + y / 2) ^ {i}} + \frac {1.04}{(1 + y / 2) ^ {2 0}}
$$ and the answer is $y = 7.2872\%$.

The duration under semi-annual coupons is to apply equation (3.7) and set $\mathfrak{m} = 2$. A convenient tabulated form is given in Table??

Again, the MaCaulay duration is simply the sum of $\mathbf{PV} \times t$ and divided by the current price of the bond:

$$
$ 1,500,666.81 \div $ 105,000.00 = 14.2921 (\text {h a l f - y e a r s})
$$ which is equal to 7.15 years.

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|}
\hline t & payment & disc fact & PV & PV × t \\ \hline
1 & $4,000 & 0.964845 & $3,859.38 & $3,859.38 \\ \hline
2 & $4,000 & 0.930926 & $3,723.70 & $7,447.40 \\ \hline
3 & $4,000 & 0.898199 & $3,592.79 & $10,778.38 \\ \hline
4 & $4,000 & 0.866622 & $3,466.49 & $13,865.96 \\ \hline: &: &: &: &: \\ \hline
16 & $4,000 & 0.564053 & $2,256.21 & $36,099.37 \\ \hline
17 & $4,000 & 0.544223 & $2,176.89 & $37,007.18 \\ \hline
18 & $4,000 & 0.525091 & $2,100.36 & $37,806.55 \\ \hline
19 & $4,000 & 0.506631 & $2,026.53 & $38,503.98 \\ \hline
20 & $104,000 & 0.488821 & $50,837.35 & $1,016,747.00 \\ \hline
 & & & $105,000.00 & $1,500,666.81 \\ \hline
\end{tabular}
\end{document}
```

Table 3.2: Duration: Semi-annual Coupons

The reader can easily practice other popular frequencies: $\mathfrak{m} = 4$ (quarterly for swaps) and $\mathfrak{m} = 12$ (monthly for mortgage-backed securities). As we see, more frequent discounting shortens the duration because of the higher yield.

# Price-Yield Plot

It is very common and useful to understand the price-yield relationship which is depicted in Figure 3.2 (which uses annual coupons). Duration is roughly represented by the slope of this convex function. As we can see, as the discount rate goes up, the slope goes down and consequently the duration goes down
(shorter) .

Using the same yield (y = 7.2789%) but lower the coupon to 10%, we can compute the bond price to be $118,867.83 (using the same yield) and now its duration is 7.04 years which is shorter than the duration under 8%. Hence, we can conclude that when the yield is higher or the coupon is higher, the duration is shorter.

This gives an interesting case for zero-coupon bonds. As the coupon is zero, a zero-coupon bond must have very long duration. As it turns out, the time to maturity of a zero-coupon bond is its duration. As a bond starts paying coupons, its duration shortens (hence higher the coupon, shorter is the duration). This coincides with the payback intuition discussed earlier. If a bond does not pay coupons, then it pays back its investors at the maturity and hence the payback time is time to maturity and so is its duration. Once the bond starts to pay coupons, its duration shortens and so is its payback time (investors get their investment back sooner).

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/7501dab5a35133754867bacb66afe50371f124e33d47eb4b2dcd0a336968b26b.jpg)

Figure 3.2: Price-Yield Relationship (Semi-annual Coupons)

# Alternative Method

Despite that the tabulation method is quite insightful and easy to set up, it can take a very large space in Excel if the bond has many coupons. This is the case in, for example, mortgage-backed securities whose coupons are monthly and a typical mortgage is 30 years long (hence 360 months). As a result, it might be more convenient to use an alternative method which is numerical derivatives.

From equation (3.2), we know that the MaCaulay duration is:

$$
\begin{array}{l} D _ {M a C a u l a y} = - \frac {P}{y} \frac {1 + y}{P} \\ \begin{array}{c} \mathbf {P} (\mathbf {y}) - \mathbf {P} (\mathbf {y} ^ {+}) \\ \hline \mathbf {y} ^ {+} - \mathbf {y} \end{array} \begin{array}{c} 1 + \mathbf {y} \\ \hline \mathbf {P} (\mathbf {y}) \end{array} \\ = \frac {\mathrm {P} (\mathrm {y} ^ {-}) - \mathrm {P} (\mathrm {y})}{\mathrm {y} - \mathrm {y} ^ {-}} \frac {1 + \mathrm {y}}{\mathrm {P} (\mathrm {y})} \tag {3.9} \\ \frac {\mathrm {P} \left(\mathrm {y} ^ {-}\right) - \mathrm {P} \left(\mathrm {y} ^ {+}\right)}{\left(\mathrm {y} ^ {+} - \mathrm {y} ^ {-}\right) / 2} \frac {1 + \mathrm {y}}{\mathrm {P} (\mathrm {y})} \\ \end{array}
$$ where $y^{+}$ is a
(VERY) little bit more than $y$ and $y^{-}$ is
(VERY) little bit less; furthermore $P(y)$ is the price at the current yield which is the market price, $P(y^{+})$ is price discounted at $y^{+}$ which is less than $P(y)$; and $P(y^{-})$ is price discounted at $y^{-}$ which is more than $P(y)$.

It is clear that the partial derivative is replaced
(approximated) by the tiny change of yield. $\mathbf{P}(\mathbf{y})$ is still the current price but $\mathbf{P}(\mathbf{y}^{+})$ and $\mathbf{P}(\mathbf{y}^{-})$ are recomputed prices using $\mathbf{y}$ and $\mathbf{y}^{-}$. Using Excel $\mathrm{PV}(\mathsf{r},\mathsf{n},\mathsf{c})$ where $\mathsf{r}$ is rate, $\mathsf{n}$ is number of payments, and $\mathbb{C}$ is payment amount, we can easily compute the present value of all coupons. Then separately adding the discounted principal (face value $\div (1 + y / m)^i$, we obtain the price of the bond.

Now, we can easily change the yield $y$ to $y^{+}$ or $y^{-}$. It is obvious that in equation (3.9) $P / y$ which is a continuous difference is replaced
(approximated) by the bracketed term which is a discrete difference. As we know, as $y^{+}$ or $y^{-}$ gets closer and closer to $y$, this discrete approximation will be more and more accurate.

The first equation of the bracketed term is using only $y^{+}$ (and similarly the second equation which uses only $y^{-}$ ) is a one-sided first-order difference and the third equation is two-sided. Frankly, as $y^{+}$ or $y^{-}$ gets closer and closer to $y$, they all converge. Yet the error is the smallest in the third equation. Readers are welcomed to try all three and compare. For the sake of simplicity and demonstration, we use the first equation: $y^{+}$ only. The results are shown in Figure 3.3.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/6d94de7920f80c0da87667c4cdc93b3fd579ad4234a467feab642c339b111697.jpg)

Figure 3.3: Numerical Duration

The market yield is $ y = 7.2872\% $. At this market yield we have the market price of the bond as $105,000. Arbitrarily (provided that it is small), we add 1 basis point (0.01%) to the yield to have $ y^+ = 7.2972\% $ and recompute the price to be $104,927.64 $. As a result, we obtain the duration as follows:

$$
\frac{105,000 - 104,927.64}{0.0001}\times \frac{1}{105,000}\times (1 + 7.2872\%) = 7.14
$$ which is almost equal to the duration result computed earlier. As the shift size ( ) gets smaller (e.g. one-tenth of 1 basis point), the result gets more accurate.

# Problems With Macaulay Duration

MaCaulay duration does not measure true interest rate risk. Two bonds with the same MaCaulay duration do not necessarily have the same interest rate risk, hence the same yield. In other words, when we find two bonds with the same duration but different yields it does not mean that there is an arbitrage opportunity. As a result, the MaCaulay duration can be at most viewed as a rough or crude way to understand interest rate risk. Should the yield curve be flat, MaCaulay would be more useful.

# 3.2.2 Macaulay Duration With Yearfraction

The demonstrations in the above sub-section apparently are text-book-only demonstrations and nowhere close to reality. Nevertheless, they do provide the basic knowledge for us to quickly adapt to real cases. As we discussed in previous chapters, bond prices move constantly and hence yields change constantly. As each day goes by, the time to maturity gets shorter by one day and yearfraction needs to be computed by the chosen convention (see Chapter 1).<sup>2</sup>

To do that, we first redraw the timeline with the current date in between two coupon payment dates, as shown in Figure 3.4.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/f13568fbc43bbb2e4982ab9a388a2fc6899d12f75fda4352de5b2c7d7e66f820.jpg)

Figure 3.4: Time Line

In between any two coupon dates (e.g. $T_{i-1}$ and $T_i$ for $i = 1, \dots, n$ and $T_0 = t$ ), it is assumed to be half year (semi-annual coupons), or 0.5. In general,

$$
T _ {i} - T _ {i - 1} = \frac {1}{m}
$$ where $m$ is frequency.

Readers can assume any frequency as needed. There is a yearfraction which between the current time $t$ and the next coupon date $(T_1)$.

Recall the discussion in Chapter 1 on two-step discounting (equation (1.3)). We can discount all the coupons till time $T_{1}$ and the result is further discounted to today using yearfraction. That is, recall from Chapter 1 the yield to maturity formula:

$$
\begin{array}{l} P = \frac {c / 2}{(1 + y / 2) ^ {2 (T _ {1} - t)}} + \frac {c / 2}{(1 + y / 2) ^ {2 (T _ {2} - t)}} + \dots + \frac {1 + c / 2}{(1 + y / 2) ^ {2 (T _ {n} - t)}} N \\ = \frac {c / 2}{(1 + y / 2) ^ {2 (T _ {1} - t)}} \frac {c / 2}{(1 + y / 2)} + \frac {c / 2}{(1 + y / 2) ^ {2 (T _ {2} - T _ {1})}} + \dots + \frac {1 + c / 2}{(1 + y / 2) ^ {2 (T _ {n} - T _ {n - 1})}} N \\ = \frac {c / 2}{(1 + y / 2) ^ {2 (T _ {1} - t)}} \frac {c / 2}{(1 + y / 2)} + \frac {c / 2}{(1 + y / 2) ^ {2}} + \dots + \frac {1 + c / 2}{(1 + y / 2) ^ {2 n}} N \\ \end{array}
$$ where $c$ is coupon rate, $T_j$ is the coupon time, $y$ is yield to maturity and $N$ is notional. Duration is the first order derivative:

$$
\frac {\mathrm {d} P}{\mathrm {d} y} = \underset {j = 1} {\overset {n} {-}} - 2 \left(T _ {j} - t\right) \frac {c / 2}{(1 + y / 2) ^ {2 \left(T _ {j} - t\right) - 1}} - 2 \left(T _ {n} - t\right) \frac {1}{(1 + y / 2) ^ {2 \left(T _ {n} - t\right) - 1}} N
$$

MaCaulay duration is "scaled' interest rate sensitivity measure:

$$
D _ {M a C a u l a y} = - \frac {d P}{d y} \frac {1 + y}{P}
$$

Following the same example as in Chapter 1, equation (1.3) and assume the maturity of the bond is December 31,2030, and current date is August 26,2020. Hence the half-year yearfraction is 0.694. The result is given in Table 3.3. This is similar to Table?? but with yearfraction (daycount A/A).

# 3.2.3 Fisher-Weil Duration

The Fisher-Weil duration is similar to the MaCaulay duration. The di erence is that Fisher-Weil duration allows the yield curve to be non-flat. But we know that MaCaulay duration does not assume a flat yield curve (this is misunderstanding) but rather using a bond's own yield as the risk factor.

This is rarely used in practice nowadays but occasionally referenced due to the early reference to the non-flat yield curve.

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|}
\hline t & payment & disc fact & PV & PV × t \\ \hline
0.694 & 4000 & 0.975469 & $3,901.88 & $2,707.86 \\ \hline
1.194 & $4,000 & 0.95817 & $3,832.68 & $4,576.18 \\ \hline
1.694 & $4,000 & 0.941177 & $3,764.71 & $6,377.37 \\ \hline
2.194 & $4,000 & 0.924485 & $3,697.94 & $8,113.24 \\ \hline
2.694 & $4,000 & 0.908089 & $3,632.36 & $9,785.53 \\ \hline: &: &: &: &: \\ \hline
8.694 & $4,000 & 0.732611 & $2,930.44 & $25,477.25 \\ \hline
9.194 & $4,000 & 0.719618 & $2,878.47 & $26,464.65 \\ \hline
9.694 & $4,000 & 0.706856 & $2,827.42 & $27,409.02 \\ \hline
10.194 & $4,000 & 0.69432 & $2,777.28 & $28,311.56 \\ \hline
10.694 & $104,000 & 0.682006 & $70,928.66 & $758,510.36 \\ \hline
 & & & $133,215.82 & $1,096,486.48 \\ \hline
\end{tabular}
\end{document}
```

Table 3.3: Duration with Yearfraction

# 3.2.4 Partial Duration (Key Rate Duration)

Given the following example of zero rates:

Table 3.4: Add caption

```latex
\begin{document}
\begin{tabular}{|c|c|c|}
\hline t & zero rates & \\ \hline
0.083333 & 0.26 & not used \\ \hline
0.25 & 0.30 & not used \\ \hline
0.5 & 0.44% & \\ \hline
1 & 0.53% & \\ \hline
2 & 0.74% & \\ \hline
3 & 0.91% & \\ \hline
5 & 1.25% & \\ \hline
7 & 1.55% & \\ \hline
10 & 1.80% & \\ \hline
20 & 2.23% & \\ \hline
30 & 2.79% & \\ \hline
\end{tabular}
\end{document}
```

Move one rate at a time. These are zero rates.

$$
\begin{array}{l} D _ {\text {k e y}} = \frac {P ^ {+} - P ^ {-}}{0.0002} \\ = \frac {\mathrm {P} (\text {y i e l d s h i f t e d d o w n b y 1 b p}) - \mathrm {P} (\text {y i e l d s h i f t e d u p b y 1 b p})}{0.0002} \\ \end{array}
$$

The results are: key rate duration are $1.98\%$, $3.93\%$, $5.81\%$, $9.34\%$, $645.03\%$ respectively.

# 3.2.5 E Ective Duration

E ective duration measures the price change of the entire yield curve change (parallel shift). Hence it is more than just the sum of key rate durations. Other rates must be moved as well.

The computation:

$$
\begin{array}{l} D _ {e} = \frac {1}{P} \frac {P ^ {+} - P ^ {-}}{0.0002} \\ = \frac {1}{P} \frac {P (\text {w h o l e y. c. s h i f t e d d o w n b y 1 b p}) - P (\text {w h o l e y. c. s h i f t e d u p b y 1 b p})}{0.0002} \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/34c1a546943044f84d6bbb41ffdb4d0a76b4db80b36d14d288cabffb1dec438a.jpg)

Figure 3.5: Triangular Rule for Key Rate Duration

# 3.2.6 Pv01 (Dv01)

This is price sensitivity with respective to any chosen risk factor change (1 bp usually). This is very similar to duration except that it is strictly di erentiation. This is not scaling by price. Also the risk factors are necessary the yield curve. PV01 or DV01 hence can refer to spreads, equities, or foreign currency factors. A pricing model is usually required.

# Abs/Mbs Deals Https://Www. Sec. Gov/Comments/S7-08-10/S70810-170. Pdf Has All Intex Screenshots

A mortgage-backed security
(MBS) is a type of asset-backed security (an 'instrument') which is secured by a mortgage or collection of mortgages. The mortgages are aggregated and sold to a group of individuals (a government agency or investment bank) that securitizes, or packages, the loans together into a security that investors can buy. Bonds securitizing mortgages are usually treated as a separate class, termed residential;[1] another class is commercial, depending on whether the underlying asset is mortgages owned by borrowers or assets for commercial purposes ranging from o ce space to multi-dwelling buildings.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/d4831605b3b666dfa0f7e65a3dd78b39b2c02dd1dacbef747d42ca720ce092bc.jpg)

Figure 3.6: Deal Screenshot (from INTEX)

An asset-backed security
(ABS) is a security whose income payments and hence value are derived from and collateralized (or "backed") by a specified pool of underlying assets.

INTEX is the most dominant vendor in the world of ABS/MBS to provide ABS/MBS deal information. It also provide modeling options should subscribers choose to use them. Details of ABS/MBS will be discussed in Chapter
12. Intex Solutions, Inc. is the world's leading provider of structured fixed-income cashflow models and related analytical software. Our clients include the world's best known financial institutions including most major investment banks, regional broker dealers, issuers and investment managers. Intex was founded in 1985, and remains an independent, privately-held company with headquarters near Boston, Massachusetts. Intex also supports its extensive international client base with sta and representatives in London, Shanghai and Tokyo.

ABS/MBS are complex deals associated with various varieties of securitization. As a result of that, the cash flows of a particular ABS/MBS are irregular and random. INTEX has a cash flow model to estimate the cash flow stream of each deal.

The following is a sample
(screenshot) of an INTEX deal screen.

This is about detailed deal information. One can use the CUSIP to look up INTEX or Bloomberg for other functions.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/adfd33dd746ace41e5c7d9b584968285e2062c22f946a7878155d275b827a535.jpg)

Figure 3.7: Deal Screenshot (from INTEX)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/120cdd84177e706017b08ef3ce71146df854743427f07a007ee0a31103717d77.jpg)

Figure 3.8: Deal Cash Flows (from INTEX)

Now let us compute the duration of the sample. Unlike bonds that pay semi- annual coupons, ABS/MBS deals pay monthly coupons Table 3.5. The trade date of this deal is October 1,2010. The yield of this deal is

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|}
\hline t & date & cash flow & PV & t × PV \\ \hline
0.046575 & 10/18/2010 & & & \\ \hline
0.123288 & 11/15/2010 & 8733.71 & 8680.038 & 1070.144 \\ \hline
0.232877 & 12/25/2010 & 8733.71 & 8632.606 & 2010.335 \\ \hline
0.317808 & 1/25/2011 & 8733.71 & 8596.025 & 2731.885 \\ \hline
0.40274 & 2/25/2011 & 8733.71 & 8559.598 & 3447.293 \\ \hline
0.479452 & 3/25/2011 & 8733.71 & 8526.83 & 4088.206 \\ \hline
0.564384 & 4/25/2011 & 8733.71 & 8490.697 & 4792.013 \\ \hline
0.646575 & 5/25/2011 & 8733.71 & 8455.875 & 5467.358 \\ \hline
0.731507 & 6/25/2011 & 8733.71 & 8420.043 & 6159.32 \\ \hline
0.813699 & 7/25/2011 & 8216.22 & 7888.652 & 6418.988 \\ \hline
0.89863 & 8/25/2011 & 7129.52 & 6816.27 & 6125.305 \\ \hline
0.983562 & 9/25/2011 & 6062.01 & 5771.104 & 5676.238 \\ \hline
1.065753 & 10/25/2011 & 5013.5 & 4753.336 & 5065.882 \\ \hline
1.150685 & 11/25/2011 & 3983.55 & 3760.828 & 4327.528 \\ \hline
1.232877 & 12/25/2011 & 2971.72 & 2794.064 & 3444.737 \\ \hline
1.317808 & 1/25/2012 & 1977.61 & 1851.505 & 2439.928 \\ \hline
1.40274 & 2/25/2012 & 1000.8 & 933.0119 & 1308.773 \\ \hline
1.479452 & 3/25/2012 & 40.9 & 37.98371 & 56.19508 \\ \hline
 & & & 102968.5 & 64630.13 \\ \hline
 & & & duration & 0.627669 \\ \hline
\end{tabular}
\end{document}
```

Table 3.5: Example

# Wal

The weighted average life
(WAL) is the average length of time that each dollar of unpaid principal on a loan, a mortgage, or an amortizing bond remains outstanding. Calculating WAL shows an investor, an analyst, or a portfolio manager how many years it will take to receive roughly half of the amount of the outstanding principal. The formula is useful in measuring the credit risk associated with fixed-income securities.

See mortgage-backed securities in Chapter 12

$$
\mathsf {W A L} = \frac {1}{\mathbf {P}} \quad \begin{array}{l} n \\ i = 1 \end{array} \mathbf {i} \times \mathbf {c} _ {i}
$$ which is similar to equation (3.3) but without discounting.

Weighted average life = $91,000 /$ 23,000 = 3.96 years

```latex
\begin{document}
\begin{tabular}{|c|c|c|}
\hline time & cash flow & txcf \\ \hline
1 & $1,000 & $1,000 \\ \hline
2 & $2,000 & $4,000 \\ \hline
3 & $4,000 & $12,000 \\ \hline
4 & $6,000 & $24,000 \\ \hline
5 & $10,000 & $50,000 \\ \hline
 & $23,000 & $91,000 \\ \hline
\end{tabular}
\end{document}
```

Table 3.6: Add caption

WAL gives investors or analysts a rough idea of how quickly the bond in question pays out returns. Since rational investors want to receive returns earlier, if two bonds were compared, the investor would select the one with the shorter WAL. Stated differently, the most significant credit risk of a loan is the risk of loss of principal and a smaller WAL indicates a higher likelihood that the principal will be repaid in full.

# Wam

WAM (weighted average maturity) is similar to duration:

$$
\mathsf {W A M} = \begin{array}{c} \mathsf {n} \\ \mathsf {i} = 1 \end{array} \mathsf {w} _ {\mathsf {i}} \mathsf {T} _ {\mathsf {i}}
$$

$$ w _ {i} = \frac {c _ {i}}{\underset {i = 1} {\overset {n} {n}} c _ {i}}
$$

# Wala

# Investopedia:

The weighted average loan age
(WALA) measures the average age of the loans in a pool of mortgage-backed securities
(MBS) . The weights are based on the dollar amount of each loan at each maturity in proportion to the aggregate total of the pool and can be weighted on the remaining principal balance dollar figure or the nominal value of the loan.

# 3.3 Convexity

Convexity measures the secondary interest rate risk – large sudden movements of interest rates. When interest rates move gradually slowly, the duration alone can hedge the risk away. But when changes are large, then duration alone cannot hedge the risk completely and one must have the additional protection by hedging the convexity.

# 3.3.1 Macaulay Convexity

Convexity is the second derivative of the price with respective to a chosen risk factor. Take equation (3.1) as an example, if we recognize the bond price as a function of only its own yield, then the second derivative of equation (3.1) can be taken as:

$$
\frac {1}{2} \frac {1}{P} \frac {{} ^ {2} P}{y ^ {2}}
$$

Convexity measures the curvature. It is second order derivative. We use the same example as in duration but we need to move the yield both up and down. To achieve better accuracy, the shift size is 0.000002 which is much smaller than 1 bp in the duration example.

$$
\begin{array}{l} \mathbb {C} = \frac {1}{2 \mathbf {P}} \frac {\mathbf {P} ^ {+} - 2 \mathbf {P} + \mathbf {P} ^ {-}}{2} \\ = \frac {1}{2 P
(y) } \frac {P (y -) - 2 P
(y) + P (y +)}{2} \tag {3.10} \\ \end{array}
$$ where is the shift size.

The numerical result is given in Figure 3.9:

The convexity is 240.68. Note that convexity does not have a unit. Hence, the number by itself has little meaning. Only if it is compared with another convexity number (of another bond), we can draw any conclusion.

# 3.3.2 Dollar Convexity

Besides the MaCaulay convexity, we can also compute convexity results for key rates and the whole yield curve, or any chosen risk factors (which then require pricing models). The formula is same as equation (3.10) but without dividing by half of the

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/441e60a8b0ae14b9934119a340c38c10436c695483146c71750b20106873fe98.jpg)

Figure 3.9: Compute Convexity bond price. $^3$ Readers are welcomed to perform all the exercises and compare results of various methods.

In doing so, dollar convexity is exactly the same as gamma in derivatives. Given that it is not scaled by price, as in gamma, the second derivative directly has a dollar unit. As a result, it can be added (or multiplied) to other derivatives (obviously delta, or dollar duration).

In a later section, we will discuss trading strategies (immunization, yield curve riding, and barbell), dollar duration and dollar convexity will be used. Also note that dollar duration and dollar convexity are used for P&L attribution in risk management.

# 3.4 Yield Curve Trading Strategies

Modern fixed income hedge funds have complex trading strategies based upon sophisticated interest rate models. Yet, good old yield curve trading strategies still worth a lot of attention. The basic principles of fixed income trading remain unchanged.

# 3.4.1 Immunization

One of the most important applications of duration and convexity is immunization. The example provided in this section is based upon MaCaulay duration and convexity which can only be valid under a flat yield curve. While unrealistic, it still provides the basic intuition of how immunization works.

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
10-year zero & & duration & 10 \\ \hline coupon rate & 0% & yield/0.5yr & 10.00% \\ \hline

# Of Years & 10 & # Of Periods & 10 \\ \Hline Principal & $1,931 & & \\ \Hline Yield To Maturity & 10% & Pvifa & 6.144567106 \\ \Hline Coupon Value & $ - & Pay At The End
(Annuity) & $ - \\ \Hline Principal Value & $744.48 & & \\ \Hline Bond Value & $744.48 & & \\ \Hline Coupon Rate & 0% & Yield/0.5Yr & 10.00% \\ \Hline

# Of Years & 10 & # Of Periods & 10 \\ \Hline Principal & $1,931 & & \\ \Hline Yield To Maturity & 10% & Pvifa & 6.144567079 \\ \Hline Coupon Value & $ - & Pay At The End
(Annuity) & $ - \\ \Hline Principal Value & $744.48 & & \\ \Hline Bond Value & $744.48 & & \\ \Hline
\end{tabular}
\end{document}
```

Table 3.7: Zero-coupon Bond

Behind the brilliance of immunization, although it needs to be substantially modified in order to work in reality, provides the golden rule in fixed income trading. It is equivalent to the equity trading rule: buy low, sell high. As we will see in the following example (under MaCaulay), duration neutral and convexity maximization is equivalent to buy low and sell high.

In fixed income trading, it always involves two securities. Whose prices being closely related, fixed income securities (e.g. various Treasuries) are highly connected

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
20-year 7% & & duration & 10 \\ \hline coupon rate & 7% & yield/0.5yr & 10.00% \\ \hline

# Of Years & 20 & # Of Periods & 20 \\ \Hline Principal & $1,000 & & \\ \Hline Yield To Maturity & 10% & Pvifa & 8.51356 \\ \Hline Coupon Value & $595.95 & Pay At The End
(Annuity) & $70.00 \\ \Hline Principal Value & $148.64 & & \\ \Hline Bond Value & $744.59 & & \\ \Hline Coupon Rate & 7% & Yield/0.5Yr & 10.00% \\ \Hline

# Of Years & 20 & # Of Periods & 20 \\ \Hline Principal & $1,000 & & \\ \Hline Yield To Maturity & 10% & Pvifa & 8.51356 \\ \Hline Coupon Value & $595.95 & Pay At The End
(Annuity) & $70.00 \\ \Hline Principal Value & $148.64 & & \\ \Hline Bond Value & $744.59 & & \\ \Hline
\end{tabular}
\end{document}
```

Table 3.8: Coupon Bond

(via common risk factors, and in the MaCaulay case - yield), we can easily find a trading rule through which there is an arbitrage profit.

The following example is taken from Modern Investment Theory by Robert Haugen. Assume two Treasury securities. The first is a 10 year zero-coupon bond, face value = $1931 and price = $744.48. The second is a 20 year, 7% coupon (semi-annual), and face value = $1000. The price = $744.59.

Using the formulas given before, we can easily compute the yield for both securities to be $10\%$. Given that the first security is a zero coupon bond, its duration must be equal to its maturity $= 10$ yrs. The second security is a coupon-bond so we need to use the formula of equation (3.5) and it is also 10 yrs. Hence these two bonds have equal price and equal duration.

If we buy one and sell the other then there is no dollar investment today. Since they also have the same duration, the risk is
0. But since the coupon bond has a higher convexity than the zero-coupon bond, we should buy the coupon bond and sell the zero-coupon bond (positive convexity). Doing so, we are guaranteed to make money and not lose money. The result is explained in Table 3.9.

As we can see, no matter if the yield rises (to $12\%$ ) or falls (to $4\%$ ), this portfolio always makes money. This seems too good to be true! So what is the catch? The catch is that in the example, the yield can only move once (and it must move right away) and then stays fixed for the rest of the lives the bonds.

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|}
\hline
Immunization & rate stay at 10% & rate fall to 4% & rate rise to 16% & & & \\ \hline
 & coupon & future value & & & & \\ \hline
1 & 70 & 165.06 & 70 & 99.63 & 70 & 266.21 \\ \hline
2 & 70 & 150.05 & 70 & 95.8 & 70 & 229.49 \\ \hline
3 & 70 & 136.41 & 70 & 92.12 & 70 & 197.84 \\ \hline
4 & 70 & 124.01 & 70 & 88.57 & 70 & 170.55 \\ \hline
5 & 70 & 112.74 & 70 & 85.17 & 70 & 147.02 \\ \hline
6 & 70 & 102.49 & 70 & 81.89 & 70 & 126.74 \\ \hline
7 & 70 & 93.17 & 70 & 78.74 & 70 & 109.26 \\ \hline
8 & 70 & 84.7 & 70 & 75.71 & 70 & 94.19 \\ \hline
9 & 70 & 77 & 70 & 72.8 & 70 & 81.2 \\ \hline
10 & 70 & 70 & 70 & 70 & 70 & 70 \\ \hline future value of past coupons & 1115.62 & & 840.43 & & 1492.5 & \\ \hline present value of future coupons & 815.66 & & 1243.33 & & 565.01 & \\ \hline
20 year bond value in 10 years & 1931.28 & & 2083.75 & & 2057.51 & \\ \hline liability value & 1931 & & 1931 & & 1931 & \\ \hline portfolio value & 0.28 & & 152.75 & & 126.51 & \\ \hline
\end{tabular}
\end{document}
```

Table 3.9: Immunization Explained

Figure 3.10 explains what is going on. Bond 1 (zero-coupon) and bond 2
(coupon) have their price-yield curves (see Figure 3.2) tangent at $10\%$ (current yield) and $$744.5$. However, bond 2 (coupon bond) has a higher curvature (i.e. convexity). As a result, no matter how yield changes (rises or falls), bond 2 always has a higher value than bond
1. This indicates that if you buy bond 2 and sell bond 1, you are guaranteed to make money (and will not lose money if the yield stays the same at $10\%$ ).

Certainly both bonds have very long lives and this diagram is a static description of the two bonds. As economy changes, they will no longer be tangent and there is no guarantee that bond 2 will be more convex than bond 1 in the new environment. Consequently, continuous rebalancing is required and under continuous rebalancing there is no guarantee of an arbitrage profit.

Nevertheless, the concept of immunization remains valid - keep DURATION-NEUTRAL and POSITIVE CONVEXITY and do it as frequently as environment demands. Undoubtedly, when interest rates change over time, immunization becomes quite challenging.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/fb1cbb10679a507925963b997c34e1590169e4d975c6ecfd55539bd5281bfa89.jpg)

Figure 3.10: Immunization

# 3.4.2 Riding On The Yield Curve

The yield curve is generally upward sloping. This means that the short term interest rates are always lower than the long term interest rates. Hence, it makes sense to borrow at the short end of the yield curve (short sell) and invest in the long end of the yield curve.

When the yield curve is steep, this strategy generate attractive profits.

The risk of this strategy is that it ignores the fact that the shape of the yield curve is changing over time. The slope of the yield curve can steepen or flatten. This strategy will lose money if the yield curve flattens.

# 3.4.3 Barbell

The Barbell strategy is less risky than riding the yield curve. The Barbell strategy picks three points of the yield curve. It longs the two ends and short the middle one.

To implement the strategy, one must make sure the duration of the portfolio is 0 (duration neutral). Hence, there is no short term fluctuation risk. Also, it is not subject to the risk of changing slope of the yield curve.

The Barbell trade is a convexity trade. It takes advantage of the three point shape of the yield curve. If the yield curve is linear, then there is no profit to be made.

Although there is no duration risk, the strategy will have convexity risk. That is, similar to riding the yield curve, once convexity changes the strategy will lose money.

# Chapter 4

# Spreads

# 4.1 Introduction

Spreads carry important information about risks of securities. There are many reasons to cause a spread. The most popular one is credit spread which refers to likelihoods of default. Besides default, other reasons include liquidity, noise trading, market segmentation, among numerous others.

A spread could be used to explain a particular source of risk, such as credit or liquidity. It could also be used to explain market imperfections such as noise trading and market segmentation.

# 4.2 Option Adjusted Spread
(Oas) OAS has a very long history in the fixed income markets. In the early days, it was regarded as a credit spread (i.e. default likelihood). Over time, as the markets grew more sophisticated, people realized that credit spreads can be separately evaluated and regarded OAS as the value of various optionalities embedded in fixed income securities. Then as more and more models can price optionalities accurately, OAS has become a trading index signaling profit potentials.

# 4.2.1 Static Oas

Given that OAS is the most ancient spread, we begin our chapter with OAS. Our first example is a static OAS. Assume a 5-year corporate bond that pays $4\%$ coupon (semi-annaul) with $100 face value. The corporate bond is priced at par (assuming at issuance).

The zero curve has been bootstrapped out to be the following table:

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline t & zero rate \\ \hline
1 & 1.2408% \\ \hline
2 & 1.9340% \\ \hline
3 & 2.3394% \\ \hline
4 & 2.6271% \\ \hline
5 & 2.8502% \\ \hline
6 & 3.0326% \\ \hline
7 & 3.1867% \\ \hline
8 & 3.3202% \\ \hline
9 & 3.4380% \\ \hline
10 & 3.5434% \\ \hline
\end{tabular}
\end{document}
```

Table 4.1: Zero Curve

A bench marked 5-year Treasury issue is paying $3.5\%$ and is priced at par:

$$
\begin{array}{l} 100 = \quad_ {i = 1} ^ {1 0} \frac {c _ {i}}{(1 + r _ {i}) ^ {i}} \\ = \frac {1.75}{(1 + 1.2408 \% / 2)} + \frac {1.75}{(1 + 1.9340 \% / 2) ^ {2}} + \dots + \frac {101.75}{(1 + 3.5434 \% / 2) ^ {10}} \\ \end{array}
$$

This is reasonable as Treasuries do not use default risk and hence their coupons should be less than the corresponding corporate bonds. The OAS of the corporate bond can be computed as:

$$
\begin{array}{l} 100 = \begin{array}{l} 1 0 \\ i = 1 \end{array} \frac {c _ {i}}{(1 + (r _ {i} + s) / 2) ^ {i}} \\ = \frac {2}{(1 + (1.2408 \% + s) / 2)} + \frac {2}{(1 + (1.9340 \% + s) / 2) ^ {2}} + \dots + \frac {102}{(1 + (3.5434 \% + s) / 2) ^ {1 0}} \\ \end{array}
$$ and then we can solve for the spread as $0.5062\%$, or 50.62 basis points.

The second static example is embedded optionality. For example, some Treasury bonds (longer than 10 years to maturity) can be called.<sup>1</sup> And hence for these callable Treasuries, they must offer higher coupons. As a result, the analysis is identical to that of the corporate bond. Using the same example and assume a callable Treasury pays a $4\%$ coupon, we can calculate the OAS to be 50.62 basis points.

As we can see now, static OAS is just to fill the gap between the zero Treasury yield curve and price of the target bond. It does not distinguish where the spread comes from – either it is a credit risk or a call option.

We should note that it is possible for OAS to be negative. For example, an embedded put option can generate a negative OAS.

Finally, we should note that today's OAS is di erent what is discussed here. Today's OAS is computed after considering all possible optionalities (e.g. put and call) and risks (e.g. credit and liquidity). Apparently these optionalities and risks must be evaluated via models. Hence, today's OAS is a trading indicator. In other words, after considering all optionalities and risks, if there is a positive OAS, then it indicates that the bond is too cheap (buy indication). Otherwise (a negative OAS), then the bond is too expensive (sell (or short-sell) indication.

# 4.2.2 With Model

We use the Ho-Lee model for interest rate risk, Jarrow-Turnbull model for credit, and Chen model for liquidity. These models are reviewed in Chapter?? For those who are not familiar with these models, please review Chapter?? first.

< See Excel >.

Our example is a callable Treasury. A 3-year, $7\%$ coupon bond is priced at $100.25 (no accrued interest so the quoted price is 100:08). In this case, we can calculate the OAS. This OAS is a static one that can be easily computed o today's yield curve, as follows:

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline yield & yld + spd & disc fact & PV \\ \hline
4.9979% & 5.4582% & 0.9482 & 6.6377 \\ \hline
5.9998% & 6.4601% & 0.8823 & 6.1762 \\ \hline
6.5021% & 6.9624% & 0.8172 & 87.4361 \\ \hline
\end{tabular}
\end{document}
```

Table 4.2: Ho-Lee Model (yield curve)

The spread can be solved to be $0.4603\%$ (or 46 basis points). As this spread is added to the yields, the sum of PVs will be precisely 100.25.

Note that in this case the OAS reflects only liquidity and trading noise – which is regarded as a trading opportunity. If the OAS is positive, then the bond is underpriced and it is a good buy. Reversely, if the OAS is negative, then the bond is a good sell.

A 3-year callable bond pays an 8.5% coupon (it must be higher than the straight bond in order to compensate the call option) and is priced at $99.5 (no accrued interest). The first call date is at year 2 (so only year 2 and year 3 can be called) and the call price is $108.

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|c|}
\hline
0 & 1 & 105.3494 & & & & 99.5 & & \\ \hline
1 & 2 & 98.5471 & 118.7408 & & & 98.5471 & 108.5 & \\ \hline
2 & 3 & 96.9331 & 106.7549 & 117.6670 & & 96.9331 & 106.7549 & 108.5 \\ \hline
3 & 4 & 108.5 & 108.5 & 108.5 & 108.5 & & & \\ \hline
\end{tabular}
\end{document}
```

Table 4.3: Ho-Lee Model

The OAS solved is $0.0462\%$ (or 4.62 basis points). As emphasized before, this OAS is in addition to the call option value. We can see the comparable $8\%$ straight bond has a value of \ $105.35 under the same OAS. Hence the option value is $ 5.85. In other words, for the callable bond selling at 99.5, it contains an OAS of 25.66 bps and also an option value of 5.85.

The following table (Table 4.4) presents the calculations of the yields with and without OAS. The left panel contains yields directly from the HL model. The right panel are added by OAS. Discount factors
(discrete) are computed then from the OAS-added yields. These discount factors are used to discount cash flows (coupons and principal).

# 4.2.3 Z Spread

Z spread is to set the volatility of a model to
0. In the HL case, it is $= 1$. In such a case, there is no uncertainty. Note that the OAS for the $7\%$ straight bond is not impacted as it is only a result of today's yield curve. The OAS remains at 46 basis points.

For the callable bond, the OAS becomes $2.26\%$ and the optionality has no value (since no volatility). This is the same OAS as the $8.5\%$ straight bond.

One may question that if $Z$ spread is the same as static OAS then why would

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|c|}
\hline
0 & 1 & 4.9979 & & & & 5.2545 & 0.9501 & \\ \hline
 & 2 & 5.9998 & & & & 6.2564 & 0.8857 & \\ \hline
 & 3 & 6.5021 & & & & 6.7587 & 0.8218 & \\ \hline
 & 4 & 6.8009 & & & & 7.0575 & 0.7613 & \\ \hline
1 & 2 & 14.1453 & 2.7308 & & & 14.4019 & 2.9874 & \\ \hline
 & 3 & 14.5620 & 3.1058 & & & 14.8185 & 3.3623 & \\ \hline
 & 4 & 14.8649 & 3.3784 & & & 15.1214 & 3.6349 & \\ \hline
2 & 3 & 22.6455 & 10.3809 & -0.6572 & & 22.9020 & 10.6375 & -0.4006 \\ \hline
 & 4 & 23.0680 & 10.7612 & -0.3149 & & 23.3246 & 11.0178 & -0.0583 \\ \hline
3 & 4 & 31.7248 & 18.5523 & 6.6971 & -3.9726 & 31.9814 & 18.8089 & 6.9537 \\ \hline
\end{tabular}
\end{document}
```

Table 4.4: Yields (in %)

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
0 & 1 & 0.950078 & & & \\ \hline
 & 2 & 0.885707 & & & \\ \hline
 & 3 & 0.821846 & & & \\ \hline
 & 4 & 0.761258 & & & \\ \hline
1 & 2 & 0.874111 & 0.970993 & & \\ \hline
 & 3 & 0.758536 & 0.935999 & & \\ \hline
 & 4 & 0.655438 & 0.898424 & & \\ \hline
2 & 3 & 0.813656 & 0.903853 & 1.004022 & \\ \hline
 & 4 & 0.657507 & 0.811362 & 1.001168 & \\ \hline
3 & 4 & 0.757683 & 0.841688 & 0.934984 & 1.038595 \\ \hline
\end{tabular}
\end{document}
```

Table 4.5: Discount Factors anyone want to build a model for Z spread. The answer lies in technology convenience. Usually a bank will have a large portfolio of bonds, some with and some without optionalities. It is a lot easier to set the volatility to 0 to obtain the static OAS than building a separate system for just static OAS. Also note that the static OAS discussed previously usually is applied to flat yield curve. For non-flat market yield curve, it is a lot easier to just set the volatility to 0.

# 4.3 Libor Spread

LIBOR is introduced in Chapter
2. The LIBOR rates that are quoted are: 1-week, 1-month, 2-month, 3-month, 6-month, and 1-year.

Note that LIBOR are regarded as risk-free rate in this case. However, we know that it is not in that these are lending (o er) rates among commercial banks in London. Nevertheless, for the sake of convenience, they are adopted as risk-free. Another argument (historically only) is that A-rated banks borrow funds at LIBOR and as a result to those banks, LIBOR is risk-free.

A LIBOR spread refers to corporate bonds that pay floating coupons indexed to LIBOR, that is LIBOR and an added spread, symbolized as $\mathsf{L} + \mathsf{s}$. As an index for the floating coupons, LIBOR here is commonly referred to as the 3-month LIBOR.

The spread is purely meant as a credit spread, i.e. an extra coupon compensating a default likelihood. This is because upon default, investors will not receive the principal back (known as loss given default, or LGD) and hence at normal times the coupon a bit higher.

# 4.3.1 Floating Rate Corporate Bond

A floating rate corporate bond, or often called a corporate floater, pays an extra amount over LIBOR as in equation (2.14), which we restate under semi-annual coupons as follows:

$$
1 = \frac {\left(L _ {1} + s _ {0}\right) / 2}{1 + \frac {L _ {1} + s _ {0}}{2}} + \frac {\left(L _ {2} + s _ {0}\right) / 2}{1 + \frac {L _ {1} + s _ {0}}{2} \quad 1 + \frac {L _ {2} + s _ {0}}{2}} + \dots + \frac {1 + \left(L _ {2 n} + s _ {0}\right) / 2}{\substack {2 n \\ i = 1} \quad 1 + \frac {L _ {i} + s _ {0}}{2}} \tag{4.1}
$$

We have explained why this equation is an identity of 1 (par value). Unlike the risk-free floater whose value is always at par on coupon payment dates, corporate floaters will not be. This is because the spread will change as time goes on. For example, after 6 months, the spread will move up or down to $s_1$ and the price will not be at par:

$$
1 = \frac {\left(L _ {1} + s _ {0}\right) / 2}{1 + \frac {L _ {1} + s _ {1}}{2}} + \frac {\left(L _ {2} + s _ {0}\right) / 2}{1 + \frac {L _ {1} + s _ {1}}{2} \quad 1 + \frac {L _ {2} + s _ {1}}{2}} + \dots + \frac {1 + \left(L _ {2 n - 1} + s _ {1}\right) / 2}{\substack {2 n - 1 \\ i = 1} \quad 1 + \frac {L _ {i} + s _ {1}}{2}} \tag{4.2}
$$

Obviously, this is because the numerator and the denominator do not match anymore. Unlike fixed rate bonds, floaters do not have known coupons at trade date. As a result, it is not possible to compute the yield. To remedy this problem, industry use forward rates (introduced in Chapter 1) to compute the yield.

The diagram clearly depicts how each future LIBOR can be replaced with the proper forward as follows:

$\mathsf{L}_1 = \mathsf{f}(0,1 / 4,1 / 2)$
$\mathsf{L}_2 = \mathsf{f}(0,3 / 4,1)$

中

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/a72f275beb39b6f82d9023645e28f6020417a7247824d57afd8abdc0ccfa1721.jpg)

Figure 4.1: Corporate Floater Example

$$
\cdot \mathbf {L} _ {2 n} = \mathbf {f} (0,2 n - 1 / 4,2 n)
$$

$$
P = \frac {\frac {f (0,1 / 4,1 / 2) + s _ {0}}{2}}{1 + \frac {y}{2}} + \frac {\frac {f (0,1 / 2,3 / 4) + s _ {0}}{2}}{1 + \frac {y}{2} ^ {2}} + \dots + \frac {1 + \frac {f (0,2 n - 1 / 4,2 n) + s _ {0}}{2}}{1 + \frac {y}{2} ^ {2 n}} \tag {4.3}
$$ where $f(t, T_i, T_j)$ is the discrete forward rate between $T_i$ and $T_j$ observed today t. See the example: <See Excel>

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
\hline
 & LIBOR & fwd rate & coupon & disc fact & PV & disc fact & PV \\ \hline
0.25 & 1.2408% & 2.6271% & & & & & \\ \hline
0.5 & 1.9340% & & 0.016886 & 0.986758 & 0.016662 & 0.977389 & 0.016504 \\ \hline
0.75 & 2.3394% & 3.4901% & & & & & \\ \hline
1 & 2.6271% & & 0.021201 & 0.967065 & 0.020502 & 0.955289 & 0.020253 \\ \hline
1.25 & 2.8502% & 3.9442% & & & & & \\ \hline
1.5 & 3.0326% & & 0.023471 & 0.945342 & 0.022188 & 0.933688 & 0.021914 \\ \hline
1.75 & 3.1867% & 4.2550% & & & & & \\ \hline
2 & 3.3202% & & 0.025025 & 0.922574 & 0.023087 & 0.912576 & 0.022837 \\ \hline
2.25 & 3.4380% & 4.4916% & & & & & \\ \hline
2.5 & 3.5434% & & 0.026208 & 0.899246 & 0.023568 & 0.891942 & 0.023376 \\ \hline
2.75 & 3.6363% & 4.6025% & & & & & \\ \hline
3 & 3.7168% & & 0.026763 & 0.875876 & 0.023441 & 0.871774 & 0.023331 \\ \hline
3.25 & 3.7849% & 4.5643% & & & & & \\ \hline
3.5 & 3.8406% & & 0.026572 & 0.85312 & 0.022669 & 0.852062 & 0.022641 \\ \hline
3.75 & 3.8839% & 4.3771% & & & & & \\ \hline
4 & 3.9147% & & 1.025635 & 0.831566 & 0.852883 & 0.832795 & 0.854144 \\ \hline
 & & & & & 1.005000 & & 1.005000 \\ \hline
\end{tabular}
\end{document}
```

Table 4.6: Example (y = 4.6269%)

# 4.3.2 Relationship With Cds

LIBOR spreads are often compared to CDS spreads. If these two securities have the same payment frequency, then it is said that they must be equal to avoid arbitrage.

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
0 & i &... & n & & \\ \hline sell risk-free floater & default-(1 + $a_{1}$) & no default-$L_{1}$ &... & default-(1 + $a_{1}$) & no default-(1 + Ln) \\ \hline buy risky floater & R + $a_{2}$ & $L_{1}$ + $s_{0}$ & & R + $a_{2}$ & 1 + Ln + $s_{0}$ \\ \hline buy CDS & 1 - R + $a_{3}$ & -$s_{0}$ & & 1 - R + $a_{3}$ & -$s_{0}$ \\ \hline
 & 0 & 0 &... & 0 & 0 \\ \hline
\end{tabular}
\end{document}
```

Table 4.7: Arbitrage between Corporate Floater and CDS where $a$ is accrued interest. The analysis shows that if the frequency of CDS is matched with that of corporate, then it must be true that CDS spread and LIBOR spread are same.

However, CDS pays quarterly and corporate floaters pay semi-annually, and hence their spreads are not equal.

# 4.4 Yield Spread

Yield spread is commonly referred to fixed rate corporate bonds. Unlike corporate floaters that are indexed to LIBOR, fixed rate corporate bonds are indexed to Treasuries. As a result, the extra yield in excess to the corresponding Treasury is called the yield spread.

# 4.4.1 Fixed Rate Corporate Bond

Yield spread of a corporate fixed contains credit and liquidity. In this subsection, we discuss the credit part using the Jarrow-Turnbull model and in a later subsection, we discuss the liquidity part using the Chen model. Here, we focus on credit part only. The Jarrow-Turnbull model is described by Figure 4.2.

Each coupon is weighted by the corresponding survival probability $Q(t, T_i)$ and then discounted by the risk-free discount factor $P(t, T_i)$:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/20cb4fc633fa84600566523114aed0845f50ae7df64b5f7802e6a6143d262384.jpg)

Figure 4.2: Jarrow-Turnbull Model

$$
\begin{array}{l} \left(t, \underline {{T}}; c\right) = \quad_ {i = 1} ^ {2 n} \frac {c}{2} P \left(t, T _ {i}\right) Q \left(t, T _ {i}\right) + P \left(t, T _ {2 n}\right) Q \left(t, T _ {2 n}\right) \\ + \quad_ {i = 1} ^ {2 n} R _ {i} P (t, T _ {i}) [ Q (t, T _ {i}) - Q (t, T _ {i - 1}) ] \\ \end{array}
$$ where and c are corporate bond price and coupon rate respectively, and
(intensity) :

$$
Q (t, T _ {i}) = Q (t, T _ {i - 1}) e ^ {- i \left(T _ {i} - T _ {i - 1}\right)}
$$ and then the spread is:

$$
\mathbf {s} = \mathbf {y} - \mathbf {y}
$$

The notation is parallel to that of risk-free but with an asterisk in superscript. The yield of this bond is:

$$
\begin{array}{l} = 1 = \begin{array}{l} 2 n \\ i = 1 \end{array} \frac {c / 2}{(1 + y / 2) ^ {i}} + \frac {1}{(1 + y / 2) ^ {n}} \\ = 1 = \begin{array}{l} 2 n \\ i = 1 \end{array} \frac {c / 2}{(1 + y / 2) ^ {i}} + \frac {1}{(1 + y / 2) ^ {n}} \\ \end{array}
$$

If the risk-free rate is flat and the default intensity is flat, and recovery is 0, then:

$$
\mathbf {P} (t, T) = e ^ {- r (T - t)}
$$

$$
Q (t, T) = e ^ {- (T - t)}
$$ and is the spread.

Take two corporate bonds as an example: one 5-year, $6\%$ (semi-annual $3\%$ ) and the other 10-year, $7\%$ (semi-annual $3.5\%$ ). Also assume piece-wise flat and recovery rate of 0.4. Both bonds are issued at par value. Solve for the two 's as in the following table.

<SeeExcel>

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|c|}
\hline
A & B & C & D & E & F & G & H & I \\ \hline t & P & & Q & -dQ & c/2 = 3% & rec=0.4 & c/2 = 3.5% & rec=0.4 \\ \hline
0.5 & 0.9753 & 0.0149 & 0.9926 & 0.0074 & 0.029042 & 0.0029 & 0.033882 & 0.0029 \\ \hline
1 & 0.9512 & 0.0149 & 0.9852 & 0.0074 & 0.028114 & 0.0028 & 0.0328 & 0.0028 \\ \hline
1.5 & 0.9277 & 0.0149 & 0.9779 & 0.0073 & 0.027216 & 0.0027 & 0.031752 & 0.0027 \\ \hline
2 & 0.9048 & 0.0149 & 0.9706 & 0.0073 & 0.026347 & 0.0026 & 0.030738 & 0.0026 \\ \hline
2.5 & 0.8825 & 0.0149 & 0.9634 & 0.0072 & 0.025505 & 0.0025 & 0.029756 & 0.0025 \\ \hline
3 & 0.8607 & 0.0149 & 0.9562 & 0.0072 & 0.02469 & 0.0025 & 0.028805 & 0.0025 \\ \hline
3.5 & 0.8395 & 0.0149 & 0.9491 & 0.0071 & 0.023902 & 0.0024 & 0.027885 & 0.0024 \\ \hline
4 & 0.8187 & 0.0149 & 0.9420 & 0.0071 & 0.023138 & 0.0023 & 0.026995 & 0.0023 \\ \hline
4.5 & 0.7985 & 0.0149 & 0.9350 & 0.0070 & 0.022399 & 0.0022 & 0.026132 & 0.0022 \\ \hline
5 & 0.7788 & 0.0149 & 0.9281 & 0.0070 & 0.74447 & 0.0022 & 0.025298 & 0.0022 \\ \hline
5.5 & 0.7596 & 0.0330 & 0.8339 & 0.0942 & & & 0.022168 & 0.0286 \\ \hline
6 & 0.7408 & 0.0330 & 0.8202 & 0.0137 & & & 0.021267 & 0.0040 \\ \hline
6.5 & 0.7225 & 0.0330 & 0.8068 & 0.0134 & & & 0.020402 & 0.0039 \\ \hline
7 & 0.7047 & 0.0330 & 0.7936 & 0.0132 & & & 0.019572 & 0.0037 \\ \hline
7.5 & 0.6873 & 0.0330 & 0.7806 & 0.0130 & & & 0.018776 & 0.0036 \\ \hline
8 & 0.6703 & 0.0330 & 0.7678 & 0.0128 & & & 0.018013 & 0.0034 \\ \hline
8.5 & 0.6538 & 0.0330 & 0.7552 & 0.0126 & & & 0.01728 & 0.0033 \\ \hline
9 & 0.6376 & 0.0330 & 0.7428 & 0.0124 & & & 0.016578 & 0.0032 \\ \hline
9.5 & 0.6219 & 0.0330 & 0.7307 & 0.0122 & & & 0.015904 & 0.0030 \\ \hline
10 & 0.6065 & 0.0330 & 0.7187 & 0.0120 & & & 0.451165 & 0.0029 \\ \hline
\end{tabular}
\end{document}
```

Table 4.8: Yield Spread

Column F is the coupon present value (including principal) and column E is recovery value. The total is $100\%$. Similarly, columns H and I are survival and recovery values respectively and also sum to $100\%$. Hence $= 0.0149$ and $= 0.0330$ are the two intensity values in the Poisson process.

Note that as default likelihoods go up, the survival value goes down but the recovery value goes up. Hence there is a tradeo between the two values0.2 See Figure 4.3. The net result is going down. This is because the sensitivity of the survival value with respect to intensity is higher than that of the default value.

The yields of the two bonds are $6\%$ and $7\%$ respectively because they are both priced at par (otherwise, we need to solve for the yields using the semi-annual formula in Chapter 1). And hence the yield spreads are $1\%$ and $2\%$ respectively.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/2fe4ccf4198f1908434de3652a82f5c39532bcca84f241d6174cdaacd4740c02.jpg)

Figure 4.3: Survival and Recovery
(Default) Value

# 4.4.2 Par Spread

The above example is par spread since the bonds are evaluated at issuance so at par. On any trading day, bond prices are above
(premium) or below
(discount) par. And we need to use yearfraction to discount.

<SeeExcel>

Say in two months the prices of the two bonds drop to 0.98 and 0.95 respectively. Assume no change in the risk-free rate and hence these changes are due to worsening credit of the company.

In this example, the spread is not a par spread. However, market participants would like to know where the market stands and par spread is the only way to see that. But if there is no new issuance, then we need to recreate a "fake" par bond in order to compute the par spread.

To do that, we need to artificially reduce or raise the coupon (which is equal to yield as we are solving for a par bond), till the bond price is at par. Then the difference between this artificial yield and the par risk-free yield is the par spread.

The results are $4.8775\%$ and $9.8352\%$ for the 5-year and 1-year bonds respectively.

# 4.4.3 Spread Duration And Spread 01 Spread Duration Can Be Defined As The Same Way As Interest Rate Duration Introduced In Chapter 3 As:

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|c|}
\hline t & P & lam & Q & -dQ & 0.06 & 0.4 & 0.07 & 0.4 \\ \hline
0.333333 & 0.9835 & 0.0269 & 0.9911 & 0.0089 & 0.029241 & 0.0035 & 0.034115 & 0.0035 \\ \hline
0.833333 & 0.9592 & 0.0269 & 0.9779 & 0.0132 & 0.028138 & 0.0051 & 0.032828 & 0.0051 \\ \hline
1.333333 & 0.9355 & 0.0269 & 0.9648 & 0.0131 & 0.027077 & 0.0049 & 0.03159 & 0.0049 \\ \hline
1.833333 & 0.9124 & 0.0269 & 0.9519 & 0.0129 & 0.026056 & 0.0047 & 0.030399 & 0.0047 \\ \hline
2.333333 & 0.8899 & 0.0269 & 0.9392 & 0.0127 & 0.025074 & 0.0045 & 0.029253 & 0.0045 \\ \hline
2.833333 & 0.8679 & 0.0269 & 0.9267 & 0.0125 & 0.024128 & 0.0044 & 0.02815 & 0.0044 \\ \hline
3.333333 & 0.8465 & 0.0269 & 0.9143 & 0.0124 & 0.023219 & 0.0042 & 0.027088 & 0.0042 \\ \hline
3.833333 & 0.8256 & 0.0269 & 0.9021 & 0.0122 & 0.022343 & 0.0040 & 0.026067 & 0.0040 \\ \hline
4.333333 & 0.8052 & 0.0269 & 0.8901 & 0.0120 & 0.021501 & 0.0039 & 0.025084 & 0.0039 \\ \hline
4.833333 & 0.7853 & 0.0269 & 0.8782 & 0.0119 & 0.710354 & 0.0037 & 0.024138 & 0.0037 \\ \hline
5.333333 & 0.7659 & 0.0754 & 0.8457 & 0.0325 & & & 0.022671 & 0.0100 \\ \hline
5.833333 & 0.7470 & 0.0754 & 0.8144 & 0.0313 & & & 0.021293 & 0.0094 \\ \hline
6.333333 & 0.7286 & 0.0754 & 0.7842 & 0.0301 & & & 0.019998 & 0.0088 \\ \hline
6.833333 & 0.7106 & 0.0754 & 0.7552 & 0.0290 & & & 0.018782 & 0.0083 \\ \hline
7.333333 & 0.6930 & 0.0754 & 0.7273 & 0.0280 & & & 0.017641 & 0.0077 \\ \hline
7.833333 & 0.6759 & 0.0754 & 0.7003 & 0.0269 & & & 0.016568 & 0.0073 \\ \hline
8.333333 & 0.6592 & 0.0754 & 0.6744 & 0.0259 & & & 0.015561 & 0.0068 \\ \hline
8.833333 & 0.6430 & 0.0754 & 0.6494 & 0.0250 & & & 0.014615 & 0.0064 \\ \hline
9.333333 & 0.6271 & 0.0754 & 0.6254 & 0.0240 & & & 0.013727 & 0.0060 \\ \hline
9.833333 & 0.6116 & 0.0754 & 0.6023 & 0.0232 & & & 0.381237 & 0.0057 \\ \hline
 & & & & & 0.937132 & 0.042867 & 0.830805 & 0.119195 \\ \hline
 & & & & & & 0.98 & & 0.95 \\ \hline
\end{tabular}
\end{document}
```

Table 4.9: Par Spread Example

$$
= \quad_ {i = 1} ^ {2 n} \frac {C _ {i}}{(1 + \frac {y + s _ {0}}{2}) i}
$$

$$
D = - \frac {d}{ds} \frac {1}{1} = \frac {1}{2 \left(1 + \frac {y + s _ {0}}{2}\right)} \quad_ {i = 1} ^ {2 n} i \frac {c _ {i}}{\left(1 + \frac {y + s _ {0}}{2}\right) i}
$$

Hence, it is extremely similar to the duration of the interest rate. This indicates that the risk of a corporate bond with respect to its spread is just the same as to its yield. We can verify this via the di erentiation method.

The spread 01 is similar to the DV01 in interest rate. We can perturb only one spread in the market or the entire spread curve. Again, the magnitudes are similar to the DV01s in interest rate.

# 4.4.4 Spread Convexity And Spread 10/Spread 25

Often banks compute large shocks in the spread. This is to design to capture some convexity e ect. This is because gammas often times are di cult to compute, especially in a complex portfolio. This is also seen when vega is used to replace gamma.

It captures 1 to $2\%$ in addition to duration. However, large shock sizes can be problematic in situations where spreads are small (then 25 basis shocks will lead to negative spreads).

# 4.5 Liquidity Spread

# 4.5.1 Bid/Ask Spread

The most known liquidity spread is the bid-ask (or bid-o er) spread. Market makers (especially in OTC markets) provide liquidity (help transactions) to the market and then charge b/a spreads as their profit. The higher is the liquidity in the market (i.e. sti er competition), the narrower is the b/a spread.

Unfortunately, OTC markets consist of mostly a handful institution traders and they buy and sell in large quantities. Also note that many fixed income securities have large denominations. Hence, the b/a spreads are always wide.

The dealer's revenue comes from investors who are willing to pay $\mathsf{K}_{\mathsf{a}} - \mathsf{S}$ or $\mathsf{S} - \mathsf{K}_{\mathsf{b}}$ as a price for immediacy where $\mathsf{S}$ is the true
(informed) price, $\mathsf{K}_{\mathsf{a}}$ and $\mathsf{K}_{\mathsf{b}}$ are ask and bid.

The objective of a dealer is to choose the b/a spread which maximizes his/er expected profit:

$$
\max \mathbf {p} \mathbb {E} [ \max \left\{\mathbf {K} _ {\mathrm {a}} - \mathbf {S}, 0 \right\} ] + (1 - \mathbf {p}) \mathbb {E} [ \max \left\{\mathbf {S} - \mathbf {K} _ {\mathrm {b}}, 0 \right\} ]
$$ where $p$ is the percentage of investors who seek to buy and $1 - p$ is the percentage of investors who seek to sell. The former is a put option and the latter is a call option.<sup>3</sup>

An order flow is given in the following example:

In this example, we can see both the sell orders and the buy orders arranged in the order of their prices. The buy orders are arranged in a decreasing order and the sell orders are arranged in an increasing order. It is seen that in the top of the table the two order flows intersect. However, the sell order indicates 59,100 shares and yet the buy order wants a lot more (134,084 shares). This would force the market maker to move a bit in order to accommodate a trade.

Here is another example from the CDS market (taken from Chen, Fabozzi, and Sverdlove). In Table 4.10, we can see on average how bid and ask quotes differ in the CDS market. The data are broken down by credit ratings – AAA, AA, A, BBB,

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/67b391fd7541d5f0ad4b39bec6c3652eaafddc8f92036f122a2f3972e48a5699.jpg)

Figure 4.4: Order Flow and BB and two business sectors (financial and industrial). The total number of observations in their dataset is
9316. The left column of each sector is the liquidity spread estimated with only the hazard factor and the right column is estimated with both the hazard and liquidity factors.

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|}
\hline
 & FIN & INDU & Total & & & \\ \hline
AAA & 2.67% & -0.24% & 0.77% & -0.13% & 1.54% & -0.18% \\ \hline
164 & 240 & 404 & & & & \\ \hline
AA & 1.18% & -0.20% & 13.49% & -0.31% & 8.66% & -0.28% \\ \hline
195 & 386 & 581 & & & & \\ \hline
A & 5.09% & -0.06% & 8.31% & -0.43% & 6.96% & -0.27% \\ \hline
2182 & 3435 & 5617 & & & & \\ \hline
BBB & 2.82% & -0.24% & 3.87% & -0.10% & 3.78% & -0.11% \\ \hline
191 & 2022 & 2213 & & & & \\ \hline
BB & 0.32% & -0.25% & 2.67% & 0.09% & 1.04% & 0.22% \\ \hline
181 & 144 & 325 & & & & \\ \hline
Total & 4.21% & -0.07% & 6.69% & -0.29% & 5.75% & -0.21% \\ \hline
2913 & 6261 & 9316 & & & & \\ \hline
\end{tabular}
\end{document}
```

Table 4.10: Percentage difference between Mid-implied and Ask-implied Liquidity Spreads

# 4.5.2 Liquidity Gap

This is analogous to the b/a spread analysis. Lack of demand will bring the price down and lack of supply will bring the price up. A former model is provided by

Chen (2014).

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/4bea29a2865a260ebcfbc9f20e03667247ba97e5ed3c32f1fca5a2b2966243ca.jpg)

Figure 4.5: Demand Squeeze

$$
\begin{array}{l} \times
(t) = e ^ {- r (T - t)} KN (- h _ {-}) - V
(t) e ^ {\mu (T - t)} N (- h _ {+}) - \frac {e ^ {\mu (T - t)} - e ^ {r (T - t)}}{e ^ {\mu (T - t)} \left(e ^ {2 (T - t)} - 1\right)} \times \\ \frac {\mathrm {e} ^ {\mu (T - t)}}{\left(\mathrm {e} ^ {\mu^ {2} (T - t)}\right)} \quad K [ N (h _ {-}) - N (h _ {+}) ] + V
(t) \mathrm {e} ^ {\mu (T - t)} \quad N (- h _ {+}) - \mathrm {e} ^ {2 (T - t)} N (- h _ {+} - \quad \overline {{T - t}}) \\ \end{array}
$$ where

$$
\mathsf {h} _ {\pm} = \frac {\ln \mathsf {V} (\mathsf {t}) - \ln \mathsf {K} + (\mu \pm 1 / _ {2} ^ {2}) (\mathsf {T} - \mathsf {t})}{\overline {{\mathsf {T}}} - \mathsf {t}}
$$

To compare, we present the liquid price (put option) as follows:

$$
\mathbf {X}
(t) = \mathbf {K} e ^ {- r (T - t)} \mathbf {N} (- \mathbf {d} _ {-}) - \mathbf {V}
(t) \mathbf {N} (- \mathbf {d} _ {+})
$$ where

$$
\mathbf {d} _ {\pm} = \frac {\ln \mathbf {V} (\mathbf {t}) - \ln \mathbf {K} + \left(\mathbf {r} \pm 1 / 2 ^ {2}\right) (\mathbf {T} - \mathbf {t})}{\overline {{\mathbf {T}}} - \mathbf {t}}
$$

# 4.6 Discount Margin

Investopedia:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/dd2fca3ab3bd2eb852f5ed1b63930cb44096c64d4fb867835ef28bbf117367e8.jpg)

Figure 4.6: Liquidity Discount

"A discount margin
(DM) is the average expected return of a floating-rate security (typically a bond) that's earned in addition to the index underlying, or reference rate of, the security. The size of the discount margin depends on the price of the floating- or variable-rate security. The return of floating-rate securities changes over time, so the discount margin is an estimate based on the security's expected pattern between issue and maturity.

Another way to view the discount margin is to think of it as the spread that, when added to the bond's current reference rate, will equate the bond's cash flows to its current price."

As we have learned in Chapter 2, "bonds and other securities with variable interest rates are usually priced close to their par value. This is because the interest rate
(coupon) on a variable rate bond adjusts to current interest rates based on changes in the bond's reference rate."

"The discount margin is one of the most common calculations: It estimates the security's spread above the reference index that equates the present value of all expected future cash flows to the current market price of the floating rate note.

There are three basic situations involving a discount margin:

- If the price of floating rate security, or floater, is equal to par, the investor's discount margin would be equal to the reset margin.
Due to the tendency for bond prices to converge to par as the bond reaches maturity, the investor can make an additional return over the reset margin if the floating rate bond was priced at a discount. The additional return plus the reset margin equals the discount margin.

- Should the floating rate bond be priced above par, the discount margin would equal the reference rate less the reduced earnings."

From the above description of Investopedia, it is clear that DM is very close to LIBOR spread as LIBOR is a common benchmark for floating rate fixed income securities. Yet, it is not limited to LIBOR but any reference benchmark index interest rate.

Again from Investopedia:

"The discount margin formula is a complicated equation that takes into account the time value of money and typically needs a financial spreadsheet or calculator to calculate accurately. There are seven variables involved in the formula. They are:

$\mathbf{P} =$ the floating rate note's price plus any accrued interest

$c(i) =$ the cash flow received at the end of time period $i$ (include principal in period $n$ )

I
(i) = the assumed index level at time period i

I (1) = the current index level

$\mathbf{d}(\mathbf{i}) =$ number of actual days in period i, assuming the A/360-day count convention $\mathbf{d}(\mathbf{s}) =$ number of days from the start of the time period until settlement date

DM = the discount margin, the variable to solve for

All coupon payments are unknown, with the exception of the first, and must be estimated in order to calculate the discount margin. The formula, which must be solved by iteration to find DM, is as follows:

The current price, $P$, equals the summation of the following fraction for all time periods from the beginning time period to maturity:

$$
P = \begin{array}{c} n \\ i = 1 \end{array} \frac {c
(i) }{1 + \frac {I (1) + DM}{100} \frac {d (1) - d
(s) }{360} \begin{array}{c} i \\ j = 2 \end{array} 1 + \frac {I
(j) + DM}{100} \frac {d
(j) }{360}}
$$

It is easily seen that if $\mathbf{I}(\mathbf{i}) = \mathbf{L}(\mathbf{i})$ which is LIBOR, then $\mathbf{c}(\mathbf{i})$ could be $(\mathsf{L}(\mathbf{i}) + \mathsf{s}_0) \times 100$ and DM is very close to $\mathbf{s}_0$ which is LIBOR spread at current time 0.

# 4.7 Basis

Basis can be regarded as a spread, although it is mostly caused by market imperfections. Since such bases exist and they directly impact P&L's, they must be understood
(modeled) and managed.

# 4.7.1 Futures Basis

Futures basis is the difference between two futures prices with di erent maturities. The following is an example from CME. There are three maturities in the example. Because futures prices will converge to the spot price at the maturity, it is quite popular for futures traders to speculate on the changes in spot.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/fe0dbfa88b9882c90fcc8acf6b6e12ab68a60743275e9c137ed43952017589af.jpg)

Figure 4.7: Treasury Bond Futures
(CME) # 4.7.2 Fx Basis

There are two meanings to FX basis, depending on which market you are in. The first basis is the discrepancy between market quotes and the curve. The other basis is the interest rate differential between two countries, e.g. LIBOR and T bills. This market is usually floating-floating interest rate swap.

# 4.7.3 Cds - Bond Yield Basis

This refers to the difference between bond yield spread and its corresponding CDS spread. Many believe that the major source of the difference is liquidity. Yet market infrastructure has a substantial influence.

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|}
\hline
 & FIN & INDU & Total & & & \\ \hline
AAA & 20.85% & 24.31% & 5.68% & 10.49% & 11.84% & 16.10% \\ \hline
164 & 240 & 404 & & & & \\ \hline
AA & 16.66% & 19.84% & 14.44% & 20.30% & 15.18% & 20.15% \\ \hline
195 & 386 & 581 & & & & \\ \hline
A & 27.60% & 36.72% & 28.18% & 35.69% & 27.95% & 36.09% \\ \hline
2182 & 3435 & 5617 & & & & \\ \hline
BBB & 35.60% & 47.98% & 58.68% & 136.37% & 56.69% & 128.74% \\ \hline
191 & 2022 & 2213 & & & & \\ \hline
BB & 83.20% & 98.68% & 53.88% & 70.55% & 70.21% & 86.22% \\ \hline
181 & 144 & 325 & & & & \\ \hline
Total & 30.46% & 39.48% & 37.46% & 67.78% & 34.70% & 57.90% \\ \hline
2913 & 6261 & 9316 & & & & \\ \hline
\end{tabular}
\end{document}
```

Table 4.11: CDS Spread as a Percentage of Bond Yield

# 4.7.4 Libor Basis

LIBOR basis swaps are swaps of one LIBOR maturity for another LIBOR maturity with a spread added to one of the LIBOR's. One leg of the swap is the 3M LIBOR index rate and the other leg is another LIBOR rate (1M, 6M, or 12M). These basis swaps are used to build LIBOR forward curves for 1M, 6M, and 12M.

# 4.7.5 Libor Treasury Basis

LIBOR is traditionally empirically higher than Treasury rates.

# 4.7.6 Libor Ois Basis

Due to LIBOR scandal, the industry has moved to OIS discounting (see Chapter 2 To build the OIS curve, one needs information from LIBOR-OIS basis swaps.

# 4.8 Gamma And Vega

Finally, we review the related risk measures to convexity. As we know, convexity is similar to gamma which is second order di erentiation with respect to the underlying asset, and hence the similarity is obvious. Vega is the first order di erentiation with respect to the volatility of the underlying asset. How on earth vega is related to convexity?

Lets look at the Taylor's series expansion of equation (3.1) in Chapter 3:

$$
\mathbf {d} \mathbf {P} = \frac {\mathbf {P}}{\mathbf {y}} \underline {{\mathbf {d} \mathbf {y}}} + \frac {{} ^ {2} \mathbf {P}}{\mathbf {y} ^ {2}} \underline {{\mathbf {d} \mathbf {y} ^ {2}}} + \frac {\mathbf {P}}{\mathbf {v}} \underline {{\mathbf {d} \mathbf {v}}} + \frac {\mathbf {P}}{\mathbf {t}} \mathbf {dt} + \mathbf {0} (\mathbf {dt})
$$ where $\underline{y}$ represents the whole yield curve (i.e. vector of yields) and $\underline{v}$ represents the whole volatility curve. The first term is clearly the e-ective duration (i.e. price impact on whole yield curve shift). The second term is the convexity on the whole yield curve. The last term is the vega which the price impact of the volatility curve shift.

In the fixed income world, the P&L is explained by four major factors: delta, gamma, vega, and theta. Note that theta is not a random e ect. It is completely deterministic and known as the roll down e ect (introduced in Chapter 2). Delta is similar to duration and is kept neutral when trading. Gamma and vega are similar to convexity that need to be maximized (see immunizaton in Chapter 3).

# 4.8.1 Supplementary E Ect

Theoretically speaking, vega is the first order risk (V/) but since the volatility is not a traded asset, and also the only way to retrieve the market volatility information is through options, it is regarded as the second order risk, similar to gamma. Hence, often it is used to replace gamma.

But vega is much easier to compute since it is technically a first order differentiation.

# 4.8.2 Complementary E Ect

After all, vega and gamma are not the same. Indeed one is convexity on the underlying asset and the other is the volatility sensitivity of the underlying asset. Theoretically, gamma is caused by the distribution of the underlying asset of a chosen maturity and vega is caused by either jumps (short term) or volatility being random over time (long term).

If a model is accurate, then the two cannot substitute each other as described in the previous subsection.

# Chapter 5

# Interest Rate Swaps

There are many swap contracts very popular in the market place (interest rate swaps, currency swaps, asset swaps, residential property index swap, equity swap, total return swap, credit default swaps,...) In this chapter, we shall introduce interest rate swaps and in Lesson 13 we shall discuss credit default swaps.

# 5.1 Introduction

Interest rate swaps are one of the most liquid interest rate derivative contracts in the marketplace. In its December 2014 statistics release, the Bank for International Settlements reported that interest rate swaps were the largest component of the global OTC derivative market, representing $60\%$, with the notional amount outstanding in OTC interest rate swaps of $381 trillion, and the gross market value of $14 trillion.

An IRS (interest rate swap) is a fixed versus floating swap contract. Usually both legs of the swap contact have the same notional, hence there is no swap of the notional (as opposed to other swaps, e.g. currency swaps, that swap the final notionals.) As a result, it is strictly a coupon swap.

It has associations with forward rate agreements
(FRAs) , and with zero coupon swaps
(ZCSs) which will be discussed toward the end of this chapter.

# 5.2 Comparative Advantage Analysis

The comparative advantage analysis
(CAA) is a classical international trade theory that contends that both countries
(counterparties) will benefit by trading
(swapping) goods. CAA is not a pricing tool. It provides at most the upper and lower bounds of the price of swap.

# 5.2.1 Basic Idea

We start with an example. Let company A be able to borrow in the fixed rate market at $10\%$ and in the floating rate market at $\mathsf{L} + 1\%$. And also let company B be able to borrow in the fixed rate market at $12\%$ and in the floating rate market at $\mathsf{L} + 1.5\%$. The following table summarizes this situation.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/a5956f019b1c07f502b6cf1e395fc83647ca631feb0595d45a72c442b7c1532e.jpg)

Table 5.1: Basic Information

A is better than B in both markets. Yet A is "more better" than B in fixed rate market. Hence A should issue fixed and B should issue floating and they swap.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/7d5dde6b0a0a7e73a6d41f60fbbad7184f39037d269dcfcc6af49b30d64bdaf4.jpg)

Figure 5.1: IRS

A ends up paying $\mathsf{L} + 50$, saving $0.5\%$; B ends up paying $11\%$, saving $1\%$. Total saving $= 1.5\% =$ difference of differences.

We can easily alter the arrangement between the two companies, as follows:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/339c9ef74124d944c8ec60793665f29cafa95787f70204178a2b5f45f22003ad.jpg)

Figure 5.2: IRS

Now, company A gets all the comparative advantage (1.5%) and company B gets nothing. Can you write down another arrangements for this result?

# 5.2.2 With A Financial Intermediary

It is rarely two companies can find each other and engage in an IRS. What happens in reality is that the two companies' a liated banks trade with each other usually and help facilitate an IRS for their clients. Hence a financial intermediary is usually added to the swap diagram, as follows:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/fcc65062f9a1250eee4e02261acd6737de5a1e3f900ae08945d9dd1f56fee219.jpg)

Figure 5.3: IRS

In this case, company A gets 50 bps; company B gets 50 bps, and the bank gets 50 bps. As we can see, the arrangements in this example are arbitrary. We can alter any term in this transaction and provide any comparative advantage to any participating party (the two companies and the bank).

# 5.3 No Arbitrage Analysis

The above CAA explains the motivation and market structure of IRS well. Yet the pricing part is far from reality. In reality, IRS is a liquid market and market makers actively set the swap rates. Corporations or retail investors can only place orders and wait for them to be filled.

# 5.3.1 Irs As A Series Of Forward Contracts

Since the swap market is competitive, swap rates will not deviate from the other interest rates, otherwise arbitrage will take place. As a result, we can derive swap rates from the yield curve.

Assume a two-period example as follows:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/aa187d6b4416c0aadfbf9e8893f74c069c5c939c78ea116b3a72ac87ba38554e.jpg)

Figure 5.4: Time Line

Let $\mathsf{T}_1$ and $\mathsf{T}_2$ be two arbitrary future time points and $\mathsf{P}(\mathsf{t},\mathsf{T}_1)$ and $\mathsf{P}(\mathsf{t},\mathsf{T}_2)$ be two zero coupon bond prices. Then the forward price of $\mathbf{P}(t, T_2)$ at time $T_1$ is

$$
\left(t, T _ {1}, T _ {2}\right) = \frac {P \left(t, T _ {2}\right)}{P \left(t, T _ {1}\right)} \tag {5.1}
$$

This result can be achieved by the following arbitrage argument:

```latex
\begin{document}
\begin{tabular}{|c|c|c|}
\hline t & $T_{1}$ & $T_{2}$ \\ \hline long forward (t,$T_{1}$,$T_{2}$): cost=0 & P($T_{1}$,$T_{2}$) - not nothing & \\ \hline short P (t,$T_{2}$) & -P($T_{1}$,$T_{2}$) & \\ \hline buy units of P (t,$T_{1}$) & & \\ \hline
P (t,$T_{2}$) - P (t,$T_{1}$) & 0 & 0 \\ \hline
\end{tabular}
\end{document}
```

Given that this portfolio has no cash flow in periods $\mathbf{T}_1$ and $\mathbf{T}_{2}$, it should not cost anything today and equation (5.1) is obtained. A forward rate is the rate of return of the forward price:

$$
\mathbf {f} \left(\mathrm {t}, \mathrm {T} _ {1}, \mathrm {T} _ {2}\right) = \frac {1}{\mathrm {T} _ {1} - \mathrm {T} _ {2}} \quad \frac {1}{\left(\mathrm {t}, \mathrm {T} _ {1}, \mathrm {T} _ {2}\right)} - 1
$$

# A Two-Year Example

To get the result of the swap rate being a weighted average of forward rates, we examine the following simple (2pd) example.

Table 5.2: No Arbitrage Argument of Forward Price

```latex
\begin{document}
\begin{tabular}{|c|c|c|}
\hline
2-Period Example & & \\ \hline now & one yr later & two yrs later \\ \hline long swap: cost 0 & 1 - $w_{0}$ & 2 - $w_{0}$ \\ \hline short 1y fwd: cost 0 & $f_{1}$ - 1 & nothing happens \\ \hline short 2y fwd: cost 0 & nothing happens & $f_{2}$ - 2 \\ \hline short ($f_{1}$ - $w_{0}$) of $P_{0}$,1 & -($f_{1}$ - $w_{0}$) & nothing happens \\ \hline short ($f_{2}$ - $w_{0}$) of $P_{0}$,2 & nothing happens & -($f_{2}$ - $w_{0}$) \\ \hline
($f_{1}$ - $w_{0}$) × $P_{0}$,1 & 0 & 0 \\ \hline
+($f_{2}$ - $w_{0}$) × $P_{0}$,2 & & \\ \hline
\end{tabular}
\end{document}
```

Given that the portfolio generates no cash flow in the future, the value of the portfolio today must also be 0 to avoid arbitrage. As a result,

$$
- \left(\mathbf {f} _ {1} - \mathbf {w} _ {0}\right) \times \mathbf {P} _ {0,1} - \left(\mathbf {f} _ {2} - \mathbf {w} _ {0}\right) \times \mathbf {P} _ {0,2} = 0
$$

$$
\mathbf {w} _ {0} = \frac {\mathbf {f} _ {1} \mathbf {P} _ {0,1} + \mathbf {f} _ {2} \mathbf {P} _ {0,2}}{\mathbf {P} _ {0,1} + \mathbf {P} _ {0,2}}
$$

Using the 4-year HL model,

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & spot & fwd & disc fact & weight & $w_{t}$ avg \\ \hline
1 & 5% & 5% & 0.9512 & 0.277907 & 0.013895 \\ \hline
2 & 6% & 7% & 0.8869 & 0.259118 & 0.018138 \\ \hline
3 & 6.50% & 7.50% & 0.8228 & 0.240395 & 0.01803 \\ \hline
4 & 6.80% & 7.70% & 0.7619 & 0.22258 & 0.017139 \\ \hline
 & & pv01 & 3.4228 & swp rate & 0.0672 \\ \hline
\end{tabular}
\end{document}
```

# 5.3.2 Irs As A Portfolio Of Bonds

An alternative way to form a risk-free portfolio (better way because prices as opposed to rates are used):

Table 5.3: HL Example of 4-year Swap Rate

```latex
\begin{document}
\begin{tabular}{|c|c|c|}
\hline
2-Period Example & & \\ \hline now & one yr later & two yrs later \\ \hline long swap: cost 0 short (1 + 1 - $w_{0}$) of $P_{0}$,1 long (1 + $w_{0}$) of $P_{0}$,2 & 1 - $w_{0}$
-(1 + 1 - $w_{0}$)
short (1/$P_{1}$,2) of $P_{1}$,2 & 2 - $w_{0}$ nothing happens
(1 + $w_{0}$) - (1 + 2) \\ \hline
(1 + 1 - $w_{0}$) × $P_{0}$,1 - (1 + $w_{0}$) × $P_{0}$,2 & 0 & 0 \\ \hline
\end{tabular}
\end{document}
```

Note that $1 + _{1} = \frac{1}{P_{0,1}}$ and $1 + _{2} = \frac{1}{P_{1,2}}$. As a result, we have:

$$
\mathbf {w} _ {0} = \frac {1 - \mathbf {P} _ {0,2}}{\mathbf {P} _ {0,1} + \mathbf {P} _ {0,2}}
$$

The term structure is such that:one-year rate is $5\%$ and two-year rate is $7\%$ (hence the forward rate is $9\%$ ) discount factors are:

$$
\begin{array}{l} \mathbf {P} _ {0,1} = \frac {1}{1.05} = 0.9524 \\ \mathbf {P} _ {0,2} = \frac {1}{1.07 ^ {2}} = 0.8734 \\ \end{array}
$$

Hence, the swap rate is:

$$
\mathbf {w} _ {0} = \frac {\mathbf {P} _ {0,1} \mathbf {\Delta} _ {1} + \mathbf {P} _ {0,2} \mathbf {f} _ {2}}{\mathbf {P} _ {0,1} + \mathbf {P} _ {0,2}} = \frac {0.9524 \times 0.05 + 0.8734 \times 0.09}{0.9524 + 0.8734} = \frac {0.1262}{1.8258} = 6.91
$$

The swap rate formula is:

$$ w (t, T _ {n}) = \frac {1 - P (t, T _ {n})}{\underset {i = 1} {\overset {n} {P}} (t, T _ {i})} \tag {5.2}
$$

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
 & disc fact & annuity & swp rate \\ \hline
1 & 0.9524 & 0.9524 & 0.049979 \\ \hline
2 & 0.8900 & 1.8424 & 0.059705 \\ \hline
3 & 0.8278 & 2.6702 & 0.06449 \\ \hline
4 & 0.7686 & 3.4388 & 0.067291 \\ \hline
\end{tabular}
\end{document}
```

Table 5.4: HL Model Swap Rates

This result is unrealistic in that it assumes the same annual frequency of both floating and fixed legs. We know that in reality an IRS has quarterly frequency for the floating leg (due to 3-month LIBOR) and semi-annual frequency for the fixed leg. One might question if the above formula is inaccurate.

Amazingly, the above formula needs no adjustment. While setting up an arbitrage argument/trading for a real swap that has di erent frequencies (quarterly for floating and semi-annual for fixed) is more di cult, the mathematical proof is very straightforward. I provide that in the Appendix. $^1$

# 5.4 Swap Value

A swap contract has 0 value at beginning (in that the floating leg value must equal to the fixed leg value) but as time passes it will have a positive or negative value afterwards. If it has a positive value (rates rise) then it is called "in-the-money"; and otherwise it is called "out-of-the-money".

To compute the swap value, one can easily perform as reverse swap and monetize the moneyness of the swap contract, or one can cancel the swap with one's counterparty for the same cash.

# 5.4.1 Reverse Swap

If the swap is in the money, then one can monetize by doing a reverse swap. For example, (assuming annual payments) at year 0, a 5-yr swap rate is $10\%$ (in exchange for LIBOR). After 1 year, the 4-yr swap rate (hence mature in year 5) is $12\%$. In this situation, the swap is in the money by $2\%$. The owner of the swap can do a reverse swap (pay floating and receive $12\%$ ) and in doing so, he nets in $2\%$ for the next 4 years.

Assume the yield curve to be flat (and hence the yields are equal to the current swap rate of $12\%$ ) and a 4-year annuity value is 3.0373 and the swap value is:

$$
(2 \%) (3.0373) (\text {notional}) = 6.0704 \% \times \\ $100,000 = $6,070.$
$$

In our HL example, the 4-year swap rate is $6.7291\%$ (see Table 5.4). After 1 year, if the year curve has become:

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline yr & disc fact & annuity & swp rate & swp val & $100,000 \\ \hline
2 & 0.934481 & 0.934481 & & & \\ \hline
3 & 0.869173 & 1.803654 & & & \\ \hline
4 & 0.807014 & 2.610668 & 7.3922% & 1.7312% & $1,731 \\ \hline
\end{tabular}
\end{document}
```

Table 5.5: Swap Value

In the example, the new yield curve results in a (3-year) new swap rate of $7.3922\%$. Hence the swap value is:

$$
((7.3922 - 6.7291) \%) (\text {pv01} (\text {notional}) = 0.6631 \% \times 2.6107 \times \\ $ 100,000 = $ 1,731.
$$

The general equation for the swap value at any future time $s$ is:

$$
\mathsf {V} _ {\text {swap}} (\mathsf {s}) = \left(\mathsf {w} \left(\mathsf {s}, \mathsf {T} _ {\mathsf {n}}\right) - \mathsf {w} \left(\mathsf {t}, \mathsf {T} _ {\mathsf {n}}\right)\right) \quad \begin{array}{c} n \\ \mathsf {i} = \mathsf {k} \end{array} \mathsf {P} \left(\mathsf {s}, \mathsf {T} _ {\mathsf {i}}\right)
$$ where $T_{k-1} < s < T_k$. It is quite straightforward to mathematically derive the swap value. Nevertheless, a reverse swap is the easiest and the most intuitive way to obtain such value.

SEE EXCEL

# 5.4.2 Another Calculation

The two counterparties exchange only swap rate and LIBOR at each fixing date. There is no notional exchange at maturity. However, if we add the notional to both legs (so that they cancel), then we e ectively turn the floating leg into a LIBOR floater and the fixed leg into a fixed rate bond with the swap rate being the coupon rate.

We know that LIBOR floaters are always at par at coupon dates. The fixed rate bond is also at par at inception (the coupon of the fixed rate bond is set so that the swap has 0 value).<sup>2</sup>

The fixed leg can then be viewed as a fixed rate bond and the floating leg can be viewed as a floater:

$$
\begin{array}{l} 1 = \left(\mathbf {t}, \underline {{\mathbf {T}}}, \mathbf {w}\right) = \underset {\mathbf {i} = 1} {\overset {\mathbf {n}} {\operatorname {w}}} \mathbf {w} \left(\mathbf {t}, \mathbf {T} _ {\mathbf {n}}\right) \mathbf {P} \left(\mathbf {t}, \mathbf {T} _ {\mathbf {i}}\right) + \mathbf {P} \left(\mathbf {t}, \mathbf {T} _ {\mathbf {n}}\right) \\ 1 = \underset {\mathbf {j} = 1} {\overset {n} {\operatorname {P}}} (\mathbf {t}, \mathbf {T} _ {\mathbf {j}}) \mathbf {f} (\mathbf {t}, \mathbf {T} _ {\mathbf {j} - 1}, \mathbf {T} _ {\mathbf {j}}) + \mathbf {P} (\mathbf {t}, \mathbf {T} _ {\mathbf {n}}) \\ \end{array}
$$

Note that di erent from equation (2.12), here both fixed leg (top equation) and floating leg (bottom equation) are added a face value (and therefore its discount factors are $\mathsf{P}(t, T_n)$ for the fixed leg and $\mathsf{P}(t, T_n)$ for the floating leg respectively. The fixed leg then becomes a fixed rate bond with a coupon of the swap rate $(t, \underline{T}, w)$ and the floating leg is by definition (see Chapter 2 for the floater discussions) par. Since at inception the fixed leg is also at par (i.e. $(t, \underline{T}, w) = 1$ ), the swap contract is at 0 value.

Over time, the floating leg remains at par and yet the fixed leg will move away from par as the swap rate changes (as a result of yield curve changes which is a consequence of economic conditions change). For example, lets assume a 10 year swap. After one year,

$$
\begin{array}{l} (T _ {1}, \underline {{T}}, w) = \underset {i = 2} {\overset {n} {\operatorname {w}}} w (t, T _ {n}) P \left(T _ {1}, T _ {i}\right) + P \left(T _ {1}, T _ {n}\right) \\ 1 = \underset {\mathbf {j} = 2} {\overset {n} {\operatorname {P}}} (\mathsf {T} _ {1}, \mathsf {T} _ {\mathbf {j}}) \mathsf {f} (\mathsf {T} _ {1}, \mathsf {T} _ {\mathbf {j} - 1}, \mathsf {T} _ {\mathbf {j}}) + \mathsf {P} (\mathsf {T} _ {1}, \mathsf {T} _ {\mathbf {n}}) \\ \end{array}
$$ and $(T_{1}, T, w) = 1$. Then the swap value is:

$$
\begin{array}{l} V _ {swap} (T _ {1}) = 1 - \quad (T _ {1}, I, W) \\ = 0 \\ \end{array}
$$ because $w(T_1, T_n) = w(t, T_n)$ as interest rates have moved.

Using the same HL example before, we can easily verify that at inception the two legs have the same value:

```latex
\begin{document}
\begin{tabular}{|c|c|c|}
\hline yr & disc fact & fixed leg \\ \hline
1 & 0.9524 & 0.067291 \\ \hline
2 & 0.8900 & 0.067291 \\ \hline
3 & 0.8278 & 0.067291 \\ \hline
4 & 0.7686 & 1.067291 \\ \hline
 & PV= & 1 \\ \hline
\end{tabular}
\end{document}
```

As a result, the swap has no value. In a year, the yield curve has changed and the bond is no longer at par:

Table 5.6: Fixed Leg Value
(par) ```latex
\begin{document}
\begin{tabular}{|c|c|c|}
\hline yr & disc fact & fixed leg \\ \hline
2 & 0.934481 & 0.067291 \\ \hline
3 & 0.869173 & 0.067291 \\ \hline
4 & 0.807014 & 1.067291 \\ \hline
 & PV= & 0.982688 \\ \hline
\end{tabular}
\end{document}
```

Table 5.7: New Fixed Leg Value (not par)

Now the bond price is equal to 0.9827 but the floating leg is still
1. Hence, the difference between the two legs is the swap value: $1 - 0.9827 = 0.01731$ or $$1,731$ (per notional of $$ 100,000 $).

Note that in reality, the floating leg of the swap is quarterly and the fixed leg is semi-annual. The fixed leg has 20 semi-annual periods and the floating leg has 40 quarters. Hence the formula needs to be adjusted as:

$$
1 = \quad (t, \underline {{T}}, w) = \quad_ {i = 1} ^ {2 n} w (t, T _ {2 n}) P (t, T _ {i}) + P (t, T _ {2 n})
$$

$$
1 = \begin{array}{c} 4 m \\ j = 1 \end{array} P (t, T _ {j}) f (t, T _ {j - 1}, T _ {j}) + P (t, T _ {4 m})
$$ where $T_{4m} = T_{2n}$ is the tenor of the swap (in years). At inception, the swap has equal value as both legs are priced at par. In three months, i.e. $T_j = T_1 = 1/4$. Then

$$
\left(\frac {1}{4}, \underline {{\mathbf {T}}}, \mathbf {w}\right) = \quad_ {\mathrm {i} = 1} ^ {2 \mathrm {n}} \mathbf {w} \left(\mathrm {t}, \mathrm {T} _ {2 \mathrm {n}}\right) \mathbf {P} \left(\frac {1}{4}, \mathrm {T} _ {\mathrm {i}}\right) + \mathbf {P} \left(\frac {1}{4}, \mathrm {T} _ {2 \mathrm {n}}\right)
$$

$$
1 = \begin{array}{c} 4 m \\ j = 2 \end{array} P \left(\frac {1}{4}, T _ {j}\right) f \left(\frac {1}{4}, T _ {j - 1}, T _ {j}\right) + P \left(\frac {1}{4}, T _ {4 m}\right)
$$

# 5.4.3 Dv01/Pv01

An IRS is "at the money" at inception. But over time it can be either in or out of the money, as the swap rate moves up or down. The value is equal to:

$$
\mathbf {V} _ {\text {swap}} (\mathbf {s}) = \mathbf {N} \quad \begin{array}{c} 2 n \\ i = 1 \end{array} \left(\mathbf {w} (\mathbf {s}, T _ {2 n}) - \mathbf {w} (\mathbf {t}, T _ {2 n})\right) \mathbf {P} \left(\mathbf {s}, T _ {i}\right)
$$ for $s > t$, is a result of doing a reverse swap. Hence the DV01/PV01 is:

$$
\frac {\mathbf {V}}{\mathbf {w} \left(\mathbf {t}, \mathbf {T} _ {2 n}\right)} = \mathbf {N} \quad_ {i = 1} ^ {2 n} \mathbf {P} \left(\mathbf {s}, \mathbf {T} _ {i}\right)
$$ which is the risk-free annuity. Following the same example, we have:
 disc fact

2 0.934481
3 0.869173
4 0.807014

DV01 2.610668

Table 5.8: DV01/PV01

# 5.4.4 Swaption

Swaps in general come with a cancellation clause. That is, to avoid the trouble of doing the reverse swap, ISDA regulates counterparties that must allow cancellations and out-of-money side should pay the its counterparty the present value of the future cash flows (i.e. value of the swap). This right to cancel is a put option of the swap. It is like buying a receiver swaption struck at the current swap rate. Certainly the option to cancel is an American (more precisely Bermudan) option that permits cancellation any time till maturity and a receiver swaption is a European option.

Another option which is opposite to cancellation is the option to enter a swap. There is a strike swap rate at which the owner of the option can enter a swap. As a result, if the market swap rate at the time of entering is higher than the strike swap rate, then the buyer makes money. This is a call option.

The payoff of the option is:

$$
\max \{w (s, T _ {n}) - w _ {K}, 0 \} \quad \begin{array}{c} n \\ i = 1 \end{array} P (s, T _ {i})
$$

This is known as the payer option. A receiver option is the same option but to enter a short swap (i.e. pay floating). In this situation, the option has value when the swap rate falls:

$$
\max \left\{\mathsf {w} _ {\mathsf {K}} - \mathsf {w} (\mathsf {s}, \mathsf {T} _ {\mathsf {n}}), 0 \right\} \quad \begin{array}{c} n \\ i = 1 \end{array} \mathsf {P} \left(\mathsf {s}, \mathsf {T} _ {\mathsf {i}}\right)
$$

A quick approximation to roughly estimate the option value is to use the Black-Scholes model. That is, we assume that the swap rate follows a log-normal process. Then we can use the Black-Scholes formula to value $\max \{w - K, 0\}$ and then multiply Black-Scholes value by $P(s, T_i)$ which is assumed known today (i.e. using the forward curve).

Industry uses the Black (which is same as Black-Scholes) model for swaptions. We know from risk-neutral pricing, the Black-Scholes model can be derived as:

$$
\begin{array}{l} \mathbf {C} = \hat {\mathbb {E}} _ {t} \exp - \mathbf {\Phi} _ {t} ^ {s} r
(u) \max \left\{w \left(s, T _ {n}\right) - w _ {K}, 0 \right\} \quad \mathbf {\Phi} _ {i = 1} ^ {n} P \left(s, T _ {i}\right) \\ = \mathbf {P} (t, s) \tilde {\mathbb {E}} _ {t} ^ {(s)} \max \left\{\mathbf {w} (s, T _ {n}) - w _ {K}, 0 \right\} \quad \begin{array}{l} n \\ i = 1 \end{array} \mathbf {P} (s, T _ {i}) \tag {5.3} \\ = \mathsf {P} (t, s) [ \bar {w} (s, T _ {n}) \mathsf {N} (d _ {+}) - \mathsf {P} (t, s) w _ {K} \mathsf {N} (d _ {-}) ] \quad \begin{array}{l} n \\ i = 1 \end{array} (\mathsf {t}, s, T _ {i}) \\ \end{array}
$$ where

$$
\begin{array}{l} \mathbf {d} _ {\pm} = \frac {\ln \bar {w} (\mathbf {s}, \mathbf {T} _ {\mathrm {n}}) - \ln w _ {\mathrm {K}}}{\overline {{\mathbf {v} (\mathbf {t}, \mathbf {s}, \mathbf {T} _ {\mathrm {n}})}}} \pm \frac {1}{2} \mathbf {v} (\mathbf {t}, \mathbf {s}, \mathbf {T} _ {\mathrm {n}}) \\ \mathbf {v} ^ {2} (\mathbf {t}, \mathbf {s}, \mathbf {T} _ {\mathbf {n}}) = \mathbb {V} [ \ln w (\mathbf {s}, \mathbf {T} _ {\mathbf {n}}) ] \\ \end{array}
$$

$\bar{w}$ is the forward swap rate, $\hat{\mathbb{E}}_t$ and $\tilde{\mathbb{E}}_{\mathrm{t}}^{(\mathrm{s})}$ are risk-neutral and s-forward measures respectively0.3

Using the same example as before, we evaluate a one-year option to enter a three-year swap (one into three or $1 \times 3$ ). The following table shows today's discount curve and forward curve:

```latex
\begin{document}
\begin{tabular}{|c|c|c|}
\hline
 & disc fact & fwd curve \\ \hline
1 & 0.9524 & \\ \hline
2 & 0.8900 & 0.934481 \\ \hline
3 & 0.8278 & 0.869173 \\ \hline
4 & 0.7686 & 0.807014 \\ \hline sum & 3.4388 & 2.6107 \\ \hline
\end{tabular}
\end{document}
```

Table 5.9: Discount and Forward Curves

The forward swap rate is $7.3922\%$ ( $= (1 - 0.8070) / 2.6107$ ). Assume a volatility of $25\%$ and a strike swap rate of $6.5\%$. Then, we can compute the Black call option value as $0.007363 \, (\mathsf{d}_{+} = 0.54575$ and $\mathsf{d}_{-} = 0.48325$ ). Then, the swaption value is $$1,922.23$ ( $= 0.007363 \times 2.6107 \times 100,000$ ).

Swaptions are a very active market. Various option maturities into various swap tenors $(\mathbf{x} \times \mathbf{y})$ at various strikes are actively quoted. Liquidity, however, concentrates mostly on ATM swaptions.

For the Black (Black-Scholes) model to hold, one must accept that:

- there exists a swap measure under the s-forward expectation and
- the swap rate follows a log-normal distribution (as assumed in the Black-Scholes model)

Unfortunately, none of the above two conditions can be true. The condition for the first requirement to hold is the existence of the swap measure, which can only be true under the extreme case. The second requirement essentially demands a weighted sum of interest rates to follow a log-normal distribution, which contradicts all existing interest rate models.<sup>4</sup>

Nevertheless, the swaption market continues to assume it did and submit quotes in terms of the Black volatility. Users must convert them to prices using the Black formula.

Here is the swaption volatility matrix
(ATM) ```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & & sw aptenor & & & \\ \hline
 & & 1Y & 2Y &... & 30Y \\ \hline o & 3M & & & & \\ \hline p & 6M & & & & \\ \hline t & 9M & & & & \\ \hline
 & 1Y & & & & \\ \hline m & 2Y & & & & \\ \hline a &: & & & & \\ \hline t & 20Y & & & & \\ \hline
\end{tabular}
\end{document}
```

Table 5.10: Swaption Vol Matrix

Detailed discussions of the volatility surface of ATM swaptions are given in Chapter
10. As in equities, the swaption market provides useful information about future volatilities of swaps.

A more correct way to evaluate swaptions is to model them via options on coupon bonds. Given that floater at any reset date is priced at par, we can then rewrite equation (5.3) as follows (we assume the option maturity date $s$ is a reset date):

$$
\begin{array}{l} \mathbf {C} = \hat {\mathbb {E}} _ {t} \exp - \begin{array}{l} s \\ t \end{array} r
(u) \max \left\{w \left(s, T _ {n}\right) - w _ {K}, 0 \right\} \quad \begin{array}{l} n \\ i = 1 \end{array} P \left(s, T _ {i}\right) \tag {5.4} \\ = \hat {\mathbb {E}} _ {t} \exp - \int_ {t} ^ {s} r
(u) \max \left\{1 - \left(s, \underline {{T}}, w _ {K}\right), 0 \right\} \\ \end{array}
$$

Note that the above formula is precisely the coupon bond option pricing formula. Note that the call option on swap rate now is a put option on the coupon bond (with the strike price at 1). I will discuss how to evaluate this formula in Chapter??

# 5.4.5 Exposure

After the global financial crisis in 2008, counterparty exposures have become crucial for banks to closely monitor. A swap contract that usually lasts decades with the counterparty is more important than any other contract to calculate and manage its exposure.

Exposure is like a call option. From the fixed leg's perspective, when interest rates rise (so will the swap rate), it is in-the-money and if its counterparty defaults, then it will not be able to cash in the payoff, hence losing money. This is a potential loss in the future. Hence its value is equal to the option to cancel (since it cannot be canceled due to counterparty default).

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/68cfe63be194f273545f0f73b4ccae03ebcb20fe29a270f5280fe2dec99c66a3.jpg)

Figure 5.5: Exposure

This can be easily computed by the Black-Scholes model. However, the exposure to a counterparty is an American option and the Black-Scholes model can only compute European values. The actual calculation of a swap exposure is complex (see CVA in the lecture notes of RM).

# 5.5 Fra And Zcs

As explained earlier, FRA is closely related to IRS.
 iotafinance.com:

"A forward rate agreement
(FRA) is a cash-settled OTC contract between two counterparties, where the buyer is borrowing (and the seller is lending) a notional sum at a fixed interest rate (the FRA rate) and for a specified period of time starting at an agreed date in the future.

An FRA is basically a forward-starting loan, but without the exchange of the principal. The notional amount is simply used to calculate interest payments. By enabling market participants to trade today at an interest rate that will be e- cutive at some point in the future, FRAs allow them to hedge their interest rate exposure on future engagements.

Concretely, the buyer of the FRA, who locks in a borrowing rate, will be protected against a rise in interest rates and the seller, who obtains a fixed lending rate, will be protected against a fall in interest rates. If the interest rates neither fall nor rise, nobody will benefit.

The life of an FRA is composed of two periods of time – the waiting period, or forward, and the contract period. The waiting period is the period up until the start of the notional loan and may last up to 12 months although durations of up to 6 months are most common. The contract period spans the duration of the notional loan and can also last up to 12 months."

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/a1cb81d94dcb235970031af36810c108db6a32dd21666949d45e9e3deb2ce067.jpg)

Figure 5.6: Forward Rate Agreement

FRAs are used very commonly in mortgages. When applying for a mortgage, usually a commitment is granted for 3 to 6 months for the home buyer to be able to close the property. To avoid rate fluctuations during this commitment period, mortgage granting banks will seek a equal period FRA to lock in an interest rate.

A zero coupon swap
(ZCS) is a variety of IRS where the fixed leg pays no periodic fixed coupons but only one principal at maturity. In other words, a ZCS is an exchange of cash flows in which the stream of floating interest-rate payments is made periodically, as it would be in a plain vanilla swap, but where the stream of fixed-rate payments is made as one lump-sum payment at the time when the swap reaches maturity, instead of periodically over the life of the swap.

Continuing the previous HL example,

```latex
\begin{document}
\begin{tabular}{|c|c|c|}
\hline
 & disc fact & fwd \\ \hline
1 & 0.9524 & 0.049979 \\ \hline
2 & 0.89 & 0.070112 \\ \hline
3 & 0.8278 & 0.075139 \\ \hline
4 & 0.7686 & 0.077023 \\ \hline
\end{tabular}
\end{document}
```

For a 4-year ZCS, the notional is:

$$
0.3011 = \frac {0.9524 \times 0.04998 + 0.89 \times 0.07011 +}{\frac {0.8278 \times 0.07513 + 0.7686 \times 0.07702}{0.7686}}
$$

Following the same calculation, we can obtain ZCS for all tenors as follows:

Table 5.11: 4Y ZCS

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
 & disc fact & fwd & ZCS \\ \hline
1 & 0.9524 & 0.049979 & 0.049979 \\ \hline
2 & 0.89 & 0.070112 & 0.123596 \\ \hline
3 & 0.8278 & 0.075139 & 0.208021 \\ \hline
4 & 0.7686 & 0.077023 & 0.301067 \\ \hline
\end{tabular}
\end{document}
```

Table 5.12: 4Y ZCS

# 5.6 Overnight Index Swap
(Ois) # Wikipedia:

An overnight indexed swap
(OIS) is an interest rate swap over some fixed term where the periodic floating payment is generally based on a return calculated from a daily compound interest investment. Note that the swap term is not over-night; it is the reference rate that is an overnight rate. The swap exchanges a fixed term rate for the variable geometric average of the reference daily or overnight rate compounded over the term of the swap. The reference for a daily compounded rate is an overnight rate (or overnight index rate) and the exact averaging formula depends on the type of such rate.

Main page:
 https://www.bis.org/statistics/derstats.htm

IRS:
 https://stats.bis.org/statx/srs/table/d5.1

CDS:
 https://stats.bis.org/statx/srs/table/d5.2

# 5.6.1 Floating Leg

An OIS, or Overnight Index Swap, is an interest rate swap whose floating leg payments are calculated as a geometric average of the daily fixings of some underlying O/N
(overnight) or T/N (tomorrow next index (these indices are generally volume-weighted averages of reported daily transactions). The annualized floating leg rate is defined as

$$
\mathbf {c} ^ {\text {f l t}} (\mathbf {t}, \mathbf {n}) = \frac {\underset {\mathbf {i} = 1} {\mathrm {n}} (1 + \mathbf {r} _ {\mathbf {i}} (1)) - 1}{(\mathbf {n})}
$$ where $n$ is the number of days from the first fixing day of the coupon period, $r$ is the value of the underlying index at time $t$, and $(\cdot)$ is the year fraction according to an appropriate day count convention.

For example, two parties enter into an OIS contract. The notional amount is £100 million. It starts today and finishes in 4 working days (today included). The reference index is SONIA (Sterling Overnight Index Average) Index. Party A agrees to pay a fixed overnight rate of $0.74\%$.

Each day that goes by, the Bank of England will publish a new SONIA rate; we end up with the following:
 day SONIA %

1 0.735
2 0.735
3 0.733
4 0.736

Table 5.13: SONIA

The first thing we can do is calculate the value of the floating leg of the contract (convention is A/360):

$$
\begin{array}{l} 1 + 0.736\% \times \frac{1}{360} \quad 1 + 0.733\% \times \frac{1}{360} \quad 1 + 0.735\% \times \frac{1}{360} ^{2} - 1 \div \frac{4}{360} \\ = 0.734773 \% \\ \end{array}
$$ which is £734,773 and is exchanged for the fixed leg payment of £740,000.

As in any swap, the fixed leg amount is calculated at inception of the swap to have 0 NPV.

# 5.6.2 Ois Curve From Https://Finpricing. Com/

The most liquid instruments that can be used to build OIS curve are Fed Fund Futures and OIS swaps that pay at the daily compounded Fed Fund rate. However, Fed Fund Futures are currently only liquid up to two years and OIS swaps up to ten years. Beyond ten years, the most liquid instruments are Fed Fund versus 3M LIBOR basis swaps, which are liquid up to thirty years.
 from https://quant.stackexchange.com/questions/49973/overnight-index-swaps-ais-vs-fed-funds-futures

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/184d79bc37d8fa34151ae12ad2dc82336a0d762b0678671b6141967eef1f60f5.jpg)

Figure 5.7: Fed Fund Futures

OIS is based on swaps of a fixed interest rate versus a floating rate that is calculated by compounding the daily overnight Fed Funds rate. The overnight Fed Funds rate is treated as the interest rate for discounting so that there is a direct relationship between the compounding of this daily interest rate and the discount function. The discount function $\mathsf{D}(0, T)$ is derived from market input quotes by setting the net present value
(NPV) of each swap to be equal to zero. For OIS with one cash flow, the fixed rate is swapped versus the compounding of the Fed Funds rate, and the net present value
(NPV) is calculated as follows.

$$
0 = \mathbf {N P V} = \mathbf {P} (t, T) \times w (t, T) \times \frac {\text {d a y s} (t, T)}{360} - \mathbf {P} (t, T) \times \quad \begin{array}{l l l} n - 1 & 1 + \frac {r _ {i}}{360} & - 1 \end{array}
$$ where $w(t, T)$ is the fixed swap rate for maturity $T$, $r_i$ is the daily Fed Funds rate for day $i$, $n$ is the total number of days, and

$$
T - t = \frac {n}{\text {d a y s p e r y e a r}}
$$

Given a set of market input quotes for swaps with NPV = 0, one can calculate the discount function for all of the maturity dates associated with the market quotes.

# 5.7 Basis Swaps

A basis swap is an exchange of one floating rate for another. It could be the exchange of USD LIBOR for USD OIS or vice versa.

Basis risk occurs for positions that have at least one paying and one receiving stream of cash flows that are driven by different factors and the correlation between those factors is less than one. Entering into a basis swap may set the eect of gains or losses resulting from changes in the basis, thus reducing basis risk. Here are some examples:

- against exposure to currency fluctuations (for example, 1 mo USD LIBOR for 1 mo GBP LIBOR)
- against one index in the favor of another (for example, 1 mo USD T-bill for 1 mo USD LIBOR)
- di erent points on a yield curve (for example, 1 mo USD LIBOR for 6 mo USD LIBOR)

# 5.7.1 Libor Basis Swap

The standard U. S. LIBOR curve methodology builds a forward rate curve for 3-month LIBOR. Additional LIBOR forward curves are built for 1-month, 6-month, and 12-month LIBOR using the market quotes for basis swaps. LIBOR basis swaps are swaps of LIBOR of any tenor for 3-month LIBOR with a spread added to the target LIBOR (3-month LIBOR in the U. S. market). The basis swaps are used to build LIBOR forward curves for 1M, 6M, and 12M. The basis swap contracts range from 1 year to 30 years.

A basis swap is a swap of two different LIBOR floating rates in which one leg is based on 3-month LIBOR and one of the legs includes a spread. The other LIBOR floating rate can be 1-month LIBOR, 6-month LIBOR, or 12-month LIBOR. The maturities for these swaps range from 1 year to 30 years. The swap valuation for a swap of 1-month LIBOR versus 3-month LIBOR, with a maturity of N years, is based on the following formula.

$$
\begin{array}{l} \mathbf {N P V} = \begin{array}{l l} & ^ {1 2 n} _ {i = 1} \mathbf {P} (t, T _ {i}) \times (f (t, T _ {i - 1}, T _ {i}) + s _ {1 m, n}) \times \\ & \frac {\text {d a y s} (T _ {i - 1}, T _ {i})}{360} \end{array} \\ - \quad_ {\mathrm {j} = 1} ^ {4 \mathrm {m}} \mathrm {P} \left(\mathrm {t}, \mathrm {T} _ {\mathrm {j}}\right) \times \mathrm {f} \left(\mathrm {t}, \mathrm {T} _ {\mathrm {j} - 1}, \mathrm {T} _ {\mathrm {j}}\right) \times \quad \frac {\text {d a y s} \left(\mathrm {T} _ {\mathrm {j} - 1}, \mathrm {T} _ {\mathrm {j}}\right)}{360} \\ \end{array}
$$ where $f(t, T_{i-1}, T_i)$ is the forward 1-month LIBOR (since $T_i - T_{i-1} = 1m$ and $s_{1m, N}$ is the spread associated with the basis swap for 1-month LIBOR with maturity $T_{12n}$ or $T_{4m}$ ). The discount function for these swaps is the OIS discount function. The 3-month LIBOR forward rates are taken from the 3-month LIBOR forward rate curve, which is built prior to building the additional LIBOR forward rate curves from basis swaps.

The goal is to build forward rate curve $\mathbf{f}(t, T_{i-1}, T_i)$ (which is monthly) and $\mathbf{f}(t, T_{j-1}, T_j)$ (which is quarterly) for the di erent LIBORs by setting the NPV for the basis swaps to zero. Bootstrapping is used to build the curve sequentially: the forward rate curve is extended to the maturity of each market swap so that the NPV for the swap is zero.

# 5.8 Appendix

# Swap Rate Derivation

At inception, the two legs must have the same value:

$$
V _ {f x} = V _ {f t}
$$

The fixed leg is an annuity of the swap rate and the floating leg is the discounted expected value of
(random) LIBOR rates:

$$
\begin{array}{l} _ {i = 1} ^ {2 n} w (t, T _ {2 n}) \hat {\mathbb {E}} \exp - \quad_ {t} ^ {T _ {i}} r
(u) d u \\ = & _ {j = 1} ^ {4 m} \hat {\mathbb {E}} \exp - \quad_ {t} ^ {T _ {j}} r
(u) d u L (T _ {j}, T _ {j} + 1 / 4) \end{array}
$$ where $\mathsf{T}_{4\mathfrak{m}} = \mathsf{T}_{2\mathfrak{n}}$. Hence, we can solve for the fixed swap rate as:

$$ w (t, T _ {2 n}) \quad_ {i = 1} ^ {2 n} P (t, T _ {i}) = \quad_ {j = 1} ^ {4 m} P (t, T _ {j}) f (t, T _ {j}, T _ {j} + 1 / 4)
$$

$$ w (t, T _ {2 n}) = \frac {\mathbf {\Pi} _ {j = 1} ^ {4 m} P (t, T _ {j}) f (t, T _ {j}, T _ {j} + 1 / 4)}{\mathbf {\Pi} _ {i = 1} ^ {2 n} P (t, T _ {i})}
$$

It is worth noting that now the swap rate is no longer the weighted average of forward rates in that the numerator has 4m terms and the denominator has only 2n terms. Yet, note that the numerator, no matter what frequency, can always be simplified into two terminal terms:

$$
\begin{array}{l} \mathbf {P} _ {\mathbf {j} = 1} ^ {4 m} \mathbf {P} (\mathbf {t}, \mathbf {T} _ {\mathbf {j}}) \mathbf {f} (\mathbf {t}, \mathbf {T} _ {\mathbf {j}}, \mathbf {T} _ {\mathbf {j}} + 1 / 4) = \mathbf {P} _ {\mathbf {j} = 1} ^ {4 m} \mathbf {P} (\mathbf {t}, \mathbf {T} _ {\mathbf {j}}) \frac {\mathbf {P} (\mathbf {t}, \mathbf {T} _ {\mathbf {j} - 1})}{\mathbf {P} (\mathbf {t}, \mathbf {T} _ {\mathbf {j}})} - 1 \\ = \begin{array}{c} 4 m \\ j = 1 \end{array} P (t, T _ {j - 1}) - P (t, T _ {j}) \\ = 1 - \mathbf {P} (t, T _ {4 m}) \\ \end{array}
$$ where we recognize that $\mathbf{P}(\mathbf{t},\mathbf{T}_0) = \mathbf{P}(\mathbf{t},\mathbf{t}) = 1$. Note that $\mathbf{P}(\mathbf{t},\mathbf{T}_{4\mathfrak{m}}) = \mathbf{P}(\mathbf{t},\mathbf{T}_{2\mathfrak{n}})$.

# Zero Coupon Swap Derivation

Let $K$ be the notional of the ZCS. Then similar to the regular IRS, we set the NPV to 0:

$$
\begin{array}{l} 0 = \hat {\mathbb {E}} _ {t} \quad \begin{array}{l} n \\ i = 1 \end{array} \exp - \begin{array}{l} T _ {i} \\ t \end{array} r
(u) d u \quad \left(T _ {i - 1}, T _ {i}\right) - \hat {\mathbb {E}} _ {t} \exp - \begin{array}{l} T _ {n} \\ t \end{array} r
(u) d u K \\ = \quad \begin{array}{l} n \\ i = 1 \end{array} P (t, T _ {i}) f (t, T _ {i - 1}, T _ {i}) - K P (t, T _ {n}) \\ \end{array}
$$

Solving for the face value $\mathbf{K}$:

$$
\begin{array}{l} K = \frac {\underset {i = 1} {n} P \left(t, T _ {i}\right) f \left(t, T _ {i - 1}, T _ {i}\right)}{P \left(t, T _ {n}\right)} \\ = \frac {1 - P \left(t, T _ {n}\right)}{P \left(t, T _ {n}\right)} \\ \end{array}
$$

# Chapter 6

# Foreign Currency Swap

# 6.1 Introduction

From a macro perspective, exchange rates are regarded as a symbol of a nation's economic and political strengths. From a micro perspective, exchange rates play a central role in multi-national conglomerates in terms of their profits and investments, and diversification.

In the past decades, most prominent examples are Japan and China. Japan's development after WW2 and China's development after Chairman Deng Xiaoping's lift of the iron curtain have been nothing but phenomenal. Their exchange rates against dollar pretty much tell the whole story.

In this chapter, we will demonstrate calculations related to foreign currency transactions, which include:

- spot

Spot rates reflect the purchasing power parity theorem.

- forwards (and futures)

Forward rates must follow the interest rate parity theorem.

- swaps

This is the most active market and used to build the FX curve.

- options

FX options must obey the international put-call parity theorem.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/140ab14f8b6a2fc0ce3692e45911fa7adc2e2136b58e5f8c0180608518e1bf79.jpg)

Figure 6.1: JPY vs. USD

Due to the nature of exchange rates being the relative worthiness of the purchasing power by the two countries, there is a triangular rule that no-arbitrage must obey.

The most important takeaway of FX markets is the quanto risk premium. If the exchange rate is correlated with interest rates of the two countries, then

# 6.2 Spot Exchange Rate

Exchange rates carry important information about the relative economic strengths of two countries. A strong currency helps its citizens buy foreign goods cheaper and is a symbol of national pride.

It is never enough to emphasize the importance of how exchange rate can help economic development of a country. Often we heard that developing countries like recent China or an earlier Japan try to manipulate the exchange rates in order to export goods to earn foreign reserves. It impacts directly on exports (higher exchange rate (i.e. depreciation of domestic currency) leads to cheaper domestic goods in a foreign country) and imports (lower exchange rate (i.e. appreciation of domestic currency) allows its citizens to consume cheaper foreign goods).

It also indirectly transfer inflation out of or into the country. A weaker currency lures foreign capitals (due to cheaper investments) and fuel money supply and also more expensive imported goods help raise the prices.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/8b279defb5a3905cac8c07421c84f2a7a9a8a7c0270964988c34b133683fcde4.jpg)

Figure 6.2: CNY vs. USD

# 6.2.1 Purchasing Power Parity, Ppp

The first question is how the level of an exchange rate is determined. Fundamentally speaking, it is determined by the purchasing power parity between two countries.

According to Wikipedia:

Purchasing power parity
(PPP) is a measurement of prices in di erent countries that uses the prices of specific goods to compare the absolute purchasing power of the countries' currencies. In many cases, PPP produces an inflation rate that is equal to the price of the basket of goods at one location divided by the price of the basket of goods at a di erent location. The PPP inflation and exchange rate may di er from the market exchange rate because of poverty, tari s, and other transaction costs.

To understand PPP, we can use a classical comparative advantage example (similar to the one used in FX swap later in this chapter and in IRS in Chapter 5). There are two nations and each nation lives one person. This person produces fruit domestically. The American
(A) produces apples and the Brazilian
(B) produces oranges.

```latex
\begin{document}
\begin{tabular}{|c|c|c|}
\hline
A & B & \\ \hline apples & oranges & product \\ \hline
100 & 200 & capacity \\ \hline
1 dollar & 1 real & per product \\ \hline
\end{tabular}
\end{document}
```

Table 6.1: PPP Explained

If A
(America) consumes half of its production and trades half of its production (i.e. 50 apples) with B
(Brazil) for half of its production (i.e. 100 oranges), then the exchange rate between the two countries is 1:2. If the American pays $1 per apple and the Brazilian pays 1 real per orange, then the exchange rate between dollar and real is 1:2 (dollar more expensive). If the Brazilian spends only half real for an orange, then the exchange rate between dollar and real is 1:1. Hence, directly we can see the exchange rate is a factor of money supply.

If Brazil prints a lot of money, then the price of oranges (given same productivity which is 100 oranges) goes up and consequently the value of real goes down and the exchange rate goes in America's favor. This indicates that PPP is also connected to inflation.

The exchange rate between apples versus oranges is known as the "real" exchange rate and the one between dollar and real is "nominal" exchange rate. As seen, the nominal rate includes inflation. This is parallel to the argument between nominal versus real interest rates.

So far, we assume that the productivity of the two nations is same. One can add different productivity levels to the analysis. Let B be more productive than A. Imagine B invents a machine that can double the production of oranges (to 400 oranges). So easily, B can use 200 oranges to trade for 100 apples with A. But A's productivity does not change; so for A to produce 200 apples A will have to work double shifts. So clearly, the quality of life for B is twice as good as for A. In other words, B's purchasing power is twice as A's. While the nominal exchange rate is 1:2, the real exchange rate is 1:1.

# 6.2.2 Triangular Relationship

Define and Y as the exchange rates between the domestic currency (from now on this is assumed to be USD, $) and two other
(any) foreign currencies (from now on this is assumed to be British pound, £, and Japanese yen, ¥). Known as cross-currency arbitrage, exchange rates among
(any) three nations form a closed circle. Their triangular relationship is described as follows:

Then, the exchange rate between £ and ¥ must be:

$$
\mathbf {X} = \begin{array}{c} \hline \end{array}
$$

For example, the exchange rate between dollar and yen is $\mathbf{Y} = 0.01$ (1 dollar = 100 yen) and pound is $= 1.5$ (1 pound = 1.5 dollars). Then in Japan (end of arrow), 1 pound is worth 150 yen.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/4024f7a026ea46a1941e61d1247ae28fb458dd6b82f141f489cfc90fa55cb84e.jpg)

Figure 6.3: Triangle of Three Currencies

Assume log-normally distributed exchange rates. Then,

$$
\ln X = \ln - \ln Y
$$ and

$$
\begin{array}{l} \begin{array}{l} \mathbf {\Omega} _ {\mathbf {X}} ^ {2} = \mathbf {\Omega} ^ {2} + \mathbf {\Omega} _ {\mathbf {Y}} ^ {2} - 2 \mathbf {\Omega} _ {\mathbf {Y}} \end{array} \\ \begin{array}{l} \mathbf {\Sigma} _ {\mathbf {Y}} ^ {2} = \mathbf {\Sigma} ^ {2} + \mathbf {\Sigma} _ {\mathbf {X}} ^ {2} - 2 \mathbf {\Sigma} _ {\mathbf {X}} \end{array} \\ { } ^ { 2 } = \begin{array} { c } 2 \\ \mathbf { x } \end{array} + \begin{array} { c } 2 \\ \mathbf { y } \end{array} + 2 \begin{array} { c } \mathbf { x } \mathbf { y } \end{array} \\ \end{array}
$$

Hence, it is clear that the volatilities of the three exchange rates cannot be arbitrary and are confined by the cross-currency correlations. Furthermore, the correlation matrix must be positive semi-definite (i.e. its determinant must be 0):

$$
\begin{array}{c c c} 1 & _ {1 2} & _ {1 3} \\ _ {1 2} & 1 & _ {2 3} \\ _ {1 3} & _ {2 3} & 1 \end{array} = 1 + 2 _ {1 3} - \left( \begin{array}{c} 2 \\ _ {1 3} + \end{array} _ {1 2} ^ {2} + \begin{array}{c} 2 \\ _ {2 3} \end{array} \right) = 0
$$

If one of them is $100\%$ then the other two must be equal to each other:

$$
\begin{array}{l} 1 + 2 _ {2 3} 1 3 - \left( \begin{array}{l} 2 \\ 1 3 \end{array} + 1 + \begin{array}{l} 2 \\ 2 3 \end{array} \right) = 0 \\ \left( \begin{array}{l l} 1 3 & - \\ & 2 3 \end{array} \right) ^ {2} = 0 \\ _ {1 3} = _ {2 3} \\ \end{array}
$$

If one of them is $-100\%$ then:

$$
\begin{array}{l} 1 - 2 - \left( \begin{array}{l l} 2 & \\ 1 3 & - 1 + \end{array} \right. _ {2 3}) = 0 \\ 2 - \left( \begin{array}{c c} & \\ 1 3 & \end{array} + \begin{array}{c c} & \\ & 2 3 \end{array} \right) ^ {2} = 0 \\ \begin{array}{c c} & \overline {{2}} \\ 1 3 + \quad 2 3 = & - \quad \overline {{2}} \end{array} \\ \end{array}
$$

Such limitations provide arbitrage opportunities (i.e. violation of these limitations present profit opportunities).

# 6.2.3 Exchange Rate And Imports/Exports

# Investopedia:

The relationship between a nation's imports and exports and its exchange rate is complicated because there is a constant feedback loop between international trade and the way a country's currency is valued. The exchange rate has an e ect on the trade surplus or deficit, which in turn a ects the exchange rate, and so on. In general, however, a weaker domestic currency stimulates exports and makes imports more expensive. Conversely, a strong domestic currency hampers exports and makes imports cheaper.

For example, consider an electronic component priced at $10 in the U. S. that will be exported to India. Assume the exchange rate is 50 rupees to the U. S. dollar. Neglecting shipping and other transaction costs such as importing duties for now, the$ 10 electronic component would cost the Indian importer 500 rupees.

If the dollar were to strengthen against the Indian rupee to a level of 55 rupees (to one U. S. dollar), and assuming that the U. S. exporter does not increase the price of the component, its price would increase to 550 rupees ($10 x 55) for the Indian importer. This may force the Indian importer to look for cheaper components from other locations. The $10\%$ appreciation in the dollar versus the rupee has thus diminished the U. S. exporter's competitiveness in the Indian market.

At the same time, assuming again an exchange rate of 50 rupees to one U. S. dollar, consider a garment exporter in India whose primary market is in the U. S. A shirt that the exporter sells for $10 in the U. S. market would result in them receiving 500 rupees when the export proceeds are received (neglecting shipping and other costs).

If the rupee weakens to 55 rupees to one U. S. dollar, the exporter can now sell the shirt for $9.09 to receive the same amount of rupees (500). The $10\%$ depreciation in the rupee versus the dollar has therefore improved the Indian exporter's competitiveness in the U. S. market.

The result of the $10\%$ appreciation of the dollar versus the rupee has rendered U. S. exports of electronic components uncompetitive, but it has made imported Indian shirts cheaper for U. S. consumers. The flip side is that a $10\%$ depreciation of the rupee has improved the competitiveness of Indian garment exports, but has made imports of electronic components more expensive for Indian buyers.

When this scenario is multiplied by millions of transactions, currency moves can have a drastic impact on a country's imports and exports.

# Foreign Reserves

Exports are essential for developing nations to build up their foreign reserves. These foreign reserves are regarded as safety reservoir to maintain economic stability and avoid economic crises such as inflation. For example, dollar reserves have been regarded as equivalent to gold as the most valuable foreign reserve for any nation since the WW2.

# 6.3 Interest Rate Parity, Irp, And Fx Forward

IRP explains the relationship between the spot exchange rate and the forward exchange rate. IRP states that the difference between the two is the interest rate di erential between the two countries. The following table explains. Todya's exchange rate is 1:100 (or $0.01 per yen) and the interest rates in the US and Japan are 5% and 2% respectively.

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline today
(yen) & maturity (in 1 year) \\ \hline exchange rate is 1:100 (quote: $0.01 per yen) & \\ \hline
1-year US rate is 5% & \\ \hline
1-year JP rate is 2% & \\ \hline strategy 1: use US$1 to buy 100 yen (earn 2%) & 102 yen \\ \hline strategy 2: invest US$1 domestically (earn 5%) & $1.05 \\ \hline
\end{tabular}
\end{document}
```

Table 6.2: IRP Explained

So, forward exchange rate must be $102 / 1.05 = 97.14$, i.e. 1:97.14 (quote: 0.0103) or arbitrage should take place.

Mathematically, let $X_0$ be the current exchange rate. Then

$$
\mathbf {R} _ {\mathrm {U S}} = \frac {\frac {1}{\mathbf {X} _ {0}} \mathbf {R} _ {\mathrm {J P}}}{\mathbf {X} _ {1}}
$$

$$
1.05 = \frac {\frac {1}{0.01} \times 1.02}{\mathbf {X} _ {1}}
$$

$$
\mathbf {X} _ {1} = \mathbf {X} _ {0} \frac {\mathbf {R} _ {\mathrm {U S}}}{\mathbf {R} _ {\mathrm {J P}}} = \frac {1}{0.01} \times \frac {1.05}{1.02} = 0.0103
$$

In continuous time, we denote:

$$
\frac {R _ {U S}}{R _ {J P}} = \frac {e ^ {r _ {U S}}}{e ^ {r _ {J P}}} = e ^ {r _ {U S} - r _ {J P}}
$$

Note that forward price does NOT reflect the expected future spot value; but rather a price to lock in to buy a foreign currency in the future. The no-arbitrage condition described above forces the forward price to follow IRP. If one expects that the future spot exchange rate $(\mathbb{E}[\mathsf{X}_1])$ to be higher than the forward, one can sell forward to speculate. But there is risk and risk premium makes:

$$
\mathbb {E} _ {\mathbf {t}} [ \mathbf {X} _ {\mathsf {T}} ] < \quad_ {\mathbf {X}} (\mathbf {t}, \mathsf {T})
$$ where $\mathbf{\chi}_{\mathbf{X}}(\mathbf{t},\mathbf{T})$ is the forward FX rate settled at time T.

# Fx Forward And Fx Futures

Currency forward contracts are the most liquid forward contracts available in the marketplace (unlike other assets where futures contracts are more liquid, due to trading in centralized exchanges). This is because many international corporations use FX forwards to hedge their revenue volatility.

In Chapter 2, we see a Bloomberg screenshot 2.13. Here we have another euro-dollar quotes:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/8fc4d325e89b479ba843242355b48443638a6e2c16d6f40821d4763b61338399.jpg)

Figure 6.4: FX Forward Quotes
(euro) The FX futures are not very liquid. FX futures are traded at exchanges around the world, with the most popular being the Chicago Mercantile Exchange
(CME) .

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/8ae4b0461951e33ef0f2eb50815011dd2703b2c36296e4f27370bd8cee237d04.jpg)

Figure 6.5: FX Futures Quotes (from slideplayer.com)

Note that forward contracts have rolling maturities and futures contracts have fixed maturities. IRP applies to forward prices only. Yet forward and futures prices are close to each other. $^{1}$ A helpful tutorial from CME about the basics of FX futures and be found on https://www.cmegroup.com/education/courses/introduction-to-fx/importance-of-fx-futures-pricing-and-basis.html.

# 6.4 Fx Swaps

FX swaps are one type of interest rate swaps. Yet they are more complex in that there are two different currencies in two legs (hence there is one more dimension to the problem).

# 6.4.1 Comparative Advantage Analysis

As in interest rate swaps in Chapter 5, we begin with the comparative argument by Adam Smith. Assume that companies A (for American) and B (for British)
 have their borrowing costs in their own countries
(domestic) and the other country
(foreign) as follows:

Table 6.3: Add caption

```latex
\begin{document}
\begin{tabular}{|c|c|c|}
\hline
 & US & UK \\ \hline
A & 0.08 & 0.116 \\ \hline
B & 0.1 & 0.12 \\ \hline di & 2 & 0.004 \\ \hline
\end{tabular}
\end{document}
```

Both companies borrow fixed in both countries but we can see the comparative advantages of these companies. They can borrow more cheaply in their own countries and more expensively in the other country. Now, they can engage in a foreign currency
(FX) swap, as described below:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/f3af617162e301a745431b0b10771dc8356ef6f83acfe532caf148085d35bc86.jpg)

Figure 6.6: FX Swap

# 6.4.2 No-Arbitrage
(Trading) Analysis

The comparative advantage analysis explains the motivation of a swap and yet its pricing is pretty arbitrary, not an exact science. In the market, however, the price is determined by the forward curve, or arbitrage will take place.

Note that here we use annual cash flows which are not realistic. The reason why I am not using a realistic frequency is because the daycount conventions in di erent countries are di erent. Also holidays of di erent countries can easily complicate the convention. As a result, I am keeping the examples here simple. Readers must adapt the idea here to a real situation with proper daycount conventions.

# Fixed-Fixed Swap

Given the following domestic discount factors (in the example a discrete annual $5\%$ rate is used and hence the yield is $5\%$ for annually compounded cash flows):

The exchange rate right now is $1.5 per pound. The swap is hence for$ 150 for £100. Assume in both countries the interest rate is (annual compounding) 5%.

```latex
\begin{document}
\begin{tabular}{|c|c|c|}
\hline
 & t = 0 disc fact & t = 1 disc fact \\ \hline
1 & 0.952381 & \\ \hline
2 & 0.907029 & 0.952381 \\ \hline
3 & 0.863838 & 0.907029 \\ \hline
4 & 0.822702 & 0.863838 \\ \hline
5 & 0.783526 & 0.822702 \\ \hline
\end{tabular}
\end{document}
```

Hence in Table 6.7, left box, it show the cash flows in both legs. Since it is a fixed-fixed swap, there is no uncertainty in the cash flows. On the domestic leg, you pay $7.5 which is$ 150 × 5%. On the foreign leg, you receive £5 which is £×5%. If the exchange rate does not change in the next 5 years, then the swap will be net 0 since the two legs have equal value and are net
0. Table 6.4: Domestic Discount Curves

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|}
\hline init int rate & $ £ & t=1 int rate & $ £ & net & & \\ \hline
150 & 100 & 200 & 100 & & & \\ \hline
5% & 5% & 5% & 5% & & & \\ \hline
1 & -7.5 & 5 & & & & \\ \hline
2 & -7.5 & 5 & 2 & 10 & -5 & 2.5 \\ \hline
3 & -7.5 & 5 & 3 & 10 & -5 & 2.5 \\ \hline
4 & -7.5 & 5 & 4 & 10 & -5 & 2.5 \\ \hline
5 & -157.5 & 105 & 5 & 210 & -105 & 52.5 \\ \hline
\end{tabular}
\end{document}
```

Table 6.5: FX Swap Example: Exchange Rate Changes

However, if the situation changes in time
1. The exchange rate rises to $2 per pound. In this case, you will be making (the contract is now called "in-the-money"). To monetize the profit, you can either cancel the contract (and according to ISDA your counterparty must pay you) or equivalently you can engage in a reverse swap as in the right box of Table 6.7. In this reverse swap, you receive domestic cash flows ($10) and pay foreign cash flows (£5). The next is $2.5 for four years. Discounting (using the forward discount factors in Table 6.4) this cash flow stream and sum them up yields $50.

Now, let assume a di erent situation. The exchange rate stays the same but the domestic interest rate changes, from $5\%$ to $8\%$. Then the forward discount factors become:

```latex
\begin{document}
\begin{tabular}{|c|c|c|}
\hline
 & t = 0 & t = 1 \\ \hline
 & disc fact & disc fact \\ \hline
1 & 0.952381 & \\ \hline
2 & 0.907029 & 0.925926 \\ \hline
3 & 0.863838 & 0.857339 \\ \hline
4 & 0.822702 & 0.793832 \\ \hline
5 & 0.783526 & 0.735030 \\ \hline
\end{tabular}
\end{document}
```

Then the reverse swap generates $16 per year, yielding a $8.5 net difference. PV'ing this cash flow stream back using the forward discount factors, we obtain a present value of $64.90.

Table 6.6: Domestic Discount Curves

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|}
\hline init int rate & $
150
5% & £
100
5% & t=1 int rate & $
200
8% & £
100
5% & net \\ \hline
1 & -7.5 & 5 & & & & \\ \hline
2 & -7.5 & 5 & 2 & 16 & -5 & 8.5 \\ \hline
3 & -7.5 & 5 & 3 & 16 & -5 & 8.5 \\ \hline
4 & -7.5 & 5 & 4 & 16 & -5 & 8.5 \\ \hline
5 & -157.5 & 105 & 5 & 216 & -105 & 58.5 \\ \hline
\end{tabular}
\end{document}
```

Table 6.7: FX Swap Example: Domestic Interest Rate Changes

Certainly the exchange rate or the interest rate can move in the other direction and in that case, the fixed leg loses money (the contract is then "out-of-the-money").

# Fixed-Floating Swap

Now we turn to a more standard contract: fixed-floating swap. We first introduce the floating payments to the domestic leg (and the foreign leg remains fixed). We change the forward curve from flat in Table 6.7 to upward sloping in Table 6.7. Hence, the payments on the domestic leg are non-constant. To make sure that it is a fair swap (i.e. today's swap contract has no value), the foreign leg must pay the swap rate using equation (5.2) from Chapter 5:

$$ w (t, T _ {n}) = \frac {1 - P (t, T _ {n})}{\underset {i = 1} {\overset {n} {P}} (t, T _ {i})}
$$ which is $5.3449\%$.

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|}
\hline exch rate & 1.5 & $/£ & & & & \\ \hline
 & swap rate & 0.053449 & & $150 floating & £100 5.3449% & \\ \hline
 & fwd rate & disc fact & & & & \\ \hline
1 & 0.03 & 0.970874 & 1 & 4.5 & 5.34493 & -3.5174 \\ \hline
2 & 0.05 & 0.924642 & 2 & 7.5 & 5.34493 & -0.5174 \\ \hline
3 & 0.06 & 0.872303 & 3 & 9 & 5.34493 & 0.982604 \\ \hline
4 & 0.065 & 0.819064 & 4 & 9.75 & 5.34493 & 1.732604 \\ \hline
5 & 0.0675 & 0.767273 & 5 & 160.125 & 105.3449 & 2.107604 \\ \hline
\end{tabular}
\end{document}
```

Table 6.8: Fixed-Floating Swap (Domestic Floating)

We now compute the present values of both legs. By using sumproduct in Excel, we can find the PV of the domestic leg to be exactly $150 and the foreign leg to be exactly £100 (which is worths exactly $150).

While the swap now at inception is fair, there is no guarantee over time the value of the swap contract will remain
0. As the exchange rate and interest rates in both countries move around, the values will change.

# Floating-Floating Swap

Now we turn to floating-floating swap, or known as a di erential
(di) swap. We need curves in both countries. Due to the fact that there is a di erence in the curves of the two countries (known as basis), a spread must be added to compensate the basis (so that the swap is fair). The basis is just the di erence between the two curves of two countries.

Table 6.9 is the domestic leg and Table 6.10 is the foreign leg. The basis curve is given in Table 6.10 as the difference in two curves. The payments of the domestic leg are with the spread (last column).

The first step is to convert the foreign cash flows into domestic money, which is the last column of Table 6.10. As we can see, using the foreign curve on foreign cash flows yields the par value of the leg. After converting the cash flows into domestic money and discounted at the domestic curve, it is not the same as applying the exchange rate on the foreign leg.

The next step is to solve for the spread so that the domestic leg value is equal to the foreign leg value under domestic currency. In our example, the spread is 4.3233 basis points.

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|}
\hline exch rate & 1.5 & $/£ & & \\ \hline spread & 0.443093 & & & \\ \hline swap rate & 0.053449 & & & \\ \hline
 & & & $150 floating & spd added \\ \hline
 & fwd rate & disc fact & & \\ \hline
1 & 0.03 & 0.970874 & 4.5 & 4.943093 \\ \hline
2 & 0.05 & 0.924642 & 7.5 & 7.943093 \\ \hline
3 & 0.06 & 0.872303 & 9 & 9.443093 \\ \hline
4 & 0.065 & 0.819064 & 9.75 & 10.19309 \\ \hline
5 & 0.0675 & 0.767273 & 160.125 & 160.5681 \\ \hline
 & & & 150 & 151.9293 \\ \hline
\end{tabular}
\end{document}
```

Table 6.9: Domestic Leg

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|}
\hline
 & & & & 100 floating & & \\ \hline
 & basis & fwd rate & disc fact & & fx curve & \\ \hline
1 & 0.0001 & 0.0301 & 0.97078 & 3.01 & 1 & 4.515 \\ \hline
2 & 0.0002 & 0.0502 & 0.924376 & 5.02 & 2 & 7.557108 \\ \hline
3 & 0.0003 & 0.0603 & 0.871806 & 6.03 & 3 & 9.088416 \\ \hline
4 & 0.0004 & 0.0654 & 0.81829 & 6.54 & 4 & 9.91791 \\ \hline
5 & 0.0005 & 0.068 & 0.766189 & 106.8 & 5 & 162.2719 \\ \hline
 & & & & 100 & & 151.9293 \\ \hline
\end{tabular}
\end{document}
```

Table 6.10: Foreign Leg

# 6.5 Quanto E Ect

The most prominent feature in FX derivatives is the "quanto" e ect. The quanto e ect refers to the risk in exchanging one currency for another. It is caused by interest rate risks in IRP (introduced earlier) and the exchange rate risk.

Due to this e ect, there are two option contracts, one of which is exposed to the quanto e ect and the other is not.

# 6.5.1 Compo Option

The composite
(compo) option is designed for investors who:

- want to execute an option strategy on a foreign stock
- want to fix the strike in their own currency
- get the payout of the option in their own currency

The compo option is exposed to quanto e ect. One of the reasons that a composite option is traded is to protect the value in their own currency on a foreign investment.

# Example

A US investor owns GSK stock whose price is £13 per share. The exchange rate is $2 per pound which is worth $26 per share. To protect this holding, he buys 1Y ATM compo put on GSK at strike = $26.

After 1Y, stock goes down to £11 and the exchange rate also goes down from $2 per pound to $1.5 per pound. Then, the dollar value of GSK has gone down from $26 to $16.5.

Because the strike price of the repo option is fixed in dollars, the option will pay the investor exactly the difference between $26 and$ 16.5. As a result, the repo option totally o sets the loss of the stock.

If a
(London) trader sells the compo put on GSK, he will want to hedge himself. Unfortunately, the trader can only execute his delta on the local stock, which is not quoted in the compo currency. When delta hedging, he will still have an FX risk, as the payout on the compo option will be in the compo currency and his delta hedge is in the local currency of the underlying stock.

Suppose for the argument's sake that he hedges the combo option on a delta = 1, he makes £2, which is worth $3 at maturity. As the dollar value of GSK goes from $26 to $16.5, the trader loses $9.5 on the combo option and makes $3 on his delta hedge.

# Just Delta Hedging Is Clearly Not Enough!

The trader would need to buy dollars on the notional of his delta hedge to be fully immune to all the risks of the compo option on GSK.

As an FX hedge, the trader would sell £13 to receive $26 for every GSK share he shorted as part of his delta at inception of the trade.

At maturity, the trader can buy back these £13 for $19.5. Then, total profit on his FX hedge = $6.5 - $6.5 + $3 = $9.5 = the loss on the compo option.

In summary, to hedge the FX exposure on a combo option, one just needs to realize that: if one sells/buys stocks as a delta hedge, then one needs to sell/buy the currency of the stock and buy/sell the combo currency in the same notional as the delta hedge.

Obviously, the FX hedge is not static and should be adjusted along with any delta adjustments. In other words, to be perfectly hedged against both stock movements and FX movements, one need to have at any time the same notional of FX hedge as delta hedge.

Additionally, one also needs to put an FX hedge in place for the premium paid for the compo option at inception of the trade. For the call/put option, the FX hedge on the premium paid works in the opposite/same direction to the FX hedge on the notional of the delta hedge.

The reason a trader wants to hedge the FX exposure on the premium is that in order to buy the compo option in the compo currency the trader would first need to sell the local currency to buy the compo currency. This e ectively gives him an FX position which still needs to be hedged.

Counterintuitively, no FX hedge needs to be executed on the premium if the trader sells a combo option, as the trader receives the premium in the combo currency and the model used to determine the price and the delta of the option assumes financing in the combo currency.

To sum up (and extend the logic to other positions of the compo option):

1. Long Compo Call

FX hedge on delta notional - > Sell local currency to buy compo currency
FX hedge on premium paid $->$ Buy local currency to sell compo currency

2. Short Compo Call

FX hedge on delta notional $->$ Buy local currency to sell compo currency
FX hedge on premium paid $\rightarrow$ None

3. Long Compo Put

FX hedge on delta notional $->$ Buy local currency to sell compo currency
    - FX hedge on premium paid $->$ Buy local currency to sell compo currency
4. Short Compo Put
    - FX hedge on delta notional $->$ Sell local currency to buy compo currency
FX hedge on premium paid $\rightarrow$ None

# 6.5.2 Quanto Option

The quanto option is designed for investors who:

- want to execute an option strategy on a foreign stock
- are only interested in the % return of that strategy
- want to get paid this return in their own currency

The quanto option is not exposed to quanto ect.

The FX rate will be fixed to the prevailing FX rate at inception of the option transaction and the payout of the quanto option will be this FX rate times the payout of the regular option.

# Example:

A US investor is long 1Y call on British Petroleum (in £). He wants to get his return in dollars.

Assume the price of BP is £5 per share. The exchange rate is $2 per pound. Assume in one year, BP stock price = £5.5 (i.e. 10% return).

The payout of the option at maturity of the quanto ATM call option is $1 regardless of the change in the exchange rate. BP's share has increased by 10% -> US investor expects a 10% return on his USD investment.

The main theme of a quanto option is the difference in forward compared to a regular option.

Hedging FX exposure on the quanto option might not be very intuitive but is very simple in practice.

This is because the FX hedge is captured by the delta hedge, which in turn is because the option notional in the local currency keeps changing with the changing FX.

Namely, the notional of the quanto option is agreed in the quanto currency. Therefore the notional in the local currency changes whenever the FX changes.

This implies that if the quanto currency halves in value w.r.t the local currency, the notional of the quanto option in the local currency halves, and therefore the trader needs to halve his delta hedge even though the stock price might not have moved.

A trader sells an ATM quanto call on BP at a strike of £5. The notional is $10 million. The delta of the ATM option is roughly 0.5. Assume that the current exchange rate is $2 per pound.

For the delta hedge, the trader would need to buy £2.5 million worth of BP stock.

Suppose that exchange rate raises against dollar to $4 per pound. Even though the stock price did not change, the trader would need to change his delta hedge to be long$ 1.25 million of BP stock.

There is no need for a trader to put on FX hedge in place for a quanto option. This is because the equation prescribes financing in the local currency.

If the trader buys a quanto option, he e ectively ensures financing in the local currency because he would first need to sell the local currency to buy the quanto currency in order to pay for the quanto option.

Therefore the trader will only need to do an FX hedge if he sells a quanto option, which is selling the quanto currency and buying the local currency on the premium amount. This ensures financing in the local currency.

# 6.6 Fx Options

An exchange rate option (FX option) is an option to buy (i.e. call) or sell (i.e. put) a chosen foreign currency at a specified domestic price (i.e. strike). It is best to view an exchange rate as the domestic price of a foreign currency. That is, it is best to view foreign currencies as commodities and exchange rates are merely prices of these currency commodities.

# 6.6.1 Option Quotes

The typical quotes of FX options are:

- ATM (at-the-money)
- RR (risk reversal): x Delta Call - x Delta Put
• BF
(butterfly) : (x Delta Call + x Delta Put ) ÷ 2 - ATM over

10 delta

25 delta
- ATM (50 delta)
75 delta
90 delta

First of all, from BF and RR, we can solve for individual option prices:

$$
\begin{array}{l} \mathrm {C a l l} = \mathrm {B F} + \mathrm {A T M} + \frac {1}{2} \mathrm {R R} \\ \mathrm {P u t} = \mathrm {B F} + \mathrm {A T M} - \frac {1}{2} \mathrm {R R} \\ \end{array}
$$

Note that RR provides a unique way to identify the strike price of the call and put in RR. The call delta:

$$
\begin{array}{l} c = \frac {C}{S} = N (d _ {1}) \\ P = \frac {P}{S} = - N (- d _ {1}) \\ \end{array}
$$

Hence,

$$
\begin{array}{c c} \mathbf {C} + & \mathbf {\Phi} _ {\mathbf {P}} = 1 \end{array}
$$ which implies that put and call of the same delta can reproduce a forward contract (which has $= 1$ ) and hence they must have the same strike.

Recall put-call parity:

$$
C
(t) - P
(t) = S
(t) - e ^ {- r (T - t)} K
$$ which then can solve for the strike.

See Excel for an example

# 6.6.2 International Put/Call Parity
(Equivalence) In addition to PPP and IRP, the option prices of the two nations must obey a special parity – international put-call parity. That is, the domestic call is equivalent to a foreign put and vice versa. The following diagram (Figure 6.7) visualizes the parity.

Take the Japanese yen as an example. Assume that at maturity, the exchange rate is 1:90 (i.e. $0.0111 per yen). Also assume a domestic call option struck at $0.01. Then the intrinsic value of the option is $0.0011 (S - K):

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/2aab12192cc77498c803c4e53e4a0e70ca23539ea90e73259b60918fa236c206.jpg)

Figure 6.7: International Put/Call Parity

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/5c6af68e0237ec0ccfa0919f0c3a51a98a73f1e45c13c54478e797c1962ccc77.jpg)

exercise: pay $1, get 100 yen$ sell 100 yen, get $1.1111 profit$ 0.1111

At the same time, a
(foreign) put option in Japan has a strike price at ¥100. Since the exchange rate is ¥90 per dollar), the intrinsic value is ¥10 (K - S):
 exercise: sell $1, get 100 yen$ sell 100 yen, get $1.1111 profit$ 0.1111

(or sell $1, get 100 yen sell 90 yen, get $1 profit 10 yen)

Given that in two countries, both options have exactly the same exercise value: $0.0011 (or ¥10), their current prices must be also exactly the same.

# 6.6.3 Volatility Smile

The standard FX option (option on exchange rates) provide the volatility smile. From Chen, Hsieh, and Huang...

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/b62305741bb27f236e8a80db92790c2bc1a35097d269987f45b50f01da802771.jpg)

Figure 6.8: FX Volatility Smile

# 6.6.4 Exotic Fx Options

Di erent from equities, there are a number of exotic FX options traded in the marketplace. The typical ones are: barrier, digital, lookback and Asian:

- barrier option: When the price reaches a specific threshold, then this kind of option starts or stops to exist.
- digital option: The buyer only receives a payoff if the underlying fx rate is above or below a specific price level at a previously agreed time.
- Asian option: The return is calculated based on the average price of the underlying fx rate during the whole lifetime of the option.
- lookback option: Also known as a hindsight option, a lookback option allows the holder the advantage of knowing history when determining when to exercise their option.

# 6.7 Fx Math

In this section, I briefly demonstrate how financial math can go hand-in-hand with the analyses in the previous sections. In particular, the change of measure that is essential to financial math is heavily employed here in the world of FX.

# 6.7.1 Quanto

Consider the interest rate parity theorem and a simple Black-Scholes type model:

$$
\frac {\mathrm {d} \mathbf {Y} (\mathbf {t})}{\mathbf {Y} (\mathbf {t})} = (\mathbf {r} (\mathbf {t}) - \mathbf {r} (\mathbf {t})) \mathrm {d t} + \mathbf {d} \hat {\mathbf {W}} _ {\mathbf {Y}}
$$

$$
\frac {\mathrm {d} \mathbf {P} (\mathrm {t}, \mathrm {T})}{\mathrm {P} (\mathrm {t}, \mathrm {T})} = \mathbf {r} (\mathrm {t}) \mathrm {d t} + v _ {\mathrm {P}} (\mathrm {t}, \mathrm {T}) \mathrm {d} \hat {W} _ {\mathrm {P}} \tag {6.1}
$$

$$
\frac {\mathrm {d} \mathbf {P} (t, T)}{\mathrm {P} (t, T)} = r
(t) d t + v _ {P} (t, T) d \hat {W} _ {P}
$$ and $\mathsf{d}\hat{\mathsf{W}}_{\mathsf{i}}\mathsf{d}\hat{\mathsf{W}}_{\mathsf{j}} = \mathsf{\Omega}_{\mathsf{ij}}\mathsf{dt}$ and $\mathbf{i},\mathbf{j} = \mathbf{Y},\mathbf{r},\mathbf{r}$. We further assume that:

$$
P (t, T) = \mu
(t) d t + v _ {P} (t, T) d \hat {W} _ {P} \tag {6.2}
$$ which is the domestic measure of the foreign bond price. In other words, the dollar measure of pound (still in pound) is di erent from the pound measure of pound.

Now, we can define the dollar price of the foreign bond is:

$$
\mathbf {Q} (\mathbf {t}, \mathbf {T}) = \mathbf {Y} (\mathbf {t}) \mathbf {P} (\mathbf {t}, \mathbf {T})
$$

Then, the return of the this asset must be the domestic risk-free rate $r$, using Ito's lemma:

$$
\begin{array}{l} \frac {\mathrm {d} Q}{Q} = \frac {1}{Q} \frac {Q}{Y} \mathrm {d} Y + \frac {Q}{P} \mathrm {d} P + \frac {{} ^ {2} Q}{Y P} (\mathrm {d} Y) (\mathrm {d} P) + o (\mathrm {d} t) \\ = \frac {1}{Q} \left\{\mathbf {P} \left[ (\mathbf {r} - \mathbf {r}) \mathbf {Y} d t + \mathbf {Y} d W _ {\mathbf {Y}} \right] + \mathbf {Y} \left[ \mu \mathbf {P} d t + v _ {\mathbf {P}} \mathbf {P} d W _ {\mathbf {P}} \right] + \mathbf {Y} \mathbf {P} _ {\mathbf {Y}, \mathbf {P}} v _ {\mathbf {P}} \right\} \\ = (r + \mu - r + _ {Y, P} v _ {P}) d t + \left\{d W _ {Y} + v _ {P} d W _ {P} \right\} \\ = \mathbf {r} d t + v _ {Q} (t, T) d W _ {Q} \\ \end{array}
$$

Given that $\mathbb{Q}$ must earn the domestic risk-free rate (since it is a domestic asset), we conclude that

$$
\boldsymbol {\mu} = \mathbf {r} - \mathbf {v} _ {, P} \quad \mathbf {v} _ {P} \tag {6.3}
$$ and $\mathsf{v}_{\mathsf{Q}}^{2}(\mathsf{t},\mathsf{T}) = \mathsf{\Omega}^{2} + \mathsf{v}_{\mathsf{P}}^{2} + 2\mathsf{\Omega}_{\mathsf{Y},\mathsf{P}}\mathsf{v}_{\mathsf{P}}$. Hence,

$$
\begin{array}{c c} \mathbf {Y}, \mathbf {P} & \mathbf {V} _ {\mathbf {P}} \end{array}
$$ is known as the "quanto" e ect. What this says is that the domestic measure of the foreign risk-free rate must be adjusted by the quanto e ect.

We can easily see that if any of the following is $0$, then $\mu = r$:
 correlation is 0
- foreign risk-free rate is deterministic (i.e. $\mathbf{v}_{\mathbb{P}} = 0$ )
- exchange rate is deterministic (i.e. $= 0$ )

Combining equations (6.1), (6.2), and (6.3), we arrive at the famous change of measure equation between two countries:

$$
\mathrm {d} W _ {\mathrm {P}} = \mathrm {d} W _ {\mathrm {P}} - \mathrm {Y P} \quad \mathrm {d t} \tag {6.4}
$$ the difference between domestic and foreign measures is the quanto.

# 6.7.2 Compo And Quanto Options

The IRP theorem restricts the drift of the exchange rate to be the di erence between the two rates. (Note alternatively we can view the foreign interest rate as a "dividend" that takes away the return from investing in the domestic risk-free bond.)

We also modify the Black-Scholes option formula as follows:

$$
\mathbf {C} _ {\mathrm {t}} = \mathbf {P} _ {\mathrm {t}, \mathrm {T}} \mathbf {Y} _ {\mathrm {t}} \mathbf {N} (\mathbf {d} _ {1}) - \mathbf {P} _ {\mathrm {t}, \mathrm {T}} \mathbf {K} \mathbf {N} (\mathbf {d} _ {2})
$$ where

$$ d _ {1} = \frac {\ln Y _ {t} - \ln K - \ln P _ {t, T} + \ln P _ {t, T} + v ^ {2} / 2}{\bar {v}}
$$

$$
\mathbf {d} _ {2} = \mathbf {d} _ {1} - \mathbf {v} \quad \overline {{\mathbf {T} - \mathbf {t}}}
$$

$$
\mathbf {v} ^ {2} = \mathbb {V} [ \ln \mathbf {Y} _ {T} - \ln \mathbf {D} _ {t, T} + \ln \mathbf {D} _ {t, T} ]
$$

$$
\mathbf {D} _ {\mathrm {t}, \mathrm {T}} = \exp - \mathbf {\Phi} _ {\mathrm {t}} ^ {\mathrm {T}} \mathbf {r} _ {\mathrm {u}} \mathbf {d u}
$$

$$
\mathbf {D} _ {t, T} = \exp - \mathbf {\Phi} _ {t} ^ {T} \mathbf {r} _ {u} d u
$$

The quanto e ect exists when the exchange rate and the two interest rates are all random and correlated. To see this more clearly, we use the Nikkei option<sup>3</sup> as an example.

Define a "variable rate" call option that pays $\max \{S_T - K, 0\}$ in yen. Then in dollars, it is $Y_T \max \{S_T - K, 0\}$ at time $T$. Now we can simply discount it back at the domestic rate $r$:

$$
\begin{array}{l} \mathbf {C} _ {\mathrm {t}} = \mathrm {e} ^ {- r (\mathrm {T} - \mathrm {t})} \hat {\mathbb {E}} _ {\mathrm {t}} [ \mathbf {Y} _ {\mathrm {T}} \max \{\mathbf {S} _ {\mathrm {T}} - \mathbf {K}, 0 \} ] \\ = e ^ {- r (T - t)} e ^ {(r - r) (T - t)} Y _ {t} \hat {\mathbb {E}} _ {t} ^ {(Y)} [ \max \{S _ {T} - K, 0 \} ] \\ = e ^ {- r (T - t)} Y _ {t} e ^ {r (T - t)} S _ {t} N \left(d _ {+}\right) - K N \left(d _ {-}\right) \tag {6.5} \\ = Y _ {t} S _ {t} N (d _ {+}) - e ^ {- r (T - t)} K N (d _ {-}) \\ \end{array}
$$ where

$$
\mathbf {d} _ {\pm} = \frac {\ln \mathbf {S} _ {t} - \ln \mathbf {K} + (\mathbf {r} \pm 1 / 2 \mathbf {v}) (\mathbf {T} - \mathbf {t})}{\overline {{\mathbf {v} (T - t)}}}
$$ and hence there is no quanto ect in the option price.

Define a "fixed rate" call that pays $\bar{Y}\max \{S_T - K,0\}$. Then,

$$
\begin{array}{l} \bar {C} _ {t} = e ^ {- r (T - t)} \bar {Y} \hat {\mathbb {E}} _ {t} [ \max \{S _ {T} - K, 0 \} ] \tag {6.6} \\ = e ^ {- r (T - t)} \bar {Y} e ^ {(r + \gamma v) (T - t)} S _ {t} N (d _ {+}) - K N (d _ {-}) \\ \end{array}
$$ where

$$
\mathbf {d} _ {\pm} = \frac {\ln \mathbf {S} _ {t} - \ln \mathbf {K} + (\mathbf {r} \pm 1 / _ {2} \mathbf {v} ^ {2}) (\mathbf {T} - \mathbf {t})}{\mathbf {v} \quad \overline {{\mathbf {T} - \mathbf {t}}}}
$$ and hence the quanto ect exists.

# 6.7.3 International Put/Call Parity

The international put-call equivalence is to stipulate that the domestic call (or put) is equal to the foreign put (or call). Because of the symmetry, we just discuss domestic call here.

A domestic call has a payoff as $C_T = \max \{Y_T - K, 0\}$ and a foreign put $C_T = \max \frac{1}{K} - \frac{1}{Y_T}, 0$ and the two payo s are equivalent as $C_T = Y_T K C_T$. Hence it must be true that $C_t = Y_t K C_t$.

Domestic call is the Black-Scholes result:

$$
C _ {t} = e ^ {- r (T - t)} Y _ {t} N \left(d _ {+}\right) - e ^ {- r (T - t)} K N \left(d _ {-}\right) \tag {6.7}
$$ where

$$
\mathbf {d} _ {\pm} = \frac {\ln \mathbf {Y} _ {t} - \ln \mathbf {K} + (\mathbf {r} - \mathbf {r} \pm 1 / _ {2} \mathbf {\Delta} _ {\mathbf {Y}}) (\mathbf {T} - \mathbf {t})}{\mathbf {\Delta} _ {\mathbf {Y}} \overline {{\mathbf {T}}} - \mathbf {t}}
$$

Foreign put is the Black-Scholes model as well (the notation $\mathbf{P}$ is used for put here only):

$$
P _ {t} = e ^ {- r (T - t)} K N (- d _ {-}) - e ^ {- r (T - t)} Y _ {t} N (- d _ {+}) \tag {6.8}
$$ where $\mathbf{K} = 1 / \mathbf{K}$ and $Y_{t} = 1 / Y_{t}$ and

$$
\begin{array}{l} \mathbf {d} _ {\pm} = \frac {\ln \mathrm {Y} _ {\mathrm {t}} - \ln \mathrm {K} + (\mathrm {r} - \mathrm {r} \pm 1 / _ {2} \mathrm {Y}) (\mathrm {T} - \mathrm {t})}{\mathrm {Y} \overline {{\mathrm {T} - \mathrm {t}}}} \\ = - d \\ \end{array}
$$ and hence $C_{t} = Y_{t} K P_{t}$ is verified.

But to prove the result, we need the change of measure. Note that the equivalent payoff in foreign currency is $\mathsf{Y}_{\mathsf{T}}\mathsf{K}\mathsf{C}_{\mathsf{T}} = \frac{1}{\mathsf{Y}_{\mathsf{T}}} \mathsf{K} \max \{\mathsf{K} - \mathsf{Y}_{\mathsf{T}}, 0\}$ and this is a dollar payoff under the foreign measure and needs to take the foreign expectation at the domestic risk-free rate:4

$$
\mathrm {e} ^ {- r (T - t)} \hat {\mathbb {E}} _ {t} \frac {1}{Y _ {T}} K \max \{K - Y _ {T}, 0 \} = \mathrm {e} ^ {- r (T - t)} \hat {\mathbb {E}} _ {t} \max \frac {1}{Y _ {T}} - K, 0 \tag {6.9}
$$

Note that, by Ito's lemma,

$$
\begin{array}{l} \frac {1}{Y _ {T}} = \frac {1}{Y _ {t}} \exp (r - r + ^ {2}) (T - t) - \mathbf {\Phi} _ {t} ^ {T} d \hat {W} _ {Y} \tag {6.10} \\ = Y _ {t} \exp (r - r) (T - t) + \begin{array}{l} T \\ t \end{array} d \hat {W} _ {Y} \\ \end{array}
$$ where $\mathbf{d}\hat{\mathbf{W}}_{\mathbf{Y}} = -\mathbf{d}\hat{\mathbf{W}}_{\mathbf{Y}} + \mathbf{dt}$ is the change of measure between two countries (compare with equation (6.4)). Then the result is proved.

# Chapter 7

# Credit Default Swap

# 7.1 Introduction

Credit default swap
(CDS) is one of the greatest Wall Street innovations in history. For the first time, investors can transfer unwanted credit risk at a price. Conversely, for those who seek yield enhancements, it provides an additional vehicle.

Even since its introduction in mid 1990's, the growth of the CDS market has been exponential. Although su ered a short cutback after the 2008 Lehman crisis, the market has rebounded and stayed healthy ever since.<sup>1</sup>

According to ISDA, a credit event can be one of the following:

1. failure to pay
2. restructuring,
3. repudiation/moratorium.
4. default

There are two main budling blocks for the evaluation of CDS: probability of default
(PD) and loss given default
(LGD) which is also known as 1 minus recovery. There are two streams of models for the evaluation of CDS: reduced form models and structural models. The former assumes sudden defaults and the latter assumes gradual defaults. As a result, reduced form models assume a Poisson jump process for defaults and structural models assume firm value falling below a default threshold.

# 7.2 The Contract

It is a swap (follows swap convention) and yet it does not quite follow the swap conventions. Its floating leg is one payment and furthermore probabilistic. Its fixed leg is quarterly (not semi-annually). Figure 7.1 demonstrates the payments of the two legs of a CDS contract.

The fixed leg payments are similar to a standard fixed-floating swap. The floating leg, on the other hand, differs slightly from the standard fixed-floating swap. Not only is the only payment random, it is also
(probabilistically) unlikely to happen. The payment of the floating leg occurs only if default occurs, which is an unlikely event.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/0e6d7a416e69974f0635f75a59bd80c47ce8a6df204173bc0e91e8f5d6423985.jpg)

Figure 7.1: Two Legs of CDS

# 7.2.1 Cds Spread

$$ s \left(t, T _ {n}\right) = \frac {\underset {i = 1} {n} P \left(t, T _ {i}\right) \left[ Q \left(t, T _ {i - 1}\right) - Q \left(t, T _ {i}\right) \right]}{\underset {i = 1} {n} P \left(t, T _ {i}\right) Q \left(t, T _ {i}\right)} \tag {7.1}
$$

# 7.2.2 Cds As A Perfect Hedge To Corporate Floaters

That is why the fixed payment is called "spread".

# 7.2.3 Cds As A Put Option

But there is a big difference. Put options also carry market risk (CDS also do but relatively much smaller).

# 7.2.4 Cds As An Insurance Policy

That is why the fixed payment is called premium. Note that put options are like insurance policies and price is also called premium.

# 7.2.5 Cds As Short Credit
(Bond) CDS is not a perfect hedge to fixed rate corporate bonds, but close enough.

# 7.3 Bootstrapping

Please see my Global Risk Management: A Quantitative Guide lecture notes Chapters 13 15.

# 7.4 Big Bang

After the Big Bang, single-name CDS follow the index quoting convention and hence no longer is a pure swap contract.

Consider a CDS contract on Bank of America with notional value of 10M dollars. The quoted 5Y CDS spread is 326 basis points. A protection buyer needs to

Before the Big Bang: pay $326,000 per year fixed 500: receive $756,788 upfront and pay$ 500,000 per year

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/c620cd0e5a4865c407a4657b1728e8480e4073b8a45c5b39d513f37e99d91a19.jpg)

Figure 7.2: Before the Big Bang

After the Big Bang: fixed 100: pay $990,254 upfront plus $100,000 per year

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/bce71052689f6d23309aedbc334cae2d9460612d617b88734235ae8326729a61.jpg)

Figure 7.3: After the Big Bang

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/e50f9a67273e8d951641d8d39c43505af135a537c50725b9419153cdc8abc951.jpg)

Figure 7.4: After the Big Bang

# 7.4.1 Upfront, Running Spread, And Par Spread

There are two running spreads: 100 basis points and 500 basis points for high grade and high yield respectively.

Due to running spread, the upfront can be negative.

$$
\begin{array}{l} \mathbf {V} _ {\text {p r o t}} = \mathbf {V} _ {\text {p r e m}} \\ (1 - R) \quad_ {i = 1} ^ {4 n} P (t, T _ {i}) [ Q (t, T _ {i - 1}) - Q (t, T _ {i}) ] \\ = \frac {\mathbf {S}}{4} \quad \begin{array}{l} 4 n \\ i = 1 \end{array} \mathbf {P} (t, T _ {i}) \mathbf {Q} (t, T _ {i}) \\ U _ {H G} + \frac {0.01}{4} \quad_ {i = 1} ^ {4 n} P (t, T _ {i}) Q (t, T _ {i}) \\ = U _ {H Y} + \frac {0.05}{4} \quad_ {i = 1} ^ {4 n} P (t, T _ {i}) Q (t, T _ {i}) \\ \end{array}
$$

Running spread is not informative as it is a contractual spread. Hence it is still customary in the industry to compute the par spread as before.

See Excel for an example

# 7.5 Recovery

Recovery value determines the protection leg value of a CDS. In case of a cash settled CDS, this amount is usually set at $40\%$ to reflect the average recovery rate of senior unsecured bonds and $15\%$ to reflect the average recovery of junior unsecured bonds.

However, in the case of physically settled CDS, an actual bond is delivered and its value will not be discovered until the liquidation process is finished. Under this situation, how can one estimate the value in order to evaluate today's CDS? Apparently, some kind of expectation of this value needs to be constructed.

In this section, we focus on the recovery impact of the CDS contract. In addition to estimating a recovery value, various recovery clauses can also heavily impact the evaluation of CDS contracts.

# 7.5.1 Cash Versus Physical Settlement

Although it is more di cult to transact, the majority of the CDS contracts are physically settled. In other words, an actual bond needs to be delivered upon default of the company. When CDS was first introduced in early/mid 90's, CDS contracts were primarily written on actual bonds, known as issue-based CDS. These CDS contracts were mainly issued by those banks that actually owned bonds and would like to hedge their default risks. The other side (yield enhancement) of the contract was investment banks, hedge funds, or trading houses who made a profit from a positive carry (just like their other positive carry deals).

# 7.5.2 Distressed Bond Market

There is no clear definition for distressed debts. In the most severe case, a debt is in distress because its company is in default. Nevertheless, many high yield (a.k.a. junk) bonds that are at the brink of default are also targets for those distressed bond investors.

In general, a bond that is traded at a large discount, usually $30\%$ or more, can be regarded as a distressed debt. Also, a bond that is traded by price (an otherwise normal healthy bond will be traded by yield) can be regarded as a distressed debt.
 https://expertinvestoreurope.com/distressed-debt-funds-mushroom-to-4-year-high (interview of Preqin)

The number of distressed debt funds globally has jumped to 60 from 51, while capital targeted jumped to $72bn (€63.8bn), more than double as much as a year

# Before.

The alternative data and analytics provider has found that out of the 60 funds, 42 have a regional focus on North America and 10 on Europe. But only seven of these funds are domiciled in Europe (see charts below).

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/133daf3919bb7b47b2c085f1260aeee25cf22cbad976bf3f44ced5cf19f66df4.jpg)

Figure 7.5: Allocation of Distressed Debts
Figure 7.6: Examples of Distressed Debts

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
Food Name & Vintage Year & Funding Status & Fund/Target Size
(Euro) & Fund Manager & Manager Relationship \\ \hline
Alstom Strategic Credit Fund II & 2020 & Raising & 1,100.40 & Alstom & UK \\ \hline
Armor Credit Opportunities & 2020 & Second Close & 2,200.81 & A&amp;O Capital Management & UK \\ \hline
Cleosilica Restructuring Fund & 2019 & First Close & - & Cleosilica Capital Partners & Italy \\ \hline
Italian Recovery Fund II & 2020 & Raising & 200.12 & OEACapital Alternative Funds & Italy \\ \hline
LCM Credit Opportunities Strategy II & 2020 & Raising & 4,401.62 & LCM Partners & UK \\ \hline
M&amp;G Debt Opportunities Fund V & 2020 & Raising & 1,100.78 & M&amp;G Investments & UK \\ \hline
Triton Debt Opportunities Fund II & 2019 & Second Close & - & Triton & January \\ \hline
\end{tabular}
\end{document}
```

As of June 2020, there is currently $68bn in 'dry powder', which it believes will be deployed in the coming months given the significant defaulting likelihood in the aftermath of the crisis.

Most distressed debt managers are seeking out low-rated bonds, such as tripleBs, in anticipation of them being downgraded to junk.

A spokesperson for UBS's alternatives and sustainable & impact investing teams told Expert Investor that they estimate "about half a trillion dollars across credit segments are trading at distressed levels", as of mid-June.

"Specifically, in the high-yield space, about $125bn of US and$ 25bn of European high yield [bonds] are trading at spreads above 1,000 points.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/cb4ed1c5c2787af3bccf9021988a4881788e0374ab3c7430e6f70d9ab50b0a02.jpg)

Figure 7.7: Sizes of Distressed Debts

"In the leveraged loan market, we estimate that about $125bn of US and$ 15bn of European leveraged loans, including collateralised loan obligations, are currently in distress.

"In the private credit space, we estimate that around $20\%$, or $120bn of outstanding loans, may require borrowers to seek alternative sources of liquidity," the UBS teams explained.

"In 2019, distressed debt investors raised $15.3 billion, down from$ 17.4 billion in 2018, according to PitchBook data. Far fewer companies were in distress, of course, during the past decade's unprecedented economic expansion."

"In recent years, the largest individual vehicle was Blackstone's latest GSO Capital Solutions fund, which gathered more than $7 billion in
2018. Other top players in the market include recent funds raised by Apollo Global Management and Clearlake Capital."

# 7.5.3 Cheapest To Deliver Option

As in the T bond futrues contracts, CDS contracts also embed a CTD option. The contractual description of the CTD in CDS is similar to the that in T bond futures. Basically, the short side of the CDS contract can choose any bond of the given name to deliver, hence leaving the option for the short side to deliver the cheapest bond.

In the early days of CDS trading, CDS were written on bonds, known as issue-based CDS. As the market developed over time, experiencing di culty in delivery,

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/70b49acb40354a027ab6d3865919d2da1159c9f4f0324fb944138a17866e97b3.jpg)

Figure 7.8: High Yield Debts issue-based CDS faded out and in replacement were issuer-based CDS that allow for the CTD option.

# 7.5.4 Restructuring Clauses Https://Www. Bis. Org/Publ/Qtrpdf/R_Qt0503H. Pdf

Since the original ISDA agreement in 1999, there have been six general categories of credit events under which payments from the protection seller to the protection buyer can be mandated: bankruptcy, failure to pay, repudiation/moratorium, obligation acceleration, obligation default and restructuring. In practice, the three principal credit events for corporate borrowers are bankruptcy, failure to pay and restructuring.

# Full Restructuring
(Fr) The full-restructuring clause was the standard contract term in the 1999 ISDA credit derivatives definitions. Under this contract option, any restructuring event qualifies as a credit event (and any bond of maturity up to 30 years is deliverable). The problems with this arrangement became clear in 2000, when the bank debt of Conseco Finance, restructured to include increased coupons and new guarantees,

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/6f872c103e0283b710f8390b8e187e765cc0ad72b2ebce2433df5b130159f45b.jpg)

Figure 7.9: Distressed Debts and thus not disadvantageous to holders of the previous debt, still constituted a credit event and triggered payments under the ISDA guidelines.

Some banks delivered long-dated bonds to profit from buying discounted lower-priced bonds and receiving par value in return, which was perceived as a distortion of the CDS market.

# Modified Restructuring (Mr, Introduced In 2001)

In 2001, to limit the scope of opportunistic behaviour by sellers in the event of restructuring agreements that did not cause loss, ISDA published a modified restructuring clause. While restructuring agreements still counted as credit events, the clause limited the deliverable obligations to those with a maturity of 30 months or less after the termination date of the CDS contract. Under this contract option, any restructuring event (except restructuring of bilateral loans) qualifies as a credit event.

# Modified-Modified Restructuring (Mmr, Introduced In 2003)

In 2003, a further modification of the modified restructuring clause was introduced, in response to the perception on the part of some market participants (particularly in Europe) that the modified restructuring had been too severe in its limitation of deliverable obligations. Under the modified-modified restructuring term, the remaining maturity of deliverable assets must be shorter than 60 months for restructured obligations and 30 months for all other obligations.

# No Restructuring
(Nr) Under this contract option, all restructuring events are excluded under the contract as "trigger events". The advantage to this contract is that so-called "soft" credit events under restructuring that do not constitute a true loss for the protection buyers, but still might encourage opportunistic behaviour on their part, are ruled out. In August 2002, JPMorgan Chase announced that it would no longer include restructuring clauses in its non-sovereign CDS contracts used for hedging purposes (see CGFS (2003)). In addition, some of the most popular CDS indices in North America (for instance, the DJ. CDX. NA. IG and DJ. CDX. NA. HY indices) are traded under the no-restructuring definition.

# 7.6 Sovereign Cds Https://Www. Bondvigilantes. Com/Blog/2010/02/25/Sovereign-Cds-Qa/

Credit Default Swaps
(CDS) are contracts made by two market participants to either increase or reduce credit exposure to an entity – in this case a sovereign nation rather than a company. Quoted in basis points per year, a CDS price indicates the cost per year to either buy or sell exposure to the possibility of a sovereign defaulting or restructuring. Selling protection means you receive the premium every year of the contract but bear the risk of capital losses in the event of default; buying protection means that you pay the premium but will receive a payment equivalent to the losses suffered by bond holders in the event of default or restructuring. In other words sovereign CDS behave a little like insurance contracts – you can take the role of the insurer, or be insured.

# 7.7 Cdo Cds

CDO CDS refer to the securitized notes in a CDO (collateralized debt obligations). These CDOs are known as synthetic CDOs (which are due from cash CDOs) in which both assets and liabilities are CDS.

# 7.8 Capital Structure Arbitrage

CDS not only provides a tool to transfer credit risk, it also facilitate arbitrage trading and bridge the debt and equity markets.

Recognizing (or approximating) CDS as a bond, then one can replace bonds with CDS (similar to synthetic CDO) and find discrepancies between CDS and equity or the option written on equity. To do that, we need to link CDS with bonds and adopt structural models.

Choices of structural models:

Merton
(KMV) Geske
Leland (or Leland-Toft)
- Barrier (flat or exponential (Black-Cox))
- Madan-Unal
(hybrid) CreditGrades™(hybrid)

# 7.8.1 Cds Versus Put

The rationale here is that CDS is like a put option on the company's stock. As the company's credit risk increases, CDS spread widens and the put option value goes up. Upon default, the put option pays the strike (as the company's stock is worthless) and CDS pays one minus recovery. Hence, if we choose the number of shares of the put option so that the payout upon default is equal to the notional times one minus recovery, people believe that the two must be equivalent.

However, such arbitrage is not perfect. Although the payouts upon default are equal, today's investment amounts are not. In other words, it is not a 0-cost arbitrage. The main reason is that put options also carry equity risk (i.e. volatility) and CDS do not. Hence, they are fundamentally different securities. They become closely related to each other when a company is near default. As a result, such an arbitrage might work well for risky companies and not well for good quality companies.

# 7.8.2 Cds Versus Stock

The rationale here is that CDS is a bond. If the bond spread is equivalent to the CDS spread, then buying a bond is equivalent to shorting a CDS. Credit structural models argue that the equity of a firm is a
(compound) call option and hence the liabilities are a covered call (or put). As a result, the difference between the corporate debt value and the risk-free debt value is the CDS spread.

While there are a number of structural models to choose from, the Credit-Grades model is the easiest to implement and requires the least amount of data. The CreditGrades model (2002) was developed by Goldman Sachs, JP Morgan, Deutsche Bank, and RiskMetrics. This is essentially a random barrier model. The technical document can be downloaded from creditgrades.com. The main equation is its approximation formula for the survival probability, as follows:

$$
\mathbf {Q}
(t) = \mathbf {N} - \frac {\mathbf {A}}{2} + \frac {\ln d}{\mathbf {A}} - d \cdot \mathbf {N} - \frac {\mathbf {A}}{2} - \frac {\ln d}{\mathbf {A}} \tag {7.2}
$$ where

$$
\mathbf {A} = \overline {{^ {2} ^ {2} t + ^ {2}}}
$$

$$
\begin{array}{l} \mathbf {d} = \frac {1}{1 -} \mathbf {e} ^ {2} \\ = \frac {E}{E + D} \\ \end{array}
$$ and $\mathsf{N}[\cdot]$ is normal probability, is the asset volatility, is the volatility parameter for the stochastic barrier, $\mathsf{E}$ is the equity value and $\mathsf{D}$ is the "target" debt value. Hence, it is logical to view as the leverage ratio. With the survival probability function, we can proceed with CDS valuation. Using equation (7.1), we can solve for the asset value and volatility.

Use data to do a long HW

# Chapter 8

# Other Swaps

# 8.1 Variance Swap

As its name suggests, a variance swap (or var swap) exchanges one variance measure for another. Usually it is the implied variance swapping for actual variance. Since implied variance reflects an expected variance of the future (for a given tenor), variance swaps can be regarded as expected views versus actual results.

# Investopedia

Similar to a plain vanilla swap, one of the two parties involved in the transaction will pay an amount based upon the actual variance of price changes of the underlying asset. The other party will pay a fixed amount, called the strike, specified at the start of the contract. The strike is typically set at the onset to make the net present value
(NPV) of the payoff zero.

At the end of the contract, the net payoff to the counterparties will be a theoretical amount multiplied by the difference between the variance and a fixed amount of volatility, settled in cash.

The variance swap, in mathematical terms, is the arithmetic average of the squared differences from the mean value. The square root of the variance is the standard deviation. Because of this, a variance swap's payout will be larger than that of a volatility swap, as the basis of these products is at variance rather than standard deviation.

Directional traders use variance trades to speculate on future levels of volatility for an asset, spread traders use them to bet on the difference between realized volatility and implied volatility, and hedge traders use swaps to cover short volatility positions.

A variance swap is a pure-play on an underlying asset's volatility. Options also give an investor the possibility to speculate on an asset's volatility. But, options carry directional risk, and their prices depend on many factors, including time, expiration, and implied volatility. Therefore, the equivalent options strategy requires additional risk hedging to complete.

Unlike options that require delta hedging, variance swaps do not require additional hedging. Also, the payoff at maturity to the long holder of the variance swap is always positive when realized volatility is more significant than the strike. The analogy can be made to CDS (which is a swap contract) versus a default protection option.

Buyers and seller of volatility swaps should know that any significant jumps in the price of the underlying asset can skew the variance and produce unexpected results.

According to Bossu and Wasserstein (2016), a term sheet is given in Figure 8.1. The floating leg of the swap pays a historically calculated variance:

$$
{ } ^ { 2 } = \frac { 1 0,000 \times 252 \times \mathbf { \Pi } _ { i = 1 } ^ { n _ { A } } r _ { i } ^ { 2 } } { n _ { E } }
$$ where

$$ r _ {i} ^ {2} = \ln \frac {V _ {i}}{V _ {i - 1}}
$$ and $n_A$ is the actual number of trading days, $n_E$ is the expected number of trading days, $V_0$ is the closing level of the index on the trade date, and $V_i$ is the closing level of the on date $i$.

The fixed leg pays a fixed amount $\mathbf{K}$.

As in any swap, the fixed amount of the fixed leg is calculated at inception to render NPV
0. These sample terms reflect current market practices. In particular:

1. Asset returns are computed on a logarithmic basis rather than arithmetic.
2. The mean return, which appears in the habitual statistics formula for variance, is ditched. This has the benefit of making the payoff perfectly additive (i.e. 1-year variance can be split into two 6-month segments.)
3. The 252 scaling factor corresponds to the standard number of trading days in a year. The $10,000 = 100^2$ scaling factor corresponds to the conversion from decimal (0.01) to percentage point $(1\%)$.

4. The notional is specified in volatility terms (here €50,000 per 'vega' or volatility point.) The true notional of the trade, called variance notional or variance units, is given as:

$$
\text {Var i a n c e N o t i o n a l} = \frac {\text {V e g a N o t i o n a l}}{2 \mathrm {K}}
$$

With this convention, if realized volatility is 1 point above the strike at maturity, the payoff will approximately be equal to the vega Notional.

[Structure Finance] The notional for a variance swap can be expressed either as a variance notional or a vega notional. The variance notional represents the P&L per point difference between the strike squared (implied variance) and the subsequent realized variance.

Since most market participants are used to thinking in terms of volatility, trade size is typically expressed in vega notional. The vega notional represents the average P&L for a $1\%$ change in volatility.

The vega notional $=$ variance notional $\times 2\mathbf{K}$

The P&L of a long variance swap can be calculated as:

$$
\mathbf {P} \& \mathbf {L} = \mathbf {N} _ {\text {v e g a}} \quad \frac {{} ^ {2} - \mathbf {K} ^ {2}}{2 \mathbf {K}} = \mathbf {N} _ {\text {v a r i a n c e}} \quad {} ^ {2} - \mathbf {K} ^ {2}
$$

When the realized variance is close to the strike, the P&L is close to the difference between implied variance and realized variance multiplied by the vega notional.

The variance swap payout, expressed in vega notional, is locally linear around the strike.

For a vega notional of €100k, a gain of €500k is expressed as a profit of 5 Vegas (i.e. 5 times the vega notional).

# 8.1.1 Volatility Swap

The fair strike of a variance swap is slightly higher than that of a volatility swap. This is to compensate for the fact that variance is convex in volatility, as illustrated in Exhibit 2 in the next page. Identical strikes for the two instruments would otherwise lead to an arbitrage.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/4c7eadfb2efc3ce1bb6f3f08514579bd21bfdf6ee81b029eb01cb4b955957332.jpg)

Figure 8.2: Variance vs. Volatility Swap

Intuitively, the difference in fair strikes is related to the volatility of volatility: the higher the 'vol of vol', the more expensive the convexity effect of variance. This phenomenon is clearly observed when the implied volatility skew is steep, as skew accounts for the empirical fact that volatility is non constant. In fact, the fair strike of variance is often in line with the implied volatility of the $30\%$ delta put.

# 8.1.2 Forward Starting Variance Swap

Forward-starting variance swaps can be synthesized with a calendar spread of two spot-starting variance swaps, with appropriate notionals. This is because the variance formula is designed to be perfectly additive. Taking annualization into account, we can indeed write:

$$
3 \times \text {R e a l i z e d} _ {3 \mathrm {Y}} = \text {R e a l i z e d} _ {1 \mathrm {Y}} + 2 \times \text {for w a r d R e a l i z e d} _ {1 \mathrm {Y} \times 2 \mathrm {Y}}
$$ where $\mathrm{Realized}_{1\mathrm{Y}}$ is the future 1-year realized volatility, $\mathrm{Realized}_{3\mathrm{Y}}$ is the future 3-year realized volatility, and Forward Realized $_{1\mathrm{Y} \times 2\mathrm{Y}}$ is the future 2-year realized volatility starting in 1 year.

Thus, for a given forward variance notional, we must adjust the spot variance notionals as follows:

Variance Notional $_{1Y}$ = $\frac{1 \times \text{Forward Variance Notional}_{1Y \times 2Y}}{2}$

[ \text{Variance Notional}_{3\text{Y}} = \frac{3 \times \text{Forward Variance Notional}_{1\text{Y}} \times 2\text{Y}}{2} ]

The resulting implicit fair strike for the forward variance swap is:

$$
\frac {3 \times K _ {3 Y \text {v a r}} ^ {2} - 1 \times K _ {1 Y \text {v a r}} ^ {2}}{2}
$$

For example, with $\mathsf{K}_{1\mathsf{Y}\text{var}} = 18.5$ and $\mathsf{K}_{1\mathsf{Y}\text{var}} = 19.5$, the fair strike of a 2-year variance swap starting in 1 year would be:

$$
\frac {3 \times 1 9.5 ^ {2} - 1 \times 1 8.5 ^ {2}}{2} \quad 2 0
$$

The corresponding replication strategy for a long €$h_{100}$,000 forward vega notional position (equivalent to 2,500 forward variance units) would be to buy $3 \times 2,500 / 2 = 3,750$ variance units of the 3-year variance swap and sell $2,500 / 2 = 1,250$ variance units of the 1-year.

# 8.1.3 S&P 500 Variance Futures Http://Cfe. Cboe. Com/Education/Finaleuromoneyvarpaper. Pdf

The CBOE variance futures contracts o er an alternative to variance swaps. They provide an opportunity to gain the same exposure to variance as their OTC counterpart. These products trade on the CBOE Futures Exchange with quarterly expirations and are listed under the futures symbols VT (for three-month variance) and VA (for 12-month variance). Per its contract specifications, the price of a CBOE variance futures contract at maturity is identical to the settlement value for a variance swap under the realisation that N prices map to N-1 yields.

The contract multiplier for the CBOE variance future contracts is US $50 per futures point change. Thus, at the beginning of the realised variance observation period, trading a single variance futures contract is equivalent to trading a US$ 50 variance notional variance swap. This identity does not hold once the contract enters its observation period, because the denominator of the futures contract remains fixed throughout the period. For example, trading a 12-month variance contract half way through its observation period is equivalent to trading a US$25 variance notional with six months to expiration.

# 8.2 Total Return Swap

Total return swap, or TRS (especially in Europe), or total rate of return swap, or TRORS, or Cash Settled Equity Swap is a financial contract that transfers both the credit risk and market risk of an underlying asset.

By Moorad Choudhry (http://www.yieldcurve.com/Mktresearch/LearningCurve/TRS.pdf):

A total return swap
(TRS) , sometimes known as a total rate of return swap or TR swap, is an agreement between two parties that exchanges the total return from a financial asset between them. This is designed to transfer the credit risk from one party to the other. It is one of the principal instruments used by banks and other financial instruments to manage their credit risk exposure, and as such is a credit derivative. They are used as credit risk management tools, and also as synthetic repo instruments for funding purposes. One definition of a TRS is given in Francis et al. (1999), which states that a TRS is a swap agreement in which the total return of a bank loan or credit-sensitive security is exchanged for some other cash flow, usually tied to Libor or some other loan or credit-sensitive security.

# 8.3 Index Swap

# Wikipedia:

A property derivative is a financial derivative whose value is derived from the value of an underlying real estate asset. In practice, because individual real estate assets fall victim to market ine ciencies and are hard to accurately price, property derivative contracts are typically written based on a real estate property index. In turn, the real estate property index attempts to aggregate real estate market information to provide a more accurate representation of underlying real estate asset performance. Trading or taking positions in property derivatives is also known as synthetic real estate.

Property derivatives usually take the form of a total return swap, forward contract, futures, or can adopt a funded format where the property derivative is embedded into a bond or note structure. Under the total return swap or forward contract the parties will usually take contrary positions on the price movements of a property index.

The only index used for writing property derivative contracts in the UK are the various property indices published by the Investment Property Databank
(IPD) now owned by MSCI. The IPD Annual Index covers approximately 12,000 directly held UK property investments, market revalued in December 2015 at just under £202 billion equivalent to $49\%$ of the UK investment market. IPD indices have also been used in a number of other countries such as Australia, France, Germany, Italy, Japan and Switzerland as the basis for commercial property derivatives. In the United States commercial property utilizes the National Council of Real Estate Investment Fiduciaries
(NCREIF) property index the NPI. There are two main residential real estate indices in the United States which trade - Radar Logic's RPX, and the main index - S&P/Case-Shiller Home Price Indices.

NPI Total Return Swap for Fixed
- NPI Property Type Total Return Swap
Similar products on IPD in U. K

# 8.4 Inflation Swap

An inflation swap is a contract used to transfer inflation risk from one party to another through an exchange of fixed cash flows. In an inflation swap, one party pays a fixed rate cash flow on a notional principal amount while the other party pays a floating rate linked to an inflation index, such as the Consumer Price Index
(CPI) . The party paying the floating rate pays the inflation adjusted rate multiplied by the notional principal amount. Usually, the principal does not change hands. Each cash flow comprises one leg of the swap.

The advantage of an inflation swap is that it provides an analyst a fairly accurate estimation of what the market considers to be the 'break-even' inflation rate. Conceptually, it is very similar to the way that a market sets the price for any commodity, namely the agreement between a buyer and a seller (between demand and supply), to transact at a specified rate. In this case, the specified rate is the expected rate of inflation.

Simply put, the two parties to the swap come to an agreement based on their respective takes on what the inflation rate is likely to be for the period of time in question. As with interest rate swaps, the parties exchange cash flows based on a notional principal amount (this amount is not actually exchanged), but instead of hedging against or speculating on interest rate risk their focus is solely on the inflation rate.

Inflation swaps are used by financial professionals to mitigate
(hedge) the risk of inflation and to use the price fluctuations to their advantage. Many types of institutions find inflation swaps to be valuable tools. Payers of inflation are typically institutions that receive inflation cash flows as their core line of business. A good example might be a utility company because its income is linked (either explicitly or implicitly) to inflation.

Zero coupon swaps are most common, where the cash flows are swapped only at maturity.

An example of an inflation swap would be an investor purchasing commercial paper. At the same time, the investor enters into an inflation swap contract receiving a fixed rate and pays a floating rate linked to inflation. By entering into an inflation swap, the investor e ectively turns the inflation component of the commercial paper from floating to fixed. The commercial paper gives the investor real LIBOR plus credit spread and a floating inflation rate, which the investor exchanges for a fixed rate with a counterparty.

Figure 8.3: Inflation Swap
(JPM)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/fbd46e49f017c930bea3d2a5dbceac4adf4f9706dedc0b2dba7f1bd2ee0c6dd8.jpg)

Source: Bloomberg and Fitch Morgan Asset Management.

# 8.4.1 Year-On-Year Inflation Swap

Each year, at time $T_{i}$

Party B pays Party A the fixed amount

$$
N _ {i} K
$$

Party A pays Party B the floating amount

$$
N _ {i} \frac {\left(T _ {i}\right)}{\left(T _ {i - 1}\right)} - 1
$$ where:

$\mathbf{K}$ is the contract fixed rate

N the contract nominal value

M the number of years corresponding to the deal maturity i the number of years $(0 < i < = M)$

$i$ is the fixed-leg year fractions for the interval $[T_i - 1, T_i]$

$i$ is the floating-leg year fractions for the interval $[T_i - 1, T_i]$

$T_0$ is the start date

$T_{i}$ is the time of the flow i

$T_{M}$ is the maturity date (end of the swap)

$(T_0)$ is the inflation at start date (time $T_0$ )

$(T_{i})$ is the inflation at time of the flow $i$ (time $T_{i}$ )

$\left(\mathbf{T}_{\mathbf{M}}\right)$ is the inflation at maturity date (time $\mathbf{T}_{\mathbf{M}}$ )

# 8.4.2 Zero Coupon Inflation Swap

At time $T_{M} = M$ years

Party B pays Party A the fixed amount

$$
\mathbf {N} \left[ (1 + \mathbf {K}) ^ {\mathsf {M}} - 1 \right]
$$

Party A pays Party B the floating amount

$$
N \frac {\left(T _ {M}\right)}{\left(T _ {0}\right)} - 1
$$

For example, assuming two parties enter into a five-year zero coupon inflation swap with a notional amount of $100 million, 2.4\%$ fixed rate, and the agreed upon inflation index, such as CPI, at $2.0\%$ when the swap is agreed upon. At maturity, CPI is at $2.5\%$.

Fixed Leg = $100,000,000 * [(1.024)5 - 1)]
 = $100,000,000 * [1.1258999 - 1]
 = $12,589,990.68

Inflation Leg = $100,000,000 * [(0.025 ÷ 0.020) - 1]
$= $ 100,000,000 * [1.25 - 1]$
 = $25,000,000.00

Since the compounded inflation rose above $2.4\%$, the inflation buyer profited, else the inflation seller would have profited.

The currency of the swap determines the price index that is used to calculate the rate of inflation. For example, a swap denominated in U. S. dollars would be based on the Consumer Price Index
(CPI) , a proxy for inflation that measures price changes in a basket of goods and services in the United States. A swap denominated in British pounds would typically be based on Great Britain's Retail Price Index
(RPI) .

Like every debt contract, a zero coupon inflation swap is subject to the risk of default from either party either because of temporary liquidity problems or more significant structural issues, such as insolvency. To mitigate this risk, both parties may agree to put up collateral for the amount due.

Other financial instruments that can be used to hedge against inflation risk are real yield inflation swaps, price index inflation swaps, Treasury Inflation Protected Securities
(TIPS) , municipal and corporate inflation-linked securities, inflation-linked certificates of deposit, and inflation-linked savings bonds.

# 8.5 Equity Swap

Equity swaps originally refer to exchange physical assets (e.g. real estate). It stemmed from an old business tradition "buy-and-lease-back" which allows the company not to list the equipment/property on their balancesheet. Such a practice gradually grew into swaps and now with a digital world often it refers to just exchange of two streams of cash flows.

Investopedia:

An equity swap is an exchange of future cash flows between two parties that allows each party to diversify its income for a specified period of time while still holding its original assets. An equity swap is similar to an interest rate swap, but rather than one leg being the "fixed" side, it is based on the return of an equity index. The two sets of nominally equal cash flows are exchanged as per the terms of the swap, which may involve an equity-based cash flow (such as from a stock asset, called the reference equity) that is traded for fixed-income cash flow (such as a benchmark interest rate).

Swaps trade over-the-counter and are very customizable, based on what two parties agree to. Besides diversification and tax benefits, equity swaps allow large institutions to hedge specific assets or positions in their portfolios.

Equity swaps should not be confused with a debt/equity swap, which is a restructuring transaction in which the obligations or debts of a company or individual are exchanged for equity.

Because equity swaps trade OTC, there is counterparty risk involved.

For example, one party will pay the floating leg (typically linked to LIBOR)
 and receive the returns on a pre-agreed-upon index of stocks relative to the notional amount of the contract. Equity swaps allow parties to potentially benefit from returns of an equity security or index without the need to own shares, an exchange-traded fund
(ETF) , or a mutual fund that tracks an index.

Most equity swaps are conducted between large financing firms such as auto financiers, investment banks, and lending institutions. Equity swaps are typically linked to the performance of an equity security or index and include payments linked to fixed rate or floating rate securities. LIBOR rates are a common benchmark for the fixed income portion of equity swaps, which tend to be held at intervals of one year or less, much like commercial paper.

Assume a passively managed fund seeks to track the performance of the Standard & Poor's 500 index (S&P 500). The asset managers of the fund could enter into an equity swap contract, so it would not have to purchase various securities that track the S&P
500. The firm swaps $25 million at LIBOR plus two basis points with an investment bank that agrees to pay any percentage increase in$ 25 million invested in the S&P 500 index for one year.

Therefore, in one year, the passively managed fund would owe the interest on $25 million, based on the LIBOR plus two basis points. However, its payment would be set by $25 million multiplied by the percentage increase in the S&P
500. If the S&P 500 falls over the next year, then the fund would have to pay the investment bank the interest payment and the percentage that the S&P 500 fell multiplied by $25 million. If the S&P 500 rises more than LIBOR plus two basis points, the investment bank owes the passively managed fund the difference.

Since swaps are customizable based on what two parties agree to, there are many potential ways this swap could be restructured. Instead of LIBOR plus two basis points we could have seen one bp, or instead of the S&P 500, another index could be used.

One can view equity swaps as financing the purchase of an equity index (via e.g. LIBOR). Such swaps are popular for those investors who want run a positive (or negative) carry trade.

# 8.6 Commodity Swap

# Investopedia:

A commodity swap is a type of derivative contract where two parties agree to exchange cash flows dependent on the price of an underlying commodity. A commodity swap is usually used to hedge against price swings in the market for a commodity, such as oil and livestock. Commodity swaps allow for the producers of a commodity and consumers to lock in a set price for a given commodity.

Commodity swaps are not traded on exchanges. Rather, they are customized deals that are executed outside of formal exchanges and without the oversight of an exchange regulator. Most often, the deals are created by financial services companies.

A commodity swap consists of a floating-leg component and a fixed-leg component. The floating-leg component is tied to the market price of the underlying commodity or agreed-upon commodity index, while the fixed-leg component is specified in the contract. Most commodity swaps are based on oil, though any type of commodity may be underlying the swap, such as precious metals, industrial metals, natural gas, livestock, or grains. Because of the nature and sizes of the contracts, typically only large financial institutions engage in commodity swaps, not individual investors.

Generally, the floating-leg component of the swap is held by the consumer of the commodity in question, or the institution willing to pay a fixed price for the commodity. The fixed-leg component is generally held by the producer of the commodity who agrees to pay a floating rate, which is determined by the spot market price of the underlying commodity.

The end result is that the consumer of the commodity gets a guaranteed price over a specified period of time, and the producer is in a hedged position, protecting them from a decline in the commodity's price over the same period of time. Typically, commodity swaps are cash-settled, though physical delivery can be stipulated in the contract.

In addition to fixed-floating swaps, there is another type of commodity swap, called a commodity-for-interest swap. In this type of swap, one party agrees to pay a return based on the commodity price while the other party is tied to a floating interest rate or an agreed-upon fixed interest rate. This type of swap includes a notional principal-a predetermined dollar amount on which the exchanged interest payments are based-a specified duration, and pre-specified payment periods. This type of swap helps protect the commodity producer from the downside risk of a poor return in the event of a downturn in the commodity's market price.

In general, the purpose of commodity swaps is to limit the amount of risk for a given party within the swap. A party that wants to hedge their risk against the volatility of a particular commodity price will enter into a commodity swap and agree, based on the contract set forth, to accept a particular price, one that they will either pay or receive throughout the course of the agreement. Airline companies are heavily dependent on fuel for their operations. Swings in the price of oil can be particularly challenging for their businesses, so an airline company may enter into a commodity swap agreement to reduce their exposure to any volatility in the oil markets.

# Example

As an example, assume that Company X needs to purchase 250,000 barrels of oil each year for the next two years. The forward prices for delivery on oil in one year and two years are $50 per barrel and$ 51 per barrel. Also, the one-year and two-year zero-coupon bond yields are 2% and 2.5%. Two scenarios can happen: paying the entire cost upfront or paying each year upon delivery.

To calculate the upfront cost per barrel, take the forward prices, and divide by their respective zero-coupon rates, adjusted for time. In this example, the cost per barrel would be:

$$
\text {B a r r e l} = \\ 5 0 / (1 + 2 \%) + \\ 5 1 / (1 + 2.5 \%) ^ {2} = \\ 4 9.02 + \\ 4 8.54 = \\ 9 7.56.
$$

By paying $97.56 × 250,000, or $24,390,536 today, the consumer is guaranteed 250,000 barrels of oil per year for two years. However, there is a counterparty risk, and the oil may not be delivered. In this case, the consumer may opt to pay two payments, one each year, as the barrels are being delivered. Here, the following equation must be solved to equate the total cost to the above example:

$$
\text {B a r r e l c o s t} = \mathrm {X} / (1 + 2 \%) + \mathrm {X} / (1 + 2.5 \%) ^ {2} = $ 97.56.
$$

Given this, it can be calculated that the consumer must pay $50.49 per barrel each year.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/3e542fec54986dda1d22f8c995f80da3f94e26bbd555927f9e3a598cba69e708.jpg)

Figure 8.1: Variance Swap

# Chapter 9

# Exchange Traded Derivatives

# 9.1 Introduction

Exchange traded interest rate derivatives have provided a great way for investors
(institutions) to hedge short and long term interest rate risks. Thanks to exchanges, these derivatives are very liquid and provide great hedges and investment opportunities. Some of these derivatives (e.g. T bond futures) are even much more liquid than their underlying assets.

MarketsWiki (CME-CBOT merger):

The merger between cross-town rivals Chicago Mercantile Exchange and the Chicago Board of Trade was approved by shareholders and completed on July 12,2007. The plan for the merger was announced on October 17,2006, and it was far more hard fought and expensive than originally intended.

Ultimately, the CBOT stockholders received $11.3 billion for the exchange[1]. The CME's initial proposal valued CBOT at$ 7 billion.

Earlier attempts between the two exchanges to reach a merger agreement had been stonewalled by floor traders, who at the time owned each of the exchanges. However, CME became a publicly held for-profit corporation in 2002, the CBOT in 2005, creating a common currency for valuing the exchanges and the interests of members thus paving the way for a merger.

More history about CME-CBOT merger and ICE can be found on the website.

# 9.2 T Bond Futures

T bond/note futures are futures contracts written on U. S. Treasury bonds/notes. Similar to commodity futures contracts, actual T bonds/notes will be delivered. Also similar to commodity futures, several delivery options are present. One of such options is a quality option. In commodities, goods are not so easy to control their quality when they are harvested (due to weather, pests, etc.) and as a result, exchanges must allow the short side the flexibility to deliver whatever quality upon delivery. To avoid any loss for the buy side, exchanges then allow more (or less) quantity for lower (or higher) quality of the goods. There are also timing options (again due to the uncertainty of harvest) to allow the short side to delivery successfully.

T bond and T note futures have similar flexibilities. But given that T bond futures are more liquid and those delivery flexibilities are more valuable, the discuss of this section limits to T bond futures, although those flexibilities apply to T note futures as well.

# 9.2.1 Delivery Process

T bond futures are traded on CBOT/CME in Chicago. It is a physically delivered contract (i.e. at the settlement day of the futures contract, an actual Treasury note or bond must be delivered at the futures price). To facilitate delivery, any bond that is at least 15 years to first call or maturity can be used for delivery. Hence the futures contract is not on a specified bond, but rather on a basket of bonds. Currently there are more than 2 dozens of such Treasury bonds that can be chosen for delivery.

The choice belongs the short side of the futures contract. It is reasonable to assume that the short side will deliver the cheapest bond possible. This is known as the cheapest-to-deliver option, or quality option. The long side is fully aware of such an option and hence will lower the futures price accordingly (i.e. the market futures price reflects the quality option).

To further facilitate delivery, a flexible delivery time is considered. First, the delivery time is not a day but a whole month. Delivery of T note or bond can take place at any day of the settlement month. Delivery is a three-day process:

1. position day
2. notice of intention day
3. delivery day and as a result, the earliest position day can be 2 days before the first day of the delivery month.

This particular delivery process creates a few interesting delivery options, known as timing options. Figure 9.1 demonstrates what these timing options are.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/48a31bf9811b509278c106acd5ac0734dbd365e813f7a9be3bd998f7b62a130b.jpg)

Figure 9.1: Derlivery Time Line

Due to this specially designed delivery process, in most of the delivery month (nearly 17 days), delivery takes place as the futures contract is being traded. In other words, one can sell a futures contract and delivers immediately. As imagined, the futures price cannot be different from the underlying T bond price.

However, in the last 7 business days (as Figure 9.1 demonstrates), the futures market is closed and only delivery can take place. In other words, the futures price cannot change but the underlying deliverable bonds can still trade and their prices fluctuate. This is known as the end-of-month timing option. Throughout the chapter we use $\mathbf{v}$ for the starting time and $\mathbf{T}$ for the ending time of this period.

For the rest of the delivery month, there are two sections of each day, the accrued interest period and the wild card period. For a regular futures trading day i between 7:20 a.m. and 2 p.m. Chicago time, both bond and futures markets are open simultaneously. The futures market closes at 2 p.m. but there is no cial closing time for the bond market. Since the short has till 8 p.m. to make the delivery decision, the wild card period is defined over 3 p.m. $(\mathbf{u_i})$ to 8 p.m. $(\mathbf{u_i} + \mathbf{h})$ Eastern time.

# 9.2.2 Quotes

Similar to the underlying T bond quotes, T bond futures are quoted by clean price. The long side of the futures contract will have to pay:
 quoted futures price $\times$ conversion factor $+$ accrued interest where the accrued interest is computed from last coupon date to the settlement date. In return, the long side will receive the underlying bond whose value is:

$$ d i r t y price = c l e a n price + a c c r u e d i n t e r s t
$$ where the accrued interest of the bond is the computed from the last coupon date till the purchase date of the bond.

The delivery profit (or loss) is the difference of the two. Note that if the bond is purchased the same date as the settlement date (i.e. delivery date) of the futures contract, then the accrued interests on both sides are equal.

$$
\text {q u o t e d f u t u r e s price} \times \text {c o n v e s i o n f a c t o r - q u o t e d bond price} \tag {9.1}
$$

This situation happens in the first 17
(roughly) days of the delivery month where both futures and bonds are traded (and hence the settlement date is the same as the purchase date). However, in the last 7 days, the futures contracts are not traded and the settlement date is fixed but the purchase date of the bond will vary. (Note the in the conversion factor calculation, this is ignored.)

# 9.2.3 Quality Option And Conversion Factor

As explained earlier, the quality option gives the short side of the futures contract a flexibility to deliver the cheapest of dozens of T bonds. To overcome such unfairness, CBOT/CME adopts the same practice of the commodity futures and allow for a conversion factor to trade quality of the delivery (T bond) for the futures price received by the short side. That is, a lower quality bond is accompanied by lower a futures price. In other words, the exchange hopes to eliminate the quality option.

Unfortunately, the conversion factor is formula-based and will not change with the market condition. As a result, it fails to successfully negate the quality option. Empirically, literature has documented substantial value for the quality option.

The conversion factor can be computed easily by the following process:

1. round the time to maturity down to the nearest quarter,
2. use $6 \%$ (or semi-annual $3 \%$ ) to discount to the next coupon date,
3. use $1.4889\%$ (= $\overline{1.03} - 1$ ) to discount for any quarter left (simply divide the above result by $\overline{1.03}$

# 4.
(Natural) Round The Result To 4 Digits

As a result of this process, $6\%$, 20 year is the standard bond. Deliver 1 unit if it is standard bond and deliver proportionally if it is other bond. An example:

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline i=6% & & & & & \\ \hline cpn & mat & cf & QBP & *cf & payo \\ \hline
0.05 & 20 & 0.8844 & 0.8844 & 0.8844 & 0 \\ \hline
0.06 & 15 & 1 & 1 & 1 & 0 \\ \hline
0.06 & 20 & 1 & 1 & 1 & 0 \\ \hline
0.08 & 20 & 1.2311 & 1.2311 & 1.2311 & 0 \\ \hline
0.08 & 25 & 1.2573 & 1.2572 & 1.2572 & 0 \\ \hline
\end{tabular}
\end{document}
``` where futures price, $(= \text{standard bond price}) = 1$
(par) .

Table 9.1: Conversion Factor and 6% Flat Yield Curve

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline i=8% & & & & & \\ \hline cpn & mat & cf & QBP & *cf & payo \\ \hline
0.05 & 20 & 0.8844 & 0.703108 & 0.709374 & 0.006265 \\ \hline
0.06 & 15 & 1 & 0.82708 & 0.802072 & -0.02501 \\ \hline
0.06 & 20 & 1 & 0.802072 & 0.802072 & 0 \\ \hline
0.08 & 20 & 1.2311 & 1 & 0.987469 & -0.01253 \\ \hline
0.08 & 25 & 1.2573 & 1 & 1.008444 & 0.008444 \\ \hline
\end{tabular}
\end{document}
```

Table 9.2: Conversion Factor and 8% Flat Yield Curve where $= 0.8021$. Note that the conversion factors stay the same regardless of the yield curve. Also note that the QBP's (quoted bond prices which is clean prices) are observable in the marketplace (but here they are computed using flat discount rate).

CBOT (later merged into CME in 2007) has decided that beginning with the March 2000 contract, Treasury futures will equalize the deliverable bonds by pricing them to a $6\%$ yield. All that means is that the same rule applies relative to the $6\%$ yield level: When yields are below $6\%$, the cheapest-to-deliver bond will have a short duration; when they are above $6\%$, a long-duration bond will be cheapest to deliver.

# 9.2.4 Ctd Bond

If the conversion factor did the job, then the quality option would have been eliminated and the futures price would be the same regardless of which bond is delivered.

Unfortunately, the conversion factor does not do a good job and hence which bond will be actually delivered matters a lot and will act the futures price.

In other words, the futures price traded today is a function of which bond is expected to be delivered. It is no surprise that today's futures price is closely related to today's cheapest-to-deliver bond (with the expectation that today's cheapest is the settlement day cheapest).

Besides the CTD bond today, traders also consider the Second CTD bond in that while small there is still a chance that the second cheapest will become the first cheapest in the near future. Hence they follow the second cheapest closely as well and adjust the futures price accordingly (not as much as the first cheapest). To be really comprehensive, traders consider the third CTD bond. But the likelihood for the third cheapest to become the first cheapest is really small.

# Jone'S Extreme Duration Rule

To monitor the first, second, and third CTD bonds, Robert Jones provides a simple rule of thumb, known as the extreme duration rule0.2 He proves that the cheapest bond is the shortest-duration bond. However, the proof is valid under flat yield curve (the only situation where yield has meaning). Under a stochastic environment, his argument is an approximation.

# Exchange Option Idea

A more accurate method than Jone's duration rule is the exchange option idea. We can think of the futures contract is written on the CTD bond today but is accompanied by an exchange option that allows the trader to switch to another bond should that bond becomes the cheapest on settlement.

The exchange option formula for the stocks is:

$$
\begin{array}{l} C = \hat {\mathbb {E}} e ^ {- r (T - t)} \max \{X
(T) - Y
(T) , 0 \} \tag {9.2} \\ = X
(t) N \left(d _ {+}\right) - Y
(t) N \left(d _ {-}\right) \\ \end{array}
$$ where

$$
\begin{array}{l} \mathbf {d} _ {\pm} = \frac {\ln \mathbf {X} (\mathbf {t}) - \ln \mathbf {Y} (\mathbf {t}) \pm 1 / 2 v ^ {2} (\mathbf {T} - \mathbf {t})}{v \overline {{\mathbf {T} - \mathbf {t}}}} \\ v ^ {2} = \begin{array}{l} 2 \\ x \end{array} + \begin{array}{l} 2 \\ y \end{array} - 2 \quad x y \\ \end{array}
$$ and $\mathsf{X}$ and $\mathsf{Y}$ are two stocks and $\mathsf{x}, \mathsf{x},$ and are their respective volatilities and correlation. Note that in the final equation, the risk-free rate is not present (although it is in the valuation).

In the case of Treasuries, unfortunately, this result does not hold exactly. First, the discounting in the first line of equation (9.2) is stochastic and correlated with $X$ and $Y$ because they are bonds. Hence, it does not disappear as in the case of stocks. Secondly, these stocks do not pay dividends but here they pay coupons. As a result, the log-normal assumption will not hold for Treasuries.

Nevertheless, this idea is widely used in practice due to its simplicity and empirically it has shown certain reliability. This idea clearly includes the likelihood of second CTD bond to become the first cheapest. One can extend this idea to exchange option on multiple assets so even the third CTD bond today can be included.

# Option On Min/Max

Clearly, the exchange option model does not do a perfect job. It can take care of the second cheapest to deliver but when the volatility is large and the probability of the third cheapest to suddenly becomes the cheapest increases, then the exchange option model will miss some option value.

The min/max option was derived by Rene Stulz in
1982. The pricing formula involves multi-variate normal probabilities. Interested readers can find the lengthy equation in the original paper. Multi-variate normal probabilities cannot be evaluated easily. Often times we rely on Monte Carlo with importance sampling (if probabilities are too small (options are too way out-of-money)).

However, the Stulz formula is for equity options and fails to consider the term structure of interest rates. As a result, it cannot estimate the correlations
(comovements) among bonds accurately. Nevertheless, it is a convenient approximation.

Note that the probability for the third cheapest to become the cheapest is really small in reality. Unless experiencing abnormal volatility in term structure, the exchange option formula provides a good enough approximation.

# The Dry Spell

The dry spell refers to the 1994-1999 period where the only deliverable option is the $11 \frac{1}{4}\%$ 2015 bond, which had been the shortest duration bond for the period. It has not changed for the entire duration of 5 years.

# 9.2.5 Timing Options

As described in Figure 9.1, there are three periods for timing option. The first and also most valuable option is the last week (7 business days) of the delivery month. This is the period where the futures market is closed but bonds are still traded. As a result, the short side of the futures contract can wait for the best moment to buy the bond and make the delivery and make a profit:

$$
\max \left\{\quad (\mathbf {v}) \times \mathsf {C F} _ {\mathbf {j}} - \mathsf {B} _ {\mathbf {j}} (\mathbf {t}) \right\}
$$ where $\mathbf{v} < \mathbf{t} < \mathbf{T}$ is the end-of-month period.

Then, there is a 6 hour window (from 3 to 9) that futures market is closed and bond market is open. This happens daily at the beginning (roughly 17 days) of the delivery month, known as the wild card timing option (or wild card play). This option value is small as the next day the futures market resets and will wipe out all the gain in the wild card option. The only situation where the wild card option can be valuable is the CTD bond swings in price hugely. In this situation, the delivery profit from the wild card period will not be eliminated as the bond price swings back high in the next day.

Lastly is the daily normal day time window when both futures and bonds are traded. In this window, there is no possibility of arbitrage as one can easily buy or sell bonds (and reverse in futures) should any discrepancies exist. This is known as the accrued-interest timing option for the sake of the possibility of any discrepancy in two accrued interests. Other than liquidity, this option has no real economic value.

# 9.3 Valuation Of T Bond Futures

In this section, I shall demonstrate in details how each method of valuation (i.e. computing futures price) is carried out. We first must notice that futures price is not the price of the futures contract, but rather the price to be paid in the future in order to exchange for the underlying asset (in our case a Treasury bond).

The classical risk-neutral pricing theory states that the futures price is the risk-neutral expectation of future asset price as:

$$
\begin{array}{l} \left(\mathrm {t}, \mathrm {T} _ {\mathrm {f}}, \underline {{\mathrm {I}}}\right) = \hat {\mathbb {E}} _ {\mathrm {t}} [ \quad \left(\mathrm {T} _ {\mathrm {f}}, \underline {{\mathrm {I}}}; \mathrm {c}\right) ] \\ = \hat {\mathbb {E}} _ {t} c \quad \begin{array}{c} n \\ j = 1 \end{array} P \left(T _ {f}, T _ {j}\right) + P \left(T _ {f}, T _ {n}\right) \\ = c _ {j = 1} ^ {n} \hat {\mathbb {E}} _ {t} [ P \left(T _ {f}, T _ {j}\right) ] + \hat {\mathbb {E}} _ {t} [ P \left(T _ {f}, T _ {n}\right) ] \tag {9.3} \\ = c \quad \begin{array}{c} n \\ j = 1 \end{array} \quad (t, T _ {f}, T _ {j}) + \quad (t, T _ {f}, T _ {n}) \\ \end{array}
$$ where $\mathsf{P}(\cdot, \cdot)$ is the zero coupon bond price, $(\cdot, \cdot, \cdot)$ is the coupon bond with a coupon rate $c$, $\underline{T} = < T_1, \dots, T_n >$ is a vector of coupon payment dates between $T_f$ the settlement date of the futures contract and the maturity of the bond $T_n$.

Note that in theory these are actual values and hence dirty prices. In reality, future prices and bond prices are quoted without accrued interests (i.e. clean prices). The accrued interests are important and will be discussed later.

T bond futures is more complex than this. The payoff upon delivery (at settlement time $T_f$ ) is:

$$
\max _ {j} \left\{\quad \left(T _ {f}\right) \times q _ {j} - j \left(T _ {f}\right) \right\} \tag {9.4}
$$ where $\mathbf{q}_i$ is the conversion factor of the i-th bond. The futures price is set so that the expected value should be
0. The notation here is simplified.

If there is no timing option so the futures contract is marked to market every day, then there is no discounting necessary. And the futures price is the solution to the above equation when it is 0 value:

$$
\begin{array}{l} \hat {\mathbb {E}} _ {t} \left[ \max \left\{\left(T _ {f}\right) \times q _ {j} - j \left(T _ {f}\right) \right\} \right] = 0 \\ \hat {\mathbb {E}} _ {t} \max \quad \left(T _ {f}\right) - \frac {j \left(T _ {f}\right)}{q _ {j}} = 0 \tag {9.5} \\
(t) = \hat {\mathbb {E}} _ {t} \min \frac {j (T _ {f})}{q _ {j}} \\ \end{array}
$$

However, there are timing options! Hence discounting is necessary and will complicate the computation. I will discuss this later with a proper interest rate model.

# 9.3.1 Cost Of Carry

An industry popular method without employing a complex interest rate model is the cost-of-carry
(CoC) method. This method is standard in commodity futures contracts. The standard CoC method assumes that there is an arbitrage between the underlying spot and its futures. If the futures price is too high relative to spot, then anyone can sell the futures and buy the spot, store the commodity till settlement date, and then make the delivery. Hence the futures price can never exceed the spot price and its "cost of carry". If the reverse is true (i.e. futures price is too low), usually it is not easy to short-sell the spot (not easy to short-sell commodities) and hence the arbitrage is not as easy.

Similar to commodity futures, we do not know which bond will be delivered and need to assume that the current cheapest is the cheapest at settlement.

$$ i = [
(t) \times q _ {i} + a _ {i} (T _ {f}) ] - [
(t) + a _ {i}
(t) ] \times (1 + r _ {f}) ^ {T _ {f} - t}
$$ where $r_f$ is the risk-free rate, $q_i$ is the conversion factor of the $i$ -th bond, $a_i(t)$ is the accrued interest of the $i$ -th bond evaluated at time $t$, $t$ is the futures price, $t$ is the bond price.

For a chosen bond
(i) to deliver, the delivery profit is $\mathbf{i}$. As a result, to choose the cheapest bond to delivery, one must maximize the profit over all bonds (i.e. loop over all i's). Once the cheapest bond is chosen, then we can use its forward price
(t) to approximate the futures price (but note that the forward price is higher than the futures price, and hence the market futures price should be lower than the CoC estimate).

Clearly, this method is very crude. First it ignores the probability of the other bond (second cheapest or the third cheapest) to become the cheapest at settlement. Secondly, the compounding $(r_f)$ is applied outside of the expectation.
 mini HW

# 9.3.2 Using The Exchange Option Model

As shown in equation (9.2), we can implement this "Black-Scholes" type equation ${}^{3}$ by simply assuming the coupon bonds (CTD and next CTD) follow a log-normal distribution with a constant volatility. Given that there is no discounting in the formula, one can easily obtain an option value and subtract it from the futures price without the option, i.e. equations (9.2) and (9.5):

$$
\begin{array}{l} (\mathbf {t}, \mathbf {u}) = \hat {\mathbb {E}} _ {\mathbf {t}} \min \frac {\mathbf {X} (\mathbf {u})}{\mathbf {q} _ {\mathbf {x}}}, \frac {\mathbf {Y} (\mathbf {u})}{\mathbf {q} _ {\mathbf {y}}} \\ = \hat {\mathbb {E}} _ {t} \frac {Y
(u) }{q _ {Y}} - \max \frac {X
(u) }{q _ {X}} - \frac {Y
(u) }{q _ {Y}}, 0 \tag {9.6} \\ = \frac {Y (t, u)}{q _ {Y}} - \frac {X
(u) }{q _ {X}} N (d _ {+}) - \frac {Y
(u) }{q _ {Y}} N (d _ {-}) \\ \frac {\mathrm {Y} (\mathbf {t}, \mathbf {u})}{\mathbf {q} _ {\mathbf {Y}}} - \frac {\mathrm {X} (\mathbf {u})}{\mathbf {q} _ {\mathbf {X}}} \mathbf {N} \left(\mathbf {d} _ {+}\right) - \frac {\mathrm {Y} (\mathbf {u})}{\mathbf {q} _ {\mathbf {Y}}} \mathbf {N} \left(\mathbf {d} _ {-}\right) \\ \end{array}
$$ where $\mathbf{\mu}$ is the futures price and $\mathbf{\mu}$ is the forward price, and $\mathbf{d}_{+}$ and $\mathbf{d}_{-}$ are similar to equation (9.2) but with the adjustment of the conversion factors, i.e. $X(t)$ $X(t) / q_{\times}$ and $\Upsilon
(t) $ $\Upsilon
(t) / q_{\Upsilon}$. Note that the last line of equation (9.6) is to approximate the futures price (which is the result of the risk-neutral expectation) by the forward price which requires no model. $^4$

There are two approximations. The first approximation is $\hat{\mathbb{E}}_t[\Upsilon (\mathfrak{u})] = \mathbf{\Psi}_{\Upsilon}(\mathfrak{t},\mathfrak{u})$ $\mathbf{\Psi}_{\Upsilon}(\mathfrak{t},\mathfrak{u})$, since the futures price of bond Y does not exist (but the forward does). Here we approximate the futures price by the forward price (which is higher than the futures price). The second approximation is the exchange option. We understand from equation (9.2) that only with discounting we can apply the formula. Here, we ignore the discounting but apply the formula anyway. So we are under-subtracting.

Given that we are over-estimating the futures price for bond Y and subtracting the option value, the futures price computed using the exchange option formula is over-estimated. Note that this evaluation only considers CTD and the second CTD bonds. To include the third CTD bond, we lose the close-form solution and must employ a numerical method. Then it might be better to pursue a full term structure model without approximation errors.
 mini HW

# 9.3.3 Using An Interest Rate Model

It is quite straightforward to use a lattice model such as he Ho-Lee model to evaluate the quality options and all the timing options.

For notation and symbols used here, please refer back to Chapter
1. In addition,

$$
\mathbf {a} _ {\mathrm {i}} (\mathbf {t}) = \text {a c c r u e d i n t e r s t o f the i t h bond}
$$

$\mathbf{q_i} =$ conversion factor of the ith bond

$\mathbf{Q_i(t)} =$ quoted coupon bond price of the ith bond

$(t) =$ quoted futures price with all delivery options
(t) = futures price with the quality option and continuous marking to market
(t) = futures price with the quality option at the absence of continuous MTM

Note that the transaction price of a coupon bond is the quoted price plus the accrued interest. In other words, for the $i$ -th coupon bond in the delivery set for the futures contract, $Q_{i}(t) = (t, \underline{1}; c_{i}) - a_{i}(t)$ where $(t, \underline{1}; c_{i})$ is the coupon bond notation defined in Notation that has the coupon and maturity of the $i$ -th bond. Also note that $(t)$ is the quoted futures price of the cheapest-to-deliver bond. The actual futures price needs to be adjusted by the conversion factor and the accrued interest of the cheapest-to-deliver bond.

# 9.3.4 Quality Option Under No Marking To Market

The above evaluation of the quality is correct only if marking to market is applied continuously throughout the life of the futures contract. Unfortunately, in the last 7 business days of the delivery month, the futures market is not open and the futures contract is not marked to market. The futures price used for settlement in this period is the last settlement price at the beginning of the 7-day period. Since the futures price is already determined, the actual payoff at the last delivery day, $T$, is not necessarily
0. The short can actually gain or lose. To avoid arbitrage, the futures price at the beginning of the 7-day period should be set so that the expected present value of payoffs at maturity is
1. Under this circumstance, the futures price at the beginning of the 7-day period is a forward price, not a futures price. Formally, label the futures price as
(v) to represent the futures price at the beginning of the end-of-month period, $v$, should be so set that:

$$
\hat {\mathbb {E}} _ {v} \exp - \underset {v} {\overset {T} {\vee}} r
(u) d u \max \left\{\quad
(v) q _ {i} - Q _ {i}
(T) \right\} = 0 \tag {9.7}
$$ where $r(u)$ is the instantaneous rate. Using the forward measure, we can then rewrite the above equation as:

$$
\tilde {\mathbb {E}} _ {v} ^ {(T)} [ \max \{\quad
(v) q _ {i} - Q _ {i}
(T) \} ] = 0 \tag {9.8}
$$ which can be expanded as follows:

$$
0 = \tilde {\mathbb {E}} _ {\mathbf {v}} ^ {(\mathrm {T})} [ \max \{\quad (\mathbf {v}) \mathbf {q} _ {\mathbf {i}} - \mathbf {Q} _ {\mathbf {i}} (\mathrm {T}) \} ]
$$

$$
0 = \tilde {\mathbb {E}} _ {v} ^ {(T)} [
(v) q _ {1} - Q _ {1}
(T) + \max \left\{\quad
(v) \left(q _ {i} - q _ {1}\right) - \left(Q _ {i}
(T) - Q _ {1}
(T) \right), 0 \right\} ] \tag {9.9}
$$

$$
0 = \quad (\mathbf {v}) \mathbf {q} _ {1} - \quad_ {1} (\mathbf {v}) + \tilde {\mathbb {E}} _ {\mathbf {v}} ^ {(\mathsf {T})} [ \max \left\{\mathbf {Q} _ {1} (\mathsf {T}) - \mathbf {Q} _ {\mathbf {i}} (\mathsf {T}) - \right. \quad (\mathbf {v}) \left(\mathbf {q} _ {1} - \mathbf {q} _ {\mathbf {i}}\right), 0 \} ]
$$ and the futures price at time v can be written as:

$$
(\mathbf {v}) = \frac {1 (\mathbf {v})}{\mathbf {q} _ {1}} - \frac {1}{\mathbf {q} _ {1}} \tilde {\mathbb {E}} _ {\mathbf {v}} ^ {(T)} [ \max \left\{\mathbf {Q} _ {1}
(T) - \mathbf {Q} _ {i}
(T) - K _ {i} \right\} ] \tag {9.10}
$$ where $K_{i} = (q_{1} - q_{i})$ ( $v$ ). Note that $_{1}(v) = \tilde{\mathbb{E}}_{v}^{(T)}[Q_{1}(T)]$ is the forward price of the first bond. The interpretation of this result is similar to that of (9.6), except that the risk neutral measure is replaced by the forward measure and the futures price becomes the forward price. However, unlike (9.6), the futures price at time $v$ has no easy solution, because it appears on both sides of the equation. This futures price has to be solved recursively using a numerical method. In a lattice framework suggested by Boyle (1989), we first choose an initial value for the futures price at time $v$, calculate payo s at various states at maturity $T$, and then work backwards along the lattice. We adjust the futures price until the discounted payoff computed from the lattice is
0. Once the futures price at time $v$ is set, we can then travel back along the lattice and use the risk neutral probabilities till the end of the last wild card period, $u_{n} + h$. Then the similar procedure for the end-of-month period is repeated for the last wild card period to arrive at the futures price at the beginning of the wild card period $u_{n}$. Again, the risk neutral expectation is taken at $u_{n-1} + h$ and a recursive search is to compute the futures price at $u_{n-1}$. The process is repeated until the delivery month is over. Since the futures price becomes a forward price which cannot be obtained without a recursive search. The search for the "forward price" takes place at every node at all the times (i.e., $u_{1}, u_{2}, \dots, u_{n}, v$ ). As a result, to compute the futures price with the quality option is prohibitively expensive.

# 9.3.5 Timing Options

Besides the quality option, there are three timing options embedded in the Treasury bond futures price. The most valuable one is the end-of-month
(EOM) timing option. Without the EOM timing option, we know that the futures price should be set according to (9.5). With the EOM timing option, deliveries can occur any time in the end-of-month period as long as the current delivery payoff is more than the present value of the expected payoff. This is similar to the early exercise decision of an American option. There is no closed-form solution to compute American option prices. Precisely as Boyle (1989) has observed, the pricing of quality and timing options would need a lattice model.

As in an American option, early delivery (i.e. early exercise) is activated if the delivery payoff is larger than the continuation value (expected value of future payoff). However, this delivery decision is intertwined with the recursive process in computing the quality option value. That is, every time we start with a trial value for the futures price at the beginning of the EOM period. This futures price will not change throughout the EOM period since the futures market is closed. We then work backwards from the end of the EOM period with an early delivery decision checked at every node until we reach the beginning of the EOM period. If the expected payoff computed via this backward induction at the beginning of the EOM period is not 0, then the trial futures price must be revised. The process continues until the payoff at the beginning of the EOM period is
0. The computation cost of such a recursive algorithm in a two-dimensional lattice is high.

In addition to the EOM timing option that refers the last 7 trading days of the delivery month, there are two other timing options in the rest 15 days of the delivery month – the accrued interest timing option and the wild card timing option. The accrued interest timing option refers to the flexibility for the short to deliver the cheapest bond any time in the delivery month when both futures and spot markets are open. This is everyday from 7:20 a.m. to 2:00 p.m. (Chicago time) from the first day of the delivery month to right before the end-of-month period. Since the futures market is open, the futures contract is marked to market and deliveries can take place any time. As a result, the futures price can never be greater than the cheapest-to-deliver bond price. If the futures price were greater than the cheapest bond price, then deliveries would take place instantly. The short will sell the futures, buy the cheapest bond, make the delivery, and earn an arbitrage profit. Formally, for $t < v$,

$$
(t) > \min \frac {Q _ {i}
(t) }{q _ {i}} \quad \max \left\{\left(t\right) q _ {i} - Q _ {i}
(t) \right\} > 0 \tag {9.11}
$$

Therefore, the futures price in the period where both markets are open must be less than the cheapest-to-deliver bond price to avoid arbitrage. On the other hand, if the futures price is lower, one can long futures and short spot but the delivery will not occur because the short position of the futures contract will lose money if he makes a delivery. Consequently, the delivery will be postponed and there is no arbitrage profit to be made. If the futures price is always less than the cheapest-to-deliver bond price (adjusted by its conversion factor), the delivery payoff now is negative as opposed to 0 at the end. As a result, the short will never deliver until the last day. Consequently, the accrued interest timing option has no value. We restate this result in the following proposition.

# Proposition.

The accrued interest timing option without the wild card and end-of-month options has no value. The existence of the other timing options will lower the current futures price, further reducing the incentive for the short to deliver early. We state this result in the following Corollary.

□

# Corollary.

The accrued interest timing option with the end-of-month options has no value.

□

While the accrued interest timing option is worthless, the wild card timing option is not. When the futures market is closed, there is no marking to market in the futures market and the futures contract becomes a forward contract. Boyle (1989) has demonstrated that in a case of forward contracts timing options will have value. We shall extend Boyle's analysis to the wild card option in Treasury bond futures. Similar to the end-of-month option, the wild card option refers to the flexibility in delivery in a 5-hour period every day for about 15 days where the futures market is closed but the bond market is open. However, the wild card option is different from the end-of-month option in that the futures market will reopen after each wild card period and the futures contract will be marked to market. If bond prices drop in the wild card period, given that the futures price is fixed, the short can benefit from delivering the cheapest bond. However, the short can equally benefit from the marking to market when the futures market reopens on the next day. As a result, the incentive for the short to deliver in the wild card period is minimal. Delivery can take place in a wild card period only when the payoff from immediate delivery exceeds the expected present value of marking to market on the next day.

The modeling of the wild card period requires a very fine grid. To model the wild card option properly, we need at least two steps in each wild card period to allow for early exercise. As a result, it requires a minimum of four steps per day. Given that practically the wild card option has very little value due to the next-day marking-to-market, we will not evaluate the wild card option in this chapter.

# 9.4 T Bond Futures Options

Given the complexity of the T bond futures, their options are even more di cult to evaluate. As a result, the numerical lattice used for T bond futures in the previous section, will be used for T bond futures options. Chen and Yeh (2002) have provided closed-form upper bonds for these options. A quick sketch is given below. The basic idea is that we use futures-style options as upper bounds of American option bounds.

American options require numerical methods, namely lattice models, to provide accurate price estimates. The computations can become expensive when more than one state variable is involved. Analytical upper bounds can therefore provide a useful guideline for how high the American values can reach. In this paper, we derive analytical (closed-form) upper bounds for American option prices under stochastic interest rates, stochastic volatility, and jumps where American option prices are difficult to compute with accuracy. In a stochastic volatility model (Heston (1993) and Scott (1997)) that has two random factors, we demonstrate that the upper bound only needs a very small fraction of the time of the American option to compute.

We find that An American option is bounded from above by the risk neutral expectation of its maturity payoff if this expectation is greater than the intrinsic value at all times. To show that we shall prove this theorem using a discrete approximation similar to the lattice approach. Let $T$ be the maturity of the option contract. At $T$, the payoff is given by $X(T)$. At $T - t$, the payoff is either the discounted terminal value:

$$
\hat {\mathbb {E}} _ {T - t} [ (T - t, T) X
(T) ] \tag {9.12}
$$ or the intrinsic value:

$$
\mathbf {X} (\mathbf {T} - \mathbf {\Delta t}) \tag {9.13}
$$ whichever is larger where $(t, s)$ represents the discount factor from time $t$ to time $s$. At $T - 2$, the larger quantity of the above result is discounted and compared with the early exercise value, i.e. the payoff is either the continuation American value:

$$
\hat {\mathbb {E}} _ {T - 2} \quad t [ (T - 2, T - t) \max \{\hat {\mathbb {E}} _ {T - t} [ (T - t, T) X
(T) ], X (T - t) \} ] \tag {9.14}
$$ or the intrinsic value:

$$
\mathbf {X} (\mathbf {T} - 2 \quad t) \tag {9.15}
$$ whichever is larger. This process is repeated until the current time is reached and the American option value is obtained. Now, consider a function at time $T - t$, $\hat{\mathbb{E}}_{T - t}[X(T)]$. It is certainly true that:

$$
\hat {\mathbb {E}} _ {T - t} [ X
(T) ] > \hat {\mathbb {E}} _ {T - t} [ (T - t, T) X
(T) ] \tag {9.16}
$$ provided that the values of the discount factor are less than one for all sample paths. If $\hat{\mathbb{E}}_{T - t}[X(T)] > X(T - t)$ is also true, then at $T - 2$ t, it is true that this expected payoff is greater than the continuation value, i.e.:

$$
\begin{array}{l} \hat {\mathbb {E}} _ {T - 2} \quad t [ X
(T) ] = E _ {T - 2} \quad t [ \hat {\mathbb {E}} _ {T -} \quad t [ X
(T) ] ] \\ > \hat {\mathbb {E}} _ {T - 2} t [ (T - 2 t, T - t) \max \left\{E _ {T - t} [ (T - t, T) X
(T) ], X (T - t) \right\} ] \tag {9.17} \\ \end{array}
$$

As a result, as long as we can show that $\hat{\mathbb{E}}_t[X(T)] > X(t)$ for all $t$, then $\hat{\mathbb{E}}_t[X(T)]$ is an upper bound of the American value. The result will hold in continuous time as $t$ reaches a limit.

# 9.5 Ultra T Bond Futures (And Options)

In 2015, the CME Group (former CBOT and CME) introduced a new T bond futures contract known as Ultra T bond futures. The key feature distinguishing the Ultra T-Bond from the existing T-Bond futures contract is the relatively narrow range of deliverable securities. The deliverable basket for Ultra T-Bond futures comprises cash Treasury bonds with at least 25 years of remaining term to maturity. By comparison, deliverable securities for the existing T-Bond contract are bonds with remaining terms to maturity of 15 years or more.

# 9.6 Eurodollar Futures

Eurodollar futures are futures contracts settled on LIBOR. A three-month LIBOR is a money market account rate that can be translated a discount bond as:

$$
L = 4 \frac {1}{P (t, t + 1 / 4)} - 1 \tag {9.18}
$$

# 9.6.1 Quote

The Eurodollar futures quotes can be converted to the futures price as:

$$
^ {E D} = 100 - \frac {100 - Q F P}{4} \tag {9.19}
$$ where QFP is quoted futures price.

# 9.6.2 Delivery

The delivery of Eurodollar futures is cash equal to:

$$
1 - \frac {L _ {3 m}}{4} \tag {9.20}
$$ where $\mathsf{L}_{3\mathsf{m}}$ is a 3-month LIBOR. Given the relationship between LIBOR and discount factor in equation (9.18), we know it is:

$$
1 - \frac {1}{P (t, t + 1 / 4)} - 1 = 2 - \frac {1}{P (t, t + 1 / 4)}
$$

ED futures are cash settled and hence no delivery options to be evaluated.

# 9.6.3 Pricing

Recall that the futures price is the risk-neutral expectation of the underlying payoff. Hence, ED futures price must be:

$$
^ {E D} = \hat {\mathbb {E}} 2 - \frac {1}{P (t, t + 1 / 4)} \tag {9.21}
$$ which needs a pricing model for LIBOR before we can evaluate ED futures.

Please be reminded that $(t, T, T + 1/4) = \hat{\mathbb{E}}[P(T, T + 1/4)]$ and readers should not be confused between the two. Equation (9.21) is the pricing formula for ED futures and the latter is the futures for pure discount bond.

We can use the simple Vasicek or CIR model to evaluate ED futures or lattice models like the Ho-Lee model to evaluate ED futures.

# 9.7 Euro Dollar Futures Options

These options are quite straight for evaluate. Given that the underlying futures have no complex embedded options, the same lattice used for ED futures can be used for options. One can also work out the closed-form formula under the Vasicek model (CIR model is more di cult) but note that the option is written on the reciprocal of the zero coupon bond as opposed to the zero coupon bond.

For example, a call option on ED futures:

$$
\begin{array}{l} \mathbf {C} ^ {\mathrm {E D}} = \hat {\mathbb {E}} _ {t} \exp - \mathbf {\Pi} _ {t} ^ {\mathrm {T} _ {\mathrm {C}}} r
(u) d u \max \left\{\quad^ {\mathrm {E D}} - K, 0 \right\} \\ = \hat {\mathbb {E}} _ {t} \exp - \mathbf {\Pi} _ {t} ^ {T _ {C}} r
(u) d u \max 2 - \frac {1}{P \left(T _ {C}, T _ {C} + \frac {1}{4}\right)} - K, 0 \\ = \hat {\mathbb {E}} _ {t} \exp - \mathbf {\Pi} _ {t} ^ {T _ {C}} r
(u) d u \min 2 - K - \frac {1}{P \left(T _ {C}, T _ {C} + \frac {1}{4}\right)}, 0 \\ \end{array}
$$ which is a put option on bond.

Note that if the bond price is log-normally distributed, so is its reciprocal. Hence, a similar formula to the Vasicek bond option formula can be derived.

# 9.8 Relationship Between Furutres And Forward Prices

We do not have a specific place to discuss forward contracts. Rather, forward contracts are discussed in various places when they are relevant. Here we address very important characteristics of forward contracts and how they are di erent/similar from/to futures contracts.

Contratually, forward and futures are identical. They both allow long and short sides of the contract to lock in an agreed price (the price can be a rate such as in the forward rate agreement
(FRA) contract but for the sake of consistency we only use price) for a given time horizon. However, due to their differences in trading, the agreed price can vary quite substantially between the two contracts. The differences can be roughly summarized as follows:

1. exchange traded vs. over-the-counter traded
2. fixed maturity vs. rolling maturity
3. risk-neutral expectation vs. forward expectation
(medium) #
4. Marking-To-Market Vs. No Marking-To-Market

In this section, we discuss how the above di erences cause potentially large price di erences. The first item contributes to larger bid/o er spreads in forward contracts (than in the futures contracts). Such a liquidity impact not only is reflected in bid/o er spreads, but can also lower the mid price. Discussions on how liquidity can lower the mid price can be found in Chen (2012). The second item causes di culties to build an interest rate curve using futures contracts. A brief discussion of how to reconcile the two contracts for the curve-cooking purpose can be found in Section 2.6.1 in Chapter 2 (known as convexity adjustment). The third di erence is purely theoretical. These expectations are important in model building which is beyond the scope of this book.

Last and the most important is the impact of marking-to-market. The pioneer work of Cox, Ingersoll, and Ross (1981) sets up the foundation of why futures price and forward price diver. An example is given in Figure 9.2.

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
0 & 1 & 2 & 3 \\ \hline
Φxx & Φxx-Φxx & Φxx-Φxx & (Φxx-Φxx)(1+r)^x
(Φxx-Φxx)(1+r)
Sx-Φxx \\ \hline
 & {r}Φxx & {r}Φxx-Φxx & {r}Φxx-Φxx)(1+r)
{r}|Sx-Φxx) \\ \hline
 & & {r(1+r)}Φxx & {r(1+r)(Sx-Φxx)} \\ \hline
-I+πT/S0 & & & -{1+r}^xSx \\ \hline
Φxx/(1+r) & & & {(1+r)^xΦxx} \\ \hline
 & & & \\ \hline
Φxx & & & Sx-Φxx \\ \hline
\end{tabular}
\end{document}
```

Figure 9.2: Marking to Market

In Figure 9.2, $\mathbf{S}_{0}(1 + \mathbf{r})^{3}$; or $\mathbf{S}_{0.3} = \mathbf{S}_{0} \mathbf{\Pi}_{\mathbf{i} = 1}^{3} (1 + \mathbf{r}_{\mathbf{i}})$; or $\mathbf{S}_{t, T} = \mathbf{S}_{t} \exp_{t}^{\mathsf{T}} \mathbf{r}_{\mathbf{u}} \mathbf{d}\mathbf{u}$ [must know how many shares of stock to short].

In Figure 9.2, a three-period equity example is provided. When the interest rate is deterministic (known at current time), the futures price and the forward price are equal. When interest rate is random, there is no such guarantee. Then the futures price does not necessarily link to the forward price.

Note that:

$$
\mathbf {S} _ {t} = \mathbb {E} _ {t} \exp - \mathbf {\Pi} _ {t} ^ {t} \mathbf {r} _ {u} d u \mathbf {S} _ {T} = \mathbf {P} _ {t, T} \mathbf {\Pi} _ {t, T} = \mathbf {P} _ {t, T} \mathbf {\Pi} _ {t, T} + \operatorname {c o v} [ \mathbf {D} _ {t, T}, \mathbf {S} _ {T} ]
$$

This leads to:

$$
\mathsf {P} _ {\mathsf {t}, \mathsf {T}} [ \mathsf {\Sigma} _ {\mathsf {t}, \mathsf {T}} - \mathsf {\Sigma} _ {\mathsf {t}, \mathsf {T}} ] = \operatorname {c o v} [ \mathsf {D} _ {\mathsf {t}, \mathsf {T}}, \mathsf {S} _ {\mathsf {T}} ]
$$

Hence we know:

$$
\begin{array}{l} t, T > t, T \quad \operatorname {c o v} \left[ D _ {t, T}, S _ {T} \right] > 0 \\ t, T < t, T \quad c o v [ D _ {t, T}, S _ {T} ] < 0 \\ \end{array}
$$

In the case of interest rates, $S_{T}$ is the bond price at time $T$, which is $P_{T, s}$ where $s$ is the maturity date of the bond. When rates are high, discounting $D_{t, T}$ is low (i.e. severe) and so is the bond price $P_{T, s}$ usually. Reversely, when rates are low, discounting $D_{t, T}$ is high and so is bond price $P_{T, s}$. Given that the future bond price and discounting move in the same direction, the covariance is positive, and hence the forward price is larger than the futures price.

# Chapter 10

# Otc Derivatives

# 10.1 Introduction

Interest rate derivatives traded over the counter are voluminous and complex (equity-linked notes, credit-linked notes, various return swaps and index swaps). Yet the most prominent are swaptions and caps/floors. These are LIBOR based products. We focus on these two products in this chapter

A cap (or floor) is an embedded option in a floater where the issuer can avoid paying more than the cap rate as the interest rate. A floor, similarly, is an embedded option owned by the investor who is guaranteed to receive a minimum of interest regardless how low the floating interest rate is. A collar is the combination of both a cap and a floor.

Caps and floors are often stripped out and transacted independently of their underlying floaters. Then they become options on LIBOR.

Besides caps and floors, swaptions are another liquid LIBOR derivatives. These are options on swaps. Like caps and floors, swaptions can be independently traded or embedded in swaps as option to enter or option to cancel.

# 10.2 Caps/Floors/Collars

A cap is a collection of European rate call options (or called caplets); it is quite easy to price. The di culty is that the floating rate is not a traded asset but an index so the usual Black-Scholes does not apply (note that many financial firms use the Black-Scholes model anyway ignoring the fact that interest rates are not traded assets.) Luckily, with a simple transformation, we can turn the rate call to a bond put which is possible to use a known term structure model (such as CIR or Vasicek). Similarly, floor is a collection of rate puts that should be turned into a series of bond calls.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/2dc1df88f3592bdadd35d7ae051a6815961cd7ce538449d390fad250c258134e.jpg)

Figure 10.1: Cap Example

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/db19f7f44cffece53b1470ebb158fa1e5235da2097b61fd38c8af350428d4aaa.jpg)

Figure 10.2: Cap Example

Example. Yield curve: $\mathsf{R}_{01} = 5\%$, and $\mathsf{R}_{02} = 6\%$, hence $\mathbf{f}_{12} = 7\%$. $\mathsf{R}_{\mathbf{X}} = 5\%$. Also we have $\mathsf{P}_{01} = 0.9512$, $\mathsf{P}_{02} = 0.8816$, $\mathsf{F}_{12} = 0.9324$, and $\mathbf{X} = 1 / (1 + 5\%) = 0.9524$. Let $\mathbf{V} = 0.36$. Then

$$
\mathbf {d} = \frac {\ln \mathbf {f} _ {12} - \ln \mathbf {R} _ {\mathbf {X}} + \mathbf {V} / 2}{\overline {{\mathbf {V}}}} = \frac {\ln 7 \% - \ln 5 \% + 0.36 / 2}{0.6} = 0.86
$$

$$
\mathbf {d} - \quad \overline {{\mathbf {V}}} = 0.26
$$

$$
C = e ^ {- 5 \%} [ 7 \% N (0.86) - 5 \% N (0.26) ] = 0.023
$$

In terms of bond price

$$
C = \frac {1}{X} P _ {0 t} [ X N (- d + \bar {V}) - F N (- d) ]
$$ where

$$
X = \frac {1}{1 + R _ {X}}
$$

$$ d = \frac {\ln F - \ln X + V / 2}{\bar {V}} = \frac {0.9324 - 0.9524 + 0.36 / 2}{0.6} = 0.35
$$

$$
\mathbf {d} - \quad \overline {{\mathbf {V}}} = - 0.25
$$

$$
C = \frac {1}{1.05} 1.05 [ 0.9524 N (0.25) - 0.9324 N (- 0.35) ] = 0.23
$$

A cap is a limitation on the borrower that at each payment date he cannot charge the market rate if the market rate is higher than the contractual cap rate. Hence, we can write the cap payoff as a series of rate call to be received at the end of period $\mathbf{j}$.

$$
\max \left\{\mathrm {R} _ {\mathrm {j}} - \bar {\mathrm {R}}, 0 \right\} \tag {10.1}
$$ for $\mathbf{j} = 1, \dots, n$ reflecting the fixing dates $< T_1, \dots, T_n >$ of a cap/floor where $\mathbf{j}$ is the accrued period and usually $= \frac{1}{4}$ in swaps and $\frac{1}{2}$ in bonds. Given that $R_j$ is not a traded asset, we must turn it into a bond price. To do that,

$$
\begin{array}{l} \max \{\mathsf {R} _ {\mathbf {j}} - \bar {\mathsf {R}}, 0 \} \\ = \max - \frac {1}{P \left(T _ {j}, T _ {j} +\right)} - 1 - \bar {R}, 0 \\ = \max \frac {1}{\mathrm {P} \left(\mathrm {T} _ {\mathrm {j}}, \mathrm {T} _ {\mathrm {j}} + \right.)} - (1 + \bar {\mathrm {R}}), 0 \tag {10.2} \\ = \frac {(1 + \bar {R})}{P (T _ {j}, T _ {j} +)} \max \{K - P (T _ {j}, T _ {j} +), 0 \} \\ \end{array}
$$ where $\mathbf{K} = 1 / (1 + \bar{\mathbf{R}})$. The present value (at current time t) of this payoff is therefore:

$$
\begin{array}{l} j = \hat {\mathbb {E}} _ {t} \exp - \begin{array}{l} T _ {j} + \\ t \end{array} r _ {u} d u \max \left\{\mathsf {R} _ {j} - \bar {\mathsf {R}}, 0 \right\} \\ = (1 + \bar {R}) \hat {\mathbb {E}} _ {t} \exp - \begin{array}{l} T _ {j} + \\ t \end{array} r _ {u} d u \frac {1}{P \left(T _ {j}, T _ {j} +\right)} \max \{K - P \left(T _ {j}, T _ {j} +\right), 0 \} \\ = \frac {1}{K} \hat {\mathbb {E}} _ {t} \exp - r _ {u} d u \max \left\{K - P \left(T _ {j}, T _ {j} +\right), 0 \right\} \tag {10.3} \\ \end{array}
$$ and the cap value is:

$$
V _ {\text {c a p}} = \begin{array}{l l} n \\ j = 1 & j \end{array} \tag {10.4}
$$

Equation (10.3) is a standard option on the zero-coupon bond and hence has closed-form solutions if certain term structure models are adopted. For example, both Vacicek and Cox-Ingersoll-Ross models have closed-form solutions to the zero coupon bond option. Using the Vacicek model, $^{1}$ we can write the formula for a caplet as:2

$$
\mathbf {j} = \frac {\mathbf {P} (\mathbf {t}, \mathbf {T} _ {\mathbf {j}})}{\mathbf {K}} \mathbf {N} - \frac {\ln \mathbf {P} (\mathbf {t}, \mathbf {T} _ {\mathbf {j}} + \mathbf {\Delta}) - \ln \mathbf {K} - \ln \mathbf {P} (\mathbf {t}, \mathbf {T} _ {\mathbf {j}}) - 1 / 2 v _ {\mathbf {j}} ^ {2}}{v _ {\mathbf {j}}} - \frac {\mathbf {P} (\mathbf {t}, \mathbf {T} _ {\mathbf {j}} + \mathbf {\Delta})}{\mathbf {P} (\mathbf {t}, \mathbf {T} _ {\mathbf {j}})} \mathbf {N} - \frac {\ln \mathbf {P} (\mathbf {t}, \mathbf {T} _ {\mathbf {j}} + \mathbf {\Delta}) - \ln \mathbf {K} - \ln \mathbf {P} (\mathbf {t}, \mathbf {T} _ {\mathbf {j}}) + 1 / 2 v _ {\mathbf {j}} ^ {2}}{v _ {\mathbf {j}}} \tag {10.5}
$$ where
(Vasicek) $$ v _ {j} ^ {2} = \frac {1 - e ^ {- 2 (T _ {j} - t)}}{2} ^ {2} \quad \frac {1 - e ^ {-}}{} ^ {2} \tag {10.6}
$$

In Chapter 14, I shall present a more general form that does not reply on the Vasicek model. There, the only requirement is for the bond price to follow a log-normal distribution.

The floor can be dealt with the same way:

$$
\begin{array}{l} \max \{\underline {{R}} - R _ {j}, 0 \} \\ = \max \underline {{R}} - \frac {1}{P (T _ {j}, T _ {j} +)} - 1,0 \\ = \max (\underline {{\mathbf {R}}} + 1) - \frac {1}{\mathbf {P} \left(\mathbf {T} _ {\mathbf {j}}, \mathbf {T} _ {\mathbf {j}} + \mathbf {\Lambda}\right)}, 0 \tag {10.7} \\ = \frac {(\underline {{R}} + 1)}{P (T _ {j}, T _ {j} +)} \max \left\{\mathrm {P} \left(T _ {j}, T _ {j} +\right) - K, 0 \right\} \\ \end{array}
$$ where $\mathbf{K} = 1 / (1 + \underline{\mathbf{R}})$ and the pricing formula is:

$$
\begin{array}{l} j = \hat {\mathbb {E}} _ {t} \exp - \begin{array}{l} T _ {j +} \\ t \end{array} r _ {u} d u \max \left\{\underline {{R}} - R _ {j}, 0 \right\} \\ = (\underline {{\mathbf {R}}} + 1) \hat {\mathbb {E}} _ {t} \exp - \underset {t} {\overset {T _ {j} +} {\operatorname {T}}} r _ {u} d u \frac {1}{P (T _ {j}, T _ {j} +)} \max \left\{\mathrm {P} \left(T _ {j}, T _ {j} +\right) - K, 0 \right\} \\ = \frac {1}{K} \hat {\mathbb {E}} _ {t} \exp - \quad_ {t} ^ {T _ {j}} r _ {u} d u \max \left\{\mathrm {P} \left(T _ {j}, T _ {j} +\right) - K, 0 \right\} \tag {10.8} \\ \end{array}
$$ and

$$
V _ {\text {f l o o r}} = \begin{array}{l} n \\ j = 1 \end{array} j \tag {10.9}
$$

Under the Vasicek model we can write each floorlet $j$ as follows:

$$
\begin{array}{l} j = \frac {P (t, T _ {j} +)}{K} N \frac {\ln P (t, T _ {j} +) - \ln K - \ln P (t, T _ {j}) + 1 / 2 v _ {j} ^ {2}}{v _ {j}} \tag {10.10} \\ - P (t, T _ {j}) N \frac {\ln P (t, T _ {j} +) - \ln K - \ln P (t, T _ {j}) - \frac {1}{2} v _ {j} ^ {2}}{v _ {j}} \\ \end{array}
$$

Note that usually lenders do not charge an upfront free for the cap and vice versa for the floor. What is a common practice is that the charged interest rate contains a mark-up, or spread, if there is a cap; and a mark-down, or negative spread, if there is a floor. That is, $R_{j} = \frac{1}{P(T_{j}, T_{j} + )} + s_{c}$ (for cap) or $R_{j} = \frac{1}{P(T_{j}, T_{j} + )} - s_{f}$ (for floor) where the spread is constant throughout the life of the loan. This being the case, a cap or a floor contract is to solve for the spread so that the NPV is 0 at inception.

Note that the spread is computed as:

$$
V _ {\text {s p r e a d}} = \times s \times \begin{array}{l} n \\ j = 1 \end{array} P (t, T _ {j}) \tag {10.11}
$$ and hence by equating the value of the spread payments with the value of the cap, we solve for the spread as follows:

$$ s _ {c} = \frac {\underset {j = 1} {\overset {n} {j}} \underset {n} {\overset {n} {j}}}{\underset {n} {\overset {n} {j}} \underset {n} {\overset {n} {P}} \left(t, T _ {j}\right)} \tag {10.12}
$$

$$ s _ {f} = \frac {\underset {j = 1} {\overset {n} {j}} \underset {j} {\overset {n} {j}}}{\underset {j = 1} {\overset {n} {P}} (t, T _ {j})}
$$ where $j$ is the caplet value and $j$ is the floorlet value. For a floater to both have cap and floor, which is called a "collar", the two spreads should be netted out to be $s_c - s_f$.

# 10.3 Swaptions

As briefly discussed in Chapter 5, swaptions (payer and receiver) are options to enter and cancel a swap. The payer option (option to enter) is a call and the receiver option (option to cancel) is a put.

These embedded options are stripped out of their underlying swaps and traded in the market. Industry uses the Black (which is same as Black-Scholes) model for swaptions:

$$
C = P (t, s) \left[ \bar {w} (s, T _ {n}) N (d _ {+}) - P (t, s) w _ {K} N (d _ {-}) \right] \quad \begin{array}{l} n \\ i = 1 \end{array} \quad (t, s, T _ {i}) \tag {10.13}
$$ where

$$
\mathbf {d} _ {\pm} = \frac {\ln \bar {w} (\mathbf {s}, \mathbf {T} _ {n}) - \ln w _ {K}}{\overline {{v (t, s, T _ {n})}}} \pm \frac {1}{2} v (t, s, T _ {n})
$$

$$
\mathbf {v} ^ {2} (\mathbf {t}, \mathbf {s}, \mathbf {T} _ {\mathbf {n}}) = \mathbb {V} [ \ln w (\mathbf {s}, \mathbf {T} _ {\mathbf {n}}) ]
$$

$\bar{w}$ is the forward swap rate. The put option value can be obtained via put-call parity.

Clearly, this is not correct. Not only does the swap rate not follow lognormal, it cannot even be used as an underlying asset. (Details see Chapter 14.)

We have to turn the call option on the swap rate into the put option on the coupon bond:

$$
\begin{array}{l} \max \{w (t, T _ {n}) - w _ {K}, 0 \} \begin{array}{c} n \\ j = 1 \end{array} P \left(t, T _ {j}\right) \\ = \max w (t, T _ {n}) \quad_ {j = 1} ^ {n} P (t, T _ {j}) - w _ {K} \quad_ {j = 1} ^ {n} P (t, T _ {j}), 0 \tag {10.14} \\ = \max \{1 - (t, \underline {{T}}; w _ {K}), 0 \} \\ \end{array}
$$

The option of a coupon bond has a true closed-form solution under a factor model (e.g. Vasicek or Cox-Ingersoll-Ross). In the above equation, $w(t, T_n) = \sum_{j=1}^{n} P(t, T_j) = 1$ (see Chapter 5 for the derivation).

In Chapter 14, swap and swaption will be discussed in details. There, the swap measure will be derived and fully discussed. The swaption valuation there does not necessarily require a factor model such as the Vasicek or Cox-Ingersoll-Ross models.

A $\mathsf{T}_{\mathbf{j}}$ -maturity swap rate under no arbitrage is given as:

$$ w (t, T _ {j}) = \frac {\underset {i = 1} {j} P \left(t, T _ {i}\right) f \left(t, T _ {i}, T _ {i + 1}\right)}{\underset {i = 1} {j} P \left(t, T _ {i}\right)} \tag {10.15}
$$ where

$$
\begin{array}{l} \mathbf {f} \left(\mathrm {t}, \mathrm {T} _ {\mathrm {i}}, \mathrm {T} _ {\mathrm {i} + 1}\right) = \mathbf {F} \left(\mathrm {t}, \mathrm {T} _ {\mathrm {i}}, \mathrm {T} _ {\mathrm {i} + 1}\right) - 1 \\ = \frac {1}{\left(\mathrm {t}, \mathrm {T} _ {\mathrm {i}}, \mathrm {T} _ {\mathrm {i} + 1}\right)} - 1 \\ = \frac {P \left(t, T _ {i}\right)}{P \left(t, T _ {i + 1}\right)} - 1 \\ \end{array}
$$ and $\mathbf{j} = 1,\dots,\mathbf{n}$

Now, we can define an option on a swap. A $\mathbf{j} \times \mathbf{m}$ swaption (where $\mathbf{j} + \mathbf{m} = \mathbf{n}$ ) has a payoff at expiry, $\mathsf{T_j}$, as a coupon bond option:

$$
\begin{array}{l} \max \left\{\mathrm {w} \left(\mathrm {T} _ {\mathrm {j}}\right) - \mathrm {w} _ {\mathrm {K}}, 0 \right\} \quad_ {\mathrm {k} = \mathrm {j} + 1} ^ {\mathrm {n}} \mathrm {P} \left(\mathrm {T} _ {\mathrm {j}}, \mathrm {T} _ {\mathrm {k}}\right) \tag {10.16} \\ = \max \{1 - \left(\mathrm {T} _ {\mathrm {j}}, < \mathrm {T} _ {\mathrm {j} + 1}, \dots, \mathrm {T} _ {\mathrm {n}} >; \mathrm {w} _ {\mathrm {K}}\right), 0 \} \\ \end{array}
$$ which is a put option struck at par (i.e. $1 in the above equation) on a coupon bond. Jamshidian (1989) derives the valuation model as follows:

$$
\begin{array}{l} C _ {j \times m} ^ {\text {s w a p}} = \hat {\mathbb {E}} _ {t} \exp - \begin{array}{c} T _ {j} \\ t \end{array} r
(u) d u \max \left\{1 - \left(T _ {j}, < T _ {j + 1}, \dots, T _ {n} >; w _ {K}\right), 0 \right\} \\ = P \left(t, T _ {j}\right) \tilde {\mathbb {E}} _ {t} ^ {\left(T _ {j}\right)} \max \quad w _ {K} \quad \begin{array}{l} n \\ k = j + 1 \end{array} K _ {k} + K _ {n} - \\ w _ {K} \quad \begin{array}{c} n \\ k = j + 1 \end{array} P \left(T _ {j}, T _ {k}\right) + P \left(T _ {j}, T _ {n}\right), 0 \\ = P \left(t, T _ {j}\right) \tilde {\mathbb {E}} _ {t} ^ {\left(T _ {j}\right)} w _ {K} \quad \max _ {k = j + 1} ^ {n} \left\{K _ {k} - P \left(T _ {j}, T _ {k}\right), 0 \right\} + \max \left\{K _ {n} - P \left(T _ {j}, T _ {n}\right), 0 \right\} \\ = P \left(t, T _ {j}\right) w _ {k} \begin{array}{l} n \\ k = j + 1 \end{array} j, k (K _ {k}) + j, n (K _ {n}) \\ \end{array}
$$

(10.17)
 where the European "forward" (i.e. without discounting) put option (on price) formula is defined as:

$$
\mathbf {j}, \mathrm {k} (\mathbf {K} _ {\mathrm {k}}) = \mathbf {K} \mathbf {N} - \frac {\ln (t, T _ {\mathrm {j}}, T _ {\mathrm {k}}) - \ln K _ {\mathrm {k}} - 1 / 2 v _ {\mathrm {j}, \mathrm {k}} ^ {2}}{v _ {\mathrm {j}, \mathrm {k}}} - (t, T _ {\mathrm {j}}, T _ {\mathrm {n}}) \mathbf {N} - \frac {\ln (t, T _ {\mathrm {j}}, T _ {\mathrm {k}}) - \ln K _ {\mathrm {k}} + 1 / 2 v _ {\mathrm {j}, \mathrm {k}} ^ {2}}{v _ {\mathrm {j}, \mathrm {k}}} \tag {10.18}
$$ where $\mathbf{k} = \mathbf{j} + 1,\dots,\mathbf{n},$

$$ w _ {K} \quad_ {k = j + 1} ^ {n} K _ {k} + K _ {n} = 1 \tag {10.19}
$$ and

$$
\begin{array}{l} v _ {j, k} ^ {2} = \tilde {\mathbb {V}} [ \ln P (T _ {j}, T _ {k}) ] = \tilde {\mathbb {V}} [ \ln (T _ {j}, T _ {j}, T _ {k}) ] \\ = \begin{array}{c} T _ {j} \\ t \end{array} (u, T _ {j}, T _ {k}) ^ {2} d u \\ = \begin{array}{c c} T _ {j} & k - 1 \\ t & = j \end{array} (u, T, T _ {+ 1}) ^ {2} d u \\ \end{array}
$$

(10.20)
 with $(\mathbf{u},\mathbf{T_j},\mathbf{T_k})$ being the instantaneous volatility function for the forward price. The last line above is derived in Chapter
14. For equation (10.17) to hold, Jamshidian shows that (Jamshidian theorem (1989)) the last line of (10.17) can be achieved only if "selected exercises" have no value. That is, if any $K_{k} < P(T_{j}, T_{k})$ (or $K_{k} > P(T_{j}, T_{k})$ ) then all $K_{k} < P(T_{j}, T_{k})$ (or $K_{k} > P(T_{j}, T_{k})$ ). The trick is to find such $K_{k}$ 's so that this condition holds. We need to solve for "little strikes" $K_{k}$. For at-the-money swaptions, the solution to $K_{k}$ is simple:

$$
\mathbf {K} _ {\mathrm {k}} = \left(\mathrm {t}, \mathrm {T} _ {\mathrm {j}}, \mathrm {T} _ {\mathrm {k}}\right) \tag {10.21}
$$ for $\mathbf{k} = \mathbf{j} + 1,\dots,\mathbf{n}$

The proof is given in the Appendix. For in- and out-of-money options, this solution does not hold and yet a mild modification of the assumption (i.e. by adding an a ne assumption), we can still break a swaption into a series of zero coupon bond options. The details are given in the Appendix.

# 10.3.1 Cap
(Floor) As A Special Case Of Payer
(Receiver) Swaption

We can see a caplet is a variation of a $j \times 1$ swaption (i.e. with a di erent strike price). Hence, by comparing (10.10) and (10.18), we can see that caps and swaptions can be consistently priced via a series of put options $(\mathbf{j},\mathbf{k})$ which is in turn dependent on the function.

Change of the volatility notation:

$$ v _ {j} = v _ {j, j + 1} \tag {10.22}
$$ where $\mathbf{v}_{\mathbf{j},\mathbf{j} + 1}$ is defined earlier as:

$$
\begin{array}{l} \mathrm {v} _ {\mathbf {j}, \mathbf {j} + 1} ^ {2} = \tilde {\mathbb {V}} [ \ln \mathrm {P} (\mathrm {T} _ {\mathbf {j}}, \mathrm {T} _ {\mathbf {j} + 1}) ] = \tilde {\mathbb {V}} [ \ln (\mathrm {T} _ {\mathbf {j}}, \mathrm {T} _ {\mathbf {j}}, \mathrm {T} _ {\mathbf {j} + 1}) ] \\ = \begin{array}{l} T _ {j} \\ t \end{array} \left(u, T _ {j}, T _ {j + 1}\right) ^ {2} d u \\ \end{array}
$$

Note that $T_{j+1}$ may not equal $T_j +$.

# 10.3.2 Function $(T, \Cdot, \Cdot)$ And A Piece-Wise Flat Approximation

In this section, we present the main result of the paper, which is to demonstrate how the two markets can be evaluated consistently, using the methodology introduced in this paper. We can see that both swaptions (10.17) and caps (25) under our model are functions of zero-coupon bond put options that have the Black-Scholes type solution with the volatility function $(t,\cdot,\cdot)$.

Moreover, the $(t,\cdot,\cdot)$ function can be uniquely identified, for any given number of swaptions. This is drastically di erent from the existing LMM where an approximation form of the volatility function must be exogenously given, and hence swaptions cannot be priced without errors. On the other hand, given that each piece of the $(t,\cdot,\cdot)$ function is mapped to a swaption, all swaptions are, by construction, perfectly priced. This is important because only in such a case (perfect calibration) we can accurately price exotic derivatives and find the correct number and combinations of swaption contracts to hedge.

Recall the volatility function in (10.20) for the bond put option is an integration of the function (which can be written in a discrete form in terms of a summation) as follows:

$$
\begin{array}{l} \mathbf {v} _ {\mathbf {j}, \mathbf {k}} ^ {2} = \begin{array}{c} T _ {\mathbf {j}} \\ t \end{array} (\mathbf {u}, T _ {\mathbf {j}}, T _ {\mathbf {k}}) ^ {2} \mathbf {d u} \\ = \begin{array}{c c} \mathbf {j} - 1 & \mathbf {T} _ {+ 1} \\ = 0 & \mathbf {T} \end{array} (\mathbf {u}, \mathbf {T} _ {\mathbf {j}}, \mathbf {T} _ {\mathbf {k}}) ^ {2} \mathbf {d u} \\ = \begin{array}{l l} \mathbf {j} - 1 & \mathbf {T} _ {+ 1} \\ = 0 & \mathbf {T} \end{array} \quad \begin{array}{l} \mathbf {k} - \mathbf {j} - 1 \\ \mathbf {m} = 0 \end{array} \left(\mathbf {u}, \mathbf {T} _ {\mathbf {j} + \mathbf {m}}, \mathbf {T} _ {\mathbf {j} + \mathbf {m} + 1}\right) ^ {2} \mathbf {d u} \tag {10.23} \\ = \begin{array}{c c c c c} \mathbf {j} - 1 & & \mathbf {k} - \mathbf {j} - 1 \\ = 0 & & \mathbf {m} = 0 &, \mathbf {j} + \mathbf {m}, \mathbf {j} + \mathbf {m} + 1 \end{array} ^ {2} + 1 \\ \end{array}
$$ where $\mathbf{\tau} = \mathbf{T} - \mathbf{T}_{-1}$ and $\mathbf{k} = \mathbf{j} + 1,\dots,\mathbf{n}$. Note that the last line of (10.23) is to replace $(\mathsf{u},\mathsf{T}_{\mathsf{j} + \mathsf{m}},\mathsf{T}_{\mathsf{j} + \mathsf{m} + 1})$ with a fixed value $\mathbf{u, j + m, j + m + 1}$. The description of the volatility function (10.23) is given in Figure 10.3.

An Exemplification of Volatility Calibration using $\xi (a, T, T_{j}) - row$ and column j

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|}
\hline
 & 1xj & 2xj & 3xj & 4xj \\ \hline i×1 & ∫rTf(=Tx, Tf)du = $r_{2}$-ξ2Δt & ∫rTf(=Tx, Tf)du = $r_{2}$-ξ2Δt & ∫rTf(=Tx, Tf)du = $r_{2}$-ξ2Δt & ∫rTf(=Tx, Tf)du = $r_{2}$-ξ2Δt \\ \hline
∫rTf(=Tx, Tf)du + ∫rTf(=Tx, Tf)du + ∫rTf(=Tx, Tf)du + ∫rTf(=Tx, Tf)du + ∫rTf(=Tx, Tf)du + ∫rTf(=Tx, Tf)du + ∫rTf(=Tx, Tf)du + ∫rTf(=Tx, Tf)du + ∫rTf(=Tx, Tf)dω & ∫rTf(=Tx, Tf)du + ∫rTf(=Tx, Tf)du + ∫rTf(=Tx, Tf)du + ∫rTf(=Tx, Tf)du + ∫rTf(=Tx, Tf)dω & ∫rTf(=Tx, Tf)du = r2Δt & & \\ \hline i×2 & ∫rTf(=Tx, Tf)du = $r_{2}$ & ∫rTf(=Tx, Tf)du = $r_{2}$ & ∫rTf(=Tx, Tf)du = r2Δt & ∫rTf(=Tx, Tf)du = r2Δt \\ \hline
∫rTf(=Tx, Tf)du = r2Δt & ∫rTf(=Tx, Tf)du = r2Δt & ∫rTf(=Tx, Tf)du + ∫rTf(=Tx, Tf)du + ∫rTf(=Tx, Tf)du + ∫rTf(=Tx, Tf)du + ∫rTf(=Tx, Tf)dω & ∫rTf(=Tx, Tf)du = r2Δt & \\ \hline
∫rTf(=Tx, Tf)du + ξu(Tf, Tf)dω = (ξu(Tf, Tf)dω - (ξu(Tf, Tf)dω) & ∫rTf(=Tx, Tf)du = (ξu(Tf, Tf)dω - (ξu(Tf, Tf)dω) & ∫rTf(=Tx, Tf)du + ∫rTf(=Tx, Tf)dω + ∫rTf(=Tx, Tf)dω + ∫rTf(=Tx, Tf)dω + ∫rTf(=Tx, Tf)dω + ∫rTf(=Tx, Tf)dω + ∫rTf(=Tx, Tf)dω + ∫rTf(=Tx, Tf)dω + ∫rTf(=Tx, Tf)dω + ∫rTf(= Tx, Tf)dω + ∫rTf(= Tx, Tf)dω + ∫rTf(= Tx, Tf)dω + ∫rTf(= Tx, Tf)dω + ∫rTf(= Tx, Tf)dω + ∫rTf(= Tx, Tf)dω + ∫rTf(= Tx, Tf)dω + ∫rTf(= Tx, Tf)dω + ∫r7Δt & ∫rTf(=Tx, Tf)du = r2Δt & \\ \hline i×3 & ∫rTf(=Tx, Tf)du = $r_{2}$ & ∫rTf(=Tx, Tf)du = r2Δt & ∫rTf(=Tx, Tf)du = r2Δt & ∫rTf(=Tx, Tf)du = r2Δt \\ \hline
∫rTf(=Tx, Tf)du = r2Δt & ∫rTf(=Tx, Tf)du = r2Δt & ∫rTf(=Tx, Tf)du + ∫rTf(=Tx, Tf)du + ∫rlTf(=Tx, Tf)du + ∫rlTf(=Tx, Tf)dω & ∫rTf(=Tx, Tf)du = r2Δt & \\ \hline
∫rTf(=Tx, Tf)du = r2Δt & ∫rTf(=Tx, Tf)du = r2Δt & ∫rTf(=Tx, Tf)du + ∫rlTf(=Tx, Tf)dω + ∫rlTf(=Tx, Tf)dω + ∫rlTf(=Tx, Tf)dω + ∫rlTf(=Tx, Tf)dω + ∫rlTf(=Tx, Tf)dω + ∫rlTf(=Tx, Tf)dω + ∫rlTf(=Tx, Tf)dω + ∫rlTf(=Tx, Tf)dω + ∫rlTf(= Tx, Tf)dω + ∫rlTf(= Tx, Tf)dω + ∫rlTf(= Tx, Tf)dω + ∫rlTf(= Tx, Tf)dω + ∫rlTf(= Tx, Tf)dω + ∫rlTf(= Tx, Tf)dω + ∫rlTf(= Tx, Tf)dω + ∫rlTf(= Tx, Tf)dω + ∫rl7Δt & ∫rTf(=Tx, Tf)du = r2Δt & \\ \hline
 & & & & \\ \hline
\end{tabular}
\end{document}
```

Figure 10.3: Table

Figure 10.3 depicts how each swaption can uniquely identify a $u, j + m, j + m + 1$ value between any two consecutive future periods for time $u$. This allows us then to bootstrap a piece-wise flat
(half) surface for $u, j + m, j + m + 1$ as shown in Figure
1. In Figure 10.3, to compute each value, we first travel top-down and then left-right. For example, the $1 \times 1$ swaption defines the value for $012$. Then we need to use the $1 \times 2$ swaption to uniquely define $123$. This is because the $1 \times 2$ swaption requires both $012$ and $123$ to complete the volatility for the put option $1,3$. Hence, since is solved for by the $1 \times 1$ swaption, $123$ can be solved for by the $1 \times 2$ swaption. As we can see, this bootstrap process can only be valid if a future volatility function $123$ is known today (time 0). This is how our model is derived from the existing LMM where the drift adjustment is stochastic. Admittedly, the fact that $123$ can be known at time 0 is the result of the log-normality assumption for the forward price (or $1 +$ forward rate). In other words, the function in our model can be either deterministic (which requires log-normality) or stochastic (such as the Cox-Ingersoll-Ross model) and yet the former allows for bootstrapping of the volatility function.

Figure 10.4 helps visualize the surface of the function which is the lower-left half triangle. Vertically along the first column, it fills in the first period values (i.e. $1, j, j + 1$ for $j = 1, \dots, n - 1$ ). These are the values for various forward prices

(1 + forward rates) in the first period.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/f172b75a22d2abedc1478ea173272f7c9ad7a96a7a88a8b3ed4dc1af1a21888b.jpg)

Figure 10.4: Swaption Volatility Grid

Then the second column depicts the values in the second period. This column can be filled only if the first column is completely filled. The process continues until the entire half surface is filled.

In Figure 10.4, we demonstrate a case where not all swaptions of all tenors are traded. In this case, we must adopt an interpolation method to fill those values that do not have swpation contracts. The simplest method is piece-wise flat where all values that do not have supporting swaption contracts will take the preceding values. In Figure 10.4, we have three swaptions: $2 \times 3$, $2 \times 6$, and $4 \times 3$, which define the corresponding boxes in Figure 10.4. For example, the $2 \times 3$ swaption requires the following values (which are identical):

For example, the $2 \times 3$ swaption requires the following values (which are identical):

0,2,3 1,2,3
0,3,4 1,3,4
0,4,5 1,4,5

Then the $2 \times 6$ swaption is used to solve for additional values (which are identical):

0,5,6 1,5,6
0,6,7 1,6,7
0,7,8 1,7,8

And finally the $4 \times 3$ swaption is used to the remaining values (which are identical):

2,5,6 3,5,6
2,6,7 3,6,7
2,7,8 3,7,8

As we can see, our model is flexible enough to accommodate any number of swaptions. Since each swaption has at least one value, all swaptions can be exactly repriced. In the Appendix, more details are given to clarify the bootstrapping process.

In the following numerical example, we demonstrate how calibration is implemented and perfect repricing can be achieved. We use a simple example where swpations are quoted annually. We use maturities up to 4 years only, as a demonstration of the algorithm. The term structure is given as:
 i P(0, i) y(0, i)
1 0.9807 0.018
2 0.9494 0.027
3 0.9160 0.0323
4 0.8829 0.0361 and the swaption quotes are:

Table 10.1: Term Structure (an example)

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
2278.10 & & & 1x1 & & \\ \hline
5461.08 & 4207.68 & & 1x2 & 2x1 & \\ \hline
8840.52 & 9157.93 & 5863.36 & 1x3 & 2x2 & 3x1 \\ \hline
\end{tabular}
\end{document}
```

Table 10.2: Swaption Prices (an example)

Since 2278.10 is a $1 \times 1$ swaption, it is a put option on $\mathbf{P}(\mathsf{T}_1, \mathsf{T}_2)$.

$$
\mathbf {C} _ {1 \times 1} ^ {\text {s w a p}} = \mathbf {P} (t, T _ {1}) (1 + w _ {K}) _ {1,2}
$$ where (directly from equation (10.18) with $\mathbf{j} = 1$ and $\mathbf{k} = 2$ )

$$
{ } _ { 1,2 } = K _ { 2 } N - \frac { \ln ( t, T _ { 1 }, T _ { 2 } ) - \ln K _ { 2 } - 1 / 2 v _ { 1,2 } ^ { 2 } } { v _ { 1,2 } } - ( t, T _ { 1 }, T _ { 2 } ) N - \frac { \ln ( t, T _ { 1 }, T _ { 2 } ) - \ln K _ { 2 } + 1 / 2 v _ { 1,2 } ^ { 2 } } { v _ { 1,2 } }
$$

(which is also a cap). From equation (10.21) we solve for

$$
\mathbf {K} _ {2} = \left(\mathbf {t} _ {1}, \mathbf {T} _ {1}, \mathbf {T} _ {2}\right) = \frac {0.9494}{0.9807} = 0.9681
$$

Then by (10.19):

$$
(1 + w _ {2}) K _ {2} = 1
$$ we solve for $\mathbf{w}_2 = 0.0330$ and the option value is $\mathbb{P}(0,1) \times {}_{1,2} = 2205.34$.

Using this put option value, we can solve for the implied volatility in equation (10.18) as

$$
\mathbf {v} _ {\mathbf {j}, \mathbf {k}} = \mathbf {v} _ {1,2} = 0.058233
$$

According to equation (10.20), $_{0,1,2} = \mathbf{v}_{1,2} = 0.058233$.

Next, 5461.08 is a $1 \times 2$ swaption. According to equation (10.17), it is a portfolio of two put options: $\mathbf{j} = 1$ and $\mathbf{k} = 1,2$ in equation (10.18), i.e.

$$
\mathbf {C} _ {1 \times 2} ^ {\text {s w a p}} = \mathbf {P} (t, T _ {1}) \left\{\mathsf {w} _ {K} (\quad_ {1,2} + \quad_ {1,3}) + \quad_ {1,3} \right\}
$$

The first option $v_{1,2}$ in the above equation is identical to the one in the $1 \times 1$ swaption and hence $v_{1,2}$ is already solved just now. The second put option is:

$$
{ } _ { 1,3 } = \mathsf { K } _ { 3 } \mathsf { N } \quad - \frac { \ln ( t, T _ { 1 }, T _ { 3 } ) - \ln \mathsf { K } _ { 3 } - ^ { 1 } / 2 v _ { 1,3 } ^ { 2 } } { v _ { 1,3 } } \quad - \quad ( t, T _ { 1 }, T _ { 3 } ) \mathsf { N } \quad - \frac { \ln ( t, T _ { 1 }, T _ { 3 } ) - \ln \mathsf { K } _ { 3 } + ^ { 1 } / 2 v _ { 1,3 } ^ { 2 } } { v _ { 1,3 } }
$$

From equation (10.21) we solve for

$$
\mathbf {K} _ {3} = \left(\mathbf {t} _ {1}, \mathbf {T} _ {1}, \mathbf {T} _ {3}\right) = \frac {0.9160}{0.9807} = 0.9340
$$ and

$$
\mathbf {w} _ {3} \left(\mathbf {K} _ {2} + \mathbf {K} _ {3}\right) + \mathbf {K} _ {3} = 1
$$ allows us to solve for the swap rate as $w_{3} = 0.0347$.

Given that, we need to solve for $\mathbf{v}_{1,3}$ with this swaption price of 5461.08. According to equation (10.20),

$$
\mathsf {v} _ {1,3} ^ {2} = \{\mathsf {\Sigma} _ {0,1,2} + \mathsf {\Sigma} _ {0,2,3} \} ^ {2}
$$

Hence solving for $\mathbf{v}_{1,3}$ from equation (10.18), then we can solve for $_{0,2,3} = 0.084293$. The option values are: 2205.34 and 5203.94 respectively.

Similarly, 4207.68 is a $1 \times 3$ swaption and we can solve for the put option value $v_{1,4}$, then $v_{1,4} = 0.235671$, and then $v_{0,3,4} = 0.093145$. The process continues if there are more $1 \times j$ swaptions.

After the first column, we proceed to the second column, i.e. $2 \times j$ swaptions. A $2 \times 1$ swaption composes of a single put option:

$$
\mathbf {C} _ {2 \times 1} ^ {\text {s w a p}} = \mathbf {P} (t, T _ {2}) (1 + \mathbf {w} _ {K}) _ {2,3}
$$ where

$$
{ } _ { 2,3 } = K N - \frac { \ln ( t, T _ { 2 }, T _ { 3 } ) - \ln K - 1 / 2 v _ { 2,3 } ^ { 2 } } { v _ { 2,3 } } - ( t, T _ { 2 }, T _ { 3 } ) N - \frac { \ln ( t, T _ { 2 }, T _ { 3 } ) - \ln K + 1 / 2 v _ { 2,3 } ^ { 2 } } { v _ { 2,3 } }
$$ which can be used to solve for $\mathbf{v}_{2,3} = 0.11115$. Given that $\mathbf{v}_{2,3}^2 = \begin{bmatrix} 2 \\ 0,2,3 \end{bmatrix} + \begin{bmatrix} 2 \\ 1,2,3 \end{bmatrix}$ and $0,2,3 = 0.084293$, we can solve for $\mathbf{v}_{1,2,3} = 0.07245$.

A $2 \times 2$, similar to $1 \times 2$, is a portfolio of two put options, $2,3$ and $2,4$ where the latter requires the knowledge of the volatility $v_{2,4}^2 = \{0,2,3 + 0,3,4\}^2 + \{1,2,3 + 1,3,4\}^2$. The bootstrap continues with more swaptions are included. An exhibit is provided in the Appendix for easy understanding of the bootstrap procedure.

The example is completed and the volatility matrix is given as follows:

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
0.058233 & & & $v_{1}$,2 & & \\ \hline
0.142526 & 0.11115 & & $v_{1}$,3 & $v_{2}$,3 & \\ \hline
0.235671 & 0.24725 & 0.160624 & $v_{1}$,4 & $v_{2}$,4 & $v_{3}$,4 \\ \hline
\end{tabular}
\end{document}
``` which uses of the following matrix:

Table 10.3: Volatility Matrix

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
0.05823 & & & 012 & & \\ \hline
0.08429 & 0.07245 & & 023 & 123 & \\ \hline
0.09315 & 0.09974 & 0.08471 & 034 & xi134 & 234 \\ \hline
\end{tabular}
\end{document}
```

Table 10.4: Matrix

Now we can apply real data taken from Bloomberg on March 15,2017, as shown in Figure 10.5. Each volatility is the Black volatility on an x into y swaption where x (option tenor) is plotted horizontally as x-axis and y is the remaining life of the swap after the maturity of the option and plotted as the y-axis. The volatility is shown on the z-axis. For example, a 3M option into a 10Y, or $3\mathsf{M}\times 10\mathsf{Y}$, swap (i.e. the swap maturity date is 10.25 years) is shown as $\mathbf{x} = 3\mathbf{M}$ and $\mathbf{y} = 10\mathbf{Y}$.

These are Black volatility quotes and need to be converted to prices. We note that in the swaption market, price quotes are available and are exchangeable with
(Black) volatility quotes via the Black formula. The resulting function is plotted in Figure 10.6.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/e7306e4e39bc02bfa2834c24acc2beeb260ccd4b8d6a387fbebdbb245b78599f.jpg)

Figure 10.5: Swaption Volatility Surface; March 15,2017

# 10.4 Other Derivatives

There are a large number of OTC fixed income derivatives. In fact, most of the fixed income derivatives are traded over the counter. Besides the swaps and swap- tions introduced in previous and this chapters, there are three notable categories of contracts:

1. Equity-linked contracts
2. Credit-linked contracts

# 10.4.1 Equity-Linked Notes

# Investopedia:

An equity-linked note
(ELN) is an investment product that combines a fixed-income investment with additional potential returns that are tied to the performance of equities. Equity-linked notes are usually structured to return the initial investment with a variable interest portion that depends on the performance of the linked equity. ELNs can be structured in many di erent ways, but the vanilla version works like a strip bond combined with a call option on a specific security, a basket

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/9084871ebf6537350c354c8fe9fdcb20966825b02828591c3085911ba0e5f67f.jpg)

Figure 10.6: Fitted Function of securities or an index like the S&P 500 or DJIA. In the case of a note linked to an equity index, the security would typically be called an equity index-linked note.

In practice, an equity-linked note will have a participation rate, which is the percentage amount that the investor in the note participates in the appreciation of the underlying equity. If the participation rate is $100\%$, then a $5\%$ increase in the underlying is a $5\%$ increase for the eventual payout on the note. However, the cost of structuring the ELN and managing it can lower the participation rate. In the case of a $75\%$ participation rate, for example, a $5\%$ appreciation in the underlying is only worth $3.75\%$ to the investor.

Equity-linked notes can also use di erent structures and features. Some will use an averaging formula to smooth out returns on the equity-linked portion or a periodic cap that limits the ELN's upside by realizing returns at a particular level on a regular basis. There are also types of equity-linked notes that use dynamic hedging instead of options, deploying leverage to increase returns from the underlying equity. Overall, equity-linked notes can be a powerful tool for investors who want to protect their principle while still having the potential upside of an equity investment.

# Labor Force Participation Rate

The labor force participation rate is a measure of an economy's active workforce. The formula for the number is the sum of all workers who are employed or actively seeking employment divided by the total noninstitutionalized, civilian working-age population.

The U. S. labor participation rate stood at $61.4\%$ as of July 2020, according to the federal Bureau of Labor Statistics, which publishes updates monthly0.1 The monthly figures have hovered around $63\%$ since 2013, after a sharp decline in the wake of the Great Recession. It remains to be seen what the e ect will be of 10 million newly unemployed Americans in just two weeks thanks to the Covid-19 pandemic.

# Convertible Bonds

An overwhelming majority of corporate bonds are traded over the counter (a small portion are traded on NYSE and regional exchanges). Many of the corporate bonds embed an option to convert to stock. This is a cheap method for the companies to pay lower interests (and use conversion as a reward).

As a result, convertible bonds are a hybrid product of both equity and interest rates (since corporations are credit risk, convertible bonds also bear credit risk but yet the credit risk is usually dealt with by a simple adjustment to the discount factor).

Convertible bonds will be discussed in details in Chapter 11.

# 10.4.2 Credit-Linked Notes

A typical credit-linked note functions similarly to a bond in that payments are made semi-annually, but with a credit default swap attached. Under this structure, the coupon, or price of the note, is linked to the performance of a reference asset. It offers borrowers a hedge against credit risk and gives investors a higher yield on the note for accepting exposure to a specified credit event.

These are interest rate derivatives whose payos are linked to credit quality.

Give examples

# Chapter 11

# Other Credit Derivatives

# 11.1 Introduction

Investopedia:

A credit derivative is a financial asset that allows parties to handle their exposure to risk. Credit derivative consisting of a privately held, negotiable bilateral contract between two parties in a creditor/debtor relationship. It allows the creditor to transfer the risk of the debtor's default to a third party.

Various types of credit derivatives exist, including:
 credit default swaps
(CDS) collateralized debt obligations
(CDO) - total return swaps credit default swap options credit spread forward credit default basket

# 11.2 Default Basket

A default basket contract, known as 1st-nth to default, is a credit derivative contract that is catered to investors who seek a partial and yet e- cutive protection of their bond portfolios. If a bond investor who is concerned with the default loss of his bond portfolio, then the basket contract can provide the protection from the loss of default at any given level (from the most expensive 1st to default to the least expensive nth to default).

The default basket contract is a correlation play. If all bonds default independently (low correlation), then the 1st to default basket is most expensive (details later). On the contrary, if bonds default together (high correlation), then the 1st to default basket is least expensive. Hence, for those who sell default baskets (i.e. speculators who seek yield enhancements), they look for correlation tightening or loosening.

Default baskets usually contain only a handful of bonds (if the portfolio is large, then the default basket is not an e-cient way to hedge). For example, assume a portfolio of 5 bonds. To gain the perfect default protection, the owner of the portfolio can purchase individual CDS contracts. Say each spread is $s_1$ and $s_5$. And the total premium paid is: $\sum_{i=1}^{n} s_i N_i$ where $N_i$ is the notional of the ith bond.

This can be very expensive if bonds are high yield. Hence, investors of such portfolios will seek a cheaper alternative. Realistically, not all bonds will default at the same time. In other words, buying all individual CDS is not cost e ective. It would ideal to just buy the protection of the first bond that defaults. The others will likely not default (although their prices might be heavily influenced) and still can be sold back to the market.

The 1st to default basket contract
(FTD) is a CDS contract that pays principal minus recovery on whichever bond that defaults first in the contract period. The probability of this happening, for a given period (say 1 year), is:

$$
\mathbf {p} _ {\text {F T D}} = \Pr \left[ \begin{array}{l l l l} \mathbf {B} _ {1} & \mathbf {B} _ {2} & \dots & \mathbf {B} _ {n} \end{array} \right] \tag {11.1}
$$ where $\mathbf{B_i}$ represents the default event of bond i and $\mathbf{p_i} = \operatorname*{Pr}[\mathbf{B_i}]$ is the default probability of each individual bond. The total default probability of all bonds in a given period is:

$$
\begin{array}{c} \mathbf {n} \\ \mathbf {i} = 1 \end{array} \mathbf {p} _ {\mathbf {i}}
$$ which is greater than $\mathsf{p}_{\mathsf{FTD}}$

Hence, we know that buying FTD is much cheaper than buying individual CDSes. Recall the back-of-envelop (quick and dirty approximation) formula for the CDS spread:

$$ s _ {i} = p _ {i} \left(1 - R _ {i}\right)
$$ where $R$ is recovery rate. For the sake of easy exposition (and quite practically true), we assume a constant recovery for all bonds (and usually $40\%$ ): $s_i = p_i(1 - R)$. We use the same concept to compute the spread for the FTD:

$$
\mathbf {s} _ {\text {F T D}} = \mathbf {p} _ {\text {F T D}} (1 - \mathbf {R})
$$

Also for the convenience (and without loss of too much generality), we assume all notionals are same: $\mathsf{N}_{\mathbf{i}} = \mathsf{N}$. This allows us to just compare spreads without worrying notional and recovery.

Note that equation (11.1) can be written as:

$$
\begin{array}{l} \Pr [ \mathbf {B} _ {1} \quad \mathbf {B} _ {2} \quad \dots \quad \mathbf {B} _ {n} ] = \begin{array}{c} n \\ i = 1 \end{array} \Pr [ \mathbf {B} _ {i} ] \\ - \quad_ {i = j} \Pr \left[ \begin{array}{l l} B _ {i} & B _ {j} \end{array} \right] \\ + \quad_ {i = j = k} \Pr \left[ B _ {i} \quad B _ {j} \quad B _ {k} \right] \\ - \cdot \cdot \cdot \\ \end{array}
$$

$$
\begin{array}{l} p _ {F T D} = \begin{array}{l} n \\ i = 1 \end{array} p _ {i} \tag {11.2} \\ - \quad_ {i = j} p _ {i \& j} \\ + \quad_ {\mathbf {i} = \mathbf {j} = \mathbf {k}} \mathbf {p} _ {\mathbf {i} \& \mathbf {j} \& \mathbf {k}} \\ - \cdot \cdot \cdot \\ \end{array}
$$

Hence, if joint defaults are rare (i.e. defaults are independent), then $p_{FTD}$ is very close to $\mathbf{\Pi}_{\mathbf{i} = 1}^{\mathsf{n}} \mathbf{p}_{\mathbf{i}}$, which is expensive. Conversely, if defaults are together, then $p_{FTD}$ is very close to the highest $\mathbf{p}_{\mathbf{i}}$, which is cheap.

Note that by no arbitrage,

$$
\begin{array}{c c} \mathbf {n} & \mathbf {n} \\ \mathbf {i} = 1 & \mathbf {s} _ {\mathbf {i}} = \mathbf {s} _ {\mathbf {i} T D} \end{array}
$$

If $s_{FTD} \underset{i=1}{n} s_i$, then the other $i$ th to default contracts must have very low spreads. Conversely, if $s_{FTD} \underset{i}{s_i}$, then the other $i$ th to default contracts must have high spreads. In an extreme case where all bonds default together (correlation 1) and all $s_i$ 's are equal, then all $s_{TD}$ are equal to one another.

# 11.3 Cdo, Cbo And Clo Http://People. Stern. Nyu. Edu/Igiddy/Abs/Globalcboclo. Pdf (152 Pages)

Dierences Between CBOs And CLOs

It is important to note that while the criteria for CBO and CLO transactions share similarities, loan assets have features that can make the analysis more complicated than that of bond assets. Certain credit, legal, and cash flow analyses of CLOs differ from those of CBOs due to the following factors:

The loan type and loan documentation can act the degree to which rights and obligations can be transferred from the sponsor to the transferee. For example, a loan may in part be a participation. The lead bank transfers all or part of its interest in a loan (which also may include a pro rata interest in any collateral securing the loan) to one or more participants. Analysis of participations often entails an evaluation of the credit risk of the seller bank, whose insolvency may interrupt payments from the borrower to, ultimately, the issuer, as transferee.

Loan terms vary widely, such as di erent amortization schedules, payment dates, rate indices, index reset dates, tenors, and so on, which impact the cash flow analysis.

The lack of uniformity in the manner in which rights and obligations are transferred also results in a lack of standardized documentation for these transactions. Therefore, loan documents require a more detailed legal review.

Loan portfolios can be restructured to accommodate the diminished or declining repayment capacity of borrowers.

Markets for bank loans are less liquid than bond markets. This increases the risk of not being able to purchase eligible loans during the ramp-up and revolving periods, as well as not being able to sell defaulted loans. In addition, disposition of defaulted loans via sale into the market may lower the ultimate recovery relative to disposition via a gradual workout.

This analysis describes Standard & Poor's rating approach to CBOs/CLOs and the key risk areas, which are the focus here of a brief review. The key areas include sovereign risk, default risk, recovery and loss severity estimation, currency and interest rate hedging, as well as legal risk.

Sovereign Risk Both the overall credit profile for an obligor and its rating can be impacted and possibly constrained by the sovereign rating of the country in which the obligors are domiciled. Standard & Poor's has modified its "traditional," or single-jurisdictional, CBO/CLO default model to take into account such factors when determining a multi-jurisdictional or emerging market pool's credit profile at a given rating level.

Default Risk The issuer credit rating
(ICR) is the fundamental tool to assess obligor credit risk in Standard & Poor's default models. However, due to the lack of a well-developed bond market in certain regions, such as Southeast Asia, and even in some mature European markets, unrated credits can become a substantial component of CBO/CLO asset pools. In order to assess credit risk in such collateral pools, analysts can apply alternative measures of obligor default risk, such as credit estimates, for the unrated obligors.

Recovery and Loss Severity Estimation Accurate and detailed historical data on post-default recoveries on loans and bonds for issuers in emerging market regions generally is sparse or nonexistent. Any analysis of recoveries must factor in, on a country-specific basis, the legal and practical issues involved in realizing such recoveries, and the likely impact on timing of recoveries.

Currency and Interest Rate Hedging Local currency denominated CBO/CLO issuance is still not feasible in developing countries due to the lack of a deep investor market, as well as legal and regulatory issues. In the aftermath of various emerging market currency crises, currency hedge providers may not have the desire to position the risk of certain currencies, or may price their products at levels that are not economical for a CBO/CLO. While interest rate risk can often be sized and covered with internal credit enhancement, such as cash reserves or overcollateralization, the economics of this strategy may not be favorable with respect to currency risks.

Legal Risk Evaluation of the legal structure of CBO/CLO transactions is done in light of applicable laws and regulations governing all aspects of the structure. Problems that typically arise relate to the legal transfer/assignment of assets from the seller/originator to the securitization vehicle; bankruptcy remoteness of the issuer or other special-purpose entities; commingling, and set-0 risk...

# 11.4 Spread Option

Investopedia:

A spread option is a type of option that derives its value from the difference, or spread, between the prices of two or more assets. Other than the unique type of underlying asset—the spread—these options act similarly to any other type of vanilla option.

Note that a spread option is not the same as an options spread. The latter is a strategy typically involving two or more options on the same, single underlying asset.

# 11.5 Principle Protected Notes

Investopedia:

A principal protected note
(PPN) is a fixed-income security that guarantees a minimum return equal to the investor's initial investment (the principal amount), regardless of the performance of the underlying assets.

These investments are tailored for risk-averse investors wishing to protect their investments while participating in gains from favorable market movements.

Principal protected notes are also known as guaranteed linked notes.

# Understanding Principal-Protected Note
(Ppn) A principal protected note
(PPN) is a structured finance product that guarantees a rate of return of at least the principal amount invested, as long as the note is held to maturity. A PPN is structured as a zero-coupon bond – a bond that makes no interest payment until it matures – and an option with a payoff that is linked to an underlying asset, index, or benchmark. Based on the performance of the linked asset, index or benchmark, the payoff will vary. For example, if the payoff is linked to an equity index, such as Russell 2000, and the index rises $30\%$, the investor will receive the full $30\%$ gain. In effect, the principal protected securities promise to return an investor's principal, at the time of maturity, with the added gain from the index's performance if that index trades within a certain range.

A downside to principal protected notes is that the guarantee of principal is subject to the creditworthiness of the issuer or guarantor. Therefore, the prospect of a guaranteed return is not entirely accurate in the event that if the issuer goes bankrupt and defaults on all or most of its payments, including the repayment of investors' principal investment, the investor would lose their principal. Since these products are essentially unsecured debt, investors fall below the tier of secured creditors.

Furthermore, investors must hold these notes until maturity in order to receive the full payout. Since these notes can have long-term maturities, PPN investments may be costly for investors who have to tie up their funds for long periods of time in addition to paying any imputed interest accrued on the notes every year. Early withdrawals may be subject to withdrawal charges and partial withdrawals may reduce the amount available upon a full surrender.

# Limitations

The dark side of principal protected notes was put to light after the collapse of Lehman Brothers and the inception of the 2008 credit crisis. Lehman brothers had issued many of these notes and brokers were pushing it in the portfolios of their clients who had little to no knowledge of these products. The returns on PPNs were more complicated than was presented on the surface to clients. For example, for an investor in one of these notes to earn the return of the index that was linked to the payoff of the note, as well as get the principal back, the small print may state that the index cannot fall $25\%$ or more from its level at the date of issuance. Neither can it rise more than $27\%$ above that level. If the index exceeds those levels during the holding period, the investors receive only their principal back.

An investor that does not want to deal with the complications of individual PPN securities may opt for principal protected funds. Principal protected funds are money managed funds that consist mostly of principal protected notes structured to protect an investor's principal. The returns on these funds are taxed as ordinary income rather than capital gains or tax-advantaged dividends. Furthermore, fees that are charged by the fund are used to fund the derivative positions used to guarantee the principal returns and minimize risk.

# 11.6 Credit Linked Notes

A CLN is the direct obligation of the issuer but it contains additional credit risks for the buyer. The principal repayment is linked not only to creditworthiness of the issuer but also a third party known as the reference entity.

Provided the reference entity experiences no credit event during the life of the CLN the principal will be repaid to the investor on maturity.

During the life of the note the investor will also have received regular interest payments,
(coupons) .

Should the reference entity experience a credit event this triggers redemption of the CLN. But instead of receiving the principal amount originally invested, the investor receives a bond issued by the reference entity. The value of the bond will be worth less than the principal invested.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/5ef7353ce3dacee628c8c3e56d459c8b4749ee7c3f210c7a50017bfa45d38bd0.jpg)

Figure 11.1: Credit Linked Note

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/1a6cbc76f42584f1f66f4425249a1e9511175469b919b5bb4760b568111d291a.jpg)

Figure 11.2: Credit Linked Note

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/80239a51f0e5eed4ccc4f0eda20061fe02484449bda8f41122f85d96f46ffa55.jpg)

Figure 11.3: Credit Linked Note

USE MORE FROM https://www.barbicanconsulting.co.uk/cln

# 11.7 Convertible Bonds

Convertible bonds are a mixture of three prominent risks: equity, interest rate, and credit. A convertible bond allows the owner to convert a bond that earns fixed coupons to equity and hence is bond with an exchange option.

$$
\mathbf {\Sigma} _ {C B} = \max \left\{\mathbf {S}, \quad \right\}
$$ where is the conversion ratio.

# 11.7.1 Forced Conversion

# Investopedia:

What Is a Forced Conversion?

Forced conversion occurs when the issuer of convertible securities exercises the right to call the issue. By calling the issue, the originator forces the investors to convert their securities into a predetermined number of shares.

An issuer may consider forcing a conversion if interest rates decline significantly. They may also push the call if the price of the underlying security is above the conversion price. Forced conversions are generally detrimental to the holders of the product.

Understanding Forced Conversion

Forced conversions occur with convertible securities. Convertible security investments can turn into another form, such as shares of the underlying stock. Convertible bonds or convertible preferred stock are examples of some common convertible securities.

In the case of convertible bonds, the security pays a coupon payment of a fixed amount at regular intervals until the bond reaches maturity. It carries a specific price at which conversion into stock may happen. In most cases, the holder of convertible securities has the right to determine when and if to convert. The bond's originator can typically turn whenever they choose after the conversion date. The same is not true if the issuer has included a forced conversion call feature into the bond.

Companies issuing the securities sometimes want the ability to force the investor's hand and make them hold the underlying product. To do this, they will add a call feature that allows the company to redeem the bonds based on specific criteria. Frequently, bonds are callable when they are at or near the conversion price. The calculation of the conversion price is at the time of the issue and is a ratio. This ratio, located in the bond's indenture or the security's prospectus, outlines the situations for making the call. For called securities, the investor will receive the return of capital or common stock in an amount equal to the initial investment.

# Example Of A Bond Conversion

The conversion ratio, also called the conversion premium, would determine how many shares will change. Shown as a ratio or as a price, it is specific to the bond.

If a bond has a ratio of 45:1, it means the $1000 bond equals 45 shares of the underlying. You may see this rate listed as a percentage premium, such as 5-percent. This premium means the investor who converts into shares at the market price when they bought the bond, plus a 5% premium. That market price could be di erent than the current price for the underlying.

Companies will execute a forced conversion to eliminate debt. In this case, bond debt converts to equity. After a forced conversion, the company will issue additional shares, which dilutes the value of those already in the marketplace.

# 11.7.2 Added Convexity

A straight bond has a positive convexity (i.e. negative slope) with respect to its yield. A callable bond (a bond with a call option) is known to have negative convexity. This is because as bond price goes up (as yield or interest rates) goes down, it would hit the limit of the call price (which is usually par), as demonstrated in Figure 11.4.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/c9f587b7823d500422366bb6a2608344ba5000490a587e5eedd375dab98c398d.jpg)

Figure 11.4: Added Convexity of Callable Bond

In the case of a convertible bond, the situation is more complex. A convertible bond is more like a bond when the equity value is low or the interest rates are low (i.e. bond price is high). Conversely, when the equity price is high and the interest rates are high (bond price low), the convertible bond is more like a stock.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/af0228a650b400ed4affe0aee8e641ff5e12cfedea259c47be3c6f2c264e33f8.jpg)

Figure 11.5: Added Convexity of Convertible Bond

# 11.8 Loan

An outright loan is like a bond where a specified amount of money is borrowed (usually by an individual) and in return periodical interests are paid and at maturity the principal is paid. However, for corporation borrowers, loans are arranged di erently.

A line of credit is given to the corporation (say $1 million) for a period of time (say 1 year). During this year, the borrower
(corporation) can take any amount out, known as draw, up to $1 million. If the borrower has no use of the loan, it can prepay back to the credit line. After a year, usually such loan will be renewed and amount can be increased or decreased.

The unused line of credit is called "unfunded" and the used is called "funded". At the beginning when the loan (line of credit) is granted, the whole amount is unfunded. To maintain this unfunded loan, the borrower must pay a fee<sup>1</sup> to keep the line of credit alive (otherwise the line of credit will be canceled). After a draw, the amount of draw is called funded. Then the borrower must pay an interest on the funded loan as a straight loan. Certainly, the borrower can cancel the line of credit at any time.

In summary, by paying a fee (for the unfunded part of the loan) or an interest (for the funded part of the loan), the borrower enjoys the following options:

- option to draw,
- option to prepay, and
- option to term-out (which is modeled di erently separately)

The following diagram (Figure 11.6) depicts various stages of the borrower. The borrower can draw and prepay as it sees fit. The three regimes in both funded and unfunded parts of the loan can be given the following choices:

Funded

Regime I: option to stay and prepay

Regime II: option to stay

Regime III: option to stay and prepay

Unfunded

Regime I: option to stay and draw

Regime II: option to stay and draw

Regime III: option to stay

Table 11.1: Options in a Loan

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/619937621cf5896c349b8874cc79817bc8dfba9f246b0f6ee6379fa67a8bc5d7.jpg)

Figure 1: Regime Transition Diagram
(modified) Figure 11.6: Loan Diagram

# An Example Of Heloc

When you're approved for a HELOC (Home Equity Line of Credit), you will also be approved for a credit limit based, in part, on how much equity you have in your home. You can use this line of credit during what is called the "draw period." This is the amount of time you have to draw funds from the HELOC. The draw period typically lasts for a fixed amount of time. It can vary between lenders but the period usually can last up to ten years. Each lender could also have different requirements, like minimum draw amounts or when you need to start making repayments (more on that coming up!). Be sure to look into the specific details of each lender you consider.

During the draw period you typically can make interest-only payments on what you've borrowed. But you can also pay back the principal amount if you choose. You also don't have to withdraw the entire amount. But it's available if you need it. Here's an example: If you have a $90,000 HELOC, you can borrow up to that amount. If you only use, say, $25,000 of the line of credit, you will only pay interest on that $25,000, not the $90,000 maximum value of the line.

"HELOCs are a good option for those looking for a source of revolving credit that can be managed in the same way as a credit card."

# Unfunded As Cds And Funded As Bond

It is quite understandable that the funded part of the loan is a bond. But how should the fee of unfunded be determined? As it turns out, it is equivalent to a CDS. The bank charges a fee to compensate its loss of interests if the borrower either default or terminate the loan early.

As a result, Figure 11.6 can be viewed as a structure to build a model for the loan. It can be a Markov process with 's and 's as transition probabilities. These probabilities can be then calibrated to benchmark CDS or credit curves.

# 11.9 Securities Lending

Securities lending is the act of loaning a stock, derivative or other security to an investor or firm. Securities lending requires the borrower to put up collateral, whether cash, security or a letter of credit. When a security is loaned, the title and the ownership are also transferred to the borrower.

# 11.10 Cmbs

Wikipedia:

Commercial mortgage-backed securities
(CMBS) are a type of mortgage-backed security backed by commercial and multifamily mortgages rather than residential real estate. CMBS tend to be more complex and volatile than residential mortgage-backed securities due to the unique nature of the underlying property assets.

CMBS bear huge credit risk in that the underlying mortgages are very highly levered. Unlike RMBS (Chapter 12) where mortgages must have a substantial down payment (known as LTV, or loan-to-value) of at least $20\%$, commercial mortgages can be levered to as high as 98 or $99\%$. As a result of this high leverage, interests on the commercial mortgages are also high.

CMBS are di erent from previous credit derivatives in that these securities are sold in a form tranches. See Chapter 12 for detailed discussions on CMBS (and RMBS).

# Chapter 12

# Mortgage And Asset Backed Securities

# 12.1 Introduction

MBS is the perhaps the most successful financial innovation in the world of banking and finance globally. The creation of MBS allows the US to be one of very few (could be only) countries that can offer "aORDABLE housing" via free market and not via government subsidy. The creation of the MBS market allows individual investors like you and I can participate in helping borrowers to buy their own homes.

Not only does MBS market help borrowers to finance their home purchases, it also provides investors more choices for their investments. In an academic term, MBS help complete the financial market. See the CAMP diagram in Figure 12.1.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/59228903f84db04a0bd7671dc209856fb7d032ceadd514a0242585be83b0ab95.jpg)

Figure 12.1: Where MBS Lies

There are two types of MBS: RMBS
(residential) and CMBS
(commercial) .

The former contains mortgages made out to residential homes. It further is understood as agency-based and non-agency-based. The latter is based upon commercial mortgages which are loans made out to commercial real estate properties such as hotels, rental apartments, hotels, carsinos, etc.

# 12.1.1 Rmbs

# Agencies

The major player of the MBS is the three agencies: GNMA, FNMA, and FHLMC (pronounced Ginnie Mae, Fannie Mae, and Freddie Mac). These agencies were established after the WW2 by the congress to provide aORDABLE mortgages. Over the years, FNMA and FHLMC, after completing their missions, have become private and GNMA remains as public as it has been. That said, it is a general belief that FNMA and FHLMC are very much guaranteed by the government and 2008 proved it.

# Agency Or Non-Agency Based Mbs

Agencies underwrite mortgages and these securities are known as agency RMBS. These RMBS must pass certain credit criteria (to name a few):

LTV (loan to value) 0.8
PI (payment to income) $< \frac{1}{3}$
FICO $>620$

These mortgages are known as prime mortgages. Mortgages that do not pass these requirements cannot be underwritten by the agencies. They will have to be underwritten by private banks (e.g. Goldman Sachs). Hence non-agency RMBS are riskier.

Not only non-agency RMBS are more risky because of the borrowers are more likely to default, the underwriting banks are also subject to default risk. These mortgages are smaller in volume and hence these RMBS are less liquid as well.

# Basics Https://Www. Sifma. Org/Wp-Content/Uploads/2017/08/Chsf. Pdf

Brueggman and Fisher book

# Smm

Investopedia:

Single monthly mortality
(SMM) is a measure of the prepayment rate of a mortgage-backed security
(MBS) . As the term suggests, the single monthly mortality measures prepayment in a given month and is expressed as a percentage.

For investors of mortgage-backed securities, prepayment of mortgages is usually undesirable since future interest is foregone; investors prefer a lower or declining single monthly mortality on an MBS.

# Cpr

Investopedia:

Single monthly mortality can be annualized into the constant prepayment rate
(CPR) , which gives the annual percentage rather than a monthly snapshot. MBS investors can switch between the two during important points in their holding's life span. For example, if interest rates decline over a period of time, an MBS investor will usually watch the SMM to see whether or not burnout is setting in.

Similarly, there are the first 30 months of a mortgage-backed security's life where it is considered "on the ramp" and during which SMM and CPR are expected to increase before leveling o once the MBS is "o the ramp" after 30 months. The caveat with the prepayment ramps is that they are based on the PSA model from the 1980s. Although the broad outline of this model holds up—mainly that there are two phases to an MBS lifespan—the mortgage market is a di erent place now, and public awareness of refinancing and interest rates is more ubiquitous than when the PSA model was created. The length of the ramps is believed to be much shorter now, as people are more likely to refinance when rates go down.

# Cdr

The constant default rate
(CDR) is the percentage of mortgages within a pool of loans in which the mortgagors
(borrowers) have fallen more than 90 days behind in making payments to their lenders. These pools of individual outstanding mortgages are created by financial institutions that combine loans to create mortgage-backed securities
(MBS) , which they sell to investors.

The constant default rate
(CDR) evaluates losses within mortgage-backed securities. The CDR is calculated on a monthly basis and is one of several measures that those investors look at in order to place a market value on an MBS. The method of analysis emphasizing the CDR can be used for adjustable-rate mortgages as well as fixed-rate mortgages.

The CDR can be expressed as a formula:

$$
C D R = 1 - 1 - \frac {D}{N D P} ^ {n}
$$ where:

D=Amount of new defaults during the period

NDP=Non-defaulted pool balance at the beginning of the period

$\mathsf{n} =$ Number of periods per year

The constant default rate
(CDR) is calculated as follows:

1. Take the number of new defaults during a period and divide by the non-defaulted pool balance at the start of that period.
2. Take 1 less the result from no. 1.3. Raise that the result from no. 2 to the power based on the number of periods in the year.
3. And finally 1 less the result from no. 3.5. It should be noted, though, that the constant default rate
(CDR) 's formula can vary somewhat—that is, some analysts also include the scheduled payment and prepayment amounts.

Gargantua Bank has pooled residential mortgages on houses located across the U. S. into a mortgage-backed security. Gargantua's Director of Institutional Sales approaches portfolio managers at the Trustworthy Investment Company in hopes that Trustworthy will purchase an MBS to add to its portfolios that hold these types of securities.

After a meeting between Gargantua and his firm's investment team, one of Trustworthy's research analysts compares the CDR of Gargantua's MBS with that of a similarly rated MBS that another firm is offering to sell to Trustworthy. The analyst reports to his superiors that the CDR for Gargantua's MBS is significantly higher than that of the competitor's issue and he recommends that Trustworthy request a lower price from Gargantua to set the poorer credit quality of the underlying mortgages in the pool.

Or consider Bank ABC, which saw $1 million in new defaults for the fourth quarter of
2019. At the end of 20198, the bank's non-defaulted pool balance was $100 million. Thus, the constant default rate
(CDR) is $4\%$, or:

$$
1 - 1 - \frac {\mathrm {s} 1 \text {m i l l i o n}}{\mathrm {s} 100 \text {m i l l i o n}} ^ {4}
$$

In addition to considering the constant default rate
(CDR) , analysts may also look at the cumulative default rate
(CDX) , which reflects the total value of defaults within the pool, rather than an annualized monthly rate. Analysts and market participants are likely to place a higher value on mortgage-backed security that has a low CDR and CDX than on one with a higher rate of defaults.

# Sda

Another method for evaluating losses is the Standard Default Assumption
(SDA) model created by the Bond Market Association, but this calculation is best suited to 30-year fixed-rate mortgages. During the subprime meltdown of 2007-2008, the SDA model vastly underestimated the true default rate as foreclosure rates hit multi-decade highs.

According to http://pistulka.com by Don Pistulka (12/15/2014):

The SDA curve was developed by "The Bond Market Association". It is expressed in terms of CDR, but allows for different default rates, based upon a normal housing market. The premise is that the probability of default is low during the first months, peaks between 30 and 60 months, and then ramps down. During the housing crisis starting in 2007, it was the early months of the loan that had the highest probability of default, not the lowest. Like any curve, its usefulness will depend upon your outlook for the market.

The curve has some resemblance to the PSA prepayment model. The base curve is expressed as 100, but can be changed to increase or decrease the default rate. The base case for SDA assumes an initial CDR of 0.02% for the first month. It ramps up by 0.02% each month until the 30th month where it reaches a CDR of 0.6%. It remains at 0.6% until the 60th month. Then it starts decreasing at 0.0095% each month until it reaches month 120 at a CDR of 0.03% and stays at that level until the 360th month.

The following exhibit describes SDA pictorially:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/362c8ec17095bff5e32d01faef8ceac6c14070f6acc0e01fdcb969feea3311a7.jpg)

Figure 12.2: SDA Scales

# Psa

Public Securities Association
(PSA) Prepayment Model, developed in 1985, is among the most widely used models.

Wikipedia:

The PSA Prepayment Model is a prepayment scale developed by the Public Securities Association in 1985 for analyzing American mortgage-backed securities. The PSA model assumes increasing prepayment rates for the first 30 months after mortgage origination and a constant prepayment rate thereafter.[1] This approximates real-world experience that during the first few years, mortgage borrowers:
 are less likely to relocate to a di erent home, are less likely to refinance into a new mortgage, and are less likely to make extra payments of principal. The standard model (also called "100% PSA") works as follows: Starting with an annualized prepayment rate of $0.2\%$ in month 1, the rate increases by $0.2\%$ each month, until it reaches $6\%$ in month
30. From the 30th month onward, the model assumes an annualized prepayment rate of $6\%$ of the remaining balance. Each monthly prepayment is assumed to represent full payoff of individual loans, rather than a partial prepayment that leaves a loan with a reduced principal balance.

Variations of the model are expressed in percent; e.g., "150% PSA" means a monthly increase of $0.3\%$ in the annualized prepayment rate, until the peak of $9\%$ is reached after 30 months. The months thereafter have a constant annualized prepayment rate of $9\%$.

1667% PSA is roughly equivalent to 100% prepayment rate in month 30 or later.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/7e94a9fa23f33123314fd718a4068014516958e012dad7649decb8945f550cb3.jpg)

Figure 12.3: PSA Scales

# Fha Experience

# Wikipedia:

An FHA insured loan is a US Federal Housing Administration mortgage insurance backed mortgage loan that is provided by an FHA-approved lender. FHA insured loans are a type of federal assistance. They have historically allowed lower-income Americans to borrow money to purchase a home that they would not otherwise be able to a ord. Because this type of loan is more geared towards new house owners than real estate investors, FHA loans are di erent from conventional loans in the sense that the house must be owner-occupant for at least a year.[1] Since loans with lower down-payments usually involve more risk to the lender, the home-buyer must pay a two-part mortgage insurance that involves a one-time bulk payment and a monthly payment to compensate for the increased risk.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/49937f9b2242f40cb45b2dc4306a173671017f4854a7638ba178930f9f2f8b5f.jpg)

Figure 12.4: FHA Experience (from CoreLogid)

# Mortgage Coupon

# Investopedia:

A current coupon refers to a security that is trading closest to its par value without going over par. In other words, the bond's market price is at or near to its issued face value.

Put di erently, a bond has a current coupon status if its coupon is set approximately equal to the bond's yield to maturity
(YTM) at the time of issuance. The concept is often used in pricing yield spreads among mortgage-backed securities
(MBS) .

The current coupon is commonly used to understand yield spreads of mortgage-backed securities
(MBS) which are guaranteed by U. S. government-sponsored enterprises Fannie Mae and Freddie Mac and the government agency Ginnie Mae0.1 As the underlying mortgages of MBSs have different interest rates, various MBSs will have different coupons.

In the MBS market, a current coupon is defined as the to-be-announced
(TBA) mortgage security of any issue for the current delivery month that is trading closest to, but not exceeding par value. A TBA qualification means that the pool of mortgages that will back the security has not been assigned, even though the contract is about to be made. A synthetic 30-year fixed-rate MBS in the TBA market is the current coupon used as a benchmark throughout the industry to price and value mortgages.

# Determining The Mbs Current Coupon

To determine which security is the current coupon, it is necessary to know the par value of the mortgages, which is the sum of the outstanding principals on the underlying mortgages. The current coupon is calculated by interpolating the highest coupon below par and the lowest coupon above par, adjusting for the delay days associated with the securities in question.

Alternatively, it is obtained by extrapolating from the lowest coupon above par in case no coupon is trading below par. For example, TBA mortgage securities often trade with interest rates in increments of $0.5\%$. Therefore, assuming a par value of 100, if Fannie Mae $8\%$ mortgage securities are trading at 99.5 and Fannie Mae $8.5\%$ mortgage securities are trading at 100.75, Fannie Mae's $8\%$ security would be the current coupon.

# Special Considerations

A principle of mortgage analysis is that the higher a mortgage-backed security's coupon is relative to the current coupon, the more likely that mortgage-backed security is to prepay. Mortgage investors make this relative value analysis in calculating MBS yields and valuations. In addition, the current coupon reflects the state of the mortgage market. Thus, lenders and borrowers can use it as an indicator of what the fair rate for new mortgages should be.

WAC, WAM, WALA, WAL

WAM/WALA are very similar to duration.

Weighted average maturity
(WAM) is the weighted average amount of time until the maturities on mortgages in a mortgage-backed security
(MBS) . This term is used more broadly to describe maturities in a portfolio of debt securities, including corporate debt and municipal bonds. The higher the WAM, the longer it takes for all of the mortgages or bonds in the portfolio to mature. WAM is used to manage debt portfolios and to assess the performance of debt portfolio managers.

The weighted average loan age
(WALA) measures the average age of the loans in a pool of mortgage-backed securities
(MBS) . The weights are based on the dollar amount of each loan at each maturity in proportion to the aggregate total of the pool and can be weighted on the remaining principal balance dollar figure or the nominal value of the loan.

The weighted average life
(WAL) is the average length of time that each dollar of unpaid principal on a loan, a mortgage, or an amortizing bond remains outstanding. Calculating WAL shows an investor, an analyst, or a portfolio manager how many years it will take to receive roughly half of the amount of the outstanding principal. The formula is useful in measuring the credit risk associated with fixed-income securities.
 more...

# 12.1.2 Cmbs

Commercial mortgage backed securities refer to securities that are products of securitizing commercial mortgage loans. These loans are made out to commercial real estate properties such as rental apartments, hotels, casinos, etc. that earn rental incomes. Hence, the cash flows paid out to the investors do not come from salaries or wages of the borrowers but from the rental revenues.

In addition, CMBS are not securitized by agencies and hence defaults are not guaranteed. Consequently, CMBS su er credit risk. Contrary to RMBS, CMBS investors are guaranteed a certain period of interests, known as the "yield mainte nance" period. During this period, borrowers cannot prepay (or subject to a high prepayment penalty which is prohibited by law in RMBS).

# 12.1.3 Abs

Asset backed securities include everything that is not an RMBS or CMBS. They suffer from both prepayment and credit risks.

# 12.2 Securitization Process

Figure 12.5 demonstrates how the securitization process looks like. In the primary market, individuals borrow money to buy their homes (so these loans are collateralized) from either commercial
(BoA) or mortgage-specialized banks (e.g. Norwest).

The banks that make the loans can decide to keep the loans for themselves (and make a handsome spread) or sell them to the agencies. If latter, then these loans will go through the underwriting process held by the agencies. In the process, the agencies will sell these loans to a chosen set of dealers (also banks, and could be the same banks as those that made the loans earlier). These dealers
(banks) have a retail channel to sell these MBS to their clients.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/44fb73fbc98116e112dedb3ae2bea5041b83320035c598757932945392583031.jpg)

Figure 12.5: Securitization

# 12.3 Rmbs

# 12.3.1 Paththroughs

# Investopedia:

"A pass-through security is a pool of fixed-income securities backed by a package of assets. A servicing intermediary collects the monthly payments from issuers and, after deducting a fee, remits or passes them through to the holders of the pass-through security (that is, people or entities who have invested in it). A pass-through security is also known as a "pay-through security" or a "pass-through certificate"—though technically the certificate is the evidence of interest or participation in a pool of assets that signifies the transfer of payments to investors; it's not the security itself."

In the secondary market, various types of RMBS are sold. The first type is a passthrough structure, as in Figure fig:pt. A passthrough
(PT) RMBS is, as its name suggests, like a tiny mortgage. The agencies collect similar demographic mortgages (hence homogeneous) and divide them up equally.

This is known as the vertical partition.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/06dbbcd27115b530615038fee56197fa26943c8ccb71f91b46c9c7b64d73aaeb.jpg)

Figure 12.6: Mortgage Passthrough

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/3be27a0ddca66043ff5ffc91145cb9625fad4c530b4208f56ed9b7eadc347ad5.jpg)

# 12.3.2 Cmo

Investopedia:

"A collateralized mortgage obligation
(CMO) refers to a type of mortgage-backed security that contains a pool of mortgages bundled together and sold as an investment. Organized by maturity and level of risk, CMOs receive cash flows as borrowers repay the mortgages that act as collateral on these securities. In turn, CMOs distribute principal and interest payments to their investors based on predetermined rules and agreements."

This is a horizontal partition.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/6a65f31b8b0246cff5f27a91a26d4d02bc30c9fb3ff51da3c8e2008fa552ab8f.jpg)

Figure 12.7: Collateralized Mortgage Obligations

Like CMOs, collateralized debt obligations
(CDOs) consist of a group of loans bundled together and sold as an investment vehicle. However, whereas CMOs only contain mortgages, CDOs contain a range of loans such as car loans, credit cards, commercial loans, and even mortgages. Both CDOs and CMOs peaked in 2007 just before the global financial crisis, and their values fell sharply after that time. For example, at its peak in 2007, the CDO market was worth $1.3 trillion, compared to$ 850 million in
2013. Collateralized Mortgage Obligations and the Global Financial Crisis

First issued by Salomon Brothers and First Boston in 1983, CMOs were complex and involved many different mortgages. For many reasons, investors were more likely to focus on the income streams o ered by CMOs rather than the health of the underlying mortgages themselves. As a result, many investors purchased CMOs full of subprime mortgages, adjustable-rate mortgages, mortgages held by borrowers whose income wasn't verified during the application process, and other risky mortgages with high risks of default.

The use of CMOs has been criticized as a precipitating factor in the 2007-2008 financial crisis. Rising housing prices made mortgages look like fail-proof investments, enticing investors to buy CMOs and other MBSs, but market and economic conditions led to a rise in foreclosures and payment risks that financial models did not accurately predict. The aftermath of the global financial crisis resulted in increased regulations for mortgage-backed securities. Most recently, in December 2016, the SEC and FINRA introduced new regulations that mitigate the risk of these securities by creating margin requirements for covered agency transactions, including collateralized mortgage obligations.

# 12.3.3 Interest Only And Principle Only

The partition can be diagonal too. Figure 12.8

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/2f575dbf691757764f4885bda71fcf3567b21b9b01d2d26c00f99e093c594969.jpg)

Figure 12.8: Interest Only and Principal Only

# 12.3.4 Nber Paper Https://Www. Nber. Org/Papers/W24509. Pdf

# 12.4 Cmbs

Investopedia:

# Types Of Cmbs

The mortgages that back CMBS are classified into tranches according to their levels of credit risk, which typically are ranked from senior—or highest quality—to lower quality. The highest quality tranches will receive both interest and principal payments and have the lowest associated risk. Lower tranches or higher interest rates, but the tranches that take on more risk also absorb most of the potential loss that can occur as the tranches go down in rank.

The lowest tranche in a CMBS structure will contain the riskiest—and possibly speculative—loans in the portfolio. The securitization process that's involved in designing a CMBS's structure is important for both banks and investors. It allows banks to issue more loans in total, and it gives investors easy access to commercial real estate while giving them more yield than traditional government bonds.

Investors should understand, however, that in the case of a default on one or more loans in a CMBS, the highest tranches must be fully paid o, with interest, before the lower tranches will receive any funds.

# Criticism Of Cmbs

Typically, only very wealthy investors invest in CMBS because there are not many options here for the average investor. It's di cult to find mutual funds or exchange traded funds
(ETF) that invest solely in this asset class, though many real estate mutual funds invest a portion of their portfolios into CMBS.

# Requirements For Cmbs

In December 2016, the Securities and Exchange Commission
(SEC) and Financial Industry Regulatory Authority
(FINRA) introduced new regulations to mitigate some of the risks of CMBS by creating margin requirements for covered agency transactions, including collateralized mortgage obligations.

# 12.5 Abs

Asset backed securities
(ABS) are "leftovers" securitized products from the RMBS and CMBS. It includes everything from subprime mortgages to credit card loans.

# 12.5.1 Subprime (Alt-A)

# What Is Subprime?

Subprime is a below-average credit classification of borrowers with a tarnished or limited credit history, and which are subject to higher than average interest rates.

Lenders will use a credit scoring system to determine which loans a borrower may qualify for. Subprime loans carry more credit risk, and as such, will carry higher interest rates as well.

KEY TAKEAWAYS Subprime refers to borrowers or loans, usually o ered at rates well above the prime rate, that have poor credit ratings.

Subprime lending is higher risk, given the lower credit rating of borrowers, and has in the past contributed to financial crises.

Subprime makes up about one-quarter of the domestic housing market, but subprime products may also include non-mortgage loans and credit.

Investopedia:

An alt-A mortgage lands somewhere in between a prime and subprime mortgage. Borrowers who have higher credit scores and have lower interest rates get prime mortgages. Subprime mortgages are o ered to borrowers with lower credit scores and have higher interest rates. Alt-A mortgages fall in between in prime and subprime mortgages in terms of risk and interest rates.

One of the higher risks associated with Alt-A loans is less loan documentation. These types of loans were especially prominent leading up to the 2008 financial crisis. Lenders of Alt-A loans issued these loans without significant documentation of income and nor verification of employment from the borrower. Alt-A loans were a substantial factor leading to the subprime crisis which reached its peak in 2008 with many borrowers defaulting on their mortgage loans. Dodd-Frank regulations, implemented as a reaction to the fallout from the crisis, has helped improved documentation and verification weaknesses prevalent prior to these new rules.

Dodd-Frank regulations require greater documentation on all types of loans (specifically mortgages). The legislation has instituted provisions for qualified mortgages, which are high-quality mortgages that meet specific standards and thus qualify for special treatment in both the primary and secondary market.

# 12.5.2 Home Equity

A home equity loan—also known as an equity loan, home equity installment loan, or second mortgage—is a type of consumer debt. Home equity loans allow homeowners to borrow against the equity in their home. The loan amount is based on the difference between the home's current market value and the homeowner's mortgage balance due. Home equity loans tend to be fixed-rate, while the typical alternative, home equity lines of credit
(HELOCs) , generally have variable rates.

KEY TAKEAWAYS A home equity loan, also known as a "home equity in stallment loan" or a "second mortgage," is a type of consumer debt.

Home equity loans allow homeowners to borrow against the equity in their residence. Home equity loan amounts are based on the difference between a home's current market value and the mortgage balance due.

Home equity loans come in two varieties—fixed-rate loans and home equity lines of credit
(HELOCs) . Fixed-rate home equity loans provide one lump sum, whereas HELOCs or borrowers revolving lines of credit.

# 12.5.3 Others

# Auto Floorplan Https://Www. Nextgearcapital. Com/News/How-Does-Floor-Plan-Financing-Work/ Https://Www. Nextgearcapital. Com/News/How-To-Begin-A-Car-Dealership-Floor-Plan-Nextgearcapital/

The terms "floor planning" and "floor plan financing" get thrown around pretty frequently in dealership and auction circles. But what do these terms really mean and how does floor plan financing work?

To put it in the simplest terms, floor planning and floor plan financing work almost like a credit card made solely for purchasing vehicle inventory.

Credit cards are issued by a bank to an individual. Individuals can then buy personal goods with the money loaned from the bank. The money borrowed from the bank collects interest, and one has the choice to either make a minimum payment or pay o the balance in full when the bill is due.

So how does floor plan financing work?

Much like a credit card, a floor plan financing company extends a line of credit to a car dealer. Dealers can then use their floor plan line of credit to purchase inventory from auctions and other inventory sources. If a dealer purchases a car on a floor plan, takes it back to their lot and it doesn't sell within a contractually determined number of days, dealers are charged a small fee. As a dealer sells their inventory, they pay back the original loan.

With a floor plan, the initial investment needed to buy a particular unit is a fraction of the vehicle's actual purchase price. As soon as that vehicle sells to a consumer, floor planning dealers have the ability to immediately realize profits, pay back the initial value of the loan plus interest and fees, and had the flexibility to keep their funds working for their dealership.

How does floor plan financing work specifically to benefit auto dealers?

Floor plan finance companies are uniquely attuned to the needs of auto dealers. Using cash or a bank line of credit to purchase inventory can work for some car dealers, but many floor plan financing companies offer a variety of dealer-specific benefits. In addition to freeing up the cash a dealer has on hand, other floor plan financing benefits can include extra flexibility in terms of paying or a particular piece of inventory, payment extensions and credit increases if necessary. Other services are also frequently o ered which can include records management, title services depending on the dealer's state, collateral protection and state-of-the-art online and mobile account management tools.

Though floor plan financing can seem like a confusing concept, in practice it can be an extremely beneficial business strategy for automotive dealers.

# Credit Card Https://Www. Fico. Com/Sites/Default/Files/2019-03/Asset-Backed%20Securities-Rpt-Distribution%20F

Asset-backed securitization allows receivables holders of any kind to transfer their revenue streams to investors. The practice began with computer leases in the 1980s. Today the market includes collateral types ranging from cell phone tower leases to heavy industrial equipment to retail lending products and commercial loans.

Credit cards asset-backed securities
(ABS) are a means for large issuers and lenders to sell blocks of their portfolios to investors. This allows issuers to retain servicing rights and generate fee income.

As accounts move on the financial institution's books, the issuers can continue their marketing activity, book new accounts, and reinvest the funds. Large issuers thus become marketing machines.

Issuers are not permitted to sell all their receivables to financial markets and must retain some risk. This regulatory standard requiring them to have som "skin is in the game" ensures prudent lending.

Small and middle-market lenders do not have a large enough number of cards for the ABS market, which is intended for sophisticated investors. Interest and non-interest revenue streams drive portfolio value, subclassified as risk-based tranches, that trade on the average of $800 million. Volumes this large are far beyond the realm of issuers below the top 15 credit card lenders in the United States. For practical purposes, the market has not seen an attempt to cobble together an o ering from different financial institutions.

The ABS market froze during the Great Recession as investors lost confidence in the quality, and assessment of quality, of the receivables. Although mortgage-backed securities got the most attention, total credit card securitizations also dropped, from $94.4 billion in 2007 to just$ 6.2 billion in
2010. The Federal Reserve restored confidence in capital markets with an emergency institutional lending procedure, Term Asset-Backed Securities Loan Facility
(TALF) . The Troubled Assets Relief Program
(TARP) also addressed the unstable market.

The Wall Street Reform and Consumer Protection Act (Dodd-Frank Act) of 2010 helped to restore confidence in the ABS market by addressing investors' concerns about the quality of underlying assets, the reliability of rating agency reports, and clarity on how funds would distribute as debtors made their regular payments. Clearer disclosures were required, along with transparent views of the underlying collateral used to secure the markets.

Asset securitizations continue in the U. S. market with more confidence now. For all asset classes, more than $1 trillion is in the market, with$ 28 billion sourced in the U. S. credit card market during
2018. This is still far below the $2 trillion mark reached just before the 2008 financial crisis though. While cards do not dominate the general ABS market, the channel has placed more than $225 billion into the market since 2012.

# Movies

# Wikipedia:

Film finance is an aspect of film production that occurs during the development stage prior to pre-production, and is concerned with determining the potential value of a proposed film. In the United States, the value is typically based on a forecast of revenues (generally 10 years for films and 20 years for television shows), beginning with theatrical release, and including DVD sales, and release to cable broadcast television networks both domestic and international and inflight airline licensing.

# 12.6 Other Real Estate Derivatives

Mortgages are loans and hence usually regarded as interest rate derivatives. Yet, mortgages are loans made out to purchasing real estate properties. As a result, MBS also inherit all the risks of their underlying real estate properties and can be regarded as RE derivatives.

In this section, we should discuss other real estate derivatives. These securities are tied closely to real estate properties.

# Wikipedia:

A property derivative is a financial derivative whose value is derived from the value of an underlying real estate asset. In practice, because individual real estate assets fall victim to market ine ciencies and are hard to accurately price, property derivative contracts are typically written based on a real estate property index. In turn, the real estate property index attempts to aggregate real estate market information to provide a more accurate representation of underlying real estate asset performance. Trading or taking positions in property derivatives is also known as synthetic real estate.

# 12.6.1 Case-Shiller Index Futures

# Wikipedia:

The Standard & Poor's CoreLogic Case-Shiller Home Price Indices are repeat-sales house price indices for the United States. There are multiple Case-Shiller home price indices: A national home price index, a 20-city composite index, a 10-city composite index, and twenty individual metro area indices. These indices are calculated and kept monthly by Standard & Poor's, with data points calculated for the time period of January 1987 through the present. The indices kept by Standard & Poor are normalized to have a value of 100 in January
2000. These Indices are based on original work by economists Karl Case and Robert Shiller, in which their team calculated the home price index back to
2001. That index is normalized as such that 1890 has a value of
2002. The Case-Shiller Index being kept on Shiller's website is updated quarterly.[1] Due to the di erent set reference points, and perhaps calculation di erences, the index numbers provided in each data set can be very di erent. For example, in 4th quarter 2013, the Standard and Poor 20 city index point was in the 160's, while the index point for 4th quarter on the Shiller data was in the 130's. Shiller claims in his book Irrational Exuberance that such a long series of home prices does not appear to have been published for any country.

CME created futures and options contracts on the CSI on the MSAs (metropolitan statistical areas):

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/df09c168b048a5a97cffb879406875b56a8c724e5813b179cdd74ac2350c7187.jpg)

Figure 12.9: Case-Shiller Index Futures

# 12.6.2 Rpx Swap And Forward Contracts Https://Realtytimes. Com/Headlines/Item/6432-20070926_Rpxmeasure

Another measure of the housing market began operating last week when trading in a new derivative known at the Residential Property Index, or RPX, got underway.

Created by Radar Logic Inc., New York, the index is based on single values representing price per square foot on actual residential real estate transactions in 25 metropolitan areas. Trading also will be available in a 25-city composite.

Dealers licensed to o er products in the RPX market include Morgan Stanley, Lehman Bros., Merrill Lynch, Deutsche Bank, Goldman Sachs and Bear Stearns.

Radar Logic, which bills itself as "the home of tradable real estate," is a technology-driven data and analytics business that produces a daily "spot" price for residential real estate in U. S. metropolitan areas.

At nearly $23 trillion, according to the latest figures from the Federal Reserve Board, the value of U. S. housing is significantly larger than that of stocks and rivals that of fixed income. But because of its illiquid nature, methods for investing and trading in real estate essentially have been limited to buying, holding and selling individual properties.

With the new derivative, however, investors will be able to take positions on the value of the residential property market, creating liquid and e cient opportunities similar to those available for more traditional commodities, said Radar Logic's president, Michael Feder.

"The launch of the RPX market provides both investors and participants in the real estate industry with sophisticated tools that have not been available to them before," Feder said. "The granular applications of the RPX-based derivatives should allow substantial utility for all interested participants."

The company produces daily prices for housing in the 25 markets by capturing actual transaction data and translating the information into the Radar Logic Daily Prices. The Daily Prices, in turn, power the RPX market, where derivatives and other financial instruments are o ered and traded.

RPX allows real estate and financial professionals to manage risk, invest in real estate without owning physical assets, and obtain more accurate insight into the residential property market, the company maintains.

Tony Tufariello, global head of the securitized products group at Morgan Stanley, said the derivatives "should provide an essential and timely investment and risk management tool for our institutional and individual clients by ering them the opportunity to express a long or short view on home price changes across the U. S."

Scott Soltas, the managing director and head of Merrill Lynch Mortgage Sales and Trading, believes that at least initially, RPX trading will be centered around price return " swaps" and simple forward contracts.

Both instruments will be quoted in terms of home price appreciation
(HPA) and will vary in length from one to five years. "The variety and flexibility provided by these contracts will enable investors to quickly and easily express views on specific property markets for their desired length of time," Soltas said.

Rich McKinney, head of Residential MBS Trading at Lehman Brothers, said investors holding securities sensitive to mortgage credit and prepayment performance as well as businesses with exposure to the housing market cycles can use these instruments to hedge their housing exposure.

"Given the current volatility in the housing market, the product launch is extremely well timed," McKinney said.

In addition to generating daily RPX prices, Radar Logic has developed a series of analytic tools designed to help professionals in both the real estate and financial services industries utilize these derivatives.

# 12.6.3 Reit

What Is a Real Estate Investment Trust
(REIT) ? A real estate investment trust
(REIT) is a company that owns, operates, or finances income-generating real estate. Modeled after mutual funds, REITs pool the capital of numerous investors. This makes it possible for individual investors to earn dividends from real estate investments—without having to buy, manage, or finance any properties themselves.

# Key Takeaways

A real estate investment trust
(REIT) is a company that owns, operates, or finances income-producing properties. REITs generate a steady income stream for investors but o er little in the way of capital appreciation. Most REITs are publicly traded like stocks, which makes them highly liquid (unlike physical real estate investments).

REITs invest in most real estate property types, including apartment buildings, cell towers, data centers, hotels, medical facilities, oces, retail centers, and warehouses.

# 12.6.4 Remic

# Wikipedia:

"A real estate mortgage investment conduit
(REMIC) is "an entity that holds a fixed pool of mortgages and issues multiple classes of interests in itself to investors" under U. S. Federal income tax law and is "treated like a partnership for Federal income tax purposes with its income passed through to its interest holders". REMICs are used for the pooling of mortgage loans and issuance of mortgage-backed securities and have been a key contributor to the success of the mortgage-backed securities market over the past several decades.

The federal income taxation of REMICs is governed primarily under 26 U. S. C. §860A-860G of Part IV of Subchapter M of Chapter 1 of Subtitle A of the Internal Revenue Code (26 U. S. C.). To qualify as a REMIC, an organization makes an "election" to do so by filing a Form 1066 with the Internal Revenue Service, and by meeting certain other requirements. They were introduced in 1987 as the typical vehicle for the securitization of residential mortgages in the United States."

Investopedia

# Key Takeaways

A real estate mortgage investment conduit
(REMIC) is a special purpose vehicle
(SPV) that is used to pool mortgage loans and issue mortgage-backed securities
(MBS) .

REMICs were first authorized by the enactment of the Tax Reform Act of
1986. A real estate mortgage investment conduit
(REMIC) may be organized as a partnership, a trust, a corporation, or an association and is exempt from federal taxes.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/67064402d56f772884723567505bc5c9b8c385109d6e918f68f81bc23711bd4a.jpg)

Figure 12.10: REMIC (taken from Freddie Mac)

# 12.6.5 Stacr And Connecticut Avenue Securities
(Cas) STACR REMIC structures or erings as notes issued by a trust that is treated as a Real Estate Mortgage Investment Conduit
(REMIC) . The trust pays interest (uncapped LIBOR floater) and principal (less credit and/or modification losses) to note-holders on a monthly basis. Credit and prepayment performance of the reference obligations determines performance of STACR REMIC securities.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/0415486f45bdf73c8d1a9461c4d30105521cd78b826ae25fd157237a84d135f7.jpg)

Figure 12.11: STACR

# 12.7 Appendix

The following FICO table is taken from credit.com (https://www.credit.com/blog/what-is-a-prime-vs-subprime-credit-score-189867). To qualify for the prime mortgage, FICO score needs to be minimally 620.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/92c63b9e89ffe2bb4d1be159dca8e88ab16e3d073f6409f6f74700f4b60a7088.jpg)

Figure 12.12: FICO Table

The following table (also present in Chapter 15) is taken from the NBER paper and shows the distribution of FICO scores. As we can see, an overwhelming majority of borrowers have FICO scores greater than 620, even for subprime borrowers.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/a15cd6c12dd8ef010af508d1c4939194b7720fa48716ca4d5520e0730f094380.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/6955cc3be5aff1be9d32b552a4289b98ccc8d1e54b538802fe7e5d6f75bae328.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/55765a83623927c1f9957c7121214424bc368edc19d9f86da087ceb0c1662cd9.jpg)

Figure 12.13: FICO Distribution

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/ea55520ebbd0a0b777483f4d01e5052ce4fa33d86eee08c5bedb9583985ff01c.jpg)

# Chapter 13

# Commodities

# 13.1 Introduction

Unlike the other fixed income securities (bonds and interest rate or FX swaps), commodities are physical assets that cannot be transferred easily. As a result, their derivatives naturally present very di erent pricing behaviors. These derivatives are commonly known as "real options".

CME classifies the commodities traded in their exchange as follows:

1. agriculture (e.g. corn, soy bean)
2. metals (e.g. gold, silver)
3. live stock and meat (e.g. live cattle, port belly)
4. energy (e.g. oil, gas)

In addition to these "well-known" commodities, real estate is another type of commodity that is as popular and CME trades its futures contracts (i.e. Case-Shiller index futures). Similar to (or even more so) the above commodities, real estate properties suers low liquidity. Furthermore, real estate values present a strong pattern of seasonality.

Liquidity and seasonality impact pricing of commodity derivatives more so than the usual factors (e.g. market factor and economic factor) that impact financial derivatives. Hence, it is not hard to imagine that commodity derivatives must be evaluated quite differently than financial derivatives in that their underlying assets bear very different risks.

Last but not least, commodities are highly subject to storage capacities (this is especially so for agriculture products as the harvest times may not match the demand of the crops). Even anticipating a large demand in the future, suppliers of the commodities cannot make all the potential profits if the storage capacity is limited. As a natural result, the prices of commodity derivatives are also impacted the storage capacity (sometimes known as inventory).

# 13.2 Convenience Yield

# Investopedia

A convenience yield is the benefit or premium associated with holding an underlying product or physical good, rather than the associated derivative security or contract.

Sometimes, as the result of irregular market movements such as an inverted market, the holding of an underlying good or security may become more profitable than owning the contract or derivative instrument due to its relative scarcity versus high demand. Consider purchasing physical bales of wheat rather than wheat future contracts. If there'sa sudden drought, and the need for wheat increases, the difference between the first purchase price of the wheat versus the price after the shock would be the convenience yield.

The storage of a physical good or commodity closely relates to the convenience yield of products. However, there's an inverse correlation between commodity prices and storage levels. Based on the levels of supply and demand, when storage levels of a commodity are scarce, the commodity's price tends to rise. The opposite is also true; when a commodity's storage levels are plentiful, the price typically decreases.

Convenience yields tend to exist when the costs associated with physical storage, such as warehousing, insurance, security, etc., are relatively low.

Investors can calculate the convenience yield as the cost of insurance against price risk. The formula is calculated by multiplying the price of a front-month futures contract by the capital cost of money that is tied up in inventory, or Euler's number raised to the borrowing rate multiplied by the time to maturity, then adding the storage cost and subtracting the price of the futures contract for the back-month contract. Next, divide this calculation by the price of the front-month futures contract and add one to the quotient. The resulting value is raised to the power of 365 divided by the number of days to maturity. Finally, subtract one from the resulting value.

The convenience yield is simple to calculate if a commodity's future price, spot price, borrowing rate and time to maturity are known. The futures price is calculated as the spot price multiplied by Euler's number, or the mathematical constant $e$, raised to the power of the difference between the borrowing rate and the convenience yield multiplied by the time to maturity. Consequently, the convenience yield is solved to be the difference between the borrowing rate and one divided by the time to maturity multiplied by the natural log of the futures price divided by the spot price. This formula is used for continuously compounding rates and yields.

For example, let's say that a trader wishes to calculate the convenience yield of West Texas Intermediate
(WTI) crude oil for delivery one year from today. Assume that the annual borrowing rate is $2\%$, the spot price of WTI crude oil is $50.50$ and the futures price of crude oil contracts expiring one year from today is $$45.50$. Therefore, the convenience yield is calculated to be $12.43\%$ continuously compounded per year, or 0.02 - $(1/1)^{*}$ LN($$45.50/$$50.50$).

Let $F_{t, T}$ be the forward price of an asset with initial price $S_t$ and maturity $T$. Suppose that $r$ is the continuously compounded interest rate for one year. Then, the non-arbitrage pricing formula should be

$$
\mathbf {F} _ {\mathrm {t}, \mathrm {T}} = \mathbf {S} _ {\mathrm {t}} \cdot \mathbf {e} ^ {\mathrm {r} (\mathrm {T} - \mathrm {t})}
$$

However, this relationship does not hold in most commodity markets, partly because of the inability of investors and speculators to short the underlying asset, $S_{t}$. Instead, there is a correction to the forward pricing formula given by the convenience yield c. Hence

$$
\mathbf {F} _ {\mathrm {t}, \mathrm {T}} = \mathbf {S} _ {\mathrm {t}} \cdot \mathrm {e} ^ {(\mathrm {r} - \mathrm {c}) (\mathrm {T} - \mathrm {t})}
$$ or

$$
\mathbf {F} = \mathbf {S} [ 1 + (\mathbf {r} - \mathbf {c}) \mathbf {T} ]
$$

To be discussed in more details later, in continuous time, the convenience yield is modeled as a leakage to the return of the asset:

$$
\begin{array}{l} \frac {\mathrm {d} S}{S} = (\mu -) \mathrm {d} t + \mathrm {d} W \tag {13.1} \\ = (r -) dt + d W \\ \end{array}
$$ where $\mathcal{L}$ is the convenience yield (or any leakage such as dividend yield (for index options), risk-free rate (for futures options), and foreign risk-free rate (for FX options)).

In the case of real estate, is rent.

# 13.3 Seasonality

One popular characteristic of commodities is the seasonality. The following website presents the seasonality of several commodities.
 https://www.scasonalcharts.com/futures.html

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/843dc6034962a97d8bf44c52d54c57a93e3875778e879bd5da72258f146d68e8.jpg)

(a)Crude Oil

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/1274f139275f48814caff7cdc45d09604db611932210b70b2395d394be85a470.jpg)

(b) Natural Gas

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/4b84aaf3ef24e470f5f3ffba8d9b1fff862328a064644a2aed69bb51ba7b7594.jpg)

(c) Soy Bean
Figure 13.1: Seasonality

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/ad9a5a4c4408fd9c48c8872f66f931c0e591c6f4fbc3093a89b2cfa67adb97e3.jpg)

(d) Copper https://kaufmansignals.com/capturing-seasonality-with-commodity-etfs/

Capturing Seasonality with Commodity ETFs

Articles / By Perry Kaufman

Seasonality in commodities is one of the great patterns for capturing profits. Think of it as a gift from Nature. It does require that you compare the current price patterns against the price history to decide if the commodity is acting correctly according to the season patterns.

One obstacle in taking advantage of seasonality is that the only way to trade it was using futures, and futures prices can discount the seasonal pattern, require you to roll the position one or more times, and often subjects you to higher volatility. In exchange, it gives you extreme leverage.

As an analyst, you can't find the seasonal pattern in commodities using futures because the typical data is back-adjusted. That's necessary because long-term prices are constructed from many shorter contracts. When building these continuous price series, older data is adjusted up or down to blend the prices into a smooth series. Very often, the tail of that series, the older data, can go negative. Then calculating the monthly returns as a percent of price is impossible. Even when the results are not obviously incorrect, the past prices in the back-adjusted data are not the actual prices on those dates, so none of the percentages are correct.

# Enter The Etfs

Then seasonality is found using cash prices, which cannot be traded. Enter ETFs. Commodity ETFs are traded just like any equity ETF. You buy a certain number of shares and you can hold them indefinitely. No rolls, no price distortion, but also no leverage. However, seasonal price moves can be pretty big and using seasonality presents unique diversification. You will probably find that giving up the volatility is a fair exchange for no leverage.

We'll look at some of the more liquid ETFs, CORN
(corn) , WEAT
(wheat) , sugar
(SGG) , and coee
(JO) . These are not trade many shares at the moment, but a seasonal trade can be entered using a limit order spread over a few days. The exits should also have plenty of opportunity. With any luck, volume will increase.

While we will calculate the seasonal patterns automatically, we like to confirm whether they conform to the seasonal fundamentals, that is, planting and harvest. The first step is to see where most of the product originates. Table 1 gives shows the largest producing countries for the four commodities.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/61c20f8c44f6a2ccbbbc5dcdfbe1a8c7a052129f602b783a1f15cf7a81dfb26b.jpg)

Figure 13.2: Commodity production by country

Sources: Corn and wheat, Index Mundi; Co ee, Statistica; Sugar, USDA.

# Classic Seasonal Patterns

The US dominates corn production, and the combination of the US and China is overwhelming. Because both countries are in the Northern hemisphere, we can expect the same seasonal pattern. On the left in Chart 1 the monthly returns give a clear pattern of planting in March/April and harvesting in September. Note that the blue line spikes in July, indicating a crop "scare" in the middle of growing season. We normally expect to see a rally in the early Summer when weather creates uncertainty about the health of the crop, but that turns out to be far less often than thought. The greatest problem is in the Spring when extreme rainfall delays planting and farmers may shift from corn to soybeans. The highest prices are in the Winter when inventories are low and planting is uncertain.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/b94d5f89144803d554edb5ddd465b30250f51884c877e7b446813af4376cd1f9.jpg)

Figure 13.3: Corn seasonality. Cash prices from 1989
(left) and a comparison of cash, futures, and CORN ETF
(right) . Data source: CSI

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/86a8c63a9a3144636a1e0265309394061c62e72376cc68aad2f3c72dd0be5c29.jpg)

On the right is a comparison of cash, futures, and the ETF CORN, from 2010 when the ETF started trading. During these five years the Summer weather has been less certain and prices rallied in July. Futures, which reflects more speculation, shows a much bigger move. But corn is a hearty crop and prices returned to the normal lows in September. The EFT tracked cash prices fairly well, indicating that it may represent seasonality very nicely.

# Wheat

The US is far from the biggest producer of wheat, but all of the top countries are again in the Northern hemisphere; therefore, Winter wheat would be planted in the Fall and harvested in the Spring. Why can't we see that clearly in Chart 2? It turns out that it's easier to see in a more recent period from 2010.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/4a8f5ae6e78786e1ef8bd987b37d003edb7a67e35d50ed7a14639eb3223ea6bd.jpg)

Figure 13.4: Wheat seasonality from cash
(left) and from futures
(right) . Data source: CSI

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/11219491e2e85db45472a8d35c3d196a8f51a3d3fea64e82420edde068af23f4.jpg)

During the past five years, the pattern can be seen in Chart
3. Prices rise from October through March, as inventory is depleted and the new crop is uncertain. Prices then decline into the seasonal low at harvest, about May. The spike in July is related to the Summer crops in corn and soybeans, because they also serve as a substitute for livestock feed. Feed is purchased according to which crop will generate the most protein for the cheapest price. Cattle have little to say in the choice. Then the wheat seasonal pattern turns out to be similar to corn and other Northern hemisphere crops.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/7e8e9cc41146270cf6094735d3b09ef9a6a8ec53ef1fc564ecf1cdda547399f6.jpg)

Figure 13.5: Comparison of cash, futures, and WEAT ETF seasonality

# Sugar And Co Ee

Sugar has a more complex seasonal pattern because half of production in the Southern hemisphere and half in the Northern. The comparison on the right of Chart 4 is easier to see. If the Northern season has its season from April to November with its peak in July, the Southern hemisphere is from November to April with its peak in January. That gives two seasons and two trading opportunities.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/566fedd404ef71070976d41164e491a9fe51a7fd8e9a0299e69bc5b48e0983ca.jpg)

Figure 13.6: Sugar seasonality from cash
(left) and a comparison of cash, futures, and the SGG ETF
(right) from 2010

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/462041acf345766aa6e3cb6d7b3e720ed2dfcc26bb7939e06a02aacb9f86a8ac.jpg)

Co ee is nearly all grown in the Southern hemisphere, with a small amount of US co ee produced in Hawaii. The co ee ETF
(JO) has been traded since mid-2008. Again we can see that the ETF does a good job tracking the cash seasonality. The harvest lows are in June and the new season begins in November.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/49c697b3f274cd9345deaf721d31632a569ceed64e4ebb15e391a3c0b673d43a.jpg)

Figure 13.7: Co ee seasonality from cash
(left) and a comparison of cash, futures, and the ETF JO
(right) from 2008

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/2bd3afed2b80988b6333bb1eb72315d79a21d5ecf3a7526ff273473c25fa82ef.jpg)

Seasonality also is prominent in real estate (summer is hot season as people get out more).

Seasonality violates the no-arbitrate pricing (since it is predictable). If we know that an asset will be more expensive in two months, then we can buy the asset now and sell it in two months. Conversely, if an asset is certainly less worthy in two months, we can sell short the asset and buy back in two months.

Unfortunately, none of the above is doable in reality for commodities.

# 13.4 Inventory

A recent phenomenon in the oil market shocked the whole world

Some times commodities are included in the category of fixed income and so named FICC (Fixed Income, Currencies and Commodities), although the risk characteristics of commodities are quite different from IR and FX.

Commodities are very di cult to price and also their derivatives. Unlike financial assets, commodities (or real assets) are:

- di cult to transact (hence liquidity is very low)
- require large storage cost (including funding cost)
usually present cycles (including seasonality)

In commodities, two popular terminologies should be paid attention to:
 contango
- backwardation

Contango is defined as the futures price greater than the spot price: $(\mathbf{t},\mathbf{T}) > \mathbf{S}(\mathbf{t})$ where $\mathbf{T}$ is the settlement date. This is a normal situation as storage cost is high. For a buyer who wants a commodity in the future, he can either buy futures contracts, or he can buy spot and store it, whichever is cheaper. As a result, $(\mathbf{t},\mathbf{T}) = \mathbf{S}(\mathbf{t}) + \mathbf{C}(\mathbf{t},\mathbf{T}) > \mathbf{S}(\mathbf{t})$.

Backwardation is defined as the futures price smaller than the spot price: $(t, T) < S(t)$. Under the phenomenon of cost of carry, this is not possible as arbitrageurs of such commodities will just buy futures and sell short the spot to make profits. Hence the only logical explanation of backwardation existing must be that short-selling commodities is prohibitedly costly. Such a cost is termed convenience yield.

Convenience yield happens (i.e. backwardation) when the spot is very rare and hence short-selling is di cult. To short sell, the seller must borrow the spot. When the spot is rare, then the cost of borrowing is consequently high. There are two kinds of rareness. The first is physical, which means the commodity is simply not available. For example, during winter, agriculture products (e.g. corn) are rare, as farmlands cannot produce. Hence to borrow corn to short must pay a higher price. The other kind is the spot is in high demand and its price is skyrocketing. Under this situation, the borrower must pay for the expected growth in price as part of the borrowing cost. For example, gold (or precious metals) is very expensive to borrow during a recession as everyone buys gold to hedge a recession.

As we can see, convenience yield shares the same flavor as seasonality as spot prices of commodities can present cyclical patterns repeatedly. As the two examples earlier, agricultural products present price cycles within a year
(seasonality) and precious metals present price cycles along with recessions. Should commodities be absolutely liquid, such cycles cannot exist as one can buy and sell these goods easily at no cost.

By now, we can understand the classical financial models cannot be applied easily to commodities. All financial models assume perfect liquidity that rules out cyclicality and seasonality. However, convenience yield can be regarded as leakage of the spot because it represents the cost of hold the spot. This is similar to dividends of stocks, or foreign interest returns of exchange rates.

Equation (13.1) is then used as the best approximation to model commodities. Eduardo Schwartz (1979) uses equation (13.1) with a mean-reverting convenience yield process:

$$
\begin{array}{l} \frac {d S}{S} = (\mu -) dt + d W _ {1} \tag {13.2} \\ \mathbf {d} = (-) \mathbf {dt} + \mathbf {d W} _ {2} \\ \end{array}
$$ where $\mathbf{d}W_{1}\mathbf{d}W_{2} = \mathbf{dt}$. The convenience yield here now can be either positive or negative. When it is substantially negative (larger than $\mu$ so $\mu - < 0$ ), then the futures price will be smaller than the spot price and we have a backwardation. If $\mathbf{d}W_{1}$ is negative, then it is similar to having a contango. Given that $\mathbf{d}W_{1}$ is normally distributed, there is a closed-form solution to the futures price (and futures option):

$$
(t, T) = \hat {\mathbb {E}} [ S _ {T} ] = \exp \quad \hat {\mathbb {E}} [ \ln S _ {T} ] + \frac {1}{2} \hat {\mathbb {V}} [ \ln S _ {T} ]
$$ where

$$
\begin{array}{l} \hat {\mathbb {E}} [ \ln S _ {T} ] = \ln S _ {t} + (\mu - \frac {1}{2} ^ {2}) (T - t) - \frac {1}{t ^ {-}} e ^ {- (T - t)} - 1 + T - t - \frac {1}{-} e ^ {- (T - t)} - 1 \\ \hat {\mathbb {V}} [ \ln S _ {T} ] = \frac {2}{2} e ^ {2 (T - t)} - 1 + ^ {2} (T - t) + \frac {2}{e ^ {(T - t)} - 1} \\ \end{array}
$$

Another important pricing question related to commodities (and not so much for financial assets) is the level of inventory. As storing commodities su er
(enjoys) high storage costs (convenience yield), how much to store (level of inventory) is an important decision. William J. Baumol (1952) has a simple model to explain the demand for inventory.<sup>1</sup> Say farmers hold $\mathsf{Q}$ bushels of wheat of which $\mathsf{Q}_1$ to be sold at time $\mathsf{T}_1$ and $\mathsf{Q}_2$ to be sold at time $\mathsf{T}_2$. $\mathsf{P}_1$ and $\mathsf{P}_2$ are prices respectively. If $\mathsf{P}_1 > \mathsf{PV}[\mathsf{P}_2]$, then farmers will sell all $\mathsf{Q}$ at $\mathsf{T}_1$.

A marketing cost is assumed as $\mathbf{Q}^2$. Also $\mathrm{PV}[\mathsf{P}_2] = \mathrm{DP}_2$. So the total revenue from both sales is $(\mathsf{P}_1\mathsf{Q}_1 - \mathsf{Q}_1^2) + \mathsf{D}(\mathsf{P}_2\mathsf{Q}_2 - \mathsf{Q}_2^2)$. Maximizing the total revenue leads to (substituting $\mathsf{Q} - \mathsf{Q}_2$ for $\mathsf{Q}_1$ and taking first order derivative with respect to $\mathsf{Q}_2$ ):

$$
- \mathbf {P} _ {1} + 2 (\mathbf {Q} - \mathbf {Q} _ {2}) + \mathbf {D} (\mathbf {P} _ {2} - 2 \mathbf {Q} _ {2}) = 0
$$ and the optimal solution for $\mathbf{Q}_2$ is:

$$
\hat {\mathbf {Q}} _ {2} = \frac {\mathbf {DP} _ {2} - \mathbf {P} _ {1} + 2 \mathbf {Q}}{2 (1 + \mathbf {D})}
$$ which implies a positive inventory (i.e. $\mathbf{Q}_2 > 0$ ) if:

$$
\mathbf {DP} _ {2} - \mathbf {P} _ {1} > - 2 \mathrm {Q}
$$ that is the price di erential must be larger enough to justify an inventory. The larger is the price in the second sale $(\mathsf{P}_2)$, the higher is the inventory level $(Q_{2})$. This is known as the transaction demand for inventory.

A second theory for inventory is known as the precautionary demand for inventory (S. C. Tsiang, 1969).<sup>2</sup> Let $z$ be amount arrived; I precautionary stock; $x$ a unit loss from the shortage; $K$ demand; and $c$ cost of holding an inventory.<sup>3</sup>

If $z$ is too low to operate at full capacity, then the firm will suffer a shortage cost:

$$
(\mathbf {K} - \mathbf {I} - \mathbf {z}) \mathbf {x}
$$

Expected shortage cost:

$$
\begin{array}{l} \mathbf {K} - \mathbf {I} \\ 0 \end{array} (\mathbf {K} - \mathbf {I} - \mathbf {z}) \mathbf {xf} (\mathbf {z}) d \mathbf {z}
$$

Cost of precautionary inventory is $\mathsf{I}$ so the total cost is:

$$
\mathbf {I} \mathbf {c} + \begin{array}{l} \mathbf {K} - \mathbf {I} \\ 0 \end{array} (\mathbf {K} - \mathbf {I} - \mathbf {z}) \mathbf {xf} (\mathbf {z}) \mathbf {dz}
$$

Optimal level of inventory I is:

$$
\mathbf {c} - \begin{array}{ll} & \mathbf {K} - \mathbf {I} \\ 0 & \end{array} \mathbf {xf} (\mathbf {z}) \mathbf {dz} = 0
$$

The higher is storage cost $c$, the less should be the inventory (i.e. $I$ is smaller and $K - I$ is larger). The higher is the opportunity cost $x$, the lower is the inventory.

Real estate is another real asset that follows the same model. In investing in real estate, the buyer now needs not to rent and therefore return on the property must be reduced by the amount of rent. Now represents the percentage rent. Another way to look at this is that the buyer buys the property for purely rental purposes. He or she spends the money and expects to gain returns on the investment. Rental incomes therefore must be a part of the total
(cum) return. Given that rents are collected (leaked out) in cash, it must be deducted from the total return.

One thing particular to the real estate market is that properties need to be depreciated. As a result, the minimum return for the property to generate is the depreciate rate. Because of this, the convenience yield now is rent minus depreciation rate.

# 13.5 Various Contracts

The majority contents of this section are taken from a series of lessons provided by Mercatus Energy (mercatusenergy.com)

Note that although energy has been dominating the commodity trading in the recent years, the analyses provided here are applicable to other commodities listed in Introduction.

# 13.5.1 Futures

This is a very liquid market. CBOE and CME are two major exchanges in the U. S. New York Mercantile Exchange is also popular. They can be categorized as:

- agriculture (e.g. corn, soy bean)
- metals (e.g. gold, silver)
- live stock and meat (e.g. live cattle, port belly)
energy (e.g. oil, gas)
 https://www.mercatusenergy.com/blog/bid/54865/energy-hedging-101-futures

Given the recent volatility in crude oil and refined products prices, as well as natural gas prices, we thought it would be beneficial to take another look at the various energy hedging instruments available to the various participants in the energy commodity markets.

As this post will be the first of several in a series, we are going to begin by exploring how market participants can hedge their energy price risk with futures contracts, the underlying benchmarks of nearly all energy price risk management instruments. In subsequent posts we'll address energy commodity swaps, options and more complex hedging structures such as basis swaps, collars and spreads on options.

In the global energy commodity markets there are six primary energy futures contracts, four of which are traded on the NYMEX: WTI crude oil, Henry Hub natural gas, ultra-low sulfur diesel and gasoline and two of which are traded on ICE: Brent crude oil and gasoil.

Note: Clicking on any of the above mentioned products will take you to appropriate page on the NYMEX or ICE website which provides the contract specifications and description for each respective product.

In essence, a futures contract gives the buyer the right to buy the underlying commodity at the price at which he buys the futures contract and vice versa for the seller. However, in practice, very few energy futures contracts actually result in delivery, most are utilized for hedging and are exited, sold in the case of long positions, bought in the case of long positions, prior to expiration.

Now, let's get to the meat of the issue at hand, how can a company use energy futures to hedge their energy price risk?

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/86b92e9809a9a54cef106ce60d613499d325a13639802be14c5c693a735fd01d.jpg)

Figure 13.8: Henry Hub Natural Gas Futures

Let's examine the case of a natural gas producer who wants to "lock in" the price of their future production in a given month. For sake of simplicity, let's assume that the producer is looking to hedge (by "fixing" or "locking" in the price) 10,000 MMBtu of their September production. To hedge their 10,000 MMBtu they could sell one NYMEX natural gas futures contract. If you had sold this one natural gas futures contract based on the closing price yesterday, contract at they would have hedged 10,000 MMBtu of their September production for $2.712/MMBtu.

Let's now assume that it is August 29, the expiration date of the September natural gas futures contract. Because the producer does not want to make delivery of the futures contract the producer decides to buy back one September natural gas futures contract at the then, prevailing market price. As an aside, if held to expiration, the seller
(short) of a futures contract is obligated to make delivery of the commodity while the buyer
(long) of a futures contract is required to take delivery of
(receive) the commodity.

On August 29, if the prevailing market price, the price at which the producer bought back the natural gas futures contact, is $3.00/MMBtu, the producer would incur a hedging "loss" of $0.50/MMBtu. As a result (excluding the basis differential, transportation and gathering fees) the producer would receive $3.00/MMBtu for their physical natural gas. However, due to the hedging loss of $0.288/MMBtu, the producer's gross profit for September would be $2.712/MMBtu, the price at which they originally sold the futures contract.

On the other hand, if on August 29 the prevailing market price is $2.50/MMBtu, the producer would incur a hedging "gain" of$ 0.212/MMBtu. In this scenario (again excluding the basis di erential, transportation and gathering fees) the producer would receive $2.50/MMBtu for their physical natural gas. Due to the hedging gain of $0.212/MMBtu, the producer's gross profit in this scenario would be also be $2.712/MMBtu, the price at which they originally sold the futures contract.

This same methodology also applies to oil and gas producers hedging their crude oil production with NYMEX or Brent Crude oil futures. Likewise, a similar but opposite methodology would apply to a natural gas end-user
(consumer) who needs to hedge their exposure to potentially higher (rather than lower in the case of the producer) natural gas prices but rather than selling natural gas futures, as was the case with the producer, the consumer would buy a natural gas futures contract.

Similarly, an end-user who needs to hedge their exposure to gasoline can hedge buy buying gasoline
(RBOB) or diesel fuel could do so by purchasing a gasoline or diesel fuel futures contract.

While there are a quite a few details that need to be considered before a company buys or sells futures contracts to hedge energy commodity price risk, the methodology is pretty straightforward: If you need to hedge your exposure against potentially higher energy prices you can do so by buying an energy futures contract, if you need to hedge your exposure to declining energy prices you can do so by selling an futures contract.

# 13.5.2 Index Futures

Case-Shiller index futures.

The Standard & Poor's CoreLogic Case-Shiller Home Price Indices are repeat-sales house price indices for the United States. There are multiple Case-Shiller home price indices: A national home price index, a 20-city composite index, a 10-city composite index, and twenty individual metro area indices. These indices are calculated and kept monthly by Standard & Poor's, with data points calculated for the time period of January 1987 through the present. The indices kept by Standard & Poor are normalized to have a value of 100 in January
2000. These Indices are based on original work by economists Karl Case and Robert Shiller, in which their team calculated the home price index back to
2001. That index is normalized as such that 1890 has a value of
2002. The Case-Shiller Index being kept on Shiller's website is updated quarterly. Due to the different set reference points, and perhaps calculation differences, the index numbers provided in each data set can be very different. For example, in 4th quarter 2013, the Standard and Poor 20 city index point was in the 160's, while the index point for 4th quarter on the Shiller data was in the 130's. Shiller claims in his book Irrational Exuberance that such a long series of home prices does not appear to have been published for any country.

# Msas

# Investopedia:

Metropolitan statistical areas
(MSA) are delineated by the U. S. O ce of Management and Budget
(OMB) as having at least one urbanized area with a minimum population of 50,000.

A metropolitan statistical area
(MSA) , formerly known as a standard metropolitan statistical area
(SMSA) , is the formal definition of a region that consists of a city and surrounding communities that are linked by social and economic factors, as established by the U. S. O ce of Management and Budget
(OMB) .

Metropolitan statistical areas serve to group counties and cities into specific geographic areas for population censuses and compilations of related statistical data. Modern MSAs are configured to represent contiguous geographic areas with a relatively high density of human population.

Metropolitan statistical areas usually consist of a core city with a large population and its surrounding region, which may include several adjacent counties. The area defined by the MSA is typically marked by significant social and economic interaction. People living in outlying rural areas, for example, may commute considerable distances to work, shop, or attend social activities in the urban center. As of Sept. 2018 [OMB BULLETIN NO. 18-04], there are 392 regions that meet the requirements to be designated as metropolitan statistical areas
(MSA) in the U. S. and Puerto Rico (384 in the United States and 8 in Puerto Rico).

In contrast to metropolitan statistical areas, which center on towns and smaller communities with populations between 10,000-50,000, MSAs must include a city with a population of at least 50,000. Some MSAs, such as Dallas-Fort Worth-Arlington, contain multiple cities with populations exceeding 50,000. The most populous MSA in the country, New York-Newark-Jersey City, spans portions of three adjacent states, New York, New Jersey, and Pennsylvania.

The Bureau of Labor Statistics
(BLS) uses MSA data to analyze labor market conditions within a geographical area. Within a metropolitan statistical area, workers can presumably change jobs without having to move to a new location, creating a relatively stable labor force.

Statistical data about MSAs also helps government o cials and businesses review information about per capita income, spending patterns, and unemployment rates. The resulting data can be used to formulate policies designed to stimulate economic growth in the region.

For example, the Atlanta-Sandy Springs-Roswell metropolitan statistical area exerts a significant influence on the economic health of the region. It is the most populous area of Georgia. Companies seeking to relocate or establish new companies in the Atlanta-Sandy Springs-Roswell region can use statistical data about the area to project the viability of their intended business.

Real estate investors also use MSA data to study housing trends and population movement. In addition, applicants for certain social services may need to prove income levels below a fixed percentage of the median gross income in their metropolitan statistical area to qualify for help, including low-income housing and other forms of support.

# 13.5.3 Swaps

We introduced commodity swaps in Chapter??. In this section, we explore more examples of commodity swaps. Recently, energy (crude oil, natural gas) has dominated the commodities markets.
 https://finance.zacks.com/types-commodity-swaps-10257.html

Commodity swaps are derivatives; the value of a swap is tied to the underlying value of the commodity that it represents. Commodity swap contracts allow the two parties to hedge pricing by fixing the effective price of the asset being traded. Many commodity swaps are run through financial service companies that don't actually swap commodities – they just tie the security to the price of the commodity. Swaps may be behind the stable performance of the stock of a commodity-producing or commodity-using company that you own, or they could be a way for you to invest in the commodities market.

Commodity swaps have some built-in risks. First, the banks that set up swap contracts have fees that get built into the price. Second, the nature of a swap is that you give up risk while also giving up any upside; hedging locks a low price in when prices are high, but it also locks in a high price when prices are low. Swaps are also based on financial market prices that might not always track the cost of a product in the real market. The biggest risk in a swap is the risk that the party on the other side of the swap, sometimes referred to as the counterparty, defaults. For instance, if jet fuel prices went to $10 per gallon on a swap at$ 2.94, the owner of the floating leg would have to come up with $7.06 per gallon. If that party doesn't have the money, the swap could become worthless.

#
1. Fixed-Floating Swaps

A fixed-floating commodity swap is similar to interest rate swap contracts, but using commodities instead of bonds as the vehicle. The party that owns the fixed portion will make payments to the floating party when the commodity's value drops. When the value goes up, the floating party pays the fixed party the difference, allowing it to buy the commodity at the set price. These payments cancel out what it will cost to buy and sell the products in the open market at fluctuating prices.

#
2. Commodity For Interest Swaps

In a commodity for interest swap, the commodity gets swapped for fluctuations in interest rates. The swap contract's return is set up to create an equivalency between the commodity and the chosen interest rate. Given that interest rate increases can produce swings in the prices of some commodities, hedging against this risk can be useful for commodity producers and consumers.

#
3. Example

One commonly swapped commodity is jet fuel. Airlines frequently hedge fuel prices to provide them with some predictability in what it will cost them to fly their planes. For instance, as of July 23,2013, jet fuel sold for approximately $2.94 per gallon. If an airline took the fixed portion of a swap contract for one million gallons of jet fuel and the price dropped to $2.50, it would pay $440,000 to the holder of the floating portion. The airline could then buy a million gallons for $2.50, and, with the 44 cents it paid on the swap contract, it would end up at a price of $2.94 per gallon. If jet fuel went up to $4.00 per gallon, the floating-portion holder would pay the airline $1.06 million. The airline could then buy the fuel at $4 per gallon, subtract the swap payment it received, and end up with a net price of $2.94 per gallon.
 https://www.mercatusenergy.com/blog/bid/55277/energy-hedging-101-swaps

A swap is an agreement whereby a floating (or market) price is exchanged for a fixed price, over a specified period(s) of time. In addition to energy commodities, swaps can also be used to exchange a fixed price for a floating (or market) price. Swaps are referred to as such because the buyers and sellers of swaps are "swapping" cash flows.

Energy consumers utilize swaps in order to fix or lock in their energy costs, while energy producers utilize swaps in order to lock in or fix their revenues and/or cash flow. Likewise, energy professors, refiners, traders and marketers often use swaps to hedge their profit margins and inventories
(stocks) . Similarly, swaps are also utilized by companies seeking to hedge their exposure to foreign exchange, interest rate and agricultural commodity risks as well.

As an example of how one can utilize an energy swap, let's assume that you're a large fuel consuming company in Houston, who wants to fix or lock in the price of your anticipated ultra-low sulfur diesel fuel
(ULSD) cost for a specific month. For sake of simplicity, let's assume that you are looking to hedge $80\%$ of your anticipated, October fuel consumption, which equates to 100,000 gallons. In order to do accomplish this you could purchase an October Platts' Gulf Coast ULSD swap from one of your counterparties, often a financial institution or commodity trading firm. If you had purchased this swap yesterday at the prevailing market price, the price would have been
(approximately) $1.3166/gallon ($ 55.30/BBL).

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/d4c883dbcc228e4b56d1d398feb36573f3d553c560fc243d82f0578b17ca5083.jpg)

Figure 13.9: Gulf Coast ULSD Forward Curve

Now let's examine the results of this swap if Gulf Coast ULSD prices settle both higher and lower than your price of $1.3166/gallon.

In the first case, let's assume that fuel prices increase and that the average price for Gulf Coast ULSD, (as published in Platts' US Marketscan) for each business day in October, is $1.50/gallon. In this case, the swap would result in a hedging gain of $0.1834/gallon ($1.50 - $1.3166 = $0.1834) or $18,340. As a result, you would receive a payment of $18,340 from counterparty, which would o set the increase in your actual fuel cost of $1.50/gallon by the amount of your gain, $0.1834/gallon.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/677e572d885663ea311d44735b9ae9c9f0ec6ecb9d470a56c1b414d1be7dcd42.jpg)

Figure 13.10: Gulf Coast ULSD Swap

In the second case, let's assume that fuel prices decrease and that the average price for Gulf Coast ULSD, for each business day in October, is $1.20/gallon. In this case, the swap would result in a hedging loss of $0.1166/gallon ($1.3166 - $1.20 = $0.1166) or $11,660. In this case, you would have to pay your counterparty $11,660.

As the results of both outcomes indicate, by purchasing a ULSD swap for $1.3166/gallon, your net fuel cost will be $1.3166 regardless of whether ULSD prices settle higher or lower than $1.3166. If ULSD prices settle higher than $1.3166 you will have a gain on the swap which o sets the increase in your physical fuel price. On the other hand, if ULSD prices settle lower than $1.3166, you will have a loss on the swap which o sets the decreases in your physical fuel price.

While this example examined how swaps can be used to hedge diesel fuel price risk, the same methodology can also be used to hedge exposure to various energy commodities such as electricity, gasoline, jet fuel, natural gas, propane, etc. In addition, as previously mentioned, energy producers, refiners, traders and marketers can also utilize swaps to hedge their energy price risk. For example, if you are a crude oil producer looking to hedge your oil production, you could do so by selling crude oil swaps.

# 13.5.4 Basis Swap

Basis risk is the difference in price difference between a forward
(futures) market and a cash
(spot) market. In the energy markets there are three primary types of basis risk:

1. Locational Basis Risk
2. Product/Quality Basis Risk
3. Calendar Basis Risk

A basis swap is contract which provides the buyer or seller of the swap to hedge their exposure to basis risk.

So who is potentially exposed to basis risk? Nearly every energy consumer and producer: fuel end-users, fuel marketers, natural gas end-users, oil & gas producers, utility companies, etc.

As an example of basis risk and how it can be hedged, assume that you are a large airline whose contract with your jet fuel supplier states that they price you will pay for jet fuel is the average, between the low and the high price, of the U. S. Gulf Jet 54 Fuel pipeline price as published in Platts' Oilgram Price Report.

In addition, let's also assume that you want to hedge your July '11 - December '11 exposure to jet fuel prices by buying call options. In order to hedge this risk, you will need to purchase both NYMEX heating oil call options as well as Gulf Coast jet fuel vs. NYMEX heating oil jet fuel swap as the market for Gulf Coast jet fuel options isn't very liquid.

In order to explain the mechanics of structuring this hedge, assume that on March 31st you purchase a April '11 - December '11 NYMEX heating oil average price call option with a strike price of $3.00/gallon and a premium of $0.20/gallon for 10,000 (420,000 gallons) barrels each month, April through December. By purchasing this option, if the NYMEX heating oil prices average more than $3.00/gallon during any month, Apr-Dec, you will receive a return on this option. However, because the option is based on NYMEX heating oil and not Gulf Coast jet fuel you are now exposed to the basis risk between NYMEX heating oil futures and Gulf Coast jet fuel prices.

You can hedge your basis risk by purchasing a Gulf Coast jet fuel vs. NYMEX heating oil basis swap. Assume that on March 31st you also purchase the April - December basis swap at a price of $0.05/gallon. As such, you have locked in the basis between the U. S. Gulf Jet 54 Fuel pipeline price and the NYMEX heating oil futures at$ 0.05/gallon.

By purchase the NYMEX heating oil option and the Gulf Coast jet fuel vs. NYMEX heating oil basis swap you have now capped your April - December jet fuel price at $3.05/gallon or a net of $3.25/gallon including the $0.20 premium for the option.

To complete the example, let's assume that the front month NYMEX heating oil futures during the month of April average $3.50/gallon. If this is the case, you will receive a return on the option of $210,000 ($ 0.50/gallon X 420,000 gallons).

Let's also assume that the average, between the low and the high price, of the U. S. Gulf Jet 54 Fuel pipeline price as published in Platts' Oilgram Price Report, during the month of April is $3.60/gallon. Therefore, the basis for the month of April settles at $0.10/gallon ($3.60 - $3.50) and you receive a return on the basis swap of $0.05/gallon ($0.10 - $0.05).

In conclusion, due to the returns on the option and the swap of $0.50.gallon and $0.05/gallon, respectively, plus the upfront premium for the option of $0.20/gallon, your net cost for jet fuel purchased in April is $3.25/gallon.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/28bd959badcc7128fff3aecd30bde735748de7337ee07dd0522d7725d24ce9b5.jpg)

Figure 13.11: Energy Basis Swap Demonstration

While this example focused on hedging jet fuel basis risk, the same methodology would apply to end-user basis risk hedging for nearly every energy commodity i.e. diesel fuel, natural gas, etc. If you would like to learn more about hedging basis risk, check out our previous posts, The Basics of Basis and Basis Risk and Revisiting Energy Basis Risk which includes several additional examples. And if that post still isn't informative enough for you to be able to determine how to analyze and hedge your basis risk, you are to contact us or leave a comment below.

# 13.5.5 Option

There are two primary types of options, call options (also known as a caps) and put options (also knows as floors). A call option provides the buyer of a call option with protection against rising prices. Conversely, a put option provides the buyer of the put option with protection against declining prices.

Energy consumers often utilize call options to mitigate their exposure to rising energy prices, including but not limited to electricity, diesel fuel, gasoline, heating oil, propane, etc.

Energy producers often utilize put options to mitigate their exposure to declining energy prices, such as crude oil, natural gas and natural gas liquids.

As an example of how an end-user
(consumer) utilize a call option, let's assume that you're company has a large fleet and in order to ensure that your gasoline expenses do not exceed your budget, you need to cap the price of your anticipated cost of your gasoline consumption for a specific month. For sake of simplicity, let's assume that you are looking to hedge $100\%$ of your anticipated, May 2011 gasoline consumption, which equates to 125,000 gallons.

In order to do accomplish this you could purchase a May 2011, NYMEX RBOB gasoline, average price call option from an energy trading company. Furthermore, let's assume that you wanted to mitigate your exposure above $3.00 per gallon (excluding basis and taxes). If you had purchased this option last Friday, it would have cost you approximately 13 cents per gallon or $16,250 ($0.1300 × 125,000 gallons).

Now let's examine how this option would perform if gasoline prices both increase and decrease between now and the end of May.

In the first scenario, let's assume that fuel prices increase and that the average price for NYMEX RBOB gasoline futures for each business day in May, was $3.50/gallon. In this scenario, your hedge would result in a "gain" of 50 cents per gallon ($3.50 - $3.0000 = $0.50) or $62,500. As a result, you would receive a payment of $62,500 from the energy trading company, which would o set the increase in your actual fuel expenses by $0.50/gallon. However, given that you paid 13 cents per gallon, your net gain would be 37 cents per gallon or $46,250.

In the second scenario, let's assume that fuel prices decrease and that the average price for NYMEX RBOB gasoline futures for each business day in May, was $2.75/gallon. In this scenario, your hedge would be "out-of-the-money" and you would not receive a return on the option. However, given that gasoline futures prices have decreased, so should your actual gasoline costs at the pump. Last but not least, given that you paid 13 cents for the option, your actual net cost per gallon would need to account for the 13 cent premium cost.

As this example shows, purchasing a gasoline call option allows companies which consumes large quantities of gasoline to hedge their exposure against rising gasoline prices.

The following chart shows the "payo" of the $3.00 gasoline call option described above. As you can see, when gasoline futures are below $3.00 per gallon, the company's net price is equal to the gasoline futures plus 13 cents (the price of the option). Conversely, when the futures are above 13 cents per gallon, the company's net price remains $3.13 ($3.00 + $0.13).

# Collar

When we refer to complex energy hedging strategies, they need not be complex, they are simply more advanced than the basic hedging strategies we've addressed in recent weeks.

Having said that, there are times where energy producers, marketers and consumers feel the need to think outside of the box with respect to hedging. For large fuel consumers it could be an environment like the current environment where hedging is more important than ever yet option premiums can be prohibitively expensive. For crude oil producers, it could be also be an environment like the current environment, where the producers desires to hedge against potentially declining prices while retaining some ability to profit from potentially rising prices. In both situations, one hedging strategy that could be considered is known as a collar.

While it may sound complex, a consumer collar is simply the combination of buying a call option and selling a put option thus creating both a ceiling and a floor. Conversely, a producer collar is the combination of buying a put option and selling a call option. Often times, the options are structured in such a way that the premium of the purchased option is completely o set by the premium of the sold option, a structure known as a costless collar.

As an example, let's consider a NYMEX natural gas costless collar with a $4.50 ceiling (call option) and a $3.50 floor (put option). For a natural gas producer is protected against prices declining below $3.50 while there upside would be limited to $4.50. In between $3.50 and $4.50 the producer would be selling his production at the current market price. Conversely, a natural gas consumer would face the opposite situation, they would be protected against prices rising above $4.50 while their downside would be limited to $3.50. Likewise, in between $3.50 and $4.50, the consumer would be paying the current market price.

# 13.6 Swing Contract

In commodity and energy markets swing options allow the buyer to hedge against futures price fluctuations and to select its preferred delivery strategy within daily or periodic constraints, possibly fixed by observing quoted futures contracts.

# 13.6.1 Basic Contract

Here is a short description of the contract (from Tapio Behrndt).

Commodity Storages

Start date:
 today t

Expiry date: T

Exercise dates: daily from today until T

Storage start level: $\mathsf{L}_0$, i.e. today there might already be some gas/oil in storage which we buy

Storage end level: $L_{T}$, i.e. at expiry we need to return the storage with a certain amount of gas/oil filled in there

Storage cap: $C_{\text{max}}$, i.e. the storage capacity

Daily injection rate: $\mathsf{R_i}$, i.e. how much can you inject every day (mainly a technical constraints)

Injection efficiency:, i.e. not necessarily $100\%$ of what you inject will be available afterwards

Daily withdrawal rate: $\mathsf{R}_{\mathsf{w}}$, i.e. how much can you withdraw on a daily basis (mainly a technical constraint)

As I mentioned, I tried three different pricing approaches.

1) Linear programming

The pricing problem is fully linear problem with local constraints (daily injection/withdrawal) and global constraints (storage start/end level), so can be easily solved with a standard optimizer. I actually found this one in a book about energy risk mgmt.

2) Dynamic programming

Not much to say here, its very straightforward, no need to do the Monte-Carlo and Logsta -Schwartz pricing.

3) Reinforcement learning (Q-learning algorithm)

# Swing Contracts

These are very common in energy markets (gas and power) and more or less they are a nonlinear version of commodity storages. Typical contract terms are as follows:

Start date: today t

Expiry date: T

Exercise dates: daily from today until T

Maximum daily amount: $\mathbf{D}_{\mathrm{max}}$, i.e. the maximum amount you can buy on a daily basis

Minimum daily amount: $\mathbf{D}_{\mathrm{min}}$, i.e. the minimum amount that you have to buy on a daily basis

Maximum total amount: $\mathsf{N}_{\max}$, i.e. the maximum amount that you can buy until expiry

Minimum total amount: $\mathbf{N}_{\mathrm{min}}$, i.e. the minimum amount that you have to buy until expiry

So essentially this is a daily strip of a forward (notional $\mathsf{D}_{\min}$ ) and a call option with variable volume and then you have local constraints defined by $\mathsf{D}_{\min}$ and $\mathsf{D}_{\max}$ and global constraints defined by $\mathsf{N}_{\min}$ and $\mathsf{N}_{\max}$. The question is then to find the strike price $\mathsf{K}$ for this product which would price this contract at zero given today's state of the underlying market (or alternatively given todays market and a fixed strike $\mathsf{K}$, what is the price of this product).

To evaluate the swing contract, we continue to assume the existence of the risk-neutral measure. Under the risk-neutral pricing, the contract has the following value:

$$
\begin{array}{l} C (t, \underline {{T}}; \underline {{q}}) = \max _ {q _ {i}} \quad \begin{array}{l} n \\ i = 1 \end{array} P (t, T _ {i}) \hat {\mathbb {E}} _ {t} [ 1 _ {q _ {i} > 0} q _ {i} \max \left\{\left(T _ {i}, T _ {i} + 1 d\right) - K, 0 \right\} + 1 _ {q _ {i} < 0} q _ {i} S (T _ {i}) ] \\ = \max _ {\mathbf {q} _ {i}} \quad \begin{array}{l} n \\ i = 1 \end{array} \mathbf {P} (t, T _ {i}) \quad 1 _ {\mathbf {q} _ {i} > 0} \mathbf {q} _ {i} [ (t, T _ {i} + 1 d) ^ {+} - K ^ {-} ] + 1 _ {\mathbf {q} _ {i} < 0} \mathbf {q} _ {i} (t, T _ {i}) \tag {13.3} \\ \end{array}
$$
where is the risk-free discount factor (till time $\mathbf{u}$ ), $1_{\{\cdot\}}$ is the indicator function, $\underline{T} =  T_1, \dots, T_n $ are exercise dates; $\underline{q} =  q_1, \dots, q_n >$ are daily quantities (injection or withdrawal); $(t, u)$ is the futures price purchased at time $t$ and delivered at time $u$; and $\hat{\mathbb{E}}_t$ is the risk-neutral expectation. Finally, $_1$ and $_2$ are two probabilities. In other words, at each day $T_i$ ( $i = 1, \dots, n$ ), a quantity $N_i$ is decided to buy at a futures price $(T_i, T_i + 1d)$ which delivers at $T_i + 1d$ or the strike price $K$ whichever is smaller. (Given that this is a one-day futures contract, the futures price must be very close to the spot price $S(T_i)$.) In equation (1), we note that the risk-neutral of both future spot price and futures price are futures prices and if the futures price follows the Black model (1976):

$$
\frac {\mathrm {d} \quad (\mathrm {t}, \mathrm {T} _ {\mathrm {i}})}{(\mathrm {t}, \mathrm {T} _ {\mathrm {i}})} = \quad \mathrm {W} (\mathrm {t})
$$ then the two probabilities are normal:

$$
\mathbf {\Lambda} _ {i} ^ {\pm} = \mathbf {N} \quad \frac {\ln (t, T _ {i}) - \ln K}{T _ {i} - t} \pm \frac {1}{2} ^ {2} (T _ {i} - t)
$$ where $\mathbf{N}(\cdot)$ is the standard normal probability. Note that equation (1) does not have a closed form solution (although the price option does). Equation (1) needs to be solved for a series of quantities (positive is buy and negative is sell/consume). Given that the objective function is linear (both $(t, T_i + 1d)_{i}^{+} - K_{i}^{-}$ and $(t, T_i)$ are known), the problem can be solved via linear programming.

$$
\max _ {\mathbf {q} _ {i}} \quad \begin{array}{l} n \\ i = 1 \end{array} P (t, T _ {i}) \left\{1 _ {\mathbf {q} _ {i} > 0} \mathbf {q} _ {i} \mathbf {a} _ {i} + 1 _ {\mathbf {q} _ {i} < 0} \mathbf {q} _ {i} \mathbf {b} _ {i}) \right\}
$$ subject to:

$$
1 < \mathbf {q} _ {\mathrm {i}} < \mathbf {u}
$$

$$
L < \quad \begin{array}{c} n \\ i = 1 \end{array} q _ {i} < U
$$ where I and u are daily upper and lower limits and Z and U are all-time upper and lower limits and

$$ a _ {i} = (t, T _ {i} + 1 d) \quad_ {i} ^ {+} - K \quad_ {i} ^ {-}
$$

$$
\mathbf {b} _ {\mathrm {i}} = \left(\mathbf {t}, \mathbf {T} _ {\mathrm {i}}\right)
$$

This is a linear programming problem that can be easily solved in Excel using the Solver.

# 13.6.2 Random Quantities

When the quantities are random (i.e. determined at each date), then it becomes a function of the realized futures price at each date. (6)

$$
\mathbf {C} \left(\mathbf {t}, \underline {{\mathbf {T}}}; \underline {{\mathbf {q}}}\right) = \max _ {\mathbf {q} _ {i}} \quad \begin{array}{l} n \\ i = 1 \end{array} \mathbf {P} \left(\mathbf {t}, \mathbf {T} _ {i}\right) \hat {\mathbb {E}} _ {\mathbf {t}} \left[ 1 _ {\tilde {\mathbf {q}} _ {i} > 0} \tilde {\mathbf {q}} _ {i} \max \left\{\quad \left(\mathbf {T} _ {i}, \mathbf {T} _ {i} + 1 d\right) - \mathbf {K}, 0 \right\} + 1 _ {\tilde {\mathbf {q}} _ {i} < 0} \tilde {\mathbf {q}} _ {i} \mathbf {S} \left(\mathbf {T} _ {i}\right) \right]
$$

Now the daily quantity $\tilde{\mathbf{q}}_{\mathrm{i}} = \mathbf{f}((T_{\mathrm{i}}, T_{\mathrm{i}} + 1d), S(T_{\mathrm{i}}))$ is random and is a function of the futures price $(T_{\mathrm{i}}, T_{\mathrm{i}} + 1d)$ and the spot price $S(T_{\mathrm{i}})$. This implies that $\tilde{\mathbf{q}}_{\mathrm{i}}$ and $(T_{\mathrm{i}}, T_{\mathrm{i}} + 1d)$ and $S(T_{\mathrm{i}})$ are correlated and then the expected value cannot be solved in a closed form solution.

As a result, a dynamic programming approach must be adopted and the swing contract becomes similar to an American option problem. It should be noted that the swing contract is also path dependent, making it impossible to use any lattice to evaluate. The possible choices are:

1. Longsta -Schwartz
2. PSO
3. Q-Learning
4. dynamic programming

<Give an example>

# 13.6.3 Extensions (Liquidity And Random Interest Rates)

Now the problem becomes more complex:

$$
\begin{array}{l} \mathbf {C} (\mathbf {t}, \mathbf {\Sigma}, \mathbf {\Sigma}; \mathbf {\Sigma}, \mathbf {\Sigma}; \mathbf {\Sigma}) \\ = \max _ {\mathbf {q} _ {i}} \quad \begin{array}{l} n \\ i = 1 \end{array} \hat {\mathbb {E}} _ {t} \exp - \begin{array}{l} T _ {i} \\ t \end{array} r
(u) du [ 1 _ {\tilde {q} _ {i} > 0} \tilde {q} _ {i} \max \left\{\left(T _ {i}, T _ {i} + 1 d\right) - K, 0 \right\} + 1 _ {\tilde {q} _ {i} < 0} \tilde {q} _ {i} S (T _ {i}) ] \\ = \max _ {\mathbf {q} _ {i}} \quad \begin{array}{l} n \\ i = 1 \end{array} \mathbf {P} (t, T _ {i}) \tilde {\mathbb {E}} _ {t} ^ {(T _ {i})} [ 1 _ {\tilde {\mathbf {q}} _ {i} > 0} \tilde {\mathbf {q}} _ {i} \max \left\{\quad \left(T _ {i}, T _ {i} + 1 d\right) - K, 0 \right\} + 1 _ {\tilde {\mathbf {q}} _ {i} < 0} \tilde {\mathbf {q}} _ {i} S (T _ {i}) ] \\ \end{array}
$$ where $\tilde{\mathbb{E}}_t^{(T_i)}$ is the $T_{i}$ -forward expectation. With non-stochastic $q_{i}$, there is a closed-form solution to the price option (Chen (1992)) and LP can still solve the problem. In other words, as long as the optimal quantities are not random, stochastic interest rates do not add too much complexity to the problem. If quantities are random, then, there is no easy solution

# 13.7 Water Futures

Bloomberg News:

California Water Futures Begin Trading Amid Fear of Scarcity

By Kim Chipman

December 6,2020,5:00 PM EST Updated on December 7,2020,3:58 PM EST

Water joined gold, oil and other commodities traded on Wall Street, highlighting worries that the life-sustaining natural resource may become scarce across more of the world.

Farmers, hedge funds and municipalities alike are now able to hedge against – or bet on – future water availability in California, the biggest U. S. agriculture market and world's fifth-largest economy. CME Group Inc.'s January 2021 contract, linked to California's $1.1 billion spot water market, last traded Monday at 496 index points, equal to$ 496 per acre-foot.

The contracts, a first of their kind in the U. S., were announced in September as heat and wildfires ravaged the U. S. West Coast and as California was emerging from an eight-year drought. They are meant to serve both as a hedge for big water consumers, such as almond farmers and electric utilities, against water prices fluctuations as well a scarcity gauge for investors worldwide.

"Climate change, droughts, population growth, and pollution are likely to make water scarcity issues and pricing a hot topic for years to come," said RBC Capital Markets managing director and analyst Deane Dray. "We are definitely going to watch how this new water futures contract develops."

# About The Nqh20 Index: Reflecting Water Prices

The Nasdaq Veles California Water Index (ticket symbol: NQH2O) tracks the price of water rights leases and sales transactions across the five largest and most actively traded regions in California. Water entitlement transactions from the surface water market and four adjudicated groundwater basins –the Central Basin, the Chino Basin, the Main San Gabriel Basin, and the Mojave Basin Alto Subarea are included in the index. The value of the index reflects the volume-weighted average price of water, at the source, excluding conveyance costs and water losses in the underlying markets after adjusting for idiosyncratic pricing factors specific to each of the eligible markets and transaction types. NQH20 is valued in US dollars per acre foot (the volume of water required to cover one acre of land (43,560 square feet) to a depth of one foot, equivalent to 325,851 gallons)

Contract Specifications

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
CONTRACT NAME & Nasdaq Years California Water Index Futures \\ \hline
PRODUCT CODE & H20 \\ \hline
CONTRACT UNIT & 10 core fees x NCHQO Index \\ \hline
PRICE QUotation & US dollars per core foot \\ \hline
CONTRACT MONTHS & Eight consecutive quarterly contracts (Mar. Jul. Sept. Dec) plus nearest two serial months \\ \hline
MINIMUM PRICE FLOUDANCE & Outright: $1.00 per core foot equal to $10.00 per contract
Calendar spread: $0.25 per core foot equal to $1.50 per contract \\ \hline
FINDING HOURS AND VENTURE & Global Sundry - Friday 5:00 p.m. - Friday 5:45 p.m. - Friday 5:45 p.m. with a 15-minute maintenance window Monday - Thursday from 5:45 p.m. to 6:00 p.m. CT \\ \hline
SETTLEMENT METHOD & Financially settled \\ \hline
BLOCK TRADE MINIMUM THRESHOLD & 25 CPIRCHETS \\ \hline
LAST FLOoding Day & Business day prior to Final Settlement Day \\ \hline
FINAL SETTLEMENT DAY & Third Wednesday of the contract month if a CRE business day, otherwise the next business day \\ \hline
FINAL SETTLEMENT PRICE & Closing NCHQO price on Final Settlement Day rounded to the nearest $0.01 \\ \hline
\end{tabular}
\end{document}
```

Figure 13.12: CME Water Index Futures

# Chapter 14

# Interest Rate Models

# 14.1 Introduction

In this chapter, we review the most popular and important models for the term structure of interest rates and their derivatives. We begin with the classical Vasicek and Cox-Ingersoll models which are known as "equilibrium" or "factor-based" models. These models formulate the fundamental risk factors (via stochastic processes) that drive the term structure (of zero coupon bonds). These models have closed-form solutions to basic interest rate derivative prices such as options and futures.

Then, we review the so-called "no-arbitrage" models. These models take the current market term structure as given and build a lattice (or Monte Carlo simulations) that is consistent with the market information. We begin with the simplest Ho-Lee model. Then we introduce the Heath-Jarrow-Morton family of models. Finally, we present the most recent shifted LIBOR market model by Chen, Hsieh, and Huang. This model calibrates to the whole ATM swaption surface.

# 14.2 Vasicek And Cir Models

The Vasicek model assumes a Gaussian, mean-reverting (Ornstein-Uhlenbeck) process for the instantaneous short rate:

$$
\begin{array}{l} \mathbf {dr} = \left( \begin{array}{ll} (\boldsymbol {\mu} - \mathbf {r}) \mathbf {dt} + & \mathbf {d W} \\ (a _ {1}, a _ {2}) \hat {\mathbf {u}} & \hat {\mathbf {u}} \hat {\mathbf {t}} \end{array} \right. \tag {14.1} \\ = (\hat {\mu} - r) dt + d \hat {W} \\ \end{array}
$$ where, as shown in the previous chapter that $\hat{\mu} = \mu -\ldots$

The Vasicek model for the discount factor (zero coupon bond price):

$$
\begin{array}{l} P (t, T) = \hat {\mathbb {E}} _ {t} \exp - r
(s) ds \tag {14.2} \\ = \mathrm {e} ^ {- r (\mathrm {t}) F (\mathrm {t}, T) - G (\mathrm {t}, T)} \\ \end{array}
$$ where

$$
\mathbf {F} (t, T) = \frac {1 - e ^ {- (T - t)}}{}
$$

$$
G (t, T) = \mu - \frac {2}{2 ^ {2}} - \quad (T - t - F (t, T)) + \frac {^ 2 F (t, T) ^ {2}}{4}
$$

The CIR model is a mean-reverting squared-root process:

$$
\begin{array}{l} \mathrm {d} \mathbf {r} = (\boldsymbol {\mu} - \mathbf {r}) \mathrm {d} t + \quad \bar {\mathbf {r}} \mathrm {d} W \tag {14.3} \\ = \hat {\mathbf {\mu}} (\hat {\mathbf {p}} - \mathbf {r}) \mathbf {d} \mathbf {t} + \quad \bar {\mathbf {r}} d \hat {\mathbf {W}} \\ \end{array}
$$ where $\hat{\mathbf{\mu}} = +\mathbf{\mu}$ and $\hat{\boldsymbol{\mu}} = \frac{\mu}{+}$ are the risk-neutral parameters.

The zero coupon bond formula is:

$$
\begin{array}{l} P (t, T) = \hat {\mathbb {E}} _ {t} \exp - r
(s) ds \tag {14.4} \\ = \mathbf {A} (\mathbf {t}, \mathbf {T}) \mathrm {e} ^ {- \mathbf {r} (\mathbf {t}) \mathbf {B} (\mathbf {t}, \mathbf {T})} \\ \end{array}
$$ where

$$
A (t, T) = \frac {2 e ^ {(+ +) (T - t) / 2}}{(+ +)} \left(e ^ {(T - t)} - 1\right) + 2 ^ {2 \mu / 2}
$$

$$
\begin{array}{l} B (t, T) = \frac {2 e ^ {(T - t)} - 1}{(+ + ) (e ^ {(T - t)} - 1) + 2} \\ = \overline {{\left( \begin{array}{ll} + & \end{array} \right) ^ {2} + 2}} ^ {2} \\ \end{array}
$$

# 14.3 Ho-Lee Model

The Ho-Lee model is a "forward rate" model and hence belongs to the HJM family (although the Ho-Lee model was published 6 years prior to the HJM model). However, the original version of the Ho-Lee model is a "forward price" model. It was Phil Dybvig who then extended the Ho-Lee model to continuous time, forward rate model in
1989. Define the zero-coupon bond price as $\mathbf{P}(\mathbf{i},\mathbf{n},\mathbf{j})$ where $\mathbf{i}$ is current time, $\mathbf{n}$ is maturity time, and $\mathbf{j}$ represents state of economy. The Ho-Lee model is a simple formula as follows:

$$
P (i, i + k, j) = \frac {P (i - 1, i + k, j)}{P (i - 1, i, j)} d
(k) \tag {14.5}
$$

$$
P (i, i + k, j + 1) = \frac {P (i - 1, i + k, j)}{P (i - 1, i, j)} u
(k) $$ where

$$ u
(k) = \frac {1}{p + (1 - p) ^ {k}} \tag {14.6}
$$

$$ d
(k) = \frac {p + (1 - p) ^ {k}}{p + (1 - p) ^ {k}}
$$ and $\mathfrak{p}$ is the risk-neutral probability and is the "volatility" parameter (that is, itself is not volatility but it is directly related to volatility.) As we can see, when $= 1$, then $\mathbf{u}(\mathbf{k}) = \mathbf{d}(\mathbf{k})$ for all $\mathbf{k}$. Then there is no volatility. To maintain $\mathbf{u}(\mathbf{k}) > \mathbf{d}(\mathbf{k}) > 0$, it must be that $0 < \ldots < 1$. As becomes small the volatility becomes large.

As a demonstration, we create a hypothetical four-year yield curve with annual time intervals as follows. The yields are observable in the market and we convert them into discount factors (present value of $1).

```latex
\begin{document}
\begin{tabular}{|c|c|c|}
\hline
Yield Curve & & \\ \hline time to maturity & discount factor & yield to maturity \\ \hline
1 & 0.9524 & 0.049979 \\ \hline
2 & 0.8900 & 0.059998 \\ \hline
3 & 0.8278 & 0.065021 \\ \hline
4 & 0.7686 & 0.068009 \\ \hline
\end{tabular}
\end{document}
```

Given the current term structure of discount factors, we then can compute the forward prices,

$$
\begin{array}{l} 0.934481 = \frac {0.8900}{0.9524} \\ 0.869173 = \frac {0.8278}{0.9524} \\ 0.807014 = \frac {0.7686}{0.9524} \end{array}
$$

Note that forward rates are returns of forward prices. For example:

$$
\mathbf {f} _ {0,1,2} = \frac {1}{0.934481} - 1 = \frac {(1 + 5.9998 \%) ^ {2}}{1 + 4.9979 \%} - 1 = 7.0112 \%
$$

$$
\mathbf {f} _ {0,1,3} = \frac {1}{0.869173} - 1 = \frac {(1 + 6.5021 \%) ^ {3}}{1 + 4.9979 \%} - 1 = 7.2623
$$

$$
\mathbf {f} _ {0,1,4} = ^ {3} \frac {1}{0.807014} - 1 = ^ {3} \frac {(1 + 6.8009 \%) ^ {3}}{1 + 4.9979 \%} - 1 = 7.4088 \%
$$

Now we shall introduce the Ho-Lee binomial model. Similar to the equity binomial model (i.e. Cox-Ross-Rubinstein, or the CRR model) where the stock price goes up and down with $\mathbf{u} = \mathbf{e}^{-\mathbf{t}}$ and $\mathbf{d} = 1 / \mathbf{u}$ where $\mathbf{d}$ is the volatility of the stock returns, yield curve here goes up or down with equation (14.6).

Di erent from the equity binomial model, equation (14.6) contains two parameters: $\mathfrak{p}$ and $\mathfrak{c}$, representing up risk-neutral probability and "volatility" respectively. It is not actual volatility but, as we can see from equation (14.6) that it plays the role of volatility. The higher is $\mathfrak{c}$, the closer is $\mathfrak{u}(\mathbf{k})$ to $\mathsf{d}(\mathbf{k})$, and hence the smaller is the volatility. In an extreme case where $\mathsf{d}(\mathbf{k}) = 1$, $\mathfrak{u}(\mathbf{k}) = \mathsf{d}(\mathbf{k}) = 1$, there is no volatility and uncertainty disappears. Reversely, the lower is $\mathfrak{c}$, the more far apart is $\mathfrak{u}(\mathbf{k})$ from $\mathsf{d}(\mathbf{k})$ and the volatility is high. The volatility reaches the highest as
0. In our example, we set $\mathbf{p} = 0.6$ and $\mathbf{\mu} = 0.9$ and we have:

```latex
\begin{document}
\begin{tabular}{|c|c|c|}
\hline
Ho-Lee Pert Funcs & & \\ \hline k & d(k) & u(k) \\ \hline
0 & 1.000000 & 1.000000 \\ \hline
1 & 0.937500 & 1.041667 \\ \hline
2 & 0.876623 & 1.082251 \\ \hline
3 & 0.817631 & 1.121579 \\ \hline
4 & 0.760749 & 1.159501 \\ \hline
\end{tabular}
\end{document}
```

In the HL model, the next period's up term structure and down term structure are computed by applying the proper $u$ and $d$ on the forward price. For convenience, we introduce the following labeling system. $\mathsf{P}(\mathsf{i},\mathsf{n},\mathsf{j})$ represents the discount factor value at current time $\mathbf{i}$, for maturity time $\mathsf{n}$, and in state $\mathbf{j}$. For convenience, we also label the lowest state 0 and 1,2,... as we go up. So for today, we have four discount factors $\mathsf{P}(0,1,0), \mathsf{P}(0,2,0), \mathsf{P}(0,3,0), \mathsf{P}(0,4,0)$ which are 0.9524,0.8900,0.8278, and 0.7686 respectively. For next year, we apply the forward prices computed above and multiply them by corresponding u's and d's. For example,

$$
0.9734 = \underline {{\mathbf {P} (1,2,1)}} = \frac {\mathbf {P} (0,2,0)}{\mathbf {P} (0,1,0)} \mathbf {u} (1) = \frac {0.8900}{0.9524} \times 1.041667
$$

$$
0.8761 = \underset {\text {down}} {\mathsf {P} (1,2,0)} = \frac {\mathsf {P} (0,2,0)}{\mathsf {P} (0,1,0)} \mathsf {d} (1) = \frac {0.8900}{0.9524} \times 0.9375
$$

$$
0.9407 = \underline {{\mathbf {P} (1,3,1)}} = \frac {\mathbf {P} (0,3,0)}{\mathbf {P} (0,1,0)} \mathbf {u} (2) = \frac {0.8278}{0.9524} \times 1.082251
$$

$$
0.7619 = \underline {{\mathbf {P} (1,3,0)}} = \frac {\mathbf {P} (0,3,0)}{\mathbf {P} (0,1,0)} \mathbf {d} (2) = \frac {0.8278}{0.9524} \times 0.876623
$$

$$
0.9051 = \underline {{\mathbf {P} (1,4,1)}} = \frac {\mathbf {P} (0,4,0)}{\mathbf {P} (0,1,0)} \mathbf {u} (3) = \frac {0.8278}{0.9524} \times 1.121579
$$

$$
0.6598 = \underline {{\mathbf {P} (1,4,0)}} = \frac {\mathbf {P} (0,4,0)}{\mathbf {P} (0,1,0)} \mathbf {d} (3) = \frac {0.7686}{0.9524} \times 0.817631
$$

Put in the table,

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|}
\hline
Year = 1 & & & & & & \\ \hline current time & maturity time & state 0 & state 1 & state 2 & state 3 & state 4 \\ \hline
1 & 1 & 1 & 1 & & & \\ \hline
 & 2 & 0.8761 & 0.9734 & & & \\ \hline
 & 3 & 0.7619 & 0.9407 & & & \\ \hline
 & 4 & 0.6598 & 0.9051 & & & \\ \hline
\end{tabular}
\end{document}
```

Now we have two term structures of the next year (time 1). The task continues to time
2. For each term structure in time 1, we shall compute two term structures in time 2 (up and down) by applying the same principle. The up and down term structures of the left are:

$$
0.9060 = \mathrm {P} (2,3,1) = \frac {\mathrm {P} (1,3,0)}{\mathrm {P} (1,2,0)} \mathrm {u} (1) = \frac {0.7619}{0.8761} \times 1.041667
$$

$$
0.8154 = \mathbf {P} (2,3,0) = \frac {\mathbf {P} (1,3,0)}{\mathbf {P} (1,2,0)} \mathbf {d} (1) = \frac {0.7619}{0.8761} \times 0.9375
$$

$$
0.8151 = \mathbf {P} (2,4,1) = \frac {\mathbf {P} (1,4,0)}{\mathbf {P} (1,2,0)} \mathbf {u} (2) = \frac {0.6598}{0.8761} \times 1.082251
$$

$$
0.6603 = \mathbf {P} (2,4,0) = \frac {\mathbf {P} (1,4,0)}{\mathbf {P} (1,2,0)} \mathbf {d} (2) = \frac {0.6598}{0.8761} \times 0.876623
$$ and of the right are:

$$
1.0066 = \mathbf {P} (2,3,2) = \frac {\mathbf {P} (1,3,1)}{\mathbf {P} (1,2,1)} \mathbf {u} (1) = \frac {0.9407}{0.9734} \times 1.041667
$$

$$
0.9060 = \mathbf {P} (2,3,1) = \frac {\mathbf {P} (1,3,1)}{\mathbf {P} (1,2,1)} \mathbf {d} (1) = \frac {0.9407}{0.9734} \times 0.9375
$$

$$
1.0063 = \mathrm {P} (2,4,2) = \frac {\mathrm {P} (1,4,1)}{\mathrm {P} (1,2,1)} \mathrm {u} (2) = \frac {0.9051}{0.9734} \times 1.082251
$$

$$
0.8151 = \mathrm {P} (2,4,1) = \frac {\mathrm {P} (1,4,1)}{\mathrm {P} (1,2,1)} \mathrm {d} (2) = \frac {0.9051}{0.9734} \times 0.876623
$$ and put in table,

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|}
\hline
Year = 2 & & & & & & \\ \hline current time & maturity time & state 0 & state 1 & state 2 & state 3 & state 4 \\ \hline
2 & 2 & 1 & 1 & 1 & & \\ \hline
 & 3 & 0.8154 & 0.9060 & 1.0066 & & \\ \hline
 & 4 & 0.6603 & 0.8151 & 1.0063 & & \\ \hline
\end{tabular}
\end{document}
```

It can be seen that from the left (applying $\mathbf{u}(\mathbf{k})$ ) we arrive at $\mathsf{P}(2,3,1) = 0.9060$ which is the same from the right (applying $\mathsf{d}(\mathbf{k})$ ). This also applies to $\mathsf{P}(2,4,1) = 0.8151$. This is known as the re-combination assumption. Note that this assumption must be maintained or the binomial model will grow exponentially.

While simple, in this example we see something peculiar about the HL model here. Note that in the last column (state 2) the bond prices are both greater than $1 (1.0066 \text{ and } 1.0063)$. This is peculiar because these are zero-coupon bonds whose prices must be strictly less than
1. Prices greater than 1 implies that interest rates are negative. In other words, for the one-year bond (maturity time 3), we must pay

$1.0066 now and receive$ 1 in a year. And for the two-year bond, we must pay $1.0063 and receive the principal$ 1 back in two years.

In an arbitrage-free world, this is impossible. One would rather keep cash than buying zero-coupon bonds and these bonds will find no buyers. Hence such prices are not realistic and do not exist in the real world. Unfortunately this is the assumption adopted by the HL model. The HL model adopt normally distributed interest rates, just like the Vasicek model and interest rates can reach negative values.

In the next section, we discuss the Black-Derman-Toy model where interest rates are log-normally distributed. Then the problem of negative interest rates is prevented.

Continuing this process going forward, we can derive the complete the 4-year table for the Ho-Lee model:

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|}
\hline
Complete Ho-Lee Model & & & & & & \\ \hline current time & maturity time & state 0 & state 1 & state 2 & state 3 & state 4 \\ \hline
0 & 0 & 1 & & & & \\ \hline
 & 1 & 0.9524 & & & & \\ \hline
 & 2 & 0.89 & & & & \\ \hline
 & 3 & 0.8278 & & & & \\ \hline
 & 4 & 0.7686 & & & & \\ \hline
1 & 1 & 1 & 1 & & & \\ \hline
 & 2 & 0.8761 & 0.9734 & & & \\ \hline
 & 3 & 0.7619 & 0.9407 & & & \\ \hline
 & 4 & 0.6598 & 0.9051 & & & \\ \hline
2 & 2 & 1 & 1 & 1 & & \\ \hline
 & 3 & 0.8154 & 0.906 & 1.0066 & & \\ \hline
 & 4 & 0.6603 & 0.8151 & 1.0063 & & \\ \hline
3 & 3 & 1 & 1 & 1 & 1 & \\ \hline
 & 4 & 0.7592 & 0.8435 & 0.9372 & 1.0414 & \\ \hline
4 & 4 & 1 & 1 & 1 & 1 & 1 \\ \hline
\end{tabular}
\end{document}
```

This concludes the discrete example. Again, the problem of negative interest rates becomes more severe as the model goes to year
3. The zero-coupon bond price is $1.0414.

Once the model of the interest rates is completed, we can then evaluate derivatives easily. Options, futures, swaps, and other complex interest rate derivatives can be evaluated with the model. Readers who are familiar with the CRR binomial model should find no problem applying the HL model to various derivatives.

# 14.4 Black-Derman-Toy Model

The material in this section is taken from Analysis of Fixed Income (where it has the most updated version). Like the Ho-Lee model, the Black-Derman-Toy
(BDT) model is a binomial model.

# 14.4.1 Tree (Log Normal)

Standard binomial model in equity looks as follows (where a chosen interest rate $r$, usually the instantaneous rate, is treated like a "stock"):

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/c950e791e12cc932fe00e54b0a03cf04c3be6bf895c337be706970ff0733f4de.jpg)

Figure 14.1: Two-period BDT Model where $\mathbf{r}_0$ is the current (time 0) interest rate and $\mathbf{r}_{ij}$ represents the interest rate at time period $i$ and state $j$, and

$$
\begin{array}{l} \mathbf {u} = \mathbf {e} ^ {- \mathbf {\Gamma} _ {\mathbf {t}}} \\ \mathbf {d} = \mathbf {e} ^ {- \mathbf {\Gamma} _ {\mathbf {\Gamma} _ {\mathbf {t}}}} \end{array}
$$

# 14.4.2 Modified Tree (Since Ud = 1)

In order to fit to the current yield curve, the standard binomial tree needs to be modified. The key change is to allow for the flexibility in each period in setting a "mean rate", $\bar{r}_i$. In the standard binomial tree, the up and down are perturbations around $r_0$. In the modified binomial model that can fit to the current yield curve, $r_0$ is replaced by a series of other values: $\bar{r}_1, \bar{r}_2, \dots, \bar{r}_n$ in various periods, as Figure 14.2 shows.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/c21b4d20a902d7e3d24223d01092ac7abc68be70428a48c5e92f675783fa9170.jpg)

Figure 14.2: BDT Tree

Hence, for every period $i$, there are always two unknowns - $\bar{\mathbf{r}}_i$ and $\mathbf{u}_i$. Recall the standard binomial model where there are two equations in each time period - mean and variance. Hence, with two equations and two unknowns, there is a unique solution to $\bar{\mathbf{r}}_i$ and $\mathbf{u}_i$. Then all interest rates at period $i$, i.e. $\mathbf{r}_{ij}$ where $j$ represents the state, can be obtained, as shown in the Figure 14.2.

The following example is taken from the original paper published in 1989 by Black, Derman, and Toy in Financial Analyst Journal. The hyperthetical market inputs are yield and volatility (yield vol) curves as follows:

```latex
\begin{document}
\begin{tabular}{|c|c|c|}
\hline
Yield Curve & & \\ \hline maturity & yield & volatility \\ \hline
1 & 10% & 20% \\ \hline
2 & 11 & 19 \\ \hline
3 & 12 & 18 \\ \hline
4 & 12.5 & 17 \\ \hline
5 & 13 & 16 \\ \hline
\end{tabular}
\end{document}
```

Note that yield vols are annualized. The yield curve implies the following discount factors:

$$
\begin{array}{l} D (0,1) = \frac {1}{1.1} = 0.9091 \\ D (0,2) = \frac {1}{1.11 ^ {2}} = 0.8116 \\ D (0,3) = \frac {1}{1.12 ^ {3}} = 0.7118 \\ D (0,4) = \frac {1}{1.125 ^ {4}} = 0.6243 \\ D (0,5) = \frac {1}{1.13 ^ {5}} = 0.5428 \\ \end{array}
$$

Figure 14.3 depicts the lattice structure for the model. D(0,1) is a one-year debt. Hence at time 1, it expires and pays the face value ( $1). Today, its market value should be the present value which is$ 1 discounted at the one-year rate, which is 10% as given in the table. Similarly, the two-year bond will pay $1 at time 2 and we know its market value today is the present value at 11%. Hence, we need to solve for the two prices at time 1.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/e5e30245517de6ee86616d18ea2af1da0113a1be80406d0bdc78c7156c83c338.jpg)

Figure 14.3: Bond Price Lattice

Assume probabilities to be $\frac{1}{2}$ and $\frac{1}{2}$. Then it must be the case that:

$$
\mathbf {D} (0,2) = \frac {1}{2} [ \mathbf {D} (1,2,1) + \mathbf {D} (1,2,0) ] \mathbf {D} (0,1) \tag {14.7}
$$ that is

$$
0.8116 = \frac {1}{2} \frac {1}{1 + r _ {1 1}} + \frac {1}{1 + r _ {1 0}} \times 0.9091
$$

Two unknowns cannot be solved with one equation. The other equation we need comes from the volatility. In the standard binomial model, we get:

$$
= \frac {\ln \frac {u}{d}}{2} = \frac {\ln \frac {r _ {1 1}}{r _ {1 0}}}{2} = 0.19 \tag {14.8}
$$

Hence we solve for $\mathbf{r}_{11}$ and $\mathbf{r}_{10}$ as $14.32\%$ and $9.79\%$ respectively. Also, $\bar{\mathbf{r}} = 11.84\%$ and $\mathbf{u} = 1.209$ (or $\mathbf{d} = 1 / \mathbf{u} = 0.827$ ).

The lattice is now extended to include one more period, as demonstrated as follows:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/ab04211bb9679565d9c83ba9aa268f35c60e1ddb4e8043d2c617b9ce183a9c67.jpg)

Figure 14.4: Bond Price Lattice

To solve for the third period, we need the following two equations:

$$
\mathbf {D} (0,3) = \frac {1}{2} [ \mathbf {D} (1,3,1) + \mathbf {D} (1,3,0) ] \mathbf {D} (0,1) = 0.7118 \tag {14.9}
$$ and

$$
= \frac {1}{2} \ln \frac {\frac {1}{\overline {{D (1,3,1)}}} - 1}{\frac {1}{\overline {{D (1,3,0)}}} - 1} = 0.18 \tag {14.10}
$$ where

$$
\mathbf {D} (1,3,1) = \frac {1}{2} \left\{\mathbf {D} (2,3,2) + \mathbf {D} (2,3,1) \right\} \mathbf {D} (1,2,1)
$$

$$
\mathbf {D} (1,3,0) = 1 / _ {2} \{\mathbf {D} (2,3,1) + \mathbf {D} (2,3,0) \} \mathbf {D} (1,2,0)
$$ and in turn,

$$
D (2,3,2) = \frac {1}{1 + \bar {r} u ^ {2}}
$$

$$
D (2,3,1) = \frac {1}{1 + \bar {r} u}
$$

$$
D (2,3,0) = \frac {1}{1 + \bar {r} / u ^ {2}}
$$

Again, two equations and two unknowns solve for $\bar{\mathbf{r}}$ and $\mathbf{u}$ to be $13.77\%$ and $1.1877\%$ respectively. As a result, the short rates in period 2 are $\mathbf{r}_{22} = 19.42\%$, $\mathbf{r}_{21} = 13.77\%$, and $\mathbf{r}_{20} = 9.76\%$. Continuing this process, we can arrive at all the short rates as follows:

$$
\mathbf {r} _ {33} = 21.79 \%; \mathbf {r} _ {32} = 16.06 \%; \mathbf {r} _ {31} = 11.83 \%; \mathbf {r} _ {30} = 8.72 \%
$$

$$
\mathbf{r}_{44} = 25.52\%; \mathbf{r}_{43} = 19.48\%; \mathbf{r}_{42} = 14.86\%; \mathbf{r}_{41} = 11.34\%; \mathbf{r}_{40} = 8.65\%
$$

# 14.4.3 The Continuous Time Limit

As in the H-Lee model, we can work out the continuous time limit of the Black-Derman-Toy model as follows:

$$ d \ln r =
(t) + \frac {(t)}{(t)} \ln rdt +
(t) d W
(t) \tag {14.11}
$$ where
(t) is a time-dependent function (as in the Ho-Lee model) that is used to fit the yield curve. Furthermore, unlike the Ho-Lee model, the volatility function
(t) is also time dependent, which is of course to fit the volatility curve.

# 14.4.4 Black-Karasinski Model

The Black-Karasinski
(BK) model is an extension to the BDT model. The BK model is to include mean reversion in the drift term:

$$ d \ln r =
(t)
(t) - \ln r) dt +
(t) d W
(t) \tag {14.12}
$$

This can be readily compared to the Hull-White model (shown separately in the next subsection) that is extensions of the Vasicek
(normal) and the CIR (square-root) models.

# 14.5 Hull-White Model

The Hull-White model is to make fixed parameters in the Vasicek (first equation) and the CIR model (second equation) time dependent.

$$
\begin{array}{l} \mathrm {d} \mathbf {r} = (\mathbf {t}) (\mathbf {\Delta} (\mathbf {t}) - \mathbf {r}) \mathrm {d} \mathbf {t} + (\mathbf {t}) \mathrm {d} \mathbf {W} (\mathbf {t}) \\ \mathrm {d} \mathbf {r} =
(t)
(t) - r) \mathrm {d} t +
(t) \bar {r} \mathrm {d} W
(t) \tag {14.13} \\ \end{array}
$$

From the Hull-White model and the BK model, we can see that by making the parameters time dependent functions, we can then fit the yield curve (by using the reverting level
(t) ) and the volatility curve (by using either
(t) or
(t) or both - note that both are important contributors to the volatility in that fast/slow mean reversion results in low/high volatility.)

# 14.6 Heath-Jarrow-Morton Model

The Heath-Jarrow-Morton
(HJM) model is not a model but a class of models. The major contribution of the HJM model is its discovery of, now known as, "drift adjustment". Basically, Heath, Jarrow and Morton discovered that the drift term of the forward rate process cannot be arbitrarily determined but a function of the volatility curve. This is drastically different from the short rate process (such as CIR and Vasicek) where the short rate drift can be freely determined. Financial industry finds this to be extremely convenient and it needs a model to be able to calibrate to both yield and volatility curves. The HJM model provides such convenience, that it can fit both curves easily simultaneously.

The HJM model is a forward rate model so the Ho-Lee model is its close cousin. In fact, the Ho-Lee model is a special case of the HJM model by setting the volatility as a constant. They both take the forward curve as given and adopt Gaussian dynamics (although in theory the HJM model can adopt other forms of dynamics but the Gaussian dynamics remain as the most popular choice.)

There is a variation of the HJM model, developed by Miltersen, Sandmann, and Sondermann (1997) and Brace, Gatarek, and Musiela (1997), known as the LIBOR market model
(LMM) that builds dynamics on discrete forward rates as opposed to continuous time forward rates. In doing so, they can avoid the Gaussian dynamics and introduce the log normal dynamics that do not permit negative interest rates. Furthermore, by adopting the log normal dynamics, many interest rate options can be priced by the Black-Scholes formula. Unfortunately, the drift adjustment for the discrete forward rates are much more complex than the drift adjustment of the HJM model. European banks tend to use the LMM yet the American banks tend to use the HJM model.

The HJM model is based upon the forward yield curve, as opposed to the spot yield curve. We write the spot
(instantaneous) rate process generically as follows:

$$
\mathbf {dr}
(t) = \left(\mathbf {r}, t\right) dt + \left(\mathbf {r}, t\right) d W \tag {14.14}
$$ where $(\mathbf{r}, t)$ and $(\mathbf{r}, t)$ are drift and di- usion of the process respectively and they can be functions of both r and t. $P(t, T)$ is the price of a zero-coupon bond (or discount factor) that pays $1 at time T. Then, by Ito (subscripts represent partial derivatives),

$$
\begin{array}{l} \mathrm {d} P (t, T) = P _ {r} (t, T) \mathrm {d} r + 1 / 2 P _ {rr} (t, T) (\mathrm {d} r) ^ {2} + P _ {t} (t, T) \\ = r
(t) P (t, T) dt + P _ {r} (t, T) (r, t) d \hat {W} \tag {14.15} \\ = r
(t) P (t, T) dt + v (t, T) P (t, T) d \hat {W} \\ \end{array}
$$ where $v(t, T) = (r, t)P_r(t, T) / P(t, T)$. Or equivalently,

$$
\begin{array}{l} d \ln P (t, T) = \frac {1}{P (t, T)} d P (t, T) - \frac {1}{2 P (t, T) ^ {2}} (d P (t, T)) ^ {2} \\ = \frac {1}{P (t, T)} P _ {r} (t, T) dr + \frac {1}{2} P _ {rr} (t, T)
(dr) ^ {2} + P _ {t} (t, T) dt \\ - \frac {1}{2 P (t, T) ^ {2}} P _ {r} ^ {2} (t, T)
(dr) ^ {2} \tag {14.16} \\ = rdt + \frac {P _ {r} (t, T)}{P (t, T)} (r, t) d \hat {W} - \frac {1}{2} \frac {P _ {r} (t, T)}{P (t, T)} (r, t) ^ {2} dt \\ = \mathbf {r} - \frac {\mathbf {v} (\mathbf {t}, \mathbf {T}) ^ {2}}{2} \mathbf {dt} + \mathbf {v} (\mathbf {t}, \mathbf {T}) \mathbf {d W} \\ \end{array}
$$

For most of the cases, we assume that $\mathbf{v}(t, T)$ is only deterministic. Note that:

$$
\mathbf {v} (\mathbf {t}, \mathbf {t}) = 0
$$

$$ v (T, T) = 0 \tag {14.17}
$$

This indicates that volatility is 0 for the current price (which is a constant) and also is 0 when the bond approaches maturity (which is also a constant - face value).

The forward rate is defined as:

$$
\mathbf {f} (t, T) = - \frac {\ln P (t, T)}{T} \tag {14.18}
$$

As a result,

$$
\begin{array}{l} df (t, T) = - \frac {}{T} d \ln P (t, T) \\ = - \frac {r}{T} \quad r - \frac {v (t, T) ^ {2}}{2} dt + v (t, T) d \hat {W} \tag {14.19} \\ = v (t, T) \frac {v (t, T)}{T} dt - \frac {v (t, T)}{T} d W \\ \end{array}
$$

This proves that the drift term of the forward rate dynamics do not depend on anything but the volatility function. The drift term in the above equation is known as the "drift adjustment".

Usually, people would like to write (14.19) as follows:

$$
\mathbf {d} \mathbf {f} (\mathbf {t}, \mathbf {T}) = \mathbf {w} (\mathbf {t}, \mathbf {T}) ^ {\mathrm {T}} \mathbf {w} (\mathbf {t}, \mathbf {u}) \mathbf {du} \mathbf {dt} - \mathbf {w} (\mathbf {t}, \mathbf {T}) \mathbf {d} \hat {\mathbf {W}} \tag {14.20}
$$ where

$$ w (t, T) = \frac {v (t, T)}{T}
$$

Recall the forward measure discussed earlier. The change of measure from the risk-neutral to forward is precisely $\mathbf{v}(t, T)$. As a result, the forward rate is a martingale under the forward measure.

$$
\begin{array}{l} \mathbf {df} (t, T) = v (t, T) \frac {v (t, T)}{T} dt - \frac {v (t, T)}{T} d \hat {W} \\ = - \frac {v (t, T)}{T} d \tilde {W} ^ {(T)} \tag {14.21} \\ \end{array}
$$

Note that equation (14.21) describes the evolution of the entire forward curve (i.e. for all $T$ ) and each forward rate is a martingale under its corresponding forward measure $\tilde{W}^{(T)}$.

# 14.6.1 Example 1 - Ho-Lee Model

The Ho-Lee model has the following continuous time short rate process (under the risk-neutral measure) as follows (same as $(\ref{eq:1})$ ):

$$
\mathbf {dr} =
(t) \mathbf {dt} + d W \tag {14.22}
$$

Note that from $(\ref{eq:1})$ we can write

$$
- \overline {{\mathbf {T}}} \ln \mathbf {P} (\mathbf {t}, \mathbf {T}) = \begin{array}{l} T \\ t \end{array} (\mathbf {u}) \mathbf {du} + \mathbf {r} (\mathbf {t}) - \frac {1}{2} ^ {2} (\mathbf {T} - \mathbf {t}) ^ {2} \tag {14.23}
$$

As a result,

$$
\begin{array}{l} \mathrm {df} (t, T) = \mathrm {d} - \frac {}{T} \ln P (t, T) \\ = - \overline {{\mathbf {T}}} d \ln \mathbf {P} (t, T) \tag {14.24} \\ = -
(t) dt + dr
(t) + ^ {2} (T - t) dt \\ = \mathbf {d} \hat {\mathbf {W}} + ^ {2} (\mathbf {T} - \mathbf {t}) d \mathbf {t} \\ \end{array}
$$

This satisfies the HJM drift restriction that $\mathbf{\Phi}_{\mathbf{t}}^{\mathsf{T}}\mathbf{d}\mathbf{u} = \mathbf{\Phi}^{2}(\mathbf{T} - \mathbf{t})$

Another interesting result for the Ho-Lee model using the HJM framework is that the short rate process can be expressed in a form of forward curve without the drift term
(t) . Combining (14.18) and (14.24) with $(\ref{eq:1})$, we obtain:

$$
\mathbf {r}
(T) = \mathbf {f} (t, T) + \frac {1}{2} ^ {2} (T - t) ^ {2} + \mathbf {\Phi} _ {t} ^ {T} d \hat {W}
(u) \tag {14.25}
$$

This result clearly demonstrates that the Ho-Lee model will generate exploding short rates. That is $\hat{\mathbb{E}}[r(T)]$ as $T$.

# 14.6.2 Example 2 - Vasicek Model

Note that $-\ln P(t, T) = rF(t, T) + G(t, T)$ and $\frac{F(t, T)}{t} = F(t, T) - 1$. As a result:

$$
\begin{array}{l} - d \ln P (t, T) = F (t, T) dr + r \frac {F (t, T)}{t} dt + \frac {G (t, T)}{t} dt \\ = F (t, T) \quad \mu - - - rdt + d W + r (F (t, T) - 1) dt \\ + \mu - \frac {2}{2 ^ {2}} - - (- F (t, T)) dt + \frac {2}{2} F (t, T) (F (t, T) - 1) dt \\ = \mathbf {F} (\mathbf {t}, \mathbf {T}) \quad d \hat {\boldsymbol {W}} - rdt + \frac {1}{2} (\mathbf {F} (\mathbf {t}, \mathbf {T})) ^ {2} dt \tag {14.26} \\ \end{array}
$$

Take derivative with respect to the maturity time $T$ yields the forward rate process as follows:

$$
\begin{array}{l} - \frac {}{T} d \ln P (t, T) = df (t, T) \\ = \frac {F (t, T)}{T} d \hat {W} + F (t, T) \frac {F (t, T)}{T} ^ {2} dt \tag {14.27} \\ = e ^ {- (T - t)} d \hat {W} + e ^ {- (T - t)} \frac {1 - e ^ {- (T - t)}}{2} dt \\ \end{array}
$$ which verifies the HJM drift restriction result. We shall note that the reversion level, $\mu$, disappears from the equation! It is interesting to note that the market price of risk, $\mu$, also disappears from the equation.

Previously, we argue that continuous forward rates are martingales under the forward measure. It is shown in the chapter that the change of measure required from the risk-neutral measure to the forward measure under the Vasicek model is:

$$
\begin{array}{l} \mathrm {d} \tilde {\mathbf {W}} ^ {(T)} = \mathrm {d} \hat {\mathbf {W}} - \frac {\mathbf {P} (\mathbf {t}, T) / r}{\mathbf {P} (\mathbf {t}, T)} \mathrm {d} t \tag {14.28} \\ = \mathbf {d} \tilde {\mathbf {W}} + \mathbf {F} (t, T) dt \\ \end{array}
$$ and as a result the above equation becomes:

$$
\mathrm {df} (\mathbf {t}, \mathbf {T}) = \mathrm {e} ^ {- \mathbf {\Lambda} ^ {(T - t)}} \quad \mathrm {d} \tilde {\mathbf {W}} ^ {(T)} \tag {14.29}
$$ which is a martingale. We also note that the volatility term is time-decaying, which does not cause exploding short rates. To see that:

$$
\begin{array}{l} \mathbf {r}
(T) = \mathrm {e} ^ {- (T - t)} \quad \mathbf {r}
(t) + \mathbf {\Pi} _ {t} ^ {T} \mathrm {e} ^ {(s - t)} \quad \mu \mathrm {d} s + \mathbf {\Pi} _ {t} ^ {T} \mathrm {e} ^ {(s - t)} \quad d \hat {W}
(s) \\ = r
(t) e ^ {- (T - t)} + \mu 1 - e ^ {- (T - t)} + e ^ {- (T - t)} e ^ {T} e ^ {(s - t)} d W
(s) \tag {14.30} \\ = r
(t) \frac {F (t, T)}{T} + \mu F (t, T) + e ^ {- (T - t)} e ^ {T} e ^ {(s - t)} d \hat {W}
(s) \\ \end{array}
$$

From equation $(\ref{eq:1})$ we can write:

$$
\begin{array}{l} - \ln P (t, T) = r F (t, T) + G (t, T) \\ f (t, T) = \frac {}{T} (- \ln P (t, T)) \\ = r \frac {F (t, T)}{T} + \frac {G (t, T)}{T} \\ = r \frac {F (t, T)}{T} + \mu - \frac {2}{2 ^ {2}} 1 - \frac {F (t, T)}{T} + \frac {2}{2} F (t, T) \frac {F (t, T)}{T} \\ = r \frac {F (t, T)}{T} + \mu F (t, T) - \frac {{} ^ {2}}{2 {} ^ {2}} F (t, T) + \frac {{} ^ {2}}{2} F (t, T) \frac {F (t, T)}{T} \tag {14.31} \\ \end{array}
$$

Combining equations (14.30) and (14.31), we can derive the following result:

$$
\begin{array}{l} \mathbf {r}
(T) = \mathbf {f} (t, T) + \frac {{} ^ {2}}{2} \mathbf {F} (t, T) - \frac {{} ^ {2}}{2} \mathbf {F} (t, T) \frac {\mathbf {F} (t, T)}{T} + e ^ {- (T - t)} \begin{array}{l} T \\ t \end{array} e ^ {(s - t)} d \hat {W}
(s) \\ = \mathbf {f} (\mathbf {t}, \mathbf {T}) + \frac {{} ^ {2}}{2} \mathbf {F} (\mathbf {t}, \mathbf {T}) \quad 1 - \frac {\mathbf {F} (\mathbf {t}, \mathbf {T})}{\mathbf {T}} + \mathbf {e} ^ {- (\mathbf {T} - \mathbf {t})} \quad_ {\mathbf {t}} ^ {\mathbf {T}} \mathbf {e} ^ {(s - t)} d \hat {\boldsymbol {W}} (\mathbf {s}) \\ = \mathbf {f} (t, T) + \frac {2}{2} F ^ {2} (t, T) + e ^ {- (T - t)} e ^ {T} e ^ {(s - t)} d \hat {W}
(s) \tag {14.32} \\ \end{array}
$$

Note that the middle term is the same as the extra term under the forward measure for the short rate. Unlike the Ho-Lee model, the Vasicek model will not generate exploding short rates. As $T$, $\hat{\mathbb{E}}[r(T)] = f(t, T) + \frac{2}{2^2}$.

To build a lattice or a Monte-Carlo model for the Vasicek model (say for American option pricing), it is convenient to compute the variance of the last term of equation (14.32) as:

$$
\begin{array}{l} \operatorname {var} \quad e ^ {- (T - t)} \quad_ {t} ^ {T} e ^ {(s - t)} d \hat {W}
(s) = 2 e ^ {- 2 (T - t)} _ {t} ^ {T} e ^ {2 (s - t)} ds \tag {14.33} \\ = ^ {2} \frac {1 - e ^ {- 2 (T - t)}}{2} \\ \end{array}
$$ and hence (14.32) can be written as:

$$ r
(T) = f (t, T) + \frac {2}{2} F ^ {2} (t, T) + \frac {\overline {{1 - e ^ {- 2 (T - t)}}}}{2} z \tag {14.34}
$$ where $z$ is a standard Normal variable. In simulations, for any given future time $T > t$, we can simulate standard normal random variables and then linearly transform it to obtain the instantaneous short rate.

# 14.6.3 Example 3 - Cox-Ingersoll-Ross Model

Note that $\mathbf{A}(t, T)$ and $\mathbf{B}(t, T)$ satisfy the following ordinary differential equations:

$$
\begin{array}{l} \mathbf {B} (\mathbf {t}, \mathbf {T}) + \frac {1}{2} ^ {2} \mathbf {B} (\mathbf {t}, \mathbf {T}) - \frac {\mathbf {B} (\mathbf {t}, \mathbf {T})}{\mathbf {t}} - 1 = 0 \\ \mathbf {A} (\mathbf {t}, \mathbf {T}) - 1 \end{array} \tag {14.35}
$$

$$
\frac {\mathbf {A} (\mathbf {t}, \mathbf {T})}{\mathbf {t}} \frac {1}{\mathbf {A} (\mathbf {t}, \mathbf {T})} - \mu \mathbf {B} (\mathbf {t}, \mathbf {T}) = 0
$$

Recall the zero-coupon bond pricing model in Chapter?? as $-\ln P(t, T) = rB(t, T) - \ln A(t, T)$. We can then easily take the derivative as follows:

$$
\begin{array}{l} - d \ln P (t, T) = B (t, T) dr + r \frac {B (t, T)}{t} dt - \frac {A (t, T)}{t} \frac {1}{A (t, T)} dt \\ = \mathbf {B} (\mathbf {t}, \mathbf {T}) [ (\mu - (\quad + \quad) \mathbf {r}) \mathbf {dt} + \quad \bar {\mathbf {r}} \mathbf {d} \tilde {\mathbf {W}} ] (14.36) \\ + r (+) B (t, T) + \frac {1}{2} ^ {2} B ^ {2} (t, T) - 1 dt - \mu B (t, T) dt (14.36) \\ = - rdt + \quad \bar {r} B (t, T) d \hat {W} + \frac {1}{2} ^ {2} r B ^ {2} (t, T) dt \\ \end{array}
$$

Taking the derivative with respect to the maturity time $T$, we obtain:

$$
\begin{array}{l} - \overline {{\mathbf {T}}} d \ln P (t, T) = df (t, T) \\ = \bar {r} \frac {B (t, T)}{T} d \hat {W} + ^ {2} r B (t, T) \frac {B (t, T)}{T} dt \tag {14.37} \\ \end{array}
$$

Note that, similar to the Vasicek model, the reverting level, $\mu$, disappears from the equation. However, the market price of risk still remains. To rewrite the above equation under the forward measure, we note that the Girsanov theorem under the CIR model is:

$$
\begin{array}{l} \mathrm {d} \tilde {\mathbf {W}} ^ {(T)} = \mathrm {d} \hat {\mathbf {W}} - \frac {\mathrm {P} (\mathrm {t}, \mathrm {T}) / \mathrm {r}}{\mathrm {P} (\mathrm {t}, \mathrm {T})} \quad \bar {\mathrm {r}} \mathrm {dt} \tag {14.38} \\ = d \hat {W} + B (t, T) \quad \bar {r} dt \\ \end{array}
$$

Substituting this change of measure back to the equation (14.37), we arrive at the following:

$$
\mathrm {d} \mathbf {f} (t, T) = \quad \bar {\mathbf {r}} \frac {\mathbf {B} (t, T)}{T} \mathrm {d} \tilde {\mathbf {W}} ^ {(T)} \tag {14.39}
$$ which is a martingale. This equation and equation (14.29) verify that continuous forward rates are martingales under the forward measure, as argued in Chapter??

Given that forward measure is maturity dependent
(T) , each forward rate (with maturity T) is a martingale under its own measure. This is quite di erent from the risk-neutral measure that "one measure fits all".

# 14.7 Lmm (Libor Market Model) And Shifted Lmm

Besides the HJM model, another popular model that takes market prices as given is the LIBOR market model
(LMM) . The LMM can take European option prices (e.g. extracted from caps and floors or swaptions) directly as given, which makes it much easier to use than the HJM model. This advantage is a consequence of the LMM modeling discrete forward rates as opposed to continuous forward rates as in the HJM model.

The LIBOR Market Model
(LMM) was first introduced by Miltersen, Sandmann, and Sondermann (1997) and Brace, Gatarek, and Musiela (1997). They argue that discrete forward rates should follow log normal distributions. In doing so, the European options extracted from caps and floors (or swaptions) can then be priced by the Black-Scholes formula.

However, due to its construction by nature, it is often compromised by an approximation in the drift adjustment known as "freezing the drift". While there has been no consensus, many believe that it is such an approximation that causes failures in the valuation of the interest rate contracts during the financial crisis in
2008. For example, Gerhold (2010) discusses the tail behavior of the LMM and Gasper and Pimental (2015) discuss how vulnerable this problem is during large yield curve changes, and document large failures of the model during the 2008 crisis. The introduction of "freezing" to the LMM is the result of the "reduced-form" design of the LMM which assumes separately each forward measure (terminal date) and hence an exogenous correlation must be given.

Following Chapter?? and defining a discrete forward rate as: $\mathbf{f}(\mathbf{t},\mathbf{T_i},\mathbf{T_j})$ where $\mathbf{t} < \mathbf{T_i} < \mathbf{T_j}$. This is a forward rate on a future LIBOR, denoted $(\mathbf{T_i},\mathbf{T_j})$. We also denote $1 + \text{LIBOR}$ as $\mathbf{L}(\mathbf{t},\mathbf{T}) = 1 + (\mathbf{t},\mathbf{T})$ for any $\mathbf{t} < \mathbf{T}$. This will be used later. Later, we shall show that the forward rate is an expectation of the future LIBOR under the $\mathbf{T_j}$ -forward measure. Also, by definition, $\mathbf{f}(\mathbf{T_i},\mathbf{T_i},\mathbf{T_j}) = (\mathbf{T_i},\mathbf{T_j})$.

The LMM assumes that $\mathbf{f}(t, T_i, T_j)$ follows a log-normal process. As a result, an option
(European) written on this forward rate can be priced by the Black-Scholes model:

$$
C (t, T, \quad) = P (t, T _ {i}) [ f (t, T _ {i}, T _ {j}) N (d _ {+}) - N (d _ {-}) ] \tag {14.40}
$$ where

$$
\mathbf {d} _ {\pm} = \frac {\ln \mathbf {f} \left(\mathbf {t}, \mathbf {T} _ {\mathrm {i}}, \mathbf {T} _ {\mathrm {j}}\right) - \ln \texttt {\textnormal {\textsize \pm 1 / 2}} ^ {1 / 2} \mathbf {\Sigma} ^ {2} (\mathbf {T} - \mathbf {t})}{\overline {{\mathbf {T}}} - \mathbf {t}}
$$ and $\mathbf{P}(t, T_i)$ is the risk-free discount factor, is the strike
(rate) , is the volatility of the log of the forward rate $f(T_i, T_i, T_j)$ (which is equal to $(T_i, T_j)$ ).

To assure that such an assumption does not violate arbitrage, the LMM (for example, see Brigo and Mercurio (2006)) consists of the drift term of the forward rate, unfortunately, is stochastic as follows:

$$
\begin{array}{l} \frac {\mathrm {d} \mathbf {f} (t, T _ {k - 1}, T _ {k})}{f (t, T _ {k - 1}, T _ {k})} = (t, T _ {k - 1}, T _ {k}) d \tilde {W} ^ {(T _ {k})}
(t) \\ = - \left(t, T _ {k - 1}, T _ {k}\right) \quad \begin{array}{l} n \\ j = k + 1 \end{array} \frac {kjj (t, T _ {j - 1}, T _ {j}) f (t, T _ {j - 1}, T _ {j})}{1 + jf (t, T _ {j - 1}, T _ {j})} dt \tag {14.41} \\ + \quad (t, T _ {k - 1}, T _ {k}) d \tilde {W} ^ {(T _ {n})}
(t) \\ \end{array}
$$ where $(\mathbf{t},\mathbf{T}_{j - 1},\mathbf{T}_j)$ is the volatility, $\mathbf{j} = \mathbf{T}_{\mathbf{j}} - \mathbf{T}_{\mathbf{j} - 1}$ and $\mathbf{i, j}$ is the correlation between two separate measures $\mathrm{d}\tilde{\boldsymbol{W}}^{(\mathrm{T_i})}(\mathbf{t})$ and $\mathrm{d}\tilde{\boldsymbol{W}}^{(\mathrm{T_j})}(\mathbf{t})$, which is di cult to define. As a result a "freezing" action is adopted and $\mathbf{i, j}$ are regarded as constants at the current time. Apparently this assumption is quite restrictive in that during the crisis, it failed to explain the drastic changes in the interest rate dynamics, as pointed out by Gaspar and Pimentel (2015).

From the Vasicek model (see Chapter??), we know that all zero-coupon bond prices are log-normally distributed. Hence, any discrete forward rate (between $T_{i}$ and $T_{j}$ ) should consequently follow a shifted-log-normal distribution, since:

$$ f \left(t, T _ {i}, T _ {j}\right) = \frac {P \left(t, T _ {i}\right)}{P \left(t, T _ {j}\right)} - 1 \tag {14.42}
$$ where $T_{i} < T_{j}$. Each bond price is log-normally distributed and hence the ratio $\frac{P(t, T_{i})}{P(t, T_{j})}$ is also log-normally distributed. Subtracting 1 is to shift the log-normal distribution by 1 and hence the lowest forward rate is -100%.

It is shown later that doing so renders the "freezing" of the drift unnecessary. The drift adjustment is then exact and directly connected to the volatility of the bond. Finally, applying the forward measures, we can achieve the drift adjustment between any two two chosen dates (e.g. $T_i$ and $T_j$ ).

Furthermore, for $f(t, T_j, T_{j+1})$ to be shifted log-normal helps resolve the distributional issues in the market that $f(t, T_j, T_{j+1})$ is close to normal distribution when its level is low and log-normal when its level is high. This can be easily seen if we express $1 + f(t, T_j, T_{j+1})$ which follows a log-normal distribution as an exponential function: that is $1 + f(t, T_j, T_{j+1}) = e^x$ where $x$ is normally distributed. Then $f(t, T_j, T_{j+1}) = e^x - 1$. When $f(t, T_j, T_{j+1})$ is high, $x$ is high, and $f(t, T_j, T_{j+1})$ follows a shifted log-normal distribution. When $f(t, T_j, T_{j+1})$ is low, $x$ is low, and $f(t, T_j, T_{j+1}) = e^x - 1$, $1 + x - 1 = x$ is very close to a normal distribution.

To correct the problems of the existing LMM and introduce a new, revised LMM, or shifted-LMM, we leverage upon the forward measure discussion in Chapter??. The notation used here also follows what it is in Chapter??. From Chpater

$\ref{eq:1}$, we know that the forward measure is maturity dependent. In other words, for a current time $t$, there are a set of forward measures, $\langle T_1,\dots, T_n\rangle$, one for each bond.

Recall equation (??) from Chapter?? (under the risk-neutral measure):<sup>1</sup>

$$
\frac {\mathrm {d} \mathbf {P} (\mathbf {t}, \mathbf {T})}{\mathbf {P} (\mathbf {t}, \mathbf {T})} = \mathbf {r} (\mathbf {t}) \mathrm {dt} + \mathbf {v} (\mathbf {t}, \mathbf {T}) \mathrm {d} \hat {\mathbf {W}} (\mathbf {t}) \tag {14.43}
$$ and also the change of measure between the risk-neutral measure and the T-forward measure:

$$
\mathbf {d} \tilde {\boldsymbol {W}} ^ {(T)}
(t) = - v (t, T) dt + d \hat {\boldsymbol {W}}
(t) \tag {14.44}
$$

Furthermore, recall also (from Chapter??) the forward price to be (for $T_i$ and $T_j$ ) the ratio of two bond prices:

$$
\left(\mathrm {t}, \mathrm {T} _ {\mathrm {i}}, \mathrm {T} _ {\mathrm {j}}\right) = \frac {\mathrm {P} \left(\mathrm {t}, \mathrm {T} _ {\mathrm {j}}\right)}{\mathrm {P} \left(\mathrm {t}, \mathrm {T} _ {\mathrm {i}}\right)} \tag {14.45}
$$

Then, we can define the discrete forward rate (plus 1) as:

$$
\begin{array}{l} F \left(t, T _ {i}, T _ {j}\right) = \frac {1}{\left(t, T _ {i}, T _ {j}\right)} \tag {14.46} \\ = \frac {P (t, T _ {i})}{P (t, T _ {j})} \\ \end{array}
$$

Then, the following two lemmas are true.

Lemma 1. $F(t, T_i, T_j)$ is $T_j$ -martingale. This implies: for $s > t$ and in a limiting case where $s = T_i$, we have:

$$
\mathbf {F} \left(\mathrm {t}, \mathrm {T} _ {\mathrm {i}}, \mathrm {T} _ {\mathrm {j}}\right) = \tilde {\mathbb {E}} _ {\mathrm {t}} ^ {\left(\mathrm {T} _ {\mathrm {j}}\right)} \left[ \mathrm {L} \left(\mathrm {T} _ {\mathrm {i}}, \mathrm {T} _ {\mathrm {j}}\right) \right] \tag {14.47}
$$ where $L$ is the LIBOR.

□

The proof is given in the Appendix. Note that the above lemma also implies that $\mathbf{f}(\mathbf{t},\mathbf{T_i},\mathbf{T_j}) = \mathbf{F}(\mathbf{t},\mathbf{T_i},\mathbf{T_j}) - 1$ is $\mathbf{T_{j + 1}}$ -martingale. This is important, as we shall discuss in details later, in that the current LMM assumes $\mathsf{f}(\mathsf{t},\mathsf{T}_{\mathsf{i}},\mathsf{T}_{\mathsf{j}})$ to be log-normally distributed while we assume $\mathsf{F}(\mathsf{t},\mathsf{T}_{\mathsf{j}},\mathsf{T}_{\mathsf{j} + 1})$ to be log-normally distributed (hence $\mathsf{f}(\mathsf{t},\mathsf{T}_{\mathsf{j}},\mathsf{T}_{\mathsf{j} + 1})$ is a shifted log-normal).

Lemma 2. $(\mathbf{t},\mathbf{T_i},\mathbf{T_j}) = \mathbf{F}(\mathbf{t},\mathbf{T_i},\mathbf{T_j})^{-1}$ is $\mathbf{T_i}$ -martingale. This implies:

$$
\left(\mathbf {t}, \mathbf {T} _ {\mathbf {i}}, \mathbf {T} _ {\mathbf {j}}\right) = \tilde {\mathbb {E}} _ {\mathbf {t}} ^ {\left(\mathbf {T} _ {\mathbf {i}}\right)} [ \quad (\mathbf {s}, \mathbf {T} _ {\mathbf {i}}, \mathbf {T} _ {\mathbf {j}}) ] \tag {14.48}
$$ for $s > t$ and in a limiting case where s $\mathbf{T_i}$, we have:

$$
\left(\mathbf {t}, \mathbf {T} _ {\mathbf {i}}, \mathbf {T} _ {\mathbf {j}}\right) = \tilde {\mathbb {E}} _ {\mathbf {t}} ^ {\left(\mathbf {T} _ {\mathbf {i}}\right)} [ \mathbf {P} \left(\mathbf {T} _ {\mathbf {i}}, \mathbf {T} _ {\mathbf {j}}\right) ] \tag {14.49}
$$

□

Again, the proof of this Lemma is similar to the proof of Lemma 1 and is given in the Appendix.

The change of measure between any two forward measures under $T_i$ and $T_j$ is:

$$
\mathrm {d} \tilde {\boldsymbol {W}} ^ {\left(\mathrm {T} _ {\mathrm {j}}\right)} = \mathrm {d} \tilde {\boldsymbol {W}} ^ {\left(\mathrm {T} _ {\mathrm {i}}\right)} + \left(\mathrm {t}, \mathrm {T} _ {\mathrm {i}}, \mathrm {T} _ {\mathrm {j}}\right) \mathrm {dt} \tag {14.50}
$$ where

$$
\left(\mathbf {t}, \mathbf {T} _ {\mathrm {i}}, \mathbf {T} _ {\mathrm {j}}\right) = \mathbf {v} \left(\mathbf {t}, \mathbf {T} _ {\mathrm {j}}\right) - \mathbf {v} \left(\mathbf {t}, \mathbf {T} _ {\mathrm {i}}\right) \tag {14.51}
$$ and $\mathsf{v}(\cdot, \cdot)$ is defined in equation (14.43). Furthermore, the dynamics for the discrete forward rate is:

$$
\frac {\mathrm {d} F \left(t, T _ {i}, T _ {j}\right)}{F \left(t, T _ {i}, T _ {j}\right)} = \left(t, T _ {i}, T _ {j}\right) d \tilde {W} ^ {(T _ {j})}
(t) \tag {14.52}
$$

Under the log-normality assumption for the discrete forward rate, $(\mathbf{t},\mathbf{T_i},\mathbf{T_j})$ is non-stochastic because $\mathbf{v}(\mathbf{t},\mathbf{T_i})$ and $\mathbf{v}(\mathbf{t},\mathbf{T_j})$ defined in equation (14.43) are non-stochastic (i.e., not a function of $\mathbf{r}$ ).

Let's now prove equation (14.50). With log-normality for the discrete forward rate of equation (14.52), we must have the volatility $(t, T_i, T_j)$ to be non-stochastic. Note that $(t, T_i, T_j) = \frac{1}{F(t, T_i, T_j)}$, we can d $(\mathbf{t},\mathbf{T_i},\mathbf{T_j}) = \mathbf{d}\frac{1}{\mathbf{F}(\mathbf{t},\mathbf{T_i},\mathbf{T_j})}$

$$
\begin{array}{l} = \frac {- 1}{F \left(t, T _ {i}, T _ {j}\right)} \quad \left(t, T _ {i}, T _ {j}\right) d \tilde {W} ^ {\left(T _ {j}\right)}
(t) - \left(t, T _ {i}, T _ {j}\right) ^ {2} dt \tag {14.53} \\ = - \left(t, T _ {i}, T _ {j}\right) \quad \left(t, T _ {i}, T _ {j}\right) d \tilde {W} ^ {\left(T _ {j}\right)}
(t) - \left(t, T _ {i}, T _ {j}\right) ^ {2} dt \\ = \left(t, T _ {i}, T _ {j}\right) \quad \left(t, T _ {i}, T _ {j}\right) d \tilde {W} ^ {\left(T _ {j}\right)}
(t) - \left(t, T _ {i}, T _ {j}\right) ^ {2} dt \\ = \left(t, T _ {i}, T _ {j}\right) \left(t, T _ {i}, T _ {j}\right) d \tilde {W} ^ {\left(T _ {i}\right)}
(t) \\ \end{array}
$$

Consequently, we obtain:

$$
\mathrm {d} \tilde {\boldsymbol {W}} ^ {\left(\mathrm {T} _ {\mathrm {j}}\right)} (\mathbf {t}) = \mathrm {d} \tilde {\boldsymbol {W}} ^ {\left(\mathrm {T} _ {\mathrm {i}}\right)} (\mathbf {t}) + \left(\mathbf {t}, \mathrm {T} _ {\mathrm {i}}, \mathrm {T} _ {\mathrm {j}}\right) \mathrm {dt} \tag {14.54}
$$

Now we proceed to solve for $(t, T_i, T_j)$ d $(\mathbf{t},\mathbf{T_i},\mathbf{T_j}) = \mathbf{d}\frac{\mathbf{P}(\mathbf{t},\mathbf{T_j})}{\mathbf{P}(\mathbf{t},\mathbf{T_i})}$

$$
\begin{array}{l} = \left(t, T _ {j}, T _ {j + 1}\right) \frac {\mathrm {d} P \left(t, T _ {j}\right)}{P \left(t, T _ {j}\right)} - \frac {\mathrm {d} P \left(t, T _ {i}\right)}{P \left(t, T _ {i}\right)} - \frac {\mathrm {d} P \left(t, T _ {j}\right)}{P \left(t, T _ {j}\right)} \frac {\mathrm {d} P \left(t, T _ {i}\right)}{P \left(t, T _ {i}\right)} + \frac {\mathrm {d} P \left(t, T _ {i}\right)}{P \left(t, T _ {i}\right)} ^ {2} \\ = \left(t, T _ {j}, T _ {j + 1}\right) \left[ v (t, T _ {j}) - v (t, T _ {i}) \right] d \hat {W}
(t) - v (t, T _ {j}) v (t, T _ {i}) dt + v (t, T _ {i}) ^ {2} dt \\ = \left(\mathrm {t}, \mathrm {T} _ {\mathrm {i}}, \mathrm {T} _ {\mathrm {j}}\right) \quad \left(\mathrm {t}, \mathrm {T} _ {\mathrm {i}}, \mathrm {T} _ {\mathrm {j}}\right) \mathrm {d} \tilde {\mathbf {W}} ^ {\left(\mathrm {T} _ {\mathrm {i}}\right)} (\mathrm {t}) \tag {14.55} \\ \end{array}
$$ and hence the change of measure (from the last two lines above) is:

$$
\begin{array}{l} \mathrm {d} \tilde {\mathbf {W}} ^ {\left(\mathrm {T} _ {\mathrm {i}}\right)} (\mathbf {t}) = \mathrm {d} \hat {\mathbf {W}} (\mathbf {t}) - \frac {\mathrm {v} \left(\mathbf {t}, \mathrm {T} _ {\mathrm {j}}\right) \mathrm {v} \left(\mathbf {t}, \mathrm {T} _ {\mathrm {i}}\right) + \mathrm {v} \left(\mathbf {t}, \mathrm {T} _ {\mathrm {i}}\right) ^ {2}}{\mathrm {v} \left(\mathbf {t}, \mathrm {T} _ {\mathrm {j}}\right) - \mathrm {v} \left(\mathbf {t}, \mathrm {T} _ {\mathrm {i}}\right)} \mathrm {dt} \tag {14.56} \\ = d \hat {W}
(t) - v (t, T _ {i}) dt \\ \end{array}
$$ which is consistent with equation (14.44) and:

$$
\left(\mathbf {t}, \mathbf {T} _ {\mathrm {i}}, \mathbf {T} _ {\mathrm {j}}\right) = \mathbf {v} \left(\mathbf {t}, \mathbf {T} _ {\mathrm {j}}\right) - \mathbf {v} \left(\mathbf {t}, \mathbf {T} _ {\mathrm {i}}\right) \tag {14.57}
$$ where $\mathbf{v}(\mathbf{r},\mathbf{t},\mathbf{T})$ is defined in equations (14.15) and equation (14.44). We note that (14.57) implies the following property:

$$
\left(\mathbf {t}, \mathbf {T} _ {\mathrm {i}}, \mathbf {T} _ {\mathrm {k}}\right) = \left(\mathbf {t}, \mathbf {T} _ {\mathrm {i}}, \mathbf {T} _ {\mathrm {j}}\right) + \left(\mathbf {t}, \mathbf {T} _ {\mathrm {j}}, \mathbf {T} _ {\mathrm {k}}\right) \tag {14.58}
$$ for all $\mathbf{i} < \mathbf{j} < \mathbf{k}$.<sup>2</sup>

Two most popular LIBOR derivative contracts are caps/floors and swpations, both of which are evaluated with a number of future LIBOR "fixing" dates. For a set of discrete forward rates with fixing dates: $< T_{1} \cdots T_{n} >$ (not necessarily equally spaced), equation (14.52) can be written as:

$$
\begin{array}{l} \frac {\mathrm {d} F \left(t, T _ {j}, T _ {j + 1}\right)}{F \left(t, T _ {j}, T _ {j + 1}\right)} = \left(t, T _ {j}, T _ {j + 1}\right) d \tilde {W} ^ {\left(T _ {j + 1}\right)}
(t) \tag {14.59} \\ = \left(t, T _ {j}, T _ {j + 1}\right) d \tilde {W} ^ {\left(T _ {j}\right)}
(t) + \left(t, T _ {j}, T _ {j + 1}\right) ^ {2} dt \\ \end{array}
$$ which is known as the drift adjustment. Recursive substitutions lead to:

$$
\frac {\mathrm {d} F \left(t, T _ {j}, T _ {j + k}\right)}{F \left(t, T _ {j}, T _ {j + k}\right)} = \left(t, T _ {j}, T _ {j + k}\right) d \tilde {W} ^ {(T _ {j})}
(t) + \quad {} _ {= 1} ^ {k} \left(t, T _ {j}, T _ {j +}\right) ^ {2} dt \tag {14.60}
$$

This result is drastically di erent from and easier than the LMM where the drift adjustment contains a set of correlations across measures (then a freezing condition is imposed to turn the drift adjustment into deterministic). 3

# 14.7.1 Calibration To Caps

The reason why the LMM gains such popularity is its ease in calibrating to cap prices. Caps (and floors) are traded OTC (over the counter) and quoted by Black's volatility. With the Black formula, one can easily covert the volatility quote into the premium. The LMM provides a theoretical valuation for such a market practice.
 we have:

$$
\begin{array}{l} \frac {d F (t, T _ {j - 1}, T _ {j})}{F (t, T _ {j - 1}, T _ {j})} = \left(t, T _ {j - 1}, T _ {j}\right) d \tilde {W} ^ {(T _ {j})} \\ = \frac {\left(t, T _ {j - 1}, T _ {j}\right)}{\left(t, T _ {j}, T _ {j + 1}\right)} \left(t, T _ {j}, T _ {j + 1}\right) d \tilde {W} ^ {\left(T _ {j}\right)} \\ = \frac {\left(t, T _ {j - 1}, T _ {j}\right) d \left(t, T _ {j}, T _ {j + 1}\right)}{\left(t, T _ {j}, T _ {j + 1}\right)} \frac {(t, T _ {j}, T _ {j + 1})}{\left(t, T _ {j}, T _ {j + 1}\right)} \\ \end{array}
$$

The LMM assumes a log-normally distributed LIBOR and hence each caplet in the cap contract is consistent with the Black model (under a different forward measure).

A cap is a collection of caplets which are simple European call options on forward LIBOR rates struck at the cap rate, symbolized as $\bar{\mathbf{R}}$:<sup>4</sup>

$$
V _ {\text {cap}} = \begin{array}{l} n \\ j = 1 \quad j \end{array} \tag {14.61}
$$ where each caplet $j$ is the $j$ -th caplet which is a European call option on LIBOR between $T_j$ and $T_{j+1}$.

As discussed in Chapter??, a caplet that is a European call option on forward LIBOR can be written as a European put option on price:

$$
\begin{array}{l} \max \left(T _ {j}, T _ {j + 1}\right) - \bar {R}, 0 = \max \frac {1}{P \left(T _ {j}, T _ {j + 1}\right)} - 1 - \bar {R}, 0 \tag {14.62} \\ = \frac {1 + \bar {R}}{P \left(T _ {j}, T _ {j + 1}\right)} \max \left\{K - P \left(T _ {j}, T _ {j + 1}\right), 0 \right\} \\ \end{array}
$$ where $K = 1 / (1 + \bar{R})$. It is important then to note that although this payoff is paid at time $T_{j+1}$, its amount is actually known at time $T_j$. Consequently, we can discount it back by one period to be:

$$
P \left(T _ {j}, T _ {j + 1}\right) \max \quad \left(T _ {j}, T _ {j + 1}\right) - \bar {R}, 0 = (1 + \bar {R}) \max \{K - P \left(T _ {j}, T _ {j + 1}\right), 0 \} \tag {14.63}
$$ and hence we can "conveniently" discount from time $T_j$ which "coincidentally" matches the forward measure needed for the price which is $T_j$ -martingale. The caplet value is the discounted expected value under the risk-neutral measure:

$$
\begin{array}{l} j = \hat {\mathbb {E}} _ {t} \exp - r
(u) du (1 + \bar {R}) \max \{K - P \left(T _ {j}, T _ {j + 1}\right), 0 \} \tag {14.64} \\ = \mathbf {P} (\mathbf {t}, \mathbf {T} _ {\mathbf {j}}) (1 + \bar {\mathbf {R}}) \tilde {\mathbb {E}} _ {\mathbf {t}} ^ {(\mathbf {T} _ {\mathbf {j}})} [ \max \{\mathbf {K} - (\mathbf {T} _ {\mathbf {j}}, \mathbf {T} _ {\mathbf {j}}, \mathbf {T} _ {\mathbf {j} + 1}), 0 \} ] \\ \end{array}
$$

Under log-normally distributed forward prices, we have the following caplet formula:

$$
\begin{array}{l} j = \frac {P \left(t, T _ {j}\right)}{K} KN - \frac {\ln \left(t, T _ {j}, T _ {j + 1}\right) - \ln K - 1 / 2 v _ {P, j} ^ {2}}{v _ {P, j}} \tag {14.65} \\ - \left(t, T _ {j}, T _ {j + 1}\right) N - \frac {\ln \left(t, T _ {j}, T _ {j + 1}\right) - \ln K + ^ {1 / 2}}{v _ {P, j}} \\ \end{array}
$$ where

$$
\begin{array}{l} v _ {P, j} ^ {2} = \tilde {\mathbb {V}} [ \ln P (T _ {j}, T _ {j + 1}) ] \\ = \tilde {\mathbb {V}} [ \ln \left(\mathrm {T} _ {\mathrm {j}}, \mathrm {T} _ {\mathrm {j}}, \mathrm {T} _ {\mathrm {j} + 1}\right) ] \tag {14.66} \\ = \begin{array}{c} T _ {j} \\ t \end{array} (u, T _ {j}, T _ {j + 1}) ^ {2} du \\ \end{array}
$$ under the log-normal assumption. This equation is a more general form than the similar equation in Chapter?? (equation (10.5)) where the Vasicek model is assumed. Here, we only need the forward volatility, $(\mathbf{u},\mathbf{T_j},\mathbf{T_{j + 1}})$, to be deterministic (please compare equation (10.6) in Chapter?? and equation (14.66) here).

# 14.7.2 Swap And Swaption Valuation

Unlike caps, swaptions are quoted by premium. Nevertheless, it is still customary for traders to think of their hedges in terms of the log-normal volatility. In other words, Greeks are still calculated by the Black model. As a result, it is equivalent to assuming the swap rate to follow a log-normal distribution. As a result, for this line of reasoning to be mathematically valid, we must also have "some measure" under which the swap rate is a martingale (and hopefully follows a log-normal distribution). A swap measure is therefore defined (see Jamshidian (1989)).

# The Swap Measure

A vanilla interest rate swap contract can be decomposed into a series of forward contracts. Hence, a swap rate, under no arbitrage, can be expressed as a weighted average of forward rates as follows (details are given in Chapter??):

$$
\begin{array}{l} w
(t) = \frac {\underset {j = 1} {n} P \left(t, T _ {j}\right) f \left(t, T _ {j}, T _ {j + 1}\right)}{\underset {j = 1} {n} P \left(t, T _ {j}\right)} \tag {14.67} \\ = \frac {1 - P (t, T _ {n})}{\underset {j = 1} {\overset {n} {P}} (t, T _ {j})} \\ \end{array}
$$

Note that a swap has a number of fixing dates between now, $t$, and maturity, $T_{n}$, so that $t < T_1 < \dots < T_n$. For the sake of easy exposition, we shall omit the fixing dates from the swap rate notation. As introduced in Chapter??, both expressions (line 1 and line 2) are useful. The first expression provides an excellent intuition that a swap rate is a weighted average of forward rates (with weights being $\frac{P(t, T_j)}{P(t, T_j)}$ ). The second expression is a quick calculation of the swap rate in that the numerator requires only the last zero coupon bond.

A payer swaption
(call) valuation formula is:

$$
\begin{array}{l} \mathbf {w}, \mathbf {j}, n = \hat {\mathbb {E}} _ {t} \exp - \mathbf {\Sigma} _ {t} ^ {s} r
(u) \quad \begin{array}{c} n \\ j = 1 \end{array} P \left(s, T _ {j}\right) \max \left\{w
(s) - w _ {K}, 0 \right\} \\ = \mathbf {P} (\mathbf {t}, \mathbf {s}) \tilde {\mathbb {E}} _ {\mathbf {t}} ^ {(s)} \quad \begin{array}{l} n \\ j = 1 \end{array} \mathbf {P} (\mathbf {s}, \mathbf {T} _ {\mathbf {j}}) \max \left\{\mathrm {w} (\mathbf {s}) - \mathrm {w} _ {\mathbf {K}}, 0 \right\} \tag {14.68} \\ = \mathbf {P} (t, s) \tilde {\mathbb {E}} _ {t} ^ {(s)} \quad \begin{array}{c} n \\ j = 1 \end{array} \mathbf {P} (s, T _ {j}) \quad \tilde {\mathbb {E}} _ {t} [ \max \{w
(s) - w _ {K}, 0 \} ] \\ = \underset {\mathbf {j} = 1} {\overset {n} {\operatorname {P}}} \left(\mathbf {t}, \mathbf {T} _ {\mathbf {j}}\right) \tilde {\mathbb {E}} _ {\mathbf {t}} [ \max \{\mathbf {w} (\mathbf {s}) - \mathbf {w} _ {\mathbf {K}}, 0 \} ] \\ \end{array}
$$ where $\tilde{\mathbb{E}}_t$ is the swap measure in which the annuity (i.e. $\mathbf{\Pi}_{\mathbf{j} = 1}^{\mathsf{n}}\mathbf{P}(\mathbf{s},\mathbf{T}_{\mathbf{j}})$, symbolized as) is the numeriare. Then it is clear that the following result holds:

$$
\begin{array}{l} w _ {j, n} = \begin{array}{l} n \\ j = 1 \\ n \end{array} P (t, T _ {j}) w
(t) _ {1} - w \tag {14.69} \\ = \begin{array}{c} n \\ j = 1 \end{array} \left(t, s, T _ {j}\right) \begin{array}{c} w
(t) \\ P (t, s) \end{array} 1 - w _ {K} \\ \end{array}
$$ where ${}_{1}$ and ${}_{2}$ are in-the-money probabilities of the swaption. If the swap rate follows a log-normal distribution, then equation (14.69) can be written as the Black-like formula as follows:

$$
\mathbf {c} _ {\mathrm {w}, \mathrm {j}, \mathrm {n}} = \begin{array}{llllll} & \mathrm {n} \\ & \mathrm {j} = 1 & (\mathrm {t}, \mathrm {s}, \mathrm {T} _ {\mathrm {j}}) & \frac {\mathrm {w} (\mathrm {t})}{\mathrm {P} (\mathrm {t}, \mathrm {s})} \mathbf {N} & \frac {\ln \mathrm {w} (\mathrm {t}) - \ln \mathrm {w} _ {\mathrm {K}} - \ln \mathrm {P} + 1 / 2 \mathrm {v} _ {\mathrm {w}, \mathrm {j}} ^ {2}}{\mathrm {v} _ {\mathrm {w}, \mathrm {j}}} & - \mathrm {w} _ {\mathrm {K}} \mathbf {N} \end{array} \begin{array}{llllll} & \ln \mathrm {w} (\mathrm {t}) - \ln \mathrm {w} _ {\mathrm {K}} - \ln \mathrm {P} - 1 / 2 \mathrm {v} _ {\mathrm {w}, \mathrm {j}} ^ {2} \\ & \frac {\ln \mathrm {w} (\mathrm {t}) - \ln \mathrm {w} _ {\mathrm {K}} - \ln \mathrm {P} - 1 / 2 \mathrm {v} _ {\mathrm {w}, \mathrm {j}} ^ {2}}{\mathrm {v} _ {\mathrm {w}, \mathrm {j}}} \\ & (1 4.70) \end{array}
$$ where $\mathsf{v}_{\mathsf{w},\mathsf{j}}^2 = \tilde{\mathbb{V}}^{(\mathsf{T}_\mathsf{j})}[\ln \mathsf{w}(\mathsf{T}_\mathsf{j})]$. For equation (14.69) (or (14.70)) to be true, we need, under the swap/annuity measure, that the swap rate is a martingale:

$$
\mathbf {w} (\mathbf {t}) = \tilde {\mathbb {E}} _ {\mathbf {t}} [ \mathbf {w} (\mathbf {s}) ] \tag {14.71}
$$ with the following Radon-Nikodym derivative:

$$
(s) = \exp - _ {t} ^ {s} r
(u) du \frac {\underset {j = 1} {n} P \left(s, T _ {j}\right)}{\underset {j = 1} {n} P \left(t, T _ {j}\right)} \tag {14.72}
$$

As a result, we have:

$$
\begin{array}{l} \hat {\mathbb {E}} _ {t} \exp - \begin{array}{cc} s & \\ t & \end{array} r
(u) du \quad \frac {n _ {j = 1} P (s, T _ {j})}{n _ {j = 1} P (t, T _ {j})} w
(s) \\ = \hat {\mathbb {E}} _ {t} \exp - \int_ {t} ^ {s} r
(u) du \frac {\int_ {j = 1} ^ {n} P \left(s, T _ {j}\right)}{\int_ {j = 1} ^ {n} P \left(t, T _ {j}\right)} \tilde {\mathbb {E}} _ {t} [ w
(s) ] \tag {14.73} \\ = \tilde {\mathbb {E}} _ {t} [ w
(s) ] \\ \end{array}
$$

It is easy to verify that $\hat{\mathbb{E}}_t[(s)] = 1$ as required. Since we know that:

$$ w
(s) = \frac {1 - P \left(s, T _ {n}\right)}{\underset {j = 1} {\overset {n} {P}} \left(s, T _ {j}\right)}
$$ and hence equation (14.73) can be alternatively derived as:

$$
\begin{array}{l} \hat {\mathbb {E}} _ {t} \exp - \begin{array}{cc} s & \\ t & \end{array} r
(u) du \quad \frac {\underset {j = 1} {n} P (s, T _ {j})}{\underset {j = 1} {n} P (t, T _ {j})} w
(s) \\ = \hat {\mathbb {E}} _ {t} \exp - \int_ {t} ^ {s} r
(u) du \frac {1 - P \left(s, T _ {n}\right)}{\int_ {j = 1} ^ {n} P \left(t, T _ {j}\right)} \\ = \mathbf {P} (t, s) \frac {1}{\underset {\mathbf {j} = 1} {n} \mathbf {P} (t, T _ {j})} \tilde {\mathbb {E}} _ {t} ^ {(s)} [ 1 - \mathbf {P} (s, T _ {n}) ] \\ = P (t, s) \frac {1 - \left(t, s, T _ {n}\right)}{n} \tag {14.74} \\ = \frac {P (t, s) - P (t, T _ {n})}{\underset {j = 1} {\overset {n} {p}} P (t, T _ {j})} \\ = w
(t) - \frac {1 - P (t, s)}{\underset {j = 1} {\overset {n} {P}} (t, T _ {j})} \\ \mathbf {w}
(t) \\ \end{array}
$$ where the last approximation holds as $n$. Combining equations (14.73) and (14.74), we can see that $\tilde{\mathbb{E}}_t[w(s)] = w(t)$ only if $n$. In other words, the swap measure is exact only under either infinity maturity or continuous frequency.

# Swaption

Similar to cap valuation, here we demonstrate that the correct swaption valuation is to recognize the swaption contract is a put option on a coupon bond (as opposed to a call option on the swap rate). We first note that the value of a swap at any point in time after time $t$ is (say $u$ ) is:

$$
\begin{array}{l} V
(u) = (w
(u) - w
(t) ) \begin{array}{c} n \\ j = 1 \end{array} P (u, T _ {j}) \\ = \quad w
(u) \quad \begin{array}{c} n \\ j = 1 \end{array} P \left(u, T _ {j}\right) + P \left(u, T _ {n}\right) - w
(t) \quad \begin{array}{c} n \\ j = 1 \end{array} P \left(u, T _ {j}\right) + P \left(u, T _ {n}\right) \\ = \quad \begin{array}{c} n \\ j = 1 \end{array} P (u, T _ {j}) f (u, T _ {j - 1}, T _ {j}) + P (u, T _ {n}) - w
(t) \quad \begin{array}{c} n \\ j = 1 \end{array} P (u, T _ {j}) + P (u, T _ {n}) \\ = \text {floatingrate bond - fixedrate bond} \\ = 1 - \left(u, \underline {{T}}; w
(t) \right) \tag {14.75} \\ \end{array}
$$

Hence, the swaption payoff is:

$$
\max \left\{\mathrm {w} (\mathrm {u}) - \mathrm {w} _ {\mathrm {K}}, 0 \right\} \quad_ {\mathrm {j} = 1} ^ {\mathrm {n}} \mathrm {P} \left(\mathrm {u}, \mathrm {T} _ {\mathrm {j}}\right) = \max \left\{1 - \left(\mathrm {u}, \underline {{\mathrm {T}}}; \mathrm {w} _ {\mathrm {K}}\right), 0 \right\} \tag {14.76}
$$ which is a put option on a coupon bond with the strike price equal to one. The volatility for the coupon bond is usually $\overline{\mathbb{V}[\ln(s, \underline{I}; c)]}$. Unfortunately this cannot be solved analytically but only numerically.

In a single factor a ne framework, we can employ Jamshidian's theorem (1989) which turns a coupon bond option into a portfolio of zero coupon bond options (see Chapter??). An a ne model for the bond can be written as $\mathsf{P}(\mathsf{t},\mathsf{T}_{\mathbf{j}}) = \mathsf{A}(\mathsf{t},\mathsf{T}_{\mathbf{j}})\mathrm{e}^{-\mathsf{r}(\mathsf{t})\mathsf{B}(\mathsf{t},\mathsf{T}_{\mathbf{j}})}$ where $\mathsf{A}(\mathsf{t},\mathsf{T}_{\mathbf{j}})$ and $\mathsf{B}(\mathsf{t},\mathsf{T}_{\mathbf{j}})$ are deterministic functions. The exact functional forms of $\mathsf{A}(\mathsf{t},\mathsf{T}_{\mathbf{j}})$ and $\mathsf{B}(\mathsf{t},\mathsf{T}_{\mathbf{j}})$ depend on the specification of the model. A general form is provided by Du e and Kan (1996) where $\mathsf{A}(\mathsf{t},\mathsf{T}_{\mathbf{j}})$ and $\mathsf{B}(\mathsf{t},\mathsf{T}_{\mathbf{j}})$ are solutions to two ordinary di erential equations. The Vasicek model is the simplest form in the a ne family (see Chapter?? for details.)

It is well-known in the interest rate world that the cap/floor and swaption markets do not provide consistent log-normal quotes. In other words, using cap quotes (based on Black volatility), one cannot consistently price swaptions. There have been various proposals (such as Brigo and Mercurio, (2006)) that try to reconcile the two markets. However, these are mainly approximations that lack of a coherent underlying model. See Chen, Hsieh, Huang, and Huang (2019), for detailed discussions.

# 14.8 Appendix

# 14.8.1 Stock Option Pricing When The Interest Rate Follows The Ho-Lee Model

In this appendix, we show the equity option pricing model when the interest rate follows the Ho-Lee model. This is a continuation of an Appendix in Chapter?? In an Appendix of Chapter??, we show the equity option pricing model when the interest rate follows the Vasicek model. The Vasicek model is an "equilibrium" model but the Ho-Lee model is a no-arbitrage model. We demonstrate the link between the "equilibrium" version of the Ho-Lee model in this Chapter. Now, we shall use this version to derive the equity option model.

From Chapter??,

$$
V (t, T) = \begin{array}{l} T \\ t \end{array} \quad \frac {P _ {r} (u, T)}{P (u, T)} ^ {2} - 2 \quad \frac {P _ {r} (u, T)}{P (u, T)} + ^ {2} du \tag {14.77}
$$

From equation (??):

$$
\frac {\mathrm {P} _ {\mathrm {r}} (\mathrm {u}, \mathrm {T})}{\mathrm {P} (\mathrm {u}, \mathrm {T})} = - (\mathrm {T} - \mathrm {t}) \tag {14.78}
$$

Hence,

$$
\begin{array}{rl} \mathbf {V} (\mathbf {t}, \mathbf {T}) & = \begin{array}{l} ^ {\mathsf {T}} \\ \mathbf {t} \\ 2 \end{array} ^ {2} (\mathbf {T} - \mathbf {u}) ^ {2} + 2 \quad (\mathbf {T} - \mathbf {u}) + ^ {2} \mathbf {du} \\ & = \frac {1}{3} (\mathbf {T} - \mathbf {t}) ^ {3} + \quad (\mathbf {T} - \mathbf {t}) ^ {2} + ^ {2} (\mathbf {T} - \mathbf {t}) \end{array} \tag {14.79}
$$

To complete the formula, we write the option model as follows with the substitution of the variance:

$$
C
(t) = S
(t) N \left(d _ {1}\right) - P (t, T) KN \left(d _ {2}\right) \tag {14.80}
$$ where

$$
\mathbf {d} _ {1} = \frac {\ln \mathbf {S} (\mathbf {t}) - \ln \mathbf {P} (\mathbf {t}, \mathbf {T}) + \mathbf {V} (\mathbf {t}, \mathbf {T}) / 2}{\overline {{\mathbf {V}}} (\mathbf {t}, \mathbf {T})}
$$

$$
\mathbf {d} _ {2} = \mathbf {d} _ {1} - \mathbf {V} (\mathbf {t}, \mathbf {T})
$$

# 14.8.2 Proofs Of Lemmas

We prove that $(\mathbf{t},\mathbf{T_i},\mathbf{T_j})$ is $\mathsf{T}_{\mathrm{i}}$ -martingale. For $t < s \leqslant T_{j}$

$$
\begin{array}{l} \tilde {\mathbb {E}} _ {t} ^ {(T _ {i})} [ (s, T _ {i}, T _ {j}) ] = \tilde {\mathbb {E}} _ {t} ^ {(T _ {i})} \frac {P (s, T _ {j})}{P (s, T _ {i})} \\ = \frac {1}{P (t, T _ {i})} \hat {\mathbb {E}} _ {t} \exp - \begin{array}{l} T _ {i} \\ t \end{array} r
(u) du \frac {P (s, T _ {j})}{P (s, T _ {i})} \\ = \frac {1}{P (t, T _ {i})} \hat {\mathbb {E}} _ {t} \exp - \begin{array}{l} T _ {i} \\ t \end{array} r
(u) du \frac {\hat {\mathbb {E}} _ {s} \exp - s ^ {T _ {j}} r
(u) du}{\hat {\mathbb {E}} _ {s} \exp - s ^ {T _ {i}} r
(u) du} \\ = \frac {1}{\mathbf {P} \left(\mathbf {t}, \mathbf {T} _ {\mathbf {i}}\right)} \hat {\mathbb {E}} _ {\mathbf {t}} \quad \hat {\mathbb {E}} _ {\mathbf {s}} \quad \exp \quad - \quad_ {\mathbf {t}} ^ {\mathsf {T} _ {\mathbf {i}}} \mathbf {r} (\mathbf {u}) \mathbf {du} \quad \frac {\hat {\mathbb {E}} _ {\mathbf {s}} \quad \exp \quad - \quad_ {\mathbf {u}} ^ {\mathsf {T} _ {\mathbf {j}}} \mathbf {r} (\mathbf {u}) \mathbf {du}}{\hat {\mathbb {E}} _ {\mathbf {s}} \quad \exp \quad - \quad_ {\mathbf {s}} ^ {\mathsf {T} _ {\mathbf {i}}} \mathbf {r} (\mathbf {u}) \mathbf {du}} \\ = \frac {1}{P (t, T _ {i})} \hat {\mathbb {E}} _ {t} \exp - \int_ {t} ^ {s} r
(u) du \hat {\mathbb {E}} _ {T} \exp - \int_ {s} ^ {T _ {i}} r
(u) du \times \\ \begin{array}{ccc} \hat {\mathbb {E}} _ {s} & \exp & - _ {s} ^ {T _ {j}} r
(u) du \\ \hline \hat {\mathbb {E}} _ {s} & \exp & - _ {s} ^ {T _ {i}} r
(u) du \end{array} \\ = \frac {1}{P (t, T _ {i})} \hat {\mathbb {E}} _ {t} \quad \hat {\mathbb {E}} _ {s} \exp - \int_ {t} ^ {s} r
(u) du \exp - \int_ {s} ^ {T _ {j}} r
(u) du \\ = \frac {P (t, T _ {j})}{P (t, T _ {i})} = (t, T _ {i}, T _ {j}) \tag {14.81} \\ \end{array}
$$

Next, we prove that $F(t, T_i, T_j)$ is $T_j$ -martingale. For $t < s \leqslant T_j$,

$$
\begin{array}{l} \tilde {\mathbb {E}} _ {\mathbf {t}} ^ {\left(\mathsf {T} _ {\mathbf {j}}\right)} \left[ \mathsf {F} \left(\mathbf {s}, \mathsf {T} _ {\mathbf {i}}, \mathsf {T} _ {\mathbf {j}}\right) \right] = \tilde {\mathbb {E}} _ {\mathbf {t}} ^ {\left(\mathsf {w}\right)} \frac {\mathsf {P} \left(\mathbf {s}, \mathsf {T} _ {\mathbf {i}}\right)}{\mathsf {P} \left(\mathbf {s}, \mathsf {T} _ {\mathbf {j}}\right)} \\ = \frac {1}{P (t, T _ {j})} \hat {\mathbb {E}} _ {t} \exp - \begin{array}{l} ^ {T _ {j}} \\ t \end{array} r
(u) du \frac {P (s, T _ {i})}{P (s, T _ {j})} \\ = \frac {1}{\mathbf {P} (t, T _ {j})} \hat {\mathbb {E}} _ {t} \exp - \begin{array}{l} ^ {T _ {j}} \\ t \end{array} r
(u) du \frac {\hat {\mathbb {E}} _ {s} \exp - \begin{array}{l} ^ {T _ {i}} \\ s \end{array} r
(u) du}{\hat {\mathbb {E}} _ {s} \exp - \begin{array}{l} ^ {T _ {j}} \\ s \end{array} r
(u) du} \\ = \frac {1}{P (t, T _ {j})} \hat {\mathbb {E}} _ {t} \quad \hat {\mathbb {E}} _ {s} \quad \exp \quad - \quad_ {t} ^ {T _ {j}} r
(u) du \quad \frac {\hat {\mathbb {E}} _ {s} \quad \exp \quad - \quad_ {s} ^ {T _ {i}} r
(u) du}{\hat {\mathbb {E}} _ {s} \quad \exp \quad - \quad_ {s} ^ {T _ {j}} r
(u) du} \\ = \frac {1}{P (t, T _ {j})} \hat {\mathbb {E}} _ {t} \exp - \int_ {t} ^ {s} r
(u) du \hat {\mathbb {E}} _ {s} \exp - \int_ {s} ^ {T _ {j}} r
(u) du \times \\ \begin{array}{cccc} \hat {\mathbb {E}} _ {s} & \exp & - & _ {s} ^ {T _ {i}} r
(u) du \\ \hline \hat {\mathbb {E}} _ {s} & \exp & - & _ {s} ^ {T _ {j}} r
(u) du \end{array} \\ = \frac {1}{P (t, T _ {j})} \hat {\mathbb {E}} _ {t} \quad \hat {\mathbb {E}} _ {s} \exp - \int_ {t} ^ {s} r
(u) du \exp - \int_ {s} ^ {T _ {i}} r
(u) du \\ = \frac {\mathrm {P} \left(\mathrm {t}, \mathrm {T} _ {\mathrm {i}}\right)}{\mathrm {P} \left(\mathrm {t}, \mathrm {T} _ {\mathrm {j}}\right)} = \mathrm {F} \left(\mathrm {t}, \mathrm {T} _ {\mathrm {i}}, \mathrm {T} _ {\mathrm {j}}\right) \tag {14.82} \\ \end{array}
$$

Given,

$$
\tilde {\mathbb {E}} _ {t} ^ {(s)} [ (T, s, w) ] = (t, s, w) \tag {14.83}
$$ we have:

$$
\tilde {\mathbb {E}} _ {\mathbf {t}} ^ {(s)} \frac {1}{F (T, s, w)} = \frac {1}{F (t, s, w)} = \frac {1}{\tilde {\mathbb {E}} _ {\mathbf {t}} ^ {(w)} [ F (T, s, w) ]} \tag {14.84}
$$

Hence the connection of the two measures is the reciprocal. Under the
(log) normality case, this connection is just volatility.

# Chapter 15

# Credit And Prepayment Models

# 15.1 Introduction

Building a reliable and accurate credit risk model is crucial in managing credit risk.

# 15.1.1 Rating Agencies

S&P Global Ratings (previously Standard & Poor's) is an American credit rating agency
(CRA) and a division of S&P Global that publishes financial research and analysis on stocks, bonds, and commodities. S&P is considered the largest of the Big Three credit-rating agencies, which also include Moody's Investors Service and Fitch Ratings. Its head office is located on 55 Water Street in Lower Manhattan, New York City.

Moody's Investors Service, often referred to as Moody's, is the bond credit rating business of Moody's Corporation, representing the company's traditional line of business and its historical name. Moody's Investors Service provides international financial research on bonds issued by commercial and government entities. Moody's, along with Standard & Poor's and Fitch Group, is considered one of the Big Three credit rating agencies.

Fitch Ratings Inc. is an American credit rating agency and is one of the "Big Three credit rating agencies", the other two being Moody's and Standard & Poor's. It is one of the three nationally recognized statistical rating organizations
(NRSRO) designated by the U. S. Securities and Exchange Commission in
1975. Morningstar, Inc. is an American financial services firm headquartered in

Chicago, Illinois, United States. It provides an array of investment research and investment management services. Joe Mansueto founded Morningstar in
1984. In 2010, Morningstar acquired Realpoint, LLC, a former division of private-equity giant Capmark Finance and a nationally recognized statistical rating organization
(NRSRO) . The firm was rebranded as Morningstar Credit Ratings and competes with S&P, Moody's Investors Service, Fitch Ratings and similar Wall Street firms to provide research and ratings of structured debt products, including mortgage-backed securities and asset-backed securities. Today, Morningstar Credit Ratings issues credit ratings on both structured financial products (CMBS, RMBS, CLOs) and corporate/financial institutions. On May 29,2019, Morningstar publicly announced its intention to significantly expand the breadth and scope of its ratings business through a $669 million acquisition of DBRS.

Egan-Jones Ratings Company, also known as EJR, was founded in 1995 and actively rates the credit worthiness of approximately $2000+$ high yield and high grade U. S. corporate debt issuers. Egan-Jones positions itself as unique among nationally recognized statistical rating organizations
(NRSROs) for being wholly investor-supported, a structure designed to minimize the potential for conflicts of interest in assessing credit quality.

# 15.1.2 Credit Bureaus

# Investopedia:

People talk a lot about credit bureaus. What do they do? How do they die? And why are there three of them? (Actually, there are a lot more than that, but it's mainly a certain trio that a ects most consumers' lives.) Let's take a closer look at these entities, what they do, and how they do it.

Credit rating agencies are di erent than credit reporting bureaus. Credit ratings assess a company or country's ability to repay a loan. Credit reporting determines an individual's credit score.

The three credit reporting agencies are TransUnion, Equifax, and Experian.

In order to get the best loan terms available, bring all three credit scores to your loan appointment. Because of their reporting methods, it is common to have a different credit score across all three bureaus.

# 15.2 Corporate Credit

Public corporations (i.e. stocks are publicly traded) are the easiest group to model. Their financial information is publicly available by law and hence they are most transparent. Private firms, on the contrary, are di cult to analyze because of the lack their financial information. As a result, tools for analyzing public firms are much more developed and reliable than those for the private firms.

# 15.2.1 Public Firms

Reduced-form Models

Structural Models

# 15.2.2 Private Firms

Private firms are usually smaller (with few exceptions such as Dell) and less transparent.

Some firms have accounting data. Use logit.

$$
\mathbf {y} = \frac {1}{1 + \exp \left(- \begin{array}{cc} - & n \\ i = 0 & i \end{array} x _ {i}\right)}
$$ where $x_i$ 's are financials of the company and $y$ is a dummy variable (0 for no-default and 1 for default). This is known as the logistic regression. Yet it cannot be performed as an OLS but must go through the maximum likelihood estimation.

Could we use Z score for this? Z score is a default prediction model. It classifies firms into two groups: default likely and default unlikely. Yet, Z score is a continuous measure and hence can be used as an indicator for credit quality.

# Kmv

In case of private companies, for which stock price data are generally not available, KMV uses essentially the same approach as for quoted firms. However, the market value of assets and asset volatility are estimated from the firm's observed characteristics (e.g. industry mix, size and geographic region) and are based on observations of trends among public firms.

Some firms have no accounting data. Benchmarking is the usual method for private firms. Benchmarking refers to using the credit rating of a publicly traded firm in the same industry with similar products.

# 15.3 Retail Credit

Retail credit refers to individuals or small in the neighborhood "mom-and-pop" stores. These borrowers are very diverse and hard to evaluate their credit quality. Hence, individual risks cannot be managed individually but must be managed by diversification (i.e. in large and diverse quantities) or through collateral.

# 15.3.1 Fico

# Wikipedia:

FICO (legal name: Fair Isaac Corporation), originally Fair, Isaac and Company, is a data analytics company based in San Jose, California focused on credit scoring services. It was founded by Bill Fair and Earl Isaac in
1956. Its FICO score, a measure of consumer credit risk, has become a fixture of consumer lending in the United States.

In 2013, lenders purchased more than 10 billion FICO scores and about 30 million American consumers accessed their scores themselves.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/dc93e2f8143eb00d5a014474e479172082a33145c303b1c4d78fb76d718b96ae.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/62d7bf2ef20135a48e9cfcf4196b9cd302328a09a381e5249097f5f3c783c281.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/6e16afdb1e66d3f0d71dc9aca8e43187e403916aaca27cb8448dfd267f4496d0.jpg)

Figure 15.1: FICO Score Distribution

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/45770fbc357dd02269ad09efe06be04a2afbda6285094ca1de202a4104020fd5.jpg)

FICO Scores are calculated using many di erent pieces of credit data in your credit report. This data is grouped into five categories: payment history $(35\%)$, amounts owed $(30\%)$, length of credit history $(15\%)$, new credit $(10\%)$ and credit mix $(10\%)$.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/7f46cf39cc27f33e100f7d4f9102fa41297bf185456a392b5f21c8170c042086.jpg)

Figure 15.2: FICO

# 15.3.2 Mortality Rate

Mortality rate is widely used by insurance companies to estimate life expectancy and then set the insurance premiums for life insurance policies. This is also used in ABS and mortgages (on a monthly basis, known as single monthly mortality
(SMM) rate which will be discussed in Chapter 12) for prepayment as well as default.

The mortality rate is very similar to the intensity parameter in the Poisson process. In other words, using the mortality to measure credit risk is identical to assuming Poisson jumps for default. In this regard, the method used for retail credit is the same as that used in corporate credit (e.g. Jarrow-Turnbull model).

However, in corporate credit, each company has its own mortality rate, but in retail credit, mortality rate is applied to a
(hopefully) homogeneous group of individuals or small private firms.

# 15.3.3 Constant Default Rate

The constant default rate
(CDR) is the percentage of mortgages within a pool of loans in which the mortgagors
(borrowers) have fallen more than 90 days behind in making payments to their lenders. These pools of individual outstanding mortgages are created by financial institutions that combine loans to create mortgage-backed securities
(MBS) , which they sell to investors.

An "implied" CDR will be discussed in Chapter 12.

# 15.3.4 Pay-As-You-Go
(Paug) As mentioned earlier, because of lack of data, retail credit is usually analyzed in pools (hopefully homogeneous). As a result, defaults occur "continuously" in a pool. Unlike a corporation for which default means cease to exist, a default in a pool is much like a small reduction in size. As a result, for a CDS protection (against whole pool), it is not a large lump sum payment but a small fraction of the pool size.

PAUG ("Pay As You Go") refers to application of credit derivatives technology to structured finance products. It works similarly to a credit default swap
(CDS) with the reference entity being a structured finance product such as ABS, commercial mortgage-backed security
(CMBS) , residential mortgage-backed security
(RMBS) , etc. The trigger events in PAUG can be classified mainly as "credit events" and "floating rate payment events". PAUG is a settlement methodology for CDS on ABS reference entities.

# 15.3.5 Foreclosure

# Wikipedia:

Foreclosure is a legal process in which a lender attempts to recover the balance of a loan from a borrower who has stopped making payments to the lender by forcing the sale of the asset used as the collateral for the loan.

# 15.3.6 Real Estate Owned
(Reo) # From Wikipedia,

Real estate owned, or REO, is a term used in the United States to describe a class of property owned by a lender—typically a bank, government agency, or government loan insurer—after an unsuccessful sale at a foreclosure auction. A foreclosing beneficiary will typically set the opening bid at a foreclosure auction for at least the outstanding loan amount. If there are no bidders that are interested, then the beneficiary will legally repossess the property. This is commonly the case when the amount owed on the home is higher than the current market value of the foreclosure property, such as with a mortgage loan made at a high loan-to-value during a real estate bubble. As soon as the beneficiary repossesses the property it is listed on their books as REO and categorized as an asset. (See non-performing asset).

# 15.4 Prepayment Models

Loans and be prepaid. In such a case, banks earn less interests, although the principal is paid back early. There are many reasons why a borrower will prepay before the loan is due. Basically we classify the reasons into two broad caggetories:

1. economic reasons
2. non-economic reasons

The former mainly refers to refinancing. When interest rates drop (and so does the mortgage rate), the borrower can refinance to lower his/her interest payments.

The latter contains a number of different reasons. The commonly cited ones are:

(a) change of marital status – a newlywed coupon will likely to buy a larger home and a divorced couple will do the opposite and each case will result in selling the existing properties and terminate the mortgage.
(b) addition (or reduction) of members - couple after having a child will likely to move to suburbs to gain living space and children leaving home will result in downsize and each case will result in selling the existing properties and terminate the mortgage
(c) relocation – this can be change of jobs which will lead to selling the property and terminate the mortgage.

Non-economic reasons cannot be modeled easily using derivative pricing models. Hence large amount of data mining is the common methodology in this area.

Even refinance which is purely economical cannot be easily modeled. This is because people are generally not sensitive to financial information. Even when rates are lower, without aggressively paying attention, regular people will not know. Another big factor is refinance costs. Refinancing isn't free. Only when savings on interests outweigh the refinance costs, it is beneficial to refinance. As a result, although one can use an interest rate model introduced in Chapter 14, in reality, those models don't work well.

Accordingly, econometric methods employing large amount of data are the common practice in modeling the prepayment behavior. The key factors that determine prepayment rates are:

(1) refinancing incentive,
(2) seasonal variations,
(3) seasoning of the mortgage pool, and

(4) burnout e ect.

A general model is logistic:

$$
\begin{array}{l} p = \frac {\exp ( \begin{array}{cc} n & \\ i = 1 & i \end{array} x _ {i})}{1 + \exp ( \begin{array}{cc} n & \\ i = 1 & i \end{array} x _ {i})} \\ = \frac {1}{1 + \exp \left(- \begin{array}{cc} & n \\ & i = 1 \end{array} \quad i X _ {i}\right)} \\ \end{array}
$$

# 15.4.1 Richard And Roll Model

# Mathworks:

While prepayment modeling often involves complex and sophisticated modeling, often at the loan level, this example uses a slightly modified approach based on the model proposed by Richard and Roll in [6].

Richard and Roll propose a multiplicative model of the following:

CPR = RefiIncentive $\times$ SeasoningMultiplier $\times$ SeasonalityMultiplier $\times$ BurnoutMultiplier

For the custom model in this example, the Burnout Multiplier, which describes the tendency of prepayment to slow when a significant number of homeowners have already refinanced, is ignored and the first three terms are used.

The refinancing incentive is a function of the ratio of the coupon-rate of the mortgage to the available mortgage rate at that particular point in time. For example, the Oce of Thrift Supervision
(OTS) proposes the following model:

$$
\operatorname {R efi} =. 2406 -. 1389 \times \arctan (5.952 \quad (1.089 - \frac {\text {C oupon R ate}}{\text {M orgage R ate}}))
$$

# 15.4.2 Andrew Davidson Prepayment Model

Andrew Davidson is a financial innovator and leader in the development of financial research and analytics. He has worked extensively on mortgage-backed securities product development, valuation and hedging. He is president of Andrew Davidson & Co., Inc., a New York firm specializing in the application of analytical tools to investment management, which he founded in
1992. Andrew Davidson & Co., Inc. turns mortgage data into investment insight. The firm created VECTORS® Analytics, a set of proprietary tools including the LoanDynamics Model for credit-sensitive mortgage securities, prepayment and option-adjusted spread
(OAS) models for fixed-rate mortgages, adjustable-rate mortgages, collateralized mortgage obligations
(CMOs) , and asset-backed securities
(ABS) . Over 150 financial institutions depend on VECTORS® Analytics to help manage risk and value securities.

The company also provides consulting advice to financial institutions in the development and implementation of investment management and risk management strategies. They also work on a variety of fixed-income trading and valuation analyses. Customers of the firm include businesses of all sizes including many of the largest and most sophisticated financial institutions.

Andrew was instrumental in the creation of the Freddie Mac and Fannie Mae risk-sharing transactions: STACR and CAS. These transactions allow Freddie Mac and Fannie Mae to attract private capital to bear credit risk, even as they remain in government conservatorship. Andrew is also active in other dimensions of GSE reform and has testified before the Senate Banking Committee on multiple occasions. Andrew also helped establish the Structured Finance Industry Group and served on the Executive Committee at its inception.

For six years Andrew worked at Merrill Lynch, where he was a Managing Director in charge of a staff of 60 financial and system analysts. In this role, he produced research reports and sophisticated analytical tools including prepayment and option-adjusted spread models, portfolio analysis tools, and was also responsible for the development of trading and risk management systems for the mortgage desk covering ARMs, CMOs, pass-throughs, IOs/POs and OTC options.

Andrew was previously a financial analyst in Exxon's Treasurer's Department. He received an MBA in Finance at the University of Chicago and a BA in Mathematics and Physics at Harvard.

He is co-author of the books Mortgage Valuation Models: Embedded Options, Risk and Uncertainty; Securitization: Structuring and Investment Analysis; and Mortgage-Backed Securities: Investment Analysis and Valuation Techniques. He has contributed to The Handbook of Mortgage-Backed Securities and other publications.

# 15.4.3 Qrm Prepayment Model

QRM's Mortgage Banking Practice includes the entire secondary marketing process—from pricing, risk reporting, trade management, pool and hedge optimization, to loan delivery. QRM's clients have successfully hedged trillions of dollars of mort gage originations across a multitude of economic conditions, bringing consistency to the bottom-line.

QRM clients create optimal secondary marketing strategies that produce a predictable flow of profits limited only by the amount of business coming in and the degree of competition in pricing. Clients accurately price and measure the exposure of all their loan products and use robust best execution analysis to accurately hedge, pool, and deliver those loans. QRM clients make informed decisions which preserve profitability and decrease earnings volatility, thereby increasing shareholder value.

QRM clients model virtually every mortgage product or related hedge instrument, including all conforming, jumbo, alt-A, sub-prime, hybrid, reverse, interest-only, and other adjustable rate loan types. As part of that analysis, QRM clients model all possible loan delivery options, including mortgage securities, cash trades, whole loan bids, assignments-of-trades, and CMO securitization. Our Trading Analytics Research group is committed to dissecting new financial instruments and passing the best practice modeling methods on to our clients.

# 15.4.4 Blackrock Prepayment Model

In 2000, BlackRock launched BlackRock Solutions, the analytics and risk management division of BlackRock, Inc. The division grew from the Aladdin System (which is the enterprise investment system), Green Package (which is the Risk Reporting Service) PAG (portfolio analytics) and AnSer (which is the interactive analytics). BlackRock Solutions
(BRS) serves two roles within BlackRock. First, BlackRock Solutions is the in-house investment analytics and "process engineering" department for BlackRock which works with their portfolio management teams, risk and quantitative analysis, business operations and every other part of the firm that touches the investment process. Second, BlackRock Solutions
(BRS) and the three primary divisions are services that o ered to institutional clients. As of 2013, the platform had nearly 2,000 employees.

BlackRock di erentiates itself from other asset managers by claiming its risk management is not separate. Risk management is the foundation and cornerstone of the firm's entire platform.[60] Aladdin keeps track of 30,000 investment portfolios, including BlackRock's own along with those of competitors, banks, pension funds, and insurers. According to The Economist, as at December 2013, the platform monitors almost 7 percent of the world's $225 trillion of financial assets.

BlackRock Solutions was retained by the U. S. Treasury Department in May 2009 to manage the toxic mortgage assets (i.e. to analyze, unwind, and price) that were owned by Bear Stearns, AIG, Inc., Freddie Mac, Morgan Stanley, and other financial firms that were aected in the 2008 financial crisis.

# Chapter 16

# Numerical Models

# 16.1 Introduction

Since fixed income derivatives are in general complex, they do not have easy closed-form solutions. The majority of them require numerical methods to obtain their prices.

# 16.2 Lattice

Lattice models are most e cient to evaluate American style derivatives.

# 16.2.1 Binomial

For fixed-income derivatives, given the complexity of the yield curve and volatility surface, the equity binomial model
(CRR) does not su ce.

1. Ho-Lee
(normal)
2. Black-Derman-Toy (log-normal)

# 16.2.2 Finite Difference

This is also known as the trinomial model.

1. explicit
2. implicit

# 16.3 Monte Carlo

Monte Carlo is known to solve European option problems (while lattice is for American options). Yet, there are two methods that use MC to solve American option values – the Longsta -Schwartz regression model and exogenous boundary method.

These methods, especially the LS model, are particularly important for interest rate derivatives in that many interest rate derivative contracts are very complex and must use Monte Carlo simulations to capture their complexities (e.g. path dependency). It is not possible to build a lattice model (i.e. backward induction) to evaluate these exotic interest rate derivatives.

# 16.3.1 Longsta -Schwartz

The Longsta and Schwartz adopt a clever idea (later on shown to be connected to machine learning) to overcome the problem of the MC that cannot solve for American option values. The idea is amazingly simple (and yet powerful).

In a lattice, we can easily perform backward induction and compare if it is worthwhile to exercise the option at any state and any given point in time. This is because the backward induction in a lattice computes the expected value of all future possible optimal decisions. As a result, if the exercise value is higher than such expected value (known as the continuation value), the decision is definitely optimal because the value of exercising today outweighs the best possible decision of the future.

Monte Carlo simulations cannot provide such an expected value. MC simulations can only move forwards and hence cannot be used to price American options – until Longsta and Schwartz. Longsta and Schwartz cleverly recognize that the continuation value is nothing more than a conditional expectation given the current stock price:

$$
(\mathbf {t}) = \hat {\mathbb {E}} _ {\mathbf {t}} [ \mathbf {C} (\mathbf {t} + \mathbf {dt}) | \mathbf {S} (\mathbf {t}) ]
$$ where $(t)$ is the conditional value at time $t$, which is the conditional expectation of future option price $C(t + dt)$ conditional on today's stock price $S(t)$. And today's option value is the larger of this continuation value (i.e. no exercise) or exercise value (i.e. exercise): $C(t) = \max \{
(t) , X(t) \}$ where $X(t)$ is the exercise value. If the option is a put, then $X(t) = K - S(t)$. If it is a call, then $X(t) = S(t) - K$ before any dividend is paid. The process repeats at every time step.

Basic statistic knowledge indicates that $\hat{\mathbb{E}}_t[C(t + dt)|S(t)]$ is a function of today's stock price and hence we can write the future option price and today's stock price in a regression form:

$$
\begin{array}{l} \mathbf {C} (\mathbf {t} + \mathbf {dt}) = \hat {\mathbb {E}} _ {\mathbf {t}} [ \mathbf {C} (\mathbf {t} + \mathbf {dt}) | \mathbf {S} (\mathbf {t}) ] + \mathbf {e} (\mathbf {t} + \mathbf {dt}) \\ = f (S
(t) ) + e (t + dt) \\ = \mathbf {b} _ {0} + \mathbf {b} _ {1} \mathbf {S} (\mathbf {t}) + \mathbf {b} _ {2} \mathbf {S} (\mathbf {t}) ^ {2} + \mathbf {e} (\mathbf {t} + \mathbf {dt}) \\ \end{array}
$$ where $e(t + dt)$ is the error term which is assumed to follow i.i.d with 0 mean. Longsta and Schwartz propose a polynomial function for $f(S)$. As a result, at each time step, the LS regression is run and coefficients can be used to calculate the conditional value:

$$
\left(\mathbf {t}\right) = \mathbf {b} _ {0} + \mathbf {b} _ {1} \mathbf {S} (\mathbf {t}) + \mathbf {b} _ {2} \mathbf {S} (\mathbf {t}) ^ {2}
$$ which is then compared to the exercise value $X(t)$ to arrive at the option value:

$$
\mathbf {C} (\mathbf {t}) = \max \left\{\mathbf {\Gamma} (\mathbf {t}), \mathbf {X} (\mathbf {t}) \right\}
$$ and the process repeats.

Now, lets study the LS example. Eight sample paths are given for three periods, as shown in Figure 16.1a.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/598d7b6cdd6000d7be00f3521af2211350a1071b7b6215984f3b68e69831e891.jpg)

(a)
Figure 16.1: Sample Paths and Terminal Payo
(LS)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/5388ae6259cd8534e82180c9dcc357b61c5f4fc4b34608c90e4ae884db0322ed.jpg)

(b)

Given the stock values at maturity (t = 3), Figure 16.1b presents the put option values at strike price of $1.1.

Then we move backwards to $t = 2$. At $t = 2$, we must first compute the continuation value (2). This is achieved by a quadratic regression:

$$
(1) = - 1.07 + 2.983 \times \mathbf {S} (2) - 1.813 \times \mathbf {S} (2) ^ {2}
$$ which is presented in Figure 16.2a. Then, the continuation results are presented in Figure 16.2b. Comparing the continuation values with the exercise values, we achieve the option values at $t = 2$ shown in Figure 16.2c.

Regression at time 2

```latex
\begin{document}
\begin{tabular}{|c|c|c|}
\hline
Path & Y & X \\ \hline
1 & 0.00 × 0.94176 & 1.08 \\ \hline
2 & — & — \\ \hline
3 & 0.07 × 0.94176 & 1.07 \\ \hline
4 & 0.18 × 0.94176 & 0.97 \\ \hline
5 & — & — \\ \hline
6 & 0.20 × 0.94176 & 0.77 \\ \hline
7 & 0.09 × 0.94176 & 0.84 \\ \hline
8 & — & — \\ \hline
\end{tabular}
\end{document}
```

(a)
Optimal early exercise decision at time 2

```latex
\begin{document}
\begin{tabular}{|c|c|c|}
\hline
Path & Exercise & Continuation \\ \hline
1 & 0.02 & 0.0369 \\ \hline
2 & — & — \\ \hline
3 & 0.03 & 0.0461 \\ \hline
4 & 0.13 & 0.1176 \\ \hline
5 & — & — \\ \hline
6 & 0.33 & 0.1520 \\ \hline
7 & 0.26 & 0.1565 \\ \hline
8 & — & — \\ \hline
\end{tabular}
\end{document}
```

(b)
Cash-flow matrix at time 2

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
Path & t=1 & t=2 & t=3 \\ \hline
1 & — & 0.00 & 0.00 \\ \hline
2 & — & 0.00 & 0.00 \\ \hline
3 & — & 0.00 & 0.07 \\ \hline
4 & — & 0.13 & 0.00 \\ \hline
5 & — & 0.00 & 0.00 \\ \hline
6 & — & 0.33 & 0.00 \\ \hline
7 & — & 0.26 & 0.00 \\ \hline
8 & — & 0.00 & 0.00 \\ \hline
\end{tabular}
\end{document}
```

(c)

Figure 16.2: Results at $t = 2$

We repeat the same process for $t = 1$. First the quadratic regression is performed and results are in Figure 16.3a. The continuation values are reported in Figure 16.3b. Finally the option values are given in Figure 16.3c.

```latex
\begin{document}
\begin{tabular}{|c|c|c|}
\hline
Regression at time 1 & & \\ \hline
Path & Y & X \\ \hline
1 & 0.00 × 0.94176 & 1.09 \\ \hline
2 & — & — \\ \hline
3 & — & — \\ \hline
4 & 0.13 × 0.94176 & 0.93 \\ \hline
5 & — & — \\ \hline
6 & 0.33 × 0.94176 & 0.76 \\ \hline
7 & 0.26 × 0.94176 & 0.92 \\ \hline
8 & 0.00 × 0.94176 & 0.88 \\ \hline
\end{tabular}
\end{document}
```

(a)

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
Path & Stopping rule & & \\ \hline t=1 & t=2 & t=3 & \\ \hline
1 & 0 & 0 & 0 \\ \hline
2 & 0 & 0 & 0 \\ \hline
3 & 0 & 0 & 1 \\ \hline
4 & 1 & 0 & 0 \\ \hline
5 & 0 & 0 & 0 \\ \hline
6 & 1 & 0 & 0 \\ \hline
7 & 1 & 0 & 0 \\ \hline
8 & 1 & 0 & 0 \\ \hline
\end{tabular}
\end{document}
```

(c)

```latex
\begin{document}
\begin{tabular}{|c|c|c|}
\hline
Optimal early exercise decision at time 1 & & \\ \hline
Path & Exercise & Continuation \\ \hline
1 & 0.01 & 0.0139 \\ \hline
2 & — & — \\ \hline
3 & — & — \\ \hline
4 & 0.17 & 0.1092 \\ \hline
5 & — & — \\ \hline
6 & 0.34 & 0.2866 \\ \hline
7 & 0.18 & 0.1175 \\ \hline
8 & 0.22 & 0.1533 \\ \hline
\end{tabular}
\end{document}
```

(b)

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
Option cash flow matrix & & & \\ \hline
Path & t=1 & t=2 & t=3 \\ \hline
1 & 0.00 & 0.00 & 0.00 \\ \hline
2 & 0.00 & 0.00 & 0.00 \\ \hline
3 & 0.00 & 0.00 & 0.07 \\ \hline
4 & 0.17 & 0.00 & 0.00 \\ \hline
5 & 0.00 & 0.00 & 0.00 \\ \hline
6 & 0.34 & 0.00 & 0.00 \\ \hline
7 & 0.18 & 0.00 & 0.00 \\ \hline
8 & 0.22 & 0.00 & 0.00 \\ \hline
\end{tabular}
\end{document}
```

(d)

Figure 16.3: Results at $t = 1$

See Excel

# 16.3.2 Free-Bondary Pde

In an alternative (relatively unsuccessful) attempt, researchers have tried to solve American-style derivatives by using an explicit exercise boundary. The approach is built upon the nice property that option prices of any kind are solutions to a class of di erential equations which can be solved as a "free boundary problem". In other words, as long as the exercise boundary of an option is known, its price is no more than a simple integration along the exercise boundary. Unfortunately, not only is the exercise boundary of an American-style derivative unknown, but it is recursive (i.e. the boundary value at the current time depends on the boundary value at the immediately later time - resulting a recursively dependent structure of boundary values). In other words, the boundary function can only be achieved via a lattice model (e.g. binomial model). In doing so, the option is guaranteed to be exercised optimally and the valuation can hence be at the maximum. As Carr (1998), among others, points out, if we solve an American-style derivative premium as a free-boundary problem, then we can use an explicit boundary function and the American-style derivative premium is simply an integration of payoff function (e.g. put) over the boundary.

$$
\left(\mathbf {t}\right) = \hat {\mathbb {E}} _ {\mathbf {t}} \mathrm {e} ^ {- r} \max \left\{\left[[https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/ff168323143750b88c19c9e222e0be08f3daac6c760cee51d3d1e88e69a645d9.jpg| \mathbf {X} (\mathbf {\theta}), 0 \right. \right\}
$$ where $X(\cdot)$ is the exercise value at the stopping time. If it is a put option without dividends which is the case in this paper, then $X(\cdot) = K - S(\cdot)$. On the boundary, $S(\cdot) = B(\cdot)$ and hence $X(\cdot) = K - B(\cdot)$ where $B(\cdot)$ is the boundary function given exogenously. The way the boundary function works is that it serves as a stopping time. Once the stock price at time $t$ hits the boundary $B(t)$, the process stops and the option will be exercised and paid and hence the American-style derivative can be evaluated as a barrier option.

The easiest way to perform the integration is through Monte Carlo simulations. As the derivative price
(t) is given as an expected value:

$$
(t) = \frac {1}{N} \quad \begin{array}{l} N \\ j = 1 \end{array} e ^ {- r _ {j}} \max \left\{K - B
(j) , 0 \right\}
$$

We note that the recursively determined boundary function (via a lattice model) maximizes the option value, any other exogenously specified boundary function will only be "sub-optimal", that is, generating a lower value than the lattice model. This sub-optimal argument is convenient in that now we can simply try a large number of boundary functions and use the one that generates the highest option value as a good approximation.

Researchers then have tried various approximations on the exercise boundary. These approximations are explicit functions and hence can be easily integrated (and hence American-style derivative value solved for). According to a recent survey by Nunes (2008), the literature has the following functional forms:

1. Constant: $\mathbf{B}(\mathbf{t}) = \mathbf{a}_0$
2. Linear: $\mathbf{B}(\mathbf{t}) = \mathbf{a}_0 + \mathbf{a}_1\mathbf{t}$
3. Exponential: $\mathbf{B}(t) = \mathbf{a}_0\mathrm{e}^{a_1t}$
4. Exponential-constant: $a_0 + e^{a_1t}$
5. Polynomial: $\mathbf{B}(\mathbf{t}) = \begin{array}{l}\mathsf{n}\\ \mathsf{i} = 1 \end{array}$ $a_{i}t^{i - 1}$

6. Carr-Jarrow-Myneni (2008): $\mathsf{B}(t) = \min(\mathsf{K}, \frac{\mathsf{r}}{\mathsf{q}}\mathsf{K}) \mathrm{e}^{-\mathsf{a}\overline{\mathsf{T} - \mathsf{t}}} + \mathsf{E} \quad 1 - \mathrm{e}^{-\mathsf{a}\overline{\mathsf{T} - \mathsf{t}}}$

Note that the boundary is not a function of the stock price (i.e. free boundary problem). Since these boundary functions are explicit, they can be easily integrated.

Certainly the accuracy of the American value depends on the accuracy of the approximated boundary function. The problem of this approach is that there is no consensus of which functional form of the boundary can consistently be the best. Often it varies with the parameters of the option (i.e. moneyness, interest rate, time to maturity, and volatility). As a result, no conclusion can be drawn on a particular functional form.

So far the literature has not reached any consensus and the boundary seems to be payoff-specific. In other words, di erent payoff require di erent boundaries for accurate American-style derivative values. As a result, it is quite natural to allow the boundary function to be absolutely free (i.e. one value per time step). Yet this requires an optimization in high dimensions. As the number of time steps increases, the cost of computation becomes exponentially prohibitively high.

We can use the flat boundary to introduce this solution.

# 16.4 Ai/Ml Tools

Artificial intelligence and machine learning knowledge has been gradually introduced into the finance and banking industry in recent years. Many business schools have incorporated such knowledge into their curricula and yet very few can clearly articulate the strengths and weaknesses of various applications of this knowledge and worse how to pick and choose the best tools.

The most criticisms about AI/ML in finance are their non-transparency. These are complex tools and hard to explain how or why they work.

# 16.4.1 What Is Ai? Ml? And Bd?

Artificial intelligence
(AI) , machine learning
(ML) , and big data
(BD) have recently been adopted into FinTech and been the fastest growing area in finance, both in private industry and academia. While these three areas are frequently used in combinations in developing valuable applications, these three areas are fundamentally different and deserve separate research.

Strictly speaking, AI is a combination of computation
(artificial) and biology
(intelligence) which is quite different in nature from ML which is based upon statistics.
 tical methodologies. In the past, statistics have predominantly been presented in a parametric fashion, mainly due to insu cient computation power and lack of data. This has been changed recently and non-parametric statistics with powerful computation capabilities fuel the growth of machine learning. As non-parametric statistics require a large amount of data, ML and BD (such as NLP, or natural language processing) have been combined in revolutionizing the financial world. Together, they facilitate the progress of AI.

AI has four major branches:

- swarm intelligence (birds, ants, bees, fish)
- reinforcement learning (mice (in maze))
- genetic algorithm
(genes) neural networks
(neurons) These AI theories are behavioral models in that they "artificialize" natural intelligence (specified in parentheses above) which reflects biological behaviors. As a result, they are di erent from ML methodologies. The connection (and hence confusion) of these two is due to the fact that these AI models can be e cientsly used to find optimal solutions (e.g. PSO) which then are similar to ML models. Indeed, from the perspective of computation, one can hardly di erentiate one tool from the other and in many instances these two distinctly di erent theories are used in combination.

Machine learning
(ML) is very close to non-parametric statistics. In statistics, in the past parametric forms were preferred due to lack of computation power. Now with new technologies in comutation, both software (parallell computing) and hardware (GPU, graphic processing units), we expand the statistics into non-parametric areas that allow more flexible, complex models.

ML has many overlaps with statistics (or econometrics):

Monte Carlo simulations
- stochastic processes maximum likelihood
- linear programming
- principle component
(regularization) etc.

None of AI or ML can be useful without a large amount of data. Data analysis (or data science) has grown from the computer science
(theoretical) field to all walks of life. The capability of analyzing data has expanded from numerals to textuals, and further into videos. Big data
(BD) has become a field of its own which includes:

NPL
- visualization
- database technology etc.

# 16.4.2 Particle Swarm Optimization

In theory, swarm intelligence is e- cective for optimization problems in a high-dimensional space. PSO is such an application. The original version of PSO was first proposed by Eberhart and Kennedy (1995) who modify the behavioral model of swarm into an objective-seeking algorithm. Similar to Renold's, their model "artificializes" the group behavior of a flock of birds seeking food. Via bird-to-bird chirping (peer-to-peer communication), all birds fly to the loudest sound of chirping. Subsequently, Eberhart and Shi (1998) improve the model by adding an inertia term (symbolized as w later as we introduce the model) and it has become the standard PSO algo- rithm used today. Setting a proper value of the inertia term is to seek the balance between exploitation and exploration. A larger value of the inertia term gives more weight to exploration (as the bird is more likely to fly on its own) and a smaller value of the inertia term gives more weight to exploitation (as the bird intends more to fly toward other birds).

One can compare PSO to the grid search. A grid search can find the global optimum and yet it takes an exploding amount of time to reach such a solution, especially in a high-dimensional space. PSO can be regarded as a "smart grid search" where each particle performs a "stupid search" and yet by communicating with other particles and by having a large number of such particles we can reach the global optimum quickly.

Imagine we would like to measure the deepest place of a lake whose bottom has an uneven surface. A two-dimension grid search can easily find the global minimum. An alternative would be PSO. Imagine we have a number of "fish"
(particles) who swim in the lake. At each time step, all fish will measure the depth of the lake underneath them. And each fish is communicating with all the other fish to decide whose depth is the deepest
(minimum) . All fish now remember the minimum and then they swim for another time step. At each time step they update the global minimum so far. If we let these fish swim randomly for enough time, we will reach the global minimum.

In the case of the lake, we may find the grid search to be more accurate and time-ective. But in an n-dimensional lake, grid searches are becoming in-ective but the same number of fish may just do the same job with the same amount of time as in the two-dimensional lake.

Currently there have been some limited number of applications of PSO in finance, mostly in portfolio selection. In this paper, we use it for the first time in the literature to locate the exercise boundary of American-style derivatives (specifically, put option, option on min/max, and Asian option).

The PSO algorithm can be formally defined as follows. For $\mathbf{i} = 1, \dots, n$ particles and each particle is a vector of dimensions, we have:

$$
\begin{array}{l} \mathbf {v} _ {\mathbf {i}, \mathbf {j}} (\mathbf {t} + 1) = \mathbf {w} (\mathbf {t}) \mathbf {v} _ {\mathbf {i}, \mathbf {j}} (\mathbf {t}) + \mathbf {r} _ {1} \mathbf {c} _ {1} \left(\mathbf {p} _ {\mathbf {i}, \mathbf {j}} (\mathbf {t}) - \mathbf {x} _ {\mathbf {i}} (\mathbf {t})) + \mathbf {r} _ {2} \mathbf {c} _ {2} (\mathbf {g} (\mathbf {t}) - \mathbf {x} _ {\mathbf {i}, \mathbf {j}} (\mathbf {t})) \right. \\ \mathbf {x} _ {i, j} (t + 1) = \mathbf {x} _ {i, j}
(t) + v _ {i, j} (t + 1) \\ \end{array}
$$ where $\mathbf{v}_{i, j}(t)$ is velocity of the ith particle in the jth dimension at time t; $x_{i, j}(t)$ is position of the ith particle in the jth dimension at time t; w(t) is a "weight" (less than 1) which decides how the current velocity will be carried over to the next period (and usually it is set as w(t) = w(t-1) and < 1 to introduce diminishing velocity); and finally $\mathbf{r}_1, \mathbf{r}_2 \quad \mathbf{u}(0,1)$ follow a uniform distribution.![]]
Figure 16.4: PSO Demonstration

Application 1: Portfolio Optimization

See Excel and paper

Application 2: American Option Pricing

See paper

# Other Applications

Anything problem that has high-dimensions (e.g. American option exercise boundary and portfolio weights) can benefit from PSO. This is the area where traditional numerical algorithms (e.g. SciPy or Excel Solver) do not do a good job.

The swing contract of natural gas described in the next sub-section is a good example.

# 16.4.3 Q Learning - Swing Contract

According to: https://amunategui.github.io/reinforcement-learning/index.html:

Q-learning is a model-free reinforcement learning technique. Specifically, Q-learning can be used to find an optimal action-selection policy for any given
(finite) Markov decision process
(MDP) .

Machine learning is assumed to be either supervised or unsupervised but a recent new-comer broke the status-quo - reinforcement learning. Supervised and unsupervised approaches require data to model, not reinforcement learning! That's right, it can explore space with a handful of instructions, analyze its surroundings one step at a time, and build data as it goes along for modeling.

Wikipedia:

Q-learning is a model-free reinforcement learning algorithm to learn a policy telling an agent what action to take under what circumstances. It does not require a model (hence the connotation "model-free") of the environment, and it can handle problems with stochastic transitions and rewards, without requiring adaptations.

$$
\begin{array}{l} \underline {{\mathrm {Q} (\mathsf {s} _ {\mathrm {t}}, \mathsf {a} _ {\mathrm {t}})}} \quad (1 - \quad) \underline {{\mathrm {Q} (\mathsf {s} _ {\mathrm {t}}, \mathsf {a} _ {\mathrm {t}})}} + \quad \mathsf {R} _ {\mathrm {t}} + \quad \cdot \quad \max _ {\text {a}} \mathsf {Q} (\mathsf {s} _ {\mathrm {t} + 1}, \mathsf {a} _ {\mathrm {t}}) \\ = Q (s _ {t}, a _ {t}) + \underbrace {R _ {t} + \cdot \max _ {a} Q (s _ {t + 1}, a _ {t}) - Q (s _ {t}, a _ {t})} _ {\text {temporaldierence}} \\ \end{array}
$$

When $= 1$, then above equation simplifies to:

$$
\begin{array}{cc} \underline {{\mathsf {Q}}} (\mathsf {s} _ {\mathsf {t}}, \mathsf {a} _ {\mathsf {t}}) & \mathsf {R} _ {\mathsf {t}} + \quad \cdot \max _ {\mathsf {a}} \mathsf {Q} (\mathsf {s} _ {\mathsf {t} + 1}, \mathsf {a}) \\ \text {new value} & \end{array}
$$

# An Example - Finding Optimal Route

![](Https://Cdn-Mineru. Openxlab. Org. Cn/Result/2025-11-15/18200E98-377D-42C6-9048-14Aae4Dedbda/2Ce4149Efa08B152925Be9Dacfca8D875147Bc0E17F09Dd0956405717E894Fb9. Jpg)

Figure 16.5: Finding Optimal Route

# An Application - Natural Gas Swing Contract

A swing contract is an option contract that allows the buyer to buy at each day a flexible quantity (but up to daily and global limits) of natural gas at a strike price for a period of time.

At each day, the buyer of the swing contract can also withdraw any quantity of natural gas (but up to the storage limit) to sell to the market at the market price.

As a result, it is a derivative contract that must be balanced between price and quantity in order to maximize the profit.

$$
\max _ {\mathbf {N} \quad \mathbb {N}} \quad \begin{array}{l} n _ {f} \\ i = 1 \end{array} \mathbf {N} _ {i} \quad (T _ {i}, T _ {i} + 1 d)
$$

# 16.4.4 Bayesian Learning - Black-Litterman Model

The basic probability theory states that:

$$ p (A | B) = \frac {p (B | A) p
(A) }{p
(B) } \tag {16.1}
$$ where $\mathbf{A}$, $\mathbf{B}$ are two closed sets.

In terms of density notation:

$$
\begin{array}{l} \mathbf {f} (| \mathbf {x}) = \frac {\mathbf {f} (\mathbf {x} |) \mathbf {f} ()}{\mathbf {f} (\mathbf {x})} \tag {16.2} \\ \mathbf {f} (\mathbf {x} | \mathbf {\theta}) \mathbf {f} (\mathbf {\theta}) \\ \end{array}
$$ where $\mathbf{f}(\cdot)$ is a generic density function symbol and does not present any specific functional form.

In plain English, using Bayesian probability terminology, the above equation can be viewed as:

$$
\text {posterior} = \frac {\text {likelihood} \times \text {prior}}{\text {evidence}}
$$

The usual econometric interpretation of the this equation is that $x$ represents data observed in reality. The model (if correct) that generates the data is $f(x|.)$ where $\cdot$ represents a set of parameters of the model. A usual example is a normal model where $= \{\mu, {}^{2}\}$ (i.e. mean and variance). If the model is correct, then the data observed $x$ should follow a normal distribution. (Certainly, we can test this hypothesis.) This is known as the likelihood function.

In the usual case, the parameters of the model are assumed to be constants. Yet, Bayesian theorists argue that they can be random and follow a distribution themselves - generically $f(\cdot)$ (e.g. $\mu$ follows a normal distribution and follows a distribution). This is known and the prior distribution.

By the probability theory (density functions under Bayes theory) then gives rise to the distribution of the parameters given data, $f(|x|)$, as in equation (16.2). We can then establish statistics of this posterior distribution about the parameters.

In finance
(economics) , we always assume that data are generated by model, and hence little discussion of $f(x)$. Yet in a broader context (e.g. equation (16.1)), $x$ is not necessarily data generated by model. For example, in ML, $x$ can be interpreted as features and can be interpreted as classes. Given that $f(x)$ consists of observed data, it has no impact if we would like to find the maximum class and is just a scalar. Hence, it can be ignored (line 2 of equation (16.2)).

Switch of notation (to be more consistent with the ML literature):

$$
\begin{array}{l} \mathbf {h} _ {\text {MAP}} = \arg \max _ {\mathbf {h}} \mathbf {p} (\mathbf {h} | \mathbf {D}) \\ = \arg \max _ {h} \frac {p (D | h) p
(h) }{p
(D) } \\ = \arg \max _ {\mathbf {h} \in H} \mathbf {p} (\mathbf {D} | \mathbf {h}) \mathbf {p} (\mathbf {h}) \\ \end{array}
$$ where $D$ represents data and $h$ for class.

In the following example, is going out or staying home and $x$ is weather. We would like to use weather to predict of people go out or not.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/00f17b792f15844f16fefaa0cab48080aca2f0b865364fa0ee0e7a62588e49ba.jpg)

Figure 16.6: Simple Example of Bayesian Learning

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/e503b5f22b95e9e378836ba825af87eecf4bc1ceae9ecc6dd0af027e94512f1d.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/1c0799113da7758984722421306fce6712a0e0615bda0cffcec92ccf15ce6cd8.jpg)

In this example,

$$ p (S unny | \mathrm {Y es}) = \frac {p (S unny \& \mathrm {Y es})}{p (\mathrm {Y es})} = \frac {3}{9} = 0.33
$$

$$
\mathbf {p} (\text {S unny}) = \frac {5}{1 4} = 0.36; \mathbf {p} (\text {Y es}) = \frac {9}{1 4} = 0.64
$$

$$
\mathbf {p} (\text {Y es} | \text {S unny}) = 0.33 \times \frac {0.64}{0.36} = 0.60
$$ which has higher probability.

# Naive Bayes

Naive Bayes is a classifier. In other words, it limits to be distinct classes (either 0/1 or 1,2,3,..., n). Hence we change notation from to $C_k$.

$$
\begin{array}{l} \mathbf {p} \left(\mathrm {C} _ {\mathrm {k}} | \mathrm {x} _ {1}, \dots, \mathrm {x} _ {\mathrm {n}}\right) = \mathbf {p} \left(\mathrm {C} _ {\mathrm {k}} | \underline {{\mathrm {x}}}\right) \\ = \frac {\mathbf {p} \left(\mathrm {C} _ {\mathrm {k}}\right) \mathbf {p} (\underline {{\mathbf {x}}} \mid \mathrm {C} _ {\mathrm {k}})}{\mathbf {p} (\underline {{\mathbf {x}}})} \\ \mathbf {p} \left(\mathrm {C} _ {\mathrm {k}}\right) \mathbf {p} (\underline {{\mathbf {x}}} | \mathrm {C} _ {\mathrm {k}}) \\ \end{array}
$$ where the last line indicates that the $\mathsf{p}(\underline{\mathbf{x}})$ is purely data and can be ignored.

The likelihood function is very familiar and can be estimated with data easily as follows:

$$
\begin{array}{l} \mathfrak {p} \left(\mathrm {x} _ {1}, \dots, \mathrm {x} _ {\mathrm {n}}, \mathrm {C} _ {\mathrm {k}}\right) = \mathfrak {p} \left(\mathrm {x} _ {1} \mid \mathrm {x} _ {2}, \dots, \mathrm {x} _ {\mathrm {n}}, \mathrm {C} _ {\mathrm {k}}\right) \mathfrak {p} \left(\mathrm {x} _ {2}, \dots, \mathrm {x} _ {\mathrm {n}}, \mathrm {C} _ {\mathrm {k}}\right) \\ = \mathbf {p} \left(\mathbf {x} _ {1} \mid \mathbf {x} _ {2}, \dots, \mathbf {x} _ {n}, \mathbf {C} _ {k}\right) \mathbf {p} \left(\mathbf {x} _ {2} \mid \mathbf {x} _ {3}, \dots, \mathbf {x} _ {n}, \mathbf {C} _ {k}\right) \mathbf {p} \left(\mathbf {x} _ {3}, \dots, \mathbf {x} _ {n}, \mathbf {C} _ {k}\right) \\ = \mathbf {p} \left(\mathbf {x} _ {1} \mid \mathbf {x} _ {2}, \dots, \mathbf {x} _ {n}, \mathbf {C} _ {k}\right) \mathbf {p} \left(\mathbf {x} _ {2} \mid \mathbf {x} _ {3}, \dots, \mathbf {x} _ {n}, \mathbf {C} _ {k}\right) \dots \mathbf {p} \left(\mathbf {x} _ {n} \mid \mathbf {C} _ {k}\right) \mathbf {p} \left(\mathbf {C} _ {k}\right) \\ = \mathbf {p} \left(\mathbf {x} _ {1} \mid \mathbf {x} _ {2}\right) \mathbf {p} \left(\mathbf {x} _ {2} \mid \mathbf {x} _ {3}\right) \dots \mathbf {p} \left(\mathbf {x} _ {n} \mid \mathbf {C} _ {k}\right) \mathbf {p} \left(\mathbf {C} _ {k}\right) \\ \end{array}
$$ where the last line is a result of Markov property (no memory). In the Gaussian case, this function has a closed-form solution and analytical derivatives can be taken:

$$
\frac {\mathbf {p}}{\mathbf {C} _ {\mathbf {k}}} = 0
$$ for all $k$. Solving for the simultaneous equations for $C_k$ yields the estimators
(equations) for $C_k$. However, in the real world, the distributions are not Gaussian and we must use numerical tools to solve for the classification functions.
 by Jason Brownlee on December 8,2014 in Algorithms From Scratch (https://machinelearningm bayes-classifier-scratch-python/)

# Black-Litterman Model Https://Kaihuahuang. Github. Io/2019/09/09/Basic-Black-Litterman-Asset-Allocation/

The Black-Litterman asset allocation model, created by Fischer Black and Robert Litterman, is a sophisticated portfolio construction method that overcomes the problem of traditional mean-variance asset allocation.

The Black-Litterman model uses a Bayesian approach to combine the subjective views of an investor regarding the expected returns of one or more assets with the market equilibrium vector of expected returns (the prior distribution) to form a new, mixed estimate of expected returns.

Below is the picture summerizes the whole framework:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/18200e98-377d-42c6-9048-14aae4dedbda/45b363941eda6e284a24be5fc8c3a382e8c9e6909863104f85d221e7febcdb8f.jpg)

Figure 16.7: Black-Litterman Model

Utility maximization gives:

$$
U = - \underline {{\mu}} - \frac {1}{2} - -
$$

$$
\frac {\mathrm {U}}{\underline {{\mathbf {w}}}} = \underline {{\mathbf {u}}} - \quad_ {-} = 0
$$

$$
\underline {{\underline {{\mu}}}} = \underline {{\underline {{\quad}}}}
$$ where is similar to risk aversion of the individual.

Replacing w (optimal weights) by the sizes of market capitalization of the stocks:

$$
\begin{array}{cc} \underline {{\mathbf {w}}} _ {\mathbf {M}} & \\ \underline {{\mathbf {w}}} _ {\mathbf {M}} & \end{array}
$$ where $\underline{\mathbf{w}}_{\mathbf{M}}$ is the vector of market capitalizations.

(1) Define

$$
\begin{array}{cc} \underline {{-}} & \underline {{=}} \\ \underline {{-}} & \underline {{-}} \end{array}
$$

Let represent the magnitude of risk aversion. It can either be an arbitrary assumption or can be given by

$$
= \frac {\mathbb {E} [ \boldsymbol {r} ] - \boldsymbol {r} _ {\boldsymbol {f}}}{2}
$$ where $\mathbb{E}[\mathsf{R}]$ is return of the market portfolio (a portfolio that includes all the assets in the market or any other index benchmark that the investor decide to choose); $r_f$ is risk free market rate, $^2$ is variance of the market portfolio; is the covariance matrix of the assets $(\mathbf{N}\times \mathbf{N}$ matrix); and is a matrix of weights of assets according to their market capitalization.

(2) After deriving the assets' implied returns, then we can compute the expected return, $\mathbb{E}[\mathbf{R}]$ which is an $\mathbf{N}\times 1$ vector, of the assets under the Black-Litterman model with the following equation.

$$
\mathbb {E} [ \mathsf {R} ] = (\quad) ^ {- 1} + \mathsf {P} \quad \mathsf {P} ^ {- 1} (\quad) ^ {- 1} _ {-} + \mathsf {P} \quad \mathsf {Q}
$$ where $\mathbf{K}$ is a number indicating the uncertainty of the CAPM distribution (It is usually within the range of 0.025-0.05); $\mathbf{P}$ is a matrix with investors views; each row a specific view of the market and each entry of the row represents the weights of each assets ( $\mathbf{K} \times \mathbf{N}$ matrix); $\mathbf{Q}$ is the expected returns of the portfolios from the views described in matrix ( $\mathbf{K} \times 1$ vector); $\mathbf{Q}$ is diagonal covariance matrix with entries of the uncertainty within each view ( $\mathbf{K} \times \mathbf{K}$ matrix) and as described in previous section.

(3) Once we compute $\mathbb{E}[\mathsf{R}]$, then we can compute the posterior variance matrix $\mathbf{M}$, which will be used to compute the new covariance matrix. The new covariance matrix

$$
\mathbf {M} = (\quad) ^ {- 1} + \mathbf {P} \quad \mathbf {P} ^ {- 1}
$$

(4)

$$
\mathbf {P} = \quad + \mathbf {M}
$$

With the new covariance matrix, we can then calculate the new portfolio weights

$$
= \left( \begin{array}{cc} & \\ & P \end{array} \right) ^ {- 1} _ {-}
$$

Indian paper:

Let $\mathbf{\Pi}_{\mathrm{t}}$ be the $\mathbf{N} \times 1$ conditional mean vector and let $\mathbf{\Pi}_{\mathrm{t}}$ be the $\mathbf{N} \times \mathbf{N}$ covariance matrix estimate of these returns given information available at time $t-1$. In addition, define $\mathbf{\Pi}_{\mathrm{t}-1}$ as the vector of market capitalization weights at time $t-1$. When the CAPM holds, the conditional mean vector satisfies the following equation:

$$
\_ t = \quad t \quad t - 1
$$ where is the risk aversion coefficient.

$$
Q _ {t}
(k) = \left(P _ {t} \quad_ {t}\right)
(k) + k \overline {{P _ {t} \quad_ {t} P _ {t} (k, k)}}
$$ where $\mathbf{\Omega}_{\mathbf{k}}$ in $\{-2, -1,1,2\}$ defines "very bearish", "bearish", "bullish" and "very bullish" respectively. To impose views we use two classifiers, one to predict the sign of $\mathbf{\Omega}_{\mathbf{k}}$ and the other to predict its absolute value. i.e., we use the following two binary level responses to train various classifiers and predict the qualitative view of next period.

$$
Y _ {1} = \begin{array}{ll} - 1 & \text {ifsignofexcessreturnof the nextwek ' sisnegative} \\ 1 & \text {ifsignofexcessreturnof the nextwek ' sispositive} \end{array}
$$

$$
Y _ {2} = \begin{array}{ll} 1 & z _ {t} = \frac {r _ {t} - \bar {r} _ {t, 3}}{t, 3} \leqslant 1 \\ 2 & z _ {t} = \frac {r _ {t} - \bar {r} _ {t, 3}}{t, 3} > 1 \end{array}
$$

$$
Y = \begin{array}{ll} - 2 & \text {verybearish} \\ - 1 & \text {bearish} \\ 1 & \text {bullish} \\ 2 & \text {verybullish} \end{array}
$$

We need to compute $\mathsf{Y}_1$, using Naive Bayes.

# 16.4.5 Neural Networks - Credit Ratings

This is main for credit rating (i.e. classification). But its applications are way beyond that (practically a virgin land)

# Basic Theory

1. single layer NN (with a sigmoid function) is identical to logistic regression.

2. backpropagation is identical to recursive algorithm
3. confusion matrix is similar to ROC (accuracy ratio) diagram

# Cnn Vs. Rnn

Convolutional neural network
(CNN) is mainly for image recognition. It is a powerful classification tool. Not to be confused with RNN (recurrent neural network) which is successful in language processing (e.g. Google).

Due to its recurrent nature, RNN has been promoted to study time series – which is a fallacy.

# Deep Learning

NN is often referred as deep learning, which is not appropriate.

# 16.4.6 Genetic Algorithm

It is a tool for seeking the optimal solution, again in a high dimensional space search. To a certain degree, it is very similar to PSO (no surprise!) in that they both aim at solving a high dimensional problem.

Yet, GA is more algorithmic (i.e. programming intensive) than PSO which is only linear algebra. It would be interesting to compare the two and see which is better at which.

# 16.4.7 Other Classification Ml Tools

There are a bunch:

1. regularization
2. regression tree
3. random forest
4. discriminant analysis
5. support vector machine
6. etc...

# 16.4.8 Issues Of Overfitting

One major problem with ML tools is the failure to detect convergence. Except for very few (e.g. Q learning), ML tools are hard to see if the result has reached even the local optimum. As it turns out, if you continue to run the algorithm but it has already reached the global optimum, it will then drift away from the optimal solution.

This is because there is a tradeo between:
 exploitation

# - Exploration

Exploration is to let the system wander more in order to find a new/better global optimum. Yet this slows the system down. Otherwise, exploitation will render the system run to a local optimum fast.

Since there is no clear criteria to decide the balance between the two forces, there is naturally no good way to define a convergence. There are a few proposals for setting up a balance between the two but none receives any consensus.

On the other hand, in econometrics, there is a likelihood ratio test (but the models must be nested) to examine if one can stop fitting a more complex model. As a result, future research in ML in finance can incorporate such methods.

In sum, this is an exploding area (although quite a while in technology areas) in finance. Welcome to join the once in a lifetime opportunity!
