---
title: "Main Street New Loan Facility Term Sheet"
parent_directory: Federal Reserve Funding Facilities
formatted: 2025-12-21 11:00:00 AM
formatter_model: claude-sonnet-4
cli-tool: claude-code
primary_tags:
  - main street lending
  - federal reserve facilities
  - coronavirus relief
  - business loans
secondary_tags:
  - eligible lenders
  - term loans
  - libor pricing
  - loan participations
  - spv structure
cssclasses: academia
---

# Main Street New Loan Facility Term Sheet

Effective December 29, $2020^{1}$

Program: The Main Street New Loan Facility ("Facility"), which has been authorized under section 13(3) of the Federal Reserve Act, is intended to facilitate lending to small and medium-sized Businesses by Eligible Lenders. Under the Main Street Lending Program ("Program"), including the Facility, the Main Street Priority Loan Facility ("MSPLF"), the Main Street Expanded Loan Facility ("MSELF"), the Nonprofit Organization New Loan Facility ("NONLF"), and the Nonprofit Organization Expanded Loan Facility ("NOELF"), the Federal Reserve Bank of Boston ("Reserve Bank") will commit to lend to a single common special purpose vehicle ("SPV") on a recourse basis. The SPV will purchase $95\%$ participations in Eligible Loans from Eligible Lenders. Eligible Lenders will retain $5\%$ of each Eligible Loan. The Department of the Treasury, using funds appropriated to the Exchange Stabilization Fund under section 4027 of the Coronavirus Aid, Relief, and Economic Security Act ("CARES Act"), has committed to make a \$75 billion equity investment in the single common SPV in connection with the Program. The combined size of the Program will be up to \$600 billion.

```d2
direction: right

Fed Reserve Bank: Federal Reserve Bank of Boston {
  shape: hexagon
  style.fill: "#e3f2fd"
}

SPV: Special Purpose Vehicle {
  shape: rectangle
  style.fill: "#fff3e0"
}

Eligible Lender: Eligible Lender {
  shape: rectangle
  style.fill: "#f3e5f5"
}

Eligible Borrower: Eligible Borrower {
  shape: rectangle
  style.fill: "#e8f5e9"
}

Treasury: Department of Treasury {
  shape: hexagon
  style.fill: "#fce4ec"
}

Fed Reserve Bank -> SPV: Recourse lending
Treasury -> SPV: $75B equity investment
Eligible Lender -> SPV: Sells 95% participation
Eligible Lender -> Eligible Borrower: Originates loan (retains 5%)
SPV -> Eligible Borrower: Funds 95% of loan
```

Eligible Lenders: An Eligible Lender is a U.S. federally insured depository institution (including a bank, savings association, or credit union), a U.S. branch or agency of a foreign bank, a U.S. bank holding company, a U.S. savings and loan holding company, a U.S. intermediate holding company of a foreign banking organization, or a U.S. subsidiary of any of the foregoing.

Eligible Borrowers: An Eligible Borrower is a Business² that:

1. was established prior to March 13, 2020;  
2. is not an Ineligible Business;3  
 3. meets at least one of the following two conditions: (i) has 15,000 employees or fewer, or (ii) had 2019 annual revenues of \$5 billion or less;  
4. is created or organized in the United States or under the laws of the United States with significant operations in and a majority of its employees based in the United States;  
5. does not also participate in the MSPLF, the MSELF, the NONLF, the NOELF, or the Primary Market Corporate Credit Facility; and  
6. has not received specific support pursuant to the Coronavirus Economic Stabilization Act of 2020 (Subtitle A of Title IV of the CARES Act).<sup>4</sup>

Eligible Loans: An Eligible Loan is a secured or unsecured term loan made by an Eligible Lender(s) to an Eligible Borrower that was originated after April 24, 2020, provided that the loan has all of the following features:

1. 5 year maturity;
2. principal payments deferred for two years and interest payments deferred for one year (unpaid interest will be capitalized);
3. adjustable rate of LIBOR (1 or 3 month) + 300 basis points;
4. principal amortization of $15\%$ at the end of the third year, $15\%$ at the end of the fourth year, and a balloon payment of $70\%$ at maturity at the end of the fifth year;
5. minimum loan size of \$100,000;
6. maximum loan size that is the lesser of (i) \$35 million or (ii) an amount that, when added to the Eligible Borrower's existing outstanding and undrawn available debt, does not exceed four times the Eligible Borrower's adjusted 2019 earnings before interest, taxes, depreciation, and amortization ("EBITDA");
7. is not, at the time of origination or at any time during the term of the Eligible Loan, contractually subordinated in terms of priority to any of the Eligible Borrower's other loans or debt instruments; and
8. prepayment permitted without penalty.

```d2
direction: right

Loan Terms: 5-Year Term Loan {
  shape: rectangle
  style.fill: "#e8f5e9"
}

Deferral Period: Years 1-2 {
  shape: rectangle
  style.fill: "#fff3e0"
}

Amortization Period: Years 3-5 {
  shape: rectangle
  style.fill: "#e3f2fd"
}

Year 1: Year 1 {
  Principal: Principal deferred
  Interest: Interest deferred\n(capitalized)
}

Year 2: Year 2 {
  Principal: Principal deferred
  Interest: Interest deferred\n(capitalized)
}

Year 3: Year 3 {
  Principal: 15% principal payment
  Interest: Interest payments begin
}

Year 4: Year 4 {
  Principal: 15% principal payment
  Interest: Interest payments continue
}

Year 5: Year 5 {
  Principal: 70% balloon payment
  Interest: Final interest payment
}

Loan Terms -> Deferral Period
Deferral Period -> Amortization Period
Deferral Period -> Year 1
Deferral Period -> Year 2
Amortization Period -> Year 3
Amortization Period -> Year 4
Amortization Period -> Year 5
```

