# Analysis of Fixed Income Securities

**Ren-Raw Chen**

---

## Contents

### 1 Introduction

1.1 Introduction  
1.1.1 What Is A Fixed Income Security?  
1.1.2 Trading Conventions  
1.1.3 OTC Trading and Liquidity Risk  

1.2 How Many Interest Rates Are Out There?  
1.2.1 US Treasuries  
1.2.2 FED rates  
1.2.3 LIBOR based products  
1.2.4 Agencies  
1.2.5 Corporates (Credit rating)  
1.2.6 Sovereigns (USD denominated)  
1.2.7 Municipals (Munis)  
1.2.8 Retail Credits  

1.3 Types of Fixed Income Securities  
1.4 Market Basics  
1.4.1 Yield  
1.4.2 Par Yield and Zero Rate  
1.4.3 Price Quote vs. Rate Quote or Volatility Quote  
1.4.4 Daycount  
1.4.5 Accrued Interest  
1.4.6 Spreads  
1.4.7 Spot and Forward Rates  
1.4.8 Example  

1.5 Exercises  

### 2 Term and Volatility Structures of Interest Rates

2.1 Introduction  
2.2 What Is a Yield Curve (Term Structure of Interest Rates)?  
2.2.1 A Sample: US Treasuries  
2.2.2 Coupon-bearing Yield Curve and Par Yield Curve  
2.2.3 Zero Coupon Yield Curve  
2.2.4 Forward Rate Curve  

2.3 How to Fit a Yield Curve Function  
2.3.1 Bootstrapping  
2.3.2 Using a Functional Form  
2.3.3 Using a Model  
2.3.4 A Discussion  

2.4 Three Hypotheses  
2.5 How Treasury Rates Change  
2.5.1 Roll Down Effect  
2.5.2 Curve Steepening/Flattening  
2.5.3 Hump  
2.5.4 Inversion  

2.6 Yield Curves of Various Interest Rates  
2.6.1 LIBOR Curve  
2.6.2 OIS Curve  
2.6.3 Credit Curve  
2.6.4 FX Curve  
2.6.5 Inflation Curve  

2.7 LIBOR Floater  
2.8 Volatility and Volatility Term Structure  
2.8.1 Volatility Smile and Volatility Term Structure in Equities  
2.8.2 Volatility Surface in Fixed Income  
2.8.3 Shape Restriction  
2.8.4 Sources of Volatility  

### 3 Duration and Convexity

3.1 Introduction  
3.1.1 Taylor's Series Expansion  

3.2 Duration  
3.2.1 MaCaulay Duration  
3.2.2 MaCaulay Duration with Yearfraction  
3.2.3 Fisher-Weil Duration  
3.2.4 Partial Duration (Key Rate Duration)  
3.2.5 Effective Duration  
3.2.6 PV01 (DV01)  

3.3 Convexity  
3.3.1 MaCaulay Convexity  
3.3.2 Dollar Convexity  

3.4 Yield Curve Trading Strategies  
3.4.1 Immunization  
3.4.2 Riding on the Yield Curve  
3.4.3 Barbell  

### 4 Spreads

4.1 Introduction  
4.2 Option Adjusted Spread (OAS)  
4.2.1 Static OAS  
4.2.2 With Model  

4.2.3 ZSpread  

4.3 LIBOR Spread  
4.3.1 Floating Rate Corporate Bond  
4.3.2 Relationship with CDS  

4.4 Yield Spread  
4.4.1 Fixed Rate Corporate Bond  
4.4.2 Par Spread  
4.4.3 Spread Duration and Spread 01  
4.4.4 Spread Convexity and Spread 10/Spread 25  

4.5 Liquidity Spread  
4.5.1 Bid/Ask Spread  
4.5.2 Liquidity Gap  

4.6 Discount Margin  
4.7 Basis  
4.7.1 Futures Basis  
4.7.2 FX Basis  
4.7.3 CDS-Bond Yield Basis  
4.7.4 LIBOR basis  
4.7.5 LIBOR Treasury Basis  
4.7.6 LIBOR OIS Basis  

4.8 Gamma and Vega  
4.8.1 Supplementary Effect  
4.8.2 Complementary Effect  

### 5 Interest Rate Swaps

