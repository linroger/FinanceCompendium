import json
import re
import os

filepath = "/Users/rogerlin/Downloads/Encyclopedia_of_Financial_Models_original/Encyclopedia_of_Financial_Models_original.md"
output_dir = "/Users/rogerlin/Downloads/Encyclopedia_of_Financial_Models_original"

# Corrected Structure for Volume III
# I'm defining it manually based on analysis.
structure = [
  {
    "name": "Volume I",
    "sections": [
      {
        "title": "Asset Allocation",
        "chapters": [
          "Mean-Variance Model for Portfolio Selection",
          "Principles of Optimization for Portfolio Selection",
          "Asset Allocation and Portfolio Construction Techniques in Designing the Performance-Seeking Portfolio"
        ]
      },
      {
        "title": "Asset Pricing Models",
        "chapters": [
          "General Principles of Asset Pricing",
          "Capital Asset Pricing Models",
          "Modeling Asset Price Dynamics",
          "Arbitrage Pricing: Finite-State Models",
          "Arbitrage Pricing: Continuous-State, Continuous-Time Models"
        ]
      },
      {
        "title": "Bayesian Analysis and Financial Modeling Applications",
        "chapters": [
          "Basic Principles of Bayesian Analysis",
          "Introduction to Bayesian Inference",
          "Bayesian Linear Regression Model",
          "Bayesian Estimation of ARCH-Type Volatility Models",
          "Bayesian Techniques and the Black-Litterman Model"
        ]
      },
      {
        "title": "Bond Valuation",
        "chapters": [
          "Basics of Bond Valuation",
          "Relative Value Analysis of Fixed-Income Products",
          "Yield Curves and Valuation Lattices",
          "Using the Lattice Model to Value Bonds with Embedded Options, Floaters, Options, and Caps/Floors",
          "Understanding the Building Blocks for OAS Models",
          "Quantitative Models to Value Convertible Bonds",
          "Quantitative Approaches to Inflation-Indexed Bonds",
          "Credit Risk Modeling",
          "An Introduction to Credit Risk Models",
          "Default Correlation in Intensity Models for Credit Risk Modeling",
          "Structural Models in Credit Risk Modeling",
          "Modeling Portfolio Credit Risk",
          "Simulating the Credit Loss Distribution",
          "Managing Credit Spread Risk Using Duration Times Spread (DTS)",
          "Credit Spread Decomposition",
          "Credit Derivatives and Hedging Credit Risk",
          "Derivatives Valuation",
          "No-Arbitrage Price Relations for Forwards, Futures, and Swaps",
          "No-Arbitrage Price Relations for Options",
          "Introduction to Contingent Claims Analysis",
          "Black-Scholes Option Pricing Model"
        ]
      }
    ]
  },
  {
    "name": "Volume II",
    "sections": [
      {
        "title": "Equity Models and Valuation",
        "chapters": [
          "Dividend Discount Models",
          "Discounted Cash Flow Methods for Equity Valuation",
          "Relative Valuation Methods for Equity Analysis",
          "Equity Analysis in a Complex Market",
          "Equity Portfolio Selection Models in Practice",
          "Basics of Quantitative Equity Investing",
          "Quantitative Equity Portfolio Management",
          "Forecasting Stock Returns"
        ]
      },
      {
        "title": "Factor Models for Portfolio Construction",
        "chapters": [
          "Factor Models",
          "Principal Components Analysis and Factor Analysis",
          "Multifactor Equity Risk Models and Their Applications",
          "Factor-Based Equity Portfolio Construction and Analysis",
          "Cross-Sectional Factor-Based Models and Trading Strategies",
          "The Fundamentals of Fundamental Factor Models",
          "Multifactor Equity Risk Models and Their Applications",
          "Multifactor Fixed Income Risk Models and Their Applications"
        ]
      },
      {
        "title": "Financial Econometrics",
        "chapters": [
          "Scope and Methods of Financial Econometrics",
          "Regression Analysis: Theory and Estimation",
          "Categorical and Dummy Variables in Regression Models",
          "Quantile Regression",
          "ARCH/GARCH Models in Applied Financial Econometrics",
          "Classification and Regression Trees and Their Use in Financial Modeling",
          "Applying Cointegration to Problems in Finance",
          "Nonlinearity and Nonlinear Econometric Models in Finance",
          "Robust Estimates of Betas and Correlations",
          "Working with High-Frequency Data"
        ]
      },
      {
        "title": "Financial Modeling Principles",
        "chapters": [
          "Milestones in Financial Modeling",
          "From Art to Financial Modeling",
          "Basic Data Description for Financial Modeling and Analysis",
          "Time Series Concepts, Representations, and Models",
          "Extracting Risk-Neutral Density Information from Options Market Prices"
        ]
      },
      {
        "title": "Financial Statement Analysis",
        "chapters": [
          "Financial Statements",
          "Financial Ratio Analysis",
          "Cash-Flow Analysis"
        ]
      },
      {
        "title": "Finite Mathematics for Financial Modeling",
        "chapters": [
          "Important Functions and Their Features",
          "Time Value of Money",
          "Fundamentals of Matrix Algebra",
          "Difference Equations",
          "Differential Equations",
          "Partial Differential Equations in Finance"
        ]
      },
      {
        "title": "Model Risk and Selection",
        "chapters": [
          "Model Risk",
          "Model Selection and Its Pitfalls",
          "Managing the Model Risk with the Methods of the Probabilistic Decision Theory",
          "Fat-Tailed Models for Risk Estimation"
        ]
      }
    ]
  },
  {
    "name": "Volume III",
    "sections": [
      {
        "title": "Mortgage-Backed Securities Analysis and Valuation",
        "chapters": [
          "Valuing Mortgage-Backed and Asset-Backed Securities",
          "The Active-Passive Decomposition Model for MBS",
          "Analysis of Nonagency Mortgage-Backed Securities",
          "Measurements of Prepayments for Residential Mortgage-Backed Securities",
          "Prepayments and Factors Influencing the Return of Principal for Residential Mortgage-Backed Securities"
        ]
      },
      {
        "title": "Operational Risk",
        "chapters": [
           "Operational Risk",
           "Operational Risk Models",
           "Modeling Operational Loss Distributions"
        ]
      },
      {
         "title": "Optimization Tools",
         "chapters": [
            "Introduction to Stochastic Programming and Its Applications to Finance",
            "Robust Portfolio Optimization"
         ]
      },
      {
         "title": "Probability Theory",
         "chapters": [
            "Concepts of Probability Theory",
            "Discrete Probability Distributions",
            "Continuous Probability Distributions",
            "Continuous Probability Distributions with Appealing Statistical Properties",
            "Continuous Probability Distributions Dealing with Extreme Events",
            "Stable and Tempered Stable Distributions",
            "Fat Tails, Scaling, and Stable Laws",
            "Copulas",
            "Applications of Order Statistics to Risk Management Problems"
         ]
      },
      {
         "title": "Risk Measures",
         "chapters": [
            "Measuring Interest Rate Risk: Effective Duration and Convexity",
            "Yield Curve Risk Measures",
            "Value-at-Risk",
            "Average Value-at-Risk",
            "Risk Measures and Portfolio Selection",
            "Back-Testing Market Risk Models",
            "Estimating Liquidity Risks",
            "Estimate of Downside Risk with Fat-Tailed and Skewed Models",
            "Moving Average Models for Volatility and Correlation, and Covariance Matrices"
         ]
      },
      {
         "title": "Software for Financial Modeling",
         "chapters": [
            "Introduction to Financial Model Building with MATLAB",
            "Introduction to Visual Basic for Applications"
         ]
      },
      {
         "title": "Stochastic Processes and Tools",
         "chapters": [
            "Stochastic Integrals",
            "Stochastic Differential Equations",
            "Stochastic Processes in Continuous Time",
            "Conditional Expectation and Change of Measure",
            "Change of Time Methods"
         ]
      },
      {
         "title": "Term Structure Modeling",
         "chapters": [
            "The Concept and Measures of Interest Rate Volatility",
            "Short-Rate Term Structure Models",
            "Static Term Structure Modeling in Discrete and Continuous Time",
            "The Dynamic Term Structure Model",
            "Essential Classes of Interest Rate Models and Their Use",
            "A Review of No Arbitrage Interest Rate Models"
         ]
      },
      {
         "title": "Trading Cost Models",
         "chapters": [
            "Modeling Market Impact Costs"
         ]
      },
      {
         "title": "Volatility",
         "chapters": [
            "Monte Carlo Simulation in Finance",
            "Stochastic Volatility"
         ]
      }
    ]
  }
]

