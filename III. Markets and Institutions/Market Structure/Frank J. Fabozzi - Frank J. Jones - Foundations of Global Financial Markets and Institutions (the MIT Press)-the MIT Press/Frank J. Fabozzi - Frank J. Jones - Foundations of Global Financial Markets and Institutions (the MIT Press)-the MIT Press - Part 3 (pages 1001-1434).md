---
title: "Frank J. Fabozzi - Frank J. Jones - Foundations of Global Financial Markets and Institutions (The MIT Press) - The MIT Press - Part 3 (Pages 1001-1434)"
parent_directory: "Frank J. Fabozzi - Frank J. Jones - Foundations of Global Financial Markets and Institutions (the MIT Press)-the MIT Press"
formatted: "2025-12-21 08:30:00 AM"
formatter_model: claude-sonnet-4-5-20250929
cli_tool: opencode
primary_tags:
  - mortgage backed securities
  - prepayment risk
  - collateralized mortgage obligations
secondary_tags:
  - pass through securities
  - extension risk
  - contraction risk
  - conditional prepayment rate
  - single monthly mortality rate
  - psa benchmark
cssclasses: academia
---

Now let's look at what happens if mortgage rates rise to 9.5%. The price of the pass-through, like the price of any bond, will decline. But again, it will decline more, because the higher rates will tend to slow down the rate of prepayment, in effect increasing the amount invested at the coupon rate, which is lower than the market rate. Prepayments will slow down, because homeowners will not refinance or partially prepay their mortgages when mortgage rates are higher than the contractual rate of 7.5%. Of course, it is just the time when investors want prepayments to speed up, so that they can reinvest the prepayments at the higher market interest rate. This adverse consequence of rising mortgage rates is called **extension risk**.

Therefore, prepayment risk encompasses contraction risk and extension risk. Prepayment risk makes pass-throughs unattractive for certain financial institutions to hold from an asset/liability perspective. Let's look at why particular institutional investors may find pass-throughs unattractive:

1. Thrifts and commercial banks, as explained in chapter 4, want to lock in a spread over their cost of funds. Their funds are raised on a short-term basis. If they invest in fixed-rate pass-through securities, they mismatch, because a pass-through is a longer-term security. In particular, depository institutions are exposed to extension risk when they invest in pass-through securities.

2. To satisfy certain obligations of insurance companies, pass-through securities may be unattractive. More specifically, let's consider a life insurance company that has issued a four-year guaranteed investment contract. The uncertainty about the cash flow from a pass-through security, and the likelihood that slow prepayments will result in the instrument being long term, make it an unappealing investment vehicle for such accounts. In such instances, a pass-through security exposes the insurance company to extension risk.

3. A pension fund may want to fund a 15-year liability. Buying a pass-through security exposes the pension fund to the risk that prepayments will speed up and that the maturity of the investment will shorten to considerably less than 15 years. Prepayments speed up when interest rates decline, thereby forcing reinvestment of the prepaid amounts at a lower interest rate. In this case, the pension fund is open to contraction risk.

We can see that some institutional investors are concerned with extension risk and others with contraction risk when they purchase a pass-through security. Altering the cash flow of a pass-through so as to reduce the contraction risk and extension risk for institutional investors is explained later in this chapter when we cover CMOs.

**Prepayment conventions** The only way to project a cash flow is to make some assumption about the prepayment rate over the life of the underlying mortgage pool. The prepayment rate assumed is called the **prepayment speed**, or simply, **speed**.

The **conditional prepayment rate** (CPR) assumes that some fraction of the remaining principal in the pool is prepaid each year for the remaining term of the mortgage. The prepayment rate assumed for a pool is based on the characteristics of the pool (including its historical prepayment experience) and the current and expected future economic environment. It is referred to as a "conditional rate," because it is conditional on the remaining mortgage balance.

The CPR is an annual prepayment rate. To estimate monthly prepayments, the CPR must be converted into a monthly prepayment rate, commonly referred to as the **single-monthly mortality rate** (SMM). The following formula can be used to determine the SMM for a given CPR:

$$
SMM = 1 - (1 - CPR)^{1/12}
$$

Suppose that the CPR used to estimate prepayments is 6%. The corresponding SMM is 0.5143%.

An SMM of _w_ % means that approximately _w_ % of the remaining mortgage balance at the beginning of the month, less the scheduled principal payment, will prepay that month. That is,

$$
\text{Prepayment} = SMM \times (\text{Beginning Balance} - \text{Scheduled Principal Payment})
$$

For example, suppose that an investor owns a pass-through in which the remaining mortgage balance at the beginning of some month is \$290 million. Assuming that the SMM is 0.5143% and the scheduled principal payment is \$3 million, the estimated prepayment for the month is

The Public Securities Association (PSA) prepayment benchmark is expressed as a monthly series of annual prepayment rates. The PSA benchmark assumes that prepayment rates are low for newly originated mortgages and then speed up as the mortgages become seasoned.

The PSA benchmark assumes the following CPRs for 30-year mortgages:

1. A CPR of 0.2% for the first month, increased by 0.2% per year per month for the next 30 months, when it reaches 6% per year.

2. A 6% CPR for the remaining years.

This benchmark, referred to as "100% PSA," or simply, "100 PSA," is graphically depicted in figure 30.2. Mathematically, 100 PSA can be expressed as follows:

$$
\begin{cases}
\text{CPR} = 6\% \times \left(\frac{t}{30}\right) & \text{if } t \leq 30 \\
\text{CPR} = 6\% & \text{if } t > 30
\end{cases}
$$

where _t_ is the number of months since the mortgage originated.

```
Figure 30.2
```

Graphical depiction of 100 PSA.

Slower or faster speeds are then referred to as some percentage of PSA.

For example, "50 PSA" means one-half the CPR of the PSA benchmark prepayment rate; "150 PSA" means one and a half times the CPR of the PSA benchmark prepayment rate; "300 PSA" means three times the CPR of the benchmark prepayment rate. A prepayment rate of 0 PSA means that no prepayments are assumed.

The CPR is converted to an SMM using equation (30.1). For example, the SMMs for month 5, month 20, and months 31 through 360 assuming 100 PSA are calculated as follows:

For month 5:

$$
\text{CPR} = 6\% \times \frac{5}{30} = 1.0\%, \quad SMM = 1 - (1 - 0.01)^{1/12} \approx 0.0083\%
$$

For month 20:

$$
\text{CPR} = 6\% \times \frac{20}{30} = 4.0\%, \quad SMM = 1 - (1 - 0.04)^{1/12} \approx 0.0340\%
$$

For months 31 to 360:

$$
\text{CPR} = 6\%, \quad SMM = 1 - (1 - 0.06)^{1/12} \approx 0.0051\%
$$

Assuming 165 PSA, the SMMs for month 5, month 20, and months 31 through 360 are computed as follows:

For month 5:

$$
\text{CPR} = 1.65 \times 1.0\% = 1.65\%, \quad SMM = 1 - (1 - 0.0165)^{1/12} \approx 0.0137\%
$$

For month 20:

$$
\text{CPR} = 1.65 \times 4.0\% = 6.6\%, \quad SMM = 1 - (1 - 0.066)^{1/12} \approx 0.0562\%
$$

For months 31 to 360:

$$
\text{CPR} = 1.65 \times 6\% = 9.9\%, \quad SMM = 1 - (1 - 0.099)^{1/12} \approx 0.0846\%
$$

Notice that the SMM assuming 165 PSA is not just 1.65 times the SMM assuming 100 PSA. It is the CPR that is a multiple of the CPR assuming 100 PSA.

**Illustration of monthly cash flow construction** We now show how to construct a monthly cash flow for a hypothetical pass-through given a PSA assumption. For the purpose of this illustration, the underlying mortgages for this hypothetical pass-through are assumed to be fixed-rate, level-payment mortgages, and the pass-through rate is assumed to be 7.5%. Furthermore, it is assumed that the weighted average maturity (WAM) of the pool of mortgages is 357 months. [1]

Table 30.1 shows the cash flow for selected months assuming 100 PSA.

The cash flow breaks down into three components: (1) interest (based on the pass-through rate), (2) the regularly scheduled principal repayment, and (3) prepayments based on 100 PSA.

```
Table 30.1
```

Monthly cash flow for a \$400 million pass-through security (assuming 100 PSA).

Let's walk through table 30.1 column by column:

- Column 1 ("Month"): This indicates the month.
- Column 2 ("Outstanding Balance"): The outstanding mortgage balance at the beginning of the month equals the outstanding balance at the beginning of the previous month reduced by the total principal payment in the previous month.

- Column 3 ("SMM," Single-Monthly Mortality): The SMM for 100 PSA changes, based on the assumptions for the CPR. Two aspects of this column should be noted. First, for month 1, the SMM is for a pass-through that has seasoned three months; that is, the CPR is 0.8%, because the WAM is 357. Second, from month 27 on, the SMM is 0.00514, which corresponds to a CPR of 6%.

- Column 4 ("Mortgage Payment"): The total monthly mortgage payment declines over time as prepayments reduce the mortgage balance outstanding. A formula determines what the monthly balance will be for each month given prepayments. [2]

- Column 5 ("Net Interest"): The monthly interest paid to the pass-through investor is determined by multiplying the outstanding mortgage balance at the beginning of the month by the pass-through rate of 7.5% and dividing by 12.

- Column 6 ("Scheduled Principal"): The regularly scheduled principal repayment is the difference between the total monthly mortgage payment (the amount shown in column 4) and the gross coupon interest for the month. The gross coupon interest is 8.125% multiplied by the outstanding mortgage balance at the beginning of the month, then divided by 12.

- Column 7 ("Prepayment"): The prepayment for the month is found by using equation (30.2). So, for example, in month 100, the beginning mortgage balance is \$231,249,776, the scheduled principal payment is \$332,298, and the SMM at 100 PSA is 0.00514301 (only 0.00514 is shown in the table, to save space), so the prepayment is 1.00514301($231,249,776 − $332,928) = \$1,187,608.

- Column 8 ("Total Principal"): The total principal payment combines the scheduled principal payment and the prepayment amounts from columns 6 and 7.

- Column 9 ("Total Cash Flow"): The projected monthly cash flow for this pass-through is the sum of the interest paid to the pass-through investor in column 5 and the total principal payments for the month in column 8.

Table 30.2 shows selected monthly cash flows for the same pass-through but assuming 165 PSA.

```
Table 30.2
```

Monthly cash flow for a \$400 million pass-through security (assuming 165 PSA).

**Average Life** The stated maturity of a mortgage pass-through security is an inappropriate measure of the security's life because of prepayments. Instead, market participants commonly use the security's average life. The **average life** of an MBS is the average time to receipt of principal payments (scheduled principal payments and projected prepayments), weighted by the amount of principal expected. Mathematically, the average life is expressed as follows:

$$
\text{Average Life} = \frac{\sum_{t=1}^{T} t \times \text{Principal Payment}_t}{\sum_{t=1}^{T} \text{Principal Payment}_t}
$$

where _T_ is the number of months.

The average life of a pass-through depends on the PSA prepayment assumption. To see this, the average life (in years) is shown below for different prepayment speeds for the pass-through used to illustrate the cash flow for 100 PSA and 165 PSA in table 30.1 and table 30.2:

PSA speed 50 100 165 200 300 400 500 600 700

Average life 15.11 11.66 8.76 7.68 5.63 4.44 3.68 3.16 2.78

## U.S. Agency CMOs

Some institutional investors are concerned with extension risk and others with contraction risk when they invest in a pass-through. This problem can be mitigated by redirecting the cash flows of mortgage pass-through securities to different bond classes, called **tranches**, so as to create securities that have different exposure to prepayment risk and, therefore, risk/return patterns that differ from those of the pass-through securities from which the tranches were created.

When the cash flows of pools of mortgage pass-through securities are redistributed to different bond classes, the resulting securities are called **agency collateralized mortgage obligations**. The creation of an agency CMO cannot eliminate prepayment risk; it can only distribute the various forms of this risk among different classes of bondholders. The CMO's major financial innovation is that the securities created more closely satisfy the asset/liability needs of institutional investors and thus broaden the appeal of mortgage-backed products to traditional bond investors.

Rather than list the different types of tranches that can be created in a CMO structure, we show how the tranches can be created as an illustration of financial engineering. Although many different types of CMOs have been created, we look at just three of the key innovations in the CMO market: sequential-pay tranches, accrual tranches, and planned amortization class tranches. Two other important tranches that are not illustrated here are the floating-rate tranche and the inverse floating-rate tranche.

**Sequential-pay tranches** The first CMO was created in 1983 and was structured so that each class of bond would be retired sequentially. Such structures are referred to as **sequential-pay CMOs**. To illustrate a sequential-pay CMO, we discuss CMO-1, a hypothetical deal made up to illustrate the basic features of the structure. The collateral for this hypothetical CMO is a pass-through with a total par value of \$400 million and the following characteristics: (1) the pass-through coupon rate is 7.5%, (2) the WAC is 8.125%, and (3) the WAM is 357 months. We used this same pass-through earlier in the chapter to describe the cash flow of a pass-through based on some PSA assumptions.

From this \$400 million of collateral, four bond classes or tranches are created. Their characteristics are summarized in table 30.3. The total par value of the four tranches is equal to the par value of the collateral (i.e., the pass-through security). In this simple structure, the coupon rate is the same for each tranche and is also the same as the coupon rate on the collateral. In reality, the coupon rate typically varies by tranche.

```
Table 30.3
```

CMO-1: Hypothetical four-tranche, sequential-pay structure.

Tranche Par Amount ($) Coupon Rate (%)

A 194,500,000 7.5

B 36,000,000 7.5

C 96,500,000 7.5

D 73,000,000 7.5

Total 400,000,000

_Notes:_ The payment rules are as follows. 1. For payment of periodic coupon interest: Disburse periodic coupon interest to each tranche based on the amount of principal outstanding at the beginning of the period. 2. For disbursement of principal payments: Disburse principal payments to tranche A until it is completely paid off. After tranche A is completely paid off, disburse principal payments to tranche B until it is completely paid off. After tranche B is completely paid off, disburse principal payments to tranche C until it is completely paid off. After tranche C is completely paid off, disburse principal payments to tranche D until it is completely paid off.

We recall here that a CMO is created by redistributing the cash flow—interest and principal—to the different tranches based on a set of payment rules. The payment rules in the note at the bottom of table 30.3 describe how the cash flow from the pass-through (i.e., collateral) is to be distributed to the four tranches. Separate rules determine the payment of the coupon interest and the payment of the principal, the principal being the total of the regularly scheduled principal payment and any prepayments.

In CMO-1, each tranche receives periodic coupon interest payments based on the amount of the outstanding balance at the beginning of the month. The disbursement of the principal, however, is made in a special way. A tranche is not entitled to receive principal until the entire principal of the tranche before it in the priority structure is paid off. More specifically, tranche A receives all the principal payments until the entire principal amount owed to that bond class, \$194,500,000, is paid off; then tranche B begins to receive principal and continues to do so until it is paid the entire \$36,000,000. Tranche C then receives principal, and when it is paid off, tranche D starts receiving principal payments.

Although the priority rules for the disbursement of the principal payments are known, the precise amount of the principal in each period is not. This amount depends on the cash flow and therefore on the principal payments of the collateral, which depend on the actual prepayment rate of the collateral. An assumed PSA speed allows the cash flow to be projected.

Table 30.2 shows the cash flow (interest, regularly scheduled principal repayment, and prepayments) assuming 165 PSA. Assuming that the collateral does prepay at 165 PSA, the cash flow available to all four tranches in CMO-1 will be precisely the cash flow shown in table 30.2.

To demonstrate how the priority rules for CMO-1 work, table 30.4 shows the cash flow for selected months, assuming the collateral prepays at 165 PSA. For each tranche, the table shows (1) the balance at the end of the month, (2) the principal paid down (regularly scheduled principal repayment plus prepayments), and (3) interest. In month 1, the cash flow for the collateral consists of a principal payment of \$709,923 and an interest payment of \$2.5 million (0.075 × \$400 million/12). The interest payment is distributed to the four tranches based on the amount of the par value outstanding. So, for example, tranche A receives \$1,215,625 (0.075 × \$194,500,000/12) of the \$2.5 million. The principal, however, is all distributed to tranche A. Therefore, the cash flow for tranche A in month 1 is \$1,925,548. The principal balance at the end of month 1 for tranche A is \$193,790,076 (Original principal balance of \$194,500,000 − Principal payment of \$709,923). No principal payment is distributed to the three other tranches, because a principal balance is still outstanding for tranche A. This scenario will be true for months 2 through 80.

```
Table 30.4
```

Monthly cash flow for selected months for CMO-1 (assuming 165 PSA).

After month 81, the principal balance will be zero for tranche A. For the collateral, the cash flow in month 81 is \$3,318,521, consisting of a principal

payment of \$2,032,196 and an interest payment of \$1,286,325. At the

beginning of month 81 (end of month 80), the principal balance for tranche

A is \$311,926. Therefore, \$311,926 of the \$2,032,196 of the principal

payment from the collateral will be disbursed to tranche A. After this

payment is made, no additional principal payments are made to this tranche,

because the principal balance is zero. The remaining principal payment from

the collateral, \$1,720,271, is disbursed to tranche B. According to the

assumed prepayment speed of 165 PSA, tranche B then begins receiving

principal payments in month 81.

Table 30.4 shows that tranche B is fully paid off by month 100, which is

when tranche C begins to receive principal payments. Tranche C is not fully

paid off until month 178, at which time tranche D begins receiving the

remaining principal payments. The maturity (i.e., the time until the principal

is fully paid off) for these four tranches assuming 165 PSA would be 81

months for tranche A, 100 months for tranche B, 178 months for tranche C,

and 357 months for tranche D.

Let's look at what has been accomplished by creating the CMO. First, as

shown earlier in this chapter, the average life for the pass-through is 8.76

years, assuming a prepayment speed of 165 PSA. Table 30.5 reports the

average life of the collateral and the four tranches, assuming different

prepayment speeds. Notice that the four tranches have average lives that are

both shorter and longer than the collateral, thereby attracting investors who

have a preference for an average life different from that of the collateral.

```
Table 30.5

```

Average life for the collateral and the four tranches of CMO-1 (years).

A major problem remains: The average life for the tranches varies considerably. We see how this issue can be tackled later in this chapter.

However, some protection is provided for each tranche against prepayment

risk. Prioritizing the distribution of principal (i.e., establishing the payment

rules for principal) effectively protects the shorter-term tranche A in this

structure against extension risk. This protection must come from somewhere,

so it comes from the three other tranches. Similarly, tranches C and D

provide protection against extension risk for tranches A and B. At the same

time, tranches C and D benefit, because they are provided protection against

contraction risk, the protection coming from tranches A and B.

**`Accrual tranches`** In CMO-1, the payment rules for interest provide for all
tranches to be paid interest each month. In many sequential-pay CMO
structures, at least one tranche does not receive current interest. Instead, the
interest for that tranche would accrue and be added to the principal balance.
Such a bond class is commonly referred to as an **accrual tranche**, or a **Z**
**bond** (because the bond is similar to a zero-coupon bond). The interest that
would have been paid to the accrual bond class is then used to accelerate
paying down the principal balance of earlier bond classes.

To see this process, consider CMO-2, a hypothetical CMO structure with

the same collateral as CMO-1 and with four tranches, each with a coupon

rate of 7.5%. The structure is shown in table 30.6. The difference is in the

last tranche, Z, which is an accrual bond.

```
Table 30.6
```

CMO-2: Hypothetical four-tranche sequential-pay structure with an accrual bond class.

Tranche Par Amount ($) Coupon Rate (%)

A 194,500,000 7.5

B 36,000,000 7.5

C 96,500,000 7.5

Z (Accrual) 73,000,000 7.5

Total 400,000,000

_Notes:_ Payment rules: 1. For payment of periodic coupon interest: Disburse periodic coupon interest to tranches A,

B, and C based on the amount of principal outstanding at the beginning of the period. For tranche Z, accrue the

interest based on the principal plus accrued interest in the previous period. The interest for tranche Z is to be paid

to the earlier tranches as a principal paydown. 2. For disbursement of principal payments: Disburse principal

payments to tranche A until it is completely paid off. After tranche A is completely paid off, disburse principal

payments to tranche B until it is completely paid off. After tranche B is completely paid off, disburse principal

payments to tranche C until it is completely paid off. After tranche C is completely paid off, disburse principal

payments to tranche Z until the original principal balance plus accrued interest is completely paid off.

Let's look at month 1 and compare it to month 1 in table 30.4, based on

165 PSA. The principal payment from the collateral is \$709,923. In CMO-1,

this amount is the principal paydown for tranche A. In CMO-2, the interest

for tranche Z, \$456,250 (see table 30.4), is not paid to that tranche but

instead is used to pay down the principal of tranche A. So the principal

payment to tranche A is \$1,166,173, which is obtained from the collateral's

principal payment of \$709,923 (see table 30.2) plus the interest of \$456,250

(see table 30.4) that was diverted from tranche Z.

The inclusion of the accrual tranche results in a shortening of the

expected final maturity for tranches A, B, and C. It turns out that the final

payout for tranche A is 64 months rather than 81 months, for tranche B it is

77 months rather than 100 months, and for tranche C it is 112 rather than

178 months.

The average lives for tranches A, B, and C are shorter in CMO-2

compared to CMO-1 because of the inclusion of the accrual bond. For

example, at 165 PSA, the average lives (in years) are as follows:

Structure Tranche A Tranche B Tranche C

CMO-2 2.90 5.86 7.87

CMO-1 3.48 7.49 11.19

The reason for the shortening of the nonaccrual tranches is that the

interest that would be paid to the accrual bond is being allocated to the other

tranches. Tranche Z in CMO-2 will have a longer average life than tranche D

in CMO-1.

Thus, shorter-term tranches and a longer-term tranche are created by

including an accrual bond. The accrual bond appeals to investors who are

concerned with reinvestment risk. The lack of coupon payments that must be

reinvested eliminates reinvestment risk until all the other tranches are paid off.

**`Planned amortization class tranches`** In the 1980s, many investors
were still concerned about investing in an instrument they continued to
perceive as posing significant prepayment risk because of the substantial
average life variability, despite the innovations designed to reduce
prepayment risk. Traditional corporate bond buyers sought a structure with
both the characteristics of a corporate bond (either a bullet maturity or a
sinking fund type of schedule for principal repayment) and high credit

quality. Although CMOs satisfied the second condition, they did not satisfy

the first.

In 1987, CMO issuers began issuing bonds with the characteristic that if

prepayments are in a specified range, the cash flow pattern is known. The

greater predictability of the cash flow for these classes of bonds, referred to

as **planned amortization class (PAC) bonds**, occurs because of a principal

repayment schedule that must be satisfied. PAC bond-holders take priority

over all other classes in the CMO issue in receiving principal payments from
the underlying collateral. The greater certainty of the cash flow for the PAC
bonds comes at the expense of the non-PAC classes, called the **support or companion bonds**. These bonds absorb the prepayment risk. Because PAC
bonds have protection against both extension risk and contraction risk, they
are said to provide **two-sided prepayment protection** .

To illustrate how to create a PAC bond, we use as collateral the \$400

million pass-through with a coupon rate of 7.5%, a WAC of 8.125%, and a

WAM of 357 months. The second column of table 30.7 shows the principal

payment (regularly scheduled principal repayment plus prepayments) for

selected months assuming a prepayment speed of 90 PSA. The next column

shows the principal payments for selected months, assuming that the passthrough prepays at 300 PSA.

```
Table 30.7
```

Monthly principal payment for \$400 million, 7.5% coupon pass-through (assuming prepayment rates of 90 PSA

and 300 PSA).

Month At 90 PSA ($) At 300 PSA ($) Minimum Principal Payment—PAC Schedule ($)

1 508,169.52 1,075,931.20 508,169.52

2 569,843.43 1,279,412.11 569,843.43

3 631,377.11 1,482,194.45 631,377.11

4 692,741.89 1,683,966.17 692,741.89

5 753,909.12 1,884,414.62 753,909.12

6 814,850.22 2,083,227.31 814,850.22

7 875,536.68 2,280,092.68 875,536.68

8 935,940.10 2,474,700.92 935,940.10

9 996,032.19 2,666,744.77 996,032.19

10 1,055,784.82 2,855,920.32 1,055,784.82

11 1,115,170.01 3,041,927.81 1,115,170.01

12 1,174,160.00 3,224,472.44 1,174,160.00

13 1,232,727.22 3,403,265.17 1,232,727.22

14 1,290,844.32 3,578,023.49 1,290,844.32

15 1,348,484.24 3,748,472.23 1,348,484.24

16 1,405,620.17 3,914,344.26 1,405,620.17

17 1,462,225.60 4,075,381.29 1,462,225.60

18 1,518,274.36 4,231,334.57 1,518,274.36

101 1,458,719.34 1,510,072.17 1,458,719.34

102 1,452,725.55 1,484,126.59 1,452,725.55

103 1,446,761.00 1,458,618.04 1,446,761.00

104 1,440,825.55 1,433,539.23 1,433,539.23

105 1,434,919.07 1,408,883.01 1,408,883.01

211 949,482.58 213,309.00 213,309.00

212 946,033.34 209,409.09 209,409.09

213 942,601.99 205,577.05 205,577.05

346 618,684.59 13,269.17 13,269.17

347 617,071.58 12,944.51 12,944.51

348 615,468.65 12,626.21 12,626.21

349 613,875.77 12,314.16 3,432.32

350 612,292.88 12,008.25 0

351 610,719.96 11,708.38 0

352 609,156.96 11,414.42 0

353 607,603.84 11,126.28 0

354 606,060.57 10,843.85 0

355 604,527.09 10,567.02 0

356 603,003.38 10,295.70 0

357 601,489.39 10,029.78 0

_Note:_ Pass-through rate = 7.5%; WAC = 8.125%; WAM = 357 months.

The last column of table 30.7 gives the _minimum_ principal payment if the

collateral speed is 90 PSA or 300 PSA for months 1 to 349. (After month

346, the outstanding principal balance will be paid off if the prepayment

speed is between 90 PSA and 300 PSA.) For example, in the first month, the

principal payment would be \$508,169.52 if the collateral prepays at 90 PSA

and \$1,075,931.20 if the collateral prepays at 300 PSA. Thus, the minimum

principal payment is \$508,169.52, as reported in the last column of table

30.7. In month 103, the minimum principal payment is also the amount if the

prepayment speed is 90 PSA, \$1,446,761, compared to \$1,458,618.04 for

300 PSA. In month 104, however, a prepayment speed of 300 PSA would

produce a principal payment of \$1,433,539.23, which is less than the

principal payment of \$1,440,825.55 assuming 90 PSA. So, \$1,433,539.23 is

reported in the last column of table 30.7. In fact, from month 104 on, the

minimum principal payment is the one that would result assuming a

prepayment speed of 300 PSA.

In fact, if the collateral prepays at any speed between 90 PSA and 300

PSA, the minimum principal payment would be the amount reported in the

last column of table 30.7. For example, if we had included principal payment

figures assuming a prepayment speed of 200 PSA, the minimum principal

payment would not change: from month 11 through month 103, the

minimum principal payment is that generated from 90 PSA, but from month

104 on, the minimum principal payment is that generated from 300 PSA.

This characteristic of the collateral allows for the creation of a PAC bond,

assuming that the collateral prepays over its life at a constant speed between

90 PSA and 300 PSA. A schedule is specified of principal repayments that

the PAC bondholders are entitled to receive before any other bond class in

the CMO. The monthly schedule of principal repayments is as specified in

the last column of table 30.7, which shows the minimum principal payment.

Although collateral prepayment between these two speeds cannot be

guaranteed, a PAC bond can be structured to assume that it is.

Table 30.8 shows a CMO structure, CMO-3, created from the \$400

million, 7.5% coupon pass-through with a WAC of 8.125% and a WAM of

357 months.

```
Table 30.8
```

CMO-3 structure with one PAC bond and one support bond.

Tranche Par Amount ($) Coupon Rate (%)

P (PAC) 243,800,000 7.5

S (Support) 156,200,000 7.5

Total 400,000,000

_Note:_ Payment rules: 1. For payment of periodic coupon interest: Disburse periodic coupon interest to each tranche

based on the amount of principal outstanding at the beginning of the period. 2. For disbursement of principal

payments: Disburse principal payments to tranche P based on its schedule of principal repayments. Tranche P has

priority with respect to current and future principal payments to satisfy the schedule. Any excess principal

payments in a month over the amount necessary to satisfy the schedule for tranche P are paid to tranche S. When

tranche S is completely paid off, all principal payments are to be made to tranche P regardless of the schedule.

The two bond classes in this structure are a 7.5% coupon PAC bond

created assuming 90 to 300 PSA with a par value of \$243.8 million, and a

support bond with a par value of \$156.2 million.

Table 30.9 reports the average life for the PAC bond and the support bond

in CMO-3, assuming various _actual_ prepayment speeds. Notice that between

90 PSA and 300 PSA, the average life for the PAC bond is stable at 7.26

years. However, at slower or faster PSA speeds, the schedule is broken, and

the average life changes, lengthening when the prepayment speed is less than

90 PSA and shortening when it is greater than 300 PSA. Even so, much

greater variability characterizes the average life of the support bond, which

is substantial.

```
Table 30.9
```

Average life for PAC bond and support bond in CMO-3, assuming various prepayment speeds (years).

Prepayment Rate (PSA) PAC Bond (P) Support Bond (S)

0 15.97 27.26

50 9.44 24.00

90 7.26 18.56

100 7.26 18.56

150 7.26 12.57

165 7.26 11.16

200 7.26 8.38

250 7.26 5.37

300 7.26 3.13

350 6.56 2.51

400 5.92 2.17

450 5.38 1.94

500 4.93 1.77

700 3.70 1.37

```
U.S. Agency Stripped MBSs

```

**Agency stripped mortgage-backed securities**, introduced by Fannie Mae
in 1986, are another example of derivative mortgage securities. A mortgage
pass-through security divides the cash flow from the underlying pool of
mortgages on a pro rata basis to the security holders. A stripped MBS is
created by altering that distribution of principal and interest from a pro rata
distribution to an unequal distribution. As a result, some of the securities
created demonstrate a price/yield relationship different from that of the
underlying mortgage pool. Stripped MBSs, if properly used, provide a
means by which investors can hedge prepayment risk.

The first generation of stripped MBSs were partially stripped, and among

them were securities issued by Fannie Mae in mid-1986. The Class B

stripped MBSs were backed by Fannie Mae (FNMA) pass-through securities

with a 9% coupon. The mortgage payments from the underlying mortgage

pool were distributed to Class B-1 and Class B-2, so that both classes

received an equal amount of the principal, but Class B-1 received one-third

- f the interest payments, whereas Class B-2 received two-thirds.

In a subsequent issue, Fannie Mae distributed the cash flow from the

underlying mortgage pool in a far different way. Using Fannie Mae 11%

coupon pools, Fannie Mae created Class A-1 and Class A-2. Class A-1 was

given 4.95% of the 11% coupon interest, and Class A-2 received the other

6.05%. Class A-1 was given almost all the principal payments (99%),

whereas Class A-2 was allotted only 1% of the principal payments.

In early 1987, stripped MBSs began to be issued that allocated all the

interest to one class (called the _interest-only_ - r IO class) and all the principal

to the other class (called the _principal-only_ - r PO class). The IO class

receives no principal payments. IO and PO securities are also referred to as

**mortgage strips** .

The PO security is purchased at a substantial discount from par value.

The yield an investor realizes depends on the speed at which prepayments

are made. The faster the prepayments are made, the higher the investor's

yield will be. For example, suppose a mortgage pool consists of only 30-year

mortgages, with \$400 million in principal, and that investors can purchase

POs backed by this mortgage pool for \$175 million. The dollar return on this

investment will be \$225 million. How quickly that dollar return is recovered

by PO investors determines the yield realized. In the extreme case, if all

home owners in the underlying mortgage pool decide to prepay their loans

immediately, PO investors will realize the \$225 million immediately. At the

- ther extreme, if all home owners decide to remain in their homes for 30
years and make no prepayments, the \$225 million will be spread out over 30
years, which would result in a lower yield for PO investors.

The price of a PO security rises when interest rates decline, and it falls

when interest rates rise. This price/interest relationship is typical of all the

bonds discussed thus far in this book. A characteristic of a PO security is

that its price is sensitive to changes in interest rates.

An IO security has no par value. In contrast to the PO investor, the IO

investor wants prepayments to be slow, because the IO investor receives

interest only on the amount of the principal outstanding. When prepayments

are made, less dollar interest will be received as the outstanding principal

declines. In fact, if prepayments are too fast, the IO investor may not recover

the amount paid for the IO security. The unique aspect of an IO security is

_same_

that its price changes in the direction as the change in interest rates.

Moreover, as in the case of the PO security, its price is highly responsive to a

change in interest rates.

Because of these price volatility characteristics of stripped MBSs,

institutional investors use them to control the risk of a portfolio of MBSs by

creating a risk/return pattern that better fits their needs.

```
Private-Label RMBSs

```

Private-label RMBSs (also referred to as "nonagency RMBSs") are RMBSs

issued by entities other than Ginnie Mae, Fannie Mae, and Freddie Mac.

Private-label RMBS are issued through the conduits of (1) commercial banks

(e.g., Citigroup's CitiMortgage), (2) investment banking firms, and (3)

entities not associated with either commercial banks or investment banking

firms.

At one time, the private-label RMBS market was classified into two

sectors, the prime sector and the subprime sector. The distinction was based

- n the type of borrowers in the pool of mortgage loans. As explained in

chapter 29, mortgage loans can be classified as prime loans and subprime

loans. The latter are loans made to borrowers with an impaired credit history

- r when the loan is not a first lien on the property. The convention in the
RMBS market was to classify prime deals as private-label RMBSs but
subprime deals as consumer loans, referred to as mortgage-related ABSs.
Subprime deals include home equity loans and manufactured housing loans.
After the meltdown of the subprime mortgage market in 2007, which we
describe shortly, there has been little issuance of subprime deals, and the
market tends not to distinguish between prime and subprime deals.

For agency mortgage-related securities described in the previous section,

we noted that there are pass-through securities, CMOs, and stripped MBSs.

Typically, the structure that is used for a private-label RMBS is the CMO

structure. The creation of a private-label CMO is different from that of an

agency CMO. When describing agency CMOs, we said that the process first

involves pooling loans to create an agency pass-through security. Then a

pool of agency pass-through securities is pooled to create an agency CMO.

In a private-label CMO, the loans are pooled and used to create different

bond classes (tranches).

Before 2007, deals could include all forms of credit enhancement

described that we described chapter 27. When sizing the credit enhancement,

subprime deals required considerably more credit enhancement than did

prime deals. In retrospect, it has been argued that the collapse of the

subprime mortgage market can be attributed to insufficient credit

enhancement.

```
Credit Enhancement

```

Unlike agency RMBSs, private-label CMOs are rated by one or more of the

credit rating agencies. Because there is no government or GSE guarantee, to

receive an investment-grade rating, these securities must be structured with

additional credit support. The credit support is needed to absorb expected

losses from the underlying loan pool due to defaults. As explained in chapter

27, this additional credit support is referred to as a **credit enhancement** .

Credit enhancements come in different forms: (1) senior-subordinate

structure, (2) excess spread, (3) overcollateralization, and (4) monoline

insurance. We describe these forms briefly here. These same forms of credit

enhancement are used by corporations in the creation of ABS structures to

- btain funding, as covered in chapter 27.

When commercial rating agencies assign a rating to the tranches in a

private-label CMO, they look at the credit risk associated with a tranche.

Basically, that analysis begins by looking at the credit quality of the

underlying pool of mortgage loans. For example, a pool of loans can consist

- f prime borrowers or subprime borrowers. Obviously, one would expect
that a pool consisting of prime borrowers would have fewer expected losses
as a percentage of the dollar amount of the loan pool compared to a pool
consisting of subprime borrowers. Given the credit quality of the borrowers
in the pool and other factors (such as the structure of the transaction), a
rating agency will determine the dollar amount of the credit enhancement
needed for a particular tranche to receive a specific credit rating. The process
by which the rating agencies determine the amount of credit enhancement
needed is referred to as "sizing the transaction."

There are standard mechanisms for providing credit enhancement in

private-label CMOs. We describe these mechanisms below.

**`Senior-subordinate structure`** In a **senior-subordinate structure**, two
general categories of tranches are created: a senior tranche and subordinate
tranches. For example, consider the following hypothetical private-label
CMO structure consisting of \$400 million of collateral:

Notice that there are seven tranches in this transaction. The tranche with

the highest rating is referred to as the **senior tranche** . The **subordinate**

**tranches** are those below the senior tranche.

Tranche Principal Amount Credit Rating

X1 \$350 million AAA

X2 \$20 million AA

X3 \$10 million A

X4 \$5 million BBB

X5 \$5 million BB

X6 \$5 million B

X7 \$5 million Not rated

The rules for the distribution of the cash flow (interest and principal)

among the tranches as well as how losses are to be distributed are explained

in the prospectus. These rules are referred to as the deal's **waterfall** .

Basically, the losses are distributed based on the tranche's position in the

structure. Losses run from the bottom (the lowest or unrated tranche) to the

senior tranche. For example, if over the life of this private-label CMO, the

losses are less than \$5 million, only tranche X7 will realize a loss. If the loss

is, say, \$15 million, tranches X7, X6, and X5 will realize total losses and the

- ther tranches no losses.

Note a few points about this structure. First, the credit enhancement for

tranches is being provided by other tranches in the structure. For example,

the senior tranche, X1, is being protected against losses up to \$50 million.

This is because it is only when \$50 million of losses are realized that tranche

X1 will realize a loss. Tranche X4 has credit enhancement of \$15 million,

because the collateral can realize \$15 million in losses before tranche X4

realizes a loss.

Second, compare what is being done to distribute credit risk in this

private-label CMO compared to an agency CMO. In an agency CMO, there

is no credit risk. What is being done when creating the different tranches is

the redistribution of prepayment risk. In contrast, in a private-label CMO,

there is both credit risk and prepayment risk. By creating the seniorsubordinate tranches, credit risk is being redistributed among the tranches in

the structure. Hence, what is being done is **credit tranching** . Can

prepayment risk also be redistributed? This is typically done in private-label

CMOs but only at the senior tranche level. That is, the \$350 million of senior

tranches in our hypothetical private-label CMO structure can be carved up to

create senior tranches with different exposures to prepayment risk.

Finally, when the tranches are sold in the market, they are sold at

different yields. Obviously, the lower the credit rating of a tranche is, the

higher is the yield at which it must be offered.

**`Excess spread  Excess spread`** is basically the interest from the collateral
that is not being used to satisfy the liabilities (i.e., the interest payments to
the tranches in the structure) and the fees (such as mortgage servicing and
administrative fees). The excess spread can be used to help offset any losses.

If the excess spread is retained in the structure rather than paid out, it can be

accumulated in a reserve account and used to pay not only current losses

experienced by the collateral but also future losses. Hence, excess spread is a

form of credit enhancement. Because the loan rate on subprime loans is

greater than that on prime loans and because the expected losses are greater

for subprime loans, excess spread is an important source of credit

enhancement for subprime RMBS.

**`Overcollateralization`** In our hypothetical nonagency CMO, the
liabilities are \$400 million and are assumed to match the amount of the
collateral. Suppose instead that the collateral has a par value of \$405 million.
In this case, the assets exceed the liabilities by \$5 million. This excess
collateral is referred to as **overcollateralization** and can be used to absorb

losses. Hence, it is a form of credit enhancement.

Overcollateralization is more commonly used as a form of credit

enhancement in subprime deals than in prime deals. This is one of the

aspects that makes subprime deals more complicated, because a series of

tests is built into the structure to determine when collateral can be released.

**`Monoline insurance`** In Chapter 8, we discussed life insurance and
property and casualty insurance companies. Some insurance companies, by
charter, provide only financial guarantees. These insurance companies are
called **monoline insurance companies** . These companies provide the
guaranty for insured municipal bonds in the United States. For RMBSs, they
provide the same function, and therefore this is viewed as a form of credit
enhancement.

```
The Subprime Mortgage Crisis and Securitization

```

In the summer of 2007 the subprime mortgage market experienced a crisis,

which led to a credit and liquidity crisis that had a ripple effect on other

sectors of the credit and equity markets. This episode in the history of

financial markets is referred to as the **subprime mortgage crisis** .

In keeping with the history of financial innovation bashing, there have

been overreactions, misinformation, and widely differing viewpoints

regarding this crisis. Some market observers saw it as the inevitable bursting

- f the "housing bubble" that had characterized the housing market in prior
years. Others viewed it as the product of unsavory practices by mortgage
lenders who deceived subprime borrowers into purchasing homes they could
not afford. Moreover, specific mortgage designs, such as hybrid loans, which
made it possible for a subprime borrower to obtain a loan, could have been
expected to cause financial difficulties in the future when loan rates were
adjusted upward as part of the loan agreement.

Of course, mortgage lenders blamed borrowers for misleading them.

Others laid the blame at the feet of Wall Street bankers who packaged

subprime loans into bonds and sold them to investors, citing the arguments

described earlier in this chapter regarding the originate-to-distribute

approach pursued by financial institutions.

Whatever the precise cause, it is hard to deny that securitization—the

financial framework that allowed Wall Street to package these loans into

MBSs—is of enormous benefit to the economy. Securitization has increased

the supply of credit to homeowners and reduced the cost of borrowing. It

also spreads the risk among a larger pool of investors rather than

concentrating it in a small group of banks and thrifts, and it makes credit

available to a wider group of borrowers. Critics of securitization argue that

such borrowers may not be suitable candidates for loans. These critics claim

that the only reason a lender would make such loans is because it does not

hold the loans on its balance sheet; instead, it sells them in the market, either

to a conduit that will securitize the loans or by securitizing them itself.

Although it can be argued that not all those who were shut out from the

market prior to securitization were in fact weak borrowers, the empirical

evidence discussed earlier about the underwriting practice associated with

the securitization of subprime loans appears to support the position that

standards may have been lax. However, that is an attack on underwriting

standards for the mortgage sector and not a reason for attacking

securitization in general. As we stated earlier in this chapter, securitization is

an important and legitimate way for the financial markets to function more

efficiently today than in the past. It is not a smoke-and-mirrors financial

structure that fraudulent companies have used to hide the true nature of their

- perations. Although sometimes complex, real securitization generally takes

place in regulated debt markets and with the participation of sophisticated

parties—such as underwriters, loan servicers, institutional investors, rating

agencies, and monoline insurance companies—that provide financial

guarantees. Each of these entities has a unique role to play that helps

produce a balanced—but not a riskless—result.

Credit rating agencies (CRAs) were also viewed by some market

- bservers as having contributed in a major way to the crisis. To aid investors
when comparing the relative credit risk of securities, issuers generally ask

- ne or more CRAs to assign a credit rating to the securitization. Although no
- ne, not even the rating agencies, can always accurately predict the
performance of a bond over time, the agencies' long-term track record is
solid. As explained in chapter 5 credit ratings are opinions about future
performance. CRAs are not asset managers. They provide an initial
screening for asset managers to help determine which bond classes might be
suitable candidates for further credit analysis. Credit ratings are not a
substitute for the due diligence that should be exercised by investors who
claim to be experts on fixed-income securities.

What is surprising to many is why the crisis occurred in July 2007. There

was no new information in the market at the time. Investors knew well

before that time all about the potential defaults. Moreover, since 2005, the

CRAs had taken actions that were transparent to the market. Specifically, the

CRAs adjusted their criteria and assumptions regarding how they were rating

subprime RMBS transactions, they downgraded some issues, and they

publicly commented on their concerns about the subprime sector.

The impact of the subprime mortgage crisis on the financial markets was

devastating. But the suggestion that securitization caused the subsequent

global financial crisis would be wrong. In a speech by Robert Steel, then

undersecretary of the U.S. Department of the Treasury, before the American

Securitization Forum on February 5, 2008, Steel stated:

The securitization market is an example of how this incredible pace of innovation has changed

financial markets. Secretary Paulson and I have been very clear—we believe that the benefits of

securitization are significant. It enables investors to improve their risk management, achieve better risk

adjusted returns and access more liquidity. [3]

```
Key Points

```

- The residential mortgage-backed securities (RMBS) market is divided into
two sectors, agency MBS and private-label MBS.

  - MBSs issued by Ginnie Mae, Fannie Mae, and Freddie Mac are
included in the agency MBS sector.

   - The loans used as collateral in agency MBSs are conforming loans.
  - Agency MBSs include pass-through securities, collateralized
mortgage obligations (CDOs), and stripped MBSs.

   - To project the cash flow of a pool of mortgages, it is necessary to
make some assumption about the prepayment rate over the life of the
mortgage pool.

   - The conditional prepayment rate (CPR) assumes that some fraction of
the remaining principal in the pool is prepaid each year for the
remaining term of the mortgage.

   - A prepayment model is estimated based on the characteristics of the
pool (including its historical prepayment experience) and the current
and expected future economic environment.

   - To estimate monthly prepayments, the CPR (an annual rate) must be
converted into a monthly prepayment rate, commonly referred to as the
single-monthly mortality rate (SMM).

   - The Public Securities Association (PSA) prepayment benchmark is a
monthly series of CPRs that assumes that prepayment rates are low for
newly originated mortgages and then speed up as the mortgages
become seasoned; slower or faster speeds are then referred to as some
percentage of the PSA benchmark.

   - The average life of an MBS is the average time to receipt of principal
payments (scheduled principal payments and projected prepayments)
weighted by the amount of principal expected.

  - A mortgage pass-through security is created when one or more
holders of loans form a collection (pool) of loans and sell shares or
participation certificates in the pool.

   - Collateralized mortgage obligations (CMOs) are created from passthrough securities to address the prepayment risks associated with
investing in pass-through securities: contraction risk and extension risk.

   - A CMO sets forth rules for the distribution of interest and principal
repayment to the different bond classes in the structure.

   - CMO tranches are created to meet the different needs of institutional

investors.

   - Agency CMOs are an example of time tranching.
   - Like a CMO, a stripped MBS is created from a pass-through security.
   - The purpose of creating a stripped MBS is to provide an instrument
that can be used to control the risk of a portfolio of mortgage-related
securities.

   - The private-label RMBS market was at one time classified into prime
RMBS and subprime RMBS sectors, according to the credit quality of
the borrowers.

   - Subprime RMBS structures are more complicated and require more
credit enhancement than prime RMBS structures.

   - The subprime mortgage meltdown began in the summer of 2007 and
has been attributed to the collapse of the subprime housing finance
market.

```
Questions

```

1. What is a mortgage pass-through security?
2. Describe the cash flow of a mortgage pass-through security.
3. What are the different types of agency pass-through securities?
4. What is meant by "prepayment risk," "contraction risk," and
"extension risk"?

5. Why would a pass-through security be an unattractive investment for
a savings and loan association?

6. What is meant by the "average life" of a pass-through security?
7. Why is an assumed prepayment speed necessary to project the cash
flow of a pass-through security?

8. A cash flow for a pass-through security is typically based on some
prepayment benchmark. Describe the benchmark.

9. What does a conditional prepayment rate of 8% mean?
10. What does "250 PSA" mean?
11. Why is a sequential-pay bond class an example of time tranching?
12. How does a collateralized mortgage obligation (CMO) alter the
cash flow from mortgages so as to shift the prepayment risk across
various classes of bondholders?

13. "The creation of a CMO eliminates the prepayment risk associated
with the underlying mortgages." Explain why you agree or disagree
with this statement.

14. Explain the effect of including an accrual tranche in a CMO
structure on the average lives of the sequential-pay structures.

15. What types of investor would be attracted to an accrual bond?
16. What was the motivation for the creation of PAC bonds?
17. Describe how the schedule for a PAC tranche is created.
18. a. Why is it necessary for a private-label RMBS to have credit
enhancement?

b. Who determines the amount of credit enhancement needed?

19. a. What is meant by a "senior-subordinate structure"?

b. Why is the senior-subordinate structure a form of credit enhancement?

20. How can excess spread be a form of credit enhancement?
21. It is necessary to calculate a WAM for a pool of mortgages, because not all mortgages have the
same number of months remaining to maturity.

22. The formula is presented in Frank J. Fabozzi, _Fixed Income Mathematics: Analytical and_
_Statistical Techniques_ (New York: McGraw-Hill, 2006), chapter 21.

23. Robert Steel, speech delivered at the American Securitization Forum Annual Conference, Las
[Vegas, February 5, 2008, http://www.ustreas.gov/press/releases/hp808.htm.](http://www.ustreas.gov/press/releases/hp808.htm)

# **`31`**

```
Commercial Real Estate Markets

CONTENTS

```

**Learning Objectives**

**Categories of the Commercial Real Estate Market**

**Primary Reasons Offered for Investing in Commercial Real Estate**

Portfolio Diversifier and Risk Reducer

Absolute Returns or Risk-Adjusted Returns

Inflation Hedge

Reasonable Reflection of the Investment Universe

Strong Cash Flows

**Private Commercial Real Estate Equity**

Commercial Property Indexes

**Public Commercial Real Estate Equity**

Public Nontraded REITs

**Private Commercial Real Estate Debt**

**Public Commercial Real Estate Debt**

Commercial Mortgage-Backed Securities

CMBS structure

Illustration of a CMBS deal

How CMBSs trade in the market

**Investors in the Commercial Real Estate Market**

**Key Points**

**Questions**

```
Learning Objectives

```

After reading this chapter, you will understand:

   - what commercial property is and the different types of commercial

property;

   - the four categories of commercial real estate: private commercial
real estate equity; public commercial real estate equity, private
commercial real estate debt, and public commercial real estate debt;

   - the primary reasons for investing in commercial real estate;
   - the major commercial property indexes;
   - the various vehicles for investing in private commercial real estate
equity;

   - the structuring of public commercial real estate as real estate trusts
and real estate operating companies;

   - the different types of real estate investment trusts (REITs);
   - the ways in which private commercial real estate debt are held;
   - what commercial loans are and how they are structured;
   - how commercial mortgage loans differ from residential mortgage
loans;

   - the two indicators of performance used for evaluating commercial
mortgage loans—debt-to-service coverage ratio and loan-to-value
ratio;

  - the ways of investing in public commercial real estate debt:
commercial mortgage-backed securities and REITs that invest in
mortgage debt;

   - what a commercial mortgage-backed security (CMBS) is;
   - the structural features of a CMBS deal; and
   - the investors in the commercial real estate market.

The real estate market includes residential properties and commercial

properties. **Residential real estate** includes oneto four-family properties

and is the subject of chapter 30. **Commercial real estate** is incomeproducing properties. The major commercial property types are multifamily

housing, apartment buildings, office buildings, industrial properties

(including warehouses), shopping centers, hotels, health care facilities (e.g.,

senior housing care facilities), and timberlands. In this chapter, we discuss

the commercial real estate market.

```
Categories of the Commercial Real Estate Market

```

Prior to the introduction of the securitization of real estate–related equity

and debt, real estate was defined to include only investments in private

commercial real estate equity and private commercial real estate debt.

Insurance companies traditionally constructed portfolios composed of

individual private real estate mortgages. Pension funds and wealthy families

held direct investments in individual buildings and in commingled funds.

Given the absence of a secondary market for real estate debt and equity,

investors followed a buy-to-hold strategy.

With the advent of securitization in the 1960s, the definition of

commercial real estate investments has broadened. Today commercial real

estate investments include the following four categories: [1]

1. private commercial real estate equity,
2. public commercial real estate equity,
3. private commercial real estate debt, and
4. public commercial real estate debt.

Regardless of what category a commercial real estate investment falls

into, its return is responsive to a common set of factors. But there are

unique factors that impact real estate investments for specific categories.

Thus, the rationale for broadening the definition of real estate investment

beyond its historical definition of private debt and equity is that the factors

driving real estate returns for the two private categories are reflected, to a

greater or lesser degree, in the returns for the two public categories.

Investors are often explicitly or implicitly invested in all four categories,

and therefore are exposed to real estate behaviors in each category.

Consequently, when examining the reasons for commercial real estate

investing, we should consider the categories rather than accepting the

traditional reasons for the role of commercial real estate. These traditional

reasons were historically based only on the private equity and ignore not

- nly the other three categories available to investors but also the factors that
affect returns.

```
Primary Reasons Offered for Investing in Commercial Real Estate

```

The five primary reasons that have been offered for considering commercial

real estate as part of a portfolio are to:

1. reduce portfolio risk by combining asset classes that respond in
different ways to expected and unexpected events.

2. generate absolute returns that well exceed the risk-free rate.
3. hedge against unexpected inflation or deflation.
4. build a part of a portfolio that is a reasonable reflection of the

   - verall investment universe.

5. generate strong cash flows to the portfolio. [2]

Several studies have attempted to determine whether these reasons

- ffered for investing in real estate can be supported empirically. [3]
Investigating these alleged reasons empirically has been difficult. Even
what is a simple part of the empirical investigation—calculating market
returns for equities and fixed income securities—is controversial in the real
estate market. Moreover, research has to examine each of the four quadrants
rather than treat real estate as one asset class.

Below we summarize some of the studies dealing with the alleged

primary reasons for investment in real estate.

```
Portfolio Diversifier and Risk Reducer

```

Several studies find that the correlations between real estate and stocks, real

estate and bonds, and real estate and cash suggest that real estate can play a

significant role in a mixed-asset portfolio. [4] Recall the underlying principle

- f portfolio diversification and risk reduction as set forth by Markowitz and
explained in chapter 13. When two imperfectly related assets (i.e., having a
correlation coefficient less than 1.0) are included in a portfolio, there is an

- pportunity to construct a portfolio that has a higher expected return at each
level of risk, or equivalently, to reduce risk for a given level of expected

return. The risk is the portfolio's standard deviation. When the expected

return to an asset class is high enough, or the risk is low enough, or the

correlation of returns reflects a sufficiently different pattern of returns, an

allocation should be made to that asset class in the portfolio for at least a

portion of the return-risk spectrum. Commercial real estate satisfies these

requirements; therefore, some allocation should be made to it in a welldiversified mixed-asset portfolio.

```
Absolute Returns or Risk-Adjusted Returns

```

The second reason for investing in commercial real estate is that this asset

class can potentially generate high absolute returns or risk-adjusted returns

to a portfolio. One study reports that, on average, real estate did not

- utperform stocks and bonds in absolute terms from 1987 to 2004. [5]
However, in terms of total return per unit of risk, real estate outperformed
both stocks and bonds. Moreover, the study finds that real estate

- utperforms both stocks and bonds on a risk-adjusted basis using the Sharpe
ratio, a reward-risk ratio described in chapter 13.

The same study also offers evidence that provides justification for

including real estate in a portfolio from the perspective of risk-adjusted

returns. However, the authors of the study argue that it is not immediately

justifiable to include real estate for the sole reason of bringing high absolute

returns to the portfolio, because real estate is not reliable as a producer of

the highest absolute returns.

```
Inflation Hedge

```

Real estate is considered by some observers to be an inflation hedge for the

following reason: If the inflation rate exceeds the expected inflation rate,

then the returns on real estate will compensate for the surprise, helping

- ffset the negative response to excess inflation of other assets in the
portfolio. The question is whether this reason can be empirically supported.

Let's begin with the relationship of real estate returns. The relationship

is a complicated one, because the response to inflation differs for the four

major property types (i.e., offices, warehouses, retail, and apartments). A

return is composed of an income and price change component. Inflation

impacts the income and value components of the return in a different way

for each property type.

After discussing the impact on different property types and reviewing

the empirical evidence, one study concludes that although private equity

real estate is a very useful partial inflation hedge, the degree of inflationhedging capacity is not uniform across property types. [6] For publicly traded

forms of equity real estate, some benefits of the inflation hedge will be

captured but are less successful transmitters of this value than is private

equity. The reason is that the links to the stock market, which is generally

adversely impacted by inflation, are less successful in transmitting this

value. However, recent findings suggest that the returns on real estate

investment trusts (REITs) have become less highly correlated with stock

market returns, which could result in better inflation hedging by REITs.

Not surprisingly, the study does not find that the inflation-hedging

reason for investing in real estate applies to the two debt quadrants. As is

the case with most debt, real estate debt is not a good inflation hedge,

because unexpected inflation and concomitant increases in nominal interest

rates negatively impact the value of outstanding fixed-income securities

(mortgages and commercial mortgage-backed securities (CMBSs)).

```
Reasonable Reflection of the Investment Universe

```

It is argued that real estate belongs in a balanced investment portfolio,

because this asset class is an important part of the investment universe. The

- mission of real estate from a portfolio is fundamentally an investor's view
that real estate will perform less well than is implied by the market-driven
relative prices. Even if some allocation is made to real estate, capital market
theory suggests that any allocation that is less than real estate's overall
share in the investment universe implies a different view by the investor
from that of an indexed portfolio. Consequently, any underallocation to real
estate must be justified.

```
Strong Cash Flows

```

Investor needs vary for regular distributions of cash. Investors whose

- bjective is the maximization of total return relative to a benchmark return

find the need for strong cash flows to be less important than do investors

who need cash to satisfy current and near-term liabilities. For the latter

investors, the appeal of an asset class that exhibits strong cash flows is

important. The question is whether real estate fits the bill.

One study analyzes the relative income returns on real estate and

compares them with those of bonds and stocks. [7] This study finds that real

estate is a far superior producer of steady income for investors. For

investors who seek to earn a higher proportion of their total portfolio return

in the form of realized income rather than unrealized capital appreciation,

real estate offers a far greater chance of accomplishing this. This conclusion

applies to all four categories of real estate in terms of better production of

cash flows compared to stocks and bonds.

```
Private Commercial Real Estate Equity

```

**Private commercial real estate equity** is held by investors as individual
assets or in commingled vehicles. Individual investors can invest in private
commercial real estate equity via different investment vehicles. Historically,
efforts were made to design structures to allow individuals to participate in
the private real estate market. The most notable attempt is the limited
partnership syndications of the late 1970s and early 1980s. However, in the
United States, these design structures were short lived, because the tax
benefits were typically dependent on certain tax advantages. When the tax
law that allowed for such tax advantages was eliminated with the passage of
the Tax Reform Act of 1986, these tax-oriented design structures
disappeared.

The usual way that individual investors have obtained exposure to

commercial property has been through their pension plans. As explained in

chapter 3, in the United States there are two types of pension plans: defined

benefit plans and defined contribution plans. The former plans have had

sizeable allocations to real estate.

The difficulties with the collective investment vehicles that can be used

by individual investors to obtain exposure to private equity real estate are

twofold: the daily pricing of the portfolio holdings of real estate properties

and the liquidity requirement for defined contribution plans. Dealing with

the liquidity problem is addressed by the asset manager of the fund by

allocating more to cash than would be allocated in a traditional real estate

portfolio or a REIT. The major obstacle is the daily pricing in an industry

where pricing is typically done on a quarterly basis. The approaches that

have been suggested to deal with this difficulty include one or a

combination of the following: (1) rotating the appraisal of portfolio

properties throughout the quarter, (2) using a mark-to-model approach on a

daily basis between appraisals for each property, and (3) using regular

quarterly appraisals but also monitoring and revaluing properties any time

an event of economic significance occurs. Esrig, Kolasa, and Cerreta

discuss how target date funds can better satisfy the daily pricing and

liquidity needs of investors than can other types of private equity real estate.

Two more ways for individual investors to participate in the private

commercial real estate market are via private REITs and crowdfunded real

estate projects. In the United States, the shares of **private REIT** s are not

traded on an exchange; nor are they registered with the SEC. Instead, they

are issued under one or more of several exemptions to the securities laws.

More specifically, private REITs are issued under two rules set forth under

Regulation D. The first rule allows an issuer to sell securities to "accredited

investors," and the second (Rule 144A) exempts securities issued to

qualified institutional buyers. With respect to crowdfunding (discussed in

chapter 28), using one of various online crowdfunding platforms, individual

investors can search for potential real estate investments. The funds from

individual investors are then pooled to finance that real estate project.

Effectively, individuals participating in a real estate project are limited

partners. In 2014, it is estimated that \$1 billion was raised via real estate

crowdfunding. [8]

```
Commercial Property Indexes

```

With the increased interest in commercial real estate as an institutional asset

class came the development of commercial property indexes. Most

countries have property indexes. There are numerous commercial property

indexes, but we discuss only a few of the major ones here.

For the United States, the National Council of Real Estate Investment

Fiduciaries produces a family of property indexes (NPIs) that includes, in

addition to the national index, indexes for five property types (apartment,

industrial, office, retail, and hotel), as well as for four main regions of the

country. Appraised values are used to construct the NPI. Three types of

return indexes are created for each index: (1) total return; (2) income return;

and (3) capital appreciation return.

The Investment Property Databank (IPD) provides information about

commercial real estate in the United Kingdom and worldwide. Now a

member of the MSCI group, the IPD family of indexes includes the prices

- f the properties based on appraised values. The IPD UK index, for
example, is based on about 21,175 properties held by U.K. institutions,
trusts, partnerships and listed property companies.

The NPI and IPD indexes are calculated based on appraised values, but

the Moody's/Real Capital Analytics Commercial Property Price Indices are

based on real estate transactions that measure property prices at a national

level for U.S. apartment, retail, office, and industrial properties. There are

indexes for the main properties types and for select metropolitan statistical

areas.

```
Public Commercial Real Estate Equity

```

Public commercial real estate equity is structured as REITs or as **real estate**

**operating companies** (REOCs). REITs can invest in both equity and debt,
the former being a form of public real estate equity. We describe REITs in
more detail in chapter 32, which covers collective investment vehicles.

Both REITs and REOCs invest in real estate and issue shares to the

public that are traded on an exchange. However, there are two differences

between a REOC and a REIT. First, a REOC is afforded more flexibility

than a REIT as to the types of real estate investments in which they may

invest. Second, a REOC reinvests its earnings in the company rather than

distributing earnings to shareholders as a REIT does.

Equity REITs can be classified as diversified REITs, sector REITs, and

specialty REITs. As the name suggests, a **diversified REIT** invests in a mix

- f property types. **Sector REITs** are restricted to holdings of specific major

sectors of the real estate market, such as office REITs, industrial REITs,

retail REITs, lodging REITs, residential REITs, health care REITs, selfstorage REITs, and timberland REITs. **Specialty REITs** invest in a unique

mix of property types that are not included in the major REIT sectors, such

gas stations, golf courses, race tracks, and movie theaters.

Many developed and developing countries have legislation allowing for

the creation of a REIT. Here are a few examples:

    **United Kingdom.** Prior to 2006, in the United Kingdom the vehicle

by which investors obtained exposure to commercial real estate market

was via **listed property companies** . The Finance Act of 2006

(effective January 2007) allowed for the creation of REITs in the

United Kingdom, requiring that they be set up as investment trusts

listed on a stock exchange approved by the U.K. Financial Services

Authority. As in the United States, U.K. REITs are required to

distribute 90% of their income to investors. Because there were tax

advantages to investors available from REITs that were not available

from listed property companies, nine major listed property companies

that were members of the major U.K. equity market index, the FTSE

100, converted to REITs. To provide investors with greater

transparency and information about U.K. REITs, "Reita" was created

by the Quoted Property Group, set up by several commercial property

and financial services companies.

    **Germany.** Germany is the largest European real estate market, split

almost evenly between commercial and residential properties. Given

the large size of the real estate market, the development of an

investment vehicle, such as a REIT, was critical. In 2007, the law

allowing REITs was approved by the Ministry of Finance, with the

first REIT being the _altria Office REIT-AG_ in April 2007. German

REITs also have the 90% distribution rule and the requirement of the

stock being traded on an exchange.

    **Japan.** Legislation allowing for the creation of REITs was passed in
2001. Japanese REITs are traded on the Tokyo Stock Exchange.
Japan's first two REITs, both listed in 2001, were the Nippon Nippon

Building Fund Inc. and the Japan Real Estate Investment Corporation.

The Japanese REIT market was initially dominated by office

properties. In recent years, REITs have diversified and include a wider

range of properties from the major sectors.

    **Singapore.** Regulated as a collective investment vehicle under the

Monetary Authority of Singapore's Code on Collective Investment or

as a business trusts, the REIT was set up in July 2002. REITs in

Singapore can invest in a wide range of property sectors in China,

Hong Kong, Japan, Indonesia, and Hong Kong. Distribution of at least

90% of its annual income is required. The appealing tax benefit of

REITs in Singapore is not being taxed twice: income is taxed only at

the investor level and not at the REITs level.

    - **Brazil.** Referred to in Brazil as _Fundos de Investimento Imobili_ á _rio_,

REITs in Brazil were first introduced via legislation in 1993. In 2006,

the dividends paid by these REITs have been free of taxes for

individual investors (not companies), provided the fund has at least 50

investors and is publicly traded on a stock market.

In countries with REITs, indexes have been developed to evaluate their

performance. For example, in the United States, the most popular REIT

indexes are the MSCI US REIT index, the Dow Jones U.S. Real Estate

Index, and the Dow Jones U.S. Select REIT Index. Three indexes are based

- n German REITs that have been developed by the Deutsche Borse
(Germany's major stock exchange): RX REIT All Share Index, which
includes all German REITs listed on the Prime Standard and the General

Standard; the RX Real Estate Index, which contains up to 30 REITs and real

estate companies from the General Standard; and the RX REIT Index,

which contains up to 20 of the largest and most liquid REITs from Prime

Standard. (The "Prime Standard" is the group of stocks on the Frankfort

Stock Exchange that lists those German companies that comply with

international transparency standards.)

The FTSE EPRA/NAREIT Global Real Estate Index Series covers

global, developed and emerging indexes, as well the United Kingdom's

AIM market.

A family of indexes produced jointly by the European Public Real Estate

Association (EPRA), the FTSE, and the National Association of Real Estate

Trusts (NAREIT) for the global listed sector is available. The index series

covers global (with and without the United Kingdom and the United

States), regional (Europe, the Eurozone, and Asia Pacific with and without

Japan), developed (the Americas), and emerging real estate equities

markets.

Another way for investors to invest in public equity commercial real

estate is via exchange-traded funds (ETFs), a collective investment vehicle

described in chapter 32. Three examples are the Vanguard REIT Index ETF,

iShares Dow Jones U.S. Real Estate, and Schwab U.S. REIT ETF. The

Vanguard REIT Index ETF which tracks the MSCI US REIT index, invests

in equity REITs with a bias towards large ETFs. As of April 30, 2016, this

ETF had a position in 150 REITs, with a quarter of the portfolio's holdings

being in the retail REIT sector. As the name indicates, iShares Dow Jones

U.S. Real Estate has as its benchmark the Dow Jones U.S. Real Estate

Index, whereas the Schwab U.S. REIT ETF tracks the Dow Jones U.S.

Select REIT Index.

```
Public Nontraded REITs

```

The most popular type of REIT is publicly traded on an exchange and falls

into the quadrant of public commercial real estate equity. However, there

are

**public nontraded REITs** structured in the same way as traditional

REITs (and subject to the same investment and payout constraints) but not

traded on a public exchange, with the investment generally tied up for 7 to

10 years until a liquidity event (e.g., sale or listing) allows return of any

proceeds to investors. Nontraded REITs, typically marketed to "mom and

pop" investors, are part of the private commercial real estate equity

available to individuals. According to the Investment Program Association,

from 2000 to 2014, nontraded REITs raised \$124 billion of capital,

including \$21.1 billion in 2014 alone. The sponsors of nontraded REITs

have been criticized for the high fees and sometimes misleading statements

by brokers who aggressively sell this investment vehicle. The U.S. SEC

identifies the following issues associated with investing in nontraded

REITs:

    - _**.**_
**Lack of liquidity** Nontraded REITs are illiquid investments, which
mean that they cannot be sold readily in the market. Instead, investors
generally must wait until the non-traded REIT lists its shares on an
exchange or liquidates its assets to achieve liquidity. These liquidity
events, however, might not occur until more than 10 years after your
investment.

   - Nontraded REITs usually offer investors' opportunities to redeem
their shares early but these share redemption programs are typically
subject to significant limitations and may be discontinued at the
discretion of the REIT without notice. Redemption programs also may
require that shares be redeemed at a discount, meaning investors lose
part of their investment if they redeem their shares.

    - _**.**_
**High fees** Nontraded REITs typically charge high upfront fees to
compensate a firm or individual selling the investment and to lower
their offering and organizational costs.… In addition to the high
upfront fees, nontraded REITs may have significant transaction costs,
such as property acquisition fees and asset management fees.

    **Distributions may come from principal.** Investors may be attracted

to nontraded REITs by their high distributions, which may be referred

to as dividend yields, compared to other investment options, including

publicly traded REITs. However, the initial distributions may not

represent earnings from operations since nontraded REITs often

declare these distributions prior to acquiring significant assets.…

    - **Lack of share value transparency.** Because nontraded REITs are

not publicly traded, there is no market price readily available.

Consequently, it can be difficult to determine the value of a share of a

nontraded REIT or the performance of your investment. In addition,

any share valuation will be based on periodic or annual appraisals of

the properties owned by the nontraded REIT, and therefore may not be

accurate or timely. [9]

```
Private Commercial Real Estate Debt

```

Private commercial real estate debt is held as directly issued commercial

mortgages held in funds, commingled vehicles or whole loans (i.e., a single

commercial mortgage that has not been securitized), or both. Commercial

mortgage loans are mortgage loans for income-producing properties. A

commercial mortgage loan is originated either to finance a commercial

purchase or to refinance a prior mortgage obligation. The whole loan

market, which is largely dominated by insurance companies and banks, is

focused on loans between \$10 and \$50 million issued on traditional

property types (multifamily, retail, office, and industrial).

A commercial mortgage loan exposes the lender to credit risk. For

commercial mortgage loans, the lender relies on the ability of the borrower

to repay and has no recourse from the borrower if the payment terms are not

satisfied. That is, commercial mortgage loans are nonrecourse loans. As a

result, the lender can look only to the income-producing property backing

the loan for interest and principal repayment. Because of the credit risk,

lenders rely on various measures to assess the credit risk. The two most

commonly used measures of potential credit risk are the debt-to-service

coverage ratio and the loan-to-value ratio.

The **debt-to-service coverage ratio (DSCR)** measures the ability of the

property to generate income to service the loan's obligations relative to the

amount of the debt service required. More specifically, this ratio is equal to

a property's net operating income (NOI) divided by the debt service. The

NOI is equal to the projected rental income reduced by cash operating

expenses (adjusted for a replacement reserve). A DCSR that exceeds 1

means that the NOI is sufficient to cover the debt servicing required by the

loan. The higher the DSCR, the more likely it is that the borrower will be

able to meet debt servicing from the property's cash flow.

As with residential mortgage loans described in chapter 29, the **loan-to-**

**value ratio** (LTV ratio) is a measure of the amount of the loan to the value

- f the property being financed by the loan. For residential mortgage loans,
"value" is either market value or appraised value. For commercial
properties, the value of the property is based on the fundamental principles

- f valuation that we have mentioned throughout this book. The value of an
asset is the present value of its expected cash flow. Valuation requires

projecting an asset's cash flow and discounting at an appropriate interest

rate. For valuing commercial property, the cash flow is the future NOI. A

discount rate (a single rate), referred to as the "capitalization rate" and

reflecting the risks associated with the cash flow, is then used to compute

the present value of the future NOI. Consequently, considerable variation in

the estimates of NOI and the appropriate capitalization rate can occur when

estimating a property's market value. Thus, investors are often skeptical

about estimates of market value and the resulting LTV ratios reported for

properties.

For residential mortgage loans, only prepayment penalty mortgages

provide some protection for the lender against prepayments. For

commercial mortgage loans, call protection can take the following forms: a

prepayment lockout, prepayment penalty points, yield maintenance charges,

and defeasance.

A **prepayment lockout** is a contractual agreement that prohibits any

prepayments during a specified time, called the **lockout period** . The

lockout period can be from two to 10 years. After the lockout period, call

protection usually comes in the form of either prepayment penalty points or

yield maintenance charges.

**Prepayment penalty points** are predetermined penalties that must be
paid by the borrower if the borrower wishes to refinance. For example, 5–
4–3–2–1 is a common prepayment penalty point structure. That is, if the
borrower wishes to prepay during the first year, the borrower must pay a
5% penalty; in the second year, a 4% penalty would apply, and so on.

A **yield maintenance** charge is designed to make the lender indifferent

as to the timing of prepayments. The yield maintenance charge, also called

the "make-whole charge," makes it uneconomical to refinance solely to get

a lower mortgage rate. The simplest and most restrictive form of yield

maintenance charge ("Treasury flat yield maintenance") penalizes the

borrower based on the difference between the mortgage coupon and the

prevailing Treasury rate.

With **defeasance**, the borrower provides sufficient funds for the servicer

to invest in a portfolio of Treasury securities that replicates the cash flows

that would exist in the absence of prepayments.

Another feature of commercial mortgage loans is that they are typically

**balloon loans, r** equiring substantial principal payment at the end of the

loan's term. If the borrower fails to make the balloon payment, the borrower

is in default. The lender may extend the loan and in so doing will typically

modify the original loan terms. During the workout period for the loan, a

higher interest rate will be charged—the default interest rate. The risk that a

borrower will not be able to make the balloon payment because the

borrower either cannot arrange for refinancing at the balloon payment date

- r cannot sell the property to generate sufficient funds to pay off the balloon
balance is called **balloon risk** . Because the term of the loan will be

extended by the lender during the workout period, balloon risk is also

referred to as **extension risk** .

```
Public Commercial Real Estate Debt

```

Public commercial real estate debt includes such structures as CMBSs and

REITs that invest in mortgage debt. The latter are discussed in chapter 32,

where we explain that REITs that invest in mortgage debt constitute a small

part of the REIT market. Below we describe CMBSs.

In discussions about the CMBS market, participants distinguish between

the types of CMBSs issued (i.e., the structure of the transactions, as

described below). The pre-global financial crisis is referred to as "CMBS

1.0" and the years to follow as "CMBS 2.0."

```
Commercial Mortgage-Backed Securities

```

Many types of commercial loans can be sold by the loan's originator as a

commercial whole loan or structured into a CMBS transaction. A CMBS is

a security backed by one or more commercial mortgage loans described

earlier in this chapter. In CMBSs, loans of virtually any size (from as small

as \$1 million to single property transactions as large as \$200 million) can be

securitized.

In the United States, CMBSs, like residential MBSs described in chapter

30, can be issued by Ginnie Mae, Fannie Mae, Freddie Mac, and private

entities. All securities issued by Ginnie Mae, Fannie Mae, and Freddie Mac

are consistent with their mission of providing funding for residential

housing. This includes securities backed by nursing home projects and

health care facilities. Securities issued by Ginnie Mae are backed by the

FHA—that is, they are insured multifamily housing loans. These loans are

called **project loans** . From these loans, Ginnie Mae creates project loan

pass-through securities. The securities can be backed by a single project

loan on a completed project or by multiple project loans. Freddie Mac and

Fannie Mae purchase multifamily housing loans from approved lenders and

either retain them in their portfolio or use them for collateral for a security.

This is no different from what these two entities do with the single-family

housing mortgage loans that they acquire. Although securities backed by

Ginnie Mae, Fannie Mac, and Freddie Mac constitute the largest sector of

the RMBS market, it is the securities issued by private entities that

constitute by far the largest sector of the CMBS market.

CMBSs are backed by either newly originated or seasoned commercial

mortgage loans. Most CMBSs are backed by newly originated loans.

CMBSs can be classified by the type of loan pool. The first type of CMBS

consists of loans backed by a single borrower. Usually such CMBSs are

backed by large properties, such as regional malls or office buildings. The

investors in this type of CMBS are insurance companies. The second type

- f CMBS consists of those backed by loans to multiple borrowers. This is
the most common type of CMBS and is backed by a variety of property
types. The most prevalent form of deal backed by commercial mortgage
loans to multiple borrowers is the **conduit deal** . These deals are created by
investment banking firms that establish a conduit arrangement with
mortgage bankers to originate commercial mortgage loans specifically for
the purpose of securitizing them (i.e., of creating CMBSs). The mortgage
bankers originate and underwrite loans using the capital provided by the
investment banking firm. There are multiple-borrower CMBS deals that
combine loans that are included in conduit deals with a large or "mega"
loan. These CMBS deals are called **fusion deals** - r **hybrid deals** . Fusion
deals dominate the U.S. CMBS market and are an important but not
dominant sector outside the United States.

In Europe, one of the consequences of the global financial crisis has

been the simplification of the transactions by only including a single large

commercial loan rather than multiple commercial loans of varying size. An

example of a single large loan backing a CMBS is the £263 million issued

in July 2013 backed by the retail stores of Toys R Us, a privately owned

retailer. (This company declared bankruptcy in September 2017.) The

problem in Europe is that a single large loan CMBS is not sustainable,

given that there may not be enough issuers of sufficient size to back a

CMBS.

```
CMBS structure
```

We explained in chapter 30 how private-label RMBS

transactions are structured to redistribute credit risk. The structure of a

CMBS deal is much the same. Different bond classes or tranches are

created, and waterfall rules are in place for the distribution of interest,

principal, and losses. The structure of a CMBS transaction is the same as

for a private-label RMBS in that most structures have multiple bond classes

(tranches) with different ratings, and rules exist for the distribution of

interest and principal to the bond classes. However, three major differences

arise from the features of the underlying loans. [10]

First, as explained earlier when discussing private commercial real estate

debt, prepayment terms for commercial mortgages differ significantly from

those for residential mortgages. The former imposes prepayment penalties

- r restrictions on prepayments. Although some residential mortgages have
prepayment penalties, they make up a small fraction of the market. When
structuring a CMBS, there are rules for the allocation of any prepayment
penalties among the bondholders. In addition, if defeasance occurs, the
credit risk of a CMBS virtually disappears, because it is then backed by
U.S. Treasury securities.

The second difference in structuring stems from the significant

difference between commercial and residential mortgages with respect to

the role of the servicer when a default occurs. With commercial mortgages,

the loan can be transferred by the servicer to the "special servicer" when the

borrower is in default, in imminent default, or in violation of covenants.

The key here is that the loan can be transferred when a default is imminent.

The special servicer has the responsibility of modifying the loan terms in

the case of an imminent default to reduce the likelihood of default. There is

no equivalent feature for a residential mortgage in the case of an imminent

default. The particular choice of action that may be taken by the special

servicer in a commercial mortgage will generally have different effects on

the various bond classes in a CMBS structure. Moreover, a default can

- ccur as a result of failure to make the balloon payment at the end of the
loan term, and different loans may have different mechanisms for dealing
with such a default. Thus, balloon risk must be taken into account when
structuring a CMBS transaction, because the significant size of the balloon
payment can have a considerable impact on the cash flow of the structure.
Balloon risk is not something that has to be dealt with when structuring an

RMBS.

The third difference in structuring between CMBSs and RMBSs has to

do with the role of the buyers when the structure is being created.

Specifically, for a CMBS, typically potential buyers of the junior bond

classes are first sought by the issuer before the deal is structured. The

potential buyers review the proposed pool of mortgage loans and in the

review process, depending on market demand for CMBS products, may

request the removal of some loans from the pool. This phase in the

structuring process, which one does not find in RMBS transactions,

provides an additional layer of security for the senior buyers, particularly

because some of the buyers of the junior classes have tended to be

knowledgeable real estate investors.

**`Illustration of a CMBS deal`** In chapter 30, we discussed how an
agency CMO and a private-label CMO are created. The structure of a
CMBS deal is much the same. There are different bond classes or tranches,
and there are rules for the distribution of interest, principal, and losses.

Table 31.1 shows the bond classes of a CMBS deal, Banc of America

Commercial Mortgage Trust 2006-1. Only the bond classes offered to the

public are identified. The credit rating for each bond class is shown. For the

bond classes offered, the senior certificates in this CMBS deal are Class A1, Class A-2, Class A-3A, Class A-3B, Class A-4, Class A-1A, and Class

XP Certificates. The junior certificates are Class A-M, Class A-J, Class B,

Class C, and Class D. The subordination (credit support), priority of

payment, and order of loss allocation as set forth in the prospectus

.

supplement are reproduced in figure 31.1

The mortgage pool consists of 192 loans. A loan may be for more than

- ne property. The offering documents for the bond classes will disclose the
number of mortgage properties by type, as well as the 10 largest loans in the
mortgage pool with their LTV ratio and debt-to-service ratio at the time of
issuance.

```
Table 31.1
```

CMBS deal: Banc of America Commercial Mortgage Trust 2006-1.

Class Balance ($) Coupon Rate (%) Moody/S&P Rating

A-1 81,500,000 5.219 Aaa/AAA

A-2 84,400,000 5.334 Aaa/AAA

A-3A 130,100,000 5.447 Aaa/AAA

A-3B 25,000,000 5.447 Aaa/AAA

A-4 616,500,000 5.372 [1] Aaa/AAA

A-1A 355,399,000 5.378 [1] Aaa/AAA

A-M 203,766,000 5.421 [1] Aaa/AAA

A-J 142,637,000 5.46 [1] Aaa/AAA

XP 1,989,427,000 0.3406 [2] Aaa/AAA

B 20,377,000 5.49 [1] Aa1/AA+

C 22,924,000 5.509 [1] Aa2/AA

D 20,376,000 5.6424 [3] Aa3/AA−

_Source:_ Prospectus Supplement.

1The Class A-4, Class A-1A, Class A-M, Class A-J, Class B, and Class C certificates will each accrue interest

at a fixed rate subject to a cap at the weighted average net mortgage rate.

2The Class D certificates will accrue interest at the weighted average net mortgage rate minus 0.134%.

3The Class XP certificates will accrue interest on their related notional amount as described in the prospectus

supplement.

```
Figure 31.1

```

Subordination (credit support), priority of payment, and order of loss allocation for Banc of America

Commercial Mortgage Trust 2006-1.

**`How CMBSs trade in the market`** One might think that because CMBSs
and RMBSs are backed by mortgage loans, they would trade in a similar
manner in the marketplace. That is not the case. The primary reason has to
do with the greater prepayment protection given to investors in CMBSs
compared to RMBSs. We described that protection at the loan level. At the
structure level (i.e., when the commercial mortgage loans are pooled to
create a CMBS), certain bond classes can be created that give even greater
prepayment protection. We described how this is done for certain RMBS

tranches in collateralized mortgage obligations. As a result, CMBSs trade

much like corporate bonds than RMBS.

```
Investors in the Commercial Real Estate Market

```

The 1980s witnessed increased interest in commercial real estate as an asset

class by institutional investors. However, the difficulties arising from the

crash of property values in the early 1990s led to a massive retreat by

institutional investors from this asset class. It took many years to persuade

institutional investors that real estate would not fall apart in every recession.

With any class asset, there are two components to returns: a cyclical

component and a secular component. It was the downturn in the market—a

cyclical component—that scared off institutional investors, resulting in a

decline in the allocation to commercial real estate.

Even following the 2008–2009 global financial crisis, institutional

investors have not abandoned the asset class due to the acceptance of

several of the reasons for investing in commercial real estate discussed

earlier in this chapter. In fact, because of the low interest rate environment

pursued by governments throughout the world, commercial real estate has

become more attractive as a source of relatively steady returns. According

to the 2015 investor report by the Pension Real Estate Association, as of

year-end 2014, the average allocation to real estate by institutional investors

was 8.4% of total assets, representing a slight increase from 2013. The

Pension Real Estate Association report notes that allocations substantially

higher than the 8.4% are not uncommon for some institutional investors.

Commercial real estate falls into the alternative asset class, along with

hedge funds and private equity. According to Towers Watson in its "Global

Alternatives Survey 2015," for the top 100 asset managers of alternative

assets, real estate constitutes one-third of the total assets under

management, making it the largest component of the alternative asset class.

Consequently, real estate has now become the "mainstream alternative"

alternative asset class.

It has been argued that the pattern of institutional investor commitments

to the commercial real estate market is different from that in past cycles. [11]

The reasons for the change in the expected pattern of institutional investors'

commitment to the global commercial real estate market are due to how

investors have behaved and how the underlying fundamentals have

behaved. The changes from past cycles in the real estate market reflect new

trends that are likely to continue and accelerate in the future.

In the years that followed the global financial crisis, the commercial real

estate market has attracted significant inflows of capital from two major

sources. Motivated by low interest rates available in global market, pension

funds, foundations, and endowments, the first source was traditional

institutional investors in real estate, who in their search for yield, have

increased their allocation to real estate. The second major source is the

entrance into the real estate market of nontraditional institutional investors.

Some of these new institutional investors have already become important

participants in the market, exerting a significant impact on commercial

property values and real estate returns. Although other nontraditional

institutional investors are now participating in the real estate market, they

are still in the early stages of participation. Yet these new market

participants may potentially have a major impact on the market.

A particularly important investor that is relatively new to real estate is

that of sovereign wealth funds (SWFs). SWFs represent a large and rapidly

growing capital pool. According to data from Preqin (a company providing

alternative asset data), [12] as well one study by the International Monetary

Fund, [13] - verall assets under management have increased from \$3.07 trillion

at the end of 2008 to \$6.31 trillion in May 2015. According to Preqin, 59%

- f SWFs invest in the real estate market. However, for the larger SWFs, the
percentage is much higher, with 100% of SWFs larger than \$100 billion
investing in real estate. SWFs have been investors in real estate markets
globally, and they have made their presence felt in a major way. The
attraction of the real estate market for SWFs is that they typically have
long-term wealth preservation as an investment objective and have few
near-term liabilities. As a result, certain types of real estate are a good
match for their investment objectives. Because of both the large capital pool
and the long investment horizons of SWFs, it is felt that their participation
in the market will greatly impact the real estate market.

Another major change in the real estate market is the growth in crossborder transactions. In dollar volume, cross-border transactions have

increased steadily since 2009. In 2014, there were \$327 billion of crossborder real estate transactions. This level of cross-border transactions

represented 46% of total volume for 2014. The increase in cross-border

capital flows can have an important impact on markets. It has been argued

that the influx of foreign capital has increased property values in major real

estate markets throughout the world, resulting in lower returns. [14]

Our discussion thus far has been on the impact on the real estate market

- f the participation of nontraditional institutional investors as new sources
- f capital that is likely to continue to grow in influence. However, some
market observers believe it may be small investors who will create the
largest changes in the commercial property market. Individual (retail)
investors are able to access the private market for private equity real estate
via one or more of collective vehicles described in chapter 32. These
alternatives for individual investors are relatively new. It is argued that
because individual investors may have different investment objectives and
constraints (such as liquidity) for their real estate investments than
traditional institutional investors, individual investors could alter not only
the demand for real estate but also the characteristics of the market in the

long term.

```
Key Points

```

- Commercial mortgage loans are nonrecourse loans for the purchase of
income-producing properties.

  - The major commercial property types are multifamily housing,
apartment buildings, office buildings, industrial properties (including
warehouses), shopping centers, hotels, health care facilities (e.g.,
senior housing care facilities), and timberlands.

   - Today commercial real estate investments include four categories:
(1) private commercial real estate equity, (2) public commercial real
estate equity, (2) private commercial real estate debt, and (4) public
commercial real estate debt.

- The primary reasons that have been offered for considering
commercial real estate as part of a portfolio are to (1) reduce portfolio
risk in a diversified portfolio, (2) generate absolute returns in excess of
the risk-free rate, (3) hedge against unexpected inflation or deflation,
(4) constitute a part of a portfolio that is a reasonable reflection of the

- verall investment universe, and (5) generate strong cash flows to the
portfolio.

- Studies that have examined whether commercial real estate provides
high absolute returns or high risk-adjusted returns do not support this
reason for investing in this asset class.

- Private commercial real estate equity is held by investors as
individual assets or in commingled vehicles, such as private REITs.

- Most countries have one or more property indexes.
- Public commercial real estate equity is structured as real estate
investment trusts or real estate operating companies, both entities
issuing shares to the public that are traded on an exchange.

- Many developed and developing countries have legislation allowing
for the creation of a REIT.

- Equity REITs can be classified as diversified REITs, sector REITs,
and specialty REITs.

- Public nontraded REITs are structured in the same way as traditional
REITs but are not traded on a public exchange and have the following
issues: lack of liquidity, high fees, and lack of share value

transparency.

- Private commercial real estate debt is held as directly issued
commercial mortgages held in funds, commingled vehicles or whole
loans (i.e., single commercial mortgage that has not been securitized),

- r both.
- Commercial mortgage loans are nonrecourse mortgage loans for
income-producing properties that expose the lender to credit risk.

- The two measures that have been found to be key indicators of the
potential credit performance of a commercial mortgage loan are the
debt-to-service ratio and the LTV ratio.

   - Call protection for commercial mortgage loans includes prepayment
lockout, defeasance, prepayment penalty points, and yield maintenance
charges.

   - Public commercial real estate debt includes such structures as

CMBSs and REITs that invest in mortgage debt.

  - CMBSs are backed by commercial mortgage loans with the deal
backed by either loans to a single borrower, loans to multiple
borrowers (called "conduit deals"), or a combination of loans that are
included in conduit deals with a large or "mega" loan (called "fusion"

   - r "hybrid" deals).
  - Fusion-type deals dominate the U.S. CMBS market; in Europe,
CMBSs are predominately backed by a single large commercial loan.

   - CMBSs are structured to redistribute the credit risk among the bond
classes in the deal.

  - Despite the 2008–2009 global financial crisis, allocation of
institutional investor portfolios to the commercial real estate market
has increased, with new entrants, such as sovereign wealth funds,
entering the market.

   - Commercial real estate is the largest type of alternative asset in
which institutional investors allocate funds.

```
Questions

```

1. What is the rationale for categorizing the commercial real estate
market into four categories?

2. The following quote is taken from a September 2011 report by
Morningstar regarding the performance of commercial real estate
through publicly traded equity REITs and private equity real estate
funds:

The actual performance records now available reveal that publicly traded equity REITs provide a

significant investment return premium compared with private equity real estate funds, as well as

- ther public market attributes of liquidity, transparency, monitoring and access to public debt and
equity financing. [15]

Explain what is meant by "as well as other public attributes."

3. The following statement is taken from a June 2012 Merrill Lynch
publication:

Real estate has historically displayed low or negative correlations to other major asset classes,

providing investors with valuable diversification benefits that can work to improve an investor's

efficient frontier. [16]

Explain this quote.

4. The following statement is from an online article by Rick Ferri:

REITs have a positive real expected return due to a combination of rental income and income growth.

Landlords pass inflation increases to tenants based on a general level of price increases and this gives

real estate owners a built-in inflation hedge. The value of real estate eventually reflects higher rents

through higher prices. [17]

Explain whether you agree or disagree with this statement.

5. Explain how retail investors can obtain exposure to the commercial
real estate equity market.

6. How does a real estate operating company differ from a REIT?
7. What is a commercial mortgage loan?
8. How is the net operating income of a commercial property
determined?

9. Why might an investor be skeptical about the LTV ratio for a
commercial mortgage loan?

10. What types of prepayment protection provisions result in a
prepayment premium being paid if a borrower prepays?

11. Why is balloon risk referred to as "extension risk"?
12. What are the major differences in structuring CMBS and RMBS
transactions?

13. How does the typical CMBS in the United States differ from that
in Europe?

14. Why do CMBSs trade in the market more like corporate bonds
than RMBSs?

15. The following quote is from Jim Clayton et al.:

Although the continued and increased commitment to real estate of the traditional institutional

investor base has contributed to capital flows, helping propel property values, perhaps even more

important for the future of the asset class has been the rising importance over the last several years of

the second major source of capital inflows: capital sources that have not traditionally been involved

in real estate. [18]

a. What institutional investors comprise the traditional investors in the

commercial real estate market?

b. What is the second source of commercial real estate investors?

16. Why does the pattern of institutional investor commitments to the
commercial real estate market differ now from that in past real estate
cycles?

17. Some observers believe it may be individual (retail) investors who
in the future may create the largest changes in the commercial property
market. Why?

18. These four categories were suggested by Jacques Gordon, "The Real Estate Capital Markets
Matrix: A Paradigm Approach," _Real Estate Finance_ 11, no. 3 (1994): 7–15; Susan Hudson-Wilson,
Susan Guenther, and Daniel P. Guenther, "The Four Quadrants: Diversification Benefits for Investors
in Real Estate—A Second Look," _Real Estate Finance_ 12, no. 2 (1995): 82–99.

19. These are arguments are given in Susan Hudson-Wilson, Frank J. Fabozzi, and Jacques N.
Gordon, "Why Real Estate?" _Journal of Portfolio Management_ 29, no. 5 (Special Issue, 2003): 12–

21. Hudson-Wilson, Fabozzi, and Gordon, "Why Real Estate?"; Susan Hudson-Wilson, Jacques N.
Gordon, Frank J. Fabozzi, Mark J. P. Anson, and S. Michael Giliberto, "Why Real Estate? And How?
Where? And When?" _Journal of Portfolio Management_ 31, no. 5 (Special Issue, 2005): 12–31.

22. Hudson-Wilson, Fabozzi, and Gordon, "Why Real Estate?"; Hudson-Wilson et al., "Why Real
Estate? And How? Where? And When?"

23. Hudson-Wilson et al., "Why Real Estate? And How? Where? And When?"
24. Hudson-Wilson et al., "Why Real Estate? And How? Where? And When?"
25. Hudson-Wilson et al., "Why Real Estate? And How? Where? And When?"
26. Vanessa Grout, "With \$1 Billion Invested and \$100 Entry Points, Real Estate Crowdfunding
[Grows Up.” Forbes.com, March 24, 2015, available at http://www.forbes.com/sites/vanessagrout.](http://www.forbes.com/sites/vanessagrout)

27. SEC, "Investor Bulletin: Non-traded REITs," August 31, 2015, available at http://www.sec.gov
/oiea/investor-alerts-bulletins/ib_nontradedreits.html.

28. David P. Jacob, James M. Manzi, and Frank J. Fabozzi, "The Impact of Structuring on CMBS
Bond Class Performance," in _The Handbook of Mortgage-Backed Securities_, ed. Frank J. Fabozzi,
6th edition (New York: McGraw-Hill, 2006), chapter 6.

29. See Jim Clayton, Frank J. Fabozzi, S. Michael Giliberto, Jacques N. Gordon, Youguo Liang,
Greg MacKinnon, and Asieh Mansour, "New Horizons and Familiar Landscapes: New Capital
Sources Confront Shifting Real Estate Fundamentals," _Journal of Portfolio Management_ 41, no. 5
(Special Real Estate Issue, 2015): 11–20.

30. Preqin, "2015 Preqin Global Real Estate Report," 2015.
31. A. Al-Hassan, M. Papaioannon, M. Skanke, and C. C. Sung, "Sovereign Wealth Funds: Aspects

- f Governance Structures and Investment Management," IMF Working Paper 13-231 (Washington,
DC: International Monetary Fund, 2013).

14. The first study empirically supporting this view for the office sector is Patrick McAllister and
Anupam Nanda, "Does Foreign Investment Affect U.S. Office Real Estate Prices?" _Journal of_
_Portfolio Management_ 41, no. 5 (Special Real Estate Issue, 2015): 38–47.

15. "Commercial Real Estate Investment: REITs and Private Equity Real Estate Funds,"
Morningstar, September 2011.

16. James D. Bowden and Michael R. Smith, "Commercial Real Estate," Merrill Lynch, June 2012.
17. Rick Ferri, "REITS and Your Portfolio," _Forbes,_ January 7, 2014.
[https://www.forbes.com/sites/rickferri/2014/01/07/reits-and-your-portfolio/#1cc300a771ac.](https://www.forbes.com/sites/rickferri/2014/01/07/reits-and-your-portfolio/#1cc300a771ac)

18. Jim Clayton, Frank J. Fabozzi, S. Michael Giliberto, Jacques N. Gordon, Youguo Liang, Greg
MacKinnon, and Asieh Mansour, "New Horizons and Familiar Landscapes: New Capital Sources
Confront Shifting Real Estate Fundamentals," _Journal of Portfolio Management_ 41, no. 6 (Special
Real Estate Issue, 2015): 12.

# **`VIII`**

```
COLLECTIVE INVESTMENT VEHICLES AND FINANCIAL DERIVATIVES

MARKETS

```

# **`32`**

```
Market for Collective Investment Vehicles

CONTENTS

```

**Learning Objectives**

**Investment Company Shares**

Open-End Funds

Closed-End Funds

Fund Sales Charges and Annual Operating Expenses

Sales charge

Annual operating expenses (expense ratio)

Economic Motivation for Funds

Types of Funds by Investment Objective

The Concept of a Family of Funds

Taxation of RICs

ETFs

Types of ETFs and ETF Sponsors

The Process of Creating and Redeeming ETF Shares

Tracking the Performance of ETFs

Uses of ETFs

Hedge Funds

Attributes of Hedge Funds

Types of Hedge Funds

**Concerns about Hedge Funds in Financial Markets**

**REITs**

Types of REITs

**Venture Capital Funds**

Venture Capital Firms

Investing in a Venture Capital Fund

Stages of a Venture Capital Fund

**Key Points**

**Questions**

```
Learning Objectives

```

After reading this chapter, you will understand:

   - the benefits of collective investment vehicles;
   - what an investment company is, and the different types of investment
companies that are registered investment vehicles: open-end funds
(mutual funds) and closed-end funds;

   - how net asset value is calculated;
   - how the share prices of investment companies are determined;
  - how investment companies differ depending on their investment
   - bjectives;
   - what exchange-traded funds (ETFs) are;
   - the similarities of and differences between ETFs and closed-end

funds;

   - how ETF shares are created and redeemed;
   - the use of ETF shares by investors;
   - what a hedge fund is, and the different types of hedge funds;
   - the attributes of hedge funds;
   - concerns about hedge funds;
   - the three types of REITs: equity, mortgage, and hybrid;
   - the tax advantages of REITs;
   - what a venture capital firm is, and the role it plays for startup
companies;

   - the stages involved in a venture capital firm creating a venture capital
fund; and

   - the capital commitment made by investors in a venture capital fund.

Collective investment vehicles are products that are managed by asset

management firms. These investment vehicles involve the pooling of funds

by investors and the investment of those funds in certain financial assets.

The investors then have an equity interest in the net assets (i.e., assets minus

liabilities) of the fund's portfolio. In general, the advantages associated with

investing by means of pooled funds rather than directly in financial assets

are obtaining superior portfolio diversification, achieving better liquidity,

and acquiring the expertise of professional asset management. Asset

management firms receive compensation in the form of a management fee

and, with some collective investment vehicles, additional compensation

based on performance, which is referred to as an "incentive fee."

The major collective investment vehicles covered in this chapter are

investment company shares, exchange-traded funds, hedge funds, real estate

investment trusts (REITs), and venture capital funds.

```
Investment Company Shares

```

Investment companies are financial intermediaries that sell shares to the

public and invest the proceeds in a diversified portfolio of financial assets.

Each share represents a proportional interest in the net assets in which the

funds are invested.

The primary U.S. regulator of investment companies is the Securities and

Exchange Commission (SEC), and the Investment Company Act of 1940 is

the primary legislation governing their regulation. The definition of what

constitutes an investment company given in the 1940 act is "as an issuer

which is or holds itself out as being engaged primarily, or proposes to

engage primarily, in the business of investing, reinvesting or trading in

'securities.' " Pooled investment vehicles satisfying the definition of an

investment company under the federal securities law must be registered.

Hence investment companies are technically called **registered investment**

**companies** (RICs).

The 1940 act classifies investment companies as management companies,

unit investment trusts, or face amount of certificate companies. Our focus in

this chapter is on management companies. This category of investment

company is typically structured as either a corporation or a trust, with a

board of directors (or trustees) to monitor the management of the investment

company. The operation of the management company is undertaken by an

investment adviser, which is typically a separate entity that is registered with

the SEC.

Management companies are divided into open-end companies and

closed-end companies. They are more commonly referred to as open-end

and closed-end "funds." Although both types of management companies are

popularly referred to as "mutual funds," technically, only open-end funds are

mutual funds.

```
Open-End Funds

```

**Open-end funds**, commonly referred to simply as **mutual funds**, are
portfolios of securities—mainly stocks, bonds, and money market
instruments. Investors in mutual funds own a pro rata share of the overall
portfolio, which is managed by the fund's investment manager, who buys
and sells securities.

Additionally, the value or price of each share of the portfolio, called the

**net asset value** (NAV), equals the market value of the portfolio minus the

liabilities of the mutual fund divided by the number of shares owned by the

fund's investors:

For example, suppose that a mutual fund with 10 million shares

- utstanding has a portfolio with a market value of \$215 million and
liabilities of \$15 million. The NAV is

The mutual fund's NAV or price of the fund is determined only once each

day, at the close of the day. For example, the NAV for a stock mutual fund is

determined from the closing stock prices for the day. Finally, all new

investments into the mutual fund or withdrawals from the fund during the

day are priced at the closing NAV (investments made after the end of the day

- r on a nonbusiness day are priced at the next day's closing NAV).

The total number of shares in a mutual fund increases if more

investments than withdrawals are made during the day. For example, assume

that at the beginning of a day, the market value of a mutual fund's portfolio

is \$1 million, with no liabilities, and 10,000 shares are outstanding. Thus, the

NAV for this mutual fund is \$100. Assume that during the day, investors

deposit \$5,000 into the fund and withdraw \$1,000 from it, and the prices of

all the securities in the portfolio remain constant. These transactions mean

that 50 shares were issued for the \$5,000 deposited (because each share is

valued at \$100), and 10 shares were redeemed for \$1,000. The net number of

new shares issued equals 40. Therefore, at the end of the day the fund

contains 10,040 shares, with a market value for the portfolio of \$1,004,000.

The NAV remains \$100.

If instead the prices of the securities in the portfolio change, both the total

market value of the portfolio and, therefore, the NAV will change. In the

previous example, assume that during the day, the market value of the

portfolio doubles to \$2 million. Because deposits and withdrawals are priced

at the end-of-day NAV, which is now \$200 (after the doubling of the

portfolio's market value), the \$5,000 deposit will purchase 25 shares

($5,000/$200), and the \$1,000 withdrawn will reduce the number of shares

- utstanding by 5 shares ($1,000/$200). Thus, at the end of the day, the
mutual fund has 10,020 shares outstanding (10,000 shares initially + 25
shares − 5 shares) with an NAV of \$200, and the market value of the
portfolio is \$2,004,000. (Note that 10,020 shares × $200 NAV = $2,004,000,
the portfolio value.)

Overall, a mutual fund's NAV increases or decreases as a result of an

increase or decrease in the price of the securities in the portfolio. The

number of shares issued increases or decreases as a result of the net deposits

into and withdrawals from the fund. The market value of the fund's portfolio

will increase or decrease for both reasons.

```
Closed-End Funds

```

The shares of a **closed-end fund** (CEF) are similar to those of common

stock of a corporation. The new shares of a CEF are initially issued by an

underwriter, and after their issuance, the number of shares remains constant.

That is, after the initial issue, no sales or purchases of CEF shares are made

by the fund's portfolio manager as with open-end mutual funds. Instead, the

shares are traded on a secondary market, either on an exchange or in the

- ver-the-counter market.

Investors can buy shares at the time of the initial issue or on the

secondary market. Shares are sold only on the secondary market. The price

- f a share of a CEF is determined by the supply and demand in the market in
which the fund shares are traded. Thus, investors who transact CEF shares
must pay a brokerage commission at the time of purchase and at the time of
sale.

The NAV of CEFs is calculated in the same way as for mutual funds.

However, the price of a share in a CEF is determined by supply and demand,

so the price can fall below or rise above the NAV per share. Shares selling

below NAV are said to be "trading at a discount," whereas shares trading

above NAV are trading at a premium.

Consequently, two important attributes distinguish open-end mutual

funds from CEFs. First, the number of shares of a mutual fund varies,

because the fund sponsor sells new shares to investors and buys existing

shares from shareholders. Second, consequently, the share price is always

the mutual fund's NAV. In contrast, a CEF has a constant number of shares

- utstanding, because the fund sponsor does not redeem shares and sell new
shares to investors except at the time of a new underwriting. Thus, supply
and demand in the market determine the price of the CEF shares, which may
be greater than or less than the NAV.

Although the divergence of the share price from the NAV is often

puzzling, in some cases, the reasons for the premium or discount are easily

understood. For example, a share's price may be below the NAV because of

the CEF's large built-in tax liabilities and because investors discount the

share's price for that future tax liability. (This tax liability issue is discussed

later in the chapter.) A CEF's leverage and resulting risk may be another

reason for the share price of a CEF to trade below NAV. A fund's shares may

trade at a premium to the NAV, because the fund offers relatively cheap

access to, and professional management of, stocks of another country, about

which information is not readily available to small investors.

The relatively new exchange-traded funds (ETFs), which are discussed

later in this chapter, pose a threat to the growth of both open-end mutual

funds and CEFs. ETFs are essentially hybrid CEFs that trade on exchanges

but typically trade very close to NAV. Because CEF shares are traded like

stocks, the cost to any investor of buying or selling a CEF is the same as that

- f buying or selling a stock. The obvious charge is the stockbroker's
commission. The bid-ask spread of the market in which the stock is traded is
also a cost.

```
Fund Sales Charges and Annual Operating Expenses

```

Investors in mutual funds bear two types of costs. The first is the

**shareholder fee**, usually called the **sales charge** . This cost is a "one-time"

charge debited to the investor for a specific transaction, such as a purchase,

redemption, or exchange. The type of charge is related to the way the fund is

sold or distributed. The second cost is the annual fund operating expense,

usually called the **expense ratio**, which covers the fund's expenses, the

largest of which is for investment management. This charge is imposed

annually and occurs for all funds and for all types of distribution.

**`Sales charge`** Sales charges on open-end mutual funds are related to their
method of distribution. The two types of distribution are through a sales
force (or wholesale) and direct. **Sales force (wholesale) distribution** - ccurs
through an intermediary, such as an agent, a stockbroker, an insurance agent,

- r other entity providing investment advice and incentive to the client. Such
an entity actively "makes the sale" and provides subsequent service. The

- ther approach is **direct distribution**, or distribution from the mutual fund
company to the investor. The client approaches the mutual fund company
(most likely by a toll-free telephone number or website) in response to media
advertisements or general information and opens the account. Little or no
investment counsel or service is provided either initially or subsequently.

For the service provided in the sales force distribution method, the

customer bears a sales charge paid to the agent. The sales charge is called a

**load** . The traditional type of load is called a **front-end load**, because the

load is deducted at the time the purchase is made, or "up front." That is, the

load is subtracted from the amount invested by the client and paid to the

agent/distributor. Directly purchased mutual funds require no intermediary

sales agent and therefore infrequently carry a sales charge. Funds with no

sales charge are called **no-load mutual funds** .

Recent adaptations of the sales load are back-end loads and level loads.

Front-end loads are imposed at the time of the purchase of the fund, but the

**back-end load** is imposed at the time fund shares are sold or redeemed.

**Level loads** are assessed uniformly each year. These two alternative

methods both provide ways to compensate the agent. However, unlike the

front-end load, both of these distribution mechanisms permit the client to

buy a fund at NAV, that is, not have any of the initial investment debited as a

sales charge before it is invested in the shareholder's account. The most

common type of back-end load currently is the **contingent deferred sales**

**charge** . In this approach, a gradually declining load is imposed on

withdrawals. For example, a common 3–3–2–2–1–1–0 contingent deferred

sales charge approach imposes a 3% load on the amount withdrawn after one

year, a 3% load on the amount withdrawn after the second year, a 2% on the

amount withdrawn after the third year, and so on. No sales charge for

withdrawals applies after the seventh year.

Another type of load is neither a front-end load at the time of investment

nor a (gradually declining) back-end load at the time of withdrawal but a

constant load each year (e.g., a 1% load every year).This approach is called a

**level load** . This type of load appeals to financial planners who charge annual

fees rather than commissions, such as sales charges.

Many mutual fund families offer their funds with all three types of loads

- that is, front-end loads (these fund shares are usually called "A shares"),
back-end loads (called "B shares"), and level loads ("C shares")—and
permit the distributor and its client, the investor, to select the type of load
they prefer.

The sales charge is, in effect, paid by the client to the distributor. How

does the fund family (typically called the "sponsor" or "manufacturer" of the

fund) cover its costs and make a profit? This second type of cost to the

investor covers the fund's annual operating expenses.

**`Annual operating expenses (expense ratio)`** The **operating expense**,
also called the **expense ratio**, is debited annually from the investor's fund
balance by the fund sponsor. The three main categories of annual operating
expenses are the management fee, the distribution fee, and other expenses.

The **management fee**, also called the **investment advisory fee**, is

charged by the investment adviser for managing a fund's portfolio. If the

investment adviser works for a company that is separate from the fund

sponsor, some or all of this investment advisory fee is passed on to the

investment adviser by the fund sponsor. In this case, the fund manager is

called a **subadviser** . The management fee varies by the type of fund, and

specifically with the difficulty of managing the fund.

The management fee is typically a fixed fee based solely on the market

value of the fund's assets. The fee structure for managing some mutual funds

is on a sliding scale, with the fee declining with the market value of the

fund's assets. A few mutual funds have adopted performance-based fees,

which specify that if the quarterly performance is good, the fund manager

receives a fee, and if it is not, the fee is waived for the quarter.

In 1980, the SEC approved the imposition of a fixed annual fee, called

the **12b-1 fee**, which is, in general, intended to cover distribution costs,

including continuing agent compensation and manufacturer marketing and

advertising expenses. Such 12b-1 fees are now imposed by many mutual

funds. By law, 12b-1 fees cannot exceed 1% of the fund's assets per year.

The 12b-1 fee may include a service fee of up to 0.25% of assets per year to

compensate sales professionals for providing services or maintaining

shareholder accounts. The major rationale for the component of the 12b-1

fee that accrues to the selling agent is to provide an incentive to selling

agents to continue to service their accounts after they receive a transactionbased fee, such as a front-end load. As a result, a 12b-1 fee of this type is

consistent with sales-force-sold load funds, not with no-load funds sold

directly to the investor. The rationale for the component of the 12b-1 fee that

accrues to the manufacturer of the fund is to provide incentive and

compensate for continuing advertising and marketing costs.

Other expenses include primarily the costs of (1) custody (holding the

cash and securities of the fund), (2) the transfer agent's activities

(transferring cash and securities among buyers and sellers of the securities,

making fund distributions, etc.), (3) the independent public accountant's

fees, and (4) directors' fees.

The sum of the annual management fee, the annual distribution fee, and

- ther annual expenses is called the "expense ratio." All the cost information
- n a fund, including sales charges and annual expenses, are included in the
fund's prospectus.

```
Economic Motivation for Funds

```

In chapter 3, we noted that financial intermediaries obtain funds by issuing

financial claims against themselves and then investing these funds. An

investment company is a financial intermediary in that it pools the funds of

individual investors and uses these funds to buy portfolios of securities. We

also noted the special role in financial markets played by financial

intermediaries. Financial intermediaries provide some or all of the following

six economic functions: (1) risk reduction through diversification, (2) lower

costs of contracting and processing information, (3) professional portfolio

management, (4) liquidity, (5) variety, and (6) a payments mechanism. Let's

consider these economic functions as provided by mutual funds.

First is the function of risk reduction through diversification. By

investing in a fund, an investor can obtain broad-based ownership of a

sufficient number of securities to reduce portfolio risk. (We are more

specific about the type of risk that is reduced in chapter 10.) Although an

individual investor may be able to acquire a broad-based portfolio of

securities, the degree of diversification will be limited by the amount

available to invest. By investing in an investment company, however, an

investor can effectively achieve the benefits of diversification at a lower

cost, even if the amount of money available to invest is not large.

The second economic function is the reduced cost of contracting and

processing information, because an investor purchases the services of a

presumably skilled financial adviser at less cost than if the investor were to

directly and individually negotiate with such an adviser. The advisory fee is

lower because of the larger size of assets managed, as well as the reduced

costs of searching for an investment manager and obtaining information

about the securities. Also, the costs of transacting in the securities are

reduced, because a fund is better able to negotiate transaction costs, and

custodial fees and record-keeping costs are less for a fund than for an

individual investor. For these reasons, investment management enjoys

economies of scale relative to those benefits that can accrue to individual

investors.

Third, and related to the first two advantages, is the advantage of

professional management of the mutual fund. The fourth advantage is

liquidity. Mutual funds can be bought or liquidated any day at the closing

NAV. The fifth advantage is the variety of funds available in general, and

even in one particular family of funds. Finally, money market funds and

some other types of funds provide payment services by allowing investors to

write checks drawn on the fund, although this facility may be limited in

various ways.

```
Types of Funds by Investment Objective

```

Mutual funds developed out of a need to satisfy the various investment

- bjectives of investors. In general, in the main categories—stock funds,
bond funds, money market funds, and others—several subcategories of
funds exist. Other funds are U.S. only, international (no U.S. securities), or
global (both U.S. and international securities). Still other funds are
considered passive or active funds. **Passive** (or **indexed** ) **funds** are designed
to replicate an index, such as the S&P 500 stock index, the Barclays Capital
Aggregate Bond Index, or the Morgan Stanley Capital International EAFE
(Europe, Australasia, and Far East) Index. These funds are **beta products** . In
contrast, **Active funds** attempt to outperform an index and other funds by
actively trading the fund portfolio and are therefore alpha products. The

- bjective of numerous other categories of funds is stated in the specific
fund's prospectus, as required by the SEC and the Investment Company Act

- f 1940.

Stock funds differ in the following ways:

   - the average market capitalization ("market cap": divided into large,
mid, and small) of the stocks in the portfolio;

   - style (growth, value, blend, and other); and
   - sector specialization, such as technology, health care, or utilities.

With respect to style, stocks with high price-to-book and price-toearnings ratios are considered growth stocks, and stocks with low price-tovalue and price-to-earnings ratios are considered value stocks, although

- ther variables are also considered. Some styles can be considered blend
stocks.

Bond funds differ by the creditworthiness of the issuers of the bonds in

the portfolio (e.g., U.S. government, investment-grade corporate, high-yield

corporate) and by the maturity (or duration) of the bonds (long, intermediate,

short). Another category of bond funds, called "municipal bond funds,"

- ffers tax-exempt coupon interest. These funds may also be single-state
bond funds (i.e., all the bonds in the portfolio were issued by issuers in the
same state) or multistate.

Asset allocation, hybrid, or balanced funds all hold both stocks and

bonds. Convertible bond funds provide another option for investors.

A category of money market funds with maturities of one year or less

provides protection against interest rate fluctuations. These funds may have

some degree of credit risk, except for the U.S. government money market

category. Most of these funds offer check-writing privileges. In addition to

taxable money market funds, tax-exempt municipal money market funds are

available as well.

Among the other fund offerings are index funds and funds of funds.

Index funds, as already discussed, attempt to passively replicate an index. A

**fund of funds** invests in other mutual funds in the same fund family.

Several organizations provide data on mutual funds. The most popular

- nes are Morningstar and Lipper, which provide data on fund expenses,
portfolio managers, fund sizes, and fund holdings. But, perhaps most
important, they provide performance (i.e., rate of return) data and fund
rankings based on performance and other factors. To compare fund
performance on an "apples-to-apples" basis, these firms divide mutual funds
into several categories intended to be fairly homogeneous by investment

- bjective. The categories provided by Morningstar and Lipper are similar
but not identical. Mutual fund data are also provided by the Investment
Company Institute, the national association for mutual funds.

```
The Concept of a Family of Funds

```

A concept that revolutionized the fund industry and benefited many

investors is what the mutual fund industry calls a **family of funds**, a group

- f funds or a complex of funds. Many fund management companies offer
investors a choice of numerous funds with different investment objectives in
the same fund family. In many cases, with a phone call, investors may move
their assets from one fund to another in the family at little or no cost. Of
course, if these funds are in a taxable account, tax consequences may
accompany the sale. Although the same policies regarding loads and other
costs may apply to all members of the family, a management company may
have different fee structures for transfers among different funds under its
control.

Large fund families usually include money market funds; U.S. bond

funds of several types; global stock and bond funds; broadly diversified U.S.

stock funds; U.S. stock funds that specialize by market capitalization and

style; and stock funds devoted to particular sectors, such as health care,

technology, or precious minerals companies. According to Morningstar, the

10 largest mutual fund families are American Funds, BlackRock Inc.,

Columbia Management, Fidelity Investments, Franklin Templeton

Investments, Oppenheimer Funds, Pacific Investment Management Co.

(PIMCO), T. Rowe Price, J.P. Morgan, and the Vanguard Group. Fund

families may also use external investment advisers along with internal

advisers in their fund families.

**`Taxation of RICs`** RICs must distribute at least 90% of their net

investment income earned (bond coupons and stock dividends) exclusive of

realized capital gains or losses to shareholders (along with meeting other

criteria) to qualify as a RIC; as such, they are not required to pay taxes at the

fund level prior to distributions to shareholders. Consequently, funds make

these distributions. Taxes on distributions are paid only at the investor level,

not the fund level. Even though many investors in RICs choose to reinvest

these distributions, the distributions are taxable to the investor, either as

- rdinary income or as capital gains (long term or short term), whichever is
relevant.

Capital gains distributions must occur annually, and typically occur late

in the calendar year. The capital gains distributions may be either longor

short-term capital gains, depending on whether the fund held the security for

a year or more. Investors have no control over the size of these distributions,

and as a result, the timing and amount of taxes paid on their fund holdings

are largely out of their control. In particular, withdrawals by some investors

may necessitate sales in the fund, which in turn cause realized capital gains

and a tax liability to accrue to investors who maintain their holdings.

New investors in the fund may assume a tax liability even though they

realize no gains. All shareholders as of the record date receive a full year's

worth of dividends and capital gains distributions, even if they have owned

shares for only one day. This lack of control over capital gains taxes is

regarded as a major limitation of investing in RICs. In fact, this adverse tax

consequence is one of the reasons suggested for a CEF's price falling below

par value. Also, this adverse tax consequence is one reason for the popularity

- f ETFs, discussed next.

Of course, the investor must also pay ordinary income taxes on

distributions of income. Finally, when investors in the fund sell their shares,

they realize longor short-term capital gains or losses, depending on whether

they have held the fund for at least a year.

```
ETFs

```

Open-end mutual funds are often criticized for three reasons. First, the fund

shares are priced at, and can be transacted only at, the end-of-day or closing

price. Specifically, transactions—purchases and sales—cannot be made at

intraday prices but only at closing prices. The second criticism relates to

taxes and the investors' control over taxes. As noted earlier, withdrawals by

some fund shareholders may cause taxable realized capital gains for

shareholders who maintain their positions. Finally, it has been argued that

the fees charged by asset managers are excessive.

In 1993, a new investment vehicle with many of the same features as

- pen-end mutual funds but that responded to two of the three criticisms was
introduced. [1] This investment vehicle, called an **exchange-traded fund**, is a
fund that is similar to mutual funds but that trades like stocks on an

exchange. ETFs are, in a sense, similar to CEFs, which have small premiums

- r discounts from their NAVs. They offer investors beta (passive)

instruments for obtaining exposure to asset classes and market sectors that

previously could not be accessed easily. As of August 25, 2017, Morningstar

tracked ETFs that had total market assets of about \$3 trillion. By far the

largest asset class for ETFs was for equity, which was almost \$2.4 trillion.

Every ETF is based on a benchmark index. For the first generation of

ETFs, the portfolio manager responsible for the ETF sought to match the

performance of the benchmark index by purchasing securities and using the

derivative instruments described in chapter 23. Thus, the portfolio manager

- f the ETF seeks the same total return for the ETF as the that for the index.

The second generation of ETFs—and by far a smaller segment of ETF

market—consists of actively managed ETFs, where the investment objective

- f the ETF's portfolio manager is to outperform the benchmark index.

Because ETFs are traded on an exchange, an ETF's share price is

determined by the market forces of supply and demand. ETF shares can be

purchased on margin, can be sold short, and use the types of orders that are

available for taking a position in stocks (such as stop orders and limit

- rders). There are even derivative futures and options for which an ETF is
the underlying instrument. (We discuss these in chapter 33.)

As with a CEF, the forces of supply and demand can cause the ETF's

market price to deviate from its NAV. If executed properly, deviations

between the ETF's NAV and its market price will be small. This is because

arbitrageurs, referred to as **authorized participants**, can create or redeem

large blocks of shares on any day at NAV, significantly limiting the

deviations. We'll describe the key role of authorized participants shortly.

A second major distinction between open-end mutual funds and ETFs

relates to taxation. For both open-end mutual funds and ETFs, dividend

income and capital gains realized when the mutual fund or ETF is sold are

taxable to the investor. But, in addition, in the case of redemptions, open-end

mutual funds may have to sell securities (if the cash position is not sufficient

to fund the redemptions), thus causing a capital gain or loss for those who

held their shares. In contrast, ETFs do not have to sell portfolio securities,

because redemptions are effected by an in-kind exchange of the ETF shares

for a basket of the underlying portfolio securities. This exchange is not a

taxable event to investors under the U.S. tax code. Therefore, investors in

ETFs are subject to significant capital gains taxes only when they sell their

ETF shares (at a price above the original purchase price). However, ETFs do

distribute cash dividends and may distribute a limited amount of realized

capital gains, and these distributions are taxable. Overall, ETFs, like index

mutual funds, avoid realized capital gains and the taxation thereof through

their low portfolio turnover. But unlike index mutual funds (or other funds,

for that matter), they do not cause potentially large capital gains tax

liabilities that accrue to those who held their positions to meet shareholder

redemptions because of the unique way in which they are redeemed.

Finally, the expense ratio for an ETF is generally less than that for a CEF

- r open-end mutual fund that has the same benchmark index. This is because
ETFs are passively managed, unlike most CEFs and open-end mutual funds.
Moreover, because of their low portfolio turnover (because most are
passively managed), ETFs typically have lower portfolio trading costs than
do CEFs or mutual funds.

```
Types of ETFs and ETF Sponsors

```

When ETFs were first introduced into the U.S. financial market, in 1993,

and for several years thereafter, the types of ETFs available were all based

- n U.S. stock indexes and international stock market indexes. [2] The first ETF

in the United States was the Standard & Poor's Depositary Receipts (SPDRs,

pronounced "spiders"), an index fund that was designed to track the

performance of the S&P 500 stock index. An ETF that followed was

designed to track subsectors of the S&P 500, the Mid-Cap SPDRs. Other

ETFs based on other U.S. stock indexes were then introduced. These

included Diamonds, which track the Dow Jones Industrial Average and is

sponsored by State Street Global Investors, and QQQs, designed to track the

NASDAQ 100 index.

Today, there are numerous ETF products designed to track not only stock

market indexes but also customized stock market benchmarks and indexes

for other asset classes. In fact, Yahoo Finance maintains a website dedicated

to ETFs, called the "ETF Center." [3] The ETF Center allows an investor to

search for ETFs based on different criteria and by fund family. [4]

As with open-end mutual funds and CEFs, there are actively and

passively managed ETFs. Most mutual funds and CEFs are actively

managed. In contrast, in the ETF world, most are passively managed.

Obviously, the ETFs that are actively managed have a higher cost structure.

Consequently, ETFs provide investors with alpha products.

```
The Process of Creating and Redeeming ETF Shares

```

The objective of an ETF is for the performance of the portfolio of securities

to be as close as possible to that of the target index. That is, the ETF

portfolio's NAV should deviate as little as possible from that of its market

price. This can only be accomplished with the intervention of a third party

that is charged with the responsibility of arbitraging any discrepancy

between the ETF's NAV and the share price.

The following is an explanation of the arbitrage process that the agent

follows in two different scenarios:

1. Scenario 1: The ETF's share price exceeds the ETF portfolio's NAV
(i.e., the ETF share price is relatively expensive). The action taken by
the agent in this scenario to generate an arbitrage process would be to
buy the underlying ETF portfolio and sell the ETF shares.

2. Scenario 2: The ETF's share price is below that of the ETF
portfolio's NAV (i.e., the ETF share price is relatively cheap). In this
scenario, the agent would purchase the ETF shares and sell the
underlying portfolio at NAV.

The result of the action of the agent in both scenarios would be the

generation of a profitable arbitrage. Moreover, the action by the agent to

capture the potential arbitrage would tend to cause the ETF's share price to

trade very close (or equal) to that of the ETF portfolio's NAV.

We referred to the third party as an agent. Actually, there are many

agents, all large institutional investors selected by the ETF's sponsor.

Because these agents perform the arbitrage, they are called **arbitrageurs** .

And because they are retained by the ETF sponsor to take the action

described above to bring about equality of the ETF share price and the ETF's

portfolio NAV by creating and redeeming ETF shares, they are referred to as

**authorized participants** (usually denoted by "AP").

Only an agent is authorized to create ETF shares by providing the ETF

sponsor with a specified basket of securities, in exchange for which the

agent receives ETF shares, called **creation units** . These units can be

transacted only in large, specified quantities. In scenario 1 above, the action

taken by the agent (the authorized professional) results in creation units.

When the authorized professional delivers a specified number of ETF shares

to the ETF sponsor in exchange for a specific basket of securities, the ETF

shares exchanged are referred to as **redemption units** . In scenario 2 above,

the action by the authorized professional results in redemption units.

The arbitrage process just described becomes more difficult for an

actively managed ETF. The reason is that the authorized professional does

not know what the underlying portfolio is, because the portfolio is permitted

to deviate from the benchmark index.

```
Tracking the Performance of ETFs

```

The task of the authorized professional is critical and may seem simple

enough. However, a fundamental requirement must be met for the arbitrage

process to work: The composition and the NAV of the ETF portfolio must be

known accurately, and the securities in the portfolio must be continuously

traded throughout the trading day. An obvious example of such a portfolio

would be the S&P 500 index portfolio. The 500 stocks in the index are very

liquid, and their prices and the value of the index are quoted continuously

throughout the trading day.

A study by Buetow and Henderson analyzed a broad sample of ETFs

traded on U.S. exchanges. [5] Their sample included all U.S. ETFs for which

they were able to identify a benchmark index from the prospectus and to

collect return series for both the ETF and the benchmark index.

They found that daily returns for the majority of the ETFs in their study

closely tracked returns for the respective indexes and exhibited high

correlations with the index. However, some ETFs did exhibit significant

tracking error and had lower correlations with the returns of their benchmark

index. This poorer performance in terms of tracking error and correlation

with index returns tended to be larger when the benchmark index for an ETF

was composed of less liquid assets.

```
Uses of ETFs

```

In this book, we describe different asset classes and different investment

strategies. ETFs provide a cost-effective means for retail and institutional

investors to gain exposure to asset classes and sectors through either

passively or actively managed ETFs.

ETFs can be used to alter exposure to asset classes of the U.S. market.

Similarly, by using ETFs that have a non-U.S. benchmark index, the investor

can avoid the custodian and transaction costs associated with creating an

exposure to non-U.S. markets. An active portfolio manager who wants to

alter exposure to a sector of the market can do so by using an ETF that is

passively managed. For example, consider an active equity portfolio

manager who is seeking to outperform the S&P 500 index and wants to do

so by increasing exposure to a sector of the equity market that he or she

believes will outperform the other sectors. That is, the manager wants to

- verweight exposure to that sector. This can be done by using an appropriate
ETF. To make the example more concrete, suppose that the portfolio
manager wants to overweight the telecommunications sector of the S&P 500
index. This can be done by purchasing shares of, say, the Vanguard Telecom
Services ETF. Shorting that ETF would reduce exposure to the
telecommunications sector.

```
Hedge Funds

```

It would be nice to be able to define what a hedge fund is by, say, pointing to

its definition in the federal securities law. However, no such legal definition

exists; nor is there any universally accepted definition to describe the 9,000

privately pooled investment entities in the United States called "hedge

funds," which in aggregate, invest more than \$1.3 trillion in assets.

The term _hedge fund_ was first used by _Fortune_ magazine in 1966 to

describe the private investment fund of Alfred Winslow Jones. When

managing the portfolio, Jones sought to "hedge" the market risk of the fund

by creating a portfolio that was long and short the stock market by an equal

amount. (As explained in chapter 18, shorting the stock market means

selling stock that is not owned, with the expectation that the price will

decline in the future. A portfolio constructed in this way is said to be

"hedged" against stock market risk.) Moreover, Jones determined that under

U.S. securities law, his private investment partnership would not be

regulated by the SEC if the investors were "accredited investors." The

securities law defines an accredited investor as an investor who does not

need the protection offered other investors by filings with the SEC. [6]

And that is the way federal securities law treated hedge funds until the

passage of the Dodd-Frank Wall Street Reform and Consumer Protection

Act of 2010. This act changed the registration of hedge funds that had

previously been granted exemption because they were "private advisers,"

replacing the exemption with several narrower exemptions for such advisers

as venture capital funds, discussed later in this chapter. Not only did the act

set forth regulatory changes regarding the registration of hedge funds, it also

imposed reporting and record-keeping requirements. More specifically, the

act gave the SEC the authority to collect data from hedge funds. The

requirements were put in place not only to protect investors but also to allow

the information mandated to be used by the Financial Stability Oversight

Council (discussed in chapter 2) to assess the systemic risk that might be

posed by large hedge funds.

```
Attributes of Hedge Funds

```

Let's look at some definitions of hedge funds that have been proposed based

- n their attributes. George Soros is the chairman of Soros Fund
Management. His firm advises a privately owned group of hedge funds, the
Quantum Group of Funds. He defines a hedge fund as follows:

Hedge funds engage in a variety of investment activities. They cater to sophisticated investors and are

not subject to the regulations that apply to mutual funds geared toward the general public. Fund

managers are compensated on the basis of performance rather than as a fixed percentage of assets.

"Performance funds" would be a more accurate description. [7]

The President's Working Group on Financial Markets, a group created by

then president Ronald Reagan and consisting of the secretary of the Treasury

and the chairs of the Board of Governors of the Federal Reserve Board, the

SEC, and the Commodity Futures Trading Commission, provides the

following definition:

The term "hedge fund" is commonly used to describe a variety of different types of investment

vehicles that share some common characteristics. Although it is not statutorily defined, the term

encompasses any pooled investment vehicle that is privately organized, administered by professional

money managers, and not widely available to the public. [8]

A useful definition based on the characteristics of hedge funds is the

following, provided by the United Kingdom's Financial Services Authority,

the regulatory body of all providers of financial services in that country:

The term can also be defined by considering the characteristics most commonly associated with hedge

funds. Usually, hedge funds:

- are organised as private investment partnerships or offshore investment corporations;
- use a wide variety of trading strategies involving position-taking in a range of markets;
- employ an assortment of trading techniques and instruments, often including short-selling,
derivatives and leverage;

- pay performance fees to their managers; and
- have an investor base comprising wealthy individuals and institutions and a relatively high
minimum investment limit (set at US\$100,000 or higher for most funds). [9]

From the above definitions, we can take away the following about hedge

funds. First, the word "hedge" in hedge funds is misleading. Although the

word may have been appropriate for characterizing the fund managed by

Alfred Winslow Jones, it is not a characteristic of hedge funds today.

Second, hedge funds use a wide range of trading strategies and

techniques in an attempt to earn superior returns. The strategies used by a

hedge fund can include one or more of the following:

   - leverage, or the use of borrowed funds;
   - short selling, or the sale of a financial instrument not owned in
anticipation of a decline in that financial instrument's price;

   - arbitrage, or the simultaneous buying and selling of related financial
instruments to realize a profit from the temporary misalignment of their
prices; and

   - risk control, or the use of financial instruments (such as derivatives)
to reduce the risk of loss.

Risk control is more general than hedging. In a hedge, one often thinks

about eliminating a risk. Risk control means that a risk is mitigated to the

degree desired by the investor. Very few hedge funds employ hedging in the

sense of eliminating all risks.

Third, hedge funds operate in all the financial markets described in this

book: the cash market for stocks, bonds, and currencies and the derivatives

markets.

Fourth, the management fee structure for hedge funds is a combination of

a fixed fee based on the market value of assets managed plus a share of the

positive return. The latter is a performance-based compensation referred to

as an **incentive fee** .

Finally, when evaluating hedge funds, investors are interested in the

absolute return generated by the asset manager, not the relative return.

**Absolute return** - n a portfolio is simply the return realized. The **relative**

**return** is the difference between the absolute return and the return on some

benchmark or index. The use of absolute return rather than relative return for

evaluating an asset manager's performance managing a hedge fund is quite

different from the criteria used to evaluate the performance of an asset

manager managing the other types of portfolios discussed in this chapter.

```
Types of Hedge Funds

```

The different types of hedge funds can be categorized in various ways. Mark

Anson uses the following four broad categories: market directional,

corporate restructuring, convergence trading, and opportunistic. [10]

A **market directional hedge fund** is one in which the asset manager

retains some exposure to "systematic risk." In the category of market

directional hedge funds are those funds that pursue the following strategies:

equity long/short strategies, equity market timing, and short selling.

A **corporate restructuring hedge fund** is one whose asset manager

positions the portfolio to capitalize on the anticipated impact of a significant

corporate event. These events include a merger, an acquisition, or

bankruptcy.

The strategy of **convergence trading hedge funds** involves the

identification of potential misalignments of prices and/or yields that are

expected to move back to or "converge" to the expected relationship. The

asset manager positions the portfolio to benefit from the convergence.

**Opportunistic hedge funds** have the broadest mandate of the four hedge
fund categories. Asset managers of opportunistic hedge funds can make

specific bets on stocks or currencies, or they can have well-diversified

portfolios. Two groups of hedge funds fall into this category: global macro

hedge funds and funds of funds. **Global macro hedge funds** are hedge

funds that invest opportunistically based on macroeconomic considerations

in any market in the world. Probably the best-known hedge fund that falls

into this group is the Quantum Hedge Fund. Here are two well-documented

strategies that the asset managers of this hedge fund employed that produced

significant profits. Based on macroeconomic conditions in 1992 in the

United Kingdom, the hedge fund bet on the devaluation of the British

currency, the pound sterling. The British government did in fact devalue the

pound. In 1997, the hedge fund's macroeconomic analysis indicated that the

currency of Thailand, the baht, was overvalued and would be devalued by

the government of Thailand. The bet it made on the currency was right. The

government of Thailand did devalue the baht.

As we explained earlier in this chapter, there are funds of funds that

invest in mutual funds. Similarly, there are funds of funds that invest in other

hedge funds. That is, that portfolio of a fund of funds consists of interests in

- ther hedge funds.

```
Concerns about Hedge Funds in Financial Markets

```

There is considerable debate over the role of hedge funds in financial

markets because of their size and the impact they have on financial markets

as a result of their investment strategies. On the positive side, it has been

argued that they provide liquidity to the market. A Federal Reserve Bank

study found that market participants described hedge funds "as a significant

stability force" in the interest rate options markets. [11] (We describe interest

rate options in chapters 34 and 37.) In addition, hedge funds have provided

liquidity by participating in the municipal bond market.

The concern, however, is the risk of a severe financial crisis (i.e.,

systemic risk) as a result of the activities and investment strategies of hedge

funds, most notably the employment of excess leverage. The best-known

example is the collapse of Long-Term Capital Management (LTCM) in

September 1998. Studies of LTCM indicate that it used a leverage of 50.

That is, for every \$1 million of capital provided by investors, LTCM was

able to borrow \$50 million. The reason LTCM was able to borrow such a

large amount was because lenders did not understand or ignored the huge

risks associated with that hedge fund's investment strategies. The loss of

LTCM because of bad bets is not a concern per se, because the investors in

that hedge fund were sophisticated investors who took their chances in the

hope of reaping substantial returns. Instead, the problem was that the real

losers of that hedge fund's activities were major commercial banks and

investment banking firms that lent funds to LTCM. In the view of the

Federal Reserve, there were potential dire consequences from the potential

failure of LTCM, and the Federal Reserve reacted by organizing a rescue

plan for that hedge fund.

More recently, in June 2007, two hedge funds sponsored by the

investment banking firm Bear Stearns collapsed: the High-Grade Structured

Credit Strategies Enhanced Leverage Fund and the High-Grade Structured

Credit Strategies Fund. These failures required the sponsor, Bear Stearns, to

bail out the hedge funds. [12]

As a result of the LTCM failure, the President's Working Group on

Financial Markets made several recommendations for improving the

functioning of hedge funds in financial markets. The major recommendation

was that commercial banks and investment banks that lend to hedge funds

improve their credit risk management practices.

```
REITs

```

**Real estate investment trusts** (REITs) are stocks that represent an interest
in an underlying pool of real estate properties. They are similar to closed-end
funds, because the stock is publicly traded and the market price can differ
from that of the REIT's NAV. In the case of REITs, the investments in the
portfolio are real estate properties. The principal advantage of REITs is that
they allow investors access to an illiquid asset class that would be difficult
for an individual investor to invest in directly. Moreover, because a REIT
has a large number of properties in its portfolio, individual investors obtain
better diversification than by directly investing in real estate properties.

Moreover, tax advantages are granted to a company that qualifies as a

REIT. Specifically, under the U.S. federal tax code, dividends paid by a

corporation cannot be taken as a tax deduction when determining taxable

income. As a result, there is double taxation of corporate income: taxes are

paid at the corporate level, and income is then taxed again when distributed

to shareholders. The corporate tax treatment for a REIT is different. A REIT

is allowed to deduct the dividends paid to its shareholders when determining

its corporate taxable income. It is only when the dividends are paid to

shareholders that the income is taxed at the individual level, not at the

corporate level. Most states apply the same tax treatment to the income of

REITs. As a result, to avoid double taxation of income, most REITs follow a

dividend distribution policy whereby all their taxable income is distributed

to their shareholders, and therefore no corporate taxes are paid.

To obtain the favorable tax treatment granted to a REIT, a company must

satisfy requirements set forth by the federal tax code. The bulk of its

invested assets must be in real estate–related investments. As for the income

generated, the source must come from primarily real estate investments, and

at least 90% of a REIT's taxable income must be distributed to shareholders

annually in the form of dividends.

Investors in REITs include retail (individual) investors and institutional

investors. Retail investors invest through their nonretirement savings, IRAs,

- r defined contribution plans. Institutional investors, such as defined benefit
plans and endowment funds, invest in REITs to obtain exposure to the
commercial real estate market.

REIT ETFs are traded based on various REIT indexes.

```
Types of REITs

```

There are three types of REITs: equity REITs, mortgage REITs, and hybrid

REITs.

In an **equity REIT**, the manager purchases real estate property. That is,

the REIT portfolio consists of real estate properties that are owned by the

REIT. In addition, the REIT manager may also manage, renovate, and

develop real estate properties. Income generated for the investors in an

equity REIT is derived from rental and lease payments from the properties

- wned and any price appreciation. About 90% of the REITs traded are
equity REITs.

A diversified equity REIT invests in more than one type of property.

Typically, however, equity REITs specialize in one type of property. The

National Association of Real Estate Investment Trusts (NAREIT), the

leading organization representing the REIT industry, categorizes equity

trusts by the type of properties in which they specialize. The categories are:

   - industrial and office trusts specializing in industrial and/or office
properties;

   - retail REITs, specializing in strip malls, larger malls, and other types
   - f retail properties;
   - residential REITs, specializing in multifamily apartments and/or
developments for manufactured housing;

   - REITs specializing in lodging and resorts, holding ownership in
hotels, motels, and resort properties;

   - REITs specializing in ownership and management of self-storage
units; and

   - health care REITs, specializing in hospitals and other health care
facilities.

Other equity REITs do not fall into one of the categories above because they

- wn such properties as golf courses, timberland, or prisons.

A much smaller sector of the REIT market is the **mortgage REIT** . This

second kind of REIT originates and holds various types of real estate debt

that are used to purchase real estate. Thus, the portfolio of a mortgage REIT

includes investment vehicles that represent financing to owners, developers,

and purchasers of real estate. Mortgage REITs do not own real estate. The

returns for investors are generated from the interest earned on the financing

they provide.

There are two types of mortgage REITs, based on the type of real estate

property: residential or commercial property. Residential property includes

single-family homes. Commercial property includes the other types of real

estate properties mentioned above when categorizing equity REITs. Thus,

mortgage REITs are categorized as either residential mortgage REITs or

commercial mortgage REITs. A **residential mortgage REIT** primarily

- riginates and acquires loans that are used for the acquisition of single

family homes. There are only about 30 such REITs in the United States.

**Commercial mortgage REITs** invest primarily in loans and securities

backed by commercial properties. The securities that commercial mortgage

REITs invest in are commercial mortgage-backed securities, which we

discussed in chapter 31. In the REIT universe, only about 10% are mortgage

REITs.

A REIT that invests in both the equity interests and the debt interests in

real estate properties is called a **hybrid REIT** . Hybrid REITs provide

lending for the acquisition and development of real estate properties, as a

mortgage REIT does, and also purchase and develop real estate properties

themselves, as an equity REIT does. Some hybrid REITs specify in their

prospectus what allocation between equity ownership and mortgage

financing they will pursue. Other hybrid REITs do not fix the allocation

between ownership and financing but rather allow flexibility, so that

management can capitalize on perceived opportunities in the market.

Benchmark indexes are available to assess the performance of REITs.

The most popular index is the FTSE NAREIT US Real Estate Index series,

which includes both equity and mortgage REITs. (For the purpose of the

index construction, hybrid REITs are classified as either equity or mortgage

REITs.) Subindexes are available to measure the different specialized

categories discussed above (equity REITs and mortgage REITs), as well as

the different categories of equity REITs. Other REIT indexes focusing on

U.S. REITs are the MSCI US REIT Index, the Wilshire Real Estate

Securities Index, and the S&P US REIT Index.

```
Venture Capital Funds

```

An important participant in the real economy is the entrepreneur who

develops new products and services. Entrepreneurs who want to move from

their business plan and any prototype that they develop to the formation of a

company to implement their business plan need varying amounts of capital.

Startup companies typically lack tangible assets that can be used as collateral

for a loan and are unlikely to produce positive earnings for several years.

The stages of a startup firm are (1) the early stage, (2) the expansion

stage, and (3) the acquisition/buyout stage. In the very early stage, funds are

typically obtained from the entrepreneur's own resources, loans or

investments from family and friends, and bank loans collateralized by the

entrepreneur's personal assets. As the company expands, an entrepreneur

may seek funding from an angel investor. An **angel investor** is a wealthy

individual who invests his or her own funds in startup companies for

amounts ranging from $150,000 to $2 million. The investment is in the form

- f either equity ownership or convertible debt (i.e., debt that can be
converted into equity). The reality show on the ABC television network,
_Shark Tank_, shows entrepreneurs pitching their venture to some well-known
entrepreneurs, such as Mark Cuban. To better research and evaluate startups,
angel investors have formed groups or networks. There are more than 330
angel groups in North America, according to the Angel Capital Association.

Entrepreneurs needing funds far in excess of what can be raised from

loans and angel investors turn to venture capital firms. In turn, these firms

create venture capital funds, which are pooled investment funds.

```
Venture Capital Firms

```

A **venture capital firm** is an institutional management firm that provides

equity financing to startup companies that do not have a sufficient track

record to attract investment capital from traditional sources (e.g., the public

markets or lending institutions). Venture capital firms typically specialize in

- ne or more stages of a startup firm's business and by economic sector.
Venture capital firms typically specialize in industries.

The ultimate goal (the "exit strategy") for a venture capital firm is to sell

its equity interest in its portfolio companies through an acquisition or an

initial public offering (IPO). After they invest in a company, venture capital

firms are not passive investors. Instead, they take an active role either in an

advisory capacity or by way of representation on the company's board of

directors. The company's progress is monitored, the incentive plans for the

entrepreneurs and the management team are designed and implemented, and

the startup company's financial goals are established. In addition to

providing guidance to the companies in which they invest, venture capital

firms often have the right to hire and fire key managers, including the

- riginal entrepreneur.

```
Investing in a Venture Capital Fund

```

To obtain the funds to invest in startup companies, venture capital firms raise

capital from individual and institutional investors. An investor does not

invest in the venture capital firm but in a particular fund managed by the

firm and referred to as a **venture capital fund** .

A venture capital fund is typically structured as a limited partnership. [13] A

**limited partnership** has general partners (the venture capital firm in the

case of a venture capital fund) and limited partners, who are the investors.

The fund's income and capital gains are not taxed at the partnership level but

instead are passed through to the investors, who are then taxed. The general

partners are responsible for managing the fund, which means evaluating and

selecting the portfolio of companies in which the venture capital fund

invests. All the fund's partners will commit to a specific investment amount

at the formation of the limited partnership. The venture capital firm receives

the cash to invest as investors fulfill the terms of their commitment

agreement. Unlike investors in the other collective investment vehicles

discussed in this chapter, an investor in a venture capital fund must commit

funds for a long period of time, typically at least 10 years. No cash

contributions are made by the limited partners until they are called on by the

general partner to do so. This is referred to as "taking down" the

commitment and is done by the general partner making a "capital call." The

general partner will make a capital call when startup companies are

identified in which the venture capital fund's management team wants to

invest. Capital is committed not only by the limited partners but also by the

general partner, the venture capital firm. By committing its own capital, the

venture capital firm aligns its interests with those of the investors and the

firm; that is, principal-agent problems are reduced.

The fees received by a venture capital firm when managing a venture

capital fund are the management fee and the profit-sharing or incentive fee.

The management fee for most venture capital funds is in the 2% to 2.5%

range and is used to pay the expenses of the venture capital firm. The profitsharing or incentive fee, the primary source of revenue for a venture capital

firm, provides the firm with a share of the profits generated by the fund and

typically is 20%, although incentive fees as high as 35% exist.

```
Stages of a Venture Capital Fund

```

Here are the stages that a venture capital firm goes through in setting up a

venture capital fund. Fundraising from outside investors is the first stage.

Although the duration of this stage varies with the reputation of the venture

capital firm and the state of the economy, fundraising typically takes from

six months to a year.

Once the funds are raised, the fund is said to be "closed," and the second

stage begins. This stage involves the firm's management team performing

due diligence to assess the potential attractiveness of candidate startup firms

in which to invest. This stage can take up to five years, during which time no

profits are generated by the venture capital fund. Instead, losses are realized

- wing to the management fees that must be paid based on the amount
committed by the limited partners.

The third stage involves the beginning of investment in the startup

companies. The venture capital firm's team of managers determines how

much capital to commit to each startup company and what form the

investment should take. An investment is typically in the form of convertible

preferred shares or convertible debentures. It is at this stage that the general

partner (the venture capital firm) will make capital calls to the venture

capital fund's limited partners (the outside investors) to draw down on the

capital commitment. In this third stage, there is still no income generated.

The investing of funds to create the portfolio of companies is the fourth

stage, a stage that lasts almost to the end of the fund's term. During this time,

the venture capital management team continues to operate, because it may be

involved in several activities discussed earlier in this section. Moreover, it is

during this period that the fund will hopefully begin to generate income.

The venture capital fund's final stage is its windup and liquidation stage.

By the time this stage is reached, all committed capital has been invested,

and the venture capital fund is now reaping the financial rewards from its

portfolio of companies. Each portfolio company is sold, brought to the

public markets through an IPO, or liquidated through a legal bankruptcy

liquidation process. The limited partners and the venture capital firm (i.e.,

the general partner) are allocated their share of the profits (the incentive fee,

in the case of the venture capital firm).

```
Key Points

```

- Collective investment vehicles are products created through the pooling of
funds and the management (investment) of those fund by an asset
management firm, which receives compensation through a management fee
and possibly an incentive fee.

   - Retail and institutional investors invest in pooled funds and thereby
have an equity interest in the fund's net assets.

   - The advantages of collective investment vehicles compared to direct
investment in financial assets are better portfolio diversification, better
liquidity, professional management expertise, and possibly favorable

tax treatment.

  - Investment companies sell shares to the public and invest the
proceeds in a diversified portfolio of securities, with each share
representing a proportionate interest in the underlying portfolio of
securities.

  - Investment companies must be registered with the SEC and are
therefore referred to as "registered investment companies."

   - One type of investment company as classified by federal securities
law is a management company, which is created as either a corporation

   - r a trust.
   - Management companies are further classified as open-end funds (also
called "mutual funds") and closed-end funds.

   - A wide range of funds with many different investment objectives is
available. Securities law requires that a fund clearly set forth its
investment objective in its prospectus, and the objective identifies the
types of assets the fund will purchase and hold.

   - Open-end mutual funds and closed-end funds provide two crucial
economic functions associated with financial intermediaries: risk

reduction through diversification and lower costs of contracting and

information processing. Money market funds allow shareholders to

write checks against their shares, thus providing a payment mechanism,

another economic function of financial intermediaries.

- Investment companies are extensively regulated, with most of that
regulation occurring at the federal level. The key legislation is the
Investment Company Act of 1940.

- The most important feature regarding regulation is that the funds are
exempt from taxation on their gains if the gains are distributed to
investors in a relatively short time. Even allowing for that special taxfree status, it is necessary to recognize that regulations apply to many
features of the funds' administration, including sales fees, asset
management, degree of diversification, distributions, and advertising.

- Exchange-traded funds (ETFs) overcome two major drawbacks of
- pen-end mutual funds, namely, the pricing of mutual fund transactions
- nly at the end of the trading day and tax inefficiencies.
- ETFs are similar to open-end mutual funds in that they trade based on
NAV, but unlike open-end funds, they trade like stocks.

- An ETF has a sponsor. The asset manager of an ETF is responsible
for managing the portfolio so as to replicate as closely as possible the
return of the benchmark index.

- Although there are no universally accepted definitions of the private
investment entities called "hedge funds," these entities have in common
the use of leverage, short selling, arbitrage, and risk control when
seeking to generate superior returns.

- Despite the term "hedge" in describing these entities, they do not
completely hedge their positions.

- The Dodd-Frank Act of 2010 requires hedge funds to be registered
with the SEC and imposes certain reporting requirements on them.

- Hedge funds can be categorized as market directional, corporate
restructuring, convergence trading, and opportunistic.

- The public policy concern with hedge funds has been the excessive
use of leverage.

- Real estate investment trusts (REITs) are publicly traded stocks that
represent an interest in an underlying pool of real estate properties. Just
as with closed-end funds, the market price can differ from the NAV.

   - The three types of REITs are equity REITs, mortgage REITs, and
hybrid REITs. About 90% of REITs are equity REITs.

   - The manager of an equity REIT purchases real estate property as well
as renovates and develops real estate properties. Income for this type of
REIT is obtained from rental and lease payments and any price
appreciation.

   - The different categories of equity REITs are based on the type of
property purchased for the portfolio. For example, there are industrial
and office REITs, retail REITs, residential REITs, lodging and resort
REITs, and health care REITs.

  - Mortgage REITs provide financing for properties either by the
  - rigination or through the acquisition of loans and investing in
mortgage-related securities.

   - Hybrid REITs both invest in real estate properties and provide
financing.

   - Venture capital firms provide financing for startup companies. They
specialize by sector and the stage of financing of a startup.

   - Venture capital firms create venture capital funds, for which they seek
investors. Investors in a venture capital fund commit to a specific
investment amount but only have to provide cash when the venture
capital firm makes a capital call.

   - Capital for a venture capital fund is committed not only by outside
investors but also by the venture capital firm itself, thereby aligning the
interests of the outside investors and the venture capital firm.

   - A venture capital fund's final stage is its windup and liquidation
stage. Each portfolio company is sold, brought to the public market
through an IPO, or liquidated through a legal bankruptcy liquidation
process. Profits are distributed to all investors, and the incentive fee is
paid to the venture capital firm.

```
Questions

```

1. An investment company has \$1.05 million in assets, \$50,000 in
liabilities, and 10,000 shares outstanding.

a. What is its NAV?

b. Suppose the fund pays off its liabilities while at the same time, the value

- f its assets doubles. How many shares will an investor who invests \$5,000
receive?

2. a. "The NAV of an open-end fund is determined continuously
throughout the trading day." Explain why you agree or disagree with
this statement.

b. "A closed-end fund will always trade at its NAV." Explain why you agree

- r disagree with this statement.

3. Why might the price of a share of a closed-end fund diverge from its

NAV?

4. a. Describe the following: front-end load, back-end load, level load,
12b-1 fee, management fee.

b. Why do mutual funds have different classes of shares?

5. What is a fund of funds?
6. What costs are incurred by a mutual fund?
7. Why might the investor in a mutual fund be faced with a potential
tax liability arising from capital gains, even though the investor did not
benefit from such a gain?

8. Does an investment company provide any economic function that
individual investors cannot provide for themselves on their own?
Explain your answer.

9. What is an exchange-traded fund (ETF)?
10. What are the advantages of an ETF relative to open-end and
closed-end investment companies?

11. What is the role played by an ETF's authorized participants?
12. a. Why is the term "hedge," as used in the term "hedge funds,"
misleading?

b. Where is the term "hedge fund" described in the U.S. securities law?

13. How does the management fee structure of the asset manager of a
hedge fund, a venture capital fund, or a real estate investment trust
(REIT) differ from that of an asset manager of a mutual fund?

14. How has the Dodd-Frank Act affected the regulation of hedge
funds?

15. Some hedge funds refer to their strategies as "arbitrage strategies."
Why would this claim be misleading?

16. What is meant by a "convergence traded hedge fund"?
17. What was the major recommendation of the President's Working
Group on Financial Markets regarding hedge funds?

18. Two investors are arguing about the types of investment made by
REITs. One investor believes that REITs are investors in real estate

properties. The other investor believes that REITs provide financing for

the purchase of real estate properties. The two investors ask you who is

right. How would you respond to these investors?

19. What are the two types of mortgage REITs?
20. A capital venture firm does more than provide financing for startup
companies. Explain what other activities the firm's management team
performs.

21. How does the raising of funds for a venture capital fund differ from
that of other collective investment vehicles?

22. a. When a capital venture fund is structured as a partner, who are
the limited partners and who are the general partners?

b. What does it mean for a venture capital fund's general partner to make a

capital call on the limited partners?

23. What is a venture capital fund's exit strategy?
24. Although in this chapter, we are treating an ETF as a different investment vehicle from an open-end
mutual fund, technically an ETF is considered a RIC under the federal securities law.

25. The first ETFs were the Toronto Stock Exchange Index Participations, listed on the Toronto Stock
Exchange, which were designed to track the TSE 35 Index and later to track the TSE 100 Index.

[3. See the web page http://finance.yahoo.com/etf.](http://finance.yahoo.com/etf)

[4. See the web page http://finance.yahoo.com/etf/lists/?mod_id=mediaquotesetf & tab=tab5rcnt=50.](http://finance.yahoo.com/etf/lists/?mod_id=mediaquotesetf)

5. Gerald W. Buetow and Brian J. Henderson, "An Empirical Analysis of Exchange-Traded Funds,"
_Journal of Portfolio Management_ 30, no. 3 (2012): 112–127.

6. The Securities Act of 1933 sets forth much more specific criteria for an investor to be classified as
an accredited investor. The details are not important to the present discussion.

7. George Soros, _Open Society: Reforming Global Capitalism_ (New York: PublicAffairs, 2000), 100.
8. President's Working Group on Financial Markets, _Hedge Funds, Leverage, and the Lessons of_
_Long-Term Capital Management: Report of the President's Working Group on Financial Markets_
(Washington, DC: Department of the Treasury et al., April 1999), 1, available at http://www.treasury
.gov/resource-center/fin-mkts/Documents/hedgfund.pdf.

9. Financial Services Authority, "Hedge Funds and the FSA," Discussion Paper 16 (London:
Financial Services Authority, 2002), 8.

10. Mark J. P. Anson, _Handbook of Alternative Assets_, 2nd ed. (Hoboken, NJ: John Wiley & Sons,
11..

12. Federal Reserve Board, _Concentration and Risk in the OTC Markets for U.S. Dollar Interest Rate_
_Options_ (Washington, DC: Department of the Treasury, Board of Governors of the Federal Reserve
System, March 2005), 3.

13. The funds primarily invested in subprime mortgages. The subprime mortgage meltdown in the
summer of 2007 is discussed in chapter 30. In March 2008, the Federal Reserve had to institute a plan
to rescue Bear Stearns.

14. The other type of legal structure used is a limited liability company.

# **`33`**

```
Financial Futures Markets

CONTENTS

```

**Learning Objectives**

**Futures Contracts**

Liquidating a Position

Role of the Clearinghouse

Margin Requirements

Leveraging Aspect of Futures

Daily Price Limits

**Futures versus Forward Contracts**

**Risk-Sharing versus Insurance Arrangements**

Risk-Sharing Arrangements

Insurance Arrangements

**Stock-Related Contracts**

Broad-Based Stock Index Futures

Narrow-Based Stock Index Futures

Single-Stock Futures

Stock Market Volatility Futures

**Interest Rate Futures Contracts**

Eurodollar Futures

Euribor Futures

U.S. Treasury Bond Futures

Treasury Note Futures

Ultra Treasury Bond Futures

**Currency Forward and Futures Contracts**

Currency Forward Contracts

Currency Futures Contracts

**Role of Futures Contracts in Financial Markets**

Effect of Futures on the Volatility of the Underlying Asset

A Closer Look at the Benefits of Stock Index Futures

**Key Points**

**Questions**

```
Learning Objectives

```

After reading this chapter, you will understand:

   - what a derivative contract is;
   - the types of derivatives;
   - what a futures contract is;
   - the basic economic function of a futures contract;
   - the differences between futures and forward contracts;
   - the role of the clearinghouse;
   - the mark-to-market and margin requirements of a futures contract;
   - what is meant by a "risk-sharing arrangement" for a derivative;
   - what is meant by an "insurance arrangement" for a derivative;
   - contract specifications of U.S. stock index futures contracts, single
stock futures contracts, and narrow-based stock index futures contracts;

   - contract specifications of major interest rate futures contracts;
   - currency forward and futures contracts; and
   - the role of futures markets in the financial markets.

In the last seven chapters in this section of the book, we cover financial

instruments known as **financial derivatives** - r simply **derivatives** . The price

- r value of a derivative is derived from the value of some underlying asset,
reference rate, or index. We shall simply refer to the underlying asset,
reference rate, or index as the "underlying." The economic purpose of
derivatives is to provide efficient vehicles for controlling some risk by
transferring risk to another party willing to accept the unwanted risk. For this
reason, derivatives are referred to as "risk transfer vehicles." The
development of the derivatives markets throughout the world was a response
to the need for an efficient risk-transference mechanism as a result of stock

price and interest rate volatility. As we will see when discussing derivatives

in this section of the book, some derivatives provide for a _risk-sharing_ type

- f arrangement, whereas others are a type of _insurance_ arrangement.

Derivatives are classified as futures, forwards, options, and swaps. Our

focus in this chapter and the next is on futures and forward contracts. Here

we provide the fundamentals, some of the more important financial futures

contracts, and their role in financial markets. We postpone a description of

the pricing of futures and their applications to chapters 35 and 36,

respectively.

Futures contracts can be classified as either commodities or financial

futures contracts. Commodities futures include agricultural commodities

(such as grain and livestock), imported foodstuffs (such as coffee, cocoa, and

sugar), and industrial commodities. Futures contracts based on a financial

instrument or a financial index are known as financial futures. Financial

futures can be classified as (1) stock index futures, (2) interest rate futures,

and (3) currency futures.

The three major derivatives exchanges in the world are Chicago

Mercantile Exchange, the NYSE Euronext Liffe, and the Euroex.

Historically, the trading of futures contracts has been via an open outcry

environment, where traders and brokers shout out bids and offers in a trading

pit or ring. Although open outcry has been the primary method of trading

certain types of futures contracts, since 2004, trading in many financial

futures in the United States has moved to an electronic trading platform,

where market participants post their bids and offers on a computerized

trading system. The trading of futures contracts outside the United States

takes place on an electronic platform.

```
Futures Contracts

```

A **futures contract** is an agreement between a buyer and a seller, in which

1. the buyer agrees to take delivery of something at a specified price at
the end of a designated period, and

2. the seller agrees to make delivery of something at a specified price
at the end of a designated period.

No one buys or sells anything when entering into a futures contract. Instead,

the parties to the contract agree to buy or sell a specific amount of a specific

item at a specified future date. When we speak of the "buyer" or the "seller"

- f a contract, we are simply adopting the jargon of the futures market, which
refers to parties of the contract in terms of the future obligation they are
committing themselves to.

Let's look closely at the key elements of this contract. The price at which

the parties agree to transact in the future is called the **futures price** . The

designated date at which the parties must transact is the **settlement date** - r

**delivery date** . The "something" that the parties agree to exchange is the

**underlying** .

To illustrate, suppose a futures contract is traded on an exchange where

the underlying to be bought or sold is Asset XYZ, and the settlement date is

three months from now. Assume further that Bob buys this futures contract,

and Sally sells this futures contract, and the price at which they agree to

transact in the future is \$100. Then \$100 is the futures price. At the

settlement date, Sally will deliver Asset XYZ to Bob. Bob will give Sally

\$100, the futures price.

When an investor takes a position in the market by buying a futures

contract (or agreeing to buy at the future date), the investor is said to be in a

**long position** - r to be **long futures** . If, instead, the investor's opening

position is the sale of a futures contract (which means the contractual

- bligation to sell something in the future), the investor is said to be in a
**short position** - r to be **short futures** .

The buyer of a futures contract will realize a profit if the futures price

increases; the seller of a futures contract will realize a profit if the futures

price decreases. For example, suppose that one month after Bob and Sally

take their positions in the futures contract, the futures price of Asset XYZ

increases to \$120. Bob, the buyer of the futures contract, could then sell the

futures contract and realize a profit of \$20. Effectively, he has agreed to buy

at the settlement date Asset XYZ for \$100 and to sell Asset XYZ for \$120.

Sally, the seller of the futures contract, will realize a loss of \$20.

If the futures price falls to \$40 and Sally buys the contract, she realizes a

profit of \$60 because she agreed to sell Asset XYZ for \$100, and now can

buy it for \$40. Bob would realize a loss of \$60. Thus, if the futures price

decreases, the buyer of the futures contract realizes a loss, and the seller of

the futures contract realizes a profit.

```
Liquidating a Position

```

Depending on the contract, there is a predetermined time in the contract

settlement month that the contract stops trading, and a price is determined by

the exchange for settlement of the contract. The contract with the closest

settlement date is called the **nearby futures contract** . The next futures

contract is the one that settles just after the nearby contract. The contract

farthest away in time from settlement is called the **most distant (** - r

**deferred** ) futures contract.

A party to a futures contract has two choices on liquidation of the

position. First, the position can be liquidated prior to the settlement date. For

this purpose, the party must take an offsetting position in the same contract.

For the buyer of a futures contract, this means selling the same number of

identical futures contracts; for the seller of a futures contract, this means

buying the same number of identical futures contracts.

The alternative is to wait until the settlement date. At that time, the party

purchasing a futures contract accepts delivery of the underlying; the party

that sells a futures contract liquidates the position by delivering the

underlying at the agreed-on price. For some futures contracts that we shall

describe later in this chapter, settlement is made in cash only. Such contracts

are referred to as **cash settlement contracts** .

A useful statistic measuring the liquidity of a contract is the number of

contracts that have been entered into but not yet liquidated. This figure is

called the contract's **open interest** .

An open interest figure is reported by an exchange for all futures

contracts traded on the exchange.

```
Role of the Clearinghouse

```

Associated with every futures exchange is a **clearinghouse**, which performs

several functions. One of these functions is to guarantee that the two parties

to the transaction will perform according to the contract. To see the

importance of this function, consider potential problems in the futures

transaction described earlier from the perspective of the two parties—Bob

the buyer and Sally the seller. Each must be concerned with the other's

ability to fulfill the obligation at the settlement date. Suppose that at the

settlement date, the price of Asset XYZ in the cash market is \$70. Sally can

buy Asset XYZ for \$70 and deliver it to Bob, who in turn must pay her

\$100. If Bob does not have the capacity to pay \$100 or refuses to pay,

however, Sally has lost the opportunity to realize a profit of \$30. Suppose,

instead, that the price of Asset XYZ in the cash market is \$150 at the

settlement date. In this case, Bob is ready and willing to accept delivery of

Asset XYZ and pay the agreed-on price of \$100. If Sally cannot deliver or

refuses to deliver Asset XYZ, Bob has lost the opportunity to realize a profit

- f \$50.

The clearinghouse exists to eliminate this problem. When someone takes

a position in the futures market, the clearinghouse takes the opposite position

and agrees to satisfy the terms set forth in the contract. Because of the

clearinghouse, the two parties need not worry about the financial strength

and integrity of the party taking the opposite side of the contract. After initial

execution of an order, the relationship between the two parties ends. The

clearinghouse interposes itself as the buyer for every sale and the seller for

every purchase. Thus, the two parties are then free to liquidate their positions

without involving the other party in the original contract, and without worry

that the other party may default. This function is referred to as the **guarantee**

**function** .

Besides its guarantee function, the clearinghouse makes it simple for

parties to a futures contract to unwind (i.e., reverse) their positions prior to

the settlement date. Suppose that Bob wants to get out of his futures

position. He will not have to seek out Sally and work out an agreement with

her to terminate the original contract. Instead, Bob can unwind his position

by selling an identical futures contract. As far as the clearinghouse is

concerned, its records will show that Bob has bought and sold an identical

futures contract. At the settlement date, Sally will not deliver Asset XYZ to

Bob but will be instructed by the clearinghouse to deliver to someone who

bought and still has an open futures position. In the same way, if Sally wants

to unwind her position prior to the settlement date, she can buy an identical

futures contract.

The importance of a clearinghouse to the success of a derivatives market

in general cannot be overemphasized. As explained in chapter 37, some

derivatives have provoked increasing concerns about counterparty risk,

particularly following the recent financial crisis and the failure of Lehman

Brothers. As a result, international agreements have sought to ensure that an

effective clearinghouse mechanism is implemented.

```
Margin Requirements

```

When a position is first taken in a futures contract, the investor must deposit

a minimum dollar amount per contract as specified by the exchange. This

amount, called **initial margin**, is required as a deposit for the contract.

Individual brokerage firms are free to set margin requirements above the

minimum established by the exchange. The initial margin may be in the

form of an interest-bearing security. As the price of the futures contract

fluctuates each trading day, the value of the investor's equity in the position

changes. The **equity** in a futures account is the sum of all margins posted

and all daily gains less all daily losses to the account. We develop this

important concept throughout this section.

At the end of each trading day, the exchange determines the settlement

price for the futures contract. The settlement price is different from the

closing price, which many people know from the stock market and which is

the price of the security in the final trade of the day (whenever that trade

- occurred during the day). In contrast, the **settlement price** is the value that
the exchange considers to be representative of trading at the end of the day.
The representative price may in fact be the price in the day's last trade. But,
if there is a flurry of trading at the end of the day, the exchange looks at all
trades in the last few minutes and identifies a median or average price
among those trades. The exchange uses the settlement price to mark to
market the investor's position, so that any gain or loss from the position is
quickly reflected in the investor's equity account.

**Maintenance margin** is the minimum level (specified by the exchange)
to which an investor's equity position may fall as a result of an unfavorable

price movement before the investor is required to deposit additional margin.

The additional margin deposited is called **variation margin**, and it is the

amount necessary to bring the equity in the account back to its initial margin

level. Unlike initial margin, the variation margin must be in cash rather than

in interest-bearing instruments. Any excess margin in the account may be

withdrawn by the investor. If a party to a futures contract who is required to

deposit variation margin fails to do so within 24 hours, the exchange closes

the futures position out.

Although there are initial and maintenance margin requirements for

buying securities on margin, the concept of margin differs for securities and

futures. When securities are acquired on margin, the difference between the

price of the security and the initial margin is borrowed from the broker. The

security purchased serves as collateral for the loan, and the investor pays

interest. For futures contracts, the initial margin, in effect, serves as good

faith money, an indication that the investor will satisfy the obligation of the

contract. Normally, no money is borrowed by the investor who takes a

futures position.

To illustrate the mark-to-market procedure, let's assume the following

margin requirements for Asset XYZ: (1) initial margin of \$7 per contract and

(2) maintenance margin of \$4 per contract. Let's assume that Bob buys 500

contracts at a futures price of \$100, and Sally sells the same number of

contracts at the same futures price. The initial margin for both Bob and Sally

is \$3,500, which is determined by multiplying the initial margin of \$7 by the

number of contracts, which is 500. Bob and Sally must put up \$3,500 in cash

- r Treasury bills or other acceptable collateral. At this time, \$3,500 is also
called the “equity in the account.” The maintenance margin for the two
positions is \$2,000 (the maintenance margin per contract of \$4 multiplied by
500 contracts). The equity in the account may not fall below \$2,000. If it
does, the party whose equity falls below the maintenance margin must put
up additional margin, which is the variation margin. Two points are worth
noting here. First, the variation margin must be cash. Second, the amount of
variation margin required is the amount needed to bring the equity up to the
initial margin, not to the maintenance margin.

To illustrate the mark-to-market procedure, assume the following

settlement prices at the end of several trading days after the transaction was

entered into:

**Trading Day** **Settlement Price**

1 \$99

2 \$97

3 \$98

4 \$95

First, consider Bob's position. At the end of trading day 1, Bob realizes a

loss of \$1 per contract, or \$500 for the 500 contracts he bought. Bob's initial

equity of \$3,500 is reduced by $500 to $3,000. No action is taken by the

clearinghouse, because Bob’s equity is still above the maintenance margin of

\$2,000. At the end of the second day, Bob realizes a further loss as the price

- f the futures contract has declined another $2 to $97, resulting in an
additional reduction in his equity position by \$1,000. Bob’s equity is then
\$2,000: the equity at the end of trading day 1 of \$3,000 minus the loss on
trading day 2 of \$1,000. Despite the loss, no action is taken by the
clearinghouse, because the equity still meets the \$2,000 maintenance
requirement. At the end of trading day 3, Bob realizes a profit from the
previous trading day of \$1 per contract or \$500. Bob’s equity increases to
\$2,500. The drop in price from $98 to $95 at the end of trading day 4 results
in a loss for the 500 contracts of \$1,500 and consequent reduction of Bob’s
equity to \$1,000. As Bob's equity is now below the \$2,000 maintenance
margin, Bob is required to put up additional margin of \$2,500 (variation
margin) to bring the equity up to the initial margin of \$3,500. If Bob cannot
put up the variation margin his position will be liquidated.

Now, let's look at Sally's position. Sally as the seller of the futures

contract benefits if the price of the futures contract declines. As a result, her

equity increases at the end of the first two trading days. In fact, at the end of

trading day 1, she realizes a profit of \$500, which increases her equity to

\$4,000. She is entitled to take out the \$500 profit and use these funds

elsewhere. Suppose she does, and her equity, therefore, remains at \$3,500 at

the end of trading day 1. At the end of trading day 2, she realizes an

additional profit of \$1,000 that she also withdraws. At the end of trading day

3, she realizes a loss of \$500 with the increase of the price from $97 to $98.

This results in a reduction of her equity to \$3,000. Finally, on trading day 4,

she realizes a profit of \$1,000, making her equity \$4,000. She can withdraw

\$500.

```
Leveraging Aspect of Futures

```

A party taking a position in a futures contract need not put up the entire

amount of the investment. Instead, the exchange or clearinghouse requires

- nly the initial margin to be put up. To see the crucial consequences of this
fact, suppose Bob has \$100 and wants to invest in Asset XYZ, because he
believes its price will appreciate. If Asset XYZ is selling for \$100, he can
buy one unit of the asset. His payoff will then be based on the price action of

- ne unit of Asset XYZ.

Suppose further that the exchange where the futures contract for Asset

XYZ is traded requires an initial margin of only 5%, which in this case,

would be \$5. This means Bob can purchase 20 contracts with his \$100

investment. (We ignore the fact that Bob may need funds for variation

margin.) His payoff will then depend on the price action of 20 units of Asset

XYZ. Thus, he can leverage the use of his funds. (The degree of leverage

equals 1/margin rate. In this case, the degree of leverage equals 1/0.05, or

20.) Although the degree of leverage available in the futures market varies

from contract to contract, as the initial margin requirement varies, the

leverage attainable is considerably greater than in the cash market.

At first, the leverage available in the futures market may suggest that the

market benefits mainly those who want to speculate on price movements. As

we shall see in chapter 35, however, futures markets can also be used to

reduce price risk. Without the leverage possible in futures transactions, the

cost of reducing price risk using futures would be too high for many market

participants.

```
Daily Price Limits

```

The exchange has the right to impose a limit on the daily price movement of

a futures contract from the previous day's closing price. A **daily price limit**

sets the minimum and maximum price at which the futures contract may

trade that day. When a daily price limit is reached, trading does not stop but

rather continues at a price that does not violate the minimum or maximum

price.

The rationale offered for the imposition of daily price limits is that they

provide stability to the market at times when new information may cause the

futures price to exhibit extreme fluctuations. Those who support daily price

limits argue that giving market participants time to digest or reassess such

information if price is restricted when price limits would be violated gives

them greater confidence in the market. Not all economists agree with this

rationale. The question of the role of daily price limits and whether they are

necessary remains the subject of extensive debate.

```
Futures versus Forward Contracts

```

A **forward contract**, just like a futures contract, is an agreement for the

future delivery of the underlying at a specified price at the end of a

designated period. Futures contracts are standardized agreements as to the

delivery date (or month) and quality of the deliverable, and they are traded

- n organized exchanges. A forward contract is usually nonstandardized,
because the terms of each contract are negotiated individually between buyer
and seller. Also, there is no clearinghouse for trading forward contracts, and
secondary markets are often nonexistent or extremely thin. Unlike a futures
contract, which is an exchange-traded product, a forward contract is an overthe-counter (OTC) instrument.

Although both futures and forward contracts set forth terms of delivery,

futures contracts are not intended to be settled by delivery. In fact, generally

fewer than 2% of outstanding futures contracts are settled by delivery. In

contrast, forward contracts are intended for delivery.

Futures contracts are marked to market at the end of each trading day.

Consequently, futures contracts are subject to interim cash flows, as

additional margin may be required in the case of adverse price movements,

- r as an investor who has experienced favorable price movements withdraws
any cash that exceeds the account's margin requirement. A forward contract
may or may not be marked to market, depending on the wishes of the two
parties. For a forward contract that is not marked to market, there are no
interim cash flow effects, because no additional margin is required.

Finally, the parties in a forward contract are exposed to credit risk,

because either party may default on the obligation. Credit risk is minimal in

the case of futures contracts, because the clearinghouse associated with the

exchange guarantees the other side of any transaction.

Other than these differences, which reflect the institutional arrangements

in the two markets, most of what we say about futures contracts applies

equally to forward contracts.

```
Risk-Sharing versus Insurance Arrangements

```

As mentioned at the outset of this chapter, derivatives allow for the transfer

- f risk. The two types of risk transfer arrangements are risk-sharing and
insurance arrangements.

```
Risk-Sharing Arrangements

```

Futures and forward contracts are risk-sharing arrangements because of the

nature of the payoff of futures contracts. For simplicity, let us consider a

commodity futures contract rather than a financial futures contract.

Consider a producer of crude oil and a manufacturing firm that uses

crude oil. Both are concerned about the price of crude oil in the future. The

former is concerned that after the crude oil is produced, the future price of

crude oil will decline below its current market price; the latter is concerned

that when crude oil is needed in the future, its price will be higher than the

current market price. Both parties are concerned with price risk. A futures

contract allows both parties to manage this risk.

A straightforward way to manage risk is for the two parties to agree to a

fixed price at which to transact (buy and sell) at some specified future date.

For example, suppose the crude oil producer and the manufacturing firm

agree to exchange X barrels of crude oil three months from now at a fixed

price of \$101 per barrel. By doing so, both parties have eliminated price risk

for crude oil three months from now. Both have also given up the

- pportunity to benefit from a favorable movement in the price of crude oil
three months from now. Because both parties are sharing the price risk, a
futures contract is said to be a "risk-sharing arrangement."

Given this arrangement, let's consider what happens for every \$1 per

barrel change in the market price of crude oil three months from now. For

every \$1 per barrel decrease in the price, the crude oil producer realizes a

gain by having agreed to sell crude oil for \$101 per barrel when its market

price is \$100. The gain from the agreement offsets the loss of having to sell a

barrel of crude oil in the market three months from now for \$100 per barrel.

The manufacturing firm realizes a loss of \$1 per barrel, but that loss is offset

by the firm's being able to buy crude oil in the market for \$1 less. Similarly,

if the market price of crude oil increases three months from now, the crude

- il producer realizes a loss on the agreement, but that loss is offset by the
producer's being able to sell crude oil at a higher price. Similarly, the
manufacturing firm realizes a gain on the arrangement, but that gain is offset
by the higher cost of purchasing crude oil in the market.

This payoff pattern is referred to as a **symmetric payoff** . Because in such

a payoff, every \$1 change in the price of the underlying results in an

identical gain or loss for the two parties, this type of arrangement is also

referred to as a **linear payoff derivative** .

Interest rate and equity swaps are other types of derivatives that are risksharing arrangements.

```
Insurance Arrangements

```

Now that we understand what a risk-sharing arrangement for transferring

price risk is, let's look at another way of managing the price risk faced by the

two parties in our illustration and introduce a solution from the perspective

- f the manufacturing firm. By doing so, we will clarify the concept of an
insurance arrangement.

Suppose that some third party is willing to ensure that the manufacturing

firm will not have to pay more than \$101 per barrel for crude oil three

months from now. Basically, this would be an insurance contract that the

third party would provide. It would specify that for a fee, which is

effectively an insurance premium, the manufacturing firm is guaranteed not

to have to pay more than \$101 per barrel for crude oil three months from

now. Let's assume that the insurance premium is \$1.50 per barrel.

Effectively, the manufacturing firm is establishing a maximum price for

crude oil of \$102.50 per barrel, the price of \$101 under the insurance

contract plus the insurance premium of \$1.50. Suppose that the price of

crude oil increases to more than \$101 per barrel three months from now.

Then the manufacturing firm will require the insurer to sell the

manufacturing firm crude oil for \$101 per barrel. The manufacturing firm

effectively pays \$102.50 and avoids the higher price. Now suppose the price

- f crude oil declines to \$98 per barrel. The manufacturing firm then just
walks away from the agreement (remember, the contract allows but does not
require the manufacturing firm to buy the crude oil), losing only the \$1.50
insurance premium.

Effectively, the manufacturing firm pays \$99.50 per barrel ($98 + $1.50).

In this way, the manufacturing firm benefits from a favorable price

movement for crude oil but limits the loss to the insurance premium. From

the third party's perspective (effectively, the insurer's), there is considerable

downside risk, and the upside potential is limited to the insurance premium.

This type of payoff is referred to as a "nonlinear payoff," and hence,

derivatives with this attribute are referred to as **nonlinear payoff**

**derivatives** - r **asymmetric payoff derivatives** .

This type of payoff occurs, because unlike the case of a linear payoff

derivative, where both parties are required to act, with a nonlinear payoff

derivative, only one party is required to perform: the party providing the

insurance. In terms of their economic function, nonlinear payoff derivatives

are equivalent to insurance, so they are often referred to as **insurance**

**arrangements** .

What type of derivative has this type of payoff? As we will see in the

chapter 34, options fall into this category of derivatives.

```
Stock-Related Contracts

```

In this section, we describe major stock-related futures contracts. Stockrelated futures contracts include broad-based stock index futures, narrowbased stock index futures, and single-stock futures. Another type of equityrelated futures contract is one where the underlying is some measure of stock

market volatility.

```
Broad-Based Stock Index Futures

```

Seeking to accommodate institutional investors' need for financial

instruments to control risk for portfolios, in 1982, exchanges offered some

broad-based stock index futures contracts that covered U.S. and non-U.S.

equity markets.

In the United States, the securities law defines a broad-based stock index

as a basket of securities for which the weight of any single constituent does

not exceeds 30% and the weight of the five largest components does not

exceed 60% of the index. All other indexes are said to be "narrow-based"

indexes and stock index futures, which we discuss in the next section. The

distinction between broad-based and narrow-based indexes is important,

because it determines which U.S. government entity regulates the stockrelated futures contract: the SEC or the Commodities Futures Trading

Commission (CFTC). [1] The former regulates stock index futures contracts

where the underlying is a broad-based index, and the latter regulates stock

index futures contracts where the underlying is a narrow-based index.

Regardless of the stock index futures contract, its dollar value is the

product of the futures price and the contract's multiple:

For example, the contract multiple for the S&P 500 futures contract is

\$250. For some indexes, there is a “mini contract.” The introduction of mini

contracts was to allow for their use by retail (as opposed to institutional)

investors. Consequently, when referring to contracts that have a

corresponding mini contract, the larger contract is referred to as the “full

contract.” For example, in the case of the S&P 500 futures contact, the

contract multiple for full contract is \$250. The mini contract is one-fifth of

the S&P 500 futures contract, so the contract multiple is \$50.

To illustrate the formula, if the futures price for the S&P 500 futures

contract is 2,160.00, then the dollar value of the full contract is 2160.00 ×

$250 = $540,000, and for the mini contract it is 2160.00 × $50 = $108,000.

Now that we know how the value of a stock index futures contract is

determined, let's see how an investor gains or loses when the futures price

changes. Once again, consider the S&P 500 full futures contract. Suppose an

investor buys (takes a long position in) an S&P 500 full futures contract at

2160 and sells it at 2,190. The investor realizes a profit of 30 points times

\$250, or \$7,500. If the futures contract is sold instead for 2140, the investor

realizes a loss of 20 points times \$250, or \$5,000.

As indicated, the S&P500 futures contract at the CME is based on \$250

times the value of the S&P500 (1). So, if the S&P500 was at 3,000, the

futures contract would have a value of \$750,000. This large size and the

resulting volatility made it too large a trading exposure for many individual

investors (and speculators). As a result, in September 1997 the CME listed a

smaller futures contract on the S&P500 index. It was valued at \$50 times the

S&P500, one fifth the size of the full-sized contract. The other contract

specifications were the same. This contract was traded electronically, not

floor traded as were the original contacts. Due to its electronic trading, it was

able to be kept open for longer trading hours (Sunday to Friday, 5:00 p.m. to

4:00 p.m. central daylight time). It is closed for one hour a day for

maintenance. Thus, it provides almost 24-hour-per-day market access. The

small size, low margins, and long trading hours make it ideal for active

speculators. This contract has become one of the largest futures contact in

the world. This contract, due to its specifications, is called an "E-Mini"

contract. Stock index futures contracts such as on the Nasdaq 100 and the

S&P MidCap 400 were also added. These Emini futures prices are

continuously available and are covered widely in the press.

Stock index futures contracts are cash settlement contracts. Therefore, at

the settlement date, cash will be exchanged to settle the contract. As

explained earlier, futures contracts come with margin requirements (initial,

maintenance, and variation). Margin requirements are revised periodically.

The exchanges classify users of contracts as hedgers or speculators, with the

margin for the former being less than that for the latter. Futures positions are

marked to market at the end of each trading day.

```
Narrow-Based Stock Index Futures

```

Futures exchanges have found that there are investors who want to take long

and short positions in the stock market for a group of stocks and do so by

paying for only one trade. Hence only one brokerage commission is paid to

trade the group of stocks. These futures contracts are referred to as **narrow-**

**based stock index futures** .

In the United States, securities law defines a narrow-based stock index as

an index in which (1) the index has nine or fewer component securities, (2) a

component security comprises more than 30% of the index's weighting, (3)

the five highest weighted component securities in the aggregate comprise

more than 60% of the index's weighting, or (4) the lowest weighted

component securities comprise, in the aggregate, 25% of the index's

weighting, have an aggregate dollar value of average daily trading volume of

less than \$50 million (or in the case of an index with 15 or more component

securities, \$30 million). Futures on security indexes that are not narrowbased indexes are not subject to the jurisdiction of the SEC.

The unit of trading for these indexes is the notional value of the index

divided by 1,000. That is, the market value for each component of the index

is multiplied by its number of shares specified in the contract. The sum of all

the market values of the components is then computed, and the total market

value is divided by 1,000.

```
Single-Stock Futures

```

There are single-stock futures on selected stocks: futures in which the

underlying is the stock of an individual company. The contracts are for 100

shares of the underlying stock. At the settlement date, physical delivery of

the stock is required. Although single-stock futures are traded in several

countries outside the United States, trading in these contracts was banned

until late 2000. [2] It was not until November 2002 that they began trading in

the United States. Single-stock futures contracts can be used by portfolio

managers as a substitute for long and short positions in the underlying

stocks. As of 2016, on the Eurex Exchange there were more than 1,100

single stock futures from 20 different global markets, including emerging

markets.

```
Stock Market Volatility Futures

```

A key risk factor for equity investors is stock market volatility. Several

indexes have been developed for gauging stock market volatility. These

indexes are forward-looking measures of stock market volatility that

investors might expect to see over some period of time. The volatility

measure used is the implied volatility of the options traded on a specific

broad-based market index. Thus, the underlying cannot be purchased in the

cash market. When we describe options in chapter 34 and the pricing of

- ptions in chapter 35, the concept of implied volatility of an option will be
explained.

The first stock market volatility index that has been commercialized is

the Chicago Board Options Exchange (CBOE) Market Volatility Index

(VIX), dubbed the "investor fear index." The VIX is based on the S&P 500

index options with 30 days to expiration. Hence, the VIX is a measure of the

forward-looking volatility of the S&P 500 over the next 30 days. The

methodology developed for the construction of the VIX has been used by the

CBOE to create a market volatility index for the Dow Jones Industrial

Average (VXD), the NASDAQ 100 (VXN), and the Russell 2000 (RVX).

The NYSE Euronext has created market volatility indexes for several

European countries: the AEX (an index of 25 stocks traded in Amsterdam),

the BEL20 (an index of 20 Belgium stocks), and the CAC40 (an index of 40

French stocks).

```
Interest Rate Futures Contracts

```

Interest rate futures contracts were first introduced in the United States in

October 1975. Today, numerous types of interest rate futures contracts are

traded, and the number continues to grow. In the United States, the two

major exchanges where interest rate futures contracts are traded are the

Chicago Mercantile Exchange Group (CME) and the NYSE Euronext

Global Derivatives exchanges.

Both exchanges provide short-term interest rate futures products that

allow exposure to U.S. short-term LIBOR (Eurodollar futures) and shortterm euro interest rates (euribor futures). In addition, the exchanges already

- ffer or plan to offer other short-term interest rate products that allow
exposure to short-term interest rates outside the United States. For example,
the NYSE Liffe trades short gilt futures and Euroswiss futures, allowing
exposure to U.K. and Swiss short-term rates, respectively.

Both exchanges offer U.S. Treasury futures, including two-year, fiveyear, and 10-year Treasury notes, 30-year Treasury bonds, and ultra Treasury

bond futures. The ultra Treasury bond futures is a contract created for

managing long-term interest rates.

Each futures contract specifies what is permissible to deliver (deliverable

grades), price quotations system, tick size (i.e., the smallest price increment

in which a financial instrument's price can be quoted), contract months, last

trading day, last delivery day, and delivery method. For the futures contracts

mentioned above, information is available from the website of each

exchange. Here we discuss the two short-term interest rate futures traded on

both exchanges (the Eurodollar futures and euribor futures) and the U.S.

Treasury futures contracts (Treasury bond, Treasury note, and Treasury ultra

bond futures).

Outside the United States, there are exchanges that list interest rate

futures with short-, intermediate-, and long-term maturities. For example, the

Eurex Exchange includes short-term interest rate futures traded on the

euribor and the Euro Over Night Index Average. The government bond

futures traded on the Euro Exchange, for example, include four German debt

maturities: Euro-Schatz futures (short-term debt instrument with a term of

1.75 to 2.25 years), Euro-Bobl futures (medium-term debt instrument with a

term of 4.5 to 5 years), Euro-Bund (long-term debt instrument with a term of

8.5 to 10.5 years), and Euro-Buxl (long-term debt instrument with a term of

24 to 35 years).

Below we briefly describe the U.S. interest rate futures contracts.

```
Eurodollar Futures

```

One of the most heavily traded futures contracts in the world, the Eurodollar

futures contract, is frequently used to trade the short end of the yield curve,

and many hedgers have found this contract to be the best hedging vehicle for

a wide range of hedging situations.

A Eurodollar futures contract represents a commitment to pay/receive a

quarterly interest payment determined by the level of the three-month

LIBOR. The dollar amount paid is based on a notional principal of \$1

million on the settlement date. Various quarterly settlement dates for

Eurodollar futures contracts are available—March, June, September, and

December—that extend out 10 years. The Eurodollar futures contract is a

cash settlement contract. That is, the parties settle in cash for the value of the

contract based on LIBOR on the settlement date.

This contract is traded on an index-price basis. The index-price basis on

which the contract is quoted is equal to 100 minus the annualized futures

LIBOR. For example, a Eurodollar futures price of 97.00 means a futures

three-month LIBOR of 3%.

The minimum price fluctuation (tick) for this contract is 0.01 (or 0.0001

in terms of LIBOR). As a result, the price value of a basis point for this

contract is \$25, found as follows. The simple interest on \$1 million for 90

days is equal to

\$1,000,000 × (LIBOR × 90/360).

If LIBOR changes by one basis point (0.0001), then \$1,000,000 × (0.0001 ×

90/360) = \$25.

```
Euribor Futures

```

The euro interbank offered rate (euribor) is a reference rate at which banks in

the eurozone lend unsecured funds to one another. As with LIBOR, this

reference rate is an interbank rate. The contract represents a commitment to

pay/receive a quarterly interest payment determined by the level of threemonth euribor. The amount paid is based on a notional principal of €1

million on the settlement date. The contract is a cash settlement contract.

As with Eurodollar futures, the contract is quoted on an index-price basis,

as follows: 100 minus the annualized futures reference rate, where the

reference rate is based on euribor rather than on LIBOR. For example, a

euribor futures price of 97.00 means a futures three-month euribor of 3%.

The minimum price fluctuation (tick) for this contract is 0.005 (or 0.00005 in

terms of euribor). Thus the price value of a basis point for this contract is

€12.50.

```
U.S. Treasury Bond Futures

```

The underlying instrument for a U.S. Treasury bond futures contract is

\$100,000 par value of a hypothetical 20-year, 6% coupon bond. The futures

price is quoted in terms of par being 100. Quotes are in 32nds of 1%. Thus, a

quotation for a Treasury bond futures contract of 97–16 means 97 and 16/32,

- r 97.50. So, if a buyer and seller agree on a futures price of 97–16, the
buyer agrees to accept delivery of the hypothetical underlying Treasury bond
and pay 97.50% of par value, and the seller agrees to accept 97.50% of par
value. Because the par value is \$100,000, the futures price that the buyer and
seller agree to pay for this hypothetical Treasury bond is \$97,500.

As mentioned, the minimum price fluctuation for the Treasury bond

futures contract is a 32nd of 1%. The dollar value of a 32nd for a \$100,000

par value (the par value for the underlying Treasury bond) is \$31.25. Thus,

the minimum price fluctuation is \$31.25 for this contract.

We have been referring to the underlying as a hypothetical Treasury

bond. That reference does not mean that the contract is a cash settlement

contract. The seller of Treasury bond futures who decides to make delivery

rather than liquidate the position by buying back the contract prior to the

settlement date must deliver some Treasury bond. But what Treasury bond?

The exchange where the contract is traded allows the seller to deliver one of

several Treasury bonds that the exchange declares is acceptable for delivery.

The specific Treasury bond issues that the seller may deliver are published

by the exchange prior to the initial trading of a futures contract with a

specific settlement date.

The delivery process for the Treasury bond futures contract makes the

contract interesting. At the settlement date, the seller of a futures contract

(the short) is required to deliver to the buyer (the long) \$100,000 par value

- f a 6%, 20-year Treasury bond. Because no such bond exists, the seller
must choose from one of the acceptable deliverable Treasury bonds that the
exchange has specified. Suppose the seller is entitled to deliver \$100,000 of
a 4%, 20-year Treasury bond to settle the futures contract. The value of this
bond, of course, is less than the value of a 6%, 20-year Treasury bond.
Delivery of a 4%, 20-year Treasury bond would be unfair to the buyer of the
futures contract, who contracted to receive \$100,000 of a 6%, 20-year
Treasury bond. Alternatively, suppose the seller delivers \$100,000 of a 10%,
20-year Treasury bond. The value of a 10%, 20-year Treasury bond is

greater than that of a 6%, 20-year Treasury bond, which would be a

disadvantage to the seller.

To make delivery equitable to both parties, the exchange provides

conversion factors for determining the invoice price of each acceptable

deliverable Treasury issue against the Treasury bond futures contract. The

conversion factor is determined by the exchange before a contract with a

specific settlement date begins trading and is constant throughout the trading

period of the futures contract for a given settlement month. The short must

notify the long of the actual bond that will be delivered one day before the

delivery date.

The invoice price for the Treasury bond futures contract is the futures

price plus accrued interest. However, as just noted, the seller can deliver one

- f several acceptable Treasury issues, and to make delivery fair to both
parties, the invoice price must be adjusted based on the actual Treasury issue
delivered. The conversion factors are used to adjust the invoice price as
follows:

Suppose the Treasury bond futures contract settles at 94–08, and the short

elects to deliver a Treasury bond issue with a conversion factor of 1.20. The

futures contract settlement price of 94–08 means 94.25% of par value. As

the contract size is \$100,000, the invoice price that the buyer pays the seller

is

When selecting the issue to be delivered, the short will select from all the

deliverable issues the one that is cheapest to deliver. This issue is referred to

as the **cheapest-to-deliver issue** and plays a key role in the pricing of a

futures contract. The cheapest-to-deliver issue is determined by participants

in the market as follows. For each of the acceptable Treasury issues from

which the seller can select, the seller calculates the return that can be earned

by buying that issue and delivering it at the settlement date. Note that the

seller can calculate the return based on the known price of the Treasury issue

now and the futures price agreed to for delivery of the issue. The return so

calculated is called the **implied repo rate** . The cheapest-to-deliver issue is

then the one issue among all acceptable Treasury issues with the highest

implied repo rate, because it is the issue that would give the seller of the

futures contract the highest return by buying and then delivering the issue.

In addition to the choice of which acceptable Treasury issue to deliver—

sometimes referred to as the **quality option** - r **swap option—** the short

position has two more options granted under the exchange delivery

guidelines. The short position is permitted to decide when in the delivery

month the delivery will actually take place, which is called the **timing**

**option** . The other option is the right of the short position to give notice of
intent to deliver up to 8:00 p.m. Chicago time after the closing of the
exchange (3:15 p.m. Chicago time) on the date when the futures settlement
price has been fixed. This option is referred to as the **wild card option** . The
quality option, the timing option, and the wild card option (in sum referred
to as the **delivery options** ) mean that the long position can never be sure
which Treasury bond will be delivered or when it will be delivered.

The contract specification for the Treasury bond futures has been used in

- ther countries to design a futures contract on their government bonds.

```
Treasury Note Futures

```

There are three U.S. Treasury note futures contracts: 10-year, five-year, and

two-year. All three contracts are modeled after the Treasury bond futures

contract and are traded on the exchange. The underlying instrument for the

10-year Treasury note futures contract is \$100,000 par value of a

hypothetical 10-year, 6% Treasury note. Several acceptable Treasury issues

may be delivered by the short. An issue is acceptable if the maturity is not

less than 6.5 years and not greater than 10 years from the first day of the

delivery month. Delivery options are granted to the short position.

For the five-year Treasury note futures contract, the underlying is

\$100,000 par value of a 6% notional coupon U.S. Treasury note that satisfies

the following conditions: (1) an original maturity of not more than five years

and three months, (2) a remaining maturity no greater than five years and

three months, and (3) a remaining maturity not less than four years and two

months. The underlying for the two-year Treasury note futures contract is

\$200,000 par value of a 6% notional coupon U.S. Treasury note with a

remaining maturity of not more than two years and not less than one year

and nine months. Moreover, the original maturity of the note delivered to

satisfy the two-year futures cannot be more than five years and three months.

```
Ultra Treasury Bond Futures

```

For the U.S. Treasury bond futures, the rule beginning with the March 2011

contract was that acceptable deliverable bond issues had to have a maturity

- f at least 15 years but no more than 25 years. The deliverable specification
for the ultra Treasury bond futures contract calls for the acceptable
deliverable bonds to have at least 25 years to maturity. All other
specifications for the contract are the same as for the Treasury bond futures

contract.

By modifying the Treasury bond futures contract to limit maturity for

deliverable bond issues to less than 25 years and requiring the ultra Treasury

bond futures contract's deliverable bond issues to have at least 25 years to

maturity, the exchange allowed market participants to manage the longer end

- f the yield curve more effectively. The Treasury bond futures contract is
effectively a short-maturity bond futures contract, and the ultra Treasury
bond futures contract is effectively a long-maturity bond futures contract that
is better suited for managing the interest rate risk for portfolios of long-term
bonds.

```
Currency Forward and Futures Contracts

```

Both forward and futures contracts are available to market participants to

control foreign exchange-rate risk.

```
Currency Forward Contracts

```

Most currency forward contracts have a maturity of less than two years.

Longer-dated forward contracts have relatively large bid-ask spreads; that is,

the size of the bid-ask spread for a given currency increases with the

maturity of the contract. Consequently, forward contracts are not attractive

for hedging long-dated foreign currency exposure. In chapter 38, we will

discuss a derivative instrument (a currency swap) that can be used for this

purpose.

Futures contracts, which are creations of an exchange, have certain

advantages over forward contracts in many cases, such as stock indexes and

government securities. In contrast, the forward market is the market of

choice for foreign exchange, and trading there is much larger than trading on

exchanges. However, because the foreign exchange forward market is an

interbank market, reliable information on the number of contracts

- utstanding at any time, or open interest, is not publicly available.

```
Currency Futures Contracts

```

As explained earlier, futures contracts are exchange-traded products, as

- pposed to forward contracts, which are OTC contracts. In the case of
currency futures contracts, the major exchange is the CME. The exchange
rates traded are those between the U.S. dollar and the currencies of the

following countries: Australia, Belgium, Canada, Japan, New Zealand,

Norway, Switzerland, the United Kingdom, and Sweden.

In addition, there are futures contracts in which the underlying is a crossrate pair (i.e., an exchange rate that does involve the local currency). For

example, for a U.S. investor, the exchange rate between the euro and

Japanese yen would be a cross-rate pair. Futures contracts are available on

the following cross-rates: the Swiss franc/Japanese yen exchange rate, the

euro/Canadian dollar exchange rate, and the British pound/Japanese yen

exchange rate.

Futures contracts are also available for emerging market currency pairs

with the U.S. dollar and the following four currencies: the Brazilian real, the

Czech koruna, the Israeli shekel, and the Hungarian forint. Cross-rate pairs

are also available with the euro.

The amount of each foreign currency that must be delivered for a contract

varies by currency. For example, the British pound futures contract calls for

delivery of 62,500 pounds, the Japanese yen futures contract calls for

delivery of 12.5 million yen, and the euro futures contract calls for delivery

- f €125,000. There are "E-micro" contracts that provide for one-tenth of the
contract size. The maturity cycle for currency futures is March, June,
September, and December. The longest maturity is one year. Consequently,

as in the case of a currency forward contract, currency futures do not provide

a good vehicle for hedging long-dated foreign exchange-rate risk exposure.

```
Role of Futures Contracts in Financial Markets

```

In the absence of futures contracts, investors would have only one trading

location to alter portfolio positions when they get new information that is

expected to influence the value of assets—the cash market. If economic

news that is expected to have an adverse impact on the value of an asset is

received, investors can reduce their price-risk exposure to that asset. The

- pposite is true if the new information is expected to have a favorable
impact on the value of that asset: an investor would increase price-risk
exposure to that asset. Of course, transaction costs are associated with
altering exposure to an asset: explicit costs (commissions) and hidden or
execution costs (bid-ask spreads and market impact costs). [3]

Futures markets provide another market that investors can use to alter

their risk exposure to an asset when new information is acquired. But which

market—cash or futures—should the investor employ to alter a position

quickly on the receipt of new information? The answer is simple: the one

that is more efficient to use to achieve the objective. The factors to consider

are liquidity (including speed of execution), transaction costs, and leverage.

In well-developed futures markets, it is the futures market and not the cash

market that offers better liquidity, far lower transaction costs, and has

embedded leverage (a property of futures described earlier in this chapter).

The market that investors feel is the one that is more efficient to use to

achieve their investment objectives should be the one where prices will be

established that reflect the new economic information. That is, it will be the

market where price discovery takes place. Price information is then

transmitted to the other market. In many of the markets that we discuss in

this book, it is easier and less costly to alter a portfolio position in the futures

market. Therefore, the futures market will be the market of choice and will

serve as the price discovery market. It is in the futures market that investors

send a collective message about how any new information is expected to

impact the cash market.

How is this message sent to the cash market? We will see in chapter 35

how the theoretical futures price is determined. That chapter discusses how

the futures price and the cash market price are tied together in a specific way

and shows that if the actual futures market price deviates from the theoretical

futures market price, arbitrageurs (attempting to obtain arbitrage profits)

would pursue a strategy to bring them back into line. Arbitrage brings the

cash market price into line with the futures price. This mechanism ensures

that the cash market price will reflect the information collected in the futures

market.

Is it possible for the futures market to take on a life of its own, so that the

futures price does not reflect the economic value of the contract's underlying

instrument? It could be, if no mechanism were available to bring futures

prices and cash market prices in line. This mechanism is the arbitrage we

just mentioned and will be explained chapter 34.

```
Effect of Futures on the Volatility of the Underlying Asset

```

A criticism that has been frequently raised by some investors and the popular

press is that the introduction of futures markets has increased the volatility of

prices of the underlying asset. This criticism is referred to as the

"destabilization hypothesis." [4] Two variants of the destabilization hypothesis

are the liquidity variant and the populist variant.

According to the liquidity variant, large transactions that are too difficult

to accommodate in the cash market will be executed first in the futures

market because of better liquidity. The increased volatility that may occur in

the futures market is only temporary, because volatility will return to its

normal level once the liquidity problem is resolved. The implication is that

no long-term impact on the volatility of the underlying cash market asset

will occur.

In contrast, the populist variant asserts that as a result of speculative

trading in the futures market, the cash market instrument does not reflect

fundamental economic value. The implication here is that the asset price

would better reflect economic value in the absence of a futures market.

It is an empirical question as to whether the introduction of a futures

market destabilizes prices. [5] However, regardless of whether the introduction

- f futures or swaps contracts increases cash market price volatility, we might
ask whether greater volatility inflicts negative effects on markets. At first
glance, it might seem that volatility adversely affects allocative efficiency
and market participation.

Actually, some analysts point out that this inference may not be justified

if, say, the introduction of new markets lets prices respond more promptly to

changes in fundamentals, and if the fundamentals themselves are subject to

large shocks. [6] Thus the greater volatility resulting from an innovation may

simply more faithfully reflect the actual variability of fundamental values. In

this case, more asset volatility need not be a bad artifact but instead may be a

manifestation of a well-functioning market. Of course, to say that more

volatility need not be bad does not mean that it is good. Clearly, price

volatility greater than what can be justified by relevant new information or

fundamentals (or by standard asset pricing models) is undesirable. By

definition, it makes prices inefficient and is referred to as "excess

volatility." [7]

No one has been able to test whether recent financial innovations actually

increased or decreased excess volatility. Moreover, as Franklin Edwards has

pointed out, "Too little volatility is equally bad, although this concept does

not seem to have generated enough interest to have been given the label of

'deficient volatility.' " [8]

```
A Closer Look at the Benefits of Stock Index Futures

```

Above we have focused on futures markets in general. Let's look more

specifically at stock index futures and the evidence regarding several of the

issues identified as associated with the existence of futures markets.

First, a comparison of transaction costs indicates that these costs are

substantially lower in the stock index futures market than in the cash market.

Typically, transaction costs in this market are between 5% and 10% of

transaction costs in the cash market.

Second, the speed at which orders can be executed also gives the

advantage to the futures market. The estimated time to sell a block of stock

at a reasonable price is about two to three minutes, whereas a futures

transaction can be accomplished in 30 seconds or less. The advantage is also

- n the side of the stock index futures market when it comes to the amount of

money that must be put up in a transaction (i.e., leverage). As explained in

chapter 23, margin requirements for transactions in the stock market are

considerably higher than in the stock index futures market. Thus, a study by

the SEC's Division of Market Regulation concludes:

[Institutions can] sell portions of their equity positions in a faster, less expensive manner by using

index futures than by selling directly on stock exchanges.

Futures are used instead of stocks because of the increased speed and reduced transaction costs

entailed in trading a single product in the futures market.… As a result of the futures market's

liquidity, investors can execute large transactions with much smaller market effects than is possible in

the separate stocks.

Which market do investors select to alter their stock market risk

exposure? John Merrick found that before 1985, the cash market dominated

the price discovery process, relative to the stock index futures market. [9] Since

1985, however, the S&P 500 futures market has played the dominant price

discovery role. This reversal of the dominant market was not an accident. It

followed the pattern of trading volume. When trading volume in the futures

market surpassed that on the cash market, the futures market dominated.

How does the existence of competing markets with the attributes

described previously affect the stock market? In her testimony before

Congress on July 23, 1987, Susan Phillips, then the chairperson of the

Commodity Futures Trading Commission, stated: "The depth and liquidity

- f the futures markets facilitate the absorption of new fundamental
information quickly, thus improving the efficiency of the stock markets." [10]

Critics of stock index futures point to program trading and index

arbitrage when a substantial decline in the cash market or increased stock

price volatility occurs. As we explained in chapter 23, program trading is a

technique for trading lists of stocks as close in time as possible. It is not, as

is often stated in the popular press, a trading strategy. Program trades

typically are implemented electronically using the automated orderexecution facilities of the exchanges that allow orders to be transmitted

simultaneously for execution. Why is it important for an institution to

execute a list of orders as close in time as possible? Several investment

strategies depend on the timing of trades: indexing and index arbitrage. The

question is whether either of these strategies that rely on program trading

and stock index futures is disruptive to the stock market. We'll describe

index arbitrage in chapter 34 and how it ties together cash market prices and

futures. Here we just discuss indexing.

Indexing, a strategy explained in chapter 23, is not a strategy that

attempts to trade on information. Theory tells us that indexing is a strategy

that investors should employ in an efficient market to capture the efficiency

embodied in the market. Yet the theory tells us nothing about how to

implement the strategy. To manage an indexed portfolio, an asset manager

first constructs an initial portfolio to replicate the performance of the market.

The asset manager must rebalance the portfolio, however, as new monies are

added to or withdrawn from an indexed portfolio. Program trading is used so

that all stocks in the portfolio can be sold or purchased by simultaneous

- rder at the closing prices, so that the performance of the indexed portfolio
will do a good job of tracking the index. Therefore, indexing should not be a
disruptive market force.

Finally, let's look at the issue of the effect of stock index futures on price

volatility on the stock market. Several studies empirically investigated the

effect of the introduction of stock index futures trading on stock price

volatility. In the case of stock index futures, one study concludes:

Investors are concerned about the present and future value of their investments (and wealth). Greater

volatility leads to a perception of greater risk, which threatens investors' assets and wealth. When the

stock market takes a sharp nose-dive, investors see the value of their assets rapidly dissipating. They

are not consoled by being told that there is no social cost associated with this price change, only a

redistribution of wealth. Even more fundamental, when asset prices exhibit significant volatility over

very short periods of time (such as a day), investors "lose confidence in the market." They begin to see

financial markets as the province of the speculator and the insider, not the rational. [11]

A fair conclusion that can be drawn from all these studies is that the

introduction of stock index futures (as well as stock index options described

in chapter 34 and index-related strategies) did not increase stock price

volatility except possibly during periods when stock index futures settled

and stock index options expired.

```
Key Points

```

- The economic function of derivatives is to allow market participants to
control risk, and so derivatives are referred to as "risk transfer vehicles."

- The key role of derivatives is that, in a well-functioning futures
market, these contracts provide a more efficient means for investors to
alter their risk exposure to an asset.

- Futures contracts are classified as commodity futures and financial
futures.

- Futures contracts are creations of exchanges.
- A futures contract is an agreement between a buyer and a seller in
which the buyer agrees to take delivery of something at the futures
price at the settlement date and the seller agrees to make delivery.

- A party to a futures contract can liquidate a position prior to the
settlement date by taking an offsetting position in the same contract.

- Associated with every futures exchange is a clearinghouse, which
provides a guarantee function.

- Parties to a futures contract must satisfy margin requirements (initial,
maintenance, and variation), and futures contracts are marked to market
at the end of each trading day.

- Because only initial margin is required when an investor takes a
futures position, futures markets provide investors with substantial
leverage for the money invested.

- A buyer (seller) of a futures contract realizes a profit if the futures
price increases (decreases); the buyer (seller) of a futures contract
realizes a loss if the futures price decreases (increases).

- A forward contract is an OTC derivative product.
- A forward contract differs from a futures contract in that the parties to
a forward contract are exposed to the risk of nonperformance by the
counterparty and unwinding a position in a forward contract may be
difficult.

- Although there is no requirement that the parties to a forward contract
mark positions to market, this is typically done to mitigate counterparty
risk.

- Financial derivatives can be either a risk-sharing arrangement or an
insurance arrangement.

- The type of transfer arrangement depends on the type of payoff:
symmetric versus asymmetric.

- Symmetric payoff derivatives (or linear payoff derivatives) are risksharing arrangements; asymmetric payoff derivatives (or nonlinear
payoff derivatives) are insurance arrangements.

- Futures and forward contracts are risk-sharing types of derivatives.
- With a linear payoff derivative, both parties are required to perform;
nonlinear payoff derivatives (asymmetric payoff derivatives) have their
specific payoff pattern because only one party to the agreement is

- bligated to perform, whereas the other party pays a fee to enter into the

agreement.

- Options are insurance type derivatives.
- Stock-related futures contracts include broad-based stock index

futures, narrow-based stock index futures, single-stock futures, and

stock market volatility futures.

- The dollar value of a stock index futures contract is determined by
the product of the futures price and the contract's multiple.

- Futures on volatility indexes can be used to manage or speculate on
future market volatility.

- Eurodollar futures and euribor futures are the most popular short-term
interest rate futures contracts. Both contracts are cash settlement

contracts.

- There are two types of U.S. Treasury bond futures contracts: (1)
Treasury bond futures, in which the acceptable deliverable bond issues
must have at least 15 years to maturity but less than 25 years, and (2)
the ultra Treasury bond futures, in which the acceptable deliverable
bond issues must have at least 25 years to maturity.

- The Treasury bond and note futures contracts give the short several
delivery options, including the quality or swap option, the timing

- ption, and the wild card option.
- There are currency forward and futures contracts.
- Because of the short-term maturity of currency and futures contracts,
they are limited with respect to providing market participants with the

ability to control foreign-exchange rate risk.

   - Futures contracts on major currency pairs with the U.S. dollar, select
cross-rate currency pairings, and select emerging market currencies
paired with the U.S. dollar and the euro are available.

   - Futures markets are often the market of choice for altering asset
positions and therefore represent the price discovery market because of
the lower transactions costs involved and the greater speed with which

   - rders can be executed compared to the case markets.
   - The actions of arbitrageurs ensure that price discovery in the futures
markets will be transmitted to the cash market.

   - Critics of the futures market believe these markets are the source of

greater price volatility in the cash market for the underlying asset.

   - Although the destabilization hypothesis regarding the introduction of
futures markets is an empirical question, even if price volatility in the
cash market were greater, it does not necessarily follow that greater
volatility is bad for the economy.

```
Questions

```

1. The chief financial officer of the corporation you work for recently
told you that he had a strong preference to use forward contracts rather
than futures contracts to contracts: "You can get contracts tailor-made
to suit your needs."

a. Comment on the chief financial officer's statement.

b. What other factors influence the decision to use futures or forward

contracts?

2. Explain the functions of a clearinghouse associated with a futures
exchange.

3. Suppose you bought a stock index futures contract for 200 and were
required to put up initial margin of \$10,000. The value of the contract is
200 times the \$500 multiple, or \$100,000. On the next three days, the
contract's settlement price was at these levels: day 1, 205; day 2, 197;
day 3, 190.

a. Calculate the value of your margin account on each day.

b. If the maintenance margin for the contract is \$7,000, how much variation

margin did the exchange require you to put up at the end of the third day?

c. If you had failed to put up that much, what would the exchange have

done?

4. How do margin requirements in the futures market differ from
margin requirements in the cash market?

5. Forward contracts are not marked to market derivatives. Explain
why you agree or disagree.

6. a. What is meant by "open interest"?

b. Why is open interest important to an investor?

7. a. Why is a futures contract referred to as a "risk-sharing
arrangement" for transferring risk?

b. Why is a futures contract a symmetric payoff contract?

8. You work as part of a portfolio management team at an asset
management firm. A junior portfolio manager on the team has asked
you what type of derivative to use to protect against price risk. She
states that insurance type risk transfer derivatives are always the best,
because the potential upside benefits do not have to be shared with the
counterparty. Comment on the junior portfolio manager's position.

9. What is meant by a "cash settlement futures contract"?
10. What may be an alternative for an investor who wants to short the
stock of a particular company instead of shorting in the cash market?

11. a. What was the motivation for the creation of a narrow-based stock

index futures contract?

b. How are the component stocks of a narrow-based stock index futures

contract selected?

12. On September 1, you sold 100 S&P 500 futures contracts at 1,800
with multiples of \$250, expiration date in three months, and an initial
margin of 10%. After that date, the index fell steadily, and you were not
required to post any additional margin, but you also did not withdraw
any of the cash profits you were earning. On November 1, the futures
price of the contract was 1,620, and you reversed your position by
buying 100 contracts.

a. How much money did you make (ignoring taxes and commissions)?

b. What was the rate of return on your invested funds?

c. In those two months, the S&P 500 futures price fell 10%. Explain why

your rate of return is so much higher than this level.

13. "The futures market is where price discovery takes place." Do you
agree with this statement? If so, why? If not, why not?

14. What is the underlying instrument for the Eurodollar futures

contract?

15. If the index price of a Eurodollar futures contract is 92.40, what is
the annualized futures LIBOR contract?

16. What is a euribor futures contract?
17. a. What is the underlying instrument for the Treasury bond futures
contract and ultra Treasury bond futures contract?

b. What is the purpose of the conversion factors for the U.S. Treasury bond

futures contract?

18. Explain why the implied repo rate is important when determining
the cheapest-to-deliver issue.

19. a. For a U.S. Treasury futures contract, there are choices or options
granted to one of the parties to the contract. Which party has these
choices, the buyer or seller?

b. What are the options that are granted to the party?

20. Currency forward contracts are typically superior to currency
futures contracts for controlling long-term foreign exchange-rate risk.
Comment on this statement.

21. A U.S. General Accounting Office study discusses the importance

   - f derivatives for market participants. Page 6 of the report states:

Derivatives serve an important function of the global financial marketplace, providing end-users with

- pportunities to better manage financial risks associated with their business transactions. The rapid
growth and increasing complexity of derivatives reflect both the increased demand from end-users for
better ways to manage their financial risks and the innovative capacity of the financial services
industry to respond to market demands. [12]

Explain whether you agree or disagree with the conclusions of the report.

1. The regulator of stock-related futures contract is determined by the agreement between the SEC
and CFTC known as the Shad-Johnson Accord.

2. This ban was to the result of an earlier regulatory dispute between the SEC and CFTC as to which
regulatory body should have control over single-stock futures. The dispute resulted in the 1984
Johnson-Shad Accord banning single-stock futures. The Commodity Futures Modernization Act of
2002 repealed the ban on single-stock futures, clearing the path for trading of this product in the
United States.

3. These costs are discussed in chapter 25.
4. Lawrence Harris, "S&P 500 Futures and Cash Stock Price Volatility," unpublished manuscript,
University of Southern California, Los Angeles, 1987.

5. The following study concluded that, in general, it would take a substantial number of "irrational"
speculators to destabilize cash markets: Jerome L. Stein, "Real Effects of Futures Speculation:
Rational Expectations and Diverse Opinions," Working Paper 88 (New York: Center for the Study of
Futures Markets, Columbia University, 1984).

6. Eugene F. Fama, "Perspectives on October 1987, or What Did We Learn from the Crash?" in _Black_
_Monday and the Future of Financial Markets_, ed. Robert J. Barro, Robert W. Kamphuis, Roger C.
Kormendi, and J. W. Henry Watson. (Homewood, IL: Dow Jones-Irwin, 1989), 72.

7. Franklin R. Edwards, "Futures Trading and Cash Market Volatility: Stock Index and Interest Rate
Futures," _Journal of Futures Markets_ 8, no. 4 (1988): 423.

8. Edwards, "Futures Trading and Cash Market Volatility," 423.
9. John J. Merrick, Jr., "Price Discovery in the Stock Market," Working Paper 87-4 (Philadelphia:
Federal Reserve Bank of Philadelphia, March 1987).

10. _Hearings before the Subcommittee on Telecommunications and Finance, Committee on Energy_
_and Commerce, U.S. House of Representatives,_ 100th Cong. (July 23, 1987) (testimony of Susan M.
Phillips, chairwoman, Commodity Futures Trading Commission), 1.

11. Franklin R. Edwards, "Does Futures Trading Increase Stock Price Volatility?" _Financial Analysts_
_Journal_ 44, no. 1 (1988): 64.

12. U.S. General Accountability Office, _Financial Derivatives: Actions Needed to Protect the_
_Financial System_ (Washington, DC: U.S. General Accountability Office, May 1994), 6.

# **`34`**

```
Options Markets

CONTENTS

```

**Learning Objectives**

**Options Contracts**

**Differences between Options and Futures Contracts**

**Risk and Return Characteristics of Options**

Buying Call Options

Writing (Selling) Call Options

Buying Put Options

Writing (Selling) Put Options

Considering the Time Value of Money

**Economic Role of the Options Markets**

**U.S. Options Markets**

Stock Options

Stock Index Options

Long-Term Equity Anticipation Securities

Interest Rate Options

FLEX Options

Exotic Options

**Futures Options**

Mechanics of Trading Futures Options

Reasons for the Popularity of Futures Options

**Key Points**

**Questions**

```
Learning Objectives

```

After reading this chapter, you will understand:

   - what an option contract is, and the basic features of an option;
   - the difference between a call option and a put option;
   - why an option is a derivative instrument;
   - the different types of exercise styles for an option (American,
European, Bermuda);

   - the difference between an exchange-traded option and an over-thecounter option;
   - the difference between a futures contract and an option contract;
   - the risk/return characteristics of call and put options for both the
seller and the buyer of the options;

   - the hedging role of options in financial markets;
   - the extensive role that organized exchanges play in standardizing and
guaranteeing options contracts traded on exchanges;

   - how stock options can change the risk/return profile of a portfolio;
   - the basic features of stock index options;
   - the basic features of interest rate options;
   - what an exotic option is;
   - some key aspects of non-U.S. options markets; and
   - the basic features of options on futures or futures options.

In chapter 33, we introduced a derivative instrument, a futures contract. In

this chapter, we introduce another derivative contract, an options contract,

and we discuss the differences between the two. In particular, in chapter 33,

we explained how derivatives transfer risk by either a risk-sharing

arrangement or an insurance arrangement. Unlike futures contracts, which

are risk-sharing arrangements, options contracts are insurance arrangements.

In chapter 35, we show how to determine the price of an option, and in

chapter 36, we explain how market participants can use these contracts.

```
Options Contracts

```

There are two parties to an options contract: the buyer and the **writer** (also

called the "seller"). In an options contract, the writer of the option grants the

buyer of the option the right, but not the obligation, to purchase from or sell

to the writer something at a specified price in a specified period of time (or

- n a specified date). The writer grants this right to the buyer in exchange for
a certain sum of money, which is called the **option price** - r **option**
**premium** . The price at which the underlying (that is, the asset or
commodity) may be bought or sold is called the **exercise price** - r **strike**
**price** . The date after which an option is void is called the **expiration date** - r
**maturity date** . Our focus in this chapter is on options for which the
underlying is a financial instrument or financial index.

When an option grants the buyer the right to purchase the underlying

from the writer (seller), it is referred to as a **call option**, or simply, a **call** .

When the option buyer has the right to sell the underlying to the writer, the

- ption is called a **put option**, or simply, a **put** .

The timing of the possible exercise of an option is an important

characteristic of the contract. This feature of an option is referred to as its

**exercise style** . Some options may be exercised at any time up to and

including the expiration date. Such options are referred to as **American**

**options** . Other options may be exercised only at the expiration date; these
are called **European options** . A **Bermuda option**, also referred to as an
**Atlantic option**, can be exercised only on specified dates.

Let's use an illustration to demonstrate the fundamental options contract.

Suppose that Jack buys a call option for \$3 (the option price) with the

following terms:

1. The underlying is one unit of Asset XYZ.
2. The exercise price is \$100.
3. The expiration date is three months from now, and the option can be
exercised any time up to and including the expiration date (that is, it is
an American option).

At any time up to and including the expiration date, Jack can decide to

buy from the writer (seller) of this option one unit of Asset XYZ, for which

he will pay a price of \$100. If it is not beneficial for Jack to exercise the

- ption, he will not, and we'll explain shortly how he decides whether it will
be beneficial. Regardless of whether Jack exercises the option, the \$3 he
paid for the option will be kept by the option writer. If Jack buys a put option

rather than a call option, then he would be able to sell Asset XYZ to the

- ption writer for a price of \$100.

The maximum amount that an option buyer can lose is the option price.

The maximum profit that the option writer (seller) can realize is the option

price. The option buyer has substantial upside return potential, whereas the

- ption writer has substantial downside risk. We will investigate the
risk/reward relationship for option positions later in this chapter.

There are no margin requirements for the buyer of an option once the

- ption price has been paid in full. Because the option price is the maximum
amount that the investor can lose, no matter how adverse the price
movement of the underlying, no margin is needed. Because the writer
(seller) of an option has agreed to accept all of the risk (and none of the
reward) of the position in the underlying, the writer is generally required to
put up the option price received as margin. In addition, as price changes

- ccur that adversely affect the writer's position, the writer is required to
deposit additional margin (with some exceptions) as the position is marked
to market.

Options, like other financial instruments, may be traded either on an

- rganized exchange or in the over-the-counter (OTC) market. **Exchange-**
**traded options** have three advantages. The first is standardization of the
exercise price, the quantity of the underlying, and the expiration date of the
contract. Second, as in the case of futures contracts, the direct link between
buyer and seller is severed after the order is executed because of the
interchangeability of exchange-traded options. The clearinghouse associated
with the exchange where the option trades performs the same function in the

- ptions market it does in the futures market. Finally, the transactions costs
are lower for exchange-traded options than for OTC options.

The higher cost of an OTC option reflects the cost of customizing the

- ption for the common situation where an institutional investor needs to
have a tailor-made option because the standardized exchange-traded option
does not satisfy its investment objectives. Investment banking firms and
commercial banks act as principals as well as brokers in the OTC options
market. Most institutional investors are not concerned that an OTC option is
less liquid than an exchange-traded option because they use OTC options as

part of an asset/liability strategy in which they intend to hold them to

expiration.

```
Differences between Options and Futures Contracts

```

One distinction between futures and options contracts is that one party to an

- ption contract is not obligated to transact at a later date. Specifically, the
- ption buyer has the right but not the obligation to exercise the option.
However, the option writer (seller) does have the obligation to perform, if
the buyer of the option insists on exercising it. In the case of a futures
contract, both buyer and seller are obligated to perform. Of course, a futures
buyer does not pay the seller to accept the obligation, whereas an options
buyer pays the seller an option price.

Consequently, the risk/reward characteristics of the two contracts are also

different. In the case of a futures contract, the buyer of the contract realizes a

dollar-for-dollar gain when the price of the futures contract increases and

suffers a dollar-for-dollar loss when its price drops. The opposite occurs for

the seller of a futures contract. Options do not provide this symmetric

risk/reward relationship. The most that the buyer of an option can lose is the

- ption price. Although the buyer of an option retains all the potential
benefits, the gain is always reduced by the amount of the option price. The
maximum profit that the writer (seller) may realize is the option price; this is

- ffset against substantial downside risk. This difference between options and
futures is extremely important, because as we shall see in subsequent
chapters, investors can use futures to protect against symmetric risk and

- ptions to protect against asymmetric risk.

Now we can see why options are derivatives that have an insurance type

arrangement for transferring risk. Unlike a risk-sharing derivative (such as a

futures contract) where both parties are required to act, with an options

contract, only one party is required to perform: the party providing the

insurance. Moreover, options contracts have a nonsymmetric payoff and are

therefore nonlinear payoff derivatives.

We will return to the difference between options and futures later in this

chapter when we discuss the application of these contracts to hedging.

```
Risk and Return Characteristics of Options

```

Here we illustrate the risk and return characteristics of the four basic option

positions: buying a call option (which market participants refer to as being

**long a call option** ), selling a call option ( **short a call option** ), buying a put

- ption ( **long a put option** ), and selling a put option ( **short a put option** ).
The illustrations assume that each option position is held to the expiration
date and is not exercised early. To simplify the illustrations, we ignore
transactions costs.

```
Buying Call Options

```

Assume that there is a call option on Asset XYZ that expires in one month

and has a strike price of \$100. The option price is \$3. Suppose that the

current price of Asset XYZ is \$100. What is the profit or loss for the investor

who purchases this call option and holds it to the expiration date?

The profit and loss from the strategy will depend on the price of Asset

XYZ at the expiration date. Several outcomes are possible:

1. If Asset XYZ's price at the expiration date is less than \$100, the
investor will not exercise the option. It would be foolish to pay the

   - ption writer \$100 when Asset XYZ can be purchased in the market at
a lower price. In this case, the option buyer loses the entire, original

   - ption price of \$3. Notice, however, that this is the maximum loss that
the option buyer will realize regardless of how low Asset XYZ's price
declines.

2. If Asset XYZ's price is equal to \$100 at the expiration date, again,
there is no economic value in exercising the option. As in the case
where the price is less than \$100, the buyer of the call option will lose
the entire option price, \$3.

3. If Asset XYZ's price is more than \$100 but less than \$103 at the
expiration date, the option buyer will exercise the option. By
exercising, the option buyer can purchase Asset XYZ for \$100 (the
strike price) and sell it in the market for the higher price. Suppose, for
example, that Asset XYZ’s price is \$102 at the expiration date. The
buyer of the call option will realize a \$2 gain by exercising the option.
Of course, the cost of purchasing the call option was $3, so $1 is lost on

this position. By failing to exercise the option, the investor loses \$3

instead of only \$1.

4. If Asset XYZ's price is equal to \$103 at the expiration date, the
investor will exercise the option. In this case, the investor breaks even,
realizing a gain of \$3 that offsets the cost of the option, \$3.

5. If Asset XYZ's price is more than \$103 at the expiration date, the
investor will exercise the option and realize a profit. For example, if the
price is \$113, exercising the option will generate a profit on Asset XYZ

   - f \$13. Reducing this gain by the cost of the option (\$3), the investor
will realize a net profit of \$10 from this position.

Table 34.1 shows the profit and loss for the buyer of the hypothetical call

- ption in tabular form, and figure 34.1 graphically portrays the result.
Although the break-even point and the size of the loss depend on the option
price and the strike price, the profile shown in figure 34.1 holds for all
buyers of call options. The shape indicates that the maximum loss is the

- ption price and that there is substantial upside potential.

```
Table 34.1
```

Profit/loss profile for a long call position.

**Assumptions:**
Option price = \$3
Strike price = \$100
Time to expiration = 1 month

Price of Asset XYZ at

Expiration Date ($)

Net

Profit/Loss [1]

($)

Net Profit/

Loss [1] ($)

Price of Asset XYZ at

Expiration Date ($)

150 47 100 - 3

140 37 99 - 3

130 27 98 - 3

120 17 97 - 3

115 12 96 - 3

114 11 95 - 3

113 10 94 - 3

112 9 93 - 3

111 8 92 - 3

110 7 91 - 3

109 6 90 - 3

108 5 89 - 3

107 4 88 - 3

106 3 87 - 3

105 2 86 - 3

104 1 85 - 3

103 0 80 - 3

102 - 1 70 - 3

101 - 2 60 - 3

Note: Maximum loss = \$3.

1Price at expiration is −$100 − $3.

```
Figure 34.1

```

Profit/loss profile for a long call position.

It is worthwhile to compare the profit and loss profile of the call option

buyer to that of someone taking a long position in one unit of Asset XYZ.

The payoff from the position depends on Asset XYZ's price at the expiration

date. Consider again the five price outcomes given above (and again ignore

transactions costs):

1. If Asset XYZ's price at the expiration date is less than \$100, the
investor in the call option loses the entire option price of \$3. In contrast,
a long position in Asset XYZ will have one of three possible losses:

a. If Asset XYZ's price is less than \$100 but greater than \$97, the loss on

the long position in Asset XYZ will be less than \$3.

b. If Asset XYZ’s price is \$97, the loss on the long position in Asset XYZ

will be \$3.

c. If Asset XYZ's price is less than \$97, the loss on the long position in

Asset XYZ will be greater than \$3. For example, if the price at the expiration

date is \$80, the long position in Asset XYZ will result in a loss of \$20.

2. If Asset XYZ's price is equal to \$100, the buyer of the call option
will realize a loss of \$3 (option price). Similarly, there will be no gain

   - r loss on the long position in Asset XYZ.

3. If Asset XYZ's price is more than \$100 but less than \$103, the

   - ption buyer will realize a loss of less than \$3, and the long position in
Asset XYZ will realize a profit.

4. If the price of Asset XYZ at the expiration date is equal to \$103,
there will be no loss or gain from buying the call option. However, the
long position in Asset XYZ will produce a gain of \$3.
5. If Asset XYZ's price at the expiration date is greater than \$103, both
the call option buyer and the long position in Asset XYZ will post a
profit. However, the profit for the buyer of the call option will be \$3
less than that for the long position. For example, if Asset XYZ's price is
\$113, the profit from the call position is \$10, whereas the profit from
the long position in Asset XYZ is \$13.

Table 34.2 compares the long call strategy and the long position in Asset

XYZ. This comparison clearly demonstrates the way in which an option can

change the risk/return profile for investors. An investor who takes a long

position in Asset XYZ realizes a profit of \$1 for every \$1 increase in Asset

XYZ's price. However, as Asset XYZ's price falls, the investor loses dollarfor-dollar. If the price drops by more than \$3, the long position in Asset

XYZ results in a loss of more than \$3. In contrast, the long call strategy

limits the loss to only the option price of \$3 but retains the upside potential,

which will be \$3 less than for the long position in Asset XYZ.

```
Table 34.2
```

Comparison of long call position and long asset position.

**Assumptions:**
Initial price of Asset XYZ = \$100
Option price = \$3
Strike price = \$100
Time to expiration = 1 month

Net Profit/Loss Net Profit/Loss

Long

Asset

XYZ [2] ($)

Price of Asset XYZ

at Expiration Date

($)

Long

Asset

XYZ [2]

($)

Long

Call [1]

($)

Price of Asset XYZ at

Expiration Date ($)

Long

Call [1]

($)

150 47 50 100 - 3 0

140 37 40 99 - 3 - 1

130 27 30 98 - 3 - 2

120 17 20 97 - 3 - 3

115 12 15 96 - 3 - 4

114 11 14 95 - 3 - 5

113 10 13 94 - 3 - 6

112 9 12 93 - 3 - 7

111 8 11 92 - 3 - 8

110 7 10 91 - 3 - 9

109 6 9 90 - 3 - 10

108 5 8 89 - 3 - 11

107 4 7 88 - 3 - 12

106 3 6 87 - 3 - 13

105 2 5 86 - 3 - 14

104 1 4 85 - 3 - 15

103 0 3 80 - 3 - 20

102 - 1 2 70 - 3 - 30

101 - 2 1 60 - 3 - 40

_Note:_ Maximum loss = \$3.

1Calculated as Price at expiration − \$100

2Calculated as Price of Asset XYZ − \$100

Which alternative is better, buying the call option or buying the asset?

The answer depends on what the investor is attempting to achieve. This will

become clearer in chapter 36, where we explain various strategies using

either option positions or cash market positions.

This hypothetical example demonstrates another important feature of

- ptions: their speculative appeal. Suppose an investor has strong
expectations that Asset XYZ's price will rise in one month. At an option
price of \$3, the speculator can purchase 33.33 call options for each \$100
invested. If Asset XYZ's price rises, the investor realizes the price
appreciation associated with 33.33 units of Asset XYZ, whereas with the
same \$100, the investor could have bought only one unit of Asset XYZ
selling at \$100, realizing the appreciation associated with only one unit if
Asset XYZ's price increases. For example, suppose that in one month the
price of Asset XYZ rises to \$120. The long call position will result in a
profit of $566.66 [($20 × 33.33) − \$100] or a return of 566.66% on the \$100
investment in the call option. By comparison, a \$100 investment in the long
position in Asset XYZ results in a profit of \$20, for only a 20% return on
\$100.

It is this greater leverage that attracts investors to options when they wish

to speculate on price movements. Leverage does have some drawbacks,

however. Suppose that Asset XYZ's price is unchanged at \$100 at the

expiration date. In this case, the long call position (33.33 options) results in a

loss of the entire investment of \$100, and the long position in Asset XYZ

produces neither a gain nor a loss.

```
Writing (Selling) Call Options

```

To illustrate the option seller's (writer's) position, we use the same call

- ption as in the example of buying a call option. The profit and loss profile
- f the short call position (that is, the position of the call option writer) is the
mirror image of the profit and loss profile of the long call position (the
position of the call option buyer). Consequently, the profit of the short call
position for any given price of Asset XYZ at the expiration date is the same
as the loss of the long call position. Furthermore, the maximum profit that
the short call position can produce is the option price. The maximum loss is

not limited, because it is the highest price reached by Asset XYZ on or

before the expiration date, less the option price; this price can be indefinitely

high. These relationships can be seen in figure 34.2, which shows the

profit/loss profile for a short call position.

```
Figure 34.2

```

Profit/loss profile for a short call position.

```
Buying Put Options

```

To illustrate the position of the buyer of a put option, we assume a

hypothetical put option on one unit of Asset XYZ with one month to

maturity and a strike price of \$100. Assume that the put option is selling for

\$2 and that the current price of Asset XYZ is \$100. The profit or loss for this

position at the expiration date depends on the market price of Asset XYZ.

The possible outcomes are:

1. If Asset XYZ's price is greater than \$100, the buyer of the put

   - ption will not exercise it, because exercising would mean selling Asset
XYZ to the writer for a price that is less than the market price. In this
case, a loss of \$2 (the original price of the option) will result from
buying the put option. Once again, the option price represents the
maximum loss to which the buyer of the put option is exposed.

2. If Asset XYZ's price at expiration is equal to \$100, the put will not
be exercised, leaving the put buyer with a loss equal to the option price

   - f \$2.

3. If Asset XYZ's price is less than \$100 but greater than \$98, the

   - ption buyer will experience a net loss on the position; however,
exercising the put option limits the loss to less than the option price of
\$2. For example, suppose that the price is \$99 at the expiration date. By
exercising the option, the option buyer will realize a loss of only \$1.
This is because the buyer of the put option can sell Asset XYZ,
purchased in the market for \$99, to the writer for \$100, realizing a gain

   - f \$1. Deducting the \$2 cost of the option results in a net loss of \$1 to
the position.

4. If Asset XYZ's price is \$98 at the expiration date, the put buyer will
break even. The investor will realize a gain of \$2 by selling Asset XYZ
to the writer of the option for \$100, and this gain exactly offsets the
cost of the option (\$2).

5. If Asset XYZ's price is below \$98 at the expiration date, the long
put position (the put buyer) will realize a profit. For example, suppose
the price falls at expiration to \$80. The long put position will produce a
profit of \$18: a gain of \$20 for exercising the put option less the \$2

   - ption price.

The profit and loss profile for the long put position is shown in tabular

form in the second column of table 34.3 and in graphical form in figure 34.3.

As with all long option positions, the loss is limited to the option price. The

profit potential, however, is substantial: the theoretical maximum profit is

generated if Asset XYZ's price falls to zero. Contrast this profit potential

with that of the buyer of a call option. The theoretical maximum profit for a

call buyer cannot be determined beforehand, because it depends on the

highest price that can be reached by Asset XYZ before or at the option

expiration date, a price that is indeterminate.

```
Table 34.3
```

Profit/loss profile for a long put position compared to a short asset position.

**Assumptions:**
Initial price of Asset XYZ = \$100
Option price = \$2
Strike price = \$100
Time to expiration = 1 month

Net Profit/Loss Net Profit/Loss

Price of Asset XYZ

at Expiration Date

($)

Short

Asset

XYZ [2] ($)

Short

Asset

XYZ [2]

($)

Long

Put [1]

($)

Price of Asset XYZ at

Expiration Date ($)

Long

Put [1]

($)

150 - 2 - 50 91 7 9

140 - 2 - 40 90 8 10

130 - 2 - 30 89 9 11

120 - 2 - 20 88 10 12

115 - 2 - 15 87 11 13

110 - 2 - 10 86 12 14

105 - 2 - 5 85 13 15

100 - 2 0 84 14 16

99 - 1 1 83 15 17

98 0 2 82 16 18

97 1 3 81 17 19

96 2 4 80 18 20

95 3 5 75 23 25

94 4 6 70 28 30

93 5 7 65 33 35

92 6 8 60 38 40

_Note:_ Maximum loss = \$2.

1Calculated as \$100 − Price at expiration.

2Calculated as \$100 − Price of Asset XYZ.

```
Figure 34.3

```

Profit/loss profile for a long put position.

To see how an option alters the risk/return profile for an investor, we

again compare it to a position in Asset XYZ. The long put position is

compared to taking a short position in Asset XYZ, because this is the

position that would realize a profit if the price of the asset falls. [1] Suppose an

investor sells Asset XYZ short for \$100. The short position in Asset XYZ

would produce the following profit or loss compared to the long put position

(without considering transactions costs):

1. If Asset XYZ's price rises above \$100, the long put option results in
a loss of \$2, but the short position in Asset XYZ realizes one of the
following:

a. If the price of Asset XYZ is less than \$102, there will be a loss of less

than \$2, which is the loss to the long put position.

b. If the price of Asset XYZ is equal to \$102, the loss will be \$2, the same

as the maximum loss of the long put position.

c. If the price of Asset XYZ is greater than \$102, the loss will be greater

than \$2. For example, if the price is \$125, the short position will realize a

loss of \$25, because the short seller must now pay \$125 for Asset XYZ that

the seller sold short at \$100.

2. If Asset XYZ's price at expiration is equal to \$100, the long put
position will realize a \$2 loss, while there will be no profit or loss on
the short position in Asset XYZ.

3. If Asset XYZ's price is less than \$100 but greater than \$98, the long
put position will experience a loss of less than \$2, but the short position
will realize a profit. For example, a price of \$99 at the expiration date
will result in a loss of \$1 for the long put position but a profit of \$1 for
the short position.

4. If Asset XYZ's price is \$98 at the expiration date, the long put
position will break even, but the short position in Asset XYZ will
generate a \$2 profit.
5. If Asset XYZ's price is below \$98, both positions will generate a
profit; however, the profit for the long put position will always be \$2
less than that for the short position.

Table 34.3 presents a detailed account of this comparison of the profit

and loss profiles for the long put position and short position in Asset XYZ.

Although the investor who takes a short position in Asset XYZ faces all the

downside risk as well as the upside potential, the long put position limits the

downside risk to the option price while still maintaining upside potential

(reduced only by an amount equal to the option price).

```
Writing (Selling) Put Options

```

The profit/loss profile for a short put option is the mirror image of that for

the long put option. The maximum profit from this position is the option

price. The theoretical maximum loss can be substantial should the price of

the underlying asset fall; however, if the price were to fall all the way to

zero, the loss would be as large as the strike price less the option price.

Figure 34.4 graphically depicts this profit and loss profile.

```
Figure 34.4

```

Profit/loss profile for a short put position.

To summarize these illustrations of the four option positions, we can say

the following: Buying calls or selling puts allows the investor to gain if the

price of the underlying asset rises; and selling calls and buying puts allows

the investor to gain if the price of the underlying asset falls.

```
Considering the Time Value of Money

```

Our illustrations of the four option positions do not take into account the

time value of money. Specifically, the buyer of an option must pay the seller

the option price at the time the option is purchased. Thus, the buyer must

finance the purchase price of the option, or (assuming the purchase price

does not have to be borrowed) the buyer loses the income that can be earned

by investing the amount of the option price until the option is sold or

exercised. In contrast, assuming that the seller does not have to use the

- ption price amount as margin for the short position or can use an interestearning asset as security, the seller has the opportunity to earn income from
the proceeds of the option sale.

The time value of money changes the profit/loss profile of the option

positions we have discussed. The breakeven price for the buyer and the

seller of an option will not be the same as in our illustrations. The breakeven

price for the underlying asset at the expiration date is higher for the buyer of

the option; for the seller, it is lower.

Our comparisons of the option position with long and short positions in

the underlying asset also ignore the time value of money. We have not

considered the fact that the underlying asset may generate interim cash flows

(dividends in the case of common stock, interest in the case of bonds). The

buyer of a call option is not entitled to any interim cash flows generated by

the underlying asset. However, the buyer of the underlying asset would

receive any interim cash flows and would have the opportunity to reinvest

them. A complete comparison of the long call option position and the long

position in the underlying asset must take into account the additional dollars

from reinvesting any interim cash flows. Moreover, any effect on the price of

the underlying asset as a result of the distribution of cash must be

considered. This occurs, for example, when the underlying asset is common

stock and, as a result of a dividend payment, the stock declines in price.

```
Economic Role of the Options Markets

```

Futures contracts allow investors to hedge the risks associated with adverse

price movements. Hedging with futures lets a market participant lock in a

price and thereby eliminates price risk. In the process, however, the investor

gives up the opportunity to benefit from a favorable price movement. In

- ther words, hedging with futures involves trading off the benefits of a
favorable price movement for protection against an adverse price movement.

Hedging with options has a variety of potential benefits, which we

discuss in chapter 36. For now, we provide an overview of how options can

be used for hedging and how the outcomes of hedging with options differ

from those of hedging with futures. A good way to show the hedging uses of

- ptions is to return to the initial illustration in this chapter where the
underlying for the option is Asset XYZ.

Let's consider an investor who owns Asset XYZ, currently selling for

\$100, which she expects to sell one month from now. The investor’s concern

is that, one month from now, Asset XYZ’s price may decline below \$100.

One alternative available to this investor is to sell Asset XYZ now. However,

suppose that the investor does not want to sell this asset now, because either

some restrictions prevent this or she thinks that the price may rise during the

month. Suppose also that an insurance company offers to sell the investor an

insurance policy providing that, if at the end of one month, Asset XYZ's

price is less than \$100, the insurance company will make up the difference

between \$100 and the market price. For example, if one month from now

Asset XYZ's price is \$80, the insurance company will pay the investor \$20.

The insurance company naturally charges the investor a premium to write

this policy. Let's suppose that the premium is \$2. Holding aside the cost of

the insurance policy, the payoff that this investor then faces is as follows.

The minimum price for Asset XYZ that the investor can receive is \$100,

because if the price is less, the insurance company will make up the

difference. However, if Asset XYZ's price is greater than \$100, the investor

will receive the higher price. The premium of \$2 that is required to purchase

this insurance policy effectively assures the investor of a minimum price of

$98 ($100 minus \$2), but if the price is above \$100, the investor realizes the

benefits of a higher price (reduced always by the \$2 for the insurance

policy). In buying this policy, the investor has purchased protection against

an adverse price movement while maintaining the opportunity to benefit

from a favorable price movement.

Insurance companies do not offer such policies, but we have described an

- ption strategy that provides the same protection. Consider the put option on

Asset XYZ with one month to expiration, a strike price of \$100, and an

- ption price of \$2 discussed earlier in this chapter. The payoff to a long
position in this put is identical to the insurance policy. The option price
resembles the hypothetical insurance premium; this is the reason the option
price is referred to as the option "premium." Thus, a put option can be used
to hedge against a decline in the price of the underlying instrument.

The long put's payoff is quite different from that of a futures contract.

Suppose that a futures contract with Asset XYZ as the underlying instrument

has a futures price equal to \$100 and a settlement date of one month from

now. By selling this futures contract, the investor would be agreeing to sell

Asset XYZ for \$100 one month from now. If Asset XYZ's price falls below

\$100, the investor is protected, because she will receive \$100 on delivery of

the asset to satisfy the futures contract. If Asset XYZ's price rises above

\$100, however, the investor will not realize the price appreciation, because

she must deliver the asset for an agreed-on amount of \$100. By selling the

futures contract, the investor has locked in a price of \$100 and fails to realize

a gain if the price rises while avoiding a loss if the price declines.

Call options are also useful for hedging. A call option can be used to

protect against a rise in the price of the underlying instrument while

maintaining the opportunity to benefit from a decline in the price of the

underlying instrument. For example, suppose that an investor expects to

receive \$100 one month from now and plans to use that money to purchase

Asset XYZ, which is selling currently for \$100. The risk that the investor

faces is that Asset XYZ's price will rise above \$100 one month from now.

Let us further suppose there is a call option such as that described earlier in

the chapter. The option costs \$3 and has a strike price of \$100 and one

month to expiration. By purchasing that call option, the investor has hedged

the risk of a rise in the price of Asset XYZ.

The hedge outcome is as follows. If the price rises above \$100 one month

from now, the investor would exercise the call option and realize the

difference between the market price of Asset XYZ and \$100. Thus, ignoring

the cost of the option for the moment, we can see that the investor is

ensuring that the maximum price she will have to pay for Asset XYZ is

\$100. Should the asset’s price fall below \$100, the call option expires

worthless, but the investor benefits by being able to purchase Asset XYZ at a

price less than \$100. Once the \$3 cost of the option is considered, the payoff

is as follows. Regardless of the eventual price of the asset, the maximum

price that the investor will have to pay for Asset XYZ is \$103 (the strike

price plus the option price). If the price of the asset declines below \$100, the

investor will benefit by the amount of the price decline less \$3.

Compare this situation to a futures contract where Asset XYZ is the

underlying instrument, the settlement is in one month, and the futures price

is \$100. Suppose that the investor buys this futures contract. If one month

from now the price of Asset XYZ rises above \$100, the investor has

contracted to buy the asset for \$100, thereby eliminating the risk of a price

rise. However, if the price falls below \$100, the investor cannot benefit,

because she has contracted to pay \$100 for the asset.

It should be clear now how hedging with options differs from hedging

with futures. This difference cannot be overemphasized—options and

futures are not interchangeable instruments.

Although our focus has been on hedging price risk, options also allow

investors an efficient way to expand the range of return characteristics

available. That is, investors can use options to "shape" a return distribution

for a portfolio to fit particular investment objectives. [2]

```
U.S. Options Markets

```

There are a variety of options traded throughout the world. Here we provide

a survey of the major ones, focusing on the United States but also

mentioning other markets.

```
Stock Options

```

In the United States, exchange-traded stock options are for 100 shares of a

designated common stock. The major U.S. exchanges where options are

traded are the Chicago Board Options Exchange (CBOE), the New York

Stock Exchange (NYSE), and the Nasdaq.

The Office of the Comptroller of the Currency (OCC) has established

standard strike price guidelines for listed options. For stocks with a price

above \$100, option strike prices are set at \$10 intervals; for stocks with a

price below \$100 and above \$30, strike prices are set at \$5 intervals; and for

stocks priced between \$10 and \$30 the interval is \$2.50. Although the strike

price of exchange-traded options is not changed because of cash dividends

paid to common stockholders, the strike price is adjusted for stock splits,

stock dividends, reorganization, and other recapitalizations affecting the

value of the underlying stock.

All exchange-traded stock options in the United States may be exercised

any time before the expiration date; that is, they are American options. They

expire at 11:59 p.m. Eastern Standard Time on the Saturday following the

third Friday of the expiration month. Exchange rules require that investors

wishing to exercise an expiring option must instruct a broker about the

exercise no later than 5:30 p.m. Eastern time on the business day

immediately preceding the expiration date. Notices to exercise a nonexpiring

- ption on a date other than the expiration date must be made between 10:00
a.m. and 8:00 p.m. Eastern Standard Time. When a nonexpiring option is
exercised, the OCC assigns the obligation the next day to someone who has
an outstanding short position in an option of the same exercise price,
expiration date, and underlying stock. This assignment is on a random basis.

Options are designated by the name of the underlying common stock, the

expiration month, the strike price, and the type of option (put or call). Thus,

an exchange-traded stock call option on Apple Inc. (APPL ticker symbol)

with a strike price of \$115 expiring June 16, 2017, is referred to as the

"APPL June 2017 115 call."

The expiration dates are standardized. Each stock is assigned an option

cycle, the three option cycles being January, February, and March. The

expiration months for each option cycle are as follows:

Option Cycle Expiration Months

January January, April, July, October

February February, May, August, November

March March, June, September, December

In addition, the practice is to trade options with an expiration date of the

current calendar month, the next calendar month, and the next two expiration

months in the cycle. For example, suppose a stock is assigned the January

- ption cycle. In February, options with the following expiration months
would be traded: February (the current calendar month), March (the next
calendar month), April (the next expiration month in the January option
cycle), and July (the last option cycle month in the January option cycle). In
May, the following expiration months would be traded for a stock assigned
to the January option cycle: May (the current calendar month), April (the
next calendar month), July (the next expiration month in the January option
cycle), and October (the last option cycle month in the January option cycle).

```
Stock Index Options

```

In March 1983, a revolution in stock options and investments in general

- occurred. At that time, trading an option whose underlying instrument was a
stock index, the S&P 100 (originally called the "CBOE 100"), began on the
CBOE. Reflecting the trading needs of global investors for tools to more
efficiently manage portfolios, the number of stock index options traded
throughout the world exploded. There are currently options on all the major
stock market indexes and on narrow sectors in those indexes.

In the United States, the most popular stock index options in terms of

trading volume are the S&P 500 Index Option (ticker symbol SPX), the S&P

100 Index Option (ticker symbol OEX), the NASDAQ 100 Index Option

(NDX), the Dow Jones Industrial Average (ticker symbol DJX), and the

Russell 2000 Index Option (RUT). All these contracts are listed on the

CBOE. Index options can have a European exercise style and are cash

settled because of the difficulty of delivering a basket of stocks. All stock

index options have a multiple. For the popular stock index options, the

multiple is \$100. To give an individual investor and smaller institutional

investors the opportunity to use stock index products, the exchanges have

created mini versions of some of the contracts, in which the underlying is

- ne-tenth of the multiple used for the index. Since the multiple for the stock
indexes described above is \$100, the mini version’s multiple is \$10.
Specifically, CME also added options on E-mini S&P500 futures contracts

- n both the standard \$250 sizes and mini \$50 sizes. American quarterly
- ptions and also European weekly and EOM (end of month) options are
- ffered. Moreover, as explained for stock options, there are long-term equity
anticipation securities, weeklies, and Flex versions of the contract.

For the S&P 500 Index Option the underlying is of course the S&P 500.

The underlying for the S&P 100 Index Option is a market capitalization–

weighted index of 100 stocks from a broad range of industries in the S&P

500. The underlying index for the NASDAQ 100 Index Option is a modified

market capitalization–weighted index composed of the 100 largest

nonfinancial stocks listed on the Nasdaq stock market. The Russell 2000

Index is composed of the small-capitalization segment of the U.S. equity

universe in the Russell 2000 Index. In addition to U.S. stock market indexes,

there are global stock indexes and country-specific stock market indexes on

which options are traded. An example of the former is the Euro STOXX 50

Index option (OESX), which covers global and regional stock market

indexes.

There are also stock index options for components of the major broadbased stock market indexes, selected industries, and selected sectors. For

example, the CBOE lists the Dow Jones Transportation Average Index

Option, Dow Jones Utility Average Index Option, Dow Jones Internet

Commerce Index Option, Dow Jones Equity REIT Index Option, CBOE

Internet Index Option, CBOE Oil Index Option, CBOE Technology Index

Option, and Morgan Stanley Retail Index Option. There are stock index

- ptions based on some attribute of the components of an index other than
industry or sector. For example, the CBOE lists stock index options based on
a classification of the component stock of the Russell 3000 in terms of value
and growth. The Russell 1000 Growth Index Option and Russell 1000 Value
Index Option include the 1,000 largest stocks in terms of market
capitalization in the Russell 3000 that are classified as growth and value,
respectively. The underlying for the Dow 10 Index Option includes the top
10 dividend-yielding stocks in the Dow Jones Industrial Average, with each
component stock equally weighted in the index.

There are also stock index options based on the exercise style and the

length of the expiration period. For example, the S&P 100 Index Option is

available in American and European exercise style.

If a stock option is exercised, a stock must be delivered. It would be

complicated, to say the least, to settle a stock index option by delivering all

the stocks that make up the index. Instead, stock index options are **cash**

**settlement contracts** . That is, if the option is exercised, the exchangeassigned option writer pays cash to the option buyer. No stock is delivered.

The dollar value of the stock index underlying an index option is equal to

the current cash index value multiplied by the contract's multiple:

Each stock index option has a contract multiple. For example, for the

S&P 100 Stock Index the multiple is \$100. So, if the cash index value for the

S&P 100 is 1,000, then the dollar value of the S&P 100 contract is 1,000 ×

$100 = $100,000.

For a stock option, the price at which the buyer of the option can buy or

sell the stock is the strike price. For an index option, the strike index is the

index value at which the buyer of the option can buy or sell the underlying

stock index. The strike index is converted into a dollar value by multiplying

the strike index by the multiple for the contract. For example, if the strike

index is 1,750 for an S&P 100 Index option, the strike value is \$175,000

(1,750 × \$100). If an investor purchases a call option on the S&P 100 with a

strike index of 1,750 and exercises the option when the index value is 1,800,

then the investor has the right to purchase the index for \$175,000 when the

dollar value of the index is \$180,000. The buyer of the call option would

then receive $5,000 (= $180,000—\$175,000) from the option writer.

```
Long-Term Equity Anticipation Securities

```

For an individual stock and a stock index, only the next two expiration

months are traded on an exchange. Consequently, the longest time before

expiration of a standard exchange-traded option is six months. **Long-term**

**equity anticipation securities** (LEAPS) are options contracts designed to

- ffer longer maturities. These contracts are available on individual stocks
and some indexes. Stock option LEAPS are comparable to standard stock

- ptions except that the maturities can range up to 39 months from the
- rigination date. Index options LEAPS differ in size compared with standard
index options, having a multiplier of 10 rather than 100.

```
Interest Rate Options

```

Interest rate options can be written on cash instruments or futures. At one

time, several exchange-traded options contracts were available whose

underlying instrument was a debt instrument. These contracts are referred to

as **options on physicals** . For reasons explained later, options on futures that

are based on debt instruments have been far more popular than options on

physicals.

Market participants have made increasingly greater use of OTC options

- n Treasury, agency debentures, and mortgage-backed securities. [3] Certain
institutional investors who want to purchase an option on a specific Treasury
security or a Ginnie Mae pass-through can do so on an OTC basis. There are
government and mortgage-backed securities dealers who make a market in

- ptions on specific securities. Typically, the maturity of the option coincides
with the period over which the buyer of the option wants to hedge, so the
buyer is not concerned with the option's liquidity.

Besides options on fixed-income securities, investors can obtain OTC

- ptions on a yield spread (such as the spread between mortgage pass-through
securities and Treasuries or between double-A corporates and Treasuries).

```
FLEX Options

```

A **FLEX option** [4] is an option contract with some terms that have been

customized. It is traded on an options exchange and cleared and guaranteed

by the associated clearinghouse for the exchange. The need for

customization of certain terms is a result of the wide range of portfolio

strategy needs of institutional investors that cannot be satisfied by standard

exchange-traded options.

A FLEX option can be created for individual stocks, stock indexes, and

Treasury securities. The value of FLEX options is the ability to customize

the terms of the contract along four dimensions: underlying, strike price,

expiration date, and settlement style (i.e., American versus European).

Moreover, the exchange provides a secondary market to offset or alter

positions and an independent daily marking of prices.

The development of the FLEX option is a response to the growing OTC

market. The exchanges seek to make the FLEX option attractive by

providing price discovery through a competitive auction market, an active

secondary market, daily price valuations, and the virtual elimination of

counterparty risk. The FLEX option represents a link between listed options

and OTC products.

```
Exotic Options

```

OTC options can be customized in any manner sought by an institutional

investor. Basically, if a dealer can reasonably hedge the risk associated with

the opposite side of the option sought, it will create the option desired by a

customer. OTC options are not limited to European or American types. An

- ption can be created in which the option can be exercised at several
specified dates as well as the expiration date of the option. As noted earlier,
such options are referred to as "Bermuda options."

The more complex options created are called **exotic options** . Here are

just two types of such exotic options: alternative options and outperformance

- ptions. An **alternative option**, also called an **either-or option**, has a payoff
that is the best independent payoff of two distinct assets. For example,
suppose that Donna buys an alternative call option with the following terms:

1. The underlying is one unit of Asset M or one unit of Asset N.
2. The strike price for Asset M is \$80.
3. The strike price for Asset N is \$110.
4. The expiration date is three months from now.
5. The option can only be exercised three months from now (i.e., it is a
European option).

At the expiration date, Donna can decide to buy from the writer of this

- ption _either_ - ne unit of Asset M at \$80 or one unit of Asset N at \$110.
Donna will buy the asset with the larger payoff. So, for example, if Asset M
and Asset N at the expiration date are \$84 and \$140, respectively, then the
payoff would be \$4 if Donna elects to exercise to buy Asset M but \$30 if she
elects to exercise to buy Asset N. Thus, she will choose to buy Asset N. If
the price for both assets at the expiration date is below their strike prices,
Donna will let the option expire worthless.

An **outperformance option** is an option whose payoff is based on the

relative payoff of two assets at the expiration date. For example, consider the

following outperformance call option purchased:

1. Portfolio A consists of the stock of 50 public utility companies with
a market value of \$1 million.

2. Portfolio B consists of the stock of 50 financial services companies
with a market value of \$1 million.

3. The expiration date is six months from now and is a European

   - ption.

4. The strike is equal to

Market value of Portfolio B − Market value of Portfolio A.

At the expiration date, if the market value of Portfolio A is greater than the

market value of Portfolio B, then there is no value to this option, and it will

expire worthless. The option will be exercised if the market value of

Portfolio B exceeds the market value of Portfolio A at the expiration date.

```
Futures Options

```

An option on a futures contract, commonly referred to as a **futures option**,

gives the buyer the right to buy from or sell to the writer a designated futures

contract at a designated price at any time during the life of the option. If the

futures option is a call option, the buyer has the right to purchase one

designated futures contract at the exercise price. That is, the buyer has the

right to acquire a long futures position in the designated futures contract. If

the buyer exercises the call option, the writer (seller) acquires a

corresponding short position in the futures contract.

A put option on a futures contract grants the buyer the right to sell one

designated futures contract to the writer at the exercise price. That is, the

- ption buyer has the right to acquire a short position in the designated
futures contract. If the put option is exercised, the writer acquires a
corresponding long position in the designated futures contract.

There are futures options on all the interest rate futures contracts

reviewed in chapter 34.

```
Mechanics of Trading Futures Options

```

The parties to the futures option will realize a position in a futures contract

when the option is exercised. The question is: What will the futures price be?

That is, at what price will the long be required to pay for the instrument

underlying the futures contract, and at what price will the short be required

to sell the instrument underlying the futures contract?

On exercise, the futures price for the futures contract will be set equal to

the exercise price. The position of the two parties is then immediately

marked to market based on the then-current futures price. Thus, the futures

position of the two parties will be at the prevailing futures price. At the same

time, the option writer or seller must pay the option buyer the economic

benefit from exercising. In the case of a call futures option, the option writer

must pay the difference between the current futures price and the exercise

price to the buyer of the option. In the case of a put futures option, the option

writer must pay the option buyer the difference between the exercise price

and the current futures price.

For example, suppose an investor buys a call option on some futures

contract in which the exercise price is 85. Assume also that the futures price

is 95 and that the buyer exercises the call option. On exercise, the call buyer

is given a long position in the futures contract at 85, and the call writer is

assigned the corresponding short position in the futures contract at 85. The

futures position of the buyer and the writer is immediately marked to market

by the exchange. Because the prevailing futures price is 95 and the exercise

price is 85, the long futures position (the position of the call buyer) realizes a

gain of 10, whereas the short futures position (the position of the call writer)

realizes a loss of 10. The call writer pays the exchange 10, and the call buyer

receives 10 from the exchange. The call buyer, who now has a long futures

position at 95, can either liquidate the futures position at 95 or maintain a

long futures position. If the former course of action is taken, the call buyer

sells a futures contract at the prevailing futures price of 95. There is no gain

- r loss from liquidating the position. Overall, the call buyer realizes a gain of
10. If the call buyer elects to hold the long futures position, then he or she
will face the same risk and reward of holding such a position. But the call
buyer still has realized a gain of 10 from the exercise of the call option.

Suppose, instead, that the futures option is a put rather than a call, and the

current futures price is 60 rather than 95. If the buyer of this put option

exercises it, the buyer would have a short position in the futures contract at

85; the option writer would have a long position in the futures contract at 85.

The exchange then marks the position to market at the then-current futures

price of 60, resulting in a gain to the put buyer of 25 and a loss to the put

writer of the same amount. The put buyer, now having a short futures

position at 60, can either maintain that position or liquidate it by buying a

futures contract at the prevailing futures price of 60. In either case, the put

buyer realizes a gain of 25 from exercising the put option.

The exchange imposes no margin requirements for the buyer of a futures

- ption once the option price has been paid in full. Because the maximum
amount the buyer can lose is the option price, regardless of how adverse the
price movement of the underlying instrument, there is no need for margin.

Because the writer (seller) of an option has agreed to accept all the risk

(and none of the reward) of the position in the underlying instrument, the

writer (seller) is required to deposit not only the margin required on the

interest rate futures contract position if that is the underlying instrument, but

also (with certain exceptions) the option price that is received for writing the

- ption. In addition, if prices for the underlying futures contract adversely
affect the writer's position, the writer would be required to deposit variation
margin as it is marked to market.

```
Reasons for the Popularity of Futures Options

```

Futures options on fixed-income securities have largely supplanted options

- n physicals as the options vehicle used by institutional investors for three
reasons. [5] First, unlike options on fixed-income securities, futures options on
Treasury coupon futures do not require payments to be made for accrued
interest. Consequently, when a futures option is exercised, the call buyer and
the put writer need not compensate the other party for accrued interest.

Second, futures options are believed to be "cleaner" instruments because

- f the reduced likelihood of delivery squeezes. Market participants who
must deliver an instrument are concerned that the instrument to be delivered

will be in short supply at the time of delivery, resulting in a higher price to

acquire it. As the deliverable supply of futures contracts is more than

adequate for futures options currently traded, there is no concern about a

delivery squeeze.

Finally, to price any option, it is imperative to know at all times the price

- f the underlying instrument. As mentioned in our discussions of the various
bond markets, current bond prices are not easily available. In contrast,
futures prices are readily available.

```
Key Points

```

- An option is a contract in which the writer of the option grants the buyer
the right, but not the obligation, to purchase from or sell to the writer
something at the exercise (or strike) price in a specified period of time (until
the expiration date).

   - The price paid by the option buyer is called the "option price" or
"option premium."

   - A call option grants the option buyer the right to buy something from
the option writer, and a put option grants the option buyer the right to
sell something to the option writer.

   - The maximum amount that an option buyer can lose is the option
price, while the maximum profit that the option writer can realize is the

   - ption price; the option buyer has substantial upside return potential,
whereas the option writer has substantial downside risk.

   - The option contract specifies the exercise style (American, European,
Bermuda).

   - Options may be traded either on an organized exchange or in the
OTC market.

   - Unlike a futures contract, only one party to an option contract is
   - bligated to transact at a later date: the option writer.
   - Futures have a symmetric risk/reward relationship, whereas options
do not, because the buyer of an option retains all the potential benefits,
but the gain is always reduced by the amount of the option price.

   - Futures are risk-sharing arrangements, but options are insurance

arrangements.

- There are four basic option positions: buying a call option, selling a
call option, buying a put option, and selling a put option.

- An option can be used to alter the risk/reward relationship from that
- f a position in the underlying.
- The buyer of a call option benefits if the price of the underlying rises;
the writer (seller) of a call option benefits if the price of the underlying
is unchanged or falls.

- The buyer of a put option benefits if the price of the underlying falls;
the writer (seller) of a put option benefits if the price of the underlying
is unchanged or rises.

- When determining the payoff from an option, the time value of
money as a result of having to finance the option price must be
considered.

- Some options are traded on individual shares of common stock, and
some options are traded on common stock indexes.

- The dollar value of a stock index option contract is equal to the index
value multiplied by the contract's multiple.

- There are interest rate options in which the underlying is a debt
instrument (called an "option on a physical") and a futures contract
(called a "futures option").

- Exchange-traded options on futures that are based on debt
instruments have been far more popular than exchange-traded options

- n physicals.
- A futures option gives the buyer the right to buy from or sell to the
writer a designated futures contract at a designated price at any time
during the life of the option.

- If the buyer of the futures option exercises, the futures price for the
futures contract will be set equal to the exercise price, but the position

- f the two parties is then immediately marked to market based on the
then-current futures price.

- For several reasons, futures options on fixed-income securities have
been used more by institutional investors than have options on
physicals.

   - There has been increased use by institutional investors of OTC
   - ptions on Treasury and mortgage-backed securities.
  - Complex OTC options are called "exotic options," two examples
being alternative options and outperformance options.

```
Questions

```

1. Identify and explain the key features of an options contract.
2. What is the difference between a put option and a call option?
3. What is the difference between an American option and a European

   - ption?

4. Why does an option writer need to post margin?
5. Identify two important ways in which an exchange-traded option
differs from a typical OTC option.

6. a. What are the main ways in which an option differs from a futures

contract?

b. Why are options and futures called "derivative securities"?

7. Explain how this statement can be true: "A long call position offers
potentially unlimited gains, if the underlying asset's price rises, but a
fixed, maximum loss if the underlying asset's price drops to zero."

8. Suppose a call option on a stock has an exercise price of \$70 and a
cost of \$2, and suppose you buy the call. Identify the profit to your
investment, at the call's expiration, for each of these values of the
underlying stock: $25, $70, $100, $400.

9. Consider again the situation in question 8. Suppose you had sold the
call option. What would your profit be, at expiration, for each of the
stock prices?

10. Explain why you agree or disagree with this statement: "Buying a
put is just like short selling the underlying asset. You gain the same
thing from either position, if the underlying asset's price falls. If the
price goes up, you have the same loss."

11. Why do stock index options involve cash settlement rather than
delivery of the underlying stocks?

12. Suppose you bought an index call option for \$5.50 that has a strike
price of 200 and that, at expiration, you exercised it. Also suppose that
at the time you exercised the call option, the index has a value of 240.
a. If the index option has a multiple of \$100, how much money does the
writer of this option pay you?

b. What profit did you realize from buying this call option?

13. How do LEAPS differ from standard stock options and standard
index options?

14. a. What are the terms that can be customized in a FLEX option?

b. Why was the FLEX option introduced by exchanges?

15. Suppose that you buy an alternative call option with the following

terms:

- The underlying asset is one unit of Asset G or one unit of Asset H.
- The strike price for Asset G is \$100.
- The strike price for Asset H is \$115.
- The expiration date is four months from now.
- The option can only be exercised at the expiration date.

a. What is the payoff from this option if at the expiration date, the price of

Asset G is \$125 and the price of Asset H is \$135?

b. What is the payoff from this option if at the expiration date, the price of

Asset G is \$90 and the price of Asset H is \$125?

c. What is the payoff from this option if at the expiration date, the price of

Asset G is \$90 and the price of Asset H is \$105?

16. Suppose that you buy an outperformance call option with the
following terms:

- Portfolio X consists of bonds with a market value of \$5 million.
- Portfolio Y consists of stocks with a market value of \$5 million.
- The expiration date is nine months from now and is a European option.
- The strike price is equal to
Market value of Portfolio X − Market value of Portfolio Y.

What is the payoff of this option if at the expiration date, the market value of

Portfolio X is \$10 million and the market value of Portfolio Y is \$12

million?

17. Suppose you have a long position in a call option on a futures
contract, and the strike price is \$80. The futures contract price is now
\$87, and you want to exercise your option. Identify the gains from
exercise, specifying any cash inflow and the futures position you get
(and the price of the futures contract).

18. See chapter18 for more detail on selling short in a securities market.
19. See Stephen A. Ross, "Options and Efficiency," _Quarterly Journal of Economics_ 90, no. 1 (1976):
75–89; Fred Arditti and Kose John, "Spanning the State Space with Options," _Journal of Financial_
_and Quantitative Analysis_ 25, no. 1(1980): 1–9.

20. For a more detailed discussion of OTC options, see Mark Pitts and Frank J. Fabozzi, _Interest Rate_
_Futures and Options_ (Chicago: Probus Publishing, 1989), chapter 2.

21. For a more detailed description of FLEX options, see James J. Angel, Gary L. Gastineau, and
Clifford J. Weber, _Equity FLEX Options_ (Hoboken, NJ: John Wiley & Sons, 1999).

22. Laurie Goodman, "Introduction to Debt Options," in _Winning the Interest Rate Game: A Guide to_
_Debt Options_, ed. Frank J. Fabozzi (Chicago: Probus Publishing, 1985), chapter 1, 13–14.

# **`35`**

```
Pricing Futures and Options Contracts

CONTENTS

```

**Learning Objectives**

**Pricing of Futures Contracts**

Theoretical Futures Price Based on Arbitrage Model

Price Convergence at the Delivery Date

A Closer Look at the Theoretical Futures Price

Interim Cash Flows

Differences between Lending and Borrowing Rates

Transaction Costs

Short Selling

Known Deliverable Asset and Settlement Date

The Deliverable Is a Basket of Securities

Different Tax Treatment of Cash and Futures Transactions

**Pricing of Options**

Basic Components of the Option Price

Intrinsic Value

Time Premium

Put–Call Parity Relationship

Factors That Influence the Option Price

Current Price of the Underlying Asset

Strike Price

Time to Expiration of the Option

Expected Price Volatility of the Underlying Asset over the Life of the Option

Short-Term, Risk-Free Interest Rate over the Life of the Option

Anticipated Cash Payments on the Underlying Asset over the Life of the Option

Option Pricing Models

Deriving the Binomial Option Pricing Model

Deriving the Hedge Ratio

Deriving the Price of a Call Option

Fixed-Income Option Pricing Models

**Key Points**

**Questions**

```
Learning Objectives

```

After reading this chapter, you will understand:

   - the theory of pricing a futures contract;
   - how arbitrage between the futures market and the cash or spot market
links the prices of those markets;

   - the meaning of the terms "cost of carry" and "net financing cost";
   - the convergence of the futures and cash prices for a particular asset at
the settlement date of the futures contract;

   - why the actual futures price may differ from the theoretical futures
price;

  - how the market price of an option can be broken down into an
intrinsic value and a time premium;

   - why arbitrage ensures that the prices of calls and puts on the same
underlying asset with the same exercise price and expiration date have a
certain relationship to each other;

   - the factors that affect the price of an option: the underlying asset's
current price and expected price volatility, the contract's expiration date
and exercise price, the short-term rate of interest, and any cash flows
from the underlying asset; and

   - the principles of the binomial option pricing model and how the
model is derived.

In chapters 33 and 34, we described the various types of futures and options

contracts. In this chapter, we explain how to determine the theoretical price

- f these contracts using arbitrage arguments. A close examination of the
underlying assumptions necessary to derive the theoretical price indicates
how it must be modified to price the specific contracts described in the
previous two chapters.

```
Pricing of Futures Contracts

```

To understand what determines the futures price, consider once again the

futures contract in chapter 33, whose underlying instrument is Asset XYZ.

We make several assumptions:

1. Asset XYZ is selling for \$100 in the cash market.
2. Asset XYZ pays the holder (with certainty) \$12 per year in four
quarterly payments of \$3, and the next quarterly payment is exactly
three months from now.

3. The futures contract requires delivery three months from now.
4. The current three-month interest rate at which funds can be lent or

borrowed is 8% per year.

What should the price of this futures contract be? Suppose the price of

the futures contract is \$107. Consider this strategy:

Sell the futures contract at \$107.

Purchase Asset XYZ in the cash market for \$100.

Borrow \$100 for three months at 8% per year.

The borrowed funds are used to purchase Asset XYZ, resulting in no initial

cash outlay for this strategy. At the end of three months, \$3 will be received

from holding Asset XYZ. Three months from now, Asset XYZ must be

delivered to settle the futures contract, and the loan must be repaid. This

strategy produces an outcome as follows:

**1.** From settlement of the futures contract:

Proceeds from sale of Asset XYZ to settle the futures contract = \$107

Payment received from investing in Asset XYZ for three months =  3

Total proceeds = \$110

**2.** From the loan:

Repayment of the loan principal = \$100

Interest on loan (2% for three months) =  2

Total outlay = \$102

**3.** Profit: \$8

Notice that this strategy guarantees a profit of \$8. Moreover, this profit is

generated with no investment outlay: The funds needed to buy Asset XYZ

were borrowed. The profit is realized regardless of what the futures price at

the settlement date is. In financial terms, the profit arises from a riskless

arbitrage between the price of Asset XYZ in the cash or spot market and the

price of Asset XYZ in the futures market. Obviously, in a well-functioning

market, arbitrageurs who could get this riskless gain for a zero investment

would sell the futures and buy Asset XYZ, forcing the futures price down

and bidding up Asset XYZ's price so as to eliminate this profit.

This strategy, which resulted in the capturing of the arbitrage profit, is

referred to as a **cash and carry trade** . The reason for this name is that it

involves borrowing cash to purchase a security and "carrying" that security

to the futures settlement date.

Suppose instead that the futures price is \$92 and not \$107. Let's consider

this strategy:

Buy the futures contract at \$92.

Sell (short) Asset XYZ for \$100.

Invest (lend) \$100 for three months at 8% per year. [1]

Once again, no initial cash outlay is needed for the strategy: The cost of

the long position in the futures contract is zero, and there is no cost to selling

the asset short and lending the money. Three months from now, Asset XYZ

must be purchased to settle the long position in the futures contract. Asset

XYZ accepted for delivery will then be used to cover the short position—to

cover the short sale of Asset XYZ in the cash market. Shorting Asset XYZ

requires the short seller to pay the lender of Asset XYZ the proceeds that the

lender would have earned for the quarter. Therefore, the strategy requires a

payment of \$3 to the lender of Asset XYZ. The outcome in three months

would be as follows:

**1.** From settlement of the futures contract:

Price paid for purchase of Asset XYZ to settle futures contract = \$92

Proceeds to lender of Asset XYZ to borrow the asset =  3

Total outlay = \$95

**2.** From the loan:

Principal from maturing of investment = \$100

Interest earned on loan (\$2 for three months) =  2

Total proceeds = \$102

**3.** Profit =  \$7

The \$7 profit from this strategy is also a riskless arbitrage profit. This

strategy requires no initial cash outlay but will generate a profit regardless of

the price of Asset XYZ at the settlement date. Clearly, this opportunity

would lead arbitrageurs to buy futures and short Asset XYZ, and the effect

- f these two actions would be to raise the futures price and lower the cash
price until the profit again disappeared.

This strategy that resulted in the capturing of the arbitrage profit is

referred to as a **reverse cash and carry trade** . That is, with this strategy, a

security is sold short, and the proceeds received from the short sale are

invested.

At what futures price would the arbitraging stop? Another way to ask this

question is this: Is there a futures price that would prevent the opportunity

for the riskless arbitrage profit? Yes, there is. There will be no arbitrage

profit if the futures price is \$99. Let’s look at what happens if the two

previous strategies (cash and carry trade and reverse cash and carry trade)

are followed, now assuming a futures price of \$99.

Consider the first strategy (cash and carry), which has these elements:

Sell the futures contract at \$99.

Purchase Asset XYZ in the cash market for \$100.

Borrow \$100 for three months at 8% per year.

In three months, the outcome will be as follows:

**1.** From settlement of the futures contract:

Price paid for purchase of Asset XYZ to settle futures contract =  \$99

Proceeds to lender of Asset XYZ to borrow the asset =  3

Total outlay = \$102

**2.** From the loan:

Principal from maturing of investment = \$100

Interest earned on loan (\$2 for three months) =  2

Total proceeds = \$102

**3.** Profit: =  \$0

If the futures price is \$99, the arbitrage profit has disappeared.

Next, consider the strategy consisting of these actions:

Buy the futures contract at \$99.

Sell (short) Asset XYZ for \$100.

Invest (lend) \$100 for three months at 8% per year.

The outcome in three months would be as follows:

**1.** From settlement of the futures contract:

Price paid for purchase of Asset XYZ to settle futures contract =  \$99

Proceeds to lender of Asset XYZ to borrow the asset =  3

Total outlay = \$102

**2.** From the loan:

Principal from maturing of investment = \$100

Interest earned on loan (\$2 for three months) =  2

Total proceeds = \$102

**3.** Profit: =  \$0

Thus, if the futures price were \$99, neither strategy would result in an

arbitrage profit. Hence, a futures price of \$99 is the equilibrium price,

because any higher or lower futures price will permit riskless arbitrage

profits.

```
Theoretical Futures Price Based on Arbitrage Model

```

According to the arbitrage arguments we have just presented, we see that the

equilibrium or theoretical futures price can be determined based on the

following information:

1. The price of the asset in the cash market.
2. The cash yield earned on the asset until the settlement date. In our
example, the cash yield on Asset XYZ is $3 on a $100 investment or
3% quarterly (12% annual cash yield).

3. The **financing cost**, which is the interest rate for borrowing and
lending until the settlement date. In our example, the financing cost is
2% for the three months.

To develop a theory of futures pricing, we will use the following

notation:

_F_ = Futures price ($)

_P_ = Cash market price ($)

_r_

= Financing cost (%)

_y_ = Cash yield (%)

Now, consider the cash and carry trade:

Sell (or take a short position in) the futures contract at _F_ .

Purchase Asset XYZ for _P_ .

Borrow _P_ at a rate of _r_ until the settlement date.

The outcome at the settlement date would be:

**1.** From settlement of the futures contract:

Proceeds from sale of Asset XYZ to settle the futures contract = _F_

Payment received from investing in Asset XYZ = _yP_

Total proceeds = _F_ + _yP_

**2.** From the loan:

Repayment of principal of loan = _P_

Interest on loan = _rP_

Total outlay = _P_ + _rP_

The profit will equal

Profit = Total proceeds − Total outlay,

Profit = _F_ + _yP_ - ( _P_ + _rP_ ).

The equilibrium futures price is the price that ensures that the profit from

this arbitrage strategy is zero. Thus, equilibrium requires that

0 = _F_ + _yP_ - ( _P_ + _rP_ ).

Solving for the theoretical futures price gives this equation:

_F_ = _P_ + _P_ _r_ ( _y_ )

In other words, the equilibrium futures price is simply a function of the cash

price, the financing cost, and the cash yield on the asset.

Alternatively, let us consider the reverse cash and carry trade illustrated

in our example above, which looks like this:

Buy the futures contract at _F_ .

Sell (short) Asset XYZ for _P_ .

Invest (lend) _P_ at a rate of _r_ until the settlement date.

The outcome at the settlement date would be

**1.** From settlement of the futures contract:

Price paid for purchase of asset to settle futures contract = _F_

Payment to lender of asset to borrow the asset = _yP_

Total outlay = _F_ + _yP_

**2.** From the loan:

Principal from maturing of investment = _P_

Interest earned on loan = _rP_

Total proceeds = _P_ + _rP_

The profit will equal

Profit = Total proceeds − Total outlay,

Profit = _P_ + _rP_ - ( _F_ + _yP_ ).

Setting the profit equal to zero, so that there will be no arbitrage profit, and

solving for the futures price, we obtain the same equation for the futures

price as derived earlier:

_F_ = _P_ + _P_ _r_ ( _y_ ).

It is instructive to apply this equation to our previous example to

determine the theoretical futures price. In that example, the key variables

have these values:

_r_ = 0.02

_y_ = 0.03

_P_ = \$100

Then the theoretical futures price is

_F_ = $100 − $100(0.03 − 0.02)

= $100 − $1 = \$99.

This agrees with the equilibrium futures price we proposed earlier.

The theoretical futures price may be at a premium to the cash market

price (higher than the cash market price) or at a discount from the cash

market price (lower than the cash market price), depending on the value of

_P_ ( _r_ - _y_ ). The term _r_ - _y_, which reflects the difference between the cost of

financing and the asset's cash yield, is called the **net financing cost** . The net

financing cost is more commonly called the **cost of carry**, or simply, **carry** .

**Positive carry** means that the yield earned is greater than the financing cost;

**negative carry** means that the financing cost exceeds the yield earned. We

can summarize the effect of carry on the difference between the futures price

and the cash market price in this way:

Carry Futures Price

Positive ( _y_ - _r_ ) Will sell at a discount to cash price ( _F_ < _P_ )

Negative ( _y_ < _r_ ) Will sell at a premium to cash price ( _F_ - _P_ )

Zero ( _r_ = _y_ ) Will be equal to the cash price ( _F_ = _P_ )

```
Price Convergence at the Delivery Date

```

At the delivery date, which is when the futures contract settles, the futures

price must equal the cash market price, because a futures contract with no

time left until delivery is equivalent to a cash market transaction. Thus, as

the delivery date approaches, the futures price will converge to the cash

market price. This fact is evident from the equation for the theoretical

futures price. As the delivery date approaches, the financing cost approaches

zero, and the yield that can be earned by holding the investment approaches

zero. Hence, the cost of carry approaches zero, and the futures price will

approach the cash market price.

```
A Closer Look at the Theoretical Futures Price

```

To derive the theoretical futures price using the arbitrage argument, we made

several assumptions. When the assumptions are violated, the actual futures

price will diverge from the theoretical futures price. That is, the difference

between the two prices will differ from the value of carry. Next, we examine

those assumptions and identify practical reasons for the tendency of actual

prices of all financial futures contracts to deviate from their theoretical

prices.

```
Interim Cash Flows

```

Our theoretical analysis assumes that no interim cash flows arise because of

changes in futures prices and the variation margin of the organized

exchanges on which futures are traded. In addition, our approach assumes

implicitly that any dividends or coupon interest payments are paid at the

delivery date rather than at some time between initiation of the cash position

and expiration of the futures contract. However, we know that interim cash

flows of either type can and do occur in practice.

In the case of stock index futures, incorporating interim dividend

payments into the pricing model is necessary, because a cash position in a set

- f 100 or 500 stocks (the number of stocks underlying an index) generates
cash flows in the form of dividends from the stocks. The dividend rate and

the pattern of dividend payments are not known with certainty. They must be

projected from the historical dividend payments of the companies in the

index. Once the dividend payments are projected, they can be incorporated

into the pricing model. The only problem is that the value of the dividend

payments at the settlement date will depend on the interest rate at which the

dividend payments can be reinvested from the time they are projected to be

received until the settlement date. The lower the dividend is, and the closer

the dividend payments are to the settlement date of the futures contract, the

less important the reinvestment income is when determining the futures

price.

It is important to note that, in the absence of initial and variation margins,

the theoretical price for the contract is technically the theoretical price for a

forward contract, not the theoretical price for a futures contract. This is

because, unlike a futures contract, a forward contract is not marked to

market at the end of each trading day, and therefore does not require

variation margin and does not generate cash inflows from gains or outflows

from losses.

```
Differences between Lending and Borrowing Rates

```

When deriving the theoretical futures price, we assumed that the investor's

borrowing and lending rates are equal. Typically, however, the borrowing

rate is higher than the lending rate. The impact of this inequality is important

and easy to identify. We begin by adopting these symbols for the two rates:

_rB_ = Borrowing rate,

_rL_ = Lending rate.

Now, consider the cash and carry trade:

Sell the futures contract at _F_ .

Purchase the asset for _P_ .

Borrow _P_ at _rB_ until the settlement date.

Clearly, the futures price that would produce no arbitrage profit is

_F_ = _P_ + _P_ ( _rB_ - _y_ ).

Recall that the reverse cash and carry trade is

Buy the futures contract at _F_ .

Sell (short) the asset for _P_ .

Invest (lend) _P_ at _rL_ until the settlement date.

The futures price that would prevent a riskless profit is

_F_ = _P_ + _P_ ( _rL_ - _y_ ).

These two equations together provide boundaries between which the

futures price will be in equilibrium. The first equation establishes the upper

boundary, and the second equation the lower boundary. For example, assume

that the borrowing rate is 8% per year, or 2% for three months, and the

lending rate is 6% per year, or 1.5% for three months. According to the first

equation, the upper boundary is

_F_ (upper boundary) = $100 + $100(0.02 − 0.03) = \$99.

The lower boundary according to the second equation is

_F_ (lower boundary) = $100 + $100(0.015 − 0.03) = \$98.50.

Thus, equilibrium is achieved if the futures price takes on any value between

the two boundaries. In other words, equilibrium requires that \$98.50 ≤ _F_ ≤

\$99.

```
Transaction Costs

```

When deriving the theoretical futures price, we ignored transaction costs of

the elements in the arbitrage strategies. In reality, the costs of entering into

and closing the cash position as well as round-trip transaction costs for the

futures contract do affect the futures price. It is easy to show, as we did

previously for borrowing and lending rates, that transaction costs widen the

boundaries for the equilibrium futures price. The details need not concern us

here.

```
Short Selling

```

In the strategy involving short selling of Asset XYZ when the futures price

is below its theoretical value, we explicitly assumed in the reverse cash and

carry trade that the proceeds from the short sale are received and reinvested.

In practice, for individual investors, the proceeds are not received, and, in

fact, the individual investor is required to put up margin (securities margin,

not futures margin) to short sell. For institutional investors, the asset may be

borrowed, but there is a cost to borrowing. This cost of borrowing can be

incorporated into the model by reducing the yield on the asset.

For strategies applied to stock index futures, a short sale of the stocks in

the index means that all stocks in the index must be sold simultaneously. The

stock exchange rule for the short selling of stock, which we explained in

chapter 23, may prevent an investor from implementing the arbitrage

strategy. The short selling rule for stocks specifies that a short sale can be

made only at a price that is higher than the previous trade (referred to as an

"uptick"), or at a price that is equal to the previous trade (referred to as a

"zero tick") but higher than the last trade at a different price. If the arbitrage

requires selling the stocks in the index simultaneously, and the last

transaction for some of the stocks is not an uptick, then the stocks cannot be

shorted simultaneously. Thus, an institutional rule may in effect keep

arbitrageurs from bringing the actual futures price in line with the theoretical

futures price.

```
Known Deliverable Asset and Settlement Date

```

Our example illustrating arbitrage strategies assumes that (1) only one asset

is deliverable, and (2) the settlement date occurs at a known, fixed point in

the future. Neither assumption is consistent with the delivery rules for some

futures contracts. The case of U.S. Treasury bond and note futures contracts

illustrates the point: An investor in a long position cannot know either the

specific Treasury bond to be delivered or the specific date in the contract

month when it might be delivered. This substantial uncertainty is a result of

the delivery options that the short position in a futures contract has. As a

reflection of the short positions' options and advantages, the actual futures

price will be less than the theoretical futures price for the Treasury bond and

note futures contracts.

```
The Deliverable Is a Basket of Securities

```

Some futures contracts involve a single asset, but other contracts apply to a

basket of assets or an index. Stock index futures and municipal bond index

futures contracts are examples. The problem in arbitraging these two futures

contracts is that it is too expensive to buy or sell every security included in

the index. Instead, a portfolio containing a smaller number of assets may be

constructed to track the index (which means having price movements that

are very similar to changes in the index). Nonetheless, arbitrage based on

this tracking portfolio is no longer risk-free, because of the risk that the

portfolio will not track the index exactly. Clearly, then, the actual price of

futures based on baskets of assets may diverge from the theoretical price

because of transactions costs as well as uncertainty about the outcome of the

arbitrage.

```
Different Tax Treatment of Cash and Futures Transactions

```

The basic arbitrage model presented in this chapter ignores not only taxes

but also different tax treatment of cash market transactions and futures

transactions. Obviously, these factors can keep the actual futures price from

being equal to the theoretical price.

```
Pricing of Options

```

The theoretical price of an option is also derived from arbitrage arguments.

However, the pricing of options is not as simple as the pricing of futures

contracts.

```
Basic Components of the Option Price

```

The option price is the sum of the option's **intrinsic value** and a premium

- ver intrinsic value that is often referred to as the "time value" or "time

premium." Although the former term is more common, we will use the term

**time premium** to avoid confusion between the time value of money and the

time value of the option.

```
Intrinsic Value

```

The intrinsic value of an option at any time is its economic value if it is

exercised immediately. If no positive economic value would result from

exercising immediately, the intrinsic value is zero.

Computationally, the intrinsic value of a call option is the difference

between the current price of the underlying asset and the strike price. If that

difference is positive, then the intrinsic value equals that difference; if the

difference is zero or negative, then the intrinsic value is set equal to zero. For

example, if the strike price for a call option is \$100 and the current asset

price is \$105, the intrinsic value is \$5. That is, an option buyer exercising the

- ption and simultaneously selling the underlying asset would realize \$105
from the sale of the asset, which would be covered by acquiring the asset
from the option writer for \$100, thereby, netting a \$5 gain.

When an option has intrinsic value, it is said to be **in the money** . When

the strike price of a call option exceeds the current asset price, the call option

is said to be **out of the money** ; it has no intrinsic value. An option for which

the strike price is equal to the current asset price is said to be **at the money** .

Both at-the-money and out-of-the-money options have intrinsic values of

zero, because it is not profitable to exercise them. Our call option with a

strike price of \$100 would be: (1) in the money when the current asset price

is more than \$100, (2) out of the money when the current asset price is less

than \$100, and (3) at the money when the current asset price is equal to

\$100.

For a put option, the intrinsic value is equal to the amount by which the

current asset price is below the strike price. For example, if the strike price

- f a put option is \$100, and the current asset price is \$92, the intrinsic value
is \$8. That is, the buyer of the put option who simultaneously buys the
underlying asset and exercises the put option will net \$8 by exercising. The
asset will be sold to the writer for \$100 and purchased in the market for \$92.
For our put option with a strike price of \$100, the option would be: (1) in the
money when the current asset price is less than \$100, (2) out of the money
when the current asset price exceeds \$100, and (3) at the money when the
current asset price is equal to \$100.

```
Time Premium

```

The time premium of an option is the amount by which the option's market

price exceeds its intrinsic value. The option buyer hopes that, at some time

prior to expiration, changes in the market price of the underlying asset will

increase the value of the rights conveyed by the option. For this prospect, the

- ption buyer is willing to pay a premium above the intrinsic value. For
example, if the price of a call option with a strike price of \$100 is \$9 when
the current asset price is \$105, then the time premium of this option is $4 ($9

minus its intrinsic value of \$5). Had the current asset price been \$90 instead

- f \$105, then the time premium of this option would be the entire \$9,
because the option has no intrinsic value. Clearly, other things being equal,
the time premium of an option will increase with the amount of time
remaining to expiration.

An option buyer has two ways to realize the value of a position taken in

the option. The first way is to exercise the option. The second way is to sell

the call option for its market price. In the first example above, selling the call

for \$9 is preferable to exercising, because the exercise will realize a gain of

- nly \$5 but the sale will realize a gain of \$9. As this example shows,
exercise causes the immediate loss of any time premium. It is important to
note that in some circumstances, an option may be exercised prior to the
expiration date. These circumstances depend on whether the total proceeds
at the expiration date would be greater by holding the option or exercising
and reinvesting any received cash proceeds until the expiration date.

```
Put–Call Parity Relationship

```

An important relationship holds between the price of a call option and the

price of a put option on the same underlying instrument, with the same strike

price and the same expiration date. An example can illustrate this

relationship, which is commonly referred to as the **put–call parity**

**relationship** .

Our example comes from the previous chapter and assumes that a put

- ption and a call option are available on the same underlying asset (Asset
XYZ), and that both options have one month to expiration and a strike price

- f \$100. The example assumes that the price of the underlying asset is \$100.
The call and put prices are assumed to be \$3 and \$2, respectively.

To see whether the two prices have the right relationship, consider what

happens if an investor pursues this strategy:

Buy Asset XYZ at a price of \$100.

Sell a call option at a price of \$3.

Buy a put option at a price of \$2.

This strategy generates these positions:

Long Asset XYZ

Short the call option

Long the put option

Table 35.1 shows the profit/loss profile at the expiration date for this

strategy. Notice that, no matter what Asset XYZ's price is at the expiration

date, the strategy will produce a profit of \$1. The net cost of creating this

position is the cost of purchasing Asset XYZ (\$100) plus the cost of buying

the put (\$2) less the price received from selling the call (\$3), which is \$99.

Suppose that the net cost of creating the position for one month is less than

\$1. Then, by borrowing \$99 to create the position so that no investment

- utlay is made by the investor, this strategy will produce a net profit of \$1
(as shown in the last column of table 34.1) less the cost of borrowing \$99,
which is assumed to be less than \$1. This situation cannot exist in an

efficient market. As market participants implement the strategy to capture

the \$1 profit, their actions will have one or more of the following

consequences, which will tend to eliminate the \$1 profit: (1) the price of

Asset XYZ will increase, (2) the call option price will drop, or (3) the put

- ption price will rise.

```
Table 35.1
```

Profit/loss profile for a strategy involving a long position in Asset XYZ, short call option position, and long put

- ption position.

```
Assumptions:
```

Price of Asset XYZ: \$100

Call option price: \$3

Put option price: \$2

Strike price 5: 100

Time to expiration: 1 month

Price Received

for Call ($)

Price of Asset XYZ at

Expiration Date ($)

Profit from

Asset XYZ [1] ($)

Price Paid

for Put ($)

Overall

Profit

($)

150 0 3 - 2 1

140 0 3 - 2 1

130 0 3 - 2 1

120 0 3 - 2 1

115 0 3 - 2 1

110 0 3 - 2 1

105 0 3 - 2 1

100 0 3 - 2 1

95 0 3 - 2 1

90 0 3 - 2 1

85 0 3 - 2 1

80 0 3 - 2 1

75 0 3 - 2 1

70 0 3 - 2 1

65 0 3 - 2 1

60 0 3 - 2 1

1There is no profit, because at a price above \$100, Asset XYZ will be called from the investor at a price of \$100,

and at a price below \$100, Asset XYZ will be put by the investor at a price of \$100.

Our example clearly implies that if Asset XYZ's price does not change,

the call price and the put price must tend toward equality. But our example

ignores the time value of money (financing and opportunity costs, cash

payments, and reinvestment income). Also, our example does not consider

the possibility of early exercise of the options. Thus, we have been

considering a put–call parity relationship only for European options.

It can be shown that the put–call parity relationship for options when the

underlying asset makes cash distributions and the time value of money is

recognized is

Once more, note that this relationship is actually the put–call parity

relationship for European options. However, the values of puts and calls that

are American options do conform approximately to this relationship. If this

relationship does not hold, arbitrage opportunities exist. That is, investors

will be able to construct portfolios consisting of long and short positions in

the asset and related options that will provide an extra return with (practical)

certainty.

```
Factors That Influence the Option Price

```

Six factors influence the price of an option:

1. Current price of the underlying asset,
2. Strike price,
3. Time to expiration of the option,
4. Expected price volatility of the underlying asset over the life of the

   - ption,

5. Short-term, risk-free interest rate over the life of the option, and
6. Anticipated cash payments on the underlying asset over the life of
the option.

The impact of each of these factors may depend on whether (1) the option

is a call or a put, and (2) the option is an American option or a European

- ption. A summary of the effect of each factor on put and call option prices
is presented in table 35.2. Here we briefly explain why the factors have the
indicated effects.

```
Table 35.2
```

Summary of factors that affect the price of an option.

Effect of an Increase of Factor on

Factor Call Price Put Price

Current price of underlying asset Increase Decrease

Strike price Decrease Increase

Time to expiration of option Increase Increase

Expected price volatility Increase Increase

Short-term interest rate Increase Decrease

Anticipated cash payments Decrease Increase

```
Current Price of the Underlying Asset

```

The option price will change as the price of the underlying asset changes.

For a call option, as the price of the underlying asset increases (all other

factors constant), the option price increases. The opposite holds for a put

- ption: As the price of the underlying asset increases, the price of a put
- ption decreases.

```
Strike Price

```

The strike price is fixed for the life of the option. All other factors equal, the

lower the strike price is, the higher will be the price for a call option. For put

- ptions, the higher the exercise price is, the higher will be the option price.
Table 35.3 shows this for the price of Apple Inc. (APPL) call and put options

- n August 15, 2016, expiring on March 17, 2017. Option prices shown in
this way are referred to as an "option chain." On August 15, 2016, the
closing price for Apple Inc. (traded on the Nasdaq) was \$109.48.

```
Table 35.3
```

Option chain on August 15, 2016, for Apple Inc (APPL) put and call option expiring on March 17, 2017 (APPL

Price = \$109.48).

Call Put

Strike Last Sale Open Interest Strike Last Sale Open Interest

100 13.05 13,539 100 4.15 4,360

105 9.85 6,218 105 5.88 1,088

110 7.12 7,211 110 8.10 576

115 4.90 10,823 115 11.06 657

120 3.35 8,060 120 15.00 248

_Source:_ Prices obtained from Nasdaq.

_Note:_ Last Sale is the most recent trade. Open Interest is the total number of derivatives contracts traded that

have not yet been liquidated either by an offsetting derivative transaction or by delivery.

```
Time to Expiration of the Option

```

An option is a **wasting asset** . That is, after the expiration date, the option has

no value. All other factors equal, the longer the time to expiration of the

- ption is, the higher the option price will be. This is because, as the time to
expiration decreases, less time remains for the underlying asset's price to rise
(for a call buyer) or fall (for a put buyer), and therefore the probability of a
favorable price movement decreases. Consequently, for American options,

as the time remaining until expiration decreases, the option price approaches

its intrinsic value.

This can be seen in table 35.4, which shows the price of Apple options on

August 15, 2016, with different expiration dates.

```
Table 35.4
```

Option chain on August 14, 2016, for Apple Inc (APPL) put and call options with a strike price of 105 for

different expiration dates.

Expiration Date Call Price Put Price

September 2, 2016 4.65 0.33

October 21, 2016 6.40 1.75

November 18, 2016 7.39 3.09

December 16, 2016 7.92 3.65

January 20, 2017 8.70 4.35

March 17, 2017 9.85 5.88

April 21, 2017 10.35 6.43

June 16, 2017 11.40 7.71

November 17, 2017 13.69 10.95

January 19, 2018 14.53 11.10

_Source_ : Prices obtained from Nasdaq.

```
Expected Price Volatility of the Underlying Asset over the Life of the Option

```

All other factors equal, the greater is the expected volatility (as measured by

the standard deviation or variance) of the price of the underlying asset, the

more an investor will be willing to pay for the option, and the more an

- ption writer will demand for it. This occurs because the greater the
volatility is, the greater the probability that the price of the underlying asset
will move in favor of the option buyer at some time before expiration.

Notice that it is the standard deviation or variance, not the systematic risk

as measured by beta, as described in chapter 14, that is relevant in the

pricing of options.

```
Short-Term, Risk-Free Interest Rate over the Life of the Option

```

Buying the underlying asset ties up one's money. Buying an option on the

same quantity of the underlying asset makes the difference between the asset

price and the option price available for investment at an interest rate at least

as high as the risk-free rate. Consequently, all other factors held constant, the

higher the short-term, risk-free interest rate is, the greater will be the cost of

buying the underlying asset and carrying it to the expiration date of the call

- ption. Hence, the higher the short-term, risk-free interest rate is, the more
attractive the call option will be relative to the direct purchase of the
underlying asset. As a result, a higher short-term, risk-free interest rate
results in a higher price for a call option.

```
Anticipated Cash Payments on the Underlying Asset over the Life of the Option

```

Cash payments on the underlying asset tend to decrease the price of a call

- ption, because the cash payments make it more attractive to hold the
underlying asset than to hold the option. For put options, cash payments on
the underlying asset tend to increase the price.

```
Option Pricing Models

```

We have shown that the theoretical price of a futures contract can be

determined by using arbitrage arguments. An option pricing model uses a set

- f assumptions and arbitrage arguments to derive a theoretical price for an
- ption. As we shall see in the following text, deriving a theoretical option
price is much more complicated than deriving a theoretical futures price,
because the option price depends on the expected price volatility of the
underlying asset over the life of the option.

Several models have been developed to determine the theoretical value of

an option. The most popular one was developed by Fischer Black and Myron

Scholes in 1973 for valuing European call options. [2] Some modifications

were subsequently made to their model. We use another pricing model called

the **binomial option pricing model** to see how arbitrage arguments can be

used to determine a fair value for a call option. [3]

Basically, the idea behind the arbitrage argument is that if the payoff from

- wning a call option can be replicated by (1) purchasing the asset underlying
the call option and (2) borrowing funds, the price of the option is then (at
most) the cost of creating the replicating strategy.

```
Deriving the Binomial Option Pricing Model

```

To derive a one-period binomial option pricing model for a call option, we

begin by constructing a portfolio consisting of (1) a long position in a certain

amount of the asset and (2) a short call position in the underlying asset. The

amount of the underlying asset purchased is such that the position will be

hedged against any change in the price of the asset at the expiration date of

the option. That is, the portfolio consisting of the long position in the asset

and the short position in the call option is riskless and will produce a return

that equals the risk-free interest rate. A portfolio constructed in this way is

called a **hedged portfolio** .

We can show how this process works with an extended illustration. Let us

assume first that an asset has a current market price of \$80 and that only two

possible future states can occur one year from now. Each state is associated

with one of only two possible values for the asset, and they can be

summarized in this way:

State Price ($)

1 100

2 70

We assume further that there is a call option on this asset with a strike

price of \$80 (the same as the current market price) and that it expires in one

year. Let us suppose an investor forms a hedged portfolio by acquiring twothirds of a unit of the asset and selling one call option. The two-thirds of a

unit of the asset is the so-called hedge ratio (how we derive the hedge ratio is

explained later). Consider the outcomes for this hedged portfolio

corresponding to the two possible outcomes for the asset.

If the price of the asset one year from now is \$100, the buyer of the call

- ption will exercise it. Then the investor will have to deliver one unit of the
asset in exchange for the strike price, \$80. As the investor has only twothirds of a unit of the asset, she has to buy one-third at a cost of \$100/3 (the
market price divided by 3). Consequently, the outcome will equal the strike
price of \$80 received, minus the \$100/3 cost to acquire the one-third unit of
the asset to deliver, plus whatever price the investor initially sold the call

- ption for. That is, the outcome will be

If instead the price of the asset one year from now is \$70, the buyer of the

call option will not exercise it. Consequently, the investor will own two

thirds of a unit of the asset. At the price of \$70, the value of two-thirds of a

unit is \$46 ⅔. The outcome in this case is then the value of the asset plus

whatever price the investor received when she initially sold the call option.

That is, the outcome will be

It is apparent that, given the possible asset prices, the portfolio consisting of

a short position in the call option and two-thirds of a unit of the asset will

generate an outcome that hedges changes in the price of the asset; hence, the

hedged portfolio is riskless. Furthermore, this riskless hedge will hold

regardless of the price of the call, which affects only the magnitude of the

- utcome.

```
Deriving the Hedge Ratio

```

To show how to calculate the hedge ratio, we use the following notation:

_S_ = current asset price,

_u_

= 1 plus the percentage change in the asset's price if the price goes up

in the next period,

_d_ = 1 plus the percentage change in the asset's price if the price goes

down in the next period,

_r_

= a risk-free one-period interest rate (the risk-free rate until the

expiration date),

_C_ = current price of a call option,

_Cu_ = intrinsic value of the call option if the asset price goes up,

_Cd_ = intrinsic value of the call option if the asset price goes down,

_E_ = strike price of the call option,

_H_ = hedge ratio (that is, the amount of the asset purchased per call

sold).

In our illustration, _u_ and _d_ are

_u_ = 1.250 ($100/$80),

_d_ = 0.875 ($70/$80),

Furthermore, State 1 in our illustration means that the asset's price goes up,

and State 2 means that the asset's price goes down.

The investment made in the hedged portfolio is equal to the cost of

buying _H_ amount of the asset minus the price received from selling the call

- ption. Therefore, because

Amount invested in the asset = _HS_,

then

Cost of the hedged portfolio = _HS_ - _C_ .

The payoff of the hedged portfolio at the end of one period is equal to the

value of the _HS_ amount of the asset purchased minus the call option price.

The payoffs of the hedged portfolio for the two possible states are defined in

this way:

State 1, if the asset's price goes up: _uHS_   - _Cu_,

State 2, if the asset's price goes down: _dHS_   - _Cd_ .

In our illustration, we have these payoffs:

If the asset's price goes up: 1.250 _H_ \$80 − _Cu_, or \$100 _H_   - _Cu_ ;

If the asset's price falls: 0.875 _H_ \$80 − _Cd_, or \$70 _H_    - _Cd_ .

If the hedge is riskless, the payoffs must be the same. Thus,

Solving equation (35.1) for the hedge ratio _H_, we have

To determine the value of the hedge ratio _H_, we must know _Cu_ and _Cd_ .

These two values are equal to the difference between the price of the asset

and the strike price in the two possible states. Of course, the minimum value

- f the call option in any state is zero. Mathematically, the differences can be
expressed as follows:

If the asset's price goes up: _Cu_ = Max [0, ( _uS_   - _E_ )];

If the asset's price goes down: _Cd_ = Max [0, ( _dS_   - _E_ )].

As the strike price in our illustration is \$80, the value of _uS_ is \$100, and

the value of _dS_ is \$70. Then,

If the asset's price goes up: _Cu_ = Max [0, ($100 − $80)] = \$20;

If the asset’s price goes down: _Cd_ = Max [0, ($70 − $80)] = \$0.

To continue with our illustration, we substitute the values of _u_, _d_, _S_, _Cu_,

and _Cd_ into equation (35.2) to obtain the hedge ratio's value:

This value for _H_ agrees with the amount of the asset purchased when we

introduced this illustration.

Now we can derive a formula for the call option price. Figure 35.1

diagrams the situation. The top left half of the figure shows the current price

- f the asset for the current period and at the expiration date. The lower left
portion of the figure does the same thing using the notation above. The upper
right side of the figure gives the current price of the call option and the value

- f the call option at the expiration date; the lower right side does the same
thing using our notation. Figure 35.2 uses the values in our illustration to
construct the outcomes for the asset and the call option.

```
Figure 35.1

```

One-period option pricing model.

```
Figure 35.2

```

One-period option pricing model illustration.

```
Deriving the Price of a Call Option

```

To derive the price of a call option, we can rely on the basic principle that

the hedged portfolio, being riskless, must have a return equal to the risk-free

rate of interest. Given that the amount invested in the hedged portfolio is _HS_

- _C_, the amount that should be generated one period from now is

We also know what the payoff will be for the hedged portfolio if the

asset's price goes up or down. Because the payoff of the hedged portfolio

will be the same whether the asset's price rises or falls, we can use the

payoff if it goes up, which is

_uHS_ - _Cu_ .

The payoff of the hedged portfolio given above should be the same as the

initial cost of the portfolio given by equation (35.3). Equating the two, we

have

Substituting equation (35.2) for _H_ into equation (35.4) and solving for the

call option price _C_, we find

Equation (35.5) is the formula for the one-period binomial option pricing

model. We would have derived the same formula if we had used the payoff

for a decline in the price of the underlying asset. This derivation is left as an

exercise for the reader.

Applying equation (35.5) to our illustration, where

_u_ = 1.250,

_d_ = 0.875,

_r_ = 0.10,

_Cu_ = \$20,

_Cd_ = \$0,

we get

The approach we present for pricing options may seem oversimplified,

given that we assume only two possible future states for the price of the

underlying asset. In fact, we can extend the procedure by making the period

shorter and shorter, and in that way calculate a fair value for an option. Note

that extended and comprehensive versions of the binomial pricing model are

in wide use throughout the world of finance. Moreover, the other popular

- ption pricing model, the Black-Scholes model mentioned earlier, is in
reality the mathematical equivalent of the binomial approach as the periods
become very short. Thus, the approach we have described in detail here
provides the conceptual framework for much of the analysis of option prices
that today's financial market participants regularly perform.

```
Fixed-Income Option Pricing Models

```

Because of the assumptions required for the binomial model described

above, such models may have limited applicability to the pricing of options

- n fixed-income securities. More specifically, the binomial model assumes
that (1) the price of the security can take on any positive value with some
probability—no matter how small, (2) the short-term interest rate is constant

- ver the life of the option, and (3) the volatility of the price of the security is
constant over the life of the option.

These assumptions are unreasonable for an option on a fixed-income

security. First, the price of a fixed-income security cannot exceed the

undiscounted value of the cash flow. Any possibility that the price can go

higher than this value implies that interest rates can be negative. Second, the

price of an interest rate option will change as interest rates change. A change

in the short-term interest rate changes the rates along the yield curve.

Therefore, to assume that the short-term rate will be constant is inappropriate

for interest rate options. The third assumption (that the variance of prices is

constant over the life of the option) is inappropriate, because as a bond

moves closer to maturity, its price volatility declines.

Fortunately, it is possible to avoid the problem of negative interest rates.

We can develop a binomial option pricing model that is based on the

distribution of interest rates rather than on prices. Once a binomial interest

rate tree is constructed, it can be converted into a binomial price tree by

using its interest rates to determine the prices of the bond at the end of the

period. We can apply to these prices the same procedure described earlier to

calculate the option price by working backward from the value of the call

- ption at the expiration date.

Although the binomial option pricing model based on yields is superior to

models based on prices, it still has a theoretical drawback. All theoretically

valid option pricing models must satisfy the put–call parity relationship. The

problem with the binomial model based on yields is that it does not satisfy

this relationship. It violates the relationship, because it fails to take into

consideration the yield curve, thereby allowing arbitrage opportunities.

The most elaborate models that take the yield curve into consideration,

and as a result eliminate arbitrage opportunities, are called **yield curve**

**option pricing models** - r **arbitrage-free option pricing models** . These
models can incorporate different volatility assumptions along the yield
curve. They are theoretically superior to the other models we have
described. [4]

```
Key Points

```

   - The equilibrium or theoretical futures price can be determined
through arbitrage arguments.

   - The strategy that can be used to capture the arbitrage profit for an
   - verpriced futures contract is the cash and carry trade; the strategy that
can be used to capture the arbitrage profit for an underpriced futures
contract is the reverse cash and carry trade.

   - The theoretical futures price depends on the price of the underlying
asset in the cash market, the cost of financing a position in the
underlying asset, and the cash yield on the underlying asset.

   - The ability of market participants to implement cash and carry trades
and reverse cash and carry trades (or arbitrage strategies) results in the
theoretical futures price being equal to the cash market price plus the
cost of carry.

   - At the delivery date, the price of a futures contract converges to the
cash market price.

   - The cost of carry is the net financing cost, that is, the difference
between the financing rate and the cash yield on the underlying asset.

   - The theoretical futures price will be less than the cash market price if
the cost of carry is positive, equal to the cash market price if the cost of
carry is zero, and more than the cash market price if the cost of carry is
negative.

- Developing the theoretical futures price with arbitrage arguments
requires certain assumptions; if these assumptions are violated for a
specific futures contract, the theoretical futures price must be modified.

- The actual futures price will diverge from the theoretical futures price
because of interim cash flows, differences between lending and
borrowing rates, transaction costs, restrictions on short selling, and
uncertainty about the deliverable asset and the date it will be delivered.

- Because of the difference between borrowing and lending rates and
because of transaction costs, there is not one theoretical futures price
but instead a boundary around the theoretical futures price. So long as
the actual futures price remains within this boundary, arbitrage profits
cannot be realized.

- The price of an option consists of two components: the intrinsic value
and the time premium.

- The intrinsic value is the economic value of the option if it is
exercised immediately.

- If no positive economic value results from exercising immediately,
the intrinsic value of the option is zero.

- The time premium is the amount by which the option price exceeds
the intrinsic value.

- Six factors influence the option price: (1) the current price of the
underlying asset; (2) the strike price of the option; (3) the time
remaining to the expiration of the option; (4) the expected price
volatility of the underlying asset; (5) the short-term, risk-free interest
rate over the life of the option; and (6) the anticipated cash payments on
the underlying asset.

- The put–call parity relationship is the relationship between the price
- f a call option and the price of a put option on the same underlying
instrument, with the same strike price and the same expiration date.

- The theoretical price of an option can be determined on the basis of
arbitrage arguments; it is much more complicated to determine than the
theoretical price of a futures contract, because the option price depends

   - n the expected price volatility of the underlying asset over the life of
the option.

   - Several models have been developed to determine the theoretical
value of an option.

   - The value of an option is equal to the cost of creating a replicating
hedge portfolio.

   - The theoretical option price can be calculated with the binomial
   - ption pricing model, which also employs arbitrage arguments.
   - Application of the binomial model to the pricing of options on fixedincome securities poses problems because of the model's underlying
assumptions.

```
Questions

```

1. Models for pricing futures and options are said to be based on
arbitrage arguments.

a. What does arbitrage mean?

b. What is the investor's incentive to engage in arbitrage?

2. Suppose that financial Asset ABC is the underlying asset for a
futures contract with settlement six months from now. You know the

following about this financial asset and the futures contract:

(i) In the cash market, ABC is selling for \$80.

(ii) ABC pays \$8 per year in two semiannual payments of \$4, and the next

semiannual payment is due exactly six months from now.

(iii) The current six-month interest rate at which funds can be loaned or

borrowed is 6%.

a. What is the theoretical (or equilibrium) futures price?

b. What action would you take if the futures price is \$83?

c. What action would you take if the futures price is \$76?

d. Suppose that ABC pays interest quarterly instead of semiannually. If you

know that you can reinvest any funds you receive three months from now at

1% for three months, what would be the theoretical futures price for sixmonth settlement?

e. Suppose that the borrowing rate and lending rate are not equal. Instead,

suppose that the current six-month borrowing rate is 8% and the six-month

lending rate is 6%. What are the boundaries for the theoretical futures price?

3. a. Explain why restrictions on short selling of stocks would cause
the actual price of a stock index futures contract to diverge from its
theoretical price.

b. Explain why creating a portfolio of stocks in which the number of stocks

is less than the number of stocks in the index underlying a stock index

futures contract would result in an arbitrage that is not riskless.

4. Why do the delivery options in a Treasury bond futures contract
cause the actual futures price to diverge from its theoretical price?

5. "Of course, the futures are more expensive than the cash price—
there's positive carry." Do you agree with this statement? Explain your

answer.

6. Consider the following call option with three months to expiration:

Strike price = \$72,

Current price of underlying assets = \$87,

Market price of option = \$6.

a. What is the intrinsic value for this call option?

b. What is the time premium for this call option?

7. Suppose the option in the previous question is a put option rather
than a call option.

a. What is the intrinsic value for this put option?

b. What is the time premium for this put option?

8. You obtain the following price quotes for call options on Asset
ABC. It is now December, with the near contract maturing in one
month's time. Asset ABC's price is currently trading at \$50.

Strike Price ($) March Quote ($) January Quote ($) June Quote ($)

40 11 12 11.50

50 6 7 8.50

60 7 8 9.00

Glancing at the figures, you note that two of these quotes seem to violate

some of the rules you learned regarding options pricing.

a. What are these discrepancies?

b. How could you take advantage of the discrepancies? What is the

minimum profit you would realize by arbitraging based on these

discrepancies?

9. Explain why you agree or disagree with the following statements:

a. "To determine the theoretical value of an option, we will need some

measure of the price volatility of the underlying asset. Because financial

theorists tell us that the appropriate measure of risk is beta (that is,

systematic risk), then we should use this value."

b. "If the expected price volatility of an option increases, the theoretical

value of an option decreases."

c. "It does not make sense that the price of a call option should rise in value

if the price of the underlying asset falls."

10. Consider two options with the same expiration date and for the
same underlying asset. The two options differ only in the strike price.
Option 1's strike price is greater than that of Option 2.

a. If the two options are call options, which option will have a higher price?

b. If the two options are put options, which option will have a higher price?

11. Consider two options with the same strike price and for the same
underlying asset. The two options differ only with respect to the time to
expiration. Option A expires in three months, and Option B expires in
six months.

a. If the two options are call options, which option will have the higher

intrinsic value (assuming the options are in the money)?

b. If the two options are call options, which option will have a higher time

premium?

c. Would your answers to (a) and (b) be different if the option is a put rather

than a call?

12. In an option pricing model, what statistical measure is used as a
measure of the price volatility of the underlying asset?

13. For an asset that does not make cash distributions over the life of

an option, it does not pay to exercise a call option prior to the expiration

date. Why?

14. Consider two strategies:
**Strategy 1:** Purchase one unit of Asset M currently selling for \$103. A
distribution of \$10 is expected one year from now.

**Strategy 2:** (a) Purchase a call option on Asset M with an expiration date

- ne year from now and a strike price of \$100; and (b) place sufficient funds
in a 10% interest-bearing bank account to exercise the option at expiration
(\$100) and to pay the cash distribution that would be paid by Asset M (\$10).

a. What is the investment required under Strategy 2?

b. Give the payoffs of Strategy 1 and Strategy 2, assuming that the price of

Asset M one year from now is

(i) \$120,

(ii) \$103,

(iii) \$100,

(iv) \$80.

c. For the four prices of Asset M one year from now listed in part (b),

demonstrate that the following relationship holds: Call option price ≥ Max

[0, (Price of underlying asset − Present value of strike price − resent value of

cash distribution)].

15. What is meant by a hedge ratio in developing an option pricing
model?

16. a. Calculate the option value for a two-period European call option
with the following terms:
Current price of underlying asset = \$100,

Strike price = \$10,

One-period, risk-free rate = 5%.

The stock price can either go up or down by 10% at the end of one period.

b. Recalculate the value for the option when the stock price can move either

up or down by 50% at the end of one period. Compare your answer with the

calculated value in part (a).

17. What is the problem with applying the binomial pricing model to
the pricing of options on fixed-income securities?

18. Consider the first strategy (cash and carry trade), which had these elements: Technically, a short
seller may not be entitled to the full use of the proceeds resulting from the sale. We will discuss this
later in this section.

19. Fischer Black and Myron Scholes, "The Pricing of Corporate Liabilities," _Journal of Political_
_Economy_ 81 (1973): 637–659.

20. John C. Cox, Stephen A. Ross, and Mark Rubinstein, "Option Pricing: A Simplified Approach,"
_Journal of Financial Economics_ 7 (1979): 229–263; Richard J. Rendleman and Brit J. Bartter, "TwoState Option Pricing," _Journal of Finance_ 34 (1979): 1093–1110; William F. Sharpe, _Investments_
(Englewood Cliffs, NJ: Prentice Hall, 1981), chapter 16.

21. For a discussion of yield curve or arbitrage-free option pricing models, see Mark Pitts and Frank J.
Fabozzi, _Interest Rate Futures and Options_ (Chicago: Probus Publishing, 1989), chapter 9.

# **`36`**

```
Applications of Futures and Options Contracts

CONTENTS

```

**Learning Objectives**

**Applications of Futures Contracts**

Stock Index Futures

Speculating on the movement of the stock market

Controlling the risk of a stock portfolio

Hedging against adverse stock price movements

Constructing indexed portfolios

Index arbitrage

Creating portfolio insurance

Asset Allocation

Interest Rate Futures

Speculating on the movement of interest rates

Controlling the interest rate risk of a portfolio

Hedging against adverse interest rate movements

Enhancing returns when futures are mispriced

Asset Allocation

**Applications of Options Contracts**

Stock Options and Stock Index Options

Interest Rate Options

**Key Points**

**Questions**

**Appendix: General Principles of Hedging with Futures**

**Risks Associated with Hedging**

**Short Hedge and Long Hedge**

**Illustrations of Hedging**

Perfect Hedge

Basis Risk

Cross-Hedging

```
Learning Objectives

```

After reading this chapter, you will understand:

   - how participants use stock index futures to control a stock portfolio's
risk and other portfolio applications;

   - how investors in fixed-income securities employ interest rate futures
to control the interest rate risk of a portfolio and other portfolio
applications;

   - how and under what circumstances futures can be used to enhance

portfolio returns;

   - how futures can be used to alter the allocation of a portfolio between
equities and bonds;

   - the differences between hedging with futures and options;
   - how stock options and stock index options allow investors to protect
the values of their stock portfolios;

   - how interest rate options enable fixed-income investors to hedge
against adverse changes in interest rates;

   - what is meant by the "basis" and that the basis can change over time;
   - that hedging with futures eliminates price risk but exposes the
hedged position to basis risk;

   - what is meant by cross-hedging and the risks associated with crosshedging; and
   - the difference between the long or buy hedge and the short or sell
hedge, both in direct hedging and cross-hedging.

In chapters 33–35, we focused on the general properties of financial futures

and options contracts, the specific contracts available, and how they are

priced. Although we have alluded to various applications of these contracts,

particularly their use in hedging, we did not cite specific applications. In

this chapter, we provide an overview of how market participants can and do

employ derivative instruments. The appendix to this chapter explains the

general principles of hedging with futures contracts.

```
Applications of Futures Contracts

```

We begin with the various ways in which market participants can use stock

index futures and interest rate futures.

```
Stock Index Futures

```

Institutional investors can use stock index futures for seven distinct

investment strategies. We describe these strategies in the following text.

**`Speculating on the movement of the stock market`** Prior to the
development of stock index futures, an investor who wanted to speculate on
the future course of aggregate stock prices had to buy or short individual
stocks. Now, a stock index can be bought or sold in the futures market.
However, making speculation easier for investors is not the main function

- f stock index futures contracts. The other strategies discussed in the
following text show how institutional investors can use stock index futures
effectively to meet investment objectives.

**`Controlling the risk of a stock portfolio`** An institution that
wishes to alter its exposure to the market can do so by revising the
portfolio's beta. This can be done by rebalancing the portfolio with stocks
that will produce the target beta, but there are transaction costs associated
with rebalancing a portfolio. Because of the leverage embedded in futures,
institutions can use stock index futures to achieve a target beta at a
considerably lower transaction cost than is possible by rebalancing. Buying
stock index futures will increase a portfolio's beta, and selling futures will
reduce it.

**`Hedging against adverse stock price movements`** Hedging is a special
case of controlling a stock portfolio's exposure to adverse price changes. In
a hedge, the objective is to alter a current or anticipated stock portfolio
position so that its beta is zero. A portfolio with a beta of zero should
generate a risk-free interest rate. Such a return from a zero-beta portfolio is

consistent with the capital asset pricing model discussed in chapter 14 and

is also consistent with our discussion of the pricing of futures contracts in

chapter 35.

Remember that using stock index futures for hedging locks in a price,

and that the hedger cannot then benefit from a favorable movement in the

portfolio's value. (As we explain later, using stock index options has

downside protection but retains the upside potential reduced by the cost of

the option.)

Two examples of how investment banking firms can use stock index

futures to hedge their activities became known shortly after stock index

futures began trading. In June 1982, International Harvester traded its stock

portfolio to Goldman Sachs in exchange for a bond portfolio. [1] As recipient

- f the stock portfolio, Goldman Sachs was exposed to market risk. To
protect itself against a decline in the value of the stock portfolio, Goldman
Sachs placed a hedge on a "significant" portion of the stock portfolio, using
all three stock index futures trading at the time to implement the hedge.

The second example involves Salomon Brothers, which used stock index

futures to protect itself against a decline in stock prices in a transaction

involving \$400 million of stock. In that transaction, the New York City

Pension Fund switched \$400 million of funds that were being managed by

Alliance Capital to Bankers Trust so that the latter could manage the funds

with an indexing approach. Salomon Brothers guaranteed prices at which

the Pension Fund and Bankers Trust could purchase or sell the stocks in the

portfolio being transferred. To do this, Salomon Brothers used options on

individual stocks to protect against price changes in certain stocks, but it

also used stock index futures to protect itself against broad market

movements that would decrease the value of the stocks in the portfolio.

**`Constructing indexed portfolios`** As explained in chapter 23, an
increasing number of institutional equity funds are indexed to some broadbased stock market index. Creating a portfolio that replicates a targeted
stock index requires outlays for management fees and transaction costs. The
higher these costs are, the greater the divergence will be between the
performance of the indexed portfolio and the target index. To control costs,

many fund managers creating an indexed portfolio will not purchase all the

stocks that comprise the index but instead will purchase a group that "tracks

the targeted index" or moves in much the same way as the index. As a

result, the indexed portfolio produces **tracking error risk**, which is the

chance that its movements will not precisely follow those of the index. To

avoid the problems of using the cash market to construct an indexed

portfolio, the manager can use stock index futures.

However, note that index fund managers can use stock index futures to

create an index fund only if stock index futures contracts are fairly priced or

cheap. If the futures price is less than the theoretical futures price (that is,

the futures contracts are cheap), the index fund manager can enhance the

indexed portfolio's return by buying the futures and buying the Treasury

bills. That is, the return on the futures/Treasury bill portfolio will be greater

than that on the underlying index when the position is held to the settlement

date. In this case, the stock index futures contracts offer yet another

advantage to the manager.

**`Index arbitrage`** Opportunities to enhance returns as a result of the
mispricing of the futures contract are not restricted to index fund
management. Money managers and arbitrageurs monitor the cash and
futures market to see when the differences between the theoretical futures

price and actual futures price are sufficiently large to generate an arbitrage

profit. These investors respond to those opportunities by selling the futures

index if it is expensive and buying stocks, or buying the futures index if it is

cheap and selling the stocks. **Index arbitrage** plays an important role in

linking futures prices and cash prices. Program trading is used to execute

the buy and sell orders. [2]

**`Creating portfolio insurance`** As explained in chapter 35, a put option
can protect the value of an asset. At the expiration date of the put option,
the minimum value for the asset will be the strike price minus the cost of
the put option. Put options on stock indexes can do the same for a
diversified portfolio of stocks.

Alternatively, an institutional investor can create a put option

synthetically by using either (1) stock index futures or (2) stocks and a

riskless asset. Of course, as market conditions change, the portfolio

manager must change the allocation of the portfolio's funds to stock index

futures or between stocks and a riskless asset. [3] A strategy that seeks to

insure the value of a portfolio through the use of a synthetic put option

.

strategy is called **dynamic hedging**

Given that put options on stock indexes are available to portfolio

managers, why should they bother with dynamic hedging? There are four

reasons. First, the size of the market for options on stock indexes is not as

large as that for stock index futures and therefore may not easily

accommodate a large portfolio insurance program without moving the price

- f the option substantially. Second, exchanges impose limits on the number
- f contracts in which an investor can have a position. Institutions wishing to
protect large equity portfolios may find that position limits effectively
prevent them from using exchange-traded index options to protect their
portfolio. Third, existing exchange-traded index options contracts are of
shorter maturity than the period over which some investors seek protection.
Finally, the cost of a put option may be higher than the transaction costs
associated with dynamic hedging.

In one way, however, hedging with put options does offer an advantage.

Although the cost of a put option is known (and is determined by expected

price volatility), the cost of creating portfolio insurance by using stock

index futures or stocks will be determined by actual price volatility in the

market. The greater the market's price volatility is, the more rebalancing of

the portfolio will be necessary and the higher will be the cost of creating

portfolio insurance.

```
Asset Allocation

```

The decision on how to divide funds across the major asset classes (for

example, equities, bonds, foreign securities, real estate) is referred to as the

**asset allocation decision** . Futures and options can be used to implement an

asset allocation decision more effectively than transacting in the cash

markets would.

For example, suppose that a pension fund sponsor with assets of \$1

billion has allocated \$300 million to the bond market and \$700 million to

the stock market. Suppose further that the sponsor has decided to alter that

bond/stock mix to \$600 million in bonds and \$400 million in stock.

Liquidation of \$300 million in stock will involve significant transaction

costs—both commissions and execution (market impact) costs. [4] Moreover,

the external money managers who are managing the stock portfolios will

face disruption as funds are withdrawn by the sponsor. Rather than

liquidating the stock portfolio immediately, the sponsor can sell an

appropriate number of stock index futures contracts. This action effectively

decreases the exposure of the pension fund to the stock market. To increase

the fund's exposure to the bond market, the sponsor can buy interest rate

futures contracts.

```
Interest Rate Futures

```

Market participants can employ interest rate futures in various ways, which

we now discuss.

**`Speculating on the movement of interest rates`** The price of a
futures contract moves in the opposite direction from interest rates: When
rates rise (fall), the futures price will fall (rise). An investor who wants to
speculate that interest rates will rise (fall) can sell (buy) interest rate futures.
Before interest rate futures were available, investors who wanted to
speculate on interest rates did so with the long-term Treasury bond: shorting
it if they expected interest rates to rise, and buying it if they expected
interest rates to fall.

Three advantages result from using interest rate futures instead of the

cash market (trading long-term Treasuries themselves). First, the transaction

costs of using futures are lower than those in the corresponding cash

market. Second, margin requirements are lower for futures than for

Treasury securities; using futures thus permits greater leverage. Finally, it is

easier to take a short position in the futures market than to sell short in the

Treasuries market. As we remarked when discussing the use of stock index

futures to speculate on stock price movements: Making speculation easier

for investors is not the function of interest rate futures contracts.

**`Controlling the interest rate risk of a portfolio`** Stock index
futures can be used to change the market risk of a diversified stock
portfolio, that is, to alter the beta of a portfolio. Likewise, interest rate
futures can be used to alter the interest rate sensitivity of a portfolio. As
explained in chapter 11, duration is a measure of interest rate sensitivity.

Investment managers with strong expectations about the direction of the

future course of interest rates will adjust the durations of their portfolios so

as to capitalize on their expectations. Specifically, a manager expecting

rates to increase will reduce the interest rate sensitivity of a portfolio. A

manager expecting rates to decrease will raise the interest rate sensitivity of

the portfolio. Although investment managers can alter the interest rate

sensitivity of their portfolios with cash market instruments, a quick and

inexpensive means for doing so (on either a temporary or permanent basis)

is to use futures contracts.

**`Hedging against adverse interest rate movements`** Interest rate
futures can be used to hedge against adverse interest rate movements by
locking in either a price or an interest rate. Some examples of hedging with
interest rate futures will illustrate the basic concepts.

1. Suppose that a pension fund manager knows that bonds must be
liquidated in 40 days to make a \$5 million payment to the beneficiaries

   - f the pension fund. If interest rates rise in 40 days, more bonds will
have to be liquidated to realize proceeds of \$5 million. The pension
fund manager can hedge by selling in the futures market to lock in a
selling price.

2. A pension fund manager who is expecting substantial cash
contributions that must be invested but is concerned that interest rates

may fall can hedge against declining returns by buying interest rate

futures. Also, a money manager who knows that bonds are maturing in

the near future and who expects that interest rates will be lower at the

time of reinvestment can buy interest rate futures. In both cases,

interest rate futures are used to hedge against a fall in interest rates that

would cause cash flows to be reinvested at a lower interest rate.

3. A corporation planning to sell long-term bonds two months from
now can protect itself against a rise in interest rates by selling or taking
a short position in interest rate futures now.

4. A thrift or commercial bank can hedge its cost of funds by locking
in a rate using the Eurodollar futures contract.

5. A corporation that plans to sell commercial paper one month from
now can use Treasury bill futures or Eurodollar futures to lock in a
commercial paper rate.

6. Investment banking firms can use interest rate futures to protect
both the value of positions held by their trading desks and positions
assumed by the underwriting of new bond issues. An example of the
latter is a 1979 Salomon Brothers underwriting of \$1 billion of IBM
bonds. To protect itself against a rise in interest rates, which would
reduce the value of the IBM bonds, Salomon Brothers sold (shorted)
Treasury futures. In October 1979, interest rates rose when the Federal
Reserve Board announced that it was allowing interest rates more
flexibility to move. Although the value of the IBM bonds held by
Salomon Brothers declined in value, so did the Treasury bond futures
contracts. Because Salomon Brothers had sold these futures, it realized
a gain and thus reduced the loss on the IBM bonds it underwrote.

**`Enhancing returns when futures are mispriced`** In our earlier
discussion of stock index futures, we explained that institutional investors
look for mispricing of stock index futures to create arbitrage profits and
thereby enhance portfolio returns. We referred to this strategy as "index
arbitrage," because it involves a stock index. If interest rate futures are
mispriced (even after considering the pricing problems discussed in chapter
35), institutional investors can enhance returns in the same way that they do
in equities.

```
Asset Allocation

```

As noted earlier, interest rate futures and stock index futures are quick,

cheap, and effective ways to change the composition of a portfolio between

bonds and stocks.

```
Applications of Options Contracts

Stock Options and Stock Index Options

```

Stock options can be used to take advantage of the anticipated price

movement of individual stocks. Alternatively, they can help protect current

- r anticipated positions in individual stocks. For example, an investor can
protect against a decline in the price of a stock in her portfolio by buying a
put option on that stock. The put guarantees a minimum price equal to the
strike price minus the cost of buying the option. This strategy is called a
**protective put buying strategy** . Also, if an investor anticipates buying a
stock in the future but fears that the stock price will rise over that time, she
can buy a call option on the stock. This strategy guarantees that the
maximum price that will be paid in the future is the strike price plus the

- ption price.

Now consider an institutional investor that holds a portfolio consisting

- f a large number of stock issues. Using stock options to protect against an
adverse price movement in the portfolio's value, the institutional investor
would have to buy a put on every stock in the portfolio, which would be
quite costly. By taking an appropriate position in a suitable stock index

- ption, the institutional investor can create a protective put for the entire
diversified portfolio. For example, suppose that an institutional investor,
who holds a diversified portfolio of common stock that is highly correlated
with the S&P 100, is concerned that the stock market will decline in value

- ver the next three months. Suppose, too, that a three-month put option on
the S&P 100 is available. Because the put option buyer gains when the
price of the underlying stock index declines, purchasing a put option will

- ffset any adverse movements in the portfolio's value due to a decline in the
stock market. This protective put-buying strategy obviously offers a cheap,
effective, and flexible alternative to either buying puts on the various stocks

- r liquidating the entire portfolio and converting holdings into cash.

When stock options or stock index options are used to protect an

existing or anticipated position, the investor need not exercise the option if

the prices of the held stocks move in the direction that the investor wants.

This freedom not to exercise makes options more suited than futures to the

task of protecting a cash position. An institutional investor can obtain

downside protection using options at a cost equal to the option price, but

can also preserve upside potential (reduced by the option price).

```
Interest Rate Options

```

An institutional investor can use interest rate options or options on interest

rate futures to speculate on fixed-income security price movements based

- n expectations of interest rate changes. Because a call option increases in
price if interest rates decline, an investor can buy call options if he expects
interest rates to move in that direction. Alternatively, because the writer of a
put option will benefit if the price increases, an investor who expects
interest rates to fall can write put options. Purchasing put options and/or
selling call options would be appropriate for an investor who expects
interest rates to rise. Remember that, unlike interest rate futures, interest
rate options limit downside risk and permit upside potential that is reduced

- nly by the amount of the option price.

As noted, institutional investors can use interest rate options to hedge

against adverse interest rate movements but still let the investor benefit

from a favorable interest rate movement. It is important to recognize that

hedging in this way can basically set a floor or ceiling on an institution's

targeted interest rate. We will use the illustrations given earlier for interest

rate futures to explain how this works using options.

1. Suppose that a pension fund manager knows that bonds must be
liquidated in 40 days to make a \$5 million payment to the beneficiaries

   - f the pension fund. If interest rates rise in 40 days, more bonds will
have to be liquidated to realize \$5 million. The hedger will buy put

   - ptions (that is, follow a protective put buying strategy). If interest
rates rise, the value of the bonds to be sold will decline, but the put

   - ptions purchased will rise in value. For a transaction that is properly
structured, the gain on the put options will offset the loss on the bonds.
The cost of the safety bought by this strategy will then be the option
price paid. If, instead, interest rates decline, the value of the bonds will
rise. The pension fund manager will not exercise the put option. A gain
equal to the rise in the bond value minus the put option price will be
realized.

2. Suppose that a pension fund manager knows there will be
substantial cash contributions flowing into the fund and is concerned
that interest rates may fall. Or suppose that a money manager knows
that bonds are maturing in the near future and expects interest rates to
fall. In both cases, proceeds will be reinvested at a lower interest rate.
Call options can be purchased in this situation. If interest rates fall, the
call options will increase in value, offsetting the loss in interest income
that will result when the proceeds must be invested at a lower interest
rate. The cost of this hedge strategy is the call option price. If interest
rates rise instead, the proceeds can be invested at a higher rate. The
benefit of the higher rate will be reduced by the cost of the call option,
which expires worthless.

3. A corporation plans to issue long-term bonds two months from
now. To protect itself against a rise in interest rates, the corporation can
buy put options. If interest rates rise, the interest cost of the bonds
issued two months from now will be higher, but the put option will
have increased in value. Buying an appropriate number of put options
yields a gain on the put options sufficient to offset the higher interest
cost of the bond issue. Again, the cost of this strategy is the price of
the put options. If interest rates decline instead, the corporation will
benefit from a lower interest cost when the bonds are issued, a benefit
that is reduced by the cost of the put options.

4. A thrift or commercial bank wants to make sure that the cost of its

funds will not exceed a certain level. This can be done by buying put

   - ptions on Eurodollar futures.

5. A corporation plans to sell commercial paper one month from now.
Buying put options on Treasury bill futures or Eurodollar futures lets
the corporation set a ceiling on the interest cost of its commercial

paper.

```
Key Points

```

- Investors can use stock index futures to speculate on stock prices, control
a portfolio's price risk exposure, hedge against adverse stock price

movements, construct indexed portfolios, engage in index arbitrage, and

create a synthetic put option.

   - Market participants can employ interest rate futures to speculate on
interest rate movements, control a portfolio's risk exposure to interest
rate changes, hedge against adverse interest rate movements, and
enhance returns when futures are mispriced.

   - Because futures are highly leveraged and transaction costs are less
than in the cash market, market participants can alter their risk
exposure to a market (stock or bond) more efficiently in the futures
market.

   - Buying a futures contract increases a market participant's exposure
to a market; selling a futures contract decreases a market participant's
exposure to a market.

   - A money manager can use both stock index futures and interest rate
futures to more efficiently allocate funds between the stock market and
the bond market.

   - Market participants can obtain downside protection using options at
a cost equal to the option price and also preserve upside potential
(reduced by the option price).

   - A protective put buying strategy can be used to reduce the risk
exposure of a stock portfolio to a decline in stock prices, guaranteeing
a minimum price equal to the strike price minus the cost of buying the
put option.

   - The purchase of a call option can be used to guarantee that the
maximum price that will be paid in the future is the strike price plus
the option price.

   - By taking an appropriate position in a suitable stock index option, an
institutional investor can create a protective put for a diversified
portfolio.

   - Interest rate options or options on interest rate futures can be used by
investors and issuers to hedge against adverse interest rate movements
but still benefit from a favorable interest rate movement.

   - When contracts are mispriced, a market participant can capitalize on
this opportunity by enhancing returns (in the case of an investor) or
reducing the cost of issuing an obligation (in the case of an issuer of
securities).

```
Questions

```

1. a. If a stock portfolio's indicator of volatility is its beta, explain
how stock index futures can be used to change the portfolio's
volatility.

b. Suppose an institutional investor wants to increase the beta of a portfolio

- f stocks. Should this investor buy or sell S&P 500 futures contracts?

2. a. What is the difference between an index arbitrage strategy and
an indexing strategy?

b. Why would a portfolio manager find it advantageous to use stock index

futures in an indexing strategy?

3. Suppose a corporation plans to issue bonds three months from now
and wants to protect against a rise in interest rates. Should the
corporation buy or sell interest rate futures contracts?

4. a. What is meant by a "synthetic put option"?

b. What is meant by "dynamic hedging"?

5. Assume that you own an asset and there are both futures contracts
and options contracts on that asset. Provide a clear account of the
difference between hedging against a price decline with futures and
hedging with options. Direct your analysis to the potential gains from

   - ptions and the nature of losses from a futures position.

6. a. What is the basis of a futures contract?

b. Explain why hedging with futures contracts substitutes basis risk for

price risk.

7. Under what conditions would a perfect hedge occur?
8. a. Why is a short futures hedge called a "sell hedge"?

b. Why is a long futures hedge called a "buy hedge"?

9. In a publication by the Commodity Futures Trading Commission,
the following statement appears:

Many people think that futures markets are just about speculating or "gambling." While it is true that

futures markets can be used for speculating, that is not the primary reason for their existence. Futures

markets are actually designed as vehicles for hedging and risk management, that is, to help people

avoid "gambling" when they don't want to. [5]

Explain how futures markets help investors manage risk.

10. The following two quotations are from an article in the _Wall Street_
_Journal_ :

Brokerage firms in the business, which tiptoed back into program trading after the post-crash furor

died down, argue that such strategies as stock-index arbitrage—rapid trading between stock index

futures and stocks to capture fleeting price differences—link two related markets and thus benefit

both.

The second quotation in the article is from a senior vice president at

Twenty-First Securities Corp:

Program trading is a product that is here, links markets, and it is not going to disappear. It is a

function of the computerization of Wall Street. [6]

Do you agree with these statements?

11. This quotation is from _Business Week_ :

The idea sounds almost un-American. Instead of using your smarts to pick stocks that will reach the

sky, you put money in a fund that merely tracks a broad market index. But that is precisely what

institutional investors are doing.… Indexing is a new force in the stock market.… But the impact of

index-funds reaches far beyond stock prices. [7]

Discuss how indexing may have contributed to the growth of the stock

index derivatives markets.

12. This quotation appeared in the December 1988 issue of

:

_Euromoney_

The proliferation of futures and options markets has created new opportunities for international

investors. It is now possible to change investment exposure from one country to another through the

use of derivative instruments, augmented by a limited number of individual securities. Asset

allocation in most major markets is now feasible using futures and options. [8]

Discuss the quotation and the reasons for using derivatives rather than cash

instruments to facilitate asset allocation decisions.

13. What are the risks associated with cross-hedging?
14. Donald Singleton is an investment banker for a regional firm. One

   - f his clients, Dolby Manufacturing Inc., is a private company that will

be making an initial public offering of 20 million shares of common

stock. Mr. Singleton's firm will buy the issue at \$10 per share. He has

suggested to the managing director of the firm, John Wilson, that the

firm should hedge the position using stock index futures contracts.

What should Mr. Wilson's response be?

15. a. Explain why you agree or disagree with the following
statement by Gary Gastineau:

Stock index futures and options were introduced in the early 1980s. Their introduction was partly a

response to institutional portfolio managers' preference for trading portfolios rather than individual

stocks and partly a way of reducing transaction costs in the implementation of asset-allocation and

market-timing decisions.

b. In the same article, Gary Gastineau made the following statement:

Long positions in stock index futures combined with short-term fixed income securities are an almost

perfect substitute for a stock index portfolio. Conversely, selling futures contracts against a portfolio

- f stocks is a low-cost way to reduce market exposure. [9]

Explain the conditions that must hold for this statement to be true.

16. An associate who is not an expert in financial futures has been
reviewing a publication describing the three-year and 10-year Moscow
City bonds published by the Russian Trading System Stock Exchange.
In the publication, the following appears:

Futures on the 3Y and 10Y Moscow City bonds are standard long-term contracts. The underlying

asset—the basket of bonds issued by the Government of Moscow—is the benchmark Russian fixedincome market instrument. Futures on the bond basket allow investors to hedge not only risks

associated with Moscow City bonds but also risks related to bonds issued by other entities.

The publication goes on to say:

Futures on the 3Y and 10Y Moscow City bonds provide fixed-income traders with the following

additional advantages:

- portfolio risk management
- short-selling abilities
- bond margin trading abilities
- the ability to create synthetic "short-term" bonds
- portfolio duration management abilities
- reduction in transaction costs
- using the spreads between the short-term and long-term interest rates without using the underlying

assets

- using the spreads between the hard currency-denominated and ruble-denominated interest rates
without using the underlying assets

- arbitrage possibilities.

Your associate has asked you to explain the following advantages from

using these contracts:

a. Hedging "not only risks associated with Moscow City bonds but also

risks related to bonds issued by other entities."

b. "Short-selling abilities."

c. "Portfolio duration management abilities"

d. "Reduction in transaction costs."

e. "Using the spreads between the short-term and long-term interest rates

without using the underlying assets."

```
Appendix: General Principles of Hedging with Futures

```

The major function of futures markets is to transfer price risk from

hedgers to speculators. That is, risk is transferred from those willing to

pay to avoid risk to those wanting to assume the risk in the hope of gain.

**Hedging** in this case is the employment of a futures transaction as a

temporary substitute for a transaction to be made in the cash market. The

hedge position locks in a value for the cash position. As long as cash and

futures prices move together, any loss realized on one position (whether

cash or futures) will be offset by a profit on the other position. When the

profit and loss are equal, the hedge is called a **perfect hedge** . In a market

where the futures contract is correctly priced, a perfect hedge should

provide a return equal to the risk-free rate.

```
Risks Associated with Hedging

```

In practice, hedging is not that simple. The amount of the loss or profit on a

hedge will be determined by the relationship between the cash price and the

futures price when a hedge is placed and when it is lifted. The difference

between the cash price and the futures price is called the **basis** . That is,

Basis = Cash price − Futures price.

As we explained earlier, if a futures contract is priced according to its

theoretical value, the difference between the cash price and the futures price

should be equal to the cost of carry. The risk that the hedger takes is that the

basis will change, which is called **basis risk** . Therefore, hedging involves

the substitution of basis risk for price risk, that is, the substitution of the risk

that the basis will change for the risk that the cash price will change.

When a futures contract is used to hedge a position where either the

portfolio or the individual financial instrument is not identical to the

instrument underlying the futures, it is called **cross-hedging** . Cross-hedging

is common in asset/liability and portfolio management, because no futures

contracts are typically available on specific common stock shares and

bonds. Cross-hedging introduces another risk—the risk that the price

movement of the underlying instrument of the futures contract may not

accurately track the price movement of the portfolio or financial instrument

to be hedged. This risk is called **cross-hedging risk** . Therefore, the

effectiveness of a cross-hedge will be determined by:

1. The relationship between the cash price of the underlying instrument
and its futures price when a hedge is placed and when it is lifted.

2. The relationship between the market (cash) value of the portfolio and
the cash price of the instrument underlying the futures contract when the
hedge is placed and when it is lifted.

```
Short Hedge and Long Hedge

```

A **short hedge** is used to protect against a decline in the future cash price of

a financial instrument or portfolio. To execute a short hedge, the hedger

sells a futures contract (agrees to make delivery). Consequently, a short

hedge is also known as a **sell hedge** . By establishing a short hedge, the

hedger has fixed the future cash price and transferred the price risk of

- wnership to the buyer of the futures contract.

A **long hedge** is undertaken to protect against an increase in the price of

a financial instrument or portfolio to be purchased in the cash market at

some future time. In a long hedge, the hedger buys a futures contract

.

(agrees to accept delivery). A long hedge is also known as a **buy hedge**

```
Illustrations of Hedging

```

Although our focus in this chapter is on financial derivatives, to illustrate

hedging, we present several numerical examples from the traditional

commodities markets. It is better to start with traditional commodities,

because they are simpler than most financial futures contracts. The

principles illustrated are equally applicable to financial futures contracts,

but it is easier to grasp the sense of the commodities product example

without getting into the nuances of financial contracts.

Assume that a mining company expects to sell 1,000 ounces of

palladium one week from now and that the management of a manufacturing

company plans to purchase 1,000 ounces of palladium one week from now.

The managers of both the mining company and the manufacturing company

want to lock in a price—that is, they both want to eliminate the price risk

associated with palladium one week from now. The cash price for

palladium is currently \$352.40 per ounce. The cash price is also called the

**spot price** . The futures price for palladium is currently \$397.80 per ounce.

Each futures contract is for 100 (troy) ounces of palladium.

Because the mining company seeks protection against a decline in the

price of palladium, the company will place a short hedge. That is, the

mining company will promise to make delivery of palladium at the current

futures price. The mining company will sell 10 futures contracts.

The management of the manufacturing company seeks protection

against an increase in the price of palladium. Consequently, it will place a

long hedge. That is, it will agree to accept delivery of palladium at the

futures price. Because it is seeking protection against a price increase for

1,000 ounces of palladium, it will buy 10 contracts.

Let's look at what happens under various scenarios for the cash price

and futures price of palladium one week from now when the hedge is lifted.

```
Perfect Hedge

```

Suppose that at the time the hedge is lifted, the cash price has declined to

\$304.20 and the futures price has declined to \$349.60. Notice what has

happened to the basis under this scenario. At the time the hedge is placed,

the basis is −$45.40 ($352.40 − \$397.80). When the hedge is lifted, the

basis is still −$45.40 ($304.20 − \$349.60).

The mining company wanted to lock in a price of \$352.40 per ounce of

palladium, or \$352,400 for 1,000 ounces. The company sold 10 futures

contracts at a price of \$397.80 per ounce, or \$397,800 for 1,000 ounces.

When the hedge is lifted, the value of 1,000 ounces of palladium is

$304,200 ($304.20 × 1,000). The palladium mining company realizes a

decline in the cash market in the value of its palladium of \$48,200.

However, the futures price has declined to \$349.60, or \$349,600 for 1,000

- unces. The mining company thus realizes a \$48,200 gain in the futures
market. The net result is that the gain in the futures market matches the loss
in the cash market. Consequently, the mining company does not realize an

- verall gain or loss. This example of a perfect hedge is summarized in table

A36.1.

```
Table A36.1
```

A hedge that locks in the current price of palladium: Cash price decreases.

**Assumptions:**
Cash price at time hedge is placed: \$352.40 per oz
Futures price at time hedge is placed: \$397.80 per oz
Cash price at time hedge is lifted: \$304.20 per oz
Futures price at time hedge is lifted: \$349.60 per oz
Number of ounces to be hedged: 1,000
Number of ounces per futures contract: 100
Number of futures contracts used in hedge: 10

Cash Market Futures Market Basis

_**Short (Sell) Hedge by Mining Company At time hedge is placed:**_

Value of 1,000 oz: Sell 10 contracts: - \$45.40 per oz

1,000 × $352.40 = $352,400 10 × 100 × $397.80 = $397,800

_**At time hedge is lifted:**_

Value of 1,000 oz: Buy 10 contracts: - \$45.40 per oz

1,000 × $304.20 = $304,200 10 × 100 × $349.60 = $349,600

Loss in cash market = \$48,200 Gain in futures market = \$48,200

Overall gain or loss = \$0

_**Long (Buy) Hedge by Manufacturing Company At time hedge is placed:**_

Value of 1,000 oz: Buy 10 contracts: - \$45.40 per oz

1,000 × $352.40 = $352,400 10 × 100 × $397.80 = $397,800

_**At time hedge is lifted:**_

Value of 1,000 oz: Sell 10 contracts: - \$45.40 per oz

1,000 × $304.20 = $304,200 10 × 100 × $349.60 = $349,600

Gain in cash market = \$48,200 Loss in futures market = \$48,200

Overall gain or loss = \$0

The outcome for the manufacturing company of its long hedge is also

summarized in table A36.1. Because of the decline in the cash price, the

manufacturing company realizes a gain in the cash market equal to \$48,200

but realizes a loss of the same amount in the futures market. Therefore the

long hedge is also a perfect hedge.

This scenario illustrates two important points. First, both participants

incur no overall gain or loss, because the basis did not change when the

hedge was lifted. Consequently, if the basis does not change, the effective

purchase or sale price ends up being the cash price on the day the hedge is

set. Second, note that the management of the manufacturing company

would have been better off had it not hedged. The cost of the palladium

would have been \$48,200 less. This result, however, should not be

interpreted as a sign of a bad decision. Managers are usually not in the

business of speculating on the price of palladium, and hedging is the

standard practice used to protect against an increase in the cost of doing

business in the future. The "price" of obtaining this protection is the

potential windfall that one gives up.

Suppose that when the hedge is lifted, the cash price of palladium has

increased to \$392.50 and the futures price has increased to \$437.90. Notice

that the basis is unchanged at −\$45.40. Because the basis is unchanged, the

effective purchase and sale price will equal the price of palladium at the

time the hedge is placed. The mining company will gain in the cash market,

because the value of 1,000 ounces of palladium is $392,500 ($392.50 ×

1,000) and represents a \$40,100 gain compared to the cash value at the time

the hedge was placed. However, the mining company must liquidate its

position in the futures market by buying 10 futures contracts at a total price

- f \$437,900, which is \$40,100 more than the price when the contracts were
sold. The loss in the futures market offsets the gain in the cash market. The
table A36.2.
results of this hedge are summarized in

```
Table A36.2
```

A hedge that locks in the current price of palladium: Cash price increases.

**Assumptions:**
Cash price at time hedge is placed: \$352.40 per oz
Futures price at time hedge is placed: \$397.80 per oz
Cash price at time hedge is lifted: \$392.50 per oz
Futures price at time hedge is lifted: \$437.90 per oz
Number of ounces to be hedged: 1,000
Number of ounces per futures contract: 100
Number of futures contracts used in hedge: 10

Cash Market Futures Market Basis

_**Short (Sell) Hedge by Mining Company At time hedge is placed:**_

Value of 1,000 oz: Sell 10 contracts: - \$45.40 per oz

1,000 × $352.40 = $352,400 10 × 100 × $397.80 = $397,800

_**At time hedge is lifted:**_

Value of 1,000 oz: Buy 10 contracts: - \$45.40 per oz

1,000 × $392.50 = $392,500 10 × 100 × $437.90 = $437,900

Gain in cash market = \$40,100 Loss in futures market = \$40,100

Overall gain or loss = \$0

_**Long (Buy) Hedge by Manufacturing Company At time hedge is placed:**_

Value of 1,000 oz: Buy 10 contracts: - \$45.40 per oz

1,000 × $352.40 = $352,400 10 × 100 × $397.80 = $397,800

_**At time hedge is lifted:**_

Value of 1,000 oz: Sell 10 contracts: - \$45.40 per oz

1,000 × $392.50 = $392,500 10 × 100 × $437.90 = $437,900

Loss in cash market = \$40,100 Gain in futures market = \$40,100

Overall gain or loss = \$0

The manufacturing company realizes a \$40,100 gain in the futures

market but will have to pay \$40,100 more in the cash market to acquire

1,000 ounces of palladium. The results of this hedge are also summarized in

table A36.2.

Notice that in this scenario, the management of the manufacturing

company saved \$40,100 by employing a hedge. In contrast, the mining

company would have been better off had it not hedged and simply sold its

product on the market one week later. However, it must be emphasized that

the management of the mining company, just like the management of the

manufacturing company, employed a hedge to protect against unforeseen

adverse price changes in the cash market, and the price of this protection is

that one forgoes the favorable price changes enjoyed by those who do not

hedge.

```
Basis Risk

```

In the two previous scenarios, we assumed that the basis does not change.

In the real world, however, the basis frequently changes between the time a

hedge is placed and the time it is lifted.

Assume that the cash price of palladium decreases to \$304.20, just as in

the first scenario; however, assume further that the futures price decreases

to \$385.80 rather than \$349.60. The basis has now declined from −\$45.40

to −$81.60 ($304.20 − \$385.80). The results are summarized in table

A36.3. For the short hedge, the \$48,200 loss in the cash market is only

partially offset by the \$12,000 gain realized in the futures market.

Consequently, the hedge resulted in an overall loss of \$36,200.

Several points are pertinent here. First, if the mining company did not

hedge, the loss would have been \$48,200, because the value of its 1,000

- unces of palladium is \$304,200 compared to the value \$352,400 just one
week earlier. Although the hedge is not perfect, the loss of \$36,200 is less
than the loss of \$48,200 that would have occurred without the hedge, which
is what we meant earlier by stating that hedging substitutes basis risk for
price risk. Second, the management of the manufacturing company faces
the same problem from the opposite perspective. An unexpected gain for

- ne participant results in an unexpected loss of equal dollar value for the
- ther. That is, the participants face a zero-sum game, because they hold
identically opposite cash and futures positions. Consequently, the
manufacturing company would realize an overall gain of \$36,200 from its
long (buy) hedge. This gain represents a gain in the cash market of \$48,200
and a realized loss in the futures market of \$12,000.

```
Table A36.3
```

Hedge: Cash price decreases and basis widens.

**Assumptions**
Cash price at time hedge is placed: \$352.40 per oz
Futures price at time hedge is placed: \$397.80 per oz
Cash price at time hedge is lifted: \$304.20 per oz
Futures price at time hedge is lifted: \$385.80 per oz
Number of ounces to be hedged: 1,000
Number of ounces per futures contract: 100
Number of futures contracts used in hedge: 10

Cash Market Futures Market Basis

_**Short (Sell) Hedge by Mining Company At time hedge is placed:**_

Value of 1,000 oz: Sell 10 contracts: - \$45.40 per oz

1,000 × $352.40 = $352,400 10 × 100 × $397.80 = $397,800

_**At time hedge is lifted:**_

Value of 1,000 oz: Buy 10 contracts: - \$81.60 per oz

1,000 × $304.20 = $304,200 10 × 100 × $385.80 = $385,800

Loss in cash market = \$48,200 Gain in futures market = \$12,000

Overall loss = \$36,200

_**Long (Buy) Hedge by Manufacturing Company At time hedge is placed:**_

Value of 1,000 oz: Buy 10 contracts: - \$45.40 per oz

1,000 × $352.40 = $352,400 10 × 100 × $397.80 = $397,800

_**At time hedge is lifted:**_

Value of 1,000 oz: Sell 10 contracts: - \$81.60 per oz

1,000 × $304.20 = $304,200 10 × 100 × $385.80 = $385,800

Gain in cash market = \$48,200 Loss in futures market = \$12,000

Overall gain \$36,200

Suppose that the cash price increases to \$392.50 per ounce, just as in the

second scenario, but that the basis widens to −\$81.60. That is, at the time

the hedge is lifted, the futures price has increased to \$474.10. The results of

table A36.4.

this hedge are summarized in

As a result of the long hedge, the manufacturing company realizes a gain

- f \$76,300 in the futures market but only a \$40,100 loss in the cash market,
for an overall gain of \$36,200. For the mining company, the overall loss is
\$36,200.

In the two previous scenarios, it was assumed that the basis widened. It

can be demonstrated that if the basis narrowed, the outcome will not be a

perfect hedge.

```
Table A36.4
```

Hedge: Cash price increases and basis widens.

Assumptions:

Cash price at time hedge is placed: \$352.40 per oz

Futures price at time hedge is placed: \$397.80 per oz

Cash price at time hedge is lifted: \$392.50 per oz

Futures price at time hedge is lifted: \$474.10 per oz

Number of ounces to be hedged: 1,000

Number of ounces per futures contract: 100

Number of futures contracts used in hedge: 10

Cash Market Futures Market Basis

_**Short (Sell) Hedge by Mining Company At time hedge is placed:**_

Value of 1,000 oz: Sell 10 contracts: - \$45.40 per oz

1,000 × $352.40 = $352,400 10 × 100 × $397.80 = $397,800

_**At time hedge is lifted:**_

Value of 1,000 oz: Buy 10 contracts: - \$81.60 per oz

1,000 × $392.50 = $392,500 10 × 100 × $474.10 = $474,100

Gain in cash market = \$40,100 Loss in futures market = \$76,300

Overall loss = \$36,200

_**Long (Buy) Hedge by Manufacturing Company At time hedge is placed:**_

Value of 1,000 oz: Buy 10 contracts: - \$45.40 per oz

1,000 × $352.40 = $352,400 10 × 100 × $397.80 = $397,800

_**At time hedge is lifted:**_

Value of 1,000 oz: Sell 10 contracts: - \$81.60 per oz

1,000 × $392.50 = $392,500 10 × 100 × $474.10 = $474,100

Loss in cash market = \$40,100 Gain in futures market = \$76,300

Overall gain = \$36,200

```
Cross-Hedging

```

Suppose that a mining company on a faraway planet plans to sell 2,500

- unces of kryptonite one week from now, and that a manufacturing
company plans to purchase the same amount of kryptonite in one week.
Both parties want to hedge against price risk. [10] However, kryptonite futures
contracts are not currently traded. Both parties believe a close relationship
exists between the price of kryptonite and the price of palladium.
Specifically, both parties believe that the cash price of kryptonite will
remain at 40% of the cash price of palladium. The cash price of kryptonite
is currently \$140.96 per ounce, and the cash price of palladium is currently
\$352.40 per ounce. The futures price of palladium is currently \$397.80 per

- once.

We shall examine various scenarios to see how effective the cross-hedge

will be. In each scenario, the palladium basis is held constant at −\$45.40.

We make this assumption so that we can focus on the importance of the

relationship between the two cash prices at the two points in time.

Before proceeding, we must first determine how many palladium futures

contracts should be used in the cross-hedge. The value of 2,500 ounces of

kryptonite at the cash price of \$140.96 per ounce is \$352,400. To protect the

value of the kryptonite using palladium futures, the cash value of 1,000

- unces of palladium ($352,400/$352.40) must be hedged. Because each
palladium futures contract covers 100 ounces, 10 palladium futures
contracts will be used.

Suppose that the cash prices of kryptonite and palladium decrease to

\$121.68 and \$304.20 per ounce, respectively, and that the futures price of

palladium decreases to \$349.60 per ounce. The relationship between the

cash price of kryptonite and the cash price of palladium when the crosshedge was placed holds when the cross-hedge is lifted. That is, the cash

price of kryptonite is 40% of the cash price of palladium. The palladium

basis stays constant at −\$45.40. The outcome for the short and long crosstable A36.5.

hedge is summarized in

```
Table A36.5
```

Cross-hedge: Cash price of kryptonite to be hedged and price of futures used decreased by same percentage.

Assumptions:

_Price of kryptonite:_

Cash price at time hedge is placed: \$140.96 per oz

Cash price at time hedge is lifted: \$121.68 per oz

_Price of palladium:_

Cash price at time hedge is placed: \$352.40 per oz

Futures price at time hedge is placed: \$397.80 per oz

Cash price at time hedge is lifted: \$304.20 per oz

Futures price at time hedge is lifted: \$349.60 per oz

Number of ounces of kryptonite to be hedged: 2,500

Number of ounces of palladium to be hedged, assuming ratio of cash price of kryptonite to palladium is 0.4:

1,000

Number of ounces per futures contract for palladium: 100

Number of palladium futures contracts used in hedge: 10

Cash Market Futures Market Palladium Basis

_**Short (Sell) Cross-Hedge by Kryptonite Mining Company**_

Value of 2,500 oz: Sell 10 contracts: - \$45.40 per oz

2,500 × $140.96 = $352,400 10 × 100 × $397.80 = $397,800

_**At time hedge is lifted:**_

Value of 2,500 oz: Buy 10 contracts: - \$45.40 per oz

2,500 × $121.68 = $304,200 10 × 100 × $349.60 = $349,600

Loss in cash market = \$48,200 Gain in futures market = \$48,200

Overall gain or loss = \$0

_**Long (Buy) Cross-Hedge by Manufacturing Company At time hedge is placed:**_

Value of 2,500 oz: Buy 10 contracts: - \$45.40 per oz

2,500 × $140.96 = $352,400 10 × 100 × $397.80 = $397,800

_**At time hedge is lifted:**_

Value of 2,500 oz: Sell 10 contracts: - \$45.40 per oz

2,500 × $121.68 = $304,200 10 × 100 × $349.60 = $349,600

Gain in cash market = \$48,200 Loss in futures market = \$48,200

Overall gain or loss = \$0

The short cross-hedge produces a gain of \$48,200 in the futures market

and an exactly offsetting loss in the cash market. The opposite occurs for

the long cross-hedge. Neither an overall gain nor a loss from the crosshedge accrues for either hedger in this scenario. The same would occur if

the cash prices of both commodities increase by the same percentage and

the basis does not change.

Suppose that the cash price of both commodities decreases, but the cash

price of kryptonite falls by a greater percentage than that of palladium. For

example, suppose that the cash price of kryptonite falls to \$112.00 per

- once, and the cash price of palladium falls to \$304.20 per ounce. The
futures price of palladium falls to \$349.60, so that the basis is not changed.
The cash price of kryptonite at the time the cross-hedge is lifted is 37% of
the cash price of palladium, rather than the 40% when the cross-hedge was
constructed. The outcomes for the long and short cross-hedge are shown in
table A36.6.

```
Table A36.6
```

Cross-hedge: Cash price of kryptonite to be hedged falls by a greater percentage than the futures used for the

hedge.

```
Assumptions:
```

_Price of kryptonite_

Cash price at time hedge is placed: \$140.96 per oz

Cash price at time hedge is lifted: \$112.00 per oz

_Price of palladium_

Cash price at time hedge is placed: \$352.40 per oz

Futures price at time hedge is placed: \$397.80 per oz

Cash price at time hedge is lifted: \$304.20 per oz

Futures price at time hedge is lifted: \$349.60 per oz

Number of ounces of kryptonite to be hedged: 2,500

Number of ounces of palladium to be hedged, assuming ratio of cash price of kryptonite to palladium is 0.4:

1,000

Number of ounces per futures contract for palladium: 100

Number of palladium futures contracts used in hedge: 10

Cash Market Futures Market Basis

_**Short (Sell) Cross-Hedge by Kryptonite Mining Company At time hedge is placed:**_

Value of 2,500 oz: Sell 10 contracts: - \$45.40 per oz

2,500 × $140.96 = $352,400 10 × 100 × $397.80 = $397,800

_**At time hedge is lifted:**_

Value of 2,500 oz: Buy 10 contracts: - \$45.40 per oz

2,500 × $112.00 = $280,000 10 × 100 × $349.60 = $349,600

Loss in cash market = \$72,400 Gain in futures market = \$48,200

Overall loss = \$24,200

_**Long (Buy) Cross-Hedge by Manufacturing Company At time hedge is placed:**_

Value of 2,500 oz: Buy 10 contracts: - \$45.40 per oz

2,500 × $140.96 = $352,400 10 × 100 × $397.80 = $397,800

_**At time hedge is lifted:**_

Value of 2,500 oz: Sell 10 contracts: - \$45.40 per oz

2,500 × $112.00 = $280,000 10 × 100 × $349.60 = $349,600

Gain in cash market = \$72,400 Loss in futures market = \$48,200

Overall gain = \$24,200

For the short cross-hedge, the loss in the cash market exceeds the

realized gain in the futures market by \$24,200. For the long cross-hedge,

the opposite is true. An overall gain of \$24,200 results from the crosshedge.

If the cash price of kryptonite had fallen by a smaller percentage amount

than the cash price of palladium, the short cross-hedge would have

produced an overall gain, whereas the long cross-hedge would have

generated an overall loss.

Suppose that the cash price of kryptonite falls to \$121.68 per ounce,

whereas the cash price and futures price of palladium rise to \$392.50 and

\$437.90, respectively. The results of the cross-hedge are shown in table

A36.7.

```
Table A36.7
```

Cross-hedge: Cash price of kryptonite to be hedged falls and the price of futures used for the hedge rises.

```
Assumptions:
```

_Price of kryptonite_

Cash price at time hedge is placed: \$140.68 per oz

Cash price at time hedge is lifted: \$121.68 per oz

_Price of palladium_

Cash price at time hedge is placed: \$352.40 per oz

Futures price at time hedge is placed: \$397.80 per oz

Cash price at time hedge is lifted: \$392.50 per oz

Futures price at time hedge is lifted: \$437.90 per oz

Number of ounces of kryptonite to be hedged: 2,500

Number of ounces of palladium to be hedged, assuming ratio of cash price of kryptonite to palladium is 0.4:

1,000

Number of ounces per futures contract for palladium: 100

Number of palladium futures contracts used in hedge: 10

Cash Market Futures Market Palladium Basis

_**Short (Sell) Cross-Hedge by Kryptonite Mining Company At time hedge is placed:**_

Value of 2,500 oz: Sell 10 contracts:

2,500 × $140.96 = $352,400 10 × 100 × $397.80 = $397,800 - \$45.40 per oz

_**At time hedge is lifted:**_

Value of 2,500 oz: Buy 10 contracts:

2,500 × $121.68 = $304,200 10 × 100 × $437.90 = $437,900 - 45.40 per oz

Loss in cash market = \$48,200 Loss in futures market = \$40,100

Overall loss = \$88,300

_**Long (Buy) Cross-Hedge by Manufacturing Company At time hedge is placed:**_

Value of 2,500 oz: Buy 10 contracts:

2,500 × $140.96 = $352,400 10 × 100 × $397.80 = $397,800 - \$45.40 per oz

_**At time hedge is lifted:**_

Value of 2,500 oz: Sell 10 contracts:

2,500 × $121.68 = $304,200 10 × 100 × $437.90 = $437,900 - \$45.40 per oz

Gain in cash market = \$48,200 Gain in futures market = \$40,100

Overall gain = \$88,300

The short cross-hedge results in a loss in both the cash market and the

futures market. The overall loss is \$88,300. Had the kryptonite mining

company not used the cross-hedge, its loss would have been limited to the

decline in the cash price—\$48,200, in this instance. In contrast, the long

hedger realizes a gain in both the cash and futures market, and therefore an

- verall gain.

If instead the cash price of kryptonite increases to \$189.10 per ounce,

and the cash and futures price of palladium decline to \$304.20 and \$349.60,

respectively, it can be demonstrated that the long cross-hedge results in a

loss in both the cash and futures markets. The total loss is \$168,550. The

loss would have been only \$120,350 (that is, the loss in the cash market),

had the management of the manufacturing company not cross-hedged with

palladium.

These illustrations demonstrate the risks associated with cross-hedging.

1. Kimberly Blanton, "Index Futures Contracts Hedge Big Block Trades," _Pension & Investments_
_Age_, July 19, 1982: 1, 38.

2. Program trading is discussed in chapter 23.
3. For a more detailed explanation of this strategy, see Mark Rubinstein and Hayne Leland,
"Replicating Options with Positions in Stock and Cash," _Financial Analysts Journal_ 37, no. 4 (1981):
63–72.

4. These costs are described in chapter 23.
5. Commodity Futures Trading Commission, "The Economic Purpose of Futures Markets"
(Washington, DC: Commodity Futures Trading Commission, February 3, 2006).

6. Both quotes are from "Program Trading Spreads from Just Wall Street Firms," _Wall Street_
_Journal_, August 18, 1989.

7. _Business Week_, June 8, 1987.
8. _Euromoney_, December 1988.
9. Both quotes are from Gary Gastineau, "A Short History of Program Trading," _Financial Analysts_
_Journal_ 47, no. 5 (1991): 4–7.

10. We will ignore interplanetary exchange rate risk in our illustrations.

# **`37`**

```
Over-the-Counter Interest Rate Derivatives: Forward Rate

Agreements, Swaps, Caps, and Floors

CONTENTS

```

**Learning Objectives**

**Forward Rate Agreements**

**Interest Rate Swaps**

Risk/Return Characteristics of a Swap

Interpreting a Swap Position

Package of Cash Market Instruments

Applications

Application to asset/liability management

Application to debt issuance

Reasons for the Development of the Interest Rate Swap Market

Role of the Intermediary

Market Quotes

Primary Determinants of Swap Spreads

Secondary Market for Swaps

Beyond the Plain Vanilla Swap

Swaps that vary the notional principal amount

Basis swaps and constant maturity swaps

Swaptions

Forward start swaps

Interest Rate/Equity Swaps

Application to Creation of a Security

**Interest Rate Caps and Floors**

Risk/Return Characteristics

Applications

**Key Points**

**Questions**

```
Learning Objectives

```

After reading this chapter, you will understand:

   - what a forward rate agreement is;
   - what an interest rate swap is;
   - how an interest rate swap can be used by institutional investors and
corporate borrowers;

   - why the interest rate swap market has grown so rapidly;
   - the risk/return characteristics of an interest rate swap;
   - two ways to interpret an interest rate swap;
   - the reasons for the development of an interest rate swap market;
   - the determinants of the swap spread;
   - what a swaption is;
   - what a forward start swap is;
   - what an interest rate/equity swap is;
   - what an interest rate cap and floor is;
   - how interest rate caps and floors and forward rate agreements can be
used by institutional investors and corporate borrowers;

   - the relationship between an interest rate cap and floor and an option;
and

   - how an interest rate collar can be created.

Interest rate futures and options can be used to control interest rate risk.

Commercial banks and investment banks also customize other contracts

useful for controlling interest rate risk for their clients. These include interest

rate swaps, interest rate caps and floors, and forward rate agreements.

According to a survey by the Bank for International Settlements (BIS),

trading in over-the-counter (OTC) interest rate derivatives markets

dominates the OTC derivatives market. [1] As of year end 2017, the gross

market value of OTC interest rate derivatives was \$7.6 trillion. In this

chapter, we review each type of OTC interest rate derivative and explain

how borrowers and institutional investors use them.

```
Forward Rate Agreements

```

A **forward rate agreement** (FRA) is the OTC equivalent of the exchangetraded futures contracts on short-term rates. Typically, the short-term rate is

the London Interbank Offered Rate (LIBOR).

The elements of an FRA are the contract rate, reference rate, settlement

rate, notional amount, and settlement date. The parties to an FRA agree to

buy and sell funds on the settlement date. The FRA's **contract rate** is the

rate specified in the FRA at which the buyer of the FRA agrees to pay for

funds and the seller of the FRA agrees to receive for investing funds. The

**reference rate** is the interest rate used. For example, the reference rate could

be the three-month or six-month LIBOR. The benchmark from which the

interest payments are to be calculated is specified in the FRA and is called

the **notional amount** (or "notional principal amount"). This amount is not

exchanged between the two parties. The **settlement rate** is the value of the

reference rate at the FRA's settlement date. The source for determining the

settlement rate is specified in the FRA.

The buyer of the FRA is agreeing to pay the contract rate, or equivalently,

to buy funds at the settlement date at the contract rate; the seller of the FRA

is agreeing to receive the contract rate, or equivalently, to sell funds at the

settlement date at the contract rate. So, for example, if the FRA has a

contract rate of 5% for the three-month LIBOR (the reference rate) and the

notional amount is for \$10 million, the buyer is agreeing to pay 5% to buy or

borrow \$10 million at the settlement date and the seller is agreeing to receive

5% to sell or lend \$10 million at the settlement date.

If at the settlement date, the settlement rate is greater than the contract

rate, the FRA buyer benefits, because the buyer can borrow funds at a

below-market rate. If the settlement rate is less than the contract rate, this

benefits the seller, who can lend funds at an above-market rate. If the

settlement rate is the same as the contract rate, neither party benefits. This is

summarized as follows:

FRA buyer benefits if Settlement rate > Contract rate,

FRA seller benefits if Contract rate > Settlement rate,

Neither party benefits if Settlement rate = Contract rate.

As with the Eurodollar futures contract, FRAs are cash settlement

contracts. At the settlement date, the party that benefits based on the contract

rate and settlement rate must be compensated by the other. Assuming the

settlement rate is not equal to the contract rate, then

Buyer receives compensation if Settlement rate > Contract rate,

Seller receives compensation if Contract rate > Settlement rate.

To determine the amount one party must compensate the other, the

following is first calculated assuming a 360-day count convention:

_If Settlement rate_ - _Contract rate:_

_If Contract rate_ - _Settlement rate:_

The amount that must be exchanged at the settlement date is not the

interest differential. Instead, the present value of the interest differential is

exchanged. The discount rate used to calculate the present value of the

interest differential is the settlement rate. Thus, the compensation is

determined as follows:

To illustrate, assume the following terms for an FRA: Reference rate is

the three-month LIBOR, the contract rate is 5%, the notional amount is for

\$10 million, and the number of days to settlement is 91 days. Suppose the

settlement rate is 5.5%. In this case, the buyer benefits, because the buyer

can borrow at 5% (the contract rate) when the market rate (the settlement

rate) is 5.5%. The interest differential is

The compensation or payment that the seller must make to the buyer is

It is important to note the difference in who benefits when interest rates

move in an FRA and an interest rate futures contract. The buyer of an FRA

benefits if the reference rate increases, and the seller benefits if the reference

rate decreases. In a futures contract, the buyer benefits from a falling rate,

whereas the seller benefits from a rising rate. This is summarized in table

37.1. The different parties benefit under different conditions, because the

underlying for each of the two contracts is different. In the case of an FRA,

the underlying is a rate. The buyer gains if the rate increases and loses if the

rate decreases. In contrast, in a futures contract, the underlying is a fixedincome instrument. The buyer gains if the fixed-income instrument increases

in value, which occurs when rates decline. The buyer loses when the fixedincome instrument decreases in value, which occurs when interest rates

increase. The opposite occurs for the seller of a futures contract.

```
Table 37.1
```

Effect of rate changes on parties to an FRA and an interest rate futures contract.

Interest Rates

Decrease Increase

Party FRA Futures FRA Futures

Buyer Loses Gains Gains Loses

Seller Gains Loses Loses Gains

```
Interest Rate Swaps

```

An **interest rate swap** is an agreement whereby two parties (called

"counterparties") agree to exchange periodic interest payments. The dollar

amount of the interest payments exchanged is based on some predetermined

dollar principal, which is called the **notional principal amount** . The dollar

amount each counterparty pays to the other is the agreed-on periodic interest

rate times the notional principal amount. The only dollars exchanged

between the parties are the net interest payments, not the notional principal

amount. In the most common type of swap, one party agrees to pay the other

party fixed interest payments at designated dates for the life of the contract.

This party is referred to as the **fixed-rate payer** . The other party, referred to

as the **floating-rate payer**, agrees to make interest rate payments that float

with some reference interest rate (or, simply, "reference rate").

For example, suppose that for the next five years, party X agrees to pay

party Y 10% per year, and party Y agrees to pay party X the six-month

LIBOR. Party X is a fixed-rate payer/floating-rate receiver, whereas party Y

is a floating-rate payer/fixed-rate receiver. Assume that the notional principal

amount is \$50 million, and that payments are exchanged every six months

for the next five years. Then every six months, party X (the fixed-rate

payer/floating-rate receiver) will pay party Y \$2.5 million (10% times \$50

million divided by 2). The amount that party Y (the floating-rate

payer/fixed-rate receiver) will pay party X will be the six-month LIBOR

times \$50 million divided by 2. For example, if the six-month LIBOR is 7%,

party Y will pay party X \$1.75 million (7% times \$50 million divided by 2).

Note that we divide by two, because one-half year's interest is being paid.

The reference rates that are commonly used for the floating rate in an

interest rate swap are those on various money market instruments: Treasury

bills, LIBOR, commercial paper, bankers acceptances, certificates of deposit,

federal funds rate, and prime rate.

As we illustrate later, market participants can use an interest rate swap to

alter the cash flow character of assets or liabilities from a fixed-rate basis to

a floating-rate basis or vice versa.

```
Risk/Return Characteristics of a Swap

```

The value of an interest rate swap will fluctuate with market interest rates.

To see how, let's analyze our hypothetical swap. Suppose that interest rates

change immediately after parties X and Y enter into the swap. First, consider

what would happen if the market demanded that the fixed-rate payer must

pay 11% to receive the six-month LIBOR in any five-year swap. If party X

(the fixed-rate payer) wants to sell its position, say, to party A, then party A

will benefit by only having to pay 10% (the original swap rate agreed on)

rather than 11% (the current swap rate) to receive the six-month LIBOR.

Party X will want compensation for this benefit. Consequently, the value of

party X's position has increased. Thus, if interest rates increase, the fixedrate payer will realize a profit and the floating-rate payer will realize a loss.

Next, consider what would happen if interest rates decline to, say, 6%.

Now a five-year swap would require the fixed-rate payer to pay 6% rather

than 10% to receive the six-month LIBOR. If party X wants to sell its

position to party B, the latter would demand compensation to take over the

position. In other words, if interest rates decline, the fixed-rate payer will

realize a loss, whereas the floating-rate payer will realize a profit.

The risk/return profile of the two positions when interest rates change is

summarized in table 37.2.

```
Table 37.2
```

Risk/return profile of counterparties to an interest rate swap.

Interest Rates Decrease Interest Rates Increase

Floating-rate payer Gains Loses

Fixed-rate payer Loses Gains

```
Interpreting a Swap Position

```

A swap position can be interpreted in two ways: (1) as a package of

forward/futures contracts or (2) as a package of cash flows from buying and

selling cash market instruments. We will evaluate both interpretations.

Contrast the position of the counterparties in an interest rate swap in table

37.2 to the position of the long and short futures or a forward contract shown

in table 37.1. An interest rate futures contract has an underlying fixedincome instrument. An FRA is one in which the underlying is a rate.

Consider first the FRA. As explained in the previous section, the buyer of

an FRA gains if the reference rate rises above the contract rate at the

settlement date (i.e., the settlement rate is greater than the contract rate) and

loses if the reference rate falls below the contract rate at the settlement date

(i.e., the settlement rate is less than the contract rate). The opposite is true for

the seller of an FRA. Table 37.3 compares the position of the swap parties

and the parties to an FRA if rates increase and decrease. Consequently, the

buyer of an FRA realizes the same effect as a fixed-rate payer, and the seller

- f an FRA realizes the same effect as a floating-rate payer.

```
Table 37.3
```

Effect of rate changes on interest rate swap counterparties and FRA counterparties.

Counterparties to Interest Rates

Swap FRA Decrease Increase

Floating-rate payer Seller Gains Loses

Fixed-rate payer Buyer Loses Gains

A swap can be viewed as a package of FRAs. In fact, an FRA can be

viewed as a special case of a swap in which there is only one settlement date.

Now let's compare a swap to a futures or forward contract where the

underlying is an interest rate instrument, such as a Eurodollar CD. The long

futures position gains if interest rates decline and loses if interest rates rise—

this is similar to the risk/return profile for a floating-rate payer. The

risk/return profile for a fixed-rate payer is similar to that of the short futures

position: a gain if interest rates increase and a loss if interest rates decrease.

Table 37.4 compares the counterparty positions for a swap, an FRA, and a

forward/futures on a fixed-income instrument when rates change.

```
Table 37.4
```

Effect of rate changes on interest rate swap counterparties, FRA counterparties, and futures and

forwards on fixed-income instrument counterparties.

Counterparties to

Interest Rates

Decrease Increase

Swap FRA

Futures/Forward on Fixed-Income

Instrument

Floating-rate

payer

Seller Buyer Gains Loses

Fixed-rate payer Buyer Seller Loses Gains

Consequently, interest rate swaps can be viewed as a package of more

basic interest rate control tools, such as forwards. The pricing of an interest

rate swap will then depend on the price of a package of forward contracts

with the same settlement dates and in which the underlying for the forward

contract is the same reference rate.

Although an interest rate swap may be nothing more than a package of

forward contracts, several important reasons suggest that it is not a

redundant contract. First, the longest maturity of forward or futures contracts

does not extend out as far as that of an interest rate swap. In fact, an interest

rate swap with a term of 15 years or longer can be obtained. Second, an

interest rate swap is a more transactionally efficient instrument. By this we

mean that in one transaction, two parties can effectively establish a payoff

equivalent to a package of forward contracts. The forward contracts would

each have to be negotiated separately. Third, the liquidity of the interest rate

swap market has grown since its beginnings in 1981; it is now more liquid

than forward contracts, particularly long-dated (that is, long-term) forward

contracts.

```
Package of Cash Market Instruments

```

To understand why a swap can also be interpreted as package of cash market

instruments, consider the following. Suppose that an investor enters into a

transaction to

   - buy \$50 million par value of a five-year, floating-rate bond that pays
six-month LIBOR every six months, and

   - finance the purchase of the five-year, floating-rate bond by borrowing
\$50 million for five years with a 10% annual interest rate and payments
every six months.

The cash flow of this transaction is presented in table 37.5. The second

column of the exhibit sets out the cash flow from purchasing the five-year,

floating-rate bond. There is a \$50 million cash outlay and then cash inflows.

The amount of the cash inflows is uncertain, because they depend on future

LIBORs. The third column shows the cash flow from borrowing \$50 million

- n a fixed-rate basis. The last column shows the net cash flow from the

entire transaction. As can be seen in the last column, there is no initial cash

flow (no cash inflow or cash outlay). In all 10 six-month periods, the net

position results in a cash inflow of LIBOR and a cash outlay of \$2.5 million.

This net position, however, is identical to the position of a fixed-rate

payer/floating-rate receiver.

```
Table 37.5
```

Cash flow for the purchase of a five-year, floating-rate bond financed by borrowing on a fixed-rate basis.

Transaction: Purchase for \$50 million a five-year, floating-rate bond:

floating rate = LIBOR, semiannual pay

Borrow \$50 million for five years: fixed rate = 10% semiannual payments

Cash Flow (in millions of dollars) from:

Six-Month Period Floating-Rate Bond Borrowing Cost Net

0 - $50.0 +$50.0 .\$0

1 + ( _LIBOR_ 1/2) × 50 - 2.5 + ( _LIBOR_ 1/2) × 50–2.5

2 + ( _LIBOR_ 2/2) × 50 - 2.5 + ( _LIBOR_ 2/2) × 50–2.5

3 + ( _LIBOR_ 3/2) × 50 - 2.5 + ( _LIBOR_ 3/2) × 50–2.5

4 + ( _LIBOR_ 4/2) × 50 - 2.5 + ( _LIBOR_ 4/2) × 50–2.5

5 + ( _LIBOR_ 5/2) × 50 - 2.5 + ( _LIBOR_ 5/2) × 50–2.5

6 + ( _LIBOR_ 6/2) × 50 - 2.5 + ( _LIBOR_ 6/2) × 50–2.5

7 + ( _LIBOR_ 7/2) × 50 - 2.5 + ( _LIBOR_ 7/2) × 50–2.5

8 + ( _LIBOR_ 8/2) × 50 - 2.5 + ( _LIBOR_ 8/2) × 50–2.5

9 + ( _LIBOR_ 9/2) × 50 - 2.5 + ( _LIBOR_ 9/2) × 50–2.5

10 + ( _LIBOR_ 10/2) × 50 + 50 - 52.5 + ( _LIBOR_ 10/2) × 50–2.5

_Note:_ The subscript on _LIBOR_ indicates the six-month LIBOR as per the terms of the floating-rate bond at a

specific time.

The net cash flow in table 37.5 reveals that a fixed-rate payer has a cash

market position that is equivalent to taking a long position in a floating-rate

bond and borrowing the funds to purchase the floating-rate bond on a fixedrate basis. But the borrowing can be viewed as issuing a fixed-rate bond, or

equivalently, being short a fixed-rate bond. Consequently, the position of a

fixed-rate payer can be viewed as being long a floating-rate bond and short a

fixed-rate bond.

What about the position of a floating-rate payer? It can be demonstrated

that the position of a floating-rate payer is equivalent to purchasing a fixedrate bond and financing that purchase at a floating rate, with the floating rate

being the reference interest rate for the swap. That is, the position of a

floating-rate payer is equivalent to a long position in a fixed-rate bond and a

short position in a floating-rate bond.

```
Applications

```

So far we have merely described an interest rate swap and looked at its

characteristics. With the help of two illustrations, we now explain how

swaps can be used. Although we focus on basic or **plain vanilla swaps**, the

illustrations will help explain why other types of interest rate swaps have

been developed.

**`Application to asset/liability management`** In the first illustration, we
look at how an interest rate swap can be used to alter the cash flow
characteristics of an institution's assets so as to provide a better match
between assets and liabilities. The two institutions are a commercial bank

and a life insurance company.

Suppose a bank has a portfolio consisting of five-year term commercial

loans with a fixed interest rate. The principal value of the portfolio is \$50

million, and the interest rate on all the loans in the portfolio is 10%. The

loans are interest only loans; interest is paid semiannually, and the entire

principal is paid at the end of five years. That is, assuming no default on the

loans, the cash flow from the loan portfolio is \$2.5 million every six months

for the next five years and \$50 million at the end of five years. To fund its

loan portfolio, assume that the bank is relying on the issuance of six-month

CDs. The interest rate that the bank plans to pay on its six-month CDs is the

six-month Treasury bill rate plus 40 basis points (bps).

The risk that the bank faces is that the six-month Treasury bill rate will be

9.6% or greater. To understand why, remember that the bank is earning 10%

annually on its commercial loan portfolio. If the six-month Treasury bill rate

is 9.6%, it will have to pay 9.6% plus 40 bps to depositors for six-month

funds, or 10%, and there will be no spread income. Worse, if the six-month

Treasury bill rate rises above 9.6%, there will be a loss; that is, the cost of

funds will exceed the interest rate earned on the loan portfolio. The bank's

- bjective is to lock in a spread over the cost of its funds.

The other party in this illustration is a life insurance company that has

committed itself to paying a 9% rate for the next five years on a guaranteed

investment contract (GIC) it has issued. The amount of the GIC is \$50

million. Suppose that the life insurance company has the opportunity to

invest \$50 million in what it considers an attractive five-year, floating-rate

instrument in a private placement transaction. The interest rate on this

instrument is the six-month Treasury bill rate plus 160 bps. The coupon rate

is set every six months.

The risk that the life insurance company faces is that the six-month

interest rate will fall, so that the company will not earn enough to realize a

spread over the 9% rate that it has guaranteed to the GIC holders. If the sixmonth Treasury bill rate falls to 7.4% or less, no spread income will be

generated. To understand why, suppose that at the date the floating-rate

instrument resets its coupon, the six-month Treasury bill rate is 7.4%. Then

the coupon rate for the next six months will be 9% (7.4% plus 160 bps).

Because the life insurance company has agreed to pay 9% on the GIC policy,

there will be no spread income. If the six-month Treasury bill rate falls

below 7.4%, then the life insurance company will incur a loss.

We can summarize the asset/liability problem of the bank and life

insurance company as follows:

```
Bank:

```

1. Has lent long-term and borrowed short-term;
2. If the six-month Treasury bill rate rises, spread income declines.

```
Life insurance company:

```

3. Has effectively lent short-term and borrowed long-term;
4. If the six-month Treasury bill rate falls, spread income declines.

Now let's suppose that an intermediary offers a five-year interest rate

swap with a notional principal amount of \$50 million to both the bank and

life insurance company. The terms offered to the bank are:

1. Every six months, the bank will pay 10% (annual rate) to the
intermediary.

2. Every six months, the intermediary will pay the six-month Treasury
bill rate plus 155 bps to the bank.

The terms offered to the insurance company are:

1. Every six months, the life insurance company will pay the six-month
Treasury bill rate plus 160 bps per year to the intermediary.

2. Every six months, the intermediary will pay the insurance company
10% (annual rate).

What has this interest rate contract done for the bank and the life

insurance company? Consider first the bank. For every six-month period

during the life of the swap agreement, the interest rate spread will be as

follows:

**Annual Interest Rate Received:**

From commercial loan portfolio = 10%

From interest rate swap = 6-month T-bill rate + 155 bps.

Total = 11.55% + 6-month T-bill rate

**Annual Interest Rate Paid:**

To CD depositors = 6-month T-bill rate + 40 bps.

On interest rate swap = 10%

Total = 10.40% + 6-month T-bill rate

**Outcome:**

To be received = 11.55% + 6-month T-bill rate

To be paid = 10.40% + 6-month T-bill rate

Spread income = 1.15% or 115 bps.

Thus, regardless of what happens to the six-month Treasury bill rate, the

bank locks in a spread of 115 bps.

Now let's look at the effect of the interest rate swap on the life insurance

company:

**Annual Interest Rate Received:**

From floating-rate instrument = 6-month T-bill rate + 160 bps

From interest rate swap = 10%

Total = 11.6% + 6-month T-bill rate

**Annual Interest Rate Paid:**

To GIC policyholders = 9%

On interest rate swap = 6-month T-bill rate + 160 bps

Total = 10.6% + 6-month T-bill rate

**Outcome:**

To be received = 11.6% + 6-month T-bill rate

To be paid = 10.6% + 6-month T-bill rate

Spread income = 1.0% or 100 bps

Regardless of what happens to the six-month Treasury bill rate, the life

insurance company locks in a spread of 100 bps.

The interest rate swap has allowed each party to accomplish its

asset/liability objective of locking in a spread. [2] The swap permits each

financial institution to alter the cash flow characteristics of its assets: from

fixed to floating in the case of the bank, and from floating to fixed in the

case of the life insurance company. This type of transaction is referred to as

an **asset swap** . The bank and the life insurance company could have used the

swap market instead to change the cash flow nature of their liabilities. Such

a swap is called a **liability swap** . Although we used a bank in our

illustration, an interest rate swap obviously would be appropriate for savings

and loan associations that, because of regulation, borrow short term on a

floating-rate basis and lend long term on fixed-rate mortgages.

Of course, the two institutions could have chosen other ways to match the

cash flow characteristics of their assets and liabilities. The bank might refuse

to make fixed-rate commercial loans and insist only on floating-rate loans.

This approach has a major pitfall: If borrowers can find another source

willing to lend on a fixed-rate basis, the bank would lose these customers.

The life insurance company might refuse to purchase a floating-rate

instrument. But suppose that the terms offered on the private placement

instrument were more attractive than what would have been offered on a

floating-rate instrument of comparable credit risk. Thus, by using the swap

market, the life insurance company can earn a yield higher than what it

would earn if it had invested directly in a five-year, fixed-rate security. For

example, suppose the life insurance company can invest in a comparable

credit risk five-year, fixed-rate security with a yield of 9.8%. Given the

funding through the GIC with a 9% rate, this investment would result in

spread income of 80 bps—less than the 100-bp spread income that the life

insurance company achieved by purchasing the floating-rate instrument and

entering into the swap.

Consequently, an interest rate swap performs two important functions: (1)

It can change the risk of a financial position by altering the cash flow

characteristics of assets or liabilities, and (2) under certain circumstances, it

also can be used to enhance returns. Obviously, this second function arises

- nly if there are market imperfections.

A final point can be made in this illustration. Look at the floating-rate

payments that the life insurance company makes to the intermediary and the

floating-rate payments that the intermediary makes to the bank. The life

insurance company pays the six-month Treasury bill rate plus 160 bps, but

the intermediary pays the bank the six-month Treasury bill rate plus only

155 bps. The difference of 5 bps represents the fee to the intermediary for

the services of intermediation.

**`Application to debt issuance`** Our second illustration considers two
U.S. entities, a triple-A rated commercial bank and a triple-B rated
nonfinancial corporation: Each wants to raise \$100 million for 10 years. For
various reasons, the bank wants to raise floating-rate funds, whereas the
nonfinancial corporation wants to raise fixed-rate funds. The interest rates
available to the two entities in the U.S. bond market are:

Bank: Floating rate = Six-month LIBOR + 30 bps,

Nonfinancial corporation: Fixed rate = 12%.

Suppose also that both entities could issue securities in the Eurodollar

bond market, if they wanted to. Let us assume that the following terms are

available in the Eurodollar bond market for 10-year securities for these two

entities:

Bank: Fixed rate = 10.5%,

Nonfinancial corporation: Floating rate = Six-month LIBOR + 80 bps.

Notice that we indicate the terms that the bank could obtain on fixed-rate

financing and that the nonfinancial corporation could obtain on floating-rate

securities. You will shortly see why we did this. First, let us summarize the

situation for the two entities in the U.S. domestic and Eurodollar bond

markets:

**Floating-Rate Securities**

Entity Bond Market Rate

Bank U.S. domestic 6-month LIBOR + 30 bps

Nonfinancial corporation Eurodollar 6-month LIBOR + 80 bps

Quality spread = 50 bps

**Fixed-Rate Securities**

Entity Bond Market Rate

Bank Eurodollar 10.5%

Nonfinancial corporation U.S. domestic 12.0%

Quality spread = 150 bps

In this table, we use the term **quality spread** . This term simply means the

differential borrowing costs that reflect the difference in the creditworthiness

- f the two entities.

Notice that the quality spread for floating-rate securities (50 bps) is

narrower than the quality spread for fixed-rate securities (150 bps). This

difference in spreads provides an opportunity for both entities to reduce the

cost of raising funds. To see how, suppose each entity issued securities in the

Eurodollar bond market, and then simultaneously entered into the following

10-year interest rate swap with a \$100 million notional principal amount

- ffered by an intermediary:

**Bank:**

Pay floating rate of 6-month LIBOR + 70 bps

Receive fixed rate of 11.3%

**Nonfinancial Corporation:**
Pay fixed rate of 11.3%
Receive floating rate of 6-month LIBOR + 45 bps

**Interest Paid:**

On fixed-rate Eurodollar bonds issued = 10.5%

On interest rate swap = six-month LIBOR + 70 bps

Total = 11.2% + 6-month LIBOR

**Interest Received:**

On interest rate swap = 11.3%

**Net Cost:**

Interest paid = 11.2% + six-month LIBOR

Interest received = 11.3%

Total = six-month LIBOR − 10 bps

**Interest Paid:**

On floating-rate Eurodollar bonds issued = six-month LIBOR + 80 bps

On interest rate swap = 11.3%

Total = 12.1% + six-month LIBOR

**Interest Received:**

On interest rate swap = six-month LIBOR + 45 bps

**Net Cost:**

Interest paid = 12.1% + six-month LIBOR

Interest received = six-month LIBOR + 45 bps

Total = 11.65%

The transactions are diagrammed in figure 37.1. By issuing securities in

the Eurodollar bond market and using the interest rate swap, both entities are

able to reduce their cost of issuing securities. The bank was able to issue

floating-rate securities for six-month LIBOR minus 10 bps rather than issue

floating-rate securities in the U.S. domestic bond market for six-month

LIBOR plus 30 bps, thereby saving 40 bps. The nonfinancial corporation

saved 35 bps (11.65% versus 12%) by issuing floating-rate bonds in the

Eurodollar bond market and using the interest rate swap.

```
Figure 37.1

```

Interest rate swap for debt issuance.

The point of this illustration is to show that, if differences in quality

spreads exist in different sectors of the bond markets, borrowers can use the

interest rate swap to arbitrage the inconsistency. Whether these differences

do exist is another question, which we address below.

Finally, look once again at the intermediary in this transaction. The

intermediary pays a floating rate of six-month LIBOR plus 45 bps to the

nonfinancial corporation, and it receives six-month LIBOR plus 70 bps from

the bank, realizing 25 bps for its intermediary services.

```
Reasons for the Development of the Interest Rate Swap Market

```

According to the BIS, the interest rate swap market, which began in late

1981, is the largest component of the OTC interest rate derivatives market.

The interest rate swap market has grown rapidly since its inception. What is

behind this rapid growth? As our two illustrations have demonstrated, an

interest rate swap is a quick way for institutional investors and corporate

borrowers to change the nature of assets and liabilities or to exploit any

perceived capital market imperfection.

The initial motivation for the interest rate swap market was borrower

exploitation of what were perceived to be **credit arbitrage** - pportunities.

These opportunities were attributed to the fact that quality spreads (i.e., the

difference in yields between lowerand higher-rated credits) were frequently

not the same in the fixed-rate market as in the floating-rate market, and often

the quality spreads were not the same in the U.S. debt markets as in the

Eurodollar bond markets. Note that our second illustration assumes a spread

- f 50 bps in the floating-rate markets and 150 bps in the fixed-rate markets.
Publications by dealer firms [3] and academic research have suggested this
credit arbitrage motivation. [4]

Basically, this argument for swaps rested on the well-known economic

principle of comparative advantage, which was developed in international

economics. The argument takes the following form. Even though a high

credit-rated issuer could borrow at a lower cost in both the fixed-rate and

floating-rate markets (that is, have an absolute advantage in both), it will

have a comparative advantage relative to a lower credit-rated issuer in one of

the markets (and a comparative disadvantage in the other). Under these

conditions, each borrower could benefit from issuing securities in the market

in which it has a comparative advantage and then swapping obligations for

the desired type of financing. The swap market developed as the vehicle for

swapping obligations.

Several observers have challenged the notion that credit arbitrage

- pportunities exist. They insist that the comparative advantage argument,
although based on arbitrage, does not rely on irrational mispricing but on
assumptions of equilibrium in segmented markets. That is, two completely
separate markets can be perfectly competitive unto themselves but can set
different prices for risk. An economic agent transacting simultaneously in
both markets would see an imperfectly competitive market and an

- pportunity to make money.

Those who challenge the credit arbitrage notion argue that the differences

in quality spreads in the fixed-rate and floating-rate markets represent

differences in the risks that lenders face in these two markets. Let us

consider shortand long-term markets in this regard. The interest rate for a

floating-rate note effectively represents a short-term interest rate; therefore,

the quality spread on floating-rate notes is a spread in the short-term market.

In contrast, the quality spread on fixed-rate mediumand long-term notes

represents the spread in that maturity sector. There is no reason for the

quality spreads across those two markets to be the same. [5]

Some observers attribute the difference in quality spreads among markets

to differences in regulations among countries. Similarly, differences in tax

treatment across countries also create differences in the price of risk and in

expected returns. [6] Thus, swaps can be used for regulatory or tax arbitrage

and may be explained by such differences among national markets.

Finally, another argument suggested for the growth of the interest rate

swap market is the increased volatility of interest rates that has led borrowers

and lenders to hedge or manage their exposure. Even though risk/return

characteristics can be replicated by a package of forward contracts, interest

rate forward contracts are not as liquid as interest rate swaps. And entering

into or liquidating swap transactions has been facilitated by the

standardization of documentation published by the International Swap

Dealers Association in early 1987. Moreover, a swap to hedge or manage a

position costs less than a package of interest rate forward contracts.

Consequently, we can say that the swap market originally developed for

the purpose of exploiting real or perceived imperfections in the capital

market, but it eventually evolved into a transactionally efficient market for

accomplishing asset/liability objectives.

```
Role of the Intermediary

```

The role of the intermediary in an interest rate swap sheds some light on the

evolution of the market. Intermediaries in these transactions have been

commercial banks and investment banks, who, in the early stages of the

market, sought out end users of swaps. That is, commercial banks and

investment banking firms found in their client bases those entities that

needed swaps to accomplish funding or investing objectives, and they

matched the two entities. In essence, the intermediary in this type of

transaction performed the function of a broker.

In the early years of this market, the only time that the intermediary

would take the opposite side of a swap (that is, would act as a principal) was

when it had to do so to balance out the transaction. For example, if an

intermediary had two clients that were willing to do a swap but one wanted

the notional principal amount to be \$100 million and the other wanted it to

be \$85 million, the intermediary might become the counterparty to the extent

- f \$15 million. That is, the intermediary would warehouse or take a position
as a principal to the transaction to make up the \$15 million difference
between the clients' objectives. To protect itself against an adverse interest
rate movement, the intermediary would hedge its position.

To explain how the intermediary's role developed over time, we need to

address an important feature of the swap that we have not yet discussed. The

parties to the swaps we have described had to be concerned that the other

party would default on its obligation. Although a default would not mean

any principal was lost (because the notional principal amount had not been

exchanged), it would mean that the objective for which the swap was entered

into would be impaired. As the early transactions involved a higher and a

lower credit-rated entity, the former would be concerned with the potential

for default of the latter. To reduce the risk of default, many early swap

transactions required that the lower credit-rated entity obtain a guarantee

from a highly rated commercial bank. Often, the intermediary in the swap

was a bank of this type. Involvement as insurer or guarantor in this way led

banks to accept the role of dealer or counterparty.

As the frequency and size of the transactions increased, many

intermediaries became comfortable with swap transactions and became

principals instead of simply acting as brokers. As long as an intermediary

had one entity willing to enter into a swap, the intermediary was willing to

be the counterparty. Consequently, interest rate swaps became part of an

intermediary's inventory of products. Advances in quantitative techniques

and futures products for hedging complex positions (such as swaps) made

the protection of large inventory positions feasible.

Yet another development encouraged intermediaries to become principals

rather than brokers in swaps. As more intermediaries entered the swap

market, bid-ask spreads on swaps narrowed sharply. To make money in the

swaps market, intermediaries had to do a sufficient volume of business,

which was possible only if they had (1) an extensive client base willing to

use swaps and (2) a large inventory of swaps. Accomplishing these

- bjectives required the intermediaries to act as principals. A survey by
_Euromoney_ asked 150 multinationals and supranationals to identify the
characteristics that make a swap house efficient. [7] The results indicated that
the speed at which a swap could be arranged for a client was the most
important criterion. That speed depends on client base and inventory. The
same survey also revealed clients to be less interested in brokered deals than
in transactions in which the intermediary is a principal.

```
Market Quotes

```

The convention that has evolved for quoting swaps levels is for a swap

dealer to set the floating rate equal to the index and then quote the fixed rate

that will apply. To illustrate this convention, we use the swap in our second

example of the application of swaps. The terms for that 10-year swap are as

follows:

```
Bank:

```

Pay floating rate of 6-month LIBOR + 70 bps.

Receive fixed rate of 11.3%.

```
Nonfinancial Corporation:

```

Pay fixed rate of 11.3%.

Receive floating rate of 6-month LIBOR + 45 bps.

The offer price that the dealer would quote to the nonfinancial

corporation (the fixed-rate payer) would be to pay 10.85% and receive

LIBOR flat. (The term _flat_ means with no spread.) The 10.85% is obtained

by subtracting from the fixed rate of 11.3% the 45-basis point spread over

LIBOR. The bid price that the dealer would quote to the commercial bank

would be to pay LIBOR flat and receive 10.6%. The 10.6% represents the

payment to be received of 11.3% minus the 70-basis point spread over

LIBOR.

The dealer determines or sets the quoted fixed rate by adding some

spread to the Treasury yield curve with the same term to maturity as the

swap. We refer to this spread as the **swap spread** . In our illustration,

suppose that the 10-year Treasury yield is 10.35%. In this case, the offer

price that the dealer would quote to the fixed-rate payer is the 10-year

Treasury rate plus 50 bps versus receiving LIBOR flat. For the floating-rate

payer, the bid price quoted would be LIBOR flat versus the 10-year Treasury

rate plus 40 bps. In the terminology of the market, the dealer would actually

quote this particular swap as "40–50." This swap spread means that the

dealer is willing to enter into a swap on either side: to receive LIBOR and

pay a fixed rate equal to the 10-year Treasury rate plus 40 bps, or to pay

LIBOR and receive a fixed rate equal to the 10-year Treasury rate plus 50

bps. The difference between the fixed rate paid and received is the bid-offer

spread, which is 40 bps.

```
Primary Determinants of Swap Spreads

```

Earlier we provided two interpretations of a swap: (1) a package of

futures/forward contracts, and (2) a package of cash market instruments. [8]

The swap spread is defined as the difference between the swap's fixed rate

and the rate on a Treasury whose maturity matches the swap's maturity.

Although a discussion of the valuation of interest rate swaps is beyond the

scope of this chapter, it can be shown that they are valued using no-arbitrage

relationships relative to instruments (funding or investment vehicles) that

produce the same cash flows under the same circumstances. [9]

The swap spread is determined by the same factors that drive the spread

- ver Treasuries on instruments that replicate a swap's cash flows (i.e.,
produce a similar return or funding profile). As discussed below, the swap
spread's key determinant for swaps with maturities of five years or less is the
cost of hedging in the Eurodollar futures market. [10] For swaps with a longer
maturity, the swap spread is largely driven by credit spreads in the corporate
bond market. [11] Specifically, longer-dated swaps are priced relative to rates
paid by investment-grade credits in traditional fixedand floating-rate
markets.

Given that a swap is a package of futures and forward contracts, the

shorter-term swap spreads respond directly to fluctuations in Eurodollar

futures prices. A Eurodollar futures contract is an instrument in which a

fixed dollar payment (i.e., the futures price) is exchanged for the three

month LIBOR. There is a liquid market for Eurodollar futures contracts with

maturities every three months for five years. A market participant can create

a synthetic fixed-rate security or a fixed-rate funding vehicle of up to five

years by taking a position in a bundle of Eurodollar futures contracts (i.e., a

position in every three-month Eurodollar futures contract up to the desired

maturity date).

For example, consider a financial institution that has fixed-rate assets and

floating-rate liabilities. Both the assets and liabilities have a maturity of three

years. The interest rate on the liabilities resets every three months based on

the three-month LIBOR. This financial institution can hedge this

mismatched asset/liability position by buying a three-year bundle of

Eurodollar futures contracts. By doing so, the financial institution is

receiving the LIBOR over the three-year period and paying a fixed dollar

amount (i.e., the futures price). The financial institution is now hedged,

because the assets are fixed rate and the bundle of long Eurodollar futures

synthetically creates a fixed-rate funding arrangement. From the fixed dollar

amount over the three years, an effective fixed rate that the financial

institution pays can be computed. Alternatively, the financial institution can

synthetically create a fixed-rate funding arrangement by entering into a

three-year swap, in which it pays fixed and receives the three-month LIBOR.

Other factors being equal, the financial institution will use the vehicle that

delivers the lowest cost of hedging the mismatched position. That is, the

financial institution will compare the synthetic fixed rate (expressed as a

percentage over U.S. Treasuries) to the three-year swap spread. The

difference between the synthetic spread and the swap spread should be

within a few basis points under normal circumstances.

Swaps with maturities greater than five years cannot rely on the

Eurodollar futures, because liquid markets do not exist for these contracts at

longer maturities. Instead, longer-dated swaps are priced using rates

available to investment-grade corporate borrowers in fixed-rate and floatingrate debt markets. Because a swap can be interpreted as a package of long

and short positions in a fixed-rate bond and a floating-rate bond, it is the

credit spreads in those two market sectors that will determine the swap

spread. Empirically, the swap rate for a given maturity is greater than the

yield on U.S. Treasury securities and less than the yield for AA-rated

banks. [12] Swap fixed rates are lower than AA-rated bond yields because of

their lower credit, which stems from netting and offsetting of swap positions.

In addition, other technical factors influence the level of swap spreads.

Although the impact of some of these factors is ephemeral, their influence

can be considerable in the short run. Included among these factors are (1) the

level and shape of the Treasury yield curve, (2) the relative supply of fixedand floating-rate payers in the interest rate swap market, (3) the level of

asset-based swap activity, and (4) technical factors that affect swap dealers. [13]

```
Secondary Market for Swaps

```

Three general types of transactions take place in the secondary market for

swaps: a swap reversal, a swap sale (or assignment), and a swap buyback (or

close-out or cancellation).

In a **swap reversal**, the party that wants out of the transaction will

arrange for an additional swap in which (1) the maturity on the new swap is

equal to the time remaining of the original swap, (2) the reference rate is the

same, and (3) the notional principal amount is the same. For example,

suppose party X enters into a five-year swap with a notional principal

amount of \$50 million, in which it pays 10% and receives LIBOR, but that

two years later, X wants out of the swap. In a swap reversal, X would enter

into a three-year interest rate swap with a counterparty different from the

- riginal counterparty (let's say Z), in which the notional principal amount is
\$50 million, and X pays LIBOR and receives a fixed rate. The fixed rate that
X receives from Z will depend on prevailing swap terms for floating-rate
receivers at the initiation of the three-year swap.

Although party X has effectively terminated the original swap in

economic terms, this approach has a major drawback: Party X is still liable

to original counterparty Y, as well as to the new counterparty Z. That is,

party X now has two offsetting interest rate swaps on its books instead of

- ne, and as a result, it has increased its default risk exposure.

The **swap sale**  - r **swap assignment**  - vercomes this drawback. In this

secondary market transaction, the party that wishes to close out the original

swap finds another party that is willing to accept its obligations under the

swap. In our illustration, X finds another party (say, A) that will agree to pay

10% to Y and receive LIBOR from Y for the next three years. Party A might

have to be compensated to accept the position of X, or A might be willing to

compensate X. Who will receive compensation depends on the swap terms at

the time. For example, if interest rates have risen so that, to receive LIBOR

for three years, a fixed-rate payer would have to pay 12%, then A would

have to compensate X, because A has to pay only 10% to receive LIBOR.

The compensation would be equal to the present value of a three-year

annuity of 2% times the notional principal amount. If, instead, interest rates

have fallen so that, to receive LIBOR for three years, a fixed-rate payer

would have to pay 6%, then X would have to compensate A. The

compensation would be equal to the present value of a three-year annuity of

4% times the notional principal amount. Once the transaction is completed,

it is then A, not X, that is obligated to perform under the swap terms. (Of

course, an intermediary could act as principal and become party A.)

To accomplish a swap sale, the original counterparty (Y in our example)

must agree to the sale. A key factor in whether Y will agree is whether it is

willing to accept the credit of A. For example, if A's credit rating is triple B

and X's is double A, Y would be unlikely to accept A as a counterparty.

A **buyback**  - r **close-out sale** (or **cancellation** ) involves the sale of the

swap to the original counterparty. As in the case of a swap sale, one party

might have to compensate the other, depending on how interest rates and

credit spreads have changed since the inception of the swap.

```
Beyond the Plain Vanilla Swap

```

Thus far we have described the plain vanilla or generic interest rate swap.

Nongeneric or individualized swaps have evolved as a result of the

asset/liability needs of borrowers and lenders. These include swaps in which

the notional principal changes in a predetermined way over the life of the

swap and those in which both counterparties pay a floating rate. There are

complex swap structures, such as options on swaps (called "swaptions"), and

swaps that do not begin until some future time (called "forward start

swaps"). We discuss these swaps below. It may be difficult to fully

appreciate the importance of these swap structures as a tool for managing the

interest rate risk of a financial institution in this book, because of our limited

coverage of risk management. What is important to appreciate is that these

swap structures are not just "bells and whistles" added to the plain vanilla

swap to make them more complicated: They are features that managers need

to control interest rate risk.

**`Swaps that vary the notional principal amount`** In a generic or plain
vanilla swap, the notional principal amount does not vary over the life of the
swap. This type of swap is sometimes referred to as a **bullet swap** . In
contrast, for amortizing, accreting, and roller-coaster swaps, the notional
principal amount varies over the life of the swap.

An **amortizing swap** is one in which the notional principal amount

decreases in a predetermined way over the life of the swap. Such a swap

would be used when the principal of the asset that is being hedged with the

swap amortizes over time. For example, in our illustration of the

asset/liability problem faced by the bank, the commercial loans are assumed

to pay only interest every six months and repay principal at the end of the

loan term. However, what if the commercial loan is a typical term loan (that

is, a loan that amortizes)? Or, suppose that it is a typical mortgage loan that

amortizes. In such circumstances, the outstanding principal for the loans

would decline, and the bank would need a swap in which the notional

principal amount amortizes in the same way as the loans.

Less common than the amortizing swap are the **accreting swap** and the

**roller-coaster swap** . An accreting swap is one in which the notional

principal amount increases in a predetermined way over time. In a rollercoaster swap, the notional principal amount can rise or fall from period to

period.

**`Basis swaps and constant maturity swaps`** The terms of a generic
interest rate swap call for the exchange of fixedand floating-rate payments.
In a **basis rate swap**, both parties exchange floating-rate payments based on
a different reference rate. As an example, assume a commercial bank has a
portfolio of loans in which the lending rate is based on the prime rate, but the
bank's cost of funds is based on the LIBOR. The risk the bank faces is that

the spread between the prime rate and LIBOR will change. This is referred

to as "basis risk." The bank can use a basis rate swap to make floating-rate

payments based on the prime rate (because that is the reference rate that

determines how much the bank is receiving on the loans) and receive

floating-rate payments based on the LIBOR (because that is the reference

rate that determines the bank's funding cost).

Another popular swap is to have the floating leg tied to a longer-term

rate, such as the two-year Treasury note, rather than on a money market rate.

For example, one of the parties to the swap would pay the two-year Treasury

rate, and the counterparty would pay the LIBOR. Such a swap is called a

**constant maturity swap** . The reference rate for determining the yield on the

constant maturity Treasury in a constant maturity swap is typically the

Constant Maturity Treasury rate published by the Federal Reserve.

Consequently, a constant maturity swap tied to this rate is called a **Constant**

**Maturity Treasury swap** .

**`Swaptions`** Options on interest rate swaps are called **swaptions** and grant
the option buyer the right to enter into an interest rate swap at a future date.
The time until expiration of the swap, the term of the swap, and the swap
rate are specified. The swap rate is the strike rate for the swaption. The
swaption can have any exercise style—American, European, and Bermuda.

There are two types of swaptions—a payer swaption and a receiver

swaption. A **payer swaption** entitles the option buyer to enter into an

interest rate swap in which the buyer of the option pays a fixed rate and

receives a floating rate. For example, suppose that the strike rate is 7%, the

term of the swap is three years, and the swaption expires in two years. Also,

assume that it has a European-type exercise provision. Then at the end of

two years, the buyer of this swaption has the right to enter into a three-year

interest rate swap in which the buyer pays 7% (the swap rate, which is equal

to the strike rate) and receives the reference rate.

In a **receiver swaption**, the buyer of the swaption has the right to enter

into an interest rate swap that requires paying a floating rate and receiving a

fixed rate. For example, if the strike rate is 6.25%, the swap term is five

years, and the option expires in one year, the buyer of this receiver swaption

has the right when the option expires in one year (assuming it is a Europeantype exercise provision) to enter into a four-year interest rate swap in which

the buyer receives a swap rate of 6.25% (i.e., the strike rate) and pays the

reference rate.

How is a swaption used? We can see its usefulness for managing interest

rate risk if we return to the bank–insurance company example. The bank

makes fixed-rate payments on the interest rate swap (10%) using the interest

rate it is earning on the commercial loans (10%). Suppose that the

commercial loan borrowers default on their obligations. The bank will not

receive from the commercial loans the 10% to make its swap payments. This

problem can be addressed at the outset of the initial swap transaction by the

bank entering into a swaption that effectively gives it the right to terminate

- r cancel the swap. That is, the bank will enter into a receiver swaption,
receiving fixed of 10% so as to offset the fixed rate it is obligated to pay
under the initial swap. In fact, the borrowers do not have to fail for the swap
to have an adverse impact on the bank. Suppose that the commercial loans
can be prepaid. Then the bank has a similar problem to that of having
borrowers default. For example, suppose rates on commercial loans decline
to 7% and the borrowers prepay. Then the bank would be obligated to make
the 10% payments under the terms of the swap. With the proceeds received
from the prepayment of the commercial loans, the bank may only be able to
invest in similar loans at 7%, for example, a rate that is less than the bank's

- bligations.

**`Forward start swaps`** A **forward start swap** is a swap wherein the swap
does not begin until some future date that is specified in the swap agreement.
Thus, the swap has a beginning date at some time in the future and a
maturity date. A forward start swap will also specify the swap rate at which
the counterparties agree to exchange payments commencing at the start date.

```
Interest Rate/Equity Swaps

```

In addition to interest rate swaps, there are currency and foreign exchange

swaps and **interest rate/equity swaps** . We will discuss the former in chapter

38. Here we explain interest rate/equity swaps.

To illustrate this swap, consider the following swap agreement:

   - The counterparties to this swap agreement are the Brotherhood of
Basket Weavers (a pension sponsor) and the Reliable Investment
Management Corporation (a money management firm).

   - The notional principal amount is \$50 million.
   - Every year for the next five years, the Brotherhood agrees to pay
Reliable Investment Management Corporation the return realized on the
S&P 500 stock index for the year minus 200 bps.

   - Every year for the next five years, Reliable Investment Management
Corporation agrees to pay the pension sponsor 10%.

For example, if over the past year, the return on the S&P 500 stock index is

14%, then the pension sponsor pays Reliable Investment Management

Corporation 12% (14% minus 2%) of \$50 million, or \$6 million, and the

money management firm agrees to pay the pension sponsor \$5 million (10%

times \$50 million).

```
Application to Creation of a Security

```

Swaps can be used by investment bankers to create a security. To see how

this is done, suppose the following. The Universal Information Technology

Company (UIT) seeks to raise \$100 million for the next five years on a

fixed-rate basis. UIT's investment banker, Credit Suisse, indicates that if

bonds with a maturity of five years are issued, the interest rate on the issue

would have to be 8%. At the same time, some institutional investors are

seeking to purchase bonds but are interested in making a play on the stock

market. These investors are willing to purchase a bond whose annual interest

rate is based on the actual performance of the S&P 500 stock market index.

Credit Suisse recommends to UIT's management that it consider issuing

a five-year bond whose annual interest rate is based on the actual

performance of the S&P 500. The risk with issuing such a bond is that UIT's

annual interest cost is uncertain, because the cost depends on the

performance of the S&P 500. However, suppose that the following two

transactions are entered into:

1. On January 1, UIT agrees to issue, using Credit Suisse as the
underwriter, a \$100 million, five-year bond issue whose annual interest

rate is the actual performance of the S&P 500 that year minus 300 bps.

The minimum interest rate, however, is set at zero. The annual interest

payments are made on December 31.

2. UIT enters into a five-year, \$100 million notional principal amount

interest rate/equity swap with Credit Suisse in which each year for the

next five years, UIT agrees to pay 7.9% to Credit Suisse and Credit

Suisse agrees to pay the actual performance of the S&P 500 that year

minus 300 bps. The terms of the swap call for the payments to be made

   - n December 31 of each year. Thus, the swap payments coincide with
the payments that must be made on the bond issue. Also, as part of the
swap agreement, if the S&P 500 minus 300 bps results in a negative
value, Credit Suisse pays nothing to UIT.

Let's look at what has been accomplished with these two transactions from

the perspective of UIT. Specifically, focus on the payments that must be

made by UIT on the bond issue and the swap, and the payments that it will

receive from the swap:

Interest payments on bond issue: S&P 500 return − 300 bps

Swap payment from Credit Suisse: S&P 500 return + 300 bps

Swap payment to Credit Suisse: 7.9%

Net interest cost: 7.9%

Thus, the net interest cost is a fixed rate despite the bond issue paying an

interest rate tied to the S&P 500. This transformation was accomplished by

using an interest rate/equity swap.

Several questions should be addressed. First, what was the advantage to

UIT of entering into this transaction? Recall that if UIT issued a bond, Credit

Suisse estimated that UIT would have to pay 8% annually. Thus, UIT has

saved 10 bps (8% minus 7.9%) per year. Second, why would investors

purchase this bond issue? As explained in previous chapters, restrictions are

imposed on institutional investors as to types of investment. For example, a

depository institution may not be entitled to purchase common stock;

however, it may be permitted to purchase a bond of an issuer such as UIT,

even though the interest rate is tied to the performance of common stocks.

Third, isn't Credit Suisse exposed to the risk of the performance of the S&P

500? Although it is difficult to demonstrate here, there are ways that Credit

Suisse can protect itself.

Although this may seem like a far-fetched application, it is not. In fact, it

is quite common. Debt instruments created by using swaps are commonly

referred to as "structured notes," which we discussed in chapter 26.

```
Interest Rate Caps and Floors

```

An interest rate cap and floor is an agreement between two parties in which

- ne party, for an upfront premium, agrees to compensate the other if a
designated interest rate (called the **reference rate** ) is different from a
predetermined level. When one party agrees to pay the other if the reference
rate exceeds a predetermined level, the agreement is referred to as an
**interest rate cap** - r **ceiling** . The agreement is referred to as an **interest rate**
**floor** when one party agrees to pay the other if the reference rate falls below
a predetermined level. The predetermined level of the reference interest rate
is called the **strike rate** . The terms of an interest rate agreement include:

1. The reference rate,
2. The strike rate that sets the ceiling or floor,
3. The length of the agreement,
4. The frequency of settlement, and
5. The notional principal amount.

For example, suppose that C buys an interest rate cap from D with terms

as follows:

1. The reference rate is the six-month LIBOR.
2. The strike rate is 8%.
3. The agreement is for seven years.
4. Settlement is every six months.
5. The notional principal amount is \$20 million.

Under this agreement, every six months for the next seven years, D will pay

C whenever six-month LIBOR exceeds 8%. The payment will equal the

dollar value of the difference between the six-month LIBOR and 8% times

the notional principal amount divided by two. For example, if six months

from now, the six-month LIBOR is 11%, then D will pay C 3% (11% minus

8%) times \$20 million divided by 2, or \$300,000. If six-month LIBOR is 8%

- r less, D does not have to pay anything to C.

As an example of an interest rate floor, assume the same terms as the

interest rate cap we just illustrated. In this case, if the six-month LIBOR is

11%, C receives nothing from D, but if the six-month LIBOR is less than

8%, D compensates C for the difference. For example, if the six-month

LIBOR is 7%, D will pay C \$100,000 (8% minus 7%, times \$20 million

divided by 2).

Interest rate caps and floors can be combined to create an **interest rate**

**collar** . This is done by buying an interest rate cap and selling an interest rate

floor. Some commercial banks and investment banking firms now write

- ptions on interest rate agreements for customers. Options on caps are called
**captions**, and options on floors are called **flotions** .

```
Risk/Return Characteristics

```

In an interest rate cap and floor, the buyer pays an upfront fee, which

represents the maximum amount the buyer can lose and the maximum

amount the writer of the agreement can gain. The only party that is required

to perform is the writer of the interest rate agreement. The buyer of an

interest rate cap benefits if the underlying interest rate rises above the strike

rate, because the seller (writer) must compensate the buyer. The buyer of an

interest rate floor benefits if the interest rate falls below the strike rate,

because the seller (writer) must compensate the buyer.

How can we better understand interest rate caps and interest rate floors?

In essence, these contracts are equivalent to a package of interest rate

- ptions. The question is: What types of options package make up a cap and
what types make up a floor? Recall from our earlier discussion of the
relationship between futures, FRAs, and swaps that the relationship depends

- n whether the underlying is an interest rate or a fixed-income instrument.
The same applies to call options, put options, caps, and floors.

If the underlying is considered a fixed-income instrument, its value

changes inversely with interest rates. Therefore,

```
For a Call Option on a Fixed-Income Instrument:

```

1. Interest rates increase → fixed-income instrument's price decreases
→ call option's value decreases;

2. Interest rates decrease → fixed-income instrument's price increases
→ call option's value increases.

```
For a Put Option on a Fixed-Income Instrument:

```

3. Interest rates increase → fixed-income instrument's price decreases
→ put option's value increases;

4. Interest rates decrease → fixed-income instrument's price increases
→ put option's value decreases.

To summarize,

When Interest Rates:

Value of: Increase Decrease

Long call Decrease Increase

Short call Increase Decrease

Long put Increase Decrease

Short put Decrease Increase

For a cap and floor, the situation is as follows:

When Interest Rates:

Value of: Increase Decrease

Short cap Decrease Increase

Long cap Increase Decrease

Short floor Increase Decrease

Long floor Decrease Increase

Therefore, buying a cap (long cap) is equivalent to buying a package of

puts on a fixed-income instrument, and buying a floor (long floor) is

equivalent to buying a package of calls on a fixed-income instrument.

In contrast, if an option is viewed as an option on an interest rate

(underlying), then buying a cap (long cap) is equivalent to buying a package

- f calls on interest rates. Buying a floor (long floor) is equivalent to buying a
package of puts on interest rates.

Note that, once again, a complex contract can be seen to be a package of

basic contracts, or options in the case of interest rate agreements.

```
Applications

```

To see how interest rate agreements can be used for asset/liability

management, consider the problems faced by the commercial bank and the

life insurance company in the example discussed earlier in this chapter.

Recall that the bank's objective is to lock in an interest rate spread over

its cost of funds. Yet, because it raises funds through a variable-rate

instrument and is basically borrowing short term, the bank's cost of funds is

uncertain. The bank may be able to purchase a cap so that the cap rate plus

the cost of purchasing the cap is less than the rate it is earning on its fixedrate commercial loans. If short-term rates decline, the bank does not benefit

from the cap, but its cost of funds declines. The cap, therefore, allows the

bank to impose a ceiling on its cost of funds but retains the opportunity to

benefit from a decline in rates. This use of a cap is consistent with the view

- f an interest rate cap as simply a package of call options.

The bank can reduce the cost of purchasing the cap by also selling a floor.

In this case, the bank agrees to pay the buyer of the floor if the underlying

rate falls below the strike rate. The bank receives a fee for selling the floor,

but it has sold off its opportunity to benefit from a decline in rates below the

strike rate. By buying a cap and selling a floor, the bank has created a range

(i.e., a collar) for its cost of funds.

Consider again from that same example of the application of interest rate

swaps the problem of the life insurance company that has guaranteed a 9%

rate on a GIC for the next five years and is considering the purchase of an

attractive floating-rate instrument in a private placement transaction. The

risk that the company faces is that interest rates will fall, so that it will not

earn enough to realize the 9% guaranteed rate plus a spread. The life

insurance company may be able to purchase a floor to set a lower bound on

its investment return, yet retain the opportunity to benefit should rates

increase. To reduce the cost of purchasing the floor, the life insurance

company can sell an interest rate cap. By doing so, however, it gives up the

- pportunity of benefiting from an increase in the six-month Treasury bill rate
above the strike rate of the interest rate cap.

```
Key Points

```

- A forward rate agreement (FRA) is the OTC equivalent of the exchangetraded futures contracts on short-term rates and is a cash settlement contract

in which the short-term reference rate is typically the LIBOR.

  - The elements of an FRA are the contract rate, reference rate,
settlement rate, notional amount, and settlement date.

   - The buyer of the FRA agrees to pay the contract rate and the seller of
the FRA agrees to receive the contract rate. The amount that must be
exchanged at the settlement date is the present value of the interest
differential.

   - An interest rate swap is an agreement whereby two counterparties
agree to exchange periodic interest payments based on a notional
principal amount.

   - A position in an interest rate swap can be interpreted as a position in
a package of forward contracts or a package of cash flows from buying
and selling cash market instruments.

   - Although the initial motivation for the swap market was borrower
exploitation of what were perceived to be credit arbitrage opportunities,
such opportunities are limited and depend on the presence of market
imperfections.

   - The swap market has evolved into a transactionally efficient market
for accomplishing asset/liability objectives to alter the cash flow
characteristics of assets (an asset swap) or liabilities (a liability swap).

   - Commercial bank and investment banking firms take positions in
swaps rather than act simply as intermediaries.

   - For swaps with maturities of less than five years, the swap spread is
driven by rates in the Eurodollar futures market, but for swaps with
maturities greater than five years, the spread is determined primarily by
the credit spreads in the corporate bond market.

   - In addition to the generic swap structure where one party pays fixed
and the other floating, there are swaps with varying notional principal
amounts, basis swaps (floating payments made by both parties),
constant maturity swaps, swaptions, and forward start swaps.

   - An interest rate cap and floor allows one party the right to receive
compensation from the writer of the agreement for an upfront premium
if a designated interest rate is different from a predetermined level.

   - An interest rate cap calls for one party to receive a payment if a
designated interest rate is above the predetermined level. An interest
rate floor lets one party receive a payment if a designated interest rate is
below the predetermined level.

   - An interest rate cap can be used to establish a ceiling on the cost of
funding; an interest rate floor can be used to establish a minimum

return.

   - A collar is created by buying an interest rate cap and selling an
interest rate floor.

   - An interest rate floor can be used by a depository institution to lock in
an interest rate spread over its cost of funds but maintain the

   - pportunity to benefit if rates decline.
   - The buyer of a floating-rate asset can use an interest rate floor to
establish a lower bound on its investment return, yet retain the

   - pportunity to benefit should rates increase.

```
Questions

```

1. Hieber Manufacturing Corporation purchased the following FRA
from the First Commercial Bank Corporation: (1) reference rate is the
three-month LIBOR, (2) contract rate is 6% (3) notional amount is for
\$20 million, and (4) number of days to settlement is 91 days.

a. Suppose the settlement rate is 6.5%. Which party must compensate the

- ther at the settlement date?

b. If the settlement rate is 6.5%, how much will the compensation be?

2. Explain whether you agree or disagree with the following statement:
"Both the buyers of an interest rate futures contract and FRA benefit if
interest rates decline."

3. At any time in the life of the interest rate swap, does the notional
principal become a cash flow to either party or to the intermediary?

4. Consider a swap with these features: Maturity is five years, notional
principal is \$100 million, payments occur every six months, the fixedrate payer pays a rate of 9.05% and receives the LIBOR, whereas the
floating-rate payer pays LIBOR and receives 9%. Now suppose that at a
payment date, the LIBOR is at 6.5%. What is each party's payment and
receipt at that date?

5. A bank borrows funds by issuing CDs that carry a variable rate
equal to the yield of the six-month Treasury bill plus 50 bps. The bank
gets the chance to invest in a seven-year loan that will pay a fixed rate

   - f 7%. So, the bank wants to engage in an interest rate swap designed to
lock in an interest spread of 75 bps. Give the outlines of two possible
swaps: one designed to change the asset's cash flow into a variable rate,
and the other designed to change the liability's cash flow into a fixed

rate.

6. Identify two factors that have contributed to the growth of the
interest rate swap market.

7. a. Describe the role of the intermediary in a swap.

b. What are the two factors that led swap brokers/intermediaries to act as

principals or dealers?

8. Suppose a dealer quotes these terms on a five-year swap: fixed-rate
payer to pay 9.5% for the LIBOR flat, and floating-rate payer to pay the
LIBOR flat for 9.2%.

a. What is the dealer's bid-ask spread?

b. How would the dealer quote the terms by reference to the yield on fiveyear Treasury notes, assuming this yield is 9%?

9. Explain the three major ways in which a party to a swap can reverse
that position in the secondary market for swaps.

10. Why can a fixed-rate payer in an interest rate swap be viewed as
being short the bond market, and the floating-rate payer be viewed as
being long the bond market?

11. a. Why would a depository institution use an interest rate swap?

b. Why would a corporation that plans to raise funds in the debt market use

an interest rate swap?

12. Suppose that a life insurance company has issued a three-year GIC
with a fixed rate of 10%. Under what circumstances might it be feasible
for the life insurance company to invest the funds in a floating-rate
security and enter into a three-year interest rate swap in which it pays a
floating rate and receives a fixed rate?

13. A portfolio manager buys a swaption with a strike rate of 6.5% that
entitles the portfolio manager to enter into an interest rate swap to pay a
fixed rate and receive a floating rate. The term of the swaption is five

years.

a. Is this swaption a payer swaption or a receiver swaption? Explain why.

b. What does the strike rate of 6.5% mean?

14. The manager of a savings and loan association is considering the
use of a swap as part of the association's asset/liability strategy. The
swap would be used to convert the payments of its portfolio of fixedrate residential mortgage loans into a floating payment.

a. What is the risk of using a plain vanilla or generic interest rate swap?

b. Why might a manager consider using an interest rate swap in which the

notional principal amount declines over time?

c. Why might a manager consider buying a swaption?

15. Suppose that a corporation is considering using an interest rate
swap in conjunction with the offering of a floating-rate bond issue. That
is, the corporation wants to use the swap to change the funding
arrangement from a floating rate to a fixed rate.

a. Would the corporation enter into a swap in which it pays or receives a

fixed rate?

b. Suppose that the corporation does not plan to issue the bond for one year.

What type of swap can the firm's management enter into in order to set the

terms of the swap today?

16. The Window Wipers Union (a pension sponsor) and the AllPurpose Asset Management Corporation (a money management firm)
entered into a four-year swap with a notional principal amount of \$150
million with the following terms: Every year for the next four years, the
Window Wipers Union agrees to pay All-Purpose Asset Management
the return realized on the S&P 500 for the year minus 400 bps and
receive from All-Purpose Asset Management 9%.

a. What type of swap is this?

b. In the first year when payments are to be exchanged, suppose that the

return on the S&P 500 is 7%. What is the amount of the payment that the

two parties must make to each other?

17. Several depository institutions offer CDs where the interest rate
paid is based on the performance of the S&P 500.

a. What is the risk that a depository institution encounters by offering such

CDs?

b. How can a depository institution protect itself against the risk you

identified in part (a)?

18. Suppose a savings and loan association buys an interest rate cap
that has these terms: The reference rate is the six-month Treasury bill
rate, the cap will last for five years, payment is semiannual, the strike
rate is 5.5%, and the notional principal amount is \$10 million. Suppose
further that at the end of some six-month period, the six-month
Treasury bill rate is 6.1%.

a. What is the amount of the payment that the savings and loan association

will receive?

b. What would the writer of this cap pay if the six-month Treasury rate were

5.45% instead of 6.1%?

19. What is the relationship between an interest rate agreement and an
interest rate option?

20. How can an interest rate collar be created?
21. Acme Insurance Company has purchased a five-year bond whose
interest rate floats with the LIBOR. Specifically, in a given year, the
interest rate is equal to the LIBOR plus 200 bps. At the same time the
insurance company purchases this bond, it enters into a floor agreement
with Goldman Sachs in which the notional principal amount is \$35
million with a strike rate of 6%. The premium Acme Insurance
Company agrees to pay Goldman Sachs each year is \$300,000.

a. Suppose that when it is necessary to determine whether a payment must

be made by Goldman Sachs, the LIBOR is 9%. How much must Goldman

Sachs pay Acme Insurance Company?

b. Suppose that when it is necessary to determine whether a payment must

be made by Goldman Sachs, the LIBOR is 3%. How much must Goldman

Sachs pay Acme Insurance Company?

c. What is the minimum interest rate that Acme Insurance Company has

locked in each year for the next five years by entering into this floor

agreement and buying the five-year bond, ignoring the premium that Acme

Insurance Company must make each year?

1. Bank for International Settlement, _Statistical Release: OTC Derivatives Statistics at End-December_
_2017_ (Basel, Switzerland: Bank for International Settlement, May 2018), https://www.bis.org/publ/otc
_hy1805.htm.

2. Whether the size of the spread is adequate is not relevant for us in this illustration.
3. See, for example, T. Lipsky and S. Elhalaski, "Swap-Driven Primary Issuance in the International
Bond Market" (New York: Salomon Brothers, January 1986).

4. See, for example, James Bicksler and Andrew Chen, "An Economic Analysis of Interest Rate
Swaps," _Journal of Finance_ 41 (1986): 645–655.

5. Two researchers demonstrate that differences in quality spreads between the fixed-rate and
floating-rate markets are consistent with option-pricing theory. See Ian Cooper and Antonio Mello,
"Default Spreads in the Fixed and in the Floating Rate Markets: A Contingent Claims Approach,"
_Advances in Futures and Options Research_ 3 (1988): 269–290.

6. This is especially relevant to currency swaps, which we discuss in chapter 38. Several examples of
the way swaps can be used to exploit differences in taxes are given in Clifford W. Smith, Charles W.
Smithson, and Lee MacDonald Wakeman, "The Evolving Market for Swaps," _Midland Corporate_
_Finance Journal_ 3 (1986): 20–32.

7. "Special Supplement on Swaps," _Euromoney_, July 1987, 14.
8. The discussion in this section is adapted from Frank J. Fabozzi and Steven V. Mann, _Floating-Rate_
_Securities_ (New Hope, PA: Frank J. Fabozzi Associates, 2000), chapter 6.

9. For an explanation of the valuation of swaps, see Jeffrey Buetow and Frank J. Fabozzi, _Valuation of_
_Interest Rate Swaps_ (New Hope, PA: Frank J. Fabozzi Associates, 2001).

10. Naturally, this observation presupposes that the reference rate for the swap is LIBOR.
Furthermore, part of the swap spread is attributable simply to the fact that LIBOR for a given maturity
is higher than the rate of a comparable-maturity U.S. Treasury. For a discussion of non-LIBOR swaps
and their valuation, see Buetow and Fabozzi, _Valuation of Interest Rate Swaps_ .

11. The default risk component of a swap spread will be smaller than for a comparable bond credit
spread for two reasons. First, because only net interest payments are exchanged rather than both
principal and coupon interest payments, the total cash flow at risk is lower. Second, the probability of
default depends jointly on the probability of the counterparty defaulting and whether the swap has a
positive value. See John C. Hull, _Introduction to Futures and Options Markets_, 3rd edition (Upper
Saddle River, NJ: Prentice Hall, 1998).

12. For a discussion of this point, see Andrew R. Young, _A Morgan Stanley Guide to Fixed Income_
_Analysis_ (New York: Morgan Stanley, 1997).

13. For a further discussion of these technical factors, see Fabozzi and Mann, _Floating-Rate_
_Securities_ .

# **`38`**

```
Market for Foreign Exchange Derivatives

CONTENTS

```

**Learning Objectives**

**FX Forward Contracts**

**Pricing FX Forward Contracts**

Link between Eurocurrency Market and Forward Prices

**FX Futures Contracts**

**Currency Option Contracts**

**FX Swaps and Currency Swaps**

FX Swaps

Currency Swaps

Currency coupon swap

Reasons for development of the currency swap market

**Key Points**

**Questions**

```
Learning Objectives

```

After reading this chapter, you will understand:

   - the different instruments for hedging foreign exchange (FX) risk:
forward contracts, futures contracts, options, and swaps;

   - the limitations of forward contracts and futures contracts for hedging
long-dated FX risk;

   - how a forward exchange rate is determined;
   - what interest rate parity is;
   - what is covered interest arbitrage is;
   - what an FX swap is;
   - what a currency swap is; and
   - the motivation for using swaps.

The foreign exchange (FX) market includes the spot (cash) market and the

derivatives market. Two facts about FX markets highlighted in chapter 19

are worth repeating here. First, more than half of the transactions in the FX

market are in the derivatives sector of the market. Second, the major

motivation for trades in the FX market is financial transactions by investors.

Chapter 19 covered the FX spot market. FX derivatives are the subject of

this chapter. These instruments include forward contracts, futures contracts,

- ptions, and swaps. An important theoretical relationship, referred to as
"interest rate parity," explains how the spot exchange rate and the interest
rates in two countries determine the forward exchange rate of their
currencies. We do not review here FX risk, because this topic was covered at
the end of chapter 19.

```
FX Forward Contracts

```

As explained in chapter 33, forward contracts require one party to buy the

underlying and the counterparty agreeing to sell that underlying for a

specific price at a designated date in the future. Here we consider forward

contracts in which the underlying is FX. In the FX market, such forward

contracts are also referred to as **outright forwards** . In chapter 34, we

explained that unlike a futures contract, which is traded on an exchange, a

forward contract is an over-the-counter (OTC) derivative.

In general, forward contracts involve physical delivery if the contract is

not closed out prior to the settlement date. In the FX market, there are

**nondeliverable forwards**, for which only a cash settlement takes place at

the settlement date. These contracts are typically used for emerging markets

because of the absence of liquidity for FX forward contracts, but they are

now increasingly used for major currencies.

Most FX forward contracts have a maturity of less than two years.

Longer-dated forward contracts have relatively large bid-ask spreads; that is,

the size of the bid-ask spread for a given currency increases with the

maturity of the contract. Consequently, forward contracts are not attractive

for hedging long-dated FX exposure.

As chapter 33 emphasizes, both forward contracts and futures contracts

can be used to lock in a certain price, which in this case would be the FX

rate. By locking in a rate and eliminating downside risk, the user forgoes the

- pportunity to benefit from any advantageous FX rate movement. Futures
contracts, which are creations of an exchange, have certain advantages over
forward contracts in many cases, such as stock indexes and Treasury
securities. In contrast, for FX, the forward market is the market of choice,
and trading there is much larger than trading on exchanges. However,
because the FX forward market is an interbank market, reliable information

- n the number of open contracts (commitments) outstanding at any time, or
- pen interest, is not publicly available.

As explained in chapter 19, the Bank for International Settlements

publishes the results of its survey of FX market transactions every three

years. The latest survey as of this writing, the publication, 2016 Triennial

Central Bank Survey, provides a breakdown of cash and derivatives

turnover. The results of the 2016 survey are shown in table 38.1. We

discussed the average daily trading for the FX spot market in chapter 19.

```
Table 38.1
```

Global FX derivative daily turnover, 2016 (billions of U.S. dollars).

Type of FX Transaction Daily Turnover

All FX transactions 5,067

Spot transactions 1,652

Outright forwards 600

FX swaps 2,378

Currency swaps 82

FX Options 254

```
Pricing FX Forward Contracts

```

In chapter 35, we showed the relationship between spot prices and forward

prices and explained how arbitrage ensures that the relationship holds. We

now apply similar considerations to the pricing of FX futures contracts on

the basis of the spot exchange rate using an extended example.

Consider a U.S. investor with a one-year investment horizon who has two

choices:

_Alternative 1:_ Deposit \$100,000 in a U.S. bank that pays 7%

compounded annually for one year.

_Alternative 2:_ Deposit in a bank in country X the U.S. dollar equivalent

  - f \$100,000 in country X's currency that pays 9% compounded
annually for one year.

The two alternatives and their outcomes one year from now are depicted

in figure 38.1. Which is the better alternative? It will be the alternative that

produces the most U.S. dollars one year from now. Ignoring U.S. and

country X's taxes on interest income or any other taxes, we need to know

two things in order to determine the better alternative: (1) the spot exchange

rate between U.S. dollars and country X's currency and (2) the spot

exchange rate one year from now between U.S. dollars and country X's

currency. The former is known; the latter is not.

```
Figure 38.1

```

Outcome of two alternatives: determination of theoretical forward rate.

_Note:_ CX, unit of currency for Country X.

However, we can determine the spot rate one year from now between

U.S. dollars and country X's currency that will make the investor indifferent

between the two alternatives.

_Alternative 1:_ The amount of U.S. dollars available one year from now

would be $107,000 ($100,000 × 1.07).

_Alternative 2:_ Assume that the spot rate is \$0.6558 for one unit of

country X’s currency at this time. We denote country X’s currency by

CX. Then, ignoring commissions, \$100,000 can be exchanged for CX

152,486 (\$100,000/6,558). The amount of country X's currency

available at the end of one year would be CX 166,210 (CX 152,476 ×

1.09).

The number of U.S. dollars for which CX 166,210 can be exchanged

depends on the exchange rate one year from now. Let _F_ denote the exchange

rate between these two currencies one year from now. Specifically, _F_

denotes the number of U.S. dollars that can be exchanged for one CX. Thus,

the number of U.S. dollars at the end of one year from the second alternative

is:

Amount in U.S. dollars one year from now = CX 166,210 × _F._

The investor will be indifferent between the two alternatives if the

number of U.S. dollars is \$107,000:

\$107,000 = CX 166,210 × _F._

Solving, we find that _F_ is equal to \$0.6438. Thus, if one year from now,

the spot exchange rate is \$0.6438 for one unit of country X's currency, then

the two alternatives will produce the same number of U.S. dollars. If more

than \$0.6438 can be exchanged for one unit of country X’s currency, then

the investor receives more than \$107,000 at the end of one year. An

exchange rate of \$0.6500 for one unit of country X’s currency, for example,

would produce $108,037 (CX 166,210 × $0.6500). The opposite is true if

less than \$0.6438 can be exchanged for one unit of country X's currency. For

example, if the future exchange rate is \$0.6400, the investor would receive

$106,374 (CX 166,210 × $0.6400).

Let us now look at this situation from the perspective of an investor in

country X. Suppose that an investor in country X with a one-year investment

horizon has two alternatives:

_Alternative 1:_ Deposit CX 152,486 in a bank in country X that pays 9%

compounded annually for one year.

_Alternative 2:_ Deposit the equivalent of CX 152,486 in U.S. dollars in a

U.S. bank that pays 7% compounded annually for one year.

Once again, assume that the spot exchange rate is \$0.6558 for one unit of

country X’s currency. The investor in country X will select the alternative

that generates the most CX at the end of one year. The first alternative would

generate CX 166,210 (CX 152,486 × 1.09). The second alternative requires

that CX be exchanged for U.S. dollars at the spot exchange rate at this time.

Given the spot exchange rate assumed, CX 152,486 can be exchanged for

$100,000 (CX 152,486 × $0.6558). At the end of one year, the second

alternative would generate $107,000 ($100,000 × 1.07). Letting _F_ continue

to denote the number of U.S. dollars in country X, following alternative 2

would realize the following amount of country X's currency one year from

now:

Amount of country X's currency one year from now = \$107,000/ _F._

The investor will be indifferent between the two alternatives if

\$107,000/ _F_ = CX 166,210.

The equation yields a value for _F_  - f \$0.6438, the same exchange rate that

we found when we sought the exchange rate one year from now that would

make the U.S. investor indifferent between the two alternatives facing that

investor.

Now suppose that a dealer quotes a one-year forward exchange rate

between the two currencies. The one-year forward exchange rate fixes today

the exchange rate one year from now. Thus, if the one-year forward

exchange rate quoted is \$0.6438 for one unit of country X’s currency,

investing in the bank in country X will provide no arbitrage opportunity for

the U.S. investor. If the one-year forward rate quoted is more than \$0.6438

for one unit of country X's currency, the U.S. investor can arbitrage the

situation by selling country X's currency forward (and buying U.S. dollars

forward for CX).

To see how this arbitrage opportunity can be exploited, suppose that the

- ne-year forward exchange rate is \$0.6500 for one unit of country X’s
currency. Also, assume that the borrowing and the lending rates in each
currency’s country are the same. Suppose that the U.S. investor borrows
\$100,000 for one year at 7% compounded annually and enters into a forward
contract agreeing to deliver CX 166,210 1 year from now at \$0.6500 per CX.
That is, one year from now, the investor agrees to deliver CX 166,210 in
exchange for $108,037 (CX 166,210 × $0.6500).

The \$100,000 that was borrowed can be exchanged for CX 152,486 at the

spot rate of \$0.6558 to one unit of country X's currency, which can be

invested in country X at 9%. One year from now, the U.S. investor will have

CX 166,210 from the investment in country X, which can be delivered

against the forward contract. The U.S. investor will receive \$108,037 and

repay \$107,000 to satisfy the bank loan, netting \$1,037. Assuming that the

counterparty to the forward contract does not default, this riskless arbitrage

situation results in a \$1,037 profit generated with no initial investment. This

riskless profit will prompt many arbitrageurs to follow this strategy and will,

- bviously, result in the U.S. dollar rising relative to country X's currency in
the forward exchange-rate market, or possibly some other adjustment. [1]

However, if the one-year forward exchange rate quoted is less than

\$0.6438, an investor in country X can arbitrage the situation by buying CX

forward (and by selling U.S. dollars forward). This riskless arbitrage again

leads arbitrageurs to act, with the result that the forward exchange rate of

U.S. dollars relative to CX falls. [2] The conclusion of this argument is that the

- ne-year forward exchange rate must be \$0.6438, because any other forward
exchange rate would result in an arbitrage opportunity for either the U.S.
investor or the investor in country X.

Thus, the spot exchange rate and the interest rates in two countries

determine the forward exchange rate of their currencies. The relationship

among the spot exchange rate, the interest rates in two countries, and the

forward rate is called **interest rate parity** . The parity relationship implies

that an investor, by hedging in the forward exchange-rate market, realizes

the same domestic return whether investing domestically or in a foreign

country. The arbitrage process that forces interest rate parity is called

**covered interest arbitrage** .

Mathematically, interest rate parity between the currencies of two

countries, A and B, can be expressed in this way:

Let

_I_ = amount of A's currency to be invested for a time period of length _t_,

_S_ = spot exchange rate: the price of foreign currency in terms of

domestic currency (units of domestic currency per unit of foreign

currency),

_F_ = _t_  - period forward rate: the price of foreign currency _t_ periods from

now,

_i_ A = interest rate on an investment maturing at time _t_ in country A,

_i_ B = interest rate on an investment maturing at time _t_ in country B.

Then

_I_ (1 + _i_ A) = ( _I_ / _S_ )(1 + _i_ B) _F_ .

To illustrate, let country A be the United States and country B represent

country X. In our example, we have:

_I_ = \$100,000 for one year,

_S_ = \$0.6558,

_F_ = \$0.6438,

_i_ A = 0.07,

_i_ B = 0.09.

Then, according to interest rate parity, this relationship holds:

$100,000(1.07) = ($100,000/$0.6558)(1.09)($0.6438),

$107,000 = $107,005,

where the \$5 difference is due to rounding.

Interest rate parity can also be expressed as:

(1 + _i_ A) = ( _F_ / _S_ )(1 + _i_ B).

Rewriting the equation, we obtain the theoretical forward rate implied by

the interest rates and spot exchange rate:

Although we have referred so far to investors, we could use borrowers as

well to illustrate interest rate parity. A borrower has the choice of obtaining

funds in a domestic or foreign market. Interest rate parity ensures that a

borrower who hedges in the forward exchange-rate market realizes the same

domestic borrowing rate whether borrowing domestically or in a foreign

country.

To derive the theoretical forward exchange rate using the arbitrage

argument, we made several assumptions. When the assumptions are violated,

the actual forward exchange rate may deviate from the theoretical forward

exchange rate. First, when deriving the theoretical forward exchange rate,

we assumed that the investor faced no commissions or bid-ask spread when

exchanging in the spot market today and at the end of the investment

horizon. In practice, investors incur such costs, which cause the actual

forward exchange rate to be plus or minus a small amount of the theoretical

rate.

Second, we assumed that the borrowing and lending rates in each

currency are the same. Dropping this unrealistic assumption eliminates the

possibility of a single theoretical forward exchange rate and instead implies

a band around a level reflecting borrowing and lending rates. The actual rate

should be within this band.

Third, we ignored taxes. In fact, the divergence between actual and

theoretical forward exchange rates can be the result of the different tax

structures of the two countries. Finally, we assumed that arbitrageurs can

borrow and invest in another country as much as they want to exploit

mispricing in the exchange market. It should be noted, however, that any

restrictions on foreign investing or borrowing in each country impede

arbitrage and may cause a divergence between actual and theoretical forward

exchange rates.

```
Link between Eurocurrency Market and Forward Prices

```

To derive the interest rate parity, we looked at the interest rates in both

countries. In fact, market participants in most countries look to one interest

rate to perform covered interest arbitrage, and that is the interest rate in the

Eurocurrency market. The **Eurocurrency market** is the name of the

unregulated and informal market for bank deposits and bank loans

denominated in a currency other than that of the country where the bank

initiating the transaction is located. Examples of transactions in the

Eurocurrency market are a British bank in London that lends U.S. dollars to

a French corporation, and a Japanese corporation that deposits Swiss francs

in a German bank. An investor seeking covered interest arbitrage will

accomplish it with short-term borrowing and lending in the Eurocurrency

market.

The largest sector of the Eurocurrency market involves bank deposits and

bank loans in U.S. dollars and is called the "Eurodollar market." The seed

for the Eurocurrency market was, in fact, the Eurodollar market. As

international capital market transactions increased, the market for bank

deposits and bank loans in other currencies developed.

```
FX Futures Contracts

```

As explained in chapter 35, futures contracts are exchange-traded products,

as opposed to forward contracts, which are OTC contracts. In the case of FX

futures contracts, the major exchange is the Chicago Mercantile Exchange

(CME). The FX rates traded are those between the U.S. dollar and the

currencies of the following countries: Australia, Belgium, Canada, Japan,

New Zealand, Norway, Switzerland, the United Kingdom, and Sweden. In

addition, there are futures contracts in which the underlying is a cross-rate

pair (i.e., an FX rate that does involve the local currency). For example, for a

U.S. investor, the FX rate between the euro and Japanese yen would be a

cross-rate pair. There are futures contracts on the following cross-rates: the

Swiss franc/Japanese yen exchange rate, the euro/Canadian dollar exchange

rate, and the British pound/Japanese yen exchange rate. Futures contracts are

also available for emerging market currency pairs with the U.S. dollar and

the following four currencies: the Brazilian real, the Czech koruna, the

Israeli shekel, and the Hungarian forint. Cross-rate pairs are also available

with the euro.

The amount of each foreign currency that must be delivered for a contract

varies by currency. For example, the British pound futures contract calls for

delivery of 62,500 pounds, the Japanese yen futures contract calls for

delivery of 12.5 million yen, and the euro futures contract calls for delivery

- f €125,000. "E-micro" contracts provide for one-tenth of the contract size.
The maturity cycle for currency futures is March, June, September, and
December. The longest maturity is one year. Consequently, as in the case of
a currency forward contract, currency futures do not provide a good vehicle
for hedging long-dated FX risk exposure.

```
Currency Option Contracts

```

In contrast to a forward or futures contract, an option gives the option buyer

the opportunity to benefit from favorable exchange-rate movements but

establishes a maximum loss. The option price is the cost of arranging such a

risk/return profile.

The two types of foreign currency options are options on the foreign

currency and futures options. The latter are options to enter into FX futures

contracts. (We describe the features of futures options in chapter 34.) Futures

- ptions are traded on the CME, the trading location of the FX futures

contracts.

Options on foreign currencies have been traded on the Nasdaq QMX. The

foreign currency pairs that are currently traded are the U.S. dollar and the

following: Australian dollar, British pound, Canadian dollar, euro, Japanese

yen, Swiss franc, and New Zealand dollar. The exercise style is European

(i.e., the option buyer can only exercise at the expiration date). The number

- f units of foreign currency underlying each option contract is 10,000 units
- f the currency except for the Japanese yen, for which it is JPY one million.

The factors that affect the price of any option are discussed in chapter 35.

One key factor is the expected volatility of the underlying over the life of the

- ption. In the case of currency options, the underlying is the foreign
currency specified by the option contract. So, the volatility that affects the

- ption's value is the expected volatility of the exchange rate between the two

currencies from the present time to the expiration of the option. The strike

price also is an exchange rate, and it affects the option's value: the higher the

strike price is, the lower the value of a call will be, and the higher the value

- f a put. Another factor that influences the option price is the relative riskfree interest rate in the two countries. [3]

```
FX Swaps and Currency Swaps

```

In chapter 37 we discussed interest rate swaps—a transaction in which two

counterparties agree to exchange interest payments with no exchange of

principal. The FX market has two types of swaps: FX swaps and currency

swaps. As can be seen from table 38.1, currency swaps are a small part of

the derivatives market. In contrast, FX swaps are the largest part of the

derivatives market. Moreover, FX swap transactions exceed spot

transactions in number.

```
FX Swaps

```

To see how a company may use an FX swap, assume the following:

   - A U.S. manufacturing firm operating primarily in the United States
has generated revenue of €1 million.

   - The company's management needs the revenue generated in euros for
its U.S. operations to be paid in U.S. dollars.

  - The company's management knows that four months from now, it
will need to pay suppliers of material in Europe €1 million.

Because of the second assumption, management cannot simply hold euros

for the four months. Consider two of the possible alternatives available to

management for dealing with the €1 million that must be paid four months

from now:

_Alternative 1:_ Sell €1 million today in exchange for U.S. dollars. The

number of U.S. dollars received will be based on the spot FX rate. In

four months, purchase €1 million at the spot FX rate for euro/U.S.

dollar at that time.

_Alternative 2:_ Sell to a bank €1 million today in exchange for U.S.

dollars at the spot FX rate and simultaneously agree to repurchase from

the bank €1 million at today's forward FX rate.

Let's look at the FX risk associated with alternative 1. In four months

when the company must acquire €1 million, the FX rate between euros and

U.S. dollars is unknown. More specifically, if the U.S. dollar depreciates

relative to the euro, it will cost the company more U.S. dollars to acquire

euros. With alternative 2, FX risk has been eliminated, because the company

has locked in a specific FX rate by agreeing to purchase €1 million at the

forward rate at the time the transaction is entered into.

Let's take a closer look at these two alternatives. Alternative 1 involves

two transactions at spot rates, which is what results in the FX risk. In

contrast, alternative 2 involves two simultaneous transactions, one at the spot

rate and the other at the forward rate. Consequently, alternative 2 is

effectively an arrangement for hedging FX risk. However, the transaction

involves two transaction costs.

Suppose that the company can enter into one agreement that covers both

transactions in alternative 2. Well there is such an agreement: That is

precisely what an FX swap is. Given our understanding of alternative 2, we

can now define an FX swap: It is an agreement whereby one party agrees to

sell to a counterparty a specified amount of a currency based on the current

FX spot rate and simultaneously agrees at a specified future date to buy the

same amount of that currency at the current FX forward rate.

Note that an FX swap still involves risk, because we are dealing with an

OTC derivative. That is, although the FX risk may be hedged, there is

counterparty risk.

```
Currency Swaps

```

In a **currency swap**, both interest and principal are exchanged. The best way

to explain a currency swap is with an illustration.

Assume that two companies, a U.S. company and a Swiss company, each

seek to borrow for 10 years in its domestic currency. The U.S. company

seeks U.S. \$100 million debt, and the Swiss company seeks debt in the

amount of CHF 127 million. For reasons that we explore later, let's suppose

that each wants to issue 10-year bonds in the bond market of the other

country, and those bonds are denominated in the other country's currency.

That is, the U.S. company wants to issue the Swiss franc equivalent of U.S.

\$100 million in Switzerland, and the Swiss company wants to issue the U.S.

dollar equivalent of CHF 127 million in the United States.

Let's also assume the following:

1. At the time when both companies want to issue their 10-year bonds,
the spot exchange rate between the U.S. dollar and CHF is one U.S.
dollar for 1.27 Swiss francs.

2. The coupon rate that the U.S. company would have to pay on the 10year, Swiss franc–denominated bonds issued in Switzerland is 6%.
3. The coupon rate that the Swiss company would have to pay on the
10-year, U.S. dollar–denominated bonds issued in the United States is

11%.

By the first assumption, if the U.S. company issues the bonds in

Switzerland, it can exchange the CHF 127 million for U.S. \$100 million. By

issuing U.S. \$100 million of bonds in the United States, the Swiss company

can exchange the proceeds for CHF 127 million. Therefore, both get the

amount of financing they seek. Assuming the coupon rates given by the last

two assumptions, and assuming for purposes of this illustration that coupon

payments are made annually, the cash outlays that the companies must make

for the next 10 years are summarized as follows:

Year U.S. Company (in CHF) Swiss Company (in U.S. $)

1–10 7,620,000 11,000,000

10 127,000,000 100,000,000

Each issuer faces the risk that, at the time a payment on its liability must

be made, its domestic currency will have depreciated relative to the other

currency. Such a depreciation would require a greater outlay of the domestic

currency to satisfy the liability. That is, both firms are exposed to FX risk.

In a currency swap, the two companies issue bonds in the other's bond

market and enter into an agreement requiring that:

1. The two parties exchange the proceeds received from the sale of the
bonds.

2. The two parties make the coupon payments to service the debt of the

 - ther party.

3. At the termination date of the currency swap (which coincides with
the maturity of the bonds), both parties agree to exchange the par value

 - f the bonds.

In our illustration, these arrangements result in the following:

1. The U.S. company issues 10-year, 6% coupon bonds with a par
value of CHF 127 million in Switzerland and gives the proceeds to the
Swiss company. At the same time, the Swiss company issues 10-year,
11% bonds with a par value of U.S. \$100 million in the United States
and gives the proceeds to the U.S. company.

2. The U.S. company agrees to service the coupon payments to the
Swiss company by paying the U.S. \$11,000,000 per year for the next 10
years to the Swiss company: the Swiss company agrees to service the
coupon payments of the U.S. company by paying CHF 7,620,000 for
the next 10 years to the U.S. company.

3. At the end of 10 years (the termination date of this currency swap
and the maturity of the two bond issues), the U.S. company would pay
U.S. \$100 million to the Swiss company, and the Swiss company would
pay CHF 127 million to the U.S. company.

This complex agreement is diagrammed in figure 38.2.

```
Figure 38.2

```

A currency swap example.

Now let's assess what this transaction accomplishes. Each party received

the amount of financing it sought. The U.S. company's coupon payments are

in dollars, not Swiss francs; the Swiss company's coupon payments are in

Swiss francs, not U.S. dollars. At the termination date, both parties will

receive an amount sufficient in their local currency to pay off the holders of

their bonds. With the coupon payments and the principal repayment in their

local currency, neither party faces FX risk.

In practice, the two companies would not deal directly with each other.

Instead, either a commercial bank or an investment banking firm would

function as an intermediary (as either a broker or dealer) in the transaction.

As a broker, the intermediary would simply bring the two parties together,

receiving a fee for the service. If instead the intermediary served as a dealer,

it would not only bring the two parties together but would also guarantee

payment to both parties. Thus, if one party were to default, the counterparty

would continue to receive its payments from the dealer. Of course, in this

arrangement, both parties are concerned with the credit risk of the dealer.

When the currency swap market started, transactions were typically

brokered. The more prevalent arrangement today is that the intermediary

acts as a dealer.

As we explained in chapter 37, an interest rate swap is nothing more than

a package of forward contracts. The same is true for a currency swap: It is

simply a package of currency forward contracts.

**`Currency coupon swap`** In our illustration, we assumed that both parties
made fixed cash flow payments. Suppose instead that one of the parties
sought floating-rate rather than fixed-rate financing. Returning to the same
illustration, let's assume that instead of fixed-rate financing, the Swiss
company wanted LIBOR-based financing. In this case, the U.S. company
would issue floating-rate bonds in Switzerland. Suppose that it could do so
at a rate of LIBOR plus 50 basis points. Because the currency swap would
call for the Swiss company to service the coupon payments of the U.S.
company, the Swiss company would make annual payments of LIBOR plus
50 basis points. The U.S. company would still make fixed-rate payments in
U.S. dollars to service the debt obligation of the Swiss company in the
United States. Now, however, the Swiss company would make floating-rate
payments (LIBOR + 50 basis points) in Swiss francs to service the debt

- bligation of the U.S. company in Switzerland.

Currency swaps in which one of the parties pays a fixed rate and the

counterparty pays a floating rate are called **currency coupon swaps** .

**`Reasons for development of the currency swap market`** Why would
companies find a currency swap beneficial? In a global financial market
without the market imperfections of regulations, taxes, and transaction costs,
the cost of borrowing should be the same whether the issuer raises funds

domestically or in any foreign capital market. In a world with market

imperfections, it may be possible for an issuer to reduce its borrowing cost

by borrowing funds denominated in a foreign currency and hedging the

associated exchange-rate risk, also known as an arbitrage opportunity. The

currency swap allows borrowers to capitalize on any such arbitrage

- pportunities.

Prior to the establishment of the currency swap market, capitalizing on

such arbitrage opportunities required use of the currency forward market.

The market for long-dated forward exchange-rate contracts is thin, however,

which increases the cost of eliminating FX risk. Eliminating FX risk in our

U.S.-Swiss illustration would have required each issuer to enter 10 currency

forward contracts (one for each yearly cash payment that the issuer was

committed to make in the foreign currency). The currency swap provides a

more transactionally efficient means for protecting against FX risk when an

issuer (or its investment banker) identifies an arbitrage opportunity and seeks

to benefit from it.

As the currency swap market developed, the arbitrage opportunities for

reduced funding costs that were available in the early days of the swap

market became less common. In fact, it was the development of the swap

market that reduced arbitrage opportunities. When these opportunities do

arise, they last for only a short time, usually less than a day.

As another motivation for currency swaps, some companies seek to raise

funds in foreign countries as a means of increasing their recognition by

foreign investors, even though the cost of funding is the same as in the

United States. The U.S. company in our illustration might be seeking to

expand its potential sources of future funding by issuing bonds today in

Switzerland.

```
Key Points

```

- FX derivative instruments include forward contracts (outright forward
contracts), futures contracts, options, and swaps.

   - Nondeliverable forwards are cash settlement at the settlement date

rather than physical delivery.

   - Most FX forward contracts have a maturity of less than two years.
   - Longer-dated forward contracts have relatively large bid-ask spreads,
and therefore, forward contracts are not attractive for hedging longdated FX exposure.

   - Interest rate parity determines the relationship among the spot
exchange rate, the interest rates in two countries, and the forward rate.

   - Interest rate party is ensured by the application of covered interest
arbitrage.

   - Interest rate parity implies that investors and borrowers who hedge in
the forward exchange-rate market will realize the same domestic return

  - r face the same domestic borrowing rate whether investing or
borrowing domestically or in a foreign country.

   - Futures contracts on major currency pairs with the U.S. dollar, select
cross-rate currency pairings, and select emerging market currencies
paired with the U.S. dollar and the euro are available.

   - Options and futures options are available on currency pairings with
the U.S. dollar.

   - There are two types of swap derivatives in the FX market: FX swaps
and currency swaps.

   - An FX swap is an agreement whereby one party agrees to sell to a
counterparty a specified amount of a currency based on the current FX
spot rate and simultaneously agrees at a specified future date to buy the
same amount of that currency at the current FX forward rate.

  - A currency swap is effectively a package of currency forward
contracts, with the advantage that it allows hedging of long-dated FX
risk and is more transactionally efficient than futures or forward

contracts.

  - Currency swaps are used to arbitrage the increasingly rare
   - pportunities in the global financial market for raising funds at less cost
than in the domestic market.

   - Currency coupon swaps are a type of currency swap in which one of
the parties pays a fixed rate and the counterparty pays a floating rate.

```
Questions

```

1. "With the exception of FX futures, all FX derivatives are OTC
instruments." Explain whether you agree or disagree with this

statement.

2. "Hedging with FX derivatives eliminates all risks." Explain whether
you agree or disagree with this statement.

3. "The FX forward rate is determined solely by the market's expected
change in the FX rate in the future." Explain whether you agree or
disagree with this statement.

4. Suppose that the spot exchange rate today between the U.S. dollar
and the currency of country W is U.S. \$1.9905 per unit of currency of
country W, and that for the U.S. dollar and the currency of country V is
U.S. \$0.00779 per unit of country V. The following forward rates are
also quoted today:

Country W Currency Country V Currency

30 days 1.9908 0.007774

60 days 1.9597 0.007754

90 days 1.9337 0.007736

a. Explain what someone who enters into a 30-day forward contract to

deliver the currency of country W is agreeing to do.

b. Explain what someone who enters into a 90-day forward contract to buy

the currency of country V is agreeing to do.

c. What can you infer about the relationship between U.S. and country W's

short-term interest rates and U.S. and country V's short-term interest rates?

5. What is the drawback of using FX outright forward contracts for
hedging long-dated positions?

6. What is the rationale for nondeliverable forward contracts when the

underlying is an emerging market currency?

7. How does covered interest arbitrage relate to interest rate parity?
8. Why are the interest rates in the Eurocurrency market important in
covered interest arbitrage?

9. Suppose you know the following items: you can borrow and lend
\$500,000 at the one-year interest rate in the United States of 7.5%; in
country A both the borrowing and lending rates are 9.2%; the spot
exchange rate between the U.S. dollar and country A’s currency is now
\$0.1725 per unit of currency of country A; and the one-year forward
exchange rate is \$0.2 per unit of currency of country W.

a. Explain how you could make a profit without risk and without investing

any of your own money. (Assume commissions, fees, etc., to be equal to

zero.)

b. Aside from assuming commissions, fees, and so on, to be zero, several

unrealistic assumptions must be made in answering part (a). What are they?

c. Even if we incorporated realistic considerations regarding commissions

and so on, the interest rate and exchange-rate numbers in this question would

probably produce a profit of some size. Why do you think opportunities like

the one in this question are unlikely to come along often in the real world?

10. If the one-year borrowing and lending rates are 3% in country ABC
and 4% in the United States, and if the forward exchange rate between
dollars and the currency of country ABC is \$0.007576 per unit of
currency of country ABC (i.e., \$1 could buy 131.99 units of country
ABC's currency), then what should the spot exchange rate of dollars for
the currency of country ABC be?

11. Explain why you agree or disagree with the following statement:
"FX futures contracts are only available between major currencies and
the U.S. dollar, and there are no contracts for emerging market
currencies."

12. "FX outright forward contracts are the most common type of FX
derivative." Explain whether you agree or disagree with this statement.

13. The following excerpt appeared in the January 14, 1991, _Wall_

_Street Letter:_

The Philadelphia Stock Exchange plans to list the first nondollar denominated options to trade in the

United States, according to sources at the exchange. The Phlx will list cross-currency options based on

the relationships between the Deutsche mark and the Japanese yen, as well as British pound/yen and

pound/mark options, a spokesman confirmed.…

The exchange currently lists currency options that are based on the relationship between that

currency and the dollar, one Phlx member explained. "If you're not American," he added, "then the

dollar doesn't do it for you." The three new cross-currency options should be attractive to the same

banks and broker-dealers that currently trade dollar-based currency options, as well as non-U.S.

entities that have interests in other currencies.

Cross-currency options are "a very big part of international trade and international capital markets,"

and are big over-the-counter products, but none currently trades on an exchange. The advantage of

exchange-traded options, the Phlx member said, is that "99% of the customers don't have the credit"

to trade such a product over-the-counter with a big bank.

a. Explain what the representative of the Phlx means by saying, "If you're

not American, then the dollar doesn't do it for you."

b. Why is the credit of customers critical in the OTC market but not for an

exchange-traded contract?

c. When the Philadelphia Stock Exchange filed with the SEC to list crosscurrency options, the exchange indicated that the demand for this product

has been "spawned by recent large fluctuations and dramatic increases in

volatility levels for cross-rate options." Why would this increase the demand

for cross-currency options?

14. What is the major difference between a currency swap and an
interest rate swap?

15. Assume the following:

- A French manufacturing firm operating primarily in France has generated
revenue of U.S. \$1 million from sales in the United States.

- The company's management needs the sales proceeds generated in U.S.
dollars for its French operations to be paid in euros and therefore the
company cannot simply hold U.S. dollars for the six months.

- The company's management knows that six months from now, it will need
to pay suppliers of material in the United States \$1 million.

The company is considering the following two alternatives:

_Alternative I:_ Sell U.S. \$1 million today in exchange for euros. The number

- f euros received will be based on the spot FX rate. In six months, purchase
U.S. \$1 million at the spot FX rate for euro/U.S. dollar at that time.

_Alternative II:_ Sell to a bank U.S. \$1 million today in exchange for U.S.

dollars at the spot FX rate and simultaneously agree to repurchase from the

bank U.S. \$1 million at today's forward FX rate.

a. Which of these two alternatives involves two spot rate transactions?

b. Which of these two alternatives exposes the company to FX risk and

why?

c. Which of these two alternatives hedges FX risk and why?

d. What type of FX derivative can be used instead of entering the

transactions required for alternative II?

16. How does an FX swap differ from a currency swap?
17. Actually, a combination of things may occur when U.S. investors attempt to exploit this situation:
(1) the spot exchange rate of U.S. dollars relative to country X's currency will fall as U.S. investors
sell dollars and buy CX; (2) U.S. interest rates will rise in the United States as investors borrow in the
United States and invest in country X; (3) country X's interest rates will fall as more is invested in
country X; and (4) the one-year forward rate of U.S. dollars relative to the CX will fall. In practice, the
last effect will dominate.

18. A combination of things may occur when country X investors attempt to exploit this situation: (1)
the spot exchange rate of U.S. dollars relative to CX will rise as country X investors buy dollars and
sell CX; (2) country X's interest rates will fall as more is invested in the United States; and (3) the

- ne-year forward rate of U.S. dollars relative to the CX will rise. In practice, the last effect will
dominate.

3. To understand why, recall the portfolio we created in chapter 35 to replicate the payoff of a call

- ption on an asset. A portion of the asset is purchased with borrowed funds. In the case of a currency
- ption, it involves purchasing a portion of the foreign currency underlying the option. However, the
foreign currency acquired can be invested at a risk-free interest rate in the foreign country.
Consequently, the pricing of a currency option is similar to the pricing of an option on an incomeearning asset, such as a dividend-paying stock or an interest-paying bond. At the same time, the
amount that must be set aside to meet the strike price depends on the domestic rate. Thus, the option
price, just like interest rate parity, reflects both rates.

# **`39`**

```
Market for Credit Risk Transfer Vehicles

CONTENTS

```

**Learning Objectives**

**Credit Derivatives**

ISDA Documentation

Reference entity and reference obligation

Credit events

**Credit Default Swaps**

Single-Name CDSs

Basket CDSs

CDS Index

**Collateralized Debt Obligations**

Structure of a CDO

Future of CDO Products

**Credit-Linked Notes**

**Concerns about CRT Vehicles**

Transfer of Risk May Not Be Clean

Market Participants May Fail to Understand the Risks

Concentration of Risk Is Potentially High

Adverse Selection May Occur

**Key Points**

**Questions**

```
Learning Objectives

```

After reading this chapter, you will understand:

   - what a credit risk transfer vehicle is;
   - what a credit derivative is;
   - the purpose of a credit derivative;
   - types and classification of credit derivatives;
   - how a credit event can be defined;
   - what a credit default swap is;
   - the different types of credit default swaps: single-name credit default
swap, basket default swap, and credit default swap index;

   - what is meant by a collateralized debt obligation, collateralized bond
   - bligation, and collateralized loan obligation;
   - the difference between a collateralized debt obligation and an assetbacked security;
   - the structure of a collateralized debt obligation;
   - the difference between an arbitrage and a balance sheet transaction;
   - the economics underlying an arbitrage transaction;
   - the motivation for a balance sheet transaction;
   - what a synthetic collateralized debt obligation is and the motivation
for its creation;

   - what a credit-linked note is; and
   - concerns with the new credit risk transfer vehicles.

The development of the derivatives markets prior to the turn of the twentyfirst century provided participants in financial markets with efficient

vehicles for the transfer of interest rate, price, and currency risks, as well as

for enhancing the liquidity of the underlying assets. However, the market for

the efficient transfer of credit risk has developed only recently. As explained

in chapter 10, credit risk is the risk that a debt instrument will decline in

value as a result of the borrower's inability (real or perceived) to satisfy the

contractual terms of its borrowing arrangement. In the case of corporate debt

- bligations, credit risk encompasses default, credit spread, and rating
downgrade risks.

The most obvious way for a financial institution, such as a bank, to

transfer the credit risk of a loan it has originated is to sell it to another party.

Loan covenants typically require that the borrower be informed of the sale.

The drawback of a sale in the case of bank loans (more specifically,

leveraged loans) is the potential impairment of the originating financial

institution's relationship with the corporate borrower whose loan is sold. As

explained in chapter 26, syndicated loans overcome the drawback of an

- utright sale, because banks in the syndicate may sell their loan shares in the
secondary market. The sale may be through an assignment or through
participation. Although the assignment mechanism for a syndicated loan
requires the approval of the borrower, participation does not, because the
payments are merely passed through to the purchaser and therefore the
borrower need not know about the sale.

Another form of credit risk transfer (CRT) vehicle developed in the 1980s

is securitization. In a securitization, a financial institution that originates

loans and receivables pools them and sells them to a special-purpose vehicle

(SPV). The SPV obtains funds to acquire the pool of loans by issuing

securities. Payment of interest and principal on the securities issued by the

SPV is obtained from the cash flow of the pool of loans. Although the

financial institution employing securitization retains some of the credit risk

associated with the pool of loans and receivables, as determined by the risk

retention requirements described in chapter 27, the majority of the credit risk

is transferred to the holders of the securities issued by the SPV.

Two relatively recent CRT vehicles are credit derivatives and

collateralized debt obligations (CDOs). For financial institutions, **credit**

**derivatives**, particularly credit default swaps (CDSs), allow the transfer of

credit risk to another party without the sale of the loan. A CDO is an

application of the securitization technology, but we will explain how it

differs from the types of securitization discussed in chapter 27. Credit

derivatives can be used to create CRT products. The two most common

products employing CDSs are synthetic CDOs and credit-linked notes. In

this chapter, we describe all these CRT products: credit derivatives, CDOs,

synthetic CDOs, and credit-linked notes.

Although our focus in this chapter is on the transfer of corporate credit

risk, credit derivatives and CDOs also have been used to transfer sovereign

credit risk and municipal credit risk. [1]

```
Credit Derivatives

```

Credit derivatives are used by institutional portfolio managers in the normal

course of activities to more efficiently control the credit risk of a portfolio or

the balance sheet of a financial institution and to transact more efficiently

than by transacting in the cash market. For example, credit derivatives

provide a mechanism for portfolio managers to more efficiently short a

credit-risky security than by shorting in the cash market, which is often

difficult to do. For traders and hedge fund managers, credit derivatives

provide a means for leveraging an exposure in the credit market.

Credit derivatives can be characterized in several ways. One such

categorization is shown in figure 39.1. Some of the derivatives identified in

the figure are not true credit derivatives in that they do not provide

protection against credit risk only. Instead, they provide protection against

both interest rate risk and credit risk.

```
Figure 39.1

```

Categorization of credit derivatives.

By far the most popular type of credit derivative is the **credit default**

**swap** (CDS). Not only is this form of credit derivative the most commonly

used stand-alone product, it is also used extensively in products known as

**structured credit products** . A CDS is probably the simplest form of CRT

vehicle among all credit derivatives, and according to the British Bankers'

Association, it is the dominant form of credit derivative. We will look at the

different types of CDSs later in the chapter. In this section, we discuss an

important market development that fostered the growth of this market: the

standardized documentation for the contract.

```
ISDA Documentation

```

Prior to 1998, the development of the credit derivatives market was hindered

by the lack of standardization of legal documentation. Every trade (i.e., the

buying and selling of a credit derivative contract) had to be customized. In

1998, the **International Swap and Derivatives Association** (ISDA)

developed a standardized contract that could be used by parties to trades of a

credit derivatives contract. **ISDA documentation** is primarily designed for

CDSs, but the contract form is sufficiently flexible that it can be used for

- ther types of credit derivatives.

**`Reference entity and reference obligation`** The documentation
identifies the reference entity and the reference obligation. The **reference**
**entity** is the issuer of the debt instrument and hence is also referred to as the
**reference issuer** . It could be a corporation or a sovereign government. The
**reference obligation**, also referred to as the **reference asset**, is the particular
debt issue for which the credit protection is being sought. For example, a
reference entity could be Ford Motor Credit Company. The reference

- bligation would be a specific Ford Motor Credit Company bond issue.

**`Credit events`** Credit derivative products have a payout that is contingent

- n a **credit event** - ccurring. The ISDA provides definitions of credit events.
The _1999 ISDA Credit Derivatives Definitions_ (referred to as the "1999
Definitions") provides a list of eight credit events: (1) bankruptcy, (2) credit
event on merger, (3) cross acceleration, (4) cross default, (5) downgrade, (6)
failure to pay, (7) repudiation/moratorium, and (8) restructuring. These eight
event categories attempt to capture every type of situation that could cause
the credit quality of the reference entity to deteriorate or the value of the
reference obligation to decline.

**Bankruptcy** is defined as a variety of acts that are associated with
bankruptcy or insolvency laws. **Failure to pay** results when a reference
entity fails to make one or more required payments when due. When a
reference entity breaches a covenant, it has defaulted on its obligation.

When a default occurs, the obligation becomes due and payable prior to

the scheduled due date had the reference entity not defaulted. This is referred

to as an **obligation acceleration** . A reference entity may disaffirm or

challenge the validity of its obligation. This is a credit event that is covered

by **repudiation/moratorium** .

The most controversial credit event that may be included in a credit

derivative product is restructuring of an obligation. A **restructuring** - ccurs

when the terms of the obligation are altered so as to make the new terms less

attractive to the debtholder than the original terms. The changes would

typically include, but are not limited to, one or more of the following: (1) a

reduction in the interest rate, (2) a reduction in the principal, (3) a

rescheduling of the principal repayment schedule (e.g., lengthening the

maturity of the obligation) or the postponement of an interest payment, or

(4) a change in the level of seniority of the obligation in the reference

entity's debt structure.

The reason restructuring is so controversial is that a protection buyer

benefits from the inclusion of restructuring as a credit event and feels that

eliminating restructuring as a credit event will erode its credit protection.

The protection seller, in contrast, would prefer not to include restructuring,

because even routine modifications of obligations that occur in lending

arrangements would trigger a payout to the protection buyer. Moreover, if

the reference obligation is a loan and the protection buyer is the lender, there

is a dual benefit for the protection buyer to restructure a loan. The first

benefit is that the protection buyer receives a payment from the protection

seller. The second benefit is that accommodating restructuring fosters a

relationship between the lender (who is the protection buyer) and its

customer (the corporate entity that is the obligor of the reference obligation).

Because of this problem, the _Restructuring Supplement to the 1999 ISDA_

_Credit Derivatives Definitions_ (the "Supplement Definition"), issued in April

2001, provided a modified definition for restructuring. There is a provision

for limiting the reference obligations in connection with the restructuring of

loans made by the protection buyer to the borrower that is the obligor of the

reference obligation. This provision requires the following conditions to

qualify for a restructuring: (1) there must be four or more holders of the

reference obligation, and (2) there must be a consent to the restructuring of

the reference obligation by a supermajority (66⅔%). In addition, the

supplement limits the maturity of reference obligations that are physically

deliverable when restructuring results in a payout triggered by the protection

buyer.

As the credit derivatives market developed, market participants learned a

great deal about how to better define credit events, particularly with the

record level of high-yield corporate bond default rates in 2002 and the

sovereign defaults, especially the experience with the 2001–2002 Argentina

debt crisis. In January 2003, the ISDA published its revised credit events

definitions in the _2003 ISDA Credit Derivative Definitions._ The revised

definitions reflected amendments to several of the definitions for credit

events set forth in the 1999 Definitions. Specifically, there were amendments

for bankruptcy, repudiation, and restructuring.

The major change was to restructuring, whereby the ISDA allows parties

to a given trade to select from among the following four definitions: (1) **no**

**restructuring**, (2) **full** - r **old restructuring**, which is based on the 1999

Definitions, (3) **modified restructuring**, which is based on the Supplement

Definition, and (4) **modified modified restructuring** . The last choice is new

and was included to address issues that arose in the European market.

```
Credit Default Swaps

```

CDSs are used to shift credit exposure to a credit protection seller. Their

primary purpose is to hedge the credit exposure to a particular asset or issuer.

A CDS in which there is one reference entity is called a **single-name CDS** .

When there are multiple reference entities (e.g., 10 high-yield corporate

bonds of 10 different issuers), it is referred to as a **basket CDS** . A **CDS**

**index** has multiple entities, as in a basket CDS. However, unlike a basket

CDS, there is a standardized basket of reference entities.

In a CDS, the protection buyer pays a fee to the protection seller in return

for the right to receive a payment conditional on the occurrence of a credit

event by the reference obligation or the reference entity. Should a credit

event occur, the protection seller must make a payment to the protection

buyer.

The interdealer market has evolved to where single-name CDSs for

corporate and sovereign reference entities are standardized. Although trades

between dealers have been standardized, nonetheless, occasional trades in

the interdealer market use a customized agreement. For portfolio managers

seeking credit protection, dealers are willing to create customized products.

The tenor, or length of time of a CDS, is typically five years. Portfolio

managers can have a dealer create a tenor equal to the maturity of the

reference obligation or construct one for a shorter period to match the

manager's investment horizon.

CDSs can be settled in cash or physically. Physical delivery means that if

a credit event as defined by the documentation occurs, the reference

- bligation is delivered by the protection buyer to the protection seller in
exchange for a cash payment. Because physical delivery does not rely on

- btaining market prices for the reference obligation when determining the
amount of the payment in a single-name CDS, this method of delivery is
more efficient.

The payment by the credit protection seller if a credit event occurs may

be a predetermined fixed amount, or it may be determined by the decline in

value of the reference obligation. When the reference entity is a corporate

bond or a sovereign bond, the standard single-name CDS is fixed based on a

notional amount. When the cash payment is based on the amount of asset

value deterioration, this amount is typically determined by a poll of several

dealers. If no credit event has occurred by the maturity date of the swap,

both sides terminate the swap agreement, and no further obligations are

incurred.

The methods used to determine the amount of the payment obligated of

the protection seller under the swap agreement can vary greatly. For

instance, a CDS can specify the exact amount of payment that will be made

at the contract date by the protection seller should a credit event occur.

Conversely, the CDS can be structured so that the amount of the swap

payment by the seller is determined after the credit event has occurred.

Under these circumstances, the amount payable by the protection seller is

determined based on the observed prices of similar debt obligations of the

reference entity in the market.

In a typical CDS, the protection buyer pays for the protection premium

- ver several settlement dates rather than up front. A standard CDS specifies
quarterly payments.

```
Single-Name CDSs

```

Let's work through the mechanics of a single-name CDS. Assume that the

reference entity is XYX Corporation and the underlying is \$10 million par

value of XYZ bonds. The \$10 million is the notional amount of the contract.

The **swap premium** - the payment made by the protection buyer to the

protection seller—is 200 basis points.

The standard contract for a single-name CDS calls for a quarterly

payment of the swap premium. The quarterly payment is determined using

- ne of the day count conventions in the bond market. The day count
convention used for CDSs is actual/360, the same convention used in the
interest rate swap market. A day convention of actual/360 means that to
determine the payment in a quarter, the actual number of days in the quarter
is used and 360 days are assumed for the year. Consequently, the swap
premium payment for a quarter is given by the following:

For example, assume a hypothetical CDS where the notional amount is

\$10 million and there are 92 actual days in a quarter. Because the swap

premium is 200 basis points (0.02), the quarterly swap premium payment

made by the protection buyer would be

In the absence of a credit event, the protection buyer will make a

quarterly swap premium payment over the life of the swap. If a credit event

- ccurs, two things happen. First, no further payments of the swap premium
are made by the protection buyer to the protection seller. Second, a
**termination value** is determined for the swap. The procedure for computing
the termination value depends on the settlement terms provided for by the
swap. This will be either physical settlement or cash settlement. The market
practice for settlement for single-name CDSs is physical delivery.

With **physical settlement**, the protection buyer delivers a specified

amount of the face value of bonds of the reference entity to the protection

seller. The protection seller pays the protection buyer the face value of the

bonds. Because all reference entities that are the subject of CDSs have many

issues outstanding, there will be alternative issues of the reference entity that

the protection buyer can deliver to the protection seller. These issues are

known as **deliverable obligations** . The swap documentation will set forth

the characteristics necessary for an issue to qualify as a deliverable

- bligation. Recall that for Treasury bond and note futures contracts, the short
has the choice of which Treasury issue to deliver from among those the
exchange specifies as acceptable for delivery. The short will select the issue
cheapest to deliver, and the choice granted to the short is effectively an
embedded option. The same is true for physical settlement of a single-name
CDS. From the list of deliverable obligations, the protection buyer will
select for delivery to the protection seller the cheapest-to-deliver issue.

Figure 39.2 shows the mechanics of a single-name CDS. The cash flows

are shown before and after a credit event occurs. It is assumed in the figure

that there is physical settlement.

```
Figure 39.2

```

Mechanics of a single-name credit default swap with physical delivery.

Single-name CDSs can be used in the following ways by portfolio

managers:

   - The liquidity of the swap market compared to the corporate bond
market makes it more efficient to obtain exposure to a reference entity
by taking a position in the swap market rather than in the cash market.
To obtain exposure to a reference entity, a portfolio manager would sell
protection and thereby receive the swap premium.

   - Conditions in the corporate bond market may be such that it is
difficult for a portfolio manager to sell the current holding of a
corporate bond of an issuer for which it has a credit concern. Rather
than selling the current holding, the portfolio manager can buy
protection in the swap market.

   - If a portfolio manager expects that an issuer will have difficulties in
the future and wants to take a position based on that expectation, it will
short the bond of that issuer. However, shorting bonds in the corporate
bond market is difficult. The equivalent position can be obtained by
entering into a swap as the protection buyer.

   - A portfolio manager seeking a leveraged position in a corporate bond
can do this in the swap market. The economic position of a protection
buyer is equivalent to a leveraged position in a corporate bond.

```
Basket CDSs

```

With a basket CDS, or simply "basket default swaps," the time when a

payout must be made needs to be specified. For example, if a basket credit

default swap has 10 reference obligations, does a credit event for just one of

the 10 reference obligations result in the triggering of a payment by the

protection seller? It depends. Basket default swaps can be structured in

different ways.

In the simplest case, if any one of the reference obligations defaults, there

is a payout and then termination of the swap. This type of swap is referred to

as a **first-to-default basket swap** . Similarly, if a payout is triggered only

after two reference obligations default, the swap is referred to as a **second-**

**to-default basket swap** . In general, if it takes _k_ reference obligations to

trigger a payout, the swap is referred to as a _**k**_ **-to-default basket swap** .

Unlike that for a single-name CDS, the preferred settlement term for a

basket CDS is cash settlement. With **cash settlement**, the termination value

is equal to the difference between the nominal amount of the reference

- bligation for which a credit event has occurred and its market value at the
time of the credit event. The termination value is then the amount of the

payment made by the protection seller to the protection buyer. No bonds are

delivered by the protection buyer to the protection seller. The documentation

for the basket CDS will set forth how the market value at the time of the

credit event is determined.

```
CDS Index

```

In a **CDS index**, the credit risk of a standardized basket of reference entities

is transferred between the protection buyer and protection seller. For North

America, the only standardized indexes are those compiled and managed by

Dow Jones. For the corporate bond indexes, there are separate indexes for

investment-grade and high-grade names. The most actively traded contract is

the one based on the North American Investment Grade Index (denoted by

DJ.CDX.NA.IG). As the name suggests, the reference entities in this index

are those with an investment-grade rating. The index includes 125 corporate

names in North America. The index is an equally weighted index. That is,

each corporate name (i.e., reference entity) in the index has a weight of

0.8%. The index is updated semiannually by Dow Jones.

The mechanics of a CDS index are slightly different from those of a

single-name CDS. As with a single-name CDS, a swap premium is paid.

However, if a credit event occurs, the swap premium payment ceases in the

case of a single-name CDS. In contrast, for a CDS index, the swap payment

continues to be made by the protection buyer. However, the amount of the

quarterly swap premium payment is reduced. This is because the notional

amount is reduced as result of a credit event for a reference entity.

For example, suppose that a portfolio manager is the protection buyer for

a DJ.CDX.NA.IG, and the notional amount is \$200 million. Using the

following formula for computing the quarterly swap premium payment, the

payment before a credit event occurs would be:

After a credit event occurs for one reference entity, the notional amount

declines from \$200 million to \$199,840,000. The new notional amount is

equal to 99.2% of the \$200 million, because each reference entity for the

DJ.CDX.NA.IG is weighted by 0.8%. Thus, the revised quarterly swap

premium payment until the maturity date or until another credit event occurs

for one of the other 124 reference entities is

As of this writing, the settlement term for a CDS index is physical

settlement. However, the market is considering moving to cash settlement.

The reason is because of the cost of delivering an odd lot of the bonds of the

reference entity in the case of a credit event. For example, in our

hypothetical CDS index, if a credit event occurs, the protection buyer would

have to deliver to the protection seller bonds of the reference entity with a

face value of \$160,000. Neither the protection buyer nor the protection seller

would like to deal with such a small position.

Figure 39.3 shows the cash flow for a generic CDS index after a credit

event for one reference entity.

```
Figure 39.3

```

Mechanics of a credit default swap index with physical delivery.

Because a CDS index, such as the DJ.CDX.NA.IG, provides exposure to

a diversified basket of credits, it can be used by a portfolio manager to help

adjust a portfolio's exposure to the credit sector of a bond market index. By

entering into a CDS index as the protection seller, a portfolio manager

increases exposure to the credit sector. Exposure to the credit sector is

reduced by a portfolio manager being the protection buyer.

```
Collateralized Debt Obligations

```

A **collateralized debt obligation** is a security backed by a diversified pool

- f one or more of the following types of debt obligations:

U.S. domestic investment-grade and high-yield corporate bonds,

U.S. domestic bank loans,

emerging market bonds,

special situation loans and distressed debt,

foreign bank loans,

asset-backed securities, and

residential and commercial mortgage–backed securities.

When the underlying pool of debt obligations consists of bond-type

instruments (corporate and emerging market bonds), a CDO is referred to as

a

**collateralized bond obligation** . When the underlying pool of debt

- bligations is bank loans, a CDO is referred to as a **collateralized loan**

**obligation** (CLO).

A CDO is an important CRT vehicle used by financial institutions and

portfolio managers. In this section, we explain the basic CDO structure, the

reason CDOs are created, and the types of CDOs. [2] The creation of these

structures requires the use of derivative instruments, specifically, interest

rate swaps (covered in chapter 37) or CDSs (particularly those discussed

earlier in this chapter).

After the subprime mortgage crisis in the United States, which started in

the summer of 2007, and the global credit crunch that followed, CDO

performance, particularly of CDOs that invested in nonagency residential

mortgage–backed securities (RMBSs), led to considerable losses by

investors. [3] According to the Securities Industry and Financial Markets

Association, in 2007 the global issuance of CDOs was \$482 billion. By

January 2009, participants in the CDO market had written down \$218 billion

in losses from their holdings of CDOs that were backed by asset-backed

securities (ABSs). As a result, global CDO issuance in 2009 fell by about

99% from its 2007 level, to only \$4 billion. However, because of the low

interest rate environment since 2007 and the potential to invest in betterstructured CDO deals, by early 2013, institutional investors showed renewed

interest in CDOs that invested in commercial mortgage–backed securities

(CMBSs). For example, an issuance of a CDO backed by a diversified

portfolio of CMBS took place in January 2013, the first such offering since

the credit crunch that began in 2008. Unlike CDOs backed by nonagency

RMBSs and CMBSs, there were offerings in Close. CDOs are now subject

to the provisions of the Dodd-Frank Wall Street Reform and Consumer

Protection Act of 2010, which we described earlier in this book.

```
Structure of a CDO

```

In a CDO structure, a **collateral manager** is responsible for managing the

portfolio of debt obligations. The portfolio of debt obligations in which the

collateral manager invests is referred to as the "collateral." The individual

issues held that make up the collateral are referred to as the "collateral

assets."

The funds to purchase the collateral assets are obtained from the issuance

- f debt obligations. These debt obligations are referred to as "tranches" or
"bond classes." The tranches include senior tranches, possibly mezzanine
tranches, and subordinated/equity tranches.

A rating will be sought for all but the subordinate/equity tranche. For the

senior tranches, at least an A rating is typically sought. For the mezzanine

tranches, a rating of BBB, but no less than B, is sought. The

subordinated/equity tranche receives the residual cash flow; hence, no rating

is sought for this tranche. There are restrictions imposed on what the

collateral manager may do, and certain tests must be satisfied for the CDO to

maintain the credit rating assigned at the time of issuance.

The ability of the collateral manager to make the interest payments to the

tranches and to pay off the tranches as they mature depends on the

performance of the collateral. The proceeds to meet the obligations to the

CDO tranches (interest and principal repayment) can come from the

following: (1) coupon interest payments from the collateral assets, (2)

maturing of collateral assets, or (3) the sale of collateral assets.

In a typical structure, one or more of the tranches has a floating rate. With

the exception of deals backed by bank loans that pay a floating rate, the

collateral manager invests in fixed-rate bonds. Now, that presents a problem

- paying tranche investors a floating rate and investing in assets with a fixed
rate. To deal with this problem, the collateral manager uses interest rate
swaps to be able to convert a portion of the fixed-rate payments from the
assets into floating-rate cash flows to pay floating-rate tranches. As
explained in chapter 37, an interest rate swap allows a market participant to
swap fixed-rate payments for floating-rate payments or vice versa. A credit
rating agency (CRA) will require the use of swaps to eliminate any cash
flow mismatches.

CDOs are categorized based on the motivation of the sponsor of the

transaction. If the sponsor's motivation is to earn the spread between the

yield offered on the collateral and the payments made to the various tranches

in the structure, then the transaction is referred to as an **arbitrage**

**transaction** . If the motivation of the sponsor is to remove debt instruments

(primarily loans) from its balance sheet, then the transaction is referred to as

a **balance sheet transaction** . Sponsors of balance sheet transactions are

typically financial institutions (such as banks) seeking to reduce their capital

requirements specified by bank regulators by removing loans from their

balance sheet.

```
Future of CDO Products

```

As noted earlier, participants in the CDO market have realized significant

losses. A study by the CRA Fitch found that a little more than half the value

- f the CDOs that were issued throughout the world from 2000 to 2011 has
been or will eventually be lost. [4] Most disconcerting was that a large portion

- f the losses was realized on bond classes that carried a triple-A credit rating

(i.e., the highest investment-grade rating). Because of investors' loss of

confidence in this product, global CDO issuance has declined dramatically.

So the question that is being asked is whether the CDO market will recover

and remain a tool for CRT by financial institutions.

Some believe that despite the adverse publicity, the CDO market received

as a result of the losses, CDOs are not an inherently flawed financial

instrument, and market participants have learned their lesson when

participating in the CDO market. As noted by Kent Smetters, a professor at

the Wharton School, in an interview published on April 19, 2013:

CDOs and Close (collateralized loan obligations) are not going to go away, because in principle they

are powerful risk management devices. They allow for diversifying of risk that otherwise would be

quite concentrated.… But during the crisis, CDOs were being created for their own sake.… The

motivation was not risk management. Now, CDOs are more in tune with their actual purpose, which is

"risk diversification," not risk amplification. [5]

As for what investors learned, Smetters stated in the interview, "The hope

now is that there are going to be smarter and more informed buyers out

there."

The CRAs have been attacked for failing to properly assess the credit

risks associated with CDOs, particularly those backed by subprime RMBSs.

Critics of CRAs argue that these commercial enterprises had an economic

interest in providing higher ratings than warranted to drum up business for

the rating of future CDOs issued. One of the problems during the crisis is

that investors failed to understand that credit ratings are opinions that

provide an initial screening for CDO creditworthiness, not the sole metric to

be used for selecting CDOs in which to invest. Hopefully, that lesson has

been learned. CDOs offer institutional investors the opportunity to earn

attractive returns, but suitable credit analysis must be performed by investors

beyond sole reliance on a CDO's credit rating.

The Dodd-Frank Act should also provide some comfort to investors.

CDOs are subject to the risk retention rules. This means that unlike the

CDOs issued prior to the act, CDO sponsors must accept exposure to CDOs,

and that exposure cannot directly or indirectly be hedged away.

Finally, it should be remembered that CDOs are backed by different types

- f collateral. The CDOs that caused the major losses were those backed by
private-label RMBSs. Most market observers believe that this sector of the

CDO market is not likely to be revived in the near future. Instead, other

sectors, such as CDOs backed by CMBSs, will be viable, as deals are more

carefully underwritten.

```
Credit-Linked Notes

```

A **credit-linked note** (CLN) is a security issued by an investment banking

firm or another issuer (typically an SPV) that has credit risk to a second

issuer (called the "reference issuer"), and the return is linked to the credit

performance of the reference issuer. Embedded in a CLN is a credit

derivative, typically a CDS.

A CLN can be quite complicated, so we will focus on the basic structure

- nly. The issuer of a CLN is the credit protection buyer; the investor in the
CLN is the credit protection seller. The basic CLN is just like a standard
bond: It has a coupon rate (fixed or floating), a maturity date, and a maturity
value. However, in contrast to a standard bond, the maturity value depends

- n the performance of the reference issuer. Specifically, if a credit event
- ccurs with respect to the reference issuer, then (1) the bond is paid off, and
(2) the maturity value is adjusted down. How the adjustment is made is
described in the prospectus. The compensation for the investor accepting the
credit risk of the reference issuer is an enhanced coupon payment.

Typically, CLNs have a maturity of anywhere from three months to

several years, with one to three years being the most likely term of credit

exposure. The short maturity of CLNs reflects the desire of investors to take

a credit view for such a time period.

```
Concerns about CRT Vehicles

```

As with any new complex financial product introduced by financial

institutions, there are regulatory and supervisory concerns. [6] The introduction

- f CRT vehicles, such as cash CDOs and credit derivatives that are
employed to create synthetic CDOs, has elicited the same cautious response
from overseers of the global banking system. Many of these concerns are the
same as those identified for other derivatives, such as interest rate and equity
derivatives, and securitized products, such as ABSs, RMBSs, and CMBSs.

Prior to the 2007 crisis, five studies had identified regulatory and

supervisory concerns with CRT vehicles, such as credit derivatives and

CDOs. The first is a study by the Financial Stability Forum of the Joint

Forum (the Joint Forum). [7] The Joint Forum consists of the Basel Committee

- n Banking Supervision, the International Organization of Securities
Commissions, and the International Association of Insurance Supervisors.
The second study was conducted by the European Central Bank (ECB) and
was a market survey based on interviews with more than 100 banks from 15
EU banks, five large internationally active non-EU banks, and securities
houses operating in London. [8] The last three studies are by CRAs, two by
Fitch Ratings [9] and one by Standard & Poor's. [10] From the five studies, the
following four general issues were identified:

   - the transfer of risk may not be clean,
   - market participants may fail to understand the associated risks,
   - the concentration of risk is potentially high, and
   - adverse selection may occur.

We discuss each below.

```
Transfer of Risk May Not Be Clean

```

As CRTs have developed, increasing the market liquidity for corporate debt

(such as bonds and bank loans), the nature of the risks faced by market

participants has changed in several ways. At one time, the focus of an

investor in a corporate debt was on the ability of the corporation to meet its

- bligations. The issue with new CRTs is whether a "clean" transfer of credit
risk takes place.

There are concerns with credit derivatives, and therefore with synthetic

CDOs being used as CRT vehicles. First is a concern about counterparty risk

- the failure of the counterparty selling credit protection would result in the
buyer of credit protection maintaining the credit exposure that it thought it
had eliminated. With respect to this concern, studies have noted that standard
procedures are available in risk management that can be employed to reduce
counterparty risk. These risk management tools are equally applicable to

- ver-the-counter derivatives used to manage interest rate and currency risk
by regulated financial entities.

Second, although the development of standard documentation for credit

derivative trades by the ISDA fostered the growth of that market, there

remains a concern about legal risks that may arise from a transaction. The

legal risk is the risk that a credit derivative contract will not be enforceable

- r legally binding on the counterparty to the trade or may contain ambiguous
provisions that result in a failure of the contract to fulfill its intent. The most
prominent example is what the credit derivatives market faced early in its
life dealing with the issue of whether a credit event had occurred and, in
particular, with controversial credit events, such as restructuring. The 2004
survey of financial institutions by Fitch investigated the frequency of
disputed credit events and found that about 14% of the credit events captured
in the survey were reported to have involved some form of dispute. As for
the resolution of those disputes, Fitch found that at the time, nearly all had
been or were being resolved without the involvement of the court system.
Another example of legal risk is whether the counterparty has the authority
to enter into a credit derivative transaction. This is not unique to credit
derivatives but has been the subject of litigation in other derivatives markets.
For example, interest rate swaps between various dealers and local U.K.
authorities were voided in 1991, because it was ruled that the latter did not
have the legal authority to enter into the contracts in the first place.

```
Market Participants May Fail to Understand the Risks

```

The development of any market vehicle raises concerns that market

participants will not understand the associated risks. For example, evidence

in the interest rate swap market suggests that corporate entities failed to

understand these risks; the two best-known legal cases are probably those of

Gibson Greetings and Procter & Gamble. The same is true for collateralized

mortgage obligations. Both instruments have been important financial

innovations, but some users/investors experienced financial difficulties or

fiascoes, because product innovation may have run far ahead of product

education.

In the case of a financial institution that seeks to make a market in CRT

vehicles, the concern is that when selling more complex products, such as

CDOs, they may not be properly hedging their positions and may therefore

be increasing the institution's risk. There is modeling risk. For example, in

the case of a single-tranche CDO, the dealer will have an imbalanced

position in CDSs and will try to hedge that position by hedging. [11] The risk is

that the dealer has not hedged properly.

With respect to this issue, the recommendations of the report of the Joint

Forum concentrated on the need for market participants to continue

"improving risk management capabilities and for supervisors and regulators

to continue improving their understanding of the associated issues." Given

this focus, the report sets forth recommendations for market participants and

supervisors in three areas: risk management, disclosure, and supervisory

approaches, with particular emphasis on reporting and disclosure.

```
Concentration of Risk Is Potentially High

```

A CRT vehicle can result in the transfer of credit risk either from one bank

to another or from a bank to a nonbank entity. In the banking system, the

concern is whether credit risk has become too concentrated. For credit risk

transferred out of the banking system, there is concern over the extent to

which credit risk is being transferred to nonbanks, such as monoline or

multiline insurance companies and hedge funds. The overall concern is with

the impact on the financial system resulting from a failure of one or a few

major participants in the CRT market.

The two studies by Fitch Ratings reported the number of banks (North

American and European) and insurance companies active in the CRT market

and the relative size of each. In its 2003 market survey, Fitch surveyed about

200 financial institutions (banks, securities firms, and insurance companies),

focusing on those it classified as protection sellers. Fitch found that through

credit derivatives, the global banking system transferred U.S. \$229 billion of

credit risk outside the banking system. Most of this was to the insurance

industry (monoline insurance companies/financial guarantors, reinsurance,

and insurance companies). The insurance industry itself is the largest seller

- f credit protection. Fitch estimated that the insurance industry sold \$381

billion of net credit protection (i.e., credit protection sold less credit

protection purchased). Of that amount, insurance companies provided \$303

billion in credit protection through the credit derivatives market and the

balance, \$78 billion, in credit protection through their participation in the

cash CDO market. In the insurance industry, the largest seller of credit

protection is financial guarantors, insuring the senior tranches in synthetic

CDO deals. Fitch concluded that bank buying of credit protection through

credit derivatives has resulted in considerable improvement in secondary

credit market liquidity which, in turn, allows market participants to

efficiently transfer risk to other sectors of the financial market that lack the

ability to originate credit. There was a relatively high concentration of credit

protection buying by larger, more sophisticated banks. Smaller and regional

banks were net sellers of credit protection, even though banks were net

buyers of credit protection in the aggregate.

With respect to counterparty concentration, Fitch reported that the market

was concentrated among the top 10 global banks and broker-dealers.

Although having investment-grade ratings, the risk is that the withdrawal of

- ne or more of these firms from the market for financial or strategic reasons
could undermine the confidence in the CRT market. This was one of the

major concerns of the Federal Reserve in early 2008 when justifying the

bailout of the investment banking firm Bear Stearns.

In its 2003 survey, Fitch attempted to collect information on hedge fund

activities by writing to the 50 largest hedge funds in the world. None

responded. In its 2004 survey, Fitch included questions for the major

intermediaries as to their dealings with hedge funds. Fitch found that hedge

funds represented 20% to 30% of their overall CDS index trading.

Ultimately, counterparty risk exposure to hedge funds depends on the extent

- f the collateralization of the trades. Although most of the intermediaries in
the survey responded that their positions with hedge funds were fully
collateralized, some stated that it was less than 100% collateralized.

Fitch also found a high concentration in the corporations that were the

reference obligations in CDSs. Settlement problems could occur if one of

these reference entities experienced a credit event, leading to a major market

disruption. Moreover, because of the higher correlation of default that exists

for counterparties and corporate references in the CRT market compared

with other derivative markets, there is a concern about the market facing

multiple defaults. The ECB report concluded that the potential for disruption

- f the new CRT vehicles was generally small.

```
Adverse Selection May Occur

```

The ability of originators to transfer credit risk through credit derivatives,

CDOs, or securitization has raised concerns that a lending culture based on

- rigination volume rather than prudent lending practices may be
inadvertently adopted by banks. This is a concern about securitization in
general that we described in chapter 11 and that the Dodd-Frank Act sought
to address with its risk retention rules.

```
Key Points

```

- Credit derivatives can be used to alter the credit risk exposure of a balance
sheet, individual security, or a portfolio.

  - The ISDA has standardized documentation for credit derivative

contracts, and the documents define potential credit events.

   - The most controversial credit event is restructuring.
   - The credit risk transfer (CRT) market makes it possible to transfer
large amounts of corporate credit risk exposure among banks, as well as
from the financial sector to the nonfinancial sector through credit
derivatives and collateralized debt obligations (CDOs).

   - By far the most dominant type of credit derivative is the credit default
swap (CDS), in which the protection buyer makes a payment of the
swap premium to the protection seller; however, the protection buyer
receives a payment from the protection seller only if a credit event

   - ccurs.
   - There are single-name CDSs, basket CDSs, and CDS indexes.
   - A CDO is a security backed by a diversified pool of one or more debt
   - bligations.
   - A CDO in which the collateral assets are bond-type instruments is
called a "collateralized bond obligation." A collateralized loan

- bligation is a CDO in which the collateral assets are bank loans.
- A CDO uses securitization technology to create different bond classes
with different degrees of credit risk.

- A collateral manager is responsible for managing the collateral,
subject to restrictions imposed regarding the composition of the
collateral.

- There are CDOs backed by nonagency RMBSs and CMBSs. The
dismal performance of the CDOs backed by the former type of
collateral since 2007 has resulted in a major decline in the global

- ffering of CDOs.
- CDO sponsors must comply with rules of securitization set forth in
the Dodd-Frank Wall Street Reform and Consumer Protection Act of

- The funds to purchase collateral assets come from the issuance of
debt obligations. These debt obligations include senior tranches,
mezzanine tranches, and a subordinate/equity tranche.

- The ability of the collateral manager to make the interest payments to
the tranches and pay off the tranches as they mature depends on the
performance of the collateral selected.

- CDOs are categorized as either arbitrage transactions or balance sheet
transactions, the categorization depending on the motivation of the
transaction's sponsor.

- In an arbitrage transaction, the sponsor seeks to earn the spread
between the yield offered on the collateral assets and the payments
made to the various tranches in the structure.

- In a balance sheet transaction, the sponsor's motivation is to remove
debt instruments from its balance sheet.

- Interest rate swaps are often used in CDO structures because of the
mismatch between the characteristics of the collateral cash flow and

some of the liabilities.

- One variety of CDO is the synthetic CDO, in which credit risk
exposure is transferred through credit risk transfer rather than by
transferring ownership of CDOs.

   - CDSs can be embedded in a bond structure to create a credit-linked

note.

   - Regulators have raised concerns regarding CDOs and CDSs. These
concerns include the clean transfer of risk, the failure of market
participants to understand the associated risks, a potentially high
concentration of risk, and adverse selection.

```
Questions

```

1. What is the primary purpose of a credit derivative?
2. In a CDS, what is meant by:

a. A reference entity?

b. A reference obligation?

3. What authoritative source is used for defining a credit event?
4. Why is restructuring the most controversial credit event?
5. Why does a CDS have an option-type payoff?
6. a. What is a basket CDS?

b. When does the protection seller have to make a payment to the protection

buyer in a basket default swap?

7. For a CDS with the following terms, calculate the quarterly premium

payment.

Swap Premium Notional Amount ($) Days in Quarter Quarterly Premium Payment

a. 600 bps 15,000,000 90

b. 450 bps 8,000,000 91

c. 720 bps 15,000,000 92

8. All other factors constant, for a given reference obligation and a
given scheduled term, explain whether a CDS using full (or old)
restructuring or modified restructuring would be more expensive.

9. a. For a single-name CDS, what is the difference between physical
settlement and cash settlement?

b. In a physical settlement, why is there a cheapest-to-deliver issue?

10. How do the cash flows for a CDS index differ from that of a single
name CDS?

11. a. Explain how a single-name CDS can be used by a portfolio
manager who wants to short a reference entity.

b. Explain how a single-name CDS can be used by a portfolio manager who

is having difficulty acquiring the bonds of a particular corporation in the

cash market.

12. How are CDS indexes used by portfolio managers?
13. What is a CLO?
14. What is meant by a balance sheet transaction CDO?
15. How does a CDO use the securitization technology?
16. How does a CDO differ from an ABS?
17. Why is the subordinate/equity tranche of a CDO not rated?
18. What are the sources of funds that are used in a CDO to pay
bondholders?

19. What was the type of CDO collateral that caused the major losses
realized by institutional investors during the financial crisis?

20. "The problem with a CLO issued by a bank is that the issuer does
not necessarily have any risk exposure to the transaction." Comment.

21. In a basic credit-linked note, how does the maturity value differ
compared to a standard bond structure?

22. For a discussion of the use of credit derivatives in the municipal bond market, see Frank J. Fabozzi,
"Municipal Credit Default Swaps," in _The Handbook of Municipal Bonds_, ed. Sylvan G. Feldstein and
Frank J. Fabozzi (Hoboken, NJ: John Wiley & Sons, 2008), chapter 40. The creation of CDOs backed
by municipal bonds is discussed in Rebecca Manning, Douglas J. Lucas, Laurie S. Goodman, and
Frank J. Fabozzi, "Municipal Collateralized Debt Obligations," in Feldstein and Fabozzi, _The_
_Handbook of Municipal Bonds_, chapter 41.

23. For a more detailed discussion of CDOs, see Douglas J. Lucas, Laurie S. Goodman, and Frank J.
Fabozzi, _Collateralized Debt Obligations: Structures and Analysis_, 2nd edition (Hoboken, NJ: John
Wiley & Sons, 2006).

24. These securitized products are described in chapter 27.
25. Fitch Ratings, "Global Structured Finance Losses, 2000–2011 Issuance," October 22, 2012, http://
www.fitchratings.com/creditdesk/reports/report_frame.cfm?rpt_id=695352.

26. Kent Smetters, "CDOs Are Back: Will They Lead to Another Financial Crisis?" April 9, 2013,
Knowledge@Wharton, http://knowledge.wharton.upenn.edu/article/cdos-are-back-will-they-lead-toanother-financial-crisis.

27. This section draws on Douglas J. Lucas, Laurie S. Goodman, and Frank J. Fabozzi, "Collateralized
Debt Obligations and Credit Risk Transfer," _Journal of Financial Transformation_ 20 (2007): 47–59.

28. Joint Forum, "Credit Risk Transfer" (Basel, Switzerland: Bank for International Settlements, 2005).
29. European Central Bank, "Credit Risk Transfer by ECU Banks: Activities, Risk and Risk
Management" (Frankfurt: European Central Bank, May 2004).

30. Fitch Ratings, "Global Credit Derivatives: A Qualified Success" (New York: Fitch Ratings,
September 24, 2003), and "Global Credit Derivatives Survey: Single-Name CDS Fuel Growth" (New
York: Fitch Ratings, September 7, 2004).

31. Standard & Poor's, "Demystifying Banks' Use of Credit Derivatives" (New York: Standard &
Peer's, December 2003).

32. See Douglas J. Lucas, Laurie S. Goodman, Frank J. Fabozzi, and Rebecca Manning,
_Developments in the Collateralized Debt Obligations Markets: New Products and Insights_ (Hoboken,
NJ: John Wiley & Sons, 2007).

```
Index

```

Note: Footnote information is indicated with n and note number following the page number.

Abu Dhabi Investment Authority, 70

Acceptance financing, 633. _See also_ Banker's acceptances

Accreting swaps, 976

Accrual tranches, 777, 780–781

Active funds, 824

Adjustable-rate residential mortgages, 739–740, 741, 757–759

ADRs (American depository receipts), 543–544

Advertising, 423–424, 823

AEX index, 858

Afonso, Gara, 619

African Development Bank, 497, 700

Agency. _See also_ Brokerage firms and dealers

collective investment vehicles market, 822, 823, 829

disclosure regulations and, 27

equity markets, 529

insurance companies, 159

residential mortgage-backed securities market, 763–785

collateralized mortgage obligations, 774–784

pass-through securities, 763–774

stripped mortgage-backed securities, 782, 784–785

AIG (American international Group), 33, 34, 169–170, 172

Airbnb Inc., 717

Algorithmic trading, 518, 573, 578–579

Allegheny Technologies, 76

Allianz Asset Management, 57

Allied Irish Banks, 56

Alternative trading system (ATS)

crossing networks, 533–535

electronic communication networks, 532–533

equity markets, 525–526, 527, 532–535

Amazon.com, 708

A.M. Best Company, Inc., 84

American Association of Certified Public Accounts, 702

American depository receipts (ADRs), 543–544

American Funds, 826

American international Group (AIG), 33, 34, 169–170, 172

Amortization

amortizing swaps, 976

planned amortization class tranches, 781–784

residential mortgage market, 740–742, 756–759

Angel Capital Association, 708–709, 838

Angel investors, 707–710, 837–838

Anguilla, captive insurance companies, 160

Annuities, 165–166

AOL, 708

Apple, 708, 915–916

Apptio, 717

APT (arbitrage pricing theory) model, 334–336

Arbitrage

arbitrage pricing theory (APT) model, 334–336

covered interest, 994

credit, 970

exchange-traded funds, 829–830

financial innovations, 230

foreign exchange, 993–996, 1002

futures contract pricing, 901–910, 932

index, 576–577, 867, 932

merger, 196

 - ptions contracts pricing, 910–924
risk, 195–197, 910
riskless, 194–195, 456, 458, 901–904, 918, 994
triangular, 458
Archibald, Christine, 478
Archipelago Holdings, 530–531
Argentina

SME financing market, 701

sovereign debt markets, 474, 475, 476

ARM Financial Group Inc., 169

Asian Corporate Bond Market, 664

Asian Development Bank, 496

Asian financial crisis, 91

Asian Infrastructure Investment Bank, 496

Asset allocation, 933–934, 935

Asset-Backed Commercial Paper Money Market Fund Liquidity Facility, 629

Asset-backed securities market. _See also_ Mortgage-backed securities

bankruptcy and insolvency laws, 688–690

benefits of securitization, 684–686

collateralized debt obligations, 1009, 1017–1020, 1021, 1022, 1023, 1024

commercial paper, 627, 629, 644–645

concerns about securitization, 686–687

corporate bonds, 654, 687–689

corporate risk management, 691–692

credit ratings, 84, 87, 681

credit risk, 681, 682, 684, 692, 1009

global financial crisis and, 17, 34, 684, 690–691

government bailouts for debts in, 33–34

interest rate risk, 692

interest rates, 383

investment banking firms, 191

legal structure to accommodate, 687–690

liquidity, 686

 - verview, 678, 693–694
parties to securitization, 679–680
prepayment risk, 383
regulations, 690–691
residential mortgage market, 750
risk transfer, 217
securitization process, 217, 678–684
securitized products, 680–684
special purpose vehicles, 679, 687–689, 1009
subnational (municipal) bonds, 502
transaction structure, 680–684
underwriting, 684, 691
Asset classes

asset allocation to, 933–934, 935

Chinese, 603–606

A-shares, 603, 604–605

B-shares, 603, 605

H-shares, 604–605

red chips, 604

defining, 13–14

equity, 13–14, 553–555, 603–606

market cap-based, 14, 553–554

nontraditional or alternative, 14

style-based, 14n3, 554–555

traditional, 13–14

Asset management firms

collective investment vehicles management, 818–843

compensation or management fees, 57–58, 818

credit rating use, 88

defined, 57–58

funds managed by, 58

investment banking firms, 202

Asset pricing. _See_ Financial asset pricing

Assets, 9. _See also_ Financial assets

Asymmetric information, 27, 82–83, 537

Asymmetric or nonlinear payoffs, 855, 877

Asymmetric risk, 281, 876

Atkinson, Robert, 701

ATS. _See_ Alternative trading system

AT&T Canada, 89

Auction markets

brokerage firm and dealer role, 445

classification, 10

continuous, 438

corporate bonds, 666

equity markets, 523, 528

 - rder-driven, 523
periodic call, 439
price scan, 439
primary markets, 425–428, 477–478
sealed bid/ask, 439
secondary markets, 438–439, 440, 445
sovereign debt markets, 477–478
Australia

corporate debt markets, 659

currency futures contracts, 863

developed market, 13, 590

foreign exchange rates and market, 458, 996, 997

investment banking firms, 188, 200

pension funds, 66

primary market regulation, 417

residential mortgage market, 740, 742

SME financing market, 700, 701

sovereign debt markets, 475, 485

Australian Securities and Investment Commission, 417

Austria, SME financing market, 701

Autoregressive behavior, 279

Avon Products, 76

BaFin (Federal Financial Supervisory Authority, Germany), 37

Bailouts, government

financial market influence, 32–37, 1024

forms of, 33–35

history of, 32

insurance companies, 33, 34, 169–170, 172

issues associated with, 35–37

moral hazard, 36

"too big to fail" qualification, 35–36

Balloon maturity, 657

Balloon payments, 741, 804–805, 807

Balloon risk, 805, 807

Balzer, Leslie A., 281

Banker's acceptances

accepting banks, 635

creation of, 633–635

credit risk, 636

defined, 633

eligible, 635

global short-term funding and investing markets, 633–636

Bank for International Settlements (BIS)

Basel Accords, 107–108

Basel Committee on Banking Supervision, 39, 1021

capital requirements, 107–108

Committee on Global Financial System, 39

Committee on Payment and Settlement Systems, 39

Markets Committee, 39–40

OTC interest rate derivatives trading data, 956, 969

role of, 39–40

systemic financial risk defined by, 230

_Triennial Survey on Foreign Exchange and OTC Derivatives_, 458, 460, 461, 991

Bank holding companies, 102

Banking Act of 1933 (U.S.), 111

Bank of America, 34, 101, 187

Bank of Canada, 130, 200

Bank of China, 101

Bank of England

consul or bonds, 243

foreign exchange market intervention, 460

monetary policy implementation, 31, 371

role and purpose, 129–130

Bank of Japan, 31, 372, 480

Bankruptcy

asset-back securities market, 688–690

banks/financial institutions, 17, 18, 35, 89–90, 104–105

corporate debt markets, 669–673, 688–690

credit, default, and counterparty risk, 219, 504–506

credit derivative credit event, 1011

financial restructuring, 193

insolvency laws, 669–673

liquidation, 5, 33, 104–105, 118, 168, 505, 638–639, 669–672, 688, 721–722

preferred stock in, 721–722

priority of claims, 671–673, 687–688

reorganization, 670, 671–672

savings & loan associations, 124–125

subnational (municipal) government, 504–506

trading of securities after, 195–196

voluntary _vs_ . involuntary, 669

Bankruptcy Code (U.S.), 105, 193, 506, 670–673

Bankruptcy Reform Act of 1978 (U.S.), 670

Banks

banking activities, 110–112

bank insurance model, 177–179

bank rating system, 106, 110

borrowing by, 113–114, 130, 135, 613–625

capital requirements ( _see_ Capital requirements)

central ( _see_ Central banks)

central bank supervision of, 31, 101–102, 112–113, 132

commercial ( _see_ Commercial banks)

corporate financing, 111–112

credit unions, 49, 115–116

deposit insurance, 101, 104, 109–110, 114, 116, 125, 631 ( _see also_ Federal Deposit

Insurance Corporation)

depository institutions ( _see_ Depository institutions)

deposits ( _see_ Deposits)

dual banking system, 101

Federal Deposit Insurance Corporation oversight, 103–105, 115

Federal Reserve oversight, 101–103, 112–113, 132

foreign exchange market role, 460, 461–462

funding, 112–114

global banking, 111

global financial crisis failure, 18, 105

government bailouts, 32–37

income or fees, 110–112

individual banking, 110

institutional banking, 110–111

interbank funding market, 613–619

international banking facilities, 614

investment banking firms ( _see_ Investment banking firms)

loans, 649–651 ( _see also_ Loans)

money center, 113, 632

municipal, 494–495

national, 102

Office of the Comptroller of the Currency oversight, 101, 103, 115

regional, 113, 632

regulation of, 17, 28, 55–57, 100, 101–110, 114, 115, 116, 132–133, 148–149, 178–179

repurchase agreements, 134–135, 482–484, 620–625, 639, 861

reserve ratios/required reserves, 112–113, 129–130, 132–133, 615

risk measures, 282

safety and soundness, 106–109

savings and loan (S&L) associations, 33, 42, 49, 52, 109, 114–115, 124–125, 632, 966

savings banks, 49, 52, 114–115, 632

shadow banking system, 116–119

sovereign debt markets, 471–472

subnational (municipal) government lending, 494–495, 496

superregional, 113

swap rates, 386

Barbados, captive insurance companies, 160

Barclays Bank, 187, 188

Barings Bank, 56, 198

Barnier, Michel, 92

Barrier, Mark, 200

Basis points

basis risk, 942, 946–948, 977

required yield, 251

Basis rate swaps, 977

Basket credit default swaps, 1012, 1015–1016

Basket trades, 200, 576–577, 867

Bear Stearns, 33, 35, 835, 1024

Behavioral finance theory, 309–312

Behavioral portfolio theory, 312

BEL20 index, 858

Belgium

currency futures contracts, 863

foreign exchange rates and market, 996

sovereign debt markets, 473

stock market indexes, 858

Berkshire Hathaway Inc., 160

Bermuda, captive insurance companies, 160

Bernanke, Ben, 35, 372

Bethlehem Steel, 76

Bezos, Jeff, 707

Bid-ask spread

collective investment vehicles market, 821

financial asset reversibility, 241

foreign exchange market, 460, 990

interest rate swaps, 972

secondary market trades, 438, 445

Big Bang (London), 596

Bill & Melinda Gates Foundation, 69

BIS. _See_ Bank for International Settlements

Black, Fischer, 371, 917

Black Monday, 17

BlackRock Inc., 57, 578, 580, 716, 826

Blackstone Group, 187

Black swan events, 213, 268n3

Block trades, 200, 571, 575–576

Bloomberg Financial Markets, 460

Bloomberg Fixed Income Electronic Trading platform, 481

Bloomberg Tradebook, 533

Blue sky laws, 417, 522

Böhm-Bawerk's positive theory of capital, 365–366

Böhm von Bawerk, Eugen, 347, 365–366

Bonds

asset-back securities market, 217, 680–684

asset classes, 13

auction process, 426

bond anticipation notes, 503

bullet, 654

callable, 245

cash flow of, 6–7

catastrophe (cat), 175–176

collateralized bond obligations, 1018

convertible, 6, 243, 245–246, 249, 383, 657

corporate, 652–666, 687–689

coupon rates, 252–253, 473–474, 659, 661–662, 668

credit ratings, 87, 88, 89, 91, 381, 681

credit risk ( _see_ Credit risk)

debenture, 655

as debt instruments, 6

deferred-interest, 661

electronic trading, 665–666

as financial assets, 5, 241, 243, 245–259

government ( _see_ Government bonds)

green, 497–498

guaranteed, 655

high-frequency trading, 577

household investments, 63

hybrid and special structure, 501–502

inflation-adjusted, 224, 368–369, 380, 473, 474–476, 659

insurance-based, 180–181, 501–502

interest rates, 363, 372–374, 379–406

investment banking firms handling, 189–190, 194–200

liquidity, 385

municipal, 95, 383–384, 495, 497–502, 506–509

green, 497–498

 - pen market operations, 133–134
 - pen market repurchase agreements, 134–135
 - ptions inclusion, 382–383
payment-in-kind, 661
pension fund investments, 66, 78, 79
perpetual, 243
price risk, 222, 370, 402, 405
pricing, 247–259
private placement, 191
public offering, 189–190
purchasing power or inflation risk, 223–224
putable, 245, 657
reinvestment risk, 222–223, 402–403, 405
revenue, 89, 95, 500–501
risk transfer, 217
sovereign debt markets, 84, 92–93, 469–489
step-up, 661
term to maturity, 243, 250, 251–252, 253, 382, 387–406, 654
timing risk, 227–228, 656
zero-coupon ( _see_ Zero-coupon bonds)
Book reserves, 66
Bootstrapping, 389–390, 703–704
Bought deals, 425

Brazil

commercial real estate markets, 801

currency futures contracts, 863

emerging market, 13, 590

foreign exchange rate and market, 997

global commercial banking system, 148

insurance companies, 178

sovereign debt markets, 473, 475

subnational (municipal) government debt markets, 496

BRICS (Brazil, Russia, India, China, South Africa), 13, 590. _See also specific countries_

Bridge loans, 650, 705

Brin, Sergey, 416, 704, 720

British Bankers' Association, 616–618

British Telecom, 190

Brokerage firms and dealers

bid-ask spread, 241, 438, 445, 460

commercial paper market, 628, 631

commissions, 248, 444, 446, 460, 573, 821

corporate debt markets, 665–666

corporate financing, 111

credit rating use, 88

credit risk transfer vehicles market, 1012–1013

defined, 437–438

equity markets, 523–525, 526, 528–529, 532, 535–536, 541, 571–572, 573, 575–576

foreign exchange market role, 460, 1000–1001

futures contracts, 850

insurance companies, 159

interdealer brokers, 481, 1012–1013

investment banking firms, 201

investment company shares, 821, 822

margin transactions, 571–572

market makers, 241, 438, 444–446, 523–525, 532, 536, 541, 575–576

 - ptions contracts, 876
payment for order flow, 536
primary dealers, 479–480
quote-driven markets, 438, 523–525, 526
repurchase agreements, 483–484, 620–625
risks, 445–446
secondary market trades, 437–438, 443–446, 481–484, 506–507, 665–666
SME financing, 715n36
Buchheit, Paul, 708
Buffett, Warren, 78
Bullet bonds, 654
Bullet loans, 650
Bullet swaps, 976
Business risk, 94

CAC 40 Index, 594, 858

Call options contracts

buying, 877–881, 936–937

defined, 15, 875

futures options, 893–894

insurance arrangements, 887

interest rates and, 382, 981

intrinsic value, 911

long position, 877, 878–881

maturity, 243

pricing, 911–924

put-call parity relationship, 912–914

short position, 877, 881–882, 912–914, 917–919

warrants, 657

writing or selling, 881–882

Call Reports _(Consolidated Reports of Condition and Income)_, 110

CAMELS rating system, 106, 110

Canada

central bank, 130 ( _see also_ Bank of Canada)

corporate debt markets, 659, 663

currency futures contracts, 863

developed market, 13, 590

foreign exchange rates and market, 458, 996, 997

Group of 7/8, 130

interest rates, 369–370

investment banking firms, 188

pension funds, 66

primary market regulation, 417

residential mortgage market, 740

SME financing market, 700, 701, 706

sovereign debt markets, 475, 485

Canadian Securities Administrators, 417

Cantor Fitzgerald Canada Corporation, 425

Capital

Böhm-Bawerk's positive theory, 365–366

defined, 107, 108, 216n4

marginal productivity, 352

venture ( _see_ Venture capital)

Capital asset pricing model (CAPM)

alpha factor, 327

arbitrage pricing theory model comparison, 336

beta factor, 326–334

estimating, 329–330

Black's zero-beta, 371

capital market line, 331–332

capital market theory, 324–334, 336

security market line, 330–332

systematic and unsystematic risk, 324–330

tests of, 332–334

Capital gains, 826, 827–828

Capital market line (CML)

capital market theory, 321–324, 331–332

deriving formula, 322–323

interpreting equations, 323–324

Capital markets

classification, 10

friction absence, 320

global integration, 428–430

maturity, 613

money markets _vs_ ., 613

perfectly competitive, 319–320

risk-free assets, 320–324

Capital market theory

arbitrage pricing theory model, 334–336

capital asset pricing model, 324–334, 336

capital market assumptions, 319–320

capital market line (CML), 321–324, 331–332

deriving formula, 322–323

interpreting equations, 323–324

concept of, 320–324

constructing portfolios, 321

correlations, 319

economic assumptions, 318–320

financial asset pricing, 317–341

friction absence assumptions, 320

fundamental factor models, 337–338

homogeneous expectations assumptions, 319

investor behavior assumptions, 319

macroeconomic factor models, 337

market portfolios, 321–323

 - ne-period horizon assumptions, 319
 - verview, 318, 338–340
perfect competition assumptions, 319–320
portfolio selection theory and, 296, 318, 320–322
risk aversion assumptions, 319, 321–322
risk-free asset assumptions, 320–324
security market line (SML), 330–332
statistical factors models, 336–337
systematic and unsystematic risk, 324–330
two-fund separation theorem, 322–323
Capital requirements

bank/financial institution regulations, 28, 102, 107–109

capital, defined, 107, 108

capital ratios, 109

credit rating influencing, 87, 108

reserve ratios/required reserves, 112–113, 129–130, 132–133, 615

risk-based, 107–108

Tier 1, core, or basic capital, 108

Tier 2 or supplementary capital, 108

CAPM. _See_ Capital asset pricing model

Captions, 981

Captive finance companies, 49, 64, 627

Captive insurance companies, 160–161, 167

Carcache, Bill, 78–79

Carney, Mark, 200

Carter, Jimmy, 372

Cash flow

commercial real estate markets, 798, 804

credit default swaps, 1014, 1015, 1017

financial assets, 6–8, 242, 246

futures contracts, 853, 907–908

interest rates and, 388, 390–392

interest rate swaps, 962–966

 - ptions contracts, 917
present value, 77, 246, 391–392
residential mortgage-backed securities market, 763–764, 766, 770–776, 782, 784–785, 787
returns related to, 6–7, 244–245
tangible assets generating, 7–8
Cash instrument markets, 10. _See also_ Spot markets
Cash or cash equivalents

asset classes, 13

asset/liability management, 52–57

credit default swap settlements, 1013, 1014, 1015–1016

forward rate agreement settlements, 957

futures contract requirements, 848, 850, 857, 859–860, 901–907

interest rate swaps as package of, 962–963

liquidity of ( _see_ Liquidity)

 - ptions contract requirements, 889–891
Cash value or permanent insurance, 163–164
Casualty insurance companies

captive, 160

catastrophic, extreme, or tail risk, 175–176

investment strategies, 176–177

as private market participants, 65

risk transfer, 216

role of, 156

spread, 53

Catastrophic risk, 174–176, 217

Caterpillar Finance Corporation, 64

Cayman Islands, captive insurance companies, 160

CBOE. _See_ Chicago Board Options Exchange

CBOE Volatility Index, 562–563, 858

CDOs. _See_ Collateralized debt obligations

Central banks. _See also specific banks_

bank/financial institution borrowing from, 113–114, 130, 135, 616, 623–624

bank/financial institution supervision, 31, 101–102, 112–113, 132

Bank for International Settlements guidance, 39

crisis management, 129–130

discount rate, 113, 135

financial market influence, 30–31

financial stability goals, 30–31

foreign exchange market intervention, 141–142, 144, 459–460

as foreign investors, 70

G20 countries, 130, 131

global, 147–149

independence of, 130, 131–132

interbank lending rates, 616

macroprudential policy supervision, 25, 31

monetary policy implementation, 30–31, 129, 130, 132–135, 142–147

money supply, 132–142, 146, 147, 363

 - pen market operations, 133–134
 - pen market repurchase agreements, 134–135
 - verview, 128–129, 149–150
payment mechanisms oversight, 129
repurchase agreements, 134–135, 483, 623–624
reserve requirements, 129–130, 132–133, 141, 146–147
risk assessment and reduction, 129, 148–149
role and purpose, 129–131
structure, 131–132
United States, 128–129, 131–147 ( _see also_ Federal Reserve)
Central Texas Angel Network, 709
Central value, 266, 269
Certificates of deposit (CDs)

bank funding, 112

credit risk, 632–633

global short-term funding and investing markets, 631–633

issuers, 631–632

large-denomination negotiable, 631–633

liquidity concerns, 55

maturity, 631–632

money supply, 133, 136

as Type-III liabilities, 54

yields, 632–633

CFTC (Commodity Futures Trading Commission), 28, 856

CHAPS (Clearing House Automated Payment System), 462

Chicago Board Options Exchange (CBOE)

CBOE Volatility Index, 562–563, 858

 - ptions trading, 888, 889–890
Chicago Mercantile Exchange (CME), 847, 858, 863, 890, 996
Chile, investment banking firms, 190
China

Asian Infrastructure Investment Bank role, 496

corporate debt markets, 664

currency, 599

disclosure regulations, 419

emerging market, 13, 590, 591

equity markets, 590, 591, 596–607

advantages, 597

asset/share classes, 603–606

disadvantages, 597

exchanges, 597–599, 602–603

government intervention, 597

qualified domestic institutional investor program, 602

qualified foreign institutional investor program, 601–602

regulations, 600–602

retail investors, 596–597

split share structure reform, 600–601

state-owned enterprises, 597–598

Stock Connect, 606

stock market indexes, 598, 599, 606–607

structure, 597–599

U.S. equity markets _vs_ ., 607

volatility, 596–597

foreign exchange rates and market, 458, 460

global commercial banking system, 148

insurance companies, 160, 178–179

investment banking firms, 188

primary market regulations, 419

SME financing market, 701

sovereign wealth fund, 70

subnational (municipal) government debt markets, 508–509

China Construction Bank, 101

China Investment Corporation, 70

China Reinsurance (Group) Corporation, 160

China Securities Index Company Ltd., 606

China Securities Regulatory Commission (CSRC), 600

CHIPS (Clearing House Interbank Payment System), 462

Chrysler, 33

Cisco Investments, 714

CITIC, 188

Citigroup, 34, 101, 187, 198, 199

Civil Code (Japan), 417

Clark, Carol, 580

Clavier, Jean-François, 708

Clearing House Automated Payment System (CHAPS), 462

Clearing House Interbank Payment System (CHIPS), 462

Clearinghouses

foreign-exchange markets, 462

futures contracts, 849, 853

 - ptions contracts, 876, 892
Clearstream, 480

CME (Chicago Mercantile Exchange), 847, 858, 863, 890, 996

CML. _See_ Capital market line

CMOs. _See_ Collateralized mortgage obligations

Collateralized bond obligations, 1018

Collateralized debt obligations (CDOs)

categorization of, 1019

clean risk transfer concerns, 1022

credit ratings, 1019–1020

credit risk transfer vehicles market, 1009, 1017–1020, 1021, 1022, 1023, 1024

future of, 1019–1020

high concentration of risk, 1024

market participants failure to understand risks, 1023

structure of, 1018–1019

synthetic, 1021, 1022, 1024

Collateralized loan obligations, 1018

Collateralized mortgage obligations (CMOs)

accrual tranches, 777, 780–781

credit enhancement, 786–788

excess spread, 788

monoline insurance, 788

  - vercollateralization, 788
senior-subordinate structure, 787–788
planned amortization class tranches, 781–784
private-label, 785–790
residential mortgage-backed securities market, 774–790, 1018
sequential-pay tranches, 775–780
Collective investment vehicles market

investment company shares, 819–835

closed-end funds, 820–821

economic motivation, 823–824

exchange-traded funds, 821, 827–831

family of funds, 825–826

hedge funds, 831–835

investment objective fund classification, 824–825

  - pen-end funds, 819–820, 821
sales charges and operating expenses, 821–823

 - verview, 818, 840–842
real estate investment trusts, 835–837
regulations, 819, 831
tax issues, 821, 826, 827–828, 835–836
venture capital funds, 837–840

investing in, 838–839

stages of, 839–840

venture capital firms, 838

Columbia Management, 826

Commission Nacional del Mercado de Valores (Spain), 417

Commercial banks

banking activities, 110–112

contracting and information processing cost reduction, 51–52

corporate financing, 111–112

Federal Reserve membership, 131

Federal Reserve oversight, 132

as financial intermediaries, 49, 50–52, 971–972, 1000–1001

foreign exchange market role, 460, 1000–1001

global banking, 111

hedge fund loans, 835

individual banking, 110

institutional banking, 110–111

insurance products, 159, 177–179

interest rate caps and floors, 983

interest rate swaps, 963–969, 971–973, 977–978

investment banking, 187

maturity intermediation, 50

 - ptions contracts, 876, 937
payment mechanisms provided by, 52
residential mortgage-backed securities, 785
residential mortgages, 735, 750
sovereign debt markets, 471–472
subnational (municipal) government lending, 495
Commercial Code (Japan), 417
Commercial mortgage-backed securities

commercial real estate market, 762, 805–808, 837, 1018

example deal, 807–808

structure, 806–807

trading, 808

Commercial Paper Funding Facility, 629

Commercial paper market

asset-back, 627, 629, 644–645

credit ratings, 626

defaults, 629–630

defined, 625

directly placed _vs_ . dealer-placed paper, 628

global financial crisis effects, 629

global short-term funding and investing markets, 625–631, 644–645

issuers, 627–628

liquidity risk, 645

maturity, 625–626, 631, 644

money market mutual funds in, 628–630

non-U.S., 630–631

rollover risk, 626, 645

tax-exempt, 503

Tier 1 and Tier 2 paper, 628

yields, 630

Commercial real estate markets

cash flow, 798, 804

categories, 794–795

commercial mortgage-backed securities, 762, 805–808, 837, 1018

example deal, 807–808

structure, 806–807

trading, 808

commercial property indexes, 799–800, 801–802

cross-border transactions, 811

defined, 795

inflation hedge, 797

investors, 808–811

liquidity issues, 799, 802

 - verview, 794, 811–813
portfolio diversification, 796
prepayments, 804, 806–807
private commercial real estate

debt, 803–805

equity, 798–800

public commercial real estate

debt, 805–808

equity, 800–803

real estate investment trusts, 797, 799, 800–803, 805, 837

real estate operating companies, 800

reasonable reflection of investment universe, 798

reasons for investment in, 795–798

regulations, 799

returns, 796–797, 800, 809–811

risk reduction, 796

Commodity Futures Modernization Act of 2002, 858n2

Commodity Futures Trading Commission (CFTC), 28, 856

Common stock market

block trades, 571, 575–576

crashes, 17, 26, 520

equity asset classes, 13–14, 553–555

exchanges, 440

high-frequency trading, 577–581

institutional investors, 575–577

interest rates, 373

investment strategies, 566–569

margin transactions, 571–572

market timing strategies, 568

 - rder types, 569–571
 - verview, 553, 581–583
pricing efficiency, 563–567
program trades, 576–577
regulations, 571–572
returns distributions, 270–272, 568, 573
SME financing, 719–725
stock market indexes, 555–563, 567, 576–577
stock picking strategies, 568

trading arrangements, 569–581

transaction costs, 573–575

Common stock shares

asset classes, 13–14, 553–555

bought deal, 425

cash flow of, 7

diversified portfolio, 325–326

equity dilutive securities, 719–725

as equity instruments, 6, 516

as financial assets, 5

investment banking firms handling, 189

 - ptions contracts, 888–889
pension fund investments, 77, 78
preferred _vs_ ., 516
public offering, 189–190, 416, 425
returns distributions, 279–280
secondary markets, 517
short selling, 442
SME financing, 719–725
timing risk, 228
Commonwealth Bank of Australia, 101
Compensation or fees

asset management firms, 57–58, 818

banking activities, 110–112

brokerage firms and dealers, 248, 438, 444, 445, 446, 460, 536, 573, 821

commercial real estate markets, 803, 804

credit rating agencies, 83, 90–91

depository institutions, 100

FDIC deposit insurance, 109–110

forward rate agreements, 957–958

insurance companies, 155, 157–158, 166

interest rate caps and floors, 981

interest rate swaps, 975

investment banking firms, 186, 189, 191, 192, 200–201, 202, 428

investment company, 821–823, 833

residential mortgage-backed securities market, 765

residential mortgage market, 735, 738

venture capital firm, 839, 840

Complexity

  - f financial assets, 245–246, 249
highly complex financial institutions, 110
Conditional value-at-risk (CVaR), 283–284
Condon, Bernard, 76
Confederation Life Insurance Company, 169
Conrail, 190
Consolidated Quote System, 527
_Consolidated Reports of Condition and Income_ (Call Reports), 110
Consolidated Tape System, 527

Consortium-based pools, 535

Constant maturity swaps, 977

Consumer Price Index (CPI) inflation rate measurements, 369, 475, 659

Contracting costs, 51–52, 685, 824

Contraction risk, 766–767, 777, 781

Contract rates, 957–958

Convertibility

financial assets, 243, 249

interest rates and, 383

preferred stock, 243, 720–723

risk, 225

Convertible bonds

corporate, 657

debt to equity conversion, 6

as financial assets, 243, 245–246, 249

interest rates, 383

Convertible mortgages, 740

Convertible notes

conversion discount, 723–724

conversion terms, 723

conversion valuation cap, 725

SME financing, 722–725

Cootner, Paul, 276–277

Corporate bonds

Asian Corporate Bond Market, 664

asset-back securities and, 654, 687–689

basic features of issue, 653–657

bond indentures or contracts, 653–654

convertible and exchangeable, 657

corporate debt markets, 652–666, 687–689

defaults and recovery rates, 662–663

dual-currency, 659

electronic trading, 665–666

Eurobond Market, 663–664

features of, 657–659

floating rate securities, 658

global corporate bond market classification, 652–653

high-yield sector, 660–663

inflation-adjusted, 659

issuers, 652

maturity, 654

provisions for payoffs, 655–657

putable, 657

regulations, 653, 664–666

secondary markets, 664–666

securitization, 654–655

warrants, 657

yield based on interest payment frequencies, 659–660

zero-coupon, 657–658

Corporate credit unions, 116

Corporate debt markets. _See also_ Asset-backed securities market; Commercial paper market

bank loans, 649–651

bankruptcy and insolvency laws, 669–673, 688–690

business risk, 94

corporate bonds, 652–666, 687–689

corporate governance risk, 94

credit rating agencies and, 93–95, 660, 662, 667

lease financing, 668–669

leveraged loans, 649–650, 662

medium-term notes, 666–668

 - verview, 649, 673–675
regulations, 653, 664–666
syndicated bank loans, 650–651
Corporate financing, 111–112
Corporate funding markets

asset-back securities market ( _see_ Asset-backed securities market)

corporate debt markets, 93–95, 647–676, 688–690 ( _see also_ Asset-backed securities market;

Commercial paper market)

equity markets ( _see_ Equity markets; Non-U.S. equity markets; Stock markets)

global short-term funding and investing markets, 611–645

small, medium-sized, and entrepreneurial enterprises financing market, 697–730, 837–840

Corporate governance risk, 94

Corporate venture capital, 714–715

Correlations

capital market theory, 319

correlation coefficients, 280, 564–565

portfolio selection theory, 300–302

pricing efficiency, 564–565

probability distributions, 280

Costs. _See also_ Compensation or fees

collective investment vehicles market, 821–824, 826, 828

contracting, 51–52, 685, 824

derivative instrument markets' lower, 16

execution, 446

federal loans/loan guarantees, 29–30

financial intermediaries reducing, 51–52

financial markets reducing, 9–10

financing, 904, 906–907

information, 9–10, 51–52, 447, 685, 824

insurance companies, 158

interest rates and borrowing, 354–355 ( _see also_ Interest rates)

market impact, 446

market timing, 446–447

 - pportunity, 447, 574
search, 9, 437
transaction ( _see_ Transaction costs)

turnaround or round-trip, 241–242

Counterparty risk, 56, 218–220, 1022, 1024

Coupon rates

corporate debt markets, 659, 661–662, 668

financial asset pricing effects, 252–253

sovereign debt markets, 473–474

Coupon securities, 379, 472

Covariance, 280, 299–300

Credit arbitrage, 970

Credit cards, 52, 704

Credit default swaps (CDSs)

basket, 1012, 1015–1016

cash flow, 1014, 1015, 1017

credit-linked notes embedding, 1020

credit risk transfer vehicles market, 1009, 1010, 1012–1017, 1020, 1024

high concentration of risk, 1024

index, 1012, 1016–1017

reference entity and obligations, 1012–1013, 1015, 1016–1017, 1024

settlement system, 1013, 1014, 1015–1017

single-name, 1012, 1013–1015

Credit derivatives

categorization, 1009–1010

clean risk transfer concerns, 1022

credit default swaps, 1009, 1010, 1012–1017, 1020, 1024

credit events, 1011–1012, 1013, 1016–1017

credit risk transfer vehicles market, 1009–1017, 1020, 1022, 1024

ISDA documentation, 1010–1012

reference entity and obligation, 1010–1011, 1012–1013, 1015, 1016–1017, 1024

restructuring, 1011–1012, 1022

Credit intermediation, 117–119

Credit-linked notes, 1009, 1020–1021

Credit Local de France, 494

Credit rating agencies

asset-back securities ratings, 84, 87, 681

asymmetric information reduction, 82–83

capital requirements influence, 87, 108

collateralized debt obligation ratings, 1019–1020

commercial paper ratings, 626

compensation or fees, 83, 90–91

issuer-pay model, 90

user-pay model, 90

concerns about, 89–92

conflicts of interest, 84

corporate debt considerations, 93–95, 660, 662, 667

credit analysis, 220

credit rating systems, 85–87

credit risk transfer vehicles studies, 1021, 1022, 1023–1024

credit scoring model, 220, 744

credit watch, 86

default risk analysis, 82, 503–505

European regulations, 84, 92

factors considered for ratings, 92–95

financial market role, 81–98

foreign currency debt rating, 92–93, 484–486

global financial crisis and, 789–790

insurance company ratings, 158, 166, 171

interest rates influenced by, 82, 381

investors' overreliance on, 84, 91–92

issuer influence on ratings, 90–91

local currency debt rating, 92–93, 484–485

municipal debt considerations, 95, 495, 503–505

nationally recognized statistical rating organizations, 83–84, 87–88, 89

nonregulatory use of ratings, 88

 - verview, 82, 95–97
rating shopping hypothesis, 90–91
rating transition or migration matrix, 86–87
regulatory use of ratings, 87–88
reputations, 91
residential mortgage-backed securities ratings, 786–788, 789–790

excess spread, 788

monoline insurance, 788

  - vercollateralization, 788
senior-subordinate structure, 787–788
residential mortgage ratings, 744–745, 789–790
sovereign government debt considerations, 84, 92–93, 484–486
subnational (municipal) government debt considerations, 95, 495, 503–505
Credit risk

asset-back securities market, 681, 682, 684, 692, 1009

banker's acceptances, 636

capital requirements reflecting, 108

certificates of deposit, 632–633

commercial real estate markets, 803–804, 807

credit risk transfer vehicles, 220–221, 1007–1027

credit tranching, 681, 682, 684

creditworthiness of issuers, 381

defined, 7, 56, 218–220

downgrade risk, 381

forward contracts, 853

household as source, 63

insurance companies products, 165

interest rates, 381

market instruments for controlling, 220–221

measuring, 220

money market mutual funds, 637

repurchase agreements, 621–623

residential mortgage-backed securities market, 787–788

residential mortgage market, 748

sovereign, 484–486, 1009

special purpose vehicles, 118

subnational (municipal), 1009

Credit risk transfer vehicles market

adverse selection, 1024–1025

clean risk transfer concerns, 1022

collateralized debt obligations, 1009, 1017–1020, 1021, 1022, 1023, 1024

concerns about CRT vehicles, 1021–1025

credit default swaps, 1009, 1010, 1012–1017, 1020, 1024

credit derivatives, 1009–1017, 1020, 1022, 1024

credit-linked notes, 1009, 1020–1021

high concentration of risk, 1023–1024

market participants failure to understand risks, 1023

 - verview, 220–221, 1008–1009, 1025–1026
regulations, 1018, 1020, 1025
Credit spread, 220, 381
Credit Suisse, 187, 200, 425, 979–980
Credit unions, 49, 115–116
Credit Value Partners, 200
Crisis management, central bank role, 129–130
Cross-hedging, 942, 948–953
Crossing networks, 533–535
Crowdfunding platforms, 710–711, 799
CSI 300 index, 606
CSRC (China Securities Regulatory Commission), 600
Cuban, Mark, 838
Currency. _See also_ Cash or cash equivalents; _money-related entries_

Chinese, 599

convertible, 225

dual-currency securities, 243–244, 659

financial assets, 243–244, 249–250

foreign currency debt rating, 92–93, 484–486

foreign exchange ( _see foreign exchange entries_ )

futures contracts, 863–864

local currency debt rating, 92–93, 484–485

monetary aggregates, 136–137

 - ptions contracts, 997
risk ( _see_ Foreign-exchange risk)
swaps, 998, 999–1002

currency coupon swaps, 1002

reason for currency swap market development, 1002

CVaR (conditional value-at-risk), 283–284

Czech Republic

currency futures contracts, 863

foreign exchange rate and market, 997

subnational (municipal) government debt markets, 492

Daiwa Bank, 56

Dark pools, 532–535, 595

DAX (Deutscher Aktienindex), 270, 273, 594

DBRS Inc., 84

Dealers. _See_ Brokerage firms and dealers

Debenture bonds, 655

Debit cards, 52

Debt instruments. _See also_ Bonds

bonds ( _see_ Bonds)

collateralized debt obligations, 1009, 1017–1020, 1021, 1022, 1023, 1024 ( _see also_

Collateralized mortgage obligations)

commercial paper, 503, 625–631, 644–645

commercial real estate debt, 803–808, 837

corporate ( _see_ Corporate debt markets)

credit ratings, 85–86, 88, 90, 92–95

defined, 6

household obligations, 63

interest rate swap application, 966–969

leverage risk, 225–226

notes ( _see_ Notes)

real estate investment trusts, 805, 837

warrants, 657, 725

Debt markets

classification, 10

corporate debt markets, 93–95, 647–676, 688–690 ( _see also_ Asset-backed securities market;

Commercial paper market)

credit rating agencies fostering, 82

sovereign debt markets, 84, 92–93, 469–489, 1009

subnational (municipal) government debt markets, 95, 383–384, 426, 491–512, 1009

Debt-to-service coverage ratio (DSCR), 803–804

Default risk

bankruptcy effects, 219, 504–506

corporate debt markets, 662–663

credit rating agencies gauging, 82, 503–505

defined, 7, 218–219

financial asset pricing, 249

interest rates, 381

interest rate swaps, 971–972, 974–975n11, 975

lender's recourse, 743

measuring, 220

residential mortgage market, 743–745

subnational (municipal) government debt markets, 503–506

Defeasance, 804, 807

Deferred-interest bonds, 661

Defined benefit plans, 67, 68, 75–79, 799

Defined contribution plans, 67–68

Deflation, 371

Dell Venture, 714

Demand and supply

capital market theory, 320

foreign exchange, 461

interest rate theories, 351, 359–364

investment company shares, 821, 827

money supply, 141, 146

perfect market, 440

real market, 444

Demand deposits, 112, 133, 136, 137–139, 242–243

Demsetz, Harold, 444

Denmark

interest rates, 372

pension funds, 66

residential mortgage market, 739, 740, 742

sovereign debt markets, 485

Denomination of financial assets, 241

Department of Education, U.S., credit rating use, 87–88

Department of Housing and Urban Development, U.S.

asset-back securities market regulation, 690

government loans, 745–746

Department of Labor, U.S., pension fund administration, 73

Department of the Treasury, U.S.

Federal Insurance Office, 172

Office of the Comptroller of the Currency ( _see_ Office of the Comptroller of the Currency)

Temporary Treasury Money Market Guarantee Program, 638

Treasury bonds ( _see_ Government bonds)

Department of Veterans Administration (VA, U.S.), government loans, 745–746, 749

Deposit insurance. _See also_ Federal Deposit Insurance Corporation

bank/financial institution regulations, 109–110

depository institutions, 101, 104, 109–110, 114, 116, 125, 631

pricing or fees for, 109–110

savings & loan associations, 109, 125

shadow banking system lacking, 118

Depository institutions. _See also_ Commercial banks; Credit unions; Savings and loan (S&L)

associations; Savings banks

activities and characteristics, 99–125

asset/liability management, 52–55

banking activities, 110–112

bank rating system, 106, 110

borrowing by, 113–114

capital adequacy and requirements, 107–109, 112–113

certificates of deposit, 54, 55, 112, 133, 136, 631–633

compensation or fees, 100, 110–112

corporate financing, 111–112

deposit insurance, 101, 104, 109–110, 114, 116, 125, 631

deposits, 112

Federal Deposit Insurance Corporation oversight, 103–105, 115

Federal Reserve oversight, 101–103, 112–113

as financial intermediaries, 49–52

funding, 112–114

global banking, 111

individual banking, 110

institutional banking, 110–111

leverage risk, 226

liabilities, 100

liquidity, 55, 101

monetary policy and, 100–101

nonbank, 114–116

Office of the Comptroller of the Currency oversight, 101, 103, 115

 - verview, 100–101, 119–122
as private market participants, 64
regulation of, 28, 100, 101–110, 114, 115, 116, 132–133
reserve ratios/required reserves, 112–113
risk transfer, 216–217
safety and soundness, 106–109
savings institutions, 114–115, 124–125
shadow banking system, 116–119
thrifts, 114–116
types of, 49
Depository Institutions Deregulation and Monetary Control Act of 1980, 101–102, 132–133
Depository receipts, 543–544, 828
Deposits

bank funding, 112

demand, 112, 133, 136, 137–139, 242–243

reserve ratios, 133

time or certificates of, 54, 55, 112, 133, 136, 631–633

Derivative instrument markets

classification, 10

credit risk transfer vehicles market, 220–221, 1007–1027

foreign exchange, 454, 462–463, 989–1006

 - ver-the-counter, 201, 853, 955–987, 990–996, 1019, 1022–1023
 - verview, 14–17
Derivative instruments. _See also_ Forward contracts; Futures contracts; Options contracts;

Swaps

credit ratings, 88

credit risk transfer vehicles, 220–221, 1007–1027

defined, 14

foreign exchange, 454, 462–463, 989–1006

forward rate agreements, 956–959, 960–961

high-frequency trading, 577

interest rate, 955–987, 1019, 1022–1023

investment banking firms trading and creation, 201

 - ver-the-counter, 201, 853, 955–987, 990–996, 1019, 1022–1023
pricing, 846
regulations, 28
risk transfer, 15–17, 216, 221, 222, 846
role of, 15–17
types of, 15
Destabilization hypothesis, 865
Detroit, bankruptcy, 506
Deutsche Bank, 188
Deutscher Aktienindex (DAX), 270, 273, 594
Developed markets. _See also specific countries_

classification, 13

equity markets, 589–590, 592

Developing markets. _See_ Emerging (developing) markets

Dexia Group, 492, 494

Dimon, Jamie, 283

Direct credit loans, 706

Direct investments, 49–50, 63

foreign, 69

Disability insurance companies, 65, 156–157, 167

Disclosures

commercial real estate markets, 803

equity markets, 526–527, 532–535, 537

Green Bond Principles, 498

regulation of, 26–27, 418–423, 537, 719

secondary markets, 481

Discount rates

banks borrowing at, 113, 135

commercial real estate markets, 804

convertible notes, 723–724

financial asset pricing, 246–254

pension fund valuation, 77–78

Discount securities, 379, 472

Dispersion, probability distributions, 266–267, 269

Distributions. _See_ Probability distributions

Diversification

collective investment vehicles market, 818, 824, 835

commercial real estate investments for, 796

diversification puzzle, 312

diversified real estate investment trusts, 800

equity market investments, 325–326, 589

financial intermediaries' risk reduction via, 51

idiosyncratic or diversifiable risk, 213, 324–330, 692

Markowitz, 301, 589

portfolio selection theory, 297–298, 301

securitization and risk reduction via, 685

Dividend payments

futures contracts cash flow, 907–908

preferred stock, 516, 721

real estate investment trusts, 803, 835–836

risk of, 7

Divisibility of financial assets, 241

Dodd-Frank Wall Street Reform and Consumer Protection Act of 2010

asset-back securities regulation, 690–691

bank/financial institution regulation, 102–103, 104–105, 110, 114, 115

collateralized debt obligation regulations, 1018, 1020

credit ratings omission, 92

credit risk transfer vehicles regulations, 1018, 1020, 1025

enactment, 18

government bailout, 34, 36–37

hedge fund regulations, 831

insurance regulation, 172

primary market regulation, 417

Domestic markets, classification, 12, 652

Dow Jones indexes

commercial real estate index, 801–802

credit default swap index, 1016–1017

Industrial Average, 556, 557–558, 561, 562, 828, 829, 889

stock index options, 889, 890

stock market volatility index, 858

Downgrade risk, 381

Drexel Burnham Lambert, 660

DSCR (debt-to-service coverage ratio), 803–804

Dual-currency securities, 243–244, 659

Dudley, William C., 31

Duffie, Darrell, 199

Duncan, Dwight, 200

Duration

defined, 259

effective, 258–259

financial asset pricing, 254–259

Macaulay, 259

modified, 258–259

pension funds, 77

price risk, 222

Dynamic hedging, 933

Eastern Airlines, 76

ECB. _See_ European Central Bank

Economic Council of Canada, 230

Economic risk, 484

Economy

capital market theory economic assumptions, 318–320

economic forces affecting market rates, 351–352

economic motivation for collective investment vehicles, 823–824

economic role of options markets, 886–888

global macro hedge fund reflecting, 834

macroeconomic factor models, 337

monetary policy growth goals, 143–144

money supply in open, 141–142

paper, 17–18

real, 17–18, 62

Edwards, Franklin, 866

Efficiency

efficient market hypothesis, 564–565

efficient portfolios, 298, 302, 304–305

interest rates and efficiency properties of markets, 366–367

micro _vs_ . macro, 565–566

 - perational, 446–447
pricing, 448, 563–567
secondary market, 446–448
weak, semi-strong, strong forms, 563–564
EFTs. _See_ Exchange-traded funds
Egan-Jones Ratings Company (EJR), 84
Electronic communication networks (ECNs), 532–533
Electronic fund transfers, 52
Electronic trading

corporate bonds, 665–666

defined, 519

equity markets, 519–520, 525, 530–533, 596, 602–603, 867

futures contracts, 847, 856

high-frequency, 577–581

secondary markets, 448–449, 481, 665–666

Eli Lilly, 715

El Salvador, credit rating agencies, 87n6

Emergency Economic Stabilization Act of 2008, 34, 104

Emerging (developing) markets. _See also specific countries_

classification, 13

equity markets, 590, 591, 592, 596–607

foreign exchange derivatives market, 990, 997

subnational (municipal) government debt markets, 496

Employee Retirement Income Security Act of 1974 (ERISA), 73–74

Employment, monetary policy goals for high, 143

Endowments, 69

Enron Corporation, 56, 89–90

Equifax, 744

Equity crowdfunding platforms, 710–711

Equity instruments

commercial real estate equity, 798–803

defined, 6, 516

equity dilutive securities, 719–725

household investments, 63

long-term equity anticipation securities, 891

real estate investment trusts, 799, 800–803, 836

stock shares ( _see_ Equity markets; Stock markets; Stock shares)

Equity markets. _See also_ Stock markets

algorithmic trading, 518, 573, 578–579

alternative trading system, 525–526, 527, 532–535

auction markets, 523, 528

block trades, 571, 575–576

brokerage firms and dealers, 523–525, 526, 528–530, 532, 535–536, 541, 571–572, 573,

575–576

circuit-breaker rules, 539–540

classification, 10

commercial real estate shares, 800–801

crossing networks, 533–535

developed markets, 589–590, 592

disclosures and transparency, 526–527, 532–535, 537

electronic communication networks, 532–533

electronic trading, 519–520, 525, 530–533, 596, 602–603, 867

emerging (developing) markets, 590, 591, 592, 596–607

equity asset classes, 13–14, 553–555, 603–606

equity dilutive securities, 719–725

euro equity, 544

evolution and institutionalization, 517–520

exchanges, 439–440, 480–481, 519, 522, 525–532, 591, 593, 597–599, 602–603

exchange-traded funds, 802, 821, 827–831

exchange-traded options contracts, 876, 888–892

fair and orderly markets, 529–530

frontier (pre-emerging) markets, 591, 592

global exchanges, 591, 593

high-frequency trading, 577–581

hybrid markets, 525, 526, 528

insider trading rules, 541–542

institutional investors, 575–577, 601–602

investment strategies, 566–569

limit orders, 529, 569–570

listed or exchange-traded stocks, 526, 527–531, 535, 536

margin transactions, 571–572

market timing strategies, 568

market volatility rules, 539–540

national market system, 537–539

non-U.S., 587–610

  - ffshore trading, 542
 - rder-driven markets, 522–523, 524–525, 526, 528
 - rder execution, 535–536
 - rder types, 569–571
 - ver-the-counter markets ( _see_ Over-the-counter markets)
 - verview, 516–517, 544–548, 553, 581–583, 588
pricing efficiency, 563–567
program trades, 576–577, 867
quote-driven markets, 523–525, 526
rationale for investing outside home market, 588–589
real estate investment trusts, 800–803, 835–837
regional, 528, 530
regulations

non-U.S., 595–596, 600–602

U.S., 520–522, 525–526, 536–542, 571–572

Rule 144A securities, 542–543

secondary markets, 517, 537–543

short selling rules, 540–541

SME financing, 710–711, 719–725

speculating on movement of, 931

stock market indexes ( _see_ Stock market indexes)

stock picking strategies, 568

stock trading market structures, 522–526

stop orders, 529, 570

trading arrangements, 569–581

trading or price limit rules, 539

trading venues, U.S., 525–535

transaction costs, 519, 573–575

U.S. common stock market, 17, 26, 270–272, 373, 440, 520, 551–586

Eurex Exchange, 859

EURIBOR (Euro interbank offered rate), 379n1, 385, 617, 860

Euribor futures, 860

Eurobond Market, 663–664

Euroclear, 480

Eurocurrency loans, 649

Eurocurrency market, 614, 996

Eurodollar certificates of deposit, 631–633

Eurodollar futures, 859, 974

Euro equity, 544

Euroex, 847

Euro Exchange, 859

Euro interbank offered rate (EURIBOR), 379n1, 385, 617, 860

Euromarket, classification, 13

Euro Overnight Index Average, 617

European Bank for Reconstruction and Development, 496

European Central Bank (ECB)

asset-back securities benefits, 684

credit risk transfer vehicles study, 1021, 1024

monetary policy implementation, 31, 130, 371–372, 470

quantitative easing, 372

role and purpose, 130

European Development Bank, 498

European Fund and Asset Management Association, 92

European Investment Bank, 496, 497

European Public Real Estate Association, 802

European Securities and Market Authority, 84

European Securitization Forum, 92

European System of Central Banks, 130

European Union

asset-back securities market, 678, 684–685, 691

central bank, 130 ( _see also_ European Central Bank)

commercial paper market, 630–631

commercial real estate markets, 802, 806

corporate debt markets, 663–664, 665

credit rating agency regulations, 84, 92

disclosure regulations, 418–419

equity markets, 594, 595–596

foreign exchange rates and market, 454–456, 458, 460, 997

futures contracts, 859, 863–864

Harmonised Index of Consumer Prices, 475, 659

insurance companies, 162, 168, 172–173, 178

interest rates, 369–370, 371–372, 379n1, 385

investment banking firms, 187–188

monetary policy, 31, 130, 371–372, 470

primary market regulations, 418–419

proprietary trading position, 200

residential mortgage market, 734, 739, 743, 745

secondary markets, 665

SME financing market, 698, 699–701, 707–708

sovereign debt markets, 470, 472

subnational (municipal) government debt markets, 492, 494

Euro STOXX 50 Index option (OESX), 890

Exchangeable corporate bonds, 657

Exchange-based pools, 535

Exchange-traded funds (EFTs)

collective investment vehicles market, 821, 827–831

commercial real estate markets, 802

creating and redeeming shares, 829–830

tracking performance, 830

types and sponsors of, 828–829

uses of, 830–831

Execution costs, 446–447

Executive Life Insurance Company, 165, 169

Exotic options, 892–893

Expectations assumptions, homogeneous, 302, 309, 319

Expectations theory

liquidity theory, 404

preferred habitat theory, 404–405

pure expectations theory, 401–404

term structure of interest rates, 400–405

Expenses. _See_ Costs

Experian, 744

Extension risk, 766–767, 777, 781, 805

External markets, 12–13, 542, 614, 652, 653

Extreme mortality risk, 175

Ezell, John, 701

Facebook, 189, 708, 720

Factor markets, 4. _See also_ Financial markets

Fairness opinions, 192–193

Fallout risk, 737

Fama, Eugene, 276–277, 321, 337, 448

Family of funds, 825–826

Fannie Mae (Federal National Mortgage Association)

commercial mortgage-backed securities, 805

government as financial intermediary, 29

government bailout, 33

residential mortgage-backed securities, 764–765, 782, 784

residential mortgages, 746–747, 749–750, 763

FAZ _(Frankfurter Allgemeine Zeitung)_ index, 594

FDI (foreign direct investment), 69

FDIC. _See_ Federal Deposit Insurance Corporation

Federal Credit Union Act of 1934, 115

Federal Deposit Insurance Corporation (FDIC, U.S.)

asset-back securities market regulation, 690

bank/financial institution oversight, 103–105, 115

credit rating use, 87

deposit insurance, 109–110, 114, 631

deposit payoff transactions, 104

government bailout role, 34

 - pen bank assistance transactions, 104
purchase and assumption transactions, 104
resolution process role, 104–105
role and structure, 103–105
Federal Deposit Insurance Corporation Improvement Act of 1991, 103–104, 109
Federal Financial Supervisory Authority (BaFin, Germany), 37
Federal funds market, 113, 614–615

Federal Home Loan Banks, 115, 749

Federal Home Loan Mortgage Corporation. _See_ Freddie Mac

Federal Housing Administration (FHA, U.S.), 29, 745, 749, 805

Federal Housing Finance Agency, 690

Federal National Mortgage Association. _See_ Fannie Mae

Federal Reserve (Fed, U.S.)

banker's acceptances classification, 635

bank/financial institution borrowing from, 113–114, 135

bank/financial institution oversight, 101–103, 112–113, 132

Board of Governors, 131

central bank role, 128–129, 131–147

Chairmanship, 131

commercial paper market stabilization, 629

constant maturity Treasury rate, 977

credit rating use, 87

deflation management, 371

discount rate, 113, 135

establishment, 101

Federal Open Market Committee, 30, 133, 369, 615

Financial Stability Oversight Council, 37, 102–103, 831

foreign exchange market intervention, 141–142, 144, 459

government bailout role, 33, 34, 35–37

hedge fund study, 834–835

independence of, 131–132

interest rates, 30, 143–144, 369, 371, 372–374

margin transaction requirements, 572

monetary policy implementation, 30, 31, 132–135, 142–147, 369, 371

money supply, 132–142, 146, 147

 - pen market operations, 133–134
 - pen market repurchase agreements, 134–135
quantitative easing, 372
repurchase agreements, 623–624
reserve ratios/required reserves, 112–113, 132–133, 146–147, 615
role and structure, 102–103
structure, 131–132
systemic financial risk defined by, 229–230
Federal Reserve Act of 1913, 30, 101
Federal Reserve Bank of Boston, 638
Federal Reserve Bank of Dallas, 118–119
Federal Reserve Bank of New York

federal funds market data, 615

foreign exchange market intervention, 459

government bailout role, 33, 34

monetary policy implementation, 31

money market mutual fund report, 638

 - pen market operations, 134
Federal Savings and Loan Insurance Corporation, 109
Fédération Internationale de Football Association (FIFA), 180–181

Fees. _See_ Compensation or fees

FHA (Federal Housing Administration, U.S.), 29, 745, 749, 805

FICO scores, 220, 744

Fidelity Investments, 57, 716, 826

FIFA (Fédération Internationale de Football Association), 180–181

Finance Act of 2006 (U.K.), 800

Finance companies, 49, 64, 627

Financial asset pricing

alpha factor, 327

arbitrage pricing theory (APT) model, 334–336

asset pricing models, 222, 318, 324–334, 336, 371

beta factor, 222, 326–334

estimating, 329–330

capital asset pricing model, 324–334, 336, 371

capital market theory, 317–341

coupon rate effects, 252–253

discount rate, 246–254

duration, 254–259

fundamental factor models, 337–338

interest rate change sensitivity, 254–259

investor decision-making effects, 311

level of yield effects, 253–254

macroeconomic factor models, 337

maturity effects, 251–252, 253

 - verview, 240, 259–260
present value of cash flows, 246
price discovery process, 9, 866–867
price volatility, 250–259
principles, 246–250
properties and, 248–250
returns and, 6–7, 250–251, 253–254
risk and, 6–7, 213, 221–222, 249, 319–330
statistical factors models, 336–337
theories, 317–341
weighted averages in portfolios, 258
Financial assets

asset-back securities ( _see_ Asset-backed securities market; Mortgage-backed securities)

asset classes, 13–14, 553–555, 603–606, 933–934, 935

asset/liability management, 52–57, 75–79, 962–966

asset management firms, 57–58, 88, 202, 818–843

asset swaps, 966

cash flow, 6–8, 242, 246

complexity, 245–246, 249

convertibility, 243, 249

currency provisions, 243–244, 249–250

debt _vs_ . equity instruments, 6 ( _see also_ Debt instruments; Equity instruments)

defined, 5

denomination, 241

divisibility, 241

examples of, 5

household, 63

investment banking firms' securitization of, 191–193

liquidity of ( _see_ Liquidity)

moneyness, 240–241

 - verview, 5–9, 240, 259–260
pension funds, 53, 54–55, 75–79
portfolio selection theory, 267, 281–284, 295–316, 318, 320–322, 566
pricing ( _see_ Financial asset pricing)
properties of, 240–246, 248–250
returns ( _see_ Returns)
reversibility, 241–242, 248
risk with ( _see_ Risk)
role of, 8–9
safe or risk-free, 370–371
tangible assets _vs_ ., 5, 7–8
tax status, 246, 248–249, 250
term to maturity, 242–243, 250, 251–252, 253
Financial holding companies, 102, 187
Financial Industry Regulatory Authority (FINRA, U.S.)

equity markets regulations, 521–522

primary market regulations, 417

Trade Reporting and Compliance Engine (TRACE), 664–665

Financial innovations, classification, 230–231

Financial institutions

asset/liability management, 52–57, 963–966 ( _see also_ Financial assets; Liabilities)

asset management firms and, 57–58

banking activities, 110–112

bank insurance model, 177–179

bank rating system, 106, 110

borrowing by, 113–114, 130, 135, 613–625

capital requirements ( _see_ Capital requirements)

central banks ( _see_ Central banks)

central bank supervision of, 31, 101–102, 112–113, 132

commercial banks ( _see_ Commercial banks)

corporate financing, 111–112

credit unions, 49, 115–116

defined, 4, 48–49

deposit insurance, 101, 104, 109–110, 114, 116, 125, 631 ( _see also_ Federal Deposit

Insurance Corporation)

depository institutions ( _see_ Depository institutions)

deposits ( _see_ Deposits)

examples of, 11

Federal Deposit Insurance Corporation oversight, 103–105, 115

Federal Reserve oversight, 101–103, 112–113, 132

financial intermediaries ( _see_ Financial intermediaries)

foreign exchange market role, 460, 461–462

funding, 112–114

global financial crisis failure, 18, 105

government bailouts, 32–37, 169–170, 172, 1024

highly complex, 110

income or fees, 110–112

insurance companies ( _see_ Insurance companies)

interbank funding market, 613–619

interconnectedness, 25, 35–37, 230

international banking facilities, 614

investment banking firms ( _see_ Investment banking firms)

investment companies ( _see_ Investment companies)

large, 35–36, 110, 423

loans, 649–651 ( _see also_ Loans)

money center banks, 113, 632

multilateral, 496 ( _see also_ Supranational organizations)

municipal banks, 494–495

national banks, 102

Office of the Comptroller of the Currency oversight, 101, 103, 115

 - verview, 48, 58–59
regional banks, 113, 632
regulation of, 17, 28, 55–57, 100, 101–110, 114, 115, 116, 132–133, 148–149, 178–179
repurchase agreements, 134–135, 482–484, 620–625, 639, 861
reserve ratios/required reserves, 112–113, 129–130, 132–133, 615
risk measures, 282
risks, 55–57
safety and soundness, 106–109
savings and loan (S&L) associations, 33, 42, 49, 52, 109, 114–115, 124–125, 632, 966
savings banks, 49, 52, 114–115, 632
services of, 48–49
shadow banking system, 116–119
sovereign debt markets, 471–472
subnational (municipal) government lending, 494–495, 496
superregional banks, 113
swap rates, 386
systemically important, 36–37, 105, 155, 173–174
Financial Institutions Reform, Recovery and Enforcement Act, 33
Financial intermediaries

contracting and information processing cost reduction, 51–52

diversification for risk reduction, 51

foreign exchange derivatives market, 1000–1001

government as, 28–30

interest rate swap role, 971–972

investment companies ( _see_ Investment companies)

maturity intermediation provided by, 50–51, 405, 685

payment mechanisms provided by, 52

role of, 49–52, 685

types of, 49

Financial market infrastructure, 4, 31

Financial markets

central bank influence, 30–31

classification of, 10, 12–13, 652–653

collective investment vehicles market, 817–843

corporate funding markets ( _see_ Corporate funding markets)

credit rating agency role ( _see_ Credit rating agencies)

credit risk transfer vehicles market, 220–221, 1007–1027

defined, 4, 9

deregulation or liberalization, 11, 41

derivative instrument markets ( _see_ Derivative instrument markets; Derivative instruments)

equilibrium, 359–362

equity markets ( _see_ Equity instruments; Equity markets; Stock markets)

foreign exchange markets ( _see_ Foreign exchange derivatives market; Foreign exchange

market)

futures markets ( _see_ Futures contracts)

globalization, 11–13 ( _see also_ Global financial markets)

government role, 23–45

infrastructure, 4, 31

institutionalization, 11–12

market failure, 17, 26, 520 ( _see also_ Global financial crisis)

market participants ( _see_ Market participants)

 - ptions markets ( _see_ Options contracts)
 - verview, 9–11
primary markets ( _see_ Primary markets)
real economy and, 17–18
real estate markets ( _see_ Real estate markets)
regulation of, 25–28, 37–38, 40–42 ( _see also_ Regulations)
role of, 9–10
secondary markets ( _see_ Secondary markets)
sovereign debt markets, 84, 92–93, 469–489, 1009
spot or cash ( _see_ Spot markets)
subnational (municipal) government debt markets, 95, 383–384, 426, 491–512, 1009
thickness of the market, 241–242
Financial Markets Regulator (France), 37
Financial Market Supervisory Authority (FINMA, Swiss), 38
Financial restructuring. _See_ Restructuring
Financial risk. _See also_ Funding risk; Investment risk

corporate debt credit ratings, 94–95

evaluating management options, 214–217

identifying, 214

management of, 214–217

neutralization, 215–216

quantifying, 214

retained, 215

risk retention decision, 214

systemic ( _see_ Systemic financial risk)

transfer, 216–217

Financial Services Agency (FSA, Japan), 38

Financial Services Authority (U.K.), 417, 618, 832

Financial Services Modernization Act of 1999 (Gramm-Leach-Bliley Act), 102, 111, 187

Financial Stability Board (FSB), 40, 618

Financial Stability Forum, 91–92, 1021

Financial Stability Oversight Council (FSOC), 37, 102–103, 831

Financial system, 4. _See also_ Financial institutions; Financial market infrastructure; Financial

markets

Financial Times Stock Exchange. _See_ FTSE

Financing costs, 904, 906–907

Financing risk. _See_ Funding risk

Findel plc, 193

Finland

residential mortgage market, 742

sovereign debt markets, 485

FINMA (Financial Market Supervisory Authority, Swiss), 38

FINRA. _See_ Financial Industry Regulatory Authority

First Capital Holdings Corporation, 169

First Executive Corporation, 169

Fisher, Irving, 347

Fisher, Peter, 370

Fisher's kurtosis, 268, 270

Fisher's law, 367–368, 369

Fisher's skewness, 267

Fisher's theory of interest rates

carryover through investment, 352–353

consumer choices, 352–358

current _vs_ . future consumption preferences, 348–349

economic forces affecting market rates, 351–352

marginal rate of time preference, 349

market equilibrium, 359–362

negative interest rates, 349

 - pportunities in loan market, 349–351
 - verview, 347–348
Fitch Ratings Inc., 84, 85–86, 94, 381, 626, 1019, 1021, 1022, 1023–1024
Fixed-floating financing risk, 228–229
Fixed-income instruments

defined, 6

fixed-income option pricing models, 923–924

fixed-rate interest rate swaps, 959–963

Fixed-rate mortgages, 739, 756–757

FLEX options contracts, 892

Floating rate loans, 650, 662

Floating rate securities

corporate debt markets, 658, 668

floating-rate interest rate swaps, 959–963

inverse, 668

sovereign debt markets, 473–474

subnational (municipal) notes, 503

Flotions, 981

Ford Motor Company

asset-back securities, 689, 692

Ford Motor Credit, 64, 689, 692

pension funds, 76

Foreign exchange derivatives market

currency options contracts, 997

currency swaps, 998, 999–1002

currency coupon swaps, 1002

reasons for currency swap market development, 1002

foreign exchange risk, 462–463, 998–999, 1000, 1002

foreign exchange swaps, 998–999

forward contracts, 990–996, 1001

Eurocurrency market and, 996

pricing, 991–996

futures contracts, 990, 996–997

 - verview, 454, 990, 1003
Foreign exchange market

brokers and dealers, 460, 1000–1001

central bank intervention, 141–142, 144, 459–460

derivative instrument markets, 454, 462–463, 989–1006

exchange rate-linked securities, 476

foreign exchange rates, 454–458, 460, 996–997

cross rates, 456–458, 996–997

determination of, 456

ISO currency code, 456, 457

quotation conventions, 455, 460

foreign-exchange risk, 7, 224–225, 454, 462–463, 863–864, 998–999, 1000, 1002

inflation effects, 456

market participants, 459–462

nondealer private entities, 461

 - verview, 454, 463
settlement, 461–462
spot markets, 453–465, 990
trading volume or turnover, 458–459
Foreign-exchange risk

currency futures contracts to control, 863–864

defined, 7, 224–225, 454

derivative instruments, 462–463, 998–999, 1000, 1002

Foreign investors

Chinese equity markets, 601–602, 603

commercial real estate markets, 811

foreign direct investment (FDI), 69

foreign portfolio investment (FPI), 70

money supply impacts, 141–142

as private market participants, 69–71

private security placement, 423

regulation of, 28

sovereign wealth funds, 70–71, 810–811

supranational organizations, 70

Foreign markets

classification, 12, 652

equity trading, 543–544

Forward contracts, 853, 863, 908, 961, 990–996, 1001. _See also_ Futures contracts

Forward rate agreements (FRA), 956–959, 960–961

Forward rates, 393–399, 401–402

Forward start swaps, 978

Foundations, 68–69

401(k) plans, 68

403(b) plans, 68

457 plans, 68

FPI (foreign portfolio investment), 70

Framing, investor decision-making, 311

France

commercial paper market, 630

Consumer Price Index, 475, 659

equity markets, 588–589, 594

financial market regulations, 37

foreign exchange rates and market, 462

global financial crisis effects, 18

government bonds, 243

Group of 5/6/7/8, 130, 142

insurance companies, 178

investment banking firms, 190

residential mortgage market, 734, 739, 742

SME financing market, 706

sovereign debt markets, 475

stock market indexes, 594, 858

subnational (municipal) government debt markets, 492

_Frankfurter Allgemeine Zeitung_ (FAZ) index, 594

Frankfurt Stock Exchange, 594

Franklin National Bank, 33

Franklin Templeton Investments, 826

Freddie Mac (Federal Home Loan Mortgage Corporation)

commercial mortgage-backed securities, 805

government as financial intermediary, 29

government bailout, 33

residential mortgage-backed securities, 764–765

residential mortgages, 746–747, 749–750, 763

French, Kenneth, 337

Frictions

financial markets, 440–441

frictional unemployment, 143, 369

perfect market absence of, 320, 440

Frontier (pre-emerging) markets. _See also specific countries_

classification, 13

equity markets, 591, 592

FSA (Financial Services Agency, Japan), 38

FSB (Financial Stability Board), 40, 618

FSOC (Financial Stability Oversight Council), 37, 102–103, 831

FTSE (Financial Times Stock Exchange)

indexes, 588, 589, 590, 594–595, 801–802, 837

returns distribution, 270, 275

Fundamental factor models, 337–338

FundersClub, 715–716

Funding liquidity risk, 56, 227

Funding risk. _See also specific risks below_

fixed-floating financing risk, 228–229

funding liquidity risk, 56, 227

leverage risk, 225–226

management of, 225–229

special purpose vehicles, 118

timing risk, 227–228

Fund management firms. _See_ Asset management firms

Fund of funds, 825, 834

Futures contracts

applications, 929–935, 939

asset allocation, 933–934, 935

asymmetric or nonlinear payoffs, 855

cash flow, 853, 907–908

cash markets _vs_ ., 864–865, 943–953

cash settlement, 848, 850, 857, 859–860, 901–907

clearinghouse role, 849, 853

commodities, 847, 853–855, 943–953

currency futures contracts, 863–864

daily price limits, 852

defined, 15, 847

equity in, 850–851

financial, 847

financial markets role of, 864–868

foreign exchange, 990, 996–997

forward contracts _vs_ ., 853, 908, 990

forward rate agreements _vs_ ., 958–959

forward rates, 393–399, 401–402

futures options, 893–895, 997

hedging strategies, 859, 886, 887–888, 931–932, 934–935, 941–953, 974

basis risk, 942, 946–948

cross-hedging, 942, 948–953

illustrations, 943–953

perfect hedges, 941, 943–946

risks associated with, 942, 946–948

short and long hedges, 942

insurance arrangements, 846, 854–855, 932–933

interest rate futures contracts, 858–863, 934–935, 974

applications, 934–935

Euribor futures, 860

Eurodollar futures, 859, 974

ultra Treasury bond futures, 862–863

U.S. Treasury bond futures, 860–862

U.S. Treasury note futures, 862

interest rate swaps _vs_ ., 961

investment banking firms trading, 201, 876, 931–932, 935

leveraging aspect of, 852

liquidating a position, 848–849

long, 848, 902, 942, 961

margin requirements, 850–852, 857, 866, 895, 908

  - pen interest, 848
 - ptions contracts differences, 876–877, 887–888
 - ptions contracts on, 893–895, 997
 - verview, 846–847, 868–870
price risk reduction, 852, 854–855, 864, 886, 887–888, 941
pricing, 847–848, 850–852, 856, 859–861, 864–865, 900–910, 924, 932, 935, 942
regulations, 856, 857
residential mortgage market, 737
risk-sharing arrangements, 846, 853–854
settlement date/system, 847, 848–849, 857, 859–861, 901–907, 910
short, 848, 861–862, 902–903, 909–910, 942, 961
speculation applications, 931, 934
stock-related, 576, 855–858, 866–868, 907–908, 909, 930–933

applications, 930–933

benefits, 866–868

pricing, 907–908, 909

single-stock futures, 857–858

stock index futures, 576, 855–858, 866–868, 907–908, 909, 930–933

stock market volatility futures, 858

symmetric or linear payoffs, 854

tax treatment, 910

trading of, 201, 847, 856, 866

transaction costs, 866, 909

underlying asset, 847, 865–866, 867–868

volatility effects, 865–866, 867–868

G5 (Group of 5) countries, 142

G6 (Group of 6) countries, 130

G7 (Group of 7) countries, 130

G8 (Group of 8) countries, 130

G20 (Group of 20) countries, 130, 131

Garfield Weston Foundation, 69

GDRs (global depository receipts), 543–544

GenAmerica Financial Corporation, 169

General American Life Insurance Company, 169

General Electric

General Electric Capital Corporation, 628

General Electric Credit Corporation, 49, 64

pension funds, 67

General Motors

General Motors Acceptance Corporation, 49, 425

global capital market fundraising, 430

initial public offering, 189

Germany

asset management firms, 57

commercial real estate markets, 801

developed market, 13, 590

equity markets, 594

financial market regulations, 37

global financial crisis effects, 18

government bonds, 5, 7

Group of 5/6/7/8, 130, 142

investment banking firms, 188

pension funds, 66

residential mortgage market, 739, 740, 742

SME financing market, 701

sovereign debt markets, 473, 476, 485

stock market indexes, 594

stock market returns distribution, 270, 273

subnational (municipal) government debt markets, 492

Gibson Greetings, 1023

GIC (guaranteed investment contracts), 54, 165, 169, 405, 767, 963–964

Ginnie Mae (Government National Mortgage Association)

commercial mortgage-backed securities, 805

residential mortgage-backed securities, 764–765, 766

residential mortgages, 749–750, 763

Giro payments, 136n7

Glass-Steagall Act, 111, 187

Global central banks, 147–149

Global Crossing, 89

Global depository receipts (GDRs), 543–544

Global Environmental Fund, 496

Global financial crisis

asset-back securities market and, 17, 34, 684, 690–691

bank/financial institution regulatory changes, 104–105, 115

causes of, 25

collateralized debt obligation effects, 1018

commercial paper market effects, 629

commercial real estate market effects, 806, 809–810

credit rating agencies and, 789–790

global central bank investigations, 147–148

government as financial intermediary effects, 29

government bailouts, 32–37

interbank funding market effects, 614, 618–619

interest rates, 373–374

macroprudential policies focus after, 25

money market mutual fund effects, 637–638

propriety trading role, 198

quantitative easing, 372

real and paper economy, 17–18

repurchase agreements effects, 622–623

residential mortgage-backed securities market, 786, 788–790, 1018

returns distributions, 276

risk and uncertainty, 212–213, 219

shadow banking system effects, 117

sovereign debt market effects, 485

subprime mortgage crisis, 29, 34, 84, 684, 750, 786, 788–790, 1018

systemic financial risk, 229–230

Global financial markets

classification of, 12–13

derivative instrument markets' importance to, 16–17

developed, 13

external, international, or offshore, 12–13, 542, 614, 652, 653

factors creating, 11–12

financial institution interconnectedness, 35

global banking, 111

global corporate bond market, 652–653

globalization, defined, 11

global stock exchanges, 591, 593

global stock market indexes, 890

internal or national, 12, 537–539, 652

primary market integration, 428–430

Global short-term funding and investing markets. _See also_ Money markets

banker's acceptances, 633–636

certificates of deposit, 631–633

commercial paper market, 625–631, 644–645

interbank funding market, 613–619

liquidity, 613, 614, 619

maturity, 613, 625–626, 631–632, 644

money market mutual funds, 628–630, 631, 636–639

 - nshore _vs_ . offshore, 614
 - verview, 612–613, 640–642
private money market instruments, 613
repurchase agreements, 620–625, 639
Global systemically important banks (G-SIB), 105, 173–174
Goldman Sachs, 187, 202, 931
González-Páramo, José Manuel, 684
Goodyear, 76
Google Finance, 329
Google Inc., 416, 426, 427, 704, 708, 720
Google Ventures, 714
Gorton, Gary, 370, 619, 622–623

Government. _See also specific countries_

bailouts, 32–37, 169–170, 172, 1024

bonds ( _see_ Government bonds)

central bank independence from, 130, 131–132

commercial real estate market guarantees, 805

as financial intermediary, 28–30

financial market role, 23–45

international participants advising, 38–40

macroprudential policies, 25, 31

microprudential policies, 25

monetary policy ( _see_ Monetary policy)

non-U.S. equity market intervention, 597

pension plans, 67, 68, 74–75, 77, 79

privatization of securities, 190, 416

regulations ( _see_ Regulations)

residential mortgage market guarantees, 745–746, 749

SME financing programs and initiatives, 700–701, 705–707

sovereign debt markets, 84, 92–93, 469–489, 1009

sovereign wealth funds, 70–71, 810–811

state-owned enterprises, 597–598

subnational (municipal) government debt markets, 95, 383–384, 426, 491–512, 1009

taxation ( _see_ Taxes)

views on degree of intervention by, 40–42

Government bonds

auction process, 426

cash flow of, 6–7

as debt instruments, 6

as financial assets, 5, 241, 243, 245

futures contracts, 858–859, 860–863, 910

inflation-adjusted, 224, 368–369, 380, 473, 474–476

interest rates, 368–369, 372–374, 379–381, 386–406

liquidity, 385

 - pen market operations, 133–134
 - pen market repurchase agreements, 134–135
 - ptions contracts, 891–892
primary markets, 476–480
proprietary trading, 199–200
reinvestment risk, 222–223
return predictability, 245
secondary markets, 480–484
sovereign debt markets, 84, 92–93, 469–489
term to maturity, 243, 387–406
timing risk, 228
Government National Mortgage Association. _See_ Ginnie Mae
GovPX, 481
Graham, Paul, 708
Gramm-Leach-Bliley Act (Financial Services Modernization Act of 1999), 102, 111, 187
Grant anticipation notes, 503

Great Depression

financial market regulation after, 26, 28, 520

real and paper economy, 17, 18

secondary mortgage market origins, 749

Great Recession. _See_ Global financial crisis

Greece

emerging market, 13, 590

residential mortgage market, 742

Green bonds, municipal, 497–498

Greenhill & Company, 187, 193

Greenspan, Alan, 147

Group of 5 (G5) countries, 142

Group of 6 (G6) countries, 130

Group of 7 (G7) countries, 130

Group of 8 (G8) countries, 130

Group of 20 (G20) countries, 130, 131

Growth stock shares, 14n3, 554–555, 560, 825

G-SIB (global systemically important banks), 105, 173–174

Guaranteed bonds, 655

Guaranteed investment contracts (GIC), 54, 165, 169, 405, 767, 963–964

Guernsey, captive insurance companies, 160

_Halo Report_, 709

Hang Seng Index (His), 606

Hannover Re, 160

Harmonised Index of Consumer Prices (EU) inflation rate measurements, 475, 659

Harvard University, 69

Health insurance companies, 65, 156, 161

Hedge funds

attributes, 831–833

collective investment vehicles market, 831–835

convergence trading, 833–834

corporate restructuring, 833

credit default swaps, 1024

defined, 831–832

financial market concerns about, 834–835

global macro, 834

high concentration of risk, 1024

market directional, 833

 - pportunistic, 834
SME financing, 716–717
types of, 833–834
Hedging strategies

basis risk, 942, 946–948

commercial real estate investments, 797

cross-hedging, 942, 948–953

dynamic hedging, 933

financial market concerns about, 834–835

forward rates as hedgeable rates, 399

futures contracts, 859, 886, 887–888, 931–932, 934–935, 941–953, 974

hedge ratios, 919–921

illustrations, 943–953

investment banking firms, 194–197

long or buy hedges, 942

 - ptions contracts, 886–888, 918–921, 932–933
perfect hedges, 941, 943–946
risk associated with, 942, 946–948
short or sell hedges, 942
Heuristics, investor decision-making, 310
Higher Education Act of 1965, Title IV, 88
High-frequency trading, 577–581
Highly complex institutions, 110
High-yield bonds, 660–663
Hirshleifer, David, 312
Holding companies

bank holding companies, 102

financial holding companies, 102, 187

savings & loan holding companies, 115

Home Owners' Loan Act of 1933, 115

Homogeneous expectations assumptions, 302, 309, 319

Hong Kong

corporate debt markets, 664

disclosure regulations, 419

foreign exchange rates and market, 460

Hong Kong Stock Exchange (SEHK), 599, 602

primary market regulations, 419

Shanghai-Hong Kong Stock Connect, 606

Shenzhen-Hong Kong Stock Connect, 606

Houlihan Lokey, 187

Households, 62–63, 226, 228

Houston Angel Network, 709

Howard Hughes Medical Institute, 69

HR Ratings de México, S.A. de C.V., 84

HSBC Holdings, 101, 188

His (Hang Seng Index), 606

Huang, Charles, 704

Hubbard, Glenn, 36

Hungary

currency futures contracts, 863

foreign exchange rate and market, 997

Hybrid and special structure bonds, 501–502

Hybrid equity markets, 525, 526, 528

Hybrid real estate investment trusts, 837

Hyundai Capital Services, 64

Idiosyncratic risk, 213, 324–330, 692

Import/export, banker's acceptances, 633–636

Incentive fees

asset management firms, 818

investment banking firms, 192

investment company, 833

venture capital firms, 839, 840

Index arbitrage, 576–577, 867, 932

India

corporate debt markets, 664

emerging market, 13, 590

equity markets, 590

Indiana Bond Bank, 495

Indifference curves, 306–308, 348–351

Indirect investments, 49–50, 63

Individual retirement accounts (IRA), 66

Indonesia

corporate debt markets, 664

sovereign debt markets, 473

Industrial & Commercial Bank of China, 101

Inflation

commercial real estate hedging against, 797

estimated expected rate of, 368–369

foreign exchange effects, 456

inflation-adjusted bonds/securities, 224, 368–369, 380, 473, 474–476, 659

interest rate effects, 363, 368–369, 372–373, 380, 658–659

measures, 369, 475, 659

monetary policy on, 30–31, 142, 147

return predictability, 245

risk, 7, 223–224

stagflation, 142

Information costs, 9–10, 51–52, 447, 685, 824

Information Technology & Innovation Foundation, 701

Infrastructure financing, 496–497

Initial public offerings (IPOs)

advantages, 718

auction process, 426–428

disadvantages, 718–719

equity market listed stocks, 531

investment banking firms handling, 189–190

primary markets, 416, 426–428

regulations, 718–719

SME financing, 705, 717–719

unicorns, 531

Insider trading, 27, 541–542, 563, 564

Institutional investors. _See also_ Financial institutions; Insurance companies; Pension funds

commercial real estate markets, 808–811

credit ratings, 88

equity market trading, 575–577, 601–602

financial institutions as, 11

foreign exchange market, 461

investment bank firms and, 191, 200–201

 - ptions contracts, 876, 936–938
real estate investment trusts, 836
SME financing, 705, 716–717
Institutionalization

equity markets, 517–520

 - f financial markets, 11–12
institutional banking, 110–111
institutional investors ( _see_ Institutional investors)
qualified institutional buyers, 422, 542–543, 601–602
Insurance arrangements

futures contracts, 846, 854–855, 932–933

 - ptions contracts, 876–877, 886–888, 932–933
Insurance companies

annuities, 165–166

asset/liability management, 53–55

bank activities with, 110

bank insurance model, 177–179

captive, 160–161, 167

reinsurance, 167

cash value or permanent insurance, 163–164

guaranteed, 163–164

variable, 164

casualty insurance, 53, 65, 156, 160, 175–177, 216

catastrophic, extreme, or tail risk, 174–176, 217

commercial real estate markets, 794–795, 803, 806

compensation or fees, 155, 157–158, 166

costs, 158

credit ratings, 158, 166, 171

demutualization, 162

disability insurance, 65, 156–157, 167

distribution component, 159

as financial intermediaries, 49

financial services expansion, 177–180

general account products, 166–167

government as financial intermediary, 30

government bailouts, 33, 34, 169–170, 172

guaranteed investment contracts, 54, 165, 169, 405, 767, 963–964

health insurance, 65, 156, 161

industry fundamentals, 157–158

insurance-based investment banking, 180–181

insurance-linked securities, 175–176

interest rate caps and floors, 983

interest rate swaps, 963–966

International Association of Insurance Supervisors, 168, 1021

investment banking firms securities placement with, 191

investment company and strategies, 159, 165–166, 176–177

largest, 162

liability insurance, 65, 156

life insurance, 53, 54–55, 65, 110, 155, 160, 162–167, 175–177, 216, 963–966, 983

liquidity concerns, 55, 169

long-term care insurance, 65, 157

manufacturer or guarantor of policies, 159

monoline, 788

moral hazard, 36

mortgage insurance, 746

mutual, 161–162

 - verview, 155, 181–182
pension funds and, 179–180
pension insurance contracts, 66
policy pricing, 157
policy types, 162–167
as private market participants, 64–65
property insurance, 53, 65, 156, 160, 175–177, 216
reasons for failures, 168–170
regulation of, 168–174, 178–179
reinsurance, 160, 167

captive, 167

reserve requirements, 169–170, 171

residential mortgage-backed securities market, 766–767, 788

returns, 158

risk transfer, 64–65, 216, 1023–1024

role of, 155

separate account products, 166–167

sovereign debt markets, 472

spread, 53

stock, 161–162

structure, 159–162

structured settlements, 157

subnational (municipal) government bond insurance, 501–502

systemically important financial institutions, 155, 173–174

taxes, 162–163, 165–166

term insurance, 163

types of insurance, 155–157

umbrella insurance, 156

underwriting process, 157

universal and variable universal insurance, 164

Intangible assets, 5. _See also_ Financial assets

Integrity Life Insurance Company, 169

Intel Capital, 714

Inter-American Development Bank, 40, 70, 700

Interbank funding market

eurocurrency market, 614

future of, 618–619

global financial crisis effects, 614, 618–619

interbank lending rates, 614–618

international banking facilities, 614

liquidity, 614, 619

money markets, 613–619

 - nshore _vs_ . offshore, 614
Intercontinental Exchange, 531, 616–617
Interest rate caps and floors

applications, 983

 - ver-the-counter, 980–983
risk-return characteristics, 981–982

Interest rates

adjustableor variable-rate, 739–740, 741, 757–759

base rate, 379–380

benchmark rates, 379–380, 385–386, 474, 615–618, 668

alternative, 385–387

Böhm-Bawerk's positive theory, 365–366

carryover through investment, 352–353

certificates of deposit, 632–633

commercial paper market, 630

commercial real estate markets, 804–805, 809–810

consumer choices, 352–358

contract rates, 957–958

corporate debt markets, 650, 653, 658–663, 668, 687

credit rating agencies influencing, 82, 381

creditworthiness of issuers, 381

current _vs_ . future consumption preferences, 348–349

deferred-interest bonds, 661

defined, 346

discount rates, 77–78, 113, 135, 246–254, 723–724, 804

economic forces affecting market rates, 351–352

efficiency properties of markets, 366–367

expectations theory, 400–405

federal funds rate, 113, 614–615

Fisher's law, 367–368, 369

Fisher's theory, 347–362

fixed-floating financing risk, 228–229

floating rate, 473–474, 503, 650, 658, 662, 668, 959–963

forward rate agreements, 956–959, 960–961

forward rates, 393–399, 401–402

historical, 346–347, 372–374, 387, 399–400

household effects, 63

inflation effects, 363, 368–369, 372–373, 380, 658–659

interbank lending rates, 614–618

interest on excess reserves, 615

interest-only mortgages, 742, 759

interest-only stripped MBSs, 784–785

interest rate caps and floors, 980–983

interest rate derivatives, 955–987, 1019, 1022–1023

interest rate futures contracts, 858–863, 934–935, 974

applications, 934–935

Euribor futures, 860

Eurodollar futures, 859, 974

ultra Treasury bond futures, 862–863

U.S. Treasury bond futures, 860–862

U.S. Treasury note futures, 862

interest rate options, 891–892, 936–938, 981–982

interest rate parity, 994–996

interest rate swaps, 959–980, 1019, 1022–1023

liquidity and, 363–364, 385, 404

liquidity preference theory, 363–364

liquidity theory of term structure, 404

loanable funds theory, 362–363

margin transactions, 571

market equilibrium, 359–362

market rates, 351–352

market segmentation theory, 405–406

monetary policy tool, 30, 63, 143–144, 369, 371

money supply impacts, 139–140, 146–147, 363–364

natural or neutral rates, 369–370

negative rates, 349, 371–372, 624–625

nominal rates, 367–368, 369, 372–374

 - pportunities in loan market, 349–351
 - ptions and, 382–383, 891–892, 916–917, 936–938, 977–978, 981–982
 - ver-the-counter interest rate derivatives, 955–987, 1019, 1022–1023
 - verview, 346–347, 374–375, 378, 406–408
preferred habitat theory, 404–405
price risk, 222, 370, 402, 405
price sensitivity to changes, 254–259
pure expectations theory, 401–404
rate caps, 739
real rates, 347, 367–368, 369, 372–374
reference rates, 228–229, 474, 650, 662, 957–958, 959, 980
reinvestment risk, 222–223, 402–403, 405
repo rates, 483–484, 620, 624–625, 861

negative, 624–625

residential mortgage-backed securities market, 766–772, 775–777, 780, 784–785

residential mortgage market, 738–740, 742, 743, 756–759

return predictability, 245

risk-free rates, 370–371, 916–917

risk premium, 380–385, 637, 692, 934, 976, 977–978

savings & loan crisis, 124–125

settlement rates, 957–958

sovereign debt markets, 472–476

speculating on movement of, 934, 936–938

spot rates, 388–394, 398–399, 991–995

structure, 377–412

swap rates, 385–387

taxability of interest, 383–384, 482, 499

term structure of, 378, 382, 387–406

theory, 345–376

timing risk, 227–228

type of issuers, 380–381

volatility, 971

Interest rate swaps

accreting swaps, 976

amortizing swaps, 976

applications, 962–969, 979–980

asset/liability management, 962–966

debt issuance, 966–969

security creation, 979–980

basis rate swaps, 977

bullet swaps, 976

buyback or close-out sale, 976

cash market instrument package, 962–963

collateralized debt obligations and, 1019, 1022–1023

constant maturity swaps, 977

defined, 959

financial intermediary role, 971–972

fixed-rate payers, 959–963

floating-rate payers, 959–963

forward start swaps, 978

interest rate/equity swaps, 978, 979

interpreting swap position, 960–961

market quotes, 972–973

 - ver-the-counter, 959–980, 1019, 1022–1023
reasons for market development, 969–971
risk-return characteristics, 959–960, 961
roller-coaster swaps, 976
secondary markets, 975–976
swap reversals, 975
swap sales or assignments, 975–976
swap spread determinants, 973–975
swaptions, 977–978
Intermediated markets, classification, 10
Internalization pools, 534–535
Internal markets, 12, 537–539, 652
Internal Revenue Service (IRS, U.S.), pension fund administration, 73
International Association of Deposit Insurers, 101
International Association of Insurance Supervisors, 168, 1021
International Bank for Reconstruction and Development, 497
International banking facilities, 614
International Finance Corporation, 497
International Financial Risk Institute, 56
International Harvester, 931
International markets. _See_ External markets

International Monetary Fund, 496, 810

International Organization for Standardization (ISO) currency code, 456, 457

International Organization of Securities Commissions, 1021

International Swap and Derivatives Association, 1010–1012

International Swap Dealers Association, 971

Investment banking firms

activities, 186

asset management, 202

bank-affiliated, 187, 198–200

boutique, 187, 188

commercial real estate markets, 806

compensation and fees, 186, 189, 191, 192, 200–201, 202, 428

as financial intermediaries, 971–972, 1000–1001

financial restructuring advising, 193

foreign exchange market role, 1000–1001

full-service, 187

futures contracts, 201, 876, 931–932, 935

global banking, 111

hedge fund loans, 835

hedging strategies, 194–197

independent, 187

industry structure, 187–188

insurance-based, 180–181

interest rate swaps, 971–972, 979–980

merchant banking, 193

 - ptions contracts, 201, 876
 - verview, 186, 202–204
primary markets, 416
prime brokerage, 201
private placement of securities, 191
proprietary trading, 197–200
public offering of securities, 188–190
regulation of, 198–200
residential mortgage-backed securities, 785
residential mortgage market, 750
risk arbitrage, 195–197
riskless arbitrage, 194–195
securitization of assets, 191–193
subnational (municipal) government debt markets, 495
trading and creation of derivative instruments, 201
trading of securities, 194–200
underwriting, 187, 188–190, 191, 495
Investment companies

asset/liability management, 53, 55

classifications, 819

closed-end funds, 820–821

contracting and information processing cost reduction, 51–52

credit rating use, 88

defined, 819

diversification for risk reduction via, 51

economic motivation, 823–824

exchange-traded funds, 821, 827–831

family of funds, 825–826

as financial intermediaries, 49–52

hedge funds, 831–835

insurance companies, 159, 165–166, 176–177

investment banking firms securities placement with, 191

investment objective fund classification, 824–825

 - pen-end funds, 819–820, 821
payment mechanisms provided by, 52
pension fund investments, 68
as private market participants, 65

registered, 65, 88, 819, 826

regulation of, 65, 819, 831

sales charges and operating expenses, 821–823

shares, 819–835

SME financing, 716–717

tax issues, 821, 826, 827–828

Investment Company Act of 1940, 628, 819

Investment Company Institute, 825

Investment Management Association, 92

Investment Program Association, 802

Investment Property Databank (IPD), 800

Investment risk. _See also specific risks below_

credit risk, 218–221, 748

foreign-exchange risk, 224–225

liquidity risk, 224, 748

management of, 218–225

prepayment risk, 748

price risk, 221–222, 748

purchasing power or inflation risk, 223–224

reinvestment risk, 222–223

residential mortgage market, 737, 747–748

Investors

accredited, 423n3, 424, 831

angel, 707–710, 837–838

capital market theory behavioral assumptions, 319

commercial real estate markets, 808–811

decision-making theories, 309–312

defined, 5

foreign, 28, 69–71, 423, 601–602, 603, 810–811

institutional ( _see_ Institutional investors)

  - verreliance on credit rating agencies, 84, 91–92
real estate investment trusts, 836
retail, 11, 200, 596–597, 811, 836
IPD (Investment Property Databank), 800
Ippolito, Richard, 76
IRAs (individual retirement accounts), 66
Ireland

captive insurance companies, 160

emerging market, 13, 590

  - perational risk for financial institutions, 56
pension funds, 66
residential mortgage market, 740, 742, 745
sovereign debt markets, 485
Isle of Man, captive insurance companies, 160
ISO (International Organization for Standardization) currency code, 456, 457
Israel

currency futures contracts, 863

foreign exchange rate and market, 997

sovereign debt markets, 475

Issuers/borrowers

certificates of deposit, 631–632

commercial paper market, 627–628

corporate bonds, 652

credit ratings influenced by, 90–91

defined, 5

interest rates effects

creditworthiness of issuers, 381

type of issuers, 380–381

residential mortgage-backed securities, 764–765

Italy

emerging market, 13, 590

Group of 6/7/8, 130

insurance companies, 178

primary markets, 479–480

sovereign debt markets, 479–480

subnational (municipal) government debt markets, 492

Janus Capital Group, 716, 717

Japan

Asian Infrastructure Investment Bank role, 496

commercial paper market, 630

commercial real estate markets, 801

corporate debt markets, 652, 659

currency futures contracts, 863–864

developed market, 13, 590

equity markets, 593–594

financial market regulations, 38

foreign exchange rates and market, 456, 457–458, 460, 462, 996–997

foreign (Samurai) market, 12, 652

global financial crisis effects, 18

government bailouts, 34–35

Group of 5/6/7/8, 130, 142

interest rates, 372, 379n1

monetary policy, 31

pension funds, 66

primary market regulation, 417

proprietary trading position, 200

residential mortgage market, 734, 740, 743

SME financing market, 698, 701, 706–707

sovereign debt markets, 473, 480

stock market indexes, 593–594

stock market returns distribution, 270, 274

Japan Credit Rating Agency Ltd., 84

J.C. Penney, 191

Jefferson City, bankruptcy, 506

JLC Infrastructure, 497

JOBS Act (Jumpstart Our Business Startups Act of 2012), 417, 422, 424, 711

Johns Manville Corporation, 629

Johnson & Johnson Development Corporation, 714

Joint Forum, 1021, 1023

Joint probability distributions, 279–280

Jones, Alfred Winslow, 831

Jones, Charles, 580

JPMorgan Chase

family of funds, 826

government line of credit for Bear Stearns purchase, 33, 35

investment banking, 187, 198

size of, 101

value-at-risk measures, 283

Jumpstart Our Business Startups Act of 2012 (JOBS Act), 417, 422, 424, 711

Kahneman, Daniel, 309–310

Kang, Hyunsung Daniel, 715

Keiretsu Forum, 709

Kentucky Central Life Insurance Company, 169

Keynes, John Maynard, 212, 363–364

Knight, Frank, 212

Kommunalbanken AS, 498

Korean Reinsurance Company, 160

Kovner, Anna, 619

Kroll Bond Rating Agency Inc., 84

Kurtosis, 268, 269–270, 277

Kuwait, sovereign wealth fund, 70

LaGuardia Gateway Partners, 497

Large institutions

defined, 423

deposit insurance, 110

private offering exemptions, 423

"too big to fail" qualification, 35–36

LavaFlow, 533

LBOs (leveraged buyouts), 192, 661

LEAPS (long-term equity anticipation securities), 891

Lease financing, 668–669, 692

Leavens, Dickson, 297–298

Lee, David, 708

Leeson, Nick, 198

Legal risk, 57, 1022

Lehman Brothers

bankruptcy, 18, 35, 105, 219, 619, 629, 637–638

investment banking, 198

money market mutual fund investment in, 637–638

Leptokurtic distribution, 270

Lerner, Josh, 715

Leverage, futures contracts, 852

Leveraged buyouts (LBOs), 192, 661

Leveraged loans, 649–650, 662

Leverage multiplier, 226

Leverage ratio, 225–226

Leverage risk, 225–226

Lewis, Michael, 578

Liabilities

asset/liability management, 52–57, 75–79, 962–966

depository institutions, 100

duration, 258

household, 63

interest rate change sensitivity, 258

liability swaps, 966

liquidity concerns, 55

nature of, 53–55

pension funds, 53, 54–55, 67, 75–79

shadow banking system, 118

Liability insurance companies, 65, 156

LIBOR (London interbank offered rate)

benchmark rates, 379n1, 385–386, 474, 615–618

fixed-floating financing risk, 228–229

forward rate agreements, 956–959

interest rate caps and floors, 981

interest rate futures contracts, 858, 859

interest rate swaps, 959–960, 962, 969, 972–973, 974n10

reference rates, 650, 662

Liens, 654, 744

Life insurance companies

asset/liability management, 54–55

bank activities with, 110

captive, 160, 167

reinsurance, 167

cash value or permanent insurance, 163–164

guaranteed, 163–164

variable, 164

catastrophic, extreme, or tail risk, 175–176

general and separate account products, 166–167

guaranteed investment contracts, 54, 165, 963–964

interest rate caps and floors, 983

interest rate swaps, 963–966

investment strategies, 176–177

liquidity concerns, 55

as private market participants, 65

reinsurance, 160, 167

risk transfer, 216

role of, 155

spread, 53

taxes, 162–163

term insurance, 163

unbundling, 164

universal and variable universal insurance, 164

whole life insurance, 163–164

Lilly Ventures, 714, 715

Limit orders, 529, 569–570

Lipper, 825

Liquidation

asset-backed securities market, 688

bankruptcy, 5, 33, 104–105, 118, 168, 505, 638–639, 669–672, 688, 721–722

commercial paper, 645

corporate debt markets, 669–672

depository institutions, 104–105

divisibility of financial assets based on, 241

equity securities/stock share priority, 516, 721–722

futures contracts, 848–849

informationless trade, 447

insurance companies, 168

lien status, 744

maturity and demand for, 242, 402, 404–405, 656

preferred stock, 721–722

special purpose vehicles, 118

subnational (municipal) government, 505

venture capital fund, 840

Liquidity

asset-back securities market, 686

collective investment vehicles market, 818, 824, 834, 835

commercial real estate markets, 799, 802

defined, 244

depository institutions, 55, 101

electronic trading effects, 519

equity markets, 519

financial asset pricing, 249

financial asset property, 244, 249

financial institutions' concerns, 55

financial markets offering, 9

futures contracts, 865, 867

global short-term funding and investing markets, 613, 614, 619

insurance companies, 55, 169

interbank funding market, 614, 619

interest rates and, 363–364, 385, 404

interest rate swaps, 961, 971

liquidity preference theory of interest rates, 363–364

liquidity theory of interest rate term structure, 404

 - ptions contracts, 876
Liquidity risk, 56, 224, 227, 637, 645, 748
Listed property companies, 800

Lloyd's, 160

Loanable funds theory interest rates, 362–363

Loans

asset-backed securities using ( _see_ Asset-backed securities market; Mortgage-backed

securities)

balloon, 741, 804–805, 807

banks borrowing, 113–114, 130, 135, 613–625

bridge, 650, 705

bullet, 650

cash flow of, 6–7

collateralized loan obligations, 1018

contracting costs, 51–52

corporate debt markets, 649–651

credit intermediation, 117–119

credit risk ( _see_ Credit risk)

as debt instruments, 6

depository institutions, 100

direct credit, 706

eurocurrency, 649

as financial assets, 5

financial intermediaries for, 28–30, 49–52

futures contracts purchase, 901–910

government role, 28–29, 33–35, 705–706, 805

household obligations, 63

interest rates ( _see_ Interest rates)

leveraged, 649–650, 662

leverage risk, 225–226

maturity intermediation, 50

mortgage ( _see_ Mortgage market)

 - pportunities in loan market, 349–351
repurchase agreements as collateralized, 134–135, 482–484, 620–625, 639, 861
risk transfer, 216–217
shadow banking system, 117–119
SME financing, 704–705
supply curve, 351–352
syndicated bank, 650–651, 1008–1009
Loan Syndications and Trading Association (LSTA), 651
Loan-to-value ratio (LTV), 735–736, 744–745, 748, 804
Location

co-location of high-frequency traders, 580

probability distributions, 266, 269

secondary market trading, 439–440

Lockout periods

interest-only mortgages, 742, 759

prepayment, 804

London Foreign Exchange Joint Standing Committee, 460

London interbank offered rate. _See_ LIBOR

London Stock Exchange (LSE), 594, 596

Longevity risk, 175

Long-Term Capital Management (LTMC), 34, 834–835

Long-term care insurance companies, 65, 157

Long-term equity anticipation securities (LEAPS), 891

LSE (London Stock Exchange), 594, 596

LSTA (Loan Syndications and Trading Association), 651

LTMC (Long-Term Capital Management), 34, 834–835

LTV (loan-to-value ratio), 735–736, 744–745, 748, 804

LTV Steel, 76, 690

Luxembourg

captive insurance companies, 161

sovereign debt markets, 485

M&A (mergers and acquisitions), 192, 196

Macaulay, Frederick, 259

Macaulay duration, 259

Macroeconomic factor models, 337

Macroprudential policies, 25, 31

Maine Municipal Bond Bank, 495

Malaysia

commercial paper market, 630

corporate debt markets, 664

insurance companies, 178

Malvey, Paul, 478

Management fees

asset management firms, 57–58, 818

investment company, 823, 833

performance-based, 58, 823

venture capital firm, 839

Mandelbrot, Benoit, 276–277

Margin requirements

futures contracts, 850–852, 857, 866, 895, 908

initial, 850, 852, 908

maintenance, 850–851

 - ptions contracts, 875, 895
variation, 850–851, 908
Margin transactions, 571–572
Market-broadening instruments, 230
Market capitalization (market cap)

asset classes based on, 14, 553–554

global stock exchange size based on, 593

stock weighting based on, 556–560, 606–607

Market failure, 17, 26, 520. _See also_ Global financial crisis

Market impact costs, 446

Market in Financial Instruments Directive (MiFID, EU), 595–596, 665

Market liquidity risk, 56

Market makers

bid-ask spread, 241

equity markets, 523–525, 532, 536, 541, 575–576

quote-driven markets, 438, 523–525

secondary market trades, 438, 444–446

third, 536

Market participants

failure to understand credit risks, 1023

financial markets, generally, 10–11

foreign exchange market, 459–462

international participants advising government, 38–40

investors ( _see_ Investors)

private market participants, 61–79

repurchase agreement markets, 623–624

Market risk, 56, 325. _See also_ Systematic risk

Market sectors, 381, 800

Market segmentation theory, 405–406

Market timing

costs, 446–447

stock market investments, 568

Markowitz, Harry, 296–297, 298

Markowitz diversification, 301, 589

Markowitz portfolio theory, 298–300

MAS (Monetary Authority of Singapore), 38

Massachusetts Institute of Technology, 69

Mastercard International, 56

Maturity

balloon, 657

capital markets categorized by, 613

constant maturity swaps, 977

corporate bonds, 654

credit-linked notes, 1020

financial asset pricing effects, 251–252, 253

financial asset term to, 242–243, 250, 251–252, 253

foreign exchange derivatives market, 990, 997

interest rates, term structure, 378, 382, 387–406

interest rate swaps, 973–974, 977

maturity intermediation, 50–51, 405, 685

medium-term notes, 666–668

money markets, 613, 625–626, 631–632, 644

 - ptions contracts, 243, 875, 888–889, 891, 892–893, 915–916
residential mortgage-backed securities, 772, 774, 777, 780–781, 782, 784
residential mortgage market, 734
time tranching, 683–684, 685
Maytag, 76
McCarran-Ferguson Act of 1945, 170
McKinsey, 493
Mean

mean-variance analysis or optimization, 267, 299

mean-variance assumptions, 302, 309, 311

probability distributions, 266

Medium-term notes (MTNs), 666–668

Menger, Carl, 365

Merchant banking, 193

Merger arbitrage, 196

Mergers and acquisitions (M&A), 192, 196

Meridiam, 497

Merrick, John, 866–867

Merrill Lynch, 34, 198, 199

Metrick, Andrew, 619, 622–623

Microprudential policies, 25

Microsoft Ventures, 714

MiFID (Market in Financial Instruments Directive, EU), 595–596, 665

Military technology, 71

Milken, Michael, 660

Miller, Edward, 441–442

Miller, George, 74

Mishkin, Frederic, 130, 229–230

Mission Insurance Company, 169

Mittal, Hitesh, 534

Model risk, 265

Monarch Life Insurance Company, 169

Monetary Authority of Singapore (MAS), 38

Monetary policy

central bank implementation, 30–31, 129, 130, 132–135, 142–147

deflation management, 371

depository institutions and, 100–101

economic growth, 143–144

financial stability and, 30–32, 142

foreign exchange rate stability, 144

goals, 142–147

high employment or low unemployment, 143

inflation management, 30–31, 142, 147

interest rates and, 30, 63, 143–144, 369, 371

intermediate targets, 145–146, 147

money supply influence, 132–135, 146, 147, 470

 - perating targets, 145–147
pricing stability, 31, 32, 142
trade-off and conflicts, 144–145
Money center banks, 113, 632
Money management firms. _See_ Asset management firms
Money market mutual funds (MMFs)

bank funding, 112

central banks and, 132, 136

credit risk, 637

global financial crisis effects, 637–638

global short-term funding and investing markets, 628–630, 631, 636–639

regulations, 636, 637–639

repurchase agreements, 639

types of, 637

Money markets. _See also_ Global short-term funding and investing markets

banker's acceptances, 633–636

banks borrowing from, 114

capital markets _vs_ ., 613

certificates of deposit, 631–633

classification, 10

commercial paper market, 625–631, 644–645

interbank funding market, 613–619

liquidity, 613, 614, 619

maturity, 613, 625–626, 631–632, 644

money market demand accounts, 112

money market mutual funds, 112, 132, 136, 628–630, 631, 636–639

 - nshore _vs_ . offshore, 614
 - verview, 612–613, 640–642
private money market instruments, 613
repurchase agreements, 620–625, 639
Moneyness of financial assets, 240–241
Money supply

central bank role, 132–142, 146, 147, 363

demand for money, 141, 146

discount rate, 135

interest rates and, 139–140, 146–147, 363–364

monetary aggregates, 136–137

monetary policy influence, 132–135, 146, 147, 470

money multiplier or expansion, 137–139, 140

in open economy, 141–142

 - pen market operations, 133–134
 - pen market repurchase agreements, 134–135
reserve requirements, 132–133, 141
sovereign debt markets, 470
types of money, 135–136
velocity of money, 137
Monte Carlo method, 282
Moody's Investors Service Inc., 84, 85–86, 89, 94, 381, 486, 503–504, 626, 662
Moody's/Real Capital Analytics Commercial Property Price Indices, 800
Moral hazard, 36
Morgan Keegan, 187
Morgan Stanley

investment banking, 187, 198, 202

MSCI Indexes, 556, 562, 591, 592, 594, 607, 801–802, 837

Morgenstern, Oskar, 306

Morningstar Credit Ratings LLC, 84, 825, 826, 827

Mortgage-backed securities

commercial, 762, 805–808, 837, 1018

example deal, 807–808

structure, 806–807

trading, 808

corporate bonds, 654

credit ratings, 84, 87

defined, 762

global financial crisis, 17, 34, 750, 786, 788–790

government bailouts for debts in, 33–34

interest rates, 383

investment banking firms, 191

 - ptions contracts, 891–892
prepayment risk, 383, 766–774, 781–782, 787–788, 806–807
residential ( _see_ Residential mortgage-backed securities market)
Mortgage market

commercial, 803–808, 837

mortgage real estate investment trusts, 836–837

residential ( _see_ Residential mortgage market)

MSCI Indexes, 556, 562, 591, 592, 594, 607, 801–802, 837

MSRB (Municipal Securities Rulemaking Board), 507

MST Capital, 200

MTNs (medium-term notes), 666–668

Mulcathy, Diane, 713

Multilateral financial institutions, 496. _See also_ Supranational organizations

Munich Reinsurance Company, 160

Municipal banks, 494–495

Municipal government debt markets. _See_ Subnational (municipal) government debt markets

Municipal Securities Rulemaking Board (MSRB), 507

Murdock, Rupert, 720

Mutual Benefit Life Insurance Company, 165, 169

Mutual funds. _See_ Investment companies

Nanda, Vikram, 715

NAREIT (National Association of Real Estate Investment Trusts), 802, 836

Nasdaq

architectural structure, 440, 525

broad-based stock index futures, 856

electronic trading, 519, 531–532

equity market trading venue, 531–532

exchange-traded funds tracking, 828

Nasdaq 100 Index, 561, 889, 890

Nasdaq Composite Index, 556, 561

 - ptions trading, 888, 997
 - ver-the-counter or unlisted stocks, 531–532, 536
stock index options, 889, 890
stock market volatility index, 858
National Association of Insurance Commissioners, 87, 171
National Association of Real Estate Investment Trusts (NAREIT), 802, 836
National Bank Act (1863), 101
National banks, 102
National best bid and offer (NBBO), 524, 527

National Council of Real Estate Investment Fiduciaries, 799

National Credit Union Administration, 114, 116

National Credit Union Share insurance Fund, 116

Nationally recognized statistical rating organizations (NRSROs), 83–84, 87–88, 89

National markets. _See_ Internal markets

National Steel, 76

National Venture Capital Association (NVCA), 712

NAV (net asset value), 819–820, 821, 829–830

Navistar, 76

Near money, 241

Negotiable order of withdrawal accounts, 115

Net asset value (NAV), 819–820, 821, 829–830

Netherlands

corporate debt markets, 652

foreign (Rembrandt) market, 12, 652

nonprofit organizations, 69

pension funds, 66

residential mortgage market, 740, 742

stock market indexes, 858

New Horizons Fund Inc., 717

New York Angels, 709

New York City Pension Fund, 931–932

New York Stock Exchange (NYSE)

architectural structure, 440, 525

block trade rules, 575–576

electronic trading, 519–520, 530–532

equity market trading venue, 528–531

Euronext Liffe, 847, 858

evolution of, 519

high-frequency trading, 580

listed or exchange-traded stocks, 528–531

New York Stock Exchange Composite Index, 556, 561

 - ptions trading, 888
Super Designated Order Turnaround system, 519–520, 530
New Zealand

currency futures contracts, 863

developed market, 13, 590

foreign exchange rates and market, 996, 997

Nikkei (Nihon Keizai Shinbun)

Nikkei 225 Stock Average, 594

returns distribution, 270, 274

NM Rothschild, 188

Noble Capital Markets, 193

Nonfinancial corporations

bank activities with, 110

commercial paper issuers, 627–628

interest rate swaps, 966–969, 972–973

as private market participants, 63–64

Nonprofit organizations, 68–69

Non-U.S. equity markets

Chinese markets, 590, 591, 596–607

advantages, 597

asset/share classes, 603–606

disadvantages, 597

exchanges, 597–599, 602–603

government intervention, 597

qualified domestic institutional investor program, 602

qualified foreign institutional investor program, 601–602

regulations, 600–602

retail investors, 596–597

split share structure reform, 600–601

state-owned enterprises, 597–598

Stock Connect, 606

stock market indexes, 598, 599, 606–607

structure, 597–599

U.S. equity markets _vs_ ., 607

volatility, 596–597

developed markets, 589–590, 592

electronic trading, 596, 602–603

emerging (developing) markets, 590, 591, 592, 596–607

frontier (pre-emerging) markets, 591, 592

global exchanges, 591, 593

 - ver-the-counter markets, 607–609
 - verview, 588
rationale for investing outside home market, 588–589
regulations

Chinese, 600–602

U.K. and European, 595–596

risk, 589, 596

stock market indexes, 588, 589, 590, 591–595, 598, 599, 606–607

U.S. equity markets _vs_ ., 607

Normal distributions

attacks on, 276–277

describing, 269–270

returns, 270–278

stability property, 269, 272, 276

North American Securities Administrators Association, 522

Norway

currency futures contracts, 863

foreign exchange rates and market, 996

sovereign debt markets, 485

sovereign wealth fund, 70

subnational (municipal) government debt markets, 498

Notes

convertible, 722–725

credit-linked, 1009, 1020–1021

maturity, 654, 666–668, 1020

medium-term, 666–668

municipal, 502–503

structured, 667–668, 980

U.S. Treasury, 862

NRSROs (nationally recognized statistical rating organizations), 83–84, 87–88, 89

NVCA (National Venture Capital Association), 712

NYSE. _See_ New York Stock Exchange

Obamacare (Patient Protection and Affordable Care Act), 161

OECD countries, 66

OESX (Euro STOXX 50 Index option), 890

Office of the Comptroller of the Currency (OCC, U.S.)

asset-back securities market regulation, 685, 690

bank/financial institution oversight, 101, 103, 115

credit rating use, 87

National Risk Committee, 103

  - ptions contracts guidelines, 888
role and structure, 103
Survey of Credit Underwriting Practices, 103
Offshore markets. _See_ External markets

Offshore trading, 542

Online venture capital, 715–716

Open market operations, 133–134

Open market repurchase agreements, 134–135

Operational risk, 56–57

Oppenheimer Funds, 826

Opportunity costs, 447, 574

Options contracts

alternative or either-or options, 892–893

American, 875, 888, 890, 914

applications, 935–938

asymmetric or nonlinear payoffs, 877

Bermuda or Atlantic, 875, 892

binomial option pricing model, 917–923

buying

call options, 877–881, 936–937

put options, 881–884, 936–937

call, 15, 243, 382, 657, 875, 877–882, 887, 893–894, 911–924, 936–937, 981

captions, 981

currency options contracts, 997

defined, 15, 874–875

economic role of options markets, 886–888

European, 875, 889–890, 914, 997

exchange-traded, 876, 888–892

exercise style, 875, 892–893

exotic options, 892–893

fixed-income option pricing model, 923–924

FLEX options, 892

flotions, 981

futures contracts differences, 876–877, 887–888

futures options, 893–895, 997

hedge ratios, 919–921

hedging strategies, 886–888, 918–921, 932–933

insurance arrangements, 876–877, 886–888, 932–933

interest rate caps and floors, 981–982

interest rate options, 891–892, 936–938, 981–982

interest rates and, 382–383, 891–892, 916–917, 936–938, 977–978, 981–982

interest rate swaps, 977–978

intrinsic value, 911

investment banking firms trading, 201, 876

long position, 877, 878–881, 882–884, 887, 912–914

long-term equity anticipation securities, 891

maturity or expiration date, 243, 875, 888–889, 891, 892–893, 915–916

 - utperformance options, 893
 - verview, 874, 896–897
pricing, 874–875, 888, 910–925, 997
put, 15, 243, 383, 875, 877, 881–885, 886–887, 894, 895, 911–917, 932–933, 936–937, 982
put-call parity relationship, 912–914
residential mortgage market, 737
returns, 875, 876–886, 888
risk, 875, 876–888
settlement system, 889–891
short position, 877, 881–882, 884–885, 912–914, 917–919
stock index options, 889–891, 892, 932–933, 936
stock options, 888–889, 892, 936
swaptions, 977–978
time premium, 911–912
time value of money, 885–886, 913–914
trading, 201, 876, 888–895
underlying asset, 875
U.S. options market, 888–893
warrants, 657
writing or selling

call options, 881–882

put options, 884–885

Orange County, California

bankruptcy, 89, 506

  - perational risk, 56
Order-driven markets. _See also_ Auction markets

brokerage firm and dealer role, 445

continuous, 438, 523, 528

equity markets, 522–523, 524–525, 526, 528

periodic call, 439, 523, 528

price scan, 439

quote-driven _vs_ ., 524–525

sealed bid/ask, 439

secondary markets, 438–439, 440, 445

Oriental Land Company, 180

Outperformance options, 893

Overstock.com, 426

Over-the-counter interest rate derivatives

forward rate agreements, 956–959, 960–961

interest rate caps and floors, 980–983

interest rate swaps, 959–980, 1019, 1022–1023

 - verview, 956, 983–984
Over-the-counter markets

classification, 10

corporate bonds, 664, 665

credit rating use, 88

equity markets, 524, 526, 527, 531–532, 536, 607–609

foreign exchange, 460, 990–996, 998–1002

forward contracts, 853, 990–996

interest rate derivatives, 955–987, 1019, 1022–1023

investment banking firms, 201

 - ptions contracts, 876, 891–892
quote-driven, 440, 524
secondary markets, 439–440, 481

Pacifica, 190

Pacific Investment Management Co. (PIMCO), 826

Page, Larry, 416, 704, 720

Pan American Airlines, 76

Paper economy, 17

Pareto optimality, 366–367

Paribas, 190

Passive funds, 824, 825

Patient Protection and Affordable Care Act (Obamacare), 161

Paulson, Henry M., Jr., 684

Payment-in-kind bonds, 661

Payment mechanisms, 52, 129

Payment-to-income ratio, 735–736, 744–745

PBGC (Pension Benefit Guaranty Corporation), 67, 74–75, 76

Pearson correlation coefficient, 280

Pearson's kurtosis, 268

Pearson's skewness, 267

Penn Central, 629

Pension Benefit Guaranty Corporation (PBGC), 67, 74–75, 76

Pension Funding Equity Act, 76

Pension funds

asset/liability management, 53, 54–55, 75–79

book reserves, 66

commercial real estate markets, 795, 798–799

defined benefit plans, 67, 68, 75–79, 799

defined contribution plans, 67–68

fiduciary standards, 73

as financial intermediaries, 49

401(k) plans, 68

403(b) plans, 68

457 plans, 68

funding ratios, 75–76, 78–79

funding standards, 73

futures contracts, 931–932, 933–935

guarantees or protections, 67, 74–75, 76

household investments, 63

individual retirement accounts, 66

insurance companies and, 179–180

insurance contracts, 66

investment banking firms securities placement with, 191

nonfinancial corporations providing, 64

 - ccupational, 65
 - ptions contracts, 937
personal, 65
private, 65–68, 73–79
as private market participants, 65–68, 73–79
public, 67, 77, 79
regulations, 73–75
residential mortgage-backed securities market, 767
sovereign debt markets, 472
sponsors of, 65, 67–68
vesting standards, 73
Pension Protection Act of 2006, 76
Pension Real Estate Association, 810
PepsiCo, 191
Percentiles, probability distributions, 268
Perfect competition

capital markets, 319–320

friction absence, 320, 440

secondary market theoretical characteristics, 440–443

short selling importance, 441–443

Perpetual bonds, 243

Philippines, commercial paper market, 630

Phillips, Susan, 867

PIIGS (Portugal, Ireland, Italy, Greece, Spain), 13, 590. _See also specific countries_

PIMCO (Pacific Investment Management Co.), 826

Ping destinations, 535

Pipeline risk, 736–737

Planned amortization class tranches, 781–784

Platykurtic distribution, 270

Poland, sovereign debt markets, 473, 474

Political risk, 93, 484–485

Port Authority of New York and New Jersey, 497

Portfolio management firms. _See_ Asset management firms

Portfolio selection theory

assumptions, 302, 309, 311

behavioral finance theory _vs_ ., 309–312

behavioral portfolio theory, 312

capital market theory and, 296, 318, 320–322

concept of, 297–298

constructing portfolios, 302–305

correlations, 300–302

criticisms of, 308–312

diversification, 297–298, 301

efficient portfolios, 298, 302, 304–305

expected returns, 299

feasible portfolios, 303–304, 305

homogeneous expectations assumptions, 302, 309

indifference curves, 306–308

Markowitz, 298–300

mean-variance analysis or optimization, 267, 299

mean-variance assumptions, 302, 309, 311

 - ne-period horizon assumptions, 302, 309
 - ptimization assumptions, 302
 - verview, 296–297, 312–313
risk aversion assumptions, 298, 302
risk measures, 281–284, 298, 299–300
risk tolerance, 305–308
selecting optimal portfolio, 305–308
stock market investment strategies, 566
utility function, 306–308
Portugal

emerging market, 13, 590

insurance companies, 178

residential mortgage market, 742

Positive time preference, 365

Posner, N.S., 537

Preemptive rights offering, 428

Preferred habitat theory, 404–405

Preferred stock shares

common stock _vs_ ., 516

convertibility, 243, 720–723

dividends, 516, 721

as equity instruments, 6, 516

liquidation preferences, 721–722

participating, 722

SME financing, 720–723

Prefunded municipal securities, 502

Prepayment risk

commercial real estate markets, 804, 806–807

mortgage-backed securities, 383, 766–774, 781–782, 787–788, 806–807

residential mortgage market, 742–743, 748

Preqin, 810

Present value of cash flows, 77, 246, 391–392

Price risk

defined, 221–222

futures contracts reducing, 852, 854–855, 864, 886, 887–888, 941

hedging against ( _see_ Hedging strategies)

interest rate effects, 222, 370, 402, 405

market instruments for controlling, 222

measuring, 222

price risk-transferring innovations, 230–231

residential mortgage market, 737, 748

Pricing

arbitrage pricing theory model, 334–336

derivative instruments, 846

efficiency, 448, 563–567

exchange-traded funds, 827, 829–830

financial asset ( _see_ Financial asset pricing)

foreign exchange forward contracts, 991–996

futures contracts, 847–848, 850–852, 856, 859–861, 864–865, 900–910, 924, 932, 935, 942

insurance policy, 157

investment company shares, 819–820, 821, 827, 829–830

market price of risk, 324

net asset values and, 819–820, 821, 829–830

 - ptions contracts, 874–875, 888, 910–925, 997
 - rder-driven markets price scan, 439
price discovery process, 9, 866–867
price risk ( _see_ Price risk)
secondary market information, 436–437
securities, 194–200
short selling, 221, 441–443
spot markets, 864–865
stability, 31, 32, 142
stock market, 563–567
stock weighting based on, 556–560
subscription, 428
trading or price limit rules, 539
Primary markets

auction process, 425–428, 477–478

bought deals, 425

classification, 10

defining a security, 417–418

disclosure requirements, 418–423

distribution methods, 477–479

fundraising implications of global market integration, 428–430

global capital market integration, 428–430

investment banking firms, 416

medium-term notes, 667

 - verview, 416, 430–431
preemptive rights offering, 428
primary dealers, 479–480
private offering exemptions, 422–423
prospectus requirements, 418–419, 421
regulations, 416–424, 520–521
SEC filing requirements, 419–421
solicitation of funds, 423–424
sovereign debt markets, 472, 476–480
syndication, 478–479
tap sales, 479
underwriting, 419, 424–428, 479
Prime brokerage, 201
Princeton University, 69
Private finance initiatives, 496–497
Private market participants

depository institutions, 64

foreign exchange market, 461

foreign investors, 69–71

households, 62–63

insurance companies, 64–65

investment companies, 65

nonfinancial corporations, 63–64

nonprofit organizations, 68–69

 - verview, 61–79
private pension funds, 65–68, 73–79
Privatization

Chinese equity markets, 599

government securities, 190, 416

private finance initiatives, 496–497

private securities offering exemptions, 422–423

public-private partnerships, 496–497

Probability distributions

central value, 266, 269

continuous, 266, 269–278

correlations, 280

covariance, 280

describing, 266–268

dispersion, 266–267, 269

joint or multivariate, 279–280

kurtosis, 268, 269–270, 277

location, 266, 269

marginal, 279

normal or Gaussian, 269–278

 - verview, 286–288
α-quantile, 268
returns, 265–284, 286–288
risk measures, 282

skewness, 267–268, 269, 277–278, 279

stability property, 269, 272, 276

stable Paretian or Lévy stable, 277–278

statistical moments, 266–268

stock markets, 270–272, 278–279

tempered stable, 278

Procter & Gamble, 1023

Product markets, 4

Profits

foreign exchange market, 460

futures contracts, 848, 851–852, 856, 901–910

hedging loss with ( _see_ Hedging strategies)

interest rates and, 353–358

interest rate swaps, 960

 - ptions contracts, 875, 876–886, 912–913
secondary market, 735
Program trades, 200, 576–577, 867
Project finance initiatives, 496–497
Prometic Life Sciences, 425
Property insurance companies

captive, 160

catastrophic, extreme, or tail risk, 175–176

investment strategies, 176–177

as private market participants, 65

risk transfer, 216

role of, 156

spread, 53

Proprietary trading, 197–200

Prospectus requirements, 418–419, 421, 520

'Prudent man' standard, 73

Public crossing networks, 534

Public nontraded real estate investment trusts, 802–803

Public offerings

auction process, 425–428

bought deals, 425

initial, 189–190, 416, 426–428, 531, 705, 717–719

investment banking firms handling, 188–190

secondary, 189

Public pension funds, 67, 77, 79

Public-private partnerships, 496–497

Public Securities Association prepayment benchmark, 768–769

Purchasing power risk, 7, 223–224

Putable bonds, 245, 657

Put options contracts

buying, 881–884, 936–937

defined, 15, 875

futures options, 894, 895

insurance arrangements, 886–887, 932–933

interest rates and, 383, 982

intrinsic value, 911

long position, 877, 882–884, 887, 912–914

maturity, 243

pricing, 911–917

put-call parity relationship, 912–914

short position, 877, 884–885

writing or selling, 884–885

Qualified institutional buyers (QIBs), 422, 542–543, 601–602

Qualified thrift lenders, 115

Qualitative easing, 371

Quality spread, 967, 969, 970–971

Quantitative easing, 371–372

Quantum Hedge Fund, 834

Quartiles, probability distributions, 268

Quote-driven markets

equity markets, 523–525, 526

 - rder-driven _vs_ ., 524–525
secondary markets, 438, 440

Random walk hypothesis, 564–565

Raymond James, 187

Reagan, Ronald, 832

Real economy, 17–18, 62

Real estate

asset classes, 13, 14

pension fund investments, 77

purchasing power or inflation risk, 223–224

Real estate investment trusts (REITs)

collective investment vehicles market, 835–837

commercial real estate markets, 797, 799, 800–803, 805, 837

defined, 835

investors, 836

tax treatment, 800–801, 835–836

types of, 836–837

Real estate markets

commercial real estate markets, 762, 793–814, 837, 1018

residential mortgage-backed securities market, 761–792, 1018

residential mortgage market ( _see_ Residential mortgage market)

Real estate operating companies (REOCs), 800

Receivership certificates, 104

Reconstitution, 482

Reed, John, 199

Reference rates

fixed-floating financing risk, 228–229

floating rate loans, 650, 662

floating rate securities, 474

forward rate agreements, 957–958

interest rate caps and floors, 980

interest rate swaps, 959

Refunding, 656

Regional banks, 113, 632

Registered investment companies, 65, 88, 819, 826. _See also_ Investment companies

Regulations

asset-back securities market, 690–691

bank/financial institutions, 17, 28, 55–57, 100, 101–110, 114, 115, 116, 132–133, 148–149,

178–179

blue sky laws, 417, 522

capital requirements, 28, 102, 107–109

collateralized debt obligations, 1018, 1020

collective investment vehicles market, 819, 831

commercial real estate markets, 799

corporate debt markets, 653, 664–666

credit rating agencies, 84, 92

credit risk transfer vehicles regulations, 1018, 1020, 1025

deposit insurance, 109–110

depository institutions, 28, 100, 101–110, 114, 115, 116, 132–133

deregulation of financial markets, 11, 41

disclosures, 26–27, 418–423, 537, 719

equity markets

non-U.S., 595–596, 600–602

U.S., 520–522, 525–526, 536–542, 571–572

financial activities, 27–28

financial markets, generally, 25–28, 37–38, 40–42

foreign investors, 28

foreign market compliance, 12

futures contracts, 856, 857

initial public offerings, 718–719

insider trading, 27, 541–542

insolvency, 669–673

insurance companies, 168–174, 178–179

interest rate swap arbitrage, 970–971

investment banking firms, 198–200

investment company, 65, 819, 831

justification for, 26

money market mutual funds, 636, 637–639

pension funds, 73–75

primary markets, 416–424, 520–521

residential mortgage market, 743

risk management, 55–57

safety and soundness, 106–109

secondary markets, 448, 520–521, 537–542, 664–666

SME financing, 701, 707, 711, 715n36, 718–719

views on degree of government intervention via, 40–42

Reinsurance companies, 160, 167

Reinvestment risk, 222–223, 402–403, 405, 781

REITs. _See_ Real estate investment trusts

REOCs (real estate operating companies), 800

Reorganization, bankruptcy, 670, 671–672

Republic of Korea. _See_ South Korea

Repurchase agreements

credit risk, 621–623

defined, 620

global financial crisis effects, 622–623

global short-term funding and investing markets, 620–625, 639

interest or repo rates, 483–484, 620, 624–625, 861

negative, 624–625

market participants, 623–624

money market mutual funds importance, 639

 - pen market, 134–135

reverse, 134–135, 483–484, 620

secondary markets, 482–484

sovereign debt markets, 482–484

Reserve Primary Fund, 637–638

Reserve requirements. _See also_ Capital requirements

central bank role, 129–130, 132–133, 141, 146–147

insurance companies, 169–170, 171

interest on excess reserves, 615

international reserves, 141

reserve ratios/required reserves, 112–113, 129–130, 132–133, 615

Residential mortgage-backed securities market

agency, 763–785

collateralized mortgage obligations, 774–784

pass-through securities, 763–774

stripped mortgage-backed securities, 782, 784–785

average life or maturity, 772, 774, 777, 780–781, 782, 784

collateralized mortgage obligations

agency, 774–784

credit risk transfer vehicles, 1018

private-label, 785–790

contraction risk, 766–767, 777, 781

credit enhancement, 786–788, 789–790

excess spread, 788

monoline insurance, 788

  - vercollateralization, 788
senior-subordinate structure, 787–788
credit risk, 787–788
extension risk, 766–767, 777, 781

 - verview, 762–763, 790–791
prepayment risk, 766–774, 781–782, 787–788
prime mortgage market, 762–763, 785–786
private-label or nonagency, 763, 785–790

collateralized mortgage obligations, 785–790

credit enhancement, 786–788

reinvestment risk, 781

subprime mortgage crisis, 786, 788–790, 1018

subprime mortgage market, 762–763, 785–786, 788–790

Residential mortgage market

amortization, 740–742, 756–759

credit ratings, 744–745, 789–790

down payments, 736

government as financial intermediary, 29–30

government guarantees, 745–746, 749

interest rates, 738–740, 742, 743, 756–759

investment risks, 737, 747–748

mortgage origination, 735–738

fees and revenue, 735, 738

mortgage servicers, 737–738

process, 735–736

risks, 736–737

 - verview, 734, 751–754
payment calculations, 756–759
prepayments, 742–743, 748
prime loans, 744–745, 762–763, 785–786
regulations, 743
repayment structure, 740–742, 756–759
residential mortgage real estate investment trusts, 837
secondary markets, 735, 749–750
subprime loans, 744–745, 747, 750, 762–763, 785–786, 788–790
subprime mortgage crisis, 29, 34, 84, 684, 750, 786, 788–790, 1018
types of mortgage loans, 738–747

conforming _vs_ . nonconforming status, 746–747, 763

credit classification, 744–745

credit guarantees, 745–746

interest rate, 738–740, 756–759

lender's recourse, 743

lien status, 744

repayment structure, 740–742, 756–759

treatment of prepayments, 742–743

underwriting, 735–736, 746–747, 749, 789

Residual claims. _See_ Equity instruments

Residual risk. _See_ Idiosyncratic risk

Resolution Trust Corporation (RTC), 33

Restructuring

credit derivatives, 1011–1012, 1022

hedge funds, 833

investment banking firms advising on, 193

Retail investors, 11, 200, 596–597, 811, 836

Retail Price Index (U.K.) inflation rate measurements, 475, 659

Returns. _See also_ Dividend payments; Interest rates

absolute, 796–797, 833

arithmetic average, 284–285

  - n assets, discount rate as, 78
basis points, 251
capital market theory, 296, 317–341
cash flow and, 6–7, 244–245
commercial paper market, 630
commercial real estate markets, 796–797, 800, 809–811
correlations, 280, 300–302, 319
expected portfolio, 299
financial asset pricing and, 6–7, 250–251, 253–254
financial markets role in determining, 9
fundamental factor models, 337–338
geometric or time-weighted average, 285
hedge funds, 833
insurance companies, 158

interest rate caps and floors, 981–982

interest rate swaps, 959–960, 961

level of yield, 253–254

macroeconomic factor models, 337

measuring rate of, 265

nominal expected, 242

 - ptions contracts, 875, 876–886, 888
 - verview, 264–265, 286–289
portfolio selection theory, 267, 281–284, 295–316
predictability, 244–245
probability distributions, 265–284, 286–288
real expected, 242
relative, 833
required yield, 250–251
reward-risk ratios, 284–286
risk-adjusted, 796–797
risk and, 281–286, 288–289, 296, 305–308, 324–336, 338–340, 796–797, 959–960, 981–

982

SME financing, 710, 712, 723–724

stock market investments, 270–272, 278–279, 568, 573

Reuters, 460

Revenue anticipation notes, 503

Revenue bonds, 89, 95, 500–501

Reversibility

financial assets, 241–242, 248

reverse repurchase agreements, 134–135, 483–484, 620

swap reversals, 975

RGA Reinsurance Company, 169

Risk

asymmetric, 281, 876

aversion, 298, 302, 319, 321–322

balloon, 805, 807

basis, 942, 946–948, 977

brokerage firms and dealers, 445–446

business, 94

capital market theory, 296, 317–341

catastrophic, extreme, or tail, 174–176, 217

central bank assessment and reduction of, 129, 148–149

collective investment vehicles reducing/controlling, 824, 833

commercial real estate investments reducing, 796

contraction, 766–767, 777, 781

convertibility, 225

corporate governance, 94

correlations, 300–302, 319

counterparty, 56, 218–220, 1022, 1024

credit ( _see_ Credit risk)

cross-hedging, 942

default ( _see_ Default risk)

defining, 211–213

deposit insurance reflecting, 109–110

derivative instruments controlling, 15–17, 216, 221, 222, 846

diversification for reduction of, 51, 328, 685, 824

downgrade, 381

economic, 484

extension, 766–767, 777, 781, 805

extreme mortality, 175

fallout, 737

financial, 94–95, 214–217 ( _see also_ Systemic financial risk)

financial asset pricing and, 6–7, 213, 221–222, 249, 319–330

financial innovations and, 230–231

fixed-floating financing, 228–229

foreign-exchange, 7, 224–225, 454, 462–463, 863–864, 998–999, 1000, 1002

funding, 56, 118, 225–229

funding liquidity, 56, 227

hedging-associated, 942, 946–948

idiosyncratic, diversifiable, residual, unsystematic, 213, 324–330, 692

insurance company protection against, 64–65, 216, 1023–1024 ( _see also_ Insurance

companies)

interest rate, 380–385, 637, 692, 934, 976, 977–978

interest rate caps and floors, 981–982

interest rate swaps, 959–960, 961

investment, 218–225, 737, 747–748

legal, 57, 1022

leverage, 225–226

liquidity, 56, 224, 227, 637, 645, 748

longevity, 175

management of, 55–57, 209–238

market, 56, 325

market-making, 241

market price of, 324

model, 265

mortgage origination, 736–737

multidimensionality, 281

neutralization, 215–216

non-U.S. equity markets, 589, 596

- perational, 56–57
- ptions contracts, 875, 876–888
- verview, 210–211, 231–233
pipeline, 736–737
political, 93, 484–485
portfolio measures, 281–284, 298, 299–300
portfolio selection theory, 267, 281–284, 295–316
prepayment, 383, 742–743, 748, 766–774, 781–782, 787–788, 804, 806–807
price ( _see_ Price risk)
purchasing power or inflation, 7, 223–224
regulations to manage, 55–57

reinvestment, 222–223, 402–403, 405, 781

relativity, 281

retained, 215

returns and, 281–286, 288–289, 296, 305–308, 324–336, 338–340, 796–797, 959–960, 981–

982

reward-risk ratios, 284–286

risk arbitrage, 195–197, 910

risk-based capital requirements, 107–108

risk-free asset assumptions, 320–324

risk-free interest rates, 370–371, 916–917

riskless arbitrage, 194–195, 456, 458, 901–904, 918, 994

risk retention decision, 214

risk-sharing arrangements, 846, 853–854

rollover, 626, 645

securitization as corporate risk management tool, 691–692

settlement, 56

sovereign credit, 484–486, 1009

systematic, 213, 324–330

systemic financial, 25, 35–37, 63, 103–105, 148–149, 173–174, 229–230, 834–835

timing, 227–228, 656

tolerance, 305–308

transfer, 9, 216–217, 220–221, 230–231, 846, 1007–1027

uncertainty _vs_ ., 211–212

value-at-risk, 56, 281–284

conditional, 283–284

RiskMetrics methods, 282

Roll, Richard, 334

Roller-coaster swaps, 976

Rollover mortgages, 740

Rollover risk, 626, 645

Roosevelt, Franklin, 17

Ross, Stephen A., 334–335

Roundaboutness, 365–366

Round-trip costs, 241–242

Royal Bank of Canada, 101

RTC (Resolution Trust Corporation), 33

Rule 144A securities, 542–543

Russell Indexes, 556, 562, 858, 889, 890

Russia

asset-back securities market, 685

emerging market, 13, 590

Group of 8, 130

sovereign debt crisis, 34

Safe asset controversy, 370–371

Safety and soundness regulations, 106–109

Sales charges, 821–822

Salomon Brothers, 931–932, 935

SAMA Foreign Holdings, 70

Samsung Ventures, 714

Samuelson, Paul, 365, 565

Sarbanes-Oxley Act of 2002, 417, 718–719

Saudi Arabia, sovereign wealth fund, 70

Savings

consumer choices, 357–359

current _vs_ . future consumption preferences, 348–349

defined, 348

market equilibrium, 359–362

 - pportunities in loan market, 349–351
Savings and loan (S&L) associations

certificates of deposit, 632

deposit insurance, 109, 125

as financial intermediaries, 49, 52

government intervention, 33, 42

interest rate swaps, 966

nonbank depository institutions, 114–115

payment mechanisms provided by, 52

S&L crisis, 115, 124–125

Savings banks, 49, 52, 114–115, 632

Savings institutions, 114–115. _See also_ Savings and loan (S&L) associations; Savings banks

Schoar, Antoinette, 619

Scholes, Myron, 917

Schwarcz, Steven, 690

Search costs, 9, 437

Sears, Roebuck, 430

SEC. _See_ Securities and Exchange Commission

Secondary Market Enhancement Act of 1984, 87

Secondary markets

architectural structure, 437–439

brokerage firms and dealers, 437–438, 443–446, 481–484, 506–507, 665–666

classification, 10

common stock shares, 517

corporate bonds, 664–666

efficiency, 446–448

electronic trading, 448–449, 481, 665–666

equity markets, 517, 537–543

exchanges, 439–440, 480–481

function of, 436–437

interest rate swaps, 975–976

investment company shares, 820–821

municipal bonds, 506–508

 - rder-driven or auction, 438–439, 440, 445
 - ver-the-counter, 439–440, 481
 - verview, 435, 449–450
perfect market characteristics, theoretical, 440–443
potential parties to a trade, 437–438

quote-driven or dealer, 438, 440

real markets, 443–446

regulations, 448. 520–521, 537–542, 664–666

repurchase agreements, 482–484

residential mortgage market, 735, 749–750

settlement system, 480

short selling, 441–443

sovereign debt markets, 472, 480–484

stripping and reconstitution, 482, 483

syndicated bank loans, 651, 1008–1009

trading locations, 439–440

Sector real estate investment trusts, 800

Securities. _See also_ Bonds; Stock shares

asset-backed ( _see_ Asset-backed securities market; Mortgage-backed securities)

coupon, 379, 472

defining, 417–418

discount, 379, 472

dual-currency, 243–244, 659

equity dilutive, 719–725

exchange rate-linked, 476

floating rate, 473–474, 503, 658, 668, 959–963

inflation-adjusted, 224, 368–369, 380, 473, 474–476, 659

insurance-linked, 175–176

interest rate swap application to create, 979–980

long-term equity anticipation, 891

pricing, 194–200

Rule 144A, 542–543

trading ( _see_ Trading of securities)

Treasury Inflation Protected Securities, 368–369, 380, 475–476, 659

Securities Act of 1933 (U.S.)

commercial paper exemptions, 626

disclosure regulations, 27, 418, 419, 422

equity market regulations, 520

primary market regulation, 416, 418, 419, 422, 424

solicitation of funds, 424

Securities Act of 1975 (U.S.), 537

Securities and Exchange Commission (SEC, U.S.)

asset-back securities market regulation, 690–691

Corporate Finance Division, 521

credit rating agency oversight, 83–84, 87–88, 89, 91–92

disclosure regulations, 27, 418–423

Economic and Risk Analysis Division, 521

Enforcement Division, 521

equity market regulations, 520–521, 525, 537–542

establishment, 27

filing requirements, 419–421

financial activity regulations, 28

futures contracts regulations, 856, 857

high-frequency trading, 577–581

investment company regulations, 65, 819, 831

Investment Management Division, 521

medium-term note regulations, 667

money market mutual funds regulation, 636, 637–639

primary market regulation, 417, 418–424, 520–521

private offering exemptions, 422–423

public offering filing, 416

secondary market regulations, 448, 520–521

self-registration rule, 421

SME financing regulations, 711, 715n36, 718

solicitation of funds rules, 424

Trading and Markets Division, 521

Securities and Exchange Law of 1948 (Japan), 417

Securities and Futures Commission (Hong Kong), 419

Securities Dealer's Association (Japan), 417

Securities Exchange Act of 1934 (U.S.)

asset-back securities regulation, 691

credit ratings amendments, 92

disclosure regulations, 27, 418, 422

equity market regulations, 520, 525–526, 541–542, 571–572

insider trading rules, 541–542

primary market regulations, 416, 418, 422

secondary market efficiency, 448

Securities firms, 88

Securities Industry and Financial Markets Association, 1018

Security market line (SML), 330–332

Seed accelerators, 711

Seed capital financing, 702, 703–704, 705–711

SEHK (Hong Kong Stock Exchange), 599, 602

Sequential-pay tranches, 775–780

Settlement rates, 957–958

Settlement risk, 56

Settlement system

credit default swaps, 1013, 1014, 1015–1017

equity markets, 537

foreign exchange market, 461–462

futures contracts, 847, 848–849, 857, 859–861, 901–907, 910

insurance company structured settlements, 157

 - ptions contracts, 889–891
secondary markets, 480
Shad-Johnson Accord, 856n1, 857–858n2
Shadow banking system, 116–119
Shanghai-Hong Kong Stock Connect, 606
Shanghai Stock Exchange (SSE), 599, 602–603
Shanghai Stock Exchange Composite Index, 606
Sharpe, William, 296, 321, 568
Sharpe ratio, 285–286

Shefrin, Hersh, 310, 311

Shenzhen Composite Index, 606

Shenzhen-Hong Kong Stock Connect, 606

Shenzhen Stock Exchange (SZSE), 599, 603

Shiller, Robert, 276, 365

Short selling

defined, 540

equity market rules, 540–541

futures contracts, 848, 861–862, 902–903, 909–910, 942, 961

margin transactions, 572

mechanics of, 442–443

naked, 540–541

 - ptions contracts, 877, 881, 884–885, 912–914, 917–919
price risk, 221
rationales, 441–442
secondary market importance, 441–443
SIFI (systemically important financial institutions), 36–37, 105, 155, 173–174
Singapore

commercial real estate markets, 801

corporate debt markets, 664

financial market regulations, 38

foreign exchange rates and market, 460

sovereign debt markets, 472, 485

Sinking fund provisions, 656

Skanska, 497

Skewness, 267–268, 269, 277–278, 279

Slovic, Paul, 310

Small, medium-sized, and entrepreneurial enterprises (SME) financing market

angel investors/groups, 707–710, 837–838

bootstrap financing, 703–704

bridge loans, 705

convertible notes, 722–725

convertible preferred stock, 720–723

credit card financing, 704

debt with warrants, 725

definition of SME, 699–700

direct credit loans, 706

equity crowdfunding platforms, 710–711

equity dilutive securities, 719–725

expansion stage financing, 705, 711–719

sources, 711–719

first round financing, 702, 704–705

government programs and initiatives, 700–701, 705–707

initial public offering, 705, 717–719

institutional investors, 705, 716–717

loan or credit guarantees, 705–706

 - verview, 698–699, 726–728
preferable tax treatment, 706

regulations, 701, 707, 711, 715n36, 718–719

second round financing, 705

seed accelerators, 711

seed capital financing, 702, 703–704, 705–711

sources, 703–704, 705–711

stages of development and financing, 702–705

third round financing, 705

vendor financing or trade credit, 704

venture capital, 704–705, 708, 709, 712–716, 837–840

corporate, 714–715

  - nline, 715–716
Small Business Administration, U.S., 29, 706
Smart beta strategy, 567
SME financing. _See_ Small, medium-sized, and entrepreneurial enterprises (SME) financing

market

Smetters, Kent, 1020

SML (security market line), 330–332

Society for Worldwide Interbank Financial Telecommunications, 462

Solicitation of funds, 423–424

Soros, George, 831–832

Sortino ratio, 286

South Africa, emerging equity market, 591

South Korea

corporate debt markets, 664

residential mortgage market, 740, 742

SME financing market, 698, 701, 707

Sovereign credit risk, 484–486, 1009

Sovereign debt markets

auctions, 477–478

benefits of, 470

credit rating agencies and, 84, 92–93, 484–486

distribution methods, 477–479

economic risk, 484

exchange rate-linked securities, 476

floating rate securities, 473–474

inflation-adjusted securities, 473, 474–476

 - verview, 470–472, 486–487
political risk, 484–485
primary dealers, 479–480
primary markets, 472, 476–480
repurchase agreements, 482–484
secondary markets, 472, 480–484
securities issues, types of, 472–476
sovereign credit risk, 484–486, 1009
stripping and reconstitution, 482, 483
syndication, 478–479
tap sales, 479
underwriting, 479

Sovereign wealth funds (SWF), 70–71, 810–811

S&P. _See Standard & Poor's entries_

Spain

commercial paper market, 630

corporate debt markets, 652

emerging market, 13, 590

foreign (Matador) market, 12, 652

insurance companies, 178

primary market regulation, 417

residential mortgage market, 734, 740, 742, 745

SME financing market, 701

sovereign debt markets, 473, 485

subnational (municipal) government debt markets, 492

SPDRs (Standard & Poor's Depository Receipts), 828

Special purpose vehicles (SPVs)

asset-back securities market, 679, 687–689, 1009

shadow banking system, 117–119

Specialty real estate investment trusts, 800

Spot markets

defined, 9

foreign exchange, 453–465, 990

futures markets _vs_ ., 864–865, 943–953

pricing, 864–865

spot rates, 388–394, 398–399, 991–995

Spread

asset/liability management, 53

bid-ask, 241, 438, 445, 460, 821, 972, 990

credit spread risk, 220, 381

electronic trading effects, 519

equity markets, 519

excess, 788

gross, 189–190

interest rate risk premium, 380–385

intermarket sector, 381

intramarket sector, 381

investment banking firms, 189–190, 194–197

maturity, 382

quality, 967, 969, 970–971

quoted margin, 474

swap, 973–975

SPVs. _See_ Special purpose vehicles

SSE (Shanghai Stock Exchange), 599, 602–603

Stagflation, 142

Standard deviation

capital market theory, 323, 330, 333

  - ptions contracts pricing, 916
portfolio selection theory, 298
probability distributions, 267

risk measures, 281, 286, 298

Standard & Poor's 500

category of stocks indexed, 556

exchange-traded funds tracking, 828, 830–831

individual stock selection, 556, 562

 - verview, 561–562
returns distribution, 270–272
S&P China 500, 606–607
sponsor, 556
stock index futures, 856, 867
stock index options, 889, 890
stock weighting methods, 558, 559
Standard & Poor's Depository Receipts (SPDRs), 828
Standard & Poor's Rating Services, 84, 85–86, 89, 94, 381, 485–486, 626, 1021
Standby fees, 428
Stanford University, 69
State governments. _See also_ Subnational (municipal) government debt markets

auction process, 426

bank regulations, 101–102

equity market regulations, 522

insurance regulations, 170–171

primary market regulations, 417

State-owned enterprises, 597–598

State Street Global Advisors, 57

State Street Global Investors, 828

Statistical factors models, 336–337

Statman, Meir, 311

Steel, Robert, 790

Step-up bonds, 661

Stigler, George, 444

Stiglitz, Joseph, 41

Stitchting INGKA Foundation, 69

Stock market indexes

benchmark, 827–831, 837

category of stocks indexed, 556

exchange-provided indexes, 593–594

exchange-traded funds tracking, 827–831

futures contracts, 576, 855–858, 866–868, 907–908, 909, 930–933

applications, 930–933

benefits, 866–868

broad-based, 855–857

narrow-based, 855–856, 857

pricing, 907–908, 909

single-stock futures, 857–858

stock market volatility futures, 858

global, 890

index arbitrage, 576–577, 867, 932

individual stock selection, 556, 562

international, 594–595

investment strategies with, 567

major U.S., 560–563

non-U.S. equity markets, 588, 589, 590, 591–595, 598, 599, 606–607

 - ptions contracts, 889–891, 892, 932–933, 936
passive or indexed funds replicating, 824, 825
sponsors, 555–556, 593–595
stock weighting methods, 556–560, 606–607
U.S. common stock market, 555–563, 567, 576–577
volatility indexes, 562–563, 858
Stock markets. _See also_ Equity markets

algorithmic trading, 518, 573, 578–579

alternative trading system, 525–526, 527, 532–535

block trades, 571, 575–576

brokerage firms and dealers, 523–525, 526, 528–530, 532, 535–536, 541, 571–572, 573,

575–576

circuit-breaker rules, 539–540

commercial real estate shares, 800–801

crashes, 17, 26, 520

crossing networks, 533–535

developed markets, 589–590, 592

disclosures and transparency, 526–527, 532–535, 537

electronic communication networks, 532–533

electronic trading, 519–520, 525, 530–533, 596, 602–603, 867

emerging (developing) markets, 590, 591, 592, 596–607

equity asset classes, 13–14, 553–555, 603–606

euro equity, 544

evolution and institutionalization, 517–520

exchanges, 439–440, 480–481, 519, 522, 525–532, 591, 593, 597–599, 602–603

exchange-traded funds, 802, 821, 827–831

exchange-traded options contracts, 876, 888–892

fair and orderly markets, 529–530

frontier (pre-emerging) markets, 591, 592

global exchanges, 591, 593

high-frequency trading, 577–581

hybrid markets, 525, 526, 528

insider trading rules, 541–542

institutional investors, 575–577, 601–602

interest rates, 373

investment strategies, 566–569

limit orders, 529, 569–570

listed or exchange-traded stocks, 526, 527–531, 535, 536

margin transactions, 571–572

market timing strategies, 568

market volatility rules, 539–540

national market system, 537–539

non-U.S., 587–610

  - ffshore trading, 542
 - rder-driven markets, 522–523, 524–525, 526, 528
 - rder execution, 535–536
 - rder types, 569–571
 - ver-the-counter markets ( _see_ Over-the-counter markets)
 - verview, 516–517, 544–548, 553, 581–583, 588
pricing efficiency, 563–567
program trades, 576–577, 867
quote-driven markets, 523–525, 526
rationale for investing outside home market, 588–589
real estate investment trusts, 800–803, 835–837
regional, 528, 530
regulations

non-U.S., 595–596, 600–602

U.S., 520–522, 525–526, 536–542, 571–572

returns distributions, 270–272, 278–279, 568, 573

Rule 144A securities, 542–543

secondary markets, 517, 537–543

short selling rules, 540–541

SME financing, 710–711, 719–725

speculating on movement of, 931

stock market indexes ( _see_ Stock market indexes)

stock market volatility futures, 858

stock picking strategies, 568

stock trading market structures, 522–526

stop orders, 529, 570

trading arrangements, 569–581

trading or price limit rules, 539

trading venues, U.S., 525–535

transaction costs, 519, 573–575

U.S. common, 17, 26, 270–272, 373, 440, 520, 551–586

Stock shares

asset classes, 13–14, 553–555, 603–606

bought deal, 425

cash flow of, 7

common ( _see_ Common stock shares)

convertibility, 243, 720–723

counterparty risk, 218–219

diversified portfolio, 325–326, 589

dividend payments, 7, 516, 721

equity dilutive securities, 719–725

as equity instruments, 6, 516

euro equity, 544

exchange of, 196–197 ( _see also_ Stock markets: exchanges)

as financial assets, 5, 243

growth, 14n3, 554–555, 560, 825

household investments, 63

insurance companies, 161–162

investment banking firms handling, 189–190, 194–200

investment company, 819–835

listed or exchange-traded, 526, 527–531, 535, 536

markets for ( _see_ Equity markets; Stock markets)

national best bid and offer, 524, 527

 - ptions contracts, 888–889, 892, 936
 - ver-the-counter or unlisted, 526, 527, 531–532, 536
pension fund investments, 66, 77, 78
preferred, 6, 243, 516, 720–723
price risk, 221–222
public offering, 189–190, 416, 425–428
purchasing power or inflation risk, 223–224
real estate investment trusts, 800–803, 835–837
returns distributions, 245, 279–280
secondary markets, 517, 537–543
short selling, 442, 540–541
single-stock futures, 857–858
SME financing, 710–711, 719–725
stock warrants for, 33, 725
timing risk, 228
value, 14n3, 554–555, 560
Stockton, bankruptcy, 506
Stop orders, 529, 570
Stripped mortgage-backed securities, 782, 784–785
Stripping, 482, 483
Structured notes, 667–668, 980
Structured settlements, 157
Subnational (municipal) government debt markets

asset-back securities, 502

auction process, 426

bank lending model, 494–495

bankruptcy effects, 504–506

central government control, 493–494

Chinese municipal bond market, 508–509

credit rating agencies and, 95, 495, 503–505

credit risk, 1009

default risk, 503–506

hybrid and special structure bonds, 501–502

infrastructure financing, 496–497

insurance bonds, 501–502

multilateral financial institution arrangements, 496

municipal bonds, 95, 383–384, 495, 497–502, 506–509

green, 497–498

municipal notes, 502–503

 - verview, 492–493, 509–511
prefunded municipal securities, 502
project finance initiatives, 496–497
public-private partnerships, 496–497
revenue bonds, 95, 500–501

secondary markets, 506–508

structure of, 494–495

tax-backed debt, 95, 499–500

tax-exempt commercial paper, 503

taxability of interest, 383–384, 499

U.S. municipal securities market, 498–508

yields on tax-exempt bonds, 508

Super Designated Order Turnaround system (SuperDOT), 519–520, 530

Superregional banks, 113

Supply. _See_ Demand and supply

Supranational organizations, 40, 70, 496

Survey of Credit Underwriting Practices, 103

Swaps

corporate debt markets, 668

credit default swaps, 1009, 1010, 1012–1017, 1020, 1024

currency, 998, 999–1002

currency coupon swaps, 1002

reasons for currency swap market development, 1002

foreign exchange, 998–999

interest rate, 959–980, 1019, 1022–1023

swap premiums, 1013–1014, 1016

swap rates, 385–387

swap spread, 973–975

termination value, 1014, 1015–1016

Sweden

currency futures contracts, 863

foreign exchange rates and market, 996

interest rates, 372

sovereign debt markets, 475, 485

SWF (sovereign wealth funds), 70–71, 810–811

Swiss Reinsurance Company Limited, 160, 176

Switzerland

asset management firms, 57

currency futures contracts, 863

financial market regulations, 38

foreign exchange rates and market, 458, 996, 997, 999–1002

interest rates, 372

residential mortgage market, 740, 742

sovereign debt markets, 472, 485

Symmetric or linear payoffs, 854

Syndication

sovereign debt markets, 478–479

syndicated bank loans, 650–651, 1008–1009

underwriting syndicates, 190

Systematic risk. _See also_ Market risk

capital asset pricing model, 324–330

idiosyncratic risk _vs_ ., 213, 324–330

quantifying, 326–329

Systemically important financial institutions (SIFI), 36–37, 105, 155, 173–174

Systemic financial risk

bank/financial institution regulations, 103–105, 148–149

defined, 229–230

financial institution interconnectedness, 35–37

hedging strategies, 834–835

households bearing, 63

insurance companies, 173–174

macroprudential policies reducing, 25

SZSE (Shenzhen Stock Exchange), 599, 603

Taft-Hartley multiemployer pension plans, 67

Taiwan

corporate debt markets, 664

equity markets, 590

Taleb, Nassim, 213, 268n3

Tangible assets, 5, 7–8

Tap sales, 479

TARP (Troubled Asset Relief Program), 33, 34, 36

Tax anticipation notes, 503

Tax-backed debt, 95, 499–500

Taxes

collective investment vehicles market, 821, 826, 827–828, 835–836

commercial real estate markets, 798, 800–801

foreign exchange derivatives market, 996

futures contracts, 910

insurance companies, 162–163, 165–166

interest rate swap arbitrage, 970–971

nonprofit organizations, 68–69

pension funds, 66

real estate investment trusts, 800–801, 835–836

SME preferable tax treatment, 706

sovereign debt service, 470

subnational (municipal) government, 492, 500

taxable and tax-free MMFs, 637

tax anticipation notes, 503

tax-backed debt, 95, 499–500

tax-exempt commercial paper, 503

taxability of interest, 383–384, 482, 499

tax status of financial assets, 246, 248–249, 250

Tax Reform Act of 1986 (U.S.), 798

Technological advances

algorithmic trading, 518, 573, 578–579

electronic trading ( _see_ Electronic trading)

globalization of financial markets through, 11

high-frequency trading, 577–581

Term structure of interest rates, 378, 382, 387–406

determinants of shapes of yield curve, 400–406

expectations theory, 400–405

forward rates, 393–399, 401–402

historical shapes of yield curve, 399–400

liquidity theory, 404

market segmentation theory, 405–406

preferred habitat theory, 404–405

price risk, 402, 405

pure expectations theory, 401–404

reinvestment risk, 402–403, 405

spot rates, 388–394, 398–399

Term to maturity. _See_ Maturity

Terrorism, 56, 175, 180–181, 614

Thailand, corporate debt markets, 664

Thickness of the market, 241–242

Thrift certificates of deposit, 632

Thrifts

credit unions, 115–116

nonbank depository institutions, 114–116

residential mortgages, 735, 749, 750

savings institutions, 114–115

TIBOR (Tokyo interbank offered rate), 379n1

Time premium of options contracts, 911–912

Time tranching, 683–684, 685

Time value of money, 885–886, 913–914

Timing risk, 227–228, 656

TIPS (Treasury Inflation Protected Securities), 368–369, 380, 475–476, 659

Tobin, James, 244

Tokyo interbank offered rate (TIBOR), 379n1

Tokyo Stock Price Index (TOPIX), 593–594

Towers Watson, 810

Toyota Motor Credit Corporation, 692

Toys R Us, 806

Track ECN, 533

Trade credit, 704

Trading of derivative instruments

electronic, 847, 856

futures contracts, 201, 847, 856, 866

high-frequency, 577

investment banking firms, 201

 - ptions contracts, 201, 876, 888–895
Trading of securities

block, 200, 571, 575–576

commercial mortgage-backed, 808

common stock, 569–581

costs ( _see_ Transaction costs)

electronic ( _see_ Electronic trading)

execution of trades, 200, 446–447

high-frequency, 577–581

index arbitrage, 576–577

institutional investors, 575–577

investment banking firms, 194–200

markets for ( _see_ Financial markets)

 - ffshore, 542
price limit rules, 539
program or basket, 200, 576–577, 867
proprietary, 197–200
risk arbitrage, 195–197
riskless arbitrage, 194–195
stock trading market structures, 522–526
venues for, U.S., 525–535
Transaction costs

collective investment vehicles reducing, 824, 828

electronic trading reducing, 519

equity markets, 519, 573–575

explicit, 573

futures contracts, 866, 909

implicit, 574

 - perational efficiency and, 446
 - ptions contracts, 876
perfect markets without, 440
research on, 574–575
secondary markets reducing, 437
Transit Casualty Insurance Company, 169
Transunion, 744
Treasury bonds. _See_ Government bonds
Treasury Inflation Protected Securities (TIPS), 368–369, 380, 475–476, 659
Troubled Asset Relief Program (TARP), 33, 34, 36
T. Rowe Price, 716, 717, 826
Trump administration financial market regulations, 42
Turkey, sovereign debt markets, 473
Turnaround costs, 241–242
Tversky, Amos, 310
Twitter, 189, 426, 427, 717
Two-fund separation theorem, 322–323
Type-I liabilities, 53–54
Type-II liabilities, 54
Type-III liabilities, 54
Type-IV liabilities, 54–55

UAL Corporation, 196

UBS, 57, 187, 200

Umbrella insurance, 156

Uncertainty

irreducible, 212–213

Knightian, 212–213

risk _vs_ ., 211–212

Underwriting

asset-back securities market, 684, 691

auction process, 425–428

bank/financial institutions, 49, 111

best-efforts arrangement, 189, 191

bought deal, 425

due diligence, 419

firm commitment arrangement, 189

insurance companies, 157

investment banking firms, 187, 188–190, 191, 495

loan-to-value ratio, 735–736

payment-to-income ratio, 735–736

preemptive rights offering, 428

primary markets, 419, 424–428, 479

residential mortgage market, 735–736, 746–747, 749, 789

sovereign debt markets, 479

standby arrangements, 428

subnational (municipal) government debt markets, 495

Survey of Credit Underwriting Practices, 103

syndicates, 190

variations in, 424–428

Unemployment

frictional, 143, 369

monetary policy goals for low, 143

natural rate of, 369

Unicorns, 531

Uniform Securities Act of 1956, 522

United Arab Emirates, sovereign wealth fund, 70

United Kingdom

central bank, 129–130 ( _see also_ Bank of England)

collective investment vehicles market, 832, 834

commercial paper market, 630

commercial real estate markets, 800–802

corporate debt markets, 652, 659

currency futures contracts, 863–864

developed market, 13, 590

equity markets, 594, 595–596

foreign exchange rates and market, 456, 457–458, 460, 462, 996–997

foreign (Bulldog) market, 12, 652

global commercial banking system, 148

government bonds, 243, 482

Group of 5/6/7/8, 130, 142

interest rates, 369–370, 371, 379n1, 385–386

investment banking firms, 188, 190

monetary policy, 31, 371

nonfinancial corporations, 64

nonprofit organizations, 69

  - perational risk for financial institutions, 56

pension funds, 66

primary market regulation, 417

residential mortgage market, 740, 742, 745, 747

SME financing market, 701, 706

sovereign debt markets, 473, 475, 482

stock market indexes, 594

stock market returns distribution, 270, 275

United States

asset-back securities market, 678–679, 684–685, 687–691

asset classes, 14

asset management firms, 57

banker's acceptances, 633–636

bankruptcy system, 105, 193, 506, 670–673

central bank, 128–129, 131–147 ( _see also_ Federal Reserve)

collective investment vehicles market, 819, 824, 828, 830–831, 835–836

commercial paper market, 625–630

commercial real estate markets, 798–800, 801–803, 805–808

common stock market, 17, 26, 270–272, 373, 440, 520, 551–586

Consumer Price Index, 369, 475, 659

corporate debt markets, 650, 652, 653, 659, 663–665, 667, 670–673

credit rating agencies, 83–84, 85–95, 381

depository institutions, 99–125

developed market, 13, 590

disclosure requirements, 27, 418–423

equity markets, 515–550, 551–586, 607

financial assets, 241, 245–246

financial market regulations, 26–28, 42

foreign exchange rates and market, 141–142, 144, 454–463, 996, 997, 998–1002

foreign (Yankee) market, 12, 652

futures contracts, 847, 855–864

global commercial banking system, 148

global financial crisis effects, 17–18, 373–374, 618–619, 629

government as financial intermediary, 28–30

government bailouts, 32–37, 1024

government (Treasury) bonds, 5, 6–7, 133–135, 245, 372–374, 379–380, 386–406, 426,

481, 858, 860–863

government (Treasury) notes, 862

Great Depression, 17

Group of 5/6/7/8, 130, 142

initial public offerings, 718–719

insurance companies, 161–167, 168–172, 178, 179–180

interbank funding market, 614–615, 618–619

interest rates, 30, 143–144, 347, 369–370, 371–374, 379–380, 384, 386–406

investment banking firms, 187–190

monetary policy, 30–32, 132–135, 142–147, 369, 371

money supply, 132–142, 146, 147

nonfinancial corporations, 64

nonprofit organizations, 69

  - perational risk for financial institutions, 56
 - ptions market, 888–893
pension funds, 65–68, 73–79, 179–180
primary market, 416–434, 478–479, 520–521
real and paper economy, 17
repurchase agreements, 623–624
residential mortgage-backed securities market, 762–792
residential mortgage market, 734–759
secondary markets, 440, 448, 520–521, 664–665
SME financing market, 700, 701, 702–705, 706, 707–709, 711, 718–719
sovereign debt markets, 470, 472–476, 478–479, 481, 485
subnational (municipal) government debt markets, 95, 384, 426, 492–512
taxes, 384, 798, 828, 835–836
United States common stock market

block trades, 571, 575–576

crashes, 17, 520

equity asset classes, 553–555

exchanges, 440

high-frequency trading, 577–581

institutional investors, 575–577

interest rates, 373

investment strategies, 566–569

margin transactions, 571–572

market timing strategies, 568

 - rder types, 569–571
 - verview, 553, 581–583
pricing efficiency, 563–567
program trades, 576–577
regulations, 571–572
returns distributions, 270–272, 568, 573
stock market indexes, 555–563, 567, 576–577
stock picking strategies, 568
trading arrangements, 569–581
transaction costs, 573–575
Unsystematic risk. _See_ Idiosyncratic risk
Urban Development and Investment Corporation (China), 508
Utility function, 306–308

Value-at-risk (VaR), 56, 281–284

Value stock shares, 14n3, 554–555, 560

Vanguard Group, 57, 826, 831

Vantage Airport Group, 497

VaR (value-at-risk), 56, 281–284

Variable rate demand obligations, 503

Variable-rate residential mortgages, 739–740, 741, 757–759

Variance

capital market theory, 323

covariance, 280, 299–300

mean-variance analysis or optimization, 267, 299

mean-variance assumptions, 302, 309, 311

  - ptions contracts pricing, 916
portfolio selection theory, 298, 299–300
probability distributions, 267, 269, 278
risk measures, 281, 286, 298, 299–300
Vasey, Roger, 199
Vendor financing, 704
Venture capital

collective investment vehicles market, 837–840

corporate, 714–715

investing in VC funds, 838–839

investment banking firms handling, 191

 - nline, 715–716
SME financing, 704–705, 708, 709, 712–716, 837–840
stages of fund, 839–840
venture capital firms, 838
Visa, 189
Volatility

clustering, 279

equity market volatility rules, 539–540

financial asset pricing, 250–259

futures contracts underlying asset, 865–866, 867–868

interest rates, 971

non-U.S. equity markets, 596–597

  - ptions contracts underlying asset, 916, 997
stock market volatility futures, 858
stock market volatility indexes, 562–563, 858
Volcker, Paul, 198, 372–373
Volcker Rule, 198–200
Von Neumann, John, 306

Walsh, John, 685

Warrants, 33, 657, 725

Washington Public Supply System bonds, 89

Waterfall, 680, 787

Wealth effect, 63

Wellcome Trust, 69

Wellington Management, 716

Wells Fargo, 101

Wheatley, Martin, 577, 618

Wilshire Indexes, 562, 837

Wiltbank, Robert, 709–710

World Bank

as foreign investor, 70

goals or objectives, 40, 70

SME data, 700, 705

sovereign debt market data, 470, 476, 480

subnational (municipal) government lending, 496, 498

WorldCom, 89

Yahoo, 426

Yahoo Finance, 329, 330, 828

Yale University, 69

Yankee certificates of deposit, 631–632

Yankee commercial paper, 625

Yankee market, 12, 652

Y Combinations, 709

Zero-coupon bonds

corporate, 657–658

guaranteed investment contracts, 165

interest rates, 252–253, 388–393, 403

pricing, 252–253

private placement, 191

reinvestment risk, 403

stripping and reconstitution, 482, 483

Zion, David, 78–79

Zuckerberg, Mark, 720
