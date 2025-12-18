---
parent_directory:
title: A PRACTICAL GUIDE TO BONDS AND SWAPS
tags:
aliases:
parent_folder: Lecture Notes
subfolder:
key_concepts:
cssclasses: academia
linter-yaml-title-alias: A PRACTICAL GUIDE TO BONDS AND SWAPS
---

# A PRACTICAL GUIDE TO BONDS AND SWAPS

Thomas S. Coleman

Draft - 20 February 1998  
updated 2005

# CHAPTER 1 - INTRODUCTION

This manual provides a practical introduction to the fixed income capital markets. It is intended to provide the practical, institutional aspects of the markets together with the fundamental concepts used in today's capital markets. In line with their ubiquity throughout the markets, derivatives ( swaps) are introduced early.

There are two central themes running throughout the manual which are central to the modern fixed income capital markets:

Mark-to-market valuation by calculating the present value (PV) of cash flows off a yield curve  

- Measuring risk as the change in the present value resulting from changes in the yield curve.

After completing this manual, readers should have a firm understanding of these concepts and how they apply to markets and instruments

Present value and risk form the foundation of everything in the modern capital markets, from the simplest bond trade to the most complex emerging market exotic option. The explosion in the derivatives markets of recent years is based on applying the basic concepts of risk and valuation to specific instruments, decomposing the instruments into their fundamental risk components, and then trading the risks separately. For example, a bank can separate the credit risk and interest rate risk embedded in a corporate loan and manage the two separately. Such specialization increases efficiency and lowers costs throughout the finance industry.

The underlying concepts of PV and risk, however, are quite simple and straightforward. This manual approaches the material from a practical perspective, focusing on specific markets and instruments, and how the concept of PV and risk apply to each. The specific markets covered are those most basic to fixed income:

Bonds  
Swaps

For each market we present an overview to provide the institutional context, but focus on how PV and risk apply to the specific market. The same themes recur in each market, however, because the basic concepts of PV and risk and the techniques used to calculate them are the same. There is a heavy reliance on problems in order to give students practice in the application of the theoretical concepts to everyday situations; theory is not much use in the markets without the practical tools and techniques to apply the theory.

This manual will not teach students about all the wide variety of products and theoretical concepts which have developed in the markets in the past few years. Such a book is wider in scope than this manual. Instead, this manual is intended to provide the basic building blocks upon to build understanding of the markets.

# OUTLINE

I. Overall Objectives - what everybody finishing the manual should know

A. Understand MTM value as PV off market curve  
B. Understand risk as change in PV as curve changes

II. Using The HP17BII Calculator

A. Techniques and problems focused on the bond and swap markets

III. Bonds

A. What is a bond  
B. Overview of bond market

1. Introduction  
a) OTC market - no organized exchange  
2. Overview of US, UK, German, French, and Eurobond markets  
a) Include summary page with conventions, etc  
b) Copy of Telerate p. 500 for UST

C. Bond Price / Yield Formula and Accrued Interest

D. Risk - BPV / DV01 and duration

1. Start with BPV, then discuss duration.

E. Hedging  
F. Credit Spreads  
G. Convexity

IV. Swaps (IRS)

A. Outline of basic fixed / floating swap, with traditional swap diagrams  
B. Swap market overview

1. Economic rational and benefits  
a) Credit arbitrage, AL management  
2. History, current size of market  
3. Principal currencies and basic terms  
a) Include Telerate 19900 and 19901  
4. Pricing and quoting conventions  
a) Include discussion of swap spreads

C. Simple valuation

1. NPV equals fixed bond less float bond  
2. Focus on PV'ing multiple cash flows, but point out this uses single yield (YTM)

D. Risk and hedging

1. Hedging is fundamental to running a book. Pricing is easy. Must live with trade after execution - must hedge.  
2. Practical hedging - three "stages" in hedging

a) Hedge outright risk ("parallel" risk) by trading a single Treasury  
(1) Subject to curve twist risk and swap spread risk  
b) Hedge curve risk by "barbell" with Treasuries  
(1) Still subject to swap spread risk  
c) Hedge swap spread risk by replacing Treasuries with OTR swaps

# CHAPTER 2 - USING THE HP17B II CALCULATOR

# Exercise 1: Calculator Settings

At any time the EXIT key will take you back to the previous menu, and GOLD (shift) MAIN will return to the main menu.

1(a) - Set the number of displayed decimals (Chapter 1)

- Turn on the machine and press DSP. A menu with the following options is displayed:

# SELECT DISPLAY FORMAT

FIX ALL

- Select the FIX option and type in the number of decimal places (6 is a good start) and press INPUT.

Note that changing the number of decimal places displayed does not affect what is in the calculator memory, which is always 12 digits. To see a number with full precision:

- Press the GOLD (shift) key and hold down SHOW (above the . ) for as long as you wish.

1(b)- Choose the number separator (Chapter 1)

Press DSP again and choose the number separator you wish to use:

Press . to set the period as the decimal point and the comma as the digit separator (e.g. 100,000.00)  

- Press, to set the comma as the decimal point and the period as the digit separator (Continental notation, e.g. 100.000,00)

1(c)- Set Algebraic vs. RPN mode (Appendix D)

- Press the GOLD (shift) followed by MODES (above DSP). The following menu appears

# SELECT MODE BEEP PRNT DBL ALG RPN

- ALG and RPN determine whether the calculator will operate in algebraic mode (standard calculator mode with function signs between numbers) or Reverse Polish Notation mode (HP mode with function signs after numbers as in the HP12C). Select RPN. This is suited to long chains of calculations, is the mode used in the HP12C, and is the mode used throughout this manual.  
- Press BEEP a few times to cycle through the options. BEEPER ON means that you will hear a noise if you make a mistake. For this course set to BEEPER OFF (less embarrassing for you).  
- PRNT and DBL refer to the power source and double-spacing for a printer connected to the calculator. Not relevant here.

$\underline{1} (\underline{\mathrm{d}})$  - Set the time and date (Chapter 10)

- Select TIME from the main menu (GOLD MAIN then TIME) and the display will show the day, date, and time as set in the calculator  
- Press SET and adjust the time display configuration as required. M/D toggles between month/day/year (the US convention) and day.month.year (the European convention). 12/24 selects a 12or 24-hour clock. For this course use month/day/year (US convention).  
Key in the correct time and press TIME. For example, for 9:08:30 pm enter 9.0830 in a 12-hour clock (using A/PM to set the am/pm) or 21.0830 in a 24-hour clock.  
Key in the date and press DATE. For example, for June 16, 1993 enter 6.061993.

# Exercise 2: RPN Calculations (Appendixes D, E, F)

Return to the main menu (GOLD MAIN).

The following exercises show how to do basic arithmetical calculations using RPN logic. The important point to remember is that ENTER (the = key or the INPUT key) separates numbers that you key in, and the arithmetical operators complete the calculation. For those who have used (or are using) an HP12C these operations will come naturally.

2(a)

<table><tr><td>Calculate:</td><td>Press</td><td>Display</td></tr><tr><td>12 + 4</td><td>12 ENTER 4 +</td><td>16.00</td></tr><tr><td>12 - 4</td><td>12 ENTER 4 -</td><td>8.00</td></tr><tr><td>12 x 4</td><td>12 ENTER 4 x</td><td>48.00</td></tr><tr><td>12 ÷ 4</td><td>12 ENTER 4 ÷</td><td>3.00</td></tr><tr><td>12²</td><td>12 GOLD x²</td><td>144.00</td></tr><tr><td>√12</td><td>12 GOLD √x</td><td>3.46</td></tr></table>

2(b)

<table><tr><td>Calculate</td><td>Press</td><td>Display</td></tr><tr><td>124</td><td>12 ENTER 4 GOLD yx</td><td>20,736.0</td></tr><tr><td>3√12</td><td>12 ENTER 3 GOLD 1/x GOLD yx</td><td>2.29</td></tr><tr><td>27% of 200</td><td>200 ENTER 27 %</td><td>54.00</td></tr><tr><td>200 less 27%</td><td>200 ENTER 27 % -</td><td>146.00</td></tr></table>

# Exercise 3: Chain Calculations (Appendixes D, E, F)

The advantage of RPN becomes apparent when you have to do chains of calculations involving more than one operation. The RPN memory stack in the HP 17B stores intermediate results until you need them, and then inserts them into the calculation.

$\underline{3} (\underline{\mathbf{a}})$  - Calculate  $7\times (12 + 4)$

<table><tr><td>Key</td><td>Display</td><td>Description</td></tr><tr><td>12 ENTER 4 +</td><td>16.00</td><td>Intermediate result</td></tr><tr><td>7 x</td><td>112.00</td><td>Pressing the function key (x) multiples the intermediate result (16) by the new entry (7).</td></tr></table>

3(b)

<table><tr><td>Calculate</td><td>Key</td><td>Answer</td></tr><tr><td>(750 x 12) ÷ 360</td><td>750 ENTER 12 x 360</td><td>25.00</td></tr><tr><td>360 ÷ (750 x 12)</td><td>360 ENTER 750 ENTER 12 x ÷</td><td>0.04</td></tr><tr><td>[(456 - 75) ÷ 19.2] x (68 ÷ 1.9)456 ENTER 75 - 19.2 ÷ 68 ENTER 1.9 ÷ x</td><td>710.20</td><td></td></tr><tr><td>(3 + 4) ÷ (5 + 6)</td><td>3 ENTER 4 + 5 ENTER 6 ÷</td><td></td></tr><tr><td>√[(9 x 12) x (4 - 2)3]</td><td>9 ENTER 12 x 4 ENTER 2 - 3 GOLD yx x GOLD √</td><td>0.636</td></tr></table>

# Exercise 4: Time Value of Money (Chapter 4)

The sustained popularity of the HP 17B (and HP 12C) is due to these TVM functions. This exercise introduces the TVM menu, which calculates a future or present value from a series of cash flows, given an interest or discount rate. Alternatively, it calculates the internal rate of return implied in a regular series of cash flows.

# 4 (a) - Configure the TVM Calculations

From the main menu:

- Press FIN to access the finance sub-menu and select TVM. Depending on how the TVM functions have been configured in the past, the menu will look something like this:

<table><tr><td colspan="4">1 P/YR</td><td colspan="3">END MODE</td></tr><tr><td>N</td><td>I%YR</td><td>PV</td><td>PMT</td><td>FV</td><td colspan="2">OTHER</td></tr></table>

- Press OTHER to move to the second-level TVM menu. This lets you specify the payment mode and the number of payments per year. (It also accesses the amortization menu, but we will not use that.)  
Key 2 then press hit the P/YR key to set the number of payments per year to 2. Most USD swaps have semi-annual payments; i.e. 2 payments per year.  
- Press the END key to establish that payments are made in arrears, at the end of a payment period.  
- Press EXIT to return to the first level TVM menu.  
- Press GOLD CLEARDATA (above the INPUT key) to clear the stacks.

# 4(b)-Future value of six year deposit

