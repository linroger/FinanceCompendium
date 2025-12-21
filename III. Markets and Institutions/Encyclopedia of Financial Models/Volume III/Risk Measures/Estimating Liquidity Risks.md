
---
title: Estimating Liquidity Risks
parent_directory: Risk Measures
formatted: 2025-12-21 07:15:35 PM
formatter_model: claude-sonnet-4
cli_tool: opencode
primary_tags:
  - liquidity risk measurement
  - value at risk
  - liquidity adjusted var
  - liquidity at risk
  - market liquidity
secondary_tags:
  - bid ask spread
  - market impact
  - cash flow risk
  - crisis liquidity
  - exogenous liquidity
  - endogenous liquidity
  - liquidity discount
cssclasses: academia
---

# Estimating Liquidity Risks

KEVIN DOWD, PhD

Partner, Cobden Partners, London

Abstract: The measurement of liquidity risk risks is an underdeveloped area of market risk measurement and management. Liquidity issues affect the estimation of conventional market risk measures, but the measurement of liquidity risks is an important subject in its own right. Liquidity issues also figure prominently in periods of market crisis. There are various easily implementable and often complementary approaches to the estimation of liquidity-adjusted Value-at-Risk: These involve modeling the bid-ask spread or the liquidity discount incurred when liquidating a position. There are also approaches to the modelling of Liquidity-at-Risk, which deals with the riskiness of cash flows, in both noncrisis and crisis situations.

Market practitioners often assume that markets are liquid—that is, that we can liquidate or unwind positions at going market prices, usually taken to be the mean of bid and ask prices, without too much difficulty or cost. This assumption is very convenient and provides a justification for the practice of marking positions to market prices. However, it is often empirically questionable and the failure to allow for it can seriously undermine market risk measurement. In any case, liquidity risk is a major risk factor in its own right, and we will often want to measure it too.

This entry looks at liquidity issues and how they affect the estimation of market and liquidity risk measures. Liquidity issues affect market risk measurement through their impact on standard measures of market risk. In addition, because effective market risk management involves an ability to estimate and manage liquidity risk itself, we also need to be able to estimate liquidity risk—or liquidity-at-risk. Finally, since liquidity problems are particularly prominent in market crises, we also need to address how to estimate crisis-related market risks and liquidity risks. Accordingly, the main themes of this entry are:


- The nature of market liquidity and illiquidity, and their associated costs and risks.
- The estimation of value-at-risk (VaR) in illiquid or partially liquid markets—liquidity-adjusted VaR (or LVaR).
- Estimating liquidity-at-risk (LaR).
- Estimating crisis-related liquidity risks.

For convenience, and to be faithful to the literature, we focus on the (discredited, but computationally convenient) VaR risk measure, but we should note that any of the approaches suggested here can be adapted to estimate superior risk measures such as coherent risk measures (see, e.g., Artzner et al., 1999) or any other quantile-based risk measures. For example, estimates of these alternative risk measures can be obtained using the "average tail VaR" approach set out in Dowd (2005, Chapter 3): This is based on the idea that, since the VaR is a quantile, any of these other quantile-based risk measurements can be estimated as a weighted average of VaRs predicated on a suitable range of confidence levels.


# Liquidity and Liquidity Risks

The notion of liquidity refers to the ability of a trader to execute a trade or liquidate a position with little or no cost, risk, or inconvenience. Liquidity is a function of the market, and depends on such factors as the number of traders in the market, the frequency and size of trades, the time it takes to carry out a trade, and the cost (and sometimes risk) of transacting. It also depends on the commodity or instrument traded, and more standardized instruments (e.g., such as FX or equities) tend to have more liquid markets than nonstandardized or tailor-made instruments (e.g., such as over-the-counter [OTC] derivatives). Markets vary greatly in their liquidity: Markets such as the FX market and the big stock markets are (generally) highly liquid; but other markets are less so, particularly those for many OTC instruments and instruments that are usually held to maturity and, hence, are rarely traded once initially bought. However, even the "big" standardized markets are not perfectly liquid—their liquidity fluctuates over time and can fall dramatically in a crisis—so we cannot take their liquidity for granted.

