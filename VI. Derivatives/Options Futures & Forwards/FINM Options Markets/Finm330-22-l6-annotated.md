---
title: Financial Mathematics 33000
parent_directory: FINM Options Markets
formatted: "2025-12-21 02:20:00 PM"
formatter_model: grok-code-fast-1
cli_tool: opencode
primary_tags:
   - black scholes model
   - martingale measure
   - girsanovs theorem
   - option pricing
secondary_tags:
   - fundamental theorem
   - continuous time
   - risk neutral valuation
   - ito processes
   - stochastic calculus
   - lognormal distribution
cssclasses: academia
---

# Financial Mathematics 33000

# Lecture 6

Roger Lee

2022 November 9

Fundamental theorem in continuous time

Black-Scholes

#### Fundamental theorem for continuous time Itô processes

$\exists$  equivalent martingale measure  $\mathbb{P} \Rightarrow \mathrm{No}$  arb

### Proof:

Given: under  $\mathbb{P}$ , each member of the discounted asset prices

$$
\frac{1}{B_{t}} \mathbf{X}_{t} := \left(\frac{X_{t}^{1}}{B_{t}}, \frac{X_{t}^{2}}{B_{t}}, \dots , \frac{X_{t}^{N}}{B_{t}}\right)
$$

is a martingale Itô process. Need to prove: No arbitrage

For any self-financing trading strategy  $\Theta_t$  with value  $V_t$ , we'll show that  $V / B$  is a martingale, where  $V_t \coloneqq \Theta_t \cdot \mathbf{X}_t$ .

After we show this, we're done, by the familiar argument:

If  $V_{0} = 0$ , then  $V_{0} / B_{0} = 0$ , hence  $\mathbb{E}(V_T / B_T) = 0$ .

If also  $V_{T} \geq 0$ , then  $V_{T} / B_{T} \geq 0$ , so  $V_{T} / B_{T} = 0$ , hence  $V_{T} = 0$

Conclusion:  $\Theta$  is not an arbitrage.

### Fundamental theorem

To see that  $V / B$  is a martingale, let  $A_{t} \coloneqq 1 / B_{t}$ . Then

$$
\begin{array}{l} \mathrm {d} \left(V _ {t} / B _ {t}\right) = \mathrm {d} \left(A _ {t} V _ {t}\right) = V _ {t} \mathrm {d} A _ {t} + A _ {t} \mathrm {d} V _ {t} + \mathrm {d} A _ {t} \mathrm {d} V _ {t} \\ = \boldsymbol {\Theta} _ {t} \cdot \mathbf {X} _ {t} \mathrm {d} A _ {t} + A _ {t} (\boldsymbol {\Theta} \cdot \mathrm {d} \mathbf {X} _ {t}) + (\mathrm {d} A _ {t}) (\boldsymbol {\Theta} _ {t} \cdot \mathrm {d} \mathbf {X} _ {t}) \\ = \boldsymbol {\Theta} _ {t} \cdot \left(\mathbf {X} _ {t} \mathrm {d} A _ {t} + A _ {t} \mathrm {d} \mathbf {X} _ {t} + \mathrm {d} A _ {t} \mathrm {d} \mathbf {X} _ {t}\right) \\ = \boldsymbol {\Theta} _ {t} \cdot \mathrm {d} (A _ {t} \mathbf {X} _ {t}) = \sum_ {n = 1} ^ {N} \theta_ {t} ^ {n} \mathrm {d} (A _ {t} X _ {t} ^ {n}) \\ \end{array}
$$

Since each  $A_{t}X_{t}^{n}$  is a martingale,  $V / B$  is a martingale also.

$\triangleright$  Idea: A martingale is the cumulative PnL from betting on zero- $\mathbb{E}$  games. Varying your bet size across games and across time still produces, collectively, a zero expectation game. Can't risklessly make something from nothing by playing zero expectation games.

### Fundamental theorem

$$
p (A) =
$$

