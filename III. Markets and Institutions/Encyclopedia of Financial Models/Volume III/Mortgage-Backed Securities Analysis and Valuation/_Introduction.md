
# Mortgage-Backed Securities Analysis and Valuation

Mortgage-backed securities are fixed-income securities backed by a pool of mortgage loans. Residential mortgage-backed securities (RMBS) are backed by a pool of residential mortgage loans (one-to-four family dwellings). The RMBS market includes agency RMBS and nonagency RMBS. The former are securities issued by the Government National Mortgage Association (Ginnie Mae), Fannie Mae, and Freddie Mac. Agency RMBS include passthrough securities, collateralized mortgage obligations, and stripped mortgage-backed securities (interest-only and principal-only securities). The valuation of RMBS is complicated due to prepayment risk, a form of call risk. In contrast, nonagency RMBS are issued by private entities, have no implicit or explicit government guarantee, and therefore require one or more forms of credit enhancement in order to be assigned a credit rating. The analysis of nonagency RMBS must take into account both prepayment risk and credit risk. The most commonly used method for valuing RMBS is the Monte Carlo method, although other methods have garnered favor, in particular the decomposition method. The analysis of RMBS requires an understanding of the factors that impact prepayments.

# Operational Risk

Operational risk has been regarded as a mere part of a financial institution's "other" risks. However, failures of major financial entities have made regulators and investors aware of the importance of this risk. In general terms, operational risk is the risk of loss resulting from inadequate or failed internal processes, people, or systems or from external events. This risk encompasses legal risks, which includes, but is not limited to, exposure to fines, penalties, or punitive damages resulting from supervisory actions, as well as private settlements. Operational risk can be classified according to several principles: nature of the loss (internally inflicted or externally inflicted), direct losses or indirect losses, degree of expectancy (expected or unexpected), risk type, event type or loss type, and by the magnitude (or severity) of loss and the frequency of loss. Operational risk can be the cause of reputational risk, a risk that can occur when the market reaction to an operational loss event results in reduction in the market value of a financial institution that is greater than the amount of the initial loss. The two principal approaches in modeling operational loss distributions are the nonparametric approach and the parametric approach. It is important to employ a model that captures tail events, and for this reason in operational risk modeling, distributions that are characterized as light-tailed distributions should be used with caution. The models that have been proposed for assessing operational risk can be broadly classified into top-down models and bottom-up models. Top-down models quantify operational risk without attempting to identify the events or causes of losses. Bottom-up models quantify operational risk on a micro level, being based on identified internal events. The obstacle hindering the implementation of these models is the scarcity of available historical operational loss data.


# Optimization Tools

Optimization is an area in applied mathematics that, most generally, deals with efficient algorithms for finding an optimal solution among a set of solutions that satisfy given constraints. Mathematical programming, a management science tool that uses mathematical optimization models to assist in decision making, includes linear programming, integer programming, mixed-integer programming, nonlinear programming, stochastic programming, and goal programming. Unlike other mathematical tools that are available to decision makers such as statistical models (which tell the decision maker what occurred in the past), forecasting models (which tell the decision maker what might happen in the future), and simulation models (which tell the decision maker what will happen under different conditions), mathematical programming models allow the decision maker to identify the "best" solution. Markowitz's mean-variance model for portfolio selection is an example of an application of one type of mathematical programming (quadratic programming). Traditional optimization modeling assumes that the inputs to the algorithms are certain, but there are also branches of optimization such as robust optimization that study the optimal decision under uncertainty about the parameters of the problem. Stochastic programming deals with both the uncertainty about the parameters and a multiperiod decision-making framework.


# Probability Distributions

