---
title: "Corporate Applications"
parent_directory: Derivatives Market Complete Full/chapters manual
formatted: 2025-12-21 02:31:30 AM
formatter_model: claude-sonnet-4
cli_tool: claude-code
primary_tags:
   - corporate applications
   - compensation options
   - callable convertible bonds
   - debt equity options
   - binomial valuation
secondary_tags:
   - option pricing theory
   - capital structure
   - bankruptcy valuation
   - convertible bonds
   - warrants valuation
   - callable bonds
   - stock based compensation
   - employee stock options
   - option repricing
   - reload options
   - outperformance options
   - merger collars
   - risk neutral pricing
   - put warrants
   - SFAS 123R
cssclasses: academia
---

# Corporate Applications

In this chapter we look at some contexts in which firms issue derivatives, either explicitly or implicitly. First, Black and Scholes (1973) observed that common debt and equity can be viewed as options, with the firm's assets as the underlying asset. We show how this insight can be used to price debt subject to default, as well as the implications for determining how leverage affects the expected return on equity. We also examine warrants, convertible debt, and callable debt as examples of securities that explicitly contain options.

Second, many firms grant options as compensation to employees. These options typically cannot be exercised for some period of time and cannot be sold, so they raise interesting valuation issues. In addition, compensation options often have nonstandard features.

Third, merger deals in which firm A offers their own stock to buy firm B sometimes offer price protection to firm B shareholders. This protection can take the form of a collar. We examine one merger—Northrop Grumman-TRW—that used a collar for this purpose.

## I. EQUITY, DEBT, AND WARRANTS

Firms issue explicit derivatives, such as warrants. However, firms also issue implicit derivatives, such as ordinary debt and equity, which have values determined by the asset value of the firm. In this section we see how option theory helps us understand corporate finance. You will see that it is natural to think of stocks, bonds, and other instruments as options.

### Debt and Equity as Options

Consider a firm with the following very simple capital structure. The firm has non-dividend-paying equity outstanding, along with a single zero-coupon debt issue. Represent the time $t$ values of the assets of the firm, the debt, and the equity as $A_{t}$, $B_{t}$, and $E_{t}$. The debt matures at time $T$ and has maturity value $\overline{B}$.

We assume throughout this section that there are no taxes, bankruptcy costs, transaction costs, or other market imperfections.

The value of the debt and equity at time $T$ will depend upon the value of the firm's assets. Equity-holders are the legal owners of the firm; in order for them to have unambiguous possession of the firm's assets, they must pay the debt-holders $\overline{B}$ at time $T$. If $A_{T} > \overline{B}$, equity-holders will pay $\overline{B}$ to the bondholders since equity will then be worth the value of the assets less the payment to bondholders, or $A_{T} - \overline{B} > 0$. However, if $A_{T} < \overline{B}$, equity-holders would have to inject additional funds in order to pay off the debt. In this case equity-holders would declare bankruptcy, permitting the bondholders to take possession of the assets. Therefore, the value of the equity at time $T$, $E_{T}$, is

$$
E_{T} = \max(0, A_{T} - \bar{B}) \tag{1}
$$

This expression is the payoff to a call option with the assets of the firm as the underlying asset and  $\overline{B}$  as the strike price.

Because equity-holders control the firm, bondholders receive the smallest payment to which they are legally entitled. If the firm is bankrupt—i.e., if  $A_{T} < \overline{B}$ —the bondholders receive  $A_{T}$ . If the firm is solvent—i.e., if  $A_{T} \geq \overline{B}$ —the bondholders receive  $\overline{B}$ . Thus the value of the debt is

$$
B_{t} = \min(B_{t}, K_{t}^{\mathrm{call}})
$$

This expression can be written

$$
\begin{array}{l} B_{T} = A_{T} + \min(0, \bar{B} - A_{T}) \tag{3} \\ = A_{T} - \max(0, A_{T} - \bar{B}) \\ \end{array}
$$

Equation (3) says that the bondholders own the firm but have written a call option to the equity-holders. This way of expressing the debt value explains where the call option in equation (1) comes from. Summing equations (1) and (2) gives the total value of the firm—equity plus debt—as  $A_{T}$ .

A different way to write equation (2) is the following:

$$
\begin{array}{l} B_{T} = \bar{B} + \min(0, A_{T} - \bar{B}) \tag{4} \\ = \bar{B} - \max(0, \bar{B} - A_{T}) \\ \end{array}
$$

The interpretation of equation (4) is that the bondholders own risk-free debt with a payoff equal to  $\overline{B}$  but have written a put option on the assets with strike price  $\overline{B}$ .

Example 1. Suppose a firm has issued zero-coupon debt with a face value of $\overline{B} = \$6000$. The maturity value of the equity is given by equation (1) and the maturity value of the debt is given by equation (4). The two payoffs are graphed in Figure 1 as a function of corporate assets at maturity.

If we assume that the assets of the firm are lognormally distributed, then we can use the Black-Scholes model to value the payoffs to the firm's equity and debt, equations (1) and (4). For purposes of option pricing, the firm's assets are the underlying asset, the strike price is the promised payment on debt, $\overline{B}$, the volatility of the firm's assets, $\sigma$, is volatility, and the payout rate from the firm becomes the dividend yield. If the risk-free rate is $r$ and the debt matures at time $T$, we have

$$
C_{t} = \min(C_{t}, K_{t}^{\mathrm{call}}, \frac{n}{n + mq} A_{t})
$$

$$
C_{t} = e^{-rh}[p^* C_{t+h}^{+} + (1 - p^*) C_{t+h}^{-} ]
$$

Assuming that the debt is zero-coupon, we can compute the yield to maturity on debt,  $\rho$ . By definition of the yield to maturity, we have  $B_{t} = \overline{B} e^{-\rho (T - t)}$ ; hence, we can solve for  $\rho$  to obtain

$$
\rho = \frac {1}{T - t} \ln \left(\bar {B} / B _ {t}\right) \tag {7}
$$

Equity and debt are options, so they have the familiar characteristics of options. For example, if the value of the underlying assets increases by  $1, then from equation (5) the value of the equity will increase by the call delta, \Delta_E$ , and from equation (6), the value of the debt will increase by  $1 - \Delta_E$ . If the volatility of assets goes up by one percentage point, the value of equity will increase by the call vega and the value of the debt will decrease by vega, and so forth.

This model of the firm is very simple, in that we have not incorporated coupons or dividends, refinancings or subsequent debt issues, etc. It is possible to create more complicated models of a firm's capital structure; nevertheless, this model provides a starting point for understanding how leverage affects returns on debt and equity and determines the yield on risky debt.

```d2
direction: right

assets: Assets Value (A_T) {
  shape: hexagon
  style.fill: "#e3f2fd"
}

equity: Equity Payoff {
  shape: rectangle
  style.fill: "#c8e6c9"
}

debt: Debt Payoff {
  shape: rectangle
  style.fill: "#ffcdd2"
}

assets -> equity: max(A_T - B, 0)
assets -> debt: min(A_T, B)

equity -> debt: Total = A_T
```

Viewing debt and equity as options also provides a framework for thinking about credit risk. Equation (4) shows that defaultable debt is equivalent to owning default-free debt and writing a put option on the assets of the firm. An investor owning a corporate bond could buy such a put; the result would be economically equivalent to owning a default-free bond. Thus, the value of the put is the value of insurance to protect bondholders against default. Such a put is called a "credit default swap."

Example 2. Suppose that $\overline{B} = \$100$, $A_0 = \$90$, $r = 6\%$, $\sigma = 25\%$, $\delta = 0$ (the firm makes no payouts), and $T = 5$ years. We have

$$
\begin{array}{l} E_{0} = \operatorname{BSCall}(90, 100, 0.25, 0.06, 5, 0) \\ = \$27.07 \\ \end{array}
$$

The value of the debt is

$$
\begin{array}{l} B_{0} = 90 - 27.07 \\ = \$62.93 \\ \end{array}
$$

The debt-to-value ratio of this firm is therefore $62.93/\$90 = 0.699$. The yield to maturity on debt is

$$
\begin{array}{l} \rho = \frac{1}{5} \ln(100/62.93) \\ = 0.0926 \\ \end{array}
$$

The debt yield of  $9.26\%$  is 326 basis points greater than the risk-free rate.

By put-call parity, the value of the debt can be written as the value of a \$100 risk-free bond less a put with a \$100 strike price:

$$
\begin{array}{l} B_{0} = 100e^{-0.06 \times 5} - \operatorname{BSPut}(90, 100, 0.25, 0.06, 5, 0) \\ = 74.08 - 11.15 = \$62.93 \\ \end{array}
$$

The cost of an insurance contract on the bond is the cost of the put, 11.15. Stated differently, buying a bond for 62.93 plus an insurance contract on the bond for 11.15 creates a risk-free position costing 74.08.

## Leverage and the Expected Return on Debt and Equity

Example 2 shows that, because of the possibility of bankruptcy, the yield to maturity on debt exceeds the risk-free rate. However, a bondholder earns the yield to maturity only if the firm does not go bankrupt. Accounting for the possibility of bankruptcy, the investor on average will earn a return less than the yield to maturity and greater than the risk-free rate. In effect, debt that can default bears some of the risk of the assets, sharing this risk with the equity-holders.

We can compute the expected return on both debt and equity using the concept of option elasticity. The elasticity of an option tells us the relationship between the expected return on the underlying asset and that on the option. Using the equation $\gamma - r = (\alpha - r) \times \Omega$, we can compute the expected return on equity as

$$ r_{E} = r + (r_{A} - r) \times \Omega_{E} \tag{8}
$$ where $r_A$ is the expected return on assets, $r$ is the risk-free rate, and $\Omega_E$ is the elasticity of the equity. Using equation (5), elasticity is

$$
\Omega_{E} = \frac{A_{t} \Delta_{E}}{E_{t}} \tag{9}
$$

\Omega_ {E} = \frac {A _ {t} \Delta_ {E}}{E _ {t}} \tag {9}

$$ where  $\Delta_E$  is the option delta.

We can compute the expected return on debt using the debt elasticity,  $\Omega_B$ :

$$ r_{B} = r + (r_{A} - r) \times \Omega_{B} \tag{10}
$$

The elasticity calculation is slightly more involved for debt than for equity. Since we compute debt value as $B_{t} = A_{t} - E_{t}$, the elasticity of debt is a weighted average of the asset and equity elasticities:

$$
\Omega_{B} = \frac{A_{t}}{A_{t} - E_{t}} \Omega_{A} - \frac{E_{t}}{A_{t} - E_{t}} \Omega_{E} \tag{11}
$$

The elasticity of any asset with respect to itself is 1, so we have  $\Omega_A = 1$ .

Using equations (8)-(11), you can verify that if you owned a proportional interest in the debt and equity of the firm, the expected return on your portfolio would be the expected return on the assets of the firm:

$$
\left(\% \text {Equity} \times r _ {E}\right) + \left(\% \text {Debt} \times r _ {B}\right) = r _ {A} \tag{12}
$$

