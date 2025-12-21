---
title: "Chapter 11 - Conclusions - Corporate Valuation Framework"
parent_directory: "VII. Corporate Finance/Valuation/Analytical Corporate Valuation/Part III - Company Valuation"
formatted: 2025-12-20 04:53:27 PM
formatter_model: claude-sonnet-4-20250514
cli-tool: claude-code
primary_tags:
  - corporate valuation
  - value creation
  - cost of capital
  - discounted cash flows
  - company strategic formula
secondary_tags:
  - capital structure
  - portfolio theory
  - capm
  - return on capital
cssclasses: academia
---


# Chapter 11 - Conclusions

The book deals with the economics of value creation of companies and their measuring processes. In an ideal world, the investors know everything about a company and its managers. In this context it is reasonable to expect that the current share price is perfectly aligned with the intrinsic value of the company as defined on the basis of its fundamentals. Consequently, maximizing the current share price is equivalent to maximizing the value of the company over time.

Unfortunately, in the real-world investors only know something about the company and its managers. Their knowledge about the company is based on public information. Consequently, investors don't know what is really going on within a company, what decisions managers are making and their real effects on the economic and financial performance over time. It does not mean that the stock market is inefficient. On the contrary, markets do a great and fundamental job with public information. It only means that the market cannot price information that it does not have and then in the short-term a misalignment between current share price of the company and its intrinsic value based on its fundamentals is possible. However, in the long-term they tend to align.

Several approaches can be followed to deal with the economics of value creation of the company and its measuring process. This book is based on a shareholder-oriented capitalism. Consequently, the company can thrive only if it is able to create value for the shareholders over time.

In the period of the Great Recession as derived by the financial crisis of 2007-2008, this approach could be unpopular. Indeed, with common sense and in a part of academics the recent financial crisis is usually charged to the shareholder-oriented capitalism. Many parts requested and pushed for more regulations and for a deeper change in company governance and its focus by shifting from the shareholders' value to a set of stakeholders' value. This push is strong in Europe for economic and business culture.

In my opinion, the financial crisis cannot be attributed to a shareholder-oriented capitalism but to its distortion: the problem has been the passage from a long-term perspective to a short-term perspective. Indeed, one of the most fundamental principles in the shareholders' value creation perspective states that the company's capability to create shareholder value in the long period is not the same as maximization of its short-term profits. Often the choice to maximize the shareholders' value in the long-term perspective is irreconcilable with the choice of maximizing the shareholders' value in the short-term period. Consequently, if the value creation in the long-term is confused with the profit in the short-term, it generates a great problem capable of damaging the shareholders' interests as well as the stakeholders' interests. Therefore, the main problem is not the shareholders' value but the short-term perspective of some managers. The best managers do not make decisions able to maximize the profit in the short-term by destroying the company's capability to create value in the long-term. Indeed, the main aim in the shareholder-oriented capitalism is to maximize a company value for a current, as well as, future shareholder. Also, the best managers know that the company's capability to create value over time in the long-term perspective implies the development of the company's fundamentals rather than accounting and financial make-up to increase the short-term profits by pushing-up the current share price. Finally, the best managers know well that the maximization of the shareholders' value implies the maximization of the stakeholders' value as well. Indeed, we should consider the three main categories of stakeholders: employees, customers, suppliers.

With regards to the employees, a company that attempts to increase the profits by reducing the employees' benefits, will have extreme difficulty in engaging and maintaining high quality employees. The lower quality of employees means products of a lower quality and therefore it results in lower customer satisfaction with lower revenues and profit for the shareholders. Today, one of the most important company's resource for its success in business is human capital. In the context characterized by strongly skilled employees, the capacity of the company to attract and to retain the best employees is often the key to success in the long-term. Therefore, in the shareholder's perspective the company's ability to attract and to retain quality employees on the basis of their satisfaction means high productivity that, in turn, results in higher value creation in the long-term. Only on the short term can the company produce profits against its employees. But it is a myopic strategy that leads to value destruction in the long-term and then to the company's failure.

With regards to customers, the company's ability to compete in the business is strictly functional of the alignment between products characteristics and customers' expectations. If the company wants to sell the current products as well as the future product generations of product, they must be in line with the customers' expectations in terms of its quality and price. Customers can be fooled once at the most. This strategy can, at the most, increase the revenues but only in the short-term. Anyway, it deeply damages the reputation of the brand with negative effects on the company's capability to create value over time. Consequently, the company's capability to create value over time for shareholders implies the value creation for customers also.

Finally, with regards to the suppliers, the main objective of the company is to create solid relationships with them in order to guarantee a high quality product. Indeed, only in this case the supplies can be in line with product characteristics that, in turn, must be in line with customers' expectations. Whenever the company obtains profit by fooling the suppliers or by imposing harmful conditions on them, it damages the relationships with suppliers with negative and relevant effects on the quality of the product. It reduces the quality for customers with negative effects on the company's capability to create value for shareholders. Also in this case, the bad strategy to generate profits for the company by exploiting suppliers can be, in the best case, effective only in the short-term. In the long-period it destroys value for company and shareholders.

Based on these considerations, the shareholders' value creation is function of the value creation for employees, customers and also suppliers. The company's ability to create value for the current and future shareholders in the long-term implies and requires the same company's capability to create value for employees, customers and suppliers.

It is worth noting that the opposite is not true. Indeed, the maximization of employees' value (by high wages and benefits do not align with performance), customers' value (by an unjustified product price lower than its production costs), suppliers' value (by costs much more than their real value), reduce the company's ability to create profits over time and then it destroys shareholders' value.

The company's ability to create value for the shareholders over time is strictly related to the deep understanding of the business model of the company as well as the investors' behaviour in the capital markets. The company valuation can be considered one of the most relevant fields in which the classical paradigms of the company meets the paradigms of the capital markets. Indeed, the right company's valuation requires high competence in the fields of strategy, financial management, corporate finance and capital markets.

The basic equation of the value is based on a principle dating back to Alfred Marshall in 1890: company creates value if and only if, the return on capital invested exceeds its cost of capital.

The amount of value is equal to the difference between cash in-flows deriving from the investment and the cost of capital invested able to reflect the time value of money and the risk premium. Consequently, to create value over time, the company must invest the capital raised at a rate of return higher than its capital cost. Therefore, there are two main variables of value creation:

- the return on capital invested;
- the cost of capital.

