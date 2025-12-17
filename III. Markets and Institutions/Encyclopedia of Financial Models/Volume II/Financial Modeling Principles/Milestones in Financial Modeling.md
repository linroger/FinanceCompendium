
# Milestones in Financial Modeling

SERGIO M. FOCARDI, PhD

Partner, The Intertek Group

FRANK J. FABOZZI, PhD, CFA, CPA

Professor of Finance, EDHEC Business School

Abstract: The origins of financial modeling can be traced back to the development of mathematical equilibrium at the end of the nineteenth century, followed in the beginning of the twentieth century with the introduction of sophisticated mathematical tools for dealing with the uncertainty of prices and returns. In the 1950s and 1960s, financial modelers had tools for dealing with probabilistic models for describing markets, the principles of contingent claims analysis, an optimization framework for portfolio selection based on mean and variance of asset returns, and an equilibrium model for pricing capital assets. The 1970s ushered in models for pricing contingent claims and a new model for pricing capital assets based on arbitrage pricing. Consequently, by the end of the 1970s, the frameworks for financial modeling were well known. It was the advancement of computing power and refinements of the theories to take into account real-world markets starting in the 1980s that facilitated implementation and broader acceptance of mathematical modeling of financial decisions.

The mathematical development of present-day economic and finance theory began in Lausanne, Switzerland at the end of the nineteenth century, with the development of the mathematical equilibrium theory by Leon Walras (1874) and Vilfredo Pareto (1906). Shortly thereafter, at the beginning of the twentieth century, Louis Bachelier (1900) in Paris and Filip Lundberg (1903) in Uppsala (Sweden) made two seminal contributions: They developed sophisticated mathematical tools to describe uncertain price and risk processes. These developments were well in advance of their time. Further progress was to be made only much later in the twentieth century, thanks to the de velopment of digital computers. By making it possible to compute approximate solutions to complex problems, digital computers enabled the large-scale application of mathematics to business problems.


A first round of innovation occurred in the 1950s and 1960s. Kenneth Arrow and Georges Debreu (1954) introduced a probabilistic model of markets and the notion of contingent claims. Harry Markowitz (1952) described mathematically the principles of the investment process in terms of utility optimization. In 1961, Franco Modigliani and Merton Miller (1961) clarified the nature of economic value, working out the implications of absence of arbitrage. Between

1964 and 1966, William Sharpe (1964), John Lintner (1965), and Jan Mossin (1966) developed a theoretical model of market prices based on the principles of financial decision making laid down by Markowitz. The notion of efficient markets was introduced by Paul Samuelson (1965), and five years later, further developed by Eugene Fama (1970).

The second round of innovation started at the end of the 1970s. In 1973, Fischer Black, Myron Scholes (1973), and Robert Merton (1973a) discovered how to determine option prices using continuous hedging. Three years later, Stephen Ross (1976) introduced arbitrage pricing theory (APT). Both were major developments that were to result in a comprehensive mathematical methodology for investment management and the valuation of derivative financial products. At about the same time, Merton introduced a continuous-time intertemporal, dynamic optimization model of asset allocation. Major refinements in the methodology of mathematical optimization and new econometric tools were to change the way investments are managed.

# THE PRECURSORS: PARETO, WALRAS, AND THE LAUSANNE SCHOOL

The idea of formulating quantitative laws of economic behavior in ways similar to the physical sciences started in earnest at the end of the 19th century. Though quite accurate economic accounting on a large scale dates back to Assyro-Babylonian times, a scientific approach to economics is a recent endeavor.

Leon Walras and Wilfredo Pareto, founders of the so-called Lausanne School at the University of Lausanne in Switzerland, were among the first to explicitly formulate quantitative principles of market economies, stating the principle of economic equilibrium as a mathematical theory. Both worked at a time of great social and economic change. In Pareto's work in particular, pure economics and political science occupy a central place.

