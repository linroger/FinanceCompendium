---
aliases:
  - Leases
tags:
key_concepts:
parent_directory: Valuation- Measuring and Managing the Value of Companies Full/chapters
cssclasses: academia
title: Chapter 22 - Leases
linter-yaml-title-alias: Leases
---

# Leases

Starting in 2019, companies are required to recognize nearly all leases, including operating leases, on the balance sheet. For companies that report using IFRS, lease-related interest is recorded as a financial expense, and lease-related liabilities are incorporated within debt. Therefore, no adjustment is required.

For companies that report using U.S. GAAP, there are two types of leases: finance leases and operating leases. The treatment of finance leases is identical to IFRS, so no adjustment to enterprise value is required. In contrast, operating leases require special care. To determine equity value, remove embedded interest from operating expense, include the year-to-year change in "right-to-use" assets in free cash flow, and deduct the operating-lease liability from enterprise value to determine equity value.[18] To value equity consistently, all three actions are required. If you choose not to adjust for embedded interest or include the change of "right-to-use" assets on free cash flow, do not subtract the value of operating leases.

Chapter 22 details the new accounting rules, required adjustments, and valuation of leases.

# Unfunded Retirement Obligations

Unfunded retirement obligations, such as unfunded pensions and post-retirement medical benefits, should be treated as debt equivalents and deducted from enterprise value to determine equity value. Since the future contributions to eliminate unfunded liabilities are tax deductible at the marginal tax rate, multiply unfunded pension liabilities by 1 minus the statutory income tax rate. For details on pension accounting and valuation, see Chapter 23.

# Contingent Liabilities

Certain liabilities are not disclosed in the balance sheet but are separately discussed in the notes to the balance sheet. Examples are possible liabilities from pending litigation and loan guarantees. When possible, estimate each liability's expected after-tax cash flows (if the costs are tax deductible), and discount these at the cost of debt. Unfortunately, an external assessment of the probability of such cash flows materializing is challenging, so the valuation should be interpreted with caution. To provide some boundaries on your final valuation, estimate the value of contingent liabilities for a range of probabilities.

# VALUING HYBRID SECURITIES AND NONCONTROLLING INTERESTS

For stable, profitable companies, the current values of debt and debt equivalents are typically independent of enterprise value. For hybrid securities and noncontrolling interests, this is not the case. Each must be valued in conjunction with estimates of enterprise value. The most common hybrid securities are convertible debt, convertible preferred stock, and employee stock options. We will detail the treatment of all three, as well as noncontrolling interests.

# Convertible Securities

Convertible bonds are corporate bonds that can be exchanged for common equity at a predetermined conversion ratio.[19] Convertible preferred stock has the same basic structure as convertible bonds, except convertible stock often comes with other rights of control, such as board seats. Both have become a major source of financing for publicly traded technology companies.[20] A convertible bond is essentially a package of a straight corporate bond plus a call option on equity (the conversion option). Because the conversion option can have significant value, this form of debt requires treatment different from that of regular corporate debt.

The value of convertibles depends on the enterprise value. In contrast to valuation of straight debt, neither the book value nor the simple DCF value of bond cash flows is a good proxy for calculating the value of convertibles. Depending on the information available, there are four possible methods to apply:

1. Fair value. Companies report the "fair" value of financial instruments, including convertible debt, in the notes to the financial statements. Companies value these investments using quoted market prices or pricing models, and they disclose the methodology used. Use this value if enterprise value has not changed significantly since the last financial report.
2. Market price. Many convertible bonds are actively traded with quoted prices. For U.S. convertible debt, use the TRACE database to determine the market value of debt when the enterprise value has materially changed since the last filing.
3. Black-Scholes value. When the fair value or market value is inappropriate,[21] we recommend using an option-based valuation for convertible debt. Accurate valuation of convertible bonds with option-based models is not straightforward. That said, by following methods outlined by DeSpiegeleer, Van Hulle, and Schoutens, you can make a reasonable approximation applying an adjusted Black-Scholes option-pricing model.[22]
4. Conversion value. The conversion value approach assumes that all convertible bonds are immediately exchanged for equity and ignores the time value of the conversion option. It leads to reasonable results when the conversion option is deep in the money, meaning the bond is more valuable when converted into equity than when held for future coupon and principal payments.