$$
P R I C E o f
$$

$$
\mathrm {c o n t r a d} + \mathrm {d}
$$

$$
\mathrm {N o} \operatorname {a r b} \Rightarrow \exists \text {e q u i v a l e n t m a r t i n g a l e m e a s u r e} \mathbb {P}:
$$

Intuition of proof: Same as in L2, L3.

$$
p a y s: \left\{ \begin{array}{l l} \$ 1 & F A \\ \$ 0 & i F, \end{array} \right.
$$

$$
n o t f.
$$

$\triangleright$  Define  $\mathbb{P}$  by defining the  $\mathbb{P}_t$ -probability of an event to be the time- $t$  price, in units of  $B$ , of an ("Arrow-Debreu") asset that pays 1 unit of  $B$  at time  $T$  if the event occurs, else 0. (But what if the A-D asset does not exist and can't be replicated?)  

- Martingale property holds because any asset  $X$  can be replicated by portfolio of  $X_{T}(\omega_{j}) / B_{T}(\omega_{j})$  units of the A-D asset for each  $\omega_{j}$ . Value portfolio by summing quantity  $\times$  price.

$$
\frac {X _ {0}}{B _ {0}} = \sum_ {j = 1} ^ {J} \frac {X _ {T} (\omega_ {j})}{B _ {T} (\omega_ {j})} \cdot \mathbb {P} (\omega_ {j}) = \mathbb {E} \bigg (\frac {X _ {T}}{B _ {T}} \bigg)
$$

### Fundamental theorem: Comments

$\triangleright$  Idea: The  $\mathbb{P}$  probability of an event is simply the price (in units of  $B$ ) of a asset that pays 1 unit of  $B$  iff that event occurs.  
Note: In this entire proof, we never assumed that  $B$  is the bank account, and never assumed that it is riskless. It is enough to assume that  $B$  is some asset with positive price process.

In some applications, it may be easier to normalize using some such asset (some numeraire) that is not the bank account.

By default, if we say risk-neutral or martingale measure without specifying the numeraire, it is understood to be the bank account.

## Option pricing

In L5, we did this by replication.

In L6, let's do it by martingale methods: Option price equals the expected discounted payoff, under a martingale measure  $\mathbb{P}$ . Why?

By the Fundamental theorem.

How do we calculate  $\mathbb{P}$ -expectations (denoted by  $\mathbb{E}$ )?

In many cases, a model is already specified under risk-neutral measure. Then simply work directly under the given measure.

But what if the model is specified under physical measure?

We know how  $S$  behaves with respect to physical measure  $\mathsf{P}$ . How does  $S$  behave wrt  $\mathbb{P}$ ? All risk driven by  $W$ . So let's see what changing measure does to  $W$ , then find what it does to  $S$ .

## Girsanov's theorem

Theorem: If  $W$  is a Brownian motion under  $\mathsf{P}$

and if  $\mathbb{P}$  is a probability measure on  $\mathcal{F}_T^W$  that is equivalent to  $\mathsf{P}$ , then there exists an adapted process  $\lambda$  such that for all  $t\in [0,T]$

$$
\tilde {W} _ {t} := W _ {t} + \int_ {0} ^ {t} \lambda_ {s} \mathrm {d} s
$$

is Brownian motion under  $\mathbb{P}$ . Therefore:

$\triangleright \mathrm{d}\tilde{W}_t = \mathrm{d}W_t + \lambda_t\mathrm{d}t$  , and  $\tilde{W}$  is BM under  $\mathbb{P}$  but not under  $\mathsf{P}$  
$\triangleright \mathrm{d}W_{t} = \mathrm{d}\tilde{W}_{t} - \lambda_{t}\mathrm{d}t$  , and  $W$  is BM under  $\mathsf{P}$  but not under  $\mathbb{P}$

### Girsanov: an analogy

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/ae7bf53d-dab7-4e97-b78c-bcaf85f129df/efde5452a487791e9daf00ccb08223cc8f8d55c5be572bc1cc7fb514c89b4c56.jpg)

No proof, but here is an analogy on a sample space  $\Omega = \{\omega_1,\dots ,\omega_6\}$  Let  $X(\omega_{1}) = X(\omega_{2}) = X(\omega_{3}) = 10$ $X(\omega_4) = X(\omega_5) = X(\omega_6) = 25$

Let  $\mathsf{P}(\omega) = 1 / 6$  for each  $\omega$ . Then  $X \sim \mathrm{Uniform}\{10,25\}$  under  $\mathsf{P}$ .  
But if  $\mathbb{P}$  assigns probability

1/12 to each of  $\omega_{1},\omega_{2},\omega_{3}$

and  $1 / 4$  to each of  $\omega_4,\omega_5,\omega_6$

then  $X$  is not Uniform{10,25} under  $\mathbb{P}$

However,  $\tilde{X} := X + \lambda$  is Uniform{10,25} under  $\mathbb{P}$

where  $\lambda (\omega_4)\coloneqq 15$  and  $\lambda (\omega)\coloneqq 0$  for  $\omega \neq \omega_{4}$

$X$  under  $\mathbb{P}$  does not have the same distribution as  $X$  under  $\mathsf{P}$ .

But  $X$  plus drift under  $\mathbb{P}$  has the same distribution as  $X$  under  $\mathsf{P}$ .

### Girsanov: some intuition

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/ae7bf53d-dab7-4e97-b78c-bcaf85f129df/2abadc4acddd7c383b904ce4a4da415ea6e3e13ffe57753173b59f254701db99.jpg)

