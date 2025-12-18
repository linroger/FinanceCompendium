---
aliases:
  - Capital Allocation to Risky Assets
tags:
key_concepts:
parent_directory: V. Equities and Alternatives/Equities/Investments BKM/Part 2 - Portfolio Theory and Practice
cssclasses: academia
title: "Chapter 6: Capital Allocation to Risky Assets"
---

# Capital Allocation to Risky Assets

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/ce8738598267e7912abbacfa97244ce73e4278f8a22cdbd73a76cb3238095355.jpg)

PORTFOLIO CONSTRUCTION IS commonly—and very properly—viewed as comprising two broad tasks: (1) the allocation of the overall portfolio to safe assets such as a money market account or Treasury bills versus to risky assets such as shares of stock and (2) the determination of the composition of the risky portion of the complete portfolio. The first step, in which you determine the proportion of your overall portfolio to devote to risky versus risk-free assets, is called the capital allocation decision, and that is where we will begin our tour of what is known as portfolio theory.

Of course, one cannot rationally make a capital allocation decision without knowing the properties of the risky portfolio, specifically its risk premium and volatility, but we will start by assuming that investors have identified acceptable candidate risky portfolios and have a sense of their properties. For now, you can think of that risky portfolio as one that might be offered by a mutual fund company, or, even better, as a stock market index fund. We will devote a lot of attention in the next two chapters to how such portfolios might be constructed.


The optimal capital allocation will depend in part on the risk-return trade-off offered by the risky portfolio. But it will also depend on the investor's attitude toward risk, so we need a way to measure and describe risk aversion. Therefore, we will show how risk aversion can be characterized by a "utility function" that investors can use to rank portfolios with different expected returns and levels of risk. By choosing the overall portfolio with the highest utility score, investors optimize their trade-off between risk and return; that is, they achieve the optimal allocation of capital to risky versus risk-free assets.

The utility model also reveals the appropriate objective function for the construction of an optimal risky portfolio, and thus explains how an investment management industry can construct portfolios that are acceptable to investors with highly diverse preferences without knowing each of them and, specifically, their tolerance for risk, personally.

# 6.1 Risk and Risk Aversion

In Chapter 5 we introduced the concepts of the holding-period return (HPR) and the excess rate of return over the risk-free rate. We also discussed estimation of the risk premium (the expected excess return) and the standard deviation of the excess return, which we use as the measure of portfolio risk. To clarify the role of the risk premium in the investment decision, we first differentiate between speculation and gambling.

# Risk, Speculation, and Gambling

One definition of speculation is "the assumption of considerable investment risk to obtain commensurate gain." By "considerable risk" we mean that the risk is sufficient to affect the decision. By "commensurate gain" we mean a positive risk premium, that is, an expected return greater than the risk-free alternative.

To gamble is "to bet or wager on an uncertain outcome." The central difference between gambling and speculation is the lack of "commensurate gain." A gamble is the assumption of risk for enjoyment of the risk itself, whereas speculation is undertaken in spite of the risk involved because one perceives a favorable risk-return trade-off. To turn a gamble into a speculative venture requires an adequate risk premium to compensate risk-averse investors for the risks they bear. Hence, risk aversion and speculation are consistent. Notice that a risky investment with a risk premium of zero, sometimes called a fair game, amounts to a gamble because there is no expected gain to compensate for the risk entailed. A risk-averse investor will reject gambles, but not necessarily speculative positions.

The important point is that even highly risky positions may be willingly assumed by risk-averse investors if they believe they are adequately compensated by the risk premium. We therefore should expect higher risk premiums to be associated with greater risk.

# Risk Aversion and Utility Values

Historical returns on various asset classes, analyzed in a mountain of empirical studies, leave no doubt that risky assets command a risk premium. This implies that most investors are risk averse.

Risk-averse investors reject portfolios that are fair games or worse. They consider only risk-free or speculative prospects with positive risk premiums. Loosely speaking, when evaluating the attractiveness of a prospective investment, a risk-averse investor "penalizes" the expected rate of return to account for the risk involved. The greater the risk, the larger the penalty. We believe that most investors would accept this view from simple introspection, but we discuss the question more fully in Appendix A of this chapter.

To illustrate the issues we confront when choosing among portfolios with varying degrees of risk, suppose the risk-free rate is  $2\%$  and that an investor is comparing the three alternative risky portfolios shown in Table 6.1. The risk premiums and standard deviations posited there might roughly approximate the properties of low-risk short-term bonds  $(L)$ , medium-risk long-term bonds  $(M)$ , and higher-risk large stocks  $(H)$ . Accordingly, these portfolios offer progressively higher risk premiums to compensate for greater risk. How might investors choose among them?

Intuitively, a portfolio is more attractive when its expected return is higher and its risk is lower. But when risk increases along with return, the most attractive portfolio is not obvious. How can we quantify the rate at which investors are willing to trade off return against risk?

<table><tr><td>Portfolio</td><td>Risk Premium</td><td>Expected Return</td><td>Risk (SD)</td></tr><tr><td>L (low risk)</td><td>2\%</td><td>4\%</td><td>5\%</td></tr><tr><td>M (medium risk)</td><td>4</td><td>6</td><td>10</td></tr><tr><td>H (high risk)</td><td>8</td><td>10</td><td>20</td></tr></table>

# Table 6.1

Available risky portfolios (risk-free rate  $= 2\%$ )

We will assume that each investor can assign a welfare, or utility, score to competing portfolios on the basis of expected return and risk. Higher utility values are assigned to portfolios with more attractive risk-return profiles. Portfolios receive higher utility scores for higher expected returns and lower scores for higher volatility. Many particular "scoring" systems are reasonable. One function that has been employed by both financial theorists and the CFA Institute assigns a portfolio with expected return  $E(r)$  and variance of returns  $\sigma^2$  the following utility score:

$$
U = E (r) - \frac {1}{2} A \sigma^ {2} \tag {6.1}
$$ where  $U$  is the utility value and  $A$  is an index of the investor's risk aversion. Equation 6.1 reflects the commonsense notion that utility increases with expected return but falls with volatility. $^{1}$  Notice that the portfolio in question here will potentially serve as the investor's overall or complete portfolio. Hence, assuming normality, standard deviation is the appropriate measure of risk.


Notice that risk-free portfolios (with variance  $= 0$ ) receive a utility score equal to their (known) rate of return because they receive no penalty for risk. The extent to which the variance of risky portfolios lowers utility depends on  $A$ , the investor's degree of risk aversion. More risk-averse investors (who have larger values of  $A$ ) penalize risky investments more severely. Investors choosing among competing portfolios will select the one providing the highest utility. The Words from the Street box later in this section discuss some techniques that financial advisers use to gauge the risk aversion of their clients.

# Example 6.1 Evaluating Investments by Using Utility Scores

Consider three investors with different degrees of risk aversion:  $A_{1} = 2$ ,  $A_{2} = 3.5$ , and  $A_{3} = 5$ , all of whom are evaluating the three portfolios in Table 6.1. Because the risk-free rate is assumed to be  $2\%$ , Equation 6.1 implies that all three investors would assign a utility score of .02 to the risk-free alternative. Table 6.2 presents the utility scores that would be assigned by each investor to each portfolio. The portfolio with the highest utility score for each investor appears as the bold entry in each row. Notice that the high-risk portfolio,  $H$ , would be chosen only by the investor with the lowest degree of risk aversion,  $A_{1} = 2$ , while the low-risk portfolio,  $L$ , would be passed over even by the most risk-averse of our three investors. All three portfolios would be preferred to the risk-free alternative by investors with levels of risk aversion given in the table.

We can interpret the utility score of risky portfolios as a certainty equivalent rate of return. The certainty equivalent is the rate that a risk-free investment would need to offer to provide the same utility as the risky portfolio. In other words, it is the rate that, if earned

The factor of  $\frac{1}{2}$  is just a commonly used scaling convention with no effect on how we characterize investors' preferences. To use Equation 6.1, rates of return must be expressed as decimals rather than percentages.

<table><tr><td>Investor Risk Aversion (A)</td><td>Utility Score of Portfolio L [E(r) = 0.04; σ = 0.05]</td><td>Utility Score of Portfolio M [E(r) = 0.06; σ = 0.10]</td><td>Utility Score of Portfolio H [E(r) = 0.10; σ = 0.20]</td></tr><tr><td>2.0</td><td>0.04 – 1⁄2 × 2 × 0.052 = 0.0375</td><td>0.06 – 1⁄2 × 2 × 0.12 = 0.0500</td><td>0.10 – 1⁄2 × 2 × 0.22 = 0.06</td></tr><tr><td>3.5</td><td>0.04 – 1⁄2 × 3.5 × 0.052 = 0.0356</td><td>0.06 – 1⁄2 × 3.5 × 0.12 = 0.0425</td><td>0.10 – 1⁄2 × 3.5 × 0.22 = 0.03</td></tr><tr><td>5.0</td><td>0.04 – 1⁄2 × 5 × 0.052 = 0.0338</td><td>0.06 – 1⁄2 × 5 × 0.12 = 0.0350</td><td>0.10 – 1⁄2 × 5 × 0.22 = 0.00</td></tr></table>

Table 6.2

Utility scores of alternative portfolios for investors with varying degrees of risk aversion with certainty, would provide a utility score equal to that of the portfolio in question. The certainty equivalent rate of return is a natural way to rank competing portfolios.


A portfolio is desirable only if its certainty equivalent return exceeds that of the risk-free alternative. If risk aversion is high enough, any risky portfolio, even one with a positive risk premium, will be assigned a certainty equivalent below the risk-free rate and will be rejected by the investor. At the same time, a less risk-averse investor may assign the same portfolio a certainty equivalent rate greater than the risk-free rate and thus will prefer it to the risk-free alternative. If the risk premium is zero or negative to begin with, any downward adjustment to utility only makes the portfolio look worse. Its certainty equivalent rate will be below that of the risk-free alternative for any risk-averse investor.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/bad1a69b793f0079df9b2bf704e800dd0f418a1e3252fcf2f32d83bf24978016.jpg)

# Concept Check 6.1

A portfolio has an expected rate of return of  $15\%$  and standard deviation of  $30\%$ . T-bills offer a safe rate of return of  $2\%$ . Would an investor with risk-aversion parameter  $A = 4$  prefer to invest in T-bills or the risky portfolio? What if  $A = 2$ ?

In contrast to risk-averse investors, risk-neutral investors (with  $A = 0$ ) judge risky prospects solely by their expected rates of return. These investors impose no penalty for risk, so a portfolio's certainty equivalent rate is simply its expected rate of return.

A risk lover (for whom  $A < 0$ ) is happy to engage in fair games and gambles; this investor adjusts the expected return upward to take into account the "fun" of confronting the prospect's risk. Risk lovers will always take a fair game because their upward adjustment of utility for risk gives the fair game a certainty equivalent that exceeds the alternative of the risk-free investment.

We can depict the individual's trade-off between risk and return by plotting the characteristics of portfolios that would be equally attractive on a graph with axes measuring the expected value and standard deviation of portfolio returns. Figure 6.1 plots the characteristics of one portfolio, denoted  $P$ .

Portfolio  $P$ , which has expected return  $E(r_{P})$  and standard deviation  $\sigma_{P}$ , is preferred by risk-averse investors to any portfolio in quadrant IV because its expected return is equal to or greater than any portfolio in that quadrant and its standard deviation is equal to or less than any portfolio in that quadrant. Conversely, any portfolio in quadrant I dominates portfolio  $P$  because its expected return is equal to or greater than  $P$ 's and its standard deviation is equal to or less than  $P$ 's.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/a584e7f8f97c8cff5e28a7a3af35f9ba8f61eae8a67e6588041b5f8afae2af38.jpg)
Figure 6.1 The trade-off between risk and return of a potential investment portfolio,  $P$

