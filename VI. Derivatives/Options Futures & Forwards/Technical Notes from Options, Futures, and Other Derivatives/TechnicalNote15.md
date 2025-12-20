---
title: Technical Note No. 15 - Valuing Options on Coupon-Bearing Bonds in a One-Factor Interest Rate Model
aliases:
  - Valuing Options on Coupon-Bearing Bonds in a One-Factor Interest Rate Model
tags:
  - bond_options
  - coupon_bearing_bonds
  - one_factor_models
  - jamshidian_procedure
  - vasicek_model
key_concepts:
  - Jamshidian's procedure for valuing options on coupon-bearing bonds
  - Decomposition of coupon-bearing bond options into zero-coupon bond options
  - One-factor interest rate models and their properties
parent_directory: Technical Notes from Options, Futures, and Other Derivatives
cssclasses: academia
---

# Technical Note No. 15*  

Options, Futures, and Other Derivatives  
John Hull

## Valuing Options on Coupon-Bearing Bonds in a One-Factor Interest Rate Model

Jamshidian shows that the prices of options on coupon-bearing bonds can be obtained from the prices of options on zero-coupon bonds in a one-factor interest rate model, such as Vasicek, Ho-Lee, Hull-White, and Cox-Ingersoll-Ross. These models have the property that all rates are moving in the same direction as the short rate at any given time.

Consider a European call option with exercise price $K$ and maturity $T$ on a coupon-bearing bond. Suppose that the bond provides a total of $n$ cash flows after the option matures. Let the $i$th cash flow be $c_{i}$ and occur at time $s_{i}$ ($1 \leq i \leq n$; $s_{i} \geq T$). Define:

$r_K$: Value of the short rate, $r$, at time $T$ that causes the coupon-bearing bond price to equal the strike price.

$K_{i}$: Value at time $T$ of a zero-coupon bond paying off \$1 at time $s_i$ when $r = r_K$. When bond prices are known analytically as a function of $r$, $r_K$ can be obtained very quickly using an iterative procedure such as the Newton Raphson method.

The variable $P(T, s_i)$ is the price at time $T$ of a zero-coupon bond paying \$1 at time $s_i$. The payoff from the option is, therefore,

$$
\max \left[ 0, \sum_{i=1}^{n} c_{i} P(T, s_{i}) - K \right]
$$

Because all rates are increasing functions of $r$, all bond prices are decreasing functions of $r$. This means that the coupon-bearing bond is worth more than $K$ at time $T$ and should be exercised if, and only if, $r < r_{K}$. Furthermore, the zero-coupon bond maturing at time $s_i$ underlying the coupon-bearing bond is worth more than $c_{i}K_{i}$ at time $T$ if, and only if, $r < r_{K}$. It follows that the payoff from the option is

$$
\sum_{i=1}^{n} c_{i} \max \left[ 0, P(T, s_{i}) - K_{i} \right]
$$

This shows that the option on the coupon-bearing bond is the sum of $n$ options on the underlying zero-coupon bonds. A similar argument applies to European put options on coupon-bearing bonds.

# Example

Suppose that $a = 0.1$, $b = 0.1$, and $\sigma = 0.02$ in Vasicek's model with the initial value of the short rate being $10\%$ per annum. Consider a three-year European put option with a strike price of \$98 on a bond that will mature in five years. Suppose that the bond has a principal of \$100 and pays a coupon of \$5 every six months. At the end of three years, the bond can be regarded as the sum of four zero-coupon bonds. If the short-term interest rate is $r$ at the end of the three years, the value of the bond is

$$
5 A(3, 3.5) e^{-B(3, 3.5)r} + 5 A(3, 4) e^{-B(3, 4)r} + 5 A(3, 4.5) e^{-B(3, 4.5)r} + 105 A(3, 5) e^{-B(3, 5)r}
$$

Using the expressions for $A(t,T)$ and $B(t,T)$, this becomes

$$
5 \times 0.9988 e^{-0.4877r} + 5 \times 0.9952 e^{-0.9516r} + 5 \times 0.9895 e^{-1.3929r} + 105 \times 0.9819 e^{-1.8127r}
$$

To apply Jamshidian's procedure, we must find $r_K$, the value of $r$ for which this bond price equals the strike price of 98. An iterative procedure shows that $r_K = 0.10952$. When $r$ has this value, the values of the four zero-coupon bonds underlying the coupon-bearing bond are 4.734, 4.484, 4.248, and 84.535. The option on the coupon-bearing bond is, therefore, the sum of four options on zero-coupon bonds:

1. A three-year option with strike price 4.734 on a 3.5-year zero-coupon bond with a principal of 5.
2. A three-year option with strike price 4.484 on a four-year zero-coupon bond with a principal of 5.
3. A three-year option with strike price 4.248 on a 4.5-year zero-coupon bond with a principal of 5.
4. A three-year option with strike price 84.535 on a five-year zero-coupon bond with a principal of 105.

To illustrate the pricing of these options, consider the fourth. $P(0,3) = 0.7419$ and $P(0,5) = 0.6101$. Also, $\sigma_{P} = 0.05445$, $h = 0.4161$, $L = 105$, and $K = 84.535$. The value of the option as 0.8085. Similarly, the value of the first, second, and third options are, respectively, 0.0125, 0.0228, and 0.0314. The value of the option under consideration is, therefore, $0.0125 + 0.0228 + 0.0314 + 0.8085 = 0.8752$.