Imperfect liquidity also implies that there is no such thing as the going market price. Instead, there are two going market prices—an ask price, which is the price at which a trader sells, and a (lower) bid price, which is the price at which a trader buys. The "market" price often quoted is just an average of the bid and ask prices, and this price is fictional because no one actually trades at this price. The difference between the bid and ask prices is a cost of liquidity, and in principle we should allow for this cost in estimating market risk measures.

The bid-ask spread also has an associated risk, because the spread itself is a random variable. This means there is some risk associated with the price we can obtain, even if the fictional mid-spread price is given. Other things being equal, if the spread rises, the costs of closing out our position will rise, so the risk that the spread will rise should be factored into our risk measures along with the usual market price risk.

We should also take account of a further distinction. If our position is small relative to the size of the market (e.g., because we are a very small player in a very large market), then our trading should have a negligible impact on the market price. In such circumstances we can regard the bid-ask spread as exogenous to us, and we can assume that the spread is determined by the market beyond our control. However, if our position is large relative to the market, our activities will have a noticeable effect on the market itself and can affect both the market price and the bid-ask spread. For example, if we suddenly unload a large position, we should expect the market price to fall and the bid-ask spread to widen. This is partly because there is a limited market, and prices must move to induce other traders to buy. A second reason is a little more subtle: Large trades often reveal information, and the perception that they do will cause other traders to revise their views. Consequently, a large sale may encourage other traders to revise downward their assessment of the prospects for the instrument concerned, and this will further depress the price. In these circumstances the market price and the bid-ask spread are to some extent endogenous (i.e., responsive to our trading activities) and we should take account of how the market might react to us when estimating liquidity costs and risks. Other things again being equal, the bigger our trade, the bigger the impact we should expect it to have on market prices.

In sum, we are concerned with both liquidity costs and liquidity risks, and we need to take account of the difference between exogenous and endogenous liquidity. We now consider some of the approaches available to adjust our estimates of VaR to take account of these factors.


# Estimating Liquidity-Adjusted VaR

There are many ways we could estimate liquidity-adjusted VaR. These vary in their degrees of sophistication and in their ease (or otherwise) of implementation, and there is no single "best" method. However, sophisticated approaches are not necessarily more useful than more basic ones, and the best method, even if we could establish what it is, is not necessarily better than a collection of inferior ones. Instead, what we really seek are simple-to-implement (i.e., spreadsheet-executable) approaches that are transparent in terms of their underlying assumptions; in effect, we are looking for liquidity "add-ons" that allow us to modify original VaR estimates that were obtained without any consideration for liquidity. We can then easily assess the impact of our assumptions on our estimates of VaR. Moreover, there is a premium on compatibility, because different methods look at different aspects of illiquidity, and it can be helpful to combine them to get some sense of an overall liquidity adjustment. Because of this, a really good method might not always be as useful as two inferior methods that actually work well together.

Whichever models we used, we also need to check their sensitivities—how does the liquidity adjustment change as we change the confidence level, holding period, or any other parameters? A priori, we should have some idea of what these should be (e.g., that the liquidity adjustment should fall as the holding period rises, etc.), and we need to satisfy ourselves that the models we use have sensitivities of the right sign and approximate magnitude. Going further, we should also try to ensure that models are calibrated against real data (e.g., bid-ask spread parameters should be empirically plausible, etc.) and be properly stress-tested and back-tested. In addition, we should keep in mind that different approaches are often suited to different problems, and we should not seek a best approach to the exclusion of any others. In the final analysis, liquidity issues are much more subtle than they look, and there is no established consensus on how we should deal with them. So perhaps the best advice is for risk measurers to hedge their bets, and use different approaches to highlight different liquidity concerns.


# The Constant Spread Approach

Ideally, if we had actual transaction prices, we could infer the actual returns obtained by traders, in which case conventional VaR methods would take account of spread liquidity factors without the need for any further adjustment. In such cases, we would model actual returns (taking account of how they depend on market volume, etc.), infer a relevant conditional distribution (e.g., a  $t$ ), and plug in the values of the parameters concerned into an appropriate parametric VaR equation. For more on how this might be done, see Giot and Grammig (2003).