It bears emphasizing that this relationship requires that  $r_B$  represent the expected return on debt, not the yield to maturity.

It is instructive to compare the expected return calculation for equity in equation (8) with a common alternative calculation. If we assume the debt is risk-free, the expected return on equity is

$$
\hat{r}_{E} = r + (r_{A} - r)\frac{1}{\%Equity} \tag{13}
$$

This is the familiar Modigliani-Miller expression for the expected return on levered equity. Equation (13) can be obtained from equation (8) by assuming that the delta of the equity is one, which implies that the delta of the debt is zero. Viewing debt and equity as options, by contrast, allows us take into the account the effects of possible bankruptcy. Equation (8) assumes that debtand equity-holders share the risk of the assets, so equation (13) will give a higher  $r_E$  than equation (8).

Example 3. Use the same assumptions as in Example 2, and suppose that the expected return on assets, $r_A$, is $10\%$. The equity delta is

$$
\operatorname{BSCall}(\$100, \$100, 0.2368, 0.018, 4, 0) = \$21.75
$$

The debt delta is $1 - 0.735 = 0.265$. Thus, if the asset value increases by \$1, the value of the equity increases by \$0.735 and the value of the debt increases by 0.265.

Using equation (9), the equity elasticity is

$$
\frac{90 \times 0.735}{27.07} = 2.443
$$

The expected return on equity is therefore

$$
\begin{array}{l} r_{E} = 0.06 + (0.1 - 0.06) \times 2.443 \\ = 0.1577 \\ \end{array}
$$

Using equation (11), the debt elasticity is

$$
\frac{90}{90 - 27.07} \times 1 - \frac{27.07}{90 - 27.07} \times 2.443 = 0.3793
$$

The expected return on debt is therefore

$$
\begin{array}{l} r_{B} = 0.06 + (0.1 - 0.06) \times 0.3793 \\ = 0.0752 \\ \end{array}
$$
\operatorname{BSCall}(\$100, \$100, 0.4, 0.06, 10, 0.01) = \$54.43
$$

The debt delta is  $1 - 0.735 = 0.265$ . Thus, if the asset value increases by \$1, the value of the equity increases by \$0.735 and the value of the debt increases by 0.265.

Using equation (9), the equity elasticity is

$$
\frac {9 0 \times 0 . 7 3 5}{2 7 . 0 7} = 2. 4 4 3
$$

The expected return on equity is therefore

$$
\hat{\sigma} = \sqrt{0.25^{2} + 0.16^{2} - 2 \times 0.4 \times 0.25 \times 0.16} = 0.2368
$$

Using equation (11), the debt elasticity is

$$
(1 - 0.05)^{3} [0.5 \times 3\text{ year option} + (1 - 0.05) \times 0.5 \times 4\text{ year option}] \tag{25}
$$

The expected return on debt is therefore

$$
\begin{array}{l} r_{B} = 0.06 + (0.1 - 0.06) \times 0.3793 \\ = 0.0752 \\ \end{array}
$$

Note that the $7.52\%$ expected return on debt is greater than the risk-free rate $(6\%)$ and less than the yield to maturity on debt $(9.26\%)$.

If we owned equity and debt in the same proportion in which they were issued by the firm, we would have a return of

$$
\frac{27.07}{90} \times 0.1577 + \frac{90 - 27.07}{90} \times 0.0752 = 0.1000
$$

Since  $10\%$  is the expected return on assets, this illustrates equation (12).

Finally, if we were to (erroneously) assume that debt is risk-free and use equation (13) to compute the expected return on equity, we would obtain

$$
\begin{array}{l} \hat{r}_{E} = 0.06 + \frac{1}{27.07/90} (0.1 - 0.06) \\ = 0.1929 \\ \end{array}
$$

This calculation gives an expected return on equity substantially greater than  $15.77\%$ .

This example computes expected returns for a particular leverage ratio. As the firm becomes more levered, equity-holders bear more asset risk per dollar of equity. If assets have a positive beta, the expected return on equity will increase with leverage. At the same time, debt also becomes riskier as leverage increases and there is increased chance of default on the debt.

Figure 2 graphs the debt-to-asset ratio (computed using equation 5) and the expected return on equity (computed using equation 8) as a function of the asset value of the firm, using the assumptions in Example 3. For very low asset values, the debt-to-asset ratio is almost 1 and the expected return on equity is almost  $40\%$ .

You can also see that as the debt-to-asset ratio declines, so does the expected return on equity. For very low asset values (where there is high leverage), the expected return on equity is about  $40\%$ , dropping to  $12\%$  for high asset values (where there is low leverage). The decline in the expected return on equity evident in Figure 2 was the focus of controversy during the debate on financial reform in 2010 and afterwards. See Box 1.

For purposes of comparison, Figure 2 also graphs the expected return on equity, computed assuming that the debt is risk-free. For asset values close to 200, the difference

**FIGURE 2**

The top panel graphs the debt-to-asset ratio as a function of the asset value of the firm, using the Black-Scholes formula to compute the value of the debt. The bottom panel graphs the expected return on equity as a function of the asset value of the firm, using equations (13) (dashed line) and (8) (solid line). Both graphs assume that there is a single zero-coupon debt issue with maturity value 100 and 5 years to maturity, and also assume that r = 6\%, \sigma = 25\% (for the assets), and \delta = 0.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/0629c9c87641b026d70b3f9ba14817bf60e4d7bb6eff1ca635930d9b5475d1ae.jpg)

Debt-to-Asset Ratio

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/c1a3816096a769a72fd4203134586084759c6755edf2b89ef9af4f918a5128da.jpg)

Expected Return on Equity  $(\%)$ is less than 20 basis points. For a very highly levered (low asset value) firm, however, the difference in Figure 2 is dramatic.

Conflicts Between Debt and Equity. The idea that equity is a call option on the firm and that corporate bonds are risky provides insights into relations between debtand equity-holders. Since equity-holders control the firm, bondholders may be concerned that equity-holders will take actions that would harm them, or may fail to take actions that would help them.

There are two decisions equity-holders make that affect the relative value of debt and equity. First, equity-holders can affect the volatility of assets. Equity-holders can increase asset volatility in numerous ways—for example, by increasing the operating risk of existing assets, by "asset substitution," (replacing existing assets with riskier assets) or by engaging in financial speculation. An increase in volatility, other things equal, increases the value of the equity-holder's call option and therefore reduces the value of debt. In Example 2, the vega of the equity is 0.66, so an increase in asset volatility of 0.01 leads to an increase in the market value of equity of  \$0.66, which is 0.66 / 27.07 = 2.4\%$  of equity value. Debt value would decline by 0.66.

A second decision that equity-holders can make is the size of payouts to shareholders, such as dividends and share repurchases. To see why payouts are a potential problem for bondholders, suppose that the firm makes an unexpected one-time  \$1 payout to shareholders. This payout reduces assets by\$ 1. The delta of the equity with respect to assets is less than one, so the value of equity declines by less than 1. Since the value of debt plus

### Box I: The Bank Capital Debate

A number of prominent financial institutions in the United States in 2008 failed outright or were rescued by the federal government. An incomplete list includes familiar names such as Bear Stearns, Lehman Brothers, AIG, Fannie Mae, Freddie Mac, and Washington Mutual. Lesser institutions failed as well: Between 2007 and mid-2011, the FDIC resolved over 350 failed banks with deposits of about  \$650 billion (compared to 29 failed institutions with total deposits of\$ 6 billion in the preceding 7 years). In addition to the direct cost of failed institutions, regulators worry about spillover effects: Banks have deep financial ties to one another, so that a large failed bank could lead to a cascade of failures among connected banks.

Can bank failures be avoided? Like other firms, a bank fails when its assets are insufficient to meet its debt obligations. The probability of a bank failing can be reduced by requiring banks to have a higher ratio of equity to assets. It can also be reduced if banks issue debt that converts to stock before the bank fails. Such securities, originally proposed by Flannery (2005) (see also McDonald (2012)), are called contingent capital. Ordinary debt, by contrast, converts to stock

(i.e., ownership of the assets) only at the time of bankruptcy. Both ordinary debt and contingent capital can be viewed as reverse convertibles.

Given the experience of the financial crisis, you might think that there would be widespread agreement that banks should use less debt. Bankers, however, argue that equity is expensive and that requiring banks to use less debt will raise financing costs and require them to reduce lending.* As you can see from Figure 2, however, the expected return on equity (the cost of equity) should decrease when banks use less debt, so the bankers' argument is at the very least incomplete (see Admati et al. (2010)).

Banks are complicated and play a central role in the economy. Banks are also regulated and protected by government policy (especially the largest banks), so banks' debt cost may be artificially low, which would lead banks to prefer debt finance. In the wake of the financial crisis, regulators will require banks to increase the amount of equity they issue for details (see www.bis.org), but arguments persist over whether the required increase is sufficient to protect the financial system.

*See http://tinyurl.com/4yu86d7 (Reuters.com).

equity equals assets, the value of the debt must decline by one less the delta of the equity. Unanticipated payouts to equity-holders therefore can hurt bondholders.

Bondholders are well aware of the potentially harmful effects of asset substitution and dividends. Bond covenants (legal restrictions on the firm) often limit the ability of the firm to change assets or pay dividends. Viewing debt and equity as options makes it clear why such restrictions exist.

Bondholders also encounter problems from actions that shareholders fail to take. Suppose the firm has a project worth  \$2 that requires shareholders to make a\$ 1 investment. If shareholders make the investment, they pay \$1, the value of the assets increases by \$2 and the value of the shares rises by  $2 \times \Delta_E$ . The gain to shareholders is less than the increase in the value of assets. The difference of  $2 - 2 \times \Delta_E$  goes to the bondholders. In making a positive NPV investment, shareholders help bondholders.

The shareholders in this example only will make the investment if the value of shares goes up by more than the  $1 they invest, which will only occur if \Delta_E > 0.5$ . In order for shareholders to be willing to invest, the NPV must be great enough that shareholders gain after allowing for the value increase that is lost to debt-holders.4 Thus, because of debt, the shareholders may fail to make positive NPV investments. A related problem is asset substitution: Shareholders might make negative NPV investments that increase asset risk, thereby transferring value from bondholders to stockholders.

## Multiple Debt Issues

The option-based model of debt accommodates multiple issues of zero-coupon debt with different seniorities. By definition, more senior debt has priority in the event of bankruptcy. Suppose that there are three debt issues, with maturity values of  $30,$ 30, and \$40, ranked in seniority from highest to lowest. We will refer to each distinct level of seniority as a tranche. The value of equity will be the same as in Example 2, since it is still necessary for equity-holders to pay \$100 to receive ownership of the assets. However, the option pricing approach permits us to assign appropriate yields to each level of debt.

Senior debt-holders are the first in line to be paid. They own the firm and have written a call option permitting the next set of bondholders to buy the firm from them by paying the maturity value of the senior debt,  \$30. Intermediate debt-holders own a call option permitting them to buy the firm for\$ 30, and have sold a call option permitting the junior bondholders to buy the firm for \$60. Junior bondholders in turn own the call option to buy the firm for \$60, and have written a call option permitting the equity-holders to buy the firm for 100. The values of these options are