Convinced that economics should become a mathematical science, Walras set himself the task of writing the first mathematical general equilibrium system. The British economist Stanley Jevons and the Austrian economist Carl Menger had already formulated the idea of economic equilibrium as a situation where supply and demand match in interrelated markets. Walras's objective—to prove that equilibrium was indeed possible—required the explicit formulation of the equations of supply-and-demand equilibrium.

Walras introduced the idea of *tatonnement* (French for groping) as a process of exploration by which a central auctioneer determines equilibrium prices. A century before, in 1776, Adam Smith had introduced the notion of the "invisible hand" that coordinates the activity of independent competitive agents to achieve desirable global goals. In the modern parlance of complex systems, the "invisible hand" would be called an "emerging property" of competitive markets. Much recent work on complex systems and artificial life has focused on understanding how the local interaction of individuals might result in complex and purposeful global behavior. Walras was to make the hand "visible" by defining the process of price discovery.


Pareto followed Walras in the Chair of Economics at the University of Lausanne. Pareto's focus was the process of economic decision making. He replaced the idea of supply-and-demand equilibrium with a more general idea of the ordering of preferences through utility functions. (Pareto used the word "ophelimity" to designate what we would now call utility. The concept of ophelimity is slightly different from the concept of utility insofar as ophelimity includes constraints on people's preferences.) Equilibrium is reached where marginal utilities are zero. The Pareto system hypothesized that agents are able to order their preferences and take into account constraints in such a way that a numerical index—"utility" in today's terminology—can be associated with each choice. Note that it was not until 1944 that utility theory was formalized in a set of necessary and sufficient axioms by von Neumann and Morgenstern and applied to decision making under risk and uncertainty.

Economic decision making is therefore based on the maximization of utility. As Pareto assumed utility to be a differentiable function, global equilibrium is reached where marginal utilities (i.e., the partial derivatives of utility) vanish. Pareto was especially interested in the problem of the global optimum of utility. The Pareto optimum is a state in which nobody can be better off without making others worse off. A Pareto optimum does not imply the equal division of resources; quite the contrary, a Pareto optimum might be a maximally unequal distribution of wealth.

A lasting contribution of Pareto is the formulation of a law of income distribution. Known as the Pareto law, this law states that there is a linear relationship between the logarithm of the income  $I$  and the number  $N$  of people that earn more than this income:


$$
\operatorname {L o g} N = A + s \log I
$$ where  $A$  and  $s$  are appropriate constants.


The importance of the works of Walras and Pareto were not appreciated at the time. Without digital computers, the equilibrium systems they conceived were purely abstract: There was no way to compute solutions to economic equilibrium problems. In addition, the climate at the turn of the century did not allow a serene evaluation of the scientific merit of their work. The idea of free markets was at the center of heated political debates; competing systems included mercantile economies based on trade restrictions and privileges as well as the emerging centrally planned Marxist economies.

# PRICE DIFFUSION: BACHELIER

In 1900, the Sorbonne University student Louis Bachelier presented a doctoral dissertation, Théorie de la Spéculation, that was to anticipate much of today's work in finance theory. Bachelier's advisor was the great French mathematician Henri Poincaré. There were three notable aspects in Bachelier's thesis: (1) He argued that in a purely speculative market stock prices should be random; (2) he developed the mathematics of Brownian motion; and (3) he computed the prices of several options.

To appreciate the importance of Bachelier's work, it should be remarked that at the beginning of the 20th century, the notion of probability was not yet rigorous; the formal mathematical theory of probability was developed only in the 1930s. In particular, the precise notion of the propagation of information essential for the definition of conditional probabilities in continuous time had not yet been formulated.

