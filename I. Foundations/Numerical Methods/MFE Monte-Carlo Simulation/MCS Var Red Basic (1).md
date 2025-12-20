---
aliases: null
tags: null
key_concepts: null
parent_directory: null
cssclasses: academia
title: Simulation Efficiency and an Introduction to Variance Reduction Methods
linter-yaml-title-alias: Simulation Efficiency and an Introduction to Variance Reduction
  Methods
primary_tags:
- computational effort
- conditional variance formula
- usual simulation algorithm
- other variance reduction techniques
secondary_tags:
- some simple variance reduction techniques
- other variance reduction methods
- variance reduction technique
- 1.1 measuring simulation efficiency
- monte-carlo estimators
- monte carlo estimator
- following antithetic variate simulation algorithm
- monte carlo algorithm
- standard simulation algorithm
tags_extracted: '2025-12-18T18:00:11.395056'
tags_method: max_quality_v1
---

# Simulation Efficiency and an Introduction to Variance Reduction Methods

In these notes we discuss the efficiency of a Monte-Carlo estimator. This naturally leads to the search for more efficient estimators and towards this end we describe some simple variance reduction techniques. In particular, we describe control variates, antithetic variates and conditional Monte-Carlo, all of which are designed to reduce the variance of our Monte-Carlo estimators. We will defer a discussion of other variance reduction techniques such as common random numbers, stratified sampling and importance sampling until later.

# 1 Simulation Efficiency

Suppose as usual that we wish to estimate  $\theta \coloneqq \mathbb{E}[h(\mathbf{X})]$ . Then the standard simulation algorithm is:

1. Generate  $\mathbf{X}_1, \ldots, \mathbf{X}_n$  
2. Estimate  $\theta$  with  $\widehat{\theta}_n = \sum_{j=1}^n Y_j / n$  where  $Y_j \coloneqq h(\mathbf{X}_j)$ .  
3. Approximate  $100(1 - \alpha)\%$  confidence intervals are then given by

$$
\left[ \widehat {\theta}_{n} - z_{1 - \alpha / 2} \frac{\widehat {\sigma}_{n}}{\sqrt{n}}, \widehat {\theta}_{n} + z_{1 - \alpha / 2} \frac{\widehat {\sigma}_{n}}{\sqrt{n}} \right]
$$

where  $\widehat{\sigma}_n$  is the usual estimate of  $\operatorname{Var}(Y)$  based on  $Y_1, \ldots, Y_n$ .

One way to measure the quality of the estimator,  $\widehat{\theta}_n$ , is by the half-width,  $HW$ , of the confidence interval. For a fixed  $\alpha$ , we have

$$
H W = z_{1 - \alpha / 2} \sqrt{\frac{\mathrm{Va r} (Y)}{n}}.
$$

We would like  $HW$  to be small, but sometimes this is difficult to achieve. This may be because  $\operatorname{Var}(Y)$  is too large, or too much computational effort is required to simulate each  $Y_{j}$  so that  $n$  is necessarily small, or some combination of the two. As a result, it is often imperative to address the issue of simulation efficiency. There are a number of things we can do:

1. Develop a good simulation algorithm.  
2. Program carefully to minimize storage requirements. For example we do not need to store all the  $Y_{j}$ 's: we only need to keep track of  $\sum Y_{j}$  and  $\sum Y_{j}^{2}$  to compute  $\widehat{\theta}_{n}$  and approximate CI's.  
3. Program carefully to minimize execution time.  
4. Decrease the variability of the simulation output that we use to estimate  $\theta$ . The techniques used to do this are usually called variance reduction techniques.

We will now study some of the simplest variance reduction techniques, and assume that we are doing items (1) to (3) as well as possible. Before proceeding to study these techniques, however, we should first describe a measure of simulation efficiency.

# 1.1 Measuring Simulation Efficiency

Suppose there are two random variables,  $W$  and  $Y$ , such that  $\mathbb{E}[W] = \mathbb{E}[Y] = \theta$ . Then we could choose to either simulate  $W_{1},\ldots ,W_{n}$  or  $Y_{1},\ldots ,Y_{n}$  in order to estimate  $\theta$ . Let  $M_w$  denote the method of estimating  $\theta$  by simulating the  $W_{i}$ 's.  $M_{y}$  is similarly defined. Which method is more efficient,  $M_w$  or  $M_y$ ? To answer this, let  $n_w$  and  $n_y$  be the number of samples of  $W$  and  $Y$ , respectively, that are needed to achieve a half-width,  $HW$ . Then we know that

$$
n_{w} = \left(\frac{z_{1 - \alpha / 2}}{H W}\right)^{2} \operatorname{Va r} (W)
$$

$$
{n_{y}} = {\left(\frac{z_{1 - \alpha / 2}}{H W}\right)^{2} \mathrm{Va r} (Y).}
$$

Let  $E_{w}$  and  $E_{y}$  denote the amount of computational effort required to produce one sample of  $W$  and  $Y$ , respectively. Then the total effort expended by  $M_{w}$  and  $M_{y}$ , respectively, to achieve a half width  $HW$  are

$$
T E_{w} = \left(\frac{z_{1 - \alpha / 2}}{H W}\right)^{2} \operatorname{Va r} (W) E_{w}
$$

$$
T E_{y} = \left(\frac{z_{1 - \alpha / 2}}{H W}\right)^{2} \operatorname{Va r} (Y) E_{y}.
$$

We then say that  $M_w$  is more efficient than  $M_y$  if  $TE_w < TE_y$ . Note that  $TE_w < TE_y$  if and only if

$$
\operatorname{Va r} (W) E_{w} <   \operatorname{Va r} (Y) E_{y}. \tag {1}
$$

We will use the quantity  $\operatorname{Var}(W)E_w$  as a measure of the efficiency of the simulator,  $M_w$ . Note that (1) implies we cannot conclude that one simulation algorithm,  $M_w$ , is better than another,  $M_y$ , simply because

