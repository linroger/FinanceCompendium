---
parent_directory:
title: Credit Markets
tags:
aliases:
parent_folder: Lecture Notes
subfolder:
key_concepts:
cssclasses: academia
linter-yaml-title-alias: Credit Markets
---

# Credit Markets

# Session 1

# Pricing and risk management of corporate bonds

Dr. Alex Popovici<sup>1,2</sup>

April 2nd 2023

<sup>1</sup>Financial Mathematics, University of Chicago alex.popovici@uchicago.edu &

$^{2}$ Senior Quant Trader, Chicago Trading Company

# 1 Overview of credit markets

- What is credit default risk?  
Credit Ratings  
- Instrument types & contractual specs  
- Trading details

# 2 Valuation, risk and price dynamics

Bond cash-flow, prices and yields  
Bond risks  
Bond price dynamics and drift components

# 3 Credit spreads

US Treasury benchmarks  

- Spread parametrizations  
- Rate-hedged bond dynamics  
- Yield and Spread/YAS Calculators

# 4 Q&A

- Course objective: introduce basic concepts on pricing, trading and portfolio risk management for credit instruments.  
- Discuss credit market segments, seniority ranks, instrument types & specs, quoting conventions, execution venues and trading protocols  
- Understand the valuation of an instrument with default risk  
Focus on:

- corporate bonds and loans,  
- foreign sovereign bonds,  
- fixed income ETFs,  
- Credit Default Swaps (CDS) and CDS Indices

Good insight into the daily activity of a credit trading desk

Commercial silver loan, Mesopotamia,  $\sim 1800$  B.C.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/e94d18818e5f9aa4a6da8f8edddee0f70f40e2b828e5922ebe596f25d4aec16a.jpg)  
Clay tablet, Bank of Italy collection

# The beginning …

Lender/Investor: Ikun-pi-lstar (head of village)

Borrower/Issuer: Amurritum (merchant)

Denomination: Silver

Quantity/Principal: 10 mina [1 mina = ~1 lb]

Maturity/Tenor: 3 months

Loan Type: Unsecured

Interest rate: Reference rate for silver

Day Count Conv: 30/360 (sexagesimal system)

Legal docs: Code of Hammurabi

Reference rates: Silver: 12 shekels per mina p.a. = 20% Barley: 18 shekels per mina p.a. = 30% 1 mina = 60 shekels

# Capital Structure: Liabilities + Equity = Assets

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/2aed3c6cbda26477406465b184b104eb8cf69d8a589626cf37775d70af83670e.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/53c48703191a2ffdd5b8645e6aeb83de9dcb4a817065b00f2b0a6140904dbf96.jpg)

Credit Default triggered by non-payment of contractual cashflows.

In default, assets get liquidated to pay the liabilities, according to their rank in the capital structure.

Equity tranches (both common and preferred) usually get wiped out.

US historical average recovery rates, by seniority:

Subordinated:  $\sim 20\%$  
Senior Unsecured:  $\sim 40\%$  
Senior Secured:  $\sim 65\%$  
First Lien:  $\sim 80\%$

Default events are usually correlated!

Recovery rates are "stochastic" and dependent on the credit cycle!

When does a company default?

- Issuer default triggered by non-payment of contractual obligation!  
- Usually, caused by missed coupon or principal payment  
- In default, coupon payments are stopped and all liabilities becomes due  
- Assets are liquidated and used to pay the debt holders, based on seniority rank in the capital structure  
- Technical/Non-financial default: can lead to accelerated debt repayment and financial default  
- See appendix on "structural" vs "reduced form" credit risk modeling approaches

# Credit Market Segments

- Investment Grade  
- low risk of default  
- Speculative Grade / High Yield  
- higher risk of default  
- Role of credit rating agencies in assessing issuer default risk

Corporate Credit Ratings by Agency  

<table><tr><td>No</td><td>S&amp;P</td><td>Moody&#x27;s</td><td>Fitch</td><td>Meaning</td><td>Ann. Default Rates</td><td>Sector</td></tr><tr><td>1</td><td>AAA</td><td>Aaa</td><td>AAA</td><td>Prime</td><td>0.00%</td><td rowspan="10">Investment Grade</td></tr><tr><td>2</td><td>AA+</td><td>Aa1</td><td>AA+</td><td rowspan="3">High Grade</td><td rowspan="3">0.10%</td></tr><tr><td>3</td><td>AA</td><td>Aa2</td><td>AA</td></tr><tr><td>4</td><td>AA-</td><td>Aa3</td><td>AA-</td></tr><tr><td>5</td><td>A+</td><td>A1</td><td>A+</td><td rowspan="3">Upper Medium Grade</td><td rowspan="3">0.25%</td></tr><tr><td>6</td><td>A</td><td>A2</td><td>A</td></tr><tr><td>7</td><td>A-</td><td>A3</td><td>A-</td></tr><tr><td>8</td><td>BBB+</td><td>Baa1</td><td>BBB+</td><td rowspan="3">Lower Medium Grade</td><td rowspan="3">1.00%</td></tr><tr><td>9</td><td>BBB</td><td>Baa2</td><td>BBB</td></tr><tr><td>10</td><td>BBB-</td><td>Baa3</td><td>BBB-</td></tr><tr><td>11</td><td>BB+</td><td>Ba1</td><td>BB+</td><td rowspan="3">Non Investment Grade Speculative</td><td rowspan="3">7.50%</td><td rowspan="9">Speculative Grade / High Yield</td></tr><tr><td>12</td><td>BB</td><td>Ba2</td><td>BB</td></tr><tr><td>13</td><td>BB-</td><td>Ba3</td><td>BB-</td></tr><tr><td>14</td><td>B+</td><td>B1</td><td>B+</td><td rowspan="3">Highly Speculative</td><td rowspan="3">20.00%</td></tr><tr><td>15</td><td>B</td><td>B2</td><td>B</td></tr><tr><td>16</td><td>B-</td><td>B3</td><td>B-</td></tr><tr><td>17</td><td>CCC+</td><td>Caa1</td><td>CCC+</td><td rowspan="3">Substantial Risks</td><td rowspan="3">35.00%</td></tr><tr><td>18</td><td>CCC</td><td>Caa2</td><td>CCC</td></tr><tr><td>19</td><td>CCC-</td><td>Caa3</td><td>CCC-</td></tr></table>

# Contractual specs: corporate bonds

- Issuer name  
- Issue currency, price and amount  
- Issue maturity  
Seniority rank in capital structure  
- Coupon payment type: fixed rate, floating rate (+ reset index), variable rate, etc  
- Coupon frequency & day count convention: semi-annual, 30/360, etc  
- Call/Put schedules / embedded optionality: right to exercise call/put options at pre-specified prices  
- Covenants (positive vs negative, mostly high yield)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/d6183b1d495da989f487d300d8bb14b7cc93e2a0966719fc30efaae992257585.jpg)  
Corporate Bond Cashflows with Default Events and Call Option

# Fixed Rate IG Bond Example: Oracle

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/a0257e99a4de102f0a138b436d1242b216caf84fb467b18c6b69f5f8ddd4a678.jpg)

# Fixed Rate Bond Cash-Flows

<table><tr><td colspan="6">ORCL 2.95 04/01/30\$↓88.366
At 11:08
Source BMRK</td></tr><tr><td>ORCL 2.95 04/01/30 Corp</td><td>1) Export</td><td>97) Settings</td><td colspan="3">Cash Flow Analysis</td></tr><tr><td>88.195/88.523</td><td>5.273/5.204</td><td>BMRK@ 11:08</td><td>99) Buy</td><td>96) Sell</td><td></td></tr><tr><td>2) Cash Flows</td><td>3) Present Values</td><td>4) Distressed Analysis</td><td>BBID</td><td>BH4541299</td><td></td></tr><tr><td rowspan="2">Price Yield</td><td>88.523000</td><td>Settlement 04/04/24</td><td>Issue 04/01/2020</td><td>Maturity 04/01/2030</td><td></td></tr><tr><td>5.204188</td><td>to Worst 04/01/30</td><td>@ 100.00000</td><td>Face Amt 1000M</td><td></td></tr><tr><td>Payment Date</td><td>Interest</td><td>Principal</td><td colspan="3">Total</td></tr><tr><td>10/01/2024</td><td>14,750.00</td><td>0.00</td><td colspan="3">14,750.00</td></tr><tr><td>04/01/2025</td><td>14,750.00</td><td>0.00</td><td colspan="3">14,750.00</td></tr><tr><td>10/01/2025</td><td>14,750.00</td><td>0.00</td><td colspan="3">14,750.00</td></tr><tr><td>04/01/2026</td><td>14,750.00</td><td>0.00</td><td colspan="3">14,750.00</td></tr><tr><td>10/01/2026</td><td>14,750.00</td><td>0.00</td><td colspan="3">14,750.00</td></tr><tr><td>04/01/2027</td><td>14,750.00</td><td>0.00</td><td colspan="3">14,750.00</td></tr><tr><td>10/01/2027</td><td>14,750.00</td><td>0.00</td><td colspan="3">14,750.00</td></tr><tr><td>04/01/2028</td><td>14,750.00</td><td>0.00</td><td colspan="3">14,750.00</td></tr><tr><td>10/01/2028</td><td>14,750.00</td><td>0.00</td><td colspan="3">14,750.00</td></tr><tr><td>04/01/2029</td><td>14,750.00</td><td>0.00</td><td colspan="3">14,750.00</td></tr><tr><td>10/01/2029</td><td>14,750.00</td><td>0.00</td><td colspan="3">14,750.00</td></tr><tr><td>04/01/2030</td><td>14,750.00</td><td>1,000,000.00</td><td colspan="3">1,014,750.00</td></tr></table>

# Floating Rate Bond (SOFR ref index): Morgan Stanley

<table><tr><td colspan="5">MS Float 01/14/28\$↑101.000 - .183 -381.9 bp vs T 4.250 03/15/2027</td></tr><tr><td colspan="5">At 10:31</td></tr><tr><td>MS Float 01/14/28 Corp</td><td>Actions</td><td>Settings</td><td colspan="2">Page 1/13 Security Description: Bond</td></tr><tr><td colspan="3">94 □ Notes</td><td>95 Buy</td><td>96 Sell</td></tr><tr><td>25) Bond Description</td><td>26) Issuer Description</td><td>27) BI Credit Research</td><td>| BICC »</td><td></td></tr><tr><td>Pages</td><td colspan="2">Issuer Information</td><td>Identifiers</td><td></td></tr><tr><td>1) Bond Info</td><td>Name</td><td>MORGAN STANLEY BANK NA</td><td>FIGI</td><td>BBG01L0QQCZ1</td></tr><tr><td>1) AddIt Info</td><td>Industry</td><td>Banking (BCLASS)</td><td>CUSIP</td><td>61690U7Z7</td></tr><tr><td>1) Reg/Tax</td><td colspan="2">Security Information</td><td>ISIN</td><td>US61690U7Z70</td></tr><tr><td>1) Covenants</td><td>Mkt Iss</td><td>US DOMESTIC</td><td>Bond Ratings</td><td></td></tr><tr><td>1) Guarantors</td><td>City/Reg US</td><td>Currency USD</td><td>Moody&#x27;s</td><td>Aa3</td></tr><tr><td>1) Bond Ratings</td><td>Rank Sr Unsecured</td><td>Series BKNT</td><td>S&amp;P</td><td>A+</td></tr><tr><td>1) Identifiers</td><td>Est Cpn 6.429984</td><td>Type Floating</td><td>Fitch</td><td>AA-</td></tr><tr><td>1) Inv Parties</td><td>Formula 0/N SOFR +108.000</td><td rowspan="5">Iss Price 100.0000</td><td>Composite</td><td>A+</td></tr><tr><td>1) Fees, Restrict</td><td>Day Cnt ACT/360</td><td>Issuance &amp; Trading</td><td></td></tr><tr><td>2) Schedules</td><td>Maturity 01/14/2028</td><td>Amt Issued/Outstanding</td><td></td></tr><tr><td>2) Coupons</td><td>CALL 01/14/27@100.00</td><td>USD 450,000.00 (M) / USD 450,000.00 (M)</td><td></td></tr><tr><td>2) Impact</td><td>Iss Sprd</td><td>Min Piece/Increment</td><td></td></tr><tr><td>Quick Links</td><td colspan="2">Calc Type (999)STREET CONVENTION</td><td>250,000.00 / 1,000.00</td><td></td></tr><tr><td>3) ALLQ Pricing</td><td>Interest Accrual Date</td><td>01/18/2024</td><td>Par Amount</td><td>1,000.00</td></tr><tr><td>3) QRD QT Recap</td><td>Interest Accrual Date</td><td>01/18/2024</td><td>Book Runner</td><td>MS</td></tr><tr><td>3) TDH Trade Hist</td><td>Interest Accrual Date</td><td>01/18/2024</td><td>Reporting</td><td>TRACE</td></tr><tr><td>3) CACS Corp Action</td><td>Interest Accrual Date</td><td>01/18/2024</td><td>Book Runner</td><td>MS</td></tr><tr><td>3) CF Holdings</td><td>Interest Accrual Date</td><td>01/18/2024</td><td>Reporting</td><td>TRACE</td></tr><tr><td>3) CN Sec News</td><td>Interest Accrual Date</td><td>01/18/2024</td><td>Book Runner</td><td>MS</td></tr><tr><td>3) HDS Holders</td><td>Interest Accrual Date</td><td>01/18/2024</td><td>Reporting</td><td>TRACE</td></tr><tr><td>60 Send Bond</td><td></td><td></td><td></td><td></td></tr></table>

# Floating Rate Bond Cash-Flows

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/cecc40a3b160e2038373b5829e2e93573ac4a140fcadd7e12ed2fe813a1dd03b.jpg)

# Fixed Rate HY Bond Example: AMC

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/9e44b33d4f925a0aadf6e62e3b3426c1ff5fabca13195737996df46884f31e59.jpg)

# Foreign Sovereign Bond Example: Mexico

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/d026c0b7a4fe1e7aa600d069aaada587e27bbde8f8e4bc9b83cc93d9dfc79f12.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/e853f8da199dab479f625d7c6efbb381763d2f4bc54e17ee858a8692103c1363.jpg)  
Floating Rate Loan Example (First Lien): United Airlines

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/393b759d1c3755274d3d99d53b0da8d28a8eca6fecb2586bac2ebc3b35bf70e6.jpg)  
Floating Rate Loan Cash-Flows

# Preferred Perpetual Example: Morgan Stanley

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/55a1723e16288ccc0c0bf55581df48d50741755ef7590fc1ab4fb44734b9af5a.jpg)

# Market participants: mostly institutional players

- Commercial and investment banks  
- Pension funds  
Insurance companies  
- Mutual funds  
- Various asset managers / ETF issuers  
Hedge funds  
Sovereign funds  
Retail Clients: mostly via ETFs

# Quoting conventions

- Yield: for Investment Grade bonds with maturity  $< 1$  year  
- Spread (to Treasury Benchmark Yield): for Investment Grade bonds with maturity  $>1$  year  
- Clean price: for High Yield bonds  
- Bonds are fungible and uniquely identified via
- ISIN/CUSIP codes (market convention),  
- SEDOL codes,  
- FIIGI codes, etc.

# Size of the US corporate bond market

- USD denominated corporate bonds

$\bullet \sim 100K$  bonds total  
$\sim 10K$  liquid

- Outstanding notional value:  $\sim 10\mathrm{T}$  USD  
Average daily volume:  $\sim 40$ B USD  
- Trades sizes smaller than a \$100,000 are viewed as "odd lots".

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/608c0488ad1359d67097dde4649d20987b7ea31b50ae7bc549a83e0a99a4e714.jpg)  
SIFMA: Fixed Income Outstanding and New Issues (2023)

# IG bonds liquidity (Source: Morgan Stanley 2023)

# Investment Grade Market Metrics and Liquidity

IG Index Grew Over \$374bn (+5%) in 2022  
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/39d9710b9088372774d6830c7a7bffef5eccc0117b0954dd6718c3c9e82df466.jpg)  
Source: ICE, Morgan Stanley Research

Foreign Ownership of IG Credit Declines to  $24\%$  
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/58c3072917869995354d73ef65504f6d16cb7dfcc15d681e9bedbad1d9024b5c.jpg)  
Source: Morgan Stanley Research, Federal Reserve

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/c73dabb9821accfdc3b9520d57b7b6b60296fa47366dece09b7f99b89c355125.jpg)  
IG Turnover Rebounded from Historical Lows (0.77x)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/c3134e5b7d7d95b8c88536c7d35618db6bb6be7b2ba61ccd850171086869a766.jpg)  
Credit ETF Trading Volume Reached New Peaks

# Hedging and related instruments

US treasuries  
US treasury futures  
Credit Default Swaps  

- CDX credit indices  
Fixed income ETFs

# Trading

$\sim 70\%$  over-the-counter (with broker-dealers)  
$\sim 30\%$  on electronic trading venues  

- Trading volume moving gradually from OTC to electronic venues  
US Bond trades reported to FINRA TRACE facility (up to 15 mins delayed)

# Transition from OTC to electronic trading venues

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/94e8e52b87f7a496b9728f759669d4d72a936470497b57b6ad9672bc551bcea1.jpg)

# Market Structure: OTC/Bilateral with Broker-Dealers (70%)

- Brokers provide markets to clients, e.g. via MSG1 (principal market maker)  
- Brokers also act as agents between buyers and sellers  
- Negotiation over the Phone / IB Chat  
Bloomberg VCON confirmation  
- Electronic connectivity to broker via API  
- Bloomberg FIT, TSOX and BOLT screens  
- Single bonds vs Portfolio trading

# Market Structure: Electronic Venues (30%)

- Order Execution Protocols (via FIX):

RFQ:"Request For Quote"(auction based) vs  

- LOB: "Limit Order Book" (live trading)
- RFQ venues: MarketAxess (80% of electronic volume), TradeWeb, TrueMid, etc  
- LOB venues: ICEBondPoint, TradeWebDirect, TheMuniCenter, MTSBondPro, TrueMid, etc  
- Anonymous vs Bilateral trading  
GUI click-trading vs API trading

# Market Axess/MKTX: RFQ initiation protocol

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/660ef1f128b6c3a924601315f41f50f71c9ded82d4c51f3a46e5d4c79395c482.jpg)

New Inquiry (My Rating: pending)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/8239d9674b7a641e2f2bdc514850469641356320bec97c6e39162fda8101c942.jpg)

# Market Axess/MKTX: RFQ reply (via systematic algo)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/08ac4d30cc0150491658d7b103b1afbf1944999a1cf086ec0e1e2b7d6691ca1d.jpg)

Bond cash-flows, prices and yields

- Fixed-rate bond cash-flows for maturity  $T = T_{n}$ :

$$
\left\{c _ {i}, T _ {i} \right\} _ {i = 1.. n}, \quad 0 \leq t <   T _ {1} <   \dots <   T _ {n} \tag {1}
$$

- Quoting bonds: price to "continuously compounded" yield conversion

$$
B _ {t} = B (t, y) := \sum_ {i = 1} ^ {n} c _ {i} \cdot e ^ {(t - T _ {i}) \cdot y} \tag {2}
$$

- Cash-flow weights:

$$
w _ {i} = w _ {i} (t, y) := \frac {c _ {i} \cdot e ^ {(t - T _ {i}) \cdot y}}{B _ {t}} > 0 \tag {3}
$$

Bond valuation formulas (0 accrued, t+0 settle)

- Bullet fixed-rate bond with semi-annual coupon pct.  $c$  and  $T$  years to maturity:

$$
B _ {0} = B (0, c, T, y) = \sum_ {k = 1} ^ {2 T} \frac {c}{2} \cdot e ^ {- k \cdot \frac {y}{2}} + e ^ {- T \cdot y} \tag {4}
$$

- Simple bond price (using geometric series formula):

$$
B _ {0} = 1 + \frac {\frac {c}{2} - \left(e ^ {\frac {y}{2}} - 1\right)}{e ^ {\frac {y}{2}} - 1} \cdot \left(1 - e ^ {- T \cdot y}\right). \tag {5}
$$

Using "semi-annual yield":  $y_{sa} = 2 \cdot \left( e^{\frac{y}{2}} - 1 \right)$

$$
B _ {0} = 1 + \frac {c - y _ {s a}}{y _ {s a}} \cdot \left[ 1 - \left(1 + \frac {y _ {s a}}{2}\right) ^ {- 2 T} \right]. \tag {6}
$$

Bond valuation surface (0 accrued,  $T + 0$  settle)  

<table><tr><td></td><td>Yield</td><td colspan="8">Fixed rate bond with 15Y maturity</td></tr><tr><td>Coupon</td><td>2%</td><td>3%</td><td>4%</td><td>5%</td><td>6%</td><td>7%</td><td>8%</td><td>9%</td><td>10%</td></tr><tr><td>2%</td><td>100</td><td>88</td><td>78</td><td>69</td><td>61</td><td>54</td><td>48</td><td>43</td><td>39</td></tr><tr><td>3%</td><td>113</td><td>100</td><td>89</td><td>79</td><td>71</td><td>63</td><td>57</td><td>51</td><td>46</td></tr><tr><td>4%</td><td>126</td><td>112</td><td>100</td><td>90</td><td>80</td><td>72</td><td>65</td><td>59</td><td>54</td></tr><tr><td>5%</td><td>139</td><td>124</td><td>111</td><td>100</td><td>90</td><td>82</td><td>74</td><td>67</td><td>62</td></tr><tr><td>6%</td><td>152</td><td>136</td><td>122</td><td>110</td><td>100</td><td>91</td><td>83</td><td>76</td><td>69</td></tr><tr><td>7%</td><td>165</td><td>148</td><td>134</td><td>121</td><td>110</td><td>100</td><td>91</td><td>84</td><td>77</td></tr><tr><td>8%</td><td>177</td><td>160</td><td>145</td><td>131</td><td>120</td><td>109</td><td>100</td><td>92</td><td>85</td></tr><tr><td>9%</td><td>190</td><td>172</td><td>156</td><td>142</td><td>129</td><td>118</td><td>109</td><td>100</td><td>92</td></tr><tr><td>10%</td><td>203</td><td>184</td><td>167</td><td>152</td><td>139</td><td>128</td><td>117</td><td>108</td><td>100</td></tr></table>

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/ce970f714254809c44591514cd5f17fede0846f05a24ad1360a25a511ef1f2a4.jpg)  
Fixed rate bond valuation

# Comments

Bond trading at  $100\%$  "par" price:

$$
B _ {0} = 1 \Longleftrightarrow c = y _ {s a} \Longleftrightarrow \left(1 + \frac {c}{2}\right) ^ {2} = e ^ {y}. \tag {7}
$$

- New issue pricing (primary market): pricing "at par"  $\Longleftrightarrow$  "semi-annual coupon" = "semi-annual yield"  
- When yield  $>$  coupon, bond trades below par  
- When yield  $<$  coupon, bond trades above par  
Bond price is increasing in coupon, decreasing in yield

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/c8102c9a426b5116d5ea6aad25844885860f6b964abe7aa5e0bdae24b7b8cd6d.jpg)  
Yield curve example: VZ with issue constituents

