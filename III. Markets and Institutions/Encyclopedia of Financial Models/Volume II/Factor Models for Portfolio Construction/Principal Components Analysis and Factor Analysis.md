
# Principal Components Analysis and Factor Analysis

SERGIO M. FOCARDL, PhD

Partner, The Intertek Group

FRANK I. FABOZZI, PhD, CFA, CPA

Professor of Finance, EDHEC Business School

Abstract: In investment management, multifactor risk modeling is the most common application of financial modeling. Multifactor risk models, or simply factor models, are linear regressions over a number of variables called factors. Factors can be exogenous variables or abstract variables formed by portfolios. Exogenous factors (or known factors) can be identified from traditional fundamental analysis or economic theory from macroeconomic factors. Abstract factors, also called unidentified or latent factors, can be determined with factor analysis or principal component analysis. Principal component analysis identifies the largest eigenvalues of the variance-covariance matrix or the correlation matrix. The largest eigenvalues correspond to eigenvectors that identify the entire market and sectors that correspond to industry classification. Factor analysis can be used to identify the structure of the latent factors.

Principal component analysis (PCA) and factor analysis are statistical tools that allow a modeler to (1) reduce the number of variables in a model (i.e., to reduce the dimensionality), and (2) identify if there is structure in the relationships between variables (i.e., to classify variables). In this entry, we explain PCA and factor analysis. We illustrate and compare both techniques using a sample of stocks. Because of its use in the estimation of factor models, we begin with a brief discussion of factor models.

# FACTOR MODELS

Factor models are statistical models that try to explain complex phenomena through a small number of basic causes or factors. Factor models serve two main purposes: (1) They reduce the dimensionality of models to make estimation possible; and/or (2) they find the true causes that drive data. Factor models were introduced by Charles Spearman (1904), a leading psychologist who developed many concepts of modern psychometrics.

Spearman was particularly interested in understanding how to measure human intellectual abilities. In his endeavor to do so, he developed the first factor model, known as the Spearman model, a model that explains intellectual abilities through one common factor, the famous "general intelligence"  $g$  factor, plus another factor  $s$ , which is specific to each distinct ability. Spearman was persuaded that the factor  $g$  had an overwhelming importance. That is, he thought that any mental ability can be explained quantitatively through a common intelligence factor. According to this theory, outstanding achievements of, say, a painter, a novelist, and a scientist can all be ascribed to a common general intelligence factor plus a small contribution from specific factors.

Some 30 years later, Louis Leon Thurstone (1938) developed the first true multifactor model of intelligence. Thurstone was among the first to propose and demonstrate that there are numerous ways in which a person can be intelligent. Thurstone's multiple-factors theory identified seven primary mental abilities.

One might question whether factors are only statistical artifacts or if they actually correspond to any reality. In the modern operational interpretation of science, a classification or a factor is "real" if we can make useful predictions using that classification. For example, if the Spearman theory is correct, we can predict that a highly intelligent person can obtain outstanding results in any field. Thus, a novelist could have obtained outstanding results in science. However, if many distinct mental factors are needed, people might be able to achieve great results in some field but be unable to excel in others.
In finance, factor models are typically applied to time series. The objective is to explain the behavior of a large number of stochastic processes, typically price, returns, or rate processes, in terms of a small number of factors. These factors are themselves stochastic processes. In order to simplify both modeling and estimation, most factor models employed in financial econometrics are static models. This means that time series are assumed to be sequences of temporally independent and identically distributed (IID) random variables so that the series can be thought of as independent samples extracted from one common distribution.

In financial econometrics, factor models are needed not only to explain data but to make estimation feasible. Given the large number of stocks presently available—in excess of 15,000—the estimation of correlations cannot be performed without simplifications. Widely used ensembles such as the S&P 500 or the MSCI Europe include hundreds of stocks and therefore hundreds of thousands of individual correlations. Available samples are insufficient to estimate this large number of correlations. Hence factor models are able to explain all pairwise correlations in terms of a much smaller number of correlations between factors.

# Linear Factor Models Equations

Linear factor models are regression models of the following type:

$$
X _ {i} = \alpha_ {i} + \sum_ {j = 1} ^ {K} \beta_ {i j} f _ {j} + \varepsilon_ {i}
$$ where


$X_{i} = a$  set of  $N$  random variables

$f_{j} = a$  set of  $K$  common factors

$\varepsilon_{i} =$  the noise terms associated with each variable  $X_{i}$

The  $\beta_{ij}$ 's are called the factor loadings or factor sensitivities; they express the influence of the  $j$ -th factor on the  $i$ -th variable.

In this formulation, factor models are essentially static models, where the variables and the factors are random variables without any explicit dependence on time. It is possible to add a dynamic to both the variables and the factors, but that is beyond the scope of our basic introduction in this entry.

As mentioned above, one of the key objectives of factor models is to reduce the dimensionality of the covariance matrix so that the covariances between the variables  $X_{i}$  are determined only by the covariances between factors. Suppose that the noise terms are mutually uncorrelated, so that

