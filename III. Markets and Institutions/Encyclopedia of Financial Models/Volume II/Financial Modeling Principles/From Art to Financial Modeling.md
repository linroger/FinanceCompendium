
# From Art to Financial Modeling

SERGIO M. FOCARDI, PhD

Partner, The Intertek Group

FRANK J. FABOZZI, PhD, CFA, CPA

Professor of Finance, EDHEC Business School

Abstract: It is often said that investment management is an art, not a science. However, since the early 1990s the market has witnessed a progressive shift toward a more industrial view of the investment management process. There are several reasons for this change. First, with globalization the universe of investable assets has grown many times over. Asset managers might have to choose from among several thousand possible investments from around the globe. The S&P 500 index is itself chosen from a pool of 8,000 investable U.S. stocks. Second, institutional investors, often together with their investment consultants, have encouraged asset management firms to adopt an increasingly structured process with documented steps and measurable results. Pressure from regulators and the media is another factor. Lastly, the sheer size of the markets makes it imperative to adopt safe and repeatable methodologies. The volumes are staggering.

In its modern sense, financial modeling is the design (or engineering) of contracts and portfolios of contracts that result in predetermined cash flows contingent on different events. Broadly speaking, financial models are employed to manage investment portfolios and risk. The objective is the transfer of risk from one entity to another via appropriate contracts. Though the aggregate risk is a quantity that cannot be altered, risk can be transferred if there is a willing counterparty.

Financial modeling came to the forefront of finance in the 1980s with the broad diffusion of derivative instruments. However, the concept and practice of financial modeling are quite old. Evidence of the use of sophisticated cross-border instruments of credit and pay ment dating from the time of the First Crusade (1095-1099) has come down to us from the letters of Jewish merchants in Cairo. The notion of the diversification of risk (central to modern risk management) and the quantification of insurance risk (a requisite for pricing insurance policies) were already understood, at least in practical terms, in the 14th century. The rich epistolary of Francesco Datini, a 14th-century merchant, banker, and insurer from Prato (Tuscany, Italy), contains detailed instructions to his agents on how to diversify risk and insure cargo. It also gives us an idea of insurance costs: Datini charged  $3.5\%$  to insure a cargo of wool from Malaga to Pisa and  $8\%$  to insure a cargo of malmsey (sweet wine) from Genoa to Southampton, England. These, according to


one of Datini's agents, were low rates: He considered  $12 - 15\%$  a fair insurance premium for similar cargo.

What is specific to modern financial modeling is the quantitative management of risk. Both the pricing of contracts and the optimization of investments require some basic capabilities of statistical modeling of financial contingencies. It is the size, diversity, and efficiency of modern competitive markets that makes the use of modeling imperative.

In the late 1980s, firms such as Merrill Lynch began to acquire supercomputers to perform derivative pricing computations. The overall cost of these supercomputing facilities, in the range of several million dollars, limited their diffusion to the largest firms. Today, computational facilities ten times more powerful cost only a few thousand dollars. To place today's computing power in perspective, consider that a 1990 run-of-the-mill Cray supercomputer cost several million U.S. dollars and had a clock cycle of 4 nanoseconds (i.e., 4 billionths of a second or 250 million cycles per second, notated as  $250\mathrm{MHz}$ ). Today's fast laptop computers are 10 times faster with a clock cycle of  $2.5\mathrm{GHz}$  and, at a few thousand dollars, cost only a fraction of the price. Supercomputer performance has itself improved significantly, with top computing speed in the range of several teraflops compared to the several megaflops of a Cray supercomputer in the 1990s. (Flops, which stands for floating point operations per second, is a measure of computational speed. A teraflop computer is a computer able to perform a trillion floating point operations per second.) In the space of 15 years, sheer performance has increased 1,000 times while the price-performance ratio has decreased by a factor of 10,000. Storage capacity has followed similar dynamics.