$\operatorname{Var}(W) < \operatorname{Var}(Y)$ ; we also need to take  $E_w$  and  $E_y$  into consideration. However, it is often the case that we have two simulators available to us,  $M_w$  and  $M_y$ , where  $E_w \approx E_y$  and  $\operatorname{Var}(W) << \operatorname{Var}(Y)$ . In such cases it is clear that using  $M_w$  provides a substantial improvement over using  $M_y$ .

# 2 Control variates

Suppose you wish to determine the mean midday temperature,  $\theta$ , in Grassland and that your data consists of

$$
\left\{\left(T_{i}, R_{i}\right): i = 1, \dots n \right\}
$$

where  $T_{i}$  and  $R_{i}$  are the midday temperature and daily rainfall, respectively, on some random day,  $D_{i}$ . Then  $\theta = \mathbb{E}[T]$  is the mean midday temperature. If the  $D_{i}$ 's are drawn uniformly from  $\{1,\dots ,365\}$ , then an obvious estimator for  $\theta$  is

$$
\widehat {\theta}_{n} = \frac{\sum_{i = 1}^{n} T_{i}}{n}
$$

and we then know that  $\mathbb{E}[\hat{\theta}_n] = \theta$ . Suppose, however, that we also know:

1. $\mathbb{E}[R]$ , the mean daily rainfall in Grassland  
2. $R_{i}$  and  $T_{i}$  are dependent; in particular, it tends to rain more in the cold season

Is there any way we can exploit this information to obtain a better estimate of  $\theta$ ? The answer of course, is yes.

Let  $\overline{R}_n \coloneqq \sum_{i=1}^n R_i / n$  and now suppose  $\overline{R}_n > \mathbb{E}[R]$ . Then this implies that the  $D_i$ 's over-represent the rainy season in comparison to the dry season. But since the rainy season tends to coincide with the cold season, it also means that the  $D_i$ 's over-represent the cold season in comparison to the warm season. As a result, we expect  $\widehat{\theta}_n < \theta$ . Therefore, to improve our estimate, we should increase  $\widehat{\theta}_n$ . Similarly, if  $\overline{R}_n < \mathbb{E}[R]$ , we should decrease  $\widehat{\theta}_n$ .

In this example, rainfall is the control variate since it enables us to better control our estimate of  $\theta$ . The principle idea behind many variance reduction techniques (including control variates) is to "use what you know"

about the system. In this example, the system is Grassland's climate, and what we know is  $\mathbb{E}[R]$ , the average daily rainfall. We will now study control variates more formally, and in particular, we will determine by how much we should increase or decrease  $\widehat{\theta}_n$ .

# 2.1 The Control Variate Method

Suppose again that we wish to estimate  $\theta \coloneqq \mathbb{E}[Y]$  where  $Y = h(\mathbf{X})$  is the output of a simulation experiment. Suppose that  $Z$  is also an output of the simulation or that we can easily output it if we wish. Finally, we assume that we know  $\mathbb{E}[Z]$ . Then we can construct many unbiased estimators of  $\theta$ :

1. $\widehat{\theta} = Y$ , our usual estimator  
2. $\widehat{\theta}_c\coloneqq Y + c(Z - \mathbb{E}[Z])$

for any  $c\in \mathbb{R}$ . The variance of  $\widehat{\theta}_c$  satisfies

$$
\operatorname{Va r} \left(\widehat {\theta}_{c}\right) = \operatorname{Va r} (Y) + c^{2} \operatorname{Va r} (Z) + 2 c \operatorname{Co v} (Y, Z). \tag {2}
$$

and we can choose  $c$  to minimize this quantity. Simple calculus then implies the optimal value of  $c$  is given by

$$
c^{*} = - \frac{\operatorname{Co v} (Y , Z)}{\operatorname{Va r} (Z)}
$$

and that the minimized variance satisfies

$$
\begin{array}{l} \operatorname{Va r} \left(\widehat {\theta_{c^{*}}}\right) = \operatorname{Va r} (Y) - \frac{\operatorname{Co v} (Y , Z)^{2}}{\operatorname{Va r} (Z)} \\ { = } { \operatorname{ Va r } ( \widehat { \theta } ) - \frac{ \operatorname{ Co v } ( Y , Z )^{ 2 } } { \operatorname{ Va r } ( Z ) } . } \\ \end{array}
$$

In order to achieve a variance reduction it is therefore only necessary that  $\operatorname{Cov}(Y,Z) \neq 0$ . The new resulting Monte Carlo algorithm proceeds by generating  $n$  samples of  $Y$  and  $Z$  and then setting

$$
\widehat {\theta}_{c^{*}} = \frac{\sum_{i = 1}^{n} \left(Y_{i} + c^{*} \left(Z_{i} - \mathbb {E} [ Z ]\right)\right)}{n}.
$$

There is a problem with this, however, as we usually do not know  $\operatorname{Cov}(Y,Z)$ . We overcome this problem by doing  $p$  pilot simulations and setting

$$
\widehat {\operatorname{Co v}} (Y, Z) = \frac{\sum_{j = 1}^{p} \left(Y_{j} - \bar {Y}_{p}\right) \left(Z_{j} - \mathbb {E} [ Z ]\right)}{p - 1}.
$$

If it is also the case that  $\operatorname{Var}(Z)$  is unknown, then we also estimate it with

$$
\widehat {\mathrm{Va r}} (Z) = \frac{\sum_{j = 1}^{p} (Z_{j} - \mathbb {E} [ Z ])^{2}}{p - 1}
$$

and finally set

$$
\widehat {c}^{*} = - \frac{\widehat {\mathrm{Co v}} (Y , Z)}{\widehat {\mathrm{Va r}} (Z)}.
$$

Assuming we can find a control variate, our control variate simulation algorithm is as follows. Note that the  $V_{i}$ 's are IID, so we can compute approximate confidence intervals as before.

Control Variate Simulation Algorithm for Estimating  $\mathbb{E}[Y]$

