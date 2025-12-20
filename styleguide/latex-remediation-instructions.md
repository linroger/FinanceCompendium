# LaTeX Block Equation Remediation - Subagent Instructions

**Bead Issue**: FIN-97047
**Total Files**: 1,007 files with block LaTeX equations
**Queue File**: `/tmp/latex_files_list.txt`
**Log File**: `logs/latex_remediation_log.md`
**Extraction Script**: `scripts/extract_latex_equations.py`

---

## Your Mission

You are one of 25 parallel subagents tasked with reviewing and fixing LaTeX block equations in the FinanceCompendium Obsidian vault. Each agent processes **one document at a time**, making **targeted, intelligent fixes** based on understanding the mathematical context.

**CRITICAL**: You must NOT apply blanket regex replacements across equations you haven't analyzed. Each equation requires individual attention.

---

## Workflow

### Step 1: Get Your Document

Read the next available file from the queue. The queue file contains one filepath per line.

To check which files have already been processed, scan the log file `logs/latex_remediation_log.md` for completed entries.

### Step 2: Extract and Analyze Equations

Run the extraction script to see all block equations with their line numbers:

```bash
python scripts/extract_latex_equations.py "path/to/your/file.md"
```

The script will:
- List each block equation (`$$...$$`) with line numbers
- Flag potential issues automatically
- Summarize total equations and issues found

**Use `--issues-only` flag to focus on problematic equations:**
```bash
python scripts/extract_latex_equations.py "path/to/file.md" --issues-only
```

### Step 3: Review Each Flagged Equation

For every equation with flagged issues:

1. **Read the context**: Use the Read tool to view lines around the equation
2. **Understand the math**: What is the equation expressing?
3. **Identify the problem**: Is it spacing? OCR artifact? Missing markup?
4. **Determine the fix**: What should the corrected equation look like?

### Step 4: Apply Targeted Fixes

Use the Edit tool to fix each equation individually. Below are the common issue types and their fixes:

---

## Common LaTeX Issues and Fixes

### A. Spaced Subscripts and Superscripts

**Problem**: Space between variable and subscript/superscript indicator

| Wrong | Correct |
|-------|---------|
| `Q _ {s}` | `Q_{s}` |
| `x _ {t+1}` | `x_{t+1}` |
| `\beta _ {I}` | `\beta_{I}` |
| `P ^ {2}` | `P^{2}` |
| `e ^ {-rT}` | `e^{-rT}` |

**Fix Pattern**: Remove spaces around `_` and `^` when they connect to braces.

---

### B. Spaced Text Inside Commands

**Problem**: OCR introduces spaces between letters inside `\text{}`, `\mathrm{}`, or `\operatorname{}`

| Wrong | Correct |
|-------|---------|
| `\text{m a r k e t}` | `\text{market}` |
| `\text {where}` | `\text{where}` |
| `\mathrm{V a r}` | `\mathrm{Var}` |
| `\operatorname {C o v}` | `\operatorname{Cov}` |

**Fix Pattern**:
1. Remove space between command and opening brace
2. Collapse internal single-letter spacing to form words

---

### C. Spaced Numbers (OCR Artifacts)

**Problem**: Digits separated by spaces due to OCR errors

| Wrong | Correct |
|-------|---------|
| `1 6 - 2 P` | `16 - 2P` |
| `0 . 0 5` | `0.05` |
| `3 6 - 3 P` | `36 - 3P` |
| `. 0 0 0 1` | `.0001` |

**Fix Pattern**: Collapse sequences of space-separated single digits into numbers.

---

### D. Misused `\circ` and `\bullet`

**At line start (bullets)**: These are OCR artifacts where bullet points were converted to LaTeX.

| Wrong | Correct |
|-------|---------|
| `$\circ$ Item text` | `- Item text` |
| `$\bullet$ Another item` | `- Another item` |

**Inside equations (legitimate)**: Leave these alone!

| Legitimate Use | Meaning |
|----------------|---------|
| `45^\circ` | 45 degrees |
| `f \circ g` | Function composition |
| `a \bullet b` | Dot product notation |

**Decision Rule**: Only fix if it appears at line start followed by text. Inside math environments, preserve.

---

### E. Missing `\text{}` for Words

**Problem**: English words inside equations render as italic variables

