---
title: Chapter 14 - Free Cash Flow to Equity Discount Models
parent_directory: Investment Valuation/chapters
formatted: 2025-12-21 05:45:00 PM
formatter_model: claude-sonnet-4-5-20250929
cli_tool: claude-code
primary_tags:
   - free cash flow equity
   - fcfe valuation models
   - equity discount models
   - constant growth fcfe
   - two-stage fcfe model
secondary_tags:
   - dividend discount model
   - equity reinvestment rate
   - terminal value calculation
   - stable growth valuation
   - corporate valuation methods
cssclasses: academia
---

# Free Cash Flow to Equity Discount Models

The dividend discount model is based on the premise that the only cash flows received by stockholders are dividends. Even if we use the modified version of the model and treat stock buybacks as dividends, we may misvalue firms that consistently fail to return what they can afford to their stockholders.

This chapter uses a more expansive definition of cash flows to equity as the cash flows left over after meeting all financial obligations, including debt payments, and after covering capital expenditure and working capital needs. It discusses the reasons for differences between dividends and free cash flows to equity (FCFE), and presents the discounted free cash flow to equity model for valuation.

## MEASURING WHAT FIRMS CAN RETURN TO THEIR STOCKHOLDERS

Given what firms are returning to their stockholders in the form of dividends or stock buybacks, how do we decide whether they are returning too much or too little? We propose a simple measure of how much cash is available to be paid out to stockholders after meeting reinvestment needs and compare this amount to the amount actually returned to stockholders.

## Free Cash Flows to Equity

To estimate how much cash a firm can afford to return to its stockholders, we begin with the net income—the accounting measure of the stockholders' earnings during the period—and convert it to a cash flow by subtracting out a firm's reinvestment needs. First, any capital expenditures, defined broadly to include acquisitions, are subtracted from the net income, since they represent cash outflows. Depreciation and amortization, on the other hand, are added back in because they are accounting but not cash expenses. The difference between capital expenditures and depreciation (net capital expenditures) is usually a function of the growth characteristics of the firm. High-growth firms tend to have high net capital expenditures relative to earnings, whereas low-growth firms may have low, and sometimes even negative, net capital expenditures.

Second, increases in working capital drain a firm's cash flows, while decreases in working capital increase the cash flows available to equity investors. Firms that are growing fast, in industries with high working capital requirements (retailing, for instance), typically have large increases in working capital. Since we are interested in the cash flow effects, we consider only changes in noncash working capital in this analysis.

Finally, equity investors also have to consider the effect of changes in the levels of debt on their cash flows. Repaying the principal on existing debt represents a cash outflow, but the debt repayment may be fully or partially financed by the issue of new debt, which is a cash inflow. Again, netting the repayment of old debt against the new debt issues provides a measure of the cash flow effects of changes in debt.

Allowing for the cash flow effects of net capital expenditures, changes in working capital, and net changes in debt on equity investors, we can define the cash flows left over after these changes as the free cash flow to equity (FCFE):

Free cash flow to equity  $=$  Net income - (Capital expenditures - Depreciation)

- (Change in noncash working capital)
+ (New debt issued - Debt repayments)

This is the cash flow available to be paid out as dividends. Deconstructing this equation, the reinvestment by equity investors into the firm can be written as:

Equity reinvestment  $=$  Capital expenditures - Depreciation

+ Change in noncash working capital
- New debt issues + Debt repayments

Equity reinvestment rate  $=$  Equity reinvestment/Net income

This calculation can be simplified if we assume that the net capital expenditures and working capital changes are financed using a fixed mix of debt and equity. If  $\delta$  is the proportion of the net capital expenditures and working capital changes that is raised from debt financing, the effect on cash flows to equity of these items can be represented as follows:

Equity cash flows associated with meeting capital expenditure needs

$$
= - (\text {C a p i t a l} \quad \text {e x p e n d i t u r e s} \quad - \text {D e p r e c i a t i o n}) (1 - \delta)
$$

Equity cash flows associated with meeting working capital needs

$$
= - (\Delta \text {W o r k i n g c a p i t a l}) (1 - \delta)
$$

Accordingly, the cash flow available for equity investors after meeting capital expenditure and working capital needs is:

Free cash flow to equity  $=$  Net income - (Capital expenditures - Depreciation)

$$
\times (1 - \delta) - (\Delta \text {W o r k i n g c a p i t a l}) (1 - \delta)
$$

Note that the net debt payment item is eliminated, because debt repayments are financed with new debt issues to keep the debt ratio fixed. It is appropriate to

## WHAT ABOUT PREFERRED DIVIDENDS?

In both the long and short formulations of free cash flows to equity described in this section, we assume that there are no preferred dividends paid. Since the equity that we value is only common equity, you would need to modify the formulas slightly for the existence of preferred stock and dividends. In particular, you would subtract the preferred dividends to arrive at the free cash flow to equity:

Free cash flow to equity  $=$  Net income - (Capital expenditures

$$
\begin{array}{l} - \text {D e p r e c i a t i o n)} - (\text {C h a n g e i n n o n c a s h W C}) \\ - \text {(P r e f e r e d d i v i d e n d s + N e w p r e f e r e d s t o c k i s s u d e d)} \\ \text {(N e w d e b t i s s u e d - D e b t r e p a r m e n t s)} \\ \end{array}
$$

In the short form, you would obtain the following:

Free cash flow to equity  $=$  Net income - Preferred dividend

$$
\begin{array}{l} - \text {(C a p i t a l} - \text {D e p r e c i a t i o n)} \\ (1 - \delta) - (\Delta \text {W o r k i n g c a p i t a l}) (1 - \delta) \\ \end{array}
$$

The debt ratio  $(\delta)$  would then have to include the expected financing from new preferred stock issues.

assume that a specified proportion of net capital expenditures and working capital needs will be financed with debt if the target or optimal debt ratio of the firm is used to forecast the free cash flow to equity that will be available in future periods. Alternatively, in examining past periods, we can use the firm's average debt ratio over the period to arrive at approximate free cash flows to equity.

## ILLUSTRATION 14.1: Estimating Free Cash Flows to Equity—Disney

In this illustration, we will compute the free cash flows to equity generated by Disney, the U.S. entertainment company, from 2001 to 2010, using the full calculation described in the last section:

<table><tr><td>Year</td><td>Net Income</td><td>Depreciation</td><td>Capital Expenditures</td><td>Change in Noncash WC</td><td>Debt Issued</td><td>Debt Repaid</td><td>FCFE</td></tr><tr><td>2001</td><td>$ 158</td><td>$ 1,754</td><td>$ 2,015</td><td>$ 244</td><td>$ 2,884</td><td>$ 2,807</td><td>—$ 586</td></tr><tr><td>2002</td><td>$ 1,236</td><td>$ 1,042</td><td>$ 3,176</td><td>—$ 59</td><td>$ 4,005</td><td>$ 2,113</td><td>$ 1,053</td></tr><tr><td>2003</td><td>$ 1,267</td><td>$ 1,077</td><td>$ 2,755</td><td>—$ 47</td><td>$ 899</td><td>$ 2,059</td><td>—$ 1,524</td></tr><tr><td>2004</td><td>$ 2,345</td><td>$ 1,210</td><td>$ 1,484</td><td>$ 51</td><td>$ 276</td><td>$ 2,479</td><td>—$ 183</td></tr><tr><td>2005</td><td>$ 2,533</td><td>$ 1,339</td><td>$ 1,691</td><td>$ 270</td><td>$ 422</td><td>$ 1,775</td><td>$ 558</td></tr><tr><td>2006</td><td>$ 3,374</td><td>$ 1,437</td><td>$ 1,300</td><td>—$ 136</td><td>$ 2,891</td><td>$ 1,950</td><td>$ 4,588</td></tr><tr><td>2007</td><td>$ 4,687</td><td>$ 1,491</td><td>$ 597</td><td>$ 45</td><td>$ 4,990</td><td>$ 2,294</td><td>$ 8,232</td></tr><tr><td>2008</td><td>$ 4,427</td><td>$ 1,582</td><td>$ 2,162</td><td>$ 485</td><td>$ 1,006</td><td>$ 477</td><td>$ 3,891</td></tr><tr><td>2009</td><td>$ 3,307</td><td>$ 1,631</td><td>$ 1,940</td><td>—$ 109</td><td>$ 1,750</td><td>$ 1,617</td><td>$ 3,240</td></tr><tr><td>2010</td><td>$ 3,963</td><td>$ 1,713</td><td>$ 4,693</td><td>$ 308</td><td>$ 1,190</td><td>$ 1,371</td><td>$ 494</td></tr><tr><td>Total</td><td>$26,981</td><td>$14,276</td><td>$ 21,813</td><td>$1,052</td><td>$20,313</td><td>$18,942</td><td>19,763</td></tr></table>

