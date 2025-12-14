# Valuation Models: An Issue of Accounting Theory

Stephen H. Penman

Columbia Business School, Columbia University

The last 20 years has seen a significant development in valuation models. Up to the 1990s, the premier model, in both text books and practice, was the discounted cash flow model. Now alternative models based on earnings and book values—the so-called residual earnings model and the abnormal earnings growth model, for example—have come to the fore in research and have made their way into the textbooks and into practice. At the same time, however, there has been a growing skepticism, particularly in practice, that valuation models don't work. This finds investment professionals reverting to simple schemes such as multiple pricing that are not really satisfactory. Part of the problem is a failure to understand what valuations models tell us. So this paper lays out the models and the features that differentiate them. This understanding also exposes the limitations of the models, so skepticism remains—indeed, it becomes more focused. So the paper identifies issues that have yet to be dealt with in research.

The skepticism about valuation models is not new. Benjamin Graham, considered the father of value investing, appeared to be of the same view:

The concept of future prospects and particularly of continued growth in the future invites the application of formulas out of higher mathematics to establish the present value of the favored issue. But the combination of precise formulas with highly imprecise assumptions can be used to establish, or rather justify, practically any value one wishes, however high, for a really outstanding issue.

— Benjamin Graham, The Intelligent Investor,  $4^{\text{th}}$  rev. ed., 315-316.

One might hesitate is calling a valuation model a "formula out of higher mathematics", but Graham's point is that models can be used to accommodate any assumption about the future. This is behind current skepticism: valuations are very sensitive to assumptions about the cost of capital and growth rates (the "continued growth" that Graham highlights). Valuation is about reducing uncertainty about what to pay for an investment but, given the uncertainty about these and other inputs, how certain can we be?

This paper lays out alternative valuation models and evaluates their features. Three themes underlie the discussion. First, we require that the models be consistent with the theory of

finance. Second, valuation involves accounting, so accounting theory as well as finance theory comes into play. Third, valuation models are a tool for practical valuation, so the respective models are judged on how they perform or do not perform (as a practical matter), with the emphasis is on caveat emptor.

# 1. Valuation Models

All valuation models start with the idea that the value of an investment is based on the cash flows it is expected to deliver. This idea is noncontroversial in economics because it ties back to the premise that individuals are concerned with consumption and cash buys consumption. An investment is current consumption deferred to buy future consumption, and it is future cash that buys that consumption. So the value of an investment is the present value of the cash that it is expected to deliver. Cash given up to buy the investment has a time value, so expected future cash must be discounted for the time value of money. Further, it there is a risk of not receiving the expected cash, the expectation must be discounted for that risk. Accordingly, value is the present value of (discounted) expected cash flows.

This perspective puts valuation theory on the same rationalist foundations as neoclassical economics, and it is on this basis that we proceed here. That, of course, introduces a qualification: the criticisms of standard economics apply here also. In particular, viewing consumption as the end-all of investing can be questioned. We do not entertain this question and so ignore the recent work of "behavioral economics" that attempts to bring in other factors to explain why traded prices may not conform to values predicted by rationalist valuation principles.

# 1.1 The Dividend Discount Model (DDM)

For the most part, our discussion will be couched in term of equity valuation, though the principles are quite general, including investments in real assets rather than paper claims. Dividends,  $d$ , are the cash flows to equity holders, so a (noncontroversial) equity valuation model is the dividend discount model (DDM):

$$
V a l u e _ {0} = \sum_ {t = 1} ^ {\infty} \frac {d _ {t}}{\rho^ {t}} \tag {DDM}
$$

where  $\rho$  is one plus the discount rate (also known as the required return or the cost of capital). Here and elsewhere in the paper, amounts for  $t > 0$  are expected values. Equities (and the businesses behind them) are considered to be going concerns, and thus the infinite summation in the expression. While this is a valuation model, it is also a statement of no-arbitrage: for a given expectation of future dividends, value is the amount paid for an investment that yields the required return.

In the theory of finance, value must be a no-arbitrage value (otherwise another value is implied). As a practical matter, the (active) investor wishes to discover the no-arbitrage value to compare that value with price, and so discover an "inefficient" price (that is subject to arbitrage). The constant discount rate in the model is thus suspect for, with stochastic discount rates, this model is inconsistent with no-arbitrage. This issue is dealt with by discounting for risk in the numerator, then discounting for the time value of money in the denominator, as in Rubinstein (1976). Formally, given no-arbitrage,

$$
V a l u e _ {0} = \sum_ {t = 1} ^ {\infty} \frac {d _ {t} - C o v \left(d _ {t} , Y _ {t}\right)}{R _ {F t} ^ {t}} \tag {1a}
$$