In financial models where the outcome of interest is a random variable, an assumption must be made about the random variable's probability distribution. There are two types of probability distributions: discrete and continuous. Discrete probability distributions are needed whenever the random variable is to describe a quantity that can assume values from a countable set, either finite or infinite. A discrete probability distribution (or law) is quite intuitive in that it assigns certain values, positive probabilities, adding up to one, while any other value automatically has zero probability. Continuous probability distributions are needed when the random variable of interest can assume any value inside of one or more intervals of real numbers such as, for example, any number greater than zero. Asset returns, for example, whether measured monthly, weekly, daily, or at an even higher frequency are commonly modeled as continuous random variables. In contrast to discrete probability distributions that assign positive probability to certain discrete values, continuous probability distributions assign zero probability to any single real number. Instead, only entire intervals of real numbers can have positive probability such as, for example, the event that some asset return is not negative. For each continuous probability distribution, this necessitates the so-called probability density, a function that determines how the entire probability mass of one is distributed. The density often serves as the proxy for the respective probability distribution. To model the behavior of certain financial assets in a stochastic environment, a financial modeler can usually resort to a variety of theoretical distributions. Most commonly, probability distributions are selected that are analytically well known. For example, the normal distribution (a continuous distribution)—also called the Gaussian distribution—is often the distribution of choice when asset returns are modeled. Or the exponential distribution is applied to characterize the randomness of the time between two successive defaults of firms in a bond portfolio. Many other distributions are related to them or built on them in a well-known manner. These distributions often display pleasant features such as stability under summation—meaning that the return of a portfolio of assets whose returns follow a certain distribution again follows the same distribution. However, one has to be careful using these distributions since their advantage of mathematical tractability is often outweighed by the fact that the stochastic behavior of the true asset returns is not well captured by these distributions. For example, although the normal distribution generally renders modeling easy because all moments of the distribution exist, it fails to reflect stylized facts commonly encountered in


asset returns—namely, the possibility of very extreme movements and skewness. To remedy this shortcoming, probability distributions accounting for such extreme price changes have become increasingly popular. Some of these distributions concentrate exclusively on the extreme values while others permit any real number, but in a way capable of reflecting market behavior. Consequently, a financial modeler has available a great selection of probability distributions to realistically reproduce asset price changes. Their common shortcoming is generally that they are mathematically difficult to handle.

# Risk Measures

The standard assumption in financial models is that the distribution for the return on financial assets follows a normal (or Gaussian) distribution and therefore the standard deviation (or variance) is an appropriate measure of risk in the portfolio selection process. This is the risk measure that is used in the well-known Markowitz portfolio selection model (that is, mean-variance model), which is the foundation for modern portfolio theory. Mounting evidence since the early 1960s strongly suggests that return distributions do not follow a normal distribution, but instead exhibit heavy tails and, possibly, skewness. The "tails" of the distribution are where the extreme values occur, and these extreme values are more likely than would be predicted by the normal distribution. This means that between periods where the market exhibits relatively modest changes in prices and returns, there will be periods where there are changes that are much higher (that is, crashes and booms) than predicted by the normal distribution. This is of major concern to financial modelers in seeking to generate probability estimates for financial risk assessment. To more effectively implement portfolio selection, researchers have proposed alternative risk measures. These risk measures fall into two disjointed categories: dispersion measures and safety-first measures. Dispersion measures include mean standard deviation, mean absolute deviation, mean absolute moment, index of dissimilarity, mean entropy, and mean colog. Safety-first risk measures include classical safety first, value-at-risk, average value-at-risk, expected tail loss, MiniMax, lower partial moment, downside risk, probability-weighted function of deviations below a specified target return, and power conditional value-at-risk. Despite these alternative risk measures, the most popular risk measure used in financial modeling is volatility as measured by the standard deviation. There are different types of volatility: historical, implied volatility, level-dependent volatility, local volatility, and stochastic volatility (e.g., jump-diffusion volatility). There are risk measures commonly used for bond portfolio management. These measures include duration, convexity, key rate duration, and spread duration.


# Software for Financial Modeling