This is the mean-standard deviation, or, equivalently, the mean-variance (M-V) criterion. It can be stated as follows: portfolio  $A$  dominates  $B$  if

$$
E (r _ {A}) \geq E (r _ {B})
$$ and


$$
\sigma_ {A} \leq \sigma_ {B}
$$ and at least one inequality is strict (to rule out indifference between the two portfolios).


In the expected return-standard deviation plane in Figure 6.1, the preferred direction is northwest because in this direction we simultaneously increase the expected return and decrease the volatility of the rate of return. Any portfolio that lies northwest of  $P$  is superior to it.

What about portfolios in quadrants II and III? Their desirability, compared with  $P$ , depends on the investor's risk aversion. Suppose an investor identifies all portfolios that are equally attractive as portfolio  $P$ . Starting at  $P$ , an increase in standard deviation lowers utility; to compensate, expected return must be higher. Thus, point  $Q$  in Figure 6.2, with higher risk but higher expected return, is equally desirable to this investor as  $P$ . Equally preferred

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/746259ab82b53484f1b34a73f24345e8fd91fd96d0aee9a87c2fd31c2426471d.jpg)
Figure 6.2 The indifference curve

No risk, no reward. Most people intuitively understand that they have to bear some risk to achieve an acceptable return on their investment portfolios.

But how much risk is right for you? If your investments turn sour, you may put at jeopardy your ability to retire, to pay for your kid's college education, or to weather an unexpected need for cash. These worst-case scenarios focus our attention on how to manage our exposure to uncertainty.

Assessing—and quantifying—risk aversion is, to put it mildly, difficult. It requires confronting at least these two big questions.

First, how much investment risk can you afford to take? If you have a steady high-paying job, for example, you have greater ability to withstand investment losses. Conversely, if you are close to retirement, you have less ability to adjust your lifestyle in response to bad investment outcomes.

Second, you need to think about your personality and decide how much risk you can tolerate. At what point will you be unable to sleep at night?

To help clients quantify their risk aversion, many financial firms have designed quizzes to help people determine whether they are conservative, moderate, or aggressive investors. These quizzes try to get at clients' attitudes toward risk and their capacity to absorb investment losses.

Here is a sample of the sort of questions that can shed light on an investor's risk tolerance.

# MEASURING YOUR RISK TOLERANCE

Circle the letter that corresponds to your answer.

1. The stock market fell by more than  $30\%$  in 2008. If you had been holding a substantial stock investment in that year, which of the following would you have done?

a. Sold off the remainder of your investment before it had the chance to fall further.
b. Stayed the course with neither redemptions nor purchases.
c. Bought more stock, reasoning that the market is now cheaper and therefore offers better deals.

2. The value of one of the funds in your 401(k) plan (your primary source of retirement savings) increased  $30\%$  last year. What will you do?

a. Move your funds into a money market account in case the price gains reverse.
b. Sit tight and do nothing.
c. Put more of your assets into that fund, reasoning that its value is clearly trending upward.

3. How would you describe your non-investment sources of income (e.g., your salary)?

a. Highly uncertain b. Moderately stable
c. Highly stable

4. At the end of the month, you find yourself: a. Short of cash and impatiently waiting for your next paycheck.

b. Not overspending your salary, but not saving very much.
c. With a comfortable surplus of funds to put into your savings account.

5. You are 30 years old and enrolling in your company's retirement plan, and you need to allocate your contributions across 3 funds: a money market account, a bond fund, and a stock fund. Which of these allocations sounds best to you?

a. Invest everything in a safe money-market fund.
b. Split your money evenly between the bond fund and stock fund.
c. Put everything into the stock fund, reasoning that by the time you retire, the year-to-year fluctuations in stock, returns will have evened out.

6. You are a contestant on Let's Make a Deal, and have just won \$1,000. But you can exchange the winnings for two random payoffs. One is a coin flip with a payoff of \$2,500 if the coin comes up heads. The other is a flip of two coins with a payoff of 6,000 if both coins come up heads. What will you do?

a. Keep the 1,000 in cash.
b. Choose the single coin toss.
c. Choose the double coin toss.

7. Suppose you have the opportunity to invest in a start-up firm. If the firm is successful, you will multiply your investment by a factor of ten. But if it fails, you will lose everything. You think the odds of success are around  $20\%$ . How much would you be willing to invest in the start-up?

a. Nothing b. 2 months' salary
c. 6 months' salary

8. Now imagine that to buy into the start-up you will need to borrow money. Would you be willing to take out a 10,000 loan to make the investment?

a. No b. Maybe
c. Yes

# SCORING YOUR RISK TOLERANCE

For each question, give yourself one point if you answered (a), two points if you answered (b), and three points for a (c). The higher your total score, the greater is your risk tolerance, or, equivalently, the lower is your risk aversion.

<table><tr><td>Expected Return, E(r)</td><td>Standard Deviation, σ</td><td>Utility = E(r) - 1/2Aσ2</td></tr><tr><td>0.10</td><td>0.200</td><td>0.10 - 0.5 × 4 × 0.04 = 0.02</td></tr><tr><td>0.15</td><td>0.255</td><td>0.15 - 0.5 × 4 × 0.065 = 0.02</td></tr><tr><td>0.20</td><td>0.300</td><td>0.20 - 0.5 × 4 × 0.09 = 0.02</td></tr><tr><td>0.25</td><td>0.339</td><td>0.25 - 0.5 × 4 × 0.115 = 0.02</td></tr></table>

# Table 6.3

Utility values of possible portfolios for investor with risk aversion  $A = 4$ portfolios lie in the mean-standard deviation plane on a curve called the indifference curve, which connects all portfolio points with the same utility value (Figure 6.2).


To determine some of the points that appear on the indifference curve, examine the utility values of several possible portfolios for an investor with  $A = 4$ , presented in Table 6.3. Each portfolio offers identical utility because the portfolios with higher expected return also have higher risk (standard deviation).

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/c22efc370752f70cadae082fb467cdfd0141cbf6871fb3d60524f58eb520225c.jpg)

# Concept Check 6.2 a. How will the indifference curve of a less risk-averse investor compare to the indifference curve drawn in Figure 6.2?

b. Draw both indifference curves passing through point  $P$ .

# Estimating Risk Aversion

How can we estimate the levels of risk aversion of individual investors? A number of methods may be used. The questionnaire in the nearby box is a simple example. More complex questionnaires, designed to pinpoint specific levels of risk aversion coefficients, ask would-be investors to choose from various sets of hypothetical risky prospects.

Access to the investment accounts of active investors would provide observations of how portfolio composition changes over time. Comparing estimates of the risk and return of these positions would, in principle, allow us to infer investors' risk aversion.

Finally, researchers track the behavior of groups of individuals to obtain average degrees of risk aversion. These studies range from observed purchase of insurance policies to labor supply and consumption behavior.

# 6.2 Capital Allocation across Risky and Risk-Free Portfolios

History shows us that long-term bonds have been riskier investments than Treasury bills and that stocks have been riskier still. On the other hand, the riskier investments have offered higher average returns. Investors, of course, do not make all-or-nothing choices from these investment classes. They can and do construct their portfolios using securities from all asset classes. Some of the portfolio may be in risk-free Treasury bills, some in high-risk stocks.

The most straightforward way to control the risk of the portfolio is through the fraction of the portfolio invested in Treasury bills or other safe money market securities versus the fraction invested in risky assets. Most investment professionals consider such broad asset allocation decisions the most important part of portfolio construction. Consider this statement by John Bogle, the late chairman of the Vanguard Group of Investment Companies:


The most fundamental decision of investing is the allocation of your assets: How much should you own in stock? How much should you own in bonds? How much should you own in cash reserves? . . . That decision [has been shown to account] for an astonishing  $94\%$  of the differences in total returns achieved by institutionally managed pension funds. . . . There is no reason to believe that the same relationship does not also hold true for individual investors. $^2$

Therefore, we start our discussion of the risk-return trade-off by examining the most basic asset allocation choice: How much of the portfolio should be placed in risk-free money market securities versus other risky asset classes.

We denote the investor's portfolio of risky assets as  $P$  and the risk-free asset as  $F$ . We assume for the sake of illustration that the risky component of the investor's overall portfolio comprises two mutual funds, one invested in stocks and the other in long-term bonds. For now, we take the composition of the risky portfolio as given and focus only on the allocation between it and risk-free securities. In the next chapter, we ask how best to determine the composition of the risky portfolio.

When we shift wealth from the risky portfolio to the risk-free asset, we do not change the relative proportions of the various risky assets within the risky portfolio. Rather, we reduce the relative weight of the risky portfolio as a whole in favor of risk-free assets.

For example, assume that the total market value of an initial portfolio is  \$300,000, of which\$ 90,000 is invested in the Ready Asset money market fund, a risk-free asset for practical purposes. The remaining  \$210,000 is invested in risky securities—\$ 113,400 in equities (E) and  $\$96,600$  in long-term bonds (B). The equities and bond holdings comprise “the” risky portfolio,  $54\%$  in E and  $46\%$  in B:

$$
E: \quad w _ {E} = \frac {1 1 3 , 4 0 0}{2 1 0 , 0 0 0} = . 5 4
$$

$$
B: \quad w _ {B} = \frac {9 6 , 6 0 0}{2 1 0 , 0 0 0} = . 4 6
$$

The weight of the risky portfolio,  $P$ , in the complete portfolio, comprising risk-free and risky investments, is denoted by  $y$ :

$$ y = \frac {2 1 0 , 0 0 0}{3 0 0 , 0 0 0} = . 7 (\text {r i s k y a s s e t s})
$$

$$
1 - y = \frac {9 0 , 0 0 0}{3 0 0 , 0 0 0} = . 3 (\text {r i s k - f r e e a s s e t s})
$$

Source: John C. Bogle, Bogle on Mutual Funds (Burr Ridge, IL: Irwin Professional Publishing, 1994), p. 235. Actually, this interpretation is a bit controversial. A more precise statement is that averaging across balanced funds that invest in both equity and fixed income securities, over  $90\%$  of the variation in returns over time, can be attributed to variation in the returns of the underlying asset classes. The portion of the variation in returns across managers for long (e.g., 10-year) holding periods that can be attributed to asset allocation policy is about  $40\%$ . Under either interpretation, asset allocation is clearly important. For more detail, see R. G. Ibbotson and P. D. Kaplan, "Does Asset Allocation Explain 40, 90, or 100 Percent of Performance?" Financial Analysts Journal, (January/February 2000), pp. 26-33.

The weights of each asset class in the complete portfolio are, therefore, as follows:

$$
E: \frac {\mathbb {S} 1 1 3 , 4 0 0}{\mathbb {S} 3 0 0 , 0 0 0} = . 3 7 8
$$

$$
B: \frac {\mathbb {S} 9 6 , 6 0 0}{\mathbb {S} 3 0 0 , 0 0 0} = . 3 2 2
$$

Risky portfolio  $= E + B = .700$

The risky portfolio makes up  $70\%$  of the complete portfolio.

# Example 6.2 The Risky Portfolio

Suppose the investor wishes to decrease risk by reducing the allocation to the risky portfolio from  $y = .7$  to  $y = .56$ . The risky portfolio would then total only  $.56 \times \300,000 = \$ 168,000 , requiring the sale of  $\42,000\$  of the original  $\$ 210,000  of risky holdings, with the proceeds used to purchase more shares in Ready Asset (the money market fund). Total holdings in the risk-free asset will increase to  $\300,000 \times (1 - .56) = \$ 132,000 , the original holdings plus the new contribution to the money market fund:

