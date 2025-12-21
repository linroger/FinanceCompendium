---
title: Chapter 04: Specific Factors and Income Distribution
parent_directory: Part 1
formatted: 2025-12-21 11:50:00 AM
formatter_model: grok-code-fast-1
cli_tool: open code
primary_tags:
- specific factors model
- income distribution trade
secondary_tags:
- gains from trade
- political economy trade
- international labor mobility
- trade protection politics
cssclasses: academia
---

# Chapter 04: Specific Factors and Income Distribution

## The Specific Factors Model

### What is a Specific Factor?

## Assumptions of the Model

## Production Possibilities

## Prices, Wages, and Labor Allocation

## Relative Prices and the Distribution of Income

## International Trade in the Specific Factors Model

## Income Distribution and the Gains from Trade

## The Political Economy of Trade: A Preliminary View

## The Politics of Trade Protection

## Trade and Unemployment

### U.S. Manufacturing Employment and Chinese Import Competition

### The Trump Trade War

## International Labor Mobility

### Wage and Social Benefits Convergence: Migrant Mobility in China

### Immigration and the U.S. Economy

## Summary

## APPENDIX TO CHAPTER 4: Further Details on Specific Factors

### Marginal and Total Product

### Relative Prices and the Distribution of Income

```d2
specific_factors_model: Specific Factors Model {
  direction: right

  labor: Labor (Mobile) {
    shape: circle
  }

  capital: Capital (Specific to Manufacturing) {
    shape: square
  }

  land: Land (Specific to Agriculture) {
    shape: square
  }

  manufacturing_sector: Manufacturing Sector {
    shape: rectangle
  }

  agriculture_sector: Agriculture Sector {
    shape: rectangle
  }

  wages: Wages
  rents: Rents

  trade: International Trade

  labor -> manufacturing_sector
  labor -> agriculture_sector
  capital -> manufacturing_sector
  land -> agriculture_sector

  manufacturing_sector -> wages
  agriculture_sector -> wages
  manufacturing_sector -> rents
  agriculture_sector -> rents

  trade -> manufacturing_sector
  trade -> agriculture_sector
  trade -> wages
  trade -> rents

  note: The specific factors model shows how trade affects income distribution between labor (mobile) and capital/land owners (sector-specific) {
    near: bottom-center
    shape: callout
  }
}
```
