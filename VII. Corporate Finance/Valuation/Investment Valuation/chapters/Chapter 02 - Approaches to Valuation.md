---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Approaches to Valuation
linter-yaml-title-alias: Approaches to Valuation
---

# Approaches to Valuation

Analysts use a wide range of models in practice, ranging from the simple to the sophisticated. These models often make very different assumptions, but they do share some common characteristics and can be classified in broader terms. There are several advantages to such a classification: It makes it easier to understand where individual models fit into the big picture, why they provide different results, and when they have fundamental errors in logic.

In general terms, there are three approaches to valuation. The first, discounted cash flow (DCF) valuation, relates the value of an asset to the present value (PV) of expected future cash flows on that asset. The second, relative valuation, estimates the value of an asset by looking at the pricing of comparable assets relative to a common variable such as earnings, cash flows, book value, or sales. The third, contingent claim valuation, uses option pricing models to measure the value of assets that share option characteristics. Some of these assets are traded financial assets like warrants, and some of these options are not traded and are based on real assets, (projects, patents, and oil reserves are examples). The latter are often called real options. There can be significant differences in outcomes, depending on which approach is used. One of the objectives in this book is to explain the reasons for such differences in value across different models, and to help in choosing the right model to use for a specific task.

# DISCOUNTED CASH FLOW VALUATION

While discounted cash flow valuation is only one of the three ways of approaching valuation and most valuations done in the real world are relative valuations, it is the foundation on which all other valuation approaches are built. To do relative valuation correctly, we need to understand the fundamentals of discounted cash flow valuation. To apply option pricing models to value assets, we often have to begin with a discounted cash flow valuation. This is why so much of this book focuses on discounted cash flow valuation. Anyone who understands its fundamentals will be able to analyze and use the other approaches. This section considers the basis of this approach, a philosophical rationale for discounted cash flow valuation, and an examination of the different subapproaches to discounted cash flow valuation.

# Basis for Discounted Cash Flow Valuation

This approach has its foundation in the present value rule, where the value of any asset is the present value of expected future cash flows on it.

$$
\text {V a l u e} = \sum_ {t = 1} ^ {t = n} \frac {\mathrm {C F} _ {t}}{\left(1 + r\right) ^ {t}}
$$ where  $n =$  Life of the asset


$\mathrm{CF}_{\mathrm{r}} =$  Cash flow in period t

$\dot{\mathbf{r}} =$  Discount rate reflecting the riskiness of the estimated cash flows

The cash flows will vary from asset to asset—dividends for stocks, coupons (interest) and the face value for bonds, and after-tax cash flows for a real project. The discount rate will be a function of the riskiness of the estimated cash flows, with higher rates for riskier assets and lower rates for safer projects.

You can in fact think of discounted cash flow valuation on a continuum. At one end of the spectrum you have the default-free zero coupon bond, with a guaranteed cash flow in the future. Discounting this cash flow at the riskless rate should yield the value of the bond. A little further up the risk spectrum are corporate bonds where the cash flows take the form of coupons and there is default risk. These bonds can be valued by discounting the cash flows at an interest rate that reflects the default risk. Moving up the risk ladder, we get to equities, where there are expected cash flows with substantial uncertainty around the expectations. The value here should be the present value of the expected cash flows at a discount rate that reflects the uncertainty.

# Underpinnings of Discounted Cash Flow Valuation

In discounted cash flow valuation, we try to estimate the intrinsic value of an asset based on its fundamentals. What is intrinsic value? For lack of a better definition, consider it the value that would be attached to the firm by an unbiased analyst, who not only estimates the expected cash flows for the firm correctly, given the information available at the time, but also attaches the right discount rate to value these cash flows. Hopeless though the task of estimating intrinsic value may seem to be, especially when valuing young companies with substantial uncertainty about the future, making the best estimates that you can and persevering to estimate value can still pay off because markets make mistakes. While market prices can deviate from intrinsic value (estimated based on fundamentals), you are hoping that the two will converge sooner rather than later.

# Categorizing Discounted Cash Flow Models

There are literally thousands of discounted cash flow models in existence. Investment banks or consulting firms often claim that their valuation models are better or more sophisticated than those used by their contemporaries. Ultimately, however, discounted cash flow models can vary only a couple of dimensions.

Equity Valuation and Firm Valuation There are two paths to valuation in a business: The first is to value just the equity stake in the business, while the second is to value the entire business, which includes, besides equity, the other claimholders in the firm (bondholders, preferred stockholders). While both approaches discount expected cash flows, the relevant cash flows and discount rates are different under each. Figure 2.1 captures the essence of the two approaches.

# Equity Valuation

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/9e5fb0107cbb3e463a3cb42673cfcd0b2045534519770879ff1c0c75ae17e9de.jpg)

