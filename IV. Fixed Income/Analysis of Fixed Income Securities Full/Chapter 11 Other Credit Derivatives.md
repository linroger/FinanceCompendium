---
title: "Chapter 11: Other Credit Derivatives"
parent_directory: Analysis of Fixed Income Securities Full
formatted: 2025-12-21 05:20:00 PM
formatter_model: kimi-k2-turbo
cli_tool: claude-code
primary_tags:
  - credit derivatives
  - default baskets
  - collateralized debt obligations
  - credit linked notes
secondary_tags:
  - credit default swaps
  - spread options
  - principal protected notes
  - convertible bonds
  - securities lending
  - commercial mortgage backed securities
cssclasses: academia
---

# Chapter 11: Other Credit Derivatives

# 11.1 Introduction

Investopedia:

A credit derivative is a financial asset that allows parties to handle their exposure to risk. Credit derivative consisting of a privately held, negotiable bilateral contract between two parties in a creditor/debtor relationship. It allows the creditor to transfer the risk of the debtor's default to a third party.

Various types of credit derivatives exist, including:

- credit default swaps (CDS)
- collateralized debt obligations (CDO)
- total return swaps
- credit default swap options
- credit spread forward
- credit default basket

# 11.2 Default Basket

A default basket contract, known as 1st to nth to default, is a credit derivative contract that is catered to investors who seek a partial and yet effective protection of their bond portfolios. If a bond investor who is concerned with the default loss of his bond portfolio, then the basket contract can provide the protection from the loss of default at any given level (from the most expensive 1st to default to the least expensive nth to default).


The default basket contract is a correlation play. If all bonds default independently (low correlation), then the 1st to default basket is most expensive (details later). On the contrary, if bonds default together (high correlation), then the 1st to default basket is least expensive. Hence, for those who sell default baskets (i.e. speculators who seek yield enhancements), they look for correlation tightening or loosening.

Default baskets usually contain only a handful of bonds (if the portfolio is large, then the default basket is not an efficient way to hedge). For example, assume a portfolio of 5 bonds. To gain the perfect default protection, the owner of the portfolio can purchase individual CDS contracts. Say each spread is $s_1$ to $s_5$. And the total premium paid is: $\sum_{i=1}^n s_i N_i$ where $N_i$ is the notional of the $i$-th bond.

This can be very expensive if bonds are high yield. Hence, investors of such portfolios will seek a cheaper alternative. Realistically, not all bonds will default at the same time. In other words, buying all individual CDS is not cost effective. It would be ideal to just buy the protection of the first bond that defaults. The others will likely not default (although their prices might be heavily influenced) and still can be sold back to the market.

The 1st to default basket contract (FTD) is a CDS contract that pays principal minus recovery on whichever bond that defaults first in the contract period. The probability of this happening, for a given period (say 1 year), is:

$$ p_{\text{FTD}} = \Pr[B_1 \cup B_2 \cup \dots \cup B_n] \tag{11.1} $$

where $B_i$ represents the default event of bond $i$ and $p_i = \Pr[B_i]$ is the default probability of each individual bond. The total default probability of all bonds in a given period is:


$$
\sum_{i = 1}^{n} p_{i}
$$ which is greater than  $p_{\mathrm{FTD}}$ .


Hence, we know that buying FTD is much cheaper than buying individual CDSes. Recall the back-of-envelop (quick and dirty approximation) formula for the CDS spread:

$$ s_i = p_i (1 - R_i) $$

where $R$ is recovery rate. For the sake of easy exposition (and quite practically true), we assume a constant recovery for all bonds (and usually 40%): $s_i = p_i(1 - R)$. We


use the same concept to compute the spread for the FTD:

$$ s_{\text{FTD}} = p_{\text{FTD}} (1 - R) $$

Also for the convenience (and without loss of too much generality), we assume all notionals are same:  $N_{i} = N$ . This allows us to just compare spreads without worrying notional and recovery.

Note that equation (11.1) can be written as:

$$
\begin{align}
\Pr[B_1 \cup B_2 \cup \dots \cup B_n] &= \sum_{i=1}^n \Pr[B_i] \\
&\quad - \sum\sum_{i \neq j} \Pr[B_i \cap B_j] \\
&\quad + \sum\sum\sum_{i \neq j \neq k} \Pr[B_i \cap B_j \cap B_k] \\
&\quad - \dots
\end{align}
$$

