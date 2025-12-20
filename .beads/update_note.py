import json

# Read the current issues
with open('issues.jsonl', 'r') as f:
    issues = [json.loads(line) for line in f if line.strip()]

# Find the FIN-97062 issue
for issue in issues:
    if issue.get('id') == 'FIN-97062':
        # Update the notes
        issue['notes'] = """Chunk 10 (lines 4501-5000) completed:

- Fixed LaTeX spaced text commands in equations 4.70-4.75:
  * Equation 4.70: Fixed \\mathbf {y} _ {1} → \\mathbf{y}_{1}, \\text {f o r s = 1} → \\text{for s = 1}
  * Equation 4.71: Fixed \\mathrm {y} _ {2} → \\mathrm{y}_{2}, removed spaces in fraction
  * Equation 4.72: Fixed \\max  _ {\\alpha_ {1}, \\alpha_ {2}} → \\max_{\\alpha_{1},\\alpha_{2}}
  * Equation 4.73: Fixed \\frac {\\partial \\mathcal {L}}{\\partial \\alpha_ {1}} → \\frac{\\partial\\mathcal{L}}{\\partial\\alpha_{1}}
  * Equation 4.74: Fixed \\mathrm {U} ^ {\\prime} → \\mathrm{U}^{\\prime}, \\mathrm {z} _ {1 , 1} → \\mathrm{z}_{1,1}
  * Equation 4.75: Fixed \\sum_ {i = 1} ^ {n} → \\sum_{i=1}^{n}

- Fixed additional LaTeX spaced text commands after equation 4.75:
  * \\sum_ {i = 1} ^ {n} → \\sum_{i=1}^{n}
  * \\mathrm {y} _ {\\mathrm {s}} → \\mathrm{y}_{\\mathrm{s}}
  * \\alpha_ {\\mathrm {i}} → \\alpha_{\\mathrm{i}}

Total progress: 10 chunks completed (5000 lines formatted)
Remaining: Approximately 19-20 chunks to reach line 14,473"""
        break

# Write back the updated issues
with open('issues.jsonl', 'w') as f:
    for issue in issues:
        f.write(json.dumps(issue) + '\n')

print('Updated FIN-97062 with chunk 10 completion')