```d2
# Value Creation Framework
direction: right

shareholder.value["Shareholder Value Creation"]
shareholder.value --> stakeholders["Stakeholder Value"]
stakeholders --> employees["Employees"]
stakeholders --> customers["Customers"] 
stakeholders --> suppliers["Suppliers"]

shareholder.value --> business.model["Business Model"]
business.model --> cfsf["Company Strategic Formula"]
cfsf --> isf["Internal Strategic Front"]
cfsf --> esf["External Strategic Front"]

shareholder.value --> fundamentals["Fundamentals Analysis"]
fundamentals --> return.capital["Return on Capital"]
fundamentals --> cost.capital["Cost of Capital"]

return.capital --> value.equation["Value Creation: Return > Cost"]
cost.capital --> value.equation

classDef primary fill:#e1f5fe,stroke:#01579b,stroke-width:2px
classDef secondary fill:#f3e5f5,stroke:#4a148c,stroke-width:2px

class shareholder.value,value.equation primary
class stakeholders,business.model,fundamentals secondary
```

In this book the company's ability to invest the capital raised by obtaining a high return, is investigated by the analysis of the company's fundamentals with regards to its business model and its economic and financial performances over time.

Otherwise, the company's cost of capital invested in its business is investigated through an analysis of the risk-return profile of the company in the capital markets, on the basis of investors' models about risk-returns.

Therefore, the models of company's fundamental analysis are integrated with the models used by investors in the capital markets to diversify risks and maximize their expected returns.

The integration between the company's fundamental analysis and the investors' risk models and returns in the capital markets is essential for the company's success over time. It is not possible to correctly understand the company's ability to create value over time and to measure this value without the simultaneous deep knowledge of these models and their integration.

## The Return of Capital Invested

The return on capital invested in the business is function of the company's business model and the quantitative effects on its economic and financial dynamics. Specifically, the company's ability to create profit over time requires an analysis based on two main parts:

- the qualitative analysis of the business model;
- the quantitative analysis of the company's performance which regards to the effects of the business model choices on the economic and financial dynamics over time.

The qualitative analysis of the company's business model is the first step to further understanding the company's ability to create value over time. The qualitative analysis of the company's business model proposed in this context is called "Company Strategic Formula" (CSF).

The CSF defines the strategic profile of the company. Specifically, the CSF defines the way in which the company is organised internally and how it manages the relationships with external players for self-development over time. The CSF can be considered as the ideal conceptual place in which, on the basis of a systemic and dynamic paradigm: (i) the ideas are developed; (ii) the decisions are made; (iii) the operations are defined and planned. On the basis of a systemic and dynamic perspective, the CSF allows for the transformation of the "system of ideas" into the "systems of operations" by means of the "systems of decisions" in order to achieve and maintain economic-financial equilibrium over time.

The CSF defines the strategic profile of the company, by considering two different "strategic fronts":

- internal strategic front: it refers to the internal structure of the company;
- external strategic front: it refers to the structural relationships between the company and the players of its environment classified into two main groups of business players and financial players.

The Internal Strategic Front (ISF) refers to the internal structure of the company. It is defined from all elements, tangible and intangible, needed for the production of goods and services. The internal structure defines the company's specific characteristics by generating its uniqueness. It gives form and substance to the CSF by establishing the uniqueness of the thinking and operation of the company.

Specifically, the internal structure of the company is defined on the basis of three main elements:

- Corporate governance: it refers to the rules and the procedures by which the decision-making processes in the governmental area and how the managerial and operating activities of the company are defined.
- Organizational architecture: it refers to how the company's resources are combined and coordinated between them for company operations. There are two main levels involved: (i) the organizational structure of the company, with regards to both hard and soft elements that give form, substance and operation to all parts of the organization; (ii) the operations, with regards to the processes and procedures that cross the company vertically and horizontally;
- Strategic resources: it refers to the company's tangible and intangible assets and to the human skills necessary for their coordination. The company's strategic resources represent the most important way of competing in the business. Indeed, they provide the company with uniqueness and are able to protect its competitive advantage from imitation processes by generating "isolation mechanisms".

The External Strategic Front (ESF) refers to the structural relationships between the company and external players. Company competitiveness is due to its ability to create value for all of its players simultaneously.

The external players of the company can be classified into two main groups: (i) business players and (ii) financial players. Based on the differences in their nature, interests and behaviour, the external strategic front can be divided in two main parts:

- Strategic Business Area (SBA): it refers to the real market in which the company carries out the business. The company can operate in more than one business. In any case, any strategic business area can be defined on the basis of two main elements: (i) competitive players, that refers to the players with which the company defines relationships. Specifically, they are customers, suppliers, competitors; (ii) product system, that refers to the product offered by the company with regards to its material and immaterial elements, service components and economic and non-economic terms. In each SBA the company competes by means of a defined business strategy in order to satisfy customer requirements and expectations better than competitors. It allows the company to obtain a competitive advantage in the business and greater profitability than competitors.
- Capital Market: it refers to the financial markets in which the company looks for the capital, in equity and debt, needed for its survival and development over time. The capital market can be defined according to two main elements: (i) financial players, that refers to the investors in equity and debt; (ii) financial company profile, that refers to the risk-return profile of the company. It is function of the company's expected cash-flows on one side and investor expectations about risk and returns. In the capital market the company competes through its financial strategy in order to acquire the capital needed, in equity and debt, at profitable conditions.

The internal and external strategic fronts are two parts of a whole. The success of the company is function of their joint quality. They are subsequently strictly connected by systemic and dynamic relationships. Therefore, the CSF must be characterized by a "consonance" between all structural elements of the internal and external strategic fronts. This consonance must be: (i) Systemic: all elements of the internal and external strategic fronts must be aligned between them; (ii) Structural: there must always be correspondence between the characteristics of each element of the strategic fronts, both internal and external, based on well-defined and structural bidirectional relationships; (iii) Dynamic: the systemic-structural relationships between elements of the internal and external strategic fronts must be dynamic over time and never static. Therefore, the CSF can be defined as "consonant" only if the relationships between all of its elements can be defined as Systemic-Structural-Dynamic.

The quantitative analysis of the company's performances requires an investigation into the economic and financial dynamics over time with regards to the past and the future. In order to simplify the comparison between the past and the future for the same company and between different companies over time, the same analytical schemes should be used. Several analytical schemes should be used. They are defined on the basis of the specific purpose of management according to the decision-making process.

In this context, the analytical schemes used are defined based on the financial approach to company assessment and they are defined in order to investigate the three main pillars:

- Operating Income and Net Income;
- Capital Invested and Capital Structure;
- Free Cash-flow from Operations and Free Cash-flow to Equity.

While the first defines the economic dynamic, the second and the third define the financial dynamics of the company.

Using the analytical schemes proposed in this context, the following should be borne in mind:

- they are defined with a view to the financial community rather than the accounting one. Therefore, they must not be confused with the analytical schemes used for balance sheet and income statement analysis and for definition of the classic accounting ratios. Moreover, terminology is not strictly based on the accounting rules;
- they are strictly connected between them. Therefore, the definition of each one is strictly related to the composition of each other;
- they are defined based on non-financial companies. Furthermore, they can also be used for financial companies after some changes in their structures;
- they are used to analyse the expected future economic and financial dynamics for an estimate of company value. Therefore, their application to past data is necessary to link the past and future in a coherent manner.

Furthermore, for greater understanding of the economic and financial dynamics of the company over time, past values should be aligned with expected future values. The alignment procedure between past and future values regarding Operating and Net Income, Capital Invested and Capital Structure, and Free Cash-flows from Operations and Free Cash-flows to Equity, as represented in the analytical schemes used, can be achieved by a procedure based on three main steps:

- the first step, is the collection and recognition of past values: the aim is to build Operating and Net Income, Capital Invested and Capital Structure, Free Cash-flow from Operations and Free Cash-flow to Equity of the company in the past. For this objective, the analyses should be based on the statement of financial position, income statement and cash flows statement on the one side and on the internal management accounts of the company on the other. The combination of these two data sources allows for an analysis of the real conditions of the company. An analysis of the management accounts is necessary for three main reasons: (i) they are built to support management in the decision-making phase; (ii) they are characterized by both monetary and non-monetary quantitative data; (iii) they are well known in their composition and dynamics thanks to the technique of the variance analysis implemented constantly;
- the second step, is the "adjustment" of past values: the aim of this step is to obtain the "normalized" value of Operating and Net Income, Capital Invested and Capital Structure, Free Cash-flow from Operations and Free Cash-flow to Equity of the company in the past. The aim of the process is to define these values in stand-alone conditions of the company. Therefore, their effects on extraordinary events in the broadest sense are not considered;
- the third step, is an estimate process of value in the future: the aim of this step is to build estimates on Operating and Net Income, Capital Invested and Capital Structure, Free Cash-flow from Operations and Free Cash-flow to Equity of the company in the future. A company business plan should be defined in order to achieve this objective. It is created by defining the Company Strategic Formula and by estimating its effects on future economic and financial dynamics.

Based on these three steps, the origin of the company, where it is and where it plans to go should be clear. Thanks to normalization of the past economic and financial dynamics over time, it is possible to define the expected future economic and financial dynamics of the company in a coherent way.

The qualitative and quantitative analyses are strictly related. The competitive advantage of the company, on the basis of its business model, must be reflected in the economic and financial values over time. Consequently, it is not possible to investigate into the company by only taking into consideration the analysis of its business model without considering the effects of the strategic choices on the economic and financial dynamics. At the same time, it is not possible to investigate into the company's ability to perform by considering the economic and financial dynamics without clearly understanding the source of the strategic choices.

In the analysis of these two parts jointly, three are the main caveats to keep in mind:

- first, there must always be full consistency between the business model of the firm and its economic and financial dynamics over time. The economic and financial analysis measures the quantitative effects of the business model on economic and financial dynamics with regards to the three dimensions of Operating and Net Income, Capital Invested and Capital Structure, and Cash-flow from Operations and Cash-flow to Equity. Therefore, while the analysis of the business model is a qualitative analysis, the analysis of economic and financial dynamics is a quantitative analysis. The two types of analysis cannot be separated and they are normally used together in the definition and assessment of the company's business planning. Consequently, an estimate of the expected economic and financial performance must be a coherent and consistent translation of the business model adopted by the company;
- second, the future is the reference time. The value of the company is function of its ability to generate value in the future. In an analysis of the past, with regards both to the business model adopted and the economic and financial dynamics that it has fulfilled, it is important to understand if the future expectations of the company, as defined in the business model to be implemented and in the estimation of the expected cash-flows, are really reasonable or unreasonable;
- third, the assumptions are the key variable of the forecast. The business model implemented and the estimation of the expected economic and financial dynamics are based on assumptions. Then, the quality of the forecast is function of the quality of the baseline assumptions.

Generally, an analysis of the assumptions requires strict coherence or a reasonable relationship based on personal elements of the company or straightforward to acquire. In this sense, the reference assumptions should be clearly defined for each variable, also in their relationship with other assumptions. Each assumption must be individually reliable and coherent with each other.

In order to investigate the company's profitability it is necessary to investigate into the product's margin profitability. Indeed, the company's profitability is a function of product's profitability. The most relevant problem concerns the right definition of the full cost of product in every moment of company life. It seems to be simple to define the product cost. Unfortunately, this simplicity is only apparent.

Indeed, the correct measurement and knowledge in each period the product cost allows us to answer some fundamental questions such as: how much did the product cost? What is the right price on the basis of production costs on the one hand, and market competition on the other? What is product margin and then its profitability?

The wrong determination of product cost is one of the main elements of the wrong prediction of product margin and, on a general level, company profitability.

## The Cost of Capital

One of the more relevant problems in the valuation process is the risk. Indeed, the company's value is function of its future capability to create cash-flows higher than the cost of capital. Consequently, risk enters into a valuation process both through the cost of capital, that can be interpreted as the price of risk, and in the uncertainty future cash-flows.

The cost of capital for the company is one of the most relevant variables in the company's valuation models. It is probably one of the most relevant topics for managers and financial economists. For decades several studies focused on the relationship between capital structure, cost of capital and company value. Despite a broad experience approach in both academic and practices, it is not surprising that the method for estimation of the cost of capital is still under intensive discussion.

An estimate of the cost of capital for the company requires the investors' behaviour and expectations in the capital market. Unfortunately, it requires the knowledge of their models about the risk valuation and the expected returns estimation. The greater the managers' skill to understand the investors' behaviour and their choices, the greater the company's probability to satisfy the investors' expectations by acquiring the capital needed for its development at favourable conditions.

Consequently, the managers must define their strategies and operational processes by considering the business and industrial logics with regards to customers, suppliers, competitors as well as the financial criterion with regards to investors in equity and debt.

