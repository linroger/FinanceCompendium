---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Proof of Selected Results
linter-yaml-title-alias: Proof of Selected Results
---

# Proof of Selected Results

# A.1 Proposition 1.3 in Section 1.C

Proof. Recall the first-order conditions

$$
\begin{array}{l} \text {w . r . t .} c _ {H, t}: \quad \delta^ {t} \pi u ^ {\prime} (c _ {t}) \alpha \left(\frac {c _ {F , t}}{c _ {H , t}}\right) ^ {1 - \alpha} = \zeta_ {H, t} \\ \begin{array}{l l} \text {w . r . t .} c _ {H, t} ^ {*}: & \delta^ {t} (1 - \pi) u ^ {\prime} (c _ {t} ^ {*}) (1 - \alpha) \left(\frac {c _ {F , t} ^ {*}}{c _ {H , t} ^ {*}}\right) ^ {\alpha} = \zeta_ {H, t} \end{array} \\ \text {w . r . t .} c _ {F, t}: \quad \delta^ {t} \pi u ^ {\prime} (c _ {t}) (1 - \alpha) \left(\frac {c _ {H , t}}{c _ {F , t}}\right) ^ {\alpha} = \zeta_ {F, t} \\ \text {w . r . t .} c _ {F, t} ^ {*}: \quad \delta^ {t} (1 - \pi) u ^ {\prime} \left(c _ {t} ^ {*}\right) \alpha \left(\frac {c _ {H , t} ^ {*}}{c _ {F , t} ^ {*}}\right) ^ {1 - \alpha} = \zeta_ {F, t} \\ \end{array}
$$

multiply the first and the last first-order conditions and divide it by the product of the second and third first-order conditions to get

$$
\begin{array}{l} \frac {c _ {F , t}}{c _ {F , t} ^ {*}} \frac {c _ {H , t} ^ {*}}{c _ {H , t}} \frac {\alpha^ {2}}{(1 - \alpha) ^ {2}} = 1 \\ \Rightarrow \frac {\alpha}{1 - \alpha} \frac {c _ {F , t}}{c _ {F , t} ^ {*}} = \frac {1 - \alpha}{\alpha} \frac {c _ {H , t}}{c _ {H , t} ^ {*}} \\ \end{array}
$$

Let

$$
\begin{array}{l} k _ {t} \stackrel {\text {d e f}} {=} \frac {\alpha}{1 - \alpha} \frac {c _ {F , t}}{c _ {F , t} ^ {*}} = \frac {1 - \alpha}{\alpha} \frac {c _ {H , t}}{c _ {H , t} ^ {*}} \\ \Rightarrow c _ {H, t} = \frac {\alpha}{1 - \alpha} k _ {t} c _ {H, t} ^ {*}, \quad c _ {F, t} = \frac {1 - \alpha}{\alpha} k _ {t} c _ {F, t} ^ {*} \\ \end{array}
$$

Plugging the equations above into the market clearing conditions yields

$$
\begin{array}{l} c _ {H, t} = \frac {\alpha k _ {t}}{(1 - \alpha) + \alpha k _ {t}} y _ {t}, \quad c _ {H, t} ^ {*} = \frac {1 - \alpha}{(1 - \alpha) + \alpha k _ {t}} y _ {t}, \\ c _ {F, t} = \frac {(1 - \alpha) k _ {t}}{\alpha + (1 - \alpha) k _ {t}} y _ {t} ^ {*}, \quad c _ {F, t} ^ {*} = \frac {\alpha}{\alpha + (1 - \alpha) k _ {t}} y _ {t} ^ {*}, \\ \end{array}
$$

Divide the first first-order condition by the second to get

$$
\frac {\pi}{1 - \pi} \frac {u ^ {\prime} (c _ {t})}{u ^ {\prime} (c _ {t} ^ {*})} \frac {\alpha}{1 - \alpha} \left(\frac {c _ {F , t}}{c _ {H , t}}\right) ^ {1 - \alpha} \left(\frac {c _ {H , t} ^ {*}}{c _ {F , t} ^ {*}}\right) ^ {\alpha} = 1.
$$

where  $c_{H,t}, c_{F,t}, c_{H,t}^{*}$  and  $c_{F,t}^{*}$  are functions of  $k_{t}$ . Hence, we can solve

$k_{t}$  via the implicit equation above.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/476a78eff9254374dc2295a2740987f5e06c2c33fb23bded0c010aa770899980.jpg)

# A.2 Proposition 1.4 in Section 1.D

Proof. Under symmetric steady state,  $\bar{y}^{*} = \bar{y}$ ,  $\bar{e} = 0$ ,  $\bar{c}_{H} = \bar{c}_{F}^{*}$ ,  $\bar{c}_{F} = \bar{c}_{H}^{*}$  and

$$
\begin{array}{l} \bar {c} _ {H} + \bar {c} _ {H} ^ {*} = \bar {y}, \quad \bar {c} _ {F} + \bar {c} _ {F} ^ {*} = \bar {y} ^ {*}, \\ \bar {p} \bar {c} _ {H} = \alpha \bar {c}, \quad \bar {p} ^ {*} \bar {c} _ {F} ^ {*} = \alpha \bar {c} ^ {*}, \\ \end{array}
$$

which implies  $\bar{c}_H = \bar{c}_F^* = \alpha \bar{y},\bar{c}_H^* = \bar{c}_F = (1 - \alpha)\bar{y},\bar{c} = \bar{c}^* =$

$\alpha^{\alpha}(1 - \alpha)^{1 - \alpha}\bar{y}$  and  $\bar{p} = \bar{p}^{*} = \alpha^{\alpha}(1 - \alpha)^{1 - \alpha}$ . The goods market clearing

conditions plus the equilibrium conditions (1.4) and (1.5) imply

$$
\begin{array}{l} p _ {t} y _ {t} = \alpha c _ {t} + (1 - \alpha) c _ {t} ^ {*} \exp (- e _ {t}), \\ p _ {t} ^ {*} y _ {t} ^ {*} = \alpha c _ {t} ^ {*} + (1 - \alpha) c _ {t} \exp (e _ {t}). \\ \end{array}
$$

Log linearize around the symmetric steady state to obtain

$$
\begin{array}{l} \bar {p} \bar {y} (\log p _ {t} - \log \bar {p} + \log y _ {t} - \log \bar {y}) = \alpha \bar {c} (\log c _ {t} - \log \bar {c}) + (1 - \alpha) \bar {c} ^ {*} \exp (- \bar {e}) (\log c _ {t} ^ {*} - \log \bar {c} ^ {*} - e _ {t} + \bar {e}) \\ \bar {p} ^ {*} \bar {y} ^ {*} (\log p _ {t} ^ {*} - \log \bar {p} ^ {*} + \log y _ {t} ^ {*} - \log \bar {y}) = \alpha \bar {c} ^ {*} (\log c _ {t} ^ {*} - \log \bar {c} ^ {*}) + (1 - \alpha) \bar {c} \exp (\bar {e}) (\log c _ {t} - \log \bar {c} + e _ {t} - \bar {e}) \\ \end{array}
$$

subtracting the second equation from the first and plugging in steady

states yields

$$
\bar {p} \bar {y} (\log y _ {t} - \log y _ {t} ^ {*}) + \bar {p} \bar {y} (\log p _ {t} - \log p _ {t} ^ {*}) = (2 \alpha - 1) \bar {c} (\log c _ {t} - \log c _ {t} ^ {*}) - 2 (1 - \alpha) \bar {c} e _ {t}
$$

recall that  $e_t = (2\alpha - 1)tot_t$ , where  $tot_t = \log p_t - \log p_t^* + e_t$ , hence

$\log p_t - \log p_t^* = (2 - 2\alpha) / (2\alpha -1)e_t$  , and

$$
\begin{array}{l} \bar {p} \bar {y} \left(\log y _ {t} - \log y _ {t} ^ {*}\right) + \bar {p} \bar {y} \frac {2 - 2 \alpha}{2 \alpha - 1} e _ {t} = (2 \alpha - 1) \bar {c} \left(\log c _ {t} - \log c _ {t} ^ {*}\right) - 2 (1 - \alpha) \bar {c} e _ {t} \\ (2 \alpha - 1) (\log c _ {t} - \log c _ {t} ^ {*}) - 2 (1 - \alpha) e _ {t} - \frac {2 - 2 \alpha}{2 \alpha - 1} e _ {t} = \log y _ {t} - \log y _ {t} ^ {*} \\ (2 \alpha - 1) \left(\log c _ {t} - \log c _ {t} ^ {*}\right) - 2 (1 - \alpha) \frac {2 \alpha}{2 \alpha - 1} e _ {t} = \log y _ {t} - \log y _ {t} ^ {*} \\ \end{array}
$$

where we plug in  $\bar{p}\bar{y} = \bar{c}$

# A.3 Proposition 3.1 in Section 3.A

Proof. Plug in

$$
r x _ {t + 1} ^ {i / \S} - \mathbb {E} _ {t} \left[ r x _ {t + 1} ^ {i / \S} \right] = - \left(\sqrt {\delta^ {i}} - \sqrt {\delta^ {\S}}\right) \sqrt {z _ {t} ^ {w}} \varepsilon_ {t + 1} ^ {w} - \left(\sqrt {\gamma z _ {t} ^ {i}} \varepsilon_ {t + 1} ^ {i} - \sqrt {\gamma z _ {t} ^ {\S}} \varepsilon_ {t + 1} ^ {\S}\right)
$$

in the expression of  $hml_{t+1}$  yields

$$
\begin{array}{l} h m l _ {t + 1} - \mathbb {E} _ {t} \left[ h m l _ {t + 1} \right] = - \frac {1}{N _ {H}} \sum_ {i \in H} \left(\sqrt {\delta^ {i}} - \sqrt {\delta^ {\S}}\right) \sqrt {z _ {t} ^ {w}} \varepsilon_ {t + 1} ^ {w} - \frac {1}{N _ {H}} \sum_ {i \in H} \left(\sqrt {\gamma z _ {t} ^ {i}} \varepsilon_ {t + 1} ^ {i} - \sqrt {\gamma z _ {t} ^ {\S}} \varepsilon_ {t + 1} ^ {\S}\right) \\ + \frac {1}{N _ {L}} \sum_ {i \in L} \left(\sqrt {\delta^ {i}} - \sqrt {\delta^ {\S}}\right) \sqrt {z _ {t} ^ {w}} \varepsilon_ {t + 1} ^ {w} + \frac {1}{N _ {L}} \sum_ {i \in L} \left(\sqrt {\gamma z _ {t} ^ {i}} \varepsilon_ {t + 1} ^ {i} - \sqrt {\gamma z _ {t} ^ {\S}} \varepsilon_ {t + 1} ^ {\S}\right) \\ = \left(\sqrt {\delta_ {t} ^ {L}} - \sqrt {\delta_ {t} ^ {H}}\right) \sqrt {z _ {t} ^ {w}} \varepsilon_ {t + 1} ^ {w} - \frac {1}{N _ {H}} \sum_ {i \in H} \sqrt {\gamma z _ {t} ^ {i}} \varepsilon_ {t + 1} ^ {i} + \frac {1}{N _ {L}} \sum_ {i \in L} \sqrt {\gamma z _ {t} ^ {i}} \varepsilon_ {t + 1} ^ {i} \\ = \left(\overline {{\sqrt {\delta_ {t} ^ {L}}}} - \overline {{\sqrt {\delta_ {t} ^ {H}}}}\right) \sqrt {z _ {t} ^ {w}} \varepsilon_ {t + 1} ^ {w} \\ \end{array}
$$

The country-specific shock terms,  $\frac{1}{N_H}\sum_{i\in H}\sqrt{\gamma z_t^i}\varepsilon_{t + 1}^i$  and  $\frac{1}{N_L}\sum_{i\in L}\sqrt{\gamma z_t^i}\varepsilon_{t + 1}^i$  averages out according to the law of large numbers. Hence,

$$
r x _ {t + 1} ^ {i / \S} = r p _ {t} ^ {i / \S} + \frac {\sqrt {\delta^ {\S}} - \sqrt {\delta^ {i}}}{\sqrt {\delta_ {t} ^ {L}} - \sqrt {\delta_ {t} ^ {H}}} \left(h m l _ {t + 1} - \mathbb {E} _ {t} \left[ h m l _ {t + 1} \right]\right) - \left(\sqrt {\gamma z _ {t} ^ {i}} \varepsilon_ {t + 1} ^ {i} - \sqrt {\gamma z _ {t} ^ {\S}} \varepsilon_ {t + 1} ^ {\S}\right)
$$

which shows that  $\beta_t^i$  is the carry trade loading on  $hml_{t+1}$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/39c09f7c63fc89d1bb8ce287a4242e3d88555015caca4afa1a3530b73c3c1ff5.jpg)

# A.4 Proposition 3.2 in Section 3.A

Proof. Recall that

$$
\begin{array}{l} \Delta e _ {t + 1} ^ {i / \mathbb {S}} = - \left(\mu_ {t} ^ {i} - \mu_ {t} ^ {\mathbb {S}}\right) - \left(\sqrt {\delta^ {i}} - \sqrt {\delta^ {\mathbb {S}}}\right) \sqrt {z _ {t} ^ {w}} \varepsilon_ {t + 1} ^ {w} - \left(\sqrt {\gamma z _ {t} ^ {i}} \varepsilon_ {t + 1} ^ {i} - \sqrt {\gamma z _ {t} ^ {\mathbb {S}}} \varepsilon_ {t + 1} ^ {\mathbb {S}}\right) \\ = - \chi \left(z _ {t} ^ {i} - z _ {t} ^ {\S}\right) - \left(\sqrt {\delta^ {i}} - \sqrt {\delta^ {\S}}\right) \sqrt {z _ {t} ^ {w}} \varepsilon_ {t + 1} ^ {w} - \left(\sqrt {\gamma z _ {t} ^ {i}} \varepsilon_ {t + 1} ^ {i} - \sqrt {\gamma z _ {t} ^ {\S}} \varepsilon_ {t + 1} ^ {\S}\right) \\ \end{array}
$$

and

$$
r _ {t} ^ {i} - r _ {t} ^ {\$} = \left(\chi - \frac {1}{2} \gamma\right) \left(z _ {t} ^ {i} - z _ {t} ^ {\$}\right) - \frac {1}{2} \left(\delta^ {i} - \delta^ {\$}\right) z _ {t} ^ {w}.
$$

Note that  $z_{t}^{w}$  is uncorrelated  $z_{t}^{i}$  and  $z_{t}^{\S}$ . Hence,

$$
v a r (r _ {t} ^ {i} - r _ {t} ^ {\$}) = \left(\chi - \frac {1}{2} \gamma\right) ^ {2} v a r (z _ {t} ^ {i} - z _ {t} ^ {\$}) + \frac {1}{4} \left(\delta^ {i} - \delta^ {\$}\right) ^ {2} v a r (z _ {t} ^ {w})
$$

$$
c o v (\Delta e _ {t + 1} ^ {i / \S}, r _ {t} ^ {i} - r _ {t} ^ {\S}) = - \chi \left(\chi - \frac {1}{2} \gamma\right) v a r (z _ {t} ^ {i} - z _ {t} ^ {\S})
$$

$$
\begin{array}{l} c o v (r x _ {t + 1} ^ {i / \S}, r _ {t} ^ {i} - r _ {t} ^ {\S}) = c o v (\Delta e _ {t + 1} ^ {i / \S} + r _ {t} ^ {i} - r _ {t} ^ {\S}, r _ {t} ^ {i} - r _ {t} ^ {\S}) \\ = c o v \left(\Delta e _ {t + 1} ^ {i / \$}, r _ {t} ^ {i} - r _ {t} ^ {\$}\right) + v a r \left(r _ {t} ^ {i} - r _ {t} ^ {\$}\right) \\ \end{array}
$$

Assuming  $z_{t}^{i}$  and  $z_{t}^{\S}$  are also independent,

$$
v a r (z _ {t} ^ {i} - z _ {t} ^ {\$}) = v a r (z _ {t} ^ {i}) + v a r (z _ {t} ^ {\$}).
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/c2fac57952de4a345af836758ee9dd61b7045ca08656353bb60497221e4454ed.jpg)

# A.5 Proposition 3.3 in Section 3.A

Proof. Recall that

$$
\Delta e _ {t + 1} ^ {i / j} = - \chi \left(z _ {t} ^ {i} - z _ {t} ^ {j}\right) - \left(\sqrt {\delta^ {i}} - \sqrt {\delta^ {j}}\right) \sqrt {z _ {t} ^ {w}} \varepsilon_ {t + 1} ^ {w} - \left(\sqrt {\gamma z _ {t} ^ {i}} \varepsilon_ {t + 1} ^ {i} - \sqrt {\gamma z _ {t} ^ {j}} \varepsilon_ {t + 1} ^ {j}\right)
$$

Note that  $z_{t}^{i}, z_{t}^{j}, z_{t}^{w}, \varepsilon_{t+1}^{i}, \varepsilon_{t+1}^{j}, \varepsilon_{t+1}^{w}$  are independent for  $i \neq j$ . By the law of large numbers,

$$
c o v (z _ {t} ^ {i} - \overline {{z}} _ {t}, z _ {t} ^ {i} - z _ {t} ^ {j}) = v a r (z _ {t} ^ {i}) - \frac {1}{N} v a r (z _ {t} ^ {i}) + \frac {1}{N} v a r (z _ {t} ^ {j}) = v a r (z _ {t} ^ {i})
$$

$$
v a r \left(z _ {t} ^ {i} - \bar {z} _ {t}\right) = v a r \left(z _ {t} ^ {i}\right) - \frac {2}{N} v a r \left(z _ {t} ^ {i}\right) + \frac {1}{N ^ {2}} \sum_ {j = 1} ^ {N} v a r \left(z _ {t} ^ {j}\right) = v a r \left(z _ {t} ^ {i}\right)
$$

$$
c o v (\sqrt {z _ {t} ^ {i}} \varepsilon_ {t + 1} ^ {i}, z _ {t} ^ {i}) = \mathbb {E} \left[ z _ {t} ^ {i} \sqrt {z _ {t} ^ {i}} \varepsilon_ {t + 1} ^ {i} \right] - \mathbb {E} \left[ z _ {t} ^ {i} \right] \mathbb {E} \left[ \sqrt {z _ {t} ^ {i}} \varepsilon_ {t + 1} ^ {i} \right] = 0
$$

$$
\begin{array}{l} \operatorname {v a r} \left(\sqrt {z _ {t} ^ {w}} \varepsilon_ {t + 1} ^ {w}\right) = \mathbb {E} \left[ z _ {t} ^ {w} \left(\varepsilon_ {t + 1} ^ {w}\right) ^ {2} \right] - \left(\mathbb {E} \left[ \sqrt {z _ {t} ^ {w}} \left(\varepsilon_ {t + 1} ^ {w}\right) \right]\right) ^ {2} \\ = \mathbb {E} \left[ z _ {t} ^ {w} \right] \mathbb {E} \left[ \left(\varepsilon_ {t + 1} ^ {w}\right) ^ {2} \right] \\ = \theta^ {w} \\ \end{array}
$$

$$
\operatorname {v a r} \left(\sqrt {z _ {t} ^ {i}} \varepsilon_ {t + 1} ^ {i}\right) = \theta
$$

Hence,

$$
c o v (\Delta e _ {t + 1} ^ {i / j}, \Delta \bar {e} _ {t + 1} ^ {i}) = \chi^ {2} v a r (z _ {t} ^ {i}) + \left(\sqrt {\delta^ {i}} - \sqrt {\delta^ {j}}\right) \left(\sqrt {\delta^ {i}} - \overline {{\sqrt {\delta}}}\right) \theta^ {w} + \gamma \theta
$$

$$
v a r (\Delta \overline {{e}} _ {t + 1} ^ {i}) = \chi^ {2} v a r (z _ {t} ^ {i}) + \left(\sqrt {\delta^ {i}} - \overline {{\sqrt {\delta}}}\right) ^ {2} \theta^ {w} + \gamma \theta
$$

$$
\begin{array}{l} v a r \left(\Delta e _ {t + 1} ^ {i / j}\right) = \chi^ {2} \left(v a r \left(z _ {t} ^ {i}\right) + v a r \left(z _ {t} ^ {j}\right)\right) + \left(\sqrt {\delta^ {i}} - \sqrt {\delta^ {j}}\right) ^ {2} \theta^ {w} + 2 \gamma \theta \\ \varphi = \frac {c o v (\Delta e _ {t + 1} ^ {i / j} , \Delta \vec {e} _ {t + 1} ^ {i})}{v a r (\Delta \vec {e} _ {t + 1} ^ {i})} \\ = 1 - \frac {\left(\sqrt {\delta^ {i}} - \overline {{\sqrt {\delta}}}\right) \left(\sqrt {\delta^ {j}} - \overline {{\sqrt {\delta}}}\right) \theta^ {w}}{\chi^ {2} v a r (z _ {t} ^ {i}) + \left(\sqrt {\delta^ {i}} - \overline {{\sqrt {\delta}}}\right) ^ {2} \theta^ {w} + \gamma \theta}, \\ \end{array}
$$

$$
\begin{array}{l} R ^ {2} = \frac {\varphi^ {2} v a r (\Delta \overline {{e}} _ {t + 1} ^ {i})}{v a r (\Delta e _ {t + 1} ^ {i / j})} \\ = \frac {\left[ \chi^ {2} v a r (z _ {t} ^ {i}) + \left(\sqrt {\delta^ {i}} - \sqrt {\delta^ {j}}\right) \left(\sqrt {\delta^ {i}} - \sqrt {\delta}\right) \theta^ {w} + \gamma \theta \right] ^ {2}}{\left[ \chi^ {2} v a r (z _ {t} ^ {i}) + \left(\sqrt {\delta^ {i}} - \sqrt {\delta}\right) ^ {2} \theta^ {w} + \gamma \theta \right] \left[ \chi^ {2} (v a r (z _ {t} ^ {i}) + v a r (z _ {t} ^ {j})) + \left(\sqrt {\delta^ {i}} - \sqrt {\delta^ {j}}\right) ^ {2} \theta^ {w} + 2 \gamma \theta \right]}. \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/480f8e941764dd4d0cdc01e9c1e98be1b7bbe9531b7f230e8bffbdf607fdb35e.jpg)

# A.6 Proposition 3.4 in Section 3.B

Proof. The Euler equation for the consumption claim implies

$$
\begin{array}{l} 1 = \mathbb {E} _ {t} \left[ \exp \left(m _ {t + 1} + r _ {t + 1} ^ {c}\right) \right], \\ 0 = \mathbb {E} _ {t} [ m _ {t + 1} ] + \mathbb {E} _ {t} [ r _ {t + 1} ^ {c} ] + \frac {1}{2} v a r _ {t} (m _ {t + 1}) + \frac {1}{2} v a r _ {t} (r _ {t + 1} ^ {c}) + c o v _ {t} (m _ {t + 1}, r _ {t + 1} ^ {c}). \\ \end{array}
$$

Define  $r_0^c = \kappa_0^c + \mu_g + \mu_{wc}(1 - \kappa_1^c)$ . The log-linearization of the log total wealth return around the long-run average wealth consumption ratio can be expressed as

$$
\begin{array}{l} r _ {t + 1} ^ {c} = \kappa_ {0} ^ {c} + \Delta c _ {t + 1} + \log \left(w c _ {t + 1}\right) - \kappa_ {1} ^ {c} \log \left(w c _ {t}\right) \\ = \kappa_ {0} ^ {c} + \mu_ {g} + x _ {t} + \sigma_ {t} \varepsilon_ {g, t + 1} + \mu_ {w c} + W _ {x} x _ {t + 1} + W _ {\sigma} \left(\sigma_ {t + 1} ^ {2} - \sigma^ {2}\right) - \kappa_ {1} ^ {c} \left(\mu_ {w c} + W _ {x} x _ {t} + W _ {\sigma} \left(\sigma_ {t} ^ {2} - \sigma^ {2}\right)\right) \\ = r _ {0} ^ {c} + x _ {t} + \sigma_ {t} \varepsilon_ {g, t + 1} + W _ {x} \left(\rho x _ {t} + \sigma_ {t} \varphi_ {e} \varepsilon_ {x, t + 1}\right) + W _ {\sigma} \left(\phi \left(\sigma_ {t} ^ {2} - \sigma^ {2}\right) + \omega \varepsilon_ {w, t + 1}\right) - \kappa_ {1} ^ {c} \left(W _ {x} x _ {t} + W _ {\sigma} \left(\sigma_ {t} ^ {2} - \sigma^ {2}\right)\right) \\ = r _ {0} ^ {c} + \left[ 1 + W _ {x} \left(\rho - \kappa_ {1} ^ {c}\right) \right] x _ {t} + W _ {\sigma} \left(\sigma_ {t} ^ {2} - \sigma^ {2}\right) \left(\phi - \kappa_ {1} ^ {c}\right) + \sigma_ {t} \varepsilon_ {g, t + 1} + W _ {x} \sigma_ {t} \varphi_ {e} \varepsilon_ {x, t + 1} + W _ {\sigma} \omega \varepsilon_ {w, t + 1} \\ \end{array}
$$

which implies

$$
\mathbb {E} _ {t} \left[ r _ {t + 1} ^ {c} \right] = r _ {0} ^ {c} + \left[ 1 + W _ {x} \left(\rho - \kappa_ {1} ^ {c}\right) \right] x _ {t} + W _ {\sigma} \left(\sigma_ {t} ^ {2} - \sigma^ {2}\right) \left(\phi - \kappa_ {1} ^ {c}\right)
$$

$$
r _ {t + 1} ^ {c} - \mathbb {E} _ {t} \left[ r _ {t + 1} ^ {c} \right] = \sigma_ {t} \varepsilon_ {g, t + 1} + W _ {x} \sigma_ {t} \varphi_ {e} \varepsilon_ {x, t + 1} + W _ {\sigma} \omega \varepsilon_ {w, t + 1}
$$

$$
\begin{array}{l} \operatorname {v a r} _ {t} \left(r _ {t + 1} ^ {c}\right) = \mathbb {E} _ {t} \left[ \left(\sigma_ {t} \varepsilon_ {g, t + 1} + W _ {x} \sigma_ {t} \varphi_ {e} \varepsilon_ {x, t + 1} + W _ {\sigma} \omega \varepsilon_ {w, t + 1}\right) ^ {2} \right] \\ = \mathbb {E} _ {t} \left[ \sigma_ {t} ^ {2} \varepsilon_ {g, t + 1} ^ {2} + 2 \sigma_ {t} \varepsilon_ {g, t + 1} W _ {x} \sigma_ {t} \varphi_ {e} \varepsilon_ {x, t + 1} + 2 \sigma_ {t} \varepsilon_ {g, t + 1} W _ {\sigma} \omega \varepsilon_ {w, t + 1} + W _ {x} ^ {2} \sigma_ {t} ^ {2} \varphi_ {e} \varepsilon_ {x, t + 1} ^ {2} \right. \\ \left. + 2 W _ {x} \sigma_ {t} \varphi_ {e} \varepsilon_ {x, t + 1} W _ {\sigma} \omega \varepsilon_ {w, t + 1} + W _ {\sigma} ^ {2} \omega^ {2} \varepsilon_ {w, t + 1} ^ {2} \right] \\ = \sigma_ {t} ^ {2} + W _ {x} ^ {2} \varphi_ {e} ^ {2} \sigma_ {t} ^ {2} + W _ {\sigma} ^ {2} \omega^ {2} + 2 \nu W _ {x} \varphi_ {e} \sigma_ {t} ^ {2} \\ \end{array}
$$

Define  $\mu_{s} = \theta \log \delta + (\theta - 1)r_{0}^{c} - \frac{\theta}{\psi}\mu_{g}$ . Recall that  $\theta(1 - 1/\psi) = 1 - \gamma$ . Then,

$$
\begin{array}{l} m _ {t + 1} = \theta \log \delta - \frac {\theta}{\psi} \Delta c _ {t + 1} + (\theta - 1) r _ {t + 1} ^ {c} \\ = \mu_ {s} - \frac {\theta}{\psi} \left(x _ {t} + \sigma_ {t} \varepsilon_ {g, t + 1}\right) \\ + (\theta - 1) \left\{[ 1 + W _ {x} (\rho - \kappa_ {1} ^ {c}) ] x _ {t} + W _ {\sigma} (\sigma_ {t} ^ {2} - \sigma^ {2}) (\phi - \kappa_ {1} ^ {c}) + \sigma_ {t} \varepsilon_ {g, t + 1} + W _ {x} \sigma_ {t} \varphi_ {e} \varepsilon_ {x, t + 1} + W _ {\sigma} \omega \varepsilon_ {w, t + 1} \right\} \\ = \mu_ {s} + \left\{- \frac {\theta}{\psi} + (\theta - 1) [ 1 + W _ {x} \left(\rho - \kappa_ {1} ^ {c}\right) ] \right\} x _ {t} - \gamma \sigma_ {t} \varepsilon_ {g, t + 1} \\ + \left\{W _ {\sigma} \left(\phi - \kappa_ {1} ^ {c}\right) (\theta - 1) \right\} \left(\sigma_ {t} ^ {2} - \sigma^ {2}\right) + (\theta - 1) \left\{W _ {x} \sigma_ {t} \varphi_ {e} \varepsilon_ {x, t + 1} + W _ {\sigma} \omega \varepsilon_ {w, t + 1} \right\} \\ \end{array}
$$

which implies

$$
\begin{array}{l} m _ {t + 1} - \mathbb {E} _ {t} [ m _ {t + 1} ] = - \gamma \sigma_ {t} \varepsilon_ {g, t + 1} + (\theta - 1) \left\{W _ {x} \sigma_ {t} \varphi_ {e} \varepsilon_ {x, t + 1} + W _ {\sigma} \omega \varepsilon_ {w, t + 1} \right\} \\ \mathbb {E} _ {t} [ m _ {t + 1} ] = \mu_ {s} + \left\{- \frac {\theta}{\psi} + (\theta - 1) [ 1 + W _ {x} (\rho - \kappa_ {1} ^ {c}) ] \right\} x _ {t} + \{W _ {\sigma} (\phi - \kappa_ {1} ^ {c}) (\theta - 1) \} (\sigma_ {t} ^ {2} - \sigma^ {2}) \\ \operatorname {v a r} _ {t} \left(m _ {t + 1}\right) = \mathbb {E} _ {t} \left[ \left(- \gamma \sigma_ {t} \varepsilon_ {g, t + 1} + (\theta - 1) \left\{W _ {x} \sigma_ {t} \varphi_ {e} \varepsilon_ {x, t + 1} + W _ {\sigma} \omega \varepsilon_ {w, t + 1} \right\}\right) ^ {2} \right] \\ = \gamma^ {2} \sigma_ {t} ^ {2} + (\theta - 1) ^ {2} \left\{W _ {x} ^ {2} \varphi_ {e} ^ {2} \sigma_ {t} ^ {2} + W _ {\sigma} ^ {2} \omega^ {2} \right\} - 2 \nu \gamma (\theta - 1) W _ {x} \varphi_ {e} \sigma_ {t} ^ {2} \\ \end{array}
$$

$$
\begin{array}{l} c o v _ {t} \left(m _ {t + 1}, r _ {t + 1} ^ {c}\right) = \mathbb {E} _ {t} \left[ \left(r _ {t + 1} ^ {c} - \mathbb {E} _ {t} \left[ r _ {0} ^ {c} \right]\right) \left(m _ {t + 1} - \mathbb {E} _ {t} \left[ m _ {t + 1} \right]\right) \right] \\ = - \gamma \sigma_ {t} ^ {2} + W _ {x} ^ {2} \varphi_ {e} ^ {2} (\theta - 1) \sigma_ {t} ^ {2} + W _ {\sigma} ^ {2} (\theta - 1) \omega^ {2} + \nu (- \gamma + \theta - 1) W _ {x} \varphi_ {e} \sigma_ {t} ^ {2} \\ \end{array}
$$

Now plugging all the components into the Euler equation,

$$
\begin{array}{l} 0 = r _ {0} ^ {c} + \mu_ {s} \\ + \frac {\theta^ {2}}{2} \left\{W _ {x} ^ {2} \varphi_ {e} ^ {2} \sigma^ {2} + W _ {\sigma} ^ {2} \omega^ {2} \right\} + \theta \left\{- \frac {1}{\psi} + [ 1 + W _ {x} (\rho - \kappa_ {1} ^ {c}) ] \right\} x _ {t} + \frac {\theta}{2} \left\{2 W _ {\sigma} (\phi - \kappa_ {1} ^ {c}) + \theta W _ {x} ^ {2} \varphi_ {e} ^ {2} \right\} (\sigma_ {t} ^ {2} - \sigma^ {2}) \\ + \frac {1}{2} (1 - \gamma) ^ {2} \sigma_ {t} ^ {2} + \theta \nu (1 - \gamma) W _ {x} \varphi_ {e} \sigma_ {t} ^ {2} \\ \end{array}
$$

As this equation holds for any  $x_{t}$  and  $\sigma_t^2$

$$
r _ {0} ^ {c} + \mu_ {s} + \frac {\theta^ {2}}{2} \left\{W _ {x} ^ {2} \varphi_ {e} ^ {2} \sigma^ {2} + W _ {\sigma} ^ {2} \omega^ {2} \right\} - W _ {\sigma} \theta (\phi - \kappa_ {1} ^ {c}) \sigma^ {2} = 0 \tag {A.1}
$$

$$
\theta \left\{- \frac {1}{\psi} + \left[ 1 + W _ {x} \left(\rho - \kappa_ {1} ^ {c}\right) \right] \right\} = 0 \tag {A.2}
$$

$$
\frac {1}{2} (1 - \gamma) ^ {2} + \frac {\theta}{2} \left\{2 W _ {\sigma} \left(\phi - \kappa_ {1} ^ {c}\right) + \theta W _ {x} ^ {2} \varphi_ {e} ^ {2} \right\} + \theta \nu (1 - \gamma) W _ {x} \varphi_ {e} = 0 \tag {A.3}
$$

which implies

$$
W _ {x} = \frac {1 - \frac {1}{\psi}}{\kappa_ {1} ^ {c} - \rho}
$$

$$
W _ {\sigma} = \frac {(1 - \gamma) (1 - \frac {1}{\psi})}{2 \left(\kappa_ {1} ^ {c} - \phi\right)} \left(\frac {\varphi_ {e} ^ {2}}{\left(\kappa_ {1} ^ {c} - \rho\right) ^ {2}} + \frac {2 \nu \varphi_ {e}}{\kappa_ {1} ^ {c} - \rho} + 1\right)
$$

Furthermore, we can solve additionally for  $r_0^c$ ,  $\kappa_0^c$ ,  $\kappa_1^c$  and  $\mu_{wc}$ , using Eq. (A.1) and

$$
\kappa_ {0} ^ {c} = - \log \left(e ^ {\mu_ {w c}} - 1\right) + \frac {e ^ {\mu_ {w c}}}{e ^ {\mu_ {w c}} - 1} \mu_ {w c}
$$

$$
\kappa_ {1} ^ {c} = \frac {e ^ {\mu_ {w c}}}{e ^ {\mu_ {w c}} - 1}
$$

$$
r _ {0} ^ {c} = \kappa_ {0} ^ {c} + \mu_ {g} + \mu_ {w c} (1 - \kappa_ {1} ^ {c})
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/7e04d8c8a650b6fb663e101f1da469d511419c44de0db4715c1abd12b9f12126.jpg)

# A.7 Proposition 3.5 in Section 3.B

Proof. Assuming complete markets, the real exchange rate movement is

$$
\begin{array}{l} \Delta e _ {t + 1} = m _ {t + 1} - m _ {t + 1} ^ {*} \\ = \left(- \frac {\theta}{\psi} \Delta c _ {t + 1} + (\theta - 1) r _ {t + 1} ^ {c}\right) - \left(- \frac {\theta}{\psi} \Delta c _ {t + 1} ^ {*} + (\theta - 1) r _ {t + 1} ^ {c *}\right) \\ = \frac {\theta}{\psi} \left(\Delta c _ {t + 1} ^ {*} - \Delta c _ {t + 1}\right) + (\theta - 1) (r _ {t + 1} ^ {c} - r _ {t + 1} ^ {c *}) \\ = \frac {\theta}{\psi} \left\{\left(x _ {t} ^ {*} - x _ {t}\right) + \left(\sigma_ {t} \varepsilon_ {g, t + 1} ^ {*} - \sigma_ {t} ^ {*} \varepsilon_ {g, t + 1}\right) \right\} \\ + (\theta - 1) \{[ 1 + W _ {x} (\rho - \kappa_ {1} ^ {c}) ] (x _ {t} - x _ {t} ^ {*}) + W _ {\sigma} (\phi - \kappa_ {1} ^ {c}) (\sigma_ {t} ^ {2} - \sigma_ {x, t} ^ {* 2}) + (\sigma_ {t} \varepsilon_ {g, t + 1} - \sigma_ {t} ^ {*} \varepsilon_ {g, t + 1} ^ {*}) \\ \left. + W _ {x} \left(\sigma_ {t} \varphi_ {e} \varepsilon_ {x, t + 1} - \sigma_ {t} ^ {*} \varphi_ {e} \varepsilon_ {x, t + 1} ^ {*}\right) + W _ {\sigma} \omega \left(\varepsilon_ {w, t + 1} - \varepsilon_ {w, t + 1} ^ {*}\right) \right\} \\ = \left\{- \frac {\theta}{\psi} + (\theta - 1) [ 1 + W _ {x} (\rho - \kappa_ {1} ^ {c}) ] \right\} (x _ {t} - x _ {t} ^ {*}) + \{W _ {\sigma} (\phi - \kappa_ {1} ^ {c}) (\theta - 1) \} (\sigma_ {t} ^ {2} - \sigma_ {t} ^ {* 2}) \\ - \gamma (\sigma_ {t} \varepsilon_ {g, t + 1} - \sigma_ {t} ^ {*} \varepsilon_ {g, t + 1} ^ {*}) + (\theta - 1) W _ {x} \varphi_ {e} (\sigma_ {t} \varepsilon_ {x, t + 1} - \sigma_ {t} ^ {*} \varepsilon_ {x, t + 1} ^ {*}) + (\theta - 1) W _ {\sigma} \omega (\varepsilon_ {w, t + 1} - \varepsilon_ {w, t + 1} ^ {*}) \\ \end{array}
$$

and the currency risk premium is

$$
\begin{array}{l} \mathbb {E} _ {t} \left[ r x _ {t + 1} \right] = \frac {1}{2} \left(v a r _ {t} \left(m _ {t + 1} ^ {*}\right) - v a r _ {t} \left(m _ {t + 1}\right)\right) \\ = \frac {1}{2} \left[ \gamma^ {2} \sigma_ {t} ^ {* 2} + (\theta - 1) ^ {2} W _ {x} ^ {2} \varphi_ {e} ^ {2} \sigma_ {t} ^ {* 2} + (\theta - 1) ^ {2} W _ {\sigma} ^ {2} \omega^ {2} - 2 \nu \gamma (\theta - 1) W _ {x} \varphi_ {e} \sigma_ {t} ^ {* 2} \right] \\ - \frac {1}{2} \left[ \gamma^ {2} \sigma_ {t} ^ {2} + (\theta - 1) ^ {2} W _ {x} ^ {2} \varphi_ {e} ^ {2} \sigma_ {t} ^ {2} + (\theta - 1) ^ {2} W _ {\sigma} ^ {2} \omega^ {2} - 2 \nu \gamma (\theta - 1) W _ {x} \varphi_ {e} \sigma_ {t} ^ {2} \right] \\ = \frac {1}{2} \left[ \gamma^ {2} + (\theta - 1) ^ {2} W _ {x} ^ {2} \varphi_ {e} ^ {2} - 2 \nu \gamma (\theta - 1) W _ {x} \varphi_ {e} \right] \left(\sigma_ {t} ^ {* 2} - \sigma_ {t} ^ {2}\right) \\ \end{array}
$$

Also, from the Euler equations for risk-free bonds,

$$
\begin{array}{l} r _ {t} = - \mathbb {E} _ {t} [ m _ {t + 1} ] - \frac {1}{2} v a r _ {t} (m _ {t + 1}) \\ = - \left\{\mu_ {s} + \left\{- \frac {\theta}{\psi} + (\theta - 1) \left[ 1 + W _ {x} \left(\rho - \kappa_ {1} ^ {c}\right) \right] \right\} x _ {t} + \left\{W _ {\sigma} \left(\phi - \kappa_ {1} ^ {c}\right) (\theta - 1) \right\} \left(\sigma_ {t} ^ {2} - \sigma^ {2}\right) \right\} \\ - \frac {1}{2} \left\{\gamma^ {2} \sigma_ {t} ^ {2} + (\theta - 1) ^ {2} W _ {x} ^ {2} \varphi_ {e} ^ {2} \sigma_ {t} ^ {2} + (\theta - 1) ^ {2} W _ {\sigma} ^ {2} \omega^ {2} \right\} + \nu \gamma (\theta - 1) W _ {x} \varphi_ {e} \sigma_ {t} ^ {2} \\ \end{array}
$$

$$
\begin{array}{l} r _ {t} ^ {*} = - \mathbb {E} _ {t} \left[ m _ {t + 1} ^ {*} \right] - \frac {1}{2} v a r _ {t} \left(m _ {t + 1} ^ {*}\right) \\ = - \left\{\mu_ {s} + \left\{- \frac {\theta}{\psi} + (\theta - 1) [ 1 + W _ {x} (\rho - \kappa_ {1} ^ {c}) ] \right\} x _ {t} ^ {*} + \{W _ {\sigma} (\phi - \kappa_ {1} ^ {c}) (\theta - 1) \} (\sigma_ {t} ^ {* 2} - \sigma^ {2}) \right\} \\ - \frac {1}{2} \left\{\gamma^ {2} \sigma_ {t} ^ {* 2} + (\theta - 1) ^ {2} W _ {x} ^ {2} \varphi_ {e} ^ {2} \sigma_ {t} ^ {* 2} + (\theta - 1) ^ {2} W _ {\sigma} ^ {2} \omega^ {2} \right\} + \nu \gamma (\theta - 1) W _ {x} \varphi_ {e} \sigma_ {t} ^ {* 2} \\ \end{array}
$$

also compute the interest rate differential as

$$
\begin{array}{l} r _ {t} - r _ {t} ^ {*} = \left\{- \frac {\theta}{\psi} + (\theta - 1) [ 1 + W _ {x} (\rho - \kappa_ {1} ^ {c}) ] \right\} (x _ {t} ^ {*} - x _ {t}) \\ + \left\{\{W _ {\sigma} (\phi - \kappa_ {1} ^ {c}) (\theta - 1) \} + \frac {1}{2} \gamma^ {2} + \frac {1}{2} (\theta - 1) ^ {2} W _ {x} ^ {2} \varphi^ {2} - \nu \gamma (\theta - 1) W _ {x} \varphi \right\} (\sigma_ {t} ^ {* 2} - \sigma_ {t} ^ {2}) \\ \end{array}
$$

From here, we assume the following for the derivations below:

$$
\begin{array}{l} c o v _ {t} \left(\varepsilon_ {g, t + 1} ^ {*}, \varepsilon_ {g, t + 1}\right) \neq 0 \\ c o v _ {t} \left(\varepsilon_ {x, t + 1} ^ {*}, \varepsilon_ {x, t + 1}\right) \neq 0 \\ c o v _ {t} \left(\sigma_ {t} ^ {*}, \sigma_ {t}\right) \neq 0 \\ \end{array}
$$

Finally, the Backus-Smith coefficient:

$$
\begin{array}{l} \beta_ {t} ^ {B S} = \frac {c o v _ {t} (\Delta e _ {t + 1} , \Delta c _ {t + 1} ^ {*} - \Delta c _ {t + 1})}{v a r _ {t} (\Delta c _ {t + 1} ^ {*} - \Delta c _ {t + 1})} \\ = \frac {1}{v a r _ {t} \left(\sigma_ {t} ^ {*} \varepsilon_ {g , t + 1} ^ {*} - \sigma_ {t} \varepsilon_ {g , t + 1}\right)} \left[ c o v _ {t} \left(\gamma \left(\sigma_ {t} ^ {*} \varepsilon_ {g, t + 1} ^ {*} - \sigma_ {t} \varepsilon_ {g, t + 1}\right), \sigma_ {t} ^ {*} \varepsilon_ {g, t + 1} ^ {*} - \sigma_ {t} \varepsilon_ {g, t + 1}\right) \right. \\ \left. - c o v _ {t} \left(\left(\theta - 1\right) W _ {x} \left(\sigma_ {t} ^ {*} \varphi_ {e} \varepsilon_ {x, t + 1} ^ {*} - \sigma_ {t} \varphi_ {e} \varepsilon_ {x, t + 1}\right) + \left(\theta - 1\right) W _ {\sigma} \omega \left(\varepsilon_ {w, t + 1} ^ {*} - \varepsilon_ {w, t + 1}\right), \sigma_ {t} ^ {*} \varepsilon_ {g, t + 1} ^ {*} - \sigma_ {t} \varepsilon_ {g, t + 1}\right) \right] \\ = \gamma - \frac {(\theta - 1) W _ {x}}{v a r _ {t} \left(\sigma_ {t} ^ {*} \varepsilon_ {g , t + 1} ^ {*} - \sigma_ {t} \varepsilon_ {g , t + 1}\right)} c o v _ {t} \left(\left(\sigma_ {t} ^ {*} \varphi_ {e} \varepsilon_ {x, t + 1} ^ {*} - \sigma_ {t} \varphi_ {e} \varepsilon_ {x, t + 1}\right), \left(\sigma_ {t} ^ {*} \varepsilon_ {g, t + 1} ^ {*} - \sigma_ {t} \varepsilon_ {g, t + 1}\right)\right) \\ = \gamma - \frac {\nu \varphi_ {e} (\theta - 1) W _ {x}}{v a r _ {t} \left(\sigma_ {t} ^ {*} \varepsilon_ {g , t + 1} ^ {*} - \sigma_ {t} \varepsilon_ {g , t + 1}\right)} \left(\sigma_ {t} ^ {2} + \sigma_ {t} ^ {* 2}\right) \\ \end{array}
$$

$$
w h e r e v a r _ {t} \left(\sigma_ {t} ^ {*} \varepsilon_ {g, t + 1} ^ {*} - \sigma_ {t} \varepsilon_ {g, t + 1}\right) = \sigma_ {t} ^ {2} + \sigma_ {t} ^ {* 2} - 2 \sigma_ {t} \sigma_ {t} ^ {*} c o v _ {t} \left(\varepsilon_ {g, t + 1}, \varepsilon_ {g, t + 1} ^ {*}\right).
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/619daaca061cd7502a4354b976e7f35d6e6df9798eacb20018b4540dd863c862.jpg)

# A.8 Proposition 3.6 in Section 3.C

Proof. Within period  $t$ , the social planner's Lagrangian is

$$
\begin{array}{l} \sum_ {i = 1} ^ {N} \pi^ {i} \left(\sum_ {j = 1} ^ {N} v _ {i j} \log c _ {j} ^ {i}\right) + \varphi^ {i} \left(a ^ {i} \left(\ell^ {i}\right) ^ {\theta} \left(\prod_ {j = 1} ^ {N} \left(x _ {j} ^ {i}\right) ^ {w _ {i j}}\right) - \sum_ {j = 1} ^ {N} \left(c _ {i} ^ {j} + x _ {i} ^ {j}\right) - d ^ {i}\right) \\ + \chi^ {i} (\bar {\ell} ^ {i} - \ell^ {i}) \\ \end{array}
$$

which implies the following first-order conditions:

$$
w. r. t. c _ {i} ^ {j}: \quad \pi^ {j} v _ {j i} \left(c _ {i} ^ {j}\right) ^ {- 1} = \varphi^ {i} \tag {A.4}
$$

$$
w. r. t. x _ {i} ^ {j}: \quad \varphi^ {j} \bar {x} ^ {j} w _ {j i} \left(x _ {i} ^ {j}\right) ^ {- 1} = \varphi^ {i} \tag {A.5}
$$

$$
w. r. t. \ell^ {i}: \quad \varphi^ {i} \bar {x} ^ {i} \theta \left(\ell^ {i}\right) ^ {- 1} = \chi^ {i} \tag {A.6}
$$

Substitute into the market clearing condition:

$$
\varphi^ {i} \bar {x} ^ {i} - d ^ {i} = \sum_ {j = 1} ^ {N} \left(\pi^ {j} v _ {j i} + \varphi^ {j} \bar {x} ^ {j} w _ {j i}\right).
$$

Define  $\gamma^i = \varphi^i\overline{x}^i$ . It can be interpreted as the value of country  $i$ 's total output, because the Lagrangian multiplier  $\varphi^i$  can be interpreted as the price of country  $i$ 's intermediate goods in a common numérique. The market clearing condition becomes

$$
\begin{array}{l} \gamma^ {i} - d ^ {i} = \sum_ {j = 1} ^ {N} \left(\pi^ {j} v _ {j i} + \gamma^ {j} w _ {j i}\right) \\ \gamma - d = V ^ {\prime} \pi + W ^ {\prime} \gamma \\ \gamma = \left(I - W ^ {\prime}\right) ^ {- 1} (V ^ {\prime} \pi + d) = H ^ {\prime} \pi + \left(I - W ^ {\prime}\right) ^ {- 1} d. \\ \end{array}
$$

Then, the log production is

$$
\begin{array}{l} \log \bar {x} ^ {i} = \log a ^ {i} + \theta \log \ell^ {i} + \sum_ {j = 1} ^ {N} w _ {i j} \log \left(\frac {\varphi^ {i} \bar {x} ^ {i}}{\varphi^ {j}} w _ {i j}\right) \\ = \log a ^ {i} + \theta \log \ell^ {i} + \sum_ {j = 1} ^ {N} w _ {i j} \log \left(\frac {\gamma^ {i}}{\gamma^ {j} / \bar {x} ^ {j}} w _ {i j}\right) \\ \end{array}
$$

$$
\begin{array}{l} \log \bar {x} = \kappa^ {x} + \log a + (1 - \theta) \log \gamma + W (\log \bar {x} - \log \gamma) \\ = (I - W) ^ {- 1} \left(\kappa^ {x} + \log a - \theta \log \gamma\right) + \log \gamma \\ \end{array}
$$

where  $\kappa^x = \theta \log \ell^i + \sum_{j=1}^{N} w_{ij} \log w_{ij}$  is a vector of constants.

Define  $H = V(I - W)^{-1}$ . The log consumption of active households is

$$
\begin{array}{l} \log \bar {c} ^ {i} = \sum_ {j = 1} ^ {N} v _ {i j} \log \left(\frac {\pi^ {i} v _ {i j}}{\gamma^ {j}} \bar {x} ^ {j}\right) \\ \log \bar {c} = \sum_ {j = 1} ^ {N} v _ {i j} \log \left(\pi^ {i} v _ {i j}\right) + V \log \bar {x} - V \log \gamma \\ = \sum_ {j = 1} ^ {N} v _ {i j} \log \left(\pi^ {i} v _ {i j}\right) + H (\kappa^ {x} + \log a - \theta \log \gamma) \\ = \kappa^ {c} + H (\log a - \theta \log (H ^ {\prime} \pi + (I - W ^ {\prime}) ^ {- 1} d)) \\ \end{array}
$$

Let  $L = (I - W')^{-1}$ . Denote  $L_{i}$  the  $i$ -th row of  $L$ . Since

$$
\frac {\partial \{\log (H ^ {\prime} \pi + L d) \} _ {i}}{\partial d} = \frac {\partial \log (\{H ^ {\prime} \pi \} _ {i} + L _ {i} d)}{\partial d} = \frac {1}{\{H ^ {\prime} \pi \} _ {i} + L _ {i} d} L
$$

we can apply a first-order approximation at  $d = 0$ , and obtain

$$
\{\log (\overline {{\gamma}} + L d) \} _ {i} \approx \log \{H ^ {\prime} \pi \} _ {i} + \frac {1}{\{H ^ {\prime} \pi \} _ {i}} L d
$$

We define  $\frac{\theta}{H' \pi}$  as a diagonal matrix whose element  $(i, i)$  is  $\frac{\theta}{\{H' \pi\}_i}$ . Then,

$$
\log \bar {c} = \kappa^ {c} + H \left(\log a - \frac {\theta}{H ^ {\prime} \pi} (I - W ^ {\prime}) ^ {- 1} d\right)
$$

□

# A.9 Proposition 3.7 in Section 3.C

Proof. The covariance of consumption growth follows directly from Eq. (3.12):

$$
c o v \big (\Delta \log \bar {c} _ {t} ^ {i}, \Delta \log \bar {c} _ {t} ^ {j} \big) = \mathcal {C} (i, j).
$$

The moments of exchange rates follow from the covariance of consumption growth. In particular, the covariance between the changes in currency base factors is

$$
\begin{array}{l} c o v \left(\Delta \bar {e} _ {t + 1} ^ {i}, \Delta \bar {e} _ {t + 1} ^ {j}\right) = c o v \left(\frac {1}{N} \sum_ {k = 1} ^ {N} \Delta \bar {c} _ {t + 1} ^ {k} - \Delta \bar {c} _ {t + 1} ^ {i}, \frac {1}{N} \sum_ {k = 1} ^ {N} \Delta \bar {c} _ {t + 1} ^ {k} - \Delta \bar {c} _ {t + 1} ^ {j}\right) \\ = \mathcal {C} (i, j) - \overline {{\mathcal {C}}} (i) - \overline {{\mathcal {C}}} (j) + \kappa^ {e}. \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/e759b3990b6f75c7c646db645eb3c84f6cc02ad36dcb8cfd83a6535269c8226f.jpg)

# A.10 Proposition 3.8 in Section 3.C

Proof. The log SDF is given by:

$$
\begin{array}{l} m _ {t + 1} ^ {i} = \log \left(\delta \frac {\bar {c} _ {t}}{\bar {c} _ {t + 1}}\right) \\ = \log \delta - \Delta \log \bar {c} _ {t + 1} \\ \end{array}
$$

As shown in Section 1.B, the log interest rate and currency risk premium are given by:

$$
\begin{array}{l} r _ {t} ^ {i} = - \mathbb {E} _ {t} \left[ m _ {t + 1} ^ {i} \right] - \frac {1}{2} v a r _ {t} \left(m _ {t + 1} ^ {i}\right) \\ = - \log \delta - H \mathbb {E} _ {t} [ \Delta \log a _ {t + 1} ] + H \frac {\theta}{H ^ {\prime} \pi} (I - W ^ {\prime}) ^ {- 1} \mathbb {E} _ {t} [ \Delta d _ {t + 1} ] - \frac {1}{2} v a r _ {t} (\Delta \log \bar {c} _ {t + 1} ^ {i}) \\ = - \log \delta - \frac {1}{2} \mathcal {C} (i, i) \\ \end{array}
$$

$$
\begin{array}{l} r p _ {t} ^ {i / \$} \stackrel {{\mathrm {d e f}}} {{=}} \mathbb {E} _ {t} \left[ r x _ {t + 1} ^ {i / \$} \right] \\ = \mathbb {E} _ {t} \left[ - e _ {t + 1} ^ {i / \S} \right] + r _ {t} ^ {i} - r _ {t} ^ {\S} \\ = - \frac {1}{2} v a r _ {t} \left(m _ {t + 1} ^ {i}\right) + \frac {1}{2} v a r _ {t} \left(m _ {t + 1} ^ {\S}\right) \\ = \frac {1}{2} \left(\mathcal {C} (\mathrm {\$}, \mathrm {\$}) - \mathcal {C} (i, i)\right) \\ \end{array}
$$

where we set  $\mathbb{E}_t[\Delta \log a_{t + 1}] = \mathbb{E}_t[\Delta d_{t + 1}] = 0$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/66e7c213b76ad2ec297f5a84519ecceff4088120c41f6f7a7a57d58cd3a4858d.jpg)

# A.11 Proposition 3.9 in Section 3.D

Proof. The long term bond return and price are given by

$$
\begin{array}{l} \exp (- r _ {t} (h) h) = p _ {t} (h) = \mathbb {E} _ {t} [ \exp (m _ {t, t + h} ^ {P} + m _ {t, t + h} ^ {T}) ] \\ = \mathbb {E} _ {t} [ \exp (m c _ {t + h} ^ {P} - m c _ {t} ^ {P} + m c _ {t + h} ^ {T} - m c _ {t} ^ {T}) ] \\ = \mathbb {E} _ {t} \left[ \exp \left(\sum_ {k = 1} ^ {h} \left(- \frac {1}{2} \sigma_ {P} ^ {2} + \sigma_ {P} \varepsilon_ {t + k} ^ {P}\right) \right. \right. \\ \left. \left. + \sum_ {k = 1} ^ {h} \phi^ {h - k} \bar {m c} ^ {T} + \sum_ {k = 1} ^ {h} \phi^ {h - k} (t + k) \log \beta + (\phi^ {h} - 1) m c _ {t} ^ {T} + \sum_ {k = 1} ^ {h} \left(\phi^ {h - k} \sigma_ {T} \varepsilon_ {t + k} ^ {T}\right)\right) \right] \\ = \exp \left(\frac {1 - \phi^ {h}}{1 - \phi} \overline {{m c}} ^ {T} + \left(\frac {t + h - \phi^ {h} (t + 1)}{1 - \phi} - \frac {\phi - \phi^ {h}}{(1 - \phi) ^ {2}}\right) \log \beta + (\phi^ {h} - 1) m c _ {t} ^ {T} \right. \\ \left. + \frac {1 - \phi^ {2 h}}{2 - 2 \phi^ {2}} \sigma_ {T} ^ {2} + \frac {1 - \phi^ {h}}{1 - \phi} \sigma_ {T P}\right). \\ \end{array}
$$

Hence,

$$
- r _ {t} (h) h = \frac {1 - \phi^ {h}}{1 - \phi} \overline {{m c}} ^ {T} + \left(\frac {t + h - \phi^ {h} (t + 1)}{1 - \phi} - \frac {\phi - \phi^ {h}}{(1 - \phi) ^ {2}}\right) \log \beta + (\phi^ {h} - 1) m c _ {t} ^ {T} + \frac {1 - \phi^ {2 h}}{2 - 2 \phi^ {2}} \sigma_ {T} ^ {2} + \frac {1 - \phi^ {h}}{1 - \phi} \sigma_ {T P},
$$

$$
\left(r _ {t} (h) + \frac {\log \beta}{1 - \phi}\right) h = - \frac {1 - \phi^ {h}}{1 - \phi} \overline {{m c}} ^ {T} - \left(\frac {t - \phi^ {h} (t + 1)}{1 - \phi} - \frac {\phi - \phi^ {h}}{(1 - \phi) ^ {2}}\right) \log \beta - (\phi^ {h} - 1) m c _ {t} ^ {T} - \frac {1 - \phi^ {2 h}}{2 - 2 \phi^ {2}} \sigma_ {T} ^ {2} - \frac {1 - \phi^ {h}}{1 - \phi} \sigma_ {T P},
$$

which implies that the constant  $\tilde{\delta} = \beta^{1/(1-\phi)}$  satisfies  $0 < \lim_{h\to \infty}p_t(h) / \tilde{\delta}^h < \infty$ , and the long-term bond yield satisfies

$$
\lim_{h\to \infty}r_{t}(h) + \log \tilde{\delta} = 0,
$$

and

$$
\lim  _ {h \rightarrow \infty} (r _ {t} (h) + \log \tilde {\delta}) h = - \frac {t}{1 - \phi} \log \beta + m c _ {t} ^ {T}.
$$

which confirms the definition of transitory components of the SDF, i.e.,

$$
m c _ {t} ^ {T} = \lim  _ {h \rightarrow \infty} \log \tilde {\delta} (t + h) - \log p _ {t} (h).
$$

Recall that

$$
\begin{array}{l} m c _ {t} ^ {T} = \frac {\overline {{m c}} ^ {T}}{1 - \phi} - \frac {\phi}{1 - \phi} \frac {\log \beta}{1 - \phi} + \frac {\log \beta}{1 - \phi} t - \gamma \log y _ {t} ^ {T} \\ = \frac {\overline {{m c}} ^ {T}}{1 - \phi} - \frac {\phi}{1 - \phi} \frac {\log \beta}{1 - \phi} + \frac {\log \beta}{1 - \phi} t + \sum_ {i = 0} ^ {\infty} \phi^ {i} \sigma_ {T} \varepsilon_ {t - i} ^ {T} \\ \end{array}
$$

plugging  $mc_{t}^{T}$  into the bond return immediately yields Eq. (3.19).

# A.12 Proposition 3.11 in Section 3.D.

Proof. The one-period risk free rate is given by

$$
\begin{array}{l} \exp (- r _ {t}) = \mathbb {E} _ {t} [ \exp (m _ {t, t + 1} ] \\ = \mathbb {E} _ {t} [ \exp (m c _ {t + 1} ^ {P} - m c _ {t} ^ {P} + m c _ {t + 1} ^ {T} - m c _ {t} ^ {T}) ] \\ = \mathbb {E} _ {t} \left[ \exp \left(- \frac {1}{2} \sigma_ {P} ^ {2} + \sigma_ {P} \varepsilon_ {t + 1} ^ {P} + \overline {{m c}} ^ {T} + (\phi - 1) m c _ {t} ^ {T} + (t + 1) \log \beta + \sigma_ {T} \varepsilon_ {t + 1} ^ {T}\right) \right] \\ = \exp \left(\overline {{m c}} ^ {T} + (\phi - 1) m c _ {t} ^ {T} + (t + 1) \log \beta + \frac {1}{2} \sigma_ {T} ^ {2} + \sigma_ {T P}\right), \\ - r _ {t} = \overline {{m c}} ^ {T} + (\phi - 1) m c _ {t} ^ {T} + (t + 1) \log \beta + \frac {1}{2} \sigma_ {T} ^ {2} + \sigma_ {T P}. \\ \end{array}
$$

For long-term bond, the risk premium is

$$
\begin{array}{l} \mathbb {E} _ {t} \left[ \log p _ {t - 1} (h - 1) - \log p _ {t} (h) - r _ {t} \right] \\ = - \phi^ {h - 1} \overline {{m c}} ^ {T} + \left(\frac {(t + 1) \phi^ {h} - (t + 2) \phi^ {h - 1}}{1 - \phi} + \frac {\phi^ {h - 1}}{1 - \phi}\right) \log \beta \\ + (\phi^ {h - 1} - 1) \left(\overline {{m c ^ {T}}} + \phi m c _ {t} ^ {T} + (t + 1) \log \beta\right) - (\phi^ {h} - 1) m c _ {t} ^ {T} - \frac {1}{2} \phi^ {2 (h - 1)} \sigma_ {T} ^ {2} - \phi^ {h - 1} \sigma_ {T P} \\ + \overline {{m c}} ^ {T} + (\phi - 1) m c _ {t} ^ {T} + (t + 1) \log \beta + \frac {1}{2} \sigma_ {T} ^ {2} + \sigma_ {T P} \\ = \left(\frac {1}{2} - \frac {1}{2} \phi^ {2 (h - 1)}\right) \sigma_ {T} ^ {2} + (1 - \phi^ {h - 1}) \sigma_ {T P} \\ \end{array}
$$

Taking  $h \to \infty$  yields

$$
\lim  _ {h \rightarrow \infty} \mathbb {E} _ {t} [ \log p _ {t - 1} (h - 1) - \log p _ {t} (h) - r _ {t} ] = \frac {1}{2} \sigma_ {T} ^ {2} + \sigma_ {T P}.
$$

The price of gdp claim at time  $t$  is given by

$$
\begin{array}{l} p _ {t} ^ {y} (h) = \mathbb {E} _ {t} [ \exp (m _ {t, t + h} + \log y _ {t + h}) ] \\ = \mathbb {E} _ {t} \left[ \exp \left(m c _ {t + h} ^ {P} - m c _ {t} ^ {P} + m c _ {t + h} ^ {T} - m c _ {t} ^ {T} + \log y _ {t + h}\right) \right] \\ = \mathbb {E} _ {t} \left[ \exp \left(\sum_ {k = 1} ^ {h} \left(- \frac {1}{2} \sigma_ {P} ^ {2} + \sigma_ {P} \varepsilon_ {t + k} ^ {P}\right) \right. \right. \\ + \sum_ {k = 1} ^ {h} \phi^ {h - k} \bar {m c} ^ {T} + \sum_ {k = 1} ^ {h} \phi^ {h - k} (t + k) \log \beta + (\phi^ {h} - 1) m c _ {t} ^ {T} + \sum_ {k = 1} ^ {h} \left(\phi^ {h - k} \sigma_ {T} \varepsilon_ {t + k} ^ {T}\right) \\ \left. \left. + \log y _ {t} ^ {P} + h \mu + \sum_ {k = 1} ^ {h} v _ {P} \varepsilon_ {t + k} ^ {P} + \phi^ {h} \log y _ {t} ^ {T} + \sum_ {k = 1} ^ {h} \phi^ {h - k} v _ {T} \varepsilon_ {t + k} ^ {T}\right) \right] \\ = \exp \left(\frac {1 - \phi^ {h}}{1 - \phi} \overline {{m c}} ^ {T} + \left(\frac {t + h - (t + 1) \phi^ {h}}{1 - \phi} - \frac {\phi - \phi^ {h}}{(1 - \phi) ^ {2}}\right) \log \beta + (\phi^ {h} - 1) m c _ {t} ^ {T} \right. \\ + \log y _ {t} ^ {P} + h \mu + \phi^ {h} \log y _ {t} ^ {T} + \frac {1 - 2 \gamma}{2 \gamma^ {2}} h \sigma_ {P} ^ {2} + \frac {1 - \phi^ {2 h}}{2 (1 - \phi^ {2})} \left(\frac {\gamma - 1}{\gamma}\right) ^ {2} \sigma_ {T} ^ {2} + \frac {1 - \phi^ {h}}{1 - \phi} \left(\frac {\gamma - 1}{\gamma}\right) ^ {2} \sigma_ {T P}), \\ \end{array}
$$

where we plugged in  $\nu_{P} = -(1 / \gamma)\sigma_{P},\nu_{T} = -(1 / \gamma)\sigma_{T}$  . Hence,

$$
\begin{array}{l} \mathbb {E} _ {t} [ \log p _ {t + 1} ^ {y} (h - 1) - \log p _ {t} ^ {y} (h) - r _ {t} ] \\ = - \phi^ {h - 1} \overline {{m c}} ^ {T} + \left(\frac {(t + 1) \phi^ {h} - (t + 2) \phi^ {h - 1}}{1 - \phi} + \frac {\phi^ {h - 1}}{1 - \phi}\right) \log \beta + (\phi^ {h - 1} - 1) (\overline {{m c}} ^ {T} + \phi m c _ {t} ^ {T} + (t + 1) \beta) - (\phi^ {h} - 1) m c _ {t} ^ {T} \\ - \frac {1 - 2 \gamma}{2 \gamma^ {2}} \sigma_ {P} ^ {2} - \frac {\phi^ {2 (h - 1)}}{2} \left(\frac {\gamma - 1}{\gamma}\right) ^ {2} \sigma_ {T} ^ {2} - \phi^ {h - 1} \left(\frac {\gamma - 1}{\gamma}\right) ^ {2} \sigma_ {T P} - r _ {t} \\ = \frac {2 \gamma - 1}{2 \gamma^ {2}} \sigma_ {P} ^ {2} + \left[ \frac {1}{2} - \frac {\phi^ {2 (h - 1)}}{2} \left(\frac {\gamma - 1}{\gamma}\right) ^ {2} \right] \sigma_ {T} ^ {2} + \left[ 1 - \phi^ {h - 1} \left(\frac {\gamma - 1}{\gamma}\right) ^ {2} \right] \sigma_ {T P}. \\ \end{array}
$$

Taking  $h\to \infty$  yields

$$
\lim _ {h \to \infty} \mathbb {E} _ {t} [ \log p _ {t + 1} ^ {y} (h - 1) - \log p _ {t} ^ {y} (h) - r _ {t} ] = \frac {2 \gamma - 1}{2 \gamma^ {2}} \sigma_ {P} ^ {2} + \frac {1}{2} \sigma_ {T} ^ {2} + \sigma_ {T P}.
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/8341716b1a389cb7253bf2baf495caa73407ca3239d3a1f254c30ca922ea1023.jpg)

# A.13 Proposition 4.3 in Section 4.B

Proof. Recall the within-in period solutions

$$
p _ {t} = \alpha \frac {c _ {t}}{c _ {H , t}}, \qquad p _ {t} ^ {*} \exp (- e _ {t}) = (1 - \alpha) \frac {c _ {t}}{c _ {F , t}}
$$

and

$$
p _ {t} ^ {*} = \alpha \frac {c _ {t} ^ {*}}{c _ {F , t} ^ {*}}, \qquad p _ {t} \exp (e _ {t}) = (1 - \alpha) \frac {c _ {t} ^ {*}}{c _ {H , t} ^ {*}},
$$

which combined characterize the exchange rate as

$$
\exp (e _ {t}) = \frac {(1 - \alpha) c _ {t} ^ {*} / c _ {H , t} ^ {*}}{\alpha c _ {t} / c _ {H , t}} = \frac {\alpha c _ {t} ^ {*} / c _ {F , t}}{(1 - \alpha) c _ {t} / c _ {F , t}}.
$$

Write the Lagrangian of social planner's problem as follows

$$
\begin{array}{l} \mathcal {L} = \pi \mathbb {E} _ {0} \left[ \sum_ {t = 0} ^ {\infty} \delta^ {t} \left(u (c _ {t}) + v (b _ {H, t}; \theta_ {t})\right) \right] + (1 - \pi) \mathbb {E} _ {0} \left[ \sum_ {t = 0} ^ {\infty} \delta^ {t} \left(u (c _ {t} ^ {*}) + v (b _ {H, t} ^ {*}; \theta_ {t} ^ {*})\right) \right] \\ + \mathbb {E} _ {0} \left[ \sum_ {t = 0} ^ {\infty} \zeta_ {H, t} (y _ {t} - c _ {H, t} - c _ {H, t} ^ {*}) + \zeta_ {F, t} (y _ {t} ^ {*} - c _ {F, t} - c _ {F, t} ^ {*}) \right] + \mathbb {E} _ {0} \left[ \sum_ {t = 0} ^ {\infty} \xi_ {H, t} (\bar {b} _ {t} - b _ {H, t} - b _ {H, t} ^ {*}) \right]. \\ \end{array}
$$

The first order conditions w.r.t. 6 endogenous variables are

$$
\text {w . r . t .} c _ {H, t}: \quad \pi \delta^ {t} u ^ {\prime} (c _ {t}) \alpha \frac {c _ {t}}{c _ {H , t}} = \zeta_ {H, t}
$$

$$
\mathrm {w . r . t .} c _ {H, t} ^ {*}: (1 - \pi) \delta^ {t} u ^ {\prime} \left(c _ {t} ^ {*}\right) (1 - \alpha) \frac {c _ {t} ^ {*}}{c _ {H , t} ^ {*}} = \zeta_ {H, t}
$$

$$
\mathrm {w . r . t .} c _ {F, t}: \quad \pi \delta^ {t} u ^ {\prime} (c _ {t}) (1 - \alpha) \frac {c _ {t}}{c _ {F , t}} = \zeta_ {F, t}
$$

$$
\mathrm {w . r . t .} c _ {F, t} ^ {*}: (1 - \pi) \delta^ {t} u ^ {\prime} (c _ {t} ^ {*}) \alpha \frac {c _ {t} ^ {*}}{c _ {F , t} ^ {*}} = \zeta_ {F, t}
$$

$$
w. r. t. b _ {H, t}: \quad \pi \delta^ {t} v ^ {\prime} (b _ {H, t}; \theta_ {t}) = \xi_ {H, t}
$$

$$
w. r. t. b _ {H, t} ^ {*} \colon (1 - \pi) \delta^ {t} v ^ {\prime} \left(b _ {H, t} ^ {*}; \theta_ {t} ^ {*}\right) = \xi_ {H, t}
$$

with 3 resource constraint conditions, we can solve the 6 endogenous variables and the 3 lagrangian multipliers. Divide the first foc condition by the second one and plug in the within-period solution to obtain the exchange rate as follows

$$
\exp (e _ {t}) = \frac {\pi u ^ {\prime} \left(c _ {t}\right)}{\left(1 - \pi\right) u ^ {\prime} \left(c _ {t} ^ {*}\right)}.
$$

which implies

$$
\Delta e _ {t} = m _ {t} - m _ {t} ^ {*}.
$$

Besides, we are typically interested in the convenience yields, which are given by Eq. (4.2) and (4.3), i.e.,

$$
\exp (- \lambda_ {t}) = 1 - \frac {v ^ {\prime} (b _ {H , t} ; \theta_ {t})}{u ^ {\prime} (c _ {t})} = 1 - \frac {\xi_ {H , t}}{\pi \delta^ {t} u ^ {\prime} (c _ {t})}
$$

$$
\begin{array}{l} \exp (- \lambda_ {t} ^ {*}) = 1 - \frac {v ^ {\prime} (b _ {H , t} ^ {*} ; \theta_ {t} ^ {*})}{u ^ {\prime} (c _ {t} ^ {*})} \exp (- e _ {t}) \\ = 1 - \frac {\xi_ {H , t}}{(1 - \pi) \delta^ {t} u ^ {\prime} \left(c _ {t} ^ {*}\right)} \exp \left(- e _ {t}\right) \\ = 1 - \frac {\xi_ {H , t}}{(1 - \pi) \delta^ {t} u ^ {\prime} (c _ {t} ^ {*})} \frac {(1 - \pi) u ^ {\prime} (c _ {t} ^ {*})}{\pi u ^ {\prime} (c _ {t})} \\ = 1 - \frac {\xi_ {H , t}}{\pi \delta^ {t} u ^ {\prime} (c _ {t})}. \\ \end{array}
$$

Hence,  $\lambda_{t} = \lambda_{t}^{*}$ . Finally, the last two first-order conditions imply  $\pi v^{\prime}(b_{H,t};\theta_t) = (1 - \pi)v^{\prime}(b_{H,t}^{*};\theta_{t}^{*})$ . This concludes the proof.

# A.14 Lemma 5.1 in Section 5.A

Proof. (1) The first-order condition for the home household's portfolio choice problem (5.2) is:

$$
\exp (- \delta t) \frac {\gamma_ {t}}{c _ {t}} = \zeta_ {H} \exp (m _ {\nu_ {H}, t}), \tag {A.7}
$$

where the Lagrange multiplier  $\zeta_H$  is such that the budget constraint evaluated at the optimal consumption expenditure,  $c_{t}$ , is satisfied with equality:

$$
\mathbb {E} \left[ \int_ {0} ^ {T} \exp \left(m _ {\nu_ {H}, t}\right) \left(c _ {t} - p _ {t} y _ {t}\right) d t \right] = w _ {0}.
$$

The home country SDF based on home household's consumption is then

$$
\exp (- \delta t) \frac {\gamma_ {t} c _ {0}}{\gamma_ {0} c _ {t}} = \exp (m _ {\nu_ {H}, t} - m _ {\nu_ {H}, 0}) = \exp (m _ {\nu_ {H}, t}).
$$

(2) Let  $\lambda_t^*$  denote the market price of risk from the viewpoint of a foreign consumer in the foreign numétaire:

$$
\lambda_ {t} ^ {*} = \frac {\sigma_ {t} ^ {\prime}}{\| \sigma_ {t} \| ^ {2}} \left[ r _ {t} + \kappa_ {t} + \frac {1}{2} \sigma_ {t} \sigma_ {t} ^ {\prime} - r _ {t} ^ {*} \right]
$$

Then, the set of foreign country SDFs can be represented as:

$$
d \exp (m _ {\nu^ {*}, t} ^ {*}) = - r _ {t} ^ {*} \exp (m _ {\nu^ {*}, t} ^ {*}) d t - \left(\lambda_ {t} ^ {*} + \nu_ {t} ^ {*}\right) ^ {T} \exp (m _ {\nu^ {*}, t} ^ {*}) d Z _ {t},
$$

with  $\nu^{*} \in \mathbb{R}^{3}$  satisfying  $\sigma_{t}\nu_{t}^{*} = 0$  for all  $t \in [0,T]$  and  $\int_0^T\| \nu_t^*\|^2 dt < \infty$ .

Then, we can write foreign household's static variational portfolio choice problem in their local numétaire:

$$
\begin{array}{l} \max  _ {c _ {t} ^ {*}} \mathbb {E} \left[ \int_ {0} ^ {T} \exp (- \delta t) \gamma^ {*} \log c _ {t} ^ {*} d t \right] \\ \text {s . t .} \quad \mathbb {E} \left[ \int_ {0} ^ {T} \exp \left(m _ {\nu^ {*}, t} ^ {*}\right) \left(c _ {t} ^ {*} - p _ {t} ^ {*} y _ {t} ^ {*}\right) d t \right] \leq w _ {0} ^ {*}. \\ \end{array}
$$

The first-order condition for the foreign household's portfolio choice problem is:

$$
\exp (- \delta t) \frac {\gamma^ {*}}{c _ {t} ^ {*}} = \zeta_ {F} \exp \left(m _ {\nu_ {F} ^ {*}, t} ^ {*}\right), \tag {A.8}
$$

where  $\exp(m_{\nu_F^*,t}^*)$  denotes the foreign country state price density that bounds all the budget constraints, and the Lagrangian multiplier  $\zeta_F$  is such that the budget constraint evaluated at the optimal consumption expenditure  $c_t^*$  is satisfied with equality

$$
\mathbb {E} \left[ \int_ {0} ^ {T} \exp \left(m _ {\nu_ {F} ^ {*}, t} ^ {*}\right) \left(c _ {t} ^ {*} - p _ {t} ^ {*} y _ {t} ^ {*}\right) d t \right] = w _ {0} ^ {*}.
$$

Then, the foreign country SDF based on foreign household's consumption is:

$$
\exp (- \delta t) \frac {c _ {0} ^ {*}}{c _ {t} ^ {*}} = \exp (m _ {\nu_ {F} ^ {*}, t} ^ {*} - m _ {\nu_ {F} ^ {*}, 0} ^ {*}) = \exp (m _ {\nu_ {F} ^ {*}, t} ^ {*}).
$$

□

# A.15 Proposition 5.1 in Section 5.A

Proof. (1) By no arbitrage, home household's wealth in the home numérique at time  $t$  is:

$$
w _ {t} = \mathbb {E} _ {t} \left[ \int_ {t} ^ {T} \frac {\exp (m _ {\nu_ {H} , u})}{\exp (m _ {\nu_ {H} , t})} \left(c _ {u} - p _ {u} y _ {u}\right) d u \right].
$$

Define

$$
s _ {t} = \mathbb {E} _ {t} \left[ \int_ {t} ^ {T} \frac {\exp (m _ {\nu_ {H} , u})}{\exp (m _ {\nu_ {H} , t})} p _ {u} y _ {u} d u \right].
$$

Assume the law of motion of  $s_t$  is given by

$$
d s _ {t} = \mu_ {t} ^ {s} s _ {t} d t + \sigma_ {t} ^ {s} s _ {t} d Z _ {t}
$$

Making use of (A.7) in Lemma 5.1, we have

$$
w _ {t} + s _ {t} = \frac {1}{\exp (m _ {\nu_ {H} , t})} \mathbb {E} _ {t} \left[ \int_ {t} ^ {T} \exp (- \delta u) \frac {\gamma_ {u}}{\zeta_ {H}} d u \right] = \frac {\exp (- \delta t) - \exp (- \delta T)}{\delta} \frac {\gamma_ {t}}{\zeta_ {H} \exp (m _ {\nu_ {H} , t})}.
$$

Note that  $w_{t}$  can be interpreted as the "bond wealth" and the total wealth is  $w_{t}$  plus the value of future endowment flow, which together finance the future consumption. To find the optimal portfolios, we apply Ito's Lemma to (A.9).

$$
\begin{array}{l} d \left(w _ {t} + s _ {t}\right) = d \left[ \frac {\exp (- \delta t) - \exp (- \delta T)}{\delta} \frac {\gamma_ {t}}{\zeta_ {H} \exp (m _ {\nu_ {H} , t})} \right] \\ = (w _ {t} + s _ {t}) \left[ - \frac {\delta}{1 - \exp (- \delta (T - t))} + r _ {t} + (\lambda_ {t} + \nu_ {H, t}) ^ {\prime} (\lambda_ {t} + \nu_ {H, t}) + \frac {\gamma_ {t} \omega i _ {3}}{\gamma_ {t}} (\lambda_ {t} + \nu_ {H, t}) \right] d t \\ + \left(w _ {t} + s _ {t}\right) \left[ \frac {\gamma_ {t} \omega i _ {3}}{\gamma_ {t}} + \left(\lambda_ {t} + \nu_ {H, t}\right) ^ {\prime} \right] d Z _ {t}. \\ \end{array}
$$

Matching the diffusion term with that in the dynamic budget constraint yields:

$$
- x _ {t} w _ {t} \sigma_ {t} = \left(w _ {t} + s _ {t}\right) \left(\frac {\gamma_ {t} \omega i _ {3}}{\gamma_ {t}} + \left(\lambda_ {t} + \nu_ {H , t}\right) ^ {\prime}\right) - s _ {t} \sigma_ {t} ^ {s}. \tag {A.10}
$$

Notice that in incomplete markets, the matrix  $\sigma_t^\prime \sigma_t$  is not a full-rank square matrix, and the above system of equations contains three equations in one unknown. It has a solution if and only if its right-hand side lies in the  $\operatorname{Span}(\sigma_t)$ . This implies a restriction:

$$
\left(I _ {3} - \frac {\sigma_ {t} ^ {\prime} \sigma_ {t}}{\| \sigma_ {t} \| ^ {2}}\right) \frac {\gamma_ {t} \omega i _ {3} ^ {\prime}}{\gamma_ {t}} + \nu_ {H, t} - \frac {s _ {t}}{w _ {t} + s _ {t}} \left(I _ {3} - \frac {\sigma_ {t} ^ {\prime} \sigma_ {t}}{\| \sigma_ {t} \| ^ {2}}\right) (\sigma_ {t} ^ {s}) ^ {\prime} = 0,
$$

where we apply operator  $\left(I_3 - \frac{\sigma_t^\prime\sigma_t}{\|\sigma_t\|^2}\right)$  to both sides of (A.10). Rearranging the terms, we have:

$$
\nu_ {H, t} = \left(I _ {3} - \frac {\sigma_ {t} ^ {\prime} \sigma_ {t}}{\| \sigma_ {t} \| ^ {2}}\right) \left(- \omega i _ {3} ^ {\prime} + \frac {s _ {t}}{w _ {t} + s _ {t}} (\sigma_ {t} ^ {s}) ^ {\prime}\right). \tag {A.11}
$$

To obtain the optimal portfolio of the home country household, we apply the operator  $-\frac{\sigma_t'}{|\sigma_t|^2}$  to both sides of (A.10).

$$
\begin{array}{l} x _ {t} = - \frac {w _ {t} + s _ {t}}{w _ {t}} \left(\frac {\gamma_ {t} \omega i _ {3}}{\gamma_ {t}} + (\lambda_ {t} + \nu_ {H, t}) ^ {\prime}\right) \frac {\sigma_ {t} ^ {\prime}}{\| \sigma_ {t} \| ^ {2}} + \frac {s _ {t}}{w _ {t}} \frac {\sigma_ {t} ^ {s} \sigma_ {t} ^ {\prime}}{\| \sigma_ {t} \| ^ {2}} \\ = - \frac {w _ {t} + s _ {t}}{w _ {t}} \left(\frac {\omega \sigma_ {3 , t}}{\| \sigma_ {t} \| ^ {2}} - \frac {(r _ {t} ^ {*} - \kappa_ {t} + \frac {1}{2} \sigma_ {t} \sigma_ {t} ^ {\prime} - r _ {t})}{\| \sigma_ {t} \| ^ {2}}\right) + \frac {s _ {t}}{w _ {t}} \frac {\sigma_ {t} ^ {s} \sigma_ {t} ^ {\prime}}{\| \sigma_ {t} \| ^ {2}}. \\ \end{array}
$$

For the foreign households, the first-order condition for the foreign household's static variational portfolio choice problem in the home numérique is:

$$
\exp (- \delta t) \frac {\gamma^ {*}}{\tilde {c} _ {t} ^ {*}} = \tilde {\zeta} _ {F} \exp (m _ {\tilde {v} _ {F}, t}), \tag {A.12}
$$

where  $\exp(m_{\tilde{\nu}_F,t})$  denotes an appropriate home country state price density that bounds all the budget constraints of the foreign household, and  $\tilde{\zeta}_F$  is the Lagrange multiplier such that the budget constraint evaluated at the optimal consumption expenditure,  $\tilde{c}_t^*$ , is satisfied with equality:

$$
E \left[ \int_ {0} ^ {T} \exp \left(m _ {\tilde {v} _ {F}, t}\right) \left(\tilde {c} _ {t} ^ {*} - p _ {t} ^ {*} \exp (- e _ {t}) y _ {t} ^ {*}\right) d t \right] = \tilde {w} _ {0} ^ {*}.
$$

By no arbitrage, foreign household's wealth in the home numéraires at time  $t$  is:

$$
\tilde {w} _ {t} ^ {*} = E _ {t} \left[ \int_ {t} ^ {T} \frac {\exp (m _ {\tilde {v} _ {F} , u})}{\exp (m _ {\tilde {v} _ {F} , t})} (\tilde {c} _ {t} ^ {*} - p _ {t} ^ {*} \exp (- e _ {t}) y _ {t} ^ {*}) d u \right].
$$

Similarly, denote

$$
\tilde {s} _ {t} ^ {*} = E _ {t} \left[ \int_ {t} ^ {T} \frac {\exp (m _ {\tilde {v} _ {F} , u})}{\exp (m _ {\tilde {v} _ {F} , t})} p _ {t} ^ {*} \exp (- e _ {t}) y _ {t} ^ {*} d u \right].
$$

Assume the law of motion of  $\tilde{s}_t^*$  is given by

$$
d \tilde {s} _ {t} ^ {*} = \mu_ {t} ^ {\tilde {s} ^ {*}} \tilde {s} _ {t} ^ {*} d t + \sigma_ {t} ^ {\tilde {s} ^ {*}} \tilde {s} _ {t} ^ {*} d Z _ {t}
$$

Making use of (A.12), we have

$$
\tilde {w} _ {t} ^ {*} + \bar {s} _ {t} ^ {*} = \frac {1}{\exp (m _ {\tilde {\nu} _ {F} , t})} \mathbb {E} _ {t} \left[ \int_ {t} ^ {T} \exp (- \delta u) \frac {\gamma^ {*}}{\tilde {\zeta} _ {F}} d u \right] = \frac {\exp (- \delta t) - \exp (- \delta T)}{\delta} \frac {\gamma^ {*}}{\tilde {\zeta} _ {F} \exp (m _ {\tilde {\nu} _ {F} , t})}.
$$

To find the optimal portfolios, we apply Ito's Lemma to (A.13),

$$
d (\tilde {w} _ {t} ^ {*} + \tilde {s} _ {t} ^ {*}) = (\tilde {w} _ {t} ^ {*} + \tilde {s} _ {t} ^ {*}) \left[ - \frac {\delta}{1 - \exp (- \delta (T - t))} + r _ {t} + (\lambda_ {t} + \tilde {v} _ {F, t}) ^ {\prime} (\lambda_ {t} + \tilde {v} _ {F, t}) \right] d t + (\tilde {w} _ {t} ^ {*} + \tilde {s} _ {t} ^ {*}) (\lambda_ {t} + \tilde {v} _ {F, t}) ^ {\prime} d Z _ {t}.
$$

Matching the diffusion term with that in the dynamic budget constraint yields

$$
\left(x _ {t} ^ {*} - 1\right) \tilde {w} _ {t} ^ {*} \sigma_ {t} = \left(\tilde {w} _ {t} ^ {*} + \tilde {s} _ {t} ^ {*}\right) \left(\lambda_ {t} + \tilde {v} _ {F, t}\right) ^ {\prime} - \tilde {s} _ {t} ^ {*} \sigma_ {t} ^ {\tilde {s} ^ {*}} \tag {A.14}
$$

In incomplete markets, the matrix  $\sigma_t^\prime \sigma_t$  has a solution if and only if its right hand side lies in  $\operatorname{Span}(\sigma_t)$ . This entails a restriction:

$$
\tilde {v} _ {F, t} = \frac {\tilde {s} _ {t} ^ {*}}{\tilde {w} _ {t} ^ {*} + \tilde {s} _ {t} ^ {*}} \left(I _ {3} - \frac {\sigma_ {t} ^ {\prime} \sigma_ {t}}{\| \sigma_ {t} \| ^ {2}}\right) \left(\sigma_ {t} ^ {\tilde {s} ^ {*}}\right) ^ {\prime}, \tag {A.15}
$$

where we apply operator  $\left(I_3 - \frac{\sigma_t'\sigma_t}{\|\sigma_t\|^2}\right)$  to both sides of (A.14).

To get the optimal portfolio choice for the foreign household, we apply the operator  $\frac{\sigma_t'}{\|\sigma_t\|^2}$  from right to both sides of (A.14).

$$
\begin{array}{l} x _ {t} ^ {*} - 1 = \frac {\tilde {w} _ {t} ^ {*} + \tilde {s} _ {t} ^ {*}}{\tilde {w} _ {t} ^ {*}} [ (\lambda_ {t} + \tilde {v} _ {F, t}) ^ {\prime} ] \frac {\sigma_ {t} ^ {\prime}}{\| \sigma_ {t} \| ^ {2}} - \frac {\tilde {s} _ {t} ^ {*}}{\tilde {w} _ {t} ^ {*}} \frac {\sigma_ {t} ^ {\tilde {s} ^ {*}} \sigma_ {t} ^ {\prime}}{\| \sigma_ {t} \| ^ {2}} \\ x _ {t} ^ {*} = 1 - \frac {\tilde {w} _ {t} ^ {*} + \tilde {s} _ {t} ^ {*}}{\tilde {w} _ {t} ^ {*}} \frac {\left(r _ {t} ^ {*} - \kappa_ {t} + \frac {1}{2} \sigma_ {t} \sigma_ {t} ^ {\prime} - r _ {t}\right)}{\| \sigma_ {t} \| ^ {2}} - \frac {\tilde {s} _ {t} ^ {*}}{\tilde {w} _ {t} ^ {*}} \frac {\sigma_ {t} ^ {\tilde {s} ^ {*}} \sigma_ {t} ^ {\prime}}{\| \sigma_ {t} \| ^ {2}}. \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/7731248339100ccd98a635f9c6ea1888ed07dc1401e0dd402fd23e1ef9252e61.jpg)

# A.16 Lemma 5.2 in Section 5.A

Proof. The representative agent's utility evaluated at the aggregate output is given by

$$
U (y _ {t}, y _ {t} ^ {*}; \pi_ {t}) = \max  _ {c _ {H, t}, c _ {F, t}, c _ {H, t} ^ {*}, c _ {F, t} ^ {*}} \mathbb {E} \left[ \int_ {0} ^ {T} \exp (- \delta t) (u (c _ {H, t}, c _ {F, t}) + \pi_ {t} u ^ {*} (c _ {H, t} ^ {*}, c _ {F, t} ^ {*})) d t \right]
$$

s.t.  $c_{H,t} + c_{H,t}^{*} = y_{t},$

$$
c _ {F, t} + c _ {F, t} ^ {*} = y _ {t} ^ {*}.
$$

Then, the marginal utilities of the representative agent and the individual agents evaluated at the optimum are related as

$$
\nabla U \left(y _ {t}, y _ {t} ^ {*}; \pi_ {t}\right) = \nabla u \left(c _ {H, t}, c _ {F, t}\right) = \pi_ {t} \nabla u ^ {*} \left(c _ {H, t} ^ {*}, c _ {F, t} ^ {*}\right).
$$

From the first-order conditions of the home and foreign households, we have

$$
\nabla u \left(c _ {H, t}, c _ {F, t}\right) = \left(\frac {\gamma_ {t} \alpha}{c _ {H , t}}, \frac {\gamma_ {t} (1 - \alpha)}{c _ {F , t}}\right),
$$

$$
\nabla u ^ {*} (c _ {H, t} ^ {*}, c _ {F, t} ^ {*}) = \left(\frac {\gamma^ {*} (1 - \alpha)}{c _ {H , t} ^ {*}}, \frac {\gamma^ {*} \alpha}{c _ {F , t} ^ {*}}\right).
$$

Besides, by our previous results:

$$
c _ {H, t} = \frac {\alpha}{p _ {t}} c _ {t}, \quad c _ {F, t} = \frac {(1 - \alpha)}{p _ {t} ^ {*} \exp (- e _ {t})} c _ {t}, \quad \exp (- \delta t) \frac {\gamma_ {t}}{c _ {t}} = \zeta_ {H} \exp (m _ {\nu_ {H}, t}),
$$

we have

$$
\nabla u \left(c _ {H, t}, c _ {F, t}\right) = \left(\exp (\delta t) \zeta_ {H} \exp \left(m _ {\nu_ {H}, t}\right) p _ {t}, \exp (\delta t) \zeta_ {H} \exp \left(m _ {\nu_ {H}, t}\right) p _ {t} ^ {*} \exp (- e _ {t})\right).
$$

Similarly, for the foreign household,

$$
\nabla u ^ {*} \left(c _ {F, t}, c _ {F, t} ^ {*}\right) = \left(\exp (\delta t) \tilde {\zeta} _ {F} \exp \left(m _ {\tilde {\nu} _ {F}, t}\right) p _ {t}, \exp (\delta t) \tilde {\zeta} _ {F} \exp \left(m _ {\tilde {\nu} _ {F}, t}\right) p _ {t} ^ {*} \exp (- e _ {t})\right).
$$

We substitute the solutions of  $c_{H,t}, c_{F,t}, c_{H,t}^{*}, c_{F,t}^{*}$  into the above gradients of  $\nabla u\left(c_{H,t}, c_{H,t}^{*}\right)$  to get the state price density that bound all the budget constraints of the home consumers.

$$
\begin{array}{l} \exp (m _ {\nu_ {H}, t}) = \frac {\exp (m _ {\nu_ {H} , t})}{\exp (m _ {\nu_ {H} , 0})} = \exp (- \delta t) \frac {\gamma_ {t} c _ {0}}{\gamma_ {0} c _ {t}} = \exp (- \delta t) \frac {p _ {0} c _ {H , 0} \gamma_ {t}}{p _ {t} c _ {H , t} \gamma_ {0}} \\ = \exp (- \delta t) \frac {p _ {0} y _ {0}}{p _ {t} y _ {t}} \frac {\gamma_ {t} \alpha + \pi_ {t} \gamma^ {*} (1 - \alpha)}{\gamma_ {0} \alpha + \pi_ {0} \gamma^ {*} (1 - \alpha)} \tag {A.16} \\ \end{array}
$$

Therefore, by the expression of the state-price-density in A.16, the price of the home stock in the home numétaire is

$$
\begin{array}{l} s _ {t} = \frac {1}{\exp \left(m _ {\nu_ {H} , t}\right)} \mathbb {E} _ {t} \left[ \int_ {t} ^ {T} \exp \left(m _ {\nu_ {H}, u}\right) p _ {u} y _ {u} d u \right] \tag {A.17} \\ = \frac {\exp (\delta t) p _ {t} y _ {t}}{\gamma_ {t} \alpha + \pi_ {t} \gamma^ {*} (1 - \alpha)} \mathbb {E} _ {t} \left[ \int_ {t} ^ {T} \exp (- \delta u) \left(\gamma_ {u} \alpha + \pi_ {u} \gamma^ {*} (1 - \alpha)\right) d u \right] \\ = \frac {\exp (\delta t) p _ {t} y _ {t}}{\gamma_ {t} \alpha + \pi_ {t} \gamma^ {*} (1 - \alpha)} \left[ \frac {1}{\delta} \left(\exp (- \delta t) - \exp (- \delta T)\right) \gamma_ {t} \alpha + \mathbb {E} _ {t} \left[ \int_ {t} ^ {T} \exp (- \delta u) \pi_ {u} \gamma^ {*} (1 - \alpha) d u \right] \right] \\ = \frac {1 - \exp (- \delta (T - t))}{\delta} p _ {t} y _ {t} + \frac {\exp (\delta t) p _ {t} y _ {t} \gamma^ {*} (1 - \alpha)}{\gamma_ {t} \alpha + \pi_ {t} \gamma^ {*} (1 - \alpha)} \mathbb {E} _ {t} \left[ \int_ {t} ^ {T} \exp (- \delta u) (\pi_ {u} - \pi_ {t}) d u \right], \\ \end{array}
$$

where we used the fact that  $\gamma_{t}$  is a martingale.

Similarly, we can then derive the home country state price density that bounds all the budget constraints of the foreign consumers as:

$$
\begin{array}{l} \exp (m _ {\tilde {v} _ {F}, t}) = \frac {\exp (m _ {\tilde {v} _ {F} , t})}{\exp (m _ {\tilde {v} _ {F} , 0})} = \exp (- \delta t) \frac {\tilde {c} _ {0} ^ {*}}{\tilde {c} _ {t} ^ {*}} = \exp (- \delta t) \frac {p _ {0} ^ {*} \exp (- e _ {0}) c _ {F , 0} ^ {*}}{p _ {t} ^ {*} \exp (- e _ {t}) c _ {F , t} ^ {*}} \\ = \exp (- \delta t) \frac {p _ {0} ^ {*} \exp (- e _ {0}) y _ {0} ^ {*}}{p _ {t} ^ {*} \exp (- e _ {t}) y _ {t} ^ {*}} \frac {\pi_ {0}}{\pi_ {t}} \frac {\gamma_ {t} (1 - \alpha) + \pi_ {t} \gamma^ {*} \alpha}{\gamma_ {0} (1 - \alpha) + \pi_ {0} \gamma^ {*} \alpha}. \tag {A.18} \\ \end{array}
$$

Analogously, plugging in the expression of the state-price-density in (A.18), we find the price of the foreign stock in the home numérique to be

$$
\begin{array}{l} \tilde {s} _ {t} ^ {*} = \frac {1}{\exp (m _ {\nu_ {H} , t})} \mathbb {E} _ {t} \left[ \int_ {t} ^ {T} \exp (m _ {\nu_ {H}, u}) p _ {u} ^ {*} \exp (- e _ {u}) y _ {u} ^ {*} d u \right] \tag {A.19} \\ = \frac {\exp (\delta t) p _ {t} ^ {*} \exp (- e _ {t}) y _ {t} ^ {*}}{\gamma_ {t} (1 - \alpha) + \pi_ {t} \gamma^ {*} \alpha} \mathbb {E} _ {t} \left[ \int_ {t} ^ {T} \exp (- \delta u) \left(\gamma_ {u} (1 - \alpha) + \pi_ {u} \gamma^ {*} \alpha\right) d u \right] \\ = \frac {\exp (\delta t) p _ {t} ^ {*} \exp (- e _ {t}) y _ {t} ^ {*}}{\gamma_ {t} (1 - \alpha) + \pi_ {t} \gamma^ {*} \alpha} \left[ \frac {1}{\delta} \left(\exp (- \delta t) - \exp (- \delta T)\right) \gamma_ {t} (1 - \alpha) + \mathbb {E} _ {t} \left[ \int_ {t} ^ {T} \exp (- \delta u) \pi_ {u} \gamma^ {*} \alpha d u \right] \right] \\ = \exp (- e _ {t}) \left[ \frac {1 - \exp (- \delta (T - t))}{\delta} p _ {t} ^ {*} y _ {t} ^ {*} + \frac {\exp (\delta t) p _ {t} ^ {*} y _ {t} ^ {*} \gamma^ {*} \alpha}{\gamma_ {t} (1 - \alpha) + \pi_ {t} \gamma^ {*} \alpha} \mathbb {E} _ {t} \left[ \int_ {t} ^ {T} \exp (- \delta u) (\pi_ {u} - \pi_ {t}) d u \right] \right]. \\ \end{array}
$$

Therefore, the foreign stock price in the foreign numétaire is:

$$
s _ {t} ^ {*} = \frac {1 - \exp (- \delta (T - t))}{\delta} p _ {t} ^ {*} y _ {t} ^ {*} + \frac {\exp (\delta t) p _ {t} ^ {*} y _ {t} ^ {*} \gamma^ {*} \alpha}{\gamma_ {t} (1 - \alpha) + \pi_ {t} \gamma^ {*} \alpha} \mathbb {E} _ {t} \left[ \int_ {t} ^ {T} \exp (- \delta u) \left(\pi_ {u} - \pi_ {t}\right) d u \right]. \tag {A.20}
$$

There are two ways to proceed in evaluating the above conditional expectations. The first is to assume that  $\pi$  is a martingale and then verify that it is indeed the case in equilibrium. However, lowe can only prove that it is a local martingale. In special cases, we can impose some other regularity conditions on the preference shifts to guarantee that  $\pi_t$  is a martingale but, in general, it is not an immediate result. An alternative approach is to use the following, less direct, argument based on market clearing. Plug the first-order conditions

$$
\exp (- \delta t) \frac {\gamma_ {t}}{c _ {t}} = \zeta_ {H} \exp (m _ {\nu_ {H}, t}),
$$

$$
\exp (- \delta t) \frac {\gamma^ {*}}{\tilde {c} _ {t} ^ {*}} = \tilde {\zeta} _ {F} \exp (m _ {\tilde {\nu} _ {F}, t}),
$$

into (A.9) and (A.13), we have

$$
w _ {t} + s _ {t} = \frac {\gamma_ {t}}{\zeta_ {H} \exp (m _ {\nu_ {H} , t})} \frac {\exp (- \delta t) - \exp (- \delta T)}{\delta} = \frac {\exp (- \delta t) - \exp (- \delta T)}{\delta} \exp (\delta t) c _ {t} = \frac {1 - \exp (- \delta (T - t))}{\delta} c _ {t},
$$

$$
\tilde {w} _ {t} ^ {*} + \tilde {s} _ {t} ^ {*} = \frac {\gamma^ {*}}{\tilde {\zeta} _ {F} \exp (m _ {\tilde {\nu} _ {F} , t})} \frac {\exp (- \delta t) - \exp (- \delta T)}{\delta} = \frac {\exp (- \delta t) - \exp (- \delta T)}{\delta} \exp (\delta t) \tilde {c} _ {t} ^ {*} = \frac {1 - \exp (- \delta (T - t))}{\delta} \tilde {c} _ {t} ^ {*}.
$$

Therefore, we have

$$
w _ {t} + s _ {t} + \tilde {w} _ {t} ^ {*} + \tilde {s} _ {t} ^ {*} = \frac {1 - \exp (- \delta (T - t))}{\delta} \left(c _ {t} + \tilde {c} _ {t} ^ {*}\right) = \frac {1 - \exp (- \delta (T - t))}{\delta} \left(p _ {t} y _ {t} + p _ {t} ^ {*} y _ {t} ^ {*} \exp (- e _ {t})\right),
$$

where we use the fact that the home and foreign households' total consumption expenditure at time  $t$  equals the value of their endowments. On the other hand, from the resource constraint,

$$
w _ {t} + s _ {t} + \tilde {w} _ {t} ^ {*} + \tilde {s} _ {t} ^ {*} = s _ {t} + \tilde {s} _ {t} ^ {*}.
$$

Combining the resulting restriction,

$$
s _ {t} + \tilde {s} _ {t} ^ {*} = \frac {1 - \exp (- \delta (T - t))}{\delta} \left(p _ {t} y _ {t} + p _ {t} ^ {*} y _ {t} ^ {*} \exp (- e _ {t})\right),
$$

with (A.17) and (A.19), we have

$$
\left[ \frac {\exp (\delta t) p _ {t} ^ {*} y _ {t} ^ {*} \gamma^ {*} \alpha}{\gamma_ {t} (1 - \alpha) + \pi_ {t} \gamma^ {*} \alpha} + \frac {\exp (\delta t) p _ {t} y _ {t} \gamma^ {*} (1 - \alpha)}{\gamma_ {t} \alpha + \pi_ {t} \gamma^ {*} (1 - \alpha)} \right] \mathbb {E} _ {t} \left[ \int_ {t} ^ {T} \exp (- \delta u) (\pi_ {u} - \pi_ {t}) d u \right] = 0,
$$

Since the coefficient term  $\left[\frac{\exp(\delta t)p_t^*y_t^*\gamma^*\alpha}{\gamma_t(1 - \alpha) + \pi_t\gamma^*\alpha} +\frac{\exp(\delta t)p_ty_t\gamma^*(1 - \alpha)}{\gamma_t\alpha + \pi_t\gamma^*(1 - \alpha)}\right]$  is non-zero for each  $t$ , it has to be

$$
\mathbb {E} _ {t} \left[ \int_ {t} ^ {T} \exp (- \delta u) \left(\pi_ {u} - \pi_ {t}\right) d u \right] = 0 \tag {A.21}
$$

Then, we can conclude that the home stock price in the home numéraire is:

$$
s _ {t} = \frac {1 - \exp (- \delta (T - t))}{\delta} p _ {t} y _ {t},
$$

and the price of the foreign stock in the foreign numétaire is:

$$
s _ {t} ^ {*} = \frac {1 - \exp (- \delta (T - t))}{\delta} p _ {t} ^ {*} y _ {t} ^ {*}.
$$

Therefore, the price of the foreign stock prices in the home numéraire

is:

$$
\tilde {s} _ {t} ^ {*} = \exp (- e _ {t}) \left[ \frac {1 - \exp (- \delta (T - t))}{\delta} p _ {t} ^ {*} y _ {t} ^ {*} \right].
$$

By the previous results for good prices and the exchange rate,

$$
p _ {t} = \alpha \left(\frac {1 - \alpha}{\alpha} \exp (t o t _ {t})\right) ^ {1 - \alpha}, p _ {t} ^ {*} = \alpha \left(\frac {\alpha}{1 - \alpha} \exp (t o t _ {t})\right) ^ {\alpha - 1}, \exp (e _ {t}) = \exp (t o t _ {t}) ^ {2 \alpha - 1},
$$

we have

$$
s _ {t} = \frac {1 - \exp (- \delta (T - t))}{\delta} \alpha \left(\frac {1 - \alpha}{\alpha} \exp (t o t _ {t})\right) ^ {1 - \alpha} y _ {t}, \tag {A.22}
$$

$$
s _ {t} ^ {*} = \frac {1 - \exp (- \delta (T - t))}{\delta} \alpha \left(\frac {\alpha}{1 - \alpha} \exp (t o t _ {t})\right) ^ {\alpha - 1} y _ {t} ^ {*},
$$

$$
\tilde {s} _ {t} ^ {*} = \frac {1 - \exp (\delta (T - t))}{\delta} \alpha \left(\frac {\alpha}{1 - \alpha}\right) ^ {\alpha - 1} \exp (t o t _ {t}) ^ {- \alpha} y _ {t} ^ {*}, \tag {A.23}
$$

and hence

$$
s _ {t} ^ {*} = s _ {t} \exp (- t o t _ {t}) \frac {y _ {t} ^ {*}}{y _ {t}}.
$$

We then calculate the wealth processes.

$$
\begin{array}{l} w _ {t} + s _ {t} = \frac {1 - \exp (- \delta (T - t))}{\delta} c _ {t} = \frac {1 - \exp (- \delta (T - t))}{\delta} \left(p _ {t} c _ {H, t} + p _ {t} ^ {*} \exp (- e _ {t}) c _ {F, t}\right) \\ = \frac {1 - \exp (- \delta (T - t))}{\delta} \left(\frac {\gamma_ {t} \alpha}{\gamma_ {t} \alpha + \pi_ {t} \gamma^ {*} (1 - \alpha)} p _ {t} y _ {t} + \exp (- e _ {t}) \frac {\gamma_ {t} (1 - \alpha)}{\gamma_ {t} (1 - \alpha) + \pi_ {t} \gamma^ {*} \alpha} p _ {t} ^ {*} y _ {t} ^ {*}\right) \\ = \frac {\gamma_ {t} \alpha}{\gamma_ {t} \alpha + \pi_ {t} \gamma^ {*} (1 - \alpha)} s _ {t} + \frac {\gamma_ {t} (1 - \alpha)}{\gamma_ {t} (1 - \alpha) + \pi_ {t} \gamma^ {*} \alpha} \tilde {s} _ {t} ^ {*}, \\ \end{array}
$$

$$
\begin{array}{l} \tilde {w} _ {t} ^ {*} + \tilde {s} _ {t} ^ {*} = \frac {1 - \exp (- \delta (T - t))}{\delta} \tilde {c} _ {t} ^ {*} = \frac {1 - \exp (- \delta (T - t))}{\delta} \left(\exp (- e _ {t}) p _ {t} ^ {*} c _ {F, t} ^ {*} + p _ {t} c _ {H, t} ^ {*}\right) \\ = \frac {1 - \exp (- \delta (T - t))}{\delta} \left(\frac {\pi_ {t} \gamma^ {*} \alpha}{\gamma_ {t} (1 - \alpha) + \pi_ {t} \gamma^ {*} \alpha} p _ {t} ^ {*} y _ {t} ^ {*} \exp (- e _ {t}) + \frac {\pi_ {t} \gamma^ {*} (1 - \alpha)}{\gamma_ {t} \alpha + \pi_ {t} \gamma^ {*} (1 - \alpha)} p _ {t} y _ {t}\right) \\ = \frac {\pi_ {t} \gamma^ {*} (1 - \alpha)}{\gamma_ {t} \alpha + \pi_ {t} \gamma^ {*} (1 - \alpha)} s _ {t} + \frac {\pi_ {t} \gamma^ {*} \alpha}{\gamma_ {t} (1 - \alpha) + \pi_ {t} \gamma^ {*} \alpha} \tilde {s} _ {t} ^ {*}, \\ \end{array}
$$

which lead to

$$
\begin{array}{l} w _ {t} + s _ {t} = \frac {\gamma_ {t} \alpha}{\gamma_ {t} \alpha + \pi_ {t} \gamma^ {*} (1 - \alpha)} s _ {t} + \frac {\gamma_ {t} (1 - \alpha)}{\gamma_ {t} (1 - \alpha) + \pi_ {t} \gamma^ {*} \alpha} \exp (t o t _ {t}) ^ {- 1} \frac {y _ {t} ^ {*}}{y _ {t}} s _ {t}, \\ w _ {t} ^ {*} + \tilde {s} _ {t} ^ {*} = \frac {\pi_ {t} \gamma^ {*} (1 - \alpha)}{\gamma_ {t} \alpha + \pi_ {t} \gamma^ {*} (1 - \alpha)} \exp (t o t _ {t}) \frac {y _ {t}}{y _ {t} ^ {*}} s _ {t} ^ {*} + \frac {\pi_ {t} \gamma^ {*} \alpha}{\gamma_ {t} (1 - \alpha) + \pi_ {t} \gamma^ {*} \alpha} s _ {t} ^ {*}. \\ \end{array}
$$

Plugging the expression of terms of trade  $\exp (tot_{t})$

$$
\exp (t o t _ {t}) = \frac {\gamma_ {t} \alpha + \pi_ {t} \gamma^ {*} (1 - \alpha)}{\gamma_ {t} (1 - \alpha) + \pi_ {t} \gamma^ {*} \alpha} \frac {y _ {t} ^ {*}}{y _ {t}},
$$

into the expression of home and foreign wealth in local numéraires, we have

$$
w _ {t} + s _ {t} = \frac {\gamma_ {t}}{\gamma_ {t} \alpha + \pi_ {t} \gamma^ {*} (1 - \alpha)} s _ {t},
$$

$$
w _ {t} ^ {*} + s _ {t} ^ {*} = \frac {\pi_ {t} \gamma^ {*}}{\gamma_ {t} (1 - \alpha) + \pi_ {t} \gamma^ {*} \alpha} s _ {t} ^ {*}.
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/85e2826edbcf801c693c64cbac8788e389774fc9a7baa2a67feab2aa5e9020d5.jpg)

# A.17 Proposition 5.2 in Section 5.A

Proof. (1) By substituting (A.9) and (A.13) into (5.7), we have

$$
\pi_ {t} = \frac {\tilde {w} _ {t} ^ {*} + \tilde {s} _ {t} ^ {*}}{w _ {t} + s _ {t}} \frac {\gamma_ {t}}{\gamma^ {*}} = \frac {\exp (m _ {\nu_ {H} , t})}{\exp (m _ {\tilde {\nu} _ {F} , t})} \frac {\zeta_ {H}}{\tilde {\zeta} _ {F}}
$$

Recall the representation of both countries' home state price densities,

$$
d \exp \left(m _ {\nu_ {H}, t}\right) = - r _ {t} \exp \left(m _ {\nu_ {H}, t}\right) d t - \left(\lambda_ {t} + \nu_ {H, t}\right) ^ {\prime} \exp \left(m _ {\nu_ {H}, t}\right) d Z _ {t} \tag {A.24}
$$

$$
d \exp \left(m _ {\tilde {v} _ {F}, t}\right) = - r _ {t} \exp \left(m _ {\tilde {v} _ {F}, t}\right) d t - \left(\lambda_ {t} + \tilde {v} _ {F, t}\right) ^ {\prime} \exp \left(m _ {\tilde {v} _ {F}, t}\right) d Z _ {t}. \tag {A.25}
$$

Then, we apply Ito's Lemma to  $\pi_t$  and obtain:

$$
\begin{array}{l} d \pi_ {t} = \pi_ {t} \frac {d \exp (m _ {\tilde {\nu} _ {H} , t})}{\exp (m _ {\nu_ {H} , t})} - \pi_ {t} \frac {d \exp (m _ {\tilde {\nu} _ {F} , t})}{\exp (m _ {\tilde {\nu} _ {F} , t})} - \pi_ {t} \left[ \frac {d \exp (m _ {\tilde {\nu} _ {F} , t})}{\exp (m _ {\tilde {\nu} _ {F} , t})}, \frac {d \exp (m _ {\nu_ {H} , t})}{\exp (m _ {\nu_ {H} , t})} \right] + \pi_ {t} \left[ \frac {d \exp (m _ {\tilde {\nu} _ {F} , t})}{\exp (m _ {\tilde {\nu} _ {F} , t})}, \frac {d \exp (m _ {\tilde {\nu} _ {F} , t})}{\exp (m _ {\tilde {\nu} _ {F} , t})} \right] \\ = \pi_ {t} (\tilde {\nu} _ {F, t} - \nu_ {H, t}) ^ {\prime} \tilde {\nu} _ {F, t} d t + \pi_ {t} (\tilde {\nu} _ {F, t} - \nu_ {H, t}) ^ {\prime} d Z _ {t}, \\ \end{array}
$$

where we use the definition of  $\lambda_{t}$  and the restriction that  $\sigma_t\nu_{H,t} = 0$ ,  $\sigma_t\nu_{H,t} = 0$ . Eq. (A.21) holds for every  $t$ , which implies  $(\tilde{\nu}_{F,t} - \nu_{H,t})'\tilde{\nu}_{F,t} = 0$ .

If we further suppose that at both countries' households do not hold any bonds at the beginning, which means  $w_0 = s_0$  and  $w_0^* = s_0^*$ , we can derive the following results:

$$
\frac {\gamma_ {0}}{\gamma_ {0} \alpha + \pi_ {0} \gamma^ {*} (1 - \alpha)} = 1 \Leftrightarrow \gamma_ {0} (1 - \alpha) = \pi_ {0} \gamma^ {*} (1 - \alpha)
$$

$$
\frac {\pi_ {0} \gamma^ {*}}{\gamma_ {0} (1 - \alpha) + \pi_ {0} \gamma^ {*} \alpha} = 1 \Leftrightarrow \pi_ {0} \gamma^ {*} (1 - \alpha) = \gamma_ {0} (1 - \alpha).
$$

which both lead to

$$
\pi_ {0} = \frac {\gamma_ {0}}{\gamma^ {*}}.
$$

(2) Define

$$
i _ {1} \stackrel {{\mathrm {d e f}}} {{=}} (1, 0, 0), \quad i _ {2} \stackrel {{\mathrm {d e f}}} {{=}} (0, 1, 0), \quad i _ {3} \stackrel {{\mathrm {d e f}}} {{=}} (0, 0, 1).
$$

Apply Ito's Lemma to  $\exp (tot_{t})$ , we obtain:

$$
\begin{array}{l} d \exp (t o t _ {t}) = d \left(\frac {\gamma_ {t} \alpha + \pi_ {t} \gamma^ {*} (1 - \alpha)}{\gamma_ {t} (1 - \alpha) + \pi_ {t} \gamma^ {*} \alpha} \frac {y _ {t} ^ {*}}{y _ {t}}\right) \\ = \exp (t o t _ {t}) \left[ \frac {1}{y _ {t} ^ {*}} d y _ {t} ^ {*} - \frac {1}{y _ {t}} d y _ {t} - \frac {1}{y _ {t} y _ {t} ^ {*}} [ d y _ {t}, d y _ {t} ^ {*} ] + \frac {1}{y _ {t} ^ {2}} [ d y _ {t}, d y _ {t} ] \right. \\ + \frac {1}{\gamma_ {t} \alpha + \pi_ {t} \gamma^ {*} (1 - \alpha)} (\alpha d \gamma_ {t} + \gamma^ {*} (1 - \alpha) d \pi_ {t}) - \frac {1}{\gamma_ {t} (1 - \alpha) + \pi_ {t} \gamma^ {*} \alpha} ((1 - \alpha) d \gamma_ {t} + \gamma^ {*} \alpha d \pi_ {t}) \\ + \frac {1}{y _ {t} ^ {*}} \frac {\left[ d y _ {t} ^ {*} , \alpha d \gamma_ {t} + \gamma^ {*} (1 - \alpha) d \pi_ {t} \right]}{\gamma_ {t} \alpha + \pi_ {t} \gamma^ {*} (1 - \alpha)} - \frac {1}{y _ {t}} \frac {\left[ d y _ {t} , \alpha d \gamma_ {t} + \gamma^ {*} (1 - \alpha) d \pi_ {t} \right]}{\gamma_ {t} \alpha + \pi_ {t} \gamma^ {*} (1 - \alpha)} \\ - \frac {1}{y _ {t} ^ {*}} \frac {\left[ d y _ {t} ^ {*} , (1 - \alpha) d \gamma_ {t} + \gamma^ {*} \alpha d \pi_ {t} \right]}{\gamma_ {t} (1 - \alpha) + \pi_ {t} \gamma^ {*} \alpha} + \frac {1}{y _ {t}} \frac {\left[ d y _ {t} , (1 - \alpha) d \gamma_ {t} + \gamma^ {*} \alpha d \pi_ {t} \right]}{\gamma_ {t} (1 - \alpha) + \pi_ {t} \gamma^ {*} \alpha} \\ + \frac {[ (1 - \alpha) d \gamma_ {t} + \gamma^ {*} \alpha d \pi_ {t} , (1 - \alpha) d \gamma_ {t} + \gamma^ {*} \alpha d \pi_ {t} ]}{(\gamma_ {t} (1 - \alpha) + \pi_ {t} \gamma^ {*} \alpha) ^ {2}} - \frac {[ \alpha d \gamma_ {t} + \gamma^ {*} (1 - \alpha) d \pi_ {t} , (1 - \alpha) d \gamma_ {t} + \gamma^ {*} \alpha d \pi_ {t} ]}{[ \gamma_ {t} \alpha + \pi_ {t} \gamma^ {*} (1 - \alpha) ] [ \gamma_ {t} (1 - \alpha) + \pi_ {t} \gamma^ {*} \alpha ]} \\ \end{array}
$$

Recall that  $e_t = (2\alpha - 1)tot_t$ , which implies

$$
d (t o t _ {t}) = \frac {1}{2 \alpha - 1} \kappa_ {t} d t + \frac {1}{2 \alpha - 1} \sigma_ {t} d Z _ {t}.
$$

If an equilibrium as in (1) exists, by matching the drift and diffusion terms for  $\exp (tot_{t})$ ,

$$
d \exp (t o t _ {t}) = \exp (t o t _ {t}) (\frac {\kappa_ {t}}{2 \alpha - 1} + \frac {1}{2} | | \frac {\sigma_ {t}}{2 \alpha - 1} | | ^ {2}) d t + \exp (t o t _ {t}) \frac {\sigma_ {t}}{2 \alpha - 1} d Z _ {t},
$$

we can compute  $\kappa_{t}$  and  $\sigma_{t}$  as follows:

$$
\begin{array}{l} \frac {\sigma_ {t}}{2 \alpha - 1} = - \sigma_ {y} i _ {1} + \sigma_ {y ^ {*}} i _ {2} + \frac {\alpha \gamma_ {t} \omega i _ {3} + \gamma^ {*} (1 - \alpha) \pi_ {t} (\tilde {\nu} _ {F , t} - \nu_ {H , t}) ^ {\prime}}{\gamma_ {t} \alpha + \pi_ {t} \gamma^ {*} (1 - \alpha)} - \frac {(1 - \alpha) \gamma_ {t} \omega i _ {3} + \gamma^ {*} \alpha \pi_ {t} (\tilde {\nu} _ {F , t} - \nu_ {H , t}) ^ {\prime}}{\gamma_ {t} (1 - \alpha) + \pi_ {t} \gamma^ {*} \alpha} \\ \frac {\kappa_ {t}}{2 \alpha - 1} = \mu_ {y ^ {*}} - \mu_ {y} + \frac {1}{2} \sigma_ {y} ^ {2} - \frac {1}{2} \sigma_ {y ^ {*}} ^ {2} - \frac {1}{2} \frac {\| \alpha \gamma_ {t} \omega i _ {3} + \gamma^ {*} (1 - \alpha) \pi_ {t} (\tilde {\nu} _ {F , t} - \nu_ {H , t}) ^ {\prime} \| ^ {2}}{(\gamma_ {t} \alpha + \pi_ {t} \gamma^ {*} (1 - \alpha)) ^ {2}} + \frac {1}{2} \frac {\| (1 - \alpha) \gamma_ {t} \omega i _ {3} + \gamma^ {*} \alpha \pi_ {t} (\tilde {\nu} _ {F , t} - \nu_ {H , t}) ^ {\prime} \| ^ {2}}{(\gamma_ {t} (1 - \alpha) + \pi_ {t} \gamma^ {*} \alpha) ^ {2}}. \\ \end{array}
$$

Plug in Eq. (A.22) and (A.23) to obtain the drift and volatility of stock price dynamics

$$
\begin{array}{l} \mu_ {t} ^ {\mathrm {s}} = (1 - \alpha) \frac {\kappa_ {t}}{2 \alpha - 1} + \frac {(\alpha - 1) ^ {2}}{2} \| \frac {\sigma_ {t}}{2 \alpha - 1} \| ^ {2} + \mu_ {y} + (1 - \alpha) \sigma_ {y} \frac {\sigma_ {t}}{2 \alpha - 1} i _ {1} ^ {\prime}, \\ \sigma_ {t} ^ {s} = (1 - \alpha) \frac {\sigma_ {t}}{2 \alpha - 1} + \sigma_ {y} i _ {1}, \\ \mu_ {t} ^ {\tilde {s} ^ {*}} = - \alpha \frac {\kappa_ {t}}{2 \alpha - 1} + \frac {\alpha^ {2}}{2} \| \frac {\sigma_ {t}}{2 \alpha - 1} \| ^ {2} + \mu_ {y ^ {*}} - \alpha \sigma_ {y ^ {*}} \frac {\sigma_ {t}}{2 \alpha - 1} i _ {2} ^ {\prime}, \\ \sigma_ {t} ^ {\tilde {s} ^ {*}} = - \alpha \frac {\sigma_ {t}}{2 \alpha - 1} + \sigma_ {y ^ {*}} i _ {2}, \\ \end{array}
$$

Combined with Eq. (A.11) and (A.15), we can solve  $\kappa_{t},\sigma_{t},\nu_{H,t},\tilde{\nu}_{F,t}$  simultaneously as function of exogenous state variables.

(3) Given the formula of the home numétaire, we have

$$
\alpha^ {\alpha} (1 - \alpha) ^ {1 - \alpha} = p _ {t} ^ {\alpha} \left[ p _ {t} ^ {*} \exp (- e _ {t}) \right] ^ {1 - \alpha}.
$$

Therefore, the home household's consumption-based home country stochastic price density is:

$$
\begin{array}{l} \exp (m _ {\nu_ {H}, t}) = \frac {1}{\alpha^ {\alpha} (1 - \alpha) ^ {1 - \alpha}} p _ {t} ^ {\alpha} [ p _ {t} ^ {*} \exp (- e _ {t}) ] ^ {1 - \alpha} \exp (m _ {\nu_ {H}, t}) \\ = \frac {1}{\alpha^ {\alpha} (1 - \alpha) ^ {1 - \alpha}} p _ {t} ^ {\alpha} [ p _ {t} ^ {*} \exp (- e _ {t}) ] ^ {1 - \alpha} \exp (- \delta t) \frac {p _ {0}}{p _ {t}} \frac {\gamma_ {t} \alpha + \pi_ {t} \gamma^ {*} (1 - \alpha)}{\gamma_ {0} \alpha + \pi_ {0} \gamma^ {*} (1 - \alpha)} \frac {y _ {0}}{y _ {t}} \\ = \frac {1}{\alpha^ {\alpha} (1 - \alpha) ^ {1 - \alpha}} \left[ \frac {p _ {t} ^ {*} \exp (- e _ {t})}{p _ {t}} \right] ^ {1 - \alpha} \exp (- \delta t) \left[ \frac {\gamma_ {t} \alpha + \pi_ {t} \gamma^ {*} (1 - \alpha)}{\gamma_ {0} \alpha + \pi_ {0} \gamma^ {*} (1 - \alpha)} \right] \left[ \frac {y _ {0}}{y _ {t}} \right] p _ {0} \\ = \frac {1}{\alpha^ {\alpha} (1 - \alpha) ^ {1 - \alpha}} \exp ((\alpha - 1) t o t _ {t} - \delta t) \left[ \frac {\gamma_ {t} \alpha + \pi_ {t} \gamma^ {*} (1 - \alpha)}{\gamma_ {0} \alpha + \pi_ {0} \gamma^ {*} (1 - \alpha)} \right] \left[ \frac {y _ {0}}{y _ {t}} \right] p _ {0}. \\ \end{array}
$$

It follows that

$$
d \exp (m _ {\nu_ {H}, t}) = \exp (m _ {\nu_ {H}, t}) \left(\mu_ {m, t} + \frac {1}{2} \| \sigma_ {m, t} \| ^ {2}\right) d t + \exp (m _ {\nu_ {H}, t}) \sigma_ {m, t} d Z _ {t},
$$

where

$$
\mu_ {m, t} = - \delta + (\alpha - 1) \frac {\kappa_ {t}}{2 \alpha - 1} - \mu_ {y} + \frac {1}{2} \sigma_ {y} ^ {2} - \frac {1}{2} \frac {\left| \left| \alpha \gamma_ {t} \omega i _ {3} + (1 - \alpha) \gamma^ {*} \pi_ {t} \left(\tilde {v} _ {F , t} - v _ {H , t}\right) ^ {\prime} \right| \right| ^ {2}}{\left(\gamma_ {t} \alpha + \pi_ {t} \gamma^ {*} (1 - \alpha)\right) ^ {2}},
$$

$$
\sigma_ {m, t} = (\alpha - 1) \frac {\sigma_ {t}}{2 \alpha - 1} - \sigma_ {y} i _ {1} + \frac {\alpha \gamma_ {t} \omega i _ {3} + (1 - \alpha) \gamma^ {*} \pi_ {t} (\tilde {\nu} _ {F , t} - \nu_ {H , t}) ^ {\prime}}{\gamma_ {t} \alpha + \pi_ {t} \gamma^ {*} (1 - \alpha)}.
$$

Similarly, for the foreign numétaire, we have

$$
\alpha^ {\alpha} (1 - \alpha) ^ {1 - \alpha} = p _ {t} ^ {* \alpha} [ p _ {t} \exp (e _ {t}) ] ^ {1 - \alpha}.
$$

Then, the foreign household's consumption-based foreign country stochastic price density is:

$$
\begin{array}{l} \exp (m _ {\nu_ {F} ^ {*}, t} ^ {*}) = \frac {1}{\alpha^ {\alpha} (1 - \alpha) ^ {1 - \alpha}} p _ {t} ^ {* \alpha} [ p _ {t} \exp (e _ {t}) ] ^ {1 - \alpha} \exp (m _ {\nu_ {F} ^ {*}, t} ^ {*}) \\ = \frac {1}{\alpha^ {\alpha} (1 - \alpha) ^ {1 - \alpha}} p _ {t} ^ {* \alpha} [ p _ {t} \exp (e _ {t}) ] ^ {1 - \alpha} \frac {\exp (e _ {0})}{\exp (e _ {t})} \exp (m _ {\tilde {v} _ {F}, t}) \\ = \frac {1}{\alpha^ {\alpha} (1 - \alpha) ^ {1 - \alpha}} p _ {t} ^ {* \alpha} [ p _ {t} \exp (e _ {t}) ] ^ {1 - \alpha} \frac {\exp (e _ {0})}{\exp (e _ {t})} \exp (- \delta t) \frac {p _ {0} ^ {*} \exp (- e _ {0}) y _ {0} ^ {*}}{p _ {t} ^ {*} \exp (- e _ {t}) y _ {t} ^ {*}} \frac {\pi_ {0}}{\pi_ {t}} \frac {\gamma_ {t} (1 - \alpha) + \pi_ {t} \gamma^ {*} \alpha}{\gamma_ {0} (1 - \alpha) + \pi_ {0} \gamma^ {*} \alpha} \\ = \frac {1}{\alpha^ {\alpha} (1 - \alpha) ^ {1 - \alpha}} \left[ \frac {p _ {t} \exp (e _ {t})}{p _ {t} ^ {*}} \right] ^ {1 - \alpha} \exp (- \delta t) \frac {p _ {0} ^ {*} y _ {0} ^ {*}}{y _ {t} ^ {*}} \frac {\pi_ {0}}{\pi_ {t}} \frac {\gamma_ {t} (1 - \alpha) + \pi_ {t} \gamma^ {*} \alpha}{\gamma_ {0} (1 - \alpha) + \pi_ {0} \gamma^ {*} \alpha} \\ = \frac {1}{\alpha^ {\alpha} (1 - \alpha) ^ {1 - \alpha}} \exp \big ((1 - \alpha) t o t _ {t} - \delta t \big) \left[ \frac {\gamma_ {t} (1 - \alpha) + \pi_ {t} \gamma^ {*} \alpha}{\gamma_ {0} (1 - \alpha) + \pi_ {0} \gamma^ {*} \alpha} \right] \left[ \frac {y _ {0} ^ {*} \pi_ {0}}{y _ {t} ^ {*} \pi_ {t}} \right] p _ {0} ^ {*}. \\ \end{array}
$$

It follows that

$$
d \exp (m _ {\nu_ {F} ^ {*}, t} ^ {*}) = \exp (m _ {\nu_ {F} ^ {*}, t} ^ {*}) \left(\mu_ {m ^ {*}, t} + \frac {1}{2} \| \sigma_ {m ^ {*}, t} \| ^ {2}\right) d t + \exp (m _ {\nu_ {F} ^ {*}, t} ^ {*}) \sigma_ {m ^ {*}, t} d Z _ {t}
$$

where

$$
\begin{array}{l} \mu_ {m ^ {*}, t} = - \delta + (1 - \alpha) \frac {\kappa_ {t}}{2 \alpha - 1} - \mu_ {y ^ {*}} + \frac {1}{2} \sigma_ {y ^ {*}} ^ {2} + \frac {1}{2} (\| \nu_ {H, t} \| ^ {2} - \| \tilde {\nu} _ {F, t} \| ^ {2}) - \frac {1}{2} \frac {\| (1 - \alpha) \gamma_ {t} \omega i _ {3} + \alpha \gamma^ {*} \pi_ {t} (\tilde {\nu} _ {F , t} - \nu_ {H , t}) ^ {\prime} \| ^ {2}}{(\gamma_ {t} (1 - \alpha) + \pi_ {t} \gamma^ {*} \alpha) ^ {2}}, \\ \sigma_ {m ^ {*}, t} = (1 - \alpha) \frac {\sigma_ {t}}{2 \alpha - 1} - \sigma_ {y ^ {*}} i _ {2} - (\tilde {\nu} _ {F, t} - \nu_ {H, t}) ^ {\prime} + \frac {(1 - \alpha) \gamma_ {t} \omega i _ {3} + \alpha \gamma^ {*} \pi_ {t} (\tilde {\nu} _ {F , t} - \nu_ {H , t}) ^ {\prime}}{\gamma_ {t} (1 - \alpha) + \pi_ {t} \gamma^ {*} \alpha}. \\ \end{array}
$$

We introduce a stochastic wedge  $\eta_t$  that reconciles the log change in exchange rates with the domestic and foreign consumption-based SDFs:

$$
d e _ {t} = d m _ {\nu_ {H}, t} - d m _ {\nu_ {F} ^ {*}, t} ^ {*} + d \eta_ {t}.
$$

Then, we can back up the stochastic wedge  $\eta_t$  process as

$$
\begin{array}{l} d \eta_ {t} = \left(\kappa_ {t} - \mu_ {m, t} + \mu_ {m ^ {*}, t}\right) d t + \left(\sigma_ {t} - \sigma_ {m, t} + \sigma_ {m ^ {*}, t}\right) d Z _ {t} \\ = \frac {1}{2} \left(\left\| \nu_ {H, t} \right\| ^ {2} - \left\| \tilde {\nu} _ {F, t} \right\| ^ {2}\right) d t + \left(\nu_ {H, t} - \tilde {\nu} _ {F, t}\right) ^ {\prime} d Z _ {t}. \\ \end{array}
$$

(4) The interest rates and the home country market price of risk processes can be derived from the dynamics of  $\exp(m_{\nu_H,t})$ . We apply Ito's Lemma to  $\exp(m_{\nu_H,t})$  and match its drift and diffusion terms to obtain  $r_t$  and  $\lambda_t$ .

$$
r _ {t} = - \mu_ {m, t} - \frac {1}{2} \| \sigma_ {m, t} \| ^ {2}
$$

$$
\lambda_ {t} = - \sigma_ {m, t} ^ {\prime} - v _ {H, t}
$$

Given  $\lambda_{t}$  and  $r_t$ , we can calculate  $r_t^*$  using the definition of  $\lambda_{t}$

$$
r _ {t} ^ {*} = - \sigma_ {t} \lambda_ {t} + \kappa_ {t} - \frac {1}{2} \sigma_ {t} \sigma_ {t} ^ {\prime} + r _ {t}.
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/d9fa2a58f0f7084c5f2882167922b06d9c195eaadcab29e84cd5e73991dd448b.jpg)

# A.18 Proposition 5.3 in Section 5.A

Proof. Apply Ito's Lemma to  $\exp (tot_{t})$ , we obtain:

$$
\begin{array}{l} d \exp (t o t _ {t} ^ {c m}) = d \left(\frac {\gamma_ {t} \alpha + \pi \gamma^ {*} (1 - \alpha)}{\gamma_ {t} (1 - \alpha) + \pi \gamma^ {*} \alpha} \frac {y _ {t} ^ {*}}{y _ {t}}\right) \\ = \exp \left(t o t _ {t} ^ {c m}\right) \left[ \frac {1}{y _ {t} ^ {*}} d y _ {t} ^ {*} - \frac {1}{y _ {t}} d y _ {t} - \frac {1}{y _ {t} y _ {t} ^ {*}} \left[ d y _ {t}, d y _ {t} ^ {*} \right] + \frac {1}{y _ {t} ^ {2}} \left[ d y _ {t}, d y _ {t} \right. \right. \\ + \frac {\alpha d \gamma_ {t}}{\gamma_ {t} \alpha + \pi \gamma^ {*} (1 - \alpha)} - \frac {(1 - \alpha) d \gamma_ {t}}{\gamma_ {t} (1 - \alpha) + \pi \gamma^ {*} \alpha} \\ + \frac {1}{y _ {t} ^ {*}} \frac {\left[ d y _ {t} ^ {*} , \alpha d \gamma_ {t} \right]}{\gamma_ {t} \alpha + \pi \gamma^ {*} (1 - \alpha)} - \frac {1}{y _ {t}} \frac {\left[ d y _ {t} , \alpha d \gamma_ {t} \right]}{\gamma_ {t} \alpha + \pi \gamma^ {*} (1 - \alpha)} \\ - \frac {1}{y _ {t} ^ {*}} \frac {\left[ d y _ {t} ^ {*} , (1 - \alpha) d \gamma_ {t} \right]}{\gamma_ {t} (1 - \alpha) + \pi \gamma^ {*} \alpha} + \frac {1}{y _ {t}} \frac {\left[ d y _ {t} , (1 - \alpha) d \gamma_ {t} \right]}{\gamma_ {t} (1 - \alpha) + \pi \gamma^ {*} \alpha} \\ + \frac {[ (1 - \alpha) d \gamma_ {t} , (1 - \alpha) d \gamma_ {t} ]}{\left(\gamma_ {t} (1 - \alpha) + \pi \gamma^ {*} \alpha\right) ^ {2}} - \frac {\left[ \alpha d \gamma_ {t} , (1 - \alpha) d \gamma_ {t} \right]}{\left[ \gamma_ {t} \alpha + \pi \gamma^ {*} (1 - \alpha) \right] \left[ \gamma_ {t} (1 - \alpha) + \pi \gamma^ {*} \alpha \right]} \\ \end{array}
$$

Again, conjecture that the logarithm of terms of trade follows

$$
d \left(t o t _ {t} ^ {c m}\right) = A _ {t} ^ {c m} d t + B _ {t} ^ {c m} d Z _ {t}.
$$

If an equilibrium exists, by matching the drift and diffusion terms for  $\exp (tot_{t})$ ,

$$
d \exp (t o t _ {t} ^ {c m}) = \exp (t o t _ {t} ^ {c m}) (A _ {t} ^ {c m} + \frac {1}{2} | | B _ {t} ^ {c m} | | ^ {2}) d t + \exp (t o t _ {t} ^ {c m}) B _ {t} ^ {c m} d Z _ {t},
$$

we can compute  $A_{t}^{cm}$  and  $B_{t}^{cm}$  as follows:

$$
B _ {t} ^ {c m} = - \sigma_ {y} i _ {1} + \sigma_ {y ^ {*}} i _ {2} + \frac {\alpha \gamma_ {t} \omega i _ {3}}{\gamma_ {t} \alpha + \pi \gamma^ {*} (1 - \alpha)} - \frac {(1 - \alpha) \gamma_ {t} \omega i _ {3}}{\gamma_ {t} (1 - \alpha) + \pi \gamma^ {*} \alpha}
$$

$$
A _ {t} ^ {c m} = \mu_ {y ^ {*}} - \mu_ {y} + \frac {1}{2} \sigma_ {y} ^ {2} - \frac {1}{2} \sigma_ {y ^ {*}} ^ {2} - \frac {1}{2} \frac {\alpha^ {2} \gamma_ {t} ^ {2} \omega^ {2}}{(\gamma_ {t} \alpha + \pi \gamma^ {*} (1 - \alpha)) ^ {2}} + \frac {1}{2} \frac {(1 - \alpha) ^ {2} \gamma_ {t} ^ {2} \omega^ {2}}{(\gamma_ {t} (1 - \alpha) + \pi \gamma^ {*} \alpha) ^ {2}}
$$

Matching the drift and volatility terms of the log exchange rate, we have

$$
d \left(e _ {t} ^ {c m}\right) = d \left(\left(2 \alpha - 1\right) t o t _ {t} ^ {c m}\right) = \left(2 \alpha - 1\right) A _ {t} ^ {c m} d t + \left(2 \alpha - 1\right) B _ {t} ^ {c m} d Z _ {t}.
$$

Therefore,

$$
\kappa_ {t} ^ {c m} = (2 \alpha - 1) A _ {t} ^ {c m},
$$

$$
\sigma_ {t} ^ {c m} = (2 \alpha - 1) B _ {t} ^ {c m}.
$$

Under complete markets, we have a unique home country state price density:

$$
d \exp \left(m _ {t} ^ {c m}\right) = - r _ {t} \exp \left(m _ {t} ^ {c m}\right) d t - \lambda_ {t} ^ {\prime} \exp \left(m _ {t} ^ {c m}\right) d Z _ {t}, \tag {A.26}
$$

and a unique home country state price density:

$$
d \exp \left(m _ {t} ^ {*}, c m\right) = - r _ {t} ^ {*} \exp \left(m _ {t} ^ {*}, c m\right) d t - \lambda_ {t} ^ {* \prime} \exp \left(m _ {t} ^ {*}, c m\right) d Z _ {t}, \tag {A.27}
$$

Given the formula of the home numétaire, we have

$$
\alpha^ {\alpha} (1 - \alpha) ^ {1 - \alpha} = p _ {t} ^ {\alpha} \left[ p _ {t} ^ {*} \exp (- e _ {t} ^ {c m}) \right] ^ {1 - \alpha}.
$$

Therefore, the home household's consumption-based home country stochastic price density is:

$$
\begin{array}{l} \exp \left(m _ {t} ^ {c m}\right) = \frac {1}{\alpha^ {\alpha} (1 - \alpha) ^ {1 - \alpha}} p _ {t} ^ {\alpha} \left[ p _ {t} ^ {*} \exp \left(- e _ {t} ^ {c m}\right) \right] ^ {1 - \alpha} \exp \left(m _ {t} ^ {c m}\right) \\ = \frac {1}{\alpha^ {\alpha} (1 - \alpha) ^ {1 - \alpha}} p _ {t} ^ {\alpha} \left[ p _ {t} ^ {*} \exp (- e _ {t} ^ {c m}) \right] ^ {1 - \alpha} \exp (- \delta t) \frac {p _ {0}}{p _ {t}} \frac {\gamma_ {t} \alpha + \pi \gamma^ {*} (1 - \alpha)}{\gamma_ {0} \alpha + \pi \gamma^ {*} (1 - \alpha)} \frac {y _ {0}}{y _ {t}} \\ = \frac {1}{\alpha^ {\alpha} (1 - \alpha) ^ {1 - \alpha}} \left[ \frac {p _ {t} ^ {*} \exp (- e _ {t} ^ {c m})}{p _ {t}} \right] ^ {1 - \alpha} \exp (- \delta t) \left[ \frac {\gamma_ {t} \alpha + \pi \gamma^ {*} (1 - \alpha)}{\gamma_ {0} \alpha + \pi \gamma^ {*} (1 - \alpha)} \right] \left[ \frac {y _ {0}}{y _ {t}} \right] p _ {0} \\ = \frac {1}{\alpha^ {\alpha} (1 - \alpha) ^ {1 - \alpha}} \exp ((\alpha - 1) t o t _ {t} ^ {c m} - \delta t) \left[ \frac {\gamma_ {t} \alpha + \pi \gamma^ {*} (1 - \alpha)}{\gamma_ {0} \alpha + \pi \gamma^ {*} (1 - \alpha)} \right] \left[ \frac {y _ {0}}{y _ {t}} \right] p _ {0} \\ \end{array}
$$

It follows that

$$
d \exp (m _ {t} ^ {c m}) = \exp (m _ {t} ^ {c m}) \left(\mu_ {m, t} ^ {c m} + \frac {1}{2} \| \sigma_ {m, t} ^ {c m} \| ^ {2}\right) d t + \exp (m _ {t} ^ {c m}) \sigma_ {m, t} ^ {c m} d Z _ {t}
$$

where

$$
\mu_ {m, t} ^ {c m} = - \delta + (\alpha - 1) A _ {t} ^ {c m} - \mu_ {y} + \frac {1}{2} \sigma_ {y} ^ {2} - \frac {1}{2} \frac {\alpha^ {2} \gamma_ {t} ^ {2} \omega^ {2}}{(\gamma_ {t} \alpha + \pi_ {t} \gamma^ {*} (1 - \alpha)) ^ {2}}
$$

$$
\sigma_ {m, t} ^ {c m} = (\alpha - 1) B _ {t} ^ {c m} - \sigma_ {y} i _ {1} + \frac {\alpha \gamma_ {t} \omega i _ {3}}{\gamma_ {t} \alpha + \pi_ {t} \gamma^ {*} (1 - \alpha)}
$$

Similarly, for the foreign numétaire, we have

$$
\alpha^ {\alpha} (1 - \alpha) ^ {1 - \alpha} = p _ {t} ^ {* \alpha} \left[ p _ {t} \exp \left(e _ {t} ^ {c m}\right) \right] ^ {1 - \alpha}.
$$

Then, by the formula of the home numérique, the foreign household's consumption-based foreign country stochastic price density is:

$$
\begin{array}{l} \exp \left(m _ {t} ^ {*}, c m\right) = \frac {1}{\alpha^ {\alpha} (1 - \alpha) ^ {1 - \alpha}} p _ {t} ^ {* \alpha} \left[ p _ {t} \exp \left(e _ {t} ^ {c m}\right) \right] ^ {1 - \alpha} \exp \left(m _ {t} ^ {*}, c m\right) \\ = \frac {1}{\alpha^ {\alpha} (1 - \alpha) ^ {1 - \alpha}} p _ {t} ^ {* \alpha} \left[ p _ {t} \exp \left(e _ {t} ^ {c m}\right) \right] ^ {1 - \alpha} \frac {\exp \left(e _ {0} ^ {c m}\right)}{\exp \left(e _ {t} ^ {c m}\right)} \exp (- \delta t) \frac {p _ {0} ^ {*} \exp \left(- e _ {0} ^ {c m}\right) y _ {0} ^ {*}}{p _ {t} ^ {*} \exp \left(- e _ {t} ^ {c m}\right) y _ {t} ^ {*}} \frac {\gamma_ {t} (1 - \alpha) + \pi \gamma^ {*} \alpha}{\gamma_ {0} (1 - \alpha) + \pi \gamma^ {*} \alpha} \\ = \frac {1}{\alpha^ {\alpha} (1 - \alpha) ^ {1 - \alpha}} \left[ \frac {p _ {t} \exp \left(e _ {t} ^ {c m}\right)}{p _ {t} ^ {*}} \right] ^ {1 - \alpha} \exp (- \delta t) \frac {p _ {0} ^ {*} y _ {0} ^ {*}}{y _ {t} ^ {*}} \frac {\gamma_ {t} (1 - \alpha) + \pi \gamma^ {*} \alpha}{\gamma_ {0} (1 - \alpha) + \pi \gamma^ {*} \alpha} \\ = \frac {1}{\alpha^ {\alpha} (1 - \alpha) ^ {1 - \alpha}} \exp ((1 - \alpha) t o t _ {t} ^ {c m} - \delta t) \left[ \frac {\gamma_ {t} (1 - \alpha) + \pi \gamma^ {*} \alpha}{\gamma_ {0} (1 - \alpha) + \pi \gamma^ {*} \alpha} \right] \left[ \frac {y _ {0} ^ {*}}{y _ {t} ^ {*}} \right] p _ {0} ^ {*} \\ \end{array}
$$

It follows that

$$
d \exp \left(m _ {\nu_ {F} ^ {*}, t} ^ {* c m}\right) = \exp \left(m _ {\nu_ {F} ^ {*}, t} ^ {* c m}\right) \left(\mu_ {m ^ {*}, t} ^ {c m} + \frac {1}{2} \| \sigma_ {m ^ {*}, t} ^ {c m} \| ^ {2}\right) d t + \exp \left(m _ {\nu_ {F} ^ {*}, t} ^ {* c m}\right) \sigma_ {m ^ {*}, t} ^ {c m} d Z _ {t}
$$

where

$$
\mu_ {m ^ {*}, t} ^ {c m} = - \delta + (1 - \alpha) A _ {t} ^ {c m} - \mu_ {y ^ {*}} - \frac {1}{2} \frac {(1 - \alpha) ^ {2} \gamma_ {t} ^ {2} \omega^ {2}}{(\gamma_ {t} (1 - \alpha) + \pi \gamma^ {*} \alpha) ^ {2}}
$$

$$
\sigma_ {m ^ {*}, t} ^ {c m} = (1 - \alpha) B _ {t} ^ {c m} - \sigma_ {y ^ {*}} i _ {2} + \frac {(1 - \alpha) \gamma_ {t} \omega i _ {3}}{\gamma_ {t} (1 - \alpha) + \pi_ {t} \gamma^ {*} \alpha}
$$

Then, the exchange rate dynamics is back in the benchmark complete markets case:

$$
d e _ {t} ^ {c m} = d m _ {t} ^ {c m} - d m _ {t} ^ {* c m}
$$

□

# A.19 Proposition 5.4 in Section 5.B

Proof. First, we plug in  $\Delta e_{t + 1} = m_{t + 1} - m_{t + 1}^{*} + \eta_{t + 1}$  to reproduce the Euler equations (1.6)-(1.9) as follows

$$
1 = \mathbb {E} _ {t} \left[ \exp \left(m _ {t + 1} + r _ {t}\right) \right],
$$

$$
1 = \mathbb {E} _ {t} \left[ \exp \left(m _ {t + 1} ^ {*} - \eta_ {t + 1} + r _ {t} ^ {*}\right) \right],
$$

$$
1 = \mathbb {E} _ {t} \left[ \exp \left(m _ {t + 1} ^ {*} + r _ {t} ^ {*}\right) \right],
$$

$$
1 = \mathbb {E} _ {t} \left[ \exp \left(m _ {t + 1} + \eta_ {t + 1} + r _ {t}\right) \right].
$$

By joint normality, we obtain

$$
\begin{array}{l} 0 = \mathbb {E} _ {t} [ m _ {t + 1} ] + \frac {1}{2} v a r _ {t} (m _ {t + 1}) + r _ {t}, \\ 0 = \mathbb {E} _ {t} [ m _ {t + 1} ] + \frac {1}{2} v a r _ {t} (m _ {t + 1}) + r _ {t} + \mathbb {E} _ {t} [ \eta_ {t + 1} ] + \frac {1}{2} v a r _ {t} (\eta_ {t + 1}) + c o v _ {t} (m _ {t + 1}, \eta_ {t + 1}), \\ 0 = \mathbb {E} _ {t} [ m _ {t + 1} ^ {*} ] + \frac {1}{2} v a r _ {t} (m _ {t + 1} ^ {*}) + r _ {t} ^ {*}, \\ 0 = \mathbb {E} _ {t} [ m _ {t + 1} ^ {*} ] + \frac {1}{2} v a r _ {t} (m _ {t + 1} ^ {*}) + r _ {t} ^ {*} - \mathbb {E} _ {t} [ \eta_ {t + 1} ] + \frac {1}{2} v a r _ {t} (\eta_ {t + 1}) - c o v _ {t} (m _ {t + 1} ^ {*}, \eta_ {t + 1}), \\ \end{array}
$$

which implies

$$
c o v _ {t} \left(m _ {t + 1}, \eta_ {t + 1}\right) = - \mathbb {E} _ {t} \left[ \eta_ {t + 1} \right] - \frac {1}{2} v a r _ {t} \left(\eta_ {t + 1}\right),
$$

$$
c o v _ {t} \left(m _ {t + 1} ^ {*}, \eta_ {t + 1}\right) = - \mathbb {E} _ {t} \left[ \eta_ {t + 1} \right] + \frac {1}{2} v a r _ {t} \left(\eta_ {t + 1}\right),
$$

and hence

$$
c o v _ {t} (m _ {t + 1} - m _ {t + 1} ^ {*}, \eta_ {t + 1}) = - v a r _ {t} (\eta_ {t + 1}).
$$

Recall

$$
\Delta e _ {t + 1} = m _ {t + 1} - m _ {t + 1} ^ {*} + \eta_ {t + 1},
$$

which gives the following moments

$$
\begin{array}{l} v a r _ {t} \left(\Delta e _ {t + 1}\right) = v a r _ {t} \left(m _ {t + 1} - m _ {t + 1} ^ {*}\right) + v a r _ {t} \left(\eta_ {t + 1}\right) + 2 c o v _ {t} \left(m _ {t + 1} - m _ {t + 1} ^ {*}, \eta_ {t + 1}\right) \\ = v a r _ {t} \left(m _ {t + 1} - m _ {t + 1} ^ {*}\right) - v a r _ {t} \left(\eta_ {t + 1}\right), \\ \end{array}
$$

$$
\begin{array}{l} c o v _ {t} \left(m _ {t + 1} - m _ {t + 1} ^ {*}, \Delta e _ {t + 1}\right) = \operatorname {v a r} _ {t} \left(m _ {t + 1} - m _ {t + 1} ^ {*}\right) + c o v _ {t} \left(m _ {t + 1} - m _ {t + 1} ^ {*}, \eta_ {t + 1}\right) \\ = v a r _ {t} \left(m _ {t + 1} - m _ {t + 1} ^ {*}\right) - v a r _ {t} \left(\eta_ {t + 1}\right) \\ = v a r _ {t} \left(\Delta e _ {t + 1}\right). \\ \end{array}
$$

The excess return is given by

$$
\begin{array}{l} \mathbb {E} _ {t} \left[ r x _ {t + 1} \right] = - r _ {t} ^ {*} + r _ {t} + \mathbb {E} _ {t} \left[ \Delta e _ {t + 1} \right] \\ = \mathbb {E} _ {t} [ m _ {t + 1} ^ {*} ] + \frac {1}{2} v a r _ {t} (m _ {t + 1} ^ {*}) - \mathbb {E} _ {t} [ m _ {t + 1} ] - \frac {1}{2} v a r _ {t} (m _ {t + 1}) + \mathbb {E} _ {t} [ m _ {t + 1} - m _ {t + 1} ^ {*} + \eta_ {t + 1} ] \\ = \frac {1}{2} \left(v a r _ {t} \left(m _ {t + 1} ^ {*}\right) - v a r _ {t} \left(m _ {t + 1}\right)\right) + \mathbb {E} _ {t} \left[ \eta_ {t + 1} \right]. \\ \end{array}
$$

□

# A.20 Proposition 5.5 in Section 5.B

Proof. By construction,  $cov_{t}(m_{t + 1},w_{t}\varepsilon_{t + 1}) = cov_{t}(m_{t + 1}^{*},w_{t}\varepsilon_{t + 1}) = 0$ . Hence,

$$
\begin{array}{l} \operatorname {v a r} _ {t} \left(\Delta e _ {t + 1}\right) = \operatorname {v a r} _ {t} \left(x _ {t} + y _ {t} m _ {t + 1} + z _ {t} m _ {t + 1} ^ {*} + w _ {t} \varepsilon_ {t + 1}\right) \\ = v a r _ {t} \left(y _ {t} m _ {t + 1} + z _ {t} m _ {t + 1} ^ {*}\right) + v a r _ {t} \left(w _ {t} \varepsilon_ {t + 1}\right), \\ \end{array}
$$

which implies (a). Similarly,

$$
\begin{array}{l} c o v _ {t} \big (\Delta e _ {t + 1}, m _ {t + 1} - m _ {t + 1} ^ {*} \big) = c o v _ {t} \big (x _ {t} + y _ {t} m _ {t + 1} + z _ {t} m _ {t + 1} ^ {*} + w _ {t} \varepsilon_ {t + 1}, m _ {t + 1} - m _ {t + 1} ^ {*} \big) \\ = c o v _ {t} \left(y _ {t} m _ {t + 1} + z _ {t} m _ {t + 1} ^ {*}, m _ {t + 1} - m _ {t + 1} ^ {*}\right), \\ \end{array}
$$

which implies (b). Define  $rp_{t} = \mathbb{E}_{t}[\Delta e_{t + 1} + r_{t}^{*} - r_{t}]$ . Euler equations (1.6) and (1.7) yield

$$
\begin{array}{l} 0 = \mathbb {E} _ {t} [ m _ {t + 1} ] + \frac {1}{2} v a r _ {t} (m _ {t + 1}) + r _ {t}, \\ 0 = \mathbb {E} _ {t} [ m _ {t + 1} ] + \frac {1}{2} v a r _ {t} (m _ {t + 1}) - \mathbb {E} _ {t} [ \Delta e _ {t + 1} ] + \frac {1}{2} v a r _ {t} (\Delta e _ {t + 1}) - c o v _ {t} (m _ {t + 1}, \Delta e _ {t + 1}) + r _ {t} ^ {*}, \\ \end{array}
$$

which implies

$$
r p _ {t} = - c o v _ {t} \left(m _ {t + 1}, \Delta e _ {t + 1}\right) + \frac {1}{2} v a r _ {t} \left(\Delta e _ {t + 1}\right).
$$

Similarly, Eq. (1.8) and (1.9) imply

$$
r p _ {t} = - c o v _ {t} \left(m _ {t + 1} ^ {*}, \Delta e _ {t + 1}\right) - \frac {1}{2} v a r _ {t} \left(\Delta e _ {t + 1}\right).
$$

Adding together to cancel  $\frac{1}{2} var_{t}(\Delta e_{t + 1})$  and obtain (c)

$$
\begin{array}{l} r p _ {t} = - \frac {1}{2} c o v _ {t} \left(m _ {t + 1}, \Delta e _ {t + 1}\right) - \frac {1}{2} c o v _ {t} \left(m _ {t + 1} ^ {*}, \Delta e _ {t + 1}\right) \\ = - \frac {1}{2} c o v _ {t} \left(m _ {t + 1} + m _ {t + 1} ^ {*}, \Delta e _ {t + 1}\right) \\ = - \frac {1}{2} c o v _ {t} \left(y _ {t} m _ {t + 1} + z _ {t} m _ {t + 1} ^ {*}, m _ {t + 1} + m _ {t + 1} ^ {*}\right). \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/f26f06f3e3c949ec8654a2ada617b298b0c60935115e7cfabad7467875e13aa4.jpg)

# A.21 Proposition 5.6 in Section 5.B

Proof. The Euler equation Eq. (5.18) implies

$$
\begin{array}{l} 0 = \operatorname {c o v} _ {t} \left(\Delta e _ {t + 1}, \Delta e _ {t + 1} - \left(m _ {t + 1} - m _ {t + 1} ^ {*}\right)\right) \\ = c o v _ {t} \left(y _ {t} m _ {t + 1} + z _ {t} m _ {t + 1} ^ {*} + w _ {t} \varepsilon_ {t + 1}, \left(y _ {t} - 1\right) m _ {t + 1} + \left(z _ {t} + 1\right) m _ {t + 1} ^ {*} + w _ {t} \varepsilon_ {t + 1}\right) \\ = y _ {t} \left(y _ {t} - 1\right) \operatorname {v a r} _ {t} \left(m _ {t + 1}\right) + z _ {t} \left(z _ {t} + 1\right) \operatorname {v a r} _ {t} \left(m _ {t + 1} ^ {*}\right) \\ + \left[ y _ {t} (z _ {t} + 1) + z _ {t} (y _ {t} - 1) \right] c o v _ {t} \left(m _ {t + 1}, m _ {t + 1} ^ {*}\right) + w _ {t} ^ {2}, \\ \end{array}
$$

where we use the fact that by construction,  $cov_{t}(w_{t}\varepsilon_{t + 1},m_{t + 1}) = cov_{t}(w_{t}\varepsilon_{t + 1},m_{t + 1}^{*}) = 0$ .  $w_{t}^{2} \geq 0$  leads to constraint Eq. (5.15).

The Euler equation Eq. (5.18) also implies

$$
\begin{array}{l} \operatorname {v a r} _ {t} \left(\Delta e _ {t + 1}\right) = \operatorname {c o v} _ {t} \left(\Delta e _ {t + 1}, m _ {t + 1} - m _ {t + 1} ^ {*}\right) \\ = c o v _ {t} \left(y _ {t} m _ {t + 1} + z _ {t} m _ {t + 1} ^ {*} + w _ {t} \varepsilon_ {t + 1}, m _ {t + 1} - m _ {t + 1} ^ {*}\right) \\ = y _ {t} \operatorname {v a r} _ {t} \left(m _ {t + 1}\right) - z _ {t} \operatorname {v a r} _ {t} \left(m _ {t + 1} ^ {*}\right) + \left(z _ {t} - y _ {t}\right) \operatorname {c o v} _ {t} \left(m _ {t + 1}. m _ {t + 1} ^ {*}\right), \\ \end{array}
$$

which leads to constraint Eq. (5.16).

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/25bd509e3c82df7690eff5107566e0d60650394bcab9436348412155283dd144.jpg)

# A.22 Proposition 5.7 in Section 5.C.

Proof. Recast the Euler equation between country 1 and 2 to obtain

$$
\begin{array}{l} 0 = c o v _ {t} \left[ \Delta e _ {t + 1} ^ {1 / 2}, \Delta e _ {t + 1} ^ {1 / 2} - \left(m _ {t + 1} ^ {(1)} - m _ {t + 1} ^ {(2)}\right) \right] \\ = c o v _ {t} \left[ \Delta e _ {t + 1} ^ {0 / 2} - \Delta e _ {t + 1} ^ {0 / 1}, \left(\Delta e _ {t + 1} ^ {0 / 2} - \left(m _ {t + 1} ^ {(0)} - m _ {t + 1} ^ {(2)}\right)\right) - \left(\Delta e _ {t + 1} ^ {0 / 1} - \left(m _ {t + 1} ^ {(0)} - m _ {t + 1} ^ {(1)}\right)\right) \right] \\ = c o v _ {t} \left[ \Delta e _ {t + 1} ^ {0 / 1}, \Delta e _ {t + 1} ^ {0 / 1} - \left(m _ {t + 1} ^ {(0)} - m _ {t + 1} ^ {(1)}\right) \right] + c o v _ {t} \left[ \Delta e _ {t + 1} ^ {0 / 2}, \Delta e _ {t + 1} ^ {0 / 2} - \left(m _ {t + 1} ^ {(0)} - m _ {t + 1} ^ {(2)}\right) \right] \\ - c o v _ {t} [ \Delta e _ {t + 1} ^ {0 / 2}, \Delta e _ {t + 1} ^ {0 / 1} - (m _ {t + 1} ^ {(0)} - m _ {t + 1} ^ {(1)}) ] - c o v _ {t} [ \Delta e _ {t + 1} ^ {0 / 1}, \Delta e _ {t + 1} ^ {0 / 2} - (m _ {t + 1} ^ {(0)} - m _ {t + 1} ^ {(2)}) ], \\ \end{array}
$$

where the first two terms are zero from the Euler equations (5.18) and (5.19). Hence,

$$
0 = c o v _ {t} [ \Delta e _ {t + 1} ^ {0 / 2}, \Delta e _ {t + 1} ^ {0 / 1} - (m _ {t + 1} ^ {(0)} - m _ {t + 1} ^ {(1)}) ] + c o v _ {t} [ \Delta e _ {t + 1} ^ {0 / 1}, \Delta e _ {t + 1} ^ {0 / 2} - (m _ {t + 1} ^ {(0)} - m _ {t + 1} ^ {(2)}) ].
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/29104820a47c871c03dbb7b61bb442366c6d3e72cb8d05c548a3577eeeec4e06.jpg)

# A.23 Proposition 5.8 in Section 5.C.

Proof. Assume the equity claims (i.e., endowment claims) and risk-free bonds are tradable. Assume the endowment and demand shock processes are exogenous and adapted to the filtration that is generated by some  $d$ -dimensional Brownian motion  $Z_{t}$ . The set of tradable assets does not span all the Brownian shocks. In each country  $i$ , the households' problem is given by

$$
\max  _ {c _ {0, t} ^ {(i)}, c _ {1, t} ^ {(i)}, c _ {2, t} ^ {(i)}} \quad \mathbb {E} \left[ \int_ {0} ^ {T} \exp (- \rho t) \gamma_ {t} ^ {(i)} \left(\alpha \log c _ {i, t} ^ {(i)} + \sum_ {j \neq i} \frac {1 - \alpha}{2} \log c _ {j , t} ^ {(i)}\right) d t \right]
$$

subject to the following dynamic budget constraint

$$
d w _ {t} ^ {(i)} = w _ {t} ^ {(i)} (r _ {t} ^ {(i)} + (\mathbf {x} _ {t} ^ {(i)}) ^ {\prime} (\mu_ {t} ^ {(i)} - r _ {t} ^ {(i)} \mathbf {1})) d t + w _ {t} ^ {(i)} ((\mathbf {x} _ {t} ^ {(i)}) ^ {\prime} \sigma_ {t} ^ {(i)}) d Z _ {t} - \sum_ {j \in \{0, 1, 2 \}} p _ {t} ^ {(j)} \exp (- e _ {t} ^ {i / j}) c _ {j, t} ^ {(i)} d t,
$$

where  $p_t^{(j)}$  is the price of good  $j$  in the numérique of country  $j$ 's consumption bundle  $c_t^{(j)} = \exp(\alpha \log c_{i,t}^{(i)} + \sum_{j \neq i} \frac{1 - \alpha}{2} \log c_{j,t}^{(i)})$ , and  $e_t^{i/j}$

denotes the bilateral exchange rate, which takes a higher value if currency in country  $i$  is stronger.  $\mathbf{x}_t^{(i)}$  is the column vector of portfolio weights for investors in country  $i$ ,  $\mu_t^{(i)}$  is the column vector of expected return of risky assets in country  $i$ 's numérique, and  $\sigma_t^{(i)}$  is the corresponding volatility matrix.

Following He and Pearson [1991], Cuoco and He [1994] and Pavlova and Rigobon [2012], we can solve the system by transforming the dynamic budget constraints to a static one, which is given by

$$
\mathbb {E} \left[ \int_ {0} ^ {T} \exp \left(m _ {t} ^ {(i)}\right) c _ {t} ^ {(i)} \right] \leq w _ {0} ^ {(i)}, \tag {A.28}
$$

where  $\exp(m_t^{(i)})$  is the state price density in country  $i$ . The households' Lagrangian is given by

$$
\mathcal {L} = \mathbb {E} \left[ \int_ {0} ^ {T} \exp (- \rho t) \gamma_ {t} ^ {(i)} \log c _ {t} ^ {(i)} d t + \zeta^ {(i)} \left(w _ {0} ^ {(i)} - \int_ {0} ^ {T} \exp (m _ {t} ^ {(i)}) c _ {t} ^ {(i)} d t\right) \right],
$$

which yields the following first-order condition

$$
\frac {\exp (- \rho t) \gamma_ {t} ^ {(i)}}{c _ {t} ^ {(i)}} = \zeta^ {(i)} \exp \left(m _ {t} ^ {(i)}\right), \tag {A.29}
$$

with the normalization  $\exp(m_0^{(i)}) = 1$ . When markets are incomplete, there are an infinite number of SDFs that correctly price the assets. However, the SDF that coincides with the marginal utility is unique and is given by (A.29).

The households' wealth in period  $t$  is given by

$$
\begin{array}{l} w _ {t} ^ {(i)} = \mathbb {E} _ {t} \left[ \int_ {t} ^ {T} \frac {\exp (m _ {u} ^ {(i)})}{\exp (m _ {t} ^ {(i)})} c _ {u} ^ {(i)} d u \right] = \frac {\zeta^ {(i)}}{\exp (- \rho_ {t}) \gamma_ {t} ^ {(i)}} c _ {t} ^ {(i)} \mathbb {E} _ {t} \left[ \int_ {t} ^ {T} \frac {\exp (- \rho u) \gamma_ {u} ^ {(i)}}{\zeta^ {(i)} c _ {u} ^ {(i)}} c _ {u} ^ {(i)} d u \right] \\ = \frac {1 - \exp (- \rho (T - t))}{\rho} c _ {t} ^ {(i)}, \tag {A.30} \\ \end{array}
$$

where the demand shocks  $\gamma_t^{(i)}$  are assumed to be martingales. Going back to households' problem, the within-period first-order conditions yields

$$
p _ {t} ^ {(j)} \exp (- e _ {t} ^ {i / j}) c _ {j, t} ^ {(i)} = (1 _ {\{i = j \}} \alpha + 1 _ {\{i \neq j \}} \frac {1 - \alpha}{2}) c _ {t} ^ {(i)}.
$$

Next, the equilibrium allocation is not necessarily Pareto optimal with incomplete markets. However, as shown in Cuoco and He [1994] and Pavlova and Rigobon [2012], we can still solve the social planner's problem with stochastic weights  $\pi_t^{(i)}$ ,

$$
\begin{array}{l} \max _ {c ^ {(i) j, t}} \mathbb {E} \left[ \int_ {0} ^ {T} \exp (- \rho t) \sum_ {i \in \{0, 1, 2 \}} \pi_ {t} ^ {(i)} \gamma_ {t} ^ {(i)} \sum_ {j \in \{0, 1, 2 \}} \left(1 _ {\{i = j \}} \alpha + 1 _ {\{i \neq j \}} \frac {1 - \alpha}{2}\right) \log c _ {j, t} ^ {(i)} d t \right], \\ s. t. \quad \sum_ {i \in \{0, 1, 2 \}} c _ {j, t} ^ {(i)} = y _ {t} ^ {(j)}, \quad j \in \{0, 1, 2 \}. \\ \end{array}
$$

The first-order conditions imply

$$
c _ {j, t} ^ {(i)} = \frac {\pi_ {t} ^ {(i)} \gamma_ {t} ^ {(i)} \frac {1 - \alpha}{2}}{\sum_ {i \neq j} \pi_ {t} ^ {(i)} \gamma_ {t} ^ {(i)} \frac {1 - \alpha}{2} + \pi_ {t} ^ {(j)} \gamma_ {t} ^ {(j)} \alpha} y _ {t} ^ {(j)}, i \neq j
$$

$$
c _ {j, t} ^ {(j)} = \frac {\pi_ {t} ^ {(j)} \gamma_ {t} ^ {(j)} \alpha}{\sum_ {i \neq j} \pi_ {t} ^ {(i)} \gamma_ {t} ^ {(i)} \frac {1 - \alpha}{2} + \pi_ {t} ^ {(j)} \gamma_ {t} ^ {(j)} \alpha} y _ {t} ^ {(j)}.
$$

In country 0, the within-period solution implies

$$
p _ {t} ^ {(1)} \exp (- e _ {t} ^ {0 / 1}) c _ {1, t} ^ {(0)} = \frac {1 - \alpha}{2} c _ {t} ^ {(0)}
$$

$$
p _ {t} ^ {(2)} \exp (- e _ {t} ^ {0 / 2}) c _ {2, t} ^ {(0)} = \frac {1 - \alpha}{2} c _ {t} ^ {(0)}
$$

Let  $q_{t}^{1/2}$  denotes the terms of trade in log between countries 1 and 2, which is the ratio of goods prices in a common numérique. Dividing the first equation above by the second yields

$$
\begin{array}{l} \exp (q _ {t} ^ {1 / 2}) = \frac {p _ {t} ^ {(1)} \exp (- e _ {t} ^ {0 / 1})}{p _ {t} ^ {(2)} \exp (- e _ {t} ^ {0 / 2})} \\ = \frac {c _ {2 , t} ^ {(0)}}{c _ {1 , t} ^ {(0)}} = \frac {\pi_ {t} ^ {(0)} \gamma_ {t} ^ {(0)} \frac {1 - \alpha}{2} + \pi_ {t} ^ {(1)} \gamma_ {t} ^ {(1)} \alpha + \pi_ {t} ^ {(2)} \gamma_ {t} ^ {(2)} \frac {1 - \alpha}{2}}{\pi_ {t} ^ {(0)} \gamma_ {t} ^ {(0)} \frac {1 - \alpha}{2} + \pi_ {t} ^ {(1)} \gamma_ {t} ^ {(1)} \frac {1 - \alpha}{2} + \pi_ {t} ^ {(2)} \gamma_ {t} ^ {(2)} \alpha} \frac {y _ {t} ^ {(2)}}{y _ {t} ^ {(1)}}. \tag {A.31} \\ \end{array}
$$

To make comparison across countries, define  $\tilde{w}_t^{(i)} = w_t^{(i)}\exp (-e_t^{0 / i})$  as country  $i$  's wealth in country 0's numeraire. Below, we show that  $\pi_t^{(i)}\gamma_t^{(i)} / \pi_t^{(j)}\gamma_t^{(j)} = \tilde{w}_t^{(i)} / \tilde{w}_t^{(j)}$ . To see this, note that

$$
\begin{array}{l} c _ {t} ^ {(1)} \exp (- e _ {t} ^ {0 / 1}) = p _ {t} ^ {(0)} \exp (- e _ {t} ^ {1 / 0}) \exp (- e _ {t} ^ {0 / 1}) c _ {0, t} ^ {(1)} + p _ {t} ^ {(1)} \exp (- e _ {t} ^ {0 / 1}) c _ {1, t} ^ {(1)} + p _ {t} ^ {(2)} \exp (- e _ {t} ^ {1 / 2}) \exp (- e _ {t} ^ {0 / 1}) c _ {2, t} ^ {(1)} \\ = p _ {t} ^ {(0)} c _ {0, t} ^ {(1)} + p _ {t} ^ {(1)} \exp (- e _ {t} ^ {0 / 1}) c _ {1, t} ^ {(1)} + p _ {t} ^ {(2)} \exp (- e _ {t} ^ {0 / 2}) c _ {2, t} ^ {(1)} \\ = \alpha \frac {c _ {0 , t} ^ {(1)}}{c _ {0 , t} ^ {(0)}} c _ {t} ^ {(0)} + \frac {1 - \alpha}{2} \frac {c _ {1 , t} ^ {(1)}}{c _ {1 , t} ^ {(0)}} c _ {t} ^ {(0)} + \frac {1 - \alpha}{2} \frac {c _ {2 , t} ^ {(1)}}{c _ {2 , t} ^ {(0)}} c _ {t} ^ {(0)} \\ = \left(\alpha \frac {\pi_ {t} ^ {(1)} \gamma_ {t} ^ {(1)} \frac {1 - \alpha}{2}}{\pi_ {t} ^ {(0)} \gamma_ {t} ^ {(0)} \alpha} + \frac {1 - \alpha}{2} \frac {\pi_ {t} ^ {(1)} \gamma_ {t} ^ {(1)} \alpha}{\pi_ {t} ^ {(0)} \gamma_ {t} ^ {(0)} \frac {1 - \alpha}{2}} + \frac {1 - \alpha}{2} \frac {\pi_ {t} ^ {(1)} \gamma_ {t} ^ {(1)} \frac {1 - \alpha}{2}}{\pi_ {t} ^ {(0)} \gamma_ {t} ^ {(0)} \frac {1 - \alpha}{2}}\right) c _ {t} ^ {(0)} \\ = \frac {\pi_ {t} ^ {(1)} \gamma_ {t} ^ {(1)}}{\pi_ {t} ^ {(0)} \gamma_ {t} ^ {(0)}} c _ {t} ^ {(0)}. \\ \end{array}
$$

Hence, by Eq. (A.30),

$$
\frac {\tilde {w} _ {t} ^ {(1)}}{\tilde {w} _ {t} ^ {(0)}} = \frac {c _ {t} ^ {(1)} \exp (- e _ {t} ^ {0 / 1})}{c _ {t} ^ {(0)}} = \frac {\pi_ {t} ^ {(1)} \gamma_ {t} ^ {(1)}}{\pi_ {t} ^ {(0)} \gamma_ {t} ^ {(0)}}.
$$

Similarly,

$$
\frac {\tilde {w} _ {t} ^ {(2)}}{\tilde {w} _ {t} ^ {(0)}} = \frac {c _ {t} ^ {(2)} \exp (- e _ {t} ^ {0 / 2})}{c _ {t} ^ {(0)}} = \frac {\pi_ {t} ^ {(2)} \gamma_ {t} ^ {(2)}}{\pi_ {t} ^ {(0)} \gamma_ {t} ^ {(0)}}.
$$

Plug in Eq. (A.31) to obtain

$$
\begin{array}{l} q _ {t} ^ {1 / 2} = \log \frac {\pi_ {t} ^ {(0)} \gamma_ {t} ^ {(0)} \frac {1 - \alpha}{2} + \pi_ {t} ^ {(1)} \gamma_ {t} ^ {(1)} \alpha + \pi_ {t} ^ {(2)} \gamma_ {t} ^ {(2)} \frac {1 - \alpha}{2}}{\pi_ {t} ^ {(0)} \gamma_ {t} ^ {(0)} \frac {1 - \alpha}{2} + \pi_ {t} ^ {(1)} \gamma_ {t} ^ {(1)} \frac {1 - \alpha}{2} + \pi_ {t} ^ {(2)} \gamma_ {t} ^ {(2)} \alpha} + \log \frac {y _ {t} ^ {(2)}}{y _ {t} ^ {(1)}} \\ = \log \frac {\frac {1 - \alpha}{2} + \frac {\pi_ {t} ^ {(1)} \gamma_ {t} ^ {(1)}}{\pi_ {t} ^ {(0)} \gamma_ {t} ^ {(0)}} \alpha + \frac {\pi_ {t} ^ {(2)} \gamma_ {t} ^ {(2)}}{\pi_ {t} ^ {(0)} \gamma_ {t} ^ {(0)}} \frac {1 - \alpha}{2}}{\frac {1 - \alpha}{2} + \frac {\pi_ {t} ^ {(1)} \gamma_ {t} ^ {(1)}}{\pi_ {t} ^ {(0)} \gamma_ {t} ^ {(0)}} \frac {1 - \alpha}{2} + \frac {\pi_ {t} ^ {(2)} \gamma_ {t} ^ {(2)}}{\pi_ {t} ^ {(0)} \gamma_ {t} ^ {(0)}} \alpha} + \log \frac {y _ {t} ^ {(2)}}{y _ {t} ^ {(1)}} \tag {A.32} \\ = \log \frac {\frac {1 - \alpha}{2} + \frac {\tilde {w} _ {t} ^ {(1)}}{\tilde {w} _ {t} ^ {(0)}} \alpha + \frac {\tilde {w} _ {t} ^ {(2)}}{\tilde {w} _ {t} ^ {(0)}} \frac {1 - \alpha}{2}}{\frac {1 - \alpha}{2} + \frac {\tilde {w} _ {t} ^ {(1)}}{\tilde {w} _ {t} ^ {(0)}} \frac {1 - \alpha}{2} + \frac {\tilde {w} _ {t} ^ {(2)}}{\tilde {w} _ {t} ^ {(0)}} \alpha} + \log \frac {y _ {t} ^ {(2)}}{y _ {t} ^ {(1)}} \\ \end{array}
$$

When markets are complete, the Pareto weights are constant, i.e.  $\pi_t^{(i)} = \pi^{(i)}$ . Plugging in Eq. (A.32) yields

$$
q _ {t} ^ {1 / 2, c m} = \log \frac {\frac {1 - \alpha}{2} + \frac {\pi^ {(1)} \gamma_ {t} ^ {(1)}}{\pi^ {(0)} \gamma_ {t} ^ {(0)}} \alpha + \frac {\pi^ {(2)} \gamma_ {t} ^ {(2)}}{\pi^ {(0)} \gamma_ {t} ^ {(0)}} \frac {1 - \alpha}{2}}{\frac {1 - \alpha}{2} + \frac {\pi^ {(1)} \gamma_ {t} ^ {(1)}}{\pi^ {(0)} \gamma_ {t} ^ {(0)}} \frac {1 - \alpha}{2} + \frac {\pi^ {(2)} \gamma_ {t} ^ {(2)}}{\pi^ {(0)} \gamma_ {t} ^ {(0)}} \alpha} + \log \frac {y _ {t} ^ {(2)}}{y _ {t} ^ {(1)}}.
$$

Finally, we derive the exchange rate as a function of the terms of trade.  $p_t^{(1)}c_{1,t}^{(1)} = \alpha c_t^{(1)}$  implies

$$
\begin{array}{l} p _ {t} ^ {(1)} c _ {1, t} ^ {(1)} = \alpha (c _ {1, t} ^ {(1)}) ^ {\alpha} (c _ {2, t} ^ {(1)}) ^ {\frac {1 - \alpha}{2}} (c _ {3, t} ^ {(1)}) ^ {\frac {1 - \alpha}{2}} \\ p _ {t} ^ {(1)} = \alpha \left(\frac {c _ {2 , t} ^ {(1)}}{c _ {1 , t} ^ {(1)}} \frac {c _ {3 , t} ^ {(1)}}{c _ {1 , t} ^ {(1)}}\right) ^ {\frac {1 - \alpha}{2}} = \alpha \left(\frac {1 - \alpha}{2 \alpha} \exp (q _ {t} ^ {1 / 2}) \exp (q _ {t} ^ {1 / 3})\right) ^ {\frac {1 - \alpha}{2}}. \\ \end{array}
$$

Similarly,  $p_t^{(2)} = \alpha \left(\frac{1 - \alpha}{2\alpha}\exp (q_t^{2 / 1})\exp (q_t^{2 / 3})\right)^{\frac{1 - \alpha}{2}}$ . Recall that  $\exp (q_t^{1 / 2}) = p_t^{(1)}\exp (e_t^{1 / 2}) / p_t^{(2)}$ , which implies

$$
\exp (q _ {t} ^ {1 / 2}) \exp (- e _ {t} ^ {1 / 2}) = \frac {p _ {t} ^ {(1)}}{p _ {t} ^ {(2)}} = \left(\frac {\exp (q _ {t} ^ {1 / 2}) \exp (q _ {t} ^ {1 / 3})}{\exp (q _ {t} ^ {2 / 1}) \exp (q _ {t} ^ {2 / 3})}\right) ^ {\frac {1 - \alpha}{2}} = \exp \left(\frac {3 (1 - \alpha)}{2} q _ {t} ^ {1 / 2}\right).
$$

Hence, the log bilateral exchange rate is linear in the log terms of trade:

$$
e _ {t} ^ {1 / 2} = \frac {3 \alpha - 1}{2} q _ {t} ^ {1 / 2},
$$

which concludes the proof.

□

# A.24 Proposition 6.2 and 6.3 in Section 6.C

Proof. Consider the general case in Proposition 6.3. By market clearing and price setting,

$$
z _ {t} \ell_ {t} = \frac {P _ {t} c _ {t}}{P _ {H , t}} \left(1 + \alpha \frac {g _ {t}}{c _ {t}} + (1 - \alpha) \frac {g _ {t} ^ {*}}{c _ {t} ^ {*}}\right)
$$

$$
z _ {t} ^ {*} \ell_ {t} ^ {*} = \frac {P _ {t} ^ {*} c _ {t} ^ {*}}{P _ {F , t} ^ {*}} \left(1 + \alpha \frac {g _ {t} ^ {*}}{c _ {t} ^ {*}} + (1 - \alpha) \frac {g _ {t}}{c _ {t}}\right).
$$

By  $W_{t} = \kappa P_{t}c_{t}\ell_{t}^{\nu}$

$$
\frac {P _ {t} c _ {t}}{P _ {H , t}} = \frac {\rho - 1}{\kappa \rho} z _ {t} \ell_ {t} ^ {- \nu}
$$

Let  $\bar{\ell} = \frac{\rho - 1}{\rho\kappa}$ . The market clearing equations become

$$
\ell_ {t} ^ {1 + \nu} = \bar {\ell} \left(1 + \alpha \frac {g _ {t}}{c _ {t}} + (1 - \alpha) \frac {g _ {t} ^ {*}}{c _ {t} ^ {*}}\right)
$$

By the market clearing equations again,

$$
z _ {t} \bar {\ell} \ell_ {t} ^ {- \nu} = \frac {P _ {t} c _ {t}}{P _ {H , t}}
$$

$$
c _ {t} = z _ {t} \bar {\ell} \ell_ {t} ^ {- \nu} \frac {P _ {H , t}}{P _ {t}} = \alpha^ {\alpha} (1 - \alpha) ^ {1 - \alpha} \bar {\ell} \ell_ {t} ^ {- \nu} z _ {t} \frac {P _ {H , t}}{P _ {H , t} ^ {\alpha} P _ {F , t} ^ {1 - \alpha}}
$$

By price setting,

$$
\frac {P _ {H , t}}{P _ {F , t}} = \frac {\frac {\rho}{\rho - 1} \frac {W _ {t}}{z _ {t}}}{\exp (- \mathcal {E} _ {t}) \frac {\rho}{\rho - 1} \frac {W _ {t} ^ {*}}{z _ {t} ^ {*}}} = \frac {\frac {P _ {t} c _ {t} \ell_ {t} ^ {\nu}}{z _ {t}}}{\exp (- \mathcal {E} _ {t}) \frac {P _ {t} ^ {*} c _ {t} ^ {*} (\ell_ {t} ^ {*}) ^ {\nu}}{z _ {t} ^ {*}}} = \frac {z _ {t} ^ {*} (\ell_ {t} ^ {*}) ^ {- \nu}}{z _ {t} \ell_ {t} ^ {- \nu}}
$$

so

$$
\begin{array}{l} \log c _ {t} = \log \alpha^ {\alpha} (1 - \alpha) ^ {1 - \alpha} \bar {\ell} + \alpha (\log z _ {t} - \nu \log \ell_ {t}) + (1 - \alpha) (\log z _ {t} ^ {*} - \nu \log \ell_ {t} ^ {*}) \\ = \log \alpha^ {\alpha} (1 - \alpha) ^ {1 - \alpha} + \frac {1}{1 + \nu} \log \bar {\ell} + \alpha \log z _ {t} + (1 - \alpha) \log z _ {t} ^ {*} \\ - \frac {\nu}{1 + \nu} \left(\alpha \log \left(1 + \alpha \frac {g _ {t}}{c _ {t}} + (1 - \alpha) \frac {g _ {t} ^ {*}}{c _ {t} ^ {*}}\right) + (1 - \alpha) \log \left(1 + \alpha \frac {g _ {t} ^ {*}}{c _ {t} ^ {*}} + (1 - \alpha) \frac {g _ {t}}{c _ {t}}\right)\right) \\ \end{array}
$$

To solve this equation system, we linearize spending  $g_{t} / c_{t}$  and  $g_{t}^{*} / c_{t}^{*}$  around o:

$$
\begin{array}{l} \log c _ {t} = \log \alpha^ {\alpha} (1 - \alpha) ^ {1 - \alpha} + \frac {1}{1 + \nu} \log \bar {\ell} + \alpha \log z _ {t} + (1 - \alpha) \log z _ {t} ^ {*} \\ \left. - \frac {\nu}{1 + \nu} \left(\alpha \left(\alpha \frac {g _ {t}}{c _ {t}} + (1 - \alpha) \frac {g _ {t} ^ {*}}{c _ {t} ^ {*}}\right) + (1 - \alpha) \left(\alpha \frac {g _ {t} ^ {*}}{c _ {t} ^ {*}} + (1 - \alpha) \frac {g _ {t}}{c _ {t}}\right)\right) \right. \\ \end{array}
$$

which simplifies to

$$
\log c _ {t} - \log \bar {c} \approx \alpha \log z _ {t} + (1 - \alpha) \log z _ {t} ^ {*} - \frac {\nu}{1 + \nu} \left((\alpha^ {2} + (1 - \alpha) ^ {2}) \frac {g _ {t}}{c _ {t}} + 2 (1 - \alpha) \alpha \frac {g _ {t} ^ {*}}{c _ {t} ^ {*}}\right),
$$

Similarly, the foreign counterpart is

$$
\log c _ {t} ^ {*} - \log \bar {c} \approx (1 - \alpha) \log z _ {t} + \alpha \log z _ {t} ^ {*} - \frac {\nu}{1 + \nu} \left((\alpha^ {2} + (1 - \alpha) ^ {2}) \frac {g _ {t} ^ {*}}{c _ {t} ^ {*}} + 2 (1 - \alpha) \alpha \frac {g _ {t}}{c _ {t}}\right),
$$

Hence, the equilibrium foreign real exchange rate is

$$
\begin{array}{l} - e _ {t} \stackrel {\text {d e f}} {=} \log \frac {P _ {t} ^ {*}}{P _ {t}} \exp (- \mathcal {E} _ {t}) = \log c _ {t} - \log c _ {t} ^ {*} \\ \approx (2 \alpha - 1) (\log z _ {t} - \log z _ {t} ^ {*}) - \frac {\nu}{1 + \nu} (2 \alpha - 1) ^ {2} \left(\frac {g _ {t}}{c _ {t}} - \frac {g _ {t} ^ {*}}{c _ {t} ^ {*}}\right), \\ \end{array}
$$

Plug in  $\nu = 0$  to get Proposition 6.2.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/f78e571d5f6aa0acdeb7f4a8ccf2643dca41ea26f032c1862102ad5231f15b21.jpg)

# A.25 Proposition 6.4 in Section 6.D

Proof. When prices are sticky, the model is closed by the following equations for prices:

$$
P _ {H, t} = \frac {\rho}{\rho - 1} \mathbb {E} _ {t - 1} \left[ \frac {W _ {t}}{z _ {t}} \right] \quad \exp (- \mathcal {E} _ {t}) P _ {H, t} ^ {*} = \frac {\rho}{\rho - 1} \mathbb {E} _ {t - 1} \left[ \frac {W _ {t}}{z _ {t}} \right] \tag {A.33}
$$

$$
\exp \left(\mathcal {E} _ {t}\right) P _ {F, t} = \frac {\rho}{\rho - 1} \mathbb {E} _ {t - 1} \left[ \frac {W _ {t} ^ {*}}{z _ {t} ^ {*}} \right] \quad P _ {F, t} ^ {*} = \frac {\rho}{\rho - 1} \mathbb {E} _ {t - 1} \left[ \frac {W _ {t} ^ {*}}{z _ {t} ^ {*}} \right] \tag {A.34}
$$

Just as in the flexible price case,

$$
z _ {t} \ell_ {t} = \frac {P _ {t} c _ {t}}{P _ {H , t}} \left(1 + \alpha \frac {g _ {t}}{c _ {t}} + (1 - \alpha) \frac {g _ {t} ^ {*}}{c _ {t} ^ {*}}\right) \tag {A.35}
$$

Also use Eq. (A.33),

$$
\ell_ {t} = \frac {P _ {t} c _ {t}}{P _ {H , t} z _ {t}} \left(1 + \alpha \frac {g _ {t}}{c _ {t}} + (1 - \alpha) \frac {g _ {t} ^ {*}}{c _ {t} ^ {*}}\right) = \frac {P _ {t} c _ {t} / z _ {t}}{\mathbb {E} _ {t - 1} \left[ P _ {t} c _ {t} \ell_ {t} ^ {\nu} / z _ {t} \right]} \bar {\ell} \left(1 + \alpha \frac {g _ {t}}{c _ {t}} + (1 - \alpha) \frac {g _ {t} ^ {*}}{c _ {t} ^ {*}}\right)
$$

Use Eq. (A.35) again,

$$
\begin{array}{l} c _ {t} = z _ {t} \ell_ {t} \cdot \frac {P _ {H , t}}{P _ {t}} \left(1 + \alpha \frac {g _ {t}}{c _ {t}} + (1 - \alpha) \frac {g _ {t} ^ {*}}{c _ {t} ^ {*}}\right) ^ {- 1} = \frac {P _ {H , t}}{\frac {1}{\alpha^ {\alpha} (1 - \alpha) ^ {1 - \alpha}} P _ {H , t} ^ {\alpha} P _ {F , t} ^ {1 - \alpha}} \frac {P _ {t} c _ {t}}{\mathbb {E} _ {t - 1} \left[ P _ {t} c _ {t} \ell_ {t} ^ {\nu} / z _ {t} \right]} \bar {\ell} \\ = \frac {P _ {t} c _ {t}}{\mathbb {E} _ {t - 1} \left[ P _ {t} c _ {t} \ell_ {t} ^ {\nu} / z _ {t} \right]} \bar {\ell} (\alpha^ {\alpha} (1 - \alpha) ^ {1 - \alpha}) \frac {P _ {H , t} ^ {1 - \alpha}}{P _ {F , t} ^ {1 - \alpha}} \\ \end{array}
$$

Use the price setting Eq. (A.33) and (A.34),

$$
\frac {P _ {H , t}}{P _ {F , t}} = \frac {1}{\exp (- \mathcal {E} _ {t})} \frac {\mathbb {E} _ {t - 1} [ W _ {t} / z _ {t} ]}{\mathbb {E} _ {t - 1} [ W _ {t} ^ {*} / z _ {t} ^ {*} ]} = \frac {P _ {t} ^ {*} c _ {t} ^ {*}}{P _ {t} c _ {t}} \frac {\mathbb {E} _ {t - 1} [ P _ {t} c _ {t} \ell_ {t} ^ {\nu} / z _ {t} ]}{\mathbb {E} _ {t - 1} [ P _ {t} ^ {*} c _ {t} ^ {*} (\ell_ {t} ^ {\nu}) ^ {\nu} / z _ {t} ^ {*} ]}
$$

Then

$$
c _ {t} = \bar {\ell} \alpha^ {\alpha} (1 - \alpha) ^ {1 - \alpha} \frac {(P _ {t} c _ {t}) ^ {\alpha} (P _ {t} ^ {*} c _ {t} ^ {*}) ^ {1 - \alpha}}{(\mathbb {E} _ {t - 1} [ P _ {t} c _ {t} \ell_ {t} ^ {\nu} / z _ {t} ]) ^ {\alpha} (\mathbb {E} _ {t - 1} [ P _ {t} ^ {*} c _ {t} ^ {*} (\ell_ {t} ^ {*}) ^ {\nu} / z _ {t} ^ {*} ]) ^ {1 - \alpha}}
$$

So the equilibrium price levels and consumption can be solved by

$$
c _ {t} = \bar {\ell} \alpha^ {\alpha} (1 - \alpha) ^ {1 - \alpha} \frac {\left(P _ {t} c _ {t}\right) ^ {\alpha} \left(P _ {t} ^ {*} c _ {t} ^ {*}\right) ^ {1 - \alpha}}{\left(\mathbb {E} _ {t - 1} \left[ P _ {t} c _ {t} \ell_ {t} ^ {\nu} / z _ {t} \right]\right) ^ {\alpha} \left(\mathbb {E} _ {t - 1} \left[ P _ {t} ^ {*} c _ {t} ^ {*} \left(\ell_ {t} ^ {*}\right) ^ {\nu} / z _ {t} ^ {*} \right]\right) ^ {1 - \alpha}}
$$

$$
c _ {t} ^ {*} = \bar {\ell} \alpha^ {\alpha} (1 - \alpha) ^ {1 - \alpha} \frac {(P _ {t} c _ {t}) ^ {1 - \alpha} (P _ {t} ^ {*} c _ {t} ^ {*}) ^ {\alpha}}{(\mathbb {E} _ {t - 1} [ P _ {t} c _ {t} \ell_ {t} ^ {\nu} / z _ {t} ]) ^ {1 - \alpha} (\mathbb {E} _ {t - 1} [ P _ {t} ^ {*} c _ {t} ^ {*} (\ell_ {t} ^ {*}) ^ {\nu} / z _ {t} ^ {*} ]) ^ {\alpha}}
$$

$$
P _ {t} = \frac {Q _ {t}}{s _ {t} + c _ {t} \mathbb {E} _ {t} \left[ \sum_ {k = t + 1} ^ {\infty} \beta^ {k - t} \frac {s _ {k}}{c _ {k}} \right]},
$$

$$
P _ {t} ^ {*} = \frac {Q _ {t} ^ {*}}{s _ {t} ^ {*} + c _ {t} ^ {*} \mathbb {E} _ {t} \left[ \sum_ {k = t + 1} ^ {\infty} \beta^ {k - t} \frac {s _ {k} ^ {*}}{c _ {k} ^ {*}} \right]}.
$$

which implies

$$
\begin{array}{l} \log c _ {t} = \kappa_ {t - 1} ^ {c} + \alpha \log \left(P _ {t} c _ {t}\right) + (1 - \alpha) \log \left(P _ {t} ^ {*} c _ {t} ^ {*}\right) \\ \log c _ {t} ^ {*} = \kappa_ {t - 1} ^ {c ^ {*}} + \alpha \log (P _ {t} ^ {*} c _ {t} ^ {*}) + (1 - \alpha) \log (P _ {t} c _ {t}) \\ - e _ {t} = \log c _ {t} - \log c _ {t} ^ {*} = \kappa_ {t - 1} ^ {e} + (2 \alpha - 1) \left(\log \left(P _ {t} c _ {t}\right) - \log \left(P _ {t} ^ {*} c _ {t} ^ {*}\right)\right) \\ \end{array}
$$

where

$$
\kappa_ {t - 1} ^ {c} = \log \left(\frac {\bar {\ell} \alpha^ {\alpha} (1 - \alpha) ^ {1 - \alpha}}{(\mathbb {E} _ {t - 1} [ P _ {t} c _ {t} \ell_ {t} ^ {\nu} / z _ {t} ]) ^ {\alpha} (\mathbb {E} _ {t - 1} [ P _ {t} ^ {*} c _ {t} ^ {*} (\ell_ {t} ^ {*}) ^ {\nu} / z _ {t} ^ {*} ]) ^ {1 - \alpha}}\right)
$$

$$
\kappa_ {t - 1} ^ {c} = \log \left(\frac {\bar {\ell} \alpha^ {\alpha} (1 - \alpha) ^ {1 - \alpha}}{(\mathbb {E} _ {t - 1} [ P _ {t} c _ {t} \ell_ {t} ^ {\nu} / z _ {t} ]) ^ {1 - \alpha} (\mathbb {E} _ {t - 1} [ P _ {t} ^ {*} c _ {t} ^ {*} (\ell_ {t} ^ {*}) ^ {\nu} / z _ {t} ^ {*} ]) ^ {\alpha}}\right)
$$

$$
\kappa_ {t - 1} ^ {e} = \kappa_ {t - 1} ^ {c} - \kappa_ {t - 1} ^ {c ^ {*}}
$$

# A.26 Proposition 6.5 in Section 6.D

Proof. Plug in Eq. (6.15) into Proposition 6.4 to get

$$
\begin{array}{l} \log c _ {t} = \kappa_ {t - 1} ^ {c} - \alpha \left(i _ {t} + \log \mathbb {E} _ {t} \left[ \delta \frac {1}{P _ {t + 1} c _ {t + 1}} \right]\right) - (1 - \alpha) \left(i _ {t} ^ {*} + \log \mathbb {E} _ {t} \left[ \delta \frac {1}{P _ {t + 1} ^ {*} c _ {t + 1} ^ {*}} \right]\right) \\ = \tilde {\kappa} _ {t - 1} ^ {c} - \alpha i _ {t} - (1 - \alpha) i _ {t} ^ {*} \\ \end{array}
$$

similarly,

$$
\begin{array}{l} \log c _ {t} ^ {*} = \kappa_ {t - 1} ^ {c ^ {*}} - \alpha \left(i _ {t} ^ {*} + \log \mathbb {E} _ {t} \left[ \delta \frac {1}{P _ {t + 1} ^ {*} c _ {t + 1} ^ {*}} \right]\right) - (1 - \alpha) \left(i _ {t} + \log \mathbb {E} _ {t} \left[ \delta \frac {1}{P _ {t + 1} c _ {t + 1}} \right]\right) \\ = \tilde {\kappa} _ {t - 1} ^ {c ^ {*}} - \alpha i _ {t} ^ {*} - (1 - \alpha) i _ {t} \\ \end{array}
$$

where

$$
\begin{array}{l} \tilde {\kappa} _ {t - 1} ^ {c} = \kappa_ {t - 1} ^ {c} - \alpha \log \mathbb {E} _ {t} \left[ \delta \frac {1}{P _ {t + 1} c _ {t + 1}} \right] - (1 - \alpha) \log \mathbb {E} _ {t} \left[ \delta \frac {1}{P _ {t + 1} ^ {*} c _ {t + 1} ^ {*}} \right] \\ \tilde {\kappa} _ {t - 1} ^ {c ^ {*}} = \kappa_ {t - 1} ^ {c ^ {*}} - \alpha \log \mathbb {E} _ {t} \left[ \delta \frac {1}{P _ {t + 1} ^ {*} c _ {t + 1} ^ {*}} \right] - (1 - \alpha) \log \mathbb {E} _ {t} \left[ \delta \frac {1}{P _ {t + 1} c _ {t + 1}} \right] \\ \end{array}
$$

Recall the real Euler equation:

$$
\begin{array}{l} r _ {t} = - \log \delta - \log \mathbb {E} _ {t} \left[ c _ {t} / c _ {t + 1} \right] \\ = - \log \delta - \log c _ {t} - \log \mathbb {E} _ {t} \left[ 1 / c _ {t + 1} \right] \\ \end{array}
$$

Plugging log consumption into the equation above yields:

$$
r _ {t} = \bar {r} + \alpha i _ {t} + (1 - \alpha) i _ {t} ^ {*}.
$$

where

$$
\bar {r} = - \log \delta - \tilde {\kappa} _ {t - 1} ^ {c} - \log \mathbb {E} _ {t} \left[ 1 / c _ {t + 1} \right]
$$

the equilibrium log real exchange rate is

$$
- e _ {t} = \log c _ {t} - \log c _ {t} ^ {*} = \tilde {\kappa} _ {t - 1} ^ {c} - \tilde {\kappa} _ {t - 1} ^ {c ^ {*}} - (2 \alpha - 1) (i _ {t} - i _ {t} ^ {*})
$$

and the equilibrium price levels can be pinned down by plugging consumption into Eq. (6.15)

$$
\begin{array}{l} \log P _ {t} = - \log c _ {t} - i _ {t} - \log \mathbb {E} _ {t} \left[ \delta \frac {1}{P _ {t + 1} c _ {t + 1}} \right] \\ = - \tilde {\kappa} _ {t - 1} ^ {c} - \log \mathbb {E} _ {t} \left[ \delta \frac {1}{P _ {t + 1} c _ {t + 1}} \right] + (1 - \alpha) (i _ {t} ^ {*} - i _ {t}) \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/f3c3afc2c7461954d3b8130b93a15a48ea556dc33544804131f22b2f36348f3f.jpg)

# A.27 Proposition 6.6 in Section 6.D

Proof. From Proposition 6.4, plug the last two equations into the two above:

$$
\begin{array}{l} c _ {t} = \bar {\ell} \alpha^ {\alpha} (1 - \alpha) ^ {1 - \alpha} \frac {\left(\frac {1}{s _ {t} + c _ {t} \mathbb {E} _ {t} \left[ \sum_ {k = t + 1} ^ {\infty} \beta^ {k - t} \frac {s _ {k}}{c _ {k}} \right]} c _ {t}\right) ^ {\alpha} \left(\frac {1}{s _ {t} ^ {*} + c _ {t} ^ {*} \mathbb {E} _ {t} \left[ \sum_ {k = t + 1} ^ {\infty} \beta^ {k - t} \frac {s _ {k} ^ {*}}{c _ {k}} \right]} c _ {t} ^ {*}\right) ^ {1 - \alpha}}{\left(\mathbb {E} _ {t - 1} [ \frac {1}{s _ {t} + c _ {t} \mathbb {E} _ {t} \left[ \sum_ {k = t + 1} ^ {\infty} \beta^ {k - t} \frac {s _ {k}}{c _ {k}} \right]} c _ {t} \ell_ {t} ^ {\nu} / z _ {t} ]\right) ^ {\alpha} \left(\mathbb {E} _ {t - 1} [ \frac {1}{s _ {t} ^ {*} + c _ {t} ^ {*} \mathbb {E} _ {t} \left[ \sum_ {k = t + 1} ^ {\infty} \beta^ {k - t} \frac {s _ {k} ^ {*}}{c _ {k}} \right]} c _ {t} ^ {*} (\ell_ {t} ^ {*}) ^ {\nu} / z _ {t} ^ {*} ]\right) ^ {1 - \alpha}} \\ c _ {t} ^ {*} = \bar {\ell} \alpha^ {\alpha} (1 - \alpha) ^ {1 - \alpha} \frac {\left(\frac {1}{s _ {t} + c _ {t} \mathbb {E} _ {t} \left[ \sum_ {k = t + 1} ^ {\infty} \beta^ {k - t} \frac {s _ {k}}{c _ {k}} \right]} c _ {t}\right) ^ {1 - \alpha} \left(\frac {1}{s _ {t} ^ {*} + c _ {t} ^ {*} \mathbb {E} _ {t} \left[ \sum_ {k = t + 1} ^ {\infty} \beta^ {k - t} \frac {s _ {k} ^ {*}}{c _ {k} ^ {*}} \right]} c _ {t} ^ {*}\right) ^ {\alpha}}{\left(\mathbb {E} _ {t - 1} [ \frac {1}{s _ {t} + c _ {t} \mathbb {E} _ {t} \left[ \sum_ {k = t + 1} ^ {\infty} \beta^ {k - t} \frac {s _ {k}}{c _ {k}} \right]} c _ {t} \ell_ {t} ^ {\nu} / z _ {t} ]\right) ^ {1 - \alpha} \left(\mathbb {E} _ {t - 1} [ \frac {1}{s _ {t} ^ {*} + c _ {t} ^ {*} \mathbb {E} _ {t} \left[ \sum_ {k = t + 1} ^ {\infty} \beta^ {k - t} \frac {s _ {k} ^ {*}}{c _ {k} ^ {*}} \right]} c _ {t} ^ {*} (\ell_ {t} ^ {*}) ^ {\nu} / z _ {t} ^ {*} ]\right) ^ {\alpha}}. \\ \end{array}
$$

We conjecture that  $c_t$  and  $c_t^*$  are functions of  $s_t$  and  $s_t^*$  only. Then, by the i.i.d. assumption of the government surpluses, the expectation terms  $\mathbb{E}_t\left[\sum_{k = t + 1}^{\infty}\beta^{k - t}\frac{s_k}{c_k}\right]$  and  $\mathbb{E}_t\left[\sum_{k = t + 1}^{\infty}\beta^{k - t}\frac{s_k^*}{c_k^*}\right]$  are constants,

denoted as  $A$  and  $A^{*}$ . The equations become

$$
c _ {t} = \bar {\ell} \alpha^ {\alpha} (1 - \alpha) ^ {1 - \alpha} \frac {\left(\frac {1}{s _ {t} + c _ {t} A} c _ {t}\right) ^ {\alpha} \left(\frac {1}{s _ {t} ^ {*} + c _ {t} ^ {*} A ^ {*}} c _ {t} ^ {*}\right) ^ {1 - \alpha}}{\left(\mathbb {E} _ {t - 1} \left[ \frac {1}{s _ {t} + c _ {t} A} c _ {t} \ell_ {t} ^ {\nu} / z _ {t} \right]\right) ^ {\alpha} \left(\mathbb {E} _ {t - 1} \left[ \frac {1}{s _ {t} ^ {*} + c _ {t} ^ {*} A ^ {*}} c _ {t} ^ {*} (\ell_ {t} ^ {*}) ^ {\nu} / z _ {t} ^ {*} \right]\right) ^ {1 - \alpha}}
$$

$$
c _ {t} ^ {*} = \bar {\ell} \alpha^ {\alpha} (1 - \alpha) ^ {1 - \alpha} \frac {(\frac {1}{s _ {t} + c _ {t} A} c _ {t}) ^ {1 - \alpha} (\frac {1}{s _ {t} ^ {*} + c _ {t} ^ {*} A ^ {*}} c _ {t} ^ {*}) ^ {\alpha}}{(\mathbb {E} _ {t - 1} [ \frac {1}{s _ {t} + c _ {t} A} c _ {t} \ell_ {t} ^ {\nu} / z _ {t} ]) ^ {1 - \alpha} (\mathbb {E} _ {t - 1} [ \frac {1}{s _ {t} ^ {*} + c _ {t} ^ {*} A ^ {*}} c _ {t} ^ {*} (\ell_ {t} ^ {*}) ^ {\nu} / z _ {t} ^ {*} ]) ^ {\alpha}}.
$$

By the i.i.d. assumption of  $s_t, s_t^*, z_t$ , and  $z_t^*$ , the expectation terms  $\mathbb{E}_{t-1} \left[ \frac{1}{s_t + c_t A} c_t \ell_t^\nu / z_t \right]$  and  $\mathbb{E}_{t-1} \left[ \frac{1}{s_t^* + c_t^* A^*} c_t^* (\ell_t^*)^\nu / z_t^* \right]$  do not vary across periods. The two equations above can be used to solve  $c_t$  and  $c_t^*$  as functions of  $s_t$  and  $s_t^*$ , which confirms the conjecture.

Take log,

$$
\log c _ {t} = \log \frac {\bar {\ell} \alpha^ {\alpha} (1 - \alpha) ^ {1 - \alpha}}{(\mathbb {E} _ {t - 1} [ \frac {c _ {t}}{s _ {t} + c _ {t} A} \frac {\ell_ {t} ^ {\nu}}{z _ {t}} ]) ^ {\alpha} (\mathbb {E} _ {t - 1} [ \frac {c _ {t} ^ {*}}{s _ {t} ^ {*} + c _ {t} ^ {*} A ^ {*}} \frac {(\ell_ {t} ^ {*}) ^ {\nu}}{z _ {t} ^ {*}} ]) ^ {1 - \alpha}} + \alpha \log (\frac {c _ {t}}{s _ {t} + c _ {t} A}) + (1 - \alpha) \log (\frac {c _ {t} ^ {*}}{s _ {t} ^ {*} + c _ {t} ^ {*} A ^ {*}})
$$

$$
\log c _ {t} ^ {*} = \log \frac {\bar {\ell} \alpha^ {\alpha} (1 - \alpha) ^ {1 - \alpha}}{(\mathbb {E} _ {t - 1} [ \frac {c _ {t}}{s _ {t} + c _ {t} A} \frac {\ell_ {t} ^ {\nu}}{z _ {t}} ]) ^ {1 - \alpha} (\mathbb {E} _ {t - 1} [ \frac {c _ {t} ^ {*}}{s _ {t} ^ {*} + c _ {t} ^ {*} A ^ {*}} \frac {(\ell_ {t} ^ {*}) ^ {\nu}}{z _ {t} ^ {*}} ]) ^ {\alpha}} + (1 - \alpha) \log (\frac {c _ {t}}{s _ {t} + c _ {t} A}) + \alpha \log (\frac {c _ {t} ^ {*}}{s _ {t} ^ {*} + c _ {t} ^ {*} A ^ {*}})
$$

Take first-order approximation around  $s_t = \bar{s}$  and  $c_t = \bar{c}$ ,

$$
\log \left(s _ {t} + c _ {t} A\right) \approx \log (\bar {s} + \bar {c} A) + \frac {1}{\bar {s} + \bar {c} A} \left(s _ {t} - \bar {s}\right) + \frac {\bar {c} A}{\bar {s} + \bar {c} A} \left(\log c _ {t} - \log \bar {c}\right)
$$

$$
\log \left(s _ {t} ^ {*} + c _ {t} ^ {*} A ^ {*}\right) \approx \log \left(\bar {s} + \bar {c} A ^ {*}\right) + \frac {1}{\bar {s} + \bar {c} A ^ {*}} \left(s _ {t} ^ {*} - \bar {s}\right) + \frac {\bar {c} A ^ {*}}{\bar {s} + \bar {c} A ^ {*}} \left(\log c _ {t} ^ {*} - \log \bar {c}\right)
$$

Then, the system of equations becomes

$$
\frac {(1 - \alpha) \bar {s} + \bar {c} A}{\bar {s} + \bar {c} A} \log c _ {t} - \frac {(1 - \alpha) \bar {s}}{\bar {s} + \bar {c} A ^ {*}} \log c _ {t} ^ {*} = \kappa_ {2} - \frac {\alpha}{\bar {s} + \bar {c} A} s _ {t} - \frac {1 - \alpha}{\bar {s} + \bar {c} A ^ {*}} s _ {t} ^ {*}
$$

$$
\frac {(1 - \alpha) \bar {s} + \bar {c} A ^ {*}}{\bar {s} + \bar {c} A ^ {*}} \log c _ {t} ^ {*} - \frac {(1 - \alpha) \bar {s}}{\bar {s} + \bar {c} A} \log c _ {t} = \kappa_ {2} ^ {*} - \frac {\alpha}{\bar {s} + \bar {c} A ^ {*}} s _ {t} ^ {*} - \frac {1 - \alpha}{\bar {s} + \bar {c} A} s _ {t}
$$

where

$$
\begin{array}{l} \kappa_ {2} = \log (\bar {\ell} \alpha^ {\alpha} (1 - \alpha) ^ {1 - \alpha}) - \alpha \log (\mathbb {E} _ {t - 1} [ \frac {\bar {s} + \bar {c} A}{s _ {t} + c _ {t} A} \frac {c _ {t} \ell_ {t} ^ {\nu}}{z _ {t}} ]) - (1 - \alpha) \log (\mathbb {E} _ {t - 1} [ \frac {\bar {s} + \bar {c} A ^ {*}}{s _ {t} ^ {*} + c _ {t} ^ {*} A ^ {*}} \frac {c _ {t} ^ {*} (\ell_ {t} ^ {*}) ^ {\nu}}{z _ {t} ^ {*}} ]) \\ + \alpha \frac {\bar {s}}{\bar {s} + \bar {c} A} + (1 - \alpha) \frac {\bar {s}}{\bar {s} + \bar {c} A ^ {*}} + \alpha \frac {\bar {c} A}{\bar {s} + \bar {c} A} \log \bar {c} + (1 - \alpha) \frac {\bar {c} A ^ {*}}{\bar {s} + \bar {c} A ^ {*}} \log \bar {c} \\ \end{array}
$$

$$
\begin{array}{l} \kappa_ {2} ^ {*} = \log (\bar {\ell} \alpha^ {\alpha} (1 - \alpha) ^ {1 - \alpha}) - (1 - \alpha) \log (\mathbb {E} _ {t - 1} [ \frac {\bar {s} + \bar {c} A}{s _ {t} + c _ {t} A} \frac {c _ {t} \ell_ {t} ^ {\nu}}{z _ {t}} ]) - \alpha \log (\mathbb {E} _ {t - 1} [ \frac {\bar {s} + \bar {c} A ^ {*}}{s _ {t} ^ {*} + c _ {t} ^ {*} A ^ {*}} \frac {c _ {t} ^ {*} (\ell_ {t} ^ {*}) ^ {\nu}}{z _ {t} ^ {*}} ]) \\ + \alpha \frac {\bar {s}}{\bar {s} + \bar {c} A ^ {*}} + (1 - \alpha) \frac {\bar {s}}{\bar {s} + \bar {c} A} + \alpha \frac {\bar {c} A ^ {*}}{\bar {s} + \bar {c} A ^ {*}} \log \bar {c} + (1 - \alpha) \frac {\bar {c} A}{\bar {s} + \bar {c} A} \log \bar {c} \\ \end{array}
$$

The solution is

$$
\begin{array}{l} \log c _ {t} = \kappa_ {c} - \frac {\left((1 - \alpha) \bar {s} + \alpha A ^ {*} \bar {c}\right) s _ {t} + (1 - \alpha) \left(A \bar {c} + \bar {s}\right) s _ {t} ^ {*}}{\bar {c} \left(A A ^ {*} \bar {c} + (1 - \alpha) \bar {s} \left(A + A ^ {*}\right)\right)} \\ \log c _ {t} ^ {*} = \kappa_ {C} ^ {*} - \frac {(1 - \alpha) (A ^ {*} \bar {c} + \bar {s}) s _ {t} + ((1 - \alpha) \bar {s} + \alpha A \bar {c}) s _ {t} ^ {*}}{\bar {c} (A A ^ {*} \bar {c} + (1 - \alpha) \bar {s} (A + A ^ {*}))} \\ \end{array}
$$

where

$$
\kappa_ {c} = \frac {\left(A \bar {c} + \bar {s}\right) \left(A ^ {*} \bar {c} \kappa_ {2} + (1 - \alpha) \bar {s} \left(\kappa_ {2} + \kappa_ {2} ^ {*}\right)\right)}{\bar {c} \left(A A ^ {*} \bar {c} + (1 - \alpha) \bar {s} \left(A + A ^ {*}\right)\right)}
$$

$$
\kappa_ {c} ^ {*} = \frac {\left(A ^ {*} \bar {c} + \bar {s}\right) \left(A \bar {c} \kappa_ {2} ^ {*} + (1 - \alpha) \bar {s} \left(\kappa_ {2} + \kappa_ {2} ^ {*}\right)\right)}{\bar {c} \left(A A ^ {*} \bar {c} + (1 - \alpha) \bar {s} \left(A + A ^ {*}\right)\right)}
$$

Recall the real Euler equation:

$$
\begin{array}{l} r _ {t} = - \log \delta - \log \mathbb {E} _ {t} \left[ c _ {t} / c _ {t + 1} \right] \\ = - \log \delta - \log c _ {t} - \log \mathbb {E} _ {t} [ 1 / c _ {t + 1} ] \\ \end{array}
$$

Plugging log consumption into the equation above yields:

$$
r _ {t} = - \log \delta - \log \mathbb {E} _ {t} [ 1 / c _ {t + 1} ] - \kappa_ {c} + \frac {\left((1 - \alpha) \bar {s} + \alpha A ^ {*} \bar {c}\right)}{\bar {c} \left(A A ^ {*} \bar {c} + (1 - \alpha) \bar {s} \left(A + A ^ {*}\right)\right)} s _ {t} + \frac {(1 - \alpha) \left(A \bar {c} + \bar {s}\right)}{\bar {c} \left(A A ^ {*} \bar {c} + (1 - \alpha) \bar {s} \left(A + A ^ {*}\right)\right)} s _ {t} ^ {*}
$$

The log real exchange rate  $-e_t = \log c_t - \log c_t^*$ . The log price level is

$$
\begin{array}{l} \log P _ {t} = \log Q _ {t} - \log \left(s _ {t} + c _ {t} A\right) \\ \approx \log Q _ {t} - \log (\bar {s} + \bar {c} A) - \frac {1}{\bar {s} + \bar {c} A} (s _ {t} - \bar {s}) - \frac {\bar {c} A}{\bar {s} + \bar {c} A} \left(\kappa - \frac {\left((1 - \alpha) \bar {s} + \alpha A ^ {*} \bar {c}\right) s _ {t} + (1 - \alpha) (A \bar {c} + \bar {s}) s _ {t} ^ {*}}{\bar {c} (A A ^ {*} \bar {c} + (1 - \alpha) \bar {s} (A + A ^ {*}))} - \log \bar {c}\right) \\ = \kappa^ {P} + \log Q _ {t} - \frac {1 - \alpha}{\bar {s} + \bar {c c} A} \frac {A ^ {*} \bar {c c} + \bar {s} (A ^ {*} / A)}{A ^ {*} \bar {c c} + (1 - \alpha) \bar {s} (1 + A ^ {*} / A)} s _ {t} + \frac {(1 - \alpha)}{A ^ {*} \bar {c c} + (1 - \alpha) \bar {s} (1 + A ^ {*} / A)} s _ {t} ^ {*} \\ \end{array}
$$

where

$$
\kappa^ {P} = - \log (\bar {s} + \bar {c} A) - \frac {1}{\bar {s} + \bar {c} A} (- \bar {s}) - \frac {\bar {c} A}{\bar {s} + \bar {c} A} (\kappa - \log \bar {c}).
$$

Setting  $A = A^{*}$  yields the expressions in the proposition.

# A.28 Proposition 7.1 in Section 7.A

Proof. Divide the first condition by the third, and the second by the fourth to get:

$$
\frac {\alpha}{1 - \alpha} \frac {c _ {F , t}}{c _ {H , t}} = \frac {1 - \alpha}{\alpha} \frac {c _ {F , t} ^ {*}}{c _ {H , t} ^ {*}} = \frac {\mu_ {H , t}}{\mu_ {F . t}} \stackrel {\mathrm {d e f}} {=} \exp (t o t _ {t})
$$

plugging in  $\exp(tot_t)$  into the aggregation rule of home and foreign goods yields:

$$
\begin{array}{l} c _ {t} = \left(\frac {1 - \alpha}{\alpha} \exp (t o t _ {t})\right) ^ {1 - \alpha} c _ {H, t} = \left(\frac {\alpha}{1 - \alpha} \exp (- t o t _ {t})\right) ^ {\alpha} c _ {F, t} \\ c _ {t} ^ {*} = \left(\frac {\alpha}{1 - \alpha} \exp (t o t _ {t})\right) ^ {\alpha} c _ {H, t} ^ {*} = \left(\frac {1 - \alpha}{\alpha} \exp (- t o t _ {t})\right) ^ {1 - \alpha} c _ {F, t} ^ {*} \\ \end{array}
$$

then, plug in the equations above into the market clearing conditions to get the consumption rule

$$
\begin{array}{l} \left(\frac {1 - \alpha}{\alpha} \exp (t o t _ {t})\right) ^ {\alpha - 1} c _ {t} + \left(\frac {\alpha}{1 - \alpha} \exp (t o t _ {t})\right) ^ {- \alpha} c _ {t} ^ {*} = y _ {t} \\ \left(\frac {\alpha}{1 - \alpha} \exp (- t o t _ {t})\right) ^ {- \alpha} c _ {t} + \left(\frac {1 - \alpha}{\alpha} \exp (- t o t _ {t})\right) ^ {\alpha - 1} c _ {t} ^ {*} = y _ {t} ^ {*} \\ \end{array}
$$

Note that we have shown in Section 1.A that:

$$
\frac {\alpha}{1 - \alpha} \frac {c _ {F , t}}{c _ {H , t}} = \frac {p _ {t}}{p _ {t} ^ {*} \exp (- e _ {t})}
$$

which implies that  $\exp (tot_{t})$  is actually the relative price between two goods. Dividing the first condition by the second one to pin down the expression of  $\exp (tot_{t})$ :

$$
\frac {\pi}{1 - \pi} \frac {\left(c _ {t}\right) ^ {- \gamma}}{\left(c _ {t} ^ {*}\right) ^ {- \gamma^ {*}}} \exp (t o t _ {t}) ^ {1 - 2 \alpha} = 1
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/69ab4306019a076a987c05aa989bb27242371e22050cc1235c73ff317747d812.jpg)

# A.29 Proposition 7.2 in Section 7.C

Proof. Linearize the Euler equation to get

$$
\begin{array}{l} \exp (- \bar {\lambda} _ {H, t}) (- \lambda_ {H, t} + \bar {\lambda} _ {H} + 1) = \mathbb {E} _ {t} \left[ \delta \left(\frac {\bar {c}}{\bar {c}}\right) ^ {- \gamma} \exp (\bar {r}) (1 - \gamma \Delta \log c _ {t + 1} + r _ {t} - \bar {r}) \right] \\ \Rightarrow - \lambda_ {H, t} + \bar {\lambda} _ {H} = \mathbb {E} _ {t} \left[ - \gamma \Delta \log c _ {t + 1} + r _ {t} - \bar {r} \right], \\ \end{array}
$$

where  $-\bar{\lambda}_H = \log \delta +\bar{r}$  , which implies

$$
- \lambda_ {H, t} = \mathbb {E} _ {t} [ - \gamma \Delta \log c _ {t + 1} + r _ {t} + \log \delta ].
$$

Similarly,

$$
- \lambda_ {H, t} ^ {*} = \mathbb {E} _ {t} \left[ - \gamma \Delta \log c _ {t + 1} ^ {*} + \Delta e _ {t + 1} + r _ {t} + \log \delta \right],
$$

which implies

$$
\begin{array}{l} - \left(\lambda_ {H, t} ^ {*} - \lambda_ {H, t}\right) = \mathbb {E} _ {t} \left[ m _ {t + 1} ^ {*} - m _ {t + 1} \right] + \mathbb {E} _ {t} \left[ \Delta e _ {t + 1} \right] = \mathbb {E} _ {t} \left[ \gamma \left(\Delta \log c _ {t + 1} - \Delta \log c _ {t + 1} ^ {*}\right) \right] + \mathbb {E} _ {t} \left[ \Delta e _ {t + 1} \right] \\ \Rightarrow e _ {t} = \left(\lambda_ {H, t} ^ {*} - \lambda_ {H, t}\right) + \mathbb {E} _ {t} \left[ \gamma \left(\Delta \log c _ {t + 1} - \Delta \log c _ {t + 1} ^ {*}\right) \right] + e _ {t + 1}. \\ \end{array}
$$

Iterate forward to get

$$
e _ {t} = \sum_ {j = 0} ^ {\infty} \left(\lambda_ {H, t + j} ^ {*} - \lambda_ {H, t + j}\right) + \sum_ {j = 0} ^ {\infty} \mathbb {E} _ {t} \left[ \gamma \left(\Delta \log c _ {t + j + 1} - \Delta \log c _ {t + j + 1} ^ {*}\right)\right] + \lim  _ {j \rightarrow \infty} e _ {t + j + 1}.
$$

Let  $\lim_{j\to \infty}e_{t + j + 1} = \bar{e}$ . Plugging  $\Delta c_{t + 1} = \log c_{t + 1} - \log c_t$  yields

$$
\begin{array}{l} e _ {t} - \bar {e} = \sum_ {j = 0} ^ {\infty} \left(\lambda_ {H, t + j} ^ {*} - \lambda_ {H, t + j}\right) + \sum_ {j = 0} ^ {\infty} \mathbb {E} _ {t} \left[ \gamma \left(\log c _ {t + j + 1} - \log c _ {t + j} - \log c _ {t + j + 1} ^ {*} + \log c _ {t + j} ^ {*}\right) \right] \\ = \sum_ {j = 0} ^ {\infty} (\lambda_ {H, t + j} ^ {*} - \lambda_ {H, t + j}) - \gamma (\log c _ {t} - \log c _ {t} ^ {*}) + \gamma (\log \bar {c} - \log \bar {c} ^ {*}) \\ \end{array}
$$

where we let  $\bar{c} = \lim_{j\to \infty}c_{t + j + 1},\bar{c}^{*} = \lim_{j\to \infty}c_{t + j + 1}^{*}$ . This yields Eq.

(7.4). Finally, recall that

$$
\exp (- \lambda_ {H, t} ^ {*}) = 1 - \frac {\omega_ {H} ^ {*} (b _ {H , t} ^ {*}) ^ {- \sigma} - (\bar {c} ^ {*}) ^ {- \gamma} \theta_ {H , t} ^ {*}}{(c _ {t} ^ {*}) ^ {- \gamma}} \exp (- e _ {t})
$$

$$
\exp (- \lambda_ {H, t}) = 1 - \frac {\omega_ {H} (b _ {H , t}) ^ {- \sigma}}{c _ {t} ^ {- \gamma}}
$$

Plug in  $\exp(-\lambda_{H,t}) \approx 1 - \lambda_{H,t}$  and  $\exp(-\lambda_{H,t}^{*}) \approx 1 - \lambda_{H,t}^{*}$  yields Eq.

(7.5).

□

# A.30 Proposition 8.1 in Section 8.A

Proof. Rearrange Eq. (8.1) to get:

$$
D _ {t} = - S _ {t} + D _ {t - 1} \exp \left(R _ {t} ^ {D}\right)
$$

iterate backwards to get:

$$
\begin{array}{l} D _ {t} = - S _ {t} + \left(- S _ {t - 1} + D _ {t - 2} \exp \left(R _ {t - 1} ^ {D}\right)\right) \exp \left(R _ {t} ^ {D}\right) \\ = - \sum_ {j = 0} ^ {1} S _ {t - j} \exp \left(R _ {t - j \rightarrow t} ^ {D}\right) + D _ {t - 2} \exp \left(R _ {t - 2 \rightarrow t} ^ {D}\right) \\ = - \sum_ {j = 0} ^ {1} S _ {t - j} \exp \left(R _ {t - j \rightarrow t} ^ {D}\right) - S _ {t - 2} \exp \left(R _ {t - 2 \rightarrow t} ^ {D}\right) + D _ {t - 3} \exp \left(R _ {t - 2} ^ {D}\right) \exp \left(R _ {t - 2 \rightarrow t} ^ {D}\right) \\ = - \sum_ {j = 0} ^ {2} S _ {t - j} \exp \left(R _ {t - j \rightarrow t} ^ {D}\right) + D _ {t - 3} \exp \left(R _ {t - 3 \rightarrow t} ^ {D}\right) \\ \end{array}
$$

similarly,

$$
D _ {t} = - \sum_ {j = 0} ^ {k} S _ {t - j} \exp \left(R _ {t - j \rightarrow t} ^ {D}\right) + D _ {t - k - 1} \exp \left(R _ {t - k - 1 \rightarrow t} ^ {D}\right)
$$

where  $R_{t - j\rightarrow t}^{D} = R_{t}^{D} + R_{t - 1}^{D} + \dots +R_{t - j + 1}^{D}$  and  $R_{t\to t}^{D} = 0$ . Let  $k = t - 1$

to get Eq. (8.2):

$$
D _ {t} = - \sum_ {j = 0} ^ {t - 1} S _ {t - j} \exp \left(R _ {t - j \rightarrow t} ^ {D}\right) + D _ {0} \exp \left(R _ {0 \rightarrow t} ^ {D}\right)
$$

Divide both sides by  $Y_{t}$  to get Eq. (8.3):

$$
\begin{array}{l} \frac {D _ {t}}{Y _ {t}} = - \sum_ {j = 0} ^ {t - 1} \frac {S _ {t - j}}{Y _ {t}} \exp (R _ {t - j \rightarrow t} ^ {D}) + \frac {D _ {0}}{Y _ {t}} \exp (R _ {0 \rightarrow t} ^ {D}) \\ \Rightarrow \frac {D _ {t}}{Y _ {t}} = - \sum_ {j = 0} ^ {t - 1} \frac {S _ {t - j}}{Y _ {t - j}} \frac {Y _ {t - j}}{Y _ {t}} \exp (R _ {t - j \rightarrow t} ^ {D}) + \frac {D _ {0}}{Y _ {0}} \frac {Y _ {0}}{Y _ {t}} \exp (R _ {0 \rightarrow t} ^ {D}) \\ = - \sum_ {j = 0} ^ {t - 1} \frac {S _ {t - j}}{Y _ {t - j}} \exp \left(R _ {t - j \rightarrow t} ^ {D} - X _ {t - j \rightarrow t}\right) + \frac {D _ {0}}{Y _ {0}} \exp \left(R _ {0 \rightarrow t} ^ {D} - X _ {0 \rightarrow t}\right) \\ \end{array}
$$

where  $\exp (X_{t - j\rightarrow t}) = Y_t / Y_{t - j}$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/cee4e3fa53192c4929825e7cc3bcdb64f3784a204876b18258cda3bd8ca04852.jpg)

# A.31 Proposition 8.2 in Section 8.B

Proof. First, let us assume that the government never defaults. Consider the time  $t + 1$  constraints,

$$
\sum_ {h = 1} ^ {H} Q _ {t} (h) P _ {t + 1} (h - 1) = S _ {t + 1} + \sum_ {h = 1} ^ {H} Q _ {t + 1} (h) P _ {t + 1} (h)
$$

multiply both sides by nominal SDF  $\exp (M_{t + 1})$  and take expectations conditional on time  $t$ :

$$
\sum_ {h = 1} ^ {H} Q _ {t} (h) P _ {t} (h) = \mathbb {E} _ {t} \left[ \exp \left(M _ {t + 1}\right) S _ {t + 1} \right] + \mathbb {E} _ {t} \left[ \exp \left(M _ {t + 1}\right) \sum_ {h = 1} ^ {H} Q _ {t + 1} (h) P _ {t + 1} (h) \right] \tag {A.36}
$$

where we use the asset pricing equations  $\mathbb{E}_t[\exp (M_{t + 1})] = P_t(1)$ , and  $\mathbb{E}_t[\exp (M_{t + 1})P_{t + 1}(h - 1)] = P_t(h)$ .

Similarly, the time  $t + 2$  constraints imply:

$$
\sum_ {h = 1} ^ {H} Q _ {t + 1} (h) P _ {t + 1} (h) = \mathbb {E} _ {t + 1} \left[ \exp \left(M _ {t + 1, t + 2}\right) S _ {t + 2} \right] + \mathbb {E} _ {t + 1} \left[ \exp \left(M _ {t + 1, t + 2}\right) \sum_ {h = 1} ^ {H} Q _ {t + 2} (h) P _ {t + 2} (h) \right]
$$

Plug in Eq. (A.36) to get:

$$
\begin{array}{l} \sum_ {h = 1} ^ {H} Q _ {t} (h) P _ {t} (h) = \mathbb {E} _ {t} \left[ \exp (M _ {t + 1}) S _ {t + 1} \right] + \mathbb {E} _ {t} \left[ \exp (M _ {t + 1}) \exp (M _ {t + 1, t + 2}) S _ {t + 2} \right] \\ + \mathbb {E} _ {t} \left[ \exp (M _ {t + 1}) \exp (M _ {t + 1, t + 2}) \sum_ {h = 1} ^ {H} Q _ {t + 2} (h) P _ {t + 2} (h) \right] \\ = \mathbb {E} _ {t} \left[ \sum_ {k = 1} ^ {2} \exp (M _ {t, t + k}) S _ {t, t + k} \right] + \mathbb {E} _ {t} \left[ \exp (M _ {t, t + 2}) \sum_ {h = 1} ^ {H} Q _ {t + 2} (h) P _ {t + 2} (h) \right] \\ \end{array}
$$

iterate forward to time  $t + n$  to get:

$$
\sum_ {h = 1} ^ {H} Q _ {t} (h) P _ {t} (h) = \mathbb {E} _ {t} \left[ \sum_ {k = 1} ^ {n} \exp \left(M _ {t, t + k}\right) S _ {t, t + k} \right] + \mathbb {E} _ {t} \left[ \exp \left(M _ {t, t + n}\right) \sum_ {h = 1} ^ {H} Q _ {t + n} (h) P _ {t + n} (h) \right] \tag {A.37}
$$

More specifically, assume that the equation above is true for  $n = \ell$ .

For  $n = \ell + 1$ , the constraints in time  $t + \ell + 1$  imply:

$$
\sum_ {h = 1} ^ {H} Q _ {t + \ell} (h) P _ {t + \ell} (h) = \mathbb {E} _ {t + \ell} \left[ \exp \left(M _ {t + \ell , t + \ell + 1}\right) S _ {t + \ell + 1} \right] + \mathbb {E} _ {t + \ell} \left[ \exp \left(M _ {t + \ell , t + \ell + 1}\right) \sum_ {h = 1} ^ {H} Q _ {t + \ell + 1} (h) P _ {t + \ell + 1} (h) \right]
$$

it's easy to show that the expression is also true for  $n = \ell + 1$  by plugging the equation above in Eq. (A.37) (while letting  $n = \ell$ ). Let  $n \to \infty$  and plug in budget constraint Eq. (8.5) to get Eq. (8.6).

Now, consider the case of default. We consider only full default, without loss of generality. In case of default at  $t$ , the one-period budget constraint is given by:

$$
0 = S _ {t} + \sum_ {h = 1} ^ {H} Q _ {t} (h) P _ {t} (h)
$$

We use  $\chi_t$  as an indicator for default. The budget constraints now become:

$$
\left(1 - \chi_ {t}\right) \sum_ {h = 1} ^ {H} Q _ {t - 1} (h) P _ {t} (h - 1) = S _ {t} + \sum_ {h = 1} ^ {H} Q _ {t} (h) P _ {t} (h)
$$

Consider the time  $t + 1$  constraint,

$$
(1 - \chi_ {t + 1}) \sum_ {h = 1} ^ {H} Q _ {t} (h) P _ {t + 1} (h - 1) = S _ {t + 1} + \sum_ {h = 1} ^ {H} Q _ {t + 1} (h) P _ {t + 1} (h)
$$

multiply both sides by nominal SDF  $\exp (M_{t + 1})$  and take expectations conditional on time  $t$ :

$$
\sum_ {h = 1} ^ {H} Q _ {t} (h) P _ {t} (h) = \mathbb {E} _ {t} \left[ \exp \left(M _ {t + 1}\right) S _ {t + 1} \right] + \mathbb {E} _ {t} \left[ \exp \left(M _ {t + 1}\right) \sum_ {h = 1} ^ {H} Q _ {t + 1} (h) P _ {t + 1} (h) \right]
$$

where we use the asset pricing equations  $\mathbb{E}_t[\exp (M_{t + 1})(1 - \chi_{t + 1})] = P_t(1)$ , and  $\mathbb{E}_t[\exp (M_{t + 1})P_{t + 1}(h - 1)(1 - \chi_{t + 1})] = P_t(h)$ .

Again, we reach the condition in Eq. (A.36). Iterate forward the same way in no default case to time  $n \to \infty$  and we will get Eq. (8.6) as long as the government does not default in time  $t$ . Since bond payment is not certain any more, the money that government can raise from  $1\%$  face value of bond drops  $(P_{t}$  decrease).

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/2c256eded318cbacbb0da5aa24aa900fa2894923241f7eb22d258c2940c7977e.jpg)

# A.32 Proposition 8.3 in Section 8.B

Proof. We present the proof for general case with default. Consider the time  $t + 1$  constraint,

$$
(1 - \chi_ {t + 1}) \sum_ {h = 1} ^ {H} Q _ {t} (h) P _ {t + 1} (h - 1) = S _ {t + 1} + \sum_ {h = 1} ^ {H} Q _ {t + 1} (h) P _ {t + 1} (h)
$$

multiply both sides by nominal SDF  $\exp (M_{t + 1})$  and take expectations conditional on time  $t$ :

$$
\begin{array}{l} \sum_ {h = 1} ^ {H} Q _ {t} (h) P _ {t} (h) e ^ {- \lambda_ {t} (h)} = \mathbb {E} _ {t} \left[ \exp \left(M _ {t + 1}\right) S _ {t + 1} \right] + \mathbb {E} _ {t} \left[ \exp \left(M _ {t + 1}\right) \sum_ {h = 1} ^ {H} Q _ {t + 1} (h) P _ {t + 1} (h) \right] \\ \sum_ {h = 1} ^ {H} Q _ {t} (h) P _ {t} (h) = \mathbb {E} _ {t} [ \exp (M _ {t + 1}) S _ {t + 1} ] + \sum_ {h = 1} ^ {H} Q _ {t} (h) P _ {t} (h) \left(1 - e ^ {- \lambda_ {t} (h)}\right) \\ + \mathbb {E} _ {t} \left[ \exp \left(M _ {t + 1}\right) \sum_ {h = 1} ^ {H} Q _ {t + 1} (h) P _ {t + 1} (h) \right] \tag {A.38} \\ \end{array}
$$

where we use the asset pricing equations  $\mathbb{E}_t[\exp (M_{t + 1})(1 - \chi_{t + 1})] = P_t(1)e^{-\lambda_t(1)}$ , and  $\mathbb{E}_t[\exp (M_{t + 1})P_{t + 1}(h - 1)(1 - \chi_{t + 1})] = P_t(h)e^{-\lambda_t(h)}$ .

Similarly, consider the time  $t + 2$  budget constraint. Multiply both sides by nominal SDF  $\exp (M_{t + 1,t + 2})$  and take expectations conditional on time  $t + 1$ :

$$
\begin{array}{l} \sum_ {h = 1} ^ {H} Q _ {t + 1} (h) P _ {t + 1} (h) = \mathbb {E} _ {t + 1} \left[ \exp \left(M _ {t + 1, t + 2}\right) S _ {t + 2} \right] + \sum_ {h = 1} ^ {H} Q _ {t + 1} (h) P _ {t + 1} (h) \left(1 - e ^ {- \lambda_ {t + 1} (h)}\right) \\ + \mathbb {E} _ {t + 1} \left[ \exp (M _ {t + 1, t + 2}) \sum_ {h = 1} ^ {H} Q _ {t + 2} (h) P _ {t + 2} (h) \right] \\ \end{array}
$$

plug it into the RHS of Eq. (A.38) to get:

$$
\begin{array}{l} \sum_ {h = 1} ^ {H} Q _ {t} (h) P _ {t} (h) = \mathbb {E} _ {t} \left[ \sum_ {k = 1} ^ {2} \exp (M _ {t, t + k}) S _ {t + k} \right] + \mathbb {E} _ {t} \left[ \sum_ {k = 0} ^ {1} \exp (M _ {t, t + k}) \sum_ {h = 1} ^ {H} Q _ {t + k} (h) P _ {t + k} (h) \left(1 - e ^ {- \lambda_ {t + k} (h)}\right) \right] \\ + \mathbb {E} _ {t} \left[ \exp \left(M _ {t, t + 2}\right) \sum_ {h = 1} ^ {H} Q _ {t + 2} (h) P _ {t + 2} (h) \right]. \\ \end{array}
$$

To iterate forward, assume that

$$
\begin{array}{l} \sum_ {h = 1} ^ {H} Q _ {t} (h) P _ {t} (h) = \mathbb {E} _ {t} \left[ \sum_ {k = 1} ^ {n} \exp \left(M _ {t, t + k}\right) S _ {t + k} \right] + \mathbb {E} _ {t} \left[ \sum_ {k = 0} ^ {n - 1} \exp \left(M _ {t, t + k}\right) \sum_ {h = 1} ^ {H} Q _ {t + k} (h) P _ {t + k} (h) \left(1 - e ^ {- \lambda_ {t + k} (h)}\right) \right] \\ + \mathbb {E} _ {t} \left[ \exp \left(M _ {t, t + n}\right) \sum_ {h = 1} ^ {H} Q _ {t + n} (h) P _ {t + n} (h) \right] \tag {A.39} \\ \end{array}
$$

is true for  $n = \ell$ . For  $n = \ell + 1$ , consider the time  $t + \ell + 1$  budget constraint. Similarly, multiply both sides by nominal S  $\exp(M_{t + \ell, t + \ell + 1})$  and take expectations conditional on time  $t +$

$$
\begin{array}{l} \sum_ {h = 1} ^ {H} Q _ {t + \ell} (h) P _ {t + \ell} (h) = \mathbb {E} _ {t + \ell} [ \exp (M _ {t + \ell , t + \ell + 1}) S _ {t + \ell + 1} ] + \sum_ {h = 1} ^ {H} Q _ {t + \ell} (h) P _ {t + \ell} (h) \left(1 - e ^ {- \lambda_ {t + \ell} (h)}\right) \\ + \mathbb {E} _ {t + \ell} \left[ \exp \left(M _ {t + \ell , t + \ell + 1}\right) \sum_ {h = 1} ^ {H} Q _ {t + \ell + 1} (h) P _ {t + \ell + 1} (h) \right] \\ \end{array}
$$

plug it into the RHS of Eq. (A.39) to get:

$$
\begin{array}{l} \sum_ {h = 1} ^ {H} Q _ {t} (h) P _ {t} (h) = \mathbb {E} _ {t} \left[ \sum_ {k = 1} ^ {\ell} \exp (M _ {t, t + k}) S _ {t + k} \right] + \mathbb {E} _ {t} \left[ \sum_ {k = 0} ^ {\ell - 1} \exp (M _ {t, t + k}) \sum_ {h = 1} ^ {H} Q _ {t + k} (h) P _ {t + k} (h) \left(1 - e ^ {- \lambda_ {t + k} (h)}\right) \right] \\ + \mathbb {E} _ {t} \left[ \exp (M _ {t, t + \ell}) \mathbb {E} _ {t + \ell} \left[ \exp (M _ {t + \ell , t + \ell + 1}) S _ {t + \ell + 1} \right] \right] + \mathbb {E} _ {t} \left[ \exp (M _ {t, t + \ell}) \sum_ {h = 1} ^ {H} Q _ {t + \ell} (h) P _ {t + \ell} (h) \left(1 - e ^ {- \lambda_ {t + \ell} (h)}\right) \right] \\ + \mathbb {E} _ {t} \left[ \exp (M _ {t, t + \ell}) \mathbb {E} _ {t + \ell} \left[ \exp (M _ {t + \ell , t + \ell + 1}) \sum_ {h = 1} ^ {H} Q _ {t + \ell + 1} (h) P _ {t + \ell + 1} (h) \right] \right] \\ \end{array}
$$

Rearrange the RHS to get:

$$
\begin{array}{l} \sum_ {h = 1} ^ {H} Q _ {t} (h) P _ {t} (h) = \mathbb {E} _ {t} \left[ \sum_ {k = 1} ^ {\ell + 1} \exp \left(M _ {t, t + k}\right) S _ {t + k} \right] + \mathbb {E} _ {t} \left[ \sum_ {k = 0} ^ {\ell} \exp \left(M _ {t, t + k}\right) \sum_ {h = 1} ^ {H} Q _ {t + k} (h) P _ {t + k} (h) \left(1 - e ^ {- \lambda_ {t + k} (h)}\right) \right] \\ + \mathbb {E} _ {t} \left[ \exp \left(M _ {t, t + \ell + 1}\right) \sum_ {h = 1} ^ {H} Q _ {t + \ell + 1} (h) P _ {t + \ell + 1} (h) \right] \\ \end{array}
$$

Hence, we can iterate the equation from  $n = \ell$  to  $n = \ell + 1$  for any  $\ell \geq 1$  and prove Eq. (A.39). Recall the time  $t$  budget condition when default does not happen in Eq. (8.5). Plugging  $\sum_{h=1}^{H} Q_t(h) P_t(h)$  into the RHS and letting  $n \to \infty$  yields the result:

$$
\begin{array}{l} \sum_ {h = 1} ^ {H} Q _ {t - 1} (h) P _ {t} (h - 1) = \mathbb {E} _ {t} \left[ \sum_ {k = 0} ^ {\infty} \exp (M _ {t, t + k}) S _ {t + k} \right] + \mathbb {E} _ {t} \left[ \sum_ {k = 0} ^ {\infty} \exp (M _ {t, t + k}) \sum_ {h = 1} ^ {H} Q _ {t + k} (h) P _ {t + k} (h) (1 - e ^ {- \lambda_ {t + k} (h)}) \right] \\ + \lim  _ {k \rightarrow \infty} \mathbb {E} _ {t} \left[ \exp (M _ {t, t + k}) \sum_ {h = 1} ^ {H} Q _ {t + k} (h) P _ {t + k} (h) \right] \\ \end{array}
$$

note that we replace letter  $n$  to  $k$  for simplicity.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/7e9c774a90e1c96e387ee1dbd0de0e766a1f27db0490c7e49c8b4c71446d34be.jpg)

# A.33 Proposition 8.4 in Section 8.B

Proof. By the definition of  $\exp(R_{t+1}^D)$ ,  $\exp(R_{t+1}^T)$  and  $\exp(R_{t+1}^G)$ :

$$
P _ {t} ^ {T} \exp (R _ {t + 1} ^ {T}) - P _ {t} ^ {G} \exp (R _ {t + 1} ^ {G}) = P _ {t + 1} ^ {T} + T _ {t + 1} - P _ {t + 1} ^ {G} - G _ {t + 1} = D _ {t} \exp (R _ {t + 1} ^ {D})
$$

Divide both sides by  $D_{t}$  and take expectations to get part (a). Similarly,

$$
\begin{array}{l} D _ {t} \beta_ {t} ^ {D} = \frac {\operatorname {c o v} _ {t} \left(D _ {t} \exp \left(R _ {t + 1} ^ {D}\right) , \exp \left(R _ {t + 1} ^ {M}\right)\right)}{\operatorname {v a r} _ {t} \left(\exp \left(R _ {t + 1} ^ {M}\right) - \exp \left(R _ {t}\right)\right)} \\ = \frac {c o v _ {t} \left(P _ {t + 1} ^ {T} + T _ {t + 1} - P _ {t + 1} ^ {G} - G _ {t + 1} , \exp \left(R _ {t + 1} ^ {M}\right)\right)}{v a r _ {t} \left(\exp \left(R _ {t + 1} ^ {M}\right) - \exp \left(R _ {t}\right)\right)} \\ = \frac {c o v _ {t} \left(P _ {t} ^ {T} \exp \left(R _ {t + 1} ^ {T}\right) - P _ {t} ^ {G} \exp \left(R _ {t + 1} ^ {G}\right) , \exp \left(R _ {t + 1} ^ {M}\right)\right)}{v a r _ {t} \left(\exp \left(R _ {t + 1} ^ {M}\right) - \exp \left(R _ {t}\right)\right)} \\ = P _ {t} ^ {T} \beta_ {t} ^ {T} - P _ {t} ^ {G} \beta_ {t} ^ {G} \\ \end{array}
$$

Again, divide both sides by  $D_{t}$  to get part (b).

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/f3cad8c0abb37ebc5f3efe788d333924c038ea3398f45c95651d5c7cf9911959.jpg)

# A.34 Proposition 8.5 in Section 8.B

Proof. Multiply both sides of Eq. (8.12) by  $D_t / (P_t^T + P_t^K - P_t^G)$  and plug in  $D_t = P_t^T + P_t^K + K_t - P_t^G$  to obtain

$$
\begin{array}{l} \exp (R _ {t + 1} ^ {D}) \left(1 + \frac {K _ {t}}{P _ {t} ^ {T} + P _ {t} ^ {K} - P _ {t} ^ {G}}\right) \\ = \exp (R _ {t + 1} ^ {T}) \frac {P _ {t} ^ {T}}{P _ {t} ^ {T} + P _ {t} ^ {K} - P _ {t} ^ {G}} + \exp (R _ {t + 1} ^ {K}) \frac {P _ {t} ^ {K}}{P _ {t} ^ {T} + P _ {t} ^ {K} - P _ {t} ^ {G}} - \exp (R _ {t + 1} ^ {G}) \frac {P _ {t} ^ {G}}{P _ {t} ^ {T} + P _ {t} ^ {K} - P _ {t} ^ {G}}. \\ \end{array}
$$

Taking conditional expectation  $\mathbb{E}_t$  for both sides yields part (a). To get part (b), take conditional covariance with market return  $\exp(R_{t+1}^M)$  and divide by its variance for both sides

$$
\begin{array}{l} \frac {c o v _ {t} \left(\exp \left(R _ {t + 1} ^ {D} , \exp \left(R _ {t + 1} ^ {M}\right)\right)\right)}{v a r _ {t} \left(\exp \left(R _ {t + 1} ^ {M}\right)\right)} \left(1 + \frac {K _ {t}}{P _ {t} ^ {T} + P _ {t} ^ {K} - P _ {t} ^ {G}}\right) \\ = \frac {c o v _ {t} \left(\exp \left(R _ {t + 1} ^ {T} , \exp \left(R _ {t + 1} ^ {M}\right)\right)\right)}{v a r _ {t} \left(\exp \left(R _ {t + 1} ^ {M}\right)\right)} \frac {P _ {t} ^ {T}}{P _ {t} ^ {T} + P _ {t} ^ {K} - P _ {t} ^ {G}} \\ + \frac {c o v _ {t} (\exp (R _ {t + 1} ^ {K} , \exp (R _ {t + 1} ^ {M})))}{v a r _ {t} (\exp (R _ {t + 1} ^ {M}))} \frac {P _ {t} ^ {K}}{P _ {t} ^ {T} + P _ {t} ^ {K} - P _ {t} ^ {G}} \\ - \frac {c o v _ {t} (\exp (R _ {t + 1} ^ {G} , \exp (R _ {t + 1} ^ {M})))}{v a r _ {t} (\exp (R _ {t + 1} ^ {M}))} \frac {P _ {t} ^ {G}}{P _ {t} ^ {T} + P _ {t} ^ {K} - P _ {t} ^ {G}}, \\ \end{array}
$$

which implies

$$
\beta_ {t} ^ {D} \left(1 + \frac {K _ {t}}{P _ {t} ^ {T} + P _ {t} ^ {K} - P _ {t} ^ {G}}\right) = \beta_ {t} ^ {T} \frac {P _ {t} ^ {T}}{P _ {t} ^ {T} + P _ {t} ^ {K} - P _ {t} ^ {G}} + \beta_ {t} ^ {K} \frac {P _ {t} ^ {K}}{P _ {t} ^ {T} + P _ {t} ^ {K} - P _ {t} ^ {G}} - \beta_ {t} ^ {G} \frac {P _ {t} ^ {G}}{P _ {t} ^ {T} + P _ {t} ^ {K} - P _ {t} ^ {G}},
$$

where we plug in the expression of beta defined above.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/1dfb3cb20f884fadf361811b9f41d6e11f8faba4a7fa58f0455ff701beffdcfc.jpg)

# A.35 Proposition 8.6 in Section 8.C

We will use the Envelope theorem as a lemma.

Lemma A.1.  $\psi^{\prime}(w_{t},t) = \delta^{t}u^{\prime}(c_{t})$

Proof. Let  $\left(\{c_{s}\}_{s=t}^{\infty},\{d_{s}\}_{s=t}^{\infty}\right)$  be the optimal solution from  $w_{t}$ . Let  $\Delta w > 0$ , define a feasible process  $\left(\{c_{s}^{*}\}_{s=t},\{d_{s}^{*}\}_{s=t}\right)$  from  $w_{t} + \Delta w$ , such that  $c_{t}^{*} = c_{t} + \Delta w, d_{t}^{*} = d_{t}, c_{s}^{*} = c_{s}, d_{s}^{*} = d_{s}, s = t+1,t+2,\ldots$ . It is clear that

$$
\begin{array}{l} \psi (w _ {t} + \Delta w, t) \geq \mathbb {E} _ {t} \left[ \sum_ {s = t} ^ {\infty} \delta^ {s} u \left(c _ {s} ^ {*}\right) \right] \\ \Rightarrow \psi (w _ {t} + \Delta w, t) - \psi (w _ {t}, t) \geq \mathbb {E} _ {t} \left[ \sum_ {s = t} ^ {\infty} \delta^ {s} u \left(c _ {s} ^ {*}\right) \right] - \mathbb {E} _ {t} \left[ \sum_ {s = t} ^ {\infty} \delta^ {s} u \left(c _ {s}\right) \right] \\ = \mathbb {E} _ {t} \left[ \delta^ {t} u \left(c _ {t} + \Delta w\right) - \delta^ {t} u \left(c _ {t}\right) \right] \\ = \delta^ {t} u ^ {\prime} (c _ {t}) \Delta w + o (\Delta w) \\ \end{array}
$$

Hence,

$$
\lim  _ {\Delta w \rightarrow 0} \frac {\psi (w _ {t} + \Delta w , t) - \psi (w _ {t} , t)}{\Delta w} \geq \delta^ {t} u ^ {\prime} (c _ {t})
$$

This implies that  $\psi'(w_t, t) \geq \delta^t u'(c_t)$ . Now, take  $\Delta w$  sufficiently small such that  $0 < \Delta w < c_t$ . Define a feasible process  $(\{c_s^*\}_{s=t}^\infty, \{d_s^*\}_{s=t}^\infty)$  from  $w_t - \Delta w$ , such that  $c_t^* = c_t - \Delta w$ ,  $d_t^* = d_t$ ,  $c_s^* = c_s$ ,  $d_s^* = d_s$ ,  $s = t + 1, t + 2, \ldots$ . Similarly,

$$
\begin{array}{l} \psi (w _ {t} - \Delta w, t) \geq \mathbb {E} _ {t} \left[ \sum_ {s = t} ^ {\infty} \delta^ {s} u \left(c _ {s} ^ {*}\right) \right] \\ \Rightarrow \psi (w _ {t} - \Delta w, t) - \psi (w _ {t}, t) \geq \mathbb {E} _ {t} \left[ \sum_ {s = t} ^ {\infty} \delta^ {s} u (c _ {s} ^ {*}) \right] - \mathbb {E} _ {t} \left[ \sum_ {s = t} ^ {\infty} \delta^ {s} u (c _ {s}) \right] \\ = \mathbb {E} _ {t} \left[ \delta^ {t} u \left(c _ {t} - \Delta w\right) - \delta^ {t} u \left(c _ {t}\right) \right] \\ = \delta^ {t} u ^ {\prime} (c _ {t}) (- \Delta w) + o (\Delta w) \\ \end{array}
$$

Hence,

$$
\lim  _ {\Delta w \rightarrow 0} \frac {\psi (w _ {t} - \Delta w , t) - \psi (w _ {t} , t)}{- \Delta w} \leq \delta^ {t} u ^ {\prime} (c _ {t})
$$

This implies that  $\psi'(w_t, t) \leq \delta^t u'(c_t)$ , hence  $\psi'(w_t, t) = \delta^t u'(c_t)$ .

Proof. First, we prove the necessity of the transversality condition. Since  $\psi(w_t, t)$  is differentiable at  $w_t$ , by the concavity of  $u(c)$ ,

$$
\psi \left(w _ {t}, t\right) \geq \psi \left(w _ {t}, t\right) - \psi \left(w _ {t} / 2, t\right) \geq \psi^ {\prime} \left(w _ {t}, t\right) w _ {t} / 2.
$$

By Envelope theorem, i.e.,  $\psi'(w_t, t) = \delta^t u'(c_t)$ , then the assumptions  $\lim_{t \to \infty} \psi(w_t, t) = 0$  and  $u'(c_t) \geq 0$  implies

$$
\lim  _ {t \rightarrow \infty} \mathbb {E} _ {0} \left[ \delta^ {t} u ^ {\prime} (c _ {t}) w _ {t} \right] = 0
$$

$$
\lim  _ {t \rightarrow \infty} \mathbb {E} _ {0} \left[ \delta^ {t} u ^ {\prime} \left(c _ {t}\right)\left(y _ {t} + d _ {t - 1} \exp \left(r _ {t} ^ {d}\right)\right)\right] = 0.
$$

Since  $y_{t}, u^{\prime}(c_{t}) \geq 0$ , and by the short-sale constraint,  $d_{t-1} \geq 0$  then,

$$
0 \leq \mathbb {E} _ {0} \left[ \delta^ {t} u ^ {\prime} \left(c _ {t}\right) d _ {t - 1} \exp \left(r _ {t} ^ {d}\right) \right] \leq \mathbb {E} _ {0} \left[ \delta^ {t} u ^ {\prime} \left(c _ {t}\right) \left(y _ {t} + d _ {t - 1} \exp \left(r _ {t} ^ {d}\right)\right) \right]
$$

$$
0 \leq \lim  _ {t \rightarrow \infty} \mathbb {E} _ {0} \left[ \delta^ {t} u ^ {\prime} (c _ {t}) d _ {t - 1} \exp (r _ {t} ^ {d}) \right] \leq \lim  _ {t \rightarrow \infty} \mathbb {E} _ {0} \left[ \delta^ {t} u ^ {\prime} (c _ {t}) \left(y _ {t} + d _ {t - 1} \exp (r _ {t} ^ {d})\right)\right] = 0
$$

$$
\lim  _ {t \rightarrow \infty} \mathbb {E} _ {0} \left[ \delta^ {t} u ^ {\prime} \left(c _ {t}\right) d _ {t - 1} \exp \left(r _ {t} ^ {d}\right)\right] = 0
$$

Lastly, by the Euler equation (8.13),

$$
u ^ {\prime} \left(c _ {t - 1}\right) d _ {t - 1} = \mathbb {E} _ {t - 1} \left[ \delta u ^ {\prime} \left(c _ {t}\right) d _ {t - 1} \exp \left(r _ {t} ^ {d}\right) \right]
$$

$$
\mathbb {E} _ {0} \left[ u ^ {\prime} (c _ {t - 1}) d _ {t - 1} \right] = \mathbb {E} _ {0} \left[ \delta u ^ {\prime} (c _ {t}) d _ {t - 1} \exp (r _ {t} ^ {d}) \right].
$$

then

$$
0 = \lim  _ {t \rightarrow \infty} \mathbb {E} _ {0} \left[ \delta^ {t} u ^ {\prime} \left(c _ {t}\right) d _ {t - 1} \exp \left(r _ {t} ^ {d}\right)\right] = \lim  _ {t \rightarrow \infty} \mathbb {E} _ {0} \left[ \delta^ {t - 1} u ^ {\prime} \left(c _ {t - 1}\right) d _ {t - 1} \right],
$$

which implies the transversality condition.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/cc9759f4964ee69efa328c60b3a43405f2a904c78cac77f6b5afa1ef6f0b3985.jpg)

# A.36 Proposition 8.7 in Section 8.C

Proof. First, We derive the Euler equation with utility from holding the bonds. The Lagrangian is:

$$
\mathbb {E} _ {0} \left[ \sum_ {t = 0} ^ {\infty} \delta^ {t} (u (c _ {t}) + v _ {t} (d _ {t})) + \sum_ {t = 0} ^ {\infty} \zeta_ {t} (y _ {t} + d _ {t - 1} \exp (r _ {t} ^ {D}) - c _ {t} - d _ {t}) \right]
$$

The first order conditions are given by

$$
\delta^ {t} u ^ {\prime} \left(c _ {t}\right) - \zeta_ {t} = 0
$$

$$
\delta^ {t} v _ {t} ^ {\prime} (d _ {t}) - \zeta_ {t} + \mathbb {E} _ {t} [ \zeta_ {t + 1} \exp (r _ {t + 1} ^ {D}) ] = 0
$$

which imply the Euler equation

$$
v _ {t} ^ {\prime} (d _ {t}) - u ^ {\prime} (c _ {t}) + \mathbb {E} _ {t} [ \delta u ^ {\prime} (c _ {t + 1}) \exp (r _ {t + 1} ^ {D}) ] = 0
$$

hence,

$$
\mathbb {E} _ {t} \left[ \frac {\delta u ^ {\prime} \left(c _ {t + 1}\right)}{u ^ {\prime} \left(c _ {t}\right)} \exp \left(r _ {t + 1} ^ {D}\right) \right] = 1 - \frac {v _ {t} ^ {\prime} \left(d _ {t}\right)}{u ^ {\prime} \left(c _ {t}\right)}
$$

we denote the RHS as  $\exp(-\lambda_t)$ . Similarly, we define the households' value function as

$$
\psi (w _ {t}, t) = \max \mathbb {E} _ {0} \left[ \sum_ {s = t} ^ {\infty} \delta^ {s} \left(u (c _ {s}) + v _ {t} (d _ {t})\right) \right]
$$

we can show in the same way in lemma A.1 that

$$
\psi^ {\prime} (w _ {t}, t) = \delta^ {t} u ^ {\prime} (c _ {t})
$$

by the concavity of  $\psi(w_t, t)$  and that  $\lim_{t \to \infty} \psi(w_t, t) = 0$ :

$$
0 \leq \lim  _ {t \rightarrow \infty} \psi^ {\prime} (w _ {t}, t) \frac {w _ {t}}{2} \leq \lim  _ {t \rightarrow \infty} (\psi (w _ {t}, t) - \psi (w _ {t} / 2, t)) \leq \lim  _ {t \rightarrow \infty} \psi (w _ {t}, t) = 0
$$

hence,

$$
\lim  _ {t \rightarrow \infty} \mathbb {E} _ {0} \left[ \delta^ {t} u ^ {\prime} \left(c _ {t}\right) w _ {t} \right] = 0
$$

$$
\lim  _ {t \rightarrow \infty} \mathbb {E} _ {0} \left[ \delta^ {t} u ^ {\prime} \left(c _ {t}\right)\left(y _ {t} + d _ {t - 1} \exp \left(r _ {t} ^ {D}\right)\right)\right] = 0
$$

since  $y_{t}, d_{t}, u^{\prime}(c_{t})$  are all non-negative, plugging in the Euler equation to get:

$$
\begin{array}{l} \lim _ {t \rightarrow \infty} \mathbb {E} _ {0} [ \delta^ {t} u ^ {\prime} (c _ {t}) d _ {t - 1} \exp (r _ {t} ^ {D}) ] = 0 \\ \Rightarrow \lim  _ {t \rightarrow \infty} \mathbb {E} _ {0} \left[ \delta^ {t - 1} d _ {t - 1} \mathbb {E} _ {t - 1} \left[ \delta u ^ {\prime} \left(c _ {t}\right) \exp \left(r _ {t} ^ {D}\right)\right]\right] = 0 \\ \Rightarrow \lim  _ {t \rightarrow \infty} \mathbb {E} _ {0} \left[ \delta^ {t - 1} d _ {t - 1} \left(u ^ {\prime} \left(c _ {t - 1}\right) - v _ {t} ^ {\prime} \left(d _ {t - 1}\right)\right)\right] = 0 \\ \end{array}
$$

replacing time subscripts to  $t$  to get:

$$
\begin{array}{l} \lim  _ {t \rightarrow \infty} \mathbb {E} _ {0} \left[ \delta^ {t} \left(u ^ {\prime} \left(c _ {t}\right) - v _ {t} ^ {\prime} \left(d _ {t}\right)\right) d _ {t} \right] = 0 \\ \Rightarrow \lim  _ {t \rightarrow \infty} \mathbb {E} _ {0} \left[ \delta^ {t} u ^ {\prime} \left(c _ {t}\right) d _ {t} \exp (- \lambda_ {t}) \right] = 0 \\ \end{array}
$$

the expression of  $\exp (-\lambda_t)$  is given above.

To obtain the original transversality condition, assume that  $\lambda_{t}$  is bounded above by  $\bar{\lambda}$

$$
\begin{array}{l} \lim  _ {t \rightarrow \infty} \mathbb {E} _ {0} \left[ \delta^ {t} u ^ {\prime} \left(c _ {t}\right) d _ {t} \right] = \lim  _ {t \rightarrow \infty} \mathbb {E} _ {0} \left[ \delta^ {t} u ^ {\prime} \left(c _ {t}\right) d _ {t} \exp (- \lambda_ {t}) \exp (\lambda_ {t}) \right] \\ \leq \lim  _ {t \rightarrow \infty} \mathbb {E} _ {0} \left[ \delta^ {t} u ^ {\prime} \left(c _ {t}\right) d _ {t} \exp \left(- \lambda_ {t}\right) \exp (\bar {\lambda}) \right] \\ = \exp (\bar {\lambda}) \lim  _ {t \rightarrow \infty} \mathbb {E} _ {0} \left[ \delta^ {t} u ^ {\prime} \left(c _ {t}\right) d _ {t} \exp (- \lambda_ {t}) \right] \\ = 0 \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/d531ef2151ae91236587183cbe67d465f1d0aa06d278626b57b9f3580790d51f.jpg)

# A.37 Proposition 8.8 in Section 8.E

Proof. (a) Conjecture the log price of the nominal bond is

$$
\log P _ {t} (h) = A (h) + B (h) ^ {\prime} z _ {t}.
$$

The Euler equation implies

$$
\exp (\log P _ {t - 1} (h + 1)) = \mathbb {E} _ {t - 1} [ \exp (M _ {t} + \log P _ {t} (h)) ]
$$

$$
\begin{array}{l} A (h + 1) + B (h + 1) ^ {\prime} z _ {t - 1} = - i _ {t - 1} (1) - \frac {1}{2} \Lambda_ {t - 1} ^ {\prime} \Lambda_ {t - 1} + A (h) + B (h) ^ {\prime} \Psi z _ {t - 1} \\ + \frac {1}{2} \Lambda_ {t - 1} ^ {\prime} \Lambda_ {t - 1} + \frac {1}{2} B (h) ^ {\prime} \Sigma B (h) - B (h) ^ {\prime} \Sigma^ {\frac {1}{2}} \Lambda_ {t - 1} \\ = - i _ {0} (1) + A (h) + \frac {1}{2} B (h) ^ {\prime} \Sigma B (h) - B (h) ^ {\prime} \Sigma^ {\frac {1}{2}} \Lambda_ {0} \\ + \left(- e _ {i} ^ {\prime} + B (h) ^ {\prime} \Psi - B ^ {\prime} (h) \Sigma^ {\frac {1}{2}} \Lambda_ {1}\right) z _ {t - 1}. \\ \end{array}
$$

Compare coefficients to obtain

$$
\begin{array}{l} A (h + 1) = - i _ {0} (1) + A (h) + \frac {1}{2} B (h) ^ {\prime} \Sigma B (h) - B (h) ^ {\prime} \Sigma^ {\frac {1}{2}} \Lambda_ {0}, \\ B (h + 1) ^ {\prime} = B (h) ^ {\prime} \Psi - e _ {i} ^ {\prime} - B (h) ^ {\prime} \Sigma^ {\frac {1}{2}} \Lambda_ {1}, \\ \end{array}
$$

with the initial condition given by  $A(0) = 0$  and  $B(0) = \vec{0}$ .

(b) Denote the time  $t$  log price-dividend ratio on the stock dividend strip that pays  $Div_{t + h}$  at time  $t + h$  as  $pd_t^m (h)$ . The Euler equation is

$$
\exp (p d _ {t - 1} ^ {m} (h + 1)) = \mathbb {E} _ {t} [ \exp (M _ {t} + p d _ {t} ^ {m} (h) + \Delta \log D i v _ {t}) ],
$$

where  $\Delta \log Div_t = \Delta \log d_t + x_t + \pi_t$ , i.e., the log nominal dividend growth is the sum of the log growth of dividend-GDP ratio, log growth of real GDP and inflation. Conjecture that

$$
p d _ {t} ^ {m} (h) = A ^ {m} (h) + B ^ {m} (h) ^ {\prime} z _ {t}.
$$

Plug  $\Delta \log Div_{t}$  into the Euler equation to obtain

$$
\begin{array}{l} A ^ {m} (h + 1) + B ^ {m} (h + 1) ^ {\prime} z _ {t - 1} = - i _ {t - 1} (1) - \frac {1}{2} \Lambda_ {t} ^ {\prime} \Lambda_ {t} + A ^ {m} (h) + B ^ {m} (h) ^ {\prime} \Psi z _ {t - 1} + x _ {0} + \pi_ {0} + (e _ {\Delta d} + e _ {x} + e _ {\pi}) ^ {\prime} \Psi z _ {t - 1} \\ + \frac {1}{2} \Lambda_ {t} ^ {\prime} \Lambda_ {t} + \frac {1}{2} (B ^ {m} (h) + e _ {\Delta d} + e _ {x} + e _ {\pi}) ^ {\prime} \Sigma (B ^ {m} (h) + e _ {\Delta d} + e _ {x} + e _ {\pi}) \\ - \left(B ^ {m} (h) + e _ {\Delta d} + e _ {x} + e _ {\pi}\right) ^ {\prime} \Sigma^ {\frac {1}{2}} \Lambda_ {t} \\ = - i _ {0} (1) + A ^ {m} (h) + x _ {0} + \pi_ {0} + \frac {1}{2} \left(B ^ {m} (h) + e _ {\Delta d} + e _ {x} + e _ {\pi}\right) ^ {\prime} \Sigma \left(B ^ {m} (h) + e _ {\Delta d} + e _ {x} + e _ {\pi}\right) \\ - \left(B ^ {m} (h) + e _ {\Delta d} + e _ {x} + e _ {\pi}\right) ^ {\prime} \Sigma^ {\frac {1}{2}} \Lambda_ {0} \\ + \left(- e _ {i} ^ {\prime} + \left(B ^ {m} (h) + e _ {\Delta d} + e _ {x} + e _ {\pi}\right) ^ {\prime} \Psi - \left(B ^ {m} (h) + e _ {\Delta d} + e _ {x} + e _ {\pi}\right) ^ {\prime} \Sigma^ {\frac {1}{2}} \Lambda_ {1}\right) z _ {t - 1}. \\ \end{array}
$$

By matching coefficients, we obtain

$$
\begin{array}{l} A ^ {m} (h + 1) = - i _ {0} (1) + A ^ {m} (h) + x _ {0} + \pi_ {0} + \frac {1}{2} (B ^ {m} (h) + e _ {\Delta d} + e _ {x} + e _ {\pi}) ^ {\prime} \Sigma (B ^ {m} (h) + e _ {\Delta d} + e _ {x} + e _ {\pi}) \\ - \left(B ^ {m} (h) + e _ {\Delta d} + e _ {x} + e _ {\pi}\right) ^ {\prime} \Sigma^ {\frac {1}{2}} \Lambda_ {0}, \\ \end{array}
$$

$$
B ^ {m} (h + 1) ^ {\prime} = - e _ {i} ^ {\prime} + \left(B ^ {m} (h) + e _ {\Delta d} + e _ {x} + e _ {\pi}\right) ^ {\prime} \Psi - \left(B ^ {m} (h) + e _ {\Delta d} + e _ {x} + e _ {\pi}\right) ^ {\prime} \Sigma^ {\frac {1}{2}} \Lambda_ {1}.
$$

with initial condition  $A^m (0) = 0$ ,  $B^{m}(0) = 0$

(c) The derivation is very similar to that in (b).

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/6fb66edbd54aaf495d6b4d6dbbcdbc06bdb7e75602c921f48250ad77721ddaa0.jpg)

# A.38 Proposition 8.9 in Section 8.E

Proof. (a) Recall that

$$
A (h + 1) = - i _ {0} (1) + A (h) + \frac {1}{2} B (h) ^ {\prime} \Sigma B (h) - B (h) ^ {\prime} \Sigma^ {\frac {1}{2}} \Lambda_ {0},
$$

$$
B (h + 1) ^ {\prime} = B (h) ^ {\prime} \Psi - e _ {i} ^ {\prime} - B (h) ^ {\prime} \Sigma^ {\frac {1}{2}} \Lambda_ {1},
$$

which further implies

$$
B (h) ^ {\prime} = - e _ {i} ^ {\prime} \left(I - \left(\Psi - \Sigma^ {\frac {1}{2}} \Lambda_ {1}\right)\right) ^ {- 1} \left(I - \left(\Psi - \Sigma^ {\frac {1}{2}} \Lambda_ {1}\right) ^ {h}\right)
$$

and

$$
\begin{array}{l} \lim _ {h \to \infty} A (h) / h = - i _ {0} (1) + \frac {1}{2} B (\infty) ^ {\prime} \Sigma B (\infty) - B (\infty) ^ {\prime} \Sigma^ {\frac {1}{2}} \Lambda_ {0}, \\ B (\infty) ^ {\prime} = \lim  _ {h \rightarrow \infty} B (h) ^ {\prime} = - e _ {i} ^ {\prime} \left(I - \left(\Psi - \Sigma^ {\frac {1}{2}} \Lambda_ {1}\right)\right) ^ {- 1} \\ \end{array}
$$

The expected return of holding the long-term bond from time  $t$  to

$t + 1$  is

$$
\begin{array}{l} \mathbb {E} _ {t} \left[ \log P _ {t + 1} (h - 1) - \log P _ {t} (h) \right] = A (h - 1) + B (h - 1) ^ {\prime} \Psi z _ {t} - A (h) - B (h) ^ {\prime} z _ {t} \\ = i _ {0} (1) - \frac {1}{2} B (h - 1) ^ {\prime} \Sigma B (h - 1) + B (h - 1) ^ {\prime} \Sigma^ {\frac {1}{2}} \Lambda_ {0} \\ + B (h - 1) ^ {\prime} \Psi z _ {t} - B (h) ^ {\prime} z _ {t}. \\ \end{array}
$$

Letting  $h\to \infty$  yields

$$
\begin{array}{l} \lim _ {h \to \infty} \mathbb {E} _ {t} [ \log P _ {t + 1} (h - 1) - \log P _ {t} (h) ] = i _ {0} (1) - \frac {1}{2} B (\infty) ^ {\prime} \Sigma B (\infty) + B (\infty) ^ {\prime} \Sigma^ {\frac {1}{2}} \Lambda_ {0} + B (\infty) ^ {\prime} (\Psi - I) z _ {t}, \\ \lim  _ {h \rightarrow \infty} i _ {t} (h) = i _ {0} (1) - \frac {1}{2} B (\infty) ^ {\prime} \Sigma B (\infty) + B (\infty) ^ {\prime} \Sigma^ {\frac {1}{2}} \Lambda_ {0}. \\ \end{array}
$$

(b) Recall that

$$
\begin{array}{l} A ^ {m} (h + 1) = - i _ {0} (1) + A ^ {m} (h) + x _ {0} + \pi_ {0} + \frac {1}{2} (B ^ {m} (h) + e _ {\Delta d} + e _ {x} + e _ {\pi}) ^ {\prime} \Sigma (B ^ {m} (h) + e _ {\Delta d} + e _ {x} + e _ {\pi}) \\ - \left(B ^ {m} (h) + e _ {\Delta d} + e _ {x} + e _ {\pi}\right) ^ {\prime} \Sigma^ {\frac {1}{2}} \Lambda_ {0}, \\ \end{array}
$$

$$
B ^ {m} (h + 1) ^ {\prime} = - e _ {i} ^ {\prime} + \left(B ^ {m} (h) + e _ {\Delta d} + e _ {x} + e _ {\pi}\right) ^ {\prime} \Psi - \left(B ^ {m} (h) + e _ {\Delta d} + e _ {x} + e _ {\pi}\right) ^ {\prime} \Sigma^ {\frac {1}{2}} \Lambda_ {1}.
$$

Note that  $\log P_t^m (h) = pd_t^m (h) + \log Div_t$ . Similarly,

$$
\begin{array}{l} \mathbb {E} _ {t} \left[ \log P _ {t + 1} ^ {m} (h - 1) - \log P _ {t} ^ {m} (h) \right] \\ = \mathbb {E} _ {t} \left[ p d _ {t + 1} ^ {m} (h - 1) - p d _ {t} ^ {m} (h) + \log D i v _ {t + 1} - \log D i v _ {t} \right] \\ = A ^ {m} (h - 1) + B ^ {m} (h - 1) ^ {\prime} \Psi z _ {t} - A ^ {m} (h) - B ^ {m} (h) ^ {\prime} z _ {t} + \left(e _ {\Delta d} + e _ {x} + e _ {\pi}\right) ^ {\prime} \Psi z _ {t} \\ = i _ {0} (1) - \frac {1}{2} \left(B ^ {m} (h - 1) + e _ {\Delta d} + e _ {x} + e _ {\pi}\right) ^ {\prime} \Sigma \left(B ^ {m} (h - 1) + e _ {\Delta d} + e _ {x} + e _ {\pi}\right) \\ + (B ^ {m} (h - 1) + e _ {\Delta d} + e _ {x} + e _ {\pi}) ^ {\prime} \Sigma^ {\frac {1}{2}} \Lambda_ {0} + B ^ {m} (h - 1) ^ {\prime} \Psi z _ {t} - B ^ {m} (h) ^ {\prime} z _ {t} + (e _ {\Delta d} + e _ {x} + e _ {\pi}) ^ {\prime} \Psi z _ {t}. \\ \end{array}
$$

Let  $h\to \infty$  to obtain

$$
\begin{array}{l} \lim _ {h \to \infty} \mathbb {E} _ {t} \left[ \log P _ {t + 1} ^ {m} (h - 1) - \log P _ {t} ^ {m} (h) \right] \\ = i _ {0} (1) - \frac {1}{2} \left(B ^ {m} (\infty) + e _ {\Delta d} + e _ {x} + e _ {\pi}\right) ^ {\prime} \Sigma \left(B ^ {m} (\infty) + e _ {\Delta d} + e _ {x} + e _ {\pi}\right) \\ + \left(B ^ {m} (\infty) + e _ {\Delta d} + e _ {x} + e _ {\pi}\right) ^ {\prime} \Sigma^ {\frac {1}{2}} \Lambda_ {0} + B ^ {m} (\infty) ^ {\prime} (\Psi - I) z _ {t} + \left(e _ {\Delta d} + e _ {x} + e _ {\pi}\right) ^ {\prime} \Psi z _ {t}, \\ \end{array}
$$

where  $B^{m}(\infty)^{\prime}$  is given by

$$
B ^ {m} (\infty) ^ {\prime} = \left(- e _ {i} ^ {\prime} + (e _ {\Delta d} + e _ {x} + e _ {\pi}) ^ {\prime} (\Psi - \Sigma^ {\frac {1}{2}} \Lambda_ {1})\right) \left(I - (\Psi - \Sigma^ {\frac {1}{2}} \Lambda_ {1})\right) ^ {- 1},
$$

from which we can further simplify  $(B^{m}(\infty) + e_{\Delta d} + e_{x} + e_{\pi})'$  to

$$
\begin{array}{l} \left(B ^ {m} (\infty) + e _ {\Delta d} + e _ {x} + e _ {\pi}\right) ^ {\prime} = B ^ {m} (\infty) ^ {\prime} + \left(e _ {\Delta d} + e _ {x} + e _ {\pi}\right) ^ {\prime} (I - \left(\Psi - \Sigma^ {\frac {1}{2}} \Lambda_ {1}\right)) \left(I - \left(\Psi - \Sigma^ {\frac {1}{2}} \Lambda_ {1}\right)\right) ^ {- 1} \\ = \left(- e _ {i} ^ {\prime} + (e _ {\Delta d} + e _ {x} + e _ {\pi}) ^ {\prime} (\Psi - \Sigma^ {\frac {1}{2}} \Lambda_ {1}) + (e _ {\Delta d} + e _ {x} + e _ {\pi}) (I - (\Psi - \Sigma^ {\frac {1}{2}} \Lambda_ {1}))\right) (I - (\Psi - \Sigma^ {\frac {1}{2}} \Lambda_ {1})) ^ {- 1} \\ = \left(- e _ {i} ^ {\prime} + e _ {\Delta d} + e _ {x} + e _ {\pi}\right) ^ {\prime} \left(I - \left(\Psi - \Sigma^ {\frac {1}{2}} \Lambda_ {1}\right)\right) ^ {- 1}. \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/7a789fe0a81fa2d4ab7aacd64a5a56fb1fc8ced63e5c2ba85da3cc2980d549a9.jpg)

# A.39 Proposition 9.1 in Section 9.A

Proof. Substitute the  $n f a_{t}$ ,  $ib_{t}$ ,  $c g_{t}$  expressions into Eq. (9.4) to get:

$$
\begin{array}{l} a _ {t} \sum_ {\iota} x _ {F, t} (\iota) - a _ {t} ^ {*} \sum_ {\iota} x _ {H, t} ^ {*} (\iota) - a _ {t - 1} \sum_ {\iota} x _ {F, t - 1} (\iota) + a _ {t - 1} ^ {*} \sum_ {\iota} x _ {H, t - 1} ^ {*} (\iota) \\ = t b _ {t} + a _ {t - 1} \sum_ {\iota} x _ {F, t - 1} (\iota) d _ {t} ^ {*} (\iota) - a _ {t - 1} ^ {*} \sum_ {\iota} w _ {H, t - 1} ^ {*} (\iota) d _ {t} (\iota) + a _ {t - 1} \sum_ {\iota} x _ {F, t - 1} (\iota) \rho_ {t} ^ {*} (\iota) - a _ {t - 1} ^ {*} \sum_ {\iota} x _ {H, t - 1} ^ {*} (\iota) \rho_ {t} (\iota) \\ \end{array}
$$

Re-arrange the equation and plug in Eq. (9.3):

$$
t b _ {t} = a _ {t} - \sum_ {\iota} m _ {t} (\iota) - a _ {t - 1} \sum_ {\iota} x _ {F, t - 1} (\iota) (1 + d _ {t} ^ {*} (\iota) + \rho_ {t} ^ {*} (\iota)) + a _ {t - 1} ^ {*} \sum_ {\iota} x _ {H, t - 1} ^ {*} (1 + d _ {t} (\iota) + \rho_ {t} (\iota)).
$$

Recall the dynamics of home household wealth given by Eq. (9.2):

$$
a _ {t} = a _ {t - 1} \left(\sum_ {\iota} x _ {H, t - 1} (\iota) \left(1 + d _ {t} (\iota) + \rho_ {t} (\iota)\right) + \sum_ {\iota} x _ {F, t - 1} (\iota) \left(1 + d _ {t} ^ {*} (\iota) + \rho_ {t} ^ {*} (\iota)\right)\right) + s _ {t}.
$$

Plug into the  $tb_{t}$  expression to get

$$
t b _ {t} = s _ {t} - \left(\sum_ {\iota} m _ {t} (\iota) - \sum_ {\iota} m _ {t - 1} (\iota) \left(1 + \rho_ {t} (\iota) + d _ {t} (\iota)\right)\right).
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/b77be4caf57993d96eddd827ca63d81fbe05aa8e534041c56b8369e90377e88e.jpg)

# A.40 Proposition 9.2 in Section 9.B

Proof. Conjecture that

$$
\psi_ {t} (w _ {t}, z _ {t}) = \delta^ {t} f _ {t} (z _ {t}) \frac {w _ {t} ^ {1 - \gamma}}{1 - \gamma},
$$

note that households consume all their wealth in the last period, i.e.

$$
\psi_ {t} (w _ {t}, z _ {t}) = \delta^ {t} \frac {w _ {t} ^ {1 - \gamma}}{1 - \gamma}
$$

which implies the boundary condition for  $f_{t}(z_{t})$ :

$$
f _ {T} (z _ {T}) = 1.
$$

Plug the conjectured expression of  $\psi_{t + 1}(w_{t + 1},z_{t + 1})$  into the recursive form of  $\psi_t(w_t,z_t)$  to get

$$
\begin{array}{l} \psi_ {t} \left(w _ {t}, z _ {t}\right) = \max  _ {c _ {t}, x _ {t}} \left\{\delta^ {t} \frac {c _ {t} ^ {1 - \gamma}}{1 - \gamma} + \mathbb {E} _ {t} \left[ \delta^ {t + 1} f _ {t + 1} \left(z _ {t + 1}\right) \frac {w _ {t + 1} ^ {1 - \gamma}}{1 - \gamma} \right] \right\} \\ = \max  _ {c _ {t}, x _ {t}} \left\{\delta^ {t} \frac {c _ {t} ^ {1 - \gamma}}{1 - \gamma} + \mathbb {E} _ {t} \left[ \delta^ {t + 1} f _ {t + 1} \left(z _ {t + 1}\right) \frac {\left(\left(w _ {t} - c _ {t}\right) x _ {t} ^ {\prime} \exp \left(r _ {t + 1}\right)\right) ^ {1 - \gamma}}{1 - \gamma} \right] \right\} \\ = \max  _ {c _ {t}, x _ {t}} \left\{\delta^ {t} \frac {c _ {t} ^ {1 - \gamma}}{1 - \gamma} + \delta^ {t + 1} \left(w _ {t} - c _ {t}\right) ^ {1 - \gamma} \mathbb {E} _ {t} \left[ f _ {t + 1} \left(z _ {t + 1}\right) \frac {\left(x _ {t} ^ {\prime} \exp \left(r _ {t + 1}\right)\right) ^ {1 - \gamma}}{1 - \gamma} \right] \right\} \\ = \delta^ {t} w _ {t} ^ {1 - \gamma} \max  _ {w c _ {t}, x _ {t}} \left\{\frac {w c _ {t} ^ {\gamma - 1}}{1 - \gamma} + \delta \left(1 - \frac {1}{w c _ {t}}\right) ^ {1 - \gamma} \mathbb {E} _ {t} \left[ f _ {t + 1} \left(z _ {t + 1}\right) \frac {\left(x _ {t} ^ {\prime} \exp \left(r _ {t + 1}\right)\right) ^ {1 - \gamma}}{1 - \gamma} \right] \right\} \\ \end{array}
$$

since  $\delta (1 - \frac{1}{wc_t})^{1 - \gamma}$  is always positive and  $x_{t}$  only enters into the expectation term in the objective function, the optimal portfolio can be solved for independently of the optimal consumption, i.e.

$$
x _ {t} = \arg \max  _ {x _ {t}} \mathbb {E} _ {t} \left[ f _ {t + 1} \left(z _ {t + 1}\right) \frac {\left(x _ {t} ^ {\prime} \exp \left(r _ {t + 1}\right)\right) ^ {1 - \gamma}}{1 - \gamma} \right]
$$

which gives Eq. (9.9). For now, denote

$$
g _ {t} \left(z _ {t}\right) = \max  _ {x _ {t}} \mathbb {E} _ {t} \left[ f _ {t + 1} \left(z _ {t + 1}\right) \frac {\left(x _ {t} ^ {\prime} \exp \left(r _ {t + 1}\right)\right) ^ {1 - \gamma}}{1 - \gamma} \right]
$$

such that  $1 = x_{t}^{\prime}1$ . Plug  $g_{t}(z_{t})$  back into  $\psi_t(w_t,z_t)$  to get

$$
\psi_ {t} \left(w _ {t}, z _ {t}\right) = \delta^ {t} w _ {t} ^ {1 - \gamma} \max  _ {w c _ {t}} \left\{\frac {w c _ {t} ^ {\gamma - 1}}{1 - \gamma} + \delta \left(1 - \frac {1}{w c _ {t}}\right) ^ {1 - \gamma} g _ {t} \left(z _ {t}\right) \right\}
$$

the first order condition w.r.t.  $wc_{t}$  gives

$$
\begin{array}{l} 0 = - w c _ {t} ^ {\gamma - 2} + \delta (1 - \gamma) (1 - \frac {1}{w c _ {t}}) ^ {- \gamma} w c _ {t} ^ {- 2} g _ {t} (z _ {t}) \\ \Rightarrow 1 = \delta (1 - \gamma) \left(w c _ {t} - 1\right) ^ {- \gamma} g _ {t} \left(z _ {t}\right) \\ \Rightarrow w c _ {t} = 1 + \left(\delta (1 - \gamma) g _ {t} \left(z _ {t}\right)\right) ^ {1 / \gamma} \\ \end{array}
$$

Hence,  $wc_{t}$  depends only on  $t$  and  $z_{t}$  but  $w_{t}$ . Meanwhile, the first order conditions also show that

$$
g _ {t} (z _ {t}) = \frac {(w c _ {t} - 1) ^ {\gamma}}{\delta (1 - \gamma)}
$$

plug  $g_{t}(z_{t})$  back into the value function to get

$$
\begin{array}{l} \psi_ {t} \left(w _ {t}, z _ {t}\right) = \delta^ {t} w _ {t} ^ {1 - \gamma} \left[ \frac {w c _ {t} ^ {\gamma - 1}}{1 - \gamma} + \delta \left(1 - \frac {1}{w c _ {t}}\right) ^ {1 - \gamma} \frac {\left(w c _ {t} - 1\right) ^ {\gamma}}{\delta (1 - \gamma)} \right] \\ = \delta^ {t} \frac {w _ {t} ^ {1 - \gamma}}{1 - \gamma} \left[ w c _ {t} ^ {\gamma - 1} + w c _ {t} ^ {\gamma - 1} \left(w c _ {t} - 1\right) \right] \\ = \delta^ {t} \frac {w _ {t} ^ {1 - \gamma}}{1 - \gamma} w c _ {t} ^ {\gamma} \\ \end{array}
$$

which confirms our conjecture and implies that

$$
f _ {t} (z _ {t}) = w c _ {t} ^ {\gamma}
$$

note that  $f_{T}(z_{T}) = wc_{T} = 1$ , which fulfills the boundary condition.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/5e4ebb1179e6b4ff6044b52289afbee2aa812839796ac5d12a58777e67099e74.jpg)

# A.41 Proposition 9.3 in Section 9.B

Proof. When the asset returns are i.i.d., the optimal portfolio choice is given by

$$
\begin{array}{l} x _ {t} = \arg \max  _ {x _ {t}} \mathbb {E} \left[ \exp \left((1 - \gamma) r _ {t + 1} ^ {p}\right) \right] \\ = \arg \max  _ {x _ {t}} \exp (\mathbb {E} \left[ (1 - \gamma) r _ {t + 1} ^ {p} \right] + \frac {1}{2} v a r ((1 - \gamma) r _ {t + 1} ^ {p})) \\ = \arg \max  _ {x _ {t}} \mathbb {E} \left[ (1 - \gamma) r _ {t + 1} ^ {p} \right] + \frac {1}{2} \operatorname {v a r} ((1 - \gamma) r _ {t + 1} ^ {p}) \\ \end{array}
$$

plug  $r_{t + 1}^p$  in to get

$$
\mathbb {E} \left[ (1 - \gamma) r _ {t + 1} ^ {p} \right] + \frac {1}{2} v a r ((1 - \gamma) r _ {t + 1} ^ {p}) = (1 - \gamma) \left(x _ {t} ^ {\prime} (\mathbb {E} _ {t} [ r _ {t + 1} - r _ {t} ^ {f} ] + \frac {1}{2} \sigma_ {t} ^ {2}) + r _ {t} ^ {f} - \frac {1}{2} x _ {t} ^ {\prime} \Sigma_ {t} x _ {t}\right) + \frac {1}{2} (1 - \gamma) ^ {2} x _ {t} ^ {\prime} \Sigma_ {t} x _ {t}
$$

the first order condition w.r.t.  $x_{t}$  is given by

$$
\mathbb {E} _ {t} \left[ r _ {t + 1} - r _ {t} ^ {f} \right] + \frac {1}{2} \sigma_ {t} ^ {2} - \gamma \Sigma x _ {t} = 0
$$

Hence,

$$
x _ {t} = \gamma^ {- 1} \Sigma_ {t} ^ {- 1} \left(\mathbb {E} \left[ r _ {t + 1} - r _ {t} ^ {f} \right] + \frac {1}{2} \sigma_ {t} ^ {2}\right).
$$

note that  $\Sigma_t$  must be reversible, otherwise we can synthesize another risk-free assets with the risky assets.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/b2f26c39f66dbaec9963602247c27a7b4e127dbebf269d916bf5ba3230ffe5b7.jpg)

# A.42 Proposition 10.1 in Section 10.A

Proof. The bond market clearing condition requires that

$$
\exp (r _ {t} ^ {*}) b _ {F, t} ^ {*} + \exp (r _ {t}) n (\exp (\psi_ {t}) - 1) - m \frac {\mathbb {E} _ {t} [ r x _ {t + 1} ] + \frac {1}{2} v a r _ {t} (\Delta e _ {t + 1})}{\omega v a r _ {t} (\Delta e _ {t + 1})} = 0
$$

As shocks become small, the variance term becomes second-order and drops out. Below, we log-linearize the equation around steady states  $\exp (\bar{r}) = \exp (\bar{r}^{*}) = \delta^{-1}$ ,  $\bar{\psi} = 0$ ,  $\bar{b}_H = \bar{b}_F = 0$ ,  $\bar{e} = 0$  and some  $\bar{y}$ . Note that both noise traders and intermediaries are holding zero-cost

portofolios, hence  $b_{H,t} + \exp (-e_t)b_{F,t} = 0$

$$
\begin{array}{l} \frac {\mathbb {E} _ {t} \left[ \Delta e _ {t + 1} + r _ {t} - r _ {t} ^ {*} \right]}{\omega v a r _ {t} \left(\Delta e _ {t + 1}\right) / m} = \exp (\bar {r}) n \psi_ {t} - \exp (\bar {e} + \bar {r} ^ {*} - \bar {r}) b _ {H, t} \exp (r _ {t}) \\ \Rightarrow \mathbb {E} _ {t} [ \Delta e _ {t + 1} + r _ {t} - r _ {t} ^ {*} ] = \chi_ {1} \psi_ {t} - \chi_ {2} \frac {b _ {H , t} \exp (r _ {t})}{\bar {Y}}, \\ \end{array}
$$

where  $\chi_{1} = n\omega var_{t}(\Delta e_{t + 1}) / m\delta ,\chi_{2} = \omega var_{t}(\Delta e_{t + 1})\bar{Y} /m$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/4f207590cdfcb0b127a7c138206a65d84f1d038cb5c205df2e6e5a1f440ea675.jpg)

# A.43 Proposition 10.2 in Section 10.B

Proof. Assuming log-normality, the 4 Euler equations can be written as

$$
\begin{array}{l} - \lambda_ {t} = \mathbb {E} _ {t} [ m _ {t + 1} ] + r _ {t} + \frac {1}{2} v a r _ {t} (m _ {t + 1}), \\ - \xi_ {t} = \mathbb {E} _ {t} [ m _ {t + 1} ] + r _ {t} ^ {*} - \mathbb {E} _ {t} [ \Delta e _ {t + 1} ] + \frac {1}{2} v a r _ {t} (m _ {t + 1}) + \frac {1}{2} v a r _ {t} (\Delta e _ {t + 1}) - c o v _ {t} (m _ {t + 1}, \Delta e _ {t + 1}), \\ - \xi_ {t} ^ {*} = \mathbb {E} _ {t} \left[ m _ {t + 1} ^ {*} \right] + r _ {t} ^ {*} + \frac {1}{2} v a r _ {t} \left(m _ {t + 1} ^ {*}\right), \\ - \lambda_ {t} ^ {*} = \mathbb {E} _ {t} \left[ m _ {t + 1} ^ {*} \right] + r _ {t} + \mathbb {E} _ {t} \left[ \Delta e _ {t + 1} \right] + \frac {1}{2} v a r _ {t} \left(m _ {t + 1} ^ {*}\right) + \frac {1}{2} v a r _ {t} \left(\Delta e _ {t + 1}\right) + c o v _ {t} \left(m _ {t + 1} ^ {*}, \Delta e _ {t + 1}\right). \\ \end{array}
$$

Adding up the first and third equation and subtracting the second and the fourth yields

$$
c o v _ {t} \big (m _ {t + 1} - m _ {t + 1} ^ {*}, \Delta e _ {t + 1} \big) = v a r _ {t} \big (\Delta e _ {t + 1} \big) + \big (\lambda_ {t} ^ {*} - \lambda_ {t} \big) - \big (\xi_ {t} ^ {*} - \xi_ {t} \big).
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/a82adcbb592d113b946bca8fb2732a1162f65e84ea20ca84add8e99203ccb6b0.jpg)

# A.44 Proposition 10.3 in Section 10.C

Proof. First, subtract the first first-order condition by the second and plug in the consumption aggregation equations to get:

$$
\begin{array}{l} - \gamma (\hat {c} _ {t} (a) - \hat {c} _ {t} ^ {*} (a)) + (1 - \alpha) \hat {c} _ {F, t} (a) - \alpha \hat {c} _ {F, t} ^ {*} + \alpha \hat {c} _ {H, t} ^ {*} (a) - (1 - \alpha) \hat {c} _ {H, t} (a) = 0 \\ \Rightarrow (\alpha - 1 - \gamma \alpha) \hat {c} _ {H, t} (a) + (1 - \gamma) (1 - \alpha) \hat {c} _ {F, t} (a) + (\alpha + \gamma - \gamma \alpha) \hat {c} _ {H, t} ^ {*} (a) + (\gamma - 1) \alpha \hat {c} _ {F, t} ^ {*} (a) = 0 \tag {A.40} \\ \end{array}
$$

similarly, subtract the third first-order condition by the fourth and plug in the consumption aggregation equation to get:

$$
\begin{array}{l} - \gamma (\hat {c} _ {t} (a) - \hat {c} _ {t} ^ {*} (a)) - \alpha \hat {c} _ {F, t} (a) + (1 - \alpha) \hat {c} _ {F, t} ^ {*} (a) - (1 - \alpha) c _ {H, t} ^ {*} (a) + \alpha \hat {c} _ {H, t} (a) = 0 \\ \Rightarrow (1 - \gamma) \alpha \hat {c} _ {H, t} (a) + (\alpha \gamma - \gamma - \alpha) \hat {c} _ {F, t} (a) + (\gamma - 1) (1 - \alpha) \hat {c} _ {H, t} ^ {*} (a) + (\gamma \alpha + 1 - \alpha) \hat {c} _ {F, t} ^ {*} (a) = 0 \tag {A.41} \\ \end{array}
$$

Next, consider the inactive households' consumption aggregation equations their within-period solution and plug in their budget con

straints to get:

$$
\alpha \hat {c} _ {H, t} (i) + (1 - \alpha) \hat {c} _ {F, t} (i) = \hat {\tau} _ {t}
$$

$$
\alpha \hat {c} _ {F, t} ^ {*} (i) + (1 - \alpha) \hat {c} _ {H, t} ^ {*} (i) = \hat {\tau} _ {t} ^ {*}
$$

$$
\hat {c} _ {H, t} (i) - \hat {c} _ {F, t} (i) = \hat {c} _ {H, t} (a) - \hat {c} _ {F, t} (a)
$$

$$
\hat {c} _ {H, t} ^ {*} (i) - \hat {c} _ {F, t} ^ {*} (i) = \hat {c} _ {H, t} ^ {*} (a) - \hat {c} _ {F, t} ^ {*} (a)
$$

taken active households' consumption as given, the 4 simultaneous equations solve for inactive households' consumption:

$$
\hat {c} _ {H, t} (i) = \hat {\tau} _ {t} + (1 - \alpha) \hat {c} _ {H, t} (a) - (1 - \alpha) \hat {c} _ {F, t} (a)
$$

$$
\hat {c} _ {F, t} (i) = \hat {\tau} _ {t} - \alpha \hat {c} _ {H, t} (a) + \alpha \hat {c} _ {F, t} (a)
$$

$$
\hat {c} _ {H, t} ^ {*} (i) = \hat {\tau} _ {t} ^ {*} + \alpha \hat {c} _ {H, t} ^ {*} (a) - \alpha \hat {c} _ {F, t} ^ {*} (a)
$$

$$
\hat {c} _ {F, t} ^ {*} (i) = \hat {\tau} _ {t} ^ {*} - (1 - \alpha) \hat {c} _ {H, t} ^ {*} (a) + (1 - \alpha) \hat {c} _ {F, t} ^ {*} (a)
$$

plug into the social planner's resource constraints to get

$$
\begin{array}{l} \bar {y} \hat {y} _ {t} = \phi (\bar {c} _ {H} (a) \hat {c} _ {H, t} (a) + \bar {c} _ {H} ^ {*} (a) \hat {c} _ {H, t} ^ {*} (a)) \\ + (1 - \phi) (\bar {c} _ {H} (i) (\hat {\tau} _ {t} + (1 - \alpha) \hat {c} _ {H, t} (a) - (1 - \alpha) \hat {c} _ {F, t} (a)) + \bar {c} _ {H} ^ {*} (i) (\hat {\tau} _ {t} ^ {*} + \alpha \hat {c} _ {H, t} ^ {*} (a) - \alpha \hat {c} _ {F, t} ^ {*} (a))) \\ \end{array}
$$

$$
\begin{array}{l} \bar {y} ^ {*} \hat {y} _ {t} ^ {*} = \phi (\bar {c} _ {F} (a) \hat {c} _ {F, t} (a) + \bar {c} _ {F} ^ {*} (a) \hat {c} _ {F, t} ^ {*} (a)) \\ + (1 - \phi) (\bar {c} _ {F} (i) (\hat {\tau} _ {t} - \alpha \hat {c} _ {H, t} (a) + \alpha \hat {c} _ {F, t} (a)) + \bar {c} _ {F} ^ {*} (i) (\hat {\tau} _ {t} ^ {*} - (1 - \alpha) \hat {c} _ {H, t} ^ {*} (a) + (1 - \alpha) \hat {c} _ {F, t} ^ {*} (a))) \tag {A.43} \\ \end{array}
$$

Recast Eq. (A.40), Eq. (A.41), Eq. (A.42) and Eq. (A.43) to solve for  $\hat{c}_{H,t}(a)$ ,  $\hat{c}_{F,t}(a)$ ,  $\hat{c}_{H,t}^{*}(a)$  and  $\hat{c}_{F,t}^{*}(a)$  simultaneously:

$$
\left[ \begin{array}{c} \hat {c} _ {H, t} (a) \\ \hat {c} _ {F, t} (a) \\ \hat {c} _ {H, t} ^ {*} (a) \\ \hat {c} _ {F, t} ^ {*} (a) \end{array} \right] = A ^ {- 1} \left[ \begin{array}{c} \bar {y} \hat {y} _ {t} - (1 - \phi) \bar {c} _ {H} (i) \hat {\tau} _ {t} - (1 - \phi) \bar {c} _ {H} ^ {*} (i) \hat {\tau} _ {t} ^ {*} \\ \bar {y} ^ {*} \hat {y} _ {t} ^ {*} - (1 - \phi) \bar {c} _ {F} (i) \hat {\tau} _ {t} - (1 - \phi) \bar {c} _ {F} ^ {*} (i) \hat {\tau} _ {t} ^ {*} \\ 0 \\ 0 \end{array} \right]
$$

where  $A$  is given by

$$
A =
$$

$$
\left[ \begin{array}{c c c c} \phi \bar {c} _ {H} (a) + (1 - \phi) (1 - \alpha) \bar {c} _ {H} (i) & - (1 - \phi) (1 - \alpha) \bar {c} _ {H} (i) & \phi \bar {c} _ {H} ^ {*} (a) + (1 - \phi) \alpha \bar {c} _ {H} ^ {*} (i) & - (1 - \phi) \alpha \bar {c} _ {H} ^ {*} (i) \\ - (1 - \phi) \alpha \bar {c} _ {F} (i) & \phi \bar {c} _ {F} (a) + (1 - \phi) \alpha \bar {c} _ {F} (i) & - (1 - \phi) (1 - \alpha) \bar {c} _ {F} ^ {*} (i) & \phi \bar {c} _ {F} ^ {*} (a) + (1 - \phi) (1 - \alpha) \bar {c} _ {F} ^ {*} (i) \\ \alpha - 1 - \gamma \alpha & (1 - \gamma) (1 - \alpha) & \alpha + \gamma - \gamma \alpha & (\gamma - 1) \alpha \\ (\gamma - 1) \alpha & \alpha + \gamma - \gamma \alpha & (1 - \gamma) (1 - \alpha) & \alpha - 1 - \gamma \alpha \end{array} \right]
$$

Finally, the exchange rate is given by

$$
\hat {e} _ {t} = - \gamma (\hat {c} _ {t} (a) - \hat {c} _ {t} ^ {*} (a))
$$

meanwhile, adding up active and inactive households' consumption yields the total consumption, i.e.

$$
\begin{array}{l} \hat {c} _ {t} = \phi \bar {c} _ {t} (a) \hat {c} _ {t} (a) + (1 - \phi) \bar {c} _ {t} (i) \hat {c} _ {t} (i) \\ \hat {c} _ {t} ^ {*} = \phi \bar {c} _ {t} ^ {*} (a) \hat {c} _ {t} ^ {*} (a) + (1 - \phi) \bar {c} _ {t} ^ {*} (i) \hat {c} _ {t} ^ {*} (i) \\ \end{array}
$$

□

# A.45 Proposition 10.4 in Section 10.C

Proof. First, we show the steady state under in special case where  $\pi = 1/2$ ,  $\bar{y} = \bar{y}^* = 1$ ,  $\bar{\tau} = \bar{\tau}^* = \alpha^\alpha (1 - \alpha)^{1 - \alpha}$ . Note that the two countries are perfectly symmetric in the steady state. Hence,  $\bar{c}_{H,t}(.) = \bar{c}_{F,t}^*(.)$ ,  $\bar{c}_{F,t}(.) = \bar{c}_{H,t}^*(.)$ . Plug this equality into the active households' first-order conditions and divide the first first-order condition by the second one to get:

$$
\frac {\bar {c} _ {F , t} (a)}{\bar {c} _ {H , t} (a)} = \frac {1 - \alpha}{\alpha}.
$$

As shown above, this also implies

$$
\frac {\bar {c} _ {F , t} (i)}{\bar {c} _ {H , t} (i)} = \frac {1 - \alpha}{\alpha}.
$$

Recall that  $(\bar{c}_{H,t}(i))^{\alpha}(\bar{c}_{F,t}(i))^{1 - \alpha} = \tau$ , hence

$$
\bar {c} _ {H} (i) = \frac {\alpha}{(1 - \alpha) ^ {1 - \alpha} \alpha^ {\alpha}} \bar {\tau} = \alpha ,
$$

$$
\bar {c} _ {F} (i) = \frac {1 - \alpha}{(1 - \alpha) ^ {1 - \alpha} \alpha^ {\alpha}} \bar {\tau} = 1 - \alpha .
$$

Plugging the steady state consumption into the earlier intermediate results and letting  $\alpha \rightarrow 1$  yields:

$$
\left[ \begin{array}{c} \hat {c} _ {H, t} (a) \\ \hat {c} _ {F, t} (a) \\ \hat {c} _ {H, t} ^ {*} (a) \\ \hat {c} _ {F, t} ^ {*} (a) \end{array} \right] = \left[ \begin{array}{c c c c} \frac {1}{\phi} & 0 & 0 & 0 \\ - \frac {\gamma - 1}{\phi} & \frac {\gamma}{\phi} & 0 & 1 \\ \frac {\gamma}{\phi} & - \frac {\gamma - 1}{\phi} & 1 & 0 \\ 0 & \frac {1}{\phi} & 0 & 0 \end{array} \right] \left[ \begin{array}{c} \hat {y} _ {t} - (1 - \phi) \hat {\tau} _ {t} \\ \hat {y} _ {t} ^ {*} - (1 - \phi) \hat {\tau} _ {t} ^ {*} \\ 0 \\ 0 \end{array} \right],
$$

which implies

$$
\hat {c} _ {t} (a) = \frac {1}{\phi} (\hat {y} _ {t} - (1 - \phi) \hat {\tau} _ {t}), \quad \hat {c} _ {t} ^ {*} (a) = \frac {1}{\phi} (\hat {y} _ {t} ^ {*} - (1 - \phi) \hat {\tau} _ {t} ^ {*}).
$$

Note that when  $\alpha \to 1$ ,  $\bar{c}(i) = \bar{c}^*(i) = \bar{\tau} \to 1$ . Also,  $\bar{c}(a) = \bar{c}^*(a) \to 1$ . Hence,

$$
\begin{array}{l} \hat {c} _ {t} = \phi \bar {c} (a) \hat {c} _ {t} (a) + (1 - \phi) \bar {c} (i) \hat {c} _ {t} (i) \\ = \hat {y} _ {t} - (1 - \phi) \hat {\tau} _ {t} + (1 - \phi) \hat {\tau} _ {t} \\ = \hat {y} _ {t}, \\ \end{array}
$$

which implies

$$
\begin{array}{l} \hat {e} _ {t} = - \frac {\gamma}{\phi} (\hat {y} _ {t} - \hat {y} _ {t} ^ {*}) + \frac {\gamma}{\phi} (1 - \phi) (\hat {\tau} _ {t} - \hat {\tau} _ {t} ^ {*}), \\ \hat {c} _ {t} ^ {*} - \hat {c} _ {t} = - (\hat {y} _ {t} - \hat {y} _ {t} ^ {*}). \\ \end{array}
$$

And the covariance is given by

$$
\begin{array}{l} c o v _ {t} (\hat {e} _ {t + 1}, \hat {e} _ {t + 1} ^ {*} - \hat {e} _ {t + 1}) = \frac {\gamma}{\phi} \left(v a r (\hat {y} _ {t + 1} - \hat {y} _ {t + 1} ^ {*}) - (1 - \phi) c o v _ {t} (\hat {\tau} _ {t + 1} - \hat {\tau} _ {t + 1} ^ {*}, \hat {y} _ {t + 1} - \hat {y} _ {t + 1} ^ {*})\right) \\ = \frac {\gamma}{\phi} \left(2 \sigma_ {y} ^ {2} - 2 (1 - \phi) \rho \sigma_ {y} \sigma_ {\tau}\right), \\ \end{array}
$$

$$
\begin{array}{l} c o r r _ {t} (\hat {e} _ {t + 1}, \hat {c} _ {t + 1} ^ {*} - \hat {c} _ {t + 1}) = \frac {\frac {\gamma}{\phi} \left(2 \sigma_ {y} ^ {2} - 2 (1 - \phi) \rho \sigma_ {y} \sigma_ {\tau}\right)}{\frac {\gamma}{\phi} 2 \sigma_ {y} \sqrt {\sigma_ {y} ^ {2} + (1 - \phi) ^ {2} \sigma_ {\tau} ^ {2} - 2 (1 - \phi) \rho \sigma_ {y} \sigma_ {\tau}}} \\ = \frac {1 - (1 - \phi) \rho \frac {\sigma_ {\tau}}{\sigma_ {y}}}{\sqrt {1 + (1 - \phi) ^ {2} \frac {\sigma_ {\tau} ^ {2}}{\sigma_ {y} ^ {2}} - 2 (1 - \phi) \rho \frac {\sigma_ {\tau}}{\sigma_ {y}}}}. \\ \end{array}
$$

where

$$
\rho = c o r r _ {t} (\hat {\tau} _ {t + 1}, \hat {y} _ {t + 1}) = c o r r _ {t} (\hat {\tau} _ {t + 1} ^ {*}, \hat {y} _ {t + 1} ^ {*}),
$$

$$
\sigma_ {y} ^ {2} = v a r _ {t} (\hat {y} _ {t + 1}) = v a r _ {t} (\hat {y} _ {t + 1} ^ {*}),
$$

$$
\sigma_ {\tau} ^ {2} = v a r _ {t} \left(\hat {\tau} _ {t + 1}\right) = v a r _ {t} \left(\hat {\tau} _ {t + 1} ^ {*}\right).
$$

However, note that the Backus-Smith correlation is still 1 for active households' consumption. To see this, recall that the exchange rate is given by

$$
\hat {e} _ {t + 1} = \gamma (\hat {c} _ {t + 1} ^ {*} (a) - \hat {c} _ {t + 1} (a)).
$$

Hence,

$$
\operatorname {c o r r} _ {t} \left(\hat {e} _ {t + 1}, \hat {c} _ {t + 1} ^ {*} (a) - \hat {c} _ {t + 1} (a)\right) = 1.
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/1d28d8a574d417037d3c94d147cc980a08e7ab877ac5e18bd36b26bfbcb36bc6.jpg)

# Bibliography

Daron Acemoglu, Vasco M Carvalho, Asuman Ozdaglar, and Alireza Tahbaz-Salehi. The network origins of aggregate fluctuations. *Econometrica*, 80(5):1977-2016, 2012.  
Daron Acemoglu, Ufuk Akcigit, and William Kerr. Networks and the macroeconomy: An empirical exploration. Nber macroeconomics annual, 30(1):273-335, 2016.  
Viral V Acharya, Zhengyang Jiang, Robert J Richmond, and Ernst-Ludwig von Thadden. Divided we fall: International health and trade coordination during a pandemic. Technical report, National Bureau of Economic Research, 2020.  
Tobias Adrian, Erkko Etula, and Tyler Muir. Financial intermediaries and the cross-section of asset returns. The Journal of Finance, 69(6): 2557-2596, 2014.  
Arash Aloosh and Geert Bekaert. Currency factors. Management Science, 2021.  
Fernando Alvarez and Urban J Jermann. Using asset prices to measure the persistence of the marginal utility of wealth. *Econometrica*, 73(6):1977-2016, 2005.  
Fernando Alvarez, Andrew Atkeson, and Patrick J Kehoe. Money, interest rates, and exchange rates with endogenously segmented markets. Journal of political Economy, 110(1):73-112, 2002.  
Fernando Alvarez, Andrew Atkeson, and Patrick J Kehoe. If exchange rates are random walks, then almost everything we say about monetary policy is wrong. *American Economic Review*, 97(2): 339-345, 2007.  
Fernando Alvarez, Andrew Atkeson, and Patrick J Kehoe. Time-varying risk, interest rates, and exchange rates in general equilibrium. The Review of Economic Studies, 76(3):851-878, 2009.

Manuel Amador, Javier Bianchi, Luigi Bocola, and Fabrizio Perri. Exchange rate policies at the zero lower bound. The Review of Economic Studies, 87(4):1605-1645, 2020.  
Leif Andersen, Darrell Duffie, and Yang Song. Funding value adjustments. The Journal of Finance, 74(1):145-192, 2019.  
Joe Anderson and Eric M Leeper. A fiscal accounting of Covid inflation. Available at SSRN 4654690, 2023.  
Philip W Anderson. More is different: broken symmetry and the nature of the hierarchical structure of science. Science, 177(4047): 393-396, 1972.  
Andrew Ang and Monika Piazzesi. A no-arbitrage vector autoregression of term structure dynamics with macroeconomic and latent variables. Journal of Monetary economics, 50(4):745-787, 2003.  
Cristina Arellano. Default risk and income fluctuations in emerging economies. American economic review, 98(3):690-712, 2008.  
Andrew Atkeson, Jonathan Heathcote, and Fabrizio Perri. The end of privilege: A reexamination of the net foreign asset position of the united states. Technical report, National Bureau of Economic Research, 2022.  
Patrick Augustin, Mikhail Chernov, Lukas Schmid, and Dongho Song. The term structure of cip violations. Technical report, National Bureau of Economic Research, 2020.  
Patrick Augustin, Mikhail Chernov, Lukas Schmid, and Dongho Song. Benchmark interest rates when the government is risky. Journal of Financial Economics, 140(1):74-100, 2021.  
Stéphane Auray, Michael B Devereux, and Aurélien Eyquem. Endogenous trade protection and exchange rate adjustment. Technical report, National Bureau of Economic Research, 2019.  
Stefan Avdjiev, Wenxin Du, Catherine Koch, and Hyun Song Shin. The dollar, bank leverage, and deviations from covered interest parity. American Economic Review: Insights, 1(2):193-208, 2019.  
Kerry Back. Asset pricing and portfolio choice theory. Oxford University Press, 2010.  
David Backus, Nina Boyarchenko, and Mikhail Chernov. Term structures of asset prices and returns. Journal of Financial Economics, 129 (1):1-23, 2018.

David K Backus and Gregor W Smith. Consumption and real exchange rates in dynamic economies with non-traded goods. Journal of International Economics, 35(3-4):297-316, 1993.  
David K Backus, Silverio Foresi, and Chris I Telmer. Affine term structure models and the forward premium anomaly. The Journal of Finance, 56(1):279-304, 2001.  
Jennie Bai and Pierre Collin-Dufresne. The cds-bond basis. Financial Management, 48(2):417-439, 2019.  
Ravi Bansal and Ivan Shaliastovich. Risk and return in bond, currency and equity markets. Manuscript, Duke University, 2007.  
Ravi Bansal and Ivan Shaliastovich. A long-run risks explanation of predictability puzzles in bond and currency markets. The Review of Financial Studies, 26(1):1-33, 2013.  
David Rezza Baqaae and Emmanuel Farhi. The macroeconomic impact of microeconomic shocks: Beyond hulten's theorem. *Econometrica*, 87(4):1155-1203, 2019.  
Lawrence M Benveniste and Jose A Scheinkman. On the differentiability of the value function in dynamic models of economics. Econometrica: Journal of the Econometric Society, pages 727-732, 1979.  
Katharina Bergant, Gian Maria Milesi-Ferretti, and Martin Schmitz. Cross-Border Investment in Emerging Market Bonds: Stylized Facts and Security-Level Evidence from Europe. Centre for Economic Policy Research, 2023.  
Steven Berry, James Levinsohn, and Ariel Pakes. Automobile prices in market equilibrium. *Econometrica: Journal of the Econometric Society*, pages 841-890, 1995.  
Steven T Berry. Estimating discrete-choice models of product differentiation. The RAND Journal of Economics, pages 242-262, 1994.  
Olivier Blanchard. Public debt and low interest rates. American Economic Review, 109(4):1197-1229, 2019.  
Luigi Bocola and Guido Lorenzoni. Financial crises, dollarization, and lending of last resort in open economies. *American Economic Review*, 110(8):2524-2557, 2020.  
Henning Bohn. The behavior of us public debt and deficits. the Quarterly Journal of economics, 113(3):949-963, 1998.  
Claudio EV Borio, Mobeen Iqbal, Robert N McCauley, Patrick McGuire, and Vladyslav Sushko. The failure of covered interest parity: Fx hedging demand and costly balance sheets. 2018.

Michael W Brandt, John H Cochrane, and Pedro Santa-Clara. International risk sharing is better than you think, or exchange rates are too smooth. Journal of Monetary Economics, 53(4):671-698, 2006.  
William A Brock. Asset prices in a production economy. In *The economics of information and uncertainty*, pages 1-46. University of Chicago Press, 1982.  
Markus K Brunnermeier and Yuliy Sannikov. A macroeconomic model with a financial sector. American Economic Review, 104(2): 379-421, 2014.  
Markus K Brunnermeier, Sebastian Merkel, and Yuliy Sannikov. Safe assets: A dynamic retrading perspective. Technical report, mimeo, 2022.  
Valentina Bruno and Hyun Song Shin. Capital flows and the risk-taking channel of monetary policy. Journal of monetary economics, 71: 119-132, 2015a.  
Valentina Bruno and Hyun Song Shin. Cross-border banking and global liquidity. The Review of Economic Studies, 82(2):535-564, 2015b.  
Craig Burnside, Martin Eichenbaum, and Sergio Rebelo. Prospective deficits and the asian currency crisis. Journal of political Economy, 109(6):1155-1197, 2001.  
Craig Burnside, Martin Eichenbaum, and Sergio Rebelo. Government finance in the wake of currency crises. Journal of Monetary Economics, 53(3):401-440, 2006.  
Craig Burnside, Martin Eichenbaum, and Sergio Rebelo. Currency crises models. In *Banking Crises: Perspectives from The New Palgrave Dictionary*, pages 79-83. Springer, 2016.  
Ricardo J Caballero and Emmanuel Farhi. The safety trap. The Review of Economic Studies, 85(1):223-274, 2018.  
Ricardo J Caballero and Arvind Krishnamurthy. Excessive dollar debt: Financial development and underinsurance. The Journal of Finance, 58(2):867-893, 2003.  
Ricardo J Caballero, Emmanuel Farhi, and Pierre-Olivier Gourinchas. Global imbalances and policy wars at the zero lower bound. The Review of Economic Studies, 88(6):2570-2621, 2021.  
John Y Campbell and Richard H Clarida. The dollar and real interest rates. In Carnegie-Rochester Conference Series on Public Policy, volume 27, pages 103-139. Elsevier, 1987.

John Y Campbell and Robert J Shiller. The dividend-price ratio and expectations of future dividends and discount factors. *The Review of Financial Studies*, 1(3):195-228, 1988.  
John Y Campbell and Luis M Viceira. Strategic asset allocation: portfolio choice for long-term investors. Clarendon Lectures in Economic, 2002.  
Nicolas Caramp and Sanjay R Singh. Bond premium cyclicality and liquidity traps. Available at SSRN 3529769, 2020.  
Gino Cenedese, Pasquale Della Corte, and Tianyu Wang. Currency mispricing and dealer balance sheets. The Journal of Finance, 76(6): 2763-2803, 2021.  
Thomas Chaney. The network structure of international trade. American Economic Review, 104(11):3600-3634, 2014.  
Zefeng Chen and Zhengyang Jiang. The liquidity premium of digital payment vehicle. Available at SSRN 4006574, 2022.  
Zefeng Chen, Zhengyang Jiang, Hanno Lustig, Stijn Van Nieuwerburgh, and Mindy Z Xiaolan. Exorbitant privilege gained and lost: Fiscal implications. Technical report, National Bureau of Economic Research, 2022.  
Mikhail Chernov and Drew Creal. International yield curves and currency puzzles. The Journal of Finance, 78(1):209-245, 2023.  
Mikhail Chernov, Lukas Schmid, and Andres Schneider. A macrofinance view of us sovereign cds premiums. The Journal of Finance, 75 (5):2809-2844, 2020.  
Mikhail Chernov, Valentin Haddad, and Oleg Itskhoki. What do financial markets say about the exchange rate? Technical report, Working Paper, UCLA, 2023.  
YiLi Chien and Kanda Naknoi. The risk premium and long-run global imbalances. Journal of Monetary Economics, 76:299-315, 2015.  
YiLi Chien, Hanno Lustig, and Kanda Naknoi. Why are exchange rates so smooth? a household finance explanation. Journal of Monetary Economics, 112:129-144, 2020.  
Jason Choi, Rishabh Kirpalani, and Diego J Perez. The macroeconomic implications of us market power in safe assets. Technical report, National Bureau of Economic Research, 2022.  
Jason Choi, Duong Q Dang, Rishabh Kirpalani, and Diego J Perez. The secular decrease in uk safe asset market power. Technical report, National Bureau of Economic Research, 2023.

Lawrence J Christiano. Solving dynamic equilibrium models by a method of undetermined coefficients. Computational Economics, 20: 21-55, 2002.  
Christopher Clayton and Andreas Schaab. Multinational banks and financial stability. The Quarterly Journal of Economics, 137(3):1681-1736, 2022.  
Christopher Clayton, Matteo Maggiori, and Jesse Schreger. A framework for geoeconomics. Technical report, National Bureau of Economic Research, 2023.  
John H Cochrane. The fiscal theory of the price level: An introduction and overview. Journal of Economic Perspectives, 2021.  
John H Cochrane. The fiscal roots of inflation. Review of Economic Dynamics, 45:22-40, 2022.  
John H Cochrane. The fiscal theory of the price level. Princeton University Press, 2023.  
Ric Colacito, Mariano M Croce, Federico Gavazzoni, and Robert Ready. Currency risk factors in a recursive multicountry economy. The Journal of Finance, 73(6):2719-2756, 2018a.  
Ric Colacito, Max Croce, Steven Ho, and Philip Howard. Bkk the ez way: International long-run growth news and capital flows. American Economic Review, 108(11):3416-49, 2018b.  
Riccardo Colacito and Mariano M Croce. Risks for the long run and the real exchange rate. Journal of Political economy, 119(1):153-181, 2011.  
Riccardo Colacito and Mariano M Croce. International asset pricing with recursive preferences. The Journal of Finance, 68(6):2651-2686, 2013.  
Harold L Cole and Maurice Obstfeld. Commodity trade and international risk sharing: How much do financial markets matter? Journal of monetary economics, 28(1):3-24, 1991.  
Antonio Coppola, Arvind Krishnamurthy, and Chenzi Xu. Liquidity, debt denomination, and currency dominance. Technical report, National Bureau of Economic Research, 2023.  
Giancarlo Corsetti and Paolo Pesenti. The simple geometry of transmission and stabilization in closed and open economies [with comments]. In NBER international seminar on macroeconomics, volume 2007, pages 65-129. The University of Chicago Press Chicago, IL, 2007.

M Max Croce, Howard Kung, Thien T Nguyen, and Lukas Schmid. Fiscal policies and asset prices. The Review of Financial Studies, 25(9): 2635-2672, 2012a.  
Mariano M Croce, Thien T Nguyen, and Lukas Schmid. The market price of fiscal uncertainty. Journal of Monetary Economics, 59(5): 401-416, 2012b.  
Domenico Cuoco and Hua He. Dynamic equilibrium in infinite-dimensional economies with incomplete financial markets. Unpublished manuscript, 1994.  
Magnus Dahlquist and Julien Pénasse. The missing risk premium in exchange rates. Journal of financial economics, 143(2):697-715, 2022.  
Magnus Dahlquist, Christian Heyerdahl-Larsen, Anna Pavlova, and Julien Pénasse. International capital markets and wealth transfers. Swedish House of Finance Research Paper, (22-15), 2022.  
Qiang Dai and Kenneth J Singleton. Specification analysis of a net term structure models. Journal of Finance, 55(5):1943-1978, 2000.  
Kent Daniel and Sheridan Titman. Evidence on the characteristics of cross sectional variation in stock returns. the Journal of Finance, 52 (1):1-33, 1997.  
Emile Despres, Charles P Kindleberger, and Walter S Salant. The dollar and world liquidity: a minority view. *The Economist*, 6, 1966.  
Michael B Devereux, Charles Engel, and Steve Pak Yeung Wu. *Collateral advantage: Exchange rates, capital flows and global cycles.* Technical report, National Bureau of Economic Research, 2023.  
William Diamond, Zhengyang Jiang, and Yiming Ma. The reserve supply channel of unconventional monetary policy. *Jacobs Levy Equity Management Center for Quantitative Financial Research Paper*, 2020.  
Rudiger Dornbusch. Expectations and exchange rate dynamics. Journal of political Economy, 84(6):1161-1176, 1976.  
Winston Wei Dou and Adrien Verdelhan. The volatility of international capital flows and foreign assets. Unpublished working paper, MIT, 2015.  
Wenxin Du and Jesse Schreger. Cip deviations, the dollar, and frictions in international capital markets. In Handbook of International Economics, volume 6, pages 147-197. Elsevier, 2022a.

Wenxin Du and Jesse Schreger. Sovereign risk, currency risk, and corporate balance sheets. The Review of Financial Studies, 35(10): 4587-4629, 2022b.  
Wenxin Du, Joanne Im, and Jesse Schreger. The us treasury premium. Journal of International Economics, 112:167-181, 2018a.  
Wenxin Du, Alexander Tepper, and Adrien Verdelhan. Deviations from covered interest rate parity. The Journal of Finance, 73(3):915-957, 2018b.  
Wenxin Du, Carolin E Pflueger, and Jesse Schreger. Sovereign debt portfolios, bond risks, and the credibility of monetary policy. The Journal of Finance, 75(6):3097-3138, 2020.  
Wenxin Du, Benjamin Hébert, and Wenhao Li. Intermediary balance sheets and the treasury yield curve. Journal of Financial Economics, 150(3):103722, 2023.  
Darrell Duffie. Dynamic asset pricing theory. Princeton University Press, 2010.  
Darrell Duffie. Still the world's safe haven? redesigning the us treasury market after the疫-19 crisis. 2020.  
Darrell Duffie and Rui Kan. A yield-factor model of interest rates. Mathematical finance, 6(4):379-406, 1996.  
Jonathan Eaton and Mark Gersovitz. Debt with potential repudiation: Theoretical and empirical analysis. The Review of Economic Studies, 48(2):289-309, 1981.  
Konstantin Egorov and Dmitry Mukhin. Optimal monetary policy under dollar pricing. In *Meeting Papers*, volume 1510, 2019.  
Ivar Ekeland and José Alexandre Scheinkman. Transversality conditions for some infinite horizon discrete time optimization problems. Mathematics of operations research, 11(2):216-229, 1986.  
Charles Engel. Exchange rates, interest rates, and the risk premium. American Economic Review, 106(2):436-474, 2016.  
Charles Engel and Kenneth D West. Exchange rates and fundamentals. Journal of political Economy, 113(3):485-517, 2005.  
Larry G. Epstein and Stanley E. Zin. Risk aversion, and the temporal behavior of consumption and asset returns: a theoretical framework. *Econometrica*, 57(4):937, 1989.

Ester Faia, Juliana Salomao, and Alexia Ventula Veghazy. Granular investors and international bond prices: Scarcity-induced safety. Available at SSRN 4287955, 2022.  
Eugene F Fama. Forward and spot exchange rates. Journal of monetary economics, 14(3):319-338, 1984.  
Sebastian Fanelli and Ludwig Straub. A theory of foreign exchange interventions. Technical report, National Bureau of Economic Research, 2020.  
Xiang Fang. Intermediary leverage and the currency risk premium. Available at SSRN 3290317, 2021.  
Xiang Fang and Yang Liu. Volatility, intermediaries, and exchange rates. Journal of Financial Economics, 141(1):217-233, 2021.  
Xiang Fang, Bryan Hardy, and Karen K Lewis. Who holds sovereign debt and why it matters. Technical report, National Bureau of Economic Research, 2022.  
Emmanuel Farhi and Xavier Gabaix. Rare disasters and exchange rates. The Quarterly Journal of Economics, 131(1):1-52, 2016.  
Emmanuel Farhi and Matteo Maggiori. A model of the international monetary system. The Quarterly Journal of Economics, 133(1):295-355, 2018.  
Emmanuel Farhi, Pierre-Olivier Gourinchas, and Hélène Rey. Reforming the international monetary system. CEPR, 2011.  
Matthias Fleckenstein, Francis A Longstaff, and Hanno Lustig. The tips-treasury bond puzzle. the Journal of Finance, 69(5):2151-2197, 2014.  
J Marcus Fleming. Domestic financial policies under fixed and under floating exchange rates (politiques finacierieures interieures avec un système de taux de change fixe et avec un système de taux de change fluctuant)(politica financiera interna bajo sistemas de temas de cambio fisos o de temas de cambio fluctuantes). Staff Papers-International Monetary Fund, pages 369-380, 1962.  
Sergio Florez-Orrego, Matteo Maggiori, Jesse Schreger, Ziwen Sun, and Serdil Tinda. Global capital allocation. Technical report, National Bureau of Economic Research, 2023.  
Andrew T Foerster, Pierre-Daniel G Sarte, and Mark W Watson. Sectoral versus aggregate shocks: A structural factor analysis of industrial production. Journal of Political Economy, 119(1):1-38, 2011.

Paul Fontanier. Dollar debt and the inefficient global financial cycle. 2023.  
Jeffrey A Frankel. On the mark: A theory of floating exchange rates based on real interest differentials. The American economic review, 69 (4):610-622, 1979.  
Kenneth A Froot and Tarun Ramadorai. Currency returns, intrinsic value, and institutional-investor flows. The Journal of Finance, 60(3): 1535-1566, 2005.  
Xavier Gabaix. The granular origins of aggregate fluctuations. *Econometrica*, 79(3):733-772, 2011.  
Xavier Gabaix and Ralph SJ Koijen. Granular instrumental variables. Technical report, National Bureau of Economic Research, 2020.  
Xavier Gabaix and Ralph SJ Koijen. In search of the origins of financial fluctuations: The inelastic markets hypothesis. Technical report, National Bureau of Economic Research, 2021.  
Xavier Gabaix and Matteo Maggiori. International liquidity and exchange rate dynamics. The Quarterly Journal of Economics, 130(3): 1369-1420, 2015.  
Jordi Galí. Monetary policy, inflation, and the business cycle: an introduction to the new Keynesian framework and its applications. Princeton University Press, 2015.  
Elena Gerko and Hélene Rey. Monetary policy in the capitals of capital. Journal of the European Economic Association, 15(4):721-745, 2017.  
Fabio Ghironi, Jaewoo Lee, and Alessandro Rebucci. The valuation channel of external adjustment. Journal of International Money and Finance, 57:86-114, 2015.  
Gita Gopinath and Jeremy C Stein. Banking, trade, and the making of a dominant currency. The Quarterly Journal of Economics, 136(2): 783-830, 2021.  
Pierre-Olivier Gourinchas and Helene Rey. International financial adjustment. Journal of political economy, 115(4):665-703, 2007a.  
Pierre-Olivier Gourinchas and Helene Rey. From world banker to world venture capitalist: Us external adjustment and the exorbitant privilege. In G7 current account imbalances: sustainability and adjustment, pages 11-66. University of Chicago Press, 2007b.

Pierre-Olivier Gourinchas and Helene Rey. Exorbitant privilege and exorbitant duty. 2022.  
Pierre-Olivier Gourinchas, Helene Rey, and Nicolas Govillot. Exorbitant privilege and exorbitant duty. Technical report, Institute for Monetary and Economic Studies, Bank of Japan, 2010.  
Pierre-Olivier Gourinchas, Helene Rey, and Kai Truempler. The financial crisis and the geography of wealth transfers. Journal of International Economics, 88(2):266-283, 2012.  
Pierre-Olivier Gourinchas, Hélene Rey, and Maxime Sauzet. The international monetary and financial system. Annual Review of Economics, 11:859-893, 2019.  
Pierre-Olivier Gourinchas, Walker Ray, and Dimitri Vayanos. A preferred-habitat model of term premia, exchange rates, and monetary policy spillovers. Technical report, National Bureau of Economic Research, 2022.  
Robin Greenwood, Samuel G Hanson, Jeremy C Stein, and Adi Sunderam. A quantity-driven theory of term premia and exchange rates. Technical report, National Bureau of Economic Research, 2020.  
Bryan Gutierrez, Victoria Ivashina, and Juliana Salomao. Why is dollar debt cheaper? evidence from peru. Evidence from Peru (September 24, 2021), 2021.  
Bryan Gutierrez, Victoria Ivashina, and Juliana Salomao. Why is dollar debt cheaper? evidence from peru. Journal of Financial Economics, 148(3):245-272, 2023.  
George J Hall and Thomas J Sargent. Interest rate risk and other determinants of post-wwii us government debt/gdp dynamics. American Economic Journal: Macroeconomics, 3(3):192-214, 2011.  
George J Hall and Thomas J Sargent. Three world wars: Fiscal-monetary consequences. Proceedings of the National Academy of Sciences, 119(18):e2200349119, 2022.  
Lars Peter Hansen and Ravi Jagannathan. Implications of security market data for models of dynamic economies. Journal of political economy, 99(2):225-262, 1991.  
Lars Peter Hansen and José A Scheinkman. Long-term risk: An operator approach. *Econometrica*, 77(1):177-234, 2009.  
Tarek A Hassan. Country size, currency unions, and international asset returns. The Journal of Finance, 68(6):2269-2308, 2013.

Tarek A Hassan and Rui C Mano. Forward and spot exchange rates in a multi-currency world. The Quarterly Journal of Economics, 134 (1):397-450, 2019.  
Tarek A Hassan and Tony Zhang. The economics of currency risk. Annual Review of Economics, 13:281-307, 2021.  
Hua He and Neil D Pearson. Consumption and portfolio policies with incomplete markets and short-sale constraints: The infinite dimensional case. Journal of Economic Theory, 54(2):259-304, 1991.  
Zhiguo He and Arvind Krishnamurthy. Intermediary asset pricing. American Economic Review, 103(2):732-770, 2013.  
Zhiguo He, Bryan Kelly, and Asaf Manela. Intermediary asset pricing: New evidence from many asset classes. Journal of Financial Economics, 126(1):1-35, 2017.  
Zhiguo He, Arvind Krishnamurthy, and Konstantin Milbradt. A model of safe asset determination. American Economic Review, 109 (4):1230-62, 2019.  
Zhiguo He, Stefan Nagel, and Zhaogang Song. Treasury inconvenience yields during the COVID-19 crisis. Journal of Financial Economics, 143(1):57-79, 2022.  
Christian Heyerdahl-Larsen. Asset prices and real exchange rates with deep habits. The Review of Financial Studies, 27(11):3280-3317, 2014.  
Oleg Itskhoki and Dmitry Mukhin. Exchange rate disconnect in general equilibrium. Journal of Political Economy, 129(8):2183-2232, 2021.  
Oleg Itskhoki and Dmitry Mukhin. Optimal exchange rate policy. Techn. Rep, 1270, 2022.  
Oleg Itskhoki and Dmitry Mukhin. Optimal exchange rate policy. Technical report, National Bureau of Economic Research, 2023.  
Olivier Jeanne and Andrew K Rose. Noise trading and exchange rate regimes. The Quarterly Journal of Economics, 117(2):537-569, 2002.  
Zhengyang Jiang. Us fiscal cycle and the dollar. Journal of Monetary Economics, 124:91-106, 2021.  
Zhengyang Jiang. Fiscal cyclicality and currency risk premia. The Review of Financial Studies, 35(3):1527-1552, 2022.  
Zhengyang Jiang. Exorbitant privilege: A safe-asset view. Available at SSRN 4600477, 2023a.

Zhengyang Jiang. Market incompleteness and exchange rate spillover. Technical report, National Bureau of Economic Research, 2023b.  
Zhengyang Jiang and Robert Richmond. Convenience yields and asset pricing models. Available at SSRN 4007377, 2022.  
Zhengyang Jiang and Robert Richmond. Reserve asset competition and the global fiscal cycle. Available at SSRN, 2023a.  
Zhengyang Jiang and Robert J Richmond. Origins of international factor structures. Journal of Financial Economics, 147(1):1-26, 2023b.  
Zhengyang Jiang, Arvind Krishnamurthy, and Hanno Lustig. Foreign safe asset demand for us treasuries and the dollar. In AEA Papers and Proceedings, volume 108, pages 537-41, 2018.  
Zhengyang Jiang, Hanno Lustig, Stijn Van Nieuwerburgh, and Mindy Z Xiaolan. The us public debt valuation puzzle. Technical report, National Bureau of Economic Research, 2019.  
Zhengyang Jiang, Arvind Krishnamurthy, and Hanno Lustig. Dollar safety and the global financial cycle. Technical report, National Bureau of Economic Research, 2020a.  
Zhengyang Jiang, Hanno Lustig, Stijn Van Nieuwerburgh, and Mindy Z Xiaolan. Manufacturing risk-free government debt. Technical report, National Bureau of Economic Research, 2020b.  
Zhengyang Jiang, Hanno N Lustig, Stijn Van Nieuwerburgh, and Mindy Z Xiaolan. Bond convenience yields in the eurozone currency union. *Columbia Business School Research Paper Forthcoming*, 2020c.  
Zhengyang Jiang, Arvind Krishnamurthy, and Hanno Lustig. Foreign safe asset demand and the dollar exchange rate. The Journal of Finance, 76(3):1049-1089, 2021a.  
Zhengyang Jiang, Arvind Krishnamurthy, Hanno N Lustig, and Jialu Sun. Beyond incomplete spanning: Convenience yields and exchange rate disconnect. 2021b.  
Zhengyang Jiang, Hanno Lustig, Stijn Van Nieuwerburgh, and Mindy Z Xiaolan. What drives variation in the us debt/output ratio? the dogs that didn't bark. Technical report, National Bureau of Economic Research, 2021c.  
Zhengyang Jiang, Arvind Krishnamurthy, and Hanno Lustig. The rest of the world's dollar-weighted return on us treasuries. Technical report, National Bureau of Economic Research, 2022a.

Zhengyang Jiang, Hongqi Liu, Cameron Peng, and Hongjun Yan. Investor memory and biased beliefs: Evidence from the field. Available at SSRN, 2022b.  
Zhengyang Jiang, Robert J Richmond, and Tony Zhang. A portfolio approach to global imbalances. Technical report, National Bureau of Economic Research, 2022c.  
Zhengyang Jiang, Robert J Richmond, and Tony Zhang. Understanding the strength of the dollar. Technical report, National Bureau of Economic Research, 2022d.  
Zhengyang Jiang, Arvind Krishnamurthy, and Hanno Lustig. Implications of asset market data for equilibrium models of exchange rates. Technical report, National Bureau of Economic Research, 2023a.  
Zhengyang Jiang, Hanno Lustig, Stijn Van Nieuwerburgh, and Mindy Z Xiaolan. Fiscal capacity: An asset pricing perspective. Annual Review of Financial Economics, 15, 2023b.  
Zhengyang Jiang, Cameron Peng, and Hongjun Yan. Personality differences and investment decision-making. Technical report, National Bureau of Economic Research, 2023c.  
Scott Joslin, Wenhao Li, and Yang Song. The term structure of liquidity premium. *USC Marshall School of Business Research Paper*, 2021.  
Rohan Kekre and Moritz Lenel. The flight to safety and international risk sharing. Technical report, National Bureau of Economic Research, 2021.  
JM Keynes. An open letter to the french minister of finance. Essays in Persuasion, The Collected Writing of John Maynard Keynes, 9:76-82, 1926.  
Sun Yong Kim. The dollar, fiscal policy and the us safety puzzle. Available at SSRN 4204972, 2022.  
Ralph SJ Koijen and Motohiro Yogo. A demand system approach to asset pricing. Journal of Political Economy, 127(4):1475-1515, 2019.  
Ralph SJ Koijen and Motohiro Yogo. Exchange rates and asset prices in a global demand system. Technical report, National Bureau of Economic Research, 2020.  
Ralph SJ Koijen and Motohiro Yogo. Asset demand systems in macro-finance. NBER Reporter, (4):21-24, 2021.

Robert Kollmann. Consumption, real exchange rates and the structure of international asset markets. Journal of International money and finance, 14(2):191-211, 1995.  
Arvind Krishnamurthy and Annette Vissing-Jorgensen. The aggregate demand for treasury debt. Journal of Political Economy, 120(2): 233-267, 2012.  
Philip R Lane and Gian Maria Milesi-Ferretti. The external wealth of nations mark ii: Revised and extended estimates of foreign assets and liabilities, 1970-2004. Journal of international Economics, 73(2): 223-250, 2007.  
Eric M Leeper. Equilibria under 'active' and 'passive' monetary and fiscal policies. Journal of monetary Economics, 27(1):129-147, 1991.  
Eric M Leeper. Monetary science, fiscal alchemy. In Proceedings-Economic Policy Symposium-Jackson Hole, pages 361-434. Federal Reserve Bank of Kansas City, 2010.  
Karen K Lewis. Trying to explain home bias in equities and consumption. Journal of economic literature, 37(2):571-608, 1999.  
Gordon Liao and Tony Zhang. The hedging channel of exchange rate determination. International finance discussion paper, (1283), 2020.  
Gordon Y Liao. Credit migration and covered interest rate parity. Journal of Financial Economics, 138(2):504-525, 2020.  
Yang Liu, Lukas Schmid, and Amir Yaron. The risks of safe assets. Available at SSRN 3699618, 2020.  
John B Long Jr and Charles I Plosser. Real business cycles. Journal of political Economy, 91(1):39-69, 1983.  
Francis A Longstaff. The flight-to-liquidity premium in us treasury bond prices. The Journal of Business, 77(3):511-526, 2004.  
Francis A Longstaff, Jun Pan, Lasse H Pedersen, and Kenneth J Singleton. How sovereign is sovereign credit risk? American Economic Journal: Macroeconomics, 3(2):75-103, 2011.  
Hanno Lustig and Robert J Richmond. Gravity in the exchange rate factor structure. The Review of Financial Studies, 33(8):3492-3540, 2020.  
Hanno Lustig and Adrien Verdelhan. The cross section of foreign currency risk premia and consumption growth risk. *American Economic Review*, 97(1):89-117, 2007.

Hanno Lustig and Adrien Verdelhan. Does incomplete spanning in international financial markets help to explain exchange rates? American Economic Review, 109(6):2208-2244, 2019.  
Hanno Lustig, Nikolai Roussanov, and Adrien Verdelhan. Common risk factors in currency markets. The Review of Financial Studies, 24 (11):3731-3777, 2011.  
Hanno Lustig, Stijn Van Nieuwerburgh, and Adrien Verdelhan. The wealth-consumption ratio. The Review of Asset Pricing Studies, 3(1): 38-94, 2013.  
Hanno Lustig, Nikolai Roussanov, and Adrien Verdelhan. Countercyclical currency risk premia. Journal of Financial Economics, 111(3): 527-553, 2014.  
Hanno Lustig, Andreas Stathopoulos, and Adrien Verdelhan. The term structure of currency carry trade risk premia. *American Economic Review*, 109(12):4142-4177, 2019.  
Matteo Maggiori. Financial intermediation, international risk sharing, and reserve currencies. *American Economic Review*, 107(10):3038-3071, 2017.  
Matteo Maggiori, Brent Neiman, and Jesse Schreger. International currencies and capital allocation. Journal of Political Economy, 128(6): 2019-2066, 2020.  
Ian Martin. The forward premium puzzle in a two-country world. Technical report, National Bureau of Economic Research, 2011.  
Richard A Meese and Kenneth Rogoff. Empirical exchange rate models of the seventies: Do they fit out of sample? Journal of international economics, 14(1-2):3-24, 1983.  
Robert C Merton. Lifetime portfolio selection under uncertainty: The continuous-time case. The review of Economics and Statistics, pages 247-257, 1969.  
Silvia Miranda-Agrippino and Hélene Rey. World asset markets and the global financial cycle. Technical report, National Bureau of Economic Research, 2015.  
Silvia Miranda-Agrippino and Hélène Rey. The global financial cycle. In Handbook of international economics, volume 6, pages 1-43. Elsevier, 2022.  
Brian R Mitchell. International historical statistics 1750-2005: Americas. Springer, 2007.

Robert A Mundell. Capital mobility and stabilization policy under fixed and flexible exchange rates. Canadian Journal of Economics and Political Science/Revue canadienne de economiques et science politique, 29 (4):475-485, 1963.  
Stefan Nagel. The liquidity premium of near-money assets. *The Quarterly Journal of Economics*, 131(4):1927-1971, 2016.  
Takashi Negishi. Welfare economics and existence of an equilibrium for a competitive economy. Metroeconomica, 12(2-3):92-97, 1960.  
Aviv Nevo. Measuring market power in the ready-to-eat cereal industry. *Econometrica*, 69(2):307-342, 2001.  
Maurice Obstfeld. International liquidity: the fiscal dimension. Technical report, National Bureau of Economic Research, 2011.  
Jun Pan and Kenneth J Singleton. Default and recovery implicit in the term structure of sovereign cds spreads. The Journal of Finance, 63 (5):2345-2384, 2008.  
Anna Pavlova and Roberto Rigobon. Asset prices and exchange rates. The Review of Financial Studies, 20(4):1139-1180, 2007.  
Anna Pavlova and Roberto Rigobon. Equilibrium portfolios and external adjustment under incomplete markets. In AFA 2009 San Francisco Meetings Paper, 2012.  
Bruno Pellegrino, Enrico Spolaore, and Romain Wacziarg. Barriers to global capital allocation. Technical report, National Bureau of Economic Research, 2021.  
Robert Ready, Nikolai Roussanov, and Colin Ward. After the tide: Commodity currencies and global trade. Journal of Monetary Economics, 85:69-86, 2017a.  
Robert Ready, Nikolai Roussanov, and Colin Ward. Commodity trade and the carry trade: A tale of two countries. The Journal of Finance, 72(6):2629-2684, 2017b.  
Hélène Rey. Dilemma not trilemma: the global financial cycle and monetary policy independence. Technical report, National Bureau of Economic Research, 2015.  
Robert J Richmond. Trade network centrality and currency risk premia. The Journal of Finance, 74(3):1315-1361, 2019.  
Dagfinn Rime, Andreas Schrimpf, and Olav Syrstad. Covered interest parity arbitrage. The Review of Financial Studies, 35(11):5185-5227, 2022.

Juliana Salomao and Liliana Varela. Exchange rate exposure and firm dynamics. The Review of Economic Studies, 89(1):481-514, 2022.  
Mirela Sandulescu, Fabio Trojani, and Andrea Vedolin. Model-free international stochastic discount factors. The Journal of Finance, 76 (2):935-976, 2021.  
Maxime Sauzet. Asset prices, global portfolios, and the international financial system. Global Portfolios, and the International Financial System (February 2, 2023), 2022.  
Martin Schneider and Aaron Tornell. Balance sheet effects, bailout guarantees and financial crises. The Review of Economic Studies, 71 (3):883-913, 2004.  
Andreas Stathopoulos. Asset prices and risk sharing in open economies. The Review of Financial Studies, 30(2):363-415, 2017.  
Kenneth E Train. Discrete choice methods with simulation. Cambridge university press, 2009.  
Robert Triffin. Gold and the dollar crisis: the future of convertibility, volume 39. New Haven: Yale University Press, 1960.  
Jules H Van Binsbergen. Duration-based stock valuation: Reassessing stock market performance and volatility. Technical report, National Bureau of Economic Research, 2020.  
Jules H Van Binsbergen, William F Diamond, and Marco Grotteria. Risk-free interest rates. Journal of Financial Economics, 143(1):1-29, 2022.  
Adrien Verdelhan. A habit-based explanation of the exchange rate risk premium. The Journal of Finance, 65(1):123-146, 2010.  
Adrien Verdelhan. The share of systematic variation in bilateral exchange rates. The Journal of Finance, 73(1):375-418, 2018.  
Ursula Wiriadinata. *External debt, currency risk, and international monetary policy transmission*. The University of Chicago, 2018.  
Kairong Xiao. Monetary transmission through shadow banks. The Review of Financial Studies, 33(6):2379-2420, 2020.  
Haonan Zhou. The fickle and the stable: Global financial cycle transmission via heterogeneous investors. Available at SSRN 4616182, 2023.