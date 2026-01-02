import csv

# Equations to remove (based on quality filtering)
equations_to_remove = [
    "Gold Lease Rate",
    "Silver Lease Rate",
    "FX Forward Points",
    "Growth Condition for Convergence",
    "Geometric Series",
    "I-Spread (Interpolated Spread)",
    "Real Yield",
    "Weighted Average Coupon",
    "Weighted Average Maturity",
    "Monte Carlo Error",
    "Floating Rate Note Par Value",
    "Current Yield",
    "Eurodollar Futures Price",
    "Portfolio Variance Decomposition",
    "Simple Rate Conversion",
    "Swap Convexity Approximation",
    "Swap Duration",
    "Swap Spread",
    "Continuous Compounding",
    "Bootstrap for Discount Factors",
    "Forward Rate Extraction",
    "Explicit Euler Scheme",
    # Also remove assessed equations that we decided to filter out
    "Constant Product AMM",
    "Hawkes Process (Order Arrival)",
    "Ratchet Feature Mechanics",
    "Almgren-Chriss Optimal Execution"
]

with open('deduplicated_equations_final.csv', 'r') as infile, \
     open('filtered_financial_equations.csv', 'w', newline='') as outfile:

    reader = csv.DictReader(infile)
    fieldnames = reader.fieldnames or ['Title', 'Equation', 'Main_Category', 'Notes']
    writer = csv.DictWriter(outfile, fieldnames=fieldnames)

    writer.writeheader()

    retained_count = 0
    removed_count = 0

    for row in reader:
        title = row['Title']
        if title not in equations_to_remove:
            writer.writerow(row)
            retained_count += 1
        else:
            removed_count += 1

    print(f"Filtering complete:")
    print(f"Retained: {retained_count}")
    print(f"Removed: {removed_count}")
    print(f"Total processed: {retained_count + removed_count}")