To use the shortcut, first estimate the net debt used in aggregate over the entire period as a percentage of reinvestment (net cap ex and change in working capital):

$$
\begin{array}{l} \text {D e b t r a t i o} = \frac {\text {D e b t i s s u e d - D e b t r e p a i d}}{\text {C a p e x - D e p r e c i a t i o n +} \Delta \mathrm {W C}} \\ = \frac {2 0 , 3 1 3 - 1 8 , 9 4 2}{2 1 . 8 1 3 - 1 4 , 2 7 6 + 1 , 0 5 2} \\ = 15.96 \% \\ \end{array}
$$

Applying this net debt ratio to reinvestment yields the shorter version of FCFE:

<table><tr><td>Year</td><td>Net Income</td><td>Net Cap Ex (1 – DR)</td><td>Change in WC (1 – DR)</td><td>FCFE</td></tr><tr><td>2001</td><td>$158</td><td>$219</td><td>$205</td><td>$582</td></tr><tr><td>2002</td><td>$1,236</td><td>$1,793</td><td>–$50</td><td>$508</td></tr><tr><td>2003</td><td>$1,267</td><td>$1,410</td><td>–$39</td><td>$104</td></tr><tr><td>2004</td><td>$2,345</td><td>$230</td><td>$43</td><td>$2,072</td></tr><tr><td>2005</td><td>$2,533</td><td>$296</td><td>$227</td><td>$2,010</td></tr><tr><td>2006</td><td>$3,374</td><td>–$115</td><td>–$114</td><td>$3,603</td></tr><tr><td>2007</td><td>$4,687</td><td>–$751</td><td>$38</td><td>$5,400</td></tr><tr><td>2008</td><td>$4,427</td><td>$487</td><td>$408</td><td>$3,532</td></tr><tr><td>2009</td><td>$3,307</td><td>$260</td><td>–$92</td><td>$3,139</td></tr><tr><td>2010</td><td>$3,963</td><td>$2,504</td><td>$259</td><td>$1,200</td></tr><tr><td>Total</td><td>$26,981</td><td>$6,334</td><td>$884</td><td>$19,763</td></tr></table>

While the aggregate FCFE over the period remains the same, the shortcut version yields smoother FCFE over the period.

## Comparing Dividends to Free Cash Flows to Equity

The conventional measure of dividend policy—the dividend payout ratio—gives us the value of dividends as a proportion of earnings. The modified approach measures the total cash returned to stockholders as a proportion of the free cash flow to equity:

$$
\text {D i v i d e n d p a y o u t r a t i o} = \text {D i v i d e n d s / E a r n i n g s}
$$

$$
\text {C a s h} = \text {(D i v i d e n d s} + \text {E q u i t y r e p u r c h a s e s}) / \text {F C F E}
$$

The ratio of cash to stockholders to FCFE shows how much of the cash available to be paid out to stockholders is actually returned to them in the form of dividends and stock buybacks. If this ratio, over time, is equal or close to 1, the firm is paying out all that it can to its stockholders. If it is significantly less than 1, the firm is paying out less than it can afford to and is using the difference to increase its cash balance or to invest in marketable securities. If it is significantly over 1, the firm is paying out more than it can afford and is either drawing on an existing cash balance or issuing new securities (stocks or bonds).

We can observe the tendency of firms to pay out less to stockholders than they have available in free cash flows to equity by examining cash returned to stockholders paid as a percentage of free cash flow to equity. In 2010, the global median of dividends as a percent of FCFE was about 60 percent, with most companies paying out less in dividends than they had available in FCFE. Figure 14.1 provides a global comparison of dividends to FCFE. While there is a significant segment of companies where dividends exceed FCFE, for the majority of companies the reverse is true.

When a firm is paying out less in dividends than it has available in free cash flows, it is generating surplus cash. For those firms, this cash surplus appears as an increase in the cash balance. Firms that pay dividends that exceed FCFE have to finance these dividend payments either out of existing cash balances or by making new stock issues.

The implications for valuation are simple. If we use the dividend discount model and do not allow for the buildup of cash that occurs when firms pay out less than they can afford, we will underestimate the value of equity in firms. If we use the model to value firms that pay out more dividends than they have available, we will overvalue the firms. The rest of this chapter is designed to correct for this limitation.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/335795b7c5b7a149e952e7acb3678611e3b8c5e9c9d464655f4f0ae1b9fb6e88.jpg) dividends.xls: This spreadsheet allows you to estimate the free cash flow to equity and the cash returned to stockholders for a period of up to 10 years.

FIGURE 14.1 Dividends versus FCFE—Global Comparison

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/41e287d6f310e5253b19370802072875fd0f9de5254a948283ba18b435cd0731.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/4545697810a46a2a63efa7f1e97ab4369ea8ca4a78593a23422bff7135e74769.jpg) divfcfe.xls: This dataset on the Web summarizes dividends, cash returned to stockholders, and free cash flows to equity, by sector, in the United States.

## Why Firms May Pay Out Less than Is Available

Many firms pay out less to stockholders, in the form of dividends and stock buybacks, than they have available in free cash flows to equity. The reasons vary from firm to firm.

Desire for Stability Firms are generally reluctant to change dividends, and dividends are considered "sticky" because the variability in dividends is significantly lower than the variability in earnings or cash flows. The unwillingness to change dividends is accentuated when firms have to reduce dividends, and increases in dividends outnumber cuts in dividends by at least a five-to-one margin in most periods. As a consequence of this reluctance to cut dividends, firms will often refuse to increase dividends even when earnings and FCFE go up, because they are uncertain about their capacity to maintain these higher dividends. This leads to a lag between earnings increases and dividend increases. Similarly, firms frequently keep dividends unchanged in the face of declining earnings and FCFE. Figure 14.2 reports the number of dividend changes (increases, decreases, no change) between 1988 and 2008.

The number of firms increasing dividends outnumbers those decreasing dividends seven to one. The number of firms, however, that do not change dividends outnumbers firms that do about four to one. Dividends are also less variable than either FCFE or earnings, but this reduced volatility is a result of keeping dividends significantly below the FCFE.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/22e931e60d688b4998f4d4341388bd0bb1a300263048c4bc2e9cb95675cbb8b8.jpg)

FIGURE 14.2 Dividend Changes by Year: U.S. Companies

Future Investment Needs A firm might hold back on paying its entire FCFE as dividends if it expects substantial increases in capital expenditure needs in the future. Since issuing stocks is expensive (with flotation costs and issuance fees), it may choose to keep the excess cash to finance these future needs. Thus, to the degree that a firm is unsure about its future financing needs, it will retain some cash to take on unexpected investments or meet unanticipated needs.

Tax Factors If dividends are taxed at a higher tax rate than capital gains, a firm may choose to retain the excess cash and pay out much less in dividends than it has available. This is likely to be accentuated if the stockholders in the firm are in high tax brackets, as is the case with many family-controlled firms. If, however, investors in the firm like dividends or tax laws favor dividends, the firm may pay more out in dividends than it has available in FCFE, often borrowing or issuing new stock to do so.

Signaling Prerogatives Firms often use dividends as signals of future prospects, with increases in dividends being viewed as positive signals and decreases as negative signals. The empirical evidence is consistent with this signaling story, since stock prices generally go up on dividend increases and down on dividend decreases. The use of dividends as signals may lead to differences between dividends and FCFE.

Managerial Self-interest The managers of a firm may gain by retaining cash rather than paying it out as a dividend. The desire for empire building may make increasing the size of the firm an objective on its own. Or management may feel the need to build up a cash cushion to tide over periods when earnings may dip; in such periods, the cash cushion may reduce or obscure the earnings drop and may allow managers to remain in control.

## FCFE VALUATION MODELS

The free cash flow to equity model does not represent a radical departure from the traditional dividend discount model. In fact, one way to describe a free cash flow to equity model is that it represents a model where we discount potential dividends rather than actual dividends. Consequently, the three versions of the FCFE valuation model presented in this section are simple variants on the dividend discount model, with one significant change—free cash flows to equity replace dividends in the models.

## Underlying Principle

When we replace the dividends with FCFE to value equity, we are doing more than substituting one cash flow for another. We are implicitly assuming that the FCFE will be paid out to stockholders. There are two consequences:

1. There will be no future cash buildup in the firm, since the cash that is available after debt payments and reinvestment needs is assumed to be paid out to stockholders each period.
2. The expected growth in FCFE will include growth in income from operating assets and not growth in income from increases in marketable securities. This follows directly from the last point.

How does discounting free cash flows to equity compare with the augmented dividend discount model, where stock buybacks are added back to dividends and discounted? You can consider stock buybacks to be the return of excess cash accumulated largely as a consequence of not paying out their FCFE as dividends. Thus, FCFE represents a smoothed-out measure of what companies can return to their stockholders over time in the form of dividends and stock buybacks.

