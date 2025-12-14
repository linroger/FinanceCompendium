---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Chapter 29
linter-yaml-title-alias: Chapter 29
---

# Chapter 29

# Financial Innovation

In the 1980s, when booking a flight from New York to London, a customer would contact a travel agent, who would check availability, present options, receive instructions, and then finally make a reservation. Today, that customer is likely to go to the airline's website and make the booking directly with the airline. What has happened is a process known as disintermediation. The travel agent as an intermediary is no longer needed.

This does not mean that there is no need at all for intermediaries in the travel business. Online services such as Expedia and Travelocity have sprung up to be of assistance when customers do not know which airline to use or want to quickly compare prices offered by different airlines. But the nature of the intermediaries in the travel business has changed, and the human involvement in the process of making straightforward flight arrangements has largely disappeared. The creation of new technology-based intermediaries like Expedia and Travelocity is referred to as reintermediation. Disintermediation followed by reintermediation is a common pattern in technological change.

Banks and other financial companies are intermediaries, like the travel agents of the 1980s, and they are similarly in danger of having the services they provide disrupted by technology. A commercial bank is an intermediary that channels money from depositors to borrowers. It also is an intermediary in the payments system, clearing checks and transferring funds as instructed by clients. Investment banks are intermediaries that facilitate the issue of stocks and bonds. Banks and other financial companies are intermediaries when they perform wealth management services for clients, channeling their savings to appropriate investment products.

FinTech is concerned with the application of technology to financial services. Many applications of technology such as ATMs, online banking, and online trading have already taken place. This chapter looks at how financial services are likely to be impacted by FinTech in the future, which activities are most likely to be digitized, how customers will respond, and how financial services companies can restructure themselves to adjust to rapid technological changes. These are important questions for today's risk management professionals.

# 29.1 Technological Advances

The increase in computer processing power in the first 50 years of the computer age has been truly astounding, and this has made possible many societal advances. In 1965 Gordon Moore, co-founder of Intel, correctly predicted that computer processing power would double every two years. A single smartphone now has more processing power than NASA had when it landed a man on the moon in 1969!

Many activities formerly carried out by humans have been automated. An interesting development is robotics process automation (RPA). This is a software application that replicates the actions of human beings when they interact with a company's systems. It is an alternative to automating by changing the systems themselves. The software robot is a virtual worker that can be trained to perform certain tasks in much the same way as a human would be trained. The tasks could for example be concerned with opening a new customer account or hiring a new employee. Typically, data are sent to a number of different systems within the organization.

# 29.1.1 Machine Learning

The first industrial revolution, which started in the 18th century, was concerned with using steam and water power. The second industrial revolution, which started in the 19th century, was concerned with electricity and mass production. The third industrial revolution, which started in the mid-20th century, was concerned with digitization: the automation of routine tasks previously carried out by humans. The fourth industrial revolution, which we are now living through, is concerned with creating intelligence from data.

Machine learning is at the center of the fourth industrial revolution. The difference between the third and fourth industrial revolutions can be illustrated by considering the use of computers by a bank to handle loan applications. The loan officer knows certain variables (referred to in machine learning as features) describing loan applicants (the credit score of the applicant, the applicant's income, other outstanding debt of the applicant, etc.) If the way these features are used to determine whether an application is accepted is documented, credit decisions could be automated. This would be an example of digitization: an application of the third industrial revolution. If there was no documentation of the rules used by loan officers to make decisions, a data scientist could collect data on the features of applicants and the decisions made by loan officers so that the relationship between the decisions and the features could be learned. This would be an application of the fourth industrial revolution.

However, a data scientist could go one step further in applying the tools of the fourth industrial revolution. He or she could collect data on the features of applicants and how loans worked out (i.e., whether they were fully repaid or defaulted). Many financial institutions use machine learning in this way for routine lending decisions. It can lead to decision criteria that improve on those used by loan officers.

It is important to distinguish machine learning from traditional statistics. The difference is illustrated in Figure 29.1. In traditional statistics the first stage is to develop a hypothesis. This should be done without looking at data. Once the hypothesis has been developed and refined, data is collected to test it. Machine learning has a quite different methodology. There is no hypothesis. The first stage is to collect the data. Alternative models are fitted to the data and one is chosen.

Three types of machine learning models can be distinguished:

- Unsupervised learning models
Supervised learning models
- Reinforcement learning models

Unsupervised learning is concerned with learning patterns in data. It is a popular tool in marketing. Consider for example a bank. It has access to many features describing its customers: average account balance, number of transactions per month, other bank services used, and so on. This could enable it to determine a number of different clusters where the customers in each cluster behave similarly. It might then be able to identify which of the bank's products (e.g., car loans, mortgages, wealth management services, etc.) each cluster is likely to be interested in and target its advertising more effectively. Two common unsupervised learning tools are the k-mean algorithm and principal components analysis

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/f92d6a55-cea9-43e0-894c-41ef6fed0a93/b17f96a86d1907f35d42f9cdd87b4b33ca1837f4aac6cae07543afc5e167540d.jpg)

Figure 29.1 Methodologies of Statistics and Machine Learning

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/f92d6a55-cea9-43e0-894c-41ef6fed0a93/e77bb91e0edd321313caba0b1409d5df7b8228485101655416eede303ce46ca6.jpg)

Supervised learning is concerned with using data to make predictions. There are two types of prediction: prediction of a value and classification. The prediction of the value of houses in a certain city is an example of value prediction. The features of houses could be square feet of living space, number of bedrooms, lot size, location, etc. Some labeled data (i.e., data where the value of the house and its features are known) must be available. The algorithm learns how the value depends on the features so that the value of other houses can be predicted.

An example of classification is the loan application example mentioned earlier. When we are attempting to model the decisions of the loan officer, the features of the applicant are used to classify the loan as "accepted" or "rejected." When we are attempting to improve on those decisions, the features of the applicant are used to classify the loan as "fully paid back" or "defaulted."