The theory of the choices under uncertainty leads to the decision-making process in capital markets. The aim is to analyse the behaviour of the rational investor under uncertainty. Specifically, the aim of the theory is not to define a set of criteria for the investor's preference for general validity because all investors are different from one another. Otherwise, the aim of the theory is to define a set of criteria of the decision-making process based on a few principles characterized by generality, rationality, economic significance, consistency with individual criteria, and therefore able to have a normative function.

In this regard, the theory defines the criteria by which the rational investor chooses between the real possible options, considering the restrictions, on the basis of the expected effects that could be achieved according to their nature and that can be sorted in consideration of the relative probability.

The portfolio choices (or portfolio selection) is a problem related to wealth allocation between different investment assets.

The mean-variance approach is the most widely used in the portfolio selections. The portfolio selection is based on two variables: (i) expected value of the portfolio return; (ii) variance of the expected portfolio return measuring the portfolio risk. An efficient portfolio must satisfy the Pareto optimal condition. Therefore, the investor prefers the portfolio that is capable of maximising its expected return to an equal variance or the portfolio capable of minimizing its variance to an equal expected return.

This approach simplifies the problem of portfolio selection. There are two main advantages: first, it does not require any specifications in terms of probability distribution; second, it is simple and intuitive because it is only based on the mean and variance. However, it is also true that this approach neglects a lot of relevant information about distribution probability.

The entire portfolio selection process can be simplified on the basis of two main phases of the portfolio selection process:

- optimization phase: the aim is to define the diversified portfolio and the efficient frontier. The definition of the diversified portfolio is based on the statistical characteristics of the assets. Specifically, the expected return of the portfolio is equal to the weighted average of the expected returns of the assets, while the portfolio variance is the function of the covariance between the assets' expected returns. The assumption refers to the investors' homogeneous expectations about the statistical characteristics of the assets implying that all investors define the same efficient frontier.
- maximization phase: the aim is to choose the optimal portfolio among the efficient portfolios defined on the efficient frontier. None of the efficient portfolios on the efficient frontiers can be preferred over the others by definition. The choice of the optimal portfolio among the efficient portfolios requires a clear definition of the investor's preferences about risk.

While the optimization phase is characterized by objectivity because it is valid for the entire market and not for the single investor, the maximization phase is characterized by subjectivity because it is the function of the investor's risk preferences.

Based on the portfolio selection theory, if the investor is diversified the cost of capital is function only for the risk that investor cannot diversify away. The unique risks that any company must face are not priced in the cost of capital. Consequently, the cost of capital used as discounted rate of future cash-flows of the company is not related to the risk link to the cash-flows uncertainty. The risk associated to the future expected cash-flows must be considered in their estimation.

One of the most popular models to estimate the company's cost of capital derives from the Capital Asset Pricing Model (CAPM). The CAPM is the most well-known equilibrium model in the capital market.

The standard form of CAPM provides a clear description of capital market behaviour if its basic assumptions are respected. There are two main problems.

First, it is based on strictly basic assumptions some of which are very far from conditions of reality. This is not a problem in itself. The fact that these differences from reality are irrelevant enough, they do not have a material effect on the model's explanatory power. However, during the years some different versions of the standard CAPM have been developed by changing specific basic assumptions. The aim is to understand and to explain the standard version of the CPM in greater detail, with the investor's behaviour on the one hand, and the assets price on the other hand.

Second, the CAPM describes the conditions of equilibrium about returns on the macro level. It does not describe this equilibrium on a micro level with regards to individual investor behaviour. Indeed, most investors and institutions have a risky assets portfolio different from the market portfolio.

Therefore, while the model can explain the capital markets behaviour as an entity, it is unable to explain the investors' behaviour. Indeed, the investor's portfolio is usually different from the market portfolio.

On the basis of these considerations, the cost of capital of a specific company is estimated on the basis of Security Market Line (SML) as derived from the CAPM.

## Discounted Cash-Flows Approach

Based on these two variables, return of capital invested and the cost of capital, the company's ability to create value over time for its shareholders is the function of the effectiveness of the Company Strategic Formula to create expected cash-flows as well as investors' models to diversify the risk and maximize expected returns in order to estimate the cost of capital.

The basic equation of value states that the company creates value if and only if, the return on capital invested exceeds its cost of capital. The explicit application of the baseline equation can be realized through several methodologies. Among them the Discounted Cash-Flows model (DCF) is the best. It is commonly used in the financial community. It is relevant since all members of the international financial community use a common criteria and language. The DCF preference by investors is based on several reasons. Among these, three are the main ones:

1. the DCF is based on cash-flows. The cash-flows are preferred by investors who distrust of accounting measurements. Specifically, bondholders are interested in cash-flows from operations because the company's capability to pay interest on debt and to reimburse the debt depends on their amount. Otherwise, the shareholders are interested in cash-flows to equity because the company's capability to pay dividends depends on their amount and timing. Accounting earnings and value are not one and the same. Also, if earnings and cash flows are correlated, earnings do not tell the whole story of value creation. Then, focusing too much on earnings, and then earning growths, often it leads the company to stray from a value-creating path. Earnings do not drive value in their own right. Only cash-flows can be considered as the fundamental value drivers.

It is worth noting that cash-flows are the monetary dimensions of the company. In the capital markets only the monetary values can be moved over time by giving real relevance and fairness to the mechanism of actualization and capitalization. Indeed, the capital market has two main functions: first, it allows for the movement of money over time; second, it allows for the allocation of money between assets and future events. In this context the financial monetary costs as well as the relationship between risk and return are based only on the movement of the monetary value over time in order to consume and invest;

2. the value-creation principle states that the company creates value only if the returns on capital invested are greater than the cost of capital. The DCF allows for rewriting of the basic equation between the return on capital invested and the cost of capital in terms of expected cash-flows over time and cost of capital used as discounted rate.

Specifically, it allows to focus attention on three main variables of the company's value: company's capability to create cash-flows (free cash-flows from operations and free cash-flows to equity) over time; the cost of capital; the time in the valuation process and then the possibility to calculate the present values. Therefore, the DCF is based on the present value rule enounced by Irving Fisher, father of the modern financial theory: the value of any asset is equal to the present value of the expected cash-flows discounted at an appropriate rate of riskiness. Consequently, the asset's value, both real and financial, is the functions of the expected cash flows that will be realized by the asset in the future, their distribution in time, and their uncertainty;

