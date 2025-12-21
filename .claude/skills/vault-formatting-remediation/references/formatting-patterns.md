# Detailed Formatting Patterns Reference

Comprehensive patterns, OCR fixes, and edge case handling for vault formatting remediation.

## OCR Artifact Patterns

### Spaced Decimals and Numbers

| Artifact | Fix |
|----------|-----|
| `0 . 0 5` | `0.05` |
| `1 0 0` | `100` |
| `1 , 0 0 0` | `1,000` |
| `. 0 0 0 1` | `.0001` |
| `$ 5 0` | `$50` |

### Spaced Operators in LaTeX

| Artifact | Fix |
|----------|-----|
| `x + y = z` (excessive) | `x + y = z` (normalized) |
| `\beta_ {I}` | `\beta_{I}` |
| `\alpha ^ {2}` | `\alpha^{2}` |
| `\frac { a } { b }` | `\frac{a}{b}` |
| `\text {w h e r e}` | `\text{where}` |

### Spaced LaTeX Commands

| Artifact | Fix |
|----------|-----|
| `\operatorname {V a r}` | `\operatorname{Var}` |
| `\operatorname {C o v}` | `\operatorname{Cov}` |
| `\mathbb {E}` | `\mathbb{E}` |
| `\mathbb {P}` | `\mathbb{P}` |
| `\mathbb {R}` | `\mathbb{R}` |

### Common OCR Word Breaks

| Artifact | Fix |
|----------|-----|
| `di erent` | `different` |
| `e ect` | `effect` |
| `hy pothesis` | `hypothesis` |
| `sig ni cant` | `significant` |
| `ob ser vation` | `observation` |
| `dis tri bution` | `distribution` |
| `ex pec tation` | `expectation` |
| `pro ba bility` | `probability` |
| `in de pendent` | `independent` |
| `as sump tion` | `assumption` |

## LaTeX Specific Fixes

### Wrong Log Notation

| Artifact | Fix |
|----------|-----|
| `Log` | `\log` |
| `ln` (when \log intended) | `\log` |
| `log` (plain text in math) | `\log` |

### Multiplication Symbols

| Artifact | Fix |
|----------|-----|
| `*` in math mode | `\cdot` or implicit |
| `×` | `\times` or `\cdot` |

### Currency and Percent

| Artifact | Fix |
|----------|-----|
| `50%` in math | `50\%` |
| `$50` in math | `\$50` |
| `\mathbb{S}` (currency artifact) | `\$` |
| `\mathbb {S}` | `\$` |

### Stray Superscripts

| Pattern | Fix |
|---------|-----|
| `X $^2$` | `$X^2$` |
| `variable $^{n}$` | `$\text{variable}^{n}$` or context-dependent |

## Block Math Formatting

### Correct Structure

```latex
Previous text ends here.

$$
E = mc^2
$$

Next text starts here.
```

### Common Issues to Fix

**Single-line block math:**
```latex
# Wrong
$$ E[X] = \mu $$

# Correct
$$
E[X] = \mu
$$
```

**Missing blank lines:**
```latex
# Wrong
The equation is:
$$
E[X] = \mu
$$
where X is...

# Correct
The equation is:

$$
E[X] = \mu
$$

where X is...
```

## Heading Patterns

### Decimal Section Conversion

| Pattern | Markdown Level |
|---------|----------------|
| `3 ...` (top level) | `## 3. ...` |
| `3.1 ...` | `### 3.1 ...` |
| `3.1.1 ...` | `#### 3.1.1 ...` |
| `3.1.1.1 ...` | `##### 3.1.1.1 ...` |

### Problem/Example Demotion

```markdown
# Wrong
### Problem 2.1 — Bond Pricing

# Correct
**Problem 2.1 — Bond Pricing**
```

## Mid-Sentence Join Rules

### STOP Conditions (Do NOT Join)

Line B starts with:
- `|` (table row)
- `-` or `*` (list item)
- `>` (blockquote)
- `$$` (math block)
- ` ``` ` (code block)
- Number followed by `.` (numbered list)
- Heading prefix (`#`, `##`, etc.)

### JOIN Conditions

All must be true:
1. Line A does NOT end with `.`, `?`, `!`, `:`, `;`, or closing quote
2. OR Line A ends with `,` or `-` (explicit continuation)
3. Line B starts with lowercase letter
4. No structural element boundary between them