5.1 Introduction  
5.2 Comparative Advantage Analysis  
5.2.1 Basic Idea  
5.2.2 With a Financial Intermediary  

5.3 No Arbitrage Analysis  
5.3.1 IRS as a Series of Forward Contracts  
5.3.2 IRS as a Portfolio of Bonds  

5.4 Swap Value  
5.4.1 Reverse swap  
5.4.2 Another Calculation  
5.4.3 DV01/PV01  
5.4.4 Swaption  
5.4.5 Exposure  

5.5 FRA and ZCS  
5.6 Overnight Index Swap (OIS)  
5.6.1 Floating Leg  
5.6.2 OIS Curve  

5.7 Basis Swaps  
5.7.1 LIBOR Basis Swap  

5.8 Appendix  

### 6 Foreign Currency Swap

6.1 Introduction  
6.2 Spot Exchange Rate  
6.2.1 Purchasing Power Parity, PPP  
6.2.2 Triangular Relationship  
6.2.3 Exchange Rate and Imports/Exports  

6.3 Interest Rate Parity, IRP, and FX Forward  
6.4 FX Swaps  
6.4.1 Comparative Advantage Analysis  
6.4.2 No-Arbitrage (trading) Analysis  

6.5 Quanto Effect  
6.5.1 Compo Option  
6.5.2 Quanto Option  

6.6 FX Options  
6.6.1 Option Quotes  
6.6.2 International Put/Call Parity (Equivalence)  
6.6.3 Volatility Smile  
6.6.4 Exotic FX Options  

6.7 FX Math  
6.7.1 Quanto  
6.7.2 Compo and Quanto Options  
6.7.3 International Put/Call Parity  

### 7 Credit Default Swap

7.1 Introduction  
7.2 The Contract  
7.2.1 CDS spread  
7.2.2 CDS as a Perfect Hedge to Corporate Floaters  
7.2.3 CDS as a Put Option  
7.2.4 CDS as an Insurance Policy  
7.2.5 CDS as short Credit (Bond)  

7.3 Bootstrapping  
7.4 Big Bang  
7.4.1 Upfront, Running Spread, and Par Spread  

7.5 Recovery  
7.5.1 Cash versus Physical Settlement  
7.5.2 Distressed Bond Market  
7.5.3 Cheapest to Deliver Option  
7.5.4 Restructuring Clauses  

7.6 Sovereign CDS  
7.7 CDO CDS  
7.8 Capital Structure Arbitrage  
7.8.1 CDS versus Put  
7.8.2 CDS versus Stock  

### 8 Other Swaps

8.1 Variance Swap  
8.1.1 Volatility Swap  
8.1.2 Forward Starting Variance Swap  
8.1.3 S&P 500 Variance Futures  

8.2 Total Return Swap  
8.3 Index Swap  
8.4 Inflation Swap  
8.4.1 Year-on-Year Inflation Swap  
8.4.2 Zero Coupon Inflation Swap  

8.5 Equity Swap  
8.6 Commodity Swap  

### 9 Exchange Traded Derivatives

9.1 Introduction  
9.2 T Bond Futures  
9.2.1 Delivery Process  
9.2.2 Quotes  
9.2.3 Quality Option and Conversion Factor  
9.2.4 CTD Bond  
9.2.5 Timing options  

9.3 Valuation of T Bond Futures  
9.3.1 Cost of Carry  
9.3.2 Using the Exchange Option Model  
9.3.3 Using an Interest Rate Model  
9.3.4 Quality Option under no Marking to Market  
9.3.5 Timing Options  

9.4 T Bond Futures Options  
9.5 Ultra T Bond Futures (and Options)  
9.6 Eurodollar Futures  
9.6.1 Quote  
9.6.2 Delivery  
9.6.3 Pricing  

9.7 Euro Dollar Futures Options  
9.8 Relationship between Futures and Forward Prices  

### 10 OTC Derivatives

10.1 Introduction  
10.2 Caps/Floors/Collars  
10.3 Swaptions  
10.3.1 Cap (Floor) as a Special Case of Payer (Receiver) Swaption  
10.3.2 Function ξ(t,⋅,⋅) and a Piece-wise Flat Approximation  

10.4 Other Derivatives  
10.4.1 Equity-linked Notes  
10.4.2 Credit-linked Notes  