$$
\$ 90,000 + \$ 42,000 = \$ 132,000
$$

The key point is that the proportions of each asset in the risky portfolio remain unchanged. Because the weights of  $E$  and  $B$  in the risky portfolio are .54 and .46, respectively, we sell .54 × $42,000 = $22,680 of  $E$  and .46 × $42,000 = $19,320 of  $B$ . After the sale, the proportions of each asset in the risky portfolio are in fact unchanged:

$$
E: w _ {E} = \frac {1 1 3 , 4 0 0 - 2 2 , 6 8 0}{2 1 0 , 0 0 0 - 4 2 , 0 0 0} = . 5 4
$$

$$
B: \quad w _ {B} = \frac {9 6 , 6 0 0 - 1 9 , 3 2 0}{2 1 0 , 0 0 0 - 4 2 , 0 0 0} = . 4 6
$$

Therefore, rather than thinking of our risky holdings as  $E$  and  $B$  separately, it is better to view our holdings as if they were in a single fund that holds equities and bonds in fixed proportions. In this sense, we may treat the risky fund as a single risky asset, that asset being a particular bundle of securities. As we shift in and out of safe assets, we simply alter our holdings of that bundle of securities commensurately.

With this simplification, we turn to the desirability of reducing risk by changing the risky/risk-free asset mix, that is, reducing risk by decreasing the proportion  $y$ . As long as we do not alter the weights of each security within the risky portfolio, the probability distribution of the rate of return on the risky portfolio remains unchanged by the asset reallocation. What will change is the probability distribution of the rate of return on the complete portfolio that consists of the risky asset and the risk-free asset.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/dac2af67030907cc96a15b1187f514b3b9b218ec5abb5608c2a416dfefc9c8f9.jpg)

# Concept Check 6.3

What will be the dollar value of your position in equities  $(E)$ , and its proportion in your overall portfolio, if you decide to hold  $50\%$  of your investment budget in Ready Asset?

# 6.3 The Risk-Free Asset

By virtue of its power to tax and control the money supply, only the government can issue default-free bonds. Even the default-free guarantee by itself is not sufficient to make the bonds risk-free in real terms. The only risk-free asset in real terms would be a default-free price-indexed bond. Moreover, even that bond would offer a guaranteed real return only if its maturity matched the investor's desired holding period. Even inflation-indexed bonds are subject to interest rate risk because real interest rates change unpredictably through time.

Nevertheless, it is common practice to view Treasury bills as "the" risk-free asset. Their short-term nature makes their prices insensitive to interest rate fluctuations. Indeed, an investor can lock in a short-term nominal return by buying a bill and holding it to maturity. Moreover, inflation uncertainty over the course of a few weeks, or even months, is negligible compared with the uncertainty of stock market returns.

In addition to Treasury bills, many investors view a broad range of money market instruments as effectively risk-free assets. All the money market instruments are virtually free of interest rate risk because of their short maturities and usually pose little default or credit risk. Money market funds hold a variety of these low-risk instruments, so investors may also treat these funds as their effective risk-free asset. As discussed in Chapter 4, this is particularly true of government (as opposed to prime) funds.

# 6.4 Portfolios of One Risky Asset and a Risk-Free Asset

In this section, we examine the risk-return combinations available to investors once the properties of the risky portfolio have been determined. This is the "technical" part of capital allocation. In the next section we address the "personal" part of the problem—the individual's choice of the preferred risk-return combination from the feasible set.

Suppose the investor has already decided on the composition of the risky portfolio,  $P$ . Now the concern is with capital allocation, that is, the proportion of the investment budget,  $y$ , to be allocated to  $P$ . The remaining proportion,  $1 - y$ , will be invested in the risk-free asset,  $F$ .

Denote the risky rate of return of  $P$  by  $r_P$ , its expected rate of return by  $E(r_P)$ , and its standard deviation by  $\sigma_P$ . The rate of return on the risk-free asset is denoted as  $r_f$ . In our numerical example, we will make the following assumptions:

Expected return,  $E(r_{P}) = 10\%$

Standard deviation,  $\sigma_{P} = 22\%$

Risk-free rate,  $r_f = 2\%$

Thus, the risk premium on the risky asset is  $E(r_{P}) - r_{f} = 8\%$

With a proportion,  $y$ , in the risky portfolio, and  $1 - y$  in the risk-free asset, the rate of return on the complete portfolio, denoted  $C$ , is  $r_C$  where

$$ r _ {C} = y r _ {P} + (1 - y) r _ {f} \tag {6.2}
$$

Taking the expectation of this portfolio's rate of return,

$$
\begin{array}{l} E \left(r _ {C}\right) = y E \left(r _ {P}\right) + (1 - y) r _ {f} \\ = r _ {f} + y \left[ E \left(r _ {P}\right) - r _ {f} \right] = 2 + y (1 0 - 2) \tag {6.3} \\ \end{array}
$$

This equation has a straightforward interpretation: The base rate of return for any portfolio is the risk-free rate. In addition, the portfolio is expected to earn a proportion,  $y$ , of the risk premium of the risky portfolio,  $E(r_{P}) - r_{f}$ .

With a proportion  $y$  in a risky asset, the standard deviation of the complete portfolio is the standard deviation of the risky asset multiplied by its weight,  $y$ , in that portfolio. Because the standard deviation of the risky portfolio is  $\sigma_{P} = 22\%$ ,

$$
\sigma_ {C} = y \sigma_ {P} = 2 2 y \tag {6.4}
$$

This makes sense: The standard deviation of the complete portfolio is proportional to both the standard deviation of the risky asset and the proportion invested in it. In sum, the expected return of the complete portfolio is  $E(r_{C}) = r_{f} + y[E(r_{P}) - r_{f}] = 2 + 8y$  and the standard deviation is  $\sigma_{C} = 22y$ .

The next step is to plot the characteristics of the complete portfolio (for various choices for  $y$ ) in the expected return-standard deviation plane in Figure 6.3. The risk-free asset,  $F$ , appears on the vertical axis because its standard deviation is zero. The risky asset,  $P$ , is plotted with a standard deviation of  $22\%$  and expected return of  $10\%$ . If an investor chooses to invest solely in the risky asset, then  $y = 1.0$ , and the complete portfolio is  $P$ . If the chosen position is  $y = 0$ , then  $1 - y = 1.0$ , and the complete portfolio is the risk-free portfolio,  $F$ .

What about the more interesting midrange portfolios where  $y$  lies between 0 and 1? These portfolios will graph on the straight line connecting points  $F$  and  $P$ .

Increasing the fraction of the overall portfolio invested in the risky asset increases expected return at a rate of  $10\% - 2\% = 8\%$ , according to Equation 6.3. It also increases portfolio standard deviation at the rate of  $22\%$ , according to Equation 6.4. Therefore, the slope of the line in Figure 6.3 is

$$
S = \frac {\text {r i s e}}{\text {r u n}} = \frac {E \left(r _ {P}\right) - r _ {f}}{\sigma_ {P}} = \frac {8}{2 2} \tag {6.5}
$$

To summarize, the vertical intercept in Figure 6.3, corresponding to a standard deviation of zero, is the return on the risk-free asset,  $2\%$ . The slope is 8/22. Thus, the expected return-standard deviation trade-off for the complete portfolio is

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/2c5ec5236a4801c9ff96d7d89a1e84cfe02bdf63af1d64292201d0091c1afd96.jpg)
Figure 6.3 The investment opportunity set with a risky asset and a risk-free asset in the expected return-standard deviation plane


$$
E \left(r _ {C}\right) = 2 \% + \frac {8}{22} \sigma_ {C} \tag{6.6}
$$

Figure 6.3 shows the investment opportunity set, the set of feasible expected return and standard deviation pairs of all portfolios resulting from different values of  $y$ . The graph is a straight line originating at  $r_f$  and going through the point labeled  $P$ . This line is called the capital allocation line (CAL) and depicts all the available risk-return combinations. The slope of the CAL, denoted  $S$ , equals the increase in the expected return of the complete portfolio per unit of additional standard deviation—in other words, incremental return per incremental risk. This reward-to-volatility ratio is usually called the Sharpe ratio (see Chapter 5) after William Sharpe, who first used it extensively.

A portfolio equally divided between the risky asset and the risk-free asset, that is, where  $y = .5$ , will have an expected rate of return of  $E(r_{C}) = 2 + .5 \times 8 = 6\%$ , implying a risk premium of  $4\%$ , and a standard deviation of  $\sigma_{C} = .5 \times 22 = 11\%$ . It will plot on the line  $FP$  midway between  $F$  and  $P$ . Its Sharpe ratio is  $S = 4 / 11 = .36$ , precisely the same as that of portfolio  $P$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/59f78773a775f7d3d53110dc6f9f11a753806190caf1098e2001deb4a7f0c064.jpg)

# Concept Check 6.4

Can the Sharpe (reward-to-volatility) ratio,  $S = [E(r_{C}) - r_{f}] / \sigma_{C}$ , of any combination of the risky asset and the risk-free asset be different from the ratio for the risky asset taken alone,  $[E(r_{P}) - r_{f}] / \sigma_{P}$ , which, in this case, is .36?

What about points on the CAL to the right of portfolio  $P$ ? These are available using leverage, if investors can borrow at the (risk-free) rate of  $r_f = 2\%$  and invest the borrowed funds in portfolio  $P$ .

# Example 6.3 Leverage

Suppose the investment budget is  \$300,000 and our investor borrows an additional\$ 120,000, investing the total available funds in the risky asset. This is a levered position in the risky asset, financed in part by borrowing. In that case

$$ y = \frac {4 2 0 , 0 0 0}{3 0 0 , 0 0 0} = 1. 4
$$ and  $1 - y = 1 - 1.4 = -.4$ , reflecting a short (borrowing) position in the risk-free asset. Rather than lending at a  $2\%$  interest rate, the investor borrows at  $2\%$ . The distribution of the portfolio rate of return still exhibits the same Sharpe ratio:


$$
E (r _ {C}) = 2 \% + (1.4 \times 8 \%) = 13.2 \%
$$

$$
\sigma_ {C} = 1.4 \times 22 \% = 30.8 \%
$$

$$
S = \frac {E (r _ {C}) - r _ {f}}{\sigma_ {C}} = \frac {1 3 . 2 - 2}{3 0 . 8} = . 3 6
$$

As one might expect, the levered portfolio has a higher standard deviation than an unlevered position in the risky asset.

In reality, of course, nongovernment investors cannot borrow at the risk-free rate. The risk of a borrower's default leads lenders to demand higher interest rates on loans. Therefore, the nongovernment investor's borrowing cost will exceed the lending rate of  $r_f = 2\%$ . Suppose the borrowing rate is  $r_f^B = 4\%$ . Then, in the borrowing range, the Sharpe ratio, the slope of the CAL, will be  $\left[ E(r_P) - r_f^B \right] / \sigma_P = 6 / 22 = .27$ . The CAL will therefore be "kinked" at point  $P$ , as shown in Figure 6.4. To the left of  $P$  the investor is lending at  $2\%$ , and the slope of the CAL is .36. To the right of  $P$ , where  $y > 1$ , the investor is borrowing at  $4\%$  to finance extra investments in the risky asset, and the slope is .27.

In practice, borrowing to invest in the risky portfolio is straightforward if you have a margin account with a broker. All you have to do is tell your broker that you want to buy "on margin." Margin purchases may not exceed  $50\%$  of the purchase value. Therefore, if your net worth in the account is  $\$300,000$ , the broker is allowed to lend you up to  $\$300,000$  to purchase additional stock. $^5$  You would then have  $\$600,000$  on the asset side of your account and  $\$300,000$  on the liability side, resulting in  $y = 2.0$ .


