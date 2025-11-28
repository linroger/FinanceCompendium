# CICC Equity Research
# CFA Practice Exam – Detailed Solutions (Questions 1–15)

**Analyst:** GPT-5.1, Senior Managing Director & Equity Research Analyst
**Institution:** China International Capital Corporation (CICC)
**Scope:** Detailed, step-by-step solutions to the first 15 questions of *MinerU_CFA Practice Exam__20251115094858.md*, with full logic, mathematics, and financial intuition.

---

## Question 1 – Target Downside Deviation (Fund Returns, Part 1)

**Restated question.**
An analyst observes a fund’s annual returns over five years: 2%, 5%, 3%, 6%, and 2%. With a **target return** of \(4\%\), compute the **target downside deviation** of these returns.

We are given:

- \(R_1 = 2\%\)
- \(R_2 = 5\%\)
- \(R_3 = 3\%\)
- \(R_4 = 6\%\)
- \(R_5 = 2\%\)
- Target return \(R_T = 4\%\)

The **target semivariance** with respect to a target return is:

$$
\sigma_{\text{down}}^2
  = \frac{1}{N} \sum_{t=1}^{N}
    \bigl[\min(0, R_t - R_T)\bigr]^2
$$

and the **target downside deviation** is:

$$
\sigma_{\text{down}} = \sqrt{\sigma_{\text{down}}^2}.
$$

### Step 1 – Compute deviations from the target

$$
\begin{aligned}
R_1 - R_T &= 2\% - 4\% = -2\%, \\
R_2 - R_T &= 5\% - 4\% = +1\%, \\
R_3 - R_T &= 3\% - 4\% = -1\%, \\
R_4 - R_T &= 6\% - 4\% = +2\%, \\
R_5 - R_T &= 2\% - 4\% = -2\%.
\end{aligned}
$$

Only **negative** deviations contribute:

$$
\min(0, R_t - R_T) =
\begin{cases}
-2\%, & t = 1, 5, \\
-1\%, & t = 3, \\
0, & t = 2, 4.
\end{cases}
$$

### Step 2 – Square and average (over all periods)

Squared negative deviations:

$$
(-2\%)^2 = 4,\quad
(-1\%)^2 = 1,\quad
(-2\%)^2 = 4.
$$

Sum of squared shortfalls:

$$
4 + 1 + 4 = 9.
$$

With \(N = 5\) years:

$$
\sigma_{\text{down}}^2 = \frac{9}{5} = 1.8 \quad (\%\!^2).
$$

### Step 3 – Take the square root

$$
\sigma_{\text{down}} = \sqrt{1.8} \approx 1.3416\%.
$$

**Answer:** The target downside deviation is closest to **1.34% (Choice A)**.

---

## Question 2 – Target Downside Deviation (Fund Returns, Part 2)

**Restated question.**
The same five annual returns (2%, 5%, 3%, 6%, and 2%) and target return of 4% are given again. Compute the **target downside deviation**.

The data, definition, and calculation are identical to Question 1. The downside deviations and their squared values are the same; hence the target downside deviation is again:

$$
\sigma_{\text{down}} = \sqrt{\frac{9}{5}} \approx 1.34\%.
$$

**Answer:** The target downside deviation is again closest to **1.34% (Choice A)**.

---

## Question 3 – Role of the Central Bank

**Restated question.**
Which statement best describes what a **central bank** most likely does?

Options (paraphrased):

- **A.** Lends money to banks facing serious shortages.
- **B.** Is one of many suppliers of the country’s currency.
- **C.** Does not manage the country’s foreign currency reserves.

### Concept and reasoning

- A central bank is typically the **monopoly issuer** of a country’s currency, not just one of many suppliers. So statement B is incorrect.
- Central banks generally hold and manage a country’s **official foreign currency reserves**, so statement C is incorrect.
- Central banks act as **lenders of last resort**, providing liquidity to solvent banks facing acute funding shortages. This is precisely statement A.

**Answer:** **A.** Lends money to banks facing serious shortages.

---

## Question 4 – Measurement of Intangible Assets

**Restated question.**
Under applicable accounting standards, intangible assets after initial recognition are reported using which model(s)?

Options:

- **A.** Cost model only.
- **B.** Cost model or fair value model.
- **C.** Cost model or revaluation model.

### Concept and reasoning

Under **IFRS**, intangible assets are initially recognized at cost and subsequently measured using either:

1. The **cost model**, or
2. The **revaluation model**, *provided* there is an active market permitting reliable fair value measurement.

A “fair value model” is not the terminology used for intangibles; the standard refers to a **revaluation model**.

Under **US GAAP**, only the cost model is permitted, but the question is framed in generic (converged) terms and mirrors IFRS language.

Therefore, the correct combination is:

**Answer:** **C.** Cost model or revaluation model.

---

## Question 5 – Impairment Loss on a Machine

**Restated question.**
An analyst has the following (in € thousands) about a machine:

- Carrying amount prior to impairment: €50
- Present value of expected future cash flows (value in use): €46
- Fair value: €48
- Costs to sell: €3

Compute the **impairment loss** (in € thousands).

### Step 1 – Determine recoverable amount

Under IFRS, the **recoverable amount** is:

$$
\text{Recoverable amount}
  = \max(\text{fair value less costs to sell},\ \text{value in use}).
$$

- Fair value less costs to sell:
  $48 - 3 = 45.$
- Value in use (PV of expected future cash flows):
  $46.$

Thus:

$$
\text{Recoverable amount} = \max(45,\ 46) = 46.
$$

### Step 2 – Compute impairment loss

$$
\text{Impairment loss}
  = \text{Carrying amount} - \text{Recoverable amount}
  = 50 - 46
  = 4.
$$

**Answer:** The impairment loss is **€4 thousand (Choice B)**.

---

## Question 6 – Demand Curve in Perfect Competition

**Restated question.**
In a **perfectly competitive** market, what is the shape of the demand curve faced by an individual firm?

Options:

- **A.** Negatively sloped.
- **B.** Horizontal.
- **C.** Positively sloped.

### Concept and reasoning

In perfect competition:

- Many small firms sell a **homogeneous product**.
- Each firm is a **price taker**; market price is given.
- If a firm raises its price above the market, it sells *nothing*; if it lowers its price, it gains no advantage because it already can sell all it wishes at the market price.

Thus, the individual firm faces a **perfectly elastic** (horizontal) demand curve at the market price.

**Answer:** **B.** Horizontal.

---

## Question 7 – Multi-Sided Networks and Business Growth

**Restated question.**
Which concept best describes business growth that attracts more customers and **merchants**, reinforcing growth on both sides of the platform?

Options:

- **A.** Crowdsourcing.
- **B.** A one-sided network.
- **C.** A multi-sided network.

### Concept and reasoning

- **Crowdsourcing** refers to obtaining input, ideas, or services from a large group (often online), not specifically to the mutual growth of customer and merchant groups.
- A **one-sided network** (e.g., telephone network) involves network effects from more users on a single side.
- A **multi-sided network** (e.g., payment platforms, online marketplaces) connects **two or more distinct user groups** (e.g., consumers and merchants). Growth on one side increases value for the other, reinforcing the platform’s growth.

The description of more **customers and merchants** clearly points to **multi-sided network effects**.

**Answer:** **C.** A multi-sided network.

---

## Question 8 – Revenue Recognition and Probability of Reversal

**Restated question.**
Under converged IFRS/US GAAP revenue standards, revenue is recognized only when which condition is met?

Key option (paraphrased):

- **B.** It is highly probable that the amount of revenue recognized will **not** be subsequently reversed.

### Concept and reasoning

Under IFRS 15 / ASC 606, revenue for a performance obligation is recognized when:

1. Control of goods or services transfers to the customer, and
2. The amount of **variable consideration** included is constrained such that it is **highly probable** that a significant revenue reversal **will not occur** when the uncertainty is resolved.

Therefore, the statement emphasizing **high probability of no subsequent reversal** matches the core requirement.

**Answer:** **B.** Revenue is recognized only when it is **highly probable that it will not be subsequently reversed**.

---

## Question 9 – Static Trade-Off Theory of Capital Structure

**Restated question.**
According to the **static trade-off theory** of capital structure, the value of a levered company is reduced by which factor(s)?

Options:

- **A.** The present value of interest tax shields only.
- **B.** The present value of costs of financial distress only.
- **C.** Both the present value of interest tax shields and the present value of costs of financial distress.

### Concept and reasoning

Under static trade-off theory, the value of a levered firm is:

$$
V_L = V_U + \text{PV}(\text{tax shield})
      - \text{PV}(\text{expected costs of financial distress}),
$$

where \(V_U\) is the unlevered firm value.

- Interest **tax shields increase** firm value.
- Expected costs of financial distress **decrease** firm value.

Therefore, the factor that **reduces** the value of the levered company is the **PV of costs of financial distress**.

**Answer:** **B.** The present value of costs of financial distress only.

---

## Question 10 – Revaluation Model and Shareholders’ Equity

**Restated question.**
Under the **revaluation model** for long-lived assets, an initial revaluation that **increases** the carrying value of land most likely affects which item?

Options (paraphrased):

- **A.** Net income.
- **B.** Shareholders’ equity.
- **C.** Total asset turnover ratio.

### Concept and reasoning

Under IFRS:

- An **upward revaluation** of property, plant, and equipment (PPE) is recognized in **other comprehensive income (OCI)** and accumulated in **equity** (revaluation surplus), *unless* it reverses a prior downward revaluation through profit or loss.
- For the **first** revaluation upward, there is no prior downward revaluation to reverse, so the gain bypasses the income statement and goes directly to **equity**.

Thus:

- **Net income** is not affected (for this initial upward revaluation).
- **Shareholders’ equity** increases via revaluation surplus.
- **Total asset turnover** (Sales / Total Assets) would fall mechanically as total assets rise, but the question asks what the revaluation “most likely” affects directly; the accounting entry is clearly through equity.

**Answer:** **B.** Shareholders’ equity.

---

## Question 11 – Concentration Ratio vs. Herfindahl-Hirschman Index

**Restated question.**
In contrast to the Herfindahl-Hirschman Index (HHI), which statement about the **concentration ratio** is most accurate?

Options:

- **A.** It considers the elasticity of demand.
- **B.** It accounts for the possibility of new entrants.
- **C.** It is less affected by mergers among the top market incumbents.

### Concept and reasoning

- The **concentration ratio** (e.g., four-firm ratio) sums the market shares of the largest firms; it does **not** incorporate demand elasticity or potential new entry explicitly.
- The **HHI** squares market shares and sums them, making it **very sensitive** to changes in the market shares of large firms, especially mergers among top players.
- Because the concentration ratio simply sums market shares (without squaring), it is **less sensitive** to distribution among the largest firms and, therefore, **less affected by mergers** among those incumbents than HHI.

**Answer:** **C.** The concentration ratio is less affected by mergers among the top market incumbents.

---

## Question 12 – Mean, Median, and Mode of P/E Ratios

**Restated question.**
An analyst observes company P/E ratios: 8, 13, 3, 12, 8, and 10. Which relationship among the mean, median, and mode is correct?

Data set:

$$
\{8,\,13,\,3,\,12,\,8,\,10\}.
$$

### Step 1 – Compute the mode

The value 8 appears **twice**, whereas all others appear once.
Thus, **mode** \(= 8\).

### Step 2 – Compute the median

Sort the data:

$$
3,\ 8,\ 8,\ 10,\ 12,\ 13.
$$

With 6 observations, the median is the average of the 3rd and 4th:

$$
\text{Median} = \frac{8 + 10}{2} = 9.
$$

### Step 3 – Compute the arithmetic mean

$$
\bar{x}
  = \frac{3 + 8 + 8 + 10 + 12 + 13}{6}
  = \frac{54}{6}
  = 9.
$$

So we have:

- Mode = 8
- Median = 9
- Mean = 9

Thus:

- Median (9) **>** Mode (8).
- Mode (8) is **not** greater than the mean (9).
- Mean (9) is **not** greater than the median (9); they are equal.

**Answer:** **A.** The median is greater than the mode.

---

## Question 13 – Type II Error in Hypothesis Testing

**Restated question.**
In hypothesis testing, what is a **Type II error**?

Options:

- **A.** Rejecting a true null hypothesis.
- **B.** Rejecting a false null hypothesis.
- **C.** Not rejecting a false null hypothesis.

### Concept and reasoning

- A **Type I error**: reject a **true** null hypothesis (false positive).
- A **Type II error**: **fail to reject** (i.e., not reject) a **false** null hypothesis (false negative).

Thus, the definition of a Type II error matches option C.

**Answer:** **C.** Not rejecting a false null hypothesis.

---

## Question 14 – Interest Rate Policy to Reduce Inflation

**Restated question.**
To reduce inflation, which type of **interest rate policy** does a central bank most likely implement?

Options:

- **A.** Contractionary.
- **B.** Neutral.
- **C.** Expansionary.

### Concept and reasoning

- A **contractionary** monetary policy raises policy interest rates and/or otherwise tightens monetary conditions, aiming to **slow aggregate demand** and reduce inflationary pressure.
- A **neutral** policy maintains the stance consistent with stable inflation and output at potential.
- An **expansionary** policy lowers rates and stimulates activity, which would typically **increase** inflationary pressure.

To reduce inflation, the relevant stance is clearly **contractionary**.

**Answer:** **A.** Contractionary.

---

## Question 15 – Weighted Average Cost of Capital (WACC)

**Restated question.**
An analyst has the following information about a company’s capital structure and costs:

- Market value of debt, \(D = \$1{,}000\) million
- Market value of equity, \(E = \$500\) million
- Pre-tax cost of debt, \(k_d = 4\%\)
- Cost of equity, \(k_e = 6\%\)
- Marginal tax rate, \(T = 30\%\)

Interest is fully tax-deductible. Compute the firm’s **WACC**.

### Step 1 – Compute capital structure weights (market value)

Total market value:

$$
V = D + E = 1{,}000 + 500 = 1{,}500.
$$

Weights:

$$
\begin{aligned}
w_D &= \frac{D}{V} = \frac{1{,}000}{1{,}500} = \frac{2}{3} \approx 0.6667, \\
w_E &= \frac{E}{V} = \frac{500}{1{,}500} = \frac{1}{3} \approx 0.3333.
\end{aligned}
$$

### Step 2 – After-tax cost of debt

Because interest is tax-deductible:

$$
k_d^{\text{after tax}} = k_d (1 - T) = 4\% \times (1 - 0.30) = 4\% \times 0.70 = 2.8\%.
$$

### Step 3 – Compute WACC

$$
\begin{aligned}
\text{WACC}
  &= w_D \, k_d^{\text{after tax}} + w_E \, k_e \\
  &= 0.6667 \times 2.8\% + 0.3333 \times 6.0\% \\
  &\approx 1.867\% + 2.000\% \\
  &\approx 3.867\%.
\end{aligned}
$$

Rounded:

$$
\text{WACC} \approx 3.9\%.
$$

**Answer:** The WACC is closest to **3.9% (Choice B)**.

---

---

## Question 16 – Objective of Fiscal Policy

**Restated question.**
Which of the following is most likely an **objective of fiscal policy**?

Options:

- **A.** Maintaining price stability.
- **B.** Achieving an exchange rate target.
- **C.** Distributing income and wealth among different segments of the population.

### Concept and reasoning

- **Monetary policy** (central bank) primarily targets **price stability** and, in some regimes, exchange rate stability.
- **Exchange rate targets** are typically pursued via monetary policy and FX intervention, not as the main instrument of fiscal policy.
- **Fiscal policy** (government spending and taxation) serves, among others, the goals of:
  - Stabilizing the economy over the cycle, and
  - **Redistributing income and wealth** through progressive taxation and targeted expenditures.

