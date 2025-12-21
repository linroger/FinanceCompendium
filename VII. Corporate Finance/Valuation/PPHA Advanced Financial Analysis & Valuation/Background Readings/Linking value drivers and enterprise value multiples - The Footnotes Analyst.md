---
title: "Linking value drivers and enterprise value multiples - The Footnotes Analyst"
parent_directory: Background Readings
formatted: 2025-12-21 03:50:00 AM
formatter_model: claude-sonnet-4
cli-tool: claude-code
primary_tags:
  - enterprise value multiples
  - valuation multiples
  - target multiple model
  - value drivers
  - equity valuation
secondary_tags:
  - discounted cash flow
  - growth assumptions
  - return on investment
  - cost of capital
  - terminal value
  - investment decision
  - comparative valuation
  - consensus forecasts
  - implied growth
  - fundamental analysis
cssclasses: academia
---

# The Footnotes Analyst

Analytical Insights for Investors

ARTICLES

MODELS

ABOUT

SUBSCRIBE

CONTACT

SEARCH

## Linking value drivers and enterprise value multiples

Published 5 September 2019

Target valuation multiples that are implied by key value drivers are a great way to better understand equity valuation and how the characteristics of a company affect value. The approach incorporates the same links with underlying value drivers on which DCF is based, but in a simplified way that is more intuitive than a full DCF model.

Our target multiple model can be used to estimate a deserved valuation multiple for a company, sector or index, to reverse engineer returns or growth implied by a current market valuation multiple and to derive a terminal value multiple in DCF analysis.

Despite the enduring criticism that valuation multiples are just too simplistic, they remain a very popular tool in deriving values and supporting investment decisions. However, in a superficial comparison of Discounted Cash Flow (DCF) and valuation multiples, DCF is seen to be the more robust, reliable and fundamental approach.

We argue that in using valuation multiples the value drivers that are explicitly captured in DCF, such as growth, returns and risk, are instead incorporated in one metric, thereby inviting a more judgement-based approach to equity valuation. In substance, DCF and valuation multiples are essentially the same. The value drivers that matter for equity valuation are equally relevant irrespective of how they are captured in a valuation methodology.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/6eccff3a-c2e9-4a7d-b3d1-bdc471b680fc/2f0eec0e8c0a860e844bac7413fe173f3df5a5a344a70fe66167fb8e31207542.jpg)

Focusing on underlying value drivers facilitates better judgement in equity valuation

A target or implied valuation multiple approach can be a bridge between multiples and DCF. It enables key value drivers to be linked to target multiples using an underlying DCF approach. At the same time, a target multiple calculator retains the simplicity that makes multiple based analysis more suited to the 'art' of equity valuation, while the focus on explicit value drivers facilitates better judgement.

[Click here to open our interactive target enterprise value multiple model](interactive-model-link)

For example, during a recent engagement with an asset manager, we discussed a stock that had doubled in price over the last 12 months and now trades at a valuation multiple that is $36\%$ higher than a comparable company we selected. The question is whether the premium rating is justified or not. Analysis of the fundamentals and consensus forecasts suggests a premium of some sort may be appropriate, but quantifying by how much is more of a challenge.

A target multiple approach makes it possible to (approximately) quantify the underlying difference in implied value drivers, thereby providing a better basis for the investment decision.

The stock in question is 'Food on the Go' company Greggs. We shall return to the analysis below, but first, let's discuss how a target or implied multiple model can be used.

## Applying a target EV multiple model

A target multiple approach can be used to value a stock based on a set of input assumptions or, in reverse, to derive the value drivers such as growth or returns, that are implied by an observed multiple for a company or index. In addition, the approach is particularly suited to the calculation of terminal values in DCF analysis.