/\*Do pilot simulation first  $\ast /$    
for  $i = 1$  to  $p$  generate  $(Y_{i},Z_{i})$    
end for   
compute  $\widehat{c}^*$    
/\*Now do main simulation  $\ast /$    
for  $i = 1$  to  $n$  generate  $(Y_{i},Z_{i})$  set  $V_{i} = Y_{i} + \widehat{c}^{*}(Z_{i} - \mathbb{E}[Z])$    
end for   
set  $\widehat{\theta}_{\widehat{c}^*} = \overline{V}_n = \sum_{i = 1}^n V_i / n$    
set  $\widehat{\sigma}_{n,v}^2 = \sum (V_i - \widehat{\theta}_{\widehat{c}^*})^2 /(n - 1)$    
set  $100(1 - \alpha)\% \mathrm{Cl} = \left[\widehat{\theta}_{\widehat{c}^*} - z_{1 - \alpha /2}\frac{\widehat{\sigma}_{n,v}}{\sqrt{n}},\widehat{\theta}_{\widehat{c}^*} + z_{1 - \alpha /2}\frac{\widehat{\sigma}_{n,v}}{\sqrt{n}}\right]$

# Example 1

Suppose we wish to estimate  $\theta = \mathbb{E}[e^{(U + W)^2}]$  where  $U, W \sim U(0,1)$  and IID. In our notation we then have  $Y \coloneqq e^{(U + W)^2}$ . The usual approach is:

1. Generate  $U_{1},\ldots ,U_{n}$  and  $W_{1},\dots ,W_{n}$ , all IID  $\sim U(0,1)$  
2. Compute  $Y_{1} = e^{(U_{1} + W_{1})^{2}},\ldots ,Y_{n} = e^{(U_{n} + W_{n})^{2}}$  
3. Construct the estimator  $\widehat{\theta}_{n,y} = \sum_{j=1}^{n} Y_j / n$  
4. Build confidence intervals  $\widehat{\theta}_{n,y} \pm z_{1 - \alpha / 2} \widehat{\sigma}_{n,y} / \sqrt{n}$  where  $\widehat{\sigma}_{n,y}^2$  is the usual estimate of  $\operatorname{Var}(Y)$ .

Now consider using the control variate technique. First we have to choose an appropriate control variate,  $Z$ . There are many possibilities including

$$
Z_{1} := U + W
$$

$$
Z_{2} := (U + W)^{2}
$$

$$
Z_{3} := e^{U + W}
$$

Note that we can easily compute  $\mathbb{E}[Z_i]$  for  $i = 1,2,3$  and that it's also clear that  $\operatorname{Cov}(Y,Z_i)\neq 0$ . In a simple experiment we used  $Z_{3}$ , estimating  $\widehat{c}^*$  on the basis of a pilot simulation with 100 samples. We reduced the variance by approximately a factor of 4. In general, a good rule of thumb is that we should not be satisfied unless we have a variance reduction on the order of a factor of 5 to 10, though often we will achieve much more.

# Example 2 (Pricing an Asian Call Option)

Recall that the payoff of an Asian call option is given by

$$
h (\mathbf {X}) := \max \left(0, \frac{\sum_{i = 1}^{m} S_{i T / m}}{m} - K\right)
$$

where  $\mathbf{X} := \{S_{iT/m} : i = 1, \dots, m\}$ ,  $K$  is the strike price and  $T$  is the expiration date. The price of the option is then given by

$$
C_{a} = \mathbb {E}_{0}^{Q} [ e^{- r T} h (\mathbf {X}) ]
$$

where  $r$  is the risk-free interest rate and  $Q$  is the risk-neutral probability measure. We will assume as usual that  $S_{t} \sim GBM(r, \sigma)$  under  $Q$ . The usual simulation method for estimating  $C_{a}$  is to generate  $n$  independent samples of the payoff,  $Y_{i} \coloneqq e^{-rT} h(\mathbf{X}_{i})$ , for  $i = 1, \dots, n$ , and to set

$$
\widehat {C}_{a} = \frac{\sum_{i = 1}^{n} Y_{i}}{n}.
$$

But we could also estimate  $C_a$  using control variates and there are many possible choices that we could use:

1. $Z_{1} = S_{T}$  
2. $Z_{2} = e^{-rt}\max (0,S_{T} - K)$  
3. $Z_{3} = \sum_{j = 1}^{m}S_{iT / m} / m$

In each of the three cases, it is easy to compute  $\mathbb{E}[Z]$ . Indeed,  $\mathbb{E}[Z_2]$  is the well-studied Black-Scholes option price. We would also expect  $Z_{1}, Z_{2}$  and  $Z_{3}$  to have a positive covariance with  $Y$ , so that each one would be a suitable candidate for use as a control variate. Which one would lead to the greatest variance reduction?

Exercise 1 Referring to Example 2, explain why you could also use the value of the option with payoff

$$
g (\mathbf {X}) := \max  \left(0, \left(\prod_{i = 1}^{m} S_{i T / m}\right)^{1 / m} - K\right)
$$

as a control variate. Do you think it would result in a substantial variance reduction?

# Example 3 (The Barbershop)

Many application of variance reduction techniques can be found in the study of queuing, communications or inventory systems. As a simple example of a queuing system, consider the case of a barbershop where the barber opens for business every day at 9am and closes at 6pm. He is the only barber in the shop and he's considering hiring another barber to share the workload. First, however, he would like to estimate the mean total time that customers spend waiting each day.

Assume customers arrive at the barbershop according to a non-homogeneous Poisson process,  $N(t)$ , with intensity  $\lambda(t)$ , and let  $W_i$  denote the waiting time of the  $i^{th}$  customer. Then, noting that the barber closes the shop after  $T = 9$  hours (but still serves any customers who have arrived before then) the quantity that he wants to estimate is  $\theta := \mathbb{E}[Y]$  where

$$
Y := \sum_{j = 1}^{N (T)} W_{j}.
$$

Assume also that the service times of customers are IID with CDF,  $F(\cdot)$ , and that they are also independent of the arrival process,  $N(t)$ . The usual simulation method for estimating  $\theta$  would be to simulate  $n$  days of operation in the barbershop, thereby obtaining  $n$  samples,  $Y_{1},\ldots ,Y_{n}$ , and then setting

$$
\widehat {\theta}_{n} = \frac{\sum_{j = 1}^{n} Y_{j}}{n}.
$$

