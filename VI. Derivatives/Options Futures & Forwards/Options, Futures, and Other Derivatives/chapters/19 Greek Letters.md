---
title: Greek Letters
parent_directory: Options, Futures, and Other Derivatives
formatted: 2025-12-20 06:57:00 PM
formatter_model: claude-sonnet-4
cli-tool: claude-code
primary_tags:
  - greek letters
  - option sensitivities
secondary_tags:
  - delta hedging
  - theta gamma vega
  - rho sensitivity
  - portfolio insurance
cssclasses: academia
---

# Chapter 19. The Greek letters 395

```d2
greek letters overview: {
  shape: flowchart
  
  delta: "Δ - Price sensitivity to underlying"
  gamma: "Γ - Delta sensitivity to underlying" 
  theta: "Θ - Price sensitivity to time decay"
  vega: "V - Price sensitivity to volatility"
  rho: "Ρ - Price sensitivity to interest rate"
  
  delta -> gamma: "second derivative"
  delta -> theta: "time component"
  delta -> vega: "volatility component"
  delta -> rho: "rate component"
}
```

19.1 Illustration 395
19.2 Naked and covered positions 396
19.3 Greek letter calculation 398
19.4 Delta hedging 399
19.5 Theta 405
19.6 Gamma 407
19.7 Relationship between delta, theta, and gamma 411
19.8 Vega 412
19.9 Rho 414
19.10 The realities of hedging 415
19.11 Scenario analysis 415
19.12 Extension of formulas 417
19.13 Portfolio insurance 419
19.14 Application of machine learning to hedging 421
Summary 422
Further reading 423
Short concept questions 424
Practice questions 424
Appendix: Taylor series expansions and Greek letters 428