Time sensitivity: Theta/Carry = "yield"

$$
\begin{array}{l} \frac {\partial B}{\partial t} (t, y) = \frac {\partial}{\partial t} \left[ \sum_ {i = 1} ^ {n} c _ {i} \cdot e ^ {(t - T _ {i}) \cdot y} \right] = \sum_ {i = 1} ^ {n} c _ {i} \cdot \frac {\partial}{\partial t} \left[ e ^ {(t - T _ {i}) \cdot y} \right] (8) \\ = \sum_ {i = 1} ^ {n} c _ {i} \cdot y \cdot e ^ {(t - T _ {i}) \cdot y} = y \cdot \left[ \sum_ {i = 1} ^ {n} c _ {i} \cdot e ^ {(t - T _ {i}) \cdot y} \right] = y \cdot B _ {t}. \\ B (t + \Delta t, y) - B (t, y) \approx B _ {t} \cdot y \cdot \Delta t. (9) \\ \end{array}
$$

Yield sensitivity: Duration/D = "weighted sum of TTMs"

$$
\begin{array}{l} \frac {\partial B}{\partial y} = \frac {\partial}{\partial y} \left[ \sum_ {i = 1} ^ {n} c _ {i} \cdot e ^ {(t - T _ {i}) \cdot y} \right] = \sum_ {i = 1} ^ {n} c _ {i} \cdot \frac {\partial}{\partial y} \left[ e ^ {(t - T _ {i}) \cdot y} \right] (10) \\ = \sum_ {i = 1} ^ {n} c _ {i} \cdot (t - T _ {i}) \cdot e ^ {(t - T _ {i}) \cdot y} = - B _ {t} \cdot \sum_ {i = 1} ^ {n} (T _ {i} - t) \cdot w _ {i} = - B _ {t} \cdot D. \\ B (t, y + \Delta y) - B (t, y) \approx - B _ {t} \cdot D \cdot \Delta y. (11) \\ \end{array}
$$

Yield convexity: Gamma/Γ = "weighted sum of squared TTMs"

$$
\begin{array}{l} \frac {\partial^ {2} B}{\partial y ^ {2}} = \frac {\partial^ {2}}{\partial y ^ {2}} \left[ \sum_ {i = 1} ^ {n} c _ {i} \cdot e ^ {(t - T _ {i}) \cdot y} \right] = \sum_ {i = 1} ^ {n} c _ {i} \cdot \frac {\partial^ {2}}{\partial y ^ {2}} \left[ e ^ {(t - T _ {i}) \cdot y} \right] \tag {12} \\ = \sum_ {i = 1} ^ {n} c _ {i} \cdot \left(T _ {i} - t\right) ^ {2} \cdot e ^ {\left(t - T _ {i}\right) \cdot y} = B _ {t} \cdot \sum_ {i = 1} ^ {n} \left(T _ {i} - t\right) ^ {2} \cdot w _ {i} = B _ {t} \cdot \Gamma . \\ \end{array}
$$

$$
B (t, y + \Delta y) - B (t, y) \approx B _ {t} \cdot \left[ - D \cdot \Delta y + \frac {1}{2} \cdot \Gamma \cdot (\Delta y) ^ {2} \right]. \tag {13}
$$

# Summary of sensitivities (yield parametrization)

Theta/Carry

$$
\text {T h e t a} = \frac {\partial B}{\partial t} = y \cdot B _ {t} \tag {14}
$$

- "DV01" (-1bp change in yield) and Duration

$$
D V 0 1 = - \frac {\partial B}{\partial y} = B _ {t} \cdot D, \quad D = \sum_ {i = 1} ^ {n} (T _ {i} - t) \cdot w _ {i} > 0 \tag {15}
$$

- Convexity (-1bp change in yield) and Gamma

$$
\frac {\partial^ {2} B}{\partial y ^ {2}} = B _ {t} \cdot \Gamma , \quad \Gamma = \sum_ {i = 1} ^ {n} \left(T _ {i} - t\right) ^ {2} \cdot w _ {i} > 0 \tag {16}
$$

Simple bond price dynamics

$$
\begin{array}{l} d B _ {t} = d B (t, y _ {t}) = \frac {\partial B}{\partial t} \cdot d t + \frac {\partial B}{\partial y} \cdot d y _ {t} + \frac {1}{2} \frac {\partial^ {2} B}{\partial y ^ {2}} \cdot \sigma_ {y} ^ {2} \cdot d t, (17) \\ = y \cdot B _ {t} \cdot d t - B _ {t} \cdot D \cdot d y _ {t} + \frac {1}{2} \cdot B _ {t} \cdot \Gamma \cdot \sigma_ {y} ^ {2} \cdot d t. \\ \frac {d B _ {t}}{B _ {t}} = \left(y _ {t} + \frac {1}{2} \cdot \Gamma \cdot \sigma_ {y} ^ {2}\right) \cdot d t - D _ {t} \cdot d y _ {t}. (18) \\ \end{array}
$$

Bond drift components

$$
\begin{array}{l} \mathbb {E} \left[ \frac {d B _ {t}}{B _ {t}} \right] / d t \tag {19} \\ = y _ {t} - D \cdot \frac {\mathbb {E} [ d y _ {t} ]}{d t} + \frac {1}{2} \cdot \Gamma \cdot \sigma_ {y} ^ {2} \\ = ^ {\prime \prime} y i e l d ^ {\prime \prime} + ^ {\prime \prime} y i e l d c u r v e r o l l d o w n ^ {\prime \prime} + ^ {\prime \prime} y i e l d c o n v e x i t y ^ {\prime \prime}. \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/a2e733e119532e67688fb48ffa8246ffaddc26762180f153aba7dd0f7f595dab.jpg)  
Yield curve examples: VZ vs US Treasury

# Credit spreads and treasury benchmarks

- "Treasury benchmark" = US treasury bond with same/similar maturity as the corporate bond  
- "Spread to benchmark" = corporate bond yield - treasury benchmark yield  
- "G-Spread" = corporate bond yield - interpolated treasury yield  
- Credit spreads quantify the risk of credit issuer defaulting to bond maturity  
- Spread to benchmark  $=$  market convention for quoting IG bonds

# Spread curve example: VZ

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/a7cf7c67253fa5112dabecc6222b0ebf2ede9cf4de80097c534ebdd5e450b10e.jpg)

# Z-Spread parametrization

- Interest rate curve bootstrapping & risk-free bond valuation

$$
G _ {t} = G (t, r) := \sum_ {i = 1} ^ {n} c _ {i} \cdot e ^ {(t - T _ {i}) \cdot r _ {i}} \tag {20}
$$

Bond price to z-spread conversion

$$
B _ {t} = B (t, r, s) := \sum_ {i = 1} ^ {n} c _ {i} \cdot e ^ {(t - T _ {i}) \cdot \left(r _ {i} + s\right)} \tag {21}
$$

- Cash-flow spread weights:

$$
\hat {w} _ {i} = \hat {w} _ {i} (t, r, s) := \frac {c _ {i} \cdot e ^ {(t - T _ {i}) \cdot (r _ {i} + s)}}{B _ {t}} > 0 \tag {22}
$$

# Summary of bond sensitivities (spread parametrization)

Theta/Carry

$$
T h e t a = \frac {\partial B}{\partial t} = B _ {t} \cdot \sum_ {i = 1} ^ {n} (r _ {i} + s) \cdot \hat {w} _ {i} \approx B _ {t} \cdot y \tag {23}
$$

- "CS01" (-1bp change in spread) and Spread Duration  $D$

$$
C S 0 1 = - \frac {\partial B}{\partial s} = B _ {t} \cdot D, \quad D = \sum_ {i = 1} ^ {n} (T _ {i} - t) \cdot \hat {w} _ {i} > 0 \tag {24}
$$

- Spread Convexity (-1bp change in spread) and Gamma  $\Gamma$

$$
\frac {\partial^ {2} B}{\partial s ^ {2}} = B _ {t} \cdot \Gamma , \quad \Gamma = \sum_ {i = 1} ^ {n} \left(T _ {i} - t\right) ^ {2} \cdot \hat {w} _ {i} > 0 \tag {25}
$$

IR-hedged bond price dynamics

$$
\begin{array}{l} \frac {d B _ {t}}{B _ {t}} = \left(s _ {t} + \frac {1}{2} \cdot \Gamma \cdot \sigma_ {s} ^ {2}\right) \cdot d t - D \cdot d s _ {t} (26) \\ \mathbb {E} \left[ \frac {d B _ {t}}{B _ {t}} \right] / d t = s _ {t} - D \cdot \frac {\mathbb {E} [ d s _ {t} ]}{d t} + \frac {1}{2} \cdot \Gamma \cdot \sigma_ {s} ^ {2} (27) \\ = ^ {\prime \prime} s p r e a d ^ {\prime \prime} + ^ {\prime \prime} s p r e a d c u r v e r o l l d o w n ^ {\prime \prime} + ^ {\prime \prime} s p r e a d c o n v e x i t y ^ {\prime \prime}. \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/013e9dd4d82490af214a3dc70fb39e4947a391f0fc2650ecaa8e9557e5ea0e95.jpg)  
Yield and Spread Analysis/YAS example: Disney 3.5 2040 bond

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/9263fbb2b45ef1856114c140976fc3004d40be33f5aeb498a9f815f75d33dbe9.jpg)  
Disney 3.5 2040 bond: historical prices, yields and spreads

# Summary and Q&A

Capital structure and credit default events  
Credit ratings  
Credit instruments & contractual spec  
Market participants  

- Trading details  
Corporate bonds: valuation and risk  
Corporate credit spreads  
- Interest rate hedging

# Structural Credit Risk Models

- Introduced by Robert C. Merton (1974), refined by Black-Cox (1976) and others.  
- Equity value represented as call option on company Assets, using Liabilities as strike  
- Issuer default triggered by Assets falling below Liabilities (predictable default time)  
- Structural credit risk quantified by solving a Black-Scholes-Merton-type equation.  
- Moody's KMV implementation widely used by credit analysts

# Reduced Form Credit Risk Models

- Introduced by Jarrow & Turnbull (1995), Duffie & Singleton (1999) and others.  
- Default driven by exogenous Default Intensity (Hazard Rate) process  
- Default occurs without warning (non-predictable default time)  
- Dynamics of exogenous default intensity process calibrated to market prices  
- No direct connection to company's capital structure

# Credit Markets

# Session 2 Sovereign bonds, ETF, CDS and CDX

Dr. Alex Popovici<sup>1,2</sup>

April 9 2023

<sup>1</sup>Financial Mathematics, University of Chicago alex.popovici@uchicago.edu &

$^{2}$ Senior Quant Trader, Chicago Trading Company

Sovereign Bonds

Sovereign bonds

ETFs

Fixed Income ETFs  
Sovereign Bond ETFs  

- Aggregated Cash-Flows method

3 Floating rate bonds

- Floating rate cash-flows  
Financed floating rate bonds

CDS and Hazard Rates

Credit Default Swap specs and cash-flows  
CDS quoting and trading  
Hazard Rate Model

CDX Index

CDX IG, HY and EM indexes  

- Pairs trading using CDX indexes

6 Q&A

What is special about sovereigns?

- Think of a sovereign as a "corporation"  
- … with monopoly on managing resources of an entire state/country.  
- Ability to issue "common stock" at will ("printing press" in local currency)  
- Legal power to enforce local economic activity & taxation be conducted in local currency (it's own "common stock")  
- Central Banks manage supply and value of "common stock" of via interest rates, QE, QT, swaps with other CBs, etc

Why do governments issue bonds in foreign currencies?

- When sovereigns need money to fund operations, they usually issue debt in their own currencies.  
- If they struggle to pay off the bonds, they print more money (diluting the value of the "common stock")  
- This can cause inflation, eroding investors' earnings potential.  
- A sovereign may issue debt in a foreign currency to calm investor fears of currency devaluation.  
- Issuing debt in a foreign currency exposes a nation to exchange rate risk.  
- If the local currency drops in value, paying down international debt becomes costlier.

# Valuation and risks of sovereign bonds

Sovereign debt issuers are considered

- Risk-free in local currency (they own the "printing press")  
- Risky for USD and other foreign currencies (cannot print foreign currencies)
- Risk factors: a country's debt-to-GDP ratios, economic growth prospects, political risks, etc  
- In default, sovereigns suspend payment of contractual cash-flows  
- There is no bankruptcy/liquidation procedure for sovereign entities  
- Defaulted bonds trade at distressed levels, based on likelihood of recovering the funds sometime in the future  
- Sovereign bond investors can try to recover assets abroad, but it can be tricky …

# Sovereign bond example: Brazil 8.5 2034

<table><tr><td colspan="4">BRAZIL 8 1/4, 01/20/34 \$↓115.202 - .659 114.782/115.622 6.353/6.255
At 12:12 --x-- Source CBBT</td></tr><tr><td colspan="4">BRAZIL 8 1/4, 01/20/34 C Actions • Settings • Page 1/13 Security Description: Bond</td></tr><tr><td colspan="4">25 Bond Description 20 Issuer Description</td></tr><tr><td>Pages</td><td colspan="2">Issuer Information</td><td>Identifiers</td></tr><tr><td>1) Bond Info</td><td colspan="2">Name FED REPUBLIC OF BRAZIL</td><td>FIGI BBG00000L4N1</td></tr><tr><td>12 Addt Info</td><td colspan="2">Industry Sovereign (BCLASS)</td><td>CUSIP 105756BB5</td></tr><tr><td>13 Reg/Tax</td><td colspan="2">Security Information</td><td>ISIN US105756BB58</td></tr><tr><td>14 Covenants</td><td colspan="2">Mkt Iss GLOBAL</td><td>Bond Ratings</td></tr><tr><td>15 Guarantors</td><td colspan="2">Cty/Reg BR Currency USD</td><td>Moody&#x27;s Ba2</td></tr><tr><td>16 Bond Ratings</td><td colspan="2">Rank Sr Unsecured Series</td><td>S&amp;P BB-</td></tr><tr><td>17 Identifiers</td><td colspan="2">Coupon 8.250000 Type Fixed</td><td>Fitch BB-</td></tr><tr><td>18 Exchanges</td><td colspan="2">Cpn Freq S/A</td><td>DBRS BBL</td></tr><tr><td>19 Inv Parties</td><td colspan="2">Day Cnt ISMA-30/360 Iss Price 94.72300</td><td>Issuance &amp; Trading</td></tr><tr><td>20 Fees, Restrict</td><td colspan="2">Maturity 01/20/2034</td><td>Amt Issued/Outstanding</td></tr><tr><td>21 Schedules</td><td colspan="2">BULLET</td><td>USD 2,500,000.00 (M) /</td></tr><tr><td>22 Coupons</td><td colspan="2">Iss Sprd +362.50bp vs T 5 38 02/15/31</td><td>USD 1,369,310.00 (M)</td></tr><tr><td>23 Impact</td><td colspan="2">Calc Type (1)STREET CONVENTION</td><td>Min Piece/Increment</td></tr><tr><td>Quick Links</td><td>Pricing</td><td>01/12/2004</td><td>1,000.00/ 1,000.00</td></tr><tr><td>30 ALQ Pricing</td><td colspan="2">Calc Type (1)STREET CONVENTION</td><td>Par Amount 1,000.00</td></tr><tr><td>30 QRD Ql Recap</td><td colspan="2">Pricing Date</td><td>Book Runner CITI,DB</td></tr><tr><td>30 THR Trade Hist</td><td colspan="2">1st Coupon Date</td><td rowspan="4">Exchange FRANKFURT</td></tr><tr><td>30 CACS Corp Action</td><td colspan="2">Tender Notice Date</td></tr><tr><td>30 CF Filings</td><td colspan="2">Tender Expiration Date</td></tr><tr><td>30 CN Sec News</td><td colspan="2">Tender Expiration Date</td></tr><tr><td>30 HDS Holders</td><td colspan="3">ALSO LUX SE. ORIGINAL ISSUE AMT:$1.5BLN. ADD&#x27;L $500 MLN ISS&#x27;D 5/25/05 EFF</td></tr><tr><td>69 Send Bond</td><td colspan="3">6/2/05US\$500MM ISS&#x27;D 11/29/05 @ 99.325 EFF 12/6/05.</td></tr></table>

# Sovereign bond example: Turkey 8 2034

<table><tr><td colspan="5">Turkey 8 02/14/34 \$ 100.645 -,633 100.129/101.161 7.980/7.837
At 11:59 Source BGN</td></tr><tr><td colspan="5">TURKEY 8 02/14/34 Corp Actions • Settings • Page 1/13 Security Description: Bond</td></tr><tr><td colspan="5">25) Bond Description 26) Issuer Description 94) Notes 95) Buy 96) Sell</td></tr><tr><td>Pages</td><td colspan="3">Issuer Information</td><td>Identifiers</td></tr><tr><td>1) Bond Info</td><td colspan="3">Name REPUBLIC OF TURKEY</td><td rowspan="4">FIGI BBG00004RL95
CUSIP 900123AT7
ISIN US900123AT75</td></tr><tr><td>12) Addtl Info</td><td rowspan="2" colspan="3">Industry Sovereign (BCLASS)</td></tr><tr><td>13) Reg/Tax</td></tr><tr><td>14) Covenants</td><td colspan="3">Security Information</td></tr><tr><td>15) Guarantors</td><td colspan="3">Mkt Iss GLOBAL</td><td>Bond Ratings</td></tr><tr><td>16) Bond Ratings</td><td colspan="3">Ctry/Reg TR Currency USD</td><td>Moody&#x27;s B3</td></tr><tr><td>17) Identifiers</td><td colspan="3">Rank Sr Unsecured Series</td><td>Fitch B</td></tr><tr><td>18) Exchanges</td><td colspan="3">Coupon 8,000000 Type Fixed</td><td>Composite B-</td></tr><tr><td>19) Inv Parties</td><td colspan="3">Cpn Freq S/A</td><td>Scope B-</td></tr><tr><td>20) Fees, Restrict</td><td colspan="3">Day Cnt ISMA-30/360 Iss Price 97.43700</td><td>Issuance &amp; Trading</td></tr><tr><td>21) Schedules</td><td colspan="3">Maturity 02/14/2034</td><td>Amt Issued/Outstanding</td></tr><tr><td>22) Coupons</td><td colspan="3">BULLET</td><td>USD 1,500,000.00 (M) /</td></tr><tr><td>23) Impact</td><td colspan="3">Iss Sprd +316.00bp vs T 5 38 02/15/31</td><td>USD 1,500,000.00 (M)</td></tr><tr><td>Quick Links</td><td colspan="3">Calc Type (1)STREET CONVENTION</td><td>Min Piece/Increment</td></tr><tr><td>30) ALLQ Pricing</td><td colspan="3">Pricing Date 01/07/2004</td><td>2,000.00/ 1,000.00</td></tr><tr><td>33) QRD Qt Recap</td><td colspan="3">Interest Accrual Date 01/14/2004</td><td>Par Amount 1,000.00</td></tr><tr><td>34) TDH Trade Hist</td><td colspan="3">01/14/2004</td><td>Book Runner CITI,UBS</td></tr><tr><td>39) CACS Corp Action</td><td colspan="3">Interest Settle Date 01/14/2004</td><td>Exchange DUSSELDORF</td></tr><tr><td>39) CF Fillings</td><td colspan="3">1st Settle Date 01/14/2004</td><td></td></tr><tr><td>37) CN Sec News</td><td colspan="3">1st Coupon Date 08/14/2004</td><td></td></tr><tr><td>38) HDS Holders</td><td colspan="3">LONG 1ST CPN.</td><td></td></tr><tr><td>69 Send Bond</td><td></td><td></td><td></td><td></td></tr></table>

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/87da8742fb7225b6829a752a8bcc84d39be06a8d8259d716dd1f47857788f3a9.jpg)  
Sovereign Yield/Spread Curves: US vs Brazil vs Turkey

# Sovereign bond example: Sri Lanka 6.85 2024 (defaulted)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/06520bf173db2c42dd475ade826860e69a20de67b29ca4f662c4056b989bb38b.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/ea68eaa63cd583feb56557058f062758a8ebf2ad7e7ca89ee06331dadf969c77.jpg)  
Sovereign bond example: Sri Lanka 6.85 2024 (historical prices)

Fixed Income ETFs: 'credit' trading as 'equity'

- Basket of bonds packaged into ETF shares  
- ETF basket weights and NAVs published daily  
Major ETF issuers: BlackRock, StateStreet, Vanguard, etc  
- Primary Market: enables "in-kind" creation/redemption of ETF shares  
- Secondary Market: electronic trading on equity exchanges (NYSE Arca, NYSE, NASDAQ, BATS, EDGE)  
- Efficient way for investors to gain macro exposure to credit markets

# Fixed Income ETF Example: LQD (most liquid IG Credit ETF)

<table><tr><td colspan="5">LQD US \$ 1107.950 -0.210 T107.950/107.960P 18:34
at 13:50 Vol 8,818,225 0 108.040P II 108.210D L 107.875P Val 952.836M</td></tr><tr><td colspan="4">LQD US Equity Export</td><td>Page 1/5 Security Description: ETF</td></tr><tr><td colspan="5">Profile Performance Holdings Allocations Organizational</td></tr><tr><td colspan="5">ISHARES IBOXX INVESTMENT GRA FIGI BBG000BBV9N3
BI Research Primer | BICO » Category Corporate</td></tr><tr><td colspan="5">Shares iBoxx $ Investment Grade Corporate Bond ETF is an exchange-traded fund incorporated in the USA. The ETF seeks to
track the investment results of an index composed of U.S. dollar-denominated, investment-grade corporate bonds.</td></tr><tr><td colspan="5">Comparative Returns | COMP »</td></tr><tr><td colspan="5">Bloomberg Classification Appropriations</td></tr><tr><td colspan="5">Leverage No Actively Managed No Swap Based No Derivatives Based No Currency Hedged No Replication Strategy Optimized Securities Lending Yes</td></tr><tr><td colspan="5">Bloomberg Classification Appropriations</td></tr><tr><td colspan="5">Leverage No Actively Managed No Swap Based No Derivatives Based No Currency Hedged No Replication Strategy Optimized Securities Lending Yes</td></tr><tr><td colspan="5">Bloomberg Classification Appropriations</td></tr><tr><td colspan="4">Leverage No Actively Managed No Swap Based No Derivatives Based No Currency Hedged No Replication Strategy Optimized Securities Lending Yes</td><td></td></tr><tr><td colspan="5">Bloomberg Classification Appropriations</td></tr><tr><td colspan="4">Leverage No Actively Managed No Swap Based No Derivatives Based No Currency Hedged No Replication Strategy Optimized Securities Lending Yes</td><td></td></tr><tr><td colspan="5">Bloomberg Classification Appropriations</td></tr><tr><td colspan="4">Leverage No Actively Managed No Swap Based No Derivatives Based No Currency Hedged No Replication Strategy Optimized Securities Lending Yes</td><td></td></tr><tr><td colspan="5">Characteristics</td></tr><tr><td colspan="5">INDU. Indus. Index Weight Market Cap</td></tr><tr><td colspan="5">INDU. INXINY PTx Track. Error 1.997</td></tr><tr><td colspan="5">INDU. YNAV Track. Error .047</td></tr><tr><td colspan="5">INDU. Inception Date 07/26/02</td></tr><tr><td colspan="5">INDU. Expense Ratio .140%</td></tr></table>