## Estimating Growth in FCFE

Free cash flows to equity, like dividends, are cash flows to equity investors and you could use the same approach that you used to estimate the fundamental growth rate in dividends per share:

$$
\text {E x p e c t e d g r o w t h r a t e} = \text {R e t e n t i o n r a t i o} \times \text {R e t u r n o n e q u i t y}
$$

The use of the retention ratio in this equation implies that whatever is not paid out as dividends is reinvested back into the firm. There is a strong argument to be made, though, that this is not consistent with the assumption that free cash flows to equity are paid out to stockholders, which underlies FCFE models. It is far more consistent to replace the retention ratio with the equity reinvestment rate, which measures the percent of net income that is invested back into the firm.

$$
\text {E q u i t y} = \frac {\text {(C a p i t a l E x p e d i t u r e s - D e p r e c i a t i o n + C h a n g e i n}}{\text {n o n c a s h w o r k i n g c a p i t a l - N e t d e b t i s s u e s)}}{\text {N e t i n c o m e}}
$$

When discounting FCFE, it is safest to separate the existing cash balance from the operating assets of the firm, to value the equity in the operating assets and then add on the existing cash balance. Consequently, the return on equity can also have to be modified to reflect the fact that the conventional measure of the return includes interest income from cash and marketable securities in the numerator and the book value of equity also includes the value of the cash and marketable securities. In the FCFE model, there is no excess cash left in the firm and the return on equity should measure the return on noncash investments. You could construct a modified version of the return on equity that measures this:

$$
\text {N o n c a s h R O E} = \frac {\text {N e t i n c o m e - A f t e r - t a x i n c o m e f r o m c a s h a n d m a r k e t a b l e s e c u r i t i e s}}{\text {B o o k v a l u e o f e q u i t y - C a s h a n d m a r k e t a b l e s e c u r i t i e s}}
$$

The product of the equity reinvestment rate and the modified ROE will yield the expected growth rate in FCFE:

$$
\text {E x p e c t e d g r o w t h} \mathrm {F C F E} = \text {E q u i t y} \times \text {N o n c a s h R O E}
$$

## Constant Growth FCFE Model

The constant growth FCFE model is designed to value firms that are growing at a stable growth rate and are hence in steady state.

The Model The value of equity, under the constant growth model, is a function of the expected FCFE in the next period, the stable growth rate, and the required rate of return.

$$
\text {V a l u e} = \frac {\mathrm {F C F E} _ {1}}{\mathrm {k} _ {\mathrm {e}} - \mathrm {g} _ {\mathrm {n}}}
$$ where Value = Value of stock today


$\mathrm{FCFE}_1 =$  Expected FCFE next year

$\overline{\mathrm{k_e}} =$  Cost of equity of the firm

$\mathbf{g}_{\mathrm{n}} =$  Growth rate in FCFE for the firm forever

Caveats The model is very similar to the Gordon growth model in its underlying assumptions and works under some of the same constraints. The growth rate used in the model has to be reasonable, relative to the nominal growth rate in the economy in which the firm operates. As a general rule, a stable growth rate cannot exceed the growth rate of the economy in which the firm operates.

The assumption that a firm is in steady state also implies that it possesses other characteristics shared by stable firms. This would mean, for instance, that capital expenditures are not disproportionately large, relative to depreciation, and the firm is of average risk. (If the capital asset pricing model is used, the beta of the equity should be close to 1.) To estimate the reinvestment for a stable growth firm, you can use one of two approaches:

(a) You can use the typical reinvestment rates for firms in the industry to which the firm belongs. A simple way to do this is to use the average capital expenditure to depreciation ratio for the industry (or better still, just stable firms in the industry) to estimate a normalized capital expenditure for the firm. The danger of doing so is that the industry itself may not be steady state and the average will therefore be skewed (high or low).
(b) Alternatively, you can use the relationship between growth and fundamentals to estimate the required reinvestment. The expected growth in net income can be written as:

Expected growth rate in net income  $=$  Equity reinvestment rate  $\times$  Return on equity

This allows us to estimate the equity reinvestment rate:

Equity reinvestment rate  $=$  Expected growth rate/Return on equity

To illustrate, a firm with a stable growth rate of 4 percent and a return on equity of 12 percent would need to reinvest about one-third of its net income back into net capital expenditures and working capital needs. Put differently, the free cash flows to equity should be two-thirds of net income.

Best Suited for Firms This model, like the stable growth dividend discount model, is best suited for firms growing at a rate comparable to or lower than the nominal growth in the economy. It is, however, a better model to use than the dividend discount model for stable firms that pay out dividends that are unsustainably high (because they exceed FCFE by a significant amount) or are significantly lower than the FCFE. Note, though, that if the firm is stable and pays out its FCFE as dividends the value obtained from this model will be the same as the one obtained from the Gordon growth model.


## ILLUSTRATION 14.2: Stable Growth FCFE Model—Volkswagen

Volkswagen is a mature German automobile company. Notwithstanding the cyclical swings in net income that are characteristic of the business, the firm is assumed to be in stable growth, and the following inputs were used to value it in May 2011:

1. The net income, not including the interest income from cash, for the company in 2010 was 5,279 million euros, and we will use this as the base year income. (We did check the level to see if it was an outlier, in either direction. If it had been, we would have used a normalized value.)
2. The expected growth in net income over time is assumed to be $3\%$ and the noncash return on equity that Volkswagen is expected to deliver is $10\%$. The resulting equity reinvestment rate for the stable growth model is $30\%$:

$$

\text{Stable equity reinvestment rate} = \mathrm {g} / \mathrm {ROE} = 3 \% / 10 \% = 30 \%

$$

The firm did report capital expenditures of 11,462 million euros, depreciation of 10,089 million euros, and an increase in noncash working capital of 423 million euros in 2010. The reinvestment rate using those inputs was $20.41\%$,

$$

\text{Reinvestment rate in} 2010 = (11,462 - 10,089 + 423) / 5,279 = 20.41 \%

$$

We could have used this reinvestment rate in the valuation, but with an expected growth rate in perpetuity of $2.04\%$:

$$

\text{Stable growth rate with existing reinvestment rate} = 20.41\% \times 10\% = 2.04\%

$$

3. Volkswagen's cost of equity is estimated using a beta of 1.20, reflecting the average beta across European auto companies, a euro risk-free rate of $3.2\%$, and an equity risk premium of $5\%$:

$$

\text {Cost of equity} = 3.2 \% + 1.2 (5 \%) = 9.2 \%

$$

With the inputs, we can estimate the overall value of equity:

$$

\begin{array}{l} \text {V a l u e o f e q u i t y} = \frac {\text {E x p e c t e d n e t i n c o m e n e x t y r e a y (1 - E q u i t y r e i n v e s t m e n t r a t e)}}{\text {C o s t o f e q u i t y - E x p e c t e d g r o w t h r a t e}} \\ = \frac {5 , 2 7 9 (1 . 0 3) (1 - . 3 0)}{. 0 9 2 -. 0 3} = 6 1, 3 9 2 m i l l o n e u r o s \\ \end{array}

$$

Note that this is the value of the equity in the non-cash operating assets, since we took out the income from cash from our base FCFE. Adding the cash balance of 18,670 million euros yields an overall value of equity of 80,062 million errors, significantly higher than the market capitalization of 53,560 million euros in May 2011.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/204294e98e7275eb1e13e2c12a02cf7ea15be46328684a3568f58174b511b956.jpg)

FCFEst.xls: This spreadsheet allows you to value the equity in a firm in stable growth, with all of the inputs of a stable growth firm.

## LEVERAGE, FCFE, AND EQUITY VALUE

Embedded in the FCFE computation seems to be the makings of a free lunch. Increasing the debt ratio increases free cash flow to equity because more of a firm's reinvestment needs will come from borrowing and less is needed from equity investors. The released cash can be paid out as additional dividends or used for stock buybacks.

If the free cash flow to equity increases as the leverage increases, does it follow that the value of equity will also increase with leverage? Not necessarily. The discount rate used is the cost of equity, which is estimated based on a beta or betas. As leverage increases, the beta will also increase, pushing up the cost of equity. In fact, in the levered beta equation that we introduced in Chapter 8 the levered beta is:

Levered beta  $=$  Unlevered beta[1 + (1 - Tax rate)(Debt/Equity)]

This, in turn, will have a negative effect on equity value. The net effect on value will then depend on which effect—the increase in cash flows or the increase in betas—dominates.

## A TROUBLESHOOTING GUIDE: WHAT IS WRONG WITH THIS VALUATION? (CONSTANT GROWTH FCFE MODEL)

If This Is Your Problem
- If you get a low value from this model, it may be because:

Capital expenditures are too high relative to depreciation.