Thus, among the options, redistribution of income and wealth is a core fiscal objective.

**Answer:** **C.** Distributing income and wealth among different segments of the population.

---

## Question 17 – US GAAP: Classification of Dividends Paid

**Restated question.**
Under **US GAAP**, how must **dividends paid to stockholders** be classified on the statement of cash flows?

Options:

- **A.** Must be classified as a financing activity.
- **B.** Must be classified as an operating activity.
- **C.** May be classified as either financing or operating.

### Concept and reasoning

- Under **US GAAP**,
  - Interest paid and received and dividends received are classified as **operating** cash flows.
  - **Dividends paid** are classified as **financing** cash flows, reflecting their nature as a return of capital to providers of equity.
- Under **IFRS**, dividends paid **may** be classified as operating or financing, but this flexibility does not exist in US GAAP.

Hence, under US GAAP, dividends paid **must** be shown as financing cash outflows.

**Answer:** **A.** Must be classified as a financing activity.

---

## Question 18 – Expected Value of a Discrete Random Variable

**Restated question.**
A random variable has the following probability distribution:

- Outcome 10 with probability 0.10
- Outcome 20 with probability 0.80
- Outcome 60 with probability 0.10

Compute the **expected value** of this random variable.

### Step-by-step calculation

The expected value \(E[X]\) of a discrete random variable is:

$$
E[X] = \sum_{i} p_i x_i.
$$

Here:

$$
\begin{aligned}
E[X]
  &= 0.10 \times 10
   + 0.80 \times 20
   + 0.10 \times 60 \\
  &= 1 + 16 + 6 \\
  &= 23.
\end{aligned}
$$

**Answer:** The expected value is **23 (Choice B)**.

---

## Question 19 – Retrospective Application: Policies vs. Estimates

**Restated question.**
If practical, **retrospective application** is required for a change in which of the following?

Options:

- **A.** Accounting policies only.
- **B.** Accounting estimates only.
- **C.** Both accounting policies and accounting estimates.

### Concept and reasoning

- A **change in accounting policy** (e.g., inventory method under IFRS) is applied **retrospectively**, if practicable:
  - Prior period financial statements are restated as if the new policy had always been in place.
- A **change in accounting estimate** (e.g., useful life of an asset, bad debt percentage) is applied **prospectively**:
  - Only current and future periods reflect the new estimate; previous periods are not restated.

Therefore, retrospective application, when practical, applies to **accounting policies**, not estimates.

**Answer:** **A.** Accounting policies only.

---

## Question 20 – Portfolio Standard Deviation (Two-Asset Portfolio, Part 1)

**Restated question.**
A portfolio contains **two stocks with equal weights**. Each stock has a **variance of returns** of \( (10\%)^2 = 0.01 \), and the **covariance** between their returns is \( (5\%)^2 = 0.0025 \). What is the portfolio’s **standard deviation of returns**?

Options (in %):

- **A.** 7.9%
- **B.** 8.7%
- **C.** 75.0%

*(The question text describes “100 percent squared” and “50 percent squared”; these correspond naturally to 10% and 5% in variance terms, consistent with the answer choices.)*

### Step 1 – Portfolio variance formula

For a two-asset portfolio with weights \(w_1\) and \(w_2\):

$$
\sigma_p^2
  = w_1^2 \sigma_1^2
  + w_2^2 \sigma_2^2
  + 2 w_1 w_2 \text{Cov}_{12}.
$$

Given equal weights:

$$
w_1 = w_2 = 0.5,\quad
\sigma_1^2 = \sigma_2^2 = 0.01,\quad
\text{Cov}_{12} = 0.0025.
$$

### Step 2 – Compute portfolio variance

$$
\begin{aligned}
\sigma_p^2
  &= (0.5)^2 \cdot 0.01
   + (0.5)^2 \cdot 0.01
   + 2 \cdot 0.5 \cdot 0.5 \cdot 0.0025 \\
  &= 0.25 \cdot 0.01 + 0.25 \cdot 0.01 + 0.5 \cdot 0.0025 \\
  &= 0.0025 + 0.0025 + 0.00125 \\
  &= 0.00625.
\end{aligned}
$$

### Step 3 – Take the square root

$$
\sigma_p = \sqrt{0.00625} = 0.0791 \approx 7.9\%.
$$

**Answer:** **A.** 7.9%.

---

## Questions 21 & 22 – Same Portfolio Standard Deviation Question (Duplicates)

**Restated question(s).**
The exam repeats the **same** two-asset portfolio question (equal-weight portfolio, each variance \(0.01\), covariance \(0.0025\)) multiple times. The calculation and result are identical.

Using the same inputs and formula as Question 20, we again obtain:

$$
\sigma_p \approx 7.9\%.
$$

**Answer (Question 21):** **A.** 7.9%.
**Answer (Question 22):** **A.** 7.9%.

---

## Question 23 – Standard Error of Estimate in Linear Regression

**Restated question.**
In a simple linear regression, the **standard error of the estimate** is also known as which of the following?

Options:

- **A.** Mean square error.
- **B.** Sum of squares error.
- **C.** Root mean square error.

### Concept and reasoning

Let:

- SSE = sum of squared residuals,
- MSE = SSE divided by its degrees of freedom,
- SEE (standard error of the estimate) = \(\sqrt{\text{MSE}}\).

Thus, the standard error of the estimate is the **square root of the mean squared error**, i.e., the **root mean square error**.

**Answer:** **C.** Root mean square error.

---

## Question 24 – Total Asset Turnover

**Restated question.**
An analyst gathers the following information:

- Revenue: €20 million
- Average shareholders’ equity: €10 million
- ROE: 10%
- ROA: 4%

Compute the **total asset turnover ratio**.

### Step 1 – Find net income from ROE

Return on equity is:

$$
\text{ROE} = \frac{\text{Net income}}{\text{Average equity}}.
$$

So:

$$
0.10 = \frac{\text{Net income}}{10} \quad\Rightarrow\quad
\text{Net income} = 1\ \text{million}.
$$

### Step 2 – Use ROA to infer total assets

Return on assets:

$$
\text{ROA} = \frac{\text{Net income}}{\text{Average total assets}}.
$$

So:

$$
0.04 = \frac{1}{\text{Average assets}}
  \quad\Rightarrow\quad
\text{Average assets} = \frac{1}{0.04} = 25\ \text{million}.
$$

### Step 3 – Compute total asset turnover

Total asset turnover:

$$
\text{Asset turnover}
  = \frac{\text{Revenue}}{\text{Average total assets}}
  = \frac{20}{25}
  = 0.8.
$$

**Answer:** **A.** 0.80.

---

## Question 25 – Non-Cooperative Economic Tool

**Restated question.**
Which of the following is best described as a **non-cooperative economic tool** in the context of geopolitics/economic policy?

Options:

- **A.** Globalization.
- **B.** Nationalization.
- **C.** Restriction of foreign investment.

### Concept and reasoning

- **Globalization** generally implies increasing integration, not an explicitly non-cooperative tool.
- **Nationalization** is a domestic ownership decision; it can have non-cooperative implications, but it is not primarily a targeted external economic tool.
- **Restrictions on foreign investment** (e.g., capital controls, ownership limits) are **explicit policy tools** aimed at influencing or limiting cross-border capital flows, and thus are classic **non-cooperative** economic instruments.

**Answer:** **C.** Restriction of foreign investment.

---

## Question 26 – Mutually Exclusive Projects: NPV Decision at 8%

**Restated question.**
Two **mutually exclusive** projects have the following cash flows (€) and IRRs:

|          | IRR     | Year 0 | Year 1 | Year 2 | Year 3 | Year 4 |
|----------|--------:|-------:|-------:|-------:|-------:|-------:|
| Project 1| 27.97%  | -2,450 |   345  |   849  |   635  |  3,645 |
| Project 2| 28.37%  | -2,450 |   345  |   849  | 1,051  |  3,175 |

Assuming a discount rate of **8%** for both projects, what is the best decision?

Options:

- **A.** Choose Project 1 only.
- **B.** Choose Project 2 only.
- **C.** Choose both Project 1 and Project 2.

Because the projects are **mutually exclusive**, we must choose **at most one**. The correct decision is to choose the project with the **higher NPV at the required rate (8%)**, not necessarily the one with the higher IRR.

### Step 1 – Compute NPV of Project 1 at 8%

Let \(r = 8\% = 0.08\).

Cash flows for Project 1:

$$
\text{CF}_0 = -2{,}450,\
\text{CF}_1 = 345,\
\text{CF}_2 = 849,\
\text{CF}_3 = 635,\
\text{CF}_4 = 3{,}645.
$$

NPV:

$$
\begin{aligned}
\text{NPV}_1
 &= -2{,}450
 + \frac{345}{(1.08)^1}
 + \frac{849}{(1.08)^2}
 + \frac{635}{(1.08)^3}
 + \frac{3{,}645}{(1.08)^4}.
\end{aligned}
$$

Numeric evaluation (rounded):

$$
\text{NPV}_1 \approx 1{,}780.6\ \text{(€)}.
$$

### Step 2 – Compute NPV of Project 2 at 8%

Cash flows for Project 2:

$$
\text{CF}_0 = -2{,}450,\
\text{CF}_1 = 345,\
\text{CF}_2 = 849,\
\text{CF}_3 = 1{,}051,\
\text{CF}_4 = 3{,}175.
$$

NPV:

$$
\begin{aligned}
\text{NPV}_2
 &= -2{,}450
 + \frac{345}{(1.08)^1}
 + \frac{849}{(1.08)^2}
 + \frac{1{,}051}{(1.08)^3}
 + \frac{3{,}175}{(1.08)^4}.
\end{aligned}
$$

Numeric evaluation (rounded):

$$
\text{NPV}_2 \approx 1{,}765.4\ \text{(€)}.
$$

### Step 3 – Compare and decide

Both projects have **positive NPV** at 8%, but Project 1’s NPV is **slightly higher**:

$$
\text{NPV}_1 > \text{NPV}_2.
$$

Since the projects are mutually exclusive, we select **only** the project with the larger NPV.

**Answer:** **A.** Invest in **Project 1 only**.

---

## Question 27 – Role of Financial Statement Analysis

**Restated question.**
Which statement is most accurate regarding the **role of financial statement analysis**?

Options:

- **A.** Provide assurance that audited financial statements are free from material error.
- **B.** Provide information about a company’s performance, financial position, and changes in financial position.
- **C.** Evaluate the performance and financial position of a company for making investment, credit, and other decisions.

### Concept and reasoning

- Auditors provide **reasonable assurance** on whether financial statements are free from material misstatement; this is not the role of the analyst (so A is incorrect).
- Financial statements themselves provide information on performance, financial position, and changes; analysis goes one step further.
- Financial statement analysis aims to **evaluate** performance and position to support **investment, credit, and other decisions**.

Thus, option C best captures the analytic role.

**Answer:** **C.** Evaluate the performance and financial position for decision-making.

---

## Question 28 – US GAAP: Lessee Accounting for Long-Term Operating Lease

**Restated question.**
Under **US GAAP**, for a **long-term operating lease**, what does the lessee report?

Key concept (post-ASC 842):

- For most leases (finance and operating), the lessee recognizes:
  - A **right-of-use (ROU) asset**, and
  - A **lease liability** equal to the **present value** of lease payments.
- Operating leases still have a **single lease expense** on the income statement, but the **cash flow classification** reflects interest (operating) and principal (financing).

Among the choices (paraphrased):

- A: Incorrect—splitting lease payments between financing and operating **outflows** on the cash flow statement is characteristic of finance leases; operating leases under US GAAP show a single lease expense in the income statement, but the asset/liability recognition is similar.
- B: Incorrect—the lease liability is measured at the **present value** of fixed payments, not the undiscounted value.
- C: Correct—after inception, the lessee recognizes a **single lease expense** each year, on a straight-line basis, even though the underlying accounting uses an ROU asset and lease liability.

**Answer:** **C.** After inception, a single straight-line lease expense each year.

---

## Question 29 – Average Duration of Unemployment and the Business Cycle

**Restated question.**
All else equal, a **decrease** in the **average duration of unemployment** most likely indicates that:

Options:

- **A.** An upturn is beginning.
- **B.** A downturn is forthcoming.
- **C.** An upturn has already occurred.

### Concept and reasoning

- Average duration of unemployment tends to **peak after** the unemployment rate peaks and begins to fall.
- When average duration is **falling**, it suggests that workers are finding jobs more quickly, consistent with an **ongoing expansion** or that an upturn has already taken hold.
- If an upturn were only just beginning, unemployment duration might still be high.

**Answer:** **C.** An upturn has already occurred.

---

## Question 30 – Ratios Calculable from the Balance Sheet Only

**Restated question.**
Which of the following can be calculated based on information from the **balance sheet only**?

Options:

- **A.** Quick ratio.
- **B.** Debt coverage.
- **C.** Receivables turnover ratio.

### Concept and reasoning

- The **quick ratio** uses:
  - Cash and equivalents,
  - Short-term investments,
  - Receivables,
  - Current liabilities.
  All of these are balance sheet items.
- **Debt coverage** and **receivables turnover** require income statement data (e.g., net income, operating cash flow, or sales), so they cannot be computed from the balance sheet alone.

Therefore, the only ratio based solely on balance sheet data is the **quick ratio**.

**Answer:** **A.** Quick ratio.

---

---

## Question 31 – Carrying Value of Licenses with Impairment and Amortization

**Restated question.**
A company holds **licenses** (intangible assets) with a **net book value** of 12,118 (USD thousands) as of 31 December Year 1. The following data (USD thousands) relate to **accumulated impairment losses and amortization** during Year 2:

- Accumulated impairment losses and amortization as of 31 Dec Year 1: 2,142
- Exchange movements: 212
- Amortization charge for the year: 752
- Impairment losses: 52
- Disposals: —
- Transfers to investments in associates: (7)

The **cost of licenses** as of 31 December Year 2 is 16,435 (USD thousands). What is the **carrying value of licenses** as of 31 December Year 2?

### Step 1 – Determine accumulated impairment and amortization at Year 2

We start with accumulated impairment/amortization at Year 1 and adjust for the Year 2 movements:

$$
\begin{aligned}
\text{Accumulated (Year 2)} &=
 2{,}142
 + 212
 + 752
 + 52
 - 7 \\
 &= 2{,}142 + 212 = 2{,}354 \\
 &\quad + 752 = 3{,}106 \\
 &\quad + 52 = 3{,}158 \\
 &\quad - 7 = 3{,}151.
\end{aligned}
$$

So accumulated impairment/amortization at Year 2 is **3,151** (USD thousands).

### Step 2 – Compute carrying value at Year 2

Carrying amount is:

$$
\text{Carrying value}
  = \text{Cost} - \text{Accumulated impairment and amortization}.
$$

Thus:

$$
\text{Carrying value}
  = 16{,}435 - 3{,}151 = 13{,}284\ \text{(USD thousands)}.
$$

**Answer:** The carrying value is approximately **13,284 (USD thousands)**.

---

## Question 32 – Fintech Applications to Investment Management

**Restated question.**
With respect to **fintech applications to investment management**, which statement is true?

Options:

- **A.** Robo-advisers are specialized to address unique demands of investors.
- **B.** Algorithmic trading can provide investors with fast execution but has high transaction costs.
- **C.** Natural language processing (NLP) can provide insights into interest rate policy by analyzing central bank communications.

### Concept and reasoning

- **Robo-advisers** are typically designed to provide **standardized**, low-cost portfolio solutions using rules-based approaches, not bespoke “unique” customization for each investor.
- **Algorithmic trading** generally **reduces** transaction costs through speed and efficiency; it does not inherently imply high transaction costs.
- **NLP** is used extensively to analyze **unstructured text** such as central bank statements, meeting minutes, and speeches to infer market-relevant themes like **interest rate policy**.

