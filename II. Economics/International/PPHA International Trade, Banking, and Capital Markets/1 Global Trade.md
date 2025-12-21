---
title: "Global Trade"
parent_directory: "PPHA International Trade, Banking, and Capital Markets"
formatted: "2025-12-21 06:50:00 AM"
formatter_model: "claude-sonnet-4-5-20250929"
cli_tool: "claude-code"
primary_tags:
- global trade patterns
- trade balance economics
- international trade theory
secondary_tags:
- trade deficits surpluses
- bilateral multilateral trade
- trade policy instruments
- globalization impacts
- migration patterns
cssclasses: academia
---

# Global Trade

This lecture introduces key concepts in international trade, banking, and capital markets, focusing on global trade patterns and their economic implications.

## Course Overview

**Instructor:** Dave Schabes  
**Date:** September 27, 2022

## International Trade and Globalization

What is globalization?

- Why was it viewed as so successful for 50 years?
- Why is it now viewed as flawed?
- How will international trade and migration change in the coming years?

## Banking and International Capital Markets

- How are currencies bought and sold?
- How do central banks manage their exchange rates?
- Why does investment capital flow across borders?
- What are the implications of governments' actions for international capital markets?

## Course Logistics

### Grading

- Problem Sets: 56% (Eight problem sets – 70 points each)
- Final Exam: 35%
- Class Participation: 9%

#### Class Attendance
- Questions in class, during office hours or by email
- Classes held in person only

### Academic Integrity

- Problem sets: may discuss questions with other current students
  - Must turn in own work
  - Do not obtain old answer sheets from Course Hero or other services
  - Do not discuss questions with students who have taken this course
  - Zero on any problem set where violation of academic integrity is found

- Final Exam: do not copy answers from other students

## Trade Terms

### Basic Concepts
- **Exports**: what a country sells to other countries
- **Imports**: what a country buys from other countries
- Applies to both goods and services

### Trade Balance
- **Surplus**: exports exceed imports
- **Deficit**: imports exceed exports
- **Balanced trade**: exports equal imports

### Trade Relationships
- **Bilateral Trade**: trade between two countries
- **Multilateral Trade**: trade between a country and rest of world

### Trade Policy Instruments
- **Tariffs**: taxes on imported products
- **Quotas**: limits set on amount of a product imported from a country – sometimes "voluntary"
- **Sanctions**: bans importation of products from a country – e.g., Russian products banned after Ukraine invasion

### Trade Models Evolution
- Initial models presented in course:
  - Direct, bilateral exchange of finished products
  - No financing available

- Subsequently discuss intermediate goods and services trade:
  - Introduce multilateral trade
  - Value-added at each stage – iPhone example from text
  - New methods of delivery: Offshoring

## Trade and Macroeconomics

If you've taken introductory macroeconomics, you've seen this equation:

$$
\begin{align}
Y &= C + I + G + EX - IM, \text{where:} \\
Y &= \text{GDP}, \\
C &= \text{Consumption}, \\
I &= \text{Investment}, \\
G &= \text{Government Spending}, \\
EX &= \text{Exports}, \\
IM &= \text{Imports}
\end{align}
$$

$EX - IM$ is known as the trade balance. If $EX - IM < 0$, the trade balance is in deficit; if $EX - IM > 0$, the trade balance is in surplus.

## Determining the Trade Balance

Rearrange the identity above, and solve for $EX - IM$.

First subtract taxes from both sides of the equation:

$$
Y - T = C + I + G - T + EX - IM
$$

From each side subtract consumption and investment to obtain:

$$
(Y - T - C) - I = G - T + EX - IM
$$

$Y - T$ represents disposable income and $S_p = Y - T - C$ is private savings. Substituting $S_p$ and moving $G - T$ to the left hand side, we obtain:

$$
(S_p - I) + (T - G) = EX - IM
$$

## Trade Balance Components Visualization

```d2
direction: right

Trade Balance: Trade Balance {
  shape: hexagon
  style.fill: "#e3f2fd"
  style.stroke: "#1976d2"
}

Private Sector: Private Sector {
  shape: rectangle
  style.fill: "#f3e5f5"
}

Government Sector: Government Sector {
  shape: rectangle
  style.fill: "#e8f5e9"
}

Trade Balance <- Private Sector: $S_p - I$ (Private Savings - Investment)
Trade Balance <- Government Sector: $T - G$ (Taxes - Government Spending)

Trade Balance -> Exports: $EX$
Trade Balance -> Imports: $ - IM$

Surplus: Surplus {
  shape: diamond
  style.fill: "#4caf50"
  style.font-color: white
}

Deficit: Deficit {
  shape: diamond
  style.fill: "#f44336"
  style.font-color: white
}

Balanced: Balanced {
  shape: diamond
  style.fill: "#ff9800"
  style.font-color: white
}

Trade Balance -> Surplus: $EX - IM > 0$
Trade Balance -> Deficit: $EX - IM < 0$
Trade Balance -> Balanced: $EX - IM = 0$
```

*Trade balance determined by private sector saving-investment gap and government fiscal position.*

## Interpreting the Trade Balance

