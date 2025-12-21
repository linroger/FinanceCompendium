---
title: "Foundations of the Pricing of Financial Derivatives"
parent_directory: Foundations of the Pricing of Financial Derivatives chapters
formatted: 2025-12-21 02:35:00 PM
formatter_model: claude-3-7-sonnet-20250219
cli_tool: claude-code
primary_tags:
   - derivative pricing
   - financial derivatives
   - option pricing theory
   - stochastic processes
   - risk-neutral valuation
secondary_tags:
   - binomial models
   - black-scholes model
   - brownian motion
   - itos lemma
   - interest rate derivatives
   - monte carlo simulation
   - finite difference methods
   - term structure models
   - forward rate agreements
   - interest rate swaps
cssclasses: academia
---
# Foundations of the Pricing of Financial Derivatives

## Contents

### Preface

## Part I: Basic Foundations for Derivative Pricing

### Chapter 1: Introduction and Overview

1.1 Motivation for This Book 2
1.2 What Is a Derivative? 6
1.3 Options Versus Forwards, Futures, and Swaps 8
1.4 Size and Scope of the Financial Derivatives Markets 9
1.5 Outline and Features of the Book 12
1.6 Final Thoughts and Preview 14

### Chapter 2: Boundaries, Limits, and Conditions on Option Prices

2.1 Setup, Definitions, and Arbitrage 20
2.2 Absolute Minimum and Maximum Values 21
2.3 The Value of an American Option Relative to the Value of a European Option 22
2.4 The Value of an Option at Expiration 22
2.5 The Lower Bounds of European and American Options and the Optimality of Early Exercise 23
2.6 Differences in Option Values by Exercise Price 31
2.7 The Effect of Differences in Time to Expiration 37
2.8 The Convexity Rule 38
2.9 Put-Call Parity 40
2.10 The Effect of Interest Rates on Option Prices 47
2.11 The Effect of Volatility on Option Prices 47
2.12 The Building Blocks of European Options 48
2.13 Recap and Preview 49

### Chapter 3: Elementary Review of Mathematics for Finance

3.1 Summation Notation 53
3.2 Product Notation 55
3.3 Logarithms and Exponentials 56
3.4 Series Formulas 58
3.5 Calculus Derivatives 59
3.6 Integration 68
3.7 Differential Equations 70
3.8 Recap and Preview 71

### Chapter 4: Elementary Review of Probability for Finance

4.1 Marginal, Conditional, and Joint Probabilities 75
4.2 Expectations, Variances, and Covariances of Discrete Random Variables 80
4.3 Continuous Random Variables 86
4.4 Some General Results in Probability Theory 93
4.5 Technical Introduction to Common Probability Distributions Used in Finance 95
4.6 Recap and Preview 109

### Chapter 5: Financial Applications of Probability Distributions

5.1 The Univariate Normal Probability Distribution 113
5.2 Contrasting the Normal with the Lognormal Probability Distribution 119
5.3 Bivariate Normal Probability Distribution 123
5.4 The Bivariate Lognormal Probability Distribution 125
5.5 Recap and Preview 126

Appendix 5A An Excel Routine for the Bivariate Normal Probability 126

### Chapter 6: Basic Concepts in Valuing Risky Assets and Derivatives

6.1 Valuing Risky Assets 129
6.2 Risk-Neutral Pricing in Discrete Time 130
6.3 Identical Assets and the Law of One Price 133
6.4 Derivative Contracts 134
6.5 A First Look at Valuing Options 136
6.6 A World of Risk-Averse and Risk-Neutral Investors 137
6.7 Pricing Options Under Risk Aversion 138
6.8 Recap and Preview 138

## Part II: Discrete Time Derivatives Pricing Theory

### Chapter 7: The Binomial Model

7.1 The One-Period Binomial Model for Calls 143
7.2 The One-Period Binomial Model for Puts 146
7.3 Arbitraging Price Discrepancies 149
7.4 The Multiperiod Model 151
7.5 American Options and Early Exercise in the Binomial Framework 154
7.6 Dividends and Recombination 155
7.7 Path Independence and Path Dependence 159
7.8 Recap and Preview 159

Appendix 7A Derivation of Equation (7.9) 159

Appendix 7B Pascal's Triangle and the Binomial Model 161

### Chapter 8: Calculating the Greeks in the Binomial Model

8.1 Standard Approach 165
8.2 An Enhanced Method for Estimating Delta and Gamma 170
8.3 Numerical Examples 172
8.4 Dividends 174
8.5 Recap and Preview 175

### Chapter 9: Convergence of the Binomial Model to the Black-Scholes-Merton Model

9.1 Setting Up the Problem 177
9.2 The Hsia Proof 181
9.3 Put Options 187
9.4 Dividends 188
9.5 Recap and Preview 188

## Part III: Continuous Time Derivatives Pricing Theory

