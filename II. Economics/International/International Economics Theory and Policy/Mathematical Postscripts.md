---
title: Mathematical Postscripts
parent_directory: International Economics Theory and Policy
formatted: 2025-12-21 02:40:00 PM
formatter_model: grok-code-fast-1
cli_tool: opencode
primary_tags:
- mathematical postscripts
- factor proportions model
secondary_tags:
- cost minimization production
- input coefficients capital labor
- factor price equations
- quantity equations outputs
- hat algebra economics
- trading world economy
- production possibility frontier
- income prices utility
- terms trade improvement
- supply demand equilibrium
- economic growth
- income transfer
- tariff imposition
- monopolistic competition
- risk aversion
- portfolio diversification
- indifference curves
- expected utility
- contingent consumption
- marginal utility
- arbitrage profits
- short sales
- substitution income effects
- risk neutral behavior
cssclasses: academia
---

# Mathematical Postscripts

## The Factor-Proportions Model

In this postscript we set out a formal mathematical treatment for the factor-proportions model of production explained in Chapter 5. The mathematical treatment is useful in deepening your understanding of the model.

### Factor Prices and Costs

Consider the production of some good that requires capital and labor as factors of production. Provided the good is produced with constant returns to scale, the technology of production may be summarized in terms of the unit isoquant (II in Figure 5P-1), a curve showing all the combinations of capital and labor that can be used to produce one unit of the good. Curve II shows that there is a trade-off between the quantity of capital used per unit of output, $a_{K}$, and the quantity of labor per unit of output, $a_{L}$. The curvature of the unit isoquant reflects the assumption that it becomes increasingly difficult to substitute capital for labor as the capital-labor ratio increases, and vice versa.

In a competitive market economy, producers will choose the capital-labor ratio in production that minimizes their cost. Such a cost-minimizing production choice is shown in Figure 5P-1 as point $E$, the point at which the unit isoquant $II$ is tangent to a line whose slope is equal to minus the ratio of the price of labor, $w$, to the price of capital, $r$.

The actual cost of production is equal to the sum of the cost of capital and labor inputs,

$$
c = a_{K} r + a_{L} w, \tag {5P-1}
$$

where the input coefficients, $a_{K}$ and $a_{L}$, have been chosen to minimize $c$.

Because the capital-labor ratio has been chosen to minimize costs, it follows that a change in that ratio cannot reduce costs. Costs cannot be reduced by increasing $a_{K}$ while reducing $a_{L}$, nor conversely. It follows that an infinitesimal change in the capital-labor ratio from the cost-minimizing choice must have no effect on cost. Let $da_{K}, da_{L}$ be small changes from the optimal input choices. Then

$$
r d a_{K} + w d a_{L} = 0 \tag {5P-2}
$$

for any movement along the unit isoquant.

Consider next what happens if the factor prices  $r$  and  $w$  change. This will have two effects: It will change the choice of  $a_{K}$  and  $a_{L}$ , and it will change the cost of production.

First, consider the effect on the relative quantities of capital and labor used to produce one unit of output. The cost-minimizing labor-capital ratio depends on the ratio of the price of labor to that of capital:

$$
\frac{a_{K}}{a_{L}} = \Phi \left(\frac{w}{r}\right). \tag {5P-3}
$$

**FIGURE 5P-1: Efficient Production**

The cost-minimizing capital-labor ratio depends on factor prices.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/52971ed2-f993-4611-9c28-dd416948cd16/802ff225917302ca068f9a9e184b4c3cc9658ebde2de4ebf539e08adce43be38.jpg)

The cost of production will also change. For small changes in factor prices  $dr$  and  $dw$ , the change in production cost is

$$
d c = a_{K} d r + a_{L} d w + r d a_{K} + w d a_{L}. \tag {5P-4}
$$

From equation (5P-2), however, we already know that the last two terms of equation (5P-4) sum to zero. Hence the effect of factor prices on cost may be written