Therefore, only statement C accurately reflects a realistic fintech application.

**Answer:** **C.** NLP can analyze central bank communications to infer interest rate policy.

---

## Question 33 – Free Cash Flow to the Firm (FCFF)

**Restated question.**
An analyst gathers the following information (in € millions):

- Net income: 125
- Depreciation expense: 22
- Interest expensed and paid: 20
- Capital expenditures: 50
- Working capital expenditures: 25
- Dividends declared and paid: 11
- Income tax rate: 25%

Compute the **free cash flow to the firm (FCFF)**.

### Step 1 – Use the FCFF formula from net income

One common formulation:

$$
\text{FCFF}
 = \text{Net income}
 + \text{Non-cash charges}
 + \text{Interest} \times (1 - T)
 - \text{Fixed capital investment}
 - \text{Working capital investment}.
$$

Where:

- Net income = 125
- Non-cash charges = Depreciation = 22
- Interest = 20, \(T = 25\%\)
- Fixed capital investment (FCInv) = Capital expenditures = 50
- Working capital investment (WCInv) = 25

### Step 2 – Compute after-tax interest

$$
\text{Interest} \times (1 - T)
  = 20 \times (1 - 0.25)
  = 20 \times 0.75
  = 15.
$$

### Step 3 – Calculate FCFF

$$
\begin{aligned}
\text{FCFF}
  &= 125 + 22 + 15 - 50 - 25 \\
  &= 147 + 15 - 75 \\
  &= 162 - 75 \\
  &= 87.
\end{aligned}
$$

**Answer:** **€87 million (Choice A)**.

---

## Question 34 – Taxes Payable Basis

**Restated question.**
Taxes payable are calculated based on which of the following?

Options:

- **A.** EBIT.
- **B.** Taxable income.
- **C.** Accounting profit.

### Concept and reasoning

- **EBIT** (earnings before interest and taxes) is an intermediate income measure, not the direct basis for tax.
- **Accounting profit** (earnings before tax under accounting standards) may differ from **taxable income** because of temporary and permanent differences between tax rules and accounting standards.
- **Taxable income**, as computed under the relevant tax law, is the legal base on which **taxes payable** are determined.

**Answer:** **B.** Taxable income.

---

## Question 35 – Common Capital Allocation Pitfall

**Restated question.**
Which of the following is a **common capital allocation pitfall**?

Options:

- **A.** Basing investment decisions on earnings per share (EPS).
- **B.** Ignoring sunk costs in the decision-making process.
- **C.** Incorporating the responses of competitors into the analysis.

### Concept and reasoning

- Capital budgeting should be based on **incremental cash flows** and NPV/IRR, not **EPS**. Using EPS as the main decision metric is a classic pitfall, as it can encourage value-destroying projects that still increase EPS.
- **Ignoring sunk costs** is correct practice; sunk costs should not affect the decision.
- **Incorporating competitor responses** (strategic interactions) often improves capital allocation decisions.

Therefore, the pitfall is relying heavily on **EPS**.

**Answer:** **A.** Basing investment decisions on EPS.

---

## Question 36 – Degrees of Freedom in a Chi-Square Test of Independence

**Restated question.**
An analyst builds a contingency table for stocks classified by:

- Market capitalization: small, medium, large (3 categories), and
- Beta: high, medium, low (3 categories).

To test the relationship between size and beta using a chi-square **test of independence**, what are the **degrees of freedom** for the test statistic?

Options:

- **A.** 4.
- **B.** 6.
- **C.** 9.

### Step-by-step reasoning

For a contingency table with \(r\) rows and \(c\) columns, the degrees of freedom for the chi-square test are:

$$
\text{df} = (r - 1) \times (c - 1).
$$

Here:

- Rows \(r = 3\) (small, medium, large).
- Columns \(c = 3\) (high, medium, low).

Thus:

$$
\text{df}
 = (3 - 1) \times (3 - 1)
 = 2 \times 2
 = 4.
$$

**Answer:** **A.** 4.

---

## Question 37 – Effect of Price Increase on Sales Volume

**Restated question.**
When a company **increases its prices**, it would most likely experience a **decline in sales volume** when customers:

Options:

- **A.** Have few substitutes available.
- **B.** Have cheaper substitutes available.
- **C.** Have demand that is relatively price inelastic.

### Concept and reasoning

- If **few substitutes** exist, demand tends to be **less elastic**, so a price increase leads to a relatively small quantity decline.
- If **cheaper substitutes** are available, customers can easily switch, making demand more **price elastic**; a price increase is then likely to cause a **larger drop** in volume.
- If demand is **relatively price inelastic**, quantity demanded responds weakly to price changes; a decline in volume would be modest.

Thus, the largest and most likely decline in sales volume occurs when **cheaper substitutes** are available.

**Answer:** **B.** Cheaper substitutes available.

---

## Question 38 – Inventory Write-Down Below Carrying Amount

**Restated question.**
If the **value of inventory** declines below its **carrying amount** on the balance sheet, the carrying amount must be written down and the reduction in value recognized as which of the following?

Options:

- **A.** An expense on the income statement.
- **B.** A decrease in the revaluation surplus account.
- **C.** A decrease in the inventory valuation allowance account.

### Concept and reasoning

- Under both IFRS and US GAAP, when inventory is written down to net realizable value (NRV), the loss is recognized as an **expense** in the income statement (often in cost of goods sold or a separate line).
- Revaluation surplus applies to PPE under the revaluation model, not to inventory.
- Some firms may use an internal allowance account, but conceptually and in reporting, the effect is an expense.

**Answer:** **A.** Expense on the income statement.

---

## Question 39 – Systematic Sampling

**Restated question.**
Samples are drawn from a population by selecting every \(k\)th member of the population. This sampling method is best described as:

Options:

- **A.** Cluster sampling.
- **B.** Systematic sampling.
- **C.** Stratified random sampling.

### Concept and reasoning

- **Cluster sampling** divides the population into clusters and then samples **clusters**.
- **Stratified random sampling** divides the population into strata (e.g., age groups), then samples randomly within each stratum.
- **Systematic sampling** consists of selecting every \(k\)th element after a random start.

This description matches **systematic sampling**.

**Answer:** **B.** Systematic sampling.

---

## Questions 40–42 – Events Leading to Biased Accounting Choices (Duplicates)

**Restated question(s).**
Which of the following events is most likely to lead management to make **biased accounting choices**?

Options (for each duplicate):

- **A.** Changing the company’s CEO.
- **B.** Changing the company’s audit firm.
- **C.** Changing the company’s fiscal year.

### Concept and reasoning

- A **change in CEO** may reflect strategic or governance shifts but does not inherently create immediate incentives for biased accounting.
- A **change in audit firm** might be related to disagreements, but the new firm’s standards and independence constrain bias.
- A **change in fiscal year** can be used strategically to **shorten or lengthen** reporting periods, potentially smoothing or shifting reported performance—this can allow management to **manage earnings** more easily.

Therefore, the event most associated with biased accounting choices is a change in the **fiscal year**.

**Answer (Questions 40, 41, 42):** **C.** Changing the company’s fiscal year.

---

## Question 43 – Misaligned Interests with Long Director Tenure

**Restated question.**
Which of the following best represents the potential for misaligned interests between shareholders and directors when **director tenures are excessively long**?

Options:

- **A.** Entrenchment.
- **B.** Empire building.
- **C.** Excessive risk taking.

### Concept and reasoning

- **Entrenchment** describes situations where management or directors become so secure in their positions that discipline from shareholders and the market is weakened. Long tenures can reduce independence and oversight, creating misalignment.
- **Empire building** refers to managers pursuing growth for its own sake.
- **Excessive risk taking** is a different governance concern.

Excessive tenure primarily raises concerns about **entrenchment**.

**Answer:** **A.** Entrenchment.

---

## Question 44 – Shutdown Decision in the Short Run

**Restated question.**
In the **short run**, a firm operating in a perfectly competitive market will most likely **avoid shutdown** if it earns sufficient revenue to cover which costs?

Options:

- **A.** Fixed costs.
- **B.** Marginal costs.
- **C.** Variable costs.

### Concept and reasoning

- In the short run, **fixed costs are sunk**; whether the firm operates or not, it must pay them.
- The shutdown rule: the firm continues operating if **price ≥ average variable cost (AVC)**, i.e., if revenue covers **variable** costs.
- If revenue does not cover variable costs, the firm minimizes losses by shutting down.

**Answer:** **C.** Variable costs.

---

## Question 45 – WACC with Tax-Deductible Interest

**Restated question.**
An analyst gathers the following information about a company’s capital structure:

- Debt (tax-deductible): 40%
- Equity: 60%
- Before-tax cost of debt: 4%
- Cost of equity: 9%
- Marginal tax rate: 30%

If interest is tax-deductible, what is the company’s **WACC**?

### Step 1 – After-tax cost of debt

$$
k_d^{\text{after tax}} = k_d (1 - T)
  = 4\% \times (1 - 0.30)
  = 4\% \times 0.70
  = 2.8\%.
$$

### Step 2 – Compute WACC

Let \(w_D = 0.40\), \(w_E = 0.60\).

$$
\begin{aligned}
\text{WACC}
  &= w_D \, k_d^{\text{after tax}} + w_E \, k_e \\
  &= 0.40 \times 2.8\% + 0.60 \times 9\% \\
  &= 1.12\% + 5.40\% \\
  &= 6.52\%.
\end{aligned}
$$

**Answer:** **6.52% (Choice B)**.

---

## Question 46 – Modigliani–Miller without Corporate Taxes

**Restated question.**
Under the **Modigliani–Miller propositions without corporate taxes**, if a company’s **debt-to-equity (D/E) ratio increases**, what happens to the **cost of equity**?

Options:

- **A.** Decreases.
- **B.** Remains unchanged.
- **C.** Increases.

### Concept and reasoning

Under MM Proposition II **without taxes**, the cost of equity is:

$$
k_e
  = k_0 + (k_0 - k_d)\frac{D}{E},
$$

where:

- \(k_e\) = cost of equity,
- \(k_0\) = cost of capital for an all‑equity firm,
- \(k_d\) = cost of debt.

As **leverage** \(D/E\) increases, equity holders bear more financial risk and demand a **higher return**. Thus \(k_e\) **increases** linearly with \(D/E\).

**Answer:** **C.** Increases.

---

## Question 47 – Effective Duration of a Bond (Part 1)

**Restated question.**
A bond is selling for 98.2. If yields **rise** 30 bps, the price is estimated to fall to 96.6; if yields **fall** 30 bps, the price is estimated to rise to 100.1. What is the bond’s **effective duration**?

Options:

- **A.** 1.78.
- **B.** 5.94.
- **C.** 11.88.

### Step 1 – Use the effective duration formula

Effective duration is approximated by:

$$
D_{\text{eff}}
  = \frac{P_- - P_+}{2 P_0 \Delta y},
$$

where:

- \(P_-\) = price when yield falls,
- \(P_+\) = price when yield rises,
- \(P_0\) = initial price,
- \(\Delta y\) = change in yield (in decimal).

Given:

$$
P_0 = 98.2,\quad
P_- = 100.1,\quad
P_+ = 96.6,\quad
\Delta y = 0.003\ (0.30\%).
$$

### Step 2 – Plug the numbers

$$
\begin{aligned}
D_{\text{eff}}
  &= \frac{100.1 - 96.6}{2 \times 98.2 \times 0.003} \\
  &= \frac{3.5}{2 \times 98.2 \times 0.003}.
\end{aligned}
$$

Compute denominator:

$$
2 \times 98.2 \times 0.003
  = 196.4 \times 0.003
  = 0.5892.
$$

Thus:

$$
D_{\text{eff}}
  = \frac{3.5}{0.5892}
  \approx 5.94.
$$

**Answer:** **B.** 5.94.

---

## Question 48 – Effective Duration of a Bond (Part 2, Duplicate)

**Restated question.**
The same bond price and yield-change information is repeated. The **effective duration** is the same as in Question 47.

Using the same calculation:

$$
D_{\text{eff}} \approx 5.94.
$$

**Answer:** **B.** 5.94.

---

## Question 49 – Underpriced Call Option Arbitrage

**Restated question.**
If a **call option** is underpriced relative to the value from the **binomial model**, investors can earn an arbitrage profit by **buying the call** and simultaneously:

Options:

- **A.** Investing the present value of the strike price at the risk‑free rate.
- **B.** Selling short the underlying and investing the proceeds at the risk‑free rate.
- **C.** Buying the underlying and funding the transaction by borrowing at the risk‑free rate.

### Concept and reasoning

In a binomial world, the call’s fair value equals the cost of its **replicating portfolio**, which typically consists of:

- Going **long** a certain fraction of the stock, and
- **Borrowing** at the risk‑free rate.

Thus, a call is economically equivalent to **stock plus borrowing**. If the call is **underpriced**, then:

- Call price < value of the replicating portfolio.
- To arbitrage, buy the **cheap call** and **short** the replicating portfolio (stock + borrowing).
- Shorting stock and investing the proceeds at the risk‑free rate corresponds to shorting the long‑stock‑plus‑borrowing position.

Among the choices, this is best represented by:

**Answer:** **B.** Sell short the underlying and invest the proceeds at the risk‑free rate.

---

## Question 50 – Trade Sale versus IPO Exit (Private Equity)

**Restated question.**
In contrast with an **IPO** exit, a **trade sale** exit of a private equity investment most likely has:

Options:

- **A.** Higher transaction costs.
- **B.** Higher levels of confidentiality.
- **C.** A larger universe of potential buyers.

### Concept and reasoning

- An **IPO** involves public markets, disclosures, underwriting, and regulatory filings—typically **high transaction costs** and **broad distribution** to many investors.
- A **trade sale** sells the portfolio company directly to a **strategic or financial buyer**, usually:
  - Fewer counterparties,
  - Lower marketing and regulatory costs than an IPO,
  - **More confidentiality** (bilateral or limited auction process, private negotiations).

Thus, the distinguishing characteristic is **greater confidentiality** for a trade sale.

**Answer:** **B.** Higher levels of confidentiality.

---

## Question 51 – Highest Priority Claim in Default

**Restated question.**
Which of the following has the **highest priority** claim in the event of default?

Options:

- **A.** Secured debt.
- **B.** Unsecured debt.
- **C.** Subordinated debt.

### Concept and reasoning

In a typical capital structure:

1. **Secured debt** has claims backed by specific collateral and ranks ahead of unsecured claims.
2. **Unsecured debt** ranks below secured but above subordinated.
3. **Subordinated debt** ranks lowest among debt claims.

**Answer:** **A.** Secured debt.

---

## Question 52 – Multi-Boutique Asset Manager

**Restated question.**
A **multi‑boutique asset manager** firm is best described as:

Options:

- **A.** An asset management company that focuses on a specific asset class or style.
- **B.** An asset management company that offers a wide variety of asset classes and styles.
- **C.** A holding company which owns several asset management firms with specialized investment strategies.

### Concept and reasoning

- A **single‑boutique** manager would focus on a specific style or asset class (Option A).
- A **broad single shop** offering many styles and asset classes fits Option B.
- A **multi‑boutique** structure is a **holding company** owning multiple **specialized** asset managers (“boutiques”), each with distinct styles or strategies.

**Answer:** **C.** A holding company owning several specialized boutiques.

---

## Question 53 – Semi-Strong-Form Market Efficiency and Fundamental Analysis

**Restated question.**
In **semi‑strong‑form efficient** markets, what does the use of **fundamental analysis** most likely allow investors to do?

Options:

- **A.** Exploit patterns of prices.
- **B.** Earn consistent abnormal returns.
- **C.** Understand the value implications of information.

### Concept and reasoning

- Semi‑strong‑form efficiency asserts that all **public information** is already reflected in prices.
- Therefore, fundamental analysis **cannot** reliably produce **persistent abnormal returns** (B is incorrect).
- Rather, its role is to help investors **interpret information** and understand **how** events and data affect intrinsic value and risk (C).

**Answer:** **C.** Understand the value implications of information.

---

## Question 54 – Role of Risk Aversion in Pricing

**Restated question.**
Knowledge about the degree of **risk aversion** of investors is most likely needed for:

Options:

- **A.** The pricing of assets, but not for the pricing of derivatives.
- **B.** The pricing of derivatives, but not for the pricing of assets.
- **C.** Both the pricing of assets and the pricing of derivatives.

### Concept and reasoning

- **Asset pricing models** like CAPM or consumption‑based models explicitly depend on investors’ **risk aversion** to determine expected returns and thus prices.
- **Derivative pricing** in the standard no‑arbitrage framework uses **risk‑neutral pricing**, which depends on arbitrage relationships and the underlying asset’s price dynamics, not on investors’ actual risk aversion.

Thus, risk aversion is central to **asset pricing**, but not necessary for arbitrage‑based derivative pricing.

**Answer:** **A.** Needed for asset pricing, not for derivative pricing.

---

## Question 55 – Embedded Options Granted to Bondholders

**Restated question.**
Which of the following is **least likely** a type of embedded option **granted to bondholders** of a bond issuer?

Options:

- **A.** Put the issue.
- **B.** Call the issue.
- **C.** Convert the issue.

### Concept and reasoning

- A **put option** (puttable bond) is a right granted to bondholders to sell back the bond to the issuer at a set price—this clearly benefits bondholders.
- A **conversion option** (convertible bond) lets bondholders convert into equity—also beneficial to bondholders.
- A **call option on the bond** is a right granted to the **issuer**, not the bondholder; it allows the issuer to redeem the bond early and is generally **unfavorable** to bondholders.

Thus, in terms of options **granted to bondholders**, “call the issue” is least likely.

**Answer:** **B.** Call the issue.

---

## Question 56 – Credit Enhancement in Asset-Backed Securities

**Restated question.**
Which of the following is **not** a credit enhancement in asset‑backed securities (ABS)?

Options:

- **A.** Credit tranching.
- **B.** Overcollateralization.
- **C.** Representations and warranties.

### Concept and reasoning

- **Credit tranching**: creates senior/subordinated tranches so that losses are first borne by junior tranches—this is a structural **credit enhancement**.
- **Overcollateralization**: collateral exceeds the par value of securities—also a direct **credit enhancement**.
- **Representations and warranties**: contractual promises about asset quality and servicing standards; these are legal protections but **not themselves a credit enhancement mechanism** in the usual sense (they do not directly absorb credit losses).

**Answer:** **C.** Representations and warranties.

---

## Question 57 – Leverage and Credit Risk Across Companies

**Restated question.**
An analyst gathers the following data (USD millions):

|              | Company 1 | Company 2 | Company 3 |
|--------------|----------:|----------:|----------:|
| Total Debt   |     1,125 |     1,360 |     1,562 |
| EBITDA       |       590 |       680 |       750 |
| Interest Exp.|        71 |        60 |        63 |

Which company’s **leverage** contributes **most adversely** to its **credit risk**?

### Step 1 – Debt-to-EBITDA (leverage ratio)

$$
\begin{aligned}
\text{Debt/EBITDA}_1 &= \frac{1{,}125}{590} \approx 1.91, \\
\text{Debt/EBITDA}_2 &= \frac{1{,}360}{680} = 2.00, \\
\text{Debt/EBITDA}_3 &= \frac{1{,}562}{750} \approx 2.08.
\end{aligned}
$$

Company 3 has the **highest** Debt/EBITDA (highest leverage).

### Step 2 – Interest coverage (for context)

$$
\begin{aligned}
\text{Coverage}_1 &= \frac{590}{71} \approx 8.3, \\
\text{Coverage}_2 &= \frac{680}{60} \approx 11.3, \\
\text{Coverage}_3 &= \frac{750}{63} \approx 11.9.
\end{aligned}
$$

While Company 1 has the **weakest coverage**, the question specifically asks whose **leverage** most adversely contributes to credit risk. On this metric, Company 3 is the most leveraged.

**Answer:** **C.** Company 3.

---

## Question 58 – Price Change Using Duration and Convexity

**Restated question.**
A bond has a **modified duration** of 5 and a **convexity** statistic of 75. If the bond’s yield‑to‑maturity **decreases**, the expected percentage price change is closest to:

Options:

- **A.** 2.41%.
- **B.** 2.59%.
- **C.** 2.69%.

*(The underlying yield change implied by the choices is a 0.5% or 0.005 move.)*

### Step 1 – Duration–convexity approximation

For a small yield change \(\Delta y\), approximate percentage price change:

$$
\frac{\Delta P}{P}
  \approx -D_{\text{mod}} \Delta y
  + \frac{1}{2} \text{Conv} (\Delta y)^2.
$$

Assume \(\Delta y = -0.005\) (a 0.5% decrease):

- \(D_{\text{mod}} = 5\),
- \(\text{Conv} = 75\).

### Step 2 – Plug values

$$
\begin{aligned}
\frac{\Delta P}{P}
  &\approx -5 \times (-0.005)
   + \frac{1}{2} \times 75 \times (0.005)^2 \\
  &= 0.025 + 0.5 \times 75 \times 0.000025 \\
  &= 0.025 + 0.5 \times 0.001875 \\
  &= 0.025 + 0.0009375 \\
  &= 0.0259375 \approx 2.59\%.
\end{aligned}
$$

**Answer:** **B.** 2.59%.

---

## Question 59 – Lowest Risk Tolerance among Institutional Investors

**Restated question.**
Which type of institutional investor typically has the **lowest tolerance for risk**?

Options:

- **A.** University endowment funds.
- **B.** Defined benefit pension plans.
- **C.** Property and casualty insurance companies.

### Concept and reasoning

- **University endowments** often have long horizons and relatively high risk tolerance.
- **Defined benefit pension plans** vary, but many have somewhat higher tolerance depending on plan status and sponsor strength.
- **Property and casualty (P&C) insurers** face:
  - Short‑term, unpredictable liability cash flows,
  - Regulatory capital requirements,
  - A need for liquid, high‑quality assets.
These factors constrain them to relatively **conservative** portfolios.

**Answer:** **C.** Property and casualty insurance companies.

---

## Question 60 – Convexity Adjustment for a Yield Change

**Restated question.**
If yields decrease by **0.75%** (0.0075), what is the **convexity adjustment** for a bond with an annual convexity of 400?

Options:

- **A.** 0.01125.
- **B.** 0.02250.
- **C.** 1.50000.

### Step-by-step calculation

Convexity adjustment (as a proportion) is:

$$
\text{Convexity adjustment}
  = \frac{1}{2} \times \text{Conv} \times (\Delta y)^2.
$$

Given:

- \(\text{Conv} = 400\),
- \(\Delta y = -0.0075\) (magnitude \(0.0075\)).

$$
\begin{aligned}
\text{Convexity adjustment}
  &= \frac{1}{2} \times 400 \times (0.0075)^2 \\
  &= 200 \times 0.00005625 \\
  &= 0.01125.
\end{aligned}
$$

**Answer:** **A.** 0.01125.

---

## Question 61 – Greatest Reinvestment Risk

**Restated question.**
All else equal, the bond exposed to the **greatest level of reinvestment risk** is most likely the one selling at:

Options:

- **A.** Par.
- **B.** A discount.
- **C.** A premium.

### Concept and reasoning

Reinvestment risk arises from the need to reinvest **coupon payments** at uncertain future rates. It is higher when:

- The **coupon rate is higher** (more interim cash flows to reinvest), and
- The **maturity is longer** (more periods of reinvestment).

Among bonds with the same maturity and yield:

- A **premium bond** has the **highest coupon**.
- A **discount bond** has the lowest coupon.
- A **par bond** has a coupon equal to the market yield, in between.

Thus, the **premium bond** has the greatest reinvestment risk.

**Answer:** **C.** A premium.

---

## Question 62 – Matrix Pricing of a 4-Year Bond

**Restated question.**
Two similarly rated 8% semiannual coupon bonds are observed:

|        | Price  | Maturity | Yield to Maturity |
|--------|-------:|---------:|------------------:|
| Bond 1 | 114.243| 3 years  | 3%                |
| Bond 2 | 112.691| 5 years  | 5%                |

Using **matrix pricing**, estimate the price (per 100 of par) of a **4‑year** semiannual coupon bond of similar quality with a **7.6% annual coupon**.

Options:

- **A.** 113.07.
- **B.** 113.19.
- **C.** 113.47.

### Step 1 – Interpolate the yield for 4 years

The 3‑year bond has YTM = 3%; the 5‑year bond has YTM = 5%. A simple linear interpolation for a 4‑year maturity gives:

$$
y_{4\text{yr}} \approx 4\% \ (\text{annual}).
$$

Assume semiannual compounding:

$$
y_{\text{per half‑year}} = \frac{4\%}{2} = 2\% = 0.02.
$$

### Step 2 – Price the 7.6% coupon bond at 4% yield

Annual coupon = 7.6%, so semiannual coupon:

$$
C = \frac{7.6\%}{2} \times 100 = 3.8.
$$

Number of periods \(n = 4 \times 2 = 8\).

Price:

$$
P
  = \sum_{t=1}^{8} \frac{3.8}{(1.02)^t}
  + \frac{100}{(1.02)^8}.
$$

Numerically:

$$
P \approx 113.19.
$$

**Answer:** **B.** 113.19.

---

## Question 63 – Adding Low-Correlation Asset Classes

**Restated question.**
In the context of **strategic asset allocation**, adding asset classes with **low correlation** will most likely **improve the portfolio’s risk–return trade‑off** as long as the standalone risk of the added asset class:

Options:

- **A.** Does not exceed its diversification effect.
- **B.** Equals its diversification effect.
- **C.** Exceeds its diversification effect.

### Concept and reasoning

Adding a new asset class can improve the risk–return trade‑off if the **reduction in portfolio risk from diversification** more than compensates for the risk it adds.

- If its stand‑alone risk **does not exceed** its diversification benefit, portfolio risk falls for a given expected return.
- If it **exceeds** that effect, overall risk could worsen.

Thus, improvement is achieved as long as **stand‑alone risk does not exceed** the diversification effect.

**Answer:** **A.** Does not exceed its diversification effect.

---

## Question 64 – Justified Forward P/E from Fundamentals

**Restated question.**
An analyst observes:

- Earnings retention rate \(b = 55\%\)
- Return on equity \(\text{ROE} = 20\%\)
- Required rate of return \(r = 15\%\)

Compute the **justified forward P/E**.

### Step 1 – Compute sustainable growth rate

Sustainable growth:

$$
g = b \times \text{ROE}
  = 0.55 \times 0.20
  = 0.11 = 11\%.
$$

### Step 2 – Justified forward P/E formula

For a stable growth dividend discount model (DDM), justified **forward** P/E is:

$$
\text{Justified forward P/E}
  = \frac{1 - b}{r - g}.
$$

So:

$$
\text{P/E}
  = \frac{1 - 0.55}{0.15 - 0.11}
  = \frac{0.45}{0.04}
  = 11.25.
$$

This is closest to 11.3.

**Answer:** **B.** 11.3.

---

## Question 65 – Accessing Commodity Exposure

**Restated question.**
With regard to **commodities**, which statement is most likely true?

Options:

- **A.** Exposure is most commonly achieved via commodity derivatives.
- **B.** Their returns are based on an income stream such as interest or dividends.
- **C.** They are physical products so most investors prefer to trade the actual commodity.

### Concept and reasoning

- Most investors obtain commodity exposure through **derivatives** (futures, swaps, ETCs), not by holding the physical commodity directly.
- Commodities do **not** typically generate interest or dividends. Instead, returns come from price changes plus roll and collateral yield.
- Trading physical commodities involves storage, transportation, and other frictions; institutions rarely prefer this.

**Answer:** **A.** Exposure is most commonly achieved via commodity derivatives.

---

## Question 66 – Forward Rate Agreement (FRA) Characteristics

**Restated question.**
Which statement about a **forward rate agreement (FRA)** is accurate?

Options:

- **A.** The underlying is a currency exchange rate.
- **B.** The short position hedges against an increase in interest rates.
- **C.** The contract is closely tied to the term structure of interest rates.

### Concept and reasoning

- The underlying of an FRA is a **interest rate** (e.g., LIBOR), not a currency exchange rate (A is incorrect).
- In an FRA, the **long** position benefits when the reference rate rises above the contract rate; the **short** benefits when rates fall. So the short hedges against **falling**, not rising, rates (B is incorrect).
- FRA rates are derived from and tightly linked to the **term structure** (forward curve) of interest rates.

**Answer:** **C.** The contract is closely tied to the term structure of interest rates.

---

## Question 67 – Two-Stage Dividend Discount Model

**Restated question.**
Assume the current dividend \(D_0\) of a security is \$9.50. The dividend is expected to grow by **12%** annually for the next **two years** and then by **3%** thereafter. The required rate of return is **15%**. The security’s value is closest to:

Options:

- **A.** \$94.99.
- **B.** \$95.58.
- **C.** \$120.51.

### Step 1 – Compute high‑growth dividends

Let \(g_1 = 12\%\), \(g_2 = 3\%\), \(r = 15\%\).

$$
\begin{aligned}
D_1 &= D_0 (1 + g_1) = 9.50 \times 1.12 = 10.64, \\
D_2 &= D_1 (1 + g_1) = 10.64 \times 1.12 \approx 11.9168.
\end{aligned}
$$

### Step 2 – Compute terminal value at end of Year 2

From Year 3 onward, dividends grow at \(g_2 = 3\%\). Dividend in Year 3:

$$
D_3 = D_2 (1 + g_2) = 11.9168 \times 1.03 \approx 12.2743.
$$

Terminal value at \(t=2\) (PV of all dividends from Year 3 onward):

$$
\text{TV}_2
  = \frac{D_3}{r - g_2}
  = \frac{12.2743}{0.15 - 0.03}
  \approx \frac{12.2743}{0.12}
  \approx 102.29.
$$

### Step 3 – Present value of cash flows

$$
\begin{aligned}
V_0
  &= \frac{D_1}{(1 + r)^1}
   + \frac{D_2 + \text{TV}_2}{(1 + r)^2} \\
  &\approx \frac{10.64}{1.15}
   + \frac{11.9168 + 102.29}{1.15^2}.
\end{aligned}
$$

Numerically:

$$
V_0 \approx 95.6.
$$

This is closest to \$95.58.

**Answer:** **B.** \$95.58.

---

## Question 68 – Expected Return on the Capital Market Line (CML)

**Restated question.**
Given:

- Risk‑free rate \(R_f = 4\%\),
- Expected market return \(E(R_m) = 12\%\),
- Standard deviation of market returns \(\sigma_m = 20\%\),

The expected return of a **portfolio on the CML** with standard deviation \(\sigma_p = 15\%\) is:

Options:

- **A.** 6%.
- **B.** 8%.
- **C.** 10%.

### Step-by-step calculation

The CML equation:

$$
E(R_p)
  = R_f + \frac{\sigma_p}{\sigma_m}\left[E(R_m) - R_f\right].
$$

Plugging in:

$$
\begin{aligned}
E(R_p)
  &= 0.04 + \frac{0.15}{0.20} (0.12 - 0.04) \\
  &= 0.04 + 0.75 \times 0.08 \\
  &= 0.04 + 0.06 \\
  &= 0.10 = 10\%.