where  $R_{Ft}$  is the term structure of (one plus) the spot riskless interest rates for all t,  $Y_{t}$  is a random variable common to all assets, and the covariance term that discounts for risk is the covariance of dividends with this random variable. All valuation models below can accommodate this modification. However, the  $Y_{t}$  variable is unidentified—it is a mathematical construct whose existence is implied by the no-arbitrage assumption but with no economic content (without further restrictions)—so the model is difficult to apply in practice. Accordingly, we maintain the constant discount rate assumption with the model (1) that is so familiar in texts and in practice. In should be recognized, however, that working with a constant discount rate is inconsistent with no-arbitrage valuation (though, as we will see, this is not at the top of the investor's problem with valuation models). Christensen and Feltham (2009) lay out models along the lines of the more general model (1a) and Nekrasov and Shroff (2009) and Bach and Christensen (2013) attempt to bring empirical content to them.

While model (1) with its generalization in (1a) is theoretically correct under the no-arbitrage assumption underlying the theory of modern finance, it runs into a practical problem that ties back to another foundational proposition in the theory. The practical problem arises from the infinite summation in the model: the investor has to forecast dividends "to infinity" and this is not practical. He or she requires a model where forecasting for a finite period gives a reasonable handle on the value, the shorter the better. For a company that does not pay dividends, this problem is acute. The theoretical problem is the Miller and Modigliani (1958) dividend irrelevance proposition, also based on no-arbitrage (and some additional assumptions). This says that, even if a firm pays dividends, dividend payout up to the liquidating dividend is irrelevant to value—and going concerns are not expected to liquidate. To see this, restate the DDM for a finite-horizon forecast to year  $T$ ,

$$
\begin{array}{l} V a l u e _ {0} = \sum_ {t = 1} ^ {T} \frac {d _ {t}}{\rho^ {t}} + \frac {P _ {T}}{\rho^ {T}}. \\ = \frac {1}{\rho^ {T}} \left[ \sum_ {t = 1} ^ {T} \rho^ {T - t} d _ {t} + P _ {T} \right] \tag {1b} \\ \end{array}
$$

Here the terminal cash flow is the expected price at which the investment will be sold at T. The valuation merely states the no-arbitrage condition for prices between two points of time and so serves to demonstrate the M&M principle with no-arbitrage. Dividends reduce value, dollar-for-dollar (at least where there are no frictions like taxes), otherwise there would be arbitrage opportunities. Accordingly, any dividend paid up to point  $T$  reduces  $P_T$  by the same present-value amount: dividend payout is a zero-net-present-value activity. Frictions may modify this statement, but they are presumed to be of second order, best dealt with in valuation by understanding the cost of the frictions—liquidity discounts and control premiums, for example—rather than designing a valuation model with frictions as the main driver.

The DDM presents a conundrum: value is based on expected dividends, but forecasting dividends is irrelevant to valuation. This conundrum must be resolved. The resolution must design a practical approach to valuation while still honoring the theory of modern finance.

# 1.2 The Discounted Cash Flow Model (DCF)

Clearly, another model is needed, but that model must maintain the no-arbitrage property that value is the discounted value of expected dividends forecasted to infinity. That is, the model must yield the equivalent valuation to the DDM for infinite horizon forecasts.

The M&M dividend irrelevance proposition assumes that firms' investment activities are not affected by dividend payments. Thus dividends are a distribution of value rather than the creation of value. That implies that value comes from investment activities and so a valuation model captures the value generated from investments. A popular alternative is the discounted cash flow model (DCF) where value is based on the expected free cash flows coming from investments. The equivalence to the DDM is clear from the cash conservation equation (otherwise referred to as the sources and uses of funds equation):

$$
F C F _ {t} = d _ {t} + F _ {t}.
$$

That is, the net cash from the firm, free cash flow  $(FCF_{t})$ , is applied as cash payout to shareholders,  $d_{t}$ , or to net debt holders,  $F_{t}$ . This is an accounting identity; as a practical matter, the accountant's bank reconciliation will not reconcile without uses of cash equal to sources. Substituting for  $d_{t} = FCF_{t} - F_{t}$  in eq. (1) for all t, the DDM is restated as

$$
V a l u e _ {0} = \sum_ {t = 1} ^ {\infty} \frac {F C F _ {t}}{\rho_ {f} ^ {t}} - V _ {0} ^ {N D} \tag {DCF}
$$

where  $V_0^{ND}$ , the value of the net debt, is the present value of expected cash flows to debt,  $F_t$ . The required return,  $\rho_f$ , now pertains to "the firm" (or "the enterprise") rather than the equity and reconciles to the required return for equity,  $\rho$ , via the Modigliani and Miller (1961) weighted-average cost of capital formula implied by no-arbitrage. The valuation also involves infinite-horizon forecasting, so the (practical) finite-horizon version of the model is implemented in practice:

$$
V a l u e _ {0} = \sum_ {t = 1} ^ {T} \frac {F C F _ {t}}{\rho_ {f} ^ {t}} + \frac {F C F _ {T + 1}}{\rho_ {f} ^ {T} \left(\rho_ {f} - g _ {F C F}\right)} - V _ {0} ^ {N D} \tag {2a}
$$

where  $g_{FCF}$  is (one plus) the expected growth rate for free cash flow after period  $T + 1$  (and  $g_{FCF} < \rho_f$ ).

Is this model an improvement over the DDM? If the firm has no net debt,  $FCF_{t} = d_{t}$ , so the model forecasts the same dividends as the DDM (with its inherent problems). So nothing is being put on the table: pure substitution is not theory. If the firm has net debt, then  $FCF_{t} = d_{t} + F_{t}$  but, under the Modigliani and Miller (1961) debt irrelevance principle, trading in financing debt is a zero-net-present-value activity. One can conjecture cases where issuing and redeeming debt adds value but, again, building a valuation model around such conjectures misses a central point: value comes primarily from investing in businesses.

If  $d_{t} + F_{t}$  is not a valuation metric, neither in free cash flow, for  $FCF_{t} = d_{t} + F_{t}$ . This is best demonstrated by with an example:

# Starbucks Corporation (in thousands of dollars)

<table><tr><td></td><td>1996</td><td>1997</td><td>1998</td><td>1999</td><td>2000</td></tr><tr><td>Cash from operations</td><td>135,236</td><td>97,075</td><td>147,717</td><td>224,987</td><td>314,080</td></tr><tr><td>Cash investments</td><td>148,436</td><td>206,591</td><td>214,707</td><td>302,179</td><td>363,719</td></tr><tr><td>Free cash flow</td><td>(13,200)</td><td>(109,516)</td><td>(66,990)</td><td>(77,192)</td><td>(49,639)</td></tr><tr><td>Earnings</td><td>42,127</td><td>57,412</td><td>68,372</td><td>101,693</td><td>94,564</td></tr></table>

Over the period, 1996-2000, the share price for Starbucks, the retail coffee chain, increased 423 percent, so investors saw value generated. However, the free cash flows over the same period were negative. How can a firm with negative cash flow add so much to its market price? The answer lies with the free cash flow metric. Free cash flow is cash flow from operations minus cash invested in the business, as in the exhibit. Firms invest to generate value, but free cash flow treats investment as a negative: firms increasing investment reduce free cash flow and those

liquidating investments increase it, ceteris paribus. This is perverse. Value adding firms generate cash but they also consume cash to do so.<sup>1</sup>

The problems with DCF valuation are evident if one applies the model to a valuation of Starbucks at the beginning of 1996 with expected free cash flows for 1996-2000 equal to the actual numbers in the exhibit. All free cash flows to the forecast horizon in 2000 are negative, but value must be positive (assuming limited liability). Thus more than 100 percent of the value must be in the continuing value and that rides on the assumed growth rate. Benjamin Graham's concern about valuations that put a lot of weight on "continued growth in the future" (in the quote in the introduction) weighs heavily here. Of course, the valuation can be completed by forecasting the long run (when the cash flows from the investments will be realized), but that puts the investor into long-horizon forecasting where he or she in most uncertain. In short, the model is not very practical.

# 1.3 Accrual Accounting Models

DCF valuation forecasts cash flows that flow through the cash flow statement. Alternative models focus on the income statement and balance sheet and thus involve accrual accounting. (Accrual) earnings reconcile to free cash flow according to the accounting equation,

$$
E a r n i n g s _ {t} = F C F _ {t} - i _ {t} + I n v e s t m e n t _ {t} + A d d i t i o n a l a c c r u a l s _ {t},
$$

where  $i_{t}$  is accrued net interest expense. So the investment that was so troubling in the Starbucks' example is added back to free cash flow, along with added accruals for non-cash flows (sales on credit, accrued expenses, pension liabilities, depreciation, and the like). Corresponding, the investment and additional accruals are added to the balance sheet as net operating assets, NOA:

$$
C h a n g e \quad I n O A _ {t} = I n v e s t m e n t _ {t} + A d d i t i o n a l \quad a c c r u a l s _ {t}
$$

The balance sheet is thus comprised of net operating assets involved in the business and net debt involved in the financing of the business, with the difference, the book value of equity,  $B$ , governed by the balance sheet equation:

$$
B _ {t} = N O A _ {t} - N D _ {t}.
$$

While free cash flows are negative in the Starbucks exhibit, earnings are positive, and the difference is due to the accounting for investment and accruals. The identification of investment and accruals is governed by accounting theory. Treating investment as an asset rather than a deduction from the flow variable "looks right", and indeed is supported by extant accounting theory. But will valuation based on earnings and book values work?

# 1.3.1 The Gordon Model

The Gordon model begins (appropriately) with the dividend discount model, with expected dividends after the forward year represented by a constant growth rate (given here by one plus the growth rate,  $g$ ):

$$
V a l u e _ {0} = \frac {d _ {1}}{\rho - g}
$$

(The model can be extended to any forecast horizon, with constant growth assumed after that horizon). Recognizing that this is impractical, the Gordon model substitutes earnings for dividends with an assumed payout ratio,  $k = d_t / Earnings_t$ , all  $t$ . Thus, substituting for  $d_1$

$$
V a l u e _ {0} = \frac {k . E a r n i n g s _ {1}}{\rho - g _ {E a r n}},
$$

and the growth rate is now the expected earnings growth rate.

The case of zero payout is clearly an issue here. But, more generally, rescaling by a constant,  $k$ , adds little as a matter of theory, so nothing has been put on the table. Indeed, this valuation violates the M&M dividend irrelevance property: payout reduces subsequent earnings growth and retention increases it, so the earnings growth rate becomes a function of payout as well as the firm's ability to generate earnings. An extension of the Gordon model, the Gordon-Shapiro model sets the earnings growth rate equal to 1 - ROE, where ROE is the (book) rate of return on equity. But 1 - ROE reflects the retention rate, that is, the dividend payout. To be M&M consistent, one requires a valuation model where earnings growth represents the ability of the business to grow earnings, not earnings growth that comes from irrelevant payout/retention.

# 1.3.2 The Residual Income Model

A further accounting equation—the so-called clean-surplus equation—reconciles earnings, book values, and dividends:

$$
B _ {t} = B _ {t - 1} + E a r n i n g s _ {t} - d _ {t}
$$

where  $Earnings_{t}$  is comprehensive ("clean-surplus") earnings and  $d_{t}$  is the net dividend to equity holders. Substituting  $d_{t} = Earnings_{t} - (B_{t} - B_{t-1})$  for dividends in model (1) and iterating over future periods,

$$
V _ {0} ^ {T} \equiv B _ {0} + \sum_ {t = 1} ^ {T} \frac {R E _ {t}}{\rho^ {t}} \tag {RIM}
$$

$$
\rightarrow V a l u e _ {0} \text {i n m o d e l (1) a s} T \rightarrow \infty , \text {p r o v i d e d t h a t} \frac {B _ {T}}{\rho^ {T}} \rightarrow 0 \text {a s} T \rightarrow \infty .
$$

Accordingly this model is equivalent to the DDM for infinite forecasting horizons.  $RE_{t} \equiv$

$Earnings_{t} - (\rho - 1)B_{t-1}$  is residual earnings or residual income and so this the model is known as the residual income model (RIM).<sup>2</sup>

Equivalently, by iterating out earnings, book values, and dividends from the future stream of forecasted residual earnings,

$$
V _ {0} ^ {T} = \frac {1}{\rho^ {T}} \left[ \sum_ {t = 1} ^ {T} \rho^ {T - t} d _ {t} + B _ {T} \right] \tag {3a}
$$

and

$$
V _ {0} ^ {T} = \frac {1}{\rho^ {T}} \left[ B _ {0} + \sum_ {t = 1} ^ {T} E a r n i n g s _ {t} ^ {C} \right] \tag {3b}
$$

where  $\sum_{t=1}^{T} E\text{earnings}_t^C = \sum_{t=1}^{T} E\text{earnings}_t + \sum_{t=1}^{T} (\rho^{T-t} - 1)d_t$ , that is, total earnings forecasted to  $T$  with dividends reinvested at the discount rate (known as cum-dividend earnings). Both expressions depict value as the present value of expected cum-dividend book value. $^3$

The RIM has a desirable property: it is M&M consistent. Ohlson (1995) shows that, if dividends are paid out of book value (and do not affect contemporaneous earnings)—as prescribed by the clean surplus equation—then the RIM valuation is insensitive to payout. A proviso comes in Feltham and Ohlson (1995): dividends must be paid out of zero-net-present-value assets (for example, excess cash). Under M&M assumptions, current dividends reduce current value dollar-for-dollar but also reduce  $V_0^T$  in (3) in the same way by reducing  $B_0$  dollar-for-dollar with no effect on subsequent residual earnings. Further, any anticipated future payout in equation 3(a) reduces book future book value  $B_t$  by the same present value amount to leave  $V_0^T$  unaffected. Note that this is an accounting property: M&M properties are built into cleansurplus accounting, as a matter of accounting principle.<sup>4</sup>

We noted that the finite-horizon DDM in equation (1b) was circular because it requires an expectation of the terminal price to find the current price. However, a comparison of equation 3(a) with 1(b) shows that the RIM supplies a terminal value for the finite-horizon dividend discount model, a point emphasized in Penman (1998). That is, in accumulating earnings in book values, the accounting system projects an expected terminal payoff in book value at time  $T$ . Dividends are paid out of book value, so expected book value at any point in time,  $T$ , is an estimate of the expected dividends to be paid from  $T$  onwards. Thus we see how forecasting

using accounting numbers potentially reduces an infinite forecasting problem to a finite one, a feature much desired for practical valuation.

However, the comparison of equations 3(a) and 1(b) shows the error that remains from forecasting for a given forecast horizon:

$$
V a l u e _ {0} = V _ {0} ^ {T} + \frac {1}{\rho^ {T}} \left(P _ {T} - B _ {T}\right) \tag {3c}
$$

The error,  $P_T - B_T \to 0$  as  $T \to \infty$  but for finite  $T$ , the error is value not yet book to book value by time,  $T$ . As the difference between price and book value is given by subsequent expected residual income, value can be expressed as

$$
\begin{array}{l} V a l u e _ {0} = B _ {0} + \sum_ {t = 1} ^ {T} \frac {R E _ {t}}{\rho^ {t}} + \frac {P _ {T} - B _ {T}}{\rho^ {T}} \\ = B _ {0} + \sum_ {t = 1} ^ {T} \frac {R E _ {t}}{\rho^ {t}} + \frac {R E _ {T + 1}}{\rho^ {T} (\rho - g _ {R E})} \tag {3d} \\ \end{array}
$$

This standard text-book form plugs for the error by forecasting the growth rate in residual income,  $g_{RE} < \rho$ , after  $T + 1$ . Accordingly, like the DCF model, the application of the model requires a speculative long run growth rate. Thus any practical advantage of the model over the DCF model must focus on the weight that has to be given to speculative growth rates and that, in turn, depends on the amount of value expected to be booked to book value prior to  $T$ . We return to this issue in section 2.<sup>5</sup>

Like the DCF model RIM can be unlevered to separate the value of the business, the enterprise, from the value of the net debt.

# 1.3.3 The Abnormal Earnings Growth Model

Define abnormal earnings growth for period  $t$  as  $AEG_{t} \equiv Earnings_{t} + (\rho - 1)d_{t-1} - \rho Earnings_{t-1}$ . That is,  $AEG_{t}$  is earnings for the period in excess of earnings for the prior period growing at the

required return rate, but with dividends reinvested. Given clean surplus accounting,  $AEG_{t} = \Delta RE_{t}$ , where  $\Delta$  indicates changes. Substituting in RIM model (3),

$$
V _ {0} ^ {T} = \frac {\text {E a r n i n g s} _ {1}}{\rho - 1} + \frac {1}{\rho - 1} \sum_ {t = 2} ^ {T} \frac {1}{\rho^ {t - 1}} A E G _ {t} \tag {4}
$$

This is the so-called AEG model or the Ohlson-Juettner model from Ohlson and Juettner-Nauroth (2005). That paper shows that the model, like RIM, is consistent with M&M dividend irrelevance. While this derivation demonstrates the equivalence with RIM given clean surplus accounting, there are subtle differences. First, this model does not involve book value; the model is based on expected earnings and expected earnings growth. As such, it can be seen as the M&M-consistent version of the Gordon model. Second, for finite horizon applications, the forecasted growth rate in the continuing value has a different interpretation from that for RIM. Indeed, while the two models are equivalent for infinite horizon forecasting (and equivalent to the DDM), they are not necessarily equivalent valuations for finite-horizon forecasting.

The first point is demonstrated by a derivation of both models that is more general than that for RIM, as in Ohlson and Juettner-Nauroth (2005). An algebraic zero-sum equality

$$
0 = y _ {0} + \sum_ {t = 1} ^ {\infty} \frac {1}{\rho^ {t}} \left(y _ {t} - \rho y _ {t - 1}\right)
$$

holds provided the transversality condition,  $\lim_{t\to \infty}\rho^{-t}y_t = 0$ . Adding this series to DDM in equation (1),

$$
V a l u e _ {0} = y _ {0} + \sum_ {t = 1} ^ {\infty} \frac {1}{\rho^ {t}} (y _ {t} + d _ {t} - \rho y _ {t - 1})
$$

A valuation model then becomes an issue of specifying the  $y$ -variable. Setting  $y_0 = B_0$  and assuming clean-surplus accounting, we have the RIM. Setting  $y_0 = \frac{Earnings_1}{\rho - 1}$ , we have the AEG model, but without the assumption of clean-surplus accounting (and without book value). See Ohlson and Gao (2006). Penman (2005) evaluates the AEG model against the RIM.

As the AEG model does not require clean surplus accounting, it is more general. That is probably of little consequence in practice. However the second difference mentioned is. For

finite horizon forecasting, the AEG model with a constant growth rate (for just two forward periods here) is:

$$
\begin{array}{l} V a l u e _ {0} = \frac {\text {E a r n i n g s} _ {1}}{\rho - 1} + \frac {1}{\rho - 1}. \frac {\text {A E G} _ {2}}{\rho - \mathrm {g} _ {\text {A E G}}} (4a) \\ = \frac {\text {E a r n i n g s} _ {1}}{\rho - 1} \left[ \frac {g _ {2} - \left(g _ {A E G} - 1\right)}{(\rho - 1) - \left(g _ {A E G} - 1\right)} \right] (4b) \\ \end{array}
$$

where  $g_{AEG} < \rho$  and  $g_2 \equiv (\Delta Earnings_2 + (\rho - 1)d_1) / Earnings_1$ , that is, the expected growth rate in cum-dividend earnings two years ahead. While  $AEG_t = \Delta RE_t$ , given clean-surplus accounting, it is not the case that  $g_{AEG} = g_{RE}$ . This follows simply from the mathematical statement that, if the level of a variable grows as the rate,  $g$ , so do its changes, but the converse is not true. So valuations (3a) and (4a) (for the same forecast horizon) are not equivalent. Indeed, a constant growth rate for  $AEG$  implies a declining rate for  $RE$ . One might suggest that a declining rate is more likely, but that is an empirical matter. The  $g_{AEG}$  rate in the model equals the long run (asymptotic) growth rate in expected earnings, provided dividend payout meets a minimum. This long-run rate is likely to be the same for all firms (the average GDP growth rate?), but that means than  $g_{AEG}$  (the rate at which AEG is expected to grow) is the same for all firms in the cross section. Value is then driven solely by forward earnings, growth in the second period,  $g_2$ , and the discount rate. While that might be doubtful for a two-period horizon (and in model (4a)), the model presumably calibrates better with longer forecast horizons.

# 1.4 Empirical Evidence

Empirical research compares valuation models in three ways. First, a set of papers compares the models on their ability to explain current prices. Second, a number of papers ask whether the models work to determine “value” which is can then compared to traded prices to identify mispriced securities. Third, papers apply the models in reverse engineering fashion to estimate the “implied cost of capital”. This paper does not cover the latter; the literature is long and rather inconclusive, in part because there is no objective benchmark to for the “true” observable cost of capital. And, disappointingly, these papers have had difficulty in showing that their estimates of the cost of capital actually predict average stock returns, though Nekrasov and Ogneva (2011)

and Fitzgerald, Gray, Hall, and Jeyaraj (2013) are recent exceptions. For a survey, see Easton (2009).

Penman and Sougiannis (1997) examined whether valuations based on accrual accounting numbers exhibit the M&M properties of dividend displacement and dividend irrelevance, with an answer in the affirmative. Then followed a number of papers that compared the RIM valuation with DDM and DCF valuation, with the metric being the relative error of model values in approximating observed prices. See Francis, Olsson, and Oswald (2000), Courteau, Kao, and Richardson (2001), and Penman and Sougiannis (1998). While it is recognized that all models provide the same valuation for infinite forecasting horizons, the emphasis in these papers is on comparing the valuations over varying finite horizons. The consistent result is that RIM models provide more accurate valuations than cash flow models when U.S. GAAP (accrual) accounting is used. However, RIM does not perform particularly well when price-earnings ratios and price-to-book ratios are high. This might be expected, for these are cases where the continuing-value growth rate contributes heavily to the valuation. For a discussion of these papers, follow the debate in Lundholm and O'Keefe (2001), Penman (2001), and Lundholm and O'Keefe (2001).

Two papers have compared the RIM with the AEG model. In his comments of the AEG model Penman (2005) documents that RIM values approximate traded prices better than AEG. In a more extensive analysis, Jorgenson, Lee, and Yoo (2011) demonstrate the same.

These papers take traded prices as a benchmark with the assumption that prices express value. This "efficient market" assumption is common in much empirical research in accounting and finance, but a second set of papers takes the alternative view: Do valuation models yield values that identify mispricing? Using analysts' consensus earnings forecasts as inputs along with assumptions on the continuing value, Frankel and Lee (1998) show that, while the RIM model values track prices, it also predicts future stock returns in the cross-section, an indicating of mispricing. Lee, Myers, and Swaminathan (1999) conduct a similar analysis for the portfolio of Dow stocks and finds that value relative to the price of the Dow index (V/P) leads the price in

a way that is consistent with V/P identifying mispricing. As in all empirical studies that forecast stock returns, the conclusions of these studies must be qualified because the predicted returns may be due to differences in risk. Ali, Hwang, and Trombley (2003) investigate whether returns predicted by RIM are explained by risk or mispricing.

# 2. Accounting and Valuation

The legitimacy of valuation models rests on their equivalence to the DDM. However, that equivalence holds only for infinite forecast horizons and then via a substitution that simply involves a mathematical relation. With the DCF model, the relation is the cash conservation equation, for RIM the clean surplus equation, and the AEG model from a mathematical equivalence that identifies a  $y$  variable that is then simply nominated as capitalized forward earnings, by fiat. This is hardly satisfactory as a matter of theory, for substitution without additional structure puts little on the table. As the equivalence to DDM necessarily holds only for infinite horizons and practical valuation must involve finite horizons, the theorist can well ask how far we have come. The point is driven home by recognizing that RIM works for random numbers for earnings, provided one forecasts "to infinity." This is because the clean-surplus relation forces a reconciliation to dividends, but only necessarily so with the final payout: book value must go to zero as the final dividend is paid in liquidation.

Indeed, without further structure, accrual accounting models exhibit a value-irrelevance property with respect to the accounting. This is demonstrated with the finite-horizon RIM in equations 3(a) and 3(b):

$$
V _ {0} ^ {T} = \frac {1}{\rho^ {T}} \left[ \sum_ {t = 1} ^ {T} \rho^ {T - t} d _ {t} + B _ {T} \right] = \frac {1}{\rho^ {T}} \left[ B _ {0} + \sum_ {t = 1} ^ {T} E a r n i n g s _ {t} ^ {C} \right]
$$

Accrual accounting is a matter of allocating earnings to periods under the constraint that total, life-long earnings equal total cash flows. The allocation to earnings expected before  $T$  can be anything and the asymptotic property still holds: an infinite horizon is needed to correct the "errors" in the accounting. That allocation determines the expected book value at  $T$  and that, in turn, determines the error for the horizon  $T$ ,  $P_T - B_T$  in equation (3c). At one extreme, the allocation could be zero earnings recognized before  $T$ . At the other extreme, all expected earnings could be recognized immediately such that  $T = 0$  and  $Value_0 = B_0$ . Though RIM model

handles the problem of the DDM being insensitive to dividends, it replaces it with the problem of the valuation being insensitive to the accounting. Added structure that specifies the accounting that goes into the model is required for accrual accounting models to have an advantage over the DDM for finite (practical) finite horizons.

The point is further illustrated by recognizing that the difference between the DCF model and RIM is simply an issue of the accounting involved: DCF valuation uses cash accounting and thus forecasts what will come through the cash flow statement whereas RIM uses accrual accounting and thus forecasts future income statements and balance sheets. Indeed, the DCF model is just a special case of RIM, a case that uses a particular accounting, cash accounting. This can be shown by separating the balance sheet and income statement into operating and financing activities, as in Feltham and Ohlson (1995). So,  $B_{t} \equiv NOA_{t} - ND_{t}$  (for all t), where  $ND$  is net debt and  $NOA$  is net operating assets in the business (as earlier). Set,  $B_{t} \equiv -ND_{t}$  (that is, omit any accounting for business operations). The cash conservation equation implies a the clean-surplus relation such that  $ND_{t} = ND_{t-1} - (FCF_{t} - i_{t}) + d_{t}$ , where  $i_{t}$  is net cash interest paid on the debt. Here  $FCF_{t} - i_{t}$  is earnings ("cash flow earnings"). Substituting for dividends in the DDM via the clean surplus equation,

$$
V _ {0} ^ {T} (D C F) = - N D _ {0} + \sum_ {t = 1} ^ {T} \frac {1}{\rho^ {t}} (F C F _ {t} - i _ {t} + (\rho - 1) N D _ {t - 1})
$$

If net debt is measured at its present value by accruing interest such that  $i_{t} = (\rho_{D} - 1)ND_{t - 1}$  (for all  $t$ , with  $\rho_{D}$  the required return for net debt), then

$$
V _ {0} ^ {T} (D C F) = \sum_ {t = 1} ^ {T} \frac {F C F _ {t}}{\rho_ {f} ^ {t}} - V _ {0} ^ {N D},
$$

which is the DCF model (2) for a forecast horizon of  $T$ . So, the DCF model is a residual income model with cash accounting for operations and accrual accounting for net debt. Lücke (1955) provides a similar demonstration. Note, from equation (3c), that the error for the DCF model for a finite horizon is  $\frac{1}{\rho^T} (P_T - B_T)$ , but  $B_{T} = -ND_{T}$  is this case, so, the error is quite large (equal to or greater than  $P_T$ ). This might point to the superiority of accrual accounting (which typically

reports positive book values), but there is no necessity that accrual accounting works well without further specification on the type of accrual accounting.

# 2.1 Accounting Research

The empirical research on valuation models, summarized above, points to the superiority of accrual accounting models over cash flow models with U.S. GAAP accounting. But U.S. GAAP accounting is not necessarily the ideal accrual accounting for the purpose. The question is open but, regrettably, research to date has done little to answer the question. This is a challenge for accounting theory and one with potentially big payoffs, for it provides a framework for research to address the normative issues of accounting policy faced by accounting standard setters.

However, while there has been little normative work, there has been some modeling of how different accounting principles affect accounting numbers and thus how one infers value under those accounting principles. We summarize this research with the aim of promoting more thought on the normative accounting question.

The clean-surplus operation. In the derivation of the RIM, there is one aspect of the accounting that does bite. The clean-surplus relation is not an identity but rather a prescriptive accounting procedure: accounting starts with book value, calculates earnings, closes the earnings to book value (in the "closing entry"), and then pays dividends out of book value. Unlike the cash conservation equation for the derivation of the DCF model, this procedure does not have to be so: it is part of the design of an accounting system, an accounting principle. Indeed, it is violated with the practice of recognizing "other comprehensive income" in equity rather than in earnings per share under GAAP and IFRS.

It is this principle that we have seen renders a valuation model that is consistent with a fundamental principle in the theory of finance, dividend irrelevance; the clean surplus accounting principle impinges directly on the use of accounting numbers for valuation. So, valuation theory suggests a normative accounting principle: accounting should be clean surplus, at least in expectation. From the point of view of valuing the common (ordinary) shareholders' claim, that rules out preferred dividends going through equity rather than earnings, for example. It also says that GAAP and IFRS fail in not recognizing the loss on the conversion of contingent claims (such as convertible bonds and preferred stock and employee stock options) to equity. From a

practical point of view, it says that an investor using GAAP and IFRS earnings is in danger of overvaluing the equity.<sup>7</sup>

The cancelling error property. Given clean-surplus accounting, one can substitute  $d_{t} = Earnings_{t} - (B_{t} - B_{t-1})$  for dividends in the stock return,  $P_{t} + d_{t} - P_{t-1}$ , such that

$$
E (P _ {t} + d _ {t} - P _ {t - 1}) = E (E a r n i n g s _ {t} + P _ {t} - B _ {t} - (P _ {t - 1} - B _ {t - 1}))
$$

That is, the expected stock return is equal to expected earnings plus the expected change in premium of price over book value. In the case of no expected change in premium, earnings equal the stock return. This expression, found in Easton, Harris and Ohlson (1992), has two implications for valuation.

First, as it is not necessary to have a "correct" balance sheet to infer expected returns, and thus value, if the expected error in the balance sheet is a constant. In this case value is expected earnings capitalized with the required return, and accounting in the balance sheet is irrelevant. Omitted assets, for example, are not a problem if they result in a constant premium, a point made in Penman (2009) is evaluating the accounting for intangible assets. In short, valuation tolerates error in the balance sheet up to a constant. Second, finite-horizon valuation is completed (without error) for a forecast horizon,  $T$ , if  $P_{T+1} - B_{T+1} - (P_t - B_t) = 0$ . In this case,  $P_T = \frac{Earnings_{T+1}}{\rho - 1}$  so the terminal value for the DDM in equation (1b) is supplied by the accounting, as is the valuation error for RIM,  $\frac{1}{\rho^T} (P_T - B_T)$ , in equation (3c). For the AEG model, valuation reduces to capitalized forward earnings, the first term in equation (4) if the expected change in premium in the forward year is zero. More generally, finite-horizon valuation is completed (without error) for any horizon,  $T$ , where the condition is satisfied. For the AEG model it is easy to see that expect AEG = 0 for periods after  $T$  is this case.

The case of no change in premium has a close resemblance to the canceling error property in accounting theory: earnings are unaffected by the accounting in the balance sheet provided the errors in the opening and closing balances cancel. R&D accounting provides an

example: GAAP R&D accounting leaves investment off the balance sheet such that price is greater than book value. But earnings are the same whether one capitalizes and amortizes R&D expenditures or expenses them immediately provided there is no growth in R&D expenditure. So the accounting treatment of R&D does not matter. Similarly, depreciation and earnings are the same, irrespective of depreciation method, if there is no growth in depreciable assets. The growth qualification makes a point: expected growth in expenditures with error in the balance sheet implies an increase in expected premiums. It is the growth case that accounting theory has to grapple with. This leads us into the properties of accounting numbers under conservatism.

Conservative accounting. The valuation theory in Ohlson (1995) involves "unbiased accounting" where  $P_T - B_T \to 0$  as  $T \to \infty$ . That, of course, facilitates finite-horizon valuation: if, for a given  $T$ ,  $P_T = B_T$ , the valuation is made without error, and the horizon,  $T$ , depends on how quickly book value catches up with price. Feltham and Ohlson (1995) explore an alternative accounting, conservative accounting, where carrying values are systematically below value such that  $P_T - B_T > 0$  for all  $T$ . Zhang (2000) and Cheng (2005) explore this accounting further. It the expected premium is given by a constant (that is, there is no expected change in premium), then a finite valuation is also satisfied, as we have just seen. However, Feltham and Ohlson (1995) show that, with growth in investment, premiums expand under conservative accounting and correspondingly, there is expected growth in earnings and residual earnings and thus  $g_{RE}$  in model 4(b) is greater than 1. As AEG = ΔRE, there is corresponding expected growth in AEG.

GAAP accounting and IFRS accounting are conservative accounting systems where the price-to-book ratio is typically above 1. The understanding of conservative accounting brings warnings about how to handle accounting numbers. First, book rates of return, like  $ROE$ , are typically above the required return in expectation because of low carrying value for assets in the denominator. This challenges any theory that assumes that  $ROE$  is expected to revert to the required return in the long run, as many do. That assumption requires unbiased accounting such that  $P_T - B_T$  reverts to zero in the long run. Further, it is a mistake to take the accounting rate of return as the economic rate of return, as also is often done when evaluating firms' "profitability": a firm earning normal economic returns (and adding no value above the required return) may report an  $ROE$  greater than the required return under conservative accounting. The effect of conservative accounting on book rate of return is further explored in Livingstone and Salamon

(1970), Brief and Lawson (1992), Danielson and Press (2003), Rajan, Reichelstein, and Soliman (2007), and Penman and Zhang (2013).

Accounting methods. Some papers have investigated alternative metrics and their properties. While not always focused on valuation, these papers are relevant because they involve different accounting for book rate of return and residual earnings. Liu, Ohlson, and Zhang (2013) propose profitability measures based on modified cash accounting as an alternative to book rate of return under GAAP, and in so doing highlight the difficulties with the standard measures. Rogerson (1997 and 2008) and Dutta and Reichelstein (2005) propose alternative accounting for depreciation. McNichols, Rajan, and Reichelstein (2013) explain the price-to-book ratio with alternative accounting metrics.

# 3. Accounting, Risk, and the Required Return

With all the valuation models examined, one component has gone unmentioned: the required return,  $\rho$ . Practitioners well know the sensitivity of a valuation to this input. Discount rates are compounded in many valuations—for period  $t$  ahead, the discount rate is  $\rho^t$  — so error in the rate has a significant effect. What is the required return?

The accounting theorist might dodge this question by saying that the number is supplied by asset pricing research: models such as the Capital Asset Pricing Model (CAPM) and the Fama and French multifactor model supply the required return. Generalized asset pricing theory has indeed led to a better understanding of the theory of the required return, but it is fair to say that research has not produced an operational model that supplies the number. After 60 years of research in asset pricing, we do not have a handle on the problem.<sup>8</sup>

This paper closes with some thoughts about how accounting theory might be brought to the issue. Accounting principles determine the allocation of earnings to periods and, as noted, that bears on finite-horizon valuation. But does it also bear on risk?

A key accounting principle ties the inter-period allocation to risk (and potentially the required return): under uncertainty, earnings are not booked until the uncertainty has largely been resolved. In most cases, this "realization principle" requires receipt of cash to be relatively

certain, usually indicated by a sale and a (collectible) accounts receivable. In asset pricing terms, earnings are not recognized until the firm has a low-beta asset. This deferral principle is operative throughout GAAP and IFRS, with revenue recognition rules (and consequent deferred revenue) and associated expense matching producing a number that is indicative of cash expected from trading (with some certainty). Even the expensing of R&D expenditures and advertising, seen by many as a mismatching of revenues with expenses, involves a deferral of earnings recognition until uncertainty has been resolved: R&D is risky and may not generate revenues against which (capitalized and amortized) R&D can be matched.

Deferred of earnings is an application of conservative accounting, but now with conservative accounting tied to risk. (The label, "conservative accounting", is appropriate, for it refers to accounting under risk.) Deferral of earnings recognition produces expected earnings growth so the accounting principle ties risk to expected earnings growth: growth is risky (as, indeed, the investor buying a start-up growth company appreciates). Conservative accounting produces expected earnings growth with investment (above) and thus earnings growth is tied to risky investment. In the Feltham and Ohlson (1995) conservative accounting paper, the required return is ignored—it is a constant unrelated to the accounting—but now we have a basis of tying the accounting to the required return.

The implications for valuation are important. In all the valuation models we have referred to, the finite-horizon valuation is completed with a terminal value calculation, as in equations (2a), (3d), and (4b). The capitalization rate,  $\rho - g$ , is usually applied by first finding the required return and then adjusting this for the expected growth. Typically,  $\rho$  and  $g$  are seen as independent inputs, with  $g$  increasing the calculated value for a given  $\rho$ . But what if growth were risky? Then  $r$  would increase with  $g$ , yielding a lower valuation. The practice of adding value for growth may not be correct. Penman and Reggiani (2013b) shows how failure to recognize the point can lead value investors into a value trap.

The relationship between growth and risk is clear with financing leverage. Penman (2012, chapter 4) shows that increased leverage adds to expected earnings growth deterministically, provided leverage is favorable. But is also adds to (financing) risk such that, under Modigliani and Miller (1957) conditions, price is unaffected; risk and growth cancel with no value added to

price. It is not unreasonable that this might also be so for business operations, at least to some extent: one cannot buy more earnings growth without taking on more risk, at least on average.

The connection of accounting numbers to risk via the realization principle suggests that accounting theory might have something to contribute to the solving the problem of the required return. Just as accounting valuation models must be consistent with the theory of finance, so must this accounting theory be consistent with the theory of risk and return in asset pricing. The difficulty is tying the deferral accounting to priced risk, that is, systematic risk priced under asset pricing.

A few papers show promise. First, Ohlson (2008) shows that an accounting system can be designed with the expected earnings growth rate tying one-to-one to the risk premium. Second Penman and Reggiani (2013a) show empirically that expected earnings growth from the deferral principle is risky and is associated with higher average returns. Significantly, it is a combination of firm's earnings-to-price (E/P) and book-to-price (B/P) that provides this indication, thus providing an explanation of why B/P appears in so prominently in asset pricing models such as the Fama and French three-factor model and its relatives. Penman, Reggiani, Richardson, and Tuna (2013) take up the ideas to develop a simple characteristic model for asset pricing where, in predicting the expected return, E/P is sufficient when there is no growth, but the weight shifts to B/P where there is expected growth. While empirical finance has had trouble documenting that financing leverage adds to expected returns—most papers document a negative relationship—this paper shows that leverage is priced positively under the model. Penman and Zhu (2013) show that a number of accounting "anomalies"—accruals, asset growth, investment, and more—can be explained by these accounting variable predicting risky expected earnings growth. Konstantinidi and Pope (2012) use quantile regressions to predict the full distribution of ex ante earnings outcomes, a promising approach to identifying risk in earnings.

Penman (2012) proposes ways for the investor to finesse the problem of the indeterminacy of the cost of capital and to incorporate the idea that growth is risky into valuation and stock selection. However there is a great need for accounting and finance theory to develop these ideas more rigorously. That holds great promise, with the specter of developing an accounting-based asset pricing model. In doing so, accounting theory will not deal with the accounting issues in the numerator a valuation model, but also the denominator that involves the

discount rate. That will truly be a contribution to offering a practical valuation model. The two are tied: valuation is based on expected accounting outcomes, but also the risk those expectations will be realized via the realization principle.

# 4. Conclusion

This review stresses a point: valuation is a matter of accounting and the practicality of a valuation model depends on the accounting involved. Valuation must be consistent with the theory of finance but is only completely satisfied by specifying the appropriate accounting. That points to the need for accounting theory to work on the issue. The endeavor not only involves the......

# References

Ali, A., L. Hwang, and M. Trombley. 2003. Residual-income-based valuation predicts future stock returns: Evidence on Mispricing vs. risk explanations. The Accounting Review 78, 377-396.  
Ang, A., and J. Liu. 2001. A general affine earnings valuation model. Review of Accounting Studies 6, 397-425.  
Bach, C., and P. Christensen. 2013. Consumption-based equity valuation. Unpublished paper, Aarhus University.  
Brief, R., and R. Lawson. 1992. The role of the accounting rate of return in financial statement analysis. *The Accounting Review* 67, 411-426.  
Cheng, Q. 2005. What determines residual income? The Accounting Review 80, 85-112.  
Christensen, P., and G. Feltham. 2009. Equity valuation. Foundations and Trends in Accounting 4, 1-112.  
Clubb, C. 2013. Information dynamics, dividend displacement, conservatism, and earnings measurement: a development of the Ohlson (1995) valuation framework. Review of Accounting Studies 18, 360-385.  
Courteau, L., J. Kao, and G. Richardson. 2001. Equity valuation employing the ideal versus ad hoc terminal value expressions. Contemporary Accounting Research 18, 625-661.  
Danielson, M. and E. Press. 2003. Accounting returns revisited: evidence of their usefulness in estimating economic returns. Review of Accounting Studies, 8:493-530.  
Dechow, P., A. Hutton, and R. Sloan. 1999. An empirical assessment of the residual income valuation model. Journal of Accounting and Economics 26, 1-34.  
Dutta, S. and S. Reichelstein. 2005. "Accrual accounting for performance evaluation." Review of Accounting Studies, 10: 527-552.  
Easton, P. 2009. Estimating the cost of capital implied by market prices and accounting data. *Foundation and Trends in Accounting* 2, 241-364.  
Easton, P., T. Harris, and J. Ohlson. 1992. Accounting earnings can explain most of security returns: The case of long-event windows," Journal of Accounting and Economics 15, 119-142.  
Edwards, E., and P. Bell. 1961. The Theory and Measurement of Business Income (Berkeley: University of California Press).  
Feltham, G., and J. Ohlson. 1995. Valuation and clean surplus accounting for operating and financial activities. Contemporary Accounting Research 12, 689-731.

Feltham, G., and J. Ohlson. 1999. Residual income valuation with risk and stochastic interest rates. The Accounting Review 74, 165-183.  
Fitzgerald, T., S. Gray, J. Hall, and R. Jeyaraj. 2013. Unconstrained estimates of the equity risk premium. Review of Accounting Studies 18, 560-639.  
Francis, J., P. Olsson, and D. Oswald. 2000. Comparing the accuracy and explainability of dividend, free cash flow, and abnormal earnings equity value estimates. Journal of Accounting Research 38 (Spring): 45-70.  
Frankel, R., and C. Lee. 1998. Accounting valuation, market expectation, and cross-sectional stock returns. Journal of Accounting and Economics 25, 283-319.  
Gao, Z., J. Ohlson, and A. Ostaszewski. 2013. Dividend policy irrelevancy and the construct of earnings. Journal of Business Finance and Accounting 40, 673-694.  
Jorgensen, B., Y. Lee, and Y. Yoo. 2011. The valuation accuracy of equity value estimates inferred from conventional empirical implications of the abnormal earnings growth model: US evidence. Journal of Business Finance and Accounting 38, 446-471.  
Konstantinidi, T., and P. Pope. 2012. Forecasting risk in earnings. Unpublished paper, Lancaster University and Cass Business School.  
Lee, C., J. Myers, and B. Swaminathan. 1999. What is the intrinsic value of the Dow? Journal of Finance 54, 1693-1741.  
Liu, J., J. Ohlson, and W. Zhang. 2013. A comparison of Chinese and US firms' profitability. Unpublished paper, Cheung Kong Graduate School of Business and New York University.  
Livingstone, J. and G. Salamon. 1970. "Relationship between the accounting and the internal rate of return measures: a synthesis and an analysis." Journal of Accounting Research, 2: 199-216.  
Lücke, W. 1955. Investitionsrechnung auf der grundlage von ausgaben oder kosten? Zeitschrift für Betriebswirtschaftliche Forschung, 310-324.  
Lundholm, R., and T. O'Keefe. 2001. Reconciling value estimates from the discounted cash flow model and the residual income model. Contemporary Accounting Research 18, 311-335.  
Lundholm, R., and T. O'Keefe. 2001. On comparing residual income and discounted cash flow models of equity valuation: A response to Penman. Contemporary Accounting Research 18, 693-696.  
McNichols, M., Rajan, M., and S. Reichelstein. 2013. "Decomposition of the market-to-book ration." Unpublished paper, Stanford University.  
Miller, M., and F. Modigilani. 1961. Dividend policy, growth and the valuation of shares. Journal of Business 34 (October), 411-433.  
Modigliani F., and M. Miller. 1958. The cost of capital, corporation finance and the theory of investment. *American Economic Review* 48, 261-297.  
Nekrasov, A., and M. Ogneva. 2011. Using earnings forecasts to simultaneously estimate firm-specific cost of capital and long-term growth. Review of Accounting Studies 16, 414-457.

Nekrasov, A., and P. Shroff. 2009. Fundamentals-based risk management in valuation. The Accounting Review 84, 1983-2011.  
Ohlson, J. 1995. Earnings, book values, and dividends in equity valuation. Contemporary Accounting Research 12, 661-687.  
Ohlson, J. 2008. Risk, growth, and permanent earnings. Unpublished paper, New York University.  
Ohlson, J., and B. Juettner-Nauroth. 2005. Expected EPS and EPS growth as determinants of value. Review of Accounting Studies 10, 349-365.  
Ohlson, J., and Z Gao. 2006. Earnings, earnings growth and value. Foundations and Trends in Accounting 1, 1-70.  
Ohlson, J., and S. Penman. 2004. Debt vs. Equity: Accounting for Claims Contingent of Firms' Common Stock Performance, with Particular Attention to Employee Compensation Options. Center for Excellence in Accounting and Security Analysis, Columbia Business School, White Paper No. 1.  
Peasnell, K. 1982. Some formal connections between economic values and yields and accounting numbers. Journal of Business Finance and Accounting 9, 361-381.  
Penman, S. 1998. A synthesis of equity valuation techniques and the terminal value calculation for the dividend discount Model. Review of Accounting Studies 2, 303-323.  
Penman, S. 2001. On comparing cash flow and accrual accounting models for use in equity valuation: A response to Lundholm and O'Keefe. Contemporary Accounting Research 18, 681-692.  
Penman, S. 2005. Discussion of 'On Accounting-Based Valuation Formulae' and 'Expected EPS and EPS Growth as Determinants of Value'. Review of Accounting Studies 10, 367-378.  
Penman, S. 2009. Accounting for intangible assets: There is also an income statement. *Abacus* 45, 359-371.  
Penman, S. 2012. Accounting for Value. New York: Columbia University Press.  
Penman, S. 2013. Financial Statement Analysis and Security Valuation,  $5^{\text{th}}$  ed. New York: The McGraw-Hill Companies, Inc.  
Penman, S., and F. Reggiani. 2013a. Returns to buying earnings and book value: accounting for growth and risk. *Review of Accounting Studies* 18, xxx-xxx.  
Penman, S., and F. Reggiani. 2013b. The value trap: Value buys risky growth. Unpublished paper, Columbia University and Bocconi University.  
Penman, S., F. Reggiani, S. Richardson, and I. Tina. 2013. An accounting-based characteristic model for asset pricing. Un published paper, Columbia University, Bocconi University, and London Business School.

Penman, S., and T. Sougiannis. 1997. The dividend displacement property and the substitution of anticipated earnings for dividends in equity valuation. *The Accounting Review* 72, 1-21.  
Penman, S., and T. Sougiannis. 1998. A comparison of dividends, cash Flow, and earnings approaches to equity valuation. Contemporary Accounting Research 15, 343-383  
Penman, S., and X. Zhang. 2013. Book rate of return, risk, and the information conveyed by conservative accounting. Unpublished paper, Columbia university and University of California, Berkeley.  
Preinreich, G. 1936. The fair value and yield of common stock," The Accounting Review 11, 130-140.  
Preinreich, G. 1938. Annual survey of economic theory: The theory of depreciation. *Econometrica* 6, , 219-241.  
Rajan, M., S. Reichelstein, and M. Soliman. 2007. "Conservatism, growth, and return on investment." Review of Accounting Studies, 12: 325-370.  
Rees, B., and A. Valentincic. 2013. Dividend irrelevance and accounting models of value. Journal of Business Finance and Accounting 40, 646-672.  
Rogerson, W. 1997. "Intertemporal cost allocation and managerial investment incentives: a theory explaining the use of economic value added as a performance measure." Journal of Political Economy, 105: 770-795.  
Rogerson, W. 2008. "Intertemporal cost allocation and investment decisions." Journal of Political Economy, 116: 931-950.  
Rubinstein, M. 1976. The valuation of uncertain income streams and the pricing of options. *The Bell Journal of Economics* 7 (Autumn), 407-425.  
Williams, J. 1938. The Theory of Investment Value (Cambridge, Ma.: Harvard University Press).  
Zhang, X. 2000. "Conservative accounting and equity valuation." Journal of Accounting and Economics, 29: 125-149.