![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/fe0a154cb6156c5130049940d57fa53170ba0619590a6862c79532e8746f2257.jpg)
Figure 6.4 The investment opportunity set with different borrowing and lending rates

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/01ceef58106e97d52e9c902944f3576a6c8d2861f249bdb4070541dbee567fa2.jpg)

# Concept Check 6.5

Suppose the expected rate of return on the risky asset increases from  $10\%$  to  $12\%$ . If all other parameters remain unchanged, what will be the slope of the CAL for  $y \leq 1$  and  $y > 1$ ?

# 6.5 Risk Tolerance and Asset Allocation

We have shown how to find the CAL, the graph of all feasible risk-return combinations available for capital allocation. The investor confronting the CAL now must choose her preferred complete portfolio,  $C$ , from the set of feasible choices. This choice entails a trade-off between risk and return. Individual differences in risk aversion lead to different capital allocation choices even when facing an identical opportunity set (i.e., the same risk-free rate and Sharpe ratio). In particular, more risk-averse investors will choose to hold less of the risky asset and more of the risk-free asset.

Margin purchases require the investor to maintain the securities in a margin account with the broker. If the value of the securities falls below a "maintenance margin," a "margin call" is sent out, requiring a deposit to bring the net worth of the account up to the appropriate level. If the margin call is not met, regulations mandate that some or all of the securities be sold by the broker and the proceeds used to reestablish the required margin. See Chapter 3, Section 3.8, for further discussion.

# Table 6.4

Utility levels for various positions in risky assets  $(y)$  for an investor with risk aversion  $A = 4$ . The risky portfolio has a risk premium of  $8\%$  and a standard deviation of  $22\%$ . The risk-free rate is  $2\%$ .

<table><tr><td>(1) y</td><td>(2) E(rC)</td><td>(3) σC</td><td>(4) U = E(r) - 1/2Aσ2</td></tr><tr><td>0</td><td>0.020</td><td>0</td><td>0.0200</td></tr><tr><td>0.1</td><td>0.028</td><td>0.022</td><td>0.0270</td></tr><tr><td>0.2</td><td>0.036</td><td>0.044</td><td>0.0321</td></tr><tr><td>0.3</td><td>0.044</td><td>0.066</td><td>0.0353</td></tr><tr><td>0.4</td><td>0.052</td><td>0.088</td><td>0.0365</td></tr><tr><td>0.5</td><td>0.060</td><td>0.110</td><td>0.0358</td></tr><tr><td>0.6</td><td>0.068</td><td>0.132</td><td>0.0332</td></tr><tr><td>0.7</td><td>0.076</td><td>0.154</td><td>0.0286</td></tr><tr><td>0.8</td><td>0.084</td><td>0.176</td><td>0.0220</td></tr><tr><td>0.9</td><td>0.092</td><td>0.198</td><td>0.0136</td></tr><tr><td>1.0</td><td>0.100</td><td>0.220</td><td>0.0032</td></tr></table>

The expected return on the complete portfolio is given by Equation 6.3:  $E(r_{C}) = r_{f} + y[E(r_{P}) - r_{f}] = .02 + y(.10 - .08)$ . Its variance is, from Equation 6.4,  $\sigma_{C}^{2} = y^{2}\sigma_{P}^{2} = y^{2}\times .22^{2}$ . Investors choose the allocation to the risky asset,  $y$ , that maximizes their utility function as given by Equation 6.1:  $U = E(r) - \frac{1}{2} A\sigma^2$ . As the allocation to the risky asset increases (higher  $y$ ), expected return increases, but so does volatility, so utility can increase or decrease. Table 6.4 shows utility levels for different values of  $y$ . Initially, utility increases as  $y$  increases, but eventually it declines.

Figure 6.5 is a plot of the utility function from Table 6.4. The graph shows that utility is highest at  $y = .41$ . When  $y$  is less than .41, investors are willing to assume more risk to increase expected return. But at higher levels of  $y$ , risk is higher, and additional allocations to the risky asset are undesirable—beyond this point, further increases in risk dominate the increase in expected return and reduce utility.

To solve the utility maximization problem more generally, we write the problem as follows:

$$
\underset {y} {\operatorname {M a x}} U = E \left(r _ {C}\right) - 1 / 2 A \sigma_ {C} ^ {2} = r _ {f} + y \left[ E \left(r _ {P}\right) - r _ {f} \right] - 1 / 2 A y ^ {2} \sigma_ {P} ^ {2}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/39e5a198dde35c272682dd3963b1cd1037f278b299106e1d6e94d883925f738f.jpg)
Figure 6.5 Utility as a function of allocation to the risky asset,  $y$

If you've taken a calculus course, you will recall that the maximization problem is solved by setting the derivative of this expression with respect to  $y$  equal to zero. Doing so and solving for  $y$  gives us the optimal position in the risky asset,  $y^*$ , as follows:

$$ y ^ {*} = \frac {E \left(r _ {P}\right) - r _ {f}}{A \sigma_ {P} ^ {2}} \tag {6.7}
$$

This solution shows that the optimal position in the risky asset is inversely proportional to the level of risk aversion and the level of risk (as measured by the variance) and directly proportional to the risk premium offered by the risky asset.

# Example 6.4 Capital Allocation

Using our numerical example  $[r_f = 2\%, E(r_P) = 10\%$ , and  $\sigma_P = 22\%]$ , and expressing all returns as decimals, the optimal solution for an investor with a coefficient of risk aversion  $A = 4$  is

$$ y ^ {*} = \frac {. 1 0 -. 0 2}{4 \times . 2 2 ^ {2}} = . 4 1
$$

In other words, this particular investor will invest  $41\%$  of the investment budget in the risky asset and  $59\%$  in the risk-free asset. As we saw in Figure 6.5, this is the value of  $y$  at which utility is maximized.

With  $41\%$  invested in the risky portfolio, the expected return and standard deviation of the complete portfolio are

$$
E \left(r _ {C}\right) = 2 + \left[ . 4 1 \times (1 0 - 2) \right] = 5. 2 8
$$

$$
\sigma_ {C} = . 41 \times 22 = 9.02 \%
$$

The risk premium of the complete portfolio is  $E(r_{C}) - r_{f} = 3.28\%$ , which is obtained by taking on a portfolio with a standard deviation of  $9.02\%$ . Notice that  $3.28 / 9.02 = .36$ , which is the reward-to-volatility (Sharpe) ratio of any complete portfolio given the parameters of this example.

An alternative, graphical way of presenting this decision problem is to use indifference curves. To illustrate how to build an indifference curve, consider an investor with risk aversion  $A = 4$  who currently holds all her wealth in a risk-free portfolio yielding  $r_f = 2\%$ . Because the variance of such a portfolio is zero, Equation 6.1 tells us that its utility value is  $U = .02$ . Now we find the expected return the investor would require to maintain the same level of utility when holding a risky portfolio, say, with  $\sigma = 1\%$ . We use Equation 6.1 to find how much  $E(r)$  must increase to compensate for the higher value of  $\sigma$ :

$$
U = E (r) - \frac {1}{2} \times A \times \sigma^ {2}
$$

$$
. 0 2 = E (r) - \frac {1}{2} \times 4 \times . 0 1 ^ {2}
$$

This implies that the necessary expected return increases to

$$
\begin{array}{l} \text {R e q u i r e d} E (r) = . 0 2 + \frac {1}{2} \times A \times \sigma^ {2} \tag {6.8} \\ = . 0 2 + \frac {1}{2} \times 4 \times . 0 1 ^ {2} = . 0 2 0 2 \\ \end{array}
$$

The derivative with respect to  $y$  equals  $E(r_{P}) - r_{f} - yA\sigma_{P}^{2}$ . Setting this expression equal to zero and solving for  $y$  yields Equation 6.7.

# Table 6.5

Points along indifference curve for investors with risk aversion of either  $A = 2$  or  $A = 4$ . Each entry is the expected return required to provide a utility value of .02.

<table><tr><td rowspan="2">σ</td><td colspan="2">Required expected return</td></tr><tr><td>A = 2</td><td>A = 4</td></tr><tr><td>0.00</td><td>0.0200</td><td>0.0200</td></tr><tr><td>0.05</td><td>0.0225</td><td>0.0250</td></tr><tr><td>0.10</td><td>0.0300</td><td>0.0400</td></tr><tr><td>0.15</td><td>0.0425</td><td>0.0650</td></tr><tr><td>0.20</td><td>0.0600</td><td>0.1000</td></tr><tr><td>0.25</td><td>0.0825</td><td>0.1450</td></tr><tr><td>0.30</td><td>0.1100</td><td>0.2000</td></tr><tr><td>0.35</td><td>0.1425</td><td>0.2650</td></tr><tr><td>0.40</td><td>0.1800</td><td>0.3400</td></tr><tr><td>0.45</td><td>0.2225</td><td>0.4250</td></tr><tr><td>0.50</td><td>0.2700</td><td>0.5200</td></tr></table>

We can repeat this calculation for other levels of  $\sigma$ , each time finding the value of  $E(r)$  necessary to maintain  $U = .02$ . This process will yield all combinations of expected return and volatility with utility level of .02; plotting these combinations gives us the indifference curve.

We can readily generate an investor's indifference curves using a spreadsheet. Table 6.5 contains risk-return combinations with utility values of .02 for two investors, one with  $A = 2$  and the other with  $A = 4$ . The plot of these indifference curves appears in Figure 6.6. Notice that the intercepts of the indifference curves, where standard deviation equals zero, are both .02, exactly the utility provided by the risk-free asset. The indifference curve for the more risk-averse investor (with  $A = 4$ ) is higher than the curve for the  $A = 2$  investor. This is because greater risk aversion increases the risk premium required to compensate for the "utility-penalty" corresponding to any standard deviation.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/985c73fb24d1a15c431be5a3423c2c5a36590577b324240406333d115be9a837.jpg)
Figure 6.6 Indifference curves. Each point shows the expected return required to provide a utility score of .02 for investors with risk aversion of either  $A = 2$  and  $A = 4$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/cb4e2d169aefb89676efebf844c285df93852e275948e42dbe84f09f11b3f4bd.jpg)
Figure 6.7 Finding the optimal complete portfolio by using indifference curves

Figure 6.6 demonstrates that more risk-averse investors have steeper indifference curves than less risk-averse investors. Steeper curves mean that investors require a greater increase in expected return to compensate for an increase in portfolio risk.

Higher indifference curves correspond to higher levels of utility. They provide higher expected return for any level of volatility. The investor thus attempts to find the complete portfolio on the highest possible indifference curve. When we superimpose plots of indifference curves on the investment opportunity set represented by the capital allocation line as in Figure 6.7, we can identify the highest possible indifference curve that still touches the CAL. That curve is tangent to the CAL, and the tangency point corresponds to the standard deviation and expected return of the optimal complete portfolio.

To illustrate, Table 6.6 provides calculations for four indifference curves (with utility levels of .02, .028, .03653, .044) for an investor with  $A = 4$ . Columns 2-5 use Equation 6.8 to calculate the expected return that must be paired with the standard deviation in column 1 to provide the utility value corresponding to each curve. Column 6 uses Equation 6.5 to calculate  $E(r_{C})$  on the CAL for the standard deviation  $\sigma_{C}$  in column 1:

$$
E \left(r _ {C}\right) = r _ {f} + \left[ E \left(r _ {P}\right) - r _ {f} \right] \frac {\sigma_ {C}}{\sigma_ {P}} = 2 + [ 1 0 - 2 ] \frac {\sigma_ {C}}{2 2}
$$

