---
title: Chapter 10 - Options
parent_directory: Derivatives Market Complete Full/chapters manual
formatted: 2025-12-21 12:00:00 PM
formatter_model: grok-code-fast-1
cli_tool: opencode
primary_tags:
   - option pricing
   - derivatives markets
   - binomial option pricing
secondary_tags:
   - forward contracts
   - Black-Scholes formula
   - probability distribution
   - market-making
   - hedging strategies
cssclasses: academia
---

# Options

Forward contracts (and futures and swaps) represent a binding commitment to buy or sell the underlying asset in the future. Because the commitment is binding, but deferred, time value of money is the main economic idea used in determining forward prices.

```d2
direction: right

Forward Contracts: {
  Commitment: Binding
  Exercise: Mandatory
  Value Driver: Time value of money
}

Options: {
  Commitment: Optional
  Exercise: Discretionary
  Value Driver: Probability distribution
}
```

Options, on the other hand, need not be exercised. Intuitively, you would expect the probability distribution of the stock to affect the option price. Consequently, in discussing option pricing we use some concepts from basic probability. However, it turns out that there is much to say about options without needing to think about the probability distribution of the stock.

The binomial option pricing model assumes that the stock can move only in a very simple way, but provides the intuition underlying more complicated option pricing calculations. The Black-Scholes option pricing formula is one of the most important formulas in finance.

From Derivatives Markets, Third Edition, Robert McDonald. Copyright © 2013 by Pearson Education, Inc. Published by Pearson Prentice Hall. All rights reserved.

As with forwards, futures, and swaps, option contracts are bought and sold by market-makers who hedge the risk associated with market-making.