# LQD basket composition

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/f0300fead2e97459a58f7ccf898ddf7d9a8596b96b049f5c23dbdb18699dd60d.jpg)

# Historical Prices, Yields and Credit Spreads for LQD

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/b9d594a156292f964fa4f887683d35b421d7ff9f8e8b516805a2255eff4589b0.jpg)

# Total Return Analysis for LQD (price dynamics + dividends)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/e20a2bb75ffedcf446cceb192103e7c37e93893e5206e9e7f34b1f1221a32ae5.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/1d6fee9bc704878a905e174b90cafae8f4f19e0133b7ab721c2f034fe3560e76.jpg)  
ETF Basis (Market vs intrinsic NAV): LQD

# ETF Creations/Redemptions & Basis Arbitrage

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/f541f9bff3e0db37607e78862cb38dbe291767daef1b3c78cb520f490b29c5f8.jpg)  
ETF Issuers: creations & redemptions

# Sovereign bond ETFs

ETFs that track a sovereign bond index (monthly re-balancing)  

- Coupon payments accumulated over time and paid as monthly dividends  
- Principal payments re-invested according to target index weights  
- Sovereign bond exposure can be hedged with "CDX EM"  
Examples:

- EMB: tracking JPM USD Emerging Market Bond index  
EMHY: tracking JPM USD Emerging Market HY Bond index

# Sovereign bond ETF example: EMB ("Emerging Market Bonds")

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/86aebee445813532f07deafb608eab81bf91aba5c0a9f55f7483cacadb904a99.jpg)

# EMB composition:  $\sim 600$  fixed rate sovereign bonds

<table><tr><td>Security</td><td>Ticker</td><td>So…</td><td>Position</td><td>Pos …</td><td>% Out</td><td>N…</td><td>Curr MVL</td><td>Maturity</td><td>Dura…</td><td>Coup…</td><td>Asset Type</td></tr><tr><td></td><td></td><td>All</td><td></td><td></td><td></td><td></td><td></td><td></td><td>All</td><td></td><td></td></tr><tr><td>1) Kuwait International Gov…</td><td>KUWIB 3 03/20/27</td><td>ETF</td><td>131,647</td><td>0</td><td>2.93</td><td>.75</td><td>129.57MLN</td><td>03/20/2027</td><td>3.729</td><td>3.500</td><td>Government</td></tr><tr><td>2) Uruguay Government Inter…</td><td>URUGUA 5.1 06/18/50</td><td>ETF</td><td>121,157</td><td>-1,002</td><td>3.07</td><td>.71</td><td>123.05MLN</td><td>06/18/2050</td><td>14.4…</td><td>5.100</td><td>Government</td></tr><tr><td>3) Ecuador Government Inter…</td><td>ECUA 2 07/31/35</td><td>ETF</td><td>259,603</td><td>-2,437</td><td>3.07</td><td>.61</td><td>107.07MLN</td><td>07/31/2035</td><td>6.036</td><td>2.500</td><td>Government</td></tr><tr><td>4) BlackRock Cash Funds - Tr…</td><td>XTSLA US</td><td>ETF</td><td>96,080,…</td><td>-80.4…</td><td>.40</td><td>.55</td><td>96.08MLN</td><td>--</td><td>--</td><td>--</td><td>Equity</td></tr><tr><td>5) Qatar Government Interna…</td><td>QATAR 5.103 04/23/48</td><td>ETF</td><td>92,407</td><td>-1,532</td><td>1.54</td><td>.55</td><td>94.21MLN</td><td>04/23/2048</td><td>14.0…</td><td>5.103</td><td>Government</td></tr><tr><td>6) Qatar Government Interna…</td><td>QATAR 4.817 03/14/49</td><td>ETF</td><td>92,100</td><td>-1,224</td><td>1.54</td><td>.53</td><td>90.65MLN</td><td>03/14/2049</td><td>14.3…</td><td>4.817</td><td>Government</td></tr><tr><td>7) Argentine Republic Gov…</td><td>ARGENT 1 07/09/35</td><td>ETF</td><td>280,729</td><td>-2,718</td><td>1.37</td><td>.48</td><td>82.24MLN</td><td>07/09/2035</td><td>5.990</td><td>1.500</td><td>Government</td></tr><tr><td>8) Kazakhstan Government In…</td><td>KAZAKS 5 08/21/25</td><td>ETF</td><td>77,980</td><td>-1,037</td><td>3.12</td><td>.47</td><td>81.26MLN</td><td>07/21/2025</td><td>2.279</td><td>5.125</td><td>Government</td></tr><tr><td>9) Brazilian Government Int…</td><td>BRAZIL 4 01/07/25</td><td>ETF</td><td>80,661</td><td>-464</td><td>1.88</td><td>.46</td><td>79.68MLN</td><td>01/07/2025</td><td>1.793</td><td>4.250</td><td>Government</td></tr><tr><td>10) Uruguay Government Inter…</td><td>URUGUA 4.975 04/20/…</td><td>ETF</td><td>79,005</td><td>-1,050</td><td>3.05</td><td>.46</td><td>78.87MLN</td><td>04/20/2055</td><td>15.5…</td><td>4.975</td><td>Government</td></tr><tr><td>11) Peruvian Government Int…</td><td>PERU 2.783 01/23/31</td><td>ETF</td><td>92,446</td><td>-1,229</td><td>2.47</td><td>.45</td><td>78.14MLN</td><td>01/23/2031</td><td>6.907</td><td>2.783</td><td>Government</td></tr><tr><td>12) Petronas Capital Ltd</td><td>PETMK 4.55 04/21/50</td><td>ETF</td><td>83,998</td><td>-400</td><td>3.05</td><td>.46</td><td>77.95MLN</td><td>04/21/2050</td><td>14.8…</td><td>4.550</td><td>Corporate</td></tr><tr><td>13) Iraq International Bond</td><td>IRAD 5.8 01/15/28</td><td>ETF</td><td>80,844</td><td>-1,075</td><td>4.79</td><td>.27</td><td>75.57MLN</td><td>01/15/2028</td><td>2.300</td><td>5.800</td><td>Government</td></tr><tr><td>14) Argentine Republic Gov…</td><td>ARGENT 0 02/07/09/30</td><td>ETF</td><td>220,256</td><td>-1,914</td><td>1.37</td><td>.42</td><td>73.63MLN</td><td>07/09/2030</td><td>3.119</td><td>.500</td><td>Government</td></tr><tr><td>15) Qatar Government Interna…</td><td>QATAR 4.4 04/16/50</td><td>ETF</td><td>76,310</td><td>-1,014</td><td>1.53</td><td>.41</td><td>71.03MLN</td><td>04/16/2050</td><td>15.1…</td><td>4.400</td><td>Government</td></tr><tr><td>16) Colombia Government Int…</td><td>COLOM 5 06/15/45</td><td>ETF</td><td>97,694</td><td>-1,603</td><td>2.17</td><td>.40</td><td>69.10MLN</td><td>06/15/2045</td><td>11.4…</td><td>5.000</td><td>Government</td></tr><tr><td>17) Oman Government Interna…</td><td>OMAN 6 01/17/48</td><td>ETF</td><td>70,052</td><td>-931</td><td>2.55</td><td>.39</td><td>68.97MLN</td><td>01/17/2048</td><td>11.8…</td><td>6.750</td><td>Government</td></tr><tr><td>18) Dominican Republic Int…</td><td>DOMREP 4 09/23/…</td><td>ETF</td><td>77,810</td><td>-1,034</td><td>2.54</td><td>.40</td><td>67.52MLN</td><td>09/23/2032</td><td>7.225</td><td>4.875</td><td>Government</td></tr><tr><td>19) Saudi Government Interna…</td><td>KSA 4 10/26/46</td><td>ETF</td><td>75,252</td><td>-1,000</td><td>1.16</td><td>.39</td><td>66.47MLN</td><td>10/26/2046</td><td>13.6…</td><td>4.500</td><td>Government</td></tr><tr><td>20) Jamaica Government Inter…</td><td>JAMAN 7 07/28/45</td><td>ETF</td><td>55,724</td><td>-741</td><td>3.07</td><td>.38</td><td>65.66MLN</td><td>07/28/2045</td><td>11.3…</td><td>7.875</td><td>Government</td></tr><tr><td>21) Peruvian Government Int…</td><td>PERU 8 11/21/33</td><td>ETF</td><td>52,255</td><td>-695</td><td>2.43</td><td>.38</td><td>65.41MLN</td><td>11/21/2033</td><td>7.288</td><td>8.750</td><td>Government</td></tr></table>

# Coupon cash-flows distributed as monthly dividends

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/828a0a1ef66d52811a264db4588f2d591f365c347a3174eb22d01b58765700d1.jpg)

# Computing ETF yield and spread using ACF method

- Model ETF as "synthetic bond" by aggregating weighted constituent cash-flows  
- Discount aggregated cash-flows using flat yield to match the ETF market price (ignoring yield dispersion of individual sovereign issuers)  
- Use weighted average "time to maturity" of cash-flows to determine treasury benchmark  
- Compute spread to benchmark (to interpolated treasury yield for g-spread)

# ACF cash-flow aggregation example

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/52f81fef5d895bc31c2c610f133ab54261cc6c0f2c92f2bd337e5afc55e6b0a8.jpg)

# Yield and Spread/YAS calculation for EMB ETF

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/9730f742ecd0a17b32504d81ee72a9cf2a705d683bf9d1ca8b235a432387337c.jpg)

Why do corporations (specifically banks) issue floating rate bonds?

- Commercial/other corporate loans are floating rate contracts  
- Banks provide commercial loans to corporations and issue floating rate bonds to match the risk exposure  
- Banks can swap their fixed rate vs floating rate exposure via interest rate swaps  
Examples

- Floating rate High Yield senior loans (monthly coupon frequency)  
- Floating rate corporate bonds issued by banks/financials (quarterly coupon frequency)

# Reference Interest Rates (April 8 2024)

- Federal Funds Target Rate - Lower Bound (currently 5.25%)  
- Federal Funds Target Rate - Upper Bound (currently 5.5%)  
- Federal Funds Effective Rate (currently 5.33%)  
- SOFR - Secured Overnight Financing Rate (currently 5.32%)  
3M Term SOFR Rate (currently  $5.28\%$  
3M US Treasury Rate (currently  $5.35\%$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/3685e45c9f479d25728f24cbe53060aaf177a442d1103bc117ed3eb59e03ba67.jpg)  
Reference Interest Rates: Fed Funds (E/U/L) and SOFR

# Historical 3M Term Interest Rates: SOFR vs US Treasuries

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/5b5891cdb68f8562001964ed40cbc82be051ec3683f2a1a6bd079ecdb58e4e1f.jpg)

# Interest Rates Curves: SOFR vs Active Treasury (April 8 2024)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/4a332d3b5e616dac31d85643806c5bae31ac5f45d3decc0526ba2b590da9afe7.jpg)

# Composition of floating rate cash-flows

- Floating rate cash-flow payments are composed of two parts:
- Reference Index Rate part: usually indexed to SOFR, FedFunds, LIBOR, etc  
- Contractual Spread part: "floating" on the top of the Reference Index rate
- Reference Index Rate gets "fixed"/reset on the coupon frequency schedule  
- Coupons determined "on-the-fly", known on payment date

# Floating Rate Bond (SOFR ref index): Morgan Stanley

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/802fc5e129c23438d5db6f9aa2d24f96f35cf4e69c43221222d3edffd48d7d08.jpg)

# Investing at risk-free reference rates (FedFunds, SOFR, LIBOR)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/fd275c628770237555b1e716e91ccdefbd0bd831f282cbed0477c270cad96745.jpg)  
Risk-free Rolling Investment at Reference Rate (LIBOR, SOFR)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/3dc7610b3ac8ab8b26dac9fcee7736e0eab7b1866193e805c9b6c0ad536e0f79.jpg)  
Risky bond cash-flows indexed to Reference Rate

# Floating rate bond financed at Reference Index Rate

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/65746c472e76f65f7dd3190fc2b11e4d27fcb734c209628eb9938d4d22979350.jpg)  
Financed Floating Rate Risky Bond

# Financed risky floating rate bond

- Long position: floating rate bond  
- Short position: finance the cash costs via Reference Index Rate contracts (FedFunds, SOFR)  
- Enables investor to "extract" the company specific credit risk  
- Eliminates (most) exposure to interest rates  
- Investor receives spread premium payments to maturity (or default time)  
- Investor pays loss in case of default (100% - bond recovery value)

# Credit Default Swap cash-flows

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/56146a1d1c70a973fa5ee54e00f4d0801501343976b73abd43209a083ce55423.jpg)  
Credit Default Swap: Risky Cashflows with Default Events

# What is a CDS contract?

- Synthetic swap contract "mimicking" cash-flows of financed floating rate bond  
- "Insurance" contract linked to an issuer credit default event  
- Mainly used for hedging long corporate bond positions against credit default risk  
- Fixed/Premium Leg details: seller of protection receives spread premiums until maturity (or default)  
- Default/Loss Leg details: seller of protection pays the loss in case of default before maturity

# CDS accounting convention

# Seller of CDS contract:

- Investor sells credit default protection  
- Corresponds to "long risk" position in (financed floating rate) bond  
It is a bet on no default occurring before maturity

# Buyer of CDS contract:

- Investor buys credit default protection  
- Corresponds to "short risk" position in (financed floating rate) bond  
- It is a bet on default occurring before maturity

# International Swaps and Derivatives Association (ISDA)

CDS market regulated by International Swaps and Derivatives Association  
ISDA agreement with PB is needed to enter into CDS contracts  

- Provides Standard Model for CDS pricing and risk ("hazard rate model")  
- Role of ISDA Committee
- Declare when default event occurs for an issuer  
- Run defaulted bond recovery rate auction / publish CDS recovery rate  
- Coordinate default settlement of existing CDS contracts

# CDS contract specs

Credit issuer entity  

- Rank/seniority: usually Senior Unsecured/SNRFOR  
- Currency  
- Coupon premium: 100bps for IG, 500bps for HY issuers  
- Maturity date: quarterly payments (on IMM dates) to maturity  
ISDA docs: SNAC 2014 XR SR USD  
- Reference proxy bond (if available)

# CDS quoting and trading conventions

- Quotation in spread for IG issuers  
- Quotation in "points upfront" for HY issuers  
- Quotes converted into "points upfront" for trade settlement (via ISDA Standard Model)  
ISDA Standard Model also provides risk and accrued calcs

# CDSW screen: IBM 5Y CDS (ISDA Std Model)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/0b90bb42fd0b36ced82038ab07beb0f31779e33c710f3e996c2464e2b95c6765.jpg)  
*This application is based on the ISDA Std Model v1, developed and supported in collaboration with Markit Group Ltd.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/a27e9f9ee0d5311c86a2a458cb73bee7045abd4c1f28a1032366d4259a137cee.jpg)

CDSW screen: Ford Motor Credit 5Y CDS (ISDA Std Model)  
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/c6876d0f8b96fc2c37cf21b356a0e9baebc648db22c7e911fc6dbcf1455b598f.jpg)  
*This application is based on the ISDA Std Model v1, developed and supported in collaboration with Markit Group Ltd.

# CDS Par Spread curves: Ford Motor Credit (5Y most liquid)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/db2bf0a5dbb120223a629bd562420530f978be45e2356c92eb23ce868499cdd4.jpg)

# Ford Motor Credit: CDS spreads vs cash equity (inv)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/eef863d2e44702a8bcf06bc05aa4592389f334100cefbf3ffd41571fd8174f27.jpg)

# ISDA CDS Standard Model

ISDA Safe, Efficient Markets

markit

# ISDA CDS Standard Model

# ISDA CDS Standard Model

The ISDA CDS Standard Model is a source code for CDS calculations and can be downloaded freely through this website.

The source code is copyright of ISDA and available under an Open Source license.

# Background

As the CDS market evolves to trade single name contracts with a fixed coupon and upfront payment, it is critical for CDS investors to match the upfront payment amounts and to be able to translate upfront quotations to spread quotations and vice versa in a standardized manner.

One of the primary goals in making the code available is to enhance transparency and to optimize use of standard technology for CDS pricing. Implementing the ISDACDS Standard Model and using the agreed standard input parameters will allow CDS market participants to tie out calculations and thus improve consistency and reduce operational differences downstream.

# Download

Source Code and Excel add-in

# Related Links

Documentation  
ISDA Standard Model Set for the Computed Computations  
IBOR Test Grids  
RFR Interest Rates  
RFR Test Grids

# Hazard Rate Model inputs

- Contractual cash-flows to maturity  
- Calibrated discount factors curve for given Reference Interest Rate (SOFR)  
- Expected recover rates given default (by seniority rank)  
- "Market implied" survival probability curve  
calibrated to standard CDS maturities: 6M, 1Y, 2Y, 3Y, 5Y, 7Y and 10Y  
- Hazard rates: local probabilities of default, can be "computed" from survival probability curves

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/47c5df59092cf3ceed54407f67fb39e4b63aebbef2f80bdec9a3a5e89b07022a.jpg)  
Shape of Survival Probability Curves

# Simple valuation formulas (flat hazard rate model)

CDS:

$$
P V _ {C D S} (c, r, h, R, T) = \left[ \frac {c - (1 - R) \cdot h}{r + h} \right] \cdot \left[ 1 - e ^ {- T \cdot (r + h)} \right]. \tag {1}
$$

- Fixed rate risky bond

$$
P V _ {B o n d} (c, r, h, R, T) = 1 + \left[ \frac {c - r - (1 - R) \cdot h}{r + h} \right] \cdot \left[ 1 - e ^ {- T \cdot (r + h)} \right] \tag {2}
$$

See next session for details on the Hazard Rate Model

CDS PV surface (5% flat interest rates, 5% coupon)  

<table><tr><td></td><td>Hazard Rate</td><td colspan="8">Credit Default Swap with 5% coupon and 5Y maturity</td></tr><tr><td>Recovery Rate</td><td>0%</td><td>2%</td><td>4%</td><td>6%</td><td>8%</td><td>10%</td><td>12%</td><td>14%</td><td>16%</td></tr><tr><td>20%</td><td>22.1%</td><td>14.3%</td><td>7.2%</td><td>0.8%</td><td>-5.1%</td><td>-10.6%</td><td>-15.5%</td><td>-20.0%</td><td>-24.1%</td></tr><tr><td>25%</td><td>22.1%</td><td>14.8%</td><td>8.1%</td><td>1.9%</td><td>-3.7%</td><td>-8.8%</td><td>-13.5%</td><td>-17.8%</td><td>-21.7%</td></tr><tr><td>30%</td><td>22.1%</td><td>15.2%</td><td>8.9%</td><td>3.1%</td><td>-2.2%</td><td>-7.0%</td><td>-11.5%</td><td>-15.5%</td><td>-19.2%</td></tr><tr><td>35%</td><td>22.1%</td><td>15.6%</td><td>9.7%</td><td>4.2%</td><td>-0.7%</td><td>-5.3%</td><td>-9.4%</td><td>-13.2%</td><td>-16.7%</td></tr><tr><td>40%</td><td>22.1%</td><td>16.0%</td><td>10.5%</td><td>5.4%</td><td>0.7%</td><td>-3.5%</td><td>-7.4%</td><td>-11.0%</td><td>-14.2%</td></tr><tr><td>45%</td><td>22.1%</td><td>16.5%</td><td>11.3%</td><td>6.5%</td><td>2.2%</td><td>-1.8%</td><td>-5.4%</td><td>-8.7%</td><td>-11.8%</td></tr><tr><td>50%</td><td>22.1%</td><td>16.9%</td><td>12.1%</td><td>7.7%</td><td>3.7%</td><td>0.0%</td><td>-3.4%</td><td>-6.5%</td><td>-9.3%</td></tr><tr><td>55%</td><td>22.1%</td><td>17.3%</td><td>12.9%</td><td>8.8%</td><td>5.1%</td><td>1.8%</td><td>-1.3%</td><td>-4.2%</td><td>-6.8%</td></tr><tr><td>60%</td><td>22.1%</td><td>17.7%</td><td>13.7%</td><td>10.0%</td><td>6.6%</td><td>3.5%</td><td>0.7%</td><td>-1.9%</td><td>-4.3%</td></tr></table>

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/6df8ff37176f81fe2a03b1a781cdce763a3dc9927c78008a588fb5721d9cc09e.jpg)  
CDS valuation

# CDX contract specs

- CDX is an equally weighted index of CDS contracts  
- Reference issuers portfolios
- CDX IG: top 125 North American Investment Grade CDS issuers (100bps coupon)  
- CDX HY: top 100 North American High Yield CDS issuers (500bps coupon)  
- CDX EM: 20 sovereign CDS issuers (100bps coupon)
- Financials are excluded (banks not allowed to trade their own CDS)

# CDX contract specs

- His Markit provides the index composition  
- Electronically trading on SEF, ICE cleared  
- CDX indexes roll every 6 months (March and September IMM dates)  
- Individual CDS defaults settled in cash after recovery rate auctions  
ISDA docs: SNAC 2014 XR SR USD

# CDX example: IG 5Y Series 42

<table><tr><td colspan="4">CDX IG CDSI S42 5Y 52.536 -1.220 52.310/52.763
At 5 Apr Source CBBT</td></tr><tr><td colspan="3">CDX IG CDSI S42 5Y Corp</td><td>Page 1/2 Description: CDS Index</td></tr><tr><td></td><td>94</td><td>Buy</td><td>96 Sell</td></tr><tr><td>Pages
1)Index Info
2)Roll Info</td><td colspan="3">Index Information
The Markit CDX North America Investment Grade Index is composed of 125
equally weighted credit default swaps on investment grade entities, distributed
among 6 sub-indices: High Volatility,Consumer, Energy, Financial, Industrial, and
Technology, Media &amp; Tele-communications. Markit CDX indices roll every 6
months in March &amp; September.</td></tr><tr><td></td><td colspan="2">Contract Information
Currency USD Day Cnt ACT/360
Tenor 5Y Cpn Fr… Q
Dsc Curv US Custom Swap Curve
Region America
ISDA Definitions Year 2014</td><td>Identifiers
Index MARKIT CDX.NA.IG.42 06/29
Short Name IG/ Corp
Full Name CDX IG CDSI S42 5Y Corp
BBID CDXIG542
RED Code 2165BYEE1</td></tr><tr><td>Quick Links
3)MEMCDS Search
32)ALLQ Pricing
33)QM… Quotes
34)CDSW CDS Val
35)CN Sec News
36)CDIA Analysis</td><td colspan="3">Cpn (bps) 100 Factor 1.0
Recovery 0.40 Version 1
Quote Ty… Spread Series 42
Start Date 03/20… Start Cnst 125
Mty Date 06/20…
Restruct No Restructuring</td></tr></table>

# CDX IG Series 42 composition: 125 equally weighted issuers