Loan Classification: If the Eligible Borrower had other loans outstanding with the Eligible Lender as of December 31, 2019, such loans must have had an internal risk rating equivalent to a "pass" in the Federal Financial Institutions Examination Council's supervisory rating system on that date.

Assessment of Financial Condition: Eligible Lenders are expected to conduct an assessment of each potential borrower's financial condition at the time of the potential borrower's application.

Loan Participations: The SPV will purchase at par value a $95\%$ participation in the Eligible Loan. The SPV and the Eligible Lender will share risk in the Eligible Loan on a pari passu basis. The Eligible Lender must retain its $5\%$ of the Eligible Loan until it matures or the SPV sells all of its participation, whichever comes first. The sale of a participation in the Eligible Loan to the SPV will be structured as a "true sale" and must be completed expeditiously after the Eligible Loan's origination.

Required Lender Certifications and Covenants: In addition to other certifications required by applicable statutes and regulations, the following certifications and covenants will be required from Eligible Lenders:

- The Eligible Lender must commit that it will not request that the Eligible Borrower repay debt extended by the Eligible Lender to the Eligible Borrower, or pay interest on such outstanding obligations, until the Eligible Loan is repaid in full, unless the debt or interest payment is mandatory and due, or in the case of default and acceleration.  
- The Eligible Lender must commit that it will not cancel or reduce any existing committed lines of credit to the Eligible Borrower, except in an event of default.  
- The Eligible Lender must certify that the methodology used for calculating the Eligible Borrower's adjusted 2019 EBITDA for the leverage requirement in section 6(ii) of the Eligible Loan paragraph above is the methodology it has previously used for adjusting EBITDA when extending credit to the Eligible Borrower or similarly situated borrowers on or before April 24, 2020.
- The Eligible Lender must certify that it is eligible to participate in the Facility, including in light of the conflicts of interest prohibition in section 4019(b) of the CARES Act.

Required Borrower Certifications and Covenants: In addition to other certifications required by applicable statutes and regulations, the following certifications and covenants will be required from Eligible Borrowers:

- The Eligible Borrower must commit to refrain from repaying the principal balance of, or paying any interest on, any debt until the Eligible Loan is repaid in full, unless the debt or interest payment is mandatory and due.  
- The Eligible Borrower must commit that it will not seek to cancel or reduce any of its committed lines of credit with the Eligible Lender or any other lender.  
- The Eligible Borrower must certify that it has a reasonable basis to believe that, as of the date of origination of the Eligible Loan and after giving effect to such loan, it has the ability to meet its financial obligations for at least the next 90 days and does not expect to file for bankruptcy during that time period.  
- The Eligible Borrower must commit that it will follow compensation, stock repurchase, and capital distribution restrictions that apply to direct loan programs under section 4003(c)(3)(A)(ii) of the CARES Act, except that an S corporation or other tax pass-through entity that is an Eligible Borrower may make distributions to the extent reasonably required to cover its owners' tax obligations in respect of the entity's earnings.  
- The Eligible Borrower must certify that it is eligible to participate in the Facility, including in light of the conflicts of interest prohibition in section 4019(b) of the CARES Act.

Retaining Employees: Each Eligible Borrower that participates in the Facility should make commercially reasonable efforts to maintain its payroll and retain its employees during the time the Eligible Loan is outstanding.

Transaction Fee: If the initial principal amount of the Eligible Loan is \$250,000 or greater, an Eligible Lender will pay the SPV a transaction fee of 100 basis points of the principal amount of the Eligible Loan at the time of origination. The Eligible Lender may require the Eligible Borrower to pay this fee. No transaction fee will be imposed if the initial principal amount of the Eligible Loan is less than \$250,000.

Loan Origination Fee: If the initial principal amount of the Eligible Loan is \$250,000 or greater, an Eligible Borrower will pay an Eligible Lender an origination fee of up to 100 basis points of the principal amount of the Eligible Loan at the time of origination. If the initial principal amount of the Eligible Loan is less than \$250,000, an Eligible Borrower will pay an Eligible Lender an origination fee of up to 200 basis points of the principal amount of the Eligible Loan at the time of origination.

Loan Servicing Fee: If the initial principal amount of the Eligible Loan is \$250,000 or greater, the SPV will pay an Eligible Lender 25 basis points of the principal amount of its participation in the Eligible Loan per annum for loan servicing. If the initial principal amount of the Eligible Loan is less than \$250,000, the SPV will pay an Eligible Lender 50 basis points of the principal amount of its participation in the Eligible Loan per annum for loan servicing.

Facility Termination: The SPV will cease purchasing participations in Eligible Loans on January 8, 2021, provided that after December 31, 2020, such purchases will be limited to participations in Eligible Loans initially submitted to the Main Street lender portal on or before December 14, 2020. The Reserve Bank will continue to fund the SPV until the SPV's underlying assets mature or are sold.