Anticipating the development of the theory of efficient markets 60 years later, the key economic idea of Bachelier was that asset prices in a speculative market should be a fair game, that is, a martingale process such that the expected return is zero. According to Bachelier, "The expectation of the speculator is zero." The formal concept of a martingale (i.e., of a process such that its expected value at any moment coincides with the present value) had not yet been introduced in probability theory. In fact, the rigorous notion of conditional probability and filtration were developed only in the 1930s. In formulating his hypothesis on market behavior, Bachelier relied on intuition.


Bachelier actually went much further. He assumed that stock prices evolve as a continuous-time Markov process. This was a brilliant intuition: Markov was to start working on these problems only in 1906. Bachelier established the differential equation for the time evolution of the probability distribution of prices, noting that this equation was the same as the heat diffusion equation. Five years later, in 1905, Albert Einstein used the same diffusion equation for the Brownian motion (i.e., the motion of a small particle suspended in a fluid). Bachelier also made the connection with the continuous limit of random walks, thus anticipating the work of the Japanese mathematician Kiyosi Ito at the end of the 1940s and the Russian mathematician and physicist Ruslan Stratonovich on stochastic integrals at the end of the 1950s.

By computing the extremes of Brownian motion, Bachelier computed the price of several options. He also computed the distributions of a number of functionals of Brownian motion. These were remarkable mathematical results in themselves. Formal proof was given only much later. Even more remarkable, Bachelier established option pricing formulas well before the formal notion of absence of arbitrage was formulated.

Bachelier's work was outside the mainstream of contemporary mathematics but was too mathematically complex for the economists of his time. It wasn't until the formal development of probability theory in 1930s that his ideas became mainstream mathematics and only in the 1960s, with the development of the theory of efficient markets, that his ideas became part of mainstream finance theory. In an efficient market, asset prices should, in each instant, reflect all the information available at the time, and any event that causes prices to move must be unexpected (i.e., a random disturbance). As a consequence, prices move as martingales, as argued by Bachelier. Bachelier was, in fact, the first to give a precise mathematical structure in continuous time to price processes subject to competitive pressure by many agents.


# THE RUIN PROBLEM IN INSURANCE: LUNDBERG

In Uppsala, Sweden, in 1903, three years after Bachelier defended his doctoral dissertation in Paris, Filip Lundberg defended a thesis that was to become a milestone in actuarial mathematics: He was the first to define a collective theory of risk and to apply a sophisticated probabilistic formulation to the insurance ruin problem. The ruin problem of an insurance company in a nonlife sector can be defined as follows. Suppose that an insurance company receives a stream of sure payments (premiums) and is subject to claims of random size that occur at random times. What is the probability that the insurer will not be able to meet its obligations (i.e., the probability of ruin)?

Lundberg solved the problem as a collective risk problem, pooling together the risk of claims. To define collective risk processes, he introduced marked Poisson processes. Marked Poisson processes are processes where the random time between two events is exponentially distributed. The magnitude of events is random with a distribution independent of the time of the event. Based on this representation, Lundberg computed an estimate of the probability of ruin.

Lundberg's work anticipated many future developments of probability theory, including what was later to be known as the theory of point processes. In the 1930s, the Swedish mathematician and probabilist Harald Cramer gave a rigorous mathematical formulation to Lundberg's work. A more comprehensive formal theory of insurance risk was later developed. This theory now includes Cox processes—point processes more general than Poisson processes—and fat-tailed distributions of claim size.


A strong connection between actuarial mathematics and asset pricing theory has since been established. (See, for example, Embrechts, Klüppelberg, and Mikosch, 1996). In well-behaved, complete markets, establishing insurance premiums entails principles that mirror asset prices. In the presence of complete markets, insurance would be a risk-free business: There is always the possibility of reinsurance. In markets that are not complete—essentially because they make unpredictable jumps—hedging is not possible; risk can only be diversified and options are inherently risky. Option pricing theory again mirrors the setting of insurance premiums.