The development of financial models requires the modeler to be familiar with spreadsheets such as Microsoft Excel and/or a platform to implement concepts and algorithms such as the Palisade Decision Tools Suite and other Excel-based software (mostly @RISK1, Solver2, VBA3), and MATLAB. Financial modelers can choose one or the other, depending on their level of familiarity and comfort with spreadsheet programs and their add-ins versus programming environments such as MATLAB. Some tasks and implementations are easier in one environment than in the other. MATLAB is a modeling environment that allows for input and output processing, statistical analysis, simulation, and other types of model building for the purpose of analysis of a situation. MATLAB uses a number-array-oriented programming language, that is, a programming language in which vectors and matrices are the basic data structures. Reliable built-in functions, a wide range of specialized toolboxes, easy interface with widespread software like Microsoft Excel, and beautiful graphing capabilities for data visualization make implementation with MATLAB efficient and useful for the financial modeler. Visual Basic for Applications (VBA) is a programming language environment that allows Microsoft Excel users to automate tasks, create their own functions, perform complex calculations, and interact with spreadsheets. VBA shares many of the same concepts as object-oriented programming languages. Despite some important limitations, VBA does add useful capabilities to spreadsheet modeling, and it is a good tool to know because Excel is the platform of choice for many finance professionals.


# Stochastic Processes and Tools

Stochastic integration provides a coherent way to represent that instantaneous uncertainty (or volatility) cumulates over time. It is thus fundamental to the representation of financial processes such as interest rates, security prices, or cash flows. Stochastic integration operates on stochastic processes and produces random variables or other stochastic processes. Stochastic integration is a process defined on each path as the limit of a sum. However, these sums are different from the sums of the Riemann-Lebesgue integrals because the paths of stochastic processes are generally not of bounded variation. Stochastic integrals in the sense of Ito are defined through a process of approximation by (1) defining Brownian motion, which is the continuous limit of a random walk, (2) defining stochastic integrals for elementary functions as the sums of the products of the elementary functions multiplied by the increments of the Brownian motion, and (3) extending this definition to any function through approximating sequences. The major application of integration to financial modeling involves stochastic integrals. An understanding of stochastic integrals is needed to understand an important tool in contingent claims valuation: stochastic differential equations. The dynamic of financial asset returns and prices can be expressed using a deterministic process if there is no uncertainty about its future behavior, or, with a stochastic process, in the more likely case when the value is uncertain. Stochastic processes in continuous time are the most used tool to explain the dynamic of financial assets returns and prices. They are the building blocks to construct financial models for portfolio optimization, derivatives pricing, and risk management. Continuous-time processes allow for more elegant theoretical modeling compared to discrete time models, and many results proven in probability theory can be applied to obtain a simple evaluation method.


# Statistics

Probability models are theoretical models of the occurrence of uncertain events. In contrast, statistics is about empirical data and can be broadly defined as a set of methods used to make inferences from a known sample to a larger population that is in general unknown. In finance, a particular important example is making inferences from the past (the known sample) to the future (the unknown population). In statistics, probabilistic models are applied using data so as to estimate the parameters of these models. It is not assumed that all parameter values in the model are known. Instead, the data for the variables in the model to estimate the value of the parameters are used and then applied to test hypotheses or make inferences about their estimated values. In financial modeling, the statistical technique of regression models is the workhorse. However, because regression models are part of the field of financial econometrics, this topic is covered in that topic category. Understanding dependences or functional links between variables is a key theme in financial modeling. In general terms, functional dependencies are represented by dynamic models. Many important models are linear models whose coefficients are correlation coefficients. In many instances in financial modeling, it is important to arrive at a quantitative measure of the strength of dependencies. The correlation coefficient provides such a measure. In many instances, however, the correlation coefficient might be misleading. In particular, there are cases of nonlinear dependencies that result in a zero correlation coefficient. From the point of view of financial modeling, this situation is particularly dangerous as it leads to substantially underestimated risk. Different measures of dependence have been proposed, in particular copula functions. The copula overcomes the drawbacks of the correlation as a measure of dependency by allowing for a more general measure than linear dependence, allowing for the modeling of dependence for extreme events, and being indifferent to continuously increasing transformations. Another essential tool in financial modeling, because it allows the incorporation of uncertainty in financial models and consideration of additional layers of complexity that are difficult to incorporate in analytical models, is Monte Carlo simulation. The main idea of Monte Carlo simulation is to represent the uncertainty in market variables through scenarios, and to evaluate parameters of interest that depend on these market variables in complex ways. The advantage of such an approach is that it can easily capture the dynamics of underlying processes and the otherwise complex effects of interactions among market variables. A substantial amount of research in recent years has been dedicated to making scenario generation more accurate and efficient, and a number of sophisticated computational techniques are now available to the financial modeler.


