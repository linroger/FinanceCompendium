---
title: Translating Between Probability and Sets
parent_directory: I. Foundations/Mathematics
formatted: 2025-12-21 10:45:00 AM
formatter_model: claude-sonnet-4
cli-tool: claude-code
primary_tags:
- probability set theory
- event set translation
- sample space events
secondary_tags:
- random experiment
- mutually exclusive events
- independent events
- set operations
- card experiments
cssclasses: academia
---

# Translating Between Probability and Sets

Prof. Joe Blitzstein

Consider some random experiment, where $S$ consists of all possible outcomes (beforehand) and $s_0 \in S$ is the actual outcome (after the experiment). The language of sets (unions, intersections, etc.) gives us a way to work with events precisely. A dictionary translating between event terminology and set terminology is below.

<table><tr><td>Probability</td><td>Sets</td></tr><tr><td>sample space</td><td>S</td></tr><tr><td>a possible outcome s</td><td>s ∈ S</td></tr><tr><td>event A</td><td>A ⊆ S</td></tr><tr><td>A occurs</td><td>s0 ∈ A</td></tr><tr><td>A or B (inclusive)</td><td>A ∪ B</td></tr><tr><td>A and B</td><td>A∩B</td></tr><tr><td>not A</td><td>complement Ac</td></tr><tr><td>A and B are mutually exclusive</td><td>A∩B = ∅</td></tr><tr><td>A implies B</td><td>A ⊆ B</td></tr><tr><td>probability of A</td><td>P(A)</td></tr><tr><td>A and B are independent</td><td>P(A∩B) = P(A)P(B)</td></tr></table>

```d2
# Visualizing Set Operations in Probability
direction: right

sample_space: Sample Space S {
  shape: circle
  style.fill: "#e3f2fd"
}

event_a: Event A {
  shape: oval
  style.fill: "#c8e6c9"
}

event_b: Event B {
  shape: oval
  style.fill: "#ffcdd2"
}

sample_space -> event_a: A ⊆ S
sample_space -> event_b: B ⊆ S

union: A ∪ B {
  shape: diamond
  style.fill: "#fff3e0"
  near: right
}

intersection: A ∩ B {
  shape: diamond
  style.fill: "#f3e5f5"
  near: right
}

complement: A^c {
  shape: hexagon
  style.fill: "#e8eaf6"
  near: bottom-right
}

event_a -> union: or
event_b -> union: or
event_a -> intersection: and
event_b -> intersection: and
event_a -> complement: not
```

Example: Consider the experiment of picking a random card from a standard deck of 52 cards (with all cards equally likely), and the following four events:

A: card is a heart;
$B$: card is a diamond;
$C$: card is an ace;
$D$: card has a black suit.

As a set, $A$ consists of 13 cards: {Ace of Hearts, Two of Hearts, ..., King of Hearts}. What event is $A \cap C$ (describe in words)? What event is $A \cup B$? What about $(A \cup B) \cap (A \cup C)$? If the 3 of Clubs is drawn, which of $A, B, C, D$ occurred? How is $A \cup B$ related to $D^c$? If the card drawn were a Joker, what would you conclude about the sample space?

Example: A coin is flipped 10 times. Writing Heads as 1 and Tails as 0, the outcome is a sequence $(s_1,\ldots,s_{10})$ with $s_j\in \{0,1\}$, and the sample space $S$ consists of the $2^{10} = 1024$ such sequences. Let $A_j$ be the event that $s_j = 1$. How can the events "at least one flip was Heads", "exactly one flip was Heads", "all the flips were Heads", and "there were two consecutive Heads" be written compactly in set notation?