$$
E (\varepsilon_ {i} \varepsilon_ {j}) = \left\{ \begin{array}{l l} 0, & i \neq j \\ \sigma_ {i} ^ {2}, & i \neq j \end{array} \right.
$$ and that the noise terms are uncorrelated with the factors, that is,  $E(\varepsilon_{ij}f_j) = 0$ ,  $\forall i,j$ . Suppose also that both factors and noise terms have a zero mean, so that  $E(X_i) = \alpha_i$ . Factor models that respect the above constraints are called strict factor models.


Let's compute the covariances of a strict factor model:

$$
\begin{array}{l} E \left(\left(X _ {i} - \alpha_ {i}\right) \left(X _ {j} - \alpha_ {j}\right)\right) \\ = E \left(\left(\sum_ {s = 1} ^ {K} \beta_ {i s} f _ {s} + \varepsilon_ {i}\right) \left(\sum_ {t = 1} ^ {K} \beta_ {j t} f _ {t} + \varepsilon_ {j}\right)\right) \\ = E \left(\left(\sum_ {s = 1} ^ {K} \beta_ {i s} f _ {s}\right) \left(\sum_ {t = 1} ^ {K} \beta_ {j t} f _ {t}\right)\right) + E \left(\left(\sum_ {s = 1} ^ {K} \beta_ {i s} f _ {s}\right) (\varepsilon_ {j})\right) \\ + E \left(\left(\varepsilon_ {i}\right) \sum_ {t = 1} ^ {K} \beta_ {j t} f _ {t}\right) + E \left(\varepsilon_ {i} \varepsilon_ {j}\right) \\ = \sum_ {s, t} \beta_ {i s} E \left(f _ {s} f _ {t}\right) \beta_ {j t} + \mathrm {E} \left(\varepsilon_ {i} \varepsilon_ {j}\right) \\ \end{array}
$$

From this expression we can see that the variances and covariances between the variables  $X_{i}$  depend only on the covariances between the factors and the variances of the noise term.

We can express the above compactly in matrix form. Let's write a factor model in matrix form as follows:


$$
X = \alpha + \beta f + \varepsilon
$$ where


$\mathbf{X} = (X_{1},\ldots ,X_{N})^{\prime}$  is the  $N$  -vector of variables

$\alpha = (\alpha_{1},\dots ,\alpha_{N})^{\prime} =$  the  $N$  -vector of means

$\varepsilon = (\varepsilon_{1},\dots ,\varepsilon_{N})^{\prime} =$  the  $N$  -vector of idiosyncratic noise terms

$\mathbf{f} = (f_{1},\dots ,f_{K})^{\prime}$  is the  $K$  -vector of factors

$$
\boldsymbol {\beta} = \left[ \begin{array}{c c c} \boldsymbol {\beta} _ {1 1} & \dots & \boldsymbol {\beta} _ {1 K} \\ \vdots & \ddots & \vdots \\ \boldsymbol {\beta} _ {N 1} & \dots & \boldsymbol {\beta} _ {N K} \end{array} \right]
$$

$= \mathrm{the}N\times K$  matrix of factor loadings.

Let's define the following:

$\Sigma =$  the  $N\times N$  variance-covariance matrix of the variables  $\mathbf{X}$

$\Omega =$  the  $K\times K$  variance-covariance matrix of the factors

$\Psi = N\times N$  variance-covariance matrix of the error terms  $\varepsilon$

If we assume that our model is a strict factor model, the matrix  $\Psi$  will be a diagonal matrix with the noise variances on the diagonal, that is,

$$
\Psi = \left( \begin{array}{c c c} {\psi_ {1} ^ {2}} & \dots & 0 \\ {\vdots} & \ddots & \vdots \\ {0} & \dots & {\psi_ {N} ^ {2}} \end{array} \right)
$$

Under the above assumptions, we can express the variance-covariance matrix of the variables in the following way:

$$
\Sigma = \beta \Omega \beta^ {\prime} + \Psi
$$

In practice, the assumption of a strict factor model might be too restrictive. In applied work, factor models will often be approximate factor models. (See, for example, Bai, 2003.) Approximate factor models allow idiosyncratic terms to be weakly correlated among themselves and with the factors.


As many different factor models have been proposed for explaining stock returns, an important question is whether a factor model is fully determined by the observed time series. In a strict factor model, factors are determined up to a nonsingular linear transformation. In fact, the above matrix notation makes it clear that the factors, which are hidden, nonobservable variables, are not fully determined by the above factor model. That is, an estimation procedure cannot univocally determine the hidden factors and the factor loadings from the observable variables  $\mathbf{X}$ . In fact, suppose that we multiply the factors by any nonsingular matrix  $\mathbf{R}$ . We obtain other factors

$$
\mathbf {g} = \mathbf {R f}
$$ with a covariance matrix


$$
\boldsymbol {\Omega} _ {\mathrm {g}} = \mathbf {R} \boldsymbol {\Omega} \mathbf {R} ^ {- 1}
$$ and we can write a new factor model:


$$
\begin{array}{l} \mathbf {X} = \alpha + \beta \mathbf {f} + \varepsilon = \alpha + \beta \mathbf {R} ^ {- 1} \mathbf {R} \mathbf {f} \\ + \varepsilon = \alpha + \beta_ {g} g + \varepsilon \\ \end{array}
$$

In order to solve this indeterminacy, we can always choose the matrix  $\mathbf{R}$  so that the factors  $\mathbf{g}$  are a set of orthonormal variables, that is, uncorrelated variables (the orthogonality condition) with unit variance (the normality condition). In order to make the model uniquely identifiable, we can stipulate that factors must be a set of orthonormal variables and that, in addition, the matrix of factor loadings is diagonal. Under this additional assumption, a strict factor model is called a normal factor model. Note explicitly that under this assumption, factors are simply a set of standardized independent variables. The model is still undetermined under rotation, that is multiplication by any nonsingular matrix such that  $\mathbf{RR}' = \mathbf{I}$ .

In summary, a set of variables has a normal factor representation if it is represented by the following factor model:

$$
\mathbf {X} = \alpha + \beta \mathbf {f} + \varepsilon
$$ where factors are orthonormal variables and noise terms are such that the covariance matrix can be represented as follows:


$$
\Sigma = \beta \beta^ {\prime} + \Psi
$$ where  $\beta$  is the diagonal matrix of factor loadings and  $\Psi$  is a diagonal matrix.


How can we explain the variety of factor models proposed given that a strict factor model could be uniquely identified up to a factor linear transformation? As mentioned, the assumptions underlying strict factor models are often too restrictive and approximate factor models have to be adopted. Approximate factor models are uniquely identifiable only in the limit of an infinite number of series. The level of approximation is implicit in practical models of returns.

# Types of Factors and Their Estimation

In financial econometrics, the factors used in factor models can belong to three different categories: macroeconomic factors, fundamental factors, and statistical factors. The first two are factor models that deal with known factors and will not be discussed here.

Note that factors defined through statistical analysis are linear combinations of the variables. That is, if the variables are asset returns, factors are portfolios of assets. They are hidden variables insofar as one does not know the weights of the linear combinations. However, once the estimation process is completed, statistical factors are always linear combinations of variables. If data have a strict factor structure, we can always construct linear combinations of the series (e.g., portfolios of returns) that are perfectly correlated with a set of factors. Often they can be given important economic interpretations. In the following sections we describe the theory and estimation methods of principal components analysis and factor analysis.

# PRINCIPAL COMPONENTS ANALYSIS

Principal components analysis (PCA) was introduced by Harold Hotelling (1933). Hotelling proposed PCA as a way to determine factors with statistical learning techniques when factors are not exogenously given. Given a variance-covariance matrix, one can determine factors using the technique of PCA.

PCA implements a dimensionality reduction of a set of observations. The concept of PCA is the following. Consider a set of  $n$  stationary time series  $X_{i}$ , for example the 500 series of returns of the S&P 500. Consider next a linear combination of these series, that is, a portfolio of securities. Each portfolio  $P$  is identified by an  $n$ -vector of weights  $\omega_{P}$  and is characterized by a variance  $\sigma_{p}^{2}$ . In general, the variance  $\sigma_{p}^{2}$  depends on the portfolio's weights  $\omega_{P}$ . Lastly, consider a normalized portfolio, which has the largest possible variance. In this context, a normalized portfolio is a portfolio such that the squares of the weights sum to one.

If we assume that returns are IID sequences, jointly normally distributed with variance-covariance matrix  $\sigma$ , a lengthy direct calculation demonstrates that each portfolio's return will be normally distributed with variance

$$
\sigma_ {p} ^ {2} = \boldsymbol {\omega} _ {P} ^ {T} \boldsymbol {\sigma} \boldsymbol {\omega} _ {P}
$$

The normalized portfolio of maximum variance can therefore be determined in the following way:

$$
\text {M a x i m i z e} \omega_ {P} ^ {T} \sigma \omega_ {P}
$$ subject to the normalization condition


$$
\pmb {\omega} _ {P} ^ {T} \pmb {\omega} _ {\mathbf {P}} = 1
$$ where the product is a scalar product. It can be demonstrated that the solution of this problem is the eigenvector  $\omega_{1}$  corresponding to the largest eigenvalue  $\lambda_{1}$  of the variance-covariance matrix  $\sigma$ . As  $\sigma$  is a variance-covariance matrix, the eigenvalues are all real.


Consider next the set of all normalized portfolios orthogonal to  $\omega_{1}$ , that is, portfolios com pletely uncorrelated with  $\omega_{1}$ . These portfolios are identified by the following relationship:


$$
\boldsymbol {\omega} _ {1} ^ {T} \boldsymbol {\omega} _ {P} = \boldsymbol {\omega} _ {P} ^ {T} \boldsymbol {\omega} _ {1} = 0
$$

We can repeat the previous reasoning. Among this set, the portfolio of maximum variance is given by the eigenvector  $\omega_{2}$  corresponding to the second largest eigenvalue  $\lambda_{2}$  of the variance-covariance matrix  $\sigma$ . If there are  $n$  distinct eigenvalues, we can repeat this process  $n$  times. In this way, we determine the  $n$  portfolios  $P_{i}$  of maximum variance. The weights of these portfolios are the orthonormal eigenvectors of the variance-covariance matrix  $\sigma$ . Note that each portfolio is a time series that is a linear combination of the original time series  $X_{i}$ . The coefficients are the portfolios' weights.

These portfolios of maximum variance are all mutually uncorrelated. It can be demonstrated that we can recover all the original return time series as linear combinations of these portfolios:

$$
X _ {j} = \sum_ {i = 1} ^ {n} \alpha_ {j, i} P _ {i}
$$

Thus far we have succeeded in replacing the original  $n$  correlated time series  $X_{j}$  with  $n$  uncorrelated time series  $P_{i}$  with the additional insight that each  $X_{j}$  is a linear combination of the  $P_{i}$ . Suppose now that only  $p$  of the portfolios  $P_{i}$  have a significant variance, while the remaining  $n - p$  have very small variances. We can then implement a dimensionality reduction by choosing only those portfolios whose variance is significantly different from zero. Let's call these portfolios factors  $F$ .

It is clear that we can approximately represent each series  $X_{i}$  as a linear combination of the factors plus a small uncorrelated noise. In fact we can write

$$
X _ {j} = \sum_ {i = 1} ^ {p} \alpha_ {j, i} F _ {i} + \sum_ {i = p + 1} ^ {n} \alpha_ {j, i} P _ {i} = \sum_ {i = 1} ^ {p} \alpha_ {j, i} F _ {i} + \varepsilon_ {j}
$$ where the last term is a noise term. Therefore to implement PCA one computes the eigenvalues and the eigenvectors of the variance-covariance matrix and chooses the eigenvalues


significantly different from zero. The corresponding eigenvectors are the weights of portfolios that form the factors. Criteria of choice are somewhat arbitrary.

Suppose, however, that there is a strict factor structure, which means that returns follow a strict factor model as defined earlier in this entry:

$$
\mathrm {r} = \mathrm {a} + \beta \mathbf {f} + \varepsilon
$$

The matrix  $\beta$  can be obtained diagonalizing the variance-covariance matrix. In general, the structure of factors will not be strict and one will try to find an approximation by choosing only the largest eigenvalues.

Note that PCA works either on the variance-covariance matrix or on the correlation matrix. The technique is the same but results are generally different. PCA applied to the variance-covariance matrix is sensitive to the units of measurement, which determine variances and covariances. This observation does not apply to returns, which are dimensionless quantities. However, if PCA is applied to prices and not to returns, the currency in which prices are expressed matters; one obtains different results in different currencies. In these cases, it might be preferable to work with the correlation matrix.

We have described PCA in the case of time series, which is the relevant case in econometrics. However, PCA is a generalized dimensionality reduction technique applicable to any set of multidimensional observations. It admits a simple geometrical interpretation, which can be easily visualized in the three-dimensional case. Suppose a cloud of points in the three-dimensional Euclidean space is given. PCA finds the planes that cut the cloud of points in such a way as to obtain the maximum variance.

# Illustration of Principal Components Analysis

Let's now show how PCA is performed. To do so, we used monthly observations for the following 10 stocks: Campbell Soup, General

Dynamics, Sun Microsystems, Hilton, Martin Marietta, Coca-Cola, Northrop Grumman, Mercury Interactive, Amazon.com, and United Technologies for the period from December 2000 to November 2005. Figure 1 shows the graphics of the 10 return processes.

As explained earlier, performing PCA is equivalent to determining the eigenvalues and eigenvectors of the covariance matrix or of the correlation matrix. The two matrices yield different results. We perform both exercises, estimating the principal components using separately the covariance and the correlation matrices of the return processes. We estimate the covariance with the empirical covariance matrix. Recall that the empirical covariance  $\sigma_{ij}$  between variables  $(X_i,X_j)$  is defined as follows:

$$
\hat {\sigma} _ {i j} = \frac {1}{T} \sum_ {t = 1} ^ {T} (X _ {i} (t) - \bar {X} _ {t}) (X _ {j} (t) - \bar {X} _ {j})
$$

$$
\bar {X} _ {i} = \frac {1}{T} \sum_ {t = 1} ^ {T} X _ {i} (t), \bar {X} _ {j} = \frac {1}{T} \sum_ {t = 1} ^ {T} X _ {j} (t)
$$

Table 1 shows the covariance matrix.

Normalizing the covariance matrix with the standard deviations, we obtain the correlation matrix. Table 2 shows the correlation matrix. Note that the diagonal elements of the correlation matrix are all equal to one. In addition, a number of entries in the covariance matrix are close to zero. Normalization by the product of standard deviations makes the same elements larger.

Let's now proceed to perform PCA using the covariance matrix. We have to compute the eigenvalues and the eigenvectors of the covariance matrix. Table 3 shows the eigenvectors (panel A) and the eigenvalues (panel B) of the covariance matrix.

Each column of panel A of Table 3 represents an eigenvector. The corresponding eigenvalue is shown in panel B. Eigenvalues are listed in descending order; the corresponding eigenvectors go from left to right in the matrix of eigenvectors. Thus the leftmost eigenvector corresponds to the largest eigenvalue. Eigenvectors are not uniquely determined. In fact, multiplying any eigenvector for a real constant yields another eigenvector. The eigenvectors in Table 3 are normalized in the sense that the sum of the squares of each component is equal to 1. It can be easily checked that the sum of the squares of the elements in each column is equal to 1. This still leaves an indeterminacy, as we can change the

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/cfb463a1-2282-4dad-842c-22b6b264a8a9/4a9a62b91744655d7dc8f8191728dc647f0b3126f5d1fba38e0accd325f70258.jpg)
Figure 1 Graphics of the 10 Stock Return Processes