# Firm Valuation

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/d5da5260782cdd08c07469798221f3f20f9c73f6d096fd3f006c09663fb24ed8.jpg)
FIGURE 2.1 Equity versus Firm Valuation

The value of equity is obtained by discounting expected cash flows to equity (i.e., the residual cash flows after meeting all expenses, reinvestment needs, tax obligations, and interest and principal payments) at the cost of equity (i.e., the rate of return required by equity investors in the firm).

$$

\text {V a l u e o f e q u i t y} = \sum_ {\mathrm {t} = 1} ^ {\mathrm {t} = \mathrm {n}} \frac {\mathrm {C F t o e q u i t y} _ {\mathrm {t}}}{\left(1 + \mathrm {k} _ {\mathrm {e}}\right) ^ {\mathrm {t}}}

$$ where  $n =$  Life of the asset

CF to equity $_t =$  Expected cash flow to equity in period t

$k_{e} =$  Cost of equity

The dividend discount model is a special case of equity valuation, where the value of equity is the present value of expected future dividends.

The value of the firm is obtained by discounting expected cash flows to the firm (i.e., the residual cash flows after meeting all operating expenses, reinvestment needs, and taxes, but prior to any payments to either debt or equity holders) at the weighted average cost of capital (WACC), which is the cost of the different components of financing used by the firm, weighted by their market value proportions.

$$
\text {V a l u e o f f i r m} = \sum_ {t = 1} ^ {t = n} \frac {\mathrm {C F t o f i r m} _ {t}}{\left(1 + \mathrm {W A C C}\right) ^ {t}}
$$ where n = Life of the asset


CF to  $\mathrm{firm}_{\mathrm{t}} =$  Expected cash flow to firm in period t

WACC = Weighted average cost of capital

While these approaches use different definitions of cash flow and discount rates, they will yield consistent estimates of value for equity as long as you are consistent in your assumptions in valuation. The key error to avoid is mismatching cash flows and discount rates, since discounting cash flows to equity at the cost of capital will lead to an upwardly biased estimate of the value of equity, while discounting cash flows to the firm at the cost of equity will yield a downwardly biased estimate of the value of the firm. Illustration 2.1 shows the equivalence of equity and firm valuation.

# ILLUSTRATION 2.1: Effects of Mismatching Cash Flows and Discount Rates

Assume that you are analyzing a company with the following cash flows for the next five years. Assume also that the cost of equity is  $13.625\%$  and the firm can borrow long term at  $10\%$ . (The tax rate for the firm is  $50\%$ .) The current market value of equity is  $\$1,073$ , and the value of debt outstanding is  $\$800$ .

<table><tr><td>Year</td><td>Cash Flow to Equity</td><td>Interest (Long-Term)</td><td>Cash Flow to Firm</td></tr><tr><td>1</td><td>$ 50</td><td>$40</td><td>$ 90</td></tr><tr><td>2</td><td>$ 60</td><td>$40</td><td>$ 100</td></tr><tr><td>3</td><td>$ 68</td><td>$40</td><td>$ 108</td></tr><tr><td>4</td><td>$ 76.2</td><td>$40</td><td>$ 116.2</td></tr><tr><td>5</td><td>$ 83.49</td><td>$40</td><td>\$ 123.49</td></tr><tr><td>Terminal value</td><td>\$1603.008</td><td></td><td>2363.008</td></tr></table>

The cost of equity is given as an input and is  $13.625\%$ , and the after-tax cost of debt is  $5\%$ .

$$

\text {Cost of debt} = \text {Pretax rate} (1 - \text {Tax rate}) = 10 \% (1 -.5) = 5 \%

$$

Given the market values of equity and debt, we can estimate the cost of capital.

$$

\begin{aligned} \text{WACC} & = \text{Cost of equity}[\text{Equity} /(\text{Debt} +\text{Equity})] + \text{Cost of debt}[\text{Debt} /(\text{Debt} +\text{Equity})]\\ & = 13.625\% (1,073 / 1,873) + 5\% (800 / 1,873) = 9.94\% \end{aligned}

$$

# METHOD 1: DISCOUNT CASH FLOWS TO EQUITY AT COST OF EQUITY TO GET VALUE OF EQUITY

We discount cash flows to equity at the cost of equity:

$$

\begin{array}{l} \mathrm {P V} = 5 0 / 1. 1 3 6 2 5 + 6 0 / 1. 1 3 6 2 5 ^ {2} + 6 8 / 1. 1 3 6 2 5 ^ {3} + 7 6. 2 / 1. 1 3 6 2 5 ^ {4} \\ + (8 3. 4 9 + \$ 1, 6 0 3) / 1. 1 3 6 2 5 ^ {5} = \$ 1, 0 7 3 \\ \end{array}

$$

METHOD 2: DISCOUNT CASH FLOWS TO FIRM AT COST OF CAPITAL TO GET VALUE OF FIRM

