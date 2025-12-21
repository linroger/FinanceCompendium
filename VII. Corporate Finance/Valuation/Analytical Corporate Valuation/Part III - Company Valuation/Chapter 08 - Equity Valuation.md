---
title: "Chapter 08 - Equity Valuation"
parent_directory: Part III - Company Valuation
formatted: 2025-12-21 12:30:00 PM
formatter_model: kimi-k2-turbo
cli-tool: claude-code
primary_tags:
  - equity valuation
  - dividend discount model
  - free cash flow equity
secondary_tags:
  - valuation models
  - cost of equity
  - terminal value
  - growth models
cssclasses: academia
---

Abstract Company value is a function of its ability to create positive performance in the future. The value of the company is equal to the current value of expected future cash flows and the cost of capital is used as a discount rate. There are three main variables: (i) Time: the value of the company is strictly related to future performance rather than to past performance; (ii) Cash-flows: the expected future cash-flows from operations and equity; (iii) Cost of capital: it defines the discount rate for expected future cash-flows. In the evaluation process, two perspectives can be used: (i) Equity side, in which the equity value is estimated; (ii) Asset side, in which the enterprise value is estimated. This Chapter focuses on the Equity Valuation, while the next Chapter focuses on the Enterprise Valuation. The Equity Value is estimated on the basis of free cash-flows to equity discounted at the cost of equity.

# 8.1 the General Equation of Value

The company's value is function of its ability to achieve positive performance in the future. Specifically, the value of the company is related to expected future cash flows: the company's value is equal to the present value of expected future cash flows and the cost of capital is used as discount rate (Williams 1938; Modigliani and Miller 1958; Benninga 2014; Berk and DeMarzo 2008; Brealey et al. 2016; Copeland et al. 2004; Damodaran 2012, 2015; Fuller and Farrell 1987; Hillier et al. 2016; Koller et al. 2015; Vernimmen et al. 2014; Altaman 1969; Bower and Bower 1970).

The price of common stock is a function of the company's dividends, cash-flows, risk, cost of capital and growth rate.

The valuation model combines these variables to estimate the value of the company. Specifically, the valuation model is a formalization of the relationships expected to exist between these economic variables.

The formalization of a model requires a lot of inputs and the knowledge of relationships among them in a forecasting perspective. Variables considered are systematically collected among them in the model.

Therefore, based on this definition, there are three main variables:

(1) Time: the referenced time is the future. The value of the company is strictly related to future performance rather than past performance;
(2) Cash-flows: company performance is measured in cash-flows terms. Specifically, the expected future cash-flows from operations and to equity;
(3) Cost of capital: it is the cost of debt and the cost of equity and it defines the discount rate for expected future cash-flows.

By following a financial approach, the General Equation of value can be defined, based on these three main variables as follows:

$$
W _ {F} = \sum_ {t = 1} ^ {\infty} \frac {C F _ {t}}{(1 + k) ^ {t}} \tag {8.1}
$$

```d2
direction: right

Valuation Fundamentals {
  shape: hexagon
  style.fill: "#e8f5e9"
  style.stroke: "#2e7d32"

  Time: Future Performance {
    shape: circle
    style.fill: "#fff3e0"
  }

  CashFlows: Expected CF {
    shape: circle
    style.fill: "#e3f2fd"
  }

  CostOfCapital: Discount Rate {
    shape: circle
    style.fill: "#f3e5f5"
  }

  CompanyValue: PV of Future CF {
    shape: rectangle
    style.fill: "#c8e6c9"
  }

  Time -> CompanyValue: Drives valuation
  CashFlows -> CompanyValue: Numerator
  CostOfCapital -> CompanyValue: Denominator
}
```

where:

- $W_{F}$: is the company's value;
- $t$: is the period-time of valuation;
- $CF_{t}$: is the expected future cash-flows for each year ($t$). Note that they refer to the expected value of cash-flows but in order to simplify the formalization the operator $\operatorname{E}[CF_t]$ is not used, by the meaning is the same;
- $k$: is the cost of capital used as a discounted rate.

The Eq. (8.1) has a great theoretical relevance. It estimates the value of the company based on expected cash flows, arising from the fundamental analysis of the company and the cost of capital. Also the equation defines the relationship between company value, the expected cash flow and the cost of capital in the time of valuation: the company's value increases together with an increase in the expected cash flow and decreases together with an increase in the cost of capital.

Unfortunately, the general equation has a relevant theoretical importance but it is not applicable directly. There are two main problems to be solved before:

the valuation time-period;
- the valuation perspective.

# Valuation Time-Period

The first problem is the definition of the valuation time-period. In Eq. (8.1) time goes from $1$ ($t = 1$) to infinite ($t = n$). Therefore, the Eq. (8.1) is not directly applicable. The problem can be solved by dividing the valuation time-period in two conceptual parts:

- definite time-period: it is the time period of analytic valuation. Generally, this time period is equal to 3 or 5 years on the basis of company characteristics and its market, and it defines the time period of the business plan;
- indefinite time-period: it is the time period of synthetic valuation. It goes from the end of time-period of analytic valuation to infinity by using the Terminal

Value (TV). Generally, the Terminal Value measures the company's value after the analytic valuation. Estimation of the Terminal Value is one of the most relevant problems in company valuation. There are two main approaches to estimate the Terminal Value:

- going concern approach: it is assumed that the company continues to deliver cash flows in perpetuity. In this case, the Terminal Value reflects the value of the company after the end of the analytic valuation in perpetuity;
- liquidation approach: an end-time of company life is assumed together with the sale of the assets. In this case the Terminal Value reflects the liquidation value of the company. There are two main ways of estimating the liquidation value: the first, is to estimate the book value of the assets at the end of the analytic valuation and adjust it for inflation during the period; the second, is to estimate the value of the earning power of the assets through the present value of their expected cash flows.

Among these two approaches, the first (going concern approach) is more commonly used than the second (liquidation approach). The indefinite life of the company is usually assumed. The company may decide the end of its life or the company may fail, but these two events are not planned. Therefore, in this context the focus will be on an estimation of the Terminal Value based on the assumption of the ongoing concern.

By distinguishing between the analytical valuation and the synthetic valuation, the Eq. (8.1) can be rewritten as follows:

$$
W _ {F} = \sum_ {t = 1} ^ {n} \frac {C F _ {t}}{(1 + K) ^ {t}} + \frac {T V _ {n}}{(1 + K) ^ {n}} \tag {8.2}
$$

where $TV_{n}$ indicates the Terminal Value at the end ($t = n$) of the period of the analytical valuation.

Therefore, while the first part of the equation estimates the company value in a given time period (analytic value of the company), the second part of the equation estimates the company value in an indefinite time period by using the Terminal Value (synthetic value of the company).

It is possible to summarize these two different periods on value as follows:

Company Value  $(\mathrm{W_F}) =$  Present Value of Cash-Flows during the Explicit Forecast Period
+ Present Value of Cash-Flows after the Explicit Forecast Period

Consequently, the Terminal Value plays a key role in the equation. Usually, its weight in the estimation of company value is relevant. If it very much relevant, the entire valuation process can be considered unreliable: the greater the Terminal Value, greater the synthetic valuation and lower the analytic valuation; therefore, much of the estimated value is out of the business plan and, then out of the company's fundamental analysis. In our perspective the Terminal Value should be less than $40\%$ of company value.

The Terminal Value estimation, on the basis of the ongoing concern approach, can be estimated on the basis of two main techniques (Damodaran 2012):

- relative value: it is based on multiples of earnings, revenues or book value and therefore it is based on relative value. This technique is easier but dangerous for two main reasons: firstly, the multiple is estimated by looking at how comparable companies in business today are priced by the market, and therefore a relative valuation of the Terminal Value is used; secondly, by using a relative valuation of Terminal Value there is a dangerous mix between relative valuation and direct valuation used for the analytical valuation. In this case there are problems of incompatibility between analytic and synthetic valuation with consequent unreliability of the entire valuation of the company;
- intrinsic value: it is based on discounted cash flow and therefore valuation of the Terminal Value is based on the intrinsic value of the company. Specifically, it is based on the assumption that future expected cash-flows will grow at a constant rate in perpetuity. Assuming a stable growth rate, the Terminal Value can be estimated using a perpetual growth model. Even if this approach is more complex, nevertheless it is more coherent with the analytical valuation and it provides more homogeneity between the first and the second parts of Eq. (8.2). By following this approach, the Terminal Value can be estimated as follows:

$$
T V _ {t} = \frac {C F _ {t + 1}}{K - g _ {n}} \tag {8.3}
$$

# Where:

- $t + 1$: is the first year after the end-time of analytic valuation;
- $CF$: is the future normalized expected cash-flow from the first year after the end-time of analytic valuation;
- $K$: is the cost of capital;
$g_{n}$: is the stable growth rate.

In the Terminal Value equation, there are two main problems: (i) estimation of the stable growth rate $\left(g_{n}\right)$ and (ii) the normalized value of the expected cash-flows in perpetuity. Small changes in these value can change the Terminal Value significantly and therefore the company value.

The assumption that the stable growth rate is constant in perpetuity requires strong restrictions about its estimation. Specifically, three main caveats should be kept in mind (Damodaran 2012):

(a) the company cannot grow in perpetuity at a rate higher than the growth rate of the economy referenced. The stable growth rate must be lower or equal to the expected growth rate of the market or, in general terms, the economy. If the

company is of a domestic dimension, due to internal or external constraints, the expected growth rate of domestic economy represents the limiting value of the expected stable growth rate of the company. On the other hand, if the company has a multinational dimension, or it expects to be so in the future, the expected growth rate in the global economy, or at least in the parts in which the company operates or wants to operate in the future, represents the limiting value of the expected stable growth rate of the company. Also, if the valuation is based on nominal value (nominal valuation), the stable growth rate should be nominal and, therefore it should include the expected inflation rate; however, if the valuation is based on real value (real valuation), the stable growth rate should be real and therefore should be lower than nominal one.

It is worth noting that by estimating the stable growth rate lower or equal to the growth rate of the economy referenced, it ensures that the stable growth rate will be less than the discount rate.

(b) the period in which the company is able to sustain a high growth rate before laying down on stable growth rate has not been previously defined. It is function of the market dynamics and its competition level. Generally, a high growth rate of the company comes from its capability to create value that it is function of the return on investments greater than the cost of capital, higher than its competitors. But over time the competitors will react by engaging in competitive actions to increase their value to the detriment of the company. Therefore, the ability of the company to sustain a high growth rate is function of its operations in the market as well as of the market operations of its competitors and the general dynamics of the market. In strategic terms, the ability of the company to sustain a high growth rate for a long period before it will lay down on a stable growth rate is function of two main variables: first, existence of the company's competitive advantage allowing it to obtain and defend a profitable market position; second, the characteristics and competitive dynamics in the market;

(c) the transition from the high growth scenario to the stable growth scenario can be achieved in different ways. There are two main ways: (i) firstly, the company maintains a high growth condition for a period and then it suddenly falls into a stable growth condition abruptly. This scenario is captured by a two-stage model; (ii) secondly, the company maintains a high growth condition for a period and then it undergoes a transition period in which it reduces growth gradually towards a stable growth condition. This scenario is captured by a three-stage model. The two-stage and three-stage models represent the basis to evaluate the company and equity.

Finally, it is worth noting that the company in a condition of stable growth characterized by a basically stable capital structure, low or null excess returns on investments and low reinvestments.

By substituting the Eq. (8.3) in the Eq. (8.2), we have:

$$
W _ {F} = \sum_ {t = 1} ^ {n} \frac {C F _ {t}}{(1 + K) ^ {t}} + \frac {\left[ \frac {C F _ {t + 1}}{K - g _ {n}} \right]}{(1 + K) ^ {n}}
$$

and therefore:

$$
W _ {F} = \sum_ {t = 1} ^ {n} \frac {C F _ {t}}{(1 + K) ^ {t}} + \frac {C F _ {t + 1}}{(K - g _ {n}) (1 + K) ^ {n}} \tag {8.4}
$$

The Eq. (8.4) has great relevance. It allows for application of the General Equation as formalized by the Eq. (8.1) on the basis of estimation of cash-flows, cost of capital and growth rate.

Obviously, by changing the assumption about the estimation of these variables, it changes the company value.

Note that in the first part of Eq. (8.4), the growth rate  $(g)$  is included in the estimation of cash-flow in each time period of valuation. Therefore, it is equal to:

$$
g = \frac {C F _ {t} - C F _ {t - 1}}{C F _ {t - 1}} = \frac {C F _ {t}}{C F _ {t - 1}} - 1
$$

It is worth noting that while the growth rate  $g$  is included in the estimation of cash-flows in each year of analytical valuation,  $g_{n}$  is the growth rate in a steady condition and then it is the growth at which the cash flows will grow in perpetuity.

# Valuation Perspective

The second problem is the valuation perspective. Application of the General Equation requires the definition of its variables: identification of the expected cash flow to be discounted and identification of capital cost used to discount the expected cash flow. The solution of the problem requires the definition of the valuation perspective. They could be two: Equity Side and Asset Side.

In the Equity Side perspective the Equity Value of the Company is estimated on the basis of Free Cash Flow to Equity (FCFE) discounted at the Cost of Equity.

Use of the Cost of Equity instead of Cost of Capital is due to the nature of the free cash-flow to be discounted: they are the residual cash-flow after the coverage of the company's needs and the debt obligations and destined to equity remuneration.

In the Equity Side perspective, the Eq. (8.2) can be rewritten as follows:

$$
W _ {E} = \sum_ {t = 1} ^ {n} \frac {F C F E _ {t}}{\left(1 + K _ {E}\right) ^ {t}} + \frac {T V _ {n}}{\left(1 + K _ {E}\right) ^ {n}} \tag {8.5}
$$

where:

-  $W_{E}$ : is the Equity Value;
-  $FCFE$ : is the future expected Free Cash-Flow to Equity;
-  $K_{E}$ : is the cost of equity;
$g_{n}$  : is the stable growth rate;
-  $TV_{n}$ : is the terminal value.

Similarly, the Eq. (8.3) can be rewritten as follows:

$$
T V _ {t} = \frac {F C F E _ {t + 1}}{K _ {E _ {t + 1}} - g _ {n}} \tag {8.6}
$$

By substituting the Eq. (8.6) in the Eq. (8.5), we have:

$$
W _ {E} = \sum_ {t = 1} ^ {n} \frac {F C F E _ {t}}{\left(1 + K _ {E}\right) ^ {t}} + \frac {\left[ \frac {F C F E _ {t + 1}}{K _ {E _ {t + 1}} - g _ {n}} \right]}{\left(1 + K _ {E}\right) ^ {n}}
$$

and therefore:

$$
W _ {E} = \sum_ {t = 1} ^ {n} \frac {F C F E _ {t}}{\left(1 + K _ {E}\right) ^ {t}} + \frac {F C F E _ {t + 1}}{\left(K _ {E _ {t + 1}} - g _ {n}\right) \left(1 + K _ {E}\right) ^ {n}} \tag {8.7}
$$

The Eq. (8.7) is the Eq. (8.4) in Equity Side perspective.

In the Asset Side perspective the asset value called Enterprise Value is estimated. The Enterprise Value is estimated based on the Free Cash Flow From Operations (FCFO) discounted to the Cost of Capital. Use of the Cost of Capital, including both the cost of equity and the cost of debt, is due to the nature of the free cash flows to be discounted. In fact, these cash flows derive from the operating activities of the company and they are used in remuneration of both equity holders and debt holders.

Therefore, the Enterprise Value is the value generated by the company's operating activities and they must be distributed among the investors in equity and debt.

In the Asset Side perspective, the Eq. (8.2) can be rewritten as follows:

$$
W _ {A} = \sum_ {t = 1} ^ {n} \frac {F C F F _ {t}}{\left(1 + K _ {A}\right) ^ {t}} + \frac {T V _ {n}}{\left(1 + K _ {A}\right) ^ {n}} \tag {8.8}
$$

where:

-  $W_{A}$ : is the Enterprise Value;
-  $FCFO$ : is the future expected Free Cash-Flow from Operations;
-  $K_{A}$ : is the cost of capital of the company;
$g_{n}$  : is the stable growth rate;
-  $TV_{n}$ : is the terminal value.

Similarly, the Eq. (8.3) can be rewritten as follows:

$$
T V _ {t} = \frac {F C F F _ {t + 1}}{K _ {A _ {t + 1}} - g _ {n}} \tag {8.9}
$$

By substituting the Eq. (8.9) in the Eq. (8.8), we have:

$$
W _ {A} = \sum_ {t = 1} ^ {n} \frac {F C F F _ {t}}{\left(1 + K _ {A}\right) ^ {t}} + \frac {\left[ \frac {F C F F _ {t + 1}}{K _ {A _ {t + 1}} - g _ {n}} \right]}{\left(1 + K _ {A}\right) ^ {n}}
$$

and therefore:

$$
W _ {A} = \sum_ {t = 1} ^ {n} \frac {F C F F _ {t}}{\left(1 + K _ {A}\right) ^ {t}} + \frac {F C F F _ {t + 1}}{\left(K _ {A _ {t + 1}} - g _ {n}\right) \left(1 + K _ {A}\right) ^ {n}} \tag {8.10}
$$

The Eq. (8.10) is the Eq. (8.4) in the Asset Side perspective.

It is worth noting that the Equity Value can be estimated from the Enterprise Value, by subtracting the Surplus Asset (SA) and the Net Financial Position (NFP) from the Enterprise Value, as follows:

$$
W _ {E} = W _ {A} - N F P \tag {8.11}
$$

Note that if there are Surplus Assets (SA), they must be considered in the Enterprise Value estimation by adding the cash flow from surplus assets and the Equity Value from the free cash flow obtained by subtracting the value of surplus assets (SA) and the Net Financial Positions (NFP). Therefore, the Eq. (8.11) can be rewritten as follows:

$$
W _ {E} = W _ {A} ^ {*} - N F P - S A \tag {8.12}
$$

Finally, it is worth noting that if there is no debt there is no valuation perspective problem. It is exactly the same evaluation of the assets or the equity of the company.

The two valuation perspectives, Asset Side and Equity Side, can be schematically represented as in Fig. 8.1.

There are several models to estimate the Equity Value and the Enterprise Value. In this context, following a financial approach, the Equity Value is estimated by using:

- Dividend Discounted Model (DDM);
- Free Cash Flow to Equity Discounted Model (E-DM);
Multiples on Equity Value.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/87fea16b-33f6-43ec-8056-5ef3565ac4c2/cd84c62949a3a9a9a8e2347df21e3b9896c5e1e0b905f60fc1ced6f399156219.jpg)
Fig. 8.1 Valuation perspectives: Asset side and equity side

Similarly, the Enterprise Value is estimated by using:

- Free Cash Flow from Operations Discounted Model (EV-DM) based on Cost of Capital Approach and on Adjusted Present Value Approach;
Economic Value Added (EVA);
- Multiples on Enterprise Value.

In both cases, Equity Value and Enterprise Value, the models are defined on the basis of three scenarios:

(a) Constant growth or one-period model: it assumes a constant growth over time indefinitely;
(b) Two-Stage Growth or two-period model: it assumes an initial period characterised by extraordinary growth (good or bad) that it continuous for a certain number of years; a second period characterised by a steady-state growth rate expected to continue indefinitely;
(c) Three-Stage Growth or three-period model: it assumes a first period characterized by growth constant at the same level; a second period characterized by a changing growth from its level in the first period to a long-run steady-state level; a third period characterized by a constant growth indefinitely.

Obviously, it is possible to use others steps by passing from the three-period model to an n-period model.

Generally, by moving from the one-period model to three-period model (or n-period model), more information is required in terms of quantity and complexity. Also, more variables imply more complexity in the forecast process. Otherwise, the use of few variables implies a high level of simplicity but a low level of confidence about the value estimated.

The trade-off between complexity and manageability must be solved on the basis of the information available on the company and the analyst's forecasting skills.

# 8.2 Dividend Discount Model

Generally, the shareholder's value is function of two main variables:

- expected dividends, paid by the company during the period the shares are held;
- expected capital gain, at the end of the holding period if the selling price in the financial markets is higher than the buying price.

While dividends are paid by the company, capital gain is paid by the financial market. The expected price of the stock in the financial markets, in order to realize capital gain, is function of two main variables: company's fundamentals with regards to the expected dividends that could be paid; supply and demand in the financial market based on trading analysis.

It is important to note that expected Dividends are equal the expected Free Cash-Flow to Equity (FCFE). The difference between the models refers to how Dividends and FCFE are estimated. Specifically, in the Dividend Discount Model (DDM) they are estimated synthetically by considering the dividend directly and their growth over time. Differently, in the Free Cash-Flow to Equity Discounted Model, they are estimated analytically on the basis of fundamental analysis and then the growth rate is included in their estimation.

The Dividend Discounted Model (DDM) estimates the Equity Value  $(W_{E})$  (or if the Equity Value per Share is preferred  $(W_{E_S}))$  equal to the present value of the expected Dividends in the future  $(Div_t)$  [or Dividend per Share  $(DPS_t)]$  discounted to the Cost of Equity  $(K_E)$ , as follows:

$$
W _ {E} = \sum_ {t = 1} ^ {\infty} \frac {D i v _ {t}}{\left(1 + K _ {E}\right) ^ {t}} \leftrightarrow W _ {E s} = \sum_ {t = 1} ^ {\infty} \frac {D P S _ {t}}{\left(1 + K _ {E}\right) ^ {t}} \tag {8.13}
$$

Note that the first of the two Eq. (8.13) considers Dividends in their total amount each year, while the second considers the Dividends per Share (DPS). Consequently, in the first case the Equity Value  $(W_{E})$  is estimate while in the second the Equity Value per Share  $(W_{Es})$  is estimated.

Therefore, the DDM is based on two variables: (i) the expected dividend; (ii) the cost of equity.

The conventional measure of dividend policy is the dividend payout ratio  $(PR)$ : it is equal to the sum of the dividend  $(Div)$  and stock buyback  $(SB)$  divided by Net Income  $(NI)$ . Usually, the stock payback is not considered because it is difficult to estimate for the future. Formally, we have:

$$
P R = \frac {D i v}{N I} \rightarrow P R = \frac {D i v + S B}{N I} \tag {8.14}
$$

and per Share we have:

$$
P R _ {S} = \frac {D P S}{E P S} \rightarrow P R _ {S} = \frac {D P S + S B S}{E P S} \tag {8.15}
$$

where  $DPS$  is the Dividend per Share,  $SBS$  is the Stock Buyback per Share and  $EPS$  is Earnings per Share.

If stock buyback is considered, it could be financed by debt. To avoid this effect, the Eq. (8.14) can be modified by calculating the Payout Ratio Adjusted  $(PA_{A})$  by subtracting the long-term debt  $(D_{LT})$  as follows:

$$
P A _ {A} = \frac {\text {D i v} + S B - D _ {L T}}{N I} \tag {8.16}
$$

The cost of equity is the expected return of the investor in equity. It is estimated based on: (i) the market beta in CAPM; (ii) the factor betas in the Arbitrage and Multifactor Models. The model is flexible enough to allow for time-varying discount rates due to the expected changes in interest rates or risk (Campbell and Shiller 1989).

The DDM is the simplest model to estimate Equity Value. There are three main advantages:

- it is based on an easy economic intuition: dividends are the only cash-flows relevant and tangible for the shareholders;
- the estimation of dividends is based on few assumptions: dividends are estimated by applying a growth rate to the last dividend paid or by considering the historical trend. Therefore, it is not necessary to estimate the company's fundamentals and the market future trend about the rates;
- dividends are usually assumed stable over time: equity value estimation based on dividends is more stable than the estimation based on cash-flows.

Despite the fact that the DDM model is simple, it is only used in specific cases. Indeed, the model is based on strong restrictions. There are two main restrictions:

- cash generated and held in the company for self-funding, instead of being distributed as dividends, is not considered. Then, the equity value could be underestimated;
- dividends may be paid by issuing new debt or new shares. Then, the share value could be overestimated.

By considering its advantages and disadvantages, the model can be useful in three main cases:

- first case: cash-flows generated by the company are higher than dividends paid. In this case, the definition of dividends reduces the managers' opportunity to invest in low value investments;
- second case: dividends paid by the company are stable over time. In this case the estimation of the share value is realistic;
- third case: estimation of the cash-flows is difficult or even impossible, due to the characteristics of the company's business. In this case, the dividends are the only stable parameter for evaluation.

In this context specific versions of the DDM are analysed, arising from different assumptions on the future growth of the company. Indeed, the Eq. (8.13) has a relevant theoretical value but it is not applicable directly. Therefore, its application requires assumptions about the main variables. There are four main versions of DDM (Damodaran 2012):