No proof, but here is some intuition:

$W$  is BM under  $\mathsf{P}$ . After changing measure to  $\mathbb{P}$ , the  $W$  may not still be BM, but it is plausible that it is a martingale plus drift:

$$
\mathrm {d} W _ {t} = \lambda_ {t} \mathrm {d} t + \sigma_ {t} \mathrm {d} B _ {t}
$$

where  $B$  is a BM under  $\mathbb{P}$ , and  $\sigma_t$  is some adapted process. So

$$
\left(\mathrm {d} W _ {t}\right) ^ {2} = \left(\lambda_ {t} \mathrm {d} t + \sigma_ {t} \mathrm {d} B _ {t}\right) ^ {2}
$$

hence  $\mathrm{dt} = \sigma_t^2\mathrm{dt}$ , so  $\sigma_{t} = \pm 1$ . Define  $\tilde{W}$  by  $\mathrm{d}\tilde{W}_t = \sigma_t\mathrm{d}B_t$

Then  $W$  can be shown to be  $\mathbb{P}$ -BM. And, as claimed,

$$
\mathrm {d} W _ {t} = \lambda_ {t} \mathrm {d} t + \mathrm {d} \tilde {W} _ {t}.
$$

Fundamental theorem in continuous time

Black-Scholes

## Black-Scholes via martingale approach

Black-Scholes dynamics

$$
\mathrm {d} B _ {t} = r B _ {t} \mathrm {d} t \quad B _ {0} = 1
$$

$$
\mathrm {d} S _ {t} = \mu S _ {t} \mathrm {d} t + \sigma S _ {t} \mathrm {d} W _ {t} \quad S _ {0} > 0
$$

where  $W$  is BM under physical measure  $\mathsf{P}$ , and  $\sigma > 0$ .

No arb implies that  $\exists \mathbb{P}$ , equivalent to  $\mathsf{P}$ , such that  $S / B$  is a  $\mathbb{P}$ -MG.

Hence by Girsanov,  $\exists \lambda$  such that  $\tilde{W}_t\coloneqq W_t + \int_0^t\lambda_s\mathrm{d}s$  is  $\mathbb{P}$ -BM.

Substitute  $\mathrm{d}\tilde{W}_t = \mathrm{d}W_t + \lambda_t\mathrm{d}t$  into the SDE of  $S$ :

