---
parent_directory: FINM Quantitative Trading Strategies/Lecture Notes
title: "Lecture 08: Exponentially Weighted Statistics"
tags:
aliases:
  - Exponentially Weighted Statistics
  - EWMA
parent_folder: Lecture Notes
subfolder:
key_concepts:
cssclasses: academia
---

# EXPONENTIALLY WEIGHTED STATISTICS

# 1. MOTIVATION

Very frequently in trading model design, we need to know how a variable compares to recent history. As data points recede into the past, however, their importance to current trading strategies declines. In effect, at time  $t$ , we want to include points  $x_{t - s}$  in the past with declining weight  $W = W(s)$  depending on the age  $s$ . We can then get a weighted sum

$$
S _ {t} = \int_ {s = 0} ^ {\infty} W (s) x _ {t - s} d s
$$

or its near equivalent weighted average

$$
A _ {t} = \frac {\int_ {s = 0} ^ {\infty} W (s) x _ {t - s} d s}{\int_ {s = 0} ^ {\infty} W (s) d s}.
$$

Often, especially for the common operation of averaging, we rescale our weights to make life easier

$$
w (s) := \frac {W (s)}{\int_ {s = 0} ^ {\infty} W (s) d s}.
$$

and frequently we deal in discrete sampling where sums take the place of these integrals so that we may say for example

$$
A _ {t _ {j}} = \sum_ {i = 0} ^ {\infty} w _ {i} x _ {j - i}.
$$

Fans of functional analysis or signal processing will recognize this as a convolution operation.

We could consider many possible functions for such a weighting scheme. The simplest, conceptually, is a moving boxcar window where we discard any points older than, say  $s = 30$  days. The trouble with boxcar weighting is that, by not smoothly decaying old data, it gives us surprises as we run the business. The reason is easy to see. Imagine we start with a relatively stable set of observations

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/1bf8df35-98df-41aa-9420-f672c79229c4/b85075862d405f98dc9f6de2d54ed7eeeb4dd8765c9902334725deba60bc639b.jpg)  
FIGURE 1. A boxcar average doing a nice job

We get one big outlier, which naturally brings down the average in a sizable jump

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/1bf8df35-98df-41aa-9420-f672c79229c4/3fff56c556954c9e8d487628bc7fabdd70ce6d0af5f37f5a79a29f4014241960.jpg)  
FIGURE 2. New information drops the average quite a bit, as expected

And then, after our window has passed, the average jumps again, in the opposite direction

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/1bf8df35-98df-41aa-9420-f672c79229c4/1878a6e9c7d57e5cabcc127ea4966bae0fd28c2b5e75598f4ef701680e21115e.jpg)  
Boxcar Average, Full Picture  
FIGURE 3. After the boxcar window has passed, we get a second jump

It's perfectly normal to have your systems react in a big way to a new outlier. After all, that outlier represents important new information arriving. What is not normal is to have a big reaction to the outlier falling out of your averaging window. The window size was your arbitrary choice, not a bit of important new data. Especially if the averaging period is more than a few weeks, people will forget about the outlier and then go into panic mode when model parameters take big jumps due to this behavior.

We can avoid this by choosing a "tent" function where weight declines linearly up to our limit, which on daily data with a 30 day limit would set  $w = 0$  for  $s \geq 30$  and otherwise choose for  $i = 0, \ldots, 29$

$$
w _ {i} := w (s _ {i}) = \frac {3 0 - i}{3 0 \left(\frac {3 0 + 1}{2}\right)}
$$

Any weighting scheme we desire is available to us, but it turns out one of them is special. Namely, if we choose the exponential weighting scheme with coefficient  $\eta < 0$  and  $i = 0,\dots ,\infty$

$$
w _ {i} := w (s _ {i}) = \eta^ {i} \cdot (1 - \eta)
$$

with the coefficient  $1 - \eta$  chosen because  $1 + \eta +\eta^{2} + \dots = \frac{1}{1 - \eta}$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/1bf8df35-98df-41aa-9420-f672c79229c4/c07d017e28f32f6e8eb9cbdfca9f9f24a34d60406660ff547620c106ef6c9d2c.jpg)  
FIGURE 4. Weights decaying with age. Here the exponential center of mass was set to 10.

Examining the effect on actual data, we can apply these weighting schemes to a few years' Sunoco closing prices. On the full scale it is hard to see much difference

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/1bf8df35-98df-41aa-9420-f672c79229c4/ad3b1073f45fbdbdd30fae45ac7820c8754450c3ea0de9c51c8b9691ec04b408.jpg)  
FIGURE 5. Little difference in weighting schemes on timescale much larger than the window

but on shorter time horizons close to the window size we more significant effects.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/1bf8df35-98df-41aa-9420-f672c79229c4/f9974e62045a7111daec49a326361f3c8b06df884e1e37ffbee1c365a7e277f0.jpg)  
Sunoco Differing Averages  
FIGURE 6. Significant difference in weighting schemes on timescale close to the window

1.1. Comparison With Outliers. As we can see, exponential and tent schemes, with their decaying weights, do not suffer from the jumping problem of boxcars.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/1bf8df35-98df-41aa-9420-f672c79229c4/f04dcfb6be70e92b922f82142f80acd6a62c3ba598d0cd7c12b0b99c913a528e.jpg)  
Differing Averages With Outlier  
FIGURE 7. All three schemes react to the outlier, but only boxcar suffers a severe "bounce-back" effect

# 2. EFFICIENT ALGORITHMS