<table><tr><td>Index</td><td colspan="2">MARKIT CDX.NA.IG.42 06/29</td><td>BB Number</td><td colspan="2">CDXIG542</td></tr><tr><td>RED Code</td><td colspan="2">2165BYEE1</td><td>Deal Spread (bp)</td><td colspan="2">100</td></tr><tr><td>1st Accrual Start Date</td><td colspan="2">03/20/24</td><td>Current Spread (bp)</td><td colspan="2">52.3100/52.7625</td></tr><tr><td>Maturity Date</td><td colspan="2">06/20/29</td><td>Version</td><td colspan="2">1</td></tr><tr><td>Sector All</td><td colspan="2">Pricing Source</td><td>CBGN</td><td colspan="2">Derived Spreads</td></tr><tr><td>Company Name</td><td>Wgt ISIN</td><td>RED Pair</td><td>Corp Tkr</td><td>5 Yr CDS Tkr</td><td>Spread (bp)</td></tr><tr><td>1) Advanced Micro Devices Inc</td><td>0.800 US007903BD80</td><td>007G93AG7</td><td>AMD</td><td>CT355268</td><td>40</td></tr><tr><td>1) Ally Financial Inc</td><td>0.800 US02005NB3BJ1</td><td>0C205PAH4</td><td>ALLY</td><td>CGMAC1U5</td><td>141</td></tr><tr><td>1) Alttria Group Inc</td><td>0.800 US022095AU78</td><td>0C4291AG9</td><td>MO</td><td>CMO1U5</td><td>N.A.</td></tr><tr><td>1) American Electric Power Co Inc</td><td>0.800 US025537AJ08</td><td>027A8AAF3</td><td>AEP</td><td>CAEP1U5</td><td>35</td></tr><tr><td>1) American Express Co</td><td>0.800 US025816CW76</td><td>027D97AH9</td><td>AXP</td><td>CAXP1U5</td><td>N.A.</td></tr><tr><td>1) American International Group Inc</td><td>0.800 US026874AZ07</td><td>028EFBAC1</td><td>AIG</td><td>CAIG1U5</td><td>51</td></tr><tr><td>1) Amgen Inc</td><td>0.800 US031162DQ06</td><td>0D4278AH2</td><td>AMGN</td><td>CAMG1U5</td><td>42</td></tr><tr><td>1) Apache Corp</td><td>0.800 US037411BE40</td><td>03AB52AF6</td><td>APA</td><td>CAPA1U5</td><td>104</td></tr><tr><td>1) Arrow Electronics Inc</td><td>0.800 US042735AK67</td><td>0E69ABAE6</td><td>ARW</td><td>CARW1U5</td><td>78</td></tr><tr><td>2) Assured Guaranty Municipal Corp</td><td>0.800</td><td></td><td>AGO</td><td>CFSAI1U5</td><td>N.A.</td></tr><tr><td>2) AT&amp;T Inc</td><td>0.800 US00206RHW51</td><td>0A226XAK9</td><td>T</td><td>CSBC1U5</td><td>N.A.</td></tr><tr><td>2) AutoZone Inc</td><td>0.800 US053332AT96</td><td>0F8665AF5</td><td>AZO</td><td>CAZ01U5</td><td>34</td></tr><tr><td>2) Avnet Inc</td><td>0.800 US053807AU73</td><td>058887AF0</td><td>AVT</td><td>CAVT1U5</td><td>90</td></tr><tr><td>2) Barrick Gold Corp</td><td>0.800 US067901AA64</td><td>06DG91AF3</td><td>ABXCN</td><td>CABX1U5</td><td>47</td></tr><tr><td>2) Baxter International Inc</td><td>0.800 US071813BQ15</td><td>0H8994AG3</td><td>BAX</td><td>CBAX1U5</td><td>61</td></tr><tr><td>2) Berkshire Hathaway Inc</td><td>0.800 US084670BS67</td><td>08CAD7AI9</td><td>BRK</td><td>CX357111</td><td>N.A.</td></tr><tr><td>2) Best Buy Co Inc</td><td>0.800 US08652BA70</td><td>08EB67AF9</td><td>BBY</td><td>CBBY1U5</td><td>58</td></tr><tr><td>2) Block Financial LLC</td><td>0.800 US093662AJ37</td><td>09C9BKAD4</td><td>HRB</td><td>CHRB1U5</td><td>N.A.</td></tr><tr><td>2) BorgWarner Inc</td><td>0.800 US099724AL02</td><td>09TG96AE4</td><td>BWA</td><td>CBWA1U5</td><td>N.A.</td></tr><tr><td>3) Boston Scientific Corp</td><td>0.800 US101137BA41</td><td>1B124AAAG</td><td>BSX</td><td>CBSX1U5</td><td>31</td></tr></table>

# CDX HY 42 composition: 100 equally weighted issuers

<table><tr><td>Index</td><td colspan="2">MARKIT CDX.NA.HY.42 06/29</td><td>BB Number</td><td colspan="2">CXPHY542</td></tr><tr><td>RED Code</td><td colspan="2">2165BRAB2</td><td>Deal Spread (bp)</td><td colspan="2">500</td></tr><tr><td>1st Accrual Start Date</td><td colspan="2">03/20/24</td><td>Current Price</td><td colspan="2">106.6819/106.7769</td></tr><tr><td>Maturity Date</td><td colspan="2">06/20/29</td><td>Version</td><td colspan="2">1</td></tr><tr><td>Sector All</td><td colspan="2">Pricing Source</td><td>MSG1</td><td colspan="2">Derived Spreads</td></tr><tr><td>Company Name</td><td>Wgt</td><td>ISIN</td><td>RED Pair</td><td>Corp Tkr</td><td>5 Yr CDS Tkr</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>1) American Airlines Group Inc</td><td>1.000</td><td>US02376RAF91</td><td>025ADXAD4</td><td>AAL</td><td>CAMR1U5</td></tr><tr><td>12 Ball Corp</td><td>1.000</td><td>US054984AW66</td><td>05DCDHAE7</td><td>BALL</td><td>CX356919</td></tr><tr><td>13 Carnival Corp</td><td>1.000</td><td>US143658AH53</td><td>1F79BDAD1</td><td>CCL</td><td>CCCL1U5</td></tr><tr><td>14 Lumen Technologies Inc</td><td>1.000</td><td>US156700AZ93</td><td>5A5265AB2</td><td>LUMN</td><td>CCTL1U5</td></tr><tr><td>15 Cleveland-Cliffs Inc</td><td>1.000</td><td>US18589AH46</td><td>19DDHAC4</td><td>CLF</td><td>CY460646</td></tr><tr><td>16 Avis Budget Group Inc</td><td>1.000</td><td>US053773BG13</td><td>058AEAG4</td><td>CAR</td><td>CCD1U5</td></tr><tr><td>17 Domtar Corp</td><td>1.000</td><td>US257559A134</td><td>27CCAFAF9</td><td>UFS</td><td>CDTC1U5</td></tr><tr><td>18 RR Donnelley &amp; Sons Co</td><td>1.000</td><td>US257867BE01</td><td>27CFEDAH6</td><td>RRD</td><td>CX359760</td></tr><tr><td>19 Macy&#x27;s Inc</td><td>1.000</td><td>US55616XM92</td><td>5AB77VK6</td><td>M</td><td>CFD1U5</td></tr><tr><td>20 TEGNA Inc</td><td>1.000</td><td>US87901JAF21</td><td>8FG91KAE7</td><td>TGNA</td><td>CGCI1U5</td></tr><tr><td>21 Gap Inc/The</td><td>1.000</td><td>US364760AP35</td><td>39ABD6AG0</td><td>GPS</td><td>CGPS1U5</td></tr><tr><td>22 Goodyear Tire &amp; Rubber Co/The</td><td>1.000</td><td>US382550BF73</td><td>3BA7A5AF1</td><td>GT</td><td>CGT1U5</td></tr><tr><td>23 Avent Corp</td><td>1.000</td><td>US73179PAM86</td><td>0F89E3AB4</td><td>AVNT</td><td>CPOL1U5</td></tr><tr><td>24 KB Home</td><td>1.000</td><td>US4866KAX72</td><td>4CECCQAJ7</td><td>KBH</td><td>CKBH1U5</td></tr><tr><td>25 Kohl&#x27;s Corp</td><td>1.000</td><td>US500255AU88</td><td>5F027AFA5</td><td>KSS</td><td>CKSS1U5</td></tr><tr><td>26 Bath &amp; Body Works Inc</td><td>1.000</td><td>US501797AN49</td><td>0H78B3AD2</td><td>BBWI</td><td>CLTD1U5</td></tr><tr><td>27 Louisiana-Pacific Corp</td><td>1.000</td><td>US546347AM73</td><td>59A97BAF1</td><td>LPX</td><td>CLPX1U5</td></tr><tr><td>28 MBIA Inc</td><td>1.000</td><td>US55262CAFF77</td><td>5A788FA86</td><td>MBI</td><td>CMB1U5</td></tr><tr><td>29 MGM Resorts International</td><td>1.000</td><td>US552953CE90</td><td>5A831EAG2</td><td>MGM</td><td>CMGG1U5</td></tr><tr><td>30 Murphy Oil Corp</td><td>1.000</td><td>US626717AA04</td><td>688D88AB1</td><td>MUR</td><td>CT37332</td></tr></table>

# CDX EM 41 composition: 20 emerging market sovereign issuers

<table><tr><td>Index</td><td>MARKITT CDX.EM.41 06/29</td><td>BB Number</td><td>CXPEM541</td><td></td></tr><tr><td>RED Code</td><td>2165BZFF4</td><td>Deal Spread (bp)</td><td>100</td><td></td></tr><tr><td>1st Accrual Start Date</td><td>03/20/24</td><td>Current Price</td><td>96.8308/96.9068</td><td></td></tr><tr><td>Maturity Date</td><td>06/20/29</td><td>Version</td><td>1</td><td></td></tr><tr><td>Sector All</td><td>Pricing Source</td><td>MSG1</td><td>Derived Spreads</td><td></td></tr><tr><td>Company Name</td><td>Wgt ISIN</td><td>RED Pair</td><td>Corp 1kr</td><td>5 Yr CDS 1kr</td></tr><tr><td>1) Emirate of Abu Dhabi United Arab E…</td><td>2,000 XS1402929746</td><td>MM167YAD4</td><td>ADGB</td><td>CX85S707</td></tr><tr><td>1) Arab Republic of Egypt</td><td>2,000 XS1953057061</td><td>MN5AC8AH1</td><td>EGYPT</td><td>CEGY1US</td></tr><tr><td>13 Argentine Republic/The</td><td>2,000 US040114HX11</td><td>PP7D7EAM7</td><td>ARGENT</td><td>CT350188</td></tr><tr><td>14 Dominican Republic International B…</td><td>2,000 US25714PDZ80</td><td>27C8STAB0</td><td>DOMREP</td><td>CT350244</td></tr><tr><td>15 Federal Republic of Nigeria</td><td>2,000 XS2384698994</td><td>V1D83XAB3</td><td>NGEODD</td><td>CT393726</td></tr><tr><td>16 Federative Republic of Brazil</td><td>9,000 US105756CE88</td><td>115CCBAP3</td><td>BRAZIL</td><td>CBER21US</td></tr><tr><td>17 Kingdom of Bahrain</td><td>2,000 XS1324931895</td><td>MS999AC8</td><td>BHRAIN</td><td>CT394313</td></tr><tr><td>18 Kingdom of Morocco</td><td>2,000 XS2270576965</td><td>678E98AE4</td><td>MOROC</td><td>CY002690</td></tr><tr><td>19 Kingdom of Saudi Arabia</td><td>5,000 XS179193741</td><td>MS999IAB4</td><td>KSA</td><td>CT965307</td></tr><tr><td>20 Federation of Malaysia</td><td>3,000 USY6826RAA06</td><td>5B6994AC2</td><td>MALAYS</td><td>CMLAY1US</td></tr><tr><td>21 People&#x27;s Republic of China</td><td>9,000 US712219AG90</td><td>71343AAE7</td><td>CHINA</td><td>CCHIN1US</td></tr><tr><td>22 Republic of Chile</td><td>6,000 US168863CF36</td><td>17EGE9AD1</td><td>CHILE</td><td>CCHIL1US</td></tr><tr><td>23 Republic of Colombia</td><td>7,000 US195325BB02</td><td>1AE857AC8</td><td>COLOM</td><td>CCOL1US</td></tr><tr><td>24 Republic of Indonesia</td><td>8,000 US455780CY00</td><td>49ACF8AV8</td><td>INDON</td><td>CINO1US</td></tr><tr><td>25 Republic of Panama</td><td>2,000 US698299AD63</td><td>6FHABIAB5</td><td>PANAMA</td><td>CPAN1US</td></tr><tr><td>26 Republic of Peru</td><td>3,000 US715638AP79</td><td>786B9BAB8</td><td>PERU</td><td>CPERU1US</td></tr><tr><td>27 Republic of South Africa</td><td>9,000 US836205AR58</td><td>889825AI9</td><td>REPSOU</td><td>CS0AF1US</td></tr><tr><td>28 Republic of the Philippines</td><td>3,000 US718286AY36</td><td>789AAEE3</td><td>PHILLIP</td><td>CPHIL1US</td></tr><tr><td>29 Republic of Turkkuye/The</td><td>9,000 US900123AL40</td><td>9J0135AB9</td><td>TURKEY</td><td>CTURK1US</td></tr><tr><td>30 State of Qatar</td><td>2,000 XS0113419690</td><td>7B899WAC2</td><td>QATAR</td><td>COTA1US</td></tr><tr><td>31 Sultanate of Oman</td><td>2,000 XS1405777589</td><td>6EA256AB6</td><td>OMAN</td><td>CT991547</td></tr><tr><td>32 United Mexican States</td><td>9,000 US91087BAC46</td><td>9A18ECAH2</td><td>MEX</td><td>CMEX1US</td></tr></table>

What do CDX index spreads represent?

- Level of credit default risk in US Markets (by credit market segment: IG vs HY)  
- Level of credit default risk in Emerging Markets (CDX EM)  
- CDX is most liquid macro trading/hedging instruments for credit risk!  
- High leverage, with funding advantage (synthetic swap contract)  
- Very similar in nature to Options Volatility Index VIX!

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/2dfcbcc016859ce5331327e138b3598f77f906118a43c1a1e4893feb7b5d1269.jpg)  
CDX IG 5Y & 10Y spreads vs VIX Index

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/e059c1372ffbdfe57bde0838739af45e92a144d8c45be3a6e3f4c9177dc25296.jpg)  
CDX HY 5Y vs JNK and HYG spreads

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/6e2138f0e1041d8686b06a5031482ca0c4504ead4cf369b166dad7776629cbb2.jpg)  
CDX EM 5Y vs EMB spreads: what could cause the level diffs?

# Summary and Q&A

Sovereign bonds  
Credit ETFs

Corporate  
Sovereign

- Floating rate bonds  
CDS  
CDX Index

IG  
HY  
EM

Pairs trading

# Credit Markets

# Session 3

# The Hazard Rate Model

Dr. Alex Popovici<sup>1,2</sup>

April 16 2024

<sup>1</sup>Financial Mathematics, University of Chicago

alex.popovici@uchicago.edu

&

$^{2}$ Senior Quant Trader, Chicago Trading Company

# CDS pricing in the Hazard Rate Model

CDS cash-flows  
CDS pricing  
Hazard Rates  
ISDA CDS Hazard Rate model  

- Simple CDS pricing formulas

# Bond pricing in the Hazard Rate Model

- Generic bond pricing  
- Simple bond pricing formulas  
- Yield/spread model vs hazard rate model

# 3 Calibration, Model Prices & Edges

- Calibration of the Hazard Rate Model  
Model Prices and Edges

# 4 Q&A

# Reminder: CDS cash-flows diagram

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/00787d53f170f9e8ffffe44cca11bc45a89bd9a2b204afe57b277402fb54600f.jpg)  
Credit Default Swap: Risky Cashflows with Default Events

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/7a54907066e66c2ead6f1718aebfd500a5b1f9e3806fd30636e70d46bdcb5ca1.jpg)  
CDS cumulative cash-flows (Premium and Default Legs)

# Risk neutral valuation framework

Each instrument uniquely defined by its cumulative future cash-flows

$$
C F (t), \quad t \geq 0 \tag {1}
$$

- Risk neutral valuation: use a "market implied" probability measure  $\mathbb{P}$  for determining prices of securities  
- Bank savings account security  $B$  used as numeraire for discounting future cash-flows:

$$
B (t) = e ^ {\int_ {0} ^ {t} r _ {s} d s}, t \geq 0
$$

Present value obtained as

$$
P V (t) = B (t) \cdot \mathbb {E} \left[ \int_ {t} ^ {\infty} B (s) ^ {- 1} \cdot d C F (s) | \mathcal {F} _ {t} \right] \qquad (2)
$$

# Simple case: deterministic interest rates

- We consider the simple case of deterministic interest rates  
- The "time value of money" at time  $t$  for time  $s$  is captured in the calibrated discount factor curve:

$$
D F (t, s) = B (t) \cdot \mathbb {E} [ B (s) ^ {- 1} | \mathcal {F} _ {t} ] = e ^ {- \int_ {t} ^ {s} r _ {u} d u}, 0 \leq t \leq s \tag {3}
$$

- The risk free valuation formula simplifies to

$$
P V (t) = \mathbb {E} \left[ \int_ {t} ^ {\infty} D F (t, s) \cdot d C F (s) \mid \mathcal {F} _ {t} \right] \tag {4}
$$

- Same formula holds when security cash-flows and interest rates are independent

# CDS Premium/Fixed Leg cash-flows

- Quarterly coupon payments until maturity  $T = {T}_{n}$  :

$$
\left\{c _ {i}, T _ {i} \right\} _ {i = 1.. n}, \quad 0 \leq t <   T _ {1} <   \dots <   T _ {n} \tag {5}
$$

- We denote the random/stochastic issuer default time by

$$
\tau \in [ 0, \infty)
$$

- Cumulative Premium Leg cash-flows have stochastic dependence on  $\tau$ :

$$
P L (s) := \sum_ {i = 1} ^ {n} c _ {i} \cdot \mathbb {I} _ {\{s \geq T _ {i} \}} \cdot \mathbb {I} _ {\{\tau > T _ {i} \}} \tag {6}
$$

# Valuation framework for credit-risky cash-flows

- We assume  $DF(t, s)$  is the deterministic risk-free discount factor (as of time  $t$ , for time  $s$ ).  
- The  $DF(t, .)$  curve can be calibrated from market quotes via bootstrapping.  
- Reminder:  $\tau \in [0, \infty)$  is the random/stochastic issuer default time  
Market implied issuer survival & default probabilities:

$$
S P (t, s) := \mathbb {P} (\tau > s | \tau > t), \quad 0 \leq t \leq s, \tag {7}
$$

$$
D P (t, s) := \mathbb {P} (\tau \leq s | \tau > t) = 1 - S P (t, s). \tag {8}
$$

Risk neutral valuation of CDS Premium/Fixed Leg

$$
\begin{array}{l} P V _ {C D S \_ P L} (t) = \mathbb {E} \left[ \int_ {t} ^ {T} D F (t, s) \cdot d P L (s) | \tau > t \right] (9) \\ = \mathbb {E} \left[ \sum_ {i = 1} ^ {n} c _ {i} \cdot D F (t, T _ {i}) \cdot \mathbb {I} _ {\{\tau > T _ {i} \}} | \tau > t \right] (10) \\ = \sum_ {i = 1} ^ {n} c _ {i} \cdot D F (t, T _ {i}) \cdot \mathbb {E} \left[ \mathbb {I} _ {\{\tau > T _ {i} \}} | \tau > t \right] (11) \\ = \sum_ {i = 1} ^ {n} c _ {i} \cdot D F (t, T _ {i}) \cdot \mathbb {P} (\tau > T _ {i} | \tau > t) (12) \\ = \sum_ {i = 1} ^ {n} c _ {i} \cdot D F (t, T _ {i}) \cdot S P (t, T _ {i}). (13) \\ \end{array}
$$

Intuitive interpretation: premium leg

- Present value of risky contractual cash-flows

$$
P V _ {C D S \_ P L} (t) = \sum_ {i = 1} ^ {n} c _ {i} \cdot D F (t, T _ {i}) \cdot S P (t, T _ {i}) \tag {14}
$$

- is obtained by summing up the cash-flows amounts  $c_{j}$  
- … multiplied with the discount factors  $DF(t, T_i)$  at cash-flow times  $T_i$  (time value of money)  
- … and multiplied with probability  $SP(t, T_i)$  of issuer being "alive" at cash-flow time  $T_i$  (credit risk "adjuster")

# CDS Default/Loss Leg cash-flows

- Recovery Rate given default denoted by R  
- For simplicity ("basic model") we assume R is constant  
- Think of R as the expected (average) recovery rate for a given issuer and seniority rank  
- Default Leg cash-flows until times are given by:

$$
D L (s) := (1 - R) \cdot \mathbb {I} _ {\{\tau \leq s \}} \tag {15}
$$

# Valuation of CDS Default/Loss Leg (using Fubini)

$$
\begin{array}{l} P V _ {C D S \_ D L} (t) = \mathbb {E} \left[ \int_ {t} ^ {T} D F (t, s) \cdot d D L (s) | \tau > t \right] (16) \\ = \mathbb {E} \left[ \int_ {t} ^ {T} (1 - R) \cdot D F (t, s) \cdot d \mathbb {I} _ {\{\tau \leq s \}} | \tau > t \right] (17) \\ = \int_ {t} ^ {T} (1 - R) \cdot D F (t, s) \cdot d \mathbb {E} [ \mathbb {I} _ {\{\tau \leq s \}} | \tau > t ] (18) \\ = (1 - R) \cdot \int_ {t} ^ {T} D F (t, s) \cdot d \mathbb {P} (\tau \leq s | \tau > t) (19) \\ = (1 - R) \cdot \int_ {t} ^ {T} D F (t, s) \cdot d D P (t, s). (20) \\ \end{array}
$$

Intuitive interpretation: default leg

$$
P V _ {C D S \_ D L} (t) = \int_ {t} ^ {T} (1 - R) \cdot D F (t, s) \cdot d D P (t, s) \tag {21}
$$

- Present value of loss payment at (random) issuer default time  
- Obtained by splitting the time until maturity  $[t, T]$  in infinitesimal (one day) intervals and  
- summing up the loss amount on each interval:  $1 - R$  
- … multiplied with the discount factor for that interval:  $DF(t, s)$  
- … and multiplied with the incremental probability of default on that interval:  $dDP(t, s)$ .

# Quick recap on Discount Factors and Forward Interest Rates

- Forward interest rates  $f(t, s)$ ,  $s \geq t$  represent information about interest rates at future time  $s$ , as seen from time  $t$ .  
- Information is contained in today's term structure of spot interest rates (discount curves).  
- Forward rate curves  $f(t,.)$  are defined implicitly from Discount Factor curves:

$$
D F (t, s) = \exp \left[ - \int_ {t} ^ {s} f (t, u) d u \right], \quad 0 \leq t \leq s, \tag {22}
$$

- … or defined explicitly as