### Example

```markdown
# Wrong
The forward rate can be
computed using the spot rates
from the yield curve.

# Correct
The forward rate can be computed using the spot rates from the yield curve.
```

## Bullet Normalization

### Symbols to Replace

| Symbol | Replace With |
|--------|--------------|
| `*` (at line start) | `-` |
| `+` | `-` |
| `•` | `-` |
| `○` | `-` |
| `◦` | `-` |
| `●` | `-` |
| `■` | `-` |
| `°` | `-` |
| `$\circ$` (at line start) | `-` |
| `$\bullet$` (at line start) | `-` |
| `\circ` (raw, at line start) | `-` |
| `\bullet` (raw, at line start) | `-` |
| `[*]` | `-` |
| `[?]` | `-` |

**Important:** Only replace when at line start followed by space/tab. Do NOT replace `\circ` or `\bullet` inside legitimate math expressions.

## Table of Contents Cleanup

### Pattern to Remove

```
2.1 Section Name … … … … … … . . 17
3.2 Another Section .......... 42
```

### Actions

1. Remove dotted leaders (`…`, `.`, `·`)
2. Remove page numbers
3. Either:
   - Convert to clean markdown list, OR
   - Remove entirely if redundant with document structure
4. Remove empty lines between TOC items

## Special Outline Preservation

### Hierarchical Outlines (Preserve Exactly)

```
1. Monetary policy influences the economy through several channels.
    a. The traditional channels of monetary policy…
        i. Interest rates influence consumption and investment.
```

Do NOT convert these to markdown bullet lists. Preserve indentation and numbering exactly.

## Finance-Specific Notation

### Common Patterns

| Type | Examples |
|------|----------|
| Interest rates | `$r$`, `$r_t$`, `$r(t)$` |
| Prices | `$P$`, `$P_t$`, `$P(t,T)$` |
| Returns | `$R$`, `$R_t$`, `$R_{t,t+1}$` |
| Expectations | `$\mathbb{E}[X]$`, `$E_t[X_{t+1}]$` |
| Greeks | `$\Delta$`, `$\Gamma$`, `$\Theta$`, `$\rho$`, `$\nu$` |
| Variance | `$\text{Var}(X)$`, `$\sigma^2$` |
| Covariance | `$\text{Cov}(X,Y)$` |

### Stochastic Calculus

| Element | Format |
|---------|--------|
| Wiener process | `$dW_t$`, `$d\hat{W}_t$` |
| Ito processes | `$dX_t = \mu(X_t,t)dt + \sigma(X_t,t)dW_t$` |
| Quadratic variation | `$\langle W \rangle_t$` |

## Tag Extraction Patterns

### Primary Tag Candidates (Score 3)

Look for:
- Terms in the document title
- Concepts repeated throughout multiple sections
- Core methodologies (e.g., "Monte Carlo simulation")
- Fundamental theories (e.g., "Black-Scholes model")

### Secondary Tag Candidates (Score 2)

Look for:
- Supporting methodologies
- Specific applications
- Related concepts
- Technical terminology used but not central

### Peripheral Tags (Score 1)

Look for:
- Examples mentioned
- Historical context
- Edge case discussions
- References to other fields

## Progress Update Format

```markdown
## Chunk [N] Processing Complete (lines X-Y)

### Corrections Made:
1. **[Issue Type]** at line [Z]:
   - Original: `[exact original text/code]`
   - Corrected: `[exact corrected text/code]`

### Key Phrases Extracted (with relevance scores):
- "[phrase 1]" (3) - primary candidate
- "[phrase 2]" (2) - secondary candidate
- "[phrase 3]" (1) - peripheral

### Issues Skipped (Ambiguous):
- Line [Z]: [description of ambiguous issue]

### Chunk Status: ✓ Complete
```

## Final Summary Format

```markdown
## TASK COMPLETE

### Summary:
- Chunks processed: [N]
- Total corrections: [N]
- Primary tags: [N]
- Secondary tags: [N]

### Final Primary Tags:
1. [tag 1]
2. [tag 2]
...

### Final Secondary Tags:
1. [tag 1]
2. [tag 2]
...

### Persistent Issues:
- [Any issues that couldn't be resolved]

### Status: ✓ COMPLETE
```