There are many tools for supervised learning. Linear regression (for value prediction) and logistic regression (for classification) are well known statistical techniques that are often used in machine learning. Other tools are k-nearest neighbors, decision trees, support vector machines, and neural networks.

One problem in machine learning is overfitting. If a data scientist searches widely enough, he or she may find a model that fits available data really well. But the model may not generalize to new data. For this reason, it is good practice to divide available data into three sets: a training data set, a validation data set, and a test data set. The training data set, which might be  $60\%$  of the total, is used to determine the parameters of alternative models. The validation data set (perhaps  $20\%$  of the total) is used as an out-of-sample test to see how well the models generalize to new data. The model chosen should be reasonably accurate and generalize well. The test data set (which might also be  $20\%$  of the total) is held back to provide an estimate of model accuracy.

Reinforcement learning (RL) is concerned with situations where a series of decisions have to be made in a changing environment. One application is to the hedging of derivatives.2 A trader might implement a hedge today, rebalance the hedge tomorrow in the light of changing market conditions, rebalance again the next day, and so on. Reinforcement hedging is a trial-and-error tool for determining the best strategy. It underlies the algorithms that have been developed to play Go, chess, and other two-person games better than the best human players. The RL algorithm is given the rules of the game (and nothing else). It plays against itself millions of times and learns the best strategy to follow in different situations.

# 29.1.2 Blockchain

Ledgers recording the ownership of assets can involve the possibility of fraud, lack of trust by users, and computer hacking. Many readers will have heard stories about title fraud where someone who is not the owner of a house manages to claim ownership and obtain a mortgage. Sometimes ledgers recording the same items are kept by different people from different organizations. There may then be inconsistencies in the records, and it can be expensive and time-consuming to sort these out.

Blockchain is a distributed ledger where many people can add entries and a community of users control how it is updated. Problems involving inconsistent records, fraud, or hacking are either impossible or extremely unlikely. Identical records are on many different computers and can be inspected at any given time. A blockchain was first developed in 2009 in connection with bitcoin, but many other applications of the technology are now being explored. The ledger defining who owns what is a long list of blocks. When a new block of transactions is created (every few minutes in the case of bitcoin), a new block is added to the chain. A constantly updated list of blocks is given to everyone who participates.

An important aspect of blockchain is what is known as hashing. A hash is a string of 64 characters. Any text can be converted into a hash, but the process cannot be reversed so that the hash is converted back into text. Even a small change in the text will totally change the hash. To illustrate this, we can go to the SHA 256 hash calculator at: http://www.xorbin.com/tools/sha256-cache-calculator

Hashing the title of this book, Risk Management and Financial Institutions (input without italics and without hitting Enter), gives fd3dce1db8e4836afde19b624bc3eee9d29c883d04f42039754b4bd440104e26

Adding the edition number so that Risk Management and Financial Institutions 6 is input (again without italics), produces a totally different hash:

9361313d924fccc4eea0323f2292e37f2b4809d3b1296f034becb8dd0367e9a8

It is theoretically possible for two sets of records to give the same hash, but in practice this is to all intents and purposes impossible. The hash we have just looked at is formed from the numerals 0 to 9 and the first six letters of the alphabet. This means that there are  $16^{64} - 1$  different hashes. $^3$

The records in each block of a blockchain are sealed and made tamper proof with a hash. One of the inputs to the hash is the hash of the immediately preceding block. This means that any attempt to tamper with a block will be immediately spotted because it will affect that block and all subsequent blocks.

In order for the blockchain to be free from human intervention, participants must be given an incentive to check new blocks and hash them. Bitcoin does this by inviting participants, referred to as miners, to search for something called a nonce, which when added to the block will lead to a hash that starts with several zeros. The participant who finds the nonce first is rewarded with a predetermined number of bitcoins. The new block is then hashed and distributed to the computers of all participants.

There are two sorts of blockchains: permissioned and permissionless. Permissionless blockchains such as bitcoin have no restrictions on participation and there is no need for participants to know or trust each other. Permissioned blockchains are privately shared systems, and the participants may know one another and may (at least to some extent) trust one another. Permissioned blockchains are a way financial institutions can share data to speed the settlement of transactions.

Distributed ledger technologies (DLTs) such as blockchain are now receiving a great deal of attention by financial institutions and the big four accounting firms, as well as many other large businesses.

Whether blockchain and other DLT ideas live up to the hype remains to be seen. IBM has for several years been working with a number of banks to use blockchain technology to make it easier for small and medium-size businesses to trade with one another. Blockchain can make it easier to complete electronic transfers, both domestically and internationally. Other potential applications in finance are to the trading of securities, settlement, clearing, and other back-office functions. DLTs have the potential to speed up these processes. Indeed, almost real-time settlement of trades becomes a possibility. These are examples of disintermediation, which was mentioned earlier. The innovations are both a threat and an opportunity. They will reduce bank fees but may open up opportunities for new services that can be offered to consumers and businesses. Operational risks should be reduced because the possibility of fraud or cyber-attacks should be lower. This may in turn lead to a reduction in regulatory capital.

# 29.2 Payment Systems

Technology has already had a huge effect on the way payments are made. As a society we have moved from cash and checks to credit and debit cards to the use of mobile wallets. Developing countries have in some respects progressed further in this direction than developed countries, in part because traditional payment systems were not as well established. Many FinTech start-ups are offering new services. Some, such as PayPal, Apple Pay, and Google Wallet in the United States, and Alipay (part of Alibaba) and Tencent in China, are large, well-established companies.

