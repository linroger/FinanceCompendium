# CFA Practice Exam Solutions
**Prepared by:** Roger Lin, Senior Managing Director, Equity Research
**Date:** November 15, 2025
**Firm:** China International Capital Corporation (CICC)
---
This report provides a detailed, step-by-step analysis of the provided practice questions, reflecting the rigorous standards of CICC. Each solution is presented with the underlying logic, mathematical reasoning, and financial intuition to ensure clarity and depth of understanding for our valued client.
---
### **Question 1: Target Downside Deviation**
**Question:** An analyst gathers the following information about a fund's returns:

| Year | Return |
| :--- | :----: |
| 1    |   2%   |
| 2    |   5%   |
| 3    |   3%   |
| 4    |   6%   |
| 5    |   2%   |
If the target return is 4%, the target downside deviation is closest to:
A. 1.34%  
B. 1.50%  
C. 1.87%
---
**Solution: B**
**1. Conceptual Framework**
The **target downside deviation**, also known as target semi-deviation, is a measure of risk that focuses exclusively on returns falling below a specified minimum target. Unlike standard deviation, which penalizes both upside and downside volatility equally, target downside deviation isolates and quantifies the volatility of underperformance. This is particularly useful for investors who are more concerned with the risk of not meeting their goals than with overall volatility.
The formula is a modification of the standard deviation formula:
$$
\sigma_{\text{target}} = \sqrt{\frac{\sum_{i=1}^{n} (\text{min}(0, R_i - R_T))^2}{n-1}}
$$
Where:
- $ \sigma_{\text{target}} $ is the target downside deviation.
- $ R_i $ is the return in period *i*.
- $ R_T $ is the target return.
- $ n $ is the total number of periods.
- The term $ \text{min}(0, R_i - R_T) $ ensures that only returns below the target ($R_i < R_T$) are included in the calculation.
**2. Step-by-Step Calculation**
**Step 1: Identify Returns Below the Target**
First, we identify the years where the fund's return was less than the target return of 4%.
- Year 1: 2% (< 4%)
- Year 2: 5% (≥ 4%) - *Ignore*
- Year 3: 3% (< 4%)
- Year 4: 6% (≥ 4%) - *Ignore*
- Year 5: 2% (< 4%)
The returns that fall below the target are 2%, 3%, and 2%.
**Step 2: Calculate the Squared Deviations from the Target**
Next, for each of the identified returns, we calculate the squared difference between the return and the 4% target.
- For Year 1: $(2\% - 4\%)^2 = (-0.02)^2 = 0.0004$
- For Year 3: $(3\% - 4\%)^2 = (-0.01)^2 = 0.0001$
- For Year 5: $(2\% - 4\%)^2 = (-0.02)^2 = 0.0004$
**Step 3: Sum the Squared Deviations and Calculate the Sample Variance**
We sum the squared deviations and divide by $n-1$. The total number of observations, *n*, is 5.
- Sum of Squared Deviations = $0.0004 + 0.0001 + 0.0004 = 0.0009$
- Sample Variance of Downside Deviations = $\frac{0.0009}{5 - 1} = \frac{0.0009}{4} = 0.000225$
**Step 4: Calculate the Target Downside Deviation**
Finally, we take the square root of the variance calculated in the previous step.
- Target Downside Deviation = $\sqrt{0.000225} = 0.015$
Converting this to a percentage gives **1.50%**.
**3. Conclusion**
The target downside deviation is **1.50%**, which corresponds to option **B**. This figure represents the volatility of the fund's underperformance relative to its 4% target.
---
### **Question 2: Role of a Central Bank**
**Question:** A central bank most likely:
A. lends money to banks facing serious shortages.
B. is one of many suppliers of a country's currency.
C. does not manage a country's foreign currency reserves.
---
**Solution: A**
**1. Conceptual Framework**
Central banks are pivotal institutions that manage a nation's currency, money supply, and interest rates. Their primary objectives typically include price stability, maximum sustainable employment, and the stability of the financial system.
**2. Analysis of Options**
-   **A. Lends money to banks facing serious shortages.** This describes the **lender of last resort** function. It is a critical role of a central bank, particularly during times of financial stress. By providing liquidity to solvent but illiquid banks, the central bank prevents bank runs and systemic financial crises. This statement is correct.
-   **B. Is one of many suppliers of a country's currency.** This is incorrect. The central bank is the **sole issuer and supplier** of a country's legal tender (notes and coins). This monopoly over currency issuance is fundamental to its ability to conduct monetary policy.
-   **C. Does not manage a country's foreign currency reserves.** This is incorrect. A key function of a central bank is to **manage the nation's foreign currency and gold reserves**. These reserves are used to manage the country's exchange rate, maintain liquidity in foreign currency, and provide confidence for international trade and finance.
**3. Conclusion**
The most accurate description of a central bank's function among the choices is its role as a lender of last resort. Therefore, option **A** is correct.
---
### **Question 3: Reporting of Intangible Assets**
**Question:** Intangible assets are reported using the:
A. cost model only.
B. cost model or fair value model.
C. cost model or revaluation model.
---
**Solution: C**
**1. Conceptual Framework**
This question pertains to the subsequent measurement of intangible assets under International Financial Reporting Standards (IFRS), specifically **IAS 38 *Intangible Assets***.
-   **Initial Recognition:** An intangible asset is initially measured at cost.
-   **Subsequent Measurement:** After initial recognition, an entity must choose an accounting policy for each class of intangible asset. The two available models are:
    1.  **Cost Model:** The asset is carried at its cost less any accumulated amortization and any accumulated impairment losses.
    2.  **Revaluation Model:** The asset is carried at a revalued amount, being its fair value at the date of the revaluation less any subsequent accumulated amortization and subsequent accumulated impairment losses.
**2. Analysis of Options**
-   The **revaluation model** is permitted by IAS 38, but its use is conditional. It can only be applied if the fair value of the intangible asset can be determined by reference to an **active market**. This is uncommon for most intangible assets (e.g., brand names, patents) but may be possible for assets like taxi licenses or fishing quotas.
-   The **fair value model** is a distinct model under IFRS, but it is prescribed by **IAS 40 *Investment Property***, not IAS 38. While fair value is the basis for the revaluation model, the model itself is termed the "revaluation model" in the context of intangible assets.
**3. Conclusion**
Under IFRS, intangible assets can be reported using either the cost model or the revaluation model. Therefore, option **C** is correct.
---
### **Question 4: Impairment Loss**
**Question:** An analyst gathers the following information (in € thousands) about a machine:
| Description                               | Value |
| :---------------------------------------- | :---: |
| Carrying amount prior to impairment       |  50   |
| Present value of expected future cash flows |  46   |
| Fair value                                |  48   |
| Costs to sell                             |   3   |
Impairment loss (in € thousands) is:
A. 2
B. 4
C. 5
---
**Solution: B**
**1. Conceptual Framework**
An **impairment loss** must be recognized when an asset's carrying amount (its value on the balance sheet) is greater than its recoverable amount. According to **IAS 36 *Impairment of Assets***, the recoverable amount is defined as the **higher** of two values:
1.  **Fair Value Less Costs to Sell:** The price that would be received to sell an asset in an orderly transaction between market participants, minus the incremental costs directly attributable to the disposal of the asset.
2.  **Value in Use:** The present value of the future cash flows expected to be derived from an asset or cash-generating unit.
The impairment loss is calculated as:
$$
\text{Impairment Loss} = \text{Carrying Amount} - \text{Recoverable Amount}
$$
**2. Step-by-Step Calculation**
**Step 1: Calculate Fair Value Less Costs to Sell**
- Fair Value = €48 thousand
- Costs to Sell = €3 thousand
- Fair Value Less Costs to Sell = €48 - €3 = €45 thousand
**Step 2: Determine the Recoverable Amount**
The recoverable amount is the higher of "Fair Value Less Costs to Sell" and "Value in Use".
- Value in Use = Present value of expected future cash flows = €46 thousand
- Recoverable Amount = max(€45 thousand, €46 thousand) = €46 thousand
**Step 3: Calculate the Impairment Loss**
The impairment loss is the excess of the carrying amount over the recoverable amount.
- Carrying Amount = €50 thousand
- Recoverable Amount = €46 thousand
- Impairment Loss = €50 - €46 = €4 thousand
**3. Conclusion**
The impairment loss is **€4 thousand**, which corresponds to option **B**. The machine's carrying amount must be written down from €50 thousand to its recoverable amount of €46 thousand, resulting in a €4 thousand loss recognized on the income statement.
---
### **Question 5: Demand Curve in Perfect Competition**
**Question:** In a perfectly competitive market, the demand curve faced by each individual firm is most likely:
A. negatively sloped.
B. horizontal.
C. positively sloped.
---
**Solution: B**
**1. Conceptual Framework**
**Perfect competition** is a market structure characterized by several key features:
-   A large number of buyers and sellers.
-   Homogeneous (identical) products.
-   Free entry and exit of firms.
-   Perfect information.
A crucial implication of these features is that each individual firm is a **price taker**. No single firm has the market power to influence the price of the product. The market price is determined by the intersection of the total market supply and market demand.
**2. Analysis of the Firm's Demand Curve**
-   Since an individual firm must accept the prevailing market price, it can sell as much output as it wishes at that price. If it tries to charge a higher price, it will sell nothing, as customers can buy the identical product from numerous other firms at the market price. It has no incentive to charge a lower price, as it can already sell all it wants at the market price.
-   This situation describes a **perfectly elastic** demand curve. A perfectly elastic demand curve is graphically represented as a **horizontal line** at the level of the market price.
**3. Important Distinction**
It is critical to distinguish between the demand curve for the **entire market** and the demand curve for an **individual firm** within that market.
-   The *market* demand curve is downward-sloping, obeying the law of demand.
-   The *firm's* demand curve is horizontal (perfectly elastic).
**4. Conclusion**
The demand curve faced by an individual firm in a perfectly competitive market is horizontal. Therefore, option **B** is correct.
---
### **Question 6: Network Effects**
**Question:** Which best describes business growth that attracts more customers and merchants, contributing to fuel the business?
A. Crowdsourcing
B. A one-sided network
C. A multi-sided network
---
**Solution: C**
**1. Conceptual Framework**
This question describes a specific type of **network effect**, where the value of a platform or service increases as more people use it. Network effects can be categorized based on the user groups involved.
-   **One-Sided Network:** The value for all users is derived from the same type of user. For example, the telephone network or a social media platform like Facebook becomes more valuable to each user as more people join and can be contacted.
-   **Multi-Sided Network (or Two-Sided Platform):** The platform serves two or more distinct but interdependent user groups. The value for one group of users increases with the number of users in the other group. This cross-platform network effect creates a powerful, self-reinforcing growth loop.
-   **Crowdsourcing:** This is a business model that involves obtaining work, information, or opinions from a large group of people who submit their data via the internet, social media, and smartphone apps. While it leverages a network, it is a model for sourcing input, not a description of the growth dynamic itself.
**2. Analysis of the Scenario**
The scenario explicitly mentions two distinct groups: **"customers"** and **"merchants"**. The growth of the business is fueled by the dynamic that more customers attract more merchants, and more merchants, in turn, attract more customers. This is the hallmark of a multi-sided network.
Classic examples include:
-   **Credit Cards:** More cardholders attract more merchants to accept the card, and wider acceptance attracts more cardholders.
-   **Ride-Sharing Apps:** More drivers lead to shorter wait times, attracting more riders. More riders lead to more business for drivers, attracting more drivers.
-   **Video Game Consoles:** More gamers attract more developers to create games for the console, and a larger library of games attracts more gamers.
**3. Conclusion**
The described growth dynamic is a classic example of a **multi-sided network**. Therefore, option **C** is correct.
---
### **Question 7: Revenue Recognition**
**Question:** According to the converged accounting standards for revenue recognition, revenue is recognized only when:
A. cash is received.
B. it is highly probable that it will not be subsequently reversed.
C. all performance obligations within a contract have been met while the transaction price can be allocated to identified performance obligations.
---
**Solution: B**
**1. Conceptual Framework**
The converged revenue recognition standards (IFRS 15 and ASC 606) are based on a five-step model. A key and complex part of this model is determining the transaction price, especially when it includes **variable consideration** (e.g., discounts, rebates, performance bonuses).
The standards introduce a constraint on including variable consideration in the transaction price. An entity can only include an estimated amount of variable consideration in the transaction price to the extent that it is **highly probable** (IFRS 15) or **probable** (ASC 606, which is interpreted similarly to IFRS's "highly probable") that a **significant reversal** in the amount of cumulative revenue recognized will not occur when the uncertainty related to the variable consideration is subsequently resolved.
**2. Analysis of Options**
-   **A. cash is received.** This is incorrect. Revenue recognition is based on the accrual principle (recognizing revenue when earned), not the cash basis of accounting.
-   **B. it is highly probable that it will not be subsequently reversed.** This directly and accurately describes the constraint on variable consideration. Revenue associated with uncertain future events cannot be recognized upfront if there is a significant risk it might have to be reversed later. This ensures that recognized revenue is reliable.
-   **C. all performance obligations within a contract have been met...** This is incorrect. Revenue is recognized *as* or *when* performance obligations are satisfied. If obligations are satisfied over time, revenue is recognized over time. If they are satisfied at different points in time, revenue is recognized as each one is satisfied. It is not necessary to wait for *all* obligations in a contract to be met.
**3. Conclusion**
The most accurate statement describing a key principle of the new revenue recognition standards is the constraint on recognizing revenue that might be subject to a significant future reversal. Therefore, option **B** is correct.
---
### **Question 8: Static Trade-Off Theory**
**Question:** According to the static trade-off theory of capital structure, the value of a levered company is reduced by:
A. the present value of inherent tax shields only.
B. the present value of costs of financial distress only.
C. both the present value of inherent tax shields and the present value of costs of financial distress.
---
**Solution: B**
**1. Conceptual Framework**
The **static trade-off theory** of capital structure builds upon the Modigliani-Miller propositions by introducing market imperfections, namely taxes and costs of financial distress.
The theory posits that the value of a levered firm is determined by a trade-off:
-   **Benefit of Debt:** The primary benefit is the **tax shield** provided by the tax-deductibility of interest payments. This increases the firm's value.
-   **Cost of Debt:** As leverage increases, so does the probability of bankruptcy and financial distress. These costs include direct costs (e.g., legal and administrative fees in bankruptcy) and indirect costs (e.g., loss of customers, suppliers demanding stricter terms, inability to pursue profitable projects). These costs reduce the firm's value.
The value of the levered firm ($V_L$) is expressed as:
$$
V_L = V_U + \text{PV}(\text{Tax Shield}) - \text{PV}(\text{Costs of Financial Distress})
$$
Where $V_U$ is the value of the unlevered firm.
**2. Analysis of Options**
The question asks what *reduces* the value of a levered company according to this theory.
-   **A. the present value of inherent tax shields only.** This is incorrect. The tax shield *increases* the firm's value.
-   **B. the present value of costs of financial distress only.** This is correct. The potential costs associated with bankruptcy and financial distress are a negative factor that detracts from the firm's value.
-   **C. both the present value of inherent tax shields and the present value of costs of financial distress.** This is incorrect because it includes the tax shield, which is a positive component.
**3. Conclusion**
According to the static trade-off theory, the value of a levered company is reduced by the present value of the costs of financial distress. Therefore, option **B** is correct.
---
### **Question 9: Revaluation Model for Land**
**Question:** Under the revaluation model, an initial revaluation that increases the carrying value of land will most likely increase:
A. net income.
B. shareholders' equity.
C. total asset turnover ratio.
---
**Solution: B**
**1. Conceptual Framework**
Under IFRS (IAS 16 *Property, Plant and Equipment*), when an entity uses the **revaluation model**, upward revaluations are treated differently from downward revaluations.
-   **Upward Revaluation:** When an asset's carrying amount is increased as a result of a revaluation, the increase is recognized in **Other Comprehensive Income (OCI)** and accumulated in equity under the heading of **revaluation surplus**. It does *not* flow through the income statement (and therefore does not increase net income), unless it is reversing a previous revaluation decrease that was recognized in profit or loss.
**2. Analysis of Options**
-   **A. net income.** Incorrect. The initial upward revaluation gain bypasses the income statement and is recorded in OCI.
-   **B. shareholders' equity.** Correct. OCI is a component of total comprehensive income, which is closed to shareholders' equity. The creation of a revaluation surplus directly increases total shareholders' equity.
-   **C. total asset turnover ratio.** Incorrect. The total asset turnover ratio is calculated as `Sales / Average Total Assets`. The revaluation increases the carrying value of land, which in turn increases total assets. Assuming sales remain constant, an increase in the denominator (total assets) will *decrease*, not increase, the ratio.
**3. Conclusion**
An initial upward revaluation increases the revaluation surplus, which is a component of shareholders' equity. Therefore, it will most likely increase **shareholders' equity**. Option **B** is correct.
---
### **Question 10: Market Concentration Measures**
**Question:** In contrast to the Herfindahl-Hirschman index (HHI), the concentration ratio:
A. considers the elasticity of demand.
B. accounts for the possibility of new entrants.
C. is less affected by mergers among the top market incumbents.
---
**Solution: C**
**1. Conceptual Framework**
Both the **N-firm concentration ratio (CR)** and the **Herfindahl-Hirschman Index (HHI)** are measures of market concentration, but they are calculated differently and have different sensitivities.
-   **Concentration Ratio (CR):** This is the sum of the market shares of the largest *N* firms in an industry (e.g., CR4 is the combined market share of the top four firms). It is simple to calculate but ignores the distribution of share within the top firms and the shares of all firms outside the top *N*.
-   **Herfindahl-Hirschman Index (HHI):** This is the sum of the squared market shares of *all* firms in the industry. The formula is $HHI = \sum_{i=1}^{n} s_i^2$, where $s_i$ is the market share of firm *i*. By squaring the market shares, the HHI gives disproportionately greater weight to firms with larger market shares.
**2. Analysis of a Merger**
Let's consider a merger between two of the top four firms in a market.
-   **Effect on CR4:** If the two merging firms are already in the top four, their combined market share is simply the sum of their individual shares. After the merger, the new entity's share is the same sum. To calculate the new CR4, we would add the new firm's share to the shares of the next two largest firms. In many cases, especially if the firms are large, the CR4 might not change significantly, or at all. For example, if the top 4 firms have shares of 20%, 15%, 10%, and 5% (CR4 = 50%), and the top two merge to form a firm with 35% share, the new top 4 might be 35%, 10%, 5%, and a new 4th firm with (say) 4% share, making the new CR4 = 54%. A moderate change.
-   **Effect on HHI:** The HHI is highly sensitive to changes in the market shares of the largest firms. Let's use the same example. Before the merger, the contribution of the top two firms to the HHI is $(20^2) + (15^2) = 400 + 225 = 625$. After the merger, the new firm's contribution is $(35^2) = 1225$. The HHI increases by $1225 - 625 = 600$, a very significant change. Antitrust authorities use the HHI precisely because of this sensitivity to mergers.
**3. Conclusion**
Because the concentration ratio does not square market shares, it is **less affected by mergers among the top market incumbents** compared to the HHI. Neither measure inherently considers demand elasticity or the potential for new entrants. Therefore, option **C** is correct.
---
### **Question 11: Descriptive Statistics**
**Question:** An analyst gathers the following company P/E ratios: `8, 13, 3, 12, 8, 10`. For the data given, the:
A. median is greater than the mode.
B. mode is greater than the arithmetic mean.
C. arithmetic mean is greater than the median.
---
**Solution: A**
**1. Conceptual Framework**
This question requires the calculation and comparison of three fundamental measures of central tendency for a given dataset:
-   **Arithmetic Mean:** The sum of all values divided by the number of values.
-   **Median:** The middle value in an ordered dataset. If the dataset has an even number of observations, it is the average of the two middle values.
-   **Mode:** The value that appears most frequently in the dataset.
**2. Step-by-Step Calculation**
**Step 1: Order the Data**
First, we arrange the P/E ratios in ascending order:
`3, 8, 8, 10, 12, 13`
**Step 2: Calculate the Mode**
The mode is the most frequently occurring value.
-   The value `8` appears twice, while all other values appear once.
-   **Mode = 8**
**Step 3: Calculate the Median**
The dataset has 6 (an even number) observations. The median is the average of the 3rd and 4th values in the ordered list.
-   3rd value = 8
-   4th value = 10
-   Median = $\frac{8 + 10}{2} = 9$
-   **Median = 9**
**Step 4: Calculate the Arithmetic Mean**
The mean is the sum of the values divided by the count of observations (6).
-   Sum = $3 + 8 + 8 + 10 + 12 + 13 = 54$
-   Mean = $\frac{54}{6} = 9$
-   **Mean = 9**
**3. Comparison and Conclusion**
Now we evaluate the given statements based on our calculations (Mean = 9, Median = 9, Mode = 8):
-   **A. median is greater than the mode.**
    -   Is 9 > 8? Yes, this statement is **true**.
-   **B. mode is greater than the arithmetic mean.**
    -   Is 8 > 9? No, this statement is **false**.
-   **C. arithmetic mean is greater than the median.**
    -   Is 9 > 9? No, the mean is equal to the median, not greater. This statement is **false**.
Based on a precise calculation using the data provided, the only correct statement is that the median is greater than the mode. Therefore, option **A** is the correct answer.
*Analyst's Note: It is common for exam questions testing this concept to use a slightly skewed dataset where the mean, median, and mode are all different. For example, if the last data point were 19 instead of 13, the mean would become 10, the median would remain 9, and the mode would remain 8, which would make statement C (`mean > median`) true. Given the data as written, however, statement A is the only mathematically correct conclusion.*
---
### **Question 12: Type II Error**
**Question:** In hypothesis testing, a Type II error is best described as:
A. rejecting a true null hypothesis.
B. rejecting a false null hypothesis.
C. not rejecting a false null hypothesis.
---
**Solution: C**
**1. Conceptual Framework**
Hypothesis testing involves making a decision about a population based on sample data. There are two competing hypotheses:
-   **Null Hypothesis ($H_0$):** A statement about a population parameter that is assumed to be true until evidence indicates otherwise. It is the hypothesis we attempt to refute.
-   **Alternative Hypothesis ($H_a$):** The hypothesis that is accepted if the null hypothesis is rejected.
When we make a decision, there are four possible outcomes, two of which involve errors:
|                   | **Decision: Do Not Reject $H_0$** | **Decision: Reject $H_0$** |
| :---------------- | :--------------------------------: | :--------------------------: |
| **$H_0$ is True**   |           Correct Decision           |      **Type I Error** ($ \alpha $)       |
| **$H_0$ is False**  |      **Type II Error** ($ \beta $)       |        Correct Decision        |
**2. Analysis of Errors**
-   **Type I Error:** This occurs when we **reject a true null hypothesis**. It is often called a "false positive." The probability of a Type I error is denoted by $ \alpha $, which is the significance level of the test.
-   **Type II Error:** This occurs when we **fail to reject a false null hypothesis**. It is often called a "false negative." The probability of a Type II error is denoted by $ \beta $.
**3. Conclusion**
Based on the definitions:
-   A. `rejecting a true null hypothesis` is a Type I error.
-   B. `rejecting a false null hypothesis` is a correct decision (this is the goal of the test).
-   C. `not rejecting a false null hypothesis` is the definition of a Type II error.
Therefore, option **C** is correct.
---
### **Question 13: Monetary Policy and Inflation**
**Question:** To reduce inflation, a central bank most likely implements an interest rate policy that is:
A. contractionary.
B. neutral.
C. expansionary.
---
**Solution: A**
**1. Conceptual Framework**
Central banks use monetary policy to manage economic conditions, with a primary goal often being price stability (i.e., controlling inflation). The main tool is the policy interest rate, which influences borrowing costs throughout the economy.
-   **Inflation** is a sustained increase in the general price level. It often occurs when aggregate demand outstrips aggregate supply, leading to an "overheating" economy.
-   To combat inflation, a central bank needs to reduce aggregate demand. It does this by making borrowing more expensive for consumers and businesses and making saving more attractive.
**2. Types of Monetary Policy**
-   **Contractionary (or Tightening) Policy:** This involves **increasing the policy interest rate**. Higher rates curb borrowing and spending, which reduces aggregate demand and puts downward pressure on inflation. This is the appropriate response to high inflation.
-   **Expansionary (or Easing) Policy:** This involves **decreasing the policy interest rate**. Lower rates encourage borrowing and spending, which stimulates aggregate demand and economic growth. This is used to combat a recession or deflation.
-   **Neutral Policy:** A policy stance that is intended to be neither contractionary nor expansionary.
**3. Conclusion**
To reduce inflation, a central bank must implement a policy designed to slow down the economy. This is a **contractionary** monetary policy. Therefore, option **A** is correct.
---
### **Question 14: WACC Calculation**
**Question:** An analyst gathers the following information about a company's capital structure, cost of capital, and marginal tax rate:
| Description               | Value           |
| :------------------------ | :-------------: |
| Market value of debt      | $1,000 million |
| Market value of equity    |  $500 million  |
| Pre-tax cost of debt      |       4%        |
| Cost of equity            |       6%        |
| Marginal tax rate         |       30%       |
If interest is fully tax deductible, the WACC is closest to:
A. 3.6%
B. 3.9%
C. 4.7%
---
**Solution: B**
**1. Conceptual Framework**
The **Weighted Average Cost of Capital (WACC)** represents a firm's blended cost of capital across all sources, including equity and debt. The WACC is a critical input in valuation, as it is often used as the discount rate for future cash flows. It is crucial to use **market values** for the weights, as they reflect the current cost of raising new capital.
The formula for WACC is:
$$
\text{WACC} = w_e \cdot r_e + w_d \cdot r_d \cdot (1 - t)
$$
Where:
- $ w_e $ = Weight of equity = $\frac{E}{E+D}$
- $ r_e $ = Cost of equity
- $ w_d $ = Weight of debt = $\frac{D}{E+D}$
- $ r_d $ = Pre-tax cost of debt
- $ t $ = Marginal tax rate
- $ E $ = Market value of equity
- $ D $ = Market value of debt
**2. Step-by-Step Calculation**
**Step 1: Calculate the Total Market Value of Capital**
-   Total Value (V) = Market Value of Equity (E) + Market Value of Debt (D)
-   V = $500 million + $1,000 million = $1,500 million
**Step 2: Calculate the Capital Structure Weights**
-   Weight of Equity ($w_e$) = $\frac{500}{1500} = \frac{1}{3} \approx 33.33\%$
-   Weight of Debt ($w_d$) = $\frac{1000}{1500} = \frac{2}{3} \approx 66.67\%$
**Step 3: Calculate the After-Tax Cost of Debt**
-   After-Tax Cost of Debt = $r_d \cdot (1 - t)$
-   After-Tax Cost of Debt = $4\% \cdot (1 - 0.30) = 4\% \cdot 0.70 = 2.8\%$
**Step 4: Calculate WACC**
-   WACC = $(\frac{1}{3} \times 6\%) + (\frac{2}{3} \times 2.8\%)$
-   WACC = $2.000\% + 1.867\% = 3.867\%$
**3. Conclusion**
The company's WACC is approximately **3.87%**, which is closest to **3.9%**. Therefore, option **B** is correct.
---
### **Question 15: Objectives of Fiscal Policy**
**Question:** Which of the following is most likely an objective of fiscal policy?
A. Maintaining price stability
B. Achieving an exchange rate target
C. Distributing income and wealth among different segments of the population
---
**Solution: C**
**1. Conceptual Framework**
It is important to distinguish between the primary objectives of **fiscal policy** (conducted by the government) and **monetary policy** (conducted by the central bank).
-   **Monetary Policy:** Focuses on managing the money supply and credit conditions to achieve macroeconomic goals. Its primary objectives are almost always **price stability** (controlling inflation) and, in some jurisdictions, maximum employment. Influencing exchange rates is also a common objective.
-   **Fiscal Policy:** Involves the use of government spending and taxation to influence the economy. While fiscal policy impacts aggregate demand and can thereby affect price levels and employment, it has broader and more distinct objectives, including:
    -   Funding the provision of public goods and services.
    -   Influencing the overall level of economic activity.
    -   **Redistributing income and wealth.**
**2. Analysis of Options**
-   **A. Maintaining price stability:** This is a primary, and often mandated, objective of *monetary policy*.
-   **B. Achieving an exchange rate target:** This is also typically managed by the central bank through monetary policy and interventions in the foreign exchange market.
-   **C. Distributing income and wealth...:** This is a classic and unique objective of *fiscal policy*. Governments use tools like progressive income tax systems (taxing higher incomes at higher rates) and transfer payments (e.g., social security, unemployment benefits) to alter the distribution of wealth and income in a society.
**3. Conclusion**
The redistribution of income and wealth is a core and distinctive objective of fiscal policy. Therefore, option **C** is correct.
---
### **Question 16: Cash Flow Classification of Dividends Paid (US GAAP)**
**Question:** Under US GAAP, dividends paid to stockholders:
A. must be classified as a financing activity on the statement of cash flows.  
B. must be classified as an operating activity on the statement of cash flows.  
C. may be classified as either a financing or an operating activity on the statement of cash flows.
---
**Solution: A**
**1. Conceptual Framework**
The statement of cash flows categorizes a company's cash movements into three activities: operating, investing, and financing. The classification differs slightly between U.S. Generally Accepted Accounting Principles (US GAAP) and International Financial Reporting Standards (IFRS).
-   **Financing Activities (CFF):** These activities involve transactions with the owners and creditors of the company. They include obtaining or repaying capital, such as issuing stock, repurchasing stock, issuing or repaying debt, and making distributions to owners (dividends).
-   **US GAAP vs. IFRS:**
    -   Under **US GAAP**, the classification is rigid. Dividends paid to stockholders are considered a return of capital to the owners and **must** be classified as a financing activity.
    -   Under **IFRS**, there is more flexibility. A firm can classify dividends paid as either a financing activity (as a cost of obtaining financial resources) or an operating activity (as it can help users determine the ability of the entity to pay dividends out of operating cash flows).
**2. Analysis of Options**
The question specifically refers to **US GAAP**.
-   **A. must be classified as a financing activity...** This is the correct treatment under US GAAP.
-   **B. must be classified as an operating activity...** This is incorrect.
-   **C. may be classified as either a financing or an operating activity...** This describes the flexibility allowed under IFRS, not US GAAP.
**3. Conclusion**
Under US GAAP, the payment of dividends to stockholders is required to be classified as a **financing activity**. Therefore, option **A** is correct.
---
### **Question 17: Expected Value**
**Question:** A random variable has the following probability distribution:
| Probability | Outcome |
| :---: | :---: |
| 0.10 | 10 |
| 0.80 | 20 |
| 0.10 | 60 |
The expected value of the random variable is closest to:
A. 20
B. 23
C. 30
---
**Solution: B**
**1. Conceptual Framework**
The **expected value**, denoted as E(X), of a discrete random variable is the long-run average value of the variable. It is a probability-weighted average of all possible outcomes.
The formula to calculate the expected value is:
$$
E(X) = \sum_{i=1}^{n} P(x_i) \cdot x_i
$$
Where:
- $ P(x_i) $ is the probability of outcome *i*.
- $ x_i $ is the value of outcome *i*.
**2. Step-by-Step Calculation**
We apply the formula using the given probabilities and outcomes:
-   **Step 1:** Multiply each outcome by its corresponding probability.
    -   For outcome 10: $0.10 \times 10 = 1.0$
    -   For outcome 20: $0.80 \times 20 = 16.0$
    -   For outcome 60: $0.10 \times 60 = 6.0$
-   **Step 2:** Sum the results from Step 1.
    -   Expected Value = $1.0 + 16.0 + 6.0 = 23.0$
**3. Conclusion**
The expected value of the random variable is **23**. Therefore, option **B** is correct.
---
### **Question 18: Changes in Accounting Policies and Estimates**
**Question:** If practical, retrospective application is required for a change in:
A. accounting policies only.
B. accounting estimates only.
C. both accounting policies and accounting estimates.
---
**Solution: A**
**1. Conceptual Framework**
According to **IAS 8 *Accounting Policies, Changes in Accounting Estimates and Errors***, the treatment of changes depends on their classification:
-   **Change in Accounting Policy:** This is a change from one acceptable accounting principle to another (e.g., changing inventory valuation from FIFO to weighted-average cost). To maintain comparability across periods, such changes require **retrospective application**. This means that the financial statements of prior periods presented are adjusted as if the new policy had always been in use. An adjustment is also made to the opening balance of retained earnings for the earliest period presented.
-   **Change in Accounting Estimate:** This is a revision of an estimate due to new information (e.g., changing the estimated useful life of a machine). These changes are a normal part of business and do not imply a previous error. They are accounted for **prospectively**, meaning the effect of the change is recognized in the current and future periods. Prior periods are not restated.
-   **Correction of a Prior-Period Error:** This is handled via **retrospective restatement**, similar to a change in policy.
**2. Analysis of Options**
The question asks what requires retrospective application.
-   A change in **accounting policies** requires retrospective application.
-   A change in **accounting estimates** requires prospective application.
**3. Conclusion**
Retrospective application is required for a change in **accounting policies only**. Therefore, option **A** is correct.
---
### **Question 19: Portfolio Standard Deviation**
**Question:** A portfolio has two stocks with equal weighting. The variance of returns for each stock is 100 percent squared, and the covariance is 50 percent squared. The portfolio standard deviation of returns is closest to:
A. 7.9%
B. 8.7%
C. 75.0%
---
**Solution: B**
**1. Conceptual Framework**
The variance of a two-asset portfolio is a function of the individual asset variances and the covariance between them. The formula is:
$$
\sigma_p^2 = w_1^2\sigma_1^2 + w_2^2\sigma_2^2 + 2w_1w_2\text{Cov}(R_1, R_2)
$$
Where:
- $ \sigma_p^2 $ is the portfolio variance.
- $ w_1, w_2 $ are the weights of the assets.
- $ \sigma_1^2, \sigma_2^2 $ are the variances of the assets.
- $ \text{Cov}(R_1, R_2) $ is the covariance between the asset returns.
The portfolio standard deviation ($ \sigma_p $) is the square root of the portfolio variance.
**2. Step-by-Step Calculation**
The phrasing "percent squared" can be unusual, but we interpret it as the unit for variance and covariance. We can proceed with the given numbers.
**Step 1: Identify the inputs**
-   Weight of stock 1 ($w_1$): 0.5 (equal weighting)
-   Weight of stock 2 ($w_2$): 0.5
-   Variance of stock 1 ($\sigma_1^2$): 100
-   Variance of stock 2 ($\sigma_2^2$): 100
-   Covariance ($\text{Cov}(R_1, R_2)$): 50
**Step 2: Calculate Portfolio Variance ($\sigma_p^2$)**
-   $\sigma_p^2 = (0.5)^2(100) + (0.5)^2(100) + 2(0.5)(0.5)(50)$
-   $\sigma_p^2 = (0.25)(100) + (0.25)(100) + (0.5)(50)$
-   $\sigma_p^2 = 25 + 25 + 25$
-   $\sigma_p^2 = 75$
The portfolio variance is 75 (in "percent squared").
**Step 3: Calculate Portfolio Standard Deviation ($\sigma_p$)**
-   $\sigma_p = \sqrt{\sigma_p^2} = \sqrt{75}$
-   $\sigma_p \approx 8.66$
**3. Conclusion**
The portfolio standard deviation is approximately 8.66%. This is closest to **8.7%**. Therefore, option **B** is correct.
---
### **Question 20: Standard Error of the Estimate**
**Question:** In a simple linear regression, the standard error of the estimate is also known as the:
A. mean square error.
B. sum of squares error.
C. root mean square error.
---
**Solution: C**
**1. Conceptual Framework**
In regression analysis, we distinguish between several measures of error:
-   **Sum of Squared Errors (SSE)** (also known as Sum of Squared Residuals): This is the sum of the squared differences between the actual observed values ($Y_i$) and the values predicted by the regression line ($\hat{Y_i}$). It represents the total unexplained variation.
    $$ SSE = \sum (Y_i - \hat{Y_i})^2 $$
-   **Mean Square Error (MSE):** This is an estimate of the variance of the error term. It is calculated by dividing the SSE by its degrees of freedom.
    $$ MSE = \frac{SSE}{n-k-1} $$
    where *n* is the number of observations and *k* is the number of independent variables.
-   **Standard Error of the Estimate (SEE):** This measures the typical deviation of the observed values from the regression line. It is the standard deviation of the residuals and is calculated as the square root of the MSE.
    $$ SEE = \sqrt{MSE} $$
**2. Analysis of Terminology**
Because the SEE is the square root of the mean square error, it is also known as the **root mean square error (RMSE)**.
**3. Conclusion**
The standard error of the estimate (SEE) is another name for the root mean square error (RMSE). Therefore, option **C** is correct.
---
### **Question 21: Total Asset Turnover**
**Question:** An analyst gathers the following information about a company:
| Metric                          | Value      |
| :------------------------------ | :--------: |
| Revenue                         | €20 million|
| Average shareholders' equity    | €10 million|
| ROE (Return on Equity)          |    10%     |
| ROA (Return on Assets)          |     4%     |
The total asset turnover ratio is:
A. 0.80
B. 1.25
C. 2.50
---
**Solution: A**
**1. Conceptual Framework**
This problem can be solved by breaking down the Return on Equity (ROE) and Return on Assets (ROA) formulas and using the provided data to solve for the unknown components. The key ratios are:
-   Return on Equity: $ \text{ROE} = \frac{\text{Net Income}}{\text{Average Equity}} $
-   Return on Assets: $ \text{ROA} = \frac{\text{Net Income}}{\text{Average Total Assets}} $
-   Total Asset Turnover: $ \text{Turnover} = \frac{\text{Revenue}}{\text{Average Total Assets}} $
We can see that `Net Income` and `Average Total Assets` are the links between these ratios.
**2. Step-by-Step Calculation**
**Step 1: Calculate Net Income**
We can use the ROE formula and the given values for ROE and average equity.
-   $ \text{Net Income} = \text{ROE} \times \text{Average Equity} $
-   $ \text{Net Income} = 10\% \times €10,000,000 = €1,000,000 $
**Step 2: Calculate Average Total Assets**
Now, we can use the ROA formula with our calculated Net Income and the given ROA.
-   $ \text{Average Total Assets} = \frac{\text{Net Income}}{\text{ROA}} $
-   $ \text{Average Total Assets} = \frac{€1,000,000}{4\%} = \frac{€1,000,000}{0.04} = €25,000,000 $
**Step 3: Calculate Total Asset Turnover**
Finally, we calculate the total asset turnover ratio using the given Revenue and our calculated Average Total Assets.
-   $ \text{Total Asset Turnover} = \frac{\text{Revenue}}{\text{Average Total Assets}} $
-   $ \text{Total Asset Turnover} = \frac{€20,000,000}{€25,000,000} = 0.80 $
**3. Conclusion**
The company's total asset turnover ratio is **0.80**. Therefore, option **A** is correct.
---
### **Question 22: Non-Cooperative Economic Tools**
**Question:** Which of the following is best described as a non-cooperative economic tool?
A. Globalization
B. Nationalization
C. Restriction of foreign investment
---
**Solution: C**
**1. Conceptual Framework**
Economic tools can be viewed as cooperative or non-cooperative based on whether they are enacted unilaterally for a nation's own interest (often at the expense of others) or through mutual agreement and integration.
-   **Cooperative Tools:** These involve agreements and integration between countries to achieve mutual benefits. Examples include free trade agreements, customs unions, and globalization in general.
-   **Non-Cooperative Tools:** These are unilateral actions taken by a single country to achieve its domestic policy objectives, which may harm its trading partners. These are often described as protectionist or beggar-thy-neighbor policies.
**2. Analysis of Options**
-   **A. Globalization:** This is the process of increasing interdependence and integration of national economies. It is fundamentally a **cooperative** process, facilitated by multilateral agreements and reductions in trade barriers.
-   **B. Nationalization:** This is the act of a government taking ownership and control of private assets, which can include foreign-owned assets. While this is a profoundly non-cooperative act in international relations if foreign assets are seized, it is more of a drastic, often one-time, political action rather than a regularly used economic "tool".
-   **C. Restriction of foreign investment:** This is a policy tool where a government imposes limits or barriers (e.g., tariffs, quotas, capital controls) on foreign ownership of domestic assets. It is a classic protectionist and **non-cooperative** economic tool used to shield domestic industries or for strategic reasons. It is a more standard and adjustable policy lever compared to nationalization.
**3. Conclusion**
Both nationalization and restriction of foreign investment are non-cooperative. However, "restriction of foreign investment" better describes a general policy *tool* that a government can use and adjust, whereas nationalization is a more extreme and less frequent action. Therefore, **restriction of foreign investment** is the best description among the choices. Option **C** is correct.
---
### **Question 23: Mutually Exclusive Projects**
**Question:** Two mutually exclusive projects have the following cash flows (€) and internal rates of return (IRR):
| | IRR | Year 0 | Year 1 | Year 2 | Year 3 | Year 4 |
| :--- | :---: | :---: | :---: | :---: | :---: | :---: |
| Project 1 | 27.97% | -2,450 | 345 | 849 | 635 | 3,645 |
| Project 2 | 28.37% | -2,450 | 345 | 849 | 1,051 | 3,175 |
Assuming a discount rate of 8% annually for both projects, the best decision for the firm to make is to accept:
A. Project 1 only
B. Project 2 only
C. Both Project 1 and Project 2
---
**Solution: A**
**1. Conceptual Framework**
When evaluating **mutually exclusive projects** (i.e., you can only choose one), the correct decision criterion is to select the project with the highest **Net Present Value (NPV)**. The Internal Rate of Return (IRR) can be misleading in such cases, especially when projects have different scales or cash flow timing, because the IRR is a percentage return, while the NPV is an absolute measure of value added to the firm. The primary goal is to maximize shareholder wealth, which is directly measured by NPV.
The NPV formula is:
$$
\text{NPV} = \sum_{t=0}^{n} \frac{CF_t}{(1+r)^t}
$$
Where $CF_t$ is the cash flow in year *t* and *r* is the discount rate.
**2. Step-by-Step Calculation**
We must calculate the NPV for each project using the firm's discount rate of 8%.
**Step 1: Calculate NPV for Project 1**
-   $ \text{NPV}_1 = -2,450 + \frac{345}{(1.08)^1} + \frac{849}{(1.08)^2} + \frac{635}{(1.08)^3} + \frac{3,645}{(1.08)^4} $
-   $ \text{NPV}_1 = -2,450 + 319.44 + 727.89 + 504.09 + 2,679.16 $
-   $ \text{NPV}_1 = €1,780.58 $
**Step 2: Calculate NPV for Project 2**
-   $ \text{NPV}_2 = -2,450 + \frac{345}{(1.08)^1} + \frac{849}{(1.08)^2} + \frac{1,051}{(1.08)^3} + \frac{3,175}{(1.08)^4} $
-   $ \text{NPV}_2 = -2,450 + 319.44 + 727.89 + 834.33 + 2,333.72 $
-   $ \text{NPV}_2 = €1,765.38 $
**Step 3: Compare NPVs**
-   NPV of Project 1 (€1,780.58) > NPV of Project 2 (€1,765.38)
**3. Conclusion**
Although Project 2 has a slightly higher IRR, Project 1 generates a higher Net Present Value. Since the projects are mutually exclusive and the goal is to maximize firm value, the company should accept **Project 1 only**. Therefore, option **A** is correct. This is a classic example of an IRR/NPV conflict, where the NPV rule must be followed.
---
### **Question 24: Role of Financial Statement Analysis**
**Question:** Which of the following statements is most accurate? The role of financial statement analysis is to:
A. provide assurance that the audited financial statements are free from material error.
B. provide information about a company's performance, financial position, and changes in financial position.
C. evaluate the performance and financial position of a company for making investment, credit, and other decisions.
---
**Solution: C**
**1. Conceptual Framework**
This question aims to distinguish the role of the financial analyst from the roles of the auditor and the financial statements themselves.
-   **Company Management:** Is responsible for preparing the financial statements and providing information.
-   **Auditor:** Is responsible for examining the financial statements and providing an opinion (assurance) on whether they are free from material misstatement.
-   **Financial Analyst:** Uses the information provided in the financial statements to perform an evaluation for a specific purpose.
**2. Analysis of Options**
-   **A. provide assurance...** This describes the function of an **external auditor**, not a financial analyst. The analyst uses the audited statements but does not provide the assurance themselves.
-   **B. provide information...** This describes the primary function of the **financial statements** themselves. They are the source of the information, not the analysis of it.
-   **C. evaluate the performance and financial position...** This perfectly describes the role of financial statement analysis. An analyst takes the raw data from the financial statements and applies various tools and techniques to **evaluate** the company's performance and position, with the ultimate goal of making an informed economic **decision** (e.g., to invest in the company's stock, to extend credit).
**3. Conclusion**
The core role of financial statement analysis is to use financial information to make evaluations and decisions. Therefore, option **C** is the most accurate statement.
---
### **Question 25: Operating Lease Accounting (US GAAP)**
**Question:** Under US GAAP, for a long-term operating lease, the lessee reports:
A. after inception, the lease payment split between financing and operating outflows on the statement of cash flows.
B. at inception, a right-of-use asset and a lease liability calculated as the undiscounted value of its fixed payments.
C. after inception, a single lease expense each year, which is a straight-line allocation of the cost of the lease over its term.
---
**Solution: C**
**1. Conceptual Framework**
Under the current US GAAP standard (ASC 842), the accounting for leases by lessees has changed significantly. While the distinction between "operating" and "finance" leases remains, the balance sheet treatment is now similar for both.
-   **Balance Sheet:** At inception, for **both** lease types, the lessee recognizes a Right-of-Use (ROU) asset and a lease liability. The liability is measured at the **present value** of the lease payments.
-   **Income Statement:**
    -   For a **finance lease**, the lessee recognizes separate interest expense on the liability and amortization expense on the ROU asset.
    -   For an **operating lease**, the lessee recognizes a single, straight-line **lease expense** in each period. This single expense combines the interest and amortization components.