$$
\operatorname{BSCall}(90, 30, 0.25, 0.06, 5, 0) = 67.82 \tag{14}
$$

$$
\operatorname{BSCall}(90, 60, 0.25, 0.06, 5, 0) = 47.25 \tag{15}
$$

$$
\operatorname{BSCall}(90, 100, 0.25, 0.06, 5, 0) = 27.07 \tag{16}
$$

Table 1 summarizes the value, yield to maturity, and expected return of each tranche of debt. The junior tranche has a yield to maturity of  $13.69\%$ , very close to the required return on equity. The senior tranche, according to the model, is almost risk-free.

The expected returns in Table 1 are computed using option elasticities. To illustrate the calculation, consider the junior bond, which is created by buying a 60-strike call on the assets of the firm and selling a 100-strike call. The two option elasticities are 1.7875 (60-strike) and 2.4432 (100-strike). Using the fact that the elasticity of a portfolio is a weighted average of the elasticities of the portfolio components, the elasticity of the junior bond is

$$
\$79.37 + \frac{100}{179.37} e^{-0.08 \times 2} (0.395 \times \$142.36 + 0.605 \times \$0) = \$106.09 \tag{27}
$$

The expected return on the junior debt is therefore

$$ r _ {\text {j u n i o r}} = 0. 0 6 + (0. 1 0 - 0. 0 6) \times 0. 9 0 7 7 = 0. 0 9 6 3
$$

**TABLE I**

Market values, yields, and expected returns on three debt tranches.

<table><tr><td>Claim</td><td>Owns</td><td>Writes</td><td>Value ($)</td><td>Yield (\%)</td><td>Expected Return (\%)</td></tr><tr><td>Senior bonds</td><td>Assets</td><td>C(30)</td><td>22.18</td><td>6.04</td><td>6.04</td></tr><tr><td>Intermediate bonds</td><td>C(30)</td><td>C(60)</td><td>20.57</td><td>7.54</td><td>7.03</td></tr><tr><td>Junior bonds</td><td>C(60)</td><td>C(100)</td><td>20.18</td><td>13.69</td><td>9.63</td></tr><tr><td>Equity</td><td>C(100)</td><td></td><td>27.07</td><td></td><td>15.77</td></tr></table>

Table 1 makes it clear why debt cannot be treated as a single homogeneous class when firms with complex capital structures enter bankruptcy. The interests of the most junior debt-holders may well resemble the interests of equity-holders more than those of senior debt-holders.

## Warrants

Firms sometimes issue options explicitly. If a firm issues a call option on its own stock, it is known as a warrant. (The term "warrant" is used here to denote options on a firm issued by the firm itself, though in practice the term includes traded options issued in fixed supply.) When a warrant is exercised, the warrant-holder pays the firm the strike price,  $K$ , and receives a share worth more than  $K$  (or else the holder would not have exercised the warrant). Thus, the act of exercise is dilutive to other shareholders in the sense that the firm has sold a share for less than it is worth. Of course, existing shareholders are aware of warrants outstanding and anticipate this potential exercise. The problem is how to value the warrant, and how to value the equity given the existence of warrants. This valuation problem does not arise with ordinary options, because they are traded by third parties and their exercise has no effect on the firm.

To see how to value a warrant, suppose the firm has  $n$  shares outstanding, and that the outstanding warrants are European, on  $m$  shares, with strike price  $K$ . The asset value is  $A$ .

At expiration, if warrant-holders exercise the warrants, they pay  $K$  per share and receive  $m$  shares. After the warrants are exercised, the firm has assets worth  $A + mK$ ; hence, exercised warrants are worth

$$
\max\left[ \min(m M, A_{5}), \frac{m q}{n + m q} A_{5} \right]
$$

The expression  $A / n$  is the value of a share of equity in the absence of warrants. Thus, equation (17) suggests that we can value a warrant in two steps. First, we compute an option price with  $A / n$  as the underlying asset and  $K$  as the strike price, ignoring dilution. Second, we multiply the result by a dilution correction factor,  $n / (n + m)$ . This second step accounts for the fact that warrant exercise changes the number of shares outstanding, with the new shares issued at a "below-market" price of  $K$ . The warrant can be valued by using the Black-Scholes formula:

$$
\frac {n}{n + m} \operatorname {B S C a l l} \left(\frac {A}{n}, K, \sigma , r, t, \delta\right) \tag {18}
$$

## Convertible Bonds

In addition to issuing warrants directly, firms can issue warrants embedded in bonds, i.e., convertible bonds. A simple convertible bond resembles the equity-linked notes, except that the bond is convertible into the company's own shares rather than the shares of a third party. The call option in the bond gives the bondholder the right to surrender the bond's maturity payment,  $M$ , in exchange for  $q$  shares. The valuation of a convertible bond entails valuing both debt subject to default and a warrant.

Suppose there are  $m$  bonds with maturity payment  $M$ , each of which is convertible into  $q$  shares. The value of the firm at time  $T$  is  $A_{T}$ . If there are  $n$  original shares outstanding, then there will be  $n + mq$  shares if the bond is converted. At expiration, the bondholders will convert if the value per share of the assets after conversion,  $A_{T} / (n + mq)$ , exceeds the value per share of the maturity payment that bondholders would forgo:

$$
\frac {A _ {T}}{n + m q} > \frac {M}{q}
$$ or


$$

\frac {n}{n + m q} \left(\frac {A _ {T}}{n} - \frac {M}{q} \frac {n + m q}{n}\right) > 0 \tag {19}

$$

This expression is different from equation (12) for warrants, because rather than injecting new cash into the firm when they convert, the bondholders instead avoid taking cash out of the firm.

Conversion occurs if the assets increase sufficiently in value. If the assets decrease, the firm could default on the promised maturity payment. Assuming the convertible is the only debt issue, bankruptcy occurs if assets are worth less than the promised payment to all convertible holders, or  $A_{T} < mM$ . The payoff of the convertible at maturity, time  $T$ , is

$$

\underbrace {m M} _ {\text {B o n d}} - \underbrace {\max  \left(0 , m M - A _ {T}\right)} _ {\text {W r i t t e n p u t}} + \underbrace {m q \times \frac {n}{n + m q} \times \max  \left(0 , \frac {A _ {T}}{n} - \frac {M}{q} \frac {n + m q}{n}\right)} _ {m q \text {P u r c h a s e d w a r r a n t s}} \tag {20}

$$

Thus, owning  $m$  convertibles can be valued as owning a risk-free bond with maturity payment  $mM$ , selling a put on the firm's assets, and buying  $mq$  warrants with strike  $M / q \times (n + mq) / n$ .

Equation (20) can be rewritten as

$$

\max  \left[ \min  \left(m M, A _ {T}\right), \frac {m q}{n + m q} A _ {T} \right] \tag {21}

$$

This version of the convertible payoff can be interpreted as follows: Shareholders give bondholders the least they can  $(\min [M, A_T / m])$ ; if it is optimal to do so, convertible holders can then exchange this amount for the conversion value, which is their proportionate share of the assets  $(mq / [n + mq] \times A_T)$ .

**FIGURE 3**

Maturity payoffs for the aggregate value of an ordinary bond and a convertible bond, using the parameters in Example 4.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/c66ef016c9ca0365a989ffc6d755475c5f46c9d1d57ed3daa5a834978a6eddc2.jpg)

Example 4. Suppose a firm has issued m = 6 convertible bonds, each with maturity value M = \$1000 and convertible into q = 50 shares. The firm has n = 400 common shares outstanding. Figure 3 shows the maturity payoff for the aggregate value of the convertible bonds, comparing it with the maturity payoff of otherwise identical nonconvertible bonds issued by the same firm. The six bonds have a total promised maturity value of \$6000, so default occurs when assets are below that level. Equation (19) implies that conversion occurs when assets exceed $1000 × 700/50 = $14,000. The slope of the convertible payoff above 14,000 is mq/(n + mq) = 3/7, less than the slope in default, because convertible investors share gains with existing shareholders, but once in default, convertible bondholders bear additional losses alone (in default, shares are already worthless).

Just as we valued ordinary zero-coupon bonds with the Black-Scholes formula, we can also use the Black-Scholes formula to value a bond convertible at maturity.

Example 5. Suppose a firm has assets of  \$10,000 with a single debt issue consisting of six zero-coupon bonds, each with a maturity value of\$ 1000 and with  $T = 5$  years to maturity. The asset volatility is  $\sigma = 30\%$  and the risk-free rate is  $r = 6\%$ . The firm makes no payouts. If the single debt issue is not convertible, the price is

$$

\$ 1000 \times e ^ {- 0. 0 6 \times 5} - \text {B S P u t} \left(\frac {\$ 1 0 , 0 0 0}{6}, \$ 1 0 0 0, 0. 3 0, 0. 0 6, 5, 0\right) = \$ 7 0 1. 2 7

$$

The yield on the nonconvertible bond is  $\ln (1000 / 701.27) / 5 = 0.0710$ , greater than the risk-free rate because of the risk of bankruptcy.

Suppose the debt issue is instead the convertible bond described in Example 4. Using equation (20), the value of all convertible bonds is

$$

\begin{array}{l} 6 \times \$ 1 0 0 0 \times e ^ {- 0. 0 6 \times 5} - \text {B S P u t} (\$ 1 0, 0 0 0, 6 \times \$ 1 0 0 0, 0. 3 0, 0. 0 6, 5, 0) \\ + 6 \times 50 \times \frac {4 0 0}{4 0 0 + 6 \times 5 0} \times \text {B S C a l l} \left(\frac {\$ 1 0 , 0 0 0}{4 0 0}, \frac {\$ 1 0 0 0}{5 0} \frac {4 0 0 + 6 \times 5 0}{4 0 0}, 0. 3 0, 0. 0 6, 5, 0\right) \\ = \$ 5 2 7 6. 3 5 \\ \end{array}

$$

Each bond has a price of  $879.39. The yield on a bond is \ln ($ 1000 / \$879.39)/5 = 0.0257. This is below the yield on an otherwise equivalent nonconvertible bond because of the conversion option: The bondholders have a call option for which they pay by accepting a lower yield on the debt. The value of a share is ($10,000 - $5276.35)/400 = \$11.809. Bondholders will convert if at maturity the assets are worth more than

$$

M \times (n + m q) / q = \ 1000 \times (400 + 6 \times 50) / 50 = \ 14,000

$$

Convertible bonds are typically issued at terms such that a significant increase in the stock price is required for conversion to be worthwhile. In Example 5, each bond gives the holder the right to convert into 50 shares, so the strike price is  $1000/50 =$ 20. Since the stock price is \$11.809, the ratio of the strike price to the stock price, which is called the conversion premium, is  \$20/11.809 - 1 = 69.4\%. In practice, conversion premiums are most commonly between 20\% and 40\%.