(d) constant growth DDM (C-DDM): it assumes that dividends will grow at the same growth rate over time indefinitely;
(e) two-Stage Growth DDM (2S-DDM): it assumes that dividends will grow on the basis of two different growth periods: a first period characterised by extraordinary growth (good or bad) continuous for a certain number of years; a second period characterised by a steady-state growth rate expected to continue indefinitely;
(f) three-Stage Growth DDM (3S-DDM): the model assumes that in the first period growth is assumed to be constant at some level. During the second period the growth changes from its level in the first period to a long-run steady-state level. In the third period constant growth is assumed.

For greater understanding of the model in its three main versions, the Eq. (8.13) can be defined with regards to the Stock Price (P), considering that the stock price  $(P_0)$  reflects its equity value per share  $(W_{E_S})$ , in  $t = 0$  we have:

$$
W _ {E _ {S (0)}} = P _ {0}
$$

# Constant Growth Ddm

The Constant growth DDM (C-DDM) (Williams 1938; Gordon 1962), also called Single-Period Model or One-Period Model, is based on the assumption of constant growth of the company over time and the payout ratio aligned to company's capabilities. The C-DDM is the simplest DDM's version because it assumes that dividends will grow at the same growth rate  $(g_{n})$  into an indefinite future.

Therefore, the C-DDM estimates the Current Stock Price  $(P_0)$  on the basis of the expected dividends in the next period  $(Div_{1})$ , the cost of equity  $(K_{E})$  and the expected growth rate of dividends  $(g_{n})$ , as follows:

# 8.2 Dividend Discount Model

$$
P _ {0} = \frac {\operatorname {D i v} _ {1}}{\left(1 + K _ {E}\right)} + \frac {\operatorname {D i v} _ {1} \left(1 + g _ {n}\right)}{\left(1 + K _ {E}\right) ^ {2}} + \frac {\operatorname {D i v} _ {1} \left(1 + g _ {n}\right) ^ {2}}{\left(1 + K _ {E}\right) ^ {3}} + \frac {\operatorname {D i v} _ {1} \left(1 + g _ {n}\right) ^ {3}}{\left(1 + K _ {E}\right) ^ {4}} + \dots + \frac {\operatorname {D i v} _ {1} \left(1 + g _ {n}\right) ^ {n - 1}}{\left(1 + K _ {E}\right) ^ {n}}
$$

The growth rate  $g_{n}$  is assumed constant over time.

By using the formula for the sum of a geometric progression, we have:

$$
P _ {0} = \frac {\frac {D i v _ {1}}{(1 + K _ {E})} \left[ 1 - \left(\frac {1 + g _ {n}}{1 + K _ {E}}\right) ^ {n} \right]}{1 - \frac {1 + g _ {n}}{1 + K _ {E}}}
$$

In this case:

$$
\lim  _ {n \rightarrow \infty} \left(\frac {1 + g _ {n}}{1 + K _ {E}}\right) ^ {n} = \lim  _ {n \rightarrow \infty} \frac {\left(1 + g _ {n}\right) ^ {n}}{\left(1 + K _ {E}\right) ^ {n}} = 0
$$

and then:

$$
P _ {0} = \frac {\frac {D i v _ {1}}{1 + K _ {E}}}{1 - \frac {1 + g _ {n}}{1 + K _ {E}}} = \frac {\frac {D i v _ {1}}{1 + K _ {E}}}{\frac {1 + K _ {E} - 1 - g _ {n}}{1 + K _ {E}}} = \frac {D i v _ {1}}{1 + K _ {E}} \cdot \frac {1 + K _ {E}}{K _ {E} - g _ {n}} = \frac {D i v _ {1}}{K _ {E} - g _ {n}}
$$

and then:

$$
P _ {0} = \frac {\text {D i v} _ {1}}{K _ {E} - g _ {n}} \tag {8.17}
$$

The Eq. (8.17) states that the current stock price  $(P_0)$  is equal to the expected dividend of the following year  $(Div_{1})$  divided by the difference between the Cost of Equity  $(K_E)$ , used as appropriate discount rate, and the expected constant growth rate  $(g_n)$  over time.

Note that the C-DDM can be stated in terms of rate of return (Elton et al. 2013). Considering that the cost of equity is the rate of return expected by investors in equity  $(r_E)$ , so that  $r_E \equiv K_E$ , substituting and solving the Eq. (8.17) for  $r_E$ , we have:

$$
r _ {E} = \frac {\text {D i v} _ {1}}{P _ {0}} + g _ {n} \tag {8.18}
$$

The Eq. (8.18) estimates the rate of return for Equity-holders included in the stock price.

The C-DDM is based on a steady-state growth rate  $(g_{n})$  of dividends over time. It requires three main basic assumptions:

- the company's characteristics must be in line with the stable growth rate;
- the company has to maintain a stable dividend policy;
- the company has to earn a stable return on new equity investment over time.

By considering these basic assumptions, it is easy to show how the constant growth rate  $(g_{n})$  can be defined in terms of fraction of earnings retained within the company as self-financing  $(b)$ , and the rate of return the company will earn on all new investments  $(r)$  and therefore the future profitability of investment opportunities (Elton et al. 2013). To derive the growth in dividends by the growth in earnings  $(E)$  arising from the return on new investments  $(I)$  as follows:

$$
E _ {t} = E _ {t - 1} + r I _ {t - 1}
$$

The retention rate  $(r)$  on investments  $(I)$  can be assumed constant over time. Therefore, investments are equal to the fraction earnings retained within the company  $(b)$ , so that:

$$
E _ {t} = E _ {t - 1} + r b E _ {t - 1} = E _ {t - 1} (1 + r b)
$$

Growth in earnings  $(g_{E})$  in percentage can be defined as follows:

$$
g _ {E} = \frac {E _ {t} - E _ {t - 1}}{E _ {t - 1}}
$$

and by substituting, we have:

$$
g _ {E} = \frac {E _ {t - 1} (1 + r b) - E _ {t - 1}}{E _ {t - 1}} = \frac {E _ {t - 1} + E _ {t - 1} r b - E _ {t - 1}}{E _ {t - 1}} = r b
$$

By defining the part of earnings to be retained  $(r)$  and by assuming a constant the rate of return the company will earn on all new investments  $(b)$ , the growth of earnings  $(g_{E})$  is equal to the growth of dividends  $(g_{D})$ . Indeed, on the basis of  $r$  and  $b$ , a constant portion of earnings is assumed to be paid out in each time  $t$ . Therefore, we have:

$$
g _ {E} = r b = g _ {D} \tag {8.19}
$$

On the basis of Eq. (8.19), Eq. (8.17) can be rewritten as follows:

$$
P _ {0} = \frac {\text {D i v} _ {1}}{K _ {E} - r b} \tag {8.20}
$$

And in terms of expected returns of investors' in equity $r_E$, we have:

# 8.2 Dividend Discount Model

$$
r _ {E} = \frac {\text {D i v} _ {1}}{P _ {0}} + r b \tag {8.21}
$$

A key role is played by future profitability of investment opportunities. In order to show this, consider that the rate of return on new investments  $(r)$  can be expressed as a fraction  $(\alpha)$  of the rate of return of investors' in equity  $(r_E)$ , as follows (Elton et al. 2013):

$$
r = \alpha r _ {E}
$$

By considering that:

$$
D i v _ {1} = (1 - b) E _ {1}
$$

And substituting, the expected return of investors in equity  $(r_E)$ , it is equal to:

$$
r _ {E} = \frac {(1 - b) E _ {1}}{P _ {0}} + \alpha r _ {E} b
$$

and then:

$$
r _ {E} - \alpha r _ {E} b = \frac {(1 - b) E _ {1}}{P _ {0}}; r _ {E} (1 - \alpha b) = \frac {(1 - b) E _ {1}}{P _ {0}}
$$

and:

$$
r _ {E} = \frac {(1 - b) E _ {1}}{(1 - \alpha b) P _ {0}} \tag {8.22}
$$

The Eq. (8.22) shows that (Elton and Gruber 1976; Elton et al. 2013):

- if there are no extraordinary investment opportunities, $\alpha = 1$ and consequently the Eq. (8.22) becomes $r_{E} = E_{1} / P_{0}$. Therefore, the Equity-holder requires the inverse of Price-Earnings ratio.
- if there are extraordinary investment opportunities, $\alpha > 1$ and consequently the Eq. (8.22) implies that investment opportunities are expected to offer a return above the one required by the Equity holders.

The C-DDM is simple but its utility is limited. The main caveats to keep in mind are the following (Elton et al. 2013; Damodaran 2012):

- first, the model requires an estimation of the dividends of the following year, the company's growth rate in perpetuity and the rate of return required by the Equity holder for holding the stock;
- second, the model can be used with some utility only by the companies characterised by a stable growth rate. Specifically, the model can be useful for the companies with a growth rate in line or lower than the nominal growth rate in the economy and with a well-established dividend payout policy over time to be continuous in the future;

- third, since the growth rate in dividends is expected to last forever, the other measures of the company's performances (revenues, costs, and earnings) are expected to grow at the same rate. It can generate a trade-off because the growth is not free: when the growth rate is increased, the payout ratio should be decreased in order to increase self-financing. Therefore, there is a trade-off on growth with the net effect on increasing growth being positive, neutral or even negative. Therefore, the model underestimates the company with the self-financing process. In this case the earnings are used to self-finance the company with a reduction in dividends;
- fourth, the growth rate of the stable growth has to be less than or equal to the growth rate of the markets referenced. It is unreasonable to assume that the company can grow at a rate greater than the growth rate of the referenced market in the long-term.

# Two-Stage Growth Ddm

The Two-Stage Growth DDM (2S-DDM) (Malkiel 1963; Fuller and Hsia 1984), also called Two-Period Growth Model, is based on two stages of growth:

- extraordinary growth period: it is the first period of the growth rate of dividend that cannot be considered stable over time. In this period it lasts in the first $n$ years ($t = 1 \rightarrow t = n$) the growth rate of dividend can be higher or lower than the stable growth rate. The term "extraordinary" is used because the growth rate of dividend in this first period can be greater or lower than the second period;
- steady-state growth period: it is the second period growth rate of dividend and is assumed stable over time. In this second period ($t = n + 1 \to t = \infty$) the growth rate of dividend is assumed stable over time.

It is reasonable to assume two periods of growth. Indeed, after some years (3, 5, 8 years) it is difficult to make assumptions on future growth. Therefore, after some years, it is reasonable to assume that company will grow with a constant growth rate.

Assume that the length of the first period is equal $n$ years. In this first period, the extraordinary (good or bad) growth rate is equal to $g_{e}$ while in the second period the stable growth rate is equal to $g_{n}$. Denoting with $P_{N}$ the price at the end of $n$-periods and then the price of stock in the second period. In both periods, the discount rate is the Cost of Equity $(K_{E})$. Denoting with $K_{E,eg}$ the cost of equity in the first period (extraordinary growth) and with $K_{E,st}$ the cost of equity in the second period (constant growth). It is possible to assume that they are equal among them so that $K_{E,st} = K_{E,eg}$.

The current stock Price $(P_0)$ can be estimated as follows (Elton et al. 2013):

$$
P _ {0} = \left[ \frac {D i v _ {1}}{\left(1 + K _ {E , e g}\right)} + \frac {D i v _ {1} \left(1 + g _ {e}\right)}{\left(1 + K _ {E , e g}\right) ^ {2}} + \frac {D i v _ {1} \left(1 + g _ {e}\right) ^ {2}}{\left(1 + K _ {E , e g}\right) ^ {3}} + \dots + \frac {D i v _ {1} \left(1 + g _ {e}\right) ^ {n - 1}}{\left(1 + K _ {E , e g}\right) ^ {n}} \right] + \frac {P _ {n}}{\left(1 + K _ {E , s t}\right) ^ {n}}
$$

By using the formula for the sum of a geometric progression, we have (Elton et al. 2013):

$$
P _ {0} = \left[ \frac {\frac {D i v _ {1}}{\left(1 + K _ {E , e g}\right)} \left[ 1 - \left(\frac {1 + g _ {e}}{1 + K _ {E , e g}}\right) ^ {n} \right]}{1 - \frac {1 + g _ {e}}{1 + K _ {E , e g}}} \right] + \frac {P _ {n}}{\left(1 + K _ {E , s t}\right) ^ {n}}
$$

And by considering that:

$$
\begin{array}{l} \frac {\frac {D i v _ {1}}{\left(1 + K _ {E , e g}\right)} \left[ 1 - \left(\frac {1 + g _ {e}}{1 + K _ {E , e g}}\right) ^ {n} \right]}{1 - \frac {1 + g _ {e}}{1 + K _ {E , e g}}} = \frac {\frac {D i v _ {1} \left[ 1 - \left(\frac {1 + g _ {e}}{1 + K _ {E , e g}}\right) ^ {n} \right]}{\left(1 + K _ {E , e g}\right)}}{\frac {1 + K _ {E , e g} - 1 - g _ {e}}{1 + K _ {E , e g}}} \\ = \frac {D i v _ {1} \left[ 1 - \left(\frac {1 + g _ {e}}{1 + K _ {E , e g}}\right) ^ {n} \right]}{\left(1 + K _ {E , e g}\right)} \cdot \frac {\left(1 + K _ {E , e g}\right)}{K _ {E , e g} - g _ {e}} \\ = \frac {D i v _ {1} \left[ 1 - \left(\frac {1 + g _ {e}}{1 + K _ {E , e g}}\right) ^ {n} \right]}{K _ {E , e g} - g _ {e}} \\ \end{array}
$$

We have:

$$
P _ {0} = D i v _ {1} \left[ \frac {1 - \left(\frac {1 + g _ {e}}{1 + K _ {E , e g}}\right) ^ {n}}{K _ {E , e g} - g _ {e}} \right] + \frac {P _ {n}}{\left(1 + K _ {E , e g}\right) ^ {n}}
$$

The Price in the second period  $(P_{n})$  can be estimated on the basis of the one-period model as follows:

$$
P _ {n} = \frac {\operatorname {D i v} _ {n + 1}}{K _ {E , s t} - g _ {n}}
$$

And by substituting, we have:

$$
P _ {0} = D i v _ {1} \left[ \frac {1 - \left(\frac {1 + g _ {e}}{1 + K _ {E , e g}}\right) ^ {n}}{K _ {E , e g} - g _ {e}} \right] + \frac {\frac {D i v _ {n + 1}}{K _ {E , s t} - g _ {n}}}{\left(1 + K _ {E , e g}\right) ^ {n}}
$$

and then:

$$
P _ {0} = D i v _ {1} \left[ \frac {1 - \left(\frac {1 + g _ {e}}{1 + K _ {E , e g}}\right) ^ {n}}{K _ {E , e g} - g _ {e}} \right] + \frac {D i v _ {n + 1}}{\left(K _ {E , s t} - g _ {n}\right) \left(1 + K _ {E , e g}\right) ^ {n}} \tag {8.23}
$$

The Eq. (8.23) can be rewritten by considering that Dividend in  $t = n + 1$  ( $Div_{n+1}$ ) can be expressed in terms of dividend in the first period as follows:

$$
D i v _ {n + 1} = D i v _ {1} \left(1 + g _ {e}\right) ^ {n - 1} \left(1 + g _ {n}\right)
$$

In this case, by substituting it, we have:

$$
P _ {n} = \frac {\operatorname {D i v} _ {1} (1 + g _ {e}) ^ {n - 1} (1 + g _ {n})}{K _ {E , s t} - g _ {n}}
$$

and then:

$$
P _ {0} = D i v _ {1} \left[ \frac {1 - \left(\frac {1 + g _ {e}}{1 + K _ {E , e g}}\right) ^ {n}}{K _ {E , e g} - g _ {e}} \right] + \frac {D i v _ {1} (1 + g _ {e}) ^ {n - 1} (1 + g _ {n})}{\left(K _ {E , s t} - g _ {n}\right) \left(1 + K _ {E , e g}\right) ^ {n}} \tag {8.24}
$$

The Eq. (8.24) can be rewritten by explicating the expected dividend in the next period  $(Div_{1})$ . Indeed, they can be estimated on the basis of current dividend  $(Div_{0})$  and the growth rate  $(g_{e})$  as follows:

$$
D i v _ {1} = D i v _ {0} (1 + g _ {e})
$$

Substituting in the Eq. (8.24), we have:

$$
P _ {0} = D i v _ {0} \left(1 + g _ {e}\right) \left[ \frac {1 - \left(\frac {1 + g _ {e}}{1 + K _ {E , e g}}\right) ^ {n}}{K _ {E , e g} - g _ {e}} \right] + \frac {D i v _ {0} \left(1 + g _ {e}\right) \left(1 + g _ {e}\right) ^ {n - 1} \left(1 + g _ {n}\right)}{\left(K _ {E , s t} - g _ {n}\right) \left(1 + K _ {E , e g}\right) ^ {n}}
$$

$$
P _ {0} = D i v _ {0} \left(1 + g _ {e}\right) \left[ \frac {1 - \left(\frac {1 + g _ {e}}{1 + K _ {E , e g}}\right) ^ {n}}{K _ {E , e g} - g _ {e}} \right] + \frac {D i v _ {0} \left(1 + g _ {e}\right) ^ {n - 1 + 1} \left(1 + g _ {n}\right)}{\left(K _ {E , s t} - g _ {n}\right) \left(1 + K _ {E , e g}\right) ^ {n}}
$$

and then:

$$
P _ {0} = D i v _ {0} \left(1 + g _ {e}\right) \left[ \frac {1 - \left(\frac {1 + g _ {e}}{1 + K _ {E , e g}}\right) ^ {n}}{K _ {E , e g} - g _ {e}} \right] + \frac {D i v _ {0} \left(1 + g _ {e}\right) ^ {n} \left(1 + g _ {n}\right)}{\left(K _ {E , s t} - g _ {n}\right) \left(1 + K _ {E , e g}\right) ^ {n}} \tag {8.25}
$$

Note that by using an approximate procedure, dividends can be estimated on the basis of Net Income (NI) and Payout Ratio (PR). Similarly, Dividends per Share (DPS) can be estimated on the basis of Earnings per Share (DPS) and Payout Ratio per Share (PRS). The relative equations are the following (Damodaran 2012):

$$
D i v _ {t} = N I _ {t} \cdot P R _ {t} \leftrightarrow D P S _ {t} = E P S _ {t} \cdot P R S _ {t}
$$

On the basis of these equations, the Eq. (8.25) can be rewritten as follows:

$$
\begin{array}{l} P _ {0} = N I _ {0} \cdot P R _ {o} \cdot \left(1 + g _ {e}\right) \left[ \frac {1 - \left(\frac {1 + g _ {e}}{1 + K _ {E , e g}}\right) ^ {n}}{K _ {E , e g} - g _ {e}} \right] + \frac {N I _ {0} \cdot P R _ {o} \cdot \left(1 + g _ {e}\right) ^ {n} \left(1 + g _ {n}\right)}{\left(K _ {E , s t} - g _ {n}\right) \left(1 + K _ {E , e g}\right) ^ {n}} \\ P _ {0} = E P S _ {0} \cdot P R S _ {o} \cdot \left(1 + g _ {e}\right) \left[ \frac {1 - \left(\frac {1 + g _ {e}}{1 + K _ {E , e g}}\right) ^ {n}}{K _ {E , e g} - g _ {e}} \right] + \frac {E P S _ {0} \cdot P R S _ {o} \cdot (1 + g _ {e}) ^ {n} (1 + g _ {n})}{\left(K _ {E , s t} - g _ {n}\right) \left(1 + K _ {E , e g}\right) ^ {n}} \tag {8.26} \\ \end{array}
$$

Note that there is a strict relationship between the Payout Ratio  $(PR)$  and the growth rate  $(g)$ . If the growth rate is expected to drop drastically in the second period, the payout should be higher in the second period than in the first period. A company in steady-state period (second period) can pay out more of its earnings in dividends than a company in the high growth period (first period).

The relationship between Payout Ratio  $(PR)$  and growth rate  $(g)$  can be expressed on the basis of the ROE (Damodaran 2012).

The Retention Rate (RR) on ROE is a self-financing measurement. It can be expressed as 1 less Payout Ratio (PR). The growth rate  $(g)$  can be expressed as the Retention Rate multiplied by ROE. On the basis of these relationships, we have:

$$
R R \equiv 1 - P R
$$

$$
g = R R \cdot R O E \rightarrow g = (1 - P R) \cdot R O E
$$

and then:

$$
P R = 1 - \frac {g}{R O E} \tag {8.27}
$$

The Eq. (8.27) defines the relationship between Payout Ratio and growth rate on the basis of ROE.

The 2S-DDM can be applied in a different form. Usually analysts prefer to estimate dividends for each years in the first period  $(Div_{t})$ , and a constant dividend in the second period  $(Div_{n + 1})$ . In this case, the 2S-DDM can be applied as follows (Damodaran 2012):

$$
P _ {0} = \sum_ {t = 1} ^ {n} \frac {\operatorname {D i v} _ {t}}{\left(1 + K _ {E , e g}\right) ^ {t}} + \frac {P _ {n}}{\left(1 + K _ {E , s g}\right) ^ {n}} \tag {8.28}
$$

and by considering that the stock price in the second period  $(P_{n})$  can be estimated as follows:

$$
P _ {n} = \frac {\operatorname {D i v} _ {n + 1}}{K _ {E , s g} - g _ {n}} \tag {8.29}
$$

and substituting, we have:

$$
P _ {0} = \sum_ {t = 1} ^ {n} \frac {\operatorname {D i v} _ {t}}{\left(1 + K _ {E , e g}\right) ^ {t}} + \frac {\frac {\operatorname {D i v} _ {n + 1}}{K _ {E , s g} - g _ {n}}}{\left(1 + K _ {E , s g}\right) ^ {n}}
$$

and then:

$$
P _ {0} = \sum_ {t = 1} ^ {n} \frac {\operatorname {D i v} _ {t}}{\left(1 + K _ {E , e g}\right) ^ {t}} + \frac {\operatorname {D i v} _ {n + 1}}{\left(K _ {E , s g} - g _ {n}\right) \left(1 + K _ {E , s g}\right) ^ {n}} \tag {8.30}
$$

Note that in the first period dividends include the growth rate. It can be estimated indirectly as follows:

$$
g _ {e} = \frac {D i v _ {t + 1}}{D i v _ {t}} - 1
$$

The Eq. (8.30) can be divided in two parts:

- the first part of equation is the present value of the expected dividends in the first period ( $t = 1 \rightarrow n$ ). It can be defined as the "analytical value" because: (i) the dividends are estimated for each year ( $Div_t$ ) of the first period; (ii) the growth rate ( $g_e$ ) is incorporated in the dividend estimation in each year and it can be different over the years ( $g_{e_{(t)}}$ );
- the second part of equation is the present value of the price in the second period and then at the end of the n-years ( $t = n + 1 \to \infty$ ). It can be defined as the "synthetic value" because: (i) the dividends  $(Div_{n+1})$  are estimated constant over time, (ii) the growth rate  $(g_n)$  is assumed constant in perpetuity.

It is worth noting that in both periods, the cost of equity is used to discount the expected dividends. It can be assumed equal in the two periods  $\left(K_{E,eg} = K_{E,sg}\right)$ . However, it should be assumed different because the two periods define a different structural scenario. In this case, we have  $K_{E,eg} \neq K_{E,sg}$ .

Generally, the 2S-DDM is useful for the company characterized by different growth levels between the first and the second period. Specifically, the model can be used if the company is characterized by a growth rate in the first period higher or lower than the stable growth rate of the second period.

There are three main problems in the model (Damodaran 2012):

- first, it is difficult to estimate the length of the extraordinary growth period;
- second, the growth rate is assumed high in the first period and declining at the end of the first period until a stable level characterises the second period. Also, assuming that this happens, it is more reasonable to assume that the move from the high growth to stable growth happens gradually over time;
- third, it can lead to skewed estimates of equity value that are not paying out what it can afford in dividends. Specifically, the model underestimates the value of the company, preferring prefer self-financing and the pay out of few dividends.

A specific version of 2S-DDM is the Two-Stage Growth DDM with  $H$ -Model Specification (2SH-DDM) (Fuller and Hsia 1984) that can be considered a specific version of the 2S-DDM. This version is based on three basic assumptions:

- first, the growth rate decreases in a linear manner during the first period (extraordinary growth) characterised by 2 stages (2H) to reach a stable growth rate during the second period (steady-state). The difference between 2S-DDM and 2SH-DDM is the behaviour of the growth rate in the first period: constant in the first model and decreasing in the second model;
- second, cost of equity is constant over time and it is independent of the growth rate;
- third, payout-ratio is constant over time and it is independent of the growth rate.