$$
\begin{align}
 p_{\text{FTD}} &= \sum_{i=1}^n p_i \tag{11.2} \\
&\quad - \sum\sum_{i \neq j} p_{i \& j} \\
&\quad + \sum\sum\sum_{i \neq j \neq k} p_{i \& j \& k} \\
&\quad - \dots
\end{align}
$$

Hence, if joint defaults are rare (i.e. defaults are independent), then  $p_{\mathrm{FTD}}$  is very close to  $\sum_{i=1}^{n} p_i$ , which is expensive. Conversely, if defaults are together, then  $p_{\mathrm{FTD}}$  is very close to the highest  $p_i$ , which is cheap.

Note that by no arbitrage,

$$
\sum_{i = 1}^{n} s_{i} = \sum_{i = 1}^{n} s_{i \mathrm{TD}}
$$

If $s_{\text{FTD}} \approx \sum_{i=1}^n s_i$, then the other $i$-th to default contracts must have very low spreads. Conversely, if $s_{\text{FTD}} \approx s_i$, then the other $i$-th to default contracts must have high spreads. In an extreme case where all bonds default together (correlation 1) and all $s_i$'s are equal, then all $s_{i\text{TD}}$ are equal to one another.

# 11.3 CDO, CBO and CLO http://people.stern.nyu.edu/igiddy/ABS/globalcboclo.pdf (152 pages)


Differences Between CBOs And CLOs

It is important to note that while the criteria for CBO and CLO transactions share similarities, loan assets have features that can make the analysis more complicated than that of bond assets. Certain credit, legal, and cash flow analyses of CLOs differ from those of CBOs due to the following factors:

The loan type and loan documentation can affect the degree to which rights and obligations can be transferred from the sponsor to the transferee. For example, a loan may in part be a participation. The lead bank transfers all or part of its interest in a loan (which also may include a pro rata interest in any collateral securing the loan) to one or more participants. Analysis of participations often entails an evaluation of the credit risk of the seller bank, whose insolvency may interrupt payments from the borrower to, ultimately, the issuer, as transferee.

Loan terms vary widely, such as different amortization schedules, payment dates, rate indices, index reset dates, tenors, and so on, which impact the cash flow analysis.

The lack of uniformity in the manner in which rights and obligations are transferred also results in a lack of standardized documentation for these transactions. Therefore, loan documents require a more detailed legal review.

Loan portfolios can be restructured to accommodate the diminished or declining repayment capacity of borrowers.

Markets for bank loans are less liquid than bond markets. This increases the risk of not being able to purchase eligible loans during the ramp-up and revolving periods, as well as not being able to sell defaulted loans. In addition, disposition of defaulted loans via sale into the market may lower the ultimate recovery relative to disposition via a gradual workout.

This analysis describes Standard & Poor's rating approach to CBOs/CLOs and the key risk areas, which are the focus here of a brief review. The key areas include sovereign risk, default risk, recovery and loss severity estimation, currency and interest rate hedging, as well as legal risk.

Sovereign Risk Both the overall credit profile for an obligor and its rating can be impacted and possibly constrained by the sovereign rating of the country in which the obligors are domiciled. Standard & Poor's has modified its "traditional," or single-jurisdictional, CBO/CLO default model to take into account such factors when determining a multi-jurisdictional or emerging market pool's credit profile at a given rating level.

Default Risk The issuer credit rating (ICR) is the fundamental tool to assess obligor credit risk in Standard & Poor's default models. However, due to the lack of a well-developed bond market in certain regions, such as Southeast Asia, and even in some mature European markets, unrated credits can become a substantial component of CBO/CLO asset pools. In order to assess credit risk in such collateral pools, analysts can apply alternative measures of obligor default risk, such as credit estimates, for the unrated obligors.


Recovery and Loss Severity Estimation Accurate and detailed historical data on post-default recoveries on loans and bonds for issuers in emerging market regions generally is sparse or nonexistent. Any analysis of recoveries must factor in, on a country-specific basis, the legal and practical issues involved in realizing such recoveries, and the likely impact on timing of recoveries.

