---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Investment Valuation
linter-yaml-title-alias: Investment Valuation
---

# Investment Valuation

## IV - DCF Models (Chapters 13-16)

---

# Dividend Discount Models

In the strictest sense, the only cash flow you receive when you buy shares in a publicly traded firm is a dividend. The simplest model for valuing equity is the dividend discount model (DDM)—the value of a stock is the present value of expected dividends on it. While many analysts have turned away from the dividend discount model and view it as outmoded, much of the intuition that drives discounted cash flow valuation stems from the dividend discount model. In fact, there are companies where the dividend discount model remains a useful tool for estimating value.

This chapter explores the general model as well as specific versions of it tailored for different assumptions about future growth. It also examines issues in using the dividend discount model and the results of studies that have looked at its efficacy.

# THE GENERAL MODEL

When an investor buys stock, he or she generally expects to get two types of cash flows—dividends during the period the stock is held and an expected price at the end of the holding period. Since this expected price is itself determined by future dividends, the value of a stock is the present value of dividends through infinity:

$$
\text {V a l u e p e r s h a r e o f s t o c k} = \sum_ {\mathrm {t} = 1} ^ {\mathrm {t} = \infty} \frac {\mathrm {E} (\mathrm {D P S} _ {\mathrm {t}})}{\left(1 + \mathrm {k} _ {\mathrm {e}}\right) ^ {\mathrm {t}}}
$$ where  $\mathrm{DPS}_{\mathrm{r}} =$  Expected dividends per share


$$

\mathrm {k} _ {\mathrm {e}} = \text {C o s t}

$$

The rationale for the model lies in the present value rule—the value of any asset is the present value of expected future cash flows, discounted at a rate appropriate to the riskiness of the cash flows being discounted.

There are two basic inputs to the model—expected dividends and the cost on equity. To obtain the expected dividends, we make assumptions about expected future growth rates in earnings and payout ratios. The required rate of return on a stock is determined by its riskiness, measured differently in different models—the market beta in the capital asset pricing model (CAPM) and the factor betas in the arbitrage and multifactor models. The model is flexible enough to allow for time-varying discount rates, where the time variation is because of expected changes in interest rates or risk across time.

# VERSIONS OF THE MODEL

Since projections of dollar dividends cannot be made through infinity, several versions of the dividend discount model have been developed based on different assumptions about future growth. We will begin with the simplest—a model designed to value stock in a stable growth firm that pays out what it can afford to in dividends—and then look at how the model can be adapted to value companies in high growth that may be paying little or no dividends.

# The Gordon Growth Model

The Gordon growth model can be used to value a firm that is in "steady state" with dividends growing at a rate that can be sustained forever.

The Model The Gordon growth model relates the value of a stock to its expected dividends in the next time period, the cost of equity, and the expected growth rate in dividends.

Value of stock  $=$  Expected dividends next period/(Cost of equity - Expected growth rate in perpetuity)

What Is a Stable Growth Rate? While the Gordon growth model provides a simple approach to valuing equity, its use is limited to firms that are growing at a stable growth rate. There are two insights worth keeping in mind when estimating a stable growth rate. First, since the growth rate in the firm's dividends is expected to last forever, the firm's other measures of performance (including earnings) can also be expected to grow at the same rate. To see why, consider the consequences in the long term of a firm whose earnings grow 2 percent a year forever, while its dividends grow at 3 percent. Over time, the dividends will exceed earnings. If a firm's earnings grow at a faster rate than dividends in the long term, the payout ratio, in the long term, will converge toward zero, which is also not a steady state. Thus, though the model's requirement is for the expected growth rate in dividends, analysts should be able to substitute in the expected growth rate in earnings and get precisely the same result, if the firm is truly in steady state.

The second issue relates to what growth rate is reasonable as a stable growth rate. As noted in Chapter 12, this growth rate has to be less than or equal to the growth rate of the economy in which the firm operates. No firm, no matter how well run, can be assumed to grow forever at a rate that exceeds the growth rate of the economy (or as a proxy, the risk-free rate). In addition, the caveats made in Chapter 12 about stable growth apply:

The return on equity (ROE) that we assume in perpetuity should reflect not what the company may have made last year nor what it is expected to make next year, but, rather, a longer-term estimate. The estimate of ROE matters because the payout ratio in stable growth has to be consistent:

$$

\text {P a y o u t r a t i o} = \mathrm {g} / \mathrm {R O E}

$$

The cost of equity has to be consistent with the firm being mature; if a beta is being used, it should be close to 1.

Limitations of the Model As most analysts discover quickly, the Gordon growth model is extremely sensitive to assumptions about the growth rate, as long as other inputs to the model (payout ratio, cost of equity) are kept constant. Consider a stock with an expected dividend per share next period of 2.50, a cost of equity of 15 percent, and an expected growth rate of 5 percent forever. The value of this stock is:

$$

\text {V a l u e} = 2. 5 0 / (1. 1 5 - . 0 5) = \$ 2 5

$$

Note, however, the sensitivity of this value to estimates of the growth rate in Figure 13.1. As the growth rate approaches the cost of equity, the value per

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/bdf99f5904d807c5a542ff23cf443a5c6d2ebc7b5b9364ee456189651f8d5c71.jpg)
FIGURE 13.1 Value per Share and Expected Growth Rate

# DOES A STABLE GROWTH RATE HAVE TO BE CONSTANT OVER TIME?

The assumption that the growth rate in dividends has to be constant over time may seem a difficult assumption to meet, especially given the volatility of earnings. If a firm has an average growth rate that is close to a stable growth rate, the model can be used with little real effect on value. Thus a cyclical firm that can be expected to have year-to-year swings in growth rates, but has an average growth rate that is 2 percent, can be valued using the Gordon growth model, without a significant loss of generality. There are two reasons for this result. First, since dividends are smoothed even when earnings are volatile, they are less likely to be affected by year-to-year changes in earnings growth. Second, the mathematical effects on present value of using year-specific growth rates rather than a constant growth rate are small.

share approaches infinity. If the growth rate exceeds the cost of equity, the value per share becomes negative.

There are, of course, two common sense fixes to this problem. The first is to work with the constraint that a stable growth rate cannot exceed the risk-free rate; in the preceding example, this would limit the growth rate to a number well below 15 percent. The second is to recognize that growth is not free; when the growth rate is increased, the payout ratio should be decreased. This creates a trade-off on growth, with the net effect of increasing growth being positive, neutral, or even negative.

Firms Model Works Best For In summary, the Gordon growth model is best suited for firms growing at a rate equal to or lower than the nominal growth in the economy with well-established dividend payout policies that they intend to continue into the future. The dividend payout and cost of equity of the firm have to be consistent with the assumption of stability, since stable firms generally pay substantial dividends and have betas close to 1. In particular, this model will underestimate the value of the stock in firms that consistently pay out less than they can afford to and accumulate cash in the process.

# ILLUSTRATION 13.1: Valuing a Regulated Monopoly: Consolidated Edison in May 2011

Consolidated Edison (Con Ed) is the electric utility that supplies power to residences and businesses in New York City. It is a quasi-monopoly whose prices and profits are regulated by the state of New York.

We will be valuing Con Ed using a stable growth dividend discount model because it fits the criteria for the model:

The firm operates in a region where the population and power usage have leveled off over the past few decades.
The regulatory authorities will restrict price increases to be about the inflation rate.
The firm has had a stable mix of debt and equity funding its operations for decades.
■ Con Ed has a clientele of dividend-loving investors, and attempts to pay out as much as it can in dividends. During the period 2006-2010, the firm returned about  $95\%$  of its free cash flows to equity (FCFE) as dividends.

To value the company using the stable growth dividend discount model, we start with the earnings per share of  $3.47 that the firm reported for 2010 and the dividends per share of$ 2.22 it paid out for the year. Using the average beta of 0.80 for power utilities and an equity risk premium of  $5\%$  for mature markets allows us to estimate a cost of equity of  $7.5\%$  (the risk-free rate was  $3.5\%$ )

$$

\text{Cost of equity} = 3.5 \% + 0.8 (5 \%) = 7.5 \%

$$

Capping the growth rate at the risk-free rate of  $3.5\%$ , we generated a value per share of 57.46.

$$

\begin{array}{l} \text {V a l u e p e r s h a r e} = \frac {\text {E x p e c t e d D i v i d e n d s p e r s h a r e n e x t y \text {y e a r}}}{\text {C o s t o f E q u i t y - E x p e c t e d g r o w t h r a t e}} \\ = \frac {\mathbb {S} 2 . 2 2 (1 . 0 3 5)}{(0 . 7 5 - 0 . 3 5)} = \mathbb {S} 5 7. 4 6 \\ \end{array}

$$

We check to see whether the expected growth rate was consistent with fundamentals for Con Ed.

Retention ratio  $= 1 - ($ 2.22/ $3.47) = 36\%$

Return on equity  $= 9.79\%$

Expected growth rate  $= .36 \times .0979 = .0352$

The fundamental growth rate is very close to our estimate of growth of  $3.5\%$ .

The stock was trading at 53.47 a share in May 2011, making it slightly under valued.

# IMPLIED GROWTH RATE

The value for Con Ed is different from the market price, and this is likely to be the case with almost any company that you value. There are three possible explanations for this deviation. One is that you are right and the market is wrong. While this may be the correct explanation, you should probably make sure that the other two explanations do not hold—that the market is right and you are wrong or that the difference is too small to draw any conclusions.

To examine the magnitude of the difference between the market price and your estimate of value, you can hold the other variables constant and change the growth rate in your valuation until the value converges on the price. Figure 13.2 estimates value as a function of the expected growth rate (assuming a beta of 0.80 and current dividends per share of 2.22). Solving for the expected growth rate that provides the current price, we get:

$$

\$ 53.47 = \$ 2.22(1 + \mathrm {g})

$$

The growth rate in earnings and dividends would have to be 3.21 percent a year to justify the stock price of 53.47. This growth rate is called an implied growth rate. Since we estimate growth from fundamentals, this allows us to estimate an implied return on equity:

Implied return on equity = Implied growth rate/Retention ratio

$$

= .0321 / .36 = 8.93 \%

$$

(continued)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/06c220070fa9b946bb63c1673625396b874e181aabaa614648a99e4e81ca3e60.jpg)
FIGURE 13.2 Con Ed: Value versus Growth Rate

# ILLUSTRATION 13.2: Valuing a Mature Commodity Company Using Stable DDM: Total SA

Total SA is a mature integrated, multinational oil company based in France. With its volatile income, driven largely by swings in oil prices, it may seem to fit poorly into the mold of a stable company, but looking past the commodity price variance, it is a mature company, and its high dividend payout ratio reflects this stability.

To value the company, we first average the net income and dividends from 2007 to 2010:

<table><tr><td>Year</td><td>2007</td><td>2008</td><td>2009</td><td>2010</td><td>Average</td></tr><tr><td>Net income</td><td>13,181 €</td><td>10,590 €</td><td>8,447 €</td><td>10,571 €</td><td>10,697 €</td></tr><tr><td>Dividends</td><td>4,959 €</td><td>5,408 €</td><td>5,354 €</td><td>5,357 €</td><td>5,270 €</td></tr></table>

Using the average income and dividends over the four-year period, we estimate a payout ratio of  $49.28\%$ , a little low for a stable growth company but one that we will use for this valuation.

The cost of equity was estimated using a beta of 0.90 (reflecting the average beta of integrated oil companies, a euro risk-free rate of  $3.25\%$ , and an equity risk premium of  $5.50\%$ ; we augment the mature market premium of  $5\%$  with an additional  $0.50\%$  to capture the risk of the many risky markets where Total gets its oil:

Finally, we assume a stable growth rate of  $2\%$  (set just above the expected inflation rate) and valued the equity:

$$

\text {V a l u e o f e q u i t y} = \frac {5 , 2 7 0 (1 . 0 2)}{(. 0 8 2 -. 2)} = 8 6, 6 9 2 \text {m i l l i o n e u r o s}

$$

Total SA had a market capitalization of 97,286 million euros at the time of the valuation, making it over-valued by about  $12.2\%$ .

It is worth noting that this is a conservative estimate of value. With a growth rate of  $2\%$ , Total SA should be capable of paying more in dividends, and its free cash flows to equity over this four-year period are higher than what it paid out.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/2e43d336c05fd31f810df0a44551b601ff928945de524ccb6bf84d07131de71a.jpg)

DDMst.xls: This spreadsheet allows you to value a stable growth firm, with stable firm characteristics (beta and return on equity) and dividends that roughly match cash flows.

# Two-Stage Dividend Discount Model

The two-stage growth model allows for two stages of growth—an initial phase where the growth rate is not a stable growth rate and a subsequent steady state where the growth rate is stable and is expected to remain so for the long term. While, in most cases, the growth rate during the initial phase is higher than the stable growth rate, the model can be adapted to value companies that are expected to post low or even negative growth rates for a few years and then revert back to stable growth.

The Model The model is based on two stages of growth, an extraordinary growth phase that lasts n years, and a stable growth phase that lasts forever after that:

Extraordinary growth rate:  $\mathrm{g}\%$  each year for n years Stable growth:  ${\mathrm{g}}_{\mathrm{n}}$  forever

Value of the stock  $= \mathrm{PV}$  of dividends during extraordinary phase + PV of terminal price

$$

P _ {0} = \sum_ {t = 1} ^ {t = n} \frac {\mathrm {D P S} _ {t}}{\left(1 + k _ {\mathrm {e} , \mathrm {h g}}\right) ^ {t}} + \frac {P _ {n}}{\left(1 + k _ {\mathrm {e} , \mathrm {h g}}\right) ^ {n}}

$$

$$

\text {w h e r e} \mathrm {P} _ {\mathrm {n}} = \frac {\mathrm {D P S} _ {\mathrm {n} + 1}}{\mathrm {k} _ {\mathrm {e} , \mathrm {s t}} - \mathrm {g} _ {\mathrm {n}}}

$$ where  $\mathrm{DPS}_{\mathrm{r}} =$  Expected dividends per share in year t

$k_{e} =$  Cost of equity (hg: high growth period; st: stable growth period)

$\mathrm{P_n} =$  Price at the end of year n

$\mathrm{g} =$  Extraordinary growth rate for the first n years

$\mathbf{g}_{\mathrm{n}} =$  Growth rate forever after year n

In the case where the extraordinary growth rate (g) and payout ratio are unchanged for the first  $n$  years, this formula can be simplified as follows:

$$
P _ {0} = \frac {\mathrm {D P S} _ {0} \times (1 + \mathrm {g}) \times \left[ 1 - \frac {(1 + \mathrm {g}) ^ {\mathrm {n}}}{\left(1 + \mathrm {k} _ {\mathrm {e} , \mathrm {h g}}\right) ^ {\mathrm {n}}} \right]}{\mathrm {k} _ {\mathrm {e} , \mathrm {h g}} - \mathrm {g}} + \frac {\mathrm {D P S} _ {\mathrm {n} + 1}}{\left(\mathrm {k} _ {\mathrm {e} , \mathrm {s t}} - \mathrm {g} _ {\mathrm {n}}\right) \left(1 + \mathrm {k} _ {\mathrm {e} , \mathrm {h g}}\right) ^ {\mathrm {n}}}
$$ where the inputs are as defined previously.


Calculating the Terminal Price The same constraint that applies to the growth rate for the Gordon growth model (i.e., that the growth rate in the firm is comparable to the nominal growth rate in the economy) applies for the terminal growth rate  $(\mathrm{g_n})$  in this model as well.

In addition, the payout ratio has to be consistent with the estimated growth rate. If the growth rate is expected to drop significantly after the initial growth phase, the payout ratio should be higher in the stable phase than in the growth phase. A stable firm can pay out more of its earnings in dividends than a growing firm. One way of estimating this new payout ratio is to use the fundamental growth model described in Chapter 12:

$$

\begin{array}{l} \text {E x p e c t e d g r o w t h} = \text {R e t e n t i o n r a t i o} \times \text {R e t u r n o n e q u i t y} \\ = (1 - \text {P a y o u t r a t i o}) \times \text {R e t u r n} \\ \end{array}

$$

Algebraic manipulation yields the following stable period payout ratio:

Stable payout ratio  $= 1 -$  Stable growth rate/Stable period return on equity

Thus a firm with a 5 percent growth rate and a return on equity of 15 percent will have a stable period payout ratio of 66.67 percent.

The other characteristics of the firm in the stable period should be consistent with the assumption of stability. For instance, it is reasonable to assume that a high growth firm has a beta of 2.0, but unreasonable to assume that this beta will remain unchanged when the firm becomes stable. In fact, the rule of thumb that we developed in the previous chapter—that stable period betas be between 0.8 and 1.2—is worth repeating here. Similarly, the return on equity, which can be high during the initial growth phase, should come down to levels commensurate with a stable firm in the stable growth phase. What is a reasonable stable period return on equity? The industry average return on equity and the firm's own stable period cost of equity provide useful information to make this judgment.

Limitations of the Model There are three problems with the two-stage dividend discount model; the first two would apply to any two-stage model, and the third is specific to the dividend discount model.

1. The first practical problem is in defining the length of the extraordinary growth period. Since the growth rate is expected to decline to a stable level after this period, the value of an investment will increase as this period is made longer. While we did develop criteria that might be useful in making this judgment in Chapter 12, it is difficult in practice to convert these qualitative considerations into a specific time period.


2. The second problem with this model lies in the assumption that the growth rate is high during the initial period and is transformed overnight to a lower stable rate at the end of the period. While these sudden transformations in growth can happen, it is much more realistic to assume that the shift from high growth to stable growth happens gradually over time.
3. The focus on dividends in this model can lead to skewed estimates of value for firms that are not paying out what they can afford to in dividends. In particular, we will underestimate the value of firms that accumulate cash and pay out too little in dividends.

Firms Model Works Best For Since the two-stage dividend discount model is based on two clearly delineated growth stages—high growth and stable growth—it is best suited for firms that are in high growth and expect to maintain that growth rate for a specific time period, after which the sources of the high growth are expected to disappear. One scenario, for instance, where this may apply is when a company has patent rights to a very profitable product for the next few years, and is expected to enjoy supernormal growth during this period. Once the patent expires, it is expected to settle back into stable growth. Another scenario where it may be reasonable to make this assumption about growth is when a firm is in an industry that is enjoying supernormal growth because there are significant barriers to entry (either legal or as a consequence of infrastructure requirements), which can be expected to keep new entrants out for several years.

The assumption that the growth rate drops precipitously from its level in the initial phase to a stable rate also implies that this model is more appropriate for firms with modest growth rates in the initial phase. For instance, it is more reasonable to assume that a firm growing at 7 percent in the high growth period will see its growth rate drop to 2 percent afterward than it is for a firm growing at 40 percent in the high-growth period.

Finally, the model works best for firms that maintain a policy of paying out residual cash flows (i.e., cash flows left over after debt payments and reinvestment needs have been met) as dividends.

# ILLUSTRATION 13.3: Valuing a Firm with a Two-Stage Dividend Discount Model: Procter & Gamble in May 2011

Procter & Gamble (P&G) is one the leading global consumer product companies, owning some of the most valuable brands in the world, including Gillette razors, Pampers diapers, Tide detergent, Crest toothpaste, and Vicks cough medicine. P&G's long history of paying dividends makes it a good candidate for the dividend discount model, and while it is a large company, its brand names and global expansion provide it with a platform to deliver high growth at least for the next few years. Consequently, we will use the two-stage dividend discount model to value the company.

To set the stage, P&G reported  $12,736 million in earnings for 2010 and paid out 49.74\%$  of these earnings as dividends; on a per share basis, earnings were 3.82 and dividends were 1.92 in 2010. We will use a beta of 0.90, reflecting the beta of large consumer product companies in

2010, a risk-free rate of  $3.50\%$ , and a mature market equity risk premium of  $5\%$  to estimate the cost of equity:

$$

\text{Cost of equity} = 3.50 \% + 0.90 (5 \%) = 8.00 \%

$$

To estimate the expected growth rate, we will start with the firm's current return on equity  $(20.09\%)$  and payout ratio  $(49.74\%)$  and assume numbers very close to these for the next five years:

Expected ROE for next 5 years  $= 20\%$

Expected retention ratio for next 5 years  $= 50\%$

Expected growth rate for next 5 years  $= 20\% \times 50\% = 10\%$

Applying this growth rate to earnings and dividends for the next 5 years and discounting these dividends back at the cost of equity, we arrive at a value of 10.09/share for the high growth period:

<table><tr><td></td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>Sum</td></tr><tr><td>Earnings per share</td><td>$4.20</td><td>$4.62</td><td>$5.08</td><td>$5.59</td><td>$6.15</td><td></td></tr><tr><td>Payout ratio</td><td>50.00\%</td><td>50.00\%</td><td>50.00\%</td><td>50.00\%</td><td>50.00\%</td><td></td></tr><tr><td>Dividends per share</td><td>$2.10</td><td>$2.31</td><td>$2.54</td><td>$2.80</td><td>$3.08</td><td></td></tr><tr><td>Cost of equity</td><td>8.00\%</td><td>8.00\%</td><td>8.00\%</td><td>8.00\%</td><td>8.00\%</td><td></td></tr><tr><td>Present value</td><td>$1.95</td><td>$1.98</td><td>$2.02</td><td>$2.06</td><td>$2.09</td><td>$10.09</td></tr></table>

After year 5, we assume that P&G will be in stable growth, growing  $3\%$  a year (set just below the risk-free rate). We also assume that the return on equity for the firm will drop to a more sustainable  $12\%$  in perpetuity, resulting in an estimated payout ratio of  $75\%$  in perpetuity:

$$

\text{Expected payout ratio in stable growth} = 1 - \mathrm {g} / \mathrm {ROE} = 1 - 3 \% / 12 \% = 75 \%

$$

Assuming that the beta moves up to 1 in stable growth (resulting in a cost of equity of  $8.5\%$ ), we estimate the value per share at the end of year 5:

$$

\begin{array}{l} \text {V a l u e p e r s h a r e a t e n d o f y e a r} 5 = \frac {\mathrm {E P S} _ {5} (1 + \text {G r o w t h r a t e} _ {\text {s t a b l e}}) (\text {P a y o u t r a t i o} _ {\text {s t a b l e}})}{(\text {C o s t o f E q u i t y} _ {\text {s t a b l e}} - \text {G r o w t h r a t e} _ {\text {s t a b l e}})} \\ = \frac {\mathbb {S} 6 . 1 5 (1 . 0 3) (\cdot 7 5)}{. 0 8 5 - . 0 3} = \mathbb {S} 8 6. 4 1 \\ \end{array}

$$

Discounting this price to the present at  $8\%$  (the cost of equity for the high growth period) and adding the present value of expected dividends during the high growth period yields a value per share of 79.00.

Value per share  $=$  PV of dividends in high growth + PV of value at end of high growth

$$

= \$ 10.09 + \frac {\$ 86.41}{1 . 0 8 ^ {5}} = \$ 6 8. 9 0

$$

The stock was trading at 68 in May 2011, making it fairly valued.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/0fc9d21f225e3fd4967a278524148e02871bde8135fe36e139b0bcfeb9684f46.jpg)

DDM2st.xls: This spreadsheet allows you to value a growth firm, with an initial period of high growth and stable growth thereafter, using expected dividends.

# A TROUBLESHOOTING GUIDE: WHAT IS WRONG WITH THIS VALUATION? (TWO-STAGE DDM)

If This Is Your Problem
- If you get an extremely low value from the two-stage DDM, the likely culprits are:

The stable period payout ratio is too low for a stable firm  $(< 40\%)$ .

The beta in the stable period is too high for a stable firm.

The two-stage model is being used when the three-stage model is more appropriate.
- If you get an extremely high value:

The growth rate in the stable growth period is too high for a stable firm.

This May Be the Solution

If using fundamentals, use a higher ROE.

If entering directly, enter a higher payout.

Use a beta closer to 1.

Use a three-stage model.

Use a growth rate less than the risk-free rate, and make sure that your retention ratio is consistently estimated.

Modifying the Model to Include Stock Buybacks In recent years, firms in the United States have increasingly turned to stock buybacks as a way of returning cash to stockholders. Figure 13.3 presents the cumulative amounts paid out by firms in the form of dividends and stock buybacks from 1988 to 2010. The trend toward stock buybacks was very strong, especially in the 1990s. Even the banking crisis of 2008 created only a momentary blip in buybacks in 2009, before they returned in force in 2010.

What are the implications for the dividend discount model? Focusing strictly on dividends paid as the only cash returned to stockholders exposes us to the risk that we might be missing significant cash returned to stockholders in the form of stock buybacks. The simplest way to incorporate stock buybacks into a dividend discount model is to add them onto the dividends and compute an augmented payout ratio:

Augmented dividend payout ratio  $=$  (Dividends + Stock buybacks)/Net income

While this adjustment is straightforward, the resulting ratio for any one year can be skewed by the fact that stock buybacks, unlike dividends, are not smoothed out. In other words, a firm may buy back 3 billion in stock in one year, and not buy back stock for the next three years. Consequently, a much better estimate of the modified payout ratio can be obtained by looking at the average value over a four- or five-year period. In addition, firms may sometimes buy back stock as a way of increasing financial leverage. We could adjust for this by netting out new debt issued from the earlier calculation:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/4eb79bddcddb9b035d26ca3305bb7a6d20748ccbab8492d857ad6d5080969048.jpg)
FIGURE 13.3 Stock Buybacks and Dividends: Aggregate for U.S. Firms—1989 to 2010


$$

\begin{array}{l} \text {A u g m e n t e d d i v i d e n d p a y o u t} = (\text {D i v i d e n d s} + \text {S t o c k b u y b a c k s} \\ \hskip 1 4. 2 2 6 3 7 8 p t - \text {L o n g - t e r m d e b t i s s u e s}) / \text {N e t i n c o m e} \end{array}

$$

Adjusting the payout ratio to include stock buybacks will have ripple effects on estimated growth and the terminal value. In particular, the modified growth rate in earnings per share can be written as:

Augmented growth rate  $= (1 -$  Augmented payout ratio)  $\times$  Return on equity

Even the return on equity can be affected by stock buybacks. Since the book value of equity is reduced by the market value of equity bought back, a firm that buys back stock can reduce its book equity (and increase its return on equity) dramatically. If we use this return on equity as a measure of the marginal return on equity (on new investments), we will overstate the value of a firm. Adding back stock buybacks in recent years to the book equity and reestimating the return on equity can sometimes yield a more reasonable estimate of the return on equity on investments.

# ILLUSTRATION 13.4: Augmented versus Conventional Dividend Payout Ratios: Coca-Cola

To illustrate the effect of using augmented dividends versus actual dividends, we will look at Coca-Cola, a company that has bought back stock between 2006 and 2010. In the following table, we estimate the total cash returned to stockholders each year from 2006 to 2010 and contrast the augmented payout ratio with the conventional payout ratio:

<table><tr><td></td><td>2006</td><td>2007</td><td>2008</td><td>2009</td><td>2010</td><td>Aggregate</td></tr><tr><td>Net Income</td><td>$5080</td><td>$5981</td><td>$5807</td><td>$6824</td><td>$11809</td><td>$35501</td></tr><tr><td>Dividends</td><td>2911</td><td>3149</td><td>3521</td><td>3800</td><td>4068</td><td>17449</td></tr><tr><td>Stock buybacks</td><td>2268</td><td>219</td><td>493</td><td>856</td><td>1295</td><td>5131</td></tr><tr><td>Dividends + buybacks</td><td>5179</td><td>3368</td><td>4014</td><td>4656</td><td>5363</td><td>22580</td></tr><tr><td>Dividend payout ratio</td><td>57.30\%</td><td>52.65\%</td><td>60.63\%</td><td>55.69\%</td><td>34.45\%</td><td>49.15\%</td></tr><tr><td>Augmented dividend payout ratio</td><td>101.95\%</td><td>56.31\%</td><td>69.12\%</td><td>68.23\%</td><td>45.41\%</td><td>63.60\%</td></tr></table>

The augmented dividend payout is higher than the dividend payout ratio in each year, but stock buybacks are volatile. That is why we would look at the augmented dividend payout ratio in the aggregate over the entire period; that number is  $63.60\%$ , higher than the conventional payout ratio of  $49.15\%$ .

How would this play out in a valuation of Coca-Cola? Using the higher augmented payout ratio will result in higher cash flows to stockholders in the high growth phase, which should increase value. This effect, however, will be partly or even fully offset by a lower fundamental growth rate. In the case of Coca-Cola, where we will assume a return on equity of  $25\%$ , the expected growth rate using the higher augmented payout ratio can be computed as follows:

$$

\begin{array}{l} \text {E x p e c t e d g r o w t h r a t e} = \mathrm {R O E} \times (1 - \text {A u g m e n t e d p a y o u t r a t i o}) \\ = 25 \% (1 - .636) = 9.1 \% \\ \end{array}

$$

In contrast, using the conventional payout ratio would have yielded an expected growth rate of more than  $12.5\%$ .

Valuing an Entire Market Using the Dividend Discount Model All our examples of the dividend discount model so far have involved individual companies, but there is no reason why we cannot apply the same model to value a sector or even the entire market. The market price of the stock would be replaced by the cumulative market value of all of the stocks in the sector or market. The expected dividends would be the cumulated dividends of all these stocks, and could be expanded to include stock buybacks by all firms. The expected growth rate would be the growth rate in cumulated earnings of the index. There would be no need for a beta or betas, since you are looking at the entire market (which should have a beta of 1), and you could add the risk premium (or premiums) to the risk-free rate to estimate a cost of equity. You could use a two-stage model, where this growth rate is greater than the growth rate of the economy, but you should be cautious about setting the growth rate too high or the growth period too long, because it will be difficult for cumulated earnings growth of all firms in an economy to run ahead of the growth rate in the economy for extended periods.

Consider a simple example. Assume that you have an index trading at 700, and that the average dividend yield of stocks in the index is 5 percent. Earnings and dividends can be expected to grow at 4 percent a year forever, and the riskless rate is 5.4 percent. If you use a market risk premium of 4 percent, the value of the index can be estimated as follows:

Cost of equity  $=$  Riskless rate + Risk premium  $= 5.4\% + 4\% = 9.4\%$

Expected dividends next year  $=$  (Dividend yield  $\times$  Value of the index)

$$

\begin{array}{l} (1 + \text {E x p e c t e d g r o w t h r a t e}) \\ = (. 0 5 \times 7 0 0) (1. 0 4) = 3 6. 4 \\ \end{array}

$$

Value of the index  $=$  Expected dividends next year

$$

\begin{array}{l} / (\text {C o s t} - \text {E x p e c t e d g r o w t h r a t e}) \\ = 3 6. 4 / (. 0 9 4 -. 0 4) = 6 7 4 \\ \end{array}

$$

At its existing level of 700, the market is slightly overpriced.

# ILLUSTRATION 13.5: Valuing the S&P 500 Using Dividends and Augmented Dividends

On January 1, 2011, the S&P 500 was trading at 1,257.64, and the dividends on the index amounted to 23.12 over the previous year. On the same date, analysts were estimating an expected growth rate of  $6.95\%$  in earnings for the index for the following five years. Assuming that dividends grow at the same rate as earnings, we obtain the following:

<table><tr><td>Year</td><td>2011</td><td>2012</td><td>2013</td><td>2014</td><td>2015</td></tr><tr><td>Expected dividends</td><td>$24.73</td><td>$26.44</td><td>$28.28</td><td>$30.25</td><td>32.35</td></tr></table>

To estimate the cost of equity, we assume a beta of 1 for the index and use the risk-free rate on January 1, 2011, of  $3.29\%$  and an equity risk premium of  $5\%$ :

$$

\text{Cost of equity} = 3.5 \% + 5 \% = 8.5 \%

$$

After year 5, earnings and dividends are expected to grow at  $3.29\%$ , the same nominal rate as the economy (assumed to be equal to the risk-free rate). The value that we obtained for the index follows:

$$

\text {V a l u e o f i n d e x} = \frac {2 4 . 7 3}{1 . 0 8 5} + \frac {2 6 . 4 4}{1 . 0 8 5 ^ {2}} + \frac {2 8 . 2 8}{1 . 0 8 5 ^ {3}} + \frac {3 0 . 2 5}{1 . 0 8 5 ^ {4}} + \frac {3 2 . 3 5}{1 . 0 8 5 ^ {5}} + \frac {3 2 . 3 5 (1 . 0 3 2 9)}{(. 0 8 5 - . 0 3 2 9) 1 . 0 8 5 ^ {5}} = 5 6 0. 1 5

$$

This suggest that the index was massively over valued on January 1, 2011.

Since many of the companies in the index have chosen to return cash in the form of stock buybacks, rather than dividends, a more realistic estimate of value would incorporate these expected buybacks. To do so, we added the buybacks in 2010 to the dividends to arrive at a value of 53.96 for augmented dividends on the index. Applying the same parameters that we used for conventional dividends (growth rate of  $6.95\%$  for the next five years and  $3.29\%$  beyond year 5), we estimate a new value for the index:

$$

\text {V a l u e o f i n d e x} = \frac {5 7 . 7 2}{1 . 0 8 5} + \frac {6 1 . 7 3}{1 . 0 8 5 ^ {2}} + \frac {6 6 . 0 2}{1 . 0 8 5 ^ {3}} + \frac {7 0 . 6 0}{1 . 0 8 5 ^ {4}} + \frac {7 5 . 5 1}{1 . 0 8 5 ^ {5}} + \frac {7 5 . 5 1 (1 . 0 3 2 9)}{(. 0 8 5 - . 0 3 2 9) 1 . 0 8 5 ^ {5}} = 1, 3 0 7. 4 8

$$

With buybacks incorporated, the index looks slightly undervalued (by about  $4\%$ ).

# The Value of Growth

Investors pay a premium when they acquire companies with high growth potential. This premium takes the form of higher price-earnings or price-book value ratios. While no one will contest the proposition that growth is valuable, it is possible to pay too much for growth. In fact, empirical studies that show low price-earnings ratio stocks earning return premiums over high price-earnings ratio stocks in the long term support the notion that investors overpay for growth. This section uses the two-stage dividend discount model to examine the value of growth, and it provides a benchmark that can be used to compare the actual prices paid for growth.

Estimating the Value of Growth The value of the equity in any firm can be written in terms of three components:

$$

\begin{array}{l} P _ {0} = \left\{\frac {\mathrm {D P S} _ {0} \times (1 + \mathrm {g}) \times \left[ 1 - \frac {\left(1 + \mathrm {g}\right) ^ {\mathrm {n}}}{\left(1 + \mathrm {r}\right) ^ {\mathrm {n}}} \right]}{\mathrm {k} _ {\mathrm {e , h g}} - \mathrm {g}} + \frac {\mathrm {D P S} _ {\mathrm {n} + 1}}{\left(\mathrm {k} _ {\mathrm {e , s t}} - \mathrm {g} _ {\mathrm {n}}\right) \left(1 + \mathrm {k} _ {\mathrm {e , h g}}\right) ^ {\mathrm {n}}} - \frac {\mathrm {D P S} _ {1}}{\mathrm {k} _ {\mathrm {e , s t}} - \mathrm {g} _ {\mathrm {n}}} \right\} \\ \begin{array}{c} \hline \text {E x t r a o r d i n a r y g r o w t h} \\ \hline \end{array} \\ + \left(\frac {\mathrm {D P S} _ {1}}{\mathrm {k} _ {\mathrm {e} , \mathrm {s t}} - \mathrm {g} _ {\mathrm {n}}} - \frac {\mathrm {D P S} _ {0}}{\mathrm {k} _ {\mathrm {e} , \mathrm {s t}}}\right) + \frac {\mathrm {D P S} _ {0}}{\mathrm {k} _ {\mathrm {e} , \mathrm {s t}}} \\ \begin{array}{c c} \framebox {\quad} & \framebox {\quad} \\ \text {S t a b l e g r o w t h} & \text {A s s e t s i n p l a c e} \end{array} \\ \end{array}

$$ where  $\mathrm{DPS}_{\mathrm{r}} =$  Expected dividends per share in year t

$$
\mathrm {k _ {e}} = \text {C o s t}
$$

$$
\mathrm {g} _ {\mathrm {n}} = \text {G r o w t h r a t e f o r e v e r a f t e r y}
$$

Value of extraordinary growth = Value of the firm with extraordinary growth in first n years - Value of the firm as a stable growth firm

Value of stable growth = Value of the firm as a stable growth firm - Value of firm with no growth

Assets in place  $=$  Value of firm with no growth

In making these estimates, though, we have to remain consistent. For instance, to value assets in place, you would have to assume that the entire earnings could be paid out in dividends, while the payout ratio used to value stable growth should be a stable period payout ratio.

# ILLUSTRATION 13.6: The Value of Growth: P&G in May 2011

In Illustration 13.3, we valued P&G using a two-stage dividend discount model at  $68.90. We first value the assets in place using current earnings$ 3.82 and assume that all earnings are paid out as dividends. We also use the stable growth cost of equity as the discount rate.

$$
\text {V a l u e o f a s s e t s i n p l a c e} = \text {C u r r e n t E P S / r} = \$ 3. 8 2 / . 0 8 5 = \$ 4 4. 9 4
$$

To estimate the value of stable growth, we assume that the expected growth rate will be  $3\%$  and that the payout ratio is the stable period payout ratio of  $75\%$ :