### Chapter 10: The Basics of Brownian Motion and Wiener Processes

10.1 Brownian Motion 193
10.2 The Wiener Process 195
10.3 Properties of a Model of Asset Price Fluctuations 196

10.4 Building a Model of Asset Price Fluctuations 199
10.5 Simulating Brownian Motion and Wiener Processes 202
10.6 Formal Statement of Wiener Process Properties 205
10.7 Recap and Preview 207

Appendix 10A Simulation of the Wiener Process and the Square of the Wiener Process for Successively Smaller Time Intervals 207

### Chapter 11: Stochastic Calculus and Itô's Lemma

11.1 A Result from Basic Calculus 211
11.2 Introducing Stochastic Calculus and Ito's Lemma 212
11.3 Itô's Integral 215
11.4 The Integral Form of Itô's Lemma 216
11.5 Some Additional Cases of Itô's Lemma 217
11.6 Recap and Preview 219

Appendix 11A Technical Stochastic Integral Results 220

11A.1 Selected Stochastic Integral Results 220
11A.2 A General Linear Theorem 224

### Chapter 12: Properties of the Lognormal and Normal Diffusion Processes for Modeling Assets

### Chapter 13: Deriving the Black-Scholes-Merton Model

### Chapter 14: The Greeks in the Black-Scholes-Merton Model

### Chapter 15: Girsanov's Theorem in Option Pricing

15.1 The Martingale Representation Theorem 287
15.2 Introducing the Radon-Nikodym Derivative by Changing the Drift for a Single Random Variable 289
15.3 A Complete Probability Space 291
15.4 Formal Statement of Girsanov's Theorem 292
15.5 Changing the Drift in a Continuous Time Stochastic Process 293
15.6 Changing the Drift of an Asset Price Process 297
15.7 Recap and Preview 300

### Chapter 16: Connecting Discrete and Continuous Brownian Motions

### Chapter 17: Applying Linear Homogeneity to Option Pricing

### Chapter 18: Compound Option Pricing

### Chapter 19: American Call Option Pricing

### Chapter 20: American Put Option Pricing

20.1 The Nature of the Problem of Pricing an American Put 377
20.2 The American Put as a Series of Compound Options 378
20.3 Recap and Preview 380

### Chapter 21: Min-Max Option Pricing

### Chapter 22: Forward and Futures Contracts

### Chapter 23: Monte Carlo Simulation

### Chapter 24: Finite Difference Methods

### Chapter 25: The Term Structure of Interest Rates

25.1 The Unbiased Expectations Hypothesis 440
25.2 The Local Expectations Hypothesis 442
25.3 The Difference Between the Local and Unbiased Expectations Hypotheses 446
25.4 Other Term Structure of Interest Rate Hypotheses 447
25.5 Recap and Preview 450

### Chapter 26: Interest Rate Contracts: Forward Rate Agreements, Swaps, and Options

26.1 Interest Rate Forwards 454
26.2 Interest Rate Swaps 459
26.3 Interest Rate Options 469
26.4 Recap and Preview 471

### Chapter 27: Fitting an Arbitrage-Free Term Structure Model

27.1 Basic Structure of the HJM Model 476
27.2 Discretizing the HJM Model 479
27.3 Fitting a Binomial Tree to the HJM Model 481
27.4 Filling in the Remainder of the HJM Binomial Tree 485
27.5 Recap and Preview 489

### Chapter 28: Pricing Fixed-Income Securities and Derivatives Using an Arbitrage-Free Binomial Tree

28.1 Zero-Coupon Bonds 493
28.2 Coupon Bonds 496
28.3 Options on Zero-Coupon Bonds 497
28.4 Options on Coupon Bonds 498
28.5 Callable Bonds 499
28.6 Forward Rate Agreements (FRAs) 501
28.7 Interest Rate Swaps 503

28.8 Interest Rate Options 505
28.9 Interest Rate Swaptions 506
28.10 Interest Rate Futures 508
28.11 Recap and Preview 510

## Part V: Miscellaneous Topics

### Chapter 29: Option Prices and the Prices of State-Contingent Claims

29.1 Pure Assets in the Market 514
29.2 Pricing Pure and Complex Assets 514
29.3 Numerical Example 518
29.4 State Pricing and Options in a Binomial Framework 519
29.5 State Pricing and Options in Continuous Time 522
29.6 Recap and Preview 525

### Chapter 30: Option Prices and Expected Returns

### Chapter 31: Implied Volatility and the Volatility Smile

### Chapter 32: Pricing Foreign Currency Options

32.1 Definition of Terms 556
32.2 Option Payoffs 556
32.3 Valuation of the Options 557
32.4 Probability of Exercise 561
32.5 Some Terminology Confusion 563
32.6 Recap 563

## References

## Symbols Used

### Symbols

### Time-Related Notation

### Instrument-Related Notation

## About the Website

## Index