The diffusion of low-cost, high-performance computers has allowed the broad use of numerical methods. Computations that were once performed by supercomputers in air-conditioned rooms are now routinely performed on desktop machines. This has changed the landscape of financial modeling. The importance of finding closed-form solutions and the consequent search for simple models has been dramatically reduced. Computationally intensive methods such as Monte Carlo simulations and the numerical solution of differential equations are now widely used. As a consequence, it has become feasible to represent prices and returns with relatively complex models. Non-normal probability distributions have become commonplace in many sectors of financial modeling. It is fair to say that the key limitation of financial econometrics is now the size of available data samples or training sets, not the computations; it is the data that limit the complexity of estimates.

Mathematical modeling has also undergone major changes. Techniques such as equivalent martingale methods are being used in derivative pricing and cointegration, the theory of fat-tailed processes, and state-space modeling (including ARCH/GARCH and stochastic volatility models) are being used in econometrics.

Powerful specialized mathematical languages and vast statistical software libraries have been developed. The ability to program sequences of statistical operations within a single programming language has been a big step forward. Software firms such as Mathematica and Mathworks, and major suppliers of statistical tools such as SAS, have created simple computer languages for the programming of complex sequences of statistical operations. This ability is key to financial econometrics, which entails the analysis of large portfolios. (Note that although a number of highly sophisticated statistical packages are available to economists, these packages do not serve the needs of the financial econometrician who has to analyze a large number of time series.)

Presently only large or specialized firms write complex applications from scratch; this is typically done to solve specific problems, often in the derivatives area. The majority of financial modelers make use of high-level software programming tools and statistical libraries. It is difficult to overestimate the advantage brought by these software tools; they cut development time and costs by orders of magnitude.

In addition, there is a wide range of off-the-shelf financial applications that can be used directly by operators who have a general understanding of the problem but no advanced statistical or mathematical training. For example, powerful complete applications from firms such as MSCI Barra and component applications from firms such as FEA make sophisticated analytical methods available to a large number of professionals.

Data have, however, remained a significant expense. The diffusion of electronic transactions has made available large amounts of data, including high-frequency data (HFD), which gives us information at the transaction level. As a result, in budgeting for financial modeling, data have become an important factor in deciding whether to undertake a new modeling effort.

A lot of data are now available free on the Internet. If the required granularity of data is not high, these data allow one to study the viability of models and to perform rough tuning. However, real-life applications, especially applications based on finely grained data, require data streams of a higher quality than those typically available free on the Internet.

# INTEGRATING QUALITATIVE AND QUANTITATIVE INFORMATION

Textual information has remained largely outside the domain of quantitative modeling, having long been considered the domain of judgment. This is now changing as financial firms begin to tackle the problem of what is commonly called information overload; advances in computer technology are again behind the change (see Jonas and Focardi, 2002). Reuters publishes the equivalent of three bibles of (mostly financial) news daily; it is estimated that five new research documents come out of Wall Street every minute; asset managers at medium-sized firms report receiving up to 1,000 e-mails daily and work with as many as five screens on their desk. Conversely, there is also a lack of "digested" information. It has been estimated that only one third of the roughly 10,000 U.S. public companies are covered by meaningful Wall Street research; there are thousands of companies quoted on the U.S. exchanges with no Wall Street research at all. It is unlikely the situation is better relative to the tens of thousands of firms quoted on other exchanges throughout the world. Yet increasingly companies are providing information, including press releases and financial results, on their Web sites.

Such unstructured (textual) information is progressively being transformed into self-describing, semistructured information that can be automatically categorized and searched by computers. A number of developments are making this possible. These include:


- The development of XML (eXtensible Markup Language) standards for tagging textual data. This is taking us from free text search to queries on semistructured data.
- The development of RDF (Resource Description Framework) standards for appending metadata. This provides a description of the content of documents.
- The development of algorithms and software that generate taxonomies and perform automatic categorization and indexation.
- The development of database query functions with a high level of expressive power.
- The development of high-level text mining functionality that allows "discovery."

