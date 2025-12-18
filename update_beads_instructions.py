import subprocess
import json
import os

INSTRUCTIONS_FILE = "styleguide/subagent-formatting-instructions.md"

def get_instructions_content():
    try:
        with open(INSTRUCTIONS_FILE, "r", encoding="utf-8") as f:
            return f.read()
    except FileNotFoundError:
        print(f"Error: Could not find {INSTRUCTIONS_FILE}")
        return None

def get_all_issues():
    # Fetch all open issues with high limit
    result = subprocess.run(["bd", "list", "--status", "open", "--limit", "10000", "--json"], capture_output=True, text=True)
    if result.returncode != 0:
        print(f"Error fetching issues: {result.stderr}")
        return []
    try:
        return json.loads(result.stdout)
    except json.JSONDecodeError:
        print("Failed to decode JSON from bd list")
        return []

def update_issues():
    description = get_instructions_content()
    if not description:
        return

    issues = get_all_issues()
    print(f"Total open issues found: {len(issues)}")

    updated_count = 0
    skipped_count = 0
    
    for issue in issues:
        # Check if description already matches to avoid redundant updates
        if issue.get('description', '').strip() == description.strip():
            skipped_count += 1
            continue

        print(f"Updating issue {issue['id']} ({issue['title']})")
        
        # Run update command
        # We need to be careful with passing large text via command line arguments.
        # It might hit argument length limits.
        # bd update supports passing description via file? No, usually arguments.
        # If it's too long, subprocess.run might fail or the shell might complain.
        # Let's try standard approach. If it fails, we might need a workaround 
        # (like writing description to a temp file if bd supported it, but it likely doesn't).
        # Actually, python's subprocess.run avoids shell expansion limits if shell=False (default),
        # but there's still an OS limit on argv size. 
        # The description is about 4KB-5KB. OS limits are usually megabytes on modern systems (Linux/macOS).
        # So it should be fine.
        
        try:
            subprocess.run(["bd", "update", issue['id'], "--description", description, "--json"], check=True, capture_output=True)
            updated_count += 1
        except subprocess.CalledProcessError as e:
            print(f"Failed to update {issue['id']}: {e.stderr.decode()}")

    print(f"Update complete.")
    print(f"Updated: {updated_count}")
    print(f"Skipped (already up to date): {skipped_count}")

if __name__ == "__main__":
    update_issues()