Figure 6.7 graphs the four indifference curves and the CAL. The graph reveals that the indifference curve with  $U = .03653$  is tangent to the CAL; the tangency point corresponds to the complete portfolio that maximizes utility. The tangency point occurs at  $\sigma_{C} = 9.02\%$  and  $E(r_{C}) = 5.28\%$ , the risk-return parameters of the optimal complete portfolio with  $y^{*} = 0.41$ . These values match our algebraic solution using Equation 6.7.

We conclude that the choice for  $y^*$ , the fraction of overall investment funds to place in the risky portfolio, is determined by risk aversion (the slope of indifference curves) and the Sharpe ratio (the slope of the opportunity set).

# Table 6.6

Expected returns on four indifference curves and the CAL (Investor's risk aversion is  $A = 4$ .)

<table><tr><td rowspan="2">σ</td><td colspan="4">Utility level</td><td rowspan="2">E(rC) on the CAL</td></tr><tr><td>0.02</td><td>0.028</td><td>0.03653</td><td>0.044</td></tr><tr><td>0</td><td>0.0200</td><td>0.0280</td><td>0.0365</td><td>0.0440</td><td>0.0200</td></tr><tr><td>0.02</td><td>0.0208</td><td>0.0288</td><td>0.0373</td><td>0.0448</td><td>0.0273</td></tr><tr><td>0.04</td><td>0.0232</td><td>0.0312</td><td>0.0397</td><td>0.0472</td><td>0.0345</td></tr><tr><td>0.06</td><td>0.0272</td><td>0.0352</td><td>0.0437</td><td>0.0512</td><td>0.0418</td></tr><tr><td>0.08</td><td>0.0328</td><td>0.0408</td><td>0.0493</td><td>0.0568</td><td>0.0491</td></tr><tr><td>0.0902</td><td>0.0363</td><td>0.0443</td><td>0.0528</td><td>0.0603</td><td>0.0528</td></tr><tr><td>0.10</td><td>0.0400</td><td>0.0480</td><td>0.0565</td><td>0.0640</td><td>0.0564</td></tr><tr><td>0.12</td><td>0.0488</td><td>0.0568</td><td>0.0653</td><td>0.0728</td><td>0.0636</td></tr><tr><td>0.14</td><td>0.0592</td><td>0.0672</td><td>0.0757</td><td>0.0832</td><td>0.0709</td></tr><tr><td>0.18</td><td>0.0848</td><td>0.0928</td><td>0.1013</td><td>0.1088</td><td>0.0855</td></tr><tr><td>0.22</td><td>0.1168</td><td>0.1248</td><td>0.1333</td><td>0.1408</td><td>0.1000</td></tr><tr><td>0.26</td><td>0.1552</td><td>0.1632</td><td>0.1717</td><td>0.1792</td><td>0.1145</td></tr><tr><td>0.30</td><td>0.2000</td><td>0.2080</td><td>0.2165</td><td>0.2240</td><td>0.1291</td></tr></table>

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/a7c17d01d9aec34185301b766b4593752c655212e25b64353c38cd8121a1af3a.jpg)

# Concept Check 6.6 a. If an investor's coefficient of risk aversion is  $A = 3$ , how does the optimal asset mix change? What are the new values of  $E(r_{C})$  and  $\sigma_{C}$ ?

b. Suppose that the borrowing rate,  $r_f^B = 4\%$ , is greater than the lending rate,  $r_f = 2\%$ . Show graphically how the optimal portfolio choice of some investors will be affected by the higher borrowing rate. Which investors will not be affected by the borrowing rate?

# Non-normal Returns

In the foregoing analysis, we implicitly assumed normality of returns by treating standard deviation as the appropriate measure of risk. But as we discussed in Chapter 5, departures from normality could result in extreme losses with far greater likelihood than would be plausible under a normal distribution. These exposures, which are typically measured by value at risk (VaR) or expected shortfall (ES), also would be important to investors.

Therefore, an appropriate extension of our analysis would be to present investors with forecasts of VaR and ES. Taking the capital allocation from the normal-based analysis as a benchmark, investors facing fat-tailed distributions might consider reducing their allocation to the risky portfolio in favor of an increase in the allocation to the risk-free vehicle.

Probabilities of moderate outcomes can be readily assessed from experience because of the high relative frequency of such observations. Extreme negative values are thankfully rare, but for that very reason, accurately assessing their probabilities is virtually impossible.

Nevertheless, "black swans," those rare but high-impact events that can result in drastic security returns, clearly concern investors. We will see evidence of their concern when we look at empirical evidence on the pricing of options in Chapter 21.

# 6.6 Passive Strategies: The Capital Market Line

The CAL is derived using the risk-free and "the" risky portfolio,  $P$ . Determination of the assets to include in  $P$  may result from a passive or an active strategy. A passive strategy describes a portfolio decision that avoids any direct or indirect security analysis. At first blush, a passive strategy would appear to be naive. As will become apparent, however, forces of supply and demand in large capital markets may make such a strategy the best choice for many investors.

In Chapter 5, we presented a compilation of the history of rates of return on different portfolios. The data are available at Professor Kenneth French's Web site, MBA.tuck .dartmouth.edu/pages/faculty/ken.french/dataLibrary.html. We can use these data to examine various passive strategies.

A natural candidate for a passively held risky asset would be a well-diversified portfolio of common stocks such as the "U.S. Market" described in Chapter 5. Because a passive strategy requires that we devote no resources to acquiring information on any individual stock or group of stocks, we must follow a "neutral" diversification strategy. One way is to select a diversified portfolio of stocks that mirrors the value of the corporate sector of the entire economy. This results in a portfolio in which, for example, the proportion invested in Microsoft stock will be the ratio of Microsoft's total market value to the market value of all listed stocks.

Table 6.7 summarizes the performance of the U.S. Market portfolio over the 95-year period 1927-2021, as well as for four subperiods. The table shows the average return for the portfolio, the annual return realized by rolling over 1-month T-bills for the same period, as well as the resultant average excess return (risk premium) and its standard deviation. The Sharpe ratio was .44 for the overall period, 1927-2021. In other words, stock market investors enjoyed an additional .44\% average excess return over the T-bill rate for every 1\% increase in standard deviation.

But the risk-reward trade-off we infer from the historical data is far from precise. This is because the excess return on the market portfolio is so variable, with an annual standard deviation of  $20.25\%$ . With such high year-by-year volatility, it is no surprise that the reward-to-risk trade-off is also highly variable. The Sharpe ratios across subperiods vary

<table><tr><td rowspan="2">Period</td><td colspan="2">Average annual return</td><td colspan="3">U.S. Equity Market</td></tr><tr><td>U.S. equity</td><td>1-month T-bills</td><td>Excess return</td><td>Standard deviation</td><td>Sharpe ratio</td></tr><tr><td>1927–2021</td><td>12.17</td><td>3.30</td><td>8.87</td><td>20.25</td><td>0.44</td></tr><tr><td>1927–1950</td><td>10.26</td><td>0.93</td><td>9.33</td><td>26.57</td><td>0.35</td></tr><tr><td>1951–1974</td><td>10.21</td><td>3.59</td><td>6.63</td><td>20.32</td><td>0.33</td></tr><tr><td>1975–1998</td><td>17.97</td><td>6.98</td><td>11.00</td><td>14.40</td><td>0.76</td></tr><tr><td>1999–2021</td><td>10.16</td><td>1.66</td><td>8.50</td><td>18.85</td><td>0.45</td></tr></table> by a multiple of more than 2, ranging from .33 to .76. The lesson here is that we should be very humble when we use historical data to forecast future returns. Returns and the risk-return trade-off are extremely difficult to predict, and we can have only a loose sense of what that trade-off will be in coming periods.

Table 6.7 Average annual return on stocks and 1-month T-bills; standard deviation and Sharpe ratio of stocks over time


We call the capital allocation line provided by short-term T-bills and a broad index of common stocks the capital market line (CML). A passive strategy generates an investment opportunity set that is represented by the CML.

How reasonable is it for an investor to pursue a passive strategy? We cannot answer such a question without comparing the strategy to the costs and benefits accruing to an active portfolio strategy. Some thoughts are relevant even at this point, however.

First, the alternative active strategy is not free. Whether you choose to invest the time and cost to acquire the information needed to generate an optimal active portfolio of risky assets, or whether you delegate the task to a professional who will charge a fee, constitution of an active portfolio is more expensive than a passive one. Passive management entails only negligible costs to purchase T-bills and very modest management fees to either an exchange-traded index fund or mutual fund. Vanguard, for example, operates several index portfolios. One, the 500 Index Fund, tracks the S&P 500. It purchases shares of the firms comprising the S&P 500 in proportion to the market values of the outstanding equity of each firm, and therefore essentially replicates the S&P 500 index. It has one of the lowest operating expenses (as a percentage of assets) of all mutual stock funds precisely because it requires minimal managerial effort. Whereas the S&P 500 is primarily an index of large, high-capitalization (large cap) stocks, another Vanguard index fund, the Total Stock Market Index Fund, is more inclusive and provides investors with exposure to the entire U.S. equity market, including small- and mid-cap stocks as well as growth and value stocks. It is nearly identical to what we have called the U.S. Market Index.

A second reason to pursue a passive strategy is the free-rider benefit. If there are many active, knowledgeable investors who quickly bid up prices of undervalued assets and force down prices of overvalued assets (by selling), we have to conclude that at any time most assets will be at least approximately fairly priced. Therefore, a well-diversified portfolio of common stock will be a reasonably fair buy, and the passive strategy may not be inferior to that of the average active investor. (We will elaborate on this argument and provide a more comprehensive analysis of the relative success of passive strategies in later chapters.) As we saw in Chapter 4, passive index funds have actually outperformed most actively managed funds in the past decades, and investors have responded to their lower costs and better performance by directing their investments into these products.

To summarize, a passive strategy involves investment in two passive portfolios: virtually risk-free short-term T-bills (or, alternatively, a money market fund) and a stock fund that mimics a broad market index. The capital allocation line representing such a strategy is called the capital market line. Historically, in the 1927 to 2021 period, the passive risky portfolio offered an average risk premium of  $8.87\%$  and a standard deviation of  $20.25\%$ , resulting in a reward-to-volatility ratio of .44.

Passive investors allocate their investment budgets among instruments according to their degree of risk aversion. We can use our analysis to deduce a typical investor's risk-aversion parameter. From Table 1.1 in Chapter 1, we estimate that approximately  $69.3\%$  of net worth is invested in a broad array of risky assets. We assume this portfolio has the same reward-risk characteristics that the U.S. equity market has exhibited since 1927, as documented in Table 6.7. Substituting these values in Equation 6.7, we obtain


$$ y ^ {*} = \frac {E \left(r _ {M}\right) - r _ {f}}{A \sigma_ {M} ^ {2}} = \frac {. 0 8 8 7}{A \times . 2 0 2 5 ^ {2}} = . 6 9 3
$$ which implies a coefficient of risk aversion of


$$
A = \frac {. 0 8 8 7}{. 6 9 3 \times . 2 0 2 5 ^ {2}} = 3. 1 2
$$

Of course, this calculation is highly speculative. We have assumed that the average investor holds the naïve view that historical average rates of return and standard deviations are the best estimates of expected rates of return and risk, looking to the future. To the extent that the average investor takes advantage of contemporary information in addition to simple historical data, our estimate of  $A = 3.12$  would be unjustified. Nevertheless, a broad range of studies, taking into account the full range of available assets, places the degree of risk aversion for the representative investor in the range of 2.0 to 4.0.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/c92848ff4ae02535396f01c63969f3cf04b895a06e375e10e94f6c51b7bcff5f.jpg)

