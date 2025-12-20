---
parent_directory: I. Foundations/Mathematics
title: Translating Between Probability and Sets
tags: null
aliases:
- Translating Between Probability and Sets
parent_folder: Mathematics
subfolder: null
key_concepts: null
cssclasses: academia
linter-yaml-title-alias: Translating Between Probability and Sets
primary_tags:
- all possible outcomes
- all cards
secondary_tags:
- some random experiment
- actual outcome
tags_extracted: '2025-12-18T17:58:52.835942'
tags_method: max_quality_v1
---

# Translating Between Probability and Sets Stat 110

Prof. Joe Blitzstein

Consider some random experiment, where  $S$  consists of all possible outcomes (beforehand) and  $s_0 \in S$  is the actual outcome (after the experiment). The language of sets (unions, intersections, etc.) gives us a way to work with events precisely. A dictionary translating between event terminology and set terminology is below.

<table><tr><td>Probability</td><td>Sets</td></tr><tr><td>sample space</td><td>S</td></tr><tr><td>a possible outcome s</td><td>s ∈ S</td></tr><tr><td>event A</td><td>A ⊆ S</td></tr><tr><td>A occurs</td><td>s0 ∈ A</td></tr><tr><td>A or B (inclusive)</td><td>A ∪ B</td></tr><tr><td>A and B</td><td>A∩B</td></tr><tr><td>not A</td><td>complement Ac</td></tr><tr><td>A and B are mutually exclusive</td><td>A∩B = ∅</td></tr><tr><td>A implies B</td><td>A ⊆ B</td></tr><tr><td>probability of A</td><td>P(A)</td></tr><tr><td>A and B are independent</td><td>P(A∩B) = P(A)P(B)</td></tr></table>

Example: Consider the experiment of picking a random card from a standard deck of 52 cards (with all cards equally likely), and the following four events:

A: card is a heart;  
$B$ : card is a diamond;  
$C$  : card is an ace;  
$D$  : card has a black suit.

As a set,  $A$  consists of 13 cards: {Ace of Hearts, Two of Hearts, ..., King of Hearts}. What event is  $A \cap C$  (describe in words)? What event is  $A \cup B$ ? What about  $(A \cup B) \cap (A \cup C)$ ? If the 3 of Clubs is drawn, which of  $A, B, C, D$  occurred? How is  $A \cup B$  related to  $D^c$ ? If the card drawn were a Joker, what would you conclude about the sample space?

Example: A coin is flipped 10 times. Writing Heads as 1 and Tails as 0, the outcome is a sequence  $(s_1,\ldots ,s_{10})$  with  $s_j\in \{0,1\}$ , and the sample space  $S$  consists of the  $2^{10} = 1024$  such sequences. Let  $A_{j}$  be the event that  $s_j = 1$ . How can the events "at least one flip was Heads", "exactly one flip was Heads", "all the flips were Heads", and "there were two consecutive Heads" be written compactly in set notation?