However, a better estimate could be obtained by using a control variate. In particular, let  $Z$  denote the total time customers on a given day spend in service so that

$$
Z := \sum_{j = 1}^{N (T)} S_{j}
$$

where  $S_{j}$  is the service time of the  $j^{th}$  customer. Then, since services times are IID and independent of the arrival process, it is easy to see that

$$
\mathbb {E} [ Z ] = \mathbb {E} [ S ] \mathbb {E} [ N (T) ]
$$

which should be easily computable. Intuition suggests that  $Z$  should be positively correlated with  $Y$  and therefore it would also be a good candidate to use as a control variate.

# 2.2 Multiple Control Variates

Until now we have only considered the possibility of using one control variate but there is no reason why we should not use more than one. Towards this end, suppose again that we wish to estimate  $\theta \coloneqq \mathbb{E}[Y]$  where  $Y$  is the output of a simulation experiment. We also suppose that for  $i = 1,\dots,m$ ,  $Z_{i}$  is an output or that we can easily output it if we wish, and that  $\mathbb{E}[Z_i]$  is known for each  $i$ . We can then construct unbiased estimators of  $\theta$  by defining

$$
\widehat {\theta}_{c} := Y + c_{1} \left(Z_{1} - \mathbb {E} \left[ Z_{1} \right]\right) + \dots + c_{m} \left(Z_{m} - \mathbb {E} \left[ Z_{m} \right]\right)
$$

where  $c_{i}\in \mathbb{R}$ . The variance of  $\widehat{\theta}_c$  satisfies

$$
\operatorname{Va r} \left(\widehat {\theta_{c}}\right) = \operatorname{Va r} (Y) + 2 \sum_{i = 1}^{m} c_{i} \operatorname{Co v} \left(Y, Z_{i}\right) + \sum_{i = 1}^{m} \sum_{i = 1}^{m} c_{i} c_{j} \operatorname{Co v} \left(Z_{i}, Z_{j}\right) \tag {3}
$$

and we could easily minimize this quantity w.r.t the  $c_i$ 's. As before, however, the optimal solutions  $c_i^*$  will involve unknown covariances (and possibly variances of the  $Z_i$ 's) that will need to be estimated using a pilot simulation.

A convenient way of doing this is to observe that  $\widehat{c}_i^* = -b_i$  where the  $b_i$ 's are the (least squares) solution to the following linear regression:

$$
Y = a + b_{1} Z_{1} + \dots + b_{m} Z_{m} + \epsilon \tag {4}
$$

where  $\epsilon$  is an error term. Note that you must include the intercept,  $a$ , in (4). The simulation algorithm with multiple control variates is exactly analogous to the simulation algorithm with just a single control variate.

Multiple Control Variate Simulation Algorithm for Estimating  $\mathbb{E}[Y]$  

```txt
/*Do pilot simulation first*/   
for  $i = 1$  to  $p$  generate  $(Y_{i},Z_{1,i},\ldots ,Z_{m,i})$    
end for   
compute  $\widehat{c}_j^*$ $j = 1,\dots ,m$    
/\*Now do main simulation \*/   
for  $i = 1$  to  $n$  generate  $(Y_{i},Z_{1,i},\ldots ,Z_{m,i})$  set  $V_{i} = Y_{i} + \sum_{j = 1}^{m}\widehat{c}_{j}^{*}(Z_{j,i} - \mathbb{E}[Z_{j}])$    
end for   
set  $\widehat{\theta}_{c^*} = \overline{V}_n = \sum_{i = 1}^n V_i / n$    
set  $\widehat{\sigma}_{n,v}^2 = \sum (V_i - \widehat{\theta}_{c^*})^2 /(n - 1)$    
set  $100(1 - \alpha)\% \mathrm{Cl} = \left[\widehat{\theta}_{c^*} - z_{1 - \alpha /2}\frac{\widehat{\sigma}_{n,v}}{\sqrt{n}},\widehat{\theta}_{c^*} + z_{1 - \alpha /2}\frac{\widehat{\sigma}_{n,v}}{\sqrt{n}}\right]$
```

# 3 Antithetic Variates

As usual we would like to estimate  $\theta = \mathbb{E}[h(\mathbf{X})] = \mathbb{E}[Y]$ , and suppose we have generated two samples,  $Y_{1}$  and  $Y_{2}$ . Then an unbiased estimate of  $\theta$  is given by  $\widehat{\theta} = (Y_1 + Y_2) / 2$  with

$$
\operatorname{Va r} (\widehat {\theta}) = \frac{\operatorname{Va r} (Y_{1}) + \operatorname{Va r} (Y_{2}) + 2 \operatorname{Co v} (Y_{1} , Y_{2})}{4}.
$$

If  $Y_{1}$  and  $Y_{2}$  are IID, then  $\mathrm{Var}(\widehat{\theta}) = \mathrm{Var}(Y) / 2$ . However, we could reduce  $\mathrm{Var}(\widehat{\theta})$  if we could arrange it so that  $\mathrm{Cov}(Y_1,Y_2) < 0$ . We now describe the method of antithetic variates for doing this. We will begin with the case where  $Y$  is a function of IID  $U(0,1)$  random variables so that  $\theta = \mathbb{E}[h(\mathbf{U})]$  where  $\mathbf{U} = (U_1,\dots ,U_m)$  and the  $U_{i}$ 's are IID  $\sim U(0,1)$ . The usual Monte Carlo algorithm, assuming we use  $2n$  samples, is shown below.

# Usual Simulation Algorithm for Estimating  $\theta$

for  $i = 1$  to  $2n$

generate  $\mathbf{U}_{\mathrm{i}}$

set  $Y_{i} = h(\mathbf{U}_{\mathbf{i}})$

end for

set  $\widehat{\theta}_{2n} = \overline{Y}_{2n} = \sum_{i=1}^{2n} Y_i / 2n$

$\mathbf{set}\widehat{\sigma}_{2n}^2 = \sum_{i = 1}^{2n}(Y_i - \overline{Y}_{2n})^2 /(2n - 1)$

