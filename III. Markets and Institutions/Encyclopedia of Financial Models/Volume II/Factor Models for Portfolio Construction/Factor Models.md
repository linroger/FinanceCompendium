
# Factor Models

GUOFU ZHOU, PhD

Frederick Bierman and James E. Spears Professor of Finance, Olin Business School, Washington University in St. Louis

FRANK J. FABOZZI, PhD, CFA, CPA

Professor of Finance, EDHEC Business School

Abstract: Asset pricing models seek to estimate the relationship between the factors that drive asset expected return. The factors that drive the expected returns are referred to as risk factors. Two well-known asset pricing models returns are the capital asset pricing model and the arbitrage pricing theory. The relationship between risk factors and expected return in these two equilibrium models is based on various assumptions. In practice, multifactor models are estimated from observed asset returns and sophisticated statistical techniques are employed to estimate the exposure of an asset to each factor.

Given a set of assets or asset classes, an important task in the practice of investment management is to understand and estimate their expected returns and the associated risks. Factor models are widely used by investors to link the risk exposures of the assets to a set of known or unknown factors. The known factors can be economic or political factors, industry factors or country factors, and the unknown factors are those that best describe the dynamics of the asset returns in the factor models, but they are not directly observable or easily interpreted by investors and have to be estimated from the data.

Applications of the mean-variance analysis and portfolio selection theories in general require the estimation of expected asset returns and their covariance matrix. Those market participants who can identify those true factors that drive asset returns should have much better estimates of the true expected asset returns and the covariance matrix, and hence should be able to form a much better portfolio than otherwise possible. Hence, a lot of research and resources are devoted to analyzing factor models in practice by the investment community. There is an intellectual "arms race" to find the best portfolio strategies to outperform competitors.


Factor model estimation depends crucially on whether the factors are identified (known) and unidentified (latent), and depend on the sample size and the number of assets. In addition, factor models can be used not only for explaining asset returns, but also for predicting future returns. In this entry, we review first the factor models in the case of known and latent factors in order to provide a big picture, and then discuss the details of estimation.

# ARBITRAGE PRICING THEORY

$$
E \left[ \tilde {r} _ {i} \right] = r _ {f} + \gamma_ {1} \beta_ {i 1} + \dots + \gamma_ {K} \beta_ {i K} \tag {1}
$$ where  $\beta_{ik}$  is the beta or risk exposure on the  $k$ -th factor, and  $\gamma_{k}$  is the factor risk premium, for  $k = 1,2,\ldots ,K$


Technically, the APT assumes a  $K$ -factor model for the return-generating process, that is, the asset returns are influenced by  $K$  factors in the economy via linear regression equations,

$$
\tilde {r} _ {i t} - r _ {f t} = \alpha_ {i} + \beta_ {i 1} \tilde {f} _ {1 t} + \dots + \beta_ {i K} \tilde {f} _ {K t} + \tilde {\varepsilon} _ {i t} (2)
$$ where  $\tilde{f}_1, \tilde{f}_2, \ldots, \tilde{f}_K$  are the systematic factors that affect all the asset returns on the left-hand side,  $i = 1, 2, \ldots, N$ ; and  $\tilde{\varepsilon}_{it}$  is the asset specific risk. Note that we have placed a tilde sign ( $\sim$ ) over the random asset returns, factors, and specific risks. By so doing, we distinguish between factors (random) and their realizations (data), which are important for understanding the estimation procedure below.


Theoretically, under the assumption of no arbitrage, the asset pricing relation of the APT as given by equation (1) must be true as demonstrated by Ross. There are two important points to note. First, the return-generating process as given by equation (2) is fundamentally different from the asset pricing relation. The return-generating process is a statistical model used to measure the risk exposures of the asset returns. It does not require drawing any economic con clusion, nor does it says anything about what the expected returns on the assets should be. In other words, the  $\alpha_{\mathrm{i}}$  's in the return-generating process can statistically be any numbers. Only when the no-arbitrage assumption is imposed can one claim the APT, which says that the  $\alpha_{\mathrm{i}}$  's should be linearly related to their risk exposures (betas).


Second, the APT does not provide any specific information about what the factors are. Nor does the theory make any claims on the number of factors. It simply assumes that if the returns are driven by the factors, and if the smart investors know the betas (via learning or estimating), then an arbitrage portfolio, which requires no investment but yields a positive return, can be formed if the APT pricing relation is violated in the market. Hence, in equilibrium if there are no arbitrage opportunities, we should not observe deviations from the APT pricing relation.

# TYPES OF FACTOR MODELS

In this section we describe the different types of factor models.

# Known Factors

The simplest case of factor models is where the  $K$  factors are assumed known or observable, so that we have time-series data on them. In this case, the  $K$ -factor model for the return-generating process as given by equation (2) is a multiple regression for each asset and is a multivariate regression if all of the individual regressions are pooled together. For example, if one believes that the gross domestic product (GDP) is the driving force for a group of stock returns, one would have a one-factor model,

$$
\tilde {r} _ {i t} - r _ {f t} = \alpha_ {i} + \beta_ {i 1} \tilde {\mathbf {G}} D P _ {t} + \tilde {\varepsilon} _ {i t}
$$

The above equation corresponds to equation (1) with  $K = 1$  and  $f_{1} = \tilde{G}DP$ . In practice, one can obtain time-series data on both the asset returns and GDP, and then one can estimate regressions to obtain all the parameters, including in particular the expected returns.

Another popular one-factor model is the market model regression

$$
\tilde {r} _ {i t} - r _ {f t} = \alpha_ {i} + \beta_ {i 1} (\tilde {r} _ {m t} - r _ {f t}) + \tilde {\varepsilon} _ {i t}
$$ where  $\tilde{r}_{mt}$  is the return on a stock market index.


To understand the covariance matrix estimation, it will be useful to write the  $K$ -factor model in matrix form,

$$
\tilde {R} _ {t} = \alpha + \beta \tilde {f} _ {t} + \tilde {\varepsilon} _ {t}
$$ or


$$
\begin{array}{l} \left[ \begin{array}{c} \tilde {R} _ {1 t} \\ \vdots \\ \tilde {R} _ {N t} \end{array} \right] = \left[ \begin{array}{c} \alpha_ {1} \\ \vdots \\ \alpha_ {N} \end{array} \right] + \left[ \begin{array}{c c c} \beta_ {1 1} & \dots & \beta_ {1 K} \\ \vdots & \ddots & \vdots \\ \beta_ {N 1} & \dots & \beta_ {N K} \end{array} \right] \left[ \begin{array}{c} \tilde {f} _ {1 t} \\ \vdots \\ \tilde {f} _ {K t} \end{array} \right] \\ + \left[ \begin{array}{c} \tilde {\varepsilon} _ {1 t} \\ \vdots \\ \tilde {\varepsilon} _ {N t} \end{array} \right] \\ \end{array}
$$ where


$\tilde{R}_t =$  an  $N$  -vector of asset excess returns

$\alpha =$  an  $N$  -vector of the alphas

$\beta = \mathrm{an}N\times K$  of betas or factor loadings

$\tilde{f}_t = a$ $K$  -vector of the factors

$\tilde{\varepsilon} = \text{an } N$ -vector of the model residuals.

For example, we can write a model with  $N = 3$  assets and  $K = 2$  factors as