# Concept Check 6.7

Suppose that expectations about the U.S. equity market and the T-bill rate are the same as they were in 2021, but you find that a greater proportion is invested in T-bills today than in 2021. What can you conclude about the change in risk tolerance over the years since 2021?

See, for example, I. Friend and M. Blume, “The Demand for Risky Assets,” American Economic Review 64 (1974); or S. J. Grossman and R. J. Shiller, “The Determinants of the Variability of Stock Market Prices,” American Economic Review 71 (1981).

1. Speculation is the undertaking of a risky investment for its risk premium. The risk premium has to be large enough to compensate a risk-averse investor for the risk of the investment.
2. A fair game is a risky prospect that has a zero risk premium. It will not be undertaken by a risk-averse investor.
3. Investors' preferences toward the expected return and volatility of a portfolio may be expressed by a utility function that is higher for higher expected returns and lower for higher portfolio variances. More risk-averse investors will apply greater penalties for risk. We can describe these preferences graphically using indifference curves.
4. The desirability of a risky portfolio to a risk-averse investor may be summarized by the certainty equivalent value of the portfolio. The certainty equivalent rate of return is a value that, if received with certainty, would yield the same utility as the risky portfolio.
5. Shifting funds from the risky portfolio to the risk-free asset is the simplest way to reduce risk. Other methods involve diversification of the risky portfolio and hedging. We take up these methods in later chapters.
6. T-bills provide a perfectly risk-free asset in nominal terms only. Nevertheless, the standard deviation of real returns on short-term T-bills is small compared to that of other assets such as long-term bonds and common stocks, so for the purpose of our analysis we consider T-bills as the risk-free asset. Money market funds hold, in addition to T-bills, short-term relatively safe obligations such as repurchase agreements or bank CDs. These entail some default risk, but again, the additional risk is small relative to most other risky assets. For convenience, we often refer to money market funds as risk-free assets.

# SUMMARY

7. An investor's risky portfolio (the risky asset) can be characterized by its reward-to-volatility or Sharpe ratio,  $S = [E(r_{P}) - r_{f}] / \sigma_{P}$ . This ratio is also the slope of the CAL, the line that, when graphed, goes from the risk-free asset through the risky asset. All combinations of the risky asset and the risk-free asset lie on this line. Other things equal, an investor would prefer a steeper-sloping CAL because that means higher expected return for any level of risk. If the borrowing rate is greater than the lending rate, the CAL will be "kinked" at the point of the risky asset.
8. The investor's degree of risk aversion is characterized by the slope of the indifference curve. Indifference curves show, at any level of expected return and risk, the required risk premium for taking on each additional percentage point of standard deviation. More risk-averse investors have steeper indifference curves; that is, they require a greater risk premium for taking on more risk.
9. The optimal position,  $y^{*}$ , in the risky asset is proportional to the risk premium and inversely proportional to the variance and degree of risk aversion:

$$ y ^ {*} = \frac {E (r _ {P}) - r _ {f}}{A \sigma_ {P} ^ {2}}
$$

Graphically, this portfolio represents the point at which the indifference curve is tangent to the CAL.

10. A passive investment strategy disregards security analysis, targeting instead the risk-free asset and a broad portfolio of risky assets such as the S&P 500 stock portfolio. If in 2021 investors took the mean historical return and standard deviation of the S&P 500 as proxies for its expected return and standard deviation, then the values of outstanding assets would imply a degree of risk aversion of about  $A = 3.12$  for the average investor. This is in line with other studies, which estimate typical risk aversion in the range of 2.0 through 4.0.

# KEY TERMS risk premium


fair game risk averse


utility certainty equivalent rate


risk neutral risk lover


mean-variance (M-V) criterion


indifference curve complete portfolio


risk-free asset capital allocation line (CAL)


reward-to-volatility or Sharpe ratio


passive strategy capital market line (CML)


# KEY EQUATIONS

Utility score:  $U = E(r) - \frac{1}{2} A\sigma^2$

Expected return on complete portfolio:  $E(r_{C}) = yE(r_{C}) + (1 - y)r_{f}$

Standard deviation of complete portfolio:  $\sigma_{C} = y\sigma_{P}$

Optimal allocation to risky portfolio:  $y^{*} = \frac{E(r_{P}) - r_{f}}{A\sigma_{P}^{2}}$

# PROBLEM SETS

1. Which of the following choices best completes the following statement? Explain. An investor with a higher degree of risk aversion, compared to one with a lower degree, will demand investment portfolios

$a$  with higher risk premiums.
$b$ . that are riskier (with higher standard deviations).
$c$ . with lower Sharpe ratios.
$d$ . with lower trading costs.

2. Which of the following statements are true? Explain.

$a$ . A lower allocation to the risky portfolio reduces the Sharpe (reward-to-volatility) ratio.
$b$ . The higher the borrowing rate, the lower the Sharpe ratios of levered portfolios.
c. With a fixed risk-free rate, doubling the expected return and standard deviation of the risky portfolio will double the Sharpe ratio.
$d$ . Holding constant the risk premium of the risky portfolio, a higher risk-free rate will increase the Sharpe ratio of investments with a positive allocation to the risky asset.

3. What do you think would happen to the equilibrium expected return on stocks if investors perceived higher volatility in the equity market? Relate your answer to Equation 6.7.

4. Consider a risky portfolio. The end-of-year cash flow derived from the portfolio will be either \$70,000 or \$200,000 with equal probabilities of .5. The alternative risk-free investment in T-bills pays 2\% per year.

a. If you require a risk premium of  $8\%$ , how much will you be willing to pay for the portfolio?
b. Suppose that the portfolio can be purchased for the amount you found in (a). What will be the expected rate of return on the portfolio?
c. Now suppose that you require a risk premium of  $12\%$ . What price are you willing to pay?
d. Comparing your answers to  $(a)$  and  $(c)$ , what do you conclude about the relationship between the required risk premium on a portfolio and the price at which the portfolio will sell?

5. Consider a portfolio that offers an expected rate of return of  $7\%$  and a standard deviation of  $18\%$ . T-bills offer a risk-free  $2\%$  rate of return. What is the maximum level of risk aversion for which the risky portfolio is still preferred to T-bills?
6. Draw the indifference curve in the expected return-standard deviation plane corresponding to a utility level of .02 for an investor with a risk aversion coefficient of 3. (Hint: Choose several possible standard deviations, ranging from 0 to .25, and find the expected rates of return providing a utility level of .02. Then plot the expected return-standard deviation points so derived.)
7. Now draw the indifference curve corresponding to a utility level of .02 for an investor with risk aversion coefficient  $A = 4$ . Comparing your answer to Problem 6, what do you conclude?
8. Draw an indifference curve for a risk-neutral investor providing utility level .02.
9. What must be true about the sign of the risk aversion coefficient,  $A$ , for a risk lover? Draw the indifference curve for a utility level of .02 for a risk lover.

For Problems 10 through 12: Consider historical data showing that the average annual rate of return on the S&P 500 portfolio over the past 95 years has averaged roughly  $8\%$  more than the Treasury bill return and that the S&P 500 standard deviation has been about  $20\%$  per year. Assume these values are representative of investors' expectations for future performance and that the current T-bill rate is  $2\%$ .

10. Calculate the expected return and variance of portfolios invested in T-bills and the S&P 500 index with weights as follows:

<table><tr><td>Wbills</td><td>Windex</td></tr><tr><td>0</td><td>1.0</td></tr><tr><td>0.2</td><td>0.8</td></tr><tr><td>0.4</td><td>0.6</td></tr><tr><td>0.6</td><td>0.4</td></tr><tr><td>0.8</td><td>0.2</td></tr><tr><td>1.0</td><td>0</td></tr></table> excel


Please visit us at www.mhhe.com/Bodie13e


excel

Please visit us at www.mhhe.com/Bodie13e


11. Calculate the utility levels of each portfolio of Problem 10 for an investor with  $A = 2$ . What do you conclude?
12. Repeat Problem 11 for an investor with  $A = 3$ . What do you conclude?

Use these inputs for Problems 13 through 19: You manage a risky portfolio with an expected rate of return of  $12\%$  and a standard deviation of  $28\%$ . The T-bill rate is  $2\%$ .

13. Your client chooses to invest  $70\%$  of a portfolio in your fund and  $30\%$  in an essentially risk-free money market fund. What are the expected value and standard deviation of the rate of return on his portfolio?
14. Suppose that your risky portfolio includes the following investments in the given proportions:

Stock A 25\%

Stock B 32\%

Stock C 43\%

What are the investment proportions of each asset in your client's overall portfolio, including the position in T-bills?

15. What is the reward-to-volatility (Sharpe) ratio  $(S)$  of your risky portfolio? Your client's?
16. Draw the CAL of your portfolio on an expected return-standard deviation diagram. What is the slope of the CAL? Show the position of your client on your fund's CAL.
17. Suppose that your client decides to invest in your portfolio a proportion  $y$  of the total investment budget so that the overall portfolio will have an expected rate of return of  $10\%$ .

$a$ . What is the proportion  $y$ ?
$b$ . What are your client's investment proportions in your three stocks and the T-bill fund?
c. What is the standard deviation of the rate of return on your client's portfolio?

18. Suppose that your client prefers to invest in your fund a proportion  $y$  that maximizes the expected return on the complete portfolio subject to the constraint that the complete portfolio's standard deviation will not exceed  $12\%$ .

$a$ . What is the investment proportion,  $y$ ?
$b$ . What is the expected rate of return on the complete portfolio?

19. Your client's degree of risk aversion is  $A = 3.5$ .

$a$ . What proportion,  $y$ , of the total investment should be invested in your fund?
b. What are the expected value and standard deviation of the rate of return on your client's optimized portfolio?

20. Look at the data in Table 6.7 on the average excess return of the U.S. equity market and the standard deviation of that excess return. Suppose that the U.S. Market is your risky portfolio.

a. If your risk-aversion coefficient is  $A = 4$  and you believe that the entire 1927-2021 period is representative of future expected performance, what fraction of your portfolio should be allocated to T-bills and what fraction to equity?
$b$ . What if you believe that the 1975-1998 period is representative?
c. What do you conclude upon comparing your answers to  $(a)$  and  $(b)?$

21. Consider the following information about a risky portfolio that you manage and a risk-free asset:  $E(r_{P}) = 8\%$ ,  $\sigma_{P} = 15\%$ ,  $r_{f} = 2\%$ .

a. Your client wants to invest a proportion of her total investment budget in your risky fund to provide an expected rate of return on her overall or complete portfolio equal to  $5\%$ . What proportion should she invest in the risky portfolio,  $P$ , and what proportion in the risk-free asset?
$b$ . What will be the standard deviation of the rate of return on her portfolio?
c. Another client wants the highest return possible subject to the constraint that you limit his standard deviation to be no more than  $12\%$ . Which client is more risk averse?

22. Investment Management Inc. (IMI) uses the capital market line to make asset allocation recommendations. IMI derives the following forecasts:

Expected return on the market portfolio:  $12\%$

Standard deviation on the market portfolio:  $20\%$
Risk-free rate:  $5\%$

Samuel Johnson seeks IMI's advice for a portfolio asset allocation. Johnson wants the standard deviation of the portfolio to equal half that of the market portfolio. Using the capital market line, what expected return can IMI provide subject to Johnson's risk constraint?

For Problems 23 through 26: Suppose that the borrowing rate that your client faces is  $6\%$ . Assume that the equity market index has an expected return of  $10\%$  and standard deviation of  $25\%$ , that  $r_f = 2\%$ , and that your fund has the parameters given in Problem 21.