$$
\begin{array}{l} \mathrm {d} S _ {t} = \mu S _ {t} \mathrm {d} t + \sigma S _ {t} (\mathrm {d} \tilde {W} _ {t} - \lambda_ {t} \mathrm {d} t) \\ = (\mu - \lambda_ {t} \sigma) S _ {t} d t + \sigma S _ {t} d \tilde {W} _ {t} \\ \end{array}
$$

But can we say anything about  $\mu -\lambda_t\sigma$

### Under $\mathbb{P}$ , every tradeable asset $X$ has drift $rX$

This page does not assume that  $X$  is a GBM.

Assume only that  $X$  is an Itô process.

Under  $\mathbb{P}$ , the discounted price  $X / B$  is a MG, hence has zero drift.  
By Itô's rule,  $X / B$  has dynamics

$$
\begin{array}{l} \mathrm {d} \left(X _ {t} / B _ {t}\right) = \mathrm {d} \left(e ^ {- r t} X _ {t}\right) = e ^ {- r t} \mathrm {d} X _ {t} - r e ^ {- r t} X _ {t} \mathrm {d} t + \mathrm {d} \left(e ^ {- r t}\right) \mathrm {d} X _ {t} \\ = e ^ {- r t} \left(\mathrm {d} X _ {t} - r X _ {t} \mathrm {d} t\right), \\ \end{array}
$$

so  $\mathrm{d}X_{t} - rX_{t}\mathrm{d}t$  has no drift term.

$\triangleright$  Therefore the drift term of  $\mathrm{d}X_{t}$  must be  $rX_{t}\mathrm{d}t$

### Under $\mathbb{P}$ , the GBM $S$ is still GBM, but with drift $r$

Applying this to  $S$ , we have  $(\mu - \lambda_t \sigma) S_t = r S_t$ , and

$$
\mathrm {d} S _ {t} = r S _ {t} \mathrm {d} t + \sigma S _ {t} \mathrm {d} \tilde {W} _ {t}
$$

where  $\tilde{W}$  is  $\mathbb{P}$ -BM.

Rate of growth changes from  $\mu$  to  $r$ . Volatility stays the same.

By L4, therefore, under  $\mathbb{P}$ , conditional on  $\mathcal{F}_t^W$

$$
\left| \log S _ {T} \sim \text {N o r m a l} \left(\log S _ {t} + (r - \sigma^ {2} / 2) (T - t), \sigma^ {2} (T - t)\right) \right.
$$

Compare: under  $\mathsf{P}$ , conditional on  $\mathcal{F}_t^W$ ,

$$
\log S _ {T} \sim \text {N o r m a l} (\log S _ {t} + (\mu - \sigma^ {2} / 2) (T - t), \sigma^ {2} (T - t))
$$

## Lognormal distribution

Here's a more general calculation, allowing different rates for growth and discounting, on an underlying  $X$ , not necessarily a stock price.

Let  $t < T$ . Let  $R_{grow}$  and  $r$  be constants.  
$\triangleright$  Assume that (conditional on the time-  $t$  information  $\mathcal{F}_t$ ) the random variable  $X_{T}$  has lognormal  $\mathbb{P}$ -distribution

$$
\log X _ {T} \sim \operatorname {N o r m a l} (\log X _ {t} + (R _ {g r o w} - \sigma^ {2} / 2) (T - t), \sigma^ {2} (T - t))
$$

where  $X_{t} > 0$ , and  $\sigma > 0$  is a constant.

One way that this distribution could arise is from the dynamics

$$
\mathrm {d} X _ {t} = R _ {g r o w} X _ {t} \mathrm {d} t + \sigma X _ {t} \mathrm {d} W _ {t} \qquad X _ {0} > 0
$$

where  $W$  is  $\mathbb{P}$  -BM.

## Conclusion: the Black-Scholes call price formula