$$
\begin{array}{l} \left[ \begin{array}{c} \tilde {R} _ {1 t} \\ \tilde {R} _ {2 t} \\ \tilde {R} _ {3 t} \end{array} \right] = \left[ \begin{array}{c} \alpha_ {1} \\ \alpha_ {2} \\ \alpha_ {3} \end{array} \right] + \left[ \begin{array}{c c} \beta_ {1 1} & \beta_ {1 2} \\ \beta_ {2 1} & \beta_ {2 2} \\ \beta_ {3 1} & \beta_ {3 2} \end{array} \right] \left[ \begin{array}{c} \tilde {f} _ {1 t} \\ \tilde {f} _ {2 t} \end{array} \right] \\ + \left[ \begin{array}{c} \tilde {\varepsilon} _ {1 t} \\ \tilde {\varepsilon} _ {2 t} \\ \tilde {\varepsilon} _ {3 t} \end{array} \right] \\ \end{array}
$$

Taking covariance on both sides of equation (2), we have the return covariance matrix

$$
\Sigma = \beta^ {\prime} \Sigma_ {f} \beta + \Sigma_ {\varepsilon} \tag {3}
$$ where  $\Sigma_f$  is the covariance matrix of the factors, and  $\Sigma_{\varepsilon}$  is the covariance matrix of the residuals.  $\Sigma_f$  can be estimated by using the sample covariance matrix from the historical returns. This works for  $\Sigma_{\varepsilon}$  too if  $N$  is small relative to  $T$ . However, when  $N$  is large relative to  $T$ , the sample covariance matrix of the residuals will be poorly behaved.


Usually an additional assumption that the residuals are uncorrelated is imposed, so that  $\Sigma_{\varepsilon}$  becomes a diagonal matrix and can then be estimated by using the sample variances of the residuals. Plugging in the estimates of all the parameters into the right-hand side of equation (3), we obtain the covariance matrix needed for applying mean-variance portfolio analysis.

In the estimation of a multifactor model, it is implicitly assumed that the number of time series observations  $T$  is far greater than  $K$ , the number of factors. Otherwise, the regressions will perform poorly. For the case in which  $K$  is close to  $T$ , some special treatments are needed. This will be addressed later in this entry.

# Examples of Multifactor Models with Known Factors

Before discussing latent factors, let's briefly describe four multifactor models where known factors are used: (1) the Fama-French three-factor model (Fama and French, 1993), (2) the MSCI Barra fundamental factor model, (3) the Burmeister-Ibbotson-Roll-Ross (BIRR) macroeconomic factor model (Burmeister, Roll, and Ross, 1994), and (4) the Barclay Group Inc. factor model. The first three are equity factor models and the last is a bond factor model.

The widely used Fama-French three-factor model is a special case of equation (1) with  $K = 3$

$$
\begin{array}{l} \tilde {r} _ {i t} - r _ {f \hat {t}} = \alpha_ {i} + \beta_ {i m} (\tilde {r} _ {m t} - r _ {f \hat {t}}) + \beta_ {i s} \tilde {S M B} _ {t} \\ + \beta_ {i h} \tilde {H} M L _ {t} + \tilde {\varepsilon} _ {i t} \\ \end{array}
$$ where  $\tilde{r}_{mt}$ , as before, is the return on a stock market index,  $\tilde{SMB}_t$  and  $\tilde{HML}_t$  are two additional factors.  $SMB_t$  (small minus big) is defined as the difference between the returns on diversified portfolios of small and big stocks (where small and big are measured in terms of stock market capitalization), and  $HML_t$  (high minus low) is defined as the difference between the returns on diversified portfolios of high and low book value-to-market value (B/M) stocks.


The introduction of these factors by Fama and French is to better capture the systematic variation in average return for typical portfolios than when using a stock market index alone. These factors are supported by empirical studies and are consistent with classifying stocks in terms of growth and value.

Fundamental factor models use company and industry attributes and market data as "descriptors." Examples are price/earnings ratios, book/price ratios, estimated earnings growth, and trading activity. The estimation of a fundamental factor model begins with an analysis of historical stock returns and descriptors about a company. In the MSCI Barra model, for example, the process of identifying the factors begins with monthly returns for hundreds of stocks that the descriptors must explain. Descriptors are not the "r factors" but instead they are the candidates for risk factors. The descriptors are selected in terms of their ability to explain stock returns. That is, all of the descriptors are potential risk factors but only those that appear to be important in explaining stock returns are used in constructing risk factors. Once the descriptors that are statistically significant in explaining stock returns are identified, they are grouped into "risk indexes" to capture related company attributes. For example, descriptors such as market leverage, book leverage, debt-to-equity ratio, and company's debt rating are combined to obtain a risk index referred to as "leverage." Thus, a risk index is a combination of descriptors that captures a particular attribute of a company. For example, in the MSCI Barra fundamental multifactor model, there are 13 risk indices and 55 industry groups. The 55 industry classifications are further classified into sectors.

In a macroeconomic factor model, the inputs to the model are historical stock returns and observable macroeconomic variables. In the BIRR macroeconomic multifactor model, the macroeconomic variables that have been pervasive in explaining excess returns and which are therefore included in the market are

- The business cycle: Changes in real output that are measured by percentage changes in the index of industrial production.
- Interest rates: Changes in investors' expectations about future interest rates that are measured by changes in long-term government bond yields.
- Investor confidence: Expectations about future business conditions as measured by changes in the yield spread between high- and low-grade corporate bonds.
- Short-term inflation: Month-to-month jumps in commodity prices, such as gold or oil, as measured by changes in the consumer price index.
- Inflationary expectations: Changes in expectations of inflation as measured by changes in the short-term, risk-free nominal interest rate.

Additional variables, such as the real GDP growth and unemployment rates, are also among the macroeconomic factors used by asset managers in other macroeconomic multifactor models. Moreover, some asset managers also have identified technical variables, such as trading volume and market liquidity, as factors.

The Barclay Group Inc. (BGI) bond factor model (previously the Lehman bond factor model) uses two categories of systematic risk factors: term structure factors and non-term structure risk factors. The former include changes in the level of interest and changes in the shape of the yield curve. The non-term structure factors are sector risk, credit risk, optionality risk, and a series of risks associated with investing in mortgage-backed securities.

The search for factors is a never-ending task of asset managers. In practice, many popular investment software packages use dozens of factors. Some academic studies, such as Ludvigson and Ng (2007), use hundreds of them.

# Latent Factors

While some applications use observed factors, some use entirely latent factors, that is, the view that the factors  $f_{t}$  in the  $K$ -factor model,


$$
\tilde {R} _ {t} = \alpha + \beta \tilde {f} _ {t} + \tilde {\varepsilon} _ {t}
$$ are not directly observable. An argument for the use of latent factors is that the observed factors may be measured with errors or have been already anticipated by investors. Without imposing what  $f_{t}$  are from our likely incorrect belief, we can statistically estimate the factors based on the factor model and data.


It is important to understand that in the field of statistics, there is statistical methodology known as "factor analysis" and the model generated is referred to as a "factor model." Factor models as used by statisticians are statistical models that try to explain complex phenomena through a small number of basic causes or factors with the factors being latent. Factor models as used by statisticians serve two main purposes: (1) They reduce the dimensionality of models to make estimation possible, and/or (2) they find the true causes that drive data. In our discussion of multifactor models, we are using the statistical tool of factor analysis to try to determine the latent factors driving asset returns.