23. Draw a diagram of your client's CML, accounting for the higher borrowing rate. Superimpose on it two sets of indifference curves, one for a client who will choose to borrow and one for a client who will invest in both the index fund and a money market fund.
24. What is the range of risk aversion for which a client will neither borrow nor lend, that is, for which  $y = 1$ ?
25. Solve Problems 23 and 24 for a client who uses your fund rather than an index fund.
26. What is the largest percentage fee that a client who currently is lending  $(y < 1)$  will be willing to pay to invest in your fund? What about a client who is borrowing  $(y > 1)$ ?

For Problems 27 through 29: You estimate that a passive portfolio, for example, one invested in a risky portfolio that mimics the S&P 500 stock index, offers an expected rate of return of  $13\%$  with a standard deviation of  $25\%$ . You manage an active portfolio with expected return  $18\%$  and standard deviation  $28\%$ . The risk-free rate is  $3\%$ .

27. Draw the CML and your funds' CAL on an expected return-standard deviation diagram.

a. What is the slope of the CML?
$b$ . Characterize in one short paragraph the advantage of your fund over the passive fund.

28. Your client ponders whether to switch the  $70\%$  that is invested in your fund to the passive portfolio.

$a$  .Explain to your client the disadvantage of the switch.
b. Show him the maximum fee you could charge (as a percentage of the investment in your fund, deducted at the end of the year) that would leave him at least as well off investing in your fund as in the passive one. (Hint: The fee will lower the slope of his CAL by reducing the expected return net of the fee.)

29. Consider again the client in Problem 19 with  $A = 3.5$ .

$a$ . If he chose to invest in the passive portfolio, what proportion,  $y$ , would he select?
$b$ . Is the fee (percentage of the investment in your fund, deducted at the end of the year) that you can charge to make the client indifferent between your fund and the passive strategy affected by his capital allocation decision (i.e., his choice of  $y$ )?

# Use the following data in answering CFA Problems 1-3:

Utility Formula Data

<table><tr><td>Investment</td><td>Expected Return, E(r)</td><td>Standard Deviation, σ</td></tr><tr><td>1</td><td>0.12</td><td>0.30</td></tr><tr><td>2</td><td>0.15</td><td>0.50</td></tr><tr><td>3</td><td>0.21</td><td>0.16</td></tr><tr><td>4</td><td>0.24</td><td>0.21</td></tr></table>

$$
U = E (r) - \frac {1}{2} A \sigma^ {2}, \text {w h e r e} A = 4
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/79ef84a0c4be361bc3549b86656b6f906ad6c5bcc5d44f7f5f2972364b4f3e0e.jpg)

1. On the basis of the utility formula above, which investment would you select if you were risk averse with  $A = 4$ ?
2. On the basis of the utility formula above, which investment would you select if you were risk neutral?
3. The variable  $(A)$  in the utility formula represents the:

$a$  .Investor's return requirement.
$b$ . Investor's aversion to risk.
c. Certainty equivalent rate of the portfolio.
$d$ . Preference for one unit of return per four units of risk.

Use the following graph to answer CFA Problems 4 and 5.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/8c1c04644a2ba501861fb31772b3f86d147e02c8f481efda0cc77205d1c794e5.jpg)

4. Which indifference curve represents the greatest level of utility that can be achieved by the investor?
5. Which point designates the optimal portfolio of risky assets?
 6. Given 100,000 to invest, what is the expected risk premium in dollars of investing in equities versus risk-free T-bills on the basis of the following table?

<table><tr><td>Action</td><td>Probability</td><td>Return</td></tr><tr><td rowspan="2">Invest in equities</td><td>0.6</td><td>$50,000</td></tr><tr><td>0.4</td><td>-$30,000</td></tr><tr><td>Invest in risk-free T-bills</td><td>1.0</td><td>5,000</td></tr></table>

7. The change from a straight to a kinked capital allocation line is a result of the: a. Reward-to-volatility (Sharpe) ratio increasing.

$b$ . Borrowing rate exceeding the lending rate.
$c$ . Investor's risk tolerance decreasing.
$d$ . Increase in the portfolio proportion of the risk-free asset.

8. You manage an equity fund with an expected risk premium of 10\% and an expected standard deviation of 14\%. The rate on Treasury bills is 2\%. Your client chooses to invest \$60,000 of her portfolio in your equity fund and \$40,000 in a T-bill money market fund. What are the expected return and standard deviation of return on your client's portfolio?
9. What is the reward-to-volatility (Sharpe) ratio for the equity fund in CFA Problem 8?

# E-INVESTMENTS EXERCISES

There is a difference between investors' willingness to take risk and their ability to take risk. Take the quizzes offered at the Web sites below and compare the results. If they are significantly different, which one would you use to determine an investment strategy?

https://personal.vanguard.com/us/FundsInvQuestionnaire https://njaes.rutgers.edu/money/assessment-tools/
https://www.schwab.com/resource/investment-questionnaire

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/fadd1e11751767a63f0ea2517dc05a07e88e11800880537c28547be9c54be7f0.jpg)

# SOLUTIONS TO CONCEPT CHECKS

1. For the  $A = 4$  investor, the utility of the risky portfolio is

$$
U = . 1 5 - \left(\frac {1}{2} \times 4 \times . 3 ^ {2}\right) = -. 0 3
$$ while the utility of bills is


$$
U = . 0 2 - (\frac {1}{2} \times 4 \times 0) = . 0 2
$$

The investor will prefer bills to the risky portfolio. (Of course, a mixture of bills and the portfolio might be even better, but that is not a choice here.)

For the less risk-averse investor with  $A = 2$ , the utility of the risky portfolio is

$$
U = . 1 5 - \left(\frac {1}{2} \times 2 \times . 3 ^ {2}\right) = . 0 6
$$ while the utility of bills is again .02. The less risk-averse investor prefers the risky portfolio.


2. The less risk-averse investor has a shallower indifference curve. An increase in risk requires less increase in expected return to restore utility to the original level.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/bc9c5467f17a01fbb91101a323d5eb752cda3a144d7602d8996ea0cc7602f744.jpg)

3. Holding  $50\%$  of your invested capital in Ready Assets means that your investment proportion in the risky portfolio is reduced from  $70\%$  to  $50\%$ .

Your risky portfolio is constructed to invest  $54\%$  in  $E$  and  $46\%$  in  $B$ . Thus, the proportion of  $E$  in your overall portfolio is  $.5 \times 54\% = 27\%$ , and the dollar value of your position in  $E$  is \$300,000 \times$  .27 = \81,000.

4. In the expected return-standard deviation plane, all portfolios that are constructed from the same risky and risk-free funds (with various proportions) lie on a line from the risk-free rate through the risky fund. The slope of the CAL (capital allocation line) is the same everywhere; hence, the reward-to-volatility (Sharpe) ratio is the same for all of these portfolios. Formally, if you invest a proportion,  $y$ , in a risky fund with expected return  $E(r_{P})$  and standard deviation  $\sigma_{P}$ , and the remainder,  $1 - y$ , in a risk-free asset with a sure rate  $r_{f}$ , then the portfolio's expected return and standard deviation are


$$
\begin{array}{l} E \left(r _ {C}\right) = r _ {f} + y \left[ E \left(r _ {P}\right) - r _ {f} \right] \\ \sigma_ {C} = y \sigma_ {P} \\ \end{array}
$$ and therefore the Sharpe ratio of this portfolio is


$$
S _ {C} = \frac {E (r _ {C}) - r _ {f}}{\sigma_ {C}} = \frac {y [ E (r _ {P}) - r _ {f} ]}{y \sigma_ {P}} = \frac {E (r _ {P}) - r _ {f}}{\sigma_ {P}}
$$ which is independent of the proportion  $y$ .


5. The lending and borrowing rates are unchanged at  $r_f = 2\%$ ,  $r_f^B = 4\%$ . The standard deviation of the risky portfolio is still  $22\%$ , but the expected rate of return on the risky portfolio increases from  $10\%$  to  $12\%$ .

The slope of the two-part CAL is

$$
\begin{array}{l} \frac {E \left(r _ {P}\right) - r _ {f}}{\sigma_ {P}} \text {f o r t h e l e n d i n g r a n g e} \\ \frac {E \left(r _ {P}\right) - r _ {f} ^ {B}}{\sigma_ {P}} \text {f o r t h e b o r r o w i n g r a n g e} \\ \end{array}
$$

Thus, in both cases, the slope increases: from 8/22 to 10/22 for the lending range and from 6/22 to 8/22 for the borrowing range.

6.  $a$ . The parameters are  $r_f = .02$ ,  $E(r_P) = .10$ ,  $\sigma_P = .22$ . An investor with a degree of risk aversion  $A$  will choose a proportion  $y$  in the risky portfolio of

$$ y = \frac {E (r _ {P}) - r _ {f}}{A \sigma_ {P} ^ {2}}
$$

With the assumed parameters and with  $A = 3$ , we find that

$$ y = \frac {. 1 0 -. 0 2}{3 \times . 0 4 8 4} = . 5 5
$$

When the degree of risk aversion decreases from the original value of 4 to the new value of 3, investment in the risky portfolio increases from  $41\%$  to  $55\%$ . Accordingly, both the expected return and standard deviation of the optimal portfolio increase:

$$
\begin{array}{l} E \left(r _ {C}\right) = . 0 2 + (. 5 5 \times . 0 8) = . 0 6 4 (\text {b e f o r e :}. 0 5 2 8) \\ \sigma_ {C} = . 5 5 \times . 2 2 =. 1 2 1 (\text {b e f o r e :}. 0 9 0 2) \\ \end{array}
$$ b. All investors whose degree of risk aversion is such that they would hold the risky portfolio in a proportion equal to  $100\%$  or less  $(y \leq 1.00)$  are lending rather than borrowing, and so are unaffected by the borrowing rate. The individuals just at the dividing line separating lenders from borrowers are the ones who choose to hold exactly  $100\%$  of their assets in the risky portfolio  $(y = 1)$ . We can solve for the degree of risk aversion of these "cut off" investors from the parameters of the investment opportunities:


$$ y = 1 = \frac {E (r _ {P}) - r _ {f}}{A \sigma_ {P} ^ {2}} = \frac {. 0 8}{. 0 4 8 4 A}
$$ which implies


$$
A = \frac {. 0 8}{. 0 4 8 4} = 1. 6 5
$$

Any investor who is more risk tolerant (i.e.,  $A < 1.65$ ) would choose to borrow if the borrowing rate were  $2\%$ . These are the investors who are affected by the higher borrowing rate. For borrowers,

$$ y = \frac {E (r _ {P}) - r _ {f} ^ {B}}{A \sigma_ {P} ^ {2}}
$$

Suppose, for example, an investor has  $A = 1.1$ . If  $r_f = r_f^B = 2\%$ , this investor would have chosen to invest in the risky portfolio:

$$ y = \frac {. 0 8}{1 . 1 \times . 0 4 8 4} = 1. 5 0
$$ which means that the investor would have borrowed an amount equal to  $50\%$  of her own investment capital, placing all the proceeds in the risky portfolio. But at the higher borrowing rate,  $r_f^B = 4\%$ , the investor will choose to borrow less and put less in the risky asset. In this case,


$$ y = \frac {. 0 6}{1 . 1 \times . 0 4 8 4} = 1. 1 3
$$ and "only"  $13\%$  of her investment capital will be borrowed. Graphically, the line from  $r_f$  to the risky portfolio shows the CAL for lenders. The dashed part of the line originating at  $r_f$  would be relevant if the borrowing rate equaled the lending rate. When the borrowing rate exceeds the lending rate, the CAL is kinked at the point corresponding to the risky portfolio.