The key attributes of a payments method are speed, convenience, security, simplicity, and cost. Many services such as PayPal transfer funds almost immediately. In September 2021, PayPal introduced an app offering a combination of financial tools including direct deposit, bill paying, a digital wallet, and the use of cryptocurrencies. Storing credit-card-like information in an iPhone or similar device adds to the convenience for many consumers. Indeed, given the dominant position of Apple in the smartphone market, it has been natural for Apple to expand into payments and other banking services. One can imagine that wearables such as watches or bracelets, or even implants, may be used in the same way as smartphones to add to the convenience of the way payments are made.

Security is a big issue for all forms of payment. Tens of billions of dollars are lost each year from credit card fraud. Embedding chips as well as magnetic strips in cards helps but does not eliminate this problem. We are likely to see big changes in the way fraud is avoided in the future. Digital wallets are considered to be more secure than credit cards. Many payment providers, including banks, are investigating the use of biometric authorization. Amazon One, with 60 stores across the United States, now allows a purchase to be completed by waving the palm of one's hand over a reader. Retinal scanning, facial recognition, voice authentication, and even heartbeat monitoring are all being considered. The costs of fraud are usually borne by the payments system provider, and they are of course passed on to merchants in the form of the fee charged. The merchants in turn pass the fee on to consumers. Everyone therefore has an interest in reducing fraud, and the approaches we have just discussed for making more secure payments should be welcomed.

If biometric authorization seems far-fetched, bear in mind that India has issued biometric IDs (involving fingerprints and retinal scans) to over one billion people and is laying the groundwork for a cashless society. Making more people part of the financial ecosystem is an important objective for development of the country. The biometric IDs also have the advantage that some government benefits can be distributed with less involvement from intermediaries. Of course, some would argue that the provision of biometric information is an unacceptable violation of a person's privacy, and this may slow down its acceptance in developed countries.

Some payment systems allow users to borrow money. The interest rates charged by credit card companies are very high, but it should be remembered that users do get free credit for the period of time between a purchase and the next monthly due date. (PayPal competes with this by offering 14 days of free credit.) It is likely that more convenient credit facilities, tailored to the needs of users, will be developed. Alibaba through its subsidiaries such as Alipay and Mybank is already offering many of the same services as banks.

What other services can be offered to make payment systems attractive? Many individuals remit funds on a regular basis to family members in another country. The foreign exchange services associated with those transactions are likely to get more convenient and more competitive. For businesses, easy-to-use foreign exchange hedging services that compete with those offered by banks are likely to be developed. FinTechs may carry out sophisticated analyses of sales to help a company understand its customers better or provide accounting services.

One aspect of the digitization of payments is that it becomes much easier to collect data on a person's spending habits. This could be useful to banks when making credit decisions. (Knowing how a potential borrower spends money can be almost as important as knowing how much he or she earns.) Of course it presents huge privacy issues. Sometimes payment systems sell anonymized data. Often the data are analyzed using machine learning to better understand consumer preferences.

What is the future of payments? Credit cards are likely to be increasingly replaced by mobile payments. The innovations we have mentioned will continue. Cash will probably continue to exist for some time, but the percentage of people using it will decline. It is worth noting that Sweden has led the world in moving toward becoming a cashless society, but political parties in that country are asking for regulations to require the continuation of cash payments. They are concerned about the impact of a cashless society on the elderly, lower income groups, and people in rural areas with limited or no internet service.

# 29.2.1 Cryptocurrencies

The use of bitcoin as a means of payment has grown rapidly since it was first introduced in 2009. Figure 29.2 shows the value of bitcoin in U.S. dollars between 2015 and June 2022. The price has been very volatile. It rose to over  $60,000 in April 2021, fell to almost$ 30,000 in July 2021, rose to over $60,000 in October 2021 before falling to less than $20,000 in June 2022.

The advantage of using a cryptocurrency such as bitcoin as a means of payment is that it is outside the control of any one government and therefore its value cannot be debased by a government's money supply policies. This can be particularly attractive for individuals living in developing countries such as Venezuela or Zimbabwe where the value of the domestic currency is highly volatile. Payments are secure, private, and low cost. An individual can remain anonymous while using a cryptocurrency.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/f92d6a55-cea9-43e0-894c-41ef6fed0a93/0e3d39b9621e8ec934886647e9fbfcabe62d9137110f15d14b4c0dcac93a871a.jpg)

Figure 29.2 Value of Bitcoin in U.S. Dollars, January 2015 to June 2022

# BUSINESS SNAPSHOT 29.1

# Mt. Gox

Bitcoin is a secure means of payment, but some bitcoin exchanges, which allow individuals to trade bitcoins for conventional (fiat) money, have had problems. There have been a number of reports of exchanges being hacked. The most high-profile one concerns Mt. Gox, which is based in the Shibuya district of Tokyo. In February 2014, it announced that bitcoins worth more than 450 million were missing and likely stolen. The reason for the loss, which happened over a number of years, is unclear. It appears that bad management and poorly controlled computer code allowed hackers to steal bitcoins. Some have blamed the CEO for embezzling the funds, but this has been denied. Whatever the reason, Mt. Gox filed for bankruptcy in April 2014.

How can you avoid these types of losses? Coins should not be stored on an exchange. They should be transferred to a trustworthy online exchange only when you want to trade them.

The disadvantage of a cryptocurrency is that its value is more volatile than other fiat (traditional) currencies. It pays no interest. It is often associated (fairly or unfairly) with illegal activities such as drug dealing. Jamie Dimon, CEO of JPMorgan, is on record as saying "Bitcoin is a fraud that will ultimately blow up." China has introduced laws banning the use of bitcoin and the activities of bitcoin exchanges. Users of cryptocurrencies are reliant on the way a cryptocurrency has been set up. If a flaw were found, the currency would be worthless. The bitcoin protocol has not been successfully hacked, but bitcoin exchanges have been. (See Business Snapshot 29.1.)

