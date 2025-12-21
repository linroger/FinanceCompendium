---
title: Chapter 15: Money, Interest Rates, and Exchange Rates
parent_directory: Krugman International Economics
formatted: 2025-12-21 05:15:00 PM
formatter_model: grok-code-fast-1
cli_tool: opencode
primary_tags:
  - money supply demand
  - interest rates exchange rates
  - monetary policy
  - exchange rate determination
secondary_tags:
  - money market equilibrium
  - liquidity preference
  - purchasing power parity
  - exchange rate overshooting
cssclasses: academia
---

# Chapter 15: Money, Interest Rates, and Exchange Rates

## Money Defined: A Brief Review

### Money as a Medium of Exchange

### Money as a Unit of Account

### Money as a Store of Value

### What Is Money?

### How the Money Supply Is Determined

## The Demand for Money by Individuals

### Expected Return

### Risk

### Liquidity

## Aggregate Money Demand

## The Equilibrium Interest Rate: The Interaction of Money Supply and Demand

### Equilibrium in the Money Market

```d2
direction: right

money_supply: Money Supply {
  shape: line
  style.stroke: blue
  label: "Vertical (fixed by central bank)"
}

money_demand: Money Demand {
  shape: line
  style.stroke: red
  label: "Downward sloping"
}

equilibrium: Equilibrium Point {
  shape: circle
  label: "i* (equilibrium interest rate)"
}

quantity_money: Quantity of Money {
  near: bottom-center
}

interest_rate: Interest Rate {
  near: left-center
  direction: up
}

money_supply -> equilibrium: "Ms"
money_demand -> equilibrium: "Md"
```

### Interest Rates and the Money Supply

### Output and the Interest Rate

## The Money Supply and the Exchange Rate in the Short Run

### Linking Money, the Interest Rate, and the Exchange Rate

```d2
direction: down

increase_ms: Increase Money Supply {
  shape: rectangle
  style.fill: "#e3f2fd"
}

decrease_ir: Decrease Interest Rate {
  shape: rectangle
  style.fill: "#fff3e0"
}

capital_outflow: Capital Outflow {
  shape: rectangle
  style.fill: "#ffebee"
}

currency_depreciation: Currency Depreciates {
  shape: rectangle
  style.fill: "#e8f5e9"
}

increase_ms -> decrease_ir: "Money market equilibrium"
decrease_ir -> capital_outflow: "Lower returns attract less capital"
capital_outflow -> currency_depreciation: "Exchange rate adjustment"
```

### U.S. Money Supply and the Dollar/Euro Exchange Rate

### Europe's Money Supply and the Dollar/Euro Exchange Rate

## Money, the Price Level, and the Exchange Rate in the Long Run

### Money and Money Prices

### The Long-Run Effects of Money Supply Changes

### Empirical Evidence on Money Supplies and Price Levels

### Money and the Exchange Rate in the Long Run

## Inflation and Exchange Rate Dynamics

### Short-Run Price Rigidity versus Long-Run Price Flexibility

#### BOX: Money Supply Growth and Hyperinflation in Zimbabwe

## Permanent Money Supply Changes and the Exchange Rate

### Exchange Rate Overshooting

#### CASE STUDY: Inflation Targeting and Exchange Rate in Emerging Countries

## Summary