Why do firms issue convertible bonds? One explanation is that convertible bonds resolve one of the conflicts between equity- and debt-holders. Shareholders can take value from holders of ordinary bonds by increasing volatility, even if this action has no beneficial effect from the perspective of the firm as a whole. However, convertibles are harmed less than ordinary debt by an increase in volatility, and may even be helped. Financing with convertibles instead of ordinary debt thus reduces the incentive of shareholders to raise volatility.

In practice, valuation of convertible bonds is more complicated than in this example. First, convertible bonds are typically American options, convertible for much of the life of the bond. Second, convertible bonds typically are not zero-coupon. The payment of coupons complicates the analysis because bankruptcy becomes possible at times other than expiration and the reduction in assets stemming from the payment of the coupon (or any other cash payment to the firm's security-holders). This coupon reduces assets but is also paid to the bondholders. Third, many companies pay dividends. If the dividends that can be earned by converting the bond into stock exceed the bond coupon, there can be a reason for bondholders to convert before maturity. Finally, interest rates and volatility can change, and the circumstances of default may be more complicated than we have assumed (for example, when there are other debt issues, default could occur prior to maturity). The value of the bond can then change for reasons other than stock price changes.

It is possible to value convertible bonds incorporating early exercise, dividends, and callability. It is also possible to incorporate interest rate risk using various techniques.

## Callable Bonds

Many bonds are callable, meaning that, prior to maturity, the company has the right to give bondholders a predetermined payment in exchange for the bonds. The idea underlying a callable bond is that the bond issuer can buy the bond back at a relatively cheap price if it becomes expensive. A bond can become expensive because interest rates have fallen, in which case the issuer would like to exchange the existing bonds for new bonds carrying a lower coupon rate. A bond can also become expensive if the market perceives that the company is less likely to default. Again, in this case the company would like to exchange the existing bond for a newly issued bond with a lower default premium. A firm can always buy bonds back at a market price, but there is generally no advantage to doing so. Callability permits the company to buy bonds back at a relatively low price. Of course the company pays for this right by receiving a lower price when it issues the bond.

The predetermined price at which a company can call a bond is specified by a call schedule. Bonds are typically noncallable for several years after issuance, a period during which the bond is said to have call protection. Callability is, in effect, an option that investors sell to the bond issuer. In return, the company issuing the bonds pays a higher yield on the bonds.

Convertible bonds are typically callable. When the issuer calls a convertible bond, the holder of the bond has the choice of surrendering the bond in exchange for the call price or converting. Callability is a way for issuers to shorten the life of the bond, potentially forcing holders to convert prior to maturity. The issuer—acting in the interests of shareholders—follows a call strategy that minimizes the value of the bond. Bondholders, by contrast, follow a conversion strategy that maximizes the value of the bond.

Since bonds can be called prior to expiration, we cannot value the call provision using Black-Scholes. However, we can value a callable bond binomially. The call strategy for an issuer is like the exercise of an American option: The issuer calls if it is more valuable to do so than to leave the bond outstanding for another period.

Figure 4 presents binomial valuation examples for four bonds: an ordinary bond, a convertible bond, a callable bond, and a callable convertible bond. We examine noncallable bonds as benchmarks in order to better understand the effect of callability. We value these bonds using the binomial pricing model. In each case, the assets of the firm are the underlying asset, and the value of the bonds is determined by the value of the assets. To perform the valuation, we move backward through the tree. The assumptions in Figure 4 are the same as those in Example 5, so the results in the example and figure are comparable for the ordinary and convertible bonds.

Callable Nonconvertible Bonds. We first consider the binomial valuation of an ordinary, noncallable bond (panel (b) in Figure 4) and its callable counterpart (panel (d) in Figure 4). The yield on the callable bond  $(7.57\%)$  exceeds that on the noncallable bond  $(7.29\%)$  because of the option that bondholders have written to the firm.

How are bond prices in Figure 4 computed? For the ordinary bond, the value in year 5 is

$$

B _ {5} = \min  (m M, A _ {5}) = \min  (\$ 6 0 0 0, A _ {5})

$$

There are six \$1000 bonds outstanding, and shareholders will pay to these bondholders the value of the firm or \$6000, whichever is less. Note that default occurs at the bottom node in year 5 since the value of assets is less than the required bond payment, 6000. Prior to maturity, the value at each node is calculated as in a typical binomial valuation, with


$$

B _ {t} = e ^ {- r h} [ p B _ {t + h} ^ {+} + (1 - p) B _ {t + h} ^ {-} ]

$$

For a given node at time  $t$ ,  $B_{t + h}^{+}$  is the bond value if assets move up from that node, and  $B_{t + h}^{-}$  is the bond value if assets move down from that node.

The binomial valuation of the callable bond is straightforward. Let  K_{t}^{\mathrm{call}}  denote the call schedule. The call price in this example is set to equal the price of a bond yielding  6.75\% . At time 1.67, for example, the company could call by paying the bondholders 4791.10, which, for a bond maturing in 3.33 years, is a yield of  6.75\% . We assume that the risk-free rate is fixed; thus the only reason for the company to call the bond is if the company could issue replacement bonds at a lower coupon due to a decrease in default risk.

Shareholders wish to minimize the value of the bonds; hence, their value is

$$

\begin{array}{l} B_{t} = \min\left[ \text{Leave the bond outstanding, call} \right] \\ = \min\left[ e^{-rh}(p B_{t+h}^{+} + (1-p) B_{t+h}^{-}), K_{t}^{\text{call}} \right] \tag{22} \\ \end{array}

$$

If you compare the binomial trees in panels (b) and (d), it is apparent why the callable bond has a lower price at issue than the ordinary bond. At the top node in year 1.67, the noncallable bonds are worth \$4912.38, for a yield of  $6\%$ . (If assets reach that node, default will not occur.) The firm calls the callable bond at that node since it is now possible to issue default-free debt. The prospect of this call prevents the bondholders from receiving a capital gain. This in turn lowers the initial price of the bond. Problem 15 asks you to compute share prices at each node so that you can see the effect on shareholders of the different bonds.

Callable Convertible Bonds. We now consider noncallable and callable convertible bonds, panels (e) and (f) in Figure 4. Note first that, as in Example 5, the yield on the convertible noncallable bond  $(2.39\%)$  is lower than that on the ordinary bond  $(7.29\%)$  because convertible bondholders receive a call option and pay for this with a lower yield.

Using equation (21), the year 5 value for the convertible bond is

$$

\max  \left[ \min  (m M, A _ {5}), \frac {m q}{n + m q} A _ {5} \right]

$$

In panel (e) in Figure 4, bondholders convert at the top two nodes in year 5, receive the maturity payment in cash at the next node, and the firm defaults at the bottom node.

Prior to maturity, the convertible investor values the bond as the greater of its conversion value and the value of letting the bond live one more period:

$$

\begin{array}{l} B _ {t} = \max  [ \text {C o n t i n u e t o h o l d , c o n v e r t} ] \\ = \max  \left[ e ^ {- r h} \left(p B _ {t + h} ^ {+} + (1 - p) B _ {t + h} ^ {-}\right), \frac {m q}{n + m q} A _ {t} \right] \tag {23} \\ \end{array}

$$

$B_{t}$  is the total value of the bonds.

When the bond is both convertible and callable, there is a tug-of-war between the firm and the bond investors. We can imagine the bond value being determined as follows: The bondholders decide whether to hold or convert (maximizing the bond value). Given this decision, the firm decides whether to call (minimizing the bond value). If the firm calls, bondholders revisit their decision about whether or not to convert (again maximizing the bond value, conditional upon the behavior of the firm). This chain of reasoning implies the

**FIGURE 4**

Binomial valuation of a callable nonconvertible and a callable convertible bond. The assumptions are the same as those in Example 5. The binomial tree for assets in panel (a) is generated using a forward tree with  $u = 1.6279$ ,  $d = 0.7503$ ,  $p^* = 0.40444$ ,  $T = 5$ , and three binomial time steps (hence the time between binomial periods is  $h = 5/3 = 1.67$ ). In each case there are six bonds outstanding with a total maturity value of \$6000. Convertible bonds convert into 50 shares. The yield for each bond is computed as  $\ln(6000 / B_0) / 5$ , where  $B_0$  is the time 0 value of the six bonds. The price is  $B_0 / 6$ . The call schedule in panel (c) is the price of a zero-coupon bond maturing in year 5 and yielding 6.75\%. Callable bonds are call-protected until year 1.67. Prices in italics denote calls of the bond; prices in bold denote conversions, and prices in bold italics denote conversions in response to a call.

<table><tr><td rowspan="2">Panel</td><td colspan="4">Year</td></tr><tr><td>0</td><td>1.67</td><td>3.33</td><td>5</td></tr><tr><td>(a) Firm assets</td><td>10,000.00</td><td>16,279.12</td><td>26,500.98</td><td>43,141.27</td></tr><tr><td></td><td></td><td>7502.88</td><td>12,214.03</td><td>19,883.36</td></tr><tr><td></td><td></td><td></td><td>5629.32</td><td>9164.04</td></tr><tr><td></td><td></td><td></td><td></td><td>4223.61</td></tr><tr><td>(b) Ordinary bond</td><td>4166.82</td><td>4912.38</td><td>5429.02</td><td>6000.00</td></tr><tr><td>Price = \$694.47</td><td></td><td>4396.40</td><td>5429.02</td><td>6000.00</td></tr><tr><td>Yield = 7.29\%</td><td></td><td></td><td>4471.64</td><td>6000.00</td></tr><tr><td></td><td></td><td></td><td></td><td>4223.61</td></tr><tr><td>(c) Call schedule</td><td>N/A</td><td>4791.10</td><td>5361.58</td><td>6000.00</td></tr><tr><td>(d) Callable bond</td><td>4109.14</td><td>4791.10</td><td>5361.58</td><td>6000.00</td></tr><tr><td>Price = \$684.86</td><td></td><td>4371.73</td><td>5361.58</td><td>6000.00</td></tr><tr><td>Yield = 7.57\%</td><td></td><td></td><td>4471.64</td><td>6000.00</td></tr><tr><td></td><td></td><td></td><td></td><td>4223.61</td></tr><tr><td>(e) Convertible bond</td><td>5324.34</td><td>7578.78</td><td>11,357.56</td><td>18,489.12</td></tr><tr><td>Price = \$887.39</td><td></td><td>4733.96</td><td>6351.59</td><td>8521.44</td></tr><tr><td>Yield = 2.39\%</td><td></td><td></td><td>4471.64</td><td>6000.00</td></tr><tr><td></td><td></td><td></td><td></td><td>4223.61</td></tr><tr><td>(f) Callable convertible bond</td><td>4908.85</td><td>6976.77</td><td>11,357.56</td><td>18,489.12</td></tr><tr><td>Price = \$818.14</td><td></td><td>4371.73</td><td>5361.58</td><td>8521.44</td></tr><tr><td>Yield = 4.01\%</td><td></td><td></td><td>4471.64</td><td>6000.00</td></tr><tr><td></td><td></td><td></td><td></td><td>4223.61</td></tr></table> following valuation equation:


$$

\begin{array}{l} B _ {t} = \max  \{\min  [ \max  (\text {C o n t i n u e t o H o l d}, \text {C o n v e r t}), \text {C a l l} ], \text {C o n v e r t} \} \\ = \max  \left\{\min  \left[ \max  \left(\underbrace {e ^ {- r h} [ p B _ {t + h} ^ {+} + (1 - p) B _ {t + h} ^ {-} ]} _ {\text {H o l d}}, \underbrace {\frac {m q}{n + m q} A _ {t}} _ {\text {C o n v e r t}}\right), \underbrace {K _ {t} ^ {\text {c a l l}}} _ {\text {C a l l}} \right], \right. \\ \left. \underbrace {\frac {m q}{n + m q} A _ {t}} _ {\text {C o n v e r t}} \right\} \tag {24} \\ \end{array}

$$

As you would expect, the ability to call a convertible bond lowers its price, raising its yield from  $2.39\%$  to  $4.01\%$ . By comparing panels (e) and (f) in Figure 4, you can see why this happens. In year 1.67 at the top node, it is optimal to wait to convert if the bond is noncallable. This gives a bond value in panel (e) of  $7578.78$ . However, if the bond is callable using the call schedule in panel (c), the firm will call at the top node in year 1.67. In response, the bondholders convert, giving them 50 shares worth  $\$6976.66$ . The bond is worth less because shareholders cannot delay the conversion. The firm does not call at the lower node in year 1.67 because the credit quality of the bond deteriorates at that node.

## Bond Valuation Based on the Stock Price

The binomial examples in Figure 4 assume that the assets of the firm follow a binomial process and use the resulting tree to value a convertible bond. This approach becomes complicated when the firm's capital structure contains multiple bonds and convertible securities.

An alternative approach, often used in practice, is to base valuation of a convertible bond on a binomial tree for the stock, rather than on assets. A standard binomial tree for the stock, however, will never reach a zero stock price, and thus a convertible bond valued on this tree will be priced as if it were default-free. This raises the question: How can we incorporate bond default risk into the pricing procedure?

Tsiveriotis and Fernandes (1998) suggest valuing separately the bond income and the stock income from an optimally managed convertible bond. Their procedure accounts for default by discounting bond income at a rate greater than the risk-free rate, while the component of the bond income related to conversion into stock is discounted at the risk-free rate.

## Other Bond Features

It is possible to issue bonds that are considerably more complex than those we have considered. Conversion and call schedules can vary with time in complicated ways. Bonds can be puttable, meaning that the investor can sell them back to the firm at a predetermined price. Bonds can pay contingent interest, meaning that if a particular event occurs, the interest rate on the bond changes.

Particular structures are often a response to tax and accounting considerations. Another example is the use of contingent convertible bonds, also known as "co-co's."

Firms report earnings on a per share basis. For a firm that has issued only shares and ordinary debt, computing earnings per share (EPS) is straightforward since there is no ambiguity about the number of shares outstanding. However, if a firm has issued convertible debt or warrants, how many shares should the firm use in computing EPS? Under financial accounting rules in the United States, the firm must compute the worst-case fully diluted earnings per share. When the firm has issued a convertible security, this generally means adding back to earnings after-tax interest on the convertible, and adding the number of convertible shares to shares outstanding.

In recent years firms have issued contingent convertible bonds, which are securities that for a time received different accounting treatment than ordinary convertibles. Holders of such bonds can convert only when a contingency—such as the stock price being sufficiently high—has occurred. Prior to 2005, firms were permitted to ignore such bonds in computing fully diluted EPS. However, the FASB ruled that such bonds had to be treated as convertibles, and a number of firms that had issued such bonds were forced to change the way they accounted for them.

General Motors in 2004 would have had to reduce earnings by  $15\%$  if it altered its accounting for the 8 billion in contingent convertibles that it had issued. In the end, GM altered the bonds to permit settlement in cash rather than stock, and avoided the earnings reduction.[7]

## Put Warrants

Many companies that had share repurchase programs during the 1990s also sold put options on their own stock. A commonly stated rationale for issuing such put warrants (see, for example, Thatcher et al., 1994) is that the put sales are a hedge against the cost of repurchasing shares. Intel, Microsoft, and Dell, for example, all sold significant numbers of puts, with Microsoft alone earning well over 1 billion in put premiums during the 1990s. Here is a quote from Microsoft's 1999 10-K describing the put program:

Microsoft enhances its repurchase program by selling put warrants. . . . On June 30, 1999, 163 million warrants were outstanding with strike prices ranging from $59 to $65 per share. The put warrants expire between September 1999 and March 2002. The outstanding put warrants permit a net-share settlement at the Company's option and do not result in a put warrant liability on the balance sheet.

The sale of a put allows the firms to implicitly buy and sell their own shares in response to price changes. Dealers purchased the puts written by firms such as Microsoft, Intel, and Dell. The dealers reportedly held the puts and delta-hedged the position, thus reducing their risk. Moreover, the transactions, including the dealer's hedging trades, occurred without any public announcement. In effect, put-selling firms transacted with shareholders using the dealer as a conduit. When the share price rose, the delta of the dealer's purchased put, which was negative, increased toward zero and the dealer would sell the shares it had purchased to hedge the put. When the share price fell, delta would have decreased to negative one and the dealer would then have bought additional shares to hedge its position. Thus, the dealer, acting on behalf of the firm, bought as the share price fell and sold as the share price rose.


Problem 19 asks you to examine a binomial example of this transaction, showing first that the firm could accomplish the same end as put writing by transacting directly in its shares. Second, the problem asks you to show how the counterparty dealer delta-hedges the transaction.

## 2. COMPENSATION OPTIONS

Many firms pay executives and other employees with call options on the company's own stock. The use of such compensation options is common and significant in many companies, but has declined since the early 2000s.

### The Use of Compensation Options

Microsoft provides an illustration of the evolution in the use of option grants. The firm estimated in its 1999 annual report (10-K) that its 78 million option grants that year were worth about \$1.6 billion. This was approximately \$52,000 per employee (Microsoft had 31,000 employees). Microsoft also reported that the June 30, 1999, market value of total outstanding options (on 766 million shares, with 5 billion shares outstanding) was \$69 billion, or \$2 million per employee. In 2004, Microsoft largely switched from the use of stock options to share grants; see Box 2.

Many companies besides Microsoft made significant use of compensation options. Eberhart (2005) found in a sample of 1800 firms using compensation options in 1999 that options were on average  $12\%$  of shares outstanding. Moreover, the use of options was not restricted to executives: Core and Guay (2001) found in a sample of 750 companies that two-thirds of option grants were to nonexecutive employees.

As at Microsoft, however, the use of compensation options declined more generally. Murphy (forthcoming) finds that between 2001 and 2009, option grants declined from over half to less than one-quarter of compensation for S&P 500 CEOs, with the percentage of CEOs receiving options falling from  $85\%$  in 2000 to  $65\%$  in 2009.

What caused the decline in the use of compensation options? One likely factor is the decline in stock prices during the early 2000s, particularly for high-tech stocks. This decline left many employees with deep out-of-the-money options and created morale problems for companies heavily dependent upon options. Boxes 2 and 4 discuss Microsoft's and Google's responses to their overhang of out-of-the-money options in 2003 and 2009.

A second important factor is that both the Financial Accounting Standards Board (FASB) in the United States and the International Accounting Standards Board (IASB) announced that they would require companies to recognize employee option grants as a compensation expense. Throughout the 1990s most companies had treated grants of

### Box 2: Compensation Options at Microsoft

In July 2003, the Wall Street Journal proclaimed: "The golden age of stock options is over." (See "Microsoft Ushers Out the Era of Options," by Robert A. Guth and Joann S. Lublin, Wall Street Journal, July 14, 2003.) Microsoft stock had fallen and many employees had out-of-the-money options. CEO Steve Ballmer said employees had "angst" about the low stock price, and Microsoft's CFO said that employees could no longer expect to become wealthy from stock options:

"If you think what happened in the nineties is going to happen again—it's not," said Microsoft Chief Financial Officer John Connors. In a recent interview he described the PC market boom as a "phenomenon" that "nobody will ever likely repeat."

Microsoft announced that in the future it would issue restricted stock instead of options. (Restricted stock cannot be sold for a period of time.)

In addition, Microsoft engaged JP Morgan Chase on a one-time basis to buy options from employees. The bank bought the options at mod ified terms: In particular, maturities were reduced to a maximum of three years. As a result employees sold their options for a price that in some cases was significantly less than the unrestricted price for an otherwise equivalent traded option. JP Morgan Chase, which would hold the options it acquired, informed Microsoft employees that it would be short-selling shares in order to delta-hedge the option position. Slightly more than half of employee options were sold in this fashion.


Microsoft's avoidance of options appeared to be part of a general trend. One survey found a  $50\%$  reduction in the value of option grants between 2001 and 2003. (See "Stock Option Awards Sharply Cut," by Ruth Simon, Wall Street Journal, December 14, 2004, p. D3.)

In 2005, Microsoft chairman Bill Gates told a group of business writers, "I regret that we ever used stock options." (Reuters, "Gates Regrets Paying with Stock Options," www.cnn.com, May 3, 2005). Between 2008 and 2010, the company granted options on 12 million shares, but those grants were in conjunction with acquisitions.

compensation options as worthless when computing earnings. An attempt by the FASB to require option expensing in the early 1990s was defeated by companies opposed to expensing. Many of these companies were concerned about the decline in reported earnings that would result from expensing.

The logic behind requiring companies to expense option grants is straightforward. If a company pays cash to an employee, the company deducts the payment as an expense. If an otherwise identical company replaces some of the cash with an option grant, that company will report systematically higher earnings than the first unless the value of the option grant is also deducted as an expense.[10]

In December 2004, the FASB issued Statement of Financial Accounting Standards (SFAS) 123R, which contained the final rules, effective in June 2005, for companies to follow in expensing options:

[A] public entity [is required] to measure the cost of employee services received in exchange for an award of equity instruments based on the grant-date fair value of the award (with limited exceptions). That cost will be recognized over the period during which an employee is required to provide service in exchange for the award—the requisite service period (usually the vesting period).[11]

A company might grant options that vest after 3 years and expire after 7 years. Under SFAS 123R, the company could value these options using the Black-Scholes or the binomial formula, and then expense  $\frac{1}{3}$  of their value over each year of the vesting period.

Compensation options are generally granted at-the-money, so both the reported value and the value to the recipient depend on the share price at the grant date. An academic researcher discovered in the early 2000s that numerous companies had retrospectively chosen grant dates to make valuable options appear less valuable at grant. Box 3 discusses the resulting uproar.

## Valuation of Compensation Options

The valuation of compensation options is complicated by the fact that there are many special considerations in valuing them:

- Compensation options cannot be sold and typically are not fully vested (i.e., the employee does not own them) for several years.
- The executive may resign, be fired, die, or become disabled, or the company may be acquired. Any of these may affect the value of the option grant, either by forcing early exercise (as may happen with a death) or requiring that the options be forfeited (in the event the executive is fired).
- The term of the options can be 10 years or more, which makes volatility and dividend estimates difficult.
- The company may not have a publicly traded stock, in which case the stock price must be estimated.
- There may be unusual contractual features of the compensation option contract. For example, the strike price may be an industry stock price index.

Such considerations make it harder to value compensation options than short-lived exchange-traded options, but they do not imply that the option has zero value. We will now discuss some of the issues that arise in option expensing.

Whose Valuation. Compensation options cannot be traded. An employee who cannot sell options will typically discount their value. As a result, you can expect that firms and

### BOX 3: Option Backdating

Executives receive stock option awards on a specific date. The options are typically granted at-the-money, so the stock price on this date determines the strike price of the options. Lie (2005) (following an earlier study by Yermack, 1997) documented a remarkable fact: Between 1992 and 2002, abnormal company stock returns were on average negative before the date of option grants and positive thereafter. This finding catalyzed both news coverage and regulatory investigations. Ultimately, investigators found convincing evidence that over 100 companies had systematically selected the low stock price of the quarter when granting options at the end of the quarter. This practice was called option backdating.

In addition to backdating, companies also engaged in "spring-loading" (granting options prior to a release of good news), "bullet-dodging" (delaying an option grant until after the release of bad news), and possible outright lying to the IRS about the date on which an executive had exercised options (Cicero, 2009). (For ordinary nonqualified compensation options, the gain at exercise is taxed as ordinary income. Claiming that the option was exercised when prices were low would reduce taxes.)


Ultimately, abnormal return patterns around option grant dates were sharply reduced (see Heron and Lie, 2007) when, beginning in August 2002, the Sarbanes-Oxley Act required firms to report option grants no later than two days following the grant.

The New York Times in 2010 summarized the status of backdating prosecutions:*

On the civil side, the S.E.C. filed about 50 cases. The largest one involved Dr. William W. McGuire, the former chief executive of the UnitedHealth Group, who paid 468 million in civil fines and restitution to the company.

Irrespective of whether stock-options backdating resulted in penalties, the practice turned out to be relatively common. About 150 companies issued restatements because of allegations of backdating stock options, a list that included Apple and Cablevision.

*See http://tinyurl.com/3wghxyx.

employees will value compensation options differently. Such a difference in valuation can occur for any compensation other than immediate cash.

Accounting standards require that companies deduct the cost to the company. The goal is to measure cost to nonemployee shareholders, not value to employees. For example, suppose a company grants employees nontradable membership in a golf club costing  \$15,000 per year. An employee who does not play golf might value the membership at zero. Nevertheless, shareholders bear the\$ 15,000 cost. The fact that the employee discounts the membership's value does not reduce the cost to the firm. For shareholders, the issue is how much options cost the company, given the behavior of employees.

Valuation Inputs. SFAS 123R calls for the valuation to measure fair market value of the option. This requires that companies estimate the likely behavior of employees with respect to exercise and forfeiture of options, and also that the company estimate prospective volatility and dividends.[12] To illustrate several practical issues in measuring cost to the company, we again consider Microsoft as an example. In accord with SFAS 123, Microsoft in 1999 valued its options using the Black-Scholes formula and disclosed this value in a footnote. The options vested in  $4\frac{1}{2}$  years and expired after 7 years. Here is the discussion from Microsoft's 1999 10-K:


[Option] value was estimated using an expected life of 5 years, no dividends, volatility of 0.32 in 1999 and 1998 and 0.30 in 1997, and risk-free interest rates of  $6.5\%$ ,  $5.7\%$ , and  $4.9\%$  in 1997, 1998, and 1999.

Microsoft does not document how it chose volatilities, but these are close to historical volatilities in each year.[13]

Why did Microsoft use a 5-year expiration to value options expiring in 7 years? It is never optimal to early-exercise a publicly traded call option on a non-dividend-paying stock since it can be sold for more than its intrinsic value. However, compensation options cannot be sold. Thus, the value of the options to the holder may be less than intrinsic value. In this case, employees may exercise the options before expiration.[14] In addition to exercise by continuing employees, options are often canceled due to death, termination, or retirement of the employee. Taxes can also potentially affect the exercise decision, although a common tax-motivated argument for early exercise is incorrect.[15] Finally, compensation options cannot be exercised until they vest. A realistic valuation would account for the likelihood of these various factors. The assumed 5-year life is intended to account for the expected life of an option.[16]

It is possible to modify both the Black-Scholes and binomial models to account for complications due to early exercise. For example, suppose that 4-year options vest after 3 years and the company estimates that  $5\%$  of outstanding options will be forfeited each year during the vesting period. Furthermore, the company believes that half of the remaining options will be exercised at vesting, with the other half exercised at expiration. One could then value the option grant as being partially a 3-year option and partially a 4-year option:

$$

(1 - 0. 0 5) ^ {3} \left[ 0. 5 \times 3 \text {y e a r o p t i o n} + (1 - 0. 0 5) \times 0. 5 \times 4 \text {y e a r o p t i o n} \right] \tag {25}

$$

In this expression, each option price is weighted by the fraction of employees who historically exercised at that time. A problem with this approach is that it does not recognize that employee behavior depends on the stock price. If the option is deeply in-the-money in the early years, fewer employees are likely to resign before the options vest. If the option is out-of-the-money in year 3, all employees who do not resign will wait before deciding whether to exercise, which lengthens option maturity. Thus, the assumptions about exercise behavior will generally be incorrect. Bodie et al. (2003) point out that for these reasons, equation (25) will undervalue the option. A binomial model or Monte Carlo valuation permits a more flexible and realistic treatment of early exercise.


An alternative approach to expensing options was suggested by Bulow and Shoven (2005). A discussion of their approach is in Appendix A.

## Repricing of Compensation Options

If a company is heavily dependent on compensation options, a decline in the stock price can cause morale problems for employees who are hoping their options will be valuable. The delta of a deep out-of-the-money option is low, so that subsequent stock price changes will not have much effect on the value of employee options. As a result, companies will sometimes substitute at-the-money options for already-granted options that have become out-of-the-money. Reducing the exercise price of compensation options in response to a decline in the stock price is called option repricing. Many companies have repriced, including Oracle, Netscape Communications, Apple Computer, Bay Networks, Best Buy, and Oxford Health Plans during the 1990s, and Google, Intel, and Starbucks in 2009.[17] If the repricing increases the value of the options, the company is required to record an expense for the increase in value. To avoid recording an expense, Starbucks granted employees fewer at-the-money options than the number of retired out-of-the-money options. Google, on the other hand, exchanged options one-for-one and recognized an expense. See Box 4 for a discussion of Google's approach to compensation options.

If you expect that options will be repriced if the price falls, how valuable is the option grant in the first place? We can answer this question using barrier options. An option that is going to be repriced if the stock price reaches a certain level can be modeled as a knockout option (the originally granted option vanishes), plus a knock-in option (a new option replaces it) with the same barrier. Specifically, suppose that the option strike is  $K$ , and that at the barrier,  $H$ , a new at-the-money option will be issued in place of the original option. A repriceable option is then worth

$$

\operatorname {C a l l D o w n O u t} (S, K, \sigma , r, T, \delta , H) + \operatorname {C a l l D o w n I n} (S, H, \sigma , r, T, \delta , H) \tag {26}

$$

The second term reflects the knock-in call being at-the-money when it knocks-in.

Example 6. Suppose S = \$100, σ = 0.4, r = 0.06, t = 10, δ = 0.01, and that options will be repriced if the stock price hits \$60. The value of an option that will not be repriced is

$$

\operatorname {B S C a l l} (\mathbb {S} 1 0 0, \mathbb {S} 1 0 0, 0. 4, 0. 0 6, 1 0, 0. 0 1) = \mathbb {S} 5 4. 4 3

$$

The value of an otherwise equivalent option that will be repriced at 60 is

$$
\begin{array}{l} 0.5357 \times [S e^{-\delta(T-t)} - \operatorname{BSCall}(S, 112, \sigma, r, T-t, \delta)] \tag{28} \\ + 0.4348 \times \operatorname{BSCall}(S, 138, \sigma, r, T-t, \delta) + \operatorname{PV}_{t,T}(\text{TRW Dividends}) \\ \end{array}
$$

Thus, the possibility of repricing increases the value of the option by  $13\%$ .

### BOX 4: Google and Compensation Options

Microsoft renounced compensation options in 2003, but Google and other companies continue to use them. In late 2008, Google employees lost considerable value on their compensation options when Google's stock tumbled almost  $50\%$ . Google responded in early 2009 by repricing those options, permitting employees to exchange existing high-strike price options for new at-the-money options with additional vesting time. Google anticipated a 460 million expense as a result of employees exchanging less valuable for more valuable options.

Another issue with options is that when they vest, employees typically have to choose whether to hold the options or exercise them prior to expiration, which reduces their value. In 2007, Google introduced transferable stock options (TSOs) to partially address this problem, as well as to provide prices for options. Google typically grants options with 10 years to expiration, and the options vest after 4 years. Once an option vests, employees using the TSO program can offer to sell their options to investment banks, which bid for the options in an internal market. Any options sold in this way have a maximum maturity of 2 years. As a consequence, an employee whose options have just vested, and which therefore have 6 years to expiration, faces a substantial loss in theoretical value by selling the options, shortening the maturity by 4 years. However, the options will be more valuable than if the employee were to exercise them at that point. Moreover, employees can observe the internal market price for options and can thereby place a lower bound on the value of their vested, unexercised options.


Google's TSO program is similar to the one-time option purchase program Microsoft offered when it eliminated options (see Box 2). One ramification of the TSO program for Google is that tradable options will have a longer life than nontradable options—employees who would have exercised options upon vesting will sell them instead, extending the life by 2 years. This increase in the expected life of the options increases their theoretical value when they are granted. Google's reported option compensation expense will therefore be greater as a result of the TSO program.

## Reload Options

A reload option gives the option-holder new call options when existing call options are exercised. The idea is that the option-holder uses shares to pay for exercise, and new at-the-money options are granted for each share given up in this fashion. This type of option is best explained with an example. Assume that a 10-year option grant for 1000 shares with a strike price of \$100 permits a single reload. Suppose the employee exercises the option when the stock price is \$250, with 4 years of option life remaining. The exercise price requires a payment of $100 × 1000 = $100,000. This amount can be paid in cash or by surrendering $100,000/$250 = 400 shares. An executive paying the strike price by surrendering shares receives 400 new at-the-money options with 4 years to expiration.

Arnason and Jagannathan (1994) pointed out that there are two important characteristics of reload options. First, the reload feature is valuable: A reload option can be worth  $30\%$  more than an otherwise equivalent option without the reload feature. Second, reload options cannot be valued using the Black-Scholes formula because reload options may be early-exercised. However, they can be valued using the binomial option pricing model.

Reload options might seem esoteric, but Sally et al. (1999) show that 1135 reload options were granted, in 1997, out of a total of 9673 grants reported in the S&P Execucomp

**FIGURE 5**

Binomial valuation of ordinary option (binomial tree on the left) and reload option (binomial tree on the right). The calculations assume that  $S = \100$ ,  $K = \$ 100 ,  $\sigma = 0.3$ ,  $r = 0.08$ ,  $\delta = 0$ ,  $T = 4$ ,  $h = 2\$ , and that there is a single reload. Stock prices and option prices are shown at each node, with the reload value in italics. A reload occurs at the boxed stock price. In this example, we have  $u = 1.794$ ,  $d = 0.768$ , and  $p = 0.395$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/0a8ef2d993dce031b114bf0f8ddc45937527075e7e80afc6d0027135fa6d5b03.jpg) database. SFAS 123R accounts for reloads by ignoring the extra value of the reload feature when the option is granted, and accounting for the additional expense when the option is exercised and reloaded.[18] This treatment is in the spirit of the Bulow-Shoven expensing proposal, discussed in Appendix A.


