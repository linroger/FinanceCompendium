import subprocess
import datetime
import os

# Get files from get_next_batch.py
result = subprocess.run(["python3", "scripts/get_next_batch.py"], capture_output=True, text=True)
files = [f.strip() for f in result.stdout.splitlines() if f.strip()]

log_path = "logs/latex_remediation_log.md"

if not files:
    print("No more files to process.")
    exit(0)

print(f"Starting batch processing of {len(files)} files...")

for file_path in files:
    if not os.path.exists(file_path):
        print(f"Skipping {file_path} (not found)")
        continue

    print(f"Processing {file_path}...")
    
    # Run remediation
    result = subprocess.run(
        ["python3", "scripts/remediate_latex.py", file_path],
        capture_output=True,
        text=True
    )
    
    output = result.stdout
    print(output)
    
    # Extract stats from output
    stats_summary = ""
    for line in output.splitlines():
        if "fixes:" in line or "TOTAL:" in line:
            stats_summary += f"- {line.strip()}\n"
            
    # Append to log
    timestamp = datetime.datetime.now().strftime('%Y-%m-%d %H:%M')
    log_entry = (
        f"\n## {os.path.basename(file_path)}\n"
        f"**Path**: `{file_path}`\n"
        f"**Processed**: {timestamp}\n"
        f"**Agent**: Agent-30 (Gemini CLI Batch 25)\n\n"
        f"### Summary\n{stats_summary}\n"
        f"### Status: COMPLETE\n"
    )
    
    with open(log_path, "a") as f:
        f.write(log_entry)

print(f"Batch processing of {len(files)} files complete.")