with open(filepath, "r") as f:
    content = f.read()

lines = content.split('\n')
total_lines = len(lines)

items = []
for vol in structure:
    for sect in vol["sections"]:
        items.append({
            "type": "Section",
            "title": sect["title"],
            "volume": vol["name"],
            "section": sect["title"]
        })
        for chap in sect["chapters"]:
            items.append({
                "type": "Chapter",
                "title": chap,
                "volume": vol["name"],
                "section": sect["title"]
            })

title_map = {
    "Measurements of Prepayments for Residential Mortgage-Backed Securities": "Measurement of Prepayments for Residential Mortgage-Backed Securities"
}

# Start searching after the TOC.
current_line_idx = 200

# We need to be more robust.
# We will search sequentially.
# For "Operational Risk" (Section) vs "Operational Risk" (Chapter):
# The Section header comes first. The Chapter header comes second.
# We can trust sequential search.

for item in items:
    search_title = title_map.get(item["title"], item["title"])
    found = False
    
    # Special handling for "Operational Risk" Section
    # There are two headers.
    # We should ensure we are finding the correct one.
    # But since we scan sequentially, we should find the first one, then the second one.
    
    for i in range(current_line_idx, total_lines):
        line = lines[i].strip()
        
        if line == f"# {search_title}":
            item["start_line"] = i
            current_line_idx = i + 1
            found = True
            break
        
        if line == search_title:
            item["start_line"] = i
            current_line_idx = i + 1
            found = True
            break
            
    if not found:
        print(f"Warning: Could not find start for {item['type']}: {item['title']} (searched for {search_title})")
        item["start_line"] = -1