$$
\begin{array}{l} \text {V a l u e} = \text {C u r r e n t} \quad \mathrm {E P S} \times \text {S t a b l e} \quad \text {p a y o u t} \quad \text {r a t i o} \times (1 + \mathrm {g} _ {\mathrm {n}}) / (\mathrm {r} - \mathrm {g} _ {\mathrm {n}}) \\ - \text {V a l u e o f a s s e t s i n p l a c e} \\ = \$ 3. 8 2 \times . 7 5 \times 1. 0 3 / (. 0 8 5 -. 0 3) - \$ 4 4. 9 4 = \$ 8. 7 1 \\ \end{array}
$$

Value of extraordinary growth = \ 68.90 - \ 44.94 - \ 8.71 = \$ 15.25

Note that 68.90 was our estimate of value per share in Illustration 13.3.

# DETERMINANTS OF THE VALUE OF GROWTH

Growth rate during extraordinary period. The higher the growth rate in the extraordinary period, the higher the estimated value of growth. Conversely, the value of high growth companies can drop precipitously if the expected growth rate is reduced, either because of disappointing earnings news from the firm or as a consequence of external events.

Length of the extraordinary growth period. The longer the extraordinary growth period, the greater the value of growth. At an intuitive level, this is fairly simple to illustrate. The value of 15.25 obtained for extraordinary growth in P&G is predicated on the assumption that high growth will last for five years. If this is revised to last 10 years, the value of extraordinary growth will increase.

Profitability of projects. The excess returns earned by projects determine the value of the expected growth. At the limit, growth becomes worthless if the firm earns a return on equity that is equal to the cost of equity.

# H Model for Valuing Growth

The H model is a two-stage model for growth, but unlike the classic two-stage model, the growth rate in the initial growth phase is not constant but declines linearly over time to reach the stable growth rate in steady state. This model was presented in Fuller and Hsia (1984).

The Model The model is based on the assumption that the earnings growth rate starts at a high initial rate  $(\mathrm{g_a})$  and declines linearly over the extraordinary growth period (which is assumed to last 2H periods) to a stable growth rate  $(\mathrm{g_n})$ . It also assumes that the dividend payout and cost of equity are constant over time, and are not affected by the shifting growth rates. Figure 13.4 graphs the expected growth over time in the H model.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/72fe65a884264bce36f1e8eaf8fb756413e6b88bf37e8c269cbb9546c3606131.jpg)

FIGURE 13.4 Expected Growth in the H Model

The value of expected dividends in the H model can be written as follows:

$$
P _ {0} = \frac {\mathrm {D P S} _ {0} \times \left(1 + g _ {n}\right)}{k _ {e} - g _ {n}} + \frac {\mathrm {D P S} _ {0} \times H \times \left(g _ {a} - g _ {n}\right)}{k _ {e} - g _ {n}}
$$

Stable growth Extraordinary growth where  $\mathrm{P_0} =$  Value of the firm now per share

$\mathrm{DPS}_{\mathrm{t}} = \mathrm{DPS}$  in year t

$k_{e} =$  Cost of equity

$\mathbf{g}_{\mathrm{a}} =$  Growth rate initially

$\mathbf{g}_{\mathrm{n}} =$  Growth rate at end of 2H years, applies forever after that

Limitations This model avoids the problems associated with the growth rate dropping precipitously from the high growth to the stable growth phase, but it does so at a cost. First, the decline in the growth rate is expected to follow the strict structure laid out in the model—it drops in linear increments each year based on the initial growth rate, the stable growth rate, and the length of the extraordinary growth period. While small deviations from this assumption do not affect the value significantly, large deviations can cause problems. Second, the assumption that the payout ratio is constant through both phases of growth exposes the model to an inconsistency—as growth rates decline, the payout ratio usually increases.

Firms Model Works Best For The allowance for a gradual decrease in growth rates over time may make this a useful model for firms that are growing rapidly right now, but where the growth is expected to decline gradually over time as the firms get larger and the differential advantage they have over their competitors declines. The assumption that the payout ratio is constant, however, makes this an inappropriate model to use for any firm that has low or no dividends currently. Thus, the model, by requiring a combination of high growth and high payout, may be quite limited in its applicability.

# ILLUSTRATION 13.7: Valuing with the H Model: Vodafone

Vodafone, a UK-based telecommunications firm, paid dividends per share of 9.8 pence on earnings per share of 16.1 pence in 2010. The firm's earnings per share had grown at  $6\%$  over the prior five years but the growth rate is expected to decline linearly over the next five years to  $3\%$ , while the payout ratio remains unchanged. The beta for the stock is 1, the risk-free rate in British pounds is  $4\%$  and the market risk premium is  $5\%$ .

$$
\text{Cost of equity} = 4.00\% +1.0(5.00\%) = 9.00\%
$$

The stock can be valued using the H model:

$$
\text {V a l u e o f s t a b l e g r o w t h} = \frac {(9 . 8) (1 . 0 3)}{(0 . 0 9 - 0 . 0 3)} = 1 6 8 \text {p e n c e}
$$

$$
\text {V a l u e o f e x t r a o r d i n a r y g r o w t h} = \frac {(9 . 8) (5 / 2) (0 . 0 6 - 0 . 0 3)}{0 . 0 9 - 0 . 0 3} = 1 2 \text {p e n c e}
$$

$$
\text {V a l u e o f s t o c k} = 1 6 8 \text {p e n c e} + 1 2 \text {p e n c e} = 1 8 0 \text {p e n c e}
$$

The stock was trading at 173.3 pence in May 2011, making it slightly under-valued.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/430ac7d671ecb9f3e40b26eff64e3e786cad5ef5fad793a29514d74d8d4772c7.jpg)

DDMH.xls: This spreadsheet allows you to value a firm, with an initial period when the high growth declines to stable growth, using expected dividends.

# Three-Stage Dividend Discount Model

The three-stage dividend discount model combines the features of the two-stage model and the H model. It allows for an initial period of high growth, a transitional period where growth declines, and a final stable growth phase. It is the most general of the models because it does not impose any restrictions on the payout ratio.

The Model This model assumes an initial period of stable high growth, a second period of declining growth, and a third period of stable low growth that lasts forever. Figure 13.5 graphs the expected growth over the three time periods.

The value of the stock is then the present value of expected dividends during the high-growth and the transitional periods, and of the terminal price at the start of the final stable growth phase.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/9d7a0c8ff17050b6b291764fb45bff7eeb4efe008ab37161a30987aaa7485631.jpg)

FIGURE 13.5 Expected Growth in the Three-Stage Dividend Discount Model

$$
\begin{array}{c} \mathrm {P} _ {0} = \sum_ {\mathrm {t} = 1} ^ {\mathrm {t} = \mathrm {n} 1} \frac {\mathrm {E P S} _ {0} \times \left(1 + \mathrm {g} _ {\mathrm {a}}\right) ^ {\mathrm {t}} \times \Pi_ {\mathrm {a}}}{\left(1 + \mathrm {k} _ {\mathrm {e} , \mathrm {h g}}\right) ^ {\mathrm {t}}} + \sum_ {\mathrm {t} = \mathrm {n} 1 + 1} ^ {\mathrm {t} = \mathrm {n} 2} \frac {\mathrm {D P S} _ {\mathrm {t}}}{\left(1 + \mathrm {k} _ {\mathrm {e} , \mathrm {t}}\right) ^ {\mathrm {t}}} + \frac {\mathrm {E P S} _ {\mathrm {n} 2} \left(1 + \mathrm {g} _ {\mathrm {n}}\right) \times \Pi_ {\mathrm {n}}}{\left(\mathrm {k} _ {\mathrm {e} , \mathrm {s t}} - \mathrm {g} _ {\mathrm {n}}\right) \left(1 + \mathrm {r}\right) ^ {\mathrm {n}}} \\ \text {H i g h - g r o w t h p h a s e} \quad \text {T r a n s i t i o n} \quad \text {S t a b l e g r o w t h p h a s e} \end{array}
$$ where  $\mathrm{EPS}_{\mathrm{t}} =$  Earnings per share in year t  $\mathrm{DPS}_{\mathrm{t}} =$  Dividends per share in year t  $\mathbf{g}_{\mathrm{a}} =$  Growth rate in high-growth phase (lasts n1 periods)  $\mathbf{g}_{\mathrm{n}} =$  Growth rate in stable phase  $\Pi_{\mathrm{a}} =$  Payout ratio in high-growth phase  $\Pi_{\mathrm{n}} =$  Payout ratio in stable growth phase  $\mathrm{k_e} =$  Cost of equity in high growth (hg), transition (t), and stable growth (st)


Assumptions This model removes many of the constraints imposed by other versions of the dividend discount model. In return, however, it requires a much larger number of inputs—year-specific payout ratios, growth rates, and betas. For firms where there is substantial noise in the estimation process, the errors in these inputs can overwhelm any benefits that accrue from the additional flexibility in the model.

Firms Model Works Best For This model's flexibility makes it a useful model for any firm that in addition to changing growth over time is expected to change on other dimensions as well—in particular, payout policies and risk. It is best suited for firms that are growing at an extraordinary rate now and are expected to maintain this rate for an initial period, after which the differential advantage of the firm is expected to deplete leading to gradual declines in the growth rate to a stable growth rate. Practically speaking, this may be the more appropriate model to use for a firm whose earnings are growing at very high rates, $^4$  are expected to continue growing at those rates for an initial period, but are expected to start declining gradually toward a stable rate as the firm become larger and loses its competitive advantages.


# ILLUSTRATION 13.8: Valuing Coca-Cola Using a Three-Stage Dividend Discount Model

To value Coca-Cola in May 2011, we used a three-stage dividend discount model, partly because we expect the firm to maintain a growth rate higher than the economy for the next few years and partly because it has a history of paying substantial dividends. It has had a low debt ratio and has shown no indications that it plans to alter its approach to financing.

In 2010, the company reported earnings per share of  $3.56 and paid out$ 1.88 per share in dividends. To estimate the expected growth rate, we assumed that the firm would be able to generate 25\% as a return on equity on future investments, lower than its current return on equity but close to its marginal return on equity over the last few years. We also assumed that the firm would reinvest about 36.40\% of its earnings as dividends; while this is lower than the existing retention ratio of 47.19\%, it is consistent with the retention ratio that we estimated in Illustration 13.4, using the augmented dividends.

Expected ROE for next 5 years  $= 25\%$

Expected Retention Ratio for next 5 years  $= 36.40\%$

Expected growth rate in EPS and DPS for next 5 years  $= 25\% \times 36.4\% = 9.10\%$

During this high growth phase, we will assume that the cost of equity for Coca-Cola will be  $8.45\%$ , estimated based upon a beta of 0.9, the U.S. treasury bond rate in 2011 of  $3.5\%$  and an equity risk premium of  $5.5\%$  (with the premium augmented to reflect Coca-Cola's exposure in emerging markets).

$$

\text{Cost of equity} = 3.5 \% +0.9(5.5\%) = 8.45 \%

$$

The expected dividends over the next 5 years are shown in the following table, with the present values computed using the cost of equity:

<table><tr><td></td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td></tr><tr><td>Expected growth rate</td><td>9.10\%</td><td>9.10\%</td><td>9.10\%</td><td>9.10\%</td><td>9.10\%</td></tr><tr><td>Earnings per share</td><td>$3.88</td><td>$4.24</td><td>$4.62</td><td>$5.04</td><td>$5.50</td></tr><tr><td>Payout ratio</td><td>63.60\%</td><td>63.60\%</td><td>63.60\%</td><td>63.60\%</td><td>63.60\%</td></tr><tr><td>Dividends per share</td><td>$2.47</td><td>$2.69</td><td>$2.94</td><td>$3.21</td><td>$3.50</td></tr><tr><td>Cost of equity</td><td>8.45\%</td><td>8.45\%</td><td>8.45\%</td><td>8.45\%</td><td>8.45\%</td></tr><tr><td>Present value</td><td>$2.28</td><td>$2.29</td><td>$2.31</td><td>$2.32</td><td>2.33</td></tr></table>

After year 5, we allow for a transition period of 5 more years to stable growth after year 10. In the stable growth phase, we assume the following changes:

Expected growth rate of  $3\%$  forever, set just below the risk-free rate.
A return on equity of  $15\%$ ; while this is lower than the current ROE, it is an impressive return for a mature firm and reflects our belief that Coca-Cola's brand name will endure.
A payout ratio of  $80\%$  , based on the return on equity and expected growth rate:

$$

\text{Stable payout ratio} = 1 - \frac{\mathrm{g}}{\mathrm{ROE}} = 1 - \frac{3\%}{15\%} = 80\%

$$

A cost of equity of  $9.00\%$ , based upon the assumption that the beta will increase to 1 in stable growth.

The transition period (years 6-10) allow us to change each of the inputs (payout ratio, cost of equity and growth rate) from high growth levels to stable growth levels in linear increments. The resulting dividends and present values are summarized here:

<table><tr><td></td><td>6</td><td>7</td><td>8</td><td>9</td><td>10</td></tr><tr><td>Expected growth rate</td><td>7.88\%</td><td>6.66\%</td><td>5.44\%</td><td>4.22\%</td><td>3.00\%</td></tr><tr><td>Earnings per share</td><td>$5.94</td><td>$6.33</td><td>$6.68</td><td>$6.96</td><td>$7.17</td></tr><tr><td>Payout ratio</td><td>66.88\%</td><td>70.16\%</td><td>73.44\%</td><td>76.72\%</td><td>80.00\%</td></tr><tr><td>Dividends per share</td><td>$3.97</td><td>$4.44</td><td>$4.90</td><td>$5.34</td><td>$5.73</td></tr><tr><td>Cost of equity</td><td>8.56\%</td><td>8.67\%</td><td>8.78\%</td><td>8.89\%</td><td>9.00\%</td></tr><tr><td>Cumulative cost of equity</td><td>1.6286</td><td>1.7698</td><td>1.9252</td><td>2.0964</td><td>2.2850</td></tr><tr><td>Present Value</td><td>$2.44</td><td>$2.51</td><td>$2.55</td><td>$2.55</td><td>2.51</td></tr></table>

Note that the changing cost of equity requires us to estimate a cumulated cost of equity. Thus, the cumulated cost of equity for year 7 is:

Cumulated cost of equity for year  $7 = (1.0845)^{5}$  (1.0856)  $(1.0867) = 1.7698$

The value per share at the end of year 10 can now be obtained:

$$

\begin{array}{l} \text {V a l u e p e r s h a r e a t e n d o f y e a r 1 0} = \frac {\text {E x p e c t e d D P S i n y e a r 1 1}}{\text {S t a b l e c o s t o f e q u i t y - S t a b l e g r o w t h r a t e}} \\ = \frac {\mathbb {S} 7 . 1 7 (1 . 0 3) (\cdot 8 0)}{(. 0 9 - . 0 3)} = \mathbb {S} 9 8. 4 2 \\ \end{array}

$$

Discounting the terminal value back at the cumulated cost of equity for year 10 and adding to the present value of dividends, we get a value per share of 67.15.

$$

\begin{array}{l} \text {V a l u e p e r s h a r e} = \mathrm {P V} \text {o f d i v i d e n d s} + \mathrm {P V} \text {o f t e r m a l p r i c e} \\ = \$ 20.89 + \$ 98.42 / 2.2850 = \$ 67.15 \\ \end{array}

$$

Coca-Cola was trading at 68.22 in May 2011, making it fairly valued.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/6e6d475bbe69560e5a738f5f143ab917bff7697adb07a15999628e870c5f35a1.jpg)

DDM3st.xls: This spreadsheet allows you to value a firm with a period of high growth followed by a transition period where growth declines to a stable growth rate.

# A TROUBLESHOOTING GUIDE: WHAT IS WRONG WITH THIS MODEL? (THREE-STAGE DDM)

If This Is Your Problem
- If you are getting too low a value from this model:

The stable period payout ratio is too low for a stable firm  $(< 40\%)$ .

The beta in the stable period is too high for a stable firm.
- If you get an extremely high value:

The growth rate in the stable growth period is too high for stable firm.

The period of growth (high + transition) is too high.

This May Be the Solution

If using fundamentals, use a higher ROE.

If entering directly, enter a higher payout.

Use a beta closer to 1.

Use a growth rate less than the riskfree rate.

Use shorter high growth and transition periods.

# ISSUES IN USING THE DIVIDEND DISCOUNT MODEL

The dividend discount model's primary attraction is its simplicity and its intuitive logic. There are many analysts, however, who view its results with suspicion because of limitations that they perceive it to possess. The model, they claim, is not really useful in valuation except for a limited number of stable, high-dividend-paying stocks. This section examines some of the areas where the dividend discount model is perceived to fall short.

# Valuing Non-Dividend-Paying or Low-Dividend-Paying Stocks

The conventional wisdom is that the dividend discount model cannot be used to value a stock that pays low or no dividends. It is wrong. If the dividend payout ratio is adjusted to reflect changes in the expected growth rate, a value can be obtained even for non-dividend-paying firms. Thus, a high-growth firm, paying no dividends currently, can still be valued based on dividends that it is expected to pay out when the growth rate declines. If the payout ratio is not adjusted to reflect changes in the growth rate, however, the dividend discount model will underestimate the value of non-dividend-paying or low-dividend-paying stocks.

# Is the Model Too Conservative in Estimating Value?

A standard critique of the dividend discount model is that it provides too conservative an estimate of value. This criticism is predicated on the notion that the value is determined by more than the present value of expected dividends. For instance, it is argued that the dividend discount model does not reflect the value of "unutilized assets." There is no reason, however, that these unutilized assets cannot be valued separately and added on to the value from the dividend discount model. Some of the assets that are supposedly ignored by the dividend discount model, such as the value of brand names, can be dealt with fairly simply within the context of the model.


A more legitimate criticism of the model is that it does not incorporate other ways of returning cash to stockholders (such as stock buybacks). If you use the augmented version of the dividend discount model, this criticism can also be countered.

# Contrarian Nature of the Model

The dividend discount model is also considered by many to be a contrarian model. As the market rises, fewer and fewer stocks, they argue, will be found to be undervalued using the dividend discount model. This is not necessarily true. If the market increase is due to an improvement in economic fundamentals, such as higher expected growth in the economy and/or lower interest rates, there is no reason, a priori, to believe that the values from the dividend discount model will not increase by an equivalent amount. If the market increase is not due to fundamentals, the dividend discount model values will not follow suit, but that is more a sign of strength than weakness. The model is signaling that the market is overvalued relative to dividends and cash flows, and the cautious investor will pay heed.

# TESTS OF THE DIVIDEND DISCOUNT MODEL

The ultimate test of a model lies in how well it works at identifying undervalued and overvalued stocks. The dividend discount model has been tested and the results indicate that it does, in the long term, provide for excess returns. It is unclear, however, whether this is because the model is good at finding undervalued stocks or because it proxies for well-known empirical irregularities in returns relating to price-earnings ratios and dividend yields.

# Simple Test of the Dividend Discount Model

A simple study of the dividend discount model was conducted by Sorensen and Williamson, where they valued 150 stocks from the S&P 400 in December 1980 using the dividend discount model. They used the difference between the market price at that time and the model value to form five portfolios based on the degree of under or over valuation. They made fairly broad assumptions in using the dividend discount model:

The average of the earnings per share between 1976 and 1980 was used as the current earnings per share.
The cost of equity was estimated using the CAPM.
The extraordinary growth period was assumed to be five years for all stocks, and the I/B/E/S consensus forecast of earnings growth was used as the growth rate for this period.
The stable growth rate, after the extraordinary growth period, was assumed to be 8 percent for all stocks.
The payout ratio was assumed to be 45 percent for all stocks.

The returns on these five portfolios were estimated for the following two years (January 1981 to January 1983) and excess returns were estimated relative to the S&P 500 index using the betas estimated at the first stage and the CAPM. Figure 13.6 illustrates the excess returns earned by the portfolio that was undervalued by the dividend discount model relative to both the market and the overvalued portfolio.

The undervalued portfolio had a positive excess return of 16 percent per annum between 1981 and 1983, while the overvalued portfolio had a negative excess return of 15 percent per annum during the same time period. Other studies that focus only on the dividend discount model come to similar conclusions. In the long term, undervalued and overvalued stocks from the dividend discount model outperform and underperform, respectively, the market index on a risk-adjusted basis.

# Caveats on the Use of the Dividend Discount Model

The dividend discount model provides impressive results in the long term. There are, however, three considerations in generalizing the findings from these studies:

The Dividend Discount Model Does Not Beat the Market Every Year The dividend discount model outperforms the market over five-year time periods, but there have been individual years where the model has significantly underperformed the market. Haugen reports on the results of a fund that used the dividend discount model to analyze 250 large capitalization firms and to classify them into five quintiles from the first quarter of 1979 to the last quarter of 1991. The betas of these quintiles were roughly equal. The valuation was done by six analysts who estimated an extraordinary growth rate for the initial high-growth phase, the length of the high-growth phase, and a transitional phase for each of the firms. The returns on the five portfolios, as well as the returns on all 250 stocks and the S&P 500 from 1979 to 1991, are reported in Table 13.1. The undervalued portfolio earned significantly higher returns than the overvalued portfolio and the S&P 500 for the 1979-1991 period, but it underperformed the market in 6 of the 13 years and the overvalued portfolio in 4 of the 13 years.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/f638ba28ab3344436ddae78cda8240a6eb5e3d34e111ff67bd8764f149560c5e.jpg)
FIGURE 13.6 Performance of the Dividend Discount Model, 1981-1983


Is the Model Just Proxying for Low PE Ratios and Dividend Yields? The dividend discount model weights expected earnings and dividends in near periods more than earnings and dividends in far periods, and is biased toward finding low price-earnings ratio stocks with high dividend yields to be undervalued and high price-earnings ratio stocks with low or no dividend yields to be overvalued. As noted in Chapter 6, studies of market efficiency indicate that low-PE-ratio stocks have outperformed (in terms of excess returns) high-PE-ratio stocks over extended time periods. Similar conclusions have been drawn about high-dividend-yield stocks relative to low-dividend-yield stocks. Thus, the valuation findings of the model are consistent with empirical irregularities observed in the market.

It is unclear how much the model adds in value to investment strategies that use PE ratios or dividend yields to screen stocks. Jacobs and Levy (1988b) indicate that the marginal gain is relatively small.

<table><tr><td>Attribute</td><td>Average Excess Return per Quarter: 1982-1987</td></tr><tr><td>Dividend discount model</td><td>0.06\% per quarter</td></tr><tr><td>Low P/E ratio</td><td>0.92\% per quarter</td></tr><tr><td>Book/price ratio</td><td>0.01\% per quarter</td></tr><tr><td>Cash flow/price</td><td>0.18\% per quarter</td></tr><tr><td>Sales/price ratio</td><td>0.96\% per quarter</td></tr><tr><td>Dividend yield</td><td>-0.51\% per quarter</td></tr></table>

TABLE 13.1 Returns on Quintiles: Dividend Discount Model

<table><tr><td rowspan="2"></td><td colspan="7">Quintile</td></tr><tr><td>Undervalued</td><td>2</td><td>3</td><td>4</td><td>Over- valued</td><td>250 Stocks</td><td>S&amp;P 500</td></tr><tr><td>1979</td><td>35.07\%</td><td>25.92\%</td><td>18.49\%</td><td>17.55\%</td><td>20.06\%</td><td>23.21\%</td><td>18.57\%</td></tr><tr><td>1980</td><td>41.21\%</td><td>29.19\%</td><td>27.41\%</td><td>38.43\%</td><td>26.44\%</td><td>31.86\%</td><td>32.55\%</td></tr><tr><td>1981</td><td>12.12\%</td><td>10.89\%</td><td>1.25\%</td><td>-5.59\%</td><td>-8.51\%</td><td>28.41\%</td><td>24.55\%</td></tr><tr><td>1982</td><td>19.12\%</td><td>12.81\%</td><td>26.72\%</td><td>28.41\%</td><td>35.54\%</td><td>24.53\%</td><td>21.61\%</td></tr><tr><td>1983</td><td>34.18\%</td><td>21.27\%</td><td>25.00\%</td><td>24.55\%</td><td>14.35\%</td><td>24.10\%</td><td>22.54\%</td></tr><tr><td>1984</td><td>15.26\%</td><td>5.50\%</td><td>6.03\%</td><td>-4.20\%</td><td>-7.84\%</td><td>3.24\%</td><td>6.12\%</td></tr><tr><td>1985</td><td>38.91\%</td><td>32.22\%</td><td>35.83\%</td><td>29.29\%</td><td>23.43\%</td><td>33.80\%</td><td>31.59\%</td></tr><tr><td>1986</td><td>14.33\%</td><td>11.87\%</td><td>19.49\%</td><td>12.00\%</td><td>20.82\%</td><td>15.78\%</td><td>18.47\%</td></tr><tr><td>1987</td><td>0.42\%</td><td>4.34\%</td><td>8.15\%</td><td>4.64\%</td><td>-2.41\%</td><td>2.71\%</td><td>5.23\%</td></tr><tr><td>1988</td><td>39.61\%</td><td>31.31\%</td><td>17.78\%</td><td>8.18\%</td><td>6.76\%</td><td>20.62\%</td><td>16.48\%</td></tr><tr><td>1989</td><td>26.36\%</td><td>23.54\%</td><td>30.76\%</td><td>32.60\%</td><td>35.07\%</td><td>29.33\%</td><td>31.49\%</td></tr><tr><td>1990</td><td>-17.32\%</td><td>-8.12\%</td><td>-5.81\%</td><td>2.09\%</td><td>-2.65\%</td><td>-6.18\%</td><td>-3.17\%</td></tr><tr><td>1991</td><td>47.68\%</td><td>26.34\%</td><td>33.38\%</td><td>34.91\%</td><td>31.64\%</td><td>34.34\%</td><td>30.57\%</td></tr><tr><td>1979-1991</td><td>1,253\%</td><td>657\%</td><td>772\%</td><td>605\%</td><td>434\%</td><td>722\%</td><td>654\%</td></tr></table>

This suggests that using low PE ratios to pick stocks adds 0.92 percent to your quarterly returns, whereas using the dividend discount model adds only a further 0.06 percent to quarterly returns. If, in fact, the gain from using the dividend discount model is that small, screening stocks on the basis of observables (such as PE ratio or cash flow measures) may provide a much larger benefit in terms of excess returns.

Tax Disadvantages from High-Dividend Stocks Portfolios created with the dividend discount model are generally characterized by high dividend yield, which can create a tax disadvantage if dividends are taxed at a rate greater than capital gains or if there is a substantial tax timing liability associated with dividends. Since the excess returns uncovered in the studies presented earlier are pretax to the investor, the introduction of personal taxes may significantly reduce or even eliminate these excess returns.

In summary, the dividend discount model's impressive results in studies looking at past data have to be considered with caution. For a tax-exempt investment with a long time horizon, the dividend discount model is a good tool (though it may not be the only one) to pick stocks. For a taxable investor, the benefits are murkier, since the tax consequences of the strategy have to be considered. For investors with shorter time horizons, the dividend discount model may not deliver on its promised excess returns because of the year-to-year volatility in its performance.

# CONCLUSION

When you buy stock in a publicly traded firm, the only cash flow you receive directly from this investment is expected dividends. The dividend discount model builds on this simple proposition and argues that the value of a stock then has to be the present value of expected dividends over time. Dividend discount models can range from simple growing perpetuity models such as the Gordon growth model, where a stock's value is a function of its expected dividends next year, the cost of equity, and the stable growth rate, to complex three-stage models, where payout ratios and growth rates change over time. While the model is often criticized as being of limited value, it has proven to be surprisingly adaptable and useful in a wide range of circumstances. It may be a conservative model that finds fewer and fewer undervalued firms as market prices rise relative to fundamentals (earnings, dividends, etc.); but that can also be viewed as a strength. Tests of the model also seem to indicate its usefulness in gauging value, though much of its effectiveness may be derived from its finding low-PE-ratio, high-dividend-yield stocks to be undervalued.

# QUESTIONS AND SHORT PROBLEMS

In the problems following, use an equity risk premium of 5.5 percent if none is specified.

1. Respond true or false to the following statements relating to the dividend discount model: a. The dividend discount model cannot be used to value a high-growth company that pays no dividends.


True False b. The dividend discount model will undervalue stocks, because it is too conservative.


True False c. The dividend discount model will find more undervalued stocks when the overall stock market is depressed.


True False d. Stocks that are undervalued using the dividend discount model have generally made significant positive excess returns over long time periods (five years or more).


True False e. Stocks that pay high dividends and have low price-earnings ratios are more likely to come out as undervalued using the dividend discount model.


True False

2. Ameritech Corporation paid dividends per share of 3.56 in 1992, and dividends are expected to grow 5.5\% a year forever. The stock has a beta of 0.90, and the Treasury bond rate is 6.25\%. (Risk premium is 5.5\%.) a. What is the value per share, using the Gordon growth model?


b. The stock was trading for 80 per share. What would the growth rate in dividends have to be to justify this price?

3. Church & Dwight, a large producer of sodium bicarbonate, reported earnings per share of  $1.50 in 1993 and paid dividends per share of$ 0.42. In 1993, the firm also reported the following:

Net income = \ 30 million

Interest expense = 0.8 million

Book value of debt = 7.6 million

Book value of equity = 160 million

The firm faced a corporate tax rate of  $38.5\%$ . (The market value debt-to-equity ratio is  $5\%$ . The Treasury bond rate is  $7\%$ .)

The firm expected to maintain these financial fundamentals from 1994 to 1998, after which it was expected to become a stable firm, with an earnings growth rate of  $6\%$ . The firm's financial characteristics were expected to approach industry averages after 1998. The industry averages were as follows:

Return on capital  $= 12.5\%$

Debt/equity ratio  $= 25\%$

Interest rate on debt  $= 7\%$

Church & Dwight had a beta of 0.85 in 1993, and the unlevered beta was not expected to change over time.

a. What is the expected growth rate in earnings, based on fundamentals, for the high-growth period (1994 to 1998)?
b. What is the expected payout ratio after 1998?
c. What is the expected beta after 1998?
d. What is the expected price at the end of 1998?
e. What is the value of the stock, using the two-stage dividend discount model?
f. How much of this value can be attributed to extraordinary growth? To stable growth?

4. Oneida Inc, the world's largest producer of stainless steel and silverplated flatware, reported earnings per share of $0.80 in 1993, and paid dividends per share of $0.48 in that year. The firm was expected to report earnings growth of 25\% in 1994, after which the growth rate was expected to decline linearly over the following six years to 7\% in 1999. The stock was expected to have a beta of 0.85. (The Treasury bond rate is 6.25\%, and the risk premium is 5.5\%).

a. Estimate the value of stable growth, using the H model.
b. Estimate the value of extraordinary growth, using the H model.
c. What are the assumptions about dividend payout in the H model?

5. Medtronic Inc., the world's largest manufacturer of implantable biomedical devices, reported earnings per share in 1993 of  $3.95, and paid dividends per share of$ 0.68. Its earnings were expected to grow 16\% from 1994 to 1998, but the growth rate was expected to decline each year after that to a stable growth rate of 6\% in 2003. The payout ratio was expected to remain unchanged from 1994 to 1998, after which it would increase each year to reach 60\% in steady state. The stock was expected to have a beta of 1.25 from 1994 to 1998, after which the beta would decline each year to reach 1.00 by the time the firm becomes stable. (The Treasury bond rate is 6.25\%, and the risk premium is 5.5\%).

a. Assuming that the growth rate declines linearly (and the payout ratio increases linearly) from 1999 to 2003, estimate the dividends per share each year from 1994 to 2003.
b. Estimate the expected price at the end of 2003.
c. Estimate the value per share, using the three-stage dividend discount model.

6. Yuletide Inc. is a manufacturer of Christmas ornaments. The firm earned $100 million last year and paid out 20\% of its earnings as dividends. The firm also has bought back $180 million of stock over the past four years, in varying amounts each year. The firm is in stable growth, expects to grow 5\% a year in perpetuity, and has a cost of equity of 12\%.

a. Assuming that the dividend payout ratio will not change over time, estimate the value of equity.
b. How would your answer change if your dividend payout ratio is modified to include stock buybacks?

# Free Cash Flow to Equity Discount Models

The dividend discount model is based on the premise that the only cash flows received by stockholders are dividends. Even if we use the modified version of the model and treat stock buybacks as dividends, we may misvalue firms that consistently fail to return what they can afford to their stockholders.

This chapter uses a more expansive definition of cash flows to equity as the cash flows left over after meeting all financial obligations, including debt payments, and after covering capital expenditure and working capital needs. It discusses the reasons for differences between dividends and free cash flows to equity (FCFE), and presents the discounted free cash flow to equity model for valuation.

# MEASURING WHAT FIRMS CAN RETURN TO THEIR STOCKHOLDERS

Given what firms are returning to their stockholders in the form of dividends or stock buybacks, how do we decide whether they are returning too much or too little? We propose a simple measure how much cash is available to be paid out to stockholders after meeting reinvestment needs and compare this amount to the amount actually returned to stockholders.

# Free Cash Flows to Equity

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

# WHAT ABOUT PREFERRED DIVIDENDS?

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

# ILLUSTRATION 14.1: Estimating Free Cash Flows to Equity—Disney

In this illustration, we will compute the free cash flows to equity generated by Disney, the U.S. entertainment company, from 2001 to 2010, using the full calculation described in the last section:

<table><tr><td>Year</td><td>Net Income</td><td>Depreciation</td><td>Capital Expenditures</td><td>Change in Noncash WC</td><td>Debt Issued</td><td>Debt Repaid</td><td>FCFE</td></tr><tr><td>2001</td><td>$ 158</td><td>$ 1,754</td><td>$ 2,015</td><td>$ 244</td><td>$ 2,884</td><td>$ 2,807</td><td>—$ 586</td></tr><tr><td>2002</td><td>$ 1,236</td><td>$ 1,042</td><td>$ 3,176</td><td>—$ 59</td><td>$ 4,005</td><td>$ 2,113</td><td>$ 1,053</td></tr><tr><td>2003</td><td>$ 1,267</td><td>$ 1,077</td><td>$ 2,755</td><td>—$ 47</td><td>$ 899</td><td>$ 2,059</td><td>—$ 1,524</td></tr><tr><td>2004</td><td>$ 2,345</td><td>$ 1,210</td><td>$ 1,484</td><td>$ 51</td><td>$ 276</td><td>$ 2,479</td><td>—$ 183</td></tr><tr><td>2005</td><td>$ 2,533</td><td>$ 1,339</td><td>$ 1,691</td><td>$ 270</td><td>$ 422</td><td>$ 1,775</td><td>$ 558</td></tr><tr><td>2006</td><td>$ 3,374</td><td>$ 1,437</td><td>$ 1,300</td><td>—$ 136</td><td>$ 2,891</td><td>$ 1,950</td><td>$ 4,588</td></tr><tr><td>2007</td><td>$ 4,687</td><td>$ 1,491</td><td>$ 597</td><td>$ 45</td><td>$ 4,990</td><td>$ 2,294</td><td>$ 8,232</td></tr><tr><td>2008</td><td>$ 4,427</td><td>$ 1,582</td><td>$ 2,162</td><td>$ 485</td><td>$ 1,006</td><td>$ 477</td><td>$ 3,891</td></tr><tr><td>2009</td><td>$ 3,307</td><td>$ 1,631</td><td>$ 1,940</td><td>—$ 109</td><td>$ 1,750</td><td>$ 1,617</td><td>$ 3,240</td></tr><tr><td>2010</td><td>$ 3,963</td><td>$ 1,713</td><td>$ 4,693</td><td>$ 308</td><td>$ 1,190</td><td>$ 1,371</td><td>$ 494</td></tr><tr><td>Total</td><td>$26,981</td><td>$14,276</td><td>$ 21,813</td><td>$1,052</td><td>$20,313</td><td>$18,942</td><td>19,763</td></tr></table>

To use the shortcut, first estimate the net debt used in aggregate over the entire period as a percentage of reinvestment (net cap ex and change in working capital):

$$

\begin{array}{l} \text {D e b t r a t i o} = \frac {\text {D e b t i s s u e d - D e b t r e p a i d}}{\text {C a p e x - D e p r e c i a t i o n +} \Delta \mathrm {W C}} \\ = \frac {2 0 , 3 1 3 - 1 8 , 9 4 2}{2 1 . 8 1 3 - 1 4 , 2 7 6 + 1 , 0 5 2} \\ = 15.96 \% \\ \end{array}

$$

Applying this net debt ratio to reinvestment yields the shorter version of FCFE:

<table><tr><td>Year</td><td>Net Income</td><td>Net Cap Ex (1 – DR)</td><td>Change in WC (1 – DR)</td><td>FCFE</td></tr><tr><td>2001</td><td>$158</td><td>$219</td><td>$205</td><td>$582</td></tr><tr><td>2002</td><td>$1,236</td><td>$1,793</td><td>–$50</td><td>$508</td></tr><tr><td>2003</td><td>$1,267</td><td>$1,410</td><td>–$39</td><td>$104</td></tr><tr><td>2004</td><td>$2,345</td><td>$230</td><td>$43</td><td>$2,072</td></tr><tr><td>2005</td><td>$2,533</td><td>$296</td><td>$227</td><td>$2,010</td></tr><tr><td>2006</td><td>$3,374</td><td>–$115</td><td>–$114</td><td>$3,603</td></tr><tr><td>2007</td><td>$4,687</td><td>–$751</td><td>$38</td><td>$5,400</td></tr><tr><td>2008</td><td>$4,427</td><td>$487</td><td>$408</td><td>$3,532</td></tr><tr><td>2009</td><td>$3,307</td><td>$260</td><td>–$92</td><td>$3,139</td></tr><tr><td>2010</td><td>$3,963</td><td>$2,504</td><td>$259</td><td>$1,200</td></tr><tr><td>Total</td><td>$26,981</td><td>$6,334</td><td>$884</td><td>$19,763</td></tr></table>

While the aggregate FCFE over the period remains the same, the shortcut version yields smoother FCFE over the period.

# Comparing Dividends to Free Cash Flows to Equity

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


# Why Firms May Pay Out Less than Is Available

Many firms pay out less to stockholders, in the form of dividends and stock buybacks, than they have available in free cash flows to equity. The reasons vary from firm to firm.

Desire for Stability Firms are generally reluctant to change dividends, and dividends are considered "sticky" because the variability in dividends is significantly lower than the variability in earnings or cash flows. The unwillingness to change dividends is accentuated when firms have to reduce dividends, and increases in dividends outnumber cuts in dividends by at least a five-to-one margin in most periods. As a consequence of this reluctance to cut dividends, firms will often refuse to increase dividends even when earnings and FCFE go up, because they are uncertain about their capacity to maintain these higher dividends. This leads to a lag between earnings increases and dividend increases. Similarly, firms frequently keep dividends unchanged in the face of declining earnings and FCFE. Figure 14.2 reports the number of dividend changes (increases, decreases, no change) between 1988 and 2008.

The number of firms increasing dividends outnumbers those decreasing dividends seven to one. The number of firms, however, that do not change dividends outnumbers firms that do about four to one. Dividends are also less variable than either FCFE or earnings, but this reduced volatility is a result of keeping dividends significantly below the FCFE.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/22e931e60d688b4998f4d4341388bd0bb1a300263048c4bc2e9cb95675cbb8b8.jpg)
FIGURE 14.2 Dividend Changes by Year: U.S. Companies


Future Investment Needs A firm might hold back on paying its entire FCFE as dividends if it expects substantial increases in capital expenditure needs in the future. Since issuing stocks is expensive (with floatation costs and issuance fees), it may choose to keep the excess cash to finance these future needs. Thus, to the degree that a firm is unsure about its future financing needs, it will retain some cash to take on unexpected investments or meet unanticipated needs.

Tax Factors If dividends are taxed at a higher tax rate than capital gains, a firm may choose to retain the excess cash and pay out much less in dividends than it has available. This is likely to be accentuated if the stockholders in the firm are in high tax brackets, as is the case with many family-controlled firms. If, however, investors in the firm like dividends or tax laws favor dividends, the firm may pay more out in dividends than it has available in FCFE, often borrowing or issuing new stock to do so.

Signaling Prerogatives Firms often use dividends as signals of future prospects, with increases in dividends being viewed as positive signals and decreases as negative signals. The empirical evidence is consistent with this signaling story, since stock prices generally go up on dividend increases and down on dividend decreases. The use of dividends as signals may lead to differences between dividends and FCFE.

Managerial Self-interest The managers of a firm may gain by retaining cash rather than paying it out as a dividend. The desire for empire building may make increasing the size of the firm an objective on its own. Or management may feel the need to build up a cash cushion to tide over periods when earnings may dip; in such periods, the cash cushion may reduce or obscure the earnings drop and may allow managers to remain in control.

# FCFE VALUATION MODELS

The free cash flow to equity model does not represent a radical departure from the traditional dividend discount model. In fact, one way to describe a free cash flow to equity model is that it represents a model where we discount potential dividends rather than actual dividends. Consequently, the three versions of the FCFE valuation model presented in this section are simple variants on the dividend discount model, with one significant change—free cash flows to equity replace dividends in the models.

# Underlying Principle

When we replace the dividends with FCFE to value equity, we are doing more than substituting one cash flow for another. We are implicitly assuming that the FCFE will be paid out to stockholders. There are two consequences:

1. There will be no future cash buildup in the firm, since the cash that is available after debt payments and reinvestment needs is assumed to be paid out to stockholders each period.
2. The expected growth in FCFE will include growth in income from operating assets and not growth in income from increases in marketable securities. This follows directly from the last point.

How does discounting free cash flows to equity compare with the augmented dividend discount model, where stock buybacks are added back to dividends and discounted? You can consider stock buybacks to be the return of excess cash accumulated largely as a consequence of not paying out their FCFE as dividends. Thus, FCFE represents a smoothed-out measure of what companies can return to their stockholders over time in the form of dividends and stock buybacks.

# Estimating Growth in FCFE

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

# Constant Growth FCFE Model

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


# ILLUSTRATION 14.2: Stable Growth FCFE Model—Volkswagen

Volkswagen is a mature German automobile company. Notwithstanding the cyclical swings in net income that are characteristic of the business, the firm is assumed to be in stable growth, and the following inputs were used to value it in May 2011:

1. The net income, not including the interest income from cash, for the company in 2010 was 5,279 million euros, and we will use this as the base year income. (We did check the level to see if it was an outlier, in either direction. If it had been, we would have used a normalized value.)
2. The expected growth in net income over time is assumed to be  $3\%$  and the noncash return on equity that Volkswagen is expected to deliver is  $10\%$ . The resulting equity reinvestment rate for the stable growth model is  $30\%$ :

$$

\text{Stable equity reinvestment rate} = \mathrm {g} / \mathrm {ROE} = 3 \% / 10 \% = 30 \%

$$

The firm did report capital expenditures of 11,462 million euros, depreciation of 10,089 million euros, and an increase in noncash working capital of 423 million euros in 2010. The reinvestment rate using those inputs was  $20.41\%$ ,

$$

\text{Reinvestment rate in} 2010 = (11,462 - 10,089 + 423) / 5,279 = 20.41 \%

$$

We could have used this reinvestment rate in the valuation, but with an expected growth rate in perpetuity of  $2.04\%$ :

$$

\text{Stable growth rate with existing reinvestment rate} = 20.41\% \times 10\% = 2.04\%

$$

3. Volkswagen's cost of equity is estimated using a beta of 1.20, reflecting the average beta across European auto companies, a euro risk-free rate of  $3.2\%$ , and an equity risk premium of  $5\%$ :

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

# LEVERAGE, FCFE, AND EQUITY VALUE

Embedded in the FCFE computation seems to be the makings of a free lunch. Increasing the debt ratio increases free cash flow to equity because more of a firm's reinvestment needs will come from borrowing and less is needed from equity investors. The released cash can be paid out as additional dividends or used for stock buybacks.

If the free cash flow to equity increases as the leverage increases, does it follow that the value of equity will also increase with leverage? Not necessarily. The discount rate used is the cost of equity, which is estimated based on a beta or betas. As leverage increases, the beta will also increase, pushing up the cost of equity. In fact, in the levered beta equation that we introduced in Chapter 8 the levered beta is:

Levered beta  $=$  Unlevered beta[1 + (1 - Tax rate)(Debt/Equity)]

This, in turn, will have a negative effect on equity value. The net effect on value will then depend on which effect—the increase in cash flows or the increase in betas—dominates.

# A TROUBLESHOOTING GUIDE: WHAT IS WRONG WITH THIS VALUATION? (CONSTANT GROWTH FCFE MODEL)

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

# Two-Stage FCFE Model

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

# ILLUSTRATION 14.3: Capital Expenditure, Depreciation, and Growth Rates

Assume you have a firm that is expected to have earnings growth of  $20\%$  for the next five years and  $5\%$  thereafter. The current earnings per share is  $2.50. Current capital spending is$ 2.00, and current depreciation is 1.00. If we assume that capital spending and depreciation grow at the same rate as earnings and there are no working capital requirements or debt:

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

# ILLUSTRATION 14.4: Two-Stage FCFE Model: Nestlé in 2001

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

# E Model—A Three-Stage FCFE Model

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

# A TROUBLESHOOTING GUIDE: WHAT IS WRONG WITH THIS VALUATION? (TWO-STAGE FCFE MODEL)

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

# ILLUSTRATION 14.5: Three-Stage FCFE Model: Tsingtao Breweries (China) in 2001

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

# A TROUBLESHOOTING GUIDE: WHAT IS WRONG WITH THIS VALUATION? (THREE-STAGE FCFE MODEL)

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

# FCFE VALUATION VERSUS DIVIDEND DISCOUNT MODEL VALUATION

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

# ILLUSTRATION 14.6: Valuing Coca-Cola with a Three-Stage FCFE Model

In Chapter 13, we valued Coca-Cola using a three-stage dividend discount model and estimated a value of  $67.15 per share, a tad under the market price of$ 68.22. Implicitly, we were assuming that Coca-Cola's managers are paying out what they can afford to in dividends and that there will be no cash buildup in the company. To test the proposition, we will now value Coca-Cola using a three-stage FCFE model.

We begin by first separating the after-tax interest income of  $105.32 million earned by Coca-Cola from its net income of$ 11,809 million and computing a noncash net income:

$$
\text {N e t i n c o m e f r o m n o n c a s h a s s e t s} = \\ 1 1, 8 0 9 - \\ 1 0 5 = \\ 1 1, 7 0 4
$$

To compute the noncash return on equity, we modify the return on equity computation by netting cash ( $7.021 million) out of book value of equity ($ 25,346 million):

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

<table><tr><td></td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td></tr><tr><td>Expected growth rate</td><td>7.50\%</td><td>7.50\%</td><td>7.50\%</td><td>7.50\%</td><td>7.50\%</td></tr><tr><td>Net income</td><td>$12,581.46</td><td>$13,525.07</td><td>$14,539.45</td><td>$15,629.91</td><td>$16,802.15</td></tr><tr><td>Equity reinvestment rate</td><td>25.00\%</td><td>25.00\%</td><td>25.00\%</td><td>25.00\%</td><td>25.00\%</td></tr><tr><td>FCFE</td><td>$9,436.10</td><td>$10,143.80</td><td>$10,904.59</td><td>$11,722.43</td><td>$12,601.62</td></tr><tr><td>Cost of equity</td><td>8.45\%</td><td>8.45\%</td><td>8.45\%</td><td>8.45\%</td><td>8.45\%</td></tr><tr><td>Present value</td><td>$8,700.87</td><td>$8,624.65</td><td>$8,549.10</td><td>$8,474.22</td><td>8,399.98</td></tr></table>

As in the dividend discount model, we will assume that the firm will be in stable growth 10 years forward, with the following assumptions:

The growth rate in perpetuity after year 10 will be  $3\%$  and the noncash ROE is expected to be  $15\%$ . The resulting equity reinvestment rate in stable growth is:

Equity reinvestment rate  $= \frac{\mathrm{g}}{\mathrm{{ROE}}} = 3\% /{15}\%  = {20}\%$

The beta for the company will rise to 1, causing the cost of equity to increase to  $9\%$ .

The transition period from year 6 to 10 is again used to adjust the growth rate, equity reinvestment rate, and cost of equity from high growth values to stable growth levels. The resulting FCFE are shown in the following table, with the present value computed using the cumulated cost of equity (since the cost of equity changes from period to period).

<table><tr><td></td><td>6</td><td>7</td><td>8</td><td>9</td><td>10</td></tr><tr><td>Expected growth rate</td><td>6.60\%</td><td>5.70\%</td><td>4.80\%</td><td>3.90\%</td><td>3.00\%</td></tr><tr><td>Net income</td><td>$17,911.10</td><td>$18,932.03</td><td>$19,840.77</td><td>$20,614.56</td><td>$21,232.99</td></tr><tr><td>Equity reinvestment rate</td><td>24.00\%</td><td>23.00\%</td><td>22.00\%</td><td>21.00\%</td><td>20.00\%</td></tr><tr><td>FCFE</td><td>$13,612.43</td><td>$14,577.66</td><td>$15,475.80</td><td>$16,285.50</td><td>$16,986.39</td></tr><tr><td>Cost of equity</td><td>8.56\%</td><td>8.67\%</td><td>8.78\%</td><td>8.89\%</td><td>9.00\%</td></tr><tr><td>Cumulative cost of equity</td><td>1.6286</td><td>1.7698</td><td>1.9252</td><td>2.0964</td><td>2.2850</td></tr><tr><td>Present value</td><td>$8,358.30</td><td>$8,236.84</td><td>$8,038.53</td><td>$7,768.49</td><td>7,433.79</td></tr></table>

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

# CONCLUSION

The primary difference between the dividend discount models described in the previous chapter and the free cash flow to equity models described in this one lies in the definition of cash flows; the dividend discount model uses a strict definition of cash flow to equity (i.e., the expected dividends on the stock), while the FCFE model uses an expansive definition of cash flow to equity as the residual cash flow after meeting all financial obligations and investment needs. When dividends are different from the FCFE, the values from the two models will be different. In valuing firms for takeovers or in valuing firms where there is a reasonable chance of changing corporate control, the value from the FCFE model provides the better estimate of value.

# QUESTIONS AND SHORT PROBLEMS

In the problems following, use an equity risk premium of 5.5 percent if none is specified.

1. Respond true or false to the following statements relating to the calculation and use of FCFE: a. The free cash flow to equity will generally be more volatile than dividends.

True False b. The free cash flow to equity will always be higher than dividends.

True False c. The free cash flow to equity will always be higher than net income.

True False d. The free cash flow to equity can never be negative.

True False

2. Kimberly-Clark, a household product manufacturer, reported earnings per share of $3.20 in 1993 and paid dividends per share of $1.70 in that year. The firm reported depreciation of $315 million in 1993 and capital expenditures of $475 million. (There were 160 million shares outstanding, trading at $51 per share.) This ratio of capital expenditures to depreciation is expected to be maintained in the long term. The working capital needs are negligible. Kimberly-Clark had debt outstanding of $1.6 billion, and intended to maintain its current financing mix (of debt and equity) to finance future investment needs. The firm was in steady state and earnings were expected to grow 7\% a year. The stock had a beta of 1.05. (The Treasury bond rate was 6.25\%, and the risk premium was 5.5\%).

a. Estimate the value per share, using the dividend discount model.

b. Estimate the value per share, using the FCFE model.

c. How would you explain the difference between the two models, and which one would you use as your benchmark for comparison to the market price?

3. Ecolab Inc. sells chemicals and systems for cleaning, sanitizing, and maintenance. It reported earnings per share of $2.35 in 1993, and expected earnings growth of 15.5\% a year from 1994 to 1998 and 6\% a year after that. The capital expenditure per share was $2.25, and depreciation was $1.125 per share in 1993. Both were expected to grow at the same rate as earnings from 1994 to 1998. Working capital was expected to remain at 5\% of revenues, and revenues, which were $1 billion in 1993, were expected to increase 6\% a year from 1994 to 1998, and 4\% a year after that. The firm had a debt ratio [D/(D + E)] of 5\%, but planned to finance future investment needs (including working capital investments) using a debt ratio of 20\%. The stock was expected to have a beta of 1 for the period of the analysis, and the Treasury bond rate was 6.50\%. (There were 63 million shares outstanding, and the market risk premium was 5.5\%.) a. Assuming that capital expenditures and depreciation offset each other after 1998, estimate the value per share. Is this a realistic estimate?

b. Assuming that capital expenditures continue to be  $200\%$  of depreciation even after 1998, estimate the value per share.

c. What would the value per share have been, if the firm had continued to finance new investments with its old financing mix (5\%)? Is it fair to use the same beta for this analysis?

4. Dionex Corporation, a leader in the development and manufacture of ion chromatography systems (used to identify contaminants in electronic devices), reported earnings per share of 2.02 in 1993, and paid no dividends. These earnings were expected to grow 14\% a year for five years (1994 to 1998) and 7\% a year after that. The firm reported depreciation of 2 million in 1993 and capital spending of 4.20 million, and had 7 million shares outstanding. The working capital was expected to remain at 50\% of revenues, which were 106 million in 1993, and were expected to grow 6\% a year from 1994 to 1998 and 4\% a year after that. The firm was expected to finance 10\% of its capital expenditures and working capital needs with debt. Dionex had a beta of 1.20 in 1993, and this beta was expected to drop to 1.10 after 1998. (The Treasury bond rate was 7\%, and the market risk premium was 5.5\%.) a. Estimate the expected free cash flow to equity from 1994 to 1998, assuming that capital expenditures and depreciation grow at the same rate as earnings.

b. Estimate the terminal price per share (at the end of 1998). Stable firms in this industry have capital expenditures that are  $150\%$  of revenues, and maintain working capital at  $25\%$  of revenues.

c. Estimate the value per share today, based on the FCFE model.

5. Biomet Inc., which designs, manufactures, and markets reconstructive and trauma devices, reported earnings per share of  $0.56 in 1993, on which it paid no dividends (it had revenues per share in 1993 of$ 2.91). It had capital expenditures of $0.13 per share in 1993, and depreciation in the same year of $0.08 per share. The working capital was 60\% of revenues in 1993 and was expected to remain at that level from 1994 to 1998, while earnings and revenues were expected to grow 17\% a year. The earnings growth rate was expected to decline linearly over the following five years to a rate of 5\% in 2003. During the high growth and transition periods, capital spending and depreciation were expected to grow at the same rate as earnings, but capital spending would be 120\% of depreciation when the firm reaches steady state. Working capital was expected to drop from 60\% of revenues during the 1994-1998 period to 30\% of revenues after 2003. The firm had no debt currently, but planned to finance 10\% of its net capital investment and working capital requirements with debt.

The stock was expected to have a beta of 1.45 for the high growth period (1994 to 1998), and the beta was expected to decline to 1.10 by the time the firm goes into steady state (in 2003). The Treasury bond rate is  $7\%$ , and the market risk premium is  $5.5\%$ .

a. Estimate the value per share, using the FCFE model.

b. Estimate the value per share, assuming that working capital stays at  $60\%$  of revenues forever.

c. Estimate the value per share, assuming that the beta remains unchanged at 1.45 forever.

6. Will the following firms be likely to have a higher value from the dividend discount model, a higher value from the FCFE model, or the same value from both models?

a. A firm that pays out less in dividends than it has available in FCFE, but invests the balance in Treasury bonds.

b. A firm that pays out more in dividends than it has available in FCFE, and then issues stock to cover the difference.

c. A firm that pays out, on average, its FCFE as dividends.

d. A firm that pays out less in dividends that it has available in FCFE, but uses the cash at regular intervals to acquire other firms with the intent of diversifying.

e. A firm that pays out more in dividends than it has available in FCFE, but borrows money to cover the difference. (The firm is levered to begin with.)

7. You have been asked to value Oneida Steel, a midsize steel company. The firm reported $80 million in net income, $50 million in capital expenditures, and $20 million in depreciation in the just-completed financial year. The firm reported that its noncash working capital increased by $20 million during the year and that total debt outstanding increased by $10 million during the year. The book value of equity at Oneida Steel at the beginning of the last financial year was $400 million. The cost of equity is 10\%.

a. Estimate the equity reinvestment rate, return on equity, and expected growth rate for Oneida Steel. (You can assume that the firm will continue to maintain the same debt ratio that it used last year to finance its reinvestment needs.)

b. If this growth rate is expected to last five years and then drop to a  $4\%$  stable growth rate after that and the return on equity after year 5 is expected to be  $12\%$ , estimate the value of equity today, using the projected free cash flows to equity.

8. Luminos Corporation, a manufacturer of lightbulbs, is a firm in stable growth. The firm reported net income of $100 million on a book value of equity of $1 billion. However, the firm also had a cash balance of $200 million on which it earned after-tax interest income of $10 million last year. (This interest income is included in the net income, and the cash is part of the book value of equity.) The cost of equity for the firm is 9\%.

a. Estimate the noncash return on equity at Luminos Corporation.

b. If you expect the cash flows from the operating assets of Luminos to increase  $3\%$  a year in perpetuity, estimate the value of equity at Luminos.

# Firm Valuation: Cost of Capital and Adjusted Present Value Approaches

The preceding two chapters examined two approaches to valuing the equity in the firm—the dividend discount model and the free cash flow to equity (FCFE) valuation model. This chapter examines approaches to valuation in which the entire firm is valued, by either discounting the cumulated cash flows to all claim holders in the firm by the weighted average cost of capital (the cost of capital approach) or by adding the marginal impact of debt on value to the unlevered firm value—the adjusted present value (APV) approach.

In the process of looking at firm valuation, we also look at how leverage may or may not affect firm value. We note that in the presence of default risk, taxes, and agency costs, increasing leverage can sometimes increase firm value and sometimes decrease it. In fact, we argue that the optimal financing mix for a firm is the one that maximizes firm value.

# FREE CASH FLOW TO THE FIRM

The free cash flow to the firm (FCFF) is the sum of the cash flows to all claim holders in the firm, including common stockholders, bondholders, and preferred stockholders. There are two ways of measuring the free cash flow to the firm.

One is to add up the cash flows to the claim holders, which would include cash flows to equity (defined either as free cash flow to equity or as dividends); cash flows to lenders (which would include principal payments, interest expenses, and new debt issues); and cash flows to preferred stockholders (usually preferred dividends):

$$
\begin{array}{l} \text {F C F F = F r e e c a s h f l o w t o e q u i t y + I n t e r e s s e x p e n s e (1 - T a x r a t e)} \\ \qquad + \text {P r i n c i p a l r e p a y m e n t s - N e w d e b t i s s u e s + P r e f e r e d d i v i d e n d s} \end{array}
$$ taxes and reinvestment needs, and arrive at an estimate of the free cash flow to the firm:

Note, however, that we are reversing the process that we used to get to free cash flow to equity, where we subtracted out payments to lenders and preferred stockholders to estimate the cash flow left for stockholders. A simpler way of getting to free cash flow to the firm is to estimate the cash flows prior to any of these claims. Thus we could begin with the earnings before interest and taxes, net out


FCFF = EBIT(1 - Tax rate) + Depreciation - Capital expenditure - Δ Working capital

Since this cash flow is prior to debt payments, it is often referred to as an unlevered cash flow. Note that this free cash flow to the firm does not incorporate any of the tax benefits due to interest payments. This is by design, because the use of the after-tax cost of debt in the cost of capital already considers this benefit, and including it in the cash flows would double count it.

# FCFF and Other Cash Flow Measures

The differences between FCFF and FCFE arise primarily from cash flows associated with debt—interest payments, principal repayments, and new debt issues—and other nonequity claims, such as preferred dividends. For firms at their desired debt level, which finance their capital expenditures and working capital needs with this mix of debt and equity and use new debt issues to finance principal repayments, the free cash flow to the firm will exceed the free cash flow to equity.

One metric that is widely used in valuation is the earnings before interest, taxes, depreciation, and amortization (EBITDA), a rough measure of cash flows form operations. The free cash flow to the firm is a related concept but it is more complete because it takes into account the potential tax liability from the earnings as well as capital expenditures and working capital requirements.

Some analysts also use after-tax operating income as a proxy for free cash flow to the firm, with alternative definitions of operating income. The first, earnings before interest and taxes (EBIT) or operating income, comes directly from a firm's income statements. Adjustments to EBIT yield the net operating profit or loss after taxes (NOPLAT) or the net operating income (NOI). The net operating income is defined to be the income from operations prior to taxes and nonoperating expenses.

Each of these measures is used in valuation models, and each can be related to the free cash flow to the firm. Each, however, makes some assumptions about the relationship between depreciation and capital expenditures that are made explicit in Table 15.1.

# Growth in FCFE versus Growth in FCFF

Will equity cash flows and firm cash flows grow at the same rate? Consider the starting point for the two cash flows. Equity cash flows are based on net income or earnings per share—measures of equity income. Firm cash flows are based on operating income (i.e., income prior to debt payments). As a general rule, you would expect growth in operating income to be lower than growth in net income, because financial leverage can augment the latter. To see why, let us go back to the fundamental growth equations laid out in Chapter 11:

Expected growth in net income  $=$  Equity reinvestment rate  $\times$  Return on equity Expected growth in operating income  $=$  Reinvestment rate  $\times$  Return on capital

TABLE 15.1 Free Cash Flows to the Firm: Comparison to Other Measures

<table><tr><td>Cash Flow Used</td><td>Definition</td><td>Use in Valuation</td></tr><tr><td>FCFF</td><td>Free cash flow to firm</td><td>Discounting free cash flow to the firm at the cost of capital will yield the value of the operating assets of the firm. To this, you would add on the value of nonoperating assets to arrive at firm value.</td></tr><tr><td>FCFE</td><td>FCFF – Interest (1 – t) – Principal repaid + New debt issued – Preferred dividend</td><td>Discounting free cash flows to equity at the cost of equity will yield the value of equity in a business.</td></tr><tr><td>EBITDA</td><td>FCFF + EBIT(t) + Capital expenditures + Change in working capital</td><td>If you discount EBITDA at the cost of capital to value an asset, you are assuming that there are no taxes and that the firm will actively disinvest over time. It would be inconsistent to assume a growth rate or an infinite life for this firm.</td></tr><tr><td>EBIT (1 – t) (NOPLAT is a slightly modified version of this estimate and it removes any nonoperating items that might affect the reported EBIT.)</td><td>FCFF + Capital expenditures – Depreciation + Change in working capital</td><td>If you discount after-tax operating income at the cost of capital to value a firm, you are assuming no reinvestment. The depreciation is reinvested back into the firm to maintain existing assets. You can assume an infinite life but no growth.</td></tr></table>

We also defined the return on equity in terms of the return on capital:

$$

\begin{array}{l} \text {R e t u r n o n e q u i t y} = \text {R e t u r n o n c a p i t a l} + \frac {\text {D e b t}}{\text {E q u i t y}} \\ \times (\text {R e t u r n} - \text {A f t e r - t a x c o s t o f d e b t}) \\ \end{array}

$$

When a firm borrows money and invests in projects that earn more than the after-tax cost of debt, the return on equity will be higher than the return on capital. This, in turn, will translate into a higher growth rate in equity income at least in the short term.

In stable growth, though, the growth rates in equity income and operating income have to converge. To see why, assume that you have a firm whose revenues and operating income are growing at 5 percent a year forever. If you assume that the same firm's net income grows at 6 percent a year forever, the net income will catch up with operating income at some point in time in the future and exceed revenues at a later point in time. In stable growth, therefore, even if return on equity exceeds the return on capital, the expected growth will be the same in all measures of income.


# FIRM VALUATION: THE COST OF CAPITAL APPROACH

The value of the firm is obtained by discounting the free cash flow to the firm at the weighted average cost of capital. Embedded in this value are the tax benefits of debt (in the use of the after-tax cost of debt in the cost of capital) and expected additional risk associated with debt (in the form of higher costs of equity and debt at higher debt ratios). Just as with the dividend discount model and the FCFE model, the version of the model used will depend on assumptions made about future growth.

# Stable Growth Firm

As with the dividend discount and FCFE models, a firm that is growing at a rate that it can sustain in perpetuity—a stable growth rate—can be valued using a stable growth model.

The Model A firm with free cash flows to the firm growing at a stable growth rate can be valued using the following equation:

$$

\text {V a l u e o f f i r m} = \frac {\mathrm {F C F F} _ {1}}{\left(\mathrm {W A C C} - \mathrm {g} _ {\mathrm {n}}\right)}

$$ where  $\mathrm{FCFF}_1 =$  Expected FCFF next year

WACC = Weighted average cost of capital

$\mathrm{g_n} =$  Growth rate in the FCFF forever

The Caveats There are two conditions that need to be met in using this model. First, the growth rate used in the model has to be less than or equal to the growth rate in the economy—nominal growth, if the cost of capital is in nominal terms, or real growth, if the cost of capital is a real cost of capital. Second, the characteristics of the firm have to be consistent with assumptions of stable growth. In particular, the reinvestment rate used to estimate free cash flows to the firm should be consistent with the stable growth rate. The best way of enforcing this consistency is to derive the reinvestment rate from the stable growth rate:

$$
\text {R e i n v e s t m e n t r a t e i n s t a b l e g r o w t h} = \frac {\text {G r o w t h r a t e}}{\text {R e u r n o n c a p i t a l}}
$$

If reinvestment is estimated from net capital expenditures and change in working capital, the net capital expenditures should be similar to those other firms in the industry (perhaps by setting the ratio of capital expenditures to depreciation at industry averages) and the change in working capital should generally not be negative. A negative change in working capital creates a cash inflow, and while this may, in fact, be viable for a firm in the short term, it is dangerous to assume it in perpetuity.[2] Even if industry averages are used to compute the reinvestment, it is always prudent to estimate what return on capital is imputed in that reinvestment (obtained by dividing the growth rate in perpetuity by the reinvestment rate). The cost of capital should also be reflective of a stable growth firm. In particular, the beta should be close to 1—the rule of thumb presented in the earlier chapters that the beta should be between 0.8 and 1.2 still holds. While stable growth firms tend to use more debt, this is not a prerequisite for the model, since debt policy is subject to managerial discretion.

Limitations Like all stable growth models, this one is sensitive to assumptions about the expected growth rate. This is accentuated, however, by the fact that the discount rate used in valuation is the WACC, which is significantly lower than the cost of equity for most firms. So, if keeping the growth rate below the risk free rate was good practice with equity valuation models, it is even more so with firm valuation. Furthermore, the model is sensitive to assumptions made about capital expenditures relative to depreciation. As noted in chapter 12, if the inputs for reinvestment are not a function of expected growth the free cash flow to the firm can be inflated (or deflated) by reducing (increasing) capital expenditures relative to depreciation.

# ILLUSTRATION 15.1: Valuing a Firm with the Stable Growth FCFF Model—Telesp (Brazil)

Telesp provides local telecommunication services to the Brazilian state of Sao Paulo. In 2010, the company had operating income (EBIT) of 3,544 million BR and faced an effective tax rate of  $30\%$ . In 2010, the firm reported capital expenditures of 1,659 million BR and depreciation of 1,914 million BR and an increase in working capital of 1,119 million BR. Consequently, its reinvestment in 2010 can be computed as follows:

$$
\begin{array}{l} \text {R e i n v e s t m e n t} = \frac {\text {C a p i t a l e x p e d i t u r e s - D e p r e c i a t i o n + C h a n g e i n n o n c a s h W C}}{\text {E B I T} (1 - t)} \\ = \frac {1 , 6 5 9 - 1 , 9 1 4 + 1 , 1 1 9}{3 , 5 4 4 (1 - . 3 0)} = 3 4. 8 2 \\ \end{array}
$$

The return on capital generated by the company in 2010 was computed using the operating income for the year and the book value of capital invested at the end of the previous year (2009):

$$
\begin{array}{l} \text {R e t u r n o n c a p i t a l} = \frac {\mathrm {E B I T} _ {2 0 1 0} (1 - t)}{\mathrm {B V o f e q u i t y} _ {2 0 0 9} + \mathrm {B V o f d e b t} _ {2 0 0 9} - \mathrm {C a s h} _ {2 0 0 9}} \\ = \frac {3,544 (1 - .30)}{10,057 + 8,042 - 12,277} = 15.68 \% \\ \end{array}
$$

The expected growth rate that emerges from these inputs is:

$$
\text{Expected growth rate} = 34.82 \% \times 15.68 \% = 5.46 \%
$$

While this would be too high a growth rate for stable growth in a currency with low expected inflation, the risk-free rate in BR in May 2011 was  $7\%$ . In conjunction with a beta of 0.8 and an equity risk premium for Brazil of  $8\%$  (composed of a mature market premium of  $5\%$  and an additional country risk premium of  $3\%$  for Brazil), this yields a cost of equity of  $13.40\%$ . Incorporating a pretax cost of debt of  $9.50\%$  and a debt ratio of  $20\%$  (based on current market values for equity and debt) results in a cost of capital of  $12.05\%$  for Telesp:

$$
\text {D e b t - t o - c a p i t a l r a t i o} = \frac {\text {D e b t}}{\text {D e b t} + \text {M a r k e t v a l u e o f e q u i t y}}
$$

$$
= \frac {5 , 5 1 9}{5 , 5 1 9 + 2 1 , 9 8 2} = 2 0. 0 7
$$

$$
\text{Cost of capital} = 13.40 \% (7993) + 9.50 \% (1 - .30)(2007) = 12.05 \%
$$

The value for the operating assets can then be estimated as follows:

$$
\begin{array}{r l} \text {F C F F i n 2 0 1 0 = E B I T (1 - t) + D e p r e c i a t i o n - C a p i t a l e x p e d i t u r e s - C h a n g e i n n o n c a s h W C} \\ & = 3, 5 4 4 (1 -. 3 0) + 1, 9 1 4 - 1, 6 5 9 - 1, 1 1 9 = 1, 6 1 7 m i l l o n B R \end{array}
$$

$$
\begin{array}{l} \text {V a l u e o f o p e r a t i n g a s s e t s} = \frac {\text {E x p e c t e d F C F F n e x t y e a r}}{\text {C o s t o f c a p i t a l - E x p e c t e d g r o w t h r a t e}} \\ = \frac {1 , 6 1 7 (1 . 0 5 4 6)}{. 1 2 0 5 - . 0 5 4 6} = 2 5, 9 0 1 \text {m i l l i o n B R} \\ \end{array}
$$

Adding the cash and marketable securities (1,557 million BR) and subtracting the debt (5,519 million BR) at the end of 2010 yields a value for the equity:

$$
\begin{array}{l} \text {V a l u e o f e q u i t y} = \text {V a l u e o f o p e r a t i n g a s s e t s} + \text {C a s h} - \text {D e b t} \\ = 2 5, 9 0 1 + 1, 5 5 7 - 5, 5 1 9 = 2 1, 9 3 9 \text {m i l l o n B R} \\ \end{array}
$$

The company's market capitalization in May 2011 was 21,982 million BR, making it fairly priced.

# General Version of the FCFF Model

Rather than break the free cash flow model into two-stage and three-stage models and risk repeating what was said in the preceding chapter, we present the general version of the model in this section. We follow up by examining a range of companies—a traditional manufacturing firm (Gerdau Steel), a firm with operating leases (Target), and a firm with substantial R&D investments (Amgen)—to illustrate the differences and similarities between this approach and the FCFE approach.

The Model The value of the firm, in the most general case, can be written as the present value of expected free cash flows to the firm:

$$
\text {V a l u e o f f i r m} = \sum_ {t = 1} ^ {t = \infty} \frac {\mathrm {F C F F} _ {t}}{(1 + \mathrm {W A C C}) ^ {t}}
$$ where  $\mathrm{FCFF}_{\mathrm{t}} =$  Free cash flow to firm in year t WACC  $=$  Weighted average cost of capital


# MARKET VALUE WEIGHTS, COST OF CAPITAL, AND CIRCULAR REASONING

To value a firm, you first need to estimate a cost of capital. Every textbook is categorical that the weights in the cost of capital calculation be market value weights. The problem, however, is that the cost of capital is then used to estimate new values for debt and equity that might not match the values used in the original calculation. One defense that can be offered for this inconsistency is that if you bought all of the debt and equity in a publicly traded firm, you would pay current market value and not your estimated value, and your cost of capital reflects this.

For those who are bothered by this inconsistency, there is a way out. You could do a conventional valuation using market value weights for debt and equity, but then use the estimated values of debt and equity from the valuation to reestimate the cost of capital. This, of course, will change the values again, but you could feed the new values back and estimate cost of capital again. Each time you do this, the differences between the values you use for the weights and the values you estimate will narrow, and the values will converge sooner rather than later.

How much of a difference will it make in your ultimate value? The greater the difference between market value and your estimates of value, the greater the difference this iterative process will make. In the valuation of Telesp, we began with a market value of 21,982 million BR and estimated a value of 21,939 million BR. If we substituted back this estimated value and iterated to a solution, we would arrive at an estimate of value of 21,946 million BR.

If the firm reaches steady state after  $n$  years and starts growing at a stable growth rate  $g_{n}$  after that, the value of the firm can be written as:

$$

\text {V a l u e o f f i r m} = \sum_ {\mathrm {t} = 1} ^ {\mathrm {t} = \mathrm {n}} \frac {\mathrm {F C F F} _ {\mathrm {t}}}{\left(1 + \mathrm {W A C C} _ {\mathrm {h g}}\right) ^ {\mathrm {t}}} + \frac {\left[ \mathrm {F C F F} _ {\mathrm {n} + 1} / \left(\mathrm {W A C C} _ {\mathrm {s t}} - \mathrm {g} _ {\mathrm {n}}\right) \right]}{\left(1 + \mathrm {W A C C} _ {\mathrm {h g}}\right) ^ {\mathrm {n}}}

$$ where WACC = Cost of capital (hg: high growth; st: stable growth)


Firms Model Best Suited For Firms that either have very high or very low leverage or are in the process of changing their leverage are best valued using the FCFF approach. The calculation of FCFE is much more difficult in these cases because of the volatility induced by debt payments (or new issues), and the value of equity, which can a small slice of the total value of the firm for highly levered firms, is more sensitive to assumptions about growth and risk. It is worth noting, though, that in theory the two approaches should yield the same value for the equity. Getting them to agree in practice is an entirely different challenge and we will return to examine it later in this chapter.


