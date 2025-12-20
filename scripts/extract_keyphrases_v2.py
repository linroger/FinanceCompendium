#!/usr/bin/env python3
"""
Keyphrase extraction workflow (v2) for an Obsidian Markdown vault.

Design goals:
- Efficient on very long notes (tens of thousands → 1M+ words).
- Produces 2–10 primary keyphrases and up to 25 secondary keyphrases.
- Keyphrases are 2–4 words (tokens) long.
- Focuses ONLY on top-level folders I. … X. (recursively).
- Robust Markdown cleaning: ignores code blocks, tables/diagrams, LaTeX/math, and image/embed links.

Method summary:
1) Clean Markdown → plain-ish text (remove frontmatter, code blocks, links, etc.).
2) Sample text for analysis when documents are huge (to bound runtime).
3) Generate 2–4 token n-gram candidates and score by frequency, with heading boosts.
4) Select diverse primaries/secondaries using a simple MMR-like redundancy filter.
5) Write JSONL + Markdown report for review.

Notes:
- `--mode fast` is stdlib-only and runs out-of-the-box.
- `--mode semantic` adds a KeyBERT-style embedding stage (requires `sentence-transformers` + `torch`).
- Optional `--reranker-model` applies a Qwen3-Reranker-style final polish on a small top-K set
  (requires `transformers` + `torch`).
- On Apple Silicon MPS, very large models may require: `PYTORCH_MPS_HIGH_WATERMARK_RATIO=0.0`.
"""

from __future__ import annotations

import argparse
import json
import math
import os
import re
import time
import unicodedata
from dataclasses import dataclass
from pathlib import Path
from typing import Iterable, Iterator, Sequence


VAULT_ROOT_DEFAULT = "/Users/rogerlin/Reserve/FinanceCompendium"

EXTRACTOR_VERSION = "v2.6"
CACHE_SCHEMA_VERSION = 1


ROMAN_TOPLEVEL_RE = re.compile(r"^(I|II|III|IV|V|VI|VII|VIII|IX|X)\.\s")


# A compact stopword list; used only for boundary filtering (internal stopwords are allowed).
# This avoids the KeyBERT/CountVectorizer pitfall where "cost of capital" becomes "cost capital".
STOPWORDS = {
    "a",
    "al",
    "about",
    "above",
    "across",
    "after",
    "again",
    "against",
    "all",
    "almost",
    "also",
    "am",
    "an",
    "and",
    "any",
    "are",
    "as",
    "at",
    "be",
    "because",
    "been",
    "before",
    "being",
    "below",
    "between",
    "both",
    "but",
    "by",
    "can",
    "could",
    "did",
    "do",
    "does",
    "doing",
    "down",
    "during",
    "each",
    "either",
    "else",
    "et",
    "ever",
    "every",
    "few",
    "for",
    "from",
    "further",
    "had",
    "has",
    "have",
    "having",
    "he",
    "her",
    "here",
    "hers",
    "herself",
    "him",
    "himself",
    "his",
    "how",
    "i",
    "if",
    "in",
    "into",
    "is",
    "it",
    "its",
    "itself",
    "just",
    "me",
    "more",
    "most",
    "my",
    "myself",
    "no",
    "nor",
    "not",
    "now",
    "of",
    "off",
    "on",
    "once",
    "only",
    "or",
    "other",
    "our",
    "ours",
    "ourselves",
    "out",
    "over",
    "own",
    "same",
    "she",
    "should",
    "so",
    "some",
    "such",
    "than",
    "that",
    "the",
    "their",
    "theirs",
    "them",
    "themselves",
    "then",
    "there",
    "these",
    "they",
    "this",
    "those",
    "through",
    "to",
    "too",
    "under",
    "until",
    "up",
    "very",
    "was",
    "we",
    "were",
    "what",
    "when",
    "where",
    "which",
    "while",
    "who",
    "whom",
    "why",
    "will",
    "with",
    "you",
    "your",
    "yours",
    "yourself",
    "yourselves",
    "back",
    "go",
    "let",
}


DOMAIN_STOP_TOKENS = {
    # common boilerplate/ocr cruft in compendia
    "figure",
    "fig",
    "exhibit",
    "exhibits",
    "example",
    "examples",
    "scratch",
    "todo",
    "tbd",
    "draft",
    "question",
    "questions",
    "exercise",
    "exercises",
    "solution",
    "solutions",
    "optional",
    "reading",
    "diagram",
    "schematic",
    "answer",
    "answers",
    "table",
    "appendix",
    "copyright",
    "all-rights-reserved",
    "www",
    "http",
    "https",
    "com",
    "org",
    "pdf",
    "page",
    "pages",
    "edition",
    "vol",
    "volume",
    "section",
    "sections",
    # discourse markers / low-value abbreviations
    "e.g",
    "i.e",
    "eg",
    "ie",
    "etc",
}


TOKEN_RE = re.compile(r"[A-Za-z0-9]+(?:[&./-][A-Za-z0-9]+)*")


FRONTMATTER_RE = re.compile(r"(?s)\A---\s*\n.*?\n---\s*\n")
FENCED_CODEBLOCK_RE = re.compile(r"(?s)```.*?```")
FENCED_CODEBLOCK_TILDE_RE = re.compile(r"(?s)~~~.*?~~~")
INLINE_CODE_RE = re.compile(r"`[^`]+`")
MD_LINK_RE = re.compile(r"\[([^\]]+)\]\([^)]+\)")
WIKI_LINK_RE = re.compile(r"\[\[([^\]|]+)(?:\|([^\]]+))?\]\]")
HTML_TAG_RE = re.compile(r"<[^>]+>")
HTML_TABLE_BLOCK_RE = re.compile(r"(?is)<table\b.*?>.*?</table>")
HTML_COMMENT_RE = re.compile(r"(?s)<!--.*?-->")

# Markdown/Obsidian media embeds
MD_IMAGE_RE = re.compile(r"!\[[^\]]*\]\([^)]+\)")
OBSIDIAN_EMBED_RE = re.compile(r"!\[\[[^\]]+\]\]")

# LaTeX / math removal (keep currency like $50,000 since it typically isn't closed with $)
LATEX_ENV_RE = re.compile(r"(?is)\\begin\{[^}]+\}.*?\\end\{[^}]+\}")
LATEX_DISPLAY_DOLLAR_RE = re.compile(r"(?s)\$\$.*?\$\$")
LATEX_DISPLAY_BRACKET_RE = re.compile(r"(?s)\\\[.*?\\\]")
LATEX_INLINE_PAREN_RE = re.compile(r"(?s)\\\(.*?\\\)")
# Inline $...$ math removal, but avoid removing currency like "$50,000" or "$10".
# Heuristic: only strip if there is at least one "mathy" character inside (letters, backslash, _ ^ { }).
LATEX_INLINE_DOLLAR_RE = re.compile(r"(?<!\\)\$(?=[^$\n]*[A-Za-z\\_^{}])[^$\n]*?(?<!\\)\$")

# Heuristic line filters
MARKDOWN_TABLE_SEPARATOR_RE = re.compile(r"^\s*\|?\s*:?-{3,}:?\s*(\|\s*:?-{3,}:?\s*)+\|?\s*$")
MATHY_LINE_RE = re.compile(
    r"(\\(frac|sqrt|ln|log|left|right|tag|sum|int|prod|cdot|times|Delta|sigma|mu|pi|theta|beta|gamma|infty|partial)\b|[_^{}])"
)

# Reference/citation line heuristics (to avoid bibliographies dominating keyphrases).
REFERENCE_YEAR_RE = re.compile(r"\b(19|20)\d{2}[a-z]?\b", re.IGNORECASE)
REFERENCE_AUTHOR_START_RE = re.compile(r"^[A-Z][A-Za-z'’\\-]+,\s*[A-Z]")
REFERENCE_KEYWORDS = (
    "proceedings",
    "pp.",
    "arxiv",
    "doi",
    "isbn",
    "springer",
    "morgan kaufmann",
    "acm",
    "ieee",
)