Lundberg's work went unnoticed by the actuarial community for nearly 30 years, though this did not stop him from enjoying a successful career as an insurer. Both Bachelier and Lundberg were in advance of their time; they anticipated, and probably inspired, the subsequent development of probability theory. But the type of mathematics implied by their work could not be employed in full earnest prior to the development of digital computers. It was only with digital computers that we were able to tackle complex mathematical problems whose solutions go beyond closed-form formulas.

# THE PRINCIPLES OF INVESTMENT: MARKOWITZ

Just how an investor should allocate his resources has long been debated. Classical wisdom suggested that investments should be allocated to those assets yielding the highest returns, without the consideration of correlations. Before the modern formulation of efficient markets, speculators widely acted on the belief that positions should be taken only if they had a competitive advantage in terms of information. A large amount of resources were therefore spent on analyzing financial information. John Maynard Keynes suggested that investors should carefully evaluate all available information and then make a calculated bet. The idea of diversification was anathema to Keynes, who was actually quite a successful investor.


In 1952, Harry Markowitz, then a graduate student at the University of Chicago, published a seminal article on optimal portfolio selection that upset established wisdom. He advocated that, being risk adverse, investors should diversify their portfolios. (The principles in his article were developed further in his 1959 book.) The idea of making risk bearable through risk diversification was not new: It was widely used by medieval merchants. Markowitz understood that the risk-return trade-off of investments could be improved by diversification and cast diversification in the framework of optimization.

Markowitz was interested in the investment decision-making process. Along the lines set forth by Pareto 60 years earlier, Markowitz assumed that investors order their preferences according to a utility index, with utility as a convex function that takes into account investors' risk-return preferences. Markowitz assumed that stock returns are jointly normal. As a consequence, the return of any portfolio is a normal distribution, which can be characterized by two parameters: the mean and the variance. Utility functions are therefore defined on two variables—mean and variance—and the Markowitz framework for portfolio selection is commonly referred to as mean-variance analysis. The mean and variance of portfolio returns are in turn a function of a portfolio's weights. Given the variance-covariance matrix, utility is a function of portfolio weights. The investment decision-making process involves maximizing utility in the space of portfolio weights.

The inputs to the mean-variance analysis include expected returns, variance of returns, and either covariance or correlation of returns between each pair of securities. For example, an analysis that allows 200 securities as possible candidates for portfolio selection requires 200 expected returns, 200 variances of return, and 19,900 correlations or covariances. An investment team tracking 200 securities may reasonably be expected to summarize their analyses in terms of 200 means and variances, but it is clearly unreasonable for them to produce 19,900 carefully considered correlation coefficients or covariances. It was clear to Markowitz that some kind of model of the covariance structure was needed for the practical application of the model. He did little more than point out the problem and suggest some possible models of covariance for research to large portfolios. In 1963, William Sharpe suggested the single index market model as a proxy for the covariance structure of security returns.


Markowitz joined the Rand Corporation, where he met George Dantzig, who introduced him to computer-based optimization technology. Markowitz was quick to appreciate the role that computers would have in bringing mathematics to bear on business problems. Optimization and simulation were on the way to becoming the tools of the future, replacing the quest for closed-form solutions of mathematical problems.

In the following years, Markowitz developed a full theory of the investment management process based on optimization. His optimization theory had the merit of being applicable to practical problems, even outside of the realm of finance. With the progressive diffusion of high-speed computers, the practice of financial optimization has found broad application.

# UNDERSTANDING VALUE: MODIGLIANI AND MILLER

At about the same time that Markowitz was tackling the problem of how investors should behave, taking asset price processes as a given, other economists were trying to understand how markets determine value. Adam Smith had introduced the notion of perfect competition (and therefore perfect markets) in the second half of the 18th century. In a perfect market, there are no impediments to trading: Agents are price takers who can buy or sell as many units as they wish. The neoclassical economists of the 1960s took the idea of perfect markets as a useful idealization of real free markets. In particular, they argued that financial markets are very close to being perfect markets. The theory of asset pricing was subsequently developed to explain how prices are set in a perfect market.


