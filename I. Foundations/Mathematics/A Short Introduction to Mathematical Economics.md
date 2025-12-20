---
primary_tags:
- each indifference curve
- any utility function
- high-school economics students
- cost functions
- where and are arbitrary constants
- mc method
secondary_tags:
- utility maximisation
- demand function
- theory questions
- new knowledge
- utility measures
- basic notations
- simplest demand function
- top three equations
- closest possible corner point
- part theory
- standard cost function
- firm 4 firm's costs
- constant concavity
- inefficient or not maximal use
- first one
- final equation
tags_extracted: '2025-12-18T17:56:14.912371'
tags_method: max_quality_v1
---

# A Short Introduction to Mathematical Economics

Ilia Rivkin

# Contents

# 1 Introduction 4

1.1 Who is this book for? 4  
1.2 How can you use your new knowledge? 4  
1.3 Contact the author 6  
1.4 Note on Language Editing 6

# IConsumer Theory 6

# 2 Demand and Supply 6

2.1 Demand 6  
2.2 Summing Linear Demand Curves 7  
2.3 Supply 9  
2.4 Equilibrium between supply and demand 9

# 3 Utility 10

3.1 Introduction to the concept 10  
3.2 Typical utility function 10  
3.3 Basic Notations 12  
3.4 Utility Principles and assumptions 12

3.4.1 Completeness 12  
3.4.2 Transitivity 13  
3.4.3 Monotonicity 13

3.5 Indifference curves 13  
3.6 Principles of Indifference Curves 14

3.6.1 Indifference curves never intersect 14  
3.6.2 Indifference curves are downward-sloping (in general) 15  
3.6.3 Marginal utility 16  
3.6.4 Marginal Rate of Substitution 17  
3.6.5 The slope of indifference curves 19  
3.6.6 Indifference curves are convex (in general) 20

3.7 Utility maximisation 21

3.7.1 Budget constraint 22  
3.7.2 Maximisation Method 1: Brute Force 22  
3.7.3 Indifference curves 24  
3.7.4 Marginal utility per unit of cost 27  
3.7.5 Standard Utility functions 28  
3.7.6 Demand Derivation 33  
3.7.7 Hard Problems 34  
3.7.8 Lagrangian Multiplier 38  
3.7.9 TL;DR 40

II Theory of the Firm 40

4 Firm's costs 40

4.1 Production function 40  
4.2 Deriving the cost Function 41

4.2.1 Method 1: Brute Force 41  
4.2.2 Method 2: MP-MC Method 43

4.3 Standard Cost and Production Functions 46

4.3.1 Main types of costs 46  
4.3.2 Standard Production Functions 48  
4.3.3 Standard Cost Functions 50  
4.3.4 Monopoly Diagram 55

4.4 Minimising costs across factories 57

4.4.1 Method 1: Brute Force 58  
4.4.2 Method 2: MC 59  
4.4.3 Hard Problems 60  
4.4.4 Deriving Supply Function 66

# III PPF 68

# 5 Maths Behind PPF 69

5.0.1 Opportunity costs of linear PPF 70  
5.0.2 Summation of linear PPFs 70  
5.0.3 Non-linear PPF Introduction 74  
5.0.4 Rules for the Function to be a PPF 74

5.1 Summation of Non-Linear PPFs 79

5.1.1 Increasing OC 79  
5.1.2 Using Vectors and Minkowski Addition 80

# IV Game Theory 87

# 6 Problem 1 88

6.1 Problem 88  
6.2 Solution 89

# 7 Problem 2 90

7.1 Problem 90  
7.2 Solution 91

# 1 Introduction

# 1.1 Who is this book for?

This textbook is written for aspiring high-school economics students who want to study some mathematical economics without going (much) beyond A-Level Maths.

The advantage of this book is that it is concise, so that students can immerse themselves in the topic under time constraints.

Going through this book will make your application to top-tier universities more competitive, because an undergraduate-level Economics course involves lots of Maths. By going through this book and applying some of the suggestions further, you could demonstrate your Maths ability and interest in the subject beyond the school curriculum.

Here are some suggestions:

# 1.2 How can you use your new knowledge?

# 1. Mentioning the topics studied in the personal statement

The first and simplest way of enhancing your application is to mention that you went through different topics in Mathematical Economics.

For instance:

"Eager to learn how economists use Maths to model real-world decisions, I studied such

topics as utility maximisation, costs, etc...

But remember, a personal statement should be a story of exploration rather than an activity list. You should mention what you learned, what you liked, and what interests it sparked in you. For example, you could say that "learning mathematical Economics inspired me to create my own model..."

# 2. Creating your own model

You can use the knowledge that you gained to find a real-world problem and create an Economic model to find a solution. For instance, you can create your own Game Theory model to answer whether, under your own assumptions, a country will be better off or worse off by investing in green technology on their own (without global cooperation). This could be either a micro or a macro model.

For example, in the summer after Year 12 I tried to use normal distribution to find a new solution for optimal public good provision (you can find more on the topic by Googling "Samuelson Rule"). Although it wasn't a big success, it taught me a great deal about economic modelling.

Another example is my friend, who designed a market for pollution permits using Maths, and his paper was published.

# 3. Combining two subjects together

You can also try to combine Economics with your other subjects. For example, you can try to create an automated utility maximisation program, which, based on the function and budget constraint, maximises one's utility, or minimises firms' costs.

Alternatively, you can explore the Economics of space launches, combining knowledge from Physics and Economics.

# 4. Improving your interview performance

Many questions given to you during an Oxbridge interview will be quite similar or, at least, use similar methods to the ones demonstrated in this book. This could particularly be applied to Game Theory questions.

Also, when submitting your application you will typically be asked to mention topics studied by you in your subject. If you mention some of the topics in the book, you can be asked about it during the interview, which will help you to stand out.

# 5. Improvise!

As a matter of fact, there are many other ways to make your application better with the knowledge from the book. Perhaps, you could even start to like Economics more than you did (or choose to stay out of it).

# 1.3 Contact the author

If you found a mistake or want to clarify a concept or request more problem sheets, contact me via email:

rivkinilia@gmail.com

# 1.4 Note on Language Editing

As the author is a non-native English speaker, AI tools were used to correct grammatical and language errors throughout the textbook as part of the editing process.

# Part I

# Consumer Theory

# 2 Demand and Supply

# 2.1 Demand

The first topic to be covered is demand and supply. As you might know from A-Level Economics, demand is a function that shows the quantity of a certain good that consumers are willing and able to buy on a certain market for each given price. The "able" part comes from the requirement that a consumer could actually afford the good at a certain price, not just "willing" to. The simplest and most common model of demand is a linear function.

According to the law of demand, demand is a downward-sloping function. This is due to the substitution effect (with a higher price consumers get more options to substitute this good for), the income effect (with a higher price consumption of this good takes up a higher proportion of consumers' budgets) and also the law of diminishing marginal utility (each extra unit of a good consumed brings lower utility to a consumer).

As such, the simplest demand function will look like:

$$
Q = a - b P,
$$

where  $a, b$  are some arbitrary non-negative constants. For example, the demand function  $Q = 10 - P$  will look like:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/d0a04475f79e103647fedd05cfebb5de2356621bf80169d1ec04c6ce8100fb57.jpg)  
NB.1, In economics, the dependent variable (quantity) is drawn on the x-axis, while the independent variable (price) is drawn on the y-axis. This comes from Alfred Marshall's "Principles of Economics" - the first ever formal Economics textbook.

NB.2, technically, you can express either quantity as a function of price or price as a function of quantity. Yet, in some cases it might be easier to use the  $Q(P)$  way, which we will look at in the next section.

# 2.2 Summing Linear Demand Curves

Imagine there is a market for a takeaway pizza where two groups of consumers demand the product: students and workers. Their respective demand functions could be:

$$
Q _ {s} = 1 6 - 2 P _ {s}
$$

$$
Q _ {w} = 2 0 - P _ {w}
$$

How would we then find an overall market demand?

To solve this problem we first need to think about the prices at which those two groups operate (demand a non-negative quantity) in the market: By solving  $Qs = 0$  and  $Qw = 0$ ,

and under the assumption  $Pw > 0$  and  $Ps > 0$ , we get that workers would demand a nonzero quantity of pizza for every price  $P_w \in [0,20]$ , while students demand a non-zero quantity of pizza for every price  $P_s \in [0,8]$ .

Let's represent it using a table:

<table><tr><td>Price:</td><td>P≤8</td><td>8&lt;P≤20</td><td>P&gt;20</td></tr><tr><td>Students</td><td>Operate</td><td>Do not operate</td><td>Do not operate</td></tr><tr><td>Workers</td><td>Operate</td><td>Operate</td><td>Do not operate</td></tr></table>

Then, for every  $P > 20$  the quantity demanded on the market is zero.

For every  $8 < P \leq 20$  only workers demand a non-zero quantity of pizza, so, for  $8 < P \leq 20$ :  $Q = 20 - P$ .

The remaining part is the range  $0 \leq P \leq 8$ . To understand what's happening on that interval, let's look at an arbitrary price in the range:  $\mathrm{P} = 4$ .

At  $\mathrm{P} = 4$ ,  $Q_{s} = 16 - 2 * 4 = 8$ , while  $Q_{w} = 20 - 4 = 16$ . The overall market quantity is then  $Q = 8 + 16 = 24$ , or, the sum of two quantities demanded. In other words, when  $0 \leq P \leq 8$ :

$$
Q _ {\text {m a r k e t}} = Q _ {s} + Q _ {w} = 2 0 - P + 1 6 - 2 P = 3 6 - 3 P
$$

In economics, this is called a horizontal sum. A formal definition of the market demand will then be:

$$
Q _ {\text {m a r k e t}} = \sum_ {i = 1} ^ {n} Q _ {i} (P)
$$

This formal definition tells us that for each price  $P$  the quantity demanded on the market will be the sum of all individual quantities demanded at this price level. In the aforementioned case we can rewrite the table to account for the formal definition to get the final answer:

<table><tr><td>Price:</td><td>0 &lt;= P &lt;= 8</td><td>8 &lt; P &lt;= 20</td><td>P &gt; 20</td></tr><tr><td>Qs</td><td>16 - 2P</td><td>0</td><td>0</td></tr><tr><td>Qw</td><td>20 - P</td><td>20 - P</td><td>0</td></tr></table>

Hence, the final answer is:

$$
Q (P) = \left\{ \begin{array}{c} 3 6 - 3 P,   0 \leq P \leq 8, \\ 2 0 - P,   8 <   P \leq 2 0, \\ 0,   P > 2 0. \end{array} \right.
$$

Note that in the horizontal-sum method we use  $Q(P)$  rather than  $P(Q)$  as it is the simplest and the most intuitive method.

# 2.3 Supply

In Economics, the supply function shows the quantity that a firm is willing and able to supply for each given price level ( $P \geq 0$ ).

As with demand, the simplest model of supply is a linear function, which we can denote as:

$$
Q = c + d P,
$$

where  $c$  and  $d$  are arbitrary parameters (  $\mathbf{c}$  is usually negative, meaning that any non-negative quantity will be supplied starting from a  $P^{*} > 0$  (where  $P^{*} = \frac{-c}{d}$ ).

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/00c0f08517926a1ae7fac94e0661b8f84e354fd5bcb20f0ab90244331fb22751.jpg)

The same logic of indifference between  $\mathrm{Q}(\mathrm{P})$  and  $\mathrm{P}(\mathrm{Q})$  applies here. However, to add up supply functions we should use  $\mathrm{Q}(\mathrm{P})$ .

In general, applying horizontal summation to the supply function requires the same steps as for demand, so we will skip this step.

# 2.4 Equilibrium between supply and demand

As with other mathematical functions, to find the equilibrium (a point where supply crosses demand) we want to express both  $Q_{s}$  and  $Q_{d}$  as a function of price (or price as a function of quantity) and equalise them. For example, if:

$$
Q _ {s} = 1 0 + P
$$

$$
Q _ {d} = 2 0 - P
$$

Then  $Q_{s} = Qd \Rightarrow 10 + P = 20 - P \Rightarrow P = 5, Q = 10 + 5 = 15$

# 3 Utility

# 3.1 Introduction to the concept

In Economics, utility measures the relative satisfaction of consumers from consuming goods and services, and serves as the main measure of how well-off the consumer is. It is relative because utility is an ordinal measure. An ordinal measure gives information only about relative magnitudes, for example, I like oranges more than apples.

Because of that, the utility of 100 gained from consuming the good  $x_{1}$  does not have any meaning on its own. What's important is the utility gained from consuming  $x_{1} \left( U_{x_{1}} \right)$  compared to  $U_{x_{2}}$ .

As such, the statement:

$$
U _ {x _ {1}} = 1 0 0 > U _ {x _ {2}} = 5 0
$$

is equivalent to the statement

$$
U _ {x _ {1}} = 1 0 0 0 > U _ {x _ {2}} = 2 0
$$

because both statements show that the consumer prefers the good  $x_{1}$  more than the good  $x_{2}$ .

That said, it doesn't mean the level of utility "within" one utility function is meaningless. If a consumer could gain higher utility, they will go for it. It will be explained further.

# 3.2 Typical utility function

Most of the time, a utility function will be a function of two goods -  $x_{1}$  and  $x_{2}$  or  $x$  and  $y$ . This is done for simplicity of analysis. As such, it would sometimes be useful to refer

to a certain combination of  $x$  and  $y$  as bundles. However, we will also look at some utility functions which include three or more variables.

A typical utility function might look like:

$$
U (x _ {1}, x _ {2}) = x _ {1} * x _ {2}
$$

or

$$
U (x, y) = x y
$$

For convenience, let's stick to the  $x - y$  notation.

As we've said earlier, utility is relative - meaning that  $U_{B_1} = 100$  (where  $B_1$  is a bundle (combination) of  $x$  and  $y$ ) does not mean anything on its own, but rather what is important is  $U_{B_1}$  compared to any other bundles of  $x$  and  $y$ .

In other words, two utility functions

$$
U (x, y) = x y
$$

and

$$
U (x, y) = 2 x y
$$

will be equivalent to each other, because both functions depict the differences between any bundles similarly, not taking the constant into account.

More generally, for a utility function  $U = f(x,y)$ , a utility function  $\mathrm{U}(\mathrm{x},\mathrm{y}) = \mathrm{g}(\mathrm{f}(\mathrm{x},\mathrm{y}))$  will be equivalent (under the assumption that  $g$  is increasing).

What does matter are the different utilities from different bundles within one particular function (or its equivalent).

For example, for a function

$$
U = x y
$$

the bundle (6, 1) will give  $\mathrm{U} = 6$ , whereas the bundle (3,4) will give  $\mathrm{U} = 12$ . That means that the bundle (3,4) is more preferred by the consumer. A logical step will then be to say

that the bundle  $(\infty, \infty)$  would always be the most preferred. However, as in the real world, consumers have limited resources (income), and the goods have prices, so, an infinite number of goods will not be available to consumers. So, consumers will have to make choices under constraints.

# 3.3 Basic Notations

If a bundle  $B_{1}$  is more preferred by the consumer than the bundle  $B_{2}$ , it is denoted as:

$$
B _ {1} \succ B _ {2}
$$

and hence,

$$
B _ {2} \prec B _ {1}
$$

If, on the other hand, the consumer is indifferent between the bundles, it is denoted as:

$$
B _ {1} \sim B _ {2}
$$

Also, in utility theory we can use the "preferred or indifferent to" sign, by the same logic as we use the greater or equal  $(\geq)$  or less or equal  $(\leq)$  signs in Maths:

$$
B _ {1} \succeq B _ {2}
$$

# 3.4 Utility Principles and assumptions

There are a few principles on which the utility theory is based. Some of them will come from logic and will be true for any utility function. Some of them will be assumptions made in an attempt to model a real-world, logical and rational consumer. That said, such assumptions might be broken later, mainly as a mathematical exercise.

# 3.4.1 Completeness

For any consumption bundles  $B_{i}$  and  $B_{j}$ , either  $B_{i} \succ B_{j}$  or  $B_{i} \prec B_{j}$  or  $B_{i} \sim B_{j}$ .

This principle will always be true and comes from basic logic, the same as for two real numbers  $a, b$  either  $a > b$  or  $a < b$  or  $a = b$ .

# 3.4.2 Transitivity

In Maths, transitivity sounds something like: if a certain relationship holds between the first and the second variable, and between the second and the third element, then the relationship must also hold between the first and the third elements.

For example, if  $A = B$  and  $A = C$ , then  $B = C$  must be true.

For utility, the same must always hold. For any bundles  $B_{i}, B_{j}, B_{k}$ :

If  $B_{i} \succ B_{j}$  and  $B_{j} \succ B_{k}$ , then  $B_{i} \succ B_{k}$ .

Also,

If  $B_{i}\sim B_{j}$  and  $B_{j}\sim B_{k}$ , then  $B_{i}\sim B_{k}$ .

And hence,

If  $B_i \succ B_j$  and  $B_j \sim B_k$ , then  $B_i \succ B_k$ .

These assumptions are always true.

# 3.4.3 Monotonicity

Sometimes we make an assumption that preferences are monotonic, meaning that more of a certain good is better than less of this good. In other words, a good will always be preferred. However, this assumption is not always applicable. For example, more water to drink is definitely not always more desirable than less water to drink, especially if you have already drunk a lot of water. However, for goods like housing, education, healthcare this is a reasonable assumption. This assumption could also be broken as a mathematical exercise.

# 3.5 Indifference curves

An indifference curve is a curve on the  $x$  and  $y$  axes (good 1 and good 2) that represents all consumption bundles (all combinations of  $x$  and  $y$ ) which give the same utility. For example, for a function  $U = x + y$  bundles (6,0), (1, 5), (2, 4), etc will give  $U = 6$ .

To find the indifference curves, we should fix U in the utility function as a parameter, and then plot the "x-y" graph for each value of U.

Let's look at an example.

For a function  $U = x + y$ , we would fix  $U$  as  $\overline{U} = x + y$ .

Then, by rearranging we get  $y = \overline{U} - x$ , which is a straight downward sloping line with a parameter  $\overline{U}$ .

Plotting indifference curves on the line looks like:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/09db1980d7ee56e3ee95e793ea7f0c1243da09dcf265e15050275a1585cd1a9b.jpg)

