---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Appendix A
linter-yaml-title-alias: Appendix A
---

# Appendix A

# Definitions and Theorems

# A.1 Sets

# A.1.1 Standard Sets

- The natural numbers are

$$
\mathbb {N} = \{1, 2, 3, 4, 5, \ldots \}
$$

Note:  $0\notin \mathbb{N}$

- For every  $n \in \mathbb{N}$ , the set  $[n]$  ("brackets  $n$ " ) is defined by

$$
[ n ] = \{x \in \mathbb {N} \mid 1 \leq x \leq n \} = \{1, 2, 3, \ldots , n \}
$$

The integers are

$$
\mathbb {Z} = \{\dots , - 3, - 2, - 1, 0, 1, 2, 3, \dots \}
$$

- The rational numbers are

$$
\mathbb {Q} = \left\{x \in \mathbb {R} \mid \exists a, b \in \mathbb {Z}. b \neq 0 \text {a n d} \frac {a}{b} = x \right\}
$$

- The real numbers are denoted by  $\mathbb{R}$ . Every real number is either rational or irrational.  
- The empty set is the set that has no elements. We write it as  $\varnothing$  or  $\{\}$ .

# A.1.2 Set-Builder Notation

- If  $U$  is a set and  $P(x)$  is some property that either does or does not hold for any given  $x$ , then we can always define a new set by writing

$$
S = \{x \in U \mid P (x) \text {h o l d s} \}
$$

- This is called set-builder notation. It is essential to identify the universal set  $U$  and the property  $P(x)$ .

# A.1.3 Elements and Subsets

- To say "  $x$  is an element of the set  $S$  " we write

$$
x \in S
$$

To say "  $x$  is not an element of the set  $S$  " we write

$$
x \notin S
$$

- To say "  $S$  is a subset of  $T$  " we write

$$
S \subseteq T
$$

This is defined by the conditional statement "Every element of  $S$  is also an element of  $T$ ". This can be expressed as

$$
\forall x \in U. x \in S \Longrightarrow x \in T
$$

That is, for every element  $x$  of the universal set (supposing  $S, T \subseteq U$ ), whenever  $x \in S$ , we also know that  $x \in T$ .

- To prove that a set is a subset of another set, like  $S \subseteq T$ , we need to do something like this:

Let  $x \in S$  be arbitrary and fixed.

…blah blah blah …

Therefore,  $x\in T$  , as well.

This shows  $S \subseteq T$ .

- To say "  $S$  is a proper subset of  $T$ " we write

$$
S \subset T
$$

This means  $S \subseteq T$  and  $S \neq T$ .

- It is true that  $\varnothing \subseteq S$ , for any set  $S$ .  
- It is true that  $S \subseteq S$ , for any set  $S$ .

# A.1.4 Power Set

- Let  $S$  be a set. The power set of  $S$  is denoted by  $\mathcal{P}(S)$  and is defined by

$$
\mathcal {P} (S) = \{A \mid A \subseteq S \}
$$

That is,  $\mathcal{P}(S)$  is the set of all subsets of  $S$ .

- It is true that  $\varnothing \in \mathcal{P}(S)$  and  $S \in \mathcal{P}(S)$ , for any set  $S$ .

# A.1.5 Set Equality

- To say "  $S$  and  $T$  are equal sets", we write  $S = T$ . This is defined by

$$
S = T \text {i f a n d o n l y i f} S \subseteq T \text {a n d} T \subseteq S
$$

- To prove two sets are equal, like  $S = T$ , we need to do something like this:

First, we will prove  $S \subseteq T$ . Let  $x \in S$  be arbitrary and fixed.

…blah blah blah …

Therefore,  $x \in T$ . This shows  $S \subseteq T$ .

Second, we will prove  $T \subseteq S$ . Let  $y \in T$  be arbitrary and fixed.

…blah blah blah …

Therefore,  $x \in S$ . This shows  $T \subseteq S$ .

Therefore,  $S = T$

This is known as a double-containment argument.

# A.1.6 Set Operations

Suppose  $S, T, U$  are sets and  $S \subseteq U$  and  $T \subseteq U$ .

- The union of two sets is defined by

$$
S \cup T = \{x \in U \mid x \in S \text {o r} x \in T \}
$$

It is the set of all elements that belong to at least one of the two sets,  $S$  and  $T$ .

- The intersection of two sets is defined by

$$
S \cap T = \{x \in U \mid x \in S \text {a n d} x \in T \}
$$

It is the set of all elements that belong to both sets,  $S$  and  $T$ .

- The difference of two sets is defined by

$$
S - T = \{x \in U \mid x \in S \text {a n d} x \notin T \}
$$

It is the set of all elements of  $S$  that are not elements of  $T$ .

- The complement of a set is defined by

$$
\overline {{S}} = \{x \in U \mid x \notin S \} = U - S
$$

It is the set of all elements of the universal set that are not elements of  $S$ .

- The Cartesian product of two sets is defined by

$$
S \times T = \{(x, y) \mid x \in S \text {a n d} y \in T \}
$$

It is the set of all ordered pairs, where the first coordinate is an element of  $S$  and the second coordinate is an element of  $T$ .

# A.1.7 Indexed Set Operations

Suppose  $I$  is an index set and  $U$  is a universal set, and we have defined (for every  $i \in I$ ) some sets  $A_i \subseteq U$ .

- The indexed union of all of the  $A_{i}$  sets is defined by

$$
\bigcup_ {i \in I} A _ {i} = \left\{x \in U \mid \exists k \in I. x \in A _ {k} \right\}
$$

It is the set of all elements  $x$  in the universal set such that  $x$  is an element of at least one of the indexed sets in the union.

- The indexed intersection of all of the  $A_{i}$  sets is defined by

$$
\bigcap_ {i \in I} A _ {i} = \left\{x \in U \mid \forall i \in I. x \in A _ {i} \right\}
$$

It is the set of all elements  $x$  in the universal set such that  $x$  is an element of all of the indexed sets in the intersection.

# A.1.8 Partition

