---
title: "Advanced Microeconomics Lecture Notes Full"
parent_directory: "II. Economics/Microeconomics/PPHA Advanced Microeconomics"
formatted: "2025-12-21 12:30:00 PM"
formatter_model: "kimi-k2-turbo"
cli_tool: "claude-code"
primary_tags:
  - advanced microeconomics
  - public policy economics
  - economic theory
  - microeconomic analysis
  - policy analysis methods
secondary_tags:
  - individual choice theory
  - market equilibrium
  - welfare economics
  - game theory
  - information economics
  - behavioral economics
  - public goods
  - externalities
  - incentive design
cssclasses: academia
---

# Lecture Notes 1: Economics and Public Policy: General Ideas

In these notes, I outline some of the reasons why formal economic analysis is fundamental to public policy. There is no claim that such tools are sufficient for policy analysis. Part of what we want to understand is the limits to these tools. But these limits by no mean imply that there is only negligible value to this approach to thinking about socioeconomic phenomena and the ways that policies affect them.

## 1. What is Economics?

The nature of the subject matter and methodology that constitutes the discipline of economics is a topic on which social scientists and philosophers have written for many decades. Here are three definitions of economics from three of the greatest economists of the last 150 years.

Alfred Marshall, in his classic book *Principles of Economics*, published in 1890, writes:

"Political Economy or Economics is a study of mankind in the ordinary business of life; it examines that part of individual and social action which is most closely connected with the attainment and with the use of material requisites of wellbeing"

Paul Samuelson's classic textbook Economics employs the same definition in editions between 1948 and 1992:

"Economics is the study of how societies use scarce resources to produce valuable commodities and distribute them among people."

In contrast, Gary Becker, in his 1992 Nobel Prize address, focuses on economics as a way of thinking about behaviors and outcomes at an individual and collective level:

"The economic approach… is a method of analysis, not an assumption about particular motivations… individuals maximize welfare as they conceive it, whether they be selfish, altruistic, loyal, spiteful, or masochistic. Their behavior is forward-looking, and it is also consistent over time. In particular, they try as best they can to anticipate the uncertain consequences of their actions. Forward-looking behavior, however, may still be rooted in the past, for the past can exert a long shadow on attitudes and values. Actions are constrained by income, time, imperfect memory and calculating capacities, and other limited resources, and also by the available opportunities in the economy and elsewhere. These opportunities are largely determined by the private and collective actions of other individuals and organizations."

Together, these definitions capture the two distinct dimensions along which economic analysis is typically conducted.

First, economic reasoning takes a particular stance on how to think about individual choices, what Becker calls "The Economic Way of Looking at Life." The set of assumptions on how individual actors make choices constitutes the microeconomic foundations of an economic model.

Second, economic reasoning is explicit in linking individual choices and social phenomena via rules that adjudicate the interdependencies across individuals, what Marshall calls "social" action and Samuelson, the determination of the distribution of outcomes by "societies." This specification moves the analysis from the individual to the collective outcomes that occur from the interactions of individuals and so requires the specification of the rules under which individuals interact. Some rules are formal, the obvious example being laws. Other rules derive from society, think of these as private institutions that regulate individuals such as markets. Other types of rules may be social, such as norms. These different types of rules of course interact with one another. Laws and norms of trust and trustworthiness matter for the functioning of markets, for example.

The perspectives offered in these definitions differ in terms of subject matter for which economic reasoning may be used. While Samuelson emphasized the production and distribution of commodities, Becker's conceptualization of economic analysis includes much broader sets of socioeconomic phenomena. This course will take the broad perspective on the subject matter of economics and emphasize economic approaches to thinking about individual behaviors and aggregate outcomes.

Here is my formulation of the two dimensions of economic reasoning.

First, at the individual level, economic reasoning treats individual choices as the outcome of the interplay of three factors:

Preferences. Individuals have preferences that rank different choices because of their consequences for the individual.

Constraints. Individual choices necessarily fulfill some feasibility conditions.

Beliefs. In assessing the consequences of choices, individuals form beliefs about the effects of their choices.

Economic models of individual behavior, at least those that can claim the name, always have these elements present. But notice how little these elements entail in terms of what they imply about observed behaviors and collective outcomes. Without giving content to preferences, constraints, beliefs, these factors do not have any empirical implications. I can always say that an observed set of choices is made because an individual prefers that choice to feasible others given her beliefs. In judgment, at this level of abstraction, the economist's model of choice is a tautology.

Yet the preferences/constraints/beliefs formulation of choice is a valuable tautology as it constrains how we will proceed to substantively model different types of phenomena. If you tell me that a choice is driven by myopic beliefs, i.e. the future is always the same as the present, while I tell you individuals use statistical models to forecast the future, we will have a common ground for formulating choices under different substantive views of how beliefs are formed.

The second dimension of an economic model is comprised of the rules which adjudicate interdependencies between individuals. Abstractly, this is nothing more than the claim that an economic analysis is complete when it describes what in fact happens to the individuals that are modeled. "What in fact happens" is what I mean by a model's

equilibrium. $^{1}$  Again, without specifying the rules of the environment, it is tautological to say that an economic model has an equilibrium. It is not tautological once the rules for interactions are specified. Note that the decision rules of agents will depend on these rules.

The approach I describe is a variant of methodological individualism, in that it reasons from individuals to collective outcomes. However, the approach allows for rich forms of institutions, social norms, and many other types of social structures. Further, the approach allows for properties of the economic environment to emerge in important and surprising ways.

The economic approach to individual and collective behavior has been applied in a remarkable range of areas. Becker's Nobel lecture gives an overview. Becker himself pioneered the use of economic models to understand behaviors that traditionally were not part of economics such as marriage and crime. There are economic models of phenomena ranging from choice of language to choice of clothing. Many social scientists are critical of economic models of phenomena in nonmarket contexts (and sometimes in market contexts too). These criticisms should be respected. These criticisms often amount to rejections of particular assumptions about preferences, constraints, beliefs and rules that one finds in particular economic models.

Once one understands what economics is, its policy relevance is self-evident. What is perhaps less evident is the flexibility of the tools with respect to different substantive assumptions about individuals and about markets.

### Example. Wage and employment determination in a labor market

#### Case 1: competitive factor pricing

A competitive firm takes the level of wages as given and hires workers to maximize the difference between the revenue generated by workers and their cost. Formally, the firm chooses  $L$  to maximize.

$$
f_{i} (L) - w L \tag {1}
$$

Here  $f_{i}(L)$  is the production function for firm  $i$ . Note I assume that the price of the output of the firm is 1. This produces the classic "wage equals marginal product" condition for labor demand

$$
\boldsymbol {f}_{i}^{\prime} \left(L_{i}^{d}\right) = w \tag {2}
$$

which in turn implicitly determines the demand function for labor of the firm,  $D_{i}(w)$ , which expresses the demand for labor by a firm as a function of the wage it must pay. Aggregate demand for labor is the sum of the individual demand functions,  $D(w) = \sum_{i}D_{i}(w)$ .

Worker  $j$ , in contrast, takes the wage as given and chooses to supply labor  $L_{j}$ . The choice is based on the utility of the worker, which is increasing in her labor income  $y_{j} = wL_{j}$  and leisure, defined as  $I_{j} = T - L_{j}$ . (  $T$  is the time available to the worker that is split between labor and leisure.) In other words, worker  $j$  chooses labor supply to maximize

$$
u_{j} \left(y_{j}, I_{j}\right) = u_{j} \left(w L_{j}, T - L_{j}\right) \tag {3}
$$

The first order condition for utility maximization is

$$
\begin{array}{l} \frac{\partial u_{j} \left(w L_{j} , T - L_{j}\right)}{\partial y} w - \frac{\partial u_{j} \left(w L_{j} , T - L_{j}\right)}{\partial l} = 0 \Rightarrow \tag {4} \\ \frac{\partial u_{j} \left(y_{j} , I_{j}\right)}{\partial y} w = \frac{\partial u_{j} \left(y_{j} , I_{j}\right)}{\partial I} \\ \end{array}
$$

Equation (4) implicitly defines a labor supply function for the individual  $S_{j}(w)$ , i.e. each level of wage determines agent  $j$ 's labor supply. Aggregate labor supply is the sum of the individual labor supply functions  $\sum_{j} S_{j}(w)$ .

Competitive labor market equilibrium is defined by a wage level that equates aggregate supply and demand.

$$
D (w) = S (w) \tag {5}
$$

Denote the market-clearing wage and employment levels as  $w^c$  and  $L^c$ . In this model, there is no involuntary unemployment, i.e. each potential worker is able to work as much as is desired at the market clearing wage.

#### Case 2: wage exogenously fixed

#### Case 3: monopsony

#### Case 4: efficiency wages

One can enrich the models I have described to consider broader formulations of how workers interact with firms. Efficiency wage models are based on the idea that firms, when setting wages, account for the effects of wages on the effort of workers. For our purposes, I assume that the productivity of a worker depends on effort,  $e$ , which is increasing in the wage received by the worker, i.e. effort is a function  $e(w)$ . What does

this dependence capture? One possibility is morale. Workers are more productive when they feel well treated. Alternatively, one can think of workers as exerting effort in a form of reciprocity to employers based on the perceived fairness of treatment. See Akerlof and Yellin (1990) for a classic discussion.

To see how dependence of effort on wages affects labor market equilibrium, I follow model due to Solow (1979). Assume that the number of available workers is fixed at  $\overline{L}$  and that supply is perfectly inelastic, i.e. the supply is  $\overline{L}$  for all nonnegative wages. This is an extreme case. Note that the standard monopsony model would produce a wage of 0 for this special case of labor supply.

What happens when the productivity of workers is affected by the wage level? Profits for the firm are

$$
f (e (w) L) - w L \tag {10}
$$

Profit maximization produces two first order conditions. This differs from the original monopsonist case as the firm now has to consider the productivity of the workers induced by the choice of wage. One condition determines the level of labor hired given the wage that is set by the firm. Differentiating (10) by  $L$ ,

$$
f^{\prime} (\mathsf {e} (w) L) \mathsf {e} (w) - w = 0. \tag {11}
$$

The second condition determines the level of wages the first sets given the level of labor that is hired:

$$
f^{\prime} (\mathbf {e} (w) L) L \mathbf {e}^{\prime} (w) - L = 0. \tag {12}
$$

From (12),  $f^{\prime}(e(w)L) = \frac{1}{e^{\prime}(w)}$ . Substituting this into (11), produces the condition

$$
\frac{w e^{\prime} (w)}{e (w)} = 1 \tag {13}
$$

In other words, the wage is determined by the elasticity of effort with respect to wages. This is interesting because the wage level is entirely determined by the effort function; surprisingly, it is not affected by the shape of the production function. Why does this happen? Intuitively, the monopsonist chooses an optimal productivity of workers by setting the wage and then, conditional on this productivity, determines the level of employment. This wage setting behavior allows for unemployment since there is no guarantee that, at the optimal productivity wage, all potential workers available at that wage are hired.

How does a minimum wage affect employment in this case? When the wage is set at  $\overline{w} > w$  the original equilibrium, the monopsonist solves

$$
f^{\prime} (\mathfrak {e} (\bar {w}) L) \mathfrak {e} (\bar {w}) = \bar {w} \tag {14}
$$

which is the same equation as (11). Consider a marginal increase in  $w$  above the solution to (13).  $f^{\prime}\bigl (e(w)L\bigr)$  is decreasing in  $w$  and  $L$  while  $e(w)$  is increasing in  $w$ . It is therefore not clear a priori whether the minimum wage raises or lowers unemployment; the answer depends on the shapes of the two functions.

## 2. Policy choice as decision making

## 3. Economic theory and data analysis

In moving from (15) to (16), a new idea for the use of economic theory in policy emerges. The conditional probability  $\mu(o|p,d)$  requires that the policymaker does something new relative to the first problem: the policymaker needs to think about how the available data affect their beliefs about the effects of policies. In order to do this, the policymaker needs a model of the relationship between policies and outcomes that respects the fact that the effects of a policy will not be known with certainty. In some cases, the model will be purely statistical, i.e. can be derived from empirical relationships, but in many cases, theory is necessary to make the link. Either way, this is where econometric analysis plays an essential role in policy evaluation.

## References

Akerlof, G. and J. Yellin. 1990. "The Fair Wage Hypothesis and Unemployment." Quarterly Journal of Economics 105: 255-283.
Solow, R. 1979. "Another Possible Source of Wage Stickiness." Journal of Macroeconomics 1: 79-82.

# Lecture Notes 2: Utilitarianism, Welfarism, Capabilities, and Inequality

Why should policymakers care about inequality? Within political philosophy (which is where normative questions concerning inequality and poverty arise) there are several distinct traditions that provide guidance on distributive justice which, as the phrase indicates, concerns the just distribution produced by a society. The first tradition is known as utilitarianism or, in its modern instantiation, welfarism. Roughly speaking, utilitarianism evaluates states of affairs, actions, etc. according to their effect on the sum of utilities in a population; welfarism does this evaluation based on a function of the individual utilities, one that is increasing in each individual utility. Hence utilitarianism is a special case of welfarism. It is an important special case as much policy analysis in economics is based upon it. See Sen (1979) for discussion.

# i. Utilitarianism and Welfarism

In order to facilitate the discussion, we need some notation. For expositional purposes, let  $C$  denote the aggregate of some good that is available for a population of  $I$  agents. Individual consumption is  $c_{i}$ . Agents have the same utility function  $u(\cdot)$ . Note that I have assumed that each agent has the same utility function. This is a significant assumption as it means that interpersonal comparisons of utility are unproblematic. Interpersonal utility comparisons are in fact a serious theoretical difficulty and are studied in the social choice literature, but this is not important for our purposes.

We can now consider a problem for a social planner, which is economic jargon for a policymaker. The social planner has available  $C$  units of a consumable good that is to be allocated across the members of the population. Each individual  $i$  receives  $c_{i}$ , hence

the social planner's allocation is subject to the feasibility constraint that  $\sum_{i} c_{i} \leq C$ . What allocation should be chosen?

When thought of this way, it is evident that the allocation problem is not yet well posed, since I have not stated the objective function for the social planner. The classical utilitarian, or Benthamite (named after Jeremy Bentham one of the fathers of utilitarianism<sup>1</sup>) objective function that the social planner maximizes is

$$
\sum_{i} u \left(c_{i}\right) \tag {2.1}
$$

which means that the allocation should maximize the aggregate utility in the population; since the population size is fixed it also maximizes the average utility. In addition, suppose we follow the standard microeconomic assumptions on utility functions that 1)  $u^{\prime}(\cdot) > 0$  and 2)  $u''(\cdot) < 0$ . Under these assumptions, it is evident that aggregate utility is maximized when

$$
\forall i \mathbf {c}_{i} = \frac{\mathbf {C}}{I} \tag {2.2}
$$

This is interesting as the optimal allocation requires complete equality of consumption simply based on the a priori assumption of equality of the utility weights each person received in (2.1) and the assumption of concavity of the individual utility functions. The decreasing marginal utility of consumption provides a justification for egalitarian consumption levels.

In modern welfare economics, (2.1) is an example of a social welfare function; the general form of such functions is

$$
s (c) = s \left(u \left(c_{1}\right), \dots , u \left(c_{I}\right)\right) \tag {2.3}
$$

where  $c = (c_{1}, \ldots, c_{i})$  and  $s$  is nondecreasing in the utility of each agent, which under our assumption on utility is the same thing as saying that  $s$  is nondecreasing in each element of  $c$ . The idea that a policymaker should maximize a nondecreasing function of individual utilities is an example of welfarism. Note that there are several aspects of distributive justice that welfarism does not address. It does not deal with the question as to whether individuals receive what they deserve; this will be important when we consider deontological approaches to evaluating the distribution of income. Similarly, it does not deal with property rights or other aspects of justice. We will discuss these later. Further, the approach assumes that utility is a sufficient statistic for individual wellbeing and that utility is reduced to a function of consumption. Neither of these assumptions is obviously appropriate and together they are among the reasons underlying economist Amartya Sen's and philosopher Martha Nussbaum's development of the capabilities approach to inequality, which will be discussed as well. See Sen (2000) for discussion of the history of the capabilities approach and Sen (2009) for a discussion of his overall theory of justice and the role played in it by capabilities. Nussbaum (2006, 2011) are clear and comprehensive overviews of her current thinking.

Obviously, maximization of (2.3) may not yield (2.2). An easy example to see this is

$$
s (c) = \max_{i} u \left(c_{i}\right) \tag {2.4}
$$

In this case, the social planner is indifferent across the  $I$  allocations that give all consumption to one agent. Restoration of (2.2) as the unique solution to the social planner's problem requires additional assumptions. One example of a social welfare function that implies strict equality in the optimal allocation of consumption is

$$
s (c) = \min_{i} u \left(c_{i}\right) \tag {2.5}
$$

This social welfare function is of interest as it concentrates attention on the least well off member of society. This is sometimes called a Rawlsian social welfare function, named after the philosopher John Rawls. We will return to it later. It is immediate that (2.5) will produce (2.2) as the social planner's solution to the allocation of consumption. This is not special to the structure of (2.5). Other examples may be constructed from the assumptions of: (1) permutation invariance of (2.3), i.e. the order in which the  $u(c_i)$ 's appear in the social welfare function do not matter and (2) a concavity condition on  $s(\cdot)$  that ensures that bunching utility in a subset of the population is always dominated by an equal allocation of utility.

An important property that is typically assumed of social welfare functions is that they obey the Pareto Principle. Consider two allocations  $c^1 = (c_1^1, \ldots, c_I^1)$  and  $c^2 = (c_1^2, \ldots, c_I^2)$ . If it is the case that

$$
\forall i u \left(\boldsymbol {c}_{i}^{1}\right) \geq u \left(\boldsymbol {c}_{i}^{2}\right) \text{an df or at le as to ne} i, u \left(\boldsymbol {c}_{i}^{1}\right) > u \left(\boldsymbol {c}_{i}^{2}\right)
$$

then  $c^1$  is said to Pareto dominate  $c^2$ . The social welfare function  $s(\cdot)$  obeys the Pareto Principle if for any  $c^1$  and  $c^2$  that are both feasible, i.e.  $\sum_{i} c_i^1 \leq C$  and  $\sum_{i} c_i^2 \leq C$ , then it must be the case that  $s(c^1) > s(c^2)$ .

The social welfare functions described by (2.4) and (2.5) do not, as stated, obey the Pareto Principle. The reason for this is that the utility functions are not increasing in the utilities of anyone except for the highest utility across members of the population in (2.4) and the lowest utility across members of the population in (2.5). This is not of great importance since each can be written as the limit of a sequence of social welfare functions each of which obeys the Pareto Principle. Arrow (1973) gives an example for the Rawlsian social welfare function. Intuitively, for the Rawlsian case, one employs a social welfare function such that

$$
s (c) = \sum_{i} \varphi \left(u \left(c_{i}\right)\right) \tag {2.6}
$$

where  $\varphi(\cdot)$  is increasing and concave. Concavity is measured by a parameter such that the greater the value of the parameter, the more concave the function  $\varphi(\cdot)$ . One then computes the limit of the sequence of such social welfare functions as the parameter diverges to infinity. Of course, one has to be careful in setting up the sequence, which explains the algebraic formulation that appears in Arrow's paper.

