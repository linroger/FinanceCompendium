---
title: Insurance Companies
parent_directory: Part 04 Other Financial Institutions
formatted: 2025-12-21 11:15:00 AM
formatter_model: claude-sonnet-4
cli-tool: opencode
primary_tags:
  - insurance industry overview
  - life insurance companies
  - property casualty insurance
secondary_tags:
  - insurance regulation
  - insurance balance sheets
  - global insurance trends
  - adverse selection problem
  - underwriting risk
  - reinsurance markets
cssclasses: academia
---

# Insurance Companies

## Learning Goals

LG 15-1 Describe the two types of insurance companies.

LG 15-2 Review the four basic lines of business performed by life insurance companies.

LG 15-3 Identify the major assets and liabilities of life insurance companies.

LG 15-4 Classify the major regulations governing life insurance companies.

LG 15-5 Analyze the major lines of business performed by property-casualty insurance companies.

LG 15-6 Identify the main asset and liability items on property-casualty insurance company balance sheets.

LG 15-7 Recognize the main regulators of property-casualty insurance companies.

LG 15-8 Describe the major trends occurring in the global insurance market.

## Two Categories of Insurance Companies: Chapter Overview

Life Insurance Companies

Size, Structure, and

Composition of the

Industry

Balance Sheets and

Recent Trends

Regulation

Property-Casualty Insurance

Companies

Size, Structure, and

Composition of the

Industry

Balance Sheets and

Recent Trends

Regulation

Global Issues

## Two Categories of Insurance Companies: Chapter Overview

Insurance services offered by financial institutions (FIs) compensate individuals and corporations (policyholders) if a prespecified adverse event occurs, in exchange for premiums paid to the insurer by the policyholder. The insurance provider can act either as an insurance underwriter or an insurance broker. An insurance underwriter assesses the risk of an applicant for coverage or for a policy. An insurance broker simply sells insurance contracts for coverage or for a policy. Thus, a broker acts more as an intermediary between the insurance underwriter and the applicant. Insurance services are classified into two major groups: (1) life and (2) property-casualty. Life insurance provides protection in the event of untimely death, illnesses, and retirement. Property-casualty insurance protects against personal injury and liability due to accidents, theft, fire, and other catastrophes. Many FIs (e.g., MetLife and Allstate) offer both life and property-casualty services. Further, many FIs that offer insurance services also sell a variety of investment products in a similar fashion to other financial service firms, such as mutual funds (Chapter 17) and commercial banks (Chapter 11).

```d2
direction: right

life: Life Insurance {
  shape: rectangle
  style.fill: "#e8f5e9"
  style.stroke: "#4caf50"
}

property_casualty: Property-Casualty Insurance {
  shape: rectangle
  style.fill: "#fff3e0"
  style.stroke: "#ff9800"
}

life -> property_casualty: Some FIs offer both types

death_protection: Death Protection {
  shape: oval
  style.fill: "#f3e5f5"
}

illness_protection: Illness & Retirement Protection {
  shape: oval
  style.fill: "#f3e5f5"
}

personal_liability: Personal Injury & Liability {
  shape: oval
  style.fill: "#fff8e1"
}

property_damage: Property Damage Protection {
  shape: oval
  style.fill: "#fff8e1"
}

life -> death_protection
life -> illness_protection
property_casualty -> personal_liability
property_casualty -> property_damage
```


LG 15-1

The 2008-2009 financial crisis showed just how much risk insurance companies can present to FIs and the global financial system. Specifically, as the subprime mortgage market began to fail in the summer of 2008, subprime mortgage pools that FIs bought ended up falling precipitously in value as defaults and foreclosures rose on the underlying mortgage pools. Many credit default swaps (CDSs) were written on these subprime mortgage securities, basically acting as insurance on the debt. As mortgage security losses started to rise, buyers of the CDS contracts wanted to be paid for these losses. Insurance company American International Group (AIG) was a major issuer of these CDS securities. When mortgage-backed securities started to fall in value, AIG had to make good on billions of dollars of credit default swaps. Soon it became clear that AIG was not going to be able to cover its credit default swap market losses. The result was a significant increase in the risk exposure of banks, investment banks, and insurance companies that had purchased AIG CDS insurance contracts. Indeed, the reason the federal government stepped in and bailed out AIG was that the insurer was a dominant player in the CDS market. Had AIG defaulted, every FI that had bought a CDS contract from the company would have suffered substantial losses.

This chapter discusses the main features of insurance companies by concentrating on (1) the size, structure, and composition of the industry in which they operate; (2) their balance sheets and recent trends; and (3) regulations. We also look at global competition and trends in this industry.

# LIFE INSURANCE COMPANIES

Life insurance allows individuals and their beneficiaries to protect against losses in income through premature death or retirement. By pooling risks, life insurance transfers income-related uncertainties from the insured individual to a group.

# Size, Structure, and Composition of the Industry

In 2018, the United States had approximately 740 life insurance companies, compared to over 2,300 in 1988. The aggregate assets of life insurance companies were $7.0 trillion in 2018, compared to $1.12 trillion in 1988. The 10 largest life insurers in terms of total assets (listed in Table 15-1) wrote 32.7 percent of the industry's over 606.2 billion new life insurance premiums in 2018. Although not to the extent seen in the banking industry, the life insurance industry has experienced major mergers in recent years (e.g., Anthem and Signa, Hartford Life and Mass Mutual, and Metlife and American Life Insurance) as competition within the industry and with other FIs has increased. Like consolidation in commercial banking, the consolidation of the insurance industry has mainly occurred to take advantage of economies of scale and scope and other synergies (see Chapter 11).

TABLE 15-1 Largest Life Insurers

<table><tr><td>Rank</td><td>Company or Group Name</td><td>Form of Ownership</td><td>2018 Assets ($ billions)</td><td>Separate Account Assets†</td><td>Net Premiums Written</td></tr><tr><td>1</td><td>Prudential of America Group</td><td>Stock</td><td>$577.9</td><td>$389.5</td><td>\$42.7</td></tr><tr><td>2</td><td>Metropolitan Life &amp; Affiliated Cos</td><td>Stock</td><td>409.6</td><td>129.5</td><td>35.1</td></tr><tr><td>3</td><td>New York Life Group</td><td>Mutual</td><td>324.7</td><td>48.9</td><td>29.3</td></tr><tr><td>4</td><td>TIAA Group*</td><td>Mutual</td><td>316.1</td><td>43.3</td><td>15.7</td></tr><tr><td>5</td><td>AIG Life &amp; Retirement Group</td><td>Stock</td><td>283.7</td><td>86.7</td><td>-8.5</td></tr><tr><td>6</td><td>Northwestern Mutual Group</td><td>Mutual</td><td>272.3</td><td>29.7</td><td>17.8</td></tr><tr><td>7</td><td>Lincoln Financial Group</td><td>Stock</td><td>256.5</td><td>136.3</td><td>12.1</td></tr><tr><td>8</td><td>Massachusetts Mutual Life Group</td><td>Mutual</td><td>254.9</td><td>70.4</td><td>23.2</td></tr><tr><td>9</td><td>John Hancock Life Insurance Group</td><td>Stock</td><td>247.6</td><td>140.0</td><td>7.6</td></tr><tr><td>10</td><td>Jackson National Group</td><td>Stock</td><td>237.0</td><td>163.3</td><td>23.2</td></tr></table>

* TIAA's assets are significantly understated. Most of its separate account assets are in its affiliate, CREF.
A "separate account" is a fund held by a life insurance company that is maintained separately from the insurer's general assets.
Source: Best's Review, May 2020, www.ambest.com

# adverse selection problem

The problem that customers who apply for insurance policies are more likely to be those most in need of coverage.

Life insurance allows individuals to protect themselves and their beneficiaries against the risk of loss of income in the event of death or retirement. By pooling the risks of individual customers, life insurance companies can diversify away some of the customer-specific risk and offer insurance services at a cost (premium) lower than any individual could achieve saving funds on his or her own. Thus, life insurance companies transfer income-related uncertainties such as those due to retirement from the individual to a group. Although life insurance may be their core activity area, modern life insurance companies also sell annuity contracts (primarily savings contracts that involve the liquidation of those funds saved over a period of time), manage pension plans (tax-deferred savings plans), and provide accident and health insurance. Figure 15-1 shows the distribution of premiums written for the various lines of insurance in 2018. We discuss these different activity lines below.

In return for insurance premiums, insurance companies accept or underwrite the risk that the prespecified event will occur. The major part of the insurance company underwriting process is deciding which requests for insurance (or risks) they should accept and which ones they should reject. Further, for those risks they accept, they must decide how much they should charge for the insurance. For example, an insurance company would not want to provide life insurance to someone with terminal cancer. Alternatively, the insurer may decide to insure a smoker but charge a higher premium than is charged to a nonsmoker. Further, an increased probability of a major pandemic, such as the possibility that the bird flu could mutate to become highly lethal to humans, might cause insurance companies to increase life and health insurance premiums charged to all insured groups. Thus, the underwriting process is critical to an insurance company's profitability and survival.

One problem faced by life insurance companies (as well as property-casualty insurers) is the adverse selection problem. Adverse selection is the problem that customers who apply for insurance policies are more likely to be those most in need of insurance (i.e., someone with chronic health problems is more likely to purchase a life insurance policy than someone in perfect health). Thus, in calculating the probability of having to pay out on an insurance contract and, in turn, determining the insurance premium to charge, insurance companies' use of health (and other) statistics representing the overall population may not be appropriate (since the insurance company's pool of customers is likely to be more prone to health problems than the overall population). Insurance companies deal with the adverse selection problem by establishing different pools of the population based on health and related characteristics (such as income). By altering the pool used to determine the probability of losses to a particular customer's health characteristics, the insurance company can more accurately determine the probability of having to pay out on a policy and can adjust the insurance premium accordingly.

Actuaries have traditionally worked in life insurance to reduce the risks associated with underwriting and selling life insurance. With traditional life insurance, actuarial science focuses on the analysis of mortality, the production of life tables, and the application of time value of money to produce life insurance, annuities, and endowment policies. In health insurance, actuarial science focuses on the analyses of rates of disability, morbidity, mortality, fertility, and other contingencies.

Figure 15-1 Distribution of Premiums Written on Various Life Insurance Lines

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/8d04a5ac-85cd-4263-9695-9d761733496f/86fa4fe9437920f238d3dc381b9601c15e2213153ca5375a3bfe59260845097e.jpg)

Source: American Council of Life Insurers, 2019 Life Insurers Factbook, www.acli.com

As the various types of insurance policies and services offered are described below, notice that some policies (such as universal life policies and annuities) provide not only insurance features but also savings components. For example, universal life policy payouts are a function of the interest earned on the investment of the policyholder's premiums. Similarly, annuities offer the policyholder a fixed or variable payment each period (generally monthly) for life or over some predetermined future horizon.

# LG 15-2

Life Insurance. The four basic classes or lines of life insurance are distinguished by the manner in which they are sold or marketed to purchasers. These classes are (1) ordinary life, (2) group life, (3) credit life, and (4) other activities. Of the 19.1 trillion life insurance policies in force in the United States, ordinary life accounts for 53.6 percent, group life for 45.6 percent, and credit life for less than 1 percent.

