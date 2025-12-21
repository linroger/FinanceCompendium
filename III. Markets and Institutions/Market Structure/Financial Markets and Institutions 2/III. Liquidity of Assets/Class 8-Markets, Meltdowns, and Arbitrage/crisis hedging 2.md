---
title: Lessons from the Crisis
parent_directory: Class 8-Markets, Meltdowns, and Arbitrage
formatted: 2025-12-21 08:00:00 AM
formatter_model: grok-code-fast-1
cli-tool: opencode
primary_tags:
  - financial crisis lessons
  - hedging failures
  - counterparty risk
secondary_tags:
  - convexity risk
  - securitization problems
  - regulatory arbitrage
  - negative basis trades
  - super senior tranches
cssclasses: academia
---

# Lessons from the Crisis

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/a23429dc-33c5-40f1-b0f3-299c3531c072/87965b300310fc5bba590d58269a8f03aad7725ba1c8e4d5e8107d5cd10f0721.jpg)

## Five Structural Causes of the Crisis

1. Ignored Incentives  
Incentive concerns treated as quaint  
2. Overreliance on Models  
Quantitative models too fragile in light of poor incentives  
3. Increased Financial Instrument Complexity and Customization  
- Allowed "optimization" of models and regulations  
4. Securitization  
- Failure of financial supply chain management  
5. Regulatory environment  
- Too many and inconsistently applied rules/standards

## Recent Headlines

"Merrill Upped Ante as Boom In Mortgage Bonds Fizzled"

— Wall Street Journal, April 16 2008

"How a Good Subprime Call Came to Hurt Morgan Stanley"

— Wall Street Journal, November 7, 2007

"ACA pain spreads far and wide"

Creditflux Newsletter, February 2008

"UBS reveals the failures that led to its  $\$ 37$ bn subprime writedowns"

The Times of London, April 22, 2008

## Observation

Many of the writedowns during the recent crisis have been on positions which were considered hedged

"Once hedged, … the Super Senior positions were VaR and Stress Testing neutral (i.e., because they were treated as fully hedged, the Super Senior positions were netted to zero and therefore did not utilize VaR and Stress limits) … In several [Market Risk Control] reports, the long and short positions were netted, and the inventory of Super Seniors was not shown, or was unclear. For [the hedging] AMPS trades, the zero VaR assumption subsequently proved to be incorrect …"

- Shareholder Report on UBS's Write-Downs, April 18, 2008

### ABS CDO Basics

Collateralized Debt Obligations (CDOs) are pools of securities (e.g. loans)  
ABS CDOs are CDOs backed primarily by sub-prime and other mortgage-related securities  
The Super Senior tranche is the largest and the most senior tranche in the capital structure

## Super Senior

## Pool of securities

## Mezzanine

## Equity

## The "Negative Basis" Trade

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/a23429dc-33c5-40f1-b0f3-299c3531c072/3314c4bf53c2fee09b31873d3846444ffe2e2a484c001b07edb2bf1526829f49.jpg)

<table><tr><td colspan="2">Economics</td></tr><tr><td>CDO pays</td><td>L + 20 bps</td></tr><tr><td>CDS premium</td><td>(10 bps)</td></tr><tr><td>Funding cost</td><td>(L - 10 bps)</td></tr><tr><td>Profit (pa)</td><td>20 bps</td></tr></table>

```d2
direction: right
Bank: Long CDO (L + 20 bps)
Bank -> Monoline: Buy CDS protection (10 bps)
Monoline -> Bank: Insurance payout if default
Bank -> Market: Funding cost (L - 10 bps)
Profit: 20 bps
```

Primary source of monoline counterparty risk for banks in structured finance  

- Banks would enter into a long risk position on a CDO and then buy protection (insurance) on the same asset from a monoline or other protection seller  
Because it was viewed as "hedged", the trade required little or no regulatory capital allowing the banks to book the entire payment stream as profit  
Structuring/origination banks held CDOs on balance sheet and bought protection in order to increase deal capacity