sign of the eigenvector without affecting this normalization.

As explained earlier, if we form portfolios whose weights are the eigenvectors, we can form 10 portfolios that are orthogonal (i.e., uncorrelated). These orthogonal portfolios are called principal components. The variance of each principal component will be equal to the corresponding eigenvector. Thus the first principal

Table 1 The Covariance Matrix of 10 Stock Returns

<table><tr><td></td><td>SUNW</td><td>AMZN</td><td>MERQ</td><td>GD</td><td>NOC</td><td>CPB</td><td>KO</td><td>MLM</td><td>HLT</td><td>UTX</td></tr><tr><td>SUNW</td><td>0.02922</td><td>0.017373</td><td>0.020874</td><td>3.38E-05</td><td>-0.00256</td><td>-3.85E-05</td><td>0.000382</td><td>0.004252</td><td>0.006097</td><td>0.005467</td></tr><tr><td>AMZN</td><td>0.017373</td><td>0.032292</td><td>0.020262</td><td>5.03E-05</td><td>-0.00277</td><td>0.000304</td><td>0.001507</td><td>0.001502</td><td>0.010138</td><td>0.007483</td></tr><tr><td>MERQ</td><td>0.020874</td><td>0.020262</td><td>0.0355</td><td>-0.00027</td><td>-0.0035</td><td>-0.00011</td><td>0.003541</td><td>0.003878</td><td>0.007075</td><td>0.008557</td></tr><tr><td>GD</td><td>3.38E-05</td><td>5.03E-05</td><td>-0.00027</td><td>9.27E-05</td><td>0.000162</td><td>2.14E-05</td><td>-0.00015</td><td>3.03E-05</td><td>-4.03E-05</td><td>-3.32E-05</td></tr><tr><td>NOC</td><td>-0.00256</td><td>-0.00277</td><td>-0.0035</td><td>0.000162</td><td>0.010826</td><td>3.04E-05</td><td>-0.00097</td><td>0.000398</td><td>-0.00169</td><td>-0.00205</td></tr><tr><td>CPB</td><td>-3.85E-05</td><td>0.000304</td><td>-0.00011</td><td>2.14E-05</td><td>3.04E-05</td><td>7.15E-05</td><td>2.48E-05</td><td>-7.96E-06</td><td>-9.96E-06</td><td>-4.62E-05</td></tr><tr><td>KO</td><td>0.000382</td><td>0.001507</td><td>0.003541</td><td>-0.00015</td><td>-0.00097</td><td>2.48E-05</td><td>0.004008</td><td>-9.49E-05</td><td>0.001485</td><td>0.000574</td></tr><tr><td>MLM</td><td>0.004252</td><td>0.001502</td><td>0.003878</td><td>3.03E-05</td><td>0.000398</td><td>-7.96E-06</td><td>-9.49E-05</td><td>0.004871</td><td>0.00079</td><td>0.000407</td></tr><tr><td>HLT</td><td>0.006097</td><td>0.010138</td><td>0.007075</td><td>-4.03E-05</td><td>-0.00169</td><td>-9.96E-06</td><td>0.001485</td><td>0.00079</td><td>0.009813</td><td>0.005378</td></tr><tr><td>UTX</td><td>0.005467</td><td>0.007483</td><td>0.008557</td><td>-3.32E-05</td><td>-0.00205</td><td>-4.62E-05</td><td>0.000574</td><td>0.000407</td><td>0.005378</td><td>0.015017</td></tr></table>

