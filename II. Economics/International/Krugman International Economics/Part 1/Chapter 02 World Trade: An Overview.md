---
title: Chapter 02 World Trade: An Overview
parent_directory: Part 1
formatted: 2025-12-21 07:00:00 AM
formatter_model: grok-code-fast-1
cli-tool: opencode
primary_tags:
- world trade patterns
- gravity model economics
- international trade barriers
secondary_tags:
- trade impediments
- service offshoring
- global trade evolution
- trade gravity equation
cssclasses: academia
---

# Chapter 02 World Trade: An Overview

## Who Trades with Whom?

## Size Matters: The Gravity Model

The gravity model of trade predicts that bilateral trade flows between two countries are proportional to their economic sizes (GDPs) and inversely proportional to the distance between them. This simple model explains a large portion of observed trade patterns.

```d2
direction: right

gravity_model: Gravity Model of Trade {
  shape: rectangle
  style.fill: "#e3f2fd"
  style.stroke: "#1976d2"
}

country_a: Country A (GDP_A) {
  shape: circle
  style.fill: "#4caf50"
}

country_b: Country B (GDP_B) {
  shape: circle
  style.fill: "#2196f3"
}

trade_flow: Trade Flow {
  shape: hexagon
  style.fill: "#ff9800"
}

distance: Distance Factor {
  shape: diamond
  style.fill: "#f44336"
}

country_a -> trade_flow: GDP_A × GDP_B
country_b -> trade_flow: GDP_A × GDP_B
distance -> trade_flow: 1/Distance
trade_flow -> country_a: Imports to A
trade_flow -> country_b: Imports to B
```

## Key Gravity Model Insights

1. **Economic Size**: Larger economies trade more with each other
2. **Distance Effects**: Trade decreases with geographic and cultural distance
3. **Border Effects**: Political borders reduce trade flows significantly
4. **Trade Costs**: Transportation costs, tariffs, and non-tariff barriers affect trade

## Using the Gravity Model Looking for Anomalies

## Impediments to Trade Distance Barriers and Borders

## The Changing Pattern of World Trade

## Has the World Gotten Smaller?

## What Do We Trade?

## Service Offshoring

## Do Old Rules Still Apply?

## Summary