Working capital as a percent of revenues is too high.

The beta is high for a stable firm.
- If you get too high a value, it is because:

Capital expenditures are lower than depreciation.

Working capital ratio as percent of revenue is negative.

The expected growth rate is too high for a stable firm.

This May Be the Solution

Use a smaller cap ex or use the two-stage model.

Normalize this ratio, using historical averages.

Use a beta closer to 1.

Estimate an appropriate reinvestment rate  $= \mathrm{g} / \mathrm{ROE}$

Set equal to zero.

Use a growth rate less than or equal to GNP growth (risk-free rate).

## Two-Stage FCFE Model

The two-stage FCFE model is designed to value a firm that is expected to grow much faster than a stable firm in the initial period and at a stable rate after that.

The Model The value of any stock is the present value of the FCFE per year for the extraordinary growth period plus the present value of the terminal price at the end of the period.

Value  $=$  PV of FCFE  $^+$  PV of terminal price

$$

= \sum_ {t = 1} ^ {t = n} \frac {\mathrm {F C F E} _ {t}}{\left(1 + k _ {e , h g}\right) ^ {t}} + \frac {P _ {n}}{\left(1 + k _ {e , h g}\right) ^ {n}}

$$ where  $\mathrm{FCFE}_{\mathrm{r}} =$  Free cash flow to equity in year t

$\mathrm{P_n} =$  Price at the end of the extraordinary growth period

${\mathrm{k}}_{\mathrm{e}} =$  Cost of equity in high growth (hg) and stable growth (st) periods

The terminal price is generally calculated using the infinite growth rate model:

$$
\mathrm {P} _ {\mathrm {n}} = \mathrm {F C F E} _ {\mathrm {n + 1}} / \left(\mathrm {k} _ {\mathrm {e}, \mathrm {s t}} - \mathrm {g} _ {\mathrm {n}}\right)
$$ where  $\mathrm{g_n} =$  Growth rate after the terminal year forever


Calculating the Terminal Price The same caveats that apply to the growth rate for the stable growth rate model, described in the previous section, apply here as well. In addition, the assumptions made to derive the free cash flow to equity after the terminal year have to be consistent with this assumption of stability. For instance, while capital spending may be much greater than depreciation in the initial high-growth phase, the difference should narrow as the firm enters its stable growth phase. We can use the two approaches described for the stable growth model—industry average capital expenditure requirements or the fundamental growth equation (equity reinvestment rate = g/ROE)—to make this estimate.

The beta and debt ratio may also need to be adjusted in stable growth to reflect the fact that stable growth firms tend to have average risk (betas closer to 1) and use more debt than high-growth firms.

## ILLUSTRATION 14.3: Capital Expenditure, Depreciation, and Growth Rates

Assume you have a firm that is expected to have earnings growth of  $20\%$  for the next five years and  $5\%$  thereafter. The current earnings per share is  \$2.50. Current capital spending is\$ 2.00, and current depreciation is 1.00. If we assume that capital spending and depreciation grow at the same rate as earnings and there are no working capital requirements or debt:

Earnings in year 5 = 2.50 \times (1.20)^{5} \6.22

Capital spending in year  $5 = 2.00 \times (1.20)^{5}$

Depreciation in year 5 = 1.00 \times (1.20)^{5} \2.49

Free cash flow to equity in year 5 = $6.22 + $2.49 - 4.98
3.73

If we use the perpetual growth rate model, but fail to adjust the imbalance between capital expenditures and depreciation, the free cash flow to equity in the terminal year is:

This free cash flow to equity can then be used to compute the value per share at the end of year 5, but it will understate the true value. There are two ways in which you can adjust for this:

1. Adjust capital expenditures in year 6 to reflect industry average capital expenditure needs: Assume, for instance, that capital expenditures are 150\% of depreciation for the industry in which the firm operates. You could compute the capital expenditures in year 6 as follows (EPS in year 6 = \6.21 \times 1.05 = \$6.53:

$$

\text {D e p r e c i a t i o n} 6 = 2. 4 9 (1. 0 5) = \$ 2. 6 1

$$

Capital expenditures in year 6 = Depreciation in year 6

$$

\begin{array}{l} \times \text{Industry average capital expenditures as \% of depreciation} \\ = \$ 2. 6 1 \times 1. 5 0 = \$ 3. 9 2 \\ \end{array}

$$

$$

F C F E \text {i n} \text {y e a r} 6 = \ 6.53 + \$ 2.61 - \$ 3.92 = \$ 5.23

$$

2. Estimate the equity reinvestment rate in year 6, based on expected growth and the firm's return on equity. For instance, if we assume that this firm's return on equity will be  $15\%$  in stable growth, the equity reinvestment rate would need to be:

$$

Equity \text {reinvestment rate} = \mathrm {g} / \mathrm {ROE} = 5 \% / 15 \% = 33.33 \%

$$

$$

\text {E q u i t y R e n i v e s t m e n t i n y a r y 6} = \text {E q u i t y r e n i v e s t m e n t r a t e} \times \text {E a r n i n g s p e r s h a r e}

$$

$$

= . 3 3 3 3 \times \$ 6. 5 3 = \$ 2. 1 8

$$

$$

F C F E \text {i n} \text {y e a r} 6 = \$ 6. 5 3 - \$ 2. 1 8 = \$ 4. 3 5

$$

Firms Model Works Best For This model makes the same assumptions about growth as the two-stage dividend discount model (i.e., that growth will be high and constant in the initial period and drop abruptly to stable growth after that). It is different because of its emphasis on FCFE rather than dividends. Consequently, it provides much better results than the dividend discount model when valuing firms which either have dividends which are unsustainable (because they are higher than FCFE) or which pay less in dividends than they can afford to (i.e., dividends are less than FCFE).

## ILLUSTRATION 14.4: Two-Stage FCFE Model: Nestlé in 2001

Nestlé has operations all over the world, with  $97\%$  of its revenues coming from markets outside Switzerland, where it is headquartered. The firm, like many large European corporations, has a weak corporate governance system, and stockholders have little power over managers.

# RATIONALE FOR USING THE MODEL

Why two-stage? Nestlé has a long and impressive history of growth, and while we believe that its growth will be moderate, we assume that it will be able to maintain high growth for 10 years.
Why FCFE? Given its weak corporate governance structure and a history of accumulating cash, the dividends paid by Nestlé bear little resemblance to what the firm could have paid out.

# BACKGROUND INFORMATION

<table><tr><td>Current net income = Sfr 5,763 million</td></tr><tr><td>Current capital spending = Sfr 5,058 million</td></tr><tr><td>Current depreciation = Sfr 3,330 million</td></tr><tr><td>Current revenues = Sfr 81,422 million</td></tr><tr><td>Noncash working capital = Sfr 5,818 million</td></tr><tr><td>Change in working capital = Sfr 368 million</td></tr><tr><td>Net debt issues = Sfr 272 million</td></tr></table>

<table><tr><td>Earnings per share = Sfr 148.33</td></tr><tr><td>Capital expenditures/share = Sfr 130.18</td></tr><tr><td>Depreciation/share = Sfr 85.71</td></tr><tr><td>Revenue/share = Sfr 2,095.64</td></tr><tr><td>Working capital/share = Sfr 149.74</td></tr><tr><td>Change in working capital/share = Sfr 9.47</td></tr></table>

# ESTIMATES

We will begin by estimating the cost of equity for Nestlé during the high growth period in Swiss francs. We will use the 10-year Swiss government Sfr bond rate of  $4\%$  as the risk-free rate. To estimate the risk premium, we used the breakdown of Nestlé's revenues by region:

<table><tr><td>Region</td><td>Revenues(in Billions Sfr)</td><td>Weight</td><td>Risk Premium</td></tr><tr><td>North America</td><td>20.21</td><td>24.82\%</td><td>4.00\%</td></tr><tr><td>South America</td><td>4.97</td><td>6.10\%</td><td>12.00\%</td></tr><tr><td>Switzerland</td><td>1.27</td><td>1.56\%</td><td>4.00\%</td></tr><tr><td>Germany/France/United Kingdom</td><td>21.25</td><td>26.10\%</td><td>4.00\%</td></tr><tr><td>Italy/Spain</td><td>7.39</td><td>9.08\%</td><td>5.50\%</td></tr><tr><td>Asia</td><td>6.70</td><td>8.23\%</td><td>9.00\%</td></tr><tr><td>Rest of Western Europe</td><td>15.01</td><td>18.44\%</td><td>4.00\%</td></tr><tr><td>Eastern Europe</td><td>4.62</td><td>5.67\%</td><td>8.00\%</td></tr><tr><td>Total</td><td>81.42</td><td>100.00\%</td><td>5.26\%</td></tr></table>

The risk premiums for each region represent an average of the risk premiums of the countries in the region. Using a bottom-up beta of 0.85 for Nestlé, we estimated a cost of equity of:

$$

\text{Cost of equity} = 4 \% +0.85(5.26\%) = 8.47\%

$$

We will assume that this cost of equity will remain unchanged in perpetuity. To estimate the expected growth rate in free cash flows to equity, we first computed the free cash flows to equity in the current year:

<table><tr><td>FCFE = Net income - (Cap ex - Depreciation) - Change in working capital + Net debt issues = 5,763 - (5,058 - 3,330) - 368 + 272 = Sfr 3,939 million</td></tr></table>

The equity reinvestment rate can be estimated from this value:

$$

Equity \text {reinvestment rate} = 1 - \text {FCFE} / \text {Net income} = 1 - 3,939 / 5,763 = 31.65 \%

$$

The return on equity in 2000 was estimated using the net income from 2000 and the book value of equity from the end of the previous year:

$$

\text{Return on equity} = 5,763 / 25,078 = 22.98 \%

$$

The expected growth rate in FCFE is a product of the equity reinvestment rate and the return on equity:

Expected growth in FCFE = Equity reinvestment rate × Return on equity = .3165 × .2298 = 7.27\%

We will assume that net capital expenditures and working capital will grow at the same rate as earnings for the high growth period and that the firm will raise  $33.92\%$  of its reinvestment needs from debt (which is its current book value debt-to-capital ratio).

In stable growth, we assume a growth rate of  $4\%$ . We also assume that the cost of equity remains unchanged but that the return on equity drops to  $15\%$ . The equity reinvestment rate in stable growth can be estimated as follows:

Equity reinvestment in stable growth  $= \frac{g}{ROE} = \frac{4\%}{15\%} = 26.67\%$

# VALUATION

The first component of value is the present value of the expected FCFE during the high-growth period, (see table) assuming earnings, net capital expenditures, and working capital grow at  $7.27\%$  and  $33.92\%$  of reinvestment needs come from debt (in Sfr):

<table><tr><td>Year</td><td>Earnings per Share</td><td>Net Cap Ex per Share</td><td>Change in Working Capital per Share</td><td>Reinvestment per Share</td><td>Equity Reinvestment per Share</td><td>FCFE per Share</td><td>Present Value</td></tr><tr><td>1</td><td>159.12</td><td>47.71</td><td>10.89</td><td>58.60</td><td>38.72</td><td>120.39</td><td>110.99</td></tr><tr><td>2</td><td>170.69</td><td>51.18</td><td>11.68</td><td>62.86</td><td>41.54</td><td>129.15</td><td>109.76</td></tr><tr><td>3</td><td>183.10</td><td>54.90</td><td>12.53</td><td>67.44</td><td>44.56</td><td>138.54</td><td>108.55</td></tr><tr><td>4</td><td>196.42</td><td>58.90</td><td>13.44</td><td>72.34</td><td>47.80</td><td>148.62</td><td>107.35</td></tr><tr><td>5</td><td>210.71</td><td>63.18</td><td>14.42</td><td>77.60</td><td>51.28</td><td>159.43</td><td>106.17</td></tr><tr><td>6</td><td>226.03</td><td>67.77</td><td>15.47</td><td>83.25</td><td>55.01</td><td>171.02</td><td>105.00</td></tr><tr><td>7</td><td>242.47</td><td>72.70</td><td>16.60</td><td>89.30</td><td>59.01</td><td>183.46</td><td>103.84</td></tr><tr><td>8</td><td>260.11</td><td>77.99</td><td>17.80</td><td>95.80</td><td>63.30</td><td>196.81</td><td>102.69</td></tr><tr><td>9</td><td>279.03</td><td>83.67</td><td>19.10</td><td>102.76</td><td>67.91</td><td>211.12</td><td>101.56</td></tr><tr><td>10</td><td>299.32</td><td>89.75</td><td>20.49</td><td>110.24</td><td>72.85</td><td>226.48</td><td>100.44</td></tr><tr><td colspan="7">Sum of present value of FCFE</td><td>1,056.34</td></tr></table>

Note that the change in working capital each year is computed based on the existing working capital of Sfr 149.74 per share, and that the present value is computed using the cost of equity of  $8.47\%$ .

To estimate the terminal value, we first estimate the free cash flows to equity in year 11:

Expected earnings per share in year  $11 = \mathrm{EPS}_{10}(1 + \mathrm{g}) = 299.32(1.04) = 311.30$

Equity reinvestment in year  $11 = \mathrm{EPS}_{11} \times$  Stable equity reinvestment rate  $= 311.30 \times .2667 = 83.02$

Expected FCFE in year  $11 = \text{EPS}_{11} - \text{Equity reinvestment}_{11} = 311.30 - 83.02 = 228.28$

Terminal value of equity per share  $= \frac{FCFE_{11}}{Cost \, (equity_{11} - g)} = \frac{228.28}{(.0847 - .04)} = 5,105.88$

The value per share can be estimated as the sum of the present value of FCFE during the high growth phase and the present value of the terminal value of equity:

Value per share  $=$  PV of dividend during high growth phase + Terminal price/  ${\left( 1 + {\mathrm{k}}_{\mathrm{e}}\right) }^{\mathrm{n}}$

$= 1,056.34 + 5,105.88 / 1.0847^{10} = 3,320.65$  Sfr

The stock was trading at 3,390 Sfr per share in May 2001 at the time of this valuation, making the stock slightly under valued.

# REINVESTMENT ASSUMPTIONS, TERMINAL VALUE, AND EQUITY VALUE

We have repeatedly emphasized the importance of linking growth assumptions to assumptions about reinvestment, and especially so in stable growth. A very common assumption in many discounted cash flow valuations is that capital expenditures offset depreciation in stable growth. When combined with the assumption of no working capital changes, this translates into zero reinvestment. While this may be a reasonable assumption for a year or two, it is not consistent with the assumption that operating income will grow in perpetuity. How much of a difference can one assumption make? In the Nestlé valuation, we reestimated terminal value of equity per share assuming no reinvestment:

Estimated terminal value of equity per share  $= 311.30 / (.0847 - .04) = 6,962.57$

Keeping all of our other assumptions intact, this results in a value of equity per share of 4,144 Sfr per share—an increase in value of approximately 22 percent.

## E Model—A Three-Stage FCFE Model

The E model is designed to value firms that are expected to go through three stages of growth—an initial phase of high growth rates, a transitional period in which the growth rate declines, and a steady-state period in which growth is stable.

The Model The E model calculates the present value of expected free cash flow to equity over all three stages of growth:

$$

P _ {0} = \sum_ {t = 1} ^ {t = n 1} \frac {F C F E _ {t}}{\left(1 + k _ {e}\right) ^ {t}} + \sum_ {t = n 1 + 1} ^ {t = n 2} \frac {F C F E _ {t}}{\left(1 + k _ {e}\right) ^ {t}} + \frac {P _ {n 2}}{\left(1 + k _ {e}\right) ^ {n 2}}

$$ where  $\mathrm{P_0} =$  Value of the stock today

$\mathrm{FCFE}_{\mathrm{t}} = \mathrm{FCFE}$  in year t

$k_{e} =$  Cost of equity

$\mathrm{P_{n2}} =$  Terminal price at the end of transitional period  $= \mathrm{FCFE}_{\mathrm{n2 + 1}} / (\mathrm{k_e} - \mathrm{g_n})$ n1 = End of initial high growth period

$\mathrm{n2} =$  End of transition period

Caveats in Using Model Since the model assumes that the growth rate goes through three distinct phases—high growth, transitional growth, and stable growth—it is important that assumptions about other variables are consistent with these assumptions about growth.

Capital Spending versus Depreciation It is reasonable to assume that as the firm goes from high growth to stable growth, the relationship between capital spending and depreciation will change. In the high-growth phase, capital spending is likely to be much larger than depreciation. In the transitional phase, the

## A TROUBLESHOOTING GUIDE: WHAT IS WRONG WITH THIS VALUATION? (TWO-STAGE FCFE MODEL)

# If This Is Your Problem
- If you get a extremely low value from the two-stage FCFE, the likely culprits are:

Earnings are depressed due to some reason (economy, etc.).

Capital expenditures are significantly higher than depreciation in stable growth phase.

The beta in the stable period is too high for a stable firm.

Working capital as percent of revenue is too high to sustain.

The use of the two-stage model when the three-stage model is more appropriate.

- If you get an extremely high value:

Earnings are inflated above normal levels.

Capital expenditures offset or lag are lower than depreciation during high growth period.

The growth rate in the stable growth period is too high for stable firm.

# This May Be the Solution

Use normalized earnings.

Reduce the difference for stable growth period. (Compute the appropriate reinvestment rate— you might need a higher ROE.)

Use a beta closer to 1.

Use a working capital ratio closer to industry.

Use a three-stage model.

Use normalized earnings.

Compute the appropriate reinvestment rate  $= \mathrm{g} / \mathrm{ROE}$ .

Use a growth rate closer to GNP growth (risk free rate).

difference is likely to narrow and the difference between capital spending and depreciation will be lower still in stable growth, reflecting the lower expected growth rate. (See Figure 14.3.)

Risk As the growth characteristics of a firm change, so do its risk characteristics. In the context of the CAPM, as the growth rate declines the beta of the firm can be expected to change. The tendency of betas to converge toward one in the long term has been confirmed by empirical observation of portfolios of firms with high betas. Over time, as these firms get larger and more diversified, the average betas of these portfolios move toward 1.

Firms Model Works Best For Since the model allows for three stages of growth and for a gradual decline from high to stable growth, it is the appropriate model to use to value firms with very high growth rates currently. The assumptions about growth are similar to the ones made by the three-stage dividend discount model, but the focus is on FCFE instead of dividends, making it more suited to value firms whose dividends are significantly higher or lower than the FCFE.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/0a59fdb17359daa0d31a0303dcadf028db9ee539736df9e6c3dfd77ce6a19a80.jpg)