In general, a perfect market results when the number of buyers and sellers is sufficiently large, and all participants are small enough relative to the market so that no individual market agent can influence a commodity's price. Consequently, all buyers and sellers are price takers, and the market price is determined where there is equality of supply and demand. This condition is more likely to be satisfied if the commodity traded is fairly homogeneous (for example, corn or wheat).

There is more to a perfect market than market agents being price takers. It is also required that there are no transaction costs or impediments that interfere with the supply and demand of the commodity. Economists refer to these various costs and impediments as "frictions."

The costs associated with frictions generally result in buyers paying more than in the absence of frictions, and/or sellers receiving less. In the case of financial markets, frictions include:

- Commissions charged by brokers.
- Bid-ask spreads charged by dealers.
- Order handling and clearance charges.
- Taxes (notably on capital gains) and government-imposed transfer fees.
- Costs of acquiring information about the financial asset.
- Trading restrictions, such as exchange-imposed restrictions on the size of a position in the financial asset that a buyer or seller may take.

- Restrictions on market makers.
- Halts to trading that may be imposed by regulators where the financial asset is traded.

# Modigliani-Miller Irrelevance Theorems and the Absence of Arbitrage

A major step was taken in 1958 when Franco Modigliani and Merton Miller published a then-controversial article in which they maintained that the value of a company does not depend on the capital structure of the firm. (In a 1963 article, they corrected their analysis for the impact of corporate taxes.) The capital structure is the mix of debt and equity used to finance the firm. The traditional view prior to the publication of the article by Modigliani and Miller was that there existed a capital structure that maximized the value of the firm (i.e., there is an optimal capital structure). Modigliani and Miller demonstrated that in the absence of taxes and in a perfect capital market, the capital structure was irrelevant (i.e., the capital structure does not affect the value of a firm). By extension, the irrelevance principle applies to the type of debt a firm may select (e.g., senior, subordinated, secured, and unsecured).

In 1961, Modigliani and Miller published yet another controversial article in which they argued that the value of a company does not depend on the dividends it pays but on its earnings. The basis for valuing a firm—earnings or dividends—had always attracted considerable attention. Because dividends provide the hard cash that remunerates investors, they were considered by many as key to a firm's value.

Modigliani and Miller's challenge to the traditional view that capital structure and dividends matter when determining a firm's value was founded on the principle that the traditional views were inconsistent with the workings of competitive markets where securities are freely traded. In their view, the value of a company is independent of its financial structure: From a valuation standpoint, it does not mat ter whether the firm keeps its earnings or distributes them to shareholders.


Known as the Modigliani-Miller theorems, these theorems paved the way for the development of arbitrage pricing theory. In fact, to establish their theorems, Modigliani and Miller made use of the notion of absence of arbitrage. Absence of arbitrage means that there is no possibility of making a risk-free profit without an investment. This implies that the same stream of cash flows should be priced in the same way across different markets. Absence of arbitrage is the fundamental principle for relative asset pricing; it is the pillar on which derivative pricing rests.

# EFFICIENT MARKETS: FAMA AND SAMUELSON

Absence of arbitrage entails market efficiency. Shortly after the Modigliani-Miller theorems had been established, Paul Samuelson in 1965 and Eugene Fama in 1970 developed the notion of efficient markets: A market is efficient if prices reflect all available information. Bachelier had argued that prices in a competitive market should be random conditionally to the present state of affairs. Fama and Samuelson put this concept into a theoretical framework, linking prices to information.

In general, an efficient market refers to a market where prices at all times fully reflect all available information that is relevant to the valuation of securities. That is, relevant information about the security is quickly impounded into the price of securities.