```d2
direction: down

ordinary_life: Ordinary Life\n(53.6%) {
  shape: hexagon
  style.fill: "#e3f2fd"
  style.stroke: "#2196f3"
}

group_life: Group Life\n(45.6%) {
  shape: hexagon
  style.fill: "#f3e5f5"
  style.stroke: "#9c27b0"
}

credit_life: Credit Life\n(<1%) {
  shape: hexagon
  style.fill: "#fff3e0"
  style.stroke: "#ff9800"
}

other_activities: Other Activities {
  shape: hexagon
  style.fill: "#e8f5e9"
  style.stroke: "#4caf50"
}

term_life: Term Life {
  shape: rectangle
}

whole_life: Whole Life {
  shape: rectangle
}

endowment_life: Endowment Life {
  shape: rectangle
}

variable_life: Variable Life {
  shape: rectangle
}

universal_life: Universal Life {
  shape: rectangle
}

ordinary_life -> term_life
ordinary_life -> whole_life
ordinary_life -> endowment_life
ordinary_life -> variable_life
ordinary_life -> universal_life

annuities: Annuities {
  shape: rectangle
}

pension_plans: Pension Plans {
  shape: rectangle
}

health_insurance: Health Insurance {
  shape: rectangle
}

other_activities -> annuities
other_activities -> pension_plans
other_activities -> health_insurance
```

Ordinary Life. Ordinary life insurance policies are marketed on an individual basis, usually in units of 1,000; policyholders make periodic premium payments in return for insurance coverage. Despite the enormous variety of contractual forms, there are essentially five basic contractual types. The first three are traditional forms of ordinary life insurance, and the last two are newer contracts that originated in the 1970s and 1980s when competition for savings from other segments of the financial services industry, such as mutual funds, increased. The three traditional contractual forms are term life, whole life, and endowment life. The two newer forms are variable life and universal life. The key features of each of these contractual forms are identified as follows:

- Term Life. This policy is the closest to pure life insurance; it has no savings element attached. Essentially, as long as premium payments are up to date, an individual's beneficiary receives a payout at the time of the individual's death during the coverage period. If the insured individual lives beyond the term of the contract, the contract expires along with any rights to benefits. The term of coverage can vary from as little as 1 year to 40 years or more.
Whole Life. This policy protects the individual over an entire lifetime rather than for a specified coverage period. In return for periodic or level premiums, the individual's beneficiaries receive the face value of the life insurance contract on death. Thus, if the policyholder continues premium payments, the insurance company is certain to make a payment—unlike term insurance, where a payment is made only if death occurs during the coverage period. In the early years of the contract, premiums are larger than those for term life contracts and in the later years they are smaller. The overpayment in the early years creates a cash value for whole life contracts that insured individuals can borrow against (at a stated rate paid to the insurance company).
- Endowment Life. This type of policy combines a pure (term) insurance element with a savings element. It guarantees a payout to the beneficiaries of the policy if death occurs during some endowment period (e.g., prior to reaching retirement age). An insured person who lives to the endowment date receives the face amount of the policy.
- Variable Life. Unlike traditional policies that promise to pay the insured the fixed or face amount of a policy should a contingency arise, variable life insurance invests fixed premium payments in mutual funds of stocks, bonds, and money market instruments. Usually, policyholders can choose mutual fund investments to reflect their risk preferences. Thus, variable life provides an alternative way to build savings compared to the more traditional policies such as whole life because the value of the policy increases (or decreases) with the asset returns of the mutual fund in which premiums are invested.

Universal Life and Variable Universal Life. A universal life policy allows the insured to change both the premium amounts and the maturity of the life insurance contract, unlike traditional policies that maintain premiums at a given level over a fixed contract period. In addition, for some contracts, insurers invest premiums in money, equity, or bond mutual funds—as in variable life insurance—so that the savings or investment component of the contract reflects market returns. In this case, the policy is called variable universal life.

# EXAMPLE 15-1 Differences in Various Types of Ordinary Life Insurance Contracts

An individual wants to purchase ordinary life insurance, but she is unsure of the differences between the various types of contracts. She contacts a local insurance agent to compare and contrast them. He summarizes them as follows:

Term Life: Contract expires, no savings (policyholder gets nothing if he or she is alive when the contract expires), beneficiary receives face value on death during contract period.

Whole Life: No expiration, beneficiary receives face value on death, policyholder can borrow against cash value of contract.

Endowment Life: Contract expires, policyholder gets face value of contract on expiration if still alive, beneficiary receives face value on death during contract period.

Variable Life: No expiration, premiums invested in mutual funds, beneficiary receives variable amount on death (a function of the return on the underlying investments).

Universal Life: No expiration, premiums can vary, premiums invested in mutual funds, beneficiary receives variable amount on death (a function of premiums invested and the return on the underlying investments).