### Counterparty Risk Case Study: ACA

ACA was a single-A rated monoline insurer which originally specialized in troubled municipal credits  
ACA first branched out to initially managing and later providing insurance for ABS CDOs  
ACA eventually insured over \$20 billion of ABS CDOs Super Seniors  

- Most banks have written the value of their ACA protection on ABS CDOs to zero  
ACA entered a restructuring agreement with structured finance counterparties in August 2008

## Counterparty Risk

It appears that with respect to these negative basis trades, prudent analysis was not performed  
ACA had a higher nominal default probability than the asset it was insuring

- Appears that some regulations allowed a minimum rating requirement without regard to the default probability of the insured instrument

The correlation of the insured and the insurer was ignored  

- ACA's business, both with respect to insurance and management, was structured finance  
One financial institution entered into \$6.7 billion of trades with ACA in 3Q07, when the approximate mark to market loss on the insured securities may have been multiple times ACA's capital* *Based on TABX 40-100% @ approx \$0.40 in 8/07

## Counterparty Risk: Lessons Learned

### Already re-learned:

Counterparties are risky  

- Need to sum risk across company (e.g. monoline risks to SF, ARS, VRDN, GICs, ABCP)

### Needs improvement:

- Independent and thorough analysis of the counterparty's credit and correlation to the insured instrument and to the insuring bank

#### Valuation:

- Take account of any basis risk between the different legs of the trade  
- Account for appropriate recoveries and correlations

## Convexity Risk Case Study: Morgan Stanley

MS proprietary trading desk entered into a series of trades designed to take advantage of their negative view on subprime mortgages:

- Short mezzanine levels of the ABX index  
- Long Super Senior tranches of ABS CDOs to fund the trade  
- Very likely, the Super Seniors would have been purchased with financing

The trade was positioned to profit if the subprime market deteriorated slightly  
As losses mounted, the trade reversed and MS took a \$3.7 billion loss related to the trade in 4Q07

## Convexity Risk

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-30/a23429dc-33c5-40f1-b0f3-299c3531c072/16e3e48c796d6406d82d47530580d941b69ce73632e1decafa92926fe8db2a06.jpg)  
"[O]ur risk exposure swing from short to flat to long" -- Colm Kelleher MS CFO

The tail risk stems from the large long position in ABS CDOs  
Leverage existed not only in the trade itself, but also within its components  
There appears to have been no attempts to hedge the tail end of the trade

## Convexity Risk Case Study II: UBS

- UBS retained the Super Senior portions of ABS CDOs they originated. UBS hedged these positions in several ways, including the AMPS program:

Amplified Mortgage Portfolio ("AMPS") Super Seniors: these were Super Senior positions where the risk of loss was initially hedged through the purchase of protection on a proportion of the nominal position (typically between $2\%$ and $4\%$ though sometimes more)…. Much of the AMPS protection has now been exhausted, leaving UBS exposed to write-downs on losses to the extent they exceed the protection purchased. As at the end of 2007, losses on these trades contributed approximately $63\%$ of total Super Senior losses.

- Shareholder Report on UBS's Write-Downs, April 18, 2008

The AMPS hedge explicitly excluded tail risk protection

## Convexity Risk: Lessons Learned

Hedging trades needs thorough stress testing

- The stress testing must cover not only the likely outcome, but also extreme scenarios
- Where the long and the short leg reference different assets (basis risk), the hedge effectiveness needs to stressed as well

#### Valuation

- Each leg must be thoroughly modeled (no simplifications)  
- Must take account of the entire probability space (i.e. the "tail risk")  
- Must account for any leverage in the trade, as well as any liquidity issues with the referenced assets

## Conclusion

### There is no such thing as a perfect hedge

- Hedging strategies allowed excess leverage to build on balance sheets  
The flexibility of OTC derivatives increase opportunities for "optimization" with respect to any regulatory or internal controls  
Incentives matter – fancy models (VaR and Stress Testing) are useless if they are ignored because the trade is deemed riskless