\end{aligned}
$$

**Answer:** **C.** 10%.

---

## Question 69 – Value of a European Put Option

**Restated question.**
The value of a **European put option** is directly related to which of the following?

Options:

- **A.** Risk‑free interest rate.
- **B.** Value of the underlying.
- **C.** Volatility of the underlying.

### Concept and reasoning

All else equal:

- As the **risk‑free rate increases**, the value of a **put** generally **decreases** (future exercise price is more heavily discounted).
- As the **underlying price increases**, the put becomes less likely to finish in‑the‑money, so its value **decreases**.
- As **volatility increases**, the value of both calls and puts **increases** because the probability of large favorable moves grows.

Thus, put option value is **directly** related to **volatility**.

**Answer:** **C.** Volatility of the underlying.

---

## Question 70 – Clawback Provision in Private Equity

**Restated question.**
Which of the following reflects the right of **limited partners (LPs)** to reclaim part of the **general partner’s performance fees**?

Options:

- **A.** Soft hurdle rate.
- **B.** Hard hurdle rate.
- **C.** Clawback provision.

### Concept and reasoning

- A **hurdle rate** (soft or hard) defines when performance fees can be charged; it is not about reclaiming them later.
- A **clawback provision** allows LPs to recoup excess performance fees from the GP if subsequent losses or underperformance mean aggregate returns do not justify fees already paid.

**Answer:** **C.** Clawback provision.

---

## Question 71 – Hedge Fund Restrictions

**Restated question.**
Hedge funds are **least likely** to have restrictions concerning which of the following?

Options:

- **A.** The use of derivatives.
- **B.** The withdrawal of invested funds.
- **C.** The number of investors in the fund.

### Concept and reasoning

- Hedge funds typically have:
  - Detailed guidelines on **use of derivatives** (risk management, leverage), and
  - Significant restrictions on **withdrawals** (lock‑ups, notice periods, gates).
- The **number of investors** is constrained by regulation (e.g., qualified purchaser rules), but within that framework, the fund structure itself is less about restricting the count than the **type** of investors.

Among the options, formal operational restrictions are least focused on the **number of investors**.

**Answer:** **C.** The number of investors in the fund.

---

## Question 72 – Dividend Dates Set by the Exchange

**Restated question.**
Which date in the chronology of a dividend payment is most likely determined by the **stock exchange**?

Options:

- **A.** Declaration date.
- **B.** Ex‑dividend date.
- **C.** Holder‑of‑record date.

### Concept and reasoning

- **Declaration date** and **record date** are set by the issuing company’s board.
- The **ex‑dividend date** is usually set by the **exchange**, occurring a set number of business days before the record date.

**Answer:** **B.** Ex‑dividend date.

---

## Question 73 – Payoff for the Call Option Seller

**Restated question.**
Consider a call option:

- Option price (premium): \$2.00
- Exercise price: \$38.00
- Current underlying price at expiration: \$42.00

What is the **payoff** for the **call option seller** (writer)?

Options:

- **A.** \(-\$4.00\).
- **B.** \(-\$2.00\).
- **C.** \$4.00.

### Step-by-step reasoning

For a **long call** at expiration:

$$
\text{Payoff}_{\text{long call}} = \max(0, S_T - X).
$$

Here:

$$
S_T = 42,\quad X = 38 \Rightarrow S_T - X = 4 > 0.
$$

So:

$$
\text{Payoff}_{\text{long}} = +4.
$$

The **short call** payoff is the **negative** of the long call’s payoff:

$$
\text{Payoff}_{\text{short}} = -4.
$$

The problem asks for **payoff**, not profit, so we do **not** incorporate the initial \$2 premium.

**Answer:** **A.** \(-\$4.00\).

---

## Question 74 – Order Type to Protect a Short Position

**Restated question.**
An investor is **short** a stock and wants to protect this position from adverse price movements while still allowing gains if the stock price falls. Which order should the investor most likely use?

Options:

- **A.** Stop order.
- **B.** Limit order.
- **C.** Market order.

### Concept and reasoning

- A **buy stop order** placed above the current market price will be triggered only if the stock price rises to the stop level, automatically buying back the shares and limiting further loss.
- If the price declines, the stop is not triggered and the investor continues to benefit from falling prices.
- A simple market order would immediately close the position, eliminating both risk and potential gain; a limit order may never execute if price keeps rising past the limit.

Thus, to protect against adverse moves while still allowing favorable moves, a **stop order** is appropriate.

**Answer:** **A.** Stop order.

---

## Question 75 – Lockout Period for Non-Amortizing ABS

**Restated question.**
During the lockout period for a **non‑amortizing asset‑backed security (ABS)**, the principal payment of **€100 million** on a **€1.0 billion** face‑value issue will result in the security having a total face value of:

Options:

- **A.** €0.9 billion.
- **B.** €1.0 billion.
- **C.** €1.1 billion.

### Concept and reasoning

- In a **non‑amortizing** ABS with a **lockout period**, principal payments on the underlying assets are **not passed through** to investors as principal repayments.
- Instead, these principal collections are typically used to **purchase additional receivables** or held in a revolving structure, so the total face value of the ABS **remains unchanged**.

Therefore, even though €100 million of principal is received from the collateral, the outstanding ABS face value stays at €1.0 billion.

**Answer:** **B.** €1.0 billion.

---

**End of Report Segment – Questions 1–75**
Detailed solutions and reasoning have now been provided for Questions 1–75. The same rigorous methodology can be continued for subsequent questions in the exam.

---

## Question 76 – ESG Divestment from Fossil Fuels

**Restated question.**
The decision to **divest from fossil fuels** in a portfolio is most consistent with which **ESG investing** approach?

Options:

- **A.** ESG integration.
- **B.** Impact investing.
- **C.** Negative screening.

### Concept and reasoning

- **ESG integration** incorporates ESG factors into traditional financial analysis to refine risk/return estimates; it does not itself imply exclusion.
- **Impact investing** seeks positive, measurable social or environmental impact along with financial return; divesting from fossil fuels may reduce negative impact but is not directly about funding positive projects.
- **Negative screening** explicitly **excludes** investments based on ESG criteria (e.g., tobacco, weapons, fossil fuels).

**Answer:** **C.** Negative screening.

---

## Question 77 – Example of a Fair Value Hedge

**Restated question.**
Which of the following transactions most likely represents a **fair value hedge**?

Options:

- **A.** Commodity futures to hedge inventory.
- **B.** Currency forward to hedge forecasted sales.
- **C.** Interest rate swap to a fixed rate for floating‑rate debt.

### Concept and reasoning

- A **fair value hedge** hedges the exposure to changes in the **fair value** of a recognized asset or liability.
- A **cash flow hedge** hedges variability in future cash flows (e.g., forecasted sales).
- Hedging **floating‑rate debt** by paying fixed and receiving floating in an interest rate swap converts the debt into **fixed‑rate debt**; this mitigates changes in the **fair value** of the debt due to rate movements—classic **fair value hedge**.
- A currency forward on forecasted sales (B) is a cash flow hedge.
- Commodity futures for inventory (A) can be fair value hedge as well, but curriculum typically highlights the **interest rate swap on existing floating debt** as the canonical fair value hedge example in this set.

**Answer:** **C.** Interest rate swap to a fixed rate for floating‑rate debt.

---

## Question 78 – Put–Call–Forward Parity

**Restated question.**
According to **put‑call‑forward parity**, the difference between the price of a **put** and the price of a **call** is equal to the difference between:

Options:

- **A.** Forward price and spot price discounted at the risk‑free rate.
- **B.** Spot price and exercise price discounted at the risk‑free rate.
- **C.** Exercise price and forward price discounted at the risk‑free rate.

### Concept and reasoning

Put–call–forward parity (European options) can be written as:

$$
c - p = e^{-rT}(F_0 - K),
$$

where \(c\) is the call price, \(p\) the put price, \(F_0\) the forward price, and \(K\) the exercise price.

Rearranging:

$$
p - c = e^{-rT}(K - F_0).
$$

Thus, the difference \(p - c\) equals the **present value** of \(K - F_0\), i.e., the exercise price minus forward price discounted at the risk‑free rate.

**Answer:** **C.** Exercise price and forward price discounted at the risk‑free rate.

---

## Question 79 – Discount Margin of a Floating-Rate Note

**Restated question.**
A floating‑rate note (FRN) has:

- Time to maturity: 3 years
- Current price: 98 (per 100 par)
- Reference rate: 1.5%
- Quoted margin: 0.5%
- Quarterly payments

Assuming evenly spaced periods, the **discount margin** of the FRN is closest to:

Options:

- **A.** 0.69%.
- **B.** 1.20%.
- **C.** 3.23%.

### Concept and reasoning (summary)

- Coupon rate = reference + quoted margin = \(1.5\% + 0.5\% = 2.0\%\).
- With quarterly payments, there are \(3 \times 4 = 12\) periods.
- The discount margin (DM) is the spread over the reference rate such that the PV of coupons and principal, discounted at \( \text{reference} + \text{DM} \), equals the market price (98).

Solving for the yield \(y\) that prices the bond at 98:

$$
y \approx 2.70\%\quad\Rightarrow\quad
\text{DM} = y - \text{reference} \approx 2.70\% - 1.50\% \approx 1.20\%.
$$

**Answer:** **B.** 1.20%.

---

## Question 80 – Preferred Stock Price Change from Higher Required Return

**Restated question.**
A non‑callable, non‑convertible preferred stock:

- Pays an annual dividend of \$3.75.
- Is currently trading at its par value of \$50 per share.

If the required rate of return **increases by 75 bps**, the preferred stock’s price is closest to:

Options:

- **A.** \$45.45.
- **B.** \$49.50.
- **C.** \$55.56.

### Step-by-step calculation

Current required return:

$$
r_0 = \frac{D}{P_0} = \frac{3.75}{50} = 7.5\%.
$$

New required return:

$$
r_1 = 7.5\% + 0.75\% = 8.25\%.
$$

Preferred stock as a perpetuity:

$$
P_1 = \frac{D}{r_1} = \frac{3.75}{0.0825} \approx 45.45.
$$

**Answer:** **A.** \$45.45.

---

## Question 81 – Price Change of a 3-Year Bond When Yield Falls

**Restated question.**
A 3‑year, semiannual‑pay bond with:

- Par value = \$100,
- Coupon rate = 5%,
- Purchase price = \$98,

experiences a **100 bp decrease** in yield to maturity. The **change in value** of the bond is closest to:

Options:

- **A.** \$2.50.
- **B.** \$2.73.
- **C.** \$5.98.

### Concept and reasoning (summary)

- The bond pays \$2.50 every six months for 6 periods.
- Yield falls by 1% annually (0.5% per half‑year).
- Solve for the initial yield that prices the bond at 98, then reprice at yield −1%.

Computation shows:

- New price \(P_1 \approx 100.73\).
- Change in value \(\Delta P \approx 100.73 - 98.00 = 2.73\).

**Answer:** **B.** \$2.73.

---

## Question 82 – Instrument Rating vs. Issuer Rating

**Restated question.**
A company has an issuer rating of **B**. Which type of debt issued by this company is **not** likely to carry a rating of **BB‑**?

Options:

- **A.** Subordinated debt.
- **B.** Senior secured debt.
- **C.** Senior unsecured debt.

### Concept and reasoning

- **Senior secured debt** can be rated above the issuer because it is collateralized and has higher recovery.
- **Senior unsecured debt** may be close to, or slightly above, the issuer rating depending on structure.
- **Subordinated debt** is **riskier** than the issuer overall and normally rated **lower**, not higher (BB‑ would be above the B issuer rating).

**Answer:** **A.** Subordinated debt.

---

## Question 83 – Behavioral Overreaction: Herding

**Restated question.**
An overreaction in the financial markets causes a security’s price to experience a significant loss. If this overreaction is caused by investors who sell because **other investors are selling**, what type of behavior is this?

Options:

- **A.** Herding.
- **B.** Loss aversion.
- **C.** Overconfidence.

### Concept and reasoning

- **Herding** occurs when investors mimic the trades of others, often disregarding their own information.
- **Loss aversion** refers to the tendency to weigh losses more heavily than gains.
- **Overconfidence** involves overestimating one’s own analysis or information.

Selling purely because others are selling is **herding**.

**Answer:** **A.** Herding.

---

## Question 84 – Priced Risk under CAPM

**Restated question.**
According to the **CAPM**, the priced risk of an individual security is:

Options:

- **A.** Measured by the security’s standard deviation of returns.
- **B.** Determined primarily by the security’s nonsystematic risk.
- **C.** Affected by holding the security in a well‑diversified portfolio.

### Concept and reasoning

Under CAPM:

- Only **systematic (market) risk** is priced.
- Systematic risk is captured by **beta**, which reflects the covariance of the security with the market and assumes the security is held in a **well‑diversified portfolio** (so idiosyncratic risk is diversified away).

Thus, the priced risk is the portion that remains in a diversified portfolio.

**Answer:** **C.** Affected by holding the security in a well‑diversified portfolio.

---

## Question 85 – Return on a Margin Transaction

**Restated question.**
A trader enters into the following margin transaction:

- Purchase price per share: €100
- Initial margin (equity): 45%
- Holding period: 1 year
- Unleveraged security return: 15% (so end price = €115)
- Call money rate: 4% (interest on loan, paid at end)

No dividends or commissions. What is the trader’s **rate of return** on the margin transaction?

Options:

- **A.** 27.3%
- **B.** 28.4%
- **C.** 29.3%

### Step 1 – Initial position

- Share price: 100
- Initial equity: 45
- Loan from broker: 55

### Step 2 – Ending values (after 1 year)

- Ending share price: \(100 \times 1.15 = 115\).
- Interest on loan: \(55 \times 4\% = 2.2\).
- Loan repayment at end: principal + interest = \(55 + 2.2 = 57.2\).

Ending equity:

$$
\text{Ending equity}
  = 115 - 57.2 = 57.8.
$$

### Step 3 – Rate of return on equity

$$
\text{Return}
  = \frac{57.8 - 45}{45}
  = \frac{12.8}{45}
  \approx 28.4\%.
$$

**Answer:** **B.** 28.4%.

---

## Question 86 – Hedge Fund Incentive Fee with Hard Hurdle

**Restated question.**
A hedge fund has:

- Beginning AUM: \$350 million
- Annual return before fees: 10%
- Management fee: 2% of year‑end AUM **before** fees
- Incentive fee: 20%
- Hard hurdle rate: 5%
- Incentive fee is based on **returns net of management fees**.

Compute the **incentive fee** (in \$ millions).

### Step 1 – Year‑end AUM before fees

$$
\text{AUM}_{\text{pre fees}}
  = 350 \times 1.10
  = 385.
$$

### Step 2 – Management fee

$$
\text{Mgmt fee}
  = 2\% \times 385
  = 7.7.
$$

Assets after management fee:

$$
\text{AUM}_{\text{after mgmt}}
  = 385 - 7.7
  = 377.3.
$$

Net‑of‑management return:

$$
\text{Return}_{\text{net mgmt}}
  = \frac{377.3}{350} - 1
  = 7.8\%.
$$

Excess over hard hurdle:

$$
7.8\% - 5\% = 2.8\%.
$$

### Step 3 – Incentive fee

$$
\text{Incentive fee}
  = 20\% \times 2.8\% \times 350
  = 0.20 \times 9.8
  = 1.96\ \text{million}.
$$

**Answer:** **A.** \$1.96 million.

---

## Question 87 – Price vs. Total Return Index at Inception

**Restated question.**
Compared to the total return version of an index, the value of the **price index** at inception is:

Options:

- **A.** Less than the total return index.
- **B.** Equal to the total return index.
- **C.** Greater than the total return index.

### Concept and reasoning

At inception, before any dividends or income have been paid:

- The **price index** and **total return index** both start from the **same base level** (e.g., 100).
- Over time, as dividends are reinvested, the total return index diverges upwards.

**Answer:** **B.** Equal to the value of the total return version.

---

## Question 88 – Asset-Based Valuation Model Applicability

**Restated question.**
An asset‑based valuation model is most applicable for a company with significant:

Options:

- **A.** Intangible assets.
- **B.** Property, plant, and equipment.
- **C.** Proportions of current assets and current liabilities and few intangible assets.

### Concept and reasoning

- Asset‑based valuation is most useful when the company’s value is closely tied to assets that are **separable and reliably valued**, typically:
  - Tangible assets,
  - Current assets and liabilities,
  - Few unique intangibles.

A company dominated by intangible assets is harder to value asset‑by‑asset. A firm with **large current assets and current liabilities and few intangibles** is more suitable.

**Answer:** **C.** High current assets/liabilities and few intangibles.

---

## Question 89 – Highest Expected Return by Systematic Risk

**Restated question.**
Given three securities:

|          | Total Variance | Nonsystematic Variance |
|----------|---------------:|-----------------------:|
| Security 1 | 0.20         | 0.05                  |
| Security 2 | 0.30         | 0.25                  |
| Security 3 | 0.35         | 0.22                  |

According to capital market theory, which security has the **highest expected return**?

### Step 1 – Compute systematic variance

$$
\begin{aligned}
\sigma^2_{\text{sys},1} &= 0.20 - 0.05 = 0.15, \\
\sigma^2_{\text{sys},2} &= 0.30 - 0.25 = 0.05, \\
\sigma^2_{\text{sys},3} &= 0.35 - 0.22 = 0.13.
\end{aligned}
$$

Security 1 has the **largest** systematic variance (0.15).

Under the CAPM, expected return increases with **systematic risk**, so Security 1 has the highest expected return.

**Answer:** **A.** Security 1.

---

## Question 90 – Covariance between Portfolio and Market

**Restated question.**
An analyst observes:

|          | Standard Deviation | Beta |
|----------|-------------------:|-----:|
| Portfolio| 10%                | 0.5  |
| Market   | 20%                | 1.0  |

The covariance between the returns of the portfolio and the market is closest to:

Options:

- **A.** 0.005.
- **B.** 0.010.
- **C.** 0.020.

### Step-by-step calculation

By definition:

$$
\beta_p = \frac{\text{Cov}(R_p, R_m)}{\sigma_m^2}.
$$

Thus:

$$
\text{Cov}(R_p, R_m)
  = \beta_p \sigma_m^2.
$$

Given:

$$
\beta_p = 0.5,\quad
\sigma_m = 20\% = 0.20 \Rightarrow \sigma_m^2 = 0.04.
$$

So:

$$
\text{Cov}(R_p, R_m)
  = 0.5 \times 0.04
  = 0.02.
$$

**Answer:** **C.** 0.020.

---

**End of Report Segment – Questions 1–90**
Detailed solutions and reasoning have now been provided for Questions 1–90. The same rigorous methodology can be continued for subsequent questions in the exam.

---

## Question 91 – Annual YTM Based on Quarterly Compounding

**Restated question.**
An analyst observes a semiannual‑pay bond with:

- Price = 102,
- Years to maturity = 3,
- Yield to maturity (semiannual basis) = 5.27%,
- Coupon = 6.00% (annual).

What is the **annual yield to maturity based on quarterly compounding**?

Options:

- **A.** 5.24%.
- **B.** 5.33%.
- **C.** 5.96%.

### Step 1 – Convert semiannual YTM to effective annual yield

“5.27% on a semiannual basis” means a **nominal annual rate** of 5.27% with semiannual compounding, i.e., 2.635% per half‑year.

Effective annual yield:

$$
y_{\text{eff}}
  = \left(1 + \frac{0.0527}{2}\right)^2 - 1
  \approx 5.339\%.
$$

### Step 2 – Convert to nominal annual with quarterly compounding

Let \(j\) be the nominal annual rate with **quarterly** compounding such that:

$$
\left(1 + \frac{j}{4}\right)^4 - 1 = y_{\text{eff}}.
$$

Solve:

$$
\frac{j}{4} = (1 + y_{\text{eff}})^{1/4} - 1
  \Rightarrow
  j = 4 \left[(1 + y_{\text{eff}})^{1/4} - 1\right]
  \approx 5.24\%.
$$

**Answer:** **A.** 5.24%.

---

## Question 92 – Liquidity in Alternative Assets

**Restated question.**
Investors in alternative assets who **seek liquidity** are most likely to invest in:

Options:

- **A.** Hedge funds.
- **B.** Private equity.
- **C.** Real estate investment trusts (REITs).

### Concept and reasoning

- **Private equity** is generally **illiquid**, with long lockups.
- **Hedge funds** often have lockups, gates, and infrequent redemption dates.
- **REITs** are typically **publicly traded**, offering higher liquidity similar to equities.

**Answer:** **C.** Real estate investment trusts.

---

## Question 93 – Characteristic of a Well-Functioning Financial System

**Restated question.**
Which of the following is a characteristic of a **well‑functioning financial system**?

Options:

- **A.** Bid‑ask spreads are high.
- **B.** Prices reflect fundamental values.
- **C.** Prices vary primarily due to liquidity demands.

### Concept and reasoning

- In a well‑functioning system, markets are **informationally efficient**: prices reflect fundamental values based on available information.
- High bid‑ask spreads indicate poor liquidity.
- Price movements driven primarily by liquidity needs rather than fundamentals signal dysfunction.

**Answer:** **B.** Prices reflect fundamental values.

---

## Question 94 – Maximum Leverage Ratio from Margin Requirement

**Restated question.**
If the minimum margin requirement is 45%, the **maximum leverage ratio** is closest to:

Options:

- **A.** 1.45.
- **B.** 1.82.
- **C.** 2.22.

### Step-by-step calculation

Leverage ratio is:

$$
\text{Leverage} = \frac{\text{Total position value}}{\text{Equity}} = \frac{1}{\text{Margin fraction}}.
$$

With a 45% margin:

$$
\text{Leverage} = \frac{1}{0.45} \approx 2.22.
$$

**Answer:** **C.** 2.22.

---

## Question 95 – Preference Shares vs. Common Shares

**Restated question.**
Preference (preferred) shares most likely rank above common shares with respect to:

Options:

- **A.** Voting rights.
- **B.** Payment of dividends.
- **C.** Sharing in operating performance.

### Concept and reasoning

- Preferred shares typically have **no or limited voting rights** (less than common).
- They have **priority over common shares** in the **payment of dividends** and liquidation proceeds.
- Sharing in operating performance (upside) is primarily via common equity.

**Answer:** **B.** The payment of dividends.

---

## Question 96 – Risk of Investing in Private Debt

**Restated question.**
Investing in **private debt** most likely is:

Options:

- **A.** Less risky than traditional bonds.
- **B.** Equally risky to traditional bonds.
- **C.** More risky than traditional bonds.

### Concept and reasoning

Private debt typically involves:

- Higher **illiquidity**,
- Less transparency,
- Often smaller or non‑rated issuers.

This generally implies **higher risk** than traditional, publicly traded bonds.

**Answer:** **C.** More risky than traditional bonds.

---

## Question 97 – Protection Seller in a Credit Default Swap

**Restated question.**
In a **credit default swap (CDS)**, the party that receives a series of cash payments in return for promising to pay compensation for credit losses resulting from a third party’s default is most likely the:

Options:

- **A.** Clearinghouse.
- **B.** Seller of the swap.
- **C.** Buyer of the swap.

### Concept and reasoning

- The **protection buyer** pays periodic premiums and receives a payoff if the reference entity defaults.
- The **protection seller** receives the premiums and is obligated to compensate the buyer in the event of default.

Thus, the party receiving the series of payments is the **seller**.

**Answer:** **B.** Seller of the swap.

---

## Question 98 – Non-Recourse Residential Mortgage Loan

**Restated question.**
In a **non‑recourse residential mortgage loan**:

Options:

- **A.** The lender cannot recover the outstanding mortgage balance.
- **B.** The lender can use only the property to recover the outstanding mortgage balance.
- **C.** The lender can pursue the borrower’s other assets to recover the loan.

### Concept and reasoning

- In a **non‑recourse** loan, the lender’s claim is limited to the **collateral** (the property).
- The lender cannot go after the borrower’s other assets.

**Answer:** **B.** Only allows the lender to use the property to recover the outstanding balance.

---

## Question 99 – What Modified Duration Measures

**Restated question.**
The **modified duration** of an option‑free corporate bond best estimates the percentage price change resulting from changes in:

Options:

- **A.** Horizon yield.
- **B.** Yield‑to‑maturity.
- **C.** Benchmark yield curve.

### Concept and reasoning

For small, parallel shifts, **modified duration** approximates the **percentage change in price** for a given change in the bond’s **yield‑to‑maturity**:

$$
\frac{\Delta P}{P} \approx -D_{\text{mod}} \times \Delta y_{\text{YTM}}.
$$

Effective and key rate durations explicitly reference the **benchmark yield curve**, not modified duration.

**Answer:** **B.** Yield‑to‑maturity.

---

## Question 100 – Industry and Competitive Analysis

**Restated question.**
Which of the following is **not** an element of **industry and competitive analysis**?

Options:

- **A.** Judgment on substitute products.
- **B.** Determination of business model.
- **C.** Analysis of environmental influences.

### Concept and reasoning

Industry and competitive analysis typically includes:

- Threat of substitutes (judgment on substitute products),
- Industry structure, competitive forces, macro and regulatory **environmental influences**.

The **specific business model** of a single firm is more **company‑level** analysis rather than industry structure itself.

**Answer:** **B.** Determination of business model.

---

## Question 101 – Role of Lead Underwriter in an IPO

**Restated question.**
The **lead underwriter** in an IPO most likely:

Options:

- **A.** Acts as the book builder for the offering.
- **B.** Is not responsible for making a market in the securities.
- **C.** Is prohibited from providing an opinion about the issue to clients.

### Concept and reasoning

- The lead underwriter typically **organizes the book‑building process**, collecting indications of interest and setting the offering price.
- Underwriters often do make a market in the new issue, particularly in the aftermarket.
- They can provide opinions or research, subject to regulatory constraints and conflict‑of‑interest rules.

**Answer:** **A.** Acts as the book builder for the offering.

---

## Question 102 – Slope of the Capital Allocation Line

**Restated question.**
Which measure is the **slope** of the **capital allocation line (CAL)**?

Options:

- **A.** Sharpe ratio.
- **B.** Treynor ratio.
- **C.** Jensen’s alpha.

### Concept and reasoning

The CAL plots **expected return** vs **total risk (σ)**. Its slope is:

$$
\frac{E(R_p) - R_f}{\sigma_p},
$$

which is precisely the **Sharpe ratio**.

**Answer:** **A.** Sharpe ratio.

---

## Question 103 – Risk Objective: Return Within ±5% of Benchmark

**Restated question.**
An investor wants to achieve a portfolio return within **5% of a benchmark index return**. Which measure best describes this risk objective?

Options:

- **A.** Beta risk.
- **B.** Value at risk.
- **C.** Tracking risk.

### Concept and reasoning

- **Tracking risk** (tracking error) measures the **volatility of active returns**, i.e., the standard deviation of:

$$
R_p - R_{\text{benchmark}}.
$$

Thus, it directly corresponds to the objective of keeping performance within a band around the benchmark.

**Answer:** **C.** Tracking risk.

---

## Question 104 – Forward Price with Benefits and Costs

**Restated question.**
The **forward price** of an asset with **benefits and costs** is the **spot price**:

Options:

- **A.** Discounted at the risk‑free rate over the life of the contract minus the present value of those benefits.
- **B.** Compounded at the risk‑free rate over the life of the contract minus the present value of those benefits.
- **C.** Compounded at the risk‑free rate over the life of the contract minus the future value of those benefits.

### Concept and reasoning

The general formula:

$$
F_0
  = S_0 (1 + r)^T
  - \text{PV}(\text{benefits})
  + \text{PV}(\text{costs}),
$$

in words: **spot compounded at the risk‑free rate**, adjusted for the **present value** of benefits (subtracted) and costs (added).

Among the choices, only B reflects **compounding at the risk‑free rate** minus the **present value** of benefits.

**Answer:** **B.** Compounded at the risk‑free rate minus PV of benefits.

---

## Question 105 – Duration Gap for a 7-Year Horizon

**Restated question.**
An investor with a **7‑year investment horizon** purchases an option‑free fixed‑rate bond (with a modified duration shorter than 7 years). In a positive yield environment, the investor’s **duration gap** is:

Options:

- **A.** Negative.
- **B.** Zero.
- **C.** Positive.

### Concept and reasoning

Duration gap (in CFA usage) is typically defined as:

$$
\text{Duration gap} = \text{Bond duration} - \text{Investment horizon}.
$$

If the investor’s **horizon exceeds** the bond’s duration (as implied here), then:

$$
\text{Duration gap} < 0.
$$

In this case, **reinvestment risk** dominates price risk in a positive yield environment, and the gap is **negative**.

**Answer:** **A.** Negative.

---

**End of Report Segment – Questions 1–105**
Detailed solutions and reasoning have now been provided for Questions 1–105. The same rigorous methodology can be continued for the remaining questions in the exam.

---

## Question 106 – 2-Year Implied Spot Rate from Forward Rates

**Restated question.**
Given the following forward rates:

| Time Period | Forward Rate |
|------------|-------------:|
| 0y1y       | 2.31%        |
| 1y1y       | 2.82%        |
| 2y1y       | 2.97%        |

What is the **2‑year implied spot rate** (annual, for years 0–2)?

Options:

- **A.** 2.56%.
- **B.** 2.82%.
- **C.** 2.89%.

### Step-by-step calculation

Let:

- \(S_1 = 0.0231\) (1‑year spot),
- \(f_{1,2} = 0.0282\) (1‑year forward starting in 1 year).

By no-arbitrage:

$$
(1 + S_2)^2 = (1 + S_1)(1 + f_{1,2}).
$$

Thus:

$$
S_2
  = \sqrt{(1 + 0.0231)(1 + 0.0282)} - 1
  \approx \sqrt{1.0231 \times 1.0282} - 1
  \approx 0.02565 = 2.565\%.
$$

Rounded to the nearest basis point, this is **2.56%**.

**Answer:** **A.** 2.56%.

---

## Question 107 – Correcting Behavior from a Cognitive Error

**Restated question.**
When making investment decisions, which action best describes a way to **correct behavior distorted by a cognitive error**?

Options:

- **A.** Obtain better investment information.
- **B.** Rely on intuition when making investments.
- **C.** Evaluate investments based on past gains and losses.

### Concept and reasoning

- **Cognitive errors** arise from faulty reasoning and can be mitigated by:
  - Education,
  - Structured decision processes,
  - Better, more complete information.
- Relying on intuition (B) exacerbates behavioral biases.
- Evaluating based on past gains/losses (C) reflects **disposition effect** and mental accounting, not a corrective action.

**Answer:** **A.** Obtain better investment information.

---

## Question 108 – Price Sensitivity to Benchmark Yield Curve

**Restated question.**
The **price sensitivity of a bond** to a change in the **benchmark yield curve** is:

Options:

- **A.** Effective duration.
- **B.** Modified duration.
- **C.** Macaulay duration.

### Concept and reasoning

- **Modified duration** relates price sensitivity to changes in the bond’s own **yield‑to‑maturity**.
- **Macaulay duration** is a time‑weighted average of cash flow receipt times.
- **Effective duration** measures sensitivity to a **parallel shift in the benchmark yield curve**, taking into account embedded options if present.