FIGURE 14.3 Three-Stage FCFE Model: Reinvestment Needs

## ILLUSTRATION 14.5: Three-Stage FCFE Model: Tsingtao Breweries (China) in 2001

Tsingtao Breweries produces and distributes beer and other alcoholic beverages in China and around the world under the Tsingtao brand name. The firm has 653.15 million shares listed on the Shanghai and Hong Kong exchanges.

# RATIONALE FOR USING THE THREE-STAGE FCFE MODEL

Why three-stage? Tsingtao is a small firm serving a huge and growing market—China, in particular, and the rest of Asia in general. The firm's current return on equity is low, and we anticipate that it will improve over the next five years. As it increases, earnings growth will be pushed up.

Why FCFE? Corporate governance in China tends to be weak and dividends are unlikely to reflect free cash flow to equity. In addition, the firm consistently funds a portion of its reinvestment needs with new debt issues.

# BACKGROUND INFORMATION

In 2000, Tsingtao Breweries earned 72.36 million CY (Chinese yuan) in net income on a book value of equity of 2,588 million CY, giving it a return on equity of  $2.80\%$ . The firm had capital expenditures of 335 million CY and depreciation of 204 million CY during the year, and noncash working capital dropped by 1.2 million CY during the year. The total reinvestment in 2000 was therefore:

Total reinvestment = Capital expenditures - Depreciation + Change in noncash working capital  $= 335 - 204 - 1.2 = 129.8$  million

The working capital changes over the past four years have been volatile, and we normalize the change using noncash working capital as a percent of revenues in 2000:

Normalized change in noncash working capital = (Noncash working capital $_{2000}$ /Revenues $_{2000}$ )

$$
\begin{array}{l} \times \left(\text {R e v e n u e s} _ {2 0 0 0} - \text {R e v e n u e s} _ {1 9 9 9}\right) \\ = (1 8 0 / 2, 2 5 3) \times (2, 2 5 3 - 1, 5 9 8) = 5 2. 3 \text {m i l l i o n C Y} \\ \end{array}
$$

The normalized reinvestment in 2000 can then be estimated as follows:

Normalized reinvestment = Capital expenditures - Depreciation

+ Normalized change in noncash working capital
[ = 335 - 204 + 52.3 = 183.3 \text{ million CY} ]

As with working capital, debt issues have been volatile. We estimate the firm's book debt to capital ratio of  $40.94\%$  at the end of 2000 and use it to estimate the normalized equity reinvestment in 2000:

Equity reinvestment in 2000 = Reinvestment(1 - Debt ratio) = 183.3(1 -.4094) = 108.27 million CY

As a percent of net income,

$$
Equity rate in 2000 = 108.27 / 72.36 = 149.97 \%
$$

# ESTIMATION

To estimate free cash flows to equity for the high-growth period, we make the assumption that the return on equity, which is  $2.80\%$  today, will drift up to  $12\%$  by the fifth year. In addition, we will assume that new investments from now on will earn a return on equity of  $12\%$ . Finally, we will assume that the equity reinvestment rate will remain at its current level (149.97\%) each year for the next five years. The expected growth rate over the next five years can then be estimated as follows:

Expected growth rate—next five years = Equity reinvestment rate × ROE new

$$
\begin{array}{l} + \left[ \left(\mathrm {R O E} _ {\text {n e w}} - \mathrm {R O E} _ {\text {t o d y}}\right) / \mathrm {R O E} _ {\text {t o d y}} \right] ^ {1 / 5} - 1 \\ = 1.4997 \times .12 + \{[(.12 - .028) / .028] ^ {1 / 5} - 1 \} = 44.91 \% \\ \end{array}
$$

After year 5, we will assume that the expected growth rate declines linearly each year from year 6 through 10 to reach a stable growth rate of  $10\%$  in year 10. (Note that the growth rate is in nominal CY; the higher stable growth rate reflects the higher expected inflation in that currency.) As the growth rate declines, the equity reinvestment rate also drops off to a stable period equity reinvestment rate of  $50\%$ , estimated using the  $10\%$  stable growth rate and an assumed return on equity in stable growth of  $20\%$ .

$$
\text{Stable period equity reinvestment rate} = \mathrm {g / ROE} = 10 \% /20 \% = 50 \%
$$

To estimate the cost of equity, we used a risk-free rate of  $10\%$  (in nominal CY), a risk premium of  $6.28\%$  (4\% for mature market risk and  $2.28\%$  as the country risk premium for China), and a beta of 0.75 (reflecting the bottom-up beta for breweries):

$$
\text{Cost of equity} = 10 \% + 0.75(6.28 \%) = 14.71 \%
$$

In stable growth, we assume that the beta will drift up to 0.80 and that the country risk premium will drop to  $0.95\%$ :

$$
\text{Cost of equity} = 10 \% + 0.80(4.95 \%) = 13.96 \%
$$

The cost of equity adjusts in linear increments from  $14.71\%$  in year 5 to  $13.96\%$  in year 10.

# VALUATION

To value Tsingtao, we will begin by projecting the free cash flows to equity during the high growth and transition phases, using an expected growth rate of  $44.91\%$  in net income and an equity reinvestment rate of  $149.97\%$  for the first five years. The next five years represent a transition period, where the growth drops in linear increments from  $44.91\%$  to  $10\%$  and the equity reinvestment rate drops from  $149.97\%$  to  $50\%$ . The resulting free cash flows to equity are shown in the following table:

<table><tr><td rowspan="2">Year</td><td rowspan="2">Expected Growth</td><td colspan="2">Net Income</td><td colspan="2">Equity Reinvestment Rate</td><td>FCFE</td><td>Cost of Equity</td><td>Present Value</td></tr><tr><td>CY</td><td>72.36</td><td>149.97\%</td><td></td><td></td><td></td><td></td></tr><tr><td>Current</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>1</td><td>44.91\%</td><td>CY</td><td>104.85</td><td>149.97\%</td><td>-CY</td><td>52.40</td><td>14.71\%</td><td>-CY 45.68</td></tr><tr><td>2</td><td>44.91\%</td><td>CY</td><td>151.93</td><td>149.97\%</td><td>-CY</td><td>75.92</td><td>14.71\%</td><td>-CY 57.70</td></tr><tr><td>3</td><td>44.91\%</td><td>CY</td><td>220.16</td><td>149.97\%</td><td>-CY</td><td>110.02</td><td>14.71\%</td><td>-CY 72.89</td></tr><tr><td>4</td><td>44.91\%</td><td>CY</td><td>319.03</td><td>149.97\%</td><td>-CY</td><td>159.43</td><td>14.71\%</td><td>-CY 92.08</td></tr><tr><td>5</td><td>44.91\%</td><td>CY</td><td>462.29</td><td>149.97\%</td><td>-CY</td><td>231.02</td><td>14.71\%</td><td>-CY 116.32</td></tr><tr><td>6</td><td>37.93\%</td><td>CY</td><td>637.61</td><td>129.98\%</td><td>-CY</td><td>191.14</td><td>14.56\%</td><td>-CY 84.01</td></tr><tr><td>7</td><td>30.94\%</td><td>CY</td><td>834.92</td><td>109.98\%</td><td>CY</td><td>83.35</td><td>14.41\%</td><td>-CY 32.02)</td></tr><tr><td>8</td><td>23.96\%</td><td>CY</td><td>1,034.98</td><td>89.99\%</td><td>CY</td><td>103.61</td><td>14.26\%</td><td>CY 34.83</td></tr><tr><td>9</td><td>16.98\%</td><td>CY</td><td>1,210.74</td><td>69.99\%</td><td>CY</td><td>363.29</td><td>14.11\%</td><td>CY 107.04</td></tr><tr><td>10</td><td>10.00\%</td><td>CY</td><td>1,331.81</td><td>50.00\%</td><td>CY</td><td>665.91</td><td>13.96\%</td><td>CY 172.16</td></tr></table>