Now, technically since  $U \in \mathbb{R}$ , indifference curves should occupy all the space in the first quadrant. However, as economists, we draw only a few indifference curves in order to understand how they look and behave.

# 3.6 Principles of Indifference Curves

There are a few principles of indifference curves. As before, some of them will be true for any utility function while some of those will be logical assumptions which might be broken as a mathematical exercise.

# 3.6.1 Indifference curves never intersect

This principle comes from transitivity and always holds. Suppose two indifference curves cross, with one giving utility  $U_{1}$  and the second one giving utility  $U_{2}$  on the graph below.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/007129381cb6bf053af903d1c5e07c78b432f6cdb3273605dea77d37d0a3744b.jpg)

Since  $\mathrm{O}$  lies on the same indifference curve as  $\mathrm{A}$ , it should then have utility  $U_{1}$ . Yet, by the same logic, since  $\mathrm{O}$  lies on the same indifference curve as  $\mathrm{B}$ , it should then have utility  $U_{2}$ . This is then only possible if  $U_{1} = U_{2}$ , meaning that both indifference curves denote the same utility, meaning they are the same indifference curve.

More intuitively, a unique bundle  $B_{i}$  representing the point of intersection should bring only a unique level of utility, which contradicts the fact that  $B_{i}$  lies on two indifference curves where each indifference curve has its unique level of utility.

# 3.6.2 Indifference curves are downward-sloping (in general)

If monotonicity holds (more of a good is better than less of that good) then indifference curves must be downward sloping. This is because, if a bundle  $B_{2}(\alpha + \triangle \alpha, \beta + \triangle \beta)$  is more preferred than the bundle  $B_{1}(\alpha, \beta)$ , then  $B_{2}$  must bring higher utility than  $B_{1}$ :

$$
U (B _ {2}) > U (B _ {1})
$$

However, an upward-sloping indifference curve means that both bundles  $B_{1}$  and  $B_{2}$  lie on the same indifference curve, meaning the same utility for both bundles. This effectively means:

$$
U (B _ {1}) = U (B _ {2})
$$

which contradicts the statement above.

More intuitively, if the consumer now consumes a higher quantity of the good  $x$ , they then need to consume a lower quantity of the good  $y$  to gain the same utility, which makes the indifference curve downward sloping.

Of course, if monotonicity does not hold, the indifference curve might be upward sloping, meaning that higher consumption might not bring additional satisfaction (utility) to the consumer, for example,

for  $U = y + 9 - x^{2}$ :

$$
\overline {{U}} = y + 9 - x ^ {2}
$$

$$
y = \bar {U} + x ^ {2} - 9
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/69a02d27da1ffbc254fda5f017c63c4de7b1acc0ad52d18a80529f3dc84a2f92.jpg)

Such a utility function could mean that the consumer does not enjoy the good  $x$  at all; perhaps it might be olives or oysters.

# 3.6.3 Marginal utility

As we introduced some principles of indifference curves, it's time to introduce marginal utility and then come back to the remaining principles.

In Economics, agents make decisions at the margins. In other words, for a consumer it does not really matter what utility they gained from consuming each previous good, but rather what utility they will gain from consuming the next good.

Marginal utility is the extra utility gained from consuming the smallest possible extra unit of a good per unit of this good. Usually we assume that goods are infinitely divisible, so the smallest possible extra unit of the good might be infinitely small.

In other words, if  $\mathrm{U} = \mathrm{U}(\mathbf{x})$  (utility as a function of one good), then:

$$
M U _ {x} = \lim _ {h \to 0} \frac {U (x + h) - U (x)}{h}
$$

However, as we remember, utility is usually a function of two variables -  $x$  and  $y$ . In that

case, we would be interested to look at the marginal change of utility as a result of a marginal change in one good, leaving the other one constant. This is called a partial derivative and by definition is:

$$
M U _ {x} = \frac {\partial U}{\partial x} = \lim  _ {h \rightarrow 0} \frac {U (x + h , y) - U (x , y)}{h}
$$

, where  $\partial$  shows the partial change.

In practice, to find a partial derivative we just treat the other variable as a constant or a parameter. For example, if  $U(x,y) = xy$ , then

$$
M U _ {x} = \frac {\partial U}{\partial x} = y
$$

$$
M U _ {y} = \frac {\partial U}{\partial y} = x
$$

# 3.6.4 Marginal Rate of Substitution

The next important bit is the marginal rate of substitution. As the name suggests, the marginal rate of substitution  $(\mathrm{x},\mathrm{y})$  refers to how many units of good  $y$  the consumer is willing to give up to get one more unit of the good  $x$  while keeping the same utility.

In other words:

$$
M R S = - \frac {d y}{d x}
$$

so that  $dU = 0$

The minus sign before the  $dy/dx$  component arises from the fact that  $dy/dx$  will be negative most of the time, yet MRS is a positive rate.

To derive the formula for  $MRS_{x,y}$  let's first introduce the concept called the "total differential". The total differential approximates the overall change in the value of a function of several variables if each variable changes simultaneously. The formula for this is:

If  $z = f(x_{1},x_{2},x_{3},\ldots ,x_{n})$  , then:

$$
d z \approx \frac {\partial z}{\partial x _ {1}} * \triangle x _ {1} + \frac {\partial z}{\partial x _ {2}} * \triangle x _ {2} + \ldots + \frac {\partial z}{\partial x _ {n}} * \triangle x _ {n}
$$

, where each partial derivative is evaluated at the base point.

For  $dz$  to become equal to the expression, each change in the variable should be infinitely small. In other words:

$$
d z = \frac {\partial z}{\partial x _ {1}} * d x _ {1} + \frac {\partial z}{\partial x _ {2}} * d x _ {2} + \ldots + \frac {\partial z}{\partial x _ {n}} * d x _ {n}
$$

, where each partial derivative is evaluated at the base point.

To fully grasp the concept, for a moment think of  $dx_{i}$  as "quantity" and  $\frac{\partial z}{\partial x_i} * dx_i$  as "price", while  $z$  is the revenue.

Each  $dx_{i}$  sets the change in the  $x_{i}$  variable (quantity), whereas  $\frac{\partial z}{\partial x_{i}} * dx_{i}$  (price) shows how much of an overall change this change brings to the revenue.

You can look this up to find out more.

Then, by applying it to our two-variable utility function the overall change in utility is:

$$
d U = \frac {\partial U}{\partial x} * d x + \frac {\partial U}{\partial y} * d y
$$

Since by definition of MRS the overall change in utility is zero:

$$
d U = 0 = \frac {\partial U}{\partial x} * d x + \frac {\partial U}{\partial y} * d y
$$

By rearranging we get:

$$
M R S = - \frac {d y}{d x} = \frac {\frac {\partial U}{\partial x}}{\frac {\partial U}{\partial y}} = \frac {M U _ {x}}{M U _ {y}}
$$

A slightly different way of deriving the MRS formula is to think from scratch.

Think of how utility changes when quantities change. Each change of the parameter would have its own "coefficient", indicating how small or large the change in utility is, caused by the change in quantity (think of the price and quantity analogy again). From that we can derive:

$$
\triangle U \approx M U _ {x} * \triangle x + M U _ {y} * \triangle y
$$

since  $\triangle U = 0$ , we get that

$$
\frac {\triangle y}{\triangle x} \approx - \frac {M U _ {x}}{M U _ {y}}
$$

By making  $\triangle x, \triangle y$  infinitely small:

$$
\frac {d y}{d x} = \lim _ {\triangle x, \triangle y \to 0} \frac {\triangle y}{\triangle x} = - \frac {M U _ {x}}{M U _ {y}}
$$

Since

$$
M R S = - \frac {d y}{d x}
$$

we get that

$$
M R S = - \lim _ {\triangle y, \triangle x \to 0} \frac {\triangle y}{\triangle x} = - - \frac {M U _ {x}}{M U _ {y}} = \frac {M U _ {x}}{M U _ {y}}
$$

Note that in some textbooks authors will write

$$
M R S = \frac {d y}{d x} = - \frac {M U _ {x}}{M U _ {y}}
$$

This depends on the interpretation and as long as you are consistent, you will be okay.

# 3.6.5 The slope of indifference curves

Let's reconcile the definition of MRS:

The marginal rate of substitution of  $x$  for  $y$  is the amount by which  $x$  must change in response to a change in  $y$ , in order to keep utility constant.

$$
M R S = \frac {M U _ {x}}{M U _ {y}}
$$

At the same time, the indifference curve represents all the bundles of  $x$  and  $y$  which represent the same utility. In other words, when we move across the utility curve, we are changing both variables in such a way that  $dU = 0$ .

Combining those two facts, we deduce that the slope of the derivative function is:

$$
\frac {d y}{d x} = - M R S = - \frac {M U _ {x}}{M U _ {y}}
$$

# 3.6.6 Indifference curves are convex (in general)

In general, indifference curves are convex. This comes from two facts.

# 1. Diminishing marginal utility

The law of diminishing marginal utility in Economics tells us that utility gained from consuming an extra unit of a certain good will usually be lower than from consuming the previous extra unit of this good.

Think then what happens to MRS when consumption of one good increases. Let's think of cakes and tea.

Initially it might be easy to substitute one tea for a cake. However, as we consume more and more cakes, we value each extra unit of cake less and are therefore ready to give up less tea for an extra unit of cake. Since MRS is how many units of good  $y$  the consumer is willing to give up to get one more unit of the good  $x$  while keeping the same utility,

that means that:

$$
\frac {d}{d x} M R S <   0
$$

$$
\frac {d}{d x} (- \frac {d y}{d x}) = - \frac {d ^ {2} y}{d x ^ {2}} <   0
$$

so

$$
\frac {d ^ {2} y}{d x ^ {2}} > 0
$$

meaning that the function is convex by definition.

That said, we can imagine a utility function whose indifference curves are concave. For example:

$$
U = x ^ {2} + y
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/207ec7ef907b78d30209ad43d0b9b0ed6f10c9c22307dc32e53726398dfb9d38.jpg)

2. Weighted average is more preferred than extreme bundles

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/230744dfac6b9102555ae4e43895694efefc5cce1f301e25c92045490e5c298f.jpg)

This shows that while at points A and B  $U = U_{1}$ , utility at the midpoint - the arithmetic mean between bundles A and B - is higher. In fact, any point on the line AB would have higher utility, called the weighted average. This is linked to the previous point, when, due to the law of diminishing marginal utility, extreme quantities of one good are less preferred. For a concave function this will be otherwise.

# 3.7 Utility maximisation

The next logical step for our utility analysis is utility maximisation.

# 3.7.1 Budget constraint

As we said before, consumers want to receive the highest utility from their consumption. To do so, they choose different quantities of goods - bundles which will give them the highest satisfaction. However, if a consumer did not encounter any costs associated with their consumption, they would just choose an infinite bundle of goods. In reality, there is always a cost. While we could imagine a cost being time or any other abstract thing, we usually say that each good has its own price -  $P_{i}$  - while a person has a limited budget  $M$ . Together, they are called a budget constraint. Mathematically, it is represented as:

$$
P _ {1} * x _ {1} + P _ {2} * x _ {2} + \dots + P _ {n} * x _ {n} \leq M
$$

Less-or-equal-to sign arises from the fact that in some problems consuming less is less preferable (monotonicity does not hold), for example, for  $U = 8x - x^2 - y : \frac{\partial U}{\partial x} = 8 - 2x < 0$  for  $x > 4$  and  $\frac{\partial U}{\partial y} = -1 < 0$  for all  $y$ . This means that after  $x = 4$  and  $y = 0$  the consumer will not consume. However, if monotonicity holds, then the budget constraint becomes

$$
P _ {1} * x _ {1} + P _ {2} * x _ {2} + \dots + P _ {n} * x _ {n} = M
$$

In general, such a step - when a budget constraint goes from inequality to equality - should be explained. For our two-good example, a budget constraint would look like:

$$
P _ {x} * x + P y * y \leq M
$$

As you can see, it is just a region below the curve  $P_x * x + Py * y = M$ :

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/049c84b567ce56e313b9dd6b098bd138ab08a80d1e1acc40d494955ccaa6a341.jpg)

# 3.7.2 Maximisation Method 1: Brute Force

Example 1: The first method of optimisation is brute force. Imagine the following conditions:

$$
U = x y \rightarrow m a x
$$

$$
P _ {x} = 2, P y = 4, M = 4 0
$$

First, let's write the budget constraint properly:

$$
2 x + 4 y \leq 4 0
$$

Now, in general you do not need to find partial derivatives in order to establish whether inequality is transformed to equality if it's obvious, and so it's enough just to state something like: "In this example, any increment in  $x$  or  $y$  increases utility". Hence:

$$
2 x + 4 y = 4 0
$$

By dividing both sides by 2:

$$
x + 2 y = 2 0
$$

Now, the brute-force method includes expressing  $x$  or  $y$  as a function of the other variable from the budget constraint, substituting it into the utility function, and then maximising as a function of one variable:

$$
x = 2 0 - 2 y
$$

$$
U = (2 0 - 2 y) * y = 2 0 y - 2 y ^ {2}
$$

As you could've noticed, this is a parabola that opens down:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/6b3734258ed7cdb5ef498d654b7fd5cab4c6369078c783fb0a61af02e1e7f3e1.jpg)

As we can clearly see, there is a maximum of that function. Now, there are generally three methods to find it:

1. Find a derivative As we know from A-Level Maths, at the vertex  $\frac{dU}{dy} = 0$ . Thus:

$$
\frac {d U}{d y} = 2 0 - 4 y = 0
$$

Which gives us  $y$  optimal  $= 5$ , or in proper notation  $y^{*} = 5$ . From the budget constraint then  $x = 20 - 2 * 5 = 10$ . 2. Completing the square This is a standard A-Level method,

although the longest one, so I do not recommend using it. Nevertheless:

$$
U = - 2 (- 1 0 y + y ^ {2} + 2 5 - 2 5) = - 2 (y - 5) ^ {2} + 5 0
$$

As we can clearly see, the vertex is at  $y = 5$ , and from the budget constraint we get  $x = 10$  again. 3. The formula Even though I'm not a big fan of formulas, this one is very simple.

For a function

$$
y = a x ^ {2} + b x + c
$$