Bitcoin (BTC) was the first cryptocurrency, but many others have been developed. The largest by market capitalization in 2022 were: Ethereum (ETH), Tether (USDT), USD Coin (USDC), Binance Coin (BNB), Binance USD (BUSD), Cardano (ADA), XRP (XRP), Solana (SOL), Dogecoin (DOGE), Polkadot (DOT), and Dai (DAI). Some have procedures for making transactions secure that are quite different from those used by bitcoin. Some cryptocurrencies such as ethereum facilitate smart contracts. These are contracts that execute automatically when specified conditions are met, thereby eliminating the need for intermediaries.

A stablecoin is a particular type of cryptocurrency whose value is tied to an outside asset such as the U.S. dollar or gold. A number of the cryptocurrencies mentioned earlier

(e.g., Tether and USD Coin) are stablecoins. They maintain their value by holding the outside asset. When a stable coin is bought, an equivalent amount of the outside asset is bought. When it is sold, an equivalent amount of the outside asset is sold. Stablecoins are designed to have the advantages of cryptocurrencies, such as bitcoin, without the volatility.

Some cryptocurrencies have tried to use algorithms to match the value of a stablecoin to the outside asset. They do this by increasing or decreasing the supply of the stablecoin. In 2022, the stablecoin TerraUSD and its sister token, Luna, which used algorithms, failed spectacularly, leading to 60 billion of losses. Algorithmic strategies for creating stablecoins may never become popular with investors again.

# 29.2.2 Central Bank Digital Currencies

Nearly all major countries of the world are exploring the possibility of offering their own digital currencies. These are known as central bank digital currencies (CBDCs). Instead of issuing coins and notes that are backed by the credit of the government, the central bank issues electronic money, which is similarly backed by the credit of the government. By 2022, a number of small countries, such as Jamaica and Nigeria, had issued CBDCs. It is expected that India, China, and Russia will become the first large countries to do so. Other countries, such as the United States and the U.K., are carrying out research on CBDCs, but moving more slowly. One advantage of CBDCs is that they can provide easier and safer access to money for the unbanked. They can lead to more efficient domestic payments and lower transaction costs. They may also make it easier for the central bank to control the money supply.

One can imagine a country where all citizens have a digital currency account at the central bank and private companies compete to provide payment services. The central bank can increase the money supply by adding to the holdings of all citizens in an equitable way.

Some of the implications of all this are of course uncertain. Some international standard setting is likely to be necessary so that a digital currency of one country can be converted to that of another. Replacing banknotes with digital currencies would make it much easier for a resident of one country to transact in the digital currency of another country. This could lead to a new form of competition between the currencies of different countries and could actually end up making it more difficult for any one country to manage its economy by controlling the money supply.

# 29.3 Open Banking

Open banking is banking practice that gives third-party financial service providers (often relatively small FinTechs) access to a bank's customer data through the use of application programming interfaces (APIs). Customers must provide consent to their data being transferred in this way. The advantage to them is that they have easy access to services offered by different organizations.

The U.K. has been a leader in open banking. At the end of 2021 there were 4.5 million regular users of open banking in the U.K. The Payments Services Directive 2 of the European Union (PSD 2) required banks to make open banking services available to their customers. Other countries, such as the United States, are expected to introduce open banking during the first half of the 2020s. The key advantage of open banking is that it encourages financial innovation and gives consumers access to a wider range of financial services. However, some banks may feel threatened by it as it increases competition and may lead to some lost business.

# 29.4 Lending

As all students of banking know, there are a number of Cs associated with lending: character, capacity, capital, collateral, and so on. Machine learning (mentioned earlier) has been quite successful in automating lending decisions. In principle, a machine learning program can be more objective and exhibit less bias than a human being. We now consider two innovations in lending, neither of which have proved a threat to the activities of banks in this area.

# 29.4.1 P2P Lending

A bank's net interest margin is determined by the difference between the interest it pays on liabilities and the interest it earns on assets. If it obtains deposits on which it is paying  $2\%$  per annum and then lends the funds out at  $5\%$  per annum, its net interest margin is  $3\%$ . Some of this (perhaps as much as  $1\%$ ) is to compensate for expected loan losses, but if the depositor could lend money directly to the borrower at, say,  $4\%$ , both sides could potentially be better off. Peer-to-peer (P2P) lending involves disintermediation followed by reintermediation. The new intermediaries are set up to provide services such as:

1. Providing online platforms for borrowers and lenders to contact each other.
2. Verifying the borrower's identity, bank account, employment, income, and so on.
3. Assessing the borrower's credit risk and, if the borrower is approved, determining the appropriate interest rate.
4. Processing cash flows between borrowers and lenders.
5. Attempting to collect payments from borrowers who are in default.

Many borrowers who currently use P2P platforms have already been refused by banks, so the interest rates can be quite high compared with conventional loans (but lower than the rates on credit card balances and other sources of credit for moderateto high-risk borrowers). Examples of PTP lenders are Kiva, Prosper, Funding Circle, and Peerform. The P2P lending platform typically assigns a credit rating to a borrower in much the same way that a bank does.

It clearly makes sense for lenders to be diversified. Typically, they can either choose a portfolio of loans themselves or ask the P2P lending platform to construct a portfolio that is consistent with their risk preferences. The risk of borrowers is often idiosyncratic so that correlations between the performances of different loans are low, making diversification easier.

Some P2P platforms allow lenders to sell a loan before it has been fully repaid, but this depends on the willingness of another client of the P2P lending platform to take over the loan. There is likely to be a natural assumption that if a lender wants to sell a loan there is something wrong with it. However, it may just be that the lender has run into liquidity problems so that he or she needs cash. Creating a better secondary market for loans is a way the market can evolve. An idea that can be used for increasing liquidity is to create tranches from portfolios of loans as described in Chapter 7 and sell securities created from them to lenders.

# 29.4.2 Crowdfunding