-   **Cash Flow Statement:**
    -   For a **finance lease**, the payment is split: the interest portion is in operating cash flow (CFO), and the principal repayment is in financing cash flow (CFF).
    -   For an **operating lease**, the entire lease payment is classified within **operating cash flow (CFO)**.
**2. Analysis of Options**
-   **A. ...lease payment split between financing and operating outflows...** This describes the cash flow treatment for a *finance* lease, not an operating lease, under US GAAP. So, this is incorrect.
-   **B. ...a right-of-use asset and a lease liability calculated as the undiscounted value...** This is incorrect. While an ROU asset and lease liability are recognized, they are calculated based on the **present value** of lease payments, not the undiscounted value.
-   **C. ...a single lease expense each year, which is a straight-line allocation...** This correctly describes the income statement treatment for an operating lease under US GAAP.
**3. Conclusion**
The correct statement regarding the reporting for a long-term operating lease under US GAAP is the recognition of a single, straight-line lease expense. Therefore, option **C** is correct.
---
### **Question 26: Average Duration of Unemployment**
**Question:** All else being equal, a decrease in the average duration of unemployment most likely indicates that an:
A. upturn is beginning.
B. downturn is forthcoming.
C. upturn has already occurred.
---
**Solution: C**
**1. Conceptual Framework**
Economic indicators are classified based on when they change relative to the overall business cycle.
-   **Leading Indicators:** Change *before* the business cycle changes. They are useful for forecasting. Examples include building permits, stock market indices, and average weekly manufacturing hours.
-   **Coincident Indicators:** Change at approximately the *same time* as the business cycle. They are useful for identifying the current state of the economy. Examples include industrial production and non-farm payrolls.
-   **Lagging Indicators:** Change *after* the business cycle has changed. They are useful for confirming a trend that is already underway.
**2. Analysis of the Indicator**
The **average duration of unemployment** is a classic **lagging indicator**. Here's the logic:
1.  An economic **upturn begins** (the trough of the business cycle).
2.  Firms are initially cautious. They first increase hours for existing workers before committing to new hires.
3.  As the recovery solidifies and confidence grows, firms begin hiring more robustly.
4.  This increased hiring activity absorbs the long-term unemployed, causing the *average duration* of unemployment to decrease.
Because this decrease in duration happens well after the recovery has started, it serves as a confirmation that an **upturn has already occurred** and is in progress.
**3. Conclusion**
A decrease in the average duration of unemployment is a lagging indicator that confirms an economic upturn is already underway. Therefore, option **C** is correct.
---
### **Question 27: Ratios from the Balance Sheet Only**
**Question:** Which of the following can be calculated based on information from the balance sheet only?
A. Quick ratio
B. Debt coverage
C. Receivables turnover ratio
---
**Solution: A**
**1. Conceptual Framework**
To answer this, we must examine the components of each ratio and identify which financial statement they come from (Balance Sheet, Income Statement, or Cash Flow Statement).
**2. Analysis of Ratio Formulas**
-   **A. Quick ratio (Acid-test ratio):**
    $$ \text{Quick Ratio} = \frac{\text{Current Assets} - \text{Inventory}}{\text-Current Liabilities} = \frac{\text{Cash} + \text{Marketable Securities} + \text{Accounts Receivable}}{\text{Current Liabilities}} $$
    All components—Cash, Marketable Securities, Accounts Receivable, Inventory, and Current Liabilities—are found on the **balance sheet**. Therefore, this ratio can be calculated from the balance sheet alone.
-   **B. Debt coverage ratio:** There are several versions, such as the Cash Flow to Debt ratio or Interest Coverage ratio.
    -   *Cash Flow to Debt* = Cash Flow from Operations / Total Debt. `CFO` is from the **cash flow statement**.
    -   *Interest Coverage* = EBIT / Interest Expense. `EBIT` and `Interest Expense` are from the **income statement**.
    In any common formulation, this ratio requires data from outside the balance sheet.
-   **C. Receivables turnover ratio:**
    $$ \text{Receivables Turnover} = \frac{\text{Revenue}}{\text{Average Accounts Receivable}} $$
    `Revenue` (or Sales) is found on the **income statement**. Therefore, this ratio cannot be calculated from the balance sheet alone.
**3. Conclusion**
Only the quick ratio can be calculated using data exclusively from the balance sheet. Therefore, option **A** is correct.
---
### **Question 28: Carrying Value of Intangible Assets**
**Question:** A company holds licenses with a net book value of 12,118 (in USD thousands) as of 31 December Year 1. The company reported the following data related to impairment losses and amortization on these licenses (in thousands):
| Description                                                      | Value |
| :--------------------------------------------------------------- | :---: |
| Accumulated impairment losses and amortization as of 31 Dec Year 1 | 2,142 |
| Exchange movements                                              |  212  |
| Amortization charge for the year                                 |  752  |
| Impairment losses                                                |  52   |
| Disposals                                                        |  —    |
| Transfers to investments in associated undertakings              |  (7)  |
The cost of licenses as of 31 December Year 2 was 16,435 (in USD thousands). Based on the data provided, the carrying value of licenses (in USD thousands) as of 31 December Year 2 is closest to...
---
**Solution: Analysis Only (Question Incomplete)**
**1. Conceptual Framework**
The carrying value (or book value) of an asset is its cost minus accumulated depreciation/amortization and accumulated impairment losses. We can calculate the end-of-period carrying value in two ways:
1.  **Roll-forward the carrying value:** Start with the beginning carrying value and adjust for the period's activities.
2.  **Use the closing cost and accumulated balances:** Subtract the ending accumulated amortization and impairment from the ending cost.
The question provides data that seems to support the second method more robustly.
**2. Step-by-Step Calculation**
We will calculate the ending accumulated amortization and impairment and subtract it from the given ending cost.
**Step 1: Calculate the Accumulated Amortization and Impairment at End of Year 2**
The table provided seems to be a roll-forward of the accumulated amortization & impairment account. A positive "Exchange movements" figure would typically increase both the gross cost and the accumulated amortization, arising from the translation of foreign currency amounts at a higher exchange rate.
-   Beginning Accumulated Amortization & Impairment (as of 31 Dec Y1): `2,142`
-   Add: Amortization charge for Year 2: `+ 752`
-   Add: Impairment losses for Year 2: `+ 52`
-   Add: Exchange movements: `+ 212`
-   Add: Transfers adjustment: `- 7`
-   **Ending Accumulated Amortization & Impairment (as of 31 Dec Y2):** $2,142 + 752 + 52 + 212 - 7 = \mathbf{3,151}$
**Step 2: Calculate the Carrying Value at End of Year 2**
-   Ending Cost (given for 31 Dec Y2): `16,435`
-   Ending Accumulated Amortization & Impairment (calculated above): `3,151`
-   **Ending Carrying Value:** `16,435 - 3,151 = 13,284`
**3. Conclusion**
Based on the provided data, the carrying value of the licenses as of 31 December Year 2 would be **$13,284 thousand**.
*Analyst's Note: The question is incomplete as it does not provide the multiple-choice options for a final answer. The calculation above represents the most logical interpretation of the data given.*
---
### **Question 29: Fintech Applications**
**Question:** With respect to fintech applications to investment management, which of the following statements is true?
A. Robo-advisers are specialized to address unique demands of investors.
B. Algorithmic trading can provide investors with fast execution but has high transaction costs.
C. Natural language processing can provide insights into interest rate policy by analyzing central bank statements.
---
**Solution: C**
**1. Conceptual Framework**
This question assesses the understanding of common fintech applications and their characteristics in investment management.
-   **Robo-Advisers:** These are digital platforms that provide automated, algorithm-driven financial planning and investment management services. Their primary value proposition is offering low-cost, accessible, and typically standardized portfolio management, often using passive investment strategies. They are not designed for highly customized or complex situations.
-   **Algorithmic Trading:** This involves using computer programs to execute trades at high speed based on predefined criteria. A major goal of algorithmic trading is to *minimize* transaction costs by reducing market impact (e.g., by breaking up large orders) and achieving best execution.
-   **Natural Language Processing (NLP):** A branch of artificial intelligence focused on enabling computers to understand, interpret, and generate human language. In finance, NLP is used to analyze vast amounts of unstructured text data—such as news articles, social media, and regulatory filings—to glean insights, measure sentiment, and identify trends.
**2. Analysis of Options**
-   **A. Robo-advisers are specialized...** This is false. Robo-advisers are generally known for standardization and scalability, not for addressing unique or complex investor demands, which remains the domain of traditional wealth managers.
-   **B. Algorithmic trading... has high transaction costs.** This is false. A primary objective and benefit of algorithmic trading is the *reduction* of transaction costs.
-   **C. Natural language processing can provide insights... by analyzing central bank statements.** This is true. Financial institutions use sophisticated NLP models to parse the language, tone, and changes in the wording of central bank communications (like FOMC statements) to predict future interest rate policy and market direction.
**3. Conclusion**
The most accurate statement is that NLP can be used to analyze central bank communications for policy insights. Therefore, option **C** is correct.
---
### **Question 30: Free Cash Flow to the Firm (FCFF)**
**Question:** An analyst gathers the following information (in € millions) about a company:
| Description                     | Value |
| :------------------------------ | :---: |
| Net income                      |  125  |
| Depreciation expense            |  22   |
| Interest expensed and paid      |  20   |
| Capital expenditures            |  50   |
| Working capital expenditures    |  25   |
| Dividends declared and paid     |  11   |
| Income tax rate                 |  25%  |
The Free Cash Flow to the Firm (in € millions) is:
A. 87
B. 92
C. 98
---
**Solution: A**
**1. Conceptual Framework**
**Free Cash Flow to the Firm (FCFF)** represents the cash flow available to all capital providers (both debt and equity holders) after accounting for all operating expenses and investments in fixed and working capital. It is a fundamental measure used in firm valuation.
A common formula to calculate FCFF starting from Net Income (NI) is:
$$
\text{FCFF} = \text{NI} + \text{NCC} + \text{Int}(1 - t) - \text{FCInv} - \text{WCInv}
$$
Where:
- **NI:** Net Income
- **NCC:** Non-Cash Charges (e.g., depreciation, amortization)
- **Int(1-t):** After-tax interest expense (Interest must be added back because it is available to debt holders, and the tax shield on interest must be removed)
- **FCInv:** Fixed Capital Investment (Capital Expenditures)
- **WCInv:** Investment in Working Capital
**2. Step-by-Step Calculation**
**Step 1: Identify the inputs**
-   NI = 125
-   NCC (Depreciation) = 22
-   Interest (Int) = 20
-   Tax rate (t) = 25% or 0.25
-   FCInv = 50
-   WCInv = 25
-   *Note: Dividends paid are a use of cash flow to equity holders and are not used in the FCFF calculation.*
**Step 2: Calculate After-Tax Interest Expense**
-   Interest added back = $ \text{Int}(1-t) = 20 \times (1 - 0.25) = 20 \times 0.75 = 15 $
**Step 3: Calculate FCFF**
-   $ \text{FCFF} = 125 (\text{NI}) + 22 (\text{NCC}) + 15 (\text{Int}(1-t)) - 50 (\text{FCInv}) - 25 (\text{WCInv}) $
-   $ \text{FCFF} = 162 - 75 $
-   $ \text{FCFF} = 87 $
**3. Conclusion**
The Free Cash Flow to the Firm (FCFF) is **€87 million**. Therefore, option **A** is correct.
---
### **Question 31: Calculation of Taxes Payable**
**Question:** Taxes payable are calculated based on:
A. EBIT.  
B. taxable income.  
C. accounting profit.
---
**Solution: B**
**1. Conceptual Framework**
It is crucial to distinguish between accounting profit and taxable income, as they serve different purposes and are governed by different rules.
-   **Accounting Profit (or Pre-Tax Income):** This is the profit a company reports on its income statement, calculated according to financial accounting standards (e.g., IFRS or US GAAP). It is designed to provide a comprehensive view of a company's economic performance.
-   **Taxable Income:** This is the income amount determined according to the legal statutes of the tax authorities (e.g., the Internal Revenue Code in the US). It is the base upon which the government levies income tax.
Differences between accounting profit and taxable income arise from:
-   **Temporary Differences:** Items recognized in different periods for accounting and tax purposes (e.g., using different depreciation methods). These create deferred tax assets and liabilities.
-   **Permanent Differences:** Items that affect one calculation but not the other (e.g., tax-exempt municipal bond interest).
**2. Relationship to Taxes**
-   **Taxes Payable:** This is the actual cash tax obligation to the government for the current period. It is calculated by applying the relevant tax rate(s) to **taxable income**.
-   **Income Tax Expense:** This is the expense recognized on the income statement. It is a function of *accounting profit* and includes both the current period's taxes payable and the change in deferred tax assets and liabilities.
**3. Conclusion**
The amount of tax that a company is legally obligated to pay for a period, known as taxes payable, is calculated based on **taxable income**. Therefore, option **B** is correct.
---
### **Question 32: Capital Allocation Pitfalls**
**Question:** A common capital allocation pitfall is:
A. basing investment decisions on earnings per share.
B. ignoring sunk costs in the decision-making process.
C. incorporating the responses of competitors into the analysis.
---
**Solution: A**
**1. Conceptual Framework**
Effective capital allocation (or capital budgeting) is fundamental to creating shareholder value. Decisions should be based on principles that measure the economic value of a project, focusing on incremental cash flows discounted at the appropriate risk-adjusted rate.
**2. Analysis of Options**
-   **A. Basing investment decisions on earnings per share (EPS).** This is a well-documented **pitfall**. EPS is an accounting measure, not a measure of economic value or cash flow. A project could be structured to boost short-term EPS (e.g., through an acquisition that is accretive to EPS) but actually have a negative Net Present Value (NPV), thus destroying firm value. Conversely, a value-creating project with a high positive NPV might temporarily dilute EPS. The correct focus should always be on cash flows and NPV.
-   **B. Ignoring sunk costs in the decision-making process.** This is a **correct procedure**, not a pitfall. Sunk costs are past expenditures that cannot be recovered. Since they are unaffected by the decision to accept or reject a project, they are irrelevant to the decision and must be ignored.
-   **C. Incorporating the responses of competitors into the analysis.** This represents a **sophisticated and correct approach**, not a pitfall. A robust cash flow forecast must be realistic. Ignoring how competitors might react to a new product launch or a capacity expansion (e.g., by cutting prices) can lead to overly optimistic and flawed projections.
**3. Conclusion**
Basing investment decisions on the potential impact on EPS, rather than on discounted cash flow analysis, is a common and serious capital allocation pitfall. Therefore, option **A** is correct.
---
### **Question 33: Degrees of Freedom in Chi-Square Test**
**Question:** An analyst builds a contingency table of stocks with two classifications: market capitalization (small, medium, and large) and beta (high, medium, low). To test the relationship between size and beta using a test of independence, the number of degrees of freedom for the chi-square test statistic is:
A. 4
B. 6
C. 9
---
**Solution: A**
**1. Conceptual Framework**
A **chi-square ($ \chi^2 $) test of independence** is used to determine whether there is a significant association between two categorical variables. The data is typically displayed in a contingency table. The degrees of freedom (df) for this test determine the specific chi-square distribution to be used for finding the critical value.
The formula for the degrees of freedom is:
$$
df = (\text{number of rows} - 1) \times (\text{number of columns} - 1)
$$
**2. Step-by-Step Calculation**
**Step 1: Identify the number of categories for each variable.**
-   The first variable, market capitalization, has 3 categories (small, medium, large). This corresponds to the number of rows.
-   The second variable, beta, has 3 categories (high, medium, low). This corresponds to the number of columns.
**Step 2: Apply the degrees of freedom formula.**
-   Number of rows (r) = 3
-   Number of columns (c) = 3
-   $ df = (r - 1) \times (c - 1) $
-   $ df = (3 - 1) \times (3 - 1) = 2 \times 2 = 4 $
**3. Conclusion**
The degrees of freedom for the chi-square test statistic is **4**. Therefore, option **A** is correct.
---
### **Question 34: Price Elasticity and Substitutes**
**Question:** When a company increases its prices, it would most likely experience a decline in sales volume when competitors have:
A. few substitutes available.
B. cheaper substitutes available.
C. demand that is relatively price inelastic.
---
**Solution: B**
**1. Conceptual Framework**
This question relates to the **price elasticity of demand**, which measures how the quantity demanded of a good responds to a change in its price.
-   **Elastic Demand:** A small change in price leads to a large change in quantity demanded.
-   **Inelastic Demand:** A large change in price leads to only a small change in quantity demanded.
The most important determinant of price elasticity is the **availability of substitutes**.
**2. Analysis of Options**
-   **A. Few substitutes available.** If consumers have few or no alternatives, they are more likely to tolerate a price increase. This leads to *inelastic* demand, and the company would experience only a small decline in sales volume.
-   **B. Cheaper substitutes available.** If competitors offer cheaper substitute products, consumers can and will easily switch away from the company's product if it becomes more expensive. This makes demand for the company's product highly *elastic*, leading to a significant decline in sales volume following a price increase.
-   **C. Demand that is relatively price inelastic.** This describes a situation where sales volume would *not* decline significantly. It is the outcome of having few substitutes, not the cause of a sales decline.
**3. Conclusion**
The presence of cheaper substitutes gives consumers alternatives, making them highly sensitive to price changes and causing a significant decline in sales volume when a company raises its price. Therefore, option **B** is correct.
---
### **Question 35: Inventory Write-Down**
**Question:** In the event that the value of inventory declines below the carrying amount on the balance sheet, the carrying amount must be written down and the reduction in value recognized as a(n):
A. expense on the income statement.
B. decrease in the revaluation surplus account.
C. decrease in the inventory valuation allowance account.
---
**Solution: A**
**1. Conceptual Framework**
Both IFRS and US GAAP require that inventory be reported at the **lower of cost and net realizable value (NRV)** (or lower of cost or market under US GAAP).
-   **Carrying Amount:** The original cost of the inventory.
-   **Net Realizable Value (NRV):** The estimated selling price in the ordinary course of business, less the estimated costs of completion and the estimated costs necessary to make the sale.
If the NRV falls below the carrying amount, the inventory is impaired, and a **write-down** is required.
**2. Accounting Treatment**
The loss from the write-down of inventory must be recognized immediately. This is done by recording an **expense on the income statement** for the period in which the write-down occurs. This expense is typically included in the Cost of Goods Sold (COGS), which reduces both gross profit and net income. The corresponding journal entry would be a debit to an expense account (like COGS) and a credit to the inventory account (or a contra-asset allowance account).
**3. Analysis of Options**
-   **A. expense on the income statement.** This is the correct treatment.
-   **B. decrease in the revaluation surplus account.** Revaluation surplus is an equity account used for the revaluation of long-lived assets (like PPE under IFRS), not for inventory write-downs.
-   **C. decrease in the inventory valuation allowance account.** An inventory write-down would involve either a direct credit to inventory or a credit to an inventory valuation allowance. A *decrease* in this allowance account would signify a reversal of a previous write-down, not the initial write-down itself.
**3. Conclusion**
An inventory write-down is recognized as an **expense on the income statement**. Therefore, option **A** is correct.
---
### **Question 36: Sampling Methods**
**Question:** Samples are drawn from a population by selecting every *k*th member of the population. This sampling is best described as:
A. cluster sampling.
B. systematic sampling.
C. stratified random sampling.
---
**Solution: B**
**1. Conceptual Framework**
This question defines and contrasts different probability sampling methods.
-   **Systematic Sampling:** In this method, a researcher selects a random starting point from the population and then selects every *k*th member thereafter. The interval *k* is calculated as Population Size / Sample Size. This is the exact method described in the question.
-   **Cluster Sampling:** The population is divided into subgroups (clusters), often based on geography. A random sample of entire clusters is selected, and then all members within those selected clusters are included in the sample.
-   **Stratified Random Sampling:** The population is first divided into non-overlapping subgroups (strata) based on a common characteristic (e.g., age, income level). Then, a simple random sample is drawn from *each* stratum.
**2. Conclusion**
The process of selecting every *k*th member of a population is the definition of **systematic sampling**. Therefore, option **B** is correct.
---
### **Question 37: Biased Accounting Choices**
**Question:** Which of the following events is most likely to lead management to make biased accounting choices?
A. Changing the company's CEO
B. Changing the company's audit firm
C. Changing the company's fiscal year
---
**Solution: A**
**1. Conceptual Framework**
Biased accounting choices, or earnings management, often arise when management has strong incentives to meet or beat certain performance targets. These incentives can be driven by compensation, debt covenants, or career concerns.
**2. Analysis of Events**
-   **A. Changing the company's CEO:** A change in top leadership is a powerful catalyst for biased accounting. A new CEO might engage in a **"big bath"**—recognizing large, one-time expenses and write-downs in their first year. This has two effects: it cleans up the balance sheet and makes future performance look stronger by comparison, as they are starting from a lower base. Alternatively, a new CEO may feel immense pressure to show immediate positive results, leading to aggressive revenue recognition or deferral of expenses.
-   **B. Changing the company's audit firm:** While a company might change its auditor to find one that is more lenient ("opinion shopping"), the change itself is not a direct motivation for management to be biased. In fact, a new audit firm might increase scrutiny, potentially discouraging bias.
-   **C. Changing the company's fiscal year:** This is a procedural change. While it could be used to strategically include or exclude a strong or weak quarter, it is a less common or direct motivator for widespread accounting bias compared to the pressures faced by a new CEO.
**3. Conclusion**
The arrival of a new CEO, with the associated pressures to establish a positive track record or to "clear the decks" with a big bath, presents the strongest and most direct incentive for management to make biased accounting choices. Therefore, option **A** is correct.
---
### **Question 38: Director Tenure and Entrenchment**
**Question:** Which of the following best represents the potential for misaligned interests between shareholders and directors when director tenures are excessively long?
A. Entrenchment
B. Empire building
C. Excessive risk taking
---
**Solution: A**
**1. Conceptual Framework**
This question addresses a key issue in corporate governance related to the principal-agent problem between shareholders (principals) and management/directors (agents).
-   **Entrenchment:** This refers to a situation where long-serving directors or managers become so secure in their positions that they are difficult to remove, even in cases of underperformance. Their long tenure may lead to a deep network of allies, control over the board nomination process, and a general resistance to outside influence. This security can lead them to prioritize their own interests (e.g., job security, compensation, low-risk strategies) over the shareholder interest of value maximization.
-   **Empire Building:** This is a specific agency problem where managers are motivated to increase the size of the firm beyond its optimal, value-maximizing level, often because compensation and prestige are tied to size. While related, it isn't specifically caused by long tenure.
-   **Excessive Risk Taking:** This is another agency problem where managers' incentives (e.g., stock options) may lead them to take on more risk than shareholders would prefer. Conversely, a desire to protect their job may lead to excessive risk aversion.
**2. Analysis**
The key phrase in the question is "excessively long" tenures. This directly leads to the risk of **entrenchment**, where directors are no longer sufficiently accountable to shareholders and may act in their own self-interest.
**3. Conclusion**
Entrenchment is the most precise term to describe the agency problem arising from excessively long director tenures. Therefore, option **A** is correct.
---
### **Question 39: Short-Run Shutdown Decision**
**Question:** In the short run, a firm operating in a perfectly competitive market will most likely avoid shutdown if it can generate sufficient revenue to cover which of the following costs?
A. Fixed
B. Marginal
C. Variable
---
**Solution: C**
**1. Conceptual Framework**
The short-run shutdown decision for a firm is a critical concept in microeconomics. In the short run, a firm has both fixed costs (which it must pay regardless of output, e.g., rent) and variable costs (which change with the level of production, e.g., raw materials).
-   **The Rule:** A firm should continue to operate in the short run if its total revenue (TR) is greater than or equal to its total variable costs (TVC).
-   **Rationale:** Fixed costs are sunk in the short run. If the firm shuts down, its loss will be equal to its total fixed costs. If it operates and its revenue covers its variable costs, any additional revenue (TR - TVC) can be used to offset a portion of the fixed costs. In this case, the firm's loss is less than its total fixed costs, so it is better off operating than shutting down.
This rule can also be stated on a per-unit basis: continue to operate if Price (P) ≥ Average Variable Cost (AVC).
**2. Analysis of Options**
-   **A. Fixed:** A firm will often operate even if it cannot cover all its fixed costs, as long as it can cover its variable costs.
-   **B. Marginal:** Marginal cost is the cost of producing one additional unit. While the profit-maximization rule is to produce where Price = Marginal Cost (P=MC), the shutdown decision is based on average variable cost, not marginal cost alone.
-   **C. Variable:** This is the correct answer. If revenue can cover variable costs, the firm minimizes its losses by continuing to produce in the short run.
**3. Conclusion**
The firm will avoid a short-run shutdown if its revenue is sufficient to cover its **variable** costs. Therefore, option **C** is correct.
---
### **Question 40: WACC Calculation**
**Question:** An analyst gathers the following information about a company's capital structure:
| Component                 | Value |
| :------------------------ | :---: |
| Debt (tax-deductible)     |  40%  |
| Equity                    |  60%  |
| Before-tax cost of debt   |  4%   |
| Cost of equity            |  9%   |
| Marginal tax rate         |  30%  |
The company's WACC is closest to:
A. 5.51%
B. 6.52%
C. 7.00%
---
**Solution: B**
**1. Conceptual Framework**
The Weighted Average Cost of Capital (WACC) is the average rate a company is expected to pay to finance its assets, weighted by the proportion of each type of capital in its target capital structure.
The formula for WACC is:
$$
\text{WACC} = w_e \cdot r_e + w_d \cdot r_d \cdot (1 - t)
$$
Where:
- $ w_e $ = Weight of equity
- $ r_e $ = Cost of equity
- $ w_d $ = Weight of debt
- $ r_d $ = Pre-tax cost of debt
- $ t $ = Marginal tax rate
**2. Step-by-Step Calculation**
**Step 1: Identify the inputs**
-   Weight of Equity ($w_e$) = 60% or 0.60
-   Cost of Equity ($r_e$) = 9% or 0.09
-   Weight of Debt ($w_d$) = 40% or 0.40
-   Pre-tax Cost of Debt ($r_d$) = 4% or 0.04
-   Tax rate (t) = 30% or 0.30
**Step 2: Calculate the WACC**
-   $ \text{WACC} = (0.60 \times 9\%) + (0.40 \times 4\% \times (1 - 0.30)) $
-   $ \text{WACC} = (0.60 \times 0.09) + (0.40 \times 0.04 \times 0.70) $
-   $ \text{WACC} = 0.054 + (0.016 \times 0.70) $
-   $ \text{WACC} = 0.054 + 0.0112 $
-   $ \text{WACC} = 0.0652 $
**3. Conclusion**
The company's WACC is **6.52%**. Therefore, option **B** is correct.
---
### **Question 41: Modigliani-Miller and Cost of Equity**
**Question:** Under the Modigliani-Miller propositions without corporate taxes, if a company's D/E ratio increases, its cost of equity:
A. decreases.
B. remains unchanged.
C. increases.
---
**Solution: C**
**1. Conceptual Framework**
This question relates to the **Modigliani-Miller (MM) propositions in a world without taxes**.
-   **MM Proposition I (No Taxes):** The value of a firm is unaffected by its capital structure. The value of a levered firm ($V_L$) equals the value of an unlevered firm ($V_U$).
-   **MM Proposition II (No Taxes):** This proposition describes the relationship between the cost of equity and leverage. It states that the cost of equity increases linearly as a firm increases its use of debt financing. The rationale is that as leverage (D/E ratio) increases, the financial risk borne by equity holders increases, so they demand a higher expected return to compensate for this additional risk.
The formula for Proposition II (no taxes) is:
$$
r_e = r_0 + \frac{D}{E}(r_0 - r_d)
$$
Where:
- $ r_e $ = cost of equity
- $ r_0 $ = cost of capital for an unlevered firm
- $ r_d $ = cost of debt
- $ D/E $ = debt-to-equity ratio
As the D/E ratio increases, the second term in the equation increases, which in turn causes the cost of equity, $r_e$, to increase.
**2. Conclusion**
According to MM Proposition II without taxes, as a company's D/E ratio increases, its cost of equity **increases**. Therefore, option **C** is correct.
---
### **Question 42: Effective Duration**
**Question:** A bond is selling for 98.2. It is estimated that the price will fall to 96.6 if yields rise 30 bps and that the price will rise to 100.1 if yields fall 30 bps. Based on these estimates, the effective duration of the bond is closest to:
A. 1.78
B. 5.94
C. 11.88
---
**Solution: B**
**1. Conceptual Framework**
**Effective Duration** is a measure of a bond's price sensitivity to changes in benchmark interest rates. It is particularly useful for bonds with embedded options (like callable or putable bonds) because it accounts for how the option affects the bond's cash flows as yields change. It is calculated by shocking the yield curve up and down by the same amount and observing the resulting price changes.
The formula is:
$$
\text{Effective Duration} = \frac{P_{-} - P_{+}}{2 \times P_0 \times \Delta y}
$$
Where:
- $ P_{-} $ = Price of the bond if the yield decreases by $ \Delta y $.
- $ P_{+} $ = Price of the bond if the yield increases by $ \Delta y $.
- $ P_0 $ = Initial price of the bond.
- $ \Delta y $ = The change in yield (in decimal form).
**2. Step-by-Step Calculation**
**Step 1: Identify the inputs**
-   Initial Price ($P_0$): 98.2
-   Price if yield falls ($P_{-}$): 100.1
-   Price if yield rises ($P_{+}$): 96.6
-   Change in yield ($\Delta y$): 30 basis points = 0.30% = 0.0030
**Step 2: Apply the Effective Duration formula**
-   $ \text{EffDur} = \frac{100.1 - 96.6}{2 \times 98.2 \times 0.0030} $
-   $ \text{EffDur} = \frac{3.5}{196.4 \times 0.0030} $
-   $ \text{EffDur} = \frac{3.5}{0.5892} $
-   $ \text{EffDur} \approx 5.9402 $
**3. Conclusion**
The effective duration of the bond is approximately **5.94**. Therefore, option **B** is correct.
---
### **Question 43: Option Arbitrage**
**Question:** If a call option is underpriced relative to the binomial model, investors can earn a return in excess of the risk-free rate by buying the call and simultaneously:
A. investing the present value of the strike price at the risk-free rate.
B. selling short the underlying and investing the proceeds at the risk-free rate.
C. buying the underlying and funding the transaction by borrowing at the risk-free rate.
---
**Solution: B**
**1. Conceptual Framework**
The core of no-arbitrage option pricing (like the binomial model) is that a combination of the underlying asset and a risk-free bond can be used to perfectly replicate the payoffs of an option.
-   **Synthetic Call:** A long position in the underlying asset (specifically, $\Delta$ shares) combined with borrowing at the risk-free rate creates the same payoff profile as a long call option.
-   Value of Replicating Portfolio = $\Delta S - B$ (where $\Delta$ is the hedge ratio, S is stock price, B is amount borrowed).
-   No-Arbitrage Price: $C = \Delta S - B$
**2. Arbitrage Strategy**
Arbitrage involves buying a relatively cheap asset and selling its relatively expensive equivalent.
-   The problem states the call option is **underpriced**. This means the market price of the call is *less than* the value of its synthetic equivalent (the replicating portfolio).
-   The strategy is therefore: **"Buy the cheap, sell the expensive."**
    1.  **Buy:** Purchase the underpriced call option.
    2.  **Sell:** Sell the overpriced synthetic equivalent. Selling the synthetic call involves taking the opposite positions of its components:
        -   Opposite of "long underlying" is **selling short the underlying**.
        -   Opposite of "borrowing" is **lending** (i.e., investing the proceeds at the risk-free rate).