3. the DCF is in line with value-conservation principle that is one of the most relevant corollary of the value-creation principle. It states that anything that does not increase cash-flows over time does not create value, regardless of whether the decisions made improved earnings or otherwise make their financial statements look stronger. Therefore, in investors' perspective anything that does not increase cash flows does not create value.

So value is conserved, or unchanged, when the company changes all also by changing accounting techniques, but it does not change the total available cash flows. Therefore, the cash flows are the key driver of the value creation and its measurement. Indeed, the value-conservation principle tells us what to look for when analysing whether the same decision or action will create value: the cash-flows impact and nothing else.

By using the DCF approach, the company value is equal to the current value of expected future cash-flows and the cost of capital is used as a discount rate. Therefore, there are three main variables:

- Time: the referenced time is the future. The value of the company is strictly related to future performance rather than past performance;
- Cash-flows: company performance is measured in cash-flows terms. Specifically, the expected future cash-flows from operations and to equity;
- Cost of capital: it is the cost of debt and the cost of equity and it defines the discount rate for expected future cash-flows.

The General Equation of value can be defined, based on these three main variables as follows:

$$
W_{F} = \sum_{t = 1}^{\infty} \frac{CF_{t}}{\left(1 + k\right)^{t}} \tag{11.1}
$$

where: $W_{F}$ is the company's value; $t$ is the period-time of valuation; $CF_{t}$ is the expected future cash-flows for each year ($t$) (note that they refer to the expected value of cash-flows but in order to simplify the formalization the operator $\operatorname{E}[CF_t]$ is not used, by the meaning is the same); $k$ is the cost of capital used as a discounted rate.

Equation (11.1) has a great theoretical relevance. It estimates the value of the company based on expected cash flows, arising from the fundamental analysis of the company and the cost of capital. Also the equation defines the relationship between company value, the expected cash-flows and the cost of capital in the time of valuation: the company's value increases together with an increase in the expected cash-flows and decreases together with an increase in the cost of capital.

The general equation has a relevant theoretical importance but it is not applicable directly. There are two main problems to be solved before:

- the valuation time-period;
- the valuation perspective.

The first problem is definition of the valuation time-period. In Eq. (11.1) time goes from $1$ ($t = 1$) to infinite ($t = n$). Therefore, Eq. (11.1) is not directly applicable. The problem can be solved by dividing the valuation time-period in two conceptual parts:

- definite time-period: it is the time period of analytic valuation. Generally, this time period is equal to 3 or 5 years on the basis of company characteristics and its market, and it defines the time period of the business plan;
- indefinite time-period: it is the time period of synthetic valuation. It goes from the end of time-period of analytic valuation to infinity by using the Terminal Value (TV). Generally, the Terminal Value measures the company's value after the analytic valuation.

By distinguishing between the analytical valuation and the synthetic valuation, Eq. (11.1) can be rewritten as follows:

$$
W_{F} = \sum_{t = 1}^{n} \frac{CF_{t}}{(1 + K)^{t}} + \frac{TV_{n}}{(1 + K)^{n}} \tag{11.2}
$$

where $TV_{n}$ indicates the Terminal Value at the end ($t = n$) of the period of the analytical valuation.

Therefore, while the first part of the equation estimates the company value in a given time period (analytic value of the company), the second part of the equation estimates the company value in an indefinite time period by using the Terminal Value (synthetic value of the company).

The second problem is the valuation perspective. Application of Eq. (11.1) requires the definition of its variables: identification of the expected cash-flows to be discounted and identification of capital cost used to discount the expected cash-flows. The solution of the problem requires the definition of the valuation perspective. They could be two perspectives:

- Equity Side perspective: the Equity Value $(W_{E})$ of the company is estimated on the basis of Free Cash-flows to Equity (FCFE) discounted at the Cost of Equity. Use of the Cost of Equity $(K_{E})$ is due to the nature of the free cash-flows to be discounted: they are the residual cash-flows after the coverage of the company's needs and the debt obligations and destined to equity remuneration;
- Asset Side perspective the asset value called Enterprise Value ($W_A$) is estimated. The Enterprise Value is estimated based on the Free Cash-flow from Operations (FCFO) discounted to the Cost of Capital. Use of the Cost of Capital Levered, including both the cost of equity and the cost of debt, is due to the nature of the free cash flows to be discounted. In fact, these cash flows derive from the operating activities of the company and they are used in remuneration of both equity-holders and debt-holders. Therefore, the Enterprise Value is the value generated by the company's operating activities and they must be distributed among the investors in equity and debt.

It is possible to summarize as follows:

$$
W_{F} = \sum_{t = 1}^{n} \frac{CF_{t}}{(1 + K)^{t}} + \frac{TV_{n}}{(1 + K)^{n}} \rightarrow \begin{array}{l}\text{Equity Side} \rightarrow W_{E} = \sum_{t = 1}^{n} \frac{FCFE_{t}}{\left(1 + K_{E}\right)^{t}} + \frac{TV_{n}}{\left(1 + K_{E}\right)^{n}}\\
\text{Asset Side} \rightarrow W_{A} = \sum_{t = 1}^{n} \frac{FCFO_{t}}{\left(1 + K_{A}\right)^{t}} + \frac{TV_{n}}{\left(1 + K_{A}\right)^{n}}\end{array}\tag{11.3}
$$

There are several models to estimate the Equity Value and the Enterprise Value. Indeed, by changing the cash-flows aggregated several configurations of the model can be obtained. In this context, following a financial approach, the Equity Value is estimated by using: (i) Dividend Discounted Model; (ii) Free Cash Flow to Equity Discounted Model; (iii) Multiples on Equity Value.

Similarly, the Enterprise Value is estimated by using: (i) Free Cash Flow from the Operations Discounted Model based on Cost of Capital Approach and on Adjusted Present Value Approach; (ii) Discounted Economic Profit; (iii) Multiples on Enterprise Value.

In both cases, Equity Value and Enterprise Value, the models are defined on the basis of three scenarios: (i) Constant growth (or one-period model) that assumes a constant growth over time indefinitely; (ii) Two-Stage Growth (or two-period model) that assumes an initial period characterised by extraordinary growth and a second period characterised by a steady-state growth rate expected to continue indefinitely; (iii) Three-Stage Growth (or three-period model) that assumes a first period characterized by growth constant at the same level, a second period characterized by a changing growth from its level in the first period to a long-run steady-state level and, a third period characterized by a constant growth indefinitely. Obviously, it is possible to use others steps by passing from the three-period model to an n-period model. Generally, by moving from the one-period model to three-period model (or n-period model), more information is required in terms of quantity and complexity. Also, more variables imply more complexity in the forecast process. Otherwise, the use of few variables implies a high level of simplicity but a low level of confidence about the value estimated. The trade-off between complexity and manageability must be solved on the basis of the information available on the company and the analyst's forecasting skills.