The following figure shows indifference curves of two investors. The steeper indifference curve portrays the more risk-averse investor, who chooses portfolio  $C_0$ , which involves lending. This investor's choice is unaffected by the borrowing rate. The more risk-tolerant investor is portrayed by the shallower-sloped indifference curves. If the lending rate equaled the borrowing rate, this investor would choose portfolio  $C_1$  on the dashed part of the CAL. When the borrowing rate is higher, this investor instead chooses portfolio  $C_2$  (in the borrowing range of the kinked CAL), which involves less borrowing than before. This investor is hurt by the increase in the borrowing rate.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/415e282f438bc8ca7ae616fbec6afd828a63e7f9fcd21601b9dbded7d241d721.jpg)

7. If all the investment parameters remain unchanged, the only reason for an investor to increase the allocation to T-bills and decrease the investment proportion in the risky asset is an increase in the degree of risk aversion. If you think that this is unlikely, then you have to reconsider your faith in your assumptions. Perhaps the U.S. equity market is not a good proxy for the optimal risky portfolio. Perhaps investors expect a higher real rate on T-bills.

# APPENDIX A: Risk Aversion, Expected Utility, and the St. Petersburg Paradox

We digress in this appendix to examine the rationale behind our contention that investors are risk averse. Recognition of risk aversion as central in investment decisions goes back at least to 1738. Daniel Bernoulli, one of a famous Swiss family of distinguished mathematicians, spent the years 1725 through 1733 in St. Petersburg, where he analyzed the following coin toss game. To enter the game, one pays an entry fee. Thereafter, a coin is tossed until the first head appears. The number of tails, denoted by  $n$ , that appears until the first head is tossed is used to compute the payoff, $R$, to the participant, as

$$
R (n) = 2 ^ {n}
$$

The probability of no tails before the first head ( $n = 0$ ) is  $1/2$  and the corresponding payoff is  \$2^0 = \$ 1. The probability of one tail and then heads ( $n = 1$ ) is  $1/2 \times 1/2$  with payoff  $2^1 = \2$ , the probability of two tails and then heads ( $n = 2$ ) is  $1/2 \times 1/2 \times 1/2$ , and so forth.

The following table illustrates the probabilities and payoffs for various outcomes:

<table><tr><td>Tails</td><td>Probability</td><td>Payoff = $R(n)</td><td>Probability × Payoff</td></tr><tr><td>0</td><td>1/2</td><td>$1</td><td>$1/2</td></tr><tr><td>1</td><td>1/4</td><td>$2</td><td>$1/2</td></tr><tr><td>2</td><td>1/8</td><td>$4</td><td>$1/2</td></tr><tr><td>3</td><td>1/16</td><td>$8</td><td>$1/2</td></tr><tr><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td></tr><tr><td>n</td><td>(1/2)n+1</td><td>\$2n</td><td>1/2</td></tr></table>

The expected payoff is therefore

$$
E (R) = \sum_ {n = 0} ^ {\infty} \Pr (n) R (n) = \frac {1}{2} + \frac {1}{2} + \dots = \infty
$$

The evaluation of this game is called the "St. Petersburg Paradox." Although the expected payoff is infinite, participants obviously will be willing to purchase tickets to play the game only at a finite, and possibly quite modest, entry fee.

Bernoulli resolved the paradox by noting that investors do not assign the same value per dollar to all payoffs. Specifically, the greater their wealth, the less their "appreciation" for each extra dollar. We can make this insight mathematically precise by assigning a welfare or utility value to any level of investor wealth. Our utility function should increase as wealth is higher, but each extra dollar of wealth should increase utility by progressively smaller amounts.[10] Modern economists would say that investors exhibit "decreasing marginal utility" from an additional payoff dollar.

Von Neumann and Morgenstern adapted this approach to investment theory in a complete axiomatic system in 1946. Avoiding unnecessary technical detail, we restrict ourselves here to an intuitive exposition of the rationale for risk aversion.

Imagine two individuals who are identical twins, except that one of them is less fortunate than the other. Peter has only  \$1,000 to his name, while Paul has a net worth of\$ 200,000. How many hours of work would each twin be willing to offer to earn one extra dollar? It is likely that Peter (the poor twin) has more essential uses for the extra money than does Paul. Therefore, Peter will offer more hours. In other words, Peter derives a greater personal welfare or assigns a greater "utility" value to the 1,001st dollar than Paul does to the 200,001st. Figure 6A.1 depicts graphically the relationship between wealth and the utility value of wealth that is consistent with this notion of decreasing marginal utility.


Individuals have different rates of decrease in their marginal utility of wealth. What is constant is the principle that the per-dollar increment to utility decreases with wealth. Functions that exhibit the property of decreasing per-unit value as the number of units grows are called concave.

One particular function that displays decreasing marginal utility is the function  \ln(R)  where  \ln(\cdot)  is the natural logarithm function and  $R  is the investor's payoff. If this function measures the utility value of wealth, the subjective utility value of the game is indeed finite, equal to .693.[11] The certain wealth level necessary to provide this utility value is 2.00 because \ln(2.00) = .693. Hence, the certainty equivalent value of the risky payoff is 2.00, which is the maximum amount a log-utility investor will pay to play Bernoulli's game. Of course, a log function will not fit all investors, but it is consistent with the risk aversion that we assume for all investors.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/0c86d5eb96f26a6c41f6decd2bd6d135d588f5bd36518711e88b3f8eb6456a84.jpg)
Figure 6A.1 Utility of wealth with a log utility function

If we substitute the "utility" value,  $\ln (R)$ , for the dollar payoff,  $R$ , to obtain an expected utility value of the game (rather than expected dollar value), we have, calling  $V(R)$  the expected utility,

$$
V (R) = \sum_ {n = 0} ^ {\infty} \Pr (n) \ln [ R (n) ] = \sum_ {n = 0} ^ {\infty} (1 / 2) ^ {n + 1} \ln (2 ^ {n}) = . 6 9 3
$$

Now consider the following simple prospect:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/cfbd2ca44cc340ddcc95b6de176b1b84b52a06ef42e52f7ce0ed7e190cb8a63b.jpg)

This is a fair game in that the expected profit is zero. Suppose, however, that the curve in Figure 6A.1 represents the investor's utility value of wealth, assuming a log utility function. Figure 6A.2 shows this curve with numerical values marked.

Figure 6A.2 shows that the loss in utility from losing  \$50,000 exceeds the gain from winning\$ 50,000. Consider the gain first. With probability  $p = .5$ , wealth goes from  $100,000 to$ 150,000. Using the log utility function, utility goes from  $\ln(100,000) = 11.51$  to  $\ln(150,000) = 11.92$ , the distance  $G$  on the graph. This gain is  $G = 11.92 - 11.51 = .41$ .

Now consider the possibility of coming up on the short end of the prospect. In that case, wealth goes from  $100,000 to$ 50,000. The loss in utility, the distance  $L$  on the graph, is  $L = \ln(100,000) - \ln(50,000) = 11.51 - 10.82 = .69$ . Thus, the loss in utility if you lose the game exceeds the utility gain if you win. This is why a risk-averse investor will prefer not to play this "fair" but risky game.

We compute the expected utility from the risky prospect:

$$
\begin{array}{l} E [ U (W) ] = p U \left(W _ {1}\right) + (1 - p) U \left(W _ {2}\right) \\ = 1 / 2 \ln (5 0, 0 0 0) + 1 / 2 \ln (1 5 0, 0 0 0) = 1 1. 3 7 \\ \end{array}
$$

If the prospect is rejected, the utility value of the (sure)  $100,000 is \ln(100,000) = 11.51$ , greater than that of the fair game (11.37). Again, we see that a risk-averse investor will reject the fair game.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/0272ea9ddae7b8ea10e411e217556d8fd57da82fe12f63a610df8eddc704b076.jpg)
Figure 6A.2 Fair games and expected utility

Using a specific utility function (such as the log utility function) allows us to compute the certainty equivalent value of the risky prospect to a given investor. This is the amount that, if received with certainty, the investor would consider equally attractive as the risky prospect.

If log utility describes the investor's preferences toward wealth outcomes, then Figure 6A.2 can also tell us what is, for the investor, the dollar value of the prospect. We ask, "What sure level of wealth has a utility value of 11.37 (which equals the expected utility from the prospect)?" A horizontal line drawn at the level 11.37 intersects the utility curve at the level of wealth  $W_{\mathrm{CE}}$ . This means that

$$
\ln \left(W _ {\mathrm {C E}}\right) = 1 1. 3 7
$$ which implies that


$$
W _ {\mathrm {C E}} = e ^ {1 1. 3 7} = \$ 8 6, 6 8 1. 8 7
$$

$W_{\mathrm{CE}}$  is therefore the certainty equivalent of the prospect. The distance  $Y$  in Figure 6A.2 is the penalty, or the downward adjustment, to the expected profit that is attributable to the risk of the prospect.

$$
Y = E (W) - W _ {\mathrm {C E}} = \\mathbb {1} 0 0, 0 0 0 - \mathbb {1} 8 6, 6 8 1. 8 7 = \mathbb {1} 3, 3 1 8. 1 3
$$

This investor views \$86,681.87 for certain as being equal in utility value as \$100,000 at risk. Therefore, the investor would be indifferent between the two.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/4c488265f664cf44fc7661961bba88decd7c556f4cb4a7373f25779d2928ba61.jpg)

# Concept Check 6A.1

Suppose the utility function is  $U(W) = \sqrt{W}$ .

a. What is the utility level at wealth levels  \$50,000 and\$ 150,000?
b. What is expected utility if  $p$  still equals .5?
c. What is the certainty equivalent of the risky prospect?
d. Does this utility function also display risk aversion?
e. Does this utility function display more or less risk aversion than the log utility function?

# PROBLEMS: APPENDIX A

1. Suppose that your wealth is $250,000. You buy a $200,000 house and invest the remainder in a risk-free asset paying an annual interest rate of 6\%. There is a probability of .001 that your house will burn to the ground and its value will be reduced to zero. With a log utility of end-of-year wealth, how much would you be willing to pay for insurance (at the beginning of the year)? (Assume that if the house does not burn down, its end-of-year value still will be 200,000.)
2. If the cost of insuring your house is $1 per $1,000 of value (actuarially consistent with the .001 probability of a fire), what will be the certainty equivalent of your end-of-year wealth if you insure your house at: a.  $1 / 2$  its value.

b. Its full value.
c.  $1\frac{1}{2}$  times its value.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/86f295849b5fb9634f507c276ca2c3d5020206a5774714f6241b020ae2adc8d6.jpg)

# SOLUTIONS TO CONCEPT CHECK

A.1. a.  $U(W) = \sqrt{W}$

$$
U (5 0, 0 0 0) = \sqrt {5 0 , 0 0 0} = 2 2 3. 6 1
$$

$$
U (1 5 0, 0 0 0) = 3 8 7. 3 0
$$

$$ b. E (U) = (. 5 \times 2 2 3. 6 1) + (. 5 \times 3 8 7. 3 0) = 3 0 5. 4 5
$$

$c$ . We must find  $W_{\mathrm{CE}}$  that has utility level 305.45. Therefore,

$$
\sqrt {W _ {\mathrm {C E}}} = 3 0 5. 4 5
$$

$$
W _ {\mathrm {C E}} = 3 0 5. 4 5 ^ {2} = \$ 9 3, 3 0 1
$$ d. Yes. The certainty equivalent of the risky venture is less than the expected outcome of 100,000.

e. The certainty equivalent of the risky venture to this investor is greater than it was for the log utility investor considered in the text. Hence, this utility function displays less risk aversion.