Fama and Samuelson define "fully reflects" in terms of the expected return from holding a security. The expected return over some holding period is equal to expected cash distributions plus the expected price change, all divided by the initial price. The price formation process defined by Fama and Samuelson is that the expected return one period from now is a stochastic variable that already takes into account the "relevant" information set. They argued that in a market where information is shared by all market participants, prices should fluctuate randomly.


A price-efficient market has implications for the investment strategy that investors may wish to pursue. In an active strategy, investors seek to capitalize on what they perceive to be the mispricing of financial instruments (cash instruments or derivative instruments). In a market that is price efficient, active strategies will not consistently generate a return after taking into consideration transaction costs and the risks associated with a strategy that is greater than simply buying and holding securities. This has led investors in certain sectors of the capital market where empirical evidence suggests the sector is price efficient to pursue a strategy of indexing, which simply seeks to match the performance of some financial index. However Samuelson was careful to remark that the notion of efficient markets does not make investment analysis useless; rather, it is a condition for efficient markets.

Another facet in this apparent contradiction of the pursuit of active strategies despite empirical evidence on market efficiency was soon to be clarified. Agents optimize a risk-return trade-off based on the stochastic features of price processes. Price processes are not simply random but exhibit a rich stochastic behavior. The objective of investment analysis is to reveal this behavior.

# CAPITAL ASSET PRICING
MODEL: SHARPE, LINTNER,
AND MOSSIN

Absence of arbitrage is a powerful economic principle for establishing relative pricing. In itself, however, it is not a market equilibrium model. William Sharpe (1964), John Lintner (1965), and Jan Mossin (1966) developed a theoretical equilibrium model of market prices called the capital asset pricing model (CAPM). As anticipated 60 years earlier by Walras and Pareto, Sharpe, Lintner, and Mossin developed the consequences of Markowitz's portfolio selection into a full-fledged stochastic general equilibrium theory.


Asset pricing models categorize risk factors into two types. The first type is risk factors that cannot be diversified away via the Markowitz framework. That is, no matter what the investor does, the investor cannot eliminate these risk factors. These risk factors are referred to as systematic risk factors or nondiversifiable risk factors. The second type is risk factors that can be eliminated via diversification. These risk factors are unique to the asset and are referred to as unsystematic risk factors or diversifiable risk factors.

The CAPM has only one systematic risk factor—the risk of the overall movement of the market. This risk factor is referred to as "market risk." This is the risk associated with holding a portfolio consisting of all assets, called the "market portfolio." In the market portfolio, an asset is held in proportion to its market value. So, for example, if the total market value of all assets is  $X and the market value of asset j$  is Y, then asset  $j$  will comprise  $\frac{Y}{X}$  of the market portfolio.

The expected return for an asset  $i$  according to the CAPM is equal to the risk-free rate plus a risk premium. The risk premium is the product of (1) the sensitivity of the return of asset  $i$  to the return of the market portfolio, and (2) the difference between the expected return on the market portfolio and the risk-free rate. It measures the potential reward for taking on the risk of the market above what can be earned by investing in an asset that offers a risk-free rate. Taken together, the risk premium is a product of the quantity of market risk and the potential compensation of taking on market risk (as measured by the second component).

The CAPM was highly appealing from the theoretical point of view. It was the first general-equilibrium model of a market that admitted testing with econometric tools. A critical challenge to the empirical testing of the CAPM as pointed out by Roll (1977) is the identification of the market portfolio.

# THE MULTIFACTOR CAPM: MERTON

The CAPM assumes that the only risk that an investor is concerned with is uncertainty about the future price of a security. Investors, however, are usually concerned with other risks that will affect their ability to consume goods and services in the future. Three examples would be the risks associated with future labor income, the future relative prices of consumer goods, and future investment opportunities.

Recognizing these other risks that investors face, Robert Merton (1973b) extended the CAPM based on consumers deriving their optimal lifetime consumption when they face these "extramarket" sources of risk. These extramarket sources of risk are also referred to as "factors," hence the model derived by Merton is called a multifactor CAPM.

