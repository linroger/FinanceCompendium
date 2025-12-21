# Mathematical Formatting Standards for Finance Documents

## Purpose
This guide establishes consistent mathematical formatting standards for all finance documents in the FinanceCompendium to ensure proper rendering, readability, and professional presentation.

## Inline Mathematics

### Basic Rules
- Enclose inline math expressions in single dollar signs: `$x + y = z$`
- No spaces between the `$` and the mathematical content
- Use `\text{word}` for words within equations: `$\\text{rate} = \\frac{\\text{distance}}{\\text{time}}$`
- Include proper spacing: `$x + y$` not `$x+y$`

### Common Elements
- Variables: `$r$` (interest rate), `$P$` (price), `$t$` (time)
- Greek letters: `$\alpha$`, `$\beta$`, `$\gamma$`, `$\mu$`, `$\sigma$`, `$\lambda$`
- Superscripts: `$x^2$`, `$e^{rt}$`, `$\sigma^2$`
- Subscripts: `$r_t$`, `$P_{t,T}$`, `$\beta_{ij}$`
- Fractions: `$\frac{a}{b}$` not `$a/b$` for complex expressions
- Functions: `$\log(x)$`, `$\exp(x)$`, `$\sqrt{x}$`

## Displayed Mathematics

### Single Equations
Use double dollar signs for displayed equations:
```
$$
P(t, T) = \frac{1}{(1+r)^{T-t}}
$$
```

### Aligned Equations
For multiple equations or steps:
```
$$
\begin{align}
dS &= \\mu S dt + \\sigma S dW \\\\
\\frac{dS}{S} &= \\mu dt + \\sigma dW \\\\
\\end{align}
$$
```

### Numbered Equations
Use `\tag{}` for equation numbers:
```
$$
P = \\sum_{i=1}^{n} \\frac{C_i}{(1+y)^i} \\tag{3.1}
$$
```

## Special Mathematical Constructs

### Matrices
```
$$
\\mathbf{A} = 
\\begin{bmatrix}
a_{11} & a_{12} \\\\
a_{21} & a_{22}
\\end{bmatrix}
$$
```

### Piecewise Functions
```
$$
f(x) = 
\\begin{cases}
x^2 & \\text{if } x \\geq 0 \\\\
-x & \\text{if } x < 0
\\end{cases}
$$
```

### Summations and Integrals
- Summations: `$\\sum_{i=1}^{n} x_i$`
- Products: `$\\prod_{i=1}^{n} x_i$`
- Integrals: `$\\int_{a}^{b} f(x) dx$`
- Double integrals: `$\\iint_D f(x,y) \\,dx\\,dy$`

## Probability and Statistics Notation

### Expectations and Operators
- Expectation: `$\\mathbb{E}[X]$` or `$\\hat{\\mathbb{E}}[X]$`
- Variance: `$\\text{Var}(X)$` or `$\\mathbb{V}[X]$`
- Covariance: `$\\text{Cov}(X,Y)$`
- Probability: `$\\mathbb{P}(A)$`

### Stochastic Processes
- Wiener process: `$dW_t$` or `$d\\hat{W}_t$`
- Ito processes: `$dX_t = \\mu(X_t,t)dt + \\sigma(X_t,t)dW_t$`
- Quadratic variation: `$\\langle W \\rangle_t$`

## Finance-Specific Notation

### Interest Rates and Bonds
- Spot rate: `$r(t)$`
- Forward rate: `$f(t,T)$`
- Zero-coupon bond: `$P(t,T)$`
- Yield: `$y$`
- Duration: `$D$`
- Convexity: `$C$`

### Options and Derivatives
- Call option: `$C(S,K,T,r,\\sigma)$`
- Put option: `$P(S,K,T,r,\\sigma)$`
- Greeks: `$\\Delta$`, `$\\Gamma$`, `$\\Theta$`, `$\\rho$`, `$\\nu$`
- Strike price: `$K$`
- Maturity: `$T$`

### Risk Measures
- Value at Risk: `$\\text{VaR}_\\alpha$`
- Expected Shortfall: `$\\text{ES}_\\alpha$`
- Sharpe ratio: `$S$`
- Beta: `$\\beta$`

## Formatting Best Practices

### Alignment and Spacing
- Align equations at relation symbols (`=`) using `align` environment
- Use consistent spacing around operators
- Include blank lines before and after displayed equations
- Use `\phantom{}` for consistent spacing when aligning complex expressions

### Mixed Text and Math
- Use `\text{}` for words within math mode: `$\\text{NPV} = \\sum \\cdots$`
- Capitalize proper nouns within `\text{}`: `$\\text{Black-Scholes}$`
- Avoid mixing math and text without `\text{}`

### Complex Expressions
- Break long expressions across multiple lines using `align` or `multline`
- Use parentheses appropriately: `$\\left( \\frac{a}{b} \\right)$` for sizing
- Group terms logically: `$a(b + c) + d(e + f)$`

## Common Mistakes to Avoid

### Syntax Errors
- Don't use `$$...$$` for inline math (use `$...$`)
- Don't forget to escape special characters: `\\%` not `%` in math mode
- Don't use `_` or `^` without braces for multiple characters: `x_{ij}` not `x_ij`
- Don't use spaces within math delimiters unnecessarily