Roll R (1970) The behavior of interest rates. Basic Books, New York
Smith C, Warner J (1979) On financial contracting: an analysis of bond covenants. J Financ Econ 7:115-161
Sundaresan M (1983) Constant absolute risk aversion preferences and constant equilibrium interest rates. J Finance 39(1):205-212
Svensson LEO (1994) Estimating and interpreting forward interest rates. NBER Working Paper, No. 4871
Van Horne J (1965) Interest-rate risk and the term structure of interest rates. J Polit Econ LXXIII:344-351
Van Horne J (1966) Interest-rate expectations, the shape of yield curve, and monetary policy. Rev Econ Statistics, XLVIII, pp 211-215
Vasicek O (1977) An equilibrium characterization of the term structure. J Financ Econ 5 (2):177-188
Zwick B (1980) Yield on privately placed corporate bonds. J Finance 35(1):23-30


This approach simplifies the problem of portfolio selection. There are two main advantages: first, it does not require any specifications in terms of probability distribution; second, it is simple and intuitive because it is only based on the mean and variance. However, it is also true that this approach neglects a lot of relevant information about distribution probability.

The entire portfolio selection process can be simplified on the basis of two main phases of the portfolio selection process:

- optimization phase: the aim is to define the diversified portfolio and the efficient frontier. The definition of the diversified portfolio is based on the statistical characteristics of the assets. Specifically, the expected return of the portfolio is equal to the weighted average of the expected returns of the assets, while the portfolio variance is the function of the covariance between the assets' expected returns. The assumption refers to the investors' homogeneous expectations about the statistical characteristics of the assets implying that all investors define the same efficient frontier.
- maximization phase: the aim is to choose the optimal portfolio among the efficient portfolios defined on the efficient frontier. None of the efficient portfolios on the efficient frontiers can be preferred over the others by definition. The choice of the optimal portfolio among the efficient portfolios requires a clear definition of the investor's preferences about risk.

While the optimization phase is characterized by objectivity because it is valid for the entire market and not for the single investor, the maximization phase is characterized by subjectivity because it is the function of the investor's risk preferences.

Based on the portfolio selection theory, if the investor is diversified the cost of capital is function only for the risk that investor cannot diversify away. The unique risks that any company must face are not priced in the cost of capital. Consequently, the cost of capital used as discounted rate of future cash-flows of the company is not related to the risk link to the cash-flows uncertainty. The risk associated to the future expected cash-flows must be considered in their estimation.

One of the most popular models to estimate the company's cost of capital derives from the Capital Asset Pricing Model (CAPM). The CAPM is the most well-known equilibrium model in the capital market.

The standard form of CAPM provides a clear description of capital market behaviour if its basic assumptions are respected. There are two main problems.

First, it is based on strictly basic assumptions some of which are very far from conditions of reality. This is not a problem in itself. The fact that these differences from reality are irrelevant enough, they do not have a material effect on the model's explanatory power. However, during the years some different versions of the standard CAPM have been developed by changing specific basic assumptions. The aim is to understand and to explain the standard version of the CPM in greater detail, with the investor's behaviour on the one hand, and the assets price on the other hand.

Second, the CAPM describes the conditions of equilibrium about returns on the macro level. It does not describe this equilibrium on a micro level with regards to individual investor behaviour. Indeed, most investors and institutions have a risky assets portfolio different from the market portfolio.

Therefore, while the model can explain the capital markets behaviour as an entity, it is unable to explain the investors' behaviour. Indeed, the investor's portfolio is usually different from the market portfolio.

On the basis of these considerations, the cost of capital of a specific company is estimated on the basis of Security Market Line (SML) as derived from the CAPM.

## Discounted Cash-Flows Approach

Based on these two variables, return of capital invested and the cost of capital, the company's ability to create value over time for its shareholders is the function of the effectiveness of the Company Strategic Formula to create expected cash-flows as well as investors' models to diversify the risk and maximize expected returns in order to estimate the cost of capital.

The basic equation of value states that the company creates value if and only if, the return on capital invested exceeds its cost of capital. The explicit application of the baseline equation can be realized through several methodologies. Among them the Discounted Cash-Flows model (DCF) is the best. It is commonly used in the financial community. It is relevant since all members of the international financial community use a common criteria and language. The DCF preference by investors is based on several reasons. Among these, three are the main ones:

1. the DCF is based on cash-flows. The cash-flows are preferred by investors who distrust of accounting measurements. Specifically, bondholders are interested in cash-flows from operations because the company's capability to pay interest on debt and to reimburse the debt depends on their amount. Otherwise, the shareholders are interested in cash-flows to equity because the company's capability to pay dividends depends on their amount and timing. Accounting earnings and value are not one and the same. Also, if earnings and cash flows are correlated, earnings do not tell the whole story of value creation. Then, focusing too much on earnings, and then earning growths, often it leads the company to stray from a value-creating path. Earnings do not drive value in their own right. Only cash-flows can be considered as the fundamental value drivers.

It is worth noting that cash-flows are the monetary dimensions of the company. In the capital markets only the monetary values can be moved over time by giving real relevance and fairness to the mechanism of actualization and capitalization. Indeed, the capital market has two main functions: first, it allows for the movement of money over time; second, it allows for the allocation of money between assets and future events. In this context the financial monetary costs as well as the relationship between risk and return are based only on the movement of the monetary value over time in order to consume and invest;

2. the value-creation principle states that the company creates value only if the returns on capital invested are greater than the cost of capital. The DCF allows for rewriting of the basic equation between the return on capital invested and the cost of capital in terms of expected cash-flows over time and cost of capital used as discounted rate.

Specifically, it allows to focus attention on three main variables of the company's value: company's capability to create cash-flows (free cash-flows from operations and free cash-flows to equity) over time; the cost of capital; the time in the valuation process and then the possibility to calculate the present values. Therefore, the DCF is based on the present value rule enounced by Irving Fisher, father of the modern financial theory: the value of any asset is equal to the present value of the expected cash-flows discounted at an appropriate rate of riskiness. Consequently, the asset's value, both real and financial, is the functions of the expected cash flows that will be realized by the asset in the future, their distribution in time, and their uncertainty;

