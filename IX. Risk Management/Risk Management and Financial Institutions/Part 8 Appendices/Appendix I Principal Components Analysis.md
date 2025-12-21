---
title: "Appendix I: Principal Components Analysis"
parent_directory: "Part 8 Appendices"
formatted: "2025-12-21 11:25:00 AM"
formatter_model: "kimi-k2-turbo"
cli-tool: "claude-code"
primary_tags:
  - principal components analysis
  - dimensionality reduction
  - factor analysis
secondary_tags:
  - covariance matrix
  - eigenvalues and eigenvectors
  - variance decomposition
  - factor scores
  - swap rate modeling
cssclasses: academia
---

# Appendix I: Principal Components Analysis

## Overview

Principal components analysis is concerned with understanding the structure of data on $n$ correlated variables.

```d2
direction: down

data_matrix: Data Matrix {
  shape: rectangle
  label: "n correlated variables\n(m observations × n variables)"
}

covariance_matrix: Covariance Matrix {
  shape: hexagon
  label: "n × n covariance matrix\nmeasures variable relationships"
}

eigen_analysis: Eigenvalue Analysis {
  shape: circle
  label: "Find eigenvalues & eigenvectors\nsort by eigenvalue magnitude"
}

principal_components: Principal Components {
  shape: rectangle
  label: "First PC: highest variance direction\nSecond PC: next highest variance\n(orthogonal to first PC)"
}

variance_explained: Variance Explained {
  shape: diamond
  label: "Eigenvalue_i / Sum(eigenvalues)\n= % variance explained by PC_i"
}

data_matrix -> covariance_matrix: "Calculate covariances"
covariance_matrix -> eigen_analysis: "Eigen decomposition"
eigen_analysis -> principal_components: "Extract components"
principal_components -> variance_explained: "Measure importance"
```

**Figure I.1: Principal Components Analysis Process Flow**

The goal is to reduce dimensionality while preserving most of the variance in the original data. The aim of the analysis is to replace the  $n$  variables by a smaller number of uncorrelated variables. In the example in Section 14.3, there are eight variables. These are the daily changes in the 1-year, 2-year, 3-year, 4-year, 5-year, 7-year, 10-year, and 30-year swap rates.

The first step in the analysis is to calculate a covariance matrix from the data. As explained in Section 9.3, this is an  $n \times n$  matrix where the  $(i,j)$  entry is the covariance between variable  $i$  and variable  $j$ . The entries on the diagonal (where  $i = j$ ) are variances.

The next step is to calculate the eigenvalues and eigenvectors for this matrix (see Appendix H). The eigenvectors are chosen to have length 1. (As explained in Appendix H, this means that the sum of the squares of their elements is 1.) The eigenvector corresponding to the highest eigenvalue is the first principal component; the eigenvector corresponding to the second highest eigenvalue is the second principal component; and so on. The principal components for the example in Section 14.3 are shown in Table 14.3.

The eigenvalue for the  $i$ th principal component, as a percentage of the sum of all the eigenvalues, is the percentage of the overall variance explained by the  $i$ th principal component. The square root of the  $i$ th eigenvalue is the standard deviation of the  $i$ th factor score (see Table 14.4).

Software for carrying out a principal components analysis is on the author's website.
