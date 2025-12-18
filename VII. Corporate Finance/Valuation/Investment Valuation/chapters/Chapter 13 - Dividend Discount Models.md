---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Dividend Discount Models
linter-yaml-title-alias: Dividend Discount Models
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

To value the company using the stable growth dividend discount model, we start with the earnings per share of  \$3.47 that the firm reported for 2010 and the dividends per share of\$ 2.22 it paid out for the year. Using the average beta of 0.80 for power utilities and an equity risk premium of  $5\%$  for mature markets allows us to estimate a cost of equity of  $7.5\%$  (the risk-free rate was  $3.5\%$ )

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

To set the stage, P&G reported  \$12,736 million in earnings for 2010 and paid out 49.74\%$  of these earnings as dividends; on a per share basis, earnings were 3.82 and dividends were 1.92 in 2010. We will use a beta of 0.90, reflecting the beta of large consumer product companies in

2010, a risk-free rate of  $3.50\%$ , and a mature market equity risk premium of  $5\%$  to estimate the cost of equity:

$$

\text{Cost of equity} = 3.50 \% + 0.90 (5 \%) = 8.00 \%

$$

To estimate the expected growth rate, we will start with the firm's current return on equity  $(20.09\%)$  and payout ratio  $(49.74\%)$  and assume numbers very close to these for the next five years:

Expected ROE for next 5 years  $= 20\%$

Expected retention ratio for next 5 years  $= 50\%$

Expected growth rate for next 5 years  $= 20\% \times 50\% = 10\%$

Applying this growth rate to earnings and dividends for the next 5 years and discounting these dividends back at the cost of equity, we arrive at a value of 10.09/share for the high growth period:

<table><tr><td></td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>Sum</td></tr><tr><td>Earnings per share</td><td>$4.20</td><td>$4.62</td><td>$5.08</td><td>$5.59</td><td>\$6.15</td><td></td></tr><tr><td>Payout ratio</td><td>50.00\%</td><td>50.00\%</td><td>50.00\%</td><td>50.00\%</td><td>50.00\%</td><td></td></tr><tr><td>Dividends per share</td><td>$2.10</td><td>$2.31</td><td>$2.54</td><td>$2.80</td><td>\$3.08</td><td></td></tr><tr><td>Cost of equity</td><td>8.00\%</td><td>8.00\%</td><td>8.00\%</td><td>8.00\%</td><td>8.00\%</td><td></td></tr><tr><td>Present value</td><td>$1.95</td><td>$1.98</td><td>$2.02</td><td>$2.06</td><td>$2.09</td><td>$10.09</td></tr></table>

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

In Illustration 13.3, we valued P&G using a two-stage dividend discount model at  \$68.90. We first value the assets in place using current earnings\$ 3.82 and assume that all earnings are paid out as dividends. We also use the stable growth cost of equity as the discount rate.

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

In 2010, the company reported earnings per share of  \$3.56 and paid out\$ 1.88 per share in dividends. To estimate the expected growth rate, we assumed that the firm would be able to generate 25\% as a return on equity on future investments, lower than its current return on equity but close to its marginal return on equity over the last few years. We also assumed that the firm would reinvest about 36.40\% of its earnings as dividends; while this is lower than the existing retention ratio of 47.19\%, it is consistent with the retention ratio that we estimated in Illustration 13.4, using the augmented dividends.

Expected ROE for next 5 years  $= 25\%$

Expected Retention Ratio for next 5 years  $= 36.40\%$

Expected growth rate in EPS and DPS for next 5 years  $= 25\% \times 36.4\% = 9.10\%$