While the estimation procedures for determining the set of factors will be discussed in the next section, it will be useful to know some of the properties of the factor model here. The first property is that the factors are not uniquely defined in the model, but all sets of factors are linear combinations of each other. This is because if  $\tilde{f}_t$  is a set of factors, then, for any  $K\times K$  invertible matrix  $A$ , we have

$$
\tilde {R} _ {t} = \alpha + \beta \tilde {f} _ {t} + \tilde {\varepsilon} _ {t} = \alpha + (\beta A ^ {- 1}) (A \tilde {f} _ {t}) + \tilde {\varepsilon} _ {t} \tag {4}
$$ which says that if  $\tilde{f}_t$  with regression coefficients  $\beta$  (known as adding factor loadings in the context of factor models) explains asset returns well, so does  $\tilde{f}_t^* = A\tilde{f}_t$  with loadings  $\beta A^{-1}$ . The linear transformation of  $\tilde{f}_t, \tilde{f}_t^*$ , is also known as a rotation of  $f_t$ .


The second property is that we can assume all the factors have zero mean (i.e.,  $E[\tilde{f}_t] = 0$ ). This is because if  $\mu_f = E[f_t]$ , then the factor model can be written as


$$
\tilde {R} _ {t} = \alpha + \beta \tilde {f} _ {t} + \tilde {\varepsilon} _ {t} = (\alpha - \beta \mu_ {f}) + \beta (\tilde {f} _ {t} - \mu_ {f}) + \tilde {\varepsilon} _ {t} \tag {5}
$$

If we rename  $\alpha -\beta \mu_{f}$  as the new alphas, and  $f_{t} - \mu_{f}$  as the new factors, then the new factors will have zero means, and the new factor model is statistically the same as the old one. Hence, without loss of generality, we will assume that the mean of the factors are zeros in our estimation in the next section.

Note that the return covariance matrix formula, equation (3) or

$$
\Sigma = \beta^ {\prime} \Sigma_ {f} \beta + \Sigma_ {\varepsilon} \tag {6}
$$ holds regardless of whether the factors are observable or latent. However, through factor rotation, we can make a new set of factors so as to have the identity covariance matrix. In this case with  $\Sigma_{f} = I_{K}$ , we say that the factor model is standardized, and the covariance equation then simply becomes


$$
\Sigma = \beta^ {\prime} \beta + \Sigma_ {\varepsilon} \tag {7}
$$

In general,  $\Sigma_{\varepsilon}$  can have nonzero off-diagonal elements, implying that the residuals are correlated. If we assume that the residuals are uncorrelated, then  $\Sigma_{\varepsilon}$  becomes a diagonal matrix, and the factor model is known as a strict factor model. If we assume further that  $\Sigma_{\varepsilon}$  has equal diagonal elements, i.e.,  $\Sigma_{\varepsilon} = \sigma^{2}I_{N}$  for some  $\sigma > 0$  with  $I_{N}$  an  $N$  identity matrix, then the factor model is known as a normal factor model.

# Both Types of Factors

Rather than taking the view of only observable factors or only latent factors, we can consider a more general factor model with both types of factors,

$$
\tilde {R} _ {t} = \alpha + \beta \tilde {f} _ {t} + \beta_ {g} \tilde {g} _ {t} + \tilde {\varepsilon} _ {t} \tag {8}
$$ where  $\tilde{f}_t$  is a  $K$ -vector of latent factors,  $\tilde{g}_t$  is an  $L$ -vector of observable factors, and  $\beta_g$  are the betas associated with  $\tilde{g}_t$ . This model makes intuitive sense. If we believe a few fundamental or macroeconomic factors are the driving forces, they can be used to create the  $\tilde{g}_t$  vector. Since we may not account for all the possible factors, we need to add  $K$  unknown factors, which are to be estimated from the data.


The estimation of the above factor model given by equation (8) usually involves two steps. In the first step, a regression of the asset returns on the known factors is run in order to obtain  $\hat{\beta}_g$ , an estimate of  $\beta_g$ . This allows us to compute the residuals,

$$
\hat {u} _ {t} = R _ {t} - \hat {\beta} _ {g} g _ {t} \tag {9}
$$ that is, the difference of the asset returns from their fitted values by using the observed factors for all the time periods. Then, in the second step, a factor estimation approach is used to estimate the latent factors for  $\hat{u}_t$ ,


$$
\tilde {u} _ {t} = \alpha + \beta \tilde {f} _ {t} + \beta_ {g} \tilde {g} _ {t} + \tilde {v} _ {t} \tag {10}
$$ where  $\tilde{u}_t$  is the random differences whose realized values are  $\hat{u}_t$ . The estimation method for this model is the same as estimating a latent factor model and will be detailed in the next section. With the factor estimates, we can treat the latent factors as known, and then use equation (8) to determine the expected asset returns and covariance matrix.


# Predictive Factor Models

An important feature of factor models is that they use time  $t$  factors to explain time  $t$  returns. This is to estimate the long-run risk exposures of the assets, which are useful for both risk control and portfolio construction. On the other hand, portfolio managers are also very concerned about time-varying expected returns. In this case, they often use a predictive factor model such as the following to forecast the returns,

$$
\tilde {R} _ {t + 1} = \alpha + \beta \tilde {f} _ {t} + \beta_ {g} \tilde {g} _ {t} + \tilde {\varepsilon} _ {t} \tag {11}
$$ where as before  $\tilde{f}_t$  and  $\tilde{g}_t$  are the latent and observable factors, respectively. The single difference is that the earlier  $\tilde{R}_t$  is now replaced by  $\tilde{R}_{t + 1}$ . Equation (11) uses time  $t$  factors to forecast future return  $\tilde{R}_{t + 1}$ .


Computationally, the estimation of the predictive factor model is the same as for estimating the standard factor models. However, it should be emphasized that the regression  $R^2$ , a measure of model fitting, is usually very good in the explanatory factor models. In contrast, if a predictive factor model is used to forecast the expected returns of various assets, the  $R^2$  rarely exceeds  $2\%$ . This simply reflects the fact that assets returns are extremely difficult to predict in the real world. For example, Rapach, Strauss, Tu, and Zhou (2009) find that the  $R^2$  are mostly less than  $1\%$  when forecasting industry returns using a variety of past economic variables and past industry returns.

# FACTOR MODEL ESTIMATION

In this section, we provide first a step-by-step procedure for estimating the factor model based on the popular and implementable approach, principal components analysis (PCA), to which a detailed and intuitive introduction is provided in the last section of this entry. PCA is a statistical tool that is used by statisticians to determine factors with statistical learning techniques when factors are not observable. That is, given a variance-covariance matrix, a statistician can determine factors using the technique of PCA. Then, after learning the computational procedure, we provide an application to identify three factors for bond returns. Finally, we outline some alternative procedures for estimating the factor models and their extensions.

# Computational Procedure

By our use of latent models, we need to consider only how to estimate the latent factors  $\tilde{f}_t$  from the  $K$  -factor model,


$$
\tilde {Y} _ {t} = \beta \tilde {f} _ {t} + \tilde {\varepsilon} _ {t} \tag {12}
$$ where


$$
E (\tilde {f} _ {t}) = 0, \quad E [ \tilde {Y} _ {t} ] = 0
$$

