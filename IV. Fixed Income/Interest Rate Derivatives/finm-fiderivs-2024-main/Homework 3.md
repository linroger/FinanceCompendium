---
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Homework 3
---

# Homework 3

## FINM 37500: Fixed Income Derivatives

### Mark Hendricks

#### Winter 2024

# 1. Modeling the Volatility Smile

## Swaption Vol Data

The file `data/swaption_vol_data_2024-02-20.xlsx` has market data on the implied volatility skews for swaptions. Note that it has several columns:

* `expry`: expiration of the swaption
* `tenor`: tenor of the underlying swap
* `model`: the model by which the volatility is quoted. (All are Black.)
* `-200`, `-100`, etc.: The strike listed as difference from ATM strike (bps). Note that ATM is considered to be the **forward swapa rate** which you can calculate.

Your data: ywill use a single row of this data for the `1x4` swaption.

* date: `2024-02-20`
* expiration: 1yr
* tenor: 4yrs

## Rate Data

The file `data/cap_quotes_2024-02-20.xlsx` gives 

* SOFR swap rates, 
* their associated discount factors
* their associated forward interest rates.

You will not need the cap data (flat or forward vols) for this problem.

* This cap data would be helpful in calibrating a binomial tree, but this problem focuses on Black's formula and SABR.

## The Swaption

Consider the following swaption with the following features:

* underlying is a fixed-for-floating (SOFR) swap
* the underlying swap has **quarterly** payment frequency
* this is a **payer** swaption, which gives the holder the option to **pay** the fixed swap rate and receive SOFR.

## 1.1

Calculate the (relevant) forward swap rate. That is, the one-year forward 4-year swap rate.

## 1.2

Price the swaptions at the quoted implied volatilites and corresponding strikes, all using the just-calculated forward swap rate as the underlying.

## 1.3

To consider how the expiration and tenor matter, calculate the prices of a few other swaptions for comparison. 

* No need to get other implied vol quotes--just use the ATM implied vol you have for the 1x2 above. (Here we are just interested in how Black's formula changes with changes in tenor and expiration.
* No need to calculate for all the strikes--just do the ATM strike.

Alternate swaptions

* The 3mo x 4yr swaption
* The 2yr x 4yr swaption
* the 1yr x 2yr swaption

Report these values and compare them to the price of the `1y x 4y` swaption.

***

# 2. Pricing w/ BDT

Use the data in `cap_curves_2024-02-20.xlsx`.

## 2.1

Calibrate the BDT Tree

* theta to fit the term structure discounts.
* sigma to fit the fwd vols from the cap data.

Report the rate tree through $T=5$. Report trees for rates compounded

* continuously
* annually

## 2.2

Use a tree to price a vanilla fixed-rate, 5-year bond with coupon rate equal to the forward swap rate calculated in problem `1.1.`

## 2.3

We will calculate the binomial tree for the 5-year swap, but here we do so by valuing the swap as…

$$\text{payer swap} = \text{floating rate note} - \text{fixed-rate bond}$$

Recall for the Floating-Rate Note:

* It has par value of 100 at each reset date.
* Every node is a reset date given the assumptions of the swap timing.

Report the tree for the 5-year swap.

## 2.4

Report the binomial tree for the one-year swaption on a 4-year swap with **european** exercise.

* At expiration, the swap tree from 2.3 will have 4 years left, as desired for pricing the 1y-4y swaption.

## 2.5

Compare the pricing of the 1y4y swaption from Black's formula in Section 1 vs the binomial tree.

## 2.6

Reprice the swaption using the BDT tree, but this time assuming it is **american**-style exercise.

***

# 3. Midcurve Swaptions

## 3.1 

Use the BDT tree from section 2 to price a **european** midcurve swaption 1y$\rightarrow$2y$\rightarrow$2y.

## 3.2

Price the **american** midcurve swaption 1y$\rightarrow$2y$\rightarrow$2y.

***