Sum of the present values of FCFE during high growth = -\ 186.65

To estimate the terminal value of equity, we use the net income in the year 11, reduce it by the equity reinvestment needs in that year, and then assume a perpetual growth rate to get to a value.

Expected stable growth rate  $= 10\%$

Equity reinvestment rate in stable growth  $= 50\%$

Cost of equity in stable growth  $= 13.96\%$

Expected FCFE in year 11 = Net income $_{11}$  × (1 - Stable period equity reinvestment rate)

$=$  CY1,331.81(1.10)(1 - .5) = CY732.50 million

Terminal value of equity in Tsingtao Breweries  $=$  FCFE  ${}_{11}$  / (Stable period cost of equity

- Stable growth rate) = 732.5/(.1396 -.10)
= CY18,497 million

To estimate the value of equity today, we sum up the present value of the FCFE over the high growth period and add to it the present value of the terminal value of equity:

Value of equity  $=$  PV of FCFE during the high growth period + PV of terminal value

$= -CY186.65 + CY18,497 / (1.1471^{5}\times 1.1456\times 1.1441\times 1.1426$

$\times 1.1411 \times 1.1396 = \text{CY4,596 million}$

Value of equity per share  $=$  Value of equity/Number of shares  $=$  CY4,596/653.15  $=$  CY7.04 per share

The stock was trading at 10.10 yuan per share, which would make it overvalued based on this valuation.

# NEGATIVE FCFE, EQUITY DILUTION, AND VALUE PER SHARE

Unlike dividends, free cash flows to equity can be negative. This can occur either because net income is negative or because a firm's reinvestment needs are significant; this is the case with Tsingtao in Illustration 14.5. The resulting net capital expenditure and working capital needs are much larger than the net income. In fact, this is likely to occur fairly frequently with high-growth firms.

The FCFE model is flexible enough to deal with this issue. The free cash flows to equity will be negative as the firm reinvests substantial amounts to generate high growth. As the growth declines, the reinvestment needs also drop off and free cash flows to equity turn positive.

Intuitively, though, consider what a negative free cash flow to equity implies. It indicates that the firm does not generate enough equity cash flows from current operations to meet its equity reinvestment needs. Since the free cash flow to equity is after net debt issues, the firm will have to issue new equity in years when the cash flow is negative. This expected dilution in future years will reduce the value of equity per share today. In the FCFE model, the negative free cash flows to equity in the earlier years will reduce the estimated value of equity today. Thus the dilution effect is captured in the present value, and no additional consideration is needed of new stock issues in future years and the effect on value per share today.

## A TROUBLESHOOTING GUIDE: WHAT IS WRONG WITH THIS VALUATION? (THREE-STAGE FCFE MODEL)

If This Is Your Problem

- If you get an extremely low value from the three-stage FCFE, the likely culprits are:

Capital expenditures are significantly higher than depreciation in stable growth phase.

The beta in the stable period is too high for a stable firm.

Working capital as percent of revenue is too high to sustain.

- If you get an extremely high value:

Capital expenditures offset depreciation during highgrowth period.

Capital expenditures are less than depreciation.

Growth period (high growth and transition) is too long.

The growth rate in the stable growth period is too high for stable firm.

This May Be the Solution

Reduce net cap ex in stable growth. Cap ex grows slower than depreciation during transition period.

Use a beta closer to 1.

Use working capital ratio closer to industry average.

Capital expenditures should be set higher.

Calculate reinvestment rate  $= \mathrm{g / ROC}$

Use a shorter growth period.

Use a growth rate lower than or equal to GNP growth (riskfree rate).

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/8460b202cb52271e7e6d38ea168685883cd9c14c974101053c5f1178c129cf7f.jpg)

FCFE3st.xls: This spreadsheet allows you to value a firm with a temporary period of high growth in FCFE, followed by a transition period, followed by stable growth.

## FCFE VALUATION VERSUS DIVIDEND DISCOUNT MODEL VALUATION

The discounted cash flow model that uses FCFE can be viewed as an alternative to the dividend discount model. Since the two approaches sometimes provide different estimates of value, it is worth examining when they provide similar estimates of value, when they provide different estimates of value, and what the difference tells us about the firm.

# When They Are Similar

There are two conditions under which the value from using the FCFE in discounted cash flow valuation will be the same as the value obtained from using the dividend discount model. The first is the obvious one, where the dividends are equal to the FCFE. The second condition is more subtle, where the FCFE is greater than dividends, but the excess cash (FCFE minus dividends) is invested in projects with net present value of zero. (For instance, investing in financial assets that are fairly priced should yield a net present value of zero.)

# When They Are Different

There are several cases where the two models will provide different estimates of value. First, when the FCFE is greater than the dividend and the excess cash either earns below-market interest rates or is invested in negative net present value projects, the value from the FCFE model will be greater than the value from the dividend discount model. There is reason to believe that this is not as unusual as it would seem at first glance. There are numerous case studies of firms that, having accumulated large cash balances, by paying out low dividends relative to FCFE, have chosen to use this cash to finance unwise takeovers (where the price paid is greater than the value received from the takeover). Second, the payment of smaller dividends than can be afforded to be paid out by a firm may lead to a lower debt ratio and a higher cost of capital, causing a loss in value.

In the cases where dividends are greater than FCFE, the firm will have to issue either new stock or new debt to pay these dividends leading to at least three negative consequences for value. One is the issuance cost on these security issues, which can be substantial for equity issues, creates an unnecessary expenditure that decreases value. Second, if the firm borrows the money to pay the dividends, the firm may become levered (relative to the optimal), exposing itself to distress/default and leading to a loss in value. Finally, paying too much in dividends can lead to capital rationing constraints where good projects are rejected, resulting in a loss of value.

There is a third possibility and it reflects different assumptions about reinvestment and growth in the two models. If the same growth rate is used in the dividend discount and FCFE models, the FCFE model will give a higher value than the dividend discount model whenever FCFE is higher than dividends and a lower value when dividends exceed FCFE. In reality, the growth rate in FCFE should be different from the growth rate in dividends, because the free cash flow to equity is assumed to be paid out to stockholders. This will affect the reinvestment rate of the firm. In addition, the return on equity used in the FCFE model should reflect the return on equity on noncash investments, whereas the return on equity used in the dividend discount model should be the overall return on equity. Table 14.1 summarizes the differences in assumptions between the two models.

In general, when firms pay out much less in dividends than they have available in FCFE, the expected growth rate and terminal value will be higher in the dividend discount model, but the year-to-year cash flows will be higher in the FCFE model. The net effect on value will vary from company to company.

# What Does It Mean When They Are Different?

When the value using the FCFE model is different from the value using the dividend discount model, with consistent growth assumptions, there are two questions that need to be addressed: What does the difference between the two models tell us? Which of the two models is the appropriate one to use in evaluating the market price?

TABLE 14.1 Differences between DDM and FCFE Models

<table><tr><td></td><td>Dividend Discount Model</td><td>FCFE Model</td></tr><tr><td>Implicit assumption</td><td>Only dividends are paid.
Remaining portions of earnings are invested back into the firm, some in operating assets and some in cash and marketable securities.</td><td>The FCFE is paid out to stockholders. The remaining earnings are invested only in operating assets.</td></tr><tr><td>Expected growth</td><td>Measures growth in income from both operating and cash assets. In terms of fundamentals, it is the product of the retention ratio and the return on equity.</td><td>Measures growth only in income from operating assets. In terms of fundamentals, it is the product of the equity reinvestment rate and the noncash return on equity.</td></tr><tr><td>Dealing with cash and marketable securities</td><td>The income from cash and marketable securities is built into earnings and ultimately into dividends. Therefore, cash and marketable securities do not need to be added in.</td><td>You have two choices:
1. Build income from cash and marketable securities into projections of income, and estimate the value of equity.
2. Ignore income from cash and marketable securities, and add their value to equity value in model.</td></tr></table>

The less frequent scenario is that the dividend discount model yields a higher value than the FCFE model, largely because dividends exceed FCFE. In this case, it is best to go with the FCFE model because the dividends are not sustainable. The more common occurrence is for the value from the FCFE model to exceed the value from the dividend discount model. The difference between the value from the FCFE model and the value using the dividend discount model can be considered one component of the value of controlling a firm—it measures the value of controlling dividend policy. In a hostile takeover, the bidder can expect to control the firm and change the dividend policy (to reflect FCFE), thus capturing the higher FCFE value.