### Stylistic Issues
- Don't mix notation styles inconsistently
- Don't use fractions for simple ratios: `$a/b$` is fine for simple cases
- Don't use `*` for multiplication in math mode (use `\\cdot` or implicit)
- Don't forget to use `\mathbb{}` for expected values and probabilities

### Rendering Issues
- Don't use Unicode characters in math mode (use LaTeX equivalents)
- Don't nest math delimiters
- Don't use raw HTML or special characters in equations
- Don't include markdown formatting within math expressions

## Verification Checklist

Before finalizing a document, ensure:
- [ ] All inline math is properly enclosed in `$...$`
- [ ] All displayed math is properly enclosed in `$$...$$`
- [ ] All equation numbers use `\tag{}`
- [ ] All words within equations use `\text{}`
- [ ] All Greek letters are properly formatted
- [ ] All subscripts and superscripts are properly grouped
- [ ] All fractions use `\frac{}{}`
- [ ] All matrices and aligned equations use appropriate environments
- [ ] All special finance notation is consistent
- [ ] All equations render properly in Obsidian

# Tag Classification Guide: Primary vs Secondary Tags

## Purpose
This guide establishes clear criteria for distinguishing between primary_tags and secondary_tags in Obsidian markdown documents to ensure consistent tagging across the FinanceCompendium.

## Primary Tags: Core Identity Categories

### Definition
Primary tags represent the fundamental subject matter that defines what the document IS about. These are the essential, non-negotiable topics that would appear in the title or main heading of the document.

### Criteria
- **Essentiality**: Without these concepts, the document would lose its core identity
- **Universality**: These appear throughout the document as central themes
- **Search Frequency**: Likely to be searched by users looking for this specific topic
- **Uniqueness**: Distinctive to the document's primary purpose

### Examples
- For a derivatives pricing document: `options pricing`, `black-scholes model`, `greeks`
- For a fixed income document: `bond valuation`, `duration and convexity`, `yield curve`
- For an equity document: `equity valuation`, `discounted cash flow`, `market multiples`

### Quantity
- 3-5 tags for most documents
- Maximum of 8 for very comprehensive documents

## Secondary Tags: Supporting Context Categories

### Definition
Secondary tags represent related concepts, methodologies, applications, and contextual information that support the primary topics but are not the core focus.

### Criteria
- **Supporting Role**: These enhance understanding but are not the main focus
- **Specificity**: Often more detailed or specialized than primary tags
- **Application Context**: Specific use cases, industries, or scenarios
- **Methodological Details**: Specific techniques, variations, or implementations

### Examples
- For a derivatives document: `implied volatility`, `volatility surface`, `american options`, `exotic options`
- For a fixed income document: `treasury bonds`, `corporate bonds`, `mortgage-backed securities`, `credit risk`
- For an equity document: `growth stocks`, `value investing`, `sector rotation`, `momentum investing`

### Quantity
- 8-15 tags for most documents
- Maximum of 25 for comprehensive documents

## Distinction Between Primary and Secondary Tags

### Primary Tags Are:
- **Broad and Fundamental**: Core concepts that define the field/subject
- **Title Reflective**: Directly related to the document title
- **Search Driven**: What users would search for first
- **Category Defining**: Place the document in its main category

### Secondary Tags Are:
- **Specific and Detailed**: More granular aspects of the subject
- **Content Derived**: Topics covered within but not defining the document
- **Cross-Reference Enabling**: Connect to related concepts elsewhere
- **Context Providing**: Additional descriptors that enhance discovery

## Selection Rules

### For Primary Tags:
1. **Must Appear in Title or Main Heading**: If it's in the title, it's likely a primary tag
2. **Core Concept Test**: If removing this concept makes the document lose its identity
3. **Frequency Test**: Appears consistently throughout the document
4. **User Intent Match**: What would users expect to find in a document with this title
5. **Hierarchical Position**: Higher-level, more general concepts

### For Secondary Tags:
1. **Supporting Material**: Topics covered but not central to the document
2. **Specific Applications**: Particular use cases or implementations
3. **Method Variants**: Specific techniques or approaches mentioned
4. **Contextual Elements**: Industry, geography, time period, audience
5. **Cross-Linking Potential**: Connect to other documents in the vault

## Tag Format Standards

### Naming Convention:
- Use lowercase words
- Separate multiple words with spaces: `interest rate modeling`
- Avoid underscores or hyphens unless they're part of standard terminology
- Use natural language rather than abbreviations (unless the abbreviation is more common)

### Granularity:
- Primary tags: Higher-level, more general concepts
- Secondary tags: More specific, detailed concepts
- Avoid redundancy between primary and secondary tags
- Ensure tags are specific enough to be meaningful but general enough to be useful

## Quality Checks

Before finalizing tags, verify:
1. **Completeness**: Do the primary tags fully capture the document's core identity?
2. **Specificity**: Do secondary tags add meaningful context without being too narrow?
3. **Balance**: Is there a good balance between broad and specific tags?
4. **Searchability**: Would users likely search for these terms?
5. **Consistency**: Are similar documents tagged similarly?

## Common Mistakes to Avoid

- Making primary tags too specific or secondary tags too general
- Duplicating concepts across primary and secondary tags
- Including overly narrow or obscure terms in primary tags
- Missing fundamental concepts that should be primary tags
- Creating tags that are too similar to each other
- Using inconsistent terminology across documents
