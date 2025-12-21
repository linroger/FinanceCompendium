---
title: Appendix B - Jensens Inequality
parent_directory: Derivatives Market Complete Full/chapters manual
formatted: 2025-12-21 02:42:00 AM
formatter_model: claude-sonnet-4
cli_tool: claude-code
primary_tags:
  - jensens inequality
  - convex functions
  - concave functions
secondary_tags:
  - probability theory
  - expected value
  - mathematical inequality
  - function convexity
  - call option pricing
cssclasses: academia
---

# Appendix B - Jensens Inequality

The purpose of this appendix is to understand Jensen's inequality. Suppose that  $x$  is a random variable with mean  $E(x)$ , and  $f(x)$  is a convex function of  $x$ .

```d2
direction: right

Jensen's Inequality: {
  For Convex Function f(x)
  E[f(x)] >= f(E[x])
  Examples: {
    Exponential Function
    Call Option Payoff
  }
}
```

Proposition 1 Jensen's inequality states that if  $f(x)$  is convex, then for any probability distribution for  $x$ ,

$$
\operatorname {E} [ f (x) ] \geq f [ \operatorname {E} (x) ] \tag {1}
$$

If  $f(x)$  is concave, the inequality is reversed.

In order to understand this result we first need some definitions. A function is convex if it is curved like the cross-section of a bowl; a function is concave if it is curved like the cross-section of an upside-down bowl. We will provide some examples illustrating Jensen's inequality, and then we will provide a proof (including a more precise definition of convexity).

### I. EXAMPLE: THE EXPONENTIAL FUNCTION

Figure 1 shows a graph of the exponential function,  $f(x) = e^{x}$ . Note that  $e^x$  is convex. Let  $x \sim \mathrm{Binomial}(-1, 1; 0.5)$ . We have

$$
\mathrm {E} (x) = (0. 5 \times - 1) + (0. 5 \times 1) = 0
$$

We also have

$$ f (1) = e ^ {1} = 2. 7 1 8 3
$$

$$ f (- 1) = e ^ {- 1} = 0. 3 6 7 9
$$

Thus,

**FIGURE I**

Graph of  $e^x$  showing that it is convex, and that  $[(0.5\times f(-1)) + (0.5\times f(1))] > f(0)$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/e60f7bced5e3bf1c13c749d6729dadbbc1facddced44f58a09780eccbd8d3c9e.jpg)

$$
\begin{array}{l} f [ \mathrm {E} (x) ] = e ^ {\mathrm {E} (x)} \\ = e ^ {0} \\ = 1 \\ \end{array}
$$ and


$$

\begin{array}{l} \operatorname {E} [ f (x) ] = (0. 5 \times e ^ {1}) + (0. 5 \times e ^ {- 1}) \\ = 1. 5 4 3 1 \\ \end{array}

$$ which is consistent with Jensen's inequality.


Graphically, the average of  $f(1)$  and  $f(-1)$  lies on the chord connecting those points, which is the straight line in Figure 1.  $f(0)$  is below the chord, which is what Jensen's inequality states.

### 2. EXAMPLE: THE PRICE OF A CALL

Here is an example of Jensen's inequality. Consider a call option with a strike price of \$40. Suppose that  $x$  is the stock price, and that  $x \sim \text{Binomial}(35, 45; 0.5)$ . Then

$$

\mathrm {E} (x) = (0. 5 \times 3 5) + (0. 5 \times 4 5) = 4 0.

$$

Now let  $f(x)$  be the value of the call at expiration:

$$ f (x) = \max  (x - K, 0)
$$

When we evaluate the call price at the expected stock price,  $f[\mathrm{E}(x)]$ , we have

**FIGURE 2**

Illustration of Jensen's inequality with a call option. The line labeled  $f(x)$  depicts the call payoff at expiration. The option evaluated at the expected stock price lies on this line. The expected value of the call, on the other hand, lies on the line connecting the points labeled (35, 0) and (45, 5). That line is always above the call payoff at expiration.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/d036e79c036f4d0ea9b434434a93b99cc47fe72e8e0f1e7e291212fbb5fa4765.jpg)

$$
\begin{array}{l} f [ \mathrm {E} (x) ] = \max  [ \mathrm {E} (x) - 4 0, 0 ] \\ = 0 \\ \end{array}
$$

And when we evaluate the expected value of the call,  $\operatorname{E}\left[f(x)\right]$ , we have

$$
\begin{array}{l} \operatorname {E} [ f (x) ] = 0. 5 \times f (4 5) + 0. 5 \times f (3 5) \\ = 0. 5 \times \max  (4 5 - 4 0, 0) + 0. 5 \times \max  (3 5 - 4 0, 0) \\ = 0. 5 \times 5 + 0 = 2. 5 \\ \end{array}
$$

Since  $2.5 > 0$ ,  $\operatorname{E}\left[f(x)\right] \geq f[\operatorname{E}(x)]$ , in accord with Jensen's inequality.

Figure 2 displays this example graphically. The straight line connecting  $f(35)$  and  $f(45)$  represents  $\operatorname{E}\left[f(x)\right]$ ; this line always exceeds the payoff to the call option. This example illustrates in a purely mechanical fashion why uncertainty makes an option more valuable.

### 3. PROOF OF JENSEN'S INEQUALITY²

A mathematical way to state the definition of convexity is that  $f(x)$  is convex if for any two points  $x$  and  $y$ ,  $0 \leq \lambda \leq 1$ , and  $z = \lambda x + (1 - \lambda)y$ ,

$$ f (z) \leq \lambda f (x) + (1 - \lambda) f (y) \tag {2}
$$

If  $f(x)$  is convex, then there is a line  $L(x)$ , running through the point  $[z, f(z)]$  such that  $L(z) = f(z)$  and for every  $x$ ,  $f(x) \geq L(x)$ . Because  $L(x)$  is a line, it can be written as  $a + bx$ , hence  $\operatorname{E}[L(x)] = L[\operatorname{E}(x)]$ . Define  $L^{*}(x)$  as the tangent line at the point  $\{\operatorname{E}(x), f[\operatorname{E}(x)]\}$ . (In Figure 1, this line would be the tangent line at the point  $x = 0$ .)

Now because  $f(x) \geq L^{*}(x)$ , we have  $\operatorname{E}[f(x)] \geq \operatorname{E}[L^{*}(x)] = L^{*}[\operatorname{E}(x)] = f[\operatorname{E}(x)]$ . (The last step is because we defined  $L^{*}(x)$  to include the point  $\{\operatorname{E}(x), f[\operatorname{E}(x)]\}$ .) This proves Jensen's inequality.