## ii. Incentives

The allocation model I have described is artificial in a very important respect. It applies to a pure endowment economy, i.e. one in which the consumption outcomes for individuals are completely decoupled from whatever process produced the aggregate consumption endowment  $C$ . As such, the problem ignores how individual behaviors respond to the policies put in place by the social planner.

To see why the failure to account for the effects of the allocation is a serious limitation, consider the case where individuals produce a single good  $y_{i}$  and so their aggregate output defines aggregate feasible consumption.

$$
\sum_{i} y_{i} = C \tag {2.7}
$$

Assume each agent possesses identical labor endowments  $L$  and identical production functions  $f(I_i) = I_i$  where  $I_i$  is  $i$ 's labor input into production; the assumptions that endowments and production functions are identical are made for expositional purposes. Further, the utility function of each agent is modified to  $u(c_i) - v(I_i)$  where  $v'(\cdot) > 0$  and  $v''(\cdot) > 0$ . The assumptions on  $v$  involve the disutility of work. These modifications introduce the individual labor choice into the process by which the aggregate consumption level available to society is determined. As a result, the aggregate consumption is now an endogenous variable, i.e., one that is determined by individual decisions, and its realization, as is now demonstrated, will depend on the allocation rule for the society.

Consider two different rules for the society. First, suppose that the social planner announces that individuals will keep the product of their labor. Assuming away corner solutions, then it is obvious, since labor is equivalent to output is equivalent to personal consumption, that each agent will choose the same level of labor  $I^{*}$  such that the following equality holds.

$$
u^{\prime} \left(I^{*}\right) = v^{\prime} \left(I^{*}\right) \tag {2.8}
$$

This equality states the standard first-order condition for utility maximization, namely that the marginal benefit to an additional increment of work equals the marginal cost, where the marginal benefit in this model under our first allocation rule is the marginal utility of consumption and the marginal cost is the marginal disutility of work.

In contrast, suppose that the social planner implements the following redistribution rule. A  $100\%$  tax is placed on individual production, and each person receives an equal share out of the proceeds of the tax. How will individuals choose their levels of labor and what will be the equilibrium levels of consumption across the population? To answer these questions, it is necessary to specify how agents coordinate (or fail to coordinate) their behavior, since their consumption levels are now interdependent, which induces interdependence in their labor choices. I assume that they do not coordinate their labor decisions. Each agent chooses the level of labor that is optimal for him, treating the choices of others as given. This means that the equilibrium is noncooperative. Further, each agent is assumed to know the level of consumption he will receive based on the labor of others. This means that there is no uncertainty facing a given agent when he makes his labor decision. In assuming that agents know the behaviors of others and make choices treating these behaviors as given, I am in fact saying that we will study the Nash equilibrium for this environment, which was originated by the mathematician and economist John Nash.<sup>3</sup>

Clearly, the marginal product of individual labor on consumption has shifted from 1 to  $\frac{1}{I}$ . Why? Each agent will only, after redistribution, be able to increase his consumption by  $\frac{1}{I}$  when he increases his labor by 1. (Notice with linearity, I do not need to invoke derivatives.) The optimal choice of labor, under this second allocation rule for consumption,  $I^{**}$  is determined, as before, by equating the marginal consumption utility of an additional increment of work with the marginal disutility generated by the associated reduction of leisure, which leads to the equilibrium condition

$$
u^{\prime} \left(\frac{I^{* *}}{I} + \frac{(I - 1) I^{* *}}{I}\right) \cdot \frac{1}{I} = v^{\prime} \left(I^{* *}\right) \Rightarrow \frac{u^{\prime} \left(I^{* *}\right)}{I} = v^{\prime} \left(I^{* *}\right) \tag {2.9}
$$

Note that  $\frac{(I - 1)I^{**}}{I}$  is the consumption that agent  $i$  receives via the redistribution rule. In comparing (2.8) and (2.9) the difference is that in (2.9) the marginal utility is divided by  $I$ . The reason for this is straightforward, when agent  $i$  increases his labor by one unit, it only translates into  $\frac{1}{I}$  units of additional consumption.

Given the assumptions on first and second derivatives, it is obvious that  $I^{*} > I^{**}$ . Intuitively, the tax and redistribution rule reduce individual incentives to work as opposed to enjoy leisure. Further, it must be the case that  $u(c^{*}) - v(I^{*}) > u(c^{**}) - v(I^{**})$  where  $c^{*}$  and  $c^{**}$  are the consumption levels under the two policies. Why? The reason is simple. The pair  $(c^{**},I^{**})$  was a possible choice under the first policy, but agents chose  $(c^{*},I^{*})$  instead. Under the assumptions on first and second derivatives, the inequality must be strict. Intuitively, the tax and redistribute scheme reduces individual work incentives and so makes everyone worse off. Both policies produce complete equality, but the second, in the context of the model, is clearly inferior to the first in terms of each individual's utility. The second policy is thus Pareto inferior and for a welfarist, the policy would be ruled out in favor of the no tax, no redistribution alternative.

What message should we take from this example? The critical message is that one needs to evaluate the general equilibrium effects of a policy if one is a welfarist.

# iii. Intergenerational mobility

How does this abstract, atemporal discussion translate into normative claims about intergenerational mobility? The easiest way to see how this can happen is the following. Consider a fixed set of parental incomes  $y_{ip}$ , For each parent there is an offspring who

will have income  $y_{i0}$ . Divide offspring income as  $y_{io} = f(y_{ip}) + \varepsilon_{i0}$  and for simplicity assume that  $f(y_{ip})$  and  $\varepsilon_{i0}$  are independent,  $f(y_{ip})$  denotes the part of offspring income that is predicable from the parent. Let  $\overline{f(y_{ip})}$  denote the average of the predictable parts.

Suppose that the utility of each offspring is  $u\left(y_{ip}\right)$ , where utility is concave. Now compare expected total utility for offspring  $\sum_{i} E\left(u\left(y_{io}\right) \mid y_{ip}\right)$  with  $\sum_{i} E\left(u\left(\overline{f\left(y_{ip}\right)} + \varepsilon_{i0}\right) \mid \varepsilon_{i0}\right)$  which is the counterfactual level of expected total utility if parental effects on offspring income are set equal to the average. Under concavity, expected total utility is higher when everyone receives the average. But if everyone receives the average, this means that there is no heterogeneity income due to parents, hence no immobility.

Of course, this thought experiment ignores the incentive effects on parents and offspring, as well as parental utility, all of which need to be addressed in a more serious analysis.

# iv. Capabilities

Amartya Sen, Martha Nussbaum and others have developed a view of distributive justice that is premised on the idea that society should maximize capabilities of its members. Capabilities characterize the ability of an individual to lead a flourishing life. Different individuals may have different notions of a flourishing life. Capabilities theory respects these differences in preferences, in the sense that it focuses on the richness of the potential lives a person can lead.

The capabilities framework is consequentialist, but unlike welfarism focuses on a conception of freedom. Sen (1992, p. 150) explains this well:

"The 'capability' approach has something to offer both to the evaluation of well-being and to the assessment of freedom. Considering the former connection first, the capability approach to well-being differs from the traditional concentration on economic opulence (in the form of real income, consumption levels, etc.) in two distinct respects: (1) it shifts the focus from the space of means in the form of commodities and resources to that of functionings which are seen as constitutive elements of human well-being; and (2) it makes it possible-though not obligatory-

to take note of the set of alternative functionings from which the person can choose. The 'capability set' can be seen as the overall freedom a person enjoys to pursue her well-being.

The concepts in capabilities theory have been formalized. I follow notation in Basu, and Lopez-Calva (2011) which directly follows the notation in Sen's writings. Let  $x_{i}$  denote a vector of commodities, chosen from set  $X_{i}$ . Commodities matter, in the theory, not for consumption value but because they facilitate the capability to choose a particular life course. A trivial example is the level of education: education facilitates the life subsequently led. To make this notion of facilitation precise, commodities embody characteristics that matter for the life course. Formally, the vector of commodities an individual is able to access translates into a vector of characteristics  $c_{i}$

$$
\boldsymbol {c}_{i} = \delta \left(\boldsymbol {x}_{i}\right) \tag {2.10}
$$

This vector of characteristics, in turns, translates into a vector of functionings  $f_{i}$  via the choice of a utilization function,  $\phi_{i} \in \Phi_{i}$ ,

$$
\boldsymbol {f}_{i} = \phi_{i} (\boldsymbol {c}_{i}) \tag {2.11}
$$

Functionings are what is meant by life courses. Notice that the same vector of characteristics leads to more than one possible functioning for an individual. Why? Because an individual makes a second choice,  $\phi_{i}$ , that determines how the characteristics become a life course.

As indicated, the capabilities theory argues that institutions should be chosen that maximize freedom. How is freedom measured? Effective freedom,  $Q_{i}$ , is defined as the set of feasible  $f_{i}$ 's available to an individual. This set is determined by the set of  $x_{i}, \phi_{i}$  pairs available to  $i$ .

At first glance, this seems to say that the larger the set of elements of an individual's budget set, the greater that person's freedom. If this were the appropriate interpretation of freedom in capabilities theory, it would be unappealing. For example I would not normally say that I am less free if I cannot purchase a commodity bundle that provides lower utility than the one I purchase. Capabilities theory is not about consumption however, rather it is about life courses. Even if I do not choose to live an Amish lifestyle, I am less free if I am not allowed to do so. This is what Sen means when he describes himself as a consequentialist, but not as a welfarist.

# References

Arrow, K. 1973. "Some Ordinalist-Utilitarian Notes on Rawl's Theory of Justice." Journal of Philosophy 70: 245-263.
Basu, K. and L. Lopez-Calva. 2011. "Capabilities and Functionings." Handbook of Social Choice and Welfare, K. Arrow, A. Sen, and K. Suzumura, eds. Amsterdam: Elsevier.
Nussbaum, M. 2006. Frontiers of Justice. Cambridge: Harvard University Press.
Nussbaum, M. 2011. Creating Capabilities. Cambridge: Harvard University Press.
Sen, A. 1979. "Utilitarianism and Welfarism." Journal of Philosophy 76: 463-489.
Sen, A. 1992. Inequality Reexamined. Cambridge: Harvard University Press.
Sen A. 2000. "Social Justice and the Distribution of Income." Handbook of Income Distribution. A. Atkinson and F. Bourguignon, eds. Amsterdam: North Holland.
Sen, A. 2009. The Idea of Justice. Cambridge: Harvard University Press.

# Lecture Notes 3: Beyond Utilitarianism: Equality of Opportunity, Responsibility and Desert

As we saw in lecture notes 2, the utilitarian/welfarist justification argument in favor of egalitarian distributions involves two ideas: one derives from the assumption of equal and nonconvex weighting of individuals (which is not really controversial, think of the implicit ideas behind the many formulations of the Golden Rule throughout history) and the second, the assumption of concave preferences (which is an empirical matter, one that does not warrant a general rejection of the theory). I am interested in focusing on conceptual reasons why utilitarian/welfarist thinking may be limited as a basis for justifying policies that promote egalitarianism and to introduce another way to think about the ethical justifications of policies. To be clear, my goal is not to justify egalitarianism, but to ask how different ethical positions may lead to a defense of egalitarian policies.

One of the most important approaches to evaluating policies, with an explicit concern for the linking policies to distributive justice, involves the question of whether one should be concerned with equality of outcomes or opportunities. From the vantage point of thinking about intergenerational mobility, equality of opportunity arguments are particularly salient in policy discussions

Equality of opportunity is a very active area in political philosophy; Richard Arnesen at UC San Diego is a major figure. In my view, the leading thinker is in fact the economist John Roemer; his 1987 and 1993 papers are important contributions; Roemer (1998) provides a very readable summary of his views. In this perspective, justice is equated to fairness; such an equivalence is not unique to the argument I will develop, as indicated by the fact that the phrase is often associated with John Rawls. The importance of this idea is that it distinguishes the "right" from the "good". In turn, the notion of fairness introduces the idea that individuals should receive what they deserve. This notion of

course transcends economic considerations. For example, one can argue that each citizen deserves one and only one vote, without taking a stance on the distribution of economic goods.

As a simple example, consider two individuals who have initial endowment of the good  $c_A$  and  $c_B$  respectively. If you were told that  $c_A > c_B$ , would an ethical case exist as to whether the good should be redistributed so that each individual receives  $\frac{c_A + c_B}{2}$ ? For the utilitarian, the answer is determined by the properties of the individual utility functions, whereas for the welfareist the answer is determined by social welfare function as well as the individual utility functions. What I refer to as the deontological perspective would find this approach unsatisfactory, as it does not address the question of what is fair.

To see why this matters, consider two scenarios. In the first scenario,  $c_{A}$  and  $c_{B}$  are the wages paid to  $A$  and  $B$  respectively. (I will ignore distinctions between wages and consumption for simplicity.) Suppose I told you that individuals  $A$  and  $B$  performed exactly the same job for the employer and were equally productive as workers; hence  $\frac{c_{A} + c_{B}}{2}$  is the marginal product of each worker. However, the employer paid  $A$ $c_{A}$  because he is white and paid  $B$  because he is black  $c_{B}$ . (Notice I have rigged the example; there is no justification for the wage difference outside of racial animosity by the employer). We further assume that for some reason antidiscrimination laws cannot rectify the wage discrepancy. For this example, fairness would provide a justification for equalization of wages and hence consumption.

Now consider a second scenario. Situate the two individuals in time. At time  $t - 1$ , each individual performs an identical task and performs it equally well, and the employer pays each  $\overline{c}$ . (Assume both agents are white so discrimination is off the table.) Agent A chooses to invest  $\overline{c}$  at a known $^1$  real interest rate  $r$  and so at time  $t$  has  $c_A = (1 + r)\overline{c}$ . In contrast, agent B chooses to spend some of his  $\overline{c}$  on a world tour and invests the rest

in an asset that has a known real interest rate of 0, even though the asset with real return  $r$  was available. As a result, at time  $t$ , individual  $B$  is in possession of  $c_{B}$ .

In this case, I claim our ethical intuitions would not lead us to advocate a policy that equalized consumption across the two agents at time  $t$ . Further, I claim that this ethical intuition has a firm basis. In the first scenario, it is unjust to hold individual  $B$  responsible for the consumption discrepancy since it was the manifest of an action by a third party that was unjust. From the perspective of  $B$ , he should not be held responsible for the consumption disparity and, for the context that we constructed, the government acts justly by reintroducing fairness in the consumption allocation. In contrast, in scenario 2, the consumption disparity between agents  $A$  and  $B$  derives from their choices. Now assuming that one is responsible for one's preferences (while determination of individual responsibility for preferences is important in implementing such policies and will be addressed later in the course, it is not of any importance to the distinction between the scenarios), it is evident that the individuals are personally responsible for the consumption disparity that would occur in time  $t$  in absence of redistribution.

This difference illustrates the key idea in the equality of opportunity literature: inequalities are justified if they result from factors for which an individual should be held responsible. Factors for which an individual should not be held responsible are often referred to as "luck." Hence equality of opportunity egalitarianism is sometimes called luck egalitarianism.

How might one formalize the ideas I have described. Consider a socioeconomic outcome of interest, denote it as  $\omega_{i}$ . Suppose this outcome is determined by two vectors of observable characteristics  $X_{i}$  and  $Z_{i}$ , and a scalar² unobservable characteristic  $\varepsilon_{i}$ .

$$
\omega_{i} = \phi \left(X_{i}, Z_{i}, \varepsilon_{i}\right) \tag {3.1}
$$

Suppose that we believe that an individual is not responsible for  $Z_{i}$  but is responsible for  $X_{i}$  and  $\varepsilon_{i}$ . An empirical analyst could construct the conditional probability

of the outcome  $\omega_{i}$  given the observable characteristics. One could then say that perfect equality of opportunity with respect to  $\omega$  exists, if the following conditional probabilities hold<sup>3</sup>:

$$
\forall i, j \mu \left(\omega_{i} \mid X_{i}, Z_{i}\right) = \mu \left(\omega_{j} \mid X_{j}, Z_{j}\right) \text{if } X_{i} = X_{j} \tag {3.2}
$$

In words, equality of opportunity means that that so long as two individuals have the same values for the variable for which they are responsible, the probabilities of their outcomes are not affected by the variables for which they are not responsible. In other words, if two people have the same values of  $X$  they should have equal conditional probabilities for the outcome  $\omega$  even if they have different values of  $Z$ . This formulation first appears in Durlauf (1996) although it seems an obvious idea given Roemer (1993).

Note four limitations of the definition of equality of opportunity expressed by (3.2). First, it does not tell us what variables should comprise  $X_{i}$  versus  $Z_{i}$ . As Roemer (1993) argues, determining this will be politically contentious and we may not have good a priori reasons for the division. This is most certainly not a fatal objection to this formulation of equality of opportunity; it merely recognizes that reasonable individuals can disagree on when equality of opportunity holds. Second, nothing guarantees that (3.1) is feasible. In other words, there may not be government policies that can implement (3.1). Third, and this is distinct from the previous argument, it is possible that a policy that can fulfill (3.1) should be rejected on other grounds. Fourth, the analysis assumed that the unobservable source of heterogeneity  $\varepsilon_{i}$  is something for which individuals should be held responsible. If this assumption is wrong, then a policy that implements (3.1) could exacerbate the failure of equality of opportunity. Again, this is not a fatal objection. It is generally the case that a policy can be counterproductive if we construct it using the wrong behavioral model, which in this case includes the sorting of variables into the responsible and nonresponsible categories.

In thinking about the application of equality of opportunity as a policy objective, it is often the case that an analyst is concerned about the effects of family background on socioeconomic prospects for an individual. One is not responsible for one's parents, and their attendant effects on a child. Other applications would focus on social factors outside an individual's control. Prejudice and discrimination are obvious examples, as are the effects of the neighborhoods in which one grows up or the schools one attends prior to college.

Once one recognizes that (3.2) may be a utopian objective, one can ask more limited questions about how to promote equality of opportunity. Roemer (1993) is a modern classic in terms of analysis of this type. To paraphrase the example he gives in the paper, suppose that one is asking to what extent society should provide indemnification for the harms of cigarette smoking on individuals. (This sort of question assumes much salience in current health debates!). Roemer proposes the following idea. Divide individuals into categories that correspond to characteristics for which they are not responsible. Leaving aside the controversial nature of this division, following Roemer, suppose that two of these categories are black male steelworkers and white female college professors. Suppose that smoking intensity is observable. This allows one, for each group, to array the group members according to their percentile on smoking intensity. Roemer argues that society should indemnify individuals at the same percentile. Hence, even if a black male steelworker smokes at the median level of his group, he is entitled to be indemnified for medical expenses in the same fashion as is done for the median white female professor. According to Roemer (1993), for those who match the medians of their respective groups,

"My egalitarian ethic says that both should receive the same degree of social indemnity: if all the medical expenses of the professor are covered by society, then the same should be the case for the steelworker." (p. 151)

The idea is that the location of an individual in the distribution of smoking intensity for his group indicates the degree of personal responsibility he or she has exercised. What makes this interesting is that the two categories of individuals may have very different smoking habits. College professors are presumed to smoke less than steelworkers;

Roemer wants to argue that this difference is due to factors for which members of neither group is responsible. Hence his use of the relative location along the distribution of smoking intensity.

