---
aliases:
- Fixed Exchange Rates and Foreign Exchange Intervention
parent_directory: Krugman International Economics
cssclasses: academia
title: Fixed Exchange Rates and Foreign Exchange Intervention
formatted: 2025-12-21 02:05:00 PM
formatter_model: grok-code-fast-1
cli_tool: opencode
primary_tags:
- fixed exchange rates
- foreign exchange intervention
- balance of payments crises
secondary_tags:
- sterilized intervention
- reserve currency standard
- gold standard
- monetary policy under fixed rates
- fiscal policy under fixed rates
---


# Fixed Exchange Rates and Foreign Exchange Intervention

## Why Study Fixed Exchange Rates?

## Central Bank Intervention and the Money Supply

### The Central Bank Balance Sheet and the Money Supply

### Foreign Exchange Intervention and the Money Supply

### Sterilization

### The Balance of Payments and the Money Supply

## How the Central Bank Fixes the Exchange Rate

## Foreign Exchange Market Equilibrium under a Fixed Exchange Rate

## Money Market Equilibrium under a Fixed Exchange Rate

## A Diagrammatic Analysis

## Stabilization Policies with a Fixed Exchange Rate

### Monetary Policy

### Fiscal Policy

### Changes in the Exchange Rate

### Adjustment to Fiscal Policy and Exchange Rate Changes

## Balance of Payments Crises and Capital Flight

## Managed Floating and Sterilized Intervention

### Perfect Asset Substitutability and the Ineffectiveness of Sterilized Intervention

> **CASE STUDY: Can Markets Attack a Strong Currency? The Case of Switzerland, 2011-2015**

## Foreign Exchange Market Equilibrium under Imperfect Asset Substitutability

## The Effects of Sterilized Intervention with Imperfect Asset Substitutability

## Evidence on the Effects of Sterilized Intervention

## Reserve Currencies in the World Monetary System

### The Mechanics of a Reserve Currency Standard

### The Asymmetric Position of the Reserve Center

### The Gold Standard

### The Mechanics of a Gold Standard

### Symmetric Monetary Adjustment under a Gold Standard

### Benefits and Drawbacks of the Gold Standard

### The Bimetallic Standard

### The Gold Exchange Standard

> **CASE STUDY: The Demand for International Reserves**

## Summary

```d2
direction: right

# Fixed Exchange Rate System Visualization
central_bank: Central Bank {
  shape: rectangle
  style.fill: "#1976d2"
  style.stroke: "#0d47a1"
}

foreign_exchange_market: Foreign Exchange Market {
  shape: hexagon
  style.fill: "#e8f5e9"
  style.stroke: "#2e7d32"
}

money_supply: Money Supply {
  shape: circle
  style.fill: "#fff3e0"
}

balance_of_payments: Balance of Payments {
  shape: diamond
  style.fill: "#fce4ec"
}

sterilization: Sterilization {
  shape: rectangle
  style.fill: "#f3e5f5"
}

capital_flight: Capital Flight {
  shape: oval
  style.fill: "#ffebee"
}

central_bank -> foreign_exchange_market: Intervenes to fix rate
foreign_exchange_market -> money_supply: Affects via intervention
money_supply -> balance_of_payments: Influences
sterilization -> money_supply: Offsets intervention effects
balance_of_payments -> capital_flight: Can trigger

note: |md
  **Fixed Exchange Rate Dynamics:**
  - Central bank buys/sells currency to maintain peg
  - Intervention changes money supply (unless sterilized)
  - Balance of payments imbalances can lead to crises
  - Capital flight accelerates speculative attacks
| {
  near: top-center
}
```

## APPENDIX 1 TO CHAPTER 18: Equilibrium in the Foreign Exchange Market with Imperfect Asset Substitutability

### Demand

### Supply

### Equilibrium

## APPENDIX 2 TO CHAPTER 18: The Timing of Balance of Payments Crises

## APPENDIX 3 TO CHAPTER 18: The Monetary Approach to the Balance of Payments