Note: Sun Microsystems (SUNW), Amazon.com (AMZN), Mercury Interactive (MERQ), General Dynamics (GD), Northrop Grumman (NOC), Campbell Soup (CPB), Coca-Cola (KO), Martin Marietta (MLM), Hilton (HLT), United Technologies (UTX).

Table 2 The Correlation Matrix of the Same 10 Return Processes

<table><tr><td></td><td>SUNW</td><td>AMZN</td><td>MERQ</td><td>GD</td><td>NOC</td><td>CPB</td><td>KO</td><td>MLM</td><td>HLT</td><td>UTX</td></tr><tr><td>SUNW</td><td>1</td><td>0.56558</td><td>0.64812</td><td>0.020565</td><td>-0.14407</td><td>-0.02667</td><td>0.035276</td><td>0.35642</td><td>0.36007</td><td>0.26097</td></tr><tr><td>AMZN</td><td>0.56558</td><td>1</td><td>0.59845</td><td>0.029105</td><td>-0.14815</td><td>0.20041</td><td>0.1325</td><td>0.11975</td><td>0.56951</td><td>0.33983</td></tr><tr><td>MERQ</td><td>0.64812</td><td>0.59845</td><td>1</td><td>-0.14638</td><td>-0.17869</td><td>-0.06865</td><td>0.29688</td><td>0.29489</td><td>0.37905</td><td>0.37061</td></tr><tr><td>GD</td><td>0.020565</td><td>0.029105</td><td>-0.14638</td><td>1</td><td>0.16217</td><td>0.26307</td><td>-0.24395</td><td>0.045072</td><td>-0.04227</td><td>-0.02817</td></tr><tr><td>NOC</td><td>-0.14407</td><td>-0.14815</td><td>-0.17869</td><td>0.16217</td><td>1</td><td>0.034519</td><td>-0.14731</td><td>0.054818</td><td>-0.16358</td><td>-0.16058</td></tr><tr><td>CPB</td><td>-0.02667</td><td>0.20041</td><td>-0.06865</td><td>0.26307</td><td>0.034519</td><td>1</td><td>0.046329</td><td>-0.01349</td><td>-0.0119</td><td>-0.04457</td></tr><tr><td>KO</td><td>0.035276</td><td>0.1325</td><td>0.29688</td><td>-0.24395</td><td>-0.14731</td><td>0.046329</td><td>1</td><td>-0.02147</td><td>0.23678</td><td>0.07393</td></tr><tr><td>MLM</td><td>0.35642</td><td>0.11975</td><td>0.29489</td><td>0.045072</td><td>0.054818</td><td>-0.01349</td><td>-0.02147</td><td>1</td><td>0.11433</td><td>0.047624</td></tr><tr><td>HLT</td><td>0.36007</td><td>0.56951</td><td>0.37905</td><td>-0.04227</td><td>-0.16358</td><td>-0.0119</td><td>0.23678</td><td>0.11433</td><td>1</td><td>0.44302</td></tr><tr><td>UTX</td><td>0.26097</td><td>0.33983</td><td>0.37061</td><td>-0.02817</td><td>-0.16058</td><td>-0.04457</td><td>0.07393</td><td>0.047624</td><td>0.44302</td><td>1</td></tr></table> component (i.e., the portfolio corresponding to the first eigenvalue), will have the maximum possible variance and the last principal component (i.e., the portfolio corresponding to the last eigenvalue) will have the smallest variance. Figure 2 shows the graphics of the principal components of maximum and minimum variance.

Note: Sun Microsystems (SUNW), Amazon.com (AMZN), Mercury Interactive (MERQ), General Dynamics (GD), Northrop Grumman (NOC), Campbell Soup (CPB), Coca-Cola (KO), Martin Marietta (MLM), Hilton (HLT), United Technologies (UTX).


The 10 principal components thus obtained are linear combinations of the original series,  $\mathbf{X} = (X_{1},\ldots ,X_{N})^{\prime}$  that is, they are obtained by multiplying  $\mathbf{X}$  by the matrix of the eigenvectors. If the eigenvalues and the corresponding eigenvectors are all distinct, as it is the case in our illustration, we can apply the inverse

Table 3 Eigenvectors and Eigenvalues of the Covariance Matrix

<table><tr><td colspan="11">Panel A: Eigenvectors</td></tr><tr><td></td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td><td>8</td><td>9</td><td>10</td></tr><tr><td>1</td><td>-0.50374</td><td>0.50099</td><td>0.28903</td><td>-0.59632</td><td>-0.01824</td><td>-0.01612</td><td>0.22069</td><td>-0.08226</td><td>0.002934</td><td>-0.00586</td></tr><tr><td>2</td><td>-0.54013</td><td>-0.53792</td><td>0.51672</td><td>0.22686</td><td>-0.06092</td><td>0.25933</td><td>-0.10967</td><td>-0.12947</td><td>0.020253</td><td>0.016624</td></tr><tr><td>3</td><td>-0.59441</td><td>0.32924</td><td>-0.4559</td><td>0.52998</td><td>0.051976</td><td>0.015346</td><td>0.010496</td><td>0.21483</td><td>-0.01809</td><td>-0.00551</td></tr><tr><td>4</td><td>0.001884</td><td>-0.00255</td><td>0.018107</td><td>-0.01185</td><td>0.013384</td><td>0.01246</td><td>-0.01398</td><td>0.01317</td><td>-0.86644</td><td>0.4981</td></tr><tr><td>5</td><td>0.083882</td><td>0.10993</td><td>0.28331</td><td>0.19031</td><td>0.91542</td><td>-0.06618</td><td>0.14532</td><td>-0.02762</td><td>0.011349</td><td>-0.00392</td></tr><tr><td>6</td><td>-0.00085</td><td>-0.01196</td><td>0.016896</td><td>0.006252</td><td>-0.00157</td><td>0.01185</td><td>-0.00607</td><td>-0.02791</td><td>-0.49795</td><td>-0.86638</td></tr><tr><td>7</td><td>-0.0486</td><td>-0.02839</td><td>-0.1413</td><td>0.19412</td><td>-0.08989</td><td>-0.35435</td><td>0.31808</td><td>-0.8387</td><td>-0.01425</td><td>0.027386</td></tr><tr><td>8</td><td>-0.07443</td><td>0.19009</td><td>0.013485</td><td>-0.06363</td><td>0.11133</td><td>-0.22666</td><td>-0.90181</td><td>-0.27739</td><td>0.010908</td><td>0.002932</td></tr><tr><td>9</td><td>-0.20647</td><td>-0.36078</td><td>-0.01067</td><td>-0.1424</td><td>0.038221</td><td>-0.82197</td><td>0.052533</td><td>0.35591</td><td>-0.01155</td><td>-0.01256</td></tr><tr><td>10</td><td>-0.20883</td><td>-0.41462</td><td>-0.5835</td><td>-0.46223</td><td>0.3649</td><td>0.27388</td><td>-0.02487</td><td>-0.14688</td><td>0.001641</td><td>-0.00174</td></tr><tr><td colspan="11">Panel B: Eigenvalues</td></tr><tr><td>1</td><td>0.0783</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>2</td><td>0.0164</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>3</td><td>0.0136</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>4</td><td>0.0109</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>5</td><td>0.0101</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>6</td><td>0.0055</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>7</td><td>0.0039</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>8</td><td>0.0028</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>9</td><td>0.0001</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>10</td><td>0.0001</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></table> transformation and recover the  $\mathbf{X}$  as linear combinations of the principal components.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/cfb463a1-2282-4dad-842c-22b6b264a8a9/85e82b67e3d06e907fcfa93913c7b5d6da7813b8b032cc06dbccc6f435a889e4.jpg)
Figure 2 Graphic of the Portfolios of Maximum and Minimum Variance Based on the Covariance Matrix