During this high growth phase, we will assume that the cost of equity for Coca-Cola will be  $8.45\%$ , estimated based upon a beta of 0.9, the U.S. treasury bond rate in 2011 of  $3.5\%$  and an equity risk premium of  $5.5\%$  (with the premium augmented to reflect Coca-Cola's exposure in emerging markets).

$$

\text{Cost of equity} = 3.5 \% +0.9(5.5\%) = 8.45 \%

$$

The expected dividends over the next 5 years are shown in the following table, with the present values computed using the cost of equity:

<table><tr><td></td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td></tr><tr><td>Expected growth rate</td><td>9.10\%</td><td>9.10\%</td><td>9.10\%</td><td>9.10\%</td><td>9.10\%</td></tr><tr><td>Earnings per share</td><td>$3.88</td><td>$4.24</td><td>$4.62</td><td>$5.04</td><td>\$5.50</td></tr><tr><td>Payout ratio</td><td>63.60\%</td><td>63.60\%</td><td>63.60\%</td><td>63.60\%</td><td>63.60\%</td></tr><tr><td>Dividends per share</td><td>$2.47</td><td>$2.69</td><td>$2.94</td><td>$3.21</td><td>\$3.50</td></tr><tr><td>Cost of equity</td><td>8.45\%</td><td>8.45\%</td><td>8.45\%</td><td>8.45\%</td><td>8.45\%</td></tr><tr><td>Present value</td><td>$2.28</td><td>$2.29</td><td>$2.31</td><td>$2.32</td><td>2.33</td></tr></table>

After year 5, we allow for a transition period of 5 more years to stable growth after year 10. In the stable growth phase, we assume the following changes:

Expected growth rate of  $3\%$  forever, set just below the risk-free rate.
A return on equity of  $15\%$ ; while this is lower than the current ROE, it is an impressive return for a mature firm and reflects our belief that Coca-Cola's brand name will endure.
A payout ratio of  $80\%$  , based on the return on equity and expected growth rate:

$$

\text{Stable payout ratio} = 1 - \frac{\mathrm{g}}{\mathrm{ROE}} = 1 - \frac{3\%}{15\%} = 80\%

$$

A cost of equity of  $9.00\%$ , based upon the assumption that the beta will increase to 1 in stable growth.

The transition period (years 6-10) allow us to change each of the inputs (payout ratio, cost of equity and growth rate) from high growth levels to stable growth levels in linear increments. The resulting dividends and present values are summarized here:

<table><tr><td></td><td>6</td><td>7</td><td>8</td><td>9</td><td>10</td></tr><tr><td>Expected growth rate</td><td>7.88\%</td><td>6.66\%</td><td>5.44\%</td><td>4.22\%</td><td>3.00\%</td></tr><tr><td>Earnings per share</td><td>$5.94</td><td>$6.33</td><td>$6.68</td><td>$6.96</td><td>\$7.17</td></tr><tr><td>Payout ratio</td><td>66.88\%</td><td>70.16\%</td><td>73.44\%</td><td>76.72\%</td><td>80.00\%</td></tr><tr><td>Dividends per share</td><td>$3.97</td><td>$4.44</td><td>$4.90</td><td>$5.34</td><td>\$5.73</td></tr><tr><td>Cost of equity</td><td>8.56\%</td><td>8.67\%</td><td>8.78\%</td><td>8.89\%</td><td>9.00\%</td></tr><tr><td>Cumulative cost of equity</td><td>1.6286</td><td>1.7698</td><td>1.9252</td><td>2.0964</td><td>2.2850</td></tr><tr><td>Present Value</td><td>$2.44</td><td>$2.51</td><td>$2.55</td><td>$2.55</td><td>2.51</td></tr></table>

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

3. Church & Dwight, a large producer of sodium bicarbonate, reported earnings per share of  \$1.50 in 1993 and paid dividends per share of\$ 0.42. In 1993, the firm also reported the following:

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

4. Oneida Inc, the world's largest producer of stainless steel and silverplated flatware, reported earnings per share of \$0.80 in 1993, and paid dividends per share of \$0.48 in that year. The firm was expected to report earnings growth of 25\% in 1994, after which the growth rate was expected to decline linearly over the following six years to 7\% in 1999. The stock was expected to have a beta of 0.85. (The Treasury bond rate is 6.25\%, and the risk premium is 5.5\%).

a. Estimate the value of stable growth, using the H model.
b. Estimate the value of extraordinary growth, using the H model.
c. What are the assumptions about dividend payout in the H model?

5. Medtronic Inc., the world's largest manufacturer of implantable biomedical devices, reported earnings per share in 1993 of  \$3.95, and paid dividends per share of\$ 0.68. Its earnings were expected to grow 16\% from 1994 to 1998, but the growth rate was expected to decline each year after that to a stable growth rate of 6\% in 2003. The payout ratio was expected to remain unchanged from 1994 to 1998, after which it would increase each year to reach 60\% in steady state. The stock was expected to have a beta of 1.25 from 1994 to 1998, after which the beta would decline each year to reach 1.00 by the time the firm becomes stable. (The Treasury bond rate is 6.25\%, and the risk premium is 5.5\%).

a. Assuming that the growth rate declines linearly (and the payout ratio increases linearly) from 1999 to 2003, estimate the dividends per share each year from 1994 to 2003.
b. Estimate the expected price at the end of 2003.
c. Estimate the value per share, using the three-stage dividend discount model.

6. Yuletide Inc. is a manufacturer of Christmas ornaments. The firm earned \$100 million last year and paid out 20\% of its earnings as dividends. The firm also has bought back \$180 million of stock over the past four years, in varying amounts each year. The firm is in stable growth, expects to grow 5\% a year in perpetuity, and has a cost of equity of 12\%.

a. Assuming that the dividend payout ratio will not change over time, estimate the value of equity.
b. How would your answer change if your dividend payout ratio is modified to include stock buybacks?