Problems There are three problems that we see with the free cash flow to the firm model. The first is that the free cash flows to equity are a much more intuitive measure of cash flows than cash flows to the firm. When asked to estimate cash flows, most of us look at cash flows after debt payments (free cash flows to equity), because we tend to think like business owners and consider interest payments and the repayment of debt as cash outflows. Furthermore, the free cash flow to equity is a real cash flow that can be traced and analyzed in a firm. The free cash flow to the firm is the answer to a hypothetical question: What would this firm's cash flow be if it had no debt (and associated payments)?

The second is that its focus on predebt cash flows can sometimes blind us to real problems with survival. To illustrate, assume that a firm has free cash flows to the firm of 100 million but that its large debt load makes its free cash flows to equity equal to -\ 50 million. This firm will have to raise \ 50 million in new equity to survive, and if it cannot, all cash flows beyond this point are put in jeopardy. Using free cash flows to equity would have alerted you to this problem, but free cash flows to the firm are unlikely to reflect this.

The final problem is that the use of a debt ratio in the cost of capital to incorporate the effect of leverage requires us to make implicit assumptions that might not be feasible or reasonable. For instance, assuming that the market value debt ratio is 30 percent will require a growing firm to issue large amounts of debt in future years to reach that ratio. In the process, the book-to-debt ratio might reach stratospheric proportions and trigger covenants or other negative consequences. In fact, we count the expected tax benefits from future debt issues implicitly in the value of equity today.

# ILLUSTRATION 15.2: Valuing Target—Dealing with Operating Leases

In 2010, Target reported  $5,252 million in pretax operating income on revenues of$ 67,390 million. While its high growth days are behind it, there is some potential for growth, and we will attempt to value the firm using a two-stage FCFF model.

The first step in this valuation is to recognize that the financial statement numbers for Target are skewed by the failure to consider lease commitments as debt. Using the annual report for 2010, we obtained the lease commitments for the next five years and beyond, which we discount at Target's pretax cost of debt of  $4.5\%$  (estimated based on its S&P bond rating of A) to convert the commitments to debt:

<table><tr><td>Year</td><td>Commitment</td><td>Present Value @ 4.5\%</td></tr><tr><td>1</td><td>$190.00</td><td>$181.82</td></tr><tr><td>2</td><td>$189.00</td><td>$173.07</td></tr><tr><td>3</td><td>$187.00</td><td>$163.87</td></tr><tr><td>4</td><td>$147.00</td><td>$123.27</td></tr><tr><td>5</td><td>$141.00</td><td>$113.15</td></tr><tr><td>6-23</td><td>$172.22</td><td>$1,680.51</td></tr><tr><td>Debt value of leases =</td><td></td><td>2,435.68</td></tr></table> on the annual average commitment for years 1-5). We will adjust the stated debt and operating income to reflect the decision to treat lease commitments as debt:

Note that Target reported a lump sum of  $3,100 million for commitments beyond year 5, which we have converted into annual commitments of$ 172.22 million a year for 18 years (a judgment call based


Adjusted operating income  $=$  Stated operating income + Current year's lease expense

Depreciation on leased asset
= $5,252 million + 200 million - (2,454/23) = $5,346 million

Adjusted debt  $=$  Stated debt + Debt value of leases

$= \$  15,726 + \ $2,436 = \$ 18,162$  million

To estimate the expected growth rate, we estimate the return on capital and reinvestment rate for Target in 2010, again staying true to the decision to capitalize leases:

Adjusted EBIT $_{2010}(1 - t)$
Return on capital =  $\frac{(BV \times BV)(1 - BV)}{(BV \times BV)(1 - BV)}$

$$

= \frac {\mathbb {S} 5 , 3 4 6 (1 - . 3 5)}{(1 6 , 8 1 4 + 2 , 3 5 3 + 1 5 , 3 4 7 - 2 , 2 0 0)} = 1 0. 7 5

$$

Capital Expenditures - Depreciation + Change in PV of leases

+ Change in noncash WC Reinvestment rate  $=$  Adjusted EBIT(1-t)

$$

= \frac {2 , 1 2 9 - 2 , 0 8 4 + (2 , 4 3 6 - 2 , 3 5 3) + 3 3 2}{5 , 3 4 6 (1 - . 3 5)} = 5. 5 8

$$

Note that we computed the present value of lease commitments at the end of 2009 by going back to the annual report for that year, extracting the lease commitments, and computing the present value of the commitments using the pretax cost of debt at the end of 2009.

Target pulled back on reinvestment in 2010, but we expect the reinvestment rate to bounce back to  $40\%$  (close to the average for the past five years) in the next five years, yielding an expected growth rate of  $4.30\%$  each year for that period:

Expected growth rate  $=$  Return on capital  $\times$  Reinvestment rate

$$

= 10.75 \% \times 40 \% = 4.30 \%

$$

To compute the cost of capital over this period, we estimate a beta of 1.05 for Target (based on the average beta across general retailers) and use an equity risk premium of  $5\%$  (the risk-free rate is  $3.5\%$ ):

Cost of equity  $= 3.5\% +1.05(5\%) = 8.75\%$

Cost of debt  $= 4.5\% (1 - .35) = 2.93\%$

Debt to capital ratio = \ $18,162/\$ 18,162 + \$34,346) = 34.59\%

Cost of capital  $= 8.75\% (1 - .3459) + 2.93\% (.3459) = 6.74\%$

Here again, we computed debt to capital ratios, with operating leases treated as part of debt, and the market capitalization for Target of 34,346 million. The resulting free cash flows to the firm for the following five years are reported in the table, with the present value computed using the cost of capital:

<table><tr><td></td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td></tr><tr><td>Expected growth rate</td><td>4.30\%</td><td>4.30\%</td><td>4.30\%</td><td>4.30\%</td><td>4.30\%</td></tr><tr><td>Cumulated growth</td><td>104.30\%</td><td>108.79\%</td><td>113.47\%</td><td>118.35\%</td><td>123.44\%</td></tr><tr><td>Reinvestment rate</td><td>40.00\%</td><td>40.00\%</td><td>40.00\%</td><td>40.00\%</td><td>40.00\%</td></tr><tr><td>EBIT(1-)</td><td>$3,624</td><td>$3,780</td><td>$3,943</td><td>$4,113</td><td>$4,289</td></tr><tr><td>– Reinvestment</td><td>$1,449</td><td>$1,512</td><td>$1,577</td><td>$1,645</td><td>$1,715</td></tr><tr><td>Free cash flow to firm</td><td>$2,175</td><td>$2,268</td><td>$2,366</td><td>$2,468</td><td>$2,574</td></tr><tr><td>Cost of capital</td><td>6.74\%</td><td>6.74\%</td><td>6.74\%</td><td>6.74\%</td><td>6.74\%</td></tr><tr><td>Present value</td><td>$2,037</td><td>$1,991</td><td>$1,946</td><td>$1,901</td><td>$1,858</td></tr></table>

At the end of year 5, we assume that Target will be a mature firm, with a growth rate of  $3\%$  in perpetuity and a return on capital equal to its cost of capital. The resulting reinvestment rate and terminal value are estimated in the following calculations:

Return on capital in stable growth  $=$  Cost of capital in stable growth  $= 6.74\%$  Reinvestment rate in stable growth  $=$  Stable growth rate/Stable ROC

$$

= 3 \% /6.74 \% = 44.54 \%

$$

EBIT(1 - t)6(1 - Reinvestment rate) Terminal value = Cost of capital - Stable growth rate

$$

= \frac {\mathbb {S} 4 , 2 8 9 (1 . 0 3) (1 - . 4 4 5 4)}{. 0 6 7 4 - . 0 3} = \mathbb {S} 6 5, 5 9 7 m i l l i o n

$$

Adding the present value of the terminal value to the sum of the present value of the free cash flows to the firm for the next five years, we arrive at the value of the operating assets:

Value of operating assets = PV of FCFF + PV of terminal value
= $9,733 + $65,597/1.0674^5 = 57,086 million

Adding the cash balance ( $1,712 million) and subtracting debt inclusive of the operating leases ($ 18,162 million) yields a value of equity of  $40,636 million. Dividing by the number of shares (689.13 million) results in a value per share of$ 58.97, about 20\% higher than the prevailing market price of 49 in May 2011.

As a final part of the analysis, we examine the effect that treating leases as debt has on the valuation. As the following table makes clear, staying with the current accounting treatment of operating leases as operating expenses would result in a higher return on capital, a higher cost of capital, and a slightly higher value of equity per share.

<table><tr><td></td><td>Operating Expense</td><td>Financial Expense</td></tr><tr><td>Operating income</td><td>$5,252.00</td><td>$5,346.00</td></tr><tr><td>Debt</td><td>$16,814.00</td><td>$19,250.00</td></tr><tr><td>ROIC</td><td>11.39\%</td><td>10.75\%</td></tr><tr><td>Reinvestment rate</td><td>40\%</td><td>40\%</td></tr><tr><td>Expected growth rate</td><td>4.56\%</td><td>4.30\%</td></tr><tr><td>Debt-to-capital ratio</td><td>31.41\%</td><td>34.59\%</td></tr><tr><td>Cost of capital</td><td>6.92\%</td><td>6.74\%</td></tr><tr><td>Value of firm</td><td>$56,731.00</td><td>$58,795.00</td></tr><tr><td>Value of equity</td><td>$41,005.00</td><td>$40,633.00</td></tr><tr><td>Value/share</td><td>$59.50</td><td>$58.97</td></tr></table>

While the value per share effect is small in the case of Target, it will be larger for firms with more substantial lease commitments (relative to conventional debt). A key number to track is the excess return (return on capital - cost of capital) earned by the firm. For Target, converting leases to debt lowers the excess return slightly from  $4.47\%$  ( $11.39\%$  minus  $6.92\%$ ) to  $4.01\%$  ( $10.75\%$  minus  $6.74\%$ ), which also lowers the value per share. The greater the change in the excess returns from the lease adjustment, the greater will be the impact of converting leases to debt on value per share.

# ILLUSTRATION 15.3: Valuing Amgen in March 2009: The Effect of R&D Capitalization

In Illustration 9.2, we used Amgen to illustrate the effects of capitalizing R&D, using a 10-year amortizable life for R&D. Using data through 2008, we estimated the capital invested in R&D and the amortization as follows:

<table><tr><td>Year</td><td>R&amp;D Expense</td><td colspan="2">Unamortized Portion</td><td>Amortization This Year</td></tr><tr><td>Current</td><td>$3030.00</td><td>1.00\%</td><td>$ 3030.00</td><td></td></tr><tr><td>-1</td><td>$3266.00</td><td>0.90\%</td><td>$ 2939.40</td><td>$ 326.60</td></tr><tr><td>-2</td><td>$3366.00</td><td>0.80\%</td><td>$ 2692.80</td><td>$ 336.60</td></tr><tr><td>-3</td><td>$2314.00</td><td>0.70\%</td><td>$ 1619.80</td><td>$ 231.40</td></tr><tr><td>-4</td><td>$2028.00</td><td>0.60\%</td><td>$ 1216.80</td><td>$ 202.80</td></tr><tr><td>-5</td><td>$1655.00</td><td>0.50\%</td><td>$ 827.50</td><td>$ 165.50</td></tr><tr><td>-6</td><td>$1117.00</td><td>0.40\%</td><td>$ 446.80</td><td>$ 111.70</td></tr><tr><td>-7</td><td>$ 864.00</td><td>0.30\%</td><td>$ 259.20</td><td>$ 86.40</td></tr><tr><td>-8</td><td>$ 845.00</td><td>0.20\%</td><td>$ 169.00</td><td>$ 84.50</td></tr><tr><td>-9</td><td>$ 823.00</td><td>0.10\%</td><td>$ 82.30</td><td>$ 82.30</td></tr><tr><td>-10</td><td>$ 663.00</td><td>0.00\%</td><td>$ 0.00</td><td>$ 66.30</td></tr><tr><td></td><td></td><td></td><td>$13,283.60</td><td>$1,694.10</td></tr></table>

Using the financial statements from 2008, we compute the adjusted operating income and return on capital at the firm, using Amgen's effective tax rate of  $20\%$  in 2008.

Adjusted operating income = Operating income $_{2008}$  + R&D expense $_{2008}$  - Depreciation on R&D asset $_{2008}$

$$

= \ 5,594 + 3,030 - 1,694 = \ 6.930 \text {m i l l i o n}

$$

Adjusted after-tax operating income  $= 0$  Operating income  ${}_{2008}\left( {1 - \mathrm{t}}\right)  + \mathrm{R}\& \mathrm{D}$  expense  ${}_{2008}$

$$

\begin{array}{l} - \text {D e p r e c i a t i o n} R \& D \text {a s s e t} _ {2 0 0 8} \\ = \$ 5,594 (1 - . 2 0) + 3,03 0 - 1,6 9 4 = \$ 5,8 1 1 \text {m i l l o n} \\ \end{array}

$$

Adjusted pretax ROIC = Adjusted operating income $_{2008}$  BV of debt $_{2007}$  + BV of equity $_{2007}$  + Capitalized R&D $_{2007}$  - Cash $_{2007}$

$$

= \frac {\mathbb {S} 6 , 9 3 0}{\mathbb {S} 1 1 , 1 7 7 + \mathbb {S} 1 7 , 8 6 9 + \mathbb {S} 1 1 , 9 4 8 - \mathbb {S} 7 , 1 5 1} = 2 0. 4 8

$$

Adjusted after-tax ROIC = Adjusted after-tax operating income $_{2008}$  BV of debt $_{2007}$  + BV of equity $_{2007}$  + Capitalized R&D $_{2007}$  - Cash $_{2007}$

$$

= \frac {\mathbb {S} 5 , 8 1 1}{\mathbb {S} 1 1 , 1 7 7 + \mathbb {S} 1 7 , 8 6 9 + \mathbb {S} 1 1 , 9 4 8 - \mathbb {S} 7 , 1 5 1} = 1 7. 1 7

$$

Note that the capitalized R&D used in the return on capital computation was based on the R&D expenses through 2007 and that the adjusted after-tax earnings reflect the tax benefits of R&D expensing.

We used the restated numbers to estimate the value of the firm and equity per share. The valuation, where we assume 10 years of high growth, is summarized in Figure 15.1.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/415cc82c1e9abda910837bf9de558f5d3038f2582104017446990f13b0341c22.jpg)
FIGURE 15.1 Valuing Amgen—March 2009

The transition period, as in the prior chapter, exists primarily so as to allow us to adjust our high growth inputs to stable growth levels. The cost of capital for instance, which is  $11.23\%$  for the next five years, drops in linear increments to the stable growth cost of capital of  $8.23\%$ ; the compounded cost of capital is therefore used to discount cash flows in those years. Our estimate of value of equity per share is  $\$67.16$  a share, well above the prevailing stock price of  $\$47.47$  in March 2009.

An intriguing question is how the capitalization of R&D expenses affected value. To investigate, we compare the valuation fundamentals for Amgen, with conventional accounting, and with R&D treated as capital expenses in the following table:

<table><tr><td colspan="3">Valuation Fundamentals—With and Without R&amp;D Capitalization</td></tr><tr><td></td><td>Conventional</td><td>Capitalized R&amp;D</td></tr><tr><td>After-tax ROC</td><td>20.44\%</td><td>17.17\%</td></tr><tr><td>Reinvestment rate</td><td>14.47\%</td><td>34.13\%</td></tr><tr><td>Growth rate</td><td>2.96\%</td><td>5.86\%</td></tr><tr><td>Value per share</td><td>$48.24</td><td>$67.17</td></tr></table>

We then revalue the firm, using both sets of fundamentals. As the table indicates, the value per share would have been 48.24 if we had used conventional accounting numbers. Clearly, capitalization matters, and the degree to which it matters will vary across firms. In general, the effect will be negative for firms that invest large amounts in R&D, with little to show (yet) in terms of earnings and cash flows in subsequent periods. It will be positive for firms that reinvest large amounts in R&D and report large increases in earnings in subsequent periods. In the case of Amgen, capitalizing R&D has a positive effect on value per share, because of its track record of successful R&D.

# ILLUSTRATION 15.4: Valuing an Emerging Market Company with Developed Market Exposure: Gerduu Steel (Brazil) in March 2009

Gerdau Steel is a Brazilian steel company that derived about  $51\%$  of its revenues in Brazil in 2008 and the rest in North America. We chose to value Gerduu Steel in U.S. dollars, partly because of the difficulties we face in estimating risk-free rates and risk premiums in Brazilian reais (R$).

To estimate the cost of capital in U.S. dollar terms, we start with the U.S. Treasury bond rate of  $3\%$ . In March 2009, the equity risk premium that we were using for mature markets (like the United States) was  $6\%$  and the additional country risk premium for Brazil was  $4.75\%$ . For Gerdau Steel, we use the average unlevered beta of 1.01 for steel companies listed globally, using the argument that steel is a commodity that is bought and sold on a world market. Since Gerdau has a very high market debt to equity ratio  $(138.89\%)$ , the resulting levered beta is 1.94 (with  $34\%$  being the marginal tax rate for Brazil):

$$

\text {L e v e r e d} \beta a t e _ {\text {G e r d a u}} = 1. 0 1 [ 1 + (1 - . 3 4) (1. 3 8 8 9) ] = 1. 9 4

$$

To reflect the fact that Gerdua Steel derives almost half its revenues in emerging markets, we estimated a lambda to measure exposure to Brazilian country risk, using two approaches:

1. Revenue-based approach: Dividing Gerdau's Brazilian revenue proportion (51 percent) by the average revenue proportion for a Brazilian company (72 percent) yields a lambda of 0.79.
2. Price-based approach: Regressing the weekly returns on Gerdau stock, between January 2007 and January 2009, on the weekly returns on the Brazilian government dollar-denominated bond yields a lambda of 0.625:

$$

\text{Return}_{\text{Gerdau}} = 0.045\% +0.6250\text{Return}_{\text{Brazil $ bond}}

$$

We use the latter estimate to compute a US cost of equity for Gerdau Steel of 17.61\%:

$$

\text{Cost of equity for Gerdua} = 3.00 \% + 1.94(6 \%) + 0.625(4.75 \%) = 17.61 \%

$$

To estimate the cost of debt for Gerduu, we began with the interest coverage ratio for the firm, using the 2008 income statement:

$$

\text {I n t e r s t c o v e r a g e r a t i o} = \frac {\text {O p e r a t i n g i n c o m e}}{\text {I n t e r s t e x p e n s e s}} = \frac {8 , 0 0 5}{1 , 6 2 0} = 4. 9 4

$$

This interest coverage ratio, in conjunction with Table 8.1 (from Chapter 8), yields a rating of A- and a default spread of  $3\%$  (based on March 2009 spreads). Adding the default spread for Brazil  $(3\%)$  at the time, we get a pretax cost of debt of  $9\%$  for Gerdua:

$$

\begin{array}{l} \text {P r e t a x} = \text {R i s k - f r e e} + \text {D e f a u l t} + \text {D e f a u l t} \\ = 3 \% + 3 \% + 3 \% = 9 \% \\ \end{array}

$$

Finally, incorporating Gerduu's current market debt to capital ratio of  $58.45\%$ , we estimate a US$ cost of capital of  $10.79\%$

$$

\text{Cost of capital} = 17.61 \% (.4155) + 9 \% (1 - .34) (.5845) = 10.79 \%

$$

We use the 2008 financial statements and exchange rates at the time of the statements to estimate the cashflows in R$ and then convert these cash flows to U.S. dollars.

Base year numbers: In the 2008 financial year, Gerdua reported operating income of R$ 8,005 million, after depreciation of R$1,896 million. During the year, acquisitions and internal investments combined to create capital expenditures of R$6,818 million and noncash working capital increased by R$1,083 million. Gerdua earned an after-tax return on capital of 18.68\%, based on a marginal tax rate (for Brazil) of 34\%, and start-of-the-year book value for equity of R17,449 million, book value of debt of R 15,979 million and a cash balance of R 5,139 million:


$$

\text {R e t u r n o n c a p i t a l} = \frac {8 0 0 5 (1 - . 3 4)}{1 7 4 4 9 + 1 5 9 7 9 - 5 1 3 9} = . 1 8 6 8

$$

$$

\text{Reinvestment rate} = \frac {6818 - 1896 + 1083}{8005(1 - .34)} = 113.66 \%

$$

Forecasted growth and cash flows: We do not believe that either the return on capital or the reinvestment rate is sustainable in the long term. Consequently, we use a reinvestment rate of  $60\%$  and a return on capital of  $16\%$  to estimate the expected growth rate of  $9.60\%$ , in R\$, for the next five years.

Expected growth rate  $=$  Reinvestment rate  $\times$  Return on capital  $= .60 \times .16 = .096$

We use this expected growth rate to estimate expected cash flows for the next five years, in R\$, in the following table:

Expected Free Cash Flows in R$: Gerdua Steel

<table><tr><td>Year</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td></tr><tr><td>EBIT (1 - t)</td><td>R$5,790</td><td>R$6,346</td><td>R$6,956</td><td>R$7,623</td><td>R$8,355</td></tr><tr><td>-Reinvestment</td><td>R$3,474</td><td>R$3,808</td><td>R$4,173</td><td>R$4,574</td><td>R$5,013</td></tr><tr><td>FCFF</td><td>R$2,316</td><td>R$2,539</td><td>R$2,782</td><td>R$3,049</td><td>R3,342</td></tr></table>

Again, the reinvestment each year is the consolidated value of net capital expenditures, acquisitions, and investments in working capital, and amounts to  $60\%$  of after-tax operating income each year.

Conversion to U.S. dollars: To convert the cash flows in R$ to U.S. dollars, we start with the prevailing exchange rate (in March 2009) of R$ 2.252/$ but forecast exchange rates for future years based on expected inflation rates of 2\% in U.S. dollars and 5\% in BR. The resulting expected exchange rates and cash flows in U.S. dollars are reported in the following table:

Expected Free Cash Flows in U.S. dollars: Gerduu Steel

<table><tr><td>Year</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td></tr><tr><td>FCFF (in R$)</td><td>R$2,316</td><td>R$2,539</td><td>R$2,782</td><td>R$3,049</td><td>R$3,342</td></tr><tr><td>Expected exchange rate</td><td>2.32</td><td>2.39</td><td>2.46</td><td>2.53</td><td>2.60</td></tr><tr><td>FCFF (In US$)</td><td>R$ 999</td><td>R$1,064</td><td>R$1,133</td><td>R$1,206</td><td>R$1,284</td></tr></table>

The difference in expected inflation results in R$ depreciating in value relative to the U.S. dollar over the five-year period.

Stable growth: In stable growth, we assume that Gerdau will grow  $3\%$  a year, in dollar terms, and that its return on capital in stable growth will converge on its cost of capital (also in dollar terms). To estimate the dollar cost of capital in stable growth, we assume that the stock will have a beta of 1.20 and that the country risk premium will decline to  $3\%$ . Using a debt ratio of  $50\%$  and a cost of debt of  $8\%$ , we estimate a cost of capital of  $8.68\%$ .4 To estimate the terminal value, we first compute the after-tax operating income in dollar terms in year 5:

$$

\$ E B I T (1 - t) = \frac {E B I T (1 - t) i n R \$}{R \$ / \$ _ {\text {y e a r 5}}} = \frac {8 , 3 5 5}{2 . 6 0} = \$ 3, 2 1 3

$$

We then compute the reinvestment rate and terminal value:

$$

\text{Reinvestment rate} = \frac{\text{Stable growth rate}}{\text{Stable ROC}} = \frac{3\%}{8.68\%} = 34.57\%

$$

$$

\begin{array}{l} \text {T e r m i n a l} = \frac {\text {A f t e r - t a x o p e r a t i n g i n c o m e} _ {5} (1 + \mathrm {g} _ {\text {s t a b l e}}) (1 - \text {R e i n v e s t m e n t r a t e})}{\text {C o s t o f c a p i t a l} _ {\text {s t a b l e}} - \mathrm {g} _ {\text {s t a b l e}}} \\ = \frac {\mathbb {S} 3 , 2 1 3 (1 . 0 3) (1 - . 3 4 5 7)}{. 0 8 6 8 - . 0 3} = \mathbb {S} 3 8, 0 9 6 \text {m i l l i o n} \\ \end{array}

$$

Firm and equity valuation: To complete the analysis, we first discount the expected cash flows in US dollars at the cost of capital of  $10.79\%$

Expected Cash Flows and Present Value

<table><tr><td>Year</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td></tr><tr><td>FCFF (in U.S. $)</td><td>R$ 999</td><td>R$1,064</td><td>R$1,133</td><td>R$1,206</td><td>R$1,284</td></tr><tr><td>Terminal value</td><td></td><td></td><td></td><td></td><td>38,096</td></tr><tr><td>Present value @ 10.79\%</td><td>$ 902</td><td>$867</td><td>$833</td><td>$800</td><td>$23,595</td></tr><tr><td>Value of operating assets</td><td>$26,996</td><td></td><td></td><td></td><td></td></tr></table>

To get to firm value, we add in dollar value of the cash holdings of the firm ( $2,404 million) and subtract out the dollar value of debt ($ 9.788 million), with the conversion at today's exchange rate. Since Gerdau has consolidated holdings, we subtract out the estimated market value of the minority interest in these holdings of  $2,599 million (in dollar terms) and then divide by the number of shares outstanding (1,681.12 million) to arrive at a dollar value per share of$ 10.12:5

$$

\text {V a l u e p e r s h a r e} = \frac {2 6 , 9 9 6 + 2 , 4 0 3 - 9 . 7 8 8 - 2 , 5 9 9}{4 4 9 . 8 2} = R \$ 1 0. 1 2 / \text {s h a r e}

$$

Converted at the exchange rate of 2.252 R\$/, we arrive at an estimate of value of R$ 22.79/ share, making it significantly undervalued at the price of R9.32/share at which it was trading in March 2009.

As with the prior two valuations, it is worth exploring the effect of the choice we made to value Gerduau Steel in U.S. dollars. We could have valued Gerduau Steel in BR by adjusting the U.S. dollar cost of capital for differential inflation:

$$

\begin{array}{l} \text {C o s t} = (1 + \text {C o s t} _ {\mathrm {U S S}}) = \frac {(1 + \text {E x p i n f l a t i o n} _ {\mathrm {B R}})}{(1 + \text {E x p i n f l a t i o n} _ {\mathrm {U S S}})} - 1 \\ = 1.1079\left(\frac{1.05}{1.02}\right) = 14.05\% \\ \end{array}

$$

Making a similar adjustment to the stable period cost of capital yields a BR cost of capital of  $11.89\%$ . Finally, we adjust the stable growth rate to reflect the higher inflation rate in BR:

$$

\begin{array}{l} \text {S t a b l e g r o w t h r a t e} = (1 + \text {S t a b l e g r o w t h r a t e} _ {\mathrm {U S S}}) \frac {(1 + \text {E x p i n f l a t i o n} _ {\mathrm {B R}})}{(1 + \text {E x p i n f l a t i o n} _ {\mathrm {U S S}})} - 1 \\ = 1.03\left(\frac{1.05}{1.02}\right) = 6.03\% \\ \end{array}

$$

The terminal value in $R can then be estimated:

$$

\begin{array}{l} \text {T e r m a l} = \frac {\text {A f t e r - t a x o p e r a t i n g i n c o m e} _ {5} (1 + \mathrm {g} _ {\text {s t a b l e}}) (1 - \text {R e i n v e s t e m e n t r a t e})}{(\text {C o s t o f c a p i t a l} _ {\text {s t a b l e}} - \mathrm {g} _ {\text {s t a b l e}})} \\ = \frac {\mathbb {R} 8 , 3 5 5 (1 . 0 6 0 3) (1 - . 3 4 5 7)}{(. 1 1 8 9 - . 0 6 0 3)} = R \$ 9 6, 2 3 0 m i l l o n \\ \end{array}

$$

The value of Gerdau Steel's operating assets in BR can then be computed by discounting the BR cash flows back at the high growth period BR cost of capital of  $14.05\%$ :

<table><tr><td>Year</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td></tr><tr><td>FCFF (in R$)</td><td>R$ 2,316</td><td>R$2,539</td><td>R$2,782</td><td>R$3,049</td><td>R$ 3,342</td></tr><tr><td>Terminal value</td><td></td><td></td><td></td><td></td><td>R$96,230</td></tr><tr><td>Present value</td><td>R$ 2,031</td><td>R$1,952</td><td>R$1,875</td><td>R$1,802</td><td>R$51,601</td></tr><tr><td>Value of operating assets</td><td>R59,261</td><td></td><td></td><td></td><td></td></tr></table>

Converting the value into US$ at the prevailing exchange rate of 2.252 yields a dollar value for the operating assets of $26,315 million, very close to our dollar-based estimate of 26,996 million.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/03bebef854374f6c6bb819992dee52dc8f05ee74bef486a18023e2876825b9fd.jpg) fcffginzu.xls: This spreadsheet allows you to estimate the value of a firm using the FCFF approach.


# NET DEBT VERSUS GROSS DEBT

In valuing the companies in this chapter, we used total debt outstanding (gross debt) rather than net debt where cash was netted out against debt. What is the difference between the two approaches, and will the valuations from the two approaches agree?

A comparison of gross and net debt valuations reveals the differences in the way we approach the calculation of key inputs to the valuation, summarized as follows:

<table><tr><td></td><td>Gross Debt</td><td>Net Debt</td></tr><tr><td>Levered beta</td><td>Unlevered beta is levered using gross debt to market equity ratio.</td><td>Unlevered beta is levered using net debt to market equity ratio.</td></tr><tr><td>Cost of capital</td><td>Debt-to-capital ratio used is based on gross debt.</td><td>Debt-to-capital ratio used is based on net debt.</td></tr><tr><td>Treatment of cash and debt</td><td>Cash is added to value of operating assets and gross debt is subtracted to get to equity value.</td><td>Cash is not added back to operating assets and net debt is subtracted to get to equity value.</td></tr></table>

While working with net debt in valuation is not difficult to do, the more interesting question is whether the value that emerges will be the same as the value that would have been estimated using gross debt. In general the answer

(continued) is no, and the reason usually lies in the cost of debt used in the net debt valuation. Intuitively, what you are doing when you use net debt is break the firm into two parts—a cash business, which is funded 100 percent with riskless debt, and an operating business funded partly with risky debt. Carrying this to its logical conclusion, the cost of debt you would have for the operating business would be significantly higher than the firm's current cost of debt. This is because the current lenders to the firm will factor in the firm's cash holdings when setting the cost of debt.


To illustrate, assume that you have a firm with an overall value of $1 billion—$200 million in cash and $800 million in operating assets—with $400 million in debt and $600 million in equity. The firm's cost of debt is 7 percent, a 2 percent default spread over the risk-free rate of 5 percent; note that this cost of debt is set based on the firm's substantial cash holdings. If you net debt against cash, the firm would have $200 million in net debt and 600 million in equity. If you use the 7 percent cost of debt to value the firm now, you will overstate its value. Instead, the cost of debt you should use in the valuation is 9 percent:

Cost of debt on net debt  $=$  (Pretax cost of  $\text{debt}_{\text{gross debt}} \times$  Gross debt

$$

\begin{array}{l} - \text {R i s k - f r e e r a t e} _ {\text {n e t d e b t}} \times \text {C a s h}) / (\text {G r o s s d e b t} - \text {C a s h}) \\ = (. 0 7 \times 4 0 0 -. 0 5 \times 2 0 0) / (4 0 0 - 2 0 0) = . 0 9 \\ \end{array}

$$

In general, we would recommend using gross debt rather than net debt for two other reasons. First, the net debt can be a negative number if cash exceeds the gross debt. If this occurs, you should set the net debt to zero and consider the excess cash just as you would cash in a gross debt valuation. Second, maintaining a stable net debt ratio in a growing firm will require that cash balances increase as the firm value increases.

# Will Equity Value Be the Same under Firm and Equity Valuation?

This model, unlike the dividend discount model or the FCFE model, values the firm rather than equity. The value of equity, however, can be extracted from the value of the firm by subtracting the market value of outstanding debt. Since this model can be viewed as an alternative way of valuing equity, two questions arise: Why value the firm rather than equity? Will the values for equity obtained from the firm valuation approach be consistent with the values obtained from the equity valuation approaches described in the previous chapter?

The advantage of using the firm valuation approach is that cash flows relating to debt do not have to be considered explicitly since the FCFF is a predebt cash flow, while they have to be taken into account in estimating FCFE. In cases where the leverage is expected to change significantly over time, this is a significant time saver, since estimating new debt issues and debt repayments when leverage is changing can become increasingly messy the further into the future you go. The firm valuation approach does, however, require information about debt ratios and interest rates to estimate the weighted average cost of capital.

The value for equity obtained from the firm valuation and equity valuation approaches will be the same if you make consistent assumptions about financial leverage. Getting them to converge in practice is much more difficult. Let us begin with the simplest case—a no-growth, perpetual firm. Assume that the firm has $166.67 million in earnings before interest and taxes and a tax rate of 40 percent. Assume that the firm has equity with a market value of $600 million, with a cost of equity of 13.87 percent, and debt of 400 million, with a pretax cost of debt of 7 percent. The firm's cost of capital can be estimated as follows:


Cost of capital  $= 13.87\% (600 / 1,000) + 7\% (1 - .4)(400 / 1,000) = 10\%$

Value of the firm  $=$  Earnings before interest and taxes(1 - t)/Cost of capital

$$

= 1 6 6. 6 7 (1 -. 4) /. 1 0 = \$ 1, 0 0 0

$$

Note that the firm has no reinvestment and no growth. We can value equity in this firm by subtracting the value of debt:

Value of equity = Value of firm - Value of debt = \ $1,000 - \$ 400 = \$600 million

Now let us value the equity directly by estimating the net income:

Net income  $=$  (EBIT - Pretax cost of debt  $\times$  Debt)(1 - t)

$$

= (1 6 6. 6 7 - . 0 7 \times 4 0 0) (1 -. 4) = \$ 8 3. 2 0 2 \text {m i l l o n}

$$

The value of equity can be obtained by discounting this net income at the cost of equity:

Value of equity = Net income/Cost of equity = 83.202/.1387 = 600 million

Even this simple example works because of the following three assumptions made implicitly or explicitly during the valuation:

1. The values for debt and equity used to compute the cost of capital were equal to the values obtained in the valuation. Notwithstanding the circularity in reasoning—you need the cost of capital to obtain the values in the first place—it indicates that a cost of capital based on market value weights will not yield the same value for equity as an equity valuation model, if the firm is not fairly priced in the first place.
2. There are no extraordinary or nonoperating items that affect net income but not operating income. Thus, to get from operating to net income all we do is subtract interest expenses and taxes.
3. The interest expenses are equal to the pretax cost of debt multiplied by the market value of debt. If a firm has old debt on its books, with interest expenses that are different from this value, the two approaches will diverge.

If there is expected growth, the potential for inconsistency multiplies. You have to ensure that you borrow enough money to fund new investments to keep your debt ratio at a level consistent with what you are assuming when you compute the cost of capital.

# FIRM VALUATION: THE ADJUSTED PRESENT VALUE APPROACH

The adjusted present value (APV) approach begins with the value of the firm without debt. As debt is added to the firm, the net effect on value is examined by considering both the benefits and the costs of borrowing. To do this, it is assumed that the primary benefit of borrowing is a tax benefit, and that the most significant cost of borrowing is the added risk of bankruptcy.

# Mechanics of APV Valuation

We estimate the value of the firm in three steps:

1. Estimate the value of the firm with no leverage.
2. Consider the present value of the interest tax savings generated by borrowing a given amount of money.
3. Evaluate the effect of borrowing the amount on the probability that the firm will go bankrupt, and the expected cost of bankruptcy.

Value of Unlevered Firm The first step in this approach is the estimation of the value of the unlevered firm. This can be accomplished by valuing the firm as if it had no debt (i.e., by discounting the expected free cash flow to the firm at the unlevered cost of equity). In the special case where cash flows grow at a constant rate in perpetuity,

$$

\text {V a l u e} = \mathrm {E} (\mathrm {F C F F} _ {\mathrm {I}}) / (\rho_ {\mathrm {u}} - \mathrm {g})

$$ where  $\mathrm{FCFF}_1$  is the expected after-tax operating cash flow to the firm,  $\rho_{\mathrm{u}}$  is the unlevered cost of equity, and  $\mathbf{g}$  is the expected growth rate. In the more general case, you can value the firm using any set of growth assumptions you believe are reasonable for the firm.

The inputs needed for this valuation are the expected cash flows, growth rates, and the unlevered cost of equity. To estimate the unlevered cost of equity, we can draw on our earlier analysis and compute the unlevered beta of the firm:

$$
\beta_ {\text {u n l e v e r e d}} = \beta_ {\text {c u r r e n t}} / [ 1 + (1 - t) D / E ]
$$ where  $\beta_{\mathrm{unlevered}} = \mathrm{Unlevered}$  beta of the firm


$\beta_{\mathrm{current}} =$  Current equity beta of the firm

$\mathrm{t} =$  Tax rate for the firm

$\mathrm{D} / \mathrm{E} =$  Current debt/equity ratio

This unlevered beta can then be used to arrive at the unlevered cost of equity.