- $(S_p - I)$ represents the difference between private savings and investment
- $(T - G)$ equals taxes minus government spending or public investment
- If both $(S_p - I)$ and $(T - G)$ are less than zero, then $EX - IM < 0$, so there must be a trade deficit
- Text notes: "...trade balance of the economy is determined by the macroeconomic saving behavior of the households and the government." Do you agree with this interpretation?

## Global Trade Overview

To understand globalization we need to understand:
- The incentives for countries to trade
- The barriers to trade

Trade is thousands of years old, but:
- Has only constituted a meaningful part of national and global income in past 150 years
- Intermediate goods trade became significant only in past 30 years

### Global Goods Trade Relative to Global Income

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/cac0d912-62a6-45be-801c-799ee6a68e5a/2ee5810694a81c50cb884f341deb7c93d0388b3890c04d63bc3b0967687de43a.jpg)

- Tend to think of trade only increasing over time, but reality has been more complex

## Global Trade in Goods and Services

### Trade as Percentage of GDP

*World Bank national accounts data, and OECD National Accounts data files.*  
*License: CC BY-4.0*

![Trade as % of GDP](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/cac0d912-62a6-45be-801c-799ee6a68e5a/3ffb5f4de595f3e74d1fb49cba62d6a03cad031672153a70b04b098cf2d73120.jpg)  
Source: World Bank website, accessed July 12, 2022. https://data.worldbank.org

### World Trade Flows

- Goods trade as a percentage of global income: 1820 – 2\%; 1913 – 22\%; 2008 – approximately 50\%
- Why do trade flows increase over time relative to global income?

  - A) Reductions in transportation costs
  - B) Reductions in tariffs
  - C) "Common" currency
  - D) Convergence of income among countries

### Historical Analysis: Estevadeordal, Frantz, and Taylor (2003)

Estevadeordal, Frantz, and Taylor (2003) examine potential determinants of relative increases and decreases in global goods trade relative to global output from 1870 to 1939:

- Study total world trade
- Utilize the gravity equation
- Examine potential frictions simultaneously

They attempt to determine relative impact, whereas previous studies have focused on one factor at a time.

#### Traditional Narrative

- From 1800 to 1914 trade volume increases 20 times and approximately 10 times versus global income
- First Golden Age of Trade – 1870 – 1913

Acceleration in rate of growth after 1870 with dramatic decrease in transportation costs:

- Steam power mobilized
- Stable monetary environment – Gold Standard
- Tariffs low - minimal role

#### Post-1914 Trade Bust (1914–1939)

During the interwar period, there was a "bust" in world trade:

- Traditionally attributed to increased tariffs and protectionism
- Little quantitative support for this explanation

However:
- Transportation costs rose dramatically during this period
- Technology changes
- Restrictive cartels and labor practices

#### Key Findings

- Model explains most of the rise and fall in world trade
- Substantial portion explained by "common currency" (rise and fall of the gold standard)
- Tariffs played small role early but became important during interwar period
- Transport costs (fall and rise) were important in both rise and decline of trade
- Income convergence was unimportant after 1870

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/cac0d912-62a6-45be-801c-799ee6a68e5a/9e95020b162388de03f917db03c6535d6383229f2b33601f5f4bef7f6afa8698.jpg)  
(a) Gold Standard Adherence

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/cac0d912-62a6-45be-801c-799ee6a68e5a/dae48b41959cb87fe8d44b3e32ab24fbd1495fe8b9c0a177ce4c92a759f625f4.jpg)  
(b) Tariff Rates

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/cac0d912-62a6-45be-801c-799ee6a68e5a/c8308befbf11b6928099965784ceb7a98f715604bfcaed5acb57b7943026d6cc.jpg)  
(c) Maritime Transport Costs  
FIGURE II  
Three Explanatory Variables

#### Trade Analysis Table

**Table III: Explaining the Rise and Fall of World Trade, 1870-1939**

| Variable | 1870 | 1900 | 1913 | 1929 | 1938 |
|----------|------|------|------|------|------|
| **(a) Actual levels** | | | | | |
| (1) World trade/GDP (percent) | 11 | 19 | 22 | 15 | 9 |
| (2) World trade (exports + imports, million 1913 US$) | 7,899 | 23,932 | 39,762 | 35,613 | 24,774 |
| (3) World GDP (million 1913 US$) | 71,020 | 129,032 | 178,280 | 240,678 | 269,299 |
| (4) Gold standard (trade weighted share, up to 56 countries) | 13 | 81 | 88 | 89 | 25 |
| (5) Tariffs (trade weighted share, 35 countries) | 12 | 13 | 11 | 13 | 20 |
| (6) Transport Costs (1913 = 100, British real index) | 125 | 112 | 100 | 116 | 138 |
| **(b) Change in ln(Trade) explained by output trend, 1913 versus base year** | | | | | |
| (7) Actual Change in ln(Trade) | 1.62 | 0.51 | 0.00 | 0.10 | 0.47 |
| (8) Change in ln(GDP) | 0.92 | 0.32 | 0.00 | -0.30 | -0.41 |
| (9) Change in ln(Trade/GDP) | 0.70 | 0.19 | 0.00 | 0.40 | 0.88 |
| **(c) Change in ln(Trade/GDP) explained by the gravity model, 1913 versus base year** | | | | | |
| (10) due to: Gold standard | 0.30 | 0.04 | — | -0.02 | 0.32 |
| (11) Tariffs | 0.00 | 0.07 | — | 0.05 | 0.20 |
| (12) Transport costs | 0.30 | 0.13 | — | 0.19 | 0.50 |
| (13) Income convergence | 0.24 | 0.02 | — | 0.06 | 0.07 |
| (14) Residual | -0.13 | -0.06 | — | 0.13 | -0.21 |