PCA is interesting if, in using only a small number of principal components, we nevertheless obtain a good approximation. That is, we use PCA to determine principal components but we use only those principal components that have a large variance as factors of a factor model. Stated otherwise, we regress the original series  $\mathbf{X}$  onto a small number of principal components. In this way, PCA implements a dimensionality reduction as it allows one to retain only a small number of components. By choosing as factors the components with the largest variance, we can explain a large portion of the total variance of  $\mathbf{X}$ .

Table 4 shows the total variance explained by a growing number of components. Thus the first component explains  $55.2784\%$  of the total variance, the first two components explain  $66.8507\%$  of the total variance, and so on. Obviously 10 components explain  $100\%$  of the total variance. The second, third, and fourth columns of Table 5 show the residuals of the Sun Microsystem return process with 1, 5, and all 10 components, respectively. There is a large gain from 1 to 5, while the gain from 5 to all 10 components is marginal.


Table 4 Percentage of the Total Variance Explained by a Growing Number of Components Based on the Covariance Matrix

<table><tr><td>Principal Component</td><td>Percentage of Total Variance Explained</td></tr><tr><td>1</td><td>55.2784\%</td></tr><tr><td>2</td><td>66.8508</td></tr><tr><td>3</td><td>76.4425</td></tr><tr><td>4</td><td>84.1345</td></tr><tr><td>5</td><td>91.2774</td></tr><tr><td>6</td><td>95.1818</td></tr><tr><td>7</td><td>97.9355</td></tr><tr><td>8</td><td>99.8982</td></tr><tr><td>9</td><td>99.9637</td></tr><tr><td>10</td><td>100.0000</td></tr></table>

Table 5 Residuals of the Sun Microsytem Return Process with 1, 5, and All Components Based on the Covariance Matrix and the Correlation Matrix

<table><tr><td rowspan="2">Month/Year</td><td colspan="3">Residuals Based on Covariance Matrix</td><td colspan="3">Residuals Based on Correlation Matrix</td></tr><tr><td>1 Principal Component</td><td>5 Principal Components</td><td>10 Principal Components</td><td>1 Principal Component</td><td>5 Principal Components</td><td>10 Principal Components</td></tr><tr><td>Dec. 2000</td><td>0.069044</td><td>0.018711</td><td>1.53E-16</td><td>0.31828</td><td>0.61281</td><td>-2.00E-15</td></tr><tr><td>Jan. 2001</td><td>-0.04723</td><td>-0.02325</td><td>1.11E-16</td><td>-0.78027</td><td>-0.81071</td><td>1.78E-15</td></tr><tr><td>Feb. 2001</td><td>-0.03768</td><td>0.010533</td><td>-1.11E-16</td><td>-0.47671</td><td>0.04825</td><td>2.22E-16</td></tr><tr><td>March 2001</td><td>-0.16204</td><td>-0.02016</td><td>2.50E-16</td><td>-0.47015</td><td>-0.82958</td><td>-2.78E-15</td></tr><tr><td>April 2001</td><td>-0.00819</td><td>-0.00858</td><td>-7.63E-17</td><td>-0.32717</td><td>-0.28034</td><td>-5.00E-16</td></tr><tr><td>May 2001</td><td>0.048814</td><td>-0.00399</td><td>2.08E-17</td><td>0.36321</td><td>0.016427</td><td>7.22E-16</td></tr><tr><td>June 2001</td><td>0.21834</td><td>0.025337</td><td>-2.36E-16</td><td>1.1437</td><td>1.37</td><td>7.94E-15</td></tr><tr><td>July 2001</td><td>-0.03399</td><td>0.02732</td><td>1.11E-16</td><td>-0.7547</td><td>0.35591</td><td>1.11E-15</td></tr><tr><td>Aug. 2001</td><td>0.098758</td><td>-0.00146</td><td>2.22E-16</td><td>1.0501</td><td>0.19739</td><td>-8.88E-16</td></tr><tr><td>Sept. 2001</td><td>0.042674</td><td>0.006381</td><td>-5.55E-17</td><td>0.40304</td><td>0.28441</td><td>2.00E-15</td></tr><tr><td>Oct. 2001</td><td>0.038679</td><td>-0.00813</td><td>-5.55E-17</td><td>0.50858</td><td>0.17217</td><td>4.44E-16</td></tr><tr><td>Nov. 2001</td><td>-0.11967</td><td>-0.01624</td><td>1.11E-16</td><td>-0.89512</td><td>-0.8765</td><td>-7.77E-16</td></tr><tr><td>Dec. 2001</td><td>-0.19192</td><td>0.030744</td><td>1.67E-16</td><td>-1.001</td><td>0.047784</td><td>-1.55E-15</td></tr><tr><td>Jan. 2002</td><td>-0.13013</td><td>-0.00591</td><td>5.55E-17</td><td>-1.1085</td><td>-0.68171</td><td>-1.33E-15</td></tr><tr><td>Feb. 2002</td><td>0.003304</td><td>0.017737</td><td>0</td><td>-0.05222</td><td>0.20963</td><td>-9.99E-16</td></tr><tr><td>March 2002</td><td>-0.07221</td><td>0.012569</td><td>5.55E-17</td><td>-0.35765</td><td>0.13344</td><td>2.22E-16</td></tr><tr><td>April 2002</td><td>-0.08211</td><td>-0.00916</td><td>2.78E-17</td><td>-0.38222</td><td>-0.47647</td><td>-2.55E-15</td></tr><tr><td>May 2002</td><td>-0.05537</td><td>-0.02103</td><td>0</td><td>-0.45957</td><td>-0.53564</td><td>4.22E-15</td></tr><tr><td>June 2002</td><td>-0.15461</td><td>0.004614</td><td>1.39E-16</td><td>-1.0311</td><td>-0.54064</td><td>-3.33E-15</td></tr><tr><td>July 2002</td><td>0.00221</td><td>0.013057</td><td>8.33E-17</td><td>0.24301</td><td>0.37431</td><td>-1.89E-15</td></tr><tr><td>Aug. 2002</td><td>-0.12655</td><td>0.004691</td><td>5.55E-17</td><td>-0.8143</td><td>-0.30497</td><td>2.00E-15</td></tr><tr><td>Sept. 2002</td><td>-0.07898</td><td>0.039666</td><td>5.55E-17</td><td>-0.25876</td><td>0.64902</td><td>-6.66E-16</td></tr><tr><td>Oct. 2002</td><td>0.15839</td><td>0.003346</td><td>-1.11E-16</td><td>0.98252</td><td>0.53223</td><td>-1.78E-15</td></tr><tr><td>Nov. 2002</td><td>-0.11377</td><td>0.013601</td><td>1.67E-16</td><td>-0.95263</td><td>-0.33884</td><td>-2.89E-15</td></tr><tr><td>Dec. 2002</td><td>-0.06957</td><td>0.012352</td><td>1.32E-16</td><td>-0.10309</td><td>0.029623</td><td>-4.05E-15</td></tr><tr><td>Jan. 2003</td><td>0.14889</td><td>-0.00118</td><td>-8.33E-17</td><td>1.193</td><td>0.73723</td><td>5.00E-15</td></tr><tr><td>Feb. 2003</td><td>-0.03359</td><td>-0.02719</td><td>-4.16E-17</td><td>-0.02854</td><td>-0.38331</td><td>4.05E-15</td></tr><tr><td>March 2003</td><td>-0.05314</td><td>-0.00859</td><td>2.78E-17</td><td>-0.38853</td><td>-0.40615</td><td>-2.22E-16</td></tr><tr><td>April 2003</td><td>0.10457</td><td>-0.01442</td><td>-2.22E-16</td><td>0.73075</td><td>0.097101</td><td>-1.11E-15</td></tr><tr><td>May 2003</td><td>0.078567</td><td>0.022227</td><td>-5.55E-17</td><td>0.52298</td><td>0.63772</td><td>-7.77E-16</td></tr><tr><td>June 2003</td><td>-0.1989</td><td>-0.02905</td><td>1.39E-16</td><td>-1.4213</td><td>-1.3836</td><td>-3.55E-15</td></tr><tr><td>July 2003</td><td>-0.0149</td><td>-0.00955</td><td>0</td><td>0.13876</td><td>-0.1059</td><td>3.44E-15</td></tr><tr><td>Aug. 2003</td><td>-0.12529</td><td>-0.00528</td><td>8.33E-17</td><td>-0.73819</td><td>-0.51792</td><td>9.99E-16</td></tr><tr><td>Sept. 2003</td><td>0.10879</td><td>-0.00645</td><td>-8.33E-17</td><td>0.69572</td><td>0.25503</td><td>-2.22E-15</td></tr><tr><td>Oct. 2003</td><td>0.07783</td><td>0.01089</td><td>-2.78E-17</td><td>0.36715</td><td>0.45274</td><td>-1.11E-15</td></tr><tr><td>Nov. 2003</td><td>0.038408</td><td>-0.01181</td><td>-5.55E-17</td><td>0.11761</td><td>-0.13271</td><td>3.33E-16</td></tr><tr><td>Dec. 2003</td><td>0.18203</td><td>0.012593</td><td>-1.39E-16</td><td>1.2655</td><td>0.98182</td><td>3.77E-15</td></tr><tr><td>Jan. 2004</td><td>0.063885</td><td>-0.00042</td><td>6.94E-18</td><td>0.33717</td><td>0.038477</td><td>0</td></tr><tr><td>Feb. 2004</td><td>-0.12552</td><td>-0.00225</td><td>1.11E-16</td><td>-0.70345</td><td>-0.49379</td><td>0</td></tr><tr><td>March 2004</td><td>-0.01747</td><td>0.016836</td><td>0</td><td>-0.1949</td><td>0.35348</td><td>-1.94E-16</td></tr><tr><td>April 2004</td><td>0.015742</td><td>0.013764</td><td>4.16E-17</td><td>0.2673</td><td>0.46969</td><td>-5.77E-15</td></tr><tr><td>May 2004</td><td>-0.03556</td><td>-0.02072</td><td>-6.94E-17</td><td>-0.60652</td><td>-0.68268</td><td>0</td></tr><tr><td>June 2004</td><td>0.14325</td><td>0.008155</td><td>-1.94E-16</td><td>0.54463</td><td>0.59768</td><td>3.22E-15</td></tr><tr><td>July 2004</td><td>0.030731</td><td>-0.00285</td><td>-4.16E-17</td><td>0.13011</td><td>0.028779</td><td>7.08E-16</td></tr><tr><td>Aug. 2004</td><td>0.032719</td><td>-0.00179</td><td>-5.55E-17</td><td>0.26793</td><td>0.18353</td><td>2.05E-15</td></tr><tr><td>Sept. 2004</td><td>0.083238</td><td>0.003664</td><td>0</td><td>0.58186</td><td>0.29544</td><td>3.77E-15</td></tr><tr><td>Oct. 2004</td><td>0.11722</td><td>-0.00356</td><td>-1.39E-16</td><td>0.77575</td><td>0.38959</td><td>2.22E-16</td></tr><tr><td>Nov. 2004</td><td>-0.04794</td><td>-0.00088</td><td>0</td><td>-0.47706</td><td>-0.35464</td><td>-3.13E-15</td></tr><tr><td>Dec. 2004</td><td>-0.1099</td><td>-0.01903</td><td>1.11E-16</td><td>-0.69439</td><td>-0.64663</td><td>-2.22E-16</td></tr><tr><td>Jan. 2005</td><td>0.0479</td><td>-0.00573</td><td>2.08E-17</td><td>0.24203</td><td>-0.04065</td><td>-4.45E-16</td></tr><tr><td>Feb. 2005</td><td>-0.015</td><td>0.003186</td><td>1.39E-17</td><td>-0.07198</td><td>0.054412</td><td>3.28E-15</td></tr><tr><td>March 2005</td><td>0.005969</td><td>-0.0092</td><td>-4.16E-17</td><td>0.035251</td><td>-0.02106</td><td>3.83E-15</td></tr><tr><td>April 2005</td><td>-0.00742</td><td>-0.01241</td><td>-4.16E-17</td><td>-0.09335</td><td>-0.42659</td><td>-1.67E-16</td></tr><tr><td>May 2005</td><td>0.14998</td><td>-0.01126</td><td>6.25E-17</td><td>1.0219</td><td>0.034585</td><td>-9.05E-15</td></tr><tr><td>June 2005</td><td>-0.05045</td><td>-0.00363</td><td>3.47E-17</td><td>-0.25655</td><td>-0.1229</td><td>-4.66E-15</td></tr><tr><td>July 2005</td><td>0.065302</td><td>-0.00421</td><td>-5.20E-17</td><td>0.56136</td><td>0.16602</td><td>3.08E-15</td></tr><tr><td>Aug. 2005</td><td>0.006719</td><td>-0.01174</td><td>1.39E-17</td><td>0.09319</td><td>-0.22119</td><td>-2.00E-15</td></tr><tr><td>Sept. 2005</td><td>0.12865</td><td>-0.00259</td><td>-8.33E-17</td><td>0.95602</td><td>0.33442</td><td>3.50E-15</td></tr><tr><td>Oct. 2005</td><td>-0.01782</td><td>0.011827</td><td>-8.33E-17</td><td>-0.2249</td><td>0.27675</td><td>1.53E-15</td></tr><tr><td>Nov. 2005</td><td>0.026312</td><td>-7.72E-05</td><td>-1.39E-17</td><td>0.26642</td><td>0.19725</td><td>1.67E-15</td></tr></table>