- Let  $S$  be a set. A partition of  $S$  is a collection of sets that are pairwise disjoint and whose union is  $S$ . That is, a partition is formed by an index set  $I$  and non-empty sets  $S_{i}$  (defined for every  $i \in I$ ) that satisfy:

$$
\begin{array}{l} - \forall i \in I. S _ {i} \neq \emptyset \\ - \forall i \in I. S _ {i} \subseteq S \\ - \forall i, j \in I. i \neq j \Rightarrow S _ {i} \cap S _ {j} = \varnothing \\ - \bigcup_ {i \in I} S _ {i} = S \\ \end{array}
$$

# A.2 Logic

# A.2.1 Statements and Propositions

- True and False are the only two truth values we consider.  
- A mathematical statement (or logical statement) is a grammatically-correct sentence that has exactly one truth value.  
- A variable proposition is a grammatically-correct sentence that involves one or more variables, such that it acquires exactly one truth value whenever a value(s) for the variable(s) is assigned.  
- When we define a statement or proposition, we assign it a letter name, indicate any dependence on variables (as well as assigning them letters), and enclose the actual statement/proposition within quotation marks. Here are two good examples:

Define  $P$  to be "Every real number  $x$  satisfies  $x^{2} \geq 0$ ".

Define  $Q(x,y)$  to be "  $xy \leq \left( \frac{x + y}{2} \right)^2$ ", for every  $x,y \in \mathbb{R}$ .

- The Law of the Excluded Middle is our assumption that every statement is either True or False. It states that, when we have a statement  $P$ , we are guaranteed that either  $P$  is True or  $P$  is False, and only one of those cases holds.

# A.2.2 Quantifiers

- To say "for every" or "for all" we use the universal quantifier  $\forall$  
"  $\forall x\in S$  .  $P(x)$  " says that "For every element  $x\in S$  , the property  $P(x)$  holds true".  
- To say "there exists" or "there is at least one" we use the existential quantifier  $\exists$  
"  $\exists x\in S$  .  $P(x)$  " says that "There exists an element  $x\in S$  with the property  $P(x)$  ".  
- We use the "…" dot to separate parts of a quantified statement.  
- When reading a quantified statement out loud, we say "such that" only after a  $\exists$  quantifier.  
- We use "!" to indicate that existence is unique; that is, the claim " $\exists! x \in S$ .  $P(x)$ " says that "There exists an element  $x \in S$  with property  $P(x)$ , and there is exactly one such  $x$ ."

# A.2.3 Connectives

Suppose  $P$  and  $Q$  are mathematical statements. They may be composed of variable propositions with quantifiers in front.

- To say "  $P$  and  $Q$  " we write

$$
P \wedge Q
$$

This has the truth value True if and only if both  $P$  and  $Q$  are True.

- To say "  $P$  or  $Q$  " we write

$$
P \lor Q
$$