$$
f (t, s) = - \frac {\partial}{\partial s} \ln [ D F (t, s) ] = - \frac {1}{D F (t , s)} \cdot \frac {\partial D F}{\partial s} (t, s). \tag {23}
$$

# Hazard Rates (a.k.a. Default Intensities)

- Hazard rates  $h(t,s)$  represent infinitesimal probabilities of default at future time  $s$ , using market information as of time  $t$ .  
- Similar concept to forward interest rates.  
- Hazard rate curves  $h\left( {t, \cdot  }\right)$  defined implicitly from Survival Probability curves:

$$
S P (t, s) = \exp \left[ - \int_ {t} ^ {s} h (t, u) d u \right], \quad 0 \leq t \leq s, \tag {24}
$$

- … or defined explicitly as

$$
h (t, s) = - \frac {\partial}{\partial s} \ln [ S P (t, s) ] = - \frac {1}{S P (t , s)} \cdot \frac {\partial S P}{\partial s} (t, s). \tag {25}
$$

# Properties of Hazard Rates

- Hazard rates  $h(t, s)$  quantify conditional probabilities of default "around" specific times  $s$  in the future

$$
\begin{array}{l} \mathbb {P} (s <   \tau <   s + \epsilon | \tau > s, \tau > t) \tag {26} \\ = \frac {\mathbb {P} (s <   \tau <   s + \epsilon | \tau > t)}{\mathbb {P} (\tau > s | \tau > t)} \\ = \frac {S P (t , s) - S P (t , s + \epsilon)}{S P (t , s)} \\ = 1 - \exp \left[ - \int_ {s} ^ {s + \epsilon} h (t, u) d u \right] \\ \simeq h (t, s) \cdot \epsilon , \quad 0 \leq t \leq s. \\ \end{array}
$$

Valuation of CDS Default/Loss Leg using Hazard Rates

$$
\begin{array}{l} P V _ {C D S \_ D L} (t) = (1 - R) \cdot \int_ {t} ^ {T} D F (t, s) \cdot d D P (t, s) (27) \\ = (1 - R) \cdot \int_ {t} ^ {T} D F (t, s) \cdot d [ 1 - S P (t, s) ] (28) \\ = - (1 - R) \cdot \int_ {t} ^ {T} D F (t, s) \cdot d S P (t, s) (29) \\ = (1 - R) \cdot \int_ {t} ^ {T} h (t, s) \cdot D F (t, s) \cdot S P (t, s) \cdot d s. (30) \\ \end{array}
$$

# Numerical quadrature of CDS Default/Loss Leg

$$
\begin{array}{l} P V _ {C D S \_ D L} (t) = (1 - R) \cdot \int_ {t} ^ {T} h (t, s) \cdot D F (t, s) \cdot S P (t, s) \cdot d s \\ = \sum_ {i = 1} ^ {n} (1 - R) \cdot \int_ {T _ {i - 1}} ^ {T _ {i}} h (t, s) \cdot D F (t, s) \cdot S P (t, s) \cdot d s (31) \\ \simeq \sum_ {i = 1} ^ {n} (1 - R) \cdot h (t, T _ {i}) \cdot \Delta T _ {i} \cdot D F (t, T _ {i}) \cdot S P (t, T _ {i}). (32) \\ \end{array}
$$

CDS valuation (receiving premium  $c$ , paying default/loss leg)

$$
\begin{array}{l} P V _ {C D S} (t) = P V _ {C D S \_ P L} (t) - P V _ {C D S \_ D L} (t) (33) \\ = \sum_ {i = 1} ^ {n} c _ {i} \cdot D F (t, T _ {i}) \cdot S P (t, T _ {i}) \\ - (1 - R) \cdot \int_ {t} ^ {T} h (t, s) \cdot D F (t, s) \cdot S P (t, s) \cdot d s \\ \simeq \sum_ {i = 1} ^ {n} [ c - (1 - R) \cdot h (t, T _ {i}) ] \cdot \Delta T _ {i} \cdot D F (t, T _ {i}) \cdot S P (t, T _ {i}). (34) \\ \end{array}
$$

# CDS Duration and ParSpread

CDS Duration defined as the "Unit" 1bp Premium Leg PV

$$
D u r a t i o n (t) := \sum_ {i = 1} ^ {n} \Delta T _ {i} \cdot D F (t, T _ {i}) \cdot S P (t, T _ {i}) \tag {35}
$$

CDS Premium Leg valuation via Duration:

$$
P V _ {C D S \_ P L} (t) = c \cdot \text {D u r a t i o n} (t) \tag {36}
$$

- ParSpread defined from CDS Default Leg and Duration:

$$
P V _ {C D S \_ D L} (t) = \operatorname {P a r S p r e a d} (t) \cdot \text {D u r a t i o n} (t) \tag {37}
$$

CDS valuation:

$$
P V _ {C D S} (t) = [ c - \text {P a r S p r e a d} (t) ] \cdot \text {D u r a t i o n} (t) \tag {38}
$$

# CDS Duration and ParSpread formulas

- CDS trades "At Par" when ParSpread matches the coupon:

$$
P V _ {C D S} (t) = 0 \Leftrightarrow \operatorname {P a r S p r e a d} (t) = c \tag {39}
$$

- CDS ParSpread measures the credit risk of the CDS contract

$$
\operatorname {P a r S p r e a d} (t) \cong (1 - R) \cdot h \tag {40}
$$

CDS CS01 defined as  $\Delta PV$  for -1bp change in ParSpread:

$$
\begin{array}{l} C S 0 1 _ {C D S} (t, s) := P V _ {C D S} (t, s - 1 b p) - P V _ {C D S} (t, s) \\ \cong [ c - s + 1 b p ] \cdot D u r a t i o n (t) - [ c - s ] \cdot D u r a t i o n (t) \\ = \text {D u r a t i o n} (t) \tag {41} \\ \end{array}
$$

CDS Par Spreads, Prices vs Upfronts for different maturities

- Standardized CDS maturities: 1Y, 2Y, 3Y, 4Y, 5Y, 7Y, 10Y  
- CDS Par Spreads: measure the "market implied" issuer default risks for the given maturities.  
- They are one-to-one to (and can be "bootstrapped" from) CDS prices and survival probabilities.  
- "CDS PV" = price from the point of view of a CDS protection seller (long credit risk)  
- "CDS Upfront" = price from the point of view of a CDS protection buyer (short credit risk)  
- "CDS Upfront" = - "CDS PV"

# ISDA CDS standard pricing & quoting model

- Deterministic discount curve: ISDA SOFR  
- Constant recovery  $R$ , constant hazard rate  $h$  
- Default Leg computed via numerical integration

$$
P V _ {C D S} (t, c, h, R) = P V _ {C D S \_ P L} (t, c, h, R) - P V _ {C D S \_ D L} (t, h, R)
$$

$$
\begin{array}{l} = \sum_ {i = 1} ^ {n} c _ {i} \cdot D F (t, T _ {i}) \cdot e ^ {(t - T _ {i}) \cdot h} - (1 - R) \cdot h \cdot \int_ {t} ^ {T} D F (t, s) \cdot e ^ {(t - s) \cdot h} d s \\ \simeq \sum_ {i = 1} ^ {n} [ c - (1 - R) \cdot h ] \cdot \Delta T _ {i} \cdot D F (t, T _ {i}) \cdot e ^ {(t - T _ {i}) \cdot h} \\ = \sum_ {i = 1} ^ {n} [ c - (1 - R) \cdot h ] \cdot \Delta T _ {i} \cdot e ^ {(t - T _ {i}) \cdot \left(r _ {i} + h\right)}. \tag {42} \\ \end{array}
$$

Simple CDS valuation with constant parameters

$$
P V _ {C D S} (c, r, h, R, T) = \tag {43}
$$

$$
\begin{array}{l} = \sum_ {k = 1} ^ {4 T} \frac {c}{4} \cdot e ^ {- k \cdot (r + h) / 4} - \frac {(1 - R) \cdot h}{r + h} \cdot \left[ 1 - e ^ {- T \cdot (r + h)} \right] (44) \\ = \left[ \frac {c / 4}{e ^ {(r + h) / 4} - 1} - \frac {(1 - R) \cdot h}{r + h} \right] \cdot \left[ 1 - e ^ {- T \cdot (r + h)} \right] (45) \\ \simeq \left[ \frac {c - (1 - R) \cdot h}{r + h} \right] \cdot \left[ 1 - e ^ {- T \cdot (r + h)} \right]. (46) \\ \end{array}
$$

CDS valuation surface (5% flat interest rates, 5% coupon)  

<table><tr><td></td><td>Hazard Rate</td><td colspan="8">Credit Default Swap with 5% coupon and 5Y maturity</td></tr><tr><td>Recovery Rate</td><td>0%</td><td>2%</td><td>4%</td><td>6%</td><td>8%</td><td>10%</td><td>12%</td><td>14%</td><td>16%</td></tr><tr><td>20%</td><td>22.1%</td><td>14.3%</td><td>7.2%</td><td>0.8%</td><td>-5.1%</td><td>-10.6%</td><td>-15.5%</td><td>-20.0%</td><td>-24.1%</td></tr><tr><td>25%</td><td>22.1%</td><td>14.8%</td><td>8.1%</td><td>1.9%</td><td>-3.7%</td><td>-8.8%</td><td>-13.5%</td><td>-17.8%</td><td>-21.7%</td></tr><tr><td>30%</td><td>22.1%</td><td>15.2%</td><td>8.9%</td><td>3.1%</td><td>-2.2%</td><td>-7.0%</td><td>-11.5%</td><td>-15.5%</td><td>-19.2%</td></tr><tr><td>35%</td><td>22.1%</td><td>15.6%</td><td>9.7%</td><td>4.2%</td><td>-0.7%</td><td>-5.3%</td><td>-9.4%</td><td>-13.2%</td><td>-16.7%</td></tr><tr><td>40%</td><td>22.1%</td><td>16.0%</td><td>10.5%</td><td>5.4%</td><td>0.7%</td><td>-3.5%</td><td>-7.4%</td><td>-11.0%</td><td>-14.2%</td></tr><tr><td>45%</td><td>22.1%</td><td>16.5%</td><td>11.3%</td><td>6.5%</td><td>2.2%</td><td>-1.8%</td><td>-5.4%</td><td>-8.7%</td><td>-11.8%</td></tr><tr><td>50%</td><td>22.1%</td><td>16.9%</td><td>12.1%</td><td>7.7%</td><td>3.7%</td><td>0.0%</td><td>-3.4%</td><td>-6.5%</td><td>-9.3%</td></tr><tr><td>55%</td><td>22.1%</td><td>17.3%</td><td>12.9%</td><td>8.8%</td><td>5.1%</td><td>1.8%</td><td>-1.3%</td><td>-4.2%</td><td>-6.8%</td></tr><tr><td>60%</td><td>22.1%</td><td>17.7%</td><td>13.7%</td><td>10.0%</td><td>6.6%</td><td>3.5%</td><td>0.7%</td><td>-1.9%</td><td>-4.3%</td></tr></table>

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/3aa2fe5a8e6eeb25282f3782f8929a9baa1042d495762f84fbba56afafd3dcf4.jpg)  
CDS valuation

# ISDA CDS "curve shape" model

- Uses reference ISDA SNAC discount curve, flat recovery and piece-wise constant hazard rate  
- Calibrate piece-wise flat hazard rate curve using sequential "Bootstrapping" over CDS maturities  
Standard CDS maturities:

1Y, 2Y, 3Y, 5Y, 7Y and 10Y

- ISDA SNAC swap/discount curve definition:
- Curve calibrated to 3M LIBOR until Oct 2022  
- Curve calibrated to 3M SOFR after Oct 2022

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/1fe1f89e57cabb40c7449e1bd42be4c55d70b329af1421af7c3931bf0f6c6e9d.jpg)  
Corporate Bond Cashflows with Default Events and Call Option

# Bond pricing in the hazard rate model

- Fixed Leg valuation:
- risky semi-annual coupons c at times  $\{T_{i}\}_{i = 1}^{n}$  and  
principal payment at maturity  $T = T_{n}$

$$
\begin{array}{l} P V _ {B o n d \_ F L} (t) = \sum_ {i = 1} ^ {n} c \cdot \Delta T _ {i} \cdot D F (t, T _ {i}) \cdot S P (t, T _ {i}) \\ + D F (t, T _ {n}) \cdot S P (t, T _ {n}) \tag {47} \\ \end{array}
$$

- Default Leg valuation: bond pays recovery value  $R_{i}$  at default time  $\tau \in [T_{i - 1}, T_{i}]$ , if issuer defaults before maturity  $T$

$$
\begin{array}{l} P V _ {B o n d \_ D L} (t) = \int_ {t} ^ {T} R _ {s} \cdot h (t, s) \cdot D F (t, s) \cdot S P (t, s) \cdot d s \\ \simeq \sum_ {i = 1} ^ {n} R _ {i} \cdot h (t, T _ {i}) \cdot \Delta T _ {i} \cdot D F (t, T _ {i}) \cdot S P (t, T _ {i}) \tag {48} \\ \end{array}
$$

Bond valuation formula (combined fixed and default legs)

$$
P V _ {B o n d} (t) = P V _ {B o n d \_ F L} (t) + P V _ {B o n d \_ D L} (t) \tag {49}
$$

$$
\begin{array}{l} = \sum_ {i = 1} ^ {n} c \cdot \Delta T _ {i} \cdot D F (t, T _ {i}) \cdot S P (t, T _ {i}) + D F (t, T _ {n}) \cdot S P (t, T _ {n}) \\ + \int_ {t} ^ {T} R _ {s} \cdot h (t, s) \cdot D F (t, s) \cdot S P (t, s) \cdot d s (50) \\ \simeq \sum_ {i = 1} ^ {n} \left[ c + R _ {i} \cdot h (t, T _ {i}) \right] \cdot \Delta T _ {i} \cdot D F (t, T _ {i}) \cdot S P (t, T _ {i}) \\ + D F (t, T _ {n}) \cdot S P (t, T _ {n}) (51) \\ \end{array}
$$

Simple hazard rate bond pricing formula (flat parameters)

$$
P V _ {\text {B o n d}} (c, r, h, R) = \tag {52}
$$

$$
\begin{array}{l} = \sum_ {k = 1} ^ {2 T} \frac {c}{2} \cdot e ^ {- k \cdot (r + h) / 2} + e ^ {- T \cdot (r + h)} + \frac {R \cdot h}{r + h} \cdot \left[ 1 - e ^ {- T \cdot (r + h)} \right] (53) \\ = 1 + \left[ \frac {\frac {c}{2} - \left(e ^ {\frac {r + h}{2}} - 1\right)}{e ^ {\frac {r + h}{2}} - 1} + \frac {R \cdot h}{r + h} \right] \cdot \left[ 1 - e ^ {- T \cdot (r + h)} \right] (54) \\ \simeq 1 + \left[ \frac {c - r - (1 - R) \cdot h}{r + h} \right] \cdot \left[ 1 - e ^ {- T \cdot (r + h)} \right]. (55) \\ \end{array}
$$

Bond valuation surface using hazard rate model  

<table><tr><td></td><td>Hazard Rate</td><td colspan="8">Fixed rate bond with 15Y maturity, 7% coupon and 5% interest rates</td></tr><tr><td>Recovery Rate</td><td>0%</td><td>2%</td><td>4%</td><td>6%</td><td>8%</td><td>10%</td><td>12%</td><td>14%</td><td>16%</td></tr><tr><td>20%</td><td>121</td><td>104</td><td>90</td><td>79</td><td>71</td><td>64</td><td>59</td><td>54</td><td>51</td></tr><tr><td>25%</td><td>121</td><td>105</td><td>92</td><td>82</td><td>74</td><td>67</td><td>62</td><td>58</td><td>54</td></tr><tr><td>30%</td><td>121</td><td>106</td><td>93</td><td>84</td><td>76</td><td>70</td><td>65</td><td>61</td><td>58</td></tr><tr><td>35%</td><td>121</td><td>107</td><td>95</td><td>86</td><td>79</td><td>73</td><td>69</td><td>65</td><td>62</td></tr><tr><td>40%</td><td>121</td><td>107</td><td>97</td><td>88</td><td>82</td><td>76</td><td>72</td><td>68</td><td>65</td></tr><tr><td>45%</td><td>121</td><td>108</td><td>98</td><td>90</td><td>84</td><td>79</td><td>75</td><td>72</td><td>69</td></tr><tr><td>50%</td><td>121</td><td>109</td><td>100</td><td>93</td><td>87</td><td>82</td><td>78</td><td>75</td><td>73</td></tr><tr><td>55%</td><td>121</td><td>110</td><td>102</td><td>95</td><td>89</td><td>85</td><td>82</td><td>79</td><td>76</td></tr><tr><td>60%</td><td>121</td><td>111</td><td>103</td><td>97</td><td>92</td><td>88</td><td>85</td><td>82</td><td>80</td></tr></table>

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/88f6ee9b797faf25f7b5a30ed5c58d6da04eb7e7e2e3742a8255e0257a69d5de.jpg)  
Bond valuation using hazard rate model

Hazard rate vs yield/spread models (flat parameters)

Bond valuation in flat "yield/spread" model:

$$
P V _ {B o n d} (c, r, s) \simeq 1 + \left[ \frac {c - r - s}{r + s} \right] \cdot \left[ 1 - e ^ {- T \cdot (r + s)} \right]. \tag {56}
$$

Bond valuation in flat "hazard rate" model:

$$
P V _ {B o n d} (c, r, h, R) \simeq 1 + \left[ \frac {c - r - (1 - R) \cdot h}{r + h} \right] \cdot \left[ 1 - e ^ {- T \cdot (r + h)} \right]. \tag {57}
$$

- Yield/spread model is "simple" case of hazard rate model for

$$
R = 0, \quad s = h. \tag {58}
$$

Bond pricing in yield model vs hazard rate model

Bond trading at  $100\%$  "par" price in hazard rate model:

$$
P V = 1 \Longleftrightarrow c = r + (1 - R) \cdot h. \tag {59}
$$

Bond trading at  $100\%$  "par" price in yield/spread model:

$$
P V = 1 \Longleftrightarrow c = y = r + s \tag {60}
$$

Model translations:

$$
y = c = r + (1 - R) \cdot h, \tag {61}
$$

$$
s = (1 - R) \cdot h. \tag {62}
$$

# Summary of Hazard Rate Model

- By construction, recovery rates R are increasing with seniority rank in the capital structure
- Preferred Equity  $\sim 0\%$  
- Subordinated  $\sim 20\%$  
Senior Unsecured  $\sim 40\%$  
Senior Secured  $\sim 65\%$  
Senior Loan (First Lien)  $\sim 80\%$

- When using the hazard rate model, bonds of all seniorities are priced simultaneously
- using same survival probability/hazard rate curve (default time is common to all instruments)  
- … but different recovery rates.
- Consistent framework for identifying dislocations across maturities and seniority ranks!

# Credit curve shapes: VZ vs US Treasury yields

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/d41c44a2db81f0490dec02281049940b747fdf1a353697150713d7b5b68e9865.jpg)

# Calibration of the Hazard Rate Model

- Decide on a functional form for the Hazard Rate curve:
- piece-wise constant (or linear) curve on pivot maturities grid (e.g. 1Y, 2Y, 3Y, 5Y, 7Y, 10Y, 20Y and 30Y)  
or use smooth parametric curve shapes (e.g. Nelson-Siegel)

- Agree on issuer recovery rates by seniority ranks
- use historical averages:  $\sim 40\%$  recovery for CDS and senior unsecured bonds  
- … or calibrate recovery rates from market prices
- Select weights for instrument used as calibration inputs

usually weights are proportional to liquidity  
and inversely proportional to risk/DV01

- Run calibration process: sequential bootstrapping vs numerical minimization of residual errors

# Fair Value Prices and "Model Edges"

- Use jointly calibrated Hazard Rates model to compute model prices for arbitrary credit instruments:
- for instruments used as calibration inputs: bonds and CDS  
- … as well as instruments outside the calibration set: less liquid, off-the-run, new issues bonds, etc
- Once can think of the calibrated model price as the "Fair Value" price for an instrument  
- The difference between market and model/fair value prices (distance to fair value) is called "model edge"

# Example: Bond vs CDS basis arbitrage

- For any credit issuer, cash bonds and synthetic CDS are linked to same default event!  
- CDS usually used to hedge the credit default risk of a "long" risky bond position  
- Bond "intrinsic" prices (priced on CDS calibrated curve) and market prices "should be close"  
- Option Adjusted Spread/OAS = "market - intrinsic" bond price  
- OAS "dislocated" from zero  $\Longrightarrow$  opportunity for bond vs CDS basis arbitrage trade!

# Bond vs CDS Basis example: VZ Curve

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/66e31eb0be1380dde84cd0c4f16c3237fa35b84cfb31f7065b737385650b85cf.jpg)

# Q&A

- Hazard rate model formulas  
CDS pricing  
Bond pricing  
- Yield vs. Hazard Rate pricing models  
Risks and sensitivities  
Credit Calibration  
Model Prices and Edges

# CTC

# CREDIT MARKET LANDSCAPE

Lecture 3: Trading Insights with Market Practitioners David Herrmann, Principal PM, Chicago Trading Company

Financial Mathematics, UChicago, April 16 2024

CHICAGO TRADING COMPANY CHICAGO / NEW YORK / LONDON

# AGENDA

Corporate bond market overview (focus on Investment Grade)  

- Dealer/client connectivity  
- Future innovation and developments  
CTC's role in the corporate bond market ecosystem

# IG STATS

US Corp bond market  $\$ 13\mathrm{t}+$  ( $9\mathrm{t}+$  IG), and has ballooned over last decade due to rapid buildup of debt since GFC, driven by easy/expansionary monetary policies.  
OTC Marketplace  
Annual issuance of IG USD$ corporate bonds since 2008 \$1-2t  

- Decline in overall Investment Grade bond quality (BBB's ~45% of the market today, vs 35% pre GFC)  
- Extension of index duration (longer maturities and increased price sensitivity)  
- Use of ratings-based, passive investments has ballooned over the past decade (holdings by corporate bond ETFs have increased 10-15x over past decade)  
Bloomberg/Barclays corp index duration, and LQD spread per unit of duration:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/2c10f76a2fd8ffc0efb244a78c4e7f61fa1690b8e72490227c2155016546206b.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/460f067def8152c84308364b35eaec15b1b46aaf8073c1ed28e0f15fabafa702.jpg)

# INVESTMENT GRADE CORPORATE BOND MARKET PROFILE

Investment Grade

Debt Outstanding and Maturity Profile  
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/4ab89fffb26351ac7f73dff5a6abcf100e509ffc3c24a3a89c10c491fd5adafc.jpg)  
Source: Morgan Stanley Research, ICE

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/6d316d308aa9f897e3f9ec26debe2df2f85a6a09917dd6156c9cd14c13d18a1a.jpg)  
Source: Morgan Stanley Research, Bloomberg

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/f4cad95b945f4f43e036dd3a80a73a49d473b36838aec842539d00821f063449.jpg)  
Source: Morgan Stanley Research, Bloomberg, Federal Reserve Bank of New York

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/de65bd6b745ca2fa6a8ba0eeaf3f9fae27c6218a63c7a796cff95b2484fb0760.jpg)  
Note: Shows debt currently IG rated and still outstanding  
Source: Morgan Stanley Research, Fed Flow of Funds Note: Includes IG and HY bonds