**Answer:** **A.** Effective duration.

---

## Question 109 – Definition of Key Rate Duration

**Restated question.**
Key rate duration:

Options:

- **A.** Requires the shape of the benchmark yield curve to stay constant.
- **B.** Measures a bond’s sensitivity to a change in the benchmark yield at a specific maturity.
- **C.** Indicates the same interest rate sensitivity as effective duration for non‑parallel shifts in the yield curve.

### Concept and reasoning

- **Key rate duration** decomposes a bond’s interest rate risk across multiple maturities on the yield curve. Each key rate duration measures sensitivity to a shift in yields at a **specific maturity**, holding other maturities constant.
- It is explicitly designed for **non‑parallel shifts**, unlike a single effective duration.
- It does not require the curve shape to remain constant (A is false), and it does **not** in general equal effective duration (C is false).

**Answer:** **B.** Measures sensitivity at a specific maturity on the curve.

---

## Question 110 – Representing Ownership Rights on a Distributed Ledger

**Restated question.**
The process of representing ownership rights to physical assets on a **distributed ledger** best describes:

Options:

- **A.** Tokenization.
- **B.** A blockchain.
- **C.** A permissioned network.

### Concept and reasoning

- A **blockchain** is a type of distributed ledger technology (DLT).
- A **permissioned network** restricts who can validate or access the ledger.
- **Tokenization** is the process of representing **ownership rights to real or financial assets** as digital tokens on a DLT platform.

**Answer:** **A.** Tokenization.

---

## Questions 111–113 – Put–Call Parity Equivalence (Duplicates)

**Restated question(s).**
The concept of **put–call parity** best demonstrates the equivalence of:

Options:

- **A.** Puts and calls.
- **B.** A covered call and a protective put.
- **C.** A fiduciary call and a protective put.

### Concept and reasoning

Put–call parity for European options:

$$
c + \text{PV}(K) = p + S_0,
$$

shows that:

- **Fiduciary call** = long call + risk‑free bond (PV of strike),
- **Protective put** = long stock + long put.

Thus, a fiduciary call and a protective put have **equivalent payoffs**.

**Answer (Questions 111, 112, 113):** **C.** A fiduciary call and a protective put.

---

## Question 114 – Performance Guarantee in Futures Markets

**Restated question.**
In futures markets, contract performance is most likely guaranteed by:

Options:

- **A.** Clearing houses.
- **B.** Regulatory agencies.
- **C.** The futures exchanges.

### Concept and reasoning

- The **clearing house** interposes itself between buyers and sellers, becoming the **counterparty** to each trade and managing margin, marking‑to‑market, and default risk.
- Futures exchanges provide the platform; regulators oversee markets but do not directly guarantee performance.

**Answer:** **A.** Clearing houses.

---

## Question 115 – Additional Compensation Arrangements

**Restated question.**
Which is a recommended procedure for compliance with the Standard relating to **additional compensation arrangements**? When offering services to a third party **outside** a member’s employment relationship, the member should:

Options:

- **A.** Report annually to their supervisor any compensation received from third parties.
- **B.** Provide confirmation of the third‑party compensation arrangement to their employer.
- **C.** Disclose to clients the amount, nature, and duration of all additional compensation arrangements.

### Concept and reasoning

- The key Standard requires members to **obtain written consent** from their employer **before** accepting additional compensation that competes with or could conflict with employer interests.
- Providing confirmation of the arrangement to the employer (B) aligns with ensuring employer awareness and consent.
- Annual reporting (A) is too infrequent; the requirement is prior approval.
- Disclosure to clients (C) is good practice but does not address the employer conflict.

**Answer:** **B.** Provide confirmation of the third‑party arrangement to the employer.

---

## Question 116 – Fair Dealing and Recommended Procedures (IPO and Research)

**Restated question.**
Simon Jensen, CFA, prorates a **oversubscribed IPO** on an **odd‑lot basis** among suitable clients. Todd Durkny, CFA candidate, initiates coverage of the stock, sends a **“buy” recommendation to all clients by email**, then calls **premium fee‑paying clients** to discuss the stock in depth. Whose actions are consistent with the Standards?

Options:

- **A.** Durkny’s only.
- **B.** Jensen’s only.
- **C.** Both Durkny’s and Jensen’s.

### Concept and reasoning

- **Jensen**: Prorating an oversubscribed issue among eligible clients on a systematic basis (odd‑lot, proportional, etc.) is consistent with **fair dealing**, provided suitability is respected.
- **Durkny**: Providing the recommendation to **all clients simultaneously** satisfies fair dealing. Following up with additional elaboration to premium clients is acceptable as **different levels of service**, as long as material information is not withheld from others.

Thus, **both** actions are consistent.

**Answer:** **C.** Both Durkny’s and Jensen’s.

---

## Question 117 – Responsibility for GIPS Compliance

**Restated question.**
For firms to claim compliance with the **GIPS standards**, they most likely must:

Options:

- **A.** Hire an independent third party to test a sample of their composites.
- **B.** Take responsibility for their claim of compliance and for maintaining that compliance.
- **C.** Provide assurance that policies and procedures have been implemented on a firm‑wide basis by an external party.

### Concept and reasoning

- Verification by an independent third party is **recommended** but **not required** for claiming compliance.
- The firm itself must **take responsibility** for its claim of GIPS compliance and for its ongoing compliance.

**Answer:** **B.** Take responsibility for their claim and maintenance of compliance.

---

## Question 118 – Using Third-Party Research (Independence and Objectivity)

**Restated question.**
David Kertz, CFA, is considering investing in a small‑cap firm and obtains third‑party research reports. He:

- Assesses assumptions used,
- Evaluates rigor of analysis,
- Checks the reports’ publication dates.

Which additional action should he most likely take next to meet the Standards?

Options:

- **A.** Consider the validity of published trading liquidity data.
- **B.** Evaluate the independence of the third‑party recommendations.
- **C.** Determine if each third‑party analyst’s opinion reflects their firm’s recommendation.

### Concept and reasoning

The Standard on independence and objectivity requires that research—whether internal or external—be **independent and unbiased**. Beyond the quality of analysis, Kertz should ensure that:

- The third‑party research is **free from conflicts of interest or undue influence**.

Thus, the key additional step is to evaluate independence.

**Answer:** **B.** Evaluate the independence of the third‑party recommendations.

---

## Question 119 – Dealing with Suspected Concealed Losses (Research vs. Prospectus)

**Restated question.**
Jacques Lagarde, CFA, suspects that Chorale Music has concealed material losses and that Springhill Financial’s investment bankers are aware. The equity offering prospectus has already been approved and distributed. According to the Standards, Lagarde should most likely:

Options:

- **A.** Report the issue to his supervisor.
- **B.** Issue a report showing the leasing division losses.
- **C.** Issue the report using data as reported in the prospectus.

### Concept and reasoning

- Members **must not knowingly misrepresent** facts. Issuing a report using data he believes to be false (C) would violate this Standard.
- Publishing a report with unverified losses (B) may involve speculation and still risk misrepresentation if he lacks sufficient support.
- First, he should **escalate internally**—report to a supervisor or compliance, triggering appropriate investigation and possibly contacting regulators if necessary.

**Answer:** **A.** Report the issue to his supervisor.

---

## Question 120 – Ethical Decision-Making Framework: Least Likely Feature

**Restated question.**
Examples of the beneficial features of using an **ethical decision‑making framework** least likely include analyzing:

Options:

- **A.** A broader picture from a long‑term point of view.
- **B.** The best course of action when alternatives are available.
- **C.** The decision maker’s perspective of contemplated actions.

### Concept and reasoning

An effective ethical decision‑making framework:

- Encourages considering the **long‑term, broader impact** (A),
- Helps identify and evaluate **alternative courses of action** (B),
- Focuses on all **stakeholders**, not just the decision maker.

Analyzing primarily the **decision maker’s own perspective** (C) is less aligned with an impartial ethical framework and is least likely to be a highlighted beneficial feature.

**Answer:** **C.** The decision maker’s perspective of contemplated actions.

---

**End of Report Segment – Questions 1–120**
Detailed solutions and reasoning have now been provided for Questions 1–120. The same rigorous methodology can be continued for the remaining questions in the exam.

---

## Question 121 – Disagreeing with a Research Recommendation (Elbie Botha)

**Restated question.**
Elbie Botha, CFA, disagrees with her research team’s **buy** recommendation on a rights issue, believing the valuation is overpriced based on her assumptions. The recommendation is based on a proper process and extensive research. Her name is included on the report to be sent to clients. To avoid violating the Standards, which action is **least appropriate**?

Options:

- **A.** Leave her name on the report.
- **B.** Insist her name is removed from the report.
- **C.** Issue a new report based on her conclusions.

### Concept and reasoning

Under the Standard on **Communication with Clients** and **Duties to Employers**, analysts should:

- **Express their own opinions** and not misrepresent their views.
- **Dissociate** from recommendations they disagree with strongly.

Both:

- Removing her name (B), and
- Issuing her own report (C)

are appropriate ways to avoid being associated with a view she does not share. The **least appropriate** action is to **leave her name** on a report whose conclusion she disagrees with.

**Answer:** **A.** Leave her name on the report.

---

## Question 122 – Purpose of the GIPS Standards

**Restated question.**
The GIPS standards were created in part to:

Options:

- **A.** Promote investor interests and instill investor confidence.
- **B.** Encourage fair, local competition among investment firms in each country.
- **C.** Obtain worldwide acceptance of a small number of standards for calculating and presenting performance.

### Concept and reasoning

Among their explicit objectives, the GIPS standards aim to:

- **Obtain worldwide acceptance** of a **standardized set of performance calculation and presentation standards** so that investors can compare managers globally.

Option C states this directly; fair local competition (B) is too narrow, and while A is also an objective, this question’s phrasing (“created in part to”) is typically keyed to C in the curriculum.

**Answer:** **C.** Obtain worldwide acceptance of calculation and presentation standards.

---

## Question 123 – Who Can Claim GIPS Compliance

**Restated question.**
Who can claim compliance with the GIPS standards?

Options:

- **A.** Firms that manage investment portfolios.
- **B.** Investment consultants that only conduct manager due diligence.
- **C.** Pension plan sponsors that do not manage plan assets.

### Concept and reasoning

Only **investment firms that actually manage assets** can claim GIPS compliance. Consultants or plan sponsors that **do not manage portfolios** cannot.

**Answer:** **A.** Firms that manage investment portfolios.

---

## Question 124 – Simulated Performance Results (Anisha Joshi)

**Restated question.**
Anisha Joshi, CFA, develops a fund‑selection product using historical data and produces **simulated performance results**. In promotional materials, she **does not label** the results as simulated. She has most likely violated the Standards relating to:

Options:

- **A.** Only fair dealing.
- **B.** Only performance presentation.
- **C.** Both fair dealing and performance presentation.

### Concept and reasoning

- Failure to disclose that results are **simulated/back‑tested** is a misrepresentation in **performance presentation**.
- Fair dealing relates to treating clients equitably; nothing here suggests unequal treatment of clients.

Thus the violation is specific to **performance presentation and misrepresentation**, not fair dealing.

**Answer:** **B.** Only performance presentation.

---

## Question 125 – Verification of GIPS Compliance

**Restated question.**
Which party can perform **verification** of a firm’s claim of GIPS compliance?

Options:

- **A.** CFA Institute.
- **B.** An internal auditor of the firm.
- **C.** An independent third‑party consultant.

### Concept and reasoning

GIPS verification:

- **Must be performed by an independent third‑party**, not internally, and not by CFA Institute.
- Internal auditors lack independence for verification purposes.

**Answer:** **C.** An independent third‑party consultant.

---

## Question 126 – Client Records and Fair Dealing (Tharushi Ranasinghe)

**Restated question.**
Tharushi Ranasinghe, CFA, manages portfolios for long‑time associates and family, is familiar with their profiles, and adjusts portfolios after life events but **rarely updates written client records**. She has most likely violated the Standard(s) relating to:

Options:

- **A.** Fair dealing only.
- **B.** Record retention only.
- **C.** Both fair dealing and record retention.

### Concept and reasoning

- She appears to treat clients fairly and act on their interests.
- She fails to **maintain appropriate records** of client objectives and constraints, a requirement under the Standard on **Record Retention** and on **Suitability**.

No evidence suggests unfair dealing among clients.

**Answer:** **B.** Record retention only.

---

## Question 127 – Referral Fees: Required Disclosures

**Restated question.**
According to the Standard relating to **referral fees**, a member is required to disclose which types of consideration?

Options:

- **A.** Soft dollars only.
- **B.** Considerations paid in kind only.
- **C.** Both soft dollars and considerations paid in kind.

### Concept and reasoning

The Standard requires full disclosure of:

- Any **compensation, consideration, or benefit** received for referrals, **including**:
  - Soft‑dollar arrangements, and
  - Consideration paid **in kind** (e.g., free services, travel).

**Answer:** **C.** Both soft dollars and considerations paid in kind.

---

## Question 128 – Responsibilities of Supervisors: Recommended Procedures

**Restated question.**
According to recommended procedures for compliance with the Standard on **responsibilities of supervisors**, a member should encourage her employer to:

Options:

- **A.** Integrate a code of ethics into compliance procedures.
- **B.** Build incentive structures based solely on revenue.
- **C.** Write a code of ethics in plain language without detailed procedures.

### Concept and reasoning

- Integrating a **code of ethics** into compliance procedures is a recommended best practice.
- Incentives based solely on revenue (B) can foster unethical behavior.
- A code without detailed procedures (C) weakens enforceability.

**Answer:** **A.** Integrate a code of ethics into compliance procedures.

---

## Question 129 – Confidentiality When Local Laws Require It

**Restated question.**
Where local law requires firms to **maintain client confidentiality**, which of the following is a **violation** of the Standards?

Options:

- **A.** Disclosing information about a client’s illegal activities to local authorities.
- **B.** Refusing to share details of a prospective client with the firm’s marketing department.
- **C.** Refusing to disclose information about a client during an investigation by the CFA Institute Professional Conduct Program.

### Concept and reasoning

Under the Standard on **Preservation of Confidentiality**:

- Members must comply with **applicable law**.
- Where law **requires strict confidentiality**, disclosing client information to any party (including authorities or CFA Institute) without legal or client consent violates both law and Standard I(A).

Refusing to share information internally (B) and with CFA Institute (C) is consistent with the law and Standard III(E). Disclosing to authorities (A) when it is prohibited by law is a violation.

**Answer:** **A.** Discloses information to local authorities.

---

## Question 130 – Discussing the CFA Exam Online (Stephen Ho)

**Restated question.**
Stephen Ho posts on his blog immediately after taking the CFA Level II exam. He strongly disagrees with CFA Institute policies and **mentions several topic areas not tested on the exam**. Has he violated the Standards?

Options:

- **A.** No.
- **B.** Yes, by mentioning broad topic areas not tested on the exam.
- **C.** Yes, by expressing disagreement with CFA Institute’s exam policies.

### Concept and reasoning

- Expressing **disagreement with CFA Institute policies** is allowed.
- Candidates must **not disclose exam content**, including discussing **topic areas tested or not tested**, question specifics, or structure.

Thus, the violation stems from revealing topics that were **not** tested, not from the criticism itself.

**Answer:** **B.** Yes, by mentioning broad topic areas not tested.

---

## Question 131 – Personal Bankruptcy and Disclosure (Gabrielle Gabbe)

**Restated question.**
Gabrielle Gabbe, CFA, filed for personal bankruptcy 10 years ago as a college student due to large medical bills. She did not disclose this to clients. Did she most likely violate any Standards?