How can Roemer's proposal be interpreted in the context of (3.1). Suppose that one modifies (3.1) so  $\omega_{j}$  is determined by

$$
\omega_{i} = \phi_{g} (\varepsilon_{i}) \tag {3.3}
$$

where  $g$  denotes individual  $i$ 's group. This captures Roemer's idea that the behavior of individuals is determined by something they do not control (group membership) and something they do,  $\varepsilon_{i}$ ; indexing the function  $\phi$  by  $g$  allows each group to have its own transformation of the responsibility variable into observed behavior. The logic of Roemer's comparison exercise involves two ideas: 1) the rank order of  $\omega_{i}$  within a group reveals the rank order of  $\varepsilon_{i}$  within the group and 2) the rank orders of  $\omega_{i}$  are sufficient to compare the values of  $\varepsilon_{i}$  for members of different groups. The latter is problematic, as we shall see. I defer the problem because it requires the development of a model of choice under social influences that is best exposited later.

# Desert

A distinct idea in distributive justice is desert, i.e. the claim that people should receive what they deserve. In the context of inequality, this translate to the idea that inequalities are justified if they derive from people receiving what they deserve. Arguments in favor of meritocracy are, in my judgment, arguments about desert. (There are debates in the philosophy literature about the difference between desert and merit, but that is not relevant to these debates.)

Many philosophers reject the idea of desert as a fundamental component of justice. Rawls gives a famous example. Abilities are partially determined by the outcome of the

genetic lottery. Hence, anything that derives from the abilities cannot be deserved since the abilities themselves were not deserved.

Sher (1987) provides a detailed discussion and defense of desert as a normative consideration. A key idea in his analysis is that desert depends on context and contexts can be associated with particular values. For example, the idea that the fastest runner deserves to win the Gold Medal in the Olympics derives from the context and norms associated with the competition.

# Back to Welfarism

Kaplow and Shavell (2001) have criticized nonwelfarist approaches to evaluating the justice of policies on the grounds that they necessarily violate the Pareto principle. The basic idea of their argument is the following simplification of their analysis. Suppose that, generalizing the model in lecture notes 1 that a policymaker is choosing  $x = \left(x_{1},\ldots x_{l}\right)$  from some set  $X$ . I change notation to allow each  $x_{i}$  to represent a vector, which makes the conditions for a function to fail to be a social welfare function more general. Assume free disposal, so if  $x$  is feasible, so is any other nonzero vector that is smaller element by element. Utility is allowed to be individual-specific, i.e. preference heterogeneity is now permitted. Assume the individual utility functions  $u_{i}\left(x_{i}\right)$  are strictly increasing in all arguments in the vector  $x$ . Assume the policymaker ranks social states according to the "justice" function

$$
J (x) = J \left(x_{1}, \dots , x_{I}\right) \tag {3.4}
$$

This function is assumed to be differentiable everywhere and hence continuous. Following Kaplow and Shavell, the justice function is not a social welfare function if there exist feasible allocations  $\overline{x}$  and  $\overline{\overline{x}}$  such that

$$
J (\bar {x}) > J (\bar {\bar {x}}) \tag {3.5}
$$

and

$$
\forall i u_{i} \left(x_{i}\right) = u_{i} \left(\bar {x}_{i}\right) \tag {3.6}
$$

Under the continuity assumptions, there must be an allocation  $\overline{x} -\delta$ $\forall i\delta_{i} > 0$  , (note that  $\delta_{i}$  can be made arbitrarily small) such that

$$
J (\bar {x} - \delta) > J (\bar {\bar {x}}) \tag {3.7}
$$

But given (3.6), everyone is worse off, in terms of utility, at the allocation  $\overline{x} -\delta$  than at the allocation  $\overline{\overline{x}}$ . Hence the justice function violates the Pareto Principle.

At first glance, this seems perverse. However, the Kaplow-Shavell finding may be less of a problem for deontological ethics than meets the eye. I say this because their algebraic formalization does not say anything, for example, about how the elements of  $X$  are generated. Suppose that the choice of allocation in fact is a choice of rules that generate it. Then if I, as a policymaker, rule out all discriminatory allocations as unjust, I might choose a consumption allocation that reduces everyone's utility. I gave an example in class of this type based on Sen (1970) in which society refuses to implement censorship despite the fact it would raise the utility of both of the society's members. Kaplow and Shavell remind us that adherence to the principle that "the right is prior to the good" can generally lead to utility losses, so if we equate the good with a social welfare function, there is a tradeoff to consider. But once we contextualize the utility loss, it may not be intuitively bizarre.

# References

Durlauf, S. 1996. "Associational Redistribution: A Defense." Politics and Society 24: 391-410.
Kaplow, L. and S. Shavell. 2001. "Any Non-Welfarist Method of Policy Assessment Violates the Pareto Principle." Journal of Political Economy 109: 281-286.
Roemer, J. 1987. "Egalitarianism, Responsibility, and Information." Economics and Philosophy 3: 215-244.
Roemer J. 1993. "A Pragmatic Theory of Responsibility for the Egalitarian Planner." Philosophy and Public Affairs 22: 146-166.
Roemer, J. 1998. Equality of Opportunity. Cambridge: Harvard University Press.
Sen, A. 1970. "The Impossibility of a Paretian Liberal." Journal of Political Economy 78: 152-157.
Sher, G. 1987. Desert. Princeton: Princeton University Press.

# Lecture Notes 4: Maximization

These notes review some basic ideas about maximization. As discussed in lecture notes 1, economic models are predicated on the idea of individuals making optimal choices. The mathematical analog of this idea is the maximization of a function subject to constraints and, when uncertainty is present, subject to beliefs about the uncertainty. I will focus here on the case of certainty. Since maximizing a function is equivalent to minimizing the same function when it is multiplied by  $-1$ , there is no loss of generality by focusing on maximization.

A general framework for maximization is the following. Consider a function  $f(x)$ . The domain of the function consists of a set of elements  $X$  of  $k$ -dimensional Euclidean space, i.e.  $x \in X \subset \mathbb{R}^k$ . Then the following holds.

Extreme Value Theorem: If  $f(x)$  is continuous and  $X$  is closed and bounded $^1$ , then there exists at least one maximum value of  $f(x)$  that lies in  $X$ .

What are the intuitions for the conditions of the theorem? To understand the requirement that the set is closed, consider the set of values of  $R^2$  that are of distance less than 1 from  $(0,0)$ . There is no farthest point from  $(0,0)$  in the set. Closure ensures that this type of problem does not arise. What does boundedness ensure? It avoids cases

of infinities. If I asked what value of scalar  $x$  maximizes  $f(x) = x$ , there is no solution if  $X = R$ . As for continuity of the function, this condition avoids cases such as

$$
f (x) = x \text{if } 0 \leq x <   1
$$

$$
f (x) = 0 \text{if } x > 1
$$

where  $x \in [0, \infty)$ ; This function approaches a maximum at  $x = .1$  but does not obtain it.

Of course, we are typically interested in characterizing maxima, not simply knowing whether or not they exist. There is no straightforward way to identify the global maxima of arbitrary functions. In contrast, there are powerful tools to characterize local maxima. What is a local maximum? For  $x^*$ , define  $B_{\varepsilon}(x^*)$  as the set of all  $x$  such that  $\| x^* - x \| \leq \varepsilon$ .

Definition.  $x^{*}$  is a local maximum of  $f(x)$  if there exists an  $\varepsilon > 0$  such that for all  $x \in B_{\varepsilon}(x^{*})$ ,  $f(x^{*}) \geq f(x)$ .

In words, at a local maximum, there is some  $\varepsilon > 0$  so that for all  $x$ 's within distance  $\varepsilon$  of  $x^*$ , the function is maximal at  $x^*$ .

I now give conditions for characterizing local maxima. These conditions assume the existence of first and second derivatives for  $f(x)$ , assumptions I maintain for the rest of these notes.

# 1. Scalar  $x$

To make ideas concrete, first consider the case where  $x$  is a scalar. The first order condition for a local maximum is that, at an optimum, the first derivative of the function is zero.

$$
\frac{d f \left(x^{*}\right)}{d x} = 0 \tag {4.1}
$$

Why is this necessary? Suppose that this did not hold. If  $\frac{df(x^*)}{dx} > 0$  then an arbitrarily small increase in  $x$  beyond  $x^*$  would increase  $f(x)$  and so we could not be at a maximum. As an exercise, reason analogously as to why  $x^*$  could not be a local maximum if  $\frac{df(x^*)}{dx} < 0$ .

The second order condition for a maximum is

$$
\frac{d^{2} f \left(x^{*}\right)}{d x^{2}} <   0 \tag {4.2}
$$

Here is a way to understand the second order condition. Let  $x = x^{*} + \varepsilon$ . If  $\varepsilon$  is small enough, then

$$
\begin{array}{l} f (x) \approx f \left(x^{*}\right) + \frac{d f \left(x^{*}\right)}{d x} \varepsilon + \frac{1}{2} \frac{d^{2} f \left(x^{*}\right)}{d x^{2}} \varepsilon^{2} = \tag {4.3} \\ f \left(x^{*}\right) + \frac{1}{2} \frac{d^{2} f \left(x^{*}\right)}{d x^{2}} \varepsilon^{2} \\ \end{array}
$$

where the second equality in (4.3) accounts for the fact that, by the first order condition,  $\frac{df(x^*)}{dx} = 0$ . In order for  $x^*$  to be a local maximum, deviations in the vicinity of  $x^*$  must reduce the value of the function, which is what a negative second derivative ensures.

# Example

$$
f (x) = \left(z \beta + \eta\right) x - \frac{1}{2} x^{2} \tag {4.4}
$$

The first order condition gives us

$$
\frac{d f (x)}{d x} = z \beta + \eta - x = 0 \Rightarrow \tag {4.5}
$$

$$
x = z \beta + \eta
$$

The second order condition is

$$
\frac{d^{2} f (x)}{d x^{2}} = - 1 \tag {4.6}
$$

Therefore (4.5) produces a maximum.

Here is an important use of this simple class of functions. Rewrite (4.5) as

$$
x = z \beta + \eta \tag {4.7}
$$

Suppose you have data on individuals but can only observe  $x$  and  $z$ . Eq. (4.7) takes the form of a linear regression. In other words, a linear statistical model for individual behavior is implied by certain types of optimization problems.

# Concavity and convexity

A function  $f(x)$  is said to be concave if, for any  $0 < \theta < 1$  and any  $x' \neq x''$ ,

$$
f \left(\theta x^{\prime} + (1 - \theta) x^{\prime \prime}\right) > \theta f \left(x^{\prime}\right) + (1 - \theta) f \left(x^{\prime \prime}\right) \tag {4.8}
$$

A function  $f(x)$  is convex if, for any  $0 < \theta < 1$ , and  $x \neq x'$ ,

$$
f (\theta x^{\prime} + (1 - \theta) x^{\prime \prime}) <   \theta f (x^{\prime}) + (1 - \theta) f (x^{\prime \prime}) \tag {4.9}
$$

Comment: if (4.8) and (4.9) are sometimes called strictly concave and strictly convex respectively, where the terms concave and convex are reserved for the weak inequalities  $\leq$  and  $\geq$ .

If a function is concave across the domain of  $x$ , then it is twice differentiable,  $\frac{df^2(x)}{dx^2} < 0$ . For our purposes what is important is that if  $f(x)$  is concave, then the solution to our local maximization problem is also the global maximum. To see why, concavity means that the  $\frac{df(x)}{dx}$  is strictly decreasing in  $x$ . Hence for all  $x < x^*$  one can always increase the value of  $f(x)$  by moving to  $x^*$ ; the same applies to  $x > x^*$ .

# Comparative statics

Suppose there is an exogenous variable  $p$  that affects the value of  $f$ , in addition to  $x$ , so that the function we are studying is now

$$
f (x, p) \tag {4.10}
$$

As before, assume the function is twice differentiable. The first order condition for maximization is the same as before.

$$
\frac{d f \left(x^{*} , p\right)}{d x} = 0 \tag {4.11}
$$

which implies that the value that maximizes  $f(x)$  is a function of  $p$ , denote this as  $x^{*}(p)$ . Comparative statics involves understanding the dependence of  $x$  on  $p$ . In particular, it is of interest to know when  $x^{*}(p)$  is increasing or decreasing in  $p$  or whether it is not

known a priori. To determine the effect of changes in the level of the policy on the optimal choice, note that one can substitute  $x^{*}(p)$  into (4.11)

$$
\frac{d f (x^{*} (p) , p)}{d x} = 0 \tag {4.12}
$$

and completely differentiate this equation with respect to  $p$ . Doing so yields

$$
\frac{d \left(\frac{d f \left(x^{*} (p) , p\right)}{d x}\right)}{d p} = \frac{\partial^{2} f \left(x^{*} (p) , p\right)}{\partial x^{2}} \frac{d x^{*} (p)}{d p} + \frac{\partial^{2} f \left(x^{*} (p) , p\right)}{\partial x \partial p} = 0 \tag {4.13}
$$

or

$$
\frac{d x^{*} (p)}{d p} = - \frac{\frac{\partial^{2} f (x^{*} (p) , p)}{\partial x \partial p}}{\frac{\partial^{2} f (x^{*} (p) , p)}{\partial x^{2}}} \tag {4.14}
$$

Since  $\frac{\partial^2 f(x^*(p), p)}{\partial x^2} < 0$ , the sign of  $\frac{dx^*(p)}{dp}$  is the same as the sign of  $\frac{\partial^2 f(x^*(p), p)}{\partial x \partial p}$ . When this cross partial derivative is positive,  $x$  and  $p$  are said to exhibit complementarity. When the cross partial is negative, they exhibit substitutability.

# Proposition: Complements versus substitutes and effects of policy

$$
\frac{\partial^{2} f (x^{*} (p) , p)}{\partial x \partial p} > 0 \Rightarrow \frac{d x^{*} (p)}{d p} > 0 \tag {4.15}
$$

$$
\frac{\partial^{2} f (x^{*} (p) , p)}{\partial x \partial p} <   0 \Rightarrow \frac{d x^{*} (p)}{d p} <   0
$$

# Envelope theorem

How does a change in  $p$  affect the value of the function at its maximum? The total effect of a change will involve both its direct effect and the indirect effect that occurs because  $x^{*}$  changes. The total derivative is

$$
\frac{d f (x^{*} (p) , p)}{d p} = \frac{\partial f (x^{*} (p) , p)}{\partial x} \frac{d x^{*} (p)}{d p} + \frac{\partial f (x^{*} (p) , p)}{\partial p} = \frac{\partial f (x^{*} (p) , p)}{\partial p} \tag {4.16}
$$

where the second inequality in (4.16) follows from the fact that at a local maximum,  $\frac{\partial f(x^*(p), p)}{\partial x} = 0$ . Given (4.12), The fact that the marginal effect of a change in an exogenous variable on the value of a maximized function only depends on the direct effect is known as the envelope theorem<sup>2</sup>. Of course, the logic here depends on the change being arbitrarily small. The indirect effect can matter otherwise.

# 2. Multivariate case

For the case where  $x \in R^K$ , the first and second order conditions are (relatively) straightforward generalizations of the scalar conditions. The first order condition (1) must now hold for each  $x_k$ , the various elements of  $x$

$$
\frac{d f \left(x^{*} , p\right)}{d x_{k}} = 0 \text{fo r} k = 1 \dots K \tag {4.17}
$$

The associated second order condition involves the curvature of the function in a way that generalizes the second derivative. Define the  $K \times K$  matrix  $D^2 f(x)$ , whose  $i, j$  element is  $\frac{\partial^2 f(x)}{\partial x_i \partial x_j}$ . This is called the Hessian of the function  $f(x)$ . It is a matrix of functions. If the functions are evaluated a particular  $x$ , then the matrix is comprised of numbers. The vector  $x^*$  is a local maximum if

$$
D^{2} f \left(x^{*}\right) \text{is an eg at iv ed ef in it em at ri x}. \tag {4.18}
$$

Note that if  $D^{2}f(x)$  is negative definite for all values of  $x$ , then the local maximum is also global, in analogy to what we saw before. A negative definite  $D^{2}f(x)$  is implied by concavity for multivariate (and twice differentiable) functions.

Comparative statics can also be given a vector generalization. Consider the Hessian  $Df(x,p)$ , which is now a  $K + 1 \times K + 1$  matrix. The analogy to (4.2) is

$$
D f (x, p)_{i j} > 0 \text{fo ra ll} i \neq j \Rightarrow \frac{d x^{*} (p)}{d p} > 0 \tag {4.19}
$$

The condition  $i \neq j$  matters, as it says that only cross-partials need to be positive. This is the multivariate notion of complementarity.

# 3. Optimization under constraints

Many optimization problems involve constraints on choices. For example, a consumer maximizes utility subject to a budget constraint. A general way to think about this problem is to modify the initial maximization problem and consider

$$
\max_{x} f (x) \text{su ch th at} g (x) = y \tag {4.20}
$$

Keep in mind that  $x$  can be a vector. The requirement that  $g(x) = y$  constitutes the set of constraints that  $x$  must fulfill. A standard example is consumption.

How to incorporate this constraint? The method of Lagrange provides a general solution. Consider the problem

$$
\max_{x, \lambda} f (x) - \lambda (g (x) - y) \tag {4.21}
$$

where a new variable has been introduced,  $\lambda$ , known as the Lagrange multiplier. There is a distinct first order condition for each  $x_{k}$ , which following (4.17) means

$$
\forall k \frac{\partial f (x)}{\partial x_{k}} - \lambda \frac{\partial g (x)}{\partial x_{k}} = 0. \tag {4.22}
$$

The first order condition with respect to the Lagrange multiplier is

$$
y - g (x) = 0. \tag {4.23}
$$

Condition (4.23) is the constraint in (4.20). This is the genius of the method. The constrained optimization problem has been converted to an unconstrained optimization problem in which the constraint becomes an additional first order condition.

The solutions  $x^{*}$  and  $\lambda^{*}$  that maximize (4.21) will depend on  $y$ , i.e. we can think of the solutions as functions  $x^{*}(y)$  and  $\lambda^{*}(y)$ . Define

$$
L^{*} (y) = f \left(x^{*}\right) - \lambda^{*} \left(g \left(x^{*}\right) - y\right) \tag {4.24}
$$

This is the value of (4.21) at the maxima. How does a change in  $y$  alter  $L^{*}(y)$ ? Totally differentiating (4.24) with respect to  $y$  yields

$$
\frac{d L^{*} (y)}{d y} = \sum_{k = 1}^{K} \left(\frac{\partial f (x^{*})}{\partial x_{k}} \frac{d x_{k}^{*}}{d y} - \lambda^{*} \frac{\partial g (x^{*})}{\partial x_{k}} \frac{d x_{k}^{*}}{d y}\right) - \frac{d \lambda^{*}}{d y} (g (x^{*}) - y) + \lambda^{*} =
$$

$$
\sum_{k = 1}^{K} \left(\left(\frac{\partial f (x^{*})}{\partial x_{k}} - \lambda^{*} \frac{\partial g (x)}{\partial x_{k}}\right) \frac{d x_{k}^{*}}{d y}\right) + \lambda^{*} = \tag {4.25}
$$

$\lambda^{*}$