This version of the factor model is obtained in two steps. We de-mean first the factor  $f_{t}$  so that the alphas are the expected returns of the assets. Second, we de-mean again the asset returns. In other words, we let  $\tilde{Y}_{t} = \tilde{R}_{t} - \alpha$ .

In practice, suppose that we have return data on  $N$  risky assets over  $T$  time periods. Then the realizations of the random variable  $\hat{Y}_t$  can be summarized by a matrix,

$$
Y = \left( \begin{array}{c c c c} Y _ {1 1} & Y _ {2 1} & \dots & Y _ {N 1} \\ \vdots & \vdots & \vdots & \vdots \\ Y _ {1 T} & Y _ {2 T} & \dots & Y _ {N T} \end{array} \right) \tag {13}
$$ where each row is the  $N$  asset returns subtracting from their sample means at time  $t$  for  $t = 1,2,\dots ,T$ . Our task is to estimate the realizations (unobserved) on the  $K$  factors,  $\tilde{f}_t$ , over the  $T$  periods,


$$
F = \left( \begin{array}{c c c c} F _ {1 1} & F _ {2 1} & \dots & F _ {K 1} \\ \vdots & \vdots & \vdots & \vdots \\ F _ {1 T} & F _ {2 T} & \dots & F _ {K T} \end{array} \right) \tag {14}
$$

We will now apply PCA estimation methodology.

There are two important cases, each of which calls for a different way of applying PCA. The first case is the one of traditional factor analysis in which  $N$  is treated as fixed, and  $T$  is allowed to grow. We will refer to this case as the "fixed  $N$ " below. The second case is when  $N$  is allowed to grow but  $T$  is either fixed or allowed to grow. We will refer to this case simply as "large  $N$ ."

# Case 1: Fixed N

In the case of fixed  $N$ , we have a relatively smaller number of assets and a relatively large sample size. Then the covariance matrix of the asset returns, which is the same as the covariance matrix of  $\tilde{Y}_t$ , can be estimated by the sam ple covariance matrix,


$$
\Psi = \frac {Y ^ {\prime} Y}{T} \tag {15}
$$ which is an  $N$  by  $N$  matrix since  $Y$  is  $T$  by  $N$ . For example, if we think there are  $K$  (say  $K = 5$ ) factors, we can use standard software to compute the first  $K$  eigenvectors of  $\Psi$  corresponding to the first  $K$  largest eigenvalues of  $\Psi$ , each of which is an  $N$  vector. Let  $\hat{\beta}$  be the  $N$  by  $K$  matrix formed by these  $K$  eigenvectors. Then  $\hat{\beta}$  will be an estimate of  $\beta$ . Based on this, the factors are estimated by


$$
\hat {F} _ {t} = Y _ {t} \hat {\beta}, \quad t = 1, 2, \dots , T \tag {16}
$$ where  $Y_{t}$  is the  $t$ -th row of  $Y$ , and  $\hat{F}_t$  is the estimate of  $F_{t}$ , the  $t$ -th row of  $F$ . The  $\hat{F}_t$ 's are the estimated realizations of the first  $K$  factors. Seber (1984) explains why the  $\hat{F}_t$ 's are good estimates of the true and unobserved factor realizations. However, theoretically, they, though close, will not necessarily converge to the true values, unless the factor model is normal, as  $T$  increases. Nevertheless, despite this problem, this procedure is widely used in practice.


# Case 2: Large N

In the case of large  $N$ , we have a large number of assets. We now form a new matrix based on the product of  $Y$  with  $Y'$

$$
\Omega = \frac {Y Y ^ {\prime}}{T} \tag {17}
$$ which is a  $T$  by  $T$  matrix since  $Y$  is  $T$  by  $N$ . Given  $K$ , we use standard software to compute the first  $K$  eigenvectors of  $\Omega$  corresponding to the first  $K$  largest eigenvalues of  $\Omega$ , each of which is a  $T$  vector. Letting  $\hat{F}$  be the  $T$  by  $K$  matrix formed by these  $K$  eigenvectors, the PCA says that  $\hat{F}$  is an estimate of the true and unknown factor realizations  $F$  of equation (14), up to a linear transformation. Connor and Korajczyk (1986) provided the first study in the finance literature to apply the PCA as described above. The method is also termed "asymptotic PCA" since it allows the number of assets to increase without bound. In contrast, traditional PCA


keeps  $N$  fixed, while allowing the number of time periods,  $T$ , to be large.

Theoretically, if the true factor model is the strict factor model or is not much too different from it (i.e., the residual correlations are not too strong), Bai (2003) shows that  $\hat{F}$  converges to  $F$  up to a linear transformation when both  $T$  and  $N$  increase without limit. The estimation errors are of order the larger of  $1 / T$  or  $1 / \sqrt{N}$ , and converge to zero as both  $T$  and  $N$  grow to infinity. However, when  $T$  is fixed, we need a stronger assumption that the true factor model is close to a normal model, then the estimation errors are of order of  $1 / \sqrt{N}$ . Intuitively, at each time  $t$ , given that there are only a few factors to pricing so many assets, we should have enough information to back out the factors accurately.

Based on the estimated factors, the factor loadings are easily estimated from equation (12). For example, we can obtain the loadings for each asset by estimating the standard ordinary least squares (OLS) regression of the asset returns on the factors. Mathematically, this is equivalent to computing all the loadings from the formula

$$
\hat {\beta} ^ {\prime} = \left(\hat {F} ^ {\prime} \hat {F}\right) ^ {- 1} \hat {F} ^ {\prime} X \tag {18}
$$

Under the same conditions above,  $\hat{\beta}$  also converges to  $\beta$  up to a linear transformation.

The remaining question is how to determine  $K$ . In practice, this may be determined by trial and error depending on how different  $K$ 's perform in model fitting and in meeting the objectives where the model is applied. From an econometrics perspective, there is a simple solution in Case 2. Bai and Ng (2002) provide a statistical criterion

$$
I C (K) = \log (V (K)) + K \left(\frac {N + T}{N T}\right) \log \left(\frac {N T}{N + T}\right) \tag {19}
$$ where


$$
V (K) = \sum_ {i = 1} ^ {N} \sum_ {t = 1} ^ {T} \left(Y _ {i t} - \hat {\beta} _ {i 1} \hat {f} _ {1 t} - \hat {\beta} _ {i 2} \hat {f} _ {2 t} - \dots - \hat {\beta} _ {i K} \hat {f} _ {K t}\right) ^ {2} \tag {20}
$$

For a given  $K$ ,  $V(K)$  is the sum of the fitted squared residual errors of the factor model across both asset and time. This is a measure of model fitting. The smaller the  $V(K)$ , the better the  $K$ -factor model in explaining the asset returns. So we want to choose such a  $K$  that minimizes  $V(K)$ . However, the more the factors, the smaller the  $V(K)$ , but at a cost of estimating more factors with greater estimation errors. Hence, we want to penalize too many factors. This is the same as the case in linear regressions where we also want to penalize too many regressors. The second term in equation (19) plays this role. It is an increasing function of  $K$ . Therefore, the trade-off between model fitting and estimation errors requires us to minimize the  $IC(K)$  function. Theoretically, assuming that the factor model is indeed true for some fixed  $K^*$ , Bai and Ng show that the  $K$  that minimizes  $IC(K)$  will converge to  $K^*$  as either  $N$  or  $T$  or both increase to infinity.