Group Life Insurance. Group life insurance covers a large number of insured persons under a single policy. Usually issued to corporate employers, these policies may be either contributory (where both the employer and employee cover a share of the employee's cost of the insurance) or noncontributory (where the employee does not contribute to the cost of the insurance; rather the cost is paid entirely by the employer) for the employees themselves. The principal advantage of group life over ordinary life policies involves cost economies. These occur as the result of mass administration of plans, lower costs for evaluating individuals through medical screening and other rating systems, and reduced selling and commission costs.

Credit Life. Credit life insurance protects lenders against a borrower's death prior to the repayment of a debt contract such as a mortgage or car loan. Usually, the face amount of the insurance policy reflects the outstanding principal and interest on the loan. As mentioned above, credit life policies represent less than 1 percent of the total market. Their cost per unit of coverage is usually much higher than other methods of covering these liabilities in the event of unexpected death. Thus, they are a rarely used type of life insurance.

Other Life Insurer Activities. Three other major activities of life insurance companies are the sale of annuities, private pension plans, and accident and health insurance.

Annuities. Annuities represent the reverse of life insurance principles. While life insurance involves different contractual methods to build up a fund and the eventual payout of a lump sum to the beneficiary, annuities involve different methods of liquidating a fund over a long period of time, such as paying out a fund's proceeds to the beneficiary. As with life insurance contracts, many different types of annuity contracts have been developed. Specifically, they can be sold to an individual or group and on either a fixed or variable basis by being linked to the return on some underlying investment portfolio. Individuals can purchase annuities with a single payment or payments spread over a number of years. Life insurance and annuity products can be used to create a steady stream of cash disbursements and payments to avoid paying or receiving a single lump sum cash amount. That is, a life insurance policy (whole life or universal life) requires regular premium payments that entitle the beneficiary to the receipt of a single lump sum payment. Upon receipt of such a lump sum, a single annuity could be obtained that would generate regular cash payments until the value of the insurance policy is depleted. Payments may be structured to begin immediately, or they can be deferred (e.g., to start at retirement). These payments may cease at death or continue to be paid to beneficiaries for a number of years after death. Any interest earned on annuities is tax deferred (i.e., taxes are not paid until the annuity payments are actually made to the beneficiary). In contrast to individual retirement accounts, or IRAs (see Chapter 18), annual annuity contributions are not capped and are not affected by the policyholder's income level. Thus, annuities have become popular with individuals as a mechanism used to save for retirement. Annuity sales in 2018 topped  \$299.3 billion, compared to\$ 26.1 billion in 1996.

# CALCULATOR HINTS

$$
\begin{array}{l} N = 25 \\ PMT = 15,000 \\ FV = 0 \\ I = 5.00\% \\ CPT PV = -\$211,409 \\ \end{array}
$$

# EXAMPLE 15-2 Calculation of the Fair Value of an Annuity Policy

Suppose that a person wants to purchase an annuity today that would pay 15,000 after taxes per year until the end of that person's life. The insurance company expects the person to live for 25 more years and can invest the amount received for the annuity at a guaranteed interest rate of 5 percent. The fair price for the annuity policy today can be calculated as follows:

$$
\begin{array}{l} \text{Fair value} = \frac{15,000}{1 + r} + \frac{15,000}{(1 + r)^{2}} + \dots + \frac{15,000}{(1 + r)^{25}} \\ = 15,000 \left[ \frac{1}{1 + r} + \frac{1}{(1 + r)^{2}} + \dots + \frac{1}{(1 + r)^{25}} \right] \\ = 15,000 \left[ \frac{1 - \frac{1}{(1 + 0.05)^{25}}}{0.05} \right] \\ = 15,000 [14.0939] \\ = \$211,409 \\ \end{array}
$$

Thus, the cost of purchasing this annuity today would be 211,409.

Private Pension Funds. Insurance companies offer many alternative pension plans to private employers in an effort to attract this business away from other financial service companies such as commercial banks and securities firms. Some of their innovative pension plans are based on guaranteed investment contracts (GICs). With such plans, the insurer guarantees not only the rate of interest credited to a pension plan over some given period—for example, five years—but also the annuity rates on beneficiaries' contracts. Other plans include immediate participation and separate account plans that follow more aggressive investment strategies than traditional life insurance contracts, such as investing premiums in special-purpose equity mutual funds. In 2018, life insurance companies were managing over 3.7 trillion in pension fund assets, equal to 38 percent of all private pension plan assets.

Accident and Health Insurance. While life insurance protects against mortality risk, accident and health insurance protects against morbidity or ill-health risk. More than 185 billion in accident health premiums were written by life and health companies in 2018. The major activity line is group insurance, which provides health insurance coverage to corporate employees. Life insurance companies write more than 50 percent of all health insurance premiums. In many respects, insurers in accident and health lines face loss exposures that are more similar to those faced by property-casualty insurers, as opposed to traditional life insurers (see the section on property-casualty insurance, which follows shortly).

# LG 15-3

# Balance Sheets and Recent Trends

# policy loans

Loans made by an insurance company to its policyholders using their policies as collateral.

Assets. Because of the long-term nature of their liabilities (resulting from the long-term nature of life insurance policyholders' claims) and the need to generate competitive returns on the savings elements of life insurance products, life insurance companies concentrate their asset investments at the longer end of the maturity spectrum (e.g., corporate bonds, equities, and government securities). Table 15-2 shows the distribution of life insurance assets. As you can see, in 2018, 6.8 percent of assets were invested in government securities, 63.5 percent in corporate bonds and stocks, and 8.1 percent in mortgages (commercial and home mortgages), with other loans—including policy loans (i.e., loans made to policyholders using their policies as collateral)—and miscellaneous assets comprising the remaining assets. Although depository institutions are the major issuers of new mortgages (sometimes keeping the mortgages on their books and sometimes selling them to secondary market investors), insurance companies hold mortgages as investment securities. That is, they purchase many mortgages in the secondary markets (see Chapters 7 and 25). The major trend has been a long-term increase in the proportion of bonds and equities and a decline in the proportion of mortgages on life insurers' balance sheets. Thus, insurance company managers must be able to measure and manage the credit risk, interest rate risk, and other risks associated with these securities.

TABLE 15-2 Distribution of Life Insurer Assets, 2018

<table><tr><td colspan="8">Corporate Securities</td></tr><tr><td>Year</td><td>Total Assets (in billions)</td><td>Government Securities</td><td>Bonds</td><td>Stocks</td><td>Mortgages</td><td>Policy Loans</td><td>Miscellaneous Assets*</td></tr><tr><td>1917</td><td>5.9</td><td>9.6\%</td><td>33.2\%</td><td>1.4\%</td><td>34.0\%</td><td>13.6\%</td><td>5.2\%</td></tr><tr><td>1920</td><td>7.3</td><td>18.4</td><td>26.7</td><td>1.0</td><td>33.4</td><td>11.7</td><td>6.5</td></tr><tr><td>1930</td><td>18.9</td><td>8.0</td><td>26.0</td><td>2.8</td><td>40.2</td><td>14.9</td><td>5.2</td></tr><tr><td>1940</td><td>30.8</td><td>27.5</td><td>28.1</td><td>2.0</td><td>19.4</td><td>10.0</td><td>6.3</td></tr><tr><td>1950</td><td>64.0</td><td>25.2</td><td>36.3</td><td>3.3</td><td>25.1</td><td>3.8</td><td>4.1</td></tr><tr><td>1960</td><td>119.6</td><td>9.9</td><td>39.1</td><td>4.2</td><td>34.9</td><td>4.4</td><td>4.4</td></tr><tr><td>1970</td><td>207.3</td><td>5.3</td><td>35.3</td><td>7.4</td><td>35.9</td><td>7.8</td><td>5.3</td></tr><tr><td>1980</td><td>479.2</td><td>6.9</td><td>37.5</td><td>9.9</td><td>27.4</td><td>8.6</td><td>6.6</td></tr><tr><td>1990</td><td>1,408.2</td><td>15.0</td><td>41.4</td><td>9.1</td><td>19.2</td><td>4.4</td><td>7.8</td></tr><tr><td>2000</td><td>3,133.9</td><td>9.3</td><td>39.1</td><td>31.5</td><td>7.5</td><td>3.2</td><td>9.4</td></tr><tr><td>2007</td><td>4,949.7</td><td>10.0</td><td>37.6</td><td>33.4</td><td>6.6</td><td>2.9</td><td>9.5</td></tr><tr><td>2008</td><td>4,515.5</td><td>11.5</td><td>40.3</td><td>24.9</td><td>7.6</td><td>3.6</td><td>12.1</td></tr><tr><td>2009</td><td>4,823.9</td><td>12.0</td><td>39.9</td><td>28.0</td><td>6.8</td><td>2.9</td><td>10.4</td></tr><tr><td>2010</td><td>5,176.3</td><td>12.5</td><td>39.2</td><td>30.1</td><td>6.1</td><td>2.7</td><td>9.4</td></tr><tr><td>2018</td><td>6,992.8</td><td>6.8</td><td>34.9</td><td>28.6</td><td>8.1</td><td>2.0</td><td>19.7</td></tr></table>

* Includes cash, checkable deposits, money market funds, and mortgage-backed securities.
Note: Beginning with 1962, these data include the assets of separate accounts.
Sources: Federal Reserve Bulletin, various issues, www.federalreserve.gov; American Council of Life Insurers, 2019 Life Insurers Fact Book, www.acli.com

TABLE 15-3 Life Insurance Industry Balance Sheet (in billions of dollars), 2018

<table><tr><td></td><td>General Account</td><td>\% General Account Assets</td><td>Separate Account</td><td>\% Separate Account Assets</td><td>Combined Accounts</td><td>\% Combined Accounts Assets</td></tr><tr><td>Assets</td><td>$4,500.3</td><td>100.0\%</td><td>$2,492.5</td><td>100.0\%</td><td>6,992.8</td><td>100.0\%</td></tr><tr><td>Bonds</td><td>3,098.5</td><td>68.9</td><td>394.2</td><td>15.8</td><td>3,492.8</td><td>49.9</td></tr><tr><td>Government securities</td><td>403.9</td><td>9.0</td><td>71.1</td><td>2.9</td><td>475.0</td><td>6.8</td></tr><tr><td>Corporate securities</td><td>2,226.3</td><td>49.5</td><td>215.1</td><td>8.6</td><td>2,441.4</td><td>34.9</td></tr><tr><td>Mortgage-backed securities</td><td>468.3</td><td>10.4</td><td>108.1</td><td>4.3</td><td>576.4</td><td>8.2</td></tr><tr><td>Stocks</td><td>100.8</td><td>2.2</td><td>1,898.8</td><td>76.2</td><td>1,999.6</td><td>28.6</td></tr><tr><td>Common</td><td>87.9</td><td>2.0</td><td>1,897.5</td><td>76.1</td><td>1,985.4</td><td>28.4</td></tr><tr><td>Preferred</td><td>12.9</td><td>0.3</td><td>1.3</td><td>0.1</td><td>14.3</td><td>0.2</td></tr><tr><td>Mortgages</td><td>534.0</td><td>11.9</td><td>30.9</td><td>1.2</td><td>564.8</td><td>8.1</td></tr><tr><td>Real estate</td><td>20.7</td><td>0.5</td><td>17.8</td><td>0.7</td><td>38.6</td><td>0.6</td></tr><tr><td>Policy loans</td><td>132.1</td><td>2.9</td><td>4.6</td><td>0.2</td><td>136.7</td><td>2.0</td></tr><tr><td>Cash and short-term investments</td><td>107.2</td><td>2.4</td><td>41.0</td><td>1.6</td><td>148.2</td><td>2.1</td></tr><tr><td>Derivatives</td><td>56.5</td><td>1.3</td><td>2.9</td><td>0.1</td><td>59.4</td><td>0.8</td></tr><tr><td>Other invested assets</td><td>215.6</td><td>4.8</td><td>79.3</td><td>3.2</td><td>294.9</td><td>4.2</td></tr><tr><td>Non-invested assets</td><td>235.0</td><td>5.2</td><td>22.9</td><td>0.9</td><td>257.9</td><td>3.7</td></tr><tr><td>Liabilities and Capital/Surplus</td><td>4,500.3</td><td>100.0</td><td>2,492.5</td><td>100.0</td><td>6,992.8</td><td>100.0</td></tr><tr><td>Policy reserves</td><td>3,148.2</td><td>70.0</td><td>2,227.1</td><td>89.4</td><td>5,375.4</td><td>76.9</td></tr><tr><td>Other reserves</td><td>503.9</td><td>11.2</td><td>193.9</td><td>7.8</td><td>697.8</td><td>10.0</td></tr><tr><td>Liabilities for deposit-type contracts</td><td>330.2</td><td>7.3</td><td>194.0</td><td>7.8</td><td>524.2</td><td>7.5</td></tr><tr><td>Interest maintenance reserve (IMR)</td><td>20.4</td><td>0.5</td><td>-0.1</td><td>0.0</td><td>20.3</td><td>0.3</td></tr><tr><td>Miscellaneous reserves</td><td>153.2</td><td>3.4</td><td>0.0</td><td>0.0</td><td>153.2</td><td>2.2</td></tr><tr><td>Non-reserve liabilities</td><td>432.7</td><td>9.6</td><td>68.2</td><td>2.7</td><td>500.9</td><td>7.2</td></tr><tr><td>Capital and surplus</td><td>415.5</td><td>9.2</td><td>3.2</td><td>0.1</td><td>418.7</td><td>6.0</td></tr></table>

Source: American Council of Life Insurers, 2019 Life Insurers Fact Book, www.acli.com

# policy reserves

A liability item for insurers that reflects their expected payment commitments on existing policy contracts.

# surrender value of a policy

The cash value of a policy received from the insurer if a policyholder surrenders the policy prior to maturity; normally, only a portion of the contract's face value.

# separate account

Annuity program sponsored by life insurance companies in which the payoff on the policy is linked to the assets in which policy premiums are invested.

Liabilities. The aggregate balance sheet for the life insurance industry at the end of 2018 is presented in Table 15-3. Looking at the liability side of the balance sheet, we see that  \$5.4 trillion, or 76.9 percent, of total liabilities and capital reflect net policy reserves. These reserves are based on actuarial assumptions regarding an insurer's expected future liability or commitment to pay out on present contracts, including death benefits and maturinongendowment policies (lump sum or otherwise), as well as the cash surrender value ofpolicies (i.e., the cash value paid to the policyholder if the policy is "surrendered" by thepolicyholder before it matures). Even though the actuarial assumptions underlying policy reserves are normally very conservative, unexpected fluctuations in future payouts can occur; that is, life insurance underwriting is risky. For example, mortality rates—and life insurance payouts—might unexpectedly increase over those defined by historically based mortality tables because of a catastrophic epidemic, such as AIDS or widespread influenza. To meet unexpected future losses, a life insurer holds a capital and surplus reserve fund with which to meet such losses. The capital and surplus reserves of life insurers in 2018 totaled\$ 418.7 billion, or 6.0 percent of their total liabilities and capital.4

Separate account business was 35.6 percent of total (combined) liabilities and capital in 2018. Separate account funds are invested and held separately from the insurance company's other assets. These funds may be invested without regard to the usual restrictions (e.g., they may be invested in all stocks or all bonds). Note that percent of stock investments is much higher (76.2 percent) in separate account compared to that in general account (2.2 percent). The returns on life insurance policies written as part of separate account business depend, then, on the return on the funds invested in separate account assets. Another important life insurer liability, guaranteed investment contracts or GICs (7.5 percent of total liabilities and capital), are shortand medium-term debt instruments sold by insurance companies to fund their pension plan business (see deposit-type contracts in Table 15-3).

Recent Trends. Insurance companies earn profits by taking in more premium and interest income than they pay out in policy payments. Firms can increase their spread between premium income and policy payouts in two ways. The first way is to decrease future required payouts for any given level of premium payments. This can be accomplished by reducing the risk of the insured pool (provided the policyholders do not demand premium rebates that fully reflect lower expected future payouts). The second way is to increase the profitability of interest income on net policy reserves. Since insurance liabilities typically are long term, the insurance company has long periods of time to invest premium payments in interest-earning asset portfolios. The higher the yield on the insurance company's investments, the greater the difference between the premium income stream and the policy payouts (except in the case of variable life insurance) and the greater the insurance company's profitability.

The life insurance industry was very profitable in the early and mid-2000s, with over  \$500 billion in premiums and annuities recorded in 2004 through 2006. Net income topped\$ 34 billion in 2006, up 6.5 percent from 2005. The credit markets continued to be strong and capital levels for the industry remained high. However, the 2008-2009 financial crisis took a toll on this industry. The value of stocks and bonds in insurers' asset portfolios dropped as the financial markets deteriorated. Further, losses were experienced on life insurers' positions in commercial mortgage-backed securities, commercial loans, and lower grade corporate debt as bond default rates increased and mortgage markets froze. Lower equity market values also reduced asset-based fees earned from balances on equity-linked products, such as variable annuities. As a result, life insurers with large proportions of separate account assets to total revenue-generating assets were particularly hard hit with declining earnings from equities. Furthermore, as investors fled to the safety of government bonds during the financial crisis, government bond yields (which are generally a significant source of investment income for life insurers) fell. These events resulted in huge losses in 2008 for the industry. Realized and unrealized capital losses from bonds, preferred stocks, and common stocks topped \$35 billion, representing more than an 875 percent drop from 2007. Net investment income also fell by 3.5 percent in 2008 from 2007. The result was that net after-tax income for the year was -\$51.8 billion, 83.7 billion less than in 2007.

In late 2008/early 2009, insurance company reserves began to dwindle to dangerous levels. Further, the falling value of their assets made it harder for insurers to raise capital. At this point the Treasury Department decided to extend bailout funds to a number of struggling life insurance companies, the most notable being  \$127 billion to AIG (including\$ 45 billion from TARP, \$77 billion to purchase collateralized debt and mortgage-backed securities, and a \$44 billion bridge loan). Other life insurers receiving Troubled Asset Relief Program (TARP) funds included Hartford Financial Services Group, Prudential Financial, Lincoln National, and Allstate.

Events associated with the financial crisis continued to be felt in 2009. Premium income fell by  \$120 billion (19 percent) from 2008 levels, while net realized capital for the industry fell by\$ 28.7 billion. However, late 2009 saw some improvements for the life insurance industry. Overall, the industry saw an increase in total assets, and net income returned to a positive  \$21.1 billion. Further, the industry continued to pay dividends of\$ 15.0 billion in 2009. Premiums continued to recover in 2010 through 2018 as annuity and most types of life insurance premiums increased. The 2012 premiums of \$684.9 billion surpassed the \$625.2 billion pre-crisis (2007) levels. Premiums written further increased to \$747.9 billion by 2018. Further, net income increased to  \$28.0 billion in 2010 and48.7 billion in 2018. However, challenges remain for the industry. Interest rates remain at historical lows, which increases the risk of spread compression for existing contracts and hampers the sale of new fixed annuity and universal life insurance contracts. Further, equity markets remain volatile and new regulations (see below) could adversely affect profits.

# LG 15-4

# McCarran-Ferguson Act of 1945

Regulation confirming the primacy of state over federal regulation of insurance companies.

www.naic.org

# insurance guarantee fund

A fund of required contributions from within-state insurance companies, used to compensate insurance company policyholders in the event of failure.

http://www.dfs.ny.gov

# Regulation

An important piece of legislation affecting the regulation of life insurance companies is the McCarran-Ferguson Act of 1945, which confirms the primacy of state over federal regulation of insurance companies. Thus, unlike the depository institutions discussed in Chapters 11 through 13, which can be chartered at either the federal or state levels, a life insurer is chartered entirely at the state level. In addition to chartering, state insurance commissions supervise and examine insurance companies using a coordinated examination system developed by the National Association of Insurance Commissioners (NAIC). Regulations cover areas such as insurance premiums, insurer licensing, sales practices, commission charges, and the types of assets in which insurers may invest.

In 2009, the U.S. Congress considered establishing an optional federal insurance charter. Support for such a charter increased when the existing state-by-state regulatory system failed to prevent insurance giant AIG's problems from becoming a systemic risk to the national economy. Those in favor of an optional federal insurance charter noted that under the current state-by-state system, insurers face obstacles such as inconsistent regulations, barriers to innovation, conflicting agent licensing, and education requirements. The Wall Street Reform and Consumer Protection Act of 2010 established the Federal Insurance Office (FIO), an entity that reports to Congress and the president on the status of the insurance industry. While the industry continues to be regulated by the states, the FIO has the authority to monitor the insurance industry, identify regulatory gaps or systemic risk, deal with international insurance matters, and monitor the extent to which underserved communities have access to affordable insurance products. The Wall Street Reform and Consumer Protection Act also called for the establishment of the Financial Stability Oversight Council (FSOC), which is charged with identifying any financial institution (including insurance companies) that presents a systemic risk to the economy and subjecting such institutions to greater regulation.

Also the result of the Wall Street Reform and Consumer Protection Act, the Federal Reserve has become a major supervisor of insurance firms. The Fed extended much of its authority over the insurance industry through the designation of three of the largest insurers (AIG, Prudential Financial, and MetLife) as "systemically important financial institutions." However, with the closure of the Office of Thrift Supervision in 2011, the Fed also supervises 14 insurance companies that own savings institutions. In total, the Fed supervises about one-third of U.S. insurance industry assets. This increased oversight by the Fed has incited concern among insurance companies and state regulators that the Fed will enact onerous capital rules and supervise insurance firms like banks. Promoting the concerns are cases like that of MetLife that failed the Fed's "stress tests" in 2012 despite the firm's protests the Fed misunderstood its business model. In 2015, MetLife sued the U.S. government to overturn its designation as a nonbank systemically important financial institution. The insurer argued that its failure would not pose a risk to the financial system. MetLife further argued that, because it is harder for a customer to pull money from an insurance contract than it is for a depositor to withdraw money from a bank deposit account during a crisis, the insurance industry is safer than banking. Not counting on the courts to agree, in 2016 MetLife announced that it would divest a large piece of its life insurance unit: a unit that had been the core of the company's business for decades. However, shortly after this, a federal judge ruled that MetLife did not deserve to be labeled too big to fail and as such was allowed to shed its designation as a systemically important financial institution and the increased regulatory oversight that went along with that designation.

In addition to supervision and examination, states also promote life insurance guarantee funds. Unlike banks and thrifts, life insurers have no access to a federal guarantee fund (although, as mentioned earlier, during the financial crisis the federal government took the unprecedented step of bailing out several major insurance companies). These state guarantee funds differ in a number of important ways from deposit insurance. First, although these programs are sponsored by state insurance regulators, they are actually run and administered by the private insurance companies themselves.

Second, unlike the Depositors Insurance Fund (DIF), in which the FDIC has established a permanent reserve fund by requiring banks to pay annual premiums in excess

# DO YOU UNDERSTAND?

1. The difference between a life insurance contract and an annuity contract?
2. What the different forms of ordinary life insurance are?
3. Why life insurance companies invest in long-term assets?
4. What the major source of life insurance underwriting risk is?
5. Who the main regulators of the life insurance industry are?

of payouts to resolve failures (see Chapter 13), no such permanent guarantee fund exists for the insurance industry—with the sole exception of the property-casualty and life guarantee funds in the state of New York. This means that contributions are paid into the guarantee fund by surviving firms in a state only after an insurance company has actually failed.

Third, the size of the required contributions that surviving insurers make to protect policyholders in failed insurance companies differs widely from state to state. In those states that have guarantee funds, each surviving insurer is normally levied a pro rata amount, according to the size of its statewide premium income. This amount either helps pay off small policyholders after the assets of the failed insurer have been liquidated or acts as a cash injection to make the acquisition of a failed insurer attractive. The definition of small policyholders varies among states, ranging from  $100,000 to$ 500,000.

Finally, because no permanent fund exists and the annual pro rata payments to meet payouts to failed insurer policyholders are often legally capped, a delay usually occurs before small policyholders receive the cash surrender values of their policies or other payment obligations from the guarantee fund. This contrasts with deposit insurance, which normally provides insured depositors immediate coverage of their claims up to 250,000.

# PROPERTY-CASUALTY INSURANCE COMPANIES

# Size, Structure, and Composition of the Industry

Currently, close to 2,600 companies sell property-casualty (P&C) insurance, and approximately half of these firms write P&C business in all or most of the United States. The U.S. P&C insurance industry is quite concentrated. Collectively, the top 10 firms have a 50 percent share of the overall P&C market measured by premiums written, and the top 200 firms make up over 95 percent of the industry premiums written. In 2018, the top firm (State Farm) wrote 10.5 percent of all P&C insurance premiums, while the second-ranked insurer, Berkshire Hathaway, wrote 8.1 percent of all premiums (i.e., a joint total of 18.6 percent of premiums). In contrast, in 1985 the top two firms wrote 14.5 percent of the total industry insurance premiums. Thus, the industry leaders appear to be increasing their share of this financial services sector. The total assets of the P&C industry as of the end of 2018 were 2.0 trillion, or less than a third of the size of the life insurance industry's assets. While the P&C industry is small when measured by total assets, it is vital to the economic system and the management of risk.

# LG 15-5

# premiums written

The entire amount of premiums on insurance contracts written.

P&C Insurance. Property insurance involves insurance coverages related to the loss of real and personal property. Casualty—or perhaps more accurately, liability—insurance offers protection against legal liability exposures. However, distinctions between the two broad areas of property and liability insurance are becoming increasingly blurred. This is due to the tendency of P&C insurers to offer multiple activity line coverages combining features of property and liability insurance into single policy packages—for example, homeowners multiple peril insurance. The following describes the key features of the main P&C lines. Note, however, that some P&C activity lines (e.g., auto insurance) are marketed as one product to individuals and another to commercial firms, while other lines (e.g., boiler and machinery insurance targeted at commercial purchasers) are marketed to one specific group. To understand the importance of each line in premium income (so-called premiums written) and losses incurred in 2018, review Table 15-4. The following data show the P&C lines (and their changing importance to the P&C industry):

- Fire Insurance and Allied Lines protect against the perils of fire, lightning, and removal of property damaged in a fire (1.9 percent of net premiums written in 2018 versus 16.6 percent in 1960).
Homeowners Multiple Peril (MP) Insurance protects against multiple perils of damage to a personal dwelling and personal property (e.g., fire, lightning, windstorm, hail, explosion, theft, weight of ice or snow) as well as liability coverage against the

TABLE 15-4 Property and Casualty Industry Underwriting by Line of Business (in billions), 2018

<table><tr><td>Line of Business</td><td>Net Premiums Written ($ billions)</td><td>Percent of Total Premiums</td><td>Losses Incurred / Premiums Earned</td></tr><tr><td>Fire</td><td>\$ 11.67</td><td>1.9\%</td><td>71.0\%</td></tr><tr><td>Allied lines</td><td>17.28</td><td>2.8</td><td>80.4</td></tr><tr><td>Farmowners multiple peril</td><td>4.13</td><td>0.7</td><td>59.3</td></tr><tr><td>Homeowners multiple peril</td><td>89.61</td><td>14.4</td><td>65.2</td></tr><tr><td>Commercial multiple peril</td><td>37.61</td><td>6.1</td><td>57.4</td></tr><tr><td>Mortgage guaranty</td><td>4.69</td><td>0.8</td><td>4.0</td></tr><tr><td>Ocean marine</td><td>2.79</td><td>0.4</td><td>58.0</td></tr><tr><td>Inland marine</td><td>14.59</td><td>2.3</td><td>46.0</td></tr><tr><td>Financial guaranty</td><td>0.36</td><td>0.1</td><td>-3.5</td></tr><tr><td>Medical professional liability—occurrence</td><td>2.21</td><td>0.4</td><td>126.0</td></tr><tr><td>Medical professional liability—claims-made</td><td>6.20</td><td>1.0</td><td>61.4</td></tr><tr><td>Earthquake</td><td>1.86</td><td>0.3</td><td>11.6</td></tr><tr><td>Group accident and health</td><td>5.55</td><td>0.9</td><td>56.7</td></tr><tr><td>Credit accident and health (group and individual)</td><td>0.05</td><td>0.0</td><td>23.5</td></tr><tr><td>Other accident and health</td><td>2.53</td><td>0.4</td><td>111.9</td></tr><tr><td>Workers’ compensation</td><td>51.09</td><td>8.2</td><td>45.5</td></tr><tr><td>Other liability—occurrence</td><td>36.96</td><td>5.9</td><td>62.4</td></tr><tr><td>Other liability—claims-made</td><td>21.12</td><td>3.4</td><td>48.7</td></tr><tr><td>Excess workers’ compensation</td><td>1.10</td><td>0.2</td><td>83.0</td></tr><tr><td>Products liability—occurrence</td><td>2.33</td><td>0.4</td><td>46.1</td></tr><tr><td>Products liability—claims-made</td><td>0.47</td><td>0.1</td><td>59.7</td></tr><tr><td>Private passenger auto liability</td><td>144.47</td><td>23.2</td><td>64.8</td></tr><tr><td>Commercial auto liability</td><td>26.98</td><td>4.3</td><td>69.9</td></tr><tr><td>Auto physical damage</td><td>105.28</td><td>16.9</td><td>61.8</td></tr><tr><td>Aircraft (all perils)</td><td>1.22</td><td>0.2</td><td>69.2</td></tr><tr><td>Fidelity</td><td>1.22</td><td>0.2</td><td>33.9</td></tr><tr><td>Surety</td><td>6.36</td><td>1.0</td><td>15.3</td></tr><tr><td>Burglary and theft</td><td>0.28</td><td>0.0</td><td>35.6</td></tr><tr><td>Boiler and machinery</td><td>2.60</td><td>0.4</td><td>46.9</td></tr><tr><td>Credit</td><td>1.51</td><td>0.2</td><td>49.4</td></tr><tr><td>International</td><td>0.47</td><td>0.1</td><td>104.0</td></tr><tr><td>Warranty</td><td>1.25</td><td>0.2</td><td>64.1</td></tr><tr><td>Reinsurance Nonproportional assumed property</td><td>8.56</td><td>1.4</td><td>87.2</td></tr><tr><td>Reinsurance—Nonproportional assumed liability</td><td>5.25</td><td>0.8</td><td>76.8</td></tr><tr><td>Reinsurance—Nonproportional assumed financial lines</td><td>0.34</td><td>0.1</td><td>68.5</td></tr><tr><td>Aggregate write-ins for other lines of business</td><td>1.40</td><td>0.2</td><td>46.4</td></tr><tr><td>Total</td><td>621.38</td><td>100.0\%</td><td>61.1\%</td></tr></table> financial consequences of legal liability resulting from injury to others. Thus, it combines features of both property and liability insurance (14.4 percent of net premiums written in 2018; 5.2 percent in 1960).

Source: National Association of Insurance Commissioners (NAIC), Statistical Compilation of Annual Statement Information for Property/Casualty Insurance Companies in 2018, 2019, www.naic.org

- Commercial Multiple Peril Insurance protects commercial firms against perils similar to homeowners multiple peril insurance (6.1 percent of net premiums written in 2018; 0.4 percent in 1960).
- Automobile Liability and Physical Damage (PD) Insurance provides protection against (1) losses resulting from legal liability due to the ownership or use of the vehicle (auto liability) and (2) theft or damage to vehicles (auto physical damage) (44.5 percent of net premiums written in 2018; 43.0 percent in 1960).
- Liability Insurance (other than auto) provides protection to either individuals or commercial firms against non-automobile-related legal liability. For commercial firms, this includes protection against liabilities relating to their business operations (other than personal injury to employees covered by workers' compensation insurance) and product liability hazards (11.2 percent of net premiums written in 2018; 6.6 percent in 1960).

LG 15-6

# unearned premiums

Reserves set aside that contain the portion of a premium that has been paid before insurance coverage has been provided.

# Balance Sheets and Recent Trends

The Balance Sheet and Underwriting Risk. The balance sheet of P&C firms in 2018 is shown in Table 15-5. Similar to life insurance companies, P&C insurers invest the majority of their assets in long-term securities, although the proportion held in common stock is lower than that of life insurance companies. Overall the maturity of their assets (and liabilities) tends to be shorter than that for life insurance companies. Bonds ( \$1,052.7 billion), preferred stock (\$ 5.3 billion), and common stock ( \$400.0 billion) represented 71.7 percent of total assets in 2018. Looking at their liabilities, we can see that a major component is the loss reserves and loss adjustment expenses item (\$ 675.1 billion). Loss reserves are funds set aside to meet expected losses from underwriting the P&C lines described previously (e.g., the payments made to settle the claims on the insurance policies). Loss adjustment expenses are the expected administrative and related costs of adjusting (settling) these claims (e.g., the costs associated with sending an adjuster to evaluate the amount of payment to be made to settle the claim). This item represents 33.2 percent of total liabilities and capital. Unearned premiums (set-aside reserves that contain the portion of a premium that has been paid at the start of the coverage period and therefore before insurance coverage has been provided) are also a major liability and are equal to 13.6 percent of total liabilities and capital.

To understand how and why the loss reserve—which is the largest liability component—on the balance sheet is established, we need to understand the risks of underwriting P&C insurance. In particular, P&C underwriting risk results when the premiums generated on a given insurance line are insufficient to cover (1) the claims (losses) incurred insuring the risk and (2) the administrative expenses of providing that insurance coverage (legal expenses, commissions, taxes, etc.), after taking into account (3) the investment income generated between the time when the premiums are received to the time when losses are covered. Thus, underwriting risk may result from (1) unexpected increases in loss rates (or loss risk), (2) unexpected increases in expenses (or expense risk), and/or (3) unexpected decreases in investment yields or returns (investment yield/return risk). Next, we look more carefully at each of these three areas of P&C underwriting risk.

TABLE 15-5 Property-Casulaty Industry Balance Sheet (in billions of dollars), 2018

<table><tr><td>Assets</td><td>2,033.1</td><td>100.0\%</td></tr><tr><td>Bonds</td><td>1,052.7</td><td>51.8</td></tr><tr><td>Stocks</td><td>405.3</td><td>19.9</td></tr><tr><td>Preferred</td><td>5.3</td><td>0.3</td></tr><tr><td>Common</td><td>400.0</td><td>19.7</td></tr><tr><td>Mortgage loans</td><td>20.8</td><td>1.0</td></tr><tr><td>Real estate</td><td>13.8</td><td>0.7</td></tr><tr><td>Cash and short-term investments</td><td>103.5</td><td>5.1</td></tr><tr><td>Other invested assets</td><td>152.9</td><td>7.5</td></tr><tr><td>Premiums and considerations</td><td>155.3</td><td>7.6</td></tr><tr><td>Reinsurance</td><td>24.5</td><td>1.2</td></tr><tr><td>Net deferred tax asset</td><td>25.6</td><td>1.3</td></tr><tr><td>All other assets</td><td>151.0</td><td>7.4</td></tr><tr><td>Liabilities and Capital/Surplus</td><td>2,033.1</td><td>100.0</td></tr><tr><td>Losses and loss adjustment expenses</td><td>675.1</td><td>33.2</td></tr><tr><td>Net deferred tax liability</td><td>18.2</td><td>0.9</td></tr><tr><td>Unearned premiums</td><td>276.1</td><td>13.6</td></tr><tr><td>Other liabilities</td><td>284.66</td><td>14.0</td></tr><tr><td>Total liabilities</td><td>1,254.2</td><td>61.7</td></tr><tr><td>Policyholders’ surplus</td><td>778.9</td><td>38.3</td></tr></table>

Source: National Association of Insurance Commissioners (NAIC), Statistical Compilation of Annual Statement Information for Property/Casualty Insurance Companies in 2018, 2019, www.naic.org

# frequency of loss

The probability that a loss will occur.

# severity of loss

The size of a loss.

# long-tail loss

A loss for which a claim is made some time after a policy was written.

Loss Risk. The key feature of claims loss risk is the actuarial predictability of losses relative to premiums earned. This predictability depends on a number of characteristics or features of the perils insured, specifically:

- Property versus Liability. In general, the maximum levels of losses are more predictable for property lines than for liability lines. For example, the monetary value of the loss or damage to an auto is relatively easy to calculate, but the upper limit on the losses to which an insurer might be exposed in a product liability line—for example, asbestos damage to workers' health under other liability insurance—might be difficult if not impossible to estimate.
- Severity versus Frequency. In general, loss rates are more predictable on low-severity, high-frequency lines than on high-severity, low-frequency lines. For example, losses in fire, auto, and homeowners peril lines tend to be expected to occur with high frequency and to be independently distributed across any pool of insured customers. Thus, only a limited number of customers are affected by any single event. Furthermore, the dollar loss of each event in the insured pool tends to be relatively small. Applying the law of large numbers, the expected loss potential of such lines—the frequency of loss times the extent of the damage (severity of loss)—may be estimable within quite small probability bounds. Other lines, such as earthquake, hurricane, and financial guarantee insurance, tend to insure very low-probability (frequency) events. Here, many policyholders in the insured pool are affected by any single event (i.e., their risks are correlated) and the severity of the loss could be potentially enormous. This means that estimating expected loss rates (frequency times severity) is extremely difficult in these coverage areas. For example, even with the new federal terrorism insurance program introduced in 2002, coverage for high-profile buildings in big cities, as well as other properties considered potential targets, remains expensive. The 2002 terrorism risk insurance program was subsequently renewed for additional six years as part of the Terrorism Risk Insurance Program Reauthorization Act of 2015, with some changes to the original program. It was renewed again for seven years in December 2019. Under the 2019 program, triggering event threshold is increased from  \$100 million to\$ 200 million. If the triggering event threshold is met, the deductible that each insurer pays is calculated as 20 percent of the insurers direct earned premiums for commercial insurance. Losses in excess of an individual insurer's deductible are then shared between the federal government and the insurer. The insurer's copay of the excess losses will be 20 percent of losses by 2020, up from 10 percent in 2006, with the federal government paying the other 80 percent. The terrorism risk insurance program caps all losses in a program year for both the insurers and the government at \$100 billion. Insurers cannot be made to pay for losses in excess of \$100 billion. Therefore, losses above this threshold are uninsured. This higher uncertainty of losses forces P&C firms to invest in more short-term assets and hold a larger percentage of capital and reserves than life insurance firms do.
- Long Tail versus Short Tail. Some liability lines suffer from a long-tail risk exposure phenomenon that makes estimation of expected losses difficult. This long-tail loss arises in policies for which the insured event occurs during a coverage period but a claim is not filed or made until many years later. The delay in the filing of a claim is in accordance with the terms of the insurance contract and often occurs because the detrimental consequences of the event are not known for a period of time after the event actually occurs. Losses incurred but not reported have caused insurers significant problems in lines such as medical malpractice and other liability insurance where product damage suits (e.g., the Dalkon shield case and asbestos cases) have been filed many years after the event occurred and the coverage period has expired. For example, in 2002 Halliburton, a major U.S. corporation, agreed to pay 4 billion in cash and stock, and to seek bankruptcy protection for a subsidiary, to settle more than 300,000 asbestos claims. To resolve its growing asbestos liability, Halliburton considered a novel step that put one of its biggest subsidiaries into bankruptcy courts, while allowing Halliburton to hold on to the rest of its businesses. Questions still remain about how much insurance companies will be required to reimburse Halliburton for the cost of asbestos case settlements and when. The company had only 1.6 billion of expected insurance on its books for asbestos claims. If Halliburton is successful in putting just one of its subsidiaries (and not the entire firm) into bankruptcy, it could set a precedent for many companies, such as Honeywell International and Dow Chemical, which were also trying to contain their asbestos risk in subsidiaries.
- Product Inflation versus Social Inflation. Loss rates on all P&C property policies are adversely affected by unexpected increases in inflation. Inflation generally has an adverse effect on the cost of providing benefits that have been purchased by the insured, particularly if the policy is written in terms of the replacement cost of the asset and the premiums are not adjusted for inflation. In addition, the investment value of bonds and other fixed-rate assets of insurers from which claims proceeds are derived may decrease in value from unexpected inflation. Such increases were triggered, for example, by the oil price shocks of 1973, 1978, and 2008. However, in addition to a systematic unexpected inflation risk in each line, line-specific inflation risks may also exist. The inflation risk of property lines is likely to reflect the approximate underlying inflation risk of the economy. Liability lines, however, may be subject to social inflation, as reflected by juries' willingness to award punitive and other damages at rates far above the underlying rate of inflation. Such social inflation has been particularly prevalent in commercial liability and medical malpractice insurance and has been directly attributed by some analysts to faults in the U.S. civil litigation system. Using the predicted losses, insurance companies calculate a pure premium on each line of insurance equal to the frequency of loss times the average predicted loss. Policyholders are then charged a gross premium equal to the pure premium plus a loading fee to capture the expected profit for the insurer (see below).

Reinsurance. An alternative to managing risk on a P&C insurer's balance sheet is to purchase reinsurance from a reinsurance company. Reinsurance is essentially insurance for insurance companies. Note from Table 15-5 that reinsurance (the payment that may be collected under reinsurance contracts) represented 1.2 percent of total assets in 2018. It is a way for primary insurance companies to protect against unforeseen or extraordinary losses. Depending on the contract, reinsurance can enable the insurer to improve its capital position, expand its business, limit losses, and stabilize cash flows, among other things. In addition, the reinsurer, drawing information from many primary insurers, will usually have a far larger pool of data for assessing risks. Reinsurance takes a variety of forms. It may represent a layer of risk, such as losses within certain limits, say  \$5 million to\$ 10 million, that will be paid by the reinsurer to the primary insurance company for which a premium is paid, or a sharing of both losses and profits for certain types of business. Reinsurance is an international business. The world's top 10 reinsurance companies accounted for just over two-thirds of gross written premium in the global non-life reinsurance market in 2018, according to global credit rating agency AM Best. Munich Re and Swiss Re cover 30 percent of the global reinsurance marketplace between them. Some investment banks are now setting up reinsurers as part of a move to develop alternative risk-financing deals such as catastrophe bonds. Insurers and reinsurers also typically issue catastrophe bonds. The bonds pay high interest rates and diversify an investor's portfolio because natural disasters occur randomly and are not associated with (are independent of) economic factors. Depending on how the bond is structured, if losses reach the threshold specified in the bond offering, the investor may lose all or part of the principal or interest. For example, a deep-discount or zero-coupon catastrophe bond would pay  $100(1 - \alpha)$  on maturity, where  $\alpha$  is the loss rate due to the catastrophe. Thus, Munich Re issued a \$250 million catastrophe bond in 2018 where  $\alpha$  (the loss rate) reflected losses incurred on all reinsurer policies over a 24-hour period should an event (such as a flood or hurricane) occur and losses exceed a certain threshold. The required yield on these bonds reflected the risk-free rate plus a premium reflecting investors' expectations regarding the probability of the event's occurring.

# loss ratio

A measure of pure losses incurred to premiums earned.

# premiums earned

Premiums received and earned on insurance contracts because time has passed with no claim filed.

Measuring Loss Risk. The loss ratio measures the actual losses incurred on a specific policy line. It measures the ratio of losses incurred to premiums earned (premiums received and earned on insurance contracts because time has passed without a claim being filed). Thus, a loss ratio of less than 100 means that premiums earned were sufficient to cover losses incurred on that line. Aggregate loss ratios for the period 1951 to 2018 are shown in Table 15-6. Notice the steady increase in industry loss ratios over the period, increasing from the 60 percent range in the 1950s to the 70 and 80 percent range in the 1980s through the early 2010s. For example, in 2012 the aggregate loss ratio on all P&C lines was 74.5 percent. A turnaround started in 2013, as the loss ratio dropped to 67.4 and values stayed below 70 through 2015 when the loss ratio was 69.8. Over the Over the period of 2016-2018, the loss ratio rose back to over 70. This measure includes loss adjustment expenses (LAE)—see below—as well as "pure" losses. The (pure) loss ratio, net of LAE, in 2018 was 61.1 percent (see Table 15-4), down from 63.6 in 2012.

Expense Risk. The two major sources of expense risk to P&C insurers are (1) loss adjustment expenses (LAE) and (2) commissions and other expenses. LAE relate to the costs surrounding the loss settlement process. For example, many P&C insurers employ adjusters who determine the liability of an insurer and the size of an adjustment or settlement to make. The other major area of expense involves the commission costs paid to insurance brokers and sales agents and other operating expenses related to the acquisition of business. As mentioned, the loss ratio reported in Table 15-6 and Figure 15-2 includes LAE. The expense ratio reported in Table 15-6 includes the commission and other expenses for

TABLE 15-6 Property-Casualty Industry Underwriting Ratios

<table><tr><td>Year</td><td>Loss Ratio*</td><td>Expense Ratio†</td><td>Combined Ratio</td><td>Dividends to Policyholders‡</td><td>Combined Ratio after Dividends</td></tr><tr><td>1951</td><td>60.3</td><td>34.0</td><td>94.3</td><td>2.6</td><td>96.9</td></tr><tr><td>1960</td><td>63.8</td><td>32.2</td><td>96.0</td><td>2.2</td><td>98.2</td></tr><tr><td>1970</td><td>70.8</td><td>27.6</td><td>98.4</td><td>1.7</td><td>100.1</td></tr><tr><td>1980</td><td>74.9</td><td>26.5</td><td>101.4</td><td>1.7</td><td>103.1</td></tr><tr><td>1985</td><td>88.7</td><td>25.9</td><td>114.6</td><td>1.6</td><td>116.2</td></tr><tr><td>1995</td><td>78.8</td><td>26.2</td><td>105.0</td><td>1.4</td><td>106.4</td></tr><tr><td>2000</td><td>81.4</td><td>27.8</td><td>109.2</td><td>1.3</td><td>110.5</td></tr><tr><td>2001</td><td>88.4</td><td>26.9</td><td>115.3</td><td>0.7</td><td>116.0</td></tr><tr><td>2002</td><td>81.1</td><td>25.6</td><td>106.7</td><td>0.5</td><td>107.2</td></tr><tr><td>2003</td><td>74.7</td><td>24.9</td><td>99.6</td><td>0.5</td><td>100.1</td></tr><tr><td>2004</td><td>73.3</td><td>25.0</td><td>98.3</td><td>0.4</td><td>98.7</td></tr><tr><td>2005</td><td>74.8</td><td>25.5</td><td>100.3</td><td>0.6</td><td>100.9</td></tr><tr><td>2006</td><td>66.2</td><td>25.4</td><td>91.6</td><td>0.8</td><td>92.4</td></tr><tr><td>2007</td><td>68.0</td><td>27.1</td><td>95.1</td><td>0.5</td><td>95.6</td></tr><tr><td>2008</td><td>77.4</td><td>27.2</td><td>104.6</td><td>0.5</td><td>105.1</td></tr><tr><td>2009</td><td>73.2</td><td>27.3</td><td>100.5</td><td>0.5</td><td>101.0</td></tr><tr><td>2010</td><td>73.5</td><td>28.4</td><td>101.9</td><td>0.5</td><td>102.4</td></tr><tr><td>2011</td><td>79.4</td><td>29.8</td><td>107.8</td><td>0.4</td><td>108.2</td></tr><tr><td>2012</td><td>74.5</td><td>28.2</td><td>102.7</td><td>0.5</td><td>103.2</td></tr><tr><td>2013</td><td>67.4</td><td>28.3</td><td>95.7</td><td>0.6</td><td>96.3</td></tr><tr><td>2014</td><td>68.6</td><td>27.9</td><td>96.5</td><td>0.5</td><td>97.0</td></tr><tr><td>2015</td><td>69.8</td><td>27.8</td><td>97.6</td><td>0.7</td><td>98.3</td></tr><tr><td>2016</td><td>71.9</td><td>27.6</td><td>99.5</td><td>0.5</td><td>100.0</td></tr><tr><td>2017</td><td>76.2</td><td>27.3</td><td>104.1</td><td>0.7</td><td>104.8</td></tr><tr><td>2018</td><td>71.4</td><td>27.2</td><td>99.3</td><td>0.6</td><td>99.9</td></tr></table>

*Losses and adjustment expenses incurred to premiums earned.
+Expenses incurred (before federal income taxes) to premiums written.
$^{\ddagger}$ Dividends to policyholders to premiums earned.
Sources: Best's Aggregates & Averages, Property-Casualty (Oldwick, NJ: A.M. Best Company, 1994), p. 158; and Best's Review, various issues. Copyrighted by A.M. Best Company. Used with permission, www.ambest.com

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/f1f3e58e-94c9-4056-b1f0-68f9b5365a8f/f9558599993d95c8238542f4a232188c65f5bc7a18d2c0099734c5684f38c79a.jpg)

Figure 15-2 Property-Casualty Industry Underwriting Ratios

# combined ratio

A measure of the overall underwriting profitability of a line; equals the loss ratio plus the ratios of loss-adjusted expenses to premiums earned as well as commission and other acquisition costs to premiums written plus any dividends paid to policyholders as a proportion of premiums earned.

P&C insurers during the 1951-2018 period. Notice in this table that, in contrast to the increasing trend in the loss ratio, the expense ratio decreased over the period shown. Despite this trend, expenses continued to account for a significant portion of the overall costs of operations. In 2018, for example, commission and other expenses amounted to 27.2 percent of premiums written. Clearly, sharp rises in commissions and other operating costs can rapidly render an insurance line unprofitable.

A common measure of the overall underwriting profitability of a line, which includes the loss, loss adjustment expenses, and expense ratios, is the combined ratio. Technically, the combined ratio is equal to the loss ratio plus the ratios of LAE to premiums written and commissions and other expenses to premiums written. The combined ratio after dividends adds dividends paid to policyholders as a portion of premiums earned to the combined ratio. If the combined ratio is less than 100 percent, premiums alone are sufficient to cover both losses and expenses related to the line. As seen in Table 15-6 and Figure 15-2, this was the case from 2013 to 2016, and in 2018. In 2017, combined ratio was over 100 percent, which was primarily driven by higher catastrophe losses, underperforming auto market, and various other lines with combined ratios over 100 percent. In 2018, combined ratio improved to 99.3.

# EXAMPLE 15-3 Calculation of P&C Line Loss and Expense Ratios

A property-casualty insurer brings in \$8.72 million in premiums on its private passenger auto physical damage (PD) line of insurance. The line's losses amount to \$5,859,840 and expenses are 2,485,200. The insurer's dividend ratio is 5 percent. Calculate the line's loss ratio, expense ratio, and combined ratio after dividends.

$$
\begin{array}{l} \text{Loss ratio} = \$5,859,840 / \$8,720,000 = 67.2\% \\ \text{Expense ratio} = \$2,485,200 / \$8,720,000 = 28.5\% \\ \text{Combined ratio} = 67.2\% + 28.5\% + 5.0\% = 100.7\% \\ \end{array}
$$

If premiums are insufficient and the combined ratio exceeds 100 percent, the P&C insurer must rely on investment income on premiums for overall profitability. For example, in 2001 the combined ratio after dividend payments was 116.0 percent, indicating that

# operating ratio

A measure of the overall profitability of a P&C insurer; equals the combined ratio minus the investment yield.

premiums alone were insufficient to cover the costs of losses and expenses related to writing P&C insurance. Conversely, in 2004 a drop in losses incurred on premiums written resulted in a combined ratio after dividends of 98.7 percent, the first year premiums covered losses since 1979. Table 15-6 presents the combined ratio and its components for the P&C industry for the years 1951-2018. We see that the trend over much of this period was toward decreased profitability. The industry's premiums generally covered losses and expenses through the 1970s. Then, until 2004, premiums were unable to cover losses and expenses (i.e., combined ratios were consistently higher than 100 percent). The mid-2000s saw a return to increased profitability for the insurance industry, which was reversed in the late 2000s.

Investment Yield/Return Risk. As discussed previously, when the combined ratio is more than 100 percent, overall profitability can be ensured only by a sufficient investment return on premiums earned. That is, P&C firms invest premiums in assets between the time they receive the premiums and the time they make payments to meet claims. For example, in 2018 net investment income to premiums earned (or the P&C insurers' investment yield) was 11.4 percent. As a result, the overall average profitability (or operating ratio) of P&C insurers was 88.5 percent. It was equal to the combined ratio after dividends (99.9, see Table 15-6) minus the investment yield (11.4). Since the operating ratio was less than 100 percent, P&C insurers were profitable overall in 2018. Net returns on investments can have a big impact on industry profitability. For example, in 2012 P&C insurers' investment yield was 10.5 percent. As a result, the operating ratio of P&C insurers was 92.7 (the combined ratio after dividends [103.2] minus the investment yield [10.5]). While the combined ratio after dividends corresponds to net losses, the high investment yield resulted in an operating ratio that was less than 100. That is, P&C insurers were profitable in 2012. However, lower net returns on investments (e.g., 2.8 percent rather than 10.5 percent) would have meant that underwriting P&C insurance was marginally unprofitable (i.e., the operating ratio of insurers in this case would have been 100.4). Further, in 2001, even though net investment income to premiums earned was 14.0 percent, the overall average profitability of P&C insurers (the operating ratio) was 102 percent, meaning that underwriting P&C insurance was unprofitable. As discussed further below, 2001 was the first full year net loss experienced by the P&C industry in the post-1950 period. Thus, the behavior of interest rates and default rates on P&C insurers' investments is crucial to the P&C insurers' overall profitability. That is, measuring and managing credit and interest rate risk are key concerns of P&C managers, as they are for all FI managers.

# EXAMPLE 15-4 Calculation of P&C Company Overall Profitability

Suppose that an insurance company's loss ratio is 79.8 percent, its expense ratio is 27.9 percent, and the company pays 2 percent of its premiums earned to policyholders as dividends. The combined ratio (after dividends) for this insurance company is equal to:

$$
\text{Loss ratio} + \text{Expense ratio} + \text{Dividend ratio} = \text{Combined ratio after dividends}
$$

$$
79.8 + 27.9 + 2.0 = 109.7
$$

Thus, expected losses on all P&C lines, expenses, and dividends exceeded premiums earned by 9.7 percent. As a result, without considering investment income, the P&C insurer is not profitable.

Suppose, however, that the company's investment portfolio yielded 12 percent. The operating ratio and overall profitability of the P&C insurer would then be:

$$
\text{Operating ratio} = \text{Combined ratio after dividends} - \text{Investment yield}
$$

$$
= 109.7\% - 12.0\%
$$

$$
= 97.7\%
$$

As can be seen, the high investment returns (12 percent) make the P&C insurer profitable overall.

# underwriting cycle

A pattern that the profits in the P&C industry tend to follow.

www.iso.com

Given the importance of investment returns to P&C insurers' profitability, combined with the need for a predictable stream of cash flows to meet required payouts on their insurance policies, the balance sheet in Table 15-5 indicates that bonds—both treasury and corporate—dominate the asset portfolios of P&C insurers. For example, bonds represented 51.8 percent of total assets and 60.2 percent ($1,052.7/$1,749.1) of financial assets (invested assets) in 2018.

Finally, if losses, LAE, and other expenses are higher and investment yields are lower than expected, resulting in operating losses, P&C insurers carry a significant amount of surplus reserves (policyholder surplus) to reduce the risk of insolvency. In 2018, the ratio of policyholder surplus to assets was 38.3 percent.

Recent Trends While catastrophes should be random, much of the 1985-2016 period was characterized by a number of catastrophes of historically high severity, as shown in Figure 15-3. In contrast, the period from 1950 to 1984 experiences relatively fewer and lower severity catastrophes. In the terminology of P&C insurers, the industry was in the trough of an underwriting cycle—that is, underwriting conditions were difficult. These cycles are characterized by periods of rising premiums leading to increased profitability. Following a period of solid but not spectacular rates of return, the industry enters a down phase in which premiums soften as the supply of insurance products increases. As a result, most of the period 1985-2018 was not entirely profitable for the P&C industry. In particular, the combined ratio (the measure of loss plus expense risk) was 116.2 in 1985, 115.7 in 1992, and 116.0 in 2001. (Remember that a combined ratio higher than 100 is bad in that it means that losses, expenses, and dividends totaled more than premiums earned.) The major reason for these losses was a succession of catastrophes including Hurricane Hugo in 1989, the San Francisco earthquake in 1991, the Oakland fires of 1991, and the almost 20 billion in losses incurred in Florida as a result of Hurricane Andrew in 1991.

```d2
direction: right

high_catastrophes: High Catastrophe\nFrequency/Severity {
  shape: rectangle
  style.fill: "#ffebee"
  style.stroke: "#f44336"
}

premiums_rise: Premiums Rise\n(Profitability Increases) {
  shape: rectangle
  style.fill: "#e8f5e9"
  style.stroke: "#4caf50"
}

competition_increases: Competition Increases\n(Premiums Soften) {
  shape: rectangle
  style.fill: "#fff3e0"
  style.stroke: "#ff9800"
}

low_profitability: Low Profitability\n(Underwriting Cycle Trough) {
  shape: rectangle
  style.fill: "#ffebee"
  style.stroke: "#f44336"
}

high_catastrophes -> premiums_rise: Insurers respond\nto losses
premiums_rise -> competition_increases: Attracts more\ninsurers to market
competition_increases -> low_profitability: Excess capacity\nleads to price wars
low_profitability -> high_catastrophes: Weak firms exit,\nconsolidation occurs

cycle_label: Underwriting Cycle {
  shape: oval
  style.fill: "#f3e5f5"
  style.stroke: "#9c27b0"
  near: top-center
}
```

In 1993, the industry showed signs of improvement, with the combined ratio after dividends falling to 106.9. In 1994, however, the ratio rose again to 108.4, partly as a result of the Northridge earthquake, with estimated losses of $7 billion to $10 billion. A drop in disaster-related losses caused the industry ratio to fall back to 101.6 in 1997. However, major losses associated with El Niño (e.g., Hurricane Georges and Midwest storms) drove the combined ratio after dividends back to 105.6 in 1998. The combined ratio after dividends increased even further to 107.9 in 1999 and 110.5 in 2000. Part of these increases is attributable to an increase in amounts paid on asbestos claims. In 1999, $3.4 billion was paid out on these claims, the largest payout ever. The Insurance Services Office Inc. estimates that the combined ratio for 1999, 107.9, would have been one percentage point lower without these claims.

The year 2001 saw yet another blow to the insurance industry and the world with terrorist attacks on the World Trade Center and the Pentagon. Estimates of the costs of these attacks to insurance companies were as high as  \$19 billion. It was estimated that only 10 percent of the September 11 losses were reported in 2001, and yet the losses attributed to the terrorist attacks added an estimated 4 percentage points to the combined ratio after dividends of 116.0. Because of the tremendous impact these attacks had on the health of the U.S. insurance industry, the Bush administration proposed that the U.S. government pay the majority of the losses of the insurance industry due to the attacks. The proposal capped insurers' liabilities at 10 percent of claims over\$ 1 billion (the federal government would pay the other 90 percent) for as many as three years after a terrorist-related event. Despite this bailout of the industry, many insurers did not survive 2001 and those that did were forced to increase premiums significantly.

After several tumultuous years, 2003 saw profitability in the P&C industry improve. The combined ratio after dividends was 100.1, down sharply from 107.2 in 2002, and much better than most analysts and industry experts expected. The 2003 results were the best since 1979, when the combined ratio was 100.6. In 2004 Florida and the East Coast were hit with several major hurricanes, including Hurricanes Charley, Frances, Ivan, and Jeanne (the estimated losses from these four hurricanes were over 25 billion). Yet, these were the only major catastrophes to occur in 2004. As a result, the industry saw its first overall profitable year since the 1960s. The combined ratio in 2004 was 98.7. In 2005 the

Figure 15-3 U.S. Catastrophes, 1980-2018

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/f1f3e58e-94c9-4056-b1f0-68f9b5365a8f/a6c107386b013a5c9bf81af3d579a51e2d0f90a85978eaa0103f518181026827.jpg)

Sources: Richard L. Sandor, Centre Financial Products, 1949-1994; and authors' research, 1995-2018

P&C industry reported a combined ratio of 100.9. The losses resulted from 81.9 billion in catastrophe losses primarily resulting from the record-breaking hurricane season, which included losses from Hurricanes Katrina, Wilma, and Rita. These losses added an estimated 8 points to the industry's combined ratios. If catastrophe losses are excluded, the combined ratios for 2005 and 2004 would have been 92.9 and 94.5, respectively. Losses from the record 2005 hurricane season prompted both Allstate and State Farm to stop writing new homeowner policies and drop some existing customers altogether. In 2006 and 2007 small levels of catastrophic losses, combined with strong performance in virtually all other major lines of P&C insurance, resulted in a combined ratio of 92.4, and 95.6, respectively, the best underwriting performance since 1936.

Losses rose significantly in 2008 through 2012 due to jumps in catastrophe losses (including  \$12.5 billion from Hurricane Ike,\$ 18.8 billion from Hurricane Sandy, and 14.2 billion from the Midwest tornadoes) and losses in the mortgage and financial guarantee segments associated with the financial crisis. Note from Table 15-4, these two segments experienced losses of 151.8 percent and 20.9 percent of premiums written, respectively, in 2012, down from 214.6 percent and 416.9 percent, respectively, during the height of the financial crisis in 2008. These losses pushed the 2008 combined ratio to 105.1 percent (up 9.5 points from 2007). Excluding losses from these two sectors, the industry's combined ratio would have been 101.0 percent for the year. Significantly, lower catastrophe losses and a recovering economy resulted in an industry combined ratio of 101.0 percent in 2009 and 102.4 percent in 2010. While 2009 saw the third straight year of negative premium growth (the first since the Great Depression), premiums written in 2010 began to recover. Further, few major catastrophes occurred during these two years.

The United States experienced one of the worst years ever in terms of catastrophes in 2011. Insured catastrophe losses totaled  \$33.6 billion, the fifth most expensive year on record for insured catastrophe losses on an inflation-adjusted basis. Overall net income after taxes fell 46 percent, from\$ 35.2 billion in 2010 to \$19.2 billion. Such high catastrophe losses, along with high underwriting losses in key noncatastrophe exposed lines such as workers' compensation, pushed the industry's combined ratio to 108.2 (its highest level since 2001). As a result of large decreases in catastrophe losses and a marked acceleration in premium growth, profitability in the P&C insurance industry rebounded during 2012. Despite the impact of Hurricane Sandy (which made landfall in the Northeast United States in late October and caused insured losses of \$18.8 billion) and smaller investment gains, net income grew to 33.5 billion in 2012. The combined ratio decreased to 103.2.

Profitability in the property-casualty insurance industry surged to its highest level in the post-crisis era in 2013-2016 as sharply lower catastrophe losses, modestly higher premium growth, improved realized investment gains all worked to improve performance. The P&C sector net written premiums were 477 billion in 2013 and 497 billion in 2014, and \$514 billion in 2015, crossing the half trillion mark for a record high level. The P&C sector net written premiums for the first six months of 2016 continued to be strong at 268 billion. Solid gains were reported for both commercial and personal lines of business as premium rate increases and growth in the U.S. economy drove growth in aggregate premiums. The industry's combined ratio fell to 96.3, 97.0, 98.3, and 100.0, respectively, over this period. However, the property-casualty industry recorded two consecutive years of underwriting loss in 2016 and 2017, the first time since 2011 and 2012. Insured losses due to natural disasters in the U.S. in 2017 were more than triple the amount for 2016. Counting for the majority of the 2017 insured losses, estimated losses for Hurricane Harvey was 19 billion, Hurricane Irma was 25 billion, and Hurricane Maria was \$30 billion. As a result, the industry's combined ratio was 103.9 in 2017.

LG 15-7

# www.naic.org

# DO YOU UNDERSTAND?

6. Why P&C insurers hold more capital and reserves than life insurers do?
7. Why life insurers' assets are, on average, longer in maturity than P&C insurers' assets?
8. What the main lines of insurance offered by P&C insurers are?
9. What the components of the combined ratio are?
10. How the operating ratio differs from the combined ratio?
11. Why the combined ratio tends to behave cyclically?

# Regulation

Similar to life insurance companies, P&C insurers are chartered at the state level and regulated by state commissions. In addition, state guarantee funds provide (some) protection to policyholders, in a manner similar to that described earlier for life insurance companies, should a P&C insurance company fail. The National Association of Insurance Commissioners (NAIC) provides various services to state regulatory commissions. These include a standardized examination system, the Insurance Regulatory Information System (IRIS), to identify insurers with loss, combined, and other ratios operating outside normal ranges.

An additional burden that P&C insurers face in some activity lines—especially auto insurance and workers' compensation insurance—is rate regulation. Given the social welfare importance of these lines, state commissioners often set ceilings on the premiums and premium increases in these lines (usually based on specific cost of capital and line risk exposure formulas for the insurance supplier). This has led some insurers to leave states such as New Jersey, Florida, and California, which have the most restrictive regulations.

In recent years, the P&C industry has come under attack for the way it handled claims from homeowners associated with Hurricane Katrina. Homeowners' policies excluded damage caused by flooding. Insurers insisted the storm surge from Hurricane Katrina was classified as flood damage and therefore was excluded from coverage under policy forms that had been reviewed by regulators in each state and had been in force for years. Lawyers for policyholders of State Farm Insurance Company claimed that insurers were trying to avoid paying out on their homeowners policies by claiming it was a flood when it was a combination of hurricane winds and a storm surge. They claimed that the storm surge was not a flood but a direct result of the hurricane's winds, which is a covered risk. Policyholders claimed that State Farm and other insurance companies used "deceptive" sales practices to sell those hurricane policies and collected extra premiums from them. A verdict in January 2007 not only held State Farm responsible for policy limits that totaled more than 220,000 on a loss deemed to be due to storm surge flooding, but also held the company liable for punitive damages.

# GLOBAL ISSUES

LG 15-8

Like the other sectors of the financial institutions industry, the insurance sector is becoming increasingly global. Table 15-7 lists the top 10 countries in terms of total premiums written in 2018 (in U.S. dollars) and the percentage share of the world market. Table 15-8 lists the top 10 insurance companies worldwide by total revenues. While the United States, Japan, and western Europe dominate the global market, all regions are engaged in the insurance business and many insurers are engaged internationally.

Worldwide, 2017 was the costliest year for the worldwide insurance industry Figure 15-4. Natural disasters cost insurers a record  \$138 billion in losses. However, losses in North America accounted for 83 percent of the total. Insured losses worldwide were up from a previous record of\$ 119 billion in 2011, when horrific earthquakes in Japan and New Zealand produced huge payouts on insured losses. In 2017, total economic costs from natural disasters worldwide amounted to \$340 billion, compared with \$400 billion in 2011. In that year, outside the United States, earthquakes in Italy produced total insured losses of \$1.6 billion and flooding in China in July caused insured damage totaling \$180 million. Finally, no catastrophic events in terms of loss of life occurred in 2012.

A key driver of losses in 2017 were the hurricanes Harvey, Irma, and Maria, which struck the USA and Caribbean in the space of few weeks. Many loss events in 2017 were unusual, some even appeared to be paradoxical: For example, the 2016/2017 winter in Northern California brought more snow and rain than had been seen for many years. This caused many dormant plants to sprout and grow again, providing perfect fuel for wildfires to cause billions of dollars of losses later in the year.

TABLE 15-7 The World's Top 10 Countries in Terms of Insurance Premiums Written, 2018

<table><tr><td>Ranking</td><td>Country</td><td>Life Premiums Written (in billions of USD)</td><td>Property-Casualty Premiums Written (in billions of USD)</td><td>Total Premiums Written (in billions of USD)</td><td>Share of World Market</td></tr><tr><td>1</td><td>United States</td><td>$593.4</td><td>$876.0</td><td>1,469.4</td><td>28.3\%</td></tr><tr><td>2</td><td>China</td><td>313.4</td><td>261.5</td><td>574.9</td><td>11.1</td></tr><tr><td>3</td><td>Japan</td><td>334.2</td><td>106.4</td><td>440.6</td><td>8.5</td></tr><tr><td>4</td><td>United Kingdom</td><td>235.5</td><td>101.0</td><td>336.5</td><td>6.5</td></tr><tr><td>5</td><td>France</td><td>165.1</td><td>92.9</td><td>258.0</td><td>5.0</td></tr><tr><td>6</td><td>Germany</td><td>96.4</td><td>145.0</td><td>241.5</td><td>4.7</td></tr><tr><td>7</td><td>South Korea</td><td>98.1</td><td>81.0</td><td>179.0</td><td>3.5</td></tr><tr><td>8</td><td>Italy</td><td>125.3</td><td>44.9</td><td>170.3</td><td>3.3</td></tr><tr><td>9</td><td>Canada</td><td>54.1</td><td>73.8</td><td>127.9</td><td>2.5</td></tr><tr><td>10</td><td>Taiwan</td><td>102.0</td><td>19.9</td><td>121.9</td><td>2.4</td></tr></table>

Source: Swiss Re, sigma no 3/2019, www.swissre.com

TABLE 15-8 World's Largest Insurance Companies by Total Revenues, 2018

<table><tr><td>Rank</td><td>Company</td><td>Revenues</td><td>Country</td><td>Industry</td></tr><tr><td>1</td><td>Berkshire Hathaway</td><td>247.8</td><td>U.S.</td><td>Property/casualty</td></tr><tr><td>2</td><td>Ping An Insurance</td><td>163.6</td><td>China</td><td>Life/health</td></tr><tr><td>3</td><td>Allianz</td><td>126.8</td><td>Germany</td><td>Property/casualty</td></tr><tr><td>4</td><td>AXA</td><td>125.6</td><td>France</td><td>Life/health</td></tr><tr><td>5</td><td>China Life Insurance</td><td>116.2</td><td>China</td><td>Life/health</td></tr><tr><td>6</td><td>Japan Post Holdings</td><td>115.2</td><td>Japan</td><td>Life/health</td></tr><tr><td>7</td><td>Assicurazioni Generali</td><td>88.2</td><td>Italy</td><td>Life/health</td></tr><tr><td>8</td><td>State Farm Insurance Cos.</td><td>81.7</td><td>U.S.</td><td>Property/casualty</td></tr><tr><td>9</td><td>People&#x27;s Insurance Company of China</td><td>75.4</td><td>China</td><td>Property/casualty</td></tr><tr><td>10</td><td>Nippon Life Insurance</td><td>74.2</td><td>Japan</td><td>Life/health</td></tr></table>

Source: Insurance Information Institute, Rankings, www.iii.org

FIGURE 15-4 World Natural Catasrophes by Overall and Insured Losses, 1980-2018

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/f1f3e58e-94c9-4056-b1f0-68f9b5365a8f/0dd9ffcbe3a2f8644679746dfa5226864e328d9bcc8f6e230b55ae3410f950f5.jpg)

Source: Munic Re, Geo Risks Research, NatCatSERVICE. As of March 2019, www.municre.com

A comparison with the last 30 years (Figure 15-4) shows that 2018 was above the inflation-adjusted overall loss average of  \$140 billion. The figure for insured losses-\$ 80 billion—was significantly higher than the 30-year average of 41 billion. 2018 therefore ranks among the ten costliest disaster years in terms of overall losses and was the fourth-costliest year since 1980 for the insurance industry.

In particular, Hurricanes Michael and Florence in the Atlantic, and Typhoons Jebi, Mangkhut, and Trami in Asia, all left their mark. Overall losses from tropical cyclones in 2018 came to roughly  \$57 billion, of which\$ 29 billion was insured. There was also an extremely high impact from wildfires in California that produced overall losses of \$24 billion and insured losses of \$18 billion. Over the course of the year, 29 events each resulted in an overall loss of 1 billion or more.

Roughly 50 percent of global macroeconomic losses from natural catastrophes in 2018 were insured, a significantly higher percentage than the long-term average of 28 percent. North America accounted for 68 percent of insured losses, Asia for 23 percent and Europe for 8 percent. The remaining losses of less than 1 percent were divided between South America, Africa, Australia, and Oceania.

## Summary

This chapter examined the activities and regulation of insurance companies. The first part of the chapter described the various classes of life insurance and recent trends in this sector. The second part discussed property-casualty companies. The various lines that comprise property-casualty insurance are becoming increasingly blurred as multiple activity line coverages are offered. Both life and property-casualty insurance companies are regulated at the state rather than the federal level.

# QUESTIONS

1. How does the primary function of an insurance company compare with that of a depository institution? (LG 15-1)
2. What is the adverse selection problem? How does adverse selection affect the profitable management of an insurance company? (LG 15-1)
3. Contrast the balance sheets of depository institutions with those of life insurance firms. (LG 15-3)
4. How has the composition of the assets of U.S. life insurance companies changed over time? (LG 15-3)
5. What are the similarities and differences among the four basic lines of life insurance products? (LG 15-2)
6. Explain how annuities represent the reverse of life insurance activities. (LG 15-2)
7. How can life insurance and annuity products be used to create a steady stream of cash disbursements and payments to avoid either the payment or receipt of a single lump sum cash amount? (LG 15-2)
8. If an insurance company decides to offer a corporate customer a private pension fund, how would this change the balance sheet of the insurance company? (LG 15-3)
9. How does the regulation of insurance companies compare with that of depository institutions? (LG 15-4)
10. How do state guarantee funds for life insurance companies compare with deposit insurance for depository institutions? (LG 15-4)
11. How do life insurance companies earn profits? (LG 15-3)
12. What are the two major lines of property-casualty (P&C) insurance firms? (LG 15-5)
13. How have P&C industry product lines based on net premiums written by insurance companies changed over time? (LG 15-5)
14. What are the three sources of underwriting risk in the P&C industry? (LG 15-5)
15. Identify four characteristics or features of the perils insured against by property-casualty insurance. Rank the features in terms of actuarial predictability and total loss potential. (LG 15-5)
16. How do increases in unexpected inflation affect P&C insurers? (LG 15-5)
17. Which of the insurance lines listed below will be charged a higher premium by insurance companies and why? (LG 15-6) a. Low-severity, high-frequency lines versus high-severity, low-frequency lines.

b. Long-tail versus short-tail lines.

18. Contrast the balance sheet of a property-casualty insurance company with the balance sheet of a commercial bank. Explain the balance sheet differences in terms of the differences in the primary functions of the two organizations. (LG 15-1)
19. What does the loss ratio measure? What has been the long-term trend of the loss ratio? Why? (LG 15-6)
20. What does the expense ratio measure? Identify and explain the two major sources of expense risk to a property-casualty insurer. Why has the long-term trend in this ratio been decreasing? (LG 15-6)
21. How is the combined ratio defined? What does it measure? (LG 15-6)
22. What is the investment yield on premiums earned? Why has this ratio become so important to property-casualty insurers? (LG 15-6)