In this version, the growth rate starts from a high initial level  $(g_{a})$  and it decreases in a linear manner during the first period (extraordinary growth period) that is assumed to last a stable growth rate  $(g_{n})$  in the second period (steady-state growth period). The cost of equity  $(K_{E})$  is assumed constant over time. Formally:

$$
P _ {0} = \frac {\operatorname {D i v} _ {0} (1 + g _ {n})}{K _ {E} - g _ {n}} + \frac {\operatorname {D i v} _ {0} \left(g _ {a} - g _ {n}\right) H}{K _ {E} - g _ {n}} \tag {8.31}
$$

The relationship between the two growth rates  $(g_{a}; g_{n})$  can be summarized as in Fig. 8.2.

The model allows to exceed the limit of the 2S-DDM, with regards to the growth rate that drops drastically from high growth to stable growth. Otherwise, the model has two main limitations (Damodaran 2012):

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/87fea16b-33f6-43ec-8056-5ef3565ac4c2/d25a4f5efa1d982c6b2919da984f4e9bfb79d4cb731743feb845e7b1ce1fb92c.jpg)
Fig. 8.2 Relationship between two growth rates

- first, the model assumes a linear decrease of the growth rate from a level in perpetuity. Even assuming a fall in the growth rate, it may not be linear. Generally, small differences from the assumption are not relevant on the company value estimation; otherwise, relevant differences have a high impact on this. Based on this assumption, the model can be used for the company characterized by a high growth rate, but with an estimation of its gradual fall mainly due to the growth of the company size and reduction of the competitive advantage;
- second, the model assumes constant dividends (payout ratio) in both periods. In reality, usually when the growth rate decreases, the payout ratio increases. Therefore, the model is not appropriate for companies with low dividends or with no dividends.

# Three-Stage Growth Ddm

The Three-Stage Growth DDM (3S-DDM) (Molodovsky et al. 1965), also called Three-Period Growth Model, is based on three different periods:

- extraordinary growth period: it is the first period and it is characterized by a high or low growth rate;
- transitional growth period: it is the second period and it is characterized by a growth rate declining or increasing to reach a stable level;
- steady-state growth period: it is the third period and it is characterized by a steady-state growth rate.

The current stock Price  $(P_0)$  is equal to the sum of present values of expected Dividends (Div) in the high or low growth period (first period), transaction period (second period) and steady-state period (third period). Denoting with:  $g_{e}$  and  $K_{E,eg}$  the extraordinary growth and the cost of equity respectively in the first period;  $g_{tr}$  and  $K_{E,tr}$  the transactional growth rate and the cost of equity respectively in the second period;  $g_{n}$  and  $K_{E,st}$  the steady-state growth rate and the cost of equity respectively in the third period.

The 3S-DDM can be derived by 2S-DDM as follows:

$$
\begin{array}{l} P _ {0} = \left[ \frac {D i v _ {1}}{\left(1 + K _ {E , e g}\right)} + \frac {D i v _ {1} \left(1 + g _ {e}\right)}{\left(1 + K _ {E , e g}\right) ^ {2}} + \frac {D i v _ {1} \left(1 + g _ {e}\right) ^ {2}}{\left(1 + K _ {E , e g}\right) ^ {3}} + \dots + \frac {D i v _ {1} \left(1 + g _ {e}\right) ^ {n - 1}}{\left(1 + K _ {E , e g}\right) ^ {n}} \right] \\ + \left[ \frac {D i v _ {n + 1}}{\left(1 + K _ {E , t r}\right) ^ {n + 1}} + \frac {D i v _ {n + 1} \left(1 + g _ {t r}\right) ^ {n + 1}}{\left(1 + K _ {E , t r}\right) ^ {n + 2}} + \frac {D i v _ {1} \left(1 + g _ {t r}\right) ^ {n + 2}}{\left(1 + K _ {E , t r}\right) ^ {n + 3}} + \dots + \frac {D i v _ {1} \left(1 + g _ {t r}\right) ^ {m - 1}}{\left(1 + K _ {E , t r}\right) ^ {m}} \right] \\ + \frac {P _ {m}}{\left(1 + K _ {E , s t}\right) ^ {m}} \\ \end{array}
$$

and then:

By using the formula for the sum of a geometric progression, we have:

$$
P _ {0} = \left[ \frac {\frac {D i v _ {1}}{\left(1 + K _ {E , e g}\right)} \left[ 1 - \left(\frac {1 + g _ {e}}{1 + K _ {E , e g}}\right) ^ {n} \right]}{1 - \frac {1 + g _ {e}}{1 + K _ {E , e g}}} \right] + \left[ \frac {\frac {D i v _ {n + 1}}{\left(1 + K _ {E , t r}\right)} \left[ 1 - \left(\frac {1 + g _ {t r}}{1 + K _ {E , t r}}\right) ^ {m} \right]}{1 - \frac {1 + g _ {t r}}{1 + K _ {E , t r}}} \right] + \frac {P _ {m}}{\left(1 + K _ {E , s t}\right) ^ {m}}
$$

The second part of the equation can be rewritten as follows:

$$
\begin{array}{l} \frac {\frac {D i v _ {n + 1}}{\left(1 + K _ {E , t r}\right)} \left[ 1 - \left(\frac {1 + g _ {t r}}{1 + K _ {E , t r}}\right) ^ {m} \right]}{1 - \frac {1 + g _ {t r}}{1 + K _ {E , t r}}} = \frac {\frac {D i v _ {n + 1} \left[ 1 - \left(\frac {1 + g _ {t r}}{1 + K _ {E , t r}}\right) ^ {m} \right]}{\left(1 + K _ {E , t r}\right)}}{\frac {1 + K _ {E , t r} - 1 - g _ {t r}}{1 + K _ {E , t r}}} \\ = \frac {\operatorname {D i v} _ {n + 1} \left[ 1 - \left(\frac {1 + g _ {t r}}{1 + K _ {E , t r}}\right) ^ {m} \right]}{\left(1 + K _ {E , t r}\right)} \cdot \frac {\left(1 + K _ {E , t r}\right)}{K _ {E , t r} - g _ {t r}} \\ = \frac {\operatorname {D i v} _ {n + 1} \left[ 1 - \left(\frac {1 + g _ {t r}}{1 + K _ {E , t r}}\right) ^ {m} \right]}{K _ {E , t r} - g _ {t r}} \\ \end{array}
$$

Therefore, by substituting we have:

$$
P _ {0} = \left[ D i v _ {1} \left[ \frac {1 - \left(\frac {1 + g _ {e}}{1 + K _ {E , e g}}\right) ^ {n}}{K _ {E , e g} - g _ {e}} \right] \right] + \left[ D i v _ {n + 1} \left[ \frac {1 - \left(\frac {1 + g _ {t r}}{1 + K _ {E , t r}}\right) ^ {m}}{K _ {E , t r} - g _ {t r}} \right] \right] + \frac {P _ {m}}{\left(1 + K _ {E , e g}\right) ^ {m}}
$$

The  $P_{m}$  in the third term of equation can be estimated on the basis of the one-period model as follows:

$$
P _ {m} = \frac {\operatorname {D i v} _ {m + 1}}{K _ {E , s t} - g _ {n}}
$$

And by substituting it, we have:

$$
P _ {0} = \left[ D i v _ {1} \left[ \frac {1 - \left(\frac {1 + g _ {e}}{1 + K _ {E , e g}}\right) ^ {n}}{K _ {E , e g} - g _ {e}} \right] \right] + \left[ D i v _ {n + 1} \left[ \frac {1 - \left(\frac {1 + g _ {t r}}{1 + K _ {E , t r}}\right) ^ {m}}{K _ {E , t r} - g _ {t r}} \right] \right] + \frac {\frac {D i v _ {m + 1}}{K _ {E , s t} - g _ {n}}}{(1 + K _ {E , e g}) ^ {m}}
$$

and then:

$$
\begin{array}{l} P _ {0} = \left[ D i v _ {1} \left[ \frac {1 - \left(\frac {1 + g _ {e}}{1 + K _ {E , e g}}\right) ^ {n}}{K _ {E , e g} - g _ {e}} \right] \right] + \left[ D i v _ {n + 1} \left[ \frac {1 - \left(\frac {1 + g _ {t r}}{1 + K _ {E , t r}}\right) ^ {m}}{K _ {E , t r} - g _ {t r}} \right] \right] \tag {8.32} \\ + \frac {\operatorname {D i v} _ {m + 1}}{\left(K _ {E , s t} - g _ {n}\right) \left(1 + K _ {E , e g}\right) ^ {m}} \\ \end{array}
$$

The Eq. (8.32) shows how the current stock Price  $(P_0)$  is equal to the sum of present values of expected Dividends  $(Div)$  in the high or low growth period (first period), transaction period (second period) and steady-state period (third period).

If the analyst prefers to estimate dividends for each year in the first and second periods  $\left(Div_{t=1:n}; Div_{t=n+1:m}\right)$ , and a constant dividend in the third period  $\left(Div_{m+1}\right)$ , the 3S-DDM can be applied as follows (Damodaran 2012):

$$
P _ {0} = \sum_ {t = 1} ^ {n} \frac {\operatorname {D i v} _ {t}}{\left(1 + K _ {E , e g}\right) ^ {t}} + \sum_ {t = n + 1} ^ {m} \frac {\operatorname {D i v} _ {t}}{\left(1 + K _ {E , t r}\right) ^ {t}} + \frac {P _ {m}}{\left(1 + K _ {E , s t}\right) ^ {m}} \tag {8.33}
$$

and by considering that the stock price in the third period  $(P_{m})$  can be estimated as follows:

$$
P _ {m} = \frac {\operatorname {D i v} _ {m + 1}}{K _ {E , s g} - g _ {n}} \tag {8.34}
$$

and by substituting it, we have:

$$
P _ {0} = \sum_ {t = 1} ^ {n} \frac {\operatorname {D i v} _ {t}}{\left(1 + K _ {E , e g}\right) ^ {t}} + \sum_ {t = n + 1} ^ {m} \frac {\operatorname {D i v} _ {t}}{\left(1 + K _ {E , t r}\right) ^ {t}} + \frac {\frac {\operatorname {D i v} _ {m + 1}}{K _ {E , s g} - g _ {n}}}{\left(1 + K _ {E , s t}\right) ^ {m}}
$$

and then:

$$
P _ {0} = \sum_ {t = 1} ^ {n} \frac {\operatorname {D i v} _ {t}}{\left(1 + K _ {E , e g}\right) ^ {t}} + \sum_ {t = n + 1} ^ {m} \frac {\operatorname {D i v} _ {t}}{\left(1 + K _ {E , t r}\right) ^ {t}} + \frac {\operatorname {D i v} _ {m + 1}}{\left(K _ {E , s g} - g _ {n}\right) \left(1 + K _ {E , s t}\right) ^ {m}} \tag {8.35}
$$

Note that in the first and second periods, dividends include the growth rate. It can be estimated indirectly as follows:

$$
g _ {e} = \frac {D i v _ {t + 1}}{D i v _ {t}} - 1 \leftrightarrow g _ {t} = \frac {D i v _ {t + 1}}{D i v _ {t}} - 1
$$

The Eq. (8.35) can be divided in three parts:

- the first part is the present value of the expected dividends in the first period  $(t = 1 \rightarrow n)$ . It can be defined as the "analytical value" because: (i) the dividends are estimated for each year  $(Div_{t})$  of the first period; (ii) the growth rate  $(g_{e})$  is incorporated in the dividend estimation in each year and the it can be different across the years  $(g_{e_{(t)}})$ ;
- the second part is the present value of the expected dividends in the second period ( $t = n + 1 \rightarrow m$ ). It can be defined as the "analytical value" because: (i) the dividends are estimated for each year ( $Div_t$ ) of the second period; (ii) the growth rate ( $g_{tr}$ ) is incorporated in the dividend estimation in each year and the it can be different across the years ( $g_{tr_{(t)}}$ );
- the third part is the present value of the price in the third period and then at the end of the m-years ( $t = m + 1 \to \infty$ ). It can be defined as the "synthetic value" because: (i) the dividends  $(Div_{m+1})$  are estimated constant over time, (ii) the growth rate  $(g_n)$  is assumed constant in perpetuity.

It is worth noting that in both periods, the cost of equity is used to discount the expected dividends. It can be assumed equal in the three periods  $\left(K_{E,eg} = K_{E,tr} = K_{E,sg}\right)$ . However, it should be assumed different because the three periods define structural different scenarios. In this case, we have  $K_{E,eg} \neq K_{E,tr} \neq K_{E,sg}$ .