# INVESTMENT GRADE NEW ISSUANCE TRENDS

Investment Grade

New Issuance

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/e50fd4454420335a21b67c0bcce2d51339ff4f598268c81c78d86256c61e5265.jpg)  
Source:Dealogic,Bloomberg,Morgan Stanley Research Note:Excludes tranches  $<$ 100MM

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/cbf8e0c0ecffe038acf2c02b9f548bd90ab4f544fe357ea0bf228d41daa13a71.jpg)  
Source: Morgan Stanley Research, Pitchbook LCD

<table><tr><td colspan="7">New Issuance Breakdown</td></tr><tr><td rowspan="2">$bn</td><td colspan="2">2023YTD</td><td colspan="2">2024YTD</td><td colspan="2">YoY</td></tr><tr><td></td><td>% of Total</td><td></td><td>% of Total</td><td>Absolute</td><td>Share</td></tr><tr><td>Sectors</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Financials</td><td>152.2</td><td>37%</td><td>234.2</td><td>42%</td><td>54%</td><td>+5.0%</td></tr><tr><td>Consumer Discretionary</td><td>27.0</td><td>7%</td><td>44.9</td><td>8%</td><td>66%</td><td>+1.5%</td></tr><tr><td>Consumer Staples</td><td>26.0</td><td>6%</td><td>24.7</td><td>4%</td><td>-5%</td><td>-1.9%</td></tr><tr><td>Energy</td><td>18.1</td><td>4%</td><td>14.5</td><td>3%</td><td>-20%</td><td>-1.8%</td></tr><tr><td>Materials</td><td>15.0</td><td>4%</td><td>18.9</td><td>3%</td><td>26%</td><td>-0.3%</td></tr><tr><td>Healthcare</td><td>45.7</td><td>11%</td><td>72.7</td><td>13%</td><td>59%</td><td>+1.9%</td></tr><tr><td>Industrials</td><td>26.1</td><td>6%</td><td>27.2</td><td>5%</td><td>4%</td><td>-1.5%</td></tr><tr><td>Information Technology</td><td>33.3</td><td>8%</td><td>33.6</td><td>6%</td><td>1%</td><td>-2.1%</td></tr><tr><td>Media</td><td>2.5</td><td>1%</td><td>1.5</td><td>0%</td><td>-40%</td><td>-0.3%</td></tr><tr><td>Telecom</td><td>7.0</td><td>2%</td><td>9.3</td><td>2%</td><td>33%</td><td>-0.0%</td></tr><tr><td>Real Estate</td><td>7.9</td><td>2%</td><td>13.9</td><td>2%</td><td>76%</td><td>+0.6%</td></tr><tr><td>Utilities</td><td>50.2</td><td>12%</td><td>60.3</td><td>11%</td><td>20%</td><td>-1.4%</td></tr><tr><td colspan="7">US / Yankee</td></tr><tr><td>US</td><td>264.1</td><td>64%</td><td>349.5</td><td>63%</td><td>32%</td><td>-1.5%</td></tr><tr><td>Yankee</td><td>146.8</td><td>36%</td><td>207.4</td><td>37%</td><td>41%</td><td>+1.5%</td></tr><tr><td colspan="7">Coupon</td></tr><tr><td>Fixed</td><td>402.2</td><td>98%</td><td>530.4</td><td>95%</td><td>32%</td><td>-2.6%</td></tr><tr><td>Float</td><td>6.4</td><td>2%</td><td>25.4</td><td>5%</td><td>296%</td><td>+3.0%</td></tr><tr><td>SOFR</td><td>6.3</td><td>98%</td><td>25.3</td><td>100%</td><td>304%</td><td>+1.9%</td></tr><tr><td colspan="7">Maturity Bucket</td></tr><tr><td>3yr &amp; In (1.5-3.5yr)</td><td>80.9</td><td>20%</td><td>98.4</td><td>18%</td><td>22%</td><td>-2.0%</td></tr><tr><td>5yr (3.5-6yr)</td><td>99.3</td><td>24%</td><td>144.1</td><td>26%</td><td>45%</td><td>+1.7%</td></tr><tr><td>7yr (6-5yr)</td><td>28.0</td><td>7%</td><td>39.8</td><td>7%</td><td>42%</td><td>+0.3%</td></tr><tr><td>10yr (8-12yr)</td><td>123.1</td><td>30%</td><td>175.0</td><td>31%</td><td>42%</td><td>+1.4%</td></tr><tr><td>20yr (12-22yr)</td><td>14.2</td><td>3%</td><td>6.0</td><td>1%</td><td>-58%</td><td>-2.4%</td></tr><tr><td>30yr (22-32yr)</td><td>49.4</td><td>12%</td><td>65.8</td><td>12%</td><td>33%</td><td>-0.2%</td></tr><tr><td>&gt;32yr (&gt;32yr)</td><td>9.0</td><td>2%</td><td>13.2</td><td>2%</td><td>46%</td><td>+0.2%</td></tr><tr><td>Perpetual</td><td>7.0</td><td>2%</td><td>14.8</td><td>3%</td><td>112%</td><td>+1.0%</td></tr><tr><td colspan="7">Credit Quality (Median of M/S/F)</td></tr><tr><td>AAA</td><td>2.0</td><td>0%</td><td>6.3</td><td>1%</td><td>215%</td><td>+0.6%</td></tr><tr><td>AA</td><td>28.0</td><td>7%</td><td>41.2</td><td>7%</td><td>47%</td><td>+0.6%</td></tr><tr><td>A</td><td>199.8</td><td>49%</td><td>259.6</td><td>47%</td><td>30%</td><td>-2.0%</td></tr><tr><td>BBB</td><td>157.2</td><td>38%</td><td>223.6</td><td>40%</td><td>42%</td><td>+1.9%</td></tr><tr><td>Split</td><td>10.5</td><td>3%</td><td>15.4</td><td>3%</td><td>46%</td><td>+0.2%</td></tr><tr><td>NR / Other</td><td>13.5</td><td>3%</td><td>10.9</td><td>2%</td><td>-19%</td><td>-1.3%</td></tr><tr><td colspan="7">ESG Labeled Bonds</td></tr><tr><td>All ESG Labeled</td><td>9.2</td><td>2%</td><td>17.6</td><td>3%</td><td>91%</td><td>+0.9%</td></tr><tr><td>Green</td><td>8.6</td><td>2%</td><td>16.6</td><td>3%</td><td>93%</td><td>+0.9%</td></tr><tr><td>Sustainability</td><td>0.6</td><td>0%</td><td>0.7</td><td>0%</td><td>17%</td><td>-0.0%</td></tr><tr><td>Social</td><td>0.0</td><td>0%</td><td>0.3</td><td>0%</td><td>-</td><td>+0.1%</td></tr><tr><td>Total</td><td>410.9</td><td></td><td>557.0</td><td></td><td>36%</td><td></td></tr></table>

Source: Dealogic, Morgan Stanley Research  
Note: Issuance data is as of 3/28/2024; excludes branches <\$100MM

# CREDIT VALUATIONS

Market Summary

Corporate Credit Spreads  
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/5cd746c5b2b7e8032de60f311332bb370a3c16f472ee878965914e17da49308c.jpg)  
Source: Morgan Stanley Research, Bloomberg

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/e81ec4e7dbe6a3a22b9051848c7c4c91cb4951d38da087b423b7e5e7bd749763.jpg)  
Source: Morgan Stanley Research, Bloomberg

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/a77e6ed658784e7e360f40466a73c3e412d6fbd7c9f6cda5392c723601997d10.jpg)  
Source: Morgan Stanley Research, Bloomberg, Moody's, NBER

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/5f628f49a1890f7990f132bd6307049b9e7b0b2d67ba7bd1657b18e774c1fa5c.jpg)  
Source: Morgan Stanley Research, Bloomberg, Moody's

# LIQUIDITY METRICS

Investment Grade

# Liquidity Metrics

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/d1df67d7bcf2d227ca1fd070e4c0027f5dfa859dca935a8ac341faceeb46fbf1.jpg)  
Source: Morgan Stanley Research, Bloomberg, FINRA Trace, ICE Bond Indices

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/1c5831eda0a7e13fafe9638613f64c97faa2e885766d9d447ad65572458b9a37.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/1b3d5293617252ebe8772b866fe06e96cb6ce3cd5db30aac63ad8d3379e61515.jpg)  
Source: Morgan Stanley Research, Bloomberg Note: 10 largest IG corporate-focused ETFs by total assets

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/d72f12ad9b4370fb4b271aae111fc0ecad347b15fce89600a80f8c126dbc5fd4.jpg)  
Source: Morgan Stanley Research, ICI

# IG MARKET DISTRIBUTION ACROSS SECTORS, RAITINGS, PRICES/SPREADS >> TREND TOWARDS LOWER AVERAGE QUALITY

Investment Grade

Market Distribution Across Sectors, Ratings, Prices, and Spreads

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/1e2d670308247d87a92a499641b151ab0a5bddf4464bf4ea1ab187f7c149fd6d.jpg)  
Source: Morgan Stanley Research, Bloomberg

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/94d7dc8837ff26808344f8bc3d7bc50163537d9f97e63506380de1a071a4b7cd.jpg)  
Source: Morgan Stanley Research, Bloomberg

% of Total IG Index in Each Price Bucket  
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/2d2cf12a30fa3452016e030530ae539a1323a03d25772a444fdddd01b98fb462.jpg)  
Source: Morgan Stanley Research, Bloomberg

% of Total IG Index in Each Spread Bucket  
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/49edfe4beda945ec605b681fc4e91f1f34fac5c9e8c7a9f6a436f4d87a09eccd.jpg)  
Source: Morgan Stanley Research, Bloomberg

# FOREIGN OWNERSHIP OF USD$ IG CREDIT ON THE RISE

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/16b030487474965a8eeeb4304778b95d43955d82df531e4ea136a1abaaba1aa6.jpg)  
Source: Morgan Stanley Research, Bloomberg

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/c259783e09bcd372951d55794810e59e47e51bee1e7568ef55ad25cb9e12f3f2.jpg)

# CORP BOND PARTICIPATION AND SELL-SIDE ORGANIZATION

- Variety of investment mandates driving flows in credit:
- Short duration: corporate cash management, mutual fund/money manager, P&C insurance, retail  
- Intermediate duration: P&C/Life insurance (domestic and overseas), mutual fund/money manager, retail  
- Long duration: Life insurance (domestic and overseas), pension, mutual fund
- Dealer community set up to provide liquidity in a duration-specific manner
- <5yr traders  
- > 5yr traders
- Investment mandates and line trader organization can drive inefficiencies and relative value opportunities in IG credit

# IG CURVE RELATIVE VALUE ANALYSIS

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/4543b95fe2e4f4d1511bf08762a70361d43c07b9c720570516e399a29161418e.jpg)

# CREDIT CONNECTIVITY (DEALER PERSPECTIVE)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/1b08988e183a71916ea8c1c05c1f29e090598bb9081ddbb567f93ff381aecac3.jpg)  
A web of connectivity in Corporate Credit

# MARKETAXESS OWNs ~90% OF E-TRADING FLOWS IN CREDIT

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/3a15a4673fd6661e1e91b874cdfe6fc5d0e8a6d300df2caaecaec326b264af3f.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/17d8078d8dd61cbbd9df7f4ffafe7f641c8c8c1874e127058eb7623516c39b82.jpg)

# DATA AGGREGATION, EXECUTION MANAGEMENT FOR BUYSIDE FUTURE INNOVATION

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/e365da7b4b8a1bb166352df562d500251e9362f325cad5411ef55757f7d73254.jpg)  
EMS GUI example: TradingScreen/TradeSmart

# CTC

# CREDIT MARKET LANDSCAPE

Lecture 3: Trading Insights with Market Practitioners David Herrmann, Principal PM, Chicago Trading Company

Financial Mathematics, UChicago, April 16 2024

CHICAGO TRADING COMPANY CHICAGO / NEW YORK / LONDON

# Credit Markets

# Session 4 Parametric Credit Models/ Quant Credit Trading

# Dr. Alex Popovici $^{1,2}$  April 23 2024

<sup>1</sup>Financial Mathematics, University of Chicago alex.popovici@uchicago.edu &

$^{2}$ Senior Quant Trader, Chicago Trading Company

# Recap: Parametric IR Models

- Smooth yield curve models  
- The Nelson-Siegel model for smooth yield curves  
- The Nelson-Siegel-Svensson extension

# 2 Parametric Credit Models

- What problem are we trying to solve?  
- Smooth Hazard Rate models

# 3 Calibration and Model Prices

- Calibration results in hazard rate space  
Model edges and alpha signals  
- Interpreting model results

# 4 Quant Credit Trading

Quantitative Trading Approach  

- Searching for alphas …  
- Risk models  
- Portfolio construction  
$\bullet$  Strategy Backtesting

# 5 Q&A

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/5bd07bcee9024cbe796f98f3641dd720cbf0b02029727067ca06316d33de3e52.jpg)  
US Treasury Yields as of 2023-05-05

# Motivation for "smooth" US Treasury curve

- Observation:  $\sim 380$  US cash treasury instruments (bills, notes and bonds) actively traded in the market  
- … quoted at different prices/yields, based on coupon, maturity and liquidity profile (~380 dimensional problem)  
- Question: can we compute model prices for all US Treasuries using one sparse parametric model (dimensionality reduction)?  
- Main idea: find a "smooth"/parametric spot/zero rates curve that best fits the market

# The Nelson-Siegel '87 model

- Idea: decompose the spot/zero yield curve  $y(T)$  into 3 "basis function shapes":
- Level:  $\theta_{1} \cdot 1$  
- Slope:  $\theta_{2} \cdot \frac{1 - e^{-T / \lambda}}{T / \lambda}$  
- Curvature/"hump":  $\theta_3 \cdot \left( \frac{1 - e^{-T / \lambda}}{T / \lambda} - e^{-T / \lambda} \right)$
- … and calibrate/control the yield curve shape via
- "basis loadings"  $\theta_{1},\theta_{2},\theta_{3}$  parameters and  
- "curve location"  $\lambda$  parameter

Svensson '94 extension

- added "second hump" shape:  $\theta_4 \cdot \left( \frac{1 - e^{-T / \lambda_2}}{T / \lambda_2} - e^{-T / \lambda_2} \right)$

# Nelson-Siegel basis functions

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/2aa2fa22f835ea8dafef0ff14ef8032ab92935e1e48dcf57c462763535b0fb2c.jpg)  
Nelson-Siegel basis functions

# Nelson-Siegel calibration (US Treasuries on 2023-05-05)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/2e0e765b6973d4cc8e55e8fdec46c782994d8156c5801ba7c51ba135417cab2d.jpg)

# Nelson-Siegel-Svensson basis functions

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/b84218fd0b90f97d493512b371fb19fbeb4f4c60b3132ff321a364ed71021303.jpg)  
Nelson-Siegel-Svensson basis functions

# Nelson-Siegel-Svensson calibration (US Treasuries on 2023-05-05)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/1a5f923dcb31f2f6536c16e758180ad4fb859830f8f3779fe50c63414c5461b1.jpg)

# Verizon Yields vs Treasuries vs SOFR swaps on 2023-10-30

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/309e8df8d08413a8875aa6e3ecd0daa3886495f1a65bb72309188b4bbbbe9ea6.jpg)

# Verizon bond US Treasury G-Spreads on 2023-10-30

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/fedfc6cefb3db7e84de1fc68205a4e0be2c7bd09900c731da482d3dbf625de68.jpg)

# Verizon bond SOFR I-Spreads on 2023-10-30

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/ec9e9460bb754175f0634118da429a9064a0c75cb7468e0ccf630aa0395c2274.jpg)

# Motivation for "smooth" credit curves

- Verizon has about 60 actively traded USD cash corporate bonds  
- … quoted at different prices/yields/spreads, based on coupon, maturity and liquidity profile  
- Main idea: find a sparse parametric hazard rates curve model that best fits the market for VZ cash corporate bonds  
- Reminder: corporate spreads capture the credit default risk only (they "live" on the top of US Treasury or SOFR curve)!  
- Comment: corporate credit spread curves have "nice" curve shapes and should be "easier to model"

# Nelson-Siegel Yield calibration for Verizon bonds on 2023-10-30

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/c850b42838a3186ee4c665f20ef39d0fbf0ed8baec67f04c87a1bdb53ee6e8a2.jpg)

# Nelson-Siegel G-Spread calibration for Verizon on 2023-10-30

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/f84a07020bccf4bf05e49192abee71f845b93e38b468a722f22c315a9c450b7a.jpg)

Recap: pricing risky instruments (cash bonds and CDS)

- For a given issuer and seniority rank, prices for all risky instruments (with known specs) can be computed from  
- … the discount factor curve  $DF(0, T)$ ,  $T \geq t \geq 0$ , calibrated to risk-free rates market (TSY & SOFR) and  
- … the hazard rate curve  $h(t, T)$ ,  $T \geq t \geq 0$ .  
- Very useful to think of "average" hazard rates  $H(t, T)$

$$
H (t, T) = \frac {1}{T - t} \int_ {t} ^ {T} h (t, s) d s \tag {1}
$$

$$
S P (t, T) = \exp [ (t - T) \cdot H (t, T) ] \tag {2}
$$

Implementing a "smooth" credit risk model

- Main idea: use parametric form for average hazard rate curve as of time  $t$

$$
H (t, T) = H (t, T \mid \theta_ {t}) \tag {3}
$$

- Parameter vector  $\theta_t$  controls the "shape" (level, slope, convexity, etc) of the credit curve.  
- The implied parametric form for the survival probability curve is given by

$$
S P (t, T) = S P (t, T \mid \theta_ {t}) = \exp [ (t - T) \cdot H (t, T \mid \theta_ {t}) ] \tag {4}
$$

# Nelson-Siegel parametric hazard rate curve:

$$
\theta_ {1} = 3 \%, \theta_ {2} = - 1 \%, \theta_ {3} = - 0.1 \%, \lambda = 5
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/418f9a110bd89dfacbbd1fe3c624f7cf32dbcb3e3d7c78434e3c47b3e83804ae.jpg)  
Nelson-Siegel smooth hazard rate curve

# Nelson-Siegel parametric survival probability curve:

$$
\theta_ {1} = 3 \%, \theta_ {2} = - 1 \%, \theta_ {3} = - 0.1 \%, \lambda = 5
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/fb1a98bc5cf401ed727feb8af98639159655c7caa02214cc86c53df0a30034dd.jpg)  
Nelson-Siegel smooth survival probability curve

Implementation/calibration of smooth credit risk model

- For a given issuer and seniority rank, collect market prices for all bonds and CDS at time  $t$ .  
- Fora each instrument, determine calibration weights based on liquidity and riskiness, e.g.  $w_{i} = \frac{''LiqScore_{i}''}{DV01_{i}}$  
- Model calibration consists of minimizing the SSE ("Sum of Squared Errors") between model and market prices:

$$
S S E (t, \theta) := \sum_ {i = 1} ^ {N} w _ {i} \cdot \left| M a r k e t P r i c e _ {t} ^ {i} - M o d e l P r i c e _ {t} ^ {i} (\theta) \right| ^ {2}, \tag {5}
$$

$$
\theta_ {t} ^ {*} = \underset {\theta} {\operatorname {a r g m i n}} \{S S E (t, \theta) \} \tag {6}
$$

# Nelson-Siegel calibration: Verizon G-Spreads

Nelson-Siegel calibration in hazard rate space: Model vs Market G-Spreads  
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/c8c22d1251222a337bb4a7ec9ced4a0cc4c811ceaf6c27cf1efcceea14984be1.jpg)  
Time to maturity (years)

# Nelson-Siegel calibration: Verizon Yields

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/27bc9487d19a453e9c7b7fbe3e39dbe1a4d2ac4e6ec753ae567dc3577f8e6bb6.jpg)  
Nelson-Siegel calibration in hazard rate space: Model vs Market Yields

# Assessing model calibration results

- Differences between model and market prices are called "model edges"  
- "Model edges" can be converted from price into yield or spread space, by using DV01/sensitivities  
- Can we think of the calibrated model prices as "fair prices" for the given instruments, at least on a relative basis?  
- Is there an "economic interpretation" to our "fair prices" assumption above, outside of our model?

# Nelson-Siegel calibration: Verizon G-Spread edges

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/6168d8995b3a27eb336cf46435524c6f0ab8310ec2d0790edc745cc200e35373.jpg)  
Nelson-Siegel calibration in hazard rate space: G-Spread Edge

# Nelson-Siegel: edge time series for Verizon bond

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/1aebb2d17a0b534cbbc1f5eaf0df8928fc5d06eec903e68da86772b8a56e10cc.jpg)  
Nelson-Siegel example: G-Spread edge time series

# Visualizing smooth model curves

- Once the credit curve model is calibrated, we obtain
- the smooth Yield or G-Spread surfaces for the issuer (across coupon and maturities)  
- and model prices of any CDS or bond: existing or "new issue"
- Intuitive way to visualize the dynamics of curve shapes through time
- create hypothetical/synthetic bond instruments for standardized maturities: 2Y, 3Y, 5Y, 7Y, 10Y, 20Y and 20Y  
- issued at "par price": bond coupon = bond yield
- Plot yields and g-spreads time series

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/ab4b3a324bd0de7d050fe6f4dc666558ef4af4994475db7a41fcf6cf73908b21.jpg)  
Verizon "smooth"/model Yield surface

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/2c0194717c700c377bc3dc2aab573b421800544b252ed774309bac3fed352f0b.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/e1850cb1bb5dd3bc5e019e9f8887a2e62d6f9df79cec92d6185cc41f4885940b.jpg)  
Verizon "smooth"/model G-Spread surface

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/7e404f636c2ceaee10d5ea4114165999dd25af3dcb9dddebbd8813e0624a3b0f.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/ea09fb34ed50510c06ab3e1519775fce7196397c84fbc5420df3529012a90846.jpg)  
Verizon "smooth"/model I-Spread surface

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/0d1fd789b38c3ef8a40cbead9caafde7db966d37c3bf8b360436e57347c763c6.jpg)

# Time series of Verizon "smooth" credit curves

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/e8e0f5682280ceef60f4a24124e5588ae1a6b6a0b44fdb7b2e6ac70e4ebb10a9.jpg)  
Historical smooth "Par Price" curve shapes: G-Spreads on pivot maturities

# From model edges to trading strategies

- Assuming we do have the "fair price" of securities  
- can we construct a portfolio strategy (e.g. pairs trading) of "edge dislocated" instruments with an "above average" strategy PnL?  
- Is this a "pure arbitrage" or a "statistical arbitrage" strategy?  
- Is the strategy executable: liquidity, transaction costs, capacity, cost of financing, etc?  
- Can we validate via strategy simulation/backtesting?

# Credit Markets: transition from OTC to electronic trading

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/ce1d4fe74c0264855808a23c803502afc7e8e6d2ca0aadb028f3fe56fa399056.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/c7d0667f86a7064df73bf70df780b150d41b17ea1addbf8ba98460a93b8e2864.jpg)