This has the truth value True if and only if at least one of the statements,  $P$  and  $Q$ , are true. (This is the inclusive or, so it's allowable that both  $P$  and  $Q$  are true.)

- To say "If  $P$  then  $Q$ " we write

$$
P \Rightarrow Q
$$

This has the truth value True if and only if, whenever  $P$  holds,  $Q$  also holds.

Notice that  $P \Rightarrow Q$  is, itself, a logical statement. It has a truth value, True or False. It makes no claim about the truth values of the constituent statements,  $P$  and  $Q$ .

We call this a conditional statement; we say  $P$  is the hypothesis and  $Q$  is the conclusion.

Notice that  $P \Rightarrow Q$  is True when  $P$  is False. This is because it is an "If … then …" statement; it makes no claim about the situations where  $P$  is False, so we cannot declare the conditional statement to be False so it must be True (by the Law of the Excluded Middle).

- An equivalent way to write  $P \Rightarrow Q$  is

$$
\neg P \lor Q
$$

- The contrapositive of a conditional statement  $P \Rightarrow Q$  is

$$
\neg Q \Rightarrow \neg P
$$

It is guaranteed to have the same truth value of  $P \Rightarrow Q$ . That is,

$$
(P \Rightarrow Q) \Longleftrightarrow (\neg Q \Rightarrow \neg P)
$$

- The converse of a conditional statement  $P \Rightarrow Q$  is

$$
Q \Rightarrow P
$$

It is not guaranteed to have the same truth value as  $P \Rightarrow Q$ . There are statements  $P, Q$  such that  $P \Rightarrow Q$  holds and the converse holds, and there are statements  $P, Q$  such that  $P \Rightarrow Q$  holds and the converse fails.

- To say "  $P$  and  $Q$  are logically equivalent" we write

$$
P \Longleftrightarrow Q
$$

and we read this aloud as "  $P$  if and only if  $Q$  .

We can also write this as

$$
(P \Rightarrow Q) \land (Q \Rightarrow P)
$$

This means that  $P$  and  $Q$  have the same truth value, whatever that happens to be.

# A.2.4 Logical Negation

- We use " $\neg$ " to indicate the logical negation of a statement.  
- The statement  $\neg P$  has the opposite truth value from the statement  $P$ .  
- Negating a  $\forall$  claim:

$$
\neg (\forall x \in S. P (x)) \Longleftrightarrow \exists x \in S. \neg P (x)
$$

- Negating a  $\exists$  claim:

$$
\neg \left(\exists x \in S. P (x)\right) \Longleftrightarrow \forall x \in S. \neg P (x)
$$

- Negating a  $\vee$  claim:

$$
\neg (P \vee Q) \iff \neg P \wedge \neg Q
$$

This is one of DeMorgan's Laws for Logic.

- Negating a  $\wedge$  claim:

$$
\neg (P \wedge Q) \iff \neg P \vee \neg Q
$$

This is one of DeMorgan's Laws for Logic.

- Negating a  $\Rightarrow$  claim:

$$
\neg (P \Rightarrow Q) \iff \neg (\neg P \vee Q) \iff P \wedge \neg Q
$$

- Negating  $\mathbf{a} \Longleftrightarrow$  claim:

$$
\neg (P \Longleftrightarrow Q) \Longleftrightarrow \neg [ (P \Longrightarrow Q) \land (Q \Longrightarrow P) ] \Longleftrightarrow (P \land \neg Q) \lor (Q \land \neg P)
$$

- Using these facts, we can negate any mathematical statement, because a statement is just composed of quantifiers and connectives and variable propositions.

We can read the statement left to right and negate each part.

# A.2.5 Proof Strategies

We use the phrase AFSOC to mean "assume for sake of contradiction".

- Proving a  $\exists$  claim:  $\exists x \in S$ .  $P(x)$

Direct proof:

Define a specific example,  $y =$

Prove that  $y \in S$ .

Prove that  $P(y)$  holds true.

Indirect proof:

AFSOC that for every  $y \in S$ ,  $\neg P(y)$  holds.

Find a contradiction.

- Proving a  $\forall$  claim:  $\forall x \in S$ .  $P(x)$

Direct proof:

Let  $y \in S$  be arbitrary and fixed.

Prove that  $P(y)$  holds true.

Indirect proof:

AFSOC that  $\exists y\in S$  such that  $\neg P(y)$  holds.

Find a contradiction.

- Proving a  $\vee$  claim:  $P \vee Q$

Direct proof:

Prove that  $P$  holds true, or else prove that  $Q$  holds true.

Indirect proof 1:

Suppose that  $\neg P$  holds. Prove that  $Q$  holds.

Indirect proof 2:

AFSOC that  $\neg P\land \neg Q$  holds. Find a contradiction.

- Proving a  $\wedge$  claim:  $P \wedge Q$

Direct proof:

Prove that  $P$  holds. Prove that  $Q$  holds.

Indirect proof:

# A.2. LOGIC

AFSOC that  $\neg P \lor \neg Q$  holds.

Consider the first case, where  $\neg P$  holds. Find a contradiction.

Consider the second case, where  $\neg Q$  holds. Find a contradiction.

- Proving  $\mathbf{a} \Rightarrow$  claim:  $P \Rightarrow Q$

Direct proof:

Suppose  $P$  holds. Prove that  $Q$  holds.

Contrapositive proof:

Suppose that  $\neg Q$  holds. Prove that  $\neg P$  holds.

Indirect proof:

AFSOC that  $P$  holds and suppose that  $Q$  fails. Find a contradiction.

Proving a  $\iff$  claim:  $P\iff Q$

Direct proof:

Prove that  $P \Rightarrow Q$  (using one of the methods above).

Prove that  $Q \Longrightarrow P$  (using one of the methods above).

Indirect proof:

AFSOC that  $\neg (P\Rightarrow Q)\lor \neg (Q\Rightarrow P)$

Consider the first case, where  $P \wedge \neg Q$  holds. Find a contradiction.

Consider the second case, where  $Q \wedge \neg P$  holds. Find a contradiction.

# A.3 Induction

# A.3.1 Principle of Specific Mathematical Induction

- Theorem: Suppose that  $P(n)$  is a variable proposition that is defined for all  $n \in \mathbb{N}$ .

Suppose that  $P(1)$  holds.

Suppose that  $\forall k\in \mathbb{N}$ $P(k)\Rightarrow P(k + 1)$

Then  $\forall n\in \mathbb{N}$ $P(n)$

- Proving a claim by induction: Suppose we have a variable proposition  $P(n)$  that is defined for all  $n \in \mathbb{N}$ , and we want to prove  $P(n)$  holds for every  $n \in \mathbb{N}$ .

Base Case: Prove that  $P(1)$  holds.

Induction Hypothesis: Suppose that  $k$  is an arbitrary and fixed natural number, and suppose that  $P(k)$  holds.

Induction Step: Prove that  $P(k + 1)$  holds.

Conclusion: By induction,  $\forall n\in \mathbb{N}$ $P(n)$

# A.3.2 Principle of Strong Mathematical Induction

- Theorem: Suppose that  $P(n)$  is a variable proposition that is defined for all  $n \in \mathbb{N}$ .

Suppose that  $P(1)$  holds.

Suppose that  $\forall k\in \mathbb{N}$  .  $[P(1)\wedge P(2)\wedge \dots \wedge P(k)]\Rightarrow P(k + 1).$

Then  $\forall n\in \mathbb{N}$ $P(n)$

- Proving a claim by strong induction: Suppose we have a variable proposition  $P(n)$  that is defined for all  $n \in \mathbb{N}$ , and we want to prove  $P(n)$  holds for every  $n \in \mathbb{N}$ .

Base Case(s): Prove that  $P(1)$  holds.

Depending on what happens in the Induction Step, you might need more than one Base Case.)

Induction Hypothesis: Suppose that  $k$  is an arbitrary and fixed natural number that satisfies some inequality ( $k \geq \_$ , depending on what happens in the Induction Step), and suppose that  $P(1) \wedge \dots \wedge P(k)$  holds.

Induction Step: Prove that  $P(k + 1)$  holds.

Conclusion: By induction,  $\forall n\in \mathbb{N}$ $P(n)$

# A.3.3 "Minimal Criminal" Argument

- The second condition in the hypothesis of the Principle of Induction is a conditional statement, so we can prove it by contrapositive. The contrapositive says

$$
\neg P (k) \Longrightarrow \neg P (1) \lor \neg P (2) \lor \dots \lor \neg P (k - 1)
$$

which is to say, "If the proposition fails for some particular value  $k$ , then we can find some prior instance of the proposition (from 1 to  $k - 1$ ) that also fails.

- Proving a claim by a "minimal criminal" argument: Suppose we have a variable proposition  $P(n)$  that is defined for all  $n \in \mathbb{N}$ , and we want to prove  $P(n)$  holds for every  $n \in \mathbb{N}$ .

Base Case(s): Prove that  $P(1)$  holds.

Depending on what happens in the Induction Step, you might need more than one Base Case.)

Induction Hypothesis: Suppose that  $k$  is an arbitrary and fixed natural number that satisfies some inequality ( $k \geq \_$ , depending on what happens in the Induction Step), and suppose that  $\neg P(k)$  holds; that is, suppose  $P(k)$  fails to hold.

Induction Step: Prove that  $\neg P(1) \lor \neg P(1) \lor \neg P(2) \lor \dots \lor \neg P(k - 1)$ ; that is, show that the proposition fails to hold at some prior instance, as well.