The emergence of standards for the handling of "meaning" is a major development. It implies that unstructured textual information, which some estimates put at  $80\%$  of all content stored in computers, will be largely replaced by semistructured information ready for machine handling at a semantic level. Today's standard structured databases store data in a prespecified format so that the position of all elementary information is known. For example, in a trading transaction, the date, the amount exchanged, the names of the stocks traded, and so on are all stored in predefined fields. However, textual data such as news or research reports do not allow such a strict structuring. To enable the computer to handle such information, a descriptive metafile is appended to each unstructured file. The descriptive metafile is a structured file that contains the description of the key information stored in the unstructured data. The result is a semistructured database made up of unstructured data plus descriptive metafiles.

Industry-specific and application-specific standards are being developed around the general-purpose XML. At the time of this writing, there are numerous initiatives established with the objective of defining XML standards for applications in finance, from time series to analyst and corporate reports and news. While it is not yet clear which of the competing efforts will emerge as the de facto standards, attempts are now being made to coordinate standardization efforts, eventually adopting the ISO 15022 central data repository as an integration point.


Technology for handling unstructured data has already made its way into the industry. Factiva, a Dow Jones-Reuters company, uses commercially available text mining software to automatically code and categorize more than 400,000 news items daily, in real time (prior to adopting the software, they manually coded and categorized some 50,000 news articles daily). Users can search the Factiva database, which covers 118 countries and includes some 8,000 publications and more than 30,000 company reports with simple intuitive queries expressed in a language close to the natural language. Several firms use text mining technology in their Web-based research portals for clients on the buy and sell sides. Such services typically offer classification, indexation, tagging, filtering, navigation, and search.

These technologies are helping to organize research flows. They allow us to automatically aggregate, sort, and simplify information and provide the tools to compare and analyze the information. In serving to pull together material from myriad sources, these technologies will not only form the basis of an internal knowledge management system but allow us to better structure the whole investment management process. Ultimately, the goal is to integrate data and text mining in applications such as fundamental research and event analysis, linking news, and financial time series.

# PRINCIPLES FOR ENGINEERING A SUITE OF MODELS

Creating a suite of models to satisfy the needs of a financial firm is engineering in full earnest. It begins with a clear statement of the objectives.

In the case of financial modeling, the objective is identified by the type of decision-making process that a firm wants to implement. The engineering of a suite of financial models requires that the process on which decisions are made is fully specified and that the appropriate information is supplied at every step. This statement is not as banal as it might seem.

We have now reached the stage where, in some markets, financial decision making can be completely automated through optimizers. As we will see in the following entries, one can define models able to construct a conditional probability distribution of returns. An optimizer will then translate the forecast into a tradable portfolio. The manager becomes a kind of high-level supervisor of an otherwise automated process.

However, not all financial decision-making applications are, or can be, fully automated. In many cases, it is the human operator who makes the decision, with models supplying the information needed to arrive at the decision. Building an effective suite of financial models requires explicit decisions as to (1) what level of automation is feasible and desirable, and (2) what information or knowledge is required.

The integration of different models and of qualitative and quantitative information is a fundamental need. This calls for integration of different statistical measures and points of view. For example, an asset management firm might want to complement a portfolio optimization methodology based on Gaussian forecasting with a risk management process based on extreme value theory. The two processes offer complementary views. In many cases, however, different methodologies give different results though they work on similar principles and use the same data. In these cases, integration is delicate and might run against statistical principles.


In deciding which modeling efforts to invest in, many firms have in place a sophisticated evaluation system. Firms evaluate a model's return on investment and how much it will cost to buy the data necessary to run the model.

# KEY POINTS

- Key to a quantitative framework is the measurement and management of uncertainty (i.e., risk) and financial modeling.

- Modeling is the tool to achieve these objectives; advances in information technology are the enabler.

- Unstructured textual information is progressively being transformed into self-describing, semistructured information, allowing a better structuring of the research process.

- After nearly two decades of experience with quantitative methods, market participants now more clearly perceive the benefits and the limits of modeling; given today's technology and markets, the need to better integrate qualitative and quantitative information is clearly felt.

# REFERENCES

Jonas, C., and Focardi, S. M. (2002). Leveraging Unstructured Data in Investment Management. Paris: The Intertek Group.

Wilson, K. (1989). Grand challenges to computational science. Future Generation Computer Systems 5: 171.