```d2
direction: right

Value Drivers: Value Drivers {
  shape: hexagon
  style.fill: "#e3f2fd"
  style.stroke: "#1976d2"
}

Growth Rate: Growth Rate {
  style.fill: "#c8e6c9"
}

Return on Investment: Return on Investment {
  style.fill: "#c8e6c9"
}

Risk Profile: Risk Profile {
  style.fill: "#c8e6c9"
}

Cost of Capital: Cost of Capital {
  style.fill: "#c8e6c9"
}

Value Drivers -> Growth Rate
Value Drivers -> Return on Investment
Value Drivers -> Risk Profile
Value Drivers -> Cost of Capital

DCF Model: DCF Model {
  shape: rectangle
  style.fill: "#fff3e0"
  style.stroke: "#f57c00"
}

Target Multiple: Target Multiple {
  shape: rectangle
  style.fill: "#fff3e0"
  style.stroke: "#f57c00"
}

Growth Rate -> DCF Model
Return on Investment -> DCF Model
Risk Profile -> DCF Model
Cost of Capital -> DCF Model

DCF Model -> Target Multiple: "Links to"

Observed Multiple: Observed Multiple {
  shape: rectangle
  style.fill: "#fce4ec"
  style.stroke: "#c2185b"
}

Market Price: Market Price {
  shape: rectangle
  style.fill: "#fce4ec"
  style.stroke: "#c2185b"
}

Target Multiple -> Observed Multiple: "Compare with"
Observed Multiple -> Market Price

Target Multiple -> Market Price: "Implied value"

Fair Value: Fair Value? {
  shape: diamond
  style.fill: "#f3e5f5"
  style.stroke: "#7b1fa2"
}

Market Price -> Fair Value
```

### Valuing a business or stock

To value a stock enter estimated value drivers to derive implied target EV multiples (for more detail about the value driver inputs see the explanations accompanying the model itself). Apply these target multiples to the relevant statistic (NOPAT, EBIT, etc.) of the company to produce a core enterprise value consistent with those value drivers. Use 12-month forward forecasts for these metrics.

To derive a stock price the enterprise value must then be adjusted to an equity value. This means adding the fair value of any source of value, such as non-core business activities or investments

that is not represented in the relevant statistic (NOPAT, EBIT, etc.). Many of these will be reported in financial statements at fair value; if not you will need to estimate that value. The result is a total enterprise value.

To derive the target value of equity you now need to deduct the current value of all non-common stock claims on that enterprise value. This includes not just debt finance, but other debt like liabilities, such as pension provisions, to the extent that the interest cost of these obligations has not been already deducted in the performance metrics to which the target multiple has been applied. Non-common stock equity claims that should be deducted include share options and other equity derivatives, plus the claims of non-controlling shareholders in group companies. The value of some of these items would be disclosed but others need to be estimated. See our article Enterprise value: Calculation and mis-calculation for more about the components of EV.

Finally, divide the implied equity value by the number of outstanding shares. Use the basic not the diluted share count as the equity claims that result in potential dilution have already been deducted in arriving at the equity value. Also make sure you do not include any treasury shares in the share count.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/6eccff3a-c2e9-4a7d-b3d1-bdc471b680fc/e4fa6ee4d43619678efe3439ab9807b1774393d9ae13ee183e5f007d9d21a61b.jpg)

## What is in the price analysis

How do you determine whether an observed market valuation multiple is deserved or not? One approach is to construct a set of value drivers that replicates the multiple and then consider whether you think those implied value drivers look conservative or aggressive to help you reach better conclusions on value.

Enter values for all of the value drivers except one and then solve for the missing variable. A different combination of inputs will result in different values for the solved item; however, in experimenting with a range of scenarios it is possible to gain valuable insight into how the market views the stock.

In doing this type of analysis remember that your input value drivers need to be mid-points in a distribution, they should not be the 'success scenario'. One of the common mistakes in valuation is to consider value based only on the assumed successful implementation of a company's strategy. Values should reflect potential downside as well as upside, which is why forecasts need to be probability weighted expected amounts.

## Quantify a valuation premium or discount

How do you know whether a multiple is too high or too low? Comparisons with other companies or with historical ranges helps, but it is difficult to explicitly allow for differences in value drivers. You may think that a stock is of higher quality than the comparable companies, but exactly what valuation premium does that justify? Using the target multiple approach to identify what is priced into comparable company stock prices and then adjusting for value driver differences can help in estimating that deserved premium or discount.

For example, suppose you are confident that a particular stock will achieve higher growth than the rest of the sector in the medium term. It trades on a premium multiple compared with comparable stocks, but it is unclear whether that premium fully prices in the difference in growth or not. In this case, enter value drivers in the target multiple model to reconcile the implied multiple with that observed for the sector. Then

flex the medium-term growth rate to see what the deserved valuation premium is for the stock in question.