# An Application to Bond Returns

To illustrate the procedure, consider an application of the PCA factor analysis to the excess returns on Treasury bonds with maturities 12, 18, 24, 30, 36, 42, 48, 54, 60, 120, and beyond 120 months. Hence, there are  $N = 11$  assets. With monthly data from January 1980 to December 2008, available from the Center for Research in Security Prices of the University of Chicago's Graduate School of Business, we have a sample size of  $T = 348$ . Since  $N$  is small relative to  $T$ , this is a case of the fixed  $N$ .

Now

$$
\Psi = \frac {Y ^ {\prime} Y}{3 4 8}
$$ is an 11 by 11 matrix. We can easily compute its eigenvalues and eigenvectors. The largest three eigenvalues are


$$
\left(\lambda_ {1}, \lambda_ {2}, \lambda_ {3}\right) = 1 0 ^ {- 2} (0. 2 4 0 3, 0 1 3 3, 0 0 1 2)
$$ whose sum is more than  $99\%$  of the sum of all the eigenvalues. Thus, it is enough to consider  $K = 3$  factors and use the first three


Table 1 Factor Loadings and Explanatory Power

<table><tr><td></td><td>β1</td><td>β2</td><td>β3</td><td>R2(F1)</td><td>R2(F1 and F2)</td><td>R2(all three)</td></tr><tr><td>12 month</td><td>0.0671</td><td>-0.1418</td><td>0.4046</td><td>0.67</td><td>0.80</td><td>0.96</td></tr><tr><td>18 month</td><td>0.1118</td><td>-0.2057</td><td>0.4227</td><td>0.79</td><td>0.84</td><td>0.99</td></tr><tr><td>24 month</td><td>0.1524</td><td>-0.2455</td><td>0.3371</td><td>0.85</td><td>0.87</td><td>1.00</td></tr><tr><td>32 month</td><td>0.1932</td><td>-0.2876</td><td>0.3199</td><td>0.88</td><td>0.89</td><td>1.00</td></tr><tr><td>38 month</td><td>0.2269</td><td>-0.2851</td><td>0.2101</td><td>0.91</td><td>0.92</td><td>1.00</td></tr><tr><td>42 month</td><td>0.2523</td><td>-0.2621</td><td>-0.0813</td><td>0.94</td><td>0.94</td><td>0.99</td></tr><tr><td>48 month</td><td>0.2837</td><td>-0.2415</td><td>-0.2531</td><td>0.95</td><td>0.96</td><td>1.00</td></tr><tr><td>54 month</td><td>0.3072</td><td>-0.1920</td><td>-0.3762</td><td>0.97</td><td>0.97</td><td>1.00</td></tr><tr><td>60 month</td><td>0.3368</td><td>-0.1819</td><td>-0.3246</td><td>0.97</td><td>0.98</td><td>0.99</td></tr><tr><td>120 month</td><td>0.4038</td><td>0.0426</td><td>-0.1507</td><td>0.99</td><td>0.99</td><td>0.99</td></tr><tr><td>Over 120</td><td>0.5966</td><td>0.7173</td><td>0.2394</td><td>0.92</td><td>0.93</td><td>1.00</td></tr></table> eigenvectors, PCAs, as proxies for the factors. Denote them as  $F_{1}, F_{2}$  and  $F_{3}$ .


Consider now the regression of the 11 excess bond returns on the three factors,

$$
R _ {i t} = \alpha_ {i} + \beta_ {i 1} F _ {1 t} + \beta_ {i 2} F _ {2 t} + \beta_ {i 3} F _ {3 t} + \varepsilon_ {i t}
$$ where  $i = 1,2,\dots ,11$ . The regression  $R^2\mathrm{s}$  of using all the factors for each of the assets are reported in the last column of Table 1. All but one is  $99\%$  or above, confirming the eigenvalue analysis that three factors are sufficient, which explains almost all the variations of the bond returns. However, when only the first two are used, the  $R^2\mathrm{s}$  are smaller, but the minimum is still over  $80\%$ . When only the first factor is used, the  $R^2\mathrm{s}$  range from  $67\%$  on the first bond return to  $99\%$  on the 10th. Overall, the PCA factors are effective in explaining the asset returns.


The factor loadings or regression coefficients on the factors are also reported in Table 1. It is interesting that the loadings on the first factor are all positive. This implies that a positive realization of  $F_{1}$  will have a positive effect on the returns of all the bonds. It is, however, clear that  $F_{1}$  affects long-term bonds more than short-term bonds. As an approximation,  $F_{1}$  is usually interpreted as a level effect or parallel effect that roughly shifts the returns on bonds across maturity.

The second factor, however, has a different pattern from the first. A positive realization of  $F_{1}$  will have a negative effect on shortterm bonds and a positive effect on the longterm ones. This is equivalent to an increase in the slope of the bond returns across maturity (known as yield curve). Therefore,  $F_{2}$  is commonly identified as a steepness factor.


Finally, a positive realization of  $F_{3}$  will have a positive effect on both short- and long-term bonds, but a negative effect on the intermediate ones. Hence  $F_{3}$  is usually interpreted as a curvature factor. Litterman and Scheinkman (1991) appears to have been one of the first to apply the PCA to study bond returns and to have identified the above three factors. Although the data we used here are different, the three factors we computed share the same properties as those identified by them.

# Alternative Approaches and Extensions

The standard statistical approach for estimating the factor model is the maximum likelihood (ML) method. Consider the factor model given by equation (12) where  $E(\tilde{f}_t) = 0$ ,  $E[\tilde{Y}_t] = 0$ . The de-meaned returns and standardized factors are usually assumed to have normal distributions.

In addition, the factors are usually standardized so that  $\Sigma_{f} = I_{K}$ , and the residuals are assumed uncorrelated so that  $\Sigma_{\varepsilon}$  is diagonal. Then the log likelihood function, as the log density function of the returns, is


$$
\begin{array}{l} \log L (\beta , \Sigma_ {\varepsilon}) = - \frac {N T}{2} \log (2 \pi) - \frac {T}{2} \log | \beta^ {\prime} \beta + \Sigma_ {\varepsilon} | \\ - \frac {1}{2} \sum_ {t = 1} ^ {T} Y _ {t ^ {\prime}} \left(\beta^ {\prime} \beta + \Sigma_ {\varepsilon}\right) ^ {- 1} Y _ {t} \tag {21} \\ \end{array}
$$

The ML estimator of the parameters  $\beta$  and  $\Sigma_{\varepsilon}$  are those values that maximize the log likelihood function. Since  $\beta$  enters into the function in a complex nonlinear way, an analytical solution to the maximization problem is a very difficult problem. Numerically, it is still difficult if maximizing  $\log L(\beta, \Sigma_{\varepsilon})$  directly.

There is, however, a data-augmentation technique known as the expectation maximization (EM) algorithm that can be applied (see Lehmann and Modest, 1998). The EM algorithm can be effective in numerically solving the earlier maximization problem. The idea of the EM algorithm is simple. The key difficulty here is that the factors are unobserved. But conditional on the parameters and the factor model, we can learn them. Consider now that given the factors  $\tilde{f}_t$ , the log likelihood function conditional on  $f_t$  is