$$

\begin{array}{l} \mathrm {P V} \text {o f} \mathrm {f i r m} = 9 0 / 1. 0 9 9 4 + 1 0 0 / 1. 0 9 9 4 ^ {2} + 1 0 8 / 1. 0 9 9 4 ^ {3} + 1 1 6. 2 / 1. 0 9 9 4 ^ {4} \\ + (1 2 3. 4 9 + \$ 2, 3 6 3) / 1. 0 9 9 4 ^ {5} = \$ 1, 8 7 3 \\ \end{array}

$$

$$

\begin{array}{l} P V \text {o f} = P V \text {o f} \text {f i r m} - \text {M a r k e t v a l u e o f d e b t} \\ = \$ 1,873 - \$ 800 = \$ 1,073 \\ \end{array}

$$

Note that the value of equity is 1,073 under both approaches. It is easy to make the mistake of discounting cash flows to equity at the cost of capital or the cash flows to the firm at the cost of equity.

ERROR 1: DISCOUNT CASH FLOWS TO EQUITY AT COST OF CAPITAL TO GET TOO HIGH A VALUE FOR EQUITY

$$

\begin{array}{l} \mathrm {P V} \text {o f e q u i t y} = 5 0 / 1. 0 9 9 4 + 6 0 / 1. 0 9 9 4 ^ {2} + 6 8 / 1. 0 9 9 4 ^ {3} + 7 6. 2 / 1. 0 9 9 4 ^ {4} \\ + (8 3. 4 9 + \$ 1, 6 0 3) / 1. 0 9 9 4 ^ {5} = \$ 1, 2 4 8 \\ \end{array}

$$

ERROR 2: DISCOUNT CASH FLOWS TO FIRM AT COST OF EQUITY TO GET TOO LOW A VALUE FOR THE FIRM

$$

\begin{array}{l} \mathrm {P V} \text {o f} \mathrm {f i r m} = 9 0 / 1. 1 3 6 2 5 + 1 0 0 / 1. 1 3 6 2 5 ^ {2} + 1 0 8 / 1. 1 3 6 2 5 ^ {3} + 1 1 6. 2 / 1. 1 3 6 2 5 ^ {4} \\ + (1 2 3. 4 9 + \$ 2, 3 6 3) / 1. 1 3 6 2 5 ^ {5} = \$ 1, 6 1 3 \\ \end{array}

$$

$$

\begin{array}{l} P V \text {o f} = P V \text {o f} \text {f i r m} - \text {M a r k e t v a l u e o f d e b t} \\ = \$ 1,612.86 - \$ 800 = \$ 813 \\ \end{array}

$$

The effects of using the wrong discount rate are clearly visible in the last two calculations (Error 1 and Error 2). When the cost of capital is mistakenly used to discount the cash flows to equity, the value of equity increases by 175 over its true value 1,073. When the cash flows to the firm are erroneously discounted at the cost of equity, the value of the firm is understated by 260. It must be pointed out, though, that getting the values of equity to agree with the firm and equity valuation approaches can be much more difficult in practice than in this example. We return to this subject in Chapters 14 and 15 and consider the assumptions that we need to make to arrive at this result.

Cost of Capital versus APV Approaches In Figure 2.1, we noted that a firm can finance its assets, using either equity or debt. What are the effects of using debt on value? On the plus side, the tax deductibility of interest expenses provides a tax subsidy or benefit to the firm, which increases with the tax rate faced by the firm on its income. On the minus side, debt does increase the likelihood that the firm will default on its commitments and be forced into bankruptcy. The net effect can be positive, neutral or negative. In the cost of capital approach, we capture the effects of debt in the discount rate:

Cost of capital  $=$  Cost of equity(Proportion of equity used to fund business)

+ Pretax cost of debt (1 - Tax rate)

(Proportion of debt used to fund business)

The cash flows discounted are predebt cash flows and do not include any of the tax benefits of debt (since that would be double counting).

In a variation, called the adjusted present value (APV) approach, we separate the effects on value of debt financing from the value of the assets of a business. Thus, we start by valuing the business as if it were all equity funded and assess the effect of debt separately, by first valuing the tax benefits from the debt and then subtracting out the expected bankruptcy costs.


Value of business  $=$  Value of business with  $100\%$  equity financing
+ Present value of expected tax benefits of debt
- Expected bankruptcy costs

While the two approaches take different tacks to evaluating the value added or destroyed by debt, they will provide the same estimate of value, if we are consistent in our assumptions about cash flows and risk. In chapter 15, we will return to examine these approaches in more detail.