the vertex  $x$ -coordinate will be:

$$
x ^ {*} = \frac {- b}{2 a}
$$

Which might be derived again from taking a derivative or completing the square for a general function  $y = ax^{2} + bx + c$ .

So, for  $U = 20y - 2y^2$ :  $y^{*} = \frac{-20}{2*(-2)} = 5$ . Again, from the budget constraint  $x = 10$ . Example 2:

However, the brute-force method works only with simple functions. If you had a utility function like  $U = \sqrt{x} * y$ , it would be significantly harder to apply it here. Thus, we can use other methods.

# 3.7.3 Indifference curves

The next method is to look at the indifference curves and the budget constraint on the same graph. Let's work with  $U = \sqrt{x} * y$ :

$$
U = \sqrt {x} * y \rightarrow m a x
$$

$$
P _ {x} = 1, P _ {y} = 2, M = 4 0
$$

By rearranging and completing the budget constraint methods:

$$
y = \frac {\overline {{U}}}{\sqrt {x}}, x + 2 y \leq 4 0
$$

Let's draw them on the same graph:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/4763151860fd11160976d3775518e3e96f45be8594a3beee5c69be2d9593e8ab.jpg)

The blue area is the budget constraint, while the four lines are indifference curves.

Each area within the budget constraint area and on the budget constraint line is possible to buy, while each line represents particular utility levels.

While we are on the green indifference curve and within the area, we can afford it. However, we can easily move onto the orange line and get higher utility while still being able to afford the bundles on the orange line within the area.

We can then continue applying this logic and move closer to the budget constraint line. The point where a purple indifference curve is tangential to the budget constraint line is the last possible utility that can be achieved within the budget constraint. As such, for example, none of the points on the red indifference curve will be possible to obtain.

As such, for convex indifference curves the optimal maximum utility that can be obtained within the budget constraint is at the point where the budget constraint line is tangential to the utility curve.

Mathematically, this means that the slope of the budget constraint line equals the slope of the indifference curve.

The former  $= -\frac{Px}{Py}$ , since  $Px * x + P_y * y = M \leftrightarrow y = \frac{M}{P_y} - \frac{Px}{P_y}x$ .

The latter  $= \frac{dy}{dx} = -MRS = -\frac{MU_x}{MU_y}$

By removing the minus signs, the optimisation condition is:

$$
\frac {M U _ {x}}{M U _ {y}} = \frac {P _ {x}}{P _ {y}}
$$

This optimisation method works perfectly well for convex functions, but does not work well

for concave ones. Let's use the following conditions:

$$
U = x ^ {2} + y \rightarrow m a x
$$

$$
P _ {x} = 4, P _ {y} = 1, M = 3 2
$$

Let's again draw indifference curves and the budget constraint together:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/86ed45b34cbe74b9ae215724d111f2e933c02d1e464de734f7288b08bb732cfd.jpg)

The first purple indifference curve lies within the budget constraint, yet we can easily jump onto the green and the orange ones to get higher utility. Moving forward, the last point that hits the indifference curve would be when the second green indifference curve hits the budget constraint, when  $x = 8$ ,  $y = 0$ .

As such, when the indifference curve is a concave function, the solution will be at one of the corners - either when  $x = 0$  or  $y = 0$  - and all the budget is spent on the other good.

# 3.7.4 Marginal utility per unit of cost

The next method of utility maximisation is quite similar to the previous one. It involves looking at the following expressions:

$$
\frac {M U _ {x}}{M C _ {x}}, \frac {M U _ {y}}{M C _ {y}}
$$

This expression does not have a widely accepted name, so I would just call it the "MU-MC" value.

The "MU-MC" value of  $x$  shows the marginal utility per unit of cost spent on it. In fact,  $MC_{x} = P_{x}$  and  $MC_{y} = P_{y}$ . In other words, it shows how much additional utility an additional smallest possible pound/monetary unit will bring us.

So, for  $U = xy$  and  $P_x = 2$ ,  $P_y = 4$ :

$$
\frac {M U _ {x}}{M C _ {x}} = \frac {\frac {\partial U}{\partial x}}{P _ {x}} = \frac {y}{2}
$$

$$
\frac {M U _ {y}}{M C _ {y}} = \frac {\frac {\partial U}{\partial y}}{P _ {y}} = \frac {x}{4}
$$

To maximise the function with this method we should look at how the "MU-MC" values of  $x$  and  $y$  change relative to each other with different values of  $x$  and  $y$ , and whether they eventually converge or not. Let's look at it more closely: Suppose for some combination of

$x,y$  ..

$$
\frac {M U _ {x}}{M C _ {x}} = \frac {y}{2} <   \frac {M U _ {y}}{M C _ {y}} = \frac {x}{4}
$$

It then means that an additional monetary unit spent on  $y$  will bring us more utility than an additional monetary unit spent on  $x$ . Consequently, it will be more valuable for the consumer to increase their consumption of  $y$ . Then, since  $y$  increases, so does  $\frac{MU_x}{MC_x} = \frac{y}{2}$ , going closer to the unchanging  $\frac{MU_y}{MC_y} = \frac{x}{4}$ . It will then be more valuable for the consumer to do so until  $\frac{MU_x}{MC_x} = \frac{MU_y}{MC_y}$ . Vice versa, if for some combination of  $x, y$ :

$$
\frac {M U _ {x}}{M C _ {x}} = \frac {y}{2} > \frac {M U _ {y}}{M C _ {y}} = \frac {x}{4}
$$

It will also be more profitable to increase  $\mathbf{x}$ , thus increasing  $\frac{MU_y}{MC_y}$  until it is equal to the "MU-MC" value of  $\mathbf{x}$ .

Thus, in this context the "MU-MC" values converge, so that:

$$
\frac {y}{2} = \frac {x}{4}
$$

By rearranging:

$$
x = 2 y
$$

This is the optimal ratio of consumption between  $x$  and  $y$ . By substituting this into the budget constraint we get  $x^{*} = 10$  and  $y^{*} = 5$  again.

Interestingly, if you rearrange the optimisation condition  $\frac{MU_x}{MC_x} = \frac{MU_y}{MC_y}$  into  $\frac{MU_x}{MU_y} = \frac{MC_x}{MC_y}$  or  $\frac{MU_x}{MU_y} = \frac{P_x}{P_y}$ , you can see that it is the same optimisation condition which we used with indifference curves. However, this method will be much more useful when we are solving a

utility maximisation problem with 3 or more variables. We will come back to it later in the "Hard Utility Problems" section further in the book.

Let's quickly look at what happens when "MU-MC" values diverge.

Suppose we have a utility function  $U = x^{2} + 3y$ ,  $P_{x} = 2$ ,  $P_{y} = 3$ ,  $M = 40$ .

Then:

$$
\frac {M U _ {x}}{M C _ {x}} = \frac {2 x}{2} = x, \frac {M U _ {y}}{M C _ {y}} = \frac {3}{3} = 1
$$

Suppose  $\frac{MU_x}{MC_x} >\frac{MU_y}{MC_y}$

Then it is beneficial for a consumer to increase their consumption of  $x$  and decrease their consumption of  $y$ . Thus, this will increase  $\frac{MU_x}{MC_x}$ , while  $\frac{MU_y}{MC_y}$  will remain constant, moving the combination away from convergence. On the other hand, if  $\frac{MU_x}{MC_x} < \frac{MU_y}{MC_y}$ , then it is beneficial to increase consumption of  $y$  and reduce consumption of  $x$ . Hence,  $\frac{MU_x}{MC_x}$  will decrease, while  $\frac{MU_y}{MC_y}$  will remain constant, moving the combination away from convergence again. Thus, the combination diverges, meaning that the optimum solution is the corner solution, when  $x = 0$  or  $y = 0$  and all the budget is spent on the other good.

# 3.7.5 Standard Utility functions

# Perfect complements

The first standard utility function is:

$$
U = \min (x, y) \rightarrow \max
$$

As you can see, the consumer will only get utility based on the smallest quantity out of the two goods, meaning that the goods are perfect complements - ones that are consumed together. Typical examples include left and right boots, joystick and PlayStation, etc.

Let's try to draw the indifference curves for this function.

Firstly, we can observe that every point  $(\alpha, \alpha)$  will lie on an indifference curve. In other words, each individual indifference curve will cross the line  $y = x$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/533ec6d658f6e5866c06665cc0396dee783b8965e86b71dcfdf1be3dd38bb0b2.jpg)

The shape of the indifference curve can be understood in the following way: for every bundle lying on the blue part,  $y \geq x$ , since  $x = 6$ . Yet, since only the smallest quantity of the good matters, we only get  $U = 6$ . The same thing works on the green part of the curve, when  $x \geq y$ .

If we include the budget constraint line to the graph, we can see that utility will be maximised when the budget constraint is tangential to the indifference curve (convex function). You can figure it out in your head by drawing a budget constraint line and trying to find how to draw the indifference curve with the highest utility within the budget constraint. As such, an optimal combination is  $x = y$ :

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/dbd5b70cc9c004d3623491cabcd2ee102bb7d7036d29a476cec47f2f9283084b.jpg)

On the other hand, if we add coefficients to  $x, y$  in this function (sometimes we consume in a different ratio than 1:1), we would get the same right-angled indifference curve, with the only difference being the value of  $m$  in the line  $y = mx$  which goes through each utility curve:

$$
U = \min (a x, b y)
$$

：

$$
a x = b y
$$

$$
y = \frac {a x}{b}, m = \frac {a}{b}
$$

And so the optimum ratio will be  $y = mx$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/10895003c9ac5143a6f2dcc0aa86aaf49d88e70521b0bf94760d4670d5b534ad.jpg)

Perfect Substitutes As we looked at perfect complements - goods which are consumed together - now we should look at perfect substitutes. These are the goods between which the consumer will always choose only one good.

Thus, intuitively we might think that any function and any combination of prices which results in the consumer choosing to buy only one good should represent the perfect substitutes case.

Yet, this is not fully correct. This is because, in Economics, we assume that for perfect substitutes the MRS should always be constant.

This is because, if goods are perfect substitutes, then the consumer would be willing to substitute a certain quantity of good  $\mathrm{X}$  for the same quantity of good  $\mathrm{Y}$  (proportionally) no matter how large the two quantities are.

Under such an assumption, we are then left with the only possible function for perfect substitutes, that is:

$$
U = a x + b y
$$

where  $a$  and  $b$  are arbitrary constants (usually positive).

In that case,

$$
M R S = \frac {M U _ {x}}{M U _ {y}} = \frac {a}{b}
$$

which is a constant.

Cobb-Douglas Utility Function

The Cobb-Douglas utility function looks as follows:

$$
U = A * x ^ {\alpha} * y ^ {\beta}
$$

, where  $\alpha$  and  $\beta$  represent the relative importance of x and y, and  $A$  is a constant.

This function is a good choice for many models because, as opposed to a linear one, the optimal solution will involve both  $x$  and  $y$  being greater than zero, while the power represents the relative importance.

If we want to maximise, we can equalise the slopes, since the function is convex:

$$
M R S = \frac {M U _ {x}}{M U _ {y}} = \frac {\alpha * A * x ^ {\alpha - 1} y ^ {\beta}}{\beta * A * x ^ {\alpha} * y ^ {\beta - 1}} = \frac {\alpha * x ^ {\alpha - 1} y ^ {\beta}}{\beta * x ^ {\alpha} * y ^ {\beta - 1}} = \frac {P _ {x}}{P _ {y}}
$$

Or:

$$
\frac {\alpha}{\beta} * \frac {x ^ {- 1}}{y ^ {- 1}} = \frac {\alpha}{\beta} * \frac {y}{x} = \frac {P _ {x}}{P _ {y}}
$$

So:

$$
y = \frac {P _ {x} * \beta}{P _ {y} * \alpha} * x
$$

is our optimal relation between  $y$  and  $x$ .

If you then plug this into the utility function, you would get:

$$
x ^ {*} = \frac {\alpha}{\alpha + \beta} * \frac {M}{P _ {x}}
$$

$$
y ^ {*} = \frac {\beta}{\alpha + \beta} * \frac {M}{P _ {y}}
$$

In practice,  $\alpha$  and  $\beta$  usually follow the relation:

$$
\alpha = 1 - \beta
$$

This is because in Economics it is common to represent relative importance as a proportion of 1.

For example, in Macroeconomics one of the growth models is represented as:

$$
Y = A * K ^ {\alpha} * L ^ {1 - \alpha}
$$

, where  $\mathrm{Y}$  is output (GDP),  $\mathrm{K}$ ,  $\mathrm{L}$  are capital and labour in the economy,  $\mathrm{A}$  is the total factor productivity, and  $\alpha$  is "capital share", that is, the part of the income that goes to capital (subsequently,  $1 - \alpha$  is labour share).

# 3.7.6 Demand Derivation

What we've done before in the Cobb-Douglas example - maximised utility for some arbitrary values  $P_x, P_y$  - is effectively the derivation of the demand function. As we know, the demand function is  $\mathbf{Q}$  as a function of  $\mathbf{P}$ .

Hence, in our Cobb-Douglas example the demand functions are:

$$
x = \frac {\alpha}{\alpha + \beta} * \frac {M}{P _ {x}}
$$

$$
y = \frac {\beta}{\alpha + \beta} * \frac {M}{P _ {y}}
$$

As such, to find the demand function for some arbitrary utility function, we should treat the price of this good as a variable and the price of the other good as constant. For example:

$$
U = x y \rightarrow m a x
$$

$$
P _ {x}, P y, M = 4 0
$$

By treating  $P_{x}$  as variable and  $P_{y}$  as constant (let's set  $P_{y} = c$ ):

$$
M R S = \frac {y}{x} = \frac {P _ {x}}{c}
$$

By rearranging:

$$
y = \frac {P _ {x}}{c} x
$$

$$
x * P _ {x} + \frac {P _ {x}}{c} x * c = 4 0
$$

$$
x = \frac {2 0}{P _ {x}}
$$

Which is a demand function as a price of  $\mathbf{x}$ .

*Note that it is exactly the solution which we got before for Cobb Douglas for  $\alpha = 1, \beta = 1 : x^{*} = \frac{1}{1 + 1} * \frac{40}{P_{x}} = \frac{20}{P_{x}}$

That is it for demand derivation.

# 3.7.7 Hard Problems

# Hard problem 1

As we remember, to use the "MU-MC" method we consider a possibility of  $\frac{MU_x}{MC_x} > \frac{MU_y}{MC_y}$  and then by swapping  $y$  for  $x$  we eventually converge.

However, what if while we are swapping  $y$  for  $x$  we exhaust all our quantity of  $y$  before the convergence happens? In other words, what if we reach the point when  $y = 0$  and there is no place to swap any more?

In that case, the optimal solution will be a corner solution, meaning that the consumer buys only good  $x$  or good  $y$ . In practice, you wouldn't notice it until you find an optimum solution and try to find the optimal values.

For example:

$$
\begin{array}{l} U = \sqrt {x} + y \rightarrow m a x \\ P x = P _ {y} = 1, M = 0. 1 \\ \end{array}
$$

In that case:

$$
\frac {M U _ {x}}{M C _ {x}} = \frac {1}{2 \sqrt {x}}, \frac {M U _ {y}}{M C _ {y}} = 1
$$

By considering two cases  $\frac{MU_x}{MC_x} > \frac{MU_y}{MC_y}$  and  $\frac{MU_x}{MC_x} < \frac{MU_y}{MC_y}$ , we can conclude that this combination converges. Hence:

$$
\frac {1}{2 \sqrt {x}} = 1 \Rightarrow x = \frac {1}{4}
$$

From the budget constraint  $(x + y = 0.1)$  we can clearly see that  $x = 0.25$  results in  $y = -0.15$ , which is not possible. Thus, the solution is the closest possible corner point, so  $x = 0.1$ .

But why does the MU-MC method give the wrong answer? Is the method wrong?

Technically, it does not give the wrong answer, but rather an answer which does not fit into our assumption of  $x, y > 0$ . As it happens, the budget constraint line for the given constants is tangential to the indifference curve for a negative value of  $x!$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/8d843db1c3b4ed7417f2be6448a5a9ab0eebc83b7714929b075df9d184f87f5a.jpg)

# Hard problem 2