$$
\begin{array}{l} \log L _ {c} (\beta , \Sigma_ {\varepsilon}) = - \frac {N T}{2} \log (2 \pi) - \frac {T}{2} \log | \Sigma_ {\varepsilon} | \\ - \frac {1}{2} \sum_ {t = 1} ^ {T} \left(Y _ {t} - \beta f _ {t}\right) ^ {\prime} \Sigma_ {\varepsilon} ^ {- 1} \left(Y _ {t} - \beta f _ {t}\right) \tag {22} \\ \end{array}
$$

Because it is conditional on  $f_{t}$ , the factor model is the usual linear regression. In other words, integrating out  $f_{t}$  from equation (22) yields the unconditional  $\log L(\beta, \Sigma_{\varepsilon})$ . The beta estimates conditional on  $f_{t}$  are straightforward. They are the usual OLS regression coefficients, and the estimates for  $\Sigma_{\varepsilon}$  are the residual variances.

On the other hand, conditional on the parameters, we can learn the factors by using their conditional expected values obtained easily from their joint distribution with the returns. Hence, we can have an iterative algorithm. Starting from an initial guess of the factors, we maximize the conditional likelihood function to obtain the OLS  $\beta$  and  $\Sigma_{\varepsilon}$  estimates, which is the M-step of the EM algorithm. Based on these estimates, we update a new estimate of  $f_{t}$  using their expected value. This is the EM algorithm's E-step. Using the new  $f_{t}$ , we learn new estimates of  $\beta$  and  $\Sigma_{\varepsilon}$  in the M-step. With the new estimates, we can again update the  $f_{t}$ . Iterating between the EM steps, the limits converge to the unconditional ML estimate and the factor estimates converge to the true ones.


As an alternative to the ML method, Geweke and Zhou (1996) propose a Bayesian approach, which treats all parameters as random variables. It works in a way similar to the EM algorithm. Conditional on parameters, we learn the factors, and conditional on the factors, we learn the parameters. Iterating after a few thousand times, we learn the entire joint distribution of the factors and parameters, which are all we need in a factor model. The advantage of the Bayesian approach is that it can incorporate prior information and can provide exact inference. In contrast, the ML method cannot use any priors, nor can it obtain the exact standard errors of both parameters and functions of interest due to the complexity of the factor model. Nardari and Scruggs (2007) extend the Bayesian approach to allow a more general model in which the covariance matrix can vary over time and the APT restrictions can be imposed.

Finally, we provide two important extensions of the factor model that are useful in practice. Note that the factors we discussed thus far assume identical and independently distributed returns and factors. These are known as static factor models. The first extension is dynamic factor models, which allow the factors to evolve over time according to a vector autoregression,

$$
\tilde {f} _ {t} = A _ {1} \tilde {f} _ {t - 1} + A _ {2} \tilde {f} _ {t - 2} + \dots + A _ {m} \tilde {f} _ {t - m} + \tilde {\nu} _ {t} \tag {23}
$$ where the  $A$ 's are the regression coefficient matrices,  $m$  is the order of the autoregression that


determines how far past factor realizations still affect today's realizations, and  $v_{t}$  is the residual. In practice, many economic variables are highly persistent, and hence it will be important to incorporate this as above. (See Amengual and Watson [2007] for a discussion of estimation for dynamic factor models.)

The second extension is to allow the case with a large number of factors. Consider our earlier factor model

$$
\tilde {R} _ {t} = \alpha + \beta \tilde {f} _ {t} + \beta_ {g} \tilde {g} _ {t} + \tilde {\varepsilon} _ {t} \tag {24}
$$ where  $\tilde{f}_t$  is a  $K$  vector of latent factors,  $\tilde{g}_t$  is an  $L$  vector of observable factors. The problem now is that  $L$  is large, about 100 or 200, for instance. This requires at least a few hundred or more time series observations for the regression of  $R_t$  on  $g_t$  to be well behaved, and this can cause a problem due to the lack of long-term time series data or due to concerns of stationarity. The idea is to break  $\tilde{g}_t$  into two sets,  $\tilde{g}_{1t}$  and  $\tilde{g}_{2t}$ , with the first having a few key variables and the second having the rest. We then consider the modified model


$$
\tilde {R} _ {t} = \alpha + \beta \tilde {f} _ {t} + \beta_ {g 1} \tilde {g} _ {1 t} + \beta_ {h} \tilde {h} _ {t} + \tilde {\varepsilon} _ {t} \tag {25}
$$ where  $\tilde{h}(t)$  has a few variables too that represent a few major driving forces that summarize the potentially hundreds of variables of  $\tilde{g}_{2t}$  via another factor model,


$$
\tilde {g} _ {2 t} = B \tilde {h} _ {t} + \tilde {u} _ {t} \tag {26}
$$ where  $\tilde{u}_t$  is the residual. This second factor model provides a large dimension reduction that transforms the hundreds of variables into a few, which can be estimated by the PCA. In the end, we have only a few factors in equation (25), making the analysis feasible based on the methods we discussed earlier. Ludvigson and Ng (2007) appear to be the first to apply such a model in finance. They find that the model can effectively incorporate a few hundred variables so as to make a significant difference in understanding stock market predictability.


# USE OF PRINCIPAL COMPONENTS ANALYSIS

Principal components analysis (PCA) is a widely used tool in finance. It is useful not only for estimating factor models as explained in this entry, but also for extracting a few driving variables in general out of many for the covariance matrix of asset returns. Hence, it is important to understand the statistical intuition behind it. To this end, we provide a simple introduction to it in the last section of the entry.

Perhaps the best way to understand the PCA is to go through an example in detail. Suppose there are two risky assets, whose returns are denoted by  $\tilde{r}_1$  and  $\tilde{r}_2$ , with covariance matrix

$$
\Sigma = \left[ \begin{array}{c c} \sigma_ {1} ^ {2} & \sigma_ {1 2} \\ \sigma_ {2 1} & \sigma_ {2} ^ {2} \end{array} \right] = \left[ \begin{array}{c c} 2. 0 5 & 1. 9 5 \\ 1. 9 5 & 2. 0 5 \end{array} \right]
$$

That is, we assume that they have the same variances of 2.05 and covariance of 1.95. Our objective is to find a linear combination of the two assets so that it has a large component in the covariance matrix, which will be clear below. For notation brevity, we assume first that the expected returns are zeros; that is,

$$
E [ \tilde {r} _ {1} ] = 0, E [ \tilde {r} _ {1} ] = 0
$$ and will relax this assumption later.


Recall from linear algebra that we call any vector  $(a_{1},a_{2})'$  satisfying

$$
\Sigma \left( \begin{array}{c} a _ {1} \\ a _ {2} \end{array} \right) = \lambda \left( \begin{array}{c} a _ {1} \\ a _ {2} \end{array} \right)
$$ an eigenvector of  $\Sigma$ , and the associated  $\lambda$  the eigenvalue. In our example here, it is easy to verify that


$$
\left[ \begin{array}{c c} 2. 0 5 & 1. 9 5 \\ 1. 9 5 & 2. 0 5 \end{array} \right] \cdot \left( \begin{array}{c} 1 \\ 1 \end{array} \right) = 4 \times \left( \begin{array}{c} 1 \\ 1 \end{array} \right)
$$ and