Valuing Convertibles Exhibit 16.4 illustrates all four valuation methods for the mobile-payments company Square. Square has not issued traditional, fixed-payment debt. Instead, the company issued two convertible bonds: a  \$211.7 million convertible bond due in March 2022 and an\$ 862.5 million convertible bond due in May 2023.[23] Because the coupon rate was below the prevailing yield for nonconvertible debt at the time of offering, the bonds are reported on the balance sheet below their principal value, at  \$181.2 million and\$ 718.5 million, respectively.[24]

The first column in Exhibit 16.4 values Square's equity using the fair value of convertible debt reported in the company's 10-K. The second column presents the year-end closing price collected from the TRACE database. Compared with the book value reported on the balance sheet, the company's convertible debt trades at a significant premium. For instance, the convertible debt due in 2023 was valued by Square at  \$901.5 million in December 2018 versus\$ 718.5 million in book value.

The significant premium to book value can be traced to the value of the conversion feature. According to Square's annual report, the bonds maturing in 2022 are convertible at  \$22.95 per share.[25] At this conversion price,\$ 211.7 million in outstanding principal is convertible into 9.23 million shares. With Square's stock trading at \$56.09 in December 2018, the bonds can be converted into the equivalent of \$517.5 million in equity. The bond trades at a market price (\$523.2 million), which is slightly higher than the bond's conversion value (\$517.5 million), given the upside potential and downside protection the bond offers.

EXHIBIT 16.4 Square Convertible Debt, December 2018

<table><tr><td colspan="7">$ million</td></tr><tr><td>Capital structure</td><td>Fair value1</td><td>Market price2</td><td>Black-Scholes value3</td><td>Conversion value</td><td>Carrying value</td><td>Principal outstanding</td></tr><tr><td>Enterprise value</td><td>26,300.0</td><td>26,300.0</td><td>26,300.0</td><td>26,300.0</td><td></td><td></td></tr><tr><td>→ Convertible debt at 0.375\% due 2022</td><td>(515.7)</td><td>(523.2)</td><td>(534.8)</td><td>-</td><td>181.2</td><td>211.7</td></tr><tr><td>→ Convertible debt at 0.5\% due 2023</td><td>(901.5)</td><td>(899.2)</td><td>(917.9)</td><td>-</td><td>718.5</td><td>862.5</td></tr><tr><td>→ Convertible note hedge</td><td>230.9</td><td>230.9</td><td>230.9</td><td>-</td><td></td><td></td></tr><tr><td>Employee options</td><td>(1,543.8)</td><td>(1,543.8)</td><td>(1,543.8)</td><td>(1,543.8)</td><td></td><td></td></tr><tr><td>Equity value</td><td>23,570.0</td><td>23,564.8</td><td>23,534.5</td><td>24,756.2</td><td></td><td></td></tr><tr><td colspan="7">Number of shares, millions</td></tr><tr><td>Number of nondiluted shares</td><td>419.7</td><td>419.7</td><td>419.7</td><td>419.7</td><td></td><td></td></tr><tr><td>→ New shares issued</td><td>-</td><td>-</td><td>-</td><td>20.3</td><td></td><td></td></tr><tr><td>Number of diluted shares</td><td>419.7</td><td>419.7</td><td>419.7</td><td>440.0</td><td></td><td></td></tr><tr><td>Value per share, $</td><td>56.1</td><td>56.1</td><td>56.0</td><td>56.3</td><td></td><td></td></tr></table>

1 Value of convertible bonds reported in 2018 10-K in note 5, "Fair Value of Financial Instruments," under "Fair Value (Level 2)."

Market price reported by the FINRA TRACE database as of December 31, 2018.

3 Value estimated using Black-Scholes option-pricing model and company-disclosed inputs.