The second line follows from the fact that  $g(x^*) - y = 0$  and the third line follows from the fact that  $\frac{\partial f(x^*)}{\partial x_k} - \lambda^* \frac{\partial g(x^*)}{\partial x_k} = 0$  for all  $k$  by the first order conditions for maximization (4.22). (Note that this calculation is an example of the envelope theorem.) The multiplier  $\lambda^*$  therefore measures the marginal benefit of increasing  $y$ . This gives intuition as to what it means to maximize (4.21) with respect to  $\lambda$ . Maximization means that the values of  $x$  are chosen so as to make the value of relaxing the constraint as large as possible.

# Inequality constraints

In some cases, it is more natural to impose an inequality constraint rather than an equality constraint, which means that (4.20) is modified so that

$$
\max_{x} f (x) \text{su ch th at} g (x) \leq y \tag {4.26}
$$

One example is consumption, where one need not spend all of one's income. How does optimization under inequality constraints differ from the case with constraints? The way to think about this to recognize that if the constraint does not bind, then  $\lambda^{*} = 0$ . This leads to a modified first order condition

$$
\lambda (g (x) - y) = 0 \tag {4.27}
$$

relative to (4.26). For (4.27), at least one of  $\lambda = 0$  or  $g(x) - y = 0$ . This is called a complementary slackness condition.

# Example: Consumption

The standard consumption problem is: maximize  $u(c)$  such that  $pc \leq I$ , where the commodity bundle is nonnegative. Denoting prices as  $p$  and income as  $I$ , the problem is formally

$$
\max_{c, \lambda} u (c) - \lambda (p c - I) \tag {4.28}
$$

First order conditions are

$$
\forall k \frac{\partial u (\boldsymbol {c})}{\partial \boldsymbol {c}_{k}} = \lambda p_{k} \tag {4.29}
$$

and

$$
\lambda (p c - I) = 0 \tag {4.30}
$$

In (4.30),  $\lambda \neq 0$  which will be the case so long as marginal utility of consumption is always positive for at least one good, which ensures all income is spent. This is a relatively natural assumption for this simple problem since there is no possibility of saving allowed. Richer consumption problems of course would allow for savings.

Manipulation of (4.29) yields

$$
\left. \frac{\partial u (\boldsymbol {c})}{\partial \boldsymbol {c}_{k}} \right/ \frac{\partial u (\boldsymbol {c})}{\partial \boldsymbol {c}_{l}} = \boldsymbol {p}_{k} / \boldsymbol {p}_{l} \tag {4.31}
$$

which is the standard condition that utility maximization implies that marginal utility ratios are proportional to prices.

Finally, note from (4.25) that, for this consumption problem,  $\lambda$  is the marginal utility of income.

# Lecture Notes 5: Probability: Theory and Applications to Decision Theory

In these notes I review some selected facts about probability theory. Partially I wish to demystify some jargon that appears in economics papers. More important, I present some results of use in formal modelling and in policy evaluation.

# i. Probability measures and densities

Consider a random variable  $x$ . The support of a random variable is the set of possible values it can equal; denote this set as  $X$ . Formally, probabilities are assigned to subsets of  $s \subset X$ , call this assignment  $\mu(s)$ . Let  $S$  denote the collection of subsets over which probabilities are defined. By assumption the support  $X$  and the null set  $\phi$  lie in  $S$ .  $\mu(s)$  is a probability measure with respect to the collection  $S$  if

1. $0 \leq \mu(\mathbf{s}) \leq 1$
2. $\mu(X) = 1$
3. For any countable  $^1$  sequence of subsets  $\mathsf{s}_1\dots \mathsf{s}_K$  that is disjoint, i.e.  $\forall i\neq j$

$$
\mathbf {s}_{i} \cap \mathbf {s}_{j} = \phi , \mu (\mathbf {s}_{i} \cup \mathbf {s}_{j}) = \mu (\mathbf {s}_{i}) + \mu (\mathbf {s}_{j})
$$

The richness of a probability specification derives from the richness of sets over which probabilities are assigned. If  $X = R$ , the rich set for which probabilities are defined will typically be the Borel sets of  $R$ , which consists of the all intervals  $(a, b]$  and all

countable complements and unions of the elements of the collection, i.e. the set is closed with respects to countable complements and unions. When a paper says that probabilities are being defined over the Borel sets, it is saying (in a rigorous and likely pretentious way) that probabilities are defined on all subsets that might be of interest. Typically, the models economists work with involve random variables whose support are either 1) the real line denoted as  $R$ , or an interval of the real line or 2) the integers, typically denoted as  $Z$ , or a subset of integers. The key difference is whether the support of  $x$  is continuous or discrete. Probability densities typically refer to the case where the support  $X$  is continuous. I will usually refer to probability measures in order to avoid worrying about whether the supports of variables are discrete, continuous, or a mix.

For pairs of random variables, the joint probability measure  $\mu(x,y)$  is defined analogously, as are general vectors of probabilities.

# ii. Expected values and variances

In models involving random variables, we will often work with expected values and variances. The expected value of  $x$  is defined as

$$
E (x) = \sum_{x \in X} x \mu (x) \tag {5.1}
$$

when  $x$  is discrete while it is defined as

$$
E (x) = \int x \mu (x) d x \tag {5.2}
$$

when  $x$  is continuous.

The variance of  $x$  is

$$
\operatorname{va r} (x) = E \left(\left(x - E (x)\right)^{2}\right) = E \left(x^{2}\right) - E (x)^{2} \tag {5.3}
$$

The variance is the most common measure of the dispersion of the random variable i.e. how variable it is. The standard deviation of a random variable is defined as

$$
\operatorname{sd} (x) = \sqrt{\operatorname{va r} (x)} \tag {5.4}
$$

and is used as well

For a pair of random variables,  $x$  and  $y$ , the covariance is defined as

$$
\operatorname{co v} (x y) = E ((x - E (x)) (y - E (y))) = E (x y) - E (x) E (y) \tag {5.5}
$$

and is a measure of how the random variables move together. Associated with the notion of a covariance is the correlation between two random variables

$$
\operatorname{co rr} (x y) = \frac{\operatorname{co v} (x y)}{\operatorname{sd} (x) \operatorname{sd} (y)} \tag {5.6}
$$

The correlation measures how tightly two variables move together. To see the difference, consider  $y = x + \varepsilon$ , where  $\operatorname{cov}(x, \varepsilon) = 0$ . In this case,  $\operatorname{cov}(xy) = \operatorname{var}(x)$  regardless of the value of  $\operatorname{var}(\varepsilon)$ . However, as  $\operatorname{var}(\varepsilon) \to \infty$ ,  $\operatorname{corr}(xy) \to 0$ .

# iii. Conditional probabilities

We will often be interested in the conditional probabilities of the form  $\mu(x|y)$ . For example, we may be concerned about the conditional probability of a person's income tomorrow conditional on their income today. More generally, conditional probabilities arise when individuals have information that is relevant to assessing uncertainty.

The standard formula for conditional probabilities is

$$
\mu (x \mid y) = \frac{\mu (x , y)}{\mu (y)} \tag {5.7}
$$

which may be rewritten as

$$
\mu (x, y) = \mu (x | y) \mu (y) \tag {5.8}
$$

The latter expression is intuitive: the probability that two events happen equals the probability that one event happens given a second event, multiplied by the probability of the second event.

The relationships between unconditional and conditional expected values and variances are sometimes called Adam's Law and Eve's Law respectively.

# Adam's Law

$$
E \left(E (x | y)\right) = E (x) \tag {5.9}
$$

Here is a proof for continuous  $x$

$$
\begin{array}{l} E (E (x | y)) = E (x) \\ E (E (x | y)) = \int_{y} E (x | y) \mu (y) d y = \\ \int_{y} \left(\int_{x} x \mu (x | y) d x\right) \mu (y) d y = \\ \int_{x} x \left(\int_{y} \mu (x | y) \mu (y) d y\right) d x = \\ \int_{x} x \mu (x) d x = \\ E (x) \\ \end{array}
$$

In words, the expected value of a random variable can be derived from weighting the conditional expected values by the probabilities of the realized values on which the conditioning was done.

Eve's Law is

$$
\operatorname{va r} (x) = E (\operatorname{va r} (x | y)) + \operatorname{va r} (E (x | y)) \tag {5.10}
$$

Here is a proof.

$$
\begin{array}{l} E \left(\operatorname{va r} (x | y)\right) = E \left(E \left(x^{2} | y\right)\right) - E \left(E (x | y)^{2}\right) = \tag {5.11} \\ E \left(x^{2}\right) - E \left(E (x | y)^{2}\right) \\ \end{array}
$$

$$
\begin{array}{l} \operatorname{va r} \left(E (x | y)\right) = E \left(E (x | y)^{2}\right) - \left(E (E (x | y))\right)^{2} = \tag {5.12} \\ E \left(E (x | y)^{2}\right) - E (x)^{2} \\ \end{array}
$$

Add these equations together to produce the result.

There is an important comparison to draw between equations (5.9) and (5.10). In (5.9), the unconditional expected value is equal to a weighted average of expected values, i.e.  $E\big(E(x|y)\big)$ . The parallel term appears in (5.10),  $E\big(\mathrm{var}(x|y)\big)$ . But, a second term appears in (5.8) that does not appear in (5.9),  $\mathrm{var}\big(E(x|y)\big)$ . This term captures the fact that the conditional expected values are changing across different values of  $y$ . This will prove to be important in thinking about uncertainty in policy contexts.

Eve's law says something important about policy evaluation. Suppose that  $y$  is a model of an economic environment. In other words, we start with conditional expectations and variances of an outcome given a set of assumptions about how the world works. Then, even though we are certain about an outcome given the environment, i.e. each value of  $\text{var}(x|y)$  is small, we may be uncertain about the outcome because  $E(x|y)$

itself varies across models. See Durlauf, Fu, and Navarro () for an application to the deterrent effect of capital punishment.

# iv. Jensen's lemma

There is an important probability inequality that one should know, called Jensen's lemma. The lemma says the following.

$$
\text{If} f (x) \text{is co nc av e ,} E (f (x)) \leq f (E (x)) \tag {5.13}
$$

To understand why this is the case, suppose that  $x$  takes on two values  $\overline{x}$  and  $\overline{\overline{x}}$  with probabilities  $p$  and  $1 - p$  denoting the support values and associated probabilities. The lemma in this case can be restated as

$$
\text{If} f (x) \text{is co nc av e ,} p f (\bar {x}) + (1 - p) f (\bar {\bar {x}}) \leq f (p \bar {x} + (1 - p) \bar {\bar {x}}) \tag {5.14}
$$

which is true by definition of a concave function. To see why it compares to general probability measures for  $x$ , compare  $f(x)$  to  $g(x) = a + bx$ , where  $a$  and  $b$  are chosen so that  $f(Ex) = g(Ex)$ , i.e.  $g(x)$  is the tangent line of  $f(x)$  at  $x = Ex$ . Since  $f(x)$  is concave, then  $g(x) \geq f(x)$  for all values of  $x$  and so  $g(x)\mu (x) \geq f(x)\mu (x)$  and thus  $\int_{x}g(x)\mu (x)dx \geq \int_{x}f(x)\mu (x)dx = Ef(x)$ . However,  $\int_{x}g(x)\mu (x)dx = f(Ex)$ , which proves the lemma.

To see why this is lemma important, suppose that  $f(x)$  is a function that relates utility to income. Would an individual with such preferences rather receive the expected value of their income with certainty or receive a random income with that same expected value? If the utility function is concave, the answer is the individual would prefer to receive the expected value with certainty. We return to this below.

# v. Maximization under uncertainty

Suppose that one chooses a policy  $p$  to maximize

$$
f (x, p) \tag {5.15}
$$

where  $x$  is not known at the time the policy is chosen, but can be characterized by a probability measure  $\mu(x)$ . This is a very different problem from the sort studied in Lecture Notes 2 since the consequence of the policy is not known at the time it is chosen, i.e. the value of  $f(\cdot, \cdot)$  uncertain. How to proceed?

A standard way to address the uncertainty is to maximize the expected value of this function. Given the objective of maximizing expected value, one can use maximization tools of the type described in Lecture Notes 4. What does this imply for first order conditions? Consider the discrete case

$$
E (f (x, p)) = \sum_{x} f (x, p) \mu (x) \tag {5.16}
$$

The first order condition for maximization is

$$
\sum_{x} \frac{\partial f (x , p)}{\partial p} \mu (x) = E \frac{\partial f (x , p)}{\partial p} = 0 \tag {5.17}
$$

The analogous condition for the continuous case is

$$
\int_{x} \frac{\partial f (x , p)}{\partial p} \mu (x) d x = 0 \tag {5.18}
$$

Hence both cases reduce to

$$
E \left(\frac{d f (x , p)}{d p}\right) = 0 \tag {5.19}
$$

This makes intuitive sense. To maximize the expected value of a function, one increases  $p$  until the expected marginal effect is zero.

# Example 1: Consumption under uncertainty

Suppose an individual has income  $I$  at time 0 and will use it for consumption in periods 0 and 1,  $c_0$  and  $c_1$  respectively. Utility of the agent is

Income can be saved by purchasing an asset. The gross rate of return on the asset is  $R$ , thus if  $s$  is saved at time 0, this will produce consumption of  $Rs$  at time 1. The agent's utility is assumed to obey

$$
u \left(\mathbf {c}_{0}\right) + \beta u \left(\mathbf {c}_{1}\right) \tag {5.20}
$$

Here,  $u(\cdot)$  measures within-period consumption utility and  $\beta$  is a discount rate,  $\beta \geq 0$ .  $\beta$  is sometimes called the pure rate of time preference.  $\beta < 1$  can capture the idea that an individual is impatient.

The expression in (5.20) can be rewritten as

$$
u (I - s) + \beta u (R s) \tag {5.21}
$$

where (5.21) substitutes in the within-period budget constraints for consumption,  $c_0 = I - s$  and  $c_1 = Rs$ . The decision problem for the agent is therefore simple: choose a level of savings  $s$  to maximize utility.

Suppose that the real rate of return on savings is unknown and that the individual maximizes expected utility. Following what has been discussed, expected utility maximization implies

$$
- u^{\prime} (I - s) + E \beta u^{\prime} (R s) R = 0 \tag {5.22}
$$

or (recalling the within period budget constraints)

$$
u^{\prime} \left(\mathbf {c}_{o}\right) = E \beta R u^{\prime} \left(\mathbf {c}_{1}\right) \tag {5.23}
$$

which in turn means

$$
E \left(R \beta \frac{u^{\prime} \left(c_{1}\right)}{u^{\prime} \left(c_{0}\right)}\right) = 1 \tag {5.24}
$$

Using the definition of a covariance, (5.24) can be rewritten<sup>2</sup>

$$
\operatorname{co v} \left(R \beta \frac{u^{\prime} \left(c_{1}\right)}{u^{\prime} \left(c_{o}\right)}\right) + E (R) E \left(\beta \frac{u^{\prime} \left(c_{1}\right)}{u^{\prime} \left(c_{o}\right)}\right) = 1 \tag {5.25}
$$

which implies

$$
E (R) = \frac{1 - \operatorname{co v} \left(R \beta \frac{u^{\prime} \left(c_{1}\right)}{u^{\prime} \left(c_{o}\right)}\right)}{E \left(\beta \frac{u^{\prime} \left(c_{1}\right)}{u^{\prime} \left(c_{o}\right)}\right)} \tag {5.26}
$$

The latter formula tells us that the expected return on the asset will be related to the covariance of the return with  $\beta \frac{u'(c_1)}{u'(c_o)}$ .

Suppose now there is a risk free asset in addition to the original asset I described. In equilibrium, an individual will construct a portfolio of assets to maximize expected utility. Suppose that each asset is held in the portfolio. This means that the first order condition (20) must hold for every asset. In other words, the marginal benefit to saving a bit more using a given asset must equal the marginal cost in foregone period 0 utility. The rate of return on the risk free asset,  $R_{f}$ , following (5.24) will fulfill

$$
E \left(\beta R_{f} \frac{u^{\prime} \left(c_{1}\right)}{u^{\prime} \left(c_{o}\right)}\right) = 1 \tag {5.27}
$$

which implies

$$
R_{f} = \frac{1}{E \left(\beta \frac{u^{\prime} \left(c_{1}\right)}{u^{\prime} \left(c_{o}\right)}\right)} \tag {5.28}
$$

The risk free rate factors out of the expected value (5.27) because it is certain.

We can use these formulas to learn about the relationship between the expected return of a risky asset and a risk free asset. Substituting (5.28) into (5.26)

$$
E (R) = \left(1 - \operatorname{co v} \left(R \beta \frac{u^{\prime} \left(c_{1}\right)}{u^{\prime} \left(c_{o}\right)}\right)\right) R_{f} \tag {5.29}
$$

which produces the formula

$$
E (R) - R_{f} = - R_{f} \operatorname{co v} \left(R \beta \frac{u^{\prime} \left(c_{1}\right)}{u^{\prime} \left(c_{o}\right)}\right) \tag {5.30}
$$

Use eq. (5.28), to substitute out  $R_{f}$  from the right hand side of (5.30). Note that  $u^{\prime}(c_{o})$  is a constant with respect to the calculation of the expected value and so factors out from numerator and denominator. This allows us to rewrite (5.30) as

$$
E (R) - R_{f} = - \frac{\operatorname{co v} \left(R u^{\prime} \left(c_{1}\right)\right)}{E \left(u^{\prime} \left(c_{1}\right)\right)} \tag {5.31}
$$

which is known as the consumption capital asset pricing model and provides a theory of interest rate determination for a risky asset.  $E(R) - R_f$  is the risk premium for the risky asset versus the risk free asset. This formula for the risk premium is called the consumption capital asset pricing model and is a foundational formula in the theory of finance. It says that the differences in the expected rate of returns of assets depends on  $\frac{\operatorname{cov}\left(R u'(c_1)\right)}{E\left(u'(c_1)\right)}$ , the larger this value, the lower the expected rate of return.

There is a powerful idea behind (5.31). Notice first, that the expected return on a risky asset is not determined by the variance of the return. Variance, in other words is not the appropriate measure of riskiness,  $-\frac{\operatorname{cov}\left(R u^{\prime}\left(c_{1}\right)\right)}{E\left(u^{\prime}\left(c_{1}\right)\right)}$  is the appropriate measure. Why? The key is  $\operatorname{cov}\left(R u^{\prime}\left(c_{1}\right)\right)$ ; this is where the uncertainty in  $R$  appears. If this