Total Cash Flow versus Excess Cash Flow Models The conventional discounted cash flow model values an asset by estimating the present value of all cash flows generated by that asset at the appropriate discount rate. In excess return (and excess cash flow) models, only cash flows earned in excess of the required return are viewed as value creating, and the present value of these excess cash flows can be added to the amount invested in the asset to estimate its value. To illustrate, assume that you have an asset in which you invested  \$100 million and that you expect to generate\$ 12 million in after-tax cash flows in perpetuity. Assume further that the cost of capital on this investment is 10 percent. With a total cash flow model, the value of this asset can be estimated as follows:

$$

\text {V a l u e o f a s s e t} = \$ 12 \text {m i l l i o n / . 1} = \$ 120 \text {m i l l o n}

$$

With an excess return model, we would first compute the excess return made on this asset:

$$

\begin{array}{l} \text {E x c e s s} = \text {C a s h f l o w e a n e d - C o s t o f c a p i t a l} \times \text {C a p i t a l i n v e s t e d i n a s s e t} \\ = \$ 12 \text {m i l l i o n} - . 1 0 \times \$ 1 0 0 \text {m i l l i o n} = \$ 2 \text {m i l l o n} \\ \end{array}

$$

# A SIMPLE TEST OF CASH FLOWS

There is a simple test that can be employed to determine whether the cash flows being used in a valuation are cash flows to equity or cash flows to the firm. If the cash flows that are being discounted are after interest expenses (and principal payments), they are cash flows to equity and the discount rate used should be the cost of equity. If the cash flows that are discounted are before interest expenses and principal payments, they are usually cash flows to the firm. Needless to say, there are other items that need to be considered when estimating these cash flows, and they are considered in extensive detail in the coming chapters.

We then add the present value of these excess returns to the investment in the asset:

Value of asset  $=$  Present value of excess return  $^+$  Investment in the asset

= \$2 million/.1 + \$100 million = 120 million

Note that the answers in the two approaches are equivalent. Why, then, would we want to use an excess return model? By focusing on excess returns, this model brings home the point that it is not earnings per se that create value, but earnings in excess of a required return. Chapter 32 considers special versions of these excess return models. As in this simple example, with consistent assumptions, total cash flow and excess return models are equivalent.

# Applicability and Limitations of Discounted Cash Flow Valuation

Discounted cash flow valuation is based on expected future cash flows and discount rates. Given these estimation requirements, this approach is easiest to use for assets (firms) whose cash flows are currently positive and can be estimated with some reliability for future periods, and where a proxy for risk that can be used to obtain discount rates is available. The further we get from this idealized setting, the more difficult (and more useful) discounted cash flow valuation becomes. Here are some scenarios where discounted cash flow valuation might run into trouble and need to be adapted.

Firms in Trouble A distressed firm generally has negative earnings and cash flows, and expects to lose money for some time in the future. For these firms, estimating future cash flows is difficult to do, since there is a strong probability of bankruptcy. For firms that are expected to fail, discounted cash flow valuation does not work very well, since the method values the firm as a going concern providing positive cash flows to its investors. Even for firms that are expected to survive, cash flows will have to be estimated until they turn positive, since obtaining a present value of negative cash flows will yield a negative value for equity or for the firm. We will examine these firms in more detail in chapters 22 and 30.

Cyclical Firms The earnings and cash flows of cyclical firms tend to follow the economy—rising during economic booms and falling during recessions. If discounted cash flow valuation is used on these firms, expected future cash flows are usually smoothed out, unless the analyst wants to undertake the onerous task of predicting the timing and duration of economic recessions and recoveries. In the depths of a recession many cyclical firms look like troubled firms, with negative earnings and cash flows. Estimating future cash flows then becomes entangled with analyst predictions about when the economy will turn and how strong the upturn will be, with more optimistic analysts arriving at higher estimates of value. This is unavoidable, but the economic biases of the analysts have to be taken into account before using these valuations.


Firms with Unutilized Assets Discounted cash flow valuation reflects the value of all assets that produce cash flows. If a firm has assets that are unutilized (and hence do not produce any cash flows), the value of these assets will not be reflected in the value obtained from discounting expected future cash flows. The same caveat applies, in lesser degree, to underutilized assets, since their value will be understated in discounted cash flow valuation. While this is a problem, it is not insurmountable. The value of these assets can always be obtained externally² and added to the value obtained from discounted cash flow valuation. Alternatively, the assets can be valued as though they are used optimally.

Firms with Patents or Product Options Firms sometimes have unutilized patents or licenses that do not produce any current cash flows and are not expected to produce cash flows in the near future, but are valuable nevertheless. If this is the case, the value obtained from discounting expected cash flows to the firm will understate the true value of the firm. Again, the problem can be overcome, by valuing these assets in the open market or by using option pricing models, and then adding the value obtained from discounted cash flow valuation. Chapter 28 examines the use of option pricing models to value patents.