$$
\left[ \begin{array}{c c} 2. 0 5 & 1. 9 5 \\ 1. 9 5 & 2. 0 5 \end{array} \right] \cdot \left( \begin{array}{c} 1 \\ - 1 \end{array} \right) = 0. 1 \times \left( \begin{array}{c} 1 \\ - 1 \end{array} \right)
$$ so 4 and 0.1 are the eigenvalues, and  $(1,1)^{\prime}$  and  $(1, - 1)^{\prime}$  are the eigenvectors.


In practice, computer software is available to compute the eigenvalue and eigenvectors of any covariance matrix. The mathematical result is that for a covariance matrix of  $N$  assets, there are exactly  $N$  different eigenvectors and  $N$  associated positive eigenvalues (these eigenvalues can be equal in some cases). Moreover, the eigenvectors are orthogonal to each other; that is, their inner product or vector product is zero. In our example, it is clear that

$$
(1,   1) ^ {\prime} \cdot \left( \begin{array}{c} 1 \\ - 1 \end{array} \right) = 1 - 1 = 0
$$

It should be noted that the eigenvalue associated with each eigenvector is unique, but any scale of the eigenvector remains an eigenvector. In our example, it is obvious that a double of the first eigenvector,  $(2,2)'$ , is also an eigenvector. However, the eigenvectors will be unique if we standardize them, making the sum of the elements 1. In our example,

$$
A _ {1} = \left[ \begin{array}{c} 1 / \sqrt {2} \\ 1 / \sqrt {2} \end{array} \right], A _ {2} = \left[ \begin{array}{c} 1 / \sqrt {2} \\ - 1 / \sqrt {2} \end{array} \right]
$$ are the standardized eigenvectors, which are obtained by scaling the earlier eigenvectors by  $1 / \sqrt{2}$ . These are indeed standardized, since


$$
A _ {1} ^ {\prime} A _ {1} = (1 / \sqrt {2}) ^ {2} + (1 / \sqrt {2}) ^ {2} = 1
$$

$$
A _ {2} ^ {\prime} A _ {2} = (1 / \sqrt {2}) ^ {2} + (- 1 / \sqrt {2}) ^ {2} = 1
$$

Now let us consider two linear combinations (or portfolios without imposing the weights summing to 1) of the two assets whose returns are  $\tilde{r}_1$  and  $\tilde{r}_2$ ,

$$
\tilde {P} _ {1} = \frac {1}{\sqrt {2}} \tilde {r} _ {1} + \frac {1}{\sqrt {2}} \tilde {r} _ {2} = A _ {1} ^ {\prime} \tilde {R}
$$

$$
\tilde {P} _ {2} = \frac {1}{\sqrt {2}} \tilde {r} _ {1} - \frac {1}{\sqrt {2}} \tilde {r} _ {2} = A _ {2} ^ {\prime} \tilde {R}
$$ where  $\tilde{R} = (\tilde{r}_1,\tilde{r}_2)'$ . Both  $\tilde{P}_{1}$  and  $\tilde{P}_{2}$  are called the principal components (PCs). There are three important and interesting mathematical facts about the PCs.


Fact 1. The variances of the PCs are exactly equal to the eigenvalues corresponding to the eigenvectors used to form the PCs. That is,

$$
V a r (\tilde {P} _ {1}) = 4
$$

$$
V a r (\tilde {P} _ {2}) = 1
$$

Note that the two PCs are random variables since they are the linear combination of random returns. So, their variances are well defined. The equalities to the eigenvalues can be verified directly.

- Fact 2. The returns can also be written as linear combinations of the PCs.

The PCs are defined as linear combinations of the returns. Inverting them, the returns are linear functions of the PCs, too. Mathematically,  $\tilde{P} = A\tilde{R}$ , and so  $\tilde{R} = A^{-1}\tilde{P}$ . Since  $A$  is orthogonal,  $A^{-1} = A'$ , thus  $\tilde{R} = A' \tilde{P}$ . That is, we have

$$
\tilde {r} _ {1} = \frac {1}{\sqrt {2}} \tilde {P} _ {1} + \frac {1}{\sqrt {2}} \tilde {P} _ {2} \tag {26}
$$

$$
\tilde {r} _ {2} = \frac {1}{\sqrt {2}} \tilde {P} _ {1} - \frac {1}{\sqrt {2}} \tilde {P} _ {2}
$$

- Fact 3. The asset return covariance matrix can be decomposed as the sum of the products of eigenvalues with the cross products of eigenvectors.

Mathematically, it is known that

$$
\begin{array}{l} \Sigma = [ A _ {1},   A _ {2} ] \left[ \begin{array}{c c} \lambda_ {1} & 0 \\ 0 & \lambda_ {2} \end{array} \right] [ A _ {1},   A _ {2} ] ^ {\prime} \\ = \lambda_ {1} A _ {1} A _ {1} ^ {\prime} + \lambda_ {2} A _ {2} A _ {2} ^ {\prime} = 4 A _ {1} A _ {1} ^ {\prime} + 0. 1 A _ {2} A _ {2} ^ {\prime} \\ \end{array}
$$ which is also easy to verify in our example. The economic interpretation is that the total risk profile of the two assets, as captured by their covariance matrix, is a sum of two components. The first component is determined by the first PC, and the second is determined by the second PC. In other words, in the return linear combinations, equation (26), if we ignore  $P_{2}$  we will get only  $\lambda_1A_1A_1'$ , the first component in the covariance matrix decomposition, and only the


second if we ignore  $P_{1}$ . We obtain the entire  $\Sigma$  if we ignore neither.

The purpose of the PCA is finally clear. Since 4 is 40 times as big as 0.1, the second component in the  $\Sigma$  decomposition has little impact, and hence may be ignored. Then, ignoring  $\tilde{P}_2$ , we can write the returns simply as, based on equation (26),

$$
\tilde {r} _ {1} \approx (1 / \sqrt {2}) \tilde {P} _ {1}
$$

$$
\tilde {r} _ {2} \approx (1 / \sqrt {2}) \tilde {P} _ {1}
$$

This says that we can reduce the analysis of  $\tilde{r}_1$  and  $\tilde{r}_2$  by analyzing simple functions of  $\tilde{P}_1$ . In this example, the result tells us that the two assets are almost the same. In practice, there may be hundreds of assets. By using PCA, we can reduce the dimensionality of the problem substantially to an analysis of perhaps a few, say five, PCs.

In general, when there are  $N$  assets with return  $\tilde{R} = (\tilde{r}_1,\dots \tilde{r}_N)'$ , computer software can be used to obtain the  $N$  eigenvalues and  $N$  standardized eigenvectors. Let  $\lambda_{1}\geq \lambda_{2}\geq \ldots \geq$ $\lambda_N\ge 0$  be the  $N$  eigenvalues in decreasing order, and  $A_{i} = (a_{i1},a_{i2},\dots a_{in})^{\prime}$  be the standardized eigenvector associated with  $\lambda_{i}$ , and  $A$  be an  $N\times N$  matrix formed by the all the eigenvectors. Then, the  $i$ -th PC is defined as  $\tilde{P}_i = A_i^\prime \tilde{R}$ , all of which can be computed in matrix form,

$$
\tilde {P} = \left[ \begin{array}{c} \tilde {P} _ {1} \\ \tilde {P} _ {2} \\ \vdots \\ \tilde {P} _ {N} \end{array} \right] = \left[ \begin{array}{c} A _ {1} ^ {\prime} \tilde {R} \\ A _ {2} ^ {\prime} \tilde {R} \\ \vdots \\ A _ {N} ^ {\prime} \tilde {R} \end{array} \right] = A ^ {\prime} \tilde {R} \tag {27}
$$