# Term Structure Modeling

The arbitrage-free valuation approach to the valuation of option-free bonds, bonds with em bedded options, and option-type derivative instruments requires that a financial instrument be viewed as a package of zero-coupon bonds. Consequently, in financial modeling, it is essential to be able to discount each expected cash flow by the appropriate interest rate. That rate is referred to as the spot rate. The term structure of interest rates provides the relationship between spot rates and maturity. Because of its role in valuation of cash bonds and option-type derivatives, the estimation of the term structure of interest rates is of critical importance as an input into a financial model. In addition to its role in valuation modeling, term structure models are fundamental to expressing value, risk, and establishing relative value across the spectrum of instruments found in the various interest-rate or bond markets. The term structure is most often specified for a specific market such as the U.S. Treasury market, the bond market for double-A rated financial institutions, the interest rate market for LIBOR, and swaps. Static models of the term structure are characterizations that are devoted to relationships based on a given market and do not serve future scenarios where there is uncertainty. Standard static models include those known as the spot yield curve, discount function, par yield curve, and the implied forward curve. Instantiations of these models may be found in both a discrete- and continuous-time framework. An important consideration is establishing how these term structure models are constructed and how to transform one model into another. In modeling the behavior of interest rates, stochastic differential equations (SDEs) are commonly used. The SDEs used to model interest rates must capture the market properties of interest rates such as mean reversion and/or a volatility that depends on the level of interest rates. For a one-factor model, the SDE is used to model the behavior of the short-term rate, referred to as simply the "short rate." The addition of another factor (i.e., a two-factor model) involves extending the SDE to represent the behavior of the short rate and a long-term rate (i.e., long rate).


The entries can serve as material for a wide spectrum of courses, such as the following:

Financial engineering
Financial mathematics
Financial econometrics
- Statistics with applications in finance

- Quantitative asset management
- Asset and derivative pricing
- Risk management

Frank J. Fabozzi

Editor, Encyclopedia of Financial Models

# Guide to the Encyclopedia of Financial Models

The Encyclopedia of Financial Models provides comprehensive coverage of the field of financial modeling. This reference work consists of three separate volumes and 127 entries. Each entry provides coverage of the selected topic intended to inform a broad spectrum of readers ranging from finance professionals to academicians to students to fiduciaries. To derive the greatest possible benefit from the Encyclopedia of Financial Models, we have provided this guide. It explains how the information within the encyclopedia can be located.

# ORGANIZATION

The Encyclopedia of Financial Models is organized to provide maximum ease of use for its readers.

# Table of Contents

A complete table of contents for the entire encyclopedia appears in the front of each volume. This list of titles represents topics that have been carefully selected by the editor, Frank J. Fabozzi. The Preface includes a more detailed description of the volumes and the topic categories that the entries are grouped under.

# Index

A Subject Index for the entire encyclopedia is located at the end of each volume. The sub jects in the index are listed alphabetically and indicate the volume and page number where information on this topic can be found.


# Entries

Each entry in the Encyclopedia of Financial Models begins on a new page, so that the reader may quickly locate it. The author's name and affiliation are displayed at the beginning of the entry. All entries in the encyclopedia are organized according to a standard format, as follows:

Title and author
Abstract
- Introduction
Body
Key points
Notes
- References

# Abstract

The abstract for each entry gives an overview of the topic, but not necessarily the content of the entry. This is designed to put the topic in the context of the entire Encyclopedia, rather than give an overview of the specific entry content.

# Introduction

The text of each entry begins with an introductory section that defines the topic under discussion and summarizes the content. By reading this section, the reader gets a general idea about the content of a specific entry.


# Body

The body of each entry explains the purpose, theory, and math behind each model.

# Key Points

The key points section provides in bullet point format a review of the materials discussed in each entry. It imparts to the reader the most important issues and concepts discussed.


# Notes

The notes provide more detailed information and citations of further readings.

# References

The references section lists the publications cited in the entry.

# ENCYCLOPEDIA

# OF

# FINANCIAL MODELS

Volume III

# Mortgage-Backed Securities Analysis and Valuation