Firms in the Process of Restructuring Firms in the process of restructuring often sell some of their assets, acquire other assets, and change their capital structure and dividend policy. Some of them also change their ownership structure (going from publicly traded to private status and vice versa) and management compensation schemes. Each of these changes makes estimating future cash flows more difficult and affects the riskiness of the firm. Using historical data for such firms can give a misleading picture of the firm's value. However, these firms can be valued, even in the light of the major changes in investment and financing policy, if future cash flows reflect the expected effects of these changes and the discount rate is adjusted to reflect the new business and financial risk in the firm. Chapter 31 takes a closer look at how value can be altered by changing the way a business is run.

Firms Involved in Acquisitions There are at least two specific issues relating to acquisitions that need to be taken into account when using discounted cash flow valuation models to value target firms. The first is the thorny one of whether there is synergy in the merger and how its value can be estimated. To do so will require assumptions about the form the synergy will take and its effect on cash flows. The second, especially in hostile takeovers, is the effect of changing management on cash flows and risk. Again, the effect of the change can and should be incorporated into the estimates of future cash flows and discount rates and hence into value. Chapter 25 looks at the value of synergy and control in acquisitions.

Private Firms The biggest problem in using discounted cash flow valuation models to value private firms is the measurement of risk (to use in estimating discount rates), since most risk/return models require that risk parameters be estimated from historical prices on the asset being analyzed and make assumptions about the profiles of investors in the firm that may not fit private businesses. One solution is to look at the riskiness of comparable firms that are publicly traded. The other is to relate the measure of risk to accounting variables, which are available for the private firm. Chapter 24 looks at adaptations to valuation models that are needed to value private businesses.

The point is not that discounted cash flow valuation cannot be done in these cases, but that we have to be flexible enough to adapt our models. The fact is that valuation is simple for firms with well-defined assets that generate cash flows that can be easily forecasted. The real challenge in valuation is to extend the valuation framework to cover firms that vary to some extent or the other from this idealized framework. Much of this book is spent considering how to value such firms.

# RELATIVE VALUATION

While we tend to focus most on discounted cash flow valuation when discussing valuation, the reality is that most valuations are relative valuations. The values of most assets, from the house you buy to the stocks you invest in, are based on how similar assets are priced in the marketplace. This section begins with a basis for relative valuation, moves on to consider the underpinnings of the model, and then considers common variants within relative valuation.

# Basis for Relative Valuation