$$
d c = a_{K} d r + a_{L} d w. \tag {5P-4'}
$$

It turns out to be very convenient to derive a somewhat different equation from equation (5P-4'). Dividing and multiplying some of the elements of the equation leads to the following new equation:

$$
\frac{d c}{c} = \left(\frac{a_{K} r}{c}\right) \left(\frac{d r}{r}\right) + \left(\frac{a_{L} w}{c}\right) \left(\frac{d w}{w}\right). \tag {5P-5}
$$

The term  $dc / c$  may be interpreted as the percentage change in  $c$ , and may conveniently be designated as  $\hat{c}$ ; similarly, let  $dr / r = \hat{r}$  and  $dw / w = \hat{w}$ . The term  $a_{K}r / c$  may be interpreted as the share of capital in total production costs; it may be conveniently designated  $\theta_{K}$ . Thus equation (5P-5) can be compactly written

$$
\hat {c} = \theta_{K} \hat {r} + \theta_{L} \hat {w}, \tag {5P-5'}
$$

where

$$
\theta_{K} + \theta_{L} = 1.
$$

This is an example of "hat algebra," an extremely useful way to express mathematical relationships in international economics.

## The Basic Equations in the Factor-Proportions Model

Suppose a country produces two goods, cloth  $C$  and food  $F$ , using two factors of production, capital and labor. Assume that food production is capital-intensive. The price of each good must equal its production cost:

$$
P_{F} = a_{K F} r + a_{L F} w, \tag {5P-6}
$$

$$
P_{C} = a_{K C} r + a_{L C} w, \tag {5P-7}
$$

where  $a_{KF}, a_{LF}, a_{KC}, a_{LC}$  are the cost-minimizing input choices given the price of capital,  $r$ , and labor,  $w$ .

Also, the economy's factors of production must be fully employed:

$$
a_{K F} Q_{F} + a_{K C} Q_{C} = K, \tag {5P-8}
$$

$$
a_{L F} Q_{F} + a_{L C} Q_{C} = L, \tag {5P-9}
$$

where  $K, L$  are the total supplies of capital and labor.

The factor-price equations (5P-6) and (5P-7) imply equations for the rate of change for factor prices.

$$
\hat {P}_{F} = \theta_{K F} \hat {r} + \theta_{L F} \hat {w}, \tag {5P-10}
$$

$$
\hat {P}_{C} = \theta_{K C} \hat {r} + \theta_{L C} \hat {w}, \tag {5P-11}
$$

where  $\theta_{KF}$  is the share of capital in production cost of  $F$ , etc.,  $\theta_{KF} > \theta_{KC}$  and  $\theta_{LF} < \theta_{LC}$  because  $F$  is more capital-intensive than  $C$ .

The quantity equations (5P-8) and (5P-9) must be treated more carefully. The unit inputs  $a_{KF}$ , etc., can change if factor prices change. If goods prices are held constant, however, then factor prices will not change. Thus for given prices of  $F$  and  $C$ , it is also possible to write hat equations in terms of factor supplies and outputs:

$$
\alpha_{K F} \hat {Q}_{F} + \alpha_{K C} \hat {Q}_{C} = \hat {K}, \tag {5P-12}
$$

$$
\alpha_{L F} \hat {Q}_{F} + \alpha_{L C} \hat {Q}_{C} = \hat {L}, \tag {5P-13}
$$

where  $\alpha_{KF}$  is the share of the economy's capital supply that is used in production of  $F$ , etc.,  $\alpha_{KF} > \alpha_{LF}$  and  $\alpha_{KC} < \alpha_{LC}$  because of the greater capital intensity of  $F$  production.

## Goods Prices and Factor Prices

The factor-price equations (5P-10) and (5P-11) may be solved together to express factor prices as the outcome of goods prices (these solutions make use of the fact that  $\theta_{LF} = 1 - \theta_{KF}$  and  $\theta_{LC} = 1 - \theta_{KC}$ ):

$$
\hat {r} = \left(\frac{1}{D}\right) \left[ \left(1 - \theta_{K C}\right) \hat {P}_{F} - \theta_{L F} \hat {P}_{C} \right], \tag {5P-14}
$$

$$
\hat {w} = \left(\frac{1}{D}\right) \left[ \theta_{K F} \hat {P}_{C} - \theta_{K C} \hat {P}_{F} \right], \tag {5P-15}
$$

where  $D = \theta_{KF} - \theta_{KC}$  (implying that  $D > 0$ ). These may be arranged in the form

$$
\hat {r} = \hat {P}_{F} + \left(\frac{\theta_{L F}}{D}\right) \left(\hat {P}_{F} - \hat {P}_{C}\right), \tag {5P-14'}
$$

$$
\hat {w} = \hat {P}_{C} + \left(\frac{\theta_{K C}}{D}\right) \left(\hat {P}_{F} - \hat {P}_{C}\right). \tag {5P-15'}
$$

Suppose that the price of  $F$  rises relative to the price of  $C$ , so that  $\hat{P}_F > \hat{P}_C$ . Then it follows that

$$
\hat {r} > \hat {P}_{F} > \hat {P}_{C} > \hat {w}. \tag {5P-16}
$$

That is, the real price of capital rises in terms of both goods, while the real price of labor falls in terms of both goods. In particular, if the price of  $F$  were to rise with no change in the price of  $C$ , the wage rate would actually fall.

### Factor Supplies and Outputs

As long as goods prices may be taken as given, equations (5P-12) and (5P-13) can be solved, using the fact that  $\alpha_{KC} = 1 - \alpha_{KF}$  and  $\alpha_{LC} = 1 - \alpha_{LF}$ , to express the change in output of each good as the outcome of changes in factor supplies:

$$
\hat {Q}_{F} = \left(\frac{1}{\Delta}\right) \left[ \alpha_{L C} \hat {K} - \alpha_{K C} \hat {L} \right], \tag {5P-17}
$$

$$
\hat {Q}_{C} = \left(\frac{1}{\Delta}\right) \left[ - \alpha_{L F} \hat {K} + \alpha_{K F} \hat {L} \right], \tag {5P-18}
$$

where  $\Delta = \alpha_{KF} - \alpha_{LF},\Delta >0$

These equations may be rewritten

$$
\hat {Q}_{F} = \hat {K} + \left(\frac{\alpha_{K C}}{\Delta}\right) (\hat {K} - \hat {L}), \tag {5P-17'}
$$

$$
\hat {Q}_{C} = \hat {L} - \left(\frac{\alpha_{L F}}{\Delta}\right) (\hat {K} - \hat {L}). \tag {5P-18'}
$$

Suppose that  $P_F$  and  $P_C$  remain constant, while the supply of capital rises relative to the supply of labor— $\hat{K} > \hat{L}$ . Then it is immediately apparent that

$$
\hat {Q}_{F} > \hat {K} > \hat {L} > \hat {Q}_{C}. \tag {5P-19}
$$

In particular, if  $K$  rises with  $L$  remaining constant, output of  $F$  will rise by a greater proportion than  $K$ , while output of  $C$  will actually fall.

## The Trading World Economy

### Supply, Demand, and Equilibrium

#### World Equilibrium

Although for graphical purposes it is easiest to express world equilibrium as an equality between relative supply and relative demand, for a mathematical treatment, it is preferable to use an alternative formulation. This approach focuses on the conditions of equality between supply and demand of either one of the two goods, cloth and food. It does not matter which good is chosen because equilibrium in the cloth market implies equilibrium in the food market and vice versa.

To see this condition, let  $Q_{C}, Q_{C}^{*}$  be the output of cloth in Home and Foreign, respectively;  $D_{C}, D_{C}^{*}$  the quantity demanded in each country; and corresponding variables with an  $F$  subscript the food market. Also, let  $p$  be the price of cloth relative to that of food.

In all cases, world expenditure will be equal to world income. World income is the sum of income earned from sales of cloth and sales of food; world expenditure is the sum of purchases of cloth and purchases of food. Thus the equality of income and expenditure may be written

$$
p \left(Q_{C} + Q_{C}^{*}\right) + Q_{F} + Q_{F}^{*} = p \left(D_{C} + D_{C}^{*}\right) + D_{F} + D_{F}^{*}. \tag {6P-1}
$$

Now suppose that the world market for cloth is in equilibrium; that is,

$$
Q_{C} + Q_{C}^{*} = D_{C} + D_{C}^{*}. \tag {6P-2}
$$

Then from equation (6P-1), it follows that

$$
Q_{F} + Q_{F}^{*} = D_{F} + D_{F}^{*}. \tag {6P-3}
$$

That is, the market for food must be in equilibrium as well. Clearly the converse is also true: If the market for food is in equilibrium, so too is the market for cloth.

It is therefore sufficient to focus on the market for cloth to determine the equilibrium relative price.

### Production and Income

Each country has a production possibility frontier along which it can trade off between producing cloth and producing food. The economy chooses the point on the frontier that maximizes the value of output at the given relative price of cloth. This value may be written

$$
V = p Q_{C} + Q_{F}. \tag {6P-4}
$$

As in the cost-minimization cases described in the postscript to Chapter 5, the fact that the output mix chosen maximizes value implies that a small shift in production

along the production possibility frontier away from the optimal mix has no effect on the value of output:

$$
p d Q_{C} + d Q_{F} = 0. \tag {6P-5}
$$

A change in the relative price of cloth will lead to both a change in the output mix and a change in the value of output. The change in the value of output is

$$
d V = Q_{C} d p + p d Q_{C} + d Q_{F}. \tag {6P-6}
$$

However, because the last two terms are, by equation (6P-5), equal to zero, this expression reduces to

$$
d V = Q_{C} d p. \tag {6P-6'}
$$

Similarly, in Foreign,

$$
d V^{*} = Q_{C}^{*} d p. \tag {6P-7}
$$

## Income, Prices, and Utility

Each country is treated as if it were one individual. The tastes of the country can be represented by a utility function depending on consumption of cloth and food:

$$
U = U \left(D_{C}, D_{F}\right). \tag {6P-8}
$$

Suppose a country has an income  $I$  in terms of food. Its total expenditure must be equal to this income, so that

$$
p D_{C} + D_{F} = I. \tag {6P-9}
$$

Consumers will maximize utility given their income and the prices they face. Let  $MU_{C}$ ,  $MU_{F}$  be the marginal utility that consumers derive from cloth and food; then the change in utility that results from any change in consumption is

$$
d U = M U_{C} d D_{C} + M U_{F} d D_{F}. \tag {6P-10}
$$

Because consumers are maximizing utility given income and prices, there cannot be any affordable change in consumption that makes them better off. This condition implies that at the optimum,

$$
\frac{M U_{C}}{M U_{F}} = p. \tag {6P-11}
$$

Now consider the effect on utility of changing income and prices. Differentiating equation (6P-9) yields

$$
p d D_{C} + d D_{F} = d I - D_{C} d p. \tag {6P-12}
$$

But from equations (6P-10) and (6P-11),

$$
d U = M U_{F} \left[ p d D_{C} + d D_{F} \right]. \tag {6P-13}
$$

Thus,

$$
d U = M U_{F} [ d I - D_{C} d p ]. \tag {6P-14}
$$

It is convenient to introduce now a new definition: The change in utility divided by the marginal utility of food, which is the commodity in which income is measured, may be defined as the change in real income and indicated by the symbol  $dy$ :

$$
d y = \frac{d U}{M U_{F}} = d I - D_{C} d p. \tag {6P-15}
$$

For the economy as a whole, income equals the value of output:  $I = V$ . Thus the effect of a change in the relative price of cloth on the economy's real income is

$$
d y = \left[ Q_{C} - D_{C} \right] d p. \tag {6P-16}
$$

The quantity  $Q_{C} - D_{C}$  is the economy's exports of cloth. A rise in the relative price of cloth, then, will benefit an economy that exports cloth; it is thus an improvement in that economy's terms of trade. It is instructive to restate this idea in a slightly different way:

$$
d y = \left[ p \left(Q_{C} - D_{C}\right) \right] \left(\frac{d p}{p}\right). \tag {6P-17}
$$

The term in brackets is the value of exports; the term in parentheses is the percentage change in the terms of trade. The expression therefore says that the real income gain from a given percentage in terms of trade change is equal to the percentage change in the terms of trade multiplied by the initial value of exports. If a country is initially exporting  \$100 billion and its terms of trade improve by 10 percent, the gain is equivalent to a gain in national income of\$ 10 billion.

## Supply, Demand, and the Stability of Equilibrium

In the market for cloth, a change in the relative price will induce changes in both supply and demand.

On the supply side, a rise in  $p$  will lead both Home and Foreign to produce more cloth. We will denote this supply response as in Home and Foreign, respectively, so that

$$
d Q_{C} = s d p, \tag {6P-18}
$$

$$
d Q_{C}^{*} = s^{*} d p. \tag {6P-19}
$$

The demand side is more complex. A change in  $p$  will lead to both income and substitution effects. These effects are illustrated in Figure 6P-1. The figure shows an economy that initially faces a relative price indicated by the slope of the line  $VV^0$ . Given this relative price, the economy produces at point  $Q^0$  and consumes at point  $D^0$ . Now suppose the relative price of cloth rises to the level indicated by the slope of  $VV^2$ . If there were no increase in utility, consumption would shift to  $D^1$ , which would involve an unambiguous fall in consumption of cloth. There is also, however, a change in the economy's real income; in this case, because the economy is initially a net exporter of cloth, real income rises. This change leads to consumption at  $D^2$  rather than  $D^1$ , and this income effect tends to raise consumption of cloth. Analyzing the effect of change in  $p$  on demand requires taking account of both the substitution effect, which is the change in consumption that would take place if real income were held constant, and the income effect, which is the additional change in consumption that is the consequence of the fact that real income changes.

### FIGURE 6P-1

### Consumption Effects of a Price Change

A change in relative prices produces both income and substitution effects.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/52971ed2-f993-4611-9c28-dd416948cd16/6f6d166b3993df00025acbe57d5b9aa152f6ca78699f737bb53b60422d3316ca.jpg)

Let the substitution effect be denoted by  $-e dp$ ; it is always negative. Also, let the income effect be denoted by  $n dy$ ; as long as cloth is a normal good for which demand rises with real income, it is positive if the country is a net exporter of cloth, negative if it is a net importer. Then the total effect of a change in  $p$  on Home's demand for cloth is

$$
\begin{array}{l} d D_{C} = - e d p + n d y \\ = \left[ - e + n \left(Q_{C} - D_{C}\right) \right] d p. \tag {6P-20} \\ \end{array}
$$

The effect on Foreign's demand similarly is

$$
d D_{C}^{*} = \left[ - e^{*} + n^{*} \left(Q_{C}^{*} - D_{C}^{*}\right) \right] d p. \tag {6P-21}
$$

Because  $Q_C^* - D_C^*$  is negative, the income effect in Foreign is negative.

The demand and supply effect can now be put together to get the overall effect of a change in  $p$  on the market for cloth. The excess supply of cloth is the difference between desired world production and consumption:

$$
E S_{C} = Q_{C} + Q_{C}^{*} - D_{C} - D_{C}^{*}. \tag {6P-22}
$$

The effect of a change in  $p$  on world excess supply is

$$
d E S_{C} = \left[ s + s^{*} + e + e^{*} - n \left(Q_{C} - D_{C}\right) - n^{*} \left(Q_{C}^{*} - D_{C}^{*}\right) \right] d p. \tag {6P-23}
$$

If the market is initially in equilibrium, however, Home's exports equal Foreign's imports, so that  $Q_C^* - D_C^* = -(Q_C - D_C)$ ; the effect of  $p$  on excess supply may therefore be written

$$
d E S_{C} = \left[ s + s^{*} + e + e^{*} - \left(n - n^{*}\right) \left(Q_{C} - D_{C}\right) \right] d p. \tag {6P-23'}
$$

Suppose the relative price of cloth were initially a little higher than its equilibrium level. If the result were an excess supply of cloth, market forces would push the relative price of cloth down and thus lead to restoration of equilibrium. On the other hand, if an excessively high relative price of cloth leads to an excess demand for cloth, the price will rise further, leading the economy away from equilibrium. Thus equilibrium will be stable only if a small increase in the relative price of cloth leads to an excess supply of cloth; that is, if

$$
\frac{d E S_{C}}{d p} > 0. \tag {6P-24}
$$

Inspection of equation (6P-23') reveals the factors determining whether or not equilibrium is stable. Both supply effects and substitution effects in demand work toward stability. The only possible source of instability lies in income effects. The net income effect is of ambiguous sign: It depends on whether  $n > n^{*}$ ; that is, on whether Home has a higher marginal propensity to consume cloth when its real income increases than Foreign does. If  $n > n^{*}$ , the income effect works against stability, while if  $n < n^{*}$ , it reinforces the other reasons for stability. The income effects can lead to equilibrium instability because they can generate a relative demand curve for the world that is upward sloping.

In what follows, it will be assumed that equation (6P-24) holds, so that the equilibrium of the world economy is in fact stable.

## Effects of Changes in Supply and Demand

## The Method of Comparative Statics

To evaluate the effects of changes in the world economy, a method known as comparative statics is applied. In each of the cases considered in the text, the world economy is subjected to some change that will lead to a change in the world relative price of cloth. The first step in the method of comparative statics is to calculate the effect of the change in the world economy on the excess supply of cloth at the original  $p$ . This change is denoted by  $dES|_p$ . Then the change in the relative price needed to restore equilibrium is calculated by

$$
d p = \frac{- d E S |_{p}}{(d E S / d p)}, \tag {6P-25}
$$

where  $dES / dp$  reflects the supply, income, and substitution effects described earlier.

The effects of a given change on national welfare can be calculated in two stages. First there is whatever direct effect the change has on real income, which we can denote by  $dy|_{p}$ ; then there is the indirect effect of the resulting change in the terms of trade, which can be calculated using equation (6P-16). Thus the total effect on welfare is

$$
d y = d y \mid_{p} + \left(Q_{C} - D_{C}\right) d p. \tag {6P-26}
$$

### Economic Growth

Consider the effect of growth in the Home economy. As pointed out in the text, by growth we mean an outward shift in the production possibility frontier. This change will lead to changes in both cloth and food output at the initial relative price  $p$ ; let  $dQ_{C}$ ,  $dQ_{F}$  be these changes in output. If growth is strongly biased, one or the other of these changes may be negative, but because production possibilities have expanded, the value of output at the initial  $p$  must rise:

$$
d V = p d Q_{C} + d Q_{F} = \left. d y \right|_{p} > 0. \tag {6P-27}
$$

At the initial  $p$ , the supply of cloth will rise by the amount  $dQ_{C}$ . The demand for cloth will also rise, by an amount  $n dy|_{p}$ . The net effect on world excess supply of cloth will therefore be

$$
\left. d E S \right|_{p} = d Q_{C} - n \left(p d Q_{C} + d Q_{F}\right). \tag {6P-28}
$$

This expression can have either sign. Suppose first that growth is biased toward cloth, so that while  $dQ_{C} > 0$ ,  $dQ_{F} \leq 0$ . Then demand for cloth will rise by

$$
d D_{C} = n (p d Q_{C} + d Q_{F}) \leq n p d Q_{C} > d Q_{C}.
$$

(See footnote 1.)

Thus the overall effect on excess supply will be

$$
\left. d E S \right|_{p} = d Q_{C} - d D_{C} > 0.
$$

As a result,  $dp = -dES|_{p} / (dES / dp) < 0$ : Home's terms of trade worsen.

On the other hand, suppose that growth is strongly biased toward food, so that  $dQ_{C} \leq 0$ ,  $dQ_{F} > 0$ . Then the effect on the supply of cloth at the initial  $p$  is negative, but the effect on the demand for cloth remains positive. It follows that

$$
\left. d E S \right|_{p} = d Q_{C} - d D_{C} <   0,
$$

so that  $dp > 0$ . Home's terms of trade improve.

Growth that is less strongly biased can move  $p$  either way, depending on the strength of the bias compared with the way Home divides its income at the margin.

Turning next to the welfare effects, the effect on Foreign depends only on the terms of trade. The effect on Home, however, depends on the combination of the initial income change and the subsequent change in the terms of trade, as shown in equation (6P-26). If growth turns the terms of trade against Home, this condition will oppose the immediate favorable effect of growth.

But can growth worsen the terms of trade sufficiently to make the growing country actually worse off? To see that it can, consider first the case of a country that experiences a biased shift in its production possibilities that raises  $Q_{C}$  and lowers  $Q_{F}$  while leaving the value of its output unchanged at initial relative prices. [This change would not necessarily be considered growth because it violates the assumption of equation (6P-27), but it is a useful reference point.] Then there would be no change in demand at the initial  $p$ , whereas the supply of cloth rises; hence  $p$  must fall. The change in real income is  $dy|_{p} - (Q_{C} - D_{C})dp$ ; by construction, however, this is a case in which  $dy|_{p} = 0$ , so  $dy$  is certainly negative.

Now, this country did not grow, in the usual sense, because the value of output at initial prices did not rise. By allowing the output of either good to rise slightly more, however, we would have a case in which the definition of growth is satisfied. If the extra

growth is sufficiently small, however, it will not outweigh the welfare loss from the fall in  $p$ . Therefore, sufficiently biased growth can leave the growing country worse off.

### A Transfer of Income

We now describe how a transfer of income (say as foreign aid) affects the terms of trade. Suppose Home makes a transfer of some of its income to Foreign. Let the amount of the transfer, measured in terms of food, be  $da$ . What effect does this aid have on the terms of trade?

At unchanged relative prices, there is no effect on supply. The only effect is on demand. Home's income is reduced by  $da$ , while Foreign's is raised by the same amount. This adjustment leads to a decline in  $D_{C}$  by  $-n \, da$ , while  $D_{C}^{*}$  rises by  $n^{*} \, da$ . Thus,

$$
\left. d E S \right|_{p} = (n - n^{*}) d a \tag {6P-29}
$$

and the change in the terms of trade is

$$
d p = - d a \frac{n - n^{*}}{d E S / d p}. \tag {6P-30}
$$

Home's terms of trade will worsen if  $n > n^*$ , which is widely regarded as the normal case; they will, however, improve if  $n^* > n$ .

The effect on Home's real income combines a direct negative effect from the transfer and an indirect terms of trade effect that can go either way. Is it possible for a favorable terms of trade effect to outweigh the income loss? In this model it is not.

To see the reason, notice that

$$
\begin{array}{l} d y = d y \mid_{n} + \left(Q_{C} - D_{C}\right) d p \\ = - d a + \left(Q_{C} - D_{C}\right) d p \\ = - d a \left\{1 + \frac{(n - n^{*}) (Q_{C} - D_{C})}{s + s^{*} + e + e^{*} - (n - n^{*}) (Q_{C} - D_{C})} \right\} \\ = - d a \frac{s + s^{*} + e + e^{*}}{s + s^{*} + e + e^{*} - (n - n^{*}) \left(Q_{C} - D_{C}\right)} <   0. \tag {6P-31} \\ \end{array}
$$

Similar algebra will reveal correspondingly that a transfer cannot make the recipient worse off.

An intuitive explanation of this result is the following. Suppose  $p$  were to rise sufficiently to leave Home as well off as it would be if it made no transfer and to leave Foreign no better off as a result of the transfer. Then there would be no income effects on demand in the world economy. But the rise in price would produce both increased output of cloth and substitution in demand away from cloth, leading to an excess supply that would drive down the price. This result demonstrates that a  $p$  sufficiently high to reverse the direct welfare effects of a transfer is above the equilibrium  $p$ .

### A Tariff

Suppose Home places a tariff on imports, imposing a tax equal to the fraction  $t$  of the price. Then for a given world relative price of cloth  $p$ , Home consumers and producers will face an internal relative price  $\overline{p} = p / (1 + t)$ . If the tariff is sufficiently small, the internal relative price will be approximately equal to

$$
\bar {p} = p - p. \tag {6P-32}
$$

In addition to affecting  $p$ , a tariff will raise revenue, which will be assumed to be redistributed to the rest of the economy.

At the initial terms of trade, a tariff will influence the excess supply of cloth in two ways. First, the fall in relative price of cloth inside Home will lower production of cloth and induce consumers to substitute away from food toward cloth. Second, the tariff may affect Home's real income, with resulting income effects on demand. If Home starts with no tariff and imposes a small tariff, however, the problem may be simplified because the tariff will have a negligible effect on real income. To see this relation, recall that

$$
d y = p d D_{C} + d D_{F}.
$$

The value of output and the value of consumption must always be equal at world prices, so that

$$
p d D_{C} + d D_{F} = p d Q_{C} + d Q_{F}
$$

at the initial terms of trade. But because the economy was maximizing the value of output before the tariff was imposed,

$$
p d Q_{C} + d Q_{F} = 0.
$$

Because there is no income effect, only the substitution effect is left. The fall in the internal relative price  $\overline{p}$  induces a decline in production and a rise in consumption:

$$
d Q_{C} = - s p d t, \tag {6P-33}
$$

$$
d D_{C} = e p d t, \tag {6P-34}
$$

where  $dt$  is the tariff increase. Hence,

$$
\left. d E S \right|_{p} = - (s + e) p d t <   0, \tag {6P-35}
$$

implying

$$
\begin{array}{l} d p = \frac{- d E S |_{p}}{d E S / d p} \\ = \frac{p d t (s + e)}{s + s^{*} + e + e^{*} - (n - n^{*}) \left(Q_{C} - D_{C}\right)} > 0. \tag {6P-36} \\ \end{array}
$$

This expression shows that a tariff unambiguously improves the terms of trade of the country that imposes it.

### The Monopolistic Competition Model

We want to consider the effects of changes in the size of the market on equilibrium in a monopolistically competitive industry. Each firm has the total cost relationship

$$
C = F + c X, \tag {8P-1}
$$

where  $c$  is marginal cost,  $F$  a fixed cost, and  $X$  the firm's output. This implies an average cost curve of the form

$$
A C = C / X = F / X + c. \tag {8P-2}
$$

Also, each firm faces a demand curve of the form

$$
X = S [ 1 / n - b (P - \bar {P}) ], \tag {8P-3}
$$

where  $S$  is total industry sales (taken as given),  $n$  is the number of firms, and  $\overline{P}$  is the average price charged by other firms (which each firm is assumed to take as given).

Each firm chooses its price to maximize profits. Profits of a typical firm are

$$
\pi = P X - C = P S [ 1 / n - b (P - \bar {P}) ] - F - c S [ 1 / n - b (P - \bar {P}) ]. \tag {8P-4}
$$

To maximize profits, a firm sets the derivative  $d\pi / dP = 0$ . This implies

$$
X - S b P + S b c = 0. \tag {8P-5}
$$

Since all firms are symmetric, however, in equilibrium,  $P = \overline{P}$  and  $X = S / n$ . Thus (8P-5) implies

$$
P = 1 / b n + c, \tag {8P-6}
$$

which is the relationship derived in the text.

Since  $X = S / n$ , average cost is a function of  $S$  and  $n$

$$
A C = F n / S + c. \tag {8P-7}
$$

In zero-profit equilibrium, however, the price charged by a typical firm must also equal its average cost. So we must have

$$
1 / b n + c = F n / S + c, \tag {8P-8}
$$

which in turn implies

$$
n = \sqrt{S / b F}. \tag {8P-9}
$$

This shows that an increase in the size of the market,  $S$ , will lead to an increase in the number of firms,  $n$ , but not in proportion—for example, a doubling of the size of the market will increase the number of firms by a factor of approximately 1.4.

The price charged by the representative firm is

$$
P = 1 / b n + c = c + \sqrt{F} / S b, \tag {8P-10}
$$

which shows that an increase in the size of the market leads to lower prices.

Finally, notice that the sales per firm,  $X$ , equal

$$
X = S / n = \sqrt{S b F}. \tag {8P-11}
$$

This shows that the scale of each individual firm also increases with the size of the market.

## Risk Aversion and International Portfolio Diversification

This postscript develops a model of international portfolio diversification by risk-averse investors. The model shows that investors generally care about the risk as well as the return of their portfolios. In particular, people may hold assets whose expected returns are lower than those of other assets if this strategy reduces the overall riskiness of their wealth.

A representative investor can divide her real wealth,  $W$ , between a Home asset and a Foreign asset. Two possible states of nature can occur in the future, and it is impossible to predict in advance which one it will be. In state 1, which occurs with probability  $q$ , a unit of wealth invested in the Home asset pays out  $H_{1}$  units of output and a unit of wealth invested in the Foreign asset pays out  $F_{1}$  units of output. In state 2, which occurs with probability  $1 - q$ , the payoffs to unit investments in the Home and Foreign assets are  $H_{2}$  and  $F_{2}$ , respectively.

Let  $\alpha$  be the share of wealth invested in the Home asset and  $1 - \alpha$  the share invested in the Foreign asset. Then if state 1 occurs, the investor will be able to consume the weighted average of her two assets' values,

$$
C_{1} = \left[ \alpha H_{1} + (1 - \alpha) F_{1} \right] \times W. \tag {20P-1}
$$

Similarly, consumption in state 2 is

$$
C_{2} = [ \alpha H_{2} + (1 - \alpha) F_{2} ] \times W. \tag {20P-2}
$$

In either state, the investor derives utility  $U(C)$  from a consumption level of  $C$ . Since the investor does not know beforehand which state will occur, she makes the portfolio decision to maximize the average or expected utility from future consumption,

$$
q U (C_{1}) + (1 - q) U (C_{2}).
$$

### An Analytical Derivation of the Optimal Portfolio

After the state 1 and state 2 consumption levels given by (20P-1) and (20P-2) are substituted into the expected utility function above, the investor's decision problem can be expressed as follows: Choose the portfolio share  $\alpha$  to maximize expected utility,

$$
q U \left\{\left[ \alpha H_{1} + (1 - \alpha) F_{1} \right] \times W \right\} + (1 - q) U \left\{\left[ \alpha H_{2} + (1 - \alpha) F_{2} \right] \times W \right\}.
$$

This problem is solved (as usual) by differentiating the expected utility above with respect to  $\alpha$  and setting the resulting derivative equal to 0.

Let  $U'(C)$  be the derivative of the utility function  $U(C)$  with respect to  $C$ ; that is,  $U'(C)$  is the marginal utility of consumption. Then  $\alpha$  maximizes expected utility if

$$
\frac{H_{1} - F_{1}}{H_{2} - F_{2}} = - \frac{(1 - q) U^{\prime} \left\{\left[ \alpha H_{2} + (1 - \alpha) F_{2} \right] \times W \right\}}{q U^{\prime} \left\{\left[ \alpha H_{1} + (1 - \alpha) F_{1} \right] \times W \right\}}. \tag {20P-3}
$$

This equation can be solved for  $\alpha$ , the optimal portfolio share.

For a risk-averse investor, the marginal utility of consumption,  $U'(C)$ , falls as consumption rises. Declining marginal utility explains why someone who is risk averse will not take a gamble with an expected payoff of zero: The extra consumption made possible by a win yields less utility than the utility sacrificed if the gamble is lost. If the marginal utility of consumption does not change as consumption changes, we say the investor is risk neutral rather than risk averse. A risk-neutral investor is willing to take gambles with a zero expected payoff.

If the investor is risk neutral, however, so that  $U^{\prime}(C)$  is constant for all  $C$ , equation (20P-3) becomes

$$
q H_{1} + (1 - q) H_{2} = q F_{1} + (1 - q) F_{2},
$$

which states that the expected rates of return on Home and Foreign assets are equal. This result is the basis for the assertion in Chapter 14 that all assets must yield the same expected return in equilibrium when considerations of risk (and liquidity) are ignored. Thus, the interest parity condition of Chapter 14 is valid under risk-neutral behavior but not, in general, under risk aversion.

For the analysis above to make sense, neither of the assets can yield a higher return than the other in both states of nature. If one asset did dominate the other in this way, the left-hand side of equation (20P-3) would be positive while its right-hand side would be negative (because the marginal utility of consumption is usually assumed to be positive). Thus, (20P-3) would have no solution. Intuitively, no one would want to hold a particular asset if another asset that always did better were available. Indeed, if anyone did wish to do so, other investors would be able to make riskless arbitrage profits by issuing the low-return asset and using the proceeds to purchase the high-return asset.

To be definite, we therefore assume that  $H_{1} > F_{1}$  and  $H_{2} < F_{2}$ , so that the Home asset does better in state 1 but does worse in state 2. This assumption is now used to develop a diagrammatic analysis that helps illustrate additional implications of the model.

### A Diagrammatic Derivation of the Optimal Portfolio

Figure 20P-1 shows indifference curves for the expected utility function described by  $qU(C_1) + (1 - q)U(C_2)$ . The points in the diagram should be thought of as contingency plans showing the level of consumption that will occur in each state of nature. The preferences represented apply to these contingent consumption plans rather than to consumption of different goods in a single state of nature. As with standard indifference curves, however, each curve in the figure represents a set of contingency plans for consumption with which the investor is equally satisfied.

To compensate the investor for a reduction of consumption in state  $1(C_{1})$ , consumption in state  $2(C_{2})$  must rise. The indifference curves therefore slope downward. Each curve becomes flatter, however, as  $C_{1}$  falls and  $C_{2}$  rises. This property of the curves reflects the property of  $U(C)$  that the marginal utility of consumption declines when  $C$  rises. As  $C_{1}$  falls, the investor can be kept on her original indifference curve only by successively greater increments in  $C_{2}$ : Additions to  $C_{2}$  are becoming less beneficial at the same time as subtractions from  $C_{1}$  are becoming more painful.

Equations (20P-1) and (20P-2) imply that by choosing the portfolio division given by  $\alpha$ , the investor also chooses her consumption levels in the two states of nature. Thus, the problem of choosing an optimal portfolio is equivalent to the problem of optimally choosing the contingent consumption levels  $C_1$  and  $C_2$ . Accordingly, the indifference curves in Figure 20P-1 can be used to determine the optimal portfolio for

### FIGURE 20P-1

### Indifference Curves for Uncertain Consumption Levels

The indifference curves are sets of state-contingent consumption plans with which the individual is equally happy. The budget line describes the trade-off between state 1 and state 2 consumption that results from portfolio shifts between Home and Foreign assets.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/52971ed2-f993-4611-9c28-dd416948cd16/ae09a06f1852c96b68c70f7da3ef5b9792ccc274d5826a95f3e6e0f9b7a9a904.jpg)

the investor. All that is needed to complete the analysis is a budget line showing the trade-off between state 1 consumption and state 2 consumption that the market makes available.

This trade-off is given by equations (20P-1) and (20P-2). If equation (20P-2) is solved for  $\alpha$ , the result is

$$
\alpha = \frac{F_{2} W - C_{2}}{F_{2} W - H_{2} W}.
$$

After substitution of this expression for  $\alpha$  in (20P-1), the latter equation becomes

$$
C_{1} + \phi C_{2} = Z, \tag {20P-4}
$$

where  $\phi = (H_{1} - F_{1}) / (F_{2} - H_{2})$  and  $Z = W\times (H_1F_2 - H_2F_1) / (F_2 - H_2)$ . Notice that because  $H_{1} > F_{1}$  and  $H_{2} < F_{2}$ , both  $\phi$  and  $Z$  are positive. Thus, equation (20P-4) looks like the budget line that appears in the usual analysis of consumer choice, with  $\phi$  playing the role of a relative price and  $Z$  the role of income measured in terms of state 1 consumption. This budget line is graphed in Figure 20P-1 as a straight line with slope  $-\phi$  intersecting the vertical axis at  $Z$ .

To interpret  $\phi$  as the market trade-off between state 2 and state 1 consumption (that is, as the price of state 2 consumption in terms of state 1 consumption), suppose the investor shifts one unit of her wealth from the Home to the Foreign asset. Since the Home asset has the higher payoff in state 1, her net loss of state 1 consumption is  $H_{1}$  less the Foreign asset's state 1 payoff,  $F_{1}$ . Similarly, her net gain in state 2 consumption is  $F_{2} - H_{2}$ . To obtain additional state 2 consumption of  $F_{2} - H_{2}$ , the investor

### FIGURE 20P-2

### Maximizing Expected Utility

To maximize expected utility, the investor makes the state-contingent consumption choices shown at point 1, where the budget line is tangent to the highest attainable indifference curve,  $II_{1}$ . The optimal portfolio share,  $\alpha$ , can be calculated as  $(F_{2}W - C_{2}^{1}) \div (F_{2}W - H_{2}W)$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/52971ed2-f993-4611-9c28-dd416948cd16/66f2576ea769b54d965b71e419ca625e8a9661caca96350d270f49cfe7d78ef3.jpg)

therefore must sacrifice  $H_{1} - F_{1}$  in state 1. The price of a single unit of  $C_{2}$  in terms of  $C_{1}$  is therefore  $H_{1} - F_{1}$  divided by  $F_{2} - H_{2}$ , which equals  $\phi$ , the absolute value of the slope of budget line (20P-4).

Figure 20P-2 shows how the choices of  $C_1$  and  $C_2$  and, by implication, the choice of the portfolio share  $\alpha$  are determined. As usual, the investor picks the consumption levels given by point 1, where the budget line just touches the highest attainable indifference curve,  $II_1$ . Given the optimal choices of  $C_1$  and  $C_2$ ,  $\alpha$  can be calculated using equation (20P-1) or (20P-2). As we move downward and to the right along the budget constraint, the Home asset's portfolio share,  $\alpha$ , falls. (Why?)

For some values of  $C_1$  and  $C_2$ ,  $\alpha$  may be negative or greater than 1. These possibilities raise no conceptual problems. A negative  $\alpha$ , for example, means that the investor has "gone short" in the Home asset, that is, issued some positive quantity of state-contingent claims that promise to pay their holders  $H_1$  units of output in state 1 and  $H_2$  units in state 2. The proceeds of this borrowing are used to increase the Foreign asset's portfolio share,  $1 - \alpha$ , above 1.

Figure 20P-3 shows the points on the investor's budget constraint at which  $\alpha = 1$  (so that  $C_1 = H_1W$ ,  $C_2 = H_2W$ ) and  $\alpha = 0$  (so that  $C_1 = F_1W$ ,  $C_2 = F_2W$ ). Starting from  $\alpha = 1$ , the investor can move upward and to the left along the constraint by going short in the Foreign asset (thereby making  $\alpha$  greater than 1 and  $1 - \alpha$  negative). She can move downward and to the right from  $\alpha = 0$  by going short in the Home asset.

## The Effects of Changing Rates of Return

The diagram we have developed can be used to illustrate the effect of changes in rates of return under risk aversion. Suppose, for example, the Home asset's state 1 payoff rises while all other payoffs and the investor's wealth,  $W$ , stay the same. The rise in  $H_{1}$  raises  $\phi$ , the relative price of state 2 consumption, and therefore steepens the budget line shown in Figure 20P-3.

We need more information, however, to describe completely how the position of the budget line in Figure 20P-3 changes when  $H_{1}$  rises. The following reasoning fills the

### FIGURE 20P-3

### Nondiversified Portfolios

When  $\alpha = 1$ , the investor holds all her wealth in the Home asset. When  $\alpha = 0$ , she holds all her wealth in the Foreign asset. Moves along the budget constraint upward and to the left from  $\alpha = 1$  correspond to short sales of the Foreign asset, which raise  $\alpha$  above 1. Moves downward and to the right from  $\alpha = 0$  correspond to short sales of the Home asset, which push  $\alpha$  below 0.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/52971ed2-f993-4611-9c28-dd416948cd16/3cae142c725476d6454ecd8722acf38b065706b5b18928f45f0112d97a460a26.jpg)

gap. Consider the portfolio allocation  $\alpha = 0$  in Figure 20P-3, under which all wealth is invested in the Foreign asset. The contingent consumption levels that result from this investment strategy,  $C_1 = F_1W$ ,  $C_2 = F_2W$ , do not change as a result of a rise in  $H_{1}$ , because the portfolio we are considering does not involve the Home asset. Since the consumption pair associated with  $\alpha = 0$  does not change when  $H_{1}$  rises, we see that  $C_1 = F_1W$ ,  $C_2 = F_2W$  is a point on the new budget constraint: After a rise in  $H_{1}$ , it is still feasible for the investor to put all of her wealth into the Foreign asset. It follows that the effect of a rise in  $H_{1}$  is to make the budget constraint in Figure 20P-3 pivot clockwise around the point  $\alpha = 0$ .

The effect on the investor of a rise in  $H_{1}$  is shown in Figure 20P-4, which assumes that initially,  $\alpha > 0$  (that is, the investor initially owns a positive amount of the Home asset). As usual, both a "substitution" and an "income" effect influence the shift of the investor's contingent consumption plan from point 1 to point 2. The substitution effect is a tendency to demand more  $C_{1}$ , whose relative price has fallen, and less  $C_{2}$ , whose relative price has risen. The income effect of the rise in  $H_{1}$ , however, pushes the entire budget line outward and tends to raise consumption in both states (as long as  $\alpha > 0$  initially). Because the investor will be richer in state 1, she can afford to shift some of her wealth toward the Foreign asset (which has the higher payoff in state 2) and thereby even out her consumption in the two states of nature. Risk aversion explains the investor's desire to avoid large consumption fluctuations across states. As Figure 20P-4 suggests,  $C_{1}$  definitely rises while  $C_{2}$  may rise or fall. (In the case illustrated, the substitution effect is stronger than the income effect, and  $C_{2}$  falls.)

Corresponding to this ambiguity is an ambiguity concerning the effect of the rise in  $H_{1}$  on the portfolio share,  $\alpha$ . Figure 20P-5 illustrates the two possibilities. The key to understanding this figure is to observe that if the investor does not change  $\alpha$  in response to the rise in  $H_{1}$ , her consumption choices are given by point  $1'$ , which lies on the new budget constraint vertically above the initial consumption point 1. Why is

### FIGURE 20P-4

### Effects of a Rise in  $H_{1}$  on Consumption

A rise in  $H_{1}$  causes the budget line to pivot clockwise around  $\alpha = 0$ , and the investor's optimum shifts to point 2. State 1 consumption always rises; in the case shown, state 2 consumption falls.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/52971ed2-f993-4611-9c28-dd416948cd16/b9cb123b278b3765bd35ac9cc15103d8bb4ffc77599ffc59294c0c7b6e9c5859.jpg)
State 1 consumption,  $C_1$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/52971ed2-f993-4611-9c28-dd416948cd16/b0f3d6e0fb74be3f53b9dc087d21cf4fdab5c31105557b6132ce0d67871cbf4f.jpg)
State 1 consumption,  $C_1$
(a)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/52971ed2-f993-4611-9c28-dd416948cd16/55c66229884f1faccb065e120b5efdf39fc525850f01a4777cacf58ac3553e51.jpg)
State 1 consumption,  $C_1$
(b)

### FIGURE 20P-5

### Effects of a Rise in  $H_{1}$  on Portfolio Shares

Panel (a): If the investor is not too risk averse, she shifts her portfolio toward the Home asset, picking a  $C_1 / C_2$  ratio greater than the one indicated by the slope of OR. Panel (b): A very risk-averse investor might increase state 2 consumption by shifting her portfolio toward the Foreign asset.

this the case? Equation (20P-2) implies that  $C_2^1 = [\alpha H_2 + (1 - \alpha)F_2] \times W$  doesn't change if  $\alpha$  doesn't change; the new, higher value of state 1 consumption corresponding to the original portfolio choice is then given by the point on the new budget constraint directly above  $C_2^1$ . In both panels of Figure 20P-5, the slope of the ray  $OR$  connecting the origin and point  $1'$  shows the ratio  $C_1 / C_2$  implied by the initial portfolio composition after the rise in  $H_1$ .

It is now clear, however, that to shift to a lower value of  $C_2$ , the investor must raise  $\alpha$  above its initial value, that is, shift the portfolio toward the Home asset. To raise  $C_2$ , she must lower  $\alpha$ , that is, shift toward the Foreign asset. Figure 20P-5a shows again the case in which the substitution effect outweighs the income effect. In that case,  $C_2$  falls as the investor shifts her portfolio toward the Home asset, whose expected rate of return has risen relative to that on the Foreign asset. This case corresponds to those we studied in the text, in which the portfolio share of an asset rises as its relative expected rate of return rises.

Figure 20P-5b shows the opposite case, in which  $C_2$  rises and  $\alpha$  falls, implying a portfolio shift toward the Foreign asset. You can see that the factor giving rise to this possibility is the sharper curvature of the indifference curves  $II$  in Figure 20P-5b. This curvature is precisely what economists mean by the term risk aversion. An investor who becomes more risk averse regards consumptions in different states of nature as poorer substitutes and thus requires a larger increase in state 1 consumption to compensate her for a fall in state 2 consumption (and vice versa). Note that the paradoxical case shown in Figure 20P-5b, in which a rise in an asset's expected rate of return can cause investors to demand less of it, is unlikely in the real world. For example, an increase in the interest rate a currency offers, other things equal, raises the expected rate of return on deposits of that currency in all states of nature, not just in one. The portfolio substitution effect in favor of the currency therefore is much stronger.

The results we have found are quite different from those that would occur if the investor were risk neutral. A risk-neutral investor would shift all of her wealth into the asset with the higher expected return, paying no attention to the riskiness of this move. The greater the degree of risk aversion, however, the greater the concern with the riskiness of the overall portfolio of assets.