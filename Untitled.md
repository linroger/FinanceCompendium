

```html
<iframe
  title="My Untitled Diagram 1"
  width="1280"
  height="720"
  src="https://d2studio.ai/diagrams/1063512155">
</iframe>
```



```d2
direction: right

layout: elk

# ============================================================

# Open-Economy Macro–Finance Map (Home vs Foreign)

# Arrow colors: Green = positive (+), Red = negative (–), Black = accounting/definition

# Conventions: S = domestic currency per 1 foreign; ↑S = nominal depreciation

# ============================================================

  

style: {

fill: "#ffffff"

stroke: "#111827"

}

  

# --------------------

# Legend

# --------------------

Legend: {

label: "Legend"

style: {fill: "#f9fafb"; stroke: "#e5e7eb"; shadow: true}

  

Pos: "Positive (+) effect"

Neg: "Negative (–) effect"

Acc: "Accounting / identity / definition"

  

Pos -> Neg: {label: "Arrow color encodes sign"; style: {stroke: "#111827"; stroke-width: 1}}

  

PosEdge: {

label: "Green edge style"

style: {fill: "#ffffff"; stroke: "#e5e7eb"}

t: "stroke: #2ca02c"

}

  

NegEdge: {

label: "Red edge style"

style: {fill: "#ffffff"; stroke: "#e5e7eb"}

t: "stroke: #d62728"

}

  

AccEdge: {

label: "Black dashed edge style"

style: {fill: "#ffffff"; stroke: "#e5e7eb"}

t: "stroke: #111827, stroke-dash: 4"

}

}

  

# --------------------

# Home blocks

# --------------------

Real: {

label: "Real economy (Home)"

style: {fill: "#f9fafb"; stroke: "#e5e7eb"; shadow: true}

  

Y: "Y (real GDP)"

C: "C"

I: "I"

G: "G"

Aabs: "Absorption A = C+I+G"

Ypot: "Ȳ (potential)"

xgap: "x̃ = Y − Ȳ"

u: "u"

}

  

Prices: {

label: "Prices & inflation (Home)"

style: {fill: "#f9fafb"; stroke: "#e5e7eb"; shadow: true}

  

P: "P (price level)"

pi: "π (inflation)"

pie: "πᵉ (expected inflation)"

Pm: "P_M (import prices)"

}

  

Money: {

label: "Monetary & financial conditions (Home)"

style: {fill: "#f9fafb"; stroke: "#e5e7eb"; shadow: true}

  

M: "M (money supply)"

mreal: "M/P (real balances)"

i: "i (policy rate)"

re: "rᵉ = i − πᵉ"

Credit: "Credit conditions"

Spread: "Credit / sovereign spread"

}

  

Trade: {

label: "Trade block (Home)"

style: {fill: "#f9fafb"; stroke: "#e5e7eb"; shadow: true}

  

X: "X (exports)"

Mimp: "M (imports)"

NX: "NX = X − M"

TB: "TB"

TOT: "TOT = P_X / P_M"

tau: "τ (trade costs)"

tariff: "t (tariff wedge)"

}

  

External: {

label: "External accounts (Home)"

style: {fill: "#f9fafb"; stroke: "#e5e7eb"; shadow: true}

  

CA: "CA"

NFI: "NFI"

NUT: "NUT"

FA: "FA (net capital inflow)"

KA: "KA"

ORT: "ORT (reserves transactions)"

R: "R (FX reserves stock)"

NIIP: "NIIP (net IIP stock)"

Val: "Valuation effects"

FDI: "FDI (component)"

Port: "Portfolio flows"

Bank: "Bank / other flows"

}

  

FX: {

label: "FX & parity conditions"

style: {fill: "#f9fafb"; stroke: "#e5e7eb"; shadow: true}

  

S: "S (spot nominal FX)\n↑S = depreciation"

q: "q (real FX / REER)\n≈ S·P*/P"

F: "F (forward)"

EdS: "E[Δs]"

rpf: "π^{fx} (currency risk premium)"

CIPbasis: "CIP basis"

}

  

Frictions: {

label: "Financial frictions / crisis channels"

style: {fill: "#f9fafb"; stroke: "#e5e7eb"; shadow: true}

  

FXdebt: "FX debt (D^{fx})"

NW: "Net worth (NW)"

Coll: "Collateral / leverage constraint"

SuddenStop: "Sudden stop / capital flow reversal"

GRA: "Global risk appetite\n& intermediary constraints"

}

  

Policy: {

label: "Policy instruments"

style: {fill: "#f9fafb"; stroke: "#e5e7eb"; shadow: true}

  

MP: "Monetary policy rule"

FXI: "FX intervention"

Def: "Fiscal deficit"

Debt: "Public debt (B)"

Taxes: "Taxes (T)"

}

  

# --------------------

# Foreign block (*)

# --------------------

Foreign: {

label: "Foreign (*)"

style: {fill: "#f9fafb"; stroke: "#e5e7eb"; shadow: true}

  

Ystar: "Y*"

Pstar: "P*"

pistar: "π*"

pieStar: "π*ᵉ"

istar: "i*"

}

  

# --------------------

# Key equations (LaTeX)

# --------------------

Eq: {

label: "Core equations (accounting + parity)"

style: {fill: "#ffffff"; stroke: "#e5e7eb"; shadow: true}

  

Yid: {

label: "National income identity"

equation: |latex

Y = C + I + G + NX,\quad NX = X - M

|

}

  

Abs: {

label: "Absorption approach"

equation: |latex

NX = Y - (C+I+G)

|

}

  

CAid: {

label: "Current account"

equation: |latex

CA = NX + NFI + NUT

|

}

  

BoP: {

label: "BoP identity (one convention)"

equation: |latex

CA + KA + FA + ORT = 0

|

}

  

NIIP: {

label: "Stock–flow constraint"

equation: |latex

NIIP_{t+1} = (1+r_t)\,NIIP_t + CA_t + Val_t

|

}

  

MoneyMkt: {

label: "Money market (stylized)"

equation: |latex

\frac{M}{P} = L(Y,i),\quad L_Y>0,\;L_i<0

|

}

  

Fisher: {

label: "Fisher (expected real rate)"

equation: |latex

r^e = i - \pi^e

|

}

  

UIP: {

label: "UIP with risk premium"

equation: |latex

i - i^* = \mathbb{E}[\Delta s] + \pi^{fx}

|

}

  

CIP: {

label: "CIP (covered parity)"

equation: |latex

(1+i) = \frac{F}{S}(1+i^*)

|

}

  

PPP: {

label: "PPP (expected, long-run)"

equation: |latex

\mathbb{E}[\Delta s] \approx \pi - \pi^*

|

}

  

Phillips: {

label: "Phillips (reduced-form)"

equation: |latex

\pi_t = \beta \mathbb{E}[\pi_{t+1}] + \kappa x_t + \text{(import-price terms)}

|

}

  

Taylor: {

label: "Policy rule (illustrative)"

equation: |latex

i_t = \bar{i} + \phi_\pi(\pi_t-\bar{\pi}) + \phi_x x_t

|

}

}

  

# ============================================================

# Accounting / definitions (black dashed)

# ============================================================

Real.Y -> Eq.Yid: {style: {stroke: "#111827"; stroke-dash: 4}}

Trade.NX -> Eq.Yid: {style: {stroke: "#111827"; stroke-dash: 4}}

  

Real.Aabs -> Eq.Abs: {style: {stroke: "#111827"; stroke-dash: 4}}

Trade.NX -> Eq.Abs: {style: {stroke: "#111827"; stroke-dash: 4}}

  

External.CA -> Eq.CAid: {style: {stroke: "#111827"; stroke-dash: 4}}

Trade.NX -> Eq.CAid: {style: {stroke: "#111827"; stroke-dash: 4}}

  

External.FA -> Eq.BoP: {style: {stroke: "#111827"; stroke-dash: 4}}

External.ORT -> Eq.BoP: {style: {stroke: "#111827"; stroke-dash: 4}}

External.CA -> Eq.BoP: {style: {stroke: "#111827"; stroke-dash: 4}}

  

External.NIIP -> Eq.NIIP: {style: {stroke: "#111827"; stroke-dash: 4}}

External.CA -> Eq.NIIP: {style: {stroke: "#111827"; stroke-dash: 4}}

External.Val -> Eq.NIIP: {style: {stroke: "#111827"; stroke-dash: 4}}

  

Money.mreal -> Eq.MoneyMkt: {style: {stroke: "#111827"; stroke-dash: 4}}

Money.re -> Eq.Fisher: {style: {stroke: "#111827"; stroke-dash: 4}}

  

FX.EdS -> Eq.UIP: {style: {stroke: "#111827"; stroke-dash: 4}}

FX.F -> Eq.CIP: {style: {stroke: "#111827"; stroke-dash: 4}}

FX.EdS -> Eq.PPP: {style: {stroke: "#111827"; stroke-dash: 4}}

  

Prices.pi -> Eq.Phillips: {style: {stroke: "#111827"; stroke-dash: 4}}

Money.i -> Eq.Taylor: {style: {stroke: "#111827"; stroke-dash: 4}}

  

# ============================================================

# Core causal links (GREEN = +, RED = –)

# ============================================================

  

# --- Real economy internal ---

Real.C -> Real.Aabs: {label: "+"; style: {stroke: "#2ca02c"; stroke-width: 2}}

Real.I -> Real.Aabs: {label: "+"; style: {stroke: "#2ca02c"; stroke-width: 2}}

Real.G -> Real.Aabs: {label: "+"; style: {stroke: "#2ca02c"; stroke-width: 2}}

  

Real.Y -> Real.C: {label: "income channel"; style: {stroke: "#2ca02c"; stroke-width: 2}}

Money.i -> Real.I: {label: "user cost of capital"; style: {stroke: "#d62728"; stroke-width: 2}}

  

Trade.NX -> Real.Y: {label: "Y identity"; style: {stroke: "#2ca02c"; stroke-width: 2}}

Real.Aabs -> Trade.NX: {label: "NX = Y − A"; style: {stroke: "#d62728"; stroke-width: 2}}

  

Real.Y -> Real.xgap: {label: "x̃ = Y−Ȳ"; style: {stroke: "#2ca02c"; stroke-width: 2}}

Real.Ypot -> Real.xgap: {label: "higher potential reduces gap"; style: {stroke: "#d62728"; stroke-width: 2}}

Real.xgap -> Real.u: {label: "Okun"; style: {stroke: "#d62728"; stroke-width: 2}}

  

# --- Prices / inflation ---

Real.xgap -> Prices.pi: {label: "Phillips"; style: {stroke: "#2ca02c"; stroke-width: 2}}

Prices.Pm -> Prices.pi: {label: "import-price pass-through"; style: {stroke: "#2ca02c"; stroke-width: 2}}

  

# --- Money / rates / liquidity ---

Money.M -> Money.mreal: {label: "M/P"; style: {stroke: "#2ca02c"; stroke-width: 2}}

Prices.P -> Money.mreal: {label: "M/P"; style: {stroke: "#d62728"; stroke-width: 2}}

  

Prices.pie -> Money.re: {label: "rᵉ=i−πᵉ"; style: {stroke: "#d62728"; stroke-width: 2}}

Money.i -> Money.re: {label: "rᵉ=i−πᵉ"; style: {stroke: "#2ca02c"; stroke-width: 2}}

  

Money.Spread -> Money.Credit: {label: "tightening"; style: {stroke: "#d62728"; stroke-width: 2}}

Money.Credit -> Real.I: {label: "credit channel"; style: {stroke: "#2ca02c"; stroke-width: 2}}

  

# --- Trade block: quantities & wedges ---

Foreign.Ystar -> Trade.X: {label: "foreign demand"; style: {stroke: "#2ca02c"; stroke-width: 2}}

Real.Y -> Trade.Mimp: {label: "income → imports"; style: {stroke: "#2ca02c"; stroke-width: 2}}

  

Trade.X -> Trade.NX: {label: "NX=X−M"; style: {stroke: "#2ca02c"; stroke-width: 2}}

Trade.Mimp -> Trade.NX: {label: "NX=X−M"; style: {stroke: "#d62728"; stroke-width: 2}}

Trade.NX -> Trade.TB: {label: "TB tracks NX"; style: {stroke: "#2ca02c"; stroke-width: 2}}

  

Trade.tariff -> Trade.Mimp: {label: "raises import wedge"; style: {stroke: "#d62728"; stroke-width: 2}}

Trade.tau -> Trade.X: {label: "trade cost"; style: {stroke: "#d62728"; stroke-width: 2}}

Trade.tau -> Trade.Mimp: {label: "trade cost"; style: {stroke: "#d62728"; stroke-width: 2}}

  

Trade.TOT -> Real.Y: {label: "wealth / income effect"; style: {stroke: "#2ca02c"; stroke-width: 2}}

  

# --- External accounts ---

Trade.NX -> External.CA: {label: "CA = NX + …"; style: {stroke: "#2ca02c"; stroke-width: 2}}

External.NFI -> External.CA: {label: "+"; style: {stroke: "#2ca02c"; stroke-width: 2}}

External.NUT -> External.CA: {label: "+"; style: {stroke: "#2ca02c"; stroke-width: 2}}

  

External.CA -> External.NIIP: {label: "stock-flow"; style: {stroke: "#2ca02c"; stroke-width: 2}}

External.Val -> External.NIIP: {label: "valuation channel"; style: {stroke: "#2ca02c"; stroke-width: 2}}

External.NIIP -> External.NFI: {label: "income on net assets"; style: {stroke: "#2ca02c"; stroke-width: 2}}

  

External.FDI -> External.FA: {label: "component"; style: {stroke: "#2ca02c"; stroke-width: 2}}

External.Port -> External.FA: {label: "component"; style: {stroke: "#2ca02c"; stroke-width: 2}}

External.Bank -> External.FA: {label: "component"; style: {stroke: "#2ca02c"; stroke-width: 2}}

  

# --- FX / parity / competitiveness ---

Money.i -> FX.EdS: {label: "UIP"; style: {stroke: "#2ca02c"; stroke-width: 2}}

Foreign.istar -> FX.EdS: {label: "UIP"; style: {stroke: "#d62728"; stroke-width: 2}}

FX.rpf -> FX.EdS: {label: "UIP risk premium"; style: {stroke: "#2ca02c"; stroke-width: 2}}

  

Prices.pi -> FX.EdS: {label: "PPP (expected)"; style: {stroke: "#2ca02c"; stroke-width: 2}}

Foreign.pistar -> FX.EdS: {label: "PPP (expected)"; style: {stroke: "#d62728"; stroke-width: 2}}

  

# Asset-market pricing sign: ↑i tends to appreciate (↓S) holding expectations fixed

Money.i -> FX.S: {label: "asset pricing / UIP"; style: {stroke: "#d62728"; stroke-width: 2}}

Foreign.istar -> FX.S: {label: "relative rate"; style: {stroke: "#2ca02c"; stroke-width: 2}}

FX.rpf -> FX.S: {label: "risk premium"; style: {stroke: "#2ca02c"; stroke-width: 2}}

  

FX.S -> FX.q: {label: "q ≈ S·P*/P"; style: {stroke: "#2ca02c"; stroke-width: 2}}

Foreign.Pstar -> FX.q: {label: "q ↑ with P*"; style: {stroke: "#2ca02c"; stroke-width: 2}}

Prices.P -> FX.q: {label: "q ↓ with P"; style: {stroke: "#d62728"; stroke-width: 2}}

  

FX.q -> Trade.X: {label: "competitiveness"; style: {stroke: "#2ca02c"; stroke-width: 2}}

FX.q -> Trade.Mimp: {label: "expenditure switching"; style: {stroke: "#d62728"; stroke-width: 2}}

FX.q -> Prices.Pm: {label: "import prices"; style: {stroke: "#2ca02c"; stroke-width: 2}}

  

# Flow-based FX clearing intuition (baseline): ↑NX or ↑FA(inflow) tends to appreciate (↓S)

Trade.NX -> FX.S: {label: "FX clearing (trade)"; style: {stroke: "#d62728"; stroke-width: 2}}

External.FA -> FX.S: {label: "FX clearing (capital inflow)"; style: {stroke: "#d62728"; stroke-width: 2}}

  

# CIP / forwards (forward premium rises with i−i*)

Money.i -> FX.F: {label: "CIP"; style: {stroke: "#2ca02c"; stroke-width: 2}}

Foreign.istar -> FX.F: {label: "CIP"; style: {stroke: "#d62728"; stroke-width: 2}}

FX.CIPbasis -> FX.F: {label: "basis"; style: {stroke: "#2ca02c"; stroke-width: 2}}

  

# --- Policy links ---

Policy.MP -> Money.i: {label: "sets i (rule)"; style: {stroke: "#2ca02c"; stroke-width: 2}}

Prices.pi -> Policy.MP: {label: "reaction to inflation"; style: {stroke: "#2ca02c"; stroke-width: 2}}

Real.xgap -> Policy.MP: {label: "reaction to gap"; style: {stroke: "#2ca02c"; stroke-width: 2}}

  

Policy.FXI -> External.ORT: {label: "official flow"; style: {stroke: "#2ca02c"; stroke-width: 2}}

External.ORT -> External.R: {label: "ΔR"; style: {stroke: "#2ca02c"; stroke-width: 2}}

External.R -> FX.S: {label: "intervention channel"; style: {stroke: "#2ca02c"; stroke-width: 2}}

  

Policy.Def -> Policy.Debt: {label: "+"; style: {stroke: "#2ca02c"; stroke-width: 2}}

Policy.Debt -> Money.Spread: {label: "risk premium / rollover"; style: {stroke: "#2ca02c"; stroke-width: 2}}

  

# --- Frictions / crises (balance-sheet + sudden stop) ---

Frictions.GRA -> Money.Spread: {label: "risk-off widens spreads"; style: {stroke: "#2ca02c"; stroke-width: 2}}

Frictions.GRA -> FX.rpf: {label: "currency risk premium"; style: {stroke: "#2ca02c"; stroke-width: 2}}

Frictions.GRA -> External.FA: {label: "inflows fall / outflows rise"; style: {stroke: "#d62728"; stroke-width: 2}}

  

FX.S -> Frictions.FXdebt: {label: "valuation in domestic currency"; style: {stroke: "#2ca02c"; stroke-width: 2}}

Frictions.FXdebt -> Frictions.NW: {label: "debt burden ↓NW"; style: {stroke: "#d62728"; stroke-width: 2}}

Frictions.NW -> Frictions.Coll: {label: "collateral capacity"; style: {stroke: "#2ca02c"; stroke-width: 2}}

Frictions.Coll -> External.FA: {label: "borrowing constraint"; style: {stroke: "#2ca02c"; stroke-width: 2}}

External.FA -> Frictions.SuddenStop: {label: "flow reversal risk"; style: {stroke: "#d62728"; stroke-width: 2}}

Frictions.SuddenStop -> Real.C: {label: "compression of spending"; style: {stroke: "#d62728"; stroke-width: 2}}

Frictions.SuddenStop -> Real.I: {label: "investment crash"; style: {stroke: "#d62728"; stroke-width: 2}}

Frictions.SuddenStop -> FX.S: {label: "depreciation pressure"; style: {stroke: "#2ca02c"; stroke-width: 2}}

  

# --------------------

# Keep Foreign connected where relevant

# --------------------

Foreign.Pstar -> FX.q: {label: "real FX"; style: {stroke: "#2ca02c"; stroke-width: 2}}

Foreign.pistar -> Prices.Pm: {label: "imported inflation channel"; style: {stroke: "#2ca02c"; stroke-width: 2}}

Foreign.istar -> Money.i: {label: "global rate spillover"; style: {stroke: "#2ca02c"; stroke-width: 2}}
```