def _looks_like_nontext_line(line: str) -> bool:
    s = line.strip()
    if not s:
        return True

    # Markdown fences (should already be removed, but keep as a guardrail)
    if s.startswith("```") or s.startswith("~~~"):
        return True

    # Media embeds
    if s.startswith("![") or s.startswith("![["):
        return True

    # Tables
    if MARKDOWN_TABLE_SEPARATOR_RE.match(s):
        return True
    if "|" in s and s.count("|") >= 2:
        return True

    # LaTeX-y / equation-y lines (after we remove most math blocks, this catches leftovers)
    if MATHY_LINE_RE.search(s):
        return True

    # Bibliography / citations often include a year + author list and can dominate frequency-based candidates.
    s_lc = s.lower()
    if REFERENCE_YEAR_RE.search(s) and (
        REFERENCE_AUTHOR_START_RE.match(s) or any(k in s_lc for k in REFERENCE_KEYWORDS)
    ):
        return True

    # Very low alphabetic ratio -> likely diagram/formula/OCR debris
    letters = sum(1 for ch in s if ch.isalpha())
    if letters == 0:
        return True
    alpha_ratio = letters / max(1, len(s))
    if alpha_ratio < 0.18 and len(s) > 12:
        return True

    return False


def clean_markdown(text: str) -> str:
    """Best-effort Markdown → text normalization for keyphrase mining."""
    # Normalize compatibility characters (fixes many PDF/OCR artifacts, e.g. 𝑡 → t).
    text = unicodedata.normalize("NFKC", text)
    # Normalize a few common weird spaces.
    text = (
        text.replace("\u00A0", " ")  # no-break space
        .replace("\u200B", "")  # zero-width space
        .replace("\u200C", "")  # zero-width non-joiner
        .replace("\u200D", "")  # zero-width joiner
        .replace("\uFEFF", "")  # BOM
    )
    # Some converted notes contain literal escape sequences (e.g., "\\n" instead of newlines).
    # Convert these early so tokenization does not treat them as the letter "n".
    text = text.replace("\\r\\n", "\n").replace("\\n", "\n").replace("\\t", " ")

    # Remove HTML tables completely (ignore table content as requested).
    text = HTML_TABLE_BLOCK_RE.sub("\n", text)
    text = HTML_COMMENT_RE.sub(" ", text)

    text = FRONTMATTER_RE.sub("", text)
    text = FENCED_CODEBLOCK_RE.sub(" ", text)
    text = FENCED_CODEBLOCK_TILDE_RE.sub(" ", text)
    text = INLINE_CODE_RE.sub(" ", text)

    # Remove common media embeds completely.
    text = MD_IMAGE_RE.sub(" ", text)
    text = OBSIDIAN_EMBED_RE.sub(" ", text)

    # Remove LaTeX environments and common math blocks.
    text = LATEX_ENV_RE.sub(" ", text)
    text = LATEX_DISPLAY_DOLLAR_RE.sub(" ", text)
    text = LATEX_DISPLAY_BRACKET_RE.sub(" ", text)
    text = LATEX_INLINE_PAREN_RE.sub(" ", text)
    text = LATEX_INLINE_DOLLAR_RE.sub(" ", text)

    # Unescape common LaTeX escapes in remaining text.
    text = text.replace("\\$", "$").replace("\\%", "%").replace("\\_", "_")

    text = MD_LINK_RE.sub(r"\1", text)

    def _wikilink_repl(m: re.Match[str]) -> str:
        target = m.group(1).strip()
        alias = (m.group(2) or "").strip()
        return alias or target

    text = WIKI_LINK_RE.sub(_wikilink_repl, text)

    # Strip headings markers but keep heading text.
    text = re.sub(r"(?m)^\s{0,3}#{1,6}\s+", "", text)
    # Drop blockquote markers.
    text = re.sub(r"(?m)^\s*>\s?", "", text)
    # Remove emphasis markers (cheap).
    text = text.replace("**", "").replace("__", "").replace("*", "").replace("_", "")
    # Remove HTML tags that occasionally show up.
    text = HTML_TAG_RE.sub(" ", text)

    # Drop tables/diagrams/equation-ish lines that slipped through.
    kept_lines: list[str] = []
    for line in text.splitlines():
        if _looks_like_nontext_line(line):
            continue
        kept_lines.append(line)
    text = "\n".join(kept_lines)

    # Heal "spaced letter" OCR artifacts: "e q u i t y" -> "equity"
    def _collapse_spaced_letters(m: re.Match[str]) -> str:
        return re.sub(r"\s+", "", m.group(0))

    text = re.sub(r"\b(?:[A-Za-z]\s+){3,}[A-Za-z]\b", _collapse_spaced_letters, text)

    # Collapse whitespace (keep paragraphs lightly).
    text = re.sub(r"[ \t\r\f\v]+", " ", text)
    text = re.sub(r"\n{3,}", "\n\n", text)
    return text.strip()


def split_headings_and_body(md_text: str) -> tuple[str, str]:
    """Extract a lightweight 'heading-only' string plus the full body string."""
    headings: list[str] = []
    body_lines: list[str] = []
    for line in md_text.splitlines():
        if re.match(r"^\s{0,3}#{1,6}\s+\S", line):
            headings.append(line)
        body_lines.append(line)
    return "\n".join(headings), "\n".join(body_lines)


def word_count(text: str) -> int:
    return len(text.split())


def decide_counts(total_words: int, primary_min: int, primary_max: int, secondary_max: int) -> tuple[int, int]:
    """
    Map document length → (primary_n, secondary_n).
    Tuned for this vault’s distribution (median ~7k words; max >1M words).
    """
    if total_words <= 5_000:
        primary = 2
        secondary = min(10, secondary_max)
    elif total_words <= 15_000:
        primary = 4
        secondary = min(15, secondary_max)
    elif total_words <= 50_000:
        primary = 6
        secondary = min(20, secondary_max)
    elif total_words <= 150_000:
        primary = 8
        secondary = secondary_max
    else:
        primary = 10
        secondary = secondary_max

    primary = max(primary_min, min(primary, primary_max))
    secondary = min(secondary, secondary_max)
    return primary, secondary


def analysis_budget_words(total_words: int) -> int:
    """
    Bound work per document.
    - For small/medium docs: use full text.
    - For huge docs: sample ~200k words total (enough for stable phrase frequencies).
    """
    if total_words <= 120_000:
        return total_words
    if total_words <= 300_000:
        return 180_000
    return 220_000


def tokenize(text: str) -> list[str]:
    return [m.group(0).lower() for m in TOKEN_RE.finditer(text)]