Does a difference in underlying value drivers justify a valuation premium or discount?

Of course, this can only be a guide. Different combinations of value drivers for the sector could be used to derive the sector multiples and each would yield a different deserved valuation premium for the stock when the growth rate is flexed. In addition, the value drivers other than growth may also differ. Valuation is as much art as science and a target multiple model cannot provide the definitive answer. But at least applying an element of rigorous analysis to multiples makes valuation less based on guesswork.

## DCF terminal value calculations

A terminal value in DCF analysis tends to be calculated either based on an assumed constant growth in perpetuity of the cash flow in the last explicit forecast period or, alternatively, using observed comparable valuation multiples. Both these methods have their limitations.

An alternative is to use a target multiple model. This gives more flexibility and is more sophisticated than a constant rate of growth in cash flow. For example, it makes it easy to incorporate an interim medium-term set of assumptions. The approach also guards against unrealistic assumptions regarding the level of investment needed to drive future growth, which is a common mistake in DCF – a subject for more detailed consideration by The Footnotes Analyst in a future article.

## Back to the analysis of Greggs

The comparison we are interested in is between Greggs and pizza company Dominos (the UK Dominos not the US version). They do not have precisely the same business model, but it is an interesting comparison none the less. Our analysis is based on FactSet data, including consensus forecasts.

In the last 12 months the stock price of Greggs' has more than doubled, while over the same period Dominos has declined by  $17\%$ . This now leaves the two stocks on quite different multiples. We estimate a 12-month forward EV/NOPAT of 17.6x for Dominos and 23.8x for Greggs, representing a valuation premium of  $36\%$ .

We have assumed that the key value driver to focus on is growth and particularly for how long a premium rate of growth can be sustained. Average annual growth in NOPAT over the 4 years from the actual result in 2017 to the consensus forecast result for 2021, is just  $2\%$  for Dominos but  $13\%$  for Greggs. This is a significant difference in growth, which may explain the valuation premium enjoyed by Greggs.

However, according to the sell-side analysts' consensus forecasts, the decline in profit of Dominos from 2017 to 2019e is expected to be reversed in 2020 and 2021. Greggs, on the other hand, has the exact opposite, with higher past growth now forecast to slow.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/6eccff3a-c2e9-4a7d-b3d1-bdc471b680fc/760b45c5859ae7b4676291197829903ea0517d3a229f40bf5dff9c384ed36690.jpg) In fact, according the consensus data the expected growth in NOPAT from the 12-month prospective forecast through to 2021 is about the same for both companies at a little over $8\%$ . This is significant because what matters in valuation is forecasts not history.

Considering the similarity in short-term forecast growth, we have focused on sustainability of that rate of growth in investigating the valuation difference. For how much longer must Greggs sustain this rate of growth compared with Dominos to justify the valuation difference?

This is what we did …

- Identify a set of value drivers which, when entered into the target EV multiple model, results in a target EV/NOPAT multiple equal to the observed 12-month forward multiple of 17.6x for Dominos.  
- Consider what differences in value drivers other than growth period might apply for Greggs (if any) and enter these revised value drivers in the model.  
- Solve for the length of period 1 growth that results in a target EV/NOPAT multiple equal to the observed forward 12-month forward multiple of $23.8\times$ for Greggs.

As you can see from the inputs seen below, we use the same value drivers for each company apart from the duration of period 1 growth. We set this to 2 years, the length of the consensus forecast available for Dominos and assumed that it reverted to a long-term rate of $1.5\%$ thereafter. The combination of other value drivers was chosen to reconcile the model target multiple to the observed 12-month forward multiple for Dominos. The exact combination does not matter greatly for the analysis as the objective is not to seek an absolute valuation for Dominos, but to try and find a plausible set of value drivers implied by the stock price.

One of the challenging inputs is the incremental return on investment. This is important as it determines how much of the profit earned by each business needs to be reinvested, which in turn determines the free cash flow that ultimately drives value. Both businesses have a strong franchise value and high historical returns, which is why we have selected relatively high values for incremental returns. Different estimates of returns would have to be offset by different values for other value drivers for Dominos in order to reconcile back to the observed multiple. This would impact the growth period differential. However, the final result is not particularly sensitive to the return assumption.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/6eccff3a-c2e9-4a7d-b3d1-bdc471b680fc/957d5b696ea882376487b14468ed3c4a7649d1d71f9ec4d5536182ef37ea2680.jpg)