Crowdfunding is another activity that has the potential to be a disruptive force in finance. It involves obtaining funds for a project from a large number of different investors. Some crowdfunding projects are donation-based with the purpose of funding projects that donors identify with and want to see funded. Other crowdfunding platforms are equity-based, designed to provide investors with an ownership interest in a company that might become successful. Sometimes donors receive a service or physical product in exchange for a contribution.

Crowdfunding has opened up equity investing in private companies to a much wider range of investors than venture capitalists and angel investors. The valuation of the company is a critical part of equity crowdfunding. If a company is valued at  $500,000, then shares representing 1\%$  of the company should require an investment of 5,000; if it is valued at $1 million, the required investment is $10,000. Sometimes the company determines the value and sometimes investors do so. In the latter case, some platforms use experienced professionals to carry out due diligence and ensure that an investment is properly priced. Ideally, the professional is an angel investor who has some skin in the game. Of course, he or she will typically require to be compensated in some way, and it should be recognized that, for even an experienced professional, valuations are highly subjective.[8]

The growth of equity crowdfunding has been slowed by regulation. Most countries have strict rules on the issuance of debt and equity securities. In the United States, the Jumpstart Our Business Startups (JOBS) Act of 2012 provides exemptions from the rules for certain crowdfunding activities. Under the JOBS Act, the maximum amount of funding a company can raise in a year is limited to about 1 million, and the maximum funds an investor can provide is subject to a limit based on the investor's income.

Initial coin offerings (ICOs) are a form of crowdfunding involving cryptocurrencies. Typically a company issues to investors its own cryptocurrency in exchange for an established one such as bitcoin or ethereum. The investors have no claim on the company, but if the company does well, they expect the cryptocurrency it has issued to increase in value. This is because use of the new cryptocurrency is integral to the operations of the company. ICOs have attracted regulatory attention. Many ICOs have been scams. But they have launched a few successful companies. China has banned them, and other countries are considering whether they should be regulated in the same way as IPOs.

# 29.5 Wealth Management

Wealth management has traditionally been very profitable for banks. Fees are often in the  $1\%$  to  $1.5\%$  range of the amount invested per year and can be much more when hidden fees associated with mutual fund investments and trading costs are taken into account. Once a client's risk appetite has been assessed, wealth management involves finding appropriate investments for the client. Often similar investments are recommended to all clients with similar risk appetites, easing the job of being a wealth manager. It is not surprising that wealth management is an industry that is in the process of being disrupted. As mentioned in Chapter 4, John Bogle took the first step toward reducing the costs of investing with the first index fund in 1975. Index funds have since become very popular and charge fees as low as  $0.15\%$  with no human intervention in the form of a wealth manager being necessary.

Robo-advisers first appeared in about 2010. In most countries they must register with the authorities and are subject to regulation. They provide digital platforms where investors express their risk preferences. A portfolio, usually involving ETFs tracking an equity index and safe investments, is then chosen, and the portfolio is automatically rebalanced as necessary. There is very little human intervention. Fees are lower than those charged by traditional wealth managers, typically often only  $0.25\%$  of the amount invested per year. Well-known companies include Wealthfront and Betterment. Some banks and other wealth managers are now responding to the competition by offering their own automated wealth management services. Indeed, those that fail to do this are unlikely to survive. Providers of index mutual funds, such as Vanguard, are also active in this space.

Robo-advisers are making investment advice available to a much wider range of individuals than previously. Often investors can start with as little as  $500 or$ 1,000 whereas a traditional wealth manager might require a minimum investment of 50,000. Robo-advisers make it easy for clients to add to the funds under management on a regular basis. Arguably they serve an important role in society by encouraging people to save when they might not otherwise do so. Robo-advising tended to attract young investors with small amounts to invest in its early days, but a much wider range of investors, including those classified as "high net worth" and HENRYs (high earners not rich yet) are now using the services.

Up to now the main innovation underlying robo-advising has been the delivery of services in a cheaper, novel way that many investors find appealing. The investment strategies underlying the advice given are usually similar to those that have been used by the investment industry for many years (see Chapter 1). Tax-related strategies (such as tax loss harvesting) are often incorporated into the advice that is given.[9]

There is plenty of scope for the strategies to become more sophisticated. Investments can be better diversified internationally and across sectors. They can be better targeted to the goals of the investor, taking into account the investor's age, retirement plans, plans to pay for the higher education of children, and so on.

In 1992, Fischer Black and Robert Litterman at Goldman Sachs published a widely used way of incorporating the views of investors in the selection of a portfolio. Robo-advisers may find ways of expanding the range of alternatives offered to investors using this technology. Alternative sets of views with rationales could be presented, with investors being invited to choose between them. It might even be possible to let the views of the investor be a less structured direct input to the determination of the portfolio.

In Chapter 28, we mentioned that a number of cognitive biases influence decision making. Investors are subject to these biases. For example, they are reluctant to sell losers, they chase trends, and they get disillusioned and exit equity markets when they should stay for the long term. It is often the ability to avoid these biases that distinguishes a professional investor from an amateur. Robo-advisers can try to stop investors falling victim to the biases by developing innovative ways of explaining them. Finally, robo-advising can be combined with other financial innovations so that a percentage of a client's funds is allocated to P2P lending or equity crowdfunding.

Robo-advising has already become an important part of the financial landscape and is likely to become more widely used as the millennial generation accumulates wealth. For this generation, it is much cooler to invest with an iPhone than make a trip to the bank. However, it is perhaps worth sounding one note of caution. Equity markets performed really well in the years following the start of robo-advising in 2010. The appeal of robo-advising may decline when there is a downturn and the clients of robo-advisers, who never invested before, complain about losing money. It is hoped that the advisers will be able to educate investors on the importance of staying focused on the long term.

# 29.6 InsurTech