24 When a company issues convertible debt at a coupon rate below the yield on similar nonconvertible debt, it will be recorded on the balance sheet at a discount but may not trade at a discount. This is because the conversion feature has value. The value of the conversion feature, however, is not recorded as part of debt, but rather as shareholders' equity. Since the book value of equity is not used in DCF valuation, this can lead to a significant underestimation of the convertible's value. For more on the accounting related to convertible debt, see Accounting Principles Board (APB) 14-1, "Accounting for Convertible Debt Instruments That May Be Settled in Cash upon Conversion (Including Partial Cash Settlement)." Financial Accounting Standards Board, May 9, 2008, www.fasb.org.

25 Reported in Square's 2018 annual report, note 12, "Indebtedness."

If improvements to operations increase enterprise value, it becomes necessary to revalue Square's convertibles using an option-pricing model. To model the value of Square's convertible debt, disaggregate the value of convertible debt into underlying straight debt and the option value to convert. For the bond maturing in 2022, the value of straight debt equals the net present value of a 0.375 percent coupon bond yielding 2.48 percent (the yield on comparable bonds without conversion features), maturing in 3.25 years (the remaining life). Without conversion, this bond is valued at 93.45 percent of  \$211.7 million in outstanding principal, or\$ 197.9 million.

To determine the option to convert's value, you need six inputs: the underlying asset value, the strike price, the volatility of the underlying asset, the risk-free rate, the time to maturity, and the dividend rate on the underlying asset. For the option embedded in Square's 2022 convertible bond, the underlying asset is 9.23 million shares of Square stock, whose current value equals  \$517.5 million. The strike price, which represents what the investor must pay to receive the shares, equals the current value of straight debt, currently valued at\$ 197.9 million. The volatility of Square shares (30.9 percent) is reported in the company's 10-K. The bond's time to maturity is 3.25 years, and the current risk-free rate is 2.48 percent.[26] Square does not pay dividends, so the dividend yield is set at zero.

Plugging the data into a Black-Scholes estimator leads to an option value of  \$336.9 million. Thus, as illustrated in the third data column of Exhibit 16.4, the Black-Scholes value of the convertible debt equals\$ 534.8 million (\$197.9 in straight debt plus \$336.9 in option value). This result is contingent on stability of the Black-Scholes inputs, especially volatility. If volatility is expected to drop as the company matures, the historical estimate of volatility will overestimate the option value. The errant valuation is largest for long-dated options, which is often the case for convertible debt.

An alternative to option pricing is the conversion value approach, shown in the fourth data column of Exhibit 16.4. The method is easier to implement than Black-Scholes but ignores optionality. Under the conversion value approach, convertible bonds are converted immediately into equity. Since Square's bonds are convertible into 20.3 million shares (9.2 million shares from the convertible debt due in 2022 and 11.1 million shares from the convertible debt due in 2023), nondiluted shares are increased from 419.7 million to 440.0 million. This approach zeroes out convertible debt and divides the equity value by diluted shares.

In this case, each approach leads to a similar value because the value of conversion is much higher than the value of traditional debt (known as being in the money). For bonds out of the money, the conversion approach will lead to an underestimation of the bonds' value. Therefore, we recommend using an option valuation model, such as Black-Scholes.

Convertible Bond Hedges When a company issues a convertible bond, the bond is sometimes accompanied by a complex derivative transaction to effectively increase the strike price.[27] For example, Square, Etsy, and Twitter have all issued convertible debt with accompanying hedges. Investors prefer strike prices close to the current share price. Issuers, concerned about dilution from conversion into equity, prefer a higher strike price that lowers the odds of conversion.

In its annual report, Square reports, "The Company entered into convertible note hedge transactions … to effectively increase the overall conversion price from approximately  \$22.95 per share to approximately\$ 31.18 per share." To account for the value of the hedge, we use Black-Scholes to revalue the convertible bond at the higher strike price. The convertible note hedge reported in Exhibit 16.4 equals the difference between the original and synthetic bond price.

Although Square does not report the value of the hedge on the balance sheet or in the notes, the company does disclose that "the convertible note hedge and warrant transactions may affect the value of our Class A common stock." Even with the recent improvements in accounting transparency, a diligent analysis of the notes continues to be critical!

# Employee Stock Options