Table 6 Eigenvectors and Eigenvalues of the Correlation Matrix

<table><tr><td colspan="11">Panel A: Eigenvectors</td></tr><tr><td></td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td><td>8</td><td>9</td><td>10</td></tr><tr><td>1</td><td>-0.4341</td><td>0.19295</td><td>-0.26841</td><td>0.040065</td><td>-0.19761</td><td>0.29518</td><td>-0.11161</td><td>-0.11759</td><td>-0.72535</td><td>-0.14857</td></tr><tr><td>2</td><td>-0.45727</td><td>0.18203</td><td>0.20011</td><td>0.001184</td><td>0.013236</td><td>0.37606</td><td>0.05077</td><td>0.19402</td><td>0.47275</td><td>-0.55894</td></tr><tr><td>3</td><td>-0.47513</td><td>-0.03803</td><td>-0.16513</td><td>0.16372</td><td>-0.01282</td><td>0.19087</td><td>-0.08297</td><td>-0.38843</td><td>0.37432</td><td>0.61989</td></tr><tr><td>4</td><td>0.06606</td><td>0.63511</td><td>0.18027</td><td>-0.16941</td><td>-0.05974</td><td>-0.24149</td><td>-0.66306</td><td>-0.14342</td><td>0.092295</td><td>0.02113</td></tr><tr><td>5</td><td>0.17481</td><td>0.33897</td><td>-0.21337</td><td>0.14797</td><td>0.84329</td><td>0.23995</td><td>0.091628</td><td>-0.07926</td><td>-0.06105</td><td>0.001886</td></tr><tr><td>6</td><td>-0.00505</td><td>0.42039</td><td>0.57434</td><td>0.40236</td><td>-0.15072</td><td>-0.05018</td><td>0.48758</td><td>-0.07382</td><td>-0.15788</td><td>0.19532</td></tr><tr><td>7</td><td>-0.18172</td><td>-0.397</td><td>0.28037</td><td>0.58674</td><td>0.26063</td><td>-0.26864</td><td>-0.38592</td><td>-0.16286</td><td>-0.11336</td><td>-0.24105</td></tr><tr><td>8</td><td>-0.1913</td><td>0.26851</td><td>-0.55744</td><td>0.32448</td><td>-0.09047</td><td>-0.58736</td><td>0.20083</td><td>0.19847</td><td>0.15935</td><td>-0.13035</td></tr><tr><td>9</td><td>-0.40588</td><td>-0.0309</td><td>0.20884</td><td>-0.20157</td><td>0.29193</td><td>-0.16641</td><td>-0.08666</td><td>0.67897</td><td>-0.1739</td><td>0.37201</td></tr><tr><td>10</td><td>-0.32773</td><td>-0.05042</td><td>0.14067</td><td>-0.51858</td><td>0.24871</td><td>-0.41444</td><td>0.30906</td><td>-0.4883</td><td>-0.06781</td><td>-0.17077</td></tr><tr><td colspan="11">Panel B: Eigenvalues</td></tr><tr><td>1</td><td>3.0652</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>2</td><td>1.4599</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>3</td><td>1.1922</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>4</td><td>0.9920</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>5</td><td>0.8611</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>6</td><td>0.6995</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>7</td><td>0.6190</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>8</td><td>0.5709</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>9</td><td>0.3143</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>10</td><td>0.2258</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></table>