Among available weighting schemes, quantitative practitioners greatly favor the boxcar and the exponential. Boxcar is popular due to its simplicity of understanding and implementation. Exponential weighting is popular because it enjoys a particularly clean and efficient algorithm for computation. To begin with, note that each weight  $w_{i}$  can be computed as  $w_{i} = \eta w_{i - 1}$ . Now, note that if we have already computed the old, previous average

$$
A _ {t _ {j - 1}} = (1 - \eta) \sum_ {i = 0} ^ {\infty} \eta^ {i} x _ {j - 1 - i}.
$$

then it can be rewritten as

$$
A _ {t _ {j - 1}} = (1 - \eta) \frac {1}{\eta} \sum_ {i = 0} ^ {\infty} \eta^ {i - 1} x _ {j - 1 - i} = (1 - \eta) \frac {1}{\eta} \sum_ {i = 1} ^ {\infty} \eta^ {i} x _ {j - i}.
$$

Our new average is

$$
\begin{array}{l} A _ {t _ {j}} = (1 - \eta) \sum_ {i = 0} ^ {\infty} \eta^ {i} x _ {j - i} \\ = (1 - \eta) x _ {j} + (1 - \eta) \sum_ {i = 1} ^ {\infty} \eta^ {i} x _ {j - i} \\ = (1 - \eta) (x _ {j}) + \eta A _ {t _ {j - 1}} \\ \end{array}
$$

Therefore, to update our average, we need to perform only a two multiplications and an addition. Furthermore, we need not store any arrays of values or intermediate results (unless we want to). We can discard  $A_{t_{j-1}}$  the moment it has been used<sup>1</sup> to compute  $A_{t_j}$ . Thus, along with very few computations, updates to the exponential average or sum cost essentially no computer memory.

The implications for efficient computation almost cannot be overstated. Backtesting and parameter searches become far faster when computation is efficient.

We can contrast with, say, boxcar updating. Computationally it is not terribly expensive, but for a window size  $N$  we have to keep track of the last  $N$  values along with their sum  $S_{i}$ . Updating is then a matter of dropping the oldest item out of the list, updating  $S_{i}$  by subtracting its value, and then recomputing the quotient for the average<sup>2</sup>.

2.1. Infinite Lookback. Since exponential decay has strictly positive weights, we might want to correct for the use of  $\infty$  in our computations above. For example, if  $N = 3$  and we take  $A_{1} = x_{1}$ , then our "efficient" formula gives

$$
A _ {3} = (1 - \eta) (x _ {3}) + \eta \left((1 - \eta) (x _ {2}) + \eta x _ {1}\right)
$$

which is not the same thing as the truncated geometric series averaging we might expect

$$
\aleph_ {3} = \frac {\left(x _ {3} + \eta x _ {2} + \eta^ {2}\right)}{1 + \eta + \eta^ {2}}
$$

In cases of small sample counts, we may well want to adjust for this difference.

# 3. TIME-WEIGHTED AVERAGING

So far, we have covered exponential weighting suitable for regular time series, or other cases where the relative importance of data depends on observation count.

3.1. Decay By Time. Let us now consider the case where the importance of data declines with respect to "wall clock" time  $t$ . This is particularly relevant where data updates come in bursts. Here we choose a exponentially decaying weight, dependent on the age  $\Delta t$  of all former data

$$
w = w _ {\lambda} (\Delta t) = e ^ {- \lambda \cdot \Delta t}
$$

where  $\lambda$  has units of 1/time, and our update formula becomes, with observation  $x_{j}$  at time  $t_j$

$$
A _ {t _ {j}} = e ^ {- \lambda \cdot (t _ {j} - t _ {j - 1})} A _ {t _ {j - 1}} + \left(1 - e ^ {- \lambda \cdot (t _ {j} - t _ {j - 1})}\right) x _ {j}
$$

We refer to the quantity  $1 / \lambda$  as the characteristic time of our averaging, and the weight of data up to age  $1 / \lambda$  is of course  $1 / e$ .

For regularly spaced data at intervals  $\Delta t = \tau$ , this is equivalent to our previous formulas with  $\eta = e^{-\lambda \cdot \tau}$ .

3.2. Updates For Time-Weighted Averaging. Our update algorithm is nearly identical, but now we need to track not only our previous average, but also the time  $t_{j - 1}$  at which it was computed. This is still a trivial burden, and our calculation and memory efficiency remain essentially unaffected.

It is important to note that the time-weighted average will put very low weight on fresh data items if they come in rapid succession, since the decay of old data will be small. Whether or not this property is desirable depends on the specifics of the economic calculation in play.

# 4. TERMINOLOGY IN EXPONENTIAL WEIGHTING

If we consider either a discrete scheme with decay on old data of  $c_{\lambda} = e^{-\lambda}$ , or a time-weighted scheme with decay of size  $e^{-\lambda \Delta t}$ , there are a few equivalent ways in which these may be described:

- Characteristic Time  
- Decay Coefficient  $\lambda$  
- Unit Decay  $\eta$  (which  $= e^{-\lambda}$ )  
- Half-life  
Center Of Mass  
- Span

All of these fully specify an exponential weighting scheme, so you will see various colleagues use these terms, according to their preferences.

# 5. UPDATE FORMULAS FOR COVARIANCE

Higher-order moments, including covariance (and hence correlation), enjoy update formulas as found in Pebay (2008). In particular Pebay shows that in the case of no decay

$$
c _ {i + 1} = c _ {i} + \frac {i}{i + 1} (x - \mu_ {x}) (y - \mu_ {y})
$$