The multifactor CAPM says that investors want to be compensated for the risk associated with each source of extramarket risk, in addition to market risk. In the case of the CAPM, investors hedge the uncertainty associated with future security prices by diversifying. This is done by holding the market portfolio. In the multifactor CAPM, in addition to investing in the market portfolio, investors will also allocate funds to something equivalent to a mutual fund that hedges a particular extramarket risk. While not all investors are concerned with the same sources of extramarket risk, those that are concerned with a specific extramarket risk will basically hedge them in the same way.

The multifactor CAPM is an attractive model because it recognizes nonmarket risks. The pricing of an asset by the marketplace, then, must reflect risk premiums to compensate for these extramarket risks. Unfortunately, it may be difficult to identify all the extramarket risks and to value each of these risks empirically. Furthermore, when these risks are taken together, the multifactor CAPM begins to resemble the arbitrage pricing theory model described next.

# ARBITRAGE PRICING THEORY:ROSS

An alternative to the equilibrium asset pricing model just discussed, an asset pricing model based purely on arbitrage arguments, was derived by Stephen Ross (1976). The model, called the arbitrage pricing theory (APT) model, postulates that an asset's expected return is influenced by a variety of risk factors, as opposed to just market risk as assumed by the CAPM. The APT model states that the return on a security is linearly related to  $H$  systematic risk factors. However, the APT model does not specify what the systematic risk factors are, but it is assumed that the relationship between asset returns and the risk factors is linear.

The APT model as given asserts that investors want to be compensated for all the risk factors that systematically affect the return of a security. The compensation is the sum of the products of each risk factor's systematic risk and the risk premium assigned to it by the capital market.

Proponents of the APT model argue that it has several major advantages over the CAPM. First, it makes less restrictive assumptions about investor preferences toward risk and return. As explained earlier, the CAPM theory assumes investors trade off between risk and return solely on the basis of the expected returns and standard deviations of prospective investments. The APT model, in contrast, simply requires that some rather unobtrusive bounds be placed on potential investor utility functions. Second, no assumptions are made about the distribution of asset returns. Finally, since the APT model does not rely on the identification of the true market portfolio, the theory is potentially testable. The model simply assumes that no arbitrage is possible. That is, using no additional funds (wealth) and without increasing risk, it is not possible for an investor to create a portfolio to increase return.

The APT model provides theoretical support for an asset pricing model where there is more than one risk factor. Consequently, models of this type are referred to as multifactor risk models. These models are applied to portfolio management.


# ARBITRAGE, HEDGING, AND OPTION THEORY: BLACK, SCHOLES, AND MERTON

The idea of arbitrage pricing can be extended to any price process. A general model of asset pricing will include a number of independent price processes plus a number of price processes that depend on the first process by arbitrage. The entire pricing structure may or may not be cast in a general equilibrium framework.

Arbitrage pricing allowed derivative pricing. With the development of derivatives trading, the requirement of a derivative valuation and pricing model made itself felt. The first formal solution of the option pricing model was developed independently by Fisher Black and Myron Scholes (1973), working together, and in the same year by Robert Merton (1973a).

The solution of the option pricing problem proposed by Black, Scholes, and Merton was simple and elegant. Suppose that a market contains a risk-free bond, a stock, and an option. Suppose also that the market is arbitrage-free and that stock price processes follow a continuous-time geometric Brownian motion. Black, Scholes, and Merton demonstrated that it is possible to construct a portfolio made up of the stock plus the bond that perfectly replicates the option. The replicating portfolio can be exactly determined, without anticipation, solving a partial differential equation.

The idea of replicating portfolios has important consequences. Whenever a financial instrument (security or derivative instrument) process can be exactly replicated by a portfolio of other securities, absence of arbitrage requires that the price of the original financial instrument coincide with the price of the replicating portfolio. Most derivative pricing algorithms are based on this principle: To price a deriva tive instrument, one must identify a replicating portfolio whose price is known.