Then, letting  $\mathbb{E}$  denote expectation wrt  $\mathbb{P}$ ,

$$
\boxed {e ^ {- r (T - t)} \mathbb {E} _ {t} (X _ {T} - K) ^ {+} = C ^ {B S} (X _ {t}, t, K, T, R _ {g r o w}, r, \sigma)}
$$

where the function  $C^{BS}$  is defined for  $X > 0, K > 0, \sigma > 0, t < T$  by

$$
C ^ {B S} (X, t, K, T, R _ {g r o w}, r, \sigma) := e ^ {- r (T - t)} \big [ F N (d _ {1}) - K N (d _ {2}) \big ],
$$

and

$$
F := X e ^ {R _ {g r o w} (T - t)} = \mathbb {E} _ {t} X _ {T}
$$

and

$$
d _ {1, 2} := d _ {+, -} := \frac {\log (F / K)}{\sigma \sqrt {T - t}} \pm \frac {\sigma \sqrt {T - t}}{2}.
$$

### Proof of formula: decompose $(X_T - K)^+$

$$
\| _ {A} = \left\{ \begin{array}{l l} 1 & \mathrm {i f} A \\ 0 & \mathrm {i f n o t} A \end{array} \right.
$$

Proof: Using the fact that  $x^{+} = x\mathbf{1}_{x > 0}$  for all  $x$

$$
\begin{array}{l} \mathbb {E} _ {t} (X _ {T} - K) ^ {+} = \mathbb {E} _ {t} (X _ {T} - K) \mathbf {1} _ {X _ {T} > K} \\ = \mathbb {E} _ {t} \left(X _ {T} \mathbf {1} _ {X _ {T} > K}\right) - K \mathbb {E} _ {t} \mathbf {1} _ {X _ {T} > K} \\ = F _ {t} \underbrace {\mathbb {E} _ {t} ((X _ {T} / F _ {t}) \mathbf {1} _ {X _ {T} > K})} _ {\text {w i l l s e t h s i s N (d _ {1})}} - K \underbrace {\mathbb {P} _ {t} (X _ {T} > K)} _ {\text {w i l l s e t h s i s N (d _ {2})}}, \\ \end{array}
$$

where

$$
F _ {t} := X _ {t} e ^ {R _ {g r o w} (T - t)} = \mathbb {E} _ {t} X _ {T}.
$$

To proceed, first note that the event  $X_{T} > K$  is equivalent to

$\log (X_T / F_t) > \log (K / F_t)$ , and that (conditional on time- $t$  information)

$$
\log (X _ {T} / F _ {t}) \sim \operatorname {N o r m a l} (- (\sigma^ {2} / 2) (T - t), \sigma^ {2} (T - t)).
$$

### Proof of formula: Second term of decomposition

Now consider separately each term in the decomposition.

For the second term,

$$
\begin{array}{l} \mathbb {P} _ {t} \left(X _ {T} > K\right) = \mathbb {P} _ {t} \left(\log \left(X _ {T} / F _ {t}\right) > \log \left(K / F _ {t}\right)\right) \\ = \mathbb {P} _ {t} \left(\frac {\log \left(X _ {T} / F _ {t}\right) + \left(\sigma^ {2} / 2\right) (T - t)}{\sigma \sqrt {T - t}}\right) \\ \left. > \frac {\log (K / F _ {t}) + (\sigma^ {2} / 2) (T - t)}{\sigma \sqrt {T - t}}\right) \\ = N \left(- \frac {\log (K / F _ {t}) + (\sigma^ {2} / 2) (T - t)}{\sigma \sqrt {T - t}}\right) \\ = N (d _ {2}) \Big | _ {X = X _ {t}} \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/ae7bf53d-dab7-4e97-b78c-bcaf85f129df/808bbf9e7ca3ce2422cceba2f16dd1c1728459aee474d720d2232f9ce6bdd393.jpg)

### Proof of formula: First term of decomposition