You deposit \(100,000 for six years at a fixed interest rate of \(7.27\%\) (semi-annually compounded annual rate). Interest is compounded semi-annually and no further payments or withdrawals are made. What is the future value (principal plus interest) at the end of the six years?

Note that it is essential in TVM calculations to establish the direction of cash flows, and hence the sign to be used before a cash flow figure. In this example we are depositing money, so the present value must be set as a negative number. The future value will be shown as a positive amount of money.

<table><tr><td>Key</td><td>Display</td><td>Description</td></tr><tr><td>100,000 +/- PV</td><td>PV= -100,000</td><td>Stores the sum deposited</td></tr><tr><td>12 N</td><td>N= 12</td><td>Stores the period as 12 half-years (6 years)</td></tr><tr><td>7.27 I% YR</td><td>I% YR= 7.27</td><td>Stores the semi-annually compounded rate</td></tr><tr><td>0 PMT</td><td>PMT= 0</td><td>Sets the periodic payments to 0</td></tr><tr><td>FV</td><td>FV= 153,489.06</td><td>The future value at maturity</td></tr></table>

4(c)-Present value of 15 year zero bond

A zero coupon Eurobond has a denomination of \(10,000 and there are 15 years to maturity. Similar bonds are yielding \(10\%\) (yield quoted semi-annually compounded). What is the present value today?

<table><tr><td>Key</td><td>Display</td><td>Description</td></tr><tr><td colspan="2">SHIFT CLEARDATA</td><td>Cleared stack and TVM variables</td></tr><tr><td>30 N</td><td>N= 30</td><td>Stores the period as 30 half-years (15 years)</td></tr><tr><td>10,000 FV</td><td>FV= 10,000</td><td>Stores the par value of the bond in FV</td></tr><tr><td>10 I%YR</td><td>I%YR= 10</td><td>Stores the semi-annually compounded rate</td></tr><tr><td>0 PMT</td><td>PMT= 0</td><td>Sets payments to zero</td></tr><tr><td>PV</td><td>PV= -2,313.77</td><td>The present value (a negative cash flow)</td></tr></table>

4(d)-Buying a car

You are buying a new car costing \(30,000 with a 3 year loan at \(8.5\%\) annual interest, compounded semiannually. Your down payment is \(\$7,000\). What are your semi-annual payments?

<table><tr><td>Key</td><td>Display</td><td>Description</td></tr><tr><td>SHIFT CLEARDATA</td><td></td><td>Cleared stack and TVM variables</td></tr><tr><td>OTHER 2 P/YR</td><td>2 P/YR</td><td>Sets 2 payments per year</td></tr><tr><td>EXIT</td><td>2 P/YR</td><td>Returns to first-level TVM menu</td></tr><tr><td>3 ENTER 2 x N</td><td>N=6</td><td>Stores number of six-month periods (3 yrs)</td></tr><tr><td>8.5 I% YR</td><td>I% YR=8.5</td><td>Stores monthly compounded rate</td></tr><tr><td>30,000 ENTER 7,000 - PV</td><td>PV=23,000</td><td>Stores amount of loan</td></tr><tr><td>0 FV</td><td>FV=0</td><td>Sets future value (balance at end) to 0</td></tr><tr><td>PMT</td><td>PMT=-4,423.30</td><td>Semi-annual payments</td></tr></table>

# Exercise 5: Bond Calculations (Chapter 7)

The BOND menu calculates yield to maturity or clean price. It also calculates the yield to call and accrued interest. We will be using this function extensively.

# 5 (a)

From the main menu:

Press FIN and select Bond

The display will look something like this, depending on which bond conventions have been previously selected.

# 5(b)

What price should you pay on October 13, 1997 settlement for a  $6.125\%$  US Treasury bond that matures on August 15, 2007, if you wish to obtain a yield to maturity of  $6.5\%$ ? The day count convention is actual/actual and the coupon payments are semi-annual.

The entries below assume that the date format in the HP17B has been set to month/day/year. We are also assuming that the calculator has been previously set up to do Eurobond calculations, and must first be adjusted for Treasury bonds.

<table><tr><td>Key</td><td>Display</td><td>Description</td></tr><tr><td>SHIFT MAIN FIN BOND</td><td>30/360 ANNUAL</td><td>Displays current settings (may be different)</td></tr><tr><td>SHIFT CLEARDATA</td><td>30/360 ANNAUL</td><td>Clears stack</td></tr><tr><td>TYPE</td><td>30/360 ANNUAL</td><td>Current type settings</td></tr><tr><td>A/A SEMI EXIT</td><td>A/A SEMIANNUAL</td><td>Set for UST conventions</td></tr><tr><td>10.131997 SETT</td><td>SETT=10/13/1997 MON</td><td>Stores settlement date</td></tr><tr><td>8.152007 MAT</td><td>MAT=08/15/2007 WED</td><td>Stores maturity date</td></tr><tr><td>6.125 CPN%</td><td>CPN%=6.125</td><td>Stores annual coupon</td></tr><tr><td>100 CALL</td><td>CALL=100.00</td><td>Ensures nominal is \$100</td></tr><tr><td>MORE 6.5 YLD%</td><td>YLD%=6.5</td><td>Stores desired yield</td></tr><tr><td>PRICE</td><td>PRICE=97.2946</td><td>Clean price per \$100 nominal</td></tr><tr><td>ACCRU</td><td>ACCRU=0.9820</td><td>Accrued interest</td></tr><tr><td>+</td><td>98.2766</td><td>Dirty price (clean + accrued)</td></tr></table>

# 5 (c)

Suppose the bond in question 5(b) is sold on November 14, 1997 for a clean price of 97.50. At what yield to maturity is it sold?

<table><tr><td>Key</td><td>Display</td><td>Description</td></tr><tr><td>MORE 11.141997 SETT</td><td>SETT=11/14/1997 FRI</td><td>Stores new settlement date</td></tr><tr><td>MORE 97.50 PRICE</td><td>PRICE= 97.50</td><td>Stores desired price. Everything else is unchanged, so need not be entered anew</td></tr><tr><td>YLD%</td><td>YLD%= 6.4730</td><td>Yield at price of 97.50</td></tr></table>

# 5 (d)

A  $6\%$  Eurobond maturing on February 1, 2012 is purchased on May 15, 1997 to yield  $5.7\%$  What is the clean price? (Remember that Eurobonds pay coupons annually and are quoted with a 30/360 day count convention.)

<table><tr><td>Key</td><td>Display</td><td>Description</td></tr><tr><td>SHIFT CLEARDATA</td><td>A/A SEMIANNUAL</td><td>Clears stack</td></tr><tr><td>TYPE</td><td>A/A SEMIANNUAL</td><td>Current type settings</td></tr><tr><td>360 ANN EXIT</td><td>30/360 ANNUAL</td><td>Set for Eurobond conventions</td></tr><tr><td>5.151997 SETT</td><td>SETT=05/15/1997 THU</td><td>Stores settlement date</td></tr><tr><td>2.012012 MAT</td><td>MAT=02/01/2012 WED</td><td>Stores maturity date</td></tr><tr><td>6 CPN%</td><td>CPN%=6.000</td><td>Stores annual coupon</td></tr><tr><td>100 CALL</td><td>CALL=100.00</td><td>Ensures nominal is \$100</td></tr><tr><td>MORE 5.7 YLD%</td><td>YLD%=5.70</td><td>Stores desired yield</td></tr><tr><td>PRICE</td><td colspan="2">PRICE=102.9006Clean price per \$100 nominal</td></tr></table>

# 5 (e)

The bond in question 5(d) is callable on February 1, 2002 at 102.75. What is the yield to the call date?

<table><tr><td>Key</td><td>Display</td><td>Description</td></tr><tr><td>MORE 8.012002 SETT</td><td>SETT=08/01/2002 THU</td><td>Stores call date as maturity date</td></tr><tr><td>102.75 CALL</td><td>CALL= 102.75</td><td>Stores desired call price. Everything else is unchanged, so need not be entered anew</td></tr><tr><td>MORE RCL PRICE</td><td>PRICE= 102.9006</td><td>Checks that the price is 102.9006</td></tr><tr><td>YLD%</td><td>YLD%= 5.800</td><td>Yield to call at the price of 102.9006</td></tr></table>

# Exercise 6: Interest Rate Conversions (Chapter 5)

The HP17B converts from nominal (semi-annual or monthly compounded) to effective (annual) interest rate and vice versa. From the finance menu:

- Select ICNV  
- Press GOLD CLEARDATA to clear the stacks

# 6(a)

Bank A is quoting a monthly compounded annual borrowing rate of  $6.7\%$ . What is the effective (annual) rate of interest?

<table><tr><td>Key</td><td>Display</td><td>Description</td></tr><tr><td>PER</td><td>COMPOUNDING P TIMES/YR</td><td>The PER menu</td></tr><tr><td>12 P</td><td>P= 12</td><td>Stores compounding periods as 12/yr</td></tr><tr><td>6.7 NOM%</td><td>NOM%= 6.70</td><td>Stores nominal (mthly compounded) rate</td></tr><tr><td>EFF%</td><td>EFF%= 6.91</td><td>Returns effective (annual) rate</td></tr></table>

# 6 (b)

A Eurobond has a coupon of  $10.25\%$ . What would be the equivalent semi-annual coupon?

<table><tr><td>Key</td><td>Display</td><td>Description</td></tr><tr><td>2 P</td><td>P= 2</td><td>Stores compounding periods as 2/yr</td></tr><tr><td>10.25 EFF%</td><td>EFF%= 10.25</td><td>Stores the annual rate</td></tr><tr><td>NOM%</td><td>NOM%= 10.00</td><td>Returns semi-annual rate</td></tr></table>

# Exercise 7: Using the Solver (Chapter11)

The conversion I make most frequently is between money-market (libor) rates and bond rates. There is no built-in function for doing this in the HP17B, but it is easy to program one using the solver. With the solver application you enter an equation and the HP17B sets up a menu. Thereafter you can use the menu to solve your equation just like a built-in application.

Here the equation we want to solve is the conversion between a money-market rate and a bond rate.

# Bond Rate

Rate  $= \mathbf{R}$

Payment per year  $=$  PYR (e.g. 2)

# Money Market Rate

Rate  $=$  RM

Maturity in months  $=$  MTH (e.g. 3)

Day Basis  $=$  DB (e.g. 360 or 365)

The money-market rate is quoted at a monthly frequency (1 month, 3 month, 6 month, 12 month) and the bond rate at a compounding frequency equal to PYR. The following keystrokes will enter the equation. The equation relating the two rates is:

$$
\left[ 1 + \frac {\mathrm {R}}{\mathrm {P Y R} * 1 0 0} \right] ^ {\mathrm {P Y R}} = \left[ 1 + \left(\frac {3 6 5}{\mathrm {D B}}\right) \left(\frac {\mathrm {M T H}}{1 2}\right) \left(\frac {\mathrm {R M}}{1 0 0}\right) \right] ^ {1 2 / \mathrm {M T H}}
$$

# Key

GOLD MAIN SOLVE

NEW

MM:(1+R÷(PYRx100))^PYR

$= (1 + (365\div \mathrm{DB})\mathrm{x}(\mathrm{MTH}\div 12)\mathrm{x}$

$(\mathrm{RM}\div 100))^{\wedge}(12\div \mathrm{MTH})$

INPUT

CALC

# Description

The main menu for the solver

Now start typing the equation. Name it MM

The ":" is found under WXYZ OTHER. The "^" is GOLD  $y^{x}$

Just keep typing in.

Keep typing in.

When finished, use the INPUT key. This will display the CALC menu

The screen will say "VERIFYING EQUATION". If there is an

error, it will tell you and you will have to go back and edit. If not then it will display your five variables: R PYR DB MTH RM

EXIT

This gets you out of the solver mode and back to the regular menus

# 7 (a)

You have a quote for a quarterly USD libor deposit of  $8.00\%$  (quarterly A/360 money market). What is the rate quoted at a semi-annual bond rate?

# Key

GOLD MAIN SOLVE

# Display

MM:  $(1 + R\div \dots$

CALC EDIT …

# Description

This is the solver menu with your equation displayed. If you have more than one equation use the  $\uparrow \downarrow$  keys to scroll

# CALC

8RM

3 MTH

360 DB

2 PYR

R

EXIT

# R PYR DB MTH RM

$\mathrm{RM} = 8.00$

$\mathrm{MTH} = 3.00$

DB=360

$\mathrm{PYR} = 2.00$

$\mathrm{R} = 8.1933$

Displays your menu

Enters money-market rate

Sets the money-market quote to quarterly

Sets A/360

Sets bond quote to semi-annual

The equivalent semi-bond rate

# Exercise 8: Time Calculations (Chapter 10)

The TIME menu on the HP17B allows you to calculate the number of days between two dates, or to calculate a date a specified number of days from another date.

From the main menu:

- Select TIME then CALC and the following menu will be displayed:

KEY MM.DDYYYY; {DATE} DATE1 DATE2 DAYS 360D 365D TODAY

# 8(a)

How many actual days are there between June 26, 1993 and August 2, 1998? How does this compare with a day count using a 365-day (fixed) or a 360-day calendar? (We assume here that the date format is month/day/year.)

<table><tr><td>Key</td><td>Display</td><td>Description</td></tr><tr><td>6.261997 DATE1</td><td>DATE1= 06/26/1997 THU</td><td>Stores first date</td></tr><tr><td>8.021998 DATE2</td><td>DATE2= 08/02/1998 SUN</td><td>Stores second date</td></tr><tr><td>DAYS</td><td>ACTUAL D…=402.0</td><td>Actual number of days</td></tr><tr><td>365D</td><td>365 DAYS= 402.0</td><td>Number of days assuming 365 days per year</td></tr><tr><td>360D</td><td>360 DAYS= 396.0</td><td>Number of days assuming 360 days per year</td></tr></table>

# CHAPTER 3 - BONDS

# What is a bond?

A bond is a long-term debt security issued by a government or corporation. Generally a bond will pay a fixed periodic coupon with a final principal payment at the end. For example, the cash flows for a four year bond which paid  $6.5\%$  per year would be as shown in figure 3.1. Initially the company or government would borrow from the investor - the initial negative cash flow of  \$100. At the end of each of the four years the company promises to pay\$ 6.50 (6.5% of the notional principal). At the maturity date in four years the company promises to repay the original \$100 borrowed.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/5f8e6f83-6240-4161-91e0-582ca704c686/880966de2181697eb91c6ea26c415d1442af839f15219f4707c994410cb496a8.jpg)  
Figure 3.1 shows the most common type of bond - a straight fixed coupon bond which pays a fixed periodic coupon and repays the principal at maturity. The variety of bonds, however, is nearly infinite. Some of the cash flow characteristics which may vary are:

- Notional principal - may be fixed (as in the straight bond) or may change over time. An amortizing bond pays down principal over time (as does a standard mortgage) while an accreting bond increases principal over time.  
Coupon - may be fixed, floating, zero (no coupon) or varying over time.  
- Coupon frequency - may be monthly, quarterly, semi-annual, annual, no coupon at all, or may change during the life of the bond.  
- Maturity date - a standard bond will have a fixed maturity date. A callable bond will have a date or series of dates prior to final maturity at which the bond may be redeemed (generally at the option of the issuer). A perpetual bond may have no maturity at all (for example Consols issued by the British government during, I believe, the Napoleonic wars of the early 1800's). A puttable bond may be put back to the issuer at the option of the buyer.  
- Repayment provisions and sinking features - corporate bonds are often repaid in part prior to maturity through a sinking fund.  
- Currency - the coupon and principal may be paid in different currencies, and even different coupons may be paid in different currencies, sometimes at the option of the issuer or the buyer.

The characteristics of issuers and the legal structure behind the bond may vary considerably. Some of the variety of bonds are:

Government bonds such as US Treasuries or UK Gilts

- Federal Agencies and Federally Sponsored Agencies such as the Tennessee Valley Authority, the Federal National Mortgage Association, or the Treuhound (sp?)  
State and Local Government bonds  
- Eurobonds - bonds offered outside the country of the borrower and generally in a different currency. An example might be a bond issued by Sweden sold in Britain and denominated in sterling, or a bond issued by IBM sold in Europe and denominated in dollars.  
Corporate Bonds - issued by corporations (in their domestic market and domestic currency)  
- Yankee Bonds - US dollar bonds issued in the US by foreign companies

Although there is an immense variety of bonds in existence today, they all are valued using the same basic techniques. For simplicity we will focus almost exclusively on straight fixed coupon bonds - the type of bond displayed in figure 3.1. The bottom line is that if you know all there is to know about a straight bond you will be able to dissect almost any type of bond you come across.

# Overview of the Bond Market

The bond market is an over-the-counter (OTC) market. That is, there is no organized exchange on which buyers and sellers meet to trade. Trading is done "over-the-counter" which in practice means over the telephone. A large customer will generally deal with a dealer directly. The dealer will quote a price at which the dealer will buy the bond (the bid price) or at which the dealer will sell the bond (the offer price). The customer always sells at the lower (bid) price and buys at the higher (offer) price. In some markets (such as UK Gilts) the convention is to quote a customer both a bid and offer price before the customer declares whether he is a buyer or seller (the customer asks for a two-way market). In other markets (such as US Treasuries) the convention is that the customer usually declares whether he is a buyer or seller before asking for a price (the customer asks for a bid or offer price).

Dealers will trade with each other through brokers on an anonymous basis - that is the broker does not disclose the other side of the transaction. Figure 3.2 shows a sample broker screen for the US Treasury market. This shows the market bid and offers for the on-the-run (most liquid and active) Treasury securities and recent off-the-run securities. The bid and offer price (quoted in  $32^{\mathrm{nd}}$ s, with + meaning the next higher  $64^{\mathrm{th}}$  and - the next lower  $64^{\mathrm{th}}$ ) and the calculated bid and offer yield are displayed. The size of the bid and offer are shown.

Figure 3.2 - Sample UST Broker Screen  

<table><tr><td colspan="2">1/7</td><td colspan="2">9:52 EST</td><td colspan="4">DJ TREASURY 500</td><td colspan="2">SOURCE: CANTOR</td><td colspan="2">FITZGERALD</td></tr><tr><td>[</td><td>CPN</td><td>MAT</td><td>PRICE</td><td>SIZE</td><td>YIELD</td><td>CPN</td><td>MAT</td><td>PRICE</td><td>SIZE</td><td>YIELD</td><td>]</td></tr><tr><td></td><td>5.750</td><td>999</td><td>100.17</td><td>-176</td><td>1X1</td><td>5.417-403</td><td>IL3.625</td><td>702</td><td>99.11</td><td>-12+</td><td>1X1</td></tr><tr><td></td><td>5.625</td><td>099</td><td>100.10</td><td>-11+</td><td>1X1</td><td>5.427-409</td><td>IL3.375</td><td>107</td><td>97.04</td><td>-04+</td><td>1X1</td></tr><tr><td></td><td>5.625</td><td>N99</td><td>100.116</td><td>-12+</td><td>1X1</td><td>5.415-402</td><td>IL0.000</td><td>W108</td><td>3.756</td><td>-75</td><td>1X1</td></tr><tr><td>&gt;</td><td>5.625</td><td>D99</td><td>100.13</td><td>-14</td><td>1X1</td><td>5.396-388</td><td>6.500</td><td>006</td><td>106.12</td><td>--</td><td>1X</td></tr><tr><td></td><td>6.375</td><td>500</td><td>102.01</td><td>-02</td><td>1X1</td><td>5.439-425</td><td>6.250</td><td>207</td><td>104.276</td><td>-296</td><td>1X1</td></tr><tr><td></td><td>6.000</td><td>800</td><td>101.10</td><td>-112</td><td>1X1</td><td>5.450-433</td><td>6.625</td><td>507</td><td>107.22</td><td>-23+</td><td>1X1</td></tr><tr><td>&gt;</td><td>5.750</td><td>N00</td><td>100.26</td><td>-272</td><td>1X1</td><td>5.429-421</td><td>&gt;6.125</td><td>807</td><td>TAK</td><td>104.21</td><td>8X</td></tr><tr><td></td><td>6.250</td><td>602</td><td>103.03</td><td>--</td><td>1X</td><td>5.457</td><td>6.875</td><td>825</td><td></td><td></td><td>X</td></tr><tr><td></td><td>6.000</td><td>702</td><td>102.05</td><td>-</td><td>1X</td><td>5.459</td><td>6.000</td><td>226</td><td></td><td></td><td>X</td></tr><tr><td></td><td>6.250</td><td>802</td><td>103.052</td><td>-06+</td><td>2X1</td><td>5.467-457</td><td>6.750</td><td>826</td><td></td><td></td><td>X</td></tr><tr><td></td><td>5.875</td><td>902</td><td>101.222</td><td>-23</td><td>1X1</td><td>5.461-455</td><td>6.500</td><td>N26</td><td></td><td></td><td>X</td></tr><tr><td></td><td>5.750</td><td>002</td><td>101.056</td><td>-07</td><td>1X1</td><td>5.466-456</td><td>6.625</td><td>227</td><td></td><td></td><td>X</td></tr><tr><td></td><td>5.750</td><td>N02</td><td>101.08</td><td>-09</td><td>1X1</td><td>5.454-447</td><td>6.375</td><td>827</td><td>108.01+</td><td></td><td>X1</td></tr><tr><td>&gt;</td><td>5.625</td><td>D02</td><td>100.28</td><td>-28+</td><td>1X5</td><td>5.422-418</td><td>&gt;6.125</td><td>N27</td><td>105.13</td><td>--15</td><td>11X16</td></tr></table>

# US TREASURY BONDS

The US Government issues Bills, Notes, and Bonds. Bills are short-term discount securities with original issue maturity of 3 months, 6 months, and 12 months. (Bills will be discussed in more detail in the money market section.) Notes are medium term bonds with original issue maturity of 2 to 10 years. Notes are not (and have never been) callable. Bonds are long term bonds with original issue maturity of over 10 years. Until about 10 years ago 30 year Bonds were callable, but no callable Bonds are now issued. Currently the Treasury issues 2, 3, 5, and 10 year Notes and 30 year Bonds. The only real distinction between Notes and Bonds is the name, and we will refer to all of these generically as Treasury bonds. The US Government is the largest borrower in the world. In 1992 there was over \$2,500 billion of debt outstanding, with about 15% in Bills, 43% in Notes, and 12% in Bonds.

Treasury bonds are straight bonds and a cash flow diagram would look like figure 3.1. Interest is fixed at the time of issue and is paid semi-annually - half the stated coupon is paid each half year. The Treasury auctions bonds and bills on a regular basis. Treasuries are settled through the Federal Reserve system.

# UK GILTS

UK Government bonds are called Gilts (for "Gilt-edged security" meaning high quality). They carry a variety of names such as Treasury, Funding, Exchequer, Consols, War Loan, but these names have virtually no significance.<sup>1</sup> Gilts are usually issued in registered rather than bearer form, meaning that the owners are registered with the Bank of England. The Bank then pays coupons directly to the owner. (A bond in bearer form has physical coupons attached, and the owner receives the cash coupon in return for presenting or "clipping" the physical coupon.) Because any change in ownership must be registered with the Bank and this takes time, Gilts go "ex-dividend" (XD) about a month before a coupon date. After the XD date the coupon goes to the owner as of the XD date, so that a new buyer not entitled to the next coupon. (The price will obviously adjust to reflect the loss of coupon.)

# FRENCH GOVERNMENT BONDS (BTANs AND OATs)

The French government bond market is modeled after the US Treasury market and functions in much the same manner. There are two types of bonds:

- BTANs (Bons Taux Fixe et a Interets Annuels) which are shorter-dated (five years maturity or less at original issue) fixed coupon bonds. Coupons are paid annually  
- OATs (Obligations Assimilables du Tresor) which are longer-dated (up to 30 years maturity) fixed or floating rate bonds. Coupons are paid annually.

Neither bond is generally callable. These are auctioned monthly. Unlike US Treasuries, however, auctions during a year are for additional amounts of the same issue rather than a new issue. This increases the size and liquidity of the issue. French government bonds can be settled either through the French Tresor (domestically) or through Euroclear or CEDEL (offshore). Settlement lag varies depending on where they are settled.

# GERMAN GOVERNMENT BONDS (BUNDS)

Federal Government bonds are primarily of two types:

- BOBLS - shorter term bonds with maturity at original issue of five years.  
- Bunds (Bundesanielhen) with maturity of original issue of 10 years (although they have been issued in the past with maturities up to 30 years).

Neither type of bond is generally callable. There are many government agencies which also issue bonds and these are commonly traded in the same market with BOBLS and bunds. Settlement is commonly made offshore through Euroclear or CEDEL.

# EUROBONDS

These are bonds issued by international companies, governments, and supranational entities (such as the World Bank). The term Eurobond is a little misleading because these bonds now trade internationally and not just in Europe. The market arose during the 1960s in response to restrictions on domestic bond issuance in the US. This led to US and foreign companies issuing bonds, denominated in US dollars, which were marketed across Europe. Now Eurobonds are issued in various countries and a variety of currencies.

Eurobonds are similar to domestic bonds, largely because they were simply an extension of the domestic bond markets. There are, however, some important differences both in legal structure and conventions for coupons and quoting. Most Eurobonds pay coupons annually (as opposed to semi-annually for US corporate bonds) and interest is accrued on a 30E/360 day basis (as oppose to 30/360 for US corporates). Eurobonds are generally not callable, whereas US corporate bonds generally are callable.

# PV and Yield

The cash flows for a newly issued bond are as in figure 3.1: an investor pays  \$100 today in return for a promised periodic coupon and repayment of principal on the final maturity date. This is all well and good, but what about trading in the secondary market. What can we say about the relation between the future cash flows and the price an investor pays for an existing bond? The future cash flows are the same, but the price today may differ from\$ 100. Take the simplest case, shown in figure 3.2, where the bond is still exactly four years from maturity but the market price has changed.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/5f8e6f83-6240-4161-91e0-582ca704c686/5ebe85ffd1d7703fb8ab636f6ee9a6df468be356532d57c68331d5f3daeef8d3.jpg)

As for any set of fixed cash flows, the relation between future cash and today's value is the present value or discounting relation: future cash flows are discounted (at some appropriate interest rate) to convert them into today's present value. Written in terms of an equation the relation between future value (future cash flow) and present value is:

$$
\mathrm {P V} = \mathrm {F V} / [ 1 + \mathrm {y} ] ^ {\mathrm {T}} \tag {3.1}
$$

where

$\mathrm{PV} =$  Present Value (today's value)

$\mathrm{FV} =$  Future Value (future cash flow)

$y =$  yield or interest rate or discount rate

$\mathrm{T} =$  number of periods of discounting

This relation can be applied to each of the cash flows in the four year,  $6.5\%$  bond shown in figure 3.2. Doing so leads to the following equation:

$$
\mathrm {P V} = \frac {6 . 5}{(1 + \mathrm {y})} + \frac {6 . 5}{(1 + \mathrm {y}) ^ {2}} + \frac {6 . 5}{(1 + \mathrm {y}) ^ {3}} + \frac {6 . 5}{(1 + \mathrm {y}) ^ {4}} + \frac {1 0 0}{(1 + \mathrm {y}) ^ {4}}. \tag {3.2}
$$

Here we are making the assumption that all cash flows are discounted at the same rate. We will maintain this assumption for now, relaxing it when we get to the chapter on yield curves. Except for this assumption, however, equation (3.2) is a perfectly accurate and general way to relate the future cash flows of the bond to its present value. We can now use the functions built into the HP17B to actually evaluate this equation.

# Example 3.1 PV of four year bond

Say that market interest rates for this type of bond have changed from  $6.5\%$  (what they were when the bond was originally issued) to  $6.6\%$ . An investor who had bought the bond with the promise of receiving a  $6.5\%$  coupon could now, if he still had the original \$100, buy a bond promising  $6.6\%$  interest. Obviously, the  $6.5\%$  coupon bond is now worth less than \$100, but exactly how much less? The answer can be found by discounting the cash flows from the old  $6.5\%$  coupon bond at the new market interest yield of  $6.6\%$ . The following keystrokes do this using the HP17B.

<table><tr><td>Key</td><td>Display</td><td>Description</td></tr><tr><td>FIN TVM OTHER</td><td></td><td>Accesses TVM menu</td></tr><tr><td>1 P/YR END EXIT</td><td>1 P/YR END MODE</td><td>Sets the payments per year to 1 (annual)</td></tr><tr><td>4 N</td><td>N=4.0</td><td>Sets the number of payments (4 years)</td></tr><tr><td>6.6 I%YR</td><td>I%YR=6.0</td><td>Sets interest rate (discount rate) to 6.6%</td></tr><tr><td>6.5 PMT</td><td>PMT=6.5</td><td>Sets payment (per year) to 6.5%</td></tr><tr><td>100 FV</td><td>FV=100.0</td><td>Sets final principal repayment</td></tr><tr><td>PV</td><td>PV=-99.658</td><td>Calculates the PV</td></tr></table>

With the change in the market yield, the investor has lost about  $0.34 per$ 100 dollars invested, because the original investment of \$100 has fallen to about \$99.66 in value.

# Example 3.2 Yield of four year bond

Say that the investor from example 3.1 had waited another few hours and then sold the bond. The bond had fallen to a price of \$99.00. What market yield would this imply?

<table><tr><td>Key</td><td>Display</td><td>Description</td></tr><tr><td>99 +/- PV</td><td>PV=-99.00</td><td>Sets the PV to the market price of \$99.00</td></tr><tr><td>I% YR</td><td>I% YR=6.794</td><td>Calculates the market yield of 6.794%There is no need to re-enter N, PMT, or FVbecause these have not changed from the previous problem.</td></tr></table>

The market rate of interest has risen to  $6.794\%$  from the  $6.5\%$

Equation (3.2) is called the price / yield equation and is the most basic tool in the bond market. In general we will know one of either the market yield  $y$  or the market price (the PV). We can then use equation (3.2) to solve for the other. When we know the yield  $y$  it is an easy set of calculations to solve for PV. When we know the market price (PV), however, solving for  $y$  is not so easy. An iterative method (root finding) must be used. This is built into the HP17B, which is one of the reasons this calculator is so useful.

The price / yield equation summarized in equation (3.2) is perfectly general except that we have assumed all cash flows are discounted at the same rate. When we make this assumption the yield we end up with is called the bond yield-to-maturity (YTM). Yield-to-maturity is used extensively in the markets for comparing one bond with another, but it is not a perfect measure. We will see in the chapter on yield curves that we can think of the YTM as an "average" of more accurate zero-coupon rates. As with any average, the YTM does not tell the whole story, although it does give a good summary. The YTM is very useful for a first comparison, but should be used carefully.

# Clean Price, Dirty Price, and Accrued Interest

So far we have worked with a bond which is exactly four years from maturity. What happens a few days later when it is no longer exactly four years from maturity? We then make a simple modification to arrive at equation (3.3) which discounts by the fraction of the period to the next coupon:

$$
\mathrm {P V} (\mathrm {y}) = \frac {6 . 5}{(1 + \mathrm {y}) ^ {\mathrm {x}}} + \frac {6 . 5}{(1 + \mathrm {y}) ^ {1 + x}} + \frac {6 . 5}{(1 + \mathrm {y}) ^ {2 + x}} + \frac {6 . 5}{(1 + \mathrm {y}) ^ {3 + x}} + \frac {1 0 0}{(1 + \mathrm {y}) ^ {3 + x}} \tag {3.3}
$$

where

$$
\begin{array}{l} \mathrm {P V} = \text {P r e s e n t V a l u e (t o d y ’ s v a l u e)} \\ y = \text {y i e l d o r i n t e r s t r a t e r o d i s c u n t r a t e} \\ x = \text {f r a c t i o n} \\ \end{array}
$$

The next coupon of \(6.50 is a fraction x of a year away (say 8 months away which would be 0.75 of a year away). We discount by this fraction of a period rather than the whole period.

The equation (3.3) works perfectly fine, but there is a slight problem which appears when we graph the PV as a function of maturity, shown in figure 3.3. For a four year bond with a  $6.5\%$  coupon and a  $6.5\%$  yield and exactly four years to go the PV is  $\$100$ . As we move into a coupon period and the maturity shortens, however, the PV rises. This is simply because we have earned or accrued part of the coupon, and the next coupon is moving closer. (With only a few days until the next coupon payment we have owned the bond for almost the whole coupon period and thus "earned" almost the whole coupon.) After the coupon is paid, of course, the PV falls back down to  $\$100$ . This saw-tooth pattern, while correct, obscures the fact that the market has not really changed and in some sense the market value of the bond has not changed; we have simply accrued part of the coupon by owning it for part of the coupon period.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/5f8e6f83-6240-4161-91e0-582ca704c686/d9ba8db927c4c1bd3876a513dfe1aa25abf53b2c841ecafb510e3abd2f5c8d74.jpg)  
Figure 3.3 - PV versus Maturity for a Four Year  $6.5\%$  Coupon Bond with  $6.5\%$  Yield

The bond markets adjust for this effect by the convention of calculating Accrued Interest (AI). This is defined as

(3.4)  $\mathbf{AI} =$  Next Coupon Payment \* (Fraction of Period from Last Coupon)

The Clean Price of the bond is defined as the PV or Dirty Price less the Accrued Interest:

(3.5) Clean Price  $=$  Dirty Price-AI

The Clean Price for the four year  $6.5\%$  bond is shown in figure 3.3; it is a straight line at \$100.

The TVM menu on the HP17B will handle only exact coupon periods and so will not work for a bond except when it is an exact number of years to maturity. The BOND menu is specially designed for use with bonds, and has yield / price calculations and accrued interest built in.

Example 3.3 Price for a Eurobond between coupons

Continuing the example of the four year  $6.5\%$  bond, what would be the price (clean price) one month after issue if the market yield were  $6.6\%$ ? Assume the bond were issued on 15 May 1997.

<table><tr><td>Key</td><td>Display</td><td>Description</td></tr><tr><td>FIN BOND TYPE</td><td></td><td>Gets to the BOND menu to set the bond type</td></tr><tr><td>360 ANN EXIT</td><td>30/360 ANNUAL</td><td>Sets the bond type to 30/360, annual coupons</td></tr><tr><td>6.161997 SETT</td><td>SETT=06/16/1997 MON</td><td>Sets settle to 6/16/1997 since 6/15/1997 is a Sunday</td></tr><tr><td>5.152001 MAT</td><td>MAT=05/15/1997 TUE</td><td>Sets maturity date to 15 May 2001, four years from the issue date of 15 May 1997</td></tr><tr><td>6.5 CPN%</td><td>CPN%=6.50</td><td>Sets the coupon to 6.5%</td></tr><tr><td>100 CALL</td><td>CALL=100</td><td>Ensures that principal repayment is set to 100</td></tr><tr><td>MORE 6.6 YLD%</td><td>YLD%=6.60</td><td>Sets the yield to 6.6%</td></tr><tr><td>PRICE</td><td>PRICE=99.648</td><td>Calculates price (clean)</td></tr><tr><td>ACCRU</td><td>ACCRU=0.5597</td><td>Calculates accrued interest</td></tr><tr><td>+</td><td>100.208</td><td>Adds clean price plus accrued to get the dirty price or PV of the bond. This is what you would actually pay to buy the bond</td></tr></table>

The price quoted in the market (the clean price) would be  \$99.648, not very different from the\$ 99.658 from example 3.1 above. The amount you would actually pay (the dirty price or clean plus accrued) would be \$100.208.

The price actually paid to buy or sell the bond is the dirty price which includes the accrued interest. To induce someone to sell the bond you must compensate them for the fact that they have held the bond for part of the coupon period, but in selling the bond will not receive any of the next coupon. The PV or dirty price includes this component of the price (the accrued interest), but it is more convenient to strip the accrued out when quoting prices in the market.

# Risk, BPV, DV01, and Duration

The concept of interest rate risk is actually one of the easiest and most straight-forward in the bond markets, although it is often confused by a lot of terminology. Equation (3.3) (or more generally equations 3.A1-3.A7 in the appendix) give the price as a function of yield. To measure interest rate risk we want to know how the price changes as yields change. We can use these equations to measure this risk simply by calculating the price at a higher yield and directly measuring how much the price changes. This leads defining risk as the change in price with a change in yield:

$$
\operatorname {R i s k} = - \partial \operatorname {P V} (\mathrm {y}) / \partial \mathrm {y}. \tag {3.6a}
$$

To actually measure this we can simply re-calculate the PV function with a higher and lower yield:

$$
\text {R i s k} \approx \frac {\left[ \mathrm {P V} (\mathrm {y} - \mathrm {h}) - \mathrm {P V} (\mathrm {y} + \mathrm {h}) \right]}{2 \mathrm {h}} \tag {3.6b}
$$

The common convention for units is that if  $\mathrm{h} = 10\mathrm{bp}$ , then  $\mathrm{h} = 0.10$ .

# Example 3.4 Risk or BPV for a Eurobond

Continuing the example of the four year  $6.5\%$  bond, what would be the BPV or risk of the bond one month after issue if the market yield were  $6.6\%$ ? Assume the bond were issued on 15 May 1997.

<table><tr><td>Key</td><td>Display</td><td>Description</td></tr><tr><td>FIN BOND TYPE</td><td></td><td>Gets to the BOND menu to set the bond type</td></tr><tr><td>360 ANN EXIT</td><td>30/360 ANNUAL</td><td>Sets the bond type to 30/360, annual coupons</td></tr><tr><td>6.161997 SETT</td><td>SETT=06/16/1997 MON</td><td>Sets settle to 6/16/1997 since 6/15/1997 is a Sunday</td></tr><tr><td>5.152001 MAT</td><td>MAT=05/15/2001 TUE</td><td>Sets maturity date to 15 May 2001, four years from the issue date of 15 May 1997</td></tr><tr><td>6.5 CPN%</td><td>CPN%=6.50</td><td>Sets the coupon to 6.5%</td></tr><tr><td>100 CALL</td><td>CALL=100</td><td>Ensures that principal repayment is set to 100</td></tr><tr><td>MORE 6.6 YLD%</td><td>YLD%=6.60</td><td>Sets the yield to 6.6%</td></tr><tr><td>PRICE</td><td>PRICE=99.648</td><td>Calculates price (clean)</td></tr><tr><td>6.5 YLD% PRICE</td><td>PRICE=99.9840</td><td>Price if the yield is lower</td></tr><tr><td>6.7 YLD% PRICE</td><td>PRICE=99.3144</td><td>Price if the yield is higher</td></tr><tr><td>x←y R↓</td><td>99.3144</td><td>Gets rid of the yield in the upper register</td></tr><tr><td>- 0.2 ÷</td><td>3.348</td><td>This is the BPV, expressed as the change in price for a \$100 notional bond, to a change in yields of 100bp. Remember to divide by 0.20.</td></tr></table>

The result is that the BPV is 3.348. That is the risk per 100bp change in yield is  \$3.348 for a\$ 100 bond. The risk per 1bp for \$1 notional of the bond would be \$0.0003348, while the risk per 1bp for \$1mm notional of the bond would be \$334.80.

This risk measure goes by various names, for example BPV (for Basis Point Value), Risk (on Bloomberg), or DV01. Many market participants use, and you should be familiar with, the terms duration, modified duration, and Macaulay's duration. These are all based on the same idea of bumping the yield up and down, but express the result in slightly different terms.

Modified duration measures the risk to a yield change as the percentage change in price rather than the dollar change in price. BPV expresses the risk as the change in PV for a 100bp change in yields while modified duration measures the percentage change in PV for a 100bp change in yields. In the example above the BPV is 3.348. The modified duration would be 3.341:

Modified Duration  $= 100*\mathrm{BPV} / \mathrm{PV}$

Modified Duration  $= 100 * 3.348 / (99.648 + 0.560)$

Modified Duration  $= 3.341$

Macauley's duration is the modified duration multiplied by the yield:

Macauley's Duration  $= (1 + \mathrm{y / p})$  * Modified Duration

Macauley's Duration  $= (1 + .066)*3.341$

Macauley's Duration  $= 3.56$

Macauley's duration also has the interesting interpretation of being the average time until payment, weighted by the payment PV. This has the diagrammatic interpretation shown in figure 3.4. This figure represents the Eurobond discussed in the examples above, with a coupon of  $6.5\%$  and 11 months (0.92 years) until the first coupon payment. The circles represent the PV of the payments, with the circles getting smaller the further out they are. If these circles were put on a balance beam, the fulcrum of the beam would represent the weighted average distance (time to payment), which is 3.56 years in this case. Both modified duration and Macauley's duration are discussed more fully in the appendix.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/5f8e6f83-6240-4161-91e0-582ca704c686/fb1acef2791a0e6340cc4bb5329877f1120f962e638a02923d12a78383630c36.jpg)  
Figure 3.4 - Diagrammatic Representation of Macauley's Duration

In this manual we will always measure risk as BPV or DV01 rather than duration. Although the choice between BPV and duration is usually a matter of preference, there are cases ( swaps being the most important example) where duration cannot be used.

BPV for a bond is usually expressed as the change in PV per 100bp change in yields. For an actual position or a portfolio, the risk is usually expressed as the actual price change to a 1bp change in yields. Thus, if one held  $1\mathrm{mm}$  of the Eurobond above, the risk would be  $\$334.80$  (while the BPV would be 3.348).

# Hedging

Hedging is probably the second most important concept in the capital markets (after net present value). The idea is simple: to hedge something you buy, sell something else with similar risk characteristics. The concept itself is simple, although the details of hedging an instrument or portfolio in a specific case can become dauntingly complex.

The easiest way to understand hedging is to see how it works in a practical example. Say you bought the 6.5% Eurobond from above. In example 3.3 we saw that buying the bond for settlement 16-jun-97 at a yield of 6.6% one would pay a (clean) price of \(99.648. Buying \)20mm notional of the bond would require a total investment of \(20,041,640 (\)20mm notional at a dirty price of 100.2082). If the yield rose to 6.65% the price would fall to 99.481 and your investment would fall to \)20,008,200 (dirty price of 100.0410). This means a loss of \$33,440.

We can use the risk or BPV to estimate the loss from a 5bp rise in rates. The BPV is 3.348, or the risk per 1bp for  $1\mathrm{mm}$  of the bond is  $\$ 334.80$ . For a position of  $\$ 20\mathrm{mm}$  and a change of 5bp we should expect:

<table><tr><td>Risk per \$1mm</td><td>x Position in $mm</td><td>x Yield change in bp</td></tr><tr><td>$334.80</td><td>20</td><td>5</td></tr><tr><td></td><td>$33,480</td><td></td></tr></table>

The actual change is \(33,440. (The difference is due to the convexity or gamma of the bond, which is discussed below. This highlights the important point that risk measures and hedging is usually not exact, and there will usually be some slippage. Here we can identify convexity as the reason for the slippage, but it is not always easy to neatly dissect the slippage.)

This bond has risk to changes in the level of yields. If you want to hedge this interest rate risk you need to sell an instrument with the same or similar risks. In this case it is not very difficult. The Eurobond is a four year US dollar bond, and there is a very liquid market in US Treasury bonds which can be sold short to hedge the interest rate risk.

# Example 3.5 Hedging a four year Eurobond with a Treasury

Continuing the example of the four year  $6.5\%$  bond, how much of the five year US Treasury would you have to sell to hedge a  $\$20\mathrm{mm}$  long position in the four year bond? Assume the five year Treasury is  $6.5\%$  coupon of 30 June 2002, trading at a yield of  $6.2\%$ .

<table><tr><td>Key</td><td>Display</td><td>Description</td></tr><tr><td>FIN BOND TYPE</td><td></td><td>Gets to the BOND menu to set the bond type</td></tr><tr><td>A/A SEMI EXIT</td><td>A/A SEMIANNUAL</td><td>Sets the bond type to UST type</td></tr><tr><td>6.161997 SETT</td><td>SETT=06/16/1997 MON</td><td>Sets settle to 6/16/1997 since 6/15/1997 is a Sunday</td></tr><tr><td>6.302002 MAT</td><td>MAT=06/30/2002</td><td>Sets maturity</td></tr><tr><td>6.5 CPN%</td><td>CPN%=6.50</td><td>Sets the coupon to 6.5%</td></tr><tr><td>100 CALL</td><td>CALL=100</td><td>Ensures that principal repayment is set to 100</td></tr><tr><td>MORE 6.2 YLD%</td><td>YLD%=6.20</td><td>Sets the yield to 6.6%</td></tr><tr><td>PRICE</td><td colspan="2">PRICE=101.2779Calculates price (clean)</td></tr><tr><td>6.1 YLD% PRICE</td><td colspan="2">PRICE=101.7095Price if the yield is lower</td></tr><tr><td>6.3 YLD% PRICE</td><td colspan="2">PRICE=100.8485Price if the yield is higher</td></tr><tr><td>x←y R↓</td><td>100.6770</td><td>Gets rid of the yield in the upper register</td></tr><tr><td>- 0.2 ÷</td><td>4.3049</td><td>This is the BPV of the 5 year UST</td></tr></table>

The BPV of the Treasury is 4.305, or a risk of  $430.50/1bp per$ 1mm notional. The total risk (to a 1bp move) for a \$20mm position in the four year Eurobond is  $6,696 = 20*334.80$ . This would lead to a hedge of selling 15.6mm (=6,696/430.50) of the UST. There is a slight problem because the Eurobond is annual and the US Treasury semi-annual. The BPV for the Eurobond is calculated by bumping the annual yield, while the BPV for the UST is calculated by bumping the semi-annual yield. The Eurobond BPV converted to a semi-annual BPV is 3.452, which gives a total risk (to a semi-annual bp) of \$6,904 and a hedge of 16.0mm 5-years.

There are two issues raised by this example. The first (and less important) is that the bonds are quoted on different yield bases, and one must convert between them. This is discussed more fully below. The second issue is more important and gets to the heart of hedging: Why buy a Eurobond, which by its very nature has interest rate risk, and then immediately eliminate the risk by selling a Treasury? After all, a bond is risky and one receives interest payments to compensate for the risk. Selling the Treasury essentially gives these coupons back, so why buy the Eurobond in the first place?

The explanation is simple but holds the answer to much of the evolution of the capital markets over the past 20 years. The Eurobond does have interest rate risk, but it also has other risks - in this case credit or spread risk. The aim of hedging the Eurobond by selling the Treasury is to separate the interest rate risk from the spread risk, and eliminate or reduce the interest rate risk while retaining (profitably one hopes) the spread risk. Much of the story of the modern capital markets is bound up in this story of separating bundled risks, and then pricing and trading these risks on their own.

The Eurobond is trading at a yield of  $6.60\%$  ab, above the  $6.20\%$  sab of the Treasury. (But remember that the yields are quoted on different bases, so the 40bp spread is not really accurate. We will return to this below.) This spread represents compensation for taking on credit risk. (The Eurobond is issued by a corporation rather than government, and thus the bond has a higher chance of going into default.) Buying the Eurobond implies buying the credit of the issuing corporation. Although bond default is remote, changes in the credit risk of the corporation will generally lead to a change in the spread. This is a risk embedded in the Eurobond, and bundled with the interest rate risk.

By hedging the interest rate risk (selling the Treasury) one can isolate and assume the spread risk separate from the interest rate risk. This is a good strategy for investors who are skilled in assessing credit and spread risk as opposed to interest rate risk, and wish to take on credit (spread) risk while avoiding outright interest rate risk.

# Credit Spreads

A bond is nothing more than a promise to pay back principal (plus interest) in a timely manner. Like any promise, however, it may be broken. Even with the best intentions a company may go bankrupt, and bonds issued by the company may not be paid back in full. To induce investors to lend money (buy a bond), a risky issuer must promise a higher interest payment than a riskless issuer. The higher required interest translates into a higher yield for more risky bonds.

All corporate bonds have some probability of going into default, while Treasury bonds (in theory) have no chance of defaulting. Thus Treasury bonds are used as a benchmark and considered to have a zero spread. Yield spreads for risky bonds are measured relative to Treasury (government) bonds. The common practice is to calculate the yield of the risky bond minus the yield on a benchmark Treasury bond of similar maturity and coupon.

As mentioned before, yield (yield-to-maturity or YTM) is a summary measure which, while very useful, has drawbacks. Calculating credit spreads as the yield of a risky bond minus the yield of a Treasury bond shows some of the drawbacks. In practice one can never find a Treasury which is exactly comparable to the risky bond. The most comparable Treasury may be of a shorter or longer maturity, or it may have a significantly different coupon.

In the example discussed above, the Eurobond is trading at  $6.60\%$  ab and the Treasury at  $6.30\%$  ab. (The yield on the Eurobond is quoted at an annual bond rate while the yield on the Treasury is commonly quoted at a semi-annual bond rate. Converting the Treasury yield to annual bond takes the  $6.20\%$  sab to  $6.30\%$  ab.) The Eurobond is trading at a spread of 30bp over the Treasury. In this case, however, the benchmark is a five year bond while the Eurobond is slightly less than four years to maturity. (In general, the yield on a five year bond is higher than on a four year bond. This upward sloping yield curve, with yields on longer-dated bonds higher than shorter-dated bonds, is not a necessary relation but often holds. We will return to it in the chapter on yield curves.) We could adjust for this maturity mismatch by using as a benchmark the average of the three year and five year Treasuries. Here the three year is trading at  $6.10\%$  sab, which is  $6.19\%$  ab. The interpolated (averaged) benchmark would thus be  $6.245\%$  ab, giving a spread of 35.5bp. Nonetheless, this adjustment is somewhat ad-hoc and the market convention is to quote a spread over a nearby benchmark, even when maturity and coupons do not match.

Credit spreads and the measurement of risk with respect to spreads are quite important, in spite of problems with measuring spreads in the conventional manner. It is very useful to think of the yield of a risky bond being composed of two components: the riskless yield of the benchmark and the yield spread resulting from the chance of default. Thought of in this way, the yield on a risky bond can change for two reasons: first the overall level of interest rates (the benchmark or Treasury yield) may change, and second the spread may change. Treasury yield changes are a common market factor which can be hedged with Treasuries or other bonds. Spread changes are a specific factor unique to that particular bond or issuer.

The risk of a change in credit spreads is measured in the same way as the risk of a change in yields. In fact, for most bonds, the values of the risk are the same. For the  $6.5\%$  Eurobond in example 3.4, the BPV is 3.348, and the risk to a 1bp rise in yields for a  $\$1\mathrm{mm}$  position is  $\$334.80$ . This is the change in value when the yield goes up by 1bp, whether that change in yield is a result of a change in the overall market (Treasury yields change) or a change in the spread of this particular bond (spread changes). Thus the risk to overall rates is 3.348 and the spread risk is also 3.348, even though we can think of them representing different market changes.

Various agencies assign bond issues credit ratings. The two best-known are Moody's and Standard and Poor's. The following tables show the credit rating categories used for both long-term bonds and short-term paper.

Table 3.1 - Credit Ratings for Long Term Paper (Bonds)  

<table><tr><td></td><td>S&amp;P</td><td>Moody&#x27;s</td></tr><tr><td rowspan="10">Investment Grade</td><td>AAA</td><td>Aaa</td></tr><tr><td>AA+</td><td>Aa1</td></tr><tr><td>AA</td><td>Aa2</td></tr><tr><td>AA-</td><td>Aa3</td></tr><tr><td>A+</td><td>A1</td></tr><tr><td>A</td><td>A2</td></tr><tr><td>A-</td><td>A3</td></tr><tr><td>BBB+</td><td>Baa1</td></tr><tr><td>BBB</td><td>Baa2</td></tr><tr><td>BBB-</td><td>Baa3</td></tr><tr><td>Speculative Grade</td><td>BB+</td><td>Ba1</td></tr></table>

Table 3.2 - Credit Ratings for Short Term Paper  

<table><tr><td>S&amp;P</td><td>Moody&#x27;s</td></tr><tr><td>A1+</td><td>P1</td></tr><tr><td>A1</td><td></td></tr><tr><td>A2</td><td>P2</td></tr><tr><td>A3</td><td>P3</td></tr></table>

# Yield Quotation Conventions and Yield Conversions

The yield on a bond is usually quoted with the same compounding frequency as the coupon payment frequency. (The two major exceptions are Italian government bonds which pay coupons semi-annually but quote yields annually, and Japanese JGBs which quote simple interest.) That is, if the coupon is paid semi-annually (as for US Treasuries), the yield is quoted on a semi-annually compounded basis. This leads to a modified version of equation (3.3). Here, the coupon and the yield are each divided by the number of payments per year (p):

$$
\mathrm {P V} (\mathrm {y}) = \frac {\operatorname {c o u p} / \mathrm {p}}{\left(1 + \mathrm {y} / \mathrm {p}\right) ^ {\mathrm {x}}} + \frac {\operatorname {c o u p} / \mathrm {p}}{\left(1 + \mathrm {y} / \mathrm {p}\right) ^ {1 + x}} + \dots + \frac {\operatorname {c o u p} / \mathrm {p}}{\left(1 + \mathrm {y} / \mathrm {p}\right) ^ {\mathrm {n - 1 + x}}} + \frac {1 0 0}{\left(1 + \mathrm {y} / \mathrm {p}\right) ^ {\mathrm {n - 1 + x}}} \tag {3.3b}
$$

The resulting yield is annually compounded for  $p = 1$ , semi-annually compounded for  $p = 2$ , quarterly compounded for  $p = 4$ , and monthly compounded for  $p = 12$ .

To compare rates which are quoted on different bases one must convert them all to a common basis. (In the US where Treasuries are quoted semi-annually, all rates are often converted to a semi-annual bond basis.) The yield and risk of the Eurobond in the examples above were all quoted on an annual bond basis, since that is the coupon frequency and the yield quoting convention for Eurobonds. The yield of the Treasury was quoted on a semi-annual bond basis since that is the coupon frequency of the Treasury. To compare the two (for example to calculate a yield spread) the two yields must be converted to a common basis. The appendix covers the formulae for various interest rate conversions.

# Example 3.6 Converting Yields to a Common Basis

The yield of the  $6.5\%$  Eurobond is  $6.60\%$  ab, while the yield of the five year Treasury is  $6.20\%$  sab. What is the yield spread between them? The built-in interest conversion menu in the HP17BII can be used to accomplish this.

<table><tr><td>Key</td><td>Display</td><td>Description</td></tr><tr><td>FIN ICNV PER</td><td>COMPOUNDING …</td><td>Gets to the Interest Conversion menu</td></tr><tr><td>2 P</td><td>P=2.0</td><td>Sets to semi-annual compounding</td></tr><tr><td>6.6 EFF% NOM%</td><td>NOM%=6.495</td><td>Converts the 6.60%ab to 6.495%Sab</td></tr><tr><td>6.2 NOM% EFF%</td><td>EFF%=6.296</td><td>Converts the 6.20%Sab to 6.296%ab</td></tr></table>

The spread between the bonds is  $6.60 - 6.296 = 30.4\mathrm{bp}$  calculated on an annual bond basis, and  $6.495 - 6.20 = 29.5\mathrm{bp}$  calculated on a semi-annual bond basis.

The BPV or risk depends on the yield quotation basis, and to be precise one should convert BPVs to the same basis for hedge ratio calculations. For the Eurobond vs. Treasury example above, the annual Eurobond BPV is converted to semi-annual by calculating how many annual bond basis points there are in 20 semi-annual basis points.

A rate of  $6.10\%$  sab converts to  $6.1930\%$  ab, while  $6.30\%$  sab converts to  $6.3992\%$  ab. Thus 20bp semi converts to 20.62bp annual. This means

$$
\mathrm {B P V} _ {\mathrm {s a b}} = \mathrm {B P V} _ {\mathrm {a b}} * [ 2 0. 6 2 / 2 0 ] = 3. 3 4 8 * 1. 0 3 1 = 3. 4 5 2.
$$

Thus the hedge of the Eurobond position would be  $16.0\mathrm{mm}$  of UST:  $16.0 = [20*345.2] / 430.5$

As a general procedure to convert risk from one basis to another

$$
\mathrm {B P V} _ {\mathrm {s a b}} = \partial \mathrm {P} / \partial \mathrm {y} _ {\mathrm {s a b}} = \partial \mathrm {P} / \partial \mathrm {y} _ {\mathrm {a b}} * \mathrm {d y} _ {\mathrm {a b}} / \mathrm {d y} _ {\mathrm {s a b}} = \partial \mathrm {P} / \partial \mathrm {y} _ {\mathrm {a b}} * (1 + \mathrm {y} _ {\mathrm {s a b}} / 2).
$$

To further complicate matters, yields for short-dated bonds (with less than one coupon period to maturity) are generally quoted on a simple interest basis. That is, the yield-to-price formula is simplified to

$$
\mathrm {P V} (\mathrm {y}) = \frac {1 0 0 + \operatorname {c o u p} / \mathrm {p}}{\left(1 + \mathrm {y} ^ {*} \mathrm {x}\right)} \tag {3.3c}
$$

(i.e. discounting by  $(1 + y^{*}x)$  rather than  $(1 + y / p)^{x}$ ). This makes the quoted yield not directly comparable to the compounded yield of a bond with more than one coupon period to go, but does make the yield somewhat more comparable with money-market instruments which are quoted on a simple interest basis.

# Risk and Convexity

Risk, BPV, and DV01 were introduced above as the derivative of price with respect to yield:

$$
\operatorname {R i s k} = - \partial \mathrm {P V} (\mathrm {y}) / \partial \mathrm {y}. \tag {3.6a}
$$

The derivative of a function is just the slope of the curve, so the risk is just the slope of the PV function.. Figure 3.5 shows the PV as a function of yield for a hypothetical bond. The slope (i.e. the risk) is shown at two points, when the yield is  $3\%$  and when the yield is  $10\%$ . Clearly the slope, and thus the risk, changes as the level of yields changes.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/5f8e6f83-6240-4161-91e0-582ca704c686/4f365ee7cc4da664853c7dc36e702114e57ab570cbd83d403a0b4fd9d3b4179f.jpg)  
Figure 3.5 - Bond PV (Price) vs. Yield

For the bond displayed in figure 3.5 the risk (slope) changes as the yield changes. The second derivative of a function measures how fast the slope changes, and for the bond in figure 3.5 the second derivative is moderately high. In the bond markets, this second derivative is called convexity. The exact definition of convexity varies somewhat (corresponding to the various definitions of BPV and duration), but we will use the second derivative:

$$
\text {C o n v e x i t y} = \partial^ {2} \mathrm {P V} (\mathrm {y}) / \partial \mathrm {y} ^ {2}. \tag {3.7}
$$

To calculate convexity we can simply re-calculate the PV function with a higher and lower yield:

$$
\text {C o n v e x i t y} \approx \frac {\left[ \mathrm {P V} (\mathrm {y} - \mathrm {h}) - 2 * \mathrm {P V} (\mathrm {y}) + \mathrm {P V} (\mathrm {y} + \mathrm {h}) \right]}{\mathrm {h} * \mathrm {h}} \tag {3.6b}
$$

# Example 3.7 Convexity for a Eurobond

Continuing the example of the four year  $6.5\%$  bond, what would be the convexity of the bond one month after issue if the market yield were  $6.6\%$ ? Assume the bond were issued on 15 May 1997.

<table><tr><td>Key</td><td>Display</td><td>Description</td></tr><tr><td>FIN BOND TYPE</td><td></td><td>Gets to the BOND menu to set the bond type</td></tr><tr><td>360 ANN EXIT</td><td>30/360 ANNUAL</td><td>Sets the bond type to 30/360, annual coupons</td></tr><tr><td>6.161997 SETT</td><td>SETT=06/16/1997 MON</td><td>Sets settle to 6/16/1997 since 6/15/1997 is a Sunday</td></tr><tr><td>5.152001 MAT</td><td>MAT=05/15/2001 TUE</td><td>Sets maturity date to 15 May 2001, four years from the issue date of 15 May 1997</td></tr><tr><td>6.5 CPN%</td><td>CPN%=6.50</td><td>Sets the coupon to 6.5%</td></tr><tr><td>100 CALL</td><td>CALL=100</td><td>Ensures that principal repayment is set to 100</td></tr><tr><td>MORE 6.6 YLD%</td><td>YLD%=6.60</td><td>Sets the yield to 6.6%</td></tr><tr><td>PRICE STO 2</td><td>PRICE=99.648</td><td>Calculates price (clean) and stores the price</td></tr><tr><td>6.5 YLD% PRICE</td><td>PRICE=99.9840</td><td>Price if the yield is lower</td></tr><tr><td>STO 1</td><td></td><td></td></tr><tr><td>6.7 YLD% PRICE</td><td>PRICE=99.3144</td><td>Price if the yield is higher</td></tr><tr><td>STO 3</td><td></td><td></td></tr><tr><td>RCL 1 RCL 3 +</td><td>199.2984</td><td></td></tr><tr><td>RCL 2 2 x - .01 ÷</td><td>0.1495</td><td>This is the convexity per unit change in yield (i.e. for yield going from 6.6% to 6.7%).</td></tr></table>

Convexity is important because it measures how much the risk itself changes as yields change, and it becomes dramatically more important in options (where it is usually called gamma or  $\gamma$ ). In general it is advantageous to buy an instrument with positive convexity or gamma in a volatile environment, because a positive convexity position always wins.

# Example 3.8 Treasury Butterfly Position

Take as an example a 5 - 10 - 30 butterfly bond position, where one sells the 10 and buys the 5 and 30 to remain zero net risk. The bonds are:

5s:  $5.625\%$  coup, 12/31/02 maturity, trading at  $5.313\%$

10s:  $6.125\%$  coup, 8/15/07 maturity, trading at  $5.439\%$

30s:  $6.125\%$  coup, 11/15/27 maturity, trading at  $5.731\%$

Say one sold \$100m of the 10s and bought the 5s and 30s in equal risk, all for settlement 1/15/98.

What is the P&L if all yields rise by 10bp or fall by 10bp? What is the convexity of the portfolio?

For the 5s, the calculation of the price, BPV and convexity are:

<table><tr><td>Key</td><td>Description</td></tr><tr><td>FIN BOND TYPE A/A SEMI EXIT</td><td>Gets to the BOND menu</td></tr><tr><td>1.151998 SETT 12.312002 SETT 5.625 CPN%</td><td></td></tr><tr><td>100 CALL MORE</td><td></td></tr><tr><td>5.313 YLD% PRICE STO 2</td><td>Calculates price of 101.3417</td></tr><tr><td>5.213 YLD% PRICE STO 1</td><td>Price 10bp lower</td></tr><tr><td>5.413 YLD% PRICE STO 3</td><td>Price 10bp higher</td></tr><tr><td>RCL 1 RCL 3 - 0.2 ÷</td><td>Calculates the BPV of 4.344</td></tr><tr><td>RCL 1 RCL 3 + RCL 2 2 x - 0.01 ÷</td><td>Convexity of 0.222</td></tr></table>

The prices, BPVs, convexities, and required positions of the three bonds are:

<table><tr><td></td><td>5</td><td>10</td><td>30</td><td>NET</td></tr><tr><td>Price</td><td>101.3417</td><td>105.0657</td><td>105.5911</td><td></td></tr><tr><td>BPV</td><td>4.344</td><td>7.623</td><td>14.826</td><td></td></tr><tr><td>Convexity</td><td>0.222</td><td>0.682</td><td>3.188</td><td></td></tr><tr><td>Position</td><td>87.7mm</td><td>-100mm</td><td>25.7mm</td><td></td></tr><tr><td>Risk</td><td>38,115</td><td>(76,230)</td><td>38,115</td><td>0</td></tr><tr><td>Convexity</td><td>19.47</td><td>-68.20</td><td>81.93</td><td>33.20</td></tr></table>

The initial position of the 10s is short  $100\mathrm{mm}$  which generates an initial risk of -76,230  $(= -100^{*}762.3)$ . If this risk is equally split between the 5s and 30s, the required positions of 5s and 30s are long  $87.7\mathrm{mm}$  5s and long  $25.7\mathrm{mm}$  30s.

If all yields rise or fall by 10bp, the new prices and the P&L are:

<table><tr><td></td><td>5</td><td>10</td><td>30</td><td>NET</td></tr><tr><td>Price (yield+10bp)</td><td>100.9084</td><td>104.3068</td><td>104.1245</td><td></td></tr><tr><td>P&amp;L</td><td>(380,019)</td><td>758,868</td><td>(376,927)</td><td>1,921</td></tr><tr><td>Price (yield-10bp)</td><td>101.7773</td><td>105.8314</td><td>107.0896</td><td></td></tr><tr><td>P&amp;L</td><td>381,962</td><td>(765,689)</td><td>385,122</td><td>1,395</td></tr></table>

For either a rise or fall in yields, the portfolio benefits; i.e. whether the market rallies or trades off, the portfolio makes money. The portfolio makes money because the portfolio has positive convexity, although it is not a lot of money because the convexity of bonds is not very high. The portfolio has positive convexity because longer bonds have much higher convexity than shorter bonds, and the convexity of the 30s dominates the convexity of the whole portfolio.

In the financial markets there is never anything free, and the positive convexity of this portfolio has some off-setting cost in terms of risk (yields may not move in a parallel manner) or other costs (for example cost of repo).

# APPENDIX

Table 3.1 - Summary of Market Conventions  

<table><tr><td>Security</td><td>Coupon Frequency</td><td>Day-count Basis</td><td>Notes</td></tr><tr><td>US Treasury Bonds</td><td>Semi-annual</td><td>Actual/Actual</td><td>1 day settle</td></tr><tr><td>US Corporate Bonds</td><td>Semi-annual</td><td>30/360</td><td></td></tr><tr><td>UK Gilts</td><td>Semi-annual</td><td>Actual/Actual</td><td>Go XD</td></tr><tr><td>Euro Gov. bonds (e.g. French OATs, German Bunds)</td><td>Annual</td><td>Actual/Actual</td><td></td></tr><tr><td>Italian Gov. bonds</td><td>Semi-annual</td><td>Actual/Actual</td><td>Yield quoted annual basis</td></tr><tr><td>Jansanes JGBs</td><td>Semi-annual</td><td>Actual/365 fixed</td><td>Yield quoted simple</td></tr><tr><td>Canadian Gov. bonds</td><td>Semi-annual</td><td>Actual/365 fixed</td><td>Yield quoted A/A, AI goes neg</td></tr><tr><td>Australian Gov. bonds</td><td>Semi-annual</td><td>Actual/Actual</td><td></td></tr><tr><td>Eurobonds</td><td>Annual</td><td>30E/360</td><td></td></tr></table>

# YIELD CALCULATIONS

ACTUAL / ACTUAL semi-annual (e.g. US Treasuries)

$$
P + A = \sum_ {i = 0} ^ {n - 1} \frac {c / 2}{\left(1 + y / 2\right) ^ {i + x}} + \frac {1 0 0}{\left(1 + y / 2\right) ^ {n - 1 + x}} \tag {3.A1}
$$

where

$$
\begin{array}{l} \mathbf {y} = (\text {s e m i - a n n u a l l y c o m p o u n d e d , o r s e m i - a n n u a l b o n d}) \text {y i e l d} \\ c = \text {s t a t e d} \\ n = \text {n u m b e r o f c o u p o n p a y m e n t s y t o b e m a d} \\ x = (\# \text {o f d a y s u n t i l p a m e n t}) / (\# \text {o f d a y s f r o m l a s t p a m e n t t o n e x t p a m e n t}) \\ A = \text {a c c r u e d i n t e r e s t} = (1 - x) ^ {*} c / 2 \\ \end{array}
$$

For actual calculations use:

$$
\mathbf {P} + \mathbf {A} = \frac {1}{(1 + \mathbf {y} / 2) ^ {\mathrm {x}}} \circ \left[ \frac {\mathbf {c}}{\mathbf {y}} \circ \left(1 - \frac {1}{(1 + \mathbf {y} / 2) ^ {\mathrm {n} - 1}}\right) + \frac {1 0 0}{(1 + \mathbf {y} / 2) ^ {\mathrm {n} - 1}} \right]
$$

ACTUAL / ACTUAL annual (e.g. French OATs)

$$
\mathrm {P} + \mathrm {A} = \sum_ {\mathrm {i} = 0} ^ {\mathrm {n} - 1} \frac {\mathrm {c}}{\left(1 + \mathrm {y}\right) ^ {\mathrm {i} + \mathrm {x}}} + \frac {1 0 0}{\left(1 + \mathrm {y}\right) ^ {\mathrm {n} - 1 + \mathrm {x}}} \tag {3.A2}
$$

where

$$
\begin{array}{l} y = (\text {a n n u a l l y c o m p o u n d e d , o r a n n u a l b o n d}) \text {y i e l d} \\ c = \text {s t a t e d} \\ \end{array}
$$

$\mathbf{n} =$  number of coupon payments yet to be made

$\mathrm{x} = (\# \text{ of days until payment}) / (\# \text{ of days from last payment to next payment})$

A = accrued interest = (1-x)*c

For actual calculations use:

$$
\mathbf {P} + \mathbf {A} = \frac {1}{(1 + \mathbf {y}) ^ {\mathrm {x}}} \circ \left[ \frac {\mathbf {c}}{\mathbf {y}} \circ \left(1 - \frac {1}{(1 + \mathbf {y}) ^ {\mathrm {n} - 1}}\right) + \frac {1 0 0}{(1 + \mathbf {y}) ^ {\mathrm {n} - 1}} \right]
$$

# ACTUAL / 365 FIXED semi-annual

(3.A3) Use (3.A1)

where

$\mathbf{y} =$  (semi-annually compounded, or semi-annual bond) yield

$\mathbf{c} =$  stated coupon

$\mathbf{n} =$  number of coupon payments yet to be made

$\mathrm{x} = (\# \text{of days until payment}) / 365$

$\mathbf{A} =$  accrued interest  $=$  c \* (# of days since last payment) / 365

30/360 semi-annual (e.g. most US Corporates)

(3.A4) Use (3.A1)

where

$\mathbf{y} =$  (semi-annually compounded, or semi-annual bond) yield

$\mathbf{c} =$  stated coupon

$\mathbf{n} =$  number of coupon payments yet to be made

$\mathrm{x} = (\# \text{of 30/360 days until payment}) / 360$

A = accrued interest = c * (# of 30/360 days since last payment) / 360

30E/360 annual (most Eurobonds)

(3.A5) Use (3.A2)

where

$y =$  (annually compounded, or annual bond) yield

$c =$  stated coupon

$n =$  number of coupon payments yet to be made

$\mathrm{x} = (\# \text{of 30E/360 days until payment}) / 360$

A = accrued interest = c * (# of 30E/360 days since last payment) / 360

# Gilts Oddities (Ex-dividend or XD)

For Gilts trading ex-dividend, the "next coupon" actually occurs more than one half-year away. The following diagram shows a bond which is trading ex-dividend, has 15 days until the "last coupon"  $\mathrm{coup}_0$  (which the present owner will not receive), and then a further 184 days until the "next coupon",  $\mathrm{coup}_1$ .

There are negative 15 days accrued, since it is still 15 days to got until the "last coupon"  $(\mathrm{coup}_0)$ . Thus

$$
\mathrm {A I} = - 1 5 / 3 6 5
$$

The most common convention is to take  $x = 1 + 15 / 182.5$ , although sometimes  $x = \mathrm{DAYS} / 182.5$  (i.e. 199/182.5) is used.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/5f8e6f83-6240-4161-91e0-582ca704c686/33809ecc18e90863002a19cb144123135360ac14e464935f7040d7cc998a3aa5.jpg)  
Figure 3.4 - Gilts and XD Calculations

# Canadian Government Bond Oddities

There are two oddities about Canadian government bonds:

- Interest accrues on an A/365F basis, but the bonds do not go ex-dividend prior to a coupon date. This has the rather bizarre result that for a half-year with 184 days the last day will show negative accrued interest.  
- The convention in the market is to calculate the yield using the US Treasury A/A conventional yield calculation. That is, just take the clean price, plug it into the HP17B using semi and A/A, and calculate a yield (or vice-versa for yield to price calculations). The actual dirty price which is then used for trading, however, is calculated with accrued interest on an A/365F basis.

# TRUEYIELD

All the yield calculations above assume that, after the next coupon payment, coupons are an exact number of periods apart. This will generally not be true. For semi-annual bonds, for example, some half-years are 181 days and other half years are 184 days. For any bond a "true" yield can be calculated. This takes into account the exact days and amounts of payments. For example if a coupon falls on a Saturday, it will not be paid until Monday (or Tuesday if Monday is a holiday). The conventional yield calculations above assume the payment occurs on the Saturday. The true yield will be

$$
\mathrm {P} + \mathrm {A} = \sum_ {\mathrm {i} = 1} ^ {\mathrm {n}} \mathrm {c} _ {\mathrm {i}} \cdot \exp \left[ - \mathrm {y} _ {\mathrm {c c}} \cdot \mathrm {t} _ {\mathrm {i}} \right] + 1 0 0 \cdot \exp \left[ - \mathrm {y} _ {\mathrm {c c}} \cdot \mathrm {t} _ {\mathrm {n}} \right] \tag {3.A6}
$$

$$
\mathrm {P} + \mathrm {A} = \sum_ {\mathrm {i} = 1} ^ {\mathrm {n}} \frac {\mathrm {c} _ {\mathrm {i}}}{\left(1 + \mathrm {y} _ {\mathrm {a b}}\right) ^ {\mathrm {t} _ {\mathrm {i}}}} + \frac {1 0 0}{\left(1 + \mathrm {y} _ {\mathrm {a b}}\right) ^ {\mathrm {t} _ {\mathrm {n}}}} \tag {3.A7}
$$

where

$\mathbf{y}_{\mathrm{cc}} =$  yield, continuously compounded at a 365-day annual rate

$y_{\mathrm{ab}} =$  yield, annually compounded at a 365-day annual rate.

$\mathbf{c}_{\mathrm{i}} =$  coupon payment I

$\mathfrak{t}_{\mathrm{i}} =$  time to actual payment of coupon i, measured as days/365

$\mathrm{n} =$  number of coupon payments

A = accrued interest calculated according to the bond's usual convention

The continuously compounded rate can be converted to the annual rate as described in the section on rate conversions.

# EXAMPLE

take a seven and-a-half year annual  $10\%$  bond with settlement on 13 November 1991 and maturity 15 March 1999. The actual number of days from 15 March 1991 to 15 March 1992 is 366. From 15 March 1991 to 13 November 1991 is 243 actual days, 238 30/360 days. From 13 November 1991 to 15 March 1992 is 123 actual days, 122 30/360 days.

Such an annual bond could be quoted and traded on an Actua/Actual basis, an Actua/365 fixed, or a 30E/360 basis. We will calculate the accrued interest and conventional yield under each of these three conventions, and then compare the bonds on a "true" yield basis.

Accrued intere would be:

ACTUAL/ACTUAL  $10*243 / 366 =$  6.63934

ACTUAL/365 Fixed  $10 * 243 / 365 = 6.65753$

30E/360  $10*238 / 360 =$  6.61111

The dates of coupon payment will be (rolling from weekends to the next business day):

Monday 16-mar-92

Monday 15-mar-93

Tuesday 15-mar-94

Wednesday 15-mar-95

Friday 15-mar-96

Monday 17-mar-97

Monday 16-mar-98

Monday 15-mar-99

The following table shows the accrued interest, price, and conventional yield under the alternative conventions (A/A, A/365F, 30E/360), given that the bond is always trading at a "true" yield of  $10.80\%$  ab.

Table 3.2 - Seven Year 10% Coupon Bond Trading at 10.80%ab True Yield (Settlement 13-nov-91, Maturity 15-mar-99)  

<table><tr><td></td><td>ACCRUED INTEREST</td><td>PRICE</td><td>CONVENTIONAL YIELD</td></tr><tr><td>Actual / Actual</td><td>6.63934</td><td>95.93153</td><td>10.8077</td></tr><tr><td>Actual / 365 fixed</td><td>6.65753</td><td>95.91334</td><td>10.8057</td></tr><tr><td>30E/360</td><td>6.61111</td><td>95.95976</td><td>10.8015</td></tr></table>

This table shows that the conventional yields are not very different when the "true" yield is the same. The prices are somewhat different, largely because interest is accrued differently. (Remember that the dirty price or PV is the same in all cases.)

# 30/360 AND 30E/360 DAY COUNT CONVENTIONS

There are two conventions for calculating 30/360 days. Most Eurobonds and swaps use 30E/360, while most US corporate bonds use 30/360. The HP12C and HP17B display 30/360. The difference is in going across the end of a 31-day month:

<table><tr><td></td><td>30E/360</td><td>30/360</td></tr><tr><td>28-Jul→30-Jul</td><td>2</td><td>2</td></tr><tr><td>28-Jul→31-Jul</td><td>2</td><td>3</td></tr><tr><td>28-Jul→1-Aug</td><td>3</td><td>3</td></tr><tr><td>30-Jul→31-Jul</td><td>0</td><td>0</td></tr></table>

The calculation of the two conventions is done by writing a date as yyyy mm dd (e.g 1991 08 25 for 25-aug-1991), with the conventions:

30E/360 IF  $(\mathrm{dd_i} = 31)$  THEN  $\mathrm{dd_i} = 30$

DAYS BETWEEN  $= 360^{*}(\mathrm{yyyy}_{1} - \mathrm{yyyy}_{2}) + 30^{*}(\mathrm{mm}_{1} - \mathrm{mm}_{2}) + (\mathrm{dd}_{1} - \mathrm{dd}_{2})$

30/360 IF  $(\mathrm{dd}_1 = 31)$  THEN  $\mathrm{dd}_1 = 30$

IF  $(\mathrm{dd}_2 = 31$  AND  $\mathrm{dd}_1 = 30$  or 31) THEN  $\mathrm{dd}_2 = 30$

DAYS BETWEEN  $= 360^{*}(\mathrm{yyy}_{1}$  -yyyy)  $+30^{*}(\mathrm{mm}_{1}$  -mm2) + (dd1dd2)

# INTEREST RATE CONVERSIONS

# MONEY MARKET AND ANNUAL BOND

(3.A8a)  $\mathrm{r_{ab} = [1 + r_{mm}*AD / 360]^{365 / AD} - 1}$

for U.S., France, etc.

(3.A8b)  $\mathbf{r}_{\mathrm{ab}} = [1 + \mathbf{r}_{\mathrm{mm}}*\mathrm{AD} / 365]^{365 / \mathrm{AD}} - 1$

for U.K.

(3.A9a)  $\mathrm{r_{mm} = [360 / AD]*[(1 + r_{ab})^{AD / 365} - 1]}$

for U.S., France, etc.

(3.A9b)  $\mathrm{r_{mm} = [365 / AD]*[(1 + r_{ab})^{AD / 365} - 1]}$

for U.K.

where

$\mathbf{r}_{\mathrm{ab}}$ $= ($  decimal) rate, compounded at 365-day annual rate

$\mathbf{r}_{\mathrm{mm}}$ $=$  (decimal) money market rate

AD = actual days from settle to end of term

EXAMPLE:

$\mathbf{r}_{\mathrm{mm}}$  (US)  $= .0825$

settle (today)  $= 13 - \mathrm{jul} - 90$

end of period  $= 13$  -oct-90

AD  $= 92$  days

\(\mathbf{r}_{\mathrm{ab}}\) \[1 + 0.0825*92 / 360]^{365 / 92} - 1\)  
[ [1.02108]^{3.96739} - 1 ]  
0.086299

$\mathbf{r}_{\mathrm{mm}} = [360 / 92]*[(1 + 0.086299)^{92 / 365} - 1]$

[ [3.91304]^{*} \left[ 1.086299^{.252055} - 1 \right] ]  
0.0825

# MONEY MARKET AND SEMI-ANNUAL BOND

(3.A10a)  $\mathrm{r_{\mathrm{Sab}} = 2}^{*}[(1 + \mathrm{r_{mm}}^{*}\mathrm{AD / 360})^{182.5 / \mathrm{AD}} - 1]$

for U.S., France, etc.

(3.A10b)  $\mathrm{r_{\mathrm{Sab}} = 2*[}(1 + \mathrm{r_{mm}}^{*}\mathrm{AD} / 365)^{182.5 / AD} - 1]$

for U.K,

$$
\mathrm {r} _ {\mathrm {m m}} = [ 3 6 0 / \mathrm {A D} ] * \left[ (1 + \mathrm {r} _ {\mathrm {s a b}} / 2) ^ {\mathrm {A D} / 1 8 2. 5} - 1 \right] \tag {3.A11a}
$$

for U.S., France, etc.

$$
\mathrm {r} _ {\mathrm {m m}} = [ 3 6 5 / \mathrm {A D} ] ^ {*} [ (1 + \mathrm {r} _ {\mathrm {s a b}} / 2) ^ {\mathrm {A D} / 1 8 2. 5} - 1 ] \tag {3.A11b}
$$

for U.K.

where

$$
\mathrm {r} _ {\text {s a b}} \quad = (\text {d e c i m a l}) \text {r a t e , s e m i - a n n u a l l y c o m p o u n d e d a n a l r a t e}
$$

$$
\mathrm {r} _ {\mathrm {m m}} \quad = (\text {d e c i m a l}) \text {m o n e y m a r k e t r a t e}
$$

$$
A D = \text {a c t u a l d a y s f r o m s e t t l e t o e n d o f t e r m}
$$

EXAMPLE:

$$
\mathrm {r} _ {\mathrm {m m}} (\mathrm {U S}) = . 0 8 2 5
$$

$$
\text {s e t t l e (t o d a y)} \quad = 1 3 - j u l - 9 0
$$

$$
\text {e n d o f p e r i o d} = 1 3 - \text {o c t - 9 0}
$$

$$
A D = 9 2 \text {d a y s}
$$

$$
\begin{array}{l} \mathrm {r} _ {\text {s a b}} = 2 * \left[ (1 + 0. 0 8 2 5 * 9 2 / 3 6 0) ^ {1 8 2. 5 / 9 2} - 1 \right] \\ = 2 * [ 1. 0 2 1 0 8 ^ {1. 9 8 3 7 0} - 1 ] \\ = \quad 0. 0 8 4 5 1 3 \\ \end{array}
$$

$$
\begin{array}{l} \mathrm {r} _ {\mathrm {m m}} \quad = \quad [ 3 6 0 / 9 2 ] * \left[ (1 + 0. 0 8 4 5 1 3 / 2) ^ {9 2 / 1 8 2. 5} - 1 \right] \\ = [ 3. 9 1 3 0 4 ] * [ 1. 0 4 2 2 5 7 ^ {. 5 0 4 1 1} - 1 ] \\ = \quad 0. 0 8 2 5 \\ \end{array}
$$

# QUARTERLY, SEMI, AND ANNUAL MONEY MARKET

Often one wishes to convert from a "generic" quarterly money market rate, rather than a rate on a specific instrument. In this case one must approximate the actual number of days. We generally use 91.25 for quarterly, 182.5 for semi-annual, and 365 for annual.

# EXAMPLES: (all ACTUAL/360)

8% quarterly money-market to annual bond:

$$
\begin{array}{l} . 0 8 3 6 1 = (1 + . 0 8 * 9 1. 2 5 / 3 6 0) ^ {4} - 1 \\ = (1. 0 2 0 2 7 8) ^ {4} - 1 \\ \end{array}
$$

8% semi money-market to annual bond:

$$
\begin{array}{l} . 0 8 2 7 6 = (1 + . 0 8 * 1 8 2. 5 / 3 6 0) ^ {2} - 1 \\ = (1. 0 4 0 5 5 6) ^ {2} - 1 \\ \end{array}
$$

8% annual money-market to annual bond:

$$
. 0 8 1 1 1 = . 0 8 * 3 6 5 / 3 6 0
$$

8% quarterly money-market to semi-annual bond:

$$
\begin{array}{l} . 0 8 1 9 3 = 2 * [ (1 + . 0 8 * 9 1. 2 5 / 3 6 0) ^ {2} - 1 ] \\ = 2 * \left[ (1. 0 2 0 2 7 8) ^ {2} - 1 \right] \\ \end{array}
$$

8% semi money-market to semi-annual bond:

$$
\begin{array}{l} . 0 8 1 1 1 = 2 * (. 0 8 * 1 8 2. 5 / 3 6 0) \\ = 2 * [ . 0 4 0 5 5 6 ] \\ \end{array}
$$

8% annual money-market to semi-annual bond:

$$
\begin{array}{l} . 0 7 9 5 3 = 2 * [ (1 + . 0 8 * 3 6 5 / 3 6 0) ^ {5} - 1 ] \\ = 2 * [ (1. 0 8 1 1 1) ^ {. 5} - 1 ] \\ \end{array}
$$

# ANNUAL BOND AND SEMI-ANNUAL BOND

$$
\mathrm {r} _ {\mathrm {s a b}} = 2 * \left[ \left(1 + \mathrm {r} _ {\mathrm {a b}}\right) ^ {0. 5} - 1 \right] \tag {3.A12}
$$

$$
\mathrm {r} _ {\mathrm {a b}} = \left(1 + \mathrm {r} _ {\mathrm {s a b}} / 2\right) ^ {2} - 1 \tag {3.A13}
$$

where

$$
\mathrm {r} _ {\text {s a b}} \quad = (\text {d e c i m a l}) \text {r a t e , s e m i - a n n u a l l y c o m p o u n d e d a n n u a l r a t e}
$$

$$
\mathrm {r} _ {\mathrm {a b}} \quad = (\text {d e c i m a l}) \text {r a t e , c o m p o u n d e d a t 3 6 5 - d a y a n a n a l r a t e}
$$

EXAMPLE:

$$
\mathrm {r} _ {\mathrm {a b}} (\mathrm {U S}) = . 0 8 6 2 9 9
$$

$$
\mathrm {r} _ {\text {s a b}} (\mathrm {U S}) = . 0 8 4 5 1 3
$$

$$
\begin{array}{l} \mathrm {r} _ {\mathrm {a b}} \quad = \quad (1 + 0. 0 8 4 5 1 3 / 2) ^ {2} - 1 \\ = \quad (1. 0 4 2 2 5 7 ^ {2} - 1 ] \\ = \quad 0. 0 8 6 2 9 9 \\ \mathrm {r} _ {\text {s a b}} = 2 * \left[ (1 + 0. 0 8 6 2 9 9) ^ {0. 5} - 1 \right] \\ = \quad 0. 0 8 4 5 1 3 \\ \end{array}
$$

# MONEY MARKET TO CONTINUOUSLY COMPOUNDED

$$
\begin{array}{l} \mathrm {r} _ {\mathrm {c c}} = [ 3 6 5 / \mathrm {A D} ] ^ {*} \ln [ 1 + \mathrm {r} _ {\mathrm {m m}} * \mathrm {A D} / 3 6 0 ] \quad \text {f o r U . S . , F r a n c e , e t c .} (3.A14a) \\ \mathrm {r} _ {\mathrm {c c}} = [ 3 6 5 / \mathrm {A D} ] ^ {*} \ln [ 1 + \mathrm {r} _ {\mathrm {m m}} * \mathrm {A D} / 3 6 5 ] \quad \text {f o r U . K}. (3.A14b) \\ \end{array}
$$

where

$$
\begin{array}{l} \mathrm {r} _ {\mathrm {c c}} = (\text {d e c i m a l}) \text {r a t e , c o n t i n u o u s l y c o m p o u n d e d a t 3 6 5 - d a y a n a n a l r a t e} \\ \mathrm {r} _ {\mathrm {m m}} \quad = (\text {d e c i m a l}) \text {m o n e y m a r k e t r a t e} \\ \mathrm {A D} \quad = \text {a c t u a l d a y s f r o m s e t t l e t o e n d o f t e r m} \\ \end{array}
$$

EXAMPLE:

$$
\mathrm {r} _ {\mathrm {m m}} (\mathrm {U S}) = . 0 8 2 5
$$

$$
\text {s e t t l e (t o d a y)} \quad = 1 3 - j u l - 9 0
$$

$$
\text {e n d o f p e r i o d} = 1 3 - \text {o c t - 9 0}
$$

$$
A D = 9 2 \text {d a y s}
$$

$$
\begin{array}{l} \mathrm {r} _ {\mathrm {c c}} = [ 3 6 5 / 9 2 ] * \ln [ 1 + 0. 0 8 2 5 * 9 2 / 3 6 0 ] \\ = 3. 9 6 7 3 9 * \ln [ 1. 0 2 1 0 8 ] \\ = \quad 0. 0 8 2 7 7 6 \\ \end{array}
$$

# SEMI-ANNUAL BOND AND CONTINUOUSLY COMPOUNDED

$$
\mathrm {r} _ {\mathrm {c c}} = 2 * \ln [ 1 + \mathrm {r} _ {\mathrm {s a b}} / 2 ] \tag {3.A15a}
$$

$$
\mathrm {r} _ {\mathrm {s a b}} = 2 * [ \exp (\mathrm {r} _ {\mathrm {c c}} / 2) - 1 ] \tag {3.A15b}
$$

where

$$
\begin{array}{l} \mathrm {r} _ {\mathrm {c c}} = (\text {d e c i m a l}) \text {r a t e , c o n t i n u o u s l y c o m p o u n d e d a t 3 6 5 - d a y a n a n a l r a t e} \\ \mathrm {r} _ {\text {s a b}} \quad = (\text {d e c i m a l}) \text {s e m i - a n n u a l} \\ \end{array}
$$

EXAMPLE:

$$
\begin{array}{l} \mathrm {r} _ {\text {s a b}} = . 0 8 4 5 \\ \mathrm {r} _ {\mathrm {c c}} = . 0 8 2 7 6 4 \\ \mathrm {r} _ {\mathrm {c c}} \quad = 2 * \ln [ 1 + 0. 0 8 4 5 / 2 ] \\ \end{array}
$$

$$
\begin{array}{l} = 2 * \ln [ 1. 0 4 2 2 5 ] \\ = \quad 0. 0 8 2 7 6 4 \\ \mathrm {r} _ {\text {s a b}} = 2 * [ \exp (. 0 8 2 7 6 4 / 2) - 1 ] \\ = 2 * [ \exp (. 0 4 1 3 8 2) - 1 ] \\ = \quad . 0 8 4 5 \\ \end{array}
$$

# ANNUAL BOND AND CONTINUOUSLY COMPOUNDED

(3.A16a)  $\mathrm{r_{cc}} = \ln [1 + \mathrm{r_{ab}}]$

(3.A16b)  $\mathrm{r_{ab}} = \exp (\mathrm{r_{cc}}) - 1$

where

$\mathbf{r}_{\mathrm{cc}}$  = (decimal) rate, continuously compounded at 365-day annual rate

$\mathbf{r}_{\mathrm{ab}}$ $=$  (decimal) annual bond rate

EXAMPLE:

$$
\begin{array}{l} \mathrm {r} _ {\mathrm {a b}} \quad = . 0 8 6 2 8 5 \\ \mathrm {r} _ {\mathrm {c c}} = . 0 8 2 7 6 4 \\ \mathrm {r} _ {\mathrm {c c}} = \ln [ 1. 0 8 6 2 8 5 ] \\ = \quad 0. 0 8 2 7 6 4 \\ \mathrm {r} _ {\mathrm {a b}} \quad = \quad [ \exp (. 0 8 2 7 6 4) - 1 ] \\ = \quad . 0 8 6 2 8 5 \\ \end{array}
$$

For most practical purposes, annual bond ACTUAL/ACTUAL, ACTUAL/365, and 30/360 can be treated the same. The same would hold true for semi-annual bond ACTUAL/ACTUAL, ACTUAL/365, and 30/360.

# RISK, BPV, AND DURATION

Macaulay's duration, modified duration, adjusted duration, BPV, Bloomberg's risk: what is what and which should we use? Following are the definitions and how the alternate measures are used.

# BPV (BASIS POINT VALUE)

This is the change in value of a bond (or indeed any other type of instrument) for a change in yield:

$$
\begin{array}{c c c} \text {B P V} & = & \frac {\Delta \mathrm {P}}{\Delta \mathrm {y}} \end{array}
$$

The BPV is used to calculate the risk of a bond or the change in the price for a change in yields. BPV is usually expressed as the change in value of a \$100 nominal bond for a 100BP change in yields.

The BPV can be calculated on the HP-12C by re-calculating the bond price at 10BP lower and 10BP higher yield, taking the difference, and dividing by 0.20 (y is expressed in percentage, such as 8.25.)

$$
\text {B P V} = \frac {\left[ P (y - . 1 0) - P (y + . 1 0) \right]}{0 . 2 0}
$$

# 'CLEAN' MODIFIED DURATION

We often want to look at the risk in percentage terms. Clean modified duration gives the percentage risk of the clean price or flat price (price without accrued interest). This tells how much the flat price changes (in percentage terms) per 100BP change in yields:

$$
\text {C M D} = 1 0 0 * \frac {1}{P} \frac {\Delta P}{\Delta y} = 1 0 0 * \frac {B P V}{P}
$$

# 'DIRTY' MODIFIED (STANDARD MODIFIED OR ADJUSTED DURATION)

The standard definition of modified duration is the percentage risk of the full price (dirty price or price plus accrued interest) per 100BP change in yields:

$$
\text {D M D} = 1 0 0 * \frac {1}{P + A} \frac {\Delta P}{\Delta y} = 1 0 0 * \frac {B P V}{P + A}
$$

# DURATION OR MACAULEY'S DURATION

$$
\begin{array}{l} \text {S e m i - A n n u a l r a t e s} \\ \text {D U R} = (1 + y / 2 0 0) * \text {D M D} \end{array}
$$

$$
\begin{array}{l} \text {A n n u a l R a t e s} \\ \text {D U R} = (1 + y / 1 0 0) * \text {D M D} \end{array}
$$

(y is percentage, such as 8.25.)

N.B: all these measures give the risk per semi-bond BP for U.S. Treasuries and per annual bond BP for something quoted with annual bond rates, like French OAT's or German Bund's.

# BACKGROUND AND HISTORY

The various measures were actually derived in the reverse order presented above. Macaulay defined duration as the weighted average time to payment:

$$
\text {M a c a u l e y ' s D u r a t i o n} = \sum_ {\mathrm {t}} \frac {\mathrm {P V} \left(\mathrm {C F} _ {\mathrm {t}}\right)}{\mathrm {P V} (\text {t o t a l})} \cdot \mathrm {t} = \frac {1}{\mathrm {P V}} \sum_ {\mathrm {i} = 0} ^ {\mathrm {n}} \frac {\mathrm {C F} _ {\mathrm {i}} \cdot \mathrm {i} / \mathrm {p}}{\left(1 + \mathrm {y} / \mathrm {p}\right) ^ {\mathrm {i} + \mathrm {x}}} \tag {3.A17}
$$

The relation between Macauley's duration and modified duration can be derived by starting with the yield-to-price relation as in equation (3.3) or (3.A1), taking the derivative with respect to yields, and dividing by the price:

$$
\text {M o d D u r a t i o n} = \frac {1}{\mathrm {P V}} \frac {\partial P V}{\partial y} = - \frac {1}{\mathrm {P V}} \sum_ {\mathrm {i} = 0} ^ {\mathrm {n}} \frac {\mathrm {C F} _ {\mathrm {i}} \cdot \mathrm {t}}{\left(1 + \mathrm {y} / \mathrm {p}\right) ^ {\mathrm {i} + \mathrm {x} + 1}} = - \frac {\text {M a c a u l e y D u r a t i o n}}{(1 + \mathrm {y} / \mathrm {p})}
$$

As a practical matter, Macaulay's duration is usually not used in calculations, but is often quoted because of its historical pedigree.

Dirty modified duration was derived from the original duration to get rid of the  $1 + y / 200$  term. What is left (dirty modified duration) gives the percent change in dirty price per 100BP change in yield. The real reason for its ubiquity is its derivation from Macaulay's duration, rather than its usefulness. For a trader, clean modified duration is more useful. In fact, many in the financial markets (incorrectly) use dirty modified duration as if it were the percent change in clean price; i.e. as if it were clean modified duration.

# EXAMPLE

Take the current 10 year U.S. Treasury, the 8's of 15-May-2001. Say they were trading for settlement on 14 November 1991 at a yield of  $8.27\%$  sab. The following are the prices and various risk measures:

$$
8 ^ {\prime} \text {s o f} 1 5 - \text {M a y - 2 0 0 1}, 1 4 - \text {N o v - 9 1}
$$

$$
\begin{array}{c c} \text {y l d} & \text {p r i c e} \\ \hline \end{array}
$$

<table><tr><td>8.27</td><td>98.2463</td><td></td><td>BPV = 6.420</td></tr><tr><td>8.37</td><td>97.6071</td><td>Clean Modified Duration</td><td>CMD = 6.534</td></tr><tr><td>8.17</td><td>98.8910</td><td>Dirty Modified Duration</td><td>DMD = 6.280</td></tr><tr><td>AI =</td><td>3.9783</td><td>Macaulay&#x27;s Duration</td><td>DUR = 6.540</td></tr></table>

Say that the whole yield curve moved up in a parallel manner by 7BP. What would be the change in value of \$1,000,000 notional of the bond?

BPV: \$6.420 per 100BP change for \$100 nominal. Yield up by 7BP, so price down by 7*6.42/100=.4494 for \$100 notional, or \$4,494 for \$1,000,000 nominal.  
CMD: 6.534% per 100BP change, or .4574% per 7BP. Price down by  \$982,463*.004574 = 4,494 for\$ 1mm notional, or 98.2463*.004574 = \$0.4494 for \$100 notional.  
 DMD: 6.280% per 100BP change, or .4396% per 7BP. Dirty price = \$1,022,246. Price down by $1,022,246*.004396 = $4,494 for \$1mm notional, or 102.2246*.004396 = \$0.4494 for \$100 notional.  
DUR: Do this by converting Macaulay's duration to dirty modified duration:  $6.280 = 6.540 / (1 + 8.27 / 200)$ , and then performing the above calculation.

The problem with dirty modified duration is that one is usually concerned with how the clean price changes when yields change rather than the dirty price; after all accrued interest does not change with yields. To use dirty modified duration one usually has to calculate accrued interest and add it to the clean price to find the actual change.

To highlight potential problems with interpretation of dirty modified duration as opposed to clean duration, look at the same treasury two days later (16 November). Because the coupon payment date is 15 November, the accrued interest goes from almost 4 on the 14th to almost zero on the 16th. This causes a large rise in dirty modified duration (from 6.28 to 6.53), even though the risk of the security is virtually unchanged. (For higher coupon bonds and annual bonds the effect will be even more pronounced.)

<table><tr><td>yld</td><td>price</td><td></td><td>8&#x27;s of 15-May-2001, 16-Nov-91</td></tr><tr><td>8.27</td><td>98.2470</td><td></td><td>BPV = 6.417</td></tr><tr><td>8.37</td><td>97.6080</td><td>Clean Modified Duration</td><td>CMD = 6.532</td></tr><tr><td>8.17</td><td>98.8914</td><td>Dirty Modified Duration</td><td>DMD = 6.530</td></tr><tr><td colspan="2">AI = 0.02198</td><td>Macaulay&#x27;s Duration</td><td>DUR = 6.800</td></tr></table>

# CHAPTER 4 - SWAPS

# What is a swap?

Most generally, a swap is a contract between two parties to exchange one set of cash flows for another. This is a broad definition and covers a wide variety of structures. Some examples are

- Fixed-floating interest rate swaps in a single currency.  
Cross-currency swaps, both fixed-fixed and fixed-floating.  
- Floating-floating basis swaps such as libor versus CP.  
Equity and total return swaps  
Commodity (price) swaps

This chapters covers fixed-floating interest rate swaps (IRS) in detail. This type of swap developed early and today is probably the most common with the largest volume in trading. You should remember, however, that this makes up only one segment of the more general swap market.

We will focus throughout this chapter on a fixed-floating swap where a dealer receives fixed and pays floating. Figure 4.1 is the traditional swap diagram showing the direction of cash flows. This type of diagram is useful for laying out an overview of a structure and tracking down what goes where. It is not as useful, however, for a detailed understanding of the valuation and risk of a swap.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/5f8e6f83-6240-4161-91e0-582ca704c686/506bf5266bbe9a703e6a00c4b014926cb8b313934765c774ecd4feb722f95a7f.jpg)  
Figure 4.1  
Traditional Swap Diagram  
Figure 4.2 show a "cash flow" diagram of the swap from the dealer's perspective. This diagram is more useful for valuation of both simple structures such as this interest rate swap and more complicated structured products. Used together, these two types of diagrams are very useful tools for analyzing and valuing derivative products.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/5f8e6f83-6240-4161-91e0-582ca704c686/475c265de44a02d5004c64fa351c2ddf5a64e2b691ea110c2caeaa6279bb7aba.jpg)  
Figure 4.2

The general definition of a swap as a contract between two parties to exchange a set of cash flows can be made concrete by focusing on a fixed-floating swap and using the two swap diagrams. An interest rate swap where the dealer receives fixed and pays floating is shown in diagrams 4.1 and 4.2. The contract is

for five years, and requires that at the end of each year the dealer pays the customer a fixed rate of interest calculated on a fixed notional. This might be  $6\%$  calculated on a notional  $\$100\mathrm{mm}$ , which would translate into a payment of  $\$6\mathrm{mm}$  each year. In return the customer must pay the dealer a floating rate of interest, say the annual libor rate calculated on a notional of  $\$100\mathrm{mm}$ . If libor were  $5\%$  then the annual payment would be  $\$5.07\mathrm{mm}$ . The fixed side coupon would be agreed up front and would not change over the life of the swap. The floating side index (libor in this case) would be agreed up front but the actual payment would vary as the floating rate index (libor) changed according to market conditions. The size of the contract would be set by specifying a notional or nominal size of the contract, but this notional would never be actually exchanged between the counterparties.

# Economic Rational

The swap market grew from virtually nothing less than 20 years ago to a thriving market which is central to the fixed income business. There are good economic reasons for the growth and robustness of the market. Swaps allow efficient repackaging and allocation of risk. They provide users with the ability to separate interest rate risk from other characteristics such as counterparty credit risk, leading to the pricing, management, and trading of such risks on their own.

For example, a bank may make a five year fixed rate loan to a corporate customer. The bank has two primary risks embedded in the loan. First, the customer may fail to repay the loan, leading to a loss of the principal amount of the loan. This is counterparty credit risk and is the primary risk commercial banks have traditionally focused on. Second, the level of interest rates may rise after the loan is made. If the bank were not already committed to the lower rate they could make a new loan at the higher rate and earn more. This risk is the interest rate risk that the level of rates will change during the life of the loan, and is the type of risk which bond trading desks have traditionally focused on. An interest rate swap would allow the bank to separate the interest rate risk from the loan by executing a swap at the same time as the loan. The bank has shifted the rate risk to someone else while retaining the credit risk, in which they presumably have special expertise. Such separation allows specialization and efficiency in pricing and trading and thus lower costs and increased customer choice.

# History

The origin of the swaps market was in the back-to-back and parallel loan market of the 1970s. The British government limited purchases of foreign currency, for example US dollars. In response some British firms arranged "back-to-back" loans where the firm lent sterling to a US company and borrowed US dollars while agreeing to make future payments in US dollars in return for receiving sterling. This would now be called a cross-currency swap, and it efficiently allowed the British firm to buy the US dollars.

Much of the early growth of the interest rate swap market was a result of credit arbitrage or exploiting comparative advantages in funding. Consider the following example where two companies, A and B, have the following funding opportunities for five year loans:

Company A

7%

libor+50bp

Company B

8%

libor+125bp

Company B is clearly a lower rated credit than company A; it must pay a higher rate in both the fixed and floating rate market. Note, however, that in the fixed rate market B pays 100bp above A while in the floating rate market it pays only 75bp above A. If A wishes to issue floating rate while B wishes to issue fixed rate, the differential provides the opportunity for a profitable trade between the two companies.

Consider the swap shown in figure 4.3. Company A issues fixed rate debt and B issues floating rate debt. Since A originally wanted to issue floating rate debt and B wanted to issue fixed rate, they enter into a swap to exchange the fixed for floating rate cash flows. Company A pays floating libor while receiving a fixed rate of  $6.65\%$ . The net cost for company A is now  $\mathrm{libor} + 35\mathrm{bp}$ ,  $15\mathrm{bp}$  better than it could obtain in the

market. Company B also benefits because its net cost is  $7,90\%$  fixed, better by 10bp than it could do by issuing fixed bonds directly.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/5f8e6f83-6240-4161-91e0-582ca704c686/53f0e88660954358d5ffb1ffc022636d838a08109669e4893f1b166f92d1d594.jpg)  
Figure 4.3 - Sample Swap Showing Credit Arbitrage

It may seem strange that the spread faced by the companies (which depends on the credit-worthiness of the company) should differ simply because they choose to issue in the fixed or floating market. (In fact, such a credit arbitrage is relatively rare today, partly as a result of increased efficiency achieved through the swap market itself.) Nonetheless, it sometimes does occur. Two reasons are:

- Sectoral differences. Supply and demand of specific types of paper may differ across sectors of the market. For example, banks issue considerable floating rate paper because their assets are primarily floating rate. This can lead to a plentiful supply of floating rate but a scarcity of fixed rate bank paper, with a consequent premium for fixed rate paper (relatively low fixed rate as for company A above). This is exactly the kind of market inefficiency which the swaps market has tended to erase.  
- Apparent arbitrage resulting from differences between fixed and floating contracts. The spread on a floating rate loan can usually be reset periodically as credit conditions of the borrower change, while the rate on a fixed rate loan cannot. The initial spread on a floating rate loan may be lower than on a fixed rate because the spread can be raised if the credit deteriorates. In the example above company B has a net cost of  $7.90\%$  for the five year life of the loan only if the spread of 125bp over libor remains unchanged. In this case the "credit arbitrage" may be more apparent than real since company B may end up with fixed rate funding higher than the stated  $7.90\%$ , even higher than  $8\%$ .

In fact, the story is that the first true swap was arranged by S.G. Warburg between IBM and the World Bank to take advantage of a credit arbitrage. The World Bank was a well known and desirable name in the Eurobond market and could issue at relatively good fixed rates. IBM was well known and popular in the domestic US short-term floating rate markets. By entering into a swap IBM could effectively issue fixed rate and the World Bank issue floating rate, thus allowing the companies to exploit their relative strengths among investors while diversifying the maturity profile of their funding.

Today the credit arbitrage motive is not paramount in the swaps market. Swaps are used extensively for asset and liability management, for example allowing company treasurers to flexibly and cheaply manage their interest rate exposure. Swaps provide efficiency and inexpensive management of risk for investors, borrowers, and speculators.

# Size and Market Overview

The swap market is an over-the-counter (OTC) market. That is, there is no organized exchange on which buyers and sellers meet to trade. Trading is done "over-the-counter" which in practice means over the telephone.

The market is huge. Table 4.1 shows statistics prepared by ISDA (the International Swaps and Derivatives Association, Inc.) on the activity and size of the interest rate and currency swaps market. Statistics for the total market and the four largest currencies are shown. The market is huge, with a notional outstanding of almost \$13 trillion, and global, with about  $66\%$  of the interest rate swaps outstanding being non-dollar and about  $64\%$  of the business being done outside North America.

Table 4.1 - Swap Market 1995 Activity and Year End Notional Outstanding  

<table><tr><td></td><td colspan="2">Activity</td><td colspan="2">Year End Outstandings</td></tr><tr><td></td><td>Interest Rate Swaps</td><td>Currency Swaps</td><td>Interest Rate Swaps</td><td>Currency Swaps</td></tr><tr><td>CURRENCY</td><td>8,969</td><td>455</td><td>12,811</td><td>1,197</td></tr><tr><td>TOTAL</td><td></td><td></td><td></td><td></td></tr><tr><td>US Dollar</td><td>2,856</td><td>154</td><td>4,372</td><td>419</td></tr><tr><td>Japanese Yen</td><td>2,259</td><td>82</td><td>2,896</td><td>200</td></tr><tr><td>Deutsche Mark</td><td>985</td><td>39</td><td>1,439</td><td>119</td></tr><tr><td>French Franc</td><td>1,113</td><td>21</td><td>1,220</td><td>41</td></tr><tr><td>British Sterling</td><td>433</td><td>12</td><td>854</td><td>46</td></tr></table>

All amounts in US $ billions  
Source - ISDA 1995 Year End Summary of Market Survey Statistics

Table 4.2 lists the major and many of the minor currencies with active swap markets. Although swaps can be executed (at some cost) in virtually any currency, these are the larger currencies in which there is reasonable activity.

Table 4.2 - Major and Minor Swap Currencies (Ranked by 1995 IRS Outstanding Notional)  

<table><tr><td>MAJOR</td><td>MINOR</td></tr><tr><td>US Dollar (USD)</td><td>Australian Dollar (AUD)</td></tr><tr><td>Japanese Yen (JPY)</td><td>Spanish Peseta (ESP)</td></tr><tr><td>Deutsche Mark (DEM)</td><td>Dutch Guilder (NLG)</td></tr><tr><td>French Franc (FRF)</td><td>Swedish Krona (SEK)</td></tr><tr><td>British Sterling (GBP)</td><td>Belgian Franc (BEL)</td></tr><tr><td>Italian Lira (ITL)</td><td>Danish Krona (DKK)</td></tr><tr><td>Swiss Franc (CHF)</td><td>Hong Kong Dollar (HKD)</td></tr><tr><td>European Currency Unit (XEU)</td><td>New Zealand Dollar (NZD)</td></tr><tr><td>Canadian Dollar (CAD)</td><td></td></tr></table>

In the major currencies (and many of the minor) the market is active and liquid enough to sustain quotations from multiple dealers and active broker markets. Figure 4.4 shows a sample index page for broker quotes listing the currencies and associated pages supplied by a single broker. The wide range of markets available to a dealing desk is apparent from figure 4.4.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/5f8e6f83-6240-4161-91e0-582ca704c686/4a43f357ee54849739fb3f2ece5216bc2254a3690497539e59bfe84fe779b177.jpg)  
Figure 4.4 - Sample Swaps Index Page

# Basic Swap Terms and Quoting Conventions

A swap is a private contract and so can be customized in an almost infinite variety of ways. Nonetheless, in each currency there is a standard or generic swap which is most commonly quoted among professional counterparties and customers. In the US this generic swap has the following characteristics:

<table><tr><td>Notional Principal</td><td colspan="2">\$5-200mm (may be much larger)</td></tr><tr><td>Maturity of Contract</td><td colspan="2">2 - 30 years (beyond 10 years less liquid)</td></tr><tr><td>Notional Exchange</td><td colspan="2">None</td></tr><tr><td>Reset (standard settle)</td><td colspan="2">2 days prior (2 day settle)</td></tr><tr><td></td><td>FIXED SIDE</td><td>FLOATING SIDE</td></tr><tr><td>Payment Frequency</td><td>Semi-annual</td><td>Quarterly</td></tr><tr><td>Payment Type</td><td>In Arrears</td><td>In Arrears</td></tr><tr><td>Rate Quotation</td><td>Absolute level or spread to UST</td><td>Spread to liber</td></tr><tr><td>Day Basis for Coupon</td><td>30/360</td><td>A/360</td></tr><tr><td>Business Day Convention</td><td>Modified Following</td><td>Modified Following</td></tr></table>

The cash flows for a generic two year swap to receive fixed and pay floating are shown in figure 4.5. The fixed side coupon is  $6.5\%$  per annum which in most cases means half of that each six months. The exact cash flow each payment period is calculated as

$$
\text {C a s h F l o w} = \text {S t a t e d C o u p o n} * \text {D a y B a s i s} * \text {N o t i o n a l}
$$

The stated coupon is  $6.5\%$ . The Day Basis is the number of days calculated on a 30/360 ISDA day basis (assuming each month has 30 days and a year has 360 days, and using the 30E/360 rather than 30/360 end of month convention<sup>2</sup>). For an indication the coupon will be quoted as a spread over US Treasuries but the coupon will generally be quoted as a fixed, all-in rate when the deal is done. The exact dates of payment are determined by going from the settlement date (2 days forward) and adjusting for weekends and holidays by the modified following business day rule.<sup>3</sup>

The floating side coupon is determined by the current level of libor. The rate used (the rate set) is taken from the screens two days prior to the beginning of a period. The payment is at the end of the period (payment in arrears) and is determined in the manner of the fixed side cash flow as:

$$
\text {C a s h F l o w} = (\text {L i b o r R a t e} + \text {S p r e a d}) ^ {*} \text {D a y B a s i s} ^ {*} \text {N o t i o n a l}
$$

The day basis is Actual/360 which means take the actual number of days and divided by 360. Floating payments are usually quarterly.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/5f8e6f83-6240-4161-91e0-582ca704c686/e19e67ea0c8bcea1918cb219afb56177b8bf43d19beaf38e0d0ed473e00355e0.jpg)  
Figure 4.5 Two Year Swap Cash Flows  
Figure 4.6 shows a sample broker screen with quotes for USD swaps. Focusing on the first row (quotes for 2 year swaps) the indicative quotes are shown as spreads off the two year US Treasury. The two year swaps spreads are shown in the fourth column as 21/17 which means that a dealer would (ideally) expect to receive 21bp over the 2 year UST while paying only 17bp over the 2 year. The market is said to be 17 bid, 21 offer. (In fact the market today is so competitive that the indicated 4bp bid/offer spread is more like 2bp or less in most cases.) The reference UST is shown in the second column. A live feed for the current price and yield of the on-the-run two year is displayed in the second column. The mid-market yield is calculated in the third column and the spread over this yield shown in the fourth column (quoted in basis points). The all-in fixed coupon is shown in the fifth column. A customer would expect to pay the higher fixed rate and receive the lower fixed rate. The sixth column shows the semi-annual 30/360 swap quote converted to an annual money-market (A/360) rate, although this convention is less common than semi 30/360.

In the US market swaps are quoted as a spread to Treasuries. This is convenient because it separates the all-in swap rate into two components: a general market component represented by the level of Treasury yields and a swap-specific component represented by the swap spread. The general market level changes minute-by-minute throughout the day as supply and demand for fixed-income securities of all types changes. The swap-specific component changes more gradually (say once a day). This component captures the specific supply and demand for swaps relative to other fixed income instruments such as Treasuries and corporate bonds, and reflects, among other components, the credit spread of swaps to Treasuries.

For two, five, 10 and 30 year swaps the spread is quoted directly over the on-the-run Treasury with the same (stated) maturity. For other swaps (for example seven year and 20 year) there is no on-the-run Treasury. The most reasonable and convenient compromise is to quote the swap over an interpolated UST yield. This is done for the seven year - the  $6.631\%$  for the seven year reference yield is  $60\%$  of the five year  $(6.539\%)$  and  $40\%$  of the 10 year  $(6.770\%)$ . For swaps beyond 10 years this broker screen shows

spreads quoted over the 10 year yield. This makes less sense and most dealers, in fact, do quote spreads for these swaps over a yield interpolated between the 10 and 30 UST.

Figure 4.6 - Sample Swaps Page  

<table><tr><td>MTY</td><td>PRICE</td><td>YIELD</td><td>YLMID</td><td>SPRD</td><td>SA 30/360</td><td>ANN A/360</td><td>WI YIELDS</td></tr><tr><td>2Y</td><td>100.056-06</td><td>6.146-142</td><td>6.144</td><td>21/17</td><td>6.354-6.314</td><td>6.365-6.324</td><td>6.173-165</td></tr><tr><td>3Y</td><td>99-02+-032</td><td>6.345-336</td><td>6.340</td><td>23/19</td><td>6.570-6.530</td><td>6.585-6.545</td><td></td></tr><tr><td>4Y</td><td></td><td>**</td><td>6.441</td><td>28/24</td><td>6.721-6.681</td><td>6.739-6.698</td><td></td></tr><tr><td>5Y</td><td>100.106-11+</td><td>6.542-537</td><td>6.539</td><td>29/25</td><td>6.830-6.790</td><td>6.850-6.809</td><td>6.540-6.535</td></tr><tr><td>6Y</td><td></td><td>**</td><td>6.585</td><td>33/29</td><td>6.916-6.876</td><td>6.937-6.897</td><td></td></tr><tr><td>7Y</td><td>** INTERPOLATED</td><td>**</td><td>6.631</td><td>35/31</td><td>6.982-6.942</td><td>7.005-6.964</td><td>VS 3M LIBOR</td></tr><tr><td>8Y</td><td>YIELD</td><td>**</td><td>6.678</td><td>36/32</td><td>7.038-6.998</td><td>7.062-7.021</td><td>[5.53000]</td></tr><tr><td>9Y</td><td></td><td>**</td><td>6.724</td><td>37/33</td><td>7.094-7.054</td><td>7.119-7.079</td><td></td></tr><tr><td>10Y</td><td>TAK 101.20</td><td>TAK 6.770</td><td>6.770</td><td>38/34</td><td>7.150-.7110</td><td>7.177-7.136</td><td></td></tr><tr><td>11Y</td><td>\</td><td></td><td>6.770</td><td>41/37</td><td>7.180-7.140</td><td>7.207-7.166</td><td></td></tr><tr><td>12Y</td><td colspan="2">\ SPREAD TO</td><td>6.770</td><td>44/40</td><td>7.210-7.170</td><td>7.238-7.197</td><td></td></tr><tr><td>13Y</td><td colspan="2">/ 10-YEAR NOTE</td><td>6.770</td><td>47/43</td><td>7.240-7.200</td><td>7.269-7.228</td><td>INDEX</td></tr><tr><td>14Y</td><td colspan="2">/</td><td>6.770</td><td>50/46</td><td>7.270-7.230</td><td>7.299-7.258</td><td>PG 19900</td></tr><tr><td>15Y</td><td>** INTERPOLATED</td><td>**</td><td>6.820</td><td>49/45</td><td>7.310-7.270</td><td>7.340-7.299</td><td>PHONE #S</td></tr><tr><td>20Y</td><td>YIELD</td><td>**</td><td>6.870</td><td>50/46</td><td>7.370-7.330</td><td>7.401-7.361</td><td>PG 19907</td></tr><tr><td>30Y</td><td>97.07 -08</td><td>6.972-970</td><td>6.970</td><td>42/38</td><td>7.391-7.351</td><td>7.422-7.382</td><td></td></tr></table>

Figure 4.7 shows the conventional quotation basis for some of the more active swaps markets. All these markets have payments in arrears and modified following business day convention.

Figure 4.7 - Conventional Quotation Basis for More Active Swaps Markets  

<table><tr><td></td><td>FIXED SIDE</td><td>FLOATING SIDE</td></tr><tr><td colspan="3">USD - 2 day settle</td></tr><tr><td>Payment Frequency</td><td>Semi-annual</td><td>Quarterly</td></tr><tr><td>Day Basis for Coupon</td><td>30/360</td><td>A/360</td></tr><tr><td colspan="3">GBP - 0 day settle</td></tr><tr><td>Payment Frequency</td><td>Semi-annual</td><td>Quarterly</td></tr><tr><td>Day Basis for Coupon</td><td>A/365 fixed</td><td>A/365</td></tr><tr><td colspan="3">EUR - 2 day settle</td></tr><tr><td>Payment Frequency</td><td>Annual</td><td>Semi-annual</td></tr><tr><td>Day Basis for Coupon</td><td>30/360</td><td>A/360</td></tr><tr><td colspan="3">JPY - 2 day settle</td></tr><tr><td>Payment Frequency</td><td>Semi-annual</td><td>Semi-annual</td></tr><tr><td>Day Basis for Coupon</td><td>A/365 fixed</td><td>A/360</td></tr><tr><td colspan="3">CAD - 0 day settle</td></tr><tr><td>Payment Frequency</td><td>Semi-annual</td><td>Quarterly, comp’d paid semi</td></tr><tr><td>Day Basis for Coupon</td><td>A/365 fixed</td><td>A/365</td></tr></table>

# Swap Valuation

Swap valuation is quite straightforward and is actually no more complex than valuing a bond. We will start with a new swap (one which is right on a reset date) and then move to the more general case. The cash flow diagram introduced earlier in this chapter (see figures 4.2 and 4.5) hold the key to valuation. Take as an example the two year swap to receive  $6.5\%$  fixed semi-annually. Figure 4.8 shows such a

swap, but with one important addition: a phantom exchange of principal has been added to the last payment. In the market all swap payments are net so that only the net cash actually changes hands. This means that introducing offsetting \$100 payments will not change the cash changing hands, and so cannot change the valuation of the swap. Nonetheless, introducing the exchange of principal makes the valuation more straightforward.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/5f8e6f83-6240-4161-91e0-582ca704c686/3aae352cf1ce21a5085a19e509b87bbb113c08e8eb90aa0344ef09d2dd91bfa4.jpg)  
Figure 4.8 - Swap Cash Flows with Phantom Principal Exchange

First, the fixed side cash flows have been converted into a fixed coupon bond, and can be valued in the same way as a bond (using the yield to price formula introduced previously or, more accurately, calculating the PV off a forward curve as discussed below). Second, the floating side is now a floating rate bond whose valuation is even simpler. A floating libor bond, discounted at libor, must trade at  $100$ .<sup>4</sup> Thus the NPV of the two year swap to receive fixed will be:

$$
\begin{array}{l} \mathrm {N P V} (2 \text {y e a r s w a p t o R f i x e d}) = \mathrm {P V} (2 \text {y e a r f i x e d c o u p o n b o n d}) - \mathrm {P V} (\text {f l o a t b o n d}) \tag {4.1} \\ = \mathrm {P V} (\text {f i x e d c o u p o n b o n d}) - 1 0 0. \\ \end{array}
$$

Similarly, the NPV of a swap to pay fixed will be the PV of a floating bond minus fixed bond:

$$
\mathrm {N P V} (\text {s w a p t o P f i x e d}) = \mathrm {P V} (\text {f l o a t b o n d}) - \mathrm {P V} (\text {f i x e d c o u p o n b o n d}).
$$

This means that all the techniques for valuation and risk which we applied to bonds above apply equally to swaps. The most important result is that we immediately know the risk of a swap: The risk of a swap to receive fixed will be the risk of buying a fixed coupon bond with the same maturity and coupon. The value of a floating rate bond does not change as rates change (the floating coupon changes as rates change), so only the PV of the fixed coupon bond changes.

The HP calculator is ideally suited to valuation of swaps (which helps explain why they appear on every swaps trading desk) and we will use it here to value the two year swap to receive  $6.5\%$ . Say that the current mid-market swap rate for two years is 6.334 (as shown in the Telerate page 19901 above). To

value the  $6.5\%$  two year swap one needs to value a two year  $6.5\%$  coupon bond when current rates are  $6.334\%$ . This can be done either with the bond menu or the TVM menu; we will use the TVM menu.

# Example 4.1 - NPV of New Swap

Calculate the NPV of a new two year swap to receive  $6.5\%$  semi-annually when current swap yields are  $6.334\%$ .

<table><tr><td>Key</td><td colspan="3">Display</td><td>Description</td></tr><tr><td>GOLD MAIN</td><td>FIN</td><td>BUS</td><td>…</td><td>Main menu</td></tr><tr><td>FIN TVM</td><td>2 P/YR</td><td>…</td><td>END MODE</td><td>TVM menu. If not set to 2 P/YR</td></tr><tr><td></td><td>N I%YR</td><td>…</td><td>OTHER</td><td>and END MODE refer to ch. 1</td></tr><tr><td>4 N</td><td colspan="2">N=4.0</td><td></td><td>Sets number of payments</td></tr><tr><td>6.334 I%YR</td><td>I% YR=</td><td>6.334</td><td></td><td>Sets current market rates</td></tr><tr><td>6.5 ENTER 2 ÷ PMT</td><td>PMT=</td><td>3.25</td><td></td><td>Sets coupon at 6.5%/yr</td></tr><tr><td>100 FV</td><td>FV=</td><td>100.0</td><td></td><td>Sets final principal</td></tr><tr><td>PV</td><td>PV=-</td><td>100.307</td><td></td><td>PV of 2 year semi bond</td></tr><tr><td>+/- 100 -</td><td colspan="2">0.307</td><td></td><td>PV of swap (per \$100)</td></tr></table>

In other words the mid-market NPV of a two year swap to receive  $6.5\%$  semi-annually in the market shown by Telerate page 19901 above would be about  $\$0.307$ per  $\$100$ notional. A swap with  $\$100$ mm notional would be worth about  $\$307,000$ .

We have valued a new swap (one exactly on a reset date and with the first floating side payment not set). The next step is to value a swap in between payment dates. (After all, the day after a swap is executed it becomes a swap in between payment dates.) The valuation formula above still holds:

$$
\mathrm {N P V} (\text {s w a p} \quad \mathrm {r} \quad \text {f i x e d}) = \mathrm {P V} (\text {f i x e d} \quad \text {c o u p o n} \quad \text {b o n d}) - \mathrm {P V} (\text {f l o a t} \quad \text {b o n d}) \tag {4.1a}
$$

$$
\mathrm {N P V} (\text {s w a p t o P f i x e d}) = \mathrm {P V} (\text {f l o a t b o n d}) - \mathrm {P V} (\text {f i x e d c o u p o n b o n d}). \tag {4.1b}
$$

but now the fixed and floating rate bonds are not on exact coupon dates. This is still easy. Valuing fixed coupon bonds using the yield-to-price formula was discussed in the previous chapter, and in those cases the bonds were all in between coupon payments. The only thing to remember is that the PV is the Clean Price plus Accrued. The floating bond is a little tricky to begin with, but that reduces to valuing a short-dated fixed coupon bond.

Consider again the two year swap to receive  $6.5\%$  fixed semi-annually. Say the swap has been in existence for one month, so that the first libor rate was set one month ago. The fixed bond can still be valued easily using the techniques from the previous chapter. The next floating payment is in two months. But the floating coupon was set one month ago and so is actually known today. That can be put in as a fixed payment and is shown in figure 4.9 as a fixed payment. Furthermore, we know that in two months, after the fixed libor payment is made but before the rate is reset, the floating side will once again be a floating libor bond discounted at libor and will thus be worth \$100. This \$100 can be entered in as if it were an actual payment, leading to the cash flow diagram shown in figure 4.9. But this has converted the floating side to a short-dated fixed coupon bond. In other words we can value the floating bond by valuing a short-dated fixed coupon bond, with the coupon equal to the last libor setting.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/5f8e6f83-6240-4161-91e0-582ca704c686/255c9ff85967d8053a89daf84e97be141650551ad7a58bb0bdf622bbf46a42ac.jpg)  
Figure 4.9

# Example 4.2 - NPV of Existing Swap

Calculate the NPV of a one year eight month swap to receive  $6.5\%$  semi-annually when current rates for such a swap are  $6.334\%$ . Assume that settlement is 15 August 1996, swap maturity is 15 July 1998, the last libor reset was 15 July 1996 at  $5.55\%$ , and the yield curve is flat at  $6.334\%$ .

<table><tr><td>Key</td><td>Display</td><td>Description</td></tr><tr><td>FIN BOND TYPE</td><td></td><td>Accesses bond menu to set up</td></tr><tr><td>360 SEMI EXIT</td><td>30/360 SEMIANNUAL</td><td>Sets bond type correctly</td></tr><tr><td>8.151996 SETT</td><td>SETT=08/15/1996 THU</td><td>Sets settle date</td></tr><tr><td>7.151998 MAT</td><td>MAT=07/15/1999 WED</td><td>Sets swap maturity date</td></tr><tr><td>6.5 CPN%</td><td>CPN%=6.50</td><td>Sets the coupon</td></tr><tr><td>100 CALL</td><td>CALL=100.0</td><td>Ensures that the final principal is 100</td></tr><tr><td>MORE 6.334 YLD%</td><td>YLD%=6.334</td><td>Sets the yield</td></tr><tr><td>PRICE ACCRU +</td><td>100.8299</td><td>Calculates the price, accrued, and adds 
This is the NPV of the fixed bond</td></tr><tr><td>MORE</td><td></td><td>Now we calculate the floating bond</td></tr><tr><td>10.151996 MAT</td><td>MAT=15/10/1996 TUE</td><td>Sets the next floating payment date</td></tr><tr><td>5.5 ENTER 92 x</td><td></td><td>Calculates the floating side payment. This 
is a liber rate of 6.25% (A/360) for 92 days</td></tr><tr><td>360 ÷</td><td>1.4056</td><td></td></tr><tr><td>100 + CALL</td><td>CALL=101.4056</td><td>Sets the final redemption amount</td></tr><tr><td>0 CPN%</td><td>CPN% = 0</td><td>Sets coupon to zero, since we have included 
the coupon in the redemption amount</td></tr><tr><td>MORE 6.334 YLD%</td><td>YLD%=6.334</td><td>Sets the yield</td></tr><tr><td>PRICE ACCRU +</td><td>100.3462</td><td>PV of the short-date fixed bond</td></tr><tr><td>+/- 100.8299 +</td><td>0.4837</td><td>NPV of the swap</td></tr></table>

Here the NPV is  $0.484 per$ 100 notional, somewhat higher than the \$0.307 for the swap when new. The reason for the rise in value has to do with accruals on the fixed versus floating side - the fixed coupon (6.5%) is higher than the floating coupon (5.5%) meaning there are positive accruals over time, and there has been no rise in yields to offset this accrual.

# Risk and Hedging

We know how to value a swap as a combination of bonds, so we also know how to measure the risk of a swap. In the previous chapter we introduced the BPV or DV01 - the change in value for a 1bp change in yields - as a measure of interest rate risk. The same concept applies to swaps, and the same techniques we

used for calculating the risk of bonds apply to calculating the risk of swaps. Since receiving fixed on a swap is the same as being long a fixed coupon bond and short a floating coupon bond, the risk of a swap will be the risk of being long a fixed coupon bond and short a floating coupon bond.

$$
\text {R I S K} (\text {s w a p} \quad \text {r} \quad \text {f i x e d}) = \text {R I S K} (\text {f i x e d c o u p o n b o n d}) - \text {R I S K} (\text {f l o a t b o n d}) \tag {4.2a}
$$

$$
\text {R I S K} (\text {s w a p t o P f i x e d}) = \text {R I S K} (\text {f l o a t b o n d}) - \text {R I S K} (\text {f i x e d c o u p o n b o n d}). \tag {4.2b}
$$

For a new swap (floating side not yet set) the floating bond is always worth \$100, so the risk of receiving fixed on a swap is the same as the risk of owning a fixed coupon bond. As for bonds, we can calculate the BPV using the HP and an approximation. The BPV is given by

$$
\mathrm {B P V} \approx [ \mathrm {P V} (\mathrm {y - h}) - \mathrm {P V} (\mathrm {y + h}) ] / 2 \mathrm {h} \tag {4.3}
$$

# Example 4.3 - Risk of New Swap

Calculate the Risk of a new two year swap to receive  $6.5\%$  semi-annually when current swap yields are  $6.334\%$

<table><tr><td>Key</td><td>Display</td><td>Description</td></tr><tr><td>FIN TVM</td><td></td><td>Accesses TVM menu</td></tr><tr><td>4 N 3.25 PMT 100 FV</td><td></td><td>Sets the number of periods, payment, and principal</td></tr><tr><td>6.334I%YR PV</td><td>-100.3073</td><td>The PV we calculated before, as a check</td></tr><tr><td>6.234I%YR PV +/-</td><td>100.4930</td><td>The PV when yields are 10bp lower</td></tr><tr><td>6.434I%YR PV +/-</td><td>100.1220</td><td>The PV when yields are 10bp higher</td></tr><tr><td>x↔y R↓</td><td>100.1220</td><td>Exchanges yield and PV, rolls down PV</td></tr><tr><td>-0.2÷</td><td>1.855</td><td>This is the BPV. We have calculated the difference in PVs and divided by 20bp</td></tr></table>

The BPV of this swap is 1.855. In other words the NPV of a swap with a notional of  \$100 will fall by\$ 0.01855 when rates rise by 1bp.<sup>5</sup> The NPV of a swap with a notional of \$1mm would fall by \$185 if rates rose by 1bp.<sup>6</sup>

A useful trick is that the risk of a par swap (an at-the-money or NPV zero swap where the coupon is equal to the current swap rate) is equal to the PV of a  \$1 annuity. The two year mid-market swap rate is \(6.334\%$ . The PV of a \)1 annuity for two years, discounted at  $6.334\%$ , is 1.851. This is the BPV of a 2 year par swap when rates are  $6.334\%$ .

The BPV or DV01 gives us the total or overall risk of the swap, if all yields move together. In the real world all yields never move together. Short and long yields will not all move by the same amount, and Treasury yields and swap yields will not always move together (i.e. swap spreads may move). In hedging a swap portfolio against interest rate risk one can think of three types of risk and three "stages" in hedging:

1. Hedge outright or parallel risk (risk to a parallel shift in the yield curve) by trading a single Treasury bond. The portfolio is still subject to yield curve twist risk and swap spread risk.  
2. Hedge the yield curve (twist) risk by trading a "barbell" of Treasuries. The portfolio is still subject to swap spread risk.  
3. Hedge swap spread risk by replacing the Treasuries with on-the-run swaps.

The hedging of a swap or swap portfolio is presented in these three stages for two reasons. First, it helps to highlight the different types of risk to which a swap or portfolio is subject. Second, and more important, a swaps trader will often hedge in these stages because of liquidity and transactions costs. Hedging in a single nearby Treasury is easy, cheap, and quick. It also hedges much of the risk of the swap. After this is accomplished the more detailed hedging can be undertaken with a little more leisure, seeking out good prices to layer on the additional hedges.

# Outright or Parallel Risk

This is the risk that all yields move together, and this is what the simple BPV or DV01 measures. This is the first and most important risk to hedge because it will generally lead to the largest P&L swings if left unhedged. The volatility of yields (the annualized standard deviation of percentage changes) is on the order of  $15\%$  which implies that over a one month period one would expect to see the level of yields change by 30bp or more about 1/3 of the time. $^{8}$  The annualized standard deviation of spreads between five and 10 year bonds, however, is about 45bp which implies one would expect to see spreads change by 13bp or more about 1/3 of the time. $^{9}$

For a swap this risk can be hedged by trading a nearby Treasury bond of offset the total BPV or DV01. If one received fixed on a 15 year swap one would sell a 10 year Treasury in a BPV-weighted amount.

# Example 4.4 Hedging 15 Year Swap With 10 Year Treasury Bond

Calculate how much of the 10 year bond to sell if you receive fixed on a \(100mm 15 year swap at mid-market, given the rates from the broker screen above (which was for 27 August 1996).

The mid-market 15 year swap rate is  $7.29\%$ , while the 10 year Treasury bond ( $7.0\%$  of 15-jul-06) is trading at a yield of  $6.770\%$  and a price 101-20. The BPV for a 15 year par swap when swap rates are  $7.29\%$  is  $9.03^{10}$ , or  $\$90,300/\mathrm{bp}$  for a  $\$100\mathrm{mm}$  swap. The risk of the UST  $7\%$  of 15-jul-06 is  $7.20^{11}$  or  $\$720/\mathrm{bp}$  for  $\$1\mathrm{mm}$  of the bond. To hedge requires selling  $125\mathrm{mm}$  worth of the Treasury.

# Yield Curve or Twist Risk

Once the outright risk has been hedge, one must hedge the risk to a twist in the curve. In the example of hedging a 15 year swap with 10 year Treasuries, the yield curve can twist in such a way that the 15 year yields fall with no change in 10 year yields. This would lead to a loss on the swap which would not be offset by any gain from the Treasury position. This risk could be hedged by selling both 10 year and 30 year Treasuries in order to capture changes in the shape of the yield curve, a so-called barbell hedge. The key here is what assumption to make about the ratio of the change in the 15 year to a change in the 30 year yield. A common assumption (but not necessarily the best or even a good assumption) is that the yield will change in the ratio of the maturity of the swap to the two ends of the barbell. That is, the maturity of a 15 year swap is in the ratio  $0.25 / 0.75$  between the 10 and 30 year bonds, and so the assumption is that the yield will change in the ratio  $0.75 / 0.25$  between the 10 and 30 year yields. This leads to a linear apportionment of risk between 10s and 30s.

# Example 4.5 Hedging 15 Year Swap With 10s and 30s

Calculate how much of the 10 and 30 year bonds to sell if you receive fixed on a \(100mm 15 year swap at mid-market, given the rates from the Telerate 19901 screen above (which was for 27 August 1996).

The mid-market 15 year swap is  $7.29\%$  with a BPV of 9.03, giving a total risk of  $\$90,300$ . The 10 year Treasury bond ( $7.0\%$  of 15-jul-06, trading at a yield of  $6.770\%$  and a price 101-20) has a BPV of 7.20 and risk of  $\$720/\mathrm{mm}$  while the 30 year ( $6.75\%$  of 15-aug-2026, trading at a mid-market yield of  $6.970\%$ ) has a BPV of 12.23 and a risk of  $\$1,223/\mathrm{mm}$ . Assuming for now that the risk of the 15 year is apportioned in the ratio  $0.75/0.25$  this means that the 10 year must hedge  $\$67,725$  while the 30 must hedge  $\$22,575$ . This requires selling  $94\mathrm{mm}$  ( $=67,725/720$ ) of 10s and  $18\mathrm{mm}$  ( $=22,575/1,223$ ) of 30s.

# Swap Spread Risk

A portfolio of swaps hedged with Treasuries is subject to swap spread risk. Swap spreads may change as supply and demand for swaps and other credit-sensitive instruments change relative to supply and demand for US Treasuries (which have no credit risk). In the example above the 15 year swap rate could increase with no movement in the Treasury yields. This would lead to an loss on the swap which would not be offset by any change in the prices of the Treasuries. This risk could be hedged by paying fixed on, for example, 10 and 20 year par swaps. These swaps are relatively liquid and so might be used in a barbell to hedge the 15 year.[12]

# Example 4.6 Hedging 15 Year Swap With 10 and 20 Year Swaps

Calculate how much of 10 and 20 year swaps to enter into if you receive fixed on a \$100mm 15 year swap at mid-market, given the rates from the Telerate 19901 screen above.

The mid-market 15 year swap is  $7.29\%$  with a BPV of 9.03, giving a total risk of  $\$90,300$ . The 10 year swap is  $7.13\%$  with a BPV of 7.06 and risk of  $\$706/mm$  while the 20 year swap is  $7.35\%$  with a BPV of 10.39 and risk of  $\$1,039/mm$ . Again assuming for now that risk is apportioned linearly, the 10 year swap must hedge  $\$45,150$  requiring you to pay fixed on  $64mm (=45,150/720)$  worth of swap, while the 20 year swap must also hedge  $\$45,150$  requiring you to pay fixed on  $43.5mm (=45,150/1039)$  worth of swap.

# REFERENCES

Galen Burghardt and Bill Hoskins, (1995a), "A Question of Bias," Risk, vol. 8, no. 3, pp 63-70, March 1995.  
Galen Burghardt and Bill Hoskins, (1995b, c), "The Convexity Bias in Eurodollar Futures: Part 1, Part 2," Derivatives Quarterly, Spring 1995, Summer 1995.  
Thomas S. Coleman, Lawrence Fisher, and Roger G. Ibbotson, (1993), Historical U.S. Treasury Yield Curves 1993 Edition, Ibbotson Associates, Chicago, 1993.  
Paul Doust, (1995), "Relative Pricing Techniques in the Swaps and Options Markets," Journal of Financial Engineering, March 1995