Conclusion: By induction,  $\forall n\in \mathbb{N}$ $P(n)$

# A.4 Relations

- Let  $A, B$  be sets. A relation between  $A$  and  $B$  is a set of ordered pairs  $R \subseteq A \times B$ .

Given elements  $a \in A$  and  $b \in B$ , we say  $a$  and  $b$  are related if and only if  $(a, b) \in R$ .

The set  $A$  is called the domain and the set  $B$  is called the codomain.

The set  $R$  is called the relation set.

We say  $R$  is a relation between  $A$  and  $B$ .

When  $A = B$ , we say  $R$  is a relation on the set  $A$ .

# A.4.1 Properties of Relations

Let  $A$  be a set and let  $R$  be a relation on  $A$ , i.e.  $R \subseteq A \times A$ .

(Note: These properties only apply in this case, and not to a relation between two different sets  $A$  and  $B$ .)

- We say  $R$  is reflexive if

$$
\forall x \in A. (x, x) \in R
$$

(i.e. every element is related to itself).

- We say  $R$  is symmetric if

$$
\forall x, y \in A. (x, y) \in R \Rightarrow (y, x) \in R
$$

(i.e. the order of the comparison doesn't matter).

- We say  $R$  is transitive if

$$
\forall x, y, z \in A. [ (x, y) \in R \wedge (y, z) \in R ] \Longrightarrow (x, z) \in R
$$

(i.e. the relation always "transitions through a middle-man")

- We say  $R$  is anti-symmetric if

$$
\forall x, y \in A.. [ (x, y) \in R \land (y, x) \in R ] \Rightarrow x = y
$$

(i.e. two elements related in both directions must be the same).

# A.4.2 Equivalence Relations

Let  $A$  be a set and let  $R$  be a relation on  $A$ .

- We say  $R$  is an equivalence relation if and only if  $R$  is reflexive, symmetric, and transitive.
- If  $R$  is an equivalence relation and  $x \in A$ , then the equivalence class corresponding to  $x$  (under the relation  $R$ ) is

$$
[ x ] _ {R} = \{y \in A \mid (x, y) \in R \}
$$

which is the set of all elements related to  $x$ .

- If  $R$  is an equivalence relation, then  $A / R$  is a modulo  $R$ ; it is the set of all equivalence classes:

$$
A / R = \left\{\left[ x \right] _ {R} \mid x \in A \right\}
$$

- Theorem: If  $R$  is an equivalence relation on  $A$ , then the equivalence classes (i.e. the elements of  $A / R$ ) form a partition of  $A$ .  
- Theorem: If  $I$  is some index set and  $\{S_i \mid i \in I\}$  is a partition of  $A$ , then this corresponds to a unique equivalence relation on  $A$  defined by relating two elements of  $A$  if and only if they belong to the same part of the partition.

# A.4.3 Modular Arithmetic

# Congruence mod  $n$

- Let  $n \in \mathbb{N}$  be given. For any  $x, y \in \mathbb{Z}$ , we say  $x$  and  $y$  are congruent modulo  $n$  if and only if  $n \mid x - y$ .

Equivalently, this means that  $x$  and  $y$  have the same remainder upon division by  $n$ . (This equivalence is not part of the definition; rather, it follows from the Division Lemma stated below.)

We write this as  $x \equiv y \mod n$ .

(Note: mod  $n$  is not an operator or function; it is a modifier we place at the end of a line of arithmetic/algebra to indicate that all the operations have been performed modulo  $n$ .)

- The relation  $\equiv$  is an equivalence relation, for every  $n \in \mathbb{N}$ .  
- Division Lemma: Let  $n \in \mathbb{N}$  be given. Let  $x \in \mathbb{Z}$  be given. Then

$$
\exists ! k, r \in \mathbb {Z}. \left[ (x = k n + r) \wedge (0 \leq r \leq n - 1) \right]
$$

Notice that " $\exists$ !" indicates this representation of  $x$  as a multiple of  $n$  plus a remainder is unique.

- Modular Arithmetic Lemma: Let  $n \in \mathbb{N}$  be given. Let  $a, b \in \mathbb{Z}$  be given.

Suppose that  $a \equiv r \mod n$  and  $b \equiv s \mod n$ . Then,

$$
a + b \equiv r + s \mod n \qquad \text {a n d} \qquad a \cdot b \equiv r \cdot s \mod n
$$

# Multiplicative Inverses in  $\mathbb{Z}$  mod  $n$

- Let  $x, y \in \mathbb{Z}$  be given. We say  $x$  and  $y$  are relatively prime if and only if they have no common factors (divisors), other than 1.  
- MIRP Lemma: (Multiplicative Inverses for Relative Primes)

Suppose  $n \in \mathbb{N}$  and  $a \in \mathbb{Z}$ , and that  $a$  and  $n$  are relatively prime. Consider the congruence  $ax \equiv 1 \mod n$ . Then there exists a solution  $x$  to this congruence.

(In fact, there are infinitely-many solutions to this congruence, and they are all congruent modulo  $n$ .)

- When  $ax \equiv 1 \mod n$ , we say  $x$  is the multiplicative inverse of  $a$  in the context of  $\mathbb{Z}$  modulo  $n$ . We write this as  $x \equiv a^{-1} \mod n$ .

In fact, any integer  $y$  congruent to  $x$  modulo  $n$  will satisfy  $ay \equiv 1 \mod n$ , so we really consider the equivalence class  $[x]_{\mathrm{mod} n}$  to be the multiplicative inverse of the equivalence class  $[a]_{\mathrm{mod} n}$ .

- Assuming  $a^{-1}$  exists in the first place,  $(a^{-1})^{-1} \equiv a \mod n$ .  
- Let  $p$  be a prime. Then all of the numbers  $1, 2, 3, \ldots, p - 1$  are guaranteed to be relatively prime to  $p$ , so they all have multiplicative inverses in the context of  $\mathbb{Z}$  modulo  $p$ .  
- If  $a$  has a multiplicative inverse in the context of  $\mathbb{Z} \mod n$ , there is guaranteed to be such an inverse between 1 and  $n - 1$ . In practice, we can just check each of these candidates one-by-one until we find the inverse.

# Results

- Chinese Remainder Theorem: Suppose  $r \in \mathbb{N}$  and we have  $r$  natural numbers,  $n_1, n_2, \ldots, n_r$ , that are pair-wise relatively prime. (That is, no two of the numbers have any common factors, besides 1.)

Suppose we also have  $r$  integers,  $a_1, a_2, \ldots, a_r$ .

Then there exists a solution  $X$  to the system of congruences defined by the  $n_i$  and  $a_i$ ; that is,

$$
\exists X \in \mathbb {Z}. \forall i \in [ r ]. X \equiv a _ {i} \mod n _ {i}
$$

Furthermore, if we define  $N = \prod_{i\in [r]}n_i$ , then all of the infinitely-many solutions  $Y$  to the system of congruences satisfy  $X\equiv Y\bmod N$ .

# A.5 Functions

- Let  $A, B$  be sets. Let  $f$  be a relation between  $A$  and  $B$ , so  $f \subseteq A \times B$ .

Also, assume that  $f$  has the property that

$$
\forall a \in A. \exists ! b \in B. (a, b) \in f
$$

That is, assume every element of the domain  $A$  (the "input" set) has exactly one corresponding element of the codomain  $B$  (the "output" set) so that the two elements are related, under  $f$ .

Put even another way, "Every input has exactly one corresponding output."

Such a relation is called a function from  $A$  to  $B$ .

We call  $A$  the domain of the function and  $B$  the codomain of the function. We write

$$
f: A \to B
$$

to mean  $f$  is a function from  $A$  to  $B$ .

If  $a$  is related to  $b$ , i.e.  $(a,b)\in f$ , then we write

$$
f (a) = b
$$

knowing that there is exactly one such  $b$  for each  $a$ .

- Given a proposed domain set  $A$ , a proposed codomain set  $B$ , and a proposed "rule"  $f$  that says what to output, given an element of  $A$ , then we say  $f$  is a well-defined function if the rule is defined on all elements of  $A$  and, for each  $a \in A$ , the rule outputs exactly one element that actually does lie in the set  $B$ .

(Note: every function is a well-defined function; this rule applies when we are trying to determine whether a given "rule" actually is a function or not.)

- Let  $f: A \to B$  and  $g: A \to B$  be functions. We say  $f$  and  $g$  are equal (in the sense of functions) and write  $f = g$  when  $\forall a \in A$ .  $f(a) = g(a)$ . That is,  $f = g$  when the two functions yield the same output for every input.

# A.5.1 Images and Pre-Images

- Let  $f: A \to B$  be a function. Let  $X \subseteq A$ . The image of  $X$  under the function  $f$  is

$$
\operatorname {I m} _ {f} (X) = \{b \in B \mid \exists a \in X, f (a) = b \}
$$

An equivalent way of writing this set is

$$
\operatorname {I m} _ {f} (X) = \{f (a) \mid a \in X \}
$$

# A.5. FUNCTIONS

(Intuitively, this is the set of all codomain elements "hit" by elements of  $X$ .)

- Let  $f: A \to B$  be a function. Let  $Z \subseteq B$ . The pre-image of  $Z$  under the function  $f$  is

$$
\operatorname {P r e I m} _ {f} (Z) = \{a \in A \mid f (a) \in Z \}
$$

(Intuitively, this is the set of all "inputs" whose output "lands" in  $Z$ .)

Note:  $\operatorname{Im}_f(\varnothing) = \varnothing$  and  $\operatorname{Pre}\operatorname{Im}_f(\varnothing) = \varnothing$ .

# A.5.2 Jections

- Let  $f: A \to B$  be a function. If  $\operatorname{Im}_f(A) = B$ , then we say  $f$  is surjective, or it is a surjection.

The definition of image gives us this equivalent formulation of surjectivity:

$$
f \text {i s} \quad \Longleftrightarrow \forall b \in B. \exists a \in A. f (a) = b
$$

(Intuitively,  $f$  is surjective when all of the codomain elements are "hit" by the function.)

- Let  $f: A \to B$  be a function. If  $f$  has the property that

$$
\forall a _ {1}, a _ {2} \in A. a _ {1} \neq a _ {2} \Rightarrow f (a _ {1}) \neq f (a _ {2})
$$

then we say  $f$  is injective, or it is an injection.

The contrapositive of this conditional statement yields an equivalent formulation of injectivity:

$$
\forall a _ {1}, a _ {2} \in A. f (a _ {1}) = f (a _ {2}) \Rightarrow a _ {1} = a _ {2}
$$

(Intuitively,  $f$  is injective when two different inputs always yield different outputs, or equivalently when having equal outputs means they came from the same input.)

- If a function  $f$  is both injective and surjective, then we say  $f$  is bijective, or it is a bijection.

# A.5.3 Composition of Functions

- Let  $f: A \to B$  and  $g: B \to C$  be functions.

The function  $g\circ f:A\to C$  defined by

$$
\forall a \in A. (g \circ f) (a) = g (f (a))
$$

is the composition of  $g$  with  $f$ , or "  $g$  composed with  $f$ ".

Note: It helps to read the " $\circ$ " as "after" to remind you of the order of operations:  $g \circ f$  means  $g$  is applied after  $f$ . We find  $f(a)$  and then find  $g(f(a))$ .

- Notation: We write  $(g \circ f)(x) = g(f(x))$ . We do not write  $g \circ f(x)$ . The parentheses are important!  
- Let  $f: A \to B$  and  $g: B \to C$  and  $h: C \to D$  be functions. Then  $(h \circ g) \circ f = h \circ (g \circ f)$ .

This means composition is associative.

- Suppose  $f: A \to B$  and  $g: B \to C$  are both in/sur/bi-jections. Then  $g \circ f$  is also an in/sur/bi-jection.

# A.5.4 Inverses

- Let  $X$  be any set. The identity function  $\operatorname{Id}_X : X \to X$  is defined by  $\forall z \in X$ .  $\operatorname{Id}_X(z) = z$ .  
- Let  $f: A \to B$  be a function. If there is a function  $F: B \to A$  such that  $f \circ F: B \to B$  satisfies  $f \circ F = \operatorname{Id}_B$  and  $F \circ f: A \to A$  satisfies  $F \circ f = \operatorname{Id}_A$ , then we say  $F$  is the inverse of  $f$  and write  $F = f^{-1}$ .

Notice that the formal definition clearly includes the necessity of checking that both ways of composing the two functions yields an identity function. There exist examples where one way works and the other doesn't!

(Note: When proving a function is the inverse of another one, we aren't allowed to write  $f^{-1}$  yet because we are, in fact, in the midst of proving that  $f$  even has an inverse.)

If  $f$  has an inverse, we say  $f$  is invertible.

- Theorem:  $f: A \to B$  is bijective  $\iff f$  has an inverse  $f^{-1}: B \to A$ .  
- Theorem: Let  $f: A \to B$  and  $g: B \to C$  both be bijections. Then  $g \circ f: A \to C$  is also a bijection, so it has an inverse; that inverse is  $(g \circ f)^{-1} = f^{-1} \circ g^{-1}$ .

# A.5.5 Proof Techniques for Functions

- Prove that  $f$  is surjective:
- Let  $b \in B$  be arbitrary and fixed.  
- Define  $a =$  
Show that  $a \in A$ .  
Show that  $f(a) = b$ .  
- This shows that  $b \in \operatorname{Im}_f(A)$ , so  $B \subseteq \operatorname{Im}_f(A)$ .  
- Since  $\operatorname{Im}_f(A) \subseteq B$  by definition, this shows  $\operatorname{Im}_f(A) = B$ , so  $f$  is surjective.
- Prove that  $f$  is not surjective:

# A.5. FUNCTIONS

- Define  $b =$  
Show that  $b \in B$ .  
- Let  $a \in A$  be arbitrary and fixed.  
- Show that  $f(a) \neq b$ . (Alternatively, suppose  $f(a) = b$  and find a contradiction.)  
- This shows that  $\exists b \in B$ .  $b \notin \operatorname{Im}_f(A)$ , so  $f$  is not surjective.
- Prove that  $f$  is injective:
- Let  $x, y \in A$  be arbitrary and fixed.  
Suppose that  $f(x) = f(y)$ .  
- Deduce that  $x = y$ .

Alternatively:

- Let  $x, y \in A$  be arbitrary and fixed.  
Suppose that  $x\neq y$  
- Deduce that  $f(x) \neq f(y)$ .
- Prove that  $f$  is not injective:
- Define  $x =$  ________ and define  $y =$  ________.  
- Show that  $x \in A$  and  $y \in A$ .  
Show that  $x\neq y$  
- Show that  $f(x) = f(y)$ .  
- This shows  $\exists x, y \in A$ .  $x \neq y \land f(x) = f(y)$ , so  $f$  is not injective.
- Prove that  $f$  is bijective:
- Prove that  $f$  is injective.  
- Prove that  $f$  is surjective.

Alternatively:

- Define a function  $F: B \to A$ .  
- Prove that  $F \circ f = \operatorname{Id}_A$ .  
- Prove that  $f \circ F = \operatorname{Id}_B$ .  
- This shows that  $F = f^{-1}$ , so  $f$  is invertible and therefore it is bijective.
- Prove that  $f$  is not bijective:
- Show that  $f$  is not injective, or else show that  $f$  is not surjective.

Alternatively,

- AFSOC  $f$  is bijective, so it has an inverse  $f^{-1}$ . Find a contradiction.
- For some  $X \subseteq A$ , find the image  $\operatorname{Im}_f(X)$ :
- Define a set  $S$ . Claim that  $S = \operatorname{Im}_f(X)$ .

(Note: Coming up with this definition is the hard part, and will involve a bunch of scratch work. There is no need to show this as part of your proof. Just start with the definition.)

- Prove that  $\operatorname{Im}_f(X) \subseteq S$ .

* Let  $y \in \operatorname{Im}_f(X)$  be arbitrary and fixed.  
* This means  $\exists a \in X$ .  $f(a) = y$ .  
* Use the properties of  $f$  to show that  $f(a) \in S$ .  
* This shows that  $y \in S$ .

- Prove that  $S \subseteq \operatorname{Im}_f(X)$ .

* Let  $z \in S$  be arbitrary and fixed.  
\*Define  $x =$  
* Show that  $x \in X$ .  
* Show that  $f(x) = z$ .  
* This shows that  $z \in \operatorname{Im}_f(X)$ .

- Conclude by a double-containment argument that  $\operatorname{Im}_f(X) = S$ .
- For some  $Z \subseteq B$ , find the preimage  $\operatorname{PreIm}_f(Z)$ :
- Define a set  $T$ . Claim that  $T = \operatorname{PreIm}_f(Z)$ .

(Note: Coming up with this definition is the hard part, and will involve a bunch of scratch work. There is no need to show this as part of your proof. Just start with the definition.)

- Prove that  $\operatorname{PreIm}_f(Z) \subseteq T$ .

* Let  $a \in \operatorname{PreIm}_f(Z)$  be arbitrary and fixed.  
* This means  $f(a) \in Z$ .  
* Use the properties of  $f$  to show that  $a \in T$ .

- Prove that  $T \subseteq \operatorname{PreIm}_f(Z)$ .

* Let  $x \in T$  be arbitrary and fixed.  
* Use the properties of  $f$  to show that  $f(x) \in Z$ .  
* This shows that  $x \in \operatorname{PreIm}_f(Z)$ .

- Conclude by a double-containment argument that  $\operatorname{PreIm}_f(Z) = T$ .

Find the inverse of  $f$

- Define a function  $F: B \to A$ .

(Note: Coming up with this definition is the hard part, and will involve a bunch of scratch work. There is no need to show this as part of your proof. Just start with the definition.)

# A.5. FUNCTIONS

- Show that  $F$  is a well-defined function: show that every input from  $B$  has exactly one output that lies in  $A$ .  
- Show that  $F \circ f = \operatorname{Id}_A$ .  
- Show that  $f \circ F = \operatorname{Id}_B$ .  
- Deduce that  $F = f^{-1}$ . (Since  $f$  has an inverse, it is therefore a bijection, as well.)

# A.6 Cardinality

# A.6.1 Definitions

Let  $S$  be any set.

- We say  $S$  is finite if  $\exists n \in \mathbb{N} \cup \{0\}$  such that there exists a bijection  $f: S \to [n]$ .

Note: The empty set  $S = \varnothing$  is finite, since  $[0] = \varnothing$ .

- We say  $S$  is infinite if  $S$  is not finite; that is, if  $\forall n \in \mathbb{N} \cup \{0\}$ , every function  $f: S \to [n]$  fails to be a bijection.  
- We say  $S$  is countably infinite (or just countable) if there exists a bijection  $f: S \to \mathbb{N}$ .  
- We say  $S$  is uncountably infinite (or just uncountable) if every function  $f: S \to \mathbb{N}$  fails to be a bijection.  
- We use  $|S|$  to indicate the cardinality of  $S$ .

When  $S$  is finite, so there is some  $n \in \mathbb{N} \cup \{0\}$  and a bijection  $f: S \to [n]$ , we write  $|S| = n$  to mean that  $S$  has  $n$  elements. We say  $n$  is the size of  $S$ .

When  $S$  is infinite, we only use  $|S|$  to compare the cardinality of  $S$  to that of other sets. That is, we don't write things like  $|S| = \infty$ ; rather, we write something like  $|S| = |T|$  to indicate that  $S$  and  $T$  have the same cardinality, whatever that may be, or something like  $|S| < |T|$  to indicate  $T$  has a strictly larger cardinality than  $S$ .

- We write  $|S| = |T|$  and say  $S$  has the same cardinality as  $T$  if and only if there exists a bijection  $f: S \to T$ .

# A.6.2 Results

In general, the following results hold. Some of the remaining results follow from these general statements.

- Suppose  $|A| = |C|$  and  $|B| = |D|$ . Then  $|A \times B| = |C \times D|$ .  
- Suppose  $|A| = |C|$  and  $|B| = |D|$ , and suppose  $A \cap B = \emptyset$  and  $C \cap D = \emptyset$ . Then  $|A \cup B| = |C \cup D|$ .  
Suppose there is an injection  $f:A\to B$  . Then  $|A|\leq |B|$  
Suppose there is a surjection  $f:A\to B$  . Then  $|A|\geq |B|$

# Finite Sets

- If  $A$  and  $B$  are finite, then  $A \cup B$  are finite.  
- If  $A$  and  $B$  are finite and  $A \cap B = \varnothing$ , then  $|A \cup B| = |A| + |B|$ .  
- If  $A$  and  $B$  are finite, then  $|A \times B| = |A| \cdot |B|$ .

# Infinite Sets

- If  $A$  is countably infinite and  $B$  is finite or countably infinite, then  $A \cup B$  is countably infinite.  
- If  $A$  is countably infinite and  $B$  is finite or countably infinite, then  $A \times B$  is countably infinite.  
- If  $A$  is uncountably infinite and  $B$  is any set, then  $A \cup B$  is uncountably infinite.  
- If  $A$  is uncountably infinite and  $B$  is any set, then  $A \times B$  is uncountably infinite.  
- If  $A \subseteq B$ , then  $|A| \leq |B|$ . (Note: this applies to both finite and infinite sets.)  
- $|A| < |\mathcal{P}(A)|$  for any set  $A$ . (Note: this applies to both finite and infinite sets!)  
- If  $A$  is infinite, then there exists a set  $C \subseteq A$  that is countably infinite.  
- $A$  is infinite  $\Longleftrightarrow \exists C \subset A$  such that there exists a bijection  $f: A \to C$ . (Note the strict subset inequality.)  
- A countably infinite union of countably infinite sets is also countably infinite.  
- A countably infinite product of finite sets is uncountably infinite.

(Notice that this shows that a countably infinite product of any non-empty sets is uncountably infinite.)

- Cantor-Schroder-Bernstein Theorem: Suppose  $A$  and  $B$  are sets and there exist functions  $f: A \to B$  and  $g: B \to A$  that are both injections. Then there actually exists a bijection  $h: A \to B$  so, in particular,  $|A| = |B|$ .

# A.6.3 Standard Catalog of Cardinalities

- Finite sets:

-0  
- $[n]$ , for any  $n \in \mathbb{N}$
- Countably Infinite sets:
- N  
- Z
- Odd naturals/integers, Even naturals/integers  
- $\mathbb{Q}$  
- $\mathbb{N}\times \mathbb{N}$  
- The set of all finite binary strings
- Uncountably Infinite sets:
- $\mathbb{R}$  
- Intervals of  $\mathbb{R}$ ; that is,  $\{y \in \mathbb{R} \mid a \leq y \leq b\}$  for any  $a, b \in \mathbb{R}$ .

(Note: the " $\leq$ " in the interval can each be replaced by " $<$ " as well.)

- $\mathcal{P}(\mathbb{N})$  
- $\mathcal{P}(\mathbb{Z})$  
- The set of all infinite binary strings

# A.7 Combinatorics

# A.7.1 Definitions

- A permutation of the set  $[n]$  is a bijection  $f:[n]\to [n]$ .  
- A  $k$ -selection from the set  $[n]$  is a subset  $S \subseteq [n]$  with  $|S| = k$ .  
- A  $k$ -arrangement from the set  $[n]$  is an ordered list of  $k$  elements of  $[n]$ , where no element is repeated.  
- A  $k$ -selection with repetition from the set  $[n]$  is an unordered list of  $k$  elements of  $[n]$ , where elements can repeat.  
- A  $k$ -arrangement with repetition from the set  $[n]$  is an ordered list of  $k$  elements of  $[n]$ , where elements can repeat.

# A.7.2 Counting Principles

- **Rule Of Sum:** Let  $A$  be a finite set. Let  $n \in \mathbb{N}$ . Suppose  $\{S_i \mid i \in [n]\}$  is a partition of  $A$ . Then

$$
| A | = \sum_ {i = 1} ^ {n} | S _ {i} | = | S _ {1} | + | S _ {2} | + \dots + | S _ {n} |
$$

- **Rule Of Product:** Suppose we have a process that is completed in  $n$  steps. Suppose that step  $i$  (where  $1 \leq i \leq n$ ) can be completed in  $w_i$  ways, independent of the choices made in the previous step. Then the number of outcomes of this process is

$$
\prod_ {i = 1} ^ {n} w _ {i} = w _ {1} \cdot w _ {2} \dots w _ {n}
$$

# A.7.3 Formulas

- There are  $n!$  many permutations of  $[n]$ .  
- There are  $\binom{n}{k} = \frac{n!}{k!(n-k)!}$  many  $k$ -selections from  $[n]$ .  
- There are  $\binom{n}{k} k! = \frac{n!}{(n-k)!}$  many  $k$ -arrangements from  $[n]$ .  
- There are  $\binom{k+n-1}{k}$  many  $k$ -selections with repetition from  $[n]$ .  
- There are  $n^k$  many  $k$ -arrangements with repetition from  $[n]$ .

# A.7.4 Standard Counting Objects

- Cards: A standard deck of cards has 52 cards. Each card has a suit (either  $\heartsuit$  or  $\diamondsuit$  or  $\clubsuit$  or  $\spadesuit$ ) and a rank (either 2 or 3 or 4 or …or 10 or Jack or Queen or King or Ace).  
- Tuples: Let  $k, n \in \mathbb{N}$ . The set  $T_{n,k}$  is the set of all  $n$ -tuples from  $[k]$ . That is, it is the set of all ordered lists of length  $n$  whose coordinates are elements of  $[k]$ .  
- Words: This is equivalent to tuples, where  $[k]$  represents the alphabet and  $n$  represents the length of a word.  
- Lattice Paths: Let  $x, y \in \mathbb{N}$ . A lattice path to  $(x, y)$  is a sequence of points on the grid of natural-numbered points on the plane, starting at  $(0, 0)$  and ending at  $(x, y)$ , where each successive move is either rightwards or upwards.

There are  $\binom{x+y}{x}=\binom{x+y}{y}$  many lattice paths to  $(x,y)$ .

# A.7.5 Counting In Two Ways

This is a standard method for proving an identity using a combinatorial argument.

# Method Outline:

1. State the result to be proven. Note: remember to quantify any variables that appear in the expression!  
2. Define a set (let's call it  $S$ ) of objects to be counted.  
3. Count the elements of  $S$  in one way by following a proper combinatorial argument. Equate the derived expression with  $|S|$ .  
4. Count the elements of  $S$  in another way by following a proper combinatorial argument. Equate the derived expression with  $|S|$ .  
5. Conclude that since both derived expressions equal  $|S|$ , they must be equal, as well.

# A.7.6 Results

These were proven in lecture by counting in two ways arguments. (You may cite these results without proof, but it is also helpful to remember the main idea of the counting arguments, as well, so that you can reconstruct the formula without having to just memorize it.)

Pascal's Identity:  $\binom{n}{k} + \binom{n}{k+1} = \binom{n+1}{k+1}$

- Chairperson Identity:  $\binom{n}{k} \cdot k = n \cdot \binom{n-1}{k-1}$  
- Binomial Theorem:  $(x + y)^n = \sum_{k=0}^{n} \binom{n}{k} x^k y^{n-k}$  
- Summation Identity:  $\sum_{i=k}^{n}\binom{i}{k}=\binom{n+1}{k+1}$

# A.7.7 Inclusion/Exclusion

We have a universal set  $U$  and some subsets  $A_{1}, A_{2}, \ldots, A_{n} \subseteq U$ . We want to count the elements of  $U$  that are outside of all of the  $A_{i}$  sets.

$$
\left| U - A _ {1} \right| = \left| U \right| - \left| A _ {1} \right|
$$

$$
\left| U - \left(A _ {1} \cup A _ {2}\right) \right| = \left| U \right| - \left| A _ {1} \right| - \left| A _ {2} \right| + \left| A _ {1} \cap A _ {2} \right|
$$

$$
\begin{array}{l} | U - \left(A _ {1} \cup A _ {2} \cup A _ {3}\right) | = | U | - | A _ {1} | - | A _ {2} | - | A _ {3} | \\ + \left| A _ {1} \cap A _ {2} \right| + \left| A _ {1} \cap A _ {3} \right| + \left| A _ {2} \cap A _ {3} \right| \\ - \left| A _ {1} \cap A _ {2} \cap A _ {3} \right| \\ \end{array}
$$

and so on.

In general, for  $n$  many sets, we have

$$
| U - (A _ {1} \cup A _ {2} \cup \dots \cup A _ {n}) | = \sum_ {S \subseteq [ n ]} (- 1) ^ {| S |} \left| \bigcap_ {i \in S} A _ {i} \right| \quad \text {w h e r e} \quad \bigcap_ {i \in \emptyset} A _ {i} = U
$$

In the (convenient) case where the size of the intersection of  $k$ -many sets only depends on that value  $k$  (and not which sets we are intersecting), then we can write

$$
| U - (A _ {1} \cup A _ {2} \cup \dots \cup A _ {n}) | = \sum_ {k = 0} ^ {n} (- 1) ^ {k} {\binom {n} {k}} | S _ {1} \cap S _ {2} \cap \dots \cap S _ {k} |
$$

# A.7.8 Pigeonhole Principle

If a set  $S$  with  $|S| = n$  is partitioned into  $k$  disjoint subsets whose union is  $S$ , and if  $k < n$ , then at least one of the subsets in the partition has more than one element. Furthermore, that part actually has at least  $\left\lceil \frac{n}{k} \right\rceil$  elements.

(That is, if we separate  $n$  objects into  $k$  piles, there must be one pile with at least  $\frac{n}{k}$  objects in it.)

# A.8 Acronyms

# A.8.1 General Phrases

- WWTS: We want to show  
- AFSOC: Assume for sake of contradiction  
- WOLOG: Without loss of generality

# A.8.2 Induction

- PMI: Principle of Mathematical Induction  
- BC: Base case  
- IH: Induction hypothesis  
- IS: Induction step