In relative valuation, the value of an asset is derived from the pricing of comparable assets, standardized using a common variable such as earnings, cash flows, book value, or revenues. One illustration of this approach is the use of an industry-average price-earnings ratio to value a firm, the assumption being that the other firms in the industry are comparable to the firm being valued and that the market, on average, prices these firms correctly. Another multiple in wide use is the price-book value ratio, with firms selling at a discount on book value relative to comparable firms being considered undervalued. Revenue multiple are also used to value firms, with the average price-sales ratios of firms with similar characteristics being used for comparison. While these three multiples are among the most widely used, there are others that also play a role in analysis—EV to EBITDA, EV to invested capital, and market value to replacement value (Tobin's Q), to name a few.

# Underpinnings of Relative Valuation

Unlike discounted cash flow valuation, which is a search for intrinsic value, relative valuation relies much more on the market being right. In other words, we assume that the market is correct in the way it prices stocks on average, but that it makes errors on the pricing of individual stocks. We also assume that a comparison of multiples will allow us to identify these errors, and that these errors will be corrected over time.

The assumption that markets correct their mistakes over time is common to both discounted cash flow and relative valuation, but those who use multiples and comparables to pick stocks argue, with some basis, that errors made in pricing individual stocks in a sector are more noticeable and more likely to be corrected quickly. For instance, they would argue that a software firm that trades at a price-earnings ratio of 10 when the rest of the sector trades at 25 times earnings is clearly undervalued and that the correction toward the sector average should occur sooner rather than later. Proponents of discounted cash flow valuation would counter that this is small consolation if the entire sector is overpriced by 50 percent.

# Categorizing Relative Valuation Models

Analysts and investors are endlessly inventive when it comes to using relative valuation. Some compare multiples across companies, while other compare the multiple of a company to the multiples it used to trade at in the past. While most relative valuations are based on the pricing of comparable assets at the same time, there are some relative valuations that are based on fundamentals.

Fundamentals versus Comparables In discounted cash flow valuation, the value of a firm is determined by its expected cash flows. Other things remaining equal, higher cash flows, lower risk, and higher growth should yield higher value. Some analysts who use multiples go back to these discounted cash flow models to extract multiples. Other analysts compare multiples across firms or time and make explicit or implicit assumptions about how firms are similar or vary on fundamentals.

Using Fundamentals The first approach relates multiples to fundamentals about the firm being valued—growth rates in earnings and cash flows, reinvestment and risk. This approach to estimating multiples is equivalent to using discounted cash flow models, requiring the same information and yielding the same results. Its primary advantage is that it shows the relationship between multiples and firm characteristics, and allows us to explore how multiples change as these characteristics change. For instance, what will be the effect of changing profit margins on the price-sales ratio? What will happen to price-earnings ratios as growth rates decrease? What is the relationship between price-book value ratios and return on equity?

Using Comparables The more common approach to using multiples is to compare how a firm is valued with how similar firms are priced by the market or, in some cases, with how the firm was valued in prior periods. As we see in the later chapters, finding similar and comparable firms is often a challenge, and frequently we have to accept firms that are different from the firm being valued on one dimension or the other. When this is the case, we have to either explicitly or implicitly control for differences across firms on growth, risk, and cash flow measures. In practice, controlling for these variables can range from the naive (using industry averages) to the sophisticated (multivariate regression models where the relevant variables are identified and controlled for).

Cross-Sectional versus Time Series Comparisons In most cases, analysts price stocks on a relative basis, by comparing the multiples they are trading at to the multiples at which other firms in the same business are trading at contemporaneously. In some cases, however, especially for mature firms with long histories, the comparison is done across time.

Cross-Sectional Comparisons When we compare the price-earnings ratio of a software firm to the average price-earnings ratio of other software firms, we are doing relative valuation and we are making cross-sectional comparisons. The conclusions can vary depending on our assumptions about the firm being valued and the comparable firms. For instance, if we assume that the firm we are valuing is similar to the average firm in the industry, we would conclude that it is cheap if it trades at a multiple that is lower than the average multiple. If, however, we assume that the firm being valued is riskier than the average firm in the industry, we might conclude that the firm should trade at a lower multiple than other firms in the business. In short, you cannot compare firms without making assumptions about their fundamentals.

Comparisons across Time If you have a mature firm with a long history, you can compare the multiple it trades at today to the multiple it used to trade at in the past. Thus, Ford Motor Company may be viewed as cheap because it trades at six times earnings, if it has historically traded at 10 times earnings. To make this comparison, however, you have to assume that your firm's fundamentals have not changed over time. For instance, you would expect a high-growth firm's price-earnings ratio to drop over time and its expected growth rate to decrease as it becomes larger. Comparing multiples across time can also be complicated by changes in interest rates and the behavior of the overall market. For instance, as interest rates fall below historical norms and the overall market increases in value, you would expect most companies to trade at much higher multiples of earnings and book value than they have historically.

# Applicability and Limitations of Multiples

The allure of multiples is that they are simple and easy to relate to. They can be used to obtain estimates of value quickly for firms and assets, and are particularly useful when a large number of comparable firms are traded on financial markets, and the market is, on average, pricing these firms correctly. They tend to be more difficult to use to value unique firms with no obvious comparables, with little or no revenues, and with negative earnings.

By the same token, multiples are also easy to misuse and manipulate, especially when comparable firms are used. Given that no two firms are exactly alike in terms of risk and growth, the definition of comparable firms is a subjective one. Consequently, a biased analyst can choose a group of comparable firms to confirm his or her biases about a firm's value. Illustration 2.2 shows an example. While this potential for bias exists with discounted cash flow valuation as well, the analyst in DCF valuation is forced to be much more explicit about the assumptions that determine the final value. With multiples, these assumptions are often left unstated.

# ASSET-BASED VALUATION MODELS

There are some analysts who add a fourth approach to valuation to the three described in this chapter. They argue that you can value the individual assets owned by a firm and aggregate them to arrive at a firm value—asset-based valuation models. In fact, there are several variants on asset-based valuation models. The first is liquidation value, which is obtained by aggregating the estimated sale proceeds of the assets owned by a firm. The second is replacement cost, where you estimate what it would cost you to replace all of the assets that a firm has today. The third is the simplest: use accounting book value as the measure of the value of the assets, with adjustments to the book value made where necessary.

While analysts may use asset-based valuation approaches to estimate value, they are not alternatives to discounted cash flow, relative, or option pricing models since both replacement and liquidation values have to be obtained using one or another of these approaches. Ultimately, all valuation models attempt to value assets; the differences arise in how we identify the assets and how we attach value to each asset. In liquidation valuation, we look only at assets in place and estimate their value based on what similar assets are priced at in the market. In traditional discounted cash flow valuation, we consider all assets and include expected growth potential to arrive at value. The two approaches may, in fact, yield the same values if you have a firm that has no growth potential and the market assessments of value reflect expected cash flows.

# ILLUSTRATION 2.2: The Potential for Misuse with Comparable Firms

Assume that an analyst is valuing an initial public offering (IPO) of a firm that manufactures computer software. At the same time,3 the price-earnings multiples of other publicly traded firms manufacturing software are:

<table><tr><td>Firm</td><td>Multiple</td></tr><tr><td>Adobe Systems</td><td>23.2</td></tr><tr><td>Autodesk</td><td>20.4</td></tr><tr><td>Broderbund</td><td>32.8</td></tr><tr><td>Computer Associates</td><td>18.0</td></tr><tr><td>Lotus Development</td><td>24.1</td></tr><tr><td>Microsoft</td><td>27.4</td></tr><tr><td>Novell</td><td>30.0</td></tr><tr><td>Oracle</td><td>37.8</td></tr><tr><td>Software Publishing</td><td>10.6</td></tr><tr><td>System Software</td><td>15.7</td></tr><tr><td>Average PE ratio</td><td>24.0</td></tr></table>

While the average PE ratio using the entire sample is 24, it can be changed markedly by removing a couple of firms from the group. For instance, if the two firms with the lowest PE ratios in the group (Software Publishing and System Software) are eliminated from the sample, the average PE ratio increases to 27. If the two firms with the highest PE ratios in the group (Broderbund and Oracle) are removed from the group, the average PE ratio drops to 21.

The other problem with using multiples based on comparable firms is that it builds in errors (overvaluation or undervaluation) that the market might be making in valuing these firms. In Illustration 2.2, for instance, if the market has overvalued all computer software firms, using the average PE ratio of these firms to value an initial public offering will lead to an overvaluation of the IPO stock. In contrast, discounted cash flow valuation is based on firm-specific growth rates and cash flows, so it is less likely to be influenced by market errors in valuation.

# CONTINGENTCLAIMVALUATION

Perhaps the most revolutionary development in valuation is the acceptance, at least in some cases, that the value of an asset may be greater than the present value of expected cash flows if the cash flows are contingent on the occurrence or nonoccurrence of an event. This acceptance has largely come about because of the development of option pricing models. While these models were initially used to value traded options, there has been an attempt in recent years to extend the reach of these models into more traditional valuation. There are many who argue that assets such as patents or undeveloped reserves are really options and should be valued as such, rather than with traditional discounted cash flow models.

# Basis for Approach

A contingent claim or option is a claim that pays off only under certain contingencies—if the value of the underlying asset exceeds a prespecified value for a call option or is less than a prespecified value for a put option. Much work has been done in the past 20 years in developing models that value options, and these option pricing models can be used to value any assets that have optionlike features.

Figure 2.2 illustrates the payoffs on call and put options as a function of the value of the underlying asset. An option can be valued as a function of the following variables: the current value and the variance in value of the underlying asset, the strike price and the time to expiration of the option, and the riskless interest rate. This was first established by Fischer Black and Myron Scholes in 1972 and has been extended and refined subsequently in numerous variants. While the Black-Scholes option pricing model ignore dividends and assumes that options will not be exercised early, it can be modified to allow for both. A discrete-time variant, the binomial option pricing model, has also been developed to price options.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1645b1ef-eae8-4434-adcf-f0fd70af65b3/8dff380fba1b4565087d04a9a276cc0e591e08c3e5c3e2b869aa0dd598594c69.jpg)
FIGURE 2.2 Payoff Diagram on Call and Put Options