# - Quant trading

- use technology + math + automation for investment decisions  
- little human interaction "at run-time"

# Methods

calibrate models to identify "edges"/alphas  

- evaluate strategy performance via backtesting  
- select optimal model parameters

# Goals

- maximizing alpha capture: PnL, Sharpe/Sortino ratios  
- while minimizing risk: low factor risks, limited portfolio draw-downs

# - Quant trading

- use technology + math + automation for investment decisions  
- little human interaction "at run-time"

# Methods

calibrate models to identify "edges"/alphas  

- evaluate strategy performance via backtesting  
- select optimal model parameters

# Goals

- maximizing alpha capture: PnL, Sharpe/Sortino ratios  
- while minimizing risk: low factor risks, limited portfolio draw-downs

# - Quant trading

- use technology + math + automation for investment decisions  
- little human interaction "at run-time"

# Methods

calibrate models to identify "edges"/alphas  

- evaluate strategy performance via backtesting  
- select optimal model parameters

# - Goals

- maximizing alpha capture: PnL, Sharpe/Sortino ratios  
- while minimizing risk: low factor risks, limited portfolio draw-downs

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/7effcc6a24663e57d32de9e6d4a2dffa668302e958def8dc9006bde41f7e0fed.jpg)  
IG Bond Market (~15K bonds): G-Spreads by TTM and liquidity

# "Fair" prices, market prices and edges

- use quant models to estimate "fair" value of securities  
- "edge"/"alpha" = temporary dislocations between fair and market prices  
- alpha raw metrics: current edge dislocation, estimated edge volatility  
- alpha convergence metrics: stationarity, mean-reversion speed and signal half-life

# Risk models

- Joint securities dynamics decomposed into
- factors risks  
- idiosyncratic risks
- Portfolio factor risks aggregated at portfolio level via "betas"/factor loadings  
- Knowledge of factor Co-Variance matrix & individual "idio" vols enables risk predictions on portfolio level

# Risk model: examples

Market observable risk factors

- Interest Rates: DV01, IR01  
- Credit Default: CS01, Gamma, Jump-To-Default  
- Liquidity

Cross-sectional regression models

- BARRA-style models  
- known factor loadings, regressed returns

Statistical risk factors

- PCA factor models

# Portfolio construction: ingredients

- Alpha signals  
- multiple edges can be "mixed" into aggregated edge  
- Risk model(s)  
- Transaction costs model  
- Portfolio constraints (notional and risk limits)  
- Numerical optimizer (linear-quadratic/convex optimization)

# Expected utility optimization formula

- Maximize total alpha capture,  
- penalize risk/variance and "re-balancing volume"  
- … while taking into account position and risk constraints  
- … and transaction costs

# Strategy Backtesting

- For a given set of model parameters, implement a simulator/back tester of the strategy Positions/PnL/Volume metrics on historical data  
- Run the strategy backtests on a (multi-dimensional) grid of the model parameter space  
- Analyze the results and decide the optimal model parameters, to be used in "production" trading  
- Adjust the production/optimal model parameters based on LIVE trading feedback, in order to maximize the strategy performance

# Strategy backtest example: 2D parameter grid search

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/63075510661ecaa53844040d78d562333a7801dd267dcb77ee7a4dc1383efe38.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/31d17e02696ec1fed323eb7b9f5594e757d839405067ee8c5d2b7df4ba9e83ef.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/6d8fe5abef1b252c6859910ee92862a670449d5f351f9251f25b2e1111f5a8e6.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/9d691298c2e04388e10d80b332b8a9c18b8bf1ed8124d361d874d1a317ad1481.jpg)

# Q&A

- Parametric yield curve models
- Recap: parametric interest rate models  
- Nelson-Siegel models for smooth yield curves  
- Parametric models for smooth hazard rate curves

Quantitative Credit Trading

- Alpha and Risk models  
- Portfolio construction  
Strategy backtesting

# Credit Markets

# Session 5

# Structural Credit Models/

# Correlated Defaults

Dr. Alex Popovici<sup>1,2</sup>

April 30 2024

<sup>1</sup>Financial Mathematics, University of Chicago

alex.popovici@uchicago.edu

&

$^{2}$ Senior Quant Trader, Chicago Trading Company

Capital Structure

- Structural Approach to Credit Default Risk

2 Black-Scholes Model

- Recap: Black-Scholes

3 Merton Model

- Structural Credit Models  
Fair Value of Equity  
Fair Value of Risky Bonds  
Volatility Smiles

CS Strategies

Capital Structure Strategies  

- Hedging bonds against defaults

Correlated Defaults

Correlated defaults

CDOs

- Collateralized Debt Obligations  
Synthetic CDO Pricing / Base Correlations

Q&A

# Reminder: Capital structure of a corporation

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/1ca09daf3755da5b14ea3d493e466bfd68920ba193436d673334848c0d51dc60.jpg)  
Capital Structure: Liabilities + Equity = Assets

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/17bb16387cd3e789c2147f6386322a1ad99fb8a72ae9955da2851da3ec2435f6.jpg)

Credit Default triggered by non-payment of contractual cashflows.

In default, assets get liquidated to pay the liabilities, according to their rank in the capital structure.

Equity tranches (both common and preferred) usually get wiped out.

US historical average recovery rates, by seniority:

Subordinated:  $\sim 20\%$  
Senior Unsecured:  $\sim 40\%$  
Senior Secured:  $\sim 65\%$  

- First Lien:  $\sim 80\%$

Default events are usually correlated!

Recovery rates are "stochastic" and dependent on the credit cycle!

# Structural approach

- Main idea: model interaction between components of the capital structure of a corporation  
- Assets value of corporation modeled by stochastic process

$$
\left(A _ {t}\right) _ {t \geq 0}, A _ {t} > 0 \tag {1}
$$

- Volatility  $\sigma_{A}$  of assets assumed to be known  
Corporate Liabilities are known and denoted by

$$
\left(K _ {t}\right) _ {t \geq 0}, K _ {t} \geq 0 \tag {2}
$$

# Book Value of Equity and Leverage

- Leverage  $L$  of the corporate capital structure defined as

$$
L _ {t} = \frac {\text {L i a b i l i t i e s}}{\text {A s s e t s}} = \frac {K _ {t}}{A _ {t}}. \tag {3}
$$

- Leverage can be obtained from corporate balance sheet details  
- "Book Value of Equity" defined as "Assets - Liabilities"

$$
B V E _ {t} = A _ {t} - K _ {t} = A _ {t} \cdot \left(1 - L _ {t}\right) \tag {4}
$$

- Time horizon for credit default event given by maturity of liabilities

# Reminder: Black-Scholes '73 option pricing formulas

- Stock price process  $S_{t}$  follows geometric Brownian motion with constant drift  $r$  and volatility  $\sigma$  (under risk neutral measure)

$$
\frac {d S _ {t}}{S _ {t}} = r \cdot d t + \sigma \cdot d W _ {t}, S _ {0} > 0, \tag {5}
$$

$$
S _ {t} = S _ {0} \cdot \exp \left[ \left(r - \frac {1}{2} \sigma^ {2}\right) \cdot t + \sigma \cdot W _ {t} \right]. \tag {6}
$$

Stock log-price  $S_{t}$  is normally distributed:

$$
\log \left(S _ {t} / S _ {0}\right) \sim \mathcal {N} \left[ \left(r - \frac {1}{2} \sigma^ {2}\right) \cdot t, \sigma^ {2} \cdot t \right]. \tag {7}
$$

# Reminder: Black-Scholes '73 option pricing formulas

- Fair value price of European Call option with maturity  $T$  and strike  $K$  given by

$$
\begin{array}{l} \operatorname {C a l l} \left(S _ {0}, K, T, \sigma , r\right) = e ^ {- r \cdot T} \cdot \mathbb {E} \left[ \left(S _ {T} - K\right) ^ {+} \mid \mathcal {F} _ {0} \right] (8) \\ = S _ {0} \cdot \Phi (d _ {+}) - e ^ {- r \cdot T} \cdot K \cdot \Phi (d _ {-}), (9) \\ d _ {\pm} = \frac {\log \left(S _ {0} / K\right) + \left(r \pm \frac {1}{2} \sigma^ {2}\right) \cdot T}{\sigma \cdot \sqrt {T}} (10) \\ \end{array}
$$

# Intuition behind option pricing formulas

- use risk-neutral measure  $d\mathbb{P}$  and stock-forward measure  $d\mathbb{P}_{*} = \frac{S_{T}}{S_{0} \cdot e^{r \cdot T}} \cdot d\mathbb{P}$  (via Girsanov transform):

$$
\begin{array}{l} \operatorname {C a l l} \left(S _ {0}, K, T, \sigma , r\right) = e ^ {- r \cdot T} \cdot \mathbb {E} \left[ \left(S _ {T} - K\right) ^ {+} \mid \mathcal {F} _ {0} \right] (11) \\ = e ^ {- r \cdot T} \cdot \mathbb {E} \left[ (S _ {T} - K) \cdot \mathbb {I} _ {\{S _ {T} > K \}} | \mathcal {F} _ {0} \right] \\ = S _ {0} \cdot \mathbb {E} \left[ \frac {S _ {T}}{S _ {0} \cdot e ^ {r \cdot T}} \cdot \mathbb {I} _ {\{S _ {T} > K \}} | \mathcal {F} _ {0} \right] - e ^ {- r \cdot T} \cdot K \cdot \mathbb {E} \left[ \mathbb {I} _ {\{S _ {T} > K \}} | \mathcal {F} _ {0} \right] \\ = S _ {0} \cdot \mathbb {P} _ {*} [ S _ {T} > K | \mathcal {F} _ {0} ] - e ^ {- r \cdot T} \cdot K \cdot \mathbb {P} [ S _ {T} > K | \mathcal {F} _ {0} ] (12) \\ = S _ {0} \cdot \Phi (d _ {+}) - e ^ {- r \cdot T} \cdot K \cdot \Phi (d _ {-}). (13) \\ \end{array}
$$

It's all about measuring the event  $\{S_T > K\}$  under  $\mathbb{P}$  and  $\mathbb{P}_{*}!$

Intuition behind option delta hedging

$$
\begin{array}{l} D e l t a C a l l \left(S _ {0}, K, T, \sigma , r, \right) (14) \\ = \frac {\partial}{\partial S _ {0}} \left\{e ^ {- r \cdot T} \cdot \mathbb {E} \left[ (S _ {T} - K) ^ {+} | \mathcal {F} _ {0} \right] \right\} \\ = e ^ {- r \cdot T} \cdot \mathbb {E} \left[ \frac {\partial}{\partial S _ {0}} (S _ {T} - K) ^ {+} | \mathcal {F} _ {0} \right] \\ = e ^ {- r \cdot T} \cdot \mathbb {E} \left[ \frac {S _ {T}}{S _ {0}} \cdot \mathbb {I} _ {\{S _ {T} > K \}} | \mathcal {F} _ {0} \right] \\ = \mathbb {P} _ {*} [ S _ {T} > K | \mathcal {F} _ {0} ] (15) \\ = \Phi (d _ {+}). (16) \\ \end{array}
$$

# Recovering the market implied distribution of  $S_{T}$

- The market implied (model independent) cumulative distribution function  $\mathbb{P}\left[S_T \leq K|\mathcal{F}_0\right]$  can be obtained from option prices across different strike levels  $K$ :

$$
\begin{array}{l} \frac {C a l l \left(S _ {0} , K + \Delta K , \ldots\right) - C a l l \left(S _ {0} , K , \ldots\right)}{\Delta K} \\ \cong \frac {\partial}{\partial K} C a I I (S _ {0}, K, \dots) \\ = \frac {\partial}{\partial K} \left\{e ^ {- r \cdot T} \cdot \mathbb {E} \left[ (S _ {T} - K) ^ {+} | \mathcal {F} _ {0} \right] \right\} \\ = e ^ {- r \cdot T} \cdot \mathbb {E} \left[ \mathbb {I} _ {\{S _ {T} \leq K \}} | \mathcal {F} _ {0} \right] \\ = e ^ {- r \cdot T} \cdot \mathbb {P} [ S _ {T} \leq K | \mathcal {F} _ {0} ] \tag {17} \\ \end{array}
$$

- Is the market implied distribution of  $S_T$  log-normal with constant volatility  $\sigma$ ? Not really …

# Structural Credit Default Model: Merton '74 extension

- At time horizon  $T$ , the firm has the contractual obligation to liquidate the assets and repay the fixed liabilities  $K_{T} = K$  
No refinancing of debt is allowed!  
- Credit default triggered if value of assets  $A_{T}$  is below liabilities  $K$  ("Book Value of Equity"  $< 0$ ) at time horizon  $T$  
Equity investors have limited liability, so their payout at  $T$  is EquityPayout  $= (BVE_{T})^{+} = (A_{T} - K)^{+}$  (18)  
- Bond investors take over the assets in case of default, their payout at  $T$  is

$$
B o n d P a y o u t = \min  (K, A _ {T}) = A _ {T} - (A _ {T} - K) ^ {+} \tag {19}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/1452bedb9a925ca4b15ea80f4502671b9d1dea120046b08856f331337bf17c50.jpg)  
Possible paths of asset values relative to liabilities

# Credit default event

- Constant interest rates  $r$  
- Constant asset volatility  $\sigma_{A}$  
- Asset value process  $A_{t}$  follows a geometric Brownian motion with drift (under risk neutral measure)

$$
\frac {d A _ {t}}{A _ {t}} = r \cdot d t + \sigma_ {A} \cdot d W _ {t}, A _ {0} > 0 \tag {20}
$$

$$
A _ {t} = A _ {0} \cdot \exp \left[ \left(r - \frac {1}{2} \sigma_ {A} ^ {2}\right) \cdot t + \sigma_ {A} \cdot W _ {t} \right] \tag {21}
$$

- Default time  $\tau$  is discrete and given by

$$
\tau = \left\{ \begin{array}{l l} T, & A _ {T} <   K \\ \infty , & A _ {T} \geq K \end{array} \right. \tag {22}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/de08bd40deef077ae9d46f3d9d7cc9e15da42fb4c4179266054129652c7c3c7a.jpg)  
Equity value as a function of assets and liabilities

# Equity Fair Value

- Fair Value of equity computed from the equity payout function  
- … via Black-Scholes-Merton risk-neutral valuation formula

$$
\begin{array}{l} E _ {0} = e ^ {- r \cdot T} \cdot \mathbb {E} \left[ (A _ {T} - K) ^ {+} \mid \mathcal {F} _ {0} \right] (23) \\ = C a l l \left(A _ {0}, K, T, \sigma_ {A}, r, \right.) \\ = A _ {0} \cdot \Phi (d _ {+}) - e ^ {- r \cdot T} \cdot K \cdot \Phi (d _ {-}), \\ d _ {\pm} = \frac {- \log (L _ {0}) + (r \pm \frac {1}{2} \sigma_ {A} ^ {2}) \cdot T}{\sigma_ {A} \cdot \sqrt {T}} (24) \\ \end{array}
$$

# Equity Fair Value surface

Equity Fair Value (Asset = 1, T = 5, r = 4%)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/260732b6edc1a85a7c1322d8eb4f6b28272ad53f0bcad79dcd9d15a6c7b471c5.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/2b0efa8e029c7785bfcfa887d320c265c15047a3d8652ed6ca596849520ca738.jpg)

# Fair value of risky bond / risky liabilities

- Computed from risky bond payoff function:

$$
\begin{array}{l} B _ {0} = e ^ {- r \cdot T} \cdot \mathbb {E} [ \min  (K, A _ {T}) | \mathcal {F} _ {0} ] \tag {25} \\ = e ^ {- r \cdot T} \cdot \mathbb {E} \left[ A _ {T} - (A _ {T} - K) ^ {+} | \mathcal {F} _ {0} \right] \\ = A _ {0} - \left[ A _ {0} \cdot \Phi (d _ {+}) - e ^ {- r \cdot T} \cdot K \cdot \Phi (d _ {-}) \right] \\ = A _ {0} \cdot \Phi (- d _ {+}) + e ^ {- r \cdot T} \cdot K \cdot \Phi (d _ {-}). \\ \end{array}
$$

- Arbitrage relationship holds (Modigliani-Miller theorem):

$$
A _ {0} = B _ {0} + E _ {0}. \tag {26}
$$

# Risky Bond Fair Value

Risky Bond Fair Value (Asset = 1, T = 5, r = 4%)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/a115b25c0c29f2ed209ba8463fced272a81ed606307fd155c4a46ab968a15853.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/6ce57a9cf2ea5d645dc7c7d82e89f787f09c28298b5f2203a9c850b3609883de.jpg)

# Survival and default probabilities for time horizon  $T$

- Survival Probability computed as

$$
\begin{array}{l} S P (0, T) = \mathbb {P} [ \tau > T | \mathcal {F} _ {0} ] \tag {27} \\ = \mathbb {P} \left[ A _ {T} > K | \mathcal {F} _ {0} \right] \\ = \Phi (d _ {-}). \\ \end{array}
$$

- Default Probability computed as

$$
\begin{array}{l} D P (0, T) = 1 - S P (0, T) \tag {28} \\ = 1 - \Phi (d _ {-}) \\ = \Phi (- d _ {-}). \\ \end{array}
$$

Hazard Rates and "Distance to Default"

- Flat Hazard Rate computed as

$$
h = - \frac {1}{T} \cdot \log (S P (0, T)) = - \frac {1}{T} \cdot \log (\Phi (d _ {-})) \tag {29}
$$

- Using KMV "Distance to Default"/DD notation:

$$
D D = d _ {-} \tag {30}
$$

$$
D P (0, T) = \Phi (- D D), \tag {31}
$$

$$
S P (0, T) = \Phi (D D) \tag {32}
$$

# Risky bond yield and credit spread

- Yield of risky bond is given by

$$
y _ {0} = - \frac {\log (B _ {0} / K)}{T} \tag {33}
$$

$$
= - \frac {1}{T} \cdot \log \left(L _ {0} ^ {- 1} \cdot \Phi (- d _ {+}) + e ^ {- r \cdot T} \cdot \Phi (d _ {-})\right)
$$

- Credit spread of risky bond ("yield - risk free rate")

$$
\begin{array}{l} s _ {0} = y _ {0} - r = - \frac {1}{T} \cdot \log \left(B _ {0} / K\right) - r \tag {34} \\ = - \frac {1}{T} \cdot \log \left(e ^ {r \cdot T} \cdot L _ {0} ^ {- 1} \cdot \Phi (- d _ {+}) + \Phi (d _ {-})\right) \\ \end{array}
$$

# Risky Bond Yields

Risky Bond Yield (Asset = 1, T = 5, r = 4%)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/3f4a2249ad1caab81aafc668b93771d0b4d51412a04fc62d76169bfa641a69ba.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/b6dec989bb57c988d7e7cf12794ad8ef2749391ef94804c329539c182759ed36.jpg)

Expected recovery rate given default  $R$

$$
\begin{array}{l} R = \mathbb {E} \left[ \frac {A _ {T}}{K} \mid A _ {T} <   K, \mathcal {F} _ {0} \right] \tag {35} \\ = \frac {\mathbb {E} \left[ \frac {A _ {T}}{K} \cdot \mathbb {I} _ {\{A _ {T} <   K \}} | \mathcal {F} _ {0} \right]}{\mathbb {P} \left[ A _ {T} <   K | \mathcal {F} _ {0} \right]} \\ = \frac {A _ {0}}{K} \cdot \frac {\Phi (- d _ {+})}{\Phi (- d _ {-})} \\ \end{array}
$$

# Expected Recovery on Default

Risky Bond Expected Recovery (Asset = 1, T = 5, r = 4%)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/31beaa5615df8bd28459e58cd7a211acda08ff937a2a4df64b551f0bf182f058.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/eda0d539cc5e160cbdf836bf91a1266938f98fdf0546574f3a9fed18dd7b797f.jpg)

# Equity vs. Assets volatilities

- We apply Ito's lemma to the equity price:

$$
\begin{array}{l} \frac {d E _ {t}}{E _ {t}} = \frac {1}{E _ {t}} \cdot \frac {\partial E}{\partial A} (A _ {t}, K) \cdot d A _ {t} + \dots \tag {36} \\ = \frac {A _ {t}}{E _ {t}} \cdot D e l t a C a l l \left(A _ {t}, K\right) \cdot \sigma_ {A} \cdot d W _ {t} + \dots \\ = \frac {A _ {t}}{E _ {t}} \cdot \Phi (d _ {+}) \cdot \sigma_ {A} \cdot d W _ {t} + \dots \\ \end{array}
$$

- Connection between equity vol  $\sigma_{E}$  and assets vol  $\sigma_{A}$  ( $t = 0$ ):

$$
\sigma_ {E} = \frac {A _ {0}}{E _ {0}} \cdot \Phi (d _ {+}) \cdot \sigma_ {A}. \tag {37}
$$

- Equity volatility  $\sigma_{E}$  is stochastic, and inversely correlated to equity price changes!

# Equity Volatility surface

Equity Volatility (Asset = 1, T = 5, r = 4%)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/f3ba3db31a330bbcd07a6c16a9690ad9f494b913991c3495df403ccc515e56a0.jpg)

# Leverage effect for equity volatilities

- Intuitive explanation: when asset prices change, equity price and equity volatility move in opposite directions

$$
\frac {\partial E}{\partial A} = D e l t a C a l l > 0, \tag {38}
$$

$$
\frac {\partial \sigma_ {E}}{\partial A} \approx - \frac {L \cdot A}{E ^ {2}} \cdot D e l t a C a l l \cdot \sigma_ {A} <   0 \tag {39}
$$

- Correlation between equity price and equity vol changes is negative and dependent on company leverage parameter  $L$  
Zero correlation case obtain only for un-leveraged companies only (when Assets = Equity)

# Equity Option Valuation

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/0e8106d68875652d0047af7656e946bf7d471cb6e576a40f5668b14b488a0dcf.jpg)  
Fair Value of Equity Call Option in Structural Credit Model

Fair Value of Equity Call Option (strike  $k$  and maturity  $t < T$ )

Fair Value of Equity

$$
\begin{array}{l} E _ {t} = \operatorname {E q u i t y V a l u e} (T) = e ^ {- r \cdot (T - t)} \cdot \mathbb {E} \left[ \left(A _ {T} - K\right) ^ {+} \mid \mathcal {F} _ {t} \right] \tag {40} \\ = C a l l \left(A _ {t}, K, T - t, \sigma_ {A}, r\right). \\ \end{array}
$$

- Fair Value of Equity Call derived from payoff function:

$$
\begin{array}{l} E q u i t y C a l l \left(E _ {0}, k, t\right) = e ^ {- r \cdot t} \cdot \mathbb {E} \left[ \left(E _ {t} - k\right) ^ {+} \mid \mathcal {F} _ {0} \right] \tag {41} \\ = e ^ {- r \cdot t} \cdot \mathbb {E} \left[ \left(C a I I (A _ {t}, K, T - t, \sigma_ {A}, r,) - k\right) ^ {+} | \mathcal {F} _ {0} \right]. \\ \end{array}
$$