In the first term, we have  $\mathbb{E}_t((X_T / F_t)\mathbf{1}_{X_T > K})$

$$
\begin{array}{l} = \mathbb {E} _ {t} \big [ e ^ {\log (X _ {T} / F _ {t})} \mathbf {1} _ {\log (X _ {T} / F _ {t}) > \log (K / F _ {t})} \big ] \\ = \int_ {\log (K / F _ {t})} ^ {\infty} e ^ {y} \frac {1}{\sqrt {2 \pi \sigma^ {2} (T - t)}} \exp \left(- \frac {(y + (\sigma^ {2} / 2) (T - t)) ^ {2}}{2 \sigma^ {2} (T - t)}\right) \mathrm {d} y \\ = \int_ {\log (K / F _ {t})} ^ {\infty} \frac {1}{\sqrt {2 \pi \sigma^ {2} (T - t)}} \exp \left(- \frac {(y - (\sigma^ {2} / 2) (T - t)) ^ {2}}{2 \sigma^ {2} (T - t)}\right) d y \\ = \int_{\substack{\log (K / F_{t}) - (\sigma^{2} / 2)(T - t)\\ \sigma \sqrt{T - t}}}\frac{1}{\sqrt{2\pi}}\exp \left(-\frac{z^{2}}{2}\right)\mathrm{d}z \\ = N \Bigg (- \frac {\log (K / F _ {t}) - (\sigma^ {2} / 2) (T - t)}{\sigma \sqrt {T - t}} \Bigg) = N (d _ {1}) \Big | _ {X = X _ {t}}, \\ \end{array}
$$

as claimed. The substitution was  $z = \frac{y - (\sigma^2 / 2)(T - t)}{\sigma\sqrt{T - t}}$  so  $\mathrm{d}z = \frac{1}{\sigma\sqrt{T - t}}\mathrm{d}y$

## Probabilistic interpretation of $N(d_{1})$ and $N(d_{2})$

In summary,

$$
\begin{array}{l} C _ {t} = e ^ {- r (T - t)} \bigg (F _ {t} \mathbb {E} _ {t} \bigg [ \frac {X _ {T}}{F _ {t}} \mathbf {1} _ {S _ {T} > K} \bigg ] - K \mathbb {P} _ {t} (S _ {T} > K) \bigg) \\ = e ^ {- r (T - t)} \Bigl (F _ {t} N (d _ {1}) - K N (d _ {2}) \Bigr) \\ \end{array}
$$

The  $N(d_2)$  is the  $\mathbb{P}_t$  that the call option expires in the money.

(So  $e^{-r(T - t)}N(d_2) = \mathrm{time - }t$  price of  $K$ -strike  $T$ -expiry binary call.)

The  $N(d_{1})$  is the "share measure"  $\mathbb{P}_t^S$  that the call expires ITM.

And time- $t$  price of asset-or-nothing call paying  $X_{T}\mathbf{1}_{X_{T} > K}$  is

$e^{-r(T - t)}F_{t}N(d_{1})$ . If  $X = S$  is a no-dividend stock, this is  $S_{t}N(d_{1})$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/ae7bf53d-dab7-4e97-b78c-bcaf85f129df/de10000bb7dc1ce696372e73e5643267ac0635c90b3c07a747e790ae52be89d4.jpg)

## Probabilistic analysis of effect of $r$

Increasing  $r$ , while keeping everything else fixed, has what effect on time-0 call prices?

Martingale methods make the answer clear:

$$
\begin{array}{l} C _ {0} = e ^ {- r T} \mathbb {E} C _ {T} \\ = e ^ {- r T} \mathbb {E} (S _ {T} - K) ^ {+} \\ = e ^ {- r T} \mathbb {E} (S _ {0} e ^ {(r - \sigma^ {2} / 2) T + \sigma \tilde {W} _ {T}} - K) ^ {+} \\ = \mathbb {E} \left(S _ {0} e ^ {\left(- \sigma^ {2} / 2\right) T + \sigma \tilde {W} _ {T}} - K e ^ {- r T}\right) ^ {+} \\ \end{array}
$$