We can repeat the same exercise for the correlation matrix. Table 6 shows the eigenvectors (panel A) and the eigenvalues (panel B) of the correlation matrix. Eigenvectors are normalized as in the case of the covariance matrix.

Table 7 shows the total variance explained by a growing number of components. Thus the first component explains  $30.6522\%$  of the total variance, the first two components explain

Table 7 Percentage of the Total Variance Explained by a Growing Number of Components Using the Correlation Matrix

<table><tr><td>Principal Component</td><td>Percentage of Total Variance Explained</td></tr><tr><td>1</td><td>30.6522\%</td></tr><tr><td>2</td><td>45.2509</td></tr><tr><td>3</td><td>57.1734</td></tr><tr><td>4</td><td>67.0935</td></tr><tr><td>5</td><td>75.7044</td></tr><tr><td>6</td><td>82.6998</td></tr><tr><td>7</td><td>88.8901</td></tr><tr><td>8</td><td>94.5987</td></tr><tr><td>9</td><td>97.7417</td></tr><tr><td>10</td><td>100.0000</td></tr></table>

$45.2509\%$  of the total variance, and so on. Obviously 10 components explain  $100\%$  of the total variance. The increase in explanatory power with the number of components is slower than in the case of the covariance matrix.

The proportion of the total variance explained grows more slowly in the correlation case than in the covariance case. Figure 3 shows the graphics of the portfolios of maximum and minimum variance. The ratio between the two portfolios is smaller in this case than in the case of the covariance.

The last three columns of Table 6 show the residuals of the Sun Microsystem return process with 1, 5, and all components based on the correlation matrix. Residuals are progressively reduced, but at a lower rate than with the covariance matrix.

# PCA and Factor Analysis with Stable Distributions

In the previous sections we discussed PCA and factor analysis without making any explicit reference to the distributional properties of the variables. These statistical tools can be applied provided that all variances and covariances exist. Therefore applying them does not require, per se, that distributions are normal, but only that they have finite variances and covariances. Variances and covariances are not robust but are sensitive to outliers. Robust equivalents of variances and covariances exist. In order to make PCA and factor analysis insensitive to outliers, one could use robust versions of variances and covariances and apply PCA and factor analysis to these robust estimates.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/cfb463a1-2282-4dad-842c-22b6b264a8a9/19ac00e8d5bd7643c7dea5c082a67f5a5334cedaa1907b46f078cedb184f4591.jpg)
Figure 3 Graphic of the Portfolios of Maximum and Minimum Variance Based on the Correlation Matrix


In many cases, however, distributions might exhibit fat tails and infinite variances. In this case, large values cannot be trimmed but must be taken into proper consideration. However, if variances and covariances are not finite, the least squares methods used to estimate factor loadings cannot be applied. In addition, the concept of PCA and factor analysis as illustrated in the previous sections cannot be applied. In fact, if distributions have infinite variances, it does not make sense to determine the portfolio of maximum variance as all portfolios will have infinite variance and it will be impossible, in general, to determine an ordering based on the size of variance.


Both PCA and factor analysis as well as the estimation of factor models with infinite-variance error terms are at the forefront of econometric research.

# FACTOR ANALYSIS

Thus far, we have seen how factors can be determined using principal components analysis. We retained as factors those principal components with the largest variance. In this section, we consider an alternative technique for determining factors: factor analysis (FA). Suppose we are given  $T$  independent samples of a random vector  $\mathbf{X} = (X_1,\dots ,X_N)'$ . In the most common cases in financial econometrics, we will be given

$T$  samples of a multivariate time series. However, factor analysis can be applied to samples extracted from a generic multivariate distribution. To fix these ideas, suppose we are given  $N$  time series of stock returns at  $T$  moments, as in the case of PCA.

Assuming that the data are described by a strict factor model with  $K$  factors, the objective of factor analysis (FA) consists of determining a model of the type

$$
X = \alpha + \beta f + \varepsilon
$$ with covariance matrix


$$
\Sigma = \beta \beta^ {\prime} + \Psi
$$

The estimation procedure is performed in two steps. In the first step, we estimate the covariance matrix and the factor loadings. In the second step, we estimate factors using the covariance matrix and the factor loadings.

If we assume that the variables are jointly normally distributed and temporally IID, we can estimate the covariance matrix with maximum likelihood methods. Estimation of factor models with maximum likelihood methods is not immediate because factors are not observable. Iterative methods such as the expectation maximization (EM) algorithm are generally used.

After estimating the matrices  $\beta$  and  $\Psi$  factors can be estimated as linear regressions. In fact, assuming that factors are zero means (an assumption that can always be made), we can write the factor model as

$$
X - \alpha = \beta f + \varepsilon
$$ which shows that, at any given time, factors can be estimated as the regression coefficients of the regression of  $(X - \alpha)$  onto  $\beta$ . Using the standard formulas of regression analysis, we can now write factors, at any given time, as follows:


$$
\hat {\mathbf {f}} _ {t} = \left(\hat {\boldsymbol {\beta}} ^ {\prime} \hat {\boldsymbol {\Psi}} ^ {- 1} \hat {\boldsymbol {\beta}}\right) ^ {- 1} \hat {\boldsymbol {\beta}} ^ {\prime} \hat {\boldsymbol {\Psi}} ^ {- 1} (\mathbf {X} _ {t} - \hat {\boldsymbol {\alpha}})
$$

The estimation approach based on maximum likelihood estimates implies that the number of factors is known. In order to determine the number of factors, a heuristic procedure consists of iteratively estimating models with a growing number of factors. The correct number of factors is determined when estimates of  $q$  factors stabilize and cannot be rejected on the basis of  $p$  probabilities. A theoretical method for determining the number of factors was proposed by Bai and Ng (2002).


The factor loadings matrix can also be estimated with ordinary least squares (OLS) methods. The OLS estimator of the factor loadings coincides with the principal component estimator of factor loadings. However, in a strict factor model, OLS estimates of the factor loadings are inconsistent when the number of time points goes to infinity but the number of series remains finite, unless we assume that the idiosyncratic noise terms all have the same variance.

The OLS estimators, however, remain consistent if we allow both the number of processes and the time to go to infinity. Under this assumption, as explained by Bai (2003), we can also use OLS estimators for approximate factor models.

In a number of applications, we might want to enforce the condition  $\alpha = 0$ . This condition is the condition of asset of arbitrage. OLS estimates of factor models with this additional condition are an instance of constrained OLS methods.

# An Illustration of Factor Analysis

Let's now show how factor analysis is performed. To do so, we will use the same 10 stocks and return data for December 2000 to November 2005 that we used to illustrate principal components analysis.

As just described, to perform factor analysis, we need estimate only the factor loadings and the idiosyncratic variances of noise terms. We assume that the model has three factors. Table 8 shows the factor loadings. Each row represents the loadings of the three factors corresponding to each stock. The last column of the table shows the idiosyncratic variances.

The idiosyncratic variances are numbers between 0 and 1, where 0 means that the variance

Table 8 A Factor Loadings and Idiosyncratic Variances