Expected Tax Benefit from Borrowing The second step in this approach is the calculation of the expected tax benefit from a given level of debt. This tax benefit is a function of the tax rate and interest payments of the firm and is discounted at the cost of debt to reflect the riskiness of this cash flow. If the tax savings are viewed as a perpetuity,

Value of tax benefits  $=$  (Tax rate  $\times$  Cost of debt  $\times$  Debt)/Cost of debt
$= \mathrm{Tax rate} \times \mathrm{Debt} = t_{\mathrm{c}} \mathrm{D}$

The tax rate used here is the firm's marginal tax rate, and it is assumed to stay constant over time. If you anticipate the tax rate changing over time, you can still compute the present value of tax benefits over time, but you cannot use the perpetual growth equation cited earlier. In addition, you would have to modify this equation if the current interest expenses do not reflect the current cost of debt.

Estimating Expected Bankruptcy Costs and Net Effect The third step is to evaluate the effect of the given level of debt on the default risk of the firm and on expected bankruptcy costs. In theory, at least, this requires the estimation of the probability of default with the additional debt and the direct and indirect cost of bankruptcy. If  $\pi_{\mathrm{a}}$  is the probability of default after the additional debt and BC is the present value of the bankruptcy cost, the present value (PV) of expected bankruptcy cost can be estimated:

PV of expected bankruptcy cost  $=$  Probability of bankruptcy  $\times$  PV of bankruptcy cost

$$

= \pi_ {\mathrm {a}} \mathrm {B C}

$$

This step of the adjusted present value approach poses the most significant estimation problems, since neither the probability of bankruptcy nor the bankruptcy cost can be estimated directly.

There are two basic ways in which the probability of bankruptcy can be estimated indirectly. One is to estimate a bond rating and use the empirical estimates of default probabilities for the rating. For instance, Table 15.2, extracted from a study by Altman, summarizes the probability of default over 10 years by bond rating class in using the 1999 to 2008 time period.[6]

TABLE 15.2 Ratings and Probability of Default

<table><tr><td>Rating</td><td>Probability of Default</td></tr><tr><td>AAA</td><td>0.07\%</td></tr><tr><td>AA</td><td>0.51\%</td></tr><tr><td>A+</td><td>0.60\%</td></tr><tr><td>A</td><td>0.66\%</td></tr><tr><td>A-</td><td>2.50\%</td></tr><tr><td>BBB</td><td>7.54\%</td></tr><tr><td>BB+</td><td>10.00\%</td></tr><tr><td>BB</td><td>16.63\%</td></tr><tr><td>B+</td><td>25.00\%</td></tr><tr><td>B</td><td>36.80\%</td></tr><tr><td>B-</td><td>45.00\%</td></tr><tr><td>CCC</td><td>59.01\%</td></tr><tr><td>CC</td><td>70.00\%</td></tr><tr><td>C</td><td>85.00\%</td></tr><tr><td>D</td><td>100.00\%</td></tr></table>

Source: Altman (2009).

The other way is to use a statistical approach such as a probit to estimate the probability of default, based on the firm's observable characteristics, at each level of debt.

The bankruptcy cost can be estimated, albeit with considerable error, from studies that have looked at the magnitude of this cost in actual bankruptcies. Research that has looked at the direct costs of bankruptcy concludes that they are small relative to firm value. The indirect costs of bankruptcy can be substantial, but the costs vary widely across firms. Shapiro (1989) and Titman (1984) speculate that the indirect costs could be as large as 25 to 30 percent of firm value but provide no direct evidence of the costs.

# ILLUSTRATION 15.5: Valuing a Company Using APV: The Leveraged Acquisition of J. Crew

J. Crew is a U.S. retailer that sells clothes made under its brand name through its own stores and online. In 2010, the firm was acquired in a leveraged deal by Mickey Drexler, its CEO, and two private equity firms—TPG and Leonard Green—for $2.7 billion, with about $1.85 billion coming from debt (with a rating of BB and a pretax cost of debt of 7\%).

To assess the value of the deal using the APV approach, we first value the firm as an all-equity funded (unlevered) firm. To estimate the value, we first computed a cost of equity using an unlevered beta of 1.00 for specialty retailers, in conjunction with a risk-free rate of  $3.5\%$  and mature market premium of  $5\%$ :

$$

\text{Unlevered cost of equity} = 3.5 \% +1.00(5 \%) = 8.5 \%

$$

J. Crew generated  $230 million in operating income on revenues of$ 1,722 million in 2010. We assume a  $35\%$  tax rate and a growth rate of  $3.5\%$  in perpetuity, with a return on capital of  $14\%$ , resulting in the following:

$$

\text{Reinvestment rate in stable growth} = \mathrm {g / ROC} = 3.5 \% / 14 \% = 25 \%

$$

$$

\begin{array}{l} \text {F C F F i n m o s t r e c e p t y e a r} = \text {E B I T} (1 - t) (1 - \text {R e i n v e s t m e n t r a t e}) \\ = 2 3 0 (1 -. 3 5) (1 -. 2 5) = \$ 1 1 2. 1 2 5 \text {m i l l i o n} \\ \end{array}

$$

$$

\begin{array}{l} \text {U n l e v e r e d f i r m v a l u e} = \frac {\text {E x p e c t e d F C F F n e x t y e a r}}{\text {U n l e v e r e d c o s t o f e q u i t y - S t a b l e g r o w t h r a t e}} - 1 \\ = \frac {\mathbb {S} 1 2 . 1 2 5 (1 . 0 3 5)}{. 0 8 5 - . 0 3 5} = \mathbb {S} 2, 3 2 1 m i l l i o n \\ \end{array}

$$

To estimate the tax benefits from debt, we assume that a debt schedule by which the dollar debt would be repaid in equal annual increments to a debt level of 500 million in year 10 and beyond. Using the 35\% tax rate and the pretax cost of debt, we compute the interest expenses and tax benefits each year, and discount these benefits back to today using the pretax cost of debt as the discount rate.

<table><tr><td>Year</td><td>Debt Due at Start of Year</td><td>Interest Expense</td><td>Tax Benefit</td><td>PV @ Cost of Debt</td></tr><tr><td>1</td><td>$1,850.00</td><td>$129.50</td><td>$45.33</td><td>$ 42.36</td></tr><tr><td>2</td><td>$1,700.00</td><td>$119.00</td><td>$41.65</td><td>$ 36.38</td></tr><tr><td>3</td><td>$1,550.00</td><td>$108.50</td><td>$37.98</td><td>$ 31.00</td></tr><tr><td>4</td><td>$1,400.00</td><td>$ 98.00</td><td>$34.30</td><td>$ 26.17</td></tr><tr><td>5</td><td>$1,250.00</td><td>$ 87.50</td><td>$30.63</td><td>$ 21.84</td></tr><tr><td>6</td><td>$1,100.00</td><td>$ 77.00</td><td>$26.95</td><td>$ 17.96</td></tr><tr><td>7</td><td>$ 950.00</td><td>$ 66.50</td><td>$23.28</td><td>$ 14.49</td></tr><tr><td>8</td><td>$ 800.00</td><td>$ 56.00</td><td>$19.60</td><td>$ 11.41</td></tr><tr><td>9</td><td>$ 650.00</td><td>$ 45.50</td><td>$15.93</td><td>$ 8.66</td></tr><tr><td>10</td><td>$ 500.00</td><td>$ 35.00</td><td>$12.25</td><td>$ 6.23</td></tr><tr><td>In perpetuity</td><td>$ 500.00</td><td>$ 35.00</td><td>$12.25</td><td>$ 88.96</td></tr><tr><td>Total</td><td></td><td></td><td></td><td>305.45</td></tr></table>

Note that the value of tax benefits in perpetuity is computed in two steps. First, we compute the present value of  $12.25 million in tax savings in perpetuity ($ 12.25/.07 = $175 million). Next, we discount that value back to today at the pretax cost of debt ( $175/1.07^{10} =88.96 million)

As the final piece of the analysis, we assume that bankruptcy costs (BC), direct and indirect, would amount to  $30\%$  of firm value and that the high debt level taken in the deal increases the probability of bankruptcy  $(\pi_{\mathrm{BC}})$  to  $20\%$ . The expected bankruptcy cost is then:

$$

\begin{array}{l} \text {E x p e c t e d} = \left(\text {U n l e v e r e d f i r m v a l u e} + \text {P V o f t a x b e n e f i t s}\right) \times \mathrm {B C} \times \pi_ {\mathrm {B C}} \\ = (\mathbb {S} 2, 3 2 1 + \mathbb {S} 3 0 5) \times . 3 0 \times 2 0 = \mathbb {S} 1 5 8 m i l l i o n \\ \end{array}

$$

The value for J. Crew can now be computed using all three components:

Value of J. Crew = Unlevered firm value + PV of tax benefits from debt – Expected bankruptcy costs

$$

= \$ 2,321 + \$ 305 - \$ 158 = \$ 2,469 \text {m i l l o n}

$$

At 2.7 billion, the private equity investors are paying too much for the firm unless they can increase operating income substantially.

# Cost of Capital versus APV Valuation

In an APV valuation, the value of a levered firm is obtained by adding the net effect of debt to the unlevered firm value.

$$

\text {V a l u e o f l e v e r e d f i r m} = \mathrm {F C F F} _ {\mathrm {o}} (1 + \mathrm {g}) / (\rho_ {\mathrm {u}} - \mathrm {g}) + \mathrm {t} _ {\mathrm {c}} \mathrm {D} - \pi_ {\mathrm {a}} \mathrm {B C}

$$

In the cost of capital approach, the effects of leverage show up in the cost of capital, with the tax benefit incorporated in the after-tax cost of debt and the bankruptcy costs in both the levered beta and the pretax cost of debt. Will the two approaches yield the same value? Not necessarily. The first reason for differences is that the models consider bankruptcy costs very differently, with the adjusted present value approach providing more flexibility in allowing you to consider indirect bankruptcy costs. To the extent that these costs do not show up or show up inadequately in the pretax cost of debt, the APV approach will yield a more conservative estimate of value. The second reason is that the APV approach considers the tax benefit from a dollar debt value, usually based on existing debt. The cost of capital approach estimates the tax benefit from a debt ratio that may require the firm to borrow increasing amounts in the future. For instance, assuming a market debt-to-capital ratio of 30 percent in perpetuity for a growing firm will require it to borrow more in the future, and the tax benefit from expected future borrowings is incorporated into value today. Generally speaking, the cost-of-capital approach is a more practical choice when valuing ongoing firms that are not going through contortions on financial leverage; it is easier to work with a debt ratio than with dollar-debt levels. The APV approach is

# APV WITHOUT BANKRUPTCY COSTS

There are many who believe that adjusted present value is a more flexible way of approaching valuation than traditional discounted cash flow models. This may be true in a generic sense, but APV valuation in practice has significant flaws. The first and most important is that most practitioners who use the adjusted present value model ignore expected bankruptcy costs. Adding the tax benefits to unlevered firm value to get to levered firm value makes debt seem like an unmixed blessing. Firm value will be overstated, especially at very high debt ratios, where the cost of bankruptcy is clearly not zero.

more useful for transactions that are funded disproportionately with debt and where debt repayment schedules are negotiated or known; this is why it has acquired a footing in leveraged-buyout circles. Finally, there is a subtle distinction in how the tax benefits from debt are incorporated in value in the two approaches. While the conventional APV approach uses the pre-tax cost of debt as the discount rate to estimate the value of the tax savings from debt, there are variations on the APV that discount the tax savings back at the cost of capital or the unlevered cost of equity that yield values that are closer to those obtained in the cost of capital approach.

# EFFECT OF LEVERAGE ON FIRM VALUE

Both the cost of capital approach and the APV approach make the value of a firm a function of its leverage. It follows directly, then, that there is some mix of debt and equity at which firm value is maximized. The rest of this chapter considers how best to make this link.

# Cost of Capital and Optimal Leverage

In order to understand the relationship between the cost of capital and optimal capital structure, we rely on the relationship between firm value and the cost of capital. The earlier section noted that the value of the entire firm can be estimated by discounting the expected cash flows to the firm at the firm's cost of capital.

The firm value can then be written as follows:

$$

\text {V a l u e o f f i r m} = \sum_ {t = 1} ^ {t = n} \frac {\mathrm {C F t o f i r m} _ {t}}{(1 + \mathrm {W A C C}) ^ {t}}

$$ and is a function of the firm's cash flows and its cost of capital. If we assume that the cash flows to the firm are unaffected by the choice of financing mix, and the cost of capital is reduced as a consequence of changing the financing mix, the value of the firm will increase. If the objective in choosing the financing mix for the firm is the maximization of firm value, we can accomplish it, in this case, by minimizing the cost of capital. In the more general case where the cash flows to the firm are a function of the debt-equity mix, the optimal financing mix is the mix that maximizes firm value.[8]


# ILLUSTRATION 15.6: WACC, Firm Value, and Leverage

Assume that you are given the costs of equity and debt at different debt levels for Strunks Inc., a leading manufacturer of chocolates and other candies, and that the cash flows to this firm are currently 200 million. Strunks is in a relatively stable market, and these cash flows are expected to grow at 6\% forever and to be unaffected by the debt ratio of the firm. The cost of capital schedule is provided in the following table, along with the value of the firm at each level of debt.

<table><tr><td>D/(D+E)</td><td>Cost of Equity</td><td>Cost of Debt</td><td>WACC</td><td>Firm Value</td></tr><tr><td>0\%</td><td>10.50\%</td><td>4.80\%</td><td>10.50\%</td><td>$4,711</td></tr><tr><td>10\%</td><td>11.00\%</td><td>5.10\%</td><td>10.41\%</td><td>$4,807</td></tr><tr><td>20\%</td><td>11.60\%</td><td>5.40\%</td><td>10.36\%</td><td>$4,862</td></tr><tr><td>30\%</td><td>12.30\%</td><td>5.52\%</td><td>10.27\%</td><td>$4,970</td></tr><tr><td>40\%</td><td>13.10\%</td><td>5.70\%</td><td>10.14\%</td><td>$5,121</td></tr><tr><td>50\%</td><td>14.00\%</td><td>6.30\%</td><td>10.15\%</td><td>$5,108</td></tr><tr><td>60\%</td><td>15.00\%</td><td>7.20\%</td><td>10.32\%</td><td>$4,907</td></tr><tr><td>70\%</td><td>16.10\%</td><td>8.10\%</td><td>10.50\%</td><td>$4,711</td></tr><tr><td>80\%</td><td>17.20\%</td><td>9.00\%</td><td>10.64\%</td><td>$4,569</td></tr><tr><td>90\%</td><td>18.40\%</td><td>10.20\%</td><td>11.02\%</td><td>$4,223</td></tr><tr><td>100\%</td><td>19.70\%</td><td>11.40\%</td><td>11.40\%</td><td>3,926</td></tr></table>

Note that:

Value of firm = Cash flows to firm × (1 + g)/(Cost of capital - g) = 200 × 1.06/(Cost of capital - .06)

The value of the firm increases as the cost of capital decreases, and decreases as the cost of capital increases. This is illustrated in Figure 15.2. While this illustration makes the choice of an optimal financing mix seem easy, it obscures problems that will arise in its practice. First, we typically do not have the benefit of having the entire schedule of costs of financing prior to an analysis. In most cases, the only level of debt at which we have information on the cost of debt and equity financing is the current level. Second, the analysis assumes implicitly that the level of operating income of the firm is unaffected by the financing mix of the firm and, consequently, by the default risk (or bond rating) for the firm. While this may be reasonable in some cases, it will not be in others. Firms that borrow too much might find that there are indirect bankruptcy costs that affect revenues and operating income.

Steps in Cost of Capital Approach We need three basic inputs to compute the cost of capital—the cost of equity, the after-tax cost of debt, and the weights on debt and equity. The costs of equity and debt change as the debt ratio changes, and the primary challenge of this approach is in estimating each of these inputs.

Let us begin with the cost of equity. We argued that the beta of equity will change as the debt ratio changes. In fact, we estimated the levered beta as a function of the market debt to equity ratio of a firm, the unlevered beta, and the firm's marginal tax rate:

$$

\beta_ {\text {l e v e r e d}} = \beta_ {\text {u n l e v e r e d}} [ 1 + (1 - t) \text {D e b t} / \text {E q u i t y} ]

$$

Thus, if we can estimate the unlevered beta for a firm, we can use it to estimate the levered beta of the firm at every debt ratio. This levered beta can then be used to compute the cost of equity at each debt ratio.

$$

\text {C o s t} = \text {R i s k - f r e e r a t e} + \beta_ {\text {l e v e r e d}} (\text {R i s k p r e m i u m})

$$

FIGURE 15.2 Cost of Capital and Firm Value
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/7a943ddfdf267080c71f80e8e79b41b1a04ff540445a03a4641b84723339bc5f.jpg)
Source: Applied Corporate Finance, Third Edition, by Aswath Damodaran, copyright © 2010 by John Wiley & Sons, Inc. This material is used by permission of John Wiley & Sons, Inc.

The cost of debt for a firm is a function of the firm's default risk. As firms borrow more, their default risk will increase and so will the cost of debt. If we use bond ratings as our measure of default risk, we can estimate the cost of debt in three steps. First, estimate a firm's dollar debt and interest expenses at each debt ratio; as firms increase their debt ratio, both dollar debt and interest expenses will rise. Second, at each debt level, compute a financial ratio or ratios that measure default risk and use the ratio(s) to estimate a rating for the firm; again, as firms borrow more, this rating will decline. Third, a default spread, based on the estimated rating, is added to the risk-free rate to arrive at the pretax cost of debt. Applying the marginal tax rate to this pretax cost yields an after-tax cost of debt.

Once we estimate the costs of equity and debt at each debt level, we weight them based on the proportions used of each to estimate the cost of capital. While we have not explicitly allowed for a preferred stock component in this process, we can have preferred stock as a part of capital. However, we have to keep the preferred stock portion fixed, while changing the weights on debt and equity. The debt ratio at which the cost of capital is minimized is the optimal debt ratio.

In this approach, the effect on firm value of changing the capital structure is isolated by keeping the operating income fixed and varying only the cost of capital. In practical terms, this requires us to make two assumptions. First, the debt ratio is decreased by raising new equity and retiring debt; conversely, the debt ratio is increased by borrowing money and buying back stock. This process is called recapitalization. Second, the pretax operating income is assumed to be unaffected by the firm's financing mix and, by extension, its bond rating. If the operating income changes with a firm's default risk, the basic analysis will not change, but minimizing the cost of capital may not be the optimal course of action, since the value of the firm is determined by both the cash flows and the cost of capital. The value of the firm will have to be computed at each debt level and the optimal debt ratio will be the one that maximizes firm value.


# ILLUSTRATION 15.7: Analyzing the Capital Structure for Disney: May 2009

The cost of capital approach can be used to find the optimal capital structure for a firm, as we will for Disney in May 2009. Disney had  $14,962 million in interest-bearing debt on its books and adding the present value of operating lease commitments of$ 1,720 million to this value, we arrive at a total market value for the debt of $16,682 million. The market value of equity at the same time was  $45,193 million; the market price per share was24.34, and there were 1,856.752 million shares outstanding. Proportionally, 26.96\% of the overall financing mix was debt, and the remaining 73.04\% was equity.

The unlevered beta for Disney's stock in May 2009, estimated by breaking it down into its constituent businesses and weighting the unlevered betas for each business, was 0.7333.

<table><tr><td>Business</td><td>Revenues in 2008</td><td>EV/Sales</td><td>Estimated Value</td><td>Firm Value Proportion</td><td>Unlevered Beta</td></tr><tr><td>Media networks</td><td>$16,116</td><td>2.13</td><td>$34,328</td><td>58.92\%</td><td>0.7056</td></tr><tr><td>Parks and resorts</td><td>$11,504</td><td>1.51</td><td>$17,408</td><td>29.88\%</td><td>0.5849</td></tr><tr><td>Studio entertainment</td><td>$7,348</td><td>0.78</td><td>$5,755</td><td>9.88\%</td><td>1.3027</td></tr><tr><td>Consumer products</td><td>$2,875</td><td>0.27</td><td>$768</td><td>1.32\%</td><td>1.0690</td></tr><tr><td>Disney operations</td><td>$37,843</td><td></td><td>$58,259</td><td>100.00\%</td><td>0.7333</td></tr></table>

The Treasury bond rate at that time was  $3.5\%$ . Using an estimated equity risk premium of  $6\%$ , we estimated the cost of equity for Disney to be  $8.91\%$ :

Levered beta  $= 0.7333$  [1 + (1 - .38)(16,682/45,193)] = 0.9011

Cost of equity  $=$  Risk-free rate + Beta × Market premium  $= 3.5\% + 0.9011(6\%) = 8.91\%$

Disney's bond rating in May 2009 was A, and based on this rating, the estimated pretax cost of debt for Disney is  $6\%$ . Using a marginal tax rate of  $38\%$ , we estimate the after-tax cost of debt for Disney to be  $3.72\%$ .

$$

\begin{array}{l} A f t e r - t a x \text {c o s t} = \text {P r e t a x i n t e r s t r a t e} (1 - \text {T a x r a t e}) \\ = 6.00\% (1 - 0.38) = 3.72\% \\ \end{array}

$$

The cost of capital is calculated using these costs and the weights based on market value:

$$

\begin{array}{l} \text {C o s t} = \text {C o s t} \quad \frac {\text {E q u i t y}}{\text {D e b t} + \text {E q u i t y}} + \text {C o s t} \quad (1 - t) \frac {\text {D e b t}}{\text {D e b t} + \text {E q u i t y}} \\ = 8.91\% \left(\frac{45.193}{16,682 + 45,193}\right) + 3.72\% \left(\frac{16,682}{16,682 + 45,193}\right) = 7.51\% \\ \end{array}

$$

# DISNEY'S COST OF EQUITY AND LEVERAGE

The cost of equity for Disney at different debt ratios can be computed using the unlevered beta of the firm, and the debt equity ratio at each level of debt. We use the levered betas that emerge to estimate the cost of equity. The first step in this process is to compute the levered beta at each debt ratio, using this unlevered beta and Disney's marginal tax rate of  $38\%$ :


$$

\text {L e v e r e d} = 0. 7 3 3 3 [ 1 + (1 - . 3 8) (\text {D e b t / E q u i t y}) ]

$$

We continue to use the Treasury bond rate of  $3.5\%$  and the market premium of  $6\%$  to compute the cost of equity at each level of debt. If we keep the tax rate constant at  $38\%$ , we obtain the levered betas for Disney in the following table:

Levered Beta and Cost of Equity: Disney

<table><tr><td>Debt-to-Capital Ratio</td><td>D/E Ratio</td><td>Levered Beta</td><td>Cost of Equity</td></tr><tr><td>0\%</td><td>0.00\%</td><td>0.7333</td><td>7.90\%</td></tr><tr><td>10\%</td><td>11.11\%</td><td>0.7838</td><td>8.20\%</td></tr><tr><td>20\%</td><td>25.00\%</td><td>0.8470</td><td>8.58\%</td></tr><tr><td>30\%</td><td>42.86\%</td><td>0.9281</td><td>9.07\%</td></tr><tr><td>40\%</td><td>66.67\%</td><td>1.0364</td><td>9.72\%</td></tr><tr><td>50\%</td><td>100.00\%</td><td>1.1879</td><td>10.63\%</td></tr><tr><td>60\%</td><td>150.00\%</td><td>1.4153</td><td>11.99\%</td></tr><tr><td>70\%</td><td>233.33\%</td><td>1.7941</td><td>14.26\%</td></tr><tr><td>80\%</td><td>400.00\%</td><td>2.5519</td><td>18.81\%</td></tr><tr><td>90\%</td><td>900.00\%</td><td>4.8251</td><td>32.45\%</td></tr></table>

In calculating the levered beta in this table, we assumed that all market risk is borne by the equity investors (this may be unrealistic) especially at higher levels of debt and that the firm will be able to get the full tax benefits of interest expenses even at very high debt ratios. We will also consider an alternative estimate of levered betas that apportions some of the market risk to the debt:

$$

\beta_ {\text {l e v e r e d}} = \beta_ {u} [ 1 + (1 - t) D / E ] - \beta_ {\text {d e b t}} (1 - t) D / E

$$

The beta of debt can be based on the rating of the bond, estimated by regressing past returns on bonds in each rating class against returns on a market index or backed out of the default spread. The levered betas estimated using this approach will generally be lower than those estimated with the conventional model. We will also examine whether the full benefits of interest expenses will accrue at higher debt ratios.

# DISNEY'S COST OF DEBT AND LEVERAGE

There are several financial ratios that are correlated with bond ratings, and we face two choices. One is to build a model that includes several financial ratios to estimate the synthetic ratings at each debt ratio. In addition to being more labor and data intensive, the approach will make the ratings process less transparent and more difficult to decipher. The other is to stick with the simplistic approach that we developed in Chapter 8, of linking the rating to the interest coverage ratio, with the ratio defined as:

$$

\text {I n t e r e s t c o v e r a g e r a t i o} = \frac {\text {E a r n i n g s b e f o r e i n t e r e s t a n d t a x e s}}{\text {I n t e r e s t e x p e n s e s}}

$$

We will stick with the simpler approach for three reasons. First, we are not aiming for precision in the cost of debt, but an approximation. Given that the more complex approaches also give approximations, we will tilt in favor of transparency. Second, there is significant correlation not only between the interest coverage ratio and bond ratings but also between the interest coverage ratio and other ratios used in analysis, such as the debt coverage ratio and the funds flow ratios. In other words, we may be adding little by adding other ratios that are correlated with interest coverage ratios, including EBITDA/fixed charges, to the mix. Third, the interest coverage ratio changes as a firm changes its financing mix and decreases as the debt ratio increases, a key requirement since we need the cost of debt to change as the debt ratio changes.

To make our estimates of the synthetic rating, we will use the lookup table that we introduced in Chapter 8 for large market capitalization firms (since Disney's market capitalization is greater than 5 billion) and use the default spreads from early 2009 to estimate the pre tax cost of debt. The following table reproduces those numbers:

Interest Coverage Ratios, Ratings and Default Spreads—Early 2009

<table><tr><td>Interest Coverage Ratio</td><td>Rating</td><td>Typical Default Spread</td></tr><tr><td>&gt;8.5</td><td>AAA</td><td>1.25\%</td></tr><tr><td>6.5–8.5</td><td>AA</td><td>1.75\%</td></tr><tr><td>5.5–6.5</td><td>A+</td><td>2.25\%</td></tr><tr><td>4.25–5.5</td><td>A</td><td>2.50\%</td></tr><tr><td>3.0–4.25</td><td>A-</td><td>3.00\%</td></tr><tr><td>2.5–3.0</td><td>BBB</td><td>3.50\%</td></tr><tr><td>2.25–2.5</td><td>BB+</td><td>4.25\%</td></tr><tr><td>2.0–2.25</td><td>BB</td><td>5.00\%</td></tr><tr><td>1.75–2.0</td><td>B+</td><td>6.00\%</td></tr><tr><td>1.5–1.75</td><td>B</td><td>7.25\%</td></tr><tr><td>1.25–1.5</td><td>B-</td><td>8.50\%</td></tr><tr><td>0.8–1.25</td><td>CCC</td><td>10.00\%</td></tr><tr><td>0.65–0.8</td><td>CC</td><td>12.00\%</td></tr><tr><td>0.2–0.65</td><td>C</td><td>15.00\%</td></tr><tr><td>&lt;0.2</td><td>D</td><td>20.00\%</td></tr></table>

Source: Capital IQ; BondsOnline.com.

Using this table as a guideline, a firm with an interest coverage ratio of 2.75 would have a rating of BBB and a default spread of  $3.50\%$ , over the risk-free rate.

Because Disney's capacity to borrow is determined by its earnings power, we will begin by looking at key numbers from the company's income statements for the most recent fiscal year (July 2007-June 2008) and for the last four quarters (calendar year 2008) in the table.

Disney's Key Operating Numbers

<table><tr><td></td><td>Last Fiscal Year</td><td>Trailing 12 Months</td></tr><tr><td>Revenues</td><td>$37,843</td><td>$36,990</td></tr><tr><td>EBITDA</td><td>$8,986</td><td>$8,319</td></tr><tr><td>Depreciation and amortization</td><td>$1,582</td><td>$1,593</td></tr><tr><td>EBIT</td><td>$7,404</td><td>$6,726</td></tr><tr><td>Interest expenses</td><td>$712</td><td>$728</td></tr><tr><td>EBITDA (adjusted for leases)</td><td>$9,989</td><td>$8,422</td></tr><tr><td>EBIT (adjusted for leases)</td><td>$7,708</td><td>$6,829</td></tr><tr><td>Interest expenses (adjusted for leases)</td><td>$815</td><td>$831</td></tr></table>

Note that converting leases to debt affects both the operating income and the interest expense; the imputed interest expense on the lease debt is added to both the operating income and the interest expense numbers. Since the trailing 12-month figures represent more recent information, we will use those numbers in assessing Disney's optimal debt ratio. Based on the EBIT (adjusted for leases) of $6,829 million and interest expenses of $831 million, Disney has an interest coverage ratio of 8.22 and should command a rating of AA, two notches above its actual rating of A.

To compute Disney's ratings at different debt levels, we start by assessing the dollar debt that Disney will need to issue to get to the specified debt ratio. This can be accomplished by multiplying the total market value of the firm today by the desired debt-to-capital ratio. To illustrate, Disney's dollar debt at a  $10\%$  debt ratio will be 6,188 million, computed thus:

Value of Disney = Current market value of equity + Current market value of debt

$= 45,193 + \$  16,682 = \ $61,875$  million

$ Debt at 10\% debt-to-capital ratio = 10\% of $61,875 = 6,188 million

The second step in the process is to compute the interest expense that Disney will have at this debt level, by multiplying the dollar debt by the pretax cost of borrowing at that debt ratio. The interest expense is then used to compute an interest coverage ratio, which is employed to compute a synthetic rating. The resulting default spread, based on the rating, can be obtained from Table 8.2 in Chapter 8, and adding the default spread to the risk-free rate yields a pretax cost of borrowing. The following table estimates the interest expenses, interest coverage ratios, and bond ratings for Disney at  $0\%$  and  $10\%$  debt ratios, at the existing level of operating income.

Effect of Moving to Higher Debt Ratios: Disney

<table><tr><td>D/(D+E)</td><td>0.00\%</td><td>10.00\%</td></tr><tr><td>D/E</td><td>0.00\%</td><td>11.11\%</td></tr><tr><td>$ Debt</td><td>$ 0</td><td>$6,188</td></tr><tr><td>EBITDA</td><td>$8,422</td><td>$8,422</td></tr><tr><td>Depreciation</td><td>$1,593</td><td>$1,593</td></tr><tr><td>EBIT</td><td>$6,829</td><td>$6,829</td></tr><tr><td>Interest</td><td>$ 0</td><td>294</td></tr><tr><td>Pretax coverage</td><td>∞</td><td>23.24</td></tr><tr><td>Likely rating</td><td>AAA</td><td>AAA</td></tr><tr><td>Pretax cost of debt</td><td>4.75\%</td><td>4.75\%</td></tr></table>

Note that the EBITDA and EBIT remain fixed as the debt ratio changes. We ensure this by using the proceeds from the debt to buy back stock, thus leaving operating assets untouched and isolating the effect of changing the debt ratio.

There is circular reasoning involved in estimating the interest expense. The interest rate is needed to calculate the interest coverage ratio, and the coverage ratio is necessary to compute the interest rate. To get around the problem, we begin our analysis by assuming that Disney could borrow 6,188 billion at the AAA rate of 4.75\%; we then compute an interest expense and interest coverage ratio using that rate. At the 10\% debt ratio, our life is simplified by the fact that the rating remained unchanged at AAA. To illustrate a more difficult step-up in debt, consider the change in the debt ratio from 20\% to 30\%:

<table><tr><td></td><td></td><td>Iteration 1(Debt @AAA Rate)</td><td>Iteration 2(Debt @AA Rate)</td></tr><tr><td>D/(D+E)</td><td>20.00\%</td><td>30.00\%</td><td>30.00\%</td></tr><tr><td>D/E</td><td>25.00\%</td><td>42.86\%</td><td>42.86\%</td></tr><tr><td>$ Debt</td><td>$12,375</td><td>$18,563</td><td>$18,563</td></tr><tr><td>EBITDA</td><td>$8,422</td><td>$8,422</td><td>$8,422</td></tr><tr><td>Depreciation</td><td>$1,593</td><td>$1,593</td><td>$1,593</td></tr><tr><td>EBIT</td><td>$6,829</td><td>$6,829</td><td>$6,829</td></tr><tr><td>Interest</td><td>$588</td><td>18,563 × .0475 = $881</td><td>18,563 × .0525 = $974</td></tr><tr><td>Pretax coverage</td><td>11.62</td><td>7.74</td><td>7.01</td></tr><tr><td>Likely rating</td><td>AAA</td><td>AA</td><td>AA</td></tr><tr><td>Pretax cost of debt</td><td>4.75\%</td><td>5.25\%</td><td>5.25\%</td></tr></table>

While the initial estimate of the interest expenses at the  $30\%$  debt ratio reflects the AAA rating and  $4.75\%$  interest rate) that the firm enjoyed at the  $20\%$  debt ratio, the resulting interest coverage ratio of 7.74 pushes the rating down to AA and the interest rate to  $5.25\%$ . Consequently, we have to recompute the interest expenses at the higher rate (in iteration 2) and reach steady state: The interest rate that we use matches up to the estimated interest rate.[11] This process is repeated for each level of debt from  $10\%$  to  $90\%$ , and the iterated after-tax costs of debt are obtained at each level of debt in the following table:

Disney: Cost of Debt and Debt Ratios

<table><tr><td>Debt Ratio</td><td>$ Debt</td><td>Interest Expense</td><td>Interest Coverage Ratio</td><td>Bond Rating</td><td>Interest Rate on Debt</td><td>Tax Rate</td><td>After-Tax Cost of Debt</td></tr><tr><td>0\%</td><td>$ 0</td><td>$ 0</td><td>∞</td><td>AAA</td><td>4.75\%</td><td>38.00\%</td><td>2.95\%</td></tr><tr><td>10\%</td><td>$ 6,188</td><td>$ 294</td><td>23.24</td><td>AAA</td><td>4.75\%</td><td>38.00\%</td><td>2.95\%</td></tr><tr><td>20\%</td><td>$12,375</td><td>$ 588</td><td>11.62</td><td>AAA</td><td>4.75\%</td><td>38.00\%</td><td>2.95\%</td></tr><tr><td>30\%</td><td>$18,563</td><td>$ 975</td><td>7.01</td><td>AA</td><td>5.25\%</td><td>38.00\%</td><td>3.26\%</td></tr><tr><td>40\%</td><td>$24,750</td><td>$1,485</td><td>4.60</td><td>A</td><td>6.00\%</td><td>38.00\%</td><td>3.72\%</td></tr><tr><td>50\%</td><td>$30,938</td><td>$2,011</td><td>3.40</td><td>A-</td><td>6.50\%</td><td>38.00\%</td><td>4.03\%</td></tr><tr><td>60\%</td><td>$37,125</td><td>$2,599</td><td>2.63</td><td>BBB</td><td>7.00\%</td><td>38.00\%</td><td>4.34\%</td></tr><tr><td>70\%</td><td>$43,313</td><td>$5,198</td><td>1.31</td><td>B-</td><td>12.00\%</td><td>38.00\%</td><td>7.44\%</td></tr><tr><td>80\%</td><td>$49,500</td><td>$6,683</td><td>1.02</td><td>CCC</td><td>13.50\%</td><td>38.00\%</td><td>8.37\%</td></tr><tr><td>90\%</td><td>$55,688</td><td>7,518</td><td>0.91</td><td>CCC</td><td>13.50\%</td><td>34.52\%</td><td>8.84\%</td></tr></table>

Note that the interest expenses increase more than proportionately as the debt increases, since the cost of debt rises with the debt ratio. There are three points to make about these computations.

1. At each debt ratio, we compute the dollar value of debt by multiplying the debt ratio by the existing market value of the firm (61,875 million). In reality, the value of the firm will change as the cost of capital changes and the dollar debt that we will need to get to a specified debt ratio, say 30\%, will be different from the values that we have estimated. The reason that we have not tried to incorporate this effect is that it leads to more circularity in our computations, since the value at each debt ratio is a function of the savings from the interest expenses at that debt ratio, which in turn will depend on the value.
2. We assume that at every debt level, all existing debt will be refinanced at the new interest rate that will prevail after the capital structure change. For instance, Disney's existing debt, which has an A rating, is assumed to be refinanced at the interest rate corresponding to an A- rating when Disney moves to a  $50\%$  debt ratio. This is done for two reasons. The first is that existing debt holders might have protective covenants that require a renegotiation of interest rates on the debt.[12] The second is that the refinancing eliminates "wealth expropriation" effects—the effects of stockholders appropriating wealth from bondholders when debt is increased, and vice versa when debt is reduced. If firms can retain old debt at lower rates while borrowing more and becoming riskier, the lenders of the old debt will lose value. If we lock in current rates on existing bonds and recalculate the optimal debt ratio, we will allow for this wealth transfer.[13]