# Save files
for i, item in enumerate(items):
    if item["start_line"] == -1:
        continue
    
    end_line = total_lines
    for j in range(i + 1, len(items)):
        if items[j]["start_line"] != -1:
            end_line = items[j]["start_line"]
            break
    
    item_content = "\n".join(lines[item["start_line"]:end_line])
    
    if item["type"] == "Section":
        vol_dir = os.path.join(output_dir, item["volume"])
        sect_dir = os.path.join(vol_dir, item["title"].replace("/", "-"))
        os.makedirs(sect_dir, exist_ok=True)
        
        clean_text = item_content.replace(f"# {item['title']}", "").strip()
        # Filter out empty or whitespace only
        if len(clean_text) > 50:
            filename = os.path.join(sect_dir, "_Introduction.md")
            
            yaml = f"""---
title: "{item['title']} - Introduction"
tags:
  - {item['volume'].replace(" ", "")}
  - {item['title'].replace(" ", "_")}
aliases:
  - {item['title']} Intro
parent_folder:
  - {item['volume']}
subfolder:
  - {item['title']}
key_concepts:
cssclasses: academia
---

"""
            with open(filename, "w") as out:
                out.write(yaml + item_content)

    elif item["type"] == "Chapter":
        vol_dir = os.path.join(output_dir, item["volume"])
        sect_dir = os.path.join(vol_dir, item["section"].replace("/", "-"))
        os.makedirs(sect_dir, exist_ok=True)
        
        filename = os.path.join(sect_dir, f"{item['title'].replace('/', '-')}.md")
        
        tag_list = [item["volume"].replace(" ", ""), item["section"].replace(" ", "_")]
        concepts = [w for w in item["title"].split() if len(w) > 4]
        
        yaml = f"""---
title: "{item['title']}"
tags:
"""
        for t in tag_list:
            yaml += f"  - {t}\n"
        
        yaml += f"""aliases:
parent_folder:
  - {item['section']}
subfolder:
key_concepts:
"""
        for c in concepts:
            yaml += f"  - {c}\n"
            
        yaml += """cssclasses: academia
---

"""
        with open(filename, "w") as out:
            out.write(yaml + item_content)

print("Splitting complete.")