If  $r \uparrow$  then  $c_{0}r$

## Probabilistic intuition about impact of $\sigma$

The vega, at time-  $t$ , of an asset or portfolio with value  $C_t = C(S_t, t; \sigma)$  is  $\frac{\partial C}{\partial \sigma}(S_t, t; \sigma)$ . For a call or put in the B-S model,

$$
\operatorname {v e g a} := \frac {\partial C ^ {B S}}{\partial \sigma} = S \sqrt {T - t} N ^ {\prime} (d _ {1}) > 0
$$

Why positive? Let's take  $r = 0$ .

For a linear payout  $a + bS_T$ , the time-0 value is  $a + bS_0$  regardless of  $\sigma$ . So vega for a linear payout is zero.  
For a complex payout  $f(S_T)$ , such as a call, the payout dominates the linear tangent to  $f$  at  $S_0$ . So the contract's time-0 value is bigger than  $f(S_0)$ . By how large the  $\sigma$ , the larger the contract's time-0 value chance that  $S$  goes to where  $f >$  linear. Large  $\sigma \Rightarrow$  more

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/ae7bf53d-dab7-4e97-b78c-bcaf85f129df/c4228d27cbd5f7cac0f2020d1aaebcd42a26edcd3c62f57ad2d51f1657a3b24e.jpg)

## Vega of a call

Vega of a call, plotted against  $S_{t}$ , for  $T - t = 1$ , and  $T - t = 0.25$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/ae7bf53d-dab7-4e97-b78c-bcaf85f129df/0106e535e71bed7817e12f6c440d8b6a1f4ebee6431291f383dd931771272880.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/ae7bf53d-dab7-4e97-b78c-bcaf85f129df/adb9607c162b1e0baa672e42fa0a9c51be87755374bcaa39513960df462601e7.jpg)

Under B-S dynamics, vega of a call is positive.

## Probabilistic analysis of joint effect of $\sigma$ and $T$

Halving  $\sigma$  and quadrupling  $T$ , while keeping everything else fixed, has what effect on time-0 call prices?

$$
\log \frac {S _ {T}}{S _ {0}} \sim N o r m a l \left(\left(r - \frac {\sigma^ {2}}{2}\right) T, \sigma^ {2} T\right)
$$

$$
\sigma \rightarrow \frac {5}{2}
$$

$$
T \rightarrow 4 T
$$

$$
A B \cdot e ^ {- r T} \rightarrow e ^ {- 4 r T}
$$

$$
(r - \frac {(0 + 2) ^ {2}}{3}) 4 \pi
$$

$$
= (4 r - \frac {r ^ {2}}{2}) T
$$

$$
\mathrm {E q u a n t e n t} \Rightarrow r \rightarrow 4 r. \quad\begin{array}{l}{\mathrm {C o T}}\\{\mathrm {i f r > 0}}\end{array}
$$

## Appendix

On an interval  $I$  a function  $f: I \to \mathbb{R}$  is said to be convex if its graph lies on or below all of its chords: for all  $x, y \in I$ , all  $\alpha \in [0,1]$ ,

$$
f (\alpha x + (1 - \alpha) y) \leq \alpha f (x) + (1 - \alpha) f (y)
$$

Properties:

A twice differentiable function  $f$  is convex iff  $f'' \geq 0$  everywhere.  
A convex function's graph lies on or above all of its tangents.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/ae7bf53d-dab7-4e97-b78c-bcaf85f129df/fa8677d903da06d953a3b0190790437f7416ca694331ff0bc9945dea384daa42.jpg)

# Jensen's inequality:

If  $f$  is convex on  $I$  and  $X$  is an integrable random variable taking values in  $I$  then  $\mathbb{E}f(X) \geq f(\mathbb{E}X)$ . Johan Jensen (1859-1925)