---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Appendix I
linter-yaml-title-alias: Appendix I
---

# Appendix I

# Principal Components Analysis principal components analysis is concerned with understanding the structure of data on  $n$  correlated variables. The aim of the analysis is to replace the  $n$  variables by a smaller number of uncorrelated variables. In the example in Section 14.3, there are eight variables. These are the daily changes in the 1-year, 2-year, 3-year, 4-year, 5-year, 7-year, 10-year, and 30-year swap rates.

The first step in the analysis is to calculate a covariance matrix from the data. As explained in Section 9.3, this is an  $n \times n$  matrix where the  $(i,j)$  entry is the covariance between variable  $i$  and variable  $j$ . The entries on the diagonal (where  $i = j$ ) are variances.

The next step is to calculate the eigenvalues and eigenvectors for this matrix (see Appendix H). The eigenvectors are chosen to have length 1. (As explained in Appendix H, this means that the sum of the squares of their elements is 1.) The eigenvector corresponding to the highest eigenvalue is the first principal component; the eigenvector corresponding to the second highest eigenvalue is the second principal component; and so on. The principal components for the example in Section 14.3 are shown in Table 14.3.

The eigenvalue for the  $i$ th principal component, as a percentage of the sum of all the eigenvalues, is the percentage of the overall variance explained by the  $i$ th principal component. The square root of the  $i$ th eigenvalue is the standard deviation of the  $i$ th factor score (see Table 14.4).

Software for carrying out a principal components analysis is on the author's website.