Reload options can be valued binomially. This is accomplished by replacing the exercise amount at the time of exercise,  $S - K$ , with the value of a new reload option. We will illustrate this in the simplest possible fashion, with a two-period binomial example.

Figure 5 shows the binomial valuation of an ordinary option and a reload option with a single reload. The binomial price for an option without a reload provision is 38.28. (The Black-Scholes price for this option is 36.76.) The reload price, by contrast, is 42.25, and a reload optimally occurs in the second binomial period. Let's examine how this works.

First, consider the valuation without a reload. When  $S = \$ 179.37  in period 1, the value of the option left alive is  $\94.153$ , while the value exercised is  $\$ 79.37 . As we would expect since there are no dividends, the option is not exercised early; the value in period 0 is  $\38.28$ .

When a reload is permitted, the one candidate node for a reload is when S = \$179.37. (A reload would have no value at S = \$100 or in the final period.) If a reload occurs, the option-holder receives \$79.37 for exercising the option, and 100/179.37 options are issued with a strike price of \$179.37 and 2 years to maturity. Thus, we calculate the value of the option at this node as


$$

\$ 79.37 + \frac {1 0 0}{1 7 9 . 3 7} e ^ {- 0. 0 8 \times 2} (0. 3 9 5 \times \$ 1 4 2. 3 6 + 0. 6 0 5 \times \$ 0) = \$ 1 0 6. 0 9 \tag {27}

