#!/bin/bash
# Update bead issues status

echo "Updating bead issue statuses..."

# Batch 1 - Verify completions
bd list --status closed 2>&1 | grep -E "(FIN-r2vsl|FIN-0162|FIN-04ne0|FIN-1i4k6|FIN-1a9iw)"

# Batch 2 - Verify completions  
bd list --status closed 2>&1 | grep -E "(FIN-01pvl|FIN-02l41|FIN-0cx8q|FIN-0kd0a)"

# Batch 3 - Verify completions
bd list --status closed 2>&1 | grep -E "(FIN-qscdo|FIN-omc0h|Chapter 23|Chapter 24|Chapter 26)"

echo "Check complete!"