3. Although it is conventional to leave the marginal tax rate unchanged as the debt ratio is increased, we adjust the tax rate to reflect the potential loss of the tax benefits of debt at higher debt ratios, where the interest expenses exceed the EBIT. To illustrate this point, note that the EBIT at Disney is $6,829 million. As long as interest expenses are less than $6,829 million, interest expenses remain fully tax-deductible and earn the 38\% tax benefit. For instance, even at an 80\% debt ratio, the interest expenses are $6,683 million, and the tax benefit is therefore 38\% of this amount. At a 90\% debt ratio, however, the interest expenses balloon to $7,518 million, which is greater than the EBIT of 6,829 million. We consider the tax benefit on the interest expenses up to this amount:

Maximum tax benefit = EBIT × Marginal tax rate = $6,829 million × 0.38 = $2,595 million

As a proportion of the total interest expenses, the tax benefit is now only  $34.52\%$

Adjusted marginal tax rate = Maximum tax benefit/Interest expenses = \ $2,595/\$ 7,518 = 34.52\%

This in turn raises the after-tax cost of debt. This is a conservative approach, because losses can be carried forward. Given that this is a permanent shift in leverage, it does make sense to be conservative. We used this tax rate to recompute the levered beta at a  $90\%$  debt ratio, to reflect the fact that tax savings from interest are depleted.

# LEVERAGE AND COST OF CAPITAL

Now that we have estimated the cost of equity and the cost of debt at each debt level, we can compute Disney's cost of capital. This is done for each debt level in the following table. The cost of capital, which is  $7.90\%$  when the firm is unlevered, decreases as the firm initially adds debt, reaches a minimum of  $7.32\%$  at a  $40\%$  debt ratio, and then starts to increase again. (See below for the full details of the numbers in this table.)

Cost of Equity, Debt, and Capital: Disney

<table><tr><td>Debt Ratio</td><td>Beta</td><td>Cost of Equity</td><td>Cost of Debt (After-Tax)</td><td>Cost of Capital</td></tr><tr><td>0\%</td><td>0.73</td><td>7.90\%</td><td>2.95\%</td><td>7.90\%</td></tr><tr><td>10\%</td><td>0.78</td><td>8.20\%</td><td>2.95\%</td><td>7.68\%</td></tr><tr><td>20\%</td><td>0.85</td><td>8.58\%</td><td>2.95\%</td><td>7.45\%</td></tr><tr><td>30\%</td><td>0.93</td><td>9.07\%</td><td>3.26\%</td><td>7.32\%</td></tr><tr><td>40\%</td><td>1.04</td><td>9.72\%</td><td>3.72\%</td><td>7.32\%</td></tr><tr><td>50\%</td><td>1.19</td><td>10.63\%</td><td>4.03\%</td><td>7.33\%</td></tr><tr><td>60\%</td><td>1.42</td><td>11.99\%</td><td>4.34\%</td><td>7.40\%</td></tr><tr><td>70\%</td><td>1.79</td><td>14.26\%</td><td>7.44\%</td><td>9.49\%</td></tr><tr><td>80\%</td><td>2.55</td><td>18.81\%</td><td>8.37\%</td><td>10.46\%</td></tr><tr><td>90\%</td><td>5.05</td><td>33.83\%</td><td>8.84\%</td><td>11.34\%</td></tr></table>

Note that we are moving in  $10\%$  increments and that the cost of capital flattens out between  $30\%$  and  $50\%$ . We can get a more precise reading of the optimal by looking at how the cost of capital moves between  $30\%$  and  $50\%$ , in smaller increments. Using  $1\%$  increments, the optimal debt ratio that we compute for Disney is  $43\%$  with a cost of capital of  $7.28\%$ . We will stick with the approximate optimal debt ratio of  $40\%$  for the rest of this illustration.

To illustrate the robustness of this solution to alternative measures of levered betas, we re-estimate the costs of debt, equity, and capital under the assumption that debt bears some market risk; the results are summarized in the following table.

Costs of Equity, Debt, and Capital with Debt Carrying Market Risk: Disney

<table><tr><td>Debt Ratio</td><td>Beta of Equity</td><td>Beta of Debt</td><td>Cost of Equity</td><td>Cost of Debt (After-Tax)</td><td>Cost of Capital</td></tr><tr><td>0\%</td><td>0.73</td><td>0.05</td><td>7.90\%</td><td>2.95\%</td><td>7.90\%</td></tr><tr><td>10\%</td><td>0.78</td><td>0.05</td><td>8.18\%</td><td>2.95\%</td><td>7.66\%</td></tr><tr><td>20\%</td><td>0.84</td><td>0.05</td><td>8.53\%</td><td>2.95\%</td><td>7.42\%</td></tr><tr><td>30\%</td><td>0.91</td><td>0.07</td><td>8.95\%</td><td>3.26\%</td><td>7.24\%</td></tr><tr><td>40\%</td><td>0.99</td><td>0.10</td><td>9.46\%</td><td>3.72\%</td><td>7.16\%</td></tr><tr><td>50\%</td><td>1.11</td><td>0.13</td><td>10.16\%</td><td>4.03\%</td><td>7.10\%</td></tr><tr><td>60\%</td><td>1.28</td><td>0.00</td><td>11.18\%</td><td>4.34\%</td><td>7.08\%</td></tr><tr><td>70\%</td><td>1.28</td><td>0.35</td><td>11.19\%</td><td>7.44\%</td><td>8.57\%</td></tr><tr><td>80\%</td><td>1.52</td><td>0.42</td><td>12.61\%</td><td>8.37\%</td><td>9.22\%</td></tr><tr><td>90\%</td><td>2.60</td><td>0.42</td><td>19.10\%</td><td>8.84\%</td><td>9.87\%</td></tr></table>

If the debt holders bear some market risk, the cost of equity is lower at higher levels of debt, and Disney's optimal debt ratio increases to  $60\%$ , higher than the optimal debt ratio of  $40\%$  that we computed using the conventional beta measure.[14]

# FIRM VALUE AND COST OF CAPITAL

The reason for minimizing the cost of capital is that it maximizes the value of the firm. To illustrate the effects of moving to the optimal debt ratio on Disney's firm value, we start off with a simple valuation model, designed to value a firm in stable growth.

$$

F i r m \quad v a l u e = \frac {\text {E x p e c t e d} \quad \text {c a s h f l o w t o f i r m} _ {\text {n e x t y e a r}}}{(\text {C o s t o f c a p i t a l} - g)}

$$ where  g  is the growth rate in the cash flow to the firm (in perpetuity). We begin by computing Disney's current free cash flow using its current earnings before interest and taxes of  \6,829  million, its tax rate of  38\% , and its reinvestment in 2008 in long-term assets (ignoring working capital assuming that there is no reinvestment in working capital):


$$

\begin{array}{l} \mathrm {E B I T} (1 - \text {T a x r a t e}) = 6 8 2 9 (1 - 0. 3 8) \quad \$ 4, 2 3 4 \\ + \text {D e p r e c i a t i o n a n d a m o r t i z a t i o n} \quad \$ 1,5 9 3 \\ - \text {C a p i t a l} \quad \text {e x p e d i t u t e s} \quad \$ 1, 6 2 8 \\ - \text {C h a n g e i n n o n c a s h w o r k i n g c a p a l i t} \quad \$ 0 \\ \text {F r e e c a s h f l o w t o t h e f i r m} \quad \$ 4, 1 9 9 \\ \end{array}

$$

The market value of the firm at the time of this analysis was obtained by adding up the estimated market values of debt and equity:

Market value of equity  $\$ 45,193$
+ Market value of debt 16,682
= Value of the firm 61,875

If we assume that the market is correctly pricing the firm, we can back out an implied growth rate:

$$

\text {V a l u e o f f i r m} = \$ 6 1, 8 7 5 = \frac {\mathrm {F C F F} _ {0} (1 + \mathrm {g})}{\text {C o s t o f c a p i t a l - g}} = \frac {4 , 1 9 9 (1 + \mathrm {g})}{. 0 7 5 1 - \mathrm {g}}

$$

Growth rate  $=$  (Firm value  $\times$  Cost of capital - CF to firm)/(Firm value + CF to firm)

$$

= (61,875 \times 0.0751 - 4,199) / (61,875 + 4,199) = 0.0068 \text{or} 0.68 \%

$$

Now assume that Disney shifts to  $40\%$  debt and a cost of capital of  $7.32\%$ . The firm can now be valued using the following parameters:

Cash flow to firm = 4,199 million

WACC  $= 7.32\%$

Growth rate in cash flows to firm  $= 0.68\%$

$$

\text {F i r m v a l u e} = \frac {\mathrm {F C F F} _ {0} (1 + \mathrm {g})}{\text {C o s t o f c a p i t a l} - \mathrm {g}} = \frac {4 , 1 9 9 (1 . 0 0 6 8)}{(. 0 7 3 2 - 0 . 0 0 6 8)} = \$ 6 3, 6 6 5 \text {m i l l i o n}

$$

The value of the firm will increase from  $61,875 million to$ 63,665 million if the firm moves to the optimal debt ratio:

$$

\text {I n c e a s e i n f i r m v a l u e} = \ 63,665 \text {m i l l i o n} - \$ 61,875 \text {m i l l o n} = \$ 1,790 \text {m i l l o n}

$$

The limitation of this approach is that the growth rate is heavily dependent on both our estimate of the cash flow in the most recent year and the assumption that the firm is in stable growth. We can use an alternate approach to estimate the change in firm value. Consider first the change in the cost of capital from  $7.51\%$  to  $7.32\%$ , a drop of  $0.19\%$ . This change in the cost of capital should result in the firm saving on its annual cost of financing its business:

Cost of financing Disney at existing debt ratio = 61,875 \times 0.0751 = \4,646.82 million

Cost of financing Disney at optimal debt ratio = 61,875 \times 0.0732 = \4,529.68 million

Annual savings in cost of financing =  $4,646.82 million -$ 4,529.68 million = 117.14 million

Note that most of these savings are implicit rather than explicit and represent the savings next year. $^{16}$  The present value of these savings over time can now be estimated using the new cost of capital of  $7.32\%$  and the capped growth rate of  $0.68\%$  (based on the implied growth rate):

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/17b9fa48b582e4214a1131842abd264ec86cde493459129763609348ae726583.jpg)
FIGURE 15.3 Firm Value and Debt Ratios

$$

\begin{array}{l} \mathrm {P V} \text {o f} \mathrm {s a v i n g s} = \frac {\text {A n n u a l} \text {s a v i n g s} \text {n e x t y e a r}}{(\text {C o s t o f} \mathrm {c a p i t a l} - \mathrm {g})} = \frac {\mathbb {S} 1 1 7 . 1 4}{(0 . 0 7 3 2 - 0 . 0 0 6 8)} = \mathbb {S} 1, 7 6 3 \text {m i l l i o n} \\ \text {V a l u e} = \text {E x i s t i n g f i r m v a l u e} + \text {P V o f s a v i n g s} \\ = \61,875 + \1,763 = \$ 63,638 million \\ \end{array}

$$

Using this approach, we estimated the firm value at different debt ratios in Figure 15.3. There are two ways of getting from firm value to the value per share. Because the increase in value accrues entirely to stockholders, we can estimate the increase in value per share by dividing by the total number of shares outstanding:

$$

\text {I n c e a s e i n v a l u e p e r s h a r e} = \$ 1,763 / 1856.732 = \$ 0.95

$$

$$

\text {N e w s t o c k p r i c e} = \$ 2 4. 3 4 + \$ 0. 9 5 = \$ 2 5. 2 9

$$

Since the change in cost of capital is being accomplished by borrowing  $8,068 million (to get from the existing debt of$ 16,682 million to the debt of 24,750 million at the optimal debt ratio) and buying back shares, it may seem surprising that we are using the shares outstanding before the buyback. Implicit in this computation is the assumption that the increase in firm value will be spread evenly across both the stockholders who sell their stock back to the firm and those who do not, and that is why we term this the rational solution, since it leaves investors indifferent between selling back their shares and holding on to them. The alternative approach to arriving at the value per share is to compute the number of shares outstanding after the buyback:

Increase in debt Number of shares after buyback  $=$  shares before - Share price

$$

= 1, 8 5 6. 7 3 2 - \frac {\text {I n c r e a s e i n d e b t}}{\text {S h a r e p r i c e}} = 1, 5 3 7. 7 1 3 \text {m i l l i o n s h a r e}

$$

Value of firm after recapitalization = 63,638 million

Debt outstanding after recapitalization = 24,750 million

Value of equity after recapitalization = 38,888 million

Value of equity per share after recapitalization = \frac{38,888}{1,537.713} = \25.29

To the extent that stock can be bought back at the current price of  $24.34 or some value lower than$ 25.29, the remaining stockholders will get a bigger share of the increase in value. For instance, if Disney could have bought stock back at the existing price of $24.34, the increase in value per share would be $1.16.[17] If the stock buyback occurs at a price higher than 25.29, investors who sell their stock back will gain at the expense of those who remain stockholders in the firm.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/0ea429ec48ba36c1ad52a26d96581ee13bd552cf5a2f4c8dacbc35ee938f5c80.jpg)

# captstr.xls: This spreadsheet allows you to compute the optimal debt ratio firm value for any firm, using the same information used for Disney. It has updated interest coverage ratios and default spreads built in.

<table><tr><td colspan="11">Disney: Cost of Capital Worksheet</td></tr><tr><td>D/(D+E)</td><td>0.00\%</td><td>10.00\%</td><td>20.00\%</td><td>30.00\%</td><td>40.00\%</td><td>50.00\%</td><td>60.00\%</td><td>70.00\%</td><td>80.00\%</td><td>90.00\%</td></tr><tr><td>D/E</td><td>0.00\%</td><td>11.11\%</td><td>25.00\%</td><td>42.86\%</td><td>66.67\%</td><td>100.00\%</td><td>150.00\%</td><td>233.33\%</td><td>400.00\%</td><td>900.00\%</td></tr><tr><td>$ Debt</td><td>$0</td><td>$6,188</td><td>$12,375</td><td>$18,563</td><td>$24,750</td><td>$30,938</td><td>$37,125</td><td>$43,313</td><td>$49,500</td><td>$55,688</td></tr><tr><td>Beta</td><td>0.73</td><td>0.78</td><td>0.85</td><td>0.93</td><td>1.04</td><td>1.19</td><td>1.42</td><td>1.79</td><td>2.55</td><td>5.05</td></tr><tr><td>Cost of equity</td><td>7.90\%</td><td>8.20\%</td><td>8.58\%</td><td>9.07\%</td><td>9.72\%</td><td>10.63\%</td><td>11.99\%</td><td>14.26\%</td><td>18.81\%</td><td>33.83\%</td></tr><tr><td>EBITDA</td><td>$8,422</td><td>$8,422</td><td>$8,422</td><td>$8,422</td><td>$8,422</td><td>$8,422</td><td>$8,422</td><td>$8,422</td><td>$8,422</td><td>$8,422</td></tr><tr><td>Depreciation</td><td>$1,593</td><td>$1,593</td><td>$1,593</td><td>$1,593</td><td>$1,593</td><td>$1,593</td><td>$1,593</td><td>$1,593</td><td>$1,593</td><td>$1,593</td></tr><tr><td>EBIT</td><td>$6,829</td><td>$6,829</td><td>$6,829</td><td>$6,829</td><td>$6,829</td><td>$6,829</td><td>$6,829</td><td>$6,829</td><td>$6,829</td><td>$6,829</td></tr><tr><td>Interest</td><td>$0</td><td>$294</td><td>$588</td><td>$975</td><td>$1,485</td><td>$2,011</td><td>$2,599</td><td>$5,198</td><td>$6,683</td><td>$7,518</td></tr><tr><td>Interest coverage ratio</td><td>∞</td><td>23.24</td><td>11.62</td><td>7.01</td><td>4.60</td><td>3.40</td><td>2.63</td><td>1.31</td><td>1.02</td><td>0.91</td></tr><tr><td>Likely rating</td><td>AAA</td><td>AAA</td><td>AAA</td><td>AA</td><td>A-</td><td>A-</td><td>BBB</td><td>B-</td><td>CCC</td><td>CCC</td></tr><tr><td>Pre tax cost of debt</td><td>4.75\%</td><td>4.75\%</td><td>4.75\%</td><td>5.25\%</td><td>6.00\%</td><td>6.50\%</td><td>7.00\%</td><td>12.00\%</td><td>13.50\%</td><td>13.50\%</td></tr><tr><td>Effective tax rate</td><td>38.00\%</td><td>38.00\%</td><td>38.00\%</td><td>38.00\%</td><td>38.00\%</td><td>38.00\%</td><td>38.00\%</td><td>38.00\%</td><td>38.00\%</td><td>34.52\%</td></tr><tr><td colspan="11">Cost of Capital Calculations</td></tr><tr><td>D/(D+E)</td><td>0.00\%</td><td>10.00\%</td><td>20.00\%</td><td>30.00\%</td><td>40.00\%</td><td>50.00\%</td><td>60.00\%</td><td>70.00\%</td><td>80.00\%</td><td>90.00\%</td></tr><tr><td>D/E</td><td>0.00\%</td><td>(11.11\%)</td><td>25.00\%</td><td>42.86\%</td><td>66.67\%</td><td>100.00\%</td><td>150.00\%</td><td>233.33\%</td><td>400.00\%</td><td>900.00\%</td></tr><tr><td>$ Debt</td><td>$0</td><td>$6,188</td><td>$12,375</td><td>$18,563</td><td>$24,75</td><td>$30,938</td><td>$37,125</td><td>$43,313</td><td>$49,500</td><td>$55,688</td></tr><tr><td>Cost of equity</td><td>7.90\%</td><td>8.20\%</td><td>8.58\%</td><td>9.07\%</td><td>9.72\%</td><td>10.63\%</td><td>11.99\%</td><td>14.26\%</td><td>18.81\%</td><td>33.83\%</td></tr><tr><td>Cost of debt</td><td>2.95\%</td><td>2.95\%</td><td>2.95\%</td><td>3.26\%</td><td>3.72\%</td><td>4.03\%</td><td>4.34\%</td><td>7.44\%</td><td>8.37\%</td><td>8.84\%</td></tr><tr><td>Cost of capital</td><td>7.90\%</td><td>7.68\%</td><td>7.45\%</td><td>7.32\%</td><td>7.32\%</td><td>7.33\%</td><td>7.40\%</td><td>9.49\%</td><td>10.46\%</td><td>11.34\%</td></tr></table>

# DEFAULT RISK, OPERATING INCOME, AND OPTIMAL LEVERAGE

The Disney analysis just completed assumed that operating income would remain constant while the debt ratios changed. While this assumption simplifies the analysis substantially, it is not realistic. The operating income, for many firms, will drop as the default risk increases; this, in fact, is the cost we label as an indirect bankruptcy cost. The drop is likely to become more pronounced as the default risk falls below an acceptable level; for instance, a bond rating below investment grade may trigger significant losses in revenues and increases in expenses.

A general model for optimal capital structure would allow both operating income and cost of capital to change as the debt ratio changes. We have already described how we can estimate cost of capital at different debt ratios, but we could also attempt to do the same with operating income. For instance, we could estimate how the operating income for Disney would change as debt ratios and default risk changes by looking at the effects of rating downgrades on the operating income of other retailers.

If both operating income and cost of capital change, the optimal debt ratio may no longer be the point at which the cost of capital is minimized. Instead, the optimal debt ratio has to be defined as that debt ratio at which the value of the firm is maximized.

# ADJUSTED PRESENT VALUE AND FINANCIAL LEVERAGE

In the adjusted present value (APV) approach, we begin with the value of the firm without debt. As we add debt to the firm, we consider the net effect on value by considering both the benefits and the costs of borrowing. The value of the levered firm can then be estimated at different levels of the debt, and the debt level that maximizes firm value is the optimal debt ratio.

# Steps in the Adjusted Present Value Approach

The unlevered firm value is not a function of expected leverage and can be estimated as described in the earlier section—by discounting the free cash flows to the firm at the unlevered cost of equity. In fact, if you do not want to estimate this value and are willing to assume that the current market value of the firm is correct, you could back out the unlevered firm value by subtracting out the tax benefits and adding back the expected bankruptcy cost from the existing debt.

Current firm value  $=$  Value of unlevered firm + Present value of tax benefits
- Expected bankruptcy cost

Value of unlevered firm = Current firm value - Present value of tax benefits

+ Expected bankruptcy cost

The only components that change as a firm changes its leverage are the expected tax benefits and the expected bankruptcy costs. To obtain these values as you change leverage, you would go through the following five steps:

1. Estimate the dollar debt outstanding at each debt ratio. This process mirrors what was done in the cost of capital approach. Keeping firm value fixed, consider how much debt the firm will have at 20 percent debt, 30 percent debt, and so on.
2. Estimate the tax benefits of debt by multiplying the dollar debt by the tax rate. This essentially assumes that the debt is permanent and that the tax benefits will continue in perpetuity.
3. Estimate the rating, interest rate, and interest expense at each debt ratio. This process again replicates what was done in the cost of capital approach.
4. Use the rating to estimate a probability of default. Note that Table 15.2 provides these probabilities for each rating.
5. Estimate the expected bankruptcy cost by multiplying the probability of bankruptcy by the bankruptcy cost, stated as a percent of unlevered firm value.

You compute the value of the levered firm at different levels of debt. The debt level that maximizes the value of the levered firm is the optimal debt ratio.

# ILLUSTRATION 15.8: APV Approach to Optimal Capital Structure: Disney in March 2009

The APV approach can be applied to estimating the optimal capital structure for Disney. The first step is to estimate the value of the unlevered firm. To do so, we start with the market value of Disney in 2009 and net out the effect of the tax savings and bankruptcy costs arising from the existing debt.

$$

\begin{array}{l} \text {C u r r e n t} = \text {V a l u e} + \text {V a l u e} \\ = \$ 45,193 + \$ 16,682 = \$ 61,875 \text {m i l l o n} \\ \end{array}

$$

We first compute the present value of the tax savings from the existing debt, assuming that the interest payment on the debt constitutes a perpetuity, using a marginal tax rate for Disney of  $38\%$ .

$$

\begin{array}{l} P V \text {o f} \quad \text {t a x s a v i n g s f r o m e x i s t i n g d e b t} = \text {E x i s t i n g d e b t} \times \text {T a x r a t e} \\ = \$ 16,682 \times 0.38 = \$ 6,339 \text {m i l l o n} \\ \end{array}

$$

Based on Disney's current rating of A, we estimate a probability of bankruptcy of  $0.66\%$  from Table 15.2. The bankruptcy cost is assumed to be  $25\%$  of the firm value, prior to the tax savings. Allowing for a range of  $10\%$  to  $40\%$  for bankruptcy costs, we have put Disney's exposure to expected bankruptcy costs in the middle of the range. There are some businesses that Disney is in where the perception of distress can be damaging—theme parks, for instance—but the movie and broadcasting businesses are less likely to be affected because projects tend be shorter-term and on a smaller scale.

We then compute the value of Disney as an unlevered firm.

Value of Disney as an unlevered firm

$=$  Current market value - PV of tax savings + Expected bankruptcy costs
= $61,875 - $6,339 + 102
= 55,638 million

The next step in the process is to estimate the tax savings in the following table at different levels of debt. Although we use the standard approach of assuming that the present value is calculated as a perpetuity, we reduce the tax rate used in the calculation, if interest expenses exceed the EBIT. The adjustment to the tax rate was described earlier in the cost of capital approach.

Tax Savings from Debt  $(t_cD)$ : Disney

<table><tr><td>Debt Ratio</td><td>$ Debt</td><td>Tax Rate</td><td>Tax Benefits</td></tr><tr><td>0\%</td><td>$ 0</td><td>38.00\%</td><td>$ 0</td></tr><tr><td>10\%</td><td>$ 6,188</td><td>38.00\%</td><td>$ 2,351</td></tr><tr><td>20\%</td><td>$12,375</td><td>38.00\%</td><td>$ 4,703</td></tr><tr><td>30\%</td><td>$18,563</td><td>38.00\%</td><td>$ 7,054</td></tr><tr><td>40\%</td><td>$24,750</td><td>38.00\%</td><td>$ 9,405</td></tr><tr><td>50\%</td><td>$30,938</td><td>38.00\%</td><td>$11,756</td></tr><tr><td>60\%</td><td>$37,125</td><td>38.00\%</td><td>$14,108</td></tr><tr><td>70\%</td><td>$43,313</td><td>38.00\%</td><td>$16,459</td></tr><tr><td>80\%</td><td>$49,500</td><td>38.00\%</td><td>$18,810</td></tr><tr><td>90\%</td><td>$55,688</td><td>34.52\%</td><td>19,223</td></tr></table>

The final step in the process is to estimate the expected bankruptcy cost, based on the bond ratings, the probabilities of default, and the assumption that the bankruptcy cost is  $25\%$  of firm value. The following table summarizes these probabilities and the expected bankruptcy cost, computed based on the levered firm value:

Expected Bankruptcy Cost: Disney

<table><tr><td>Debt Ratio</td><td>Bond Rating</td><td>Probability of Default</td><td>Expected Bankruptcy Cost</td></tr><tr><td>0\%</td><td>AAA</td><td>0.07\%</td><td>$ 10</td></tr><tr><td>10\%</td><td>AAA</td><td>0.07\%</td><td>$ 10</td></tr><tr><td>20\%</td><td>AAA</td><td>0.07\%</td><td>$ 11</td></tr><tr><td>30\%</td><td>A+</td><td>0.60\%</td><td>$ 94</td></tr><tr><td>40\%</td><td>A</td><td>0.66\%</td><td>$ 107</td></tr><tr><td>50\%</td><td>A-</td><td>2.50\%</td><td>$ 421</td></tr><tr><td>60\%</td><td>B</td><td>36.80\%</td><td>$ 6,417</td></tr><tr><td>70\%</td><td>CCC</td><td>59.01\%</td><td>$10,636</td></tr><tr><td>80\%</td><td>CCC</td><td>59.01\%</td><td>$10,983</td></tr><tr><td>90\%</td><td>CCC</td><td>59.01\%</td><td>$11,044</td></tr></table>

The expected bankruptcy cost at a  $40\%$  debt ratio is computed thus:

Expected bankruptcy cost  $=$  (Unlevered firm value + Tax savings).0066
= (55,638 + $9,405)(.25)(0.0066) = $107 million

The value of the levered firm is estimated in the following table by aggregating the effects of the tax savings and the expected bankruptcy costs.

Value of Disney with Leverage

<table><tr><td>Debt Ratio</td><td>$ Debt</td><td>Tax Rate</td><td>Unlevered Firm Value</td><td>Tax Benefits</td><td>Expected Bankruptcy Cost</td><td>Value of Levered Firm</td></tr><tr><td>0\%</td><td>$ 0</td><td>38.00\%</td><td>$55,638</td><td>$ 0</td><td>$ 10</td><td>$55,629</td></tr><tr><td>10\%</td><td>$ 6,188</td><td>38.00\%</td><td>$55,638</td><td>$ 2,351</td><td>$ 10</td><td>$57,979</td></tr><tr><td>20\%</td><td>$12,375</td><td>38.00\%</td><td>$55,638</td><td>$ 4,703</td><td>$ 11</td><td>$60,330</td></tr><tr><td>30\%</td><td>$18,563</td><td>38.00\%</td><td>$55,638</td><td>$ 7,054</td><td>$ 94</td><td>$62,598</td></tr><tr><td>40\%</td><td>$24,750</td><td>38.00\%</td><td>$55,638</td><td>$ 9,405</td><td>$ 107</td><td>$64,936</td></tr><tr><td>50\%</td><td>$30,938</td><td>38.00\%</td><td>$55,638</td><td>$11,756</td><td>$ 421</td><td>$66,973</td></tr><tr><td>60\%</td><td>$37,125</td><td>38.00\%</td><td>$55,638</td><td>$14,108</td><td>$ 6,417</td><td>$63,329</td></tr><tr><td>70\%</td><td>$43,313</td><td>38.00\%</td><td>$55,638</td><td>$16,459</td><td>$10,636</td><td>$61,461</td></tr><tr><td>80\%</td><td>$49,500</td><td>38.00\%</td><td>$55,638</td><td>$18,810</td><td>$10,983</td><td>$63,466</td></tr><tr><td>90\%</td><td>$55,688</td><td>34.52\%</td><td>$55,638</td><td>$19,223</td><td>$11,044</td><td>63,817</td></tr></table>

The firm value is maximized at about  $50\%$  debt, slightly higher than the optimal computed using the cost of capital approach. These results are, however, very sensitive to both the estimate of bankruptcy cost as a percent of firm value and the probabilities of default.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/c026616093ad8b14abcf0e36a795c09c3213426e951a2a75b34714bb4ea34abd.jpg) apv.xls: This spreadsheet allows you to compute the value of a firm, with leverage, using the adjusted present value approach.


# VALUING THE PIECES RATHER THAN THE WHOLE

The adjusted present value model values debt separately from the operating assets, and firm value is the sum of the two components. In fact, one of the biggest benefits of discounted cash flow valuation is that breaking up cash flows into individual components and valuing them separately should not change the value. Thus, you could value a firm like General Electric (GE) by valuing each of its divisions separately and adding them up, or Coca-Cola by valuing its operations in each country separately and summing those up.

The advantage of piecewise valuation is that you can estimate cash flows and discount rates separately for each piece and thus get more precise estimates of value. For example, you would use very different assumptions about operating margins, reinvestment needs, and costs of capital when valuing the appliance and aircraft engine divisions of GE. Similarly, you could apply different country risk premiums for each country that Coca-Cola operates in to value the firm. Since this is always the case, you might ask why we do not do this for all firms. The problem is with the information. Many firms do not break down their earnings and cash flows in sufficient detail to allow for piecewise valuation. Even firms that do, like GE, often have large centralized expenses that get allocated, often arbitrarily, to individual divisions.

The benefits of breaking a firm down into pieces clearly increase as a firm becomes more diverse in its operations. These benefits have to be weighed against the costs associated with more imprecise information and greater estimation problems.

# Benefits and Limitations of the Adjusted Present Value Approach

The advantage of the APV approach is that it separates the effects of debt into different components and allows the analyst to use different discount rates for each component. In addition, we do not assume that the debt ratio stays unchanged forever, which is an implicit assumption in the cost of capital approach. Instead, we have the flexibility to keep the dollar value of debt fixed and to calculate the benefits and costs of the fixed dollar debt.

These advantages have to be weighed against the difficulty of estimating probabilities of default and the cost of bankruptcy. In fact, many analyses that use the adjusted present value approach ignore the expected bankruptcy costs, leading them to the conclusion that firm value increases as firms borrow money. Not surprisingly, this will yield the conclusion that the optimal debt ratio for a firm is 100 percent debt.

In general, with the same assumptions, the APV and the cost of capital conclusions give very similar answers. However, the APV approach is more practical when firms are evaluating a dollar amount of debt, while the cost of capital approach is easier when firms are analyzing debt proportions.[18]

# CONCLUSION

This chapter developed an alternative approach to discounted cash flow valuation. The cash flows to the firm are discounted at the weighted average cost of capital to obtain the value of the firm, which when reduced by the market value of outstanding debt yields the value of equity. Since the cash flow to the firm is a cash flow prior to debt payments, this approach is more straightforward to use when leverage changes over time, though the weighted average cost of capital, used to discount free cash flows to the firm, has to be adjusted for changes in leverage. Finally, the costs of capital can be estimated at different debt ratios and used to estimate the optimal debt ratio for a firm.

The alternative approach to firm valuation is the APV approach, where the effect on value of debt (tax benefits minus bankruptcy costs) is added to the unlevered firm value. This approach can also be used to estimate the optimal debt ratio for the firm.

# QUESTIONS AND SHORT PROBLEMS

In the problems following, use an equity risk premium of 5.5 percent if none is specified.

1. Respond true or false to the following statements about the free cash flow to the firm: a. The free cash flow to the firm is always higher than the free cash flow to equity. True False


b. The free cash flow to the firm is the cumulated cash flow to all investors in the firm, though the form of their claims may be different.

True False c. The free cash flow to the firm is a predebt, pretax cash flow.


True False d. The free cash flow to the firm is an after-debt, after-tax cash flow.


True False e. The free cash flow to the firm cannot be estimated for a firm with debt without knowing interest and principal payments.


True False

2. Union Pacific Railroad reported net income of $770 million in 1993 after interest expenses of $320 million. (The corporate tax rate was 36\%.) It reported depreciation of $960 million in that year, and capital spending was $1.2 billion. The firm also had $4 billion in debt outstanding on the books, rated AA (carrying a yield to maturity of 8\%) and trading at par (up from $3.8 billion at the end of 1992). The beta of the stock was 1.05, and there were 200 million shares outstanding (trading at $60 per share), with a book value of $5 billion. Union Pacific's working capital requirements were negligible. (The Treasury bond rate was 7\%, and the risk premium was 5.5\%).

a. Estimate the free cash flow to the firm in 1993.
b. Estimate the value of the firm at the end of 1993.
c. Estimate the value of equity at the end of 1993, and the value per share, using the FCFF approach.

3. Lockheed Corporation, one of the largest defense contractors in the United States, reported EBITDA of $1,290 million in 1993, prior to interest expenses of $215 million and depreciation charges of $400 million. Capital expenditures in 1993 amounted to $450 million, and working capital was 7\% of revenues (which were $13,500 million). The firm had debt outstanding of $3.068 billion (in book value terms), trading at a market value of $3.2 billion and yielding a pretax interest rate of 8\%. There were 62 million shares outstanding, trading at $64 per share, and the most recent beta was 1.10. The tax rate for the firm was 40\%. (The Treasury bond rate was 7\%, and the risk premium was 5.5\%).

The firm expected revenues, earnings, capital expenditures and depreciation to grow at  $9.5\%$  a year from 1994 to 1998, after which the growth rate was expected to drop to  $4\%$ . (Capital spending will be  $120\%$  of depreciation in the steady state period.) The company also planned to lower its debt/equity ratio to  $50\%$  for the steady state (which will result in the pretax interest rate dropping to  $7.5\%$ ).

a. Estimate the value of the firm.
b. Estimate the value of the equity in the firm, and the value per share.

4. In the face of disappointing earnings results and increasingly assertive institutional stockholders, Eastman Kodak was considering a major restructuring in 1993. As part of this restructuring, it was considering the sale of its health division, which earned  $560 million in earnings before interest and taxes in 1993, on revenues of$ 5.285 billion. The expected growth in earnings was expected to moderate to 6\% between 1994 and 1998, and to 4\% after that. Capital expenditures in the health division amounted to $420 million in 1993, while depreciation was $350 million. Both were expected to grow 4\% a year in the long term. Working capital requirements were negligible.

The average beta of firms competing with Eastman Kodak's health division was 1.15. While Eastman Kodak had a debt ratio  $\left[\mathrm{D} / (\mathrm{D} + \mathrm{E})\right]$  of  $50\%$ , the health division could sustain a debt ratio  $\left[\mathrm{D} / (\mathrm{D} + \mathrm{E})\right]$  of only  $20\%$ , which was similar to the average debt ratio of firms competing in the health sector. At this level of debt, the health division could expect to pay  $7.5\%$  on its debt, before taxes. (The tax rate was  $40\%$ , the Treasury bond rate was  $7\%$ , and the risk premium was  $5.5\%$ .) a. Estimate the cost of capital for the division.

b. Estimate the value of the division.
c. Why might an acquirer pay more than this estimated value for the division?

5. You are analyzing a valuation done on a stable firm by a well-known analyst. Based on the expected free cash flow to firm next year of $30 million and an expected growth rate of 5\%, the analyst has estimated a value of $750 million. However, he has made the mistake of using the book values of debt and equity in his calculation. While you do not know the book value weights he used, you know that the firm has a cost of equity of 12\% and an after-tax cost of debt of 6\%. You also know that the market value of equity is three times the book value of equity, while the market value of debt is equal to the book value of debt. Estimate the correct value for the firm.

6. Santa Fe Pacific, a major rail operator with diversified operations, had earnings before interest, taxes, and depreciation of $637 million in 1993, with depreciation amounting to $235 million (offset by capital expenditure of an equivalent amount). The firm was in steady state and expected to grow 6\% a year in perpetuity. Santa Fe Pacific had a beta of 1.25 in 1993, and debt outstanding of $1.34 billion. The stock price was $18.25 at the end of 1993, and there were 183.1 million shares outstanding. The expected ratings and the costs of debt at different levels of debt for Santa Fe are shown in the following table:

<table><tr><td>D/(D+E)</td><td>Rating</td><td>Cost of Debt (Pretax)</td></tr><tr><td>0\%</td><td>AAA</td><td>6.23\%</td></tr><tr><td>10\%</td><td>AAA</td><td>6.23\%</td></tr><tr><td>20\%</td><td>A+</td><td>6.93\%</td></tr><tr><td>30\%</td><td>A-</td><td>7.43\%</td></tr><tr><td>40\%</td><td>BB</td><td>8.43\%</td></tr><tr><td>50\%</td><td>B+</td><td>8.93\%</td></tr><tr><td>60\%</td><td>B-</td><td>10.93\%</td></tr><tr><td>70\%</td><td>CCC</td><td>11.93\%</td></tr><tr><td>80\%</td><td>CCC</td><td>11.93\%</td></tr><tr><td>90\%</td><td>CC</td><td>13.43\%</td></tr></table>