As for which of the two values is the more appropriate one for use in evaluating the market price, the answer lies in the openness of the market for corporate control. If there is a sizable probability that a firm can be taken over or its management changed, the market price will reflect that likelihood, and the appropriate benchmark to use is the value from the FCFE model. As changes in corporate control become more difficult because of a firm's size and/or legal or market restrictions on takeovers, the value from the dividend discount model will provide the appropriate benchmark for comparison.

## ILLUSTRATION 14.6: Valuing Coca-Cola with a Three-Stage FCFE Model

In Chapter 13, we valued Coca-Cola using a three-stage dividend discount model and estimated a value of  \$67.15 per share, a tad under the market price of\$ 68.22. Implicitly, we were assuming that Coca-Cola's managers are paying out what they can afford to in dividends and that there will be no cash buildup in the company. To test the proposition, we will now value Coca-Cola using a three-stage FCFE model.

We begin by first separating the after-tax interest income of  \$105.32 million earned by Coca-Cola from its net income of\$ 11,809 million and computing a noncash net income:

$$
\text {N e t i n c o m e f r o m n o n c a s h a s s e t s} = \\ 1 1, 8 0 9 - \\ 1 0 5 = \\ 1 1, 7 0 4
$$

To compute the noncash return on equity, we modify the return on equity computation by netting cash ( \$7.021 million) out of book value of equity (\$ 25,346 million):

$$
\text{Noncash ROE in 2010} = \frac{(11,809 - 105)}{25,346 - 7,021} = 63.87\%
$$

As in the three-stage dividend discount model, we assume a much lower noncash return on equity of  $30\%$  going forward (which is higher than the  $25\%$  return on equity we assumed in the dividend discount model, because of our exclusion of cash). Rather than use the retention ratio to estimate reinvestment, we computed an equity reinvestment rate (ERR), using the net capital expenditures and working capital investment made by Coca-Cola in 2010:

$$
\begin{array}{l} \text {E R R} = \frac {\text {(C a p i t a l e x p e d i t u r e s - D e p r e c i a t i o n + C h a n g e i n W C - N e t d e b t i s s u e d)}}{\text {N o n c a s h n e t i n c o m e}} \\ = \frac {2 , 2 1 5 - 1 , 4 4 3 + 3 3 5 - 1 5 0}{1 1 , 8 0 9 - 1 0 5} = 8. 1 9 \\ \end{array}
$$

Since Coca-Cola has done acquisitions over time, its equity reinvestment rate has been volatile, and the average over the past five years has been approximately  $25\%$ .

Assuming a noncash ROE of  $30\%$  and an equity reinvestment rate of  $25\%$  for the next five years yields an expected growth rate in noncash net income of  $7.5\%$ :

Expected growth rate  $=$  ROE  $\times$  Equity reinvestment rate  $= 30\% \times 25\% = 7.5\%$

During this high growth period, we will assume that Coca-Cola will have a beta of 0.90 (the same beta that we used in the dividend discount model). With a risk-free rate of  $3.5\%$  and an equity risk premium of  $5.5\%$ , we arrive at the same cost of equity of  $8.45\%$  that we used in the dividend discount model:

Cost of equity  $= 3.5\% = 0.90(5.5\%) = 8.45\%$ .

Applying the growth to net income and netting out the equity reinvestment rate yields the free cash flows to equity for the next five years, with present values computed using the cost of equity:

<table><tr><td></td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td></tr><tr><td>Expected growth rate</td><td>7.50\%</td><td>7.50\%</td><td>7.50\%</td><td>7.50\%</td><td>7.50\%</td></tr><tr><td>Net income</td><td>$12,581.46</td><td>$13,525.07</td><td>$14,539.45</td><td>$15,629.91</td><td>\$16,802.15</td></tr><tr><td>Equity reinvestment rate</td><td>25.00\%</td><td>25.00\%</td><td>25.00\%</td><td>25.00\%</td><td>25.00\%</td></tr><tr><td>FCFE</td><td>$9,436.10</td><td>$10,143.80</td><td>$10,904.59</td><td>$11,722.43</td><td>\$12,601.62</td></tr><tr><td>Cost of equity</td><td>8.45\%</td><td>8.45\%</td><td>8.45\%</td><td>8.45\%</td><td>8.45\%</td></tr><tr><td>Present value</td><td>$8,700.87</td><td>$8,624.65</td><td>$8,549.10</td><td>$8,474.22</td><td>8,399.98</td></tr></table>

As in the dividend discount model, we will assume that the firm will be in stable growth 10 years forward, with the following assumptions:

The growth rate in perpetuity after year 10 will be  $3\%$  and the noncash ROE is expected to be  $15\%$ . The resulting equity reinvestment rate in stable growth is:

Equity reinvestment rate  $= \frac{\mathrm{g}}{\mathrm{{ROE}}} = 3\% /{15}\%  = {20}\%$

The beta for the company will rise to 1, causing the cost of equity to increase to  $9\%$ .

The transition period from year 6 to 10 is again used to adjust the growth rate, equity reinvestment rate, and cost of equity from high growth values to stable growth levels. The resulting FCFE are shown in the following table, with the present value computed using the cumulated cost of equity (since the cost of equity changes from period to period).

<table><tr><td></td><td>6</td><td>7</td><td>8</td><td>9</td><td>10</td></tr><tr><td>Expected growth rate</td><td>6.60\%</td><td>5.70\%</td><td>4.80\%</td><td>3.90\%</td><td>3.00\%</td></tr><tr><td>Net income</td><td>$17,911.10</td><td>$18,932.03</td><td>$19,840.77</td><td>$20,614.56</td><td>\$21,232.99</td></tr><tr><td>Equity reinvestment rate</td><td>24.00\%</td><td>23.00\%</td><td>22.00\%</td><td>21.00\%</td><td>20.00\%</td></tr><tr><td>FCFE</td><td>$13,612.43</td><td>$14,577.66</td><td>$15,475.80</td><td>$16,285.50</td><td>\$16,986.39</td></tr><tr><td>Cost of equity</td><td>8.56\%</td><td>8.67\%</td><td>8.78\%</td><td>8.89\%</td><td>9.00\%</td></tr><tr><td>Cumulative cost of equity</td><td>1.6286</td><td>1.7698</td><td>1.9252</td><td>2.0964</td><td>2.2850</td></tr><tr><td>Present value</td><td>$8,358.30</td><td>$8,236.84</td><td>$8,038.53</td><td>$7,768.49</td><td>7,433.79</td></tr></table>

At the end of year 10, the terminal value of equity is computed using the stable growth inputs:

Expected FCFE in year 11 Value of equity at end of year  $10 = \frac{\text{Expected FCFE in year 11}}{\text{Stable cost of equity} - \text{Stable growth rate}}$

$$
= \frac {\mathbb {S} 2 1 , 2 3 3 (1 . 0 3) (\cdot 8 0)}{\cdot 0 9 - \cdot 0 3} = \mathbb {S} 2 9 1, 6 0 0
$$

Discounting the terminal value back at the cumulated cost of equity for year 10 and adding to the present value of FCFE over the next 10 years yields an overall value for equity from operating assets. Note, though, that cash has been set apart in this model and needs to be added back at this stage to get to the value of equity for Coca-Cola.

$$
\begin{array}{l} \text {V a l u e o f e q u i t y t o d a y} = \mathrm {P V} \text {o f F C F E} + \mathrm {P V} \text {o f T e r m i n a l v a l u e} + \mathrm {C a s h} \\ = \$ 82,285 + \$ 291,600 / 2. 2 8 5 0 + \$ 8,5 1 7 \\ = \$ 2 1 8, 7 1 5 \\ \end{array}
$$

Dividing by the number of shares outstanding today (2,289.254 million) yields a value per share of 95.54.

Value per share = $218,715/2,289.254 = $95.54

The FCFE model suggests that Coca-Cola is significantly undervalued at  \ {68.22}  a share.

So, why are they different? The FCFE model does use a lower growth rate than the dividend discount model, but it allows for more cash to be returned to stockholders. In effect, we are incorporating the fact that Coca-Cola does not pay out its FCFE as dividends. The net effect, at least in this case, is an increase in value per share. For companies that pay out more dividends than they have available in FCFE, the value per share might drop with the FCFE model. In either case, we would argue that the FCFE estimate of value per share is a more realistic one than the dividend discount model estimate of value per share.

## CONCLUSION

The primary difference between the dividend discount models described in the previous chapter and the free cash flow to equity models described in this one lies in the definition of cash flows; the dividend discount model uses a strict definition of cash flow to equity (i.e., the expected dividends on the stock), while the FCFE model uses an expansive definition of cash flow to equity as the residual cash flow after meeting all financial obligations and investment needs. When dividends are different from the FCFE, the values from the two models will be different. In valuing firms for takeovers or in valuing firms where there is a reasonable chance of changing corporate control, the value from the FCFE model provides the better estimate of value.