An asset can be valued as an option if the payoffs are a function of the value of an underlying asset. It can be valued as a call option if when that value exceeds a prespecified level the asset is worth the difference. It can be valued as a put option if it gains value as the value of the underlying asset drops below a prespecified level, and if it is worth nothing when the underlying asset's value exceeds that specified level.

# Underpinnings of Contingent Claim Valuation

The fundamental premise behind the use of option pricing models is that discounted cash flow models tend to understate the value of assets that provide payoffs that are contingent on the occurrence of an event. As a simple example, consider an undeveloped oil reserve belonging to Petrobras. You could value this reserve based on expectations of oil prices in the future, but this estimate would miss the fact that the oil company will develop this reserve only if oil prices go up and will not if oil prices decline. An option pricing model would yield a value that incorporates this right.

When we use option pricing models to value assets such as patents and undeveloped natural resource reserves, we are assuming that markets are sophisticated enough to recognize such options and incorporate them into the market price. If the markets do not do so right now, we assume that they will eventually; the payoff to using such models comes about when this correction occurs.

# Categorizing Option Pricing Models

The first categorization of options is based on whether the underlying asset is a financial asset or a real asset. Most listed options, whether they be options listed on the Chicago Board Options Exchange or callable fixed income securities, are on financial assets such as stocks and bonds. In contrast, options can be on real assets such as commodities, real estate, or even investment projects; such options are often called real options.

A second and overlapping categorization is based on whether the underlying asset is traded. The overlap occurs because most financial assets are traded, whereas relatively few real assets are traded. Options on traded assets are generally easier to value, and the inputs to the option pricing models can be obtained from financial markets. Options on nontraded assets are much more difficult to value, since there are no market inputs available on the underlying assets.