The relationship among three growth rate can be summarized as in Fig. 8.3.

The 3S-DDM is more flexible than the 2S-DDM. It is useful in a scenario characterized by changes in growth rate, risk profile and dividend policy.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/87fea16b-33f6-43ec-8056-5ef3565ac4c2/d200e3e1e3498bc098e4af95eca057e9eb7c422fb7b0f96aa8c47a13890e58aa.jpg)
Fig. 8.3 Relationship between three growth rates

Note that the pay-out ratio is normally assumed as inverse to the growth rate; in the first period, high growth rate requires a low pay-out ratio, while in the third period a low-stable growth rate is compatible with a high pay-out ratio. In the second period their dynamics are inverted.

It is useful for companies characterised by a high growth rate expected to maintain for an initial period after which it is expected to gradually decrease until reaching a stable growth rate.

# 8.3 Free Cash-Flow to Equity Discounted Model

The Free Cash-flow to Equity Discounted Models (EDM) is one of the most useful models to estimate Equity Value.

The model is based on a more extensive definition of the dividends than DDM: while in DDM expected dividends paid synthetically and estimated on the basis of the past are considered without considering the company's fundamentals, in EDM expected Free Cash-Flow to Equity (FCFE) is estimated analytically on the basis of economic and financial dynamics of the company and then on its fundamental analysis.

The EDM can be considered as a DDM generalization. Indeed, dividend payments and FCFE may not be aligned among them. Specifically, dividend payments can be higher or lower than FCFE. In these cases, EDM is more effective than the DDM. Indeed, if (Damodaran 2012):

- the company pays dividends higher than FCFE, the Equity Value estimated by EDM is lower than the one estimated by DDM;
- the company pays dividends lower than the FCFE, the Equity Value estimated by EDM is higher than the one estimated by DDM.

Finally, EDM is more effective than the DDM whenever there is a change in the dividend policy as in a takeover where the bidder acquires control of the company. There are three main problems of EDM:

- first, the free cash-flows generated, after the coverage of needs (actual and expected) and the payments of debt and taxes are used to pay dividends. Therefore, there is no cash accumulation (self-financing) in the company. Then, the model assumes that the FCFE generated each year are distributed in their entirety to the shareholders resulting in no cash accumulation. Also the FCFE may be negative. In this case, they represent the company's capital needs;
- second, it requires an estimate of the growth rate of each variable. Therefore, the FCFE's growth rate is incorporated into the analytical estimation of the expected FCFE;
- third, for external analysts it is not always easy to estimate FCFE. It implies an analytical analysis of the company's fundamentals in order to estimate economic and financial dynamics over time. This procedure requires a lot of quantitative

and qualitative information on the company and its expectations about the future. On the other hand, the dividends paid and its estimation by models used in DDM are easier to obtain and use.

Usually, the Equity Value estimated by EDM is different from the Equity Value estimated by DDM. Otherwise, there are two conditions under which two models generate the same Equity Value:

- first, the expected dividends and expected FCFE are equal. In this case, the company gives the shareholders the free cash flow generated by the company each year without cash accumulation;
- second, the FCFE are higher than the dividends paid but the cash accumulation is invested in the project with a net present value equal to zero ( $VAN = 0$ ). In this case, cash accumulation is neutralized by the Equity Value.

The general formulation of EDM estimates the Equity Value equal to the present value of expected FCFE. Specifically, the Equity Value  $(W_{E})$  is estimated equal to the present value of expected FCFE in each time  $(t)$  by using the Cost of Equity  $(K_{E})$  as discounted rate, as follows:

$$
W _ {E} = \sum_ {t = 1} ^ {\infty} \frac {F C F E _ {t}}{\left(1 + K _ {E}\right) ^ {t}} \tag {8.36}
$$

The Eq. (8.36) has a conceptual value but it is not directly applicable. The problem is the indefinite time of valuation.

The correct application of EDM as formally defined by Eq. (8.36) can be achieved on the basis of three main versions (Damodaran 2012):

(a) constant Growth EDM (C-EDM);
(b) two-Stage Growth EDM (2S-EDM);
(c) three-Stage Growth EDM (3S-EDM).

# Constant Growth Edm

The Constant Growth EDM (C-EDM) is based on a stable growth rate of the company assumed in a steady-state growth.

In this condition, the Equity Value  $(W_{E})$  is estimated on the basis of the expected FCFE in the next period  $(FCFE_{1})$ , a stable growth rate  $(g_{n})$ , and the cost of equity  $(K_{E})$  used as discounted rate. Formally (Damodaran 2012):

$$
W _ {E} = \frac {F C F E _ {1}}{K _ {E} - g _ {n}} \tag {8.37}
$$

The Eq. (8.37) is similar to the Gordon's model. Consequently it is characterized by the same limitations. Specifically, there are two main caveats (Damodaran 2012):

- the expected growth rate in perpetuity  $(g_{n})$  must be equal or lower than the expected growth rate of the economy or the business references of the company.

Therefore, the model can be used for the company with a growth rate in line with that of the business or of the economy;

- the company's characteristics must be in line with the assumption of stable growth. Specifically, the stable condition requires that the company's investments must be in line with amortizations and depreciations. Indeed, in this case the company's investments activities are not relevant because the growth margin is low.

# Two-Stage Edm

The Two-Stage EDM (2S-EDM) can be used to estimate the Equity Value of company characterized by an extraordinary growth rate in the first period characterized by a high or low growth rate until to reach a steady-state growth rate in a second period (Damodaran 2012).

Therefore, there are two periods:

- extraordinary growth period: it is the first period characterized by higher or lower growth than steady-state growth. This period lasts  $n$  years.
- steady-state growth period: it is the second period characterized by a steady-state growth in which growth is stable over time.

On the basis of these two periods, the 2S-EDM estimates the Equity Value  $(W_{E})$  equal to the present value of FCFE during the extraordinary growth period plus the present value of Terminal Value  $(TV)$  estimated at the end of the extraordinary period for the steady-state growth period (second period). The discounted rate is the Cost of Equity  $(K_{E,eg}$  in the first period "extraordinary growth" and  $K_{E,st}$  in the second period "Steady-state growth"). Formally:

$$
W _ {E} = \sum_ {t = 1} ^ {n} \frac {F C F E _ {t}}{\left(1 + K _ {E , e g}\right) ^ {t}} + \frac {T V _ {n}}{\left(1 + K _ {E , s t}\right) ^ {n}} \tag {8.38}
$$

Note that the grow rate in the first period, is equal to:

$$
g = \frac {F C F E _ {t + 1}}{F C F E _ {t}} - 1
$$

The extraordinary growth rate  $(g)$  in the first period is different from steady-state growth rate  $(g_{n})$  of the second period:  $g$  can be higher or lower than  $g_{n}$ .

The Terminal Value is calculated by using the infinite growth rate model as follows:

$$
T V _ {n} = \frac {F C F E _ {n + 1}}{K _ {E , s g} - g _ {n}} \tag {8.39}
$$

Therefore, by substituting Eq. (8.39) in Eq. (8.38), we have:

$$
W _ {E} = \sum_ {t = 1} ^ {n} \frac {F C F E _ {t}}{\left(1 + K _ {E , e g}\right) ^ {t}} + \frac {\frac {F C F E _ {n + 1}}{K _ {E , s t} - g _ {n}}}{\left(1 + K _ {E , s g}\right) ^ {n}}
$$

and then:

$$
P _ {0} = \frac {E P S \cdot P R \cdot \left(1 + g _ {e}\right) ^ {n} \left(1 + g _ {n}\right)}{\left(K _ {E , s g} - g _ {n}\right) \left(1 + K _ {E , s g}\right) ^ {n}}
$$

where $g_{e}$ is the growth rate in the extraordinary growth period (first period) and $g_{n}$ is the growth rate in the steady-state period (second period).

By dividing the first and second member by Earning per Share (EPS), we have:

$$
\frac {P _ {0}}{E P S} = \frac {E P S \cdot (1 + g _ {e}) \cdot P R \left[ 1 - \frac {(1 + g _ {e}) ^ {n}}{\left(1 + K _ {E , e g}\right) ^ {n}} \right]}{E P S \left(K _ {E , e g} - g _ {e}\right)} + \frac {E P S \cdot P R \cdot (1 + g _ {e}) ^ {n} (1 + g _ {n})}{E P S \left(K _ {E , s g} - g _ {n}\right) \left(1 + K _ {E , s g}\right) ^ {n}}
$$

The first member is the PE multiple. Therefore, we have:

$$
P E = \frac {P R \cdot \left(1 + g _ {e}\right) \left[ 1 - \frac {(1 + g) ^ {n}}{\left(1 + K _ {E , e g}\right) ^ {n}} \right]}{\left(K _ {E , e g} - g _ {e}\right)} + \frac {P R \cdot \left(1 + g _ {e}\right) ^ {n} \left(1 + g _ {n}\right)}{\left(K _ {E , s g} - g _ {n}\right) \left(1 + K _ {E , s g}\right) ^ {n}} \tag {8.48}
$$

By estimating the Payout Ratio  $(PR)$  on the basis of Eq. (8.46), the Eq. (8.48) can be rewritten as follows:

$$
P E = \frac {\left(1 - \frac {g _ {n}}{R O E}\right) \left(1 + g _ {e}\right) \left[ 1 - \frac {\left(1 + g _ {e}\right) ^ {n}}{\left(1 + K _ {E , e g}\right) ^ {n}} \right]}{\left(K _ {E , e g} - g _ {e}\right)} + \frac {\left(1 - \frac {g _ {n}}{R O E}\right) \left(1 + g _ {e}\right) ^ {n} \left(1 + g _ {n}\right)}{\left(K _ {E , s g} - g _ {n}\right) \left(1 + K _ {E , s g}\right) ^ {n}}
$$

and then:

$$
P E = \left(1 - \frac {g _ {n}}{R O E}\right) \left[ \frac {\left(1 + g _ {e}\right) \left[ 1 - \frac {\left(1 + g _ {e}\right) ^ {n}}{\left(1 + K _ {E , e g}\right) ^ {n}} \right]}{\left(K _ {E , e g} - g _ {e}\right)} + \frac {\left(1 + g _ {e}\right) ^ {n} \left(1 + g _ {n}\right)}{\left(K _ {E , s g} - g _ {n}\right) \left(1 + K _ {E , s g}\right) ^ {n}} \right] \tag {8.49}
$$

The Eq. (8.49) shows the relationship between PE multiple and company's fundamental analysis in two stage growth rate.

# PE-to-Growth Ratio (peg)

The  $PE$  to Growth Ratio (PEG) is equal to PE (Price to Earnings Ratio) divided by the expected Growth Rate of Earnings per Share  $(\mathrm{g})$  as follows:

$$
P E G = \frac {\mathrm {P E}}{\mathrm {g}} \tag {8.50}
$$

Analysts and investors usually compare the PE Ratio with the expected growth rate for the earnings per share to identify underestimated or overestimated stocks (Damodaran 2012):

- companies with PE less than their expected growth rate are considered as undervalued;
- companies with PE more than their expected growth rate are considered as overvalued.

Therefore, the greater the PEG, the higher the overvaluation of stock; on the other hand, the lower the PEG, the higher the undervaluation of stock.

It is worth noting that the growth rate of earnings per share is used rather than operating income because the consistency requires coherence between numerator and denominator and the first is PE. Therefore, the PEG is an equity multiple.

The PE Ratio has different versions as shown previously. The correct configuration to use is function of the growth rate is calculated. Therefore, the following are used:

- current earnings, the current PE Ratio should be used;
- trailing earnings, the trailing PE Ratio should be used.

The forward PE Ratio should not be used because the growth may be considered twice.

As in the PE Ratio, also in this case it is possible to define a relationship between the PEG Ratio and company's fundamentals. Specifically, this relationship can be defined by using the Discounted Dividend Model (DDM) in two scenarios (Damodaran 2012):

- steady-state growth over time scenario;
- two-stage growth scenario: extraordinary growth in the first period and steady-state growth in the second period.

In the steady-state growth over time scenario, the Equity Value can be estimated on the basis of C-DDM as follows:

$$
P _ {0} = \frac {D P S}{K _ {E} - g _ {n}}
$$

# 8.4 Multiples on Equity Value

where  $DPS$  are the Dividends per Share that company can paid in perpetuity in steady-state scenario and  $g_{n}$  is the steady-state growth rate.

On the basis of Eq. (8.45) and by dividing both terms by the steady-state growth rate  $(g_{n})$ , we have:

$$
P E = \frac {P R (1 + g _ {n})}{K _ {E} - g _ {n}} \rightarrow \frac {P E}{g _ {n}} = \frac {P R (1 + g _ {n})}{g _ {n} (K _ {E} - g _ {n})}
$$

The first member is the PEG multiple:

$$
P E G = \frac {P R \left(1 + g _ {n}\right)}{g _ {n} \left(K _ {E} - g _ {n}\right)} \tag {8.51}
$$

By estimating the Payout Ratio  $(PR)$  on the basis of Eq. (8.46), the Eq. (8.51) can be rewritten as follows:

$$
P E G = \frac {\left(1 - \frac {g _ {n}}{R O E}\right) \left(1 + g _ {n}\right)}{g _ {n} \left(K _ {E} - g _ {n}\right)} \tag {8.52}
$$

Note that the same result is obtained directly by dividing the first and second member of the Eq. (8.47) by the steady-state growth rate  $(g_{n})$  as follows:

$$
P E = \frac {\left(1 - \frac {g _ {n}}{R O E}\right) (1 + g _ {n})}{K _ {E} - g _ {n}} \rightarrow \frac {P E}{g _ {n}} = P E G = \frac {\left(1 - \frac {g _ {n}}{R O E}\right) (1 + g _ {n})}{g _ {n} \left(K _ {E} - g _ {n}\right)}
$$

The Eq. (8.52) shows the relationship between PEG Ratio and company's fundamentals in a steady-state growth scenario over time.

In two stage growth scenario (extraordinary growth in the first period and steady-state growth in the second period) the Equity Value can be estimated on the basis of 2S-DDM as follows:

$$
P _ {0} = \frac {E P S \cdot \left(1 + g _ {e}\right) \cdot P R \left[ 1 - \frac {\left(1 + g _ {e}\right) ^ {n}}{\left(1 + K _ {E , e g}\right) ^ {n}} \right]}{K _ {E , e g} - g _ {e}} + \frac {E P S \cdot P R \cdot \left(1 + g _ {e}\right) ^ {n} \left(1 + g _ {n}\right)}{\left(K _ {E , s g} - g _ {n}\right) \left(1 + K _ {E , s g}\right) ^ {n}}
$$

where  $g_{e}$  is the growth rate in the extraordinary growth period (first period) and  $g_{n}$  is the growth rate in the steady-state period (second period).

By dividing both terms of Eq. (8.48) by the steady-state growth rate  $(g_{n})$ , we have:

$$
P E = \frac {P R \cdot \left(1 + g _ {e}\right) \left[ 1 - \frac {\left(1 + g _ {e}\right) ^ {n}}{\left(1 + K _ {E , e g}\right) ^ {n}} \right]}{\left(K _ {E , e g} - g _ {e}\right)} + \frac {P R \cdot \left(1 + g _ {e}\right) ^ {n} \left(1 + g _ {n}\right)}{\left(K _ {E , s g} - g _ {n}\right) \left(1 + K _ {E , s g}\right) ^ {n}}
$$

$$
\frac {P E}{g _ {n}} = \frac {P R \cdot \left(1 + g _ {e}\right) \left[ 1 - \frac {\left(1 + g _ {e}\right) ^ {n}}{\left(1 + K _ {E , e g}\right) ^ {n}} \right]}{g _ {n} \left(K _ {E , e g} - g _ {e}\right)} + \frac {P R \cdot \left(1 + g _ {e}\right) ^ {n} \left(1 + g _ {n}\right)}{g _ {n} \left(K _ {E , s g} - g _ {n}\right) \left(1 + K _ {E , s g}\right) ^ {n}}
$$

The first member is the PEG multiple:

$$
P E G = \frac {P R \cdot \left(1 + g _ {e}\right) \left[ 1 - \frac {\left(1 + g _ {e}\right) ^ {n}}{\left(1 + K _ {E , e g}\right) ^ {n}} \right]}{g _ {n} \left(K _ {E , e g} - g _ {e}\right)} + \frac {P R \cdot \left(1 + g _ {e}\right) ^ {n} \left(1 + g _ {n}\right)}{g _ {n} \left(K _ {E , s g} - g _ {n}\right) \left(1 + K _ {E , s g}\right) ^ {n}} \tag {8.53}
$$

By estimating the Payout Ratio  $(PR)$  on the basis of Eq. (8.46), the Eq. (8.53) can be rewritten as follows:

$$
P E G = \frac {\left(1 - \frac {g _ {n}}{R O E}\right) \left(1 + g _ {e}\right) \left[ 1 - \frac {\left(1 + g _ {e}\right) ^ {n}}{\left(1 + K _ {E , e g}\right) ^ {n}} \right]}{g _ {n} \left(K _ {E , e g} - g _ {e}\right)} + \frac {\left(1 - \frac {g _ {n}}{R O E}\right) \left(1 + g _ {e}\right) ^ {n} \left(1 + g _ {n}\right)}{g _ {n} \left(K _ {E , s g} - g _ {n}\right) \left(1 + K _ {E , s g}\right) ^ {n}} \tag {8.54}
$$

Note that the same result is obtained directly by dividing the first and second member of the Eq. (8.49) by the steady-state growth rate  $(g_{n})$  as follows:

$$
\frac {P E}{g _ {n}} = P E G = \frac {\left(1 - \frac {g _ {n}}{R O E}\right) (1 + g _ {e}) \left[ 1 - \frac {(1 + g _ {e}) ^ {n}}{(1 + K _ {E , e g}) ^ {n}} \right]}{g _ {n} (K _ {E , e g} - g _ {e})} + \frac {\left(1 - \frac {g _ {n}}{R O E}\right) (1 + g _ {e}) ^ {n} (1 + g _ {n})}{g _ {n} (K _ {E , s g} - g _ {n}) (1 + K _ {E , s g}) ^ {n}}
$$

The Eq. (8.54) shows the relationship between PEG Ratio and company's fundamentals in a condition of two stage growth: extraordinary growth (first period) and steady-state growth (second period).

# Price-to-Book Value Ratio (pbv)

The Price-Book Value Ratio (PBV) is equal to the ratio between the Equity Market Value defined on the basis of the Share Market Price and the Equity Book Value.

Formally, the Price-Book Value (PBV) is equal to the Market Price per Share (MPS) divided by the Equity Book Value per Share (EBVS) as follows:

$$
P B V = \frac {\mathrm {M P S}}{\mathrm {E B V S}} \tag {8.55}
$$

While the Equity Market Value, as measured by the Market Price per Share (MPS), is function of the investors' expectation about the company's ability to generate cash-flows on earnings per share in the future, the Equity Book Value is

equal to the difference between the book value of assets and liabilities defined on the basis of accounting principles.

There are three main advantages of the multiple (Damodaran 2012):

- first, the book value is simple to calculate and it is generally stable variable; therefore, it is easy to compare with the market price of the company;
- second, by assuming consistent accounting standards across companies, the multiple allows for easier comparison of companies and estimation of whether or not the company is undervalued or overvalued. Specifically, companies with a market price lower than equity book value are considered undervalued, while those with market price higher than equity book value are considered overvalued;
- third, the probability that companies have a negative equity book value is lower than if they have negative earnings. Therefore, it is more likely that it is impossible to calculate the PE ratio (due to the negativity of the earnings) than the PBV (due to the negativity of the equity book value).

Nevertheless, it is necessary to keep in mind that the book value is a function of the accounting principles. Therefore, all variables used are affected by accounting standards principles and policies. Obviously, if the equity book value is negative due to the string of negative earnings, the multiple is negative and therefore meaningless.

Note there may be a problem regarding the portion of the equity that is attributable to preferred stock, or in case there are multiple classes of shares outstanding. To resolve the majority of these problems directly, the multiple is calculated by considering Total Equity Market Value (EMV) and, consequently, the Total Equity Book Value (EBV) as follows:

$$
P B V = \frac {\mathrm {E M V}}{\mathrm {E B V}} \tag {8.56}
$$

As in PE and PEG Ratios, also in this case it is possible to define a relationship between PBV Ratio and company's fundamentals. Specifically, this relationship can be defined by using the Discounted Dividend Model (DDM) in two scenarios (Damodaran 2012):

- steady-state growth over time scenario;
- two-stage growth scenario: extraordinary growth in the first period and steady-state growth in the second period.

In the steady-state growth over time scenario, the Equity Value can be estimated on the basis of C-DDM as follows:

$$
P _ {0} = \frac {D P S}{K _ {E} - g _ {n}}
$$

where  $DPS$  are the Dividends per Share that the company can pay in perpetuity in steady-state scenario and  $g_{n}$  is the steady-state growth rate.

Remember that the Dividends per Share (DPS) can be expressed on the basis of Earning per Share (EPS) and Payout Ratio (PR) as follows:

$$
D P S = E P S \cdot P R
$$

by substituting we have:

$$
P _ {0} = \frac {E P S \cdot P R}{K _ {E} - g _ {n}}
$$

Remembering that ROE in $t$ can be expressed as the ratio between the Earnings per Share (EPS) and Equity Book Value (EBV), it is possible to define the Earning per Share (EPS) in term of ROE as follows:

$$
R O E = \frac {E P S}{E B V} \rightarrow E P S = R O E \cdot E B V
$$

substituting we have:

$$
P _ {0} = \frac {R O E \cdot E B V \cdot P R}{K _ {E} - g _ {n}}
$$

By dividing both terms by Equity Book Value (EBV), we have:

$$
\frac {P _ {0}}{E B V} = \frac {R O E \cdot E B V \cdot P R}{E B V (K _ {E} - g _ {n})} = \frac {R O E \cdot P R}{(K _ {E} - g _ {n})}
$$

The first member is the PBV multiple:

$$
P B V = \frac {R O E \cdot P R}{\left(K _ {E} - g _ {n}\right)} \tag {8.57}
$$

By estimating the Payout Ratio  $(PR)$  on the basis of Eq. (8.46), the Eq. (8.57) can be rewritten as follows:

$$
P B V = \frac {R O E \cdot \left(1 - \frac {g _ {n}}{R O E}\right)}{\left(K _ {E} - g _ {n}\right)}
$$

and then:

$$
P B V = \frac {R O E - g _ {n}}{K _ {E} - g _ {n}} \tag {8.58}
$$

The Eq. (8.58) shows the relationship between PEG Ratio and company's fundamentals in steady-state growth scenario over time.

In the two stage growth scenario (extraordinary growth in the first period and steady-state growth in the second period) the Equity Value can be estimated on the basis of 2S-DDM as follows:

$$
P _ {0} = \frac {E P S \cdot \left(1 + g _ {e}\right) \cdot P R \left[ 1 - \frac {\left(1 + g _ {e}\right) ^ {n}}{\left(1 + K _ {E , e g}\right) ^ {n}} \right]}{K _ {E , e g} - g _ {e}} + \frac {E P S \cdot P R \cdot \left(1 + g _ {e}\right) ^ {n} \left(1 + g _ {n}\right)}{\left(K _ {E , s g} - g _ {n}\right) \left(1 + K _ {E , s g}\right) ^ {n}}
$$

where  $g_{e}$  is the growth rate in the extraordinary growth period (first period) and  $g_{n}$  is the growth rate in the steady-state period (second period).

Remembering that:

$$
E P S = R O E \cdot E B V
$$

and substituting, we have:

$$
P _ {0} = \frac {R O E \cdot E B V \cdot P R \cdot \left(1 + g _ {e}\right) \cdot \left[ 1 - \frac {\left(1 + g _ {e}\right) ^ {n}}{\left(1 + K _ {E , e g}\right) ^ {n}} \right]}{K _ {E , e g} - g _ {e}} + \frac {R O E \cdot E B V \cdot P R \cdot \left(1 + g _ {e}\right) ^ {n} \left(1 + g _ {n}\right)}{\left(K _ {E , s g} - g _ {n}\right) \left(1 + K _ {E , s g}\right) ^ {n}}
$$

and dividing both terms by current Equity Book Value (EBV), the equation can be rewritten as follows:

$$
\frac {P _ {0}}{E B V} = \frac {R O E \cdot E B V \cdot P R \cdot \left(1 + g _ {e}\right) \cdot \left[ 1 - \frac {\left(1 + g _ {e}\right) ^ {n}}{\left(1 + K _ {E , e g}\right) ^ {n}} \right]}{E B V \left(K _ {E , e g} - g _ {e}\right)} + \frac {R O E \cdot E B V \cdot P R \cdot \left(1 + g _ {e}\right) ^ {n} \left(1 + g _ {n}\right)}{E B V \left(K _ {E , s g} - g _ {n}\right) \left(1 + K _ {E , s g}\right) ^ {n}}
$$

