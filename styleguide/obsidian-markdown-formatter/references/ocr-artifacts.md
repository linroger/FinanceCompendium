# OCR Artifacts Reference

Common OCR artifacts found in finance/academic documents and their fixes.

## Spaced Words (OCR Splitting)

| Artifact | Correct |
|----------|---------|
| `di erent` | `different` |
| `signi cant` | `significant` |
| `speci c` | `specific` |
| `in formation` | `information` |
| `de cit` | `deficit` |
| `co ef cient` | `coefficient` |
| `fi nance` | `finance` |
| `e ect` | `effect` |
| `o ce` | `office` |
| `reg ula tion` | `regulation` |
| `trans ac tion` | `transaction` |
| `val u a tion` | `valuation` |

## Spaced Decimals

| Artifact | Correct |
|----------|---------|
| `0 . 0 8` | `0.08` |
| `0 . 0 5` | `0.05` |
| `1 . 0 8` | `1.08` |
| `$ 2 . 5` | `$2.5` |

## Spaced LaTeX Text

| Artifact | Correct |
|----------|---------|
| `\text {m i l l i o n}` | `\text{million}` |
| `\text {y i e l d}` | `\text{yield}` |
| `\operatorname {V a r}` | `\operatorname{Var}` |
| `\operatorname {C o v}` | `\operatorname{Cov}` |

## Common Noise Artifacts

| Artifact | Action |
|----------|--------|
| `[?]` | Remove entirely |
| `[*]` at line start | Replace with `- ` (bullet) |
| `■`, `●`, `°`, `◦`, `•` at line start | Replace with `- ` (bullet) |

## Detection Patterns

When scanning for OCR issues, look for:
1. Single letters separated by spaces within words
2. Decimal points with spaces on both sides
3. Spaced characters inside `\text{}` or `\operatorname{}`
4. Bracket artifacts like `[?]` scattered in text