However, practitioners often lack such data and have to work with market prices that are averages of bid and ask prices. They might then attempt to take account of liquidity factors by working with the bid-ask spread, and the simplest way to incorporate liquidity risk into a VaR calculation is in terms of a spread that is assumed to be constant. If we make this assumption, the liquidity cost is then equal to half the spread times the size of the position liquidated. Using obvious notation, this means that we add the following liquidity cost (LC) to a "standard" VaR:

$$
LC = \frac{1}{2} spread^{*} P \tag{1}
$$ where spread is expressed as actual spread divided by the midpoint. For the sake of comparison and using obvious notation, let us compare


this to a benchmark conventional lognormal VaR with no adjustment for liquidity risk:

$$
VaR = P \left[ 1 - \exp \left(\mu_{R} - \sigma_{R} z_{\alpha}\right) \right] \tag{2}
$$ where the returns have been calculated using prices that are the midpoints of the bid-ask spread. The liquidity-adjusted VaR,  $LVaR$ , is then given by:


$$
\begin{array}{l} LVaR = VaR + LC = P [ 1 - \exp (\mu_{R} - \sigma_{R} z_{\alpha}) \\ + \frac{1}{2} spread ] \tag{3} \\ \end{array}
$$

Setting  $\mu_{R} = 0$  to clarify matters, the ratio of  $LVaR$  to  $VaR$  is then

$$
\frac{LVaR}{VaR} = 1 + \frac{\text{spread}}{2 \left[ 1 - \exp \left(- \sigma_{R} z_{\alpha}\right) \right]} \tag{4}
$$

It is easy to show that the liquidity adjustment (a) rises in proportion with the assumed spread, (b) falls as the confidence level increases, and (c) falls as the holding periods each increase. The first and third of these are obviously correct, but the second implication is one that may or may not be compatible with one's prior expectations.

This approach is easy to implement and requires only minimal information, but the assumption of a constant spread is highly implausible, and it takes no account of any other liquidity factors.

# The Exogenous Spread Approach

A superior alternative is to assume that traders face random spreads. If our position is sufficiently small relative to the market, we can also regard our spread risk as exogenous to us (i.e., independent of our own trading), for any given holding period. We could assume any process for the spread that we believe to be empirically plausible. For example, we might believe that the spread is normally distributed:

$$ spread \sim N \left(\mu_{spread}, \sigma_{spread}^{2}\right) \tag{5}
$$ where  $\mu_{\text{spread}}$  is the mean spread and  $\sigma_{\text{spread}}$  is the spread volatility. Alternatively, we might use some heavy-tailed distribution to accommodate excess kurtosis in the spread.


We could now estimate the LVaR using Monte Carlo simulation: We could simulate both  $P$  and the spread, incorporate the spread into  $P$  to get liquidity-adjusted prices, and then infer the liquidity-adjusted VaR from the distribution of simulated liquidity-adjusted prices.

However, in practice, we might take a shortcut suggested by Bangia et al. (1999). They suggest that we specify the liquidity cost (LC) as:

$$
LC = \frac{P}{2} \left(\mu_{\text{spread}} + k \sigma_{\text{spread}}\right) \tag{6}
$$ where  $k$  is some parameter whose value is to be determined. The value of  $k$  could be determined by a suitably calibrated Monte Carlo exercise, but they suggest that a particular value  $(k = 3)$  is plausible (e.g., because it reflects the empirical facts that spreads appear to have excess kurtosis and are negatively correlated with returns, etc.). The liquidity-adjusted VaR, LVaR, is then equal to the conventional VaR plus the liquidity adjustment (6):