More analysis could be done in respect of returns, not least because the two companies have a very different asset financing approach for their real estate portfolios (Dominos uses many more leases), which we have not factored into our illustration.

Target multiple model inputs we used are:  

<table><tr><td rowspan="2"></td><td colspan="2">Dominos</td><td colspan="2">Greggs</td></tr><tr><td>Period 1</td><td>Period 2</td><td>Period 1</td><td>Period 2</td></tr><tr><td>Growth</td><td>8%</td><td>1.5%</td><td>8%</td><td>1.5%</td></tr><tr><td>Excess return on incremental investment</td><td>25%</td><td>20%</td><td>25%</td><td>20%</td></tr><tr><td>Duration of period 1 growth</td><td colspan="2">2 years</td><td colspan="2">10 years</td></tr><tr><td>Cost of capital</td><td colspan="2">7.4%</td><td colspan="2">7.4%</td></tr><tr><td>Implied EV / NOPAT multiple</td><td colspan="2">17.6x</td><td colspan="2">23.8x</td></tr></table>

Source: Factset data, consensus forecasts and Footnotes Analyst estimates. Data current at 1 September 2019.

Solving for the implied length of period 1 growth can be done by trial and error or, if using the excel version of the model, using the in-built solver function. Based on our data we obtain a result of 10 years. So, to justify the $36\%$ valuation premium, Greggs would have to sustain the current consensus forecast growth of $8\%$ p.a. for 8 more years than Dominos.

Clearly, our growth period differential calculation is subjective and would differ depending on the assumptions made about other value drivers. You may perhaps take a different view about the relative cost of capital, returns or the growth rate itself for each of the two companies.

In our view, converting the difference in valuation multiples to an implied difference in a key value driver (in our case the length of period 1 growth) provides investors with a more intuitive basis on which to base their stock selection.

The objective of this example is to simply illustrate how a target multiple model can help your analysis. We are certainly not providing an investment recommendation in respect of Greggs or reaching any conclusion about the relative valuation of the two companies. That is not the purpose of The Footnotes Analyst. Judgements about value and the decisions about whether to invest or not are all yours.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/6eccff3a-c2e9-4a7d-b3d1-bdc471b680fc/1c4264344bac438a181e0f888b9d1d77f94f67bb4c4cf02d674de34e7e63748b.jpg)

### Implied growth period

## Insights for investors

As you can see, we like target multiples in equity analysis! We have also often used a target multiple model approach when teaching valuation because it is a great way to get students and investors to think about the link between valuation and value drivers.

We like the alternative applications of the model and the insight the approach can provide. For example, we used target multiple models during the dot-com bubble (although many did not think it was a bubble at the time) to analyse the implied value drivers of highly valued tech stocks based on observed revenue multiples. We think the approach is just as useful today.

[Click here to open our interactive target enterprise value multiple model](interactive-model-link)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/6eccff3a-c2e9-4a7d-b3d1-bdc471b680fc/651a911d40888fd149769200dc199bc4268df3109c02a9359f9bb64d82f9c86a.jpg)

More insights

Questions and comments

Subject tags

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/6eccff3a-c2e9-4a7d-b3d1-bdc471b680fc/c67d5fb3e3a3f23e2c91104e34d6755e0237965a01944525da87262d67a06aae.jpg)

## Related articles

- Allocating value: An option-based approach - Air France-KLM  
Intangible asset accounting and the 'value' false negative  
- DCF and pensions: Enterprise or equity cash flow?  
Enterprise value: Our preference for valuation multiples

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/6eccff3a-c2e9-4a7d-b3d1-bdc471b680fc/64ff96d458894d1b951eaad1682cf9e91c78f85dd3dba549eeeb8d50f5535955.jpg)

All articles and analytical models on this website are for general information and educational purposes only. No investment advice or recommendation is given or implied. You use the website solely at your own risk. Please read our full terms of use and disclaimer.

© The Footnotes Analyst 2018 - 2021

Terms of use and disclaimer Privacy policy

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/6eccff3a-c2e9-4a7d-b3d1-bdc471b680fc/e9f85ab9f54efe3f7e97794f5fb973de5f26b33cf4d083d3dbfba2257ba265e7.jpg)