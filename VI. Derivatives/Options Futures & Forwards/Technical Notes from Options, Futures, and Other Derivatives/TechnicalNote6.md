---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: "Technical Note No. 6*  "
linter-yaml-title-alias: "Technical Note No. 6*  "
---

# Technical Note No. 6*  

Options, Futures, and Other Derivatives  
John Hull

# Differential Equation for Price of a Derivative on a Stock Providing a Known Dividend Yield

Define  $f$  as the price of a derivative dependent on a stock that provides a dividend yield at rate  $q$ . We suppose that the stock price,  $S$ , follows the process

$$
d S = \mu S d t + \sigma S d z
$$

where  $dz$  is a Wiener process. The variables  $\mu$  and  $\sigma$  are the expected growth rate in the stock price and the volatility of the stock price, respectively. Because the stock price provides a dividend yield,  $\mu$  is only part of the expected return on the stock.<sup>1</sup>

Because  $f$  is a function of  $S$  and  $t$ , it follows from Ito's lemma that

$$
d f = \left(\frac {\partial f}{\partial S} \mu S + \frac {\partial f}{\partial t} + \frac {1}{2} \frac {\partial^ {2} f}{\partial S ^ {2}} \sigma^ {2} S ^ {2}\right) d t + \frac {\partial f}{\partial S} \sigma S d z
$$

Similarly to the procedure described in the text for a non-dividend paying stock, we can set up a portfolio consisting of

$$
\begin{array}{l} - 1: \quad \text {d e r i v a t i v e} \\ + \frac {\partial f}{\partial S}: \quad \text {s t o c k} \\ \end{array}
$$

If  $\Pi$  is the value of the portfolio,

$$
\Pi = - f + \frac {\partial f}{\partial S} S \tag {1}
$$

and the change,  $\Delta \Pi$ , in the value of the portfolio in a time period  $\Delta t$  is as given by:

$$
\Delta \Pi = \left(- \frac {\partial f}{\partial t} - \frac {1}{2} \frac {\partial^ {2} f}{\partial S ^ {2}} \sigma^ {2} S ^ {2}\right) \Delta t
$$

In time  $\Delta t$  the holder of the portfolio earns capital gains equal to  $\Delta \Pi$  and dividends on the stock position equal to

$$
q S \frac {\partial f}{\partial S} \Delta t
$$

Define  $\Delta W$  as the change in the wealth of the portfolio holder in time  $\Delta t$ . It follows that

$$
\Delta W = \left(- \frac {\partial f}{\partial t} - \frac {1}{2} \frac {\partial^ {2} f}{\partial S ^ {2}} \sigma^ {2} S ^ {2} + q S \frac {\partial f}{\partial S}\right) \Delta t \tag {2}
$$

Because this expression is independent of the Wiener process, the portfolio is instantaneously riskless. Hence

$$
\Delta W = r \Pi \Delta t \tag {3}
$$

Substituting from equations (1) and (2) into equation (3) gives

$$
\left(- \frac {\partial f}{\partial t} - \frac {1}{2} \frac {\partial^ {2} f}{\partial S ^ {2}} \sigma^ {2} S ^ {2} + q S \frac {\partial f}{\partial S}\right) \Delta t = r \left(- f + \frac {\partial f}{\partial S} S\right) \Delta t
$$

so that

$$
\frac {\partial f}{\partial t} + (r - q) S \frac {\partial f}{\partial S} + \frac {1}{2} \sigma^ {2} S ^ {2} \frac {\partial^ {2} f}{\partial S ^ {2}} = r f
$$

This is the equation in the text.