set approx.  $100(1 - \alpha)$  % CI =  $\widehat{\theta}_{2n}\pm z_{1 - \alpha /2}\frac{\widehat{\sigma}_{2n}}{\sqrt{2n}}$

In the above algorithm, however, we could also have used the  $1 - U_{i}$ 's to generate sample  $Y$  values, since if  $U_{i} \sim U(0,1)$ , then so too is  $1 - U_{i}$ . We can use this fact to construct another estimator of  $\theta$  as follows. As before, we set  $Y_{i} = h(\mathbf{U}_{\mathbf{i}})$ , where  $\mathbf{U}_{\mathbf{i}} = (U_{1}^{(i)}, \ldots, U_{m}^{(i)})$ . We now also set  $\tilde{Y}_{i} = h(1 - \mathbf{U}_{\mathbf{i}})$ , where we use  $1 - \mathbf{U}_{\mathbf{i}}$  to denote  $(1 - U_{1}^{(i)}, \ldots, 1 - U_{m}^{(i)})$ . Note that  $\mathbb{E}[Y_i] = \mathbb{E}[\tilde{Y}_i] = \theta$  so that in particular, if

$$
Z_{i} := \frac{Y_{i} + \tilde {Y}_{i}}{2},
$$

then  $\mathbb{E}[Z_i] = \theta$  so that  $Z_{i}$  is an also unbiased estimator of  $\theta$ . If the  $U_{i}$ 's are IID, then so too are the  $Z_{i}$ 's and we can use them as usual to compute approximate confidence intervals for  $\theta$ . We say that  $U_{i}$  and  $1 - U_{i}$  are antithetic variates and we then have the following antithetic variate simulation algorithm.

# Antithetic Variate Simulation Algorithm for Estimating  $\theta$

for  $i = 1$  to  $n$

generate  $\mathbf{U}_{\mathrm{i}}$

set  $Y_{i} = h(\mathbf{U}_{\mathbf{i}})$  and  $\tilde{Y}_i = h(1 - \mathbf{U_i})$

set  $Z_{i} = (Y_{i} + \dot{Y}_{i}) / 2$

end for

set  $\widehat{\theta}_{n,a} = \overline{Z}_n = \sum_{i=1}^n Z_i / n$

$\hat{\sigma}_{n,a}^2 = \sum_{i=1}^{n}(Z_i - \overline{Z}_n)^2 / (n-1)$

set approx.  $100(1 - \alpha)$  % CI =  $\widehat{\theta}_{a,n} \pm z_{1 - \alpha / 2}\frac{\widehat{\sigma}_{n,a}}{\sqrt{n}}$

As usual,  $\widehat{\theta}_{a,n}$  is an unbiased estimator of  $\theta$  and the Strong Law of Large Numbers implies  $\widehat{\theta}_{n,a} \to \theta$  almost surely as  $n \to \infty$ . Each of the two algorithms we have described above uses  $2n$  samples so the question naturally arises as to which algorithm is better. Note that both algorithms require approximately the same amount of effort so that comparing the two algorithms amounts to computing which estimator has a smaller variance.

# 3.1 Comparing Estimator Variances

It is easy to see that

$$
\operatorname{Va r} \left(\widehat {\theta}_{2 n}\right) = \operatorname{Va r} \left(\frac{\sum_{i = 1}^{2 n} Y_{i}}{2 n}\right) = \frac{\operatorname{Va r} (Y)}{2 n}
$$

and

$$
\begin{array}{l} \operatorname{Va r} \left(\widehat {\theta}_{n, a}\right) = \operatorname{Va r} \left(\frac{\sum_{i = 1}^{n} Z_{i}}{n}\right) = \frac{\operatorname{Va r} (Z)}{n} \\ = \frac{\operatorname{Va r} (Y + \tilde {Y})}{4 n} = \frac{\operatorname{Va r} (Y)}{2 n} + \frac{\operatorname{Co v} (Y , \tilde {Y})}{2 n} \\ = \operatorname{Va r} (\widehat {\theta}_{2 n}) + \frac{\operatorname{Co v} (Y , \tilde {Y})}{2 n}. \\ \end{array}
$$

Therefore  $\operatorname{Var}(\widehat{\theta}_{n,a}) < \operatorname{Var}(\widehat{\theta}_{2n})$  if and only  $\operatorname{Cov}(Y, \tilde{Y}) < 0$ . Recalling that  $Y = h(\mathbf{U})$  and  $\tilde{Y} = h(1 - \mathbf{U})$ , this means that

$$
\operatorname{Va r} \left(\widehat {\theta}_{n, a}\right) <   \operatorname{Va r} \left(\widehat {\theta}_{2 n}\right) \Longleftrightarrow \operatorname{Co v} (h (\mathbf {U}), h (1 - \mathbf {U})) <   0.
$$

We will soon discuss conditions that are sufficient to guarantee that  $\operatorname{Cov}(h(\mathbf{U}), h(1 - \mathbf{U})) < 0$ , but first let's consider an example.

# Example 4 (Monte Carlo Integration)

Consider the problem of estimating

$$
\theta = \int_{0}^{1} e^{x^{2}} d x.
$$

As usual, we may then write  $\theta = \mathbb{E}[e^{U^2}]$  where  $U\sim U(0,1)$ . We can compare the usual raw simulation algorithm with the simulation algorithm that uses antithetic variates. Using antithetic variates in this case results in a variance reduction of approximately  $75\%$ .

We now discuss the circumstances under which a variance reduction can be guaranteed. Consider first the case where  $\mathbf{U}$  is a uniform random variable so that  $m = 1$ ,  $\mathbf{U} = U$  and  $\theta = \mathbb{E}[h(U)]$ . Suppose now that  $h(.)$  is a non-decreasing function of  $u$  over  $[0,1]$ . Then if  $U$  is large,  $h(U)$  will also tend to be large while  $1 - U$  and  $h(1 - U)$  will tend to be small. That is,  $\operatorname{Cov}(h(U), h(1 - U)) < 0$ . We can similarly conclude that if  $h(.)$  is a non-increasing function of  $u$  then once again,  $\operatorname{Cov}(h(U), h(1 - U)) < 0$ . So for the case where  $m = 1$ , a sufficient condition to guarantee a variance reduction is for  $h(.)$  to be a monotonic function of  $u$  on  $[0,1]$ .