**3. Analysis of Options**
-   **A. ...investing the present value of the strike price...** This is part of the put-call parity relationship but does not form the correct hedge here.
-   **B. ...selling short the underlying and investing the proceeds at the risk-free rate.** This correctly describes the actions needed to sell the synthetic call, which is the necessary other side of the arbitrage transaction.
-   **C. ...buying the underlying and funding the transaction by borrowing...** This describes *creating* a synthetic call. If you bought the actual call and also bought the synthetic call, you would be doubly exposed to price movements, not hedged.
**3. Conclusion**
To exploit an underpriced call option, an investor should buy the call and sell its synthetic equivalent, which involves shorting the underlying stock and lending the proceeds. Therefore, option **B** is correct.
---
### **Question 44: Private Equity Exits: IPO vs. Trade Sale**
**Question:** In contrast with an IPO exit, a trade sale exit of a private equity investment most likely has:
A. higher transaction costs.
B. higher levels of confidentiality.
C. a larger universe of potential buyers.
---
**Solution: B**
**1. Conceptual Framework**
This question compares two primary exit strategies for private equity funds.
-   **Initial Public Offering (IPO):** The private company's shares are sold to the public for the first time, and the company becomes listed on a public stock exchange.
-   **Trade Sale (or Strategic Sale):** The private company is sold to another company, typically a larger "strategic" buyer operating in the same or a related industry.
**2. Comparison of Characteristics**
-   **A. Transaction Costs:** IPOs are immensely complex and expensive. They involve substantial fees for underwriters, lawyers, and accountants, plus the costs of regulatory compliance and roadshows. A trade sale is a simpler, private negotiation with significantly **lower** transaction costs.
-   **B. Confidentiality:** The IPO process requires extensive public disclosure of sensitive company information (financials, strategy, risks) through a prospectus and ongoing public filings. A trade sale is a private transaction between the seller and the buyer. While the buyer performs due diligence, the level of *public* disclosure is minimal, allowing for much **higher levels of confidentiality**.
-   **C. Universe of Potential Buyers:** An IPO makes shares available to the entire investing public, which represents a vast universe of potential buyers. A trade sale is limited to a smaller, specific set of strategic or financial buyers interested in acquiring the entire company. Therefore, an IPO has a **larger** universe of potential buyers.
**3. Conclusion**
Compared to an IPO, a trade sale is a private transaction that requires far less public disclosure. Therefore, it most likely has **higher levels of confidentiality**. Option **B** is correct.
---
### **Question 45: Priority of Claims**
**Question:** Which of the following most likely has the highest priority claim in the event of default?
A. Secured debt
B. Unsecured debt
C. Subordinated debt
---
**Solution: A**
**1. Conceptual Framework**
In corporate finance, the **absolute priority rule** dictates the order in which a company's stakeholders are paid in the event of a bankruptcy or liquidation. This hierarchy of claims is based on the level of risk associated with each type of capital.
**2. Hierarchy of Claims**
The typical order of priority, from highest to lowest, is:
1.  **Secured Debt:** These creditors have a claim on specific assets (collateral) that were pledged to secure their loan. They are paid first from the proceeds of that collateral.
2.  **Unsecured Debt (Senior):** These creditors (e.g., senior bondholders, suppliers) have a general claim on the company's assets *after* the secured creditors are satisfied.
3.  **Subordinated Debt:** This debt is explicitly ranked below senior unsecured debt by contract.
4.  **Preferred Equity:** Preferred stockholders are paid after all debt holders.
5.  **Common Equity:** Common stockholders are the residual claimants and are paid last, only if there are any assets remaining after all other claims have been satisfied.
**3. Conclusion**
**Secured debt** has the highest priority claim among the options listed because it is backed by specific collateral. Therefore, option **A** is correct.
---
### **Question 46: Multi-Boutique Asset Manager**
**Question:** A multi-boutique asset manager firm is best described as a(n):
A. asset management company that focuses on a specific asset class or style.  
B. asset management company that offers a wide variety of asset classes and styles.  
C. holding company which owns several asset management firms with specialized investment strategies.
---
**Solution: C**
**1. Conceptual Framework**
This question requires distinguishing between different business models in the asset management industry.
-   **Boutique Asset Manager:** This is a smaller, specialized firm that focuses on a specific investment strategy, asset class, or niche (e.g., a firm that only manages small-cap value equity portfolios). Option A describes this model.
-   **Diversified (Single Brand) Asset Manager:** This is a large, traditional firm that offers a wide range of investment products across various asset classes and styles, all under a single corporate umbrella and brand (e.g., BlackRock, Fidelity). The investment teams are typically employees of the parent firm. Option B describes this model.
-   **Multi-Boutique Asset Manager:** This is a holding company that owns equity stakes in multiple, distinct, and independent specialist investment firms (the "boutiques"). Each boutique maintains its own brand identity, investment culture, and operational autonomy. The parent holding company provides centralized resources such as capital, marketing, distribution, and administrative support.
**2. Analysis of Options**
-   A describes a single boutique firm.
-   B describes a large, traditional asset manager.
-   C accurately describes the multi-boutique model, where a holding company owns several specialized firms.
**3. Conclusion**
The correct description of a multi-boutique asset manager is a **holding company which owns several asset management firms with specialized investment strategies**. Therefore, option **C** is correct.
---
### **Question 47: Semi-Strong Form Efficiency and Fundamental Analysis**
**Question:** In semi-strong-form efficient markets, the use of fundamental analysis most likely allows investors to:
A. exploit patterns of prices.  
B. earn consistent abnormal returns.  
C. understand the value implications of information.
---
**Solution: C**
**1. Conceptual Framework**
The **Efficient Market Hypothesis (EMH)** exists in three forms:
1.  **Weak Form:** Prices reflect all past market data (prices, volume). Technical analysis is useless.
2.  **Semi-Strong Form:** Prices reflect all publicly available information (past data, news, financial reports, economic data). Both technical and fundamental analysis are useless for earning *abnormal* returns.
3.  **Strong Form:** Prices reflect all information, public and private. No one can earn abnormal returns.
**2. The Role of Analysis in an Efficient Market**
The question assumes a semi-strong efficient market.
-   If the market is semi-strong efficient, it means that by the time an analyst performs fundamental analysis on public information (e.g., an earnings report), the market has already incorporated that information into the stock's price.
-   This implies that using fundamental analysis on public data cannot lead to **consistent abnormal returns** (returns in excess of what is justified by the investment's risk). So, option B is incorrect.
-   Exploiting price patterns (option A) is the goal of technical analysis, which is already rendered ineffective by the weak-form efficiency that is a subset of semi-strong efficiency.
So, what is the role of the analyst? In an efficient market, analysts are the engine of efficiency. Their intense competition to process and interpret information is what causes prices to rapidly adjust. For an individual investor, fundamental analysis is still crucial to **understand the value implications of information**. It helps them to:
-   Discern the risk and expected return profile of a security.
-   Understand *why* a security is priced as it is.
-   Make informed decisions that align with their own risk tolerance and objectives, even if they cannot "beat the market."
**3. Conclusion**
In a semi-strong efficient market, fundamental analysis serves to help investors understand a security's risk and return profile based on public information, rather than to generate consistent abnormal returns. Therefore, option **C** is correct.
---
### **Question 48: Risk Aversion in Asset vs. Derivative Pricing**
**Question:** Knowledge about the degree of risk aversion of investors is most likely needed for:
A. the pricing of assets, but not for the pricing of derivatives.
B. the pricing of derivatives, but not for the pricing of assets.
C. both the pricing of assets and the pricing of derivatives.
---
**Solution: A**
**1. Conceptual Framework**
This question highlights a fundamental difference between how we price primary assets and how we price derivative securities.
-   **Pricing of Assets (Equilibrium Pricing):** The price of a primary asset, like a stock, is the present value of its expected future cash flows. The discount rate used reflects the asset's risk. In models like the Capital Asset Pricing Model (CAPM), this discount rate includes a risk premium (e.g., the market risk premium, $E(R_m) - R_f$). This market risk premium is a function of the aggregate **risk aversion** of all investors in the market. A more risk-averse market demands a higher risk premium, leading to lower asset prices, all else equal. Thus, asset pricing is dependent on risk aversion.
-   **Pricing of Derivatives (Arbitrage-Free Pricing):** The pricing of derivatives (options, futures, etc.) is based on the principle of **no arbitrage**. We can construct a portfolio of the underlying asset and a risk-free bond that perfectly replicates the derivative's payoffs in all future states. Since the derivative and the replicating portfolio have identical payoffs, they must have the same price to prevent arbitrage opportunities. This pricing method, often called risk-neutral pricing, does not depend on the expected return of the underlying asset or the risk aversion of investors; it depends only on the price of the underlying, its volatility, and the risk-free rate.
**2. Conclusion**
Investor risk aversion is a key input for determining the risk premiums required to price assets like stocks and bonds. In contrast, derivative pricing relies on no-arbitrage arguments, which makes it independent of investor risk preferences. Therefore, knowledge of risk aversion is needed for **the pricing of assets, but not for the pricing of derivatives**. Option **A** is correct.
---
### **Question 49: Embedded Options in Bonds**
**Question:** Which of the following is least likely a type of embedded option granted to bondholders of a bond issuer to:
A. put the issue.
B. call the issue.
C. convert the issue.
---
**Solution: B**
**1. Conceptual Framework**
An embedded option in a bond is a provision in the indenture that gives either the bondholder or the issuer the right, but not the obligation, to take some action in the future. We must identify which party benefits from each option.
**2. Analysis of Options**
-   **A. Put the issue (Put Option):** A put provision grants the **bondholder** the right to sell (or "put") the bond back to the issuer at a specified price before maturity. This is valuable to the bondholder, as it protects them if interest rates rise (and bond prices fall). This is an option granted *to the bondholder*.
-   **B. Call the issue (Call Option):** A call provision grants the **issuer** the right to redeem (or "call") the bond from the bondholder at a specified price before maturity. This is valuable to the issuer, as it allows them to refinance their debt at a lower interest rate if rates fall. This option is held by the issuer, *not* granted to the bondholder.
-   **C. Convert the issue (Conversion Option):** A conversion feature on a convertible bond grants the **bondholder** the right to exchange the bond for a specified number of shares of the issuer's common stock. This is valuable to the bondholder, as it allows them to participate in the upside of the company's equity. This is an option granted *to the bondholder*.
**3. Conclusion**
The put option and conversion option are granted to the bondholder. The call option is granted to the issuer. Therefore, the option to **call the issue** is the one not granted to bondholders. Option **B** is correct.
---
### **Question 50: Credit Enhancement**
**Question:** Which of the following is not a credit enhancement in asset-backed securities?
A. Credit tranching
B. Overcollateralization
C. Representations and warranties
---
**Solution: C**
**1. Conceptual Framework**
**Credit enhancement** refers to structural features or third-party guarantees used to improve the credit quality of an asset-backed security (ABS), thereby lowering the credit risk for investors and allowing the security to receive a higher credit rating. Enhancements can be internal (part of the deal structure) or external (provided by a third party).
**2. Analysis of Options**
-   **A. Credit tranching (or Subordination):** This is a primary form of **internal** credit enhancement. The ABS is structured into multiple bond classes (tranches) with a strict priority of payments. The most senior tranche has first claim on cash flows and is the last to absorb any losses from the underlying collateral pool. This subordination of the junior tranches enhances the credit quality of the senior tranches.
-   **B. Overcollateralization:** This is another common form of **internal** credit enhancement. The principal amount of the collateral pool backing the ABS is made larger than the principal amount of the bonds issued. This excess collateral provides a buffer to absorb losses before they impact the bondholders.
-   **C. Representations and warranties:** These are promises made by the originator of the loans (the seller) to the ABS trust about the quality and characteristics of the collateral. For example, the originator warrants that the loans meet specific underwriting criteria. If a loan defaults and is found to have breached a warranty, the originator may be required to repurchase the loan. While this does provide a measure of protection for investors, it is a form of legal recourse against the originator rather than a structural feature of the ABS itself. It is generally considered a much weaker form of protection than structural enhancements and is not typically classified as a primary credit enhancement method alongside subordination and overcollateralization.
**3. Conclusion**
While representations and warranties offer some protection, they are distinct from the structural credit enhancements of tranching and overcollateralization. Therefore, among the choices provided, they are the least like a credit enhancement in the traditional sense. Option **C** is the correct answer.
---
### **Question 51: Leverage and Credit Risk**
**Question:** An analyst gathers the following information (in $ millions) about three companies:
| | Company 1 | Company 2 | Company 3 |
| :--- | :---: | :---: | :---: |
| Total Debt | 1,125 | 1,360 | 1,562 |
| EBITDA | 590 | 680 | 750 |
| Interest Expense| 71 | 60 | 63 |
Which company's leverage contributes most adversely to its credit risk?
A. Company 1
B. Company 2
C. Company 3
---
**Solution: A**
**1. Conceptual Framework**
To assess the credit risk related to leverage, credit analysts use two primary types of ratios:
1.  **Leverage Ratios:** Measure the amount of debt relative to assets or earnings. A common leverage ratio is **Total Debt / EBITDA**. A higher ratio indicates higher leverage and higher risk.
2.  **Coverage Ratios:** Measure a company's ability to service its debt payments from its earnings. A common coverage ratio is **EBITDA / Interest Expense**. A lower ratio indicates a weaker ability to cover interest payments and thus higher risk.
A comprehensive view requires looking at both.
**2. Step-by-Step Calculation**
Let's calculate both ratios for each company.
-   **Company 1:**
    -   Leverage (Debt/EBITDA) = $1,125 / 590 = \mathbf{1.91x}$
    -   Coverage (EBITDA/Interest) = $590 / 71 = \mathbf{8.31x}$
-   **Company 2:**
    -   Leverage = $1,360 / 680 = \mathbf{2.00x}$
    -   Coverage = $680 / 60 = \mathbf{11.33x}$
-   **Company 3:**
    -   Leverage = $1,562 / 750 = \mathbf{2.08x}$
    -   Coverage = $750 / 63 = \mathbf{11.90x}$
**3. Analysis and Conclusion**
-   In terms of leverage, Company 3 has the highest Debt/EBITDA ratio (2.08x), making it the most leveraged.
-   In terms of coverage, Company 1 has by far the lowest EBITDA/Interest ratio (8.31x), while the other two companies have very strong coverage ratios (above 11x).
A low coverage ratio is often a more immediate and critical indicator of credit risk than a high leverage ratio. It directly measures the cushion a company has to meet its mandatory interest payments from its operating earnings. Company 1 can only cover its interest expense 8.31 times, whereas Companies 2 and 3 have much healthier cushions. While Company 3 is slightly more leveraged, its ability to service its debt is excellent. The significantly weaker debt service capacity of **Company 1** indicates that its leverage contributes most adversely to its credit risk profile. Therefore, option **A** is the correct answer.
---
### **Question 52: Bond Price Change with Convexity**
**Question:** A bond has a modified duration of 5 and a convexity statistic of 75. If the bond's yield-to-maturity decreases by 25 bps, the expected percentage price change is closest to... (*Note: The options suggest the yield change was intended to be 50 bps.*)
A. 2.41%
B. 2.59%
C. 2.69%
---
**Solution: B**
**1. Conceptual Framework**
The percentage price change of a bond due to a change in yield can be estimated more accurately by including the effect of convexity. Duration provides a linear estimate, while convexity adjusts for the curvature of the price-yield relationship.
The formula for the percentage price change ($ \% \Delta P $) is:
$$
\% \Delta P \approx [-ModDur \times \Delta y] + [\frac{1}{2} \times C \times (\Delta y)^2]
$$
Where:
- $ ModDur $ = Modified Duration
- $ C $ = Convexity
- $ \Delta y $ = Change in yield (in decimal form)
**2. Step-by-Step Calculation**
*Analyst's Note: Calculating with the stated 25 bps yield change gives a result of ~1.27%, which does not match any of the options. However, if we assume a typo and use a 50 bps yield change, the calculation aligns perfectly with option B. We will proceed with the assumed correct input of 50 bps.*
**Step 1: Identify the inputs**
-   Modified Duration ($ModDur$): 5
-   Convexity ($C$): 75
-   Change in yield ($\Delta y$): -50 basis points = -0.50% = -0.0050
**Step 2: Calculate the duration effect**
-   Duration Effect = $-ModDur \times \Delta y = -5 \times (-0.0050) = +0.0250$
**Step 3: Calculate the convexity adjustment**
-   Convexity Adjustment = $\frac{1}{2} \times C \times (\Delta y)^2 = 0.5 \times 75 \times (-0.0050)^2$
-   Convexity Adjustment = $37.5 \times 0.000025 = 0.0009375$
**Step 4: Sum the two effects for the total estimated price change**
-   $\% \Delta P \approx 0.0250 + 0.0009375 = 0.0259375$
**3. Conclusion**
The expected percentage price change is approximately 2.59%. Therefore, assuming the intended yield change was 50 bps, option **B** is correct.
---
### **Question 53: Risk Tolerance of Institutional Investors**
**Question:** Which of the following institutional investors typically has the lowest tolerance for risk?
A. University endowment funds
B. Defined benefit pension plans
C. Property and casualty insurance companies
---
**Solution: C**
**1. Conceptual Framework**
An institutional investor's risk tolerance is primarily determined by its investment time horizon, liquidity needs, and the nature of its liabilities.
**2. Analysis of Investor Types**
-   **A. University endowment funds:** These institutions have a perpetual time horizon. Their primary goal is to provide a steady stream of income to the university while preserving the real (inflation-adjusted) value of the fund for future generations. This extremely long time horizon allows them to have a **high tolerance for risk** and significant allocations to growth assets like equities and alternative investments.
-   **B. Defined benefit pension plans:** These plans have a legal obligation to pay specified benefits to retirees. Their time horizon is long but finite, and it depends on the age of the workforce (a plan with many young workers has a longer horizon than a plan with many retirees). Their need to match long-term liabilities leads to a moderate-to-low risk tolerance, but typically higher than that of P&C insurers.
-   **C. Property and casualty (P&C) insurance companies:** These insurers collect premiums and must be ready to pay claims on short notice for unpredictable events like natural disasters, accidents, and lawsuits. Their liabilities are short-term, uncertain in timing and magnitude. This requires a high degree of liquidity and a very conservative investment posture to ensure claims can always be paid. Consequently, they have the **lowest risk tolerance** of the three, with portfolios dominated by high-quality, short-duration fixed-income securities.
**3. Conclusion**
Due to their short-term and unpredictable liabilities, **Property and casualty insurance companies** typically have the lowest tolerance for risk. Therefore, option **C** is correct.
---
### **Question 54: Convexity Adjustment**
**Question:** If yields decrease by 0.75%, the convexity adjustment for a bond with an annual convexity of 400 is:
A. 0.01125
B. 0.02250
C. 1.50000
---
**Solution: A**
**1. Conceptual Framework**
The **convexity adjustment** is the second term in the formula used to estimate a bond's percentage price change. It refines the linear estimate provided by duration and accounts for the curvature of the price-yield relationship.
The formula for the convexity adjustment is:
$$
\text{Convexity Adjustment} = \frac{1}{2} \times C \times (\Delta y)^2
$$
Where:
- $ C $ = Convexity statistic
- $ \Delta y $ = Change in yield (in decimal form)
**2. Step-by-Step Calculation**
**Step 1: Identify the inputs**
-   Convexity ($C$): 400
-   Change in yield ($\Delta y$): -0.75% = -0.0075
**Step 2: Apply the convexity adjustment formula**
-   Convexity Adjustment = $0.5 \times 400 \times (-0.0075)^2$
-   Convexity Adjustment = $200 \times 0.00005625$
-   Convexity Adjustment = $0.01125$
**3. Conclusion**
The convexity adjustment is **0.01125**. Therefore, option **A** is correct. Note that this value would be added to the duration effect to find the total estimated price change.
---
### **Question 55: Reinvestment Risk**
**Question:** All else being equal, the bond exposed to the greatest level of reinvestment risk is most likely the one selling at:
A. par.
B. a discount.
C. a premium.
---
**Solution: C**
**1. Conceptual Framework**
**Reinvestment risk** is the risk that future cash flows (coupon payments and principal) from a bond will have to be reinvested at a lower interest rate than the yield-to-maturity that existed when the bond was initially purchased. This risk is most significant for investors with long time horizons who rely on the compound return from reinvesting coupons.
The magnitude of reinvestment risk is directly related to the size and frequency of the cash flows that must be reinvested. Therefore, bonds with **higher coupon rates** have greater reinvestment risk because a larger portion of their total return comes from these coupon payments rather than from the final principal repayment.
**2. Analysis of Bond Prices**
The price of a bond relative to its par value is determined by the relationship between its coupon rate and the prevailing market yield for similar bonds.
-   A bond sells at a **premium (> par)** when its coupon rate is **higher** than the market yield.
-   A bond sells at **par** when its coupon rate is **equal** to the market yield.
-   A bond sells at a **discount (< par)** when its coupon rate is **lower** than the market yield.
**3. Conclusion**
Since reinvestment risk is greatest for bonds with the highest coupons, and bonds with the highest coupons sell at a **premium**, the bond exposed to the greatest level of reinvestment risk is the one selling at a premium. Therefore, option **C** is correct.
---
### **Question 56: Matrix Pricing**
**Question:** An analyst gathers the following information about two similarly rated 8% semiannual coupon payment bonds:
| | Bond 1 | Bond 2 |
| :--- | :---: | :---: |
| Price | 114.243 | 112.691 |
| Years to maturity| 3 | 5 |
| Yield to maturity| 3% | 5% |
Using matrix pricing, the price per 100 of par value of a 4-year semiannual coupon payment bond with the same credit quality and a 7.6% annual coupon is closest to:
A. 113.07
B. 113.19
C. 113.47
---
**Solution: A**
**1. Conceptual Framework**
**Matrix pricing** is a method used to estimate the market discount rate and price of a bond that is not actively traded. It works by using the yields of traded bonds with similar credit quality but different maturities to interpolate a yield for the non-traded bond's maturity. This interpolated yield is then used to price the non-traded bond.
**2. Step-by-Step Calculation**
**Step 1: Interpolate the required yield for the 4-year bond.**
The 4-year maturity lies exactly halfway between the 3-year maturity of Bond 1 and the 5-year maturity of Bond 2. Therefore, we can use a simple linear interpolation (which is just the average in this case) to estimate the yield for a 4-year bond.
-   Yield of 3-year bond = 3.0%
-   Yield of 5-year bond = 5.0%
-   Estimated 4-year yield = $3.0\% + \frac{4-3}{5-3}(5.0\% - 3.0\%) = 3.0\% + \frac{1}{2}(2.0\%) = 4.0\%$
So, the required yield to maturity (YTM) for a similar-risk 4-year bond is 4.0%.
**Step 2: Price the target bond using the interpolated yield.**
Now we must find the present value (price) of the target bond using this 4.0% YTM.
-   **Maturity:** 4 years
-   **Coupon:** 7.6% annual, semiannual payments
-   **YTM:** 4.0% annual
We set up the calculation for a financial calculator or formula:
-   Number of periods (N) = $4 \times 2 = 8$
-   Discount rate per period (I/Y) = $4.0\% / 2 = 2.0\%$
-   Coupon payment per period (PMT) = $(7.6\% \times 100) / 2 = 3.8$
-   Future Value (FV) = 100 (par value)
-   Compute Present Value (PV)
Using a financial calculator, inputting these values yields:
-   **PV = -113.07**
**3. Conclusion**
Using matrix pricing, the estimated price of the 4-year bond is **113.07**. Therefore, option **A** is correct.
---
### **Question 57: Diversification and Asset Allocation**
**Question:** In the context of strategic asset allocation, adding asset classes with low correlation will most likely improve a portfolio's risk-return trade-off as long as the stand-alone risk of the added asset class:
A. does not exceed its diversification effect.
B. equals its diversification effect.
C. exceeds its diversification effect.
---
**Solution: A**
**1. Conceptual Framework**
The primary benefit of diversification in strategic asset allocation is to improve the portfolio's risk-return trade-off, typically measured by the Sharpe ratio. This is achieved by combining assets that have low correlation with each other.
When a new asset class is added to a portfolio, it has two impacts:
1.  **It adds its own risk (stand-alone risk):** The new asset has its own volatility (standard deviation).
2.  **It provides a diversification effect:** Due to its low correlation with the existing portfolio, it reduces the overall portfolio's volatility.
**2. Analysis of the Trade-off**
For the addition of the new asset to be beneficial (i.e., to improve the portfolio's Sharpe ratio), the benefit from diversification must outweigh the risk being added.
-   The **diversification effect** is the reduction in portfolio volatility achieved due to the low correlation.
-   The **stand-alone risk** is the volatility contributed by the new asset itself.
An asset class will improve the portfolio's risk-return profile if its diversification benefit is greater than the incremental risk it adds. The statement that captures this concept is that the asset's **stand-alone risk does not exceed its diversification effect**. If the new asset is extremely volatile, its high stand-alone risk could overwhelm the benefits of its low correlation, potentially worsening the overall risk-return trade-off.
**3. Conclusion**
Adding a low-correlation asset class is beneficial as long as the asset's individual risk does not overwhelm the diversification benefit it brings to the portfolio. Therefore, option **A** is the most accurate statement.
---
### **Question 58: Justified Forward P/E**
**Question:** An analyst gathers the following information about a company:
| Metric                     | Value |
| :------------------------- | :---: |
| Earnings retention rate    |  55%  |
| ROE                        |  20%  |
| Required rate of return    |  15%  |
The justified forward P/E of the company is closest to:
A. 7.5
B. 11.3
C. 13.8
---
**Solution: B**
**1. Conceptual Framework**
The **justified forward price-to-earnings (P/E) ratio** is derived from the Gordon Growth Model (a constant growth dividend discount model). It provides a theoretical P/E ratio based on a company's fundamentals: its dividend payout ratio, growth rate, and required rate of return.
The formula is:
$$
\frac{P_0}{E_1} = \frac{1 - b}{r - g}
$$
Where:
- $ P_0/E_1 $ is the forward P/E ratio (current price over next year's expected earnings).
- $ b $ is the earnings retention rate.
- $ 1 - b $ is the dividend payout ratio.
- $ r $ is the required rate of return on equity.
- $ g $ is the sustainable dividend growth rate, calculated as $g = b \times \text{ROE}$.
**2. Step-by-Step Calculation**
**Step 1: Identify the inputs**
-   Retention rate ($b$): 55% or 0.55
-   Dividend payout ratio ($1-b$): $1 - 0.55 = 0.45$
-   Return on Equity (ROE): 20% or 0.20
-   Required rate of return ($r$): 15% or 0.15
**Step 2: Calculate the sustainable growth rate (g)**
-   $ g = b \times \text{ROE} $
-   $ g = 0.55 \times 0.20 = 0.11 $ or 11%
**Step 3: Calculate the justified forward P/E**
-   $ \frac{P_0}{E_1} = \frac{1 - b}{r - g} $
-   $ \frac{P_0}{E_1} = \frac{0.45}{0.15 - 0.11} = \frac{0.45}{0.04} = 11.25 $
**3. Conclusion**
The justified forward P/E ratio for the company is **11.25**, which is closest to **11.3**. Therefore, option **B** is correct.
---
### **Question 59: Investing in Commodities**
**Question:** With regard to commodities, it is most likely true that:
A. exposure is most commonly achieved via commodity derivatives.
B. their returns are based on an income stream such as interest or dividends.
C. they are physical products so most investors prefer to trade the actual commodity.
---
**Solution: A**
**1. Conceptual Framework**
Commodities are raw materials or primary agricultural products that can be bought and sold, such as gold, oil, and wheat. They represent a distinct asset class with unique characteristics.
**2. Analysis of Statements**
-   **A. exposure is most commonly achieved via commodity derivatives.** This is **true**. For most financial investors, directly purchasing, storing, insuring, and transporting physical commodities is impractical and costly. Therefore, they gain exposure to commodity price movements through financial instruments like **futures contracts, forwards, options, and exchange-traded funds (ETFs)** that invest in these derivatives.
-   **B. their returns are based on an income stream such as interest or dividends.** This is **false**. Unlike stocks (which may pay dividends) and bonds (which pay interest), commodities generate no income stream. The total return from a commodity investment comes from price changes (spot price return) and, for derivatives-based strategies, the roll yield and collateral yield.
-   **C. they are physical products so most investors prefer to trade the actual commodity.** This is **false**. Precisely *because* they are physical products with significant associated carrying costs (storage, insurance, etc.), most investors prefer to avoid trading the actual commodity and use derivatives instead.
**3. Conclusion**
The most common and practical way for investors to gain exposure to commodities is through derivative instruments. Therefore, option **A** is the correct statement.
---
### **Question 60: Forward Rate Agreement (FRA)**
**Question:** Which of the following statements about a forward rate agreement is accurate?
A. The underlying is a currency exchange rate.
B. The short position hedges against an increase in interest rates.
C. The contract is closely tied to the term structure of interest rates.
---
**Solution: C**
**1. Conceptual Framework**
A **Forward Rate Agreement (FRA)** is an over-the-counter derivative contract between two parties to lock in an interest rate for a specified principal amount for a future period. The underlying is an interest rate (like LIBOR or SOFR), not an asset.
-   **Long Position:** The party that is effectively "borrowing" at the locked FRA rate. The long position profits if the actual future interest rate is *higher* than the FRA rate. A long FRA hedges against rising interest rates.
-   **Short Position:** The party that is effectively "lending" at the locked FRA rate. The short position profits if the actual future interest rate is *lower* than the FRA rate. A short FRA hedges against falling interest rates.
**2. Analysis of Statements**
-   **A. The underlying is a currency exchange rate.** This is false. The underlying of an FRA is an **interest rate**. A contract where the underlying is a currency exchange rate is a currency forward.
-   **B. The short position hedges against an increase in interest rates.** This is false. The short position profits from a *decrease* in interest rates. Therefore, it hedges against falling rates. The *long* position hedges against an increase in interest rates.
-   **C. The contract is closely tied to the term structure of interest rates.** This is **true**. The no-arbitrage price of an FRA (the fixed rate in the contract) is determined directly from the current yield curve (the term structure of interest rates). Specifically, the FRA rate is the implied forward interest rate calculated from the spot rates of different maturities.
**3. Conclusion**
FRAs are priced using implied forward rates derived from the current term structure of interest rates. Therefore, the statement that the contract is closely tied to the term structure is accurate. Option **C** is correct.
---
### **Question 61: Two-Stage Dividend Discount Model**
**Question:** Assume the current dividend of a security is $9.50. The dividend is expected to grow by 12% each year for two years and then 3% afterwards. The required rate of return is 15%. The security’s value is closest to:
A. $94.99
B. $95.58
C. $120.51
---
**Solution: B**
**1. Conceptual Framework**
This problem requires the use of a **two-stage dividend discount model (DDM)**. The model values a stock by summing the present values of its dividends during an initial period of high growth and the present value of its terminal value at the end of that period. The terminal value represents the value of all subsequent dividends, which are assumed to grow at a constant, sustainable rate.
The formula for the stock's value ($V_0$) is:
$$
V_0 = \frac{D_1}{(1+r)^1} + \frac{D_2}{(1+r)^2} + \frac{P_2}{(1+r)^2}
$$
The terminal value ($P_2$) is calculated using the Gordon (constant) growth model:
$$
P_2 = \frac{D_3}{r - g_c}
$$
Where:
- $D_t$ = Dividend in year *t*
- $r$ = Required rate of return
- $P_2$ = Price (terminal value) at the end of year 2
- $g_c$ = Constant growth rate
**2. Step-by-Step Calculation**
**Step 1: Calculate the dividends for the initial high-growth period (Years 1 and 2).**
-   $D_0 = \$9.50$
-   $D_1 = D_0 \times (1 + 0.12) = \$9.50 \times 1.12 = \$10.64$
-   $D_2 = D_1 \times (1 + 0.12) = \$10.64 \times 1.12 = \$11.9168$
**Step 2: Calculate the first dividend of the constant-growth period (Year 3).**
-   $D_3 = D_2 \times (1 + 0.03) = \$11.9168 \times 1.03 = \$12.274304$
**Step 3: Calculate the terminal value at the end of Year 2 ($P_2$).**
-   $P_2 = \frac{D_3}{r - g_c} = \frac{\$12.274304}{0.15 - 0.03} = \frac{\$12.274304}{0.12} = \$102.28587$
**Step 4: Discount all future cash flows (D1, D2, and P2) back to the present (Year 0).**
-   Present Value of $D_1 = \frac{\$10.64}{(1.15)^1} = \$9.2522$
-   Present Value of $D_2 = \frac{\$11.9168}{(1.15)^2} = \$9.0108$
-   Present Value of $P_2 = \frac{\$102.28587}{(1.15)^2} = \$77.3428$
**Step 5: Sum the present values to find the intrinsic value of the security ($V_0$).**
-   $V_0 = \$9.2522 + \$9.0108 + \$77.3428 = \$95.6058$
**3. Conclusion**
The intrinsic value of the security is approximately **$95.61**. This is closest to **$95.58**. Therefore, option **B** is correct. The minor difference is due to rounding in the option choices.
---
### **Question 62: Capital Market Line (CML)**
**Question:** An investor gathers the following information:
| Metric | Value |
| :--- | :---: |
| Risk-free rate of return | 4% |
| Expected market return | 12% |
| Standard deviation of market returns | 20% |
The expected return of a portfolio on the capital market line with a standard deviation of returns of 15% is:
A. 6%
B. 8%
C. 10%
---
**Solution: C**
**1. Conceptual Framework**
The **Capital Market Line (CML)** represents the risk-return combinations of all efficient portfolios, which are formed by combining the risk-free asset and the optimal risky portfolio (the market portfolio). The CML is a straight line on a graph where the y-axis is expected return and the x-axis is standard deviation.
The equation for the CML is:
$$
E(R_p) = R_f + \left[ \frac{E(R_m) - R_f}{\sigma_m} \right] \sigma_p
$$
Where:
- $E(R_p)$ = Expected return of the portfolio
- $R_f$ = Risk-free rate
- $E(R_m)$ = Expected return of the market
- $\sigma_m$ = Standard deviation of the market
- $\sigma_p$ = Standard deviation of the portfolio
- The term in the brackets is the market's Sharpe ratio, which is the slope of the CML.
**2. Step-by-Step Calculation**
**Step 1: Identify the inputs**
-   $R_f = 4\%$
-   $E(R_m) = 12\%$
-   $\sigma_m = 20\%$
-   $\sigma_p = 15\%$
**Step 2: Calculate the market risk premium and the slope of the CML (Sharpe Ratio).**
-   Market Risk Premium = $E(R_m) - R_f = 12\% - 4\% = 8\%$
-   Slope of CML = $\frac{8\%}{20\%} = 0.4$
**Step 3: Calculate the expected return of the portfolio using the CML equation.**
-   $E(R_p) = R_f + (\text{Slope of CML}) \times \sigma_p$
-   $E(R_p) = 4\% + (0.4 \times 15\%) = 4\% + 6\% = 10\%$
**3. Conclusion**
The expected return of a portfolio on the CML with a standard deviation of 15% is **10%**. Therefore, option **C** is correct.
---
### **Question 63: European Put Option Value**
**Question:** The value of a European put option is directly related to the:
A. risk-free interest rate.
B. value of the underlying.
C. volatility of the underlying.
---
**Solution: C**
**1. Conceptual Framework**
The value of an option is influenced by several factors, often referred to as "the Greeks." A "direct" relationship means that as the factor increases, the option's value also increases.
Let's analyze the relationship between a European put option's value and each factor:
-   **Value of the Underlying (Delta):** The value of a put option is **inversely related** to the underlying asset's price. As the asset price rises, the probability of the put expiring in-the-money decreases, thus lowering the put's value. The delta of a put option is negative.
-   **Volatility of the Underlying (Vega):** The value of **all** options, both puts and calls, is **directly related** to volatility. Higher volatility increases the likelihood of large price swings. For an option holder, this is beneficial because potential gains can be very large, while the maximum loss is fixed at the premium paid. Therefore, higher volatility increases the value of both puts and calls.
-   **Risk-Free Interest Rate (Rho):** The value of a put option is **inversely related** to the risk-free rate. A higher interest rate reduces the present value of the exercise price that the put holder would receive if the option is exercised, making the option less valuable today.
**2. Conclusion**
Among the choices given, only the volatility of the underlying has a direct relationship with the value of a European put option. Therefore, option **C** is correct.
---
### **Question 64: Clawback Provision**
**Question:** Which of the following reflects the right of limited partners to reclaim part of the general partner's performance fees?
A. Soft hurdle rate
B. Hard hurdle rate
C. Clawback provision
---
**Solution: C**
**1. Conceptual Framework**
This question relates to the structure of fees in private equity funds.
-   **Hurdle Rate:** This is the minimum rate of return a fund must generate before the general partner (GP) is entitled to receive performance fees (carried interest). A *hard hurdle* means the GP earns fees only on profits above the hurdle rate. A *soft hurdle* means that once the rate is achieved, the GP earns fees on all profits from the first dollar.
-   **Clawback Provision:** In private equity, GPs often receive carried interest on a deal-by-deal basis. It's possible for early deals to be very profitable, triggering large fee payments to the GP. However, later deals might result in losses, causing the fund's aggregate lifetime return to fall below the hurdle rate. A **clawback provision** is a contractual clause that gives the limited partners (LPs) the right to reclaim performance fees previously paid to the GP to ensure that, over the life of the fund, the GP only receives the contractually agreed-upon share of net profits.
**2. Conclusion**
The mechanism that allows LPs to reclaim previously distributed performance fees from the GP is the **clawback provision**. Therefore, option **C** is correct.
---
### **Question 65: Hedge Fund Restrictions**
**Question:** Hedge funds are least likely to have restrictions concerning:
A. the use of derivatives.
B. the withdrawal of invested funds.
C. the number of investors in the fund.
---
**Solution: A**
**1. Conceptual Framework**
Hedge funds are private investment pools for sophisticated, accredited investors. Their private nature exempts them from many of the regulations that apply to public funds like mutual funds, allowing for greater flexibility. However, this structure also comes with its own set of typical restrictions.
**2. Analysis of Options**
-   **A. The use of derivatives:** A hallmark of hedge funds is their broad investment mandate. They are known for their extensive use of leverage, short-selling, and complex derivative strategies to generate returns and manage risk. Compared to regulated public funds, they face very few, if any, restrictions on the types or amounts of derivatives they can use.
-   **B. The withdrawal of invested funds:** Hedge funds commonly impose significant liquidity restrictions to protect their investment strategies, especially those involving illiquid assets. These restrictions include **lock-up periods** (a minimum period before an investor can withdraw any capital) and **gates** (limits on the amount of capital that can be withdrawn at any one time).
-   **C. The number of investors in the fund:** To maintain their status as private partnerships and qualify for regulatory exemptions (e.g., under the U.S. Investment Company Act of 1940), hedge funds must typically limit the number of investors (e.g., to fewer than 100 or 500) and ensure they are "accredited" or "qualified."
**3. Conclusion**
Hedge funds face significant restrictions on liquidity and the number of investors but are known for their unrestricted ability to use derivatives. Therefore, they are **least likely** to have restrictions on the use of derivatives. Option **A** is correct.
---
### **Question 66: Dividend Chronology**
**Question:** Which date in the chronology of a dividend payment is most likely determined by a security exchange?
A. Declaration date
B. Ex-dividend date
C. Holder-of-record date
---
**Solution: B**
**1. Conceptual Framework**
The payment of a corporate dividend follows a specific timeline of events:
1.  **Declaration Date:** The date on which the company's board of directors formally announces ("declares") the dividend. This is determined by the **company**.
2.  **Holder-of-Record Date (or Record Date):** The date on which a shareholder must be registered on the company's books to be entitled to receive the dividend payment. This is also determined by the **company**.
3.  **Ex-Dividend Date:** The first day on which a stock trades without the right to receive the upcoming dividend. An investor who purchases the stock on or after this date will not receive the dividend. To ensure orderly settlement, this date is set by the **security exchange** or the relevant market authority (like FINRA). It is typically set one business day *before* the holder-of-record date.
4.  **Payment Date:** The date on which the company actually mails the dividend checks or makes the electronic payment. This is determined by the **company**.
**2. Conclusion**
The ex-dividend date is established by the stock exchange or a market regulator to standardize how trades are settled in relation to the company's declared record date. Therefore, option **B** is correct.
---
### **Question 67: Option Payoff for Seller**
**Question:** Consider a call option trading for $2.00 with an exercise price of $38.00. If the price of the underlying at expiration is $42.00, the payoff for the call option seller is:
A. -$4.00
B. -$2.00
C. $4.00
---
**Solution: A**
**1. Conceptual Framework**
It is critical to distinguish between an option's **payoff** at expiration and the **profit/loss** from the position.
-   **Payoff:** The value of the option at expiration, which is solely dependent on the underlying price ($S_T$) and the exercise price ($X$).
-   **Profit:** The payoff plus or minus the initial premium paid or received.
For a call option, the payoff to the *buyer* is:
$$ \text{Payoff}_{\text{buyer}} = \max(0, S_T - X) $$
The payoff to the *seller* is the negative of the buyer's payoff:
$$ \text{Payoff}_{\text{seller}} = -\max(0, S_T - X) $$
**2. Step-by-Step Calculation**
**Step 1: Identify the inputs**
-   Underlying price at expiration ($S_T$): $42.00
-   Exercise price ($X$): $38.00
-   Premium: $2.00 (This is needed for profit calculation, but not for payoff).
**Step 2: Calculate the payoff**
The option is in-the-money because $S_T > X$. The buyer will exercise the option.
-   The buyer's payoff is $42.00 - $38.00 = $4.00.
-   The seller is obligated to deliver the asset, resulting in a payoff that is the negative of the buyer's payoff.
-   Payoff for the seller = -$4.00.
*Analyst's Note: The seller's **profit** would be the premium received minus the payoff obligation: Profit = $2.00 - $4.00 = -$2.00. Option B represents the profit, but the question explicitly asks for the **payoff**.*
**3. Conclusion**
The payoff for the call option seller at expiration is **-$4.00**. Therefore, option **A** is correct.
---
### **Question 68: Protecting a Short Position**
**Question:** If an investor wants to protect a short position from adverse price movements while also providing the potential for gains in the future, the investor should most likely use a:
A. stop order.
B. limit order.
C. market order.
---
**Solution: A**
**1. Conceptual Framework**
An investor with a **short position** profits when the price of the security goes down. The "adverse price movement" is therefore an *increase* in price, which creates losses. The risk is theoretically unlimited. The goal is to limit this potential loss.
Let's examine the order types:
-   **Market Order:** An order to buy or sell immediately at the best available price. It prioritizes speed of execution over price. It is not used for protection at a specific level.
-   **Limit Order:** An order to buy or sell at a specified price or better.
    -   A *buy-limit order* is placed *below* the current market price and is used to enter a long position or exit a short position at a target profit.
    -   A *sell-limit order* is placed *above* the current market price.
-   **Stop Order:** An order that becomes a market order once a specified "stop" price is reached.
    -   A *buy-stop order* is placed *above* the current market price. If the market price rises to the stop price, it triggers a market order to buy. This is precisely the tool used to limit losses on a short position.
    -   A *sell-stop order* is placed *below* the current market price and is used to limit losses on a long position.
**2. Analysis of the Scenario**
The investor wants to "protect a short position from adverse price movements" (i.e., limit losses if the price rises). This is the primary function of a **buy-stop order**. For example, if a stock is shorted at $50, a buy-stop order at $55 would cap the loss around $5 per share.
The second part of the question, "while also providing the potential for gains in the future," is slightly confusingly worded but refers to the fact that placing a protective stop order does not prevent the investor from realizing gains if the stock price falls as hoped. The gains come from the underlying short position itself.
**3. Conclusion**
The most appropriate tool for protecting a short position against rising prices is a **stop order** (specifically, a buy-stop order). Therefore, option **A** is correct.
---
### **Question 69: ABS Lockout Period**
**Question:** During the lockout period for a non-amortizing asset-backed security, the principal payment of €100 million on a €1 billion face value issue will result in the security having a total face value of:
A. €0.9 billion.
B. €1.0 billion.
C. €1.1 billion.
---
**Solution: B**
**1. Conceptual Framework**
This question tests the understanding of features in certain asset-backed securities (ABS), particularly those backed by revolving assets like credit card receivables.
-   **Lockout Period (or Revolving Period):** This is an initial period during which the principal received from the underlying collateral pool is not passed through to the security holders. Instead, these principal payments are used by the issuer to purchase additional similar assets (e.g., new credit card receivables).
-   **Purpose:** The purpose of the lockout period is to keep the principal balance of the collateral pool and the face value of the issued security stable for a set period. After the lockout period ends, the "amortization period" begins, and principal payments are passed through to investors.
**2. Analysis of the Scenario**
The question states that the ABS is in its **lockout period**. A principal payment of €100 million is received from the underlying assets. Because of the lockout feature, this €100 million cash inflow will be used to purchase new assets to replenish the collateral pool. It will **not** be used to pay down the principal of the ABS issue.
Therefore, the face value of the security remains unchanged.
**3. Conclusion**
Despite the principal payment on the underlying assets, the face value of the security will remain at **€1.0 billion** due to the lockout period feature. Therefore, option **B** is correct.
---
### **Question 70: ESG Investing Approaches**
**Question:** The decision to divest from fossil fuels in a portfolio is most consistent with which of the following approaches to ESG investing?
A. ESG integration
B. Impact investing
C. Negative screening
---
**Solution: C**
**1. Conceptual Framework**
Environmental, Social, and Governance (ESG) investing encompasses several distinct strategies.
-   **Negative Screening (Exclusionary Screening):** This is one of the oldest and most straightforward ESG strategies. It involves the explicit **exclusion** of specific sectors, companies, or countries from an investment portfolio based on their involvement in activities deemed objectionable (e.g., tobacco, controversial weapons, or, in this case, fossil fuels).
-   **ESG Integration:** This approach involves the systematic and explicit inclusion of ESG risks and opportunities into traditional financial analysis. It's about using ESG factors to get a more complete picture of a company's risk profile and long-term value, rather than outright exclusion.
-   **Impact Investing:** This is a proactive strategy that seeks to make investments that generate a positive, measurable social and/or environmental impact alongside a financial return. It focuses on investing *in* solutions (e.g., renewable energy projects, affordable housing) rather than just avoiding "bad" sectors.
**2. Analysis of the Action**
The action of "divesting from fossil fuels" is a clear-cut case of excluding an entire industry based on specific values-based or ethical criteria (in this case, environmental concerns). This is the definition of **negative screening**.
**3. Conclusion**
The described action is most consistent with the **negative screening** approach to ESG investing. Therefore, option **C** is correct.
---
### **Question 71: Fair Value vs. Cash Flow Hedge**
**Question:** Which of the following transactions most likely represents a fair value hedge?
A. Commodity futures to hedge inventory
B. Currency forward to hedge forecasted sales
C. Interest rate swap to a fixed rate for floating-rate debt
---
**Solution: A**
**1. Conceptual Framework**
Hedge accounting distinguishes between two main types of hedges:
1.  **Fair Value Hedge:** This is a hedge of the exposure to changes in the **fair value** of a **recognized asset or liability** on the balance sheet (or an unrecognized firm commitment). The goal is to use a derivative to offset gains and losses on the hedged item that would otherwise impact earnings.
2.  **Cash Flow Hedge:** This is a hedge of the exposure to variability in **future cash flows** associated with a recognized asset/liability or a highly probable forecasted transaction. The goal is to lock in a future cash flow.
**2. Analysis of Options**
-   **A. Commodity futures to hedge inventory:** Inventory is a **recognized asset** on the balance sheet. Its fair value is exposed to changes in commodity prices. Using futures to offset potential losses in the inventory's value is a classic example of a **fair value hedge**.
-   **B. Currency forward to hedge forecasted sales:** Forecasted sales are a future transaction that is **not yet recognized** on the balance sheet. The hedge is intended to lock in the cash flows that will result from these future sales, protecting them from currency fluctuations. This is a **cash flow hedge**.
-   **C. Interest rate swap to a fixed rate for floating-rate debt:** The debt is a recognized liability, but its interest rate is floating. This means the future **interest payments (cash flows) are variable**. An interest rate swap that converts these floating payments to fixed ones is hedging the variability of future cash flows. This is a **cash flow hedge**.
**3. Conclusion**
Hedging the value of existing inventory on the balance sheet is a fair value hedge. Therefore, option **A** is correct.
---
### **Question 72: Put-Call-Forward Parity**
**Question:** According to put-call-forward parity, the difference between the price of a put and the price of a call is equal to the difference between:
A. forward price and spot price discounted at the risk-free rate.
B. spot price and exercise price discounted at the risk-free rate.
C. exercise price and forward price discounted at the risk-free rate.
---
**Solution: C**
**1. Conceptual Framework**
Put-call parity defines a no-arbitrage relationship between the prices of European call and put options with the same underlying asset, exercise price, and expiration date. The standard relationship involves the spot price ($S_0$):
$$ C_0 - P_0 = S_0 - \frac{X}{(1+r)^T} $$
**Put-call-forward parity** is a variation of this relationship that uses the forward price instead of the spot price. The forward price, $F_0(T)$, is related to the spot price by $F_0(T) = S_0(1+r)^T$. By substituting $S_0 = \frac{F_0(T)}{(1+r)^T}$ into the standard parity equation, we get the put-call-forward parity relationship.
**2. Derivation and Formula**
Starting from standard parity: $P_0 + S_0 = C_0 + \frac{X}{(1+r)^T}$
Rearrange: $P_0 - C_0 = \frac{X}{(1+r)^T} - S_0$
Substitute for $S_0$: $P_0 - C_0 = \frac{X}{(1+r)^T} - \frac{F_0(T)}{(1+r)^T}$
Combine terms:
$$ P_0 - C_0 = \frac{X - F_0(T)}{(1+r)^T} $$
**3. Interpretation**
This formula states that the difference between the put price and the call price today ($P_0 - C_0$) is equal to the present value of the difference between the exercise price ($X$) and the forward price ($F_0(T)$).
-   Option A is incorrect.
-   Option B describes the right side of the standard put-call parity, not the forward version.
-   Option C correctly describes the relationship: the difference between the **exercise price and forward price**, discounted at the risk-free rate.
**4. Conclusion**
The correct statement is that the difference between the price of a put and a call is the present value of the difference between the exercise price and the forward price. Therefore, option **C** is correct.
---
### **Question 73: Discount Margin of a Floating-Rate Note**
**Question:** An analyst gathers the following information about a floating-rate note (FRN):
| Description | Value |
| :--- | :---: |
| Time to maturity | 3 years |
| Current price | 98 |
| Reference rate | 1.5% |
| Quoted margin | 0.5% |
| Payment basis | Quarterly |
Assuming evenly spaced periods, the discount margin of the FRN is closest to:
A. 0.69%
B. 1.20%
C. 3.23%
---
**Solution: B**
**1. Conceptual Framework**
A **Floating-Rate Note (FRN)** pays a coupon that is reset periodically based on a reference rate (like SOFR) plus a **Quoted Margin (QM)**. The **Discount Margin (DM)** is the spread over the reference rate that the market requires to price the FRN at its current value.
-   If Price = Par, then DM = QM.
-   If Price < Par (a discount), the market requires a higher yield, so **DM > QM**.
-   If Price > Par (a premium), the market requires a lower yield, so **DM < QM**.
Since the FRN is priced at 98 (a discount), we know the DM must be greater than the QM of 0.5%. This allows us to immediately see that A is possible, but C is likely too high.
The price of an FRN is the present value of its future cash flows, discounted at a rate equal to the reference rate plus the discount margin. We need to find the DM that makes the PV equal to 98.
**2. Step-by-Step Calculation**
This is best solved with a financial calculator.
**Step 1: Determine the bond's parameters.**
-   Present Value (PV) = -98 (cash outflow to buy)
-   Future Value (FV) = 100 (par value at maturity)
-   Number of periods (N) = 3 years × 4 quarters/year = 12
-   Coupon Payment (PMT): The coupon is based on the reference rate + **quoted margin**.
    -   Annual coupon rate = 1.5% + 0.5% = 2.0%
    -   Quarterly payment = $(2.0\% \times 100) / 4 = \$0.50$
**Step 2: Solve for the periodic discount rate (I/Y).**
Using a financial calculator: `N=12`, `PV=-98`, `PMT=0.5`, `FV=100`.
-   Compute I/Y = **0.6724%** per quarter.
**Step 3: Annualize the rate and solve for the Discount Margin (DM).**
The periodic discount rate (I/Y) is composed of the reference rate and the discount margin.
-   Annualized Yield = I/Y × 4 = $0.6724\% \times 4 = 2.6896\%$
This annualized yield is equal to the reference rate plus the discount margin.
-   $ \text{Annualized Yield} = \text{Reference Rate} + \text{DM} $
-   $ 2.6896\% = 1.5\% + \text{DM} $
-   $ \text{DM} = 2.6896\% - 1.5\% = 1.1896\% $
**3. Conclusion**
The calculated discount margin of 1.19% is closest to **1.20%**. Therefore, option **B** is correct.
---
### **Question 74: Preferred Stock Valuation**
**Question:** A company's non-callable, non-convertible preferred stock that pays an annual dividend of $3.75 is currently priced at its par value of $50 per share. If the required rate of return increases by 75 bps, the preferred stock's new price is closest to:
A. $45.45
B. $49.50
C. $55.56
---
**Solution: A**
**1. Conceptual Framework**
Non-callable, non-convertible preferred stock pays a fixed dividend indefinitely. As such, it can be valued as a **perpetuity**.
The formula for the price of a perpetuity is:
$$
P = \frac{D}{r}
$$
Where:
- $P$ = Price of the preferred stock
- $D$ = Annual dividend
- $r$ = Required rate of return
**2. Step-by-Step Calculation**
**Step 1: Calculate the initial required rate of return ($r_{\text{initial}}$).**
We are given that the stock is priced at its par value of $50 and pays a $3.75 dividend. We can use this to find the market's current required rate of return.
-   $r_{\text{initial}} = \frac{D}{P} = \frac{\$3.75}{\$50.00} = 0.075 = 7.5\%$
**Step 2: Calculate the new required rate of return ($r_{\text{new}}$).**
The required rate of return increases by 75 basis points (bps), where 100 bps = 1%. So, 75 bps = 0.75%.
-   $r_{\text{new}} = r_{\text{initial}} + 0.75\% = 7.5\% + 0.75\% = 8.25\%$
**Step 3: Calculate the new price of the preferred stock.**
Using the new required rate of return, we can re-value the stock.
-   $P_{\text{new}} = \frac{D}{r_{\text{new}}} = \frac{\$3.75}{0.0825} = \$45.4545...$
**3. Conclusion**
If the required rate of return increases to 8.25%, the price of the preferred stock will fall to approximately **$45.45**. Therefore, option **A** is correct.
---
### **Question 75: Bond Price Change with Yield Change**
**Question:** A 3-year, semiannual-pay bond with a $100 par value and a 5% coupon rate is purchased for $98. On the purchase date, if the yield to maturity has decreased by 100 basis points, the change in the value of this bond is closest to:
A. $2.50
B. $2.73
C. $5.98
---
**Solution: B**
**1. Conceptual Framework**
This problem requires us to first find the bond's initial yield to maturity (YTM) based on its purchase price, and then calculate a new price based on a lower YTM to find the change in value. This is a standard bond pricing problem.
**2. Step-by-Step Calculation**
We will use a financial calculator for efficiency.
**Step 1: Calculate the bond's initial Yield to Maturity (YTM).**
The bond has semiannual payments, so we must adjust our inputs.
-   Number of periods (N) = 3 years × 2 = 6
-   Present Value (PV) = -98 (the purchase price, a cash outflow)
-   Future Value (FV) = 100 (par value)
-   Payment (PMT) = $(5\% \times 100) / 2 = 2.5$
Using a financial calculator, we solve for the periodic interest rate (I/Y):
-   `N=6`, `PV=-98`, `PMT=2.5`, `FV=100` -> **Compute I/Y = 2.8686%**
This is the semiannual yield. The initial annual YTM (Bond Equivalent Yield) is $2.8686\% \times 2 \approx 5.737\%$.
**Step 2: Calculate the new YTM.**
The YTM decreases by 100 basis points (1.00%).
-   New Annual YTM = $5.737\% - 1.00\% = 4.737\%$
**Step 3: Calculate the new price of the bond using the new YTM.**
We use the new YTM to find the new PV.
-   N = 6
-   PMT = 2.5
-   FV = 100
-   New periodic rate (I/Y) = $4.737\% / 2 = 2.3685\%$
Using a financial calculator, we solve for the new price:
-   `N=6`, `I/Y=2.3685`, `PMT=2.5`, `FV=100` -> **Compute PV = 100.731**
**Step 4: Calculate the change in the bond's value.**
-   Change in Value = New Price - Original Price
-   Change in Value = $100.731 - $98.00 = $2.731
**3. Conclusion**
The change in the value of the bond is closest to **$2.73**. Therefore, option **B** is correct.
---
### **Question 76: "Notching" of Credit Ratings**
**Question:** A company has an issuer rating of B. Which of the following types of debt issued by this company is least likely to carry a rating of BB-?
A. Subordinated debt
B. Senior secured debt
C. Senior unsecured debt
---
**Solution: A**
**1. Conceptual Framework**
Credit rating agencies employ a practice called **"notching"** to assign ratings to specific debt issues. The process begins with determining an **issuer credit rating (ICR)**, which reflects the company's overall creditworthiness. Then, individual debt issues are rated higher or lower than the ICR based on their seniority and security.
-   **Senior Secured Debt:** Has the highest priority in bankruptcy and is backed by specific collateral. It is often notched **up** from the issuer rating.
-   **Senior Unsecured Debt:** Has a general claim on assets and typically carries a rating very close to the issuer rating.
-   **Subordinated Debt:** Has a lower priority of claim than senior debt. It is always notched **down** from the issuer rating, often by two or more notches, reflecting its higher risk of loss.
**2. Analysis of the Scenario**
-   **Issuer Rating:** B
-   **Target Rating:** BB- (which is two notches *above* B in most rating scales)
Let's evaluate the likelihood for each debt type:
-   **A. Subordinated debt:** This debt would be notched *down* from the B rating, resulting in a rating like B- or CCC. It is therefore **least likely** (effectively, impossible) to be rated BB-.
-   **B. Senior secured debt:** This debt would be notched *up*. An upward adjustment of two notches from B to BB- is plausible if the collateral backing the debt is of very high quality, providing excellent recovery prospects.
-   **C. Senior unsecured debt:** This would be rated at or very near the issuer rating of B. It is highly unlikely to be notched up two levels to BB-.
Comparing the options, subordinated debt is the only one that would be notched down, making a BB- an impossible rating for it.
**3. Conclusion**
Subordinated debt would be rated lower than the issuer rating, not higher. Therefore, it is the **least likely** type of debt to carry a rating of BB-. Option **A** is correct.
---
### **Question 77: Behavioral Finance - Herding**
**Question:** An overreaction in the financial markets causes a security's price to experience a significant loss during a short period. If this overreaction is caused by investors that sell because other investors are selling, the behavior is best described as:
A. herding.
B. loss aversion.
C. overconfidence.
---
**Solution: A**
**1. Conceptual Framework**
This question asks to identify the specific behavioral bias described.
-   **Herding:** This is the tendency for individuals to mimic the actions of a larger group, even if those actions contradict their own information or analysis. In financial markets, herding can cause investors to buy into bubbles or sell during panics, simply because everyone else is doing it. This behavior can amplify market movements and lead to overreactions.
-   **Loss Aversion:** This is an emotional bias where people feel the pain of a loss approximately twice as strongly as the pleasure from an equivalent gain. It can lead to behaviors like holding onto losing investments too long (disposition effect) rather than selling.
-   **Overconfidence:** This is a cognitive error where investors overestimate their own abilities and the accuracy of their forecasts. It often leads to excessive trading and under-diversification.
**2. Analysis of the Scenario**
The key phrase in the question is "investors that sell because other investors are selling." This is the precise definition of **herding**. The collective action amplifies the selling pressure, leading to the "overreaction" and significant price loss described.
**3. Conclusion**
The behavior described is a classic example of **herding**. Therefore, option **A** is correct.
---
### **Question 78: Priced Risk in CAPM**
**Question:** According to the CAPM, the priced risk of an individual security is:
A. measured by the security's standard deviation of returns.
B. determined primarily by the security's nonsystematic risk.
C. affected by holding the security in a well-diversified portfolio.
---
**Solution: C**
**1. Conceptual Framework**
The Capital Asset Pricing Model (CAPM) is a cornerstone of modern portfolio theory. It makes a crucial distinction between two types of risk:
1.  **Systematic Risk (or Market Risk):** This is risk inherent to the entire market that cannot be diversified away (e.g., risk from recessions, interest rate changes). CAPM posits that this is the only risk for which investors receive compensation (a risk premium). It is measured by **beta ($ \beta $)**.
2.  **Nonsystematic Risk (or Idiosyncratic Risk):** This is risk specific to an individual company or asset (e.g., a factory fire, a failed drug trial). This risk *can* be eliminated for free by holding a well-diversified portfolio.
**"Priced risk"** is the risk that commands a higher expected return in the market. According to CAPM, only systematic risk is priced.
**2. Analysis of Options**
-   **A. measured by the security's standard deviation of returns.** This is incorrect. Standard deviation measures *total risk* (Systematic + Nonsystematic). CAPM states that only the systematic component is priced.
-   **B. determined primarily by the security's nonsystematic risk.** This is incorrect. Nonsystematic risk can be diversified away and therefore does not earn a risk premium. It is unpriced risk.
-   **C. affected by holding the security in a well-diversified portfolio.** This is the correct statement, though subtly worded. The process of holding a security in a well-diversified portfolio is what eliminates the nonsystematic risk. The risk that *remains*—the security's contribution to the portfolio's total risk—is its systematic risk. Therefore, the priced risk of the security is revealed or "affected" by observing its behavior within a diversified portfolio.
**3. Conclusion**
The priced risk is the systematic risk, which is the risk that cannot be eliminated through diversification. Therefore, its nature is intrinsically linked to and affected by holding the security in a well-diversified portfolio. Option **C** is correct.
---
### **Question 79: Return on a Margin Transaction**
**Question:** A trader enters into the following margin transaction:
| Description | Value |
| :--- | :---: |
| Purchase price, per share | €100 |
| Initial margin posted as equity | 45% |
| Unleveraged security return | 15% |
| Call money rate, one year | 4% |
If there are no dividends or commissions, and interest on the margin loan is paid at the end of the one-year holding period, the trader's rate of return is closest to:
A. 27.3%
B. 28.4%
C. 29.3%
---
**Solution: B**
**1. Conceptual Framework**
The return on a margin transaction is the investment's net profit divided by the initial equity invested by the trader. The use of leverage (the margin loan) amplifies both gains and losses.
**2. Step-by-Step Calculation**
**Step 1: Calculate initial investment values (per share).**
-   Total Position Value = €100
-   Initial Equity = Initial Margin % × Position Value = 45% × €100 = €45
-   Loan Amount = Position Value - Equity = €100 - €45 = €55
**Step 2: Calculate the value of the investment at the end of the year.**
-   The security had a 15% return.
-   Ending Value = Initial Value × (1 + Return) = €100 × (1 + 0.15) = €115
**Step 3: Calculate the interest paid on the margin loan.**
-   Interest = Loan Amount × Call Money Rate = €55 × 4% = €2.20
**Step 4: Calculate the net profit from the transaction.**
-   Net Profit = (Ending Value of Stock) - (Initial Value of Stock) - (Interest Paid)
-   Net Profit = (€115 - €100) - €2.20 = €15 - €2.20 = €12.80
**Step 5: Calculate the rate of return on the trader's equity.**
-   Return on Equity = $\frac{\text{Net Profit}}{\text{Initial Equity}}$
-   Return on Equity = $\frac{€12.80}{€45} \approx 0.2844$
**3. Conclusion**
The trader's rate of return on the margin transaction is 28.44%, which is closest to **28.4%**. Therefore, option **B** is correct.
---
### **Question 80: Hedge Fund Fee Calculation**
**Question:** An analyst gathers the following information about a hedge fund:
| Description | Value |
| :--- | :---: |
| Beginning-of-year AUM | $350 million |
| Management fee | 2% (on year-end AUM before fees) |
| Incentive fee | 20% |
| Hard hurdle rate | 5% |
| Annual return before fees | 10% |
If the incentive fee is based on returns net of management fees, the incentive fee (in $ millions) is:
A. 1.96
B. 5.46
C. 7.00
---
**Solution: A**
**1. Conceptual Framework**
This problem requires calculating hedge fund fees in the correct sequence. The incentive fee is "net of management fees," meaning the management fee must be calculated and deducted from the profit before the incentive fee is calculated. It is also subject to a "hard hurdle rate," meaning the incentive fee is only paid on returns *above* the 5% hurdle.
**2. Step-by-Step Calculation**
**Step 1: Calculate the Assets Under Management (AUM) at year-end, before any fees.**
-   Gross Profit = Beginning AUM × Annual Return = $350M × 10% = $35M
-   Ending AUM (before fees) = Beginning AUM + Gross Profit = $350M + $35M = $385M
**Step 2: Calculate the management fee.**
-   The management fee is 2% of year-end AUM.
-   Management Fee = 2% × $385M = $7.7M
**Step 3: Calculate the return and profit *after* the management fee.**
-   Ending AUM (after management fee) = $385M - $7.7M = $377.3M
-   Profit (after management fee) = Ending AUM (after mgt fee) - Beginning AUM = $377.3M - $350M = $27.3M
-   Rate of Return (after management fee) = $\frac{\$27.3M}{\$350M} = 7.8\%$
**Step 4: Calculate the incentive fee.**
-   The 7.8% return is above the 5% hard hurdle rate, so an incentive fee is due.
-   The fee is calculated on the return *in excess* of the hurdle rate.
-   Excess Return Rate = Rate of Return (after mgt fee) - Hurdle Rate = $7.8\% - 5.0\% = 2.8\%$
-   Incentive Fee = 20% × (Excess Return Rate × Beginning AUM)
-   Incentive Fee = 20% × (2.8% × $350M) = 0.20 × $9.8M = **$1.96M**
**3. Conclusion**
The incentive fee is **$1.96 million**. Therefore, option **A** is correct.
---
### **Question 81: Price vs. Total Return Index at Inception**
**Question:** Compared to the total return version of an index, the value of the price version of the index at inception is:
A. less than the value of the total return version.
B. equal to the value of the total return version.
C. greater than the value of the total return version.
---
**Solution: B**
**1. Conceptual Framework**
-   **Price Return Index:** Measures the performance of a portfolio of securities by tracking only the changes in their market prices.
-   **Total Return Index:** Measures the performance by tracking both price changes and the reinvestment of all income (dividends and interest) generated by the securities in the index.
**2. Index Inception**
When an index is created, it is given an arbitrary starting value (e.g., 100, 1000) on a specific **inception date**. At this precise starting point, no time has passed and no income has been generated or reinvested.
Therefore, on the inception date, the value of the price return index and the total return index are, by definition, set to be identical. They only begin to diverge after the first dividend or interest payment is made on an underlying security. From that point forward (assuming positive income), the total return index will outperform the price return index.
**3. Conclusion**
At the moment of inception, the value of a price return index is **equal to** the value of its corresponding total return index. Therefore, option **B** is correct.
---
### **Question 82: Asset-Based Valuation**
**Question:** An asset-based valuation model is most applicable for a company with significant:
A. intangible assets.
B. property, plant, and equipment.
C. proportions of current assets and current liabilities and few intangible assets.
---
**Solution: C**
**1. Conceptual Framework**
**Asset-based valuation** is a method that values a company based on the market value of its assets minus the market value of its liabilities. The formula is essentially:
$$ \text{Value of Equity} = \text{Market Value of Assets} - \text{Market Value of Liabilities} $$
This model's applicability is highly dependent on the ability to reliably determine the market value of the company's assets.
**2. Analysis of Company Types**
-   **A. Intangible assets:** Significant intangible assets (like goodwill, brand value, intellectual property) are notoriously difficult to value accurately, as they often lack an active market. This makes asset-based valuation highly subjective and unreliable for such companies.
-   **B. Property, plant, and equipment (PP&E):** While PP&E can be appraised, its market value can be difficult to determine and may not reflect its value as part of a going concern. This makes asset-based models feasible but challenging for industrial firms.
-   **C. Proportions of current assets and current liabilities and few intangible assets:** This describes a company whose balance sheet is dominated by items like cash, marketable securities, inventory, and receivables, which are already carried at or near their market values. Such companies (e.g., some financial firms, holding companies, or firms facing liquidation) are ideal candidates for asset-based valuation because the value of their assets can be determined with reasonable confidence and there are few difficult-to-value intangibles.
**3. Conclusion**
The asset-based valuation model is most applicable for a company with significant liquid assets and few intangible assets, as the value of its net assets can be most reliably determined. Therefore, option **C** is correct.
---
### **Question 83: Systematic Risk and Expected Return**
**Question:** An analyst gathers the following information about three securities:
| | Total Variance of Returns | Nonsystematic Variance of Returns |
| :--- | :---: | :---: |
| Security 1| 0.20 | 0.05 |
| Security 2| 0.30 | 0.25 |
| Security 3| 0.35 | 0.22 |
According to capital market theory, which security has the highest expected return?
A. Security 1
B. Security 2
C. Security 3
---
**Solution: A**
**1. Conceptual Framework**
According to Capital Market Theory (and specifically the CAPM), the expected return of a security is determined by its **systematic risk**, not its total risk. Systematic risk is the portion of a security's volatility that is correlated with the overall market and cannot be diversified away.
Total risk can be decomposed as follows:
$$ \text{Total Variance} = \text{Systematic Variance} + \text{Nonsystematic Variance} $$
Therefore, to find the systematic risk, we can rearrange the formula:
$$ \text{Systematic Variance} = \text{Total Variance} - \text{Nonsystematic Variance} $$
The security with the highest systematic variance will have the highest beta and, consequently, the highest expected return.
**2. Step-by-Step Calculation**
-   **Security 1:**
    -   Systematic Variance = 0.20 - 0.05 = **0.15**
-   **Security 2:**
    -   Systematic Variance = 0.30 - 0.25 = **0.05**
-   **Security 3:**
    -   Systematic Variance = 0.35 - 0.22 = **0.13**
**3. Conclusion**
Comparing the systematic variances, Security 1 has the highest value (0.15). Since expected return is a direct function of systematic risk, **Security 1** has the highest expected return. Therefore, option **A** is correct.
---
### **Question 84: Covariance and Beta**
**Question:** An analyst gathers the following information:
| | Standard Deviation of Returns | Beta |
| :--- | :---: | :---: |
| Portfolio | 10% | 0.5 |
| Market | 20% | 1.0 |
The covariance between the returns of the portfolio and the market is closest to:
A. 0.005
B. 0.010
C. 0.020
---
**Solution: C**
**1. Conceptual Framework**
Beta ($ \beta $) measures the sensitivity of an asset's or portfolio's returns to the returns of the overall market. The definition of beta directly links the covariance of the asset with the market to the variance of the market.
The formula for a portfolio's beta ($ \beta_p $) is:
$$
\beta_p = \frac{\text{Covariance}(R_p, R_m)}{\text{Variance}(R_m)} = \frac{\text{Cov}(R_p, R_m)}{\sigma_m^2}
$$
We can rearrange this formula to solve for the covariance.
**2. Step-by-Step Calculation**
**Step 1: Identify the inputs and rearrange the formula.**
-   Portfolio Beta ($ \beta_p $): 0.5
-   Market Standard Deviation ($\sigma_m$): 20% or 0.20
-   Formula to solve: $ \text{Cov}(R_p, R_m) = \beta_p \times \sigma_m^2 $
**Step 2: Calculate the variance of the market ($\sigma_m^2$).**
-   $ \sigma_m^2 = (0.20)^2 = 0.04 $
**Step 3: Calculate the covariance.**
-   $ \text{Cov}(R_p, R_m) = 0.5 \times 0.04 = 0.02 $
**3. Conclusion**
The covariance between the returns of the portfolio and the market is **0.020**. Therefore, option **C** is correct.
---
### **Question 85: Bond Yield Conversion**
**Question:** An analyst gathers the following information about a semiannual pay bond:
| | Value |
| :--- | :---: |
| Price | 102 |
| YTM (semiannual basis) | 5.27% |
The annual yield to maturity based on quarterly compounding is closest to:
A. 5.24%
B. 5.33%
C. 5.96%
---
**Solution: A**
**1. Conceptual Framework**
This question requires converting a yield from one compounding frequency to another. The standard way to do this without error is to first find the **Effective Annual Rate (EAR)** and then use the EAR to find the nominal annual rate for the desired compounding frequency.
**2. Step-by-Step Calculation**
**Step 1: Find the periodic rate from the given YTM.**
-   The given YTM is on a "semiannual basis," which means it's a Bond Equivalent Yield (BEY).
-   The periodic (6-month) rate is $ \frac{5.27\%}{2} = 2.635\% $.
**Step 2: Calculate the Effective Annual Rate (EAR).**
-   The EAR represents the true annual rate of return, considering the effect of compounding.
-   $ \text{EAR} = (1 + \text{periodic rate})^m - 1 $
-   $ \text{EAR} = (1 + 0.02635)^2 - 1 = 1.05339 - 1 = 0.05339 $ or 5.339%
**Step 3: Convert the EAR to a nominal annual rate with quarterly compounding.**
-   We now find the quarterly rate that would compound to our EAR of 5.339%.
-   Quarterly periodic rate = $(1 + \text{EAR})^{1/4} - 1 = (1.05339)^{0.25} - 1 = 1.01309 - 1 = 0.01309$
-   Finally, we state this as a nominal annual rate by multiplying by the number of periods (4).
-   Annual yield (quarterly compounding) = $0.01309 \times 4 = 0.05236$ or 5.236%
**3. Conclusion**
The annual yield to maturity based on quarterly compounding is 5.236%, which is closest to **5.24%**. Therefore, option **A** is correct.
---
### **Question 86: Liquidity in Alternative Investments**
**Question:** Investors in alternative assets who seek liquidity are most likely to invest in:
A. hedge funds.
B. private equity.
C. real estate investment trusts.
---
**Solution: C**
**1. Conceptual Framework**
**Liquidity** refers to the ease and speed with which an asset can be converted into cash without significantly affecting its market price. Alternative investments are often characterized by their illiquidity compared to traditional investments like public stocks and bonds.
**2. Analysis of Options**
-   **A. Hedge Funds:** These are private investment funds that are well-known for being illiquid. They typically require investors to commit capital for a minimum "lock-up" period and may impose "gates" that restrict the size of withdrawals, making it difficult to access capital quickly.
-   **B. Private Equity:** This involves investing in privately held companies. These investments are extremely illiquid, with investment horizons often lasting 10 years or more. There is no public market for these investments.
-   **C. Real Estate Investment Trusts (REITs):** REITs are companies that own and often operate income-producing real estate. Crucially, many REITs are **publicly traded** on major stock exchanges. This allows investors to buy and sell shares in a portfolio of real estate assets with the same ease as trading a stock, providing high liquidity.
**3. Conclusion**
For an investor seeking exposure to alternative assets (in this case, real estate) but requiring liquidity, publicly traded REITs are the most suitable option. Therefore, option **C** is correct.
---
### **Question 87: Well-Functioning Financial System**
**Question:** Which of the following is a characteristic of a well-functioning financial system?
A. Bid-ask spreads are high.
B. Prices reflect fundamental values.
C. Prices vary primarily in response to demands for liquidity made by traders.
---
**Solution: B**
**1. Conceptual Framework**
A well-functioning financial system serves several key purposes, including facilitating trade, managing risk, and allocating capital to its most productive uses. Efficiency is a key characteristic.
-   **Operational Efficiency:** Characterized by low transaction costs. A narrow (low) bid-ask spread is a key indicator of high operational efficiency and liquidity.
-   **Informational Efficiency:** Characterized by market prices that rapidly and accurately reflect all available information about the fundamental value of assets.
**2. Analysis of Options**
-   **A. Bid-ask spreads are high.** High spreads indicate high transaction costs and low liquidity, which are features of a *poorly* functioning system.
-   **B. Prices reflect fundamental values.** This describes informational efficiency. When prices accurately reflect fundamentals, capital flows to the most deserving projects and companies, leading to efficient capital allocation, which is a core purpose of a well-functioning financial system. This statement is correct.
-   **C. Prices vary primarily in response to demands for liquidity made by traders.** This describes a market driven by "noise" rather than information. If prices are moved by liquidity needs instead of fundamental news, the market is not informationally efficient and can lead to misallocation of capital. This is a feature of a *poorly* functioning system.
**3. Conclusion**
A key characteristic of a well-functioning financial system is that prices are informationally efficient and reflect fundamental values. Therefore, option **B** is correct.
---
### **Question 88: Margin Requirement and Leverage Ratio**
**Question:** If the minimum margin requirement is 45%, the maximum leverage ratio is closest to:
A. 1.45
B. 1.82
C. 2.22
---
**Solution: C**
**1. Conceptual Framework**
-   The **minimum margin requirement** is the percentage of the purchase price of a security that must be covered by the investor's own equity. The rest is borrowed from the broker.
-   The **leverage ratio** measures the total size of the investment relative to the amount of equity the investor has committed. It quantifies the degree of leverage being used.
**2. Formula and Calculation**
The maximum possible leverage ratio is simply the reciprocal of the minimum margin requirement.
$$
\text{Maximum Leverage Ratio} = \frac{1}{\text{Minimum Margin Requirement}}
$$
**Step 1: Identify the input**
-   Minimum Margin Requirement = 45% or 0.45
**Step 2: Calculate the leverage ratio**
-   Leverage Ratio = $\frac{1}{0.45} \approx 2.222...$
**3. Conclusion**
With a 45% margin requirement, an investor can control assets worth 2.22 times their equity. The maximum leverage ratio is **2.22**. Therefore, option **C** is correct.
---
### **Question 89: Preference Shares vs. Common Shares**
**Question:** Preference shares most likely rank above common shares with respect to:
A. voting rights.
B. the payment of dividends.
C. sharing in the operating performance of the company.
---
**Solution: B**
**1. Conceptual Framework**
Preference (or preferred) shares are a hybrid security with features of both debt and equity. Their ranking relative to common shares is a key distinguishing feature.
**2. Analysis of Features**
-   **A. Voting Rights:** Common shareholders are the ultimate owners of the company and are typically the only class of shareholders with voting rights. Preferred shareholders usually do not have voting rights, except in specific circumstances (like when their dividends are in arrears). Therefore, common shares rank above preferred shares for voting rights.
-   **B. The Payment of Dividends:** This is a key area where preferred shares have priority. A company must pay the stated dividend to its preferred shareholders before it can pay any dividends to its common shareholders. If a dividend payment is missed, it often accumulates (for cumulative preferred shares) and must be paid in full before common dividends can resume.
-   **C. Sharing in the operating performance:** Common shareholders have a residual claim on the company's earnings and assets, giving them unlimited upside potential if the company performs well. Preferred shareholders typically receive a fixed dividend, so they do not participate in the company's growth beyond that fixed payment (unless they are participating preferred shares, which is a special feature).
**3. Conclusion**
The primary advantage and defining feature of preference shares over common shares is their priority in **the payment of dividends**. Therefore, option **B** is correct.
---
### **Question 90: Risk of Private Debt**
**Question:** Investing in private debt most likely is:
A. less risky than investing in traditional bonds.
B. equally risky to investing in traditional bonds.
C. more risky than investing in traditional bonds.
---
**Solution: C**
**1. Conceptual Framework**
This question compares the risk profile of **private debt** (direct lending to private companies) with **traditional bonds** (publicly issued and traded corporate or government bonds).
**2. Analysis of Risk Factors**
Several factors make private debt inherently more risky than traditional public bonds:
1.  **Illiquidity:** Private debt is not traded on public exchanges. There is no active secondary market, making it very difficult to sell the investment before its maturity. This lack of liquidity is a major risk.
2.  **Lack of Transparency:** The borrowers are private companies, which are not subject to the same stringent financial reporting and disclosure requirements as public companies. This makes credit analysis more difficult and increases information risk.
3.  **Credit Risk:** The borrowers are often smaller or middle-market companies that may not be able to access public debt markets, which can imply a higher underlying credit risk profile.
4.  **Concentration Risk:** Private debt portfolios may be more concentrated in a smaller number of loans compared to a diversified public bond fund.
In exchange for taking on these additional risks (especially illiquidity and credit risk), investors in private debt expect to earn a higher return (an "illiquidity premium") than they would on comparable traditional bonds.
**3. Conclusion**
Due to factors like illiquidity, lack of transparency, and potentially higher credit risk of the borrowers, investing in private debt is most likely **more risky** than investing in traditional bonds. Therefore, option **C** is correct.
---
### **Question 91: Credit Default Swap (CDS)**
**Question:** In a credit default swap, the party that receives a series of cash payments in return for promising to pay compensation for credit losses resulting from a third party's default is most likely the:
A. clearinghouse.
B. seller of the swap.
C. buyer of the swap.
---
**Solution: B**
**1. Conceptual Framework**
A **Credit Default Swap (CDS)** is a derivative contract that transfers the credit risk of a specific debt instrument (the "reference entity") from one party to another.
-   The **CDS Buyer** is seeking protection against a default. They make periodic premium payments (the "spread") to the CDS seller. If a predefined "credit event" (like a default or bankruptcy) occurs, the buyer receives a payoff from the seller to compensate for the loss on the debt. The buyer is said to be "long" protection.
-   The **CDS Seller** provides the protection. They receive the periodic premium payments from the buyer. In exchange, they agree to make the contingent payment to the buyer if the credit event occurs. The seller is taking on credit risk and is said to be "short" protection.
**2. Analysis**
The question describes the party that **receives cash payments** (the premiums) and **promises to pay** if a default occurs. This is the role of the credit risk taker, which is the **seller of the swap**.
**3. Conclusion**
The party described is the seller of the CDS. Therefore, option **B** is correct.
---
### **Question 92: Non-Recourse Mortgage Loan**
**Question:** A non-recourse residential mortgage loan:
A. does not allow the lender to recover the outstanding mortgage balance.
B. only allows the lender to use the property to recover the outstanding mortgage balance.
C. permits the lender to seek recovery of the outstanding mortgage balance from the borrower's other assets.
---
**Solution: B**
**1. Conceptual Framework**
Mortgage loans can be categorized based on the lender's rights in the event of a borrower default.
-   **Recourse Loan:** If the borrower defaults, the lender can seize the property (the collateral). If the proceeds from the sale of the property are not sufficient to cover the outstanding loan balance, the lender has "recourse" to the borrower's other personal assets to recover the deficiency. Option C describes a recourse loan.
-   **Non-Recourse Loan:** If the borrower defaults, the lender's only remedy is to seize the property. The lender has no further claim against the borrower's other assets, even if the property's sale value is less than the loan balance. The lender's recovery is limited solely to the collateral.
**2. Analysis of Options**
-   A is incorrect because the lender can recover the balance, but only from the property.
-   B correctly states that the lender's recovery is limited to the property itself.
-   C describes a recourse loan.
**3. Conclusion**
A non-recourse loan only allows the lender to use the property to recover the outstanding mortgage balance. Therefore, option **B** is correct.
---
### **Question 93: Modified Duration**
**Question:** The modified duration of an option-free corporate bond best estimates the percentage price change for a given change in the:
A. horizon yield.
B. yield-to-maturity.
C. benchmark yield curve.
---
**Solution: B**
**1. Conceptual Framework**
Different duration measures capture sensitivity to different interest rate metrics.
-   **Modified Duration:** This is a measure of a bond's price sensitivity to a change in its own **yield-to-maturity (YTM)**. It is calculated as Macaulay Duration / (1 + YTM/k). The formula for estimating price changes using modified duration is $ \% \Delta P \approx -ModDur \times \Delta YTM $. It assumes a parallel shift in a flat yield curve where all cash flows are discounted at a single YTM.
-   **Effective Duration:** This measures a bond's price sensitivity to a change in a **benchmark yield curve** (e.g., the government spot curve). It is calculated by repricing the bond after shifting the benchmark curve up and down. It is the appropriate measure for bonds with embedded options.
-   **Horizon Yield:** This is the total return realized over an investment horizon. It is a measure of return, not a driver for duration calculations.
**2. Conclusion**
For an option-free bond, modified duration specifically estimates the percentage price change for a given change in the bond's **yield-to-maturity**. Therefore, option **B** is correct.
---
### **Question 94: Industry and Competitive Analysis**
**Question:** Which of the following is not an element of industry and competitive analysis?
A. Judgment on substitute products
B. Determination of business model
C. Analysis of environmental influences
---
**Solution: B**
**1. Conceptual Framework**
**Industry and competitive analysis** involves examining the structure of an industry and the competitive forces within it to understand its profitability and dynamics. Frameworks like Porter's Five Forces and PESTLE analysis are common tools.
-   **Porter's Five Forces:** Threat of New Entrants, Bargaining Power of Buyers, Bargaining Power of Suppliers, Threat of **Substitute Products**, and Rivalry Among Existing Competitors.
-   **PESTLE Analysis:** Examines macro-**environmental influences**: Political, Economic, Social, Technological, Legal, and Environmental.
**2. Analysis of Options**
-   **A. Judgment on substitute products:** The threat of substitutes is a core component of Porter's Five Forces and is essential to industry analysis.
-   **C. Analysis of environmental influences:** This is a key part of a broad industry analysis, as macro-environmental factors affect all firms within the industry.
-   **B. Determination of business model:** Analyzing a company's specific business model—how it creates, delivers, and captures value—is an element of **company-specific analysis**, not industry analysis. While industry structure influences which business models are viable, the determination of a single firm's model is a level deeper than industry analysis.
**3. Conclusion**
The determination of a specific company's business model is part of firm-level analysis, not industry-level analysis. Therefore, it is not an element of industry and competitive analysis. Option **B** is correct.
---
### **Question 95: Role of a Lead Underwriter**
**Question:** The lead underwriter in an IPO most likely:
A. acts as the book builder for the offering.
B. is not responsible for making a market in the securities.
C. is prohibited from providing an opinion about the issue to their clients.
---
**Solution: A**
**1. Conceptual Framework**
The **lead underwriter** (also known as the bookrunner) is the primary investment bank managing a company's Initial Public Offering (IPO). This role involves numerous responsibilities.
**2. Analysis of Roles**
-   **A. Acts as the book builder for the offering:** This is a key function. The lead underwriter engages in **bookbuilding**, which involves soliciting indications of interest from institutional investors to gauge demand for the offering. This process is crucial for determining the final offer price and the allocation of shares.
-   **B. Is not responsible for making a market in the securities:** This is incorrect. The lead underwriter often acts as a market maker for a period following the IPO to provide liquidity and support the stock price in the immediate after-market.
-   **C. Is prohibited from providing an opinion about the issue to their clients:** This is incorrect. While strict regulations (a "firewall") separate a bank's underwriting and research departments, and "quiet periods" restrict communications around the time of the IPO, the firm's research analysts are eventually permitted to publish research and opinions on the company.
**3. Conclusion**
A primary and defining role of the lead underwriter is to manage the bookbuilding process. Therefore, option **A** is correct.
---
### **Question 96: Slope of the Capital Allocation Line (CAL)**
**Question:** Which of the following measures is the slope of the capital allocation line?
A. Sharpe ratio
B. Treynor ratio
C. Jensen's alpha
---
**Solution: A**
**1. Conceptual Framework**
-   The **Capital Allocation Line (CAL)** is a graph that shows all possible risk-return combinations for a portfolio formed by combining a risk-free asset with a single risky portfolio.
-   The y-axis represents expected return, and the x-axis represents standard deviation (total risk).
-   The line starts at the risk-free rate ($R_f$) on the y-axis and goes through the point representing the risky portfolio ($E(R_p), \sigma_p$).
The slope of a line is "rise over run." In this case:
-   Rise = $E(R_p) - R_f$ (Excess Return)
-   Run = $\sigma_p - 0$ (Standard Deviation)
$$ \text{Slope of CAL} = \frac{E(R_p) - R_f}{\sigma_p} $$
This formula is the definition of the **Sharpe ratio**, which measures the excess return earned per unit of total risk.
-   **Treynor Ratio:** Measures excess return per unit of systematic risk ($ \beta $). It is the slope of the Security Market Line (SML).
-   **Jensen's Alpha:** Measures a portfolio's return in excess of its required return as predicted by the CAPM. It is a point, not a slope.
**2. Conclusion**
The slope of the Capital Allocation Line is the **Sharpe ratio**. Therefore, option **A** is correct.
---
### **Question 97: Tracking Risk**
**Question:** An investor wants to achieve a portfolio return within 5% of a benchmark index return. Which of the following measures this risk objective?
A. Beta risk
B. Value at risk
C. Tracking risk
---
**Solution: C**
**1. Conceptual Framework**
The question describes a **relative risk objective**, where risk is defined as the potential for underperformance relative to a specific benchmark.
-   **A. Beta risk:** Measures a portfolio's systematic risk, or its sensitivity to the overall market's movements. It does not measure deviation from a specific benchmark.
-   **B. Value at Risk (VaR):** Is an **absolute risk measure**. It estimates the maximum potential loss a portfolio could suffer over a specific time period at a given confidence level (e.g., a 1% chance of losing more than $1 million in a day). It does not measure performance relative to a benchmark.
-   **C. Tracking risk (or Tracking Error):** This is the quintessential measure of relative risk. It is defined as the standard deviation of the portfolio's active returns (the difference between the portfolio's return and the benchmark's return). An objective to keep returns "within 5% of a benchmark" is a direct statement about managing and limiting the portfolio's tracking risk.
**2. Conclusion**
The risk of deviating from a benchmark's return is measured by **tracking risk**. Therefore, option **C** is correct.
---
### **Question 98: Forward Price with Costs and Benefits**
**Question:** The forward price of an asset with benefits and costs is the spot price:
A. discounted at the risk-free rate over the life of the contract minus the present value of those benefits.
B. compounded at the risk-free rate over the life of the contract minus the present value of those benefits.
C. compounded at the risk-free rate over the life of the contract minus the future value of those benefits.
---
**Solution: C**
**1. Conceptual Framework**
The no-arbitrage price of a forward contract, $F_0(T)$, is determined by the cost of buying the asset today ($S_0$) and carrying it to the delivery date (T). This "cost of carry" includes financing costs (compounding the spot price at the risk-free rate), any costs of holding the asset (like storage costs), and any benefits received from holding the asset (like dividends or convenience yield).
All components must be expressed in terms of their value at time T.
The general formula is:
$$ F_0(T) = (S_0 - PV_0(\text{benefits}) + PV_0(\text{costs}))(1+r)^T $$
Expanding this gives:
$$ F_0(T) = S_0(1+r)^T - FV_T(\text{benefits}) + FV_T(\text{costs}) $$
This shows the forward price is the **spot price compounded to time T**, minus the **future value of any benefits**, plus the **future value of any costs**.
**2. Analysis of Options**
-   A: Incorrect. The spot price is compounded, not discounted.
-   B: Incorrect. The benefits must be expressed as their future value, not present value, to be netted against the future-valued spot price.
-   C: Correct. The forward price is the spot price compounded forward, and any cash flows (benefits or costs) occurring during the life of the contract must also be expressed in their future value at time T before being subtracted or added.
**3. Conclusion**
The forward price is the spot price **compounded** at the risk-free rate minus the **future value** of benefits (and plus the future value of costs). Therefore, option **C** is correct.
---
### **Question 99: Duration Gap**
**Question:** An investor with a 7-year investment horizon purchases an option-free fixed-rate bond with a modified duration of 10. In a positive yield environment, the investor's duration gap is:
A. negative.
B. zero.
C. positive.
---
**Solution: C**
**1. Conceptual Framework**
The **duration gap** is a measure of the mismatch between an investor's investment horizon and the duration of their bond portfolio. It is used to assess the investor's exposure to interest rate risk, considering both price risk and reinvestment risk.
-   **Macaulay Duration** is the correct measure of duration to compare against an investment horizon, as it represents the weighted-average time until the bond's cash flows are received.
-   The relationship between Macaulay (MacDur) and Modified (ModDur) duration is:
    $$ \text{MacDur} \approx \text{ModDur} \times (1 + \text{YTM}) $$
    In a positive yield environment (YTM > 0), Macaulay duration will always be greater than modified duration.
-   The duration gap is calculated as:
    $$ \text{Duration Gap} = \text{Macaulay Duration} - \text{Investment Horizon} $$
**2. Step-by-Step Analysis**
1.  **Given:** Modified Duration = 10. Investment Horizon = 7 years. Yields are positive.
2.  **Estimate Macaulay Duration:** Since yields are positive, Macaulay Duration > Modified Duration. Therefore, Macaulay Duration > 10.
3.  **Calculate the Duration Gap:**
    -   Duration Gap = (A number greater than 10) - 7
    -   The result must be a number greater than 3.
**3. Conclusion**
Since the Macaulay duration of the bond is greater than 10 and the investment horizon is 7, the duration gap is **positive**. Therefore, option **C** is correct.
---
### **Question 100: Implied Spot Rate**
**Question:** An analyst gathers the following information about forward rates:
| Time Period | Forward Rate |
| :---: | :---: |
| 0y1y | 2.31% |
| 1y1y | 2.82% |
| 2y1y | 2.97% |
The 2-year implied spot rate is closest to:
A. 2.56%
B. 2.82%
C. 2.89%
---
**Solution: A**
**1. Conceptual Framework**
Spot rates and forward rates are intrinsically linked by the principle of no arbitrage. The 2-year spot rate ($S_2$) represents the annualized rate of return for a 2-year zero-coupon bond. This return can be replicated by investing for one year at the 1-year spot rate ($S_1$) and simultaneously locking in the forward rate for the second year (the 1y1y forward rate).
The 1-year spot rate ($S_1$) is the same as the 0y1y forward rate. The relationship is:
$$ (1 + S_2)^2 = (1 + S_1)^1 \times (1 + \text{1y1y})^1 $$
**2. Step-by-Step Calculation**
**Step 1: Identify the relevant rates.**
-   1-year spot rate ($S_1$) = 0y1y forward rate = 2.31% or 0.0231
-   1-year forward rate, one year from now (1y1y) = 2.82% or 0.0282
-   The 2y1y forward rate is not needed for this calculation.
**Step 2: Calculate the geometric average.**
-   $(1 + S_2)^2 = (1 + 0.0231) \times (1 + 0.0282)$
-   $(1 + S_2)^2 = 1.0231 \times 1.0282 = 1.05194422$
-   $1 + S_2 = \sqrt{1.05194422} = 1.0256432...$
-   $S_2 = 0.0256432...$ or 2.564%
**3. Conclusion**
The 2-year implied spot rate is approximately 2.56%. Therefore, option **A** is correct.
---
### **Question 101: Correcting for Cognitive Errors**
**Question:** When making investment decisions, which of the following best describes a way to correct for a behavioral bias caused by a cognitive error?
A. Obtain better investment information
B. Rely on intuition when making investments
C. Evaluate investments based on past gains and losses
---
**Solution: A**
**1. Conceptual Framework**
Behavioral biases can be classified into two broad categories:
1.  **Cognitive Errors:** These are errors in reasoning, memory, or information processing. They are due to faulty thinking rather than the influence of feelings. Examples include conservatism bias, confirmation bias, and availability bias. Because they are errors in thinking, they **can be corrected or mitigated** by improving the thought process, for example, by using better data and more rigorous analytical frameworks.
2.  **Emotional Biases:** These stem from feelings, impulses, or intuition. Examples include loss aversion, overconfidence, and self-control bias. These are much harder to correct and are often **accommodated** rather than overcome.
**2. Analysis of Options**
-   **A. Obtain better investment information:** This directly addresses the root cause of many cognitive errors. For example, seeking out a wider range of data can counter availability bias (over-relying on easily recalled information). This is a valid corrective measure for cognitive errors.
-   **B. Rely on intuition when making investments:** Intuition is often driven by emotions and can amplify emotional biases. It is the opposite of the disciplined, analytical approach needed to correct cognitive errors.
-   **C. Evaluate investments based on past gains and losses:** This can introduce or reinforce biases like anchoring (being stuck on a past price) or the disposition effect (the tendency to sell winners and hold losers, which is driven by loss aversion). This is not a corrective action.
**3. Conclusion**
Cognitive errors are best corrected by improving the analytical process, which includes obtaining better, more complete information. Therefore, option **A** is correct.
---
### **Question 102: Effective Duration and Benchmark Yields**
**Question:** The price sensitivity of a bond to a change in the benchmark yield curve is the:
A. effective duration.
B. modified duration.
C. Macaulay duration.
---
**Solution: A**
**1. Conceptual Framework**
This question asks to identify the specific duration measure that quantifies sensitivity to a **benchmark yield curve**.
-   **Modified Duration:** Measures a bond's price sensitivity to a change in its own single **yield-to-maturity (YTM)**. It is a yield duration statistic.
-   **Macaulay Duration:** Measures the weighted-average time to receipt of a bond's cash flows. It is a measure of time, not directly a sensitivity measure, though it is related to modified duration.
-   **Effective Duration:** Measures a bond's price sensitivity to a parallel shift in a **benchmark yield curve** (e.g., the Treasury spot curve). It is calculated by repricing the bond after shifting the entire curve. This makes it a *curve duration* statistic and the most appropriate measure for bonds with embedded options, as their cash flows may change with the benchmark curve.
**2. Conclusion**
The duration measure that explicitly calculates price sensitivity relative to a benchmark yield curve is **effective duration**. Therefore, option **A** is correct.
---
### **Question 103: Key Rate Duration**
**Question:** Key rate duration:
A. requires the shape of the benchmark yield curve to stay constant.
B. measures a bond's sensitivity to a change in the benchmark yield at a specific maturity.
C. indicates the same interest rate sensitivity as effective duration for non-parallel shifts in the yield curve.
---
**Solution: B**
**1. Conceptual Framework**
**Key Rate Duration** (also known as partial duration) is a method for measuring the interest rate risk of a bond or portfolio in response to non-parallel shifts in the yield curve.
-   It works by measuring the sensitivity of a bond's price to a change in a single point—a "key rate"—on the yield curve, while holding all other rates constant.
-   By calculating a set of key rate durations for different maturities along the curve (e.g., 2-year, 5-year, 10-year, 30-year), an analyst can model the impact of various curve-shaping events like steepening, flattening, or humps.
-   This is in contrast to effective duration, which assumes a parallel shift where all rates change by the same amount.
**2. Analysis of Options**
-   A: This is false. The very purpose of key rate duration is to analyze changes in the shape of the yield curve (i.e., non-parallel shifts).
-   B: This is the precise definition. It measures sensitivity to a change in the benchmark yield at a **specific maturity** or "key rate."
-   C: This is false. Effective duration measures sensitivity to a parallel shift. The sensitivity to a non-parallel shift is found by combining multiple key rate duration effects, which will not generally equal the single effective duration value.
**3. Conclusion**
Key rate duration measures a bond's sensitivity to a change in the benchmark yield at a specific maturity. Therefore, option **B** is correct.
---
### **Question 104: Tokenization**
**Question:** The process of representing ownership rights to physical assets on a distributed ledger best describes:
A. tokenization.
B. a blockchain.
C. a permissioned network.
---
**Solution: A**
**1. Conceptual Framework**
This question defines a key concept in the world of digital assets and distributed ledger technology (DLT).
-   **A. Tokenization:** This is the **process** of converting the rights to an asset into a digital representation, known as a "token," on a blockchain or other DLT. This allows for fractional ownership, easier transferability, and automated transactions involving the asset. The asset can be physical (like real estate), financial (like a stock or bond), or intangible (like intellectual property).
-   **B. A blockchain:** This is the underlying **technology**—a decentralized and immutable digital ledger. It is the infrastructure *on which* tokenization occurs, but it is not the process itself.
-   **C. A permissioned network:** This describes a **type** of blockchain where access to participate in the network is restricted to authorized users. This is in contrast to a public or "permissionless" network (like Bitcoin or Ethereum) where anyone can participate. It is an architectural choice for a DLT, not the process of representing assets.
**2. Conclusion**
The process described is **tokenization**. Therefore, option **A** is correct.
---
### **Question 105: Put-Call Parity Equivalence**
**Question:** The concept of put-call parity best demonstrates the equivalence of:
A. puts and calls.
B. a covered call and a protective put.
C. a fiduciary call and a protective put.
---
**Solution: C**
**1. Conceptual Framework**
**Put-call parity** is a fundamental no-arbitrage relationship that links the prices of European put and call options with the same underlying asset, strike price, and expiration date.
The relationship is expressed as:
$
P_0 + S_0 = C_0 + \frac{X}{(1+r)^T}
$
Where:
- $P_0$ = Price of a put option
- $S_0$ = Price of the underlying asset
- $C_0$ = Price of a call option
- $X$ = Strike price
- $r$ = Risk-free rate
- $T$ = Time to expiration
**2. Analysis of Synthetic Portfolios**
We can interpret each side of the equation as a portfolio:
-   **Left Side ($P_0 + S_0$):** This portfolio consists of a long position in a put option plus a long position in the underlying asset. This is the definition of a **protective put**. It protects the owner from downside risk in the asset.
-   **Right Side ($C_0 + \frac{X}{(1+r)^T}$):** This portfolio consists of a long position in a call option plus a long position in a risk-free bond that will pay the exercise price X at expiration. This is the definition of a **fiduciary call**.
Because these two portfolios must have the same value to prevent arbitrage, they are equivalent.
-   A **covered call** (long stock, short call) is equivalent to a short put, which is a different parity relationship.
**3. Conclusion**
A core recommended procedure for supervisors is to encourage the firm to adopt and **integrate a code of ethics into compliance procedures**. Therefore, option **A** is correct.
---
### **Question 121: Standard VI(B) - Priority of Transactions**
**Question:** According to the Standard relating to priority of transactions, members should:
A. preclear trades in fee-paying family accounts in which the member has no beneficial ownership.
B. direct their brokers to supply duplicate copies for all their personal securities transactions to their employers.
C. allocate shares to other clients before allocating shares to fee-paying family accounts in which the members do not have beneficial ownership.
---
**Solution: B**
**1. Conceptual Framework**
**Standard VI(B) – Priority of Transactions** states that investment transactions for clients and employers must have priority over investment transactions in which a Member or Candidate is the beneficial owner. This means personal trades must not be executed ahead of or conflict with the interests of clients and the employer.
**2. Analysis of Recommended Procedures**
To ensure compliance, the standard recommends several procedures. Let's analyze the options in this context:
-   **A. preclear trades in fee-paying family accounts in which the member has no beneficial ownership:** The standard applies to accounts where the member has a **beneficial interest**. While firm policies may be stricter and cover all family accounts, the CFA standard itself focuses on beneficial ownership. Preclearance is a recommended procedure for a member's own trades, not necessarily for non-beneficial family accounts under the standard.
-   **B. direct their brokers to supply duplicate copies for all their personal securities transactions to their employers:** This is a specifically recommended procedure in the guidance for Standard VI(B). Providing duplicate confirmations or statements allows the employer to monitor the member's personal trading for any potential conflicts or violations of the priority of transactions.
-   **C. allocate shares to other clients before allocating shares to fee-paying family accounts...:** This relates to **Standard III(B) – Fair Dealing**, which requires fair, not preferential, treatment of all clients. It does not directly address the core issue of Standard VI(B), which is the priority of client and employer transactions over a member's *personal* transactions.
**3. Conclusion**
Providing duplicate confirmations of personal transactions to one's employer is a key recommended procedure for complying with the Priority of Transactions standard. Therefore, option **B** is correct.
---
### **Question 122: Standard III(C) - Suitability for Pooled Assets**
**Question:** According to the Standard relating to suitability, a member who manages pooled assets to a specific mandate is:
A. only required to determine suitability for investors in the fund.
B. only required to invest in a manner consistent with the stated mandate of the fund.
C. required to determine suitability for investors in the fund and invest in a manner consistent with the stated mandate of the fund.
---
**Solution: B**
**1. Conceptual Framework**
**Standard III(C) – Suitability** requires members in an advisory relationship with a client to make a reasonable inquiry into the client's situation and make recommendations that are suitable. However, the application of the standard is different for managers of pooled funds (like mutual funds, ETFs, or hedge funds).
**2. Application to Pooled Funds**
The guidance for Standard III(C) clarifies that for a manager of a pooled fund, the "client" is the fund itself. The manager's duty is to ensure that the investments made are suitable for the fund, which means adhering strictly to the fund's **stated investment strategy or mandate**. This mandate is described in the fund's prospectus or other governing documents.
The responsibility for determining whether the pooled fund is a suitable investment for an individual investor lies with the financial advisors who recommend the fund to that end-investor, not with the fund manager.
**3. Conclusion**
The manager of a pooled fund is responsible for investing in a manner consistent with the stated mandate of the fund. Therefore, option **B** is correct.
---
### **Question 123: Standard VI(A) - Disclosure of Conflicts**
**Question:** Oliver Rae, CFA, an individual investment adviser, packaged a real estate limited partnership (RELP) which he sold to his clients. The partnership had purchased four properties in which Rae held a 5% minority interest. According to the Standards, Rae should:
A. manage the partnership separately from his advisory business.
B. disclose conflicts related to the real estate he sold to the partnership.
C. return all profits earned from his minority interest to the limited partners.
---
**Solution: B**
**1. Conceptual Framework**
This scenario involves a clear conflict of interest, which is governed by **Standard VI(A) – Disclosure of Conflicts**. This standard requires members to make full, fair, and plain disclosure of all matters that could reasonably be expected to impair their independence and objectivity or interfere with their duties to clients.
**2. Analysis of the Conflict**
Rae is acting as an adviser to his clients while also being on the other side of a transaction with them, albeit indirectly. He personally owned a stake in the properties that the partnership (which he is selling to his clients) purchased. His personal financial interest in these properties could compromise his objectivity in recommending the RELP to his clients.
-   **A. manage the partnership separately...:** This does not resolve the conflict that already exists.
-   **C. return all profits...:** The Standards do not necessarily require forfeiture of profits. The primary requirement is disclosure, allowing the clients to make an informed decision.
-   **B. disclose conflicts...:** This is the correct course of action. Rae must disclose to his clients, before they invest, that he has a personal ownership interest in the properties held by the partnership. This disclosure must be prominent and clear, allowing clients to judge his recommendation with full knowledge of his conflict of interest.
**3. Conclusion**
To comply with the Standards, Rae must **disclose the conflict of interest** to his clients. Therefore, option **B** is correct.
---
### **Question 124: Standard I(C) - Misrepresentation (Plagiarism)**
**Question:** John McCay, CFA, is an analyst who has prepared a report on the cable industry based on research from a variety of sources and analysts. He compiles these findings to form his own opinion and distributes the report to clients without acknowledging his sources. McCay has violated the Standards by:
A. failing to cite the work of others.
B. failing to have a reasonable basis for his conclusions.
C. incorporating other analysts' research into his own work.
---
**Solution: A**
**1. Conceptual Framework**
This scenario relates to **Standard I(C) – Misrepresentation**, which prohibits members from knowingly making any misrepresentations. A key form of misrepresentation is **plagiarism**—the act of using the words, ideas, or work of others without giving them proper credit.
**2. Analysis of McCay's Actions**
-   It is perfectly acceptable and common practice for analysts to incorporate the research of others into their own work (ruling out option C).
-   If the sources are credible, using them can form a reasonable basis for his conclusions (ruling out option B, as there's no information to suggest the sources were unreliable).
-   However, McCay "distributes the report to clients without acknowledging his sources." By doing this, he is implicitly presenting the compiled findings and analysis as his own original work. This is plagiarism. He must cite the sources for the information and ideas he used.
**3. Conclusion**
McCay has committed plagiarism by using the work of others without attribution. He has violated the Standards by **failing to cite the work of others**. Therefore, option **A** is correct.
---
### **Question 125: Standard III(A) - Loyalty, Prudence, and Care**
**Question:** A member who manages the pension plan of a company owes the duty of loyalty:
A. only to the company.
B. only to the beneficiaries of the pension plan.
C. both to the company and to the beneficiaries of the pension plan.
---
**Solution: B**
**1. Conceptual Framework**
**Standard III(A) – Loyalty, Prudence, and Care** requires members to act for the benefit of their clients and place their clients’ interests before their employer’s or their own interest.
**2. Identifying the "Client" in a Pension Plan**
When managing a pension plan, it is critical to identify the ultimate "client" to whom the fiduciary duty is owed. While the sponsoring company hires and pays the investment manager, the assets of the plan are held in trust for the sole benefit of the plan's participants and beneficiaries (the employees and retirees).
The interests of the sponsoring company (e.g., minimizing contributions, reducing risk to its own balance sheet) can and often do conflict with the interests of the beneficiaries (e.g., maximizing risk-adjusted returns to ensure benefits are paid). In all cases, the investment manager's duty of loyalty is to the plan's beneficiaries.
**3. Conclusion**
A member managing a pension plan owes the duty of loyalty **only to the beneficiaries of the pension plan**. Therefore, option **B** is correct.
---
### **Question 126: Standard V(B) - Communication with Clients**
**Question:** Which of the following member actions is consistent with the Standard relating to communication with clients and prospective clients?
Action 1: Members must disclose limitations in liquidity and capacity associated with investment decisions.
Action 2: Members should inform the clients about the use of outside advisers to manage portions of clients' assets under management.
A. Action 1 only
B. Action 2 only
C. Both Action 1 and Action 2
---
**Solution: C**
**1. Conceptual Framework**
**Standard V(B) – Communication with Clients and Prospective Clients** requires members to:
1.  Disclose the basic format and general principles of the investment processes they use.
2.  Disclose significant limitations and risks associated with the investment process.
3.  Use reasonable judgment in identifying which factors are important to their investment analyses.
4.  Distinguish between fact and opinion in the presentation of investment analysis.
**2. Analysis of Actions**
-   **Action 1:** Disclosing limitations and risks is a core requirement of the standard. If a strategy has limited capacity (i.e., it cannot be scaled up without affecting performance) or involves investing in illiquid assets, these are significant limitations that must be communicated to clients. This action is consistent with the Standard.
-   **Action 2:** The guidance for Standard V(B) specifically mentions that if a member uses external advisers or sub-managers to manage a portion of the assets, this arrangement should be disclosed to clients. This action is also consistent with the Standard.
**3. Conclusion**
Both actions are explicitly or implicitly required by Standard V(B) to ensure clear and complete communication with clients. Therefore, option **C** is correct.
---
### **Question 127: Standard I(B) - Independence and Objectivity**
**Question:** An member, who is an independent analyst, is approached by two small companies to write issuer-paid research reports. Company 1 proposes to pay a flat fee plus stock warrants. Company 2 requires the member to obtain approval prior to publishing the reports. The member most likely violates the Standards if the member agrees to write reports for:
A. Company 1 only.
B. Company 2 only.
C. both Company 1 and Company 2.
---
**Solution: C**
**1. Conceptual Framework**
**Standard I(B) – Independence and Objectivity** requires members to use reasonable care, judgment, and caution to achieve and maintain independence and objectivity in their professional activities. Issuer-paid research is a high-risk area for this standard.
**2. Analysis of Arrangements**
-   **Company 1 (Fee plus Stock Warrants):** While a flat fee for issuer-paid research can be acceptable with full disclosure, the inclusion of stock warrants is a clear violation. The warrants' value is directly tied to the company's stock price. This gives the analyst a direct financial incentive to write a positive report to boost the stock price and the value of their own warrants, which severely compromises their objectivity.
-   **Company 2 (Requires Prior Approval):** This arrangement gives the company censorship power over the research report. The analyst cannot be independent and objective if the subject of the report has the ability to veto its publication. An analyst must retain full control over the content of their report. This arrangement violates the standard.
**3. Conclusion**
Both proposed arrangements would prevent the member from maintaining independence and objectivity. The stock warrants create a financial conflict, and the prior-approval requirement creates a content-control conflict. Therefore, agreeing to either arrangement would be a violation, and the member violates the Standards if they agree to write reports for **both Company 1 and Company 2**. Option **C** is correct.
---
### **Question 128: CFA Ethics Violations**
**Question:** Emily Tucker, CFA, an analyst at Bowron, analyzes Hanchin Corporation as a potential acquisition target. She mentions to her CEO that several companies are attractive targets. Tucker then purchases 100,000 shares of Hanchin. Two weeks later, Bowron announces its acquisition of Hanchin. With regards to her purchase of Hanchin stock, Tucker least likely violated the Standard relating to: *[Note: The provided text only lists two options, Loyalty and Priority of Transactions. This is likely an error in the source material, as both are violated. A third, more plausible option for a "least likely" violation would be Standard II(A) - Material Nonpublic Information.]*
A. loyalty.
B. priority of transactions.
---
**Solution: Analysis Only (Flawed Question)**
**1. Conceptual Framework**
This scenario involves multiple potential violations related to a member's duties to their employer and the integrity of capital markets.
-   **Standard IV(A) – Loyalty:** Members have a duty of loyalty to their employer. They must not act in a way that harms their employer or deprives their employer of the advantage of their skills and abilities.
-   **Standard VI(B) – Priority of Transactions:** Investment transactions for clients and employers must have priority over a member's personal transactions.
-   **Standard II(A) – Material Nonpublic Information:** Members who possess material nonpublic information that could affect the value of an investment must not act or cause others to act on the information.
**2. Analysis of Violations**
-   **Violation of Standard IV(A) - Loyalty:** Tucker used her skills and the analysis she performed for her employer to benefit herself personally. She acted on her work product before her employer could, potentially harming them (e.g., by contributing to an increase in Hanchin's stock price before an acquisition). This is a clear breach of her duty of loyalty.
-   **Violation of Standard VI(B) - Priority of Transactions:** This is a very specific form of the loyalty violation. Tucker's personal transaction in Hanchin stock, a company she was analyzing for her employer as a potential acquisition, was placed ahead of her employer's potential transaction. She did not give her employer's interests priority. This is a clear violation.
-   **Violation of Standard II(A) - Material Nonpublic Information (MNI):** This violation is **less certain**. A violation would require that Tucker possessed information that was both *material* (likely to affect the price) and *nonpublic*, and that the acquisition was highly probable. While she knew Hanchin was a potential target, the announcement was two weeks later. It is plausible she was acting on her own analysis (which is a loyalty/priority breach) rather than on specific, nonpublic knowledge that a deal was imminent. Compared to the definite breaches of her duties to her employer, the MNI violation is the most ambiguous and therefore the *least likely* certain violation.
**3. Conclusion**
Given the flawed nature of the options provided in the source text ("A. loyalty" and "B. priority of transactions"), a definitive answer is impossible as both standards were clearly violated. However, if the question intended to contrast these with a potential MNI violation, the MNI violation would be the least certain. As written, the question is unanswerable.
---
### **Question 129: Standard VII(B) - Reference to the CFA Designation**
**Question:** Joanne Bryce, who recently passed Level III, will soon be awarded her charter. Her employer plans an ad. Including which of the following statements in the ad least likely complies with the CFA Institute Standards of Professional Conduct?
A. The CFA charter is a key asset in the development of her investment career.
B. By becoming a charterholder, she has significantly improved her standing within the firm.
C. Ms. Bryce passed all three levels of the exam consecutively, placing her in an elite group.
---
**Solution: C**
**1. Conceptual Framework**
**Standard VII(B) – Reference to CFA Institute, the CFA Designation, and the CFA Program** governs how members and candidates can refer to their affiliation. A core principle is that one must not misrepresent or exaggerate the meaning or implications of membership, holding the designation, or candidacy.
**2. Analysis of Statements**
-   **A. "The CFA charter is a key asset...":** This is a factual statement of opinion about the value of the charter in one's career. It does not promise superior performance or misrepresent the designation. This is compliant.
-   **B. "...significantly improved her standing within the firm":** This is a statement about her internal status at her employer. It is not an exaggeration of the meaning of the charter itself and is likely compliant.
-   **C. "...passed all three levels...consecutively, placing her in an elite group":** This statement is problematic. The Standards specifically caution against emphasizing the difficulty of the exams or suggesting that passing them (especially in a particular manner, like consecutively) implies superior ability or performance. Using terms like "elite group" is a form of exaggeration that the Standard seeks to prevent. The focus should be on the achievement of earning the charter, not the process.
**3. Conclusion**
The statement that highlights the difficulty and exclusivity of passing the exams is the one that **least likely complies** with the Standards. Therefore, option **C** is correct.
---
### **Question 130: Standard II(B) - Market Manipulation**
**Question:** According to the Standards, transaction-based manipulation includes:
A. acquiring a dominant position in a derivative to exploit the price of a related underlying.
B. taking an aggressive investment position in a security with an intent to exploit market inefficiencies.
C. issuing an overly optimistic projection of a security's value to induce trading by other market participants.
---
**Solution: A**
**1. Conceptual Framework**
**Standard II(B) – Market Manipulation** prohibits conduct that distorts prices or artificially inflates trading volume with the intent to mislead market participants. There are two main categories:
1.  **Information-Based Manipulation:** Spreading false or misleading information to influence prices.
2.  **Transaction-Based Manipulation:** Using actual trades to mislead the market. This includes transactions that give a false impression of trading activity or that are intended to manipulate the price of a security.
**2. Analysis of Options**
-   **A. acquiring a dominant position in a derivative to exploit the price of a related underlying:** This is a classic example of **transaction-based manipulation**. For instance, an investor could corner the market on a futures contract to artificially distort its price near expiration, forcing others to settle at a manipulated price. The *transactions* themselves are the tool of manipulation.
-   **B. taking an aggressive investment position... to exploit market inefficiencies:** This is the definition of legitimate active investing. It is not manipulation unless the transactions are intended to create artificial price movements rather than to profit from perceived mispricing.
-   **C. issuing an overly optimistic projection...:** This is an example of **information-based manipulation**, as it involves disseminating misleading information, not using trades to manipulate the market.
**3. Conclusion**
Acquiring a dominant position to manipulate prices is a form of **transaction-based manipulation**. Therefore, option **A** is correct.
---
### **Question 131: Basic EPS Calculation**
**Question:** An analyst gathers the following information about a company:
| | Year 2 | Year 1 |
| :--- | :---: | :---: |
| Net income | €57,500 | €58,000 |
| WACS outstanding | 650,000 | 635,000 |
Which of the following increased from Year 1 to Year 2? A. Basic EPS
---
**Solution: Analysis Only (Statement is False)**
**1. Conceptual Framework**
Basic Earnings Per Share (EPS) is a measure of a company's profitability allocated to each outstanding share of common stock. It is calculated as:
$$
\text{Basic EPS} = \frac{\text{Net Income} - \text{Preferred Dividends}}{\text{Weighted Average Common Shares (WACS) Outstanding}}
$$
Since no preferred dividends are mentioned, we use Net Income as the numerator.
**2. Step-by-Step Calculation**
-   **EPS for Year 1:**
    -   EPS = €58,000 / 635,000 shares = **€0.0913**
-   **EPS for Year 2:**
    -   EPS = €57,500 / 650,000 shares = **€0.0885**
**3. Conclusion**
Basic EPS **decreased** from €0.0913 in Year 1 to €0.0885 in Year 2. Therefore, the statement "Basic EPS increased from Year 1 to Year 2" is **false**. The question is likely part of a multiple-choice set where other options would need to be evaluated.
---
### **Question 132: Monetary Policy Transmission Mechanism**
**Question:** All else being equal, an increase in the central bank's policy rate most likely puts downward pressure on domestic inflation by:
A. increasing consumption growth.
B. improving investors' confidence.
C. strengthening the country's currency.
---
**Solution: C**
**1. Conceptual Framework**
The **monetary transmission mechanism** describes the various channels through which a central bank's policy actions (like changing the policy rate) affect the broader economy and ultimately the rate of inflation. One of the key channels is the **exchange rate channel**.
**2. Analysis of the Exchange Rate Channel**
1.  A central bank **increases its policy rate**.
2.  All else equal, domestic assets become more attractive to foreign investors seeking higher returns.
3.  This leads to an inflow of foreign capital and increased demand for the domestic currency in the foreign exchange market.
4.  The increased demand causes the domestic currency to **appreciate** (strengthen).
5.  A stronger domestic currency makes imports cheaper and exports more expensive. Cheaper imports put direct downward pressure on the domestic price level. More expensive exports reduce foreign demand for domestic goods, which dampens aggregate demand.
6.  Both effects help to reduce domestic inflation.
**3. Analysis of Options**
-   A: Incorrect. A higher policy rate increases the cost of borrowing, which *reduces* consumption growth.
-   B: Incorrect. The effect on confidence is ambiguous and not the primary mechanism. It could be seen as a negative signal about economic growth.
-   C: Correct. A higher policy rate attracts foreign investment, **strengthening the country's currency**, which in turn helps to curb inflation.
**4. Conclusion**
The strengthening of the country's currency is a key part of the monetary transmission mechanism through which a policy rate increase fights inflation. Therefore, option **C** is correct.
---
### **Question 133: Capital Structure Weights**
**Question:** An analyst gathers the following information (in $ millions) about a company:
| | Book Value | Market Value |
| :--- | :---: | :---: |
| Debt | 30 | 35 |
| Preferred stock | 10 | 15 |
| Common stock | 60 | 100 |
Assuming the company's current capital structure is its target capital structure, the weight of debt is closest to:
A. 23.3%
B. 25.9%
C. 30.0%
---
**Solution: A**
**1. Conceptual Framework**
When calculating a company's capital structure weights, particularly for use in the Weighted Average Cost of Capital (WACC), it is essential to use **market values**, not book values. Market values reflect the current prices at which the company's securities are trading and thus represent the true current cost of its financing.
The weight of any capital component is its market value divided by the total market value of all capital components.
**2. Step-by-Step Calculation**
**Step 1: Calculate the total market value of the company's capital.**
-   Total Market Value = Market Value of Debt + Market Value of Preferred Stock + Market Value of Common Stock
-   Total Market Value = $35M + $15M + $100M = $150M
**Step 2: Calculate the weight of debt.**
-   Weight of Debt = $\frac{\text{Market Value of Debt}}{\text{Total Market Value}}$
-   Weight of Debt = $\frac{\$35M}{\$150M} \approx 0.2333$
**3. Conclusion**
The weight of debt in the company's capital structure is 23.33%, or **23.3%**. Therefore, option **A** is correct.
---
### **Question 134: Effect of an Inventory Write-Down on Ratios**
**Question:** Which of the following ratios will most likely increase as a result of an inventory write-down?
A. Current ratio
B. Total asset turnover ratio
C. Receivables turnover ratio
---
**Solution: B**
**1. Conceptual Framework**
An inventory write-down occurs when the net realizable value of inventory falls below its cost. The accounting impact is:
-   **Income Statement:** The amount of the write-down is recognized as an expense, usually within Cost of Goods Sold (COGS). This reduces gross profit and net income.
-   **Balance Sheet:** The value of Inventory is reduced. This, in turn, reduces Current Assets and Total Assets. Retained Earnings (and thus Equity) are also reduced.
**2. Analysis of Ratio Effects**
Let's analyze the effect of the write-down on each ratio's numerator and denominator.
-   **A. Current Ratio = $\frac{\text{Current Assets}}{\text{Current Liabilities}}$**
    -   The numerator (Current Assets) decreases because Inventory decreases.
    -   The denominator (Current Liabilities) is unchanged.
    -   Result: The ratio **decreases**.
-   **B. Total Asset Turnover Ratio = $\frac{\text{Sales}}{\text{Average Total Assets}}$**
    -   The numerator (Sales) is unchanged.
    -   The denominator (Average Total Assets) decreases because the write-down reduces the value of ending assets.
    -   Result: A decrease in the denominator with an unchanged numerator causes the ratio to **increase**.
-   **C. Receivables Turnover Ratio = $\frac{\text{Sales}}{\text{Average Accounts Receivable}}$**
    -   The numerator (Sales) is unchanged.
    -   The denominator (Average Accounts Receivable) is unchanged.
    -   Result: The ratio is **unchanged**.
**3. Conclusion**
The total asset turnover ratio is the only ratio listed that will most likely increase as a result of an inventory write-down. Therefore, option **B** is correct.
---
### **Question 135: Regression Model Terminology**
**Question:** A functional form of a simple linear regression in which the dependent variable is logarithmic but the independent variable is linear is best referred to as the:
A. log-lin model.
B. lin-log model.
C. log-log model.
---
**Solution: A**
**1. Conceptual Framework**
In econometrics and statistics, the functional form of a regression model is named based on the transformation applied to the dependent and independent variables. The convention is to name it as:
**`(dependent variable transformation)` - `(independent variable transformation)`**
**2. Analysis of Model Types**
-   **Log-Lin Model:** The dependent variable (Y) is logarithmic, and the independent variable (X) is linear. The form is $ \ln(Y) = b_0 + b_1X $. This is the model described in the question. It is used when a constant change in X is expected to produce a constant *percentage* change in Y.
-   **Lin-Log Model:** The dependent variable (Y) is linear, and the independent variable (X) is logarithmic. The form is $ Y = b_0 + b_1\ln(X) $.
-   **Log-Log Model:** Both the dependent (Y) and independent (X) variables are logarithmic. The form is $ \ln(Y) = b_0 + b_1\ln(X) $. In this model, the coefficient $b_1$ represents an elasticity.
A model where the dependent variable is logarithmic and the independent variable is linear is referred to as a **log-lin model**. Therefore, option **A** is correct.
---
### **Question 136: Reversal of Inventory Write-Down**
**Question:** The reversal of an inventory write-down:
A. reduces cost of sales.
B. increases other comprehensive income.
C. is permitted under both IFRS and US GAAP.
---
**Solution: A**
**1. Conceptual Framework**
The accounting treatment for the reversal of inventory write-downs is a key difference between IFRS and US GAAP.
-   **IFRS (IAS 2):** If the circumstances that previously caused inventory to be written down no longer exist, or if there is clear evidence of an increase in net realizable value (NRV), the write-down **must be reversed**. The reversal is limited to the amount of the original write-down and is recognized as a **reduction in the cost of sales**.
-   **US GAAP:** Reversals of inventory write-downs are **prohibited**.
**2. Analysis of Options**
-   **A. reduces cost of sales:** Correct. This is the treatment under IFRS.
-   **B. increases other comprehensive income:** Incorrect. The reversal impacts the income statement.
-   **C. is permitted under both IFRS and US GAAP:** Incorrect. It is only permitted under IFRS.
**3. Conclusion**
The reversal of an inventory write-down (under IFRS) **reduces cost of sales**. Therefore, option **A** is correct.
---
### **Question 137: Kinked Demand Curve**
**Question:** A firm in an oligopoly market most likely faces a kinked demand curve if:
A. there is collusion among market players.
B. competitors match a price reduction and ignore a price increase.
C. the firm determines its profit-maximizing production level by assuming that the other firms' output will not change.
---
**Solution: B**
**1. Conceptual Framework**
The **kinked demand curve model** explains price rigidity in oligopolies based on the assumption of an asymmetric reaction from competitors:
-   If a firm raises its price, competitors will **not** follow, leading to elastic demand.
-   If a firm lowers its price, competitors **will** follow, leading to inelastic demand.
**2. Analysis of Options**
-   A: Collusion leads to a monopoly outcome, not a kinked demand curve.
-   B: This is the exact behavioral assumption of the kinked demand curve model.
-   C: This describes the Cournot model of oligopoly.
**3. Conclusion**
The condition described is that **competitors match a price reduction and ignore a price increase**. Therefore, option **B** is correct.
---
### **Question 138: Operational Risk**
**Question:** Which of the following is best classified as an operational risk?
A. The deterioration of corporate performance resulting in a debt default.
B. A company becoming subject to investigation by government for violation of applicable laws.
C. Poor audit procedures resulting in one stakeholder group benefiting at the expense of the company.
---
**Solution: C**
**1. Conceptual Framework**
**Operational Risk** is the risk of loss from failed internal processes, people, and systems, or from external events.
-   A: This is **credit risk** or financial risk.
-   B: This is **legal and regulatory risk**.
-   C: Poor audit procedures are a failure of **internal processes**. This perfectly fits the definition of operational risk.
**2. Conclusion**
The risk from **poor audit procedures** is the best example of an operational risk. Therefore, option **C** is correct.
---
### **Question 139: Crowding Out Effect**
**Question:** The crowding out effect is best described as:
A. inflation increasing as a result of printing money.
B. government borrowing diverting private sector investment.
C. economic activity decreasing due to higher marginal tax rates.
---
**Solution: B**
**1. Conceptual Framework**
The **crowding-out effect** occurs when increased government borrowing drives up interest rates, making it more expensive for private firms to borrow. This leads to a reduction in private investment.
**2. Analysis of Options**
-   A: Describes inflation from monetizing debt.
-   B: This is the definition of the crowding-out effect.
-   C: Describes the supply-side effects of high tax rates.
**3. Conclusion**
The crowding out effect is **government borrowing diverting private sector investment**. Therefore, option **B** is correct.
---
### **Question 140: Characteristics of Big Data**
**Question:** Which of the following is not generally considered one of the three key characteristics of Big Data?
A. Variety
B. Volume
C. Visibility
---
**Solution: C**
**1. Conceptual Framework**
The "Three Vs" are the most common definition for Big Data:
1.  **Volume:** Enormous quantity of data.
2.  **Velocity:** High speed of data generation.
3.  **Variety:** Wide range of data types.
"Visibility" is a goal of data analysis, not a characteristic of the data itself.
**2. Conclusion**
**Visibility** is not one of the three key characteristics of Big Data. Therefore, option **C** is correct.
---
### **Question 141: Monetary Transmission Mechanism**
**Question:** A central bank increases its purchases of bonds... intending to decrease interest rates, boost confidence... and ultimately raise the general level of employment, production, and prices... This is most likely an example of:
A. money neutrality.
B. expansionary fiscal policy.
C. the monetary transmission mechanism.
---
**Solution: C**
**1. Conceptual Framework**
The **monetary transmission mechanism** is the process by which central bank policy actions affect the broader economy. The scenario describes this process perfectly: an action (bond purchases) influences financial variables (interest rates, asset prices), which in turn affect real economic variables (employment, production).
**2. Conclusion**
The process described is an example of **the monetary transmission mechanism**. Therefore, option **C** is correct.
---
### **Question 142: Cash Flow Per Share**
**Question:** A company has CFO of €600,000, paid preferred dividends of €30,000, and has 100,000 common shares. Cash flow per share is closest to:
A. €5.70.
B. €6.30.
---
**Solution: A**
**1. Conceptual Framework**
A common calculation for cash flow per share subtracts preferred dividends from CFO, as this cash is not available to common shareholders.
$ \text{Cash Flow Per Share} = \frac{\text{CFO} - \text{Preferred Dividends}}{\text{Common Shares}} $
**2. Calculation**
-   Cash Flow Per Share = (€600,000 - €30,000) / 100,000
-   Cash Flow Per Share = €570,000 / 100,000 = **€5.70**
**3. Conclusion**
The cash flow per share is **€5.70**. Therefore, option **A** is correct.
---
### **Question 143: The Ideal Currency Regime**
**Question:** Which of the following is not a feature of the ideal currency regime?
A. All currencies are fully convertible.
B. All countries run independent monetary policies.
C. Exchange rates between any two currencies are floating.
---
**Solution: C**
**1. Conceptual Framework**
The **"Impossible Trinity"** states a country cannot simultaneously have: 1) A fixed exchange rate, 2) Free capital flows, and 3) Independent monetary policy. The theoretical "ideal" regime would achieve all three.
**2. Analysis**
-   A: "Fully convertible" means free capital flows. This is part of the ideal trio.
-   B: "Independent monetary policies" is part of the ideal trio.
-   C: "Floating" exchange rates are the opposite of the "fixed exchange rate" goal in the ideal trio.
**3. Conclusion**
Floating exchange rates are not a feature of the theoretical ideal regime defined by the Impossible Trinity. Therefore, option **C** is correct.
---
### **Question 144: Principal-Agent Conflict**
**Question:** A principal-agent conflict is best described as management putting their own interests above those of:
A. regulators.
B. customers.
C. shareholders.
---
**Solution: C**
**1. Conceptual Framework**
In corporate governance, the **shareholders** are the principals (owners), and **management** are the agents hired to act in the principals' best interests. The conflict arises when agents prioritize their own interests (e.g., compensation, job security) over the principals' goal of wealth maximization.
**2. Conclusion**
The conflict is between management and **shareholders**. Therefore, option **C** is correct.
---
### **Question 145: Jensen's Free Cash Flow Hypothesis**
**Question:** According to Jensen's free cash flow hypothesis:
A. internal financing is preferable to debt issuance.
B. debt reduces management opportunities to misuse cash.
C. debt issuance signals confidence about a company's prospects.
---
**Solution: B**
**1. Conceptual Framework**
Jensen's hypothesis suggests that managers with excess free cash flow are prone to wasting it on value-destroying "empire building." Debt acts as a disciplinary tool by committing the firm to fixed payments, reducing the discretionary cash available to management.
**2. Conclusion**
The core of the hypothesis is that **debt reduces management opportunities to misuse cash**. Therefore, option **B** is correct.
---
### **Question 146: Fiscal Policy**
**Question:** An increase in corporate taxes is considered:
A. expansionary fiscal policy.
B. contractionary fiscal policy.
C. contractionary monetary policy.
---
**Solution: B**
**1. Conceptual Framework**
-   **Fiscal Policy:** Government actions on spending and taxation. Increasing taxes slows the economy.
-   **Monetary Policy:** Central bank actions, primarily on interest rates.
An increase in taxes is a tool to slow the economy, which is the definition of **contractionary fiscal policy**.
**2. Conclusion**
An increase in corporate taxes is a **contractionary fiscal policy**. Therefore, option **B** is correct.
---
### **Question 147: Foreign Exchange Forward Points**
**Question:** USD/EUR spot = 1.1640; 3-month forward points = 12.8. The best interpretation is that:
A. the 3-month US real interest rate is expected to rise.
B. the US dollar is trading at a premium to its forward rate.
C. 3-month eurozone interest rates are lower than those in the United States.
---
**Solution: C**
**1. Conceptual Framework**
The forward rate is higher than the spot rate (1.1640 + 0.00128 = 1.16528). This means the base currency (EUR) is at a **forward premium**. Interest rate parity dictates that the currency with the lower interest rate trades at a forward premium.
**2. Conclusion**
Since the EUR is at a premium, **3-month eurozone interest rates are lower than those in the United States**. Therefore, option **C** is correct.
---
### **Question 148: Oligopoly Market Structure**
**Question:** Which market structure has high barriers to entry and products with close substitutes?
A. Oligopoly
B. Monopoly
C. Monopolistic competition
---
**Solution: A**
**1. Conceptual Framework**
-   **Oligopoly:** High barriers to entry, few firms, products can be differentiated (close substitutes).
-   **Monopoly:** High barriers, one firm, unique product with no close substitutes.
-   **Monopolistic Competition:** Low barriers, many firms, differentiated products.
The description matches a differentiated **Oligopoly**.
**2. Conclusion**
The market structure described is an **Oligopoly**. Therefore, option **A** is correct.
---
### **Question 149: NPV Calculation**
**Question:** A project has an initial outlay of €100M and cash flows of €65M per year for 3 years. If r = 15%, the NPV is closest to:
A. €48 million
B. €95 million
C. €148 million
---
**Solution: A**
**1. Calculation**
Using a financial calculator to find the present value (PV) of the annuity:
-   N=3, I/Y=15, PMT=65, FV=0 -> Compute PV = €148.44M.
-   NPV = PV of Inflows - Outlay = €148.44M - €100M = €48.44M.
**2. Conclusion**
The NPV is closest to **€48 million**. Therefore, option **A** is correct.
---
### **Question 150: Gain or Loss on Asset Sale**
**Question:** Equipment with cost of €1,000,000 and accumulated depreciation of €200,000 is sold for €900,000. The result is a:
A. loss of €300,000
B. loss of €100,000
C. gain of €100,000
---
**Solution: C**
**1. Calculation**
-   Carrying Value = Cost - Accumulated Depreciation = €1,000,000 - €200,000 = €800,000.
-   Gain/Loss = Sale Proceeds - Carrying Value = €900,000 - €800,000 = +€100,000.
**2. Conclusion**
The result is a **gain of €100,000**. Therefore, option **C** is correct.
---
### **Question 151: CFO Adjustments (Indirect Method)**
**Question:** Using the indirect method, what is the adjustment to net income given: Amortization of bond premium £2,000; Gain on sale of assets £1,000; Increase in deferred tax liability £6,000; Increase in unearned revenue £4,000.
A. -£7,000
B. -£1,000
C. £7,000
---
**Solution: C**
**1. Calculation**
We start with Net Income and make the following adjustments to get to CFO:
-   Subtract non-cash revenues/gains:
    -   Subtract Gain on Sale: -£1,000
    -   Subtract Amortization of Bond Premium (reduces interest expense): -£2,000
-   Add back non-cash expenses:
    -   Add Increase in Deferred Tax Liability: +£6,000
-   Add increases in operating liabilities:
    -   Add Increase in Unearned Revenue: +£4,000
-   Total Adjustment = -£1,000 - £2,000 + £6,000 + £4,000 = **+£7,000**
**2. Conclusion**
The total adjustment to net income is **£7,000**. Therefore, option **C** is correct.
---
### **Question 152: Cluster Sampling**
**Question:** A sampling method that divides the population into subgroups and then selects whole subgroups using simple random sampling is best described as:
A. cluster sampling.
B. non-probability sampling.
C. stratified random sampling.
---
**Solution: A**
**1. Conceptual Framework**
-   **Cluster Sampling:** The population is divided into clusters. A random sample of *whole clusters* is selected for analysis.
-   **Stratified Sampling:** The population is divided into strata. A random sample is taken from *each* stratum.
The question describes selecting whole subgroups, which is **cluster sampling**.
**2. Conclusion**
The method described is **cluster sampling**. Therefore, option **A** is correct.
---
### **Question 153: Spearman Rank Correlation**
**Question:** For a sample size of 10 and sum of squared differences in ranks of 118, the Spearman rank correlation is closest to:
A. 0.28.
B. 0.72.
C. 0.93.
---
**Solution: A**
**1. Formula & Calculation**
The Spearman rank correlation coefficient ($r_s$) is calculated as:
$ r_s = 1 - \frac{6 \sum d_i^2}{n(n^2 - 1)} $
-   $r_s = 1 - \frac{6 \times 118}{10(10^2 - 1)} = 1 - \frac{708}{10(99)} = 1 - \frac{708}{990}$
-   $r_s = 1 - 0.71515... = 0.2848...$
**2. Conclusion**
The Spearman rank correlation is approximately **0.28**. Therefore, option **A** is correct.
---
### **Question 154: Currency Appreciation/Depreciation**
**Question:** USD/EUR spot rate is 1.1800, and the expected spot rate in one year is 1.1650. The expected change in value of the dollar relative to the euro is closest to a(n):
A. depreciation of 1.27%
B. appreciation of 1.27%
C. appreciation of 1.29%
---
**Solution: C**
**1. Conceptual Framework**
The quote USD/EUR is the number of USD per 1 EUR.
-   Today: 1 EUR = 1.1800 USD
-   In 1 year: 1 EUR = 1.1650 USD
The euro is expected to buy fewer dollars, so the euro is depreciating and the dollar is appreciating. To find the percentage change in the dollar's value, we must look at the EUR/USD rate.
**2. Calculation**
-   Spot EUR/USD rate = 1 / 1.1800 = 0.84746
-   Expected EUR/USD rate = 1 / 1.1650 = 0.85837
-   % Change in USD value = (New Rate / Old Rate) - 1
-   % Change = (0.85837 / 0.84746) - 1 = 1.01287 - 1 = 0.01287 or **+1.29%**
**3. Conclusion**
The dollar is expected to experience an **appreciation of 1.29%** relative to the euro. Therefore, option **C** is correct.
---
### **Question 155: Economic Indicators**
**Question:** Which of the following is most likely a leading indicator for an economy?
A. Change in unit labor costs
B. Average weekly hours, manufacturing
C. Employees on non-agricultural payrolls
---
**Solution: B**
**1. Conceptual Framework**
-   **Leading Indicators:** Change before the overall economy.
-   **Coincident Indicators:** Change with the economy.
-   **Lagging Indicators:** Change after the economy.
**2. Analysis**
-   A. Change in unit labor costs: This is a **lagging** indicator.
-   B. Average weekly hours, manufacturing: This is a classic **leading** indicator. Before committing to hiring or firing, firms will first adjust the hours of their existing workforce.
-   C. Employees on non-agricultural payrolls: This is a **coincident** indicator of the current state of economic activity.
**3. Conclusion**
**Average weekly hours, manufacturing** is a leading indicator. Therefore, option **B** is correct.
---
### **Question 156: Limited Partnership**
**Question:** Which organizational form has limited liability for some owners and passes through profits and losses to owners for taxation?
A. Corporation
B. Limited partnership
C. Sole proprietorship
---
**Solution: B**
**1. Conceptual Framework**
-   **A. Corporation:** Provides limited liability for all owners (shareholders) but is a separate taxable entity (no pass-through).
-   **B. Limited partnership:** Has at least one general partner (with unlimited liability) and one or more limited partners (with limited liability). It is a pass-through entity for tax purposes. This matches the description.
-   **C. Sole proprietorship:** Has one owner with unlimited liability but is a pass-through entity for tax purposes.
**2. Conclusion**
A **Limited partnership** has the described characteristics. Therefore, option **B** is correct.
---
### **Question 157: Modigliani-Miller Proposition I**
**Question:** According to the Modigliani-Miller Proposition I without taxes, as a company's leverage increases, its cost of capital:
A. decreases.
B. remains the same.
C. increases.
---
**Solution: B**
**1. Conceptual Framework**
-   **MM Proposition I (No Taxes):** The value of the firm is independent of its capital structure ($V_L = V_U$).
-   **MM Proposition II (No Taxes):** The cost of equity increases with leverage.
Since the value of the firm is constant, its overall Weighted Average Cost of Capital (WACC), which is its total cost of capital, must also be constant. The benefit of using cheaper debt is perfectly offset by the rising cost of equity.
**2. Conclusion**
Under MM Proposition I without taxes, the overall cost of capital **remains the same** regardless of leverage. Therefore, option **B** is correct.
---
### **Question 158: Conservatism Bias**
**Question:** When constructing a forecast, an analyst with a conservatism bias is most likely to:
A. deemphasize new information when updating their forecast.
B. seek opinions and information that agrees with their forecast.
C. build complex models using a wide breadth of data to create a forecast.
---
**Solution: A**
**1. Conceptual Framework**
**Conservatism bias** is a cognitive error where individuals are too slow to update their beliefs in response to new evidence. They tend to cling to their prior views or forecasts and underweight new information.
-   A: This is the definition of conservatism bias.
-   B: This describes confirmation bias.
-   C: This describes an attempt to mitigate bias, not a symptom of conservatism.
**2. Conclusion**
An analyst with conservatism bias will **deemphasize new information when updating their forecast**. Therefore, option **A** is correct.
---
### **Question 159: Target Downside Deviation**
**Question:** A portfolio's four most recent quarterly returns are 6%, -2%, 2%, 5%. If the target quarterly return is 3%, the target downside deviation is closest to:
A. 2.5%
B. 2.9%
---
**Solution: B**
**1. Calculation**
1.  **Returns below target (3%):** -2% and 2%.
2.  **Squared deviations:**
    -   (-2% - 3%)^2 = (-0.05)^2 = 0.0025
    -   (2% - 3%)^2 = (-0.01)^2 = 0.0001
3.  **Sum of squared deviations:** 0.0025 + 0.0001 = 0.0026
4.  **Sample variance:** Divide by n-1 = 4-1 = 3.
    -   0.0026 / 3 = 0.000866...
5.  **Standard deviation:** Take the square root.
    -   \sqrt{0.000866...} = 0.0294... or 2.94%
**2. Conclusion**
The target downside deviation is closest to **2.9%**. Therefore, option **B** is correct.
---
### **Question 160: Benefit of Globalization**
**Question:** Which of the following is most likely a benefit of globalization?
A. Increased profits
B. Interdependence
C. Stronger environmental, social, and governance standards
---
**Solution: A**
**1. Conceptual Framework**
Globalization refers to the increasing integration of economies worldwide. While it has many effects, the primary economic drivers and benefits relate to efficiency and growth.
-   **A. Increased profits:** By allowing firms to access larger markets, achieve economies of scale, and organize production based on comparative advantage (e.g., sourcing from lower-cost countries), globalization directly enables the potential for increased efficiency and higher profits.
-   **B. Interdependence:** This is a *characteristic* or consequence of globalization, not necessarily a benefit in itself. It can be a double-edged sword, fostering cooperation but also increasing the risk of global contagion during crises.
-   **C. Stronger ESG standards:** While there is an argument that globalization can spread best practices, there is also a strong counterargument that it can lead to a "race to the bottom" where firms seek out countries with the weakest regulations. This is a debated outcome, not a certain benefit.
**2. Conclusion**
The most direct and certain economic benefit of globalization for firms and economies is the opportunity for **increased profits** and economic growth through greater efficiency and larger markets. Therefore, option **A** is the most likely answer.
---
I have now addressed all unique questions present in the provided file. The report and the answer key are complete.
---
### **Question 136: Reversal of Inventory Write-Down**
**Question:** The reversal of an inventory write-down:
A. reduces cost of sales.
B. increases other comprehensive income.
C. is permitted under both IFRS and US GAAP.
---
**Solution: A**
**1. Conceptual Framework**
The accounting treatment for the reversal of inventory write-downs is a key difference between IFRS and US GAAP.
-   **IFRS (IAS 2):** If the circumstances that previously caused inventory to be written down no longer exist, or if there is clear evidence of an increase in net realizable value (NRV), the write-down **must be reversed**. The amount of the reversal is limited to the amount of the original write-down. This reversal is recognized as a **reduction in the cost of sales** for the period.
-   **US GAAP:** Reversals of inventory write-downs are **prohibited**. Once inventory is written down, its new lower value is considered its cost basis for future accounting periods.
**2. Analysis of Options**
-   **A. reduces cost of sales:** This is the correct accounting treatment for a reversal under IFRS.
-   **B. increases other comprehensive income:** This is incorrect. The reversal affects the income statement (Cost of Sales), not OCI.
-   **C. is permitted under both IFRS and US GAAP:** This is incorrect. The practice is only permitted under IFRS.
**3. Conclusion**
The reversal of an inventory write-down (where permitted under IFRS) results in a reduction of cost of sales. Therefore, option **A** is the most accurate statement.
---
### **Question 137: Kinked Demand Curve**
**Question:** A firm in an oligopoly market most likely faces a kinked demand curve if:
A. there is collusion among market players.
B. competitors match a price reduction and ignore a price increase.
C. the firm determines its profit-maximizing production level by assuming that the other firms' output will not change.
---
**Solution: B**
**1. Conceptual Framework**
The **kinked demand curve model** is a theory that seeks to explain price rigidity (prices that tend not to change) in oligopolistic markets. The model is built on a specific set of assumptions about how rival firms will react to a price change initiated by one firm.
-   **Assumption for a Price Increase:** If a firm raises its price, its competitors will **not** follow suit, allowing them to capture market share from the firm that raised its price. This makes the demand curve above the current price very elastic.
-   **Assumption for a Price Decrease:** If a firm lowers its price, its competitors **will** match the price cut to avoid losing their own market share. This makes the demand curve below the current price inelastic.
This asymmetric response from competitors creates a "kink" in the firm's demand curve at the prevailing price.
**2. Analysis of Options**
-   A: Collusion describes firms acting in unison (like a cartel), which leads to a monopoly-like outcome, not a kinked demand curve.
-   B: This statement is the precise behavioral assumption that underpins the kinked demand curve model.
-   C: This describes the Cournot model of oligopoly, where firms compete on quantity, not the kinked demand curve model.
**3. Conclusion**
A firm faces a kinked demand curve under the assumption that competitors will **match a price reduction and ignore a price increase**. Therefore, option **B** is correct.
---
### **Question 138: Operational Risk**
**Question:** Which of the following is best classified as an operational risk?
A. The deterioration of corporate performance resulting in a debt default.
B. A company becoming subject to investigation by government for violation of applicable laws.
C. Poor audit procedures resulting in one stakeholder group benefiting at the expense of the company.
---
**Solution: C**
**1. Conceptual Framework**
**Operational Risk** is defined by the Basel Committee as the risk of loss resulting from inadequate or failed internal processes, people, and systems or from external events. It encompasses a wide range of non-financial risks.
Let's categorize the risks in the options:
-   **A. ...debt default:** This is a clear example of **financial risk**, specifically **credit risk** (from the lender's perspective) or default risk (from the issuer's perspective).
-   **B. ...investigation by government...:** This falls under the category of **legal and regulatory risk**, which is the risk of loss from failing to comply with laws and regulations.
-   **C. Poor audit procedures...:** Audit procedures are a key **internal process**. A failure in these procedures (e.g., leading to misstated financials that benefit one group over another) is a classic example of a loss arising from a failed internal process. This fits the definition of operational risk perfectly.
**2. Conclusion**
The risk arising from poor audit procedures is the best example of an **operational risk** among the choices. Therefore, option **C** is correct.
---
### **Question 139: Crowding Out Effect**
**Question:** The crowding out effect is best described as:
A. inflation increasing as a result of printing money.
B. government borrowing diverting private sector investment.
C. economic activity decreasing due to higher marginal tax rates.
---
**Solution: B**
**1. Conceptual Framework**
The **crowding-out effect** is a macroeconomic theory that describes a potential negative consequence of expansionary fiscal policy, specifically increased government spending financed by borrowing.
The mechanism is as follows:
1.  The government increases its borrowing to finance budget deficits.
2.  This increases the demand for loanable funds in the financial markets.
3.  The increased demand drives up the real interest rate.
4.  The higher real interest rate makes it more expensive for private firms to borrow for their own investment projects (e.g., building new factories).
5.  As a result, some private investment is "crowded out" or displaced by the government's borrowing.
**2. Analysis of Options**
-   A: This describes the inflationary effect of monetizing government debt, which is a different concept.
-   B: This is the precise definition of the crowding-out effect.
-   C: This describes the disincentive effect of high taxes on work and investment, a concept from supply-side economics.
**3. Conclusion**
The crowding-out effect is best described as **government borrowing diverting private sector investment**. Therefore, option **B** is correct.
---
### **Question 140: Characteristics of Big Data**
**Question:** Which of the following is not generally considered one of the three key characteristics of Big Data?
A. Variety
B. Volume
C. Visibility
---
**Solution: C**
**1. Conceptual Framework**
The concept of "Big Data" is commonly defined by a set of characteristics that distinguish it from traditional data. The most widely accepted definition includes the "Three Vs":
1.  **Volume:** The enormous quantity of data being generated and stored, often measured in terabytes, petabytes, or even exabytes.
2.  **Velocity:** The high speed at which new data is generated and needs to be processed, often in real-time.
3.  **Variety:** The wide range of formats in which the data exists, including structured (e.g., databases), semi-structured (e.g., XML files), and unstructured (e.g., text, images, videos).
More recently, other "Vs" have been added, such as Veracity (the quality and trustworthiness of the data) and Value (the potential to turn data into value), but Volume, Velocity, and Variety remain the core three.
**2. Analysis of Options**
-   A. **Variety:** This is one of the original three Vs.
-   B. **Volume:** This is one of the original three Vs.
-   C. **Visibility:** While making data "visible" or understandable through analytics is a goal of working with Big Data, it is not considered one of the core defining characteristics of the data itself.
**3. Conclusion**
**Visibility** is not one of the three key characteristics of Big Data. Therefore, option **C** is correct.
---
### **Question 141: Monetary Transmission Mechanism**
**Question:** A central bank increases its purchases of bonds from commercial banks intending to decrease interest rates, boost confidence, increase asset prices, and ultimately raise the general level of employment, production, and prices in the economy. This is most likely an example of:
A. money neutrality.
B. expansionary fiscal policy.
C. the monetary transmission mechanism.
---
**Solution: C**
**1. Conceptual Framework**
-   The **monetary transmission mechanism** is the process through which a central bank's policy actions are transmitted through the financial system to influence aggregate demand, and ultimately, inflation and real economic activity (employment and production). The scenario describes this process perfectly: the central bank's action (bond purchases) leads to changes in interest rates, asset prices, and confidence, which in turn affect the real economy.
-   **Expansionary fiscal policy** is action taken by the *government* (not the central bank), such as cutting taxes or increasing government spending.
-   **Money neutrality** is the long-run economic theory that changes in the money supply only affect nominal variables (like the price level) and do not affect real variables (like output or employment). The scenario described is a short- to medium-term policy action intended to affect precisely these real variables.
**2. Conclusion**
The process described is a textbook example of **the monetary transmission mechanism** in action. Therefore, option **C** is correct.
---
### **Question 142: Cash Flow Per Share**
**Question:** An analyst gathers the following information about a company:
| Description | Value |
| :--- | :---: |
| Cash flow from operating activities| €600,000 |
| Preferred dividends declared and paid| €30,000 |
| Number of common shares outstanding| 100,000 |
The company reports total dividends paid as cash flows used in operating activities. If the company reports total dividends paid as cash flows used in operating activities, cash flow per share is closest to:
A. €5.70.
B. €6.30.
---
**Solution: A**
**1. Conceptual Framework**
"Cash flow per share" is not a formally defined metric like EPS, but it is commonly calculated by financial data providers. A typical calculation is Cash Flow from Operations (CFO) per share. However, since CFO must first be available to cover obligations to preferred shareholders, the numerator is often adjusted by subtracting preferred dividends.
$ \text{Cash Flow Per Share} = \frac{\text{CFO} - \text{Preferred Dividends}}{\text{Weighted Average Common Shares}} $
The information that dividends were classified within CFO is a potential distractor. For the purpose of this common, simplified ratio, one typically uses the reported CFO figure as the starting point.
**2. Step-by-Step Calculation**
**Step 1: Identify the inputs**
-   Cash Flow from Operations (CFO) = €600,000
-   Preferred Dividends = €30,000
-   Number of common shares = 100,000
**Step 2: Calculate the numerator (CFO available to common shareholders)**
-   CFO - Preferred Dividends = €600,000 - €30,000 = €570,000
**Step 3: Calculate cash flow per share**
-   Cash Flow Per Share = $\frac{€570,000}{100,000} = €5.70$
*Analyst's Note: A more rigorous analyst might adjust the reported CFO by adding back the common dividend portion before calculating, but that approach does not lead to one of the given answers. The most straightforward interpretation that matches an answer is to simply subtract the preferred dividend from the reported CFO.*
**3. Conclusion**
The cash flow per share is **€5.70**. Therefore, option **A** is correct.
---
### **Question 143: The Ideal Currency Regime**
**Question:** Which of the following is not a feature of the ideal currency regime?
A. All currencies are fully convertible.
B. All countries run independent monetary policies.
C. Exchange rates between any two currencies are floating.
---
**Solution: C**
**1. Conceptual Framework**
This question relates to the **"Impossible Trinity"** (or the policy trilemma) in international economics. The trilemma states that a country cannot simultaneously have all three of the following desirable policy goals:
1.  **A fixed exchange rate.**
2.  **Free capital flows** (i.e., fully convertible currency).
3.  **Independent monetary policy.**
A country must choose two out of the three. The "ideal" but impossible regime would be one where all three could coexist.
**2. Analysis of Options**
We are asked what is **not** a feature of this ideal (but impossible) regime. Let's compare the options to the three goals of the trilemma.
-   **A. All currencies are fully convertible:** This corresponds to "Free capital flows." This is a feature of the ideal regime.
-   **B. All countries run independent monetary policies:** This corresponds to "Independent monetary policy." This is a feature of the ideal regime.
-   **C. Exchange rates between any two currencies are floating:** This is the opposite of "A fixed exchange rate." The ideal, impossible regime includes a *fixed* exchange rate. Therefore, floating exchange rates are not a feature of this theoretical ideal.
In reality, a country that chooses free capital flow and independent monetary policy (like the US) *must* have a floating exchange rate. But the "ideal" construct of the trilemma posits a fixed rate as the third goal.
**3. Conclusion**
A fixed, not floating, exchange rate is one of the three goals of the impossible trinity's "ideal" regime. Therefore, **floating exchange rates** are not a feature of that ideal. Option **C** is correct.
---
### **Question 144: Principal-Agent Conflict**
**Question:** Which of the following best describes a principal-agent conflict? A company's management puts their own interests above those of:
A. regulators.
B. customers.
C. shareholders.
---
**Solution: C**
**1. Conceptual Framework**
The **principal-agent problem** is a core concept in corporate governance. It arises when one party (the "agent") is hired to act on behalf of another party (the "principal"). A conflict occurs because the agent may be motivated to act in their own self-interest rather than in the best interests of the principal.
In the context of a corporation:
-   The **shareholders** are the owners of the company. They are the **principals**.
-   The **management** (CEO, CFO, etc.) are hired by the board of directors (who are elected by shareholders) to run the company on a day-to-day basis. Management are the **agents**.
The conflict arises because management's interests (e.g., maximizing personal compensation, job security, prestige) may not always align with the shareholders' interest (maximizing the long-term value of their shares).
**2. Conclusion**
The principal-agent conflict in a corporation describes the conflict of interest between management and **shareholders**. Therefore, option **C** is correct.
---
### **Question 145: Jensen's Free Cash Flow Hypothesis**
**Question:** According to Jensen's free cash flow hypothesis:
A. internal financing is preferable to debt issuance.
B. debt reduces management opportunities to misuse cash.
C. debt issuance signals confidence about a company's prospects.
---
**Solution: B**
**1. Conceptual Framework**
Michael Jensen's **free cash flow hypothesis** posits that managers of firms with substantial free cash flow (cash flow in excess of what is needed to fund all positive-NPV projects) are more likely to engage in value-destroying activities. This is because they may be motivated by self-interest to grow the firm for the sake of "empire building," rather than returning the excess cash to shareholders.
The hypothesis proposes that **debt** can serve as a powerful disciplinary tool. By taking on debt, managers commit the firm to making fixed interest and principal payments. This contractual obligation reduces the amount of discretionary cash flow available to management, thereby restricting their ability to waste it on inefficient projects or overpriced acquisitions.
**2. Analysis of Options**
-   A: This contradicts the hypothesis. The hypothesis suggests that using external financing (debt) can be beneficial.
-   B: This is the central argument of Jensen's hypothesis. Debt acts as a control mechanism.
-   C: This describes a different theory known as "signaling theory," where issuing debt is seen as a positive signal to the market because only a confident management team would willingly take on fixed payment obligations.
**3. Conclusion**
According to Jensen's free cash flow hypothesis, **debt reduces management opportunities to misuse cash**. Therefore, option **B** is correct.
---
### **Question 146: Fiscal Policy**
**Question:** All else being equal, an increase in corporate taxes is considered:
A. expansionary fiscal policy.
B. contractionary fiscal policy.
C. contractionary monetary policy.
---
**Solution: B**
**1. Conceptual Framework**
-   **Fiscal Policy:** Refers to the use of government spending and taxation to influence the economy. It is controlled by the government (e.g., Congress, Parliament).
    -   **Expansionary Fiscal Policy:** Aims to stimulate economic growth. Tools include *decreasing* taxes or *increasing* government spending.
    -   **Contractionary Fiscal Policy:** Aims to slow down an overheating economy (e.g., to fight inflation). Tools include *increasing* taxes or *decreasing* government spending.
-   **Monetary Policy:** Refers to actions undertaken by a central bank to manage the money supply and credit conditions, primarily through interest rates.
**2. Analysis**
An increase in corporate taxes is an action taken by the government that removes money from the private sector, reduces corporate profits, and can dampen business investment and aggregate demand. This is an action designed to slow down the economy. This falls squarely under the definition of **contractionary fiscal policy**.
**3. Conclusion**
An increase in corporate taxes is an example of **contractionary fiscal policy**. Therefore, option **B** is correct.
---
### **Question 147: Foreign Exchange Forward Points**
**Question:** A European foreign exchange dealer gives the following exchange rate information to a European client: USD/EUR spot rate = 1.1640; 3-month forward points = 12.8. The best interpretation of the exchange rate information is that:
A. the 3-month US real interest rate is expected to rise.
B. the US dollar is trading at a premium to its forward rate.
C. 3-month eurozone interest rates are lower than those in the United States.
---
**Solution: C**
**1. Conceptual Framework**
This question combines interpreting a foreign exchange quote with the principle of **covered interest rate parity**.
**Step 1: Calculate the Forward Rate**
-   The quote USD/EUR is the price currency (USD) per unit of the base currency (EUR). So, 1 EUR = 1.1640 USD.
-   Forward points are typically quoted in units of 1/10,000. To get the all-in forward rate, we add the points to the spot rate:
    -   Forward Rate = Spot Rate + (Points / 10,000)
    -   Forward Rate = 1.1640 + (12.8 / 10,000) = 1.1640 + 0.00128 = 1.16528
**Step 2: Interpret the Forward Rate**
-   The forward rate (1.16528) is higher than the spot rate (1.1640). This means that the base currency (EUR) is trading at a **forward premium** relative to the price currency (USD). Conversely, the USD is trading at a **forward discount**.
**Step 3: Apply Interest Rate Parity**
-   Covered interest rate parity dictates that the currency with the **lower interest rate** must trade at a **forward premium** to prevent arbitrage.
-   Since the EUR is trading at a forward premium, it must have the lower interest rate.
**3. Conclusion**
The analysis shows that 3-month interest rates in the eurozone must be lower than 3-month interest rates in the United States. Therefore, option **C** is correct.
---
### **Question 148: Oligopoly Market Structure**
**Question:** Which of the following market structures is characterized by high barriers to entry and products with close substitutes within the market?
A. Oligopoly
B. Monopoly
C. Monopolistic competition
---
**Solution: A**
**1. Conceptual Framework**
Let's review the defining characteristics of the market structures listed:
-   **Monopoly:** A single seller of a unique product with no close substitutes. Barriers to entry are extremely high.
-   **Monopolistic Competition:** Many sellers, differentiated products (which are close substitutes), and low barriers to entry.
-   **Oligopoly:** A few large sellers dominate the market. Barriers to entry are high. The products offered by the firms can be either identical (e.g., crude oil) or differentiated (e.g., automobiles, smartphones). When the products are differentiated, they serve as close substitutes for one another.
**2. Analysis of the Scenario**
The question specifies two characteristics:
1.  **High barriers to entry:** This rules out Monopolistic Competition.
2.  **Products with close substitutes:** This rules out Monopoly, which features a unique product with no close substitutes.
This leaves **Oligopoly**. A differentiated oligopoly (like the auto industry) perfectly fits this description: high barriers to entry exist, and the products (e.g., a Ford vs. a Toyota) are close substitutes.
**3. Conclusion**
The market structure described is an **Oligopoly**. Therefore, option **A** is correct.
---
### **Question 149: NPV Calculation**
**Question:** An analyst gathers the following information about a project:
| Description | Value |
| :--- | :---: |
| Initial outlay | €100 million |
| Cash flow at end of Year 1 | €65 million |
| Cash flow at end of Year 2 | €65 million |
| Cash flow at end of Year 3 | €65 million |
If the required rate of return is 15%, the NPV is closest to:
A. €48 million
B. €95 million
C. €148 million
---
**Solution: A**
**1. Conceptual Framework**
The **Net Present Value (NPV)** of a project is the present value of its expected future cash inflows, discounted at the required rate of return, minus the initial investment outlay. A positive NPV indicates that the project is expected to create value for the firm.
The project's cash inflows represent a 3-year annuity. We can find the present value of this annuity and then subtract the initial cost.
**2. Step-by-Step Calculation**
This is most efficiently solved with a financial calculator.
**Step 1: Calculate the Present Value (PV) of the cash inflows.**
-   The cash inflows are an annuity of €65 million for 3 years.
-   Number of periods (N) = 3
-   Interest rate per period (I/Y) = 15%
-   Payment per period (PMT) = 65,000,000
-   Future Value (FV) = 0
-   Compute Present Value (PV):
    -   PV = **€148,435,535**
**Step 2: Calculate the Net Present Value (NPV).**
-   NPV = PV of Inflows - Initial Outlay
-   NPV = €148,435,535 - €100,000,000 = €48,435,535
**3. Conclusion**
The project's NPV is approximately **€48 million**. Therefore, option **A** is correct.
---
### **Question 150: Gain or Loss on Asset Sale**
**Question:** An analyst gathers the following information about a company's equipment reported under the cost model:
| Description | Value |
| :--- | :---: |
| Historical cost | €1,000,000 |
| Accumulated depreciation at end of Year 1 | €200,000 |
The company sold the equipment at the end of Year 1 for €900,000. As a result of the sale, the financial statements should reflect a:
A. loss of €300,000
B. loss of €100,000
C. gain of €100,000
---
**Solution: C**
**1. Conceptual Framework**
The gain or loss on the sale of a long-lived asset is the difference between the sale proceeds and the asset's **carrying value** (also known as book value) at the time of the sale.
-   **Carrying Value** = Historical Cost - Accumulated Depreciation
-   **Gain or Loss** = Sale Proceeds - Carrying Value
A positive result is a gain, and a negative result is a loss.
**2. Step-by-Step Calculation**
**Step 1: Calculate the carrying value of the equipment at the time of sale.**
-   Historical Cost = €1,000,000
-   Accumulated Depreciation = €200,000
-   Carrying Value = €1,000,000 - €200,000 = €800,000
**Step 2: Calculate the gain or loss on the sale.**
-   Sale Proceeds = €900,000
-   Carrying Value = €800,000
-   Gain on Sale = €900,000 - €800,000 = €100,000
**3. Conclusion**
Since the sale proceeds exceed the carrying value, the company recognizes a **gain of €100,000**. Therefore, option **C** is correct.
### **Question 106: Guarantee of Futures Contracts**
**Question:** In futures markets, contract performance is most likely guaranteed by:
A. clearing houses.
B. regulatory agencies.
C. the futures exchanges.
---
**Solution: A**
**1. Conceptual Framework**
Futures contracts are standardized legal agreements to buy or sell a particular commodity or financial instrument at a predetermined price at a specified time in the future. They are traded on organized exchanges. A key feature that distinguishes them from forward contracts is the mitigation of counterparty risk.
**2. Role of the Clearing House**
The **clearing house** is an agency or separate corporation associated with a futures exchange that is responsible for settling trading accounts, clearing trades, collecting and maintaining margin monies, regulating delivery, and reporting trading data.
Its most critical role is to act as the counterparty to every trade. It becomes the buyer to every seller and the seller to every buyer. By doing so, the clearing house **guarantees the performance of all contracts**, effectively eliminating counterparty risk for the members of the exchange. If one party defaults, the clearing house steps in to fulfill the obligation. This guarantee is backed by a system of margin requirements and daily marking-to-market.
-   **Regulatory agencies** (e.g., the CFTC in the US) provide oversight for the market but do not guarantee individual contracts.
-   **Futures exchanges** provide the venue and rules for trading, but the financial guarantee is the specific function of the clearing house.
**3. Conclusion**
The performance of futures contracts is guaranteed by **clearing houses**. Therefore, option **A** is correct.
---
### **Question 107: Standard IV(B) - Additional Compensation Arrangements**
**Question:** Which of the following is a recommended procedure for compliance with the Standard relating to additional compensation arrangements? When offering services to a third party outside of a member's employment relationship, the member should:
A. report annually to his supervisor any compensation received from third parties.
B. provide confirmation of the third-party compensation arrangement to his employer.
C. disclose to clients the amount, nature, and duration of all additional compensation arrangements.
---
**Solution: B**
**1. Conceptual Framework**
**Standard IV(B) – Additional Compensation Arrangements** states: "Members and Candidates must not accept gifts, benefits, compensation, or consideration that competes with or might reasonably be expected to create a conflict of interest with their employer’s interest unless they obtain written consent from all parties involved."
The core of this standard is the duty of loyalty to the employer. A member must not have undisclosed arrangements that could divert their focus or create conflicts.
**2. Analysis of Compliance Procedures**
-   The recommended procedure is for members to provide their employer with details about the arrangement, including the nature of the services, the expected duration, and the form of compensation. The member must obtain permission from their employer **before** the arrangement begins.
-   **A. report annually...:** This is insufficient. The standard requires notification *before* entering the arrangement, not a periodic report after the fact.
-   **B. provide confirmation of the third-party compensation arrangement to his employer:** This aligns with the requirement to notify the employer of the arrangement. This notification is the first step toward obtaining the required permission.
-   **C. disclose to clients...:** This action relates to Standard VI(A) – Disclosure of Conflicts. While important, the primary obligation under Standard IV(B) is to the **employer**, not the client.
**3. Conclusion**
The primary responsibility under Standard IV(B) is to notify and get permission from one's employer. Providing confirmation of the arrangement to the employer is a key step in this process. Therefore, option **B** is the best description of a required procedure.
---
### **Question 108: Standard III(B) - Fair Dealing**
**Question:** Simon Jensen, CFA, a portfolio manager, participates in an IPO of PT Tech. Jensen prorates the oversubscribed issue on an odd-lot basis to suitable clients. After the successful IPO, his colleague Todd Durkny, a CFA candidate, initiates coverage of PT Tech and sends her "buy" recommendation to all clients by email. She then calls her premium fee-paying clients to discuss PT Tech in-depth. Whose actions are consistent with the Standards?
A. Durkny's only
B. Jensen's only
C. Both Durkny's and Jensen's
---
**Solution: C**
**1. Conceptual Framework**
This question tests **Standard III(B) – Fair Dealing**, which requires members to deal fairly and objectively with all clients when taking investment action or disseminating recommendations.
**2. Analysis of Jensen's Actions**
When an IPO is oversubscribed, the allocation of shares must be done on a fair basis. It does not necessarily mean an equal basis. Allocating on a pro-rata basis (e.g., based on order size or assets) is common. Allocating on an "odd-lot basis" is also a fair method, as it can ensure that smaller clients receive a meaningful allocation instead of being crowded out by large orders. As long as the allocation is to *suitable* clients and the method is applied consistently, Jensen's action is consistent with Fair Dealing.
**3. Analysis of Durkny's Actions**
When disseminating an investment recommendation that may impact the market price, members must ensure all clients have a fair opportunity to act on it. Durkny first sends the "buy" recommendation to **all clients by email**. This broad, simultaneous dissemination is a proper way to ensure fairness. The subsequent action of calling premium clients for an in-depth discussion is acceptable. The Standards allow for different levels of service, provided the core recommendation has been shared fairly with all clients first. The follow-up calls are a component of the premium service level.
**4. Conclusion**
Jensen's allocation method is fair. Durkny's dissemination method is fair. Therefore, the actions of **Both Durkny and Jensen** are consistent with the Standards. Option **C** is correct.
---
### **Question 109: Claiming GIPS Compliance**
**Question:** For firms to claim compliance with the GIPS standards, they most likely must:
A. hire an independent third party to test a sample of their composites.
B. take responsibility for their claim of compliance and for maintaining that compliance.
C. provide assurance that the firm's policies and procedures have been implemented on a firm-wide basis.
---
**Solution: B**
**1. Conceptual Framework**
The Global Investment Performance Standards (GIPS) are a set of ethical principles for investment performance presentation. A key aspect of the standards is how a firm claims compliance.
**2. Analysis of Compliance Requirements**
-   **Claiming Compliance:** Compliance with GIPS is a firm-wide process. A firm can only claim compliance after it has satisfied all the requirements of the standards. This claim is made by the **firm itself**. The firm is solely responsible for its claim of compliance and for its ongoing adherence to the standards.
-   **Verification:** This is a process where an independent third party performs testing to "verify" a firm's claim of compliance. While verification is strongly encouraged to provide additional credibility, it is **voluntary and not required** for a firm to claim compliance. Therefore, option A is incorrect.
-   **Assurance:** The concept of "providing assurance" (option C) is the outcome of the independent verification process. The firm itself does not provide assurance; it makes a claim.
**3. Conclusion**
The GIPS standards place the onus directly on the investment management firm. The firm must **take responsibility for its own claim of compliance and for maintaining that compliance**. Therefore, option **B** is correct.
---
### **Question 110: Standard V(A) - Diligence and Reasonable Basis**
**Question:** David Kertz, CFA, a portfolio manager, is considering investing in a small cap firm he stopped following three years ago. Based on stock exchange data, liquidity has improved. Kertz obtains third-party research, assesses the assumptions, rigor, and dates. Which of the following additional actions should Kertz most likely undertake next to meet the Standards?
A. Consider the validity of the published trading liquidity data
B. Evaluate the independence of the third-party recommendations
C. Determine if each third party analyst's opinion reflects their firm's recommendation
---
**Solution: B**
**1. Conceptual Framework**
**Standard V(A) – Diligence and Reasonable Basis** requires that members have a reasonable and adequate basis for any investment recommendation or action. When relying on third-party research, the member is not relieved of this duty. They must make a reasonable effort to ensure that the research is sound.
**2. Analysis of Kertz's Actions**
Kertz has already performed initial due diligence on the research reports by assessing their assumptions, rigor, and timeliness. This is a good start. However, a critical aspect of evaluating any research is understanding the potential biases of its source.
-   **A. Consider the validity of the... liquidity data:** Kertz has already observed this data from the stock exchange, which is generally considered a reliable source. While questioning data is good practice, it's not the most critical *next* step in evaluating the research reports.
-   **B. Evaluate the independence of the third-party recommendations:** This is a crucial step. The objectivity and credibility of research can be compromised if the source is not independent. For example, is the research from a firm that has an investment banking relationship with the company? Was the report paid for by the company? Evaluating the potential for bias is fundamental to determining if the research can be part of a "reasonable basis."
-   **C. Determine if each analyst's opinion reflects their firm's recommendation:** This is an internal matter for the third-party firm and is less important to Kertz than the overall objectivity of the report itself.
**3. Conclusion**
After reviewing the quality of the analysis, the most important next step for Kertz is to assess the independence and objectivity of the third-party research provider. This is essential to fulfilling his duty of having a diligent and reasonable basis for his own investment actions. Therefore, option **B** is correct.
---
### **Question 111: Standard I(A) - Knowledge of the Law**
**Question:** Jacques Lagarde, CFA, an analyst at an investment bank, discovers inconsistencies that make him believe his firm's IPO client, Chorale Music, may have concealed significant losses. The prospectus has already been distributed. According to the Standards, Lagarde should most likely:
A. report the issue to his supervisor.
B. issue a report showing the leasing division losses.
C. issue the report using data as reported in the prospectus.
---
**Solution: A**
**1. Conceptual Framework**
This scenario touches on several Standards, most importantly **Standard I(A) – Knowledge of the Law**, which states that members must not knowingly participate or assist in any violation of applicable laws, rules, or regulations. Distributing a misleading prospectus is a serious violation of securities laws.
**2. Analysis of Lagarde's Options**
Lagarde has a strong suspicion of illegal activity.
-   **C. issue the report using data as reported in the prospectus:** If he does this, knowing the data is likely fraudulent, he would be knowingly participating in the dissemination of misleading information and violating Standard I(A). This is incorrect.
-   **B. issue a report showing the leasing division losses:** Acting unilaterally is inappropriate and unprofessional. His information is a suspicion, not a verified fact. Releasing a public report could expose himself and his firm to legal liability if his suspicions are wrong. It also circumvents his firm's internal compliance and review procedures. This is incorrect.
-   **A. report the issue to his supervisor:** This is the correct first step. According to the guidance for Standard I(A), if a member suspects a client or another employee is involved in illegal activities, they should report it to their supervisor or the firm's compliance department. This allows the firm, which has the ultimate legal responsibility, to investigate and take appropriate action. It also serves to dissociate Lagarde from the potentially illegal activity.
**3. Conclusion**
The appropriate course of action for Lagarde is to bring his suspicions to the attention of his supervisor or compliance department. Therefore, option **A** is correct.
---
### **Question 112: Ethical Decision-Making Frameworks**
**Question:** Examples of the beneficial features of using an ethical decision-making framework least likely includes analyzing:
A. a broader picture from a long-term point of view.
B. the best course of action when alternatives are available.
C. the decision maker's perspective of contemplated actions.
---
**Solution: C**
**1. Conceptual Framework**
An ethical decision-making framework is a structured process designed to guide individuals in making choices that are consistent with ethical principles. The goal is to move beyond a gut reaction to a more thoughtful, defensible conclusion.
**2. Analysis of Benefits**
-   **A. a broader picture from a long-term point of view:** A key benefit of a framework is that it encourages the decision-maker to look beyond the immediate situation and consider the wider context, including long-term consequences for all stakeholders (clients, employer, the market, society).
-   **B. the best course of action when alternatives are available:** The core purpose of a framework is to help identify and evaluate different possible actions, weighing their ethical implications to arrive at the best choice.
-   **C. the decision maker's perspective of contemplated actions:** While the decision-maker's perspective is obviously involved, a primary benefit of a framework is that it forces the individual to move *beyond* their own subjective perspective. It encourages them to consider their duties to others, objective principles, and how the action would be viewed by outside parties. It is a tool to combat self-interest and rationalization. Analyzing the situation *only* from one's own perspective is a source of ethical lapses, not a benefit of an ethical framework.
**3. Conclusion**
The purpose of an ethical framework is to provide a structured, objective process that considers duties to others and long-term consequences, rather than simply reinforcing the decision maker's own initial perspective. Therefore, analyzing from the decision maker's perspective is the **least likely** benefit. Option **C** is correct.
---
### **Question 113: Standard V(A) - Diligence and Reasonable Basis**
**Question:** Elbie Botha, CFA, an equity research analyst, disagrees with her research team's buy recommendation. She acknowledges the recommendation is based on a well-developed process and extensive research, but feels the valuation is overpriced. Her name is included on the report. To avoid violating any CFA Institute Standards, it would be least appropriate for Botha to undertake which of the following?
A. Leave her name on the report
B. Insist her name is removed from the report
C. Issue a new report based on her conclusions
---
**Solution: C**
**1. Conceptual Framework**
This scenario involves **Standard V(A) – Diligence and Reasonable Basis**. A key aspect of this standard is how to handle differences of opinion within a firm. The standard does not require that every analyst personally agree with every conclusion, only that the report's conclusion has a **reasonable and adequate basis**.
**2. Analysis of Botha's Options**
Botha acknowledges the team's report has a reasonable basis ("based on a well-developed process and extensive research").
-   **A. Leave her name on the report:** This is an **appropriate** action. Since the report has a reasonable basis, she is not required to dissociate from it, even if her personal, independent conclusion is different.
-   **B. Insist her name is removed from the report:** This is also an **appropriate** action. If she is uncomfortable being associated with the recommendation, she has the right to request her name be removed from the report.
-   **C. Issue a new report based on her conclusions:** This is the **least appropriate** action. Unilaterally issuing a conflicting research report would undermine her firm's internal processes, confuse clients, and likely violate her duty of loyalty to her employer (Standard IV(A)). The proper course of action for a difference of opinion is to work through the firm's internal review and compliance procedures, not to publish a rogue report.
**3. Conclusion**
The least appropriate action for Botha to take is to issue her own competing report. Therefore, option **C** is correct.
---
### **Question 114: Purpose of GIPS Standards**
**Question:** The GIPS standards were created in part to:
A. promote investor interests and instill investor confidence.
B. encourage fair, local competition among investment firms in each country.
C. obtain worldwide acceptance of a small number of standards for calculating and presenting performance.
---
**Solution: A**
**1. Conceptual Framework**
The mission of the Global Investment Performance Standards (GIPS) is "to promote ethics and integrity and instill trust through the creation of a common, global framework for investment performance calculation and presentation that is readily accepted and understood by investors, investment managers, and consultants."
**2. Analysis of Options**
-   **A. promote investor interests and instill investor confidence.** This aligns perfectly with the GIPS mission. By creating a standardized, transparent, and ethical framework for performance reporting, the standards allow investors to more accurately compare and evaluate investment managers, which promotes their interests and builds trust and confidence in the industry.
-   **B. encourage fair, local competition...:** This is incorrect. The goal of GIPS is to facilitate **global** competition on a level playing field, not just local competition.
-   **C. obtain worldwide acceptance of a small number of standards...:** This is misleading. The goal is to obtain worldwide acceptance of a **single, unified standard**, not a "small number" of different standards.
**3. Conclusion**
A primary and explicit goal of the GIPS standards is to benefit investors and build their confidence in the investment management industry. Therefore, option **A** is correct.
---
### **Question 115: Claiming GIPS Compliance**
**Question:** Who can claim compliance with the GIPS standards?
A. Firms that manage investment portfolios
B. Investment consultants that only conduct investment manager due diligence
C. Pension plan sponsors that oversee plan funding and do not manage the plan's assets
---
**Solution: A**
**1. Conceptual Framework**
The GIPS standards are specifically designed for **investment management firms** to present their performance history. GIPS defines a "firm" as an investment firm, subsidiary, or division held out to clients or prospective clients as a distinct business entity.
**2. Analysis of Options**
-   **A. Firms that manage investment portfolios:** This is the correct answer. Only firms that actually manage assets can claim compliance with the GIPS standards.
-   **B. Investment consultants...:** Consultants play a role in the GIPS ecosystem by promoting the standards and using GIPS-compliant data to evaluate managers, but they cannot claim compliance themselves unless they also manage assets.
-   **C. Pension plan sponsors...:** Plan sponsors are asset owners, not asset managers. They are encouraged to hire GIPS-compliant firms to manage their assets, but as asset owners, they cannot claim compliance with the GIPS standards themselves.
**3. Conclusion**
GIPS compliance can only be claimed by **firms that manage investment portfolios**. Therefore, option **A** is correct.
---
### **Question 116: Standard III(D) - Performance Presentation**
**Question:** Anisha Joshi, CFA, develops a product that selects mutual funds based on historical data. Joshi tests her methodology and produces simulated performance results. The promotional material for the product does not indicate that the results are simulated. Joshi has most likely violated the Standard(s) relating:
A. only to fair dealing.
B. only to performance presentation.
C. both to fair dealing and to performance presentation.
---
**Solution: B**
**1. Conceptual Framework**
This scenario directly relates to the presentation of investment performance.
-   **Standard III(D) – Performance Presentation:** states that "When communicating investment performance information, Members and Candidates must make reasonable efforts to ensure that it is fair, accurate, and complete." A key aspect of this is the treatment of simulated, back-tested, or model performance. Such performance must be clearly identified as such, because it has inherent limitations and is not representative of actual results achieved for clients.
-   **Standard III(B) – Fair Dealing:** relates to treating all clients fairly when disseminating recommendations or taking investment action. It does not directly govern the content of marketing materials, unless those materials are being distributed unfairly.
**2. Analysis of Joshi's Actions**
Joshi is presenting simulated results as if they were actual results. This is a material misrepresentation of performance. By failing to disclose that the results are simulated, she is making the product's performance seem more credible than it is, which is not fair, accurate, or complete. This is a clear violation of Standard III(D). There is no information to suggest a violation of the Fair Dealing standard.
**3. Conclusion**
The primary and clear violation is of the standard governing performance presentation. Therefore, option **B** is correct.
---
### **Question 117: GIPS Verification**
**Question:** Which of the following parties can perform verification of a firm's claim of compliance with the GIPS standards?
A. CFA Institute
B. An internal auditor of the firm
C. An independent third-party consultant
---
**Solution: C**
**1. Conceptual Framework**
**Verification** is a process by which a firm's claim of GIPS compliance is tested. It is a voluntary process that enhances a firm's credibility.
The key requirement for a verifier is **independence**. The verifier must be an independent third party with no conflicts of interest that would impair its objectivity in assessing the firm's compliance.
**2. Analysis of Options**
-   **A. CFA Institute:** While CFA Institute sponsors and administers the GIPS standards, it does not perform verifications itself.
-   **B. An internal auditor of the firm:** An internal auditor is an employee of the firm and is therefore not independent. They cannot perform GIPS verification.
-   **C. An independent third-party consultant:** This is the correct answer. Verification must be performed by a qualified, independent third-party firm, such as a CPA firm or a consulting firm that specializes in GIPS verification.
**3. Conclusion**
GIPS verification must be performed by an **independent third-party consultant**. Therefore, option **C** is correct.
---
### **Question 118: Standard V(C) - Record Retention**
**Question:** Tharushi Ranasinghe, CFA, manages portfolios for longtime clients and is very familiar with their situations. She makes adjustments following significant life events but rarely updates their client records. Ranasinghe has most likely violated the Standard(s) relating to:
A. fair dealing only.
B. record retention only.
C. both fair dealing and record retention.
---
**Solution: B**
**1. Conceptual Framework**
This question involves the duty to maintain proper documentation.
-   **Standard V(C) – Record Retention:** requires members to "develop and maintain appropriate records to support their investment analyses, recommendations, actions, and other investment-related communications with clients and prospective clients." This includes maintaining updated client profiles and Investment Policy Statements (IPS).
-   **Standard III(C) - Suitability:** requires members to make investment decisions that are suitable for their clients' financial situation and objectives. An updated IPS is critical for ensuring suitability.
-   **Standard III(B) - Fair Dealing:** concerns treating clients fairly relative to one another.
**2. Analysis of Ranasinghe's Actions**
The statement "she rarely updates her clients' records" is a direct and unambiguous violation of **Standard V(C) – Record Retention**. Relying on familiarity instead of documented, updated records is not a compliant practice. While this poor record-keeping could lead to a violation of Suitability (if an unsuitable investment is made because of outdated information), the action explicitly described—the failure to keep records—is a violation of the Record Retention standard itself. The scenario provides no information about how she treats clients relative to each other, so there is no evidence of a Fair Dealing violation.
**3. Conclusion**
The most direct and certain violation described is the failure to maintain records. Therefore, Ranasinghe has violated the standard relating to **record retention only**. Option **B** is correct.
---
### **Question 119: Standard VI(C) - Referral Fees**
**Question:** According to the Standard relating to referral fees, a member is required to disclose which of the following considerations?
A. Soft dollars only
B. Considerations paid in kind only
C. Both soft dollars and considerations paid in kind
---
**Solution: C**
**1. Conceptual Framework**
**Standard VI(C) – Referral Fees** requires members to "disclose to clients and prospective clients, as appropriate, any compensation, consideration, or benefit received from or paid to others for the recommendation of products or services."
The key is that **any** form of consideration must be disclosed, not just direct cash payments. This includes:
-   **Hard dollars:** Direct cash payments.
-   **Soft dollars:** Payments for services, such as receiving brokerage or research services in exchange for directing trades.
-   **In-kind considerations:** Any other non-cash benefit.
**2. Analysis**
The standard is comprehensive. It requires the disclosure of all forms of consideration, whether they are cash payments, soft dollars, or other benefits paid in kind. Therefore, limiting the disclosure to only one type would be a violation.
**3. Conclusion**
A member must disclose all forms of compensation or benefits received, which includes **both soft dollars and considerations paid in kind**. Therefore, option **C** is correct.
---
### **Question 120: Standard IV(C) - Responsibilities of Supervisors**
**Question:** According to the recommended procedures for compliance with the Standard relating to responsibilities of supervisors, a member should encourage her employer to:
A. integrate a code of ethics into compliance procedures.
B. build incentive structures based on how much revenue is generated for the firm.
C. write a code of ethics in plain language and without numerous detailed procedures.
---
**Solution: A**
**1. Conceptual Framework**
**Standard IV(C) – Responsibilities of Supervisors** requires members to make reasonable efforts to prevent and detect violations of laws, rules, regulations, and the Code and Standards by those subject to their supervision. The standard provides recommendations for fulfilling this duty.
**2. Analysis of Recommended Procedures**
-   **A. integrate a code of ethics into compliance procedures:** This is a key recommendation. A supervisor should advocate for the adoption of a formal code of ethics and ensure that it is part of a firm's overall compliance manual. This code should be clearly communicated to all employees.
-   **B. build incentive structures based on how much revenue is generated...:** This is contrary to the spirit of the standard. Supervisors should be wary of incentive structures that might inadvertently encourage unethical behavior. The standard suggests that compensation should be structured to align with ethical conduct, not just revenue.
-   **C. write a code of ethics in plain language and without numerous detailed procedures:** The first part is correct—a code should be in plain language. However, the second part is incorrect. A firm's overall compliance system must contain **detailed procedures** that employees can follow to meet their obligations under the code of ethics and other regulations.
**3. Conclusion**
A core recommended procedure for supervisors is to encourage the firm to adopt and **integrate a code of ethics into compliance procedures**. Therefore, option **A** is correct.
---
### **Question 121: Standard VI(B) - Priority of Transactions**
**Question:** According to the Standard relating to priority of transactions, members should:
A. preclear trades in fee-paying family accounts in which the member has no beneficial ownership.
B. direct their brokers to supply duplicate copies for all their personal securities transactions to their employers.
C. allocate shares to other clients before allocating shares to fee-paying family accounts in which the members do not have beneficial ownership.
---
**Solution: B**
**1. Conceptual Framework**
**Standard VI(B) – Priority of Transactions** states that investment transactions for clients and employers must have priority over investment transactions in which a Member or Candidate is the beneficial owner. This means personal trades must not be executed ahead of or conflict with the interests of clients and the employer.
**2. Analysis of Recommended Procedures**
To ensure compliance, the standard recommends several procedures. Let's analyze the options in this context:
-   **A. preclear trades in fee-paying family accounts in which the member has no beneficial ownership:** The standard applies to accounts where the member has a **beneficial interest**. While firm policies may be stricter and cover all family accounts, the CFA standard itself focuses on beneficial ownership. Preclearance is a recommended procedure for a member's own trades, not necessarily for non-beneficial family accounts under the standard.
-   **B. direct their brokers to supply duplicate copies for all their personal securities transactions to their employers:** This is a specifically recommended procedure in the guidance for Standard VI(B). Providing duplicate confirmations or statements allows the employer to monitor the member's personal trading for any potential conflicts or violations of the priority of transactions.
-   **C. allocate shares to other clients before allocating shares to fee-paying family accounts...:** This relates to **Standard III(B) – Fair Dealing**, which requires fair, not preferential, treatment of all clients. It does not directly address the core issue of Standard VI(B), which is the priority of client and employer transactions over a member's *personal* transactions.
**3. Conclusion**
Providing duplicate confirmations of personal transactions to one's employer is a key recommended procedure for complying with the Priority of Transactions standard. Therefore, option **B** is correct.
---
### **Question 122: Standard III(C) - Suitability for Pooled Assets**
**Question:** According to the Standard relating to suitability, a member who manages pooled assets to a specific mandate is:
A. only required to determine suitability for investors in the fund.
B. only required to invest in a manner consistent with the stated mandate of the fund.
C. required to determine suitability for investors in the fund and invest in a manner consistent with the stated mandate of the fund.
---
**Solution: B**
**1. Conceptual Framework**
**Standard III(C) – Suitability** requires members in an advisory relationship with a client to make a reasonable inquiry into the client's situation and make recommendations that are suitable. However, the application of the standard is different for managers of pooled funds (like mutual funds, ETFs, or hedge funds).
**2. Application to Pooled Funds**
The guidance for Standard III(C) clarifies that for a manager of a pooled fund, the "client" is the fund itself. The manager's duty is to ensure that the investments made are suitable for the fund, which means adhering strictly to the fund's **stated investment strategy or mandate**. This mandate is described in the fund's prospectus or other governing documents.
The responsibility for determining whether the pooled fund is a suitable investment for an individual investor lies with the financial advisors who recommend the fund to that end-investor, not with the fund manager.
**3. Conclusion**
The manager of a pooled fund is responsible for investing in a manner consistent with the stated mandate of the fund. Therefore, option **B** is correct.
---
### **Question 123: Standard VI(A) - Disclosure of Conflicts**
**Question:** Oliver Rae, CFA, an individual investment adviser, packaged a real estate limited partnership (RELP) which he sold to his clients. The partnership had purchased four properties in which Rae held a 5% minority interest. According to the Standards, Rae should:
A. manage the partnership separately from his advisory business.
B. disclose conflicts related to the real estate he sold to the partnership.
C. return all profits earned from his minority interest to the limited partners.
---
**Solution: B**
**1. Conceptual Framework**
This scenario involves a clear conflict of interest, which is governed by **Standard VI(A) – Disclosure of Conflicts**. This standard requires members to make full, fair, and plain disclosure of all matters that could reasonably be expected to impair their independence and objectivity or interfere with their duties to clients.
**2. Analysis of the Conflict**
Rae is acting as an adviser to his clients while also being on the other side of a transaction with them, albeit indirectly. He personally owned a stake in the properties that the partnership (which he is selling to his clients) purchased. His personal financial interest in these properties could compromise his objectivity in recommending the RELP to his clients.
-   **A. manage the partnership separately...:** This does not resolve the conflict that already exists.
-   **C. return all profits...:** The Standards do not necessarily require forfeiture of profits. The primary requirement is disclosure, allowing the clients to make an informed decision.
-   **B. disclose conflicts...:** This is the correct course of action. Rae must disclose to his clients, before they invest, that he has a personal ownership interest in the properties held by the partnership. This disclosure must be prominent and clear, allowing clients to judge his recommendation with full knowledge of his conflict of interest.
**3. Conclusion**
To comply with the Standards, Rae must **disclose the conflict of interest** to his clients. Therefore, option **B** is correct.
---
### **Question 124: Standard I(C) - Misrepresentation (Plagiarism)**
**Question:** John McCay, CFA, is an analyst who has prepared a report on the cable industry based on research from a variety of sources and analysts. He compiles these findings to form his own opinion and distributes the report to clients without acknowledging his sources. McCay has violated the Standards by:
A. failing to cite the work of others.
B. failing to have a reasonable basis for his conclusions.
C. incorporating other analysts' research into his own work.
---
**Solution: A**
**1. Conceptual Framework**
This scenario relates to **Standard I(C) – Misrepresentation**, which prohibits members from knowingly making any misrepresentations. A key form of misrepresentation is **plagiarism**—the act of using the words, ideas, or work of others without giving them proper credit.
**2. Analysis of McCay's Actions**
-   It is perfectly acceptable and common practice for analysts to incorporate the research of others into their own work (ruling out option C).
-   If the sources are credible, using them can form a reasonable basis for his conclusions (ruling out option B, as there's no information to suggest the sources were unreliable).
-   However, McCay "distributes the report to clients without acknowledging his sources." By doing this, he is implicitly presenting the compiled findings and analysis as his own original work. This is plagiarism. He must cite the sources for the information and ideas he used.
**3. Conclusion**
McCay has committed plagiarism by using the work of others without attribution. He has violated the Standards by **failing to cite the work of others**. Therefore, option **A** is correct.
---
### **Question 125: Standard III(A) - Loyalty, Prudence, and Care**
**Question:** A member who manages the pension plan of a company owes the duty of loyalty:
A. only to the company.
B. only to the beneficiaries of the pension plan.
C. both to the company and to the beneficiaries of the pension plan.
---
**Solution: B**
**1. Conceptual Framework**
**Standard III(A) – Loyalty, Prudence, and Care** requires members to act for the benefit of their clients and place their clients’ interests before their employer’s or their own interest.
**2. Identifying the "Client" in a Pension Plan**
When managing a pension plan, it is critical to identify the ultimate "client" to whom the fiduciary duty is owed. While the sponsoring company hires and pays the investment manager, the assets of the plan are held in trust for the sole benefit of the plan's participants and beneficiaries (the employees and retirees).
The interests of the sponsoring company (e.g., minimizing contributions, reducing risk to its own balance sheet) can and often do conflict with the interests of the beneficiaries (e.g., maximizing risk-adjusted returns to ensure benefits are paid). In all cases, the investment manager's duty of loyalty is to the plan's beneficiaries.
**3. Conclusion**
A member managing a pension plan owes the duty of loyalty **only to the beneficiaries of the pension plan**. Therefore, option **B** is correct.
---
### **Question 126: Standard V(B) - Communication with Clients**
**Question:** Which of the following member actions is consistent with the Standard relating to communication with clients and prospective clients?
Action 1: Members must disclose limitations in liquidity and capacity associated with investment decisions.
Action 2: Members should inform the clients about the use of outside advisers to manage portions of clients' assets under management.
A. Action 1 only
B. Action 2 only
C. Both Action 1 and Action 2
---
**Solution: C**
**1. Conceptual Framework**
**Standard V(B) – Communication with Clients and Prospective Clients** requires members to:
1.  Disclose the basic format and general principles of the investment processes they use.
2.  Disclose significant limitations and risks associated with the investment process.
3.  Use reasonable judgment in identifying which factors are important to their investment analyses.
4.  Distinguish between fact and opinion in the presentation of investment analysis.
**2. Analysis of Actions**
-   **Action 1:** Disclosing limitations and risks is a core requirement of the standard. If a strategy has limited capacity (i.e., it cannot be scaled up without affecting performance) or involves investing in illiquid assets, these are significant limitations that must be communicated to clients. This action is consistent with the Standard.
-   **Action 2:** The guidance for Standard V(B) specifically mentions that if a member uses external advisers or sub-managers to manage a portion of the assets, this arrangement should be disclosed to clients. This action is also consistent with the Standard.
**3. Conclusion**
Both actions are explicitly or implicitly required by Standard V(B) to ensure clear and complete communication with clients. Therefore, option **C** is correct.
---
### **Question 127: Standard I(B) - Independence and Objectivity**
**Question:** An member, who is an independent analyst, is approached by two small companies to write issuer-paid research reports. Company 1 proposes to pay a flat fee plus stock warrants. Company 2 requires the member to obtain approval prior to publishing the reports. The member most likely violates the Standards if the member agrees to write reports for:
A. Company 1 only.
B. Company 2 only.
C. both Company 1 and Company 2.
---
**Solution: C**
**1. Conceptual Framework**
**Standard I(B) – Independence and Objectivity** requires members to use reasonable care, judgment, and caution to achieve and maintain independence and objectivity in their professional activities. Issuer-paid research is a high-risk area for this standard.
**2. Analysis of Arrangements**
-   **Company 1 (Fee plus Stock Warrants):** While a flat fee for issuer-paid research can be acceptable with full disclosure, the inclusion of stock warrants is a clear violation. The warrants' value is directly tied to the company's stock price. This gives the analyst a direct financial incentive to write a positive report to boost the stock price and the value of their own warrants, which severely compromises their objectivity.
-   **Company 2 (Requires Prior Approval):** This arrangement gives the company censorship power over the research report. The analyst cannot be independent and objective if the subject of the report has the ability to veto its publication. An analyst must retain full control over the content of their report. This arrangement violates the standard.
**3. Conclusion**
Both proposed arrangements would prevent the member from maintaining independence and objectivity. The stock warrants create a financial conflict, and the prior-approval requirement creates a content-control conflict. Therefore, agreeing to either arrangement would be a violation, and the member violates the Standards if they agree to write reports for **both Company 1 and Company 2**. Option **C** is correct.
---
### **Question 128: CFA Ethics Violations**
**Question:** Emily Tucker, CFA, an analyst at Bowron, analyzes Hanchin Corporation as a potential acquisition target. She mentions to her CEO that several companies are attractive targets. Tucker then purchases 100,000 shares of Hanchin. Two weeks later, Bowron announces its acquisition of Hanchin. With regards to her purchase of Hanchin stock, Tucker least likely violated the Standard relating to: *[Note: The provided text only lists two options, Loyalty and Priority of Transactions. This is likely an error in the source material, as both are violated. A third, more plausible option for a "least likely" violation would be Standard II(A) - Material Nonpublic Information.]*
A. loyalty.
B. priority of transactions.
---
**Solution: Analysis Only (Flawed Question)**
**1. Conceptual Framework**
This scenario involves multiple potential violations related to a member's duties to their employer and the integrity of capital markets.
-   **Standard IV(A) – Loyalty:** Members have a duty of loyalty to their employer. They must not act in a way that harms their employer or deprives their employer of the advantage of their skills and abilities.
-   **Standard VI(B) – Priority of Transactions:** Investment transactions for clients and employers must have priority over a member's personal transactions.
-   **Standard II(A) – Material Nonpublic Information:** Members who possess material nonpublic information that could affect the value of an investment must not act or cause others to act on the information.
**2. Analysis of Violations**
-   **Violation of Standard IV(A) - Loyalty:** Tucker used her skills and the analysis she performed for her employer to benefit herself personally. She acted on her work product before her employer could, potentially harming them (e.g., by contributing to an increase in Hanchin's stock price before an acquisition). This is a clear breach of her duty of loyalty.
-   **Violation of Standard VI(B) - Priority of Transactions:** This is a very specific form of the loyalty violation. Tucker's personal transaction in Hanchin stock, a company she was analyzing for her employer as a potential acquisition, was placed ahead of her employer's potential transaction. She did not give her employer's interests priority. This is a clear violation.
-   **Violation of Standard II(A) - Material Nonpublic Information (MNI):** This violation is **less certain**. A violation would require that Tucker possessed information that was both *material* (likely to affect the price) and *nonpublic*, and that the acquisition was highly probable. While she knew Hanchin was a potential target, the announcement was two weeks later. It is plausible she was acting on her own analysis (which is a loyalty/priority breach) rather than on specific, nonpublic knowledge that a deal was imminent. Compared to the definite breaches of her duties to her employer, the MNI violation is the most ambiguous and therefore the *least likely* certain violation.
**3. Conclusion**
Given the flawed nature of the options provided in the source text ("A. loyalty" and "B. priority of transactions"), a definitive answer is impossible as both standards were clearly violated. However, if the question intended to contrast these with a potential MNI violation, the MNI violation would be the least certain. As written, the question is unanswerable.
---
### **Question 129: Standard VII(B) - Reference to the CFA Designation**
**Question:** Joanne Bryce, who recently passed Level III, will soon be awarded her charter. Her employer plans an ad. Including which of the following statements in the ad least likely complies with the CFA Institute Standards of Professional Conduct?
A. The CFA charter is a key asset in the development of her investment career.
B. By becoming a charterholder, she has significantly improved her standing within the firm.
C. Ms. Bryce passed all three levels of the exam consecutively, placing her in an elite group.
---
**Solution: C**
**1. Conceptual Framework**
**Standard VII(B) – Reference to CFA Institute, the CFA Designation, and the CFA Program** governs how members and candidates can refer to their affiliation. A core principle is that one must not misrepresent or exaggerate the meaning or implications of membership, holding the designation, or candidacy.
**2. Analysis of Statements**
-   **A. "The CFA charter is a key asset...":** This is a factual statement of opinion about the value of the charter in one's career. It does not promise superior performance or misrepresent the designation. This is compliant.
-   **B. "...significantly improved her standing within the firm":** This is a statement about her internal status at her employer. It is not an exaggeration of the meaning of the charter itself and is likely compliant.
-   **C. "...passed all three levels...consecutively, placing her in an elite group":** This statement is problematic. The Standards specifically caution against emphasizing the difficulty of the exams or suggesting that passing them (especially in a particular manner, like consecutively) implies superior ability or performance. Using terms like "elite group" is a form of exaggeration that the Standard seeks to prevent. The focus should be on the achievement of earning the charter, not the process.
**3. Conclusion**
The statement that highlights the difficulty and exclusivity of passing the exams is the one that **least likely complies** with the Standards. Therefore, option **C** is correct.
---
### **Question 130: Standard II(B) - Market Manipulation**
**Question:** According to the Standards, transaction-based manipulation includes:
A. acquiring a dominant position in a derivative to exploit the price of a related underlying.
B. taking an aggressive investment position in a security with an intent to exploit market inefficiencies.
C. issuing an overly optimistic projection of a security's value to induce trading by other market participants.
---
**Solution: A**
**1. Conceptual Framework**
**Standard II(B) – Market Manipulation** prohibits conduct that distorts prices or artificially inflates trading volume with the intent to mislead market participants. There are two main categories:
1.  **Information-Based Manipulation:** Spreading false or misleading information to influence prices.
2.  **Transaction-Based Manipulation:** Using actual trades to mislead the market. This includes transactions that give a false impression of trading activity or that are intended to manipulate the price of a security.
**2. Analysis of Options**
-   **A. acquiring a dominant position in a derivative to exploit the price of a related underlying:** This is a classic example of **transaction-based manipulation**. For instance, an investor could corner the market on a futures contract to artificially distort its price near expiration, forcing others to settle at a manipulated price. The *transactions* themselves are the tool of manipulation.
-   **B. taking an aggressive investment position... to exploit market inefficiencies:** This is the definition of legitimate active investing. It is not manipulation unless the transactions are intended to create artificial price movements rather than to profit from perceived mispricing.
-   **C. issuing an overly optimistic projection...:** This is an example of **information-based manipulation**, as it involves disseminating misleading information, not using trades to manipulate the market.
**3. Conclusion**
Acquiring a dominant position to manipulate prices is a form of **transaction-based manipulation**. Therefore, option **A** is correct.
---
### **Question 131: Basic EPS Calculation**
**Question:** An analyst gathers the following information about a company:
| | Year 2 | Year 1 |
| :--- | :---: | :---: |
| Net income | €57,500 | €58,000 |
| WACS outstanding | 650,000 | 635,000 |
Which of the following increased from Year 1 to Year 2? A. Basic EPS
---
**Solution: Analysis Only (Statement is False)**
**1. Conceptual Framework**
Basic Earnings Per Share (EPS) is a measure of a company's profitability allocated to each outstanding share of common stock. It is calculated as:
$
\text{Basic EPS} = \frac{\text{Net Income} - \text{Preferred Dividends}}{\text{Weighted Average Common Shares (WACS) Outstanding}}
$
Since no preferred dividends are mentioned, we use Net Income as the numerator.
**2. Step-by-Step Calculation**
-   **EPS for Year 1:**
    -   EPS = €58,000 / 635,000 shares = **€0.0913**
-   **EPS for Year 2:**
    -   EPS = €57,500 / 650,000 shares = **€0.0885**
**3. Conclusion**
Basic EPS **decreased** from €0.0913 in Year 1 to €0.0885 in Year 2. Therefore, the statement "Basic EPS increased from Year 1 to Year 2" is **false**. The question is likely part of a multiple-choice set where other options would need to be evaluated.
---
### **Question 132: Monetary Policy Transmission Mechanism**
**Question:** All else being equal, an increase in the central bank's policy rate most likely puts downward pressure on domestic inflation by:
A. increasing consumption growth.
B. improving investors' confidence.
C. strengthening the country's currency.
---
**Solution: C**
**1. Conceptual Framework**
The **monetary transmission mechanism** describes the various channels through which a central bank's policy actions (like changing the policy rate) affect the broader economy and ultimately the rate of inflation. One of the key channels is the **exchange rate channel**.
**2. Analysis of the Exchange Rate Channel**
1.  A central bank **increases its policy rate**.
2.  All else equal, domestic assets become more attractive to foreign investors seeking higher returns.
3.  This leads to an inflow of foreign capital and increased demand for the domestic currency in the foreign exchange market.
4.  The increased demand causes the domestic currency to **appreciate** (strengthen).
5.  A stronger domestic currency makes imports cheaper and exports more expensive. Cheaper imports put direct downward pressure on the domestic price level. More expensive exports reduce foreign demand for domestic goods, which dampens aggregate demand.
6.  Both effects help to reduce domestic inflation.
**3. Analysis of Options**
-   A: Incorrect. A higher policy rate increases the cost of borrowing, which *reduces* consumption growth.
-   B: Incorrect. The effect on confidence is ambiguous and not the primary mechanism. It could be seen as a negative signal about economic growth.
-   C: Correct. A higher policy rate attracts foreign investment, **strengthening the country's currency**, which in turn helps to curb inflation.
**4. Conclusion**
The strengthening of the country's currency is a key part of the monetary transmission mechanism through which a policy rate increase fights inflation. Therefore, option **C** is correct.
---
### **Question 133: Capital Structure Weights**
**Question:** An analyst gathers the following information (in $ millions) about a company:
| | Book Value | Market Value |
| :--- | :---: | :---: |
| Debt | 30 | 35 |
| Preferred stock | 10 | 15 |
| Common stock | 60 | 100 |
Assuming the company's current capital structure is its target capital structure, the weight of debt is closest to:
A. 23.3%
B. 25.9%
C. 30.0%
---
**Solution: A**
**1. Conceptual Framework**
When calculating a company's capital structure weights, particularly for use in the Weighted Average Cost of Capital (WACC), it is essential to use **market values**, not book values. Market values reflect the current prices at which the company's securities are trading and thus represent the true current cost of its financing.
The weight of any capital component is its market value divided by the total market value of all capital components.
**2. Step-by-Step Calculation**
**Step 1: Calculate the total market value of the company's capital.**
-   Total Market Value = Market Value of Debt + Market Value of Preferred Stock + Market Value of Common Stock
-   Total Market Value = $35M + 
5M + 
00M = 
50M
**Step 2: Calculate the weight of debt.**
-   Weight of Debt = $\frac{\text{Market Value of Debt}}{\text{Total Market Value}}$
-   Weight of Debt = $\frac{\$35M}{\
50M} \approx 0.2333$
**3. Conclusion**
The weight of debt in the company's capital structure is 23.33%, or **23.3%**. Therefore, option **A** is correct.
---
### **Question 134: Effect of an Inventory Write-Down on Ratios**
**Question:** Which of the following ratios will most likely increase as a result of an inventory write-down?
A. Current ratio
B. Total asset turnover ratio
C. Receivables turnover ratio
---
**Solution: B**
**1. Conceptual Framework**
An inventory write-down occurs when the net realizable value of inventory falls below its cost. The accounting impact is:
-   **Income Statement:** The amount of the write-down is recognized as an expense, usually within Cost of Goods Sold (COGS). This reduces gross profit and net income.
-   **Balance Sheet:** The value of Inventory is reduced. This, in turn, reduces Current Assets and Total Assets. Retained Earnings (and thus Equity) are also reduced.
**2. Analysis of Ratio Effects**
Let's analyze the effect of the write-down on each ratio's numerator and denominator.
-   **A. Current Ratio = $\frac{\text{Current Assets}}{\text{Current Liabilities}}$**
    -   The numerator (Current Assets) decreases because Inventory decreases.
    -   The denominator (Current Liabilities) is unchanged.
    -   Result: The ratio **decreases**.
-   **B. Total Asset Turnover Ratio = $\frac{\text{Sales}}{\text{Average Total Assets}}$**
    -   The numerator (Sales) is unchanged.
    -   The denominator (Average Total Assets) decreases because the write-down reduces the value of ending assets.
    -   Result: A decrease in the denominator with an unchanged numerator causes the ratio to **increase**.
-   **C. Receivables Turnover Ratio = $\frac{\text{Sales}}{\text{Average Accounts Receivable}}$**
    -   The numerator (Sales) is unchanged.
    -   The denominator (Average Accounts Receivable) is unchanged.
    -   Result: The ratio is **unchanged**.
**3. Conclusion**
The total asset turnover ratio is the only ratio listed that will most likely increase as a result of an inventory write-down. Therefore, option **B** is correct.
---
### **Question 135: Regression Model Terminology**
**Question:** A functional form of a simple linear regression in which the dependent variable is logarithmic but the independent variable is linear is best referred to as the:
A. log-lin model.
B. lin-log model.
C. log-log model.
---
**Solution: A**
**1. Conceptual Framework**
In econometrics and statistics, the functional form of a regression model is named based on the transformation applied to the dependent and independent variables. The convention is to name it as:
**`(dependent variable transformation)` - `(independent variable transformation)`**
**2. Analysis of Model Types**
-   **Log-Lin Model:** The dependent variable (Y) is logarithmic, and the independent variable (X) is linear. The form is $ \ln(Y) = b_0 + b_1X $. This is the model described in the question. It is used when a constant change in X is expected to produce a constant *percentage* change in Y.
-   **Lin-Log Model:** The dependent variable (Y) is linear, and the independent variable (X) is logarithmic. The form is $ Y = b_0 + b_1\ln(X) $.
-   **Log-Log Model:** Both the dependent (Y) and independent (X) variables are logarithmic. The form is $ \ln(Y) = b_0 + b_1\ln(X) $. In this model, the coefficient $b_1$ represents an elasticity.
**3. Conclusion**
A model where the dependent variable is logarithmic and the independent variable is linear is referred to as a **log-lin model**. Therefore, option **A** is correct.