The application of technology in the insurance industry is referred to as InsurTech. In some respects insurance companies are less likely to be disrupted by technology innovations than banks are. This is because the nature of insurance is such that consumers require a conservatively run, stable company. For example, it does not make sense to buy house insurance if there is a non-negligible probability that the insurance company will not be around in the event of the house being destroyed by fire. Regulators monitor the financial condition of insurance companies carefully, and it is very difficult for a new company to offer insurance unless it has a large amount of capital to cover claims. However, some applications of technology in insurance are straightforward. For example, it is now easy to compare the quotes of many different insurance companies online.

Often customers do not deal directly with insurance companies. They go through brokers or agents. These intermediaries are sometimes tied to just one insurance company or to a small number of insurance companies, rather than having a free hand to find the best deal for clients. A natural development is disintermediation where insurance companies create websites for dealing directly with customers. As the market develops, brokers and agents are likely to either disappear or become digitized providers of price comparisons.

One important potential InsurTech application is the collection of data by insurance companies so that risks are assessed more accurately. Auto insurance is a good example. By placing a "black box" in a car, an insurance company can use telematics (the branch of information technology that deals with the long-distance transmission of computerized information) to accumulate data on a client's driving. The black box can record driving speeds, distances traveled, the time of day or night that the car is being driven, driving style (e.g., frequency of braking and the cornering speed), and the type of road usually used. This enables the insurance company to build up an accurate profile of the driver. If the driver is less risky than average, the insurance premium charged will go down. Similarly, if the driver is more risky than average, it will go up.

The black box can be used for driver education. The driver may be able to access a secure website to find out how well he or she is performing. This can suggest changes to driving style and provide tips on bringing down the cost of insurance. In principle, this could improve the average ability of drivers and make roads safer. Of course not everyone can expect a reduced premium as a result of a black box, and some drivers may regard them as an invasion of privacy. One can speculate that as black boxes become more widely accepted, only good drivers will use them and the premiums for non-users will increase.

To the insurance company, the key advantage of a black box is that it is able to collect data allowing risks to be assessed more accurately. In an ideal world, an insurance premium charged should reflect miles driven and the risks incurred by the driver per mile.[11] Another potential advantage of black boxes to the insurance company is that they may be able to pinpoint blame in the event of an accident and make claims simpler.

A general point is that insurance companies now have opportunities to collect more data than ever before to assess the risks they are taking. These data can potentially allow them to improve estimates of an individual's life expectancy, the probability of a particular house burning down, or the chance of a hurricane in a certain part of the world. Machine learning provides the tools to analyze the data. The insurance industry is by nature conservative (perhaps rightly so), and it is difficult to imagine InsurTech radically changing the structure of the industry. (InsurTech companies usually have to partner with established insurers.) But the companies that prosper are likely to be those that take advantage of the opportunities created by new data sources.

# 29.7 Regulation and Compliance

There are two aspects of the impact of technology on regulation. One is how regulators should handle companies that use technology in innovative ways and have the potential to be a disruptive force in finance. The other, known as RegTech, is concerned with how regulation itself can use technology. We will consider both in this section.

# 29.7.1 Regulation of Financial Innovators

As we have seen in this book, financial institutions are highly regulated. This is a barrier to entry for small FinTech start-ups. For example, P2P lenders in the United States must enter into an arrangement with a bank to comply with regulations. Robo-advisers must satisfy know-your-client (KYC) rules, even though there is limited or no human interaction in their services, and register with the authorities. If a FinTech ignores regulations, it is likely to be closed down by supervisory authorities, at least temporarily, and suffer reputational damage.

Regulators do not want to stifle financial innovation. Indeed, as we have pointed out, financial innovation can bring many benefits to society by developing innovative ways of saving, investing, and borrowing so that more people are encouraged to be part of the financial ecosystem. But regulators must tread a fine line. They do not want shadow banks (i.e., non-banks that are offering similar services to banks) to subject clients to unreasonable risks.

Some regulatory authorities have initiated "sandbox" programs.[12] A sandbox is a safe space in which businesses can test innovative products, services, business models, and delivery mechanisms without immediately incurring all the normal regulatory consequences of pilot activities.

Regulating FinTech companies is likely to be a challenge for regulators in the future. The main asset of a FinTech company is often its computer code, and it is not at all easy for supervisors to evaluate this in the same way that they would evaluate a bank's systems. High-frequency traders (HFTs) illustrate the problem. Their trading activities are determined entirely by their computer code. On May 6, 2010, largely as a result of the activities of HFTs, a "flash crash" occurred in the United States where the Dow Jones Industrial Average declined by about  $9\%$  in a matter of minutes before partially recovering. On August 1, 2012, a software error in the program used by an HFT caused a major disruption in the prices of 148 stocks listed on the New York Stock Exchange. The Securities and Exchange Commission has taken some steps to avoid similar problems in the future, but it is difficult for it to guard against all the ways in which software can (intentionally or unintentionally) interfere adversely with the functioning of financial markets.

Another issue for regulators is that the jurisdiction may be difficult to determine for some FinTech companies. This is particularly likely to be the case if all of its transactions are carried out in digital currencies.

# 29.7.2 RegTech

RegTech is the application of technology to regulation and compliance. Some of the applications are straightforward. Regulatory reporting has traditionally involved thousands of pages of documents being provided to regulators at the end of each reporting period (e.g., every quarter). Moving this online and providing data in real time have the potential to simplify the job of both the regulator and the regulated financial institution, while making regulation more timely and efficient.

Fines for failing to comply with regulations can be steep.[13] For example, in Chapter 20 we mentioned that a French bank, BNP Paribas, was fined an amount equal to its profits for a whole year for violating U.S. sanctions. No doubt this happened because the activities of a small number of employees were not being monitored closely by the bank's compliance group. Technology can make it easier for a bank to ensure that it complies with regulations and the laws of the different countries it operates in. For example, technology can make it possible for it to screen both new customers and new transactions in real time to identify problems. Compliance violations involving issues such as drug money laundering, terrorist financing, and sanctions can be effectively eliminated if a real-time RegTech application, approved by regulators and reflecting the latest rules, is used.