Let us now consider the more general case where  $m > 1$ ,  $\mathbf{U} = (U_1, \ldots, U_m)$  and  $\theta = \mathbb{E}[h(\mathbf{U})]$ . We say  $h(u_1, \ldots, u_m)$  is a monotonic function of each of its  $m$  arguments if, in each of its arguments, it is non-increasing or non-decreasing. We have the following theorem which generalizes the  $m = 1$  case above.

Theorem 1 If  $h(u_1, \ldots, u_m)$  is a monotonic function of each of its arguments on  $[0,1]^m$ , then for a set  $\mathbf{U} := (U_1, \ldots, U_m)$  of IID  $U(0,1)$  random variables

$$
\operatorname{Co v} (h (\mathbf {U}), h (1 - \mathbf {U})) <   0
$$

where  $\operatorname{Cov}(h(\mathbf{U}),h(1 - \mathbf{U}))\coloneqq \operatorname{Cov}(h(U_1,\ldots ,U_m),h(1 - U_1,\ldots ,1 - U_m))$

Proof See Sheldon M. Ross's Simulation.  $\square$

Note that the theorem specifies sufficient conditions for a variance reduction, but not necessary conditions. This means that it is still possible to obtain a variance reduction even if the conditions of the theorem are not satisfied. For example, if  $h(.)$  is "mostly" monotonic, then a variance reduction might be still be obtained.

# 3.2 Non-Uniform Antithetic Variates

So far we have only considered problems where  $\theta = \mathbb{E}[h(\mathbf{U})]$ , for  $\mathbf{U}$  a vector of IID  $U(0,1)$  random variables. Of course in practice, it is often the case that  $\theta = \mathbb{E}[Y]$  where  $Y = h(X_1,\ldots ,X_m)$ , and where  $(X_{1},\dots,X_{m})$  is a vector of independent random variables. We can still use the antithetic variable method for such problems if we can use the inverse transform method to generate the  $X_{i}$ 's.

To see this, suppose  $F_{i}(.)$  is the CDF of  $X_{i}$ . If  $U_{i} \sim U(0,1)$  then  $F_{i}^{-1}(U_{i})$  has the same distribution as  $X_{i}$ . This implies that we can generate a sample of  $Y$  by generating  $U_{1},\ldots ,U_{m} \sim \mathrm{IID}~U(0,1)$  and setting

$$
Z = h \left(F_{1}^{- 1} (U_{1}), \dots , F_{m}^{- 1} (U_{m})\right).
$$

Since the CDF of any random variable is non-decreasing, it follows that the inverse CDFs,  $F_{i}^{-1}(.)$ , are also non-decreasing. This means that if  $h(x_{1},\ldots ,x_{m})$  is a monotonic function of each of its arguments, then  $h(F_1^{-1}(U_1),\dots ,F_m^{-1}(U_m))$  is also a monotonic function of the  $U_{i}$ 's. Theorem 1 therefore applies.

Antithetic variables are often very useful when studying queueing systems and we briefly describe why by revisiting Example 3.

# Example 5 (The Barbershop Revisited)

Consider again our barbershop example and suppose that the barber now wants to estimate the average total waiting time,  $\theta$ , of the first 100 customers. Then  $\theta = \mathbb{E}[Y]$  where

$$
Y = \sum_{j = 1}^{1 0 0} W_{j}
$$

and where  $W_{j}$  is the waiting time of the  $j^{th}$  customer. Now for each customer,  $j$ , there is an inter-arrival time,  $I_{j}$ , which is the time between the  $(j - 1)^{th}$  and  $j^{th}$  arrivals. There is also a service time,  $S_{j}$ , which is the amount of time the barber spends cutting the  $j^{th}$  customer's hair. It is therefore the case that  $Y$  may be written as

$$
Y = h \left(I_{1}, \dots , I_{1 0 0}, S_{1}, \dots , S_{1 0 0}\right)
$$

for some function,  $h(.)$ . Now for many queueing systems,  $h(.)$  will be a monotonic function of its arguments since we would typically expect  $Y$  to increase as service times increase, and decrease as inter-arrival times increase. As a result, it might be advantageous to use antithetic variates to estimate  $\theta$ . (We are implicitly assuming here that the  $I_j$ 's and  $S_j$ 's can be generated using the inverse transform method.)

# 3.3 Normal Antithetic Variates

We can also generate antithetic normal random variates without using the inverse transform technique. For if  $X \sim \mathsf{N}(\mu, \sigma^2)$  then  $\tilde{X} \sim \mathsf{N}(\mu, \sigma^2)$  also, where  $\tilde{X} \coloneqq 2\mu - X$ . Clearly  $X$  and  $\tilde{X}$  are negatively correlated. So if  $\theta = \mathbb{E}[h(X_1, \ldots, X_m)]$  where the  $X_i$ 's are IID  $\mathsf{N}(\mu, \sigma^2)$  and  $h(.)$  is monotonic in its arguments, then we can again achieve a variance reduction by using antithetic variates.

# Example 6 (Normal Antithetic Variates)

Suppose we want to estimate  $\theta = \mathbb{E}[X^2]$  where  $X\sim \mathsf{N}(2,1)$ . Then it is easy to see that  $\theta = 5$ , but we can also estimate it using antithetic variates. We have the following questions:

1. Is a variance reduction guaranteed? Why or why not?  
2. What would you expect if  $Z \sim \mathsf{N}(10,1)$ ?
3. What would you expect if  $Z \sim \mathsf{N}(0.5, 1)$ ?

# Example 7 (Estimating the Price of a Knock-In Option)

Suppose we wish to price a knock-in option where the payoff is given by

$$
h \left(S_{T}\right) = \max  \left(0, S_{T} - K\right) I_{\left\{S_{T} > B \right\}}
$$

where  $B$  is some fixed constant. We assume that  $r$  is the risk-free interest rate,  $S_{t} \sim GBM(r,\sigma^{2})$  under the risk-neutral measure,  $Q$ , and that  $S_{0}$  is the initial stock price. Then the option price may be written as

