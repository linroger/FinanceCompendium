---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Appendix C
linter-yaml-title-alias: Appendix C
---

# Appendix C

# Valuing Forward and Futures Contracts

The forward or futures price of an investment asset that provides no income is given by

$$
F _ {0} = S _ {0} e ^ {r T}
$$ where  $S_0$  is the spot price of the asset today,  $T$  is the time to maturity of the forward or futures contract, and  $r$  is the continuously compounded risk-free rate for maturity  $T$ . When the asset provides income during the life of the contract that has a present value  $I$ , this becomes


$$

F _ {0} = (S _ {0} - I) e ^ {r T}

$$

When it provides a yield at rate  $q$ , it becomes

$$

F _ {0} = S _ {0} e ^ {(r - q) T}

$$

A foreign currency can be regarded as an investment asset that provides a yield equal to the foreign risk-free rate, so that the forward or futures price for a foreign currency is

$$

F _ {0} = S _ {0} e ^ {(r - r _ {f}) T}

$$ where  $r_f$  is the foreign risk-free rate (continuously compounded) and  $S_0$  is the spot exchange rate. The value of a forward contract where the holder has the right to buy the asset for a price of  $K$  is, in all cases,

$$
\left(F _ {0} - K\right) e ^ {- r T}
$$ where  $F_{0}$  is the forward price, given by one of the formulas above. The value of a forward contract where the holder has the right to sell the asset for a price of  $K$  is similarly


$$

\left. \left(K - F _ {0}\right) e ^ {- r T} \right.

$$

# Example C.1

Consider a six-month futures contract on the S&P 500. The current value of the index is 1,200, the six-month risk-free rate is  $5\%$  per annum, and the average dividend yield on the S&P 500 over the next six months is expected to be  $2\%$  per annum (both rates continuously compounded). The futures price is  $1,200e^{(0.05 - 0.02)\times 0.5}$  or 1,218.14.

# Example C.2

The current forward price of a commodity for a contract maturing in nine months is $550 per ounce. A company has a forward contract to buy 1,000 ounces of the commodity for a delivery price of $530 in nine months. The nine-month risk-free rate is 4\% per annum continuously compounded. The value of the forward contract is 1,000 × (550 - 530)e-0.04×9/12, or 19,409.

In most situations forward and futures prices can be assumed to be the same. A exception is provided by contracts on interest rates. The quote for a Eurodollar futures contract should not be assumed to be the same as the corresponding forward interest rate, particularly when the contract has a long time to maturity.