3. the DCF is in line with value-conservation principle that is one of the most relevant corollary of the value-creation principle. It states that anything that does not increase cash-flows over time does not create value, regardless of whether the decisions made improved earnings or otherwise make their financial statements look stronger. Therefore, in investors' perspective anything that does not increase cash flows does not create value.

So value is conserved, or unchanged, when the company changes all also by changing accounting techniques, but it does not change the total available cash flows. Therefore, the cash flows are the key driver of the value creation and its measurement. Indeed, the value-conservation principle tells us what to look for when analysing whether the same decision or action will create value: the cash-flows impact and nothing else.

By using the DCF approach, the company value is equal to the current value of expected future cash-flows and the cost of capital is used as a discount rate. Therefore, there are three main variables:

- Time: the referenced time is the future. The value of the company is strictly related to future performance rather than past performance;
- Cash-flows: company performance is measured in cash-flows terms. Specifically, the expected future cash-flows from operations and to equity;
- Cost of capital: it is the cost of debt and the cost of equity and it defines the discount rate for expected future cash-flows.

The General Equation of value can be defined, based on these three main variables as follows:

$$
W_{F} = \sum_{t = 1}^{\infty} \frac{CF_{t}}{\left(1 + k\right)^{t}} \tag{11.1}
$$

where: $W_{F}$ is the company's value; $t$ is the period-time of valuation; $CF_{t}$ is the expected future cash-flows for each year ($t$) (note that they refer to the expected value of cash-flows but in order to simplify the formalization the operator $\operatorname{E}[CF_t]$ is not used, by the meaning is the same); $k$ is the cost of capital used as a discounted rate.

Equation (11.1) has a great theoretical relevance. It estimates the value of the company based on expected cash flows, arising from the fundamental analysis of the company and the cost of capital. Also the equation defines the relationship between company value, the expected cash-flows and the cost of capital in the time of valuation: the company's value increases together with an increase in the expected cash-flows and decreases together with an increase in the cost of capital.

The general equation has a relevant theoretical importance but it is not applicable directly. There are two main problems to be solved before:

- the valuation time-period;
- the valuation perspective.

The first problem is definition of the valuation time-period. In Eq. (11.1) time goes from $1$ ($t = 1$) to infinite ($t = n$). Therefore, Eq. (11.1) is not directly applicable. The problem can be solved by dividing the valuation time-period in two conceptual parts:

- definite time-period: it is the time period of analytic valuation. Generally, this time period is equal to 3 or 5 years on the basis of company characteristics and its market, and it defines the time period of the business plan;
- indefinite time-period: it is the time period of synthetic valuation. It goes from the end of time-period of analytic valuation to infinity by using the Terminal Value (TV). Generally, the Terminal Value measures the company's value after the analytic valuation.

By distinguishing between the analytical valuation and the synthetic valuation, Eq. (11.1) can be rewritten as follows:

$$
W_{F} = \sum_{t = 1}^{n} \frac{CF_{t}}{(1 + K)^{t}} + \frac{TV_{n}}{(1 + K)^{n}} \tag{11.2}
$$

where $TV_{n}$ indicates the Terminal Value at the end ($t = n$) of the period of the analytical valuation.

Therefore, while the first part of the equation estimates the company value in a given time period (analytic value of the company), the second part of the equation estimates the company value in an indefinite time period by using the Terminal Value (synthetic value of the company).

The second problem is the valuation perspective. Application of Eq. (11.1) requires the definition of its variables: identification of the expected cash-flows to be discounted and identification of capital cost used to discount the expected cash-flows. The solution of the problem requires the definition of the valuation perspective. They could be two perspectives:

- Equity Side perspective: the Equity Value $(W_{E})$ of the company is estimated on the basis of Free Cash-flows to Equity (FCFE) discounted at the Cost of Equity. Use of the Cost of Equity $(K_{E})$ is due to the nature of the free cash-flows to be discounted: they are the residual cash-flows after the coverage of the company's needs and the debt obligations and destined to equity remuneration;
- Asset Side perspective the asset value called Enterprise Value ($W_A$) is estimated. The Enterprise Value is estimated based on the Free Cash-flow from Operations (FCFO) discounted to the Cost of Capital. Use of the Cost of Capital Levered, including both the cost of equity and the cost of debt, is due to the nature of the free cash flows to be discounted. In fact, these cash flows derive from the operating activities of the company and they are used in remuneration of both equity-holders and debt-holders. Therefore, the Enterprise Value is the value generated by the company's operating activities and they must be distributed among the investors in equity and debt.

It is possible to summarize as follows:

$$
W_{F} = \sum_{t = 1}^{n} \frac{CF_{t}}{(1 + K)^{t}} + \frac{TV_{n}}{(1 + K)^{n}} \rightarrow \begin{array}{l}\text{Equity Side} \rightarrow W_{E} = \sum_{t = 1}^{n} \frac{FCFE_{t}}{\left(1 + K_{E}\right)^{t}} + \frac{TV_{n}}{\left(1 + K_{E}\right)^{n}}\\
\text{Asset Side} \rightarrow W_{A} = \sum_{t = 1}^{n} \frac{FCFO_{t}}{\left(1 + K_{A}\right)^{t}} + \frac{TV_{n}}{\left(1 + K_{A}\right)^{n}}\end{array}\tag{11.3}
$$

There are several models to estimate the Equity Value and the Enterprise Value. Indeed, by changing the cash-flows aggregated several configurations of the model can be obtained. In this context, following a financial approach, the Equity Value is estimated by using: (i) Dividend Discounted Model; (ii) Free Cash Flow to Equity Discounted Model; (iii) Multiples on Equity Value.

Similarly, the Enterprise Value is estimated by using: (i) Free Cash Flow from the Operations Discounted Model based on Cost of Capital Approach and on Adjusted Present Value Approach; (ii) Discounted Economic Profit; (iii) Multiples on Enterprise Value.

In both cases, Equity Value and Enterprise Value, the models are defined on the basis of three scenarios: (i) Constant growth (or one-period model) that assumes a constant growth over time indefinitely; (ii) Two-Stage Growth (or two-period model) that assumes an initial period characterised by extraordinary growth and a second period characterised by a steady-state growth rate expected to continue indefinitely; (iii) Three-Stage Growth (or three-period model) that assumes a first period characterized by growth constant at the same level, a second period