covariance is positive, the asset pays more when consumption is lower. As such, it is a hedge against consumption risk, and consumption is after all the only determinant of utility. When  $\operatorname{cov}\big(Ru'(c_1)\big)$  is negative, then the asset pays relative more when consumption is relatively high, but less when consumption is lower. As such, the asset does not hedge against consumption risk, and so a risk premium is necessary to hold the asset.

# Example 2. Characterizing risk aversion

Consider an individual who is comparing consumption  $\overline{c}$  with certainty versus an consumption  $\overline{c} + \varepsilon$  where  $\varepsilon$  has zero mean and finite variance. To say an agent is risk averse is to say they prefer certainty; to say they are risk loving means the opposite. From Jensen's lemma, we saw that a concave utility implies risk aversion. I focus on this case to see how the degree of risk aversion may related to the shape of the function and thereby provide a measure of risk aversion.

To do this, assume that  $\varepsilon$  is small so that  $u\big(\overline{c} +\varepsilon \big)$  can be approximated by a second order Taylor series expansion:

$$
u (\bar {c} + \varepsilon) \approx u (\bar {c}) + \frac{d u (\bar {c})}{d c} \varepsilon + \frac{1}{2} \frac{d^{2} u (\bar {c})}{d c^{2}} \varepsilon^{2} \tag {5.32}
$$

Take expected values of both sides of (5.32), which yields

$$
E u (\bar {c} + \varepsilon) \approx u (\bar {c}) + \frac{1}{2} \frac{d^{2} u (\bar {c})}{d c^{2}} \sigma_{\varepsilon}^{2} \tag {5.33}
$$

(Notice that the second term in the expansion is 0 since  $E\frac{du(\overline{c})}{dc}\varepsilon = \frac{du(\overline{c})}{dc}E\varepsilon = 0$ . This is why one needs a second order expansion to describe the utility consequences of the uncertainty.)

Suppose that the individual can purchase an insurance policy with price  $p$  that will pay off  $-\varepsilon$ , i.e. it offsets the uncertainty completely. Utility under the insurance policy will equal

$$
u (\bar {c} - p) \approx u (\bar {c}) - \frac{d u (\bar {c})}{d c} p \tag {5.34}
$$

What price equates expected utility in the two cases? Manipulation of (5.33) and (5.34) yields.

$$
p = - \frac{1}{2} \frac{d^{2} u (\bar {c}) / d c^{2}}{d u (\bar {c}) / d c} \tag {5.35}
$$

The coefficient of absolute risk aversion, due to economists Kenneth Arrow and John Pratt, is defined as

$$
A = - \frac{d^{2} u (\bar {c}) / d c^{2}}{d u (\bar {c}) / d c} \tag {5.36}
$$

There is an associated coefficient of relative risk aversion, which is derived from determining how much an individual would pay to eliminate multiplicative uncertainty, i.e. derives from assuming that in absence of insurance, consumption is  $\overline{c}\varepsilon$ . The coefficient of relative risk aversion  $R$  is

$$
R = - c \frac{d^{2} u (\bar {c}) / d c^{2}}{d u (\bar {c}) / d c} \tag {5.37}
$$

# References

Durlauf, S., C. Fu, and S. Navarro. 2012. "Assumptions Matter: Model Uncertainty and the Deterrent Effect of Capital Punishment." *American Economic Review* 102: 487-492.

# Lecture Notes 6: Utility Functions, Budget Constraints, Demand Functions

These notes describe the background components, from which the microeconomics of consumer theory are derived. Consumer theory is an example of the theory of choice.

In the standard consumption problem, individuals choose consumption bundles  $\mathbf{c} = (\mathbf{c}_1 \dots \mathbf{c}_K)$  subject to a price vector  $\mathbf{p} = (\mathbf{p}_1, \dots, \mathbf{p}_K)$  and income  $y$ . Prices and income are known with certainty.

# 1. Preferences

What does it mean to say an economic actor has preferences over consumption bundles? To say an actor has preferences with respect to consumption bundles is to say she can rank the bundles in terms of desirability. Formally, to say that two bundles  $c$  and  $c'$  can be ranked is to say that one of the following relations exist between them

Agent weakly prefers  $c'$  to  $c$ , which is denoted at  $c \preceq c'$

Agent weakly prefers  $c$  to  $c'$ , which is denoted as  $c' \preceq c$

Agent is indifferent between  $c$  and  $c'$ , which is denoted as  $c \sim c'$ .

If  $c \preceq c'$  but  $c' \preceq c$  then  $c'$  is strongly preferred to  $c$ , which is denoted as  $c \prec c'$ .

The rankings are said to be ordinal, since they do not involve quantitative statements about the bundles, i.e. they order the bundles.

# 2. Utility functions

Utility functions are a construct that provides a particular mathematical representation of individual preferences. No economist believes that individuals explicitly make choices based on utility functions. What do I mean by this? Under certain properties about an individual's preferences, these preferences can be mathematically represented by a utility function which maps consumption bundles to numbers that represent their relative desirability, in the sense that a consumption bundle with a higher value of the utility function is preferred to consumption bundle with a lower utility, an agent is indifferent between bundles with equal utility, etc. The utility function thus encodes the preferences. Utility, since it does assign numbers to bundles, is a said to be a cardinal relationship.

What are the assumptions on preferences that imply that a utility function exists? Denote  $C \subset R^K$  as the set of consumption bundles over which an agent has preferences. (All consumption bundles are nonnegative.) Suppose that the following conditions hold for an individual's preferences

1. For all  $\overline{c} \in C$ , the sets  $\{c \text{ suchthat } c \preceq \overline{c}\}$  and  $\{c \text{ suchthat } c \succeq \overline{c}\}$  are closed.
2. For all pairs  $c$  and  $c'$  in  $C$ , either  $c \preceq c'$ ,  $c' \preceq c$ , or  $c \sim c'$ .
3. For any triple,  $c$  and  $c''$ , if  $c \preceq c'$  and  $c' \preceq c''$  implies  $c \preceq c''$

Then there exists a continuous function  $u(c)$  that describes these preferences.

What do the assumptions do?

Assumption 1 says, in essence, that there are no jumps in the underlying preferences. In other words, if one considers a set of consumption bundles that gets close to some bundle, and all are ranked as preferred to  $\overline{c}$ , the limit does not "suddenly" become less preferred. Substantively, this rules out cases of lexicographic preferences, which refer to the case where an individual prefers any amount of one good to any amount of another. Here is an example. Suppose that there are two goods, so  $c = (c_1, c_2)$ . If it is

the case that  $c \prec c'$  for any  $c$  and  $c'$  such that  $c_1 < c_1'$ , then preferences are lexicographic. Hence, under these lexicographic preferences, if  $c_1$  denotes food and  $c_2$  denotes books, then the agents always prefer the bundle with more food no matter how much food is in each bundle and regardless of differences in the level of books that are consumed in the two bundles. In other words, 1 extra calorie is preferred to any number of books regardless of the initial calorie level.

Assumption 2 says that preferences are complete. For all possible consumption bundles the consumer either prefers one to the other, or is indifferent. In other words, comparisons can be made for all possible consumption bundles.

Assumption 3 requires that preferences are transitive. This is often regarded as a rationality requirement, though that is an intuition not a rigorous proposition and is disputed.

The transformation of preferences into a utility function is not unique. Suppose an agent possesses preferences that fulfill the conditions described above and let  $u(\cdot)$  denote a utility function that is generated by these preferences. Consider a transformation of this utility function  $r(c) = f(u(c))$ . Suppose that the transformation  $f(\cdot)$  function is monotonic. This means that if  $u(c) \leq u(c')$  then  $f(u(c)) \leq f(u(c'))$ . In this case,  $r(c)$  will also be a representation of the agent's preferences. Why? The ranking of consumption bundles under  $u(c)$  will be the same as occurs under  $r(c)$  and it is the rankings of these consumption bundles that constitute individual preferences.