Many companies offer their employees stock options as part of their compensation. Options give the holder the right, but not the obligation, to buy company stock at a specified price, known as the exercise price. Since employee stock options have long maturities and the company's stock price could eventually rise above the exercise price, options can have great value.

Employee stock options affect a company valuation in two ways. First, the value of options that will be granted in the future needs to be captured in the free-cash-flow projections or in a separate DCF valuation, following the guidelines in Chapter 11. If captured in the free-cash-flow projections, the value of future options grants is included in the value of operations and should not be treated as a nonequity claim. Second, the value of options currently outstanding must be subtracted from enterprise value as a nonequity claim. Note, however, that the value of the options will depend on your estimate of enterprise value. Your option valuation should reflect this.

The following approaches can be used for valuing employee options:

- Company-disclosed fair value. Start by searching the annual report for the company's assessment of fair value. For instance, Square reports the "aggregate intrinsic value" of employee options at 1.544 billion in the note on stockholders' equity.
- Option-pricing model. If the company's enterprise value has changed since the last financial filing, estimate the value using option valuation models such as Black-Scholes or more advanced binomial (lattice) models. Under U.S. GAAP and IFRS, the notes to the balance sheet report the total value of all employee stock options outstanding, as estimated by such option-pricing models. Note that the balance sheet value is a good approximation only if your estimate of share price is close to the one underlying the option values in the annual report. Otherwise, you need to create a new valuation using an option-pricing model.[28] The notes disclose the information required for valuation.
- Exercise value approach. The exercise value approach provides only a lower bound for the value of employee options, the smallest value that would round up to the estimated value. It assumes that all options are exercised immediately and thereby ignores the time value of the options. The resulting valuation error increases as options have longer time to maturity, the company's stock has higher volatility, and the company's share price is closer to the exercise price. Given that a more accurate valuation is already disclosed in the annual report, we do not recommend this method. However, it is still quite common among practitioners.

Exhibit 16.5 provides an example of the three valuation methods. The first data column is based on the fair value reported by the company, which it calls "aggregate intrinsic value." The second and third data columns use the Black-Scholes option-pricing model to value first the outstanding options and second the options that can be currently exercised. The value of outstanding options will be less than that of options that can be exercised, because outstanding options include some options that will be lost if the employee leaves the company.

To estimate the value of employee stock options, you need six inputs: the current stock price, the average strike price, the stock's volatility, the risk-free rate, the time to maturity, and the stock's dividend rate. Square's current share price equals  \$56.09. The other inputs are disclosed in Square's 10-K for both outstanding and exercisable options. For outstanding options, the weighted average strike price equals\$ 9.52, the volatility of Square's shares equals 30.9 percent, and the average time to maturity is reported at 5.45 years. The current risk-free rate over five years is 2.51 percent, and the expected dividend rate is zero. The Black-Scholes estimator prices the average option at  $47.81.[29]$

EXHIBIT 16.5 Square Employee Options, December 2018

<table><tr><td colspan="6">$ million</td></tr><tr><td rowspan="2">Capital structure</td><td rowspan="2">Aggregate intrinsic value1</td><td colspan="2">Using Black-Scholes2</td><td rowspan="2" colspan="2">Exercise value approach</td></tr><tr><td>Value of outstanding options</td><td>Value of exercisable options</td></tr><tr><td>Enterprise value</td><td>26,300.0</td><td>26,300.0</td><td>26,300.0</td><td>26,300.0</td><td></td></tr><tr><td>Convertible debt at 0.375\% due 2022</td><td>(515.7)</td><td>(515.7)</td><td>(515.7)</td><td>(515.7)</td><td></td></tr><tr><td>Convertible debt at 0.5\% due 2023</td><td>(901.5)</td><td>(901.5)</td><td>(901.5)</td><td>(901.5)</td><td></td></tr><tr><td>Convertible note hedge</td><td>230.9</td><td>230.9</td><td>230.9</td><td>230.9</td><td></td></tr><tr><td>Employee options: value</td><td>(1,543.8)</td><td>(1,584.9)</td><td>(1,507.9)</td><td>-</td><td></td></tr><tr><td>Employee options: exercise proceeds</td><td>-</td><td>-</td><td>-</td><td>315.6</td><td></td></tr><tr><td>Equity value</td><td>23,570.0</td><td>23,528.9</td><td>23,605.8</td><td>25,429.4</td><td></td></tr><tr><td colspan="6">Number of shares, millions</td></tr><tr><td>Number of nondiluted shares</td><td>419.7</td><td>419.7</td><td>419.7</td><td>419.7</td><td></td></tr><tr><td>New shares issued</td><td>-</td><td>-</td><td>-</td><td>33.2</td><td></td></tr><tr><td>Number of diluted shares</td><td>419.7</td><td>419.7</td><td>419.7</td><td>452.8</td><td></td></tr><tr><td>Value per share, $</td><td>56.1</td><td>56.0</td><td>56.2</td><td>56.1</td><td></td></tr></table>

