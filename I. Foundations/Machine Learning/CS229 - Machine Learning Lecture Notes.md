---
parent_directory: Machine Learning
title: CS229 - Machine Learning Lecture Notes
tags: null
aliases:
- CS229 Lecture Notes
- Machine Learning Lecture Notes
cssclasses: academia
primary_tags:
- 5-th degree
- existing training algorithms
- other gradient-based optimizers
- vector-valued inputs
- optional reading
- multivariate gaussian distribution
- best approximation
secondary_tags:
- 4.1 gaussian discriminant analysis
- corresponding word embeddings
- backpropagation algorithm
- gradient descent algorithm
- likelihood estimation
- support machine
- prediction example
- value approximation section
- large training and test errors
- conv2d s
- most commonly used model
- any vector
- 6.7 regularization
- joint likelihood
- significantly smaller variance
- three derived features
- each model times
- elementary differentiable functions
- real-world problems
tags_extracted: '2025-12-18T17:55:15.304707'
tags_method: max_quality_v1
---

# CS229 Lecture Notes

# Contents

# I Supervised learning 5

# 1 Linear regression 8

1.1 LMS algorithm 9  
1.2 The normal equations 13

1.2.1 Matrix derivatives 13  
1.2.2 Least squares revisited 14

1.3 Probabilistic interpretation 15  
1.4 Locally weighted linear regression (optional reading) 17

# 2 Classification and logistic regression 20

2.1 Logistic regression 20  
2.2 Digression: the perceptron learning algorithm 23  
2.3 Multi-class classification 24  
2.4 Another algorithm for maximizing  $\ell (\theta)$  27

# 3 Generalized linear models 29

3.1 The exponential family 29  
3.2 Constructing GLMs 31

3.2.1 Ordinary least squares 32  
3.2.2 Logistic regression 33

# 4 Generative learning algorithms 34

4.1 Gaussian discriminant analysis 35

4.1.1 The multivariate normal distribution 35  
4.1.2 The Gaussian discriminant analysis model 38  
4.1.3 Discussion: GDA and logistic regression 40

4.2 Naive bayes (Option Reading) 41

4.2.1 Laplace smoothing 44  
4.2.2 Event models for text classification 46

# 5 Kernel methods 48

5.1 Feature maps 48  
5.2 LMS (least mean squares) with features 49  
5.3 LMS with the kernel trick 49  
5.4 Properties of kernels 53

# 6 Support vector machines 59

6.1 Margins: intuition 59  
6.2 Notation (option reading) 61  
6.3 Functional and geometric margins (option reading) 61  
6.4 The optimal margin classifier (option reading) 63  
6.5 Lagrange duality (optional reading) 65  
6.6 Optimal margin classifiers: the dual form (option reading) 68  
6.7 Regularization and the non-separable case (optional reading). 72  
6.8 The SMO algorithm (optional reading) 73

6.8.1 Coordinate ascent 74  
6.8.2 SMO 75

# II Deep learning 79

# 7 Deep learning 80

7.1 Supervised learning with non-linear models 80  
7.2 Neural networks 84  
7.3 Modules in Modern Neural Networks 92  
7.4 Backpropagation 98

7.4.1 Preliminaries on partial derivatives 99  
7.4.2 General strategy of backpropagation 102  
7.4.3 Backward functions for basic modules 105  
7.4.4 Back-propagation for MLPs 107

7.5 Vectorization over training examples 109

# III Generalization and regularization 112

# 8 Generalization 113

8.1 Bias-variance tradeoff 115  
8.1.1 A mathematical decomposition (for regression) 120  
8.2 The double descent phenomenon 121  
8.3 Sample complexity bounds (optional readings) 126

8.3.1 Preliminaries 126  
8.3.2 The case of finite  $\mathcal{H}$  128  
8.3.3 The case of infinite  $\mathcal{H}$  131

# 9 Regularization and model selection 135

9.1 Regularization 135  
9.2 Implicit regularization effect (optional reading) 137  
9.3 Model selection via cross validation 139  
9.4 Bayesian statistics and regularization 142

# IV Unsupervised learning 144

# 10 Clustering and the  $k$ -means algorithm 145

# 11 EM algorithms 148

11.1 EM for mixture of Gaussians 148  
11.2 Jensen's inequality 151  
11.3 General EM algorithms 152

11.3.1 Other interpretation of ELBO 158

11.4 Mixture of Gaussians revisited 158  
11.5 Variational inference and variational auto-encoder (optional reading) 160

# 12 Principal components analysis 165

# 13 Independent components analysis 171

13.1 ICA ambiguities 172  
13.2 Densities and linear transformations 173  
13.3 ICA algorithm 174

# 14 Self-supervised learning and foundation models 177

14.1 Pretraining and adaptation 177  
14.2 Pretraining methods in computer vision 179  
14.3 Pretrained large language models 181

14.3.1 Open up the blackbox of Transformers 183  
14.3.2 Zero-shot learning and in-context learning 186

# V Reinforcement Learning and Control 188

# 15 Reinforcement learning 189

15.1 Markov decision processes 190  
15.2 Value iteration and policy iteration 192  
15.3 Learning a model for an MDP 194  
15.4 Continuous state MDPs 196

15.4.1 Discretization 196  
15.4.2 Value function approximation 199  
15.5 Connections between Policy and Value Iteration (Optional) 203

# 16 LQR, DDP and LQG 206

16.1 Finite-horizon MDPs 206  
16.2 Linear Quadratic Regulation (LQR) 210  
16.3 From non-linear dynamics to LQR 213

16.3.1 Linearization of dynamics 214  
16.3.2 Differential Dynamic Programming (DDP) 214  
16.4 Linear Quadratic Gaussian (LQG) 216

# 17 Policy Gradient (REINFORCE) 220

# Part I

# Supervised learning

Let's start by talking about a few examples of supervised learning problems. Suppose we have a dataset giving the living areas and prices of 47 houses from Portland, Oregon:

<table><tr><td>Living area (feet2)</td><td>Price (1000\$s)</td></tr><tr><td>2104</td><td>400</td></tr><tr><td>1600</td><td>330</td></tr><tr><td>2400</td><td>369</td></tr><tr><td>1416</td><td>232</td></tr><tr><td>3000</td><td>540</td></tr><tr><td>:</td><td>:</td></tr></table>

We can plot this data:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/f234543c94ef12bcdc7302af0a9a4bad6ea5768c7611fd2ae391f1f6470393b1.jpg)

Given data like this, how can we learn to predict the prices of other houses in Portland, as a function of the size of their living areas?

To establish notation for future use, we'll use  $x^{(i)}$  to denote the "input" variables (living area in this example), also called input features, and  $y^{(i)}$  to denote the "output" or target variable that we are trying to predict (price). A pair  $(x^{(i)},y^{(i)})$  is called a training example, and the dataset that we'll be using to learn—a list of  $n$  training examples  $\{(x^{(i)},y^{(i)});i = 1,\ldots ,n\}$ —is called a training set. Note that the superscript " $(i)"$  in the notation is simply an index into the training set, and has nothing to do with exponentiation. We will also use  $\mathcal{X}$  denote the space of input values, and  $\mathcal{Y}$  the space of output values. In this example,  $\mathcal{X} = \mathcal{Y} = \mathbb{R}$ .

To describe the supervised learning problem slightly more formally, our goal is, given a training set, to learn a function  $h: \mathcal{X} \mapsto \mathcal{Y}$  so that  $h(x)$  is a "good" predictor for the corresponding value of  $y$ . For historical reasons, this

function  $h$  is called a hypothesis. Seen pictorially, the process is therefore like this:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/142da689efef107862cfffed9bc953c52cd510851379280016c79eb1377787f6.jpg)

When the target variable that we're trying to predict is continuous, such as in our housing example, we call the learning problem a regression problem. When  $y$  can take on only a small number of discrete values (such as if, given the living area, we wanted to predict if a dwelling is a house or an apartment, say), we call it a classification problem.

# Chapter 1

# Linear regression

To make our housing example more interesting, let's consider a slightly richer dataset in which we also know the number of bedrooms in each house:

<table><tr><td>Living area (feet2)</td><td>#bedrooms</td><td>Price (1000\$s)</td></tr><tr><td>2104</td><td>3</td><td>400</td></tr><tr><td>1600</td><td>3</td><td>330</td></tr><tr><td>2400</td><td>3</td><td>369</td></tr><tr><td>1416</td><td>2</td><td>232</td></tr><tr><td>3000</td><td>4</td><td>540</td></tr><tr><td>:</td><td>:</td><td>:</td></tr></table>

Here, the  $x$ 's are two-dimensional vectors in  $\mathbb{R}^2$ . For instance,  $x_1^{(i)}$  is the living area of the  $i$ -th house in the training set, and  $x_2^{(i)}$  is its number of bedrooms. (In general, when designing a learning problem, it will be up to you to decide what features to choose, so if you are out in Portland gathering housing data, you might also decide to include other features such as whether each house has a fireplace, the number of bathrooms, and so on. We'll say more about feature selection later, but for now let's take the features as given.)

To perform supervised learning, we must decide how we're going to represent functions/hypotheses  $h$  in a computer. As an initial choice, let's say we decide to approximate  $y$  as a linear function of  $x$ :

$$
h_{\theta} (x) = \theta_{0} + \theta_{1} x_{1} + \theta_{2} x_{2}
$$

Here, the  $\theta_{i}$ 's are the parameters (also called weights) parameterizing the space of linear functions mapping from  $\mathcal{X}$  to  $\mathcal{Y}$ . When there is no risk of

confusion, we will drop the  $\theta$  subscript in  $h_{\theta}(x)$ , and write it more simply as  $h(x)$ . To simplify our notation, we also introduce the convention of letting  $x_0 = 1$  (this is the intercept term), so that

$$
h (x) = \sum_{i = 0}^{d} \theta_{i} x_{i} = \theta^{T} x,
$$

where on the right-hand side above we are viewing  $\theta$  and  $x$  both as vectors, and here  $d$  is the number of input variables (not counting  $x_0$ ).

Now, given a training set, how do we pick, or learn, the parameters  $\theta$ ? One reasonable method seems to be to make  $h(x)$  close to  $y$ , at least for the training examples we have. To formalize this, we will define a function that measures, for each value of the  $\theta$ 's, how close the  $h(x^{(i)})$ ’s are to the corresponding  $y^{(i)}$ ’s. We define the cost function:

$$
J (\theta) = \frac{1}{2} \sum_{i = 1}^{n} (h_{\theta} (x^{(i)}) - y^{(i)})^{2}.
$$

If you've seen linear regression before, you may recognize this as the familiar least-squares cost function that gives rise to the ordinary least squares regression model. Whether or not you have seen it previously, let's keep going, and we'll eventually show this to be a special case of a much broader family of algorithms.

# 1.1 LMS algorithm

We want to choose  $\theta$  so as to minimize  $J(\theta)$ . To do so, let's use a search algorithm that starts with some "initial guess" for  $\theta$ , and that repeatedly changes  $\theta$  to make  $J(\theta)$  smaller, until hopefully we converge to a value of  $\theta$  that minimizes  $J(\theta)$ . Specifically, let's consider the gradient descent algorithm, which starts with some initial  $\theta$ , and repeatedly performs the update:

$$
\theta_{j} := \theta_{j} - \alpha \frac{\partial}{\partial \theta_{j}} J (\theta).
$$

(This update is simultaneously performed for all values of  $j = 0, \ldots, d$ .) Here,  $\alpha$  is called the learning rate. This is a very natural algorithm that repeatedly takes a step in the direction of steepest decrease of  $J$ .

In order to implement this algorithm, we have to work out what is the partial derivative term on the right hand side. Let's first work it out for the

case of if we have only one training example  $(x,y)$ , so that we can neglect the sum in the definition of  $J$ . We have:

$$
\begin{array}{l} \frac{\partial}{\partial \theta_{j}} J (\theta) = \frac{\partial}{\partial \theta_{j}} \frac{1}{2} (h_{\theta} (x) - y)^{2} \\ = 2 \cdot \frac{1}{2} (h_{\theta} (x) - y) \cdot \frac{\partial}{\partial \theta_{j}} (h_{\theta} (x) - y) \\ = \left(h_{\theta} (x) - y\right) \cdot \frac{\partial}{\partial \theta_{j}} \left(\sum_{i = 0}^{d} \theta_{i} x_{i} - y\right) \\ = \left(h_{\theta} (x) - y\right) x_{j} \\ \end{array}
$$

For a single training example, this gives the update rule:

$$
\theta_{j} := \theta_{j} + \alpha \left(y^{(i)} - h_{\theta} (x^{(i)})\right) x_{j}^{(i)}.
$$

The rule is called the LMS update rule (LMS stands for "least mean squares"), and is also known as the Widrow-Hoff learning rule. This rule has several properties that seem natural and intuitive. For instance, the magnitude of the update is proportional to the error term  $(y^{(i)} - h_{\theta}(x^{(i)}))$ ; thus, for instance, if we are encountering a training example on which our prediction nearly matches the actual value of  $y^{(i)}$ , then we find that there is little need to change the parameters; in contrast, a larger change to the parameters will be made if our prediction  $h_{\theta}(x^{(i)})$  has a large error (i.e., if it is very far from  $y^{(i)}$ ).

We'd derived the LMS rule for when there was only a single training example. There are two ways to modify this method for a training set of more than one example. The first is replace it with the following algorithm:

Repeat until convergence {

$$
\theta_{j} := \theta_{j} + \alpha \sum_{i = 1}^{n} \left(y^{(i)} - h_{\theta} \left(x^{(i)}\right)\right) x_{j}^{(i)}, (\text{forevery} j) \tag {1.1}
$$

}

By grouping the updates of the coordinates into an update of the vector  $\theta$ , we can rewrite update (1.1) in a slightly more succinct way:

$$
\theta := \theta + \alpha \sum_{i = 1}^{n} \left(y^{(i)} - h_{\theta} (x^{(i)})\right) x^{(i)}
$$

The reader can easily verify that the quantity in the summation in the update rule above is just  $\partial J(\theta) / \partial \theta_{j}$  (for the original definition of  $J$ ). So, this is simply gradient descent on the original cost function  $J$ . This method looks at every example in the entire training set on every step, and is called batch gradient descent. Note that, while gradient descent can be susceptible to local minima in general, the optimization problem we have posed here for linear regression has only one global, and no other local, optima; thus gradient descent always converges (assuming the learning rate  $\alpha$  is not too large) to the global minimum. Indeed,  $J$  is a convex quadratic function. Here is an example of gradient descent as it is run to minimize a quadratic function.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/6912583716ad4b8ecf3e2f16501f740b20627b35c13034192102d027b773c6ac.jpg)

The ellipses shown above are the contours of a quadratic function. Also shown is the trajectory taken by gradient descent, which was initialized at (48,30). The  $x$ 's in the figure (joined by straight lines) mark the successive values of  $\theta$  that gradient descent went through.

When we run batch gradient descent to fit  $\theta$  on our previous dataset, to learn to predict housing price as a function of living area, we obtain  $\theta_0 = 71.27$ ,  $\theta_{1} = 0.1345$ . If we plot  $h_\theta (x)$  as a function of  $x$  (area), along with the training data, we obtain the following figure:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/168aceb6c0f7d77cae9ada304551232de75619e8ac157773d8a4ef72dfb114d7.jpg)

If the number of bedrooms were included as one of the input features as well, we get  $\theta_0 = 89.60$ ,  $\theta_1 = 0.1392$ ,  $\theta_2 = -8.738$ .

The above results were obtained with batch gradient descent. There is an alternative to batch gradient descent that also works very well. Consider the following algorithm:

Loop{

$$
\begin{array}{l} \text{for} i = 1 \text{to} n, \left\{\right. \\ \theta_{j} := \theta_{j} + \alpha \left(y^{(i)} - h_{\theta} (x^{(i)})\right) x_{j}^{(i)}, \quad (\text{forevery} j) \tag {1.2} \\ \end{array}
$$

}

}

By grouping the updates of the coordinates into an update of the vector  $\theta$ , we can rewrite update (1.2) in a slightly more succinct way:

$$
\theta := \theta + \alpha \left(y^{(i)} - h_{\theta} (x^{(i)})\right) x^{(i)}
$$

In this algorithm, we repeatedly run through the training set, and each time we encounter a training example, we update the parameters according to the gradient of the error with respect to that single training example only. This algorithm is called stochastic gradient descent (also incremental gradient descent). Whereas batch gradient descent has to scan through the entire training set before taking a single step—a costly operation if  $n$  is large—stochastic gradient descent can start making progress right away, and

continues to make progress with each example it looks at. Often, stochastic gradient descent gets  $\theta$  "close" to the minimum much faster than batch gradient descent. (Note however that it may never "converge" to the minimum, and the parameters  $\theta$  will keep oscillating around the minimum of  $J(\theta)$ ; but in practice most of the values near the minimum will be reasonably good approximations to the true minimum.) For these reasons, particularly when the training set is large, stochastic gradient descent is often preferred over batch gradient descent.

# 1.2 The normal equations

Gradient descent gives one way of minimizing  $J$ . Let's discuss a second way of doing so, this time performing the minimization explicitly and without resorting to an iterative algorithm. In this method, we will minimize  $J$  by explicitly taking its derivatives with respect to the  $\theta_j$ 's, and setting them to zero. To enable us to do this without having to write reams of algebra and pages full of matrices of derivatives, let's introduce some notation for doing calculus with matrices.

# 1.2.1 Matrix derivatives

For a function  $f: \mathbb{R}^{n \times d} \mapsto \mathbb{R}$  mapping from  $n$ -by-  $d$  matrices to the real numbers, we define the derivative of  $f$  with respect to  $A$  to be:

$$
\nabla_{A} f (A) = \left[ \begin{array}{c c c} \frac{\partial f}{\partial A_{1 1}} & \dots & \frac{\partial f}{\partial A_{1 d}} \\ \vdots & \ddots & \vdots \\ \frac{\partial f}{\partial A_{n 1}} & \dots & \frac{\partial f}{\partial A_{n d}} \end{array} \right]
$$

Thus, the gradient  $\nabla_A f(A)$  is itself an  $n$ -by- $d$  matrix, whose  $(i,j)$ -element is  $\partial f / \partial A_{ij}$ . For example, suppose  $A = \left[ \begin{array}{cc}A_{11} & A_{12}\\ A_{21} & A_{22} \end{array} \right]$  is a 2-by-2 matrix, and the function  $f:\mathbb{R}^{2\times 2}\mapsto \mathbb{R}$  is given by

$$
f (A) = \frac{3}{2} A_{1 1} + 5 A_{1 2}^{2} + A_{2 1} A_{2 2}.
$$

Here,  $A_{ij}$  denotes the  $(i,j)$  entry of the matrix  $A$ . We then have

$$
\nabla_{A} f (A) = \left[ \begin{array}{c c} \frac{3}{2} & 1 0 A_{1 2} \\ A_{2 2} & A_{2 1} \end{array} \right].
$$

# 1.2.2 Least squares revisited

Armed with the tools of matrix derivatives, let us now proceed to find in closed-form the value of  $\theta$  that minimizes  $J(\theta)$ . We begin by re-writing  $J$  in matrix-vectorial notation.

Given a training set, define the design matrix  $X$  to be the  $n$ -by-  $d$  matrix (actually  $n$ -by-  $d + 1$ , if we include the intercept term) that contains the training examples' input values in its rows:

$$
X = \left[ \begin{array}{c} - (x^{(1)})^{T} - \\ - (x^{(2)})^{T} - \\ \vdots \\ - (x^{(n)})^{T} - \end{array} \right].
$$

Also, let  $\vec{y}$  be the  $n$ -dimensional vector containing all the target values from the training set:

$$
\vec{y} = \left[ \begin{array}{c} y^{(1)} \\ y^{(2)} \\ \vdots \\ y^{(n)} \end{array} \right].
$$

Now, since  $h_{\theta}(x^{(i)}) = (x^{(i)})^T\theta$ , we can easily verify that

$$
\begin{array}{l} X \theta - \vec{y} = \left[ \begin{array}{c} (x^{(1)})^{T} \theta \\ \vdots \\ (x^{(n)})^{T} \theta \end{array} \right] - \left[ \begin{array}{c} y^{(1)} \\ \vdots \\ y^{(n)} \end{array} \right] \\ = \left[ \begin{array}{c} h_{\theta} (x^{(1)}) - y^{(1)} \\ \vdots \\ h_{\theta} (x^{(n)}) - y^{(n)} \end{array} \right]. \\ \end{array}
$$

Thus, using the fact that for a vector  $z$ , we have that  $z^T z = \sum_i z_i^2$ :

$$
\begin{array}{l} \frac{1}{2} (X \theta - \vec{y})^{T} (X \theta - \vec{y}) = \frac{1}{2} \sum_{i = 1}^{n} \left(h_{\theta} \left(x^{(i)}\right) - y^{(i)}\right)^{2} \\ = J (\theta) \\ \end{array}
$$

Finally, to minimize  $J$ , let's find its derivatives with respect to  $\theta$ . Hence,

$$
\begin{array}{l} \nabla_{\theta} J (\theta) = \nabla_{\theta} \frac{1}{2} (X \theta - \vec{y})^{T} (X \theta - \vec{y}) \\ { = } { \frac{ 1 } { 2 } \nabla_{ \theta } \left( ( X \theta )^{ T } X \theta - ( X \theta )^{ T } \vec{ y } - \vec{ y }^{ T } ( X \theta ) + \vec{ y }^{ T } \vec{ y } \right) } \\ = \frac{1}{2} \nabla_{\theta} \left(\theta^{T} \left(X^{T} X\right) \theta - \bar {y}^{T} (X \theta) - \bar {y}^{T} (X \theta)\right) \\ = \frac{1}{2} \nabla_{\theta} \left(\theta^{T} \left(X^{T} X\right) \theta - 2 \left(X^{T} \vec{y}\right)^{T} \theta\right) \\ = \frac{1}{2} \left(2 X^{T} X \theta - 2 X^{T} \vec{y}\right) \\ = X^{T} X \theta - X^{T} \vec{y} \\ \end{array}
$$

In the third step, we used the fact that  $a^T b = b^T a$ , and in the fifth step used the facts  $\nabla_x b^T x = b$  and  $\nabla_x x^T A x = 2 A x$  for symmetric matrix  $A$  (for more details, see Section 4.3 of "Linear Algebra Review and Reference"). To minimize  $J$ , we set its derivatives to zero, and obtain the normal equations:

$$
X^{T} X \theta = X^{T} \vec{y}
$$

Thus, the value of  $\theta$  that minimizes  $J(\theta)$  is given in closed form by the equation

$$
\boldsymbol {\theta} = (X^{T} X)^{- 1} X^{T} \vec{y}.^{3}
$$

# 1.3 Probabilistic interpretation

When faced with a regression problem, why might linear regression, and specifically why might the least-squares cost function  $J$ , be a reasonable choice? In this section, we will give a set of probabilistic assumptions, under which least-squares regression is derived as a very natural algorithm.

Let us assume that the target variables and the inputs are related via the equation

$$
y^{(i)} = \theta^{T} x^{(i)} + \epsilon^{(i)},
$$

where  $\epsilon^{(i)}$  is an error term that captures either unmodeled effects (such as if there are some features very pertinent to predicting housing price, but that we'd left out of the regression), or random noise. Let us further assume that the  $\epsilon^{(i)}$  are distributed IID (independently and identically distributed) according to a Gaussian distribution (also called a Normal distribution) with mean zero and some variance  $\sigma^2$ . We can write this assumption as “ $\epsilon^{(i)} \sim \mathcal{N}(0, \sigma^2)$ ” I.e., the density of  $\epsilon^{(i)}$  is given by

$$
p (\epsilon^{(i)}) = \frac{1}{\sqrt{2 \pi} \sigma} \exp \left(- \frac{(\epsilon^{(i)})^{2}}{2 \sigma^{2}}\right).
$$

This implies that

$$
p (y^{(i)} | x^{(i)}; \theta) = \frac{1}{\sqrt{2 \pi} \sigma} \exp \left(- \frac{(y^{(i)} - \theta^{T} x^{(i)})^{2}}{2 \sigma^{2}}\right).
$$

The notation  $p(y^{(i)}|x^{(i)};\theta)$  indicates that this is the distribution of  $y^{(i)}$  given  $x^{(i)}$  and parameterized by  $\theta$ . Note that we should not condition on  $\theta$  (" $p(y^{(i)}|x^{(i)},\theta)$ ) since  $\theta$  is not a random variable. We can also write the distribution of  $y^{(i)}$  as  $y^{(i)} \mid x^{(i)}$ ;  $\theta \sim \mathcal{N}(\theta^T x^{(i)},\sigma^2)$ .

Given  $X$  (the design matrix, which contains all the  $x^{(i)}$ 's) and  $\theta$ , what is the distribution of the  $y^{(i)}$ 's? The probability of the data is given by  $p(\vec{y} | X; \theta)$ . This quantity is typically viewed as a function of  $\vec{y}$  (and perhaps  $X$ ), for a fixed value of  $\theta$ . When we wish to explicitly view this as a function of  $\theta$ , we will instead call it the likelihood function:

$$
L (\theta) = L (\theta ; X, \vec{y}) = p (\vec{y} | X; \theta).
$$

Note that by the independence assumption on the  $\epsilon^{(i)}$ 's (and hence also the  $y^{(i)}$ 's given the  $x^{(i)}$ 's), this can also be written

$$
\begin{array}{l} L (\theta) = \prod_{i = 1}^{n} p (y^{(i)} \mid x^{(i)}; \theta) \\ = \prod_{i = 1}^{n} \frac{1}{\sqrt{2 \pi} \sigma} \exp \left(- \frac{(y^{(i)} - \theta^{T} x^{(i)})^{2}}{2 \sigma^{2}}\right). \\ \end{array}
$$

Now, given this probabilistic model relating the  $y^{(i)}$ 's and the  $x^{(i)}$ 's, what is a reasonable way of choosing our best guess of the parameters  $\theta$ ? The principal of maximum likelihood says that we should choose  $\theta$  so as to make the data as high probability as possible. I.e., we should choose  $\theta$  to maximize  $L(\theta)$ .

Instead of maximizing  $L(\theta)$ , we can also maximize any strictly increasing function of  $L(\theta)$ . In particular, the derivations will be a bit simpler if we instead maximize the log likelihood  $\ell(\theta)$ :

$$
\begin{array}{l} \ell (\theta) = \log L (\theta) \\ = \log \prod_{i = 1}^{n} \frac{1}{\sqrt{2 \pi} \sigma} \exp \left(- \frac{(y^{(i)} - \theta^{T} x^{(i)})^{2}}{2 \sigma^{2}}\right) \\ = \sum_{i = 1}^{n} \log{\frac{1}{\sqrt{2 \pi} \sigma}} \exp \left(- \frac{(y^{(i)} - \theta^{T} x^{(i)})^{2}}{2 \sigma^{2}}\right) \\ { = } { n \log \frac{ 1 } { \sqrt{ 2 \pi } \sigma } - \frac{ 1 } { \sigma^{ 2 } } \cdot \frac{ 1 } { 2 } \sum_{ i = 1 }^{ n } ( y^{ ( i ) } - \theta^{ T } x^{ ( i ) } )^{ 2 } . } \\ \end{array}
$$

Hence, maximizing  $\ell (\theta)$  gives the same answer as minimizing

$$
\frac{1}{2} \sum_{i = 1}^{n} (y^{(i)} - \theta^{T} x^{(i)})^{2},
$$

which we recognize to be  $J(\theta)$ , our original least-squares cost function.

To summarize: Under the previous probabilistic assumptions on the data, least-squares regression corresponds to finding the maximum likelihood estimate of  $\theta$ . This is thus one set of assumptions under which least-squares regression can be justified as a very natural method that's just doing maximum likelihood estimation. (Note however that the probabilistic assumptions are by no means necessary for least-squares to be a perfectly good and rational procedure, and there may—and indeed there are—other natural assumptions that can also be used to justify it.)

Note also that, in our previous discussion, our final choice of  $\theta$  did not depend on what was  $\sigma^2$ , and indeed we'd have arrived at the same result even if  $\sigma^2$  were unknown. We will use this fact again later, when we talk about the exponential family and generalized linear models.

# 1.4 Locally weighted linear regression (optional reading)

Consider the problem of predicting  $y$  from  $x \in \mathbb{R}$ . The leftmost figure below shows the result of fitting a  $y = \theta_0 + \theta_1 x$  to a dataset. We see that the data doesn't really lie on straight line, and so the fit is not very good.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/7b7eb9d4d296d6633e29cf18fadf0ff22dd271f4dee7b7c3f9d0343ae677ee15.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/2a1c08160469a6d0313423ad408072158ac8f47e48aeb650c93bab4bdd7369f6.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/e9555d06bbf990f1a440e3b5b5f1744f9f9d4f7ee93434f18ee748871ae52634.jpg)

Instead, if we had added an extra feature  $x^2$ , and fit  $y = \theta_0 + \theta_1x + \theta_2x^2$ , then we obtain a slightly better fit to the data. (See middle figure) Naively, it might seem that the more features we add, the better. However, there is also a danger in adding too many features: The rightmost figure is the result of fitting a 5-th order polynomial  $y = \sum_{j=0}^{5} \theta_j x^j$ . We see that even though the fitted curve passes through the data perfectly, we would not expect this to be a very good predictor of, say, housing prices ( $y$ ) for different living areas ( $x$ ). Without formally defining what these terms mean, we'll say the figure on the left shows an instance of **underfitting**—in which the data clearly shows structure not captured by the model—and the figure on the right is an example of **overfitting**. (Later in this class, when we talk about learning theory we'll formalize some of these notions, and also define more carefully just what it means for a hypothesis to be good or bad.)

As discussed previously, and as shown in the example above, the choice of features is important to ensuring good performance of a learning algorithm. (When we talk about model selection, we'll also see algorithms for automatically choosing a good set of features.) In this section, let us briefly talk about the locally weighted linear regression (LWR) algorithm which, assuming there is sufficient training data, makes the choice of features less critical. This treatment will be brief, since you'll get a chance to explore some of the properties of the LWR algorithm yourself in the homework.

In the original linear regression algorithm, to make a prediction at a query point  $x$  (i.e., to evaluate  $h(x)$ ), we would:

1. Fit  $\theta$  to minimize  $\sum_{i}(y^{(i)} - \theta^{T}x^{(i)})^{2}$  
2. Output  $\theta^T x$ .

In contrast, the locally weighted linear regression algorithm does the following:

1. Fit  $\theta$  to minimize  $\sum_{i}w^{(i)}(y^{(i)} - \theta^{T}x^{(i)})^{2}$  
2. Output  $\theta^T x$ .

Here, the  $w^{(i)}$ 's are non-negative valued weights. Intuitively, if  $w^{(i)}$  is large for a particular value of  $i$ , then in picking  $\theta$ , we'll try hard to make  $(y^{(i)} - \theta^T x^{(i)})^2$  small. If  $w^{(i)}$  is small, then the  $(y^{(i)} - \theta^T x^{(i)})^2$  error term will be pretty much ignored in the fit.

A fairly standard choice for the weights is<sup>4</sup>

$$
w^{(i)} = \exp \left(- \frac{(x^{(i)} - x)^{2}}{2 \tau^{2}}\right)
$$

Note that the weights depend on the particular point  $x$  at which we're trying to evaluate  $x$ . Moreover, if  $|x^{(i)} - x|$  is small, then  $w^{(i)}$  is close to 1; and if  $|x^{(i)} - x|$  is large, then  $w^{(i)}$  is small. Hence,  $\theta$  is chosen giving a much higher "weight" to the (errors on) training examples close to the query point  $x$ . (Note also that while the formula for the weights takes a form that is cosmetically similar to the density of a Gaussian distribution, the  $w^{(i)}$ 's do not directly have anything to do with Gaussians, and in particular the  $w^{(i)}$  are not random variables, normally distributed or otherwise.) The parameter  $\tau$  controls how quickly the weight of a training example falls off with distance of its  $x^{(i)}$  from the query point  $x$ ;  $\tau$  is called the bandwidth parameter, and is also something that you'll get to experiment with in your homework.

Locally weighted linear regression is the first example we're seeing of a non-parametric algorithm. The (unweighted) linear regression algorithm that we saw earlier is known as a parametric learning algorithm, because it has a fixed, finite number of parameters (the  $\theta_{i}$ 's), which are fit to the data. Once we've fit the  $\theta_{i}$ 's and stored them away, we no longer need to keep the training data around to make future predictions. In contrast, to make predictions using locally weighted linear regression, we need to keep the entire training set around. The term "non-parametric" (roughly) refers to the fact that the amount of stuff we need to keep in order to represent the hypothesis  $h$  grows linearly with the size of the training set.

# Chapter 2

# Classification and logistic regression

Let's now talk about the classification problem. This is just like the regression problem, except that the values  $y$  we now want to predict take on only a small number of discrete values. For now, we will focus on the binary classification problem in which  $y$  can take on only two values, 0 and 1. (Most of what we say here will also generalize to the multiple-class case.) For instance, if we are trying to build a spam classifier for email, then  $x^{(i)}$  may be some features of a piece of email, and  $y$  may be 1 if it is a piece of spam mail, and 0 otherwise. 0 is also called the negative class, and 1 the positive class, and they are sometimes also denoted by the symbols “-” and “+.” Given  $x^{(i)}$ , the corresponding  $y^{(i)}$  is also called the label for the training example.

# 2.1 Logistic regression

We could approach the classification problem ignoring the fact that  $y$  is discrete-valued, and use our old linear regression algorithm to try to predict  $y$  given  $x$ . However, it is easy to construct examples where this method performs very poorly. Intuitively, it also doesn't make sense for  $h_{\theta}(x)$  to take values larger than 1 or smaller than 0 when we know that  $y \in \{0,1\}$ .

To fix this, let's change the form for our hypotheses  $h_{\theta}(x)$ . We will choose

$$
h_{\theta} (x) = g (\theta^{T} x) = \frac{1}{1 + e^{- \theta^{T} x}},
$$

where

$$
g (z) = \frac{1}{1 + e^{- z}}
$$

is called the logistic function or the sigmoid function. Here is a plot showing  $g(z)$ :

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/2a53feb3ced38f2556c274b6a1bd8494298ee43b682a984d2ff973a447aebbd4.jpg)

Notice that  $g(z)$  tends towards 1 as  $z \to \infty$ , and  $g(z)$  tends towards 0 as  $z \to -\infty$ . Moreover,  $\mathrm{g(z)}$ , and hence also  $h(x)$ , is always bounded between 0 and 1. As before, we are keeping the convention of letting  $x_0 = 1$ , so that  $\theta^T x = \theta_0 + \sum_{j=1}^{d} \theta_j x_j$ .

For now, let's take the choice of  $g$  as given. Other functions that smoothly increase from 0 to 1 can also be used, but for a couple of reasons that we'll see later (when we talk about GLMs, and when we talk about generative learning algorithms), the choice of the logistic function is a fairly natural one. Before moving on, here's a useful property of the derivative of the sigmoid function, which we write as  $g'$ :

$$
\begin{array}{l} g^{\prime} (z) = \frac{d}{d z} \frac{1}{1 + e^{- z}} \\ = \frac{1}{(1 + e^{- z})^{2}} \left(e^{- z}\right) \\ = \frac{1}{\left(1 + e^{- z}\right)} \cdot \left(1 - \frac{1}{\left(1 + e^{- z}\right)}\right) \\ = g (z) (1 - g (z)). \\ \end{array}
$$

So, given the logistic regression model, how do we fit  $\theta$  for it? Following how we saw least squares regression could be derived as the maximum likelihood estimator under a set of assumptions, let's endow our classification model with a set of probabilistic assumptions, and then fit the parameters via maximum likelihood.

Let us assume that

$$
P (y = 1 \mid x; \theta) = h_{\theta} (x)
$$

$$
P (y = 0 \mid x; \theta) = 1 - h_{\theta} (x)
$$

Note that this can be written more compactly as

$$
p (y \mid x; \theta) = \left(h_{\theta} (x)\right)^{y} \left(1 - h_{\theta} (x)\right)^{1 - y}
$$

Assuming that the  $n$  training examples were generated independently, we can then write down the likelihood of the parameters as

$$
\begin{array}{l} L (\theta) = p (\vec{y} \mid X; \theta) \\ = \prod_{i = 1}^{n} p \left(y^{(i)} \mid x^{(i)}; \theta\right) \\ = \prod_{i = 1}^{n} \left(h_{\theta} \left(x^{(i)}\right)\right)^{y^{(i)}} \left(1 - h_{\theta} \left(x^{(i)}\right)\right)^{1 - y^{(i)}} \\ \end{array}
$$

As before, it will be easier to maximize the log likelihood:

$$
\ell (\theta) = \log L (\theta) = \sum_{i = 1}^{n} y^{(i)} \log h (x^{(i)}) + (1 - y^{(i)}) \log (1 - h (x^{(i)})) \qquad (2. 1)
$$

How do we maximize the likelihood? Similar to our derivation in the case of linear regression, we can use gradient ascent. Written in vectorial notation, our updates will therefore be given by  $\theta \coloneqq \theta +\alpha \nabla_{\theta}\ell (\theta)$ . (Note the positive rather than negative sign in the update formula, since we're maximizing, rather than minimizing, a function now.) Let's start by working with just one training example  $(x,y)$ , and take derivatives to derive the stochastic gradient ascent rule:

$$
\begin{array}{l} \frac{\partial}{\partial \theta_{j}} \ell (\theta) = \left(y \frac{1}{g (\theta^{T} x)} - (1 - y) \frac{1}{1 - g (\theta^{T} x)}\right) \frac{\partial}{\partial \theta_{j}} g (\theta^{T} x) \\ = \left(y \frac{1}{g \left(\theta^{T} x\right)} - (1 - y) \frac{1}{1 - g \left(\theta^{T} x\right)}\right) g \left(\theta^{T} x\right) \left(1 - g \left(\theta^{T} x\right)\right) \frac{\partial}{\partial \theta_{j}} \theta^{T} x \\ = \left(y \left(1 - g \left(\theta^{T} x\right)\right) - (1 - y) g \left(\theta^{T} x\right)\right) x_{j} \\ = \left(y - h_{\theta} (x)\right) x_{j} \tag {2.2} \\ \end{array}
$$

Above, we used the fact that  $g'(z) = g(z)(1 - g(z))$ . This therefore gives us the stochastic gradient ascent rule

$$
\theta_{j} := \theta_{j} + \alpha \left(y^{(i)} - h_{\theta} (x^{(i)})\right) x_{j}^{(i)}
$$

If we compare this to the LMS update rule, we see that it looks identical; but this is not the same algorithm, because  $h_{\theta}(x^{(i)})$  is now defined as a non-linear function of  $\theta^T x^{(i)}$ . Nonetheless, it's a little surprising that we end up with the same update rule for a rather different algorithm and learning problem. Is this coincidence, or is there a deeper reason behind this? We'll answer this when we get to GLM models.

Remark 2.1.1: An alternative notational viewpoint of the same loss function is also useful, especially for Section 7.1 where we study nonlinear models. Let  $\ell_{\mathrm{logistic}}:\mathbb{R}\times \{0,1\} \to \mathbb{R}_{\geq 0}$  be the logistic loss defined as

$$
\ell_{\mathrm{logistic}} (t, y) \triangleq y \log (1 + \exp (- t)) + (1 - y) \log (1 + \exp (t)). \qquad (2. 3)
$$

One can verify by plugging in  $h_{\theta}(x) = 1 / (1 + e^{-\theta^{\top}x})$  that the negative log-likelihood (the negation of  $\ell(\theta)$  in equation (2.1)) can be re-written as

$$
- \ell (\theta) = \ell_{\mathrm{logistic}} (\theta^{\top} x, y). \tag {2.4}
$$

Oftentimes  $\theta^{\top}x$  or  $t$  is called the logit. Basic calculus gives us that

$$
\begin{array}{l} \frac{\partial \ell_{\mathrm{logistic}} (t , y)}{\partial t} = y \frac{- \exp (- t)}{1 + \exp (- t)} + (1 - y) \frac{1}{1 + \exp (- t)} (2.5) \\ = 1 / (1 + \exp (- t)) - y. (2.6) \\ \end{array}
$$

Then, using the chain rule, we have that

$$
\begin{array}{l} \frac{\partial}{\partial \theta_{j}} \ell (\theta) = - \frac{\partial \ell_{\mathrm{logistic}} (t , y)}{\partial t} \cdot \frac{\partial t}{\partial \theta_{j}} (2.7) \\ = (y - 1 / (1 + \exp (- t))) \cdot x_{j} = (y - h_{\theta} (x)) x_{j}, (2.8) \\ \end{array}
$$

which is consistent with the derivation in equation (2.2). We will see this viewpoint can be extended nonlinear models in Section 7.1.

# 2.2 Digression: the perceptron learning algorithm

We now digress to talk briefly about an algorithm that's of some historical interest, and that we will also return to later when we talk about learning

theory. Consider modifying the logistic regression method to "force" it to output values that are either 0 or 1 or exactly. To do so, it seems natural to change the definition of  $g$  to be the threshold function:

$$
g (z) = \left\{ \begin{array}{l l} 1 & \mathrm{if} z \geq 0 \\ 0 & \mathrm{if} z <   0 \end{array} \right.
$$

If we then let  $h_{\theta}(x) = g(\theta^T x)$  as before but using this modified definition of  $g$ , and if we use the update rule

$$
\theta_{j} := \theta_{j} + \alpha (y^{(i)} - h_{\theta} (x^{(i)})) x_{j}^{(i)}.
$$

then we have the perceptron learning algorithm.

In the 1960s, this "perceptron" was argued to be a rough model for how individual neurons in the brain work. Given how simple the algorithm is, it will also provide a starting point for our analysis when we talk about learning theory later in this class. Note however that even though the perceptron may be cosmetically similar to the other algorithms we talked about, it is actually a very different type of algorithm than logistic regression and least squares linear regression; in particular, it is difficult to endow the perceptron's predictions with meaningful probabilistic interpretations, or derive the perceptron as a maximum likelihood estimation algorithm.

# 2.3 Multi-class classification

Consider a classification problem in which the response variable  $y$  can take on any one of  $k$  values, so  $y \in \{1, 2, \ldots, k\}$ . For example, rather than classifying emails into the two classes spam or not-spam—which would have been a binary classification problem—we might want to classify them into three classes, such as spam, personal mails, and work-related mails. The label / response variable is still discrete, but can now take on more than two values. We will thus model it as distributed according to a multinomial distribution.

In this case,  $p(y \mid x; \theta)$  is a distribution over  $k$  possible discrete outcomes and is thus a multinomial distribution. Recall that a multinomial distribution involves  $k$  numbers  $\phi_1, \ldots, \phi_k$  specifying the probability of each of the outcomes. Note that these numbers must satisfy  $\sum_{i=1}^{k} \phi_i = 1$ . We will design a parameterized model that outputs  $\phi_1, \ldots, \phi_k$  satisfying this constraint given the input  $x$ .

We introduce  $k$  groups of parameters  $\theta_{1},\ldots ,\theta_{k}$ , each of them being a vector in  $\mathbb{R}^d$ . Intuitively, we would like to use  $\theta_1^\top x,\dots,\theta_k^\top x$  to represent

$\phi_1, \ldots, \phi_k$ , the probabilities  $P(y = 1 \mid x; \theta), \ldots, P(y = k \mid x; \theta)$ . However, there are two issues with such a direct approach. First,  $\theta_j^\top x$  is not necessarily within [0, 1]. Second, the summation of  $\theta_j^\top x$ 's is not necessarily 1. Thus, instead, we will use the softmax function to turn  $(\theta_1^\top x, \dots, \theta_k^\top x)$  into a probability vector with nonnegative entries that sum up to 1.

Define the softmax function softmax:  $\mathbb{R}^k\to \mathbb{R}^k$  as

$$
\operatorname{softmax} \left(t_{1}, \dots , t_{k}\right) = \left[ \begin{array}{c} \frac{\exp \left(t_{1}\right)}{\sum_{j = 1}^{k} \exp \left(t_{j}\right)} \\ \vdots \\ \frac{\exp \left(t_{k}\right)}{\sum_{j = 1}^{k} \exp \left(t_{j}\right)} \end{array} \right]. \tag {2.9}
$$

The inputs to the softmax function, the vector  $t$  here, are often called logits. Note that by definition, the output of the softmax function is always a probability vector whose entries are nonnegative and sum up to 1.

Let  $(t_1, \ldots, t_k) = (\theta_1^\top x, \dots, \theta_k^\top x)$ . We apply the softmax function to  $(t_1, \ldots, t_k)$ , and use the output as the probabilities  $P(y = 1 \mid x; \theta), \ldots, P(y = k \mid x; \theta)$ . We obtain the following probabilistic model:

$$
\left[ \begin{array}{c} P (y = 1 \mid x; \theta) \\ \vdots \\ P (y = k \mid x; \theta) \end{array} \right] = \operatorname{softmax} \left(t_{1}, \dots , t_{k}\right) = \left[ \begin{array}{c} \frac{\exp \left(\theta_{1}^{\top} x\right)}{\sum_{j = 1}^{k} \exp \left(\theta_{j}^{\top} x\right)} \\ \vdots \\ \frac{\exp \left(\theta_{k}^{\top} x\right)}{\sum_{j = 1}^{k} \exp \left(\theta_{j}^{\top} x\right)} \end{array} \right]. \tag {2.10}
$$

For notational convenience, we will let  $\phi_{i} = \frac{\exp(t_{i})}{\sum_{j = 1}^{k}\exp(t_{j})}$ . More succinctly, the equation above can be written as:

$$
P (y = i \mid x; \theta) = \phi_{i} = \frac{\exp (t_{i})}{\sum_{j = 1}^{k} \exp (t_{j})} = \frac{\exp (\theta_{i}^{\top} x)}{\sum_{j = 1}^{k} \exp (\theta_{j}^{\top} x)}. \tag {2.11}
$$

Next, we compute the negative log-likelihood of a single example  $(x,y)$ .

$$
- \log p (y \mid x, \theta) = - \log \left(\frac{\exp \left(t_{y}\right)}{\sum_{j = 1}^{k} \exp \left(t_{j}\right)}\right) = - \log \left(\frac{\exp \left(\theta_{y}^{\top} x\right)}{\sum_{j = 1}^{k} \exp \left(\theta_{j}^{\top} x\right)}\right) \tag {2.12}
$$

Thus, the loss function, the negative log-likelihood of the training data, is given as

$$
\ell (\theta) = \sum_{i = 1}^{n} - \log \left(\frac{\exp \left(\theta_{y^{(i)}}^{\top} x^{(i)}\right)}{\sum_{j = 1}^{k} \exp \left(\theta_{j}^{\top} x^{(i)}\right)}\right). \tag {2.13}
$$

It's convenient to define the cross-entropy loss  $\ell_{\mathrm{ce}}: \mathbb{R}^k \times \{1, \ldots, k\} \to \mathbb{R}_{\geq 0}$  which modularizes in the complex equation above:

$$
\ell_{\mathrm{ce}} \left(\left(t_{1}, \dots , t_{k}\right), y\right) = - \log \left(\frac{\exp \left(t_{y}\right)}{\sum_{j = 1}^{k} \exp \left(t_{j}\right)}\right). \tag {2.14}
$$

With this notation, we can simply rewrite equation (2.13) as

$$
\ell (\theta) = \sum_{i = 1}^{n} \ell_{\mathrm{ce}} ((\theta_{1}^{\top} x^{(i)}, \dots , \theta_{k}^{\top} x^{(i)}), y^{(i)}). \tag {2.15}
$$

Moreover, conveniently, the cross-entropy loss also has a simple gradient. Let  $t = (t_1,\ldots ,t_k)$ , and recall  $\phi_{i} = \frac{\exp(t_{i})}{\sum_{j = 1}^{k}\exp(t_{j})}$ . By basic calculus, we can derive

$$
\frac{\partial \ell_{\mathrm{ce}} (t , y)}{\partial t_{i}} = \phi_{i} - 1 \{y = i \}, \tag {2.16}
$$

where  $1\{\cdot \}$  is the indicator function, that is,  $1\{y = i\} = 1$  if  $y = i$ , and  $1\{y = i\} = 0$  if  $y \neq i$ . Alternatively, in vectorized notations, we have the following form which will be useful for Chapter 7:

$$
\frac{\partial \ell_{\mathrm{ce}} (t , y)}{\partial t} = \phi - e_{y}, \tag {2.17}
$$

where  $e_s \in \mathbb{R}^k$  is the  $s$ -th natural basis vector (where the  $s$ -th entry is 1 and all other entries are zeros.) Using Chain rule, we have that

$$
\frac{\partial \ell_{\mathrm{ce}} ((\theta_{1}^{\top} x , \ldots , \theta_{k}^{\top} x) , y)}{\partial \theta_{i}} = \frac{\partial \ell (t , y)}{\partial t_{i}} \cdot \frac{\partial t_{i}}{\partial \theta_{i}} = (\phi_{i} - 1 \{y = i \}) \cdot x. \qquad (2. 1 8)
$$

Therefore, the gradient of the loss with respect to the part of parameter  $\theta_{i}$  is

$$
\frac{\partial \ell (\theta)}{\partial \theta_{i}} = \sum_{j = 1}^{n} \left(\phi_{i}^{(j)} - 1 \{y^{(j)} = i \}\right) \cdot x^{(j)}, \tag {2.19}
$$

where  $\phi_i^{(j)} = \frac{\exp(\theta_i^\top x^{(j)})}{\sum_{s=1}^k \exp(\theta_s^\top x^{(j)})}$  is the probability that the model predicts item  $i$  for example  $x^{(j)}$ . With the gradients above, one can implement (stochastic) gradient descent to minimize the loss function  $\ell(\theta)$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/b66d2f16c3ff550a0103453147a1ebd3f0a156ae242a5bb2dd1c7b94234f4c1c.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/4d58aeb37981cdb9514be68e5d1051d02cf7ccac72f96a3807648bc979ca5089.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/60e8420a45f782e8de0a5a5a7b0a18afc18b7339ac3e89798b0a18fb4c729647.jpg)

# 2.4 Another algorithm for maximizing  $\ell(\theta)$

Returning to logistic regression with  $g(z)$  being the sigmoid function, let's now talk about a different algorithm for maximizing  $\ell(\theta)$ .

To get us started, let's consider Newton's method for finding a zero of a function. Specifically, suppose we have some function  $f: \mathbb{R} \mapsto \mathbb{R}$ , and we wish to find a value of  $\theta$  so that  $f(\theta) = 0$ . Here,  $\theta \in \mathbb{R}$  is a real number. Newton's method performs the following update:

$$
\theta := \theta - \frac{f (\theta)}{f^{\prime} (\theta)}.
$$

This method has a natural interpretation in which we can think of it as approximating the function  $f$  via a linear function that is tangent to  $f$  at the current guess  $\theta$ , solving for where that linear function equals to zero, and letting the next guess for  $\theta$  be where that linear function is zero.

Here's a picture of the Newton's method in action:

In the leftmost figure, we see the function  $f$  plotted along with the line  $y = 0$ . We're trying to find  $\theta$  so that  $f(\theta) = 0$ ; the value of  $\theta$  that achieves this is about 1.3. Suppose we initialized the algorithm with  $\theta = 4.5$ . Newton's method then fits a straight line tangent to  $f$  at  $\theta = 4.5$ , and solves for the where that line evaluates to 0. (Middle figure.) This gives us the next guess for  $\theta$ , which is about 2.8. The rightmost figure shows the result of running one more iteration, which the updates  $\theta$  to about 1.8. After a few more iterations, we rapidly approach  $\theta = 1.3$ .

Newton's method gives a way of getting to  $f(\theta) = 0$ . What if we want to use it to maximize some function  $\ell$ ? The maxima of  $\ell$  correspond to points where its first derivative  $\ell'(\theta)$  is zero. So, by letting  $f(\theta) = \ell'(\theta)$ , we can use the same algorithm to maximize  $\ell$ , and we obtain update rule:

$$
\theta := \theta - \frac{\ell^{\prime} (\theta)}{\ell^{\prime \prime} (\theta)}.
$$

(Something to think about: How would this change if we wanted to use Newton's method to minimize rather than maximize a function?)

Lastly, in our logistic regression setting,  $\theta$  is vector-valued, so we need to generalize Newton's method to this setting. The generalization of Newton's method to this multidimensional setting (also called the Newton-Raphson method) is given by

$$
\theta := \theta - H^{- 1} \nabla_{\theta} \ell (\theta).
$$

Here,  $\nabla_{\theta}\ell (\theta)$  is, as usual, the vector of partial derivatives of  $\ell (\theta)$  with respect to the  $\theta_{i}$ 's; and  $H$  is an  $d$ -by-  $d$  matrix (actually,  $d + 1 - by - d + 1$ , assuming that we include the intercept term) called the Hessian, whose entries are given by

$$
H_{i j} = \frac{\partial^{2} \ell (\theta)}{\partial \theta_{i} \partial \theta_{j}}.
$$

Newton's method typically enjoys faster convergence than (batch) gradient descent, and requires many fewer iterations to get very close to the minimum. One iteration of Newton's can, however, be more expensive than one iteration of gradient descent, since it requires finding and inverting an  $d$ -by- $d$  Hessian; but so long as  $d$  is not too large, it is usually much faster overall. When Newton's method is applied to maximize the logistic regression log likelihood function  $\ell(\theta)$ , the resulting method is also called Fisher scoring.

# Chapter 3

# Generalized linear models

So far, we've seen a regression example, and a classification example. In the regression example, we had  $y|x; \theta \sim \mathcal{N}(\mu, \sigma^2)$ , and in the classification one,  $y|x; \theta \sim \text{Bernoulli}(\phi)$ , for some appropriate definitions of  $\mu$  and  $\phi$  as functions of  $x$  and  $\theta$ . In this section, we will show that both of these methods are special cases of a broader family of models, called Generalized Linear Models (GLMs). $^1$  We will also show how other models in the GLM family can be derived and applied to other classification and regression problems.

# 3.1 The exponential family

To work our way up to GLMs, we will begin by defining exponential family distributions. We say that a class of distributions is in the exponential family if it can be written in the form

$$
p (y; \eta) = b (y) \exp (\eta^{T} T (y) - a (\eta)) \tag {3.1}
$$

Here,  $\eta$  is called the natural parameter (also called the canonical parameter) of the distribution;  $T(y)$  is the sufficient statistic (for the distributions we consider, it will often be the case that  $T(y) = y$ ); and  $a(\eta)$  is the log partition function. The quantity  $e^{-a(\eta)}$  essentially plays the role of a normalization constant, that makes sure the distribution  $p(y;\eta)$  sums/integrates over  $y$  to 1.

A fixed choice of  $T$ ,  $a$  and  $b$  defines a family (or set) of distributions that is parameterized by  $\eta$ ; as we vary  $\eta$ , we then get different distributions within this family.

We now show that the Bernoulli and the Gaussian distributions are examples of exponential family distributions. The Bernoulli distribution with mean  $\phi$ , written  $\operatorname{Bernoulli}(\phi)$ , specifies a distribution over  $y \in \{0,1\}$ , so that  $p(y = 1; \phi) = \phi$ ;  $p(y = 0; \phi) = 1 - \phi$ . As we vary  $\phi$ , we obtain Bernoulli distributions with different means. We now show that this class of Bernoulli distributions, ones obtained by varying  $\phi$ , is in the exponential family; i.e., that there is a choice of  $T$ ,  $a$  and  $b$  so that Equation (3.1) becomes exactly the class of Bernoulli distributions.

We write the Bernoulli distribution as:

$$
\begin{array}{l} p (y; \phi) = \phi^{y} (1 - \phi)^{1 - y} \\ = \exp (y \log \phi + (1 - y) \log (1 - \phi)) \\ = \exp \left(\left(\log \left(\frac{\phi}{1 - \phi}\right)\right) y + \log (1 - \phi)\right). \\ \end{array}
$$

Thus, the natural parameter is given by  $\eta = \log (\phi /(1 - \phi))$ . Interestingly, if we invert this definition for  $\eta$  by solving for  $\phi$  in terms of  $\eta$ , we obtain  $\phi = 1 / (1 + e^{-\eta})$ . This is the familiar sigmoid function! This will come up again when we derive logistic regression as a GLM. To complete the formulation of the Bernoulli distribution as an exponential family distribution, we also have

$$
\begin{array}{l} T (y) = y \\ a (\eta) = - \log (1 - \phi) \\ = \log (1 + e^{\eta}) \\ b (y) = 1 \\ \end{array}
$$

This shows that the Bernoulli distribution can be written in the form of Equation (3.1), using an appropriate choice of  $T$ ,  $a$  and  $b$ .

Let's now move on to consider the Gaussian distribution. Recall that, when deriving linear regression, the value of  $\sigma^2$  had no effect on our final choice of  $\theta$  and  $h_\theta(x)$ . Thus, we can choose an arbitrary value for  $\sigma^2$  without changing anything. To simplify the derivation below, let's set  $\sigma^2 = 1$ .<sup>2</sup> We

then have:

$$
\begin{array}{l} {p (y; \mu)} = {\frac{1}{\sqrt{2 \pi}} \exp \left(- \frac{1}{2} (y - \mu)^{2}\right)} \\ = \frac{1}{\sqrt{2 \pi}} \exp \left(- \frac{1}{2} y^{2}\right) \cdot \exp \left(\mu y - \frac{1}{2} \mu^{2}\right) \\ \end{array}
$$

Thus, we see that the Gaussian is in the exponential family, with

$$
\begin{array}{l} \eta = \mu \\ T (y) = y \\ a (\eta) = \mu^{2} / 2 \\ = \eta^{2} / 2 \\ b (y) = \left(1 / \sqrt{2 \pi}\right) \exp (- y^{2} / 2). \\ \end{array}
$$

There're many other distributions that are members of the exponential family: The multinomial (which we'll see later), the Poisson (for modelling count-data; also see the problem set); the gamma and the exponential (for modelling continuous, non-negative random variables, such as time-intervals); the beta and the Dirichlet (for distributions over probabilities); and many more. In the next section, we will describe a general "recipe" for constructing models in which  $y$  (given  $x$  and  $\theta$ ) comes from any of these distributions.

# 3.2 Constructing GLMs

Suppose you would like to build a model to estimate the number  $y$  of customers arriving in your store (or number of page-views on your website) in any given hour, based on certain features  $x$  such as store promotions, recent advertising, weather, day-of-week, etc. We know that the Poisson distribution usually gives a good model for numbers of visitors. Knowing this, how can we come up with a model for our problem? Fortunately, the Poisson is an exponential family distribution, so we can apply a Generalized Linear Model (GLM). In this section, we will we will describe a method for constructing GLM models for problems such as these.

More generally, consider a classification or regression problem where we would like to predict the value of some random variable  $y$  as a function of  $x$ . To derive a GLM for this problem, we will make the following three assumptions about the conditional distribution of  $y$  given  $x$  and about our model:

1.  $y \mid x; \theta \sim \mathrm{ExponentialFamily}(\eta)$ . I.e., given  $x$  and  $\theta$ , the distribution of  $y$  follows some exponential family distribution, with parameter  $\eta$ .  
2. Given  $x$ , our goal is to predict the expected value of  $T(y)$  given  $x$ . In most of our examples, we will have  $T(y) = y$ , so this means we would like the prediction  $h(x)$  output by our learned hypothesis  $h$  to satisfy  $h(x) = \operatorname{E}[y|x]$ . (Note that this assumption is satisfied in the choices for  $h_{\theta}(x)$  for both logistic regression and linear regression. For instance, in logistic regression, we had  $h_{\theta}(x) = p(y = 1|x;\theta) = 0 \cdot p(y = 0|x;\theta) + 1 \cdot p(y = 1|x;\theta) = \operatorname{E}[y|x;\theta]$ .)  
3. The natural parameter  $\eta$  and the inputs  $x$  are related linearly:  $\eta = \theta^T x$ . (Or, if  $\eta$  is vector-valued, then  $\eta_i = \theta_i^T x$ .)

The third of these assumptions might seem the least well justified of the above, and it might be better thought of as a "design choice" in our recipe for designing GLMs, rather than as an assumption per se. These three assumptions/design choices will allow us to derive a very elegant class of learning algorithms, namely GLMs, that have many desirable properties such as ease of learning. Furthermore, the resulting models are often very effective for modelling different types of distributions over  $y$ ; for example, we will shortly show that both logistic regression and ordinary least squares can both be derived as GLMs.

# 3.2.1 Ordinary least squares

To show that ordinary least squares is a special case of the GLM family of models, consider the setting where the target variable  $y$  (also called the response variable in GLM terminology) is continuous, and we model the conditional distribution of  $y$  given  $x$  as a Gaussian  $\mathcal{N}(\mu, \sigma^2)$ . (Here,  $\mu$  may depend  $x$ .) So, we let the ExponentialFamily  $(\eta)$  distribution above be the Gaussian distribution. As we saw previously, in the formulation of the Gaussian as an exponential family distribution, we had  $\mu = \eta$ . So, we have

$$
\begin{array}{l} h_{\theta} (x) = E [ y | x; \theta ] \\ = \mu \\ = \eta \\ = \theta^{T} x. \\ \end{array}
$$

The first equality follows from Assumption 2, above; the second equality follows from the fact that  $y|x;\theta \sim \mathcal{N}(\mu ,\sigma^2)$ , and so its expected value is given

by  $\mu$ ; the third equality follows from Assumption 1 (and our earlier derivation showing that  $\mu = \eta$  in the formulation of the Gaussian as an exponential family distribution); and the last equality follows from Assumption 3.

# 3.2.2 Logistic regression

We now consider logistic regression. Here we are interested in binary classification, so  $y \in \{0,1\}$ . Given that  $y$  is binary-valued, it therefore seems natural to choose the Bernoulli family of distributions to model the conditional distribution of  $y$  given  $x$ . In our formulation of the Bernoulli distribution as an exponential family distribution, we had  $\phi = 1 / (1 + e^{-\eta})$ . Furthermore, note that if  $y|x; \theta \sim \mathrm{Bernoulli}(\phi)$ , then  $\operatorname{E}[y|x;\theta] = \phi$ . So, following a similar derivation as the one for ordinary least squares, we get:

$$
\begin{array}{l} h_{\theta} (x) = E [ y | x; \theta ] \\ = \phi \\ = 1 / \left(1 + e^{- \eta}\right) \\ = 1 / \left(1 + e^{- \theta^{T} x}\right) \\ \end{array}
$$

So, this gives us hypothesis functions of the form  $h_{\theta}(x) = 1 / (1 + e^{-\theta^T x})$ . If you are previously wondering how we came up with the form of the logistic function  $1 / (1 + e^{-z})$ , this gives one answer: Once we assume that  $y$  conditioned on  $x$  is Bernoulli, it arises as a consequence of the definition of GLMs and exponential family distributions.

To introduce a little more terminology, the function  $g$  giving the distribution's mean as a function of the natural parameter  $(g(\eta) = \operatorname{E}[T(y); \eta])$  is called the canonical response function. Its inverse,  $g^{-1}$ , is called the canonical link function. Thus, the canonical response function for the Gaussian family is just the identify function; and the canonical response function for the Bernoulli is the logistic function.

# Chapter 4

# Generative learning algorithms

So far, we've mainly been talking about learning algorithms that model  $p(y|x;\theta)$ , the conditional distribution of  $y$  given  $x$ . For instance, logistic regression modeled  $p(y|x;\theta)$  as  $h_\theta(x) = g(\theta^T x)$  where  $g$  is the sigmoid function. In these notes, we'll talk about a different type of learning algorithm.

Consider a classification problem in which we want to learn to distinguish between elephants ( $y = 1$ ) and dogs ( $y = 0$ ), based on some features of an animal. Given a training set, an algorithm like logistic regression or the perceptron algorithm (basically) tries to find a straight line—that is, a decision boundary—that separates the elephants and dogs. Then, to classify a new animal as either an elephant or a dog, it checks on which side of the decision boundary it falls, and makes its prediction accordingly.

Here's a different approach. First, looking at elephants, we can build a model of what elephants look like. Then, looking at dogs, we can build a separate model of what dogs look like. Finally, to classify a new animal, we can match the new animal against the elephant model, and match it against the dog model, to see whether the new animal looks more like the elephants or more like the dogs we had seen in the training set.

Algorithms that try to learn  $p(y|x)$  directly (such as logistic regression), or algorithms that try to learn mappings directly from the space of inputs  $\mathcal{X}$  to the labels  $\{0,1\}$ , (such as the perceptron algorithm) are called discriminative learning algorithms. Here, we'll talk about algorithms that instead try to model  $p(x|y)$  (and  $p(y)$ ). These algorithms are called generative learning algorithms. For instance, if  $y$  indicates whether an example is a dog (0) or an elephant (1), then  $p(x|y = 0)$  models the distribution of dogs' features, and  $p(x|y = 1)$  models the distribution of elephants' features.

After modeling  $p(y)$  (called the class priors) and  $p(x|y)$ , our algorithm

can then use Bayes rule to derive the posterior distribution on  $y$  given  $x$ :

$$
p (y | x) = \frac{p (x | y) p (y)}{p (x)}.
$$

Here, the denominator is given by  $p(x) = p(x|y = 1)p(y = 1) + p(x|y = 0)p(y = 0)$  (you should be able to verify that this is true from the standard properties of probabilities), and thus can also be expressed in terms of the quantities  $p(x|y)$  and  $p(y)$  that we've learned. Actually, if we're calculating  $p(y|x)$  in order to make a prediction, then we don't actually need to calculate the denominator, since

$$
\begin{array}{l} \arg \max_{y} p (y | x) = \arg \max_{y} \frac{p (x | y) p (y)}{p (x)} \\ = \arg \max_{y} p (x | y) p (y). \\ \end{array}
$$

# 4.1 Gaussian discriminant analysis

The first generative learning algorithm that we'll look at is Gaussian discriminant analysis (GDA). In this model, we'll assume that  $p(x|y)$  is distributed according to a multivariate normal distribution. Let's talk briefly about the properties of multivariate normal distributions before moving on to the GDA model itself.

# 4.1.1 The multivariate normal distribution

The multivariate normal distribution in  $d$ -dimensions, also called the multivariate Gaussian distribution, is parameterized by a mean vector  $\mu \in \mathbb{R}^d$  and a covariance matrix  $\Sigma \in \mathbb{R}^{d\times d}$ , where  $\Sigma \geq 0$  is symmetric and positive semi-definite. Also written “ $\mathcal{N}(\mu, \Sigma)$ ”, its density is given by:

$$
p (x; \mu , \Sigma) = \frac{1}{(2 \pi)^{d / 2} | \Sigma |^{1 / 2}} \exp \left(- \frac{1}{2} (x - \mu)^{T} \Sigma^{- 1} (x - \mu)\right).
$$

In the equation above,  $|\Sigma|$  denotes the determinant of the matrix  $\Sigma$ .

For a random variable  $X$  distributed  $\mathcal{N}(\mu, \Sigma)$ , the mean is (unsurprisingly) given by  $\mu$ :

$$
\operatorname{E} [ X ] = \int_{x} x p (x; \mu , \Sigma) d x = \mu
$$

The covariance of a vector-valued random variable  $Z$  is defined as  $\operatorname{Cov}(Z) = \operatorname{E}[(Z - \operatorname{E}[Z])(Z - \operatorname{E}[Z])^T]$ . This generalizes the notion of the variance of a

real-valued random variable. The covariance can also be defined as  $\operatorname{Cov}(Z) = \operatorname{E}[ZZ^T] - (\operatorname{E}[Z])(\operatorname{E}[Z])^T$ . (You should be able to prove to yourself that these two definitions are equivalent.) If  $X \sim \mathcal{N}(\mu, \Sigma)$ , then

$$
\operatorname{Cov} (X) = \Sigma .
$$

Here are some examples of what the density of a Gaussian distribution looks like:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/12c55d89f6a0394edebc4e6c454366ee8eed959d93c316c7a0611e8ccd27b78d.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/1c847d194b797d6a555fdd491c11160f7285b4d0c5a51e09802d514863b8802d.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/8c32f0d9b119cafa61b990f4ebf8a889b16e43e89a58e0d05f0d103a888944b1.jpg)

The left-most figure shows a Gaussian with mean zero (that is, the 2x1 zero-vector) and covariance matrix  $\Sigma = I$  (the 2x2 identity matrix). A Gaussian with zero mean and identity covariance is also called the standard normal distribution. The middle figure shows the density of a Gaussian with zero mean and  $\Sigma = 0.6I$ ; and in the rightmost figure shows one with,  $\Sigma = 2I$ . We see that as  $\Sigma$  becomes larger, the Gaussian becomes more "spread-out," and as it becomes smaller, the distribution becomes more "compressed."

Let's look at some more examples.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/56fc94c715ed968579aa2b515f6dd2a73059e4d4de8cfbaa301e2aafc40f1b1c.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/f3ee55846fc185b659f79d3a76241b13a2fd36a2592df02b21fcdd08be0b4aa0.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/d7a3dff9ec35b3db5d8ad990183004e4d20dc141b842c0989f91da9762a70624.jpg)

The figures above show Gaussians with mean 0, and with covariance matrices respectively

$$
\Sigma = \left[ \begin{array}{l l} 1 & 0 \\ 0 & 1 \end{array} \right]; \Sigma = \left[ \begin{array}{l l} 1 & 0. 5 \\ 0. 5 & 1 \end{array} \right]; \Sigma = \left[ \begin{array}{l l} 1 & 0. 8 \\ 0. 8 & 1 \end{array} \right].
$$

The leftmost figure shows the familiar standard normal distribution, and we see that as we increase the off-diagonal entry in  $\Sigma$ , the density becomes more

"compressed" towards the  $45^{\circ}$  line (given by  $x_{1} = x_{2}$ ). We can see this more clearly when we look at the contours of the same three densities:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/0907661e4f412d6089f9cf73aedb933c0769099e239ec617c95d85162dbb0f11.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/41384c77b3dbdb044310880c82cfcaf394e0e9c3f0271ba983dee4b12c144779.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/e3d7b4412591e0e0f528ed46699a456b33e405c5de7a2b8e84b06f56f723b7ef.jpg)

Here's one last set of examples generated by varying  $\Sigma$ :

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/8d039be487a238fc35fa1e204a01f0698a88652570b05095c163d6bdd65ddebd.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/fe323b9c2964259cc3cc5d2002b722d56053705204c4a9a4e96ae1f7a53e6848.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/ba05e5c6a3b68444a3a2ec840aa72f02a6fb7bb45dcb6296faca92de29d4dd82.jpg)

The plots above used, respectively,

$$
\Sigma = \left[ \begin{array}{c c} 1 & - 0. 5 \\ - 0. 5 & 1 \end{array} \right]; \Sigma = \left[ \begin{array}{c c} 1 & - 0. 8 \\ - 0. 8 & 1 \end{array} \right]; \Sigma = \left[ \begin{array}{c c} 3 & 0. 8 \\ 0. 8 & 1 \end{array} \right].
$$

From the leftmost and middle figures, we see that by decreasing the off-diagonal elements of the covariance matrix, the density now becomes "compressed" again, but in the opposite direction. Lastly, as we vary the parameters, more generally the contours will form ellipses (the rightmost figure showing an example).

As our last set of examples, fixing  $\Sigma = I$ , by varying  $\mu$ , we can also move the mean of the density around.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/5e6f7b2bee267cc7e9c0e7dfb25d3afb7f51daccba02e9496baeb520e878eb3e.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/78685ed028e0becba95ff542008a026994ae3922146bd2d0c9638a31dbdbc2f6.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/b6b16a199ba082fc69eecbb1a735b394306512e9b480b9e25d1bcf4df72706b3.jpg)

The figures above were generated using  $\Sigma = I$ , and respectively

$$
\mu = \left[ \begin{array}{c} 1 \\ 0 \end{array} \right]; \mu = \left[ \begin{array}{c} - 0. 5 \\ 0 \end{array} \right]; \mu = \left[ \begin{array}{c} - 1 \\ - 1. 5 \end{array} \right].
$$

# 4.1.2 The Gaussian discriminant analysis model

When we have a classification problem in which the input features  $x$  are continuous-valued random variables, we can then use the Gaussian Discriminant Analysis (GDA) model, which models  $p(x|y)$  using a multivariate normal distribution. The model is:

$$
y \sim \operatorname{Bernoulli} (\phi)
$$

$$
x | y = 0 \sim \mathcal {N} (\mu_{0}, \Sigma)
$$

$$
x | y = 1 \sim \mathcal {N} (\mu_{1}, \Sigma)
$$

Writing out the distributions, this is:

$$
p (y) = \phi^{y} (1 - \phi)^{1 - y}
$$

$$
p (x | y = 0) = \frac{1}{(2 \pi)^{d / 2} | \Sigma |^{1 / 2}} \exp \left(- \frac{1}{2} (x - \mu_{0})^{T} \Sigma^{- 1} (x - \mu_{0})\right)
$$

$$
p (x | y = 1) = \frac{1}{(2 \pi)^{d / 2} | \Sigma |^{1 / 2}} \exp \left(- \frac{1}{2} (x - \mu_{1})^{T} \Sigma^{- 1} (x - \mu_{1})\right)
$$

Here, the parameters of our model are  $\phi$ ,  $\Sigma$ ,  $\mu_0$  and  $\mu_1$ . (Note that while there're two different mean vectors  $\mu_0$  and  $\mu_1$ , this model is usually applied using only one covariance matrix  $\Sigma$ .) The log-likelihood of the data is given by

$$
\begin{array}{l} \ell (\phi , \mu_{0}, \mu_{1}, \Sigma) = \log \prod_{i = 1}^{n} p (x^{(i)}, y^{(i)}; \phi , \mu_{0}, \mu_{1}, \Sigma) \\ = \log \prod_{i = 1}^{n} p (x^{(i)} | y^{(i)}; \mu_{0}, \mu_{1}, \Sigma) p (y^{(i)}; \phi). \\ \end{array}
$$

By maximizing  $\ell$  with respect to the parameters, we find the maximum likelihood estimate of the parameters (see problem set 1) to be:

$$
\phi = \frac{1}{n} \sum_{i = 1}^{n} 1 \left\{y^{(i)} = 1 \right\}
$$

$$
\mu_{0} = \frac{\sum_{i = 1}^{n} 1 \{y^{(i)} = 0 \} x^{(i)}}{\sum_{i = 1}^{n} 1 \{y^{(i)} = 0 \}}
$$

$$
\mu_{1} = \frac{\sum_{i = 1}^{n} 1 \{y^{(i)} = 1 \} x^{(i)}}{\sum_{i = 1}^{n} 1 \{y^{(i)} = 1 \}}
$$

$$
\Sigma = \frac{1}{n} \sum_{i = 1}^{n} \left(x^{(i)} - \mu_{y^{(i)}}\right) \left(x^{(i)} - \mu_{y^{(i)}}\right)^{T}.
$$

Pictorially, what the algorithm is doing can be seen in as follows:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/08b5b3460b29daca19a248cbdf2976fc00b18fe9254a6e3c366781c8b9130133.jpg)

Shown in the figure are the training set, as well as the contours of the two Gaussian distributions that have been fit to the data in each of the two classes. Note that the two Gaussians have contours that are the same shape and orientation, since they share a covariance matrix  $\Sigma$ , but they have different means  $\mu_0$  and  $\mu_1$ . Also shown in the figure is the straight line giving the decision boundary at which  $p(y = 1|x) = 0.5$ . On one side of the boundary, we'll predict  $y = 1$  to be the most likely outcome, and on the other side, we'll predict  $y = 0$ .

# 4.1.3 Discussion: GDA and logistic regression

The GDA model has an interesting relationship to logistic regression. If we view the quantity  $p(y = 1|x;\phi ,\mu_0,\mu_1,\Sigma)$  as a function of  $x$ , we'll find that it can be expressed in the form

$$
p (y = 1 | x; \phi , \Sigma , \mu_{0}, \mu_{1}) = \frac{1}{1 + \exp (- \theta^{T} x)},
$$

where  $\theta$  is some appropriate function of  $\phi, \Sigma, \mu_0, \mu_1$ . This is exactly the form that logistic regression—a discriminative algorithm—used to model  $p(y = 1|x)$ .

When would we prefer one model over another? GDA and logistic regression will, in general, give different decision boundaries when trained on the same dataset. Which is better?

We just argued that if  $p(x|y)$  is multivariate gaussian (with shared  $\Sigma$ ), then  $p(y|x)$  necessarily follows a logistic function. The converse, however, is not true; i.e.,  $p(y|x)$  being a logistic function does not imply  $p(x|y)$  is multivariate gaussian. This shows that GDA makes stronger modeling assumptions about the data than does logistic regression. It turns out that when these modeling assumptions are correct, then GDA will find better fits to the data, and is a better model. Specifically, when  $p(x|y)$  is indeed gaussian (with shared  $\Sigma$ ), then GDA is asymptotically efficient. Informally, this means that in the limit of very large training sets (large  $n$ ), there is no algorithm that is strictly better than GDA (in terms of, say, how accurately they estimate  $p(y|x)$ ). In particular, it can be shown that in this setting, GDA will be a better algorithm than logistic regression; and more generally, even for small training set sizes, we would generally expect GDA to be better.

In contrast, by making significantly weaker assumptions, logistic regression is also more robust and less sensitive to incorrect modeling assumptions. There are many different sets of assumptions that would lead to  $p(y|x)$  taking the form of a logistic function. For example, if  $x|y = 0 \sim \mathrm{Poisson}(\lambda_0)$ , and  $x|y = 1 \sim \mathrm{Poisson}(\lambda_1)$ , then  $p(y|x)$  will be logistic. Logistic regression will also work well on Poisson data like this. But if we were to use GDA on such data—and fit Gaussian distributions to such non-Gaussian data—then the results will be less predictable, and GDA may (or may not) do well.

To summarize: GDA makes stronger modeling assumptions, and is more data efficient (i.e., requires less training data to learn "well") when the modeling assumptions are correct or at least approximately correct. Logistic

regression makes weaker assumptions, and is significantly more robust to deviations from modeling assumptions. Specifically, when the data is indeed non-Gaussian, then in the limit of large datasets, logistic regression will almost always do better than GDA. For this reason, in practice logistic regression is used more often than GDA. (Some related considerations about discriminative vs. generative models also apply for the Naive Bayes algorithm that we discuss next, but the Naive Bayes algorithm is still considered a very good, and is certainly also a very popular, classification algorithm.)

# 4.2 Naive bayes (Option Reading)

In GDA, the feature vectors  $x$  were continuous, real-valued vectors. Let's now talk about a different learning algorithm in which the  $x_{j}$ 's are discrete-valued.

For our motivating example, consider building an email spam filter using machine learning. Here, we wish to classify messages according to whether they are unsolicited commercial (spam) email, or non-spam email. After learning to do this, we can then have our mail reader automatically filter out the spam messages and perhaps place them in a separate mail folder. Classifying emails is one example of a broader set of problems called text classification.

Let's say we have a training set (a set of emails labeled as spam or non-spam). We'll begin our construction of our spam filter by specifying the features  $x_{j}$  used to represent an email.

We will represent an email via a feature vector whose length is equal to the number of words in the dictionary. Specifically, if an email contains the  $j$ -th word of the dictionary, then we will set  $x_{j} = 1$ ; otherwise, we let  $x_{j} = 0$ . For instance, the vector

$$
x = \left[ \begin{array}{l l} 1 & \text{a} \\ 0 & \text{aardvark} \\ 0 & \text{aardwolf} \\ \vdots & \vdots \\ 1 & \text{buy} \\ \vdots & \vdots \\ 0 & \text{zygmurgy} \end{array} \right]
$$

is used to represent an email that contains the words “a” and “buy,” but not

“aardvark,” “aardwolf” or “zygmurgy.”² The set of words encoded into the feature vector is called the vocabulary, so the dimension of  $x$  is equal to the size of the vocabulary.

Having chosen our feature vector, we now want to build a generative model. So, we have to model  $p(x|y)$ . But if we have, say, a vocabulary of 50000 words, then  $x \in \{0,1\}^{50000}$  ( $x$  is a 50000-dimensional vector of 0's and 1's), and if we were to model  $x$  explicitly with a multinomial distribution over the  $2^{50000}$  possible outcomes, then we'd end up with a  $(2^{50000} - 1)$ -dimensional parameter vector. This is clearly too many parameters.

To model  $p(x|y)$ , we will therefore make a very strong assumption. We will assume that the  $x_{i}$ 's are conditionally independent given  $y$ . This assumption is called the Naive Bayes (NB) assumption, and the resulting algorithm is called the Naive Bayes classifier. For instance, if  $y = 1$  means spam email; "buy" is word 2087 and "price" is word 39831; then we are assuming that if I tell you  $y = 1$  (that a particular piece of email is spam), then knowledge of  $x_{2087}$  (knowledge of whether "buy" appears in the message) will have no effect on your beliefs about the value of  $x_{39831}$  (whether "price" appears). More formally, this can be written  $p(x_{2087}|y) = p(x_{2087}|y, x_{39831})$ . (Note that this is not the same as saying that  $x_{2087}$  and  $x_{39831}$  are independent, which would have been written "  $p(x_{2087}) = p(x_{2087}|x_{39831})$ "; rather, we are only assuming that  $x_{2087}$  and  $x_{39831}$  are conditionally independent given  $y$ .)

We now have:

$$
\begin{array}{l} p (x_{1}, \dots , x_{5 0 0 0 0} | y) \\ = p \left(x_{1} | y\right) p \left(x_{2} | y, x_{1}\right) p \left(x_{3} | y, x_{1}, x_{2}\right) \dots p \left(x_{5 0 0 0 0} | y, x_{1}, \dots , x_{4 9 9 9 9}\right) \\ = p \left(x_{1} | y\right) p \left(x_{2} | y\right) p \left(x_{3} | y\right) \dots p \left(x_{5 0 0 0 0} | y\right) \\ = \prod_{j = 1}^{d} p (x_{j} | y) \\ \end{array}
$$

The first equality simply follows from the usual properties of probabilities, and the second equality used the NB assumption. We note that even though

the Naive Bayes assumption is an extremely strong assumptions, the resulting algorithm works well on many problems.

Our model is parameterized by  $\phi_{j|y=1} = p(x_j = 1 | y = 1)$ ,  $\phi_{j|y=0} = p(x_j = 1 | y = 0)$ , and  $\phi_y = p(y = 1)$ . As usual, given a training set  $\{(x^{(i)}, y^{(i)}); i = 1, \ldots, n\}$ , we can write down the joint likelihood of the data:

$$
\mathcal {L} \left(\phi_{y}, \phi_{j | y = 0}, \phi_{j | y = 1}\right) = \prod_{i = 1}^{n} p \left(x^{(i)}, y^{(i)}\right).
$$

Maximizing this with respect to  $\phi_y, \phi_{j|y=0}$  and  $\phi_{j|y=1}$  gives the maximum likelihood estimates:

$$
\phi_{j | y = 1} = \frac{\sum_{i = 1}^{n} 1 \{x_{j}^{(i)} = 1 \wedge y^{(i)} = 1 \}}{\sum_{i = 1}^{n} 1 \{y^{(i)} = 1 \}}
$$

$$
\phi_{j | y = 0} = \frac{\sum_{i = 1}^{n} 1 \{x_{j}^{(i)} = 1 \wedge y^{(i)} = 0 \}}{\sum_{i = 1}^{n} 1 \{y^{(i)} = 0 \}}
$$

$$
\phi_{y} = \frac{\sum_{i = 1}^{n} 1 \{y^{(i)} = 1 \}}{n}
$$

In the equations above, the “ $\wedge$ ” symbol means “and.” The parameters have a very natural interpretation. For instance,  $\phi_{j|y=1}$  is just the fraction of the spam  $(y = 1)$  emails in which word  $j$  does appear.

Having fit all these parameters, to make a prediction on a new example with features  $x$ , we then simply calculate

$$
\begin{array}{l} p (y = 1 | x) = \frac{p (x | y = 1) p (y = 1)}{p (x)} \\ = \frac{\left(\prod_{j = 1}^{d} p (x_{j} | y = 1)\right) p (y = 1)}{\left(\prod_{j = 1}^{d} p (x_{j} | y = 1)\right) p (y = 1) + \left(\prod_{j = 1}^{d} p (x_{j} | y = 0)\right) p (y = 0)}, \\ \end{array}
$$

and pick whichever class has the higher posterior probability.

Lastly, we note that while we have developed the Naive Bayes algorithm mainly for the case of problems where the features  $x_{j}$  are binary-valued, the generalization to where  $x_{j}$  can take values in  $\{1,2,\dots,k_j\}$  is straightforward. Here, we would simply model  $p(x_{j}|y)$  as multinomial rather than as Bernoulli. Indeed, even if some original input attribute (say, the living area of a house, as in our earlier example) were continuous valued, it is quite common to discretize it—that is, turn it into a small set of discrete values—and apply Naive Bayes. For instance, if we use some feature  $x_{j}$  to represent living area, we might discretize the continuous values as follows:

<table><tr><td>Living area (sq. feet)</td><td>&lt; 400</td><td>400-800</td><td>800-1200</td><td>1200-1600</td><td>&gt;1600</td></tr><tr><td>xi</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td></tr></table>

Thus, for a house with living area 890 square feet, we would set the value of the corresponding feature  $x_{j}$  to 3. We can then apply the Naive Bayes algorithm, and model  $p(x_{j}|y)$  with a multinomial distribution, as described previously. When the original, continuous-valued attributes are not well-modeled by a multivariate normal distribution, discretizing the features and using Naive Bayes (instead of GDA) will often result in a better classifier.

# 4.2.1 Laplace smoothing

The Naive Bayes algorithm as we have described it will work fairly well for many problems, but there is a simple change that makes it work much better, especially for text classification. Let's briefly discuss a problem with the algorithm in its current form, and then talk about how we can fix it.

Consider spam/email classification, and let's suppose that, we are in the year of 20xx, after completing CS229 and having done excellent work on the project, you decide around May 20xx to submit work you did to the NeurIPS conference for publication. Because you end up discussing the conference in your emails, you also start getting messages with the word "neurips" in it. But this is your first NeurIPS paper, and until this time, you had not previously seen any emails containing the word "neurips"; in particular "neurips" did not ever appear in your training set of spam/non-spam emails. Assuming that "neurips" was the 35000th word in the dictionary, your Naive Bayes spam filter therefore had picked its maximum likelihood estimates of the parameters  $\phi_{35000|y}$  to be

$$
\phi_{3 5 0 0 0 | y = 1} = \frac{\sum_{i = 1}^{n} 1 \{x_{3 5 0 0 0}^{(i)} = 1 \wedge y^{(i)} = 1 \}}{\sum_{i = 1}^{n} 1 \{y^{(i)} = 1 \}} = 0
$$

$$
\phi_{3 5 0 0 0 | y = 0} = \frac{\sum_{i = 1}^{n} 1 \{x_{3 5 0 0 0}^{(i)} = 1 \wedge y^{(i)} = 0 \}}{\sum_{i = 1}^{n} 1 \{y^{(i)} = 0 \}} = 0
$$

I.e., because it has never seen "neurips" before in either spam or non-spam training examples, it thinks the probability of seeing it in either type of email is zero. Hence, when trying to decide if one of these messages containing

"neurips" is spam, it calculates the class posterior probabilities, and obtains

$$
\begin{array}{l} p (y = 1 | x) = \frac{\prod_{j = 1}^{d} p (x_{j} | y = 1) p (y = 1)}{\prod_{j = 1}^{d} p (x_{j} | y = 1) p (y = 1) + \prod_{j = 1}^{d} p (x_{j} | y = 0) p (y = 0)} \\ = \begin{array}{c} 0 \\ 0 \end{array} . \\ \end{array}
$$

This is because each of the terms “ $\prod_{j=1}^{d} p(x_j | y)$ ” includes a term  $p(x_{35000} | y) = 0$  that is multiplied into it. Hence, our algorithm obtains  $0 / 0$ , and doesn’t know how to make a prediction.

Stating the problem more broadly, it is statistically a bad idea to estimate the probability of some event to be zero just because you haven't seen it before in your finite training set. Take the problem of estimating the mean of a multinomial random variable  $z$  taking values in  $\{1, \ldots, k\}$ . We can parameterize our multinomial with  $\phi_j = p(z = j)$ . Given a set of  $n$  independent observations  $\{z^{(1)}, \ldots, z^{(n)}\}$ , the maximum likelihood estimates are given by

$$
\phi_{j} = \frac{\sum_{i = 1}^{n} 1 \{z^{(i)} = j \}}{n}.
$$

As we saw previously, if we were to use these maximum likelihood estimates, then some of the  $\phi_j$ 's might end up as zero, which was a problem. To avoid this, we can use Laplace smoothing, which replaces the above estimate with

$$
\phi_{j} = \frac{1 + \sum_{i = 1}^{n} 1 \{z^{(i)} = j \}}{k + n}.
$$

Here, we've added 1 to the numerator, and  $k$  to the denominator. Note that  $\sum_{j=1}^{k} \phi_j = 1$  still holds (check this yourself!), which is a desirable property since the  $\phi_j$ 's are estimates for probabilities that we know must sum to 1. Also,  $\phi_j \neq 0$  for all values of  $j$ , solving our problem of probabilities being estimated as zero. Under certain (arguably quite strong) conditions, it can be shown that the Laplace smoothing actually gives the optimal estimator of the  $\phi_j$ 's.

Returning to our Naive Bayes classifier, with Laplace smoothing, we therefore obtain the following estimates of the parameters:

$$
\begin{array}{l} \phi_{j | y = 1} = \frac{1 + \sum_{i = 1}^{n} 1 \{x_{j}^{(i)} = 1 \wedge y^{(i)} = 1 \}}{2 + \sum_{i = 1}^{n} 1 \{y^{(i)} = 1 \}} \\ \phi_{j | y = 0} = \frac{1 + \sum_{i = 1}^{n} 1 \{x_{j}^{(i)} = 1 \wedge y^{(i)} = 0 \}}{2 + \sum_{i = 1}^{n} 1 \{y^{(i)} = 0 \}} \\ \end{array}
$$

(In practice, it usually doesn't matter much whether we apply Laplace smoothing to  $\phi_y$  or not, since we will typically have a fair fraction each of spam and non-spam messages, so  $\phi_y$  will be a reasonable estimate of  $p(y = 1)$  and will be quite far from 0 anyway.)

# 4.2.2 Event models for text classification

To close off our discussion of generative learning algorithms, let's talk about one more model that is specifically for text classification. While Naive Bayes as we've presented it will work well for many classification problems, for text classification, there is a related model that does even better.

In the specific context of text classification, Naive Bayes as presented uses the what's called the Bernoulli event model (or sometimes multi-variate Bernoulli event model). In this model, we assumed that the way an email is generated is that first it is randomly determined (according to the class priors  $p(y)$ ) whether a spammer or non-spammer will send you your next message. Then, the person sending the email runs through the dictionary, deciding whether to include each word  $j$  in that email independently and according to the probabilities  $p(x_{j} = 1|y) = \phi_{j|y}$ . Thus, the probability of a message was given by  $p(y)\prod_{j = 1}^{d}p(x_{j}|y)$ .

Here's a different model, called the Multinomial event model. To describe this model, we will use a different notation and set of features for representing emails. We let  $x_{j}$  denote the identity of the  $j$ -th word in the email. Thus,  $x_{j}$  is now an integer taking values in  $\{1, \ldots, |V|\}$ , where  $|V|$  is the size of our vocabulary (dictionary). An email of  $d$  words is now represented by a vector  $(x_{1}, x_{2}, \ldots, x_{d})$  of length  $d$ ; note that  $d$  can vary for different documents. For instance, if an email starts with "A NeurIPS ..., then  $x_{1} = 1$  ("a" is the first word in the dictionary), and  $x_{2} = 35000$  (if "neurips" is the 35000th word in the dictionary).

In the multinomial event model, we assume that the way an email is generated is via a random process in which spam/non-spam is first determined (according to  $p(y)$ ) as before. Then, the sender of the email writes the email by first generating  $x_{1}$  from some multinomial distribution over words  $(p(x_{1}|y))$ . Next, the second word  $x_{2}$  is chosen independently of  $x_{1}$  but from the same multinomial distribution, and similarly for  $x_{3}, x_{4}$ , and so on, until all  $d$  words of the email have been generated. Thus, the overall probability of a message is given by  $p(y)\prod_{j = 1}^{d}p(x_j|y)$ . Note that this formula looks like the one we had earlier for the probability of a message under the Bernoulli event model, but that the terms in the formula now mean very different things. In particular  $x_{j}|y$  is now a multinomial, rather than a Bernoulli distribution.

The parameters for our new model are  $\phi_y = p(y)$  as before,  $\phi_{k|y=1} = p(x_j = k|y = 1)$  (for any  $j$ ) and  $\phi_{k|y=0} = p(x_j = k|y = 0)$ . Note that we have assumed that  $p(x_j|y)$  is the same for all values of  $j$  (i.e., that the distribution according to which a word is generated does not depend on its position  $j$  within the email).

If we are given a training set  $\{(x^{(i)},y^{(i)});i = 1,\ldots ,n\}$  where  $x^{(i)} = (x_1^{(i)},x_2^{(i)},\dots,x_{d_i}^{(i)})$  (here,  $d_{i}$  is the number of words in the  $i$ -training example), the likelihood of the data is given by

$$
\begin{array}{l} \mathcal {L} \left(\phi_{y}, \phi_{k | y = 0}, \phi_{k | y = 1}\right) = \prod_{i = 1}^{n} p \left(x^{(i)}, y^{(i)}\right) \\ = \prod_{i = 1}^{n} \left(\prod_{j = 1}^{d_{i}} p \left(x_{j}^{(i)} \mid y; \phi_{k \mid y = 0}, \phi_{k \mid y = 1}\right)\right) p \left(y^{(i)}; \phi_{y}\right). \\ \end{array}
$$

Maximizing this yields the maximum likelihood estimates of the parameters:

$$
\phi_{k \mid y = 1} = \frac{\sum_{i = 1}^{n} \sum_{j = 1}^{d_{i}} 1 \left\{x_{j}^{(i)} = k \wedge y^{(i)} = 1 \right\}}{\sum_{i = 1}^{n} 1 \left\{y^{(i)} = 1 \right\} d_{i}}
$$

$$
\phi_{k | y = 0} = \frac{\sum_{i = 1}^{n} \sum_{j = 1}^{d_{i}} 1 \left\{x_{j}^{(i)} = k \wedge y^{(i)} = 0 \right\}}{\sum_{i = 1}^{n} 1 \left\{y^{(i)} = 0 \right\} d_{i}}
$$

$$
\phi_{y} = \frac{\sum_{i = 1}^{n} 1 \{y^{(i)} = 1 \}}{n}.
$$

If we were to apply Laplace smoothing (which is needed in practice for good performance) when estimating  $\phi_{k|y=0}$  and  $\phi_{k|y=1}$ , we add 1 to the numerators and  $|V|$  to the denominators, and obtain:

$$
\phi_{k | y = 1} = \frac{1 + \sum_{i = 1}^{n} \sum_{j = 1}^{d_{i}} 1 \{x_{j}^{(i)} = k \wedge y^{(i)} = 1 \}}{| V | + \sum_{i = 1}^{n} 1 \{y^{(i)} = 1 \} d_{i}}
$$

$$
\phi_{k | y = 0} = \frac{1 + \sum_{i = 1}^{n} \sum_{j = 1}^{d_{i}} 1 \{x_{j}^{(i)} = k \wedge y^{(i)} = 0 \}}{| V | + \sum_{i = 1}^{n} 1 \{y^{(i)} = 0 \} d_{i}}.
$$

While not necessarily the very best classification algorithm, the Naive Bayes classifier often works surprisingly well. It is often also a very good "first thing to try," given its simplicity and ease of implementation.

# Chapter 5

# Kernel methods

# 5.1 Feature maps

Recall that in our discussion about linear regression, we considered the problem of predicting the price of a house (denoted by  $y$ ) from the living area of the house (denoted by  $x$ ), and we fit a linear function of  $x$  to the training data. What if the price  $y$  can be more accurately represented as a non-linear function of  $x$ ? In this case, we need a more expressive family of models than linear models.

We start by considering fitting cubic functions  $y = \theta_3x^3 + \theta_2x^2 + \theta_1x + \theta_0$ . It turns out that we can view the cubic function as a linear function over the a different set of feature variables (defined below). Concretely, let the function  $\phi: \mathbb{R} \to \mathbb{R}^4$  be defined as

$$
\phi (x) = \left[ \begin{array}{c} 1 \\ x \\ x^{2} \\ x^{3} \end{array} \right] \in \mathbb {R}^{4}. \tag {5.1}
$$

Let  $\theta \in \mathbb{R}^4$  be the vector containing  $\theta_0, \theta_1, \theta_2, \theta_3$  as entries. Then we can rewrite the cubic function in  $x$  as:

$$
\theta_{3} x^{3} + \theta_{2} x^{2} + \theta_{1} x + \theta_{0} = \theta^{T} \phi (x)
$$

Thus, a cubic function of the variable  $x$  can be viewed as a linear function over the variables  $\phi(x)$ . To distinguish between these two sets of variables, in the context of kernel methods, we will call the "original" input value the input attributes of a problem (in this case,  $x$ , the living area). When the

original input is mapped to some new set of quantities  $\phi(x)$ , we will call those new quantities the features variables. (Unfortunately, different authors use different terms to describe these two things in different contexts.) We will call  $\phi$  a feature map, which maps the attributes to the features.

# 5.2 LMS (least mean squares) with features

We will derive the gradient descent algorithm for fitting the model  $\theta^T\phi (x)$ . First recall that for ordinary least square problem where we were to fit  $\theta^T x$ , the batch gradient descent update is (see the first lecture note for its derivation):

$$
\begin{array}{l} \theta := \theta + \alpha \sum_{i = 1}^{n} \left(y^{(i)} - h_{\theta} (x^{(i)})\right) x^{(i)} \\ := \theta + \alpha \sum_{i = 1}^{n} \left(y^{(i)} - \theta^{T} x^{(i)}\right) x^{(i)}. \tag {5.2} \\ \end{array}
$$

Let  $\phi : \mathbb{R}^d \to \mathbb{R}^p$  be a feature map that maps attribute  $x$  (in  $\mathbb{R}^d$ ) to the features  $\phi(x)$  in  $\mathbb{R}^p$ . (In the motivating example in the previous subsection, we have  $d = 1$  and  $p = 4$ .) Now our goal is to fit the function  $\theta^T \phi(x)$ , with  $\theta$  being a vector in  $\mathbb{R}^p$  instead of  $\mathbb{R}^d$ . We can replace all the occurrences of  $x^{(i)}$  in the algorithm above by  $\phi(x^{(i)})$  to obtain the new update:

$$
\theta := \theta + \alpha \sum_{i = 1}^{n} \left(y^{(i)} - \theta^{T} \phi \left(x^{(i)}\right)\right) \phi \left(x^{(i)}\right) \tag {5.3}
$$

Similarly, the corresponding stochastic gradient descent update rule is

$$
\theta := \theta + \alpha \left(y^{(i)} - \theta^{T} \phi \left(x^{(i)}\right)\right) \phi \left(x^{(i)}\right) \tag {5.4}
$$

# 5.3 LMS with the kernel trick

The gradient descent update, or stochastic gradient update above becomes computationally expensive when the features  $\phi(x)$  is high-dimensional. For example, consider the direct extension of the feature map in equation (5.1) to high-dimensional input  $x$ : suppose  $x \in \mathbb{R}^d$ , and let  $\phi(x)$  be the vector that

contains all the monomials of  $x$  with degree  $\leq 3$

$$
\phi (x) = \left[ \begin{array}{c} 1 \\ x_{1} \\ x_{2} \\ \vdots \\ x_{1}^{2} \\ x_{1} x_{2} \\ x_{1} x_{3} \\ \vdots \\ x_{2} x_{1} \\ \vdots \\ x_{1}^{3} \\ x_{1}^{2} x_{2} \\ \vdots \end{array} \right]. \tag {5.5}
$$

The dimension of the features  $\phi(x)$  is on the order of  $d^3$ . This is a prohibitively long vector for computational purpose — when  $d = 1000$ , each update requires at least computing and storing a  $1000^3 = 10^9$  dimensional vector, which is  $10^6$  times slower than the update rule for ordinary least squares updates (5.2).

It may appear at first that such  $d^3$  runtime per update and memory usage are inevitable, because the vector  $\theta$  itself is of dimension  $p \approx d^3$ , and we may need to update every entry of  $\theta$  and store it. However, we will introduce the kernel trick with which we will not need to store  $\theta$  explicitly, and the runtime can be significantly improved.

For simplicity, we assume the initialize the value  $\theta = 0$ , and we focus on the iterative update (5.3). The main observation is that at any time,  $\theta$  can be represented as a linear combination of the vectors  $\phi(x^{(1)}), \ldots, \phi(x^{(n)})$ . Indeed, we can show this inductively as follows. At initialization,  $\theta = 0 = \sum_{i=1}^{n} 0 \cdot \phi(x^{(i)})$ . Assume at some point,  $\theta$  can be represented as

$$
\theta = \sum_{i = 1}^{n} \beta_{i} \phi \left(x^{(i)}\right) \tag {5.6}
$$

for some  $\beta_1, \ldots, \beta_n \in \mathbb{R}$ . Then we claim that in the next round,  $\theta$  is still a linear combination of  $\phi(x^{(1)}), \ldots, \phi(x^{(n)})$  because

$$
\begin{array}{l} \theta := \theta + \alpha \sum_{i = 1}^{n} \left(y^{(i)} - \theta^{T} \phi (x^{(i)})\right) \phi (x^{(i)}) \\ = \sum_{i = 1}^{n} \beta_{i} \phi (x^{(i)}) + \alpha \sum_{i = 1}^{n} \left(y^{(i)} - \theta^{T} \phi (x^{(i)})\right) \phi (x^{(i)}) \\ = \sum_{i = 1}^{n} \underbrace {\left(\beta_{i} + \alpha \left(y^{(i)} - \theta^{T} \phi (x^{(i)})\right)\right)}_{\text{new} \beta_{i}} \phi (x^{(i)}) \tag {5.7} \\ \end{array}
$$

You may realize that our general strategy is to implicitly represent the  $p$ -dimensional vector  $\theta$  by a set of coefficients  $\beta_{1},\ldots ,\beta_{n}$ . Towards doing this, we derive the update rule of the coefficients  $\beta_{1},\ldots ,\beta_{n}$ . Using the equation above, we see that the new  $\beta_{i}$  depends on the old one via

$$
\beta_{i} := \beta_{i} + \alpha \left(y^{(i)} - \theta^{T} \phi \left(x^{(i)}\right)\right) \tag {5.8}
$$

Here we still have the old  $\theta$  on the RHS of the equation. Replacing  $\theta$  by  $\theta = \sum_{j=1}^{n} \beta_j \phi(x^{(j)})$  gives

$$
\forall i \in \{1, \dots , n \}, \beta_{i} := \beta_{i} + \alpha \left(y^{(i)} - \sum_{j = 1}^{n} \beta_{j} \phi (x^{(j)})^{T} \phi (x^{(i)})\right)
$$

We often rewrite  $\phi(x^{(j)})^T\phi(x^{(i)})$  as  $\langle \phi(x^{(j)}), \phi(x^{(i)}) \rangle$  to emphasize that it's the inner product of the two feature vectors. Viewing  $\beta_i$ 's as the new representation of  $\theta$ , we have successfully translated the batch gradient descent algorithm into an algorithm that updates the value of  $\beta$  iteratively. It may appear that at every iteration, we still need to compute the values of  $\langle \phi(x^{(j)}), \phi(x^{(i)}) \rangle$  for all pairs of  $i, j$ , each of which may take roughly  $O(p)$  operation. However, two important properties come to rescue:

1. We can pre-compute the pairwise inner products  $\langle \phi(x^{(j)}), \phi(x^{(i)}) \rangle$  for all pairs of  $i, j$  before the loop starts.  
2. For the feature map  $\phi$  defined in (5.5) (or many other interesting feature maps), computing  $\langle \phi(x^{(j)}), \phi(x^{(i)}) \rangle$  can be efficient and does not

necessarily require computing  $\phi(x^{(i)})$  explicitly. This is because:

$$
\begin{array}{l} \langle \phi (x), \phi (z) \rangle = 1 + \sum_{i = 1}^{d} x_{i} z_{i} + \sum_{i, j \in \{1, \dots , d \}} x_{i} x_{j} z_{i} z_{j} + \sum_{i, j, k \in \{1, \dots , d \}} x_{i} x_{j} x_{k} z_{i} z_{j} z_{k} \\ = 1 + \sum_{i = 1}^{d} x_{i} z_{i} + \left(\sum_{i = 1}^{d} x_{i} z_{i}\right)^{2} + \left(\sum_{i = 1}^{d} x_{i} z_{i}\right)^{3} \\ = 1 + \langle x, z \rangle + \langle x, z \rangle^{2} + \langle x, z \rangle^{3} \tag {5.9} \\ \end{array}
$$

Therefore, to compute  $\langle \phi(x), \phi(z) \rangle$ , we can first compute  $\langle x, z \rangle$  with  $O(d)$  time and then take another constant number of operations to compute  $1 + \langle x, z \rangle + \langle x, z \rangle^2 + \langle x, z \rangle^3$ .

As you will see, the inner products between the features  $\langle \phi(x), \phi(z) \rangle$  are essential here. We define the Kernel corresponding to the feature map  $\phi$  as a function that maps  $\mathcal{X} \times \mathcal{X} \to \mathbb{R}$  satisfying:

$$
K (x, z) \triangleq \langle \phi (x), \phi (z) \rangle \tag {5.10}
$$

To wrap up the discussion, we write the down the final algorithm as follows:

1. Compute all the values  $K(x^{(i)},x^{(j)})\triangleq \langle \phi (x^{(i)}),\phi (x^{(j)})\rangle$  using equation (5.9) for all  $i,j\in \{1,\ldots ,n\}$ . Set  $\beta \coloneqq 0$  
2. Loop:

$$
\forall i \in \{1, \dots , n \}, \beta_{i} := \beta_{i} + \alpha \left(y^{(i)} - \sum_{j = 1}^{n} \beta_{j} K \left(x^{(i)}, x^{(j)}\right)\right) \tag {5.11}
$$

Or in vector notation, letting  $K$  be the  $n \times n$  matrix with  $K_{ij} = K(x^{(i)},x^{(j)})$ , we have

$$
\beta := \beta + \alpha (\vec{y} - K \beta)
$$

With the algorithm above, we can update the representation  $\beta$  of the vector  $\theta$  efficiently with  $O(n)$  time per update. Finally, we need to show that

the knowledge of the representation  $\beta$  suffices to compute the prediction  $\theta^T\phi (x)$ . Indeed, we have

$$
\theta^{T} \phi (x) = \sum_{i = 1}^{n} \beta_{i} \phi \left(x^{(i)}\right)^{T} \phi (x) = \sum_{i = 1}^{n} \beta_{i} K \left(x^{(i)}, x\right) \tag {5.12}
$$

You may realize that fundamentally all we need to know about the feature map  $\phi(\cdot)$  is encapsulated in the corresponding kernel function  $K(\cdot, \cdot)$ . We will expand on this in the next section.

# 5.4 Properties of kernels

In the last subsection, we started with an explicitly defined feature map  $\phi$ , which induces the kernel function  $K(x,z) \triangleq \langle \phi(x), \phi(z) \rangle$ . Then we saw that the kernel function is so intrinsic so that as long as the kernel function is defined, the whole training algorithm can be written entirely in the language of the kernel without referring to the feature map  $\phi$ , so can the prediction of a test example  $x$  (equation (5.12).

Therefore, it would be tempted to define other kernel function  $K(\cdot, \cdot)$  and run the algorithm (5.11). Note that the algorithm (5.11) does not need to explicitly access the feature map  $\phi$ , and therefore we only need to ensure the existence of the feature map  $\phi$ , but do not necessarily need to be able to explicitly write  $\phi$  down.

What kinds of functions  $K(\cdot, \cdot)$  can correspond to some feature map  $\phi$ ? In other words, can we tell if there is some feature mapping  $\phi$  so that  $K(x, z) = \phi(x)^T\phi(z)$  for all  $x, z$ ?

If we can answer this question by giving a precise characterization of valid kernel functions, then we can completely change the interface of selecting feature maps  $\phi$  to the interface of selecting kernel function  $K$ . Concretely, we can pick a function  $K$ , verify that it satisfies the characterization (so that there exists a feature map  $\phi$  that  $K$  corresponds to), and then we can run update rule (5.11). The benefit here is that we don't have to be able to compute  $\phi$  or write it down analytically, and we only need to know its existence. We will answer this question at the end of this subsection after we go through several concrete examples of kernels.

Suppose  $x, z \in \mathbb{R}^d$ , and let's first consider the function  $K(\cdot, \cdot)$  defined as:

$$
K (x, z) = (x^{T} z)^{2}.
$$

We can also write this as

$$
\begin{array}{l} K (x, z) = \left(\sum_{i = 1}^{d} x_{i} z_{i}\right) \left(\sum_{j = 1}^{d} x_{j} z_{j}\right) \\ = \sum_{i = 1}^{d} \sum_{j = 1}^{d} x_{i} x_{j} z_{i} z_{j} \\ = \sum_{i, j = 1}^{d} \left(x_{i} x_{j}\right) \left(z_{i} z_{j}\right) \\ \end{array}
$$

Thus, we see that  $K(x,z) = \langle \phi (x),\phi (z)\rangle$  is the kernel function that corresponds to the feature mapping  $\phi$  given (shown here for the case of  $d = 3$ ) by

$$
\phi (x) = \left[ \begin{array}{l} x_{1} x_{1} \\ x_{1} x_{2} \\ x_{1} x_{3} \\ x_{2} x_{1} \\ x_{2} x_{2} \\ x_{2} x_{3} \\ x_{3} x_{1} \\ x_{3} x_{2} \\ x_{3} x_{3} \end{array} \right].
$$

Revisiting the computational efficiency perspective of kernel, note that whereas calculating the high-dimensional  $\phi(x)$  requires  $O(d^2)$  time, finding  $K(x,z)$  takes only  $O(d)$  time—linear in the dimension of the input attributes.

For another related example, also consider  $K(\cdot ,\cdot)$  defined by

$$
\begin{array}{l} K (x, z) = \left(x^{T} z + c\right)^{2} \\ = \sum_{i, j = 1}^{d} (x_{i} x_{j}) (z_{i} z_{j}) + \sum_{i = 1}^{d} (\sqrt{2 c} x_{i}) (\sqrt{2 c} z_{i}) + c^{2}. \\ \end{array}
$$

(Check this yourself.) This function  $K$  is a kernel function that corresponds

to the feature mapping (again shown for  $d = 3$ )

$$
\phi (x) = \left[ \begin{array}{l} x_{1} x_{1} \\ x_{1} x_{2} \\ x_{1} x_{3} \\ x_{2} x_{1} \\ x_{2} x_{2} \\ x_{2} x_{3} \\ x_{3} x_{1} \\ x_{3} x_{2} \\ x_{3} x_{3} \\ \sqrt{2 c} x_{1} \\ \sqrt{2 c} x_{2} \\ \sqrt{2 c} x_{3} \\ c \end{array} \right],
$$

and the parameter  $c$  controls the relative weighting between the  $x_{i}$  (first order) and the  $x_{i}x_{j}$  (second order) terms.

More broadly, the kernel  $K(x,z) = (x^{T}z + c)^{k}$  corresponds to a feature mapping to an  $\binom{d+k}{k}$  feature space, corresponding of all monomials of the form  $x_{i_1}x_{i_2}\ldots x_{i_k}$  that are up to order  $k$ . However, despite working in this  $O(d^{k})$ -dimensional space, computing  $K(x,z)$  still takes only  $O(d)$  time, and hence we never need to explicitly represent feature vectors in this very high dimensional feature space.

Kernels as similarity metrics. Now, let's talk about a slightly different view of kernels. Intuitively, (and there are things wrong with this intuition, but nevermind), if  $\phi(x)$  and  $\phi(z)$  are close together, then we might expect  $K(x,z) = \phi(x)^T\phi(z)$  to be large. Conversely, if  $\phi(x)$  and  $\phi(z)$  are far apart—say nearly orthogonal to each other—then  $K(x,z) = \phi(x)^T\phi(z)$  will be small. So, we can think of  $K(x,z)$  as some measurement of how similar are  $\phi(x)$  and  $\phi(z)$ , or of how similar are  $x$  and  $z$ .

Given this intuition, suppose that for some learning problem that you're working on, you've come up with some function  $K(x,z)$  that you think might be a reasonable measure of how similar  $x$  and  $z$  are. For instance, perhaps you chose

$$
K (x, z) = \exp \left(- \frac{| | x - z | |^{2}}{2 \sigma^{2}}\right).
$$

This is a reasonable measure of  $x$  and  $z$ 's similarity, and is close to 1 when  $x$  and  $z$  are close, and near 0 when  $x$  and  $z$  are far apart. Does there exist

a feature map  $\phi$  such that the kernel  $K$  defined above satisfies  $K(x,z) = \phi (x)^{T}\phi (z)$ ? In this particular example, the answer is yes. This kernel is called the Gaussian kernel, and corresponds to an infinite dimensional feature mapping  $\phi$ . We will give a precise characterization about what properties a function  $K$  needs to satisfy so that it can be a valid kernel function that corresponds to some feature map  $\phi$ .

Necessary conditions for valid kernels. Suppose for now that  $K$  is indeed a valid kernel corresponding to some feature mapping  $\phi$ , and we will first see what properties it satisfies. Now, consider some finite set of  $n$  points (not necessarily the training set)  $\{x^{(1)},\ldots ,x^{(n)}\}$ , and let a square,  $n$ -by-  $n$  matrix  $K$  be defined so that its  $(i,j)$ -entry is given by  $K_{ij} = K(x^{(i)},x^{(j)})$ . This matrix is called the kernel matrix. Note that we've overloaded the notation and used  $K$  to denote both the kernel function  $K(x,z)$  and the kernel matrix  $K$ , due to their obvious close relationship.

Now, if  $K$  is a valid kernel, then  $K_{ij} = K(x^{(i)},x^{(j)}) = \phi (x^{(i)})^T\phi (x^{(j)}) = \phi (x^{(j)})^T\phi (x^{(i)}) = K(x^{(j)},x^{(i)}) = K_{ji}$ , and hence  $K$  must be symmetric. Moreover, letting  $\phi_k(x)$  denote the  $k$ -th coordinate of the vector  $\phi (x)$ , we find that for any vector  $z$ , we have

$$
\begin{array}{l} z^{T} K z = \sum_{i} \sum_{j} z_{i} K_{i j} z_{j} \\ = \sum_{i} \sum_{j} z_{i} \phi (x^{(i)})^{T} \phi (x^{(j)}) z_{j} \\ = \sum_{i} \sum_{j} z_{i} \sum_{k} \phi_{k} (x^{(i)}) \phi_{k} (x^{(j)}) z_{j} \\ = \sum_{k} \sum_{i} \sum_{j} z_{i} \phi_{k} (x^{(i)}) \phi_{k} (x^{(j)}) z_{j} \\ = \sum_{k} \left(\sum_{i} z_{i} \phi_{k} (x^{(i)})\right)^{2} \\ \geq 0. \\ \end{array}
$$

The second-to-last step uses the fact that  $\sum_{i,j}a_ia_j = (\sum_i a_i)^2$  for  $a_i = z_i\phi_k(x^{(i)})$ . Since  $z$  was arbitrary, this shows that  $K$  is positive semi-definite  $(K\geq 0)$ .

Hence, we've shown that if  $K$  is a valid kernel (i.e., if it corresponds to some feature mapping  $\phi$ ), then the corresponding kernel matrix  $K \in \mathbb{R}^{n \times n}$  is symmetric positive semidefinite.

Sufficient conditions for valid kernels. More generally, the condition above turns out to be not only a necessary, but also a sufficient, condition for  $K$  to be a valid kernel (also called a Mercer kernel). The following result is due to Mercer.<sup>3</sup>

Theorem (Mercer). Let  $K: \mathbb{R}^d \times \mathbb{R}^d \mapsto \mathbb{R}$  be given. Then for  $K$  to be a valid (Mercer) kernel, it is necessary and sufficient that for any  $\{x^{(1)}, \ldots, x^{(n)}\}$ ,  $(n < \infty)$ , the corresponding kernel matrix is symmetric positive semi-definite.

Given a function  $K$ , apart from trying to find a feature mapping  $\phi$  that corresponds to it, this theorem therefore gives another way of testing if it is a valid kernel. You'll also have a chance to play with these ideas more in problem set 2.

In class, we also briefly talked about a couple of other examples of kernels. For instance, consider the digit recognition problem, in which given an image (16x16 pixels) of a handwritten digit (0-9), we have to figure out which digit it was. Using either a simple polynomial kernel  $K(x,z) = (x^{T}z)^{k}$  or the Gaussian kernel, SVMs were able to obtain extremely good performance on this problem. This was particularly surprising since the input attributes  $x$  were just 256-dimensional vectors of the image pixel intensity values, and the system had no prior knowledge about vision, or even about which pixels are adjacent to which other ones. Another example that we briefly talked about in lecture was that if the objects  $x$  that we are trying to classify are strings (say,  $x$  is a list of amino acids, which strung together form a protein), then it seems hard to construct a reasonable, "small" set of features for most learning algorithms, especially if different strings have different lengths. However, consider letting  $\phi(x)$  be a feature vector that counts the number of occurrences of each length- $k$  substring in  $x$ . If we're considering strings of English letters, then there are  $26^k$  such strings. Hence,  $\phi(x)$  is a  $26^k$  dimensional vector; even for moderate values of  $k$ , this is probably too big for us to efficiently work with. (e.g.,  $26^4 \approx 460000$ .) However, using (dynamic programming-ish) string matching algorithms, it is possible to efficiently compute  $K(x,z) = \phi(x)^T\phi(z)$ , so that we can now implicitly work in this  $26^k$ -dimensional feature space, but without ever explicitly computing feature vectors in this space.

Application of kernel methods: We've seen the application of kernels to linear regression. In the next part, we will introduce the support vector machines to which kernels can be directly applied. dwell too much longer on it here. In fact, the idea of kernels has significantly broader applicability than linear regression and SVMs. Specifically, if you have any learning algorithm that you can write in terms of only inner products  $\langle x,z\rangle$  between input attribute vectors, then by replacing this with  $K(x,z)$  where  $K$  is a kernel, you can "magically" allow your algorithm to work efficiently in the high dimensional feature space corresponding to  $K$ . For instance, this kernel trick can be applied with the perceptron to derive a kernel perceptron algorithm. Many of the algorithms that we'll see later in this class will also be amenable to this method, which has come to be known as the "kernel trick."

# Chapter 6

# Support vector machines

This set of notes presents the Support Vector Machine (SVM) learning algorithm. SVMs are among the best (and many believe are indeed the best) "off-the-shelf" supervised learning algorithms. To tell the SVM story, we'll need to first talk about margins and the idea of separating data with a large "gap." Next, we'll talk about the optimal margin classifier, which will lead us into a digression on Lagrange duality. We'll also see kernels, which give a way to apply SVMs efficiently in very high dimensional (such as infinite-dimensional) feature spaces, and finally, we'll close off the story with the SMO algorithm, which gives an efficient implementation of SVMs.

# 6.1 Margins: intuition

We'll start our story on SVMs by talking about margins. This section will give the intuitions about margins and about the "confidence" of our predictions; these ideas will be made formal in Section 6.3.

Consider logistic regression, where the probability  $p(y = 1|x;\theta)$  is modeled by  $h_\theta(x) = g(\theta^T x)$ . We then predict "1" on an input  $x$  if and only if  $h_\theta(x) \geq 0.5$ , or equivalently, if and only if  $\theta^Tx \geq 0$ . Consider a positive training example  $(y = 1)$ . The larger  $\theta^Tx$  is, the larger also is  $h_\theta(x) = p(y = 1|x;\theta)$ , and thus also the higher our degree of "confidence" that the label is 1. Thus, informally we can think of our prediction as being very confident that  $y = 1$  if  $\theta^Tx \gg 0$ . Similarly, we think of logistic regression as confidently predicting  $y = 0$ , if  $\theta^Tx \ll 0$ . Given a training set, again informally it seems that we'd have found a good fit to the training data if we can find  $\theta$  so that  $\theta^Tx^{(i)} \gg 0$  whenever  $y^{(i)} = 1$ , and  $\theta^Tx^{(i)} \ll 0$  whenever  $y^{(i)} = 0$ , since this would reflect a very confident (and correct) set of classifications for all the

training examples. This seems to be a nice goal to aim for, and we'll soon formalize this idea using the notion of functional margins.

For a different type of intuition, consider the following figure, in which  $\mathbf{x}$ 's represent positive training examples, o's denote negative training examples, a decision boundary (this is the line given by the equation  $\theta^T x = 0$ , and is also called the separating hyperplane) is also shown, and three points have also been labeled A, B and C.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/337fa3f2671da712f1a5814107029c3d15bd24efac64c21271d52dedc51f53cb.jpg)

Notice that the point A is very far from the decision boundary. If we are asked to make a prediction for the value of  $y$  at A, it seems we should be quite confident that  $y = 1$  there. Conversely, the point C is very close to the decision boundary, and while it's on the side of the decision boundary on which we would predict  $y = 1$ , it seems likely that just a small change to the decision boundary could easily have caused out prediction to be  $y = 0$ . Hence, we're much more confident about our prediction at A than at C. The point B lies in-between these two cases, and more broadly, we see that if a point is far from the separating hyperplane, then we may be significantly more confident in our predictions. Again, informally we think it would be nice if, given a training set, we manage to find a decision boundary that allows us to make all correct and confident (meaning far from the decision boundary) predictions on the training examples. We'll formalize this later using the notion of geometric margins.

# 6.2 Notation (option reading)

To make our discussion of SVMs easier, we'll first need to introduce a new notation for talking about classification. We will be considering a linear classifier for a binary classification problem with labels  $y$  and features  $x$ . From now, we'll use  $y \in \{-1, 1\}$  (instead of  $\{0, 1\}$ ) to denote the class labels. Also, rather than parameterizing our linear classifier with the vector  $\theta$ , we will use parameters  $w, b$ , and write our classifier as

$$
h_{w, b} (x) = g \left(w^{T} x + b\right).
$$

Here,  $g(z) = 1$  if  $z \geq 0$ , and  $g(z) = -1$  otherwise. This "  $w, b$ " notation allows us to explicitly treat the intercept term  $b$  separately from the other parameters. (We also drop the convention we had previously of letting  $x_0 = 1$  be an extra coordinate in the input feature vector.) Thus,  $b$  takes the role of what was previously  $\theta_0$ , and  $w$  takes the role of  $[\theta_1 \ldots \theta_d]^T$ .

Note also that, from our definition of  $g$  above, our classifier will directly predict either 1 or -1 (cf. the perceptron algorithm), without first going through the intermediate step of estimating  $p(y = 1)$  (which is what logistic regression does).

# 6.3 Functional and geometric margins (option reading)

Let's formalize the notions of the functional and geometric margins. Given a training example  $(x^{(i)},y^{(i)})$ , we define the functional margin of  $(w,b)$  with respect to the training example as

$$
\hat {\gamma}^{(i)} = y^{(i)} (w^{T} x^{(i)} + b).
$$

Note that if  $y^{(i)} = 1$ , then for the functional margin to be large (i.e., for our prediction to be confident and correct), we need  $w^T x^{(i)} + b$  to be a large positive number. Conversely, if  $y^{(i)} = -1$ , then for the functional margin to be large, we need  $w^T x^{(i)} + b$  to be a large negative number. Moreover, if  $y^{(i)}(w^T x^{(i)} + b) > 0$ , then our prediction on this example is correct. (Check this yourself.) Hence, a large functional margin represents a confident and a correct prediction.

For a linear classifier with the choice of  $g$  given above (taking values in  $\{-1,1\}$ ), there's one property of the functional margin that makes it not a very good measure of confidence, however. Given our choice of  $g$ , we note that

if we replace  $w$  with  $2w$  and  $b$  with  $2b$ , then since  $g(w^T x + b) = g(2w^T x + 2b)$ , this would not change  $h_{w,b}(x)$  at all. I.e.,  $g$ , and hence also  $h_{w,b}(x)$ , depends only on the sign, but not on the magnitude, of  $w^T x + b$ . However, replacing  $(w,b)$  with  $(2w,2b)$  also results in multiplying our functional margin by a factor of 2. Thus, it seems that by exploiting our freedom to scale  $w$  and  $b$ , we can make the functional margin arbitrarily large without really changing anything meaningful. Intuitively, it might therefore make sense to impose some sort of normalization condition such as that  $||w||_2 = 1$ ; i.e., we might replace  $(w,b)$  with  $(w / ||w||_2, b / ||w||_2)$ , and instead consider the functional margin of  $(w / ||w||_2, b / ||w||_2)$ . We'll come back to this later.

Given a training set  $S = \{(x^{(i)},y^{(i)});i = 1,\dots ,n\}$ , we also define the function margin of  $(w,b)$  with respect to  $S$  as the smallest of the functional margins of the individual training examples. Denoted by  $\hat{\gamma}$ , this can therefore be written:

$$
\hat {\gamma} = \min_{i = 1, \dots , n} \hat {\gamma}^{(i)}.
$$

Next, let's talk about geometric margins. Consider the picture below:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/4b825b77d725c4f22609c3fdfe9b59e2b2dd884fda4da93bd1f2ecd2d05237b4.jpg)

The decision boundary corresponding to  $(w, b)$  is shown, along with the vector  $w$ . Note that  $w$  is orthogonal (at  $90^{\circ}$ ) to the separating hyperplane. (You should convince yourself that this must be the case.) Consider the point at A, which represents the input  $x^{(i)}$  of some training example with label  $y^{(i)} = 1$ . Its distance to the decision boundary,  $\gamma^{(i)}$ , is given by the line segment AB.

How can we find the value of  $\gamma^{(i)}$ ? Well,  $w / ||w||$  is a unit-length vector pointing in the same direction as  $w$ . Since  $A$  represents  $x^{(i)}$ , we therefore

find that the point  $B$  is given by  $x^{(i)} - \gamma^{(i)}\cdot w / ||w||$ . But this point lies on the decision boundary, and all points  $x$  on the decision boundary satisfy the equation  $w^{T}x + b = 0$ . Hence,

$$
w^{T} \left(x^{(i)} - \gamma^{(i)} \frac{w}{| | w | |}\right) + b = 0.
$$

Solving for  $\gamma^{(i)}$  yields

$$
\gamma^{(i)} = \frac{w^{T} x^{(i)} + b}{| | w | |} = \left(\frac{w}{| | w | |}\right)^{T} x^{(i)} + \frac{b}{| | w | |}.
$$

This was worked out for the case of a positive training example at A in the figure, where being on the "positive" side of the decision boundary is good. More generally, we define the geometric margin of  $(w,b)$  with respect to a training example  $(x^{(i)},y^{(i)})$  to be

$$
\gamma^{(i)} = y^{(i)} \left(\left(\frac{w}{| | w | |}\right)^{T} x^{(i)} + \frac{b}{| | w | |}\right).
$$

Note that if  $||w|| = 1$ , then the functional margin equals the geometric margin—this thus gives us a way of relating these two different notions of margin. Also, the geometric margin is invariant to rescaling of the parameters; i.e., if we replace  $w$  with  $2w$  and  $b$  with  $2b$ , then the geometric margin does not change. This will in fact come in handy later. Specifically, because of this invariance to the scaling of the parameters, when trying to fit  $w$  and  $b$  to training data, we can impose an arbitrary scaling constraint on  $w$  without changing anything important; for instance, we can demand that  $||w|| = 1$ , or  $|w_1| = 5$ , or  $|w_1 + b| + |w_2| = 2$ , and any of these can be satisfied simply by rescaling  $w$  and  $b$ .

Finally, given a training set  $S = \{(x^{(i)},y^{(i)});i = 1,\ldots ,n\}$ , we also define the geometric margin of  $(w,b)$  with respect to  $S$  to be the smallest of the geometric margins on the individual training examples:

$$
\gamma = \min_{i = 1, \dots , n} \gamma^{(i)}.
$$

# 6.4 The optimal margin classifier (option reading)

Given a training set, it seems from our previous discussion that a natural desideratum is to try to find a decision boundary that maximizes the (geometric) margin, since this would reflect a very confident set of predictions

on the training set and a good "fit" to the training data. Specifically, this will result in a classifier that separates the positive and the negative training examples with a "gap" (geometric margin).

For now, we will assume that we are given a training set that is linearly separable; i.e., that it is possible to separate the positive and negative examples using some separating hyperplane. How will we find the one that achieves the maximum geometric margin? We can pose the following optimization problem:

$$
\begin{array}{l} \max_{\gamma , w, b} \quad \gamma \\ \begin{array}{l l} \text{s .t .} & y^{(i)} \left(w^{T} x^{(i)} + b\right) \geq \gamma , i = 1, \dots , n \end{array} \\ | | w | | = 1. \\ \end{array}
$$

I.e., we want to maximize  $\gamma$ , subject to each training example having functional margin at least  $\gamma$ . The  $||w|| = 1$  constraint moreover ensures that the functional margin equals to the geometric margin, so we are also guaranteed that all the geometric margins are at least  $\gamma$ . Thus, solving this problem will result in  $(w,b)$  with the largest possible geometric margin with respect to the training set.

If we could solve the optimization problem above, we'd be done. But the  $||w|| = 1$  constraint is a nasty (non-convex) one, and this problem certainly isn't in any format that we can plug into standard optimization software to solve. So, let's try transforming the problem into a nicer one. Consider:

$$
\begin{array}{l} \max_{\hat {\gamma}, w, b} \frac{\hat {\gamma}}{| | w | |} \\ \begin{array}{l l} \text{s .t .} & y^{(i)} (w^{T} x^{(i)} + b) \geq \hat {\gamma}, i = 1, \dots , n \end{array} \\ \end{array}
$$

Here, we're going to maximize  $\hat{\gamma} /||w||$ , subject to the functional margins all being at least  $\hat{\gamma}$ . Since the geometric and functional margins are related by  $\gamma = \hat{\gamma} /||w|$ , this will give us the answer we want. Moreover, we've gotten rid of the constraint  $||w|| = 1$  that we didn't like. The downside is that we now have a nasty (again, non-convex) objective  $\frac{\hat{\gamma}}{||w||}$  function; and, we still don't have any off-the-shelf software that can solve this form of an optimization problem.

Let's keep going. Recall our earlier discussion that we can add an arbitrary scaling constraint on  $w$  and  $b$  without changing anything. This is the key idea we'll use now. We will introduce the scaling constraint that the functional margin of  $w, b$  with respect to the training set must be 1:

$$
\hat {\gamma} = 1.
$$

Since multiplying  $w$  and  $b$  by some constant results in the functional margin being multiplied by that same constant, this is indeed a scaling constraint, and can be satisfied by rescaling  $w, b$ . Plugging this into our problem above, and noting that maximizing  $\hat{\gamma} / ||w|| = 1 / ||w||$  is the same thing as minimizing  $||w||^2$ , we now have the following optimization problem:

$$
\begin{array}{l} \min_{w, b} \frac{1}{2} | | w | |^{2} \\ \begin{array}{l} \text{s .t .} y^{(i)} \left(w^{T} x^{(i)} + b\right) \geq 1, i = 1, \dots , n \end{array} \\ \end{array}
$$

We've now transformed the problem into a form that can be efficiently solved. The above is an optimization problem with a convex quadratic objective and only linear constraints. Its solution gives us the optimal margin classifier. This optimization problem can be solved using commercial quadratic programming (QP) code. $^{1}$

While we could call the problem solved here, what we will instead do is make a digression to talk about Lagrange duality. This will lead us to our optimization problem's dual form, which will play a key role in allowing us to use kernels to get optimal margin classifiers to work efficiently in very high dimensional spaces. The dual form will also allow us to derive an efficient algorithm for solving the above optimization problem that will typically do much better than generic QP software.

# 6.5 Lagrange duality (optional reading)

Let's temporarily put aside SVMs and maximum margin classifiers, and talk about solving constrained optimization problems.

Consider a problem of the following form:

$$
\begin{array}{l} \begin{array}{c c} \min_{w} & f (w) \end{array} \\ \begin{array}{l l} \text{s .t .} & h_{i} (w) = 0, i = 1, \dots , l. \end{array} \\ \end{array}
$$

Some of you may recall how the method of Lagrange multipliers can be used to solve it. (Don't worry if you haven't seen it before.) In this method, we define the Lagrangian to be

$$
\mathcal {L} (w, \beta) = f (w) + \sum_{i = 1}^{l} \beta_{i} h_{i} (w)
$$

Here, the  $\beta_{i}$ 's are called the Lagrange multipliers. We would then find and set  $\mathcal{L}$ 's partial derivatives to zero:

$$
\frac{\partial \mathcal {L}}{\partial w_{i}} = 0; \frac{\partial \mathcal {L}}{\partial \beta_{i}} = 0,
$$

and solve for  $w$  and  $\beta$ .

In this section, we will generalize this to constrained optimization problems in which we may have inequality as well as equality constraints. Due to time constraints, we won't really be able to do the theory of Lagrange duality justice in this class,[2] but we will give the main ideas and results, which we will then apply to our optimal margin classifier's optimization problem.

Consider the following, which we'll call the primal optimization problem:

$$
\begin{array}{l} \begin{array}{c c} \min_{w} & f (w) \end{array} \\ \begin{array}{l l} \text{s .t .} & g_{i} (w) \leq 0, i = 1, \dots , k \end{array} \\ h_{i} (w) = 0, \quad i = 1, \dots , l. \\ \end{array}
$$

To solve it, we start by defining the generalized Lagrangian

$$
\mathcal {L} (w, \alpha , \beta) = f (w) + \sum_{i = 1}^{k} \alpha_{i} g_{i} (w) + \sum_{i = 1}^{l} \beta_{i} h_{i} (w).
$$

Here, the  $\alpha_{i}$ 's and  $\beta_{i}$ 's are the Lagrange multipliers. Consider the quantity

$$
\theta_{\mathcal {P}} (w) = \max_{\alpha , \beta : \alpha_{i} \geq 0} \mathcal {L} (w, \alpha , \beta).
$$

Here, the “ $\mathcal{P}$ ” subscript stands for “primal.” Let some  $w$  be given. If  $w$  violates any of the primal constraints (i.e., if either  $g_i(w) > 0$  or  $h_i(w) \neq 0$  for some  $i$ ), then you should be able to verify that

$$
\begin{array}{l} \theta_{\mathcal {P}} (w) = \max_{\alpha , \beta : \alpha_{i} \geq 0} f (w) + \sum_{i = 1}^{k} \alpha_{i} g_{i} (w) + \sum_{i = 1}^{l} \beta_{i} h_{i} (w) (6.1) \\ = \infty . (6.2) \\ \end{array}
$$

Conversely, if the constraints are indeed satisfied for a particular value of  $w$ , then  $\theta_{\mathcal{P}}(w) = f(w)$ . Hence,

$$
\theta_{\mathcal {P}} (w) = \left\{ \begin{array}{l l} f (w) & \text{ifwsatisfiesprimalconstraints} \\ \infty & \text{otherwise .} \end{array} \right.
$$

Thus,  $\theta_{\mathcal{P}}$  takes the same value as the objective in our problem for all values of  $w$  that satisfies the primal constraints, and is positive infinity if the constraints are violated. Hence, if we consider the minimization problem

$$
\min_{w} \theta_{\mathcal {P}} (w) = \min_{w} \max_{\alpha , \beta : \alpha_{i} \geq 0} \mathcal {L} (w, \alpha , \beta),
$$

we see that it is the same problem (i.e., and has the same solutions as) our original, primal problem. For later use, we also define the optimal value of the objective to be  $p^* = \min_w \theta_{\mathcal{P}}(w)$ ; we call this the value of the primal problem.

Now, let's look at a slightly different problem. We define

$$
\theta_{\mathcal {D}} (\alpha , \beta) = \min_{w} \mathcal {L} (w, \alpha , \beta).
$$

Here, the “ $\mathcal{D}$ ” subscript stands for “dual.” Note also that whereas in the definition of  $\theta_{\mathcal{P}}$  we were optimizing (maximizing) with respect to  $\alpha, \beta$ , here we are minimizing with respect to  $w$ .

We can now pose the dual optimization problem:

$$
\max_{\alpha , \beta : \alpha_{i} \geq 0} \theta_{\mathcal {D}} (\alpha , \beta) = \max_{\alpha , \beta : \alpha_{i} \geq 0} \min_{w} \mathcal {L} (w, \alpha , \beta).
$$

This is exactly the same as our primal problem shown above, except that the order of the "max" and the "min" are now exchanged. We also define the optimal value of the dual problem's objective to be  $d^{*} = \max_{\alpha ,\beta :\alpha_{i}\geq 0}\theta_{\mathcal{D}}(w)$ .

How are the primal and the dual problems related? It can easily be shown that

$$
d^{*} = \max_{\alpha , \beta : \alpha_{i} \geq 0} \min_{w} \mathcal {L} (w, \alpha , \beta) \leq \min_{w} \max_{\alpha , \beta : \alpha_{i} \geq 0} \mathcal {L} (w, \alpha , \beta) = p^{*}.
$$

(You should convince yourself of this; this follows from the "max min" of a function always being less than or equal to the "min max.") However, under certain conditions, we will have

$$
d^{*} = p^{*},
$$

so that we can solve the dual problem in lieu of the primal problem. Let's see what these conditions are.

Suppose  $f$  and the  $g_{i}$ 's are convex, $^{3}$  and the  $h_{i}$ 's are affine. $^{4}$  Suppose further that the constraints  $g_{i}$  are (strictly) feasible; this means that there exists some  $w$  so that  $g_{i}(w) < 0$  for all  $i$ .

Under our above assumptions, there must exist  $w^{*}, \alpha^{*}, \beta^{*}$  so that  $w^{*}$  is the solution to the primal problem,  $\alpha^{*}, \beta^{*}$  are the solution to the dual problem, and moreover  $p^{*} = d^{*} = \mathcal{L}(w^{*}, \alpha^{*}, \beta^{*})$ . Moreover,  $w^{*}, \alpha^{*}$  and  $\beta^{*}$  satisfy the Karush-Kuhn-Tucker (KKT) conditions, which are as follows:

$$
\frac{\partial}{\partial w_{i}} \mathcal {L} \left(w^{*}, \alpha^{*}, \beta^{*}\right) = 0, i = 1, \dots , d \tag {6.3}
$$

$$
\frac{\partial}{\partial \beta_{i}} \mathcal {L} \left(w^{*}, \alpha^{*}, \beta^{*}\right) = 0, i = 1, \dots , l \tag {6.4}
$$

$$
\alpha_{i}^{*} g_{i} \left(w^{*}\right) = 0, i = 1, \dots , k \tag {6.5}
$$

$$
g_{i} \left(w^{*}\right) \leq 0, i = 1, \dots , k \tag {6.6}
$$

$$
\alpha^{*} \geq 0, i = 1, \dots , k \tag {6.7}
$$

Moreover, if some  $w^{*}, \alpha^{*}, \beta^{*}$  satisfy the KKT conditions, then it is also a solution to the primal and dual problems.

We draw attention to Equation (6.5), which is called the KKT dual complementarity condition. Specifically, it implies that if  $\alpha_{i}^{*} > 0$ , then  $g_{i}(w^{*}) = 0$ . (I.e., the " $g_{i}(w) \leq 0$ " constraint is active, meaning it holds with equality rather than with inequality.) Later on, this will be key for showing that the SVM has only a small number of "support vectors"; the KKT dual complementarity condition will also give us our convergence test when we talk about the SMO algorithm.

# 6.6 Optimal margin classifiers: the dual form (option reading)

Note: The equivalence of optimization problem (6.8) and the optimization problem (6.12), and the relationship between the primary and dual variables in equation (6.10) are the most important take home messages of this section.

Previously, we posed the following (primal) optimization problem for finding the optimal margin classifier:

$$
\min_{w, b} \quad \frac{1}{2} \| w \|^{2} \tag {6.8}
$$

$$
\begin{array}{l} \text{s .t .} y^{(i)} \left(w^{T} x^{(i)} + b\right) \geq 1, i = 1, \dots , n \end{array}
$$

We can write the constraints as

$$
g_{i} (w) = - y^{(i)} (w^{T} x^{(i)} + b) + 1 \leq 0.
$$

We have one such constraint for each training example. Note that from the KKT dual complementarity condition, we will have  $\alpha_{i} > 0$  only for the training examples that have functional margin exactly equal to one (i.e., the ones corresponding to constraints that hold with equality,  $g_{i}(w) = 0$ ). Consider the figure below, in which a maximum margin separating hyperplane is shown by the solid line.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/58e129f611a1a4fed9799e4f3b7929261ab302c28b49125a9fb61a290f50dc4b.jpg)

The points with the smallest margins are exactly the ones closest to the decision boundary; here, these are the three points (one negative and two positive examples) that lie on the dashed lines parallel to the decision boundary. Thus, only three of the  $\alpha_{i}$ 's—namely, the ones corresponding to these three training examples—will be non-zero at the optimal solution to our optimization problem. These three points are called the support vectors in this problem. The fact that the number of support vectors can be much smaller than the size the training set will be useful later.

Let's move on. Looking ahead, as we develop the dual form of the problem, one key idea to watch out for is that we'll try to write our algorithm in terms of only the inner product  $\langle x^{(i)},x^{(j)}\rangle$  (think of this as  $(x^{(i)})^T x^{(j)})$  between points in the input feature space. The fact that we can express our algorithm in terms of these inner products will be key when we apply the kernel trick.

When we construct the Lagrangian for our optimization problem we have:

$$
\mathcal {L} (w, b, \alpha) = \frac{1}{2} | | w | |^{2} - \sum_{i = 1}^{n} \alpha_{i} \left[ y^{(i)} \left(w^{T} x^{(i)} + b\right) - 1 \right]. \tag {6.9}
$$

Note that there're only “ $\alpha_{i}$ ” but no “ $\beta_{i}$ ” Lagrange multipliers, since the problem has only inequality constraints.

Let's find the dual form of the problem. To do so, we need to first minimize  $\mathcal{L}(w,b,\alpha)$  with respect to  $w$  and  $b$  (for fixed  $\alpha$ ), to get  $\theta_{\mathcal{D}}$ , which we'll do by setting the derivatives of  $\mathcal{L}$  with respect to  $w$  and  $b$  to zero. We have:

$$
\nabla_{w} \mathcal {L} (w, b, \alpha) = w - \sum_{i = 1}^{n} \alpha_{i} y^{(i)} x^{(i)} = 0
$$

This implies that

$$
w = \sum_{i = 1}^{n} \alpha_{i} y^{(i)} x^{(i)}. \tag {6.10}
$$

As for the derivative with respect to  $b$ , we obtain

$$
\frac{\partial}{\partial b} \mathcal {L} (w, b, \alpha) = \sum_{i = 1}^{n} \alpha_{i} y^{(i)} = 0. \tag {6.11}
$$

If we take the definition of  $w$  in Equation (6.10) and plug that back into the Lagrangian (Equation 6.9), and simplify, we get

$$
\mathcal {L} (w, b, \alpha) = \sum_{i = 1}^{n} \alpha_{i} - \frac{1}{2} \sum_{i, j = 1}^{n} y^{(i)} y^{(j)} \alpha_{i} \alpha_{j} (x^{(i)})^{T} x^{(j)} - b \sum_{i = 1}^{n} \alpha_{i} y^{(i)}.
$$

But from Equation (6.11), the last term must be zero, so we obtain

$$
\mathcal {L} (w, b, \alpha) = \sum_{i = 1}^{n} \alpha_{i} - \frac{1}{2} \sum_{i, j = 1}^{n} y^{(i)} y^{(j)} \alpha_{i} \alpha_{j} (x^{(i)})^{T} x^{(j)}.
$$

Recall that we got to the equation above by minimizing  $\mathcal{L}$  with respect to  $w$  and  $b$ . Putting this together with the constraints  $\alpha_{i} \geq 0$  (that we always had) and the constraint (6.11), we obtain the following dual optimization problem:

$$
\max_{\alpha} W (\alpha) = \sum_{i = 1}^{n} \alpha_{i} - \frac{1}{2} \sum_{i, j = 1}^{n} y^{(i)} y^{(j)} \alpha_{i} \alpha_{j} \langle x^{(i)}, x^{(j)} \rangle . \tag {6.12}
$$

$$
\begin{array}{l l} \text{s .t .} & \alpha_{i} \geq 0, i = 1, \dots , n \end{array}
$$

$$
\sum_{i = 1}^{n} \alpha_{i} y^{(i)} = 0,
$$

You should also be able to verify that the conditions required for  $p^* = d^*$  and the KKT conditions (Equations 6.3-6.7) to hold are indeed satisfied in

our optimization problem. Hence, we can solve the dual in lieu of solving the primal problem. Specifically, in the dual problem above, we have a maximization problem in which the parameters are the  $\alpha_{i}$ 's. We'll talk later about the specific algorithm that we're going to use to solve the dual problem, but if we are indeed able to solve it (i.e., find the  $\alpha$ 's that maximize  $W(\alpha)$  subject to the constraints), then we can use Equation (6.10) to go back and find the optimal  $w$ 's as a function of the  $\alpha$ 's. Having found  $w^{*}$ , by considering the primal problem, it is also straightforward to find the optimal value for the intercept term  $b$  as

$$
b^{*} = - \frac{\max_{i : y^{(i)} = - 1} w^{* T} x^{(i)} + \min_{i : y^{(i)} = 1} w^{* T} x^{(i)}}{2}. (6. 1 3)
$$

(Check for yourself that this is correct.)

Before moving on, let's also take a more careful look at Equation (6.10), which gives the optimal value of  $w$  in terms of (the optimal value of)  $\alpha$ . Suppose we've fit our model's parameters to a training set, and now wish to make a prediction at a new point input  $x$ . We would then calculate  $w^T x + b$  and predict  $y = 1$  if and only if this quantity is bigger than zero. But using (6.10), this quantity can also be written:

$$
\begin{array}{l} w^{T} x + b = \left(\sum_{i = 1}^{n} \alpha_{i} y^{(i)} x^{(i)}\right)^{T} x + b (6.14) \\ = \sum_{i = 1}^{n} \alpha_{i} y^{(i)} \langle x^{(i)}, x \rangle + b. (6.15) \\ \end{array}
$$

Hence, if we've found the  $\alpha_{i}$ 's, in order to make a prediction, we have to calculate a quantity that depends only on the inner product between  $x$  and the points in the training set. Moreover, we saw earlier that the  $\alpha_{i}$ 's will all be zero except for the support vectors. Thus, many of the terms in the sum above will be zero, and we really need to find only the inner products between  $x$  and the support vectors (of which there is often only a small number) in order to calculate (6.15) and make our prediction.

By examining the dual form of the optimization problem, we gained significant insight into the structure of the problem, and were also able to write the entire algorithm in terms of only inner products between input feature vectors. In the next section, we will exploit this property to apply the kernels to our classification problem. The resulting algorithm, support vector machines, will be able to efficiently learn in very high dimensional spaces.

# 6.7 Regularization and the non-separable case (optional reading)

The derivation of the SVM as presented so far assumed that the data is linearly separable. While mapping data to a high dimensional feature space via  $\phi$  does generally increase the likelihood that the data is separable, we can't guarantee that it always will be so. Also, in some cases it is not clear that finding a separating hyperplane is exactly what we'd want to do, since that might be susceptible to outliers. For instance, the left figure below shows an optimal margin classifier, and when a single outlier is added in the upper-left region (right figure), it causes the decision boundary to make a dramatic swing, and the resulting classifier has a much smaller margin.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/e7b69869356d33145a72d73e1e30f7cab5c81208d8c85549990d6fb288940ec6.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/6eea8d069b2584d31697c769f9194d1ea775b052e11fbb5318d9772dcde7441b.jpg)

To make the algorithm work for non-linearly separable datasets as well as be less sensitive to outliers, we reformulate our optimization (using  $\ell_1$  regularization) as follows:

$$
\begin{array}{l} \min_{\gamma , w, b} \frac{1}{2} | | w | |^{2} + C \sum_{i = 1}^{n} \xi_{i} \\ \begin{array}{l} \text{s .t .} y^{(i)} \left(w^{T} x^{(i)} + b\right) \geq 1 - \xi_{i}, i = 1, \dots , n \end{array} \\ \xi_{i} \geq 0, i = 1, \dots , n. \\ \end{array}
$$

Thus, examples are now permitted to have (functional) margin less than 1, and if an example has functional margin  $1 - \xi_{i}$  (with  $\xi > 0$ ), we would pay a cost of the objective function being increased by  $C\xi_{i}$ . The parameter  $C$  controls the relative weighting between the twin goals of making the  $||w||^2$  small (which we saw earlier makes the margin large) and of ensuring that most examples have functional margin at least 1.

As before, we can form the Lagrangian:

$$
\mathcal {L} (w, b, \xi , \alpha , r) = \frac{1}{2} w^{T} w + C \sum_{i = 1}^{n} \xi_{i} - \sum_{i = 1}^{n} \alpha_{i} \left[ y^{(i)} (x^{T} w + b) - 1 + \xi_{i} \right] - \sum_{i = 1}^{n} r_{i} \xi_{i}.
$$

Here, the  $\alpha_{i}$ 's and  $r_i$ 's are our Lagrange multipliers (constrained to be  $\geq 0$ ). We won't go through the derivation of the dual again in detail, but after setting the derivatives with respect to  $w$  and  $b$  to zero as before, substituting them back in, and simplifying, we obtain the following dual form of the problem:

$$
\begin{array}{l} \max_{\alpha} W (\alpha) = \sum_{i = 1}^{n} \alpha_{i} - \frac{1}{2} \sum_{i, j = 1}^{n} y^{(i)} y^{(j)} \alpha_{i} \alpha_{j} \langle x^{(i)}, x^{(j)} \rangle \\ \mathrm{s .t .} 0 \leq \alpha_{i} \leq C, i = 1, \ldots , n \\ \sum_{i = 1}^{n} \alpha_{i} y^{(i)} = 0, \\ \end{array}
$$

As before, we also have that  $w$  can be expressed in terms of the  $\alpha_{i}$ 's as given in Equation (6.10), so that after solving the dual problem, we can continue to use Equation (6.15) to make our predictions. Note that, somewhat surprisingly, in adding  $\ell_{1}$  regularization, the only change to the dual problem is that what was originally a constraint that  $0 \leq \alpha_{i}$  has now become  $0 \leq \alpha_{i} \leq C$ . The calculation for  $b^{*}$  also has to be modified (Equation 6.13 is no longer valid); see the comments in the next section/Platt's paper.

Also, the KKT dual-complementarity conditions (which in the next section will be useful for testing for the convergence of the SMO algorithm) are:

$$
\alpha_{i} = 0 \Rightarrow y^{(i)} \left(w^{T} x^{(i)} + b\right) \geq 1 \tag {6.16}
$$

$$
\alpha_{i} = C \Rightarrow y^{(i)} \left(w^{T} x^{(i)} + b\right) \leq 1 \tag {6.17}
$$

$$
0 <   \alpha_{i} <   C \Rightarrow y^{(i)} \left(w^{T} x^{(i)} + b\right) = 1. \tag {6.18}
$$

Now, all that remains is to give an algorithm for actually solving the dual problem, which we will do in the next section.

# 6.8 The SMO algorithm (optional reading)

The SMO (sequential minimal optimization) algorithm, due to John Platt, gives an efficient way of solving the dual problem arising from the derivation

of the SVM. Partly to motivate the SMO algorithm, and partly because it's interesting in its own right, let's first take another digression to talk about the coordinate ascent algorithm.

# 6.8.1 Coordinate ascent

Consider trying to solve the unconstrained optimization problem

$$
\max_{\alpha} W (\alpha_{1}, \alpha_{2}, \ldots , \alpha_{n}).
$$

Here, we think of  $W$  as just some function of the parameters  $\alpha_{i}$ 's, and for now ignore any relationship between this problem and SVMs. We've already seen two optimization algorithms, gradient ascent and Newton's method. The new algorithm we're going to consider here is called coordinate ascent:

```txt
Loop until convergence: { For  $i = 1,\dots ,n$  ，{  $\alpha_{i}\coloneqq \arg \max_{\hat{\alpha}_{i}}W(\alpha_{1},\ldots ,\alpha_{i - 1},\hat{\alpha}_{i},\alpha_{i + 1},\ldots ,\alpha_{n}).$  }   
}
```

Thus, in the innermost loop of this algorithm, we will hold all the variables except for some  $\alpha_{i}$  fixed, and reoptimize  $W$  with respect to just the parameter  $\alpha_{i}$ . In the version of this method presented here, the inner-loop reoptimizes the variables in order  $\alpha_{1},\alpha_{2},\ldots ,\alpha_{n},\alpha_{1},\alpha_{2},\ldots$  (A more sophisticated version might choose other orderings; for instance, we may choose the next variable to update according to which one we expect to allow us to make the largest increase in  $W(\alpha)$ .)

When the function  $W$  happens to be of such a form that the "arg max" in the inner loop can be performed efficiently, then coordinate ascent can be a fairly efficient algorithm. Here's a picture of coordinate ascent in action:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/b009dae4c522bfe110cc237c9cabda2aa75115bcaf06dd0ceed0271ef4c75617.jpg)

The ellipses in the figure are the contours of a quadratic function that we want to optimize. Coordinate ascent was initialized at  $(2, -2)$ , and also plotted in the figure is the path that it took on its way to the global maximum. Notice that on each step, coordinate ascent takes a step that's parallel to one of the axes, since only one variable is being optimized at a time.

# 6.8.2 SMO

We close off the discussion of SVMs by sketching the derivation of the SMO algorithm.

Here's the (dual) optimization problem that we want to solve:

$$
\max_{\alpha} W (\alpha) = \sum_{i = 1}^{n} \alpha_{i} - \frac{1}{2} \sum_{i, j = 1}^{n} y^{(i)} y^{(j)} \alpha_{i} \alpha_{j} \langle x^{(i)}, x^{(j)} \rangle . (6. 1 9)
$$

$$
\text{s .t .} \quad 0 \leq \alpha_{i} \leq C, \quad i = 1, \dots , n \tag {6.20}
$$

$$
\sum_{i = 1}^{n} \alpha_{i} y^{(i)} = 0. \tag {6.21}
$$

Let's say we have set of  $\alpha_{i}$ 's that satisfy the constraints (6.20-6.21). Now, suppose we want to hold  $\alpha_{2},\ldots ,\alpha_{n}$  fixed, and take a coordinate ascent step and reoptimize the objective with respect to  $\alpha_{1}$ . Can we make any progress? The answer is no, because the constraint (6.21) ensures that

$$
\alpha_{1} y^{(1)} = - \sum_{i = 2}^{n} \alpha_{i} y^{(i)}.
$$

Or, by multiplying both sides by  $y^{(1)}$ , we equivalently have

$$
\alpha_{1} = - y^{(1)} \sum_{i = 2}^{n} \alpha_{i} y^{(i)}.
$$

(This step used the fact that  $y^{(1)} \in \{-1, 1\}$ , and hence  $(y^{(1)})^2 = 1$ .) Hence,  $\alpha_1$  is exactly determined by the other  $\alpha_i$ 's, and if we were to hold  $\alpha_2, \ldots, \alpha_n$  fixed, then we can't make any change to  $\alpha_1$  without violating the constraint (6.21) in the optimization problem.

Thus, if we want to update some subject of the  $\alpha_{i}$ 's, we must update at least two of them simultaneously in order to keep satisfying the constraints. This motivates the SMO algorithm, which simply does the following:

Repeat till convergence{

1. Select some pair  $\alpha_{i}$  and  $\alpha_{j}$  to update next (using a heuristic that tries to pick the two that will allow us to make the biggest progress towards the global maximum).  
2. Reoptimize  $W(\alpha)$  with respect to  $\alpha_{i}$  and  $\alpha_{j}$ , while holding all the other  $\alpha_{k}$ 's  $(k \neq i, j)$  fixed.

}

To test for convergence of this algorithm, we can check whether the KKT conditions (Equations 6.16-6.18) are satisfied to within some  $tol$ . Here,  $tol$  is the convergence tolerance parameter, and is typically set to around 0.01 to 0.001. (See the paper and pseudocode for details.)

The key reason that SMO is an efficient algorithm is that the update to  $\alpha_{i}$ ,  $\alpha_{j}$  can be computed very efficiently. Let's now briefly sketch the main ideas for deriving the efficient update.

Let's say we currently have some setting of the  $\alpha_{i}$ 's that satisfy the constraints (6.20-6.21), and suppose we've decided to hold  $\alpha_{3},\ldots ,\alpha_{n}$  fixed, and want to reoptimize  $W(\alpha_{1},\alpha_{2},\dots,\alpha_{n})$  with respect to  $\alpha_{1}$  and  $\alpha_{2}$  (subject to the constraints). From (6.21), we require that

$$
\alpha_{1} y^{(1)} + \alpha_{2} y^{(2)} = - \sum_{i = 3}^{n} \alpha_{i} y^{(i)}.
$$

Since the right hand side is fixed (as we've fixed  $\alpha_{3},\ldots \alpha_{n}$ ), we can just let it be denoted by some constant  $\zeta$ :

$$
\alpha_{1} y^{(1)} + \alpha_{2} y^{(2)} = \zeta . \tag {6.22}
$$

We can thus picture the constraints on  $\alpha_{1}$  and  $\alpha_{2}$  as follows:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/e18f10f10bc3de8db2f571b7eaa1647400e08b6a168a3272060d8038b75d02d8.jpg)

From the constraints (6.20), we know that  $\alpha_{1}$  and  $\alpha_{2}$  must lie within the box  $[0, C] \times [0, C]$  shown. Also plotted is the line  $\alpha_{1}y^{(1)} + \alpha_{2}y^{(2)} = \zeta$ , on which we know  $\alpha_{1}$  and  $\alpha_{2}$  must lie. Note also that, from these constraints, we know  $L \leq \alpha_{2} \leq H$ ; otherwise,  $(\alpha_{1}, \alpha_{2})$  can't simultaneously satisfy both the box and the straight line constraint. In this example,  $L = 0$ . But depending on what the line  $\alpha_{1}y^{(1)} + \alpha_{2}y^{(2)} = \zeta$  looks like, this won't always necessarily be the case; but more generally, there will be some lower-bound  $L$  and some upper-bound  $H$  on the permissible values for  $\alpha_{2}$  that will ensure that  $\alpha_{1}, \alpha_{2}$  lie within the box  $[0, C] \times [0, C]$ .

Using Equation (6.22), we can also write  $\alpha_{1}$  as a function of  $\alpha_{2}$ :

$$
\alpha_{1} = (\zeta - \alpha_{2} y^{(2)}) y^{(1)}.
$$

(Check this derivation yourself; we again used the fact that  $y^{(1)} \in \{-1, 1\}$  so that  $(y^{(1)})^2 = 1$ .) Hence, the objective  $W(\alpha)$  can be written

$$
W (\alpha_{1}, \alpha_{2}, \ldots , \alpha_{n}) = W ((\zeta - \alpha_{2} y^{(2)}) y^{(1)}, \alpha_{2}, \ldots , \alpha_{n}).
$$

Treating  $\alpha_{3},\ldots ,\alpha_{n}$  as constants, you should be able to verify that this is just some quadratic function in  $\alpha_{2}$ . I.e., this can also be expressed in the form  $a\alpha_{2}^{2} + b\alpha_{2} + c$  for some appropriate  $a,b$ , and  $c$ . If we ignore the "box" constraints (6.20) (or, equivalently, that  $L\leq \alpha_{2}\leq H$ ), then we can easily maximize this quadratic function by setting its derivative to zero and solving. We'll let  $\alpha_{2}^{new,unclipped}$  denote the resulting value of  $\alpha_{2}$ . You should also be able to convince yourself that if we had instead wanted to maximize  $W$  with respect to  $\alpha_{2}$  but subject to the box constraint, then we can find the resulting value optimal simply by taking  $\alpha_{2}^{new,unclipped}$  and "clipping" it to lie in the

$[L,H]$  interval, to get

$$
\alpha_{2}^{n e w} = \left\{ \begin{array}{l l} H & \mathrm{if} \alpha_{2}^{n e w, u n c l i p p e d} > H \\ \alpha_{2}^{n e w, u n c l i p p e d} & \mathrm{if} L \leq \alpha_{2}^{n e w, u n c l i p p e d} \leq H \\ L & \mathrm{if} \alpha_{2}^{n e w, u n c l i p p e d} <   L \end{array} \right.
$$

Finally, having found the  $\alpha_{2}^{new}$ , we can use Equation (6.22) to go back and find the optimal value of  $\alpha_{1}^{new}$ .

There're a couple more details that are quite easy but that we'll leave you to read about yourself in Platt's paper: One is the choice of the heuristics used to select the next  $\alpha_{i}$ ,  $\alpha_{j}$  to update; the other is how to update  $b$  as the SMO algorithm is run.

# Part II

# Deep learning

# Chapter 7

# Deep learning

We now begin our study of deep learning. In this set of notes, we give an overview of neural networks, discuss vectorization and discuss training neural networks with backpropagation.

# 7.1 Supervised learning with non-linear models

In the supervised learning setting (predicting  $y$  from the input  $x$ ), suppose our model/hypothesis is  $h_\theta(x)$ . In the past lectures, we have considered the cases when  $h_\theta(x) = \theta^\top x$  (in linear regression) or  $h_\theta(x) = \theta^\top \phi(x)$  (where  $\phi(x)$  is the feature map). A commonality of these two models is that they are linear in the parameters  $\theta$ . Next we will consider learning general family of models that are non-linear in both the parameters  $\theta$  and the inputs  $x$ . The most common non-linear models are neural networks, which we will define starting from the next section. For this section, it suffices to think  $h_\theta(x)$  as an abstract non-linear model. $^1$

Suppose  $\{(x^{(i)},y^{(i)})\}_{i = 1}^{n}$  are the training examples. We will define the nonlinear model and the loss/cost function for learning it.

Regression problems. For simplicity, we start with the case where the output is a real number, that is,  $y^{(i)} \in \mathbb{R}$ , and thus the model  $h_{\theta}$  also outputs a real number  $h_{\theta}(x) \in \mathbb{R}$ . We define the least square cost function for the

$i$ -th example  $(x^{(i)},y^{(i)})$  as

$$
J^{(i)} (\theta) = \frac{1}{2} \left(h_{\theta} \left(x^{(i)}\right) - y^{(i)}\right)^{2}, \tag {7.1}
$$

and define the mean-square cost function for the dataset as

$$
J (\theta) = \frac{1}{n} \sum_{i = 1}^{n} J^{(i)} (\theta), \tag {7.2}
$$

which is same as in linear regression except that we introduce a constant  $1 / n$  in front of the cost function to be consistent with the convention. Note that multiplying the cost function with a scalar will not change the local minima or global minima of the cost function. Also note that the underlying parameterization for  $h_{\theta}(x)$  is different from the case of linear regression, even though the form of the cost function is the same mean-squared loss. Throughout the notes, we use the words "loss" and "cost" interchangeably.

Binary classification. Next we define the model and loss function for binary classification. Suppose the inputs  $x \in \mathbb{R}^d$ . Let  $\bar{h}_{\theta}: \mathbb{R}^d \to \mathbb{R}$  be a parameterized model (the analog of  $\theta^\top x$  in logistic linear regression). We call the output  $\bar{h}_{\theta}(x) \in \mathbb{R}$  the logit. Analogous to Section 2.1, we use the logistic function  $g(\cdot)$  to turn the logit  $\bar{h}_{\theta}(x)$  to a probability  $h_{\theta}(x) \in [0,1]$ :

$$
h_{\theta} (x) = g \left(\bar {h}_{\theta} (x)\right) = 1 / \left(1 + \exp \left(- \bar {h}_{\theta} (x)\right)\right). \tag {7.3}
$$

We model the conditional distribution of  $y$  given  $x$  and  $\theta$  by

$$
P (y = 1 \mid x; \theta) = h_{\theta} (x)
$$

$$
P (y = 0 \mid x; \theta) = 1 - h_{\theta} (x)
$$

Following the same derivation in Section 2.1 and using the derivation in Remark 2.1.1, the negative likelihood loss function is equal to:

$$
J^{(i)} (\theta) = - \log p \left(y^{(i)} \mid x^{(i)}; \theta\right) = \ell_{\text{logistic}} \left(\bar {h}_{\theta} \left(x^{(i)}\right), y^{(i)}\right) \tag {7.4}
$$

As done in equation (7.2), the total loss function is also defined as the average of the loss function over individual training examples,  $J(\theta) = \frac{1}{n}\sum_{i=1}^{n}J^{(i)}(\theta)$ .

Multi-class classification. Following Section 2.3, we consider a classification problem where the response variable  $y$  can take on any one of  $k$  values, i.e.  $y \in \{1, 2, \ldots, k\}$ . Let  $\bar{h}_{\theta}: \mathbb{R}^d \to \mathbb{R}^k$  be a parameterized model. We call the outputs  $\bar{h}_{\theta}(x) \in \mathbb{R}^k$  the logits. Each logit corresponds to the prediction for one of the  $k$  classes. Analogous to Section 2.3, we use the softmax function to turn the logits  $\bar{h}_{\theta}(x)$  into a probability vector with non-negative entries that sum up to 1:

$$
P (y = j \mid x; \theta) = \frac{\exp (\bar {h}_{\theta} (x)_{j})}{\sum_{s = 1}^{k} \exp (\bar {h}_{\theta} (x)_{s})}, \tag {7.5}
$$

where  $\bar{h}_{\theta}(x)_s$  denotes the  $s$ -th coordinate of  $\bar{h}_{\theta}(x)$ .

Similarly to Section 2.3, the loss function for a single training example  $(x^{(i)},y^{(i)})$  is its negative log-likelihood:

$$
J^{(i)} (\theta) = - \log p (y^{(i)} \mid x^{(i)}; \theta) = - \log \left(\frac{\exp (\bar {h}_{\theta} (x^{(i)})_{y^{(i)}})}{\sum_{s = 1}^{k} \exp (\bar {h}_{\theta} (x^{(i)})_{s})}\right). \qquad (7. 6)
$$

Using the notations of Section 2.3, we can simply write in an abstract way:

$$
J^{(i)} (\theta) = \ell_{\mathrm{ce}} (\bar {h}_{\theta} (x^{(i)}), y^{(i)}). \tag {7.7}
$$

The loss function is also defined as the average of the loss function of individual training examples,  $J(\theta) = \frac{1}{n}\sum_{i=1}^{n}J^{(i)}(\theta)$ .

We also note that the approach above can also be generated to any conditional probabilistic model where we have an exponential distribution for  $y$ , Exponential-family  $(y;\eta)$ , where  $\eta = \bar{h}_{\theta}(x)$  is a parameterized nonlinear function of  $x$ . However, the most widely used situations are the three cases discussed above.

Optimizers (SGD). Commonly, people use gradient descent (GD), stochastic gradient (SGD), or their variants to optimize the loss function  $J(\theta)$ . GD's update rule can be written as<sup>2</sup>

$$
\theta := \theta - \alpha \nabla_{\theta} J (\theta) \tag {7.8}
$$

where  $\alpha > 0$  is often referred to as the learning rate or step size. Next, we introduce a version of the SGD (Algorithm 1), which is lightly different from that in the first lecture notes.

# Algorithm 1 Stochastic Gradient Descent

1: Hyperparameter: learning rate  $\alpha$ , number of total iteration  $n_{\mathrm{iter}}$ .  
2: Initialize  $\theta$  randomly.  
3: for  $i = 1$  to  $n_{\mathrm{iter}}$  do  
4: Sample  $j$  uniformly from  $\{1, \ldots, n\}$ , and update  $\theta$  by

$$
\theta := \theta - \alpha \nabla_{\theta} J^{(j)} (\theta) \tag {7.9}
$$

Oftentimes computing the gradient of  $B$  examples simultaneously for the parameter  $\theta$  can be faster than computing  $B$  gradients separately due to hardware parallelization. Therefore, a mini-batch version of SGD is most commonly used in deep learning, as shown in Algorithm 2. There are also other variants of the SGD or mini-batch SGD with slightly different sampling schemes.

# Algorithm 2 Mini-batch Stochastic Gradient Descent

1: Hyperparameters: learning rate  $\alpha$ , batch size  $B$ , # iterations  $n_{\mathrm{iter}}$ .  
2: Initialize  $\theta$  randomly  
3: for  $i = 1$  to  $n_{\mathrm{iter}}$  do  
4: Sample  $B$  examples  $j_1, \ldots, j_B$  (without replacement) uniformly from  $\{1, \ldots, n\}$ , and update  $\theta$  by

$$
\theta := \theta - \frac{\alpha}{B} \sum_{k = 1}^{B} \nabla_{\theta} J^{(j_{k})} (\theta) \tag {7.10}
$$

With these generic algorithms, a typical deep learning model is learned with the following steps. 1. Define a neural network parametrization  $h_{\theta}(x)$ , which we will introduce in Section 7.2, and 2. write the backpropagation algorithm to compute the gradient of the loss function  $J^{(j)}(\theta)$  efficiently, which will be covered in Section 7.4, and 3. run SGD or mini-batch SGD (or other gradient-based optimizers) with the loss function  $J(\theta)$ .

# 7.2 Neural networks

Neural networks refer to a broad type of non-linear models/parametrizations  $\bar{h}_{\theta}(x)$  that involve combinations of matrix multiplications and other entrywise non-linear operations. To have a unified treatment for regression problem and classification problem, here we consider  $\bar{h}_{\theta}(x)$  as the output of the neural network. For regression problem, the final prediction  $h_{\theta}(x) = \bar{h}_{\theta}(x)$ , and for classification problem,  $\bar{h}_{\theta}(x)$  is the logits and the predicted probability will be  $h_{\theta}(x) = 1 / (1 + \exp(-\bar{h}_{\theta}(x))$  (see equation 7.3) for binary classification or  $h_{\theta}(x) = \mathrm{softmax}(\bar{h}_{\theta}(x))$  for multi-class classification (see equation 7.5).

We will start small and slowly build up a neural network, step by step.

A Neural Network with a Single Neuron. Recall the housing price prediction problem from before: given the size of the house, we want to predict the price. We will use it as a running example in this subsection.

Previously, we fit a straight line to the graph of size vs. housing price. Now, instead of fitting a straight line, we wish to prevent negative housing prices by setting the absolute minimum price as zero. This produces a "kink" in the graph as shown in Figure 7.1. How do we represent such a function with a single kink as  $\bar{h}_{\theta}(x)$  with unknown parameter? (After doing so, we can invoke the machinery in Section 7.1.)

We define a parameterized function  $\bar{h}_{\theta}(x)$  with input  $x$ , parameterized by  $\theta$ , which outputs the price of the house  $y$ . Formally,  $\bar{h}_{\theta}: x \to y$ . Perhaps one of the simplest parametrization would be

$$
\bar {h}_{\theta} (x) = \max  (w x + b, 0), \text{where} \theta = (w, b) \in \mathbb {R}^{2} \tag {7.11}
$$

Here  $\bar{h}_{\theta}(x)$  returns a single value:  $(wx + b)$  or zero, whichever is greater. In the context of neural networks, the function  $\max \{t,0\}$  is called a ReLU (pronounced "ray-lu"), or rectified linear unit, and often denoted by  $\mathrm{ReLU}(t) \triangleq \max \{t,0\}$ .

Generally, a one-dimensional non-linear function that maps  $\mathbb{R}$  to  $\mathbb{R}$  such as ReLU is often referred to as an activation function. The model  $\bar{h}_{\theta}(x)$  is said to have a single neuron partly because it has a single non-linear activation function. (We will discuss more about why a non-linear activation is called neuron.)

When the input  $x \in \mathbb{R}^d$  has multiple dimensions, a neural network with a single neuron can be written as

$$
\bar {h}_{\theta} (x) = \operatorname{ReLU} \left(w^{\top} x + b\right), \text{where} w \in \mathbb {R}^{d}, b \in \mathbb {R}, \text{and} \theta = (w, b) \tag {7.12}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/1216a5f7cefaa64082d0a55a1cf459e4ed1364308db28ddda521dadec035e800.jpg)  
Figure 7.1: Housing prices with a "kink" in the graph.

The term  $b$  is often referred to as the "bias", and the vector  $w$  is referred to as the weight vector. Such a neural network has 1 layer. (We will define what multiple layers mean in the sequel.)

Stacking Neurons. A more complex neural network may take the single neuron described above and "stack" them together such that one neuron passes its output as input into the next neuron, resulting in a more complex function.

Let us now deepen the housing prediction example. In addition to the size of the house, suppose that you know the number of bedrooms, the zip code and the wealth of the neighborhood. Building neural networks is analogous to Lego bricks: you take individual bricks and stack them together to build complex structures. The same applies to neural networks: we take individual neurons and stack them together to create complex neural networks.

Given these features (size, number of bedrooms, zip code, and wealth), we might then decide that the price of the house depends on the maximum family size it can accommodate. Suppose the family size is a function of the size of the house and number of bedrooms (see Figure 7.2). The zip code may provide additional information such as how walkable the neighborhood is (i.e., can you walk to the grocery store or do you need to drive everywhere). Combining the zip code with the wealth of the neighborhood may predict the quality of the local elementary school. Given these three derived features (family size, walkable, school quality), we may conclude that the price of the

home ultimately depends on these three features.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/001d74c902b79d45ee6550a36bad82a01936eafd971327c30308ffeef79ac824.jpg)  
Figure 7.2: Diagram of a small neural network for predicting housing prices.

Formally, the input to a neural network is a set of input features  $x_{1}, x_{2}, x_{3}, x_{4}$ . We denote the intermediate variables for "family size", "walkable", and "school quality" by  $a_{1}, a_{2}, a_{3}$  (these  $a_{i}$ 's are often referred to as "hidden units" or "hidden neurons"). We represent each of the  $a_{i}$ 's as a neural network with a single neuron with a subset of  $x_{1}, \ldots, x_{4}$  as inputs. Then as in Figure 7.1, we will have the parameterization:

$$
a_{1} = \operatorname{ReLU} \left(\theta_{1} x_{1} + \theta_{2} x_{2} + \theta_{3}\right)
$$

$$
a_{2} = \operatorname{ReLU} \left(\theta_{4} x_{3} + \theta_{5}\right)
$$

$$
a_{3} = \mathrm{ReLU} (\theta_{6} x_{3} + \theta_{7} x_{4} + \theta_{8})
$$

where  $(\theta_{1},\dots ,\theta_{8})$  are parameters. Now we represent the final output  $\bar{h}_{\theta}(x)$  as another linear function with  $a_1,a_2,a_3$  as inputs, and we get

$$
\bar {h}_{\theta} (x) = \theta_{9} a_{1} + \theta_{1 0} a_{2} + \theta_{1 1} a_{3} + \theta_{1 2} \tag {7.13}
$$

where  $\theta$  contains all the parameters  $(\theta_{1},\dots ,\theta_{12})$

Now we represent the output as a quite complex function of  $x$  with parameters  $\theta$ . Then you can use this parametrization  $\bar{h}_{\theta}$  with the machinery of Section 7.1 to learn the parameters  $\theta$ .

Inspiration from Biological Neural Networks. As the name suggests, artificial neural networks were inspired by biological neural networks. The hidden units  $a_1, \ldots, a_m$  correspond to the neurons in a biological neural network, and the parameters  $\theta_i$ 's correspond to the synapses. However, it's unclear how similar the modern deep artificial neural networks are to the biological ones. For example, perhaps not many neuroscientists think biological

neural networks could have 1000 layers, while some modern artificial neural networks do (we will elaborate more on the notion of layers.) Moreover, it's an open question whether human brains update their neural networks in a way similar to the way that computer scientists learn artificial neural networks (using backpropagation, which we will introduce in the next section.).

Two-layer Fully-Connected Neural Networks. We constructed the neural network in equation (7.13) using a significant amount of prior knowledge/belief about how the "family size", "walkable", and "school quality" are determined by the inputs. We implicitly assumed that we know the family size is an important quantity to look at and that it can be determined by only the "size" and "# bedrooms". Such a prior knowledge might not be available for other applications. It would be more flexible and general to have a generic parameterization. A simple way would be to write the intermediate variable  $a_1$  as a function of all  $x_1, \ldots, x_4$ :

$$
a_{1} = \operatorname{ReLU} \left(w_{1}^{\top} x + b_{1}\right), \text{where} w_{1} \in \mathbb {R}^{4} \text{and} b_{1} \in \mathbb {R} \tag {7.14}
$$

$$
a_{2} = \mathrm{ReLU} (w_{2}^{\top} x + b_{2}), \mathrm{where} w_{2} \in \mathbb {R}^{4} \mathrm{and} b_{2} \in \mathbb {R}
$$

$$
a_{3} = \mathrm{ReLU} (w_{3}^{\top} x + b_{3}), \mathrm{where} w_{3} \in \mathbb {R}^{4} \mathrm{and} b_{3} \in \mathbb {R}
$$

We still define  $\bar{h}_{\theta}(x)$  using equation (7.13) with  $a_1, a_2, a_3$  being defined as above. Thus we have a so-called fully-connected neural network because all the intermediate variables  $a_i$ 's depend on all the inputs  $x_i$ 's.

For full generality, a two-layer fully-connected neural network with  $m$  hidden units and  $d$  dimensional input  $x \in \mathbb{R}^d$  is defined as

$$
\forall j \in [ 1, \dots , m ], \quad z_{j} = w_{j}^{[ 1 ]}^{\top} x + b_{j}^{[ 1 ]} \text{where} w_{j}^{[ 1 ]} \in \mathbb {R}^{d}, b_{j}^{[ 1 ]} \in \mathbb {R} \tag {7.15}
$$

$$
a_{j} = \operatorname{ReLU} (z_{j}),
$$

$$
a = [ a_{1}, \ldots , a_{m} ]^{\top} \in \mathbb {R}^{m}
$$

$$
\bar {h}_{\theta} (x) = w^{[ 2 ]}^{\top} a + b^{[ 2 ]} \text{where} w^{[ 2 ]} \in \mathbb {R}^{m}, b^{[ 2 ]} \in \mathbb {R}, \tag {7.16}
$$

Note that by default the vectors in  $\mathbb{R}^d$  are viewed as column vectors, and in particular  $a$  is a column vector with components  $a_1, a_2, \ldots, a_m$ . The indices [1] and [2] are used to distinguish two sets of parameters: the  $w_j^{[1]}$ 's (each of which is a vector in  $\mathbb{R}^d$ ) and  $w^{[2]}$  (which is a vector in  $\mathbb{R}^m$ ). We will have more of these later.

Vectorization. Before we introduce neural networks with more layers and more complex structures, we will simplify the expressions for neural networks

with more matrix and vector notations. Another important motivation of vectorization is the speed perspective in the implementation. In order to implement a neural network efficiently, one must be careful when using for loops. The most natural way to implement equation (7.15) in code is perhaps to use a for loop. In practice, the dimensionalities of the inputs and hidden units are high. As a result, code will run very slowly if you use for loops. Leveraging the parallelism in GPUs is/was crucial for the progress of deep learning.

This gave rise to vectorization. Instead of using for loops, vectorization takes advantage of matrix algebra and highly optimized numerical linear algebra packages (e.g., BLAS) to make neural network computations run quickly. Before the deep learning era, a for loop may have been sufficient on smaller datasets, but modern deep networks and state-of-the-art datasets will be infeasible to run with for loops.

We vectorize the two-layer fully-connected neural network as below. We define a weight matrix  $W^{[1]}$  in  $\mathbb{R}^{m \times d}$  as the concatenation of all the vectors  $w_{j}^{[1]'}$ 's in the following way:

$$
W^{[ 1 ]} = \left[ \begin{array}{c} - w_{1}^{[ 1 ]}^{\top} - \\ - w_{2}^{[ 1 ]}^{\top} - \\ \vdots \\ - w_{m}^{[ 1 ]}^{\top} - \end{array} \right] \in \mathbb {R}^{m \times d} \tag {7.17}
$$

Now by the definition of matrix vector multiplication, we can write  $z = [z_1,\dots ,z_m]^\top \in \mathbb{R}^m$  as

$$
\underbrace {\left[ \begin{array}{c} z_{1} \\ \vdots \\ \vdots \\ z_{m} \end{array} \right]}_{z \in \mathbb {R}^{m \times 1}} = \underbrace {\left[ \begin{array}{c} - w_{1}^{[ 1 ]}^{\top} - \\ - w_{2}^{[ 1 ]}^{\top} - \\ \vdots \\ - w_{m}^{[ 1 ]}^{\top} - \end{array} \right]}_{W^{[ 1 ]} \in \mathbb {R}^{m \times d}} \underbrace {\left[ \begin{array}{c} x_{1} \\ x_{2} \\ \vdots \\ x_{d} \end{array} \right]}_{x \in \mathbb {R}^{d \times 1}} + \underbrace {\left[ \begin{array}{c} b_{1}^{[ 1 ]} \\ b_{2}^{[ 1 ]} \\ \vdots \\ b_{m}^{[ 1 ]} \end{array} \right]}_{b^{[ 1 ]} \in \mathbb {R}^{m \times 1}} \tag {7.18}
$$

Or succinctly,

$$
z = W^{[ 1 ]} x + b^{[ 1 ]} \tag {7.19}
$$

We remark again that a vector in  $\mathbb{R}^d$  in this notes, following the conventions previously established, is automatically viewed as a column vector, and can

also be viewed as a  $d \times 1$  dimensional matrix. (Note that this is different from numpy where a vector is viewed as a row vector in broadcasting.)

Computing the activations  $a \in \mathbb{R}^m$  from  $z \in \mathbb{R}^m$  involves an element-wise non-linear application of the ReLU function, which can be computed in parallel efficiently. Overloading ReLU for element-wise application of ReLU (meaning, for a vector  $t \in \mathbb{R}^d$ ,  $\mathrm{ReLU}(t)$  is a vector such that  $\mathrm{ReLU}(t)_i = \mathrm{ReLU}(t_i)$ ), we have

$$
a = \operatorname{ReLU} (z) \tag {7.20}
$$

Define  $W^{[2]} = [w^{[2]^\top}] \in \mathbb{R}^{1 \times m}$  similarly. Then, the model in equation (7.16) can be summarized as

$$
a = \operatorname{ReLU} (W^{[ 1 ]} x + b^{[ 1 ]})
$$

$$
\bar {h}_{\theta} (x) = W^{[ 2 ]} a + b^{[ 2 ]} \tag {7.21}
$$

Here  $\theta$  consists of  $W^{[1]}, W^{[2]}$  (often referred to as the weight matrices) and  $b^{[1]}, b^{[2]}$  (referred to as the biases). The collection of  $W^{[1]}, b^{[1]}$  is referred to as the first layer, and  $W^{[2]}, b^{[2]}$  the second layer. The activation  $a$  is referred to as the hidden layer. A two-layer neural network is also called one-hidden-layer neural network.

Multi-layer fully-connected neural networks. With this succinct notations, we can stack more layers to get a deeper fully-connected neural network. Let  $r$  be the number of layers (weight matrices). Let  $W^{[1]},\ldots ,W^{[r]},b^{[1]},\ldots ,b^{[r]}$  be the weight matrices and biases of all the layers. Then a multi-layer neural network can be written as

$$
a^{[ 1 ]} = \mathrm{ReLU} (W^{[ 1 ]} x + b^{[ 1 ]})
$$

$$
a^{[ 2 ]} = \operatorname{ReLU} (W^{[ 2 ]} a^{[ 1 ]} + b^{[ 2 ]})
$$

$$
\begin{array}{c c c} \cdot & \cdot & \cdot \\ \cdot & \cdot & \cdot \end{array}
$$

$$
a^{[ r - 1 ]} = \operatorname{ReLU} (W^{[ r - 1 ]} a^{[ r - 2 ]} + b^{[ r - 1 ]})
$$

$$
\bar {h}_{\theta} (x) = W^{[ r ]} a^{[ r - 1 ]} + b^{[ r ]} \tag {7.22}
$$

We note that the weight matrices and biases need to have compatible dimensions for the equations above to make sense. If  $a^{[k]}$  has dimension  $m_{k}$ , then the weight matrix  $W^{[k]}$  should be of dimension  $m_{k} \times m_{k-1}$ , and the bias  $b^{[k]} \in \mathbb{R}^{m_{k}}$ . Moreover,  $W^{[1]} \in \mathbb{R}^{m_{1} \times d}$  and  $W^{[r]} \in \mathbb{R}^{1 \times m_{r-1}}$ .

The total number of neurons in the network is  $m_{1} + \dots + m_{r}$ , and the total number of parameters in this network is  $(d + 1)m_{1} + (m_{1} + 1)m_{2} + \dots + (m_{r - 1} + 1)m_{r}$ .

Sometimes for notational consistency we also write  $a^{[0]} = x$ , and  $a^{[r]} = h_{\theta}(x)$ . Then we have simple recursion that

$$
a^{[ k ]} = \mathrm{ReLU} (W^{[ k ]} a^{[ k - 1 ]} + b^{[ k ]}), \forall k = 1, \ldots , r - 1 \tag {7.23}
$$

Note that this would have been true for  $k = r$  if there were an additional ReLU in equation (7.22), but often people like to make the last layer linear (aka without a ReLU) so that negative outputs are possible and it's easier to interpret the last layer as a linear model. (More on the interpretability at the "connection to kernel method" paragraph of this section.)

Other activation functions. The activation function ReLU can be replaced by many other non-linear function  $\sigma (\cdot)$  that maps  $\mathbb{R}$  to  $\mathbb{R}$  such as

$$
\sigma (z) = \frac{1}{1 + e^{- z}} \quad (\text{sigmoid}) \tag {7.24}
$$

$$
\sigma (z) = \frac{e^{z} - e^{- z}}{e^{z} + e^{- z}} \qquad (\tanh) \qquad \qquad (7. 2 5)
$$

$$
\sigma (z) = \max  \{z, \gamma z \}, \gamma \in (0, 1) \quad (\text{leakyReLU}) \tag {7.26}
$$

$$
\sigma (z) = \frac{z}{2} \left[ 1 + \operatorname{erf} (\frac{z}{\sqrt{2}}) \right] \quad \mathrm{(GELU)} \tag {7.27}
$$

$$
\sigma (z) = \frac{1}{\beta} \log (1 + \exp (\beta z)), \beta > 0 \quad \text{(Softplus)} \tag {7.28}
$$

The activation functions are plotted in Figure 7.3. Sigmoid and tanh are less and less used these days partly because their are bounded from both sides and the gradient of them vanishes as  $z$  goes to both positive and negative infinity (whereas all the other activation functions still have gradients as the input goes to positive infinity.) Softplus is not used very often either in practice and can be viewed as a smoothing of the ReLU so that it has a proper second order derivative. GELU and leaky ReLU are both variants of ReLU but they have some non-zero gradient even when the input is negative. GELU (or its slight variant) is used in NLP models such as BERT and GPT (which we will discuss in Chapter 14.)

Why do we not use the identity function for  $\sigma(z)$ ? That is, why not use  $\sigma(z) = z$ ? Assume for sake of argument that  $b^{[1]}$  and  $b^{[2]}$  are zeros.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/aa9bd9af2407a64bcb53a7b34899090a40e030f7f138f7e2b9ef94af2603fc14.jpg)  
Figure 7.3: Activation functions in deep learning.

Suppose  $\sigma (z) = z$ , then for two-layer neural network, we have that

$$
\begin{array}{l} \bar {h}_{\theta} (x) = W^{[ 2 ]} a^{[ 1 ]} (7.29) \\ = W^{[ 2 ]} \sigma (z^{[ 1 ]}) \quad \text{by} (7.30) \\ = W^{[ 2 ]} z^{[ 1 ]} \quad \text{since} \sigma (z) = z (7.31) \\ = W^{[ 2 ]} W^{[ 1 ]} x \quad \text{fromEquation (7 .18)} (7.32) \\ = \tilde {W} x \quad \text{where} \tilde {W} = W^{[ 2 ]} W^{[ 1 ]} (7.33) \\ \end{array}
$$

Notice how  $W^{[2]}W^{[1]}$  collapsed into  $\tilde{W}$ .

This is because applying a linear function to another linear function will result in a linear function over the original input (i.e., you can construct a  $\tilde{W}$  such that  $\tilde{W}x = W^{[2]}W^{[1]}x$ ). This loses much of the representational power of the neural network as often times the output we are trying to predict has a non-linear relationship with the inputs. Without non-linear activation functions, the neural network will simply perform linear regression.

Connection to the Kernel Method. In the previous lectures, we covered the concept of feature maps. Recall that the main motivation for feature maps is to represent functions that are non-linear in the input  $x$  by  $\theta^{\top}\phi(x)$ , where  $\theta$  are the parameters and  $\phi(x)$ , the feature map, is a handcrafted function non-linear in the raw input  $x$ . The performance of the learning algorithms can significantly depend on the choice of the feature map  $\phi(x)$ . Oftentimes people use domain knowledge to design the feature map  $\phi(x)$  that

suits the particular applications. The process of choosing the feature maps is often referred to as feature engineering.

We can view deep learning as a way to automatically learn the right feature map (sometimes also referred to as "the representation") as follows. Suppose we denote by  $\beta$  the collection of the parameters in a fully-connected neural networks (equation (7.22)) except those in the last layer. Then we can abstract right  $a^{[r - 1]}$  as a function of the input  $x$  and the parameters in  $\beta$ :  $a^{[r - 1]} = \phi_{\beta}(x)$ . Now we can write the model as

$$
\bar {h}_{\theta} (x) = W^{[ r ]} \phi_{\beta} (x) + b^{[ r ]} \tag {7.34}
$$

When  $\beta$  is fixed, then  $\phi_{\beta}(\cdot)$  can be viewed as a feature map, and therefore  $\bar{h}_{\theta}(x)$  is just a linear model over the features  $\phi_{\beta}(x)$ . However, we will train the neural networks, both the parameters in  $\beta$  and the parameters  $W^{[r]}, b^{[r]}$  are optimized, and therefore we are not learning a linear model in the feature space, but also learning a good feature map  $\phi_{\beta}(\cdot)$  itself so that it's possible to predict accurately with a linear model on top of the feature map. Therefore, deep learning tends to depend less on the domain knowledge of the particular applications and requires often less feature engineering. The penultimate layer  $a^{[r]}$  is often (informally) referred to as the learned features or representations in the context of deep learning.

In the example of house price prediction, a fully-connected neural network does not need us to specify the intermediate quantity such "family size", and may automatically discover some useful features in the last penultimate layer (the activation  $a^{[r - 1]}$ ), and use them to linearly predict the housing price. Often the feature map / representation obtained from one datasets (that is, the function  $\phi_{\beta}(\cdot)$  can be also useful for other datasets, which indicates they contain essential information about the data. However, oftentimes, the neural network will discover complex features which are very useful for predicting the output but may be difficult for a human to understand or interpret. This is why some people refer to neural networks as a black box, as it can be difficult to understand the features it has discovered.

# 7.3 Modules in Modern Neural Networks

The multi-layer neural network introduced in equation (7.22) of Section 7.2 is often called multi-layer perceptron (MLP) these days. Modern neural networks used in practice are often much more complex and consist of multiple building blocks or multiple layers of building blocks. In this section, we will

introduce some of the other building blocks and discuss possible ways to combine them.

First, each matrix multiplication can be viewed as a building block. Consider a matrix multiplication operation with parameters  $(W,b)$  where  $W$  is the weight matrix and  $b$  is the bias vector, operating on an input  $z$ ,

$$
\mathrm{MM}_{W, b} (z) = W z + b. \tag {7.35}
$$

Note that we implicitly assume all the dimensions are chosen to be compatible. We will also drop the subscripts under MM when they are clear in the context or just for convenience when they are not essential to the discussion.

Then, the MLP can be written as a composition of multiple matrix multiplication modules and nonlinear activation modules (which can also be viewed as a building block):

$$
\operatorname{MLP} (x) = \operatorname{MM}_{W^{[ r ]}, b^{[ r ]}} \left(\sigma \left(\operatorname{MM}_{W^{[ r - 1 ]}, b^{[ r - 1 ]}} \left(\sigma \left(\dots \operatorname{MM}_{W^{[ 1 ]}, b^{[ 1 ]}} (x)\right)\right)\right)\right). \tag {7.36}
$$

Alternatively, when we drop the subscripts that indicate the parameters for convenience, we can write

$$
\operatorname{MLP} (x) = \operatorname{MM} (\sigma (\operatorname{MM} \sigma (\dots \operatorname{MM} (x)))) \tag {7.37}
$$

Note that in this lecture notes, by default, all the modules have different sets of parameters, and the dimensions of the parameters are chosen such that the composition is meaningful.

Larger modules can be defined via smaller modules as well, e.g., one activation layer  $\sigma$  and a matrix multiplication layer MM are often combined and called a "layer" in many papers. People often draw the architecture with the basic modules in a figure by indicating the dependency between these modules. E.g., see an illustration of an MLP in Figure 7.4, Left.

Residual connections. One of the very influential neural network architecture for vision application is ResNet, which uses the residual connections that are essentially used in almost all large-scale deep learning architectures these days. Using our notation above, a very much simplified residual block can be defined as

$$
\operatorname{Res} (z) = z + \sigma (\operatorname{MM} (\sigma (\operatorname{MM} (z)))) \tag {7.38}
$$

A much simplified ResNet is a composition of many residual blocks followed by a matrix multiplication,

$$
\operatorname{ResNet -S} (x) = \operatorname{MM} (\operatorname{Res} (\operatorname{Res} (\dots \operatorname{Res} (x)))) \tag {7.39}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/948559e0620d8446d67093f6b6ee2e6ee61e4d9e5e73d798ab36cd01e24f639b.jpg)  
Figure 7.4: Illustrative Figures for Architecture. Left: An MLP with  $r$  layers. Right: A residual network.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/b674b49625a603870b76bf73d29c510c7739645b5d8ddca0d1b03cf4389a70b2.jpg)

We also draw the dependency of these modules in Figure 7.4, Right.

We note that the ResNet-S is still not the same as the ResNet architecture introduced in the seminal paper [He et al., 2016] because ResNet uses convolution layers instead of vanilla matrix multiplication, and adds batch normalization between convolutions and activations. We will introduce convolutional layers and some variants of batch normalization below. ResNet-S and layer normalization are part of the Transformer architecture that are widely used in modern large language models.

Layer normalization. Layer normalization, denoted by LN in this text, is a module that maps a vector  $z \in \mathbb{R}^m$  to a more normalized vector  $\mathrm{LN}(z) \in \mathbb{R}^m$ . It is oftentimes used after the nonlinear activations.

We first define a sub-module of the layer normalization, denoted by LN-S.

$$
\operatorname{LN -S} (z) = \left[ \begin{array}{c} \frac{z_{1} - \hat {\mu}}{\hat {\sigma}} \\ \frac{z_{2} - \hat {\mu}}{\hat {\sigma}} \\ \vdots \\ \frac{z_{m} - \hat {\mu}}{\hat {\sigma}} \end{array} \right], \tag {7.40}
$$

where  $\hat{\mu} = \frac{\sum_{i=1}^{m} z_i}{m}$  is the empirical mean of the vector  $z$  and  $\hat{\sigma} = \sqrt{\frac{\sum_{i=1}^{m} (z_i - \hat{\mu}^2)}{m}}$  is the empirical standard deviation of the entries of  $z$ . Intuitively, LN-S(z) is a vector that is normalized to having empirical mean zero and empirical standard deviation 1.

Oftentimes zero mean and standard deviation 1 is not the most desired normalization scheme, and thus layernorm introduces to parameters learnable scalars  $\beta$  and  $\gamma$  as the desired mean and standard deviation, and use an affine transformation to turn the output of LN-S  $(z)$  into a vector with mean  $\beta$  and standard deviation  $\gamma$ .

$$
\mathrm{LN} (z) = \beta + \gamma \cdot \mathrm{LN -S} (z) = \left[ \begin{array}{c} \beta + \gamma \left(\frac{z_{1} - \hat {\mu}}{\hat {\sigma}}\right) \\ \beta + \gamma \left(\frac{z_{2} - \hat {\mu}}{\hat {\sigma}}\right) \\ \vdots \\ \beta + \gamma \left(\frac{z_{m} - \hat {\mu}}{\hat {\sigma}}\right) \end{array} \right]. \tag {7.41}
$$

Here the first occurrence of  $\beta$  should be technically interpreted as a vector with all the entries being  $\beta$ . In We also note that  $\hat{\mu}$  and  $\hat{\sigma}$  are also functions of  $z$  and shouldn't be treated as constants when computing the derivatives of layernorm. Moreover,  $\beta$  and  $\gamma$  are learnable parameters and thus layernorm is a parameterized module (as opposed to the activation layer which doesn't have any parameters.)

Scaling-invariant property. One important property of layer normalization is that it will make the model invariant to scaling of the parameters in the following sense. Suppose we consider composing LN with  $\mathrm{MM}_{W,b}$  and get a subnetwork  $\mathrm{LN}(\mathrm{MM}_{W,b}(z))$ . Then, we have that the output of this subnetwork does not change when the parameter in  $\mathrm{MM}_{W,b}$  is scaled:

$$
\mathrm{LN} (\mathrm{MM}_{\alpha W, \alpha b} (z)) = \mathrm{LN} (\mathrm{MM}_{W, b} (z)), \forall \alpha > 0. \tag {7.42}
$$

To see this, we first know that LN-S( $\cdot$ ) is scale-invariant

$$
\operatorname{LN -S} (\alpha z) = \left[ \begin{array}{c} \frac{\alpha z_{1} - \alpha \hat {\mu}}{\alpha \hat {\sigma}} \\ \frac{\alpha z_{2} - \alpha \hat {\mu}}{\alpha \hat {\sigma}} \\ \vdots \\ \frac{\alpha z_{m} - \alpha \hat {\mu}}{\alpha \hat {\sigma}} \end{array} \right] = \left[ \begin{array}{c} \frac{z_{1} - \hat {\mu}}{\hat {\sigma}} \\ \frac{z_{2} - \hat {\mu}}{\hat {\sigma}} \\ \vdots \\ \frac{z_{m} - \hat {\mu}}{\hat {\sigma}} \end{array} \right] = \operatorname{LN -S} (z). \tag {7.43}
$$

Then we have

$$
\begin{array}{l} \mathrm{LN} \left(\mathrm{MM}_{\alpha W, \alpha b} (z)\right) = \beta + \gamma \mathrm{LN -S} \left(\mathrm{MM}_{\alpha W, \alpha b} (z)\right) (7.44) \\ = \beta + \gamma \operatorname{LN} - \mathrm{S} \left(\alpha \mathrm{MM}_{W, b} (z)\right) (7.45) \\ = \beta + \gamma \mathrm{LN} - \mathrm{S} (\mathrm{MM}_{W, b} (z)) (7.46) \\ = \operatorname{LN} \left(\operatorname{MM}_{W, b} (z)\right). (7.47) \\ \end{array}
$$

Due to this property, most of the modern DL architectures for large-scale computer vision and language applications have the following scale-invariant

property w.r.t all the weights that are not at the last layer. Suppose the network  $f$  has last layer' weights  $W_{\mathrm{last}}$ , and all the rest of the weights are denote by  $W$ . Then, we have  $f_{W_{\mathrm{last}},\alpha W}(x) = f_{W_{\mathrm{last}},W}(x)$  for all  $\alpha > 0$ . Here, the last layers weights are special because there are typically no layernorm or batchnorm after the last layer's weights.

Other normalization layers. There are several other normalization layers that aim to normalize the intermediate layers of the neural networks to a more fixed and controllable scaling, such as batch-normalization [?], and group normalization [?]. Batch normalization and group normalization are more often used in computer vision applications whereas layer norm is used more often in language applications.

Convolutional Layers. Convolutional Neural Networks are neural networks that consist of convolution layers (and many other modules), and are particularly useful for computer vision applications. For the simplicity of exposition, we focus on 1-D convolution in this text and only briefly mention 2-D convolution informally at the end of this subsection. (2-D convolution is more suitable for images which have two dimensions. 1-D convolution is also used in natural language processing.)

We start by introducing a simplified version of the 1-D convolution layer, denoted by Conv1D-S( $\cdot$ ) which is a type of matrix multiplication layer with a special structure. The parameters of Conv1D-S are a filter vector  $w \in \mathbb{R}^k$  where  $k$  is called the filter size (oftentimes  $k \ll m$ ), and a bias scalar  $b$ . Oftentimes the filter is also called a kernel (but it does not have much to do with the kernel in kernel method.) For simplicity, we assume  $k = 2\ell + 1$  is an odd number. We first pad zeros to the input vector  $z$  in the sense that we let  $z_{1 - \ell} = z_{1 - \ell + 1} = .. = z_0 = 0$  and  $z_{m + 1} = z_{m + 2} = .. = z_{m + \ell} = 0$ , and treat  $z$  as an  $(m + 2\ell)$ -dimension vector. Conv1D-S outputs a vector of dimension  $\mathbb{R}^m$  where each output dimension is a linear combination of subsets of  $z_j$ 's with coefficients from  $w$ ,

$$
\operatorname{Conv1D -S} (z)_{i} = w_{1} z_{i - \ell} + w_{2} z_{i - \ell + 1} + \dots + w_{2 \ell + 1} z_{i + \ell} = \sum_{j = 1}^{2 \ell + 1} w_{j} z_{i - \ell + (j - 1)}. \tag {7.48}
$$

Therefore, one can view Conv1D-S as a matrix multiplication with shared

parameters: Conv1D-S(z) = Qz, where

$$
Q = \left[ \begin{array}{c c c c c c c c c c c c} w_{\ell + 1} & \dots & w_{2 \ell + 1} & 0 & 0 & \dots & \dots & \dots & \dots & \dots & \dots & 0 \\ w_{\ell} & \dots & w_{2 \ell} & w_{2 \ell + 1} & 0 & \dots & \dots & \dots & \dots & \dots & \dots & 0 \\ \vdots & & & & & & & & & & \\ w_{1} & \dots & w_{\ell + 1} & \dots & \dots & \dots & w_{2 \ell + 1} & 0 & \dots & \dots & \dots & 0 \\ 0 & w_{1} & \dots & \dots & \dots & \dots & w_{2 \ell} & w_{2 \ell + 1} & 0 & \dots & \dots & 0 \\ \vdots & & & & & & & & & \\ \vdots & & & & & & & & & \\ 0 & \dots & \dots & \dots & \dots & \dots & 0 & w_{1} & \dots & & \dots & w_{2 \ell + 1} \\ \vdots & & & & & & & \\ 0 & \dots & \dots & \dots & \dots & \dots & \dots & \dots & 0 & w_{1} & \dots & w_{\ell + 1} \end{array} \right]. \tag {7.49}
$$

Note that  $Q_{i,j} = Q_{i-1,j-1}$  for all  $i,j \in \{2,\dots,m\}$ , and thus convolution is a matrix multiplication with parameter sharing. We also note that computing the convolution only takes  $O(km)$  times but computing a generic matrix multiplication takes  $O(m^2)$  time. Convolution has  $k$  parameters but generic matrix multiplication will have  $m^2$  parameters. Thus convolution is supposed to be much more efficient than a generic matrix multiplication (as long as the additional structure imposed does not hurt the flexibility of the model to fit the data).

We also note that in practice there are many variants of the convolutional layers that we define here, e.g., there are other ways to pad zeros or sometimes the dimension of the output of the convolutional layers could be different from the input. We omit some of this subtleties here for simplicity.

The convolutional layers used in practice have also many "channels" and the simplified version above corresponds to the 1-channel version. Formally, Conv1D takes in  $C$  vectors  $z_{1},\ldots ,z_{C}\in \mathbb{R}^{m}$  as inputs, where  $C$  is referred to as the number of channels. In other words, the more general version, denoted by Conv1D, takes in a matrix as input, which is the concatenation of  $z_{1},\ldots ,z_{C}$  and has dimension  $m\times C$ . It can output  $C^\prime$  vectors of dimension  $m$ , denoted by  $\operatorname{Conv1D}(z)_1,\dots ,\operatorname{Conv1D}(z)_{C'}$ , where  $C^\prime$  is referred to as the output channel, or equivalently a matrix of dimension  $m\times C'$ . Each of the output is a sum of the simplified convolutions applied on various channels.

$$
\forall i \in [ C^{\prime} ], \operatorname{Conv1D} (z)_{i} = \sum_{j = 1}^{C} \operatorname{Conv1D -S}_{i, j} (z_{j}). \tag {7.50}
$$

Note that each  $\mathrm{Conv1D -S}_{i,j}$  are modules with different parameters, and thus the total number of parameters is  $k$  (the number of parameters in a Conv1D-S)  $\times CC^{\prime}$  (the number of Conv1D-  $\mathrm{S}_{i,j}$  's)  $= kCC^{\prime}$ . In contrast, a generic linear mapping from  $\mathbb{R}^{m\times C}$  and  $\mathbb{R}^{m\times C^{\prime}}$  has  $m^2 CC^{\prime}$  parameters. The

parameters can also be represented as a three-dimensional tensor of dimension  $k \times C \times C'$ .

2-D convolution (brief). A 2-D convolution with one channel, denoted by Conv2D-S, is analogous to the Conv1D-S, but takes a 2-dimensional input  $z \in \mathbb{R}^{m \times m}$  and applies a filter of size  $k \times k$ , and outputs Conv2D-S( $z$ )  $\in \mathbb{R}^{m \times m}$ . The full 2-D convolutional layer, denoted by Conv2D, takes in a sequence of matrices  $z_1, \ldots, z_C \in \mathbb{R}^{m \times m}$ , or equivalently a 3-D tensor  $z = (z_1, \ldots, z_C) \in \mathbb{R}^{m \times m \times C}$  and outputs a sequence of matrices, Conv2D( $z$ ) $_1$ , ..., Conv2D( $z$ ) $_{C'}$ $\in \mathbb{R}^{m \times m}$ , which can also be viewed as a 3D tensor in  $\mathbb{R}^{m \times m \times C'}$ . Each channel of the output is sum of the outcomes of applying Conv2D-S layers on all the input channels.

$$
\forall i \in [ C^{\prime} ], \operatorname{Conv2D} (z)_{i} = \sum_{j = 1}^{C} \operatorname{Conv2D -S}_{i, j} (z_{j}). \tag {7.51}
$$

Because there are  $CC'$  number of Conv2D-S modules and each of the Conv2D-S module has  $k^2$  parameters, the total number of parameters is  $CC'k^2$ . The parameters can also be viewed as a 4D tensor of dimension  $C \times C' \times k \times k$ .

# 7.4 Backpropagation

In this section, we introduce backpropagation or auto-differentiation, which computes the gradient of the loss  $\nabla J(\theta)$  efficiently. We will start with an informal theorem that states that as long as a real-valued function  $f$  can be efficiently computed/evaluated by a differentiable network or circuit, then its gradient can be efficiently computed in a similar time. We will then show how to do this concretely for neural networks.

Because the formality of the general theorem is not the main focus here, we will introduce the terms with informal definitions. By a differentiable circuit or a differentiable network, we mean a composition of a sequence of differentiable arithmetic operations (additions, subtraction, multiplication, divisions, etc) and elementary differentiable functions (ReLU, exp, log, sin, cos, etc.). Let the size of the circuit be the total number of such operations and elementary functions. We assume that each of the operations and functions, and their derivatives or partial derivatives can be computed in  $O(1)$  time.

Theorem 7.4.1: [backpropagation or auto-differentiation, informally stated] Suppose a differentiable circuit of size  $N$  computes a real-valued function

$f:\mathbb{R}^{\ell}\to \mathbb{R}$ . Then, the gradient  $\nabla f$  can be computed in time  $O(N)$ , by a circuit of size  $O(N)$ .<sup>5</sup>

We note that the loss function  $J^{(j)}(\theta)$  for  $j$ -th example can be indeed computed by a sequence of operations and functions involving additions, subtraction, multiplications, and non-linear activations. Thus the theorem suggests that we should be able to compute the  $\nabla J^{(j)}(\theta)$  in a similar time to that for computing  $J^{(j)}(\theta)$  itself. This does not only apply to the fully-connected neural network introduced in the Section 7.2, but also many other types of neural networks that uses more advance modules.

We remark that auto-differentiation or backpropagation is already implemented in all the deep learning packages such as tensorflow and pytorch, and thus in practice, in most of cases a researcher does not need to write their backpropagation algorithms. However, understanding it is very helpful for gaining insights into the working of deep learning.

Organization of the rest of the section. In Section 7.4.1, we will start reviewing the basic Chain rule with a new perspective that is particularly useful for understanding backpropagation. Section 7.4.2 will introduce the general strategy for backpropagation. Section 7.4.2 will discuss how to compute the so-called backward function for basic modules used in neural networks, and Section 7.4.4 will put everything together to get a concrete backprop algorithm for MLPs.

# 7.4.1 Preliminaries on partial derivatives

Suppose a scalar variable  $J$  depends on some variables  $z$  (which could be a scalar, matrix, or high-order tensor), we write  $\frac{\partial J}{\partial z}$  as the partial derivatives of  $J$  w.r.t to the variable  $z$ . We stress that the convention here is that  $\frac{\partial J}{\partial z}$  has exactly the same dimension as  $z$  itself. For example, if  $z \in \mathbb{R}^{m \times n}$ , then  $\frac{\partial J}{\partial z} \in \mathbb{R}^{m \times n}$ , and the  $(i,j)$ -entry of  $\frac{\partial J}{\partial z}$  is equal to  $\frac{\partial J}{\partial z_{ij}}$ .

Remark 7.4.2: When both  $J$  and  $z$  are not scalars, the partial derivatives of  $J$  w.r.t  $z$  become either a matrix or tensor and the notation becomes somewhat tricky. Besides the mathematical or notational challenges in dealing

with these partial derivatives of multi-variate functions, they are also expensive to compute and store, and thus rarely explicitly constructed empirically. The experience of authors of this note is that it's generally more productive to think only about derivatives of scalar function w.r.t to vector, matrices, or tensors. For example, in this note, we will not deal with derivatives of multi-variate functions.

Chain rule. We review the chain rule in calculus but with a perspective and notions that are more relevant for auto-differentiation.

Consider a scalar variable  $J$  which is obtained by the composition of  $f$  and  $g$  on some variable  $z$ ,

$$
z \in \mathbb {R}^{m}
$$

$$
u = g (z) \in \mathbb {R}^{n}
$$

$$
J = f (u) \in \mathbb {R}. \tag {7.52}
$$

The same derivations below can be easily extend to the cases when  $z$  and  $u$  are matrices or tensors; but we insist that the final variable  $J$  is a scalar. (See also Remark 7.4.2.) Let  $u = (u_{1},\ldots ,u_{n})$  and let  $g(z) = (g_1(z),\dots ,g_n(z))$ . Then, the standard chain rule gives us that

$$
\forall i \in \{1, \dots , m \}, \quad \frac{\partial J}{\partial z_{i}} = \sum_{j = 1}^{n} \frac{\partial J}{\partial u_{j}} \cdot \frac{\partial g_{j}}{\partial z_{i}}. \tag {7.53}
$$

Alternatively, when  $z$  and  $u$  are both vectors, in a vectorized notation:

$$
\frac{\partial J}{\partial z} = \left[ \begin{array}{c c c} \frac{\partial g_{1}}{\partial z_{1}} & \dots & \frac{\partial g_{n}}{\partial z_{1}} \\ \vdots & \ddots & \vdots \\ \frac{\partial g_{1}}{\partial z_{m}} & \dots & \frac{\partial g_{n}}{\partial z_{m}} \end{array} \right] \cdot \frac{\partial J}{\partial u}. \tag {7.54}
$$

In other words, the backward function is always a linear map from  $\frac{\partial J}{\partial u}$  to  $\frac{\partial J}{\partial z}$ , though note that the mapping itself can depend on  $z$  in complex ways. The matrix on the RHS of (7.54) is actually the transpose of the Jacobian matrix of the function  $g$ . However, we do not discuss in-depth about Jacobian matrices to avoid complications. Part of the reason is that when  $z$  is a matrix (or tensor), to write an analog of equation (7.54), one has to either flatten  $z$  into a vector or introduce additional notations on tensor-matrix product. In this sense, equation (7.53) is more convenient and effective to use in all cases. For example, when  $z \in \mathbb{R}^{r \times s}$  is a matrix, we can easily rewrite equation (7.53)

to

$$
\forall i, k, \quad \frac{\partial J}{\partial z_{i k}} = \sum_{j = 1}^{n} \frac{\partial J}{\partial u_{j}} \cdot \frac{\partial g_{j}}{\partial z_{i k}}. \tag {7.55}
$$

which will indeed be used in some of the derivations in Section 7.4.3.

Key interpretation of the chain rule. We can view the formula above (equation (7.53) or (7.54)) as a way to compute  $\frac{\partial J}{\partial z}$  from  $\frac{\partial J}{\partial u}$ . Consider the following abstract problem. Suppose  $J$  depends on  $z$  via  $u$  as defined in equation (7.52). However, suppose the function  $f$  is not given or the function  $f$  is complex, but we are given the value of  $\frac{\partial J}{\partial u}$ . Then, the formula in equation (7.54) gives us a way to compute  $\frac{\partial J}{\partial z}$  from  $\frac{\partial J}{\partial u}$ .

$$
\begin{array}{l l} \frac{\partial J}{\partial u} & \xrightarrow [ \text{onlyrequiresinfoabout} g (\cdot) \text{and} z ]{\text{chainrule ,formula (7 .54)}} \quad \frac{\partial J}{\partial z}. \end{array} \tag {7.56}
$$

Moreover, this formula only involves knowledge about  $g$  (more precisely  $\frac{\partial g_j}{\partial z_i}$ ). We will repeatedly use this fact in situations where  $g$  is a building blocks of a complex network  $f$ .

Empirically, it's often useful to modularize the mapping in (7.53) or (7.54) into a black-box, and mathematically it's also convenient to define a notation for it. $^6$  We use  $\mathcal{B}[g,z]$  to define the function that maps  $\frac{\partial J}{\partial u}$  to  $\frac{\partial J}{\partial z}$ , and write

$$
\frac{\partial J}{\partial z} = \mathcal {B} [ g, z ] \left(\frac{\partial J}{\partial u}\right). \tag {7.57}
$$

We call  $\mathcal{B}[g,z]$  the backward function for the module  $g$ . Note that when  $z$  is fixed,  $\mathcal{B}[g,z]$  is merely a linear map from  $\mathbb{R}^n$  to  $\mathbb{R}^m$ . Using equation (7.53), we have

$$
\left(\mathcal {B} [ g, z ] (v)\right)_{i} = \sum_{j = 1}^{m} \frac{\partial g_{j}}{\partial z_{i}} \cdot v_{j}. \tag {7.58}
$$

Or in vectorized notation, using (7.54), we have

$$
\mathcal {B} [ g, z ] (v) = \left[ \begin{array}{c c c} \frac{\partial g_{1}}{\partial z_{1}} & \dots & \frac{\partial g_{n}}{\partial z_{1}} \\ \vdots & \ddots & \vdots \\ \frac{\partial g_{1}}{\partial z_{m}} & \dots & \frac{\partial g_{n}}{\partial z_{m}} \end{array} \right] \cdot v. \tag {7.59}
$$

and therefore  $\mathcal{B}[g,z]$  can be viewed as a matrix. However, in reality,  $z$  will be changing and thus the backward mapping has to be recomputed for different  $z$ 's while  $g$  is often fixed. Thus, empirically, the backward function  $\mathcal{B}[g,z](v)$  is often viewed as a function which takes in  $z$  (=the input to  $g$ ) and  $v$  (=a vector that is supposed to be the gradient of some variable  $J$  w.r.t to the output of  $g$ ) as the inputs, and outputs a vector that is supposed to be the gradient of  $J$  w.r.t to  $z$ .

# 7.4.2 General strategy of backpropagation

We discuss the general strategy of auto-differentiation in this section to build a high-level understanding. Then, we will instantiate the approach to concrete neural networks. We take the viewpoint that neural networks are complex compositions of small building blocks such as MM,  $\sigma$ , Conv2D, LN, etc., defined in Section 7.3. Note that the losses (e.g., mean-squared loss, or the cross-entropy loss) can also be abstractly viewed as additional modules. Thus, we can abstractly write the loss function  $J$  (on a single example  $(x,y)$ ) as a composition of many modules:

$$
J = M_{k} \left(M_{k - 1} \left(\dots M_{1} (x)\right)\right). \tag {7.60}
$$

For example, for a binary classification problem with a MLP  $\bar{h}_{\theta}(x)$  (defined in equation (7.36) and (7.37)), the loss function has been written in the form of equation (7.60) with  $M_{1} = \mathrm{MM}_{W^{[1]},b^{[1}}$ ,  $M_{2} = \sigma$ ,  $M_{3} = \mathrm{MM}_{W^{[2]},b^{[2]}}$ , ..., and  $M_{k-1} = \mathrm{MM}_{W^{[r]},b^{[r]}}$  and  $M_{k} = \ell_{\mathrm{logistic}}$ .

We can see from this example that some modules involve parameters, and other modules might only involve a fixed set of operations. For generality, we assume that each  $M_i$  involves a set of parameters  $\theta^{[i]}$ , though  $\theta^{[i]}$  could possibly be an empty set when  $M_i$  is a fixed operation such as the nonlinear activations. We will discuss more on the granularity of the modularization, but so far we assume all the modules  $M_i$ 's are simple enough.

We introduce the intermediate variables for the computation in (7.60).

Let

$$
u^{[ 0 ]} = x
$$

$$
u^{[ 1 ]} = M_{1} (u^{[ 0 ]})
$$

$$
u^{[ 2 ]} = M_{2} (u^{[ 1 ]})
$$

中 中

$$
J = u^{[ k ]} = M_{k} \left(u^{[ k - 1 ]}\right). \tag {F}
$$

Backpropagation consists of two passes, the forward pass and backward pass. In the forward pass, the algorithm simply computes  $u^{[1]}, \ldots, u^{[k]}$  from  $i = 1, \ldots, k$ , sequentially using the definition in (F), and save all the intermediate variables  $u^{[i]}$ 's in the memory.

In the backward pass, we first compute the derivatives w.r.t to the intermediate variables, that is,  $\frac{\partial J}{\partial u^{[k]}}, \ldots, \frac{\partial J}{\partial u^{[1]}}$ , sequentially in this backward order, and then compute the derivatives of the parameters  $\frac{\partial J}{\partial \theta^{[i]}}$  from  $\frac{\partial J}{\partial u^{[i]}}$  and  $u^{[i-1]}$ . These two type of computations can be also interleaved with each other because  $\frac{\partial J}{\partial \theta^{[i]}}$  only depends on  $\frac{\partial J}{\partial u^{[i]}}$  and  $u^{[i-1]}$  but not any  $\frac{\partial J}{\partial u^{[k]}}$  with  $k < i$ .

We first see why  $\frac{\partial J}{\partial u^{[i-1]}}$  can be computed efficiently from  $\frac{\partial J}{\partial u^{[i]}}$  and  $u^{[i-1]}$  by invoking the discussion in Section 7.4.1 on the chain rule. We instantiate the discussion by setting  $u = u^{[i]}$  and  $z = u^{[i-1]}$ , and  $f(u) = M_k(M_{k-1}(\dots M_{i+1}(u^{[i]}))$ ), and  $g(\cdot) = M_i(\cdot)$ . Note that  $f$  is very complex but we don't need any concrete information about  $f$ . Then, the conclusive equation (7.56) corresponds to

$$
\frac{\partial J}{\partial u^{[ i ]}} \xrightarrow [ \text{onlyrequiresinfoabout} M_{i} (\cdot) \text{and} u^{[ i - 1 ]} ]{\text{chainrule}} \quad \frac{\partial J}{\partial u^{[ i - 1 ]}}. \tag {7.61}
$$

More precisely, we can write, following equation (7.57)

$$
\frac{\partial J}{\partial u^{[ i - 1 ]}} = \mathcal {B} \left[ M_{i}, u^{[ i - 1 ]} \right] \left(\frac{\partial J}{\partial u^{[ i ]}}\right). \tag {B1}
$$

Instantiating the chain rule with  $z = \theta^{[i]}$  and  $u = u^{[i]}$ , we also have

$$
\frac{\partial J}{\partial \theta^{[ i ]}} = \mathcal {B} \left[ M_{i}, \theta^{[ i ]} \right] \left(\frac{\partial J}{\partial u^{[ i ]}}\right). \tag {B2}
$$

See Figure 7.5 for an illustration of the algorithm.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/0e4a616d88fedf905c02c5b438ce8e688fe9b7037a9fb4fd9fac7c3d2118cb79.jpg)  
Figure 7.5: Back-propagation.

Remark 7.4.3: [Computational efficiency and granularity of the modules] The main underlying purpose of treating a complex network as compositions of small modules is that small modules tend to have efficiently implementable backward function. In fact, the backward functions of all the atomic modules such as addition, multiplication and ReLU can be computed as efficiently as the evaluation of these modules (up to multiplicative constant factor). Using this fact, we can prove Theorem 7.4.1 by viewing neural networks as compositions of many atomic operations, and invoking the backpropagation discussed above. However, in practice, it's oftentimes more convenient to modularize the networks using modules on the level of matrix multiplication, layernorm, etc. As we will see, naive implementation of these operations' backward functions also have the same runtime as the evaluation of these functions.

# 7.4.3 Backward functions for basic modules

Using the general strategy in Section 7.4.2, it suffices to compute the backward function for all modules  $M_{i}$ 's used in the networks. We compute the backward function for the basic module MM, activations  $\sigma$ , and loss functions in this section.

Backward function for MM. Suppose  $\mathrm{MM}_{W,b}(z) = Wz + b$  is a matrix multiplication module where  $z\in \mathbb{R}^m$  and  $W\in \mathbb{R}^{n\times m}$ . Then, using equation (7.59), we have for  $v\in \mathbb{R}^n$

$$
\mathcal {B} [ \mathrm{MM}, z ] (v) = \left[ \begin{array}{c c c} \frac{\partial (W z + b)_{1}}{\partial z_{1}} & \dots & \frac{\partial (W z + b)_{n}}{\partial z_{1}} \\ \vdots & \ddots & \vdots \\ \frac{\partial (W z + b)_{1}}{\partial z_{m}} & \dots & \frac{\partial (W z + b)_{n}}{\partial z_{m}} \end{array} \right] v. \tag {7.62}
$$

Using the fact that  $\forall i\in [m],j\in [n],\frac{\partial(Wz + b)_j}{\partial z_i} = \frac{\partial b_j + \sum_{k = 1}^mW_{jk}z_k}{\partial z_i} = W_{ji}$ , we have

$$
\mathcal {B} [ \mathrm{MM}, z ] (v) = W^{\top} v \in \mathbb {R}^{m}. \tag {7.63}
$$

In the derivation above, we have treated MM as a function of  $z$ . If we treat MM as a function of  $W$  and  $b$ , then we can also compute the backward function for the parameter variables  $W$  and  $b$ . It's less convenient to use equation (7.59) because the variable  $W$  is a matrix and the matrix in (7.59) will be a 4-th order tensor that is challenging for us to mathematically write down. We use (7.58) instead:

$$
(\mathcal {B} [ \mathrm{MM}, W ] (v))_{i j} = \sum_{k = 1}^{m} \frac{\partial (W z + b)_{k}}{\partial W_{i j}} \cdot v_{k} = \sum_{k = 1}^{m} \frac{\partial \sum_{s = 1}^{m} W_{k s} z_{s}}{\partial W_{i j}} \cdot v_{k} = v_{i} z_{j}. \tag {7.64}
$$

In vectorized notation, we have

$$
\mathcal {B} [ \mathrm{MM}, W ] (v) = v z^{\top} \in \mathbb {R}^{n \times m}. \tag {7.65}
$$

Using equation (7.59) for the variable  $b$ , we have,

$$
\mathcal {B} [ \mathrm{MM}, b ] (v) = \left[ \begin{array}{c c c} \frac{\partial (W z + b)_{1}}{\partial b_{1}} & \dots & \frac{\partial (W z + b)_{n}}{\partial b_{1}} \\ \vdots & \ddots & \vdots \\ \frac{\partial (W z + b)_{1}}{\partial b_{n}} & \dots & \frac{\partial (W z + b)_{n}}{\partial b_{n}} \end{array} \right] v = v. \tag {7.66}
$$

Here we used that  $\frac{\partial(Wz + b)_j}{\partial b_i} = 0$  if  $i \neq j$  and  $\frac{\partial(Wz + b)_j}{\partial b_i} = 1$  if  $i = j$ .

The computational efficiency for computing the backward function is  $O(mn)$ , the same as evaluating the result of matrix multiplication up to constant factor.

Backward function for the activations. Suppose  $M(z) = \sigma(z)$  where  $\sigma$  is an element-wise activation function and  $z \in \mathbb{R}^m$ . Then, using equation (7.59), we have

$$
\begin{array}{l} \mathcal {B} [ \sigma , z ] (v) = \left[ \begin{array}{c c c} \frac{\partial \sigma \left(z_{1}\right)}{\partial z_{1}} & \dots & \frac{\partial \sigma \left(z_{m}\right)}{\partial z_{1}} \\ \vdots & \ddots & \vdots \\ \frac{\partial \sigma \left(z_{1}\right)}{\partial z_{m}} & \dots & \frac{\partial \sigma \left(z_{m}\right)}{\partial z_{m}} \end{array} \right] v (7.67) \\ = \operatorname{diag} \left(\sigma^{\prime} \left(z_{1}\right), \dots , \sigma^{\prime} \left(z_{m}\right)\right) v (7.68) \\ = \sigma^{\prime} (z) \odot v \in \mathbb {R}^{m}. (7.69) \\ \end{array}
$$

Here, we used the fact that  $\frac{\partial\sigma(z_j)}{\partial z_i} = 0$  when  $j\neq i$ ,  $\mathrm{diag}(\lambda_1,\ldots ,\lambda_m)$  denotes the diagonal matrix with  $\lambda_{1},\dots,\lambda_{m}$  on the diagonal, and  $\odot$  denotes the element-wise product of two vectors with the same dimension, and  $\sigma^{\prime}(\cdot)$  is the element-wise application of the derivative of the activation function  $\sigma$ .

Regarding computation efficiency, we note that at the first sight, equation (7.67) appears to indicate the backward function takes  $O(m^2)$  time, but equation (7.69) shows that it's implementable in  $O(m)$  time (which is the same as the time for evaluating of the function.) We are not supposed to be surprised by that the possibility of simplifying equation (7.67) to (7.69)—if we use smaller modules, that is, treating the vector-to-vector nonlinear activation as  $m$  scalar-to-scalar non-linear activation, then it's more obvious that the backward pass should have similar time to the forward pass.

Backward function for loss functions. When a module  $M$  takes in a vector  $z$  and outputs a scalar, by equation (7.59), the backward function takes in a scalar  $v$  and outputs a vector with entries  $(\mathcal{B}[M,z](v))_i = \frac{\partial M}{\partial z_i} v$ . Therefore, in vectorized notation,  $\mathcal{B}[M,z](v) = \frac{\partial M}{\partial z} \cdot v$ .

Recall that squared loss  $\ell_{\mathrm{MSE}}(z,y) = \frac{1}{2} (z - y)^2$ . Thus,  $\mathcal{B}[\ell_{\mathrm{MSE}},z](v) = \frac{\partial\frac{1}{2}(z - y)^2}{\partial z}\cdot v = (z - y)\cdot v$ .

For logistics loss, by equation (2.6), we have

$$
\mathcal {B} [ \ell_{\text{logistic}}, t ] (v) = \frac{\partial \ell_{\text{logistic}} (t , y)}{\partial t} \cdot v = (1 / (1 + \exp (- t)) - y) \cdot v. \tag {7.70}
$$

For cross-entropy loss, by equation (2.17), we have

$$
\mathcal {B} [ \ell_{\mathrm{ce}}, t ] (v) = \frac{\partial \ell_{\mathrm{ce}} (t , y)}{\partial t} \cdot v = (\phi - e_{y}) \cdot v, \tag {7.71}
$$

where  $\phi = \mathrm{softmax}(t)$

# 7.4.4 Back-propagation for MLPs

Given the backward functions for every module needed in evaluating the loss of an MLP, we follow the strategy in Section 7.4.2 to compute the gradient of the loss w.r.t to the hidden activations and the parameters.

We consider the an  $r$ -layer MLP with a logistic loss. The loss function can be computed via a sequence of operations (that is, the forward pass),

$$
z^{[ 1 ]} = \operatorname{MM}_{W^{[ 1 ]}, b^{[ 1 ]}} (x),
$$

$$
a^{[ 1 ]} = \sigma (z^{[ 1 ]})
$$

$$
z^{[ 2 ]} = \mathrm{MM}_{W^{[ 2 ]}, b^{[ 2 ]}} (a^{[ 1 ]})
$$

$$
a^{[ 2 ]} = \sigma (z^{[ 2 ]})
$$

中

$$
\begin{array}{l} z^{[ r ]} = \mathrm{MM}_{W^{[ r ]}, b^{[ r ]}} (a^{[ r - 1 ]}) \\ J = \ell_{\text{logistic}} \left(z^{[ r ]}, y\right). \tag {7.72} \\ \end{array}
$$

We apply the backward function sequentially in a backward order. First, we have that

$$
\frac{\partial J}{\partial z^{[ r ]}} = \mathcal {B} \left[ \ell_{\text{logistic}}, z^{[ r ]} \right] \left(\frac{\partial J}{\partial J}\right) = \mathcal {B} \left[ \ell_{\text{logistic}}, z^{[ r ]} \right] (1). \tag {7.73}
$$

Then, we iteratively compute  $\frac{\partial J}{\partial a^{[i]}}$  and  $\frac{\partial J}{\partial z^{[i]}}$ 's by repeatedly invoking the chain rule (equation (7.58)),

$$
\frac{\partial J}{\partial a^{[ r - 1 ]}} = \mathcal {B} [ \mathrm{MM}, a^{[ r - 1 ]} ] \left(\frac{\partial J}{\partial z^{[ r ]}}\right)
$$

$$
\frac{\partial J}{\partial z^{[ r - 1 ]}} = \mathcal {B} [ \sigma , z^{[ r - 1 ]} ] \left(\frac{\partial J}{\partial a^{[ r - 1 ]}}\right)
$$

：

$$
\frac{\partial J}{\partial z^{[ 1 ]}} = \mathcal {B} [ \sigma , z^{[ 1 ]} ] \left(\frac{\partial J}{\partial a^{[ 1 ]}}\right). \tag {7.74}
$$

Numerically, we compute these quantities by repeatedly invoking equations (7.69) and (7.63) with different choices of variables.

We note that the intermediate values of  $a^{[i]}$  and  $z^{[i]}$  are used in the backpropagation (equation (7.74)), and therefore these values need to be stored in the memory after the forward pass.

Next, we compute the gradient of the parameters by invoking equations (7.65) and (7.66),

$$
\frac{\partial J}{\partial W^{[ r ]}} = \mathcal {B} [ \mathrm{MM}, W^{[ r ]} ] \left(\frac{\partial J}{\partial z^{[ r ]}}\right)
$$

$$
\frac{\partial J}{\partial b^{[ r ]}} = \mathcal {B} [ \mathrm{MM}, b^{[ r ]} ] \left(\frac{\partial J}{\partial z^{[ r ]}}\right)
$$

中

$$
\frac{\partial J}{\partial W^{[ 1 ]}} = \mathcal {B} [ \mathrm{MM}, W^{[ 1 ]} ] \left(\frac{\partial J}{\partial z^{[ 1 ]}}\right)
$$

$$
\frac{\partial J}{\partial b^{[ 1 ]}} = \mathcal {B} [ \mathrm{MM}, b^{[ 1 ]} ] \left(\frac{\partial J}{\partial z^{[ 1 ]}}\right). \tag {7.75}
$$

We also note that the block of computations in equations (7.75) can be interleaved with the block of computation in equations (7.74) because the  $\frac{\partial J}{\partial W^{[i]}}$  and  $\frac{\partial J}{\partial b^{[i]}}$  can be computed as soon as  $\frac{\partial J}{\partial z^{[i]}}$  is computed.

Putting all of these together, and explicitly invoking the equations (7.72), (7.74) and (7.75), we have the following algorithm (Algorithm 3).

Algorithm 3 Back-propagation for multi-layer neural networks.

1: Forward pass. Compute and store the values of  $a^{[k]}\mathrm{s}$ ,  $z^{[k]}\mathrm{s}$ , and  $J$  using the equations (7.72).  
2: Backward pass. Compute the gradient of loss  $J$  with respect to  $z^{[r]}$ :

$$
\frac{\partial J}{\partial z^{[ r ]}} = \mathcal {B} \left[ \ell_{\text{logistic}}, z^{[ r ]} \right] (1) = \left(1 / \left(1 + \exp \left(- z^{[ r ]}\right)\right) - y\right). \tag {7.76}
$$

3: for  $k = r - 1$  to 0 do  
4: Compute the gradient with respect to parameters  $W^{[k + 1]}$  and  $b^{[k + 1]}$ .

$$
\begin{array}{l} \frac{\partial J}{\partial W^{[ k + 1 ]}} = \mathcal {B} [ \mathrm{MM}, W^{[ k + 1 ]} ] \left(\frac{\partial J}{\partial z^{[ k + 1 ]}}\right) \\ = \frac{\partial J}{\partial z^{[ k + 1 ]}} a^{[ k ]^{\top}}. \tag {7.77} \\ \end{array}
$$

$$
\begin{array}{l} \frac{\partial J}{\partial b^{[ k + 1 ]}} = \mathcal {B} [ \mathrm{MM}, b^{[ k + 1 ]} ] \left(\frac{\partial J}{\partial z^{[ k + 1 ]}}\right) \\ = \frac{\partial J}{\partial z^{[ k + 1 ]}}. \tag {7.78} \\ \end{array}
$$

5: When  $k \geq 1$ , compute the gradient with respect to  $z^{[k]}$  and  $a^{[k]}$ .

$$
\begin{array}{l} \frac{\partial J}{\partial a^{[ k ]}} = \mathcal {B} [ \sigma , a^{[ k ]} ] \left(\frac{\partial J}{\partial z^{[ k + 1 ]}}\right) \\ = W^{[ k + 1 ]}^{\top} \frac{\partial J}{\partial z^{[ k + 1 ]}}. \tag {7.79} \\ \end{array}
$$

$$
\begin{array}{l} \frac{\partial J}{\partial z^{[ k ]}} = \mathcal {B} [ \sigma , z^{[ k ]} ] \left(\frac{\partial J}{\partial a^{[ k ]}}\right) \\ = \sigma^{\prime} \left(z^{[ k ]}\right) \odot \frac{\partial J}{\partial a^{[ k ]}}. \tag {7.80} \\ \end{array}
$$

# 7.5 Vectorization over training examples

As we discussed in Section 7.1, in the implementation of neural networks, we will leverage the parallelism across the multiple examples. This means that we will need to write the forward pass (the evaluation of the outputs) of the neural network and the backward pass (backpropagation) for multiple

training examples in matrix notation.

The basic idea. The basic idea is simple. Suppose you have a training set with three examples  $x^{(1)}, x^{(2)}, x^{(3)}$ . The first-layer activations for each example are as follows:

$$
z^{[ 1 ] (1)} = W^{[ 1 ]} x^{(1)} + b^{[ 1 ]}
$$

$$
z^{[ 1 ] (2)} = W^{[ 1 ]} x^{(2)} + b^{[ 1 ]}
$$

$$
z^{[ 1 ] (3)} = W^{[ 1 ]} x^{(3)} + b^{[ 1 ]}
$$

Note the difference between square brackets  $[\cdot]$ , which refer to the layer number, and parenthesis  $(\cdot)$ , which refer to the training example number. Intuitively, one would implement this using a for loop. It turns out, we can vectorize these operations as well. First, define:

$$
X = \left[ \begin{array}{c c c} | & | & | \\ x^{(1)} & x^{(2)} & x^{(3)} \\ | & | & | \end{array} \right] \in \mathbb {R}^{d \times 3} \tag {7.81}
$$

Note that we are stacking training examples in columns and not rows. We can then combine this into a single unified formulation:

$$
Z^{[ 1 ]} = \left[ \begin{array}{c c c} | & | & | \\ z^{[ 1 ] (1)} & z^{[ 1 ] (2)} & z^{[ 1 ] (3)} \\ | & | & | \end{array} \right] = W^{[ 1 ]} X + b^{[ 1 ]} \tag {7.82}
$$

You may notice that we are attempting to add  $b^{[1]} \in \mathbb{R}^{4 \times 1}$  to  $W^{[1]}X \in \mathbb{R}^{4 \times 3}$ . Strictly following the rules of linear algebra, this is not allowed. In practice however, this addition is performed using broadcasting. We create an intermediate  $\tilde{b}^{[1]} \in \mathbb{R}^{4 \times 3}$ :

$$
\tilde {b}^{[ 1 ]} = \left[ \begin{array}{c c c} | & | & | \\ b^{[ 1 ]} & b^{[ 1 ]} & b^{[ 1 ]} \\ | & | & | \end{array} \right] \tag {7.83}
$$

We can then perform the computation:  $Z^{[1]} = W^{[1]}X + \tilde{b}^{[1]}$ . Often times, it is not necessary to explicitly construct  $\tilde{b}^{[1]}$ . By inspecting the dimensions in (7.82), you can assume  $b^{[1]} \in \mathbb{R}^{4 \times 1}$  is correctly broadcast to  $W^{[1]}X \in \mathbb{R}^{4 \times 3}$ .

The matricization approach as above can easily generalize to multiple layers, with one subtlety though, as discussed below.

Complications/Subtlety in the Implementation. All the deep learning packages or implementations put the data points in the rows of a data matrix. (If the data point itself is a matrix or tensor, then the data are concentrated along the zero-th dimension.) However, most of the deep learning papers use a similar notation to these notes where the data points are treated as column vectors.<sup>8</sup> There is a simple conversion to deal with the mismatch: in the implementation, all the columns become row vectors, row vectors become column vectors, all the matrices are transposed, and the orders of the matrix multiplications are flipped. In the example above, using the row major convention, the data matrix is  $X \in \mathbb{R}^{3 \times d}$ , the first layer weight matrix has dimensionality  $d \times m$  (instead of  $m \times d$  as in the two layer neural net section), and the bias vector  $b^{[1]} \in \mathbb{R}^{1 \times m}$ . The computation for the hidden activation becomes

$$
Z^{[ 1 ]} = X W^{[ 1 ]} + b^{[ 1 ]} \in \mathbb {R}^{3 \times m} \tag {7.84}
$$

# Part III

# Generalization and regularization

# Chapter 8

# Generalization

This chapter discusses tools to analyze and understand the generalization of machine learning models, i.e., their performances on unseen test examples. Recall that for supervised learning problems, given a training dataset  $\{(x^{(i)},y^{(i)})\}_{i = 1}^n$ , we typically learn a model  $h_\theta$  by minimizing a loss/cost function  $J(\theta)$ , which encourages  $h_\theta$  to fit the data. E.g., when the loss function is the least square loss (aka mean squared error), we have  $J(\theta) = \frac{1}{n}\sum_{i = 1}^{n}(y^{(i)} - h_{\theta}(x^{(i)}))^{2}$ . This loss function for training purposes is oftentimes referred to as the training loss/errort/cost.

However, minimizing the training loss is not our ultimate goal—it is merely our approach towards the goal of learning a predictive model. The most important evaluation metric of a model is the loss on unseen test examples, which is oftentimes referred to as the test error. Formally, we sample a test example  $(x,y)$  from the so-called test distribution  $\mathcal{D}$ , and measure the model's error on it, by, e.g., the mean squared error,  $(h_{\theta}(x) - y)^2$ . The expected loss/errort over the randomness of the test example is called the test loss/error, $^1$

$$
L (\theta) = \mathbb {E}_{(x, y) \sim \mathcal {D}} [ (y - h_{\theta} (x))^{2} ] \tag {8.1}
$$

Note that the measurement of the error involves computing the expectation, and in practice, it can be approximated by the average error on many sampled test examples, which are referred to as the test dataset. Note that the key difference here between training and test datasets is that the test examples

are unseen, in the sense that the training procedure has not used the test examples. In classical statistical learning settings, the training examples are also drawn from the same distribution as the test distribution  $\mathcal{D}$ , but still the test examples are unseen by the learning procedure whereas the training examples are seen. $^2$

Because of this key difference between training and test datasets, even if they are both drawn from the same distribution  $\mathcal{D}$ , the test error is not necessarily always close to the training error. As a result, successfully minimizing the training error may not always lead to a small test error. We typically say the model overfits the data if the model predicts accurately on the training dataset but doesn't generalize well to other test examples, that is, if the training error is small but the test error is large. We say the model underfits the data if the training error is relatively large (and in this case, typically the test error is also relatively large.)

This chapter studies how the test error is influenced by the learning procedure, especially the choice of model parameterizations. We will decompose the test error into "bias" and "variance" terms and study how each of them is affected by the choice of model parameterizations and their tradeoffs. Using the bias-variance tradeoff, we will discuss when overfitting and underfitting will occur and be avoided. We will also discuss the double descent phenomenon in Section 8.2 and some classical theoretical results in Section 8.3.

2These days, researchers have increasingly been more interested in the setting with "domain shift", that is, the training distribution and test distribution are different.  
3the difference between test error and training error is often referred to as the generalization gap. The term generalization error in some literature means the test error, and in some other literature means the generalization gap.  
e.g., larger than the intrinsic noise level of the data in regression problems.

# 8.1 Bias-variance tradeoff

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/ee466d381b2974107e6e2599a2dc101f0c73fd4f4345fabea9cea233c70e2b2f.jpg)  
Figure 8.1: A running example of training and test dataset for this section.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/021de1e97f9775c3d67d1167676118a920ef8efe469439b51f173fdbcb52b3ef.jpg)

As an illustrating example, we consider the following training dataset and test dataset, which are also shown in Figure 8.1. The training inputs  $x^{(i)}$ 's are randomly chosen and the outputs  $y^{(i)}$  are generated by  $y^{(i)} = h^{\star}(x^{(i)}) + \xi^{(i)}$  where the function  $h^{\star}(\cdot)$  is a quadratic function and is shown in Figure 8.1 as the solid line, and  $\xi^{(i)}$  is the a observation noise assumed to be generated from  $\sim N(0,\sigma^2)$ . A test example  $(x,y)$  also has the same input-output relationship  $y = h^{\star}(x) + \xi$  where  $\xi \sim N(0,\sigma^2)$ . It's impossible to predict the noise  $\xi$ , and therefore essentially our goal is to recover the function  $h^{\star}(\cdot)$ .

We will consider the test error of learning various types of models. When talking about linear regression, we discussed the problem of whether to fit a "simple" model such as the linear  $y = \theta_0 + \theta_1 x$ , or a more "complex" model such as the polynomial  $y = \theta_0 + \theta_1 x + \dots \theta_5 x^5$ .

We start with fitting a linear model, as shown in Figure 8.2. The best fitted linear model cannot predict  $y$  from  $x$  accurately even on the training dataset, let alone on the test dataset. This is because the true relationship between  $y$  and  $x$  is not linear—any linear model is far away from the true function  $h^{\star}(\cdot)$ . As a result, the training error is large and this is a typical situation of underfitting.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/f460bdac157db17580076e3bb074d1a52658a72642e2a8bcfa6498c58768e11c.jpg)  
Figure 8.2: The best fit linear model has large training and test errors.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/74d64deb1cace454d8e9a487b5cad6dd4b0983905b7d051d59f30ec0ad2b7d16.jpg)

The issue cannot be mitigated with more training examples—even with a very large amount of, or even infinite training examples, the best fitted linear model is still inaccurate and fails to capture the structure of the data (Figure 8.3). Even if the noise is not present in the training data, the issue still occurs (Figure 8.4). Therefore, the fundamental bottleneck here is the linear model family's inability to capture the structure in the data—linear models cannot represent the true quadratic function  $h^{\star}$ , but not the lack of the data. Informally, we define the bias of a model to be the test error even if we were to fit it to a very (say, infinitely) large training dataset. Thus, in this case, the linear model suffers from large bias, and underfits (i.e., fails to capture structure exhibited by) the data.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/3a4ae9db815866bd7b0fa522861f948826f5d798b658d7d8cc6cb3ebae0e6520.jpg)  
Figure 8.3: The best fit linear model on a much larger dataset still has a large training error.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/bc337e35662f8ccb88c1cdbfd0433eea477ac546cb592b54f8c19b9b95b3f992.jpg)  
Figure 8.4: The best fit linear model on a noiseless dataset also has a large training/test error.

Next, we fit a 5th-degree polynomial to the data. Figure 8.5 shows that it fails to learn a good model either. However, the failure pattern is different from the linear model case. Specifically, even though the learnt 5th-degree

polynomial did a very good job predicting  $y^{(i)}$ 's from  $x^{(i)}$ 's for training examples, it does not work well on test examples (Figure 8.5). In other words, the model learnt from the training set does not generalize well to other test examples—the test error is high. Contrary to the behavior of linear models, the bias of the 5-th degree polynomials is small—if we were to fit a 5-th degree polynomial to an extremely large dataset, the resulting model would be close to a quadratic function and be accurate (Figure 8.6). This is because the family of 5-th degree polynomials contains all the quadratic functions (setting  $\theta_5 = \theta_4 = \theta_3 = 0$  results in a quadratic function), and, therefore, 5-th degree polynomials are in principle capable of capturing the structure of the data.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/3db8ecc48e08d3e06a00acf8f2a1a11a983fea3071b521d70a70ed09df359d13.jpg)  
Figure 8.5: Best fit 5-th degree polynomial has zero training error, but still has a large test error and does not recover the ground truth. This is a classic situation of overfitting.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/3a2fbc7e39d380bae403500f8d6379280661b0be4742693e8830a8f6593431b3.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/77db9a2226d801f169cedba8950858d51719f7f8b1689b69decda44044c47dff.jpg)  
Figure 8.6: The best fit 5-th degree polynomial on a huge dataset nearly recovers the ground-truth—suggesting that the culprit in Figure 8.5 is the variance (or lack of data) but not bias.

The failure of fitting 5-th degree polynomials can be captured by another

component of the test error, called variance of a model fitting procedure. Specifically, when fitting a 5-th degree polynomial as in Figure 8.7, there is a large risk that we're fitting patterns in the data that happened to be present in our small, finite training set, but that do not reflect the wider pattern of the relationship between  $x$  and  $y$ . These "spurious" patterns in the training set are (mostly) due to the observation noise  $\xi^{(i)}$ , and fitting these spurious patterns results in a model with large test error. In this case, we say the model has a large variance.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/9defa9847427759e9b59ccbd04eb776031320dd19bfe4dda6d640a0b0f6f2600.jpg)  
Figure 8.7: The best fit 5-th degree models on three different datasets generated from the same distribution behave quite differently, suggesting the existence of a large variance.

The variance can be intuitively (and mathematically, as shown in Section 8.1.1) characterized by the amount of variations across models learnt on multiple different training datasets (drawn from the same underlying distribution). The "spurious patterns" are specific to the randomness of the noise (and inputs) in a particular dataset, and thus are different across multiple training datasets. Therefore, overfitting to the "spurious patterns" of multiple datasets should result in very different models. Indeed, as shown in Figure 8.7, the models learned on the three different training datasets are quite different, overfitting to the "spurious patterns" of each datasets.

Often, there is a tradeoff between bias and variance. If our model is too "simple" and has very few parameters, then it may have large bias (but small variance), and it typically may suffer from underfitting. If it is too "complex" and has very many parameters, then it may suffer from large variance (but have smaller bias), and thus overfitting. See Figure 8.8 for a typical tradeoff between bias and variance.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/ce17cf80fe86e509181a7fbd3ec833e391a1fb5cff4b5f7305d788fca62cf823.jpg)  
Figure 8.8: An illustration of the typical bias-variance tradeoff.

As we will see formally in Section 8.1.1, the test error can be decomposed as a summation of bias and variance. This means that the test error will have a convex curve as the model complexity increases, and in practice we should tune the model complexity to achieve the best tradeoff. For instance, in the example above, fitting a quadratic function does better than either of the extremes of a first or a 5-th degree polynomial, as shown in Figure 8.9.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/3badf520df824b958dd8c8f4cdea06c270b2f98a8b8a047186595dedc2b24262.jpg)  
Figure 8.9: Best fit quadratic model has small training and test error because quadratic model achieves a better tradeoff.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/959b601e62d8c76a45ea1d0c0f2e70a8947db664054d562be1045edb5a4b3528.jpg)

Interestingly, the bias-variance tradeoff curves or the test error curves do not universally follow the shape in Figure 8.8, at least not universally when the model complexity is simply measured by the number of parameters. (We will discuss the so-called double descent phenomenon in Section 8.2.) Nevertheless, the principle of bias-variance tradeoff is perhaps still the first resort when analyzing and predicting the behavior of test errors.

# 8.1.1 A mathematical decomposition (for regression)

To formally state the bias-variance tradeoff for regression problems, we consider the following setup (which is an extension of the beginning paragraph of Section 8.1).

- Draw a training dataset  $S = \{x^{(i)},y^{(i)}\}_{i = 1}^{n}$  such that  $y^{(i)} = h^{\star}(x^{(i)}) + \xi^{(i)}$  where  $\xi^{(i)}\in N(0,\sigma^2)$ .  
- Train a model on the dataset  $S$ , denoted by  $\hat{h}_S$ .  
- Take a test example  $(x, y)$  such that  $y = h^{\star}(x) + \xi$  where  $\xi \sim N(0, \sigma^2)$ , and measure the expected test error (averaged over the random draw of the training set  $S$  and the randomness of  $\xi$ )<sup>56</sup>

$$
\operatorname{MSE} (x) = \mathbb {E}_{S, \xi} [ (y - h_{S} (x))^{2} ] \tag {8.2}
$$

We will decompose the MSE into a bias and variance term. We start by stating a following simple mathematical tool that will be used twice below.

Claim 8.1.1: Suppose  $A$  and  $B$  are two independent real random variables and  $\mathbb{E}[A] = 0$ . Then,  $\mathbb{E}[(A + B)^2] = \mathbb{E}[A^2] + \mathbb{E}[B^2]$ .

As a corollary, because a random variable  $A$  is independent with a constant  $c$ , when  $\mathbb{E}[A] = 0$ , we have  $\mathbb{E}[(A + c)^2] = \mathbb{E}[A^2] + c^2$ .

The proof of the claim follows from expanding the square:  $\mathbb{E}[(A + B)^2] = \mathbb{E}[A^2] + \mathbb{E}[B^2] + 2\mathbb{E}[AB] = \mathbb{E}[A^2] + \mathbb{E}[B^2]$ . Here we used the independence to show that  $\mathbb{E}[AB] = \mathbb{E}[A]\mathbb{E}[B] = 0$ .

Using Claim 8.1.1 with  $A = \xi$  and  $B = h^{\star}(x) - \hat{h}_S(x)$ , we have

$$
\begin{array}{l} \operatorname{MSE} (x) = \mathbb {E} \left[ \left(y - h_{S} (x)\right)^{2} \right] = \mathbb {E} \left[ \left(\xi + \left(h^{\star} (x) - h_{S} (x)\right)\right)^{2} \right] (8.3) \\ = \mathbb {E} [ \xi^{2} ] + \mathbb {E} [ (h^{\star} (x) - h_{S} (x))^{2} ] \quad (\text{by}) \\ = \sigma^{2} + \mathbb {E} \left[ \left(h^{\star} (x) - h_{S} (x)\right)^{2} \right] (8.4) \\ \end{array}
$$

Then, let's define  $h_{\mathrm{avg}}(x) = \mathbb{E}_S[h_S(x)]$  as the "average model"—the model obtained by drawing an infinite number of datasets, training on them, and averaging their predictions on  $x$ . Note that  $h_{\mathrm{avg}}$  is a hypothetical model for analytical purposes that can not be obtained in reality (because we don't

have infinite number of datasets). It turns out that for many cases,  $h_{\mathrm{avg}}$  is (approximately) equal to the model obtained by training on a single dataset with infinite samples. Thus, we can also intuitively interpret  $h_{\mathrm{avg}}$  this way, which is consistent with our intuitive definition of bias in the previous subsection.

We can further decompose  $\mathrm{MSE}(x)$  by letting  $c = h^{\star}(x) - h_{\mathrm{avg}}(x)$  (which is a constant that does not depend on the choice of  $S!$ ) and  $A = h_{\mathrm{avg}}(x) - h_S(x)$  in the corollary part of Claim 8.1.1:

$$
\begin{array}{l} \operatorname{MSE} (x) = \sigma^{2} + \mathbb {E} \left[ \left(h^{\star} (x) - h_{S} (x)\right)^{2} \right] (8.5) \\ = \sigma^{2} + \left(h^{\star} (x) - h_{\text{avg}} (x)\right)^{2} + \mathbb {E} \left[ \left(h_{\text{avg}} - h_{S} (x)\right)^{2} \right] (8.6) \\ = \underbrace {\sigma^{2}}_{\text{unavoidable}} + \underbrace {(h^{\star} (x) - h_{\operatorname{avg}} (x))^{2}}_{\triangleq \text{bias}^{2}} + \underbrace {\operatorname{var} \left(h_{S} (x)\right)}_{\triangleq \text{variance}} (8.7) \\ \end{array}
$$

We call the second term the bias (square) and the third term the variance. As discussed before, the bias captures the part of the error that are introduced due to the lack of expressivity of the model. Recall that  $h_{\mathrm{avg}}$  can be thought of as the best possible model learned even with infinite data. Thus, the bias is not due to the lack of data, but is rather caused by that the family of models fundamentally cannot approximate the  $h^{\star}$ . For example, in the illustrating example in Figure 8.2, because any linear model cannot approximate the true quadratic function  $h^{\star}$ , neither can  $h_{\mathrm{avg}}$ , and thus the bias term has to be large.

The variance term captures how the random nature of the finite dataset introduces errors in the learned model. It measures the sensitivity of the learned model to the randomness in the dataset. It often decreases as the size of the dataset increases.

There is nothing we can do about the first term  $\sigma^2$  as we can not predict the noise  $\xi$  by definition.

Finally, we note that the bias-variance decomposition for classification is much less clear than for regression problems. There have been several proposals, but there is as yet no agreement on what is the "right" and/or the most useful formalism.

# 8.2 The double descent phenomenon

Model-wise double descent. Recent works have demonstrated that the test error can present a "double descent" phenomenon in a range of machine

learning models including linear models and deep neural networks. $^{7}$  The conventional wisdom, as discussed in Section 8.1, is that as we increase the model complexity, the test error first decreases and then increases, as illustrated in Figure 8.8. However, in many cases, we empirically observe that the test error can have a second descent—it first decreases, then increases to a peak around when the model size is large enough to fit all the training data very well, and then decreases again in the so-called overparameterized regime, where the number of parameters is larger than the number of data points. See Figure 8.10 for an illustration of the typical curves of test errors against model complexity (measured by the number of parameters). To some extent, the overparameterized regime with the second descent is considered as new to the machine learning community—partly because lightly-regularized, overparameterized models are only extensively used in the deep learning era. A practical implication of the phenomenon is that one should not hold back from scaling into and experimenting with over-parametrized models because the test error may well decrease again to a level even smaller than the previous lowest point. Actually, in many cases, larger overparameterized models always lead to a better test performance (meaning there won't be a second ascent after the second descent).

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/8aac1e1ba17ee6bae72c39e898b73b6eb2f85ab2957df72001ab401aaabb9e5c.jpg)  
Figure 8.10: A typical model-wise double descent phenomenon. As the number of parameters increases, the test error first decreases when the number of parameters is smaller than the training data. Then in the overparameterized regime, the test error decreases again.

Sample-wise double descent. A priori, we would expect that more training examples always lead to smaller test errors—more samples give strictly more information for the algorithm to learn from. However, recent work [Nakkiran, 2019] observes that the test error is not monotonically decreasing as we increase the sample size. Instead, as shown in Figure 8.11, the test error decreases, and then increases and peaks around when the number of examples (denoted by  $n$ ) is similar to the number of parameters (denoted by  $d$ ), and then decreases again. We refer to this as the sample-wise double descent phenomenon. To some extent, sample-wise double descent and model-wise double descent are essentially describing similar phenomena—the test error is peaked when  $n \approx d$ .

Explanation and mitigation strategy. The sample-wise double descent, or, in particular, the peak of test error at  $n \approx d$ , suggests that the existing training algorithms evaluated in these experiments are far from optimal when  $n \approx d$ . We will be better off by tossing away some examples and run the algorithms with a smaller sample size to steer clear of the peak. In other words, in principle, there are other algorithms that can achieve smaller test error when  $n \approx d$ , but the algorithms evaluated in these experiments fail to do so. The sub-optimality of the learning procedure appears to be the culprit of the peak in both sample-wise and model-wise double descent.

Indeed, with an optimally-tuned regularization (which will be discussed more in Section 9), the test error in the  $n \approx d$  regime can be dramatically improved, and the model-wise and sample-wise double descent are both mitigated. See Figure 8.11.

The intuition above only explains the peak in the model-wise and sample-wise double descent, but does not explain the second descent in the model-wise double descent—why overparameterized models are able to generalize so well. The theoretical understanding of overparameterized models is an active research area with many recent advances. A typical explanation is that the commonly-used optimizers such as gradient descent provide an implicit regularization effect (which will be discussed in more detail in Section 9.2). In other words, even in the overparameterized regime and with an unregularized loss function, the model is still implicitly regularized, and thus exhibits a better test performance than an arbitrary solution that fits the data. For example, for linear models, when  $n \ll d$ , the gradient descent optimizer with zero initialization finds the minimum norm solution that fits the data (instead of an arbitrary solution that fits the data), and the minimum norm regulator turns out to be a sufficiently good for the overparameterized regime (but it's not a good regulator when  $n \approx d$ , resulting in the peak of test

error).

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/d5fb883a74cb0bc75ba72c90f9f7e03d27a830cf1305d98ca2944a0b6f4a5869.jpg)  
Figure 8.11: Left: The sample-wise double descent phenomenon for linear models. Right: The sample-wise double descent with different regularization strength for linear models. Using the optimal regularization parameter  $\lambda$  (optimally tuned for each  $n$ , shown in green solid curve) mitigates double descent. Setup: The data distribution of  $(x,y)$  is  $x \sim \mathcal{N}(0, I_d)$  and  $y \sim x^\top \beta + \mathcal{N}(0, \sigma^2)$  where  $d = 500$ ,  $\sigma = 0.5$  and  $\|\beta\|_2 = 1$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/b805899d18439a80330a46fc288ac3b91e1379d95c3eea84f080b4a0dd4c4335.jpg)

Finally, we also remark that the double descent phenomenon has been mostly observed when the model complexity is measured by the number of parameters. It is unclear if and when the number of parameters is the best complexity measure of a model. For example, in many situations, the norm of the models is used as a complexity measure. As shown in Figure 8.12 right, for a particular linear case, if we plot the test error against the norm of the learnt model, the double descent phenomenon no longer occurs. This is partly because the norm of the learned model is also peaked around  $n \approx d$  (See Figure 8.12 (middle) or Belkin et al. [2019], Mei and Montanari [2022], and discussions in Section 10.8 of James et al. [2021]). For deep neural networks, the correct complexity measure is even more elusive. The study of double descent phenomenon is an active research topic.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/e22399fc66505606f5ebf0e005f08d605813c125dc78cd9d5ca238f6c3e20c7a.jpg)  
Figure 8.12: Left: The double descent phenomenon, where the number of parameters is used as the model complexity. Middle: The norm of the learned model is peaked around  $n \approx d$ . Right: The test error against the norm of the learnt model. The color bar indicates the number of parameters and the arrows indicates the direction of increasing model size. Their relationship are closer to the convention wisdom than to a double descent. Setup: We consider a linear regression with a fixed dataset of size  $n = 500$ . The input  $x$  is a random ReLU feature on Fashion-MNIST, and output  $y \in \mathbb{R}^{10}$  is the one-hot label. This is the same setting as in Section 5.2 of Nakkiran et al. [2020].

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/f5580ee1d9183e3bb78045c1558eb6390d13796af6c4bc73d4e954c6f2d5dc90.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/fe803a2fdb07dfc1d0b7cd354fbbb9f1a78e6d15cc701cea5d4dc8ddeb66838b.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/98f7cf19c3b691c0f8ba4701d02d470c4f51d144435804d894a39c4e48f78b2f.jpg)

# 8.3 Sample complexity bounds (optional readings)

# 8.3.1 Preliminaries

In this set of notes, we begin our foray into learning theory. Apart from being interesting and enlightening in its own right, this discussion will also help us hone our intuitions and derive rules of thumb about how to best apply learning algorithms in different settings. We will also seek to answer a few questions: First, can we make formal the bias/variance tradeoff that was just discussed? This will also eventually lead us to talk about model selection methods, which can, for instance, automatically decide what order polynomial to fit to a training set. Second, in machine learning it's really generalization error that we care about, but most learning algorithms fit their models to the training set. Why should doing well on the training set tell us anything about generalization error? Specifically, can we relate error on the training set to generalization error? Third and finally, are there conditions under which we can actually prove that learning algorithms will work well?

We start with two simple but very useful lemmas.

Lemma. (The union bound). Let  $A_1, A_2, \ldots, A_k$  be  $k$  different events (that may not be independent). Then

$$
P (A_{1} \cup \dots \cup A_{k}) \leq P (A_{1}) + \dots + P (A_{k}).
$$

In probability theory, the union bound is usually stated as an axiom (and thus we won't try to prove it), but it also makes intuitive sense: The probability of any one of  $k$  events happening is at most the sum of the probabilities of the  $k$  different events.

Lemma. (Hoeffding inequality) Let  $Z_{1}, \ldots, Z_{n}$  be  $n$  independent and identically distributed (iid) random variables drawn from a Bernoulli  $(\phi)$  distribution. I.e.,  $P(Z_{i} = 1) = \phi$ , and  $P(Z_{i} = 0) = 1 - \phi$ . Let  $\hat{\phi} = (1/n)\sum_{i=1}^{n}Z_{i}$  be the mean of these random variables, and let any  $\gamma > 0$  be fixed. Then

$$
P (| \phi - \hat {\phi} | > \gamma) \leq 2 \exp (- 2 \gamma^{2} n)
$$

This lemma (which in learning theory is also called the Chernoff bound) says that if we take  $\hat{\phi}$ —the average of  $n$  Bernoulli  $(\phi)$  random variables—to be our estimate of  $\phi$ , then the probability of our being far from the true value is small, so long as  $n$  is large. Another way of saying this is that if you have a biased coin whose chance of landing on heads is  $\phi$ , then if you toss it  $n$

times and calculate the fraction of times that it came up heads, that will be a good estimate of  $\phi$  with high probability (if  $n$  is large).

Using just these two lemmas, we will be able to prove some of the deepest and most important results in learning theory.

To simplify our exposition, let's restrict our attention to binary classification in which the labels are  $y \in \{0, 1\}$ . Everything we'll say here generalizes to other problems, including regression and multi-class classification.

We assume we are given a training set  $S = \{(x^{(i)},y^{(i)});i = 1,\dots ,n\}$  of size  $n$ , where the training examples  $(x^{(i)},y^{(i)})$  are drawn iid from some probability distribution  $\mathcal{D}$ . For a hypothesis  $h$ , we define the training error (also called the empirical risk or empirical error in learning theory) to be

$$
\hat {\varepsilon} (h) = \frac{1}{n} \sum_{i = 1}^{n} 1 \{h (x^{(i)}) \neq y^{(i)} \}.
$$

This is just the fraction of training examples that  $h$  misclassifies. When we want to make explicit the dependence of  $\hat{\varepsilon}(h)$  on the training set  $S$ , we may also write this a  $\hat{\varepsilon}_S(h)$ . We also define the generalization error to be

$$
\varepsilon (h) = P_{(x, y) \sim \mathcal {D}} (h (x) \neq y).
$$

I.e. this is the probability that, if we now draw a new example  $(x,y)$  from the distribution  $\mathcal{D}$ ,  $h$  will misclassify it.

Note that we have assumed that the training data was drawn from the same distribution  $\mathcal{D}$  with which we're going to evaluate our hypotheses (in the definition of generalization error). This is sometimes also referred to as one of the PAC assumptions.

Consider the setting of linear classification, and let  $h_{\theta}(x) = 1\{\theta^T x \geq 0\}$ . What's a reasonable way of fitting the parameters  $\theta$ ? One approach is to try to minimize the training error, and pick

$$
\hat {\theta} = \arg \min_{\theta} \hat {\varepsilon} (h_{\theta}).
$$

We call this process empirical risk minimization (ERM), and the resulting hypothesis output by the learning algorithm is  $\hat{h} = h_{\hat{\theta}}$ . We think of ERM as the most "basic" learning algorithm, and it will be this algorithm that we

focus on in these notes. (Algorithms such as logistic regression can also be viewed as approximations to empirical risk minimization.)

In our study of learning theory, it will be useful to abstract away from the specific parameterization of hypotheses and from issues such as whether we're using a linear classifier. We define the hypothesis class  $\mathcal{H}$  used by a learning algorithm to be the set of all classifiers considered by it. For linear classification,  $\mathcal{H} = \{h_{\theta}: h_{\theta}(x) = 1 \mid \theta^T x \geq 0\}, \theta \in \mathbb{R}^{d+1}\}$  is thus the set of all classifiers over  $\mathcal{X}$  (the domain of the inputs) where the decision boundary is linear. More broadly, if we were studying, say, neural networks, then we could let  $\mathcal{H}$  be the set of all classifiers representable by some neural network architecture.

Empirical risk minimization can now be thought of as a minimization over the class of functions  $\mathcal{H}$ , in which the learning algorithm picks the hypothesis:

$$
\hat {h} = \arg \min_{h \in \mathcal {H}} \hat {\varepsilon} (h)
$$

# 8.3.2 The case of finite  $\mathcal{H}$

Let's start by considering a learning problem in which we have a finite hypothesis class  $\mathcal{H} = \{h_1, \ldots, h_k\}$  consisting of  $k$  hypotheses. Thus,  $\mathcal{H}$  is just a set of  $k$  functions mapping from  $\mathcal{X}$  to  $\{0, 1\}$ , and empirical risk minimization selects  $\hat{h}$  to be whichever of these  $k$  functions has the smallest training error.

We would like to give guarantees on the generalization error of  $\hat{h}$ . Our strategy for doing so will be in two parts: First, we will show that  $\hat{\varepsilon}(h)$  is a reliable estimate of  $\varepsilon(h)$  for all  $h$ . Second, we will show that this implies an upper-bound on the generalization error of  $\hat{h}$ .

Take any one, fixed,  $h_i \in \mathcal{H}$ . Consider a Bernoulli random variable  $Z$  whose distribution is defined as follows. We're going to sample  $(x,y) \sim \mathcal{D}$ . Then, we set  $Z = 1\{h_i(x) \neq y\}$ . I.e., we're going to draw one example, and let  $Z$  indicate whether  $h_i$  misclassifies it. Similarly, we also define  $Z_j = 1\{h_i(x^{(j)}) \neq y^{(j)}\}$ . Since our training set was drawn iid from  $\mathcal{D}$ ,  $Z$  and the  $Z_j$ 's have the same distribution.

We see that the misclassification probability on a randomly drawn example—that is,  $\varepsilon(h)$ —is exactly the expected value of  $Z$  (and  $Z_j$ ). Moreover, the training error can be written

$$
\hat {\varepsilon} (h_{i}) = \frac{1}{n} \sum_{j = 1}^{n} Z_{j}.
$$

Thus,  $\hat{\varepsilon}(h_i)$  is exactly the mean of the  $n$  random variables  $Z_j$  that are drawn iid from a Bernoulli distribution with mean  $\varepsilon(h_i)$ . Hence, we can apply the

Hoeffding inequality, and obtain

$$
P (| \varepsilon (h_{i}) - \hat {\varepsilon} (h_{i}) | > \gamma) \leq 2 \exp (- 2 \gamma^{2} n).
$$

This shows that, for our particular  $h_i$ , training error will be close to generalization error with high probability, assuming  $n$  is large. But we don't just want to guarantee that  $\varepsilon(h_i)$  will be close to  $\hat{\varepsilon}(h_i)$  (with high probability) for just only one particular  $h_i$ . We want to prove that this will be true simultaneously for all  $h \in \mathcal{H}$ . To do so, let  $A_i$  denote the event that  $|\varepsilon(h_i) - \hat{\varepsilon}(h_i)| > \gamma$ . We've already shown that, for any particular  $A_i$ , it holds true that  $P(A_i) \leq 2\exp(-2\gamma^2n)$ . Thus, using the union bound, we have that

$$
\begin{array}{l} P (\exists h \in \mathcal {H}. | \varepsilon (h_{i}) - \hat {\varepsilon} (h_{i}) | > \gamma) = P \left(A_{1} \cup \dots \cup A_{k}\right) \\ \leq \sum_{i = 1}^{k} P (A_{i}) \\ \leq \sum_{i = 1}^{k} 2 \exp (- 2 \gamma^{2} n) \\ = 2 k \exp (- 2 \gamma^{2} n) \\ \end{array}
$$

If we subtract both sides from 1, we find that

$$
\begin{array}{l} P (\neg \exists h \in \mathcal {H}. | \varepsilon (h_{i}) - \hat {\varepsilon} (h_{i}) | > \gamma) = P (\forall h \in \mathcal {H}. | \varepsilon (h_{i}) - \hat {\varepsilon} (h_{i}) | \leq \gamma) \\ \geq 1 - 2 k \exp (- 2 \gamma^{2} n) \\ \end{array}
$$

(The “ $\neg$ ” symbol means “not.”) So, with probability at least  $1 - 2k\exp(-2\gamma^2n)$ , we have that  $\varepsilon(h)$  will be within  $\gamma$  of  $\hat{\varepsilon}(h)$  for all  $h \in \mathcal{H}$ . This is called a uniform convergence result, because this is a bound that holds simultaneously for all (as opposed to just one)  $h \in \mathcal{H}$ .

In the discussion above, what we did was, for particular values of  $n$  and  $\gamma$ , give a bound on the probability that for some  $h \in \mathcal{H}$ ,  $|\varepsilon(h) - \hat{\varepsilon}(h)| > \gamma$ . There are three quantities of interest here:  $n$ ,  $\gamma$ , and the probability of error; we can bound either one in terms of the other two.

For instance, we can ask the following question: Given  $\gamma$  and some  $\delta > 0$ , how large must  $n$  be before we can guarantee that with probability at least  $1 - \delta$ , training error will be within  $\gamma$  of generalization error? By setting  $\delta = 2k\exp(-2\gamma^2 n)$  and solving for  $n$ , [you should convince yourself this is the right thing to do!), we find that if

$$
n \geq \frac{1}{2 \gamma^{2}} \log \frac{2 k}{\delta},
$$

then with probability at least  $1 - \delta$ , we have that  $|\varepsilon(h) - \hat{\varepsilon}(h)| \leq \gamma$  for all  $h \in \mathcal{H}$ . (Equivalently, this shows that the probability that  $|\varepsilon(h) - \hat{\varepsilon}(h)| > \gamma$  for some  $h \in \mathcal{H}$  is at most  $\delta$ .) This bound tells us how many training examples we need in order to make a guarantee. The training set size  $n$  that a certain method or algorithm requires in order to achieve a certain level of performance is also called the algorithm's sample complexity.

The key property of the bound above is that the number of training examples needed to make this guarantee is only logarithmic in  $k$ , the number of hypotheses in  $\mathcal{H}$ . This will be important later.

Similarly, we can also hold  $n$  and  $\delta$  fixed and solve for  $\gamma$  in the previous equation, and show [again, convince yourself that this is right!] that with probability  $1 - \delta$ , we have that for all  $h \in \mathcal{H}$ ,

$$
| \hat {\varepsilon} (h) - \varepsilon (h) | \leq \sqrt{\frac{1}{2 n} \log \frac{2 k}{\delta}}.
$$

Now, let's assume that uniform convergence holds, i.e., that  $|\varepsilon(h) - \hat{\varepsilon}(h)| \leq \gamma$  for all  $h \in \mathcal{H}$ . What can we prove about the generalization of our learning algorithm that picked  $\hat{h} = \arg \min_{h \in \mathcal{H}} \hat{\varepsilon}(h)$ ?

Define  $h^* = \arg \min_{h \in \mathcal{H}} \varepsilon(h)$  to be the best possible hypothesis in  $\mathcal{H}$ . Note that  $h^*$  is the best that we could possibly do given that we are using  $\mathcal{H}$ , so it makes sense to compare our performance to that of  $h^*$ . We have:

$$
\begin{array}{l} \varepsilon (\hat {h}) \leq \hat {\varepsilon} (\hat {h}) + \gamma \\ \leq \hat {\varepsilon} (h^{*}) + \gamma \\ \leq \varepsilon \left(h^{*}\right) + 2 \gamma \\ \end{array}
$$

The first line used the fact that  $|\varepsilon(\hat{h}) - \hat{\varepsilon}(\hat{h})| \leq \gamma$  (by our uniform convergence assumption). The second used the fact that  $\hat{h}$  was chosen to minimize  $\hat{\varepsilon}(h)$ , and hence  $\hat{\varepsilon}(\hat{h}) \leq \hat{\varepsilon}(h)$  for all  $h$ , and in particular  $\hat{\varepsilon}(\hat{h}) \leq \hat{\varepsilon}(h^*)$ . The third line used the uniform convergence assumption again, to show that  $\hat{\varepsilon}(h^*) \leq \varepsilon(h^*) + \gamma$ . So, what we've shown is the following: If uniform convergence occurs, then the generalization error of  $\hat{h}$  is at most  $2\gamma$  worse than the best possible hypothesis in  $\mathcal{H}$ !

Let's put all this together into a theorem.

Theorem. Let  $|\mathcal{H}| = k$ , and let any  $n, \delta$  be fixed. Then with probability at least  $1 - \delta$ , we have that

$$
\varepsilon (\hat {h}) \leq \left(\min_{h \in \mathcal {H}} \varepsilon (h)\right) + 2 \sqrt{\frac{1}{2 n} \log \frac{2 k}{\delta}}.
$$

This is proved by letting  $\gamma$  equal the  $\sqrt{\cdot}$  term, using our previous argument that uniform convergence occurs with probability at least  $1 - \delta$ , and then noting that uniform convergence implies  $\varepsilon(h)$  is at most  $2\gamma$  higher than  $\varepsilon(h^{*}) = \min_{h \in \mathcal{H}} \varepsilon(h)$  (as we showed previously).

This also quantifies what we were saying previously saying about the bias/variance tradeoff in model selection. Specifically, suppose we have some hypothesis class  $\mathcal{H}$ , and are considering switching to some much larger hypothesis class  $\mathcal{H}' \supseteq \mathcal{H}$ . If we switch to  $\mathcal{H}'$ , then the first term  $\min_h \varepsilon(h)$  can only decrease (since we'd then be taking a min over a larger set of functions). Hence, by learning using a larger hypothesis class, our "bias" can only decrease. However, if  $k$  increases, then the second  $2\sqrt{\cdot}$  term would also increase. This increase corresponds to our "variance" increasing when we use a larger hypothesis class.

By holding  $\gamma$  and  $\delta$  fixed and solving for  $n$  like we did before, we can also obtain the following sample complexity bound:

Corollary. Let  $|\mathcal{H}| = k$ , and let any  $\delta, \gamma$  be fixed. Then for  $\varepsilon(\hat{h}) \leq \min_{h \in \mathcal{H}} \varepsilon(h) + 2\gamma$  to hold with probability at least  $1 - \delta$ , it suffices that

$$
\begin{array}{l} n \geq \frac{1}{2 \gamma^{2}} \log \frac{2 k}{\delta} \\ = O \left(\frac{1}{\gamma^{2}} \log \frac{k}{\delta}\right), \\ \end{array}
$$

# 8.3.3 The case of infinite  $\mathcal{H}$

We have proved some useful theorems for the case of finite hypothesis classes. But many hypothesis classes, including any parameterized by real numbers (as in linear classification) actually contain an infinite number of functions. Can we prove similar results for this setting?

Let's start by going through something that is not the "right" argument. Better and more general arguments exist, but this will be useful for honing our intuitions about the domain.

Suppose we have an  $\mathcal{H}$  that is parameterized by  $d$  real numbers. Since we are using a computer to represent real numbers, and IEEE double-precision floating point (double's in C) uses 64 bits to represent a floating point number, this means that our learning algorithm, assuming we're using double-precision floating point, is parameterized by  $64d$  bits. Thus, our hypothesis class really consists of at most  $k = 2^{64d}$  different hypotheses. From the Corollary at the end of the previous section, we therefore find that, to guarantee

$\varepsilon (\hat{h})\leq \varepsilon (h^{*}) + 2\gamma$  , with to hold with probability at least  $1 - \delta$  , it suffices that  $n\geq O\left(\frac{1}{\gamma^2}\log \frac{2^{64d}}{\delta}\right) = O\left(\frac{d}{\gamma^2}\log \frac{1}{\delta}\right) = O_{\gamma ,\delta}(d)$  . (The  $\gamma ,\delta$  subscripts indicate that the last big-  $O$  is hiding constants that may depend on  $\gamma$  and  $\delta$  ). Thus, the number of training examples needed is at most linear in the parameters of the model.

The fact that we relied on 64-bit floating point makes this argument not entirely satisfying, but the conclusion is nonetheless roughly correct: If what we try to do is minimize training error, then in order to learn "well" using a hypothesis class that has  $d$  parameters, generally we're going to need on the order of a linear number of training examples in  $d$ .

(At this point, it's worth noting that these results were proved for an algorithm that uses empirical risk minimization. Thus, while the linear dependence of sample complexity on  $d$  does generally hold for most discriminative learning algorithms that try to minimize training error or some approximation to training error, these conclusions do not always apply as readily to discriminative learning algorithms. Giving good theoretical guarantees on many non-ERM learning algorithms is still an area of active research.)

The other part of our previous argument that's slightly unsatisfying is that it relies on the parameterization of  $\mathcal{H}$ . Intuitively, this doesn't seem like it should matter: We had written the class of linear classifiers as  $h_{\theta}(x) = 1\{\theta_0 + \theta_1 x_1 + \dots + \theta_d x_d \geq 0\}$ , with  $n + 1$  parameters  $\theta_0, \ldots, \theta_d$ . But it could also be written  $h_{u,v}(x) = 1\{(u_0^2 - v_0^2) + (u_1^2 - v_1^2) x_1 + \dots + (u_d^2 - v_d^2) x_d \geq 0\}$  with  $2d + 2$  parameters  $u_i, v_i$ . Yet, both of these are just defining the same  $\mathcal{H}$ : The set of linear classifiers in  $d$  dimensions.

To derive a more satisfying argument, let's define a few more things.

Given a set  $S = \{x^{(i)},\ldots ,x^{(\mathbf{D})}\}$  (no relation to the training set) of points  $x^{(i)}\in \mathcal{X}$ , we say that  $\mathcal{H}$  shatters  $S$  if  $\mathcal{H}$  can realize any labeling on  $S$ . I.e., if for any set of labels  $\{y^{(1)},\dots ,y^{(\mathbf{D})}\}$ , there exists some  $h\in \mathcal{H}$  so that  $h(x^{(i)}) = y^{(i)}$  for all  $i = 1,\dots \mathbf{D}$ .

Given a hypothesis class  $\mathcal{H}$ , we then define its Vapnik-Chervonenkis dimension, written  $\operatorname{VC}(\mathcal{H})$ , to be the size of the largest set that is shattered by  $\mathcal{H}$ . (If  $\mathcal{H}$  can shatter arbitrarily large sets, then  $\operatorname{VC}(\mathcal{H}) = \infty$ .)

For instance, consider the following set of three points:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/404c8a01ba5ada1cf52b561d6c8ec96bb66eb65f82f459119b5db40a80b83088.jpg)

Can the set  $\mathcal{H}$  of linear classifiers in two dimensions  $(h(x) = 1\{\theta_0 + \theta_1x_1 + \theta_2x_2 \geq 0\})$  can shatter the set above? The answer is yes. Specifically, we see that, for any of the eight possible labelings of these points, we can find a linear classifier that obtains "zero training error" on them:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/491378b7e103a7d86b2f020767893bbd39d3c9e42ea102d04b0433b659c9fa51.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/30986e8fc305f49f5a1372e354cee9ddc4fb01929c5e311d3a72889f821b0bca.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/5490d02603ccf275084b1ededafd14ab1f9be0f0560444fc5263ca02c3940123.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/fbaee14f8f2c0bb869b5b4d85bee2c034f4351acfdf9de96890609bbe3ed4314.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/d16bdfad75d5ee94433e98f3d605a432711be93769c32c0569eba8ae1a3699dd.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/1d48f7f30370af0dd7589bb035694e7c908c48cd150425de5d996bd5153e4887.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/e3229b6ad753b8d33553ff5f9c45302a3c6b01d435eebf163ed8c9fe699da41e.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/23c8d732faa24470fe3099bc015944b73a131d9c46de143aebb5ab6fb9a16f20.jpg)

Moreover, it is possible to show that there is no set of 4 points that this hypothesis class can shatter. Thus, the largest set that  $\mathcal{H}$  can shatter is of size 3, and hence  $\operatorname{VC}(\mathcal{H}) = 3$ .

Note that the VC dimension of  $\mathcal{H}$  here is 3 even though there may be sets of size 3 that it cannot shatter. For instance, if we had a set of three points lying in a straight line (left figure), then there is no way to find a linear separator for the labeling of the three points shown below (right figure):

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/6eeab36ccbaadbd555deb741a7a3d0d4f8f5fbd67a9b446eaec8df93099206b1.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/0027afe3fc0f52f72607274b3715525275729497f5fb45d4c4e4bccdd178c3d7.jpg)

In order words, under the definition of the VC dimension, in order to prove that  $\mathrm{VC}(\mathcal{H})$  is at least  $\mathbf{D}$ , we need to show only that there's at least one set of size  $\mathbf{D}$  that  $\mathcal{H}$  can shatter.

The following theorem, due to Vapnik, can then be shown. (This is, many would argue, the most important theorem in all of learning theory.)

Theorem. Let  $\mathcal{H}$  be given, and let  $\mathbf{D} = \mathrm{VC}(\mathcal{H})$ . Then with probability at least  $1 - \delta$ , we have that for all  $h \in \mathcal{H}$ ,

$$
| \varepsilon (h) - \hat {\varepsilon} (h) | \leq O \left(\sqrt{\frac{\mathbf {D}}{n} \log \frac{n}{\mathbf {D}} + \frac{1}{n} \log \frac{1}{\delta}}\right).
$$

Thus, with probability at least  $1 - \delta$ , we also have that:

$$
\varepsilon (\hat {h}) \leq \varepsilon (h^{*}) + O \left(\sqrt{\frac{\mathbf {D}}{n} \log \frac{n}{\mathbf {D}} + \frac{1}{n} \log \frac{1}{\delta}}\right).
$$

In other words, if a hypothesis class has finite VC dimension, then uniform convergence occurs as  $n$  becomes large. As before, this allows us to give a bound on  $\varepsilon(h)$  in terms of  $\varepsilon(h^*)$ . We also have the following corollary:

Corollary. For  $|\varepsilon(h) - \hat{\varepsilon}(h)| \leq \gamma$  to hold for all  $h \in \mathcal{H}$  (and hence  $\varepsilon(\hat{h}) \leq \varepsilon(h^*) + 2\gamma$ ) with probability at least  $1 - \delta$ , it suffices that  $n = O_{\gamma, \delta}(\mathbf{D})$ .

In other words, the number of training examples needed to learn "well" using  $\mathcal{H}$  is linear in the VC dimension of  $\mathcal{H}$ . It turns out that, for "most" hypothesis classes, the VC dimension (assuming a "reasonable" parameterization) is also roughly linear in the number of parameters. Putting these together, we conclude that for a given hypothesis class  $\mathcal{H}$  (and for an algorithm that tries to minimize training error), the number of training examples needed to achieve generalization error close to that of the optimal classifier is usually roughly linear in the number of parameters of  $\mathcal{H}$ .

# Chapter 9

# Regularization and model selection

# 9.1 Regularization

Recall that as discussed in Section 8.1, overfitting is typically a result of using too complex models, and we need to choose a proper model complexity to achieve the optimal bias-variance tradeoff. When the model complexity is measured by the number of parameters, we can vary the size of the model (e.g., the width of a neural net). However, the correct, informative complexity measure of the models can be a function of the parameters (e.g.,  $\ell_2$  norm of the parameters), which may not necessarily depend on the number of parameters. In such cases, we will use regularization, an important technique in machine learning, control the model complexity and prevent overfitting.

Regularization typically involves adding an additional term, called a regularizer and denoted by  $R(\theta)$  here, to the training loss/cost function:

$$
J_{\lambda} (\theta) = J (\theta) + \lambda R (\theta) \tag {9.1}
$$

Here  $J_{\lambda}$  is often called the regularized loss, and  $\lambda \geq 0$  is called the regularization parameter. The regularizer  $R(\theta)$  is a nonnegative function (in almost all cases). In classical methods,  $R(\theta)$  is purely a function of the parameter  $\theta$ , but some modern approach allows  $R(\theta)$  to depend on the training dataset.<sup>1</sup>

The regularizer  $R(\theta)$  is typically chosen to be some measure of the complexity of the model  $\theta$ . Thus, when using the regularized loss, we aim to find a model that both fit the data (a small loss  $J(\theta)$ ) and have a small

model complexity (a small  $R(\theta)$ ). The balance between the two objectives is controlled by the regularization parameter  $\lambda$ . When  $\lambda = 0$ , the regularized loss is equivalent to the original loss. When  $\lambda$  is a sufficiently small positive number, minimizing the regularized loss is effectively minimizing the original loss with the regularizer as the tie-breaker. When the regularizer is extremely large, then the original loss is not effective (and likely the model will have a large bias.)

The most commonly used regularization is perhaps  $\ell_2$  regularization, where  $R(\theta) = \frac{1}{2}\|\theta\|_2^2$ . It encourages the optimizer to find a model with small  $\ell_2$  norm. In deep learning, it's oftentimes referred to as weight decay, because gradient descent with learning rate  $\eta$  on the regularized loss  $R_{\lambda}(\theta)$  is equivalent to shrinking/decaying  $\theta$  by a scalar factor of  $1 - \eta\lambda$  and then applying the standard gradient

$$
\begin{array}{l} \theta \leftarrow \theta - \eta \nabla J_{\lambda} (\theta) = \theta - \eta \lambda \theta - \eta \nabla J (\theta) \\ = \underbrace {(1 - \lambda \eta) \theta}_{\text{decayingweights}} - \eta \nabla J (\theta) \tag {9.2} \\ \end{array}
$$

Besides encouraging simpler models, regularization can also impose inductive biases or structures on the model parameters. For example, suppose we had a prior belief that the number of non-zeros in the ground-truth model parameters is small,[2]—which is oftentimes called sparsity of the model—, we can impose a regularization on the number of non-zeros in  $\theta$ , denoted by  $\| \theta \|_0$ , to leverage such a prior belief. Imposing additional structure of the parameters narrows our search space and makes the complexity of the model family smaller,—e.g., the family of sparse models can be thought of as having lower complexity than the family of all models—and thus tends to lead to a better generalization. On the other hand, imposing additional structure may risk increasing the bias. For example, if we regularize the sparsity strongly but no sparse models can predict the label accurately, we will suffer from large bias (analogously to the situation when we use linear models to learn data than can only be represented by quadratic functions in Section 8.1.)

The sparsity of the parameters is not a continuous function of the parameters, and thus we cannot optimize it with (stochastic) gradient descent. A common relaxation is to use  $R(\theta) = \| \theta \|_1$  as a continuous surrogate.<sup>3</sup>

The  $R(\theta) = \| \theta \|_1$  (also called LASSO) and  $R(\theta) = \frac{1}{2} \| \theta \|_2^2$  are perhaps among the most commonly used regularizers for linear models. Other norm and powers of norms are sometimes also used. The  $\ell_2$  norm regularization is much more commonly used with kernel methods because  $\ell_1$  regularization is typically not compatible with the kernel trick (the optimal solution cannot be written as functions of inner products of features.)

In deep learning, the most commonly used regularizer is  $\ell_2$  regularization or weight decay. Other common ones include dropout, data augmentation, regularizing the spectral norm of the weight matrices, and regularizing the Lipschitzness of the model, etc. Regularization in deep learning is an active research area, and it's known that there is another implicit source of regularization, as discussed in the next section.

# 9.2 Implicit regularization effect (optional reading)

The implicit regularization effect of optimizers, or implicit bias or algorithmic regularization, is a new concept/phenomenon observed in the deep learning era. It largely refers to that the optimizers can implicitly impose structures on parameters beyond what has been imposed by the regularized loss.

In most classical settings, the loss or regularized loss has a unique global minimum, and thus any reasonable optimizer should converge to that global minimum and cannot impose any additional preferences. However, in deep learning, oftentimes the loss or regularized loss has more than one (approximate) global minima, and difference optimizers may converge to different global minima. Though these global minima have the same or similar training losses, they may be of different nature and have dramatically different generalization performance. See Figures 9.1 and 9.2 and its caption for an illustration and some experiment results. For example, it's possible that one global minimum gives a much more Lipschitz or sparse model than others and thus has a better test error. It turns out that many commonly-used optimizers (or their components) prefer or bias towards finding global minima of certain properties, leading to a better test performance.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/75a54ddf85764d4539636694bd21a871c2f084c5a8dfca9ac413dd416ce2d0db.jpg)  
Figure 9.1: An Illustration that different global minima of the training loss can have different test performance.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/d5bcebb50a29c2f5c8feea71a5443310ea0fa669044abcbd8f4410a0a8c70f83.jpg)  
Figure 9.2: Left: Performance of neural networks trained by two different learning rates schedules on the CIFAR-10 dataset. Although both experiments used exactly the same regularized losses and the optimizers fit the training data perfectly, the models' generalization performance differ much. Right: On a different synthetic dataset, optimizers with different initializations have the same training error but different generalization performance. $^4$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/3b32765a5eb532f33cf1d7207eabdea321256eea7cdef984c0a4787a8573db4a.jpg)

In summary, the takehome message here is that the choice of optimizer does not only affect minimizing the training loss, but also imposes implicit regularization and affects the generalization of the model. Even if your current optimizer already converges to a small training error perfectly, you may still need to tune your optimizer for a better generalization, .

One may wonder which components of the optimizers bias towards what type of global minima and what type of global minima may generalize better. These are open questions that researchers are actively investigating. Empirical and theoretical research have offered some clues and heuristics. In many (but definitely far from all) situations, among those setting where optimization can succeed in minimizing the training loss, the use of larger initial learning rate, smaller initialization, smaller batch size, and momentum appears to help with biasing towards more generalizable solutions. A conjecture (that can be proven in certain simplified case) is that stochasticity in the optimization process helps the optimizer to find flatter global minima (global minima where the curvature of the loss is small), and flat global minima tend to give more Lipschitz models and better generalization. Characterizing the implicit regularization effect formally is still a challenging open research question.

# 9.3 Model selection via cross validation

Suppose we are trying select among several different models for a learning problem. For instance, we might be using a polynomial regression model  $h_{\theta}(x) = g(\theta_0 + \theta_1 x + \theta_2 x^2 + \dots + \theta_k x^k)$ , and wish to decide if  $k$  should be 0, 1, ..., or 10. How can we automatically select a model that represents a good tradeoff between the twin evils of bias and variance? Alternatively, suppose we want to automatically choose the bandwidth parameter  $\tau$  for locally weighted regression, or the parameter  $C$  for our  $\ell_1$ -regularized SVM. How can we do that?

For the sake of concreteness, in these notes we assume we have some finite set of models  $\mathcal{M} = \{M_1,\dots ,M_d\}$  that we're trying to select among. For instance, in our first example above, the model  $M_{i}$  would be an  $i$  -th degree polynomial regression model. (The generalization to infinite  $\mathcal{M}$  is not hard.6) Alternatively, if we are trying to decide between using an SVM, a neural network or logistic regression, then  $\mathcal{M}$  may contain these models.

Given that we said in the previous set of notes that bias and variance are two very different beasts, some readers may be wondering if we should be calling them "twin" evils here. Perhaps it'd be better to think of them as non-identical twins. The phrase "the fraternal twin evils of bias and variance" doesn't have the same ring to it, though.  
<sup>6</sup>If we are trying to choose from an infinite set of models, say corresponding to the possible values of the bandwidth  $\tau \in \mathbb{R}^{+}$ , we may discretize  $\tau$  and consider only a finite number of possible values for it. More generally, most of the algorithms described here can all be viewed as performing optimization search in the space of models, and we can perform this search over infinite model classes as well.

Cross validation. Lets suppose we are, as usual, given a training set  $S$ . Given what we know about empirical risk minimization, here's what might initially seem like a algorithm, resulting from using empirical risk minimization for model selection:

1. Train each model  $M_{i}$  on  $S$ , to get some hypothesis  $h_{i}$ .  
2. Pick the hypotheses with the smallest training error.

This algorithm does not work. Consider choosing the degree of a polynomial. The higher the degree of the polynomial, the better it will fit the training set  $S$ , and thus the lower the training error. Hence, this method will always select a high-variance, high-degree polynomial model, which we saw previously is often poor choice.

Here's an algorithm that works better. In hold-out cross validation (also called simple cross validation), we do the following:

1. Randomly split  $S$  into  $S_{\mathrm{train}}$  (say, 70% of the data) and  $S_{\mathrm{cv}}$  (the remaining 30%). Here,  $S_{\mathrm{cv}}$  is called the hold-out cross validation set.  
2. Train each model  $M_{i}$  on  $S_{\mathrm{train}}$  only, to get some hypothesis  $h_{i}$ .  
3. Select and output the hypothesis  $h_i$  that had the smallest error  $\hat{\varepsilon}_{S_{\mathrm{cv}}}(h_i)$  on the hold out cross validation set. (Here  $\hat{\varepsilon}_{S_{\mathrm{cv}}}(h)$  denotes the average error of  $h$  on the set of examples in  $S_{\mathrm{cv}}$ .) The error on the hold out validation set is also referred to as the validation error.

By testing/validating on a set of examples  $S_{\mathrm{cv}}$  that the models were not trained on, we obtain a better estimate of each hypothesis  $h_i$ 's true generalization/test error. Thus, this approach is essentially picking the model with the smallest estimated generalization/test error. The size of the validation set depends on the total number of available examples. Usually, somewhere between  $1/4 - 1/3$  of the data is used in the hold out cross validation set, and  $30\%$  is a typical choice. However, when the total dataset is huge, validation set can be a smaller fraction of the total examples as long as the absolute number of validation examples is decent. For example, for the ImageNet dataset that has about 1M training images, the validation set is sometimes set to be 50K images, which is only about  $5\%$  of the total examples.

Optionally, step 3 in the algorithm may also be replaced with selecting the model  $M_{i}$  according to  $\arg \min_{i}\hat{\varepsilon}_{S_{\mathrm{cv}}}(h_{i})$ , and then retraining  $M_{i}$  on the entire training set  $S$ . (This is often a good idea, with one exception being learning algorithms that are very sensitive to perturbations of the initial

conditions and/or data. For these methods,  $M_{i}$  doing well on  $S_{\mathrm{train}}$  does not necessarily mean it will also do well on  $S_{\mathrm{cv}}$ , and it might be better to forgo this retraining step.)

The disadvantage of using hold out cross validation is that it "wastes" about  $30\%$  of the data. Even if we were to take the optional step of retraining the model on the entire training set, it's still as if we're trying to find a good model for a learning problem in which we had  $0.7n$  training examples, rather than  $n$  training examples, since we're testing models that were trained on only  $0.7n$  examples each time. While this is fine if data is abundant and/or cheap, in learning problems in which data is scarce (consider a problem with  $n = 20$ , say), we'd like to do something better.

Here is a method, called  $k$ -fold cross validation, that holds out less data each time:

1. Randomly split  $S$  into  $k$  disjoint subsets of  $m / k$  training examples each. Let's call these subsets  $S_{1},\ldots ,S_{k}$ .  
2. For each model  $M_{i}$ , we evaluate it as follows:

For  $j = 1,\ldots ,k$

Train the model  $M_{i}$  on  $S_{1} \cup \dots \cup S_{j - 1} \cup S_{j + 1} \cup \dots S_{k}$  (i.e., train on all the data except  $S_{j}$ ) to get some hypothesis  $h_{ij}$ .

Test the hypothesis  $h_{ij}$  on  $S_j$ , to get  $\hat{\varepsilon}_{S_j}(h_{ij})$ .

The estimated generalization error of model  $M_{i}$  is then calculated as the average of the  $\hat{\varepsilon}_{S_j}(h_{ij})$ 's (averaged over  $j$ ).

3. Pick the model  $M_{i}$  with the lowest estimated generalization error, and retrain that model on the entire training set  $S$ . The resulting hypothesis is then output as our final answer.

A typical choice for the number of folds to use here would be  $k = 10$ . While the fraction of data held out each time is now  $1 / k$ —much smaller than before—this procedure may also be more computationally expensive than hold-out cross validation, since we now need train to each model  $k$  times.

While  $k = 10$  is a commonly used choice, in problems in which data is really scarce, sometimes we will use the extreme choice of  $k = m$  in order to leave out as little data as possible each time. In this setting, we would repeatedly train on all but one of the training examples in  $S$ , and test on that held-out example. The resulting  $m = k$  errors are then averaged together to obtain our estimate of the generalization error of a model. This method has

its own name; since we're holding out one training example at a time, this method is called leave-one-out cross validation.

Finally, even though we have described the different versions of cross validation as methods for selecting a model, they can also be used more simply to evaluate a single model or algorithm. For example, if you have implemented some learning algorithm and want to estimate how well it performs for your application (or if you have invented a novel learning algorithm and want to report in a technical paper how well it performs on various test sets), cross validation would give a reasonable way of doing so.

# 9.4 Bayesian statistics and regularization

In this section, we will talk about one more tool in our arsenal for our battle against overfitting.

At the beginning of the quarter, we talked about parameter fitting using maximum likelihood estimation (MLE), and chose our parameters according to

$$
\theta_{\mathrm{MLE}} = \arg \max_{\theta} \prod_{i = 1}^{n} p (y^{(i)} | x^{(i)}; \theta).
$$

Throughout our subsequent discussions, we viewed  $\theta$  as an unknown parameter of the world. This view of the  $\theta$  as being constant-valued but unknown is taken in frequentist statistics. In the frequentist this view of the world,  $\theta$  is not random—it just happens to be unknown—and it's our job to come up with statistical procedures (such as maximum likelihood) to try to estimate this parameter.

An alternative way to approach our parameter estimation problems is to take the Bayesian view of the world, and think of  $\theta$  as being a random variable whose value is unknown. In this approach, we would specify a prior distribution  $p(\theta)$  on  $\theta$  that expresses our "prior beliefs" about the parameters. Given a training set  $S = \{(x^{(i)},y^{(i)})\}_{i = 1}^n$ , when we are asked to make a prediction on a new value of  $x$ , we can then compute the posterior distribution on the parameters

$$
\begin{array}{l} p (\theta | S) = \frac{p (S | \theta) p (\theta)}{p (S)} \\ = \frac{\left(\prod_{i = 1}^{n} p \left(y^{(i)} \mid x^{(i)} , \theta\right)\right) p (\theta)}{\int_{\theta} \left(\prod_{i = 1}^{n} p \left(y^{(i)} \mid x^{(i)} , \theta\right) p (\theta)\right) d \theta} \tag {9.3} \\ \end{array}
$$

In the equation above,  $p(y^{(i)}|x^{(i)},\theta)$  comes from whatever model you're using

for your learning problem. For example, if you are using Bayesian logistic regression, then you might choose  $p(y^{(i)}|x^{(i)},\theta) = h_{\theta}(x^{(i)})^{y^{(i)}}(1 - h_{\theta}(x^{(i)}))^{(1 - y^{(i)})}$ , where  $h_\theta (x^{(i)}) = 1 / (1 + \exp (-\theta^T x^{(i)}))$ .<sup>7</sup>

When we are given a new test example  $x$  and asked to make it prediction on it, we can compute our posterior distribution on the class label using the posterior distribution on  $\theta$ :

$$
p (y | x, S) = \int_{\theta} p (y | x, \theta) p (\theta | S) d \theta \tag {9.4}
$$

In the equation above,  $p(\theta | S)$  comes from Equation (9.3). Thus, for example, if the goal is to the predict the expected value of  $y$  given  $x$ , then we would output<sup>8</sup>

$$
\operatorname{E} [ y | x, S ] = \int_{y} y p (y | x, S) d y
$$

The procedure that we've outlined here can be thought of as doing "fully Bayesian" prediction, where our prediction is computed by taking an average with respect to the posterior  $p(\theta | S)$  over  $\theta$ . Unfortunately, in general it is computationally very difficult to compute this posterior distribution. This is because it requires taking integrals over the (usually high-dimensional)  $\theta$  as in Equation (9.3), and this typically cannot be done in closed-form.

Thus, in practice we will instead approximate the posterior distribution for  $\theta$ . One common approximation is to replace our posterior distribution for  $\theta$  (as in Equation 9.4) with a single point estimate. The MAP (maximum a posteriori) estimate for  $\theta$  is given by

$$
\theta_{\mathrm{MAP}} = \arg \max_{\theta} \prod_{i = 1}^{n} p \left(y^{(i)} \mid x^{(i)}, \theta\right) p (\theta). \tag {9.5}
$$

Note that this is the same formulas as for the MLE (maximum likelihood) estimate for  $\theta$ , except for the prior  $p(\theta)$  term at the end.

In practical applications, a common choice for the prior  $p(\theta)$  is to assume that  $\theta \sim \mathcal{N}(0, \tau^2 I)$ . Using this choice of prior, the fitted parameters  $\theta_{\mathrm{MAP}}$  will have smaller norm than that selected by maximum likelihood. In practice, this causes the Bayesian MAP estimate to be less susceptible to overfitting than the ML estimate of the parameters. For example, Bayesian logistic regression turns out to be an effective algorithm for text classification, even though in text classification we usually have  $d \gg n$ .

# Part IV

# Unsupervised learning

# Chapter 10

# Clustering and the  $k$ -means algorithm

In the clustering problem, we are given a training set  $\{x^{(1)},\ldots ,x^{(n)}\}$ , and want to group the data into a few cohesive "clusters." Here,  $x^{(i)}\in \mathbb{R}^d$  as usual; but no labels  $y^{(i)}$  are given. So, this is an unsupervised learning problem.

The  $k$ -means clustering algorithm is as follows:

1. Initialize cluster centroids  $\mu_1, \mu_2, \ldots, \mu_k \in \mathbb{R}^d$  randomly.  
2. Repeat until convergence: {

For every  $i$ , set

$$
c^{(i)} := \arg \min_{j} | | x^{(i)} - \mu_{j} | |^{2}.
$$

For each  $j$ , set

$$
\mu_{j} := \frac{\sum_{i = 1}^{n} 1 \{c^{(i)} = j \} x^{(i)}}{\sum_{i = 1}^{n} 1 \{c^{(i)} = j \}}.
$$

}

In the algorithm above,  $k$  (a parameter of the algorithm) is the number of clusters we want to find; and the cluster centroids  $\mu_{j}$  represent our current guesses for the positions of the centers of the clusters. To initialize the cluster centroids (in step 1 of the algorithm above), we could choose  $k$  training examples randomly, and set the cluster centroids to be equal to the values of these  $k$  examples. (Other initialization methods are also possible.)

The inner-loop of the algorithm repeatedly carries out two steps: (i) "Assigning" each training example  $x^{(i)}$  to the closest cluster centroid  $\mu_j$ , and

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/bb07ad65495929f6d477eb954c519795bf0e5a68f85c354b666fc8afa6c38be5.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/526f66318473eeb848426812420b83511b8c9983a53acd9bee86d7f5fcc37371.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/f7997ab0792ae2ff95b7b4771d995851a486a91580ee23e645267f22f530cbb9.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/c582323fc947486938efc427a6cb860de2453fcd2812e6eda3fcbab70f06b67f.jpg)  
Figure 10.1: K-means algorithm. Training examples are shown as dots, and cluster centroids are shown as crosses. (a) Original dataset. (b) Random initial cluster centroids (in this instance, not chosen to be equal to two training examples). (c-f) Illustration of running two iterations of  $k$ -means. In each iteration, we assign each training example to the closest cluster centroid (shown by "painting" the training examples the same color as the cluster centroid to which is assigned); then we move each cluster centroid to the mean of the points assigned to it. (Best viewed in color.) Images courtesy Michael Jordan.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/f49972391e00df1cb36c333a15c716c94dd3439affe803a78e2317b44188c4b8.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/7774dff5fb54c883e14a01f20fd9654bea78ff45b18012f48d9f01462557729a.jpg)

(ii) Moving each cluster centroid  $\mu_{j}$  to the mean of the points assigned to it. Figure 10.1 shows an illustration of running  $k$ -means.

Is the  $k$ -means algorithm guaranteed to converge? Yes it is, in a certain sense. In particular, let us define the distortion function to be:

$$
J (c, \mu) = \sum_{i = 1}^{n} | | x^{(i)} - \mu_{c^{(i)}} | |^{2}
$$

Thus,  $J$  measures the sum of squared distances between each training example  $x^{(i)}$  and the cluster centroid  $\mu_{c^{(i)}}$  to which it has been assigned. It can be shown that  $k$ -means is exactly coordinate descent on  $J$ . Specifically, the inner-loop of  $k$ -means repeatedly minimizes  $J$  with respect to  $c$  while holding  $\mu$  fixed, and then minimizes  $J$  with respect to  $\mu$  while holding  $c$  fixed. Thus,

$J$  must monotonically decrease, and the value of  $J$  must converge. (Usually, this implies that  $c$  and  $\mu$  will converge too. In theory, it is possible for  $k$ -means to oscillate between a few different clusterings—i.e., a few different values for  $c$  and/or  $\mu$ —that have exactly the same value of  $J$ , but this almost never happens in practice.)

The distortion function  $J$  is a non-convex function, and so coordinate descent on  $J$  is not guaranteed to converge to the global minimum. In other words,  $k$ -means can be susceptible to local optima. Very often  $k$ -means will work fine and come up with very good clusterings despite this. But if you are worried about getting stuck in bad local minima, one common thing to do is run  $k$ -means many times (using different random initial values for the cluster centroids  $\mu_j$ ). Then, out of all the different clusterings found, pick the one that gives the lowest distortion  $J(c, \mu)$ .

# Chapter 11

# EM algorithms

In this set of notes, we discuss the EM (Expectation-Maximization) algorithm for density estimation.

# 11.1 EM for mixture of Gaussians

Suppose that we are given a training set  $\{x^{(1)},\ldots ,x^{(n)}\}$  as usual. Since we are in the unsupervised learning setting, these points do not come with any labels.

We wish to model the data by specifying a joint distribution  $p(x^{(i)},z^{(i)}) = p(x^{(i)}|z^{(i)})p(z^{(i)})$ . Here,  $z^{(i)}\sim \mathrm{Multinomial}(\phi)$  (where  $\phi_j\geq 0$ ,  $\sum_{j = 1}^k\phi_j = 1$ , and the parameter  $\phi_j$  gives  $p(z^{(i)} = j)$ ), and  $x^{(i)}|z^{(i)} = j\sim \mathcal{N}(\mu_j,\Sigma_j)$ . We let  $k$  denote the number of values that the  $z^{(i)}$ 's can take on. Thus, our model posits that each  $x^{(i)}$  was generated by randomly choosing  $z^{(i)}$  from  $\{1,\ldots ,k\}$ , and then  $x^{(i)}$  was drawn from one of  $k$  Gaussians depending on  $z^{(i)}$ . This is called the mixture of Gaussians model. Also, note that the  $z^{(i)}$ 's are latent random variables, meaning that they're hidden/unobserved. This is what will make our estimation problem difficult.

The parameters of our model are thus  $\phi, \mu$  and  $\Sigma$ . To estimate them, we can write down the likelihood of our data:

$$
\begin{array}{l} \ell (\phi , \mu , \Sigma) = \sum_{i = 1}^{n} \log p (x^{(i)}; \phi , \mu , \Sigma) \\ = \sum_{i = 1}^{n} \log \sum_{z^{(i)} = 1}^{k} p (x^{(i)} | z^{(i)}; \mu , \Sigma) p (z^{(i)}; \phi). \\ \end{array}
$$

However, if we set to zero the derivatives of this formula with respect to

the parameters and try to solve, we'll find that it is not possible to find the maximum likelihood estimates of the parameters in closed form. (Try this yourself at home.)

The random variables  $z^{(i)}$  indicate which of the  $k$  Gaussians each  $x^{(i)}$  had come from. Note that if we knew what the  $z^{(i)}$ 's were, the maximum likelihood problem would have been easy. Specifically, we could then write down the likelihood as

$$
\ell (\phi , \mu , \Sigma) = \sum_{i = 1}^{n} \log p (x^{(i)} | z^{(i)}; \mu , \Sigma) + \log p (z^{(i)}; \phi).
$$

Maximizing this with respect to  $\phi$ ,  $\mu$  and  $\Sigma$  gives the parameters:

$$
\phi_{j} = \frac{1}{n} \sum_{i = 1}^{n} 1 \{z^{(i)} = j \},
$$

$$
\mu_{j} = \frac{\sum_{i = 1}^{n} 1 \{z^{(i)} = j \} x^{(i)}}{\sum_{i = 1}^{n} 1 \{z^{(i)} = j \}},
$$

$$
\Sigma_{j} = \frac{\sum_{i = 1}^{n} 1 \{z^{(i)} = j \} (x^{(i)} - \mu_{j}) (x^{(i)} - \mu_{j})^{T}}{\sum_{i = 1}^{n} 1 \{z^{(i)} = j \}}.
$$

Indeed, we see that if the  $z^{(i)}$ 's were known, then maximum likelihood estimation becomes nearly identical to what we had when estimating the parameters of the Gaussian discriminant analysis model, except that here the  $z^{(i)}$ 's playing the role of the class labels.

However, in our density estimation problem, the  $z^{(i)}$ 's are not known. What can we do?

The EM algorithm is an iterative algorithm that has two main steps. Applied to our problem, in the E-step, it tries to "guess" the values of the  $z^{(i)}$ 's. In the M-step, it updates the parameters of our model based on our guesses. Since in the M-step we are pretending that the guesses in the first part were correct, the maximization becomes easy. Here's the algorithm:

Repeat until convergence: {

(E-step) For each  $i,j$ , set

$$
w_{j}^{(i)} := p (z^{(i)} = j | x^{(i)}; \phi , \mu , \Sigma)
$$

(M-step) Update the parameters:

$$
\begin{array}{l} \phi_{j} := \frac{1}{n} \sum_{i = 1}^{n} w_{j}^{(i)}, \\ \mu_{j}   :=   \frac{\sum_{i = 1}^{n} w_{j}^{(i)} x^{(i)}}{\sum_{i = 1}^{n} w_{j}^{(i)}}, \\ \Sigma_{j} := \frac{\sum_{i = 1}^{n} w_{j}^{(i)} (x^{(i)} - \mu_{j}) (x^{(i)} - \mu_{j})^{T}}{\sum_{i = 1}^{n} w_{j}^{(i)}} \\ \end{array}
$$

}

In the E-step, we calculate the posterior probability of our parameters the  $z^{(i)}$ 's, given the  $x^{(i)}$  and using the current setting of our parameters. I.e., using Bayes rule, we obtain:

$$
p (z^{(i)} = j | x^{(i)}; \phi , \mu , \Sigma) = \frac{p (x^{(i)} | z^{(i)} = j ; \mu , \Sigma) p (z^{(i)} = j ; \phi)}{\sum_{l = 1}^{k} p (x^{(i)} | z^{(i)} = l ; \mu , \Sigma) p (z^{(i)} = l ; \phi)}
$$

Here,  $p(x^{(i)}|z^{(i)} = j;\mu ,\Sigma)$  is given by evaluating the density of a Gaussian with mean  $\mu_{j}$  and covariance  $\Sigma_{j}$  at  $x^{(i)}$ ;  $p(z^{(i)} = j;\phi)$  is given by  $\phi_j$ , and so on. The values  $w_{j}^{(i)}$  calculated in the E-step represent our "soft" guesses<sup>2</sup> for the values of  $z^{(i)}$ .

Also, you should contrast the updates in the M-step with the formulas we had when the  $z^{(i)}$ 's were known exactly. They are identical, except that instead of the indicator functions "1{z(i) = j}" indicating from which Gaussian each datapoint had come, we now instead have the  $w_{j}^{(i)}$ 's.

The EM-algorithm is also reminiscent of the K-means clustering algorithm, except that instead of the "hard" cluster assignments  $c(i)$ , we instead have the "soft" assignments  $w_j^{(i)}$ . Similar to K-means, it is also susceptible to local optima, so reinitializing at several different initial parameters may be a good idea.

It's clear that the EM algorithm has a very natural interpretation of repeatedly trying to guess the unknown  $z^{(i)}$ 's; but how did it come about, and can we make any guarantees about it, such as regarding its convergence? In the next set of notes, we will describe a more general view of EM, one

that will allow us to easily apply it to other estimation problems in which there are also latent variables, and which will allow us to give a convergence guarantee.

# 11.2 Jensen's inequality

We begin our discussion with a very useful result called Jensen's inequality

Let  $f$  be a function whose domain is the set of real numbers. Recall that  $f$  is a convex function if  $f''(x) \geq 0$  (for all  $x \in \mathbb{R}$ ). In the case of  $f$  taking vector-valued inputs, this is generalized to the condition that its hessian  $H$  is positive semi-definite ( $H \geq 0$ ). If  $f''(x) > 0$  for all  $x$ , then we say  $f$  is strictly convex (in the vector-valued case, the corresponding statement is that  $H$  must be positive definite, written  $H > 0$ ). Jensen's inequality can then be stated as follows:

Theorem. Let  $f$  be a convex function, and let  $X$  be a random variable. Then:

$$
\operatorname{E} [ f (X) ] \geq f (\operatorname{E} X).
$$

Moreover, if  $f$  is strictly convex, then  $\operatorname{E}[f(X)] = f(\operatorname{E}X)$  holds true if and only if  $X = \operatorname{E}[X]$  with probability 1 (i.e., if  $X$  is a constant).

Recall our convention of occasionally dropping the parentheses when writing expectations, so in the theorem above,  $f(\operatorname{E}X) = f(\operatorname{E}[X])$ .

For an interpretation of the theorem, consider the figure below.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/c9307b69d3ed2bb9806dfd3c16184a24e99cca0ab5f5a48b586619562247fb8c.jpg)

Here,  $f$  is a convex function shown by the solid line. Also,  $X$  is a random variable that has a 0.5 chance of taking the value  $a$ , and a 0.5 chance of

taking the value  $b$  (indicated on the  $x$ -axis). Thus, the expected value of  $X$  is given by the midpoint between  $a$  and  $b$ .

We also see the values  $f(a)$ ,  $f(b)$  and  $f(\operatorname{E}[X])$  indicated on the  $y$ -axis. Moreover, the value  $\operatorname{E}[f(X)]$  is now the midpoint on the  $y$ -axis between  $f(a)$  and  $f(b)$ . From our example, we see that because  $f$  is convex, it must be the case that  $\operatorname{E}[f(X)] \geq f(\operatorname{E}X)$ .

Incidentally, quite a lot of people have trouble remembering which way the inequality goes, and remembering a picture like this is a good way to quickly figure out the answer.

Remark. Recall that  $f$  is [strictly] concave if and only if  $-f$  is [strictly] convex (i.e.,  $f''(x) \leq 0$  or  $H \leq 0$ ). Jensen's inequality also holds for concave functions  $f$ , but with the direction of all the inequalities reversed ( $\operatorname{E}[f(X)] \leq f(\operatorname{E}X)$ , etc.).

# 11.3 General EM algorithms

Suppose we have an estimation problem in which we have a training set  $\{x^{(1)},\ldots ,x^{(n)}\}$  consisting of  $n$  independent examples. We have a latent variable model  $p(x,z;\theta)$  with  $z$  being the latent variable (which for simplicity is assumed to take finite number of values). The density for  $x$  can be obtained by marginalized over the latent variable  $z$ :

$$
p (x; \theta) = \sum_{z} p (x, z; \theta) \tag {11.1}
$$

We wish to fit the parameters  $\theta$  by maximizing the log-likelihood of the data, defined by

$$
\ell (\theta) = \sum_{i = 1}^{n} \log p \left(x^{(i)}; \theta\right) \tag {11.2}
$$

We can rewrite the objective in terms of the joint density  $p(x,z;\theta)$  by

$$
\begin{array}{l} \ell (\theta) = \sum_{i = 1}^{n} \log p \left(x^{(i)}; \theta\right) (11.3) \\ = \sum_{i = 1}^{n} \log \sum_{z^{(i)}} p \left(x^{(i)}, z^{(i)}; \theta\right). (11.4) \\ \end{array}
$$

But, explicitly finding the maximum likelihood estimates of the parameters  $\theta$  may be hard since it will result in difficult non-convex optimization prob

lems.3 Here, the  $z^{(i)}$ 's are the latent random variables; and it is often the case that if the  $z^{(i)}$ 's were observed, then maximum likelihood estimation would be easy.

In such a setting, the EM algorithm gives an efficient method for maximum likelihood estimation. Maximizing  $\ell(\theta)$  explicitly might be difficult, and our strategy will be to instead repeatedly construct a lower-bound on  $\ell$  (E-step), and then optimize that lower-bound (M-step).<sup>4</sup>

It turns out that the summation  $\sum_{i=1}^{n}$  is not essential here, and towards a simpler exposition of the EM algorithm, we will first consider optimizing the likelihood  $\log p(x)$  for a single example  $x$ . After we derive the algorithm for optimizing  $\log p(x)$ , we will convert it to an algorithm that works for  $n$  examples by adding back the sum to each of the relevant equations. Thus, now we aim to optimize  $\log p(x; \theta)$  which can be rewritten as

$$
\log p (x; \theta) = \log \sum_{z} p (x, z; \theta) \tag {11.5}
$$

Let  $Q$  be a distribution over the possible values of  $z$ . That is,  $\sum_{z} Q(z) = 1$ ,  $Q(z) \geq 0$ .

Consider the following:

$$
\begin{array}{l} \log p (x; \theta) = \log \sum_{z} p (x, z; \theta) \\ = \log \sum_{z} Q (z) \frac{p (x , z ; \theta)}{Q (z)} (11.6) \\ \geq \sum_{z} Q (z) \log \frac{p (x , z ; \theta)}{Q (z)} (11.7) \\ \end{array}
$$

The last step of this derivation used Jensen's inequality. Specifically,  $f(x) = \log x$  is a concave function, since  $f''(x) = -1 / x^2 < 0$  over its domain

$x\in \mathbb{R}^{+}$  .Also, the term

$$
\sum_{z} Q (z) \left[ \frac{p (x , z ; \theta)}{Q (z)} \right]
$$

in the summation is just an expectation of the quantity  $[p(x,z;\theta) / Q(z)]$  with respect to  $z$  drawn according to the distribution given by  $Q$ .<sup>6</sup> By Jensen's inequality, we have

$$
f \left(\operatorname{E}_{z \sim Q} \left[ \frac{p (x , z ; \theta)}{Q (z)} \right]\right) \geq \operatorname{E}_{z \sim Q} \left[ f \left(\frac{p (x , z ; \theta)}{Q (z)}\right) \right],
$$

where the “ $z \sim Q$ ” subscripts above indicate that the expectations are with respect to  $z$  drawn from  $Q$ . This allowed us to go from Equation (11.6) to Equation (11.7).

Now, for any distribution  $Q$ , the formula (11.7) gives a lower-bound on  $\log p(x; \theta)$ . There are many possible choices for the  $Q$ 's. Which should we choose? Well, if we have some current guess  $\theta$  of the parameters, it seems natural to try to make the lower-bound tight at that value of  $\theta$ . I.e., we will make the inequality above hold with equality at our particular value of  $\theta$ .

To make the bound tight for a particular value of  $\theta$ , we need for the step involving Jensen's inequality in our derivation above to hold with equality. For this to be true, we know it is sufficient that the expectation be taken over a "constant"-valued random variable. I.e., we require that

$$
\frac{p (x , z ; \theta)}{Q (z)} = c
$$

for some constant  $c$  that does not depend on  $z$ . This is easily accomplished by choosing

$$
Q (z) \propto p (x, z; \theta).
$$

Actually, since we know  $\sum_{z}Q(z) = 1$  (because it is a distribution), this further tells us that

$$
\begin{array}{l} Q (z) = \frac{p (x , z ; \theta)}{\sum_{z} p (x , z ; \theta)} \\ = \frac{p (x , z ; \theta)}{p (x ; \theta)} \\ = p (z | x; \theta) \tag {11.8} \\ \end{array}
$$

Thus, we simply set the  $Q$ 's to be the posterior distribution of the  $z$ 's given  $x$  and the setting of the parameters  $\theta$ .

Indeed, we can directly verify that when  $Q(z) = p(z|x;\theta)$ , then equation (11.7) is an equality because

$$
\begin{array}{l} \sum_{z} Q (z) \log{\frac{p (x , z ; \theta)}{Q (z)}} = \sum_{z} p (z | x; \theta) \log{\frac{p (x , z ; \theta)}{p (z | x ; \theta)}} \\ = \sum_{z} p (z | x; \theta) \log \frac{p (z | x ; \theta) p (x ; \theta)}{p (z | x ; \theta)} \\ = \sum_{z} p (z | x; \theta) \log p (x; \theta) \\ = \log p (x; \theta) \sum_{z} p (z | x; \theta) \\ = \log p (x; \theta) \qquad (\mathrm{because} \sum_{z} p (z | x; \theta) = 1) \\ \end{array}
$$

For convenience, we call the expression in Equation (11.7) the evidence lower bound (ELBO) and we denote it by

$$
\operatorname{ELBO} (x; Q, \theta) = \sum_{z} Q (z) \log \frac{p (x , z ; \theta)}{Q (z)} \tag {11.9}
$$

With this equation, we can re-write equation (11.7) as

$$
\forall Q, \theta , x, \quad \log p (x; \theta) \geq \operatorname{ELBO} (x; Q, \theta) \tag {11.10}
$$

Intuitively, the EM algorithm alternatively updates  $Q$  and  $\theta$  by a) setting  $Q(z) = p(z|x;\theta)$  following Equation (11.8) so that  $\mathrm{ELBO}(x;Q,\theta) = \log p(x;\theta)$  for  $x$  and the current  $\theta$ , and b) maximizing  $\mathrm{ELBO}(x;Q,\theta)$  w.r.t  $\theta$  while fixing the choice of  $Q$ .

Recall that all the discussion above was under the assumption that we aim to optimize the log-likelihood  $\log p(x;\theta)$  for a single example  $x$ . It turns out that with multiple training examples, the basic idea is the same and we only needs to take a sum over examples at relevant places. Next, we will build the evidence lower bound for multiple training examples and make the EM algorithm formal.

Recall we have a training set  $\{x^{(1)},\ldots ,x^{(n)}\}$ . Note that the optimal choice of  $Q$  is  $p(z|x;\theta)$ , and it depends on the particular example  $x$ . Therefore here we will introduce  $n$  distributions  $Q_{1},\ldots ,Q_{n}$ , one for each example  $x^{(i)}$ . For each example  $x^{(i)}$ , we can build the evidence lower bound

$$
\log p (x^{(i)}; \theta) \geq \operatorname{ELBO} (x^{(i)}; Q_{i}, \theta) = \sum_{z^{(i)}} Q_{i} (z^{(i)}) \log \frac{p (x^{(i)} , z^{(i)} ; \theta)}{Q_{i} (z^{(i)})}
$$

Taking sum over all the examples, we obtain a lower bound for the log-likelihood

$$
\begin{array}{l} \ell (\theta) \geq \sum_{i} \operatorname{ELBO} \left(x^{(i)}; Q_{i}, \theta\right) \tag {11.11} \\ = \sum_{i} \sum_{z^{(i)}} Q_{i} (z^{(i)}) \log \frac{p (x^{(i)} , z^{(i)} ; \theta)}{Q_{i} (z^{(i)})} \\ \end{array}
$$

For any set of distributions  $Q_{1}, \ldots, Q_{n}$ , the formula (11.11) gives a lower-bound on  $\ell(\theta)$ , and analogous to the argument around equation (11.8), the  $Q_{i}$  that attains equality satisfies

$$
{Q_{i} (z^{(i)})} = {p (z^{(i)} | x^{(i)}; \theta)}
$$

Thus, we simply set the  $Q_{i}$ 's to be the posterior distribution of the  $z^{(i)}$ 's given  $x^{(i)}$  with the current setting of the parameters  $\theta$ .

Now, for this choice of the  $Q_{i}$ 's, Equation (11.11) gives a lower-bound on the loglikelihood  $\ell$  that we're trying to maximize. This is the E-step. In the M-step of the algorithm, we then maximize our formula in Equation (11.11) with respect to the parameters to obtain a new setting of the  $\theta$ 's. Repeatedly carrying out these two steps gives us the EM algorithm, which is as follows:

Repeat until convergence {

(E-step) For each  $i$ , set

$$
Q_{i} (z^{(i)}) := p (z^{(i)} | x^{(i)}; \theta).
$$

(M-step) Set

$$
\begin{array}{l} \theta := \arg \max_{\theta} \sum_{i = 1}^{n} \mathrm{ELBO} (x^{(i)}; Q_{i}, \theta) \\ = \arg \max_{\theta} \sum_{i} \sum_{z^{(i)}} Q_{i} \left(z^{(i)}\right) \log \frac{p \left(x^{(i)} , z^{(i)} ; \theta\right)}{Q_{i} \left(z^{(i)}\right)}. \tag {11.12} \\ \end{array}
$$

}

How do we know if this algorithm will converge? Well, suppose  $\theta^{(t)}$  and  $\theta^{(t + 1)}$  are the parameters from two successive iterations of EM. We will now prove that  $\ell (\theta^{(t)})\leq \ell (\theta^{(t + 1)})$ , which shows EM always monotonically improves the log-likelihood. The key to showing this result lies in our choice of

the  $Q_{i}$ 's. Specifically, on the iteration of EM in which the parameters had started out as  $\theta^{(t)}$ , we would have chosen  $Q_{i}^{(t)}(z^{(i)}) := p(z^{(i)}|x^{(i)};\theta^{(t)})$ . We saw earlier that this choice ensures that Jensen's inequality, as applied to get Equation (11.11), holds with equality, and hence

$$
\ell \left(\theta^{(t)}\right) = \sum_{i = 1}^{n} \operatorname{ELBO} \left(x^{(i)}; Q_{i}^{(t)}, \theta^{(t)}\right) \tag {11.13}
$$

The parameters  $\theta^{(t + 1)}$  are then obtained by maximizing the right hand side of the equation above. Thus,

$$
\ell (\theta^{(t + 1)}) \geq \sum_{i = 1}^{n} \operatorname{ELBO} (x^{(i)}; Q_{i}^{(t)}, \theta^{(t + 1)})
$$

(because inequality (11.11) holds for all  $Q$  and  $\theta$ )

$$
\geq \sum_{i = 1}^{n} \operatorname{ELBO} (x^{(i)}; Q_{i}^{(t)}, \theta^{(t)}) \quad (\mathrm{seereasonbelow})
$$

$$
= \ell (\theta^{(t)}) \qquad \mathrm{(byequation (11 .13))}
$$

where the last inequality follows from that  $\theta^{(t + 1)}$  is chosen explicitly to be

$$
\arg \max_{\theta} \sum_{i = 1}^{n} \mathrm{ELBO} (x^{(i)}; Q_{i}^{(t)}, \theta)
$$

Hence, EM causes the likelihood to converge monotonically. In our description of the EM algorithm, we said we'd run it until convergence. Given the result that we just showed, one reasonable convergence test would be to check if the increase in  $\ell(\theta)$  between successive iterations is smaller than some tolerance parameter, and to declare convergence if EM is improving  $\ell(\theta)$  too slowly.

Remark. If we define (by overloading  $\mathrm{ELBO}(\cdot)$ )

$$
\operatorname{ELBO} (Q, \theta) = \sum_{i = 1}^{n} \operatorname{ELBO} \left(x^{(i)}; Q_{i}, \theta\right) = \sum_{i} \sum_{z^{(i)}} Q_{i} \left(z^{(i)}\right) \log \frac{p \left(x^{(i)} , z^{(i)} ; \theta\right)}{Q_{i} \left(z^{(i)}\right)} \tag {11.14}
$$

then we know  $\ell(\theta) \geq \operatorname{ELBO}(Q, \theta)$  from our previous derivation. The EM can also be viewed as an alternating maximization algorithm on  $\operatorname{ELBO}(Q, \theta)$ , in which the E-step maximizes it with respect to  $Q$  (check this yourself), and the M-step maximizes it with respect to  $\theta$ .

# 11.3.1 Other interpretation of ELBO

Let  $\mathrm{ELBO}(x;Q,\theta) = \sum_{z}Q(z)\log \frac{p(x,z;\theta)}{Q(z)}$  be defined as in equation (11.9). There are several other forms of ELBO. First, we can rewrite

$$
\begin{array}{l} \operatorname{ELBO} (x; Q, \theta) = \operatorname{E}_{z \sim Q} [ \log p (x, z; \theta) ] - \operatorname{E}_{z \sim Q} [ \log Q (z) ] \\ = \mathrm{E}_{z \sim Q} [ \log p (x | z; \theta) ] - D_{K L} (Q \| p_{z}) \tag {11.15} \\ \end{array}
$$

where we use  $p_z$  to denote the marginal distribution of  $z$  (under the distribution  $p(x,z;\theta)$ ), and  $D_{KL}()$  denotes the KL divergence

$$
D_{K L} (Q \| p_{z}) = \sum_{z} Q (z) \log \frac{Q (z)}{p (z)} \tag {11.16}
$$

In many cases, the marginal distribution of  $z$  does not depend on the parameter  $\theta$ . In this case, we can see that maximizing ELBO over  $\theta$  is equivalent to maximizing the first term in (11.15). This corresponds to maximizing the conditional likelihood of  $x$  conditioned on  $z$ , which is often a simpler question than the original question.

Another form of  $\mathrm{ELBO}(\cdot)$  is (please verify yourself)

$$
\operatorname{ELBO} (x; Q, \theta) = \log p (x) - D_{K L} (Q \| p_{z | x}) \tag {11.17}
$$

where  $p_{z|x}$  is the conditional distribution of  $z$  given  $x$  under the parameter  $\theta$ . This forms shows that the maximizer of  $\mathrm{ELBO}(Q, \theta)$  over  $Q$  is obtained when  $Q = p_{z|x}$ , which was shown in equation (11.8) before.

# 11.4 Mixture of Gaussians revisited

Armed with our general definition of the EM algorithm, let's go back to our old example of fitting the parameters  $\phi$ ,  $\mu$  and  $\Sigma$  in a mixture of Gaussians. For the sake of brevity, we carry out the derivations for the M-step updates only for  $\phi$  and  $\mu_j$ , and leave the updates for  $\Sigma_j$  as an exercise for the reader.

The E-step is easy. Following our algorithm derivation above, we simply calculate

$$
w_{j}^{(i)} = Q_{i} (z^{(i)} = j) = P (z^{(i)} = j | x^{(i)}; \phi , \mu , \Sigma).
$$

Here, “ $Q_{i}(z^{(i)} = j)$ ” denotes the probability of  $z^{(i)}$  taking the value  $j$  under the distribution  $Q_{i}$ .

Next, in the M-step, we need to maximize, with respect to our parameters  $\phi, \mu, \Sigma$ , the quantity

$$
\begin{array}{l} \sum_{i = 1}^{n} \sum_{z^{(i)}} Q_{i} (z^{(i)}) \log \frac{p (x^{(i)} , z^{(i)} ; \phi , \mu , \Sigma)}{Q_{i} (z^{(i)})} \\ = \sum_{i = 1}^{n} \sum_{j = 1}^{k} Q_{i} (z^{(i)} = j) \log \frac{p (x^{(i)} | z^{(i)} = j ; \mu , \Sigma) p (z^{(i)} = j ; \phi)}{Q_{i} (z^{(i)} = j)} \\ = \sum_{i = 1}^{n} \sum_{j = 1}^{k} w_{j}^{(i)} \log \frac{\frac{1}{(2 \pi)^{d / 2} | \Sigma_{j} |^{1 / 2}} \exp \left(- \frac{1}{2} (x^{(i)} - \mu_{j})^{T} \Sigma_{j}^{- 1} (x^{(i)} - \mu_{j})\right) \cdot \phi_{j}}{w_{j}^{(i)}} \\ \end{array}
$$

Let's maximize this with respect to  $\mu_{l}$ . If we take the derivative with respect to  $\mu_{l}$ , we find

$$
\begin{array}{l} \nabla_{\mu_{l}} \sum_{i = 1}^{n} \sum_{j = 1}^{k} w_{j}^{(i)} \log \frac{\frac{1}{(2 \pi)^{d / 2} | \Sigma_{j} |^{1 / 2}} \exp \left(- \frac{1}{2} (x^{(i)} - \mu_{j})^{T} \Sigma_{j}^{- 1} (x^{(i)} - \mu_{j})\right) \cdot \phi_{j}}{w_{j}^{(i)}} \\ { = } { - \nabla_{ \mu_{ l } } \sum_{ i = 1 }^{ n } \sum_{ j = 1 }^{ k } w_{ j }^{ ( i ) } \frac{ 1 } { 2 } ( x^{ ( i ) } - \mu_{ j } )^{ T } \Sigma_{ j }^{ - 1 } ( x^{ ( i ) } - \mu_{ j } ) } \\ { = } { \frac{ 1 } { 2 } \sum_{ i = 1 }^{ n } w_{ l }^{ ( i ) } \nabla_{ \mu_{ l } } 2 \mu_{ l }^{ T } \Sigma_{ l }^{ - 1 } x^{ ( i ) } - \mu_{ l }^{ T } \Sigma_{ l }^{ - 1 } \mu_{ l } } \\ = \sum_{i = 1}^{n} w_{l}^{(i)} \left(\Sigma_{l}^{- 1} x^{(i)} - \Sigma_{l}^{- 1} \mu_{l}\right) \\ \end{array}
$$

Setting this to zero and solving for  $\mu_{l}$  therefore yields the update rule

$$
\mu_{l} := \frac{\sum_{i = 1}^{n} w_{l}^{(i)} x^{(i)}}{\sum_{i = 1}^{n} w_{l}^{(i)}},
$$

which was what we had in the previous set of notes.

Let's do one more example, and derive the M-step update for the parameters  $\phi_j$ . Grouping together only the terms that depend on  $\phi_j$ , we find that we need to maximize

$$
\sum_{i = 1}^{n} \sum_{j = 1}^{k} w_{j}^{(i)} \log \phi_{j}.
$$

However, there is an additional constraint that the  $\phi_j$ 's sum to 1, since they represent the probabilities  $\phi_j = p(z^{(i)} = j; \phi)$ . To deal with the constraint

that  $\sum_{j=1}^{k} \phi_{j} = 1$ , we construct the Lagrangian

$$
\mathcal {L} (\phi) = \sum_{i = 1}^{n} \sum_{j = 1}^{k} w_{j}^{(i)} \log \phi_{j} + \beta \left(\sum_{j = 1}^{k} \phi_{j} - 1\right),
$$

where  $\beta$  is the Lagrange multiplier.7 Taking derivatives, we find

$$
\frac{\partial}{\partial \phi_{j}} \mathcal {L} (\phi) = \sum_{i = 1}^{n} \frac{w_{j}^{(i)}}{\phi_{j}} + \beta
$$

Setting this to zero and solving, we get

$$
\phi_{j} = \frac{\sum_{i = 1}^{n} w_{j}^{(i)}}{- \beta}
$$

I.e.,  $\phi_j \propto \sum_{i=1}^n w_j^{(i)}$ . Using the constraint that  $\sum_j \phi_j = 1$ , we easily find that  $-\beta = \sum_{i=1}^n \sum_{j=1}^k w_j^{(i)} = \sum_{i=1}^n 1 = n$ . (This used the fact that  $w_j^{(i)} = Q_i(z^{(i)} = j)$ , and since probabilities sum to 1,  $\sum_j w_j^{(i)} = 1$ .) We therefore have our M-step updates for the parameters  $\phi_j$ :

$$
\phi_{j} := \frac{1}{n} \sum_{i = 1}^{n} w_{j}^{(i)}.
$$

The derivation for the M-step updates to  $\Sigma_{j}$  are also entirely straightforward.

# 11.5 Variational inference and variational auto-encoder (optional reading)

Loosely speaking, variational auto-encoder Kingma and Welling [2013] generally refers to a family of algorithms that extend the EM algorithms to more complex models parameterized by neural networks. It extends the technique of variational inference with the additional "re-parametrization trick" which will be introduced below. Variational auto-encoder may not give the best performance for many datasets, but it contains several central ideas about how to extend EM algorithms to high-dimensional continuous latent variables

with non-linear models. Understanding it will likely give you the language and backgrounds to understand various recent papers related to it.

As a running example, we will consider the following parameterization of  $p(x,z;\theta)$  by a neural network. Let  $\theta$  be the collection of the weights of a neural network  $g(z;\theta)$  that maps  $z\in \mathbb{R}^k$  to  $\mathbb{R}^d$ . Let

$$
z \sim \mathcal {N} (0, I_{k \times k}) \tag {11.18}
$$

$$
x \mid z \sim \mathcal {N} (g (z; \theta), \sigma^{2} I_{d \times d}) \tag {11.19}
$$

Here  $I_{k \times k}$  denotes identity matrix of dimension  $k$  by  $k$ , and  $\sigma$  is a scalar that we assume to be known for simplicity.

For the Gaussian mixture models in Section 11.4, the optimal choice of  $Q(z) = p(z|x;\theta)$  for each fixed  $\theta$ , that is the posterior distribution of  $z$ , can be analytically computed. In many more complex models such as the model (11.19), it's intractable to compute the exact the posterior distribution  $p(z|x;\theta)$ .

Recall that from equation (11.10), ELBO is always a lower bound for any choice of  $Q$ , and therefore, we can also aim for finding an approximation of the true posterior distribution. Often, one has to use some particular form to approximate the true posterior distribution. Let  $\mathcal{Q}$  be a family of  $Q$ 's that we are considering, and we will aim to find a  $Q$  within the family of  $\mathcal{Q}$  that is closest to the true posterior distribution. To formalize, recall the definition of the ELBO lower bound as a function of  $Q$  and  $\theta$  defined in equation (11.14)

$$
\operatorname{ELBO} (Q, \theta) = \sum_{i = 1}^{n} \operatorname{ELBO} (x^{(i)}; Q_{i}, \theta) = \sum_{i} \sum_{z^{(i)}} Q_{i} (z^{(i)}) \log{\frac{p (x^{(i)} , z^{(i)} ; \theta)}{Q_{i} (z^{(i)})}}
$$

Recall that EM can be viewed as alternating maximization of  $\operatorname{ELBO}(Q, \theta)$ . Here instead, we optimize the EBLO over  $Q \in \mathcal{Q}$

$$
\max_{Q \in \mathcal {Q}} \max_{\theta} \operatorname{ELBO} (Q, \theta) \tag {11.20}
$$

Now the next question is what form of  $Q$  (or what structural assumptions to make about  $Q$ ) allows us to efficiently maximize the objective above. When the latent variable  $z$  are high-dimensional discrete variables, one popular assumption is the mean field assumption, which assumes that  $Q_{i}(z)$  gives a distribution with independent coordinates, or in other words,  $Q_{i}$  can be decomposed into  $Q_{i}(z) = Q_{i}^{1}(z_{1})\dots Q_{i}^{k}(z_{k})$ . There are tremendous applications of mean field assumptions to learning generative models with discrete latent variables, and we refer to Blei et al. [2017] for a survey of these models and

their impact to a wide range of applications including computational biology, computational neuroscience, social sciences. We will not get into the details about the discrete latent variable cases, and our main focus is to deal with continuous latent variables, which requires not only mean field assumptions, but additional techniques.

When  $z \in \mathbb{R}^k$  is a continuous latent variable, there are several decisions to make towards successfully optimizing (11.20). First we need to give a succinct representation of the distribution  $Q_{i}$  because it is over an infinite number of points. A natural choice is to assume  $Q_{i}$  is a Gaussian distribution with some mean and variance. We would also like to have more succinct representation of the means of  $Q_{i}$  of all the examples. Note that  $Q_{i}(z^{(i)})$  is supposed to approximate  $p(z^{(i)}|x^{(i)};\theta)$ . It would make sense let all the means of the  $Q_{i}$ 's be some function of  $x^{(i)}$ . Concretely, let  $q(\cdot ;\phi), v(\cdot ;\phi)$  be two functions that map from dimension  $d$  to  $k$ , which are parameterized by  $\phi$  and  $\psi$ , we assume that

$$
Q_{i} = \mathcal {N} \left(q \left(x^{(i)}; \phi\right), \operatorname{diag} \left(v \left(x^{(i)}; \psi\right)\right)^{2}\right) \tag {11.21}
$$

Here  $\mathrm{diag}(w)$  means the  $k\times k$  matrix with the entries of  $w\in \mathbb{R}^k$  on the diagonal. In other words, the distribution  $Q_{i}$  is assumed to be a Gaussian distribution with independent coordinates, and the mean and standard deviations are governed by  $q$  and  $v$ . Often in variational auto-encoder,  $q$  and  $v$  are chosen to be neural networks. In recent deep learning literature, often  $q,v$  are called encoder (in the sense of encoding the data into latent code), whereas  $g(z;\theta)$  if often referred to as the decoder.

We remark that  $Q_{i}$  of such form in many cases are very far from a good approximation of the true posterior distribution. However, some approximation is necessary for feasible optimization. In fact, the form of  $Q_{i}$  needs to satisfy other requirements (which happened to be satisfied by the form (11.21))

Before optimizing the ELBO, let's first verify whether we can efficiently evaluate the value of the ELBO for fixed  $Q$  of the form (11.21) and  $\theta$ . We rewrite the ELBO as a function of  $\phi, \psi, \theta$  by

$$
\operatorname{ELBO} (\phi , \psi , \theta) = \sum_{i = 1}^{n} \operatorname{E}_{z^{(i)} \sim Q_{i}} \left[ \log \frac{p \left(x^{(i)} , z^{(i)} ; \theta\right)}{Q_{i} \left(z^{(i)}\right)} \right], \tag {11.22}
$$

$$
\text{where} Q_{i} = \mathcal {N} (q (x^{(i)}; \phi), \operatorname{diag} (v (x^{(i)}; \psi))^{2})
$$

Note that to evaluate  $Q_{i}(z^{(i)})$  inside the expectation, we should be able to compute the density of  $Q_{i}$ . To estimate the expectation  $\mathrm{E}_{z^{(i)}\sim Q_i}$ , we

should be able to sample from distribution  $Q_{i}$  so that we can build an empirical estimator with samples. It happens that for Gaussian distribution  $Q_{i} = \mathcal{N}(q(x^{(i)};\phi),\mathrm{diag}(v(x^{(i)};\psi))^{2})$ , we are able to be both efficiently.

Now let's optimize the ELBO. It turns out that we can run gradient ascent over  $\phi, \psi, \theta$  instead of alternating maximization. There is no strong need to compute the maximum over each variable at a much greater cost. (For Gaussian mixture model in Section 11.4, computing the maximum is analytically feasible and relatively cheap, and therefore we did alternating maximization.) Mathematically, let  $\eta$  be the learning rate, the gradient ascent step is

$$
\theta := \theta + \eta \nabla_{\theta} \operatorname{ELBO} (\phi , \psi , \theta)
$$

$$
\phi := \phi + \eta \nabla_{\phi} \operatorname{ELBO} (\phi , \psi , \theta)
$$

$$
\psi := \psi + \eta \nabla_{\psi} \operatorname{ELBO} (\phi , \psi , \theta)
$$

Computing the gradient over  $\theta$  is simple because

$$
\begin{array}{l} \nabla_{\theta} \mathrm{ELBO} (\phi , \psi , \theta) = \nabla_{\theta} \sum_{i = 1}^{n} \mathrm{E}_{z^{(i)} \sim Q_{i}} \left[ \log \frac{p (x^{(i)} , z^{(i)} ; \theta)}{Q_{i} (z^{(i)})} \right] \\ = \nabla_{\theta} \sum_{i = 1}^{n} \operatorname{E}_{z^{(i)} \sim Q_{i}} \left[ \log p \left(x^{(i)}, z^{(i)}; \theta\right) \right] \\ = \sum_{i = 1}^{n} \mathrm{E}_{z^{(i)} \sim Q_{i}} \left[ \nabla_{\theta} \log p \left(x^{(i)}, z^{(i)}; \theta\right) \right], \tag {11.23} \\ \end{array}
$$

But computing the gradient over  $\phi$  and  $\psi$  is tricky because the sampling distribution  $Q_{i}$  depends on  $\phi$  and  $\psi$ . (Abstractly speaking, the issue we face can be simplified as the problem of computing the gradient  $\mathrm{E}_{z\sim Q_{\phi}}[f(\phi)]$  with respect to variable  $\phi$ . We know that in general,  $\nabla \mathrm{E}_{z\sim Q_{\phi}}[f(\phi)] \neq \mathrm{E}_{z\sim Q_{\phi}}[\nabla f(\phi)]$  because the dependency of  $Q_{\phi}$  on  $\phi$  has to be taken into account as well.)

The idea that comes to rescue is the so-called re-parameterization trick: we rewrite  $z^{(i)}\sim Q_i = \mathcal{N}(q(x^{(i)};\phi),\mathrm{diag}(v(x^{(i)};\psi))^2)$  in an equivalent way:

$$
z^{(i)} = q \left(x^{(i)}; \phi\right) + v \left(x^{(i)}; \psi\right) \odot \xi^{(i)} \text{where} \xi^{(i)} \sim \mathcal {N} \left(0, I_{k \times k}\right) \tag {11.24}
$$

Here  $x \odot y$  denotes the entry-wise product of two vectors of the same dimension. Here we used the fact that  $x \sim N(\mu, \sigma^2)$  is equivalent to that  $x = \mu + \xi \sigma$  with  $\xi \sim N(0,1)$ . We mostly just used this fact in every dimension simultaneously for the random variable  $z^{(i)} \sim Q_i$ .

With this re-parameterization, we have that

$$
\begin{array}{l} \mathrm{E}_{z^{(i)} \sim Q_{i}} \left[ \log \frac{p \left(x^{(i)} , z^{(i)} ; \theta\right)}{Q_{i} \left(z^{(i)}\right)} \right] \tag {11.25} \\ = \operatorname{E}_{\xi^{(i)} \sim \mathcal {N} (0, 1)} \left[ \log \frac{p \left(x^{(i)} , q \left(x^{(i)} ; \phi\right) + v \left(x^{(i)} ; \psi\right) \odot \xi^{(i)} ; \theta\right)}{Q_{i} \left(q \left(x^{(i)} ; \phi\right) + v \left(x^{(i)} ; \psi\right) \odot \xi^{(i)}\right)} \right] \\ \end{array}
$$

It follows that

$$
\begin{array}{l} \nabla_{\phi} \mathrm{E}_{z^{(i)} \sim Q_{i}} \left[ \log \frac{p (x^{(i)} , z^{(i)} ; \theta)}{Q_{i} (z^{(i)})} \right] \\ = \nabla_{\phi} \mathrm{E}_{\xi^{(i)} \sim \mathcal {N} (0, 1)} \left[ \log \frac{p \left(x^{(i)} , q \left(x^{(i)} ; \phi\right) + v \left(x^{(i)} ; \psi\right) \odot \xi^{(i)} ; \theta\right)}{Q_{i} \left(q \left(x^{(i)} ; \phi\right) + v \left(x^{(i)} ; \psi\right) \odot \xi^{(i)}\right)} \right] \\ = \mathrm{E}_{\xi^{(i)} \sim \mathcal {N} (0, 1)} \left[ \nabla_{\phi} \log \frac{p \left(x^{(i)} , q \left(x^{(i)} ; \phi\right) + v \left(x^{(i)} ; \psi\right) \odot \xi^{(i)} ; \theta\right)}{Q_{i} \left(q \left(x^{(i)} ; \phi\right) + v \left(x^{(i)} ; \psi\right) \odot \xi^{(i)}\right)} \right] \\ \end{array}
$$

We can now sample multiple copies of  $\xi^{(i)}$ 's to estimate the expectation in the RHS of the equation above. We can estimate the gradient with respect to  $\psi$  similarly, and with these, we can implement the gradient ascent algorithm to optimize the ELBO over  $\phi, \psi, \theta$ .

There are not many high-dimensional distributions with analytically computable density function are known to be re-parameterizable. We refer to Kingma and Welling [2013] for a few other choices that can replace Gaussian distribution.

# Chapter 12

# Principal components analysis

In this set of notes, we will develop a method, Principal Components Analysis (PCA), that tries to identify the subspace in which the data approximately lies. PCA is computationally efficient: it will require only an eigenvector calculation (easily done with the eig function in Matlab).

Suppose we are given a dataset  $\{x^{(i)}; i = 1, \dots, n\}$  of attributes of  $n$  different types of automobiles, such as their maximum speed, turn radius, and so on. Let  $x^{(i)} \in \mathbb{R}^d$  for each  $i$  ( $d \ll n$ ). But unknown to us, two different attributes—some  $x_i$  and  $x_j$ —respectively give a car's maximum speed measured in miles per hour, and the maximum speed measured in kilometers per hour. These two attributes are therefore almost linearly dependent, up to only small differences introduced by rounding off to the nearest mph or kph. Thus, the data really lies approximately on an  $n - 1$  dimensional subspace. How can we automatically detect, and perhaps remove, this redundancy?

For a less contrived example, consider a dataset resulting from a survey of pilots for radio-controlled helicopters, where  $x_{1}^{(i)}$  is a measure of the piloting skill of pilot  $i$ , and  $x_{2}^{(i)}$  captures how much he/she enjoys flying. Because RC helicopters are very difficult to fly, only the most committed students, ones that truly enjoy flying, become good pilots. So, the two attributes  $x_{1}$  and  $x_{2}$  are strongly correlated. Indeed, we might posit that that the data actually likes along some diagonal axis (the  $u_{1}$  direction) capturing the intrinsic piloting "karma" of a person, with only a small amount of noise lying off this axis. (See figure.) How can we automatically compute this  $u_{1}$  direction?

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/158858c5711788cf2e9695b82adc240b1ab8795162e52bdce1edf47c26415dab.jpg)

We will shortly develop the PCA algorithm. But prior to running PCA per se, typically we first preprocess the data by normalizing each feature to have mean 0 and variance 1. We do this by subtracting the mean and dividing by the empirical standard deviation:

$$
x_{j}^{(i)} \gets \frac{x_{j}^{(i)} - \mu_{j}}{\sigma_{j}}
$$

where  $\mu_{j} = \frac{1}{n}\sum_{i = 1}^{n}x_{j}^{(i)}$  and  $\sigma_j^2 = \frac{1}{n}\sum_{i = 1}^{n}(x_j^{(i)} - \mu_j)^2$  are the mean variance of feature  $j$ , respectively.

Subtracting  $\mu_{j}$  zeros out the mean and may be omitted for data known to have zero mean (for instance, time series corresponding to speech or other acoustic signals). Dividing by the standard deviation  $\sigma_{j}$  rescales each coordinate to have unit variance, which ensures that different attributes are all treated on the same "scale." For instance, if  $x_{1}$  was cars' maximum speed in mph (taking values in the high tens or low hundreds) and  $x_{2}$  were the number of seats (taking values around 2-4), then this renormalization rescales the different attributes to make them more comparable. This rescaling may be omitted if we had a priori knowledge that the different attributes are all on the same scale. One example of this is if each data point represented a grayscale image, and each  $x_{j}^{(i)}$  took a value in  $\{0,1,\ldots ,255\}$  corresponding to the intensity value of pixel  $j$  in image  $i$ .

Now, having normalized our data, how do we compute the "major axis of variation"  $u$  — that is, the direction on which the data approximately lies? One way is to pose this problem as finding the unit vector  $u$  so that when

the data is projected onto the direction corresponding to  $u$ , the variance of the projected data is maximized. Intuitively, the data starts off with some amount of variance/information in it. We would like to choose a direction  $u$  so that if we were to approximate the data as lying in the direction/subspace corresponding to  $u$ , as much as possible of this variance is still retained.

Consider the following dataset, on which we have already carried out the normalization steps:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/2c0d50e1d10f29ef8c627d4981cee6c22da4bd478a714ffdd80146d7eac24612.jpg)

Now, suppose we pick  $u$  to correspond the direction shown in the figure below. The circles denote the projections of the original data onto this line.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/12b1ec784d54d714c972c588bcfc82d39b53397930e959d8af225967b7357873.jpg)

We see that the projected data still has a fairly large variance, and the points tend to be far from zero. In contrast, suppose had instead picked the following direction:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/aaae7369ded672866b4681af6069cade84d528d9c31b9da5749001758f73ad0e.jpg)

Here, the projections have a significantly smaller variance, and are much closer to the origin.

We would like to automatically select the direction  $u$  corresponding to the first of the two figures shown above. To formalize this, note that given a

unit vector  $u$  and a point  $x$ , the length of the projection of  $x$  onto  $u$  is given by  $x^T u$ . I.e., if  $x^{(i)}$  is a point in our dataset (one of the crosses in the plot), then its projection onto  $u$  (the corresponding circle in the figure) is distance  $x^T u$  from the origin. Hence, to maximize the variance of the projections, we would like to choose a unit-length  $u$  so as to maximize:

$$
\begin{array}{l} \frac{1}{n} \sum_{i = 1}^{n} (x^{(i)^{T}} u)^{2} = \frac{1}{n} \sum_{i = 1}^{n} u^{T} x^{(i)} x^{(i)^{T}} u \\ = u^{T} \left(\frac{1}{n} \sum_{i = 1}^{n} x^{(i)} x^{(i)^{T}}\right) u. \\ \end{array}
$$

We easily recognize that the maximizing this subject to  $\| u\| _2 = 1$  gives the principal eigenvector of  $\Sigma = \frac{1}{n}\sum_{i = 1}^{n}x^{(i)}x^{(i)^T}$ , which is just the empirical covariance matrix of the data (assuming it has zero mean).<sup>1</sup>

To summarize, we have found that if we wish to find a 1-dimensional subspace with width to approximate the data, we should choose  $u$  to be the principal eigenvector of  $\Sigma$ . More generally, if we wish to project our data into a  $k$ -dimensional subspace ( $k < d$ ), we should choose  $u_1, \ldots, u_k$  to be the top  $k$  eigenvectors of  $\Sigma$ . The  $u_i$ 's now form a new, orthogonal basis for the data.

Then, to represent  $x^{(i)}$  in this basis, we need only compute the corresponding vector

$$
y^{(i)} = \left[ \begin{array}{c} u_{1}^{T} x^{(i)} \\ u_{2}^{T} x^{(i)} \\ \vdots \\ u_{k}^{T} x^{(i)} \end{array} \right] \in \mathbb {R}^{k}.
$$

Thus, whereas  $x^{(i)} \in \mathbb{R}^d$ , the vector  $y^{(i)}$  now gives a lower,  $k$ -dimensional, approximation/representation for  $x^{(i)}$ . PCA is therefore also referred to as a dimensionality reduction algorithm. The vectors  $u_1, \ldots, u_k$  are called the first  $k$  principal components of the data.

Remark. Although we have shown it formally only for the case of  $k = 1$ , using well-known properties of eigenvectors it is straightforward to show that

of all possible orthogonal bases  $u_1, \ldots, u_k$ , the one that we have chosen maximizes  $\sum_{i} \| y^{(i)} \|_2^2$ . Thus, our choice of a basis preserves as much variability as possible in the original data.

PCA can also be derived by picking the basis that minimizes the approximation error arising from projecting the data onto the  $k$ -dimensional subspace spanned by them. (See more in homework.)

PCA has many applications; we will close our discussion with a few examples. First, compression—representing  $x^{(i)}$ 's with lower dimension  $y^{(i)}$ 's—is an obvious application. If we reduce high dimensional data to  $k = 2$  or 3 dimensions, then we can also plot the  $y^{(i)}$ 's to visualize the data. For instance, if we were to reduce our automobiles data to 2 dimensions, then we can plot it (one point in our plot would correspond to one car type, say) to see what cars are similar to each other and what groups of cars may cluster together.

Another standard application is to preprocess a dataset to reduce its dimension before running a supervised learning learning algorithm with the  $x^{(i)}$ 's as inputs. Apart from computational benefits, reducing the data's dimension can also reduce the complexity of the hypothesis class considered and help avoid overfitting (e.g., linear classifiers over lower dimensional input spaces will have smaller VC dimension).

Lastly, as in our RC pilot example, we can also view PCA as a noise reduction algorithm. In our example it, estimates the intrinsic "piloting karma" from the noisy measures of piloting skill and enjoyment. In class, we also saw the application of this idea to face images, resulting in eigenfaces method. Here, each point  $x^{(i)} \in \mathbb{R}^{100 \times 100}$  was a 10000 dimensional vector, with each coordinate corresponding to a pixel intensity value in a 100x100 image of a face. Using PCA, we represent each image  $x^{(i)}$  with a much lower-dimensional  $y^{(i)}$ . In doing so, we hope that the principal components we found retain the interesting, systematic variations between faces that capture what a person really looks like, but not the "noise" in the images introduced by minor lighting variations, slightly different imaging conditions, and so on. We then measure distances between faces  $i$  and  $j$  by working in the reduced dimension, and computing  $\| y^{(i)} - y^{(j)} \|_2$ . This resulted in a surprisingly good face-matching and retrieval algorithm.

# Chapter 13

# Independent components analysis

Our next topic is Independent Components Analysis (ICA). Similar to PCA, this will find a new basis in which to represent our data. However, the goal is very different.

As a motivating example, consider the "cocktail party problem." Here,  $d$  speakers are speaking simultaneously at a party, and any microphone placed in the room records only an overlapping combination of the  $d$  speakers' voices. But let's say we have  $d$  different microphones placed in the room, and because each microphone is a different distance from each of the speakers, it records a different combination of the speakers' voices. Using these microphone recordings, can we separate out the original  $d$  speakers' speech signals?

To formalize this problem, we imagine that there is some data  $s \in \mathbb{R}^d$  that is generated via  $d$  independent sources. What we observe is

$$
x = A s,
$$

where  $A$  is an unknown square matrix called the mixing matrix. Repeated observations give us a dataset  $\{x^{(i)}; i = 1, \dots, n\}$ , and our goal is to recover the sources  $s^{(i)}$  that had generated our data  $(x^{(i)} = As^{(i)})$ .

In our cocktail party problem,  $s^{(i)}$  is an  $d$ -dimensional vector, and  $s_j^{(i)}$  is the sound that speaker  $j$  was uttering at time  $i$ . Also,  $x^{(i)}$  in an  $d$ -dimensional vector, and  $x_j^{(i)}$  is the acoustic reading recorded by microphone  $j$  at time  $i$ .

Let  $W = A^{-1}$  be the unmixing matrix. Our goal is to find  $W$ , so that given our microphone recordings  $x^{(i)}$ , we can recover the sources by computing  $s^{(i)} = Wx^{(i)}$ . For notational convenience, we also let  $w_{i}^{T}$  denote

the  $i$ -th row of  $W$ , so that

$$
W = \left[ \begin{array}{c} - w_{1}^{T} - \\ \vdots \\ - w_{d}^{T} - \end{array} \right].
$$

Thus,  $w_{i}\in \mathbb{R}^{d}$ , and the  $j$ -th source can be recovered as  $s_j^{(i)} = w_j^T x^{(i)}$ .

# 13.1 ICA ambiguities

To what degree can  $W = A^{-1}$  be recovered? If we have no prior knowledge about the sources and the mixing matrix, it is easy to see that there are some inherent ambiguities in  $A$  that are impossible to recover, given only the  $x^{(i)}$ 's.

Specifically, let  $P$  be any  $d$ -by-  $d$  permutation matrix. This means that each row and each column of  $P$  has exactly one "1." Here are some examples of permutation matrices:

$$
P = \left[ \begin{array}{l l l} 0 & 1 & 0 \\ 1 & 0 & 0 \\ 0 & 0 & 1 \end{array} \right]; \quad P = \left[ \begin{array}{l l} 0 & 1 \\ 1 & 0 \end{array} \right]; \quad P = \left[ \begin{array}{l l} 1 & 0 \\ 0 & 1 \end{array} \right].
$$

If  $z$  is a vector, then  $Pz$  is another vector that contains a permuted version of  $z$ 's coordinates. Given only the  $x^{(i)}$ 's, there will be no way to distinguish between  $W$  and  $PW$ . Specifically, the permutation of the original sources is ambiguous, which should be no surprise. Fortunately, this does not matter for most applications.

Further, there is no way to recover the correct scaling of the  $w_{i}$ 's. For instance, if  $A$  were replaced with  $2A$ , and every  $s^{(i)}$  were replaced with  $(0.5)s^{(i)}$ , then our observed  $x^{(i)} = 2A \cdot (0.5)s^{(i)}$  would still be the same. More broadly, if a single column of  $A$  were scaled by a factor of  $\alpha$ , and the corresponding source were scaled by a factor of  $1 / \alpha$ , then there is again no way to determine that this had happened given only the  $x^{(i)}$ 's. Thus, we cannot recover the "correct" scaling of the sources. However, for the applications that we are concerned with—including the cocktail party problem—this ambiguity also does not matter. Specifically, scaling a speaker's speech signal  $s_{j}^{(i)}$  by some positive factor  $\alpha$  affects only the volume of that speaker's speech. Also, sign changes do not matter, and  $s_{j}^{(i)}$  and  $-s_{j}^{(i)}$  sound identical when played on a speaker. Thus, if the  $w_{i}$  found by an algorithm is scaled by any non-zero real number, the corresponding recovered source  $s_{i} = w_{i}^{T}x$  will be scaled by the

same factor; but this usually does not matter. (These comments also apply to ICA for the brain/MEG data that we talked about in class.)

Are these the only sources of ambiguity in ICA? It turns out that they are, so long as the sources  $s_i$  are non-Gaussian. To see what the difficulty is with Gaussian data, consider an example in which  $n = 2$ , and  $s \sim \mathcal{N}(0, I)$ . Here,  $I$  is the 2x2 identity matrix. Note that the contours of the density of the standard normal distribution  $\mathcal{N}(0, I)$  are circles centered on the origin, and the density is rotationally symmetric.

Now, suppose we observe some  $x = As$ , where  $A$  is our mixing matrix. Then, the distribution of  $x$  will be Gaussian,  $x \sim \mathcal{N}(0, AA^T)$ , since

$$
\operatorname{E}_{s \sim \mathcal {N} (0, I)} [ x ] = \operatorname{E} [ A s ] = A \operatorname{E} [ s ] = 0
$$

$$
\operatorname{Cov} [ x ] = \operatorname{E}_{s \sim \mathcal {N} (0, I)} [ x x^{T} ] = \operatorname{E} [ A s s^{T} A^{T} ] = A \operatorname{E} [ s s^{T} ] A^{T} = A \cdot \operatorname{Cov} [ s ] \cdot A^{T} = A A^{T}
$$

Now, let  $R$  be an arbitrary orthogonal (less formally, a rotation/reflection) matrix, so that  $R R^T = R^T R = I$ , and let  $A' = A R$ . Then if the data had been mixed according to  $A'$  instead of  $A$ , we would have instead observed  $x' = A's$ . The distribution of  $x'$  is also Gaussian,  $x' \sim \mathcal{N}(0, A A^T)$ , since  $\operatorname{E}_{s \sim \mathcal{N}(0,I)}[x'(x')^T] = \operatorname{E}[A's s^T(A')^T] = \operatorname{E}[A R s s^T(A R)^T] = A R R^T A^T = A A^T$ . Hence, whether the mixing matrix is  $A$  or  $A'$ , we would observe data from a  $\mathcal{N}(0, A A^T)$  distribution. Thus, there is no way to tell if the sources were mixed using  $A$  and  $A'$ . There is an arbitrary rotational component in the mixing matrix that cannot be determined from the data, and we cannot recover the original sources.

Our argument above was based on the fact that the multivariate standard normal distribution is rotationally symmetric. Despite the bleak picture that this paints for ICA on Gaussian data, it turns out that, so long as the data is not Gaussian, it is possible, given enough data, to recover the  $d$  independent sources.

# 13.2 Densities and linear transformations

Before moving on to derive the ICA algorithm proper, we first digress briefly to talk about the effect of linear transformations on densities.

Suppose a random variable  $s$  is drawn according to some density  $p_s(s)$ . For simplicity, assume for now that  $s \in \mathbb{R}$  is a real number. Now, let the random variable  $x$  be defined according to  $x = As$  (here,  $x \in \mathbb{R}, A \in \mathbb{R}$ ). Let  $p_x$  be the density of  $x$ . What is  $p_x$ ?

Let  $W = A^{-1}$ . To calculate the "probability" of a particular value of  $x$ , it is tempting to compute  $s = Wx$ , then then evaluate  $p_s$  at that point, and

conclude that  $p_x(x) = p_s(Wx)$ . However, this is incorrect. For example, let  $s \sim \mathrm{Uniform}[0,1]$ , so  $p_s(s) = 1\{0 \leq s \leq 1\}$ . Now, let  $A = 2$ , so  $x = 2s$ . Clearly,  $x$  is distributed uniformly in the interval [0, 2]. Thus, its density is given by  $p_x(x) = (0.5)1\{0 \leq x \leq 2\}$ . This does not equal  $p_s(Wx)$ , where  $W = 0.5 = A^{-1}$ . Instead, the correct formula is  $p_x(x) = p_s(Wx)|W|$ .

More generally, if  $s$  is a vector-valued distribution with density  $p_s$ , and  $x = As$  for a square, invertible matrix  $A$ , then the density of  $x$  is given by

$$
p_{x} (x) = p_{s} (W x) \cdot | W |,
$$

where  $W = A^{-1}$

Remark. If you're seen the result that  $A$  maps  $[0,1]^d$  to a set of volume  $|A|$ , then here's another way to remember the formula for  $p_x$  given above, that also generalizes our previous 1-dimensional example. Specifically, let  $A \in \mathbb{R}^{d \times d}$  be given, and let  $W = A^{-1}$  as usual. Also let  $C_1 = [0,1]^d$  be the  $d$ -dimensional hypercube, and define  $C_2 = \{As : s \in C_1\} \subseteq \mathbb{R}^d$  to be the image of  $C_1$  under the mapping given by  $A$ . Then it is a standard result in linear algebra (and, indeed, one of the ways of defining determinants) that the volume of  $C_2$  is given by  $|A|$ . Now, suppose  $s$  is uniformly distributed in  $[0,1]^d$ , so its density is  $p_s(s) = 1\{s \in C_1\}$ . Then clearly  $x$  will be uniformly distributed in  $C_2$ . Its density is therefore found to be  $p_x(x) = 1\{x \in C_2\} / \mathrm{vol}(C_2)$  (since it must integrate over  $C_2$  to 1). But using the fact that the determinant of the inverse of a matrix is just the inverse of the determinant, we have  $1 / \mathrm{vol}(C_2) = 1 / |A| = |A^{-1}| = |W|$ . Thus,  $p_x(x) = 1\{x \in C_2\} |W| = 1\{Wx \in C_1\} |W| = p_s(Wx)|W|$ .

# 13.3 ICA algorithm

We are now ready to derive an ICA algorithm. We describe an algorithm by Bell and Sejnowski, and we give an interpretation of their algorithm as a method for maximum likelihood estimation. (This is different from their original interpretation involving a complicated idea called the infomax principal which is no longer necessary given the modern understanding of ICA.)

We suppose that the distribution of each source  $s_j$  is given by a density  $p_s$ , and that the joint distribution of the sources  $s$  is given by

$$
p (s) = \prod_{j = 1}^{d} p_{s} (s_{j}).
$$

Note that by modeling the joint distribution as a product of marginals, we capture the assumption that the sources are independent. Using our formulas from the previous section, this implies the following density on  $x = As = W^{-1}s$ :

$$
p (x) = \prod_{j = 1}^{d} p_{s} (w_{j}^{T} x) \cdot | W |.
$$

All that remains is to specify a density for the individual sources  $p_{s}$ .

Recall that, given a real-valued random variable  $z$ , its cumulative distribution function (cdf)  $F$  is defined by  $F(z_0) = P(z \leq z_0) = \int_{-\infty}^{z_0} p_z(z) dz$  and the density is the derivative of the cdf:  $p_z(z) = F'(z)$ .

Thus, to specify a density for the  $s_i$ 's, all we need to do is to specify some cdf for it. A cdf has to be a monotonic function that increases from zero to one. Following our previous discussion, we cannot choose the Gaussian cdf, as ICA doesn't work on Gaussian data. What we'll choose instead as a reasonable "default" cdf that slowly increases from 0 to 1, is the sigmoid function  $g(s) = 1 / (1 + e^{-s})$ . Hence,  $p_s(s) = g'(s)$ .<sup>1</sup>

The square matrix  $W$  is the parameter in our model. Given a training set  $\{x^{(i)}; i = 1, \dots, n\}$ , the log likelihood is given by

$$
\ell (W) = \sum_{i = 1}^{n} \left(\sum_{j = 1}^{d} \log g^{\prime} (w_{j}^{T} x^{(i)}) + \log | W |\right).
$$

We would like to maximize this in terms  $W$ . By taking derivatives and using the fact (from the first set of notes) that  $\nabla_W|W| = |W|(W^{-1})^T$ , we easily derive a stochastic gradient ascent learning rule. For a training example  $x^{(i)}$ , the update rule is:

$$
W := W + \alpha \left(\left[ \begin{array}{c} 1 - 2 g (w_{1}^{T} x^{(i)}) \\ 1 - 2 g (w_{2}^{T} x^{(i)}) \\ \vdots \\ 1 - 2 g (w_{d}^{T} x^{(i)}) \end{array} \right] x^{(i) T} + (W^{T})^{- 1}\right),
$$

where  $\alpha$  is the learning rate.

After the algorithm converges, we then compute  $s^{(i)} = Wx^{(i)}$  to recover the original sources.

Remark. When writing down the likelihood of the data, we implicitly assumed that the  $x^{(i)}$ 's were independent of each other (for different values of  $i$ ; note this issue is different from whether the different coordinates of  $x^{(i)}$  are independent), so that the likelihood of the training set was given by  $\prod_{i} p(x^{(i)}; W)$ . This assumption is clearly incorrect for speech data and other time series where the  $x^{(i)}$ 's are dependent, but it can be shown that having correlated training examples will not hurt the performance of the algorithm if we have sufficient data. However, for problems where successive training examples are correlated, when implementing stochastic gradient ascent, it sometimes helps accelerate convergence if we visit training examples in a randomly permuted order. (I.e., run stochastic gradient ascent on a randomly shuffled copy of the training set.)

# Chapter 14

# Self-supervised learning and foundation models

Despite its huge success, supervised learning with neural networks typically relies on the availability of a labeled dataset of decent size, which is sometimes costly to collect. Recently, AI and machine learning are undergoing a paradigm shift with the rise of models (e.g., BERT [Devlin et al., 2019] and GPT-3 [Brown et al., 2020]) that are pre-trained on broad data at scale and are adaptable to a wide range of downstream tasks. These models, called foundation models by Bommasani et al. [2021], oftentimes leverage massive unlabeled data so that much fewer labeled data in the downstream tasks are needed. Moreover, though foundation models are based on standard deep learning and transfer learning, their scale results in new emergent capabilities. These models are typically (pre-)trained by self-supervised learning methods where the supervisions/labels come from parts of the inputs.

This chapter will introduce the paradigm of foundation models and basic related concepts.

# 14.1 Pretraining and adaptation

The foundation models paradigm consists of two phases: pretraining (or simply training) and adaptation. We first pretrain a large model on a massive unlabeled dataset (e.g., billions of unlabeled images). Then, we adapt the pretrained model to a downstream task (e.g., detecting cancer from scan images). These downstream tasks are often prediction tasks with limited or

even no labeled data. The intuition is that the pretrained models learn good representations that capture intrinsic semantic structure/ information about the data, and the adaptation phase customizes the model to a particular downstream task by, e.g., retrieving the information specific to it. For example, a model pretrained on massive unlabeled image data may learn good general visual representations/features, and we adapt the representations to solve biomedical imagining tasks.

We formalize the two phases below.

Pretraining. Suppose we have an unlabeled pretraining dataset  $\{x^{(1)}, x^{(2)} \dots, x^{(n)}\}$  that consists of  $n$  examples in  $\mathbb{R}^d$ . Let  $\phi_\theta$  be a model that is parameterized by  $\theta$  and maps the input  $x$  to some  $m$ -dimensional representation  $\phi_\theta(x)$ . (People also call  $\phi_\theta(x) \in \mathbb{R}^m$  the embedding or features of the example  $x$ .) We pretrain the model  $\theta$  with a pretraining loss, which is often an average of loss functions on all the examples:  $L_{\mathrm{pre}}(\theta) = \frac{1}{n} \sum_{i=1}^{n} \ell_{\mathrm{pre}}(\theta, x^{(i)})$ . Here  $\ell_{\mathrm{pre}}$  is a so-called self-supervised loss on a single datapoint  $x^{(i)}$ , because as shown later, e.g., in Section 14.3, the "supervision" comes from the data point  $x^{(i)}$  itself. It is also possible that the pretraining loss is not a sum of losses on individual examples. We will discuss two pretraining losses in Section 14.2 and Section 14.3.

We use some optimizers (mostly likely SGD or ADAM [Kingma and Ba, 2014]) to minimize  $L_{\mathrm{pre}}(\theta)$ . We denote the obtained pretrained model by  $\hat{\theta}$ .

Adaptation. For a downstream task, we usually have a labeled dataset  $\{(x_{\mathrm{task}}^{(1)},y_{\mathrm{task}}^{(1)}),\dots ,(x_{\mathrm{task}}^{(n_{\mathrm{task}})},y_{\mathrm{task}}^{(n_{\mathrm{task}})})\}$  with  $n_{\mathrm{task}}$  examples. The setting when  $n_{\mathrm{task}} = 0$  is called zero-shot learning—the downstream task doesn't have any labeled examples. When  $n_{\mathrm{task}}$  is relatively small (say, between 1 and 50), the setting is called few-shot learning. It's also pretty common to have a larger  $n_{\mathrm{task}}$  on the order of ranging from hundreds to tens of thousands.

An adaptation algorithm generally takes in a downstream dataset and the pretrained model  $\hat{\theta}$ , and outputs a variant of  $\hat{\theta}$  that solves the downstream task. We will discuss below two popular and general adaptation methods, linear probe and finetuning. In addition, two other methods specific to language problems are introduced in 14.3.2.

The linear probe approach uses a linear head on top of the representation to predict the downstream labels. Mathematically, the adapted model outputs  $w^{\top}\phi_{\hat{\theta}}(x)$ , where  $w \in \mathbb{R}^{m}$  is a parameter to be learned, and  $\hat{\theta}$  is exactly the pretrained model (fixed). We can use SGD (or other optimizers) to train

$w$  on the downstream task loss to predict the task label

$$
\min_{w \in \mathbb {R}^{m}} \frac{1}{n_{\mathrm{task}}} \sum_{i = 1}^{n_{\mathrm{task}}} \ell_{\mathrm{task}} \left(y_{\mathrm{task}}^{(i)}, w^{\top} \phi_{\hat {\theta}} \left(x_{\mathrm{task}}^{(i)}\right)\right) \tag {14.1}
$$

E.g., if the downstream task is a regression problem, we will have  $\ell_{\mathrm{task}}(y_{\mathrm{task}},w^{\top}\phi_{\hat{\theta}}(x_{\mathrm{task}})) = (y_{\mathrm{task}} - w^{\top}\phi_{\hat{\theta}}(x_{\mathrm{task}}))^{2}$ .

The finetuning algorithm uses a similar structure for the downstream prediction model, but also further finetunes the pretrained model (instead of keeping it fixed). Concretely, the prediction model is  $w^\top \phi_\theta(x)$  with parameters  $w$  and  $\theta$ . We optimize both  $w$  and  $\theta$  to fit the downstream data, but initialize  $\theta$  with the pretrained model  $\hat{\theta}$ . The linear head  $w$  is usually initialized randomly.

$$
\underset {w, \theta} {\text{minimize}} \frac{1}{n_{\text{task}}} \sum_{i = 1}^{n_{\text{task}}} \ell_{\text{task}} \left(y_{\text{task}}^{(i)}, w^{\top} \phi_{\theta} \left(x_{\text{task}}^{(i)}\right)\right) \tag {14.2}
$$

with initialization  $w\gets$  random vector (14.3)

$$
\theta \leftarrow \theta \tag {14.4}
$$

Various other adaptation methods exist and are sometimes specialized to the particular pretraining methods. We will discuss one of them in Section 14.3.2.

# 14.2 Pretraining methods in computer vision

This section introduces two concrete pretraining methods for computer vision: supervised pretraining and contrastive learning.

Supervised pretraining. Here, the pretraining dataset is a large-scale labeled dataset (e.g., ImageNet), and the pretrained models are simply a neural network trained with vanilla supervised learning (with the last layer being removed). Concretely, suppose we write the learned neural network as  $U\phi_{\hat{\theta}}(x)$ , where  $U$  is the last (fully-connected) layer parameters,  $\hat{\theta}$  corresponds to the parameters of all the other layers, and  $\phi_{\hat{\theta}}(x)$  are the penultimate activations layer (which serves as the representation). We simply discard  $U$  and use  $\phi_{\hat{\theta}}(x)$  as the pretrained model.

Contrastive learning. Contrastive learning is a self-supervised pretraining method that uses only unlabeled data. The main intuition is that a good representation function  $\phi_{\theta}(\cdot)$  should map semantically similar images to similar representations, and that random pair of images should generally have

distinct representations. E.g., we may want to map images of two huskies to similar representations, but a husky and an elephant should have different representations. One definition of similarity is that images from the same class are similar. Using this definition will result in the so-called supervised contrastive algorithms that work well when labeled pretraining datasets are available.

Without labeled data, we can use data augmentation to generate a pair of "similar" augmented images given an original image  $x$ . Data augmentation typically means that we apply random cropping, flipping, and/or color transformation on the original image  $x$  to generate a variant. We can take two random augmentations, denoted by  $\hat{x}$  and  $\tilde{x}$ , of the same original image  $x$ , and call them a positive pair. We observe that positive pairs of images are often semantically related because they are augmentations of the same image. We will design a loss function for  $\theta$  such that the representations of a positive pair,  $\phi_{\theta}(\hat{x}), \phi_{\theta}(\tilde{x})$ , as close to each other as possible.

On the other hand, we can also take another random image  $z$  from the pretraining dataset and generate an augmentation  $\hat{z}$  from  $z$ . Note that  $(\hat{x}, \hat{z})$  are from different images; therefore, with a good chance, they are not semantically related. We call  $(\hat{x}, \hat{z})$  a negative or random pair. We will design a loss to push the representation of random pairs,  $\phi_{\theta}(\hat{x}), \phi_{\theta}(\hat{z})$ , far away from each other.

There are many recent algorithms based on the contrastive learning principle, and here we introduce SIMCLR [Chen et al., 2020] as an concrete example. The loss function is defined on a batch of examples  $(x^{1},\dots ,x^{(B)})$  with batch size  $B$ . The algorithm computes two random augmentations for each example  $x^{(i)}$  in the batch, denoted by  $\hat{x}^{(i)}$  and  $\tilde{x}^{(i)}$ . As a result, we have the augmented batch of  $2B$  examples:  $\hat{x}^1,\dots ,\hat{x}^{(B)},\tilde{x}^1,\dots ,\tilde{x}^{(B)}$ . The SIMCLR loss is defined as<sup>3</sup>

$$
L_{\mathrm{pre}} (\theta) = - \sum_{i = 1}^{B} \log \frac{\exp \big (\phi_{\theta} (\hat {x}^{(i)})^{\top} \phi_{\theta} (\tilde {x}^{(i)}) \big)}{\exp \big (\phi_{\theta} (\hat {x}^{(i)})^{\top} \phi_{\theta} (\tilde {x}^{(i)}) \big) + \sum_{j \neq i} \exp \big (\phi_{\theta} (\hat {x}^{(i)})^{\top} \phi_{\theta} (\tilde {x}^{(j)}) \big)}.
$$

The intuition is as follows. The loss is increasing in  $\phi_{\theta}(\hat{x}^{(i)})^{\top}\phi_{\theta}(\tilde{x}^{(j)})$ , and thus minimizing the loss encourages  $\phi_{\theta}(\hat{x}^{(i)})^{\top}\phi_{\theta}(\tilde{x}^{(j)})$  to be small, making  $\phi_{\theta}(\hat{x}^{(i)})$  far away from  $\phi_{\theta}(\tilde{x}^{(j)})$ . On the other hand, the loss is decreasing in

$\phi_{\theta}(\hat{x}^{(i)})^{\top}\phi_{\theta}(\tilde{x}^{(i)})$ , and thus minimizing the loss encourages  $\phi_{\theta}(\hat{x}^{(i)})^{\top}\phi_{\theta}(\tilde{x}^{(i)})$  to be large, resulting in  $\phi_{\theta}(\hat{x}^{(i)})$  and  $\phi_{\theta}(\tilde{x}^{(i)})$  to be close.

# 14.3 Pretrained large language models

Natural language processing is another area where pretraining models are particularly successful. In language problems, an example typically corresponds to a document or generally a sequence/trunk of words, $^5$  denoted by  $x = (x_{1},\dots ,x_{T})$  where  $T$  is the length of the document/sequence,  $x_{i}\in \{1,\dots ,V\}$  are words in the document, and  $V$  is the vocabulary size. $^6$

A language model is a probabilistic model representing the probability of a document, denoted by  $p(x_{1},\dots ,x_{T})$ . This probability distribution is very complex because its support size is  $V^{T}$  — exponential in the length of the document. Instead of modeling the distribution of a document itself, we can apply the chain rule of conditional probability to decompose it as follows:

$$
p (x_{1}, \dots , x_{T}) = p (x_{1}) p (x_{2} | x_{1}) \dots p (x_{T} | x_{1}, \dots , x_{T - 1}). \tag {14.5}
$$

Now the support size of each of the conditional probability  $p(x_{t}|x_{1},\dots ,x_{t - 1})$  is  $V$ .

We will model the conditional probability  $p(x_{t} | x_{1}, \dots, x_{t-1})$  as a function of  $x_{1}, \dots, x_{t-1}$  parameterized by some parameter  $\theta$ .

A parameterized model takes in numerical inputs and therefore we first introduce embeddings or representations for the words. Let  $e_i \in \mathbb{R}^d$  be the embedding of the word  $i \in \{1, 2, \dots, V\}$ . We call  $[e_1, \dots, e_V] \in \mathbb{R}^{d \times V}$  the embedding matrix.

The most commonly used model is Transformer [Vaswani et al., 2017]. In this subsection, we will introduce the input-output interface of a Transformer, but treat the intermediate computation in the Transformer as a blackbox. We refer the students to the transformer paper or more advanced courses for more details. As shown in Figure 14.1, given a document  $(x_{1},\dots ,x_{T})$ , we first translate the sequence of discrete variables into a sequence of corresponding

word embeddings  $(e_{x_1},\dots ,e_{x_T})$ . We also introduce a fixed special token  $x_0 = \bot$  in the vocabulary with corresponding embedding  $e_{x_0}$  to mark the beginning of a document. Then, the word embeddings are passed into a Transformer model, which takes in a sequence of vectors  $(e_{x_0},e_{x_1},\dots ,e_{x_T})$  and outputs a sequence of vectors  $(u_{1},u_{2},\dots ,u_{T + 1})$ , where  $u_{t}\in \mathbb{R}^{V}$  will be interpreted as the logits for the probability distribution of the next word. Here we use the autoregressive version of the Transformers which by design ensures  $u_{t}$  only depends on  $x_{1},\dots ,x_{t - 1}$  (note that this property does not hold in masked language models [Devlin et al., 2019] where the losses are also different.) We view the whole mapping from  $x$ 's to  $u$ 's a blackbox in this subsection and call it a Transformer, denoted it by  $f_{\theta}$ , where  $\theta$  include both the parameters in the Transformer and the input embeddings. We write  $u_{t} = f_{\theta}(x_{0},x_{1},\ldots ,x_{t - 1})$  where  $f_{\theta}$  denotes the mapping from the input to the outputs.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/122345b4b4fe599abc757110df3fefcc0ea2c5ecb09c8fdbfac2e8deab5a8f83.jpg)  
Figure 14.1: The inputs and outputs of a Transformer model.

The conditional probability  $p(x_{t} | x_{1}, \dots, x_{t-1})$  is the softmax of the logits:

$$
\begin{array}{l} \left[ \begin{array}{c} p \left(x_{t} = 1 \mid x_{1} \dots , x_{t - 1}\right) \\ p \left(x_{t} = 2 \mid x_{1} \dots , x_{t - 1}\right) \\ \vdots \\ p \left(x_{t} = V \mid x_{1} \dots , x_{t - 1}\right) \end{array} \right] = \operatorname{softmax} \left(u_{t}\right) \in \mathbb {R}^{V} (14.6) \\ = \operatorname{softmax} \left(f_{\theta} \left(x_{0}, \dots , x_{t - 1}\right)\right) (14.7) \\ \end{array}
$$

We train the Transformer parameter  $\theta$  by minimizing the negative log-likelihood of seeing the data under the probabilistic model defined by  $\theta$ ,

which is the cross-entropy loss on the logitis.

$$
\begin{array}{l} \operatorname{loss} (\theta) = \frac{1}{T} \sum_{t = 1}^{T} - \log \left(p_{\theta} \left(x_{t} \mid x_{1}, \dots , x_{t - 1}\right)\right) \tag {14.8} \\ = \frac{1}{T} \sum_{t = 1}^{T} \ell_{\mathrm{ce}} (f_{\theta} (x_{0}, x_{1}, \dots , x_{t - 1}), x_{t}) \\ = \frac{1}{T} \sum_{t = 1}^{T} - \log (\operatorname{softmax} (f_{\theta} (x_{0}, x_{1}, \dots , x_{t - 1}))_{x_{t}}). \\ \end{array}
$$

Autoregressive text decoding / generation. Given a autoregressive Transformer, we can simply sample text from it sequentially. Given a prefix  $x_{1}, \ldots, x_{t}$ , we generate text completion  $x_{t+1}, \ldots, x_{T}$  sequentially using the conditional distribution.

$$
x_{t + 1} \sim \operatorname{softmax} \left(f_{\theta} \left(x_{0}, x_{1}, \dots , x_{t}\right)\right) \tag {14.9}
$$

$$
x_{t + 2} \sim \operatorname{softmax} \left(f_{\theta} \left(x_{0}, x_{1}, \dots , x_{t + 1}\right)\right) \tag {14.10}
$$

$$
\dots \tag {14.11}
$$

$$
x_{T} \sim \operatorname{softmax} \left(f_{\theta} \left(x_{0}, x_{1}, \dots , x_{T - 1}\right)\right). \tag {14.12}
$$

Note that each generated token is used as the input to the model when generating the following tokens. In practice, people often introduce a parameter  $\tau > 0$  named temperature to further adjust the entropy/sharpness of the generated distribution,

$$
x_{t + 1} \sim \operatorname{softmax} \left(f_{\theta} \left(x_{0}, x_{1}, \dots , x_{t}\right) / \tau\right) \tag {14.13}
$$

$$
x_{t + 2} \sim \operatorname{softmax} \left(f_{\theta} \left(x_{0}, x_{1}, \dots , x_{t + 1}\right) / \tau\right) \tag {14.14}
$$

$$
\dots \tag {14.15}
$$

$$
x_{T} \sim \operatorname{softmax} \left(f_{\theta} \left(x_{0}, x_{1}, \dots , x_{T - 1}\right) / \tau\right). \tag {14.16}
$$

When  $\tau = 1$ , the text is sampled from the original conditional probability defined by the model. With a decreasing  $\tau$ , the generated text gradually becomes more "deterministic".  $\tau \rightarrow 0$  reduces to greedy decoding, where we generate the most probable next token from the conditional probability.

# 14.3.1 Zero-shot learning and in-context learning

For language models, there are many ways to adapt a pretrained model to downstream tasks. In this notes, we discuss three of them: finetuning, zero-shot learning, and in-context learning.

Finetuning is not very common for the autoregressive language models that we introduced in Section 14.3 but much more common for other variants such as masked language models which has similar input-output interfaces but are pretrained differently [Devlin et al., 2019]. The finetuning method is the same as introduced generally in Section 14.1—the only question is how we define the prediction task with an additional linear head. One option is to treat  $c_{T+1} = \phi_{\theta}(x_1, \dots, x_T)$  as the representation and use  $w^\top c_{T+1} = w^\top \phi_{\theta}(x_1, \dots, x_T)$  to predict task label. As described in Section 14.1, we initialize  $\theta$  to the pretrained model  $\hat{\theta}$  and then optimize both  $w$  and  $\theta$ .

Zero-shot adaptation or zero-shot learning is the setting where there is no input-output pairs from the downstream tasks. For language problems tasks, typically the task is formatted as a question or a cloze test form via natural language. For example, we can format an example as a question:

$x_{\mathrm{task}} = (x_{\mathrm{task},1},\dots ,x_{\mathrm{task},T}) =$  "Is the speed of light a universal constant?"

Then, we compute the most likely next word predicted by the language model given this question, that is, computing  $\operatorname{argmax}_{x_{T+1}} p(x_{T+1} \mid x_{\text{task},1}, \dots, x_{\text{task},T})$ . In this case, if the most likely next word  $x_{T+1}$  is "No", then we solve the task. (The speed of light is only a constant in vacuum). We note that there are many ways to decode the answer from the language models, e.g., instead of computing the argmax, we may use the language model to generate a few words word. It is an active research question to find the best way to utilize the language models.

In-context learning is mostly used for few-shot settings where we have a few labeled examples  $(x_{\mathrm{task}}^{(1)},y_{\mathrm{task}}^{(1)}),\dots ,(x_{\mathrm{task}}^{(n_{\mathrm{task}})},y_{\mathrm{task}}^{(n_{\mathrm{task}})})$  . Given a test example  $x_{\mathrm{test}}$  , we construct a document  $(x_{1},\dots ,x_{T})$  , which is more commonly called a "prompt" in this context, by concatenating the labeled examples and the text example in some format. For example, we may construct the prompt as follows

$$
x_{1}, \dots , x_{T} = \quad \text{"Q :} 2 \sim 3 = ? \quad x_{\mathrm{task}}^{(1)}
$$

$$
\begin{array}{c c} \text{A :5} & y_{\text{task}}^{(1)} \\ \hline \end{array}
$$

$$
\mathrm{Q :} 6 \sim 7 = ? \quad x_{\text{task}}^{(2)}
$$

$$
\begin{array}{c c} \text{A :13} & y_{\text{task}}^{(2)} \end{array}
$$

$$
\begin{array}{l} \dots \\ Q: 1 5 \sim 2 = ? ” \end{array} \qquad x_{\text{test}}
$$

Then, we let the pretrained model generate the most likely  $x_{T + 1}, x_{T + 2}, \dots$ . In this case, if the model can "learn" that the symbol  $\sim$  means addition from the few examples, we will obtain the following which suggests the answer is 17.

$$
x_{T + 1}, x_{T + 2}, \dots = “ A: 1 7 ”.
$$

The area of foundation models is very new and quickly growing. The notes here only attempt to introduce these models on a conceptual level with a significant amount of simplification. We refer the readers to other materials, e.g., Bommasani et al. [2021], for more details.

# Part V

# Reinforcement Learning and Control

# Chapter 15

# Reinforcement learning

We now begin our study of reinforcement learning and adaptive control.

In supervised learning, we saw algorithms that tried to make their outputs mimic the labels  $y$  given in the training set. In that setting, the labels gave an unambiguous "right answer" for each of the inputs  $x$ . In contrast, for many sequential decision making and control problems, it is very difficult to provide this type of explicit supervision to a learning algorithm. For example, if we have just built a four-legged robot and are trying to program it to walk, then initially we have no idea what the "correct" actions to take are to make it walk, and so do not know how to provide explicit supervision for a learning algorithm to try to mimic.

In the reinforcement learning framework, we will instead provide our algorithms only a reward function, which indicates to the learning agent when it is doing well, and when it is doing poorly. In the four-legged walking example, the reward function might give the robot positive rewards for moving forwards, and negative rewards for either moving backwards or falling over. It will then be the learning algorithm's job to figure out how to choose actions over time so as to obtain large rewards.

Reinforcement learning has been successful in applications as diverse as autonomous helicopter flight, robot legged locomotion, cell-phone network routing, marketing strategy selection, factory control, and efficient web-page indexing. Our study of reinforcement learning will begin with a definition of the Markov decision processes (MDP), which provides the formalism in which RL problems are usually posed.

# 15.1 Markov decision processes

A Markov decision process is a tuple  $(S, A, \{P_{sa}\}, \gamma, R)$ , where:

-  $S$  is a set of states. (For example, in autonomous helicopter flight,  $S$  might be the set of all possible positions and orientations of the helicopter.)  
-  $A$  is a set of actions. (For example, the set of all possible directions in which you can push the helicopter's control sticks.)  
-  $P_{sa}$  are the state transition probabilities. For each state  $s \in S$  and action  $a \in A$ ,  $P_{sa}$  is a distribution over the state space. We'll say more about this later, but briefly,  $P_{sa}$  gives the distribution over what states we will transition to if we take action  $a$  in state  $s$ .  
-  $\gamma \in [0,1)$  is called the discount factor.  
-  $R: S \times A \mapsto \mathbb{R}$  is the reward function. (Rewards are sometimes also written as a function of a state  $S$  only, in which case we would have  $R: S \mapsto \mathbb{R}$ ).

The dynamics of an MDP proceeds as follows: We start in some state  $s_0$ , and get to choose some action  $a_0 \in A$  to take in the MDP. As a result of our choice, the state of the MDP randomly transitions to some successor state  $s_1$ , drawn according to  $s_1 \sim P_{s_0a_0}$ . Then, we get to pick another action  $a_1$ . As a result of this action, the state transitions again, now to some  $s_2 \sim P_{s_1a_1}$ . We then pick  $a_2$ , and so on.... Pictorially, we can represent this process as follows:

$$
s_{0} \xrightarrow {a_{0}} s_{1} \xrightarrow {a_{1}} s_{2} \xrightarrow {a_{2}} s_{3} \xrightarrow {a_{3}} \dots
$$

Upon visiting the sequence of states  $s_0, s_1, \ldots$  with actions  $a_0, a_1, \ldots$ , our total payoff is given by

$$
R \left(s_{0}, a_{0}\right) + \gamma R \left(s_{1}, a_{1}\right) + \gamma^{2} R \left(s_{2}, a_{2}\right) + \dots .
$$

Or, when we are writing rewards as a function of the states only, this becomes

$$
R (s_{0}) + \gamma R (s_{1}) + \gamma^{2} R (s_{2}) + \dots .
$$

For most of our development, we will use the simpler state-rewards  $R(s)$ , though the generalization to state-action rewards  $R(s,a)$  offers no special difficulties.

Our goal in reinforcement learning is to choose actions over time so as to maximize the expected value of the total payoff:

$$
\operatorname{E} \left[ R (s_{0}) + \gamma R (s_{1}) + \gamma^{2} R (s_{2}) + \dots \right]
$$

Note that the reward at timestep  $t$  is discounted by a factor of  $\gamma^t$ . Thus, to make this expectation large, we would like to accrue positive rewards as soon as possible (and postpone negative rewards as long as possible). In economic applications where  $R(\cdot)$  is the amount of money made,  $\gamma$  also has a natural interpretation in terms of the interest rate (where a dollar today is worth more than a dollar tomorrow).

A policy is any function  $\pi : S \mapsto A$  mapping from the states to the actions. We say that we are executing some policy  $\pi$  if, whenever we are in state  $s$ , we take action  $a = \pi(s)$ . We also define the value function for a policy  $\pi$  according to

$$
V^{\pi} (s) = \operatorname{E} \left[ R (s_{0}) + \gamma R (s_{1}) + \gamma^{2} R (s_{2}) + \dots \right\rvert   s_{0} = s, \pi ].
$$

$V^{\pi}(s)$  is simply the expected sum of discounted rewards upon starting in state  $s$ , and taking actions according to  $\pi$ .<sup>1</sup>

Given a fixed policy  $\pi$ , its value function  $V^{\pi}$  satisfies the Bellman equations:

$$
V^{\pi} (s) = R (s) + \gamma \sum_{s^{\prime} \in S} P_{s \pi (s)} (s^{\prime}) V^{\pi} (s^{\prime}).
$$

This says that the expected sum of discounted rewards  $V^{\pi}(s)$  for starting in  $s$  consists of two terms: First, the immediate reward  $R(s)$  that we get right away simply for starting in state  $s$ , and second, the expected sum of future discounted rewards. Examining the second term in more detail, we see that the summation term above can be rewritten  $\mathrm{E}_{s'} \sim P_{s\pi (s)}[V^{\pi}(s')]$ . This is the expected sum of discounted rewards for starting in state  $s'$ , where  $s'$  is distributed according  $P_{s\pi (s)}$ , which is the distribution over where we will end up after taking the first action  $\pi (s)$  in the MDP from state  $s$ . Thus, the second term above gives the expected sum of discounted rewards obtained after the first step in the MDP.

Bellman's equations can be used to efficiently solve for  $V^{\pi}$ . Specifically, in a finite-state MDP  $(|S| < \infty)$ , we can write down one such equation for  $V^{\pi}(s)$  for every state  $s$ . This gives us a set of  $|S|$  linear equations in  $|S|$  variables (the unknown  $V^{\pi}(s)$ 's, one for each state), which can be efficiently solved for the  $V^{\pi}(s)$ 's.

We also define the optimal value function according to

$$
V^{*} (s) = \max_{\pi} V^{\pi} (s). \tag {15.1}
$$

In other words, this is the best possible expected sum of discounted rewards that can be attained using any policy. There is also a version of Bellman's equations for the optimal value function:

$$
V^{*} (s) = R (s) + \max_{a \in A} \gamma \sum_{s^{\prime} \in S} P_{s a} \left(s^{\prime}\right) V^{*} \left(s^{\prime}\right). \tag {15.2}
$$

The first term above is the immediate reward as before. The second term is the maximum over all actions  $a$  of the expected future sum of discounted rewards we'll get upon after action  $a$ . You should make sure you understand this equation and see why it makes sense.

We also define a policy  $\pi^{*}:S\mapsto A$  as follows:

$$
\pi^{*} (s) = \arg \max_{a \in A} \sum_{s^{\prime} \in S} P_{s a} \left(s^{\prime}\right) V^{*} \left(s^{\prime}\right). \tag {15.3}
$$

Note that  $\pi^{*}(s)$  gives the action  $a$  that attains the maximum in the "max" in Equation (15.2).

It is a fact that for every state  $s$  and every policy  $\pi$ , we have

$$
V^{*} (s) = V^{\pi^{*}} (s) \geq V^{\pi} (s).
$$

The first equality says that the  $V^{\pi^{*}}$ , the value function for  $\pi^{*}$ , is equal to the optimal value function  $V^{*}$  for every state  $s$ . Further, the inequality above says that  $\pi^{*}$ 's value is at least a large as the value of any other other policy. In other words,  $\pi^{*}$  as defined in Equation (15.3) is the optimal policy.

Note that  $\pi^{*}$  has the interesting property that it is the optimal policy for all states  $s$ . Specifically, it is not the case that if we were starting in some state  $s$  then there'd be some optimal policy for that state, and if we were starting in some other state  $s'$  then there'd be some other policy that's optimal policy for  $s'$ . The same policy  $\pi^{*}$  attains the maximum in Equation (15.1) for all states  $s$ . This means that we can use the same policy  $\pi^{*}$  no matter what the initial state of our MDP is.

# 15.2 Value iteration and policy iteration

We now describe two efficient algorithms for solving finite-state MDPs. For now, we will consider only MDPs with finite state and action spaces  $|S| <$

$\infty$ ,  $|A| < \infty$ ). In this section, we will also assume that we know the state transition probabilities  $\{P_{sa}\}$  and the reward function  $R$ .

The first algorithm, value iteration, is as follows:

# Algorithm 4 Value Iteration

1: For each state  $s$ , initialize  $V(s) := 0$ .  
2: for until convergence do  
3: For every state, update

$$
V (s) := R (s) + \max_{a \in A} \gamma \sum_{s^{\prime}} P_{s a} \left(s^{\prime}\right) V \left(s^{\prime}\right). \tag {15.4}
$$

This algorithm can be thought of as repeatedly trying to update the estimated value function using Bellman Equations (15.2).

There are two possible ways of performing the updates in the inner loop of the algorithm. In the first, we can first compute the new values for  $V(s)$  for every state  $s$ , and then overwrite all the old values with the new values. This is called a synchronous update. In this case, the algorithm can be viewed as implementing a "Bellman backup operator" that takes a current estimate of the value function, and maps it to a new estimate. (See homework problem for details.) Alternatively, we can also perform asynchronous updates. Here, we would loop over the states (in some order), updating the values one at a time.

Under either synchronous or asynchronous updates, it can be shown that value iteration will cause  $V$  to converge to  $V^{*}$ . Having found  $V^{*}$ , we can then use Equation (15.3) to find the optimal policy.

Apart from value iteration, there is a second standard algorithm for finding an optimal policy for an MDP. The policy iteration algorithm proceeds as follows:

Thus, the inner-loop repeatedly computes the value function for the current policy, and then updates the policy using the current value function. (The policy  $\pi$  found in step (b) is also called the policy that is greedy with respect to  $V$ .) Note that step (a) can be done via solving Bellman's equations as described earlier, which in the case of a fixed policy, is just a set of  $|S|$  linear equations in  $|S|$  variables.

After at most a finite number of iterations of this algorithm,  $V$  will converge to  $V^{*}$ , and  $\pi$  will converge to  $\pi^{*}$ .<sup>2</sup>

# Algorithm 5 Policy Iteration

1: Initialize  $\pi$  randomly.  
2: for until convergence do

3: Let  $V \coloneqq V^{\pi}$ .

$\triangleright$  typically by linear system solver

4: For each state  $s$ , let

$$
\pi (s) := \arg \max_{a \in A} \sum_{s^{\prime}} P_{s a} (s^{\prime}) V (s^{\prime}).
$$

Both value iteration and policy iteration are standard algorithms for solving MDPs, and there isn't currently universal agreement over which algorithm is better. For small MDPs, policy iteration is often very fats and converges with very few iterations. However, for MDPs with large state spaces, solving for  $V^{\pi}$  explicitly would involve solving a large system of linear equations, and could be difficult (and note that one has to solve the linear system multiple times in policy iteration). In these problems, value iteration may be preferred. For this reason, in practice value iteration seems to be used more often than policy iteration. For some more discussions on the comparison and connection of value iteration and policy iteration, please see Section 15.5.

# 15.3 Learning a model for an MDP

So far, we have discussed MDPs and algorithms for MDPs assuming that the state transition probabilities and rewards are known. In many realistic problems, we are not given state transition probabilities and rewards explicitly, but must instead estimate them from data. (Usually,  $S, A$  and  $\gamma$  are known.)

For example, suppose that, for the inverted pendulum problem (see prob

lem set 4), we had a number of trials in the MDP, that proceeded as follows:

$$
\begin{array}{l} s_{0}^{(1)} \xrightarrow {a_{0}^{(1)}} s_{1}^{(1)} \xrightarrow {a_{1}^{(1)}} s_{2}^{(1)} \xrightarrow {a_{2}^{(1)}} s_{3}^{(1)} \xrightarrow {a_{3}^{(1)}} \dots \\ s_{0}^{(2)} \xrightarrow {a_{0}^{(2)}} s_{1}^{(2)} \xrightarrow {a_{1}^{(2)}} s_{2}^{(2)} \xrightarrow {a_{2}^{(2)}} s_{3}^{(2)} \xrightarrow {a_{3}^{(2)}} \dots \\ \end{array}
$$

.

Here,  $s_i^{(j)}$  is the state we were at time  $i$  of trial  $j$ , and  $a_i^{(j)}$  is the corresponding action that was taken from that state. In practice, each of the trials above might be run until the MDP terminates (such as if the pole falls over in the inverted pendulum problem), or it might be run for some large but finite number of timesteps.

Given this "experience" in the MDP consisting of a number of trials, we can then easily derive the maximum likelihood estimates for the state transition probabilities:

$$
P_{s a} \left(s^{\prime}\right) = \frac{\# \text{timestookweactionainstatesandgotto} s^{\prime}}{\# \text{timeswetookactionainstates}} \tag {15.5}
$$

Or, if the ratio above is “ $0/0$ ”—corresponding to the case of never having taken action  $a$  in state  $s$  before—the we might simply estimate  $P_{sa}(s')$  to be  $1/|S|$ . (I.e., estimate  $P_{sa}$  to be the uniform distribution over all states.)

Note that, if we gain more experience (observe more trials) in the MDP, there is an efficient way to update our estimated state transition probabilities using the new experience. Specifically, if we keep around the counts for both the numerator and denominator terms of (15.5), then as we observe more trials, we can simply keep accumulating those counts. Computing the ratio of these counts then given our estimate of  $P_{sa}$ .

Using a similar procedure, if  $R$  is unknown, we can also pick our estimate of the expected immediate reward  $R(s)$  in state  $s$  to be the average reward observed in state  $s$ .

Having learned a model for the MDP, we can then use either value iteration or policy iteration to solve the MDP using the estimated transition probabilities and rewards. For example, putting together model learning and value iteration, here is one possible algorithm for learning in an MDP with unknown state transition probabilities:

1. Initialize  $\pi$  randomly.  
2. Repeat {

(a) Execute  $\pi$  in the MDP for some number of trials.

(b) Using the accumulated experience in the MDP, update our estimates for  $P_{sa}$  (and  $R$ , if applicable).  
(c) Apply value iteration with the estimated state transition probabilities and rewards to get a new estimated value function  $V$ .  
(d) Update  $\pi$  to be the greedy policy with respect to  $V$ .

We note that, for this particular algorithm, there is one simple optimization that can make it run much more quickly. Specifically, in the inner loop of the algorithm where we apply value iteration, if instead of initializing value iteration with  $V = 0$ , we initialize it with the solution found during the previous iteration of our algorithm, then that will provide value iteration with a much better initial starting point and make it converge more quickly.

# 15.4 Continuous state MDPs

So far, we've focused our attention on MDPs with a finite number of states. We now discuss algorithms for MDPs that may have an infinite number of states. For example, for a car, we might represent the state as  $(x,y,\theta ,\dot{x},\dot{y},\dot{\theta})$  comprising its position  $(x,y)$ ; orientation  $\theta$ ; velocity in the  $x$  and  $y$  directions  $\dot{x}$  and  $\dot{y}$ ; and angular velocity  $\dot{\theta}$ . Hence,  $S = \mathbb{R}^6$  is an infinite set of states, because there is an infinite number of possible positions and orientations for the car. Similarly, the inverted pendulum you saw in PS4 has states  $(x,\theta ,\dot{x},\dot{\theta})$ , where  $\theta$  is the angle of the pole. And, a helicopter flying in 3d space has states of the form  $(x,y,z,\phi ,\theta ,\psi ,\dot{x},\dot{y},\dot{z},\dot{\phi},\dot{\theta},\dot{\psi})$ , where here the roll  $\phi$ , pitch  $\theta$ , and yaw  $\psi$  angles specify the 3d orientation of the helicopter.

In this section, we will consider settings where the state space is  $S = \mathbb{R}^d$ , and describe ways for solving such MDPs.

# 15.4.1 Discretization

Perhaps the simplest way to solve a continuous-state MDP is to discretize the state space, and then to use an algorithm like value iteration or policy iteration, as described previously.

For example, if we have 2d states  $(s_1,s_2)$ , we can use a grid to discretize the state space:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/f9a85668a7353f9f08d2e4a3fd4e1d21f6b66d913a49f86b227c064e6d588cfb.jpg)

Here, each grid cell represents a separate discrete state  $\bar{s}$ . We can then approximate the continuous-state MDP via a discrete-state one  $(\bar{S}, A, \{P_{\bar{s}a}\}, \gamma, R)$ , where  $\bar{S}$  is the set of discrete states,  $\{P_{\bar{s}a}\}$  are our state transition probabilities over the discrete states, and so on. We can then use value iteration or policy iteration to solve for the  $V^{*}(\bar{s})$  and  $\pi^{*}(\bar{s})$  in the discrete state MDP  $(\bar{S}, A, \{P_{\bar{s}a}\}, \gamma, R)$ . When our actual system is in some continuous-valued state  $s \in S$  and we need to pick an action to execute, we compute the corresponding discretized state  $\bar{s}$ , and execute action  $\pi^{*}(\bar{s})$ .

This discretization approach can work well for many problems. However, there are two downsides. First, it uses a fairly naive representation for  $V^{*}$  (and  $\pi^{*}$ ). Specifically, it assumes that the value function is takes a constant value over each of the discretization intervals (i.e., that the value function is piecewise constant in each of the gridcells).

To better understand the limitations of such a representation, consider a supervised learning problem of fitting a function to this dataset:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/cff2590381a04b2e583d03b0bdcdd1ee735f8a8e424d220d02e9e49cf96136c7.jpg)

Clearly, linear regression would do fine on this problem. However, if we instead discretize the  $x$ -axis, and then use a representation that is piecewise constant in each of the discretization intervals, then our fit to the data would look like this:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/1c7241e6e38e3a581fe8247141a4c7088075e0510345dc08857ae64cabb6bf86.jpg)

This piecewise constant representation just isn't a good representation for many smooth functions. It results in little smoothing over the inputs, and no generalization over the different grid cells. Using this sort of representation, we would also need a very fine discretization (very small grid cells) to get a good approximation.

A second downside of this representation is called the curse of dimensionality. Suppose  $S = \mathbb{R}^d$ , and we discretize each of the  $d$  dimensions of the state into  $k$  values. Then the total number of discrete states we have is  $k^d$ . This grows exponentially quickly in the dimension of the state space  $d$ , and thus does not scale well to large problems. For example, with a 10d state, if we discretize each state variable into 100 values, we would have  $100^{10} = 10^{20}$  discrete states, which is far too many to represent even on a modern desktop computer.

As a rule of thumb, discretization usually works extremely well for 1d and 2d problems (and has the advantage of being simple and quick to implement). Perhaps with a little bit of cleverness and some care in choosing the discretization method, it often works well for problems with up to 4d states. If you're extremely clever, and somewhat lucky, you may even get it to work for some 6d problems. But it very rarely works for problems any higher dimensional than that.

# 15.4.2 Value function approximation

We now describe an alternative method for finding policies in continuous-state MDPs, in which we approximate  $V^{*}$  directly, without resorting to discretization. This approach, called value function approximation, has been successfully applied to many RL problems.

# Using a model or simulator

To develop a value function approximation algorithm, we will assume that we have a model, or simulator, for the MDP. Informally, a simulator is a black-box that takes as input any (continuous-valued) state  $s_t$  and action  $a_t$ , and outputs a next-state  $s_{t+1}$  sampled according to the state transition probabilities  $P_{st}a_t$ :

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/deaff77e-cc49-430a-9d27-c4bfb1de5896/30e740657b6b77229ebddbb0beb19e84a63f513f5ce2d5e9d213d0830f3d2988.jpg)

There are several ways that one can get such a model. One is to use physics simulation. For example, the simulator for the inverted pendulum in PS4 was obtained by using the laws of physics to calculate what position and orientation the cart/pole will be in at time  $t + 1$ , given the current state at time  $t$  and the action  $a$  taken, assuming that we know all the parameters of the system such as the length of the pole, the mass of the pole, and so on. Alternatively, one can also use an off-the-shelf physics simulation software package which takes as input a complete physical description of a mechanical system, the current state  $s_t$  and action  $a_t$ , and computes the state  $s_{t+1}$  of the system a small fraction of a second into the future.<sup>4</sup>

An alternative way to get a model is to learn one from data collected in the MDP. For example, suppose we execute  $n$  trials in which we repeatedly take actions in an MDP, each trial for  $T$  timesteps. This can be done picking actions at random, executing some specific policy, or via some other way of

choosing actions. We would then observe  $n$  state sequences like the following:

$$
\begin{array}{l} s_{0}^{(1)} \xrightarrow {a_{0}^{(1)}} s_{1}^{(1)} \xrightarrow {a_{1}^{(1)}} s_{2}^{(1)} \xrightarrow {a_{2}^{(1)}} \dots \xrightarrow {a_{T - 1}^{(1)}} s_{T}^{(1)} \\ s_{0}^{(2)} \xrightarrow {a_{0}^{(2)}} s_{1}^{(2)} \xrightarrow {a_{1}^{(2)}} s_{2}^{(2)} \xrightarrow {a_{2}^{(2)}} \dots \xrightarrow {a_{T - 1}^{(2)}} s_{T}^{(2)} \\ \end{array}
$$

.

$$
s_{0}^{(n)} \xrightarrow {a_{0}^{(n)}} s_{1}^{(n)} \xrightarrow {a_{1}^{(n)}} s_{2}^{(n)} \xrightarrow {a_{2}^{(n)}} \dots \xrightarrow {a_{T - 1}^{(n)}} s_{T}^{(n)}
$$

We can then apply a learning algorithm to predict  $s_{t+1}$  as a function of  $s_t$  and  $a_t$ .

For example, one may choose to learn a linear model of the form

$$
s_{t + 1} = A s_{t} + B a_{t}, \tag {15.6}
$$

using an algorithm similar to linear regression. Here, the parameters of the model are the matrices  $A$  and  $B$ , and we can estimate them using the data collected from our  $n$  trials, by picking

$$
\arg \min_{A, B} \sum_{i = 1}^{n} \sum_{t = 0}^{T - 1} \left\| s_{t + 1}^{(i)} - \left(A s_{t}^{(i)} + B a_{t}^{(i)}\right) \right\|_{2}^{2}.
$$

We could also potentially use other loss functions for learning the model. For example, it has been found in recent work Luo et al. [2018] that using  $\| \cdot \| _2$  norm (without the square) may be helpful in certain cases.

Having learned  $A$  and  $B$ , one option is to build a deterministic model, in which given an input  $s_t$  and  $a_t$ , the output  $s_{t+1}$  is exactly determined. Specifically, we always compute  $s_{t+1}$  according to Equation (15.6). Alternatively, we may also build a stochastic model, in which  $s_{t+1}$  is a random function of the inputs, by modeling it as

$$
s_{t + 1} = A s_{t} + B a_{t} + \epsilon_{t},
$$

where here  $\epsilon_t$  is a noise term, usually modeled as  $\epsilon_t \sim \mathcal{N}(0, \Sigma)$ . (The covariance matrix  $\Sigma$  can also be estimated from data in a straightforward way.)

Here, we've written the next-state  $s_{t+1}$  as a linear function of the current state and action; but of course, non-linear functions are also possible. Specifically, one can learn a model  $s_{t+1} = A\phi_s(s_t) + B\phi_a(a_t)$ , where  $\phi_s$  and  $\phi_a$  are some non-linear feature mappings of the states and actions. Alternatively, one can also use non-linear learning algorithms, such as locally weighted linear regression, to learn to estimate  $s_{t+1}$  as a function of  $s_t$  and  $a_t$ . These approaches can also be used to build either deterministic or stochastic simulators of an MDP.

# Fitted value iteration

We now describe the fitted value iteration algorithm for approximating the value function of a continuous state MDP. In the sequel, we will assume that the problem has a continuous state space  $S = \mathbb{R}^d$ , but that the action space  $A$  is small and discrete.

Recall that in value iteration, we would like to perform the update

$$
\begin{array}{l} V (s) := R (s) + \gamma \max_{a} \int_{s^{\prime}} P_{s a} \left(s^{\prime}\right) V \left(s^{\prime}\right) d s^{\prime} (15.7) \\ = R (s) + \gamma \max_{a} \mathrm{E}_{s^{\prime} \sim P_{s a}} \left[ V \left(s^{\prime}\right) \right] (15.8) \\ \end{array}
$$

(In Section 15.2, we had written the value iteration update with a summation  $V(s) \coloneqq R(s) + \gamma \max_{a} \sum_{s'} P_{sa}(s') V(s')$  rather than an integral over states; the new notation reflects that we are now working in continuous states rather than discrete states.)

The main idea of fitted value iteration is that we are going to approximately carry out this step, over a finite sample of states  $s^{(1)}, \ldots, s^{(n)}$ . Specifically, we will use a supervised learning algorithm—linear regression in our description below—to approximate the value function as a linear or non-linear function of the states:

$$
V (s) = \theta^{T} \phi (s).
$$

Here,  $\phi$  is some appropriate feature mapping of the states.

For each state  $s$  in our finite sample of  $n$  states, fitted value iteration will first compute a quantity  $y^{(i)}$ , which will be our approximation to  $R(s) + \gamma \max_{a} \mathrm{E}_{s' \sim P_{sa}}[V(s')]$  (the right hand side of Equation 15.8). Then, it will apply a supervised learning algorithm to try to get  $V(s)$  close to  $R(s) + \gamma \max_{a} \mathrm{E}_{s' \sim P_{sa}}[V(s')]$  (or, in other words, to try to get  $V(s)$  close to  $y^{(i)}$ ).

In detail, the algorithm is as follows:

1. Randomly sample  $n$  states  $s^{(1)}, s^{(2)}, \ldots, s^{(n)} \in S$ .  
2. Initialize  $\theta \coloneqq 0$  
3. Repeat {

For  $i = 1,\ldots ,n$  {

```latex
For each action  $a\in A$  { Sample  $s_1^{\prime},\ldots ,s_k^{\prime}\sim P_{s^{(i)}a}$  (using a model of the MDP). Set  $q(a) = \frac{1}{k}\sum_{j = 1}^{k}R(s^{(i)}) + \gamma V(s_j')$  // Hence,  $q(a)$  is an estimate of  $R(s^{(i)})+$ $\gamma \mathrm{E}_{s^{\prime}\sim P_{s(i)a}}[V(s^{\prime})]$  . } Set  $y^{(i)} = \max_{a}q(a)$  // Hence,  $y^{(i)}$  is an estimate of  $R(s^{(i)})+$ $\gamma \max_{a}\operatorname{E}_{s^{\prime}\sim P_{s(i)a}}[V(s^{\prime})]$  . } // In the original value iteration algorithm (over discrete states) // we updated the value function according to  $V(s^{(i)})\coloneqq y^{(i)}$  // In this algorithm, we want  $V(s^{(i)})\approx y^{(i)}$  , which we'll achieve // using supervised learning (linear regression). Set  $\theta \coloneqq \arg \min_{\theta}\frac{1}{2}\sum_{i = 1}^{n}\left(\theta^{T}\phi (s^{(i)}) - y^{(i)}\right)^{2}$
```

Above, we had written out fitted value iteration using linear regression as the algorithm to try to make  $V(s^{(i)})$  close to  $y^{(i)}$ . That step of the algorithm is completely analogous to a standard supervised learning (regression) problem in which we have a training set  $(x^{(1)},y^{(1)}),(x^{(2)},y^{(2)}),\ldots ,(x^{(n)},y^{(n)})$ , and want to learn a function mapping from  $x$  to  $y$ ; the only difference is that here  $s$  plays the role of  $x$ . Even though our description above used linear regression, clearly other regression algorithms (such as locally weighted linear regression) can also be used.

Unlike value iteration over a discrete set of states, fitted value iteration cannot be proved to always to converge. However, in practice, it often does converge (or approximately converge), and works well for many problems. Note also that if we are using a deterministic simulator/model of the MDP, then fitted value iteration can be simplified by setting  $k = 1$  in the algorithm. This is because the expectation in Equation (15.8) becomes an expectation over a deterministic distribution, and so a single example is sufficient to exactly compute that expectation. Otherwise, in the algorithm above, we had to draw  $k$  samples, and average to try to approximate that expectation (see the definition of  $q(a)$ , in the algorithm pseudo-code).

Finally, fitted value iteration outputs  $V$ , which is an approximation to  $V^{*}$ . This implicitly defines our policy. Specifically, when our system is in some state  $s$ , and we need to choose an action, we would like to choose the action

$$
\arg \max_{a} \mathrm{E}_{s^{\prime} \sim P_{s a}} [ V (s^{\prime}) ] \tag {15.9}
$$

The process for computing/approximating this is similar to the inner-loop of fitted value iteration, where for each action, we sample  $s_1', \ldots, s_k' \sim P_{sa}$  to approximate the expectation. (And again, if the simulator is deterministic, we can set  $k = 1$ .)

In practice, there are often other ways to approximate this step as well. For example, one very common case is if the simulator is of the form  $s_{t+1} = f(s_t, a_t) + \epsilon_t$ , where  $f$  is some deterministic function of the states (such as  $f(s_t, a_t) = As_t + Ba_t$ ), and  $\epsilon$  is zero-mean Gaussian noise. In this case, we can pick the action given by

$$
\arg \max_{a} V (f (s, a)).
$$

In other words, here we are just setting  $\epsilon_t = 0$  (i.e., ignoring the noise in the simulator), and setting  $k = 1$ . Equivalent, this can be derived from Equation (15.9) using the approximation

$$
\begin{array}{l} \operatorname{E}_{s^{\prime}} \left[ V \left(s^{\prime}\right) \right] \approx V \left(\operatorname{E}_{s^{\prime}} \left[ s^{\prime} \right]\right) (15.10) \\ = V (f (s, a)), (15.11) \\ \end{array}
$$

where here the expectation is over the random  $s' \sim P_{sa}$ . So long as the noise terms  $\epsilon_t$  are small, this will usually be a reasonable approximation.

However, for problems that don't lend themselves to such approximations, having to sample  $k|A|$  states using the model, in order to approximate the expectation above, can be computationally expensive.

# 15.5 Connections between Policy and Value Iteration (Optional)

In the policy iteration, line 3 of Algorithm 5, we typically use linear system solver to compute  $V^{\pi}$ . Alternatively, one can also the iterative Bellman updates, similarly to the value iteration, to evaluate  $V^{\pi}$ , as in the Procedure VE( $\cdot$ ) in Line 1 of Algorithm 6 below. Here if we take option 1 in Line 2 of the Procedure VE, then the difference between the Procedure VE from the

# Algorithm 6 Variant of Policy Iteration

1: procedure  $\operatorname{VE}(\pi ,k)$  To evaluate  $V^{\pi}$  
2: Option 1: initialize  $V(s) \coloneqq 0$ ; Option 2: Initialize from the current  $V$  in the main algorithm.  
3: for  $i = 0$  to  $k - 1$  do  
4: For every state  $s$ , update

$$
V (s) := R (s) + \gamma \sum_{s^{\prime}} P_{s \pi (s)} \left(s^{\prime}\right) V \left(s^{\prime}\right). \tag {15.12}
$$

# return  $V$

5:

Require: hyperparameter  $k$ .

6: Initialize  $\pi$  randomly.  
7: for until convergence do  
8: Let  $V = \mathrm{VE}(\pi, k)$ .  
9: For each state  $s$ , let

$$
\pi (s) := \arg \max_{a \in A} \sum_{s^{\prime}} P_{s a} \left(s^{\prime}\right) V \left(s^{\prime}\right). \tag {15.13}
$$

value iteration (Algorithm 4) is that on line 4, the procedure is using the action from  $\pi$  instead of the greedy action.

Using the Procedure VE, we can build Algorithm 6, which is a variant of policy iteration that serves an intermediate algorithm that connects policy iteration and value iteration. Here we are going to use option 2 in VE to maximize the re-use of knowledge learned before. One can verify indeed that if we take  $k = 1$  and use option 2 in Line 2 in Algorithm 6, then Algorithm 6 is semantically equivalent to value iteration (Algorithm 4). In other words, both Algorithm 6 and value iteration interleave the updates in (15.13) and (15.12). Algorithm 6 alternate between  $k$  steps of update (15.12) and one step of (15.13), whereas value iteration alternates between 1 steps of update (15.12) and one step of (15.13). Therefore generally Algorithm 6 should not be faster than value iteration, because assuming that update (15.12) and (15.13) are equally useful and time-consuming, then the optimal balance of the update frequencies could be just  $k = 1$  or  $k \approx 1$ .

On the other hand, if  $k$  steps of update (15.12) can be done much faster than  $k$  times a single step of (15.12), then taking additional steps of equation (15.12) in group might be useful. This is what policy iteration is leveraging — the linear system solver can give us the result of Procedure VE with  $k = \infty$  much faster than using the Procedure VE for a large  $k$ . On the flip side, when such a speeding-up effect no longer exists, e.g., when the state space is large and linear system solver is also not fast, then value iteration is more preferable.

# Chapter 16

# LQR, DDP and LQG

# 16.1 Finite-horizon MDPs

In Chapter 15, we defined Markov Decision Processes (MDPs) and covered Value Iteration / Policy Iteration in a simplified setting. More specifically we introduced the optimal Bellman equation that defines the optimal value function  $V^{\pi^{*}}$  of the optimal policy  $\pi^{*}$ .

$$
V^{\pi^{*}} (s) = R (s) + \max_{a \in \mathcal {A}} \gamma \sum_{s^{\prime} \in S} P_{s a} (s^{\prime}) V^{\pi^{*}} (s^{\prime})
$$

Recall that from the optimal value function, we were able to recover the optimal policy  $\pi^{*}$  with

$$
\pi^{*} (s) = \operatorname{argmax}_{a \in \mathcal {A}} \sum_{s^{\prime} \in \mathcal {S}} P_{s a} (s^{\prime}) V^{*} (s^{\prime})
$$

In this chapter, we'll place ourselves in a more general setting:

1. We want to write equations that make sense for both the discrete and the continuous case. We'll therefore write

$\mathbb{E}_{s^{\prime}\sim P_{sa}}\left[V^{\pi^{*}}(s^{\prime})\right]$  instead of

$$
\sum_{s^{\prime} \in S} P_{s a} (s^{\prime}) V^{\pi^{*}} (s^{\prime})
$$

meaning that we take the expectation of the value function at the next state. In the finite case, we can rewrite the expectation as a sum over

states. In the continuous case, we can rewrite the expectation as an integral. The notation  $s' \sim P_{sa}$  means that the state  $s'$  is sampled from the distribution  $P_{sa}$ .

2. We'll assume that the rewards depend on both states and actions. In other words,  $R: \mathcal{S} \times \mathcal{A} \to \mathbb{R}$ . This implies that the previous mechanism for computing the optimal action is changed into

$$
\pi^{*} (s) = \operatorname * {a r g m a x}_{a \in \mathcal {A}} R (s, a) + \gamma \mathbb {E}_{s^{\prime} \sim P_{s a}} \left[ V^{\pi^{*}} (s^{\prime}) \right]
$$

3. Instead of considering an infinite horizon MDP, we'll assume that we have a finite horizon MDP that will be defined as a tuple

$$
(\mathcal {S}, \mathcal {A}, P_{s a}, T, R)
$$

with  $T > 0$  the time horizon (for instance  $T = 100$ ). In this setting, our definition of payoff is going to be (slightly) different:

$$
R (s_{0}, a_{0}) + R (s_{1}, a_{1}) + \dots + R (s_{T}, a_{T})
$$

instead of (infinite horizon case)

$$
\begin{array}{l} R (s_{0}, a_{0}) + \gamma R (s_{1}, a_{1}) + \gamma^{2} R (s_{2}, a_{2}) + \dots \\ \sum_{t = 0}^{\infty} R (s_{t}, a_{t}) \gamma^{t} \\ \end{array}
$$

What happened to the discount factor  $\gamma$ ? Remember that the introduction of  $\gamma$  was (partly) justified by the necessity of making sure that the infinite sum would be finite and well-defined. If the rewards are bounded by a constant  $\bar{R}$ , the payoff is indeed bounded by

$$
| \sum_{t = 0}^{\infty} R (s_{t}) \gamma^{t} | \leq \bar {R} \sum_{t = 0}^{\infty} \gamma^{t}
$$

and we recognize a geometric sum! Here, as the payoff is a finite sum, the discount factor  $\gamma$  is not necessary anymore.

In this new setting, things behave quite differently. First, the optimal policy  $\pi^{*}$  might be non-stationary, meaning that it changes over time. In other words, now we have

$$
\pi^{(t)}: \mathcal {S} \to \mathcal {A}
$$

where the superscript  $(t)$  denotes the policy at time step  $t$ . The dynamics of the finite horizon MDP following policy  $\pi^{(t)}$  proceeds as follows: we start in some state  $s_0$ , take some action  $a_0 \coloneqq \pi^{(0)}(s_0)$  according to our policy at time step 0. The MDP transitions to a successor  $s_1$ , drawn according to  $P_{s_0a_0}$ . Then, we get to pick another action  $a_1 \coloneqq \pi^{(1)}(s_1)$  following our new policy at time step 1 and so on...

Why does the optimal policy happen to be non-stationary in the finite-horizon setting? Intuitively, as we have a finite numbers of actions to take, we might want to adopt different strategies depending on where we are in the environment and how much time we have left. Imagine a grid with 2 goals with rewards  $+1$  and  $+10$ . At the beginning, we might want to take actions to aim for the  $+10$  goal. But if after some steps, dynamics somehow pushed us closer to the  $+1$  goal and we don't have enough steps left to be able to reach the  $+10$  goal, then a better strategy would be to aim for the  $+1$  goal...

4. This observation allows us to use time dependent dynamics

$$
s_{t + 1} \sim P_{s_{t}, a_{t}}^{(t)}
$$

meaning that the transition's distribution  $P_{s_t,a_t}^{(t)}$  changes over time. The same thing can be said about  $R^{(t)}$ . Note that this setting is a better model for real life. In a car, the gas tank empties, traffic changes, etc. Combining the previous remarks, we'll use the following general formulation for our finite horizon MDP

$$
\left(\mathcal {S}, \mathcal {A}, P_{s a}^{(t)}, T, R^{(t)}\right)
$$

Remark: notice that the above formulation would be equivalent to adding the time into the state.

The value function at time  $t$  for a policy  $\pi$  is then defined in the same way as before, as an expectation over trajectories generated following policy  $\pi$  starting in state  $s$ .

$$
V_{t} (s) = \mathbb {E} \left[ R^{(t)} (s_{t}, a_{t}) + \dots + R^{(T)} (s_{T}, a_{T}) | s_{t} = s, \pi \right]
$$

Now, the question is

In this finite-horizon setting, how do we find the optimal value function

$$
V_{t}^{*} (s) = \max_{\pi} V_{t}^{\pi} (s)
$$

It turns out that Bellman's equation for Value Iteration is made for Dynamic Programming. This may come as no surprise as Bellman is one of the fathers of dynamic programming and the Bellman equation is strongly related to the field. To understand how we can simplify the problem by adopting an iteration-based approach, we make the following observations:

1. Notice that at the end of the game (for time step  $T$ ), the optimal value is obvious

$$
\forall s \in \mathcal {S}: V_{T}^{*} (s) := \max_{a \in \mathcal {A}} R^{(T)} (s, a) \tag {16.1}
$$

2. For another time step  $0 \leq t < T$ , if we suppose that we know the optimal value function for the next time step  $V_{t+1}^{*}$ , then we have

$$
\forall t <   T, s \in \mathcal {S}: V_{t}^{*} (s) := \max_{a \in \mathcal {A}} \left[ R^{(t)} (s, a) + \mathbb {E}_{s^{\prime} \sim P_{s a}^{(t)}} \left[ V_{t + 1}^{*} (s^{\prime}) \right] \right] (1 6. 2)
$$

With these observations in mind, we can come up with a clever algorithm to solve for the optimal value function:

1. compute  $V_T^*$  using equation (16.1).  
2. for  $t = T - 1,\dots ,0$

compute  $V_{t}^{*}$  using  $V_{t + 1}^{*}$  using equation (16.2)

Side note We can interpret standard value iteration as a special case of this general case, but without keeping track of time. It turns out that in the standard setting, if we run value iteration for  $\mathrm{T}$  steps, we get a  $\gamma^T$  approximation of the optimal value iteration (geometric convergence). See problem set 4 for a proof of the following result:

Theorem Let  $B$  denote the Bellman update and  $||f(x)||_{\infty} \coloneqq \sup_x |f(x)|$ . If  $V_t$  denotes the value function at the  $t$ -th step, then

$$
\begin{array}{l} \left| \left| V_{t + 1} - V^{*} \right| \right|_{\infty} = \left| \left| B \left(V_{t}\right) - V^{*} \right| \right|_{\infty} \\ \leq \gamma | | V_{t} - V^{*} | |_{\infty} \\ \leq \gamma^{t} | | V_{1} - V^{*} | |_{\infty} \\ \end{array}
$$

In other words, the Bellman operator  $B$  is a  $\gamma$ -contracting operator.

# 16.2 Linear Quadratic Regulation (LQR)

In this section, we'll cover a special case of the finite-horizon setting described in Section 16.1, for which the exact solution is (easily) tractable. This model is widely used in robotics, and a common technique in many problems is to reduce the formulation to this framework.

First, let's describe the model's assumptions. We place ourselves in the continuous setting, with

$$
\mathcal {S} = \mathbb {R}^{d}, \mathcal {A} = \mathbb {R}^{d}
$$

and we'll assume linear transitions (with noise)

$$
s_{t + 1} = A_{t} s_{t} + B_{t} a_{t} + w_{t}
$$

where  $A_{t} \in R^{d \times d}, B_{t} \in R^{d \times d}$  are matrices and  $w_{t} \sim \mathcal{N}(0, \Sigma_{t})$  is some gaussian noise (with zero mean). As we'll show in the following paragraphs, it turns out that the noise, as long as it has zero mean, does not impact the optimal policy!

We'll also assume quadratic rewards

$$
R^{(t)} (s_{t}, a_{t}) = - s_{t}^{\top} U_{t} s_{t} - a_{t}^{\top} W_{t} a_{t}
$$

where  $U_{t} \in R^{d \times n}$ ,  $W_{t} \in R^{d \times d}$  are positive definite matrices (meaning that the reward is always negative).

Remark Note that the quadratic formulation of the reward is equivalent to saying that we want our state to be close to the origin (where the reward is higher). For example, if  $U_{t} = I_{d}$  (the identity matrix) and  $W_{t} = I_{d}$ , then  $R_{t} = -||s_{t}||^{2} - ||a_{t}||^{2}$ , meaning that we want to take smooth actions (small norm of  $a_{t}$ ) to go back to the origin (small norm of  $s_{t}$ ). This could model a car trying to stay in the middle of lane without making impulsive moves...

Now that we have defined the assumptions of our LQR model, let's cover the 2 steps of the LQR algorithm

step 1 suppose that we don't know the matrices  $A, B, \Sigma$ . To estimate them, we can follow the ideas outlined in the Value Approximation section of the RL notes. First, collect transitions from an arbitrary policy. Then, use linear regression to find  $\operatorname{argmin}_{A,B} \sum_{i=1}^{n} \sum_{t=0}^{T-1} \left\| s_{t+1}^{(i)} - \left( As_t^{(i)} + Ba_t^{(i)} \right) \right\|^2$ . Finally, use a technique seen in Gaussian Discriminant Analysis to learn  $\Sigma$ .

step 2 assuming that the parameters of our model are known (given or estimated with step 1), we can derive the optimal policy using dynamic programming.

In other words, given

$$
\left\{ \begin{array}{l l} s_{t + 1} & = A_{t} s_{t} + B_{t} a_{t} + w_{t} \\ R^{(t)} (s_{t}, a_{t}) & = - s_{t}^{\top} U_{t} s_{t} - a_{t}^{\top} W_{t} a_{t} \end{array} \right. \quad A_{t}, B_{t}, U_{t}, W_{t}, \Sigma_{t} \mathrm{known}
$$

we want to compute  $V_{t}^{*}$ . If we go back to section 16.1, we can apply dynamic programming, which yields

# 1. Initialization step

For the last time step  $T$

$$
\begin{array}{l} V_{T}^{*} (s_{T}) = \max_{a_{T} \in \mathcal {A}} R_{T} (s_{T}, a_{T}) \\ = \max_{a_{T} \in \mathcal {A}} - s_{T}^{\top} U_{T} s_{T} - a_{T}^{\top} W_{t} a_{T} \\ = - s_{T}^{\top} U_{t} s_{T} \quad (\text{maximizedfor} a_{T} = 0) \\ \end{array}
$$

# 2. Recurrence step

Let  $t < T$ . Suppose we know  $V_{t + 1}^{*}$ .

Fact 1: It can be shown that if  $V_{t+1}^{*}$  is a quadratic function in  $s_t$ , then  $V_t^*$  is also a quadratic function. In other words, there exists some matrix  $\Phi$  and some scalar  $\Psi$  such that

$$
\begin{array}{l} \mathrm{if} V_{t + 1}^{*} (s_{t + 1}) = s_{t + 1}^{\top} \Phi_{t + 1} s_{t + 1} + \Psi_{t + 1} \\ \mathrm{then} V_{t}^{*} (s_{t}) = s_{t}^{\top} \Phi_{t} s_{t} + \Psi_{t} \\ \end{array}
$$

For time step  $t = T$ , we had  $\Phi_t = -U_T$  and  $\Psi_T = 0$ .

Fact 2: We can show that the optimal policy is just a linear function of the state.

Knowing  $V_{t+1}^{*}$  is equivalent to knowing  $\Phi_{t+1}$  and  $\Psi_{t+1}$ , so we just need to explain how we compute  $\Phi_t$  and  $\Psi_t$  from  $\Phi_{t+1}$  and  $\Psi_{t+1}$  and the other parameters of the problem.

$$
\begin{array}{l} V_{t}^{*} (s_{t}) = s_{t}^{\top} \Phi_{t} s_{t} + \Psi_{t} \\ = \max_{a_{t}} \left[ R^{(t)} \left(s_{t}, a_{t}\right) + \mathbb {E}_{s_{t + 1} \sim P_{s_{t}, a_{t}}^{(t)}} \left[ V_{t + 1}^{*} \left(s_{t + 1}\right) \right] \right] \\ = \max_{a_{t}} \left[ - s_{t}^{\top} U_{t} s_{t} - a_{t}^{\top} V_{t} a_{t} + \mathbb {E}_{s_{t + 1} \sim \mathcal {N} (A_{t} s_{t} + B_{t} a_{t}, \Sigma_{t})} [ s_{t + 1}^{\top} \Phi_{t + 1} s_{t + 1} + \Psi_{t + 1} ] \right] \\ \end{array}
$$

where the second line is just the definition of the optimal value function and the third line is obtained by plugging in the dynamics of our model along with the quadratic assumption. Notice that the last expression is a quadratic function in  $a_{t}$  and can thus be (easily) optimized<sup>1</sup>. We get the optimal action  $a_{t}^{*}$

$$
\begin{array}{l} a_{t}^{*} = \left[ (B_{t}^{\top} \Phi_{t + 1} B_{t} - V_{t})^{- 1} B_{t} \Phi_{t + 1} A_{t} \right] \cdot s_{t} \\ = L_{t} \cdot s_{t} \\ \end{array}
$$

where

$$
L_{t} := \left[ \left(B_{t}^{\top} \Phi_{t + 1} B_{t} - W_{t}\right)^{- 1} B_{t} \Phi_{t + 1} A_{t} \right]
$$

which is an impressive result: our optimal policy is linear in  $s_t$ . Given  $a_t^*$  we can solve for  $\Phi_t$  and  $\Psi_t$ . We finally get the Discrete Ricatti equations

$$
\Phi_{t} = A_{t}^{\top} \left(\Phi_{t + 1} - \Phi_{t + 1} B_{t} \left(B_{t}^{\top} \Phi_{t + 1} B_{t} - W_{t}\right)^{- 1} B_{t} \Phi_{t + 1}\right) A_{t} - U_{t}
$$

$$
\Psi_{t} = - \operatorname{tr} \left(\Sigma_{t} \Phi_{t + 1}\right) + \Psi_{t + 1}
$$

Fact 3: we notice that  $\Phi_t$  depends on neither  $\Psi$  nor the noise  $\Sigma_t!$  As  $L_t$  is a function of  $A_t, B_t$  and  $\Phi_{t+1}$ , it implies that the optimal policy also does not depend on the noise! (But  $\Psi_t$  does depend on  $\Sigma_t$ , which implies that  $V_t^*$  depends on  $\Sigma_t$ .)

Then, to summarize, the LQR algorithm works as follows

1. (if necessary) estimate parameters  $A_{t},B_{t},\Sigma_{t}$  
2. initialize  $\Phi_T\coloneqq -U_T$  and  $\Psi_T\coloneqq 0$  
3. iterate from  $t = T - 1 \ldots 0$  to update  $\Phi_t$  and  $\Psi_t$  using  $\Phi_{t+1}$  and  $\Psi_{t+1}$  using the discrete Ricatti equations. If there exists a policy that drives the state towards zero, then convergence is guaranteed!

Using Fact 3, we can be even more clever and make our algorithm run (slightly) faster! As the optimal policy does not depend on  $\Psi_t$ , and the update of  $\Phi_t$  only depends on  $\Phi_t$ , it is sufficient to update only  $\Phi_t$ .

# 16.3 From non-linear dynamics to LQR

It turns out that a lot of problems can be reduced to LQR, even if dynamics are non-linear. While LQR is a nice formulation because we are able to come up with a nice exact solution, it is far from being general. Let's take for instance the case of the inverted pendulum. The transitions between states look like

$$
\left( \begin{array}{c} x_{t + 1} \\ \dot {x}_{t + 1} \\ \theta_{t + 1} \\ \dot {\theta}_{t + 1} \end{array} \right) = F \left(\left( \begin{array}{c} x_{t} \\ \dot {x}_{t} \\ \theta_{t} \\ \dot {\theta}_{t} \end{array} \right), a_{t}\right)
$$

where the function  $F$  depends on the cos of the angle etc. Now, the question we may ask is

Can we linearize this system?

# 16.3.1 Linearization of dynamics

Let's suppose that at time  $t$ , the system spends most of its time in some state  $\bar{s}_t$  and the actions we perform are around  $\bar{a}_t$ . For the inverted pendulum, if we reached some kind of optimal, this is true: our actions are small and we don't deviate much from the vertical.

We are going to use Taylor expansion to linearize the dynamics. In the simple case where the state is one-dimensional and the transition function  $F$  does not depend on the action, we would write something like

$$
s_{t + 1} = F (s_{t}) \approx F (\bar {s}_{t}) + F^{\prime} (\bar {s}_{t}) \cdot (s_{t} - \bar {s}_{t})
$$

In the more general setting, the formula looks the same, with gradients instead of simple derivatives

$$
s_{t + 1} \approx F (\bar {s}_{t}, \bar {a}_{t}) + \nabla_{s} F (\bar {s}_{t}, \bar {a}_{t}) \cdot (s_{t} - \bar {s}_{t}) + \nabla_{a} F (\bar {s}_{t}, \bar {a}_{t}) \cdot (a_{t} - \bar {a}_{t}) \qquad (1 6. 3)
$$

and now,  $s_{t+1}$  is linear in  $s_t$  and  $a_t$ , because we can rewrite equation (16.3) as

$$
s_{t + 1} \approx A s_{t} + B s_{t} + \kappa
$$

where  $\kappa$  is some constant and  $A, B$  are matrices. Now, this writing looks awfully similar to the assumptions made for LQR. We just have to get rid of the constant term  $\kappa$ ! It turns out that the constant term can be absorbed into  $s_t$  by artificially increasing the dimension by one. This is the same trick that we used at the beginning of the class for linear regression...

# 16.3.2 Differential Dynamic Programming (DDP)

The previous method works well for cases where the goal is to stay around some state  $s^*$  (think about the inverted pendulum, or a car having to stay in the middle of a lane). However, in some cases, the goal can be more complicated.

We'll cover a method that applies when our system has to follow some trajectory (think about a rocket). This method is going to discretize the trajectory into discrete time steps, and create intermediary goals around which we will be able to use the previous technique! This method is called Differential Dynamic Programming. The main steps are

step 1 come up with a nominal trajectory using a naive controller, that approximate the trajectory we want to follow. In other words, our controller is able to approximate the gold trajectory with

$$
s_{0}^{*}, a_{0}^{*} \rightarrow s_{1}^{*}, a_{1}^{*} \rightarrow \ldots
$$

step 2 linearize the dynamics around each trajectory point  $s_t^*$ , in other words

$$
s_{t + 1} \approx F (s_{t}^{*}, a_{t}^{*}) + \nabla_{s} F (s_{t}^{*}, a_{t}^{*}) (s_{t} - s_{t}^{*}) + \nabla_{a} F (s_{t}^{*}, a_{t}^{*}) (a_{t} - a_{t}^{*})
$$

where  $s_t, a_t$  would be our current state and action. Now that we have a linear approximation around each of these points, we can use the previous section and rewrite

$$
s_{t + 1} = A_{t} \cdot s_{t} + B_{t} \cdot a_{t}
$$

(notice that in that case, we use the non-stationary dynamics setting that we mentioned at the beginning of these lecture notes)

Note We can apply a similar derivation for the reward  $R^{(t)}$ , with a second-order Taylor expansion.

$$
\begin{array}{l} R \left(s_{t}, a_{t}\right) \approx R \left(s_{t}^{*}, a_{t}^{*}\right) + \nabla_{s} R \left(s_{t}^{*}, a_{t}^{*}\right) \left(s_{t} - s_{t}^{*}\right) + \nabla_{a} R \left(s_{t}^{*}, a_{t}^{*}\right) \left(a_{t} - a_{t}^{*}\right) \\ + \frac{1}{2} (s_{t} - s_{t}^{*})^{\top} H_{s s} (s_{t} - s_{t}^{*}) + (s_{t} - s_{t}^{*})^{\top} H_{s a} (a_{t} - a_{t}^{*}) \\ + \frac{1}{2} (a_{t} - a_{t}^{*})^{\top} H_{a a} (a_{t} - a_{t}^{*}) \\ \end{array}
$$

where  $H_{xy}$  refers to the entry of the Hessian of  $R$  with respect to  $x$  and  $y$  evaluated in  $(s_t^*, a_t^*)$  (omitted for readability). This expression can be re-written as

$$
R_{t} (s_{t}, a_{t}) = - s_{t}^{\top} U_{t} s_{t} - a_{t}^{\top} W_{t} a_{t}
$$

for some matrices  $U_{t}, W_{t}$ , with the same trick of adding an extra dimension of ones. To convince yourself, notice that

$$
\left( \begin{array}{c c} 1 & x \end{array} \right) \cdot \left( \begin{array}{c c} a & b \\ b & c \end{array} \right) \cdot \left( \begin{array}{c} 1 \\ x \end{array} \right) = a + 2 b x + c x^{2}
$$

step 3 Now, you can convince yourself that our problem is strictly re-written in the LQR framework. Let's just use LQR to find the optimal policy  $\pi_t$ . As a result, our new controller will (hopefully) be better!

Note: Some problems might arise if the LQR trajectory deviates too much from the linearized approximation of the trajectory, but that can be fixed with reward-shaping...

step 4 Now that we get a new controller (our new policy  $\pi_t$ ), we use it to produce a new trajectory

$$
s_{0}^{*}, \pi_{0} \big (s_{0}^{*} \big) \rightarrow s_{1}^{*}, \pi_{1} \big (s_{1}^{*} \big) \rightarrow \ldots \rightarrow s_{T}^{*}
$$

note that when we generate this new trajectory, we use the real  $F$  and not its linear approximation to compute transitions, meaning that

$$
s_{t + 1}^{*} = F (s_{t}^{*}, a_{t}^{*})
$$

then, go back to step 2 and repeat until some stopping criterion.

# 16.4 Linear Quadratic Gaussian (LQG)

Often, in the real world, we don't get to observe the full state  $s_t$ . For example, an autonomous car could receive an image from a camera, which is merely an observation, and not the full state of the world. So far, we assumed that the state was available. As this might not hold true for most of the real-world problems, we need a new tool to model this situation: Partially Observable MDPs.

A POMDP is an MDP with an extra observation layer. In other words, we introduce a new variable  $o_{t}$ , that follows some conditional distribution given the current state  $s_{t}$

$$
o_{t} | s_{t} \sim O (o | s)
$$

Formally, a finite-horizon POMDP is given by a tuple

$$
(\mathcal {S}, \mathcal {O}, \mathcal {A}, P_{s a}, T, R)
$$

Within this framework, the general strategy is to maintain a belief state (distribution over states) based on the observation  $o_1, \ldots, o_t$ . Then, a policy in a POMDP maps this belief states to actions.

In this section, we'll present a extension of LQR to this new setting. Assume that we observe  $y_{t} \in \mathbb{R}^{n}$  with  $m < n$  such that

$$
\left\{ \begin{array}{l l} y_{t} & = C \cdot s_{t} + v_{t} \\ s_{t + 1} & = A \cdot s_{t} + B \cdot a_{t} + w_{t} \end{array} \right.
$$

where  $C \in R^{n \times d}$  is a compression matrix and  $v_{t}$  is the sensor noise (also gaussian, like  $w_{t}$ ). Note that the reward function  $R^{(t)}$  is left unchanged, as a function of the state (not the observation) and action. Also, as distributions are gaussian, the belief state is also going to be gaussian. In this new framework, let's give an overview of the strategy we are going to adopt to find the optimal policy:

step 1 first, compute the distribution on the possible states (the belief state), based on the observations we have. In other words, we want to compute the mean  $s_{t|t}$  and the covariance  $\Sigma_{t|t}$  of

$$
s_{t} | y_{1}, \ldots , y_{t} \sim \mathcal {N} \left(s_{t | t}, \Sigma_{t | t}\right)
$$

to perform the computation efficiently over time, we'll use the Kalman Filter algorithm (used on-board Apollo Lunar Module!).

step 2 now that we have the distribution, we'll use the mean  $s_{t|t}$  as the best approximation for  $s_t$

step 3 then set the action  $a_{t} \coloneqq L_{t}s_{t|t}$  where  $L_{t}$  comes from the regular LQR algorithm.

Intuitively, to understand why this works, notice that  $s_{t|t}$  is a noisy approximation of  $s_t$  (equivalent to adding more noise to LQR) but we proved that LQR is independent of the noise!

Step 1 needs to be explicated. We'll cover a simple case where there is no action dependence in our dynamics (but the general case follows the same idea). Suppose that

$$
\left\{ \begin{array}{l l} s_{t + 1} & = A \cdot s_{t} + w_{t}, \quad w_{t} \sim N (0, \Sigma_{s}) \\ y_{t} & = C \cdot s_{t} + v_{t}, \quad v_{t} \sim N (0, \Sigma_{y}) \end{array} \right.
$$

As noises are Gaussians, we can easily prove that the joint distribution is also Gaussian

$$
\left( \begin{array}{c} s_{1} \\ \vdots \\ s_{t} \\ y_{1} \\ \vdots \\ y_{t} \end{array} \right) \sim \mathcal {N} (\mu , \Sigma) \qquad \text{forsome} \mu , \Sigma
$$

then, using the marginal formulas of gaussians (see Factor Analysis notes), we would get

$$
s_{t} | y_{1}, \ldots , y_{t} \sim \mathcal {N} \left(s_{t | t}, \Sigma_{t | t}\right)
$$

However, computing the marginal distribution parameters using these formulas would be computationally expensive! It would require manipulating matrices of shape  $t \times t$ . Recall that inverting a matrix can be done in  $O(t^3)$ , and it would then have to be repeated over the time steps, yielding a cost in  $O(t^4)!$

The Kalman filter algorithm provides a much better way of computing the mean and variance, by updating them over time in constant time in  $t!$ . The kalman filter is based on two basics steps. Assume that we know the distribution of  $s_t | y_1, \ldots, y_t$ :

predict step compute  $s_{t + 1}|y_1,\ldots ,y_t$

update step compute  $s_{t + 1}|y_1,\ldots ,y_{t + 1}$

and iterate over time steps! The combination of the predict and update steps updates our belief states. In other words, the process looks like

$$
\left(s_{t} \mid y_{1}, \dots , y_{t}\right) \xrightarrow {\text{predict}} \left(s_{t + 1} \mid y_{1}, \dots , y_{t}\right) \xrightarrow {\text{update}} \left(s_{t + 1} \mid y_{1}, \dots , y_{t + 1}\right) \xrightarrow {\text{predict}} \dots
$$

predict step Suppose that we know the distribution of

$$
s_{t} | y_{1}, \dots , y_{t} \sim \mathcal {N} \left(s_{t | t}, \Sigma_{t | t}\right)
$$

then, the distribution over the next state is also a gaussian distribution

$$
s_{t + 1} \mid y_{1}, \dots , y_{t} \sim \mathcal {N} \left(s_{t + 1 \mid t}, \Sigma_{t + 1 \mid t}\right)
$$

where

$$
\left\{ \begin{array}{l l} s_{t + 1 | t} & = A \cdot s_{t | t} \\ \Sigma_{t + 1 | t} & = A \cdot \Sigma_{t | t} \cdot A^{\top} + \Sigma_{s} \end{array} \right.
$$

update step given  $s_{t + 1|t}$  and  $\Sigma_{t + 1|t}$  such that

$$
s_{t + 1} | y_{1}, \dots , y_{t} \sim \mathcal {N} \left(s_{t + 1 | t}, \Sigma_{t + 1 | t}\right)
$$

we can prove that

$$
s_{t + 1} | y_{1}, \dots , y_{t + 1} \sim \mathcal {N} \left(s_{t + 1 | t + 1}, \Sigma_{t + 1 | t + 1}\right)
$$

where

$$
\left\{ \begin{array}{l l} s_{t + 1 | t + 1} & = s_{t + 1 | t} + K_{t} (y_{t + 1} - C s_{t + 1 | t}) \\ \Sigma_{t + 1 | t + 1} & = \Sigma_{t + 1 | t} - K_{t} \cdot C \cdot \Sigma_{t + 1 | t} \end{array} \right.
$$

with

$$
K_{t} := \Sigma_{t + 1 | t} C^{\top} (C \Sigma_{t + 1 | t} C^{\top} + \Sigma_{y})^{- 1}
$$

The matrix  $K_{t}$  is called the Kalman gain.

Now, if we have a closer look at the formulas, we notice that we don't need the observations prior to time step  $t$ ! The update steps only depends on the previous distribution. Putting it all together, the algorithm first runs a forward pass to compute the  $K_{t}$ ,  $\Sigma_{t|t}$  and  $s_{t|t}$  (sometimes referred to as  $\hat{s}$  in the literature). Then, it runs a backward pass (the LQR updates) to compute the quantities  $\Psi_{t}$ ,  $\Psi_{t}$  and  $L_{t}$ . Finally, we recover the optimal policy with  $a_{t}^{*} = L_{t}s_{t|t}$ .

# Chapter 17

# Policy Gradient (REINFORCE)

We will present a model-free algorithm called REINFORCE that does not require the notion of value functions and  $Q$  functions. It turns out to be more convenient to introduce REINFORCE in the finite horizon case, which will be assumed throughout this note: we use  $\tau = (s_0, a_0, \ldots, s_{T-1}, a_{T-1}, s_T)$  to denote a trajectory, where  $T < \infty$  is the length of the trajectory. Moreover, REINFORCE only applies to learning a randomized policy. We use  $\pi_\theta(a|s)$  to denote the probability of the policy  $\pi_\theta$  outputting the action  $a$  at state  $s$ . The other notations will be the same as in previous lecture notes.

The advantage of applying REINFORCE is that we only need to assume that we can sample from the transition probabilities  $\{P_{sa}\}$  and can query the reward function  $R(s, a)$  at state  $s$  and action  $a$ , but we do not need to know the analytical form of the transition probabilities or the reward function. We do not explicitly learn the transition probabilities or the reward function either.

Let  $s_0$  be sampled from some distribution  $\mu$ . We consider optimizing the expected total payoff of the policy  $\pi_{\theta}$  over the parameter  $\theta$  defined as.

$$
\eta (\theta) \triangleq \operatorname{E} \left[ \sum_{t = 0}^{T - 1} \gamma^{t} R (s_{t}, a_{t}) \right] \tag {17.1}
$$

Recall that  $s_t \sim P_{s_{t-1}a_{t-1}}$  and  $a_t \sim \pi_\theta(\cdot|s_t)$ . Also note that  $\eta(\theta) = \operatorname{E}_{s_0 \sim P}[V^{\pi_\theta}(s_0)]$  if we ignore the difference between finite and infinite horizon.

We aim to use gradient ascent to maximize  $\eta(\theta)$ . The main challenge we face here is to compute (or estimate) the gradient of  $\eta(\theta)$  without the knowledge of the form of the reward function and the transition probabilities.

Let  $P_{\theta}(\tau)$  denote the distribution of  $\tau$  (generated by the policy  $\pi_{\theta}$ ), and let  $f(\tau) = \sum_{t=0}^{T-1} \gamma^t R(s_t, a_t)$ . We can rewrite  $\eta(\theta)$  as

$$
\eta (\theta) = \operatorname{E}_{\tau \sim P_{\theta}} [ f (\tau) ] \tag {17.2}
$$

We face a similar situation in the variational auto-encoder (VAE) setting covered in the previous lectures, where the we need to take the gradient w.r.t to a variable that shows up under the expectation — the distribution  $P_{\theta}$  depends on  $\theta$ . Recall that in VAE, we used the re-parametrization techniques to address this problem. However it does not apply here because we do know not how to compute the gradient of the function  $f$ . (We only have an efficient way to evaluate the function  $f$  by taking a weighted sum of the observed rewards, but we do not necessarily know the reward function itself to compute the gradient.)

The REINFORCE algorithm uses an another approach to estimate the gradient of  $\eta (\theta)$ . We start with the following derivation:

$$
\begin{array}{l} \nabla_{\theta} \mathrm{E}_{\tau \sim P_{\theta}} [ f (\tau) ] = \nabla_{\theta} \int P_{\theta} (\tau) f (\tau) d \tau \\ = \int \nabla_{\theta} (P_{\theta} (\tau) f (\tau)) d \tau \quad \text{(swapintegrationwithgradient)} \\ = \int (\nabla_{\theta} P_{\theta} (\tau)) f (\tau) d \tau \quad (b e c a u e f d o e s n o t d e p e n d o n \theta) \\ = \int P_{\theta} (\tau) \left(\nabla_{\theta} \log P_{\theta} (\tau)\right) f (\tau) d \tau \\ \left(\mathrm{because} \nabla \log P_{\theta} (\tau) = \frac{\nabla P_{\theta} (\tau)}{P_{\theta} (\tau)}\right) \\ = \operatorname{E}_{\tau \sim P_{\theta}} \left[ \left(\nabla_{\theta} \log P_{\theta} (\tau)\right) f (\tau) \right] \tag {17.3} \\ \end{array}
$$

Now we have a sample-based estimator for  $\nabla_{\theta}\mathrm{E}_{\tau \sim P_{\theta}}[f(\tau)]$ . Let  $\tau^{(1)},\ldots ,\tau^{(n)}$  be  $n$  empirical samples from  $P_{\theta}$  (which are obtained by running the policy  $\pi_{\theta}$  for  $n$  times, with  $T$  steps for each run). We can estimate the gradient of  $\eta (\theta)$  by

$$
\begin{array}{l} \nabla_{\theta} \mathrm{E}_{\tau \sim P_{\theta}} [ f (\tau) ] = \mathrm{E}_{\tau \sim P_{\theta}} [ (\nabla_{\theta} \log P_{\theta} (\tau)) f (\tau) ] (17.4) \\ \approx \frac{1}{n} \sum_{i = 1}^{n} (\nabla_{\theta} \log P_{\theta} (\tau^{(i)})) f (\tau^{(i)}) (17.5) \\ \end{array}
$$

The next question is how to compute  $\log P_{\theta}(\tau)$ . We derive an analytical formula for  $\log P_{\theta}(\tau)$  and compute its gradient w.r.t  $\theta$  (using autodifferentiation). Using the definition of  $\tau$ , we have

$$
P_{\theta} (\tau) = \mu (s_{0}) \pi_{\theta} (a_{0} | s_{0}) P_{s_{0} a_{0}} (s_{1}) \pi_{\theta} (a_{1} | s_{1}) P_{s_{1} a_{1}} (s_{2}) \dots P_{s_{T - 1} a_{T - 1}} (s_{T}) \quad (1 7. 6)
$$

Here recall that  $\mu$  to used to denote the density of the distribution of  $s_0$ . It follows that

$$
\begin{array}{l} \log P_{\theta} (\tau) = \log \mu (s_{0}) + \log \pi_{\theta} (a_{0} | s_{0}) + \log P_{s_{0} a_{0}} (s_{1}) + \log \pi_{\theta} (a_{1} | s_{1}) \\ + \log P_{s_{1} a_{1}} (s_{2}) + \dots + \log P_{s_{T - 1} a_{T - 1}} (s_{T}) \tag {17.7} \\ \end{array}
$$

Taking gradient w.r.t to  $\theta$ , we obtain

$$
\nabla_{\theta} \log P_{\theta} (\tau) = \nabla_{\theta} \log \pi_{\theta} (a_{0} | s_{0}) + \nabla_{\theta} \log \pi_{\theta} (a_{1} | s_{1}) + \dots + \nabla_{\theta} \log \pi_{\theta} (a_{T - 1} | s_{T - 1})
$$

Note that many of the terms disappear because they don't depend on  $\theta$  and thus have zero gradients. (This is somewhat important — we don't know how to evaluate those terms such as  $\log P_{s_0a_0}(s_1)$  because we don't have access to the transition probabilities, but luckily those terms have zero gradients!)

Plugging the equation above into equation (17.4), we conclude that

$$
\begin{array}{l} \nabla_{\theta} \eta (\theta) = \nabla_{\theta} \mathrm{E}_{\tau \sim P_{\theta}} [ f (\tau) ] = \mathrm{E}_{\tau \sim P_{\theta}} \left[ \left(\sum_{t = 0}^{T - 1} \nabla_{\theta} \log \pi_{\theta} (a_{t} | s_{t})\right) \cdot f (\tau) \right] \\ = \mathrm{E}_{\tau \sim P_{\theta}} \left[ \left(\sum_{t = 0}^{T - 1} \nabla_{\theta} \log \pi_{\theta} \left(a_{t} \mid s_{t}\right)\right) \cdot \left(\sum_{t = 0}^{T - 1} \gamma^{t} R \left(s_{t}, a_{t}\right)\right) \right] \tag {17.8} \\ \end{array}
$$

We estimate the RHS of the equation above by empirical sample trajectories, and the estimate is unbiased. The vanilla REINFORCE algorithm iteratively updates the parameter by gradient ascent using the estimated gradients.

Interpretation of the policy gradient formula (17.8). The quantity  $\nabla_{\theta}P_{\theta}(\tau) = \sum_{t = 0}^{T - 1}\nabla_{\theta}\log \pi_{\theta}(a_t|s_t)$  is intuitively the direction of the change of  $\theta$  that will make the trajectory  $\tau$  more likely to occur (or increase the probability of choosing action  $a_0,\ldots ,a_{t - 1}$ ), and  $f(\tau)$  is the total payoff of this trajectory. Thus, by taking a gradient step, intuitively we are trying to improve the likelihood of all the trajectories, but with a different emphasis or weight for each  $\tau$  (or for each set of actions  $a_0,a_1,\dots ,a_{t - 1}$ ). If  $\tau$  is very rewarding (that is,  $f(\tau)$  is large), we try very hard to move in the direction

that can increase the probability of the trajectory  $\tau$  (or the direction that increases the probability of choosing  $a_0, \ldots, a_{t-1}$ ), and if  $\tau$  has low payoff, we try less hard with a smaller weight.

An interesting fact that follows from formula (17.3) is that

$$
\mathrm{E}_{\tau \sim P_{\theta}} \left[ \sum_{t = 0}^{T - 1} \nabla_{\theta} \log \pi_{\theta} (a_{t} | s_{t}) \right] = 0 \tag {17.9}
$$

To see this, we take  $f(\tau) = 1$  (that is, the reward is always a constant), then the LHS of (17.8) is zero because the payoff is always a fixed constant  $\sum_{t=0}^{T} \gamma^t$ . Thus the RHS of (17.8) is also zero, which implies (17.9).

In fact, one can verify that  $\mathrm{E}_{a_t\sim \pi_\theta (\cdot |s_t)}\nabla_\theta \log \pi_\theta (a_t|s_t) = 0$  for any fixed  $t$  and  $s_t$ . This fact has two consequences. First, we can simplify formula (17.8) to

$$
\begin{array}{l} \nabla_{\theta} \eta (\theta) = \sum_{t = 0}^{T - 1} \mathrm{E}_{\tau \sim P_{\theta}} \left[ \nabla_{\theta} \log \pi_{\theta} (a_{t} | s_{t}) \cdot \left(\sum_{j = 0}^{T - 1} \gamma^{j} R (s_{j}, a_{j})\right) \right] \\ = \sum_{t = 0}^{T - 1} \mathrm{E}_{\tau \sim P_{\theta}} \left[ \nabla_{\theta} \log \pi_{\theta} \left(a_{t} \mid s_{t}\right) \cdot \left(\sum_{j \geq t}^{T - 1} \gamma^{j} R \left(s_{j}, a_{j}\right)\right) \right] \tag {17.10} \\ \end{array}
$$

where the second equality follows from

$$
\begin{array}{l} \mathrm{E}_{\tau \sim P_{\theta}} \left[ \nabla_{\theta} \log \pi_{\theta} (a_{t} | s_{t}) \cdot \left(\sum_{0 \leq j <   t} \gamma^{j} R (s_{j}, a_{j})\right) \right] \\ = \operatorname{E} \left[ \operatorname{E} \left[ \nabla_{\theta} \log \pi_{\theta} (a_{t} | s_{t}) | s_{0}, a_{0}, \dots , s_{t - 1}, a_{t - 1}, s_{t} \right] \cdot \left(\sum_{0 \leq j <   t} \gamma^{j} R (s_{j}, a_{j})\right) \right] \\ = 0 \qquad \mathrm{(becauseE} \left[ \nabla_{\theta} \log \pi_{\theta} (a_{t} | s_{t}) | s_{0}, a_{0}, \ldots , s_{t - 1}, a_{t - 1}, s_{t} \right] = 0) \\ \end{array}
$$

Note that here we used the law of total expectation. The outer expectation in the second line above is over the randomness of  $s_0, a_0, \ldots, a_{t-1}, s_t$ , whereas the inner expectation is over the randomness of  $a_t$  (conditioned on  $s_0, a_0, \ldots, a_{t-1}, s_t$ .) We see that we've made the estimator slightly simpler. The second consequence of  $\mathrm{E}_{a_t \sim \pi_\theta(\cdot|s_t)} \nabla_\theta \log \pi_\theta(a_t|s_t) = 0$  is the following: for any value  $B(s_t)$  that only depends on  $s_t$ , it holds that

$$
\begin{array}{l} \operatorname{E}_{\tau \sim P_{\theta}} \left[ \nabla_{\theta} \log \pi_{\theta} (a_{t} | s_{t}) \cdot B (s_{t}) \right] \\ = \operatorname{E} \left[ \operatorname{E} \left[ \nabla_{\theta} \log \pi_{\theta} \left(a_{t} \mid s_{t}\right) \mid s_{0}, a_{0}, \dots , s_{t - 1}, a_{t - 1}, s_{t} \right] B \left(s_{t}\right) \right] \\ = 0 \quad \text{(becauseE} [ \nabla_{\theta} \log \pi_{\theta} (a_{t} | s_{t}) | s_{0}, a_{0}, \dots , s_{t - 1}, a_{t - 1}, s_{t} ] = 0) \\ \end{array}
$$

Again here we used the law of total expectation. The outer expectation in the second line above is over the randomness of  $s_0, a_0, \ldots, a_{t-1}, s_t$ , whereas the inner expectation is over the randomness of  $a_t$  (conditioned on  $s_0, a_0, \ldots, a_{t-1}, s_t$ ). It follows from equation (17.10) and the equation above that

$$
\begin{array}{l} \nabla_{\theta} \eta (\theta) = \sum_{t = 0}^{T - 1} \mathrm{E}_{\tau \sim P_{\theta}} \left[ \nabla_{\theta} \log \pi_{\theta} (a_{t} | s_{t}) \cdot \left(\sum_{j \geq t}^{T - 1} \gamma^{j} R (s_{j}, a_{j}) - \gamma^{t} B (s_{t})\right) \right] \\ = \sum_{t = 0}^{T - 1} \mathrm{E}_{\tau \sim P_{\theta}} \left[ \nabla_{\theta} \log \pi_{\theta} \left(a_{t} \mid s_{t}\right) \cdot \gamma^{t} \left(\sum_{j \geq t}^{T - 1} \gamma^{j - t} R \left(s_{j}, a_{j}\right) - B \left(s_{t}\right)\right) \right] \tag {17.11} \\ \end{array}
$$

Therefore, we will get a different estimator for estimating the  $\nabla \eta(\theta)$  with a difference choice of  $B(\cdot)$ . The benefit of introducing a proper  $B(\cdot)$  — which is often referred to as a baseline — is that it helps reduce the variance of the estimator. It turns out that a near optimal estimator would be the expected future payoff  $\operatorname{E}\left[\sum_{j\geq t}^{T - 1}\gamma^{j - t}R(s_j,a_j)|s_t\right]$ , which is pretty much the same as the value function  $V^{\pi_{\theta}}(s_t)$  (if we ignore the difference between finite and infinite horizon.) Here one could estimate the value function  $V^{\pi_{\theta}}(\cdot)$  in a crude way, because its precise value doesn't influence the mean of the estimator but only the variance. This leads to a policy gradient algorithm with baselines stated in Algorithm 7.

# Algorithm 7 Vanilla policy gradient with baseline

for  $i = 1,\dots$  do

Collect a set of trajectories by executing the current policy. Use  $R_{\geq t}$  as a shorthand for  $\sum_{j > t}^{T - 1}\gamma^{j - t}R(s_j,a_j)$

Fit the baseline by finding a function  $B$  that minimizes

$$
\sum_{\tau} \sum_{t} \left(R_{\geq t} - B \left(s_{t}\right)\right)^{2} \tag {17.12}
$$

Update the policy parameter  $\theta$  with the gradient estimator

$$
\sum_{\tau} \sum_{t} \nabla_{\theta} \log \pi_{\theta} (a_{t} | s_{t}) \cdot (R_{\geq t} - B (s_{t})) \tag {17.13}
$$

# Bibliography

Mikhail Belkin, Daniel Hsu, Siyuan Ma, and Soumik Mandal. Reconciling modern machine-learning practice and the classical bias-variance trade-off. Proceedings of the National Academy of Sciences, 116(32):15849-15854, 2019.  
Mikhail Belkin, Daniel Hsu, and Ji Xu. Two models of double descent for weak features. SIAM Journal on Mathematics of Data Science, 2(4):1167-1180, 2020.  
David M Blei, Alp Kucukelbir, and Jon D McAuliffe. Variational inference: A review for statisticians. Journal of the American Statistical Association, 112(518):859-877, 2017.  
Rishi Bommasani, Drew A Hudson, Ehsan Adeli, Russ Altman, Simran Arora, Sydney von Arx, Michael S Bernstein, Jeannette Bohg, Antoine Bosselut, Emma Brunskill, et al. On the opportunities and risks of foundation models. arXiv preprint arXiv:2108.07258, 2021.  
Tom Brown, Benjamin Mann, Nick Ryder, Melanie Subbiah, Jared D Kaplan, Prafulla Dhariwal, Arvind Neelakantan, Pranav Shyam, Girish Sastry, Amanda Askell, et al. Language models are few-shot learners. Advances in neural information processing systems, 33:1877-1901, 2020.  
Ting Chen, Simon Kornblith, Mohammad Norouzi, and Geoffrey Hinton. A simple framework for contrastive learning of visual representations. In International Conference on Machine Learning, pages 1597-1607. PMLR, 2020.  
Jacob Devlin, Ming-Wei Chang, Kenton Lee, and Kristina Toutanova. Bert: Pre-training of deep bidirectional transformers for language understanding. In Proceedings of the 2019 Conference of the North American Chapter of the Association for Computational Linguistics: Human Language Technologies, Volume 1 (Long and Short Papers), pages 4171-4186, 2019.

Jeff Z HaoChen, Colin Wei, Jason D Lee, and Tengyu Ma. Shape matters: Understanding the implicit bias of the noise covariance. arXiv preprint arXiv:2006.08680, 2020.  
Trevor Hastie, Andrea Montanari, Saharon Rosset, and Ryan J Tibshirani. Surprises in high-dimensional ridgeless least squares interpolation. 2019.  
Trevor Hastie, Andrea Montanari, Saharon Rosset, and Ryan J Tibshirani. Surprises in high-dimensional ridgeless least squares interpolation. The Annals of Statistics, 50(2):949-986, 2022.  
Kaiming He, Xiangyu Zhang, Shaoqing Ren, and Jian Sun. Deep residual learning for image recognition. In Proceedings of the IEEE conference on computer vision and pattern recognition, pages 770-778, 2016.  
Gareth James, Daniela Witten, Trevor Hastie, and Robert Tibshirani. An introduction to statistical learning, second edition, volume 112. Springer, 2021.  
Diederik P Kingma and Jimmy Ba. Adam: A method for stochastic optimization. arXiv preprint arXiv:1412.6980, 2014.  
Diederik P Kingma and Max Welling. Auto-encoding variational bayes. arXiv preprint arXiv:1312.6114, 2013.  
Yuping Luo, Huazhe Xu, Yuanzhi Li, Yuandong Tian, Trevor Darrell, and Tengyu Ma. Algorithmic framework for model-based deep reinforcement learning with theoretical guarantees. In International Conference on Learning Representations, 2018.  
Song Mei and Andrea Montanari. The generalization error of random features regression: Precise asymptotics and the double descent curve. Communications on Pure and Applied Mathematics, 75(4):667-766, 2022.  
Preetum Nakkiran. More data can hurt for linear regression: Sample-wise double descent. 2019.  
Preetum Nakkiran, Prayaag Venkat, Sham Kakade, and Tengyu Ma. Optimal regularization can mitigate double descent. 2020.  
Manfred Opper. Statistical mechanics of learning: Generalization. The handbook of brain theory and neural networks, pages 922-925, 1995.  
Manfred Opper. Learning to generalize. Frontiers of Life, 3(part 2):763-775, 2001.

Ashish Vaswani, Noam Shazeer, Niki Parmar, Jakob Uszkoreit, Llion Jones, Aidan N Gomez, Lukasz Kaiser, and Illia Polosukhin. Attention is all you need. arXiv preprint arXiv:1706.03762, 2017.  
Blake Woodworth, Suriya Gunasekar, Jason D Lee, Edward Moroshko, Pedro Savarese, Itay Golan, Daniel Soudry, and Nathan Srebro. Kernel and rich regimes in overparametrized models. arXiv preprint arXiv:2002.09277, 2020.