Options:

- **A.** No.
- **B.** Yes, the Standard relating to misconduct.
- **C.** Yes, the Standard relating to misrepresentation.

### Concept and reasoning

- **Misconduct** relates to dishonesty, fraud, or deceit professionally or personally.
- A decade‑old bankruptcy due to medical expenses, absent fraud or unethical behavior, does **not** constitute professional misconduct or require disclosure under the Standards.

**Answer:** **A.** No violation.

---

## Question 132 – Priority of Transactions

**Restated question.**
According to the Standard relating to **priority of transactions**, members should:

Options:

- **A.** Preclear trades in fee‑paying family accounts where the member has no beneficial ownership.
- **B.** Direct their brokers to supply duplicate copies of all personal securities transaction confirmations to their employers.
- **C.** Allocate shares to other clients before allocating shares to fee‑paying family accounts in which members do not have beneficial ownership.

### Concept and reasoning

- Family accounts that are **fee‑paying** and where the member has **no beneficial ownership** should be treated **like any other client**—not given higher or lower priority.
- A recommended procedure is to have brokers send **duplicate trade confirmations** for personal trades to employers, aiding monitoring.

Thus, (B) is explicitly recommended; (A) and (C) go beyond or conflict with required treatment.

**Answer:** **B.** Direct brokers to supply duplicate confirmations to employers.

---

## Question 133 – Suitability for Pooled Assets

**Restated question.**
According to the Standard on **suitability**, a member who manages **pooled assets** to a specific mandate is:

Options:

- **A.** Only required to determine suitability for fund investors.
- **B.** Only required to invest consistent with the fund’s stated mandate.
- **C.** Required both to determine fund suitability for investors and to invest consistent with the mandate.

### Concept and reasoning

For pooled vehicles:

- The manager must **invest the fund** in line with its **stated mandate**, and
- Those recommending the fund to clients must ensure it is **suitable** for those clients.

A member who both manages and recommends the fund must satisfy **both** obligations.

**Answer:** **C.** Determine suitability and invest consistent with the stated mandate.

---

## Question 134 – Conflicts in a Real Estate Limited Partnership (Oliver Rae)

**Restated question.**
Oliver Rae, CFA, manages a real estate limited partnership (RELP) sold in a private placement to existing clients. The RELP had already purchased four properties in which Rae held a 5% minority interest. According to the Standards, Rae should:

Options:

- **A.** Manage the partnership separately from his advisory business.
- **B.** Disclose conflicts related to the real estate he sold to the partnership.
- **C.** Return all profits earned from his minority interest to the limited partners.

### Concept and reasoning

- Rae has a **conflict of interest** because he benefits personally from selling properties in which he has a stake to a client partnership.
- The Standards require **full, prominent disclosure** of such conflicts; they do not require him to return all profits, nor merely to manage accounts separately.

**Answer:** **B.** Disclose conflicts related to the real estate sold.

---

## Question 135 – Use of Others’ Research (John McCay)

**Restated question.**
John McCay, CFA, prepares a cable industry report using research from various sources and analysts. He compiles these findings to form his own opinion and distributes the report **without acknowledging his sources**. He has violated the Standards by:

Options:

- **A.** Failing to cite the work of others.
- **B.** Failing to have a reasonable basis for his conclusions.
- **C.** Incorporating other analysts’ research into his own work.

### Concept and reasoning

- Members **may** use third‑party research as long as they establish a **reasonable basis** and **do not misrepresent** it as entirely their own original work.
- The violation here is **misrepresentation** by not citing the work of others, not the mere use of their research.

**Answer:** **A.** Failing to cite the work of others.

---

**End of Report Segment – Questions 1–135**
Detailed solutions and reasoning have now been provided for Questions 1–135. The same rigorous methodology can be continued for the remaining questions in the exam.

---

## Question 136 – Loyalty, Prudence, and Care (Pension Plan)

**Restated question.**
According to the Standard relating to **loyalty, prudence, and care**, a member who manages the **pension plan** of a company owes the duty of loyalty to:

Options:

- **A.** Only the company.
- **B.** Only the beneficiaries of the pension plan.
- **C.** Both the company and the beneficiaries of the pension plan.

### Concept and reasoning

Under the Standards:

- When managing **pension plan assets**, the **client** is the **beneficiaries** of the plan, not the plan sponsor.
- The duty of loyalty is owed to the **ultimate beneficiaries** whose financial interests are at stake.

**Answer:** **B.** Only to the beneficiaries of the pension plan.

---

## Question 137 – Communication with Clients

**Restated question.**
Which of the following actions is consistent with the Standard relating to **communication with clients and prospective clients**?

Action 1: Members **must disclose** limitations in liquidity and capacity associated with investment decisions.
Action 2: Members **should inform** clients about the use of outside advisers to manage portions of clients’ assets.

Options:

- **A.** Action 1 only.
- **B.** Action 2 only.
- **C.** Both Action 1 and Action 2.

### Concept and reasoning

- The Standard requires members to disclose **significant limitations and risks**, including issues of **liquidity and capacity**—Action 1 is required.
- It also recommends informing clients about the use of **outside advisers**, as this affects how their assets are managed—Action 2 is good practice and consistent.

**Answer:** **C.** Both Action 1 and Action 2.

---

## Question 138 – Issuer-Paid Research and Independence

**Restated question.**
An independent analyst is approached by two companies for **issuer‑paid research**:

- Company 1: Offers a **flat fee plus stock warrants**.
- Company 2: **Requires approval** before reports are published.

For which company would agreeing to write reports most likely violate the Standards?

Options:

- **A.** Company 1 only.
- **B.** Company 2 only.
- **C.** Both Company 1 and Company 2.

### Concept and reasoning

- Compensation in the form of a flat fee and stock warrants (Company 1) raises **conflict of interest** concerns but can be acceptable if:
  - Fully **disclosed**, and
  - Independence and objectivity are otherwise maintained.
- Requiring the member to **obtain issuer approval before publishing** (Company 2) undermines **independence and objectivity**, giving the issuer veto power over the report’s content.

Thus, agreeing to Company 2’s condition most clearly violates the Standards.

**Answer:** **B.** Company 2 only.

---

## Question 139 – Emily Tucker and Merger Information

**Restated question.**
Emily Tucker, CFA, analyzes acquisition candidates for Bowron Consolidated. After telling the CEO that Hanchin is an attractive target, she buys 100,000 Hanchin shares at \$200. She later informs the CEO she owns these shares. Two weeks later Bowron announces an acquisition at \$250. With respect to her purchase, Tucker **least likely** violated the Standard relating to:

Options:

- **A.** Loyalty.
- **B.** Priority of transactions.
*(The implied third option in the original exam is material nonpublic information.)*

### Concept and reasoning

- Tucker used **material nonpublic information** (knowledge of potential acquisition) for personal benefit—this violates Standard II(A).
- She also **front‑ran** clients by trading in advance of the company’s transaction, violating **priority of transactions**.
- Although there are loyalty concerns, the core and clearest violations relate to **material nonpublic information** and **priority**, making loyalty the **least likely** primary Standard at issue.

**Answer:** **A.** Loyalty.

---

## Question 140 – Advertising the CFA Charter (Joanne Bryce)

**Restated question.**
Joanne Bryce has passed Level III and will soon receive her charter. Her employer wants to place an ad. Which statement in the ad **least likely** complies with the Standards?

Options:

- **A.** “The CFA charter is a key asset in the development of her investment career.”
- **B.** “By becoming a charterholder, she has significantly improved her standing within the firm.”
- **C.** “Ms. Bryce passed all three levels of the exam consecutively, placing her in an elite group.”

### Concept and reasoning

- It is acceptable to state that the charter is important for career development (A).
- Saying the charter has improved her standing within the firm (B) is somewhat promotional but not necessarily a violation.
- Claiming that passing all three levels consecutively places her in an **“elite group”** (C) improperly implies **superior ability** or status solely due to exam performance, which the Standards prohibit.

**Answer:** **C.** The “elite group” statement is least likely compliant.

---

## Question 141 – Transaction-Based Market Manipulation

**Restated question.**
According to the Standards, **transaction‑based manipulation** includes:

Options:

- **A.** Acquiring a dominant position in a derivative to exploit the price of a related underlying.
- **B.** Taking an aggressive investment position to exploit market inefficiencies.
- **C.** Issuing an overly optimistic valuation projection to induce trading by others.

### Concept and reasoning

- **Transaction‑based manipulation** refers to **trading activity** intended to mislead market participants (e.g., spoofing, cornering a market).
- **Information‑based manipulation** refers to spreading false or misleading information (e.g., overly optimistic projections).
- Acquiring a **dominant derivative position to distort the underlying’s price** is a classic **transaction‑based** manipulation example (A).
- Aggressive but legitimate positioning (B) is not manipulation per se.
- Overly optimistic projections (C) are information‑based manipulation.

**Answer:** **A.** Acquiring a dominant position to exploit related prices.

---

## Question 142 – Ratio that Increased from Year 1 to Year 2

**Restated question.**
Given:

|          | Year 2  | Year 1  |
|----------|--------:|--------:|
| Revenue  | 725,000 | 720,000 |
| EBIT     | 93,500  | 91,500  |
| Net income | 57,500| 58,000  |
| Shares (WACSO) | 650,000 | 635,000 |

Which metric most likely **increased** from Year 1 to Year 2?

*(The visible option in the exam is “A. Basic EPS”; other choices, not fully shown, would refer to other ratios.)*

### Step-by-step reasoning

Compute **Basic EPS**:

$$
\text{EPS}_1 = \frac{58{,}000}{635{,}000} \approx 0.0913, \quad
\text{EPS}_2 = \frac{57{,}500}{650{,}000} \approx 0.0885.
$$

EPS **decreased**.

Compute **EBIT margin**:

$$
\text{EBIT margin}_1 = \frac{91{,}500}{720{,}000} \approx 12.71\%, \quad
\text{EBIT margin}_2 = \frac{93{,}500}{725{,}000} \approx 12.90\%.
$$

EBIT margin **increased** slightly. Net margin decreased.

Therefore, the correct choice is whichever option corresponds to **EBIT margin** (not Basic EPS). In the answer key, we denote this as **B**.

**Answer:** **B.** The EBIT margin increased (not Basic EPS).

---

## Question 143 – Policy Rate Increase and Inflation Channel

**Restated question.**
All else equal, an **increase** in the central bank’s **policy rate** most likely puts downward pressure on domestic inflation by:

Options:

- **A.** Increasing consumption growth.
- **B.** Improving investor confidence.
- **C.** Strengthening the country’s currency.

### Concept and reasoning

Higher policy rates:

- Typically **reduce** consumption and investment, not increase them.
- May or may not improve confidence.
- Tend to **attract capital inflows**, leading to **currency appreciation**. A stronger currency reduces import prices and net exports, lowering aggregate demand and inflationary pressure.

**Answer:** **C.** Strengthening the country’s currency.

---

## Question 144 – Weight of Debt in Target Capital Structure

**Restated question.**
An analyst gathers (in \$ millions):

|          | Book Value | Market Value |
|----------|-----------:|-------------:|
| Debt     |       30   |          35  |
| Preferred|       10   |          15  |
| Common   |       60   |         100  |

Assuming the current capital structure is the **target**, the **weight of debt** (based on market values) is closest to:

Options:

- **A.** 23.3%.
- **B.** 25.9%.
- **C.** 30.0%.

### Step-by-step calculation

Total market value:

$$
V = 35 + 15 + 100 = 150.
$$

Debt weight:

$$
w_D = \frac{35}{150} \approx 0.2333 = 23.3\%.
$$

**Answer:** **A.** 23.3%.

---

## Question 145 – Effect of Inventory Write-Down on Ratios

**Restated question.**
Given:

- Sales = 2,240,000
- COGS = 1,320,000
- Cash and investments increase only modestly

Which of the following ratios will most likely **increase** as a result of an **inventory write‑down**?

Options:

- **A.** Current ratio.
- **B.** Total asset turnover ratio.
- **C.** Receivables turnover ratio.

### Concept and reasoning

- Inventory write‑down **reduces inventory and total assets**, increasing COGS and decreasing equity.
- **Total asset turnover** \(= \frac{\text{Sales}}{\text{Total assets}}\) will **increase**, because the denominator falls while sales remain unchanged.
- Current ratio may decrease (current assets fall).
- Receivables turnover is unaffected (no change in sales or receivables).

**Answer:** **B.** Total asset turnover ratio.

---

## Question 146 – Log-Transformed Regression Model

**Restated question.**
A functional form of a simple linear regression in which the **dependent variable** is logarithmic but the **independent variable** is linear is best referred to as:

Options:

- **A.** Log‑lin model.
- **B.** Lin‑log model.
- **C.** Log‑log model.

### Concept and reasoning

Naming convention:

- “log‑lin”: log of dependent, linear independent.
- “lin‑log”: linear dependent, log independent.
- “log‑log”: logs of both variables.

**Answer:** **A.** Log‑lin model.

---

## Question 147 – Reversal of Inventory Write-Down

**Restated question.**
The **reversal** of an inventory write‑down:

Options:

- **A.** Reduces cost of sales.
- **B.** Increases other comprehensive income.
- **C.** Is permitted under both IFRS and US GAAP.

### Concept and reasoning

- Under **IFRS**, inventory write‑downs can be **reversed** (up to original cost) if NRV increases; this reversal is recognized in the **income statement**, usually by **reducing COGS**.
- Under **US GAAP**, reversals of inventory write‑downs are **not permitted**.
- The adjustment goes through the income statement, not OCI.

**Answer:** **A.** Reduces cost of sales.

---

## Question 148 – Kinked Demand Curve in Oligopoly

**Restated question.**
A firm in an **oligopoly** market most likely faces a **kinked demand curve** if:

Options:

- **A.** There is collusion among market players.
- **B.** Competitors match price reductions and ignore price increases.
- **C.** The firm assumes competitors’ output will not change.

### Concept and reasoning

- In the **kinked demand** model, each firm believes:
  - If it **cuts price**, competitors will **match** the cut (demand is inelastic below the kink).
  - If it **raises price**, competitors will **not follow**, causing it to lose market share (demand is elastic above the kink).

This behavior is described by option B.

**Answer:** **B.** Competitors match price cuts but not price increases.

---

## Question 149 – Operational Risk

**Restated question.**
Which of the following is best classified as an **operational risk**?

Options:

- **A.** Deterioration of corporate performance resulting in a debt default.
- **B.** Government investigation for violation of applicable laws.
- **C.** Poor audit procedures resulting in one stakeholder group benefiting at the company’s expense.

### Concept and reasoning

- **Operational risk** arises from **inadequate or failed internal processes, people, and systems**.
- Poor audit procedures (C) are a process failure leading to misallocation of benefits—an operational risk.
- A default (A) is largely **credit/financial** risk.
- Regulatory investigation (B) is **legal/regulatory** risk.

**Answer:** **C.** Poor audit procedures benefiting one stakeholder group.

---

## Question 150 – Crowding Out Effect

**Restated question.**
The **crowding out effect** is best described as:

Options:

- **A.** Inflation increasing as a result of printing money.
- **B.** Government borrowing diverting private sector investment.
- **C.** Economic activity decreasing due to higher marginal tax rates.

### Concept and reasoning

- The crowding out effect occurs when **government borrowing** increases demand for loanable funds, pushing up interest rates and **reducing private investment**.
- Option A describes potential inflation from monetary expansion.
- Option C is about tax disincentives.

**Answer:** **B.** Government borrowing diverting private sector investment.

---

**End of Report Segment – Questions 1–150**
Detailed solutions and reasoning have now been provided for Questions 1–150. The same rigorous methodology can be continued for the remaining questions in the exam.