$$
\frac {P _ {0}}{E B V} = \frac {R O E \cdot P R \cdot (1 + g _ {e}) \cdot \left[ 1 - \frac {(1 + g _ {e}) ^ {n}}{(1 + K _ {E , e g}) ^ {n}} \right]}{\left(K _ {E , e g} - g _ {e}\right)} + \frac {R O E \cdot P R \cdot (1 + g _ {e}) ^ {n} (1 + g _ {n})}{\left(K _ {E , s g} - g _ {n}\right) \left(1 + K _ {E , s g}\right) ^ {n}}
$$

$$
\frac {P _ {0}}{E B V} = R O E \left\{\frac {P R \cdot (1 + g _ {e}) \cdot \left[ 1 - \frac {(1 + g _ {e}) ^ {n}}{(1 + K _ {E , e g}) ^ {n}} \right]}{\left(K _ {E , e g} - g _ {e}\right)} + \frac {P R \cdot (1 + g _ {e}) ^ {n} (1 + g _ {n})}{\left(K _ {E , s g} - g _ {n}\right) \left(1 + K _ {E , s g}\right) ^ {n}} \right\}
$$

The first member is the PBV multiple, and therefore:

$$
P B V = R O E \left\{\frac {P R \cdot \left(1 + g _ {e}\right) \cdot \left[ 1 - \frac {\left(1 + g _ {e}\right) ^ {n}}{\left(1 + K _ {E , e g}\right) ^ {n}} \right]}{\left(K _ {E , e g} - g _ {e}\right)} + \frac {P R \cdot \left(1 + g _ {e}\right) ^ {n} \left(1 + g _ {n}\right)}{\left(K _ {E , s g} - g _ {n}\right) \left(1 + K _ {E , s g}\right) ^ {n}} \right\} \tag {8.59}
$$

The Eq. (8.59) shows the relationship between the PBV Ratio and company's fundamentals in condition of two stage growth: extraordinary growth (first period) and steady-state growth (second period).

# Price-to-Sales Ratio (ps)

The Price-to-Sales Ratio (PS) is equal to the ratio between the Equity Market Value (EMV) and the Revenues (Rev) of the company as follows:

$$
P S = \frac {E M V}{R e v} \tag {8.60}
$$

The relationship between the multiple and the company's fundamental by deriving the multiple from the DDM can be defined.

As in PE, PEG and PBV Ratios, also in this case it is possible to define a relationship between PS Ratio and company's fundamentals. Specifically, this relationship can be defined by using the Discounted Dividend Model (DDM) in two scenarios (Damodaran 2012):

- steady-state growth over time scenario;
- two-stage growth scenario: extraordinary growth in the first period and steady-state grow in the second period.

In the steady-state growth over time scenario, the Equity Value can be estimated on the basis of C-DDM as follows:

$$
P _ {0} = \frac {D P S}{K _ {E} - g _ {n}}
$$

The Dividend per Share (DPS) can be explicated according to the Earnings per Share (EPS), steady-state growth rate  $(g_{n})$  and Payout Ratio  $(PR)$  as follows:

$$
D P S = E P S \cdot P R
$$

Substituting, we have:

$$
P _ {0} = \frac {E P S (1 + g _ {n}) P R}{K _ {E} - g _ {n}}
$$

Note that the Net Profit Margin of the company can be defined as the ratio between the Earnings and Sales. Therefore, the Net Profit Margin per Share (NPMS) is equal to Earnings per Share (EPS) and Sales $(S)$. On the basis of this relationship, it is possible to define Earnings per Share as follows:

$$
N P M S = \frac {E P S}{S} \rightarrow E P S = N P M S \cdot S
$$

Substituting  $EPS$ , we have:

$$
P _ {0} = \frac {N P M S \cdot S \cdot (1 + g _ {n}) \cdot P R}{K _ {E} - g _ {n}}
$$

Dividing both terms by Sales  $(S)$ , we have:

$$
\frac {P _ {0}}{S} = \frac {N P M S \cdot S \cdot \left(1 + g _ {n}\right) \cdot P R}{S \left(K _ {E} - g _ {n}\right)} = \frac {N P M S \cdot \left(1 + g _ {n}\right) \cdot P R}{\left(K _ {E} - g _ {n}\right)}
$$

The first member is the PS Ratio, as follows:

$$
P S = \frac {N P M S \cdot \left(1 + g _ {n}\right) \cdot P R}{\left(K _ {E} - g _ {n}\right)} \tag {8.61}
$$

The Eq. (8.61) shows the relationship between PEG Ratio and company's fundamentals in steady-state growth scenario over time.

In the two stage growth scenario (extraordinary growth in the first period and steady-state growth in the second period) the Equity Value can be estimated on the basis of 2S-DDM as follows:

$$
P _ {0} = \frac {E P S \cdot (1 + g _ {e}) \cdot P R \left[ 1 - \frac {(1 + g _ {e}) ^ {n}}{(1 + K _ {E , e g}) ^ {n}} \right]}{K _ {E , e g} - g _ {e}} + \frac {E P S \cdot P R \cdot (1 + g _ {e}) ^ {n} (1 + g _ {n})}{(K _ {E , s g} - g _ {n}) (1 + K _ {E , s g}) ^ {n}}
$$

where  $g_{e}$  is the growth rate in the extraordinary growth period (first period) and  $g_{n}$  is the growth rate in the steady-state period (second period).

By considering that:

$$
E P S = N P M S \cdot S
$$

and substituting, we have:

$$
P _ {0} = \frac {N P M S \cdot S \cdot \left(1 + g _ {e}\right) \cdot P R \left[ 1 - \frac {\left(1 + g _ {e}\right) ^ {n}}{\left(1 + K _ {E , e g}\right) ^ {n}} \right]}{K _ {E , e g} - g _ {e}} + \frac {N P M S \cdot S \cdot P R \cdot \left(1 + g _ {e}\right) ^ {n} \left(1 + g _ {n}\right)}{\left(K _ {E , s g} - g _ {n}\right) \left(1 + K _ {E , s g}\right) ^ {n}}
$$

Dividing both terms by Sales  $(S)$ , we have:

$$
\begin{array}{l} \frac {P _ {0}}{S} = \frac {N P M S \cdot S \cdot \left(1 + g _ {e}\right) \cdot P R \left[ 1 - \frac {\left(1 + g _ {e}\right) ^ {n}}{\left(1 + K _ {E , e g}\right) ^ {n}} \right]}{S _ {(0)} \left(K _ {E , e g} - g _ {e}\right)} + \frac {N P M S \cdot S \cdot P R \cdot \left(1 + g _ {e}\right) ^ {n} \left(1 + g _ {n}\right)}{S _ {(0)} \left(K _ {E , s g} - g _ {n}\right) \left(1 + K _ {E , s g}\right) ^ {n}} \\ \frac {P _ {0}}{S} = \frac {N P M S \cdot \left(1 + g _ {e}\right) \cdot P R \left[ 1 - \frac {\left(1 + g _ {e}\right) ^ {n}}{\left(1 + K _ {E , e g}\right) ^ {n}} \right]}{\left(K _ {E , e g} - g _ {e}\right)} + \frac {N P M S \cdot P R \cdot \left(1 + g _ {e}\right) ^ {n} \left(1 + g _ {n}\right)}{\left(K _ {E , s g} - g _ {n}\right) \left(1 + K _ {E , s g}\right) ^ {n}} \\ \frac {P _ {0}}{S} = N P M S \left\{\frac {\left(1 + g _ {e}\right) \cdot P R \left[ 1 - \frac {\left(1 + g _ {e}\right) ^ {n}}{\left(1 + K _ {E , e g}\right) ^ {n}} \right]}{\left(K _ {E , e g} - g _ {e}\right)} + \frac {P R \cdot \left(1 + g _ {e}\right) ^ {n} \left(1 + g _ {n}\right)}{\left(K _ {E , s g} - g _ {n}\right) \left(1 + K _ {E , s g}\right) ^ {n}} \right\} \\ \end{array}
$$

The first member is the PS ratio, and then:

$$
P S = N P M S \left\{\frac {\left(1 + g _ {e}\right) \cdot P R \left[ 1 - \frac {\left(1 + g _ {e}\right) ^ {n}}{\left(1 + K _ {E , e g}\right) ^ {n}} \right]}{\left(K _ {E , e g} - g _ {e}\right)} + \frac {P R \cdot \left(1 + g _ {e}\right) ^ {n} \left(1 + g _ {n}\right)}{\left(K _ {E , s g} - g _ {n}\right) \left(1 + K _ {E , s g}\right) ^ {n}} \right\} \tag {8.62}
$$

The Eq. (8.62) shows the relationship between PS Ratio and company's fundamentals in a condition of two stage growth: extraordinary growth (first period) and steady-state growth (second period).

# References

Altaman E (1969) Bankrupt company's equity securities as an investment alternative. Financ Anal J 25(4):129-133
Beaver W, Morse D (1978) What determines price-earnings ratios? Financ Anal J 34(4):65-76
Benninga S (2014) Financial modeling, 4th edn. MIT Press
Beidelman C (1971) Pitfalls of the price-earnings ratio. Financ Anal J 27(4):86-91
Berk J, DeMarzo P (2008) Corporate finance. Pearson Education, Inc
Bing R (1971) Survey of practitioners' stock evaluation methods. Financ Anal J 27(3):55-69
Blume MKJ, Kraft A (1977) Determinants of common stock prices: a time series analysis. J Finance XXXII(2):417-425
Bower D, Bower SR (1970) Test of a stock valuation model. J Financ XXV(2):483-492
Brealey RA, Myers SC, Allen F (2016) Principles of corporate finance, 12th edn. McGraw-Hill Chen N (1998) Risk and return of value stock. J Bus 71(4):501-535
Copeland T, Weston F, Shastri K (2004) Financial theory and corporate policy, 4th edn. Addison-Wesley, Reading, MA
Campbell J, Shiller R (1989) The dividend price ratio and expectation of future dividends and discount factors. Rev Financ Stud 1:195-228
Corelli A (2016) Analytical corporate finance. Springer

Damodaran A (2012) Investment valuation: tools and techniques for a determining the value of any assets, 3rd edn. Wiley
Damodaran A (2015) Applied corporate finance, 4th edn. Wiley
Elton EJ, Gruber MJ (1976) Valuation and the asset selection under alternative investment opportunities. J Finance XXXI(2):525-539
Elton EJ, Gruber MJ, Brown SJ, Goetzmann WN (2013) Modern portfolio theory and investment analysis, 9th edn. Wiley
Foster E (1970) Price-earnings ratio and corporate growth: a revision. Financ Anal J 26 (4):115-118
Fuller RJ, Farrell JL (1987) Modern investments and security analysis. McGraw-Hill, Inc
Fuller RJ, Hsia CC (1984) A simplified common stock valuation model. Financ Anal J:49-56 (September-October)
Gordon M (1962) The investment, financing, and valuation of the corporation. Richard D. Irwin, Homewood, IL
Graham B, Dodd D, Cottle S (1962) Security analysis principles and techniques, 4th edn. McGraw-Hill, New York
Hawkins D (1977) Toward an old theory of equity valuation. Financ Anal J 33(6):48-53
Hillier D, Ross S, Westerfield R, Jaffe J, Jordan B (2016) Corporate finance, 3rd edn. McGraw-Hill
Joy M, Jones C (1970) Another look at the value of P/E ratios. Financ Anal J 26(4):61-64
Koller T, Goedhart M, Wessels D (2015) Valuation, 6th edn. Wiley
Malkiel B (1963) Equity yields, growth, and the structure of share prices. Am Econ Rev 53:1004-1031
Malkiel B, Cragg J (1970) Expectations and the structure of share price. Am Econ Rev LX (4):601-617
Modigliani F, Miller MH (1958) The cost of capital, corporate finance and the theory of investment. Am Econ Rev 48:261-297
Molodovsky N, May C, Chottinger S (1965) Common stock valuation. Financ Anal J 21:104-123
Vernimmen P, Query P, Dallocchio M, Le Fur Y, Salvi A (2014) Corporate finance: theory and practice. Wiley
Whitbeck V, Kisor M (1963) A new tool in investment decision making. Financ Anal J:55-62 (May-June)
Williams JB (1938) The theory of investment value. Harvard University Press, Cambridge, MA