Preferences are typically assumed to have additional properties beyond 1-3. One property is strict monotonicity, which means that for any pair of consumption levels  $c$  and  $c'$  if  $\forall i$ ,  $c_i \leq c_i'$  and, for at least one  $i$ ,  $c_i < c_i'$ , then  $c \prec c'$ . In words, more is always preferred to less. This property implies that the utility function associated with these pair of consumption bundles has the property that  $u(c) < u(c')$ .

Second, preferences are typically assumed to be convex. Preferences are convex if

For any  $c \preceq c'$  and  $c \preceq c''$ , then  $\forall \lambda \in (0,1)$ ,  $c \preceq \lambda c' + (1 - \lambda)c''$

This is a weak form for a preference for averages of bundles over the original bundles. It is weak in the sense that it only says that if bundles are separately weakly preferred, averages must also be weakly preferred. The analogous utility property is quasi-concavity. A utility function is quasi-concave if

$$
u (\boldsymbol {c}) \leq u (\boldsymbol {c}^{\prime}) \leq u (\boldsymbol {c}^{\prime \prime}) \mathrm{im pl ie s} u (\boldsymbol {c}) \leq u \left(\lambda \boldsymbol {c}^{\prime} + (1 - \lambda) \boldsymbol {c}^{\prime \prime}\right), \lambda \in [ 0, 1 ]
$$

Convexity of preferences implies quasi-concavity of utility functions, as can be seen in a comparison of the two definitions.

A utility function is concave if

$$
\lambda u (\boldsymbol {c}) + (1 - \lambda) u (\boldsymbol {c}^{\prime}) \leq u (\lambda \boldsymbol {c} + (1 - \lambda) \boldsymbol {c}^{\prime}), \lambda \in [ 0, 1 ]
$$

Concavity is a stronger property than quasi-concavity, i.e. concavity implies quasi-concavity, but not the converse. It implies a stronger form of a preferences for averages.

Concavity is not necessarily preserved by monotonic transformations of a utility function, whereas quasi-concavity is preserved. As such, quasi-concavity is an ordinal property while concavity is a cardinal property.

Here are a couple of concepts related to utility functions that are useful.

# indifference curves

For a given level of utility,  $\bar{u}$ , the set

$$
\left\{c \text{su ch th at} u (c) = \bar {u} \right\} \tag {1}
$$

is called an indifference curve. Each indifference curve defines a set of consumption bundles between which a consumer is indifferent.

# marginal rate of substitution

The marginal rate of substitution represents the tradeoffs between changes in consumption along an indifference curve. If  $u(c) = \overline{u}$ , changes in  $c_i$  and  $c_j$  that preserve the level of utility must fulfill

$$
\begin{array}{l} \frac{\partial u (\boldsymbol {c})}{\partial \boldsymbol {c}_{i}} d \boldsymbol {c}_{i} + \frac{\partial u (\boldsymbol {c})}{\partial \boldsymbol {c}_{j}} d \boldsymbol {c}_{j} = 0 \Rightarrow \tag {2} \\ \frac{d \boldsymbol {c}_{i}}{d \boldsymbol {c}_{j}} = - \frac{\partial u (\boldsymbol {c})}{\partial \boldsymbol {c}_{j}} / \frac{\partial u (\boldsymbol {c})}{\partial \boldsymbol {c}_{i}} \\ \end{array}
$$

$\frac{dc_{i}}{dc_{j}}$ , which is of course the slope of the indifference curve, is called the marginal rate of substitution. Under strict monotonicity, this slope is negative.

Convexity of preferences and hence, quasi-concavity of the utility function, controls the shape of an indifference curve. Notice for given utility  $\overline{u}$  the indifference curve defines the boundary of the set defined by all  $c$  such that  $u(c) \geq \overline{u}$ . Convexity of preferences (combined with strict monotonicity) thus gives indifference curves their standard convex shape.

# 3. Budget constraints

The budget constraint for utility maximization under certainty is

$$
\sum_{k} p_{k} c_{k} = p^{\prime} c \leq y \tag {3}
$$

In words, the income of the agent places an upper bound on the expenditures that can be made for consumption.

This formulation needs to be unpacked for dynamic environments. As stated, if an individual does not spend her full income, nothing is done with it. A more natural model would allow for savings  $s$ . But this leads to the question of why an individual would save. From the perspective of consumption theory, the answer is straightforward, once one is explicit about time. Savings today allow for consumption tomorrow. One can go farther and consider borrowing, which allows for consumption today to be increased at the expense of future consumption. The formulation we have defined can accommodate these ideas if the elements of  $c$  involve consumption at different dates.

# intertemporal consumption

Consideration of consumption at different dates leads to complications. First, one has to think carefully about preferences. Second, one needs to think carefully about the nature of the prices with respect to which consumption at different dates can be traded off. These tradeoffs will involve the interest rates associated with the assets by which borrowing and saving transfer income across time periods. Third, one needs to think about the meaning of the income constraint. Individuals have distinct incomes at different time periods, and will, via borrowing and lending, link consumption in a given period to incomes in others. Hence dynamic models require considerations of intertemporal budget constraints.

# Example: intertemporal consumption allocation with additively separable preferences and constant discount rate

Suppose an individual will live  $T$  periods,  $t = 1 \dots T$  and consumes  $c_t$  in period  $t$ . She is going to make consumption decisions starting at time 1. A common representation of  $u(c)$ , the utility of an individual from the vantage point of  $t = 1$ , is

$$
u (\boldsymbol {c}) = \sum_{t = 1}^{T} \beta^{t - 1} v \left(\boldsymbol {c}_{t}\right) \tag {4}
$$

The idea is that the within period utility from consumption is determined by within period utilities  $\nu(\cdot)$ , but that future utility is discounted by  $\beta$ . This discount rate is sometimes called the pure rate of time preference.

Suppose that the only mechanism for saving is a risk free asset which has a gross return of  $R$  between periods  $t$  and  $t + 1$ . In words, there is a constant interest rate throughout the individual's life. Assume that individuals may borrow or lend at this rate, so long as they do not leave any debt at death. Suppose that the individual will have income levels  $I_{t}$  in the  $T$  periods of life. In this case, from the vantage point of time 1, the constraint  $y$  is the present discounted value of the income stream, i.e.

$$
y = \sum_{t = 1}^{T} \frac{1}{R^{t - 1}} I_{t} \tag {5}
$$

Further, assume that the price of consumption in a given period is 1. The combination of the assumption that the within period price is 1 and the gross interest rate is  $\bar{R}$ , means that the interest rates also reflect the relative prices of goods in different periods. If the price of the consumption good is 1 at time  $t$ , then the price is  $R^{-1}$  at  $t + 1$ . Why? If a unit of consumption is foregone at  $t$ , then  $R$  units may be consumed at  $t + 1$ . Hence the present discounted value of consumption is

$$
p^{\prime} c = \sum_{t = 1}^{T} \frac{1}{R^{t - 1}} c_{t} \tag {6}
$$

Together, (5) and (6) produce an intertemporal budget constraint

$$
\sum_{t = 1}^{T} \frac{1}{R^{t - 1}} I_{t} = \sum_{t = 1}^{T} \frac{1}{R^{t - 1}} c_{t} \tag {7}
$$

This formulation is the basis of dynamic models of consumption.

# 4. Demand theory

The standard utility maximization problem is

$$
\max_{c, \lambda} u (c) + \lambda \left(y - p^{\prime} c\right) \tag {8}
$$

where  $p$  denotes prices and  $y$  denotes income. The solution to this problem produces a consumption function for an individual of the form  $x(p, y)$ . This is sometimes called the Marshallian demand function, after Alfred Marshall.

There are intuitions that  $x_{i}(p,y)$  is decreasing in  $p_{i}$  and increasing in  $y$ , but neither is logically entailed by utility maximization under the preference assumptions that have been made. A good such that  $x_{i}(p,y)$  is increasing in  $p_{i}$  is called a Giffen good. A good such that  $x_{i}(p,y)$  is decreasing in  $y$  is called an inferior good, if demand is increasing in income it is said to be a normal good.

By implication, the level of an individual's utility will be determined by her income and the prices she faces. One can evaluate the utility function at the Marshallian demand functions, i.e.

$$
v (p, y) = u (x (p, y)) \tag {9}
$$

to produce this relationship.  $\nu (p,y)$  is called the indirect utility function.

As an exercise, verify that that  $\frac{d\nu(p,y)}{dp_i} = -\lambda (p,y)x_i(p,y)$  where  $\lambda (p,y)$  is the value of the Lagrange multiplier that solves (8).

# compensated demand functions

There is a second type of demand function that is of interest. Suppose that one fixes an individual's utility at some value  $u$ . One can ask what is the minimum level of income that necessary to produce this level of utility. In other words, one can consider the minimization problem

$$
\min_{c} p^{\prime} c \text{su ch th at} u (c) \geq u \Leftrightarrow \tag {10}
$$

$$
\min_{c} L = p^{\prime} c + \lambda (u - u (c))
$$

The solution to (10) produces the Hicksian demand function  $h(p, u)$ , named after an eminent economic theorist John Hicks.

The analog to the indirect utility function for Hicksian demand is the expenditure function,  $e(p,u)$ , which identifies the level of income produced by solving (10), i.e.

$$
e (p, u) = p^{\prime} h (p, u) \tag {11}
$$

Why are Hicksian demand functions of interest? Hicksian demand functions help reveal income and substitution effects. When a price increases, the set of feasible consumption bundles shrinks. The consequence of this shrinkage is conceptualized as an income effect since it is analogous to the effect of a reduction of income. This change in the size of the budget set is distinct from the fact that if one price changes, relative prices between different consumption have changed. The relative price effect on consumption choices is known as a substitution effect. Both effects are manifested in Marshallian demand functions.

The envelope theorem immediately provides a relationship between the expenditure function and the Hicksian demand functions.

$$
\frac{d e (p , u)}{d p_{i}} = h_{i} (p, u) \tag {12}
$$

which is sometimes called Shephard's lemma, after economist Ronald Shephard. Prove this as an exercise.

What is the relationship between Marshallian and Hicksian demand functions? It must be the case, that given a level of utility  $u$  the Marshallian demand given the income to produce it is the Hicksian demand,

$$
x_{i} (p, e (p, u)) = h_{i} (p, u). \tag {13}
$$

just as the Hicksian demand at a given value of the indirect utility function produces the Marshallian demand function.

$$
h_{i} (p, v (p, y)) = x_{i} (p, y) \tag {14}
$$

Proofs of (13) and (14) are left as exercises.

# Slutsky equation

A classic result in demand theory decomposes the effects of a price change on Marshallian demand,  $\frac{\partial x_i(p,y)}{\partial p_i}$ , into income and substitution effects. Differentiating (13) with respect to  $p_i$

$$
\begin{array}{l} \frac{\partial x_{i} (p , \boldsymbol {e} (p , u))}{\partial p_{i}} + \frac{\partial x_{i} (p , \boldsymbol {e} (p , u))}{\partial y} \frac{\partial \boldsymbol {e} (p , u)}{\partial p_{i}} = \\ \frac{\partial x_{i} (p , \boldsymbol {e} (p , u))}{\partial p_{i}} + \frac{\partial x_{i} (p , \boldsymbol {e} (p , u))}{\partial y} h_{i} (p, u) = \tag {15} \\ \begin{array}{c} \frac{\partial h_{i} (p , u)}{\partial p_{j}} \end{array} \\ \end{array}
$$

where the second line uses, Shephard's lemma, to eliminate the derivative of the expenditure function. Substitute eq. (13) into (15) and rearranging terms,

$$
\frac{\partial x_{i} (p , \boldsymbol {e} (p , u))}{\partial p_{i}} = \frac{\partial h_{i} (p , u)}{\partial p_{j}} - \frac{\partial x_{i} (p , \boldsymbol {e} (p , u))}{\partial y} x_{i} (p, \boldsymbol {e} (p, u)) \tag {16}
$$

Since  $e(p, u) = y$  when a consumer has maximized utility

$$
\frac{\partial x_{i} (p , y)}{\partial p_{i}} = \frac{\partial h_{i} (p , u)}{\partial p_{i}} - \frac{\partial x_{i} (p , y)}{\partial y} x_{i} (p, y) \tag {17}
$$

In this decomposition,  $\frac{\partial h_i(p,u)}{\partial p_i}$  represents the substitution effect, i.e. the pure effect of the relative price change, while  $-\frac{\partial x_i(p,y)}{\partial y} x_i(p,y)$  is the income effect associated with the change in the size of the budget set. This is known as the Slutsky equation, after Eugen Slutsky.

The Slutsky decomposition gives some insight into the nature of Giffen goods. A Giffen good, as long ago analyzed by Alfred Marshall, is an inferior good with few substitutes. Here is his classic description in Principles of Economics

a rise in the price of bread makes so large a drain on the resources of the poorer labouring families and raises the marginal utility of money to them so much that they are forced to curtail their consumption of meat and the more expensive

farinaceous<sup>1</sup> foods: and, bread being still the cheapest food which they can get and will take, they consume more, and not less of it.

The idea is that if the price of the good goes up, I still have to buy it, but other goods are eliminated from my consumption bundle.

# 5. Comparing rational and irrational models of consumption

Becker (1962) made a famous argument that budget constraints, by themselves, can produce behaviors that are consistent with the neoclassical model of demand. Here is his argument. Suppose each consumer  $i$  allocates income  $y_{i}$  between commodities  $c_{1}$  and  $c_{2}$ . Suppose consumers randomly choose the fraction of income to spend on each of the two commodities, denote the fraction  $\pi_{i}$  for good 1. Call the demand functions of these "irrational" consumers  $ic$ , so

$$
i \mathbf {c}_{i 1} = \pi_{i} \frac{y_{i}}{p_{1}} \tag {18}
$$

$$
i \boldsymbol {c}_{i 2} = \left(1 - \pi_{i}\right) \frac{\boldsymbol {y}_{i}}{\boldsymbol {p}_{2}}
$$

If one observes how consumption responds to prices, in both cases downward sloping demand functions exist for both individual and in the aggregate. Hence the neoclassical law of demand is mimicked by the implications of a budget constraint.

There is a more extreme form of this argument. Consider the case where consumers are rational in the sense that they choose consumption based on this maximization problem

$$
\max_{c_{1}, c_{2}} \mathbf {c}_{1}^{\alpha_{i}} \mathbf {c}_{2}^{1 - \alpha_{i}} \text{su ch th at} p_{1} \mathbf {c}_{1} + p_{2} \mathbf {c}_{2} = y_{i} \tag {19}
$$

This utility function is called a Cobb Douglas function. From Problem Set 2, the Marshallian demand functions for this problem are

$$
\mathbf {c}_{i 1} \left(\mathbf {p}_{1}, \mathbf {p}_{2}, \mathbf {y}_{i}\right) = \alpha_{i} \frac{\mathbf {y}_{i}}{\mathbf {p}_{1}} \tag {20}
$$

$$
\boldsymbol {c}_{i 2} \left(\boldsymbol {p}_{1}, \boldsymbol {p}_{2}, \boldsymbol {y}\right) = \left(1 - \alpha_{i}\right) \frac{\boldsymbol {y}_{i}}{\boldsymbol {p}_{2}}
$$

Obviously, (18) and (20) cannot be distinguished.

The message of Becker's paper is not that rationality is a vacuous assumption, but rather that standard predictions of rational models can be extremely robust.

# Lecture Notes 7: Decisions and Data

In these notes, I describe some basic ideas in decision theory in the presence of uncertainty and link to statistical models and data. I also consider cases where probabilistic descriptions of the uncertainty are not available. The discussion is similar to our analysis of maximization under uncertainty.

Basic decision theory is constructed from

Data:  $d$

Unknown(s):  $\theta$

Choices:  $c \in C$

Loss function:  $I(\theta, d, c)$

Conditional probability of unknowns given data  $\mu (\theta |d)$

Note that decision theory is expressed in terms of minimizing loss, as opposed to maximizing a payoff. There is no conceptual difference.

The loss function  $I(\theta, d, c)$  embodies both the preferences of the policymaker and the constraints that the socioeconomic environment place on how a policy can affect the objects over which the policymaker has preferences. Note the loss function depends on the data. One assesses the value of an unemployment insurance policy based on what is known about unemployment levels, for example.

The unknown  $\theta$  should be interpreted broadly. It can refer to uncertainty about the parameters in the model that link choices to losses, uncertainty about the model that characterizes the relationship between choices and losses, or

variables unobserved to the policymaker, such as shocks that occur after the choice is made.

# 1. Statistical decision theory

The standard version of statistical decision theory decision involves making choices that minimize expected loss. Specifically, one minimizes the expected loss given available data.

$$
\min_{c \in C} E (I (\theta , d, c) | d) = \min_{c \in C} \int I (\theta , d, c) \mu (\theta | d) \tag {7.1}
$$

As  $d$  varies across its possible values, one has a decision rule that links data to behavior,  $c(d)$ .

This problem illustrates the key question facing an expected loss minimizing policy analyst: how does one construct  $\mu (\theta |d)$ ? To understand this conditional probability, recall that

$$
\mu (\theta | d) = \frac{\mu (\theta , d)}{\mu (d)} = \frac{\mu (d | \theta) \mu (\theta)}{\mu (d)} \tag {7.2}
$$

so that, since  $\mu(d)$  is not a function of  $\theta$ , the probabilities assigned to an unknown can be understood via

$$
\mu (\theta | d) \propto \mu (d | \theta) \mu (\theta) \tag {7.3}
$$

This is the classic Bayesian formula that the posterior probability measure for some unknown,  $\mu (\theta |d)$ , is proportional to the product of the likelihood function  $\mu (d|\theta)$  and the prior probability  $\mu (\theta)$ . The likelihood function indicates how probable the

realized data are for each value of the unknown we care about. The likelihood is a fundamental statistical object. The prior represents the information the analyst possesses about the unknown before (i.e. prior to!) the data are studied.

# priors

The assignment of priors is problematic, since in many (most?) contexts, the analyst does not have a good basis for constructing  $\mu(\theta)$ . This is true in two senses.

First, for many problems one may simply have nothing to say about the ex ante relative probability of different realizations. Some authors have suggested that if one does have prior information, one should assume a flat prior, ie.  $\mu (\theta)$  is constant. This is known as the principle of insufficient reason. It is known to be invalid. Why? To say two things are equally likely a priori does not constitute lack of knowledge, it is a form of knowledge!

A second problem is that whatever information is possessed may not be quantifiable. There are arguments that one can elicit probabilities from individuals from either survey questions or offering bets with different terms, but there does not exist any consensus on whether these can overcome the fact that not all knowledge comes in quantitative form. To say something is unlikely is meaningful, but not a probability.

I will not discuss solutions to these problems, which take us outside the domain of this course.

# 2. Decision theory without probabilities

What if it is impossible to assign probabilities to possible outcomes when a decision must be made? A decision still must be made. What to do?

Environments where the set of possible outcomes is known but where probabilities are not available are called ambiguous. So here I describe aspect of

decision making under ambiguity. The important feature of these approaches is that the support of  $\theta$  is known.

# minimax

The minimax solution to decision making under uncertainty is to choose  $c$  so that is solves

$$
\min_{c \in C} \max_{\theta} I (\theta , d, c) \tag {7.4}
$$

In words, one guards against the worst case scenario, i.e. the worst possible realization of  $\theta$ . The minimax approach is often associated with Abraham Wald (1950). An important axiomatization is due to Itzhak Gilboa and David Schmeidler (1989).

The criterion implicitly means that the policymaker acts as if they are arbitrarily risk averse. Basically, minimax assigns probability 1 to one of possible values of  $\theta$  but not on the basis that the value is certain, but rather it is the worst possible relative to a choice. It treats nature as malevolent, i.e. whatever I choose, nature chooses  $\theta$  to maximize my loss.

# minimax regret

An alternative approach to decision making without assigning probabilities to unknowns is to choose  $c$  to minimize the maximum regret. Minimax regret was originally proposed by Leonard J. Savage (1951) as an alternative to minimax which is less conservative; see Manski (2011) for a conceptual defense and Brock and Durlauf (2015) for a critique. Regret is defined as

$$
r (\theta , d, c) = I (\theta , d, c) - \min_{c \in C} I (\theta , d, c) \tag {7.5}
$$

Regret thus measures the difference between the loss induced by my choice and the loss that would be produced by the best choice. My regret is high when my choice performs badly compared to the best choice. The minimax regret solution is

$$
\min_{c} \max_{\theta} r (\theta , d, c) \tag {7.6}
$$

# Example 1. minimax, minimax regret, and expected loss

Suppose that there are two possible actions by the policymaker,  $c_{1}$  and  $c_{2}$  and two possible states of the world,  $\theta_{1}$  and  $\theta_{2}$ . The following table gives the losses for each policy and state of the world, as well as the maximum loss and maximum regret.

<table><tr><td></td><td>θ1</td><td>θ2</td><td>max loss</td><td>max regret</td></tr><tr><td>c1</td><td>24</td><td>12</td><td>24</td><td>5</td></tr><tr><td>c2</td><td>19</td><td>15</td><td>19</td><td>3</td></tr></table>

As the table indicates, by the minimax criterion and the minimax regret criterion, the policymaker should choose  $c_2$ .

A Bayesian would address the policy problem by assigning probability  $p$  to  $\theta_{1}$  and  $(1 - p)$  to  $\theta_{2}$  and computing expected losses under the two policies. It is obvious that if  $1 - p$  is close enough to 1, the policymaker should choose  $c_{1}$ .

# Example 2. minimax and minimax regret producing different policy choices

# Consider the alternative loss structure

<table><tr><td></td><td>θ1</td><td>θ2</td><td>max loss</td><td>max regret</td></tr><tr><td>c1</td><td>24</td><td>23</td><td>24</td><td>8</td></tr><tr><td>c2</td><td>25</td><td>15</td><td>25</td><td>1</td></tr></table>

Here the minimax policy choice is  $c_{1}$  whereas the minimax regret choice is  $c_{2}$ . This example illustrates the intuitive appeal of minimax regret in that the criterion focuses on differences in policy effects rather than absolute levels.

# Example 3. minimax regret and the independence of irrelevant alternatives property

This example modifies Example 1 by adding a third policy  $c_3$

<table><tr><td></td><td>θ1</td><td>θ2</td><td>max loss</td><td>max regret</td></tr><tr><td>c1</td><td>24</td><td>12</td><td>24</td><td>12</td></tr><tr><td>c2</td><td>19</td><td>15</td><td>19</td><td>15</td></tr><tr><td>c3</td><td>50</td><td>0</td><td>50</td><td>31</td></tr></table>

The introduction of  $c_{3}$  implies that the minimax regret choice is now  $c_{1}$ . This is troubling; the fact that  $c_{3}$  is available has changed the ranking of  $c_{1}$  and  $c_{2}$ . This violates the property of independence of irrelevant alternatives (IIA), which is often taken to be a natural axiom for decision making. The recognition that minimax regret violates IIA is due to Herbert Chernoff (1954).

# Example 4. Another minimax regret IIA violation

Here is another case where a violation of IIA occurs. Compare the analysis of 2 policies

<table><tr><td></td><td>θ1</td><td>θ2</td><td>max loss</td><td>max regret</td></tr><tr><td>c1</td><td>30</td><td>10</td><td>30</td><td>9</td></tr><tr><td>c2</td><td>21</td><td>21</td><td>21</td><td>11</td></tr></table>

with the comparison of 3 policies

<table><tr><td></td><td>θ1</td><td>θ2</td><td>max loss</td><td>max regret</td></tr><tr><td>c1</td><td>30</td><td>10</td><td>30</td><td>20</td></tr><tr><td>c2</td><td>21</td><td>21</td><td>21</td><td>11</td></tr><tr><td>c3</td><td>10</td><td>30</td><td>10</td><td>20</td></tr></table>

$c_2$  is the minimax choice in the three policy case; but if  $c_3(c_1)$  were not available,  $c_1(c_3)$  would be the minimax solution. This seems especially paradoxical (at least to me) given the relationship between the  $c_1$  and  $c_3$  loss structures.

# Hurwicz criterion

One can mix the different approaches that have been described. For example, one can consider problems that incorporate both expected loss (EL) and minimax considerations.

$$
\min_{c \in C} \left(\alpha \max_{\theta} I (\theta , d, c) + (1 - \alpha) E (I (\theta , d, c) | d)\right) \tag {7.7}
$$

This was originally proposed by Leo Hurwicz (1951).

The Hurwicz criterion raises a different idea about ambiguity. Perhaps an individual's preferences do not equate to minimizing expected loss because the individual is sensitive to the worst case scenario in ways that do not scale with that outcome's probability. In Hurwicz formulation,  $\alpha$  is sometimes called the degree of ambiguity aversion.

An obvious context for ambiguity aversion is parenting.

# Some final thoughts

For policymakers these different approaches should be regarded as heuristics. Their appropriateness cannot be disentangled from context. For example, one might, in a vaccine program, mix some ambiguity aversion in a way that is different from the use of nuclear weapons.

Why mention the latter? In the 1950's one of the greatest minds of the  $20^{\text{th}}$  century, John von Neumann argued in favor of a preemptive nuclear strike by the United States on the Soviet Union. Why? Because there was a possibility the Soviet Union would strike first now, or become so relatively powerful that it would in the future. It is easy to how this could be justified as either a minimax (von Neumann's rationale) or a minimax regret choice.

The absurdity of von Neumann's position holds at two levels. First, of course is moral. As we have discussed, one cannot blithely engage in analyses without taking normative considerations seriously. Second, the example illustrates the problem of assigning probability 1 to least desirable events when they have unknown but negligible probabilities.

# References

Brock W., and S. Durlauf, (2015). "On Sturdy Policy Evaluation," Journal of Legal Studies, 44, S447-S473.
Chernoff, H., (1954), "Rational Selection of Decision Functions," Econometrica, 22, 442-443.
Hurwicz, L., (1951), "Some Specification Problems and Applications to Econometric Models," Econometrica, 19, 343-4.
Gilboa, I. and D. Schmeidler, (1989), "Maxmin Expected Utility with Imprecise Probabilistic Information," Journal of Mathematical Economics, 18, 141-153.
Manski, C., (2011), "Actualist Rationality," Theory and Decision: 71: 195-210
Savage, L. J., (1961), "The Theory of Statistical Decision," Journal of the American Statistical Association, 46, 55-67.
Wald, A., (1950), Statistical Decision Functions, New York: John Wiley.

# Lecture Notes 8: Complementarity and Equilibrium

# 1. Basic ideas

In these notes, I discuss complementarity between socioeconomic actors. Complementarity is a fundamental concept in understanding both individual and collective behavior because it characterizes how the attributes of one individual affect the decision problems of others. The term attribute is used as a catchall for two different channels by which these interpersonal effects can manifest themselves. One channel involves the way an individual's characteristics affects others. The other channel involves the effects that one person's choices have on others. The difference between choices and characteristics is that the latter are normally treated as predetermined when considering the equilibrium for a given environment. However, characteristics can evolve over time, so in this sense, both choices and characteristics may be endogenous outcomes of a given socioeconomic environment.

Consider a group of  $I$  individuals. Each individual is associated with a  $K$ -length vector of attributes  $x_{i} \in R^{K}$ . At this stage, the attributes may be choices, characteristics, or some combination of each;  $x_{ia}$  denotes the  $a$ 'th element of  $x_{i}$ . Each vector of attributes produces a payoff

$$
\Phi_{i} \left(x_{i}, x_{- i}\right) \tag {1}
$$

where  $x_{-i}$  denotes the vector composed of attributes of members of the group other than  $i$ . This function is assumed to be twice differentiable.

What features of the interdependence of attributes are of interest? Two features warrant explicit definition.

# Definition 1. Positive Spillovers

The payoff function is said to exhibit positive spillovers from attribute  $b$  of agent  $j$  to agent  $i$  if

$$
\frac{\partial \Phi_{i} \left(x_{i} , x_{- i}\right)}{\partial x_{j b}} \geq 0, j \neq i \tag {2}
$$

Positive spillovers tell us about the payoff level changes for one agent associated with changes in the attributes of others. These are important in calculating the welfare consequences of payoff interdependencies for individuals across after an exogenous change in a characteristic, etc.

For understanding the impact of interdependencies on behaviors, a second definition is essential.

# Definition 2. Complementarity between agent attributes

A payoff function exhibits complementarity between agent  $i$ 's  $a$ th attribute,  $x_{ia}$  and the agent  $j$ 's  $b$ th attribute,  $x_{jb}$ , if

$$
\frac{\partial^{2} \Phi_{i} (x_{i} , x_{- i})}{\partial x_{i a} \partial x_{j b}} \geq 0, j \neq i \tag {3}
$$

One can define an analogous notion of complementarity between agent  $i$  's attributes:

# Definition 3. Complementarity within an agents' attributes

A payoff function exhibits complementarity between agent  $i$  's  $a$  'th attribute  $x_{ia}$  and their  $b$  'th attribute,  $x_{jb}$ , if

$$
\forall \boldsymbol {a} \neq \boldsymbol {b}, \frac{\partial^{2} \Phi_{i} \left(\boldsymbol {x}_{i} , \boldsymbol {x}_{- i}\right)}{\partial \boldsymbol {x}_{i a} \partial \boldsymbol {x}_{i b}} \geq 0 \tag {4}
$$

Note the condition  $a \neq b$ . Complementarity is distinct from convexity of the payoff function, which would involve the case  $a = b$ .

Complementarities restrict how marginal payoff changes in  $i$ 's attributes are affected by changes in the attributes of others. This is immediate from rewriting (4) as

$$
\begin{array}{l} \partial \frac{\partial \Phi_{i} (x_{i} , x_{- i})}{\partial x_{i a}} \\ \hline \partial x_{j b} \end{array} \geq 0  .
$$

Why think about complementarities in this fashion? Suppose that  $x_{ia}$  is a choice variable. The first order conditions for these choices are described by  $\frac{\partial \Phi_i(x_i, x_{-i})}{\partial x_{ia}}$ , thus complementarities matter, at least for noncooperative environments, in determining equilibrium choices for individuals and the population as a whole, for a reason that follows directly from basic economic logic.

The modern theory of complementarity relies on more power mathematical methods than calculus and is able to dispense with continuity and differentiability of the payoff functions. Amir (2005) is a good introduction. For our purposes, you should be aware of two concepts. The first generalizes complementarity to general payoff functions.

# Definition 4. Increasing Differences.

Define  $x_{i, -a}$  as the elements of  $x_i$  other than  $a$  and  $x_{-i,j,-b}$  as the elements of  $x_{-i}$  other than  $x_{jb}$ . Let  $x_{ia}'' > x_{ia}'$  and  $x_{ja}'' > x_{ja}'$ . The payoff function exhibits increasing differences between  $x_{jb}$  and  $x_{ia}$  if

$$
\begin{array}{l} \Phi_{i} \left(X_{i a}^{\prime \prime}, X_{j b}^{\prime \prime}, X_{i, - a}, X_{- i, - j b}\right) - \Phi_{i} \left(X_{i a}^{\prime}, X_{j b}^{\prime \prime}, X_{i, - a}, X_{- i, - j b}\right) \geq \\ \Phi_{i} \left(X_{i a}^{\prime \prime}, X_{j b}^{\prime}, X_{i, - a}, X_{- i, - j b}\right) - \Phi_{i} \left(X_{i a}^{\prime}, X_{j b}^{\prime}, X_{i, - a}, X_{- i, - j b}\right) \tag {5} \\ \end{array}
$$

