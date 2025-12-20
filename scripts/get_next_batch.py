import re

def get_processed_files(log_path):
    processed = set()
    try:
        with open(log_path, 'r') as f:
            content = f.read()
            matches = re.findall(r'Path..:\s*`([^`]+)`', content)
            for m in matches:
                processed.add(m.strip())
            matches_no_ticks = re.findall(r'Path..:\s*([^`\n]+)', content)
            for m in matches_no_ticks:
                processed.add(m.strip())
    except FileNotFoundError:
        pass
    return processed

def get_next_batch(list_path, processed_files, batch_size=25):
    next_batch = []
    with open(list_path, 'r') as f:
        for line in f:
            file_path = line.strip()
            abs_path = f"/Users/rogerlin/Reserve/FinanceCompendium/{file_path}"
            
            if abs_path not in processed_files and file_path not in processed_files:
                next_batch.append(file_path)
                if len(next_batch) >= batch_size:
                    break
    return next_batch

if __name__ == "__main__":
    processed = get_processed_files("logs/latex_remediation_log.md")
    batch = get_next_batch("/Users/rogerlin/.gemini/tmp/3c486d7bbfefd762e923ed73c20fd2668a0e815482268683031e0ebeb7d823a0/latex_files_list.txt", processed, 25)
    for f in batch:
        print(f)