Preventing staff from engaging in questionable behavior is important to financial institutions, as the behavior can prove to be very costly in terms of regulatory fines, legal costs, and reputation. Some innovations allow companies to keep track of their employees' conversations across a number of communications platforms. For example, Digital Reasoning, a company headquartered in Nashville, with offices in London, New York, and Washington, has created surveillance software used by some of the largest banks and asset management companies. It can monitor employee behavior by analyzing millions of e-mails, chat logs, and phone conversations to detect suspicious or unusual activity using machine learning. It can handle six different English dialects. If machine learning detects an employee whose behavior is quite different from the usual pattern, further investigation might be warranted. In an asset management firm, the behavior might prove to be indicative of insider trading, which, if allowed to continue, could lead to a huge fine. In a bank, it might prove to be indicative of rogue trading or a failure to treat subordinates with respect.

As mentioned in Chapter 20, cyber risk is the biggest operational risk for banks. It is also becoming a regulatory issue. For example, the General Data Protection Regulation in Europe leads to financial institutions being charged hefty fines if they lose data meant to remain confidential. Some RegTech applications are helping banks keep their data secure and comply with regulations like this one.

Just knowing all the regulations that exist is a major problem for financial institutions, as the regulatory environment it operates in throughout the world changes almost daily. IBM's Watson Regulatory Compliance gives relevant employees access to a library of regulatory requirements in which materials can be filtered geographically, by business type, by product, and by compliance area. This application can automatically highlight the parts of a new regulation that are relevant to a particular issue and compare the regulations related to a particular activity in different parts of the world.

As explained in earlier chapters, regulation has moved from being unidimensional to being multidimensional. Regulators used to focus on only a single capital measure. They now have two capital measures (one based on risk-weighted assets and the other based on a simpler leverage calculation) and two liquidity ratios (the liquidity coverage ratio and the net stable funding ratio). Different activities undertaken by the bank have different effects on the ratios. This leads to the potential for technology firms to come up with ways of optimizing bank strategies or providing convenient scenario analysis tools.

# 29.8 How Should Financial Institutions Respond?

FinTech innovations pose a strategic risk for large banks and other financial institutions. Many of the services they offer will be disrupted. How should they respond? Clearly they should embrace technological change, rather than hoping it is a fad that will disappear. But they should also carefully evaluate how consumer behavior is being affected by technological change and take steps to change their business model accordingly.

Business Snapshot 29.2 describes Eastman Kodak, a company that did not survive technology changes well. A key point is that Kodak was not unaware of the changes taking place in its industry. Indeed, the first digital camera was created in 1975 by an engineer working for Kodak, and Kodak invested billions in the new technology. So where did Kodak go wrong? It understood the new technology but did not appreciate the way it was changing consumer behavior until too late. In the course of a short period of time, a large segment of the population (not just young people) became comfortable sharing photographs and storing them on computers. They no longer felt the need to print photographs.

# BUSINESS SNAPSHOT 29.2

# Eastman Kodak and the Digitization of Photography

In the 1980s and 1990s, the Eastman Kodak company was a successful business selling cameras and film for cameras. It had almost single-handedly transformed photography in the United States from something that was the exclusive preserve of professional photographers to something that almost everyone did. It had successfully navigated technological changes in its industry. It moved from dry-plate to black-and-white film and then sensibly invested in color film even when it was demonstrably inferior to the black-and-white film from which it derived most of its revenue. Its market capitalization in 1997 was about 30 billion.

Steve Sasson, an engineer at Kodak, invented the first digital camera in 1975. According to Sasson, the company's response was "That's cute—but don't tell anyone about it." In fact, Kodak did not ignore the trend to digital cameras. It invested heavily and in 1995 it brought its first digital camera to market, the DC40. In 2001, it launched the EasyShare line of point-and-shoot cameras. Kodak had a first-rate research capability. It had the ability to develop state-of-the-art cameras that could enhance colors, automatically adjust lighting, organize portfolios, share photos, detect smiles to get the best shots, and so on.

Unfortunately, Kodak exhibited some reluctance to continually improve products and innovate, a mistake in an industry where technology changes fast. Cannibalizing existing products in the name of progress is painful, but necessary (even when the new products are less profitable than the old ones). How well Kodak would have survived the smartphone revolution if it had adopted a different strategy is debatable. All we can say is that some of its competitors such as Fuji have fared better. In 2022, Fuji's market capitalization was more than $18 billion. Kodak filed for bankruptcy at the end of 2012, and its successor company had a market capitalization of about $400 million in 2022.

Kodak coined the term "Kodak moment," which it used extensively in its advertising to convince people that they should have a Kodak camera loaded with Kodak film ready to use at all times. It is easy to be wise after the event, but strategy professionals would argue that the company could have extrapolated from its sales pitch to recognize the business it was in. It was in the imaging or moment-sharing business rather than the film business. We will never know how well it would have survived if it had more enthusiastically embraced electronic sharing and the storing of digital images when the market was in its early stages. (As indicated in Business Snapshot 29.2, Fuji, which was a similar company to Kodak but based in Japan, fared better than Kodak.) It was its implicit belief that demand for hard-copy photographs would continue that ultimately doomed the company.

The disruption of large financial institutions does not seem to be happening as quickly as the disruption of Kodak. They have a number of competitive advantages. They are well capitalized (although the same is true of Apple, Google, and Alibaba). They understand how to deal with the highly regulated environment they operate in (something many FinTech start-ups find difficult). They have a huge customer base and are still trusted by many customers (although it is important to recognize that the 2007-2008 financial crisis and events since then such as the Wells Fargo debacle described in Business Snapshot 24.1 have served to erode this trust). One can speculate that financial institutions are not as vulnerable as Kodak in that many people are less inclined to experiment with the way their money is handled than with the way they do photography. Also, many start-ups need established financial institutions to offer their products.