$$
C_{0} = \mathbb {E}_{0}^{Q} [ e^{- r T} \max (0, S_{T} - K) I_{\{S_{T} > B \}} ]
$$

so we can estimate it using simulation. Since we can write  $S_{T} = S_{0}e^{(r - \sigma^{2} / 2)T + \sigma \sqrt{T} X}$  where  $X\sim \mathsf{N}(0,1)$  we can use antithetic variates to estimate  $C_0$ . Are we sure to get a variance reduction?

Example 8 We can also use antithetic variates to price Asian options. In this case, however, we need to be a little careful generating the stock prices if we are to achieve a variance reduction. You might want to think about this yourself.

It's worth emphasizing at this point that in general, the variance reduction that can be achieved through the use of antithetic variates is rarely (if ever!) dramatic. Other methods are capable of much greater variance reduction in practice.

# 4 Conditional Monte Carlo

We now consider the conditional Monte Carlo variance reduction technique. The idea here is very simple. As was the case with control variates, we use our knowledge about the system being studied to reduce the variance of our estimator. As usual, we wish to estimate  $\theta = \mathbb{E}[h(\mathbf{X})]$  where  $\mathbf{X} = (X_1,\dots ,X_m)$ . If we could compute  $\theta$  analytically, then this would be equivalent to solving an  $m$ -dimensional integral. However, maybe it is possible to evaluate part of the integral analytically. If so, then we might be able to use simulation to estimate the other part and thereby obtain a variance reduction. In order to explore these ideas we must first review conditional expectations and variances.

# Conditional Expectations and Variances

Let  $\mathbf{X}$  and  $\mathbf{Z}$  be random vectors, and let  $Y = h(\mathbf{X})$  be a random variable. Suppose we set

$$
V = \mathbb {E} [ Y | \mathbf {Z} ].
$$

Then  $V$  is itself a random variable that depends on  $\mathbf{Z}$ , so we may write  $V = g(\mathbf{Z})$  for some function,  $g(\cdot)$ . We also know that

$$
\mathbb {E} [ V ] = \mathbb {E} [ \mathbb {E} [ Y | \mathbf {Z} ] ] = \mathbb {E} [ Y ]
$$

so if we are trying to estimate  $\theta = \mathbb{E}[Y]$ , one possibility would be to simulate  $V$  instead of simulating  $Y$ . In order to decide which would be a better estimator of  $\theta$ , it is necessary to compare the variances of  $Y$  and  $V = \mathbb{E}[Y|\mathbf{Z}]$ . To do this, recall the conditional variance formula:

$$
\operatorname{Va r} (Y) = \mathbb {E} [ \operatorname{Va r} (Y | \mathbf {Z}) ] + \operatorname{Va r} (\mathbb {E} [ Y | \mathbf {Z} ]). \tag {5}
$$

Now  $\operatorname{Var}(Y|\mathbf{Z})$  is also a random variable that depends on  $\mathbf{Z}$ , and since a variance is always non-negative, it must follow that  $\mathbb{E}[\operatorname{Var}(Y|\mathbf{Z})] \geq 0$ . But then (5) implies

$$
\operatorname{Va r} (Y) \geq \operatorname{Va r} (\mathbb {E} [ Y | \mathbf {Z} ]) = \operatorname{Va r} (V)
$$

so we can conclude that  $V$  is a better $^{1}$  estimator of  $\theta$  than  $Y$ . To see this from another perspective, suppose that to estimate  $\theta$  we first have to simulate  $\mathbf{Z}$  and then simulate  $Y$  given  $\mathbf{Z}$ . If we can compute  $\mathbb{E}[Y|\mathbf{Z}]$  exactly, then we can eliminate the additional noise that comes from simulating  $Y$  given  $\mathbf{Z}$ , thereby obtaining a variance reduction. Finally, we point out that in order for the conditional expectation method to be worthwhile, it must be the case that  $Y$  and  $\mathbf{Z}$  are dependent.

Exercise 2 Why must  $Y$  and  $Z$  be dependent for the conditional Monte Carlo method to be worthwhile?

# 4.1 The Conditional Monte Carlo Simulation Algorithm

Summarizing the previous discussion, we want to estimate  $\theta \coloneqq \mathbb{E}[h(\mathbf{X})] = \mathbb{E}[Y]$  using conditional Monte Carlo. To do so, we must have another variable or vector,  $\mathbf{Z}$ , that satisfies the following requirements:

1. Z can be easily simulated  
2. $V\coloneqq g(\mathbf{Z})\coloneqq \mathbb{E}[Y|\mathbf{Z}]$  can be computed exactly.

This means that we can simulate a value of  $V$  by first simulating a value of  $\mathbf{Z}$  and then setting  $V = g(\mathbf{Z}) = \mathbb{E}[Y|\mathbf{Z}]$ . We therefore have the following algorithm for estimating  $\theta$ .

Conditional Monte Carlo Algorithm for Estimating  $\theta$  
for  $i = 1$  to  $n$  generate  $\mathbf{Z}_i$  compute  $g(\mathbf{Z}_i) = \mathbb{E}[Y|\mathbf{Z}_i]$  set  $V_{i} = g(\mathbf{Z}_{i})$  end for set  $\widehat{\theta}_{n,cm} = \overline{V}_n = \sum_{i = 1}^n V_i / n$  set  $\widehat{\sigma}_{n,cm}^{2} = \sum_{i = 1}^{n}(V_{i} - \overline{V}_{n})^{2} / (n - 1)$  set approx.  $100(1 - \alpha)\% \mathrm{Cl} = \widehat{\theta}_{n,cm}\pm z_{1 - \alpha /2}\frac{\widehat{\sigma}_{n,cm}}{\sqrt{n}}$

It is also possible that other variance reduction methods could be used in conjunction with conditioning. For example, it might be possible to use control variates, or if  $g(.)$  is a monotonic function of its arguments, then antithetic variates might be useful.