Pricing by portfolio replication received a powerful boost with the discovery that calculations can be performed in a risk-neutral probability space where processes assume a simplified form. The foundation was thus laid for the notion of equivalent martingales, developed by Michael Harrison and David Kreps (1979) and Michael Harrison and Stanley Pliska (1981). Not all price processes can be reduced in this way: If price processes do not behave sufficiently well (i.e., if the risk does not vanish with the vanishing time interval), then replicating portfolios cannot be found. In these cases, risk can be minimized but not hedged.

# KEY POINTS

- The development of mathematical finance began at the end of the nineteenth century with work on general equilibrium theory by Walras and Pareto.
- At the beginning of the twentieth century, Bachelier and Lundberg made a seminal contribution, introducing respectively Brownian motion price processes and Markov Poisson processes for collective risk events.
- The advent of digital computers enabled the large-scale application of advanced mathematics to finance theory, ushering in optimization and simulation.
- In 1952, Markowitz introduced the theory of portfolio optimization, which advocates the strategy of portfolio diversification.
- In 1961, Modigliani and Miller argued that the value of a company is based not on its dividends and capital structure, but on its earnings; their formulation was to be called the Modigliani-Miller theorem.
- In the 1960s, major developments included the efficient market hypothesis (Samuelson and Fama), the capital asset pricing model (Sharpe, Lintner, and Mossin), and the multifactor CAPM (Merton).

# REFERENCES

- In the 1970s, major developments included the arbitrage pricing theory (Ross) that led to multifactor models and option pricing formulas (Black, Scholes, and Merton) based on replicating portfolios, which are used to price derivatives if the underlying price processes are known.
Arrow, K. J., and Debreu, G. (1954). The existence of an equilibrium for a competitive economy. Econometrica 22: 265-290.
Bachelier, L. [1900] 2006. Louis Bachelier's Theory of Speculation: The Origins of Modern Finance. Translated by Mark Davis and Alison Etheridge. Princeton, NJ: Princeton University Press.
Black, F., and Scholes, M. (1973). The pricing of options and corporate liabilities. Journal of Political Economy 81, 3: 637-654.
Embrechts, P., Klüppelberg, C., and Mikosch, T. (1996). Modelling Extremal Events for Insurance and Finance. Berlin: Springer.
Fama, E. F. (1970). Efficient capital markets: A review of theory and empirical work. Journal of Finance 25, 2: 383-417.
Harrison, J. M., and Kreps, D. M. (1979). Martingales and arbitrage in multiperiod securities markets. Journal of Economic Theory 20: 381-408.
Harrison, J. M., and Pliska, S. (1981). Martingales and stochastic integrals in the theory of continuous trading. Stochastic Processes and Their Applications 11: 313-316.
Lintner, J. (1965). The valuation of risk assets and the selection of risky investments in stock portfolio and capital budgets. Review of Economics and Statistics 47, 1: 13-37.
Lundberg, F. (1903). Approximerad framställning af sannolikhetsfunctionen. II. Aterforsakring af kollektivrisken. Uppsala: Almqvist & Wiksell.
Markowitz, H. M. (1952). Portfolio selection. Journal of Finance 7, 1: 77-91.

Markowitz, H. M. (1959). Portfolio Selection: Efficient Diversification of Investments. New York: John Wiley.
Merton, R. C. (1973a). Theory of rational option pricing. Bell Journal of Economics and Management Science 4: 141-183.
Merton, R. C. (1973b). An intertemporal capital asset pricing model. *Econometrica* 41, 5: 867-888.
Miller, M. H., and Modigliani, F. (1961). Dividend policy, growth, and the valuation of shares, Journal of Business 3: 411-433.
Modigliani, F., and Miller, M. H. (1958). The cost of capital, corporation finance, and the theory of investment. American Economic Review 48, 3: 261-297.