def sample_tokens(tokens: Sequence[str], budget: int) -> list[str]:
    """Sample contiguous windows from tokens to meet a word budget."""
    if budget <= 0 or len(tokens) <= budget:
        return list(tokens)

    # Heuristic: 40% from the front, the rest as evenly-spaced windows.
    front = int(budget * 0.40)
    remainder = budget - front
    out: list[str] = list(tokens[:front])

    if remainder <= 0:
        return out

    windows = 20
    window_size = max(500, remainder // windows)
    windows = max(1, remainder // window_size)

    start_min = front
    start_max = max(start_min, len(tokens) - window_size)
    if start_max <= start_min:
        out.extend(tokens[start_min : start_min + remainder])
        return out[:budget]

    # Evenly spaced window starts.
    for i in range(windows):
        t = i / max(1, windows - 1)
        start = int(start_min + t * (start_max - start_min))
        out.extend(tokens[start : start + window_size])
        if len(out) >= budget:
            break

    return out[:budget]


def is_bad_token(tok: str) -> bool:
    if tok in DOMAIN_STOP_TOKENS:
        return True
    if tok.startswith("http"):
        return True
    return False


def _looks_like_section_number(tok: str) -> bool:
    """
    Heuristic: treat tokens like "3.3" or small bare numbers ("12") as section/exercise numbers.
    We do NOT want to drop things like "s&p 500", so large integers are allowed.
    """
    t = (tok or "").strip().lower()
    if not t:
        return False

    # Tokens like "a.1.2" or "3.3" are almost always section/exercise labels in textbooks/notes.
    # We intentionally do not treat "s&p" as a section label since it has no digits.
    if "." in t and any(ch.isdigit() for ch in t):
        return True

    if any(ch.isalpha() for ch in t):
        return False
    if any(ch in t for ch in ".:/"):
        return True
    if t.isdigit():
        try:
            n = int(t)
        except Exception:
            return True
        # Years tend to be metadata/headers rather than keyphrases ("2021 ...").
        if 1900 <= n <= 2100:
            return True
        return n <= 30
    return False


def ngram_candidates(tokens: Sequence[str], n: int) -> Iterator[tuple[str, tuple[str, ...]]]:
    """
    Yield (phrase_string, phrase_tokens) for valid n-grams under the constraints:
    - 2–4 words overall (n is 2..4)
    - boundary tokens cannot be stopwords
    - allow internal stopwords (e.g., "cost of capital")
    """
    if len(tokens) < n:
        return
    for i in range(len(tokens) - n + 1):
        gram = tuple(tokens[i : i + n])
        first, last = gram[0], gram[-1]

        # Drop 1-letter alphabetic tokens (common artifact when a note contains literal "\\n").
        if any(len(t) == 1 and t.isalpha() for t in gram):
            continue
        # Drop single-digit numeric tokens (common numbering artifacts: "1 justification", "exhibit 2", etc.).
        if any(t.isdigit() and len(t) == 1 for t in gram):
            continue
        # Drop section-number-ish tokens anywhere ("interest 1.1 principal", "a.1.2 set-builder notation", etc.).
        if any(_looks_like_section_number(t) for t in gram):
            continue
        # Drop repeated-token phrases like "scratch scratch scratch scratch".
        if len(set(gram)) == 1:
            continue
        # Drop phrases with any repeated token ("... estimating ... estimating").
        if len(set(gram)) != len(gram):
            continue

        if first in STOPWORDS or last in STOPWORDS:
            continue
        # Drop section-number-ish boundary tokens ("3.3 value-at-risk", "12 operating", etc.).
        if _looks_like_section_number(first) or _looks_like_section_number(last):
            continue
        if is_bad_token(first) or is_bad_token(last):
            continue

        stop_count = sum(1 for t in gram if t in STOPWORDS)
        # Allow some internal stopwords, but not too many.
        if n == 2 and stop_count > 0:
            continue
        if n == 3 and stop_count > 1:
            continue
        if n == 4 and stop_count > 2:
            continue

        # Must contain at least one alphabetic character somewhere.
        if not any(any(c.isalpha() for c in t) for t in gram):
            continue

        phrase = " ".join(gram)
        yield phrase, gram


def jaccard_tokens(a: Sequence[str], b: Sequence[str]) -> float:
    sa, sb = set(a), set(b)
    if not sa and not sb:
        return 1.0
    if not sa or not sb:
        return 0.0
    return len(sa & sb) / len(sa | sb)


def select_diverse(
    scored_phrases: list[tuple[str, float, tuple[str, ...]]],
    limit: int,
    already_selected: list[tuple[str, tuple[str, ...]]] | None = None,
    redundancy_jaccard: float = 0.60,
) -> list[str]:
    """
    Greedy selection with a redundancy gate (substring + token Jaccard).
    This approximates MMR without embeddings.
    """
    selected: list[tuple[str, tuple[str, ...]]] = list(already_selected or [])
    out: list[str] = []

    for phrase, score, toks in scored_phrases:
        if len(out) >= limit:
            break

        redundant = False
        for sel_phrase, sel_toks in selected:
            if phrase == sel_phrase:
                redundant = True
                break
            # substring containment catches near-duplicates like "interest rate" vs "interest rate risk"
            if phrase in sel_phrase or sel_phrase in phrase:
                redundant = True
                break
            if jaccard_tokens(toks, sel_toks) >= redundancy_jaccard:
                redundant = True
                break

        if redundant:
            continue

        selected.append((phrase, toks))
        out.append(phrase)

    return out


@dataclass(frozen=True)
class ExtractionResult:
    word_count: int
    primary: list[str]
    secondary: list[str]


def cache_signature(args: argparse.Namespace) -> str:
    # Any change here invalidates old cache entries (intentionally).
    parts = [
        EXTRACTOR_VERSION,
        f"mode={args.mode}",
        f"primary_min={args.primary_min}",
        f"primary_max={args.primary_max}",
        f"secondary_max={args.secondary_max}",
    ]
    if args.mode == "semantic":
        parts.extend(
            [
                f"max_candidates={args.max_candidates}",
                f"semantic_alpha={args.semantic_alpha}",
                f"mmr_diversity={args.mmr_diversity}",
                f"doc_snippets={args.doc_snippets}",
                f"snippet_words={args.snippet_words}",
                f"embed_model={args.embed_model}",
                f"embed_dtype={args.embed_dtype}",
                f"encode_batch_size={args.encode_batch_size}",
                f"trust_remote_code={args.trust_remote_code}",
                f"device={args.device}",
            ]
        )
        reranker_model = getattr(args, "reranker_model", "") or ""
        if reranker_model.strip():
            parts.extend(
                [
                    f"reranker_model={reranker_model.strip()}",
                    f"reranker_device={getattr(args,'reranker_device', 'auto')}",
                    f"reranker_dtype={getattr(args,'reranker_dtype', 'auto')}",
                    f"reranker_top_k={getattr(args,'reranker_top_k', 0)}",
                    f"reranker_beta={getattr(args,'reranker_beta', 0.0)}",
                    f"reranker_max_length={getattr(args,'reranker_max_length', 0)}",
                    f"reranker_batch_size={getattr(args,'reranker_batch_size', 0)}",
                    f"reranker_window_words={getattr(args,'reranker_window_words', 0)}",
                    f"reranker_global_snippets={getattr(args,'reranker_global_snippets', 0)}",
                    f"reranker_global_words={getattr(args,'reranker_global_words', 0)}",
                    f"reranker_doc_words={getattr(args,'reranker_doc_words', 0)}",
                    f"reranker_instruction={getattr(args,'reranker_instruction', '')}",
                ]
            )
    return "|".join(parts)


def load_cache(path: Path, expected_signature: str) -> dict[str, dict]:
    """
    Cache is best-effort: on parse errors or schema mismatch, we ignore it.
    Shape:
      { "schema_version": int, "signature": str, "entries": { relpath: {...} } }
    """
    try:
        raw = json.loads(path.read_text(encoding="utf-8"))
    except FileNotFoundError:
        return {}
    except Exception:
        return {}

    if not isinstance(raw, dict):
        return {}
    if raw.get("schema_version") != CACHE_SCHEMA_VERSION:
        return {}
    if raw.get("signature") != expected_signature:
        return {}
    entries = raw.get("entries")
    if not isinstance(entries, dict):
        return {}
    # Filter to dict values only.
    out: dict[str, dict] = {}
    for k, v in entries.items():
        if isinstance(k, str) and isinstance(v, dict):
            out[k] = v
    return out


def save_cache(path: Path, signature: str, entries: dict[str, dict]) -> None:
    payload = {"schema_version": CACHE_SCHEMA_VERSION, "signature": signature, "entries": entries}
    tmp_path = path.with_suffix(path.suffix + ".tmp")
    tmp_path.write_text(json.dumps(payload, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    tmp_path.replace(path)


def build_scored_candidates(
    boosted_tokens: Sequence[str],
    *,
    total_words: int,
) -> tuple[list[tuple[str, float, tuple[str, ...]]], dict[str, tuple[str, ...]], dict[str, int]]:
    # Dynamic frequency threshold to avoid noisy one-offs in huge docs.
    if total_words <= 15_000:
        min_count = 2
    elif total_words <= 80_000:
        min_count = 3
    elif total_words <= 200_000:
        min_count = 4
    else:
        min_count = 6

    counts: dict[str, int] = {}
    phrase_tokens: dict[str, tuple[str, ...]] = {}

    for n in (2, 3, 4):
        for phrase, toks in ngram_candidates(boosted_tokens, n):
            # a tiny guard against garbage
            if "  " in phrase:
                continue
            counts[phrase] = counts.get(phrase, 0) + 1
            if phrase not in phrase_tokens:
                phrase_tokens[phrase] = toks

    # Score: log(count) with extra reward for multiple occurrences.
    scored: list[tuple[str, float, tuple[str, ...]]] = []
    for phrase, cnt in counts.items():
        if cnt < min_count:
            continue
        toks = phrase_tokens[phrase]
        # Penalize phrases with domain boilerplate tokens anywhere.
        if any(is_bad_token(t) for t in toks):
            continue
        score = math.log1p(cnt)
        scored.append((phrase, score, toks))

    scored.sort(key=lambda x: x[1], reverse=True)
    return scored, phrase_tokens, counts


def _safe_import_sentence_transformers():
    try:
        from sentence_transformers import SentenceTransformer  # type: ignore

        return SentenceTransformer
    except Exception:
        return None


def _safe_import_transformers():
    try:
        from transformers import AutoModelForCausalLM, AutoTokenizer  # type: ignore

        return AutoTokenizer, AutoModelForCausalLM
    except Exception:
        return None, None


def _l2_normalize(vec: list[float]) -> list[float]:
    norm = math.sqrt(sum(v * v for v in vec)) or 1.0
    return [v / norm for v in vec]


def _dot(a: Sequence[float], b: Sequence[float]) -> float:
    return sum(x * y for x, y in zip(a, b))


@dataclass(frozen=True)
class YesNoReranker:
    tokenizer: object
    model: object
    token_true_id: int
    token_false_id: int
    prefix_tokens: list[int]
    suffix_tokens: list[int]


def _resolve_device(device: str) -> str:
    d = (device or "auto").strip().lower()
    if d != "auto":
        return d
    try:
        import torch  # type: ignore

        if torch.backends.mps.is_available():
            return "mps"
        if torch.cuda.is_available():
            return "cuda"
    except Exception:
        pass
    return "cpu"


def _resolve_dtype(device: str, dtype: str):
    try:
        import torch  # type: ignore
    except Exception:
        return None

    dtype_lc = (dtype or "auto").strip().lower()
    dev = (device or "auto").strip().lower()
    if dtype_lc == "auto":
        if dev in {"mps", "cuda"}:
            return torch.float16
        return torch.float32
    if dtype_lc in {"float16", "fp16"}:
        return torch.float16
    if dtype_lc in {"bfloat16", "bf16"}:
        return torch.bfloat16
    if dtype_lc in {"float32", "fp32"}:
        return torch.float32
    raise ValueError(f"Unknown dtype: {dtype!r} (use auto|float16|bfloat16|float32)")


def load_yesno_reranker(*, model_id: str, device: str, dtype: str) -> YesNoReranker:
    """
    Load a Qwen3-Reranker style yes/no reranker on the requested device.

    Scoring matches the model card: compute p(yes) from the logits of the last token.
    """
    AutoTokenizer, AutoModelForCausalLM = _safe_import_transformers()
    if AutoTokenizer is None or AutoModelForCausalLM is None:
        raise RuntimeError("Reranker requires `transformers` + `torch` in your Python environment.")

    import torch  # type: ignore

    dev = _resolve_device(device)
    dt = _resolve_dtype(dev, dtype)
    if dt is None:
        raise RuntimeError("Reranker requires `torch` to be installed.")

    tokenizer = AutoTokenizer.from_pretrained(model_id, padding_side="left")
    # Some causal-LM tokenizers ship without a pad token; align with common practice (pad=eos).
    if getattr(tokenizer, "pad_token_id", None) is None and getattr(tokenizer, "eos_token_id", None) is not None:
        try:
            tokenizer.pad_token = tokenizer.eos_token  # type: ignore[attr-defined]
        except Exception:
            pass

    try:
        model = AutoModelForCausalLM.from_pretrained(model_id, dtype=dt)
    except TypeError:
        # Back-compat for older Transformers versions.
        model = AutoModelForCausalLM.from_pretrained(model_id, torch_dtype=dt)
    model = model.to(dev).eval()

    token_false_id = tokenizer.convert_tokens_to_ids("no")
    token_true_id = tokenizer.convert_tokens_to_ids("yes")
    if token_false_id is None or token_true_id is None or token_false_id < 0 or token_true_id < 0:
        raise RuntimeError("Could not find 'yes'/'no' token ids in tokenizer; reranker scoring cannot proceed.")

    prefix = (
        "<|im_start|>system\n"
        "Judge whether the Document meets the requirements based on the Query and the Instruct provided. "
        "Note that the answer can only be \"yes\" or \"no\".<|im_end|>\n"
        "<|im_start|>user\n"
    )
    suffix = "<|im_end|>\n<|im_start|>assistant\n<think>\n\n</think>\n\n"
    prefix_tokens = tokenizer.encode(prefix, add_special_tokens=False)
    suffix_tokens = tokenizer.encode(suffix, add_special_tokens=False)

    return YesNoReranker(
        tokenizer=tokenizer,
        model=model,
        token_true_id=int(token_true_id),
        token_false_id=int(token_false_id),
        prefix_tokens=prefix_tokens,
        suffix_tokens=suffix_tokens,
    )


def score_yesno_reranker(
    reranker: YesNoReranker,
    *,
    instruction: str,
    queries: Sequence[str],
    documents: Sequence[str],
    max_length: int,
    batch_size: int,
) -> list[float]:
    """Return p(yes) scores in the same order as (queries, documents)."""
    if len(queries) != len(documents):
        raise ValueError("queries and documents must have the same length")
    if not queries:
        return []

    import torch  # type: ignore

    tokenizer = reranker.tokenizer
    model = reranker.model

    def _format(instruction_text: str, q: str, d: str) -> str:
        inst = instruction_text or "Given a web search query, retrieve relevant passages that answer the query"
        return f"<Instruct>: {inst}\n<Query>: {q}\n<Document>: {d}"

    pairs = [_format(instruction, q, d) for q, d in zip(queries, documents)]
    max_length = int(max_length) if max_length else 1024
    max_length = max(256, min(max_length, 8192))
    batch_size = max(1, int(batch_size) if batch_size else 1)

    scores: list[float] = []
    with torch.no_grad():
        for start in range(0, len(pairs), batch_size):
            batch = pairs[start : start + batch_size]
            inputs = tokenizer(
                batch,
                padding=False,
                truncation="longest_first",
                return_attention_mask=False,
                max_length=max_length - len(reranker.prefix_tokens) - len(reranker.suffix_tokens),
            )
            for i, ids in enumerate(inputs["input_ids"]):
                inputs["input_ids"][i] = reranker.prefix_tokens + ids + reranker.suffix_tokens
            inputs = tokenizer.pad(inputs, padding="max_length", return_tensors="pt", max_length=max_length)
            for k in inputs:
                inputs[k] = inputs[k].to(model.device)

            logits = model(**inputs).logits[:, -1, :]
            true_v = logits[:, reranker.token_true_id]
            false_v = logits[:, reranker.token_false_id]
            two = torch.stack([false_v, true_v], dim=1)
            probs = torch.softmax(two, dim=1)[:, 1]
            scores.extend(probs.detach().float().cpu().tolist())

    return scores


def build_doc_snippets(
    *,
    headings: str,
    body_tokens_all: Sequence[str],
    snippet_words: int,
    max_snippets: int,
) -> list[str]:
    """
    Build a small list of representative text snippets for doc embeddings.
    We intentionally DO NOT embed the full doc (too long); instead we average snippet embeddings.
    """
    snippets: list[str] = []

    # Headings matter a lot in an Obsidian vault; include them as one snippet if present.
    # Filter out obvious placeholder/boilerplate tokens so they don't dominate the doc embedding.
    headings_words = [w for w in headings.split() if w and w.lower() not in DOMAIN_STOP_TOKENS]
    if headings_words:
        snippets.append(" ".join(headings_words[: max(40, min(snippet_words, 300))]))

    tokens = list(body_tokens_all)
    if not tokens:
        return snippets

    if snippet_words <= 0:
        snippet_words = 256
    if max_snippets <= 0:
        max_snippets = 12

    if len(tokens) <= snippet_words:
        snippets.append(" ".join(tokens))
        return snippets[:max_snippets]

    # Always include the front.
    snippets.append(" ".join(tokens[:snippet_words]))

    # Then spread remaining snippets across the document.
    remaining = max_snippets - len(snippets)
    if remaining <= 0:
        return snippets[:max_snippets]

    start_min = snippet_words
    start_max = max(start_min, len(tokens) - snippet_words)
    if start_max <= start_min:
        return snippets[:max_snippets]

    for i in range(remaining):
        t = (i + 1) / (remaining + 1)
        start = int(start_min + t * (start_max - start_min))
        snippets.append(" ".join(tokens[start : start + snippet_words]))

    return snippets[:max_snippets]


def truncate_words(text: str, max_words: int) -> str:
    if max_words <= 0:
        return text
    words = text.split()
    if len(words) <= max_words:
        return text
    return " ".join(words[:max_words])


def find_ngram_positions(tokens: Sequence[str], ngram: Sequence[str]) -> list[int]:
    n = len(ngram)
    if n == 0 or len(tokens) < n:
        return []
    out: list[int] = []
    first = ngram[0]
    last = ngram[-1]
    limit = len(tokens) - n
    for i in range(limit + 1):
        if tokens[i] != first or tokens[i + n - 1] != last:
            continue
        match = True
        for j in range(1, n - 1):
            if tokens[i + j] != ngram[j]:
                match = False
                break
        if match:
            out.append(i)
    return out


def phrase_context_window(
    *,
    tokens: Sequence[str],
    phrase_tokens: Sequence[str],
    window_words: int,
    fallback_words: int,
) -> str:
    """Return a short context window around a phrase occurrence (bounded)."""
    window_words = max(24, int(window_words or 0))
    fallback_words = max(24, int(fallback_words or window_words * 2))
    positions = find_ngram_positions(tokens, phrase_tokens)
    if not positions:
        return " ".join(tokens[: min(len(tokens), fallback_words)])
    pos = positions[len(positions) // 2]
    start = max(0, pos - window_words)
    end = min(len(tokens), pos + len(phrase_tokens) + window_words)
    return " ".join(tokens[start:end])


def build_reranker_document(
    *,
    global_context: str,
    phrase_context: str,
    max_words: int,
) -> str:
    doc = (global_context.strip() + "\n\n" + phrase_context.strip()).strip()
    return truncate_words(doc, max_words=max_words)


def select_mmr(
    phrases: Sequence[str],
    *,
    phrase_tokens: dict[str, tuple[str, ...]],
    relevance: Sequence[float],
    embeddings: Sequence[Sequence[float]],
    limit: int,
    diversity: float,
    already_selected: list[tuple[str, tuple[str, ...]]] | None = None,
) -> list[str]:
    """
    KeyBERT-style Maximal Marginal Relevance (MMR) selection.
    `relevance` is an arbitrary relevance score (e.g., semantic+lexical), higher is better.
    `embeddings` should be L2-normalized; we use dot products as cosine similarity.
    """
    if limit <= 0 or not phrases:
        return []

    diversity = max(0.0, min(1.0, diversity))
    selected_pairs: list[tuple[str, tuple[str, ...]]] = list(already_selected or [])

    # Track selected indices for MMR and keep the lexical redundancy gate (substring + Jaccard) as a guardrail.
    selected_idxs: list[int] = []

    # Pick first by relevance.
    best0 = max(range(len(phrases)), key=lambda i: relevance[i])
    selected_idxs.append(best0)
    selected_pairs.append((phrases[best0], phrase_tokens.get(phrases[best0], tuple())))
    out = [phrases[best0]]

    def is_redundant(i: int) -> bool:
        phrase = phrases[i]
        toks = phrase_tokens.get(phrase, tuple())
        for sel_phrase, sel_toks in selected_pairs:
            if phrase == sel_phrase:
                return True
            if phrase in sel_phrase or sel_phrase in phrase:
                return True
            if toks and sel_toks and jaccard_tokens(toks, sel_toks) >= 0.60:
                return True
        return False

    while len(out) < limit and len(selected_idxs) < len(phrases):
        best_i = None
        best_score = None

        for i in range(len(phrases)):
            if i in selected_idxs:
                continue
            if is_redundant(i):
                continue

            # Penalize similarity to already-selected phrases.
            max_sim = 0.0
            for j in selected_idxs:
                sim = _dot(embeddings[i], embeddings[j])
                if sim > max_sim:
                    max_sim = sim

            score = (1.0 - diversity) * relevance[i] - diversity * max_sim
            if best_score is None or score > best_score:
                best_score = score
                best_i = i

        if best_i is None:
            break

        selected_idxs.append(best_i)
        selected_pairs.append((phrases[best_i], phrase_tokens.get(phrases[best_i], tuple())))
        out.append(phrases[best_i])

    return out[:limit]


def extract_keyphrases_fast(md_text: str, *, primary_min: int, primary_max: int, secondary_max: int) -> ExtractionResult | None:
    headings_md, body_md = split_headings_and_body(md_text)
    headings = clean_markdown(headings_md)
    body = clean_markdown(body_md)

    total_words = word_count(body)
    if total_words < 300:
        return None

    primary_n, secondary_n = decide_counts(total_words, primary_min, primary_max, secondary_max)
    budget = analysis_budget_words(total_words)

    body_tokens_all = tokenize(body)
    body_tokens = sample_tokens(body_tokens_all, budget)

    headings_tokens = tokenize(headings)
    # Boost headings by duplicating them (simple but effective).
    boosted_tokens = headings_tokens + headings_tokens + body_tokens

    scored, phrase_tokens, _counts = build_scored_candidates(boosted_tokens, total_words=total_words)

    # Primary: more strict redundancy; secondary: a bit looser.
    primaries = select_diverse(scored, primary_n, redundancy_jaccard=0.55)
    prim_toks = [(p, phrase_tokens[p]) for p in primaries if p in phrase_tokens]

    secondaries = select_diverse(
        scored,
        secondary_n,
        already_selected=prim_toks,
        redundancy_jaccard=0.65,
    )

    return ExtractionResult(word_count=total_words, primary=primaries, secondary=secondaries)


def select_mmr_np(
    phrases: Sequence[str],
    *,
    phrase_tokens: dict[str, tuple[str, ...]],
    relevance: Sequence[float],
    embeddings,  # numpy array-like (n, d)
    limit: int,
    diversity: float,
    already_selected: list[tuple[str, tuple[str, ...]]] | None = None,
    redundancy_jaccard: float = 0.60,
) -> list[str]:
    """
    Numpy-accelerated MMR selection.
    `embeddings` MUST be L2-normalized rows (cosine sim via dot).
    """
    if limit <= 0 or not phrases:
        return []

    try:
        import numpy as np  # type: ignore
    except Exception:
        # Fallback to pure-Python path.
        scored = [(p, float(relevance[i]), phrase_tokens.get(p, tuple())) for i, p in enumerate(phrases)]
        scored.sort(key=lambda x: x[1], reverse=True)
        return select_diverse(scored, limit, already_selected=already_selected, redundancy_jaccard=redundancy_jaccard)

    embs = np.asarray(embeddings, dtype=np.float32)
    rel = np.asarray(list(relevance), dtype=np.float32)
    n = len(phrases)
    limit = min(limit, n)
    diversity = float(max(0.0, min(1.0, diversity)))

    selected_pairs: list[tuple[str, tuple[str, ...]]] = list(already_selected or [])
    idx_by_phrase = {p: i for i, p in enumerate(phrases)}
    selected_mask = np.zeros(n, dtype=bool)
    max_sim = np.zeros(n, dtype=np.float32)

    # Seed from already_selected.
    for p, toks in selected_pairs:
        i = idx_by_phrase.get(p)
        if i is None:
            continue
        selected_mask[i] = True
    for i in np.where(selected_mask)[0].tolist():
        max_sim = np.maximum(max_sim, embs @ embs[i])

    def is_redundant_phrase(p: str, toks: tuple[str, ...]) -> bool:
        for sel_p, sel_toks in selected_pairs:
            if p == sel_p:
                return True
            if p in sel_p or sel_p in p:
                return True
            if toks and sel_toks and jaccard_tokens(toks, sel_toks) >= redundancy_jaccard:
                return True
        return False

    out: list[str] = []

    # Pick the first by max relevance (skipping redundancy).
    order = np.argsort(-rel)
    for i in order.tolist():
        if selected_mask[i]:
            continue
        p = phrases[i]
        toks = phrase_tokens.get(p, tuple())
        if is_redundant_phrase(p, toks):
            continue
        selected_mask[i] = True
        selected_pairs.append((p, toks))
        out.append(p)
        max_sim = np.maximum(max_sim, embs @ embs[i])
        break

    while len(out) < limit:
        best_i = None
        best_score = None
        for i in range(n):
            if selected_mask[i]:
                continue
            p = phrases[i]
            toks = phrase_tokens.get(p, tuple())
            if is_redundant_phrase(p, toks):
                continue
            score = (1.0 - diversity) * float(rel[i]) - diversity * float(max_sim[i])
            if best_score is None or score > best_score:
                best_score = score
                best_i = i
        if best_i is None:
            break
        p = phrases[best_i]
        toks = phrase_tokens.get(p, tuple())
        selected_mask[best_i] = True
        selected_pairs.append((p, toks))
        out.append(p)
        max_sim = np.maximum(max_sim, embs @ embs[best_i])

    return out[:limit]


def extract_keyphrases_semantic(
    md_text: str,
    *,
    primary_min: int,
    primary_max: int,
    secondary_max: int,
    semantic_alpha: float,
    max_candidates: int,
    mmr_diversity: float,
    doc_snippets: int,
    snippet_words: int,
    embedder: object,
    encode_batch_size: int,
    reranker: YesNoReranker | None,
    reranker_instruction: str,
    reranker_top_k: int,
    reranker_beta: float,
    reranker_max_length: int,
    reranker_batch_size: int,
    reranker_window_words: int,
    reranker_global_snippets: int,
    reranker_global_words: int,
    reranker_doc_words: int,
    reranker_include_phrase_context: bool,
) -> ExtractionResult | None:
    """
    Two-stage extraction:
    1) Generate candidates + lexical scores (fast).
    2) Embed the doc (via a few snippets) + candidates and rerank by similarity.

    Requires `sentence-transformers` and its dependencies.
    """
    headings_md, body_md = split_headings_and_body(md_text)
    headings = clean_markdown(headings_md)
    body = clean_markdown(body_md)

    total_words = word_count(body)
    if total_words < 300:
        return None

    primary_n, secondary_n = decide_counts(total_words, primary_min, primary_max, secondary_max)

    # Candidate generation uses a bounded token budget.
    budget = analysis_budget_words(total_words)
    body_tokens_all = tokenize(body)
    body_tokens = sample_tokens(body_tokens_all, budget)
    headings_tokens = tokenize(headings)
    boosted_tokens = headings_tokens + headings_tokens + body_tokens

    scored_lex, phrase_tokens, _counts = build_scored_candidates(boosted_tokens, total_words=total_words)
    if not scored_lex:
        return None

    # Keep only top lexical candidates for embedding (bounded compute).
    scored_lex = scored_lex[: max(50, max_candidates)]

    phrases = [p for p, _s, _toks in scored_lex][:max_candidates]
    lex_scores = [s for _p, s, _toks in scored_lex][:max_candidates]
    max_lex = max(lex_scores) or 1.0
    lex_norm = [s / max_lex for s in lex_scores]

    # Build representative doc snippets and embed.
    snippets = build_doc_snippets(
        headings=headings,
        body_tokens_all=body_tokens_all,
        snippet_words=snippet_words,
        max_snippets=doc_snippets,
    )
    if not snippets:
        return None

    encode_batch_size = max(1, int(encode_batch_size or 1))
    sn_encode_kwargs = {"normalize_embeddings": True, "show_progress_bar": False, "batch_size": encode_batch_size}

    # Doc snippets: prefer using built-in "document" prompt if available.
    sn_embs = None
    if getattr(embedder, "prompts", None) and isinstance(getattr(embedder, "prompts"), dict) and "document" in embedder.prompts:  # type: ignore[attr-defined]
        try:
            sn_embs = embedder.encode(snippets, prompt_name="document", **sn_encode_kwargs)
        except Exception:
            sn_embs = None
    if sn_embs is None:
        sn_embs = embedder.encode(snippets, **sn_encode_kwargs)

    # Candidates: prefer using built-in "query" prompt if available.
    cand_encode_kwargs = {"normalize_embeddings": True, "show_progress_bar": False, "batch_size": encode_batch_size}
    cand_embs = None
    if getattr(embedder, "prompts", None) and isinstance(getattr(embedder, "prompts"), dict) and "query" in embedder.prompts:  # type: ignore[attr-defined]
        try:
            cand_embs = embedder.encode(phrases, prompt_name="query", **cand_encode_kwargs)
        except Exception:
            cand_embs = None
    if cand_embs is None:
        cand_embs = embedder.encode(phrases, **cand_encode_kwargs)

    # Vector math with numpy (fast) when available.
    try:
        import numpy as np  # type: ignore

        sn_arr = np.asarray(sn_embs, dtype=np.float32)
        if sn_arr.ndim != 2 or sn_arr.shape[0] == 0:
            return None
        doc_emb = sn_arr.mean(axis=0)
        doc_norm = float(np.linalg.norm(doc_emb)) or 1.0
        doc_emb = doc_emb / doc_norm

        cand_arr = np.asarray(cand_embs, dtype=np.float32)
        if cand_arr.ndim != 2 or cand_arr.shape[0] == 0:
            return None

        sims = cand_arr @ doc_emb
        semantic_alpha = float(max(0.0, min(1.0, semantic_alpha)))
        lex_arr = np.asarray(lex_norm, dtype=np.float32)
        relevance = semantic_alpha * sims + (1.0 - semantic_alpha) * lex_arr

        order = np.argsort(-relevance)
        phrases_sorted = [phrases[int(i)] for i in order.tolist()]
        relevance_sorted = relevance[order]
        embs_sorted = cand_arr[order]
    except Exception:
        # Fallback: slow python path.
        if hasattr(sn_embs, "tolist"):
            sn_list = sn_embs.tolist()
        else:
            sn_list = list(sn_embs)
        if not sn_list:
            return None
        dim = len(sn_list[0])
        doc_emb = [0.0] * dim
        for e in sn_list:
            e = list(e)
            for i in range(dim):
                doc_emb[i] += float(e[i])
        doc_emb = _l2_normalize(doc_emb)

        if hasattr(cand_embs, "tolist"):
            cand_list = cand_embs.tolist()
        else:
            cand_list = list(cand_embs)
        cand_list = [_l2_normalize([float(x) for x in e]) for e in cand_list]
        sims = [_dot(doc_emb, e) for e in cand_list]
        semantic_alpha = max(0.0, min(1.0, semantic_alpha))
        relevance = [semantic_alpha * sims[i] + (1.0 - semantic_alpha) * lex_norm[i] for i in range(len(phrases))]
        order = sorted(range(len(phrases)), key=lambda i: relevance[i], reverse=True)
        phrases_sorted = [phrases[i] for i in order]
        relevance_sorted = [relevance[i] for i in order]
        embs_sorted = [cand_list[i] for i in order]

    # Optional reranker polishing: only rerank a small candidate set.
    if reranker is not None and reranker_top_k and reranker_top_k > 0:
        top_k = min(int(reranker_top_k), len(phrases_sorted))
        beta = float(max(0.0, min(1.0, reranker_beta)))

        # Shared global context across phrases (headings + early snippet(s)).
        reranker_global_snippets = max(0, int(reranker_global_snippets or 0))
        reranker_global_words = max(50, int(reranker_global_words or 0))
        reranker_doc_words = max(reranker_global_words + 50, int(reranker_doc_words or 0))
        global_context = "\n\n".join(snippets[:reranker_global_snippets]) if reranker_global_snippets else ""
        global_context = truncate_words(global_context, max_words=reranker_global_words)

        # Use bounded tokens for context windows (keeps runtime bounded on huge docs).
        tokens_for_ctx = body_tokens
        queries = phrases_sorted[:top_k]
        docs: list[str] = []
        if reranker_include_phrase_context:
            for p in queries:
                toks = phrase_tokens.get(p, tuple())
                ctx = phrase_context_window(
                    tokens=tokens_for_ctx,
                    phrase_tokens=toks,
                    window_words=reranker_window_words,
                    fallback_words=min(len(tokens_for_ctx), max(80, reranker_global_words)),
                )
                docs.append(build_reranker_document(global_context=global_context, phrase_context=ctx, max_words=reranker_doc_words))
        else:
            # Global context only: avoids trivial "the phrase appears in the local window" -> yes.
            if not global_context:
                global_context = truncate_words("\n\n".join(snippets), max_words=reranker_global_words)
            docs = [global_context] * len(queries)

        rr_scores = score_yesno_reranker(
            reranker,
            instruction=reranker_instruction,
            queries=queries,
            documents=docs,
            max_length=reranker_max_length,
            batch_size=reranker_batch_size,
        )

        # Combine and re-sort within the top_k subset.
        try:
            import numpy as np  # type: ignore

            rel_top = np.asarray(relevance_sorted[:top_k], dtype=np.float32)
            rr = np.asarray(rr_scores, dtype=np.float32)
            combined = (1.0 - beta) * rel_top + beta * rr
            rr_order = np.argsort(-combined)
            phrases_sorted = [queries[int(i)] for i in rr_order.tolist()] + phrases_sorted[top_k:]
            relevance_sorted = np.concatenate([combined[rr_order], np.asarray(relevance_sorted[top_k:], dtype=np.float32)], axis=0)
            embs_sorted = np.concatenate([np.asarray(embs_sorted[:top_k])[rr_order], np.asarray(embs_sorted[top_k:])], axis=0)
        except Exception:
            combined = [
                (1.0 - beta) * float(relevance_sorted[i]) + beta * float(rr_scores[i]) for i in range(top_k)  # type: ignore[index]
            ]
            rr_order = sorted(range(top_k), key=lambda i: combined[i], reverse=True)
            phrases_sorted = [queries[i] for i in rr_order] + phrases_sorted[top_k:]
            if isinstance(relevance_sorted, list):
                relevance_sorted = [combined[i] for i in rr_order] + relevance_sorted[top_k:]
            if isinstance(embs_sorted, list):
                embs_sorted = [embs_sorted[i] for i in rr_order] + embs_sorted[top_k:]

    # Final selection with diversity.
    primaries = select_mmr_np(
        phrases_sorted,
        phrase_tokens=phrase_tokens,
        relevance=relevance_sorted,
        embeddings=embs_sorted,
        limit=primary_n,
        diversity=mmr_diversity,
        redundancy_jaccard=0.55,
    )
    prim_toks = [(p, phrase_tokens.get(p, tuple())) for p in primaries]

    secondaries = select_mmr_np(
        phrases_sorted,
        phrase_tokens=phrase_tokens,
        relevance=relevance_sorted,
        embeddings=embs_sorted,
        limit=secondary_n,
        diversity=max(0.0, min(1.0, mmr_diversity + 0.10)),
        already_selected=prim_toks,
        redundancy_jaccard=0.65,
    )

    return ExtractionResult(word_count=total_words, primary=primaries, secondary=secondaries)


def iter_target_markdown_files(vault_root: Path) -> Iterator[Path]:
    # Only top-level dirs I. .. X.
    for child in vault_root.iterdir():
        if not child.is_dir():
            continue
        if not ROMAN_TOPLEVEL_RE.match(child.name):
            continue
        for p in child.rglob("*.md"):
            # skip hidden dirs/files
            if any(part.startswith(".") for part in p.parts):
                continue
            yield p


def main() -> int:
    ap = argparse.ArgumentParser(description="Extract 2–4 word keyphrases from FinanceCompendium notes (folders I–X).")
    ap.add_argument("--vault-root", default=VAULT_ROOT_DEFAULT, help="Path to the Obsidian vault root.")
    ap.add_argument("--out-md", default=None, help="Markdown report output path (default: logs/keyphrases_report.md).")
    ap.add_argument("--out-jsonl", default=None, help="JSONL output path (default: logs/keyphrases_report.jsonl).")
    ap.add_argument("--max-files", type=int, default=0, help="If set, process only N files (for quick trials).")
    ap.add_argument(
        "--save-every",
        type=int,
        default=25,
        help="Write cache checkpoint every N computed files (0 disables). Useful for long runs.",
    )
    ap.add_argument(
        "--progress-every",
        type=int,
        default=25,
        help="Print progress every N files (0 disables).",
    )
    ap.add_argument("--mode", choices=["fast", "semantic"], default="fast", help="fast=lexical only; semantic=embedding rerank")
    ap.add_argument("--primary-min", type=int, default=2)
    ap.add_argument("--primary-max", type=int, default=10)
    ap.add_argument("--secondary-max", type=int, default=25)
    ap.add_argument("--max-candidates", type=int, default=600, help="Max candidate phrases to consider (bounds runtime).")
    ap.add_argument("--semantic-alpha", type=float, default=0.70, help="Weight for semantic similarity in semantic mode.")
    ap.add_argument("--mmr-diversity", type=float, default=0.65, help="MMR diversity in semantic mode (0..1).")
    ap.add_argument("--doc-snippets", type=int, default=12, help="How many document snippets to embed (semantic mode).")
    ap.add_argument("--snippet-words", type=int, default=256, help="Words per snippet used for doc embeddings (semantic mode).")
    ap.add_argument("--embed-model", default="all-MiniLM-L6-v2", help="SentenceTransformers model id for semantic mode.")
    ap.add_argument(
        "--embed-dtype",
        default="auto",
        help="Embedding dtype for semantic mode: auto|float16|bfloat16|float32. On MPS, float16 is usually fastest.",
    )
    ap.add_argument(
        "--encode-batch-size",
        type=int,
        default=16,
        help="SentenceTransformers encode batch size (semantic mode). Lower it if you hit MPS OOM.",
    )
    ap.add_argument(
        "--reranker-model",
        default="",
        help="Optional Transformers reranker model id (e.g. Qwen/Qwen3-Reranker-0.6B). Only used in semantic mode.",
    )
    ap.add_argument("--reranker-device", default="auto", help="Reranker device: auto|mps|cpu|cuda")
    ap.add_argument("--reranker-dtype", default="auto", help="Reranker dtype: auto|float16|bfloat16|float32")
    ap.add_argument("--reranker-top-k", type=int, default=40, help="Rerank only the top K candidates from embedding stage.")
    ap.add_argument("--reranker-beta", type=float, default=0.65, help="Weight of reranker score in final score (0..1).")
    ap.add_argument("--reranker-max-length", type=int, default=1024, help="Max token length for reranker (<=8192).")
    ap.add_argument("--reranker-batch-size", type=int, default=4, help="Reranker batch size.")
    ap.add_argument("--reranker-window-words", type=int, default=200, help="Context window around phrase for reranker doc.")
    ap.add_argument("--reranker-global-snippets", type=int, default=2, help="How many doc snippets to include as global context.")
    ap.add_argument("--reranker-global-words", type=int, default=220, help="Word budget for global context portion.")
    ap.add_argument("--reranker-doc-words", type=int, default=850, help="Total word budget for reranker document input.")
    ap.add_argument(
        "--reranker-instruction",
        default=(
            "Given a candidate keyphrase, judge whether the Document discusses the keyphrase as a meaningful central concept "
            "(not a section number, placeholder heading, example label, or boilerplate)."
        ),
        help="Instruction to use for reranker prompts.",
    )
    ap.add_argument(
        "--reranker-no-phrase-context",
        action="store_true",
        help="If set, build reranker Document from global snippets only (no local phrase window). Improves salience filtering.",
    )
    ap.add_argument("--trust-remote-code", action="store_true", help="Allow HF remote code when loading embedding model.")
    ap.add_argument("--device", default="auto", help="Embedding device: auto, cpu, or mps (Apple Silicon).")
    ap.add_argument(
        "--cache-file",
        default=None,
        help="Cache JSON path (default: logs/keyphrases_cache_v2_fast.json or ..._semantic.json, depending on mode).",
    )
    ap.add_argument("--no-cache", action="store_true", help="Disable caching (recompute everything).")
    ap.add_argument("--refresh", action="store_true", help="Ignore cache and recompute, then overwrite cache.")
    args = ap.parse_args()

    vault_root = Path(args.vault_root).expanduser().resolve()
    logs_dir = vault_root / "logs"
    logs_dir.mkdir(parents=True, exist_ok=True)

    out_md = Path(args.out_md).expanduser().resolve() if args.out_md else logs_dir / "keyphrases_report.md"
    out_jsonl = Path(args.out_jsonl).expanduser().resolve() if args.out_jsonl else logs_dir / "keyphrases_report.jsonl"
    cache_path = (
        Path(args.cache_file).expanduser().resolve()
        if args.cache_file
        else logs_dir / ("keyphrases_cache_v2_fast.json" if args.mode == "fast" else "keyphrases_cache_v2_semantic.json")
    )

    embedder: object | None = None
    reranker: YesNoReranker | None = None
    if args.mode == "semantic":
        # Avoid noisy HF tokenizers fork warnings unless the user explicitly opts in.
        os.environ.setdefault("TOKENIZERS_PARALLELISM", "false")

        SentenceTransformer = _safe_import_sentence_transformers()
        if SentenceTransformer is None:
            print(
                "ERROR: --mode semantic requires `sentence-transformers` (and torch). "
                "Create a Python 3.12 venv and install them before running semantic mode."
            )
            return 2

        # If reranker is requested, ensure transformers is available.
        if (args.reranker_model or "").strip():
            AutoTokenizer, AutoModelForCausalLM = _safe_import_transformers()
            if AutoTokenizer is None or AutoModelForCausalLM is None:
                print("ERROR: --reranker-model requires `transformers` + `torch`.")
                return 2

        resolved_device = _resolve_device(args.device)
        if resolved_device == "mps" and "PYTORCH_MPS_HIGH_WATERMARK_RATIO" not in os.environ:
            print(
                "NOTE: On Apple Silicon, large models may hit an MPS memory watermark. "
                "If you see 'MPS backend out of memory', re-run with: PYTORCH_MPS_HIGH_WATERMARK_RATIO=0.0"
            )

        # Build the embedder once and reuse it across files.
        is_qwen3_embedding = "qwen3-embedding" in (args.embed_model or "").lower()
        tokenizer_kwargs = {"padding_side": "left"} if is_qwen3_embedding else None
        dtype_value = _resolve_dtype(resolved_device, args.embed_dtype)

        st_base_kwargs = {"trust_remote_code": bool(args.trust_remote_code), "device": resolved_device}
        if tokenizer_kwargs is not None:
            st_base_kwargs["tokenizer_kwargs"] = tokenizer_kwargs

        model_kwargs_candidates: list[dict | None] = [None]
        if dtype_value is not None:
            # Transformers has historically used `torch_dtype`; Qwen examples often use `dtype`.
            model_kwargs_candidates = [{"dtype": dtype_value}, {"torch_dtype": dtype_value}, None]

        last_err: Exception | None = None
        for mk in model_kwargs_candidates:
            st_kwargs = dict(st_base_kwargs)
            if mk is not None:
                st_kwargs["model_kwargs"] = mk
            try:
                embedder = SentenceTransformer(args.embed_model, **st_kwargs)
                break
            except Exception as e:
                last_err = e
                embedder = None

        if embedder is None:
            try:
                # Backwards-compat path if SentenceTransformer kwargs differ.
                embedder = SentenceTransformer(args.embed_model)
                try:
                    embedder.to(resolved_device)  # type: ignore[attr-defined]
                except Exception:
                    pass
            except Exception as e:
                last_err = e
                embedder = None

        if embedder is None:
            print(f"ERROR: failed to load embedding model {args.embed_model!r}: {last_err}")
            return 2

        if is_qwen3_embedding and getattr(embedder, "tokenizer", None) is not None:
            try:
                embedder.tokenizer.padding_side = "left"  # type: ignore[attr-defined]
            except Exception:
                pass

        # Optionally load reranker once and reuse.
        if (args.reranker_model or "").strip():
            resolved_reranker_device = _resolve_device(args.reranker_device)
            if resolved_reranker_device == "mps" and "PYTORCH_MPS_HIGH_WATERMARK_RATIO" not in os.environ:
                print(
                    "NOTE: Reranker on MPS may also hit an MPS memory watermark. "
                    "If you see 'MPS backend out of memory', re-run with: PYTORCH_MPS_HIGH_WATERMARK_RATIO=0.0"
                )
            try:
                reranker = load_yesno_reranker(
                    model_id=args.reranker_model.strip(),
                    device=resolved_reranker_device,
                    dtype=args.reranker_dtype,
                )
            except Exception as e:
                print(f"ERROR: failed to load reranker model {args.reranker_model!r}: {e}")
                return 2

    sig = cache_signature(args)
    cache_entries: dict[str, dict] = load_cache(cache_path, sig) if not args.no_cache else {}
    use_cache = (not args.no_cache) and (not args.refresh)

    started = time.time()
    processed = 0
    cache_hits = 0
    skipped = 0
    errors = 0

    md_lines: list[str] = []
    md_lines.append(f"# Keyphrase Extraction Report ({EXTRACTOR_VERSION})")
    md_lines.append(f"Generated: {time.strftime('%Y-%m-%d %H:%M:%S')}")
    md_lines.append("")
    md_lines.append("Scope: top-level folders `I.` through `X.` (recursively).")
    md_lines.append("Keyphrases are **2–4 words**. Primary/secondary counts scale with document length.")
    md_lines.append(f"Mode: `{args.mode}`")
    md_lines.append("")

    # Line-buffered so results are visible (and durable) even if a long run is interrupted.
    with out_jsonl.open("w", encoding="utf-8", buffering=1) as jsonl_f:
        all_paths = list(iter_target_markdown_files(vault_root))
        all_paths.sort(key=lambda p: str(p))
        if args.max_files and int(args.max_files) > 0:
            all_paths = all_paths[: int(args.max_files)]
        total_files = len(all_paths)

        save_every = max(0, int(args.save_every or 0))
        progress_every = max(0, int(args.progress_every or 0))
        computed_since_save = 0

        def maybe_print_progress(i: int) -> None:
            if progress_every <= 0 or i % progress_every != 0:
                return
            elapsed_s = max(0.001, time.time() - started)
            rate = i / elapsed_s
            remaining = max(0, total_files - i)
            eta_s = remaining / max(1e-6, rate)
            eta_m = int(eta_s // 60)
            eta_r = int(eta_s % 60)
            print(
                f"[{i}/{total_files}] computed={processed} cache={cache_hits} skipped={skipped} errors={errors} "
                f"elapsed={elapsed_s/60:.1f}m rate={rate:.2f}/s eta={eta_m}m{eta_r:02d}s"
            )

        for i, path in enumerate(all_paths, start=1):
            did_compute = False

            rel = path.relative_to(vault_root)
            rel_key = str(rel)
            try:
                st = path.stat()
            except Exception:
                errors += 1
                maybe_print_progress(i)
                continue
            mtime_ns = getattr(st, "st_mtime_ns", int(st.st_mtime * 1_000_000_000))

            cached = cache_entries.get(rel_key) if use_cache else None
            if cached and cached.get("mtime_ns") == mtime_ns and cached.get("size") == st.st_size:
                cache_hits += 1
                payload = {
                    "file": rel_key,
                    "word_count": cached.get("word_count", 0),
                    "primary": cached.get("primary", []),
                    "secondary": cached.get("secondary", []),
                    "source": "cache",
                }
                jsonl_f.write(json.dumps(payload, ensure_ascii=False) + "\n")

                md_lines.append(f"## {rel}")
                md_lines.append(f"**Word Count:** {payload['word_count']}")
                md_lines.append("")
                md_lines.append("### Primary keyphrases")
                for p in payload["primary"]:
                    md_lines.append(f"- {p}")
                md_lines.append("")
                md_lines.append("### Secondary keyphrases")
                for s in payload["secondary"]:
                    md_lines.append(f"- {s}")
                md_lines.append("")
                md_lines.append("---")
                md_lines.append("")
                maybe_print_progress(i)
                continue

            try:
                text = path.read_text(encoding="utf-8", errors="ignore")
            except Exception as e:
                errors += 1
                maybe_print_progress(i)
                continue

            try:
                if args.mode == "semantic":
                    result = extract_keyphrases_semantic(
                        text,
                        primary_min=args.primary_min,
                        primary_max=args.primary_max,
                        secondary_max=args.secondary_max,
                        semantic_alpha=args.semantic_alpha,
                        max_candidates=args.max_candidates,
                        mmr_diversity=args.mmr_diversity,
                        doc_snippets=args.doc_snippets,
                        snippet_words=args.snippet_words,
                        embedder=embedder,  # type: ignore[arg-type]
                        encode_batch_size=args.encode_batch_size,
                        reranker=reranker,
                        reranker_instruction=args.reranker_instruction,
                        reranker_top_k=args.reranker_top_k,
                        reranker_beta=args.reranker_beta,
                        reranker_max_length=args.reranker_max_length,
                        reranker_batch_size=args.reranker_batch_size,
                        reranker_window_words=args.reranker_window_words,
                        reranker_global_snippets=args.reranker_global_snippets,
                        reranker_global_words=args.reranker_global_words,
                        reranker_doc_words=args.reranker_doc_words,
                        reranker_include_phrase_context=not bool(args.reranker_no_phrase_context),
                    )
                else:
                    result = extract_keyphrases_fast(
                        text,
                        primary_min=args.primary_min,
                        primary_max=args.primary_max,
                        secondary_max=args.secondary_max,
                    )
            except Exception:
                errors += 1
                maybe_print_progress(i)
                continue
            if result is None:
                skipped += 1
                maybe_print_progress(i)
                continue

            processed += 1
            did_compute = True
            payload = {
                "file": rel_key,
                "word_count": result.word_count,
                "primary": result.primary,
                "secondary": result.secondary,
                "source": "computed",
            }
            jsonl_f.write(json.dumps(payload, ensure_ascii=False) + "\n")

            if not args.no_cache:
                cache_entries[rel_key] = {
                    "mtime_ns": mtime_ns,
                    "size": st.st_size,
                    "word_count": result.word_count,
                    "primary": result.primary,
                    "secondary": result.secondary,
                }

            md_lines.append(f"## {rel}")
            md_lines.append(f"**Word Count:** {result.word_count}")
            md_lines.append("")
            md_lines.append("### Primary keyphrases")
            for p in result.primary:
                md_lines.append(f"- {p}")
            md_lines.append("")
            md_lines.append("### Secondary keyphrases")
            for s in result.secondary:
                md_lines.append(f"- {s}")
            md_lines.append("")
            md_lines.append("---")
            md_lines.append("")

            if (not args.no_cache) and did_compute and save_every > 0:
                computed_since_save += 1
                if computed_since_save >= save_every:
                    save_cache(cache_path, sig, cache_entries)
                    jsonl_f.flush()
                    computed_since_save = 0

            maybe_print_progress(i)

    out_md.write_text("\n".join(md_lines), encoding="utf-8")
    if not args.no_cache:
        save_cache(cache_path, sig, cache_entries)

    elapsed = time.time() - started
    print(f"Wrote: {out_md}")
    print(f"Wrote: {out_jsonl}")
    if not args.no_cache:
        print(f"Wrote: {cache_path}")
    print(
        f"Processed: {processed} | Cache hits: {cache_hits} | Skipped: {skipped} | Errors: {errors} | Elapsed: {elapsed:.1f}s"
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