Currency and Interest Rate Hedging Local currency denominated CBO/CLO issuance is still not feasible in developing countries due to the lack of a deep investor market, as well as legal and regulatory issues. In the aftermath of various emerging market currency crises, currency hedge providers may not have the desire to position the risk of certain currencies, or may price their products at levels that are not economical for a CBO/CLO. While interest rate risk can often be sized and covered with internal credit enhancement, such as cash reserves or overcollateralization, the economics of this strategy may not be favorable with respect to currency risks.

Legal Risk Evaluation of the legal structure of CBO/CLO transactions is done in light of applicable laws and regulations governing all aspects of the structure. Problems that typically arise relate to the legal transfer/assignment of assets from the seller/originator to the securitization vehicle; bankruptcy remoteness of the issuer or other special-purpose entities; commingling, and set-off risk...

# 11.4 Spread Option

Investopedia:

A spread option is a type of option that derives its value from the difference, or spread, between the prices of two or more assets. Other than the unique type of underlying asset—the spread—these options act similarly to any other type of vanilla option.

Note that a spread option is not the same as an options spread. The latter is a strategy typically involving two or more options on the same, single underlying asset.

# 11.5 Principle Protected Notes

Investopedia:

A principal protected note (PPN) is a fixed-income security that guarantees a minimum return equal to the investor's initial investment (the principal amount), regardless of the performance of the underlying assets.

These investments are tailored for risk-averse investors wishing to protect their investments while participating in gains from favorable market movements.

Principal protected notes are also known as guaranteed linked notes.

# Understanding Principal-Protected Note (PPN)

A principal protected note (PPN) is a structured finance product that guarantees a rate of return of at least the principal amount invested, as long as the note is held to maturity. A PPN is structured as a zero-coupon bond – a bond that makes no interest payment until it matures – and an option with a payoff that is linked to an underlying asset, index, or benchmark. Based on the performance of the linked asset, index or benchmark, the payoff will vary. For example, if the payoff is linked to an equity index, such as Russell 2000, and the index rises 30%, the investor will receive the full 30% gain. In effect, the principal protected securities promise to return an investor's principal, at the time of maturity, with the added gain from the index's performance if that index trades within a certain range.

A downside to principal protected notes is that the guarantee of principal is subject to the creditworthiness of the issuer or guarantor. Therefore, the prospect of a guaranteed return is not entirely accurate in the event that the issuer goes bankrupt and defaults on all or most of its payments, including the repayment of investors' principal investment, the investor would lose their principal. Since these products are essentially unsecured debt, investors fall below the tier of secured creditors.

Furthermore, investors must hold these notes until maturity in order to receive the full payout. Since these notes can have long-term maturities, PPN investments may be costly for investors who have to tie up their funds for long periods of time in addition to paying any imputed interest accrued on the notes every year. Early withdrawals may be subject to withdrawal charges and partial withdrawals may reduce the amount available upon a full surrender.

# Limitations

The dark side of principal protected notes was put to light after the collapse of Lehman Brothers and the inception of the 2008 credit crisis. Lehman Brothers had issued many of these notes and brokers were pushing it in the portfolios of their clients who had little to no knowledge of these products. The returns on PPNs were more complicated than was presented on the surface to clients. For example, for an investor in one of these notes to earn the return of the index that was linked to the payoff of the note, as well as get the principal back, the small print may state that the index cannot fall 25% or more from its level at the date of issuance. Neither can it rise more than 27% above that level. If the index exceeds those levels during the holding period, the investors receive only their principal back.


An investor that does not want to deal with the complications of individual PPN securities may opt for principal protected funds. Principal protected funds are money managed funds that consist mostly of principal protected notes structured to protect an investor's principal. The returns on these funds are taxed as ordinary income rather than capital gains or tax-advantaged dividends. Furthermore, fees that are charged by the fund are used to fund the derivative positions used to guarantee the principal returns and minimize risk.

# 11.6 Credit Linked Notes

A CLN is the direct obligation of the issuer but it contains additional credit risks for the buyer. The principal repayment is linked not only to creditworthiness of the issuer but also a third party known as the reference entity.

Provided the reference entity experiences no credit event during the life of the CLN the principal will be repaid to the investor on maturity.