$$

From Figure 5, the value of the reload option is  $42.25, 10.5\%$  greater than in the absence of the reload.

In general, we can compute the value of the reload at every node by solving another binomial pricing problem valuing the appropriate number of newly issued options. The option-holder reloads if doing so is more valuable than not doing so, just like the exercise decision for an American option.[19]

## Level 3 Communications

Level 3 Communications was one of the first companies to deduct the cost of compensation options in computing earnings. However, Level 3 also granted unusually complex and valuable options and did not take this complexity and extra value into account when expensing. In a June 1998 proxy statement, Level 3 described its outperform stock options (OSO), granted to employees. This is how they are described in the proxy:

Participants in the OSO Program do not realize any value from awards unless the Level 3 Common Stock outperforms the Standard & Poor's 500 Index. When the stock price gain is greater than the corresponding gain on the Standard & Poor's 500 Index, the value received for awards under the OSO Program is based on a formula involving a Multiplier related to how much the Common Stock outperforms the Standard & Poor's 500 Index.

The multiplier is then described as follows:

The Multiplier shall be based on the "Outperform Percentage" . . . for the Period, determined on the date of exercise. The Outperform Percentage shall be the excess of the annualized percentage change . . . in the Fair Market Value of the Common Stock over the Period . . . over the annualized percentage increase or decrease . . . in the Standard & Poor's 500 Index over the Period. . .

