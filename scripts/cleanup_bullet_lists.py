#!/usr/bin/python3
# -*- coding: utf-8 -*-

"""Clean up bullet list formatting by removing unnecessary empty lines.

This script processes bullet lists (lines starting with hyphens) and:
1. Removes empty lines between consecutive bullet points
2. Removes empty lines above bullet points until a non-empty line is found

Created for CotEditor on 2025-11-21.
"""

# %%%{CotEditorXInput=AllText}%%%
# %%%{CotEditorXOutput=ReplaceAllText}%%%

import sys


def cleanup_bullet_lists(text):
    """Remove unnecessary empty lines from bullet lists.
    
    Args:
        text (str): The input text to process.
        
    Returns:
        str: The cleaned up text.
    """
    lines = text.splitlines(True)
    result = []
    i = 0
    
    while i < len(lines):
        line = lines[i]
        
        # Check if this is a bullet point (starts with hyphen, ignoring whitespace)
        stripped_line = line.lstrip()
        is_bullet = stripped_line.startswith('-') and len(stripped_line) > 1 and stripped_line[1].isspace()
        
        if is_bullet:
            # Remove empty lines above bullet points
            while (result and 
                   (result[-1].strip() == '' or result[-1].isspace()) and 
                   len(result) > 0):
                result.pop()
            
            result.append(line)
            
            # Check if next non-empty line is also a bullet
            j = i + 1
            while j < len(lines) and lines[j].strip() == '':
                j += 1
            
            if j < len(lines):
                next_stripped = lines[j].lstrip()
                next_is_bullet = (next_stripped.startswith('-') and 
                                len(next_stripped) > 1 and 
                                next_stripped[1].isspace())
                
                if next_is_bullet:
                    # Skip empty lines between bullets
                    i = j - 1
        else:
            result.append(line)
        
        i += 1
    
    return ''.join(result)


def main():
    in_text = sys.stdin.read()
    out_text = cleanup_bullet_lists(in_text)
    sys.stdout.write(out_text)


if __name__ == "__main__":
    main()