During the life of the note the investor will also have received regular interest payments, (coupons).

Should the reference entity experience a credit event, this triggers redemption of the CLN. But instead of receiving the principal amount originally invested, the investor receives a bond issued by the reference entity. The value of the bond will be worth less than the principal invested.

![Figure 11.1: Credit Linked Note Structure](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/b397d43aa10f2cfc8ca3ecda13b38a244726ebe5b8b002d38d18f4d373d225a0.jpg)

![Figure 11.2: Credit Linked Note Cash Flows](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/c91cda1003e578b2349e65a851b1793a2eb526d806f5f1d9cdbee8d22858fa00.jpg)

![Figure 11.3: Credit Linked Note Risk Profile](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/c0b1a5a74c2871d3312a16adf0dca7e1090ee1e0b910e5ab2c30c6c1aea9f20c.jpg)

# 11.7 Convertible Bonds

Convertible bonds are a mixture of three prominent risks: equity, interest rate, and credit. A convertible bond allows the owner to convert a bond that earns fixed coupons to equity and hence is bond with an exchange option.

$$
\Pi_{\mathrm{CB}} = \max \{S, \xi \Pi \}
$$ where  $\xi$  is the conversion ratio.


# 11.7.1 Forced Conversion

Investopedia:

What Is a Forced Conversion?

Forced conversion occurs when the issuer of convertible securities exercises the right to call the issue. By calling the issue, the originator forces the investors to convert their securities into a predetermined number of shares.

An issuer may consider forcing a conversion if interest rates decline significantly. They may also push the call if the price of the underlying security is above the conversion price. Forced conversions are generally detrimental to the holders of the product.

Understanding Forced Conversion

Forced conversions occur with convertible securities. Convertible security investments can turn into another form, such as shares of the underlying stock. Convertible bonds or convertible preferred stock are examples of some common convertible securities.

In the case of convertible bonds, the security pays a coupon payment of a fixed amount at regular intervals until the bond reaches maturity. It carries a specific price at which conversion into stock may happen. In most cases, the holder of convertible securities has the right to determine when and if to convert. The bond's originator can typically convert whenever they choose after the conversion date. The same is not true if the issuer has included a forced conversion call feature into the bond.


Companies issuing the securities sometimes want the ability to force the investor's hand and make them hold the underlying product. To do this, they will add a call feature that allows the company to redeem the bonds based on specific criteria. Frequently, bonds are callable when they are at or near the conversion price. The calculation of the conversion price is at the time of the issue and is a ratio. This ratio, located in the bond's indenture or the security's prospectus, outlines the situations for making the call. For called securities, the investor will receive the return of capital or common stock in an amount equal to the initial investment.

Example of a Bond Conversion

The conversion ratio, also called the conversion premium, would determine how many shares will change. Shown as a ratio or as a price, it is specific to the bond.

If a bond has a ratio of 45:1, it means the $1000 bond equals 45 shares of the underlying. You may see this rate listed as a percentage premium, such as 5 percent. This premium means the investor who converts into shares at the market price when they bought the bond, plus a 5\% premium. That market price could be different than the current price for the underlying.

Companies will execute a forced conversion to eliminate debt. In this case, bond debt converts to equity. After a forced conversion, the company will issue additional shares, which dilutes the value of those already in the marketplace.

# 11.7.2 Added Convexity

A straight bond has a positive convexity (i.e. negative slope) with respect to its yield. A callable bond (a bond with a call option) is known to have negative convexity. This is because as bond price goes up (as yield or interest rates) goes down, it would hit the limit of the call price (which is usually par), as demonstrated in Figure 11.4.

![Figure 11.4: Convexity of Callable Bond](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/205077a3aac81e365d4c523c42691d98b542a7797867a6f3ac149ab7581e155a.jpg)

In the case of a convertible bond, the situation is more complex. A convertible bond is more like a bond when the equity value is low or the interest rates are low (i.e. bond price is high). Conversely, when the equity price is high and the interest rates are high (bond price low), the convertible bond is more like a stock.

![Figure 11.5: Convexity of Convertible Bond](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/ecb07fe5f2fe8145d4725c4c0f69b9a913fbdef67a2965fed3996d26e200f2d2.jpg)

# 11.8 Loan