However, there are some warning signs that banks should respond to. A Millennial Disruption Index survey indicated that  $71\%$  of millennials in the U.S. would rather visit the dentist than listen to what banks are saying, while  $73\%$  would rather handle their financial services needs through Google, Amazon, Apple, PayPal, or Square.[14] Millennials also voted four leading U.S. banks among their least loved brands. Millennials are individuals born between 1981 and 2000 and are important future consumers of bank services. In 2022 they made up about  $40\%$  of the workforce and by 2050 they will have inherited about 30 trillion. They may feel less radically inclined about financial services as they age, but banks should not rely on this.

Kodak was ultimately rendered largely irrelevant by the digital cameras incorporated in smartphones. Financial institutions naturally do not want to become similarly irrelevant. They have recognized the need to offer mobile apps for payments, wealth management, and a host of other services. But it is important for them to embrace technological change, not just to pay lip service to it. Technological change in the financial sector will continue at an accelerating rate. In many cases it will erode the profits banks previously relied upon (as was the case for Kodak). Being flexible enough to adjust will be a continuing challenge.

The new services developed by banks need to be convenient and designed so that young people classify them as "cool" while older people find them easy to use. There are a number of different approaches being adopted. Some financial institutions have developed new services in-house; some have bought start-ups that have already developed the services; and some have entered into partnerships with start-ups. The first alternative, although the least expensive and most appealing to many working in the financial services sector, can be quite difficult given the somewhat complacent culture that often permeates large companies. The second and third alternatives can be used as a way of disrupting the culture and accelerating change. Some banks have found it useful to create an organizationally distinct unit that has the ability to bring in outside talent when necessary and can partner with start-ups. Whatever approach is adopted, strong support from the CEO and the board is necessary for success.

The financial institutions that prosper will be the ones that manage to change their culture so that they are able to provide services in a fast, flexible way that appeals to consumers. Lou Gerstner was appointed CEO at IBM in the 1990s when the company was losing money. He successfully changed the culture and transformed it into a profitable company. He is quoted as saying, "Culture isn't just one aspect of the game. It is the game." He successfully changed IBM from being a supplier of mainframe computers to being a business problem solver where teams of people worked well together. Banks are similar to IBM in that they are huge organizations with many bright employees. The job of the CEO is to create a culture where individuals are rewarded for embracing technology and finding innovative ways of making their services more convenient and valuable for clients.

# Summary

What will the financial services sector look like in, say, 2040? Of course, the pace of technological change is so fast that accurate forecasts are impossible. However, offering a few predictions is a convenient way of summarizing some of the points made in this chapter.

Checks and credit cards will largely disappear. Mobile wallets on smartphones and wearables will become the norm. Biometrics will be used to make payments more secure. Some central banks will choose to switch from paper currencies to digital currencies, and transacting in digital currencies will become more widespread. Machine learning will be able to undertake many tasks such as credit assessment and fraud detection much better than human beings. Record keeping will be more secure and faster using blockchains and other DLTs.

Large insurance companies will continue to exist, but brokers and agents will not. Insurers will have access to more data than ever before and will use machine learning and other techniques to assess risks more precisely. There will be partnerships formed between insurance companies and technology firms to deliver insurance services in innovative ways.

Investing and borrowing will see big changes. Crowdfunding and P2P lending may become more widely used. Some of today's large banks will find it necessary to offer these services to savers and borrowers. It will be unusual for funds to remain idle for any length of time, and the ease of borrowing and investing will make more people part of the financial ecosystem.

Some banks that fail to adjust to new technology enthusiastically will fail and be acquired by other banks. (Indeed, too-big-to-fail may no longer be considered a relevant descriptor of very large banks.) Some large technology firms will become banks and offer a full range of banking services. Most bank services will be offered more cheaply and more efficiently than before so that banks will lose some of their traditional sources of profit. The banks that survive will have to cut costs by making big reductions in the number of branches they have and the number of people they employ. Banks will have to form partnerships with many different technology firms, to keep the services they offer up to date.

# Further Reading

Chishti, S., and J. Barberis. The FinTech Book: The Financial Technology Handbook for Investors, Entrepreneurs, and Visionaries. Chichester, UK: John Wiley & Sons, 2016.

Christensen, C. M., and M. E. Raynor. The Innovator's Solution. Boston: Harvard Business Review Press, 2003.

Harvey, C. R. "Cryptofinance." Working Paper, SSRN 2438299.

IOSCO. Research Report on Financial Technologies, February 2017.

Sironi, P. FinTech Innovation: From Robo-Advisors to Goal-Based Investing and Gamification. Chichester, UK: John Wiley & Sons, 2016.

# Practice Questions and Problems (Answers at End of Book)

29.1 Explain the terms disintermediation and reintermediation.
29.2 What is meant by (a) machine learning and (b) distributed ledger technologies?
29.3 What is meant by biometric authorization? Give some examples.
29.4 Why might a central bank switch from fiat money to digital money?
29.5 Explain how P2P lending and equity crowdfunding work.
29.6 "When thinking about the impact of FinTech, financial institutions should be thankful for regulation." Explain.
29.7 "Index funds are a great idea, but if everyone chose them there would be no price discovery." Do you agree with this argument?
29.8 What is meant by RegTech? Give some examples.
29.9 "Banks should aim to respond to change like IBM, not like Kodak." Discuss this statement.

# Further Questions

29.10 Explain how machine learning is changing the way lending decisions are made. What are the risks in relying on machine learning algorithms for these decisions?
29.11 With the benefit of hindsight, we can say that Kodak was in the imaging and moment-sharing business. What business are banks in?