characterized by a changing growth from its level in the first period to a long-run steady-state level and, a third period characterized by a constant growth indefinitely. Obviously, it is possible to use others steps by passing from the three-period model to an n-period model. Generally, by moving from the one-period model to three-period model (or n-period model), more information is required in terms of quantity and complexity. Also, more variables imply more complexity in the forecast process. Otherwise, the use of few variables implies a high level of simplicity but a low level of confidence about the value estimated. The trade-off between complexity and manageability must be solved on the basis of the information available on the company and the analyst's forecasting skills.

Finally, it is relevant to note that the large use of a rigorous quantitative analysis to integrate the company's fundamental analysis and the investors' models about risk and return in the capital markets in order to the company valuation, is not to complicate the analysis but, on the contrary, to simplify the discussion. There are three main reasons:

- first, models are easier to understand if they are studied in their formal construction. The mathematical form allows us to further understand the models in their construction, assumptions, and then, in their clear capabilities and limits;
- second, the mathematical form does not allow inappropriate manipulation of the equations and, consequently, uncorrected use of the models. Every equation is the result of a rigorous formal process and their modification can be realized only by following the same rigorous formal process;
- third, the mathematical form does not allow for attribution of the equation meanings that are not supported by their strict formal derivation. Every equation acquires form and meanings strictly related to the mathematical process of derivation. The clear derivation step-by-step of each equation does not allow errors in the equations interpretation and, consequently, in the use of models.

## References

- Alexander GJ (1980) Applying the market model to long-term corporate bonds. J Financ Quant Anal XV(5):1063-1080
- Altman EI (1987) Investing in junk bonds: inside the high yield debt market. Wiley, New York
- Asquith P, Mullins D, Wolff E (1989) Original issue high yield bonds: aging analysis of defaults, exchanges and calls. J Finance 44:923-953
- Balduzzi P, Elton EJ, Green TC (2001) Economic news and the yield curve: evidence from the US treasury market. J Financ Quant Anal 36:523-543
- Black F, Cox JC (1976) Valuing corporate securities: some effects of bond indenture provisions. J Finance 31:351-367
- Black F, Scholes M (1973) The pricing options and corporate liabilities. J Polit Econ 81:637-654
- Brace A, Gatarek D, Musiela M (1997) The market model of interest rate dynamics. Math Finance 7(2):127-147
- Brennan MJ, Schwartz ES (1977) Convertible bonds: valuation and optimal strategies for call and conversion. J Finance 32:1699-1715
- Brennan MJ, Schwartz ES (1980) Conditional predictions of bond prices and returns. J Finance 35(2):405-416
- Brennan MJ, Schwartz ES (1982) Bond pricing and market efficiency. Financ Anal J 38(5):49-56
- Campbell JY (1986) A defense of traditional hypotheses about the term structure of interest rates. J Finance 41(1):183-193
- Carleton WT, Cooper IA (1976) Estimation and uses of the term structure of interest rates. J Finance 31:1067-1083
- Cesari R (2012) Introduzione alla finanza matematica. Concetti di base, tassi e obbligazioni, 2nd edn. McGraw-Hill, New York
- Chambers DR, Carleton WT, Waldman DW (1984) A new approach to estimation of the term structure of interest rates. J Financ Quant Anal 19(3):233-252
- Chan A, Thomson HE (1988) Jump-diffusion and the term structure of interest rates. J Finance 43(1):155-174
- Chance DM (1990) Default risk and the duration of zero coupon bonds. J Finance 45(1):265-274
- Cox JC, Ingersoll JE, Ross SA (1985) A theory of the term structure of interest rates. Econometrica 53(2):385-407
- Cox JC, Ingersoll JE, Ross S (1980) An analysis of variable rate loan contracts. J Finance 35(2):389-404
- Elton EJ, Gruber MJ, Agrawal D, Mann C (2001) Explaining the rate spread on corporate bonds? J Finance LVI(1):247-279
- Fama E (1976) Forward rates as predictors of future sport rates. J Financ Econ 3:361-377
- Fama E (1984a) The information in the term structure. J Financ Econ 13(4):509-528
- Fama E (1984b) Term premiums in bond returns. J Financ Econ 13(4):529-546
- Fisher I (1930) The theory of interest. Macmillan, New York
- Fraine HG, Mills RH (1961) The effect of default and credit deterioration on yields of corporate bonds. J Finance 16:423-433
- Heath D, Jarrow R, Morton A (1992) Bond pricing and the term structure of interest rates: a new methodology for contingent claims valuation. Econometrica 60(1):77-105
- Hicks JR (1939) Value and capital, 2nd edn. Clarendon Press, Oxford
- Ho T, Lee S (1986) Term structure movements and pricing interest rate contingent claims. J Finance 41(5):1011-1029
- Hull J, White A (1990) Pricing Interest-rate derivative securities. Rev Financ Stud 3(4):573-592
- Johnson R (1967) Term structure of corporate bond yields as a function of risk of default. J Finance 22:313-345
- Malkiel BG (1966) The term structure of interest rates. Princeton University Press, Princeton NJ
- McCulloch JH (1971) Measuring the term structure of interest rate. J Bus 44:19-31
- McCulloch JH (1975) An estimate of the liquidity premium. J Polit Econ 83:95-119
- Merton R (1974) On the pricing of corporate debt: the risk structure of interest rates. J Finance 29(2):449-470
- Modigliani F, Sutch R (1966) Innovations in interest rate policy. Am Econ Rev LVI:178-197
- Nelson CR, Siegel AF (1985) Parsimoneous modeling of yield curves for U.S. treasury bills. NBER Working Paper, No. 1594
- Rao RKS (1982) The impact of yield changes on the systematic risk of bonds. J Financ Quant Anal XVII(1):115-128
- Roll R (1970) The behavior of interest rates. Basic Books, New York
- Smith C, Warner J (1979) On financial contracting: an analysis of bond covenants. J Financ Econ 7:115-161
- Sundaresan M (1983) Constant absolute risk aversion preferences and constant equilibrium interest rates. J Finance 39(1):205-212
- Svensson LEO (1994) Estimating and interpreting forward interest rates. NBER Working Paper, No. 4871
- Van Horne J (1965) Interest-rate risk and the term structure of interest rates. J Polit Econ LXXIII:344-351
- Van Horne J (1966) Interest-rate expectations, the shape of yield curve, and monetary policy. Rev Econ Statistics, XLVIII, pp 211-215
- Vasicek O (1977) An equilibrium characterization of the term structure. J Financ Econ 5 (2):177-188
- Zwick B (1980) Yield on privately placed corporate bonds. J Finance 35(1):23-30