An outright loan is like a bond where a specified amount of money is borrowed (usually by an individual) and in return periodic interest is paid and at maturity the principal is paid. However, for corporation borrowers, loans are arranged differently.

A line of credit is given to the corporation (say $1 million) for a period of time (say 1 year). During this year, the borrower (corporation) can take any amount out, known as draw, up to $1 million. If the borrower has no use of the loan, it can prepay back to the credit line. After a year, usually such loan will be renewed and amount can be increased or decreased.

The unused line of credit is called "unfunded" and the used is called "funded". At the beginning when the loan (line of credit) is granted, the whole amount is unfunded. To maintain this unfunded loan, the borrower must pay a fee to keep the line of credit alive (otherwise the line of credit will be canceled). After a draw, the amount of draw is called funded. Then the borrower must pay an interest on the funded loan as a straight loan. Certainly, the borrower can cancel the line of credit at any time.

In summary, by paying a fee (for the unfunded part of the loan) or an interest (for the funded part of the loan), the borrower enjoys the following options: option to draw,

- option to prepay, and
- option to term-out (which is modeled differently separately)

The following diagram (Figure 11.6) depicts various stages of the borrower. The borrower can draw and prepay as it sees fit. The three regimes in both funded and unfunded parts of the loan can be given the following choices:

Funded

Regime I: option to stay and prepay

Regime II: option to stay

Regime III: option to stay and prepay

Unfunded

Regime I: option to stay and draw

Regime II: option to stay and draw

Regime III: option to stay

Table 11.1: Options in a Loan

![Figure 11.6: Loan Regime Transition Diagram](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/4da07affd0d8d4dad2c0b077b81b2a145bbc22d0edb1d0218160a9105d9e3243.jpg)

# An Example of HELOC

When you're approved for a HELOC (Home Equity Line of Credit), you will also be approved for a credit limit based, in part, on how much equity you have in your home. You can use this line of credit during what is called the "draw period." This is the amount of time you have to draw funds from the HELOC. The draw period typically lasts for a fixed amount of time. It can vary between lenders but the period usually can last up to ten years. Each lender could also have different requirements, like minimum draw amounts or when you need to start making repayments (more on that coming up!). Be sure to look into the specific details of each lender you consider.

During the draw period you typically can make interest-only payments on what you've borrowed. But you can also pay back the principal amount if you choose. You also don't have to withdraw the entire amount. But it's available if you need it. Here's an example: If you have a $90,000 HELOC, you can borrow up to that amount. If you only use, say, $25,000 of the line of credit, you will only pay interest on that $25,000, not the $90,000 maximum value of the line.

"HELOCs are a good option for those looking for a source of revolving credit that can be managed in the same way as a credit card."

# Unfunded as CDS and Funded as Bond

It is quite understandable that the funded part of the loan is a bond. But how should the fee of unfunded be determined? As it turns out, it is equivalent to a CDS. The bank charges a fee to compensate its loss of interests if the borrower either defaults or terminates the loan early.

As a result, Figure 11.6 can be viewed as a structure to build a model for the loan. It can be a Markov process with $\alpha$'s and $\beta$'s as transition probabilities. These probabilities can be then calibrated to benchmark CDS or credit curves.

# 11.9 Securities Lending

Securities lending is the act of loaning a stock, derivative or other security to an investor or firm. Securities lending requires the borrower to put up collateral, whether cash, security or a letter of credit. When a security is loaned, the title and the ownership are also transferred to the borrower.

# 11.10 CMBS

Wikipedia:

Commercial mortgage-backed securities (CMBS) are a type of mortgage-backed security backed by commercial and multifamily mortgages rather than residential real estate. CMBS tend to be more complex and volatile than residential mortgage-backed securities due to the unique nature of the underlying property assets.

CMBS bear huge credit risk in that the underlying mortgages are very highly levered. Unlike RMBS (Chapter 12) where mortgages must have a substantial down payment (known as LTV, or loan-to-value) of at least 20%, commercial mortgages can be levered to as high as 98 or 99%. As a result of this high leverage, interests on the commercial mortgages are also high.

CMBS are different from previous credit derivatives in that these securities are sold in a form tranches. See Chapter 12 for detailed discussions on CMBS (and RMBS).