The multiplier is computed based on the outperform percentage as follows:

<table><tr><td>Outperform Percentage</td><td>Multiplier</td></tr><tr><td>x ≤ 0</td><td>0</td></tr><tr><td>0 &lt; x ≤ 11\%</td><td>x × 8/11 × 100</td></tr><tr><td>x &gt; 11\%</td><td>8.0</td></tr></table>

Because of the multiplier, if Level 3 outperforms the S&P 500 index by at least an annual average of  $11\%$ , the option recipient will have the payoff of eight options. The options have a 4-year maturity and are exercisable and fully vested after 2 years.

Example 7. Suppose that at the grant of an option, the price of Level 3 is \$100, and the S&P 500 index is at 1300. After 4 years, the price of Level 3 is \$185, and the S&P 500 index is at 1950. A “nonmultiplied” outperformance option would have had a payoff of

$$

\$ 185 - \$ 100 \times \frac {1 9 5 0}{1 3 0 0} = \$ 3 5

$$

The (nonannualized) returns on Level 3 and the S&P 500 index are $85\%$ and $50\%$. The outperform percentage is

$$
1.85^{0.25} - 1.50^{0.25} = 5.957\%
$$

The multiplier is therefore

$$
0.05957 \times \frac{8}{11} \times 100 = 4.332
$$

The payment on the option is

$$
(\$185 - \$100 \times \frac{1950}{1300}) \times 4.332 = \$151.64
$$
\$185 - \$100 \times \frac{1950}{1300} = \$35
$$

The payment on the option is

$$

\left(\mathrm {s} 1 8 5 - \mathrm {s} 1 0 0 \times \frac {1 9 5 0}{1 3 0 0}\right) \times 4. 3 3 2 = \mathrm {s} 1 5 1. 6 4

$$

This option is worth between 0 and 8 times as much as an ordinary option. How can we get an intuitive sense for the value of the difference? We will first examine the effect of the outperformance feature and then consider the effect of the multiplier.

Valuing the Outperformance Feature. First, what would be the value of an ordinary 4-year-to-maturity at-the-money call? Using a volatility of  $25\%$  (which Level 3 says in its 1998 Annual Report is the "expected volatility" of its common stock), and a risk-free rate of  $6\%$ , we obtain an option price of

$$

\operatorname {B S C a l l} (\mathbb {S} 1 0 0, \mathbb {S} 1 0 0, 0. 2 5, 0. 0 6, 4, 0) = \mathbb {S} 3 0. 2 4

$$

The Level 3 1998 Annual Report discusses the valuation of the outperformance option as follows:

The fair value of the options granted was calculated by applying the Black-Scholes method with an S&P 500 expected dividend yield rate of  $1.8\%$  and an expected life of 2.5 years. The Company used a blended volatility rate of  $24\%$  between the S&P 500 expected volatility rate of  $16\%$  and the Level 3 Common Stock expected volatility rate of  $25\%$ . The expected correlation factor of 0.4 was used to measure the movement of Level 3 stock relative to the S&P 500.

To value an outperformance option, we use the Black-Scholes formula but make the following substitutions:

$$

\begin{array}{l} \sigma_ {\text {L e v e l 3}} \rightarrow \hat {\sigma} = \sqrt {\sigma_ {\text {L e v e l 3}} ^ {2} + \sigma_ {\text {S&P}} ^ {2} - 2 \rho \sigma_ {\text {L e v e l 3}} \sigma_ {\text {S&P}}} \\ r \rightarrow \delta_ {\mathrm {S} \&\mathrm {P}} \\ \end{array}

$$ where  $\rho$  is the correlation between Level 3 and S&P 500 returns and  $r$  is the risk-free rate. The net effect on value of granting an outperformance call depends upon the effect of these

substitutions. The "blended" volatility,  $\hat{\sigma}$ , can be greater or less than  $\sigma_{\mathrm{Level}3}$ . In recent years,  $\delta_{S\& P}$  has been less than  $r$ . The calculation Level 3 makes for the blended volatility is

$$
\begin{array}{l} B_{t} = \max\{\min[\max(\text{Continue to Hold}, \text{Convert}), \text{Call}], \text{Convert}\} \\ = \max\left\{\min\left[ \max\left(\underbrace{e^{-rh}[p B_{t+h}^{+} + (1-p) B_{t+h}^{-}]}_{\text{Hold}}, \underbrace{\frac{m q}{n + m q} A_{t}}_{\text{Convert}}\right), \underbrace{K_{t}^{\text{call}}}_{\text{Call}} \right], \right. \\ \left. \underbrace{\frac{m q}{n + m q} A_{t}}_{\text{Convert}} \right\} \tag{24} \\ \end{array}
$$

\operatorname {B S C a l l} (\mathbb {S} 1 0 0, \mathbb {S} 1 0 0, 0. 2 3 6 8, 0. 0 1 8, 4, 0) = \mathbb {S} 2 1. 7 5

$$

This is about  $\frac{2}{3}$  of the value of the ordinary option. This reduction in value is primarily due to replacing the 6\% interest rate with a 1.8\% dividend yield. The volatility reduction by itself lowers the option price only to 29.44.

Accounting for the Multiplier. Now consider the effect of the multiplier. We can approximate the value of the multiplied option using gap options. The multiplier in effect provides additional options as outperformance increases. For every  $\frac{11}{8} = 1\frac{3}{8}\%$  per year by which Level 3 outperforms the S&P 500, the multiplier increases by 1. Thus, we can approximate the effect of the multiplier by valuing a strip of gap outperformance options.

For example, the multiplier is 2 if over 4 years Level 3 outperforms the S&P 500 by a factor of  $1.0275^{4} = 1.1146$ , nonannualized. We can use a set of gap options to approximate the value of the option. If outperformance is between 0 and  $1.375\%$  per year, the option-holder receives nothing. Between  $1.375\%$  and  $2.75\%$ , the option-holder receives one option, etc. Above  $11\%$  per year, the option-holder receives eight options. For example, the option received if performance is between  $2.75\%$  and  $4.125\%$  per year would pay  $S_{\mathrm{Level}3} - S_{\mathrm{S&P}}$  if  $S_{\mathrm{Level}3} > 1.0275^{4} \times S_{\mathrm{S&P}}$ .

Figure 6 shows the payoff of a single nonmultiplied option, plotted against the exact payoff and the payoff approximated by gap options. Note that the exact and gap approximation are not identical, but they are quite close.

Table 2 shows that, using the gap option approximation, the value of the compensation option is about seven times the value of a single option. A more precise binomial valuation using 100 binomial steps gives a value for the option of  \ {156.25}  ,so the gap approximation of  \$ {153}  is quite close. Monte Carlo valuation provides an alternative way to value the Level 3 option.

Finally, it is interesting to note that it may be rational to exercise the Level 3 option early even in the absence of dividends. Suppose the option is close to expiration and the outperformance percentage is slightly above  $11\%$ . If the holder exercises, the multiplier is 8. If the share price rises further, the multiplier remains 8. However, if the share price falls, the multiplier may fall to 7; by waiting to exercise, the option-holder can lose options. This extra loss from a share price decline can provide an incentive to exercise early. For very high prices, there is no incentive to exercise early since the multiplier remains constant. For low prices, the potential increase in the multiplier offsets the potential reduction in the multiplier. Thus, early exercise is potentially optimal only for intermediate prices and close to expiration.

**FIGURE 6**