1 Value of options reported in 2018 10-K in note 15, "Shareholder's Equity," under "Aggregate Intrinsic Value."

2 Value estimated using Black-Scholes option-pricing model and company-disclosed inputs.

With 33.2 million options outstanding, the aggregate value of options is valued at 1.58 billion. To estimate share price, deduct the aggregate value from enterprise value, and divide by the number of undiluted shares. Since some outstanding options will go unclaimed, repeat the process for just the options that can be exercised. The actual value will fall somewhere between the two.

Under the exercise value approach, employee options are assumed to be exercised immediately. According to Square's 2018 10-K, 33,152,881 shares can be exercised at an average strike price of  \$9.52, for total proceeds of\$ 315.6 million. Exercise of employee options generates cash for the company and increases shares outstanding from 419.7 million to 452.8 million. Dividing equity value by diluted shares leads to a value of 56.1, slightly lower than the value under the Black-Scholes method.

# Noncontrolling Interests by Other Companies

When a company controls a subsidiary but does not fully own it, the subsidiary's financial statements must be fully consolidated in the group accounts. The subsidiary's assets and liabilities will be indistinguishable from the parent company's accounts, but the portion of the subsidiary's equity not owned by the parent company will be separated from other equity accounts as noncontrolling interest.[30] Since the full value of the subsidiary will be incorporated into the value of operations, a valuation adjustment must be made for the portion of the subsidiary not owned by the parent company being valued.

Because noncontrolling interests by other companies are to a certain extent the mirror image of nonconsolidated assets, the recommended valuation approach for noncontrolling interests is similar to that of nonconsolidated assets, described earlier in this chapter. In the case of a minority carve-out (in which the consolidated but not fully owned subsidiary is publicly traded), deduct the proportional market value owned by outsiders from enterprise value to determine equity value. Alternatively, you can perform a separate valuation using a DCF approach, multiples, or a tracking portfolio, depending on the amount of information available. Remember, however, that a noncontrolling interest is a claim on a subsidiary, not the entire company. Thus, any valuation should be directly related to the subsidiary and not to the company as a whole.

# ESTIMATING VALUE PER SHARE

The final step in a valuation is to calculate the value per share. Assuming that you have used an option-based valuation approach for convertible bonds and employee options, divide the total equity value by the number of undiluted shares outstanding. Use the undiluted (rather than diluted) number of shares because the full values of convertible debt and stock options have already been deducted from the enterprise value as nonequity claims. Also, use the most recent number of undiluted shares outstanding. Do not use the weighted average of shares outstanding; it is reported in the financial statements to determine average earnings per share.

The number of shares outstanding is the gross number of shares issued, less the number of shares held in treasury. Most U.S. and European companies report the number of shares issued and those held in treasury under shareholders' equity. However, some companies report treasury shares as an investment asset, which is incorrect from an economic perspective. Treat them instead as a reduction in the number of shares outstanding.

If you used the conversion and exercise value approach to account for employee options and convertible debt and stock options, divide by the diluted number of shares.

With intrinsic value per share in hand, you have completed the mechanics of your valuation. But the job is not done. The next two chapters discuss how to stress-test your valuation using integrated scenarios and trading multiples.