Example 9 Suppose we wish to estimate  $\theta \coloneqq \mathbf{P}(U + Z > 4)$  where  $U\sim \mathrm{Exp}(1)$  and  $Z\sim \mathrm{Exp}(1 / 2)$ . If we set  $Y\coloneqq I_{\{U + Z > 4\}}$  then we see that  $\theta = \mathbb{E}[Y]$ . Then the usual simulation method is:

1. Generate  $U_{1},\ldots ,U_{n}$ $Z_{1},\ldots ,Z_{n}$  all independent  
2. Set  $Y_{i} = I_{\{U_{i} + Z_{i} > 4\}}$  for  $i = 1, \dots, n$  
3. Set  $\widehat{\theta}_n = \sum_{i=1}^n Y_i / n$  
4. Compute approximate CI's as usual.

However, we can also use the conditioning method, which works as follows. Set  $V = \mathbb{E}[Y|Z]$ . Then

$$
\mathbb {E} [ Y | Z = z ] = \mathbf {P} (U + Z > 4 | Z = z) = \mathbf {P} (U > 4 - z) = 1 - F_{u} (4 - z)
$$

where  $F_{u}(.)$  is the CDF of  $U$  which we know is  $\mathrm{Exp}(1)$ . Therefore

$$
1 - F_{u} (4 - z) = \left\{ \begin{array}{l l} e^{- (4 - z)} & \text{if } 0 \leq z \leq 4, \\ 1 & \text{if } z > 4. \end{array} \right.
$$

which implies

$$
V = \mathbb {E} [ Y | Z ] = \left\{ \begin{array}{l l} e^{- (4 - Z)} & \text{if } 0 \leq Z \leq 4, \\ 1 & \text{if } Z > 4. \end{array} \right.
$$

Now the conditional Monte Carlo algorithm for estimating  $\theta = \mathbb{E}[V]$  is:

1. Generate  $Z_{1},\ldots ,Z_{n}$  all independent  
2. Set  $V_{i} = \mathbb{E}[Y|Z_{i}]$  for  $i = 1, \dots, n$  
3. Set  $\widehat{\theta}_{n,cm} = \sum_{i=1}^{n} V_i / n$  
4. Compute approximate Cl's as usual using the  $V_{i}$ 's.

Note that we might also want to use other variance reduction methods in conjunction with conditioning when we are finding  $\hat{\theta}_{n,cm}$ .

Before proceeding with another example, we first recall the Black-Scholes formula for the price of a European call option on a non-dividend paying stock with time  $t$  price,  $S_{t}$ . Let  $r$  be the risk-free interest rate and suppose  $S_{t} \sim GBM(r, \sigma^{2})$  under the risk-neutral measure,  $Q$ . Then the price,  $C_{0}$ , of a call option with strike  $K$  and expiration  $T$  is given by

$$
\begin{array}{l} C_{0} = \mathbb {E}_{0}^{Q} \left[ e^{- r T} \max  (0, S_{T} - K) \right] \\ = S_{0} \Phi (d_{1}) - K e^{- r T} \Phi (d_{2}) \\ \end{array}
$$

where  $\Phi(.)$  is the CDF of a standard normal random variable and

$$
\begin{array}{l} d_{1} = \frac{\log (S_{0} / K) + (r + \sigma^{2} / 2) T}{\sigma \sqrt{T}} \\ {d_{2}} = {\frac{\log (S_{0} / K) + (r - \sigma^{2} / 2) T}{\sigma \sqrt{T}}} = {d_{1} - \sigma \sqrt{T}.} \\ \end{array}
$$

We will also need the following definition for Example 10 below.

Definition 1 Let  $c(x, t, K, r, \sigma)$  be the Black-Scholes price of a European call option when the current stock price is  $x$ , the time to maturity is  $t$ , the strike is  $K$ , the risk-free interest rate is  $r$  and the volatility is  $\sigma$ .

# Example 10 (Pricing a Barrier Option)

Suppose we want to find the price of a European option that has payoff at expiration given by

$$
h (\mathbf {X}) = \left\{ \begin{array}{l l} \max  (0, S_{T} - K_{1}) & \text{if } S_{T / 2} \leq L, \\ \max  (0, S_{T} - K_{2}) & \text{ot he rw is e .} \end{array} \right.
$$

where  $\mathbf{X} = (S_{T / 2}, S_T)$ . We can write the price of the option as

$$
C_{0} = \mathbb {E}_{0}^{Q} \left[ e^{- r T} \left(\max (0, S_{T} - K_{1}) I_{\{S_{T / 2} \leq L \}} + \max (0, S_{T} - K_{2}) I_{\{S_{T / 2} > L \}}\right) \right]
$$

where as usual, we assume that  $S_{t}\sim GBM(r,\sigma^{2})$

Question 1: How would you estimate the price of this option using simulation and only one normal random variable per sample payoff?

Question 2: Could you use antithetic variates as well? Would they be guaranteed to produce a variance reduction?

Exercise 3 (Estimating Credit Risk; from Asmussen and Glynn's Stochastic Simulation)

A bank has a portfolio of  $N = 100$  loans to  $N$  companies and wants to evaluate its credit risk. Given that company  $n$  defaults, the loss for the bank is a  $N(\mu, \sigma^2)$  random variable  $X_{n}$  where  $\mu = 3$ ,  $\sigma^2 = 1$ . Defaults are dependent and described by indicators  $D_{1}, \ldots, D_{N}$  and a background random variable  $P$  (measuring, say, general economic conditions), such that  $D_{1}, \ldots, D_{N}$  are IID Bernoulli(p) given  $P = p$ , and  $P$  has a Beta(1, 19) distribution, that is, density  $(1 - p)^{18} / 19$ ,  $0 < p < 1$ .

Estimate  $P(L > x)$ , where  $L = \sum_{n=1}^{N} D_n X_n$  is the loss, using both crude Monte Carlo and conditional Monte Carlo, where the conditioning is on  $\sum_{n=1}^{N} D_n$ . For  $x$ , take

$$
x = 3 \mathbb {E} [ L ] = 3 N \mathbb {E} [ P ] \mathbb {E} [ X ] = 3 \cdot 1 0 0 \cdot 0. 0 5 \cdot 3 = 4 5.
$$