Payoff to Level 3 compensation option with multiplier, as a function of relative return on Level 3 stock and the S&P 500 index. "Approximate payoff" is the result of buying a strip of eight gap options, designed to approximate the exact payoff.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/9801ec0a2a0f6070ac7e8829cc907a4ffbd76592bf8bbf4e32b26457d08b3065.jpg)

Valuation of Level 3 option approximated as sum of gap options. For each row, the option value is computed as a gap call option (C(S,K_1,K_2,\sigma ,r,T,\delta) = Se^{-\delta T}N(d_1) - K_1e^{-rT}N(d_2)) where S = \100 K_{1} = \100 K_{2} = \100\alpha r = 0.018 \sigma = 0.2368 T = 4 and \delta = 0

**TABLE 2**

<table><tr><td>Multiplier</td><td>Outperformance (α)</td><td>Gap Option Value ($)</td></tr><tr><td>1</td><td>1.056</td><td>21.63</td></tr><tr><td>2</td><td>1.115</td><td>21.28</td></tr><tr><td>3</td><td>1.175</td><td>20.72</td></tr><tr><td>4</td><td>1.239</td><td>19.96</td></tr><tr><td>5</td><td>1.305</td><td>19.04</td></tr><tr><td>6</td><td>1.373</td><td>17.98</td></tr><tr><td>7</td><td>1.444</td><td>16.81</td></tr><tr><td>8</td><td>1.518</td><td>15.58</td></tr><tr><td>Total</td><td></td><td>153.00</td></tr></table>

## 3. THE USE OF COLLARS IN ACQUISITIONS

A common financial transaction is for one firm (the acquirer) to buy another (the target) by buying its common stock. The acquirer can pay for these shares with cash or by exchanging its own shares for target firm shares. Collarlike structures are frequently used in these transactions.

Suppose that under the purchase agreement, each target share will be exchanged for  $x$  shares of the acquirer ( $x$  is the exchange ratio). Once the target agrees to the purchase, the acquisition will generally take time to complete, often 6 months or more.[20] Target shareholders will be concerned that the acquirer's stock will drop before the merger is completed, in which case the dollar value of  $x$  acquirer shares will be lower. To protect against a price drop, it is possible to exchange whatever number of shares have a fixed dollar value. (For example, if the acquirer price is \$100, exchange one share for each target share. If the acquirer price is \$50, exchange two shares for each target share.) However, target shareholders may also wish to participate in share price gains that the acquirer experiences; this suggests fixing the exchange ratio rather than the dollar value. There are four common offer structures that address considerations such as these:[21]

- Fixed stock offer: A offers to pay B a fixed number of A shares per B share.
- Floating stock offer: A offers to pay B however many shares have a given dollar value, based on A's share price just before the merger is completed.
- Fixed collar offer: There is a range for A's share price within which the offer is a fixed stock offer. Outside this range the deal can become a floating stock offer or may be subject to cancellation.
- Floating collar offer: There is a range for A's share price within which the offer is a floating stock offer. Outside this range the deal can become a fixed stock offer or may be subject to cancellation.

Figure 7 illustrates these four types of acquisition offers. As this list shows, it is possible to modify the extent to which the target bears the risk of a change in the stock price of the acquirer. More complicated structures are also possible.

### The Northrop Grumman—TRW merger

Northrop Grumman's 2002 bid for TRW is an example of a merger offer with a collar. In July 2002, Northrop Grumman and TRW agreed that Northrop would pay 7.8 billion for TRW. News headlines stated that Northrop offered " 60 per share," but the offer actually resembled a collar. The number of Northrop Grumman shares to be exchanged for each TRW share would be determined by dividing 60 by the average Northrop Grumman price over the 5 days preceding the close of the merger, with the exchange ratio to be no less than 0.4348 (60/138) and no more than 0.5357 (60/112). Thus, if the price of Northrop Grumman at the merger closing was below 112, TRW shareholders would receive 0.5357 shares. If the price was above 138, TRW shareholders would receive 0.4348 shares. If the price, S, was in between \$112 and \$138, TRW shareholders would receive 60/S, which

**FIGURE 7**

Four acquisition offer types: (a) a fixed stock offer of one share for one share; (b) a floating stock offer for  \$50 worth of acquirer shares; (c) and (d) fixed and floating collar offers with strike prices of\$ 40 and 60.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/536cf403c8f3f85243267226ac9249c6cd170f6bb97f10c207edb9cda19fd8fd.jpg)
(a) Fixed Stock Offer

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/a0282517a1805db3010996a69a47956ac9976e36dd3c452e125e8e483bbda88f.jpg)
(b) Floating Stock Offer

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/7c770873180bbd077440fdd1b03e6ec8fc54884fba3ffa03b7cec4e3282f9182.jpg)
(c) Fixed Collar Offer

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/1b864018a54455f51da4f3968fb046826eacb5b4d0f32b43a5a8cf8a8e566a9d.jpg)
(d) Floating Collar Offer ($) is \$60 worth of shares.[22] The deal closed on December 11, 2002, when the closing price of Northrop Grumman was \$96.50; TRW shareholders therefore received shares worth


$$
0.5357 \times \$96.50 = \$51.69
$$

How would TRW shareholders value the Northrop offer? Suppose that TRW shareholders were certain the merger would occur at time  $T$ , but uncertain about the future Northrop Grumman stock price,  $S$ . TRW shareholders could then value the offer by noting that the offer is equivalent to buying 0.5357 shares of Northrop Grumman, selling 0.5357 112-strike calls, and buying 0.4348 138-strike calls. In addition, the TRW shareholders would not receive Northrop dividends paid prior to closing and would continue to receive

**FIGURE 8**

Value of Northrop Grumman offer for TRW at closing of the merger and with  $4\frac{1}{2}$  months until closing.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/daf401728bea3616a7b53d318116d425424c97c99c2ffa8331953ca6fda08a15.jpg)

TRW dividends. The time  $t$  value of TRW shares would then be

$$

\begin{array}{l} 0. 5 3 5 7 \times \left[ S e ^ {- \delta (T - t)} - \operatorname {B S C a l l} (S, 1 1 2, \sigma , r, T - t, \delta) \right] \tag {28} \\ + 0. 4 3 4 8 \times \operatorname {B S C a l l} (S, 1 3 8, \sigma , r, T - t, \delta) + \mathrm {P V} _ {t, T} (\text {T R W D i v i d e n d s}) \\ \end{array}

$$

If the exchange ratio had been fixed, then the TRW share would simply be a fractional prepaid forward for Northrop, plus expected TRW dividends over the life of the offer.

Figure 8 graphs the value of the Northrop Grumman offer for one TRW share, as a function of the Northrop Grumman share price. The figure depicts the value of the offer both at closing and assuming there are 5 months to expiration.[23] Because of the structure of the offer, the value of a TRW share could either exceed or be less than the expiration value.

Figure 9 depicts equation (28) using the historical Northrop Grumman stock price from July to December 2002, assuming that the offer would close on December 11.[24] The theoretical value of a TRW share under the terms of the offer is consistently greater than the market price of a TRW share. This is what we would expect to see, since in order to induce the target company to accept an offer, the acquirer generally has to offer a price greater than the perceived value of the target as a stand-alone company. Since there is some chance the merger might not occur, the target share price is below the value of the offer. The difference between the value of a TRW share and the theoretical value of the offer declined toward zero as December approached. Had the merger been cancelled for some reason, the value of a TRW share would have diverged from the value under the terms of the offer.

**FIGURE 9**

Panel (a) graphs equation (27) and the TRW stock price from July to December. Panel (b) graphs the absolute difference between the two lines in panel (a).

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/924e87356a16df046c1ec1a25d8cb2a60fc885c9a3b68e8318bbf1780819a345.jpg)
(a)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/e141acb7a6014e0f9197ea6ad046a206cf6d4945973a0b96fd766f98f0cb2bae.jpg)
(b)

Risk arbitrageurs take positions in the two stocks in order to speculate on the success or failure of the merger.[25] Equation (27) tells us that the offer is equivalent to a portfolio of Northrop shares and options. Thus, using the option replication technique, we can hold Northrop shares and borrowing or lending to synthetically create a position equivalent to the offer. Because the price of TRW is less than the offer value, an arbitrageur speculating that the merger would succeed could then take a long position in TRW shares and a short position in the offer, short-selling delta shares of Northrop. If the offer succeeds, the position earns the difference in price depicted in Figure 9; if the offer fails, the difference should diverge and the arbitrageur would lose money.

## CHAPTER SUMMARY

Three corporate contexts in which options appear, either explicitly or implicitly, are capital structure (debt, equity, and warrants), compensation, and acquisitions.

If we view the assets of the firm as being like a stock, then debt and equity can be valued as options with the assets of the firm as the underlying asset. Viewing corporate securities as options provides a natural way to measure bankruptcy risk, and illuminates conflicts between bondholders and stockholders.

Compensation options are an explicit use of options by corporations. They exhibit a variety of complications, some naturally occurring (early exercise decisions by risk-averse employees) and some created by the issuer (repricing, reloads, outperformance, and multipliers). For this reason they provide an interesting context in which to use the exotic pricing formulas.

Offers by one firm to purchase another sometimes have embedded collars. The Grumman offer to buy TRW was an example of this.

## FURTHER READING

The idea that debt and equity are options was first pointed out by Black and Scholes (1973). Merton (1974, 1977) analyzed the pricing of perpetual debt and demonstrated that the Modigliani-Miller theorem holds even with (costless) bankruptcy. Two principal applications of this idea are the determination of the fair yield on risky debt and the assessment of bankruptcy probabilities. Galai and Masulis (1976) derived the link between the return on assets and the return on the firm's stock.

The Bank of International Settlements in Basel (http://bis.org) is the international body promulgating official recommendations and rules for bank capital and liquidity requirements, and so forth. Papers that discuss issues related to bank capital are Flannery (2005), Admati et al. (2010), and McDonald (2012).

The discussion of warrants and convertible bonds in this chapter assumes that the options are European. With American warrants the optimal exercise strategy can be more complicated than with European options. The reason is that exercise alters the assets of the firm. The problem of optimal American warrant exercise is studied by Emanuel (1983), Constantinides (1984), and Spatt and Sterbenz (1988). McDonald (2004) examines the tax implications of warrant issues, including put warrants. Complications also arise with convertible bonds, which in practice are almost always callable. Thus, valuing a convertible bond requires understanding the call strategy. Classic papers studying the pricing of convertibles include Brennan and Schwartz (1977) and Ingersoll (1977). Harris and Raviv (1985) discuss how asymmetric information affects the decision to call the bond, and Stein (1992) discusses the decision to issue convertibles in the first place. Finally, there is a large empirical literature on the convertible call decision; for example, see Asquith (1995). Guntay et al. (2004) examine the decision to issue callable bonds.

Papers on compensation options include Saly et al. (1999), Johnson and Tian (2000a), and Johnson and Tian (2000b). Repricing is studied by Chance et al. (2000) and Acharya et al. (2000). Petrie (2000) examines the use of collars in acquisitions.