The earnings before interest and taxes were expected to grow  $3\%$  a year in perpetuity, with capital expenditures offset by depreciation. (The tax rate was  $40\%$ , and the Treasury bond rate was  $7\%$  and the market risk premium was  $5.5\%$ .) a. Estimate the cost of capital at the current debt ratio.

b. Estimate the costs of capital at debt ratios ranging from  $0\%$  to  $90\%$ .
c. Estimate the value of the firm at debt ratios ranging from  $0\%$  to  $90\%$ .

7. You have been asked to estimate the value of Cavanaugh Motels, a motel chain. The firm reported earnings of $200 million before interest and taxes in the most recent year and paid 40\% of its taxable income in taxes. The book value of capital at the firm is 1.2 billion, and the firm expects to grow 4 \%a year in perpetuity. The firm has a beta of 1.2, a pretax cost of debt of 6 \%, equity with a market value of \$ 1billion, and debt with a market value of \$ 500 million. (The risk- free rate is 5 \%, and the market risk premium is 5.5 \%.)


a. Estimate the value of the firm, using the cost of capital approach.
b. If you were told the probability of default at this firm at its current debt level is  $10\%$  and that the cost of bankruptcy is  $25\%$  of unlevered firm value, estimate the value of the firm using the adjusted present value approach.
c. How would you reconcile the two estimates of value?

8. Bethlehem Steel, one of the oldest and largest steel companies in the United States, is considering the question of whether it has any excess debt capacity. The firm has  $527 million in market value of debt outstanding and$ 1.76 billion in market value of equity. The firm has earnings before interest and taxes of 131 million, and faces a corporate tax rate of 36\%. The company's bonds are rated BBB, and the cost of debt is 8\%. At this rating, the firm has a probability of default of 2.3\%, and the cost of bankruptcy is expected to be 30\% of firm value.

a. Estimate the unlevered value of the firm from the current market value of the firm.
b. Estimate the levered value of the firm, using the adjusted present value approach, at a debt ratio of  $50\%$ . At that debt ratio, the firm's bond rating will be CCC, and the probability of default will increase to  $46.61\%$  of unlevered firm value.

# Estimating Equity Value per Share

Chapter 15 considered how best to estimate the value of the operating assets of the firm. To get from that value to the firm value, you have to consider the value of cash, marketable securities, and other nonoperating assets held by a firm. In particular, you have to value holdings in other firms and deal with a variety of accounting techniques used to record such holdings. To get from firm value to equity value, you have to determine the value of the nonequity claims in the firm that have to be netted out.

Once you have valued the equity in a firm, it may appear to be a relatively simple exercise to estimate the value per share. It seems that all you need to do is divide the value of the equity by the number of shares outstanding. But, in the case of some firms, even this simple exercise can become complicated by the presence of management and employee options. This chapter discusses the magnitude of this option overhang on valuation and then considers ways of incorporating the effect into the value per share.

# VALUE OF NONOPERATING ASSETS

Firms have a number of assets on their books that can be categorized as nonoperating assets. The first and most obvious one is cash and near-cash investments—investments in riskless or very low-risk investments that most companies with large cash balances make. The second is investments in equities and bonds of other firms, sometimes for investment reasons and sometimes for strategic ones. The third is holdings in other firms, private and public, which are categorized in a variety of ways by accountants. Finally, there are assets that firms own that do not generate cash flows but nevertheless could have value—say, undeveloped land in New York City or Tokyo.

# Cash and Near-Cash Investments

Investments in short-term government securities or commercial paper, which can be converted into cash quickly and with very low cost, are considered near-cash investments. This section considers how best to deal with these investments in valuation.

Operating Cash Requirements If a firm needs cash for its operations—an operating cash balance—and this cash does not earn a fair market return you should consider such cash part of working capital requirements rather than as a source of additional value. Any cash and near-cash investments that exceed the operating cash requirements can be then viewed as non-operating assets and added to the value of operating assets. How much cash does a firm need for its operations? The answer depends on both the firm and the economy in which the firm operates. A small retail firm in an emerging market, where cash transactions are more common than credit card transactions, may require an operating cash balance that is substantial. In contrast, a manufacturing firm in a developed market may not need any operating cash. If the cash held by a firm is interest-bearing and the interest earned on the cash reflects a fair rate of return,[1] you would not consider that cash to be part of working capital. Instead, you consider it to be part of non-operating assets and kept separate from the operating asset valuation.


Dealing with Nonoperating Cash Holdings There are two ways in which we can deal with cash and marketable securities in valuation. One is to lump them in with the operating assets and value the firm (or equity) as a whole. The other is to value the operating assets and the cash and marketable securities separately.

Consolidated Valuation Is it possible to consider cash as part of the total assets of the firm, and to value it on a consolidated basis? The answer is yes, and it is, in a sense, what we do when we forecast the total net income for a firm and estimate dividends and free cash flows to equity from those forecasts. The net income will then include income from investments in government securities, corporate bonds, and equity investments. While this approach has the advantage of simplicity and can be used when financial investments comprise a small percent of the total assets, it becomes much more difficult to use when financial investments represent a larger proportion of total assets for two reasons:

First, the cost of equity or capital used to discount the cash flows has to be adjusted on an ongoing basis for the cash. In specific terms, you would need to use an unlevered beta that represents a weighted average of the unlevered beta for the operating assets of the firm and the unlevered beta for the cash and marketable securities. For instance, the unlevered beta for a steel company where cash represents 10 percent of the value would be a weighted average of the unlevered beta for steel companies and the beta of cash (which is usually zero). If the 10 percent were invested in riskier securities, you would need to adjust the beta accordingly. While this can be done if you use bottom-up betas, you can see that it would be much more difficult to do if you obtain a beta from a regression.[2]

Second, as the firm grows, the proportion of income that is derived from operating assets is likely to change. When this occurs, you have to adjust the inputs to the valuation model—cash flows, growth rates, and discount rates—to maintain consistency.

What will happen if you do not make these adjustments? You will tend to misvalue the financial assets. To see why, assume that you were valuing the aforementioned steel company with 10 percent of its value coming from cash. This cash is invested in government securities and earns an appropriate rate—say 3 percent. If this income is added onto the other income of the firm and discounted back at a cost of equity appropriate for a steel company—say 11 percent—the value of the cash will be discounted. A billion dollars in cash will be valued at 800 million, for instance, because the discount rate used is incorrect.


Separate Valuation It is safer to separate cash and marketable securities from operating assets and to value them individually. We do this almost always when we use the firm valuation approaches described in the preceding chapter. This is because we use operating income to estimate free cash flows to the firm, and operating income generally does not include income from financial assets. If, however, this is not the case and some of the investment income has found its way into the operating income, you would need to back it out before you did the valuation. Once you value the operating assets, you can add the value of the cash and marketable securities to it to arrive at firm value.

We also followed this practice with the FCFE models in chapter 14. While net income includes income from financial assets, we can still separate cash and marketable securities from operating assets if we wanted to. To do this, we would first back out the portion of the net income that represents the income from financial investments (interest on bonds, dividends on stock) and use this adjusted net income to estimate free cash flows to equity. These free cash flows to equity would be discounted back using a cost of equity that would be estimated using a beta that reflected only the operating assets. Once the equity in the operating assets has been valued, you could add the value of cash and marketable securities to it to estimate the total value of equity.

# ILLUSTRATION 16.1: Consolidated versus Separate Valuation

To examine the effects of a cash balance on firm value, consider a firm with investments of  $1,200 million in noncash assets and$ 200 million in cash. For simplicity, let us assume the following:

The noncash assets have a beta of 1 are expected to earn 120 million in net income each year in perpetuity, and there are no reinvestment needs.
The cash is invested at the riskless rate, which we assume to be  $4.5\%$ .
The market risk premium is assumed to be  $5.5\%$ .

Under these conditions, we can value the equity using both the consolidated and separate approaches.

Let us first consider the consolidated approach. Here, we will estimate a cost of equity for all of the assets (including cash) by computing a weighted average beta of the noncash and cash assets:

$$

\begin{array}{l} \text {B e t a} = \text {B e t a} _ {\text {n o n c a s h a s s e t s}} \times \text {W e i g h t} _ {\text {n o n c a s h a s s e t s}} + \text {B e t a} _ {\text {c a s h a s s e t s}} \times \text {W e i g h t} _ {\text {c a s h a s s e t s}} \\ = 1. 0 0 \times (1, 2 0 0 / 1, 4 0 0) + 0 \times (2 0 0 / 1, 4 0 0) = 0. 8 5 7 1 \\ \end{array}

$$

Cost of equity for the firm  $= 4.5\% +0.8571(5.5\%) = 9.21\%$

Expected earnings for the firm  $=$  Net income from operating assets + Interest income from cash
 = (120 + .045 \times 200) = \ 129  million (which is also the FCFE since there are no reinvestment needs)

Value of the equity = FCFE/Cost of equity = 129/.0921 = 1,400 million

The equity is worth 1,400 million.

Now, let us try to value them separately, beginning with the noncash investments:

Cost of equity for noncash investments  $=$  Riskless rate  $^+$  Beta  $\times$  Risk premium

$$

= 4.5 \% + 1.00 \times 5.5 \% = 10 \%

$$

Expected earnings from operating assets = 120 million (which is the FCFE from these assets)

Value of noncash assets  $=$  Expected earnings/Cost of equity for noncash assets

$$

= 1 2 0 /. 1 0 = \$ 1, 2 0 0 \text {m i l l o n}

$$

To this we can add the value of the cash, which is $200 million, to get a value for the equity of $1,400 million.

To see the potential for problems with the consolidated approach, note that if you had discounted the total FCFE of  $129 million at the cost of equity of 10\%$  (which reflects only the operating assets) you would valued the firm at 1,290 million. The loss in value of 110 million can be traced to the mishandling of cash:

Interest income from cash = 4.5\% \times 200 = \ 9 million

If you discount the cash at 10\%, you would value the cash at $90 million instead of the correct value of $200 million—hence the loss in value of 110 million.

Should You Ever Discount Cash? In Illustration 16.1, cash was reduced in value for the wrong reason—a riskless cash flow was discounted at a discount rate that reflects risky investments. However, there are two conditions under which you might legitimately apply a discount to a cash balance:

1. The cash held by a firm is invested at a rate that is lower than the market rate, given the riskiness of the investment.
2. The management is not trusted with the large cash balance because of its past track record on investments.

Cash Invested at Below-Market Rates The first and most obvious condition occurs when much or all the cash balance does not earn a market interest rate. If this is the case, holding too much cash will clearly reduce the firm's value. While most firms in the United States can invest in government bills and bonds with ease today, the options are much more limited for firms in many emerging markets. When this is the case, a large cash balance earning less than a fair return can destroy value over time.

# ILLUSTRATION 16.2: Cash Invested at Below-Market Rates

Illustration 16.1 assumed that cash was invested at the riskless rate. Assume, instead, that the firm was able to earn only  $3\%$  on its cash balance, while the riskless rate is  $4.5\%$ . The estimated value of the cash kept in the firm would then be:

Estimated value of cash invested at  $3\% = (.03 \times 200) / .045 = 133.33$

The firm would have been worth only  $1,333 million instead of$ 1,400 million. The cash returned to stockholders would have a value of $200 million. In this scenario, returning the cash to stockholders would yield them a surplus value of $66.67 million. In fact, liquidating any asset that has a return less than the required return would yield the same result, as long as the entire investment can be recovered on liquidation.

Distrust of Management While making a large investment in low-risk or no-risk marketable securities by itself is value neutral, the burgeoning cash balance can tempt managers to accept large investments or make acquisitions even if these investments earn substandard returns. In some cases, managers may take these actions to prevent the firm from becoming a takeover target. To the extent that stockholders anticipate such substandard investments, the current value of the firm will reflect the cash at a discounted level. The discount is likely to be largest at firms with few investment opportunities and poor management, and there will be no discount in firms with significant investment opportunities and good management.

# ILLUSTRATION 16.3: Discount for Poor Investments in the Future

Return now to the firm described in Illustration 16.1, where the cash is invested at the riskless rate of  $4.5\%$ . Normally, we would expect this firm to trade at a total value of $1,400 million. Assume, however, that the managers of this firm have a history of poor acquisitions and that the presence of a large cash balance increases the probability from  $0\%$  to  $30\%$  that they will try to acquire another firm. Further, assume that the market anticipates that they will overpay by $50 million on this acquisition. The cash will then be valued at 185 million, with the discount estimated as follows:

Estimated discount on cash balance  $= \Delta$  Probabilityacquisition  $\times$  Expected overpaymentacquisition

$= 0.30 \times \$ 50 million = \15 million
Value of cash = Cash balance - Estimated discount
= $200 million - $15 million = 185 million

The firm will therefore be valued at  $1,385 million instead of$ 1,400 million. The two factors that determine this discount—the incremental likelihood of a poor investment and the expected net present value of the investment—are likely to be based on investors' assessments of management quality.

Cash Held in Foreign Markets As U.S. companies globalized, they also generate a significant portion of their income in foreign markets, many with much lower corporate tax rates. This income is generally not taxed until it is repatriated to the United States, at which point companies have to pay the differential tax rate (between the U.S. corporate and the foreign corporate rates). Not surprisingly, many companies have chosen to let cash accumulate in foreign markets and subsidiaries, trying to delay and, in some cases, avoid the tax impact. This cash is referenced to as trapped cash and amounted to more than  $20 billion at companies like Cisco in 2011. The conservative approach to valuing this trapped cash is to assume that you will have to pay the differential tax rate on repatriation and compute the value net of this tax. Thus, if a company has$ 20 billion n trapped cash, where you estimate that repatriation will require the payment of 20\% in differential taxes, the value of the cash is only 16 billion.

We face two practical problems in making this adjustment. The first is that companies are not transparent about how much of the cash balance that they show in their financial statements is tied up in foreign subsidiaries or markets. The second is that the tax effect of repatriating this cash may be clear in the very short term, but not so clear in the long term because (1) U.S. tax rates may change over time and (2) there is a chance that Congress may allow for a tax holiday, companies are given a one-time reprieve and allowed to bring the cash back without paying taxes or paying a much lower rate.

# Investments in Risky Securities

So far this chapter has looked at how to value cash and near-cash investments. In some cases, firms invest in risky securities, which can range from investment-grade bonds to high-yield bonds to publicly traded equity in other firms. This section examines the motivation, consequences, and accounting for such investments.

Reasons for Holding Risky Securities Why do firms invest in risky securities issued by other firms? Some do so for the allure of the higher returns they can expect to make investing in stocks and corporate bonds, relative to Treasury bills and commercial paper. In recent years, there has also been a trend for firms (especially technology) to take equity positions in other firms to further their strategic interests. Still other firms take equity positions in firms they view as undervalued by the market; and finally, investing in risky securities is part of doing business for banks, insurance companies, and other financial service companies.

To Make a Higher Return Near-cash investments such as Treasury bills and commercial paper are liquid and have little or no risk, but they also earn low returns. When firms have substantial amounts invested in marketable securities, they can expect to earn considerably higher returns by investing in riskier securities. For instance, investing in corporate bonds will yield a higher interest rate than investing in Treasury bonds, and the rate will increase with the riskiness of the investment. Investing in stocks will provide an even higher expected return, though not necessarily a higher actual return, than investing in corporate bonds. Figure 16.1 summarizes returns on risky investments—corporate bonds, high-yield bonds, and equities—and compares them to the returns on near-cash investments in two decades: 1990 to 1999 and 2000 to 2009. In the first decade, stocks vastly outpaced corporate bonds and Treasuries, but in the second, they did much worse.

However, while investing in riskier investments may earn a higher return for the firm, it does not make the firm more valuable. In fact, using the same reasoning that we used to analyze near-cash investments, we can conclude that investing in riskier investments and earning a fair market return (which would reward the risk) be value neutral.

To Invest in Undervalued Securities A good investment is one that earns a return greater than its required return. That principle, developed in the context of investments in projects and assets, applies just as strongly to financial investments. A firm that invests in undervalued stocks is accepting positive net present value investments, since the return it will make on these equity investments will exceed the cost of equity on these investments. Similarly, a firm that invests in underpriced corporate bonds will also earn an excess return and a positive net present value.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/903e726e1dea185b75f011585d730e93bc4db8db110ba4499788954b153041cb.jpg)
FIGURE 16.1 Returns on Investment Classes: 1990 to 1999 vs. 2000 to 2009


How likely is it that a firm will find undervalued stocks and bonds to invest in? It depends on how efficient markets are and how good the managers of the firm are at finding undervalued securities. In unique cases, a firm may be more adept at finding good investments in financial markets than it is at competing in product markets. Consider the case of Berkshire Hathaway, a firm that has been a vehicle for Warren Buffett's investing acumen over the past few decades. At the end of 2010, Berkshire Hathaway had billions invested in securities of other firms. Among its holdings were investments in Coca-Cola, American Express, and the Washington Post. While Berkshire Hathaway also has real business interests, including ownership of a well-regarded insurance company (GEICO), investors in the firm get a significant portion of their value from the firm's passive equity investments.

Notwithstanding Berkshire Hathaway's success, most firms in the United States steer away from looking for bargains among financial investments. Part of the reason for this is their realization that it is difficult to find undervalued securities in financial markets. Part of the reluctance on the part of firms to make equity investments in other firms can be traced to a recognition that investors in firms like Procter & Gamble and Coca-Cola invest in these firms because of their competitive advantages in product markets (brand name, marketing skills, etc.) and not for their perceived skill at picking stocks.

Strategic Investments During the 1990s, Microsoft accumulated a huge cash balance in excess of 40 billion. It used this cash to make a series of investments in the equity of software, entertainment, and Internet-related firms. It did so for several reasons. $^{5}$  First, investing in these firms gave Microsoft a say in the products and services these firms were developing and preempted competitors from forming partnerships with the firms. Second, it allowed Microsoft to work on joint products with these firms. In 1998 alone, Microsoft announced investments in 14 firms, including ShareWave, General Magic, RoadRunner, and Qwest Communications. In an earlier investment in 1995, Microsoft invested in NBC to create the MSNBC network in order to give it a foothold in the television and entertainment business.


Can strategic investments be value enhancing? As with all investments, it depends on how much is invested and what the firm receives as benefits in return. If the side benefits and synergies that are touted in these investments exist, investing in the equity of other firms can earn much higher returns than the hurdle rate and can create value. It is clearly a much cheaper option than acquiring the entire equity of the firm. It is worth noting, though, that Microsoft's investments in other companies have gained it little in terms of added value. In 2011, Microsoft doubled down on this strategy and announced that it would be buying Skype, the Internet phone service company, for 8.5 billion.

Business Investments Some firms hold marketable securities not as discretionary investments, but because it is the nature of their business. For instance, insurance companies and banks often invest in marketable securities in the course of their business, the former to cover expected liabilities on insurance claims and the latter in the course of trading. While these financial service firms have financial assets of substantial value on their balance sheets, these holdings are not comparable to those of the firms described so far. In fact, they are more akin to the raw material used by manufacturing firms than to discretionary financial investments.

Dealing with Marketable Securities in Valuation Marketable securities can include corporate bonds, with default risk embedded in them, and traded equities, which have even more risk associated with them. As the marketable securities held by a firm become more risky, the choices on how to deal with them become more complex. You have three ways of accounting for marketable securities:

1. The simplest and most direct approach is to estimate the current market value of these marketable securities and add the value to the value of operating assets. For firms valued on a going-concern basis, with a large number of holdings of marketable securities, this may be the only practical option.
2. The second approach is to estimate the current market value of the marketable securities and net out the effect of capital gains taxes that may be due if those securities were sold today. This capital gains tax bite depends on how much was paid for these assets at the time of the purchase and the value today. This is the best way of estimating value when valuing a firm on a liquidation basis or when the firm has provided a clear indication that it plans to sell its holdings.
3. The third and most difficult way of incorporating the value of marketable securities into firm value is to value the firms (using a discounted cash flow approach) that issued these securities and estimate the value of these securities. This approach tends to work best for firms that have relatively few, but large, holdings in other publicly traded firms.


# ILLUSTRATION 16.4: Microsoft's Cash and Marketable Securities—2001

During the 1990s, Microsoft accumulated a huge cash balance, largely as a consequence of holding back on free cash flows to equity that could have been paid to stockholders. In 1999 and 2000, for instance, the firm reported the following holdings of near-cash investments (in $millions):

<table><tr><td></td><td>1999</td><td>2000</td></tr><tr><td>Cash and equivalents:</td><td></td><td></td></tr><tr><td>Cash</td><td>$ 635</td><td>$ 849</td></tr><tr><td>Commercial paper</td><td>$ 3,805</td><td>$ 1,986</td></tr><tr><td>Certificates of deposit</td><td>$ 522</td><td>$ 1,017</td></tr><tr><td>U.S. government and agency securities</td><td>$ 0</td><td>$ 729</td></tr><tr><td>Corporate notes and bonds</td><td>$ 0</td><td>$ 265</td></tr><tr><td>Money market preferreds</td><td>$ 13</td><td>$ 0</td></tr><tr><td>Total cash and equivalents</td><td>$ 4,975</td><td>$ 4,846</td></tr><tr><td>Short-term investments:</td><td></td><td></td></tr><tr><td>Commercial paper</td><td>$ 1,026</td><td>$ 612</td></tr><tr><td>U.S. government and agency securities</td><td>$ 3,592</td><td>$ 7,104</td></tr><tr><td>Corporate notes and bonds</td><td>$ 6,996</td><td>$ 9,473</td></tr><tr><td>Municipal securities</td><td>$ 247</td><td>$ 1,113</td></tr><tr><td>Certificates of deposit</td><td>$ 400</td><td>$ 650</td></tr><tr><td>Total short-term investments</td><td>$12,261</td><td>$18,952</td></tr><tr><td>Cash and short-term investments</td><td>$17,236</td><td>$23,798</td></tr></table>

When valuing Microsoft in 2000, we should clearly consider the 23.798 billion investment as part of the firm's value. The interesting question is whether there should be a discount reflecting investors' fears about poor investments in the future. Through 2000, Microsoft had not been punished for holding on to cash, largely as a consequence of its impeccable track record in delivering ever-increasing profits on the one hand and high stock returns on the other. While 1999 and 2000 were not good years for the firm, investors were probably giving the firm the benefit of the doubt at least for the near future. We would have added the cash balance at face value to the value of Microsoft's operating assets.

The more interesting component is the  $17.7 billion that Microsoft showed as investments in riskier securities in 2000. Microsoft reported the following information about these investments (in$ millions):

<table><tr><td></td><td>Cost Basis</td><td>Unrealized Gains</td><td>Unrealized Losses</td><td>Recorded Basis</td></tr><tr><td>Debt securities recorded at market:</td><td></td><td></td><td></td><td></td></tr><tr><td>Within one year</td><td>$498</td><td>$27</td><td>$0</td><td>$525</td></tr><tr><td>Between 2 and 10 years</td><td>$388</td><td>$11</td><td>-$3</td><td>$396</td></tr><tr><td>Between 10 and 15 years</td><td>$774</td><td>$14</td><td>-$93</td><td>$695</td></tr><tr><td>Beyond 15 years</td><td>$4,745</td><td></td><td>-$933</td><td>$3,812</td></tr><tr><td>Total debt securities recorded at market</td><td>$6,406</td><td>$52</td><td>-$1,029</td><td>$5,429</td></tr><tr><td>Equities:</td><td></td><td></td><td></td><td></td></tr><tr><td>Common stock and warrants</td><td>$5,815</td><td>$5,655</td><td>-$1,697</td><td>$9,773</td></tr><tr><td>Preferred stock</td><td>$2,319</td><td></td><td></td><td>$2,319</td></tr><tr><td>Other investments</td><td>$205</td><td></td><td>$205</td><td></td></tr><tr><td>Total equities and other investments</td><td>$14,745</td><td>$5,707</td><td>-$2,726</td><td>17,726</td></tr></table>

Microsoft had generated a paper profit of almost 3 billion on its original cost of 14.745 billion, and reported a current value of 17.726 billion. Most of these investments are traded in the market and are recorded at market value. The easiest way to deal with these investments is to add the market value to the value of the operating assets of Microsoft to arrive at firm value. The most volatile item is the investment in common stock of other firms. The value of these holdings had almost doubled, as reflected in the recorded basis of 9,773 million. Should we reflect this at current market value when we value Microsoft? The answer is generally yes. However, if these investments are overvalued, you risk building in this overvaluation into your valuation. The alternative is to value each of the equities that the firm has invested in, but this will become increasingly cumbersome as the number of equity holdings increases.

In summary, then, you would add the values of both the near-cash investments of  $23.798 billion and the equity investments of$ 17.726 billion to the value of the operating assets of Microsoft in 2000.

More than a decade later, in 2011, Microsoft still had a large cash balance, invested in a mix of near-cash investments and marketable securities. However, Microsoft's stock price and operating performance lagged the market and the sector between 2000 and 2010. When valuing Microsoft in 2011, you may attach a discount to the cash holdings.

Premiums or Discounts on Marketable Securities? As a general rule, you should not attach a premium or discount for marketable securities, unless you are willing to do intrinsic valuations of the underlying companies. There is an exception to this rule, though, and it relates to firms that make it their business to buy and sell financial assets. These are the closed-end mutual funds, of which there are several hundred listed on the U.S. stock exchanges, and investment companies, such as Fidelity and T. Rowe Price. Closed-end mutual funds sell shares to investors and use the funds to invest in financial assets. The number of shares in a closed-end fund remains fixed, and the share price changes. Since the investments of a closed-end fund are in publicly traded securities, this sometimes creates a phenomenon in which the market value of the shares in a closed-end fund is greater than or less than the market value of the securities owned by the fund. For these firms, it may be appropriate to attach a discount or premium to the marketable securities to reflect their capacity to generate excess returns on these investments.

A closed-end mutual fund that consistently finds undervalued assets and delivers much higher returns than expected (given the risk) should be valued at a premium on the value of its marketable securities. The amount of the premium will depend on how large the excess return is and how long you would expect the firm to continue to make these excess returns. Conversely, a closed-end fund that delivers returns that are much lower than expected should trade at a discount on the value of the marketable securities held by the fund. The stockholders in this fund would clearly be better off if it were liquidated, but that may not be a viable option.

# ILLUSTRATION 16.5: Valuing a Closed-End Fund

The Rising Asia fund is a closed-end fund with investments in traded Asian stocks, valued at 4 billion at today's market prices. The fund has earned a return of 13\% over the past 10 years, but based on the riskiness of its investments and the performance of the Asian market over the period, it should have earned 15\%. Looking forward, your expected return for the Asian market for the future is 12\%, but you anticipate that the Rising Asia fund will continue to underperform the market by 2\%.

To estimate the discount you would expect to see on the fund, let us begin by assuming that the fund will continue in perpetuity earning  $2\%$  less than the return on the market index. The discount would then be:

Estimated discount  $=$  Excess return  $\times$  Fund value/Expected return on the market

$$

= (. 1 0 - . 1 2) (4, 0 0 0) /. 1 2 = \$ 6 6 7 \text {m i l l o n}

$$

On a percent basis, the discount represents  $16.67\%$  of the market value of the investments.

If you assume that the fund will either be liquidated or begin earning the expected return at a point in time in the future—say 10 years from now—the expected discount will become smaller.

# Holdings in Other Firms

In this category, we consider a broader category of nonoperating assets, where we look at holdings in other companies, public as well as private. We begin by looking at the differences in accounting treatment of different holdings and how this treatment can affect the way they are reported in financial statements.

Accounting Treatment The way in which these assets are valued depends on the way the investment is categorized and the motive behind the investment. In general, an investment in the securities of another firm can be categorized as a minority passive investment. a minority active investment, or a majority active investment, and the accounting rules vary depending on the categorization.

Minority Passive Investments If the securities or assets owned in another firm represent less than 20 percent of the overall ownership of that firm, an investment is treated as a minority passive investment. These investments have an acquisition value, which represents what the firm originally paid for the securities, and often a market value. Accounting principles require that these assets be subcategorized into one of three groups—investments that will be held to maturity, investments that are available for sale, and trading investments. The valuation principles vary for each.

For investments that will be held to maturity, the valuation is at historical cost or book value, and interest or dividends from this investment are shown in the income statement.
For investments that are available for sale, the valuation is at market value, but the unrealized gains or losses are shown as part of the equity in the balance sheet and not in the income statement. Thus, unrealized losses reduce the book value of the equity in the firm, and unrealized gains increase the book value of equity.
For trading investments, the valuation is at market value, and the unrealized gains and losses are shown in the income statement.

Firms are allowed an element of discretion in the way they classify investments and through this choice in the way they value these assets. This classification ensures that firms such as investment banks, whose assets are primarily securities held in other firms for purposes of trading, revalue the bulk of these assets at market levels each period. This is called marking to market, and provides one of the few instances in which market value trumps book value in accounting statements.

Minority Active Investments If the securities or assets owned in another firm represent between 20 percent and 50 percent of the overall ownership of that firm, an investment is treated as a minority active investment. While these investments have an initial acquisition value, a proportional share (based on ownership proportion) of the net income and losses made by the firm in which the investment was made is used to adjust the acquisition cost. In addition, the dividends received from the investment reduce the acquisition cost. This approach to valuing investments is called the equity approach.

The market value of these investments is not considered until the investment is liquidated, at which point the gain or loss from the sale relative to the adjusted acquisition cost is shown as part of the earnings in that period.

Majority Active Investments If the securities or assets owned in another firm represent more than 50 percent of the overall ownership of that firm, an investment is treated as a majority active investment. In this case, the investment is no longer shown as a financial investment but is instead replaced by the assets and liabilities of the firm in which the investment was made. This approach leads to a consolidation of the balance sheets of the two firms, where the assets and liabilities of the two firms are merged and presented as one balance sheet. The share of the firm that is owned by other investors is shown as a minority interest on the liability side of the balance sheet. A similar consolidation occurs in the other financial statements of the firm as well, with the statement of cash flows reflecting the cumulated cash inflows and outflows of the combined firm. This is in contrast to the equity approach, used for minority active investments, in which only the dividends received on the investment are shown as a cash inflow in the cash flow statement.

Here again, the market value of this investment is not considered until the ownership stake is liquidated. At that point, the difference between the market price and the net value of the equity stake in the firm is treated as a gain or loss for the period.

**Valuing Cross Holdings in Other Firms** Given that the holdings in other firms can be accounted for in three different ways, how do you deal with each in valuation? The best way to deal with each of them is exactly the same. You would value the equity in each holding separately, and estimate the value of the proportional holding. This value would then be added to the value of the equity of the parent company. Thus, to value a firm with minority holdings in three other firms, you would value the equity in each of these firms, take the percent share of the equity in each, and add it to the value of equity in the parent company.

When income statements are consolidated, you would first need to strip the income, assets, and debt of the subsidiary from the parent company's financials before you do any of the aforementioned steps. If you do not do so, you will double count the value of the subsidiary.

Why, you might ask, do we not value the consolidated firm? You could, and in some cases, because of the absence of information, you might have to. The reason we would suggest separate valuations is because the parent and the subsidiaries may have very different characteristics—costs of capital, growth rates, and reinvestment rates.

Valuing the combined firm under these circumstances will yield misleading results. There is another reason: Once you have valued the consolidated firm, you will have to subtract the portion of the equity in the subsidiary that the parent company does not own. If you have not valued the subsidiary separately, it is not clear how you would do this. Note that the conventional practice of netting out the minority interest does not accomplish this, because minority interest reflects book rather than market value.

As a firm's holdings become more numerous, estimating the values of the holdings will become more onerous. If the holdings are publicly traded, substituting the market values of the holdings for estimated value is an alternative worth exploring. While you risk building into your valuation any mistakes the market might be making in valuing these holdings, this approach is more time efficient.

# ESTIMATING THE VALUE OF HOLDINGS IN PRIVATE COMPANIES

When a publicly traded firm has a cross holding in a private company, it is often difficult to obtain information on the private company and to value it. Consequently, you might have to make your best estimate of how much this holding is worth based on the limited information that you have available. One way to do this is to estimate the multiple of book value at which firms in the same business (as the private business in which you have holdings) typically trade at and apply this multiple to the book value of the holding in the private business. Assume, for instance, that you are trying to estimate the value of the holdings of a pharmaceutical firm in five privately held biotechnology firms, and that these holdings collectively have a book value of $50 million. If biotechnology firms typically trade at 10 times book value, the estimated market value of these holdings would be $500 million.

In fact, this approach can be generalized to estimate the value of complex holdings when you lack the information to estimate the value for each holding or there are too many such holdings. For example, you could be valuing a Japanese firm with dozens of cross holdings. You could estimate a value for the cross holdings by applying a multiple of book value to their cumulative book value.

# ILLUSTRATION 16.6: Valuing Holdings in Other Companies

Segovia Entertainment operates in a wide range of entertainment businesses. The firm reported  $300 million in operating income (EBIT) on capital invested of$ 1,500 million in the current year; the total debt outstanding is $500 million. A portion of the operating income ( $100 million), capital invested ($ 400 million), and debt outstanding ( $150 million) represent Segovia's holdings in Seville Television, a television station owner. Segovia owns only 51\% of Seville, but Seville's financials are fully consolidated with those of Segovia.$  In addition, Segovia owns 15\% of LatinWorks, a record and CD company. These holdings have been categorized as minority passive investments, and the dividends from the investments are shown as part of Segovia's net income but not as part of its operating income. LatinWorks reported operating income of  $80 million on capital invested of$ 250 million in the current year; the firm has $100 million in debt outstanding. We will assume the following:


The cost of capital for Segovia Entertainment, without considering its holdings in either Seville or LatinWorks, is  $10\%$ . The firm is in stable growth, with operating income (again not counting the holdings) growing  $5\%$  a year in perpetuity.
Seville Television has a cost of capital of  $9\%$  and is in stable growth, with operating income growing  $5\%$  a year in perpetuity.
LatinWorks has a cost of capital of  $12\%$  and is in stable growth, with operating income growing  $4.5\%$  a year in perpetuity.
None of the firms has a significant balance of cash and marketable securities.
The tax rate for all of these firms is  $40\%$ .

We can value Segovia Entertainment in three steps:

STEP 1: Value the equity in the operating assets of Segovia without counting any of the holdings. To do this, we first have to cleanse the operating income of the consolidation:

Operating income from Segovia's operating assets = Consolidated income - Income from

Seville = $300 - $100 = 200 million

Capital invested in Segovia's operating assets = Consolidated capital - Capital from Seville = \ $1,500 - \$ 400 = \$1,100 million

Debt in Segovia's operating assets = Consolidated debt – Debt from Seville = $500 – $150 = 350 million

Return on capital invested in Segovia's operating assets  $= 200(1 - .4) / 1,100 = 10.91\%$

Reinvestment rate  $= \frac{\mathrm{g}}{\mathrm{ROC}} = 5\% /10.91\% = 45.83\%$

Value of Segovia's operating assets  $=$  EBIT(1 - t)(1 - Reinvestment rate)(1 + g)/(Cost of capital - g)

= 200(1 - .4)(1 - .4583)(1.05) / (.10 - .05) = \1,365 million

Value of equity in Segovia's operating assets = Value of operating assets - Value of Segovia's debt = 1,365 - 350 = 1,015 million


STEP 2: Value the  $51\%$  of equity in Seville Enterprises:

Operating income from Seville's operating assets = 100 million

Capital invested in Seville's operating assets = 400 million

Debt invested in Seville = 150 million

Return on capital invested in Seville's operating assets  $= 100(1 - .4) / 400 = 15\%$

Reinvestment rate  $= \frac{\mathrm{g}}{\mathrm{{ROC}}} = 5\% / {15}\%  = {33.33}\%$

Value of Seville's operating assets  $=$  EBIT(1 - t)(1 - Reinvestment rate)(1 + g)/(Cost of capital - g)

= 100(1 - .4)(1 - .3333)(1.05) / (.09 - .05) = \ 1,050 million

Value of Seville's equity = Value of operating assets - Debt = 1,050 - 150 = 900 million

Value of Segovia's equity stake in Seville = .51(900) = \ 459 million

STEP 3: Value the  $15\%$  stake in LatinWorks:

Operating income from LatinWorks' operating assets = 75 million

Capital invested in LatinWorks' operating assets = 250 million

Return on capital invested in LatinWorks' operating assets  $= 75(1 - .4) / 250 = 18\%$

Reinvestment rate  $= \mathrm{g} / \mathrm{ROC} = 4.5\% /18\% = 25\%$

Value of LatinWorks' operating assets = EBIT(1 - t)(1 - Reinvestment rate)(1 + g)/(Cost of capital - g) = 75(1 -.4)(1 -.25)(1.045)/(.12 -.045) = 470.25 million


Value of LatinWorks' equity = Value of operating assets - Debt = 470.25 - 100 = 370.25 million
Value of Segovia's equity stake in LatinWorks = .15(370.25) = 55 million

The value of Segovia as a firm can now be computed (assuming that it has no cash balance):

Value of equity in Segovia = Value of equity in Segovia + 51\% of equity in Seville + 15\% of equity in LatinWorks = $1,015 + $459 + $55 = $1,529 million

To provide a contrast, consider what would have happened if we had used the consolidated income statement and Segovia's cost of capital to do this valuation. We would have valued Segovia and Seville together as follows:

Operating income from Segovia's consolidated assets = 300 million

Capital invested in Segovia's consolidated assets = 1,500 million

Consolidated debt = 500 million

Return on capital invested in Segovia's operating assets  $= 300(1 - .4) / 1,500 = 12\%$

Reinvestment rate  $= \mathrm{g} / \mathrm{ROC} = 5\% /12\% = 41.67\%$

Value of Segovia's operating assets = EBIT(1 - t)(1 - Reinvestment rate)(1 + g)/(Cost of capital - g) = 300(1 -.4)(1 -.4167)(1.05)/(.10 -.05) = 2,205 million

Value of equity in Segovia = Value of operating assets – Consolidated debt – Minority interests in Seville + Minority interest in LatinWorks = 2,205 - 500 - 122.5 + 22.5 = 1,605 million

Note that the minority interests in Seville are computed as  $49\%$  of the book value of equity at Seville.

Book value of equity in Seville = Capital invested in Seville - Seville's debt

$= 400 - 150 = 250$  million

Minority interest  $= (1 -$  Parent company holding)Book value of equity

$= (1 - .51)250 = \$  122.5$ million

The minority interests in LatinWorks are computed as  $15\%$  of the book value of equity in Latin-Works, which is \ $250 million (capital invested minus debt outstanding). It would be pure chance if this value were equal to the true value of equity, as first estimated, of \$ 1,529 million.

You can see from the discussion that you need a substantial amount of information to value holdings correctly. This information may be difficult to come by when the holdings are in private companies.

# ILLUSTRATION 16.7: Valuing Cross Holdings—Real-World Concerns

In Illustration 16.6, we were able to value each of the cross-holdings separately because we were able to access the information on each of the subsidiaries. That may not always be possible or feasible in the real world. To illustrate, we will use two examples: Hyundai Heavy, a Korean shipbuilder, in May 2008 and Tata Motors in May 2010.

Hyundai Heavy, a part of a Hyundai Group in Korea, has cross holdings in seven other Hyundai Group companies, four of which are publicly traded and three of which are privately held.

The company reported the book values of its holdings in these subsidiaries in the financial statements for 2007:

<table><tr><td>Cross Holding</td><td>Book Value (in billions of won)</td></tr><tr><td>Hyundai Merchant Marine</td><td>380.00</td></tr><tr><td>Hyundai Motors</td><td>355.00</td></tr><tr><td>Hyundai Elevator</td><td>9.20</td></tr><tr><td>Hyundai Corp</td><td>2.00</td></tr><tr><td>Hyundai Oil Bank</td><td>329.80</td></tr><tr><td>Hyundai Samho</td><td>1,068.50</td></tr><tr><td>Hyundai Finance</td><td>88.20</td></tr><tr><td>Value of Cross Holdings</td><td>2,232.70</td></tr></table>

To estimate the market value of these holdings, we use two approaches. For the four publicly traded firms, we use the market values of the firms in May 2008 to estimate the values of the holdings. For the three private businesses, we used the price to book ratio at which publicly traded Korean companies in the underlying businesses traded to estimate market value.

<table><tr><td>Cross Holding</td><td>\% of Shares Held</td><td>Total Market Cap</td><td>Value of Holding</td></tr><tr><td>Hyundai Merchant Marine</td><td>17.60\%</td><td>4,806.00</td><td>845.86</td></tr><tr><td>Hyundai Motors</td><td>3.46\%</td><td>17,540.00</td><td>606.88</td></tr><tr><td>Hyundai Elevator</td><td>2.16\%</td><td>688.00</td><td>14.86</td></tr><tr><td>Hyundai Corp.</td><td>0.36\%</td><td>602.00</td><td>2.17</td></tr><tr><td></td><td>Book Value</td><td>PBV for Sector</td><td></td></tr><tr><td>Hyundai Oil Bank</td><td>329.80</td><td>1.10</td><td>362.78</td></tr><tr><td>Hyundai Samho</td><td>1,068.50</td><td>1.80</td><td>1,923.30</td></tr><tr><td>Hyundai Finance</td><td>88.20</td><td>1.10</td><td>97.02</td></tr><tr><td>Value of cross holdings</td><td></td><td></td><td>3,852.87</td></tr></table>

Thus, the value of the cross holdings that we add on to the discounted cash flow value for operating assets is 3,853 billion Korean won, not the book value of 2,233 billion won.

For Tata Motors, the cross-holdings were more widespread (20-plus companies) and more opaque. Two of the holdings were in publicly traded companies, and we use the market values for those: Rs 13,527 million in Tata Steel and Rs 24.3 million in Tata Chemicals; the total market value of Rs 13,596 million replace the book value of Rs 2,701 million in these holdings. In addition, though, Tata Motors reported book value of Rs 137,875 million in other cross holdings, where we were unable to estimate a market value. The cumulated value that we estimate for the cross holdings is therefore Rs 151,471 million:

Value of Tata Motors' cross holdings  $= 13,596 + 137,875 = \mathrm{Rs}151,471$  million

While we are not comfortable with this value, we see little choice, given the information that we have available on the cross-holdings. Adding to our disquiet is the fact that these cross holdings amount to almost  $42\%$  of our estimated value for Tata Motors as a company; the value that we obtained for the operating assets is Rs 210,832 million. In effect, buying stock in Tata Motors is an investment in the company  $(58\%)$  and the Tata Group  $(42\%)$ .

# Other Nonoperating Assets

Firms can have other nonoperating assets, but they are likely to be of less importance than those listed in the previous section. In particular, firms can have unutilized assets that do not generate cash flows and have book values that bear little

# VALUE OF TRANSPARENCY

The difficulty we often face in identifying and valuing holdings in other companies highlights a cost faced by firms that have complicated cross-holding structures and that make little or no effort to explain what they own to investors. In fact, many companies seem to adopt a strategy of making it difficult for their own stockholders to see what they own lest they be questioned about the wisdom of their choices. Not surprisingly, the market values of these firms often understate the value of these hidden holdings.

Many firms outside the United States use, as an excuse, the argument that the disclosure laws are not as strict in their countries as they are in the United States, but disclosure laws provide a floor for information that has to be revealed to markets and not a ceiling. For instance, InfoSys, an Indian software company, has one of the most informative financial reports of any company anywhere in the world. In fact, the firm has reaped substantial financial rewards because of its openness, as investors are better able to gauge how the firm is doing and tend to be much more willing to listen to management views.

So, what can undervalued firms with cross holdings do to improve their value? First, they can break down complicated holdings structures that impede understanding and valuation. Second, they can adopt a strategy of revealing as much as they can to investors about their holdings—private as well as public. Third, they need to stick with this strategy when they have bad news to report. A firm that is generous with positive information and stingy with negative information will rapidly lose credibility as an information source. Finally, if all else fails, they can consider divesting or spinning off their holdings.

resemblance to market values. An example would be prime real estate holdings that have appreciated significantly in value since the firm acquired them but produce little if any cash flows. An open question also remains about overfunded pension plans. Do the excess funds belong to stockholders, and, if so, how do you incorporate the effect into value?

Unutilized Assets The strength of discounted cash flow models is that they estimate the value of assets based on expected cash flows that these assets generate. In some cases, however, this can lead to assets of substantial value being ignored in the final valuation. For instance, assume that a firm owns a plot of land that has not been developed, and that the book value of the land reflects its original acquisition price. The land obviously has significant market value but does not generate any cash flow for the firm yet. If a conscious effort is not made to bring the expected cash flows from developing the land into the valuation, the value of the land will be left out of the final estimate.

How do you reflect the value of such assets in firm value? An inventory of all such assets (or at least the most valuable ones) is a first step, followed up by estimates of market value for each of the assets. These estimates can be obtained by looking at what the assets would fetch in the market today or by projecting the cash flows that could be generated if the assets were developed and discounting the cash flows at the appropriate discount rate.


The problem with incorporating unutilized assets into firm value is an informational one. Firms do not reveal their unutilized assets as part of their financial statements. While it may sometimes be possible for investors and analysts to find out about such assets, it is far more likely that they will be uncovered only when you have access to information about what the firm owns and uses.

Pension Fund Assets Firms with defined pension liabilities sometimes accumulate pension fund assets in excess of these liabilities. While the excess does belong to stockholders, they usually face a tax liability if they claim it. The conservative rule in dealing with overfunded pension plans would be to assume that the social and tax costs of reclaiming the excess funds are so large that few firms would ever even attempt to do it. The more realistic approach would be to add the after-tax portion of the excess funds into the valuation.

As an illustration, consider a firm that reports pension fund assets that exceed its liabilities by  $1 billion. Since a firm that withdraws excess assets from a pension fund is taxed at 50\%$  on these withdrawals (in the United States), you would add 500 million to the estimated value of the operating assets of the firm. This would reflect the  $50\%$  of the excess assets that the firm will be left with after paying the taxes.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/71b291d5b2aaa57503cb832305d3ac6676ca63f9f808c1157b4dd14bf75a24e4.jpg) cash.xls: This dataset on the Web summarizes the value of cash and marketable securities by industry group in the United States for the most recent quarter.


# FIRM VALUE AND EQUITY VALUE

Once you have estimates of the values of the operating assets, cash and marketable securities, and the other nonoperating assets owned by a firm, you can estimate the value of the firm as the sum of the three components. To get to the value of the equity from the firm value, you subtract out the nonequity claims on the firm. Nonequity claims would include debt and preferred stock, though the latter are often treated as equity in financial statements.

# What Nonequity Claims Should Be Subtracted?

The general rule that you should use is that the debt you subtract from the value of the firm should be at least equal to the debt that you use to compute the cost of capital. Thus, if you decide to capitalize operating leases as debt, to compute the cost of capital, you should subtract the debt value of operating leases from the value of operating assets to estimate the value of equity. If the firm you are valuing has preferred stock, you would use the market value of the stock (if it is traded) or estimate a market value (if it is not) and deduct it from firm value to get to the value of common equity.


There may be other claims on the firm that do not show up in debt that you should subtract from firm value.

■ Expected liabilities on lawsuits. You could be analyzing a firm that is the defendant in a lawsuit, where it potentially could have to pay tens of millions of dollars in damages. You should estimate the probability that this will occur, and use this probability to estimate the expected liability. Thus, if there is a 10 percent chance that you could lose a case that you are defending, and the expected damage award is  $1 billion, you would reduce the value of the firm by$ 100 million (probability × expected damages). If the expected liability is not anticipated until several years from now, you would compute the present value of the payment.
■ Unfunded pension and health care obligations. If a firm has significantly underfunded a pension or a health plan, it will need to set aside cash in future years to meet these obligations. While it would not be considered debt for cost of capital purposes, it should be subtracted from firm value to arrive at equity value.
- Deferred tax liability. The deferred tax liability that shows up on the financial statements of many firms reflects the fact that firms often use tax-deferral strategies that reduce their taxes in the current year while increasing their taxes in future years. Of the three items listed here, this one is the least clearly defined, since it is not clear when or even whether the obligation will come due. Ignoring it may be foolhardy, though, since the firm could find itself making these tax payments in the future. The most sensible way of dealing with this item is to consider it an obligation, but one that will come due only when the firm's growth rate moderates. Thus, if you expect your firm to be in stable growth in 10 years, you would discount the deferred tax liability back 10 years and deduct this amount from firm value to get to equity value.

# What about Future Claims?

As you forecast earnings growth for your firm, you generally also assume that the firm will increase its debt as it grows. A question that arises then is whether you should be subtracting the value of these future debt issues when estimating equity value today. The answer is no, since the value of the equity is a current value and these future claims do not exist today. To illustrate, assume that you have a firm with no debt today and that you assume that it will have a 30 percent debt ratio in stable growth. Assume further that your estimate of the terminal value for this firm is  $10 billion in five years. You are implicitly assuming that your firm will borrow$ 3 billion in five years to raise its debt ratio to 30 percent. This higher debt ratio may affect your firm value today, but the value of equity today is the firm value less the current debt (which is zero).

# MANAGEMENT AND EMPLOYEE OPTIONS

Firms use options to reward managers as well as other employees. There are two effects that these options have on value per share. One is created by options that have already been granted. These options, some of which have exercise prices well below the stock price, reduce the value of equity per share, since a portion of the existing equity in the firm has to be set aside to meet these eventual option exercises. The other is the likelihood that these firms will use options on a continuing basis to reward employees or to compensate them. These expected option grants reduce the portion of the expected future cash flows that accrue to existing stockholders.

# Magnitude of the Option Overhang

The use of options in management compensation packages is not new to firms. Many firms in the 1970s and 1980s initiated option-based compensation packages to induce top managers to think like stockholders in their decision making. In most cases, though, the drain on value created by these options was small enough that it could be ignored without affecting the value per share substantially. In the 1990s, however, the surge in both the number and the value of technology firms has highlighted the importance of dealing with these options in valuation.

What is different about technology firms? One is that management contracts at these firms are much more heavily weighted toward options than are those at other firms. The second is that the paucity of cash at these firms has meant that options are granted not just to top managers but to employees all through the organization, making the total option grants much larger. The third is that some of the smaller firms have used options to meet operating expenses and pay for supplies.

Characteristics of Option Grants Firms that use employee options usually restrict when and whether these options can be exercised. It is standard, for instance, that the options granted to an employee cannot be exercised until they are vested. For this to occur, the employee usually has to remain for a period that is specified in the contract. While firms do this to keep employee turnover low, it also has implications for the value of these options. Firms that issue options generally do not face any tax consequences in the year in which they make the issue. When the options are exercised, however, they are allowed to treat the difference between the stock price and the exercise price as an employee expense and claim it as a tax deduction.

# Options in Existence

Given the large number of options outstanding at many firms, our first task is to consider ways in which we can incorporate their effect into value per share. The section begins by presenting the argument for why these outstanding options matter when computing value per share, and then considers four ways in which we can incorporate their effect on value.

Why Options Affect Value per Share Why do existing options affect value per share? Note that not all options do. In fact, options issued and listed by the options exchanges have no effect on the value per share of the firms on which they are issued. The options issued by firms themselves do have an effect on value per share, since there is a chance that they will be exercised in the near or far future. Given that these options offer the right to individuals to buy stock at a fixed price, they will be exercised only if the stock price rises above that exercise price. When they are exercised, the firm has two choices, both of which have negative consequences for existing stockholders. It can issue additional shares to cover the option exercise. But this increases the number of shares outstanding and reduces the value per share to existing stockholders. Alternatively, it can use cash flows from operations to buy back shares in the open market and use these shares to meet the option exercise. This reduces the cash flows available to current equity investors in future periods, and makes their equity less valuable today.


Ways of Incorporating Existing Options into Value There are four approaches that are used to incorporate that effect of options that are already outstanding into the value per share. However, the first three approaches can lead to misleading estimates of value.

Use Fully Diluted Number of Shares to Estimate Per-Share Value The simplest way to incorporate the effect of outstanding options on value per share is to divide the value of equity by the number of shares that will be outstanding if all options are exercised today—the fully diluted number of shares. While this approach has the virtue of simplicity, it will lead to too low an estimate of value per share for two reasons:

1. It considers all options outstanding, not just ones that are in-the-money and vested. To be fair, there are variants of this approach where the shares outstanding are adjusted to reflect only in-the-money and vested options.
2. It does not incorporate the expected proceeds from exercise, which will comprise a cash inflow to the firm.

Finally, this approach does not build in the time premium on the options into the valuation.

Estimate Expected Option Exercises in the Future and Build In Expected Dilution In this approach, you forecast when options will be exercised and build in the expected cash outflows associated with the exercise by assuming that the firm will buy back stock to cover the exercise. The biggest limitation of this approach is that it requires estimates of what the stock price will be in the future and when options will be exercised on the stock. Given that your objective is to examine whether the price today is correct, forecasting future prices to estimate the current value per share seems circular. In general, this approach is neither practical nor particularly useful in coming up with reasonable estimates of value.


Use Treasury Stock Approach This approach is a variant of the fully diluted approach. Here the number of shares is adjusted to reflect options that are outstanding, but the expected proceeds from the exercise (exercise price times number of options) are added to the value of equity. The limitations of this approach are that, like the fully diluted approach, it does not consider the time premium on the options and there is no effective way of dealing with vesting. Generally this approach, by underestimating the value of options granted, will overestimate the value of equity per share.

# ILLUSTRATION 16.8: The Option Overhang at Cisco—Fully Diluted versus Treasury Stock Approaches

Cisco Systems has used management options liberally over its lifetime to supplement compensation packages. After a troubled decade of failed acquisitions and stagnant stock prices, the company's stock was trading at 16.26 a share in May 2011. At that point in time, the company had 5,528 million shares outstanding but it also reported 732 million options that were outstanding, with the following breakdown on exercise prices and maturity:

<table><tr><td>Exercise Price</td><td>Number (in millions)</td><td>Weighted Average Life</td><td>Weighted Average Exercise Price</td></tr><tr><td>$0.01–$15.00</td><td>71</td><td>2.50</td><td>$10.62</td></tr><tr><td>$15.01–$18.00</td><td>137</td><td>3.18</td><td>$17.38</td></tr><tr><td>$18.01–$20.00</td><td>177</td><td>2.90</td><td>$19.29</td></tr><tr><td>$20.01–$25.00</td><td>188</td><td>4.26</td><td>$22.48</td></tr><tr><td>$25.01–$35.00</td><td>158</td><td>6.02</td><td>$30.63</td></tr><tr><td>&gt;$35</td><td>1</td><td>0.61</td><td>$54.22</td></tr><tr><td>Total</td><td>732</td><td>3.94</td><td>$21.39</td></tr></table>

To evaluate Cisco, we first value the company using a discounted cash flow model, and estimate an aggregate value for the equity of 113,331 million. Note that it this value that has to be allocated across two claim holders — the owners of the common stock and the option holders.

To estimate the value using the fully diluted approach, we divide the total value of equity by the fully diluted number of shares:

$$

\text {V a l u e o f e q u i t y} = \frac {\text {V a l u e o f e q u i t y}}{\# \text {o f p r i m a r y s h a r e s} + \# \text {o f o p t i o n s}} = \frac {1 1 3 , 3 3 1}{(5 5 2 8 + 7 3 2)} = \$ 1 8. 1 0 / \text {s h a r e}

$$

Note that this is an extremely conservative estimate since not only are we ignoring the exercise proceeds from the options but also because of the fact that many of these options are out-of-the money currently.

With the treasury stock approach, rather than add the exercise proceeds from all options outstanding, we incorporate only the 208 million options that are in-the-money and add the exercise proceeds of  $3,135 million from these options being exercised (with an average exercise price of$ 15.07).


$$

\begin{array}{l} \text {V a l u e o f e q u i t y} = \frac {\text {V a l u e o f e q u i t y} + \text {E x e r c i s e p r o c e d e s}}{\# \text {o f p r i m a r y s h a r e s} + \# \text {o f i n - t h e - m o n e y o p t i o n s}} \\ = \frac {\mathbb {S} 1 1 3 , 3 3 1 + \mathbb {S} 3 , 1 3 5}{5 , 5 2 8 + 2 0 8} = \mathbb {S} 2 0. 3 0 \\ \end{array}

$$

Note that the treasury stock approach ignores the time premium on options in-the-money. It is therefore likely to give you too high an estimate of value of equity per share. (In fact, incorporating the out-of-the-money options into a treasury stock approach will push up the value per share.)

The biggest advantage of this approach is that it does not require a value per share (or stock price) to incorporate the option value into per-share value. As you will see with the final (and recommended) approach, there is a circularity that is created when the stock price is an input when estimating value per share.

Value Options Using Option Pricing Model The correct approach to dealing with options is to estimate the value of the options today, given today's value per share and the time premium on the option. Once this value has been estimated, it is subtracted from the equity value, and then divided by the number of shares outstanding to arrive at value per share.

Value of equity per share = (Value of equity - Value of options outstanding) / Primary number of shares outstanding

In valuing these options, however, there are four measurement issues that you have to confront. One relates to the fact that not all of the options outstanding are vested and some of the nonvested options might never be vested. The second relates to the stock price to use in valuing these options. As the description in the preceding paragraph makes clear, the value per share is an input to the process as well as the output. The third issue is taxation. Since firms are allowed to deduct a portion of the expense associated with option exercises, there may be a potential tax saving when the options are exercised. The final issue relates to private firms or firms on the verge of a public offering. Key inputs to the option pricing model, including the stock price and the variance, cannot be obtained for these firms, but the options have to be valued nevertheless.

Dealing with Vesting As noted earlier in the chapter, firms granting employee options usually require that the employee receiving the options stay with the firm for a specified period for the option to be vested. Consequently, when you examine the options outstanding at a firm, you are looking at a mix of vested and nonvested options. The nonvested options should be worth less than the vested options, but the probability of vesting will depend on how in-the-money the options are and the period left for an employee to vest. While there have been attempts to develop option pricing models that allow for the possibility that employees may leave a firm before vesting and forfeit the value of their options, $^{10}$  the likelihood of such an occurrence when a manager's holdings are substantial should be small. Carpenter (1998) developed a simple extension of the standard option pricing model to allow for early exercise and forfeiture, and used it to value executive options.


Which Stock Price? The answer to this question may seem obvious. Since the stock is traded and you can find a stock price, it would seem that you should be using the current stock price to value options. However, you are valuing these options to arrive at a value per share that you will then compare to the market price to decide whether a stock is under- or overvalued. Thus, using the current market price to arrive at the value of the options and then using this option value to estimate an entirely different value per share seems inconsistent.

There is a solution. You can value the options using the estimated value per share. However, this creates circular reasoning in your valuation. In other words, you need the option value to estimate value per share and value per share to estimate the option value. We would recommend that the value per share be initially estimated using the treasury stock approach, and that you then converge on the proper value per share by iterating.[11]

There is another related issue. When options are exercised, they increase the number of shares outstanding, and by doing so, there can have an effect on the stock price. In conventional option pricing models, the exercise of the option does not affect the stock price. These models have to be adapted to allow for the dilutive effect of option exercise. This can be done fairly simply by adjusting the current stock price for the expected effects of dilution (as we did with warrants in Chapter 5).

Taxation When options are exercised, the firm can deduct for tax purposes the difference between the stock price at the time and the exercise price as an employee expense. This potential tax benefit reduces the drain on value created by having options outstanding. One way in which you could estimate the tax benefit is to multiply the difference between the stock price today and the exercise price by the tax rate; clearly, this would make sense only if the options are in-the-money. While this does not allow for the expected price appreciation over time, it has the benefit of simplicity. An alternative way of estimating the tax benefit is to compute the after-tax value of the options:

After-tax value of options = Value from option pricing model(1 - Tax rate)

This approach is also straightforward and allows you to consider the tax benefits from option exercise in valuation. One of the advantages of this approach is that it can be used to consider the potential tax benefit even when options are out-of-the-money.

# WHAT ABOUT OTHER OPTIONS?

While we have considered the effects of management options specifically in this section, everything that has been said here about management and employee options applies to other equity options issued by the firm as well. In particular, warrants issued to raise equity capital and conversion options in convertible securities (bonds and preferred stock) also dilute the value of the common stock in a firm. Consequently, you would need to reduce the value of equity by the value of these options as well. Generally speaking, though, warrants and conversions tend to be easier to value than management options because they are traded. The market values of the warrants and the conversion options can be used as measures of their estimated values.

Nontraded Firms A couple of key inputs to the option pricing model—the current price per share and the variance in stock prices—cannot be obtained if a firm is not publicly traded. There are two choices in this scenario. One is to revert to the treasury stock approach to estimate the value of the options outstanding and abandon the option pricing models. The other is to stay with the option pricing models and to estimate the value per share from the discounted cash flow model. The variance of similar firms that are publicly traded can be used to estimate the value of the options.

# ILLUSTRATION 16.9: Valuing Management Options as Options: Cisco Systems

In Illustration 16.8, we estimated the value of equity per share at Cisco Systems using both the fully diluted approach, which we argued would give us too low a value per share, and the treasury stock approach, which yields too high a value. To get it right, we valued the 732 million options outstanding as options, using the actual stock price ($16.26), the average exercise price of $21.39, the weighted average maturity of 3.94 years and an estimated standard deviation in stock prices of  $40\%$ . With these inputs and using the Black-Scholes model, adjusted for dilution, we arrived at an estimate of value of $2.96 per option and an aggregate value of $2,165 million for the 732 million options. (Cisco had a dividend yield of  $1.48\%$  that we incorporated into the model; see Chapter 5 for details).

The value of equity per share can now be computed, using the estimated value of equity of 113,331 million that we arrived at, using discounted cash flows:

<table><tr><td>Value of equity</td><td>$113,331</td></tr><tr><td>Value of options</td><td>$2,165</td></tr><tr><td>Value of equity in common stock</td><td>$111,166</td></tr><tr><td>/Primary number of shares</td><td>5528</td></tr><tr><td>Value per share</td><td>$20.10</td></tr></table>

Thus, after incorporating the option value, we arrive at a value per share higher than that estimated using the fully diluted approach and lower than that estimated from the treasury stock approach. This value ($20.10) is still much higher than the price of $16.26 that the stock was trading at in May 2011.

In valuing Cisco's options, we used the current stock price rather than the estimated value per share. If we did use the estimated value per share, it would create an iterative process—the value of the options affects the value per share and the value per share affects the value of the options. Employing this iterative process would have increased the after-tax value of the options to  $2,637 million and reduced the value per share to$ 20.00.

# Future Option Grants

While incorporating options that are already outstanding is fairly straightforward, incorporating the effects of future option grants is much more complicated. In this section, the argument for why these option issues affect value is presented, as well as how to incorporate these effects into value.

Why Future Options Issues Affect Value Just as options outstanding currently represent potential dilution or cash outflows to existing equity investors, expected option grants in the future will affect value per share by increasing the number of shares outstanding in future periods. The simplest way of thinking about this expected dilution is to consider the terminal value in the discounted cash flow model. As constructed in the previous chapter, the terminal value is discounted to the present and divided by the shares outstanding today to arrive at the value per share. However, expected option issues in the future will increase the number of shares outstanding in the terminal year, and therefore reduce the portion of the terminal value that belongs to existing equity investors.

Ways of Incorporating Effect into Value per Share It is much more difficult to incorporate the effect of expected option issues into value than it is to consider existing options. This is because you have to forecast not only how many options will be issued by a firm in future periods, but also what the terms of these options will be. While this may be possible for a couple of periods with proprietary information (the firm lets you know how much it plans to issue and at what terms), it will become more difficult beyond that point.

A more realistic approach to incorporating future option grants into value is to estimate the value of options that will be granted in future periods as a percentage of revenues or operating income. By doing so, you can avoid having to estimate the number and terms of future option issues. Estimation will also become easier since you can draw on the firm's own history (by looking at the value of option grants in previous years as a proportion of firm value) and the experiences of more mature firms in the sector. Generally, as firms become larger, the value of options granted as a percent of revenues should become smaller.

Since 2007, U.S. and international accounting standards have converged on the accounting for option grants. Both require that options be expensed when granted rather than when exercised (which used to be the practice until 2007). As a result, the current operating expenses for a firm include the value of options granted in the current year. If we then keep current operating margins, we are implicitly assuming that the firm will continue to grant options at the same pace (as a percent of revenues). If we converge on industry margins, we are assuming that the firm's option grants will converge on industry averages (as a percent of revenue). In the Cisco valuation, we assumed that current margins would remain unchanged for the future, thus locking in option grants at their current percent of revenues into the future.

# VALUE PER SHARE WHEN VOTING RIGHTS VARY

When you divide the value of the equity by the number of shares outstanding, you assume that the shares all have the same voting rights. If different classes of shares have different voting rights, the value of equity per share has to reflect these differences, with the shares with more voting rights having higher value. Note, though, that the total value of equity is still unchanged. To illustrate, assume that the value of equity in a firm is 500 million and that there are 50 million shares outstanding; 25 million of these shares have voting rights and 25 million do not. Furthermore, assume that the voting shares will have a value 10 percent higher than the nonvoting shares. To estimate the value per share:


Value per nonvoting share = 500 million/(25 million × 1.10 + 2.5 million)

$$

= \$ 500 \text {m i l l i o n} / 52. 5 \text {m i l l i o n} = \$ 9. 5 2

$$

Value per voting share = \ 9.52(1.10) = \$ 10.48

The key issue that you face in valuation then is in coming up with the discount to apply for nonvoting shares or, alternatively, the premium to attach to voting shares.

# Voting Shares versus Nonvoting Shares

What premium should be assigned to the voting shares? You have two choices. One is to look at studies that empirically examine the size of the premium for voting rights and to assign this premium to all voting shares. Lease, McConnell, and Mikkelson (1983) examined 26 firms that had two classes of common stock outstanding, and they concluded that the voting shares traded at a premium relative to nonvoting shares.[12] The premium, on average, amounted to 5.44 percent, and the voting shares sold at a higher price in 88 percent of the months for which data were available. In four firms that also had voting preferred stock, however, the voting common stock traded at a discount of about 1.17 percent relative to nonvoting shares.

The other option is to be more discriminating and vary the premium depending on the firm being valued. Voting rights have value because they give shareholders a say in the management of the firm. To the extent that voting shares can make a difference—by removing incumbent management, forcing management to change policy, or selling to a hostile bidder in a takeover—their price will reflect the possibility of a change in the way the firm is run.[13] Nonvoting shareholders do not participate in these decisions.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/30e069ca55c0db096ff72a88729590ae1c76c7f454b4aa3d9443474618283252.jpg) warrants.xls: This spreadsheet allows you to value the options outstanding in a firm, allowing for the dilution effect.


To estimate the value of the voting versus nonvoting shares, we go through the following four-step sequence:

1. Value the firm under existing management (status quo value); this will lock in current investment, financing and dividend policies, even if these policies are suboptimal.
2. Divide the status quo value by the total number of shares (voting and nonvoting) to get the value per nonvoting share.

Status quo value Value per nonvoting share  $=$  # of voting shares  $^+$  # of nonvoting shares

3. Value the firm under new and presumably better management (optimal value); this will require reassessing how much and how well the firm invests, how much debt it uses in its capital structure, and how much cash it returns to stockholders.
4. Estimate a probability that the firm's management will change  $(\pi_{\text{change}})$  and divide the expected value of changing management by the number of voting shares:

Control premium per voting share =  $\frac{\pi_{\text{change}} (\text{Optimal value} - \text{Status quo value})}{\# \text{of voting shares}}$

The value per voting share will be the sum of the values of the non-voting share and the control premium. Thus, the value per voting share will be determined by how badly the firm is managed (the worse run a firm, the greater the premium) and the likelihood of management change (the higher the likelihood, the greater the premium).

# ILLUSTRATION 16.10: Estimating the Value of Voting and Nonvoting Shares

Adris Grupa is a Croatia-based tobacco company, with holdings in other businesses. In June 2010, we estimated the status quo and optimal values for the firm:

The status quo value for equity was 5,484 million HRK. In deriving this value, we assumed that the firm would continue to finance itself almost entirely with equity (its debt ratio in 2010 was  $2.6\%$  and its cost of capital was  $10.55\%$ ) and that it would continue its aggressive investment strategy (it generated a return on capital of  $9.69\%$  and reinvested  $70.83\%$  of its operating income back in 2009, resulting in a growth rate of  $6.86\%$ ).
The optimal value for equity was 5,726 million HRK. To arrive at this value, we assumed a higher debt ratio (10\%), resulting in a slightly lower cost of capital (10.45\%). We also assumed that the firm would maintain its reinvestment rate of 70.83\%, while earning a return on capital equal to its cost of capital (10.45\%).

The firm has 9.616 million voting shares and 6.748 million nonvoting shares. The value for the nonvoting shares is computed by dividing the status quo value by the total number of shares:

Value per nonvoting share  $= 5,484 / (9.616 + 6.748) = 335.13$  HRK/share

To estimate the value per voting share, we estimate the premium, with a  $30\%$  probability attached to a change in management (we assess a low likelihood of management changing because the company is family controlled):

Premium per voting share  $= (5,726 - 5,484)\times .30 / 9.616 = 7.55$  HRK/share Value per voting share  $= 335.13 + 7.55 = 342.68$  HRK/share

# CONCLUSION

Incorporating the value of nonoperating assets into firm value can be very simple to do in some cases—cash and near-cash investments—and very complicated in other cases—holdings in other companies. The principle, though, should remain the same. You want to estimate a fair value for these nonoperating assets and bring them into value. As noted, it is often better to value nonoperating assets separately from operating assets, but the absence of information may impede this process.


The existence of options and the possibility of future option grants makes getting from equity value to value per share a complicated exercise. To deal with options outstanding at the time of the valuation, there are four approaches. The simplest is to estimate the value per share by dividing the value of equity by the fully diluted number of shares outstanding. This approach ignores both the expected proceeds from exercising the options and the time value of the options. The second approach of forecasting expected option exercises in the future and estimating the effect on value per share is not only tedious but unlikely to work. In the treasury stock approach, you add the expected proceeds from option exercise to the value of equity and then divide by the fully diluted number of shares outstanding. While this approach does consider the expected proceeds from exercise, it still ignores the option time premium.

In the final and preferred approach, the options are valued using an option pricing model, and the value is subtracted from the value of equity. The resulting estimate is divided by the primary shares outstanding to arrive at the value of equity per share. While the current price of the stock is usually used in option pricing models, the value per share estimated from the discounted cash flow valuation can be substituted to arrive at a more consistent estimate.

To deal with expected option grants in the future, you have to estimate the options as an expense item, specified as a percent of revenues. A firm that is expected to grant more options in the future will have lower earnings and cash flows and thus a lower value.

Once the value per share of equity has been estimated, that value may need to be adjusted for differences in voting rights. Shares with disproportionately high voting rights will sell at a premium relative to shares with low or no voting rights. The difference will be larger for firms that are badly managed and smaller for well-managed firms.

# QUESTIONS AND SHORT PROBLEMS

In the problems following, use an equity risk premium of 5.5 percent if none is specified.

1. ABV Inc. has earnings before interest and taxes of $250 million, expected to grow 5\% a year forever; the tax rate is 40\%. Its cost of capital is 10\%, its reinvestment rate is 33.33\%, and it has 200 million shares outstanding. If the firm has $500 million in cash and marketable securities and 750 million in debt outstanding, estimate the value of equity per share.
 2. How would your answer to the previous problem change if you were told that ABV had options outstanding for 50 million shares and that each option had a value of 5?
 3. If you were told that the average exercise price of the 50 million options in the previous problem was 6, estimate the value per share for ABV using the treasury stock approach.
4. LSI Logic has 1 billion shares outstanding, trading at $25 per share. The firm also has $5 billion in debt outstanding. The cost of equity is 12.5\% and the cost of debt, after taxes, is 5\%. If the firm has $3 billion in cash outstanding and is fairly valued, estimate how much the firm earned in operating income in the current year. (The return on capital is  $15\%$ , the tax rate is  $30\%$ , and earnings are growing  $6\%$  a year in perpetuity.)


5. Lava Lamps Inc. had $800 million in earnings before interest and taxes last year. It has just acquired a 50\% stake in General Lamps Inc., which had $400 million in earnings before interest and taxes last year. Because Lava Lamps has a majority active stake, it has been asked to consolidate last year's income statements for the two firms.

a. What earnings before interest and taxes would you see in the consolidated statement?
b. If both firms have a  $5\%$  stable growth rate, a  $10\%$  cost of capital, a  $40\%$  tax rate, and a return on capital of  $11\%$ , estimate the value of equity in Lava Lamps.
c. How would your answer change if you were told that General Lamps has a  $9\%$  cost of capital and a  $15\%$  return on capital?

6. Genome Sciences is a biotechnology firm that had after-tax operating income of $300 million last year; these earnings are expected to grow 6\% a year forever, the reinvestment rate is 40\%, and the firm has a cost of capital of 12\%. Genome also owns 10\% of the stock of Gene Therapies Inc., another publicly traded firm. Gene Therapies has 100 million shares outstanding, trading at $50 per share. If Genome has 800 million in debt outstanding, estimate the value of equity per share in Genome Sciences. (Genome has 50 million shares outstanding.)

7. Fedders Asia Closed End fund is a closed-end equity fund that holds Asian securities with a market value of 1 billion. Over the past 10 years, the fund has earned a return of 9\% a year, 3\% less than the return earned by index funds investing in Asia. You expect annual returns in the future to be similar to those earned in the past, both for your fund and for index funds in general.

a. Assuming no growth in the fund and investment in perpetuity, estimate the discount at which you would expect the fund to trade.
b. How would your answer change if you expect the fund to be liquidated in 10 years?

8. You have been asked to review another analyst's valuation of System Logic Inc., a technology firm. The analyst estimated a value per share of $11 while the stock was trading at $12.50 per share. In making this estimate, however, the analyst divided the value of equity by the fully diluted 1.4 million shares outstanding. Reviewing this number, you discover that the firm has only 1 million shares outstanding and that the remaining 400,000 shares represent options with an average maturity of three years and an average exercise price of 5.

a. Estimate the correct value per share, using the treasury stock approach.
b. If the standard deviation in the stock price is  $80\%$ , estimate the value of the options using an option pricing model (and the current stock price) and the correct value per share.
c. Will your value per share increase or decrease if you reestimate the value of the options using your estimated value per share?