### 11 Other Credit Derivatives

11.1 Introduction  
11.2 Default Basket  
11.3 CDO, CBO and CLO  
11.4 Spread Option  
11.5 Principle Protected Notes  
11.6 Credit Linked Notes  
11.7 Convertible Bonds  
11.7.1 Forced Conversion  
11.7.2 Added Convexity  

11.8 Loan  
11.9 Securities Lending  
11.10 CMBS  

### 12 Mortgage and Asset Backed Securities

12.1 Introduction  
12.1.1 RMBS  
12.1.2 CMBS  
12.1.3 ABS  

12.2 Securitization Process  
12.3 RMBS  
12.3.1 Paththroughs  
12.3.2 CMO  
12.3.3 Interest Only and Principle Only  
12.3.4 NBER paper  

12.4 CMBS  
12.5 ABS  
12.5.1 Subprime (Alt-A)  
12.5.2 Home Equity  
12.5.3 Others  

12.6 Other Real Estate Derivatives  
12.6.1 Case-Shiller Index Futures  
12.6.2 RPX Swap and Forward Contracts  
12.6.3 REIT  
12.6.4 REMIC  
12.6.5 STACR and Connecticut Avenue Securities (CAS)  

12.7 Appendix  

### 13 Commodities

13.1 Introduction  
13.2 Convenience Yield  
13.3 Seasonality  
13.4 Inventory  
13.5 Various Contracts  
13.5.1 Futures  
13.5.2 Index Futures  
13.5.3 Swaps  
13.5.4 Basis Swap  
13.5.5 Option  

13.6 Swing Contract  
13.6.1 Basic Contract  
13.6.2 Random Quantities  
13.6.3 Extensions (Liquidity and Random Interest Rates)  

13.7 Water Futures  

### 14 Interest Rate Models

14.1 Introduction  
14.2 Vasicek and CIR Models  
14.3 Ho-Lee Model  
14.4 Black-Derman-Toy Model  
14.4.1 Tree (Log Normal)  
14.4.2 Modified Tree (since ud = 1)  
14.4.3 The Continuous Time Limit  
14.4.4 Black-Karasinski Model  

14.5 Hull-White Model  
14.6 Heath-Jarrow-Morton Model  
14.6.1 Example 1 - Ho-Lee Model  
14.6.2 Example 2 - Vasicek Model  
14.6.3 Example 3 - Cox-Ingersoll-Ross Model  

14.7 LMM (LIBOR Market Model) and Shifted LMM  
14.7.1 Calibration to Caps  
14.7.2 Swap and Swaption Valuation  

14.8 Appendix  
14.8.1 Stock Option Pricing When the Interest Rate Follows the Ho Lee Model  
14.8.2 Proofs of Lemmas  

### 15 Credit and Prepayment Models

15.1 Introduction  
15.1.1 Rating Agencies  
15.1.2 CreditBureau  

15.2 Corporate Credit  
15.2.1 Public Firms  
15.2.2 Private Firms  

15.3 Retail Credit  
15.3.1 FICO  
15.3.2 Mortality Rate  
15.3.3 Constant Default Rate  
15.3.4 Pay-As-yoU-Go (PAUG)  
15.3.5 Foreclosure  
15.3.6 Real Estate Owned (REO)  

15.4 Prepayment Models  
15.4.1 Richard and Roll Model  
15.4.2 Andrew Davidson Prepayment Model  
15.4.3 QRM Prepayment Model  
15.4.4 BlackRock Prepayment Model  

### 16 Numerical Models

16.1 Introduction  
16.2 Lattice  
16.2.1 Binomial  
16.2.2 Finite Difference  

16.3 Monte Carlo  
16.3.1 Longstaff-Schwartz  
16.3.2 Free-Bondary PDE  

16.4 AI/ML Tools  
16.4.1 What is AI? ML? and BD?  
16.4.2 Particle Swarm Optimization  
16.4.3 Q Learning-Swing Contract  
16.4.4 Bayesian Learning - Black-Litterman Model  
16.4.5 Neural Networks - Credit Ratings  
16.4.6 Genetic Algorithm  
16.4.7 Other Classification ML Tools  
16.4.8 Issues of Overfitting  

---

## Index