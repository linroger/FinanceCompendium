---
primary_tags:
- machine learning
- c) majority
- (fixed design) risk
- linear functions
- simple example
- decision space/parameter space
secondary_tags:
- e.g. the learning algorithm
- average prediction loss
- worst case analysis
- linear prediction
- linear least squares regression
- function value
- last term
- '''experts'' setting'
- i.e. eg
- 3.1 risk bounds
- least squares algorithm
- few examples
- algorithms behavior
- l2 case
- real valued function classes
- batch instructor
tags_extracted: '2025-12-18T18:00:48.869679'
tags_method: max_quality_v1
---

Risk vs Risk: Some differences between Statistics and ML Terminology

Instructor: Sham Kakade

# 1 A Quick Note

Unfortunately, the machine learning uses of the word "risk" quite differently from it's traditional definition in statistics — I am not sure what the historical reasons for this are. This is quick note to clarify things (mostly for my students).

My feeling is that it best not to use the terminology "risk" in ML, unless it is used in a manner consistent with the standard definition.

At a high level, the statistical risk measure the quality of the learning algorithm/estimation procedure (where the expectation is taken with respect to the training set).

# 2 From Training Sets to Parameter Estimation

We observe data:

$$
\mathcal {T} = z_{1}, \ldots z_{n}
$$

from some distribution.

For example, each  $z_{i}$  could just be a real number, sample from an i.i.d. distribution and our goal might be to just estimate the mean.

The standard example in supervised learning is where  $z_{i} = (x_{i},y_{i})$ , where have a distribution over input/output pairs. Our goal may be to predict the  $Y$  give some  $X$ , e.g. to predict the conditional expectation  $\mathbb{E}[Y|X_i]$  if  $Y$  is real.

Typically, in supervised learning, we are interested in some notion of the our prediction loss. For example, in regression, the average squared error for a function  $f$  is:

$$
L_{\text{squarederror}} (f) = \mathbb {E} (f (X) - Y)^{2}
$$

where the expectation is with respect to a random  $X, Y$  pair. In the fixed design setting, our prediction loss for a linear predictor was:

$$
L_{\text{squarederror}} (w) = \frac{1}{n} \mathbb {E} \| X w - Y \|^{2} = \frac{1}{n} \sum_{i} \mathbb {E} \left(X_{i} \cdot w - Y_{i}\right)^{2}
$$

where now  $X$  is fixed matrix and  $Y$  is a vector.

Let us say a decision rule  $\delta$  is a mapping from  $\mathcal{T}$  to some space — this is our estimation procedure or our learning algorithm. The notion of risk in statistics measures the quality of the procedure, on average.

# 3 Risk: In statistics

Suppose we have a set of distributions  $\{P_{\theta}:\theta \in \Theta \}$ . Assume there exists a  $\theta^{*}$  such that:

$$
\mathcal {T} \sim P_{\theta^{*}}
$$

Say our goal is to estimate  $\theta^{*}$ , and  $\delta (\mathcal{T})$  is our estimate  $\hat{\theta}$ .

Suppose we a loss function which measures the error in our parameter estimate:

$$
L_{\mathrm{param}} (\theta^{*}, \theta)
$$

Note this is a loss between parameter estimates.

For example, in the fixed design regression setting, the standard choice is:

$$
L_{\mathrm{param}} (\theta^{*}, \theta) = \| \theta - \theta^{*} \|_{\Sigma}^{2}
$$

(where  $\Sigma = \frac{1}{n} X^{\top}X$ ).

Note that, for linear regression,

$$
L_{\text{param}} \left(w^{*}, w\right) = L_{\text{prediction}} (w) - L_{\text{prediction}} \left(w^{*}\right)
$$

e.g. this parameter loss is the "regret" of  $w$ .

The risk is defined with respect to the true  $\theta^{*}$  and the decision rule  $\delta$ . It is defined as:

$$
\operatorname{Risk}_{\text{statistica}} \left(\theta^{*}, \delta\right) = \mathbb {E}_{\mathcal {T} \sim P_{\theta^{*}}} L_{\text{param}} \left(\theta^{*}, \theta (\mathcal {T})\right)
$$

Critically, note that the expectation is over the training set.

# 4 Risk in Machine Learning

In the supervised learning setting, we have loss function  $\ell(f(X), Y)$  which is the prediction loss on a given  $(X, Y)$  pair with respect to the function  $f$ . For example,

$$
\ell (f (X), Y) = (f (X) - Y)^{2}
$$

for regression.

Often, in machine learning, the "risk" is defined as:

$$
\operatorname{Risk}_{\mathrm{ML}} (f) = \mathbb {E} [ \ell (f (X), Y) ]
$$

where the expectation is with respect to the underlying distribution. Sometimes this is also referred to as the average loss, or the average prediction loss.

Often, this will be denoted as:

$$
L (f) = \mathbb {E} [ \ell (f (X), Y) ]
$$

(which will be the convention in this class). We will just refer to this as the average loss.

Let  $f^{*}$  is the minimizer of  $L$  in some set  $\mathcal{F}$ , e.g.

$$
f^{*} \in \arg \min_{f \in \mathcal {F}} L (f)
$$

The regret of  $f$  is defined as:

$$
L (f) - L \left(f^{*}\right)
$$

Note that for the case of square error:

$$
L_{\text{param}} \left(w^{*}, w\right) = L (w) - L \left(w^{*}\right)
$$

where the parameter loss is defined with respect to the appropriate norm between  $w^{*}$  and  $w$ . Essentially, the regret is often analogous to the parameter loss. Though often ML does not assume a true model for the data generation process (beyond iid and certain other restrictions).

# 4.1 Risk vs Risk

Again, let  $\delta$  be the learning rule (e.g. a decision rule), which takes  $\mathcal{T}$  to some function  $f\in \mathcal{F}$ . We are typically interested in statements of the form:

With probability greater than  $1 - \delta$

$$
L (\delta (\mathcal {T})) - L (f^{*}) \leq??
$$

where the randomness is with respect to the training set  $\mathcal{T}$ .

The analogue of the statistical risk, in this setting, would be:

$$
\operatorname{Risk}_{\text{BetterDefinition}} \left(f^{*}, \delta\right) = \mathbb {E}_{\mathcal {T}} \left[ L (\delta (\mathcal {T})) - L \left(f^{*}\right) \right]
$$

and this definition is consistent in the regression setting. The important high level distinction is that, in statistics, the risk is a measure of the quality of the decision procedure (e.g. the learning algorithm).

{ The most natural analogy for the statistical risk in the machine learning terminology would be the expected risk of a learning algorithm, where the expectation is with respect to the training set. }

ML typically does not directly look at statements of the form:

$$
\mathbb {E}_{\mathcal {T}} \left[ L (\delta (\mathcal {T})) - L (f^{*}) \right] \leq??
$$

but instead attempts to make high probability statements. These high probability statements are essentially a stronger guarantees. Typically, bound the above expectation, usually involves going through a high probability argument anyways. Hence, often just the high probability statements are provided.

However, bounding even the expected regret (e.g. statistical risk) of the learning algorithm is powerful statement. Any strong guarantee on performance of the learning algorithm/decision procedure is ultimately what we are after.

# Introduction and the Bias-Variance Tradeoff

Instructor: Sham Kakade

# 1 Goal of Statistical Learning Theory

The goal of statistical learning theory is to study the statistical behavior of statistical machine learning algorithms, and understand their theoretical properties such as rate of convergence (upper bound), optimality (whether upper bound matches lower bound), computational efficiency, under different conditions. Some questions to address:

This class focuses mostly on the analysis of supervised learning (prediction) algorithms.

- Bias Variance  
- Linear Regression: fixed design (when  $X$ 's are fixed and  $Y$ 's are random); random design (when  $X$ 's and  $Y$ 's are random); feature selection (more dimensions than points); ridge regression  
- Classification  
- online learning

- obtains points in a sequential manner  
- easy optimization algorithms

convex losses  
- PCA  
- Assume using  $L_{1}$  regularization for feature selection. Under what conditions it can recover the correct feature set?  
- sharp analysis and lower bounds, where possible

Some of the tools that we will utilize are:

- concentration of measure (central limit theorem; tail bounds)  
- empirical process theory  
- oracle inequalities  
- covering numbers (fundamental), and some Rademacher and VC tools  
- some martingale tools  
- (some) convex analysis  
- (some) random matrix analysis

# 2 Goal of Class and Requirements

# Goals:

1. understand theoretical analysis and basic techniques  
2. analysis of common algorithms  
3. ability to read theoretical papers  
4. basic theoretical analysis  
5. intuition for performance of algorithms

# Assignments:

1. occasional HWs  
2. reading papers with theoretical analysis  
3. project?

# 3 Example Supervised Learning Problems

Two basic paradigms we will focus on are regression and classification.

# 3.1 Linear Least Squares Regression

The Input  $X$  is a  $p$ -dimensional real valued vector in  $R^p$ . The output  $Y$  is a real-valued number (e.g. return of a particular stock). The function class  $C$  consists of linear functions, parameterized by linear weight (coefficient) vector  $w \in R^p$ . That is,  $f_w \in C$  as a linear function  $f_w(x) = w \cdot x$ . The quality measure  $L(f) = \mathbb{E}(f(X) - Y)^2$  is the squared error, under some distribution on  $X$  and  $Y$ .

Empirical risk minimization is the least squares estimator:

$$
\hat {w} = \frac{1}{n} \arg \min_{w \in R^{p}} \sum_{i} (w^{\top} X_{i} - Y_{i})^{2},
$$

and the generalization error of  $\hat{w}$  is

$$
E_{X, Y} (\hat {w}^{\top} X - Y)^{2}.
$$

# 3.2 Binary Linear Classification

The Input  $X$  is a  $p$ -dimensional real valued vector in  $R^p$  (e.g., representing information of an email). The output  $Y$  is a binary-valued number (whether the email is a spam or not), assume the binary values are  $\{-1, 1\}$ . The function class  $C$  consists of linear functions, parameterized by linear weight (coefficient) vector  $w \in R^p$ . That is,  $f_w \in C$  as a linear function  $f_w(x) = w^\top x$ . The quality measure is  $\ell(f(x), y) = I(f(x) \neq y)$ , where  $I(\cdot)$  is the 0-1 valued indicator function, so that  $\ell(f(x), y) = 0$  if  $f(x) = y$  (prediction is correct), or  $\ell(f(x), y) = 1$  if  $f(x) \neq y$  (prediction is incorrect). This loss is called classification error loss.

Empirical risk minimization is the least squares estimator:

$$
\hat {w} = \frac{1}{n} \arg \min_{w \in R^{p}} \sum_{i} I (w^{\top} X_{i} \neq Y_{i})
$$

and the generalization error of  $\hat{w}$  is

$$
L (f) = E_{X, Y} I \left(w^{\top} X \neq Y\right).
$$

# 4 The Squared Error; Linear Regression; and Bias-Variance

The (generalization) squared error of  $f: \mathbb{R}^p \to \mathbb{R}$  is

$$
L (f) = \mathbb {E}_{X, Y} (f (X) - Y)^{2}.
$$

which we are interested in optimizing.

Note that the Bayes optimal function is the conditional expectation. To see this, first observe:

# Lemma 4.1.

We have that:

$$
L (f) = \mathbb {E}_{X} (f (X) - \mathbb {E} [ Y | X ])^{2} + \mathbb {E}_{X} [ V A R (Y | X) ]
$$

Proof. First, note that:

$$
\begin{array}{l} L (f) = \mathbb {E}_{X, Y} (f (X) - Y)^{2} \\ = \mathbb {E}_{X, Y} (f (X) - \mathbb {E} [ Y | X ] + \mathbb {E} [ Y | X ] - Y)^{2} \\ = \mathbb {E}_{X, Y} (f (X) - \mathbb {E} [ Y | X ])^{2} + \mathbb {E}_{X, Y} (f (X) - \mathbb {E} [ Y | X ]) (\mathbb {E} [ Y | X ] - Y) + \mathbb {E}_{X, Y} (\mathbb {E} [ Y | X ] - Y)^{2} \\ = \mathbb {E}_{X, Y} (f (X) - \mathbb {E} [ Y | X ])^{2} + \mathbb {E}_{X} \left(\left(f (X) - \mathbb {E} [ Y | X ]\right) \mathbb {E}_{Y} \left(\mathbb {E} [ Y | X ] - Y\right)\right) + \mathbb {E}_{X, Y} \left(\mathbb {E} [ Y | X ] - Y\right)^{2} \\ = \mathbb {E}_{X, Y} (f (X) - \mathbb {E} [ Y | X ])^{2} + 0 + \mathbb {E} (\mathbb {E} [ Y | X ] - Y)^{2} \\ = \mathbb {E} (f (X) - \mathbb {E} [ Y | X ])^{2} + \mathbb {E} [ \operatorname{VAR} (Y | X) ] \tag {1} \\ \end{array}
$$

which completes the proof.

Corollary 4.2. The Bayes optimal predictor (that which minimizes the squared loss) is  $\mathbb{E}[Y|X]$ .

Aside: Defining the conditional expectation is delicate issue in measure theory (involving the Radon-Nikodyn derivative). From a functional analysis point of view, one can actually define the conditional expectation as any function  $f(x)$  which achieves the infimum loss. There are many such functions (though they may only disagree on sets of measure 0) — all such functions are considered versions of the conditional expectation.

The square loss is actually quite natural when dealing with  $Y \in \{0,1\}$  if we seek to model probabilities, which is what the following corollary observes.

Corollary 4.3. If  $Y \in \{0,1\}$ , then the Bayes optimal predictor is the conditional probability  $\operatorname{Pr}(Y = 1|X)$ , since  $\operatorname{Pr}(Y = 1|X) = \mathbb{E}[Y|X]$ .

# 4.1 Linear Least Squares Regression and the Error Decomposition

We are typically provided with some training set  $\mathcal{T}$  of the form  $(X_{1},Y_{1}),\ldots (X_{n},Y_{n})$ . The are two natural sampling processes for this set.

- Fixed Design: Here we consider  $X_{1}$  to  $X_{n}$  as fixed (e.g. not random variables). Our goal is to estimate the function  $\mathbb{E}[Y|X_i]$ . This is sometimes called signal reconstruction. The loss considered uses the uniform distribution over these  $X_{i}$ 's, e.g.:

$$
L (2) = \frac{1}{n} \sum_{i} \mathbb {E} \left[ \left(w^{\top} X_{i} - Y_{i}\right)^{2} \mid X_{i} \right]
$$

- Random Design: Both  $X$  and  $Y$  are random.

Let  $\hat{w}_{\mathcal{T}}$  be the linear function constructed using the training set (we drop the  $\mathcal{T}$  subscript, when clear from context).

The following lemma characterizes the expected loss of  $\hat{w}_{\mathcal{T}}$

Lemma 4.4. Let  $w^{*}$  be the best linear predictor, e.g.

$$
w^{*} \in \arg \min  L (w)
$$

Let  $\hat{w}_{\mathcal{T}}$  be any estimator based on  $\mathcal{T}$ . For any distribution over  $(X,Y)$ , and any distribution over  $\mathcal{T}$ , we have that:

$$
\begin{array}{l} \mathbb {E}_{\mathcal {T}} L (w_{\mathcal {T}}) \\ = \mathbb {E}_{X} [ V A R (Y | X) ] + \mathbb {E}_{X} (\mathbb {E} [ Y | X ] - \mathbb {E}_{\mathcal {T}} [ w_{\mathcal {T}} ] \cdot X)^{2} + \mathbb {E}_{X, \mathcal {T}} (\mathbb {E}_{\mathcal {T}} [ w_{\mathcal {T}} ] \cdot X - w_{\mathcal {T}} \cdot X)^{2} \\ = \mathbb {E}_{X} [ V A R (Y | X) ] + \mathbb {E}_{X} (\mathbb {E} [ Y | X ] - w^{*} \cdot X)^{2} + \mathbb {E}_{X} (w^{*} \cdot X - \mathbb {E} [ w_{\mathcal {T}} ] \cdot X)^{2} + \mathbb {E}_{X, \mathcal {T}} (\mathbb {E} [ w_{\mathcal {T}} ] \cdot X - w_{\mathcal {T}} \cdot X)^{2} \\ =^{\prime \prime} n o i s e v a r i a n c e +^{\prime \prime} a p p r o x i m a t i o n e r r o r o f f u n c t i o n c l a s s^{\prime \prime} +^{\prime \prime} e s t i m a t i o n b i a s^{\prime \prime} +^{\prime \prime} e s t i m a t i o n v a r i a n c e^{\prime \prime}} \\ \end{array}
$$

(note we have made no assumptions about  $\mathcal{T}$ ).

Proof. For the first equality, (using equation 1)

$$
\begin{array}{l} \mathbb {E}_{\mathcal {T}} L (w_{\mathcal {T}}) \\ = \mathbb {E} [ \operatorname{VAR} (Y | X) ] + \mathbb {E}_{X, \mathcal {T}} \left(w_{\mathcal {T}} \cdot X - \mathbb {E} [ Y | X ]\right)^{2} \\ \end{array}
$$

The last term is equal to:

$$
\begin{array}{l} \mathbb {E}_{X, \mathcal {T}} \left(w_{\mathcal {T}} \cdot X - \mathbb {E} [ Y | X ]\right)^{2} \\ = \mathbb {E}_{X, \mathcal {T}} \left(w_{\mathcal {T}} \cdot X - \mathbb {E} [ w_{\mathcal {T}} ] \cdot X + \mathbb {E} [ w_{\mathcal {T}} ] \cdot X - \mathbb {E} [ Y | X ]\right)^{2} \\ \end{array}
$$

Now observe that:

$$
\begin{array}{l} \mathbb {E}_{X, \mathcal {T}} \left(w_{\mathcal {T}} \cdot X - \mathbb {E} \left[ w_{\mathcal {T}} \right] \cdot X\right) \left(\mathbb {E} \left[ w_{\mathcal {T}} \right] \cdot X - \mathbb {E} \left[ Y | X \right]\right) \\ = \mathbb {E}_{X} \left(\mathbb {E}_{\mathcal {T}} \left[ w_{\mathcal {T}} \cdot \right] X - \mathbb {E} \left[ w_{\mathcal {T}} \right] \cdot X\right) \left(\mathbb {E} \left[ w_{\mathcal {T}} \right] \cdot X - \mathbb {E} [ Y | X ]\right) \\ = 0 \\ \end{array}
$$

The final equation is a HW problem.

Let us make the following observations:

- the first term is referred to as the noise (note that the noise at a given  $X$  may depend on  $X$ , e.g. it may be heteroskedastic)  
- the second term (in the second equation) is referred to as the "bias", which decomposes into two terms, the approximation error of the class and the bias of the algorithm

- the final term is the variance  
- note that in expectation the approximation error term

Remember that our goal is to find  $\hat{f}$  that predicts well on unseen data (test data). However, we only observe prediction accuracy of  $\hat{f}$  on the training data. In order to obtain highly accurate classifier, we have to balance the following two aspects:

- prediction rule should fit the training data well; that is, achieving small training error  
- requires a more expressive model.  
- performance of prediction rule on test data should match that on training data  
- requires a less expressive (more stable) model.

There are various related theoretical concepts: training versus test error, bias variance trade-off, overfitting, model complexity, generalization performance, regularization.

# 4.2 Regret and Risk

It is often useful to compare to the best thing we could hope for in our class. In other words, we may be interested in:

$$
L (w_{\mathcal {T}}) - L (w^{*})
$$

which is the regret.

The risk is the expected value:

$$
E_{\mathcal {T}} \left(L \left(w_{\mathcal {T}}\right) - L \left(w^{*}\right)\right)
$$

Note that:

$$
E_{\mathcal {T}} (L (w_{\mathcal {T}}) - L (w^{*})) = \mathbb {E}_{X} (w^{*} \cdot X - \mathbb {E} [ w_{\mathcal {T}} ] \cdot X)^{2} + \mathbb {E}_{X, \mathcal {T}} (\mathbb {E} [ w_{\mathcal {T}} ] \cdot X - w_{\mathcal {T}} \cdot X)^{2}
$$

Note that the "approximation error" is not explicitly in the risk.

# Fixed Design and Least Squares

Instructor: Sham Kakade

# 1 Intro

We now attempt to understand the least squares algorithm in the fixed design setting. We start with the  $p < n$  case, and then move to the  $p > n$  case.

# 2 Review: The SVD; the "Thin" SVD; and the pseudo-inverse

Theorem 2.1. (SVD) For any matrix  $X \in \mathbb{R}^{n \times p}$ , there exists  $U \in \mathbb{R}^{n \times n}$  and  $V \in \mathbb{R}^{p \times p}$  orthogonal matrices (e.g. matrices with orthogonal rows and columns, so that  $UU^{\top} = I$  and  $VV^{t}op = I$ ) such that:

$$
X = \sum_{i} \lambda_{i} u_{i} v_{i}^{\top} = U d i a g (\lambda_{1}, \dots \lambda_{\min \{n, d \}}) V^{\top}
$$

where  $\text{diag}(\cdot)$  is diagonal  $\mathbb{R}^{n \times p}$  matrix and the  $\lambda_i$ 's are referred to as the singular values.

For  $X\in \mathbb{R}^{n\times p}$  and  $Y\in \mathbb{R}^n$  , suppose that the equation:

$$
X \beta = Y
$$

has a unique solution and that  $X$  is invertible, then:

$$
\beta = X^{- 1} Y
$$

In regression, there is typically noise, and we find a  $\beta$  which minimizes:

$$
\left\| X \beta - Y \right\|^{2}
$$

Clearly, if there is no noise, then a solution is given by  $\beta = X^{-1}Y$ , assuming no degeneracies. In general though, the least squares solution is given by:

$$
\beta = \left(X^{\top} X\right)^{- 1} X Y \tag {1}
$$

which one can argue is a less intuitive (and elegant) expression than when there is an exact solution. Furthermore, Equation 1 above only holds if  $X$  is of rank  $d$  (else  $(X^{\top}X)^{-1}$  would not be invertible).

Now let us define the Moore-Penrose pseudo-inverse. While there are a variety of more elegant definitions of the pseudo-inverse, in terms of certain desirable properties, we take the more brute force definition.

First, let us define the 'thin' SVD.

Definition 2.2. We say  $X = UDV^{\top}$  is the "thin" SVD of  $X \in \mathbb{R}^{n \times p}$  if:  $U^{n \times r}$  and  $V^{p \times r}$  have orthonormal columns (e.g. where  $r$  is the number of columns) and  $D \in \mathbb{R}^{r \times r}$  is diagonal, with all its diagonal entries being non-zero.

Now we define the pseudo-inverse as follows:

Definition 2.3. Let  $X = UDV^{\top}$  be the thin SVD of  $X$ . The Moore-Penrose pseudo-inverse of  $X$ , denoted by  $X^{+}$ , is defined as:

$$
X^{+} = V D^{- 1} U^{\top}
$$

Let us make some observations:

1. First, if  $X$  is invertible (so  $X$  is square) then  $X^{+} = X^{-1}$ .  
2. Suppose that  $X$  isn't square and that  $Xw = Y$  has a (unique) solution, then  $w = X^{+}Y$ .  
3. Now suppose that  $Xw = Y$  has (at least one) solution. Then one solution is given by  $w = X^{+}Y$ . This solution is the minimum norm solution  $w$ .  
4. (geometric interpretation) The matrix  $X^{+}$  maps any point in the range of  $X$  to the minimum norm point in the domain.

With the pseudo-inverse, we have the much more elegant least squares estimator:

Lemma 2.4. The least squares estimator is:

$$
\beta = X^{+} Y
$$

(Note that the above is always a minimizer, while the solution provided in Equation 1 only holds if  $X^{\top}X$  is invertible, in which case the minimizer is unique).

# 3 Risk and Fixed Design Regression

Let us now consider the 'normal means' problem, sometimes referred to as the fixed design setting (also sometimes referred to as the problem of signal reconstruction). Here, we have a set of  $n$  points  $\mathcal{X} = \{X_i\} \subset \mathbb{R}^p$ , and let  $X$  denote the  $\mathbb{R}^{n \times p}$  matrix where the  $i$  row of  $X$  is  $X_i$ . We also observe a output vector  $Y \in \mathbb{R}^n$ . We desire to learn  $\mathbb{E}[Y]$ . In particular, we seek to predict  $\mathbb{E}[Y]$  as  $X\hat{\beta}$ .

The square loss of an estimator  $w$  is:

$$
L (w) = \frac{1}{n} \mathbb {E}_{Y} \| Y - X w \|_{2}^{2} = \frac{1}{n} \sum_{i = 1}^{n} \mathbb {E} (Y_{i} - X_{i} w)^{2}
$$

where the expectation is with respect to  $Y$ . Let  $\beta$  be the optimal predictor:

$$
\beta = \arg \min_{w} L (w)
$$

Let  $\hat{\beta}_Y$  be an estimator constructed with the outcome  $Y$  — we drop the explicit  $Y$  dependence as this is clear from context. The (fixed design) risk of an estimator  $\hat{\beta}$  is defined as:

$$
R (\hat {\beta}) = E_{Y} [ L (\hat {\beta}_{Y}) - L (\beta) ] = E_{Y} \frac{1}{n} \| X \hat {\beta}_{Y} - X \beta \|^{2} := E_{Y} \frac{1}{n} \| \hat {Y} - Y^{*} \|^{2}
$$

where  $Y^{*} = X\beta$  and  $\hat{Y} = X\hat{\beta}$ . Denoting,

$$
\Sigma := \frac{1}{n} X^{\top} X
$$

we can write the risk as:

$$
R (\hat {\beta}) = E_{Y} (\hat {\beta} - \beta)^{\top} \Sigma (\hat {\beta} - \beta) := E_{Y} \| \hat {\beta} - \beta \|_{\Sigma}^{2}
$$

Another interpretation of the risk is how well we accurately learn the parameters of the model.

# 3.1 Risk Bounds for Least Squares

The least squares estimator using an outcome  $Y$  is just:

$$
\hat {\beta} = \arg \min_{w} \frac{1}{n} \| Y - X w \|^{2}
$$

The first derivative condition is that:

$$
X^{\top} (Y - X \hat {\beta}) = 0
$$

which is sometimes referred to as the normal equations.

The least squares estimator is then:

$$
\hat {\beta} = \frac{1}{n} \Sigma^{- 1} X^{\top} Y
$$

Equivalently,

$$
\hat {\beta} = X^{\dagger} Y
$$

where  $X^{\dagger}$  is the pseudo-inverse.

Also note that that:

$$
\hat {Y} = \Pi Y
$$

where  $\Pi$  is the orthogonal projection operator  $\frac{1}{n} X\Sigma^{-1}X^{\top}$ . Note that:

$$
\Pi = U U^{\top}
$$

where  $U \in \mathbb{R}^{d \times p}$  is the left matrix from the SVD of  $X$  (with orthogonal columns).

It is straightforward to see that:

$$
R (\hat {\beta}) = E_{Y} \frac{1}{n} \| \Pi E [ Y ] - \Pi Y \|^{2}
$$

and

$$
\beta = X^{\dagger} \mathbb {E} [ Y ] = \mathbb {E} [ \hat {\beta} ], Y^{*} = \Pi E [ Y ] = \mathbb {E} [ \hat {Y} ]
$$

Lemma 3.1. (Risk Bound) If  $\operatorname{Var}(Y_i) = \sigma^2$  (i.e. the noise is homoskedastic), we have that:

$$
R (\hat {\beta}_{\lambda}) = \frac{d}{n} \sigma^{2}
$$

If  $\operatorname{Var}(Y_i) \leq \sigma^2$ , then:

$$
R (\hat {\beta}_{\lambda}) \leq \frac{d}{n} \sigma^{2}
$$

Proof. Note that we can write:

$$
Y = E [ Y ] + \eta
$$

where  $\mathbb{E}[\eta] = \vec{0}$ . Since  $Y^{*} = \Pi \mathbb{E}[Y]$

$$
\| Y^{*} - \Pi Y \|^{2} = \| \Pi \mathbb {E} [ Y ] - (\Pi \mathbb {E} [ Y ] + \Pi \eta) \|^{2} = \| \Pi \eta \|^{2}
$$

Hence the risk is:

$$
\frac{1}{n} \mathbb {E} \| \Pi \eta \|^{2} = \frac{1}{n} \mathbb {E} \eta U U^{\top} \eta = \frac{d}{n} \sigma^{2}
$$

The second claim follows from using an inequality in the second to last step.

# 3.2 What about high probability bounds?

Note that we have shown that:

Lemma 3.2. We have that:

$$
L (\hat {\beta}) - L (\beta) = \frac{1}{n} \| Y^{*} - \Pi Y \|^{2} = \frac{1}{n} \| \Pi \eta \|^{2}
$$

where  $\eta$  is the noise vector on  $Y$ .

So if were interested in:

$$
\Pr (L (\hat {\beta}) - L (\beta) \geq \epsilon)
$$

The this is equivalent to understanding the following tail bound:

$$
\operatorname * {P r} (\frac{1}{n} \| \Pi \eta \|^{2} \geq \epsilon)
$$

which will examine later.

# 4 What about if  $d > n$ ?

If  $d > n$ , the risk of the least squares estimator is not useful (as  $\hat{Y} = Y$ ). There are two common approaches we seek to understand in detail:

- Regularization. The idea is to "shrink"  $\beta$  in a certain manner to reduce variance (and increase bias).  
- Feature Selection. The idea is to fit  $\beta$  only in certain directions (and exclude other irrelevant directions).

# 5 Ridge Regression

# 5.1 Bias Variance in the Fixed Design Setting

Lemma 5.1. (bias-variance for risk) We can decompose the expected risk as:

$$
\begin{array}{l} R (\hat {\beta}) = \mathbb {E}_{Y} \| \hat {\beta} - \mathbb {E} [ \hat {\beta} ] \|_{\Sigma}^{2} + \| \mathbb {E} [ \hat {\beta} ] - \beta \|_{\Sigma}^{2} \\ = \frac{1}{n} \mathbb {E}_{Y} \| \mathbb {E} [ \hat {Y} ] - \hat {Y} \|^{2} + \frac{1}{n} \| Y^{*} - \mathbb {E} [ \hat {Y} ] \|^{2} \\ \end{array}
$$

where we have that:

$$
(a v e r a g e) \text{variance} = \frac{1}{n} \mathbb {E}_{Y} \| X \hat {\beta} - X \mathbb {E} [ \hat {\beta} ] \|^{2} = \frac{1}{n} \mathbb {E}_{Y} \| \mathbb {E} [ \hat {Y} ] - \hat {Y} \|^{2}
$$

and

$$
p r e d i c t i o n \beta = X \beta - X \mathbb {E} [ \hat {\beta} ] = Y^{*} - \mathbb {E} [ \hat {Y} ]
$$

# 5.2 Ridge Regression and the Bias-Variance Tradeoff

The ridge regression estimator using an outcome  $Y$  is just:

$$
\hat {\beta}_{\lambda} = \arg \min_{w} \frac{1}{n} \| Y - X w \|^{2} + \lambda \| w \|^{2}
$$

The estimator is then:

$$
\hat {\beta}_{\lambda} = (\Sigma + \lambda I)^{- 1} (\frac{1}{n} X^{\top} Y) = (\Sigma + \lambda I)^{- 1} (\frac{1}{n} \sum Y_{i} X_{i}^{\top})
$$

For simplicity, let us rotate  $X$  such that:

$$
\Sigma := \frac{1}{n} X^{\top} X = d i a g (\lambda_{1}, \lambda_{2}, \dots \lambda_{d})
$$

(note this rotation does not alter the predictions of rotationally invariant algorithms). With this choice, we have that:

$$
[ \hat {\beta}_{\lambda} ]_{j} = \frac{\frac{1}{n} \sum_{i = 1}^{n} Y_{i} [ X_{i} ]_{j}}{\lambda_{j} + \lambda}
$$

It is straightforward to see that:

$$
\beta = \mathbb {E} [ \hat {\beta}_{0} ]
$$

and it follows that:

$$
[ \mathbb {E} [ \hat {\beta} ]_{\lambda} ]_{j} := \mathbb {E} [ \hat {\beta}_{\lambda} ]_{j} = \frac{\lambda_{j}}{\lambda_{j} + \lambda} \beta_{j}
$$

by just taking expectations.

Lemma 5.2. (Risk Bound) If  $\operatorname{Var}(Y_i) = \sigma^2$ , we have that:

$$
R (\hat {\beta}_{\lambda}) = \frac{\sigma^{2}}{n} \sum_{j} \left(\frac{\lambda_{j}}{\lambda_{j} + \lambda}\right)^{2} + \sum_{j} \beta_{j}^{2} \frac{\lambda_{j}}{(1 + \lambda_{j} / \lambda)^{2}}
$$

The above is an equality if  $\operatorname{Var}(Y_i) \leq \sigma^2$ .

Proof. in next class

# 1 Ridge Regression

# 1.1 Bias Variance in the Fixed Design Setting

Lemma 1.1. (bias-variance for risk) We can decompose the expected risk as:

$$
\begin{array}{l} R (\hat {\beta}) = \mathbb {E}_{Y} \| \hat {\beta} - \mathbb {E} [ \hat {\beta} ] \|_{\Sigma}^{2} + \| \mathbb {E} [ \hat {\beta} ] - \beta \|_{\Sigma}^{2} \\ = \frac{1}{n} \mathbb {E}_{Y} \| \mathbb {E} [ \hat {Y} ] - \hat {Y} \|^{2} + \frac{1}{n} \| Y^{*} - \mathbb {E} [ \hat {Y} ] \|^{2} \\ \end{array}
$$

where we have that:

$$
(a v e r a g e) \text{variance} = \frac{1}{n} \mathbb {E}_{Y} \| X \hat {\beta} - X \mathbb {E} [ \hat {\beta} ] \|^{2} = \frac{1}{n} \mathbb {E}_{Y} \| \mathbb {E} [ \hat {Y} ] - \hat {Y} \|^{2}
$$

and

$$
p r e d i c t i o n \beta = X \beta - X \mathbb {E} [ \hat {\beta} ] = Y^{*} - \mathbb {E} [ \hat {Y} ]
$$

# 1.2 Ridge Regression and the Bias-Variance Tradeoff

The ridge regression estimator using an outcome  $Y$  is just:

$$
\hat {\beta}_{\lambda} = \arg \min_{w} \frac{1}{n} \| Y - X w \|^{2} + \lambda \| w \|^{2}
$$

The estimator is then:

$$
\hat {\beta}_{\lambda} = (\Sigma + \lambda I)^{- 1} \left(\frac{1}{n} X^{\top} Y\right) = (\Sigma + \lambda I)^{- 1} \left(\frac{1}{n} \sum Y_{i} X_{i}^{\top}\right)
$$

For simplicity, let us rotate  $X$  such that:

$$
\Sigma := \frac{1}{n} X^{\top} X = d i a g (\lambda_{1}, \lambda_{2}, \dots \lambda_{d})
$$

(note this rotation does not alter the predictions of rotationally invariant algorithms). With this choice, we have that:

$$
[ \hat {\beta}_{\lambda} ]_{j} = \frac{\frac{1}{n} \sum_{i = 1}^{n} Y_{i} \left[ X_{i} \right]_{j}}{\lambda_{j} + \lambda}
$$

It is straightforward to see that:

$$
\beta = \mathbb {E} [ \hat {\beta}_{0} ]
$$

and it follows that:

$$
[ \mathbb {E} [ \hat {\beta} ]_{\lambda} ]_{j} := \mathbb {E} [ \hat {\beta}_{\lambda} ]_{j} = \frac{\lambda_{j}}{\lambda_{j} + \lambda} \beta_{j}
$$

by just taking expectations.

Lemma 1.2. (Risk Bound) If  $\operatorname{Var}(Y_i) = \sigma^2$ , we have that:

$$
R (\hat {\beta}_{\lambda}) = \frac{\sigma^{2}}{n} \sum_{j} (\frac{\lambda_{j}}{\lambda_{j} + \lambda})^{2} + \sum_{j} \beta_{j}^{2} \frac{\lambda_{j}}{(1 + \lambda_{j} / \lambda)^{2}}
$$

The above is an equality if  $\operatorname{Var}(Y_i) \leq \sigma^2$ .

Proof. Note that in our coordinate system we have  $X = U D^{\top}$  (from the thin SVD), since  $X^{\top}X$  is diagonal. Here, the diagonal entries are  $\sqrt{n\lambda_j}$ . Letting  $\eta$  be the noise:

$$
Y = \mathbb {E} [ Y ] + \eta
$$

and

$$
\Sigma_{\lambda} = \Sigma + \lambda I,
$$

so that  $\hat{\beta}_{\lambda} = \frac{1}{n}\Sigma_{\lambda}X^{\top}Y$ . We have that:

$$
\begin{array}{l} \mathbb {E}_{Y} \| \hat {\beta}_{\lambda} - \mathbb {E} [ \hat {\beta} ]_{\lambda} \|_{\Sigma}^{2} = \frac{1}{n^{2}} \mathbb {E}_{\eta} [ \eta^{\top} X \Sigma_{\lambda} \Sigma \Sigma_{\lambda} X \eta ] \\ = \frac{1}{n^{2}} \mathbb {E}_{\eta} [ \eta^{\top} U D i a g (\ldots , \frac{n \lambda_{j}^{2}}{(\lambda_{j} + \lambda)^{2}}, \ldots) U^{\top} \eta ] \\ = \frac{1}{n} \sum_{j} \frac{\lambda_{j}^{2}}{(\lambda_{j} + \lambda)^{2}} \mathbb {E}_{\eta} [ U^{\top} \eta ]_{j}^{2} \\ = \frac{\sigma^{2}}{n} \sum_{j} \frac{\lambda_{j}^{2}}{(\lambda_{j} + \lambda)^{2}} \\ \end{array}
$$

This holds with equality if  $\operatorname{Var}(Y_i) = 1$ . For the bias term,

$$
\begin{array}{l} \left\| \bar {\beta}_{\lambda} - \beta \right\|_{\Sigma}^{2} = \sum_{j} \lambda_{j} \left(\left[ \bar {\beta}_{\lambda} \right]_{j} - [ \beta ]_{j}\right)^{2} \\ = \sum_{j} \beta_{j}^{2} \lambda_{j} \left(\frac{\lambda_{j}}{\lambda_{j} + \lambda} - 1\right)^{2} \\ = \sum_{j} \beta_{j}^{2} \lambda_{j} \left(\frac{\lambda}{\lambda_{j} + \lambda}\right)^{2} \\ \end{array}
$$

and the result follows from algebraic manipulations.

# 1.3 Margin Based Bound

There following bound characterizes the risk for two natural settings for  $\lambda$ .

Theorem 1.3. Assume  $\operatorname{Var}(Y_i) \leq 1$

- (Finite Dims) For  $\lambda = 0$

$$
R (\hat {\beta}_{\lambda}) \leq \frac{d}{n}
$$

And if  $Var(Y_{i}) = 1$ , then  $R(\hat{\beta}_{\lambda}) = \frac{d}{n}$ .

- (Infinite Dims) For  $\lambda = \frac{\sqrt{\|\Sigma\|_{trace}}}{\|\beta\|\sqrt{n}}$ , then:

$$
R (\hat {\beta}_{\lambda}) \leq \frac{\| \beta \| \sqrt{\| \Sigma \|_{t r a c e}}}{2 \sqrt{n}} \leq \frac{\| \beta \| \| \mathcal {X} \|}{2 \sqrt{n}}
$$

where the trace norm is the sum of the singular values and  $\| \mathcal{X} \| = \max_{i} \| X_{i} \|$ . Furthermore, for all  $n$  there exists a distribution  $\operatorname*{Pr}[Y]$  and an  $X$  such that the inf  $_{\lambda} R(\hat{\beta}_{\lambda})$  is  $\Omega^{*}\left(\frac{\|\beta\||\mathcal{X}||}{\sqrt{n}}\right)$  (so the above bound is tight up to log factors in  $n$ ).

Conceptually, the second bound is 'dimension free', i.e. it does not depend explicitly on  $d$ , which could be infinite. And we are effectively doing regression in a large (potentially) infinite dimensional space.

Proof. The  $\lambda = 0$  case follows directly from the previous lemma. Using that  $(a + b)^2 \geq 2ab$ , we can bound the variance term for general  $\lambda$  as follows:

$$
\frac{1}{n} \sum_{j} \left(\frac{\lambda_{j}}{\lambda_{j} + \lambda}\right)^{2} \leq \frac{1}{n} \sum_{j} \frac{\lambda_{j}^{2}}{2 \lambda_{j} \lambda} = \frac{\sum_{j} \lambda_{j}}{2 n \lambda}
$$

Again, using that  $(a + b)^2 \geq 2ab$ , the bias term is bounded as:

$$
\sum_{j} \beta_{j}^{2} \frac{\lambda_{j}}{(1 + \lambda_{j} / \lambda)^{2}} \leq \sum_{j} \beta_{j}^{2} \frac{\lambda_{j}}{2 \lambda_{j} / \lambda} = \frac{\lambda}{2} | | \beta | |^{2}
$$

So we have that:

$$
R (\hat {\beta}_{\lambda}) \leq \frac{\| \Sigma \|_{\mathrm{trace}}}{2 n \lambda} + \frac{\lambda}{2} \| \beta \|^{2}
$$

and using the choice of  $\lambda$  completes the proof.

To see the above bound is tight, consider the following problem. Let  $X_{i} = \sqrt{\frac{n}{i}}$  and  $\beta_{i} = \sqrt{\frac{1}{i}}$  and let  $Y = X\beta + \eta$  where  $\eta$  is unit variance. Here, we have that  $\lambda_{i} = \frac{1}{i}$  so  $\sum_{j} \lambda_{j} \leq \log n$  and  $\| \beta \|^{2} \leq \log n$ , so the upper is  $\frac{\log n}{\sqrt{n}}$ . Now one can write the risk as:

$$
\begin{array}{l} R \left(\hat {\beta}_{\lambda}\right) = \frac{1}{n} \sum_{j} \left(\frac{\frac{1}{i}}{\frac{1}{i} + \lambda}\right)^{2} + \sum_{j} \frac{\frac{1}{i^{2}}}{\left(1 + \frac{1}{i \lambda}\right)^{2}} (1) \\ = \sum_{j} \frac{\frac{1}{n} + \lambda^{2}}{(1 + i \lambda)^{2}} (2) \\ \geq \int_{1}^{n} \frac{\frac{1}{n} + \lambda^{2}}{(1 + x \lambda)^{2}} d x (3) \\ = \left(\frac{1}{n} + \lambda^{2}\right) \left(\frac{1}{\lambda (1 + \lambda)} - \frac{1}{\lambda (1 + n \lambda)}\right) (4) \\ = \left(\frac{1}{n \lambda} + \lambda\right) \left(\frac{1}{1 + \lambda} - \frac{1}{1 + n \lambda}\right) (5) \\ \end{array}
$$

and this is  $\Omega (\sqrt{n})$ , for all  $\lambda$ .

# 2 PCA Projections and MLEs

Fix some  $\lambda$ . Consider the following 'keep or kill' estimator, which uses the MLE estimate if  $\lambda_i \geq \lambda$  and 0 otherwise:

$$
[ \hat {\beta}_{P C A, \lambda} ]_{j} = \left\{ \begin{array}{l l} [ \hat {\beta}_{0} ]_{j} & \text{if} \lambda_{i} \geq \lambda \\ 0 & \text{else} \end{array} \right.
$$

where  $\hat{\beta}_0$  is the MLE estimator. This estimator is 0 for the small values of  $\lambda_{i}$  (those in which we are effectively regularizing more anyways).

Theorem 2.1. (Risk Inflation of  $\hat{\beta}_{PCA,\lambda}$ )

Assume  $\operatorname{Var}(Y_i) = 1$ , then

$$
\mathbb {E}_{Y} [ R (\hat {\beta}_{P C A, \lambda}) ] \leq 4 \mathbb {E}_{Y} [ R (\hat {\beta}_{\lambda}) ]
$$

Note that the actual risk (not just an upper bound) of the simple PCA estimate is within a factor of 4 of the ridge regression risk on a wide class of problems.

Proof. Recall that:

$$
\mathbb {E}_{Y} \left[ R (\hat {\beta}_{\lambda}) \right] = \frac{1}{n} \sum_{j} \left(\frac{\lambda_{j}}{\lambda_{j} + \lambda}\right)^{2} + \sum_{j} \beta_{j}^{2} \frac{\lambda_{j}}{(1 + \lambda_{j} / \lambda)^{2}}
$$

Since we can write the risk as:

$$
\mathbb {E}_{Y} [ R (\hat {\beta}) ] = \mathbb {E}_{Y} \| \hat {\beta} - \overline {{\beta}} \|_{\Sigma}^{2} + \| \overline {{\beta}} - \beta \|_{\Sigma}^{2}
$$

we have that:

$$
\mathbb {E}_{Y} [ R (\hat {\beta}_{P C A, \lambda}) ] = \frac{1}{n} \sum_{j} \mathbb {I} (\lambda_{j} > \lambda) + \sum_{j: \lambda_{j} <   \lambda} \lambda_{j} \beta_{j}^{2}
$$

where  $\mathbb{I}$  is the indicator function.

We now show that each term in the risk of  $\hat{\beta}_{PCA,\lambda}$  is within a factor of 4 for each term in  $\hat{\beta}_{\lambda}$ . If  $\lambda_j > \lambda$ , then the ratio of the  $j - th$  terms is:

$$
\begin{array}{l} \frac{\frac{1}{n}}{\frac{1}{n} \left(\frac{\lambda_{j}}{\lambda_{j} + \lambda}\right)^{2} + \beta_{j}^{2} \frac{\lambda_{j}}{(1 + \lambda_{j} / \lambda)^{2}}} \leq \frac{\frac{1}{n}}{\frac{1}{n} \left(\frac{\lambda_{j}}{\lambda_{j} + \lambda}\right)^{2}} \\ = \frac{(\lambda_{j} + \lambda)^{2}}{\lambda_{j}^{2}} \\ \leq \left(1 + \frac{\lambda}{\lambda_{j}}\right)^{2} \\ \leq 4 \\ \end{array}
$$

Similarly, if  $\lambda_{j}\leq \lambda$ , then the ratio of the  $j$ -th terms is:

$$
\begin{array}{l} \frac{\lambda_{j} \beta_{j}^{2}}{\frac{1}{n} (\frac{\lambda_{j}}{\lambda_{j} + \lambda})^{2} + \frac{\lambda_{j} \beta_{j}^{2}}{(1 + \lambda_{j} / \lambda)^{2}}} \leq \frac{\lambda_{j} \beta_{j}^{2}}{\frac{\lambda_{j} \beta_{j}^{2}}{(1 + \lambda_{j} / \lambda)^{2}}} \\ = (1 + \lambda_{j} / \lambda)^{2} \\ \leq 4 \\ \end{array}
$$

Since each term is within a factor of 4, the proof is completed.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/3f1f3ebb-6a12-4a2a-a9ea-82bbea0d783f/3852b4fd0db1fc8a712db49081247fcb5c8235c8df23460ccfae605acc8f8915.jpg)

# The Central Limit Theorem; Large Deviations; and Rate Functions

Instructor: Sham Kakade

# 1 The Central Limit Theorem

While true under more general conditions, a rather simple proof exists of the central limit theorem. This proof provides some insight into our theory of large deviations.

Recall that  $M_X(\lambda) = Ee^{\lambda X}$  is the moment generating function of a random variable  $X$ .

Theorem 1.1. Suppose  $X_{1}, X_{2}, \ldots, X_{n}$  is a sequence of independent, identically distributed (i.i.d.) random variables with mean  $\mu$  and variance  $\sigma_{2}$ . Suppose that the  $M_X(\lambda)$  exists for all  $\lambda$  in a neighborhood of 0. Let  $\bar{X}_n = n^{-1}\sum_{i=1}^{n}X_i$ . Then for all  $x$ ,

$$
\lim_{n \rightarrow \infty} \Pr \left(\frac{\bar {X}_{n} - \mu}{\sigma \sqrt{n}} \leq z\right) = \Phi (z)
$$

where  $\Phi (\cdot)$  is the standard normal CDF.

Proof. Without loss of generality, assume  $\mu = 0$ . Define  $Z_{n} = \frac{X_{n} - \mu}{\sigma\sqrt{n}}$ . By independence and properties of the MGF, we have  $M_{Z_n}(\lambda) = (M_X(\frac{\lambda}{\sigma\sqrt{n}}))^n$ . As the moment generating function exists around 0 (and the derivatives of the moment generating function are the moments), Taylor's theorem implies:

$$
\begin{array}{l} M_{X} (s) = M_{X} (0) + M_{X}^{\prime} (0) s + \frac{1}{2} M_{X}^{\prime \prime} (0) s^{2} + \frac{1}{3 !} M_{X}^{\prime \prime \prime} (0) s^{3}. \\ = 1 + 0 + \frac{1}{2} M_{X}^{\prime \prime} (0) + o \left(s^{2}\right) \\ \end{array}
$$

where a function  $g(s) = o(s^2)$  if  $g(s) / s^2 \to 0$  as  $s \to 0$ . Hence,

$$
M_{X} \left(\frac{\lambda}{\sigma \sqrt{n}}\right) = 1 + \frac{1}{2} \frac{\lambda^{2}}{n} + o \left(\frac{\lambda^{2}}{n}\right)
$$

where the last term is with respect to  $n\to \infty$  . Hence,

$$
M_{Z_{n}} (\lambda) = \left(1 + \frac{1}{2} \frac{\lambda^{2}}{n} + o \left(\frac{\lambda^{2}}{n}\right)\right)^{n} \rightarrow \exp \left(\frac{\lambda^{2}}{2}\right)
$$

Thus the limiting moment generating function of  $Z_{n}$  is identical to that of a standard normal (in a neighborhood of 0 for  $\lambda$ ). This proves they have identical CDFs (using properties of the MGF).

# 2 Large Deviations

Note that the CLT says

$$
\lim_{n \to \infty} \Pr \left(\bar {X}_{n} \leq \mu + z \sigma \sqrt{n}\right) = \Phi (z)
$$

or, equivalently,

$$
\lim_{n \rightarrow \infty} \Pr \left(\bar {X}_{n} \geq \mu + z \sigma \sqrt{n}\right) = 1 - \Phi (z)
$$

which is the (asymptotic) probability in the tail.

Instead, suppose we seek the following probability

$$
\Pr \left(\bar {X}_{n} \geq \mu + \epsilon\right) =??
$$

, where  $\epsilon$  is fixed. Does the central limit theorem say anything useful? It is easy to see that, for any  $\epsilon$

$$
\lim_{n \rightarrow \infty} \Pr \left(\bar {X}_{n} \geq \mu + \epsilon\right) = 0
$$

Instead, we seek a more meaningful limit. In particular, we will examine:

$$
\frac{1}{n} \ln \Pr (\bar {X}_{n} \geq \mu + \epsilon) =??
$$

Does the CLT provide the limit of the above quantity? Why have we chosen  $\frac{1}{n}$ ?

The answer to the former question is "no" since the key difference is that  $\epsilon$  is fixed in the above (while the CLT only quantifies a limit for  $\epsilon$  which scales as  $1 / \sqrt{n}$ .

# 2.1 Large Deviations for a Gaussian random variable

Let  $X$  be a standard Gaussian random variable:  $X \sim N(0,1)$ , with density function

$$
p (x) = \frac{1}{\sqrt{2 \pi}} e^{- x^{2} / 2}.
$$

For  $\epsilon > 0$ , what is the probability  $P(X \geq \epsilon)$ ?

We have the following upper bound

$$
\begin{array}{l} P (X \geq \epsilon) = \int_{\epsilon}^{\infty} \frac{1}{\sqrt{2 \pi}} e^{- x^{2} / 2} d x \\ = \int_{0}^{\infty} \frac{1}{\sqrt{2 \pi}} e^{- (x + \epsilon)^{2} / 2} d x \leq \int_{0}^{\infty} \frac{1}{\sqrt{2 \pi}} e^{- (x^{2} + \epsilon^{2}) / 2} d x \\ = 0. 5 e^{- \epsilon^{2} / 2} d x \\ \end{array}
$$

and lower bound

$$
\begin{array}{l} P (X \geq \epsilon) = \int_{\epsilon}^{\infty} \frac{1}{\sqrt{2 \pi}} e^{- x^{2} / 2} d x \\ = \int_{0}^{\infty} \frac{1}{\sqrt{2 \pi}} e^{- (x + \epsilon)^{2} / 2} d x \\ \geq \int_{0}^{1} \frac{1}{\sqrt{2 \pi}} e^{- (x + \epsilon)^{2} / 2} d x \geq 0. 3 4 e^{- (2 \epsilon + \epsilon^{2}) / 2} d x \\ \geq 0. 5 e^{- (\epsilon + 1)^{2} / 2} d x. \\ \end{array}
$$

Therefore we have

$$
0. 5 e^{- (\epsilon + 1)^{2} / 2} \leq P (X \geq \epsilon) \leq 0. 5 e^{- \epsilon^{2} / 2}.
$$

Equivalently,

$$
P (X \geq \epsilon) \leq 0. 5 e^{- \epsilon^{2} / 2} \leq P (X \geq \epsilon - 1)
$$

which shows that our upper bound is sandwiched between the tail probabilities within one deviation.

Now let  $X_{1},\ldots ,X_{n}$  be  $n$  iid Gaussians  $X_{i}\sim N(\mu ,\sigma^{2})$ , and let  $\bar{X}_n = n^{-1}\sum_{i = 1}^n X_i$ . Then since  $P(\bar{X}_n\geq \mu +\epsilon) = P(\sqrt{n} (\bar{X}_n - \mu) / \sigma \geq \sqrt{n}\epsilon /\sigma)$ , where  $\sqrt{n} (\bar{X}_n - \mu) / \sigma \sim N(0,1)$ , the above bound becomes

$$
0. 5 e^{- n (\epsilon + \sigma / \sqrt{n})^{2} / 2 \sigma^{2}} \leq P (\bar {X}_{n} \geq \mu + \epsilon) \leq 0. 5 e^{- n \epsilon^{2} / 2 \sigma^{2}}.
$$

The tail probability decays exponentially fast. The bound is tight, meaning that any fixed  $\epsilon$ :

$$
\lim_{n \to \infty} n^{- 1} \ln P (\bar {X}_{n} \geq \mu + \epsilon) = - \epsilon^{2} / 2 \sigma^{2}.
$$

This is a large deviation result (meaning fixed deviation  $\epsilon$  from the mean is much larger than standard deviation  $\sigma / \sqrt{n}$  of  $X$ ).

# 3 Markov Inequality

More generally, let  $X_{1},\ldots ,X_{n}$  be  $n$  iid random variables (not necessarily Gaussian) with mean  $\mu$ , and let  $\bar{X}_n = n^{-1}\sum_{i = 1}^{n}X_{i}$ , we are interested in estimating the tail bound  $P(\bar{X}_n\geq \mu +\epsilon)$  and  $P(\bar{X}_n\leq \mu -\epsilon)$  for some  $\epsilon >0$ .

Generally, this is achieved through Markov inequality:

Lemma 3.1. Suppose  $Z \geq 0$ , with probability 1. For all  $t \geq 0$

$$
\Pr (Z \geq t) \leq \mathbb {E} [ Z ] / t
$$

Proof. Observe that

$$
\mathbb {E} (Z) \geq \mathbb {E} [ Z \operatorname{I} [ Z > t ] ] \geq t \mathbb {E} [ \operatorname{I} [ Z > t ] ] = t \Pr (Z \geq t)
$$

which proves the result.

Corollary 3.2. Suppose  $g(x) \geq 0$  and that  $\mu = \mathbb{E}[X]$ . Then:

$$
P (\bar {X}_{n} \geq \mu + \epsilon) \leq \frac{E g (\bar {X}_{n} - \mu)}{\inf_{z \geq \epsilon} g (z)}.
$$

One can use moment inequality with  $g(z) = |z|^m$  for some  $m$ . However, one needs to estimate  $Eg(\bar{X}_n - \mu)$ . In particular, Chebyshev inequality picks  $g(z) = z^2$ , which is easy to estimate:

$$
E g (\bar {X}_{n} - \mu) = E (\bar {X}_{n} - \mu)^{2} = \frac{1}{n} \operatorname{Var} (X_{1}).
$$

Therefore

$$
P (\bar {X}_{n} \geq \mu + \epsilon) \leq \frac{\operatorname{Var} (X_{1})}{n \epsilon^{2}}.
$$

# 4 Exponential Inequality

In order to get exponential tail bounds, we choose  $g(z) = e^{\lambda nz}$  for some tuning parameter  $\lambda > 0$ . Then Markov inequality becomes

$$
P (\bar {X}_{n} \geq \mu + \epsilon) \leq \frac{E e^{\lambda n (\bar {X}_{n} - \mu)}}{e^{\lambda n \epsilon}} = \frac{E e^{\lambda \sum_{i = 1}^{n} (X_{i} - \mu)}}{e^{\lambda n \epsilon}} = e^{- \lambda n \epsilon} E^{n} e^{\lambda (X_{1} - \mu)}.
$$

Note that in order to use this estimate, we have to assume that  $Ee^{\lambda (X_1 - \mu)} < \infty$  for some  $\lambda > 0$ . Taking logarithm, it follows that we have the following theorem

Theorem 4.1. For any  $n$  and  $\epsilon > 0$ :

$$
n^{- 1} \ln P (\bar {X}_{n} \geq \mu + \epsilon) \leq \inf_{\lambda > 0} [ - \lambda \epsilon + \ln E e^{\lambda (X_{1} - \mu)} ].
$$

Similarly

$$
n^{- 1} \ln P (\bar {X}_{n} \leq \mu - \epsilon) \leq \inf_{\lambda <   0} [ \lambda \epsilon + \ln E e^{\lambda (X_{1} - \mu)} ].
$$

The function  $\Gamma (\lambda) = \ln Ee^{\lambda X_1}$  is called logarithmic moment generating function of a random variable  $X_{1}$ . Exponential inequality for sum of independent random variables is very easy to apply because independence allows us to change the problem of estimating the exponential moment of the sum of independent random variables into the estimating of the exponential moment of a single random variable. Another way to write tail bound is

Corollary 4.2. We have that

$$
P (\bar {X}_{n} \geq \mu + \epsilon) \leq \exp [ - n I (\mu + \epsilon) ],
$$

where  $I(z)$  defined as

$$
- I (z) = \inf_{\lambda > 0} [ - \lambda z + \ln E e^{\lambda X_{1}} ]
$$

is the rate function.

Example: Gaussian random variable  $X_{i}\sim N(\mu ,\sigma^{2})$  , then

$$
E e^{\lambda (X_{1} - \mu)} = \int_{- \infty}^{\infty} \frac{1}{\sqrt{2 \pi} \sigma} e^{\lambda x} e^{- x^{2} / 2 \sigma^{2}} d x = \int_{- \infty}^{\infty} \frac{1}{\sqrt{2 \pi}} e^{\lambda^{2} \sigma^{2} / 2} e^{- (x / \sigma - \lambda \sigma)^{2} / 2} d x / \sigma = e^{\lambda^{2} \sigma^{2} / 2}.
$$

Therefore (with optimal  $\lambda = \epsilon /\sigma^2$  below)

$$
\inf_{\lambda > 0} \left[ - \lambda \epsilon + \ln E e^{- \lambda \left(X_{1} - \mu\right)} \right] = \inf_{\lambda > 0} \left[ - \lambda \epsilon + \lambda^{2} \sigma^{2} / 2 \right] = - \epsilon^{2} / 2 \sigma^{2}.
$$

Exactly the same (and tight) estimate of Gaussian tail inequality derived by integration.

# 1 The Exponential Inequality and Convex Duality

The exponential inequality for sum of independent random variables is very easy to apply because independence allows us to change the problem of estimating the exponential moment of the sum of independent random variables into the estimating of the exponential moment of a single random variable.

Theorem 1.1. For any  $n$  and  $\epsilon > 0$ :

$$
n^{- 1} \ln P (\bar {X}_{n} \geq \mu + \epsilon) \leq \inf_{\lambda > 0} [ - \lambda \epsilon + \ln E e^{\lambda (X - \mu)} ].
$$

Similarly

$$
n^{- 1} \ln P (\bar {X}_{n} \leq \mu - \epsilon) \leq \inf_{\lambda <   0} [ \lambda \epsilon + \ln E e^{\lambda (X - \mu)} ].
$$

Another way to write tail bound is

Corollary 1.2. We have that

$$
P \left(\bar {X}_{n} \geq \mu + \epsilon\right) \leq \exp \left[ - n I (\mu + \epsilon) \right],
$$

where  $I(z)$  defined as

$$
- I (z) = \inf_{\lambda > 0} [ - \lambda z + \ln E e^{\lambda X} ]
$$

is the rate function.

Example: Gaussian random variable  $X_{i}\sim N(\mu ,\sigma^{2})$  , then

$$
E e^{\lambda (X - \mu)} = \int_{- \infty}^{\infty} \frac{1}{\sqrt{2 \pi} \sigma} e^{\lambda x} e^{- x^{2} / 2 \sigma^{2}} d x = \int_{- \infty}^{\infty} \frac{1}{\sqrt{2 \pi}} e^{\lambda^{2} \sigma^{2} / 2} e^{- (x / \sigma - \lambda \sigma)^{2} / 2} d x / \sigma = e^{\lambda^{2} \sigma^{2} / 2}.
$$

Therefore (with optimal  $\lambda = \epsilon /\sigma^2$  below)

$$
\inf_{\lambda > 0} \left[ - \lambda \epsilon + \ln E e^{- \lambda (X - \mu)} \right] = \inf_{\lambda > 0} \left[ - \lambda \epsilon + \lambda^{2} \sigma^{2} / 2 \right] = - \epsilon^{2} / 2 \sigma^{2}.
$$

Exactly the same (and tight) estimate of Gaussian tail inequality derived by integration.

# 1.1 The Fenchel Conjugate

Assume we have a vector space  $\mathcal{X}$ , equipped with an inner product  $<, \cdot, >$  (and a dual space  $\mathcal{X}^*$  — for all practical purposes, think of  $\mathcal{X}^* = \mathcal{X}$ ).

Let  $f$  be a function:

$$
f: \mathcal {X} \to \mathbb {R} \cup \{+ \infty \}
$$

i.e.  $f$  takes values on the extended real number line. The convex conjugate is  $f^{*}$ , where

$$
f^{*}: \mathcal {X}^{*} \to \mathbb {R} \cup \{+ \infty \},
$$

is defined as:

$$
f^{*} (\lambda) = \sup_{x \in \mathcal {X}} \left(<   \lambda , x > - f (x)\right)
$$

Equivalently,

$$
f^{*} (\lambda) = - \inf_{x \in \mathcal {X}} (- <   \lambda , x > + f (x))
$$

# 1.2 A Variational interpretation of the Rate Function

The function

$$
\Gamma (\lambda) = \ln E e^{\lambda X}
$$

is called the cumulant generating function (i.e. it is the logarithmic moment generating function) of a random variable  $X$ .

A slightly modified function is to constrain  $\lambda$  to bigger than 0. So a modified function is:

$$
\Gamma_{+} (\lambda) = \left\{ \begin{array}{l l} \Gamma (\lambda) & \text{if} \lambda > 0 \\ \infty & \text{else} \end{array} \right.
$$

This modification is so that when we take an inf over  $\lambda$ , we effectively are only considering the positive  $\lambda$ .

Corollary 1.3. We have that

$$
P (\bar {X}_{n} \geq \mu + \epsilon) \leq \exp [ - n \Gamma_{+}^{*} (\mu + \epsilon) ],
$$

and that

$$
\Gamma_{+}^{*} (z) = I (z)
$$

Let us now understand  $\Gamma_{+}^{*}$

Let  $P$  be the original measure on  $X$ . Let us now define a different measure,  $P_{\lambda}$  on  $X$  as follows:

$$
d P_{\lambda} (X \geq x) = e^{\lambda x - \Gamma (\lambda)} d P (X \geq x)
$$

Note that it is normalized.

Given some  $\epsilon$ , suppose we find the  $\lambda$  such that:

$$
\mathbb {E}_{X \sim P_{\lambda}} [ X ] = \mu + \epsilon
$$

Slightly abusing notation let  $P_{\mu + \epsilon}$  be this distribution (e.g.  $P_{\mu + \epsilon}$  is  $P_{\lambda}$  for the  $\lambda$  which solves the above). Intuitively,  $P_{\mu + \epsilon}$  is the "perturbed" distribution which shifts the mean by  $\epsilon$ .

Lemma 1.4. Assume  $P_{\mu + \epsilon}$  exists. Then:

$$
I (\mu + \epsilon) = - K L (P_{\mu + \epsilon} | | P)
$$

Proof. Left as a homework problem.

# 2 “Small”, “Medium”, and “Large” Deviations

The tail probability we are interested in is:

$$
P (\bar {X}_{n} \geq \mu + \epsilon)
$$

For large  $n$ , we seek to understand the behavior of:

$$
P (\bar {X}_{n} \geq \mu + \epsilon_{n})
$$

where  $\epsilon_{n}$  is a function of  $n$ .

We can think of "three" natural asymptotics. If  $\epsilon_{n}$  behaves as  $1 / \sqrt{n}$ , e.g.

$$
\epsilon_{n} = \Theta \left(z \frac{\sigma^{2}}{\sqrt{n}}\right)
$$

then the CLT capture the tail probability (under the tail probability with respect  $z$ , under the standard normal).

If  $\epsilon$  is a constant, then this "large deviation" tail probability tends to 0. Here, we can characterize

$$
\underline {{\lim }}_{n \rightarrow \infty} n^{- 1} P (\bar {X}_{n} \geq \mu + \epsilon)
$$

As we will see, the rate function governs this asymptote.

In practice, we are often interested in "medium" deviations. By this, we often use

$$
\epsilon_{n} \rightarrow 0 \text{and} \sqrt{n} \epsilon_{n} \rightarrow \infty
$$

e.g. we typically are interested in  $\epsilon_{n}$  going to 0 at a rate slower than  $\frac{1}{\sqrt{n}}$  (this is because as  $n$  increases, we also increase the model complexity).

As we now see, the rate function accurately captures both the large and small regime, so we expect it to naturally capture the medium deviation regime.

# 2.1 The Small Deviation Limit

Note that

$$
P (\bar {X}_{n} \geq \mu + z \frac{\sigma^{2}}{\sqrt{n}}) \leq - n I (\mu + z \frac{\sigma^{2}}{\sqrt{n}})
$$

Theorem 2.1. We have that:

$$
\lim_{n \rightarrow \infty} - n I (\mu + z \frac{\sigma^{2}}{\sqrt{n}}) = - \frac{z^{2}}{2}
$$

Proof. HW exercise

Note this is upper bound is sharp approximation to the true Gaussian tail probability (as seen in the last lecture). Hence, in the small deviation regime, we have not lost much.

# 2.2 The Large Deviation Limit

For large deviation, the exponential Markov inequality is asymptotically tight in the following sense:

Theorem 2.2. For all  $\epsilon' > \epsilon > 0$ :

$$
\lim_{n \rightarrow \infty} n^{- 1} \ln P (\bar {X}_{n} \geq \mu + \epsilon) \geq - I (\mu + \epsilon^{\prime}).
$$

Proof. We only prove the first inequality. Let  $X_{i}$  have CDF at  $x$  as  $P(X_{i} \geq x)$ , and define distribution of  $X_{i}'$  with density at  $x$  as  $dP_{\lambda}(X_{i}' \geq x) = e^{\lambda x - \Gamma(\lambda)} dP(X_{i} \geq x)$  (e.g. under  $P_{\lambda}$ ). Let  $\bar{X}_{n}' = n^{-1} \sum_{i=1}^{n} X_{i}'$ . Then  $e^{-n\lambda \sum_{i} x_{i} + n\Gamma(\lambda)} \prod_{i} dP(X_{i}' \geq x_{i}) = \prod_{i} d(P(X_{i} \geq x_{i})$ . We use  $I$  to denote indicator function:

$$
\begin{array}{l} P \left(\bar {X}_{n} \geq \mu + \epsilon\right) \geq P \left(\bar {X}_{n} - \mu \in [ \epsilon , \epsilon^{\prime} ]\right) \\ = E_{X, \dots , X_{n}} I (\bar {X}_{n} - \mu \in [ \epsilon , \epsilon^{\prime} ]) \\ = E_{X^{\prime}, \dots , X_{n}^{\prime}} e^{- \lambda n \bar {X}_{n}^{\prime} + n \Gamma (\lambda)} I \left(\bar {X}_{n}^{\prime} - \mu \in [ \epsilon , \epsilon^{\prime} ]\right) \\ \geq e^{- \lambda n (\mu + \epsilon^{\prime}) + n \Gamma (\lambda)} E_{\bar {X}_{n}^{\prime}} I \left(\bar {X}_{n}^{\prime} - \mu \in [ \epsilon , \epsilon^{\prime} ]\right) \\ \geq e^{- \lambda n (\mu + \epsilon^{\prime}) + n \Gamma (\lambda)} (1 - o (1)) \geq e^{\inf_{\lambda > 0} (- \lambda n (\mu + \epsilon^{\prime}) + n \Gamma (\lambda)} (1 - o (1)). \\ \end{array}
$$

Note that  $\Gamma'(\lambda) = E_{\bar{X}_n'} \bar{X}_n'$ . Therefore with  $\lambda = \arg \min \inf_{\lambda} [-\lambda (\mu + (\epsilon' + \epsilon)/2) + \Gamma(\lambda)]$ , we have  $E_{\bar{X}_n'} \bar{X}_n' = \Gamma'(\lambda) = \mu + (\epsilon' + \epsilon)/2$ , and thus by the law of large numbers  $E_{\bar{X}_n'} I(\bar{X}_n' - \mu \in [\epsilon, \epsilon']) = 1 - o(1)$  as  $n \to \infty$ . This proves the lower bound.

Compare with Gaussian for similarity. Generally, with a more careful estimate, one can obtain a tight lower bound for finite  $n$  at  $\epsilon' = \epsilon + O(\sqrt{Var(X)/n})$ . That is, for exponential inequality, the looseness in terms of deviation  $\epsilon$  is only  $O(\sqrt{Var(X)/n})$ .

# 3 Sub-Gaussian Random Variables

Recall that for a Gaussian random variable:

$$
\ln E e^{\lambda (X - \mu)} = \frac{\lambda^{2}}{2} \sigma^{2}.
$$

We say  $X$  is a sub-Gaussian random variable if it has quadratically bounded logarithmic moment generating function, e.g.

$$
\ln E e^{\lambda (X - \mu)} \leq \frac{\lambda^{2}}{2} b.
$$

For this case, we have for  $z > \mu$ :

$$
- I (z) = \inf_{\lambda > 0} (- \lambda z + \lambda \mu + \frac{\lambda^{2}}{2} b).
$$

Taking derivative at optimal  $\lambda_{*}$ :

$$
- z + \mu = \lambda_{*} b,
$$

which implies that  $\lambda_{*} = (\mu -z) / b$  and

$$
I (z) = \frac{(z - \mu)^{2}}{2 b}.
$$

That is, we have

$$
P (\bar {X}_{n} \geq \mu + \epsilon) \leq e^{- n \epsilon^{2} / 2 b}.
$$

Similarly,

$$
P (\bar {X}_{n} \leq \mu - \epsilon) \leq e^{- n \epsilon^{2} / 2 b}.
$$

# Bounded Random Variables

Clearly, a Gaussian variable  $N(\mu, \sigma^2)$  is sub-Gaussian with  $b = \sigma^2$ .

Now let us consider the case of a bounded random variable.

Lemma 3.1. (Hoeffding's Lemma) Suppose that  $X \in [b_{-}, b_{+}]$  with probability 1, then  $X$  is sub-Gaussian with  $b = (b_{+} - b_{-})^{2}/4$ .

To prove this, first let us observe the following:

Lemma 3.2. We have the following equality for the second derivative of  $\Gamma$

$$
\Gamma^{\prime \prime} (\lambda) = \mathrm{Var}_{P_{\lambda}} (X)
$$

which is the variance of  $X$  under  $P_{\lambda}$ .

Proof. Left as a HW exercise.

Now we can prove Hoeffding's lemma:

Proof. First observe that:

$$
\left| X - \frac{b_{+} - b_{-}}{2} \right| \leq \frac{b_{+} - b_{-}}{2}
$$

Hence:

$$
\operatorname{Var}_{P_{\lambda}} (X) = \operatorname{Var}_{P_{\lambda}} \left(X - \frac{b_{+} - b_{-}}{2}\right) \leq \frac{(b_{+} - b_{-})^{2}}{4}
$$

Since  $\Gamma'(0) = \mu$ , we have that:

$$
\Gamma^{\prime} (\lambda) \leq \lambda \mu + \lambda^{2} \frac{(b_{+} - b_{-})^{2}}{8}
$$

(by integration and the fact the upper bound has the same first derivative as  $\Gamma$  at  $\lambda = 0$ ).

Corollary 3.3. Suppose that  $X \in [b_{-}, b_{+}]$  with probability 1, then

$$
P (\bar {X}_{n} \geq \mu + \epsilon) \leq e^{- 2 n \epsilon^{2} / (b_{+} - b_{-})^{2}}.
$$

Similarly,

$$
P (\bar {X}_{n} \leq \mu - \epsilon) \leq e^{- n 2 \epsilon^{2} / (b_{+} - b_{-})^{2}}.
$$

# Hoeffding, Chernoff, Bennet, and Bernstein Bounds

Instructor: Sham Kakade

# 1 Hoeffding's Bound

We say  $X$  is a sub-Gaussian random variable if it has quadratically bounded logarithmic moment generating function, e.g.

$$
\ln E e^{\lambda (X - \mu)} \leq \frac{\lambda^{2}}{2} b.
$$

For a sub-Gaussian random variable, we have

$$
P (\bar {X}_{n} \geq \mu + \epsilon) \leq e^{- n \epsilon^{2} / 2 b}.
$$

Similarly,

$$
P (\bar {X}_{n} \leq \mu - \epsilon) \leq e^{- n \epsilon^{2} / 2 b}.
$$

# 2 Chernoff Bound

For a binary random variable, recall the Kullback-Leibler divergence is

$$
K L (p | | q) = p \ln (p / q) + (1 - p) \ln ((1 - p) / (1 - q)).
$$

Theorem 2.1. (Relative Entropy Chernoff Bound) Assume that  $X \in [0,1]$  and  $EX = \mu$ . We have the following inequality

$$
P (\bar {X}_{n} \geq \mu + \epsilon) \leq e^{- n K L (\mu + \epsilon | | \mu)}
$$

and

$$
P (\bar {X}_{n} \leq \mu - \epsilon) \leq e^{- n K L (\mu - \epsilon | | \mu)},
$$

First, let us understand the worst case MGF for  $X$ .

Lemma 2.2. Assume that  $X \in [0,1]$  and  $EX = \mu$ . We have the following inequality

$$
\mathbb {E} e^{\lambda X} \leq (1 - \mu) e^{0} + \mu e^{\lambda}
$$

This shows that the maximum logarithmic moment generating function is achieved with a  $\{0,1\}$  valued random variable, i.e.

$$
\mathbb {E} e^{\lambda X} \leq \mathbb {E}_{X^{\prime} \sim \mu} [ e^{\lambda X^{\prime}} ]
$$

where  $X'$  is a  $\{0,1\}$  valued random variable which takes the value 1 with probability  $\mu$ .

Proof. Let  $M_X(\lambda) = Ee^{\lambda X}$  and  $M_{X'}(\lambda) = (1 - \mu)e^0 + \mu e^\lambda$ . Then  $M_X(0) = M_{X'}(0)$ . Moreover,

$$
M_{X}^{\prime} (\lambda) = E X e^{\lambda X} \leq E X e^{\lambda * 1} = \mu e^{\lambda} = M_{X^{\prime}}^{\prime} (\lambda)
$$

which completes the proof.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/3f1f3ebb-6a12-4a2a-a9ea-82bbea0d783f/ceee0e2523abbcd8183a1a4a47942fc63ee069735b8752438c0585502c14d150.jpg)

Now we are ready to provide the proof.

Proof. By the previous lemma, we only need to prove the result for binary  $X \in \{0,1\}$ , with mean 1. Recall from Lemma 1.4 in the previous lecture that,

$$
I (\mu + \epsilon) = K L (P_{\mu + \epsilon} | | P)
$$

where  $P_{\mu + \epsilon}$  was the "variational" distribution  $P_{\lambda}$  where  $\lambda$  was set such that  $\mathbb{E}_{X \sim P_{\lambda}}[X] = \mu + \epsilon$ .

Since  $X$  is binary, it must be that  $P_{\mu + \epsilon}$  is just distribution which is 1 with probability  $\mu + \epsilon$ . Hence  $KL(P_{\mu + \epsilon}||P)$  is just the KL between two binary distributions with means  $\mu + \epsilon$  and  $\mu$ , which completes the proof.

# 2.1 Useful Forms of the Chernoff Bound

Note that by Hoeffding's lemma (as  $X$  is sub-Gaussian), we have (from Lecture 5) that

$$
- K L (\mu + \epsilon | | \mu) = \inf_{\lambda > 0} [ - \lambda (\mu + \epsilon) + \ln ((1 - \mu) e^{0} + \mu e^{\lambda}) ] \leq 2 \epsilon^{2}
$$

Define  $Var_{p}$  be the variance of a  $X$  which is 1 with probability  $p$  and 0 with probability  $1 - p$ . It is straightforward to show that the second derivative with respect to  $\delta$  is:

$$
K L^{\prime \prime} (\mu + \delta | | \mu) = 1 / V a r_{\delta}
$$

Define

$$
\operatorname{MaxVar} [ \mu , \mu + \epsilon ] = \max_{p \in [ \mu , \mu + \epsilon ]} V a r_{p}
$$

which provides a lower bound on the second derivative for  $\delta$  between 0 and  $\epsilon$ .

Hence, we have that:

$$
K L (\mu + \epsilon | | \mu) \geq \frac{1}{2} \epsilon^{2} / \operatorname{MaxVar} [ \mu , \mu + \epsilon ]
$$

which leads to a nicer version of the Chernoff bound.

Theorem 2.3. (Nicer Form of the Chernoff Bound) Assume that  $X \in [0,1]$  and  $EX = \mu$ . Fix  $\epsilon$ . Define:

$$
\operatorname{MaxVar} [ \mu ,\mu +\epsilon ] = \max_{p\in [\mu ,\mu +\epsilon ]}Var_{p}
$$

as before (i.e. it is the maximal variance (of  $\{0,1\}$  variable) between  $\mu$  and  $\mu +\epsilon$ ).

We have the following inequality

$$
P (\bar {X}_{n} \geq \mu + \epsilon) \leq e^{- n \frac{\epsilon^{2}}{2 \operatorname{MaxVar} [ \mu , \mu + \epsilon ]}}
$$

and

$$
P (\bar {X}_{n} \geq \mu - \epsilon) \leq e^{- n \frac{\epsilon^{2}}{2 \operatorname{MaxVar} [ \mu - \epsilon , \mu ]}}
$$

The following corollary (while always true) is much sharper bound than Hoeffding's bound when  $\mu \approx 0$ .

Corollary 2.4. We have the following bound:

$$
P \left(\bar {X}_{n} \geq \mu + \epsilon\right) \leq \exp \left[ - n \epsilon^{2} / 2 (\mu + \epsilon) \right]
$$

and thus

$$
P (\bar {X}_{n} \leq \mu - \epsilon) \leq \exp [ - n \epsilon^{2} / 2 \mu ].
$$

This implies a multiplicative form of the Chernoff bound since:

$$
P (\bar {X}_{n} \geq (1 + \delta) \mu) \leq \exp \left[ - n \mu \frac{\delta^{2}}{2 (1 + \delta)} \right]
$$

and

$$
P (\bar {X}_{n} \leq (1 - \delta) \mu) \leq \exp [ - n \mu \delta^{2} / 2 ]
$$

Similar results for Bernstein and Bennet inequalities are available.

# 3 Bennet Inequality

In Bennet inequality, we assume that the variable is upper bounded, and want to estimate its moment generating function using variance information.

Lemma 3.1. If  $X - EX \leq 1$ , then  $\forall \lambda \geq 0$ :

$$
\ln E e^{\lambda (X - \mu)} \leq (e^{\lambda} - \lambda - 1) V a r (X).
$$

where  $\mu = EX$

Proof. It suffices to prove the lemma when  $\mu = 0$ . Using  $\ln z \leq z - 1$ , we have

$$
\begin{array}{l} \ln E e^{\lambda X} = \ln E e^{\lambda X} \\ \leq E e^{\lambda X} - 1 \\ = \lambda^{2} E \frac{e^{\lambda X} - \lambda X - 1}{(\lambda X)^{2}} (X)^{2} \\ \leq \lambda^{2} E \frac{e^{\lambda} - \lambda - 1}{\lambda^{2}} (X)^{2}, \\ \end{array}
$$

where the second inequality follows from the fact that the function  $(e^{z} - z - 1) / z^{2}$  is non-decreasing and  $\lambda X\leq \lambda$

Lemma 3.2. We have

$$
\inf_{\lambda > 0} [ - \lambda \epsilon + (e^{\lambda} - \lambda - 1) V a r (X) ] = - V a r (X) \phi (\epsilon / V a r (X)) \leq - \frac{\epsilon^{2}}{2 (V a r (X) + \epsilon / 3)}.
$$

where  $\phi (z) = (1 + z)\ln (1 + z) - z$

Proof. Take derivative with respect to  $\lambda$ , we obtain

$$
- \epsilon + (e^{\lambda} - 1) V a r (X) = 0.
$$

Therefore  $\lambda = \ln (1 + \epsilon / Var(X))$ . Plug in, we obtain the equality.

It is easy to verify using Taylor expansion of the exponential function that for  $\lambda \in (0,3)$ :

$$
e^{\lambda} - \lambda - 1 \leq \frac{\lambda^{2}}{2} \sum_{m = 0}^{\infty} (\lambda / 3)^{m} = \frac{\lambda^{2}}{2 (1 - \lambda / 3)}.
$$

Now by picking  $\lambda = \epsilon /(Var(X) + \epsilon /3)$ , we have

$$
- \lambda \epsilon + \frac{\lambda^{2}}{2 (1 - \lambda / 3)} = - \epsilon^{2} / [ 2 \operatorname{Var} (X) + 2 \epsilon / 3 ].
$$

This proves the desired bound.  $\square$

The above bound implies the following bound: If  $X - EX \leq b$ , for some  $b > 0$ , then

$$
P [ X \geq E X + \epsilon ] \leq \exp [ - n \epsilon^{2} / (2 V a r (X) + 2 \epsilon b / 3) ].
$$

This is similar to the Gaussian result, except for the term  $2\epsilon b / 3$ . Behaves similar to Gaussian tail bound when  $\epsilon b \ll Var(X)$ .

# 4 Bernstein Inequality

In Bernstein inequality, we obtain a result similar to the simplified Bennet bound but with a moment condition. There are different forms. We consider one form.

Lemma 4.1. If  $X$  satisfies the moment condition with  $b > 0$  for integers  $m \geq 2$ :

$$
E X^{m} \leq m! b^{m - 2} V / 2,
$$

then when  $\lambda \in (0,1 / b)$ :

$$
\ln E e^{\lambda X} \leq \lambda E X + 0. 5 \lambda^{2} V (1 - \lambda b)^{- 1},
$$

and thus

$$
P \left[ \bar {X}_{n} \geq E X + \epsilon \right] \leq \exp \left[ - n \epsilon^{2} / (2 V + 2 \epsilon b) \right].
$$

Proof. We have the following estimation of logarithmic moment generating function:

$$
\ln E e^{\lambda X} \leq E e^{\lambda X} - 1 \leq \lambda E X + 0. 5 V \lambda^{2} \sum_{m = 2} b^{m - 2} \lambda^{m - 2} = \lambda E X + 0. 5 \lambda^{2} V (1 - \lambda b)^{- 1}.
$$

The last inequality is similar to the proof of Bennet inequality. Exercise: finish the proof.  $\square$

# 5 Independent but non-iid random variables

If  $X_{1},\ldots ,X_{n}$  are independent but not iid. Let  $\bar{X}_n = n^{-1}\sum_{i = 1}^n X_i$ $\mu = E\bar{X}_n$  , then we have

$$
P \left(\bar {X}_{n} \geq \mu + \epsilon\right) \leq \inf_{\lambda > 0} \left[ - \lambda n (\mu + \epsilon) + \sum_{i = 1}^{n} \ln E e^{\lambda X_{i}} \right].
$$

In particular, we have the following results:

Lemma 5.1. If  $X_{i}$  are sub-Gaussians with  $Ee^{\lambda X_i} \leq \lambda EX_i + 0.5\lambda^2 V_i$ , then

$$
P (\bar {X}_{n} \geq \mu + \epsilon) \leq \exp \left[ - \frac{n^{2} \epsilon^{2}}{2 \sum_{i = 1}^{n} V_{i}} \right].
$$

An example is Radamecher average: let  $\sigma_{i} = \{\pm 1\}$  be independent random Bernoulli variables, and  $a_{i}$  be fixed numbers, then

$$
P (n^{- 1} \sum_{i = 1}^{n} \sigma_{i} a_{i} \geq \epsilon) \leq \exp \left[ - \frac{n \epsilon^{2}}{2 n^{- 1} \sum_{i = 1}^{n} a_{i}^{2}} \right].
$$

Similarly one can derive bounds for Bennet and Bernstein inequalities.

Lemma 5.2. If  $X_{i} - EX_{i}\leq b$  for all  $i$ , then

$$
P (\bar {X}_{n} \geq \mu + \epsilon) \leq \exp \left[ - \frac{n^{2} \epsilon^{2}}{2 \sum_{i = 1}^{n} V a r (X_{i}) + 2 n b \epsilon / 3} \right].
$$

# 6 Alternative Expression

Tail inequality:  $P(\text{deviation} \geq \epsilon) \leq \delta(\epsilon)$ . Equivalent expression: with probability  $1 - \delta$ : deviation  $\leq \epsilon(\delta)$ , where  $\epsilon(\delta)$  is the inverse function of  $\delta(\epsilon)$ .

For example the Chernoff bound

$$
P (\bar {X}_{n} - \mu \geq \epsilon) \leq \exp (- 2 n \epsilon^{2}) = \delta ,
$$

means with probability  $1 - \delta$ :  $\bar{X}_n - EX \leq \sqrt{\ln(1 / \delta) / (2n)}$ .

For Bennet inequality,

$$
P \left[ \bar {X}_{n} \geq E X + \epsilon \right] \leq \exp \left[ - n \epsilon^{2} / (2 \operatorname{Var} (X) + 2 \epsilon b / 3) \right],
$$

we set

$$
\delta = \exp \left[ - n \epsilon^{2} / (2 \operatorname{Var} (X) + 2 \epsilon b / 3) \right],
$$

and thus using  $\sqrt{x + y} \leq \sqrt{x} + \sqrt{y}$ :

$$
\epsilon = \sqrt{2 V a r (X) \ln (1 / \delta) / n + b^{2} \ln (1 / \delta)^{2} / (9 n^{2})} + \frac{b \ln (1 / \delta)}{3 n} \leq \sqrt{2 V a r (X) \ln (1 / \delta) / n} + \frac{2 b \ln (1 / \delta)}{3 n}
$$

That is, with probability at least  $1 - \delta$ , we have

$$
\bar {X}_{n} - E X \leq \sqrt{2 \operatorname{Var} (X) \ln (1 / \delta) / n} + \frac{2 b \ln (1 / \delta)}{3 n}.
$$

Feature Selection, Empirical Risk Minimization, and The Orthogonal Case

Instructor: Sham Kakade

# 1 A Few Relevant Features

Our goal now is to understand how to select the best  $q$  features our of  $p$  possible features. Throughout this analysis, let us assume that:

$$
Y = X \beta + \eta ,
$$

where  $Y \in R^n$  and  $X \in \mathbb{R}^{n \times p}$ . We assume that the support of  $\beta$  is  $q$ .

# 1.1 Empirical Risk Minimization

Recall that:

$$
L (w) = \frac{1}{n} \mathbb {E} \| X w - Y \|^{2} = \frac{1}{n} \mathbb {E} \| X w - \mathbb {E} [ Y ] \|^{2} + \sigma^{2}
$$

Define our "empirical loss" as:

$$
\hat {L} (w) = \frac{1}{n} \| X w - Y \|^{2}
$$

which has no expectation over  $Y$ . Note that for a fixed  $w$

$$
\mathbb {E} [ \hat {L} (w) ] = L (w)
$$

e.g. the empirical loss is an unbiased estimate of the true loss.

Suppose we knew the support size  $q$ . One algorithm is to simply find the estimator which minimizes the empirical loss and has support only on  $q$  coordinates.

In particular,

$$
\hat {\beta}_{q} = \inf_{\operatorname{support} (w) \leq q} \hat {L} (w)
$$

where the inf is over vectors with support size  $q$ .

We are interested in, with probability,

$$
L (\hat {\beta}_{q}) - L (\beta) \leq??
$$

Recall the risk is:

$$
\mathbb {E}_{Y} \left[ L (\hat {\beta}_{q}) \right] - L (\beta) \leq??
$$

where the expectation is over  $Y$ .

# 1.2 Coordinate dependence?

Clearly, the coordinates system is important here, as the "support" is defined with respect to this coordinate system. However, note that the 'scale' in each coordinate is irrelevant here. In particular, note the empirical risk minimization does not depend on the scale of each coordinate.

# 1.3 Subset Estimation

Let  $S$  denote a subset of  $[q]$  (here  $[q]$  denotes the set of features  $\{1, 2, \ldots, q\}$ ). Let us specify the estimator on the subset  $S$  (e.g. the subspace due to the coordinates  $S$ ).

Denote the restriction of  $X$  to the subset  $\mathcal{S}$  to be  $X_{\mathcal{S}}\in \mathbb{R}^{n\times q}$ . We have that:

$$
\beta_{S} = \frac{1}{n} X_{\mathcal {S}}^{\dagger} Y
$$

where  $\dagger$  denotes the pseudo inverse.

$$
\beta_{q} = \arg \min_{\mathcal {S}} \| X_{\mathcal {S}} \beta_{\mathcal {S}} - Y \|^{2}
$$

# 1.4 Computational Issues?

Note there are  $\binom{p}{q}$  subsets of size  $q$ . Naively, this optimization would involve searching these subsets. What are cases under which this optimization can be done efficiently?

More generally, are there special cases where can find an estimator which has low risk in this setting?

{SK:example}

# 2 The Orthogonal Case

Note that the MLE over all coordinates is:

$$
\hat {\beta} = \frac{1}{n} (X^{\top} X)^{- 1} X^{\top} Y = \frac{1}{n} X^{\dagger} Y
$$

by assumption.

Let us suppose that our design matrix is orthogonal. In particular, suppose that:

$$
\Sigma = \frac{1}{n} X^{\top} X = \text{diagonal}
$$

Under the diagonal assumption, without loss of generality, we can assume without loss of generality that:

$$
\Sigma = \mathrm{I}
$$

(by rescaling each coordinate).

Here we have that  $j$ -th coordinate of the (global) MLE  $\beta_{j}$  is just correlation between  $j$ -th dimension and  $Y$ .

$$
\hat {\beta}_{j} = \frac{1}{n} (X^{\top} Y)_{j} = \frac{1}{n} X_{j} \cdot Y = \frac{1}{n} \sum_{i} X_{i, j} Y_{i} := \hat {\mathbb {E}} [ x_{j} y ]
$$

where  $X_{j}$  is the  $j$ -th column of  $X$ .

Also, by the identity assumption, we have that  $j$ -th coordinate of the MLE on  $S$  is just the restriction of

$$
[ \hat {\beta}_{\mathcal {S}} ]_{j} = \hat {\beta}_{j} = \frac{1}{n} \sum_{i} X_{i, j} Y_{i}
$$

Hence, estimation  $\hat{\beta}_{\mathcal{S}}$  for all  $S$  is easy in this case.

# 2.1 Regret in the Orthogonal Case

Let  $S^{\star}$  be the optimal support set (e.g. the support set of the true  $\beta$ ).

We can write the regret as:

$$
L (\hat {\beta}_{\mathcal {S}}) - L (\beta) = \frac{1}{n} \| X \hat {\beta}_{\mathcal {S}} - \mathbb {E} [ Y ] \|^{2} = \frac{1}{n} \| X \hat {\beta}_{\mathcal {S}} - X \beta \|^{2} = \| \hat {\beta}_{\mathcal {S}} - \beta \|^{2} = \sum_{j \not \in \mathcal {S}} \beta_{j}^{2} + \sum_{j \in \mathcal {S}} (\beta_{j} - [ \hat {\beta}_{\mathcal {S}} ]_{j})^{2}
$$

# 2.2 High Probability Bounds on the Regret

Suppose that  $\eta$  is sub-Gaussian with constant  $\sigma$ .

Hence, with probability greater than  $1 - \delta$ , that:

$$
\hat {\beta}_{j} \leq \beta_{j} + \sqrt{\frac{2 \sigma^{2} \log (1 / \delta)}{n}} \tag {1}
$$

and also that:

$$
\hat {\beta}_{j} \geq \beta_{j} - \sqrt{\frac{2 \sigma^{2} \log (1 / \delta)}{n}}
$$

(using our sub-Gaussian tail bound, from the previous lecture).

Note that union bounds states that (for events  $\mathcal{E}_1$  to  $\mathcal{E}_k$ ) that:

$$
\Pr (\mathcal {E}_{1} \text{or} \mathcal {E}_{2} \dots \text{or} \mathcal {E}_{k}) \leq \sum_{j} \Pr (\mathcal {E}_{j})
$$

(question: when is this sharp?).

Now consider the following  $2p$  events: one of the above 2 equations fail for some coordinate  $j$ . Note that if use  $\delta / 2p$  in the above the cumulative failure probability is less than:

$$
\Pr (\text{anyfailure}) \leq \sum_{j} \Pr (\text{one -sidedfailureforj}) \leq 2 p (\delta / 2 p) = \delta
$$

Hence, we have that, with probability greater than  $1 - \delta$ , that:

$$
\max_{j} | \hat {\beta}_{j} - \beta_{j} | \leq \sqrt{\frac{2 \sigma^{2} \log (2 p / \delta)}{n}}
$$

so that  $\delta$  is a failure probability with respect to any event.

The following theorem is immediate for the empirical risk minimization:

Lemma 2.1. (Regret Bound) Let  $\hat{\beta}_S$  be the empirical risk minimizer over all subsets of size no more than  $q$ . We have that with probability greater than  $1 - \delta$ :

$$
L (\hat {\beta}_{S}) - L (\beta) \leq \frac{4 q \sigma^{2} \log (2 p / \delta)}{n}
$$

Proof. For those features  $j \in S^{\star}$ , we have that:

$$
\sum_{j \in \mathcal {S}^{\star}} (\hat {\beta}_{j} - \beta_{j})^{2} \leq \frac{2 q \sigma^{2} \log (2 p / \delta)}{n}
$$

Also, by construction, there are on  $q$  features  $j \notin S^{\star}$  which are non-zero. Hence,

$$
\sum_{j \notin S^{\star}} (\hat {\beta}_{j} - \beta_{j})^{2} \leq \frac{2 q \sigma^{2} \log (2 p / \delta)}{n}
$$

which completes the proof.

# 2.3 A Better Constant with Variable Selection

Note that since:

$$
\max_{j} | \hat {\beta}_{j} - \beta_{j} | \leq \sqrt{\frac{2 \sigma^{2} \log (2 p / \delta)}{n}}
$$

we are confident that  $\beta_{j}$  is non-zero if

$$
| \hat {\beta}_{j} | \geq \sqrt{\frac{2 \sigma^{2} \log (2 p / \delta)}{n}} \tag {2}
$$

So a different algorithm is to use only those  $\hat{\beta}_j$  for which the above condition holds — else we just set  $\hat{\beta}_j = 0$ . Note this algorithm doesn't need to know  $q$ .

Lemma 2.2. If we use the estimator defined above (e.g. use only those  $j$  for which Equation 2 holds), then, with probability greater than  $1 - \delta$

$$
L (\hat {\beta}) - L (\beta) \leq \frac{2 \sigma^{2} \log (2 p / \delta)}{n}
$$

Proof. Note that with probability greater than  $1 - \delta$  we do not include an incorrect coordinate. For the  $j \in S^{\star}$ , the error contribution for each coordinate is:

$$
| \hat {\beta}_{j} - \beta_{j} |^{2} \leq \frac{2 \sigma^{2} \log (2 p / \delta)}{n}
$$

The proof is completed by summing over these  $q$  errors.

# 2.4 What about the risk?

The above provides high probability bounds. What can we say about the risk? In other words, what is:

$$
\mathbb {E} [ \| \hat {\beta} - \beta \|_{\Sigma}^{2} = \mathbb {E} [ L (\hat {\beta}) ] - L (\beta) =??
$$

where the expectation is with respect to sample  $Y$ .

Note that for the ERM algorithm, it only includes  $q$  features (at most). Also note that:

$$
L (\hat {\beta}) ] - L (\beta) = \sum_{j \not \in \mathcal {S}} \beta_{j}^{2} + \sum_{j \in \mathcal {S}} (\beta_{j} - [ \hat {\beta}_{S} ]_{j})^{2} \leq 2 q \max_{j} | \hat {\beta}_{j} - \beta_{j} |
$$

Hence:

$$
\mathbb {E} [ \| \hat {\beta} - \beta \|_{\Sigma}^{2} \leq 2 q \mathbb {E} [ \max_{j} | \hat {\beta}_{j} - \beta_{j} | ]
$$

We will return to this next lecture.

# 3 The Non-Orthogonal Case

Note now there is no reason that an estimate the ERM can be computed easily (and there are hardness results to this effect). However, for now, let us ignore this issue and examine the performance of the "subset selection" ERM algorithm.

Let  $\hat{Y}_{\mathcal{S}}$  be our prediction of  $E[Y]$  using our estimate on  $\mathcal{S}$ , i.e.

$$
\hat {Y}_{\mathcal {S}} = X \beta_{\mathcal {S}} = \Pi_{\mathcal {S}} Y
$$

Also, note the best linear predictor using only those features in  $S$ , is:

$$
\Pi_{\mathcal {S}} \mathbb {E} [ Y ]
$$

where  $\Pi_S$  is the projection of  $Y$  onto the subspace spanned by  $X_{j}$  for  $j\in S$

# 3.1 Naively, an empirical process theory approach

Let's attempt a simple (and too loose) attempt at a proof.

Let  $B$  be the maximal deviation:

$$
B = \max_{\mathcal {S}} | \hat {L} (\hat {\beta}_{\mathcal {S}}) - L (\hat {\beta}_{\mathcal {S}}) |
$$

for some constant  $B$ . Later we will see that  $B$  is an "empirical process".

For the ERM  $\beta_q$ , say which uses  $S$ , this would imply that;

$$
L (\hat {\beta}_{\mathcal {S}}) \leq \hat {L} (\hat {\beta}_{\mathcal {S}}) + B \leq \hat {L} (\hat {\beta}_{\mathcal {S}^{\star}}) + B L (\hat {\beta}_{\mathcal {S}^{\star}}) + 2 B
$$

Furthermore, at least in expectation, we have previously shown that:

$$
\mathbb {E} [ L (\hat {\beta}_{\mathcal {S}^{\star}}) - L (\beta_{\mathcal {S}^{\star}}) ] = \frac{q \sigma^{2}}{n}
$$

Thus we have that:

$$
\mathbb {E} [ L (\hat {\beta}_{\mathcal {S}}) - L (\hat {\beta}) ] \leq \frac{q \sigma^{2}}{n} + 2 \mathbb {E} [ B ]
$$

where  $\beta_{\mathcal{S}^{\star}} = \beta$

The issue then is that:

$$
\mathbb {E} [ B ] \leq \ref {e q : 1}
$$

It turns out that this approach does not lead to sharp analysis (as  $B \approx 1 / \sqrt{n}$ ).

# 4 How accurate are the empirical losses?

Let's ignore the feature selection issue for a moment and just return to linear regression, and consider the case where it may be that  $\mathbb{E}[Y] \neq \beta X$ , e.g. let's not assume that model is correct. This will be relevant since we consider subspaces which may not be the best subspace.

Lemma 4.1. Let  $\beta$  be the best linear predictor (i.e. it may be that  $\mathbb{E}[Y] \neq \beta X$ , but  $\beta$  is still the best linear predictor.) Let  $\hat{\beta}$  be the least squares estimate. We have that:

$$
L (\hat {\beta}) - \hat {L} (\hat {\beta}) = L (\beta) - \hat {L} (\beta) + \frac{2}{n} \| \Pi \eta \|^{2}
$$

Alternatively, we have that the difference in losses is:

$$
L (\hat {\beta}) - \hat {L} (\hat {\beta}) - (L (\beta) - \hat {L} (\beta)) = \frac{2}{n} \| \Pi \eta \|^{2}
$$

and, in expectation, this difference is well behaved, i.e.

$$
\mathbb {E} [ L (\hat {\beta}) - \hat {L} (\hat {\beta}) - (L (\beta) - \hat {L} (\beta)) ] = \frac{2 p \sigma^{2}}{n}
$$

where  $p$  is the dimension of column space of  $X$ .

Proof. Let  $\hat{Y}$  be our prediction of  $E[Y]$ , i.e.:

$$
\hat {Y} = \Pi Y = X \hat {\beta}
$$

Note that:

$$
L (\hat {\beta}) - L (\beta) = \frac{1}{n} \| \Pi \mathbb {E} [ Y ] - \Pi Y \|^{2} = \frac{1}{n} \| \Pi \eta \|^{2}
$$

(we also saw this in Lecture 2, lemma 3.2).

Now note that for all  $w$ ,

$$
\hat {L} (w) = \| X w - Y \|^{2} = \| X w - \Pi Y + (Y - \Pi Y) \|^{2} = \hat {L} (\hat {\beta}) + \| X w - \Pi Y \|^{2}
$$

where the cross term is 0 due to that  $\hat{\beta}$  is the best linear predictor.

Hence, using  $w = \beta$

$$
\hat {L} (\beta) - \hat {L} (\hat {\beta}) = \frac{1}{n} \| \Pi \mathbb {E} [ Y ] - \Pi Y \|^{2} = \frac{1}{n} \| \Pi \eta \|^{2}
$$

which completes the proof.

# 4.1 Comment: Accuracy of the empirical loss

Let's consider the simplest case where  $\mathcal{S} = \mathcal{S}^{\star}$ , e.g. the best subset. So we are using the true  $\beta$ .

Clearly,

$$
L (\beta) - \hat {L} (\beta) = 0
$$

Assume that  $\eta$  has variance  $\sigma^2$  in each coordinate. For this case, note that the empirical loss is just sum of  $\eta_i^2$ , since  $Y = X\beta + \eta$

Note that we can write:

$$
L (\beta) - \hat {L} (\beta) = \frac{1}{n} \sum_{i} (\sigma^{2} - \eta_{i}^{2})
$$

By the central limit theorem, we know that for large  $n$

$$
\frac{1}{n} \sum_{i} (\sigma^{2} - \eta_{i}^{2}) \approx 1 / \sqrt{n}
$$

Hence:

$$
L (\beta) - \hat {L} (\beta) \approx 1 / \sqrt{n}
$$

Hence, we expected  $B$  (in the empirical process) to be  $1 / \sqrt{n}$ .

# 4.2 The quadratic form

The key quantity of interest is:

$$
\frac{1}{n} \| \Pi_{\mathcal {S}} \eta \|^{2}
$$

If  $\eta$  is a Gaussian, then note that  $\Pi_S\eta$  is also a Gaussian vector of length  $q$ , i.e.

$$
\Pi_{\mathcal {S}} \eta \sim N (0, \mathrm{I}_{q \times q})
$$

Hence, in distribution,

$$
\frac{1}{n} \| \Pi_{\mathcal {S}} \eta \frac{\sigma^{2}}{n} \|^{2} \frac{\mathrm{indistribution}}{=} \sum_{i} x_{i}^{2}
$$

where  $x_{i}$  are standard normal distributions.

Note that the variance of the right hand side is  $k\sigma^2 /n$  , we expect that:

$$
\frac{1}{n} \| \Pi_{\mathcal {S}} \eta \frac{\sigma^{2}}{n} \|^{2} \approx \frac{q \sigma^{2}}{n} + \sqrt{\frac{q \sigma^{2}}{n}} +??
$$

Let us make this precise.

Comment: Here we have utilized a crucial property of the Gaussian noise. That a Gaussian is spherically symmetric (so a rotation preserve independence). The proof for sub-Gaussian  $\eta$  is much trickier.

# Feature Selection in the Non-Orthogonal Case

Instructor: Sham Kakade

# 1 Feature Selection

Our goal now is to understand how to select the best  $q$  features out of  $p$  possible features. Throughout this analysis, let us assume that:

$$
Y = X \beta + \eta ,
$$

where  $Y \in R^n$  and  $X \in \mathbb{R}^{n \times p}$ . We assume that the support of  $\beta$  is  $q$ .

# 1.1 Empirical Risk Minimization

Recall that:

$$
L (w) = \frac{1}{n} \mathbb {E} \| X w - Y \|^{2} = \frac{1}{n} \| X w - \mathbb {E} [ Y ] \|^{2} + \sigma^{2}
$$

Define our "empirical loss" as:

$$
\hat {L} (w) = \frac{1}{n} \| X w - Y \|^{2}
$$

which has no expectation over  $Y$ . Note that for a fixed  $w$

$$
\mathbb {E} [ \hat {L} (w) ] = L (w)
$$

e.g. the empirical loss is an unbiased estimate of the true loss.

Suppose we knew the support size  $q$ . One algorithm is to simply find the estimator which minimizes the empirical loss and has support only on  $q$  coordinates.

In particular,

$$
\hat {\beta}_{q} = \inf_{\operatorname{support} (w) \leq q} \hat {L} (w)
$$

where the inf is over vectors with support size  $q$ .

We are interested in, with probability,

$$
L (\hat {\beta}_{q}) - L (\beta) \leq??
$$

Recall the risk is:

$$
\mathbb {E}_{Y} \left[ L (\hat {\beta}_{q}) \right] - L (\beta) \leq??
$$

where the expectation is over  $Y$ .

# 2 How accurate are the true and empirical losses?

Let's ignore the feature selection issue for a moment and just return to linear regression, and consider the case where it may be that  $\mathbb{E}[Y] \neq \beta X$ , e.g. let's not assume that model is correct. This will be relevant since we consider subspaces which may not be the best subspace.

Lemma 2.1. Let  $\beta$  be the best linear predictor (i.e. it may be that  $\mathbb{E}[Y] \neq \beta X$ , but  $\beta$  is still the best linear predictor.) Let  $\hat{\beta}$  be the least squares estimate. We have that:

$$
L (\hat {\beta}) - L (\beta) = \frac{1}{n} \| \Pi \eta \|^{2}
$$

We also have that:

$$
\hat {L} (\beta) - \hat {L} (\hat {\beta}) = \frac{1}{n} \| \Pi \eta \|^{2}
$$

Proof. Let  $\hat{Y}$  be our prediction of  $E[Y]$ , i.e.:

$$
\hat {Y} = \Pi Y = X \hat {\beta}
$$

Note that:

$$
L (\hat {\beta}) - L (\beta) = \frac{1}{n} \| \Pi \mathbb {E} [ Y ] - \Pi Y \|^{2} = \frac{1}{n} \| \Pi \eta \|^{2}
$$

(we also saw this in Lecture 2, lemma 3.2).

Now note that for all  $w$ ,

$$
\hat {L} (w) = \| X w - Y \|^{2} = \| X w - \Pi Y + (Y - \Pi Y) \|^{2} = \hat {L} (\hat {\beta}) + \| X w - \Pi Y \|^{2}
$$

where the cross term is 0 due to that  $\hat{\beta}$  is the best linear predictor.

Hence, using  $w = \beta$

$$
\hat {L} (\beta) - \hat {L} (\hat {\beta}) = \frac{1}{n} \| \Pi \mathbb {E} [ Y ] - \Pi Y \|^{2} = \frac{1}{n} \| \Pi \eta \|^{2}
$$

which completes the proof.

# 2.1 Comment: Accuracy of the empirical loss

But what about:

$$
L (\hat {\beta}) - \hat {L} (\hat {\beta}) =??
$$

and

$$
L (\beta) - \hat {L} (\beta) =??
$$

It turns out that (with high probability) these are not all that small (they are  $O\left(\sqrt{1 / n}\right)$  (ignoring dimension dependencies).

Assume that  $\eta$  has variance  $\sigma^2$  in each coordinate. For this case, note that the empirical loss is just sum of  $\eta_i^2$ , since  $Y = X\beta + \eta$

Note that we can write:

$$
L (\beta) - \hat {L} (\beta) = \frac{1}{n} \sum_{i} (\sigma^{2} - \eta_{i}^{2})
$$

By the central limit theorem, we know that for large  $n$

$$
\frac{1}{n} \sum_{i} (\sigma^{2} - \eta_{i}^{2}) \approx 1 / \sqrt{n}
$$

Hence:

$$
L (\beta) - \hat {L} (\beta) \approx 1 / \sqrt{n}
$$

Hence, we expected  $B$  (in the empirical process) to be  $1 / \sqrt{n}$ .

# 3 Understanding Feature Selection

A key question is how does the loss of any least squares estimate on  $S$  related to the loss of  $\beta$ ?

Lemma 3.1. For any  $S$ ,

$$
L (\beta_{\mathcal {S}}) - L (\beta) = \hat {L} (\beta_{\mathcal {S}}) - \hat {L} (\beta) - \frac{1}{n} (X \beta_{\mathcal {S}} - X \beta) \cdot \eta
$$

where  $\hat{\beta}_{\mathcal{S}}$  is the least squares estimate on  $\mathcal{S}$  and  $\beta$  is the best linear predictor.

Proof. Observe

$$
\begin{array}{l} \hat {L} (\beta_{\mathcal {S}}) = \frac{1}{n} \| X \beta_{\mathcal {S}} - Y \|^{2} \\ = \frac{1}{n} \| X \beta_{\mathcal {S}} - (X \beta + \eta) \|^{2} \\ = L \left(\beta_{\mathcal {S}}\right) - L (\beta) + \frac{1}{n} \left(X \beta_{\mathcal {S}} - X \beta\right) \cdot \eta + \frac{1}{n} \| \eta \|^{2} \\ = L \left(\beta_{S}\right) - L (\beta) + \frac{1}{n} \left(X \beta_{S} - X \beta\right) \cdot \eta + \hat {L} (\beta) \\ \end{array}
$$

which completes the proof.

# 3.1 Feature Selection Analysis

Lemma 3.2. Let the ERM subspace  $\hat{S}$  be such that have:

$$
\hat {L} (\hat {\beta}_{\hat {\mathcal {S}}}) - \hat {L} (\beta) \leq 0
$$

We ahve

$$
L \left(\beta_{\hat {\mathcal {S}}}\right) - L (\beta) \leq - \frac{1}{n} \left(X \beta_{\hat {\mathcal {S}}} - X \beta\right) \cdot \eta + \frac{1}{n} \| \Pi_{\hat {\mathcal {S}}} \eta \|^{2}
$$

where  $\beta_{\mathcal{S}}$  is best linear predictor on this subspace.

Proof. Use that  $\hat{L} (\hat{\beta}_{\hat{\mathcal{S}}})$  is close to  $\hat{L} (\beta_{\hat{\mathcal{S}}})$  by  $\frac{1}{n}\| \Pi_{\hat{\mathcal{S}}}\eta \| ^2$

Hence we must bound the last two terms for the ERM subspace. Instead, we will consider bounding the following for all  $S$  (as this implies a bound on the ERM subspace)

$$
\frac{1}{n} (X \beta_{\mathcal {S}} - X \beta) \cdot \eta \leq ??
$$

and

$$
\frac{1}{n} \| \Pi_{\mathcal {S}} \eta \|^{2} \leq \ref {e q : 1}
$$

Lemma 3.3. We have that:

$$
V a r \left(\frac{1}{n} \left(X \beta_{\mathcal {S}} - X \beta\right) \cdot \eta\right) = \frac{1}{n} \left(L \left(\beta_{\mathcal {S}}\right) - L (\beta)\right)
$$

For the first term, we have that:

$$
\frac{1}{n} (X \beta_{\mathcal {S}} - X \beta) \sim N (0, \frac{1}{n} (L (\beta_{\mathcal {S}}) - L (\beta)))
$$

Hence for any given  $S$ , we have that:

$$
| \frac{1}{n} (X \beta_{\mathcal {S}} - X \beta) | \leq \sqrt{\frac{2 (L (\beta_{\mathcal {S}}) - L (\beta)) \log (2 / \delta)}{n}} \leq \frac{1}{2} (L (\beta_{\mathcal {S}}) - L (\beta)) + O (\frac{\log (1 / \delta)}{n})
$$

using  $2ab \leq a^2 + b^2$ , which implies (with an  $a = \sqrt{(L(\beta_S) - L(\beta)) / 2}$ ).

Now using the  $\chi^2$  tail bound, we have that:

$$
\left\| \Pi_{\mathcal {S}} \eta \right\|^{2} \leq q + 2 \sqrt{q \ln (1 / \delta)} + 2 q \ln (1 / \delta) \leq O (q + \ln (1 / \delta))
$$

Hence we have that:

Theorem 3.4. We have that with probability greater than  $1 - \delta$ , for the ERM  $\hat{\beta}_q$  (constrained to only choose  $q$  features):

$$
L \left(\hat {\beta}_{q}\right) - L (\beta) \leq O \left(\frac{q + \log \left(\binom {q} {p} / \delta\right)}{n}\right)
$$

# 4  $\chi^2$  Tail Bound

Let  $X_{i} \sim N(0,1)$  be independent Gaussians, then the distribution of  $Z = \sum_{i=1}^{n} X_{i}^{2}$  is  $\chi^2$  with  $n$  degrees of freedom.

This variable is important for analyzing least squares regression.

Theorem 4.1. Let  $X_{i} \sim N(0,1)$  be independent Gaussians, then the distribution of  $Z = \sum_{i=1}^{n} X_{i}^{2}$  is  $\chi^2$ . We have that (for the upper tail):

$$
P (Z / n \geq 1 + \epsilon) \leq \exp \left[ - \frac{n}{2} (\epsilon - \log (1 + \epsilon)) \right]
$$

One useful upper bound (for obtaining sharp constants) is:

$$
\exp \left[ - \frac{n}{2} (\epsilon - \log (1 + \epsilon)) \right] \leq \exp \left[ - \frac{n}{2} (1 + \epsilon - \sqrt{1 + 2 \epsilon}) \right]
$$

A bound that is more comparable to the Bennet-style bound is:

$$
\exp \left[ - \frac{n}{2} (\epsilon - \log (1 + \epsilon)) \right] \leq \exp \left[ - n \epsilon^{2} / (4 + 4 \epsilon) \right].
$$

(note the difference between the upper and lower tail).

For the lower tail:

$$
P (Z / n \leq 1 - \epsilon) \leq \exp [ - n \epsilon^{2} / 4 ].
$$

Hence, with probability  $1 - \delta$ :

$$
Z / n \leq 1 + 2 \sqrt{\ln (1 / \delta) / n} + 2 \frac{\ln (1 / \delta)}{n}
$$

and with probability  $1 - \delta$ :

$$
Z / n \geq 1 - 2 \sqrt{\ln (1 / \delta) / n}.
$$

The logarithmic moment generating function of  $X_{i}^{2}$  for  $\lambda < 0.5$  is

$$
\Gamma (\lambda) = \ln E e^{\lambda X_{i}^{2}} = - 0. 5 \ln (1 - 2 \lambda),
$$

and  $EX_{i}^{2} = 1$ .

Proof. We only prove the upper tail. The lower tail is simpler to prove in that we can use the bound  $\log(1 + x) > 1 + x - x^2 / 2$  for  $x > 0$ .

From the moment method, we must constrain  $\lambda < -0.5$ , or, equivalently, set  $\Gamma(\lambda) = \infty$  for  $\lambda \geq 0.5$ . Hence,

$$
I (1 + \epsilon) = \inf_{0. 5 > \lambda > 0} [ - \lambda (1 + \epsilon) - 0. 5 \ln (1 - 2 \lambda) ] = - \frac{1}{2} (\epsilon - \log (1 + \epsilon))
$$

where the inf is achieved at  $1 + \epsilon = \frac{1}{1 - 2\lambda}$  or equivalently  $\lambda = \frac{\epsilon}{2(1 + \epsilon)}$

The first claim is completed by noting that  $\log (1 + \epsilon) \leq \sqrt{1 + 2\epsilon} - 1$ , for  $\epsilon > 0$ . To see this, first note equality at  $\epsilon = 0$ . Also, note that derivative on the left hand side is:

$$
\frac{1}{1 + \epsilon} = \leq \frac{1}{\sqrt{1 + 2 \epsilon}}
$$

where the right hand side is the derivative of  $\sqrt{1 + 2\epsilon}$ .

For the second claim, the proof is completed by noting that the function  $f(x) = (x - \log(1 + x)) * (1 + x)$ . Note that  $f'(x) = 2x - \log(1 + x)$ ,  $f''(x) = (1 + 2x) / (1 + x)$ , and  $f'''(x) = 1 / (1 + x)^2 >= 0$ . So  $f(x) >= x^2 / 2$ .

The rest of the proof is straight forward.

# Empirical Process Theory and Oracle Inequalities

Instructor: Sham Kakade

# 1 Risk vs Risk

See Lecture 0 for a discussion on terminology.

# 2 The Union Bound / Bonferoni

Consider  $m$  events  $E_1, \ldots, E_m$ , we have  $P(E_1 \cup \dots \cup E_m) \leq P(E_1) + \dots + P(E_m)$ . In other words, with probability  $1 - P(E_1) - \dots - P(E_m)$ , none of the events  $E_i$  ( $i = 1, \ldots, m$ ) occurs.

If we assume the probability  $\sum_{j}P(E_{j})$  is small. Union bound is relatively tight when the events  $E_{j}$  are independent.

$$
P \left(E_{1} \cup \dots \cup E_{m}\right) \geq \sum_{j} P (E_{j}) - \sum_{j \neq k} P \left(E_{j} \cap E_{k}\right) \geq \sum_{j} P \left(E_{j}\right) - 0. 5 \left(\sum_{j} P \left(E_{j}\right)\right)^{2}.
$$

If  $E_{j}$  are correlated, then it is not tight. For example when they are completely correlated:  $E_{1} = \dots = E_{m}$ , then

$$
P (E_{1} \cup \dots \cup E_{m}) = N^{- 1} \sum_{j} P (E_{j}).
$$

We will come back to this when we discuss chaining.

# 3 Motivation of Empirical Process

Consider learning problem with observations  $Z_{i} = (X_{i},Y_{i})$ , prediction rule  $f(X_{i})$  and loss function  $L(f(X_{i}),Y_{i})$ . Assume further that  $f$  is parameterized by  $\theta \in \Theta$  as  $f_{\theta}(X_i)$ .

Example,  $f_{\theta}(x) = \theta^{\top}x$  be a linear function, and  $L(f_{\theta}(x),y) = (\theta^{\top}x - y)^{2}$  is least squares loss. In the following, we introduce simplified notation  $g_{\theta}(Z_i) = L(f_{\theta}(X_i),Y_i)$ . We are interested in estimating  $\hat{\theta}$  from training data. That is,  $\hat{\theta}$  depends on  $Z_{i}$ .

Since we are using the training data as a surrogate of the test (true underlying) distribution, we hope training error is similar to test error. In learning theory, we are interested in estimating the following tail quantities for some  $\epsilon > 0$ :

$$
P (n^{- 1} \sum_{i = 1}^{n} g_{\hat {\theta}} (Z_{i}) \geq E g_{\hat {\theta}} (Z) + \epsilon)
$$

and

$$
P (n^{- 1} \sum_{i = 1}^{n} g_{\hat {\theta}} (Z_{i}) \leq E g_{\hat {\theta}} (Z) - \epsilon).
$$

The above two quantities can be bounded using the following two quantities:

$$
P (n^{- 1} \sum_{i = 1}^{n} g_{\hat {\theta}} (Z_{i}) \geq E g_{\hat {\theta}} (Z) + \epsilon) \leq P [ \sup_{\theta \in \Theta} (n^{- 1} \sum_{i = 1}^{n} g_{\theta} (Z_{i}) - E g_{\theta} (Z)) \geq \epsilon ]
$$

and

$$
P (n^{- 1} \sum_{i = 1}^{n} g_{\hat {\theta}} (Z_{i}) \leq E g_{\hat {\theta}} (Z) - \epsilon) \leq P [ \sup_{\theta \in \Theta} (E g_{\theta} (Z) - n^{- 1} \sum_{i = 1}^{n} g_{\theta} (Z_{i})) \geq \epsilon ].
$$

Notation: in the above setting the collection of random variables  $n^{-1} \sum_{i=1}^{n} g_{\theta}(Z_i)$  indexed by  $\theta \in \Gamma$  is called an empirical process. We may also call  $n^{-1} \sum_{i=1}^{n} g_{\theta}(Z_i) - Eg_{\theta}(Z)$  empirical process.

For each fixed  $\theta$ ,  $n^{-1}\sum_{i=1}^{n} g_{\theta}(Z_i) - Eg_{\theta}(Z) \to 0$  in probability, by LLN. However, in empirical process, we are interested in uniform law of large numbers, that is the following supremum of empirical process defined as

$$
\sup_{\theta \in \Theta} | n^{- 1} \sum_{i = 1}^{n} g_{\theta} (Z_{i}) - E g_{\theta} (Z) |
$$

converges to zero in probability. Given training data  $Z_1^n = \{Z_1, \dots, Z_n\}$ , we may let  $\hat{\theta}(Z_1^n)$  achieve the supremum above. Then

$$
\sup_{\theta \in \Theta} | n^{- 1} \sum_{i = 1}^{n} g_{\theta} (Z_{i}) - E g_{\theta} (Z) | = | n^{- 1} \sum_{i = 1}^{n} g_{\hat {\theta} (Z_{1}^{n})} (Z_{i}) - E g_{\hat {\theta} (Z_{1}^{n})} (Z) |,
$$

where  $\hat{\theta}(Z_1^n)$  depends on the training data. This means that  $\sum_{i=1}^{n} g_{\hat{\theta}(Z_1^n)}(Z_i)$  is not sum of independent random variable anymore. Supreme of empirical process is basically the worst case deviation of empirical mean (training error) and true mean (test error) for parameter  $\theta$  that is chosen based on training data.

Conceptually, as long as you select  $\hat{\theta}$  based on training data, you need to use empirical process and uniform law of large numbers. However, if you only consider fixed  $\theta$  independent of training data, then you can use standard law of large numbers because  $g_{\theta}(Z_i)$  are independent random variable.

# Empirical Process Theory and Oracle Inequalities

Instructor: Sham Kakade

# 1 Risk vs Risk

See Lecture 0 for a discussion on terminology.

# 2 The Union Bound / Bonferoni

Consider  $m$  events  $E_1, \ldots, E_m$ , we have  $P(E_1 \cup \dots \cup E_m) \leq P(E_1) + \dots + P(E_m)$ . In other words, with probability  $1 - P(E_1) - \dots - P(E_m)$ , none of the events  $E_i$  ( $i = 1, \ldots, m$ ) occurs.

If we assume the probability  $\sum_{j}P(E_{j})$  is small. Union bound is relatively tight when the events  $E_{j}$  are independent.

$$
P \left(E_{1} \cup \dots \cup E_{m}\right) \geq \sum_{j} P (E_{j}) - \sum_{j \neq k} P \left(E_{j} \cap E_{k}\right) \geq \sum_{j} P \left(E_{j}\right) - 0. 5 \left(\sum_{j} P \left(E_{j}\right)\right)^{2}.
$$

If  $E_{j}$  are correlated, then it is not tight. For example when they are completely correlated:  $E_{1} = \dots = E_{m}$ , then

$$
P \left(E_{1} \cup \dots \cup E_{m}\right) = N^{- 1} \sum_{j} P \left(E_{j}\right).
$$

We will come back to this when we discuss chaining.

# 3 Motivation of Empirical Process

Consider learning problem with observations  $Z_{i} = (X_{i},Y_{i})$ , prediction rule  $f(X_{i})$  and loss function  $L(f(X_{i}),Y_{i})$ . Assume further that  $f$  is parameterized by  $\theta \in \Theta$  as  $f_{\theta}(X_i)$ .

Example,  $f_{\theta}(x) = \theta^{\top}x$  be a linear function, and  $L(f_{\theta}(x),y) = (\theta^{\top}x - y)^{2}$  is least squares loss. In the following, we introduce simplified notation  $g_{\theta}(Z_i) = L(f_{\theta}(X_i),Y_i)$ . We are interested in estimating  $\hat{\theta}$  from training data. That is,  $\hat{\theta}$  depends on  $Z_{i}$ .

Since we are using the training data as a surrogate of the test (true underlying) distribution, we hope training error is similar to test error. In learning theory, we are interested in estimating the following tail quantities for some  $\epsilon > 0$ :

$$
P (n^{- 1} \sum_{i = 1}^{n} g_{\hat {\theta}} (Z_{i}) \geq E g_{\hat {\theta}} (Z) + \epsilon)
$$

and

$$
P (n^{- 1} \sum_{i = 1}^{n} g_{\hat {\theta}} (Z_{i}) \leq E g_{\hat {\theta}} (Z) - \epsilon).
$$

The above two quantities can be bounded using the following two quantities:

$$
P (n^{- 1} \sum_{i = 1}^{n} g_{\hat {\theta}} (Z_{i}) \geq E g_{\hat {\theta}} (Z) + \epsilon) \leq P [ \sup_{\theta \in \Theta} (n^{- 1} \sum_{i = 1}^{n} g_{\theta} (Z_{i}) - E g_{\theta} (Z)) \geq \epsilon ]
$$

and

$$
P (n^{- 1} \sum_{i = 1}^{n} g_{\hat {\theta}} (Z_{i}) \leq E g_{\hat {\theta}} (Z) - \epsilon) \leq P [ \sup_{\theta \in \Theta} (E g_{\theta} (Z) - n^{- 1} \sum_{i = 1}^{n} g_{\theta} (Z_{i})) \geq \epsilon ].
$$

Notation: in the above setting the collection of random variables  $n^{-1} \sum_{i=1}^{n} g_{\theta}(Z_i)$  indexed by  $\theta \in \Gamma$  is called an empirical process. We may also call  $n^{-1} \sum_{i=1}^{n} g_{\theta}(Z_i) - Eg_{\theta}(Z)$  empirical process.

For each fixed  $\theta$ ,  $n^{-1}\sum_{i=1}^{n} g_{\theta}(Z_i) - Eg_{\theta}(Z) \to 0$  in probability, by LLN. However, in empirical process, we are interested in uniform law of large numbers, that is the following supremum of empirical process defined as

$$
\sup_{\theta \in \Theta} | n^{- 1} \sum_{i = 1}^{n} g_{\theta} (Z_{i}) - E g_{\theta} (Z) |
$$

converges to zero in probability. Given training data  $Z_1^n = \{Z_1, \dots, Z_n\}$ , we may let  $\hat{\theta}(Z_1^n)$  achieve the supremum above. Then

$$
\sup_{\theta \in \Theta} | n^{- 1} \sum_{i = 1}^{n} g_{\theta} (Z_{i}) - E g_{\theta} (Z) | = | n^{- 1} \sum_{i = 1}^{n} g_{\hat {\theta} (Z_{1}^{n})} (Z_{i}) - E g_{\hat {\theta} (Z_{1}^{n})} (Z) |,
$$

where  $\hat{\theta}(Z_1^n)$  depends on the training data. This means that  $\sum_{i=1}^{n} g_{\hat{\theta}(Z_1^n)}(Z_i)$  is not sum of independent random variable anymore. Supreme of empirical process is basically the worst case deviation of empirical mean (training error) and true mean (test error) for parameter  $\theta$  that is chosen based on training data.

Conceptually, as long as you select  $\hat{\theta}$  based on training data, you need to use empirical process and uniform law of large numbers. However, if you only consider fixed  $\theta$  independent of training data, then you can use standard law of large numbers because  $g_{\theta}(Z_i)$  are independent random variable.

# 4 Oracle Inequality for empirical risk minimization

Consider the empirical risk minimization algorithm:

$$
\hat {\theta} = \arg \min_{\theta \in \Theta} \sum_{i = 1}^{n} g_{\theta} (Z_{i}),
$$

and the optimization parameter that minimizes the test error (with ininfite amount of data):

$$
\theta_{*} = \arg \min_{\theta \in \Theta} E g_{\theta} (Z).
$$

We want to know how much worse is the test error performance of  $\hat{\theta}$  compared to that of  $\theta_{*}$ . Results of this flavor is referred to as oracle inequality.

We can obtain simple oracle inequality using ULLN of empirical process as follows. Assume that we have the tail bound for the empirical mean of  $g_{\theta_*}(Z)$  as:

$$
P \left(n^{- 1} \sum_{i = 1}^{n} g_{\theta_{*}} \left(Z_{i}\right) - E g_{\theta_{*}} (Z) \geq \epsilon_{1}\right) \leq \delta_{1} \left(\epsilon_{1}\right)
$$

Assume that we have the following uniform tail bound for empiricla process for some  $\gamma \in [0,1)$ :

$$
P \left(\sup_{\theta} \left[ - n^{- 1} \sum_{i = 1}^{n} g_{\theta} \left(Z_{i}\right) + (1 - \gamma) E g_{\theta} (Z) + \gamma E g_{\theta_{*}} (Z) \right] \geq \epsilon_{2}\right) \leq \delta_{2} \left(\epsilon_{2}\right)
$$

Taking the union bound, we obtain with probability  $1 - \delta_{1}(\epsilon_{1}) - \delta_{2}(\epsilon_{2})$

$$
n^{- 1} \sum_{i = 1}^{n} g_{\theta_{*}} (Z_{i}) - E g_{\theta_{*}} (Z) <   \epsilon_{1}, \qquad [ - n^{- 1} \sum_{i = 1}^{n} g_{\hat {\theta}} (Z_{i}) + (1 - \gamma) E g_{\hat {\theta}} (Z) + \gamma E g_{\theta_{*}} (Z) ] <   \epsilon_{2}.
$$

Since by definition, we have

$$
n^{- 1} \sum_{i = 1}^{n} g_{\hat {\theta}} (Z_{i}) \leq n^{- 1} \sum_{i = 1}^{n} g_{\theta_{*}} (Z_{i}).
$$

Therefore by adding the three inequalities:

$$
(1 - \gamma) E g_{\hat {\theta}} (Z) + \gamma E g_{\theta_{*}} (Z) ] - E g_{\theta_{*}} (Z) <   \epsilon_{1} + \epsilon_{2}.
$$

That is, we have

$$
E g_{\hat {\theta}} (Z) <   E g_{\theta_{*}} (Z) + (1 - \gamma)^{- 1} (\epsilon_{1} + \epsilon_{2}).
$$

If  $\Theta$  contains only finite number of functions:  $N = |\Theta|$ , then we can simply apply the union bound

$$
\begin{array}{l} P \left(\sup_{\theta} \left[ - n^{- 1} \sum_{i = 1}^{n} g_{\theta} \left(Z_{i}\right) + (1 - \gamma) E g_{\theta} (Z) + \gamma E g_{\theta_{*}} (Z) \right] \geq \epsilon\right) \\ \leq \sum_{\theta \in \Theta} P \left(\left[ - n^{- 1} \sum_{i = 1}^{n} g_{\theta} \left(Z_{i}\right) + (1 - \gamma) E g_{\theta} (Z) + \gamma E g_{\theta_{*}} (Z) \right] \geq \epsilon\right) \\ \leq \left| \Theta \right| \sup_{\theta \in \Theta} P \left(\left[ - n^{- 1} \sum_{i = 1}^{n} g_{\theta} (Z_{i}) + (1 - \gamma) E g_{\theta} (Z) + \gamma E g_{\theta_{*}} (Z) \geq \epsilon\right). \right. \\ \end{array}
$$

# 5 Recap: Oracle Inequality

Consider the empirical risk minimization algorithm:

$$
\hat {\theta} = \arg \min_{\theta \in \Theta} \sum_{i = 1}^{n} g_{\theta} (Z_{i}),
$$

and the optimization parameter that minimizes the test error (with infinite amount of data):

$$
\theta_{*} = \operatorname *{arg  min}_{\theta \in \Theta}Eg_{\theta}(Z).
$$

If

$$
P \left(n^{- 1} \sum_{i = 1}^{n} g_{\theta_{*}} \left(Z_{i}\right) - E g_{\theta_{*}} (Z) \geq \epsilon_{1}\right) \leq \delta_{1} \left(\epsilon_{1}\right),
$$

which means that the training error of the optimal parameter isn't much larger than test error.

Assume also that we have the following uniform tail bound for empiricla process for some  $\gamma \in [0,1)$ :

$$
P (\sup_{\theta} [ - n^{- 1} \sum_{i = 1}^{n} g_{\theta} (Z_{i}) + (1 - \gamma) E g_{\theta} (Z) + \gamma E g_{\theta_{*}} (Z) ] \geq \epsilon_{2}) \leq \delta_{2} (\epsilon_{2}),
$$

which means that the training error of an arbitrary inferior parametr isn't much smaller than its test error.

Then we have oracle inequality with probability  $1 - \delta_{1}(\epsilon_{1}) - \delta_{2}(\epsilon_{2})$

$$
E g_{\hat {\theta}} (Z) <   E g_{\theta_{*}} (Z) + (1 - \gamma)^{- 1} (\epsilon_{1} + \epsilon_{2}).
$$

This means that the generalization performance of ERM isn't much worse than that of the optimal parameter.

# 6 Lower bracketing covering number

If  $\Theta$  is infinite, then we can use the idea of covering number. There are different definitions. Let  $G = \{g_{\theta} : \theta \in \Theta\}$  be the function class of the empirical process.  $G_N = \{g_1(z), \ldots, g_N(z)\}$  is a  $\epsilon$ -lower bracketing cover of  $G$  if for all  $\theta \in \Theta$ , there exists  $j = j(\theta)$  such that

$$
\sup_{z} [ g_{j} (z) - g_{\theta} (z) ] \leq 0 \quad E g_{j} (z) \geq E g_{\theta} (z) - \epsilon .
$$

The smallest cardinality  $N_{LB}(G,\epsilon)$  of such  $G_N$  is called  $\epsilon$ -lower bracketing covering number. Similarly one can define upper bracketing covering number. The logarithm of covering number is called entropy. We shall mention that the functions  $g_j(z)$  may not necessarily be a function  $g_\theta(z)$  for  $\theta \in \Theta$ .

Let  $G(\epsilon / 2)$  be an  $\epsilon / 2$  lower bracketing cover of  $G$ , then pick  $j = j(\theta)$

$$
\begin{array}{l} \sup_{\theta} \left[ - n^{- 1} \sum_{i = 1}^{n} g_{\theta} \left(Z_{i}\right) + (1 - \gamma) E g_{\theta} (Z) + \gamma E g_{\theta_{*}} (Z) \right] \\ = \sup_{\theta} \left[ - n^{- 1} \left[ \sum_{i = 1}^{n} g_{\theta} \left(Z_{i}\right) - \sum_{i = 1}^{n} g_{j} \left(Z_{i}\right) \right] \right. \\ - n^{- 1} \sum_{i = 1}^{n} g_{j} (Z_{i}) + (1 - \gamma) E g_{j} (Z) + \gamma E g_{\theta_{*}} (Z) + (1 - \gamma) [ - E g_{j} (Z) + E g_{\theta} (Z) ] ] |_{j = j (\theta)} \\ \leq \sup_{j \in G (\epsilon / 2)} \left[ - n^{- 1} \sum_{i = 1}^{n} g_{j} \left(Z_{i}\right) + (1 - \gamma) E g_{j} (Z) + \gamma E g_{\theta_{*}} (Z) + (1 - \gamma) \epsilon / 2 \right]. \\ \end{array}
$$

Thus,

$$
\begin{array}{l} P \left(\sup_{\theta} \left[ - n^{- 1} \sum_{i = 1}^{n} g_{\theta} \left(Z_{i}\right) + (1 - \gamma) E g_{\theta} (Z) + \gamma E g_{\theta_{*}} (Z) \right] \geq \epsilon\right) \\ \leq P \left(\sup_{j \in G (\epsilon / 2)} \left[ - n^{- 1} \sum_{i = 1}^{n} g_{j} \left(Z_{i}\right) + (1 - \gamma) E g_{j} (Z) + \gamma E g_{\theta_{*}} (Z) + (1 - \gamma) \epsilon / 2 \right] \geq \epsilon\right) \\ \leq \sum_{j \in G (\epsilon / 2)} P (- n^{- 1} \sum_{i = 1}^{n} g_{j} (Z_{i}) + E g_{j} (Z) \geq \gamma (E g_{j} (Z) - E g_{\theta_{*}} (Z)) + 0. 5 (1 + \gamma) \epsilon) \\ \leq |G(\epsilon /2)|\sup_{j\in G(\epsilon /2)}P(-n^{-1}\sum_{i = 1}^{n}g_{j}(Z_{i}) + Eg_{j}(Z)\geq \gamma (Eg_{j}(Z) - Eg_{\theta_{*}}(Z)) + 0.5(1 + \gamma)\epsilon). \\ \end{array}
$$

The summation bound with  $\gamma > 0$  is a form of an idea in empirical referred to as peeling, and some times also called shell bounds. We will present a simple example below to illustrate the basic concepts.

# 7 A Simple Example

This example is to get you familiar with the intuitions and notations. We will consider more complex examples in future lectures, but the basic idea resembles this example.

Consider one dimensional classification problem, with  $x \in [-1, 1]$  and  $y \in \{\pm 1\}$ . Assume that conditioned on  $x$ , the class label is given by  $y = \epsilon (2I(x \geq \theta_{*}) - 1)$  for some unknown  $\theta_{*}$ , with independent random noise  $\epsilon \in \{-1, 1\}$ , and  $p = P(\epsilon = 1) > 0.5$ . This means that the optimal Bayes classifier is  $f_{*}(x) = 1$  when  $x \geq \theta$  and  $f_{*}(x) = -1$  when  $x < \theta$ , and the Bayes error is  $1 - p$ .

Since we don't know the true threshold  $\theta_{*}$ , we can consider a family of classifiers  $f_{\theta}(x) = 2I(x \geq \theta) - 1$ , with  $\theta$  to be learned from training data. Given sample  $Z = (X, Y)$ , the classifier error function for this classifier is

$$
g_{\theta} (Z) = I \left(f_{\theta} (X) \neq Y\right).
$$

Given training data  $Z_{1}^{n} = \{(X_{1},Y_{1}),\ldots ,(X_{n},Y_{n})\}$ , we can learn a threshold  $\hat{\theta}$  using empirical risk minimization that finds  $\theta$  by minimizing the training error:

$$
\hat {\theta} = \arg \min_{\theta} \sum_{i = 1}^{n} g_{\theta} (Z_{i}).
$$

We want to know the generalization performance of  $\hat{\theta}$  compared to the Bayes error. That is, to give an upper bound of

$$
E g_{\theta} (Z) - (1 - p).
$$

We will examine the following few issues in order to understand what is going on:

-  $1 / \sqrt{n}$  convergence (using Chernoff bound) versus  $1 / n$  convergence (using refined Chernoff bound or Bennet).  
- The role of peeling.

# 7.1 Bracketing cover of the function class

Given  $\epsilon$ , and let  $\theta_{j} = -1 + j\epsilon$  for  $j = 1, \dots, \lceil 2 / \epsilon \rceil$ . Let

$$
g_{j} (z) = \left\{ \begin{array}{l l} 0 & \text{if} x \in [ \theta_{j} - \epsilon , \theta_{j} ] \\ g_{\theta_{j}} (z) & \text{otherwise}, \end{array} \right.
$$

where  $z = (x,y)$

It follows that for any  $\theta \in [-1,1]$ , if we let  $\theta_{j}$  be the smallest  $j$  such that  $\theta_{j} \geq \theta$ , then we have  $g_{j}(z) = 0 \leq g_{\theta}(z)$  when  $x \in [\theta, \theta_{j}]$ , and  $g_{j}(z) = g_{\theta}(z)$  when  $x \notin [\theta, \theta_{j}]$ , where  $z = (x,y)$ . Moreover,

$$
E g_{j} (z) - E g_{\theta} (z) = E_{x \in [ \theta , \theta_{j} ]} - g_{\theta} (z) \geq - \epsilon .
$$

Note that since only the analysis depends on covering number, generally we can deesign a covering number that depends on the truth  $\theta_{*}$ , and may cover the space non-uniformly. This is not considered here.

# 7.2 Using Standard Chernoff bound without peeling

At  $\theta_{*}$ , we have from Chernoff bound:

$$
P (n^{- 1} \sum_{i = 1}^{n} g_{\theta_{*}} (Z_{i}) - E g_{\theta_{*}} (Z) \geq \epsilon) \leq \exp (- 2 n \epsilon^{2}).
$$

Alternatively, we say that with probability  $1 - \delta_{1}$ :

$$
\sum_{i = 1}^{n} g_{\theta_{*}} \left(Z_{i}\right) - E g_{\theta_{*}} (Z) <   \epsilon_{1} = \sqrt{\ln \left(1 / \delta_{1}\right) / 2 n}.
$$

Now we want to evaluate using lower bracking cover  $G(\epsilon /2)$  as:

$$
\begin{array}{l} P \left(\sup_{\theta} \left[ - n^{- 1} \sum_{i = 1}^{n} g_{\theta} \left(Z_{i}\right) + E g_{\theta} (Z) \right] \geq \epsilon\right) \\ \leq \left| G (\epsilon / 2) \right| \sup_{j \in G (\epsilon / 2)} P \left(- n^{- 1} \sum_{i = 1}^{n} g_{j} \left(Z_{i}\right) + E g_{j} (Z) \geq 0. 5 \epsilon\right) \\ \leq \lceil 4 / \epsilon \rceil e^{- n \epsilon^{2} / 2}. \\ \end{array}
$$

We used  $|G(\epsilon /2)|\leq \lceil 4 / \epsilon \rceil$ . Alternatively, we say that with probability  $1 - \delta_{2}$  (and note that  $\epsilon_{2}\geq \sqrt{2 / n}$ ):

$$
\sup_{\theta} \left[ - n^{- 1} \sum_{i = 1}^{n} g_{\theta} \left(Z_{i}\right) + E g_{\theta} (Z) \right] <   \epsilon_{2} = \sqrt{2 \left(\ln \lceil 4 / \epsilon_{2} \rceil - \ln \delta_{2}\right) / n}. \leq \sqrt{2 \left(\ln \lceil 4 \sqrt{n / 2} \rceil - \ln \delta_{2}\right) / n}.
$$

Let  $\delta = 2\delta_{1} = 2\delta_{2}$ , we have with probability at least  $1 - \delta$ :

$$
E g_{\hat {\theta}} (Z) - (1 - p) <   \sqrt{\ln (2 / \delta) / 2 n} + \sqrt{2 (\ln \lceil 4 \sqrt{n / 2} \rceil + \ln (2 / \delta)) / n} <   \sqrt{2 \ln \lceil 4 \sqrt{n / 2} \rceil / n} + 3 \sqrt{\ln (2 / \delta) / 2 n}.
$$

# Symmetrization and Rademacher Averages

Instructor: Sham Kakade

# 1 Rademacher Averages

Recall that we are interested in bounding the difference between empirical and true expectations uniformly over some function class  $\mathcal{G}$ . In the context of classification or regression, we are typically interested in a class  $\mathcal{G}$  that is the loss class associated with some function class  $\mathcal{F}$ . That is, given a bounded loss function  $\ell : \mathcal{D} \times \mathcal{V} \to [0,1]$ , we consider the class

$$
\ell_{\mathcal {F}} := \left\{\left(x, y\right) \mapsto \ell (f (x), y) \mid f \in \mathcal {F} \right\}.
$$

Rademacher averages give us a powerful tool to obtain uniform convergence results. We begin by examining the quantity

$$
\mathbb {E} \left[ \sup_{g \in \mathcal {G}} \left(\mathbb {E} \left[ g (Z) \right] - \frac{1}{m} \sum_{i = 1}^{m} g (Z_{i})\right) \right],
$$

where  $Z, \{Z_i\}_{i=1}^m$  are i.i.d. random variables taking values in some space  $\mathcal{Z}$  and  $\mathcal{G} \subseteq [a,b]^{\mathcal{Z}}$  is a set of bounded functions. We will later show that the random quantity we are interested in, namely

$$
\sup_{g \in \mathcal {G}} \left(\mathbb {E} \left[ g (Z) \right] - \frac{1}{m} \sum_{i = 1}^{m} g (Z_{i})\right),
$$

will be close to the above expectation with high probability.

Let  $\epsilon_1, \ldots, \epsilon_m$  be i.i.d.  $\{\pm\}$ -valued random variables with  $\mathbb{P}(\epsilon_i = +1) = \mathbb{P}(\epsilon_i = -1) = 1/2$ . These are also independent of the sample  $Z_1, \ldots, Z_m$ . Define the empirical Rademacher average of  $\mathcal{G}$  as

$$
\hat {\mathfrak {N}}_{m} (\mathcal {G}) := \mathbb {E} \left[ \sup_{g \in \mathcal {G}} \frac{1}{m} \sum_{i = 1}^{m} \epsilon_{i} g (Z_{i}) \Bigg | Z_{1}^{m} \right].
$$

The Rademacher average of  $\mathcal{G}$  is defined as

$$
\mathfrak {R}_{m} (\mathcal {G}) := \mathbb {E} \left[ \hat {\mathfrak {R}}_{m} (\mathcal {G}) \right].
$$

Theorem 1.1. We have,

$$
\mathbb {E} \left[ \sup_{g \in \mathcal {G}} \left(\mathbb {E} [ g (Z) ] - \frac{1}{m} \sum_{i = 1}^{m} g (Z_{i})\right) \right] \leq 2 \Re_{m} (\mathcal {G}).
$$

Proof. Introduce the ghost sample  $Z_1', \ldots, Z_m'$ . By that we mean that  $Z_i'$ 's are independent of each other and of  $Z_i$ 's

and have the same distribution as the latter. Then we have,

$$
\begin{array}{l} \mathbb {E} \left[ \sup_{g \in \mathcal {G}} \left(\mathbb {E} \left[ g (Z) \right] - \frac{1}{m} \sum_{i = 1}^{m} g \left(Z_{i}\right)\right) \right] \\ = \mathbb {E} \left[ \sup_{g \in \mathcal {G}} \left(\frac{1}{m} \sum_{i = 1}^{m} \left(\mathbb {E} [ g (Z) ] - g \left(Z_{i}\right)\right)\right) \right] \\ = \mathbb {E} \left[ \sup_{g \in \mathcal {G}} \left(\frac{1}{m} \sum_{i = 1}^{m} \mathbb {E} \left[ g \left(Z_{i}^{\prime}\right) - g \left(Z_{i}\right) \mid Z_{1}^{m} \right]\right) \right] \\ \leq \mathbb {E} \left[ \mathbb {E} \left. \left. \sup_{g \in \mathcal {G}} \left(\frac{1}{m} \sum_{i = 1}^{m} \left(g \left(Z_{i}^{\prime}\right) - g \left(Z_{i}\right)\right)\right) \right| Z_{1}^{m} \right] \right] \\ = \mathbb {E} \left[ \sup_{g \in \mathcal {G}} \left(\frac{1}{m} \sum_{i = 1}^{m} \left(g \left(Z_{i}^{\prime}\right) - g \left(Z_{i}\right)\right)\right) \right] \\ = \mathbb {E} \left[ \sup_{g \in \mathcal {G}} \left(\frac{1}{m} \sum_{i = 1}^{m} \epsilon_{i} \left(g \left(Z_{i}^{\prime}\right) - g \left(Z_{i}\right)\right)\right) \right] \\ \leq \mathbb {E} \left[ \sup_{g \in \mathcal {G}} \frac{1}{m} \sum_{i = 1}^{m} \epsilon_{i} g \left(Z_{i}^{\prime}\right) \right] + \mathbb {E} \left[ \sup_{g \in \mathcal {G}} \frac{1}{m} \sum_{i = 1}^{m} \epsilon_{i} g \left(Z_{i}\right) \right] \\ = 2 \Re_{m} (\mathcal {G}). \\ \end{array}
$$

Since  $\Re_m(-\mathcal{G}) = \Re_m(\mathcal{G})$ , we have the following corollary.

Corollary 1.2. We have,

$$
\mathbb {E} \left[ \sup_{g \in \mathcal {G}} \left(\frac{1}{m} \sum_{i = 1}^{m} g (Z_{i}) - \mathbb {E} [ g (Z) ]\right) \right] \leq 2 \Re_{m} (\mathcal {G}).
$$

Since  $g(X_{i})\in [a,b]$

$$
\sup_{g \in \mathcal {G}} \left(\mathbb {E} [ g (Z) ] - \frac{1}{m} \sum_{i = 1}^{m} g \left(Z_{i}\right)\right)
$$

does not change by more than  $(b - a) / m$  if some  $Z_{i}$  is changed to  $Z_{i}^{\prime}$ . Applying the bounded differences inequality, we get the following corollary.

Corollary 1.3. With probability at least  $1 - \delta$

$$
\sup_{g \in \mathcal {G}} \left(\mathbb {E} [ g (Z) ] - \frac{1}{m} \sum_{i = 1}^{m} g (Z_{i})\right) \leq 2 \Re_{m} (\mathcal {G}) + (b - a) \sqrt{\frac{\ln (1 / \delta)}{2 m}}
$$

Recall that we denote the empirical  $\ell$ -loss minimizer by  $\hat{f}_{\ell}^{*}$ . We refer to  $L_{\ell}(\hat{f}_{\ell}^{*}) - \min_{f\in \mathcal{F}}L_{\ell}(f)$  as the estimation error. The next theorem bounds the estimation error using Rademacher averages.

# 2 Expected Regret

Now let us examine the expected regret of the empirical risk minimizer (e.g. analogous to the statistical risk). Let

$$
\hat {g} = \arg \min_{g \in \mathcal {G}} \frac{1}{m} \sum_{i = 1}^{m} g (Z_{i})
$$

where  $\tau$  is the training set and

$$
g^{*} = \arg \min_{g \in \mathcal {G}} \mathbb {E} [ g (Z) ]
$$

which is true minimizer.

Lemma 2.1. The expected regret is:

$$
\begin{array}{l} \mathbb {E} \left[ \mathbb {E} \left[ \hat {g} (Z) \right] - \mathbb {E} \left[ g^{*} (Z) \right] \right] \leq 2 \mathfrak {R}_{m} (\mathcal {G}) + \mathbb {E} \left[ \frac{1}{m} \sum_{i = 1}^{m} g^{*} \left(Z_{i}\right) - \mathbb {E} \left[ g^{*} (Z) \right] \right] \\ \leq 4 \Re_{m} (\mathcal {G}) \\ \end{array}
$$

where the expectation is with respect  $\hat{g}$  (due to randomness in the training set).

Proof. Let

$\hat{g}$

The expected regret is:

$$
\begin{array}{l} \mathbb {E} \left[ \mathbb {E} \left[ \hat {g} (Z) \right] - \mathbb {E} \left[ g^{*} (Z) \right] \right] \leq \mathbb {E} \left[ \mathbb {E} \left[ \hat {g} (Z) \right] - \frac{1}{m} \sum_{i = 1}^{m} \hat {g} \left(Z_{i}\right) + \frac{1}{m} \sum_{i = 1}^{m} \hat {g} \left(Z_{i}\right) - \mathbb {E} \left[ g^{*} (Z) \right] \right] \\ \leq \mathbb {E} \left[ \mathbb {E} [ \hat {g} (Z) ] - \frac{1}{m} \sum_{i = 1}^{m} \hat {g} (Z_{i}) + \frac{1}{m} \sum_{i = 1}^{m} g^{*} (Z_{i}) - \mathbb {E} [ g^{*} (Z) ] \right] \\ \leq \mathbb {E} \left[ \sup  g \in \mathcal {G} \left(\mathbb {E} [ \hat {g} (Z) ] - \frac{1}{m} \sum_{i = 1}^{m} \hat {g} \left(Z_{i}\right)\right) \right] + \mathbb {E} \left[ \frac{1}{m} \sum_{i = 1}^{m} g^{*} \left(Z_{i}\right) - \mathbb {E} [ g^{*} (Z) ] \right] \\ \leq 2 \Re_{m} (\mathcal {G}) + \mathbb {E} \left[ \frac{1}{m} \sum_{i = 1}^{m} g^{*} (Z_{i}) - \mathbb {E} [ g^{*} (Z) ] \right] \\ \end{array}
$$

The final claim is straightforward.

# 3 Growth function

Consider the case  $\mathcal{Y} = \{\pm 1\}$  (classification). Let  $\ell$  be the 0-1 loss function and  $\mathcal{F}$  be a class of  $\pm 1$ -valued functions.

We can relate the Rademacher average of  $\ell_{\mathcal{F}}$  to that of  $\mathcal{F}$  as follows.

Lemma 3.1. Suppose  $\mathcal{F} \subseteq \{\pm 1\}^{\mathcal{X}}$  and let  $\ell(y', y) = \mathbf{1}[y' \neq y]$  be the 0-1 loss function. Then we have,

$$
\mathfrak {R}_{m} (\ell_{\mathcal {F}}) = \frac{1}{2} \mathfrak {R}_{m} (\mathcal {F}).
$$

Proof. Note that we can write  $\ell(y', y)$  as  $(1 - yy') / 2$ . Then we have,

$$
\begin{array}{l} \mathfrak {R}_{m} (\ell_{\mathcal {F}}) = \mathbb {E} \left[ \sup_{f \in \mathcal {F}} \frac{1}{m} \sum_{i = 1}^{m} \epsilon_{i} \frac{1 - Y_{i} f (X_{i})}{2} \Bigg | X_{1}^{m}, Y_{1}^{m} \right] \\ = \mathbb {E} \left[ \sup_{f \in \mathcal {F}} \frac{1}{m} \sum_{i = 1}^{m} \epsilon_{i} \frac{Y_{i} f (X_{i})}{2} \mid X_{1}^{m}, Y_{1}^{m} \right] (1) \\ = \frac{1}{2} \mathbb {E} \left[ \sup_{f \in \mathcal {F}} \frac{1}{m} \sum_{i = 1}^{m} (- \epsilon_{i} Y_{i}) f (X_{i}) \right| X_{1}^{m}, Y_{1}^{m} \Bigg ] \\ = \frac{1}{2} \mathbb {E} \left[ \sup_{f \in \mathcal {F}} \frac{1}{m} \sum_{i = 1}^{m} \epsilon_{i} f \left(X_{i}\right) \mid X_{1}^{m}, Y_{1}^{m} \right] (2) \\ = \frac{1}{2} \Re_{m} (\mathcal {F}). \\ \end{array}
$$

Equation (1) follows because  $\mathbb{E}\left[\epsilon_i|X_1^m,Y_1^m\right] = 0$ . Equation (2) follows because  $-\epsilon_{i}Y_{i}$ 's jointly have the same distribution as  $\epsilon_{i}$ 's.

Note that the Rademacher average of the class  $\mathcal{F}$  can also be written as

$$
\mathfrak {R}_{m} (\mathcal {F}) = \mathbb {E} \left[ \sup_{a \in \mathcal {F}_{| X_{1}^{m}}} \frac{1}{m} \sum_{i = 1}^{m} \epsilon_{i} a_{i} \right],
$$

where  $\mathcal{F}_{|X_1^m}$  is the function class  $\mathcal{F}$  restricted to the set  $X_{1},\ldots ,X_{m}$ . That is,

$$
\mathcal {F}_{| X_{1}^{m}} := \left\{ \right.\left( \right.\left(f (X_{1}), \dots , f (X_{m})\right) \mid f \in \mathcal {F} \left. \right\}.
$$

Note that  $\mathcal{F}_{|X_{1}^{n}}$  is finite and

$$
\left| \mathcal {F}_{\left| X_{1}^{m} \right|} \right. \leq \min  \left\{\left| \mathcal {F} \right., 2^{m} \right\}.
$$

Thus we can define the growth function as

$$
\Pi_{\mathcal {F}} (m) := \max_{x_{1}^{m} \in \mathcal {X}^{m}} | \mathcal {F}_{| x_{1}^{m}} |  .
$$

The following lemma due to Massart allows us to bound the Rademacher average in terms of the growth function.

Lemma 3.2. (Finite Class Lemma) Let  $\mathcal{A}$  be some finite subset of  $\mathbb{R}^m$  and  $\epsilon_1, \ldots, \epsilon_m$  be independent Rademacher random variables. Let  $r = \sup_{a \in \mathcal{A}} \|a\|$ . Then, we have,

$$
\mathbb {E} \left[ \sup_{a \in \mathcal {A}} \frac{1}{m} \sum_{i = 1}^{m} \epsilon_{i} a_{i} \right] \leq \frac{r \sqrt{2 \ln | \mathcal {A} |}}{m}.
$$

Proof. Let

$$
\mu = \mathbb {E} \left[ \sup_{a \in \mathcal {A}} \sum_{i = 1}^{m} \epsilon_{i} a_{i} \right].
$$

We have, for any  $\lambda > 0$ ,

$$
\begin{array}{l} e^{\lambda \mu} \leq \mathbb {E} \left[ \exp \left(\lambda \sup_{a \in \mathcal {A}} \sum_{i = 1}^{m} \epsilon_{i} a_{i}\right) \right] \\ = \mathbb {E} \left[ \sup_{a \in \mathcal {A}} \exp \left(\lambda \sum_{i = 1}^{m} \epsilon_{i} a_{i}\right) \right] \\ \leq \mathbb {E} \left[ \sum_{a \in \mathcal {A}} \exp \left(\lambda \sum_{i = 1}^{m} \epsilon_{i} a_{i}\right) \right] \\ = \sum_{a \in \mathcal {A}} \mathbb {E} \left[ \exp \left(\lambda \sum_{i = 1}^{m} \epsilon_{i} a_{i}\right) \right] \\ = \sum_{a \in \mathcal {A}} \prod_{i = 1}^{m} \mathbb {E} \left[ \exp \left(\lambda \epsilon_{i} a_{i}\right) \right] \\ \leq \sum_{a \in \mathcal {A}} \prod_{i = 1}^{m} e^{\lambda^{2} a_{i}^{2} / 2} \\ = \sum_{a \in \mathcal {A}} e^{\lambda^{2} \| a \|^{2} / 2} \\ \leq \left| \mathcal {A} \right| e^{\lambda^{2} r^{2} / 2} \\ \end{array}
$$

Jensen's inequality

Hoeffding's lemma

Taking logs and dividing by  $\lambda$ , we get that, for any  $\lambda > 0$

$$
\mu \leq \frac{\ln | \mathcal {A} |}{\lambda} + \frac{\lambda r^{2}}{2}.
$$

Setting  $\lambda = \sqrt{2\ln|\mathcal{A}| / r^2}$  gives,

$$
\mu \leq r \sqrt{2 \ln | \mathcal {A} |},
$$

which proves the lemma.

# Rademacher Composition and Linear Prediction

Instructor: Sham Kakade

# 1 Rademacher Composition

In order to use our Rademacher bound, we need to find Rademacher complexities of loss classes. It is usually more conveniently to directly work with our hypothesis class, than a loss class. To do this, we need to understand how Rademacher complexities compose with loss classes. To this end, the following lemma is useful.

Lemma 1.1. (Composition Lemma) Assume that  $\phi : \mathbb{R} \to \mathbb{R}$  is a  $L_{\phi}$ -Lipschitz continuous function, i.e.  $|\phi(t) - \phi(s)| \leq L_{\phi}|t - s|$ . Let  $\mathcal{F} \subset \mathbb{R}^m$ . Then

$$
\mathbb {E} \left[ \sup_{f \in \mathcal {F}} \frac{1}{m} \sum_{i = 1}^{m} \epsilon_{i} \phi (f_{i}) \right] \leq L_{\phi} \mathbb {E} \left[ \sup_{f \in \mathcal {F}} \frac{1}{m} \sum_{i = 1}^{m} \epsilon_{i} f_{i} \right]
$$

In other words:

$$
\Re (\phi (\mathcal {F})) \leq L_{\phi} \Re (\mathcal {F})
$$

Proof. We prove the case where  $L_{\phi} = 1$ . The general proof follows from this case.

Let us consider a class of vector valued functions  $\Psi = \{\psi = (\psi_1, \psi_2, \ldots, \psi_m)\}$  where each  $\psi \in \Psi$  is a function where each  $\psi_i$  is either  $\phi$  or the identity function  $I$ . We will prove that:

$$
\sup_{\psi \in \Psi}\Re (\psi (\mathcal{F}))\leq \Re (\mathcal{F})
$$

The claim follows from this.

Let  $\psi$  be some function in which at least one component is not the identity function. Without loss of generality, assume this is the first component, i.e.

$$
\psi = (\phi , \psi_{2}, \dots , \psi_{m})
$$

Define

$$
\psi^{\prime} = (I, \psi_{2}, \dots , \psi_{m})
$$

We will now prove that:

$$
\Re (\psi (\mathcal {F})) \leq \Re (\psi^{\prime} (\mathcal {F}))
$$

The previous claim follows from this since we can flip any component that is  $\phi$  to the identity function, without decreasing the Rademacher complexity.

To prove this, we start by making the expectation explicit in the first Rademacher number  $\epsilon_{1}$ :

$$
\begin{array}{l} \Re (\psi (\mathcal {F})) \\ = \mathbb {E} \left[ \sup_{f \in \mathcal {F}} \frac{1}{m} \sum_{i = 1}^{m} \epsilon_{i} \psi_{i} \left(f_{i}\right) \right] \\ = \frac{1}{2 m} \mathbb {E} \left[ \sup_{f \in \mathcal {F}} \left(\phi \left(f_{1}\right) + \sum_{i = 2}^{m} \epsilon_{i} \psi_{i} \left(f_{i}\right)\right) + \sup_{f \in \mathcal {F}} \left(- \phi \left(f_{1}\right) + \sum_{i = 2}^{m} \epsilon_{i} \psi_{i} \left(f_{i}\right)\right) \right] \\ = \frac{1}{2 m} \mathbb {E} \left[ \sup_{f, f^{\prime} \in \mathcal {F}} \left(\phi \left(f_{1}\right) + \sum_{i = 2}^{m} \epsilon_{i} \psi_{i} \left(f_{i}\right) - \phi \left(f_{1}^{\prime}\right) + \sum_{i = 2}^{m} \epsilon_{i} \psi_{i} \left(f_{i}^{\prime}\right)\right) \right] \\ \leq \frac{1}{2 m} \mathbb {E} \left[ \sup_{f, f^{\prime} \in \mathcal {F}} \left(| f_{1} - f_{1}^{\prime} | + \sum_{i = 2}^{m} \epsilon_{i} \psi_{i} (f_{i}) + \sum_{i = 2}^{m} \epsilon_{i} \psi_{i} (f_{i}^{\prime})\right) \right] \\ = \frac{1}{2 m} \mathbb {E} \left[ \sup_{f, f^{\prime} \in \mathcal {F}} \left(f_{1} - f_{1}^{\prime} + \sum_{i = 2}^{m} \epsilon_{i} \psi_{i} \left(f_{i}\right) + \sum_{i = 2}^{m} \epsilon_{i} \psi_{i} \left(f_{i}^{\prime}\right)\right) \right] \\ = \frac{1}{2 m} \mathbb {E} \left[ \sup_{f \in \mathcal {F}} \left(f_{1} + \sum_{i = 2}^{m} \epsilon_{i} \psi_{i} (f_{i})\right) + \sup_{f \in \mathcal {F}} \left(- f_{1} + \sum_{i = 2}^{m} \epsilon_{i} \psi_{i} (f_{i})\right) \right] \\ = \mathbb {E} \left[ \sup_{f \in \mathcal {F}} \frac{1}{m} \sum_{i = 1}^{m} \epsilon_{i} \psi_{i}^{\prime} (f_{i}) \right] \\ = \mathfrak {N} (\psi^{\prime} (\mathcal {F})) \\ \end{array}
$$

We are able to drop the absolute value (in the step after the inequality), since it is clear that the sup will be achieved when this function is positive. This completes the proof.

# 2 Linear Prediction

Let us assume that our loss function is of the form  $\phi (w\cdot x,y)$ . Let us also consider the empirical risk minimization algorithms:

$$
\hat {w}_{2} = \arg \min_{w: | | w | |_{2} \leq W_{2}} \sum_{i = 1}^{m} \ell (w \cdot x_{i}, y_{i})
$$

$$
\hat {w}_{1} = \arg \min_{w: | | w | |_{1} \leq W_{1}} \sum_{i = 1}^{m} \ell (w \cdot x_{i}, y_{i})
$$

These problems are closely related to the  $L_{1}$  and  $L_{2}$  regularization (these are essentially the dual problems).

Let us now understand the generalization ability of these algorithms.

# 2.1 Rademacher Bounds for Linear Classes

Let  $\mathcal{F}$  be the class of linear predictors.

Lemma 2.1. Let  $\mathcal{F}$  be the class of linear predictors, with the  $L_{2}$ -norm of the weights bounded by  $W_{2}$ . Also assume

that with probability one that  $||x||_2 \leq X_2$ . Then

$$
\Re (\mathcal {F}) \leq \frac{X_{2} W_{2}}{\sqrt{m}}
$$

Proof. Let  $\mathcal{F}_{x_1,x_2,\dots,x_m}$  be the class:

$$
\left\{\left(w \cdot x_{1}, w \cdot x_{2}, \dots w \cdot x_{m}\right): | | w | |_{2} \leq W_{2} \right\}
$$

We now bound this empirical Rademacher complexity:

$$
\begin{array}{l} \Re (\mathcal {F}) = \frac{1}{m} \mathbb {E} \left[ \sup_{w: | | w | |_{2} \leq W_{2}} \sum_{i = 1}^{m} \epsilon_{i} w \cdot x_{i} \right] \\ = \frac{1}{m} \mathbb {E} \left[ \sup_{w: | | w | |_{2} \leq W_{2}} w \cdot \sum_{i = 1}^{m} \epsilon_{i} x_{i} \right] \\ = \frac{W_{2}}{m} \mathbb {E} \left[ | | \sum_{i = 1}^{m} \epsilon_{i} x_{i} | |_{2} \right] \\ \leq \frac{W_{2}}{m} \sqrt{\mathbb {E} \left[ \sum_{i = 1}^{m} | | \epsilon_{i} x_{i} | |_{2}^{2} \right]} \\ = \frac{W_{2}}{m} \sqrt{\mathbb {E} \left[ \sum_{i = 1}^{m} | | x_{i} | |_{2}^{2} \right]} \\ \leq \frac{X_{2} W_{2}}{\sqrt{m}} \\ \end{array}
$$

where we have used Jensen's inequality.

Lemma 2.2. Let  $\mathcal{F}$  be the class of linear predictors, with the  $L_{1}$ -norm of the weights bounded by  $W_{1}$ . Also assume that with probability one that  $\| x\|_{\infty} \leq X_{\infty}$ . Then

$$
\Re (\mathcal {F}) \leq X_{\infty} W_{1} \sqrt{\frac{2 \log d}{m}}
$$

where  $d$  is the dimensionality of  $x$ .

Proof. Let  $\mathcal{F}_{x_1,x_2,\ldots ,x_m}$  be the class:

$$
\left\{\left(w \cdot x_{1}, w \cdot x_{2}, \dots w \cdot x_{m}\right): | | w | |_{1} \leq W_{1} \right\}
$$

Using the definition of the dual norms, we now bound this empirical Rademacher complexity:

$$
\begin{array}{l} \Re (\mathcal {F}) = \frac{1}{m} \mathbb {E} \left[ \sup_{w: | | w | |_{1} \leq W_{1}} \sum_{i = 1}^{m} \epsilon_{i} w \cdot x_{i} \right] \\ = \frac{1}{m} \mathbb {E} \left[ \sup_{w: | | w | |_{1} \leq W_{1}} w \cdot \sum_{i = 1}^{m} \epsilon_{i} x_{i} \right] \\ = \frac{W_{1}}{m} \mathbb {E} \left[ \left| \left| \sum_{i = 1}^{m} \epsilon_{i} x_{i} \right| \right|_{\infty} \right] \\ = \frac{W_{1}}{m} \mathbb {E} \left[ \sup_{j} \sum_{i = 1}^{m} \epsilon_{i} [ x_{i} ]_{j} \right] \\ \leq \frac{W_{1} \sqrt{2 \log d}}{m} \sup_{j} \sqrt{\sum_{i = 1}^{m} [ x_{i} ]_{j}^{2}} \\ \leq X_{\infty} W_{1} \sqrt{\frac{2 \log d}{m}} \\ \end{array}
$$

where we have used Massart's finite lemma.

# 1 Bounded Differences Inequality

Suppose  $Z_{1},\ldots ,Z_{m}$  are independent random variables taking values in some space  $\mathcal{Z}$  and  $f:\mathcal{Z}^m\to \mathbb{R}$  is a function that satisfies, for all  $i$

$$
\sup_{z_{1}, \dots , z_{m}, z_{i}^{\prime}} | f (z_{1}, \dots , z_{i - 1}, z_{i}, z_{i + 1}, \dots , z_{m}) - f (z_{1}, \dots , z_{i - 1}, z_{i}^{\prime}, z_{i + 1}, \dots , z_{m}) | \leq c_{i}
$$

for some constants  $c_{1},\ldots ,c_{m}$  . Then we have,

$$
\mathbb {P} \left(f \left(Z_{1}^{m}\right) - \mathbb {E} \left[ f \left(Z_{1}^{m}\right) \right] \geq t\right) \leq \exp \left(\frac{- 2 t^{2}}{\sum_{i = 1}^{m} c_{i}^{2}}\right).
$$

# 2 Rademacher Averages

Recall that we are interested in bounding the difference between empirical and true expectations uniformly over some function class  $\mathcal{G}$ . In the context of classification or regression, we are typically interested in a class  $\mathcal{G}$  that is the loss class associated with some function class  $\mathcal{F}$ . That is, given a bounded loss function  $\phi : \mathcal{D} \times \mathcal{Y} \to [0,1]$ , we consider the class

$$
\phi_{\mathcal {F}} := \left\{(x, y) \mapsto \phi (f (x), y) \mid f \in \mathcal {F} \right\}.
$$

Rademacher averages give us a powerful tool to obtain uniform convergence results. We begin by examining the quantity

$$
\mathbb {E} \left[ \sup_{g \in \mathcal {G}} \left(\mathbb {E} \left[ g (Z) \right] - \frac{1}{m} \sum_{i = 1}^{m} g (Z_{i})\right) \right],
$$

where  $Z, \{Z_i\}_{i=1}^m$  are i.i.d. random variables taking values in some space  $\mathcal{Z}$  and  $\mathcal{G} \subseteq [a,b]^{\mathcal{Z}}$  is a set of bounded functions. By the bounded differences inequality, the random quantity we are interested in, namely

$$
\sup_{g \in \mathcal {G}} \left(\mathbb {E} [ g (Z) ] - \frac{1}{m} \sum_{i = 1}^{m} g \left(Z_{i}\right)\right),
$$

will be close to the above expectation with high probability.

Let  $\epsilon_1, \ldots, \epsilon_m$  be i.i.d.  $\{\pm\}$ -valued random variables with  $\mathbb{P}(\epsilon_i = +1) = \mathbb{P}(\epsilon_i = -1) = 1/2$ . These are also independent of the sample  $Z_1, \ldots, Z_m$ . Define the empirical Rademacher average of  $\mathcal{G}$  as

$$
\hat {\mathfrak {N}}_{m} (\mathcal {G}) := \mathbb {E} \left[ \sup_{g \in \mathcal {G}} \frac{1}{m} \sum_{i = 1}^{m} \epsilon_{i} g (Z_{i}) \Big | Z_{1}^{m} \right].
$$

The Rademacher average of  $\mathcal{G}$  is defined as

$$
\mathfrak {R}_{m} (\mathcal {G}) := \mathbb {E} \left[ \hat {\mathfrak {R}}_{m} (\mathcal {G}) \right].
$$

Theorem 2.1. We have,

$$
\mathbb {E} \left[ \sup_{g \in \mathcal {G}} \left(\mathbb {E} [ g (Z) ] - \frac{1}{m} \sum_{i = 1}^{m} g (Z_{i})\right) \right] \leq 2 \Re_{m} (\mathcal {G}).
$$

Proof. Introduce the ghost sample  $Z_1', \ldots, Z_m'$ . By that we mean that  $Z_i'$ 's are independent of each other and of  $Z_i$ 's and have the same distribution as the latter. Then we have,

$$
\begin{array}{l} \mathbb {E} \left[ \sup_{g \in \mathcal {G}} \left(\mathbb {E} [ g (Z) ] - \frac{1}{m} \sum_{i = 1}^{m} g \left(Z_{i}\right)\right) \right] \\ = \mathbb {E} \left[ \sup_{g \in \mathcal {G}} \left(\frac{1}{m} \sum_{i = 1}^{m} \left(\mathbb {E} [ g (Z) ] - g \left(Z_{i}\right)\right)\right) \right] \\ = \mathbb {E} \left[ \sup_{g \in \mathcal {G}} \left(\frac{1}{m} \sum_{i = 1}^{m} \mathbb {E} \left[ g \left(Z_{i}^{\prime}\right) - g \left(Z_{i}\right) \mid Z_{1}^{m} \right]\right) \right] \\ \leq \mathbb {E} \left[ \mathbb {E} \left. \left. \sup_{g \in \mathcal {G}} \left(\frac{1}{m} \sum_{i = 1}^{m} \left(g \left(Z_{i}^{\prime}\right) - g \left(Z_{i}\right)\right)\right) \right| Z_{1}^{m} \right] \right] \\ = \mathbb {E} \left[ \sup_{g \in \mathcal {G}} \left(\frac{1}{m} \sum_{i = 1}^{m} \left(g \left(Z_{i}^{\prime}\right) - g \left(Z_{i}\right)\right)\right) \right] \\ = \mathbb {E} \left[ \sup_{g \in \mathcal {G}} \left(\frac{1}{m} \sum_{i = 1}^{m} \epsilon_{i} \left(g \left(Z_{i}^{\prime}\right) - g \left(Z_{i}\right)\right)\right) \right] \\ \leq \mathbb {E} \left[ \sup_{g \in \mathcal {G}} \frac{1}{m} \sum_{i = 1}^{m} \epsilon_{i} g \left(Z_{i}^{\prime}\right) \right] + \mathbb {E} \left[ \sup_{g \in \mathcal {G}} \frac{1}{m} \sum_{i = 1}^{m} \epsilon_{i} g \left(Z_{i}\right) \right] \\ = 2 \Re_{m} (\mathcal {G}). \\ \end{array}
$$

Since  $\Re_m(-\mathcal{G}) = \Re_m(\mathcal{G})$ , we have the following corollary.

Corollary 2.2. We have,

$$
\mathbb {E} \left[ \sup_{g \in \mathcal {G}} \left(\frac{1}{m} \sum_{i = 1}^{m} g \left(Z_{i}\right) - \mathbb {E} [ g (Z) ]\right) \right] \leq 2 \Re_{m} (\mathcal {G}).
$$

Since  $g(X_{i})\in [a,b]$

$$
\sup_{g \in \mathcal {G}} \left(\mathbb {E} [ g (Z) ] - \frac{1}{m} \sum_{i = 1}^{m} g (Z_{i})\right)
$$

does not change by more than  $(b - a) / m$  if some  $Z_{i}$  is changed to  $Z_{i}^{\prime}$ . Applying the bounded differences inequality, we get the following corollary.

Corollary 2.3. With probability at least  $1 - \delta$

$$
\sup_{g \in \mathcal {G}} \left(\mathbb {E} [ g (Z) ] - \frac{1}{m} \sum_{i = 1}^{m} g (Z_{i})\right) \leq 2 \Re_{m} (\mathcal {G}) + (b - a) \sqrt{\frac{\ln (1 / \delta)}{2 m}}
$$

Recall that we denote the empirical  $\phi$ -risk minimizer by  $\hat{f}_{\phi}^{*}$ . We refer to  $L_{\phi}(\hat{f}_{\phi}^{*}) - \min_{f\in \mathcal{F}}L_{\phi}(f)$  as the estimation error. The next theorem bounds the estimation error using Rademacher averages.

Theorem 2.4. Let  $\phi_{\mathcal{F}}$  denote the loss class associated with  $\mathcal{F}$ . Then, we have, with probability at least  $1 - 2\delta$ ,

$$
L_{\phi} \left(\hat {f}_{\phi}^{*}\right) - \min_{f \in \mathcal {F}} L_{\phi} (f) \leq 2 \Re_{m} \left(\phi_{\mathcal {F}}\right) + 2 \sqrt{\frac{\ln \left(1 / \delta\right)}{2 m}}.
$$

Proof. Denote the function in  $\mathcal{F}$  with minimum risk by  $f_{\mathcal{F}}^*$ . Since the loss function takes values in the interval  $[0, 1]$ , applying the previous corollary to the class  $\phi_{\mathcal{F}}$ , we get, with probability at least  $1 - 2\delta$ ,

$$
L_{\phi} (\hat {f}_{\phi}^{*}) - \hat {L}_{\phi} (\hat {f}_{\phi}^{*}) \leq 2 \Re_{m} (\phi_{\mathcal {F}}) + \sqrt{\frac{\ln (1 / \delta)}{2 m}}.
$$

Also, by the bounded differences inequality, we have with probability at least  $1 - \delta$

$$
\hat {L}_{\phi} (f_{\mathcal {F}}^{*}) - L_{\phi} (f_{\mathcal {F}}^{*}) \leq \sqrt{\frac{\ln (1 / \delta)}{2 m}}.
$$

Thus we have, with probability at least  $1 - 2\delta$

$$
\begin{array}{l} L_{\phi} (\hat {f}_{\phi}^{*}) - L_{\phi} (f_{\mathcal {F}}^{*}) \leq \hat {L}_{\phi} (\hat {f}_{\phi}^{*}) - L_{\phi} (f_{\mathcal {F}}^{*}) + 2 \Re_{m} (\phi_{\mathcal {F}}) + \sqrt{\frac{\ln (1 / \delta)}{2 m}} \\ \leq \hat {L}_{\phi} (\hat {f}_{\phi}^{*}) - \hat {L}_{\phi} (f_{\mathcal {F}}^{*}) + 2 \Re_{m} (\phi_{\mathcal {F}}) + 2 \sqrt{\frac{\ln (1 / \delta)}{2 m}} \\ \leq 0 + 2 \Re_{m} (\phi_{\mathcal {F}}) + 2 \sqrt{\frac{\ln (1 / \delta)}{2 m}} \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/3f1f3ebb-6a12-4a2a-a9ea-82bbea0d783f/965df09e7dfa9d6478ee5cf24ba11190c3ca175c74ca377214e48033213fbd27.jpg)

# 3 Expected Regret and Generalization

Lemma 3.1. Let  $\mathcal{F}$  be the class of linear predictors, with the  $L_{1}$ -norm of the weights bounded by  $W_{1}$ . Also assume that with probability one that  $\| x\|_{\infty} \leq X_{\infty}$ . Then

$$
\Re (\mathcal {F}) \leq X_{\infty} W_{1} \sqrt{\frac{2 \log d}{m}}
$$

where  $d$  is the dimensionality of  $x$ .

Proof. Let  $\mathcal{F}_{x_1,x_2,\ldots ,x_m}$  be the class:

$$
\left\{\left(w \cdot x_{1}, w \cdot x_{2}, \dots w \cdot x_{m}\right): | | w | |_{1} \leq W_{1} \right\}
$$

Using the definition of the dual norms, we now bound this empirical Rademacher complexity:

$$
\begin{array}{l} \Re (\mathcal {F}) = \frac{1}{m} \mathbb {E} \left[ \sup_{w: | | w | |_{1} \leq W_{1}} \sum_{i = 1}^{m} \epsilon_{i} w \cdot x_{i} \right] \\ = \frac{1}{m} \mathbb {E} \left[ \sup_{w: | | w | |_{1} \leq W_{1}} w \cdot \sum_{i = 1}^{m} \epsilon_{i} x_{i} \right] \\ = \frac{W_{1}}{m} \mathbb {E} \left[ \left| \left| \sum_{i = 1}^{m} \epsilon_{i} x_{i} \right| \right|_{\infty} \right] \\ = \frac{W_{1}}{m} \mathbb {E} \left[ \sup_{j} \sum_{i = 1}^{m} \epsilon_{i} [ x_{i} ]_{j} \right] \\ \leq \frac{W_{1} \sqrt{2 \log d}}{m} \sup_{j} \sqrt{\sum_{i = 1}^{m} [ x_{i} ]_{j}^{2}} \\ \leq X_{\infty} W_{1} \sqrt{\frac{2 \log d}{m}} \\ \end{array}
$$

where we have used Massart's finite lemma.

# 3.1 Generalization

Corollary 3.2. Under the assumptions above, for the L2 case, we have:

$$
\mathcal {L} (\hat {w}_{2}) - \arg \min_{w: | | w | |_{2} \leq W_{2}} \mathcal {L} (w) \leq 2 L_{\phi} \frac{X_{2} W_{2}}{\sqrt{m}} + 2 \sqrt{\frac{\log 2 / \delta}{2 m}}
$$

and for the L1 case, we have:

$$
\mathcal {L} (\hat {w}_{1}) - \arg \min_{w: | | w | |_{1} \leq W_{1}} \mathcal {L} (w) \leq 2 L_{\phi} X_{\infty} W_{1} \sqrt{\frac{2 \log d}{m}} + 2 \sqrt{\frac{\log 2 / \delta}{2 m}}
$$

The proof just follows from the previous lemmas, along with our Rademacher bound for loss classes.

# Rademacher Averages, Linear Prediction, and Convex Duality

Instructor: Sham Kakade

# 1 Convex duality

We define the dual (conjugate) of  $f$  as

$$
f^{*} (v) = \sup_{u} [ u^{\top} v - f (u) ].
$$

Note that  $f^{*}(v)$  is convex (even if  $f(u)$  isn't because it is the sup of convex functions).

By definition, we have the following inequality:

$$
u^{\top} v \leq f (u) + f^{*} (v),
$$

which decouples  $u$  and  $v$ .

We also have  $f(u) = (f^{*})^{*}(u)$ . To see this, we use the following (not exactly rigorous derivation): given any  $u$ , let  $v_{0} = \nabla f(u)$ , then

$$
u^{\top} v_{0} = f (u) + f^{*} (v_{0})
$$

because  $u^{\top}v_{0} - f(u)$  (which is concave) has subgradient zero at  $u$ , and thus achieves maximum. Now, we know that

$$
(f^{*})^{*} (u) \geq u^{\top} v_{0} - f^{*} (v_{0})
$$

and thus  $(f^{*})^{*}(u)\geq f(u)$

In addition, we know that there exists  $v_0'$  such that

$$
(f^{*})^{*} (u) + f^{*} (v_{0}^{\prime}) - u^{\top} v_{0}^{\prime} = 0.
$$

This means that  $f(u) \geq u^{\top} v_{0}' - f^{*}(v_{0}') = (f^{*})^{*}(u)$ . Therefore we have  $f(u) = (f^{*})^{*}(u)$ . Note that if  $(u, v)$  is a pair such that the equality holds  $u^{\top} v = f(u) + f^{*}(v)$ , then we have the relationship  $u = \nabla f^{*}(v)$  and  $v = \nabla f(u)$ .

Some examples of convex duality (verification leaves as exercise):

$$
f (u) = p^{- 1} \| u \|_{p}^{p}; \quad f^{*} (v) = q^{- 1} \| v \|_{q}^{q} \quad (p^{- 1} + q^{- 1} = 1).
$$

$$
f (u) = 0. 5 \| u \|_{p}^{2}; \quad f^{*} (v) = 0. 5 \| v \|_{q}^{2} \quad (p^{- 1} + q^{- 1} = 1).
$$

If  $\sum_{j}\mu_{j} = 1$  and  $\mu_j\geq 0$  , then

$$
f (u) = \ln \sum_{j} \mu_{j} e^{u_{j}}; \qquad f^{*} (v) = \sum_{j} v_{j} \ln \left(v_{j} / \mu_{j}\right) \text{subject} \text{to} \sum_{j} v_{j} = 1, v_{j} \geq 0.
$$

For any norm  $\| u\| _P$  , one can also define its dual norm  $\| v\| _D$  as

$$
\| v \|_{D} = \sup_{\| u \| \leq 1} u^{\top} v.
$$

This means that we have the decoupling inequality:

$$
u^{\top} v \leq \| u \|_{P} \| v \|_{D}.
$$

Examples: for vectors,  $\| u \|_p$  and  $\| v \|_q$  are dual norms when  $1/p + 1/q = 1$ . The same holds for matrix Schatten norms.

# 2 Rademacher Complexity of Regularized Linear Function Class

Consider linear functions of the form:

$$
F = \{w^{\top} x: g (w) \leq A \},
$$

and we are interested in its Rademacher Complexity:

$$
R_{n} (F, X_{1}^{n}) = E_{\sigma} \sup_{\| w \|_{p} \leq A} n^{- 1} \sum_{i = 1}^{n} \sigma_{i} w^{\top} X_{i}.
$$

Then using duality, we have

$$
n^{- 1} \sum_{i = 1}^{n} \sigma_{i} w^{\top} X_{i} \leq \inf_{\lambda} \left[ \lambda^{- 1} g (w) + \lambda^{- 1} g^{*} \left(\lambda n^{- 1} \sum_{i = 1}^{n} \sigma_{i} X_{i}\right) \right].
$$

If  $g^{*}(0) = 0$  and is smooth with respect to a norm  $\| \cdot \|$ :

$$
g^{*} (u) \leq g^{*} (v) + \nabla g^{*} (v)^{\top} (u - v) + L \| u - v \|^{2},
$$

for some  $L > 0$ , then one can show using induction that

$$
\begin{array}{l} R_{n} (F, X_{1}^{n}) \leq \inf_{\lambda} \left[ \lambda^{- 1} g (w) + \lambda^{- 1} E_{\sigma} g^{*} \left(\lambda n^{- 1} \sum_{i = 1}^{n} \sigma_{i} X_{i}\right) \right] \\ \leq \inf_{\lambda} \left[ \lambda^{- 1} g (w) + \lambda^{- 1} 0. 5 E_{\sigma_{1}^{n - 1}} \left[ g^{*} \left(\lambda n^{- 1} \left(- X_{n} + \sum_{i = 1}^{n - 1} \sigma_{i} X_{i}\right)\right) + g^{*} \left(\lambda n^{- 1} \left(X_{n} + \sum_{i = 1}^{n - 1} \sigma_{i} X_{i}\right)\right) \right] \right. \\ \leq \inf_{\lambda} \left[ \lambda^{- 1} g (w) + \lambda n^{- 2} \| X_{n} \|^{2} + \lambda^{- 1} E_{\sigma_{1}^{n - 1}} g^{*} (\lambda n^{- 1} (\sum_{i = 1}^{n - 1} \sigma_{i} X_{i})) \right] \\ \dots \\ \leq 2 \sqrt{A L n^{- 2} \sum_{i = 1}^{n} \| X_{i} \|^{2}}. \\ \end{array}
$$

Then

$$
R_{n} (F, X_{1}^{n}) \leq 2 \sqrt{A B L / n}, \quad B = \frac{1}{n} \sum_{i = 1}^{n} \| X_{i} \|^{2}.
$$

# 3 Some Examples

# 3.1 Vector  $L_{2}$  regularization

We have  $g(w) = 0.5\| w\| _2^2$ , then  $g^{*}(u) = 0.5\| u\|_{2}^{2}$ , and is smooth with respect to  $\| \cdot \| _2$  with  $L = 0.5$ . It follows that

$$
R_{n} (F, X_{1}^{n}) \leq a b / \sqrt{n}; \quad F = \{w: \| w \|_{2} \leq a \}; \quad b = \sup_{i} \| X_{i} \|_{2}.
$$

# 3.2 Vector  $L_{p}$  regularization

We have  $g(w) = 0.5\| w\| _p^2$  with  $p\in (1,2]$ , then  $g^{*}(u) = 0.5\| u\|_{q}^{2}$ , where  $1 / p + 1 / q = 1$ . It can be shown with Taylor expansion that  $g^{*}(\cdot)$  is smooth with respect to  $\| \cdot \|_q$  with  $L = 0.5(q - 1)$ . It follows that

$$
R_{n} (F, X_{1}^{n}) \leq a b \sqrt{(q - 1) / n}; \quad F = \{w: \| w \|_{p} \leq a \}; \quad b = \sup_{i} \| X_{i} \|_{q}.
$$

Note that this formula diverges when  $p = 1$  (corresponding to  $q = \infty$ ). We need another formulation to deal with the case  $p = 1$  (or  $p$  is close to 1).

Note that  $w$  can be infinite dimensional.

# 3.3 Vector entropy regularization

Here we assume that constraint that  $\sum_{j}w_{j} = A_{1}$  and  $w_{j}\geq 0$  (note that we can transform  $x\to [x, - x]$  to simulate the effect of  $w_{j}\leq 0$ ). In this case, we consider regularization  $g(w) = \sum_{j}w_{j}\ln (w_{j} / \mu_{j})$ , where  $\{\mu_j > 0\}$  is a set of positive prior such that  $\sum_{j}\mu_{j} = A_{1}$ . In this case, we know that  $g^{*}(u) = A_{1}\ln (\sum_{j}(\mu_{j} / A_{1})\exp (u_{j}))$ , and  $g^{*}(u)$  is smooth with respect to  $\| \cdot \|_{\infty}$  with  $L = 0.5A_{1}$ . It follows that

$$
R_{n} (F, X_{1}^{n}) \leq B \sqrt{2 A_{1} A_{2} / n}; \quad F = \{w: \sum_{j} w_{j} \ln (w_{j} / \mu_{j}) \leq A_{2}; w_{j} \geq 0; \sum_{j} w_{j} = A_{1} \}; \quad B = \sup_{i} \| X_{i} \|_{\infty}.
$$

Here  $w$  can be infinite dimensional. In finite dimension, where  $w, x \in R^p$ , we may take  $\mu_j = A_1 / p$ , and the maximum value  $\sum_{j} w_j \ln (w_j / \mu_j) \leq A_1 \ln(p)$ . Therefore we may take  $A_2 = A_1 \ln(p)$  and obtain the following bound for  $L_1$  regularization (in finite dimension):

$$
R_{n} (F, X_{1}^{n}) \leq A_{1} b \sqrt{2 \ln (p) / n}; \quad F = \{w: w_{j} \geq 0; \sum_{j} w_{j} = A_{1} \}; \quad b = \sup_{i} \| X_{i} \|_{\infty}.
$$

# 3.4 Matrix  $L_{p}$  Schatten norm regularization

Let  $w$  be a matrix, and  $g(w) = 0.5\|w\|_p^2$  with  $p \in (1,2]$ , where  $\| \cdot \|_p$  denotes the matrix Schatten norm here. Then the results essentially follow that of the vector norm, with  $g^*(u) = 0.5\|u\|_q^2$ , where  $1/p + 1/q = 1$ . It can be shown with Taylor expansion that  $g^*(\cdot)$  is smooth with respect to  $\| \cdot \|_q$  with  $L = 0.5(q - 1)$ . It follows that

$$
R_{n} (F, X_{1}^{n}) \leq a b \sqrt{(q - 1) / n}; \quad F = \{w: \| w \|_{p} \leq a \}; \quad b = \sup_{i} \| X_{i} \|_{q}.
$$

Similar results parallel to vector entropy regularization can be obtained for matrix regularization.

# Uniform and Empirical Covering Numbers

Instructor: Sham Kakade

# 1 Warmup

Assume that for every  $\alpha > 0$  that we have a (finite) set  $\hat{\mathcal{F}}_{\alpha}$  such that for all  $f \in \mathcal{F}$  there exists an  $\hat{f} \in \hat{\mathcal{F}}_{\alpha}$  such that  $x \in \mathcal{X}, y \in \mathcal{Y}$ :

$$
\left| \phi (\hat {f} (x), y) - \phi (f (x), y) \right| \leq \alpha .
$$

Such an  $\hat{\mathcal{F}}_{\alpha}$  is a  $\alpha$ -cover of  $\mathcal{F}$ . Clearly, this implies that:

$$
\left| \mathcal {L} (\hat {f} (x)) - \mathcal {L} (f (x)) \right| \leq \alpha .
$$

Hence, we can view  $\hat{\mathcal{F}}_{\alpha}$  as implicitly providing a cover for the loss class.

Intuitively, with respect to obtaining a uniform convergence rate, we could work directly with  $\hat{\mathcal{F}}_{\alpha}$ . More precisely,

Theorem 1.1. Assume that for all  $f \in \mathcal{F}$  our predictions are in  $[-1, 1]$ . With probability greater than  $1 - \delta$

$$
\sup_{f \in \mathcal {F}} | \hat {\mathcal {L}} (f) - \mathcal {L} (f) | \leq \inf_{\alpha} 2 \sqrt{\frac{\log | \hat {\mathcal {F}}_{\alpha} | + \log \frac{1}{\delta}}{2 n}} + 2 \alpha
$$

Proof. Fix  $\alpha$ . Using the union bound, we have:

$$
\sup_{\hat {f} \in \hat {\mathcal {F}}_{\alpha}} | \hat {\mathcal {L}} (\hat {f}) - \mathcal {L} (\hat {f}) | \leq 2 \sqrt{\frac{\log | \hat {\mathcal {F}}_{\alpha} | + \log \frac{1}{\delta}}{2 n}}
$$

Let  $c(f)$  be the function  $\hat{\mathcal{F}}_{\alpha}$  which covers  $f$ . Following from the definition of  $c(f)$  and  $\hat{\mathcal{F}}_{\alpha}$ , we have that for all  $f \in \mathcal{F}$ :

$$
\left| \mathcal {L} (f) - \mathcal {L} (c (f)) \right| \leq \alpha
$$

$$
| \hat {\mathcal {L}} (f) - \hat {\mathcal {L}} (c (f)) | \leq \alpha
$$

It follows that:

$$
\begin{array}{l} \sup_{f \in \mathcal {F}} | \hat {\mathcal {L}} (f) - \mathcal {L} (f) | = \sup_{f \in \mathcal {F}} | \hat {\mathcal {L}} (f) - \hat {\mathcal {L}} (c (f)) - (\mathcal {L} (f) - \mathcal {L} (c (f))) + \hat {\mathcal {L}} (c (f)) - \mathcal {L} (c (f)) | \\ \leq 2 \alpha + \sup_{f \in \mathcal {F}} | \hat {\mathcal {L}} (c (f)) - \mathcal {L} (c (f)) | \\ \leq 2 \alpha + \sup_{\hat {f} \in \hat {\mathcal {F}}_{\alpha}} | \hat {\mathcal {L}} (\hat {f}) - \mathcal {L} (\hat {f}) | \\ \leq 2 \alpha + \sqrt{\frac{\log | \hat {\mathcal {F}}_{\alpha} | + 2 \log \frac{1}{\delta}}{2 n}} \\ \end{array}
$$

The proof is completed by noting that  $\alpha$  is arbitrary, so we can take a inf over  $\alpha$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/3f1f3ebb-6a12-4a2a-a9ea-82bbea0d783f/5bf2c682020c9f59d77e3e1c6b68646a3315458d5462ad74b1030950fbab8d6f.jpg)

# 2 General covering numbers

Consider function class  $G = \{g_{\theta}(Z) : \theta \in \Theta\}$ . Given any metric  $d(g, g')$ , an  $\epsilon$  cover of  $G$  in metric  $d$  is a set  $G_d(\epsilon) = \{g_1(Z), \ldots, g_N(Z)\}$  such that for all  $g_{\theta} \in G$ , there exists  $j \colon d(g_{\theta}, g_j) \leq \epsilon$ .

An example is least squares sub-Gaussian analysis, where  $g_{\theta}(\xi) = \theta^{\top}P_X\xi$ , and the covering is with respect to the Euclidean distance in the parameter space  $\Theta = S^{d - 1}$ .

We are particularly interested in distances with respect to the true or empirical underlying distribution of  $Z$ . Let  $D$  be a distribution over  $Z$ , then we can define  $L_{p}$  distance between two functions  $g(z)$  and  $g'(z)$  as  $d_{D}^{p}(g, g') = [E_{D}|g(z) - g'(z)|^{p}]^{1/p}$ . We know that  $d_{P}^{p}(g, g')$  increases as  $p$  increases (property of  $L_{p}$  distance).

Now  $G_{p}(\epsilon) = \{g_{1}(Z),\ldots ,g_{N}(Z)\}$  is an  $L_{p}$  cover of  $G$  with respect to  $D$  if for all  $g_{\theta}\in G$ , there exists  $j$  such that

$$
\left[ E_{Z \sim D} \right| g_{j} (Z) - g_{\theta} (Z) |^{p} ]^{1 / p} \leq \epsilon .
$$

Moreover, consider an empirical distribution  $Z_{1}^{n} = \{Z_{1},\ldots ,Z_{n}\}$  over  $Z$ , then we may define empirical  $L_{p}$  cover of  $G$  as  $L_{p}$  cover of  $G$  with respect to the empirical  $p$ -norm:

$$
[ n^{- 1} \sum_{i = 1}^{n} | g (Z_{i}) - g^{\prime} (Z_{i}) |^{p} ]^{1 / p}.
$$

The smallest number of  $\epsilon$ -cover, is called  $\epsilon$ -covering number, and the log of covering number is called  $\epsilon$ -entropy. Uniform (empirical)  $L_{p}$  entropy is the maximum  $L_{p}$  entropy of  $G$  under the worst case empirical distribution. Since  $L_{p}$  distance increases, therefore  $L_{p}$  entropy increases when  $p$  increases. However, the most interesting cases are  $p \geq 2$ , specially  $p = 2$  and  $p = \infty$ .

Relation to bracketing cover:  $L_{\infty}$  cover is stronger than Bracketing cover. This is because if  $\{g_j\}$  is an  $\epsilon$  cover of  $g_{\theta}$ , then  $g_j^L = g_j - \epsilon$  is  $2\epsilon$  lower and  $g_j^U$  is  $2\epsilon$  upper bracketing cover.  $g_j^L$  and  $g_j^U$  is  $2\epsilon$  bracketing cover. The reverse is not necessarily true. For example, the classification example has finite bracketing cover but does not have finite  $L_{\infty}$  cover. Because of the relationship, the analysis of bracketing cover can be used with  $L_{\infty}$  cover. However, some times empirical  $L_{\infty}$  cover is useful and one does not necessarily have a bracketing cover counterpart.

# 3 p-norm Covering Numbers

The problem with the previous notion of a cover is that it uniformly demands a good approximation to each  $f$  by an element in  $\hat{\mathcal{F}}_{\alpha}$ . Intuitively, it seems more natural to have a cover such that for each  $f \in \mathcal{F}$  there is an element in the cover which is only on average close  $f$ . We now formalize this.

Assume that all hypotheses in our class  $\mathcal{F}$  make real valued predictions. Let  $x_{1:n}$  be a set of  $n$  points. A set of vectors  $V\subset \mathbb{R}^n$  is an  $\alpha$ -cover, with respect to the  $p$ -norm, of  $\mathcal{F}$  on  $x_{1:n}$  if for all  $f\in \mathcal{F}$  there exists a  $v\in V$  such that:

$$
\left(\frac{1}{n} \sum_{i = 1}^{n} | v_{i} - f (x_{i}) |^{p}\right)^{\frac{1}{p}} \leq \alpha
$$

We define the  $p$ -norm covering number  $\mathcal{N}_p(\alpha, \mathcal{F}, x_{1:n})$  as the size of the minimal such cover  $V$ , i.e.:

$$
\mathcal {N}_{p} (\alpha , \mathcal {F}, x_{1: n}) = \min  \{| V |: V \text{isan} \alpha \text{-cover}, \text{underthep -norm ,ofFon} x_{1: n} \}
$$

Also define:

$$
\mathcal {N}_{p} (\alpha , \mathcal {F}, n) = \sup_{x_{1: n}} \mathcal {N}_{p} (\alpha , \mathcal {F}, x_{1: n}) \quad .
$$

In other words,  $\mathcal{N}_p(\alpha ,\mathcal{F},n)$  is the worst case covering number over  $x_{1:n}$ .

Observe that:

$$
\mathcal {N}_{p} (\alpha , \mathcal {F}, \infty) \leq \mathcal {N}_{q} (\alpha , \mathcal {F}, \infty)
$$

for  $p \leq q$ . This is a consequence of using the (normalized)  $p$ -norm in the definition of the covering number.

Note that:

$$
\mathcal {N}_{\infty} (\alpha , \mathcal {F}, \infty) \leq | \hat {\mathcal {F}}_{\alpha} |
$$

which follows directly from the definition of  $\hat{\mathcal{F}}_{\alpha}$

# 4 Rademacher Bounds

Theorem 4.1. (Discretization) Assume that all  $f \in \mathcal{F}$  make predictions in  $[-1,1]$ . Let  $\hat{\Re}_n(\mathcal{F})$  be the empirical Rademacher number of  $\mathcal{F}$  on  $x_{1:n}$ . We have:

$$
\hat {\mathfrak {R}}_{n} (\mathcal {F}) \leq \inf_{\alpha} \sqrt{\frac{2 \log N_{1} (\alpha , \mathcal {F} , x_{1 : n})}{n}} + \alpha
$$

Proof. Fix  $\alpha$  and fix a minimal cover  $V$ . Define  $B_{\alpha}(v)$  to be the hypothesis in  $\mathcal{F}$  that are  $\alpha$ -covered by  $v$ . Using that  $\cup_{v \in V} B_{\alpha}(v) = \mathcal{F}$ ,

$$
\begin{array}{l} \hat {\mathfrak {R}}_{n} (\mathcal {F}) = \mathbb {E} \left[ \sup_{f \in \mathcal {F}} \left(\frac{1}{n} \sum_{i = 1}^{n} \epsilon_{i} f (x_{i})\right) \right] \\ = \mathbb {E} \left[ \sup_{v \in V} \sup_{f \in B_{\alpha} (v)} \left(\frac{1}{n} \sum_{i = 1}^{n} \epsilon_{i} f \left(x_{i}\right)\right) \right] \\ = \mathbb {E} \left[ \sup_{v \in V} \sup_{f \in B_{\alpha} (v)} \left(\frac{1}{n} \sum_{i = 1}^{n} \epsilon_{i} v_{i} + \frac{1}{n} \sum_{i = 1}^{n} \epsilon_{i} \left(f \left(x_{i}\right) - v_{i}\right)\right) \right] \\ \leq \mathbb {E} \left[ \sup_{v \in V} \frac{1}{n} \sum_{i = 1}^{n} \epsilon_{i} v_{i} \right] + \mathbb {E} \left[ \sup_{v \in V} \sup_{f \in B_{\alpha} (v)} \frac{1}{n} \sum_{i = 1}^{n} \epsilon_{i} (f (x_{i}) - v_{i}) \right] \\ \end{array}
$$

Using Holder's inequality for the second term,

$$
\begin{array}{l} \mathbb {E} \left[ \sup_{v \in V} \sup_{f \in B_{\alpha} (v)} \frac{1}{n} \sum_{i = 1}^{n} \epsilon_{i} \left(f \left(x_{i}\right) - v_{i}\right) \right] \leq \mathbb {E} \left[ \sup_{v \in V} \sup_{f \in B_{\alpha} (v)} \frac{1}{n} \sum_{i = 1}^{n} | f (x_{i}) - v_{i} | \right] \\ \leq \alpha \\ \end{array}
$$

Using Massart's finite lemma for the first term:

$$
\begin{array}{l} \mathbb {E} \left[ \sup_{v \in V} \frac{1}{n} \sum_{i = 1}^{n} \epsilon_{i} v_{i} \right] \leq \frac{\sup_{v \in V} | | v | |_{2} \sqrt{2 \log | V |}}{n} \\ \leq \sqrt{\frac{2 \log | V |}{n}} \\ = \sqrt{\frac{2 \log N_{1} (\alpha , \mathcal {F} , x_{1 : n})}{n}} \\ \end{array}
$$

The proof is completed by combining these last two bounds and noting that  $\alpha$  was arbitrary (so we can take an inf over all  $\alpha > 0$ ).

The following is immediate:

Corollary 4.2. Assume that all  $f \in \mathcal{F}$  make predictions in  $[-1, 1]$ . We have:

$$
\mathfrak {R}_{n} (\mathcal {F}) \leq \inf_{\alpha} \sqrt{\frac{2 \log N_{1} (\alpha , \mathcal {F} , n)}{n}} + \alpha
$$

# Dudley's Theorem and Packing Numbers

Instructor: Sham Kakade

# 1 Chaining and Dudley's Theorem

Rather than choosing a fixed scale, one can integrate over all scales, as shown in the following theorem.

Theorem 1.1. Assume that all  $\mathcal{F}_{x_{1:n}}\subset \mathbb{R}^n$ . Let  $\hat{\Re}_n(\mathcal{F})$  be the empirical Rademacher number of  $\mathcal{F}$  on  $x_{1:n}$ . We have:

$$
\hat {\mathfrak {R}}_{n} (\mathcal {F}) \leq \inf_{\alpha \geq 0} \left(4 \alpha + 1 2 \int_{\alpha}^{\infty} \sqrt{\frac{\log N_{2} (\epsilon , \mathcal {F} , x_{1 : n})}{n}} d \epsilon\right)
$$

This theorem is subtly different from the discretization theorem. It is stated in terms of the 2-norm covering number rather than the 1-norm covering number. Also note that we do not restrict the range of  $f \in \mathcal{F}$ .

Proof. Abusing notation we assume that  $\mathcal{F} = \mathcal{F}_{x_{1:n}}$ . Let

$$
B = \sup_{f \in \mathcal {F}} \sqrt{\frac{1}{n} \sum_{i = 1}^{n} f_{i}^{2}}
$$

For  $j \geq 0$ , set  $\alpha_{j} = 2^{-j}B_{j}$  and let  $T_{j}$  be a minimal  $\alpha_{j}$ -cover of  $\mathcal{F}$  with respect to the 2-norm. Let  $c_{j}(f)$  be the element in  $T_{j}$  which covers  $f$ . We also use the notation  $[c_{j}(f)]_{i}$  to denote the  $i - th$  component. Assume that  $T_{0} = \{0\}$  (which is a B-cover).

The chaining method expresses  $f$  as  $f = f - c_{N}(f) + \sum_{j=1}^{N} (c_{j}(f) - c_{j-1}(f))$ , since  $c_{0}(f) = 0$ . Now we have:

$$
\begin{array}{l} \hat {\mathfrak {R}}_{n} (\mathcal {F}) = \mathbb {E} \left[ \sup_{f \in \mathcal {F}} \left(\frac{1}{n} \sum_{i = 1}^{n} \epsilon_{i} f_{i}\right) \right] \\ = \mathbb {E} \left[ \sup_{f \in \mathcal {F}} \left(\frac{1}{n} \sum_{i = 1}^{n} \epsilon_{i} \left(f_{i} - \left[ c_{N} (f) \right]_{i} + \sum_{j = 1}^{N} \left(\left[ c_{j} (f) \right]_{i} - \left[ c_{j - 1} (f) \right]_{i}\right)\right)\right) \right] \\ \leq \mathbb {E} \left[ \sup_{f \in \mathcal {F}} \left(\frac{1}{n} \sum_{i = 1}^{n} \epsilon_{i} (f_{i} - [ c_{N} (f) ]_{i})\right) \right] + \mathbb {E} \left[ \sup_{f \in \mathcal {F}} \left(\frac{1}{n} \sum_{i = 1}^{n} \sum_{j = 1}^{N} \epsilon_{i} ([ c_{j} (f) ]_{i} - [ c_{j - 1} (f) ]_{i})\right) \right] \\ \leq \mathbb {E} \left[ \sup_{f \in \mathcal {F}} \left(\frac{1}{n} \sum_{i = 1}^{n} \epsilon_{i} \left(f_{i} - \left[ c_{N} (f) \right]_{i}\right)\right) \right] + \sum_{j = 1}^{N} \mathbb {E} \left[ \sup_{f \in \mathcal {F}} \left(\frac{1}{n} \sum_{i = 1}^{n} \epsilon_{i} \left(\left[ c_{j} (f) \right]_{i} - \left[ c_{j - 1} (f) \right]_{i}\right)\right) \right] \\ \leq \alpha_{N} + \sum_{j = 1}^{N} \mathbb {E} \left[ \sup_{f \in \mathcal {F}} \left(\frac{1}{n} \sum_{i = 1}^{n} \epsilon_{i} ([ c_{j} (f) ]_{i} - [ c_{j - 1} (f) ]_{i})\right) \right] \\ \end{array}
$$

where we have appealed to Cauchy-Schwarz in the last step.

Appealing to Massart's lemma:

$$
\mathbb {E} \left[ \sup_{f \in \mathcal {F}} \left(\frac{1}{n} \sum_{i = 1}^{n} \epsilon_{i} ([ c_{j} (f) ]_{i} - [ c_{j - 1} (f) ]_{i})\right) \right] \leq \frac{(\sup_{f \in \mathcal {F}} | | c_{j} (f) - c_{j - 1} (f) | |_{2}) \sqrt{2 \log | T_{j} | | T_{j - 1} |}}{n}
$$

And by the triangle inequality:

$$
\begin{array}{l} \sup_{f \in \mathcal {F}} | | c_{j} (f) - c_{j - 1} (f) | |_{2} \leq \sup_{f \in \mathcal {F}} | | c_{j} (f) - f | |_{2} + \sup_{f \in \mathcal {F}} | | f - c_{j - 1} (f) | |_{2} \\ \leq \sqrt{n} \alpha_{j} + \sqrt{n} \alpha_{j - 1} \\ = \sqrt{n} \alpha_{j} + 2 \sqrt{n} \alpha_{j} \\ = 3 \sqrt{n} \alpha_{j} \\ \end{array}
$$

where  $\sqrt{n}$  factor comes from the fact that the 2-norm in the covering number definition is a normalized quantity. So we have

$$
\begin{array}{l} \mathbb {E} \left[ \sup_{f \in \mathcal {F}} \left(\frac{1}{n} \sum_{i = 1}^{n} \epsilon_{i} ([ c_{j} (f) ]_{i} - [ c_{j - 1} (f) ]_{i})\right) \right] \leq \frac{3 \alpha_{j} \sqrt{2 \log | T_{j} | | T_{j - 1} |}}{\sqrt{n}} \\ \leq \frac{6 \alpha_{j} \sqrt{\log | T_{j} |}}{\sqrt{n}} \\ \end{array}
$$

since  $|T_{j}| \geq |T_{j - 1}|$ .

Continuing, and using that  $2(\alpha_{j} - \alpha_{j + 1}) = \alpha_{j}$

$$
\begin{array}{l} \hat {\Re}_{n} (\mathcal {F}) \leq \alpha_{N} + 6 \sum_{j = 1}^{N} \alpha_{j} \sqrt{\frac{\log | T_{j} |}{n}} \\ = \alpha_{N} + 6 \sum_{j = 1}^{N} \alpha_{j} \sqrt{\frac{\log N_{2} (\alpha_{j} , \mathcal {F} , x_{1 : n})}{n}} \\ \leq \alpha_{N} + 1 2 \sum_{j = 1}^{N} (\alpha_{j} - \alpha_{j + 1}) \sqrt{\frac{\log N_{2} (\alpha_{j} , \mathcal {F} , x_{1 : n})}{n}} \\ \leq \alpha_{N} + 1 2 \int_{\alpha_{N + 1}}^{\alpha_{0}} \sqrt{\frac{\log N_{2} (\alpha , \mathcal {F} , x_{1 : n})}{n}} d \alpha \\ \leq \alpha_{N} + 1 2 \int_{\alpha_{N + 1}}^{\infty} \sqrt{\frac{\log N_{2} (\alpha , \mathcal {F} , x_{1 : n})}{n}} d \alpha \\ \end{array}
$$

Pick any  $\alpha \geq 0$ . Let  $N$  be the largest integer  $j$  such that  $\alpha_{j} \geq 2\alpha$ . Hence,  $\alpha_{N} \geq 2\alpha$  and  $\alpha_{N+1} = \alpha_{N}/2 \geq \alpha$ , so the integral from  $\alpha_{N+1}$  to  $\infty$  is upper bounded by the integral from  $\alpha$  to  $\infty$ . Also, since  $\alpha_{N+1} \leq 2\alpha$ , we have that  $\alpha_{N} \leq 4\alpha$ , which completes the proof.

# 2 Examples

# 2.1 Vector Spaces

Assume that  $F|_{x_{1:n}}$  is finite dimensional vector space of dimension  $k$ . Then one can show  $N_2(\alpha, \mathcal{F}, x_{1:n}) \leq (1 / \alpha)^k$ . Then using the discretization bound, with  $\alpha = \sqrt{1 / n}$ , we have:

$$
\hat {\mathfrak {R}}_{n} (\mathcal {F}) \leq 2 \sqrt{\frac{k \log n}{n}}
$$

From Dudley's Thm, we get the sharper bound that:

$$
\hat {\Re}_{n} (\mathcal {F}) \leq 1 2 \sqrt{\frac{k}{n}} \int_{0}^{1} \sqrt{\log \frac{1}{\alpha}} d \alpha \leq 1 2 \sqrt{\frac{\pi}{2}} \sqrt{\frac{k}{n}}
$$

Here, note that the covering number is 1 when  $\alpha > 1$ . Also, the integral can be evaluated using the change of variables  $y = e^{-y^2}$  (which ends up looking like a Gaussian).

# 2.2 Increasing Functions

Now assume that  $F|_{x_{1:n}}$  is the set of non-decreasing functions. Considering discretizing  $\mathcal{V} = [-1,1]$  into bins of size  $1 / \alpha$ . We can approximate a function in  $f \in \mathcal{F}$  by: for each of the bins (there are  $1 / \alpha$  bins), just specify one of the  $n$  points at which the function increases above that bin. This means the covering number is at most  $n^{1 / \alpha}$ .

Hence, from the discretization theorem, we get;

$$
\hat {\mathfrak {R}}_{n} (\mathcal {F}) \leq \operatorname{constant} \left(\frac{\log n}{n}\right)^{1 / 3}
$$

(by optimizing  $\alpha$ ). From Dudley's theorem, we get the sharper result:

$$
\hat {\mathfrak {R}}_{n} (\mathcal {F}) \leq \operatorname{constant} \sqrt{\frac{\log n}{n}}
$$

The improved exponent is actually quite important.

# 3 Combinatorial Dimensions for Real Valued Function Classes

We will now define some combinatorial dimensions for real valued function classes. We will then see how to get upper bounds for covering numbers in terms of these dimensions. The first dimension is called Pollard's pseudodimension.

Definition 3.1. Let  $\mathcal{F} \subseteq [0,1]^{\mathcal{X}}$ . We say that  $\mathcal{F}$ $P$ -shatters a set  $X = \{x_{1},\ldots ,x_{n}\} \subseteq \mathcal{X}$  if there exist  $s_1,\dots,s_n$  such that, for all  $E \subseteq X$ , there exists  $f_{E} \in \mathcal{F}$  such that,

$$
\forall x_{i} \in E, \quad f_{E} (x_{i}) \geq s_{i}
$$

$$
\forall x_{i} \in X - E, \quad f_{E} (x_{i}) <   s_{i}
$$

The pseudodimension of  $\mathcal{F}$ , denoted by  $\mathrm{Pdim}(\mathcal{F})$ , is the size of a largest  $P$ -shattered set.

The pseudodimension does not take any scale into account. The fat shattering dimensions measures the complexity of the class  $\mathcal{F}$  at some scale  $\alpha$ .

Definition 3.2. Let  $\mathcal{F} \subseteq [0,1]^{\mathcal{X}}$ . We say that  $\mathcal{F} P_{\alpha}$ -shatters a set  $X = \{x_1, \ldots, x_n\} \subseteq \mathcal{X}$  if there exist  $s_1, \ldots, s_n$  such that, for all  $E \subseteq X$ , there exists  $f_E \in \mathcal{F}$  such that,

$$
\forall x_{i} \in E,
$$

$$
f_{E} (x_{i}) \geq s_{i} + \alpha
$$

$$
\forall x_{i} \in X - E,
$$

$$
f_{E} \left(x_{i}\right) \leq s_{i} - \alpha
$$

The fat shattering dimension of  $\mathcal{F}$  at scale  $\alpha$ , denoted by  $\mathrm{fat}_{\alpha}(\mathcal{F})$ , is the size of a largest  $P_{\alpha}$ -shattered set.

# 4 Covering and Packing Numbers

We have already seen the definition of covering numbers before. Packing numbers are closely related to covering numbers. Depending on the situation, we might prefer to work with one or the other. Note that both these quantities can be defined in a general (pseudo)metric space.

Let  $(\mathcal{X},d)$  be a pseudometric space. Let  $A\subseteq \mathcal{X}$  and  $\alpha >0$  . We say that  $B\subseteq A$  is an  $\alpha$  -cover of  $A$  iff  $\forall a\in A$ $\exists b\in B$  such that  $d(a,b) <   \alpha$  . Now we define the covering number as

$$
\mathcal {N}_{d} (\alpha , A) := \min  \left\{\left| B \right| \mid B \text{isan} \alpha \text{-coverof} A \right\}.
$$

Let  $A \subseteq \mathcal{X}$  and  $\alpha > 0$ . We say that  $A$  is  $\alpha$ -separated if  $\forall a, b \in A, a \neq b, d(a, b) \geq \alpha$ . Define the packing number as,

$$
\mathcal {M}_{d} (\alpha , A) := \max  \left\{\left| A^{\prime} \right| \mid A^{\prime} \text{is} \alpha \text{-separated}, A^{\prime} \subseteq A \right\}.
$$

As we said, these two numbers are closely related.

Lemma 4.1. For any pseudometric space  $(\mathcal{X},d)$  and any  $A\subseteq \mathcal{X}$  and  $\alpha >0$

$$
\mathcal {M}_{d} (2 \alpha , A) \leq \mathcal {N}_{d} (\alpha , A) \leq \mathcal {M}_{d} (\alpha , A).
$$

Proof. If  $M$  is a  $2\alpha$ -separated subset of  $A$  and  $N$  is an  $\alpha$ -cover of  $A$  then  $N$  must select a point within  $\alpha$  distance of each of the points in  $M$ . These points will necessarily be distinct since points in  $M$  are at least  $2\alpha$  apart. Thus  $|M| \leq |N|$ . This proves the first half of the lemma.

If  $M$  is a maximal  $\alpha$ -separated subset of  $A$  then  $M$  has to be an  $\alpha$ -cover. Because if it is not, then there is a point  $x \in A$  such that there is no point of  $M$  within a distance of  $\alpha$  from  $x$ . In that case,  $x$  can be added to  $M$  while still keeping it  $\alpha$ -separated. This violates the maximality of  $M$ . Thus,  $\mathcal{N}_d(\alpha, A) \leq |M| = \mathcal{M}_d(\alpha, A)$ . This proves the second half of the lemma.

# 1 Introduction

This course will be divided into 2 parts. In each part we will make different assumptions about the data generating process:

Online Learning No assumptions about data generating process. Worst case analysis. Fundamental connections to Game Theory.

Statistical Learning Assume data consists of independently and identically distributed examples drawn according to some fixed but unknown distribution.

Our examples will come from some space  $\mathcal{X} \times \mathcal{Y}$ . Given a data set

$$
\left\{\left(x_{t}, y_{t}\right) \right\}_{t = 1}^{T} \in \left(\mathcal {X} \times \mathcal {Y}\right)^{T},
$$

our goal is to predict  $y_{T + 1}$  for a new point  $x_{T + 1}$ . A hypothesis is simply a function  $h: \mathcal{X} \to \mathcal{Y}$ . Sometimes, a hypothesis will map to a set  $\mathcal{D}$  (for decision space) larger than  $\mathcal{V}$ . Depending on the nature of the set  $\mathcal{V}$ , we get special cases of the general prediction problem.

Binary classification  $\mathcal{Y} = \{-1, + 1\}$

Multiclass classification  $\mathcal{V} = \{1,2,\dots ,K\} \eqqcolon [K]$  for  $K\geq 3$

Regression  $\mathcal{Y} = [-B,B]$  or  $\mathcal{Y} = \mathbb{R}$

A set of hypotheses is often called a hypotheses class. If the range of a hypothesis is  $\{-1, +1\}$  (or  $\{0, 1\}$ ) then it also called a concept. A concept can be identified with the subset of  $\mathcal{X}$  on which it is 1.

# 2 Mistake Bound Model

In this model, learning proceeds in rounds, as we see examples one by one. Suppose  $\mathcal{V} = \{-1, + 1\}$ . At the beginning of round  $t$ , the learning algorithm  $\mathcal{A}$  has the hypothesis  $h_t$ . In round  $t$ , we see  $x_{t}$  and predict  $h_t(x_t)$ . At the end of the round,  $y_{t}$  is revealed and  $\mathcal{A}$  makes a mistake if  $h_t(x_t)\neq y_t$ . The algorithm then updates its hypothesis to  $h_{t + 1}$  and this continues till time  $T$ .

Suppose the labels were actually produced by some function  $f$  in a given concept class  $\mathcal{C}$ . Then it is natural to bound the total number of mistakes the learner commits, no matter how long the sequence. To this end, define

$$
\operatorname{mistake} (\mathcal {A}, \mathcal {C}) := \max_{f \in \mathcal {C}, T, x_{1: T}} \sum_{t = 1}^{T} \mathbf {1} \left[ h_{t} \left(x_{t}\right) \neq f \left(x_{t}\right) \right].
$$

We can now define what it means for an algorithm to learn a class in the mistake bound model.

Definition 2.1. An algorithm  $\mathcal{A}$  learns a class  $\mathcal{C}$  with mistake bound  $M$  iff

$$
\operatorname{mistake} (\mathcal {A}, \mathcal {C}) \leq M.
$$

Note that we are ignoring efficiency issues here. We have not said anything about the amount of computation  $\mathcal{A}$  has to do in each round in order to update its hypothesis from  $h_t$  to  $h_{t+1}$ . Setting this issue aside for a moment, we have a remarkably simple algorithm HALVING  $(\mathcal{C})$  that has a mistake bound of  $\lg(|\mathcal{C}|)$  for any finite concept class  $\mathcal{C}$ .

For a finite set  $\mathcal{H}$  of hypotheses, define the hypothesis majority  $(\mathcal{H})$  as follows,

$$
\text{majority} (\mathcal {H}) (x) := \left\{ \begin{array}{l l} + 1 & | \{h \in \mathcal {H}   |   h (x) = + 1 \} | \geq | \mathcal {H} | / 2  , \\ - 1 & \text{otherwise}  . \end{array} \right.
$$

Algorithm 1 HALVING (C)  
$\mathcal{C}_1\gets \mathcal{C}$ $h_1\gets$  majority  $(\mathcal{C}_1)$    
for  $t = 1$  to  $T$  do Receive  $x_{t}$  Predict  $h_t(x_t)$  Receive  $y_{t}$ $\mathcal{C}_{t + 1}\gets \{f\in \mathcal{C}_t\mid f(x_t) = y_t\}$ $h_{t + 1}\gets$  majority  $(\mathcal{C}_{t + 1})$    
end for

Theorem 2.2. For any finite concept class  $\mathcal{C}$ , we have

$$
\operatorname{mistake} (\operatorname{HALVING} \left(\mathcal {C}\right), \mathcal {C})) \leq \lg | \mathcal {C} |  .
$$

Proof. The key idea is that if the algorithm makes a mistake then at least half of the hypothesis in  $\mathcal{C}_t$  are eliminated. Formally,

$$
h_{t} \left(x_{t}\right) \neq y_{t} \quad \Rightarrow \quad \left| \mathcal {C}_{t + 1} \right| \leq \left| \mathcal {C}_{t} \right| / 2.
$$

Therefore, denoting the number of mistakes up to time  $t$  by  $M_{t}$

$$
M_{t} := \sum_{t = 1}^{T} \mathbf {1} \left[ h_{t} \left(x_{t}\right) \neq y_{t} \right],
$$

we have

$$
\left| \mathcal {C}_{t + 1} \right| \leq \frac{\left| \mathcal {C}_{1} \right|}{2^{M_{t}}} = \frac{\left| \mathcal {C} \right|}{2^{M_{t}}} \tag {1}
$$

Since there is an  $f\in \mathcal{C}$  which perfectly classifies all  $x_{t}$ , we also have

$$
1 \leq | \mathcal {C}_{t + 1} |. \tag {2}
$$

Combining (1) and (2), we have

$$
1 \leq \frac{| \mathcal {C} |}{2^{M_{t}}},
$$

which gives  $M_t \leq \lg(|\mathcal{C}|)$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/3f1f3ebb-6a12-4a2a-a9ea-82bbea0d783f/96343577f932f64fb7bdae1aa952f10e92c523bcb9e6d1ef3d80fc21edce487e.jpg)

# 3 Linear Classifiers and Margin

Let us now look at a concrete example of a concept class. Suppose  $\mathcal{X} = \mathbb{R}^d$  and we have a vector  $w\in \mathbb{R}^d$ . We define the hypothesis,

$$
h_{w} (x) = \operatorname{sgn} (w \cdot x),
$$

where  $\operatorname{sgn}(z) = 2 \cdot \mathbf{1}[z \geq 0] - 1$  gives the sign of  $z$ . With some abuse of terminology, we will often speak of "the hypothesis  $w$ " when we actually mean "the hypothesis  $h_w$ ". The class of linear classifiers in the (uncountable) concept class

$$
\mathcal {C}_{\mathrm{lin}} := \left\{h_{w} \mid w \in \mathbb {R}^{d} \right\}.
$$

Note that  $w$  and  $cw$  yield the same linear classifier for any  $c > 0$ .

Suppose we have a data set that is linearly separable. That is, there is a  $w^{*}$  such that,

$$
\forall t \in [ T ], y_{t} = \operatorname{sgn} \left(w^{*} \cdot x_{t}\right). \tag {3}
$$

Separability means that  $y_{t}(w^{*}\cdot x_{t}) > 0$  for all  $t$ . The minimum value of this quantity over the data set is referred to as the margin. Let us make the assumption that the margin is at least  $\gamma$  for some  $\gamma >0$ .

Assumption M. There exists a  $w^{*}\in \mathbb{R}^{d}$  for which (3) holds. Further assume that

$$
\min_{t \in [ T ]} y_{t} \left(w^{*} \cdot x_{t}\right) \geq \gamma , \tag {4}
$$

for some  $\gamma > 0$ .

Define

$$
\left\| x_{1: t} \right\| := \max_{t \in [ T ]} \left\| x_{t} \right\|.
$$

We now show that under Assumption M, our simple halving algorithm can be used with a suitable finite subset of  $\mathcal{C}_{\mathrm{lin}}$  to derive a mistake bound. Let  $W_{\gamma}$  be those  $w$  such that  $w_{i}$  is of the form  $m\gamma / 2 \| x_{1:T} \| d$  for some

$$
m \in \left\{- \lceil 2 \| x_{1: t} \rceil \| w^{*} \rVert d / \gamma \rceil , \dots , - 1, 0, + 1, \dots , \lceil 2 \| x_{1: t} \rceil \| w^{*} \rVert d / \gamma \rceil \right\}.
$$

In other words, since each coordinate of  $w^{*}$  is in the range  $[-\| w^{*}\|, \| w^{*}\|]$ , we have discretized that interval at a scale of  $\gamma / 2\| x_{1:T}\| d$ . We want to run the halving algorithm on the (finite) concept class,

$$
\mathcal {C}_{\mathrm{lin}}^{\gamma} := \left\{h_{w} \mid w \in W_{\gamma} \right\}.
$$

The size of this class is  $\left(\lceil \frac{4\|x_{1:t}\|\|w^{*}\|d}{\gamma}\rceil +1\right)^{d}$ . Note that there exists a  $\tilde{w}\in W_{\gamma}$  such that,

$$
\forall i \in [ d ], | w_{i}^{*} - \tilde {w}_{i} | \leq \gamma / 2 \| x_{1: T} \| d.
$$

Thus, we have, for any  $t \in [T]$ ,

$$
\begin{array}{l} | y_{t} (\tilde {w} \cdot x_{t}) - y_{t} (w^{*} \cdot x_{t}) | = | \tilde {w} \cdot x_{t} - w^{*} \cdot x_{t} | \\ \leq \sum_{i = 1}^{d} | \tilde {w}_{i} - w_{i} | \cdot | x_{t, i} | \\ \leq \sum_{i = 1}^{d} \frac{\gamma}{2 \| x_{1 : T} \| d} \| x_{t} \| \\ \leq \gamma / 2. \\ \end{array}
$$

This, together with Assumption R, implies that  $y_{t}(\tilde{w}\cdot x_{t})\geq \gamma /2 > 0$ . Thus, there exists a hypothesis in  $C_\mathrm{lin}^\gamma$  that classifies the data set perfectly. Theorem 2.2 immediately gives the following corollary.

Corollary 3.1. Under Assumption  $M$ , HALVING  $(\mathcal{C}_{\mathrm{lin}}^{\gamma})$  makes at most

$$
d \lg \left(\left\lceil \frac{4 d \| x_{1 : t} \| \cdot \| w^{*} \|}{\gamma} \right\rceil + 1\right)
$$

mistakes.

This bound is nice because even though we had an uncountable concept class to begin with, the margin assumption allowed us to work with a finite subset of the concept class and we were able to derive a mistake bound. However, the result is unsatisfactory because running the halving algorithm on  $\mathcal{C}_{\mathrm{lin}}^{\gamma}$  is extremely inefficient. One might wonder if one can use the special structure of the space of linear classifiers to implement the halving algorithm more efficiently. Indeed, it possible to implement a variant of the halving algorithm efficiently using the ellipsoid method developed for the linear programming feasibility problem.

Note that the mistake bound depends explicitly on the dimension  $d$  of the problem. We would also like to be able to give a dimension independent mistake bound. Indeed, a classic algorithm called PERCEPTRON has such a mistake bound.

# 4 The Perceptron Algorithm

Algorithm 2 PERCEPTRON  
```txt
$w_{1}\gets 0$    
for  $t = 1$  to  $T$  do   
Receive  $x_{t}\in \mathbb{R}^{d}$    
Predict  $\operatorname{sgn}(w_t\cdot x_t)$    
Receive  $y_{t}\in \{-1, + 1\}$    
if  $\operatorname{sgn}(w_t\cdot x_t)\neq y_t$  then  $w_{t + 1}\leftarrow w_t + y_tx_t$    
else  $w_{t + 1}\leftarrow w_t$    
end if   
end for
```

The following theorem gives a dimension independent bound on the number of mistakes the PERCEPTRON algorithm makes.

Theorem 4.1. Suppose Assumption M holds. Let

$$
M_{T} := \sum_{t = 1}^{T} \mathbf {1} [ \operatorname{sgn} (w_{t} \cdot x_{t}) \neq y_{t} ]
$$

denote the number of mistakes the PERCEPTRON algorithm makes. Then we have,

$$
M_{T} \leq \frac{\| x_{1 : T} \|^{2} \cdot \| w^{*} \|^{2}}{\gamma^{2}}.
$$

Proof. The key idea of the proof is to look at how the quantity  $w^{*} \cdot w_{t}$  evolves over time. We first provide an lower bound for it. Define  $m_{t} = 1 \left[ \operatorname{sgn}(w_{t} \cdot x_{t}) \neq y_{t} \right]$ . Note that  $w_{t+1} = w_{t} + y_{t}x_{t}m_{t}$  and  $M_{T} = \sum_{t}m_{t}$ . We have,

$$
\begin{array}{l} w^{*} \cdot w_{t + 1} = w^{*} \cdot w_{t} + y_{t} x_{t} m_{t} \\ = w^{*} \cdot w_{t} + y_{t} \left(w^{*} \cdot x_{t}\right) m_{t} \\ \geq w^{*} \cdot w_{t} + \gamma m_{t}. \quad (\text{AssumptionM}) \\ \end{array}
$$

Unwinding the recursion, we get

$$
w^{*} \cdot w_{T + 1} \geq w^{*} \cdot w_{1} + \gamma M_{T} = \gamma M_{T}. \tag {5}
$$

Now, we use Cauchy-Schwarz inequality to get the upper bound,

$$
w^{*} \cdot w_{T + 1} \leq \| w^{*} \| \cdot \| w_{T + 1} \|. \tag {6}
$$

Moreover,

$$
\begin{array}{l} \left\| w_{t + 1} \right\|^{2} = \left\| w_{t} + y_{t} x_{t} m_{t} \right\|^{2} \\ = \| w_{t} \|^{2} + 2 y_{t} \left(w_{t} \cdot x_{t}\right) m_{t} + \| x_{t} \|^{2} m_{t} \\ \leq \left\| w_{t} \right\|^{2} + 0 + \left\| x_{1: T} \right\|^{2} m_{t}, \\ \end{array}
$$

where the last step follows because  $y_{t}(w_{t} \cdot x_{t}) < 0$  when a mistake is made and  $\| x_{t} \| \leq \| x_{1:T} \|$ . Unwinding the recursion once again, we get,

$$
\left\| w_{T + 1} \right\|^{2} \leq \left\| w_{1} \right\|^{2} + \left\| x_{1: T} \right\|^{2} M_{T} = \left\| x_{1: T} \right\|^{2} M_{T}. \tag {7}
$$

Combining (5), (6) and (7) gives,

$$
\gamma M_{T} \leq w^{*} \cdot w_{T + 1} \leq \| w^{*} \| \cdot \| w_{T + 1} \| \leq \| w^{*} \| \cdot \| x_{1: T} \| \sqrt{M_{T}}.
$$

This implies that  $M_T \leq \| w^* \|^2 \cdot \| x_{1:T} \|^2 / \gamma^2$ .

# 1 Lower Bound

Theorem 1.1. Suppose  $\mathcal{X} = \left\{x\in \mathbb{R}^d\big|\| x\| \leq 1\right\}$  and  $\frac{1}{\gamma^2}\leq d$  . Then for any deterministic algorithm, there exists a data set which is separable by a margin of  $\gamma$  on which the algorithm makes at least  $\lfloor \frac{1}{\gamma^2}\rfloor$  mistakes.

Proof. Let  $n = \left\lfloor \frac{1}{\gamma^2} \right\rfloor$ . Note that  $n \leq d$  and  $\gamma^2 n \leq 1$ . Let  $\mathbf{e}_i$  be the unit vector with a 1 in the  $i$ th coordinate and zeroes in others. Consider  $\mathbf{e}_1, \ldots, \mathbf{e}_n$ . We now claim that, for any  $b \in \{-1, +1\}^n$ , there is a  $w$  with  $\| w \| \leq 1$  such that

$$
\forall i \in [ n ], b_{i} \left(w_{i} \cdot \mathbf {e}_{i}\right) = \gamma .
$$

To see this, simply choose  $w_{i} = \gamma b_{i}$ . Then the above equality is true. Moreover,  $\| w\| ^2 = \gamma^2\sum_{i = 1}^n b_i^2 = \gamma^2 n\leq 1$

Now given an algorithm  $\mathcal{A}$ , define the data set  $\{(x_i, y_i)\}_{i=1}^n$  as follows. Let  $x_i = \mathbf{e}_i$  for all  $i$  and  $y_1 = -\mathcal{A}(x_1)$ . Define  $y_i$  for  $i > 1$  recursively as

$$
y_{i} = - \mathcal {A} \left(x_{1}, y_{1}, \dots , x_{i - 1}, y_{i - 1}, x_{i}\right).
$$

It is clear that the algorithm makes  $n$  mistakes when run on this data set. By the above claim, no matter what  $y_{i}$ 's turn out to be, the data set is separable by a margin of  $\gamma$ .

# 2 The Winnow Algorithm

Algorithm 1 WINNOW  
```txt
Input parameter:  $\eta >0$  (learning rate)   
 $w_{1}\gets \frac{1}{d}\mathbf{1}$    
for  $t = 1$  to  $T$  do   
Receive  $x_{t}\in \mathbb{R}^{d}$    
Predict  $\operatorname{sgn}(w_t\cdot x_t)$    
Receive  $y_{t}\in \{-1, + 1\}$    
if  $\operatorname{sgn}(w_t\cdot x_t)\neq y_t$  then   
 $\forall i\in [d],w_{t + 1,i}\leftarrow \frac{w_{t,i}\exp(\eta y_t x_{t,i})}{Z_t}$  where  $Z_{t} = \sum_{i = 1}^{d}w_{t,i}\exp (\eta y_{t}x_{t,i})$  else   
 $w_{t + 1}\gets w_t$    
end if   
end for
```

Theorem 2.1. Suppose Assumption M holds. Further assume that  $w^{*} \geq 0$ . Let

$$
M_{T} := \sum_{t = 1}^{T} \mathbf {1} [ \operatorname{sgn} (w_{t} \cdot x_{t}) \neq y_{t} ]
$$

denote the number of mistakes the WINNOW algorithm makes. Then, for a suitable choice of  $\eta$ , we have,

$$
M_{T} \leq \frac{2 \| x_{1 : T} \|_{\infty}^{2} \cdot \| w^{*} \|_{1}^{2}}{\gamma^{2}} \ln d.
$$

Proof. Let  $u^{*} = w^{*} / \| w^{*}\|$ . Since we assume  $w^{*} \geq 0$ ,  $u^{*}$  is a probability distribution. At all times, the weight vector  $w_{t}$  maintained by WINNOW is also a probability distribution. Let us measure the progress of the algorithm by analyzing the relative entropy between these two distributions at time  $t$ . Accordingly, define

$$
\Phi_{t} := \sum_{i = 1}^{d} u_{i}^{*} \ln \frac{u_{i}^{*}}{w_{t , i}}.
$$

When there is no mistake  $\Phi_{t + 1} = \Phi_t$ . On a round when a mistake occurs, we have

$$
\begin{array}{l} \Phi_{t + 1} - \Phi_{t} = \sum_{i = 1}^{d} u_{i}^{*} \ln \frac{w_{t , i}}{w_{t + 1 , i}} \\ = \sum_{i = 1}^{d} u_{i}^{*} \ln \frac{Z_{t}}{\exp (\eta y_{t} x_{t , i})} \\ = \ln (Z_{t}) \sum_{i = t}^{d} u_{i}^{*} - \eta y_{t} \sum_{i = 1}^{d} u_{i}^{*} x_{t, i} \\ = \ln \left(Z_{t}\right) - \eta y_{t} \left(u^{*} \cdot x_{t}\right) \\ \leq \ln \left(Z_{t}\right) - \eta \gamma / \| w^{*} \|_{1}, \tag {1} \\ \end{array}
$$

where the last inequality follows from the definition of  $u^{*}$  and Assumption M. Let  $L = \| x_{1:T}\|_{\infty}$ . Then  $y_{t}x_{t,i}\in [-L,L]$  for all  $t,i$ . Then we can bound

$$
Z_{t} = \sum_{i = 1}^{d} w_{t, i} e^{\eta y_{t} x_{t, i}}
$$

using the convexity of the function  $t \mapsto e^{\eta t}$  on the interval  $[-L, L]$  as follows.

$$
\begin{array}{l} Z_{t} \leq \sum_{i = 1}^{d} \frac{1 + y_{t} x_{t , i} / L}{2} e^{\eta L} + \frac{1 - y_{t} x_{t , i} / L}{2} e^{- \eta L} \\ = \frac{e^{\eta L} + e^{- \eta L}}{2} \sum_{i = 1}^{d} w_{t, i} + \frac{e^{\eta L} - e^{- \eta L}}{2} \left(y_{t} \sum_{i = 1}^{d} w_{t, i} x_{t, i}\right) \\ = \frac{e^{\eta L} + e^{- \eta L}}{2} + \frac{e^{\eta L} - e^{- \eta L}}{2} y_{t} (w_{t} \cdot x_{t}) \\ \leq \frac{e^{\eta L} + e^{- \eta L}}{2} \\ \end{array}
$$

because having a mistake implies  $y_{t}(w_{t}\cdot x_{t})\leq 0$  and  $e^{\eta L} - e^{-\eta L} > 0$ . So we have proved

$$
\ln \left(Z_{t}\right) \leq \ln \left(\frac{e^{\eta L} + e^{- \eta L}}{2}\right). \tag {2}
$$

Define

$$
C (\eta) := \eta \gamma / \| w^{*} \|_{1} - \ln \left(\frac{e^{\eta L} + e^{- \eta L}}{2}\right).
$$

Combining (1) and (2) then gives us

$$
\Phi_{t + 1} - \Phi_{t} \leq - C (\eta) \mathbf {1} \left[ y_{t} \neq \operatorname{sgn} \left(w_{t} \cdot x_{t}\right) \right].
$$

Unwinding the recursion gives,

$$
\Phi_{T + 1} \leq \Phi_{1} - C (\eta) M_{T}.
$$

Since relative entropy is always non-negative  $\Phi_{T + 1}\geq 0$ . Further,

$$
\Phi_{1} = \sum_{i = 1}^{d} u_{i}^{*} \ln \left(d u_{i}^{*}\right) \leq \sum_{i = 1}^{d} u_{i}^{*} \ln d = \ln d
$$

which gives us

$$
0 \leq \ln d - C (\eta) M_{T}
$$

and therefore  $M_T \leq \frac{\ln d}{C(\eta)}$ . Setting

$$
\eta = \frac{1}{2 L} \ln \left(\frac{L + \gamma / \| w^{*} \|_{1}}{L - \gamma / \| w^{*} \|_{1}}\right)
$$

to maximize the denominator  $C(\eta)$  gives

$$
M_{T} \leq \frac{\ln d}{g \left(\frac{\gamma}{L \| w^{*} \|_{1}}\right)}
$$

where  $g(\epsilon) \coloneqq \frac{1 + \epsilon}{2} \ln (1 + \epsilon) + \frac{1 - \epsilon}{2} \ln (1 - \epsilon)$ . Finally, noting that  $g(\epsilon) \geq \epsilon^2 / 2$  proves the theorem.

# 1 Learning Generalized Linear Models

Algorithm 1 GLM-tron  
Input: function  $u(\cdot)$ $w_{1}:= 0$   
for  $t = 1,2,\ldots \mathbf{do}$ $\hat{y}_t\coloneqq u(w_t\cdot x);$ $w_{t + 1}\coloneqq w_t + (y_t - \hat{y}_t)x_t;$   
end for

To analyze the performance of the algorithm, we show that if we run the algorithm for sufficiently many iterations, one of the predictors  $h_t$  obtained must be nearly-optimal, compared to the Bayes-optimal predictor.

Theorem 1.1. Suppose the sequence  $(x_{1},y_{1}),(x_{2},y_{2}),\ldots$  satisfy, for all  $t$ :

$\| x_t\|^2 \leq 1$  and  $y_{t} \in [0,1]$  
-  $u: \mathbb{R} \to [0,1]$  is a known non-decreasing 1-Lipschitz function  
- there exists a  $w$  such that  $y_{t} = u(w \cdot x_{t})$ .

Then GLM-tron satisfies:

$$
\sum_{t = 1}^{\infty} \left(y_{t} - \hat {y}_{t}\right)^{2} \leq \| w \|^{2}
$$

The proof is based on the following lemma:

Lemma 1.2. At iteration  $t$  in GLM-tron,

$$
\left\| w_{t} - w \right\|^{2} - \left\| w_{t + 1} - w \right\|^{2} \geq \left(y_{t} - \hat {y}_{t}\right)^{2}
$$

Proof. We have

$$
\left\| w_{t} - w \right\|^{2} - \left\| w_{t + 1} - w \right\|^{2} = 2 \left(y_{t} - \hat {y}_{t}\right) \left(w \cdot x_{t} - w_{t} \cdot x_{t}\right) - \left\| \left(y_{t} - \hat {y}_{t}\right) x_{t} \right\|^{2}. \tag {1}
$$

Consider the first term above,

$$
\frac{2}{m} \sum_{i = 1}^{m} \left(y_{t} - \hat {y}_{t}\right) \left(w \cdot x_{t} - w_{t} \cdot x_{t}\right) = 2 \left(u \left(w \cdot x_{t}\right) - u \left(w_{t} \cdot x_{t}\right)\right) \left(w \cdot x_{t} - w_{t} \cdot x_{t}\right)
$$

Using that  $u$  is non-decreasing and 1-Lipschitz, we have:

$$
2 \left(u \left(w \cdot x_{t}\right) - u \left(w_{t} \cdot x_{t}\right)\right) \left(w \cdot x_{t} - w_{t} \cdot x_{t}\right) \geq 2 \left(u \left(w \cdot x_{t}\right) - u \left(w_{t} \cdot x_{t}\right)\right)^{2} = 2 \left(y_{t} - \hat {y}_{t}\right)^{2}. \tag {2}
$$

To justify this step, consider the case where  $w \cdot x_{t} > w_{t} \cdot x_{t}$ . We then have (using that  $u$  is non-decreasing and 1-Lipschitz)

$$
0 \leq u \left(w \cdot x_{t}\right) - u \left(w_{t} \cdot x_{t}\right) \leq \left| w \cdot x_{t} - w_{t} \cdot x_{t} \right| = w \cdot x_{t} - w_{t} \cdot x_{t}
$$

The case where  $w \cdot x_{t} > w_{t} \cdot x_{t}$  is identical.

For the second term in (4), we have

$$
\left\| \left(y_{t} - \hat {y}_{t}\right) x_{t} \right\|^{2} = \left(y_{t} - \hat {y}_{t}\right) \| x_{t} \|^{2} \leq \left(y_{t} - \hat {y}_{t}\right)^{2} \tag {3}
$$

which completes the proof.

Hence, we have that:

$$
\sum_{t = 1}^{T} \left(y_{t} - \hat {y}_{t}\right)^{2} \leq \left\| w^{1} - w \right\|^{2} - \left\| w_{T + 1} - w \right\|^{2} \leq \| w \|^{2}
$$

which completes the proof.

# 2 Isotonic Regression and the PAV algorithm

The Pool Adjacent Violators (PAV) algorithm is finds the best monotonic one dimensional fit for  $(\hat{z}_1, y_1), (\hat{z}_2, y_2), \ldots, (\hat{z}_m, y_m)$ , where the  $z_i$  and  $y_i$ 's are real. Precisely,

$$
\operatorname{PAV} \left(\left(\hat {z}_{1}, y_{1}\right), \left(\hat {z}_{2}, y_{2}\right), \dots \left(\hat {z}_{m}, y_{m}\right)\right) = \arg \min_{\text{nondecreasingfunctions} f} \frac{1}{m} \sum_{i = 1}^{m} \left(y_{i} - f \left(z_{i}\right)\right)^{2}
$$

If  $u$  is returned by PAV, then it satisfies the following calibration property for any  $y \in \mathbb{R}$

$$
\sum_{i \text{s .t .} u (z_{i}) = y} (y_{i} - z) = 0
$$

In other words, wherever the function  $u$  is constant (say when  $u$  is  $y$ ) then this constant must be the average of all  $y_i$  where  $u(z_i) = y$ . If this were not the case, note that we could slightly shift the function at  $y$  without breaking the monotonicity property so that the square error is decreased.

With this observation the PAV algorithm can be implemented in  $O(m \log m)$  time. The algorithm first sorts the  $z_i$ 's. Now the algorithm partitions the data into "pools", where the function value is constant in each pool. Initially, each point belongs to its own pools. If the function is non-monotonic, then any two pools violating the monotonicity property can be merged (and the function value  $u$  is the average of the points within the pool).

# 3 (Batch) Learning of Single Linear Models

Now suppose that  $u$  is not known.

Here PAV is the isotonic regression algorithm (the "Pool Adjacent Violator" algorithm). It finds the best 1-dimensional non-decreasing function (with respect to the square loss).

# Algorithm 2 Isotron

$$
\textbf {I n p u t :} \left. \left. \langle \left(x_{i}, y_{i}\right) \right\rangle_{i = 1}^{m}. \right.
$$

$$
w^{1} := 0;
$$

$$
\mathbf {f o r} t = 1, 2, \dots \mathbf {d o}
$$

$$
u_{t} := \operatorname{PAV} \left(\left(w_{t} \cdot x_{1}, y_{1}\right), \dots , \left(w_{t} \cdot x_{m}, y_{m}\right)\right)
$$

$$
\text{Forall} i, \text{set} \hat {y}_{t, i} := u_{t} \left(w_{t} \cdot x_{i}\right)
$$

$$
w_{t + 1} := w_{t} + \frac{1}{m} \sum_{i = 1}^{m} \left(y_{i} - \hat {y}_{t, i}\right) x_{i}
$$

end for

Theorem 3.1. (Isotron algorithm for unknown  $u$ ) Define the loss on the dataset as:

$$
\hat {L} \left(u_{t}, w_{t}\right) = \frac{1}{m} \sum_{i = 1}^{m} \left(y_{i} - u_{t} \left(w_{t} \cdot x_{i}\right)\right)^{2}
$$

Suppose the dataset data  $\langle (x_i, y_i) \rangle_{i=1}^m$  satisfy for all  $t$ :

-  $\left\| x_{i}\right\|^{2} \leq 1$  and  $y_{i} \in [0,1]$  for  $i = 1,2,\ldots,m$ .  
-  $u: \mathbb{R} \to [0,1]$  is a non-decreasing 1-Lipschitz function.  
- There exists a  $w$  such that  $y_{i} = u(w \cdot x_{i})$  for  $i = 1,2,\ldots,m$ .

Then Isotron satisfies:

$$
\sum_{t = 1}^{\infty} \hat {L} (u_{t}, w_{t}) \leq \| w \|^{2}
$$

The following corollary shows how this results in a batch optimization algorithm.

Corollary 3.2. (Optimization) For any iteration  $T$ , we have:

$$
\frac{1}{T} \sum_{t = 1}^{\infty} \hat {L} (u_{t}, w_{t}) \leq \frac{\| w \|^{2}}{T}
$$

So there exists a  $t \leq T$  such that:

$$
\hat {L} (u_{t}, w_{t}) \leq \frac{\| w \|^{2}}{T}
$$

(and this hypothesis can be found by explicitly computing  $\hat{L}(u_t, w_t)$  for each  $t \leq T$ ).

The following lemma is useful

Lemma 3.3. At iteration  $t$  in Isotron,

$$
\left\| w_{t} - w \right\|^{2} - \left\| w_{t + 1} - w \right\|^{2} \geq \hat {L} (u_{t}, w_{t})
$$

Proof. Let  $v$  be any inverse of  $u$  (this  $v$  may not be unique and we choose one arbitrarily).

We have

$$
\left\| w_{t} - w \right\|^{2} - \left\| w_{t + 1} - w \right\|^{2} = \frac{2}{m} \sum_{i = 1}^{m} \left(y_{i} - \hat {y}_{t, i}\right) \left(w \cdot x_{i} - w_{t} \cdot x_{i}\right) - \left\| \frac{1}{m} \sum_{i = 1}^{m} \left(y_{i} - \hat {y}_{t, i}\right) x_{i} \right\|^{2}. \tag {4}
$$

Consider the first term above,

$$
\frac{2}{m} \sum_{i = 1}^{m} (y_{i} - \hat {y}_{t, i}) (w \cdot x_{i} - w_{t} \cdot x_{i}) = \frac{2}{m} \sum_{i = 1}^{m} (y_{i} - \hat {y}_{t, i}) (w \cdot x_{i} - v (\hat {y}_{t, i})) + \frac{2}{m} \sum_{i = 1}^{m} (y_{i} - \hat {y}_{t, i}) (v (\hat {y}_{t, i}) - w_{t} \cdot x_{i})
$$

By the same argument as in the proof of GLM-tron (using that  $u = v^{-1}(\cdot)$  is non-decreasing and 1-Lipschitz), we have that for the first term above:

$$
\begin{array}{l} \frac{2}{m} \sum_{i = 1}^{m} (y_{i} - \hat {y}_{t, i}) (w \cdot x_{i} - v (\hat {y}_{t, i})) \geq \frac{2}{m} \sum_{i = 1}^{m} (y_{i} - \hat {y}_{t, i}) (u (w \cdot x_{i}) - u (v (\hat {y}_{t, i}))) \\ = \frac{2}{m} \sum_{i = 1}^{m} \left(y_{i} - \hat {y}_{t, i}\right)^{2} \\ = 2 \hat {L} \left(u_{t}, w_{t}\right) \\ \end{array}
$$

We also have that:

$$
\frac{2}{m} \sum_{i = 1}^{m} \left(y_{i} - \hat {y}_{t, i}\right) v \left(\hat {y}_{t, i}\right) = 0 \tag {5}
$$

and

$$
\frac{2}{m} \sum_{i = 1}^{m} \left(y_{i} - \hat {y}_{t, i}\right) w_{t} \cdot x_{i} \leq 0 \tag {6}
$$

Equation 5 follows from the calibration property. To see this, consider those  $i$  for which  $\hat{y}_{t,i} = y$  (for some arbitrary  $y$ ). The sum over these  $i$  is 0. Hence, the sum over all  $i$  is 0. For Equation 6, recall that  $u_{t}(\cdot)$  is the output of the isotonic regression, e.g.  $u_{t} = \mathrm{PAV}\left((w_{t}\cdot x_{1},y_{1}),\ldots ,(w_{t}\cdot x_{m},y_{m})\right)$ . Note that  $u_{t}(\cdot) + \alpha \mathrm{I}(\cdot)$  is also an increasing function when  $\alpha >0$  and  $\mathrm{I}(\cdot)$  is the identity function. Equation 6 is just the first derivative condition that for  $\alpha >0$  note that  $u_{t}(\cdot) + \alpha \mathrm{I}(\cdot)$  (for  $\alpha >0$ ) does not have lower square loss than  $u_{t}(\cdot)$ . In other words, if Equation 6 did not hold, then note that this would imply that for a sufficiently small  $\alpha >0$ , the function  $u(\cdot) + \alpha \mathrm{I}(\cdot)$  would be a better monotonic function for the data  $(w_{t}\cdot x_{1},y_{1}),\ldots ,(w_{t}\cdot x_{m},y_{m}))$ , which violates the optimality of PAV.

For the second term in (4), Jensen's inequality implies

$$
\left\| \frac{1}{m} \sum_{i = 1}^{m} \left(y_{i} - \hat {y}_{t, i}\right) x_{i} \right\|^{2} \leq \frac{1}{m} \sum_{i = 1}^{m} \| \left(y_{i} - \hat {y}_{t, i}\right) x_{i} \|^{2} = \frac{1}{m} \sum_{i = 1}^{m} \left(y_{i} - \hat {y}_{t, i}\right)^{2} \| x_{i} \|^{2} \leq \hat {L} \left(u_{t}, w_{t}\right) \tag {7}
$$

which completes the proof.

For the proof of the theorem, we have that (for all  $T$ ):

$$
\sum_{t}^{T} \hat {L} \left(u_{t}, w_{t}\right) \leq \left\| w^{1} - w \right\|^{2} - \left\| w_{T + 1} - w \right\|^{2} \leq \| w \|^{2}
$$

which completes the proof.

# Online Convex Programming and Gradient Descent

Instructor: Sham Kakade

# 1 Online Convex Programming

The online convex programming problem is a sequential paradigm where at each round the learner chooses decisions from a convex feasible set  $D \subset \mathbb{R}^d$ . In this problem, at each round  $t$ :

1. the learner chooses a decision  $w_{t}\in D$ , where  $D$  is a convex subset of  $\mathbb{R}^d$ .  
2. nature chooses a convex cost function in  $c_t: D \to \mathbb{R}$ .  
3. the learner incurs the cost  $c_{t}(w_{t})$ , and the cost function  $c_{t}(\cdot)$  is revealed to the algorithm.

Crucially, the algorithm learns  $c_t$  only after the decision  $w_t$  is chosen. Hence at time  $t$ , the algorithm has knowledge of the previous functions,  $\{c_1(\cdot), \dots, c_{t-1}(\cdot)\}$ . Importantly, no statistical assumptions on the sequence of convex functions are made — they should be thought of as an arbitrary sequence unknown apriori to the algorithm.

If algorithm  $A$  uses the sequence of decisions

$$
\left\{w_{1}, \dots , w_{T} \right\}
$$

on the sequence

$$
\left\{c_{1}, \dots , c_{T} \right\},
$$

then  $A$  has regret, at time  $T$  in comparison to the best constant decision, defined as:

$$
R_{T} (A) = \sum_{t = 1}^{T} c_{t} \left(w_{t}\right) - \inf_{w \in D} \sum_{t = 1}^{T} c_{t} (w)
$$

We are interested in algorithms with little regret.

# 1.1 Online Gradient Descent

The simplest algorithm to consider here is the gradient descent algorithm. There are two issues we must address. First, we must ensure our decisions are always in the feasible set  $D$ . The second is that the gradient may not be defined.

To address, the later issue, we work with a subgradient. A subgradient  $\nabla c(w)$  of a convex function  $c(\cdot)$  at  $w$  satisfies, for all  $w' \in D$

$$
c \left(w^{\prime}\right) - c (w) \geq \nabla c (w) \cdot \left(w^{\prime} - w\right)
$$

A subgradient always exists for a convex function, though it may not be unique.

Define the Online Gradient Descent algorithm (GD) with fixed learning rate  $\eta$  is as follows: at  $t = 1$ , select any  $w_{1} \in D$ , and update the decision as follows

$$
w_{t + 1} = \Pi_{D} \left[ w_{t} - \eta \nabla c_{t} \left(w_{t}\right) \right]
$$

where  $\Pi_D[w]$  is the projection of  $w$  back into  $D$ , i.e. it is the closest point (under the  $L_2$  norm) in  $D$  to  $w$ . More formally:

$$
\Pi_{D} [ w ] \in \arg \min_{w^{\prime} \in D} | | w - w^{\prime} | |_{2}
$$

Hence,  $w_{t + 1}\in D$

Theorem 1.1. Assume that  $D$  is convex, closed, non-empty, and bounded. In particular, there exists a constant  $D_2$  such for all  $w, w' \in D$ ,

$$
\left| \left| w - w^{\prime} \right| \right|_{2} \leq D_{2}
$$

Also, assume that for all times  $t$ , that

$$
\left| \left| \nabla c_{t} \left(w_{t}\right) \right| \right|_{2} \leq G_{2}
$$

If we set  $\eta = \frac{D_2}{G_2}\sqrt{\frac{1}{T}}$ , then for all sequences of convex functions  $\{c_1, \ldots, c_T\}$

$$
R_{T} (G D) \leq D_{2} G_{2} \sqrt{T}
$$

Note that there is no explicit dimensionality dependence.

We now provide the proof. Throughout, let  $\nabla_t = \nabla c_t(w_t)$ . Let  $w^*$  be a minimizer of  $\sum_{t}^{T}c_{t}(w)$  (which exists since  $D$  is closed and convex). By convexity, we have

$$
R_{T} (A) = \sum_{t = 1}^{T} \left(c_{t} \left(w_{t}\right) - c_{t} \left(w^{*}\right)\right) \leq \sum_{t = 1}^{T} \nabla_{t} \cdot \left(w_{t} - w^{*}\right)
$$

Now we appeal to the following Lemma.

Lemma 1.2. Let  $w^{*}$  be an arbitrary point in  $D$ . The decisions of  $GD$  algorithm satisfy:

$$
\sum_{t = 1}^{T} \nabla_{t} \cdot \left(w_{t} - w^{*}\right) \leq \frac{1}{2 \eta} D_{2}^{2} + \frac{\eta}{2} G_{2}^{2} T
$$

Proof. A fundamental property of projections into convex bodies is that for an arbitrary  $w' \in \mathbb{R}^d$ , we have for all  $w \in D$ :

$$
\left| \left| \Pi_{D} \left[ w^{\prime} \right] - w \right| \right|_{2}^{2} \leq \left| \left| w^{\prime} - w \right| \right|_{2}^{2}
$$

Using the notation that  $||\cdot ||$  refers to the  $L_{2}$  norm:

$$
\begin{array}{l} \left| \left| w_{t} - w^{*} \right| \right|^{2} - \left| \left| w_{t + 1} - w^{*} \right| \right|^{2} = \left| \left| w_{t} - w^{*} \right| \right|^{2} - \left| \left| \Pi_{D} \left[ w_{t} - \eta \nabla_{t} \right] - w^{*} \right| \right|^{2} \\ \geq | | w_{t} - w^{*} | |_{2}^{2} - | | w_{t} - \eta \nabla_{t} - w^{*} | |_{2}^{d} \\ = 2 \eta \nabla_{t} \cdot \left(w_{t} - w^{*}\right) - \eta^{2} \| \nabla_{t} \|_{2}^{2} \\ \end{array}
$$

and so

$$
\nabla_{t} \cdot \left(w_{t} - w^{*}\right) \leq \frac{1}{2 \eta} \left(\left\| w_{t} - w^{*} \right\|^{2} - \left\| w_{t + 1} - w^{*} \right\|^{2}\right) + \frac{\eta}{2} G_{2}^{2}
$$

using the definition of  $G_{2}$ . Summing over  $t$

$$
\begin{array}{l} \sum_{t = 1}^{T} \nabla_{t} \cdot \left(w_{t} - w^{*}\right) \leq \frac{1}{2 \eta} \left(\left\| w_{1} - w^{*} \right\|^{2} - \left\| w_{T + 1} - w^{*} \right\|^{2}\right) + \frac{\eta}{2} G_{2}^{2} T \\ \leq \frac{1}{2 \eta} D_{2}^{2} + \frac{\eta}{2} G_{2}^{2} T \\ \end{array}
$$

which completes the proof.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/3f1f3ebb-6a12-4a2a-a9ea-82bbea0d783f/a253ade3319e209c244a7b7306ffcb1217f39edba1cd8dc43c85ca83f7ff93f3.jpg)

# Exponentiated Gradient Descent

Instructor: Sham Kakade

# 1 Exponentiated Gradient Descent

Now assume the decision space  $D$  is a  $d$ -dimensional simplex, i.e.

$$
D = \{w | w_{i} \geq 0 \text{and} \| w \|_{1} = 1 \}
$$

The Exponentiated Gradient Descent algorithm (EG) is defined as follows: at time  $t = 1$ , choose  $w_{1}$  as the center point of this scaled simplex, namely  $w_{1,i} = \frac{1}{d}$ , and then use the update:

$$
\forall i \in [ d ], w_{t + 1, i} = \frac{w_{t , i} \exp \left(- \eta \left[ \nabla c_{t} \left(w_{t}\right) \right]_{i}\right)}{Z_{t}} \tag {1}
$$

where

$$
Z_{t} = \sum_{i} w_{t, i} [ \nabla c_{t} (w_{t}) ]_{i}.
$$

Here,  $[\cdot]_i$  denotes the  $i$ th component of a vector. The division by  $Z_t$  serves as a form of normalization, so that  $w_{t+1} \in D$ , i.e.  $||w_{t+1}||_1 = 1$ .

We now state the guarantee of EG.

Theorem 1.1. Assume that  $D$  is a simplex and assume that gradient is bounded as follows:

$$
| | \nabla c_{t} (w_{t}) | |_{\infty} \leq G_{\infty}
$$

where  $||u||_{\infty} = \max_i |u_i|$  is the  $L_{\infty}$  norm. If  $\eta = \frac{1}{G_{\infty}} \sqrt{\frac{\log d}{T}}$ , the regret of  $EG$  at time  $T$  bounded as:

$$
R_{T} (E G) \leq 2 G_{\infty} \sqrt{T \log d}
$$

Now consider the decision space  $D$  to be a (scaled)  $d$ -dimensional simplex, i.e.

$$
D = \{w | w_{i} \geq 0 \text{and} \| w \|_{1} = D_{1} \}
$$

EG is modified as follows: at time  $t = 1$ , choose  $w_{1}$  as the center point of this scaled simplex, namely  $w_{1,i} = \frac{D_1}{d}$ , and then use the update:

$$
w_{t + 1, i} = \frac{w_{t , i} \exp \left(- \eta [ \nabla c_{t} (w_{t}) ]_{i}\right)}{Z_{t}}
$$

where

$$
Z_{t} = \frac{1}{D_{1}} \sum_{i} w_{t, i} [ \nabla c_{t} (w_{t}) ]_{i}.
$$

Again, the division by  $Z$  serves as a form of normalization, so that  $w_{t + 1} \in D$ , i.e.  $||w_{t + 1}||_1 = D_1$ .

The guarantee is now:

Theorem 1.2. Assume that  $D$  is a (scaled) simplex as defined above and assume that gradient is bounded as follows:

$$
\left| \left| \nabla c_{t} \left(w_{t}\right) \right| \right|_{\infty} \leq G_{\infty}
$$

where  $||u||_{\infty} = \max_i |u_i|$  is the  $L_{\infty}$  norm. If  $\eta = \frac{1}{D_1G_{\infty}}\sqrt{\frac{\log d}{T}}$ , the regret of  $EG$  at time  $T$  bounded as:

$$
R_{T} (E G) \leq 2 D_{1} G_{\infty} \sqrt{T \log d}
$$

Note that the statement uses the dual norms  $L_{1} / L_{\infty}$  rather than  $L_{2} / L_{2}$ . Hence, when  $D_{1}G_{\infty}$  is  $O(p)$  (where  $p$  is the number of "relevant" dimensions), this bound is only logarithmic in the total number of dimensions.

We now provide the proof using the following Lemma. The theorem follows using the learning rate specified and by verifying that the technical condition on the learning rate  $(\eta \leq \frac{1}{G_{\infty}})$  is satisfied.

Lemma 1.3. Let  $w^{*}$  be an arbitrary point in  $D$ , where  $D$  is the simplex. If  $\eta \leq \frac{1}{G_{\infty}}$ , then

$$
\sum_{t = 1}^{T} \nabla_{t} \cdot \left(w_{t} - w^{*}\right) \leq \frac{K L \left(w^{*} \mid \mid w_{1}\right)}{\eta} + \eta G_{\infty}^{2} T.
$$

Proof. We can interpret  $w \in D$  as a probability distribution. First, it is straightforward to prove that  $\exp(x) \leq 1 + x + x^2$ , if  $x \leq 1$ . Let us examine how the KL-distance changes with respect to  $w^*$ .

$$
\begin{array}{l} K L (w^{*} | | w_{t}) - K L (w^{*} | | w_{t + 1}) = \sum_{i} w_{i}^{*} \log \frac{w_{t + 1 , i}}{w_{t , i}} \\ = \sum_{i} w_{i}^{*} (- \eta \nabla_{t, i} - \log (Z)) \\ = - \eta w^{*} \cdot \nabla_{t} - \log (Z) \\ \end{array}
$$

Now let us use that  $\exp (x)\leq 1 + x + x^2$  for  $x\leq 1$  to upper bound  $\log (Z)$ . Note that  $\eta \nabla_{t,i}\leq 1$  since  $\eta \leq \frac{1}{G_{\infty}}$ .

$$
\begin{array}{l} \log (Z) = \log \sum_{i} w_{t, i} \exp (- \eta \nabla_{t, i}) \\ \leq \log \sum_{i} w_{t, i} (1 - \eta \nabla_{t, i} + \eta^{2} \nabla_{t, i}^{2}) \\ = \log (1 - \eta w_{t} \cdot \nabla_{t} + \eta^{2} \sum_{i} w_{t, i} \nabla_{t, i}^{2}) \\ \leq \log \left(1 - \eta w_{t} \cdot \nabla_{t} + \eta^{2} G_{\infty}^{2}\right) \\ {\leq} {- \eta w_{t} \cdot \nabla_{t} + \eta^{2} G_{\infty}^{2}} \\ \end{array}
$$

Combining these two we have:

$$
K L \left(w^{*} \mid \mid w_{t}\right) - K L \left(w^{*} \mid \mid w_{t + 1}\right) \geq - \eta w^{*} \cdot \nabla_{t} + \eta w_{t} \cdot \nabla_{t} - \eta^{2} G_{\infty}^{2}
$$

and so

$$
\nabla_{t} \cdot \left(w_{t} - w^{*}\right) \leq \frac{1}{\eta} \left(K L \left(w^{*} \mid \mid w_{t}\right) - K L \left(w^{*} \mid \mid w_{t + 1}\right)\right) + \eta G_{\infty}^{2}
$$

Summing we have:

$$
\sum_{t = 1}^{T} \nabla_{t} \cdot \left(w_{t} - w^{*}\right) \leq \frac{1}{\eta} \left(K L \left(w^{*} | | w_{1}\right) - K L \left(w^{*} | | w_{T + 1}\right)\right) + \eta G_{\infty}^{2} T
$$

For the uniform distribution  $KL(w^{*}||w_{1})\leq \log d$  , which leads to:

$$
\sum_{t = 1}^{T} \nabla_{t} \cdot (w_{t} - w^{*}) \leq \frac{K L (w^{*} | | w_{1})}{\eta} + \eta G_{\infty}^{2} T
$$

For the case where  $D$  is a scaled simplex, we can complete the proof by rescaling by  $D_{1}$ .

# 2 Applications of Online Convex Programming

# 2.1 Optimization

Consider the case where we wish to optimize a convex function  $c(\cdot)$  over a convex domain  $D$ . Let us run the GD algorithm, where at each time step:

$$
c_{t} = c
$$

Hence, we have the guarantee that:

$$
R_{T} (G D) = \sum_{t = 1}^{T} c \left(w_{t}\right) - \inf_{w \in D} \sum_{t = 1}^{T} c (w) \leq D_{2} G_{2} \sqrt{T}
$$

where  $G_{2}$  is a bound on the  $L_{2}$  norm of the derivative of  $c(\cdot)$ .

This implies that:

$$
\frac{1}{T} \sum_{t = 1}^{T} c (w_{t}) - c (w^{*}) \leq \frac{D_{2} G_{2}}{\sqrt{T}}
$$

And by convexity we have:

$$
c \left(\frac{1}{T} \sum_{t = 1}^{T} w_{t}\right) \leq \frac{1}{T} \sum_{t = 1}^{T} c (w_{t})
$$

so:

$$
c \left(\frac{1}{T} \sum_{t = 1}^{T} w_{t}\right) - c (w^{*}) \leq \frac{D_{2} G_{2}}{\sqrt{T}}
$$

Hence, as an optimization procedure, it is sufficient to run this algorithm for  $O\left(\frac{1}{\epsilon^2}\right)$  steps to get an  $\epsilon$  near optimal solution.

# 2.2 Prediction with Expert Advice

In the 'experts' setting, our Decision space is  $[k]$ . At every round, each of the  $k$  experts provides us with a 'suggestion' and we choose to follow one expert. If we follow expert  $i$  at time  $t$ , we suffer loss  $l_{t,i}$ . As before, we do not know the loss function in advance, but once we choose our expert, we learn the full loss vector  $l_t$ .

Without a randomized strategy, it is straightforward to show that the regret must be  $\omega (T)$  for some problem.

With randomization, our decision space is now a probability distribution over  $[k]$ .

We can view our expected loss as:

$$
c_{t} (w) = w \cdot l_{t}
$$

The EG algorithm, referred to as 'Hedge' for this case is: at time  $t = 1$ , choose  $w^1$  as the uniform distribution, and then use the update:

$$
w_{t + 1} = \frac{w_{t} \otimes \exp (- \eta l_{t})}{Z} \quad \text{where} \quad Z = w_{t} \cdot \exp (- \eta l_{t})
$$

From the guarantees of EG, we have that:

Corollary 2.1. Assume that the losses are bounded in  $[0,1]$ , i.e.  $l_{t,i} \in [0,1]$ . Let  $w^{*}$  be an arbitrary distribution. If  $\eta \leq 1$ , then the expected performance of hedge is bounded as follows:

$$
\sum_{t = 1}^{T} \mathbb {E} \left[ l_{t, i_{t}} \right] - \sum_{t = 1}^{T} w^{*} \cdot l_{t} \leq \frac{K L \left(w^{*} \mid \mid w_{1}\right)}{\eta} + \eta T.
$$

where  $i_t$  is random variable for the decision chosen at time  $t$ .

Hence, if we set the learning rate as  $\eta = \frac{1}{\sqrt{\log dT}}$ , we have that:

$$
\sum_{t = 1}^{T} \mathbb {E} \left[ l_{t, i_{t}} \right] - \inf_{i} \sum_{t = 1}^{T} \cdot l_{t, i} \leq 2 \sqrt{T \log d}.
$$

# 2.3 Lower Bounds

We won't formalize a lower bound. However, note that if there is the experts loss are coming from some distribution  $\ell_t \sim P$ , where the distribution  $P$  does not change over time, then there are distributions where it takes  $\sqrt{T \log d}$  just to identify the best expert.

# Online to Batch Conversions

Instructor: Sham Kakade

# 1 Using Online Algorithms in a Batch Setting

We have recently been studying the case where have a training set  $T$  generated from an underlying distribution and our goal is to find some good hypothesis, with respect to the true underlying distribution, using the training set  $T$ . We now examine how to use online learning algorithms (which work on individual, arbitrary sequences) in a stochastic setting.

Let us consider the training set  $T$  as the ordered sequence:

$$
T = \left\{\left(X_{1}, Y_{1}\right), \dots , \left(X_{m}, Y_{m}\right) \right\}
$$

and let us run an online learning algorithm on this sequence. In particular, let us say that each round  $t$  our algorithm chooses some  $\theta \in \Theta$  and we suffer loss  $\ell(\theta; (x_i, y_i))$ . Here, the decision space/parameter space  $\Theta$  could be the space corresponding to the parameterization of our hypothesis class. The regret of our algorithm on the sequence is defined as:

$$
R_{T} = \sum_{i = 1}^{m} \ell \left(\theta_{i}; \left(x_{i}, y_{i}\right)\right) - \inf_{\theta \in \Theta} \sum_{i = 1}^{m} \ell \left(\theta ; \left(x_{i}, y_{i}\right)\right)
$$

Previously, we studied algorithms which provides bounds for this regret on arbitrary sequences  $T$ .

Now if we use an online algorithm on a sequence  $T$ , then we would like to use the algorithms behavior to find a hypothesis that is good with respect to the distribution.

# 2 Martingales

A stochastic process  $X_{1},X_{2},\ldots X_{m}$  is a martingale if  $\mathbb{E}\left[|X_i|\right]\leq \infty$  and:

$$
\mathbb {E} \left[ X_{i} \mid X_{1}, \dots X_{i - 1} \right] = X_{i - 1}
$$

If we have a filtration  $\{H_i\}$  (think of this like a "history") where  $X_{i}$  is measurable with respect to  $H_{i}$  (i.e.  $X_{i}$  is a function of  $H_{i}$ ), then  $X_{1}, X_{2}, \ldots, X_{m}$  is a martingale with respect to this filtration if  $\mathbb{E}[|X_i|] \leq \infty$  and:

$$
\mathbb {E} \left[ X_{i} \mid H_{i - 1} \right] = X_{i - 1}
$$

The process  $Z_{1}, Z_{2}, \ldots, Z_{m}$  is a martingale difference sequence if  $\mathbb{E}[|Z_i|] \leq \infty$  and

$$
\mathbb {E} \left[ Z_{i} \mid H_{i - 1} \right] = 0
$$

Clearly,  $Z_{i} = X_{i} - X_{i-1}$  is a martingale difference sequence.

A useful property of martingale different sequences is that:

$$
\mathbb {E} \left[ Z_{i} \right] = 0
$$

Here, we have an unconditional expectation.

# 3 Online to "Batch"

Let us define

$$
Z_{i} = \left(\ell \left(\theta_{i}; \left(x_{i}, y_{i}\right)\right) - \mathcal {L} \left(\theta_{i}\right)\right) - \left(\ell \left(\theta^{*}; \left(x_{i}, y_{i}\right)\right) - \mathcal {L} \left(\theta^{*}\right)\right).
$$

With respect to the history  $T_{<i}$ , this process is a martingale difference sequence.

The following lemma is useful.

Lemma 3.1. Assume that each  $(x_{i},y_{i})$  is generated in an i.i.d manner. Assume that  $\theta_{i}$  is a function of  $T_{< i}$ , where:

$$
T_{<   i} = \left\{\left(X_{1}, Y_{1}\right), \dots , \left(X_{i - 1}, Y_{i - 1}\right) \right\}
$$

Then the process  $\{Z_i\}$  is a martingale difference sequence, with respect to the history  $T_{< i}$ .

Proof. To see that the process is a martingale difference sequence,

$$
\begin{array}{l} \mathbb {E} \left[ Z_{i} \mid T_{<   i} \right] = \mathbb {E} \left[ \ell \left(\theta_{i}; \left(x_{i}, y_{i}\right)\right) - \mathcal {L} \left(\theta_{i}\right) \mid T_{<   i} \right] - \mathbb {E} \left[ \ell \left(\theta^{*}; \left(x_{i}, y_{i}\right)\right) - \mathcal {L} \left(\theta^{*}\right) \mid T_{<   i} \right] \\ = \mathcal {L} (\theta_{i}) - \mathcal {L} (\theta_{i}) - \left(\mathcal {L} \left(\theta^{*}\right) - \mathcal {L} \left(\theta^{*}\right)\right) \\ = 0 \\ \end{array}
$$

which completes the proof.

Lemma 3.2. We have that

$$
\sum_{i = 1}^{m} \mathcal {L} \left(\theta_{i}\right) \leq \mathcal {L} \left(\theta^{*}\right) + R_{T} - \sum_{i = 1}^{m} Z_{i}
$$

Proof. To complete the proof:

$$
\begin{array}{l} \sum_{i = 1}^{m} \mathcal {L} \left(\theta_{i}\right) - \mathcal {L} \left(\theta^{*}\right) = \sum_{i = 1}^{m} \ell \left(\theta_{i}; \left(x_{i}, y_{i}\right)\right) - \ell \left(\theta^{*}; \left(x_{i}, y_{i}\right)\right) - Z_{i} \\ \leq \sum_{i = 1}^{m} \ell \left(\theta_{i}; \left(x_{i}, y_{i}\right)\right) - \inf_{\theta \in \Theta} \sum_{i = 1}^{m} \ell \left(\theta ; \left(x_{i}, y_{i}\right)\right) - \sum_{i = 1}^{m} Z_{i} \\ = R_{T} - \sum_{i = 1}^{m} Z_{i} \\ \end{array}
$$

which completes the proof.

The following theorem bounds the expected performance of an online to batch conversion.

Theorem 3.3. Assume that each  $(x_i, y_i)$  is generated in an i.i.d manner. Assume that  $\theta_i$  is a function of  $T_{<i}$ . Let  $\theta^*$  be defined as:

$$
\theta^{*} \in \arg \min_{\theta \in \Theta} \mathcal {L} (\theta)
$$

Let  $\theta_{1},\ldots \theta_{m}$  be the random variable corresponding to the output of our online algorithm on the training sequence  $T$  (generated in an i.i.d. manner from some distribution). Then:

$$
\mathbb {E} \left[ \frac{1}{m} \sum_{i = 1}^{m} \mathcal {L} (\theta_{i}) \right] \leq \mathcal {L} (\theta^{*}) + \frac{1}{m} \mathbb {E} \left[ R_{T} \right]
$$

where the expectation is with respect to  $T$ . Furthermore, if  $\mathcal{L}(\cdot)$  is convex, then:

$$
\mathbb {E} \left[ \mathcal {L} \left(\frac{1}{m} \sum_{i = 1}^{m} \theta_{i}\right) \right] \leq \mathcal {L} \left(\theta^{*}\right) + \frac{1}{m} \mathbb {E} \left[ R_{T} \right]
$$

Proof. Since  $Z_{i}$  is a martingale difference sequence, we have

$$
\mathbb {E} \left[ \sum_{i = 1}^{m} Z_{i} \right] = 0
$$

where the expectation is unconditional. Now just take expectations in the previous lemma.

# 3.1 With High Probability

The following concentration result is useful.

Theorem 3.4. (Hoeffding-Azuma) Let  $Z_{1}, Z_{2}, \ldots, Z_{m}$  be a martingale difference sequence s.t.  $|Z_{i}| \leq B$  (with probability one). For all  $\epsilon \geq 0$

$$
\mathbb {P} \left(\sum_{i = 1}^{m} Z_{i} \geq \epsilon\right) \leq e^{- \frac{\epsilon^{2}}{2 B^{2} m}}
$$

The following high probability statement is now straightforward.

Theorem 3.5. Assume that each  $(x_{i},y_{i})$  is generated in an i.i.d manner. Assume that  $\theta_{i}$  is a function of  $T_{< i}$ . Let  $\theta^{*}$  be defined as:

$$
\theta^{*} \in \arg \min_{\theta \in \Theta} \mathcal {L} (\theta)
$$

Let  $\theta_{1},\ldots \theta_{m}$  be the random variable corresponding to the output of our online algorithm on the training sequence  $T$  (generated in an i.i.d. manner from some distribution). Assuming that the loss is bounded in  $[0,1]$ , then with probability greater than  $1 - \delta$

$$
\frac{1}{m} \sum_{i = 1}^{m} \mathcal {L} (\theta_{i}) \leq \mathcal {L} (\theta^{*}) + \frac{1}{m} \mathbb {E} [ R_{T} ] + 2 \sqrt{\frac{2 \log \frac{1}{\delta}}{m}}
$$

where the expectation is with respect to  $T$ .

Proof. Clearly,  $Z_{i}$  is bounded by 2. Hence, with probability greater than  $1 - \delta$

$$
\frac{1}{m} \sum_{i = 1}^{m} Z_{i} \leq 2 \sqrt{\frac{2 \log \frac{1}{\delta}}{m}}
$$

The proof follows from our earlier lemma.

# 4 L1 and L2 constrained problems

In the online learning setting, we restricted model complexity by bounding the decision region. We could consider similar restrictions in the stochastic setting.

For the case with an  $L_{2}$  bounded decision region, we have:

$$
\theta_{2}^{*} = \arg \min_{\theta : | | \theta | |_{2} \leq D_{2}} \mathcal {L} (\theta)
$$

where  $D_{2}$  is some bound on the norm of the decision region. Similarly, we could consider an  $L_{1}$  constrained decision region, with optimal predictor:

$$
\theta_{1}^{*} = \arg \min_{\theta : | | \theta | |_{2} \leq D_{1}} \mathcal {L} (\theta)
$$

where, again,  $D_{1}$  is a bound on the  $L_{1}$  norm of the decision region.

# 4.1 Online to Batch Conversions for Online Convex Programming

Now we can apply our previous results on Gradient Descent and Exponentiated Gradient descent to this setting.

Corollary 4.1. Assuming that  $\ell(\theta; (x, y))$  is a convex function of  $\theta$  for all  $(x, y)$ , then the with probability greater than  $1 - \delta$ , the output of the gradient descent algorithm satisfies:

$$
\mathcal {L} (\frac{1}{m} \sum_{i = 1}^{m} \theta_{i}) - \mathcal {L} (\theta_{2}^{*}) \leq \frac{G_{2} D_{2}}{\sqrt{m}} + 2 \sqrt{\frac{2 \log \frac{1}{\delta}}{m}}
$$

where  $G_{2}$  is an upper bound on  $\| \nabla \ell (\theta ;(x,y))\| _2$  (for all  $(x,y)$ ).

Corollary 4.2. Assuming that  $\ell(\theta; (x, y))$  is a convex function of  $\theta$  for all  $(x, y)$ , then the with probability greater than  $1 - \delta$ , the output of the exponentiated gradient descent algorithm satisfies:

$$
\mathcal {L} (\frac{1}{m} \sum_{i = 1}^{m} \theta_{i}) - \mathcal {L} (\theta_{2}^{*}) \leq 2 \frac{G_{\infty} D_{1}}{\sqrt{m}} + 2 \sqrt{\frac{2 \log \frac{1}{\delta}}{m}}
$$

where  $G_{\infty}$  is an upper bound on  $\| \nabla \ell (\theta ;(x,y))\|_{\infty}$  (for all  $(x,y)$ ).

Proof. The proof directly follows from the previous theorem and the fact that  $R_{T}$  is bounded uniformly (as we saw in an earlier lecture).

# Growth Functions and the VC dimension

Instructor: Sham Kakade

# 1 Growth function

Consider the case  $\mathcal{V} = \{\pm 1\}$  (classification). Let  $\phi$  be the 0-1 loss function and  $\mathcal{F}$  be a class of  $\pm 1$ -valued functions. We can relate the Rademacher average of  $\phi_{\mathcal{F}}$  to that of  $\mathcal{F}$  as follows.

Recall the following definitions:

$$
\mathfrak {R}_{m} \left(\phi_{\mathcal {F}}\right) = \mathbb {E} \left[ \sup_{f \in \mathcal {F}} \frac{1}{m} \sum_{i = 1}^{m} \epsilon_{i} \phi \left(f \left(X_{i}\right), Y_{i}\right) \right]
$$

where the expectation is with respect to the  $\epsilon_{i}$ 's,  $X_{i}$ 's and  $Y_{i}$ 's. The conditional Rademacher average is:

$$
\mathfrak {R}_{m} \left(\phi_{\mathcal {F}} \mid X_{1}^{m}\right) = \mathbb {E} \left[ \sup_{f \in \mathcal {F}} \frac{1}{m} \sum_{i = 1}^{m} \epsilon_{i} \phi \left(f \left(X_{i}\right), Y_{i}\right) \Bigg | X_{1}^{m} \right]
$$

where the expectation is with respect to the  $\epsilon_{i}$ 's and  $Y_{i}$ 's. Note that:

$$
\mathfrak {R}_{m} \left(\phi_{\mathcal {F}}\right) = \mathbb {E} \left[ \mathfrak {R}_{m} \left(\phi_{\mathcal {F}} \mid X_{1}^{m}\right) \right]
$$

where the expectation is with respect to the  $X_{i}$ 's.

Lemma 1.1. Suppose  $\mathcal{F} \subseteq \{\pm 1\}^{\mathcal{X}}$  and let  $\phi(y', y) = \mathbf{1}[y' \neq y]$  be the 0-1 loss function. Then we have,

$$
\mathfrak {R}_{m} (\phi_{\mathcal {F}}) = \frac{1}{2} \mathfrak {R}_{m} (\mathcal {F} | X_{1}^{m}) .
$$

Proof. Note that we can write  $\phi(y', y)$  as  $(1 - yy') / 2$ . Then we have,

$$
\begin{array}{l} \mathfrak {R}_{m} \left(\phi_{\mathcal {F}} \mid X_{1}^{m}, Y_{1}^{m}\right) = \mathbb {E} \left[ \sup_{f \in \mathcal {F}} \frac{1}{m} \sum_{i = 1}^{m} \epsilon_{i} \frac{1 - Y_{i} f \left(X_{i}\right)}{2} \Bigg | X_{1}^{m}, Y_{1}^{m} \right] \\ = \frac{1}{2} \mathbb {E} \left[ \sup_{f \in \mathcal {F}} \frac{1}{m} \sum_{i = 1}^{m} (- \epsilon_{i} Y_{i}) f (X_{i}) \mid X_{1}^{m}, Y_{1}^{m} \right] (1) \\ = \frac{1}{2} \mathbb {E} \left[ \sup_{f \in \mathcal {F}} \frac{1}{m} \sum_{i = 1}^{m} \epsilon_{i} f \left(X_{i}\right) \mid X_{1}^{m} \right] (2) \\ = \frac{1}{2} \Re_{m} \left(\mathcal {F} \mid X_{1}^{m}\right). \\ \end{array}
$$

Equation (1) follows because  $\mathbb{E}\left[\epsilon_i|X_1^m,Y_1^m\right] = 0$ . Equation (2) follows because  $\epsilon_{i}Y_{i}$ 's jointly have the same distribution as  $\epsilon_{i}$ 's. The proof follows from:

$$
\mathfrak {R}_{m} (\phi_{\mathcal {F}} | X_{1}^{m}) = \mathbb {E} [ \mathfrak {R}_{m} (\phi_{\mathcal {F}} | X_{1}^{m}, Y_{1}^{m}) ] = \mathbb {E} [ \frac{1}{2} \mathfrak {R}_{m} (\mathcal {F} | X_{1}^{m}) ] = \frac{1}{2} \mathfrak {R}_{m} (\mathcal {F} | X_{1}^{m})
$$

where the expectation is with respect to the  $Y_{i}$ 's.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/3f1f3ebb-6a12-4a2a-a9ea-82bbea0d783f/34e5ccfaa50e931cafbb12563224339f97729c9e64b7c5882a3287f848a4bcf4.jpg)

Note that the Rademacher average of the class  $\mathcal{F}$  on the set  $X_{1},\ldots ,X_{m}$  can also be written as

$$
\mathfrak {R}_{m} (\mathcal {F}_{| X_{1}^{m}}) = \mathbb {E} \left[ \sup_{a \in \mathcal {F}_{| X_{1}^{m}}} \frac{1}{m} \sum_{i = 1}^{m} \epsilon_{i} a_{i} \right],
$$

where  $\mathcal{F}_{|X_m^m}$  is the function class  $\mathcal{F}$  restricted to the set  $X_{1},\ldots ,X_{m}$ . That is,

$$
\mathcal {F}_{\left| X_{1}^{m} \right.} := \left\{ \right.\left( \right.\left(f \left(X_{1}\right), \dots , f \left(X_{m}\right)\right) \mid f \in \mathcal {F} \left. \right\}.
$$

Note that  $\mathcal{F}_{|X_1^m}$  is finite and

$$
| \mathcal {F}_{| X_{1}^{m} |} \leq \min \{| \mathcal {F} |, 2^{m} \}.
$$

Thus we can define the growth function as

$$
\Pi_{\mathcal {F}} (m) := \max_{x_{1}^{m} \in \mathcal {X}^{m}} | \mathcal {F}_{| x_{1}^{m} |}.
$$

# 2 Rademacher Averages and Growth Function

Theorem 2.1. Let  $\mathcal{F}$  be a class of  $\pm 1$ -valued functions. Then we have,

$$
\mathfrak {R}_{m} (\mathcal {F}) \leq \sqrt{\frac{2 \ln \Pi_{\mathcal {F}} (m)}{m}}.
$$

Proof. We have,

$$
\begin{array}{l} \mathfrak {R}_{m} (\mathcal {F}) \mathbb {E} \left[ \mathfrak {R}_{m} \left(\mathcal {F} \mid X_{1}^{m}\right) \right] \\ = \mathbb {E} \left[ \mathbb {E} \left[ \sup_{a \in \mathcal {F}_{| X_{1}^{m}}} \frac{1}{m} \sum_{i = 1}^{m} \epsilon_{i} a_{i} \Bigg | X_{1}^{m} \right] \right] \\ \leq \mathbb {E} \left[ \sqrt{m} \frac{\sqrt{2 \ln | \mathcal {F}_{| X_{1}^{m} |}}}{m} \right] \\ \leq \mathbb {E} \left[ \sqrt{m} \frac{\sqrt{2 \ln \Pi_{\mathcal {F}} (m)}}{m} \right] \\ = \sqrt{\frac{2 \ln \Pi_{\mathcal {F}} (m)}{m}} \\ \end{array}
$$

Since  $f(x_{i}) \in \{\pm 1\}$ , any  $a \in \mathcal{F}_{|X_1^m}$  has  $\|a\| = \sqrt{m}$ . The first inequality above therefore follows from Massart's finite class lemma. The second inequality follows from the definition of the growth function  $\Pi_{\mathcal{F}}(m)$ .

Note that plugging in the trivial bound  $\Pi_{\mathcal{F}}(m) \leq 2^m$  does not give us any interesting bound. This is quite reasonable since this bound would hold for any function class no matter how complicated it is. To measure the complexity of  $\mathcal{F}$ , let us look at the first natural number such that  $\Pi_{\mathcal{F}}(m)$  falls below  $2^m$ . This brings us to the definition of the Vapnik-Chervonenkis dimension.

<table><tr><td>X</td><td>F</td><td>VCdim(F)</td></tr><tr><td>R2</td><td>convex polygons</td><td>∞</td></tr><tr><td>R2</td><td>axis-aligned rectangles</td><td>4</td></tr><tr><td>R2</td><td>convex polygons with d vertices</td><td>2d + 1</td></tr><tr><td>Rd</td><td>halfspaces</td><td>d + 1</td></tr></table>

# 3 Vapnik-Chervonenkis Dimension

The Vapnik-Chervonenkis dimension (or simply the VC-dimension) of a function class  $\mathcal{F} \subseteq \{\pm 1\}^{\mathcal{X}}$  is defined as

$$
\operatorname{VCdim} (\mathcal {F}) := \max  \left\{m > 0 \mid \Pi_{\mathcal {F}} (m) = 2^{m} \right\}.
$$

An equivalent definition is that  $\mathrm{VCdim}(\mathcal{F})$  is the size of the largest set shattered by  $\mathcal{F}$ . A set  $\{x_1, \ldots, x_m\}$  is said to be shattered by  $\mathcal{F}$  if for any labelling  $\vec{b} = (b_1, \ldots, b_m) \in \{\pm 1\}^m$ , there is a function  $f \in \mathcal{F}$  such that

$$
(f (x_{1}), \dots , f (x_{m})) = (b_{1}, \dots , b_{m}).
$$

Note that a function  $f \in \{\pm\}^{\mathcal{X}}$  can be identified with the subset of  $\mathcal{X}$  on which it is equal to  $+1$ . So, we often talk about the VC-dimension of a collection of subsets of  $\mathcal{X}$ . The table below gives the VC-dimensions for a few examples.

# 4 Growth Function and VC Dimension

Suppose  $\operatorname{VCdim}(\mathcal{F}) = d$ . Then for all  $m \leq d$ ,  $\Pi_{\mathcal{F}}(m) = 2^m$ . The lemma below, due to Sauer, implies that for  $m > d$ ,  $\Pi_{\mathcal{F}}(m) = O(m^d)$ , a polynomial rate of growth. This result is remarkable for it implies that the growth function exhibits just two kinds of behavior. If  $\operatorname{VCdim}(\mathcal{F}) = \infty$  then  $\Pi_{\mathcal{F}}$  grows exponentially with  $m$ . On the other hand, if  $\operatorname{VCdim}(\mathcal{F}) = d < \infty$  then the growth function is  $O(m^d)$ .

Sauer's Lemma. Let  $\mathcal{F}$  be such that  $\mathrm{VCdim}(\mathcal{F})\leq d$ . Then, we have

$$
\Pi_{\mathcal {F}} (m) \leq \sum_{i = 0}^{d} \left( \begin{array}{c} m \\ i \end{array} \right).
$$

Proof. We prove this by induction on  $m + d$ . For  $m = d = 1$ , the above inequality holds as both sides are equal to 2. Assume that it holds for  $m - 1$  and  $d$  and for  $m - 1$  and  $d - 1$ . We will prove it for  $m$  and  $d$ . Define the function,

$$
h (m, d) := \sum_{i = 0}^{d} \left( \begin{array}{c} m \\ i \end{array} \right)
$$

so that our induction hypothesis is: for  $\mathcal{F}$  with  $\mathrm{VCdim}(\mathcal{F})\leq d$ $\Pi_{\mathcal{F}}(m)\leq h(m,d)$ . Since

$$
\left( \begin{array}{c} m \\ i \end{array} \right) = \left( \begin{array}{c} m - 1 \\ i \end{array} \right) + \left( \begin{array}{c} m - 1 \\ i - 1 \end{array} \right),
$$

is easy to verify that  $h$  satisfies the recurrence

$$
h (m, d) = h (m - 1, d) + h (m - 1, d - 1).
$$

Fix a class  $\mathcal{F}$  with  $\operatorname{VCdim}(\mathcal{F}) = d$  and a set  $X_{1} = \{x_{1},\ldots ,x_{m}\} \subseteq \mathcal{X}$ . Let  $\mathcal{F}_1 = \mathcal{F}_{|X_1}$  and  $X_{2} = \{x_{2},\dots,x_{m}\}$  and define the function classes,

$$
\mathcal {F}_{1} := \mathcal {F}_{| X_{1}}
$$

$$
\mathcal {F}_{2} := \mathcal {F}_{| X_{2}}
$$

$$
\mathcal {F}_{3} := \left\{f_{| X_{2}} \mid f \in \mathcal {F} \& \exists f^{\prime} \in \mathcal {F} \text{s .t .} \right.
$$

$$
\forall x \in X_{2}, f^{\prime} (x) = f (x) \& f^{\prime} (x_{1}) = - f (x_{1}) \}.
$$

Note that  $\mathrm{VCdim}(\mathcal{F}') \leq \mathrm{VCdim}(\mathcal{F}) \leq d$  and we wish to bound  $|\mathcal{F}_1|$ . By the definitions above, we have

$$
\left| \mathcal {F}_{1} \right| = \left| \mathcal {F}_{2} \right| + \left| \mathcal {F}_{3} \right|.
$$

It is easy to see that  $\mathrm{VCdim}(\mathcal{F}_2) \leq d$ . Also,  $\mathrm{VCdim}(\mathcal{F}_3) \leq d - 1$  because if  $\mathcal{F}_3$  shatters a set, we can always add  $x_1$  to it to get a set that is shattered by  $\mathcal{F}_1$ . By induction hypothesis,  $|\mathcal{F}_2| \leq h(m - 1, d)$  and  $|\mathcal{F}_3| \leq h(m - 1, d - 1)$ . Thus, we have

$$
| \mathcal {F}_{| x_{1}^{m} |} = | \mathcal {F}_{1} | \leq h (m - 1, d) + h (m - 1, d - 1) = h (m, d).
$$

Since  $x_{1},\ldots ,x_{m}$  were arbitrary, we have

$$
\Pi_{\mathcal {F}} (m) = \sup_{x_{1}^{m} \in \mathcal {X}^{m}} | \mathcal {F}_{| x_{1}^{m} |} \leq h (m, d).
$$

and the induction step is complete.

Corollary 4.1. Let  $\mathcal{F}$  be such that  $\mathrm{VCdim}(\mathcal{F})\leq d$ . Then, we have, for  $m\geq d$

$$
\Pi_{\mathcal {F}} (m) \leq \left(\frac{m e}{d}\right)^{d}.
$$

Proof. Since  $n \geq d$ , we have

$$
\begin{array}{l} \sum_{i = 0}^{d} \binom {m} {i} \leq \left(\frac{m}{d}\right)^{d} \sum_{i = 0}^{d} \binom {m} {i} \left(\frac{d}{m}\right)^{i} \\ \leq \left(\frac{m}{d}\right)^{d} \sum_{i = 0}^{m} \binom {m} {i} \left(\frac{d}{m}\right)^{i} \\ \leq \left(\frac{m}{d}\right)^{d} \left(1 + \frac{d}{m}\right)^{m} \\ \leq \left(\frac{m}{d}\right)^{d} e^{d}. \\ \end{array}
$$

# 5 VC Dimension of halfspaces

Here we prove only the last claim: the VC-dimension of halfspaces in  $\mathbb{R}^d$  is  $d + 1$ .

Theorem 5.1. Let  $\mathcal{X} = \mathbb{R}^d$ . Define the set of  $\pm 1$ -valued functions associated with halfspaces,

$$
\mathcal {F} = \left\{x \mapsto \operatorname{sgn} \left(w \cdot x - \theta\right) \mid w \in \mathbb {R}^{d}, \theta \in \mathbb {R} \right\}.
$$

Then,  $\operatorname{VCdim}(\mathcal{F}) = d + 1$ .

Proof. We have to prove two inequalities

$$
\operatorname{VCdim} (\mathcal {F}) \geq d + 1, \tag {3}
$$

$$
\operatorname{VCdim} (\mathcal {F}) \leq d + 1. \tag {4}
$$

To prove the first inequality, we need to exhibit a particular set of size  $d + 1$  that is shattered by  $\mathcal{F}$ . Proving the second inequality is a bit more tricky: we need to show that for all sets of size  $d + 2$ , there is labelling that cannot be realized using halfspaces.

Let us first prove (3). Consider the set  $X = \{\mathbf{0},\mathbf{e}_1,\dots ,\mathbf{e}_d\}$  which consists of the origin along with the vectors in the standard basis of  $\mathbb{R}^d$ . Given a labelling  $b_{0},\ldots ,b_{d}$  of these points, set

$$
\theta = - b_{0},
$$

$$
w_{i} = \theta + b_{i}, i \in [ d ].
$$

With these definitions, it immediately follows that  $w \cdot \mathbf{0} - \theta = b_0$  and for all  $i \in [d]$ ,  $w \cdot \mathbf{e}_i - \theta = b_i$ . Thus,  $X$  is shattered by  $\mathcal{F}$ . Since,  $|X| = d + 1$ , we have proved (3).

Before we prove (4), we need the following result from convex geometry.

Radon's Lemma. Let  $X \subset \mathbb{R}^d$  be a set of size  $d + 2$ . Then there exist two disjoint subsets  $X_1, X_2$  of  $X$  such that  $\operatorname{conv}(X_1) \cap \operatorname{conv}(X_2) \neq \emptyset$ . Here  $\operatorname{conv}(X)$  denotes the convex hull of  $X$ .

Proof. Let  $X = \{x_{1},\ldots ,x_{d + 2}\}$ . Consider the following system of  $d + 1$  equations in the variables  $\lambda_1,\dots ,\lambda_{d + 2}$

$$
\left( \begin{array}{c c c c} x_{1} & x_{2} & \dots & x_{d + 2} \\ 1 & 1 & \dots & 1 \end{array} \right) \left( \begin{array}{c} \lambda_{1} \\ \lambda_{2} \\ \vdots \\ \lambda_{d + 2} \end{array} \right) = \mathbf {0}. \tag {5}
$$

Since, there are more variables than equations, there is a non-trivial solution  $\lambda^{*} \neq 0$ . Define the set of indices,

$$
P = \left\{i \mid \lambda_{i}^{*} > 0 \right\},
$$

$$
N = \left\{j \mid \lambda_{j}^{*} <   0 \right\}.
$$

Since  $\lambda^{*}\neq 0$  , both  $P$  and  $N$  and non-empty and

$$
\sum_{i \in P} \lambda_{i}^{*} = \sum_{j \in N} (- \lambda_{j}^{*}) \neq 0.
$$

Moreover, since  $\lambda^{*}$  satisfies  $\sum_{i = 1}^{d + 2}\lambda_i^* x_i = \mathbf{0}$ , we have

$$
\sum_{i \in P} \lambda_{i}^{*} x_{i} = \sum_{j \in N} (- \lambda_{j}^{*}) x_{j}.
$$

Defining  $X_{1} = \{x_{i}\in X\mid i\in P\}$  and  $X_{2} = \{x_{i}\in X\mid i\in N\}$ , we see that the point

$$
\frac{\sum_{i \in P} \lambda_{i}^{*} x_{i}}{\sum_{i \in P} \lambda_{i}^{*}} = \frac{\sum_{j \in N} (- \lambda_{j}^{*}) x_{j}}{\sum_{j \in N} (- \lambda_{j}^{*}}}
$$

lies both in  $\operatorname{conv}(X_1)$  as well as  $\operatorname{conv}(X_2)$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/3f1f3ebb-6a12-4a2a-a9ea-82bbea0d783f/b3c888af842ad77275a00cbf7a32b46dd987d7c5af97560bcec047b77dd1ab3d.jpg)

Given Radon's lemma, the proof of (3) is quite easy. We have to show that given a set  $X \in \mathbb{R}^d$  of size  $d + 2$ , there is a labelling that cannot be realized using halfspaces. Obtain disjoint subsets  $X_1, X_2$  of  $X$  whose existence is guaranteed by Radon's lemma. Now consider a labelling in which all the points in  $X_1$  are labelled  $+1$  and those in  $X_2$  are labelled  $-1$ . We claim that such a labelling cannot be realized using a halfspace. Suppose there is such a halfspace  $H$ . Note that if a halfspace assigns a particular label to a set of points, then every point in their convex hull is also assigned the same label. Thus every point in  $\mathrm{conv}(X_1)$  is labelled  $+1$  by  $H$  while every point in  $\mathrm{conv}(X_2)$  is labelled  $-1$ . But  $\mathrm{conv}(X_1) \cap \mathrm{conv}(X_2) \neq \emptyset$  giving us a contradiction.

We often work with  $\pm 1$ -valued functions obtained by thresholding real valued functions at 0. If these real valued functions come from a finite dimensional vector space, the next result gives an upper bound on the VC dimension.

Theorem 5.2. Let  $\mathcal{G}$  be a finite dimensional vector space of functions on  $\mathbb{R}^d$ . Define,

$$
\mathcal {F} = \left\{x \mapsto \operatorname{sgn} (g (x)) \mid g \in \mathcal {G} \right\}.
$$

If the dimension of  $\mathcal{G}$  is  $k$  then  $\mathrm{VCdim}(\mathcal{F})\leq k$

Proof. Fix an arbitrary set of  $k + 1$  points  $x_{1},\ldots ,x_{k + 1}$ . We show that this set cannot be shattered by  $\mathcal{F}$ . Consider the linear transformation  $T:\mathcal{G}\to \mathbb{R}^{k + 1}$  defined as

$$
T (g) = \left(g \left(x_{1}\right), \dots , g \left(x_{k + 1}\right). \right.
$$

The dimension of the image of  $\mathcal{G}$  under  $T$  is at most  $k$ . Thus, there exists a non-zero vector  $\lambda \in \mathbb{R}^{k + 1}$  that is orthogonal to it. That is, for all  $g \in \mathcal{G}$ ,

$$
\sum_{i = 1}^{k + 1} \lambda_{i} g \left(x_{i}\right) = 0. \tag {6}
$$

At least one of the sets,

$$
P := \left\{i \mid \lambda_{i} > 0 \right\},
$$

$$
N := \left\{j \mid \lambda_{j} <   0 \right\},
$$

is non-empty. Without loss of generality assume it is  $P$ . Consider a labelling of  $x_{1},\ldots ,x_{k + 1}$  that assigns the label  $+1$  to all  $x_{i}$  such that  $i\in P$  and  $-1$  to the rest. If this labelling is realized by a function in  $\mathcal{F}$  then there exists  $g_0\in \mathcal{G}$  such that

$$
\sum_{i \in P} \lambda_{i} g_{0} (x_{i}) > 0,
$$

$$
\sum_{i \in N} \lambda_{i} g_{0} (x_{i}) \geq 0.
$$

But this contradicts (6). Therefore  $x_{1}, \ldots, x_{k + 1}$  cannot be shattered by  $\mathcal{F}$ .

# Boosting

Instructor: Sham Kakade

# 1 Boosting

For the case where  $\gamma$  is known, we now present the boosting algorithm. The algorithm enjoys the following performance guarantee:

# Algorithm 1 Boosting

Input parameters:  $\gamma, T$

Initialize  $w_{1}\gets \frac{1}{T}\mathbf{1}$

for  $t = 1$  to  $T$  do

Call  $\gamma$ -WeakLearner with distribution  $w_{t}$ , and receive hypothesis  $h_t:X\to [-1,1]$ .

Set

$$
l_{t, i} = 1 - \frac{\left| h_{t} \left(x_{i}\right) - y_{i} \right|}{2}
$$

and update the weights

$$
w_{t + 1, i} = \frac{w_{t , i} e^{- \frac{\gamma}{2} l_{t , i}}}{Z}, \quad Z = \sum_{i} w_{t, i} e^{- \frac{\gamma}{2} l_{t, i}}
$$

end for

OUTPUT the 'majority vote' hypothesis:

$$
h (x) = \operatorname{sgn} \left(\frac{1}{T} \sum_{t = 1}^{T} h_{t} (x)\right)
$$

Theorem 1.1. Let  $h$  be the output hypothesis of Boosting. Let  $M$  be the set of mistakes on the training set, i.e.  $M = \{i : h(x_i) \neq y_i\}$ . We have:

$$
\frac{| M |}{m} \leq e^{- T \gamma^{2} / 4}
$$

Proof. We will appeal to the guarantee of our experts algorithm. For any  $w^*$ , we have that:

$$
\sum_{t = 1}^{T} w_{t} \cdot l_{t} \leq \sum_{t = 1}^{T} w^{*} \cdot l_{t} + \frac{2 K L (w^{*} | | w_{1})}{\gamma} + \frac{\gamma}{2} T
$$

where we have used that  $\eta = \gamma /2$  in boosting.

By the definition of weak learning, we have:

$$
w_{t} \cdot l_{t} = 1 - \sum_{i} w_{t, i} \frac{| h_{t} (x_{i}) - y_{i} |}{2} \geq \frac{1}{2} + \gamma
$$

for all  $t$ . So we have:

$$
T \left(\frac{1}{2} + \gamma\right) \leq \sum_{t = 1}^{T} w^{*} \cdot l_{t} + \frac{2 K L (w^{*} | | w_{1})}{\gamma} + \frac{\gamma}{2} T
$$

Rearranging:

$$
\frac{T}{2} + \frac{T \gamma}{2} \leq \sum_{t = 1}^{T} w^{*} \cdot l_{t} + \frac{2 K L (w^{*} | | w_{1})}{\gamma}
$$

which holds for all probility distributions  $w^{*}$

We will now choose  $w^{*}$  to be uniform over the set  $M$ . For  $i \in M$ , we know

$$
\frac{\left| y_{i} - \frac{1}{T} \sum_{t = 1}^{T} h_{t} (x_{i}) \right|}{2} \geq \frac{1}{2}
$$

Hence, for  $i\in M$

$$
\frac{1}{T} \sum_{t = 1}^{T} l_{t, i} = 1 - \frac{1}{T} \sum_{t = 1}^{T} \frac{| y_{i} - h_{t} (x_{i}) |}{2} = 1 - \frac{| y_{i} - \frac{1}{T} \sum_{t = 1}^{T} h_{t} (x_{i}) |}{2} \leq \frac{1}{2}
$$

Hence,

$$
\sum_{t = 1}^{T} w^{*} \cdot l_{t} \leq \frac{T}{2}
$$

Hence, we have that:

$$
\frac{T}{2} + \frac{T \gamma}{2} \leq \frac{T}{2} + \frac{2 \log (m / | M |)}{\gamma}
$$

where we have used the definition of the  $KL$  distance with the uniform distribution. Rearranging completes the proof.

# 2 L1 Margins and Weak Learning

While it may seem that the weak learning is assumption is rather mild, we now show that it is considerably stronger than what one might initially think. In particular, the weak learning assumption is equivalent to a seperability assumption.

We say that we have a  $\gamma$ -weak learner if for every distribution  $w$  over the training set, we can find a hypothesis  $h: X \to [-1, 1]$  such that:

$$
\sum_{i = 1}^{m} w_{i} \frac{\left| h \left(x_{i}\right) - y_{i} \right|}{2} \leq \frac{1}{2} - \gamma
$$

which is equivalent to the condition

$$
\sum_{i = 1}^{m} w_{i} y_{i} h (x_{i}) \geq 2 \gamma
$$

which is straightforward to show since  $|h(x_{i}) - y_{i}| = 1 - y_{i}h(x_{i})$

Let us assume that we have a set of hypothesis

$$
\mathcal {H} = \left\{h_{1} (\cdot), h_{2} (\cdot), \dots h_{k} (\cdot) \right\}
$$

such that if  $h$  is in this set then  $-h$  is in this set. Also assume that our weak learning assumption holds with respect to this set of hypothesis, meaning that the output of our weak learning always lies in this set  $\mathcal{H}$ . Note then that our final prediction will be of the form:

$$
h_{\text{output}} (x) = \sum_{j = 1}^{k} w_{j} h_{j} (x)
$$

where  $w$  is a weight vector.

Define the matrix  $A$  such that:

$$
A_{i, j} = y_{i} h_{j} \left(x_{i}\right).
$$

so  $A$  is an  $m \times k$ . Letting  $S$  denote the  $n$ -dimensional simplex, the weak  $\gamma$ -learning assumption can be stated as follows:

$$
\begin{array}{l} 2 \gamma \leq \min_{p \in S} \max_{j \in [ k ]} \sum_{i = 1}^{m} p_{i} y_{i} h_{j} \left(x_{i}\right) \\ = \min_{p \in S} \max_{j \in [ k ]} \left| \sum_{i = 1}^{m} p_{i} y_{i} h_{j} \left(x_{i}\right) \right| \\ = \min_{p \in S} \max_{j \in [ k ]} | \sum_{i = 1}^{m} p_{i} A_{i, j} | \\ = \min_{p \in S} \max_{j \in [ k ]} | [ p^{\dagger} A ]_{j} | \\ \end{array}
$$

where  $\gamma \geq 0$  and we have stated the assumption in matrix notation, in terms of  $A$ .

Now let  $B_{1}$  deonte the  $L_{1}$  ball of dimension  $k$ . We can say that our data-set  $A$  is linearly separable with  $L_{1}$  margin  $\alpha \geq 0$  if:

$$
\begin{array}{l} \alpha \leq \max_{w \in B_{1}} \min_{i \in [ m ]} y_{i} \left(\sum_{j = 1}^{k} w_{j} h_{j} \left(x_{i}\right)\right) \\ = \max_{w \in B_{1}} \min_{i \in [ m ]} \sum_{j = 1}^{k} w_{j} A_{i, j} \\ = \max_{w \in B_{1}} \min_{i \in [ m ]} [ A w ]_{i} \\ \end{array}
$$

Theorem 2.1.  $A$  is  $\gamma$  weak learnable if and only if  $A$  is linearly separable with  $L_{1}$  margin  $2\gamma$ .

Proof. Using the minimax theorem:

$$
\begin{array}{l} \min_{p \in S} \max_{j \in | k |} | [ p^{\dagger} A ]_{j} | = \min_{p \in S} \max_{w \in B_{1}} p^{\dagger} A w \\ = \max_{w \in B_{1}} \min_{p \in S} p^{\dagger} A w \\ = \max_{w \in B_{1}} \min_{i \in [ m ]} [ A w ]_{i} \\ \end{array}
$$

which completes the proof.

# 3 AdaBoost

AdaBoost (Adaptive Boosting) is for the case where the parameter  $\gamma$  is not known. The algorithm adapts to the performance of the weak learner.

# Algorithm 2 AdaBoost

Input parameters:  $T$

Initialize  $w_{1}\gets \frac{1}{m}\mathbf{1}$

for  $t = 1$  to  $T$  do

Call  $\gamma$ -WeakLearner with distribution  $w_{t}$ , and receive hypothesis  $h_t:X\to [-1,1]$ .

Calculate the error

$$
\gamma_{t} = \frac{1}{2} - \sum_{i = 1}^{m} w_{t, i} \frac{\left| h \left(x_{i}\right) - y_{i} \right|}{2}
$$

Set

$$
\beta_{t} = \frac{\frac{1}{2} - \gamma_{t}}{\frac{1}{2} + \gamma_{t}}, \qquad l_{t, i} = 1 - \frac{\left| h_{t} (x_{i}) - y_{i} \right|}{2}
$$

and update the weights

$$
w_{t + 1, i} = \frac{w_{t , i} \beta_{t}^{l_{t , i}}}{Z_{t}}, \quad Z_{t} = \sum_{i} w_{t, i} \beta_{t}^{l_{t, i}}
$$

end for

OUTPUT the hypothesis:

$$
h (x) = \operatorname{sgn} \left(\sum_{t = 1}^{T} \left(\log \frac{1}{\beta_{t}}\right) h_{t} (x)\right)
$$

AdaBoost enjoys the following performance guarantee:

Theorem 3.1. Let  $h$  be the output hypothesis of AdaBoost. Let  $M$  be the set of mistakes on the training set, i.e.  $M = \{i : h(x_i) \neq y_i\}$ . We have:

$$
\frac{| M |}{m} \leq \Pi_{t = 1}^{T} \sqrt{1 - 4 \gamma_{t}^{2}} \leq e^{- 2 \sum_{t = 1}^{T} \gamma_{t}^{2}}
$$

Proof. We first bound the normalizing constant  $Z_{t}$  using  $\beta^{x} \leq 1 - (1 - \beta)x$  for any  $x \in [0,1]$ ,

$$
Z_{t} = \sum_{i = 1}^{m} w_{t, i} \beta^{l_{t, i}} \leq \sum_{i = 1}^{m} w_{t, i} \left(1 - \left(1 - \beta_{t}\right) l_{t, i}\right) = 1 - \left(1 - \beta_{t}\right) \left(\frac{1}{2} + \gamma_{t}\right). \tag {1}
$$

Next we observe that

$$
w_{T + 1, i} = w_{1, i} \frac{\prod_{t = 1}^{t} \beta^{l_{t , i}}}{\prod_{t = 1}^{T} Z_{t}}. \tag {2}
$$

If the output hypothesis  $h$  makes a mistake on example  $i$ , then

$$
y_{i} \left(\sum_{t = 1}^{T} \left(\log \frac{1}{\beta_{t}}\right) h_{t} \left(x_{i}\right)\right) \leq 0.
$$

Since  $y_{i}\in \{-1, + 1\}$  , this implies, for all  $i\in M$

$$
\prod_{t = 1}^{T} \beta_{t}^{1 - \frac{\left| h_{t} \left(x_{i}\right) - y_{i} \right|}{2}} \geq \left(\prod_{t = 1}^{T} \beta_{t}\right)^{1 / 2}. \tag {3}
$$

Combining (2) and (3), we get

$$
\begin{array}{l} \sum_{i = 1}^{m} w_{T + 1, i} \prod_{t = 1}^{T} Z_{t} = \prod_{t = 1}^{T} Z_{t} \\ = \sum_{i = 1}^{m} w_{1, i} \prod_{t = 1}^{T} \beta^{l_{t, i}} \\ \geq \sum_{i \in M} w_{1, i} \left(\prod_{t = 1}^{T} \beta^{l_{t, i}}\right)^{1 / 2} = \frac{| M |}{m} \left(\prod_{t = 1}^{T} \beta^{l_{t, i}}\right)^{1 / 2}. \\ \end{array}
$$

Rearranging, this gives,

$$
\frac{| M |}{m} \leq \prod_{t = 1}^{T} \frac{Z_{t}}{\sqrt{\beta_{t}}} .
$$

Combining this with (1), we get

$$
\frac{| M |}{m} \leq \prod_{t = 1}^{T} \frac{\left(1 - \left(1 - \beta_{t}\right) \left(1 / 2 + \gamma_{t}\right)\right)}{\sqrt{\beta_{t}}}.
$$

Now substituting  $\beta_{t} = (1 / 2 - \gamma_{t}) / (1 / 2 + \gamma_{t})$  proves the theorem.