In words, this condition says that the payoff difference between higher and lower values of  $x_{ia}$  is greater than  $x_{jb}$  is greater. This is the key idea that underlies the way complementarity affects comparisons of choices.

The second definition is more complicated and involves the question of how complementarities affect total payoffs and is called supermodularity. Combine the elements of  $x_{i}$  and  $x_{-i}$  into a single vector  $x$ . Consider two values of this vector,  $x'$  and  $x''$ . Define a new vector  $x' \wedge x''$ , called the meet of  $x'$  and  $x''$ , such that the  $r$ 'th element of the new vector is

$$
\left(x^{\prime} \wedge x^{\prime \prime}\right)_{r} = \min  \left\{x_{r}^{\prime}, x_{r}^{\prime \prime} \right\} \tag {6}
$$

The meet operator thus forms a new vector based on pairwise minima across the corresponding elements of the original vectors. Similarly, one can define the join of  $x'$  and  $x''$ ,  $x' \lor x''$ , by the condition that the  $r$ 'th element of this new vector, equals

$$
\left(x^{\prime} \vee x^{\prime \prime}\right)_{r} = \max  \left\{x_{r}^{\prime}, x_{r}^{\prime \prime} \right\}. \tag {7}
$$

# Definition 5. Supermodularity.

The function  $\Phi_{i}(x)$  is supermodular if

$$
\Phi_{i} \left(x^{\prime} \wedge x^{\prime \prime}\right) + \Phi_{i} \left(x^{\prime} \vee x^{\prime \prime}\right) \geq \Phi_{i} \left(x^{\prime}\right) + \Phi_{i} \left(x^{\prime \prime}\right) \tag {8}
$$

Supermodularity is a stronger property than increasing differences within and across all agents' attributes in the sense that supermodularity always implies increasing

differences of this form, while the converse does not hold. However, if the support of  $x$  can be written as the Cartesian product of completely ordered sets $^1$ , supermodularity of a function is equivalent to increasing differences with respect to all of its arguments, i.e.  $\Phi_i(x)$  exhibits increasing differences for any partition of  $z$  into two vectors. For every case we study the properties will be equivalent, i.e. one implies the other.

# 2. Games with complementarities

Cooper-John (1988) model is useful in illustrating some of the economically interesting implications of complementarity in a simple and intuitive way. In the model, individuals make choices  $\omega_{i}$  in order to maximize

$$
\Phi \left(\omega_{i}, \bar {\omega}_{- i}\right) \tag {9}
$$

where  $\bar{\omega}_{-i} = (I - 1)^{-1}\sum_{j\neq i}\omega_j$ , the average choice of agents other than  $i$ . This formulation limits the form of complementarities in three ways that have economic content. First, it means that any permutation of the distribution of choices by others leaves the payoff of a given agent unchanged. This means that the identities of the agents are irrelevant. Second, the only moment of the distribution of others' choices that matters to  $i$  is the average of the choices. It is easy to think of cases where other moments matter. Third, each agent has the same payoff function, so there is no choice-relevant heterogeneity across agents. These restrictions are useful as they allow us to focus on symmetric equilibria, i.e. equilibria in which each agent chooses the same level of  $\omega$ .

The common payoff function is assumed to have the following properties. First, payoffs exhibit positive spillovers,

$$
\frac{\partial \Phi (\omega_{i} , \bar {\omega}_{- i})}{\partial \bar {\omega}_{- i}} > 0. \tag {10}
$$

Second, complementarities exist be each agent's choice and the average choice of others,

$$
\frac{\partial^{2} \Phi (\omega_{i} , \bar {\omega}_{- i})}{\partial \omega_{i} \partial \bar {\omega}_{- i}} > 0 \tag {11}
$$

Third, the payoff function is concave in an agent's own choice

$$
\frac{\partial^{2} \Phi (\omega_{i} , \bar {\omega}_{- i})}{\partial \omega_{i}^{2}} <   0 \tag {12}
$$

The first two assumptions contain the interesting economics. The third assumption is made so that, when needed, the relevant second-order condition for maximization of individual payoffs holds.

What are the noncooperative equilibria for this model? This is also called a Nash equilibrium. In the noncooperative case, each agent choice solves

$$
\frac{\partial \Phi (\omega_{i} , \bar {\omega}_{- i})}{\partial \omega_{i}} = 0 \tag {13}
$$

(Here and elsewhere I assume that all first order conditions are met with equality at finite values of the choices.) The reason why (13) defines individual choices is that in a Nash equilibrium, each agent maximizes his payoff taking the choices of others as given; no cooperation is allowed which permits coordinated decisions. Notice that the choices of others are assumed to be known; a Nash equilibrium solution for the game

implies that information is complete in this sense. A symmetric Nash equilibrium is defined by a common choice level  $\forall i$ ,  $\omega_{j} = \omega^{NC}$  such that

$$
\frac{\partial \Phi \left(\omega^{N C} , \omega^{N C}\right)}{\partial \omega_{i}} = 0 \tag {14}
$$

The idea is straightforward: each agent's makes a choice such that all choices are optimal when agents take the choices of others as given. Since agents are identical, they make identical choices in equilibrium. These choices must be such that when everyone makes them, no one wishes to change.

The Nash equilibrium may be contrasted with a cooperative equilibrium. The symmetry we have imposed on the environment makes the characterization of the cooperative choice levels simple. Agents cooperate by agreeing on a common level of  $\omega^c$  that maximizes the payoff for each agent; notice that since each agent has the same payoff function, we can simplify the problem to ask what common choice level maximizes a given agent's utility. This common choice level,  $\omega^c$ , is defined by

$$
\frac{\partial \Phi \left(\omega^{c} , \omega^{c}\right)}{\partial \omega_{i}} + \frac{\partial \Phi \left(\omega^{c} , \omega^{c}\right)}{\partial \bar {\omega}_{- i}} = 0 \tag {15}
$$

Contrasting (14) and (15) one sees a standard feature of environments with externalities: under noncooperation agents do not account for the effects of their choices on others. Given our assumptions on payoffs, it must be the case that

$$
\omega^{N C} <   \omega^{C}. \tag {16}
$$

This is one important idea: in environments with complementarities and positive spillovers, choices are "lower" than is socially efficient.

Complementarity also has implications for the uniqueness of the noncooperative equilibrium  $\omega^{NC}$ . From the first order condition (13), one can construct the best

response function  $\omega_{i} = \phi (\overline{\omega}_{-i})$ . Visualize the graph of this function with  $\overline{\omega}_{-i}$  on the x-axis and  $\omega_{i}$  on the y-axis. Each intersection of the graph with the 45-degree line represents a Nash equilibrium; in other words, the Nash equilibria are the fixed points of  $\phi (\overline{\omega}_{-i})$ . We have assumed that at least 1 fixed point exists. Can there be more than 1? In order for there to be multiple equilibria, it is necessary that  $\frac{d\phi(\overline{\omega}_{-i})}{d\overline{\omega}_{-i}} >0$  over some part of the support of  $\overline{\omega}_{-i}$  (which of course has the same as the support as  $\omega_{i}$ ). Otherwise, the reaction function can only intersect the 45-degree line once. To calculate the slope of the reaction function, substitute the best response function into (14)

$$
\frac{\partial \Phi (\phi (\bar {\omega}_{- i}) , \bar {\omega}_{- i})}{\partial \omega_{i}} = 0 \tag {17}
$$

and totally differentiate with respect to  $\overline{\omega}_{-j}$ . This calculation allows us to determine the slope of the reaction function.

$$
\begin{array}{l} \frac{\partial^{2} \Phi (\phi (\bar {\omega}_{- i}) , \bar {\omega}_{- i})}{\partial \omega_{i}^{2}} \frac{d \phi (\bar {\omega}_{- i})}{d \bar {\omega}_{- i}} + \frac{\partial^{2} \Phi (\phi (\bar {\omega}_{- i}) , \bar {\omega}_{- i})}{\partial \omega_{i} \partial \bar {\omega}_{- i}} = 0 \Rightarrow \\ \frac{d \phi (\bar {\omega}_{- i})}{d \bar {\omega}_{- i}} = - \frac{\frac{\partial^{2} \Phi (\phi (\bar {\omega}_{- i}) , \bar {\omega}_{- i})}{\partial \omega_{i} \partial \bar {\omega}_{- i}}}{\frac{\partial^{2} \Phi (\phi (\bar {\omega}_{- i}) , \bar {\omega}_{- i})}{\partial \omega_{i}^{2}}}. \tag {18} \\ \end{array}
$$

Hence, complementarity over part of the support of the choice variable is necessary for multiple equilibria to be possible in this model. Notice that this is exactly what we found in earlier discussions.

# social multipliers

To complete the discussion of this model, we consider the case where payoff depend on policy  $p$ .

$$
\Phi \left(\omega_{i}, \bar {\omega}_{- i}, p\right) \tag {19}
$$

This implies that the best response functions take the form

$$
\omega_{i} = \phi (\boldsymbol {p}, \bar {\omega}_{- i}) \tag {20}
$$

This allows us to assess policy effects.

How does a change in  $p$  affect equilibrium choice levels? In equilibrium,  $\overline{\omega}_{-i}$  will depend on  $p$ , so we can work with

$$
\omega_{i} = \phi (\boldsymbol {p}, \bar {\omega}_{- i} (\boldsymbol {p})) \tag {21}
$$

The equilibrium change in individual behavior when each person experiences change in  $p$  is

$$
\frac{d \omega_{i}}{d p} = \frac{\partial \phi (p , \bar {\omega}_{- i} (p))}{\partial p} + \frac{\partial \phi (p , \bar {\omega}_{- i} (p))}{\partial \bar {\omega}_{- i}} \frac{d \bar {\omega}_{- i}}{d p} \tag {22}
$$

In equilibrium,

$$
\frac{d \omega_{i}}{d p} = \frac{d \bar {\omega}_{- i}}{d p} \tag {23}
$$

since everyone makes same choice. Therefore

$$
\begin{array}{l} \frac{d \omega_{i}}{d p} = \frac{\partial \phi (p , \bar {\omega}_{- i} (p))}{\partial p} + \frac{\partial \phi (p , \bar {\omega}_{- i} (p))}{\partial \bar {\omega}_{- i}} \frac{d \omega_{i}}{d p} \\ = \frac{\frac{\partial \phi (p , \bar {\omega}_{- i} (p))}{\partial p}}{1 - \frac{\partial \phi (p , \bar {\omega}_{- i} (p))}{\partial \bar {\omega}_{- i}}} \tag {24} \\ \end{array}
$$

The term

$$
\frac{1}{1 - \frac{\partial \phi (p , \bar {\omega}_{- i} (p))}{\partial \bar {\omega}_{- i}}} \tag {25}
$$

is the social multiplier. It characterizes how  $\frac{\partial\phi(p,\overline{\omega}_{-i}(p))}{\partial p}$  is scaled up by interaction effects.

# 3. Complementarities in characteristics and assortative matching

There is a classic result due to Becker (1973) that relates the efficiency of assortative matching to complementarity. I describe the model as it illustrates a deep relationship between complementarity and the nature of optimal matching of individuals across groups. The language of the paper reflects the nature of rhetoric about marriage in 1973.

The objective of Becker's paper was to understand what lead with similar characteristics to marry. This is what is known as assortative matching. Perfect assortative matching occurs when the woman and man with the highest characteristics are matched, the second highest are matched, etc. Note that this assumes that characteristics are strictly ordered; it is possible to generalize measures of assortative

matching to vector characteristics; here I only consider the case where characteristics are scalars. To understand how assortative matching can occur, I will proceed in two steps. First I will ask what sort of allocation of individuals across marriages will maximize a certain objective function. Second, I will discuss how this can be an equilibrium in an environment where partners are determined by individual choices. This strategy is actually a common on in economics. One can think of the maximize of the objective function as a social planner's problem. In certain contexts, and this is one, the solution to the social planner's problem will coincide which the equilibrium outcome of decentralized decisions. Often, the planner's problem is easier to directly analyze than the decentralized one.

Consider a population of  $N$  men and  $N$  women. Suppose that each marriage between man  $u$  and woman  $v$  generates some product that depends on scalar characteristics  $m_u$  and  $w_v$  of the man and woman respectively. Model the product of a given match via a function  $\Phi(m, w)$  and that this function is increasing in both arguments.

What configuration of marriages maximizes total marital output, i.e. the sum across families. Becker (1973) established the following.

# Proposition. Optimality of assortative matching in the Becker marriage model

If  $\frac{\partial^2\Phi(m,w)}{\partial m\partial w} \geq 0$  then assortative matching maximizes the sum of products across marriages.

The original proof is as follows. For assortative matching to be inefficient, there must exist, pairs  $(\underline{m}, \overline{w})$  and  $(\bar{m}, \underline{w})$ ,  $\bar{m} > \underline{m}$  and  $\bar{w} > \underline{w}$  such that

$$
\Phi (\underline {{m}}, \bar {w}) + \Phi (\bar {m}, \underline {{w}}) > \Phi (\bar {m}, \bar {w}) + \Phi (\underline {{m}}, \underline {{w}}) \tag {26}
$$

But this can be rewritten as follows:

$$
\begin{array}{l} \Phi (\underline {{m}}, \bar {w}) - \Phi (\underline {{m}}, \underline {{w}}) - \Phi (\bar {m}, \bar {w}) + \Phi (\bar {m}, \underline {{w}}) > 0 \\ \int_{\underline {{w}}}^{\bar {w}} \frac{\partial \Phi (\underline {{m}} , w)}{\partial w} d w - \int_{\underline {{w}}}^{\bar {w}} \frac{\partial \Phi (\bar {m} , w)}{\partial w} d w > 0 \tag {27} \\ - \int_{\underline {{w}}}^{\bar {w}} \int_{\underline {{m}}}^{\bar {m}} \frac{\partial^{2} \Phi (m , w)}{\partial m \partial w} d w d m > 0 \\ \end{array}
$$

The last inequality is inconsistent with the complementarity assumption, which proves the proposition.

Notice there is nothing special about marriage per se in this analysis. Suppose that we were considering the allocation of managers and workers across two person firms with identical production functions, where each firm employs one manager and one worker. Complementarity between the manager and the worker would produce the same efficiency result.

If one is working in an environment in which increasing differences is equivalent to supermodularity, then Becker's result follows trivially and the result is independent of the number of members of a marriage (as long as each has a unique role). Further, the result does not depend on second-order differentiability.

Notice that the Becker result and the definition of supermodularity take the location of agent characteristics in the payoff function seriously. In other words, the first argument of the function refers to the characteristics of the man and the second argument refers to the characteristics of the woman. Another way to think about the optimal matching problems is to simply say that one has  $NK$  agents with scalar characteristics  $a_{i}$  who must be organized into  $K$ -tuples, each of which produces some payoff. In this case, one cannot immediately equate supermodularity with the efficiency of assortative matching, since supermodularity takes the order of the agents as given. In order to preserve the equivalence, it is necessary to add an assumption that Durlauf and Seshadri (2003) call permutation invariance. Permutation invariance means that if  $a$  is a  $K$ -tuple of characteristics and  $a'$  is a permutation of  $a$ , then

$$
\Phi (\boldsymbol {a}) = \Phi \left(\boldsymbol {a}^{\prime}\right) \tag {28}
$$

In this case, one can show that assortative matching is also efficient. To see why, consider any given initial configuration of agents into groups and take a pair of such groups. Reorder the vectors of characteristics for each group so that the elements in each run from largest to smallest. If the vectors do not exhibit assortative matching, replace them with their join and meet. This new configuration must produce at least as much as the original configuration. Repeat this procedure for the two new vectors of characteristics. Eventually, you will produce assortatively matched vectors for the pair of vectors as an efficient allocation. If one then applies this to all pairs in the allocation, assortative matching will emerge as an output maximizing configuration. See Durlauf and Seshadri (2003) for the formal argument.

Permutation invariance makes sense in some contexts. If a firm is assigned  $K$  workers, the firm's manager will assign the workers to tasks in order to maximize total output. The order in which the workers' characteristics are reported does not matter to the manager. When one considers contexts with permutation invariance, assortative matching is equivalent to stratification of agents across groups with respect to the characteristic  $a$ . By stratification, I mean that the supports of the characteristics can be completely ordered using weak inequalities.

Which assumptions are critical in linking the efficiency of assortative matching with complementarity?

A first important assumption is that all groups are of equal size. In other words, the comparisons of the configurations of alternative group compositions in which supermodularity implies the efficiency of assortative matching presupposes that the arguments of the payoff functions have the same dimension. Durlauf and Seshadri (2003) gives an example in which assortative matching, breaks down when group sizes can differ. The idea of their analysis is that firms (for example) have distinct production technologies according to the number of workers employed. Each of these functions may be supermodular. However, unless one places additional restrictions across these functions, there is no guarantee that assortative matching is efficient. To see this, suppose that there are three workers with characteristics  $a_1 = 1$ ,  $a_2 = 1.5$  and  $a_3 = 2$  respectively. Suppose that the size-specific payoff functions are

$$
\Phi_{1} \left(\boldsymbol {a}_{u}\right) = . 0 0 0 1 \boldsymbol {a}_{u}^{2} + \left(\max  \left(\boldsymbol {a}_{u} - 1, 0\right)\right)^{1 / 3} \tag {29}
$$

$$
\Phi_{2} \left(\boldsymbol {a}_{u}, \boldsymbol {a}_{v}\right) = . 5 \left(\boldsymbol {a}_{u} \cdot \boldsymbol {a}_{v}\right) \tag {30}
$$

$$
\Phi_{3} \left(\boldsymbol {a}_{u}, \boldsymbol {a}_{v}, \boldsymbol {a}_{w}\right) = . 0 0 0 1 \boldsymbol {a}_{u} \boldsymbol {a}_{v} \boldsymbol {a}_{w} \tag {31}
$$

It is straightforward to verify that the payoff maximizing solution is to place agents 1 and 3 in one group and isolate agent 2.

A second important assumption is that the environment is static. Assortative matching can be dynamically inefficient even if every static function of interest exhibits complementarities.

Consider 4 agents who are matched in 2 periods. Each agent is associated with a period specific characteristic  $\omega_{it}$ ; for concreteness assume that it is educational attainment. The distribution of period 0 values is 10, 10, 20, 20. In period 0 and 1, the agents are placed in two person groups, Think of these as classrooms. Agents are placed in pairs  $\{i,i'\}$ . Pairings can differ between periods 0 and 1. The value of  $\omega_{it+1}$  is determined by  $\omega_{it}$  and  $\omega_{it'}$ , the value for the agent with whom he is paired. The policymaker chooses the pairings. The objective of the policymaker is to maximize  $\overline{\omega}_2$ , i.e. the average characteristic at the end of period 1. To make this concrete, think of the students as agents and the groups as two student classrooms. The question we now ask is whether classroom tracking is efficient if the goal is to maximize average student performance at the end of period 1.

Suppose that one step ahead transformation function for agent characteristics is

$$
\phi \left(\omega_{i t + 1} \mid \omega_{i t}, \omega_{i^{\prime} t}\right) = \boldsymbol {f}_{1} \left(\omega_{i t}\right) + \boldsymbol {f}_{2} \left(\omega_{i t}, \omega_{i^{\prime} t}\right) \tag {32}
$$