- Value obtained by 1-dimensional integration of the call function vs the log-normal density of  $A_{t}$ .

# Implied Volatility Surfaces

- Classic Black-Scholes model assumes constant stock price volatility (flat across strikes and maturities)  
- Implied Volatility Surfaces observed in the market are not flat, they do exhibit "vol skew" + "vol smile"  
- Equity volatilities in the Capital Structure model are stochastic and generate implied vol surfaces similar to ones observed in the market  
This is due to:

- the equity volatility leverage effect (equity down  $\Rightarrow$  vol up) and  
- the "fat tails" of the equity price distribution (caused by non-zero company leverage)

# Equity Volatility surface in Structural Credit Model

Equity Volatility Surface (Asset = 1, T = 5, r = 4%)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/9eee35200ce5116dcbb5a2e32ff4c326ba60b6840613525d660ef002f38a1182.jpg)

# Modern Capital Structure Arbitrage models

# - Inputs

Term structure of risk-free interest rates  

- Detailed assets and (term structure of) liabilities information from the balance sheet of a company  
Equity market prices  
Equity volatility surface

# - Outputs

- Implied Asset value levels and volatilities (via leverage)  
- Model implied probabilities of default to various maturities / "Distance to Default" metrics  
- Implied prices for CDS and risky corporate bonds (hazard rate curve)  
- Implied prices for convertible bonds

# Inverse Capital Structure Arbitrage models

# - Inputs

- Term structure of risk-free interest rates  
- Detailed assets and (term structure of) liabilities information from the balance sheet of a company  
Equity market prices  
- Market prices for CDS and risky corporate bonds (hazard rate curve)

# - Outputs

- Implied Asset value levels and volatilities (via leverage)  
Credit Implied equity volatility surface / model implied prices for all equity options

# Capital Structure Arbitrage strategy: main idea

- Identify dislocations across the capital structure of a company  
- Monetize dislocations via credit vs equity vs options "Capital Structure Arbitrage" trades  
Trade examples

- Risky bonds & CDS vs equity  
- Risky bond & CDS vs equity options  
- Convertible bonds vs equity & equity options

# How can we hedge the AMC 2025 bond against default?

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/28d148f69ea96f0ffb226145e6415183ec39d66bb0c9b479cc2ae5721bca13d2.jpg)

# AMC 2025 bond: Implied Volatility Surface

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/2174fef61eb839945dd8a71fdf193197be857babeb8a6f02b6ae54c28e78b175.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/8a21797861d2cd67c7b653118d83e0e28f5bf9bf5de18e9c1d85f387545adae9.jpg)  
AMC 2025 bond: recovering from distressed levels

# Capital Structure Arbitrage Strategy Example

Buy short-dated AMC 2025 bond with maturity T  

- Buy AMC out of the money Put option with strike  $k$  and maturity  $t$  close to  $T$  
- Positive/No Default Scenario PnL analysis
- bond price increases to 100  
- bond coupons collected until T  
- option price decreases to 0
- Negative/Default Scenario PnL analysis
- bond price drops to recovery value R  
- option price increases to k
- If equity and vol markets are dislocated from credit markets: we can construct an arbitrage portfolio, with positive PnL outcomes in both scenarios!

# Idiosyncratic vs. Systematic/Market risks

- Main idea: decompose the Gaussian risk factors  $W^{i}$  driving the company assets  $A^{i}$  into
- idiosyncratic risk  $Z_{i}$  (specific for company  $i$ ) and  
- systematic/market risk  $X$  (common to all companies)
- The portion of systematic/market factor risk in  $W_{t}^{i}$  (and  $A_{t}^{i}$ ) controlled via Gaussian correlation coefficient  $\rho_{i}$ :

$$
\operatorname {C o r r} \left(W _ {T} ^ {i}, X\right) = \rho_ {i} \in [ - 1, 1 ] \tag {42}
$$

$$
W _ {T} ^ {i} = \sqrt {T} \cdot \left(\sqrt {1 - \rho_ {i}} \cdot Z ^ {i} + \rho_ {i} \cdot X\right) \tag {43}
$$

$$
X, Z _ {i} \sim \mathcal {N} (0, 1), \quad X \perp Z _ {j}, \quad Z _ {i} \perp Z _ {j}, i \neq j \tag {44}
$$

# Assets cross-correlations: via common market factor

- Assets become explicitly dependent on the level of the common market factor  $X$ :

$$
A _ {T} ^ {i} = A _ {0} ^ {i} \cdot \exp \left[ \left(r - \frac {1}{2} \sigma_ {i} ^ {2}\right) \cdot T + \sigma_ {i} \cdot W _ {T} ^ {i} \right] \tag {45}
$$

$$
= A _ {0} ^ {i} \cdot \exp \left[ \left(r - \frac {1}{2} \sigma_ {i} ^ {2}\right) \cdot T + \sigma_ {i} \cdot \sqrt {T} \cdot \left(\sqrt {1 - \rho_ {i}} \cdot Z ^ {i} + \rho_ {i} \cdot X\right) \right] \tag {46}
$$

- Cross-correlations between assets  $A_T^i$  and  $A_T^j$  given by

$$
\mathbb {C} \operatorname {o r r} \left(A _ {T} ^ {i}, A _ {T} ^ {j}\right) = \rho_ {i} \cdot \rho_ {j}, \quad i \neq j \tag {47}
$$

- $A_T^i$  and  $A_T^j$  are independent, conditional on  $X$

# Survival probability formulas

- Unconditional survival probabilities  $p^i$ :

$$
\begin{array}{l} p ^ {i} = \mathbb {P} [ \tau_ {i} > T ] = \mathbb {P} [ A _ {T} ^ {i} > K _ {i} ] (48) \\ = \mathbb {P} \left[ \frac {W _ {T} ^ {i}}{\sqrt {T}} <   d _ {-} ^ {i} \right] = \Phi \left(d _ {-} ^ {i}\right), (49) \\ d _ {-} ^ {i} = \Phi^ {- 1} (p ^ {i}) (50) \\ \end{array}
$$

- Conditional survival probabilities  $p_x^i$

$$
\begin{array}{l} p _ {x} ^ {i} := \mathbb {P} [ \tau_ {i} > T | X = x ] = \mathbb {P} \left[ \frac {W _ {T} ^ {i}}{\sqrt {T}} <   d _ {-} ^ {i} | X = x \right] (51) \\ = \mathbb {P} \left[ \sqrt {1 - \rho_ {i}} \cdot Z ^ {i} + \rho_ {i} \cdot X <   d _ {-} ^ {i} | X = x \right] (52) \\ = \mathbb {P} \left[ Z ^ {i} <   \frac {d _ {-} ^ {i} - \rho_ {i} \cdot x}{\sqrt {1 - \rho_ {i} ^ {2}}} \right] = \Phi \left(\frac {d _ {-} ^ {i} - \rho_ {i} \cdot x}{\sqrt {1 - \rho_ {i} ^ {2}}}\right) (53) \\ \end{array}
$$

# Measuring joint credit defaults

- Conditional on  $X$ , default times  $\tau_{i}$  are independent, hence

$$
\mathbb {P} \left[ \tau_ {i} > T, \tau_ {j} > T \mid X = x \right] = p _ {x} ^ {i} \cdot p _ {x} ^ {j} \tag {54}
$$

- Joint credit survival/default probabilities  $(\varphi = \Phi')$

$$
\mathbb {P} \left[ \tau_ {i} > T, \tau_ {j} > T \right] \tag {55}
$$

$$
= \int_ {- \infty} ^ {\infty} \mathbb {P} \left[ \tau_ {i} > T, \tau_ {j} > T | X = x \right] \cdot \varphi (x) d x \tag {56}
$$

$$
= \int_ {- \infty} ^ {\infty} p _ {x} ^ {i} \cdot p _ {x} ^ {j} \cdot \varphi (x) d x \tag {57}
$$

$$
= \int_ {- \infty} ^ {\infty} \Phi \left(\frac {d _ {-} ^ {i} - \rho_ {i} \cdot x}{\sqrt {1 - \rho_ {i} ^ {2}}}\right) \cdot \Phi \left(\frac {d _ {-} ^ {j} - \rho_ {j} \cdot x}{\sqrt {1 - \rho_ {j} ^ {2}}}\right) \cdot \varphi (x) d x (5 8)
$$

# Pools of homogeneous credit issuers

- Simple case: we assume that the underlying pool consists of  $n$  homogeneous credit issuers, i.e. with identical:

notionals  $\frac{1}{n}$  

- "distance to default" coefficients  $d_{-}$ ,  
recovery rates  $R$  
market correlations  $\rho$

- The total pool loss  $L_{T}$  at time  $T$  is given by

$$
L _ {T} = \frac {(1 - R)}{n} \cdot \sum_ {i = 1} ^ {n} \mathbb {I} _ {\{\tau_ {i} \leq T \}} \tag {59}
$$

# Conditional credit events: "  $k$  out of  $n$  " defaults

- We are interested in counting the number of defaults in the pool, conditional on the market factor  $X$  
- Conditional default events are independent and Bernoulli distributed

$$
\left. \mathbb {I} _ {\{\tau_ {i} \leq T \}} \right\rvert   X = x \sim \text {B e r n o u l l i} (1 - p _ {x}) \tag {60}
$$

- Therefore, their sum follows the Binomial distribution

$$
\sum_ {i = 1} ^ {n} \mathbb {I} _ {\left\{\tau_ {i} \leq T \right\}} | X = x \sim \text {B i n o m i a l} (n, 1 - p _ {x}), \tag {61}
$$

$$
\mathbb {P} \left[ \sum_ {i = 1} ^ {n} \mathbb {I} _ {\{\tau_ {i} \leq T \}} = k | X = x \right] = \binom {n} {k} \cdot (1 - p _ {x}) ^ {k} \cdot p _ {x} ^ {n - k} \quad (6 2)
$$

Joint/correlated credit events: " $k$  out of  $n$ " defaults

- We are interested in counting the number of defaults in the pool, as well as the distribution of the pool loss  $L_{T}$  at  $T$

$$
\begin{array}{l} \mathbb {P} \left[ L _ {T} = k \cdot \frac {(1 - R)}{n} \right] = \mathbb {P} \left[ \sum_ {i = 1} ^ {n} \mathbb {I} _ {\{\tau_ {i} \leq T \}} = k \right] (63) \\ = \int_ {- \infty} ^ {\infty} \mathbb {P} \left[ \sum_ {i = 1} ^ {n} \mathbb {I} _ {\{\tau_ {i} \leq T \}} = k | X = x \right] \cdot \varphi (x) d x (64) \\ = \int_ {- \infty} ^ {\infty} \binom {n} {k} \cdot p _ {x} ^ {k} \cdot \left(1 - p _ {x}\right) ^ {n - k} \cdot \varphi (x) d x (65) \\ \end{array}
$$

- Therefore, in the homogeneous case, the pool loss distribution  $L_{T}$  can be computed explicitly  
- … and depends on the Gaussian correlation coefficient  $\rho$ .

Loss distribution  $L_{T}$  for general (non-homogeneous) pools:

Calibrate the "distance to default" coefficients  $d_{-}^{i}$  from market data (from survival probabilities to maturity  $T$ )  
Estimate the level of expected "Recovery Given Default" coefficients  $R_{j}$ , on a 1% discretization grid  
Estimate the correlation levels  $\rho_{i}$  of assets  $A^{i}$  with the systematic/market factor  $X$  

- Discretize the distribution of the market factor  $X$  on a grid  $\{x_{j}\}_{j=1..J}$  (also works for general, non-Gaussian  $X$ )  
$\bullet$  Compute the conditional distribution of  $L_{T}|x_{j}$  on a  $1 \%$  discretization grid, via numerical "convolution"  
Aggregate the distribution of  $L_{T}$  as a weighted sum of conditional distributions:  $\sum_{j} \mathbb{P}[X = x_{j}] \cdot L_{T}|x_{j}$

# What is a Collateralized Debt Obligation/CDO?

- A derivative/"structured" credit product linked to an underlying/collateral pool of risky assets  
- Example of underlying pool assets:

Corporate Bonds,  
Corporate Loans,  

- Mortgage backed securities/MBS,  
CDS, etc

- Underlying pool notional divided into tranches, corresponding to various level of risk (usually credit rated by rating agencies)  
- CDO Tranche cash-flows defined via from underlying pool cash-flows via structural subordination waterfall  
- CDO has contractual coupon  $c$  and maturity  $T$

# More details on CDO Tranches

Each CDO Tranche is characterized by an interval  $[a, d]$ :

- a is the attachment point of the tranche,  
$d$  is the detachment point of the tranche,  
- a and  $d$  are expressed in % of the underlying pool notional
- Cumulative portfolio cash-flows, both coupons and losses, are assigned into tranche cash-flows via "waterfall" logic  
- CDO fixed leg pays the contractual coupon  $c$  on the outstanding Tranche notional (adjusted for defaults)  
- Tranche attachment/detachment points are adjusted for realized defaults

# CDX IG Index Tranche Summary (CDX IG 5Y S41)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/2ea9a153467eccbf704d04724aed54fd9d1cfa7bb4bd74134bbe0e5facca864a.jpg)

# Synthetic CDX IG Index Tranches

- Uses CDX IG Index as underlying pool  
- Each tranche "behaves" like a CDS with dynamic face notional!  
Equity  $[0\%, 3\%]$ : highest level of risk (B), "first pool losses"  
- Mezzanine [3%, 7%], intermediate (BBB) risk  
Senior  $[7\%, 15\%]$ , senior (AA) level of risk  
- Super-Senior [15%, 100%], super-senior (AAA) level of risk  
Equity + Mezzanine + Senior + Super-Senior = Total Pool

Credit risk details for underlying pool instruments

- Synthetic pool: equally weighted basket of n CDS instruments, e.g. CDX IG index basket  
- Total notional of the pool normalized to 1, i.e. each CDS notional is  $\frac{1}{n}$  
- CDS issuer default times  $\tau_{i}, i = 1..n$  
- CDS issuer expected default recoveries  $R_{i}, i = 1..n$  
- Default Loss Given Default payments are

$$
L _ {i} = \frac {1}{n} \cdot \left(1 - R _ {i}\right), i = 1.. n \tag {66}
$$

# CDO Tranches: structural subordination "waterfall" logic

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/77e66150bfa718f30143e37c412fcff1d514bf124cc77cce62085a8ce38f3134.jpg)  
CDO Tranche: Default Cashflows

CDO "waterfall" logic for tranche default leg

- Cumulative losses in the pool at time  $t \in [0, T]$  given by

$$
L _ {t} = \frac {1}{n} \cdot \sum_ {i = 1} ^ {n} \left(1 - R _ {i}\right) \mathbb {I} _ {\left\{\tau_ {i} \leq t \right\}}, L _ {0} = 0 \tag {67}
$$

- Cumulative losses in the  $[a, d]$  tranche at time  $t \in [0, T]$

$$
L _ {t} ^ {[ a, d ]} = \left(L _ {t} - a\right) ^ {+} - \left(L _ {t} - d\right) ^ {+} = L _ {t} ^ {[ 0, d ]} - L _ {t} ^ {[ 0, a ]} \tag {68}
$$

- Notice that  $L_{t}^{[a,d]}, 0 \leq t \leq T$  is a discrete jump process paying the portfolio losses within the  $[a,d]$  tranche until maturity  $T$  
Maximum loss on  $[a, d]$  tranche is  $d - a$  (tranche "wipe-out")

# CDO "waterfall" logic for tranche premium leg

- Outstanding/non-defaulted  $[a, d]$  tranche notional at time  $t$

$$
N _ {t} ^ {[ a, d ]} = d - a - L _ {t} ^ {[ a, d ]} = N _ {t} ^ {[ 0, d ]} - N _ {t} ^ {[ 0, a ]} \tag {69}
$$

- Premium leg cash-flow payments for the  $[a, d]$  tranche occur on (quarterly) cash-flow times  $\{T_k\}$ ,  $k = 1..K$  
- … on the outstanding tranche notional  $N_{T_k}^{[a,d]}$  at time  $T_k$ :

$$
C _ {k} ^ {[ a, d ]} = c \cdot \Delta T _ {k} \cdot N _ {T _ {k}} ^ {[ a, d ]} = c \cdot \Delta T _ {k} \cdot \left(N _ {T _ {k}} ^ {[ 0, d ]} - N _ {T _ {k}} ^ {[ 0, a ]}\right) \tag {70}
$$

- Maximum premium leg payment on  $[a, d]$  tranche is  $c \cdot \Delta T_k \cdot (d - a)$ , minimum payment is 0 (tranche "wipe-out")

CDO  $[a, d]$  tranche pricing: premium leg

- Present value of premium/fixed leg is given by

$$
\begin{array}{l} P V _ {C D O \_ P L} (0) = \mathbb {E} \left[ \sum_ {k = 1} ^ {K} D F (0, T _ {k}) \cdot c \cdot \Delta T _ {k} \cdot N _ {T _ {k}} ^ {[ a, d ]} \right] (71) \\ = c \cdot \sum_ {k = 1} ^ {K} D F (0, T _ {k}) \cdot \Delta T _ {k} \cdot \mathbb {E} \left[ N _ {T _ {k}} ^ {[ a, d ]} \right] (72) \\ = c \cdot \sum_ {k = 1} ^ {K} D F (0, T _ {k}) \cdot \Delta T _ {k} \cdot \left(d - a - \mathbb {E} \left[ L _ {T _ {k}} ^ {[ a, d ]} \right]\right) (73) \\ \end{array}
$$

CDO  $[a, d]$  tranche pricing: default leg

- Present Value of tranche default leg

$$
P V _ {C D O \_ D L} (0) = \mathbb {E} \left[ \int_ {0} ^ {T} D F (0, t) \cdot d L _ {t} ^ {[ a, d ]} \right] \tag {74}
$$

$$
= \int_ {0} ^ {T} D F (0, t) \cdot d \mathbb {E} \left[ L _ {t} ^ {[ a, d ]} \right] \tag {75}
$$

$$
\simeq \sum_ {k = 1} ^ {K} D F (0, T _ {k}) \cdot \Delta T _ {k} \cdot \left(\mathbb {E} \left[ L _ {T _ {k}} ^ {[ a, d ]} \right] - \mathbb {E} \left[ L _ {T _ {k - 1}} ^ {[ a, d ]} \right]\right) \tag {76}
$$

- … using a numerical quadrature grid on (quarterly) premium payment times  $\{T_k\}$ ,  $k = 1..K$ .

CDO  $[a, d]$  tranche pricing

- Present Value and Par Spread of the  $[a, d]$  tranche

$$
P V _ {C D O} (0) = P V _ {C D O \_ P L} (0) - P V _ {C D O \_ D L} (0), \tag {77}
$$

$$
P a r S p r e a d _ {C D O} (0) = c \cdot \frac {P V _ {C D O \_ D L} (0)}{P V _ {C D O \_ P L} (0)} \tag {78}
$$

- In practice, we need to compute the "Expected Tranche Loss" at each premium payment time  $\{T_k\}$ ,  $k = 1..K$

$$
\mathbb {E} \left[ L _ {T _ {k - 1}} ^ {[ a, d ]} \right] = \mathbb {E} \left[ (L _ {T _ {k}} - a) ^ {+} \right] - \mathbb {E} \left[ (L _ {T _ {k}} - d) ^ {+} \right] \tag {79}
$$

- … which can be computed explicitly from the distribution of the pool loss  $L_{T_k}$

# Base correlation model for quoting CDO tranches

- Start with a pool of credit issuer and calibrate the "distance to default" coefficients  $d_{-}^{i}$  
- For a given Gaussian correlation coefficient  $\rho$ , one can consistently price all CDO equity tranches  
- Convert the market prices for mezzanine and senior tranches into "equity equivalent" tranches (tranche linearity)  
- Calibrate the "base" tranche correlations  $\rho_{i}$  matching the prices of "equity equivalent" tranches  
- The calibrated "base" correlations are used as market convention for quoting CDO tranches  
- Observation: the "base" correlation model for pricing CDOs is not consistent for mezzanine and senior tranches!

# CDOs in the GFC (2008-2009) financial crisis

- During the GFC (2008-2009) financial crisis, various pools underlying CDO contracts experienced realized defaults  
- In particular, pools consisting of mortgage and asset backed securities were severely impacted in the real estate crisis  
- Synthetic CDOs linked to CDX IG and HY (North America) indices also experienced unprecedented default rates  
- In many cases, investors in senior (AA) and super-senior (AAA) tranches were partially wiped out!  
- Failures of understanding risks were amplified by the market-wide use of an inconsistent, non-realistic CDO model:  
- Gaussian correlation models do not cover properly "fat tail" risks/"clustering" of defaults events!

# Q&A

- Assets/Liabilities of a company  
- Black-Scholes model  
Capital Structure / Merton model  
Correlated Defaults  
CDO Pricing  
- Appendix: First Passage/Black-Cox model

# First Passage Time Credit Model: Back & Cox '76

- Model introduces a "default barrier" parameter  $D$  
- Barrier  $D$  chosen below the liabilities level  $K$ , in order to protect bond investors from excessive losses  
- Credit default triggered when assets  $A_{t}$  fall through the liabilities level  $K$  and cross the default barrier  $D_{t}$ .  
- In that case, equity investors get "wiped out" and the bond holders take over the assets of the company.  
- Assets still liquidated at time  $T$  to repay the bond investors.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fb5a9a4b-5285-42e6-b30e-4b13e49a8cc4/7509c8c52b9246d44f268bf81b2a165ebce146f742d8c20226202f048a6bccf4.jpg)  
Possible paths of asset values relative to liabilities

Equity and bond investor's payout

- We denote the running minimum of the asset process  $A_{t}$  as

$$
A _ {t} ^ {*} = \min  \left\{A _ {s}: 0 <   s <   t \right\} \tag {80}
$$

Equity investors payout at  $T$  defined as

$$
E q u i t y P a y o u t = \left(A _ {T} - K\right) ^ {+} \cdot \mathbb {I} _ {\left\{A _ {T} ^ {*} \geq D \right\}} \tag {81}
$$

Bond investors payout at  $T$  is

$$
\begin{array}{l} B o n d P a y o u t = A _ {T} - E q u i t y P a y o u t \tag {82} \\ = K - \left(K - A _ {T}\right) ^ {+} + \left(A _ {T} - K\right) ^ {+} \cdot \mathbb {I} _ {\{A _ {T} ^ {*} <   D \}} \\ \end{array}
$$

First passage time model: pricing formulas

- Fair value of equity priced as an down-and-out Call option on the assets value with strike  $K$ , barrier  $D$  and maturity  $T$

$$
E _ {0} = e ^ {- r \cdot T} \cdot \mathbb {E} \left[ (A _ {T} - K) ^ {+} \cdot \mathbb {I} _ {\{A _ {T} ^ {*} \geq D \}} | \mathcal {F} _ {0} \right] \tag {83}
$$

- Price is known explicitly in the Black-Scholes framework ("down-an-out" barrier option)  
- Fair value of risky bond derived from equity price  
- Fair value of a risky bond higher in "first passage time model" vs. "classical structural model", due to additional value from the barrier option