<table><tr><td></td><td colspan="3">Factor Loadings</td><td rowspan="2">Variance</td></tr><tr><td></td><td>β1</td><td>β2</td><td>β3</td></tr><tr><td>SUNW</td><td>0.656940</td><td>0.434420</td><td>0.27910</td><td>0.301780</td></tr><tr><td>AMZN</td><td>0.959860</td><td>-0.147050</td><td>-0.00293</td><td>0.057042</td></tr><tr><td>MERQ</td><td>0.697140</td><td>0.499410</td><td>-0.08949</td><td>0.256570</td></tr><tr><td>GD</td><td>0.002596</td><td>-0.237610</td><td>0.43511</td><td>0.754220</td></tr><tr><td>NOC</td><td>-0.174710</td><td>-0.119960</td><td>0.23013</td><td>0.902130</td></tr><tr><td>CPB</td><td>0.153360</td><td>-0.344400</td><td>0.13520</td><td>0.839590</td></tr><tr><td>KO</td><td>0.170520</td><td>0.180660</td><td>-0.46988</td><td>0.717500</td></tr><tr><td>MLM</td><td>0.184870</td><td>0.361180</td><td>0.28657</td><td>0.753250</td></tr><tr><td>HLT</td><td>0.593540</td><td>0.011929</td><td>-0.18782</td><td>0.612300</td></tr><tr><td>UTX</td><td>0.385970</td><td>0.144390</td><td>-0.15357</td><td>0.806590</td></tr></table> is completely explained by common factors and 1 that common factors fail to explain variance.


The  $p$ -value turns out to be 0.6808 and therefore fails to reject the null of three factors. Estimating the model with 1 and 2 factors we obtain much lower  $p$ -values while we run into numerical difficulties with 4 or more factors. We can therefore accept the null of three factors. Figure 4 shows the graphics of the three factors.

# PCA AND FACTOR ANALYSIS COMPARED

The two illustrations of PCA and FA are relative to the same data and will help clarify the differences between the two methods. Let's first observe that PCA does not imply, per se, any specific restriction on the process. Given a nonsingular covariance matrix, we can always perform PCA as an exact linear transformation of the series. When we consider a smaller number of principal components, we perform an approximation that has to be empirically justified. For example, in our PCA illustration, the first three components explain  $76\%$  of the total variance (based on the covariance matrix; see Table 4).

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/cfb463a1-2282-4dad-842c-22b6b264a8a9/2901d72fa55bb58085011a9e8d3ffb072c869ae935e7380af857e53878c05fb2.jpg)
Figure 4 Graph of the three factors

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/cfb463a1-2282-4dad-842c-22b6b264a8a9/17e5126136e42ab455d2d1c3a39af68dde52ed7248a5fda021c45d9dae8d3c80.jpg)
Figure 5 Graphical Representation of Factor Loadings


Factor analysis, on the other hand, assumes that the data have a strict factor structure in the sense that the covariance matrix of the data can be represented as a function of the covariances between factors plus idiosyncratic variances. This assumption has to be verified, otherwise the estimation process might yield incorrect results.

In other words, PCA tends to be a dimensionality reduction technique that can be applied to any multivariate distribution and that yields incremental results. This means that there is a trade-off between the gain in estimation from dimensionality reduction and the percentage of variance explained. Consider that PCA is not an estimation procedure: It is an exact linear transformation of a time series. Estimation comes into play when a reduced number of princi pal components is chosen and each variable is regressed onto these principal components. At this point, a reduced number of principal components yields a simplified regression, which results in a more robust estimation of the covariance matrix of the original series though only a fraction of the variance is explained.


Factor analysis, on the other hand, tends to reveal the exact factor structure of the data. That is, FA tends to give an explanation in terms of what factors explain what processes. Factor rotation can be useful both in the case of PCA and FA. Consider FA. In our illustration, to make the factor model identifiable, we applied the restriction that factors are orthonormal variables. This restriction, however, might result in a matrix of factor loadings that is difficult to interpret.

For example, if we look at the loading matrix in Table 8, there is no easily recognizable structure, in the sense that the time series is influenced by all factors. Figure 5 shows graphically the relationship of the time series to the factors. In this graphic, each of the 10 time series is represented by its three loadings.

We can try to obtain a better representation through factor rotation. The objective is to create factors such that each series has only one large loading and thus is associated primarily with one factor. Several procedures have been proposed for doing so. For example, if we rotate factors using the "promax" method, we obtain factors that are no longer orthogonal but that often have a better explanatory power. Figure 6 shows graphically the relationship of time series to the factors after rotation. The association of the series to a factor is more evident. This fact can be seen from the matrix of new factor loadings in Table 9, which shows how nearly each stock has one large loading.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/cfb463a1-2282-4dad-842c-22b6b264a8a9/640f5a42edfb01a00c5abdf017d20b3dd52a360dd9777992136cccd5a993accc.jpg)
Figure 6 Relationship of Time Series to the Factors after Rotation


Table 9 Factor Loadings after Rotation

<table><tr><td></td><td>F1</td><td>F2</td><td>F3</td></tr><tr><td>SUNW</td><td>0.214020</td><td>0.750690</td><td>0.101240</td></tr><tr><td>AMZN</td><td>0.943680</td><td>0.127310</td><td>0.104990</td></tr><tr><td>MERQ</td><td>0.218340</td><td>0.578050</td><td>-0.294340</td></tr><tr><td>GD</td><td>0.163360</td><td>0.073269</td><td>0.544220</td></tr><tr><td>NOC</td><td>-0.070130</td><td>-0.003990</td><td>0.278000</td></tr><tr><td>CPB</td><td>0.393120</td><td>-0.178070</td><td>0.301920</td></tr><tr><td>KO</td><td>0.032397</td><td>-0.100020</td><td>-0.545120</td></tr><tr><td>MLM</td><td>-0.137130</td><td>0.561640</td><td>0.123670</td></tr><tr><td>HLT</td><td>0.513660</td><td>0.048842</td><td>-0.168290</td></tr><tr><td>UTX</td><td>0.229400</td><td>0.133510</td><td>-0.204650</td></tr></table>

# KEY POINTS

- Principal component analysis (PCA) and factor analysis are statistical tools used in financial modeling to reduce the number of variables in a model (i.e., to reduce the dimensionality) and to identify a structure in the relationships between variables.
- Factor models seek to explain complex phenomena via a small number of basic causes or factors. In finance these models are typically applied to time series.
- The objective of a factor model in finance is to explain the behavior of a large number of stochastic processes typically price, returns, or rate processes in terms of a small number of factors (which themselves are stochastic processes). In financial modeling, factor models are needed not only to explain data but to make estimation feasible.
- Linear factor models are regression models. The coefficients are referred to as factor loadings or factor sensitivities, and they represent the influence of a factor on some variable.
Principal components analysis is a tool to determine factors with statistical learning techniques when factors are not exogenously given. PCA implements a dimensionality reduction of a set of observations.


- Performing PCA is equivalent to determining the eigenvalues and eigenvectors of the covariance matrix or of the correlation matrix.
- Factor analysis is an alternative technique for determining factors. The estimation procedure is performed in two steps: (1) estimate the covariance matrix and the factor loadings, and (2) estimate factors using the covariance matrix and the factor loadings.
- The covariance matrix can be estimated with maximum likelihood methods, assuming that the variables are jointly normally distributed and temporally independently and identically distributed. The estimation of models with maximum likelihood methods is not immediate because factors are not observable, and consequently iterative methods such as the expectation maximization (EM) algorithm are generally used.


# REFERENCES

Bai, J. (2003). Inferential theory for factor models of large dimensions. *Econometrica* 71: 135-171.
Bai, J., and Ng, S. (2002). Determining the number of factors in approximate factor models. *Econometrica* 70: 191-221.
Hendrickson, A. E., and White, P. O. (1964). Promax: A quick method for rotation to orthogonal oblique structure. British Journal of Statistical Psychology 17: 65-70.
Hotelling, H. (1933). Analysis of a complex of statistical variables with principal components. Journal of Educational Psychology 27: 417-441.
Spearman, C. (1904). General intelligence, objectively determined and measured. American Journal of Psychology 15: 201-293.
Thurstone, L. L. (1938). Primary Mental Abilities. Chicago: University of Chicago Press.