such that

$$
\boldsymbol {f}_{1} \left(\omega_{i t}\right) =
$$

$$
0 \text{if } \omega_{t} \leq 9
$$

$$
. 9 \omega_{i t} \text{if } 9 <   \omega_{i t} \leq 1 0 \tag {33}
$$

$$
\omega_{i t} \text{if } 1 0 <   \omega
$$

and

$$
f_{2} \left(\omega_{i t}, \omega_{i t}\right) =
$$

$$
\max  \left\{\varepsilon \left(\omega_{i t} - 1 0\right) \omega_{i t}, 0 \right\} + \eta \omega_{i t} \omega_{i t} \tag {34}
$$

The functions are not differentiable everywhere, but do exhibit increasing differences.

Proposition. If  $\varepsilon < .03$ , then for  $\eta$  sufficiently small, then  $\overline{\omega}_2$  is maximized by negative assortative matching in period 0 and assortative matching in period 1.

What is the general idea that one should take from this example? Assortative matching is efficient when one wants to maximize the average of something. For this problem, the period 0 rule should not maximize  $\bar{\omega}_{1}$ ; it should choose the feasible distribution of  $\omega_{i1}$  's which is best for maximization of  $\bar{\omega}_{2}$ . This distribution depends on higher moments of the period one distribution than  $\bar{\omega}_{1}$ . The shift from negative assortative matching to assortative matching in the efficient sorting rule has "real world" analogs, i.e. mixed high schools and stratified colleges.

The discussion so far has focused exclusively on the efficiency of assortative matching. What about equilibrium matching? In other words, it is one thing to ask how agents should be configured by a social planner who maximizes the sum of payoffs across groups. A distinct question is how agents will organize themselves in a decentralized environment. In the marriage case, Becker shows that the efficient (in terms of aggregate output) equilibrium in terms of male/female matches will occur when marriages are voluntary choices, so long as marital partners can choose how to divide

the output of the marriage. His argument assumes that the product of the marriage is perfectly divisible and that there are no joint benefits from marriage, so it is not a very romantic conception! This division of marital output is the analogous to market factor prices that would apply to labor market models in which workers are sorted. Workers and managers split the output of a firm, but this done via the returns they receive to their skills. Formally, one can show that wages can support the efficient allocation of workers, in the maximize total output sense, for constant returns to scale production functions.

I end this discussion with two observations.

First, the link between assortative matching and efficiency produces a good example of a fundamental equity/efficiency tradeoff. To be concrete, efficiency in marital matches also maximizes the gap between the output of the highest and the lowest "quality" marriages.

Second, suppose that marital output cannot be arbitrarily divided; assume for simplicity that the output is nonrival so that both marriage partners receive it. (Parents will understand). Further, rule out transfers between the partners. The ruling out of transfers is important as it means, in essence that neither member of the marriage can undo the nonrival payoff of the marriage. Under these assumptions, assortative matching will still occur, even if it is socially inefficient. The assumption that  $\Phi(m, w)$  is increasing in both arguments is sufficient to ensure that the highest  $m_i$  will match with the highest  $w_j$ , etc. This indicates how positive spillovers can create incentives for segregation by characteristics even when the segregation is socially inefficient. Durlauf and Seshadri (2003) illustrate this possibility. It is important to think about the possibility of inefficient segregation in various contexts. Residential neighborhoods and college student bodies are possible examples beyond marriage.

# References

Amir, R. 2005. "Supermodularity and Complementarity in Economics: An Elementary Survey," Southern Economic Review 71: 636-660.
Cooper, R. and A. John. 1988. "Coordinating Coordination Failures in. Keynesian Models." Quarterly Journal of Economics 103: 441-463.
Durlauf, S. and A. Seshadri. 2003. "Is Assortative Matching Efficient?", *Economic Theory* 21: 475-493.

# Lecture Notes 9: Intergenerational Mobility

Why are the economic prospects of parents and children correlated? This is an age old question in economics, sociology, all of social science. Its policy importance is obvious: notions of equality of opportunity are closely linked to the ability of individuals to achieve things in ways not dictated by family background. In these notes, I outline the basic logic of some contemporary models of intergenerational mobility. Becker and Tomes (1979) and Loury (1989) contain the classic models of mobility. Becker, Kominers, Murphy and Spenkuch (2018) is an example of how the framework has been adapted in recent work. The key idea in these models is that parents invest in the human capital of their offspring, while human capital helps determine offspring income. Together, this creates a link between parental income and offspring income, and so provides the microeconomic underpinnings to the sorts of intergenerational income relationships we have discussed.

In contrast, Durlauf (1996) and Durlauf and Seshadri (2018) think of intergenerational mobility as driven by social influences. In their approach, parental investments determine the community in which a child lives. This community produces a common good of education as well as social influences.

My purpose here is to illustrate the ideas in these different approaches and say a something about links to empirical work on mobility

# i. microfoundations

demography

The population is comprised a set of distinct family dynasties. A dynasty is indexed by  $i$ . Each dynasty is thus comprised of a sequence of different generations. Reproduction is asexual, so a person born at  $t$  has one child; when that child grows up, she has one child, etc. Asexual reproduction allows us to ignore issues of intermarriage between dynasties and substantially simplifies the analysis. This model is called an overlapping generations model and is a workhorse of economic theory.

Assume that individuals live 2 periods. The first period is childhood, denoted as  $c$  and the second period is adulthood, denoted as  $a$ . Time is discrete so each  $t$  there is one parent and one child who are alive at each  $t$ , the parent born at  $t - 1$  and the child born at  $t$ . In reading subscripts on variables,  $i$  denotes dynasty,  $c$  or  $a$  denotes whether we are referring to a child or adult, and  $t$  denotes the time at which the variable is realized.

# education/human capital relationship

The child in dynasty  $i$  born at time  $t$  receives an educational investment  $I_{i,c,t}$  from her parent, which influences the level of human capital for the child, denoted as  $H_{i,c,t}$ . (Recall that the person born at  $t$  is a child at  $t$ , hence the subscript  $c$ .) Human capital follows the production function

$$
H_{i, c, t} = h \left(I_{i, c, t}, \zeta_{i, c, t}\right) \tag {1}
$$

In this specification,  $\zeta_{i,c,t}$  denotes unobserved heterogeneity; one can think of this variable as a deviation of individual latent ability from the unconditional mean of the population, so that  $E\left(\zeta_{i,c,t}\right) = 0$ . Assume that the variable is observable to the parent; this is a substantive assumption since it means that parents can condition investment on child ability, but it can be relaxed. I assume that  $\zeta_{i,c,t}$  is identically distributed across all agents with common probability measure  $\mu_{\zeta}(\cdot)$  and that it is uncorrelated across dynasties,

$$
\operatorname{co v} \left(\zeta_{i, c, t}, \zeta_{i^{\prime}, c, t}\right) = 0 \text{if } i \neq i^{\prime}
$$

If there is a genetic basis to ability, then one would expect ability to be correlated across time within a family. That said, this unobserved heterogeneity can also be correlated for environmental reasons. I allow for correlation below.

# human capital/income relationship

As an adult, individual  $i$  born at  $t$  works and receives income  $Y_{i,a,t+1}$ ; note that the time index has changed as we have moved from childhood to adulthood. Income is determined by the process

$$
\log Y_{i, a, t + 1} = f \left(H_{i, c, t}, \varepsilon_{i, a, t + 1}\right) \tag {2}
$$

In this equation,  $\varepsilon_{i,a,t+1}$  represents unobserved heterogeneity associated with adults; analogous to the unobserved heterogeneity of childhood, it is assumed to be identically distributed across agents with probability measure  $\mu_{\varepsilon}(\cdot)$ .  $\varepsilon_{i,a,t+1}$  can be interpreted as labor market luck. I assume that  $\varepsilon_{i,a,t+1}$  is uncorrelated within and across dynasties at all leads, lags, and contemporaneously, and is uncorrelated with ability shocks

$$
\operatorname{CO V} \left(\varepsilon_{i, a, t} \varepsilon_{i, a, t^{\prime}}\right) = 0 \text{if } t \neq t^{\prime}
$$

$$
\operatorname{CO V} \left(\varepsilon_{i, a, t} \varepsilon_{i^{\prime}, a, t^{\prime}}\right) = 0 \text{if } i \neq i^{\prime}
$$

$$
\operatorname{CO V} \left(\varepsilon_{i, a, t} \zeta_{i^{\prime}, c, t^{\prime}}\right) = 0 \quad \forall i, i^{\prime}, t, t^{\prime}
$$

Substantively, I assume that a parent who has a child in generation  $t$  has no information about  $\varepsilon_{i,a,t+1}$ .

# parental investment

Where do individual decisions appear in this model? The one choice in the model is the parental investment decision. Each adult splits her income between consumption,  $C_{i,a,t}$  and the human capital investment in the child  $I_{i,c,t}$ ,

$$
Y_{i, a, t} = C_{i, a, t} + I_{i, c, t} \tag {3}
$$

Equation (3) is more than an accounting identity as it means that a parent cannot borrow to raise the human capital investment of her child. To do so would require that a parent can create a legal obligation for a child to pay her debts. (Obviously, the parent will not be around to repay any loan!) This is not legal in the US, for example. Hence all investment in a child must come from the parent's income. Of course, actual investment decisions do involve loans, but the qualitative idea that parental income constrains investments in children is what is critical here.

This structure is sufficient to provide a description of intergenerational income transmission. Since each adult agent is solving an identical decision problem, if a solution exists for the optimal human capital investment for each value of  $Y_{i,a,t+1}$  and  $\zeta_{i,c,t+1}$  (which will hold under very weak assumptions) it must be the case that parental investment can be expressed as

$$
I_{i, c, t} = g \left(\log Y_{i, a, t}, \zeta_{i, c, t}\right) \tag {4}
$$

For many different preference assumptions, including all those used in the intergenerational mobility literature (as far as I am aware) (4) will be increasing in parental income.

# ii. intergenerational income dynamics

The microeconomic structure I have described produces a stochastic process for family incomes. Substituting (4) into (1) yields

$$
\mathcal {H}_{i, c, t} = h \left(\mathbf {g} \left(\log Y_{i, a, t}, \zeta_{i, c, t}\right), \zeta_{i, c, t}\right) \tag {5}
$$

while substituting (5) into (2) produces

$$
\log Y_{i, a, t + 1} = f \left(h \left(g \left(\log Y_{i, a, t}, \zeta_{i, c, t}\right), \zeta_{i, c, t}\right), \varepsilon_{i, a, t + 1}\right) \tag {6}
$$

Equation (6) provides a behavioral description of the evolution of income across generations. The nature of the evolution of income across generations will depend on the three functions  $h(\cdot, \cdot)$ ,  $f(\cdot, \cdot)$  and  $g(\cdot, \cdot)$ . The first function  $h(\cdot, \cdot)$  characterizes the relationship between human capital investment and education. The second function,  $f(\cdot, \cdot)$ , characterizes how education is converted into income. These two functions represent the technology of the economy. The third function,  $g(\cdot, \cdot)$ , will depend on the technology of the economy as well as the preferences of adults. Thus we have constructed a theoretical model of intergenerational income mobility.

There is a large empirical literature on intergenerational mobility. The literature is largely based on linear regressions of the form

$$
\log Y_{i, a, t + 1} = \alpha + \beta \log Y_{i, a, t} + e_{i, t + 1} \tag {7}
$$

The coefficient  $\beta$  is intergenerational elasticity of income; its value is the effect percentage change in expected offspring income if parental income increases  $1\%$ . Notice that this is a special case of our model.

# supplemental material: linking theory and empirics

Comparing (6) and (7), there is an important difference. The theoretical model of mobility (6) is not necessarily linear. In other words, (7) is a special case of (6). Under what circumstances will our theoretical intergenerational mobility model produce the linear model (7)? One needs to make certain functional form assumptions. Solon (2004) shows how to do this, in essence adding these assumptions to the Becker and Tomes (1979) model.

First, assume that human capital is additive in investment and ability.

$$
\boldsymbol {H}_{i, c, t} = \theta \log I_{i, c, t} + \zeta_{i, c, t} \tag {8}
$$

with

$$
\zeta_{i, c, t} = \delta + \lambda \zeta_{i, c, t - 1} + v_{i, a, t} \tag {9}
$$

so that a genetic component to ability can be captured.

Second, income is determined by

$$
\log Y_{i, a, t + 1} = \mu + p H_{i, c, t} + \varepsilon_{i, a, t + 1}. \tag {10}
$$

Third, the utility of the adult  $i$  born at time  $t - 1$  is

$$
U_{i, a, t} = (1 - \pi) \log C_{i, a, t} + \pi \log Y_{i, a, t + 1}. \tag {11}
$$

Together, these produce a law of motion for income

$$
\log Y_{i, a, t + 1} = \kappa + p \theta \log Y_{i, a, t} + p \varsigma_{i, c, t} + \varepsilon_{i, a, t + 1} \tag {12}
$$

where the intercept  $\kappa$  obeys

$$
\kappa = \mu + \theta p \left(\frac{\alpha \theta p}{1 - \alpha (1 - \theta p)}\right) \tag {13}
$$

This has the form of the linear regression (7). Why do these assumptions produce linearity?? Eq. (10) ensures that the fraction of income spent on education investment in a constant fraction of parental income. Eqs. (8) and (9) ensure that the log of this investment has a linear effect on offspring income. Notice that the unobserved heterogeneity for both ability and luck is additively separable in the production functions. This means the unobserved heterogeneity is additive in (12).

# iii. from microfoundations to the IGE

Observe that (12) is not a linear projection of parental income on offspring income. If ability is autocorrelated, following (9), then parental income and the error  $p \varsigma_{i,c,t+1} + \varepsilon_{i,a,t+1}$  are correlated. Hence, if (9) is the correct model of mobility, then a linear regression of offspring income on parental income will not produce  $p\theta$ . One can show that the coefficient  $\beta$  in (7) will follow

$$
\beta = \frac{\boldsymbol {p} \theta + \lambda}{1 + \boldsymbol {p} \theta \lambda} \tag {14}
$$

Hence the intergenerational elasticity of income, from the vantage point of this model, reflects both the effects of family income on human capital investment and the correlation of ability between generations.

# iv. beyond family income: parental skills

Becker, Kominers, Murphy and Spenkuch (2018) argue that the effectiveness of parental investments depends on parental human capital,  $H_{i,c,t-1}$ . Relative to equation 1, this means

$$
H_{i, c, t} = h \left(I_{i, c, t}, H_{i, c, t - 1}, \zeta_{i, c, t}\right) \tag {15}
$$

These authors assume that there is complementarity between  $H_{i,c,t-1}$  and  $I_{i,c,t}$ ; high human capital in a parent makes her investments more productive. Becker, Kominers, Murphy and Spenkuch (2018) explore the implications of this assumption. One important implication is that it induces an additional source of intergenerational persistence. More affluent families not only invest more in their children, but their investments are more productive. One implication is that the relationship between parental income and offspring income will not be linear, since parental income correlates with parental human capital, which interacts with parental investments that are linear in parental income.

# v. social models of mobility

Durlauf and Seshadri (2018) develop a model of mobility based on Durlauf (1996) that is social in nature. The model is based on the idea that human capital is a public good, produced in communities, which they call neighborhoods, denoted as  $n$ . Let  $n(i), t$  denote the neighborhood  $i$  lives in at time  $t$ . In this model, the level of educational investment in a child is determined by the neighborhood in which the child grows up. In other words, schools provide the investments a child receives. The level of investment depends on the quality of the schools found in a neighborhood. Quality, in turn, is determined by the income distribution in the neighborhood, denote this as  $F_{Y,n,t}$  and the size of the population in the neighborhood, denoted as  $p_{n,t}$ . The idea is that more communities vote for taxes to produce resources for education for the population of children in the neighborhood, who receive a common education. Given an income distribution in a neighborhood and an associated population size, parents will vote on

taxes that produce some value of revenue available for education. This revenue will determine the quality of education for each student. For a given level of resources raised by taxes, the quality of education will depend on the number of children in the neighborhood.

Further, Durlauf and Seshadri argue that the income distribution in a neighborhood creates social influences that facilitate human capital creation. Think of these as role model effects or labor market connections, for example. In other words, the parental income distribution in a neighborhood matters both because it determines the resources devoted to schools and because there are social effects that influence how these resources are turned into human capital.

Together the public good nature of education and the presence of social effects mean that the human capital formation equation for this model is

$$
\boldsymbol {H}_{i, c, t} = h \left(\boldsymbol {F}_{\mathcal {Y}, n (i), t}, \boldsymbol {p}_{n (i), t}, \zeta_{i, c, t}\right) \tag {16}
$$

This formulation is stark as it eliminates any role for family investment. It is straightforward to generalize to allow families to supplement public schools in educating their children, but for our purposes would only add needless complication to the model.

What does parental income do? It determines the neighborhood in which a child grow up. Hence parental income influences offspring income, but only to the extent that different incomes lead to different neighborhoods. As such, the theory says that income segregation is the cause of intergenerational income persistence. The model also naturally generates a nonlinear relationship between parental income and offspring income.

# vi. The Great Gatsby Curve

Corak (2013) is responsible for a famous empirical observation: countries with a wider distribution of income appear to have lower rates of mobility; the negative relationship between inequality and mobility is called the Great Gatsby Curve.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/54e91b47-4537-4892-a38a-6a3ef5c107e6/744afc2fd208d0b3de4dd4f5951770b102aeca1ad5f470fcca13d1882308474a.jpg)

This is an important observation as it suggests that different types of inequality move in the same direction in a society. Each of the models I have presented can produce a Great Gatsby Curve. The Becker-Tomes model can do so when the model is nonlinear. This will depend on the functional forms in the model. Becker et al can produce the Gatsby Curve for an interpretable reason. Greater income inequality is a sign of greater dispersion in parental education, which means that children from rich and poor families experience greater differences in investment and in effectiveness of investment. Durlauf and Seshadri produce a Gatsby Curve because greater inequality leads to greater segregation, which increases in the differences in school quality and social influences for children from rich and poor families. All are likely part of the explanation of the empirical finding.

# References

Becker, G., S. Kominers, K. Murphy, and J. Spenkuch. 2018. "A Theory of Intergenerational Income Mobility." Journal of Political Economy, forthcoming
Becker, G. and N. Tomes. 1979. "An Equilibrium Theory of the Distribution of Income and Intergenerational Mobility." Journal of Political Economy 87: 1153-1189.
Corak, M. 2013. "Income Inequality, Equality of Opportunity, and Intergenerational Mobility." Journal of Economic Perspectives 27: 79-102.
Durlauf, S. 1996. "A Theory of Persistent Income Inequality." Journal of Economic Growth 1: 75-93.
Durlauf, S. and A. Seshadri. 2018. "Understanding the Great Gatsby Curve." *Macroeconomics Annual* 2017.
Loury, G. 1981. "Intergenerational Transfers and the Distribution of Earnings." Econometrica 49: 843-867.
Solon, G. 2004. "A Model of Intergenerational Mobility Variation over Time and Place," *Generational Income Mobility in North America and Europe*, M. Corak, ed. Cambridge: Cambridge University Press.