# Applicability and Limitations of Option Pricing Models

There are several direct examples of securities that are options—LEAPS, which are long-term equity options on traded stocks; contingent value rights, which provide protection to stockholders in companies against stock price declines; and warrants, which are long-term call options issued by firms.

There are other assets that generally are not viewed as options but still share several option characteristics. Equity, for instance, can be viewed as a call option on the value of the underlying firm, with the face value of debt representing the strike price and the term of the debt measuring the life of the option. A patent can be analyzed as a call option on a product, with the investment outlay needed to get the project going considered the strike price and the patent life becoming the time to expiration of the option.

There are limitations in using option pricing models to value long-term options on nontraded assets. The assumptions made about constant variance and dividend yields, which are not seriously contested for short-term options, are much more difficult to defend when options have long lifetimes. When the underlying asset is not traded, the inputs for the value of the underlying asset and the variance in that value cannot be extracted from financial markets and have to be estimated. Thus the final values obtained from these applications of option pricing models have much more estimation error associated with them than the values obtained in their more standard applications (to value short-term traded options).

# CONCLUSION

There are three basic, though not mutually exclusive, approaches to valuation. The first is discounted cash flow valuation, where cash flows are discounted at a risk-adjusted discount rate to arrive at an estimate of value. The analysis can be done purely from the perspective of equity investors by discounting expected cash flows to equity at the cost of equity, or it can be done from the viewpoint of all claimholders in the firm, by discounting expected cash flows to the firm at the weighted average cost of capital. The second is relative valuation, where the value of an asset is based on the pricing of similar assets. The third is contingent claim valuation, where an asset with the characteristics of an option is valued using an option pricing model. There should be a place for each among the tools available to any analyst interested in valuation.

# QUESTIONS AND SHORT PROBLEMS

In the problems following, use an equity risk premium of 5.5 percent if none is specified.

1. Discounted cash flow valuation is based on the notion that the value of an asset is the present value of the expected cash flows on that asset, discounted at a rate that reflects the riskiness of those cash flows. Specify whether the following statements about discounted cash flow valuation are true or false, assuming that all variables are constant except for the one mentioned: a. As the discount rate increases, the value of an asset increases.


True False b. As the expected growth rate in cash flows increases, the value of an asset increases.


True False c. As the life of an asset is lengthened, the value of that asset increases.


True False d. As the uncertainty about the expected cash flow increases, the value of an asset increases.


True False e. An asset with an infinite life (i.e., it is expected to last forever) will have an infinite value.


True False

2. Why might discounted cash flow valuation be difficult to do for the following types of firms?

a. A private firm, where the owner is planning to sell the firm.
b. A biotechnology firm with no current products or sales, but with several promising product patents in the pipeline.
c. A cyclical firm during a recession.
d. A troubled firm that has made significant losses and is not expected to get out of trouble for a few years.
e. A firm that is in the process of restructuring, where it is selling some of its assets and changing its financial mix.
f. A firm that owns a lot of valuable land that is currently unutilized.

3. The following are the projected cash flows to equity and to the firm over the next five years:

<table><tr><td>Year</td><td>CF to Equity</td><td>Int (1 - t)</td><td>CF to Firm</td></tr><tr><td>1</td><td>$ 250.00</td><td>$ 90.00</td><td>$ 340.00</td></tr><tr><td>2</td><td>$ 262.50</td><td>$ 94.50</td><td>$ 357.00</td></tr><tr><td>3</td><td>$ 275.63</td><td>$ 99.23</td><td>$ 374.85</td></tr><tr><td>4</td><td>$ 289.41</td><td>$104.19</td><td>$ 393.59</td></tr><tr><td>5</td><td>$ 303.88</td><td>$109.40</td><td>\$ 413.27</td></tr><tr><td>Terminal value</td><td>\$3,946.50</td><td></td><td>6,000.00</td></tr></table>

(The terminal value is the value of the equity or firm at the end of year 5.)

The firm has a cost of equity of  $12\%$  and a cost of capital of  $9.94\%$ . Answer the following questions: a. What is the value of the equity in this firm?

b. What is the value of the firm?

4. You are estimating the price-earnings multiple to use to value Paramount Corporation by looking at the average price-earnings multiple of comparable firms. The following are the price-earnings ratios of firms in the entertainment business.

<table><tr><td>Firm</td><td>PE Ratio</td></tr><tr><td>Disney (Walt)</td><td>22.09</td></tr><tr><td>Time Warner</td><td>36.00</td></tr><tr><td>King World Productions</td><td>14.10</td></tr><tr><td>New Line Cinema</td><td>26.70</td></tr></table> a. What is the average PE ratio?

b. Would you use all the comparable firms in calculating the average? Why or why not?
c. What assumptions are you making when you use the industry-average PE ratio to value Paramount Corporation?