*Notes: See text. The transport costs counterfactual shown here includes only "maritime" routes.*

#### Contemporary Lessons

- Transportation frictions not always decreasing
- Currency frictions matter substantially
- Commercial policies important

### Modern Shipping Costs Example

![Shipping Rates China to US West Coast](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/cac0d912-62a6-45be-801c-799ee6a68e5a/60534deef3314ffd2fc686934a35e00f8d1850dfcc04f6f262eca289f92187a4.jpg)  
Source: "Container shipping rates are going mad again". FT Alphaville, April 8, 2022. www.ft.com. Accessed August 17, 2022.

### Post-World War II Trade Boom

Key participants learned from mistakes in Treaty of Versailles, bringing on the Second Golden Age (1947–2007):

- Bretton Woods Agreement (1944) - ended in 1973
- Shipping containers (1956)
- Information and Communication Technology (1980 to present)
- Ended with the Financial Crisis

### Contemporary Global Trade (2021)

- Total Goods and Services Exports: \$27.926 trillion
- Total Goods and Services Imports: \$26.982 trillion
- Global GDP: \$96.1 trillion
- Trade as percentage of GDP: 57.1\%

*Substantial rebound from COVID-depressed 2020 trade levels.*

#### Services Trade Growth
- Total services trade 2021: \$5.623 trillion
- Measurement difficult
- Increasing importance

Examples:
- Software as a Service
- Call-centers
- Consulting, Financial and Legal services

### Major Trading Nations (2019 WTO Statistics)

**Chart 2.7: World's leading traders of goods and commercial services, 2019 (US\$ billion)**

![World's Leading Traders 2019](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/cac0d912-62a6-45be-801c-799ee6a68e5a/e82d87b3fba2e15ee6beb7e552316a35f730be3557419bc488f07dc4b91ca2a2.jpg)  
Source: WTO-UNCTAD in cooperation with ITC and UNSD.

The top traders of goods and commercial services in 2019 were mainly economies in North America, Asia and Europe.  
*Source: World Trade Statistical Review 2020. www.wto.org*

### COVID-19 Impact on Trade

**Chart 3.2: World merchandise trade volume, 2015Q1-2021Q1**  
*(Volume index 2015=100 and year-on-year percentage change)*

![COVID-19 Trade Impact](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/cac0d912-62a6-45be-801c-799ee6a68e5a/d6834a5ec00bd98bca94a410742ea6b2bfed5ea4fb6864242d977c2782d03e65.jpg)  
Sources: WTO Secretariat and UNCTAD.  
Source: World Trade Statistical Review 2021. www.wto.org

### Migration Patterns

The Organization of Economic Co-operation and Development (OECD) countries was established in 1961.

**FIGURE 1-6: Foreign-Born Migrants, 2017 (millions)**  
*This figure shows the number of foreign-born migrants living in selected countries and regions of the world for 2017 in millions of people. The level of migration is illustrated by the width of the lines, with the largest migrant numbers having the heaviest lines and the smallest having dashed lines.*

![Foreign-Born Migrants 2017](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/cac0d912-62a6-45be-801c-799ee6a68e5a/729e7880dcb4fc10da62df5a2277ced8ca37ebe707618d33206b85beccaba914.jpg)  
Data from: OECD and UN migration data.

### Migration Terms

- **Immigrants**: persons entering a country from another for an extended period
  - Workers with or without family members
- **Emigrants**: persons leaving a country for another for an extended period
- **Refugees**: persons forced to leave a country due to inability to live safely

### Migration and Politics

- Increasingly offshoring substitutes for direct migration
- European migration: East to West
  - Schengen Area – 26 countries
  - Syrian refugee crisis
  - Brexit

- US and Mexico
  - Maquiladoras

### Foreign Direct Investment

**Vertical FDI:**
- Invest in some portion of business functions
- Often labor cost driven

**Horizontal FDI:**
- Adding complete business in another country
- Believe business model appeals to potential customers

Risk management considerations apply to both types.

### Models of International Trade

#### Principal Models

- Ricardian - Technology-based comparative advantage
- Specific Factors – Capital resources immobile
- Heckscher-Ohlin – Capital resources mobile (offshoring)
- Gravity - Frictional costs (transportation, tariffs and currency stability)

#### Limitations of Models

All models have simplified assumptions:
- One or two labor skill levels
- Distributional impacts limited or ignored
- No fragility (crop failures, pandemics, wars, production stoppages, security concerns)

All have substantial economic and political consequences.