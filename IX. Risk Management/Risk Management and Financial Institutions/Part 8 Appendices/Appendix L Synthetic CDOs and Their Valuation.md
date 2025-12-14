---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Appendix L
linter-yaml-title-alias: Appendix L
---

# Appendix L

# Synthetic CDOs and Their Valuation

Synthetic collateralized debt obligations (CDOs) consist of tranches where one party (Party A) agrees to make payments to another party (Party B) that are equal to those losses on a specified portfolio of debt instruments that are in a certain range. In return, Party B agrees to make payments to Party A that are a certain proportion of the amount of principal that is being insured.

Suppose that the range of losses for a particular tranche is from  $\alpha_{L}$  to  $\alpha_{H}$ . The variables  $\alpha_{L}$  and  $\alpha_{H}$  are known as the attachment point and detachment point, respectively. If  $\alpha_{L}$  is  $8\%$  and  $\alpha_{H}$  is  $18\%$ , Party A pays to Party B the losses on the portfolio, as they are incurred, in the range  $8\%$  to  $18\%$  of the total principal of the portfolio. The first  $8\%$  of losses on the portfolio does not therefore affect the tranche. The tranche is responsible for the next  $10\%$  of losses and its notional principal (initially  $18 - 8 = 10\%$  of the portfolio principal) reduces as these losses are incurred. The tranche is wiped out when losses exceed  $18\%$ . The payments that are made by Party B to Party A are made periodically at a specified rate applied to the remaining notional tranche principal. This specified rate is known as the tranche spread.

The usual assumption is that all the debt instruments in the portfolio have the same probability distribution for the time to default. Define  $Q(t)$  as the probability of a debt instrument defaulting by time  $t$ . The one-factor Gaussian copula model of time to default presented in Section 9.6 has become the standard market model for valuing a tranche of a collateralized debt obligation (CDO). From equation (9.13)

$$
Q (t | F) = N \left\{\frac {N ^ {- 1} [ Q (t) ] - \sqrt {\rho} F}{\sqrt {1 - \rho}} \right\} \tag {L.1}
$$ where  $Q(t|F)$  is the probability of the  $i$ th entity defaulting by time  $t$  conditional on the value of the factor,  $F$ . In the calculation of  $Q(t)$  it is usually assumed that the hazard rate for a company is constant. When a CDS spread or other credit spread is available, it can be used to determine the hazard rate using calculations similar to those in Appendix K in conjunction with a search procedure.


Suppose that the hazard rate is  $\lambda$ . Then:

$$

Q (t) = 1 - e ^ {- \lambda_ {t}} \tag {L.2}

$$

From the properties of the binomial distribution, the probability of exactly  $k$  defaults by time  $t$ , conditional on  $F$  is

$$

P (k, t | F) = \frac {n !}{(n - k) ! k !} Q (t | F) ^ {k} [ 1 - Q (t | F) ] ^ {n - k} \tag {L.3}

$$

Define

$$ n _ {L} = \frac {\alpha_ {L} n}{1 - R} \qquad \mathrm {a n d} \qquad n _ {H} = \frac {\alpha_ {H} n}{1 - R}
$$ where  $R$  is the recovery rate (assumed constant). Also, define  $m(x)$  as the smallest integer greater than  $x$ . The tranche suffers no losses when the number of defaults,  $k$ , is less than  $m(n_{L})$ . It is wiped out when  $k$  is greater than or equal to  $m(n_{H})$ . Otherwise the tranche principal at time  $t$  is a proportion


$$

\frac {\alpha_ {H} - k (1 - R) / n}{\alpha_ {H} - \alpha_ {L}}

$$ of the initial tranche principal. These results can be used in conjunction with equations (L.1), (L.2), and (L.3) to calculate the expected tranche principal at all times conditional on  $F$ . We can then integrate over  $F$  to find the (unconditional) expected tranche principal. This integration is usually accomplished with a procedure known as Gaussian quadrature. (The author's website provides the tools for integrating over a normal distribution using Gaussian quadrature.)

It is usually assumed that defaults happen at the midpoint of the intervals between payments. Similarly to Appendix K, we are interested in the following quantities:

1. The present value of the expected spread payments received by Party A,
2. The present value of the expected payments for tranche losses made by Party A, and
3. The present value of accrual payments received by Party A.

The spread payments received by Party A at a particular time are linearly dependent on the tranche principal at that time. The tranche loss payments made by Party A (assumed to be at the midpoint of an interval) is the change in the principal during the interval. The accrual payment received by Party A is proportional to the tranche loss payments. For any assumption about spreads, all three quantities of interest can therefore be calculated from the expected tranche principal on payment dates. The break-even spread can therefore be calculated analogously to the way it is calculated for CDSs in Appendix K.

Derivatives dealers calculate an implied copula correlation,  $\rho$ , from the spreads quoted in the market for tranches of CDOs and tend to quote these rather than the spreads themselves. This is similar to the practice in options markets of quoting Black-Scholes-Merton implied volatilities rather than dollar prices. Two correlations are used. The compound (tranche) correlation for a tranche is the correlation consistent with the tranche's market value. The base correlation for  $x\%$  is the correlation consistent with the market value of a tranche with attachment point at zero and detachment point at  $x\%$ . There is a correlation smile phenomenon in CDO markets similar to the volatility smile phenomenon in options markets.

The RMFI software that accompanies this book and can be downloaded from the author's website includes a worksheet for carrying out the above calculations.