The decomposition for  $\Sigma$  is

$$
\begin{array}{l} \Sigma = [ A _ {1}, \ldots , A _ {N} ] \left[ \begin{array}{c c c c} \lambda_ {1} & 0 & \ldots & 0 \\ 0 & \lambda_ {2} & \ldots & 0 \\ 0 & 0 & \dots & \lambda_ {N} \end{array} \right] [ A _ {1}, \ldots , A _ {N} ] ^ {\prime} \\ = \lambda_ {1} A _ {1} A _ {1} ^ {\prime} + \lambda_ {2} A _ {2} A _ {2} ^ {\prime} + \dots + \lambda_ {N} A _ {N} A _ {N} ^ {\prime} \\ \end{array}
$$

It is usually the case that, for some  $K$ , the first  $K$  eigenvalues are large, and the rest are too small and can then be ignored. In such situations, based on the first  $K$  PCs, we can approxi mate the asset returns by


$$
\begin{array}{l} \tilde {r} _ {1} \approx a _ {1 1} \tilde {P} _ {1} + a _ {1 2} \tilde {P} _ {2} + \dots + a _ {1 K} \tilde {P} _ {K}, \\ \tilde {r} _ {2} \approx a _ {2 1} \tilde {P} _ {1} + a _ {2 2} \tilde {P} _ {2} + \dots + a _ {2 K} \tilde {P} _ {K}, \tag {28} \\ \end{array}
$$

$$
\begin{array}{l} \begin{array}{c c c} \vdots & \vdots \\ \vdots & \vdots \\ \vdots & \vdots \end{array} \\ \tilde {r} _ {N} \approx a _ {N 1} \tilde {P} _ {1} + a _ {N 2} \tilde {P} _ {2} + \dots + a _ {N K} \tilde {P} _ {K} \\ \end{array}
$$

In most studies, the  $K$  PCs may be interpreted as  $K$  factors that (approximately) derive the movements of all the  $N$  returns. Our earlier example is a case with  $K = 1$  and  $N = 2$ .

In the above PCA discussion, the expected returns of the asset are assumed to be zero. If they are nonzero and given by a vector  $(\mu_{1},\mu_{2},\dots,\mu_{N})^{\prime}$ ,  $\Sigma$  will remain the same, and so will the eigenvalues and eigenvectors. However, in this case we need to replace all the  $\tilde{r}_i$ 's in equation (27) by  $\tilde{r}_i - \mu_i$ 's and add  $\mu_i$ 's on the right-hand side of equation (28). The interpretation will be, of course, the same as before.

In Case 1 of the factor model estimation (i.e., known or observable factors) discussed in the entry, the  $K$  PCs clearly provide a good approximation of the first  $K$  factors since they explain the asset variations the most given  $K$ . Moreover, in either Case 1 or Case 2 (latent factors), the PCA is equivalent to minimizing the model errors, as given by equation (20), by choosing both the loadings and factors, and hence the solution should be close to the true factors and loadings.

# KEY POINTS

- The arbitrage pricing theory is a general multifactor model for pricing assets. The theory does not provide any specific information about what the factors are. Moreover, the APT does not make any claims on the number of factors either.
- The APT asserts that only taking the systematic risks is rewarded.
- The APT simply assumes that if the returns are driven by the factors, and if investors know the betas for the factors, then an arbitrage portfolio, which requires no investment but yields a positive return, can be formed if the APT pricing relation is violated in the market. In equilibrium, therefore, if there are no arbitrage opportunities, deviations from the APT pricing relation should not be observed.


- In practice, factor models are widely used as a tool for estimating expected asset returns and their covariance matrix. The reason is that if investors can identify the factors that drive asset returns, they will have much better estimates of the true expected asset returns and the covariance matrix, and hence will be able to form a much better portfolio than otherwise possible.
- Factor model estimation depends crucially on (1) whether the factors are identified (known) and unidentified (latent), and (2) the sample size and the number of assets. Furthermore, factor models can be used not only for explaining asset returns, but also for predicting future returns.
- The simplest case of factor models is where the factors are assumed to be known or observable, so that time-series data are those factors can be used to estimate the model.
- In practice there are three commonly used equity multifactor models where known factors are used: (1) the Fama-French three-factor model, (2) the MSCI Barra fundamental factor model, and (3) the Burmeister-Ibbotson-Roll-Ross macroeconomic factor model. Fundamental factor models use company and industry attributes and market data as descriptors. In a macroeconomic factor model, the inputs to the model are historical stock returns and observable macroeconomic variables.
- An argument for the use of latent factors is that the observed factors may be measured with errors or have been already anticipated by investors. Without imposing what the factors are from likely incorrect beliefs, asset managers can statistically estimate the factors based on the factor model and data.
- Two important extensions of the static factor model used in practice are (1) dynamic fac tor models, which allow the factors to evolve over time according to a vector autoregression, and (2) allowance for a large number of factors. This second factor model provides a large dimension reduction that transforms the hundreds of variables into a few, which can be estimated by principal components analysis.


- Principal components analysis is a simple statistical approach that can be applied to estimate a factor model easily and effectively.

# REFERENCES

Amengual, D., and Watson, M. (2007). Consistent estimation of the number of dynamic factors in a large N and T panel. Journal of Business and Economic Statistics 25: 91-96.
Bai, J. (2003). Inferential theory for factor models of large dimensions. *Econometrica* 71: 135-172.
Bai, J., and Ng, S. (2002). Determining the number of factors in approximate factor models. *Econometrica* 70: 191-221.
Burmeister, E., Roll, R., and Ross, S. A. (1994). A practitioner's guide to arbitrage pricing theory. In A Practitioner's Guide to Factor Models (pp.). Charlottesville, VA, Institute of Chartered Financial Analysts.
Connor, G., and Korajczyk, R. (1986). Performance measurement with the arbitrage pricing theory: A new framework for analysis. Journal of Financial Economics 15: 373-394.
Fama, E. F., and French, K. R. (1993). Common risk factors in the returns on stocks and bonds. Journal of Financial Economics 33, 1: 3-56.
Geweke, J., and Zhou, G. (1996). Measuring the pricing error of the arbitrage pricing theory. Review of Financial Studies 9: 557-587.
Lehmann, B. N., and Modest, D. M. (1998). The empirical foundations of the arbitrage pricing theory. Journal of Financial Economics 21: 213-254.
Litterman, R., and Scheinkman, J. (1991). Common factors affecting bond returns. Journal of Fixed Income 1: 54-61.
Ludvigson, S. C., and Ng, S. (2007). The empirical risk-return relation: A factor analysis approach. Journal of Financial Economics 83: 171-222.

Nardari, F., and Scruggs, J. T. (2007). Bayesian analysis of linear factor models with latent factors, multivariate stochastic volatility, and APT pricing restrictions. Journal of Financial and Quantitative Analysis 42: 857-892.
Rapach, D. E., Strauss, J. K., Tu, J., and Zhou, G. (2009). Industry return predictability: Is it there out of sample? Working paper, Washington University, St. Louis.

Ross, S. A. (1976). The arbitrage theory of capital asset pricing. Journal of Economic Theory 13: 341-360.
Seber, G. A. F. (1984). Multivariate Observations, Wiley.