$$
\begin{array}{l} LVaR = VaR + LC = P \left[ 1 - \exp \left(\mu_{R} - \sigma_{R} z_{\alpha}\right) \right. \\ + \frac{P}{2} \left(\mu_{\text{spread}} + 3 \sigma_{\text{spread}} \right] \tag{7} \\ \end{array}
$$

Observe that this LVaR incorporates (3) as a special case when  $\sigma_{\text{spread}} = 0$ . It therefore retains many of the properties of (3), but generalizes from (3) in allowing for the spread volatility as well. The ratio of LVaR to VaR is then:

$$
 \frac{LVaR}{VaR} = 1 + \frac{LC}{VaR} = 1 + \frac{1}{2} \frac{\left(\mu_{spread} + 3 \sigma_{spread}\right)}{\left[ 1 - \exp \left(- \sigma_{r} z_{\alpha}\right) \right]} \tag{8}
$$

This immediately tells us that the spread volatility  $\sigma_{\text{spread}}$  serves to increase the liquidity adjustment relative to the earlier case. The Bangia et al. framework was also further developed by Erwan (2002), who presented empirical results that are similar to the illustrative ones presented here in suggesting that the liquidity adjustment can make a big difference to our VaR estimates.

# Endogenous-Price Approaches

The previous approaches assume that prices are exogenous and therefore ignore the possibility of the market price responding to our trading. However, we have also noted that this is often unreasonable, and we may wish to make a liquidity adjustment that reflects the response of the market to our own trading. If we sell, and the act of selling reduces the price, then this market-price response creates an additional loss relative to the case where the market price is exogenous, and we need to add this extra loss to our VaR. The liquidity-adjustment will also depend on the responsiveness of market prices to our trade: The more responsive the market price, the bigger the loss.

We can estimate this extra loss in various ways, but the simplest is to make use of some elementary economic theory. We begin with the notion of the price elasticity of demand,  $\eta$ , defined as the ratio of the proportional change in price divided by the proportional change in quantity demanded:

$$
\eta = \frac{\Delta P / P}{\Delta N / N} <   0; \quad \Delta N / N > 0 \tag {9}
$$ where in this context  $N$  is the size of the market and  $\Delta N$  is the size of our trade.  $\Delta N / N$  is therefore the size of our trade relative to the size of the market. The impact of the trade on the price is therefore


$$
\frac{\Delta P}{P} = \eta \frac{\Delta N}{N} \tag {10}
$$

We can therefore estimate  $\Delta P / P$  on the basis of information about  $\eta$  and  $\Delta N / N$ , and both of these can be readily guessed at using a combination of economic and market judgement. The LVaR is then:

$$
LVaR = \operatorname{VaR} \left(1 - \frac{\Delta P}{P}\right) = \operatorname{VaR} \left(1 - \eta \frac{\Delta N}{N}\right) \tag{11}
$$ bearing in mind that the change in price is negative. The ratio of LVaR to VaR is therefore:


$$
\frac{LVaR}{VaR} = 1 - \eta \frac{\Delta N}{N} \tag{12}
$$

This gives us a very simple liquidity adjustment that depends on only two easily calibrated parameters. It is even independent of the VaR itself: The adjustment is the same regardless of whether the VaR is normal, lognormal, etc.

The ratio of  $LVaR$  to  $VaR$  thus depends entirely on the elasticity of demand  $\eta$  and the size of our trade relative to the size of the market  $(\Delta N / N)$ .

This type of approach is easy to implement, and it is of considerable use in situations where we are concerned about the impact on VaR of endogenous market responses to our trading activity, as might be the case where we have large portfolios in thin markets. However, it is also narrow in focus and entirely ignores bidask spreads and transactions costs.

On the other hand, the fact that this approach focuses only on endogenous liquidity and the earlier ones focus on exogenous liquidity means that this last approach can easily be combined with one of the others; in effect, we can add one adjustment to the other. Thus, two very simple approaches can be added to produce an adjustment that addresses both exogenous and endogenous liquidity risk. This combined adjustment is given by

$$
\left. \frac{LVaR}{VaR} \right|_{\text{combined}} = \left. \frac{LVaR}{VaR} \right|_{\text{exogenous}} + \left. \frac{LVaR}{VaR} \right|_{\text{endogenous}} \tag{13}
$$

# The Liquidity Discount Approach

A more sophisticated approach is suggested by Jarrow and Subramanian (1997). They consider a trader who faces an optimal liquidation problem—the trader must liquidate his or her position within a certain period of time to maximize expected utility, and seeks the best way to do so. Their approach is impressive, as it encompasses exogenous and endogenous market liquidity, spread cost, spread risk, an endogenous holding period, and an optimal liquidation policy.

Their analysis suggests that we should modify the traditional VaR in three ways. First, instead of using some arbitrary holding period, we should use an optimal holding period determined by the solution to the trader's expected utility optimization problem, which takes into account liquidity considerations and the possible impact of the trader's own trading strategy on the prices obtained. We should also add the average liquidity discount to the trader's losses (or subtract it from our prices) to take account of the expected loss from the selling process. Finally, their analysis also suggests that the volatility term should take account of the volatility of the time to liquidation and the volatility of the liquidity discount factor, as well as the volatility of the underlying market price.


To spell out their approach more formally, assume that prices between trades follow a geometric Brownian motion with parameters  $\mu$  and  $\sigma$ . The current time is 0 and the price at time  $t$  is  $p(t)$ , so that geometric returns  $\log(p(t) / p(0))$  are normally distributed. However, the prices actually obtained from trading are discounted from  $p(t)$ ; more specifically, the prices obtained are  $p(t)c(s)$ , where  $c(s)$  is a random quantity-dependent proportional discount factor,  $s$  is the amount traded,  $0 \leq c(s) \leq 1$  and, other things being equal,  $c(s)$  falls as  $s$  rises. Any order placed at time  $t$  will be also subject to a random execution lag  $\Delta(s)$ , and therefore take place at time  $t + \Delta(s)$ . Other things again being equal, the execution lag  $\Delta(s)$  rises with  $s$ : Bigger orders usually take longer to carry out. Our trader has  $S$  shares and wishes to maximize the present value of his or her current position, assuming that it is liquidated by the end of some horizon  $t$ , taking account of all relevant factors, including both the quantity discount  $c(s)$  and the execution lag  $\Delta(s)$ . After solving for this problem, they produce the following expression for the liquidity-adjusted VaR:

$$
\begin{array}{l} LVaR = P \left\{E [ \ln (p (\Delta (S)) c (S) / p (0) ] \right. \\ + \operatorname{std} \left[ \ln (p (\Delta (S)) c (S) / p (0) ] z_{\alpha} \right\} \tag{14} \\ = P \left\{\left(\mu - \frac{\sigma^{2}}{2}\right) \mu_{\Delta (S)} + \mu_{\ln c (S)} \right. \\ \left. + \left[ \sigma \sqrt{\mu_{\Delta (S)}} + \left(\mu - \frac{\sigma^{2}}{2}\right) \sigma_{\Delta (S)} + \sigma_{\ln c (S)} \right] z_{\alpha} \right\} \\ \end{array}
$$ where all parameters have the obvious interpretations. This expression differs from the conventional VaR in three ways. First, the liquidation horizon  $t$  in the conventional VaR is replaced by the expected execution lag  $\mu_{\Delta(S)}$  in selling  $S$  shares. Clearly, the bigger is  $S$ , the longer the expected execution lag. Second, the LVaR takes account of the expected discount  $\mu_{\ln c(s)}$  on the shares to be sold. And, third, the volatility  $\sigma$  in the conventional VaR is supplemented by additional terms related to  $\sigma_{\Delta(s)}$  and  $\sigma_{\ln c(s)}$ , which reflect the volatilities of the execution time and the quantity discount. Note, too, that if our liquidity imperfections disappear, then  $\mu_{\Delta(S)} = t$ ,  $\sigma_{\Delta(S)} = 0$ , and  $c(S) = 1$  (which in turn implies  $\mu_{\ln c(s)} = \sigma_{\ln c(s)} = 0$ ) and our LVaR (14) collapses to a conventional VaR as a special case—which is exactly as it should be.


To use this LVaR expression requires estimates of the usual Brownian motion parameters  $\mu$  and  $\sigma$ , as well as estimates of the liquidity parameters  $\mu_{\Delta(S)}$ ,  $\sigma_{\Delta(S)}$ ,  $\mu_{\ln c(s)}$  and  $\sigma_{\ln c(s)}$ , all of which are fairly easily obtained. The approach is therefore not too difficult to implement. All we have to do is then plug these parameters into (14) to obtain our LVaR.

# ESTIMATING LIQUIDITY-AT-RISK (LAR)

We turn now to liquidity-at-risk (LaR), sometimes also known as cash flow-at-risk (CFaR). LaR (or CFaR) relates to the risk attached to prospective cash flows over a defined horizon period, and can be defined in terms analogous to the VaR. Thus, the LaR is the maximum likely cash outflow over the horizon period at a specified confidence level: for example, the 1-day LaR at the  $95\%$  confidence level is the maximum likely cash outflow over the next day, at the  $95\%$  confidence level, and so forth. A positive LaR means that the likely worst outcome, from a cash flow perspective, is an outflow of cash; and a negative LaR means that the likely worst outcome is an inflow of cash. The LaR is the cash flow equivalent to the VaR, but whereas

VaR deals with the risk of losses (or profits), LaR deals with the risk of cash outflows (or inflows).

These cash flow risks are quite different from the risks of liquidity-related losses. Nonetheless, they are closely related to these latter risks, and we might use LaR analysis as an input to evaluate them. Indeed, the use of LaR for such purposes is an important liquidity management tool.

An important point to appreciate about LaR is that the amounts involved can be very different from the amounts involved with VaR. Suppose for the sake of illustration that we have a large market-risk position that we hedge with a futures hedge of much the same amount. If the hedge is a good one, the basis or net risk remaining should be fairly small, and our VaR estimates should reflect that low basis risk and be relatively small themselves. However, the futures hedge leaves us exposed to the possibility of margin calls, and our exposure to margin calls will be related to the size of the futures position, which corresponds to the gross size of our original position. Thus, the VaR depends largely on the netted or hedged position, whilst the LaR depends on the larger gross position. If the hedge is a good one, the basis risk (or the VaR) will be low relative to the gross risk of the hedge position (or the LaR), and so the LaR can easily be an order of magnitude greater than the VaR. On the other hand, there are also many market risk positions that have positive VaR, but little or no cash flow risk (e.g., a portfolio of long European option positions, which generates no cash flows until the position is sold or the options expire), and in such cases the VaR will dwarf the LaR. So the LaR can be much greater than the VaR or much less than it, depending on the circumstances.

As we might expect, the LaR is potentially sensitive to any factors or activities, risky or otherwise, that might affect future cash flows. These include:

- Borrowing or lending, the impact of which on future cash flows is obvious.

- Margin requirements on market risk positions that are subject to daily marking-to-market.
- Collateral obligations, such as those on swaps, which can generate inflows or outflows of cash depending on the way the market moves. Collateral obligations can also change when counterparties like brokers alter them in response to changes in volatility, and collateral requirements on credit-sensitive positions (e.g., such as default-risky debt or credit derivatives) can change in response to credit events such as credit-downgrades.
- Unexpected cash flows can be triggered by the exercise of options, including the exercise of convertibility features on convertible debt and call features on callable debt.
- Changes in risk management policy; for instance, a switch from a futures hedge to an options hedge can have a major impact on cash flow risks, because the futures position is subject to margin requirements and marking to market whilst a (long) option position is not.

Two other points are also worth emphasizing here. The first is that obligations to make cash payments often come at bad times for the firms concerned, because they are often triggered by bad events. The standard example is where a firm suffers a credit downgrade that leads to an increase in its funding costs, and yet this same event also triggers a higher collateral requirement on some existing (e.g., swap) position and so generates an obligation to make a cash payment. It is axiomatic in many markets that firms get hit when they are most vulnerable. The second point is that positions that might be similar from a market risk perspective (e.g., such as a futures hedge and an options hedge) might have very different cash flow risks. The difference in cash flow risks arises, not so much because of differences in market risk characteristics, but because the positions have different credit risk characteristics, and it is the measures taken to manage the credit risk—the margin and collateral requirements, and so on—that generate the differences in cash flow risks.


We can estimate LaR using many of the same methods used to estimate VaR and other measures of market risk. One approach, suggested by Singer (1997), is to use our existing VaR estimation tools to estimate the VaRs of marginable securities only (i.e., those where P/L translates directly into cash flows), thus allowing us to infer an LaR directly from the VaR. We could then combine this LaR estimate with comparable figures from other sources of liquidity risk within the organization (e.g., such as estimates of LaR arising from the corporate treasury) to produce an integrated measure of firm-wide liquidity risk. The beauty of this strategy is that it makes the best of the risk measurement capabilities that already exist within the firm, and effectively weaks them to estimate liquidity risks.

However, this approach is also fairly rough and ready, and cannot be relied upon when the firm faces particularly complex liquidity risks. In such circumstances, it is often better to build a liquidity-risk measurement model from scratch, and we can start by setting out the basic types of cash flow to be considered. These might include:

- Known certain (or near certain) cash flows (e.g., income from government bonds, etc.). These are very easy to handle because we know them in advance.
- Unconditional uncertain cash flows (e.g., income from default-risky bonds, etc.). These are uncertain cash flows, which we model in terms of the probability density functions (pdfs) (i.e., we choose appropriate distributions, assign parameter values, etc.).
- Conditional uncertain cash flows. These are uncertain cash flows that depend on other variables (e.g., a cash flow might depend on whether we proceeded with a certain investment, and so we would model the cash flow in terms of a pdf, conditional on that investment); other conditioning variables that might trigger cash flows could be interest rates, exchange rates, decisions about major projects, and so forth.


Once we specify these factors, we can then construct an appropriate engine to carry out our estimations. The choice of engine would depend on the types of cash flow risks we have to deal with. For instance, if we had fairly uncomplicated cash flows we might use an historical simulation or variance-covariance approach, or some specially designed term-structure model; however, since some cash flows are likely to be dependent on other factors such as discrete random variables (e.g., such as downgrades or defaults), it might not be easy tweaking such methods to estimate LaRs with sufficient accuracy. In such circumstances, it might be better to resort to simulation methods, which are much better suited to handling discrete variables and the potential complexities of cash flows in larger firms.

Another alternative is to use scenario analysis. We can specify liquidity scenarios, such as those arising from large changes in interest rates, default by counterparties, the redemption of putable debt, calls for collateral on repos and derivatives, margin calls on swaps or futures positions, and so forth. We would then (as best we could) work through the likely/possible ramifications of each scenario, and so get an idea of the liquidity consequences associated with each scenario. Such exercises can be very useful, but, as with all scenario analyses, they might give us an indication of what could happen if the scenario occurs, but don't as such tell us anything about the probabilities associated with those scenarios or the LaR itself.

# Estimating Liquidity in Crises

We now consider liquidity in crisis situations. As we all know, financial markets occasionally experience major crises—these include, for example, the stock market crash of 1987, the ERM crisis of 1992, the Russian default crisis of the summer of 1998, and, of course, the many liquidity problems experienced since the onset of the financial crisis in August 2007. Typically, some event occurs that leads to a large price fall. This event triggers a huge number of sell orders, traders become reluctant to buy, and the bid-ask spread rises dramatically. At the same time, the flood of sell orders can overwhelm the market and drastically slow down the time it takes to get orders executed. Selling orders that would take minutes to execute in normal times instead take hours, and the prices eventually obtained are often much lower than sellers had anticipated. Market liquidity dries up, and does so at the very time market operators need it most. Assumptions about the market—and in particular, about market liquidity—that hold in "normal" market conditions can thus break down when markets experience crises. This means that estimating crisis liquidity is more than just a process of extrapolation from LaR under more normal market conditions: We need to estimate crisis-liquidity risks using methods that take into account the distinctive features of a crisis—large losses, high bid-ask spreads, and so forth.


One way to way to carry out such an exercise is by applying "crashmetrics" (Wilmott, 2000, Chapter 58). To give a simple example, we might have a position in a single derivatives instrument, and the profit/loss  $\Pi$  on this instrument is given by a delta-gamma approximation:

$$
\Pi = \delta \Delta S + \frac{\gamma}{2} (\Delta S)^{2} \tag {15}
$$ where  $\Delta S$  is the change in the stock price, and so forth. The maximum loss occurs when  $dS = -\delta /\gamma$  and is equal to:


$$
L^{\max } = - \Pi^{\min } = \frac{\delta^{2}}{2 \gamma} \tag {16}
$$

The worst-case cash outflow is therefore  $m\delta^2 /(2\gamma)$  , where  $m$  is the margin or collateral requirement. This approach can also be extended to handle the other Greek parameters (the vegas, thetas,rhos,etc.),multi option portfolios, counterparty risk, and so forth. The basic idea—of identifying worst-case outcomes and then evaluating their liquidity consequences—can also be implemented in other ways as well. For example, we might identify the worst-case outcome as the expected outcome at a chosen confidence level, and we could estimate this (e.g., using extreme-value methods) as the ES at that confidence level. The cash outflow would then be  $m$  times this ES.


There are also other ways we can estimate crisis-LaR. Instead of focusing only on the high losses associated with crises, we can also take account of the high-bid ask spreads and/or the high bid-ask spread risks associated with crises. We can do so, for example, by estimating these spreads (or spread risks), and inputting these estimates into the relevant liquidity-adjusted VaR models discussed earlier.

However, these suggestions (i.e., Greek- and ES-based) are still rather simplistic, and with complicated risk factors—such as often arise with credit-related risks—we might want a more sophisticated model that was able to take account of the complications involved, such as:

- The discreteness of credit events.
- The interdependency of credit events.
- The interaction of credit and market risk factors (e.g., the ways in which credit events depend, in part, on market risk factors).
- Complications arising from the use of credit-enhancement methods such as netting arrangements, periodic settlement, credit derivatives, credit guarantees, and credit triggers (see, e.g., Wakeman, 1998).

These complicating factors are best handled using simulation methods tailor-made for the problems concerned.

The obvious alternative to probabilistic approaches to the estimation of crisis-liquidity is to use crisis-scenario analyses. We would imagine a big liquidity event—a major market crash, the default of a major financial institution or government, the outbreak of a war, or whatever—and work through the ramifications for the liquidity of the institution concerned. One attraction of scenario analysis in this context is that we can work through scenarios in as much detail as we wish, and so take proper account of complicated interactions such as those mentioned in the last paragraph. This is harder to do using probabilistic approaches, which are by definition unable to focus on any specific scenarios. However, as with all scenario analyses, the results of these exercises are highly subjective, and the value of the results is critically dependent on the quality of the assumptions made.


# KEY POINTS

- Liquidity refers to the ability to execute a trade or liquidate a position with little or no cost or inconvenience.
- Liquidity is a function of the market and depends on the type of position traded and sometimes the size and trading strategy of an individual trader.
- Liquidity risks are those associated with the prospect of imperfect of imperfect market liquidity, and can relate to risk of loss or risk to cash flows.
- There are two main aspects to liquidity risk measurement: the measurement of liquidity-adjusted measures of market risk (e.g., liquidity-adjusted value-at-risk, LVaR) and the measurement of liquidity risks per se (e.g., liquidity-at-risk, LaR).
- There are a number of easily implementable and often complementary approaches to the estimation of liquidity-adjusted measures of market risk: the constant spread, exogenous spread, and endogenous price approaches, and the liquidity discount approach.

- These approaches can produce risk estimates that differ substantially from the risk estimates obtained if liquidity is ignored.
- There are a number of approaches to the estimation of liquidity risks in noncrisis situations. These include both LaR approaches and scenario analyses.
- The LaR can be much greater than the VaR or much less than the VaR, depending on the circumstances.
- Crisis-related liquidity risks can be estimated using "crashmetrics" or scenario analyses hypothesized on crisis events such as a dry-up in market liquidity.

# REFERENCES

Artzner, P., Delbaen, F., Eber, J.-M., and Heath, D. (1999). Coherent measures of risk. Mathematical Finance 9 (November): 203-228.
Bangia, A., Diebold, F., Schuermann, T., and Stroughair, J. (1999). Liquidity on the outside. Risk 12 (June): 68-73.
Dowd, K. (2005). Measuring Market Risk, 2nd ed. Chichester and New York: John Wiley.
Giot, P., and Grammig, J. (2003). How large is liquidity risk in an automated auction market? *Mimeo*. University of Namur and University of Tübingen.
Jarrow, R. A., and Subramanian, A. (1997). Mopping up liquidity. Risk 10 (December): 170-173.
Singer, R. (1997). To VaR, a sister. Risk 10 (August): 86-87.
Wakeman, L. (1998). Credit enhancement. Pp. 255-275 in C. Alexander (ed.), Risk Analysis and Management. Volume 1: Measuring and Modelling Financial Risk. Chichester and New York: John Wiley and Sons.
Wilmott, P. (2000). Paul Wilmott on Quantitative Finance. Volumes 1 and 2. Chichester and New York: John Wiley and Sons.
