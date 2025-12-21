# Final Verification Checklist

After processing all chunks, verify:

## YAML Frontmatter
- [ ] YAML frontmatter is valid and complete
- [ ] `tags` field has been REMOVED (replaced by primary_tags/secondary_tags)
- [ ] `key_concepts` field has been REMOVED
- [ ] `primary_tags` contains 1-10 most important key phrases
- [ ] `secondary_tags` contains up to 25 supporting key phrases
- [ ] All tags are multi-word phrases (2-4 words), lowercase
- [ ] Tag counts match document size/chunk distribution guidelines
- [ ] Tags have equal distribution across document content (not just from top)
- [ ] `cssclasses: academia` is present
- [ ] `formatted`, `formatter_model`, and `cli-tool` fields are present

## Document Structure
- [ ] Single H1 header exists (document title)
- [ ] All headings have proper spacing
- [ ] No mid-sentence line breaks remain

## Mathematics
- [ ] LaTeX inline math has no padding spaces
- [ ] LaTeX block math has delimiters on own lines
- [ ] OCR artifacts fixed (spaced decimals, operators)

## Formatting
- [ ] All bullet markers are `-`
- [ ] No multiple consecutive blank lines
- [ ] Practice/exercise sections removed
- [ ] TOC formatting cleaned up (if present)
- [ ] Image links LEFT UNTOUCHED

## Logging
- [ ] All corrections logged in bead issue
- [ ] All key phrases logged with relevance scores