$$
U = x ^ {2} y \rightarrow m a x
$$

and

$$
P _ {x} = 2, P _ {y} = 4, M = 1 0 0
$$

Now, if we try to solve the problem using tangency to the indifference curve we would easily do it, since:

$$
y = \frac {\overline {{U}}}{x ^ {2}}
$$

which is a convex function:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/ca0d3bf0f9fbbd1db0f1738a5b6a5c9f35c4322242f836ceb88e53133b034673.jpg)

As such, there will be a unique and optimal solution:

$$
M R S = \frac {P _ {x}}{P _ {y}}
$$

$$
\frac {2 x y}{x ^ {2}} = \frac {2 y}{x} = \frac {2}{4}
$$

So that

$$
x = 4 y
$$

Then from the budget constraint we get:

$$
2 * 4 y + 4 y = 1 0 0
$$

$$
y ^ {*} = \frac {2 5}{3}
$$

Thus,

$$
x ^ {*} = \frac {1 0 0}{3}
$$

However, the hard part starts when we try to use the "MU-MC" method. For our functions:

$$
\frac {M U _ {x}}{M C _ {x}} = \frac {2 x y}{2} = x y, \frac {M U _ {y}}{M C _ {y}} = \frac {x ^ {2}}{4}
$$

Suppose  $\frac{MU_x}{MC_x} >\frac{MU_y}{MC_y}$

Then it is beneficial for the consumer to increase their consumption of x and decrease their consumption of y.

Then, we can definitely say that  $\frac{MU_y}{MC_y} = \frac{x^2}{4}$  will increase.

Yet, it is then unclear what happens to  $\frac{MU_x}{MC_x} = xy$ . In fact, it can both increase or decrease, depending on  $x$  and  $y$ , since:

$$
\frac {\partial}{\partial x} \left(\frac {M U x}{M C x}\right) = y, \frac {\partial}{\partial y} \left(\frac {M U x}{M C x}\right) = x
$$

Thus, if  $y > x$ ,  $\frac{MUx}{MCx}$  will increase, moving the two values further from convergence initially. As we established previously by looking at indifference curves, eventually convergence will happen. This is because when the consumer increases their consumption of  $x$  and decreases their consumption of  $y$ , eventually  $x$  becomes larger than  $y$  and so  $\frac{MUx}{MCx}$  goes down; thus convergence does happen.

The only problem which might arise is the one we looked at before, when we run out of one good before convergence happens. In that case, we just hit the corner solution and that is it.

To conclude, it does not matter whether the initial combination diverges. What matters is that eventually they converge. If one good runs out before convergence, we will get negative values of  $x$  or  $y$ , so we hit the corner solution and that is it.

# Hard Problem 3

$$
U = \sqrt {x} + \sqrt {y} + \sqrt {z}
$$

$$
P _ {x} = 1, P _ {y} = 2, P _ {z} = 3, M = 4 0
$$

Here we come to the problem with equalising the slopes of the indifference curve and the budget constraint. Since we have 3 variables, we simply cannot make this happen with our current A-Level mathematical knowledge. And so, we need to use the "MU-MC" method.

$$
\frac {M U _ {x}}{M C _ {x}} = \frac {1}{2 \sqrt {x}}, \frac {M U _ {y}}{M C _ {y}} = \frac {1}{4 \sqrt {y}}, \frac {M U _ {z}}{M C _ {z}} = \frac {1}{6 \sqrt {z}}
$$

Suppose first that we treat  $\mathbf{z}$  as constant and change only  $\mathbf{x}$  and  $\mathbf{y}$ .

If  $\frac{MU_x}{MC_x} >\frac{MU_y}{MC_y}$  then it is beneficial to increase x and decrease y; hence,  $\frac{MU_x}{MC_x}$  will then decrease, while  $\frac{MU_y}{MC_y}$  remains constant, until  $\frac{MU_x}{MC_x} = \frac{MU_y}{MC_y}$

On the other hand, if  $\frac{MU_y}{MC_y} > \frac{MU_x}{MC_x}$ , then it is beneficial to increase  $y$  and decrease  $x$ . As a result,  $\frac{MU_x}{MC_x}$  will increase, until hitting the moment when  $\frac{MU_x}{MC_x} = \frac{MU_y}{MC_y}$ .

We can do the same with the two remaining pairs: "x-z", "y-z". As a consequence, we get:

$$
\left\{ \begin{array}{l} \frac {1}{2 \sqrt {x}} = \frac {1}{4 \sqrt {y}}, \\ \frac {1}{2 \sqrt {x}} = \frac {1}{6 \sqrt {z}}, \\ \frac {1}{4 \sqrt {y}} = \frac {1}{6 \sqrt {z}} \end{array} \right.
$$

By simplifying and taking squares:

$$
\left\{ \begin{array}{l} x = 4 y, \\ x = 9 z, \\ y = \frac {9}{4} z \end{array} \right.
$$

And finally, by substituting this into the budget constraint:

$$
x + 2 y + 3 z = 4 0
$$

$$
4 y + 2 y + 3 * \frac {4}{9} y = 4 0
$$

$$
y = \frac {6 0}{1 1}, z = \frac {8 0}{3 3}, x = \frac {2 4 0}{1 1}
$$

And so, we maximised our utility. As such, we can use the "MU-MC" method to solve problems with 3 or more variables. As said before, if the "MU-MC" values diverge, this means that we spend all our budget on one good only.

# 3.7.8 Lagrangian Multiplier

The final method of utility maximisation is the Lagrangian Multiplier. This method is a formal way of finding an optimum solution for any number of goods.

Suppose again:

$$
U = \sqrt {x} + \sqrt {y} + \sqrt {z}
$$

$$
P _ {x} = 1, P _ {y} = 2, P _ {z} = 3, M = 4 0
$$

The method involves setting the following function:

$$
\mathcal {L} = U (x, y, z) + \lambda (M - P _ {x} x - P _ {y} y - P _ {z} z)
$$

which is called the Lagrangian Multiplier

And then solving:

$$
\left\{ \begin{array}{l} \frac {\partial \mathcal {L}}{\partial x} = M U _ {x} - \lambda p _ {x} = 0 \\ \frac {\partial \mathcal {L}}{\partial y} = M U _ {y} - \lambda p _ {y} = 0 \\ \frac {\partial \mathcal {L}}{\partial z} = M U _ {z} - \lambda p _ {z} = 0 \\ \frac {\partial \mathcal {L}}{\partial \lambda} = M - P _ {x} x - P _ {y} y - P _ {z} z = 0. \end{array} \right.
$$

Or, in our case:

$$
\left\{ \begin{array}{l l} \frac {\partial \mathcal {L}}{\partial x} = \frac {1}{2 \sqrt {x}} - \lambda = 0 \\ \frac {\partial \mathcal {L}}{\partial y} = \frac {1}{2 \sqrt {y}} - 2 \lambda = 0 \\ \frac {\partial \mathcal {L}}{\partial z} = \frac {1}{2 \sqrt {z}} - 3 \lambda = 0 \\ \frac {\partial \mathcal {L}}{\partial \lambda} = 4 0 - x - 2 y - 3 z = 0 \end{array} \right.
$$

If we then rearrange the top three equations as  $\lambda = \ldots$  and move  $-x - 2y - 3z$  to the left of 0 in the last equation we would get:

$$
\left\{ \begin{array}{l} \lambda = \frac {1}{2 \sqrt {x}} \\ \lambda = \frac {1}{4 \sqrt {y}} \\ \lambda = \frac {1}{6 \sqrt {z}} \\ 4 0 = x + 2 y + 3 z \end{array} \right.
$$

If you then look at this system carefully, the top three equations are identical to the ones which we got while trying to maximise the utility function using the "MU-MC" method, just not yet equalised:

$$
\left\{ \begin{array}{l} \frac {1}{2 \sqrt {x}} = \frac {1}{4 \sqrt {y}}, \\ \frac {1}{2 \sqrt {x}} = \frac {1}{6 \sqrt {z}}, \\ \frac {1}{4 \sqrt {y}} = \frac {1}{6 \sqrt {z}} \\ 4 0 = x + 2 y + 3 z \end{array} \right.
$$

Where the fourth equation is just the budget constraint.

As a result, we end up with the same solution to our problem.

In practice, the Lagrangian multiplier is used to find the same point where the slope of the indifference curve is equal to the slope of the budget constraint, just in higher dimensions. Because of that, the Lagrangian would not always produce the optimal solution, only under certain assumptions about concavity of the indifference curve.

However, this is way beyond A-Level. If you would like to know more about the Maths behind the Lagrangian multiplier, you can find it online.

# 3.7.9 TL;DR

Different methods are good to use in different cases.

To summarise:

If you know that the function is convex, equalise the slopes of the indifference curves and budget constraints.

If you are unsure or have more than 2 variables, use the "MU-MC" method.

If you have more than 2 variables yet you know that the function is convex (for example,  $U = xyz$ ), use Lagrangian.

If your method doesn't work, try a different one; it might be easier!

# Part II

# Theory of the Firm

# 4 Firm's costs

# 4.1 Production function

As we know from A-Level Economics, agents use factors of production to produce goods and services. In theory, we have 4 factors: capital, labour, land, enterprise.

Despite that fact, in models economists usually assume that a firm uses only 2 of those factors to produce: labour (L) and capital (K). This is done to simplify the process.

As such, a production function is a function of  $\mathrm{L}$  and  $\mathrm{K}$ , which tells us how much of a certain good (Q) we can produce from having a certain amount of  $\mathrm{L}$  and  $\mathrm{K}$ .

The production function is usually denoted as  $Q = f(K, L)$ .

For example, if  $Q = 5L + 3K$ , then if  $L = 3$  and  $K = 5$ , the overall quantity produced will be  $Q = 30$ .

# 4.2 Deriving the cost Function

In Economics, a function denoting the total cost for a firm to produce some arbitrary quantity  $Q$  is called "total cost".

For example, if  $TC = 5Q$ , then to produce  $Q = 3$  the firm should spend 15 monetary units.

However, often we don't know the total cost function, but rather only the production function. Then, it's our goal to derive the TC function on our own.

Suppose  $Q = 3\sqrt{L} + 5K$ . Suppose then that for a labour hour  $(L = 1)$  a firm needs to pay the wage  $w = 1$ . Finally, suppose that to get one unit of capital  $(K = 1)$  we need to pay the rent  $r = 2$ . By the way, sometimes the cost of capital is calculated as the opportunity cost of capital, rather than rent. For example, if I own a car I can either use it in production or rent it to the taxi company. Then, the cost of the car to my company will be the loss of rent from the taxi company that I get.

Let's get back to the TC function. Since the firm's only expenditure is spending on capital and labour, we can deduce that its total costs are:

$$
T C = r K + w L = 2 K + L
$$

However, it's not the function  $\mathrm{TC}(\mathbf{Q})$  which we want to get.

To derive it, let's think of the firm's objective: it wants to buy capital and labour in such a proportion that it produces the given quantity of the good for the lowest price.

As such, our goal is to minimise the TC function under the given production function:

$$
T C = 2 K + L \rightarrow m i n
$$

$$
Q = 3 \sqrt {L} + 5 K
$$

# 4.2.1 Method 1: Brute Force

As we said before, the goal is to minimise the cost under a given quantity. As such, we can treat  $Q$  as a constant. Because of that, we can then express  $K$  as a function of  $L$  for a given  $Q$ :

$$
K = \frac {Q - 3 \sqrt {L}}{5}
$$

By substituting this into the TC function:

$$
T C = 2 * \left(\frac {Q - 3 \sqrt {L}}{5}\right) + L
$$

Since we don't like to work with square roots, let's make a substitution:  $\sqrt{L} = t, L = t^2$ .

Then, TC becomes:

$$
T C = \frac {2}{5} (Q - 3 t) + t ^ {2}
$$

If we plot this as a function of  $t$  with a parameter  $Q$ , we can clearly see that this is a parabola that has a minimum at the vertex:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/d8a6b7c1b5eabdd29f6178a8fd9ff4b66e74bf9b7a7040115667647e91b6161f.jpg)

By using the formula for a vertex, we can deduce that:

$$
t ^ {*} = \frac {- - \frac {6}{5}}{2 * 1} = \frac {3}{5}
$$

Hence,  $L^{*} = \frac{9}{25}$

Since  $K = \frac{Q - 3\sqrt{L}}{5}$ :

$$
K ^ {*} = \frac {Q - 3 * \frac {3}{5}}{5} = \frac {Q - \frac {9}{5}}{5}
$$

However, as you might notice,  $\mathrm{K}$  will be negative for  $Q < \frac{9}{5}$ , which contradicts our assumption

that  $\mathrm{K}$  is non-negative. Thus, by taking the closest point that fits into our assumption  $(\mathrm{K} = 0)$ , we get:

$$
K = \left\{ \begin{array}{l} 0, Q \leq \frac {9}{5} \\ \frac {Q - \frac {9}{5}}{5}, Q > \frac {9}{5} \end{array} \right.
$$

This means that to produce any quantity of the good that is less than  $\frac{9}{5}$ , we do not use capital at all, producing every bit with labour only.

Thus, for  $Q < \frac{9}{5}$ :

$$
Q = 3 \sqrt {L} + 0
$$

so that

$$
L = \frac {Q ^ {2}}{9}
$$

$$
L = \left\{ \begin{array}{l} \frac {Q ^ {2}}{9}, Q \leq \frac {9}{5} \\ \frac {9}{2 5}, Q > \frac {9}{5} \end{array} \right.
$$

*Note that both L and K should be more than zero for every Q. We checked for  $\mathrm{K} > 0$  and we can clearly see that  $\mathrm{L} > 0$  for any positive Q, so we are fine.

Then, by substituting those values into the TC formula:

$$
T C = \left\{ \begin{array}{l} \frac {Q ^ {2}}{9}, Q \leq \frac {9}{5} \\ 2 * \frac {Q - \frac {9}{5}}{5} + \frac {9}{2 5}, Q > \frac {9}{5} \end{array} \right.
$$

# 4.2.2 Method 2: MP-MC Method

As with utility, using marginal functions could be beneficial. However, this time we will use the "MP-MC" values, where MP stands for marginal product and MC for marginal cost. As such, the "MP-MC" value represents the marginal product per marginal monetary unit.

Similarly to the utility:

$$
\frac {M P _ {K}}{M C _ {K}} = \frac {\frac {\partial Q}{\partial K}}{\frac {\partial T C}{\partial K}}
$$

$$
\frac {M P _ {L}}{M C _ {L}} = \frac {\frac {\partial Q}{\partial L}}{\frac {\partial T C}{\partial L}}
$$

Let's consider an example:

$$
Q = \sqrt {K} + \sqrt {L}
$$

$$
r = 1, w = 2
$$

As before:

$$
T C = r K + w L = K + 2 L
$$

And then,

$$
\frac {M P _ {K}}{M C _ {K}} = \frac {1}{2 \sqrt {K}}
$$

$$
\frac {M P _ {L}}{M C _ {L}} = \frac {1}{4 \sqrt {L}}
$$

$^*$  since  $MC_{K} = r, MC_{L} = w$  by definition.

Suppose  $\frac{MP_K}{MC_K} > \frac{MP_L}{MC_L}$ . Since we want to maximise the output per monetary unit, it is beneficial to increase  $K$  and decrease  $L$ ; hence,  $\frac{MP_K}{MC_K}$  will then decrease, while  $\frac{MP_L}{MC_L}$  increases, until  $\frac{MP_K}{MC_K} = \frac{MP_L}{MC_L}$ .

On the other hand, if  $\frac{MP_K}{MC_K} < \frac{MP_L}{MC_L}$ , then it is beneficial to increase  $L$  and decrease  $K$ . As a result,  $\frac{MP_K}{MC_K}$  will increase and  $\frac{MP_L}{MC_L}$  will decrease until the moment when  $\frac{MP_K}{MC_K} = \frac{MP_L}{MC_L}$ .

Thus, the optimal production will be when:

$$
\frac {M P _ {K}}{M C _ {K}} = \frac {1}{2 \sqrt {K}} = \frac {M P _ {L}}{M C _ {L}} = \frac {1}{4 \sqrt {L}}
$$

So,

$$
K = 4 L
$$

We can then substitute into the production function:

$$
Q = \sqrt {4 L} + \sqrt {L} = 3 \sqrt {L}
$$

$$
L = \frac {Q ^ {2}}{9}
$$

Finally, by substituting this into the TC function:

$$
T C = 4 L + 2 L = 6 * \frac {Q ^ {2}}{9} = \frac {2 Q ^ {2}}{3}
$$

which is the final answer.

However, as seen before in utility, "MP-MC" values might diverge. Let's look at how this works.

Suppose

$$
Q = 2 K ^ {2} + 3 L ^ {3}
$$

$$
w = 1, r = 1
$$

Then,

$$
\frac {M P _ {K}}{M C _ {K}} = \frac {4 K}{1}, \frac {M P _ {L}}{M C _ {L}} = \frac {9 L ^ {2}}{1}
$$

Suppose that  $\frac{MP_K}{MC_K} > \frac{MP_L}{MC_L}$ . Then it is beneficial for the consumer to increase K and decrease L. However, as you can see, this will then increase  $\frac{MP_K}{MC_K}$  and decrease  $\frac{MP_L}{MC_L}$ , meaning divergence. Vice versa, if  $\frac{MP_K}{MC_K} < \frac{MP_L}{MC_L}$ , it is beneficial to increase L and decrease K, leading to divergence once again.

By the same logic as before, when the "MP-MC" values diverge, we set either  $\mathrm{L}$  or  $\mathrm{K}$  equal to zero and look at what brings the lowest TC  $(TC = K + L)$ .

if  $\mathrm{L} = 0$

$$
Q = 2 K ^ {2}
$$

$$
T C = 0 + K = \sqrt {\frac {Q}{2}}
$$

if  $\mathrm{K} = 0$

$$
Q = 3 L ^ {3}
$$

$$
T C = 0 + L = \sqrt [ 3 ]{\frac {Q}{3}}
$$

Now, let's solve:

$$
\sqrt {\frac {Q}{2}} > \sqrt [ 3 ]{\frac {Q}{3}}
$$

Leading to:

$$
Q > \frac {8}{9}
$$

Hence, the optimal cost function will be:

$$
T C = \left\{ \begin{array}{l} \sqrt {\frac {Q}{2}}, 0 <   Q <   \frac {8}{9} \\ \sqrt [ 3 ]{\frac {Q}{3}}, Q \geq \frac {8}{9} \end{array} \right.
$$

Meaning that for  $0 < Q < \frac{8}{9}$  we use capital only, whereas for  $Q \geq \frac{8}{9}$  we use laboronly.

# 4.3 Standard Cost and Production Functions

# 4.3.1 Main types of costs

As we've seen before in utility theory, we make some assumptions in order to model consumers as precisely as possible. Yet, as a mathematical exercise we sometimes break some of those assumptions to explore how utility functions behave.

We do the same with costs. However, in this section we are going to explore how the most standard cost functions behave.

Let's first remind ourselves of the main types of costs:

TC - total costs. This is just a function representing how much in total it would cost to produce some output Q. For instance:

$$
T C = 4 Q ^ {2} + 3 Q + 1
$$

VC - Variable Costs. These costs depend on the output, and could represent, say, materials used during the production process, labour costs used to produce a unit of output, etc.

In the total cost function, variable costs would be anything involving Q:

If  $TC = Q^2 + 5$ , then  $VC = Q^2$ .

FC - Fixed Costs. These costs remain however much output you are producing. This might involve renting a factory or purchasing a licence.

Mathematically, in the TC function, FC would be represented as a constant:

If  $TC = Q^2 + 5$ , then  $FC = 5$ .

As such, mathematically:

$$
T C (Q) = V C (Q) + F C
$$

ATC - average total costs. These represent the average cost of producing a unit of output. Mathematically:

$$
A T C (Q) = \frac {T C (Q)}{Q}
$$

AVC, AFC - average variable/fixed costs. Similarly, these represent the average variable cost of producing a unit of output and the average fixed cost of producing a unit of output.

Note that while  $AVC$  might have any shape, depending on the  $VC$  function (we will look at the standard  $AVC$  function later),  $AFC$  would always be a single function that looks like:

$$
A F C = \frac {c}{Q}
$$

, where c is a constant.

and,AVC:

$$
A V C = \frac {V C (Q)}{Q} = \frac {T C (Q) - F C}{Q} = A T C (Q) - A F C (Q)
$$

MC - marginal cost. The marginal cost, as we learned earlier, represents the cost of an extra unit of the good produced.

If we can only produce an integer quantity of a certain good, then:

$$
M C = T C (Q + 1) - T C (Q)
$$

However, if goods are infinitely divisible (which in most cases is true):

$$
M C = \lim _ {\triangle Q \to 0} f (Q) \frac {T C (Q + \triangle Q) - T C (Q)}{\triangle Q}
$$

which is by definition:

$$
M C = \frac {d}{d Q} (T C (Q))
$$

This means that if  $MC = 2Q$ , then if  $Q = 3$  was already produced, the next infinitely small unit of the good would cost an extra 6 monetary units.

# 4.3.2 Standard Production Functions

Let's now think about production and cost functions, more precisely, how those "standard functions" look. You probably remember the following cost diagram, if you take A-Level Economics:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/5954469a18dba3bece57289961efc69c6d644ef78bcb064fe711273308a3bb2b.jpg)

But have you ever questioned where those functions come from? Let's dive deeper.

It all starts with our production functions again. Let's look at a standard production function of one factor of production: labour.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/cf6d4beed0b4d83fb41144198c5a1f5c6ba22574a1a6ac2f1946009ec91f463a.jpg)

The point denoted as "inflection" is the point of inflection of the curve - when the graph changes its concavity.

Before the point of inflection, then:

$$
\frac {d ^ {2} f}{d L ^ {2}} > 0
$$

or, in other words:

$$
\frac {d}{d L} \left(\frac {d f}{d L}\right) > 0
$$

This tells us that the rate at which output is growing is increasing. Based on theory, we know this happens because of specialisation: when workers produce more they practise and master the skills required for the job.

However, this changes after the point of inflection. At this point benefits from specialisation start to diminish. This happens because too much labour force working at the same factory starts to overcrowd it. As a result, they still get perks from improving their skills and productivity until the output max hits.

At this point, we are no longer getting any benefits from specialisation; rather, more labour  $=$  less output due to overcrowding, management slack, etc., and so output falls.

This behaviour can be achieved via the following standard cubic function:

$$
f (L) = a + b L + c L ^ {2} + d L ^ {3}
$$

where:

$$
a \geq 0, b \geq 0, c \geq 0, d <   0
$$

For example:

$$
f (L) = 3 L + 8 L ^ {2} - L ^ {3}
$$

we can then use this to derive marginal product and average product:

$$
M P = \frac {d f}{d L} = 3 + 1 6 L - 3 L ^ {2}
$$

$$
A P = \frac {f (L)}{L} = 3 + 8 L - L ^ {2}
$$

Let's draw them all together:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/f5ea79bed68a0bde6bf2f56f47bd703772b8d5caa072c989c32bc29f1e5d920e.jpg)

As you can see, the MP achieves its maximum at the point of inflection. This comes from the definition of MP as the derivative of the production function.

What's more important is the point where  $AP = MP$ ,  $L = 4$ . Before  $L = 4$ , a new hire (an extra unit of labour involved in production) would increase the  $AP$ . This is beneficial to us, since a larger  $AP$  is good for the firm. Thus, we are incentivised to increase labour before this point. However, after the point an extra hire would lower  $AP$ , which is not beneficial for the factory. Thus, the factory owners will be incentivised to find the "sweet spot" when it happens,  $MC = AP$ .

# 4.3.3 Standard Cost Functions

Let's look at the standard cost function the same way we looked at a standard production function:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/5db64d31142b39bb8834a4e45d6bf930f3dde92699d695e5b9944a8acd5a15b4.jpg)

As we can see, the  $TC$  function is constantly increasing. However, before  $Q = 40$  the function is concave, while after it is convex. This is again due to the benefits of specialisation.

When the function is concave, this means that:

$$
\frac {d}{d Q} \left(\frac {d T C}{d Q}\right) <   0
$$

Meaning that the rate at which  $TC$  grows is decreasing with every Q. This is because workers become more specialised, thus produce more goods in one labour hour (what we saw previously with the production function). Assuming constant wages, the same monetary unit then brings higher output, meaning the rate of growth of  $TC$  decreases ( $MC$  decreases).

However, after  $Q = 40$ , those benefits of specialisation are offset by mismanagement, overcrowding, etc. Thus, the  $TC$  function becomes convex, meaning that with every output the rate of increase of TC increases.

This function behaviour could be achieved with a cubic function:

$$
T C (Q) = a Q ^ {3} - b Q ^ {2} + c Q + d
$$

, where

$$
a, b, c, d > 0
$$

For example:

$$
T C (Q) = 0. 0 0 5 Q ^ {3} - 0. 6 Q ^ {2} + 2 5 Q + 5 0 0
$$

which is depicted in the graph above.

Then, for this TC function:

$$
V C (Q) = 0. 0 0 5 Q ^ {3} - 0. 6 Q ^ {2} + 2 5 Q
$$

$$
F C (Q) = 5 0 0
$$

$$
M C (Q) = 0. 0 1 5 Q ^ {2} - 1. 2 Q + 2 5.
$$

so:

$$
A V C (Q) = 0. 0 0 5 Q ^ {2} - 0. 6 Q + 2 5
$$

$$
A F C (Q) = \frac {5 0 0}{Q}
$$

Let's first plot AFC:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/8cf6e24d0094b0c619876ed8bd9865e3d30e3445718b53d430b4a53b0870e094.jpg)

As we can see, this is just a standard hyperbola which is limiting to zero as  $\mathbf{Q}$  increases. This is common sense: as we increase output, the fixed cost is effectively getting diluted.

By the way, this is exactly why in a natural monopoly the market cannot sustain more than one firm:  $FC$  are so high that unless  $Q$  produced and thus  $Q$  sold is high, the firm will not be able to cover those costs.

Now, let's plot  $MC$  and  $AVC$ :

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/3b8c0ea7a5d8d73c4596428973c56baf252d802ae350aa9945cd15d00f8da30d.jpg)

Firstly, you can see the point  $Q = 40$  that we talked about before: before  $Q = 40$  MC keeps decreasing because of specialisation. However, after  $Q = 40$  the benefits are gone.

The point when  $MC$  crosses  $AVC$  is the point when  $AVC$  hits its lowest point. This is because, initially  $MC = AVC$  when  $Q$  is very close to zero. After that,  $MC$  becomes lower than  $AVC$  due to specialisation (the next unit will cost less than the previous one and certainly less than the average). After, while  $MC$  is lower than  $AVC$ , adding an additional unit of cost would still be lower than the average. This would pull the mean down, since adding something lower than the mean to the set would decrease the mean. Thus,  $AVC$  decreases.

However, at the point they become equal, adding an extra unit would cost more than the previous mean (before an extra unit). This would pull the mean up, since adding something greater than the mean to the set would increase the mean. Thus,  $AVC$  now increases.

As such,  $MC$  would intersect  $AVC$  at its lowest point. As with the production function, the factory would benefit the most if it found and produced at this "sweet spot".

If you compare the shape of  $AVC, MC$  and  $AP, MP$  you will see that they have exactly the same shape, just reversed:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/28a30a542b036f9827d65fb389fb1bef025b7f96502f5b3b7f68816c0fea8a93.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/aebd6ec7d8fa5d71de2eb98f3c0850a7333ae653b3e2452b3f35557ee1e1a67f.jpg)

This is another useful property in cost theory. You can explore how the graphs behave on your own further.

Let's also look at  $ATC$  vs  $AVC$ :

$$
\text {i f} T C = 0. 0 0 5 Q ^ {3} - 0. 6 Q ^ {2} + 2 5 Q + 5 0 0:
$$

$$
A T C = 0. 0 0 5 Q ^ {2} - 0. 6 Q + 2 5 + \frac {5 0 0}{Q}
$$

$$
A V C = 0. 0 0 5 Q ^ {2} - 0. 6 Q + 2 5
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/e63280f07302f73827be56afcd2dc7bc7bc22a834e2c46c15e679bec926ceedd.jpg)

As you can see, for low values of  $Q$  the difference between  $AVC$  and  $ATC$  is large. However, as  $Q$  increases, the difference becomes smaller and almost negligible for large values.

This is because

$$
A T C (Q) = A V C (Q) + A F C (Q)
$$

and as we've seen before,  $AFC(Q)$ , as a hyperbola, approaches zero for large values. Thus,  $AVC$  and  $ATC$  become almost identical for large values of  $Q$ .

# 4.3.4 Monopoly Diagram

Finally, let's look at the monopoly diagram.

In a monopoly, the firm is the only one operating in the market, so it can choose either price or output.

We've already looked at the standard  $ATC$ ,  $AVC$  and  $MC$  functions.

Let's look at the demand and marginal revenue (marginal revenue shows the revenue gained from producing an extra unit of the good,  $MR = \frac{d}{dQ}(TR)$ ).

As we remember from part 1, demand is usually a linear function:

$$
Q = a - b P
$$

or

$$
P = a - b Q
$$

Let's take  $P = 40 - 2Q$  as an example.

If total revenue  $(TR) =$  price \* quantity sold, then:

$$
T R = P Q
$$

or

$$
T R = (4 0 - 2 Q) Q = 4 0 Q - 2 Q ^ {2}
$$

By differentiating:

$$
M R = 4 0 - 4 Q
$$

Which is twice as steep as the demand function.

By plotting demand,  $MR$ ,  $ATC$ ,  $MC$  on the same diagram (let's change FC from 500 to 10 and TC to  $\mathrm{TC} = 0.05Q^3 - 0.6Q^2 + 25Q + 10$  (accounting for change in FC)).

Supernormal profit  $MR(Q) = 40 - 4Q$ $P(Q) = 40 - 2Q$ $ATC(Q) = 0.05Q^2 -0.6Q + 25 + \frac{10}{Q} -MC(Q) = 0.15Q^2 -1.2Q + 25$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/3e699076e553641e54ef3e6d459f1bd0448fcb609b429c92295250375f84d15d.jpg)

The optimum quantity for a monopoly firm occurs when  $MR = MC$ . This is because for  $Q:MR > MC$  the monopolist would increase output to increase profit, because an extra unit brings more revenue than it costs. It will do so until  $MR = MC$ . Vice versa, if  $MR < MC$ , the monopolist would decrease output to increase profit, since an extra unit costs more than it brings in revenue. It will do so until  $MR = MC$ .

By solving  $MR = MC$ :

$$
4 0 - 4 Q = 0. 1 5 Q ^ {2} - 1. 2 Q + 2 5
$$

$$
Q ^ {*} = 4. 3 4 (2 d p)
$$

We then find the price from the demand curve, because it's the maximum price consumers are ready to pay for the given  $Q^{*}$ :

$$
P ^ {*} = 4 0 - 2 * 4. 3 4 = 3 1. 3 2 (2 d p)
$$

At  $(Q^{*},P^{*}):(4.34,31.32)$

$$
A T C = 2 5. 6 4 (2 d p)
$$

Thus, the supernormal profit is marked by the red rectangle, where the blue dot is on the demand curve and the red dot is on the ATC.

Numerically, it will be:

$$
\pi = P * Q ^ {*} - A T C * Q ^ {*} = 4. 3 4 (3 1. 3 2 - 2 5. 6 4) = 2 4. 6 5 (2 d p)
$$

This is it for standard cost functions and monopolies.

# 4.4 Minimising costs across factories

Suppose we have two factories and each factory has a certain cost function. Suppose also we have an arbitrary quantity  $Q$  that we want to produce. The question is then how we are going to split production between the two factories so that we can produce the value  $Q$  at the lowest cost. In other words, we want to find such a function  $TC(Q)$  that will show how much it would cost us to produce a certain amount of good  $Q$  if we produce it in the most efficient way. Let's look at the example:

$$
T C: \left\{ \begin{array}{l} T C _ {1} = Q _ {1} ^ {2} \\ T C _ {2} = Q _ {2} \end{array} \right.
$$

$$
T C (Q) =?
$$

, where  $Q_{1}$  and  $Q_{2}$  are quantities produced at each factory.

Again, there are two main methods: the brute-force one and the marginal one.

# 4.4.1 Method 1: Brute Force

Since we have only two factories to produce and an overall quantity  $Q$ , we can deduce that:

$$
Q = Q _ {1} + Q _ {2}
$$

and

$$
T C = T C _ {1} (Q _ {1}) + T C _ {2} (Q _ {2}) = Q _ {1} ^ {2} + Q _ {2}
$$

Let's then treat  $Q$  as a parameter and  $Q_{1}$  and  $Q_{2}$  as variables and try to minimise our total cost based on that. The idea is simple: express  $Q_{1}$  or  $Q_{2}$  as a function of  $Q$  (where  $Q$  is a parameter) and the other variable, and then minimise (because we want to produce for the lowest cost) a function of one variable with a parameter, as we did before.

As we can see, we can express both  $Q_{1}$  in terms of  $Q_{2}$  and vice versa. However, since in  $TC = Q_{1}^{2} + Q_{2}Q_{2}$  is to the power of one, while  $Q_{1}$  is to the power of two, it will be easier to substitute  $Q_{2}$  as a function of  $Q_{1}$ :

$$
Q _ {2} = Q - Q _ {1}
$$

$$
T C = Q _ {1} ^ {2} + Q - Q _ {1} = Q _ {1} ^ {2} - Q _ {1} + Q \rightarrow m i n
$$

As we can see, this is a parabola in terms of  $Q_{1}$  that opens up. Thus, it has the minimum at the vertex.

Using the formula, we can deduce that:

$$
Q _ {1} ^ {*} = \frac {- - 1}{2 * 1} = \frac {1}{2}
$$

As such:

$$
Q _ {2} = Q - \frac {1}{2}
$$

But we must not forget that  $Q_{1} \geq 0$  and  $Q_{2} \geq 0$ .

Thus, when  $Q \leq \frac{1}{2} Q_{2} = 0$  (since when the optimum solution does not fit into the limit, we take the closest value that fits into the limit).

As a result:

$$
Q _ {2} ^ {*} = \left\{ \begin{array}{l} 0, Q \leq \frac {1}{2} \\ Q - \frac {1}{2}, Q > \frac {1}{2} \end{array} \right.
$$

$$
Q _ {1} ^ {*} = \left\{ \begin{array}{l} Q, Q \leq \frac {1}{2} \\ \frac {1}{2}, Q > \frac {1}{2} \end{array} \right.
$$

Combining those two together:

$$
T C (Q) = \left\{ \begin{array}{l} Q ^ {2}, Q \leq \frac {1}{2} \\ \frac {1}{4} + Q - \frac {1}{2} = Q - \frac {1}{4}, Q > \frac {1}{2} \end{array} \right.
$$

Note that a good way to check whether you've done something wrong with finding an overall TC function (although one which doesn't guarantee that you found an optimum) is to check the values of  $\mathrm{TC(Q)}$  at the boundary points:

Here, the boundary point is  $Q = \frac{1}{2}$ . Thus, at  $Q = \frac{1}{2}$ :

$$
T C = \left\{ \begin{array}{l} (\frac {1}{2}) ^ {2} = \frac {1}{4} \\ \frac {1}{2} - \frac {1}{4} = \frac {1}{4} \end{array} \right.
$$

This is a necessary but insufficient condition for checking whether your solution is correct.

# 4.4.2 Method 2: MC

Let's try to solve the same problem using MC:

$$
T C: \left\{ \begin{array}{l} T C _ {1} = Q _ {1} ^ {2} \\ T C _ {2} = Q _ {2} \end{array} \right.
$$

$$
T C (Q) =?
$$

Let's find  $MC_{1}$  and  $MC_{2}$  and look at them on the same graph (by treating  $Q_{1}, Q_{2}$  as a single variable (for now)):

$$
M C _ {1} = \frac {d}{d Q _ {1}} (T C _ {1}) = 2 Q _ {1}
$$

$$
M C _ {2} = \frac {d}{d Q _ {2}} (T C _ {2}) = 1
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/a3507724a26b16240ba79b80b1cb3c410ef5e2f934838c4d6de7aa542ed1045f.jpg)

As you can clearly see, before  $Q = 0.5$ , the MC of producing an extra unit of the good is smaller for the first factory. However, when  $Q$  reaches 0.5, an extra unit of the good becomes less expensive to produce at the second factory. As a consequence, for every quantity below  $Q = 0.5$ , we would use only the first factory to produce, while  $Q_{2}$  will remain zero. However, for every quantity above  $Q = 0.5$ , we would only produce at the first factory  $Q_{1} = 0.5$  and then swap over to the second factory to produce the rest. As such, we get a similar result to the first method:

$$
Q _ {1} ^ {*} = \left\{ \begin{array}{l} Q, Q \leq \frac {1}{2} \\ \frac {1}{2}, Q > \frac {1}{2} \end{array} \right.
$$

$$
Q _ {2} ^ {*} = \left\{ \begin{array}{l} 0, Q \leq \frac {1}{2} \\ Q - \frac {1}{2}, Q > \frac {1}{2} \end{array} \right.
$$

So, we would get the same answer:

$$
T C (Q) = \left\{ \begin{array}{l} Q ^ {2}, Q \leq \frac {1}{2} \\ \frac {1}{4} + Q - \frac {1}{2} = Q - \frac {1}{4}, Q > \frac {1}{2} \end{array} \right.
$$

# 4.4.3 Hard Problems

# Hard Problem 1

Using the marginal cost to find the optimal production split might be slightly less obvious if both  $MC_{1}$  and  $MC_{2}$  become non-linear. Let's look at an example:

$$
T C: \left\{ \begin{array}{l} T C _ {1} = 2 Q _ {1} ^ {2} \\ T C _ {2} = Q _ {2} ^ {2} + Q _ {2} \end{array} \right.
$$

then:

$$
T C = 2 Q _ {1} ^ {2} + Q _ {2} ^ {2} + Q _ {2}
$$

Let's first find MC:

$$
M C: \left\{ \begin{array}{l} M C _ {1} = 4 Q _ {1} \\ M C _ {2} = 2 Q _ {2} + 1 \end{array} \right.
$$

Now, let's use the same method we've used previously:

Suppose that for some distribution between  $Q_{1}$  and  $Q_{2}$ $MC_{1} < MC_{2}$ . Then, since we want to produce as cheaply as possible, it will be beneficial for us to produce more at the first factory and less at the second one ( $Q_{1}$  increases while  $Q_{2}$  decreases). As a result,  $MC_{1}$  increases, while  $MC_{2}$  decreases, until the moment when  $MC_{1} = MC_{2}$ .

Similarly, if  $MC_{1} > MC_{2}$ , we increase  $Q_{2}$  and decrease  $Q_{1}$ , until  $MC_{1} = MC_{2}$ .

As a result, in the optimum the MCs will converge, meaning:

$$
M C _ {1} = M C _ {2}
$$

so:

$$
4 Q _ {1} = 2 Q _ {2} + 1
$$

or

$$
Q _ {1} = \frac {2 Q _ {2} + 1}{4}
$$

As we remembered previously:

$$
Q _ {1} + Q _ {2} = Q
$$

so:

$$
\frac {2 Q _ {2} + 1}{4} + Q _ {2} = Q
$$

$$
2 Q _ {2} + 1 + 4 Q _ {2} = 4 Q
$$

as such:

$$
Q _ {2} ^ {*} = \frac {4 Q - 1}{6}
$$

Note that for  $Q < 0.25$ $Q_{2}$  becomes less than zero, which does not fit our assumption of  $Q_{2} \geq 0$ . As a consequence, for  $Q < 0.25$ $Q_{2} = 0$  and  $Q_{1} = Q$ .

You could actually see that  $Q_{2} = 0$  for  $Q < 0.25$  even without equalising MC. Note that

$$
M C _ {2} = 2 Q _ {2} + 1
$$

, while

$$
M C _ {1} = 4 Q _ {1}
$$

As you can see, the moment you start producing anything at the second factory, you will get  $MC > 1$ , because for  $Q_{2} \geq 0$ $MC_{2} \geq 1$ . As such, until  $MC_{1}$  reaches  $MC_{1} = 1$  (which happens when  $4Q_{1} = 1$ , so  $Q_{1} = 0.25$ ), we will not produce anything at the second factory.

Back to our problem. Our optimal solution for  $Q > 0.25$  is:

$$
Q _ {1} = \frac {2 (\frac {4 Q - 1}{6}) + 1}{4}
$$

$$
Q _ {1} = \frac {\frac {4 Q}{3} - \frac {1}{3} + 1}{4}
$$

$$
Q _ {1} = \frac {2 Q + 1}{6}
$$

as such:

$$
Q _ {1} ^ {*} = \left\{ \begin{array}{l} Q, Q \leq 0. 2 5 \\ \frac {2 Q + 1}{6}, Q > 0. 2 5 \end{array} \right.
$$

$$
Q _ {2} ^ {*} = \left\{ \begin{array}{l} 0, Q \leq 0. 2 5 \\ \frac {4 Q - 1}{6}, Q > 0. 2 5 \end{array} \right.
$$

by substituting this into the TC function we get:

$$
T C = 2 Q _ {1} ^ {2} + Q _ {2} ^ {2} + Q _ {2}
$$

$$
T C = \left\{ \begin{array}{l} 2 Q ^ {2}, Q \leq 0. 2 5 \\ 2 (\frac {2 Q + 1}{6}) ^ {2} + (\frac {4 Q - 1}{6}) ^ {2} + \frac {4 Q - 1}{6}, Q > 0. 2 5 \end{array} \right.
$$

or by simplifying:

$$
T C = \left\{ \begin{array}{l} 2 Q ^ {2}, Q \leq 0. 2 5 \\ \frac {8 Q ^ {2} + 8 Q - 1}{1 2}, Q > 0. 2 5 \end{array} \right.
$$

Let's check that TC matches at the boundary point:

$$
T C = \left\{ \begin{array}{l l} 2 * (\frac {1}{4}) ^ {2} = \frac {1}{8} \\ \frac {8 * (\frac {1}{4}) ^ {2} + 8 * \frac {1}{4} - 1}{1 2} = \frac {\frac {3}{2}}{1 2} = \frac {3}{2 4} = \frac {1}{8} \end{array} \right.
$$

$TC$  matching is a good sign, so we probably did everything right:)

If, on the other hand,  $MC_{1}$  and  $MC_{2}$  diverge, we would look at where it is cheapest to produce using only one factory. For instance:

$$
T C: \left\{ \begin{array}{l} T C _ {1} = \sqrt {Q _ {1}} \\ T C _ {2} = Q _ {2} \end{array} \right.
$$

If we find MC:

$$
M C: \left\{ \begin{array}{l} M C _ {1} = \frac {1}{2 \sqrt {Q _ {1}}} \\ M C _ {2} = 1 \end{array} \right.
$$

If  $MC_{1} > MC_{2}$  it is beneficial to increase  $Q_{2}$  and decrease  $Q_{1}$ . Thus,  $MC_{1}$  will increase while  $MC_{2}$  will remain constant, meaning no convergence will happen. Vice versa, if  $MC_{1} < MC_{2}$  and we increase  $Q_{1}$  and decrease  $Q_{2}$ , convergence will not happen because  $MC_{1}$  will decrease even further. Thus, we would always produce using one factory only. The options are:

$$
T C = \sqrt {Q}
$$

and

$$
T C = Q
$$

By solving  $Q \leq \sqrt{Q} \Rightarrow 0 \leq Q \leq 1$ :

$$
T C = \left\{ \begin{array}{l} Q, Q \leq 1 \\ \sqrt {Q}, Q > 1 \end{array} \right.
$$

As you can clearly see, TC matches at the boundary point.

# Hard Problem 2

Let's imagine the following TC function:

$$
T C: \left\{ \begin{array}{l} T C _ {1} = Q _ {1} ^ {2} \\ T C _ {2} = Q _ {2} + 3 6 \end{array} \right.
$$

Let's try to solve it using the MC method:

$$
M C: \left\{ \begin{array}{l} M C _ {1} = 2 Q _ {1} \\ M C _ {2} = 1 \end{array} \right.
$$

By equalising we can see that we don't want to start using the second one until  $Q = 0.5$ . So:

$$
Q _ {1} = \left\{ \begin{array}{l} Q, Q \leq 0. 5 \\ \frac {1}{2}, Q > 0. 5 \end{array} \right.
$$

and

$$
Q _ {2} = \left\{ \begin{array}{l} 0, Q \leq 0. 5 \\ Q - \frac {1}{2}, Q > 0. 5 \end{array} \right.
$$

And... this is wrong.

As we noted at the beginning of the book, economists make decisions at the margin, meaning what matters is how much it costs to produce the next unit. However, by just looking at the MC functions we can't always make the right decision.

If you look closely enough, you can see that:

$$
T C _ {2} = Q _ {2} + 3 6
$$

When we differentiate  $TC_2$ , the constant  $FC = 36$  (fixed costs) disappears. However, this means that when we start producing anything using the second factory, we need to pay an extra  $FC = 36$ .

In practice, this is called Quasi-Fixed costs. These are the costs that are, unlike the fixed costs, not paid immediately to start the business, but arise during business activity.

As in this case, if the company has two factories and uses only one of them, the second one will be left unused. When we then want to start producing using the second factory, perhaps it might require reconstruction, or renewing the machinery. It might even mean that the company has only one factory and to use the second one it might need to rent it out or buy it.

As such, this means that for it to be beneficial for us to produce at the second factory, the benefit should cover not only the difference in marginal cost, but also the difference in  $FC = 36$ .

We can illustrate it using the graph:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/24c7509679389abd0fddb6a5df2309e9afdfb232bb5d5056cb67d27c9cd301f8.jpg)

We denote the quasi-fixed costs as a vertical line at the point they appear  $(Q = \frac{1}{2})$ . As you may remember from Mechanics, the area below the graph of the derivative equals the change in the original function. As such, for it to be more beneficial to start using the second factory, the area bounded by MC=2Q and MC=1 (blue triangle) should be equal to 36 (because it represents the difference between TC at the first and second factories).

We can represent the horizontal side of the blue triangle as  $\mathbf{x}$ , and the vertical one as  $2\mathbf{x}$  (because  $MC = 2Q$ ).

The area of this triangle will then be:

$$
A = \frac {1}{2} * x * 2 x = x ^ {2} = 3 6
$$

which leads to:

$$
x = 6
$$

or

$$
Q = 6. 5
$$

As such, before  $Q = 6.5$  we would still use only the first factory to produce, while after that we would produce  $Q = \frac{1}{2}$  using the first factory and  $Q - \frac{1}{2}$  using the second one:

$$
Q _ {1} ^ {*} = \left\{ \begin{array}{l} Q, Q \leq 6. 5 \\ \frac {1}{2}, Q > 6. 5 \end{array} \right.
$$

$$
Q _ {2} ^ {*} = \left\{ \begin{array}{l} 0, Q \leq 6. 5 \\ Q - \frac {1}{2}, Q > 6. 5 \end{array} \right.
$$

Let's check whether TC matches at the boundary point:

$$
T C = \left\{ \begin{array}{l} 6. 5 ^ {2} = 4 2. 2 5 \\ 6. 5 + 3 5. 7 5 = 4 2. 2 5 \end{array} \right.
$$

Which again is a good sign that we did everything right.

Note that after we surpass  $Q = 6.5$  it doesn't mean that only at that moment we start to use the second factory, meaning  $Q_{2} = Q - 6.5$ .  $Q = 6.5$  is the moment when the loss from not producing on the second one (with the lower MC) becomes larger than the loss from starting to produce at the second factory ( $FC = 36$ ). At this moment it is beneficial to bear the loss and keep going with the second factory.

$$
T C = \left\{ \begin{array}{l} Q ^ {2}, Q \leq 6. 5 \\ \frac {1}{4} + Q - \frac {1}{2} + 3 6 = Q + 3 5. 7 5, Q > 6. 5 \end{array} \right.
$$

# 4.4.4 Deriving Supply Function

We previously derived the demand function in consumer theory. Now, let's do the same for supply. The supply function by definition is the function  $Q(P)$  or  $P(Q)$ , giving the quantity that a firm is willing and able to supply.

The firm's main objective is to maximise profit (unless otherwise stated). As we noted in the "monopoly diagram" section, the profit is:

$$
\pi = T R - T C
$$

, where TR is total revenue, and TC is total cost.

We also noted that:

$$
T R = P Q
$$

, while  $\mathrm{TC}(\mathrm{Q})$  is the cost function which we were looking at before.

To find the supply function, we need to maximise the profit as a function of  $Q$ , treating  $P$  as a parameter:

$$
\pi = T R - T C = P Q - T C (Q) \rightarrow m a x
$$

Let's take the following  $TC(Q)$  function:

$$
T C (Q) = \left\{ \begin{array}{l} Q ^ {2} + Q, Q \leq 4 \\ Q ^ {2} + 4, Q > 4 \end{array} \right.
$$

Thus:

$$
\pi = \left\{ \begin{array}{l} P Q - Q ^ {2} - Q, Q \leq 4 \\ P Q - Q ^ {2} - 4, Q > 4 \end{array} \right.
$$

For  $Q \leq 4$ :  $\pi = PQ - Q - Q^2 = Q(P - 1) - Q^2$  is a parabola that opens down. Thus, it has a maximum at its vertex:

$$
Q ^ {*} = \frac {- (P - 1)}{2 * (- 1)} = \frac {P - 1}{2}
$$

That means that a firm would supply any quantity for at least  $P = 1$ , and for  $P < 1$ $Q^{*} = 0$ . Thus, for  $Q \leq 4$ :

$$
Q ^ {*} = \left\{ \begin{array}{l} \frac {P - 1}{2}, P > 1 \\ 0, P \leq 1 \end{array} \right.
$$

For  $Q \leq 4$  to be true:

$$
\begin{array}{l} \frac {P - 1}{2} \leq 4 \\ P \leq 9 \\ \end{array}
$$

For  $Q > 4$ :  $\pi = PQ - Q^2 - 4$  is again a parabola that opens down with a maximum at its vertex:

$$
Q ^ {*} = \frac {- P}{- 2 * 1} = \frac {P}{2}
$$

For  $Q > 4$

$$
\begin{array}{l} \frac {P}{2} > 4 \\ P > 8 \\ \end{array}
$$

Thus, we have the question of what to do for  $P \in (8,9)$ , because we have two different  $Q^*$  on this interval.

To tackle this, we need to find what brings a higher profit: if  $Q^{*} = \frac{P - 1}{2}$ :

$$
\pi = P \left(\frac {P - 1}{2}\right) - \left(\frac {P - 1}{2}\right) ^ {2} - \frac {P - 1}{2} = \frac {(P - 1) ^ {2}}{4}
$$

if  $Q^{*} = \frac{P}{2}$ :

$$
\pi = P * \frac {P}{2} - (\frac {P}{2}) ^ {2} - 4 = \frac {P ^ {2} - 1 6}{4}
$$

Now we set:

$$
\frac {(P - 1) ^ {2}}{4} \geq \frac {P ^ {2} - 1 6}{4}
$$

which is true for  $P\leq 8.5$

Thus:

$$
Q ^ {*} = \left\{ \begin{array}{l} 0, P \leq 1 \\ \frac {P - 1}{2}, 1 \leq P \leq 8. 5 \\ \frac {P}{2}, P > 8. 5 \end{array} \right.
$$

which is our final supply function.

This is it for the theory of the firm.

# Part III

# PPF

For those of you who studied Economics at A-Level, PPF will ring a bell. However, there is a lot of beautiful Maths of optimisation behind the PPF which is not covered at school.

Let's start from scratch.

# 5 Maths Behind PPF

To understand what PPF is, imagine that you have a field where you produce carrots and potatoes. In that case, if you want to increase your production of carrots, you will have to produce fewer potatoes, since the space is limited. And vice versa. Now plot all your possible pairs of carrots and potatoes as a graph, which will be your PPF, as shown below:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/c479e8ba294dd59b95c5769440ee5378fc58042d3434bdf89b036e12d05a99d5.jpg)

A more formal definition:

The PPF on axes  $(X,Y)$  is a curve (or a straight line) which denotes all the possible pairs of goods  $X$  and  $Y$  which can be produced with optimal use of given input resources.

The PPF  $C = 40 - P$ , examined before, thus shows that a farmer can produce all the pairs of carrots and potatoes which lie on the curve  $C = 40 - P$  if they use their resources in the most efficient way.

Here are three observations we can make about this particular PPF which also work for other PPFs:

1. Observation 1: Area A, representing the area under the curve, denotes the whole production possibility set while a PPF is the upper envelope of this area. Yet all the points below the PPF line indicate inefficient or not maximal use of resources. For instance, the farmer can produce the pair (19, 19), yet it would not be efficient since they are also capable of producing the pair (20, 20).  
2. Observation 2: The PPF is a decreasing function. Although in economic theory we can theoretically imagine a PPF being an increasing function, it is very rare and usually contradicts the key economic concept of trade-off. The trade-off is the idea that since production requires input resources, which are inevitably finite, if we want to increase the output of  $X$ , we will have to transfer resources from  $Y$  to  $X$  (if the resources are used in the most efficient way), thus decreasing the amount of good  $Y$ .

3. Observation 3: The PPF is usually examined only for the first quadrant, where  $X, Y \geq 0$ . This is common sense, since we cannot produce a negative quantity of goods. As such, even though a PPF can be a function defined for  $x \in \mathbb{R}$ , such as  $y = 5 - x$ , we will be interested only in the first quadrant.

# 5.0.1 Opportunity costs of linear PPF

Opportunity cost of  $X$  over  $Y$  is the amount of  $Y$  which will be forgone if we want to produce an additional amount of  $X$ .

In the previous example, the opportunity costs of potatoes over carrots were constant and equal to 1. This is because our possible pairs are  $(40,0)$ ,  $(39,1)$ , etc. Vice versa, the opportunity costs of carrots over potatoes were also equal to 1.

For a straight line, the opportunity cost of good  $X$  over good  $Y$  equals the absolute value of the gradient of that line. This is because in Maths the gradient equals the change of  $Y$  over the change of  $X$ , yet since in Economics we established a concept of trade-off, we know that by increasing  $X$  we would lose  $Y$ , so the slope will be negative. However, since OC is an amount of  $Y$  lost with an increase in  $X$ , it should be positive.

For example, for PPF  $Y = 50 - 2X$ ,  $OC_{X} = 2$ . Also, for a straight line, it is true that:

$$
O C _ {Y} = \frac {1}{O C _ {X}}.
$$

This is because, since for a straight line:

$$
Y = a - b X, \quad \mathrm {w i t h} O C _ {X} = b,
$$

and

$$
X = \frac {a}{b} - \frac {1}{b} Y.
$$

For PPF  $Y = 50 - 2X$ , the opportunity cost of  $Y$  equals  $\frac{1}{2}$ . This is also intuitive: if we can produce a pair (10,30), in one direction we can go to (9,32) with  $OC_{X} = 2$ , or in the other direction to (31,9.5) with  $OC_{Y} = \frac{1}{2}$ .

# 5.0.2 Summation of linear PPFs

Imagine now a farm has two fields, i.e., two PPFs. They are:

$$
Y _ {1} = 4 0 - X _ {1} \quad \mathrm {a n d} \quad Y _ {2} = 5 0 - 2 X _ {2}.
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/860ef4dd3562094328dd34a7af23c36da8bc0ee090ab3bb3ea22d402e94fb751.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/302595d3ee19674595425bf9cf567c3cbeb063355e4a379f41228bb619ce33d6.jpg)

The maximum  $X$  which can be produced on field one is 40 (denoted  $x_{1_{\max}}$ ) and 25 on the second field (denoted  $x_{2_{\max}}$ ). So, the maximum  $X$  is:

$$
x _ {\mathrm {m a x}} = x _ {1 _ {\mathrm {m a x}}} + x _ {2 _ {\mathrm {m a x}}}.
$$

To sum up two PPFs means to find a function, representing some combination of two PPFs, which denotes an optimum production of each combination of  $X$  and  $Y$ . In simpler terms, if we want to produce some given number of potatoes within [0, 65], what is the maximum number of carrots we can produce alongside this number of potatoes (if potatoes = 0, maximum carrots = 90; if potatoes = 65, maximum carrots = 0; etc).

For the general case, we want to find such a function for which for each  $X$  the corresponding  $Y$  is maximum. Mathematically, we want to find  $Y(x)$  so that:

$$
\forall x _ {i} \in [ 0, x _ {\max } ]: \quad Y (x _ {i}) \rightarrow \max .
$$

If we think about this definition, to achieve that result we want to produce each next bit of  $X$  with the lowest possible opportunity cost (OC). As such, to sum up two PPFs means to find a function for which each  $x$  is produced with the lowest OC, or with the lowest absolute gradient.

Let's now sum these two PPFs.

As mentioned before, we can produce a maximum of 90 carrots if we use both fields for production of carrots. Similarly, we would be capable of producing a maximum of 65 potatoes.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/2d45cc433d477b399067c3ddebb54db6362c4ee60f97505d4efb9b604fd64427.jpg)

But what if, from point (0, 90), we want to produce an additional potato?

We can produce it either on field one or on field two. Producing it on field one would decrease the number of carrots to 89, yet on the second field this would decrease to 88. Hence, it is more beneficial to produce it on the first field. This explains the concept behind PPF summation: produce on the field with the lowest OC until it is fully utilised, and then switch to the field with the second-lowest OC.

Hence, in our case it would look like this:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/9deb447d0f86544fa65a65571b0ac9bb723bd81c6b884f58e3066c1aad6d903f.jpg)

But how do we determine point A where the first part of the final PPF meets the second, and what is the final equation of the PPF?

If we think about it carefully, the first part of the PPF is the line

$$
Y = 4 0 - X
$$

translated by the vector  $(0,50)$ . From point  $(0,90)$  we can produce 40 units on the first PPF with  $OC_{p} = 1$ , hence, the first segment of the PPF is the line:

$$
Y = 4 0 - X + 5 0,
$$

or

$$
Y = 9 0 - X,
$$

which goes to point A (40, 50).

Similarly, the second segment of the final PPF is the line:

$$
Y = 5 0 - 2 X,
$$

translated by the vector  $(40,0)$ . Hence, it becomes:

$$
Y = 5 0 - 2 (X - 4 0) = 1 3 0 - 2 X,
$$

valid for  $X\in [40,65]$

Thus, the final PPF is:

$$
Y (x) = \left\{ \begin{array}{l l} 9 0 - X, & 0 \leq X \leq 4 0, \\ 1 3 0 - 2 X, & 4 0 <   X \leq 6 5. \end{array} \right.
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/164d96d6f0c9cab539248ce09ed0c14a4816471e137d88336abe957d5082eb7c.jpg)

Note that point (40, 50) is included in the first segment, but it makes no difference since  $Y(40)$  is the same in both segments.

In fact, with this method we can sum up infinitely many straight-line PPFs. For instance, if we sum up infinitely many PPFs with slopes ranging over  $(0,\infty)$  and the intervals  $h$  of  $X$  (with  $h\to 0$ ), we would get a PPF which is a quarter of a circle with centre  $(0,0)$ . Such a PPF might look like:

$$
Y = \sqrt {a - X ^ {2}},
$$

for non-negative  $X$  and  $Y$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/5a5dae7ae61ce832353beaf749acb1d565fc707c78b61d9a8207a96a341b1fe7.jpg)

It is quite easy to work with linear PPFs, yet working with PPFs like the circular ones, and especially summing them up, is more challenging and sometimes requires different methods. The remaining part of the analysis will describe what non-linear PPFs are and the rules for a function to be a PPF. A further description of non-linear PPF summation will be provided in later stages.

# 5.0.3 Non-linear PPF Introduction

A non-linear PPF is a PPF for which the slope (i.e.,  $OC_{x}$ ) is not constant. For instance, for a PPF

$$
Y = 3 0 - X ^ {2},
$$

the derivative is  $-2X$ , so as mentioned earlier,  $OC_{x} = 2X$ .

Thus, for any PPF:

$$
O C _ {x} = \left| \frac {d y}{d x} \right|,
$$

where  $|f(x)|$  denotes the absolute value. (This is the same result we get for a linear PPF, since for  $Y = 40 - X$ , we have  $\left|\frac{dy}{dx}\right| = 1$ .) However, because we assume that a PPF has a negative derivative, we can write:

$$
O C _ {x} = - \frac {d y}{d x}.
$$

It is important to note that we denote by  $x_{1}$  and  $x_{2}$  the amounts of good  $X$  produced on PPF1 and PPF2 respectively.

# 5.0.4 Rules for the Function to be a PPF

Now, having looked at both linear and non-linear PPFs, we establish some rules for a function to be a PPF.

# A function should:

- Have at least one positive root (so that  $[0, x_{\max}]$  can be determined).

Example:  $y = \frac{1}{x}$  does not suit;  $y = 1 - x$  does.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/a8d3d97d6bae30f49787527888be19b02b7ff32c197bbff8795ff59f6482329d.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/1dbbb186da61b1a8f70129b62480096cc61e99b6d3c68cecd5c7da3b246b7b54.jpg)

For the interval  $[0, x_{\max}]$ :

- Be continuous.

Example:  $y = \frac{1}{x}$  does not suit (not defined for  $x = 0$ );  $y = 1 - x$  does.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/81510b57a561dcb0d79fe0141f33393d28601010d1f16353c7773225bfb3075a.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/54cc0d72ee18dd114f24bea08f1daa9e20ac5fa3fb8b66f73f6ffccbfad01814.jpg)

- Be non-negative.

Example:  $y = x - 5$  does not suit;  $y = 5 - x$  does.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/7a2623a12f89d2aa9b1a71d528e554bbfde55d59db7c29e4ab06e0d6a3a183b1.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/dee26ce6e15f224370783e9d367ad283c80403df863e9cfcfd2609ad32a12b19.jpg)

- 4. Be non-increasing. In other words, having non-negative derivative sign (but since the function is decreasing, it can be equal to one only at  $x = 0$  or  $x = x_{\max}$ ).

Example:  $y = 5 - x^2$  does suit;  $y = \sqrt{x}$  does not.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/7348dd287e8b3df107f9e23147d0f78a1d07e6b5f518ba6150d9d16a70a50b66.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/5acb67acacd2f8eb661c3caf4a2dffd84ab4f1e301813d1c666e82dda08cfc6a.jpg)

- Have constant concavity.

Example:  $y = 1 - \sqrt{x}$  does suit;  $y = 1 - (x - 1)^3$  does not.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/d3fb551e126ea988072e7bee710661f05c4f018ff8553215daa1b4d15128c59b.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/607ca55ab7f570c668070c4322787bff992db53af41f57dc70bd0c1bf2c249b7.jpg)

Note: Constant concavity simplifies calculations.

# 5.1 Summation of Non-Linear PPFs

# 5.1.1 Increasing OC

First of all, we need to distinguish between increasing and decreasing OC (note that OC is the negative of the derivative). For increasing OC, the PPF is concave, while for decreasing OC the PPF is convex.

It is easy to sum up two non-linear concave PPFs, but harder to do it with one or two convex PPFs.

First, let's look at when both functions are concave:

Let

$$
Y _ {1} = 4 - x _ {1} ^ {2}, \quad x _ {1} \leq 2,
$$

$$
Y _ {2} = 2 - \frac {x _ {2} ^ {2}}{8}, \quad x _ {2} \leq 4,
$$

then:

$$
O C _ {1} = 2 x _ {1}, \quad O C _ {2} = 0. 2 5 x _ {2}.
$$

Suppose at some point we have produced some  $x_{1}, x_{2}$  on both fields such that  $OC_{1} < OC_{2}$ . Thus, it will be beneficial for us to increase  $x_{1}$  and decrease  $x_{2}$  (because the aim is to produce with the lowest OC possible). As a result, since  $OC_{1}$  is an increasing function,  $OC_{1}$  will increase, while  $OC_{2}$  will decrease until  $OC_{1} = OC_{2}$ .

Suppose otherwise  $OC_{1} > OC_{2}$ . Thus, it will be beneficial for us to increase  $x_{2}$  and decrease  $x_{1}$ . As a result, since  $OC_{2}$  is an increasing function,  $OC_{2}$  will increase, while  $OC_{1}$  will decrease until  $OC_{1} = OC_{2}$ . As such, the optimum will be at  $OC_{1} = OC_{2}$ .

As a consequence, setting  $2x_{1} = 0.25x_{2}$  gives  $x_{1} = 0.125x_{2}$ .

$$
x = x _ {1} + x _ {2}
$$

thus:

$$
x = 0. 1 2 5 x _ {2} + x _ {2} = \frac {9}{8} x _ {2}
$$

as such:

$$
x _ {2} = \frac {8}{9} x
$$

and

$$
x _ {1} = \frac {1}{8} * \frac {8}{9} x = \frac {x}{9}
$$

$$
Y = 4 - x _ {1} ^ {2} + 2 - \frac {x _ {2} ^ {2}}{8} = 6 - (\frac {x}{9}) ^ {2} - \frac {(\frac {8}{9} x) ^ {2}}{8} = 6 - \frac {x ^ {2}}{9}
$$

Since  $x_{1} \leq 2$  and  $x_{2} \leq 4$ , we should look at when our boundaries break. Clearly, since  $x_{1} = \frac{1}{9} x$  and  $x_{2} = \frac{8x}{9}$  ( $x_{2}$  grows 8 times as fast as  $x_{1}$ ), while  $\max(x_{1})$  is only twice as low as  $\max(x_{2})$ ,  $x_{2}$  will be exhausted faster.

As such, when  $x_{2} = 4$ , we have produced 0.5 units of  $x_{1}$ , so the total  $X = 4.5$ . Thus, for  $X \leq 4.5$ , the PPF will be:

$$
Y = 6 - \frac {x ^ {2}}{9}
$$

for  $X > 4.5$  we would produce  $x_{2} = 4$  and  $x_{1} = 0.5$  and then start using only the first PPF until it is fully exhausted, since now  $x_{1} + 4 = x$ :

$$
Y = 4 - (x - 4) ^ {2}.
$$

Thus, the final PPF is:

$$
Y (x) = \left\{ \begin{array}{l l} 6 - \frac {x ^ {2}}{9}, & x \leq 4. 5, \\ 4 - (x - 4) ^ {2}, & 4. 5 <   x \leq 6. \end{array} \right.
$$

# 5.1.2 Using Vectors and Minkowski Addition

To sum two PPFs in this case we are going to use vectors.

Imagine two PPFs:

$$
y = 1 - x
$$

$$
y = 1 - \sqrt {x}
$$

Let's draw them:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/50656684b7de18ad9aa14505c92ba97bcb9130d2936ed8778d1477b01afc3986.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/0e5ba888b1e13f5b1a8a3cbccbe154390b22ccd7ad168681b877cb2b526c2c06.jpg)

Let's consider  $y = 1 - x$  as the "base". We can produce any pair  $(x, y)$  on the base. Also, think of  $y = 1 - \sqrt{x}$  as an area  $A$ , bounded by the  $x-$  and  $y$ -axes and the curve. Let's "fix" this area as a curved polygon (geometric shape).

It means that if we now move this area by 2 to the right, we would still have the same production possibility, yet it will be defined from  $\mathbf{x} = 2$  to  $\mathbf{x} = 3$ . And the same will be true if we move this polygon up or down.

Alternatively, you could think of it in the following way: if we translate this polygon by the vector  $(a,b)$ , then if we can produce  $(x,y) = (a,b)$  using another PPF, that means we can access any point within the new area (moved polygon).

This means that we can move the polygon to any point and still access the production set within this polygon until the new "origin"  $(a, b)$  lies within the base.

Then, let's move this polygon to some point on our base, say,  $(\frac{1}{2}, \frac{1}{2})$ . In other words, translate

it by the vector  $(\frac{1}{2},\frac{1}{2})$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/72dc4412aca428e3aea76d82fea05283b3e40e0456f35512ea5867d2e9fc8a32.jpg)

Then, we know that we could produce any point within this green area. This is because a pair  $(\frac{1}{2}, \frac{1}{2})$  would be produced on a linear PPF, while, as we showed earlier, by moving the polygon we do not change the production possibility. It is also true that if we moved the area to the endpoints of the linear, it would be the combination for which we could produce the maximum  $x = 2$  and  $y = 2$  across both fields:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/66a73b0d14f1197e0069b84cd7871f22eeee0138359bb5b3876c60e04e5adaa0.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/9a1f8cca480334d02153cced398c24080737539efaf0dd22a578a4b2abd817f8.jpg)

The first translation was created by translating by the vector  $(1,0)$ , while the second one was the translation by  $(0,1)$ .

If we think more about it, we can realise that an actual summation of those two PPFs would be an upper envelope of translations of the polygon by each vector defining the base. This is because the latter denotes any possible production on the linear PPF, while the second one denotes any possible production followed by each production on the linear. And the linear envelope would just denote the maximum for each  $x$ . In other words, to sum up those PPFs we could slide the non-linear PPF through the base.

In other words, it will be an upper envelope of translations of the non-linear PPF by a vector  $(a,1 - a)$ , where  $0 < a < 1$ . Let's now think about a PPF  $y = 1 - 2x$  as our base and continue with  $y = 1 - \sqrt{x}$ .

Then, a vector by which we are translating is  $(a, 1 - 2a)$  or  $(a, y(a))$ , where  $y$  is a linear function. Let's denote  $y(a)$  as  $L(a)$ . Also, let's denote the non-linear function as  $\mathrm{N}(\mathbf{x})$ .

Then, our overall PPF will look as follows.

$$
V (x) = \max _ {a \in A (x)} \{L (a) + N (x - a) \},
$$

where  $N(x - a)$  is the translation of the non-linear PPF by  $(a,0)$ ,  $L(a)$  is the translation by  $(0,L(a))$ , and  $A(x)$  denotes the range for  $a$ . This is called Minkowski addition.

Let's think for which  $aV(x)$  holds.

On the one hand,  $0 \leq a \leq \frac{1}{2}$  (because  $x_{\max}$  for  $y = 1 - 2x$  is  $\frac{1}{2}$ ).

Also,  $a \leq x$  (where  $x$  is how much of  $x$  we want to produce across both PPFs), since we cannot produce more on the base than the overall production.

So, the maximum value for  $a$  is either  $\frac{1}{2}$  or  $x$ , depending on which is lower. In other words,  $\min \left(\frac{1}{2}, x\right)$ .

On the other hand,  $0 \leq x - a \leq 1$  (because we could still produce only  $x = 1$  on the non-linear PPF).

From this we get:  $a \geq x - 1$ , but also  $a \geq 0$ .

Then, a minimum possible value of  $a$  will be  $x - 1$  or  $0$ , depending on which is larger. In other words  $\max(0, x - 1)$ .

Then, the boundary for  $a$  is  $A(x)$  as follows.

$$
A (x) = \left\{a: \max  (0, x - 1) \leq a \leq \min  (x, \frac {1}{2}) \right\}
$$

Let's see when those boundaries break.

$$
0 = x - 1 \text {s o} x = 1
$$

And  $x = \frac{1}{2}$

As such, we have 3 regions where we will be maximising  $V(x)$ :

$$
0 \leq x \leq \frac {1}{2}
$$

$$
\frac {1}{2} <   x \leq 1
$$

$$
1 <   x \leq \frac {3}{2}
$$

Region 1,  $0 \leq x \leq \frac{1}{2}$

For this region,  $\max (0,x - 1)$  is 0, while  $\min (x,\frac{1}{2})$  is  $x$ .

Then,

$$
A (x) = \{a: 0 \leq a \leq x \}
$$

And

$$
V (x) = \max  _ {a \in A (x)} \left\{1 - 2 a + 1 - \sqrt {x - a} \right\}
$$

Since the maximisation occurs on a closed interval, the extreme value theorem says a maximum/minimum of  $V(x)$  occurs either at the endpoints or at an interior point (when  $\frac{dy}{dx} = 0$ ). However, since our non-linear function is convex, the interior point actually gives a minimum. As such, for the given functions, we can just check the endpoints for all three regions.

$$
a = 0:
$$

$$
V (x) = 2 - \sqrt {x}
$$

$$
a = x:
$$

$$
V (x) = 2 - 2 x
$$

Then,

$$
2 - 2 x > 2 - \sqrt {x}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/3f18c990ddb3b8429714794af2b55d25a1cf54474338cf6da3738ce1e0dfbbeb.jpg)

As such, the maximum over region 1 is:

$$
V (x) = \left\{ \begin{array}{l l} 2 - 2 x, & 0 \leq x \leq \frac {1}{4} \\ 2 - \sqrt {x}, & \frac {1}{4} <   x \leq \frac {1}{2} \end{array} \right.
$$

Region 2,  $\frac{1}{2} < x \leq 1$

For this region,  $\max (0,x - 1)$  is still 0, while  $\min (x,\frac{1}{2})$  is  $\frac{1}{2}$ .

As such,

$$
a = 0:
$$

$$
V (x) = 2 - \sqrt {x}
$$

$$
a = \frac {1}{2}:
$$

$$
V (x) = 1 - \sqrt {x - \frac {1}{2}}
$$

Then,

$$
2 - \sqrt {x} > 1 - \sqrt {x - \frac {1}{2}}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/c3d60745afc37c758a56baf1725366e83aded7d8bf8b0fc7851e5003e1bd5085.jpg)

As such, for region two,

$$
V (x) = 2 - \sqrt {x}, \quad \frac {1}{2} <   x \leq 1
$$

Region 3,  $1 < x \leq \frac{3}{2}$

For this region,  $\max (0,x - 1)$  is  $x - 1$ , while  $\min (x,\frac{1}{2})$  is  $\frac{1}{2}$ .

$$
a = x - 1:
$$

$$
V (x) = 3 - 2 x
$$

$$
a = \frac {1}{2}:
$$

$$
V (x) = 1 - \sqrt {x - \frac {1}{2}}
$$

Then,

$$
3 - 2 x > 1 - \sqrt {x - \frac {1}{2}}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/f1c5e64e-4746-468f-9197-552ab4bd1c5e/6f509a450c3497ce45cdad73e7ecc90e5b5925c26276e34d817bd355df11a170.jpg)

As such,

$$
V (x) = 3 - 2 x, \quad 1 <   x \leq \frac {3}{2}
$$

By combining the three regions, the overall sum is:

$$
y = \left\{ \begin{array}{l l} 2 - 2 x, & 0 \leq x \leq \frac {1}{4} \\ 2 - \sqrt {x}, & \frac {1}{4} <   x \leq 1 \\ 3 - 2 x, & 1 <   x \leq \frac {3}{2} \end{array} \right.
$$

This is the principle of using Minkowski addition to sum two PPFs. Note that in this example we got three regions, but in other cases it could be as few as one or more than three.

This is it for PPFs.

# Part IV

# Game Theory

Finally, in this part we will explore how some of the Game Theory questions that are quite often asked during Oxbridge Economics interviews can be solved.

# 6 Problem 1

# 6.1 Problem

# Foxes and chicken

An island is filled with apple trees and other plants. The only inhabitants are 160 foxes and 1 chicken.

The foxes are smart, logical, and completely aware of their surroundings. They have two food options: apples and chicken.

Foxes are happy to eat apples to survive but would rather eat chicken.

If a fox eats a chicken, it turns into a chicken, and could then be eaten by other foxes.

A fox prefers to eat apples forever than be eaten by another fox (if it turned into a chicken).

Assume that there is never an issue with who gets to a chicken first, because the fox that is closest would eat it, if it decided to do so. Also, a chicken cannot escape if a fox decides to eat it.

Question: Will that one chicken on the island be eaten or not and why?

This problem is from the King's College Cambridge website, called "Sample Maths Questions for Economics Admissions".

# 6.2 Solution

This problem actually demonstrates the main principle used to solve Game Theory questions like this: simplifying the problem until it is easily solved and then gradually making it closer to the original problem at each step.

Let's look carefully and see what we can simplify. Usually, if there is a big number involved in the problem, that is the one we can simplify.

To me, 160 foxes and 1 chicken seem too large: let's reduce the number of foxes and denote it as f.

If  $\mathbf{f} = \mathbf{1}$ , the first and only fox would just eat the chicken, because there is no threat for it to be eaten.

If  $\mathbf{f} = \mathbf{2}$ , the closest fox will know that if it eats the chicken, it will be guaranteed to be eaten, since for the further fox the situation will be identical to  $\mathbf{f} = \mathbf{1}$ . Thus, the closest fox will not eat the chicken, and neither will the second one.

If  $\mathbf{f} = 3$ , the first fox (the closest to the chicken) knows that if it eats the chicken, the situation will be identical to  $\mathbf{f} = 2$ . It knows that if it eats the chicken now, the second fox will not eat the chicken as described above, because then the last one will eat it. And neither will the third one. As such, the first fox eats the chicken and that's it.

You can continue increasing the number of foxes and hopefully notice that for every  $\mathbf{f}$ , if the first fox eats the chicken the situation is identical to  $\mathbf{f - 1}$ . By noticing the pattern we can then say that if  $\mathbf{f}$  is even, the first fox will not eat the chicken because it guarantees that it will be eaten, while for odd  $\mathbf{f}$  the first fox will eat the chicken because for the second fox  $\mathbf{f}$  will be even now and, if it eats, it will be guaranteed to be eaten.

As such, since  $\mathbf{f} = \mathbf{160}$  is even, the chicken will not be eaten.

# 7 Problem 2

# 7.1 Problem

There are 5 pirates who have come across some treasure.

This treasure is 100 gold coins.

The pirates have a system which they follow, which determines how they split up the 100 gold coins. This system is based on age.

The oldest pirate gives a proposal to the other pirates. They propose some way to split up the 100 gold coins between the pirates.

The pirates then vote on this proposal. If there is a majority, they go through with the split outlined in the proposal. If it is a tie, the pirate who made the proposal has the deciding vote.

If there is not a majority, the pirate who made the proposal gets thrown overboard. The game then continues with now the next oldest pirate making the proposal.

This process continues until a proposal is accepted.

Pirates first and foremost care about surviving (not getting thrown overboard) and then about how many gold coins they receive.

How does the game play out?

This question is from the following YouTube video, so I will write down my solution, and I also recommend watching the video "WALK THROUGH OF OXBRIDGE ECONOMICS INTERVIEW QUESTION" by Sam Hillman.

# 7.2 Solution

To solve this problem we again want to make it as simple as possible first and then gradually make it closer to the original problem at each step.

Let's imagine only two pirates first: the first pirate knows that whatever the second one votes, there will be a tie or a win for him, so he just gives all 100 coins to himself and wins.

If now there are 3 pirates, we know that the second pirate is heavily incentivised to make the first pirate lose, because in that case the situation becomes identical to the previous one and so he will get all the money. The third pirate, on the other hand, knows that if the first pirate loses, the second pirate will win everything, and so he will accept any reward greater than zero. The first pirate, hence, knows this and knows that if he gives only 1 coin to the third pirate he will accept it, because it is greater than zero he will get from the second pirate. Hence, he accepts the proposal and the first pirate wins. Note that here you could think that the second pirate's rational strategy would be to propose something greater than 1 coin to the third pirate if he wins, yet if the first pirate really loses then the second one, as a rational pirate, will be incentivised to cheat and take all 100 coins for himself. So, this "mental promise" will not work.

If now there are 4 pirates, the second one knows that if the first one loses, then he will get 99 coins as we solved before, while the third pirate knows that he will get nothing if the second pirate wins, so he will accept any reward greater than zero. Thus, the first pirate should give the third pirate 1 coin, because the third pirate will accept it, as we noted earlier. The fourth pirate will vote against the first pirate, since he knows that if the second pirate wins, he will propose the fourth pirate 1 coin, which is greater than zero that the first pirate offers. Yet it doesn't matter because the third one will vote for the first pirate and so, due to the tie, the first one will decide for himself to win.

Finally, if there are five pirates, the first one should offer the third one and the fifth one 1 coin each, because they will accept that since if they don't, the situation will turn to four pirates and the second one (turning into the first one if the first one loses) will not offer the third and the fifth (second and fourth if the first pirate loses) anything. Thus, they will accept the proposal of the first and pass the vote with a majority.

This is it for Game Theory questions; however, these questions might easily be asked during the interview, so I would advise you to go through the "King's College Economics Admissions" PDF to see more Game Theory and other interview-style questions.

Thanks for your attention and good luck with your studies!