| Wrong | Correct |
|-------|---------|
| `where x > 0` | `\text{where } x > 0` |
| `if n = 1` | `\text{if } n = 1` |
| `for all t` | `\text{for all } t` |

**Common words needing `\text{}`**:
- where, if, for, and, or
- such that, s.t., given
- otherwise, then, when
- subject to, implies

**Note**: Include trailing space inside `\text{}` when followed by math: `\text{where }x` not `\text{where} x`

---

### F. Unescaped Percent Signs

**Problem**: `%` in LaTeX starts a comment

| Wrong | Correct |
|-------|---------|
| `r = 5%` | `r = 5\%` |
| `return of 10%` | `return of 10\%` |

**Fix Pattern**: Replace `%` with `\%` inside math environments.

---

### G. Operators Without Backslash

**Problem**: Math operators render as italic variables without proper LaTeX commands

| Wrong | Correct |
|-------|---------|
| `log(x)` | `\log(x)` |
| `exp(-r)` | `\exp(-r)` |
| `sin(θ)` | `\sin(\theta)` |
| `max(a,b)` | `\max(a,b)` |

**Standard operators requiring backslash**:
- `\log`, `\ln`, `\exp`
- `\sin`, `\cos`, `\tan`, `\cot`, `\sec`, `\csc`
- `\arcsin`, `\arccos`, `\arctan`
- `\max`, `\min`, `\sup`, `\inf`, `\lim`
- `\arg`, `\det`, `\gcd`, `\dim`

---

### H. Spacing Around Operators

**Problem**: Missing or inconsistent spacing around binary operators

| Wrong | Correct |
|-------|---------|
| `x+y` | `x + y` |
| `a  -  b` | `a - b` |
| `P=Q` | `P = Q` |

**LaTeX handles this automatically**, so only fix if rendering is clearly broken.

---

## Step 5: Log Your Work

After processing a document, append an entry to `logs/latex_remediation_log.md`:

```markdown
## [Document Title]
**Path**: `[full path]`
**Processed**: 2025-12-19 HH:MM
**Agent**: Agent-[your-id]

### Summary
- Equations scanned: X
- Issues found: Y
- Fixes applied: Z

### Specific Edits

1. **Line 45-48**:
   - Before: `Q _ {s} = 1 6 - 2 P`
   - After: `Q_{s} = 16 - 2P`
   - Issue: Spaced subscripts and numbers

2. **Line 72-75**:
   - Before: `\text{m a r k e t}`
   - After: `\text{market}`
   - Issue: OCR-spaced text
```

---

## Quality Guidelines

### DO:
- Read surrounding text to understand equation meaning
- Use the Edit tool for targeted, line-specific changes
- Document every change with before/after comparison
- Leave equations unchanged if you're uncertain
- Process one document completely before moving to next

### DON'T:
- Apply regex across entire files blindly
- Change `\circ` inside legitimate degree/composition notation
- Add `\text{}` around single-letter variables
- Modify equations that already render correctly
- Skip logging your edits

---

## When to Leave Equations Unchanged

Some equations may flag as having issues but are actually correct:

1. **Intentional spacing** for readability in complex expressions
2. **Domain-specific notation** unfamiliar to the detection script
3. **Already-correct** equations that trigger false positives
4. **Ambiguous cases** where the intended form is unclear

When uncertain, leave the equation as-is and note it for manual review in the log:

```markdown
**Line 123-126**: Flagged for potential issue but left unchanged
- Content: `...equation...`
- Reason: Ambiguous whether spacing is intentional
```

---

## File Queue Management

Files are processed from `/tmp/latex_files_list.txt` in order. To track progress:

1. Check `logs/latex_remediation_log.md` for completed files
2. Pick up where the last agent left off
3. If unsure, check the log's timestamp to find the most recent completion

---

## Completion

When you've processed your document:

1. Save your log entry to `logs/latex_remediation_log.md`
2. Move to the next document in the queue
3. Repeat until queue is exhausted or your session ends

---

## Example Workflow Session

```
1. Check logs/latex_remediation_log.md - last completed file was #42
2. Read file #43 from /tmp/latex_files_list.txt
3. Run: python scripts/extract_latex_equations.py "path/to/file43.md"
4. Script shows 15 equations, 4 with potential issues
5. Use Read tool to examine each flagged equation in context
6. Use Edit tool to fix 3 confirmed issues
7. Append log entry with 3 edits documented
8. Move to file #44
```

Good luck with your processing task!
