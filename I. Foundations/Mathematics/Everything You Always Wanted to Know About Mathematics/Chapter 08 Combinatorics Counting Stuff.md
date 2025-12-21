---
aliases: null
tags: null
key_concepts: null
parent_directory: null
cssclasses: academia
title: Chapter 8
linter-yaml-title-alias: Chapter 8
primary_tags:
- more formal statement
- each value
- exactly different ways
- a.1 sets a.1.1
- specific example
- any idea
- counting question
secondary_tags:
- interesting problems
- finite set theory
- all elements
- binomial coefficient
- any number
- good proof
- non-finite partition
- some prior instance
- three numbers
- maximum possible value
- following outcome
- other stuff
- general statements
- proof's main idea
- i.e. permutations
- repeated instances
- two properties
- more condensed form
- new and helpful proof strategy
tags_extracted: '2025-12-18T17:57:22.612275'
tags_method: max_quality_v1
---

# Chapter 8

## Combinatorics: Counting Stuff

## 8.1 Introduction

The field of combinatorics is one of the most active and exciting areas of interest in modern mathematics. It is also sometimes known as "discrete math" to distinguish it from analysis, which studies more "continuous" notions like the real number line and functions defined on that set. In this chapter we will explore some of the fundamental ideas in combinatorics and apply them to solve interesting problems. Essentially, we will be learning interesting and useful principles about how to count the number of elements in finite sets where those elements are described in some way but not enumerated for us.

### 8.1.1 Objectives

The following short sections in this introduction will show you how this chapter fits into the scheme of the book. They will describe how our previous work will be helpful, they will motivate why we would care to investigate the topics that appear in this chapter, and they will tell you our goals and what you should keep in mind while reading along to achieve those goals. Right now, we will summarize the main objectives of this chapter for you via a series of statements. These describe the skills and knowledge you should have gained by the conclusion of this chapter. The following sections will reiterate these ideas in more detail, but this will provide you with a brief list for future reference. When you finish working through this chapter, return to this list and see if you understand all of these objectives. Do you see why we outlined them here as being important? Can you define all the terminology we use? Can you apply the techniques we describe?

By the end of this chapter, you should be able to …

- State the Rules of Sum and Product, and use and combine them to construct simple counting arguments.  
- Categorize several standard counting objects, as well as state corresponding counting formulas and understand how to prove them.  
- State the meaning of binomial coefficients and evaluate their numerical formulae, know how to use them in counting arguments, and understand how to derive those numerical formulae.  
- Critique a proposed counting argument by properly demonstrating if it is an undercount or overcount.  
- Prove combinatorial identities by constructing "counting in two ways" proofs.  
- Understand various formulations of selection with repetition, and use them to solve problems.  
- State the Pigeonhole Principle and use it in counting arguments.  
- State the Principle of Inclusion/Exclusion and use it in counting arguments.

### 8.1.2 Segue from previous chapter

In Chapter 7, we left off talking about the cardinality of sets, both finite and infinite. While many of the results about infinite sets are interesting and mathematically rich, that particular area can lead to some mind-bending and confusing areas that are, alas, beyond the scope of our current studies. For now, we will focus on finite sets. In particular, we will explore how some results about the cardinality of finite sets can be used to solve problems about "counting" mathematical objects. That is, we will explore how we can answer questions of the form "How many objects are there with property X?" This branch of mathematics is known as combinatorics. You can think of it as "the study of combinations of objects". While investigating this branch of mathematics, we will develop some new notation and definitions, prove and use some results about finite sets, and describe and study some particular objects that live in the field of combinatorics and computer science. Importantly, we will learn an entirely new proof technique based on counting objects!

### 8.1.3 Motivation

Think about playing poker. If you're unfamiliar with the game, just think of it as a simple system where two players receive a hand of 5 random cards each and then they compare to see who wins. Hands are ranked according to the following list, from best to worst:

- Straight Flush (five in a row of one suit), e.g.  $T \clubsuit J \clubsuit Q \clubsuit K \clubsuit A \clubsuit$  
- Four of a Kind, e.g. 3♣ 3♠ 3♥ 3◇ 7♥  
- Full House (three of a kind and a pair), e.g.  $4 \clubsuit 4 \clubsuit 4 \diamond 6 \clubsuit 6 \heartsuit$  
- Flush (five of one suit), e.g.  $2 \heartsuit 5 \heartsuit 8 \heartsuit Q \heartsuit K \heartsuit$  
- Straight (five in a row, not all the same suit), e.g.  $8 \diamond 9 \clubsuit T \diamond J \heartsuit Q \heartsuit$  
- Three of a Kind, e.g.  $K \triangleleft K \diamondsuit Q \diamondsuit 9$  
- Two Pair, e.g.  $A \triangleleft A \heartsuit J \triangleleft J \diamond 2 \triangleleft$  
One Pair, e.g.  $8 \heartsuit 8 \diamond 2 \clubsuit 5 \clubsuit K \heartsuit$  
High Card, e.g.  $Q \spadesuit J \spadesuit 9 \diamond 7 \diamond 2 \diamond$

Is this a fair game? If you've played poker before, and especially if you've played a lot, you've not only learned to accept this ranking system but you've also learned how to exploit it and make decisions. In Five Card Draw, if you're dealt 22345, should you keep the pair or go for the straight? Which is more likely to happen? Which will pay off more handsomely?

By our question, "Is this a fair game?", what we're really wondering is why the ranking is the way it is! Is drawing a flush actually rarer than a straight? Does it make sense that a full house loses to four of a kind? Why? How can we prove these results? To answer these questions, we will rephrase the questions in terms of counting instead of probability. We will ask how many distinct five card hands are flushes, how many are straights, and so on. This will allow us to compare them directly. Do you see how this relates to our work in the previous chapter, too? We will really be identifying the cardinality of the set of all poker hands that are flushes, for instance, and comparing it to the cardinalities of other sets of hands.

### 8.1.4 Goals and Warnings for the Reader

We will need to develop some notation and definitions to begin formulating a method to count the elements of particular finite sets, but we want to emphasize that this is really what is going on, overall: combinatorics is about counting the number of elements in finite sets using particular methods (which we will develop in this chapter). More specifically, we want to study these counting techniques in an abstract sense so that we can apply them in an efficient manner. Perhaps we could answer those poker questions we posed above by looking at all possible five card hands and making a tally mark every time we see a flush, say, but surely this will take way too long! There must be a better way! Well, of course, there is, and we will develop it soon enough in this chapter's first section.

We want to emphasize that we will be developing a new style of proof in this chapter, as well. More so than previous problems and techniques we've studied, proofs in combinatorics depend greatly on clarity and specificity of language.

Some of your proofs to the exercises in these sections may consist entirely of English sentences, with almost no mathematical symbols! This will seem strange at first, and might even seem to contradict the ideas we have emphasized so far about precision, clarity, and mathematical rigor. This is definitely not the case, though; combinatorics has a rigorous foundation in finite set theory, and we will work hard to point out this relationship whenever it is relevant. This property of combinatorics will also require you to be extra careful about your proof-writing style, ensuring that your words are chosen appropriately to be unambiguous and clear. More so than ever, be sure to reread your proofs after writing them, pretending that you are someone else, to make sure that the points you want to make actually come across in your proofs.

One final introductory point can be made by the following quote that a friend of mine stated once when we were talking about how to teach combinatorics. I found that it nicely summarized the sometimes strange transition from the proofs we have been doing so far (that might feel rather formal) to combinatorics proofs (that might feel rather informal, in comparison).

Finite cardinality is boring. That's not inconsistent with the fact that combinatorics is hard.

You might not know what that means now, but if you look back at this quote after working through this chapter, you'll understand what he was getting at. What this means is that, in an abstract and theoretical sense, finite cardinality is boring; all the results are what you'd expect them to be—like  $|A \cup B| = |A| + |B|$  when  $A \cap B = \emptyset$ —and the techniques are all the same—find a bijection to an appropriate set. Infinite cardinality is far stranger and surprising— $|A \cup B| = |A| + |B|$  can be False, even if  $A \cap B = \emptyset$ , and even further, the addition  $|A| + |B|$  is hard to make sense of, mathematically!

How does combinatorics differ, then? Well, in all of our work with combinatorics, we are given a finite set; the difference is that its elements are only described to us in some way. We are not presented with the elements of a set directly and asked to count them. (That would be easy: "One, two, three, …") We have to come up with relevant and helpful strategies to identify how many objects have a certain prescribed list of properties. That is where the difficulty of combinatorics comes in. When we say, "Consider the set of all 5-card hands, as drawn from a standard deck of cards", you can immediately grasp the idea of that set, but you certainly can't picture all its elements laid out before you, let alone begin to count them one-by-one. In this sense, combinatorics is hard; this is also why it is incredibly interesting and popular!

## 8.2 Basic Counting Principles

### 8.2.1 The Rule of Sum

Look back at Theorem 7.6.7 that we proved in the previous chapter. It says that when we take two finite sets that are disjoint (i.e. they share no elements),

the size of their union is the sum of their individual sizes. This makes intuitive sense for finite sets, and we proved the result mathematically using A bijection. This result forms the basis for the first, fundamentally useful principle of combinatorics. Notice that this grounds us firmly in the principles of set theory.

#### Partitions

We start by recalling Definition 3.6.9, which was introduced in our discussion of sets.

Definition 8.2.1. Let  $A$  be a set. A partition of  $A$  is a collection of sets that are pairwise disjoint and whose union is  $A$ .

That is, a partition is formed by an index set  $I$  and non-empty sets  $S_{i}$  (defined for every  $i \in I$ ) that satisfy the following conditions:

(1) For every  $i \in I$ ,  $S_i \subseteq A$ .  
(2) For every  $i,j\in I$  with  $i\neq j$  , we have  $S_{i}\cap S_{j} = \varnothing$  
(3)  $\bigcup_{i\in I}S_{i} = A$

Essentially, a partition is a way of breaking a set into smaller sets that do not overlap. Let's look at a couple of examples before moving on.

Example 8.2.2. Let  $A$  be the set of people in the room currently. Let  $I = \{1,2\}$ , and let  $S_{1}$  be the set of left-handed people and let  $S_{2}$  be the set of right-handed people. Then  $S = \{S_{1},S_{2}\}$  is a partition of  $A$ . Notice the distinction between writing " $\{S_1,S_2\}$  partition  $A$ ", which is correct, and " $S_{1},S_{2}$  partition  $A$ ", which is not correct. What does it mean to say  $S_{1},S_{2}$  in this context? We really mean that those two sets, taken together as a collection, form a partition of  $A$ . This is why we must remember to write the elements  $S$  between brackets.

To be rigorous, we should prove why  $S$  is a partition of  $A$ . To do this, we point out that  $S_{1} \cap S_{2} = \varnothing$  because everyone here is either leftor right-handed but not both. (Let's presume there are no "outlying cases" here, like truly ambidextrous people or people with no hands. If any such people are present, include them in a set  $S_{3}$  and include that in our partition set  $S$ .) We also point out that  $S_{1} \cup S_{2} = A$  because everyone in the room must be either leftor right-handed, so there cannot exist an element  $x \in A$  that satisfies  $x \notin S_{1}$  and  $x \notin S_{2}$ . This shows why  $S$  is a partition.

What if we wanted to partition the set of people in this room by separating them based on the first letter of their first name? Try to define this partition using mathematical notation like the previous example.

Example 8.2.3. Now, let's see a non-finite partition. Consider the set  $A = \mathbb{N}$  and the index set  $I = \mathbb{N}$ . For every  $i \in \mathbb{N}$ , define the set

$$
S_{i} = \left\{2i - 1, 2i \right\}
$$

Is the set  $S = \{S_i \mid i \in \mathbb{N}\}$  a partition of  $\mathbb{N}$ ? We think so; let's investigate why. We could start by writing out what the first few sets look like (indeed, this is usually a good first strategy: just write out the first few cases and see what happens):

$$
S_{1} = \{1, 2 \}
$$

$$
S_{2} = \{3, 4 \}
$$

$$
S_{3} = \{5, 6 \}
$$

：

and so on. This looks like a partition of  $\mathbb{N}$  so far, doesn't it? Let's prove that it truly is!

First, let's show that the sets  $S_{i}$  are pairwise-disjoint (i.e., any two of the sets share no elements). We prove this by contradiction. AFSOC that  $\exists i, j \in \mathbb{N}$  with  $i \neq j$  such that  $S_{i} \cap S_{j} \neq \emptyset$ . This means that (at least) one element of  $S_{i}$  is also an element of  $S_{j}$ ; we find there are four possible cases for this situation:

1. $2i - 1 = 2j - 1$  
2. $2i - 1 = 2j$  
3. $2i = 2j - 1$  
4. $2i = 2j$

The first and fourth cases immediately imply that  $i = j$ , by some simple algebra, which contradicts our given condition that  $i \neq j$ . The second and third cases are contradictions themselves because they involve an odd natural number and an even natural number being equal. In any case, we find a contradiction. Therefore,  $\forall i, j \in \mathbb{N}$  with  $i \neq j$ , it's the case that  $S_i \cap S_j = \emptyset$ .

Second, let's show that the union of all of the  $S_{i}$  sets is  $\mathbb{N}$ . That is, let's prove

$$
\bigcup_{i \in \mathbb{N}} S_{i} = \mathbb{N}
$$

Remember that the set on the left-hand side consists of all of the elements  $x$  such that  $\exists i \in I$  that satisfies  $x \in S_i$ . (Think about why this makes sense, even though  $I$  is infinite. This just means the union contains all of the elements that belong to at least one of the sets  $S_i$ .) Notice that for every  $i \in \mathbb{N}$ , the elements  $2i - 1, 2i \in S_i$  are both natural numbers. Thus,

$$
\mathbb{N}\supseteq \bigcup_{i\in I}S_{i}
$$

Next, we prove the reverse set containment. Let  $n \in \mathbb{N}$ . We have two cases to consider. (1) If  $n$  is even, then  $\exists k \in \mathbb{N}$  such that  $n = 2k$ . Thus,  $n \in S_k$ . (2) If  $n$  is odd, then  $\exists \ell \in \mathbb{N}$  such that  $n = 2\ell - 1$ . Thus,  $n \in S_\ell$ . In either case, we have shown that  $n \in \bigcup_{i \in I} S_i$ .

Therefore,  $S$  is a partition of  $\mathbb{N}$ . In particular, it is an infinite partition.

Now we have seen an example of a finite and infinite partition.

(Challenge question: Can you identify an infinite partition of  $\mathbb{N}$  such that all of the component sets of the partition are also infinite?)

#### Statement

For the remainder of the chapter, we will only consider finite partitions of finite sets. In particular, the Rule of Sum only applies in this specific case.

Proposition 8.2.4. Let  $A$  be a finite set, let  $n \in \mathbb{N}$ , and let  $S = \{S_i \mid i \in [n]\}$  be a finite partition of  $A$ . The Rule of Sum states that

$$
| A | = \sum_{i \in [n]} | S_{i} |
$$

The Rule of Sum tells us that the size of a set can be found by partitioning it into a finite number of smaller sets and summing their sizes. Notice that this is precisely Corollary 7.6.10 that we saw last chapter in our discussion of finite sets! There, we asked you to prove this claim by induction, in Exercise 2 in Section 7.6.5. With this result in hand, we'll move on to see some examples.

#### Examples

Example 8.2.5. At Unique Activity University, every student is required to participate in exactly one varsity sport each year. Playing more than one would be too much of a time commitment, and not playing at all would make them lazy, so everyone plays exactly one of the following non-traditional-but-still-sports sports: golf, cricket, badminton, and chess. The athletic department released the following statistics about the rosters for each sport this year:

- Golf: 12 players  
- Cricket: 18 players  
Badminton: 23 players  
- Chess: 33 players

How many students attend UAU?

Okay, this is an easy example because we made sure to stipulate that the sports offered by the university form a partition of the set of students. (Compare that to the sentence, "The set of sports offered by the university is a partition of the set of students." Both are correct.) Thus, we can find the cardinality of  $S$ , the set of all students, by adding;

$$
| S | = 1 2 + 1 8 + 2 3 + 3 3 = 8 6
$$

A small university, indeed, as well as a bizarre one. Don't go there.

More interesting examples of applying the Rule of Sum will appear when we combine it with other counting principles. For now, it's a simple idea that governs how to count sets that can be broken into disjoint parts. In general, the hardest part about using the Rule of Sum is deciding which partition to apply it to, and being creative about that.

The next counting principle is just as, if not more, helpful but a little more intricate to define and prove.

### 8.2.2 The Rule of Product

#### Motivation

We'll motivate this principle via an example.

Example 8.2.6. Let's say we have three people in the room. We also have three stickers bearing the numbers 1, 2, and 3 on them (with one distinct number on each sticker). How many ways can we place these stickers on the three people? For the sake of argument, let's say the people are named Andy, Brendan, and Carl, conveniently abbreviated as  $A$ ,  $B$ , and  $C$ . To answer this question, we can simply write out all of the sticker assignments in an organized manner to make sure we don't miss any. Specifically, we'll rank them in increasing order by Andy's assignment, then Brendan's, then Carl's: we have  $(A, B, C) =$

1. $(1,2,3)$  
2. (1,3,2)  
3. $(2,1,3)$  
4. $(2,3,1)$  
5. (3,1,2)  
6. (3,2,1)

Thus, there are 6 total ways to assign the stickers.

What if we have four people—Andy, Brendan, Carl, and Dave—and four stickers? Can we list all of those assignments? Sure, why not?

(1,2,3,4) (1,2,4,3) (1,3,2,4) (1,3,4,2)  
(1,4,2,3) (1,4,3,2) (2,1,3,4) (2,1,4,3)  
(2,3,1,4) (2,3,4,1) (2,4,1,3) (2,4,3,1)  
(3,1,2,4) (3,1,4,2) (3,2,1,4) (3,2,4,1)  
(3,4,1,2) (3,4,2,1) (4,1,2,3) (4,1,3,2)  
(4,2,1,3) (4,2,3,1) (4,3,1,2) (4,3,2,1)

Okay, so there are 24 total ways to assign the stickers. What about with five people? I don't know about you, but my arm is getting tired writing out all of these assignments. There must be a better way to do this! Yes! This is where

the Rule of Product comes in to save the day. (Side note: You might notice a pattern to our list above; can you infer how we made sure we actually listed all possibilities? Could you write a little computer program that would generate all the possibilities, for any number of elements? Try it!)

#### Statement

We will actually make two separate statements of the Rule of Product. The first is an intuitive statement of when and how it applies and what it claims. The second is a more rigorous, mathematical statement that is rooted in the kind of set-theoretic language that we have been using all along. We emphasize that both definitions should, ideally, be understood; however, truly understanding the first one is more important, and the second is presented mostly because it is the one that can and will be rigorously proven.

Proposition 8.2.7. Consider a process that is completed in  $n$  distinct steps. Assume that the  $i$ -th step, for every  $i \in [n]$ , has exactly  $w_i$  different ways to be completed; moreover, assume that this number  $w_i \in \mathbb{N}$  does not depend on the choices made in the previous steps. Also, assume that no two distinct choices at any step yield the same outcome. Then the Rule of Product states that the total number of outcomes,  $N$ , of this  $n$ -step process is

$$
N = \prod_{i \in [n]} w_{i}
$$

Let's relate this statement back to the previous example with the people and stickers before moving on and stating the Rule of Product more rigorously.

Example 8.2.8. We can think of assigning the stickers to Andy, Brendan, and Carl as a three-step process. Let's line up the three gentlemen in alphabetical order, left to right, then move along the row. At each step, we will place a sticker on the gentleman in front of us by choosing one that hasn't been assigned yet. In the first step, we approach Andy and have 3 possible stickers to place on him. In the second step, we approach Brendan and have 2 possible stickers to place on him. Notice that this is true no matter what sticker was chosen for Andy. We don't actually care which sticker was chosen for Andy—be it 1, or 2, or 3—merely that the number of choices we have when we face Brendan is always 2. In the third step, we approach Carl and find that we have only 1 sticker option, regardless of the previous two choices.

The Rule of Product tells us that the number of ways to complete this process is the product of those numbers of options at each step:  $3 \cdot 2 \cdot 1 = 6$ . This agrees with our "exhaustive list" procedure. Hooray!

What about with 4 people? Using the same kind of logic, we can see that there are  $4 \cdot 3 \cdot 2 \cdot 1 = 24$  possible ways to complete the sticker-assignment process. Again, this agrees with our previous procedure. Double hooray!

What about with 5 people? Well,  $5 \cdot 4 \cdot 3 \cdot 2 \cdot 1 = 120$ . We figured out something we didn't know yet. Triple hooray! With 6 people? With 7 people?

With  $n$  people, where  $n \in \mathbb{N}$ ? We can answer all of these questions very easily and precisely now, thanks to the Rule of Product. Infinite hooray!

#### Tree Diagrams

An interesting and helpful interpretation of the Rule of Product is evidenced by a tree diagram. The concept of a tree arises in the branch of mathematics known as graph theory, which studies mathematical objects consisting of vertices (dots) connected by edges (lines between the dots, where we only care about whether or not a line is present, and not on what it "looks like" when drawn on a piece of paper). A tree is a particular type of graph, and it arises commonly in computer science, as well, when studying branching processes. Within our context, we can use a tree to represent the decision points of a procedure whose end products will be counted by the Rule of Product. Furthermore, this method will provide some insight into the mathematically rigorous statement and proof of the Rule of Product. (We will leave these ultimate goals to the exercises, but for those of you who are interested and motivated to attempt them, we strongly encourage reading this section, as well; it will give you some intuition and guide you through those exercises.)

Example 8.2.9. Let's illustrate tree diagrams and how they relate to the Rule of Product via an example. Let's say we are planning our schedule for next semester. Based on our major and time constraints (and personal interests, of course), we must take exactly one class from each of three departments: mathematics, computer science, and philosophy. The number of courses available for us to take in each department does not depend on the selection we make in any other department; specifically, we have 4 mathematics courses to choose from, 3 computer science courses, and 2 philosophy courses, and any combination of courses will fit our schedule (provided each department is represented exactly once).

How might we apply the Rule of Product to our situation? We would need to define a process and the steps of that process, and then identify how many choices are available at each step. Naturally, the overall process here is identifying our course schedule for next semester. Since we are constrained to select (exactly) one course from each department, let us identify three steps: (1) select a mathematics course; (2) select a computer science course; (3) select a philosophy course. (Note: Does the order of these steps matter? What if we select a philosophy course first, instead? Will our process be fundamentally different? We think not, but make sure you see why before reading on.)

Next, let's represent the choices we can make at each step. Let's say the set of 4 mathematics courses available to take is  $\mathcal{M} = \{M_1, M_2, M_3, M_4\}$ , the set of 3 computer science courses is  $\mathcal{C} = \{C_1, C_2, C_3\}$ , and the set of 2 philosophy courses is  $\mathcal{P} = \{P_1, P_2\}$ . This immediately identifies for us the number of choices available at each step: (1) there are  $|\mathcal{M}| = 4$  choices; (2) there are  $|\mathcal{C}| = 3$  choices; (3) there are  $|\mathcal{P}| = 2$  choices. Thus, the Rule of Product tells us there are 24 total course schedules we could create for next semester. But,

really, why is this true? What are those schedules? Let's represent them by a tree diagram!

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/fdf39877496f47d9a5b073e46b8017ca20e73a325ca99964d6a5e23852a802b6.jpg)

Reading left to right in the diagram, we are following this three step procedure we established. The single vertex (or node) at the far left represents the start of our process—no decisions have been made—and the four edges (or branches) emerging from that vertex represent the four mathematics courses from which we can choose. We have labeled each edge with one of the elements of  $\mathcal{M}$ . No matter which one of those edges we follow (i.e., no matter which mathematics course we select), there are three edges emerging from the next vertex (i.e., we still have three computer science courses from which we can choose). We have labeled all of those edges with corresponding elements from  $\mathcal{C}$ . Following the same idea, every vertex in that column has two emerging edges which are labeled by corresponding elements from  $\mathcal{P}$ .

The benefit of this diagram is that we can see exactly what the 24 outcomes of this process are by following the labels on the edges. For instance, look at the vertex on the top of the far right column. This corresponds to selecting  $M_{1}$  and

$C_1$  and  $P_{1}$ ; alternatively, we can represent this as the ordered triple  $(M_1,C_1,P_1)$ . Further down that column, we see a vertex corresponding to the ordered triple  $(M_2,C_3,P_1)$ , for example. Every vertex has an ordered triple representation! What we are really doing when we apply the Rule of Product is identifying the cardinality of some set that is a Cartesian product of several constituent sets. The process corresponds to identifying elements of the constituent sets and arranging them in an ordered tuple. The Rule of Product tells us how many ways we can do this by identifying the cardinality of the product set consisting of all such tuples. In this specific example, we have

$$
| \mathcal{M} \times \mathcal{C} \times \mathcal{P} | = | \mathcal{M} | \cdot | \mathcal{C} | \cdot | \mathcal{P} | = 4 \cdot 3 \cdot 2 = 24
$$

Does this make more sense, now? Does this provide you any insight into how the Rule of Product actually works?

#### More Formal Statement

See Exercise 8.9.1, which asks for a proof of the following theorem. This is a more formal statement of what the Rule of Product is, mathematically. After the statement, we'll describe how it relates to the previous version.

# Theorem 8.2.10. Rule of Product (Set-Theoretic Version)

Let  $n\in \mathbb{N}$ . Suppose that  $\forall i\in \mathbb{N}\cdot T_{i}$  is a finite set. Then,

$$
\left| \prod_{i \in [n]} T_{i} \right| = | T_{1} \times T_{2} \times \dots \times T_{n} | = | T_{1} | \cdot | T_{2} | \dots | T_{n} | = \prod_{i \in [n]} | T_{i} |
$$

The relationship with the previously-stated rule of product is as follows. The elements of the set  $T_{1}$  are the choices that can be made in Step 1 of the process. For every element of  $T_{1}$ , we define the set  $T_{2}$  to be the set of choices that can be made in Step 2 of the process after that choice made in Step 1. By assumption, there is an equal number of such choices, regardless of the choice made in Step 1. Thus, it makes sense that the conclusion of the Theorem only incorporates  $|T_{2}|$ , since this value is well-defined. Likewise,  $T_{3}$  is the set of choices for Step 3 that can follow the choices made in Steps 1 and 2, and by assumption,  $|T_{3}|$  is well-defined.

In the end, we can describe an outcome of this process by an ordered  $n$ -tuple, where coordinate  $i$  is an element of the set  $T_{i}$ . Indeed, what that element could be does depend on what the previous coordinates are, but the number of choices for this element is independent of those prior choices. Since, in the end, we really only care about the number of possible outcomes, the result makes sense. Actually listing all of the outcomes would require a careful analysis of each step, seeing how a particular choice affects the choices in the next step (and the steps thereafter), but that's not the point of the result. This is why, essentially, the result amounts to proving that the size of a product of finite sets is equal to the product of their sizes.

#### Example: Applying the Rules of Sum and Product (Together)

Let's practice using these two combinatorics Rules. You'll also notice that we'll start abbreviating these rules as ROS and ROP, so that we can cite them easily. And yes, we do need to cite them when we use them!

#### Example 8.2.11. License Plates:

Suppose a license plate string consists of 6 or 7 positions, each of which is filled with a letter (from  $A$  to  $Z$ ) or a digit (from 0 to 9).

(1) How many license plates are there?

We must partition based on the length of the string, whether it is 6 or 7.

Within each part, we have a 6 or 7 step process. At step  $i$ , we fill Position  $i$  in the string with one of the 36 options (there are 26 letters and 10 digits). By ROP, then, there are  $36^6$  strings of length 6 and  $36^7$  strings of length 7.

By ROS, then, there are  $36^{6} + 36^{7}$  total license plate strings.

(2) How many license plates have at most 1 digit?

We must partition based on whether there are 0 digits or 1 digit.

With 0 digits, each step in our process places a letter in the corresponding position. We either have 6 letters—yielding  $26^6$  possibilities—or 7 letters—yielding  $26^7$  possibilities, by ROP.

By ROS, there are  $36^{6}$  or  $36^{7}$  such outcomes.

With 1 digit, step 1a chooses which of the positions is filled with a digit, step 1b chooses the digit for that position, and the rest of the steps fill the remaining positions with letters only.

There are 6 choices for which position is a digit, then 10 choices for how to fill that position (wherever it is), and 26 choices each for the other positions. Applying ROS and ROP, we find there are  $6 \cdot 10 \cdot 36^5$  or  $7 \cdot 10 \cdot 36^6$  such outcomes.

In total, by ROS, there are

$$
(3 6^{6} + 6 \cdot 1 0 \cdot 3 6^{5}) + (3 6^{7} + 7 \cdot 1 0 \cdot 3 6^{6})
$$

total outcomes.

(3) How many license plates have at least 2 digits?

We could follow the same method we used with the previous question, and partition this set of license plates into those with 3 digits, 4 digits, 5 digits, 6 digits, and 7 digits. We would then need to count each such set and add their sizes. But how many license plates have, say, 4 digits? With 6 positions to be filled, how many ways are there to choose 4 positions to be digits? This is where binomial coefficients will be helpful, soon enough

(after we have defined them and derived a formula).

Instead, let's take advantage of the work we just did! Let's partition the set of all license plates (call this set  $Y$ ) into those with at most 1 digit (call this set  $X_{1}$ ) and those with at least 2 digits (call this set  $X_{2}$ ). Notice that this is a partition, so ROS tells us  $|Y| = |X_1| + |X_2|$ . Subtracting algebraically, this tells us the expression we want is

$$
\begin{array}{l} \left| X_{2} \right| = \left| Y \right| - \left| X_{1} \right| \\ = \left(36^{6} + 36^{7}\right) - \left[ \left(36^{6} + 6 \cdot 10 \cdot 36^{5}\right) + \left(36^{7} + 7 \cdot 10 \cdot 36^{6}\right) \right] \\ \end{array}
$$

by just substituting in the expressions we've already derived. How convenient!

In general, this is a good strategy: to count a set, we can count its complement (i.e. all of the "other" elements outside the set) and remove that count from the "total". However, remember that we only have a Rule of Sum at our disposal, not a rule of Subtraction, so we should always be careful (for now, at least) to phrase such a step in terms of a partition and a sum. After that, we can subtract numbers or algebraic variables. Eventually, once we are more mathematically mature, we can easily skip this formality and just talk about "subtracting out" a count; for now, though, we want to emphasize the underpinnings of these counting arguments, so we will require this careful phrasing and application of the Rule of Sum.

(4) How many license plates have no vowels and no even digits?

This condition just limits the number of choices at each step. There are only 21 letters and 5 digits to choose from, so we get

$$
2 6^{6} + 2 6^{7}
$$

total outcomes, by ROP and ROS.

### 8.2.3 Fundamental Counting Objects and Formulas

Let's return to our motivating example of counting poker hands. Remember that we want to know how many of each type of hand there are, how many ways we could be dealt a flush, say, from a freshly-shuffled deck of 52 cards. Let's start by answering a related, but simpler, question: how many total poker hands are there? Another way of phrasing the question--one that will actually hint at our method of answering it--is as follows: how many ways are there to shuffle the entire deck of 52 cards, and how many of those yield the same poker hand among the top 5 cards? That is, let's identify how many distinct (i.e. totally different) ways there are to shuffle the deck; let's call these ways shufflings. Then, let's think of a specific hand, say  $T \clubsuit J \clubsuit Q \clubsuit K \clubsuit A \clubsuit$ , and count how many shufflings have the property that the top 5 cards of the deck comprise that specific hand in any order (because we don't care how we receive the 5 card we're dealt, we just care what we're holding!).

What do we have at our disposal? That's right, the Rules of Sum and Product. That's pretty much it, other than our mathematical wit and intuition, so let's dive right in. How does shuffling a deck of cards correspond to a partition, or a multi-step process? Well, the interesting thing is that we don't actually care how the deck is shuffled, we only care about the number of outcomes of the process. What actually matters about a deck of cards? Right, the order of the cards from top to bottom. With that in mind, let's think about constructing an arbitrary shuffling by assigning the order of the cards.

Let's create a shuffling by taking a deck of cards in our hands and, one by one, placing a card face down on a stack in front of us. At the first step, we have 52 cards in our hands and no stack, so we have 52 choices. At the second step, we have 51 cards remaining in our hands to choose from, no matter what that first card was. (Remember: this is the important part of the Rule of Product, that the number of choices is independent of the actual choices made.) In the third step, we have 50 cards remaining, and so on. Eventually, in the 52nd step, we have only 1 card in our hands to place on the stack of 51 cards on the table. After that step is completed, we have a shuffling of the deck sitting in front of us, with the cards stacked face-down. The card from the 1st step is on the bottom, and the card from the last step is on the top. Moreover, we see that for any arbitrary shuffling, there is exactly one sequence of choices that produces that shuffling. (This satisfies that other part of the Rule of Product about having distinct outcomes. Think about this carefully and why it's required.)

These observations allow us to directly cite the Rule of Product to answer the question: how many shufflings of a standard deck of cards are there? The number is …

$$
52 \cdot 51 \cdot 50 \dots 3 \cdot 2 \cdot 1 = \prod_{k \in [52]} k = 8.0658175 2 \times 10^{67}
$$

Yowza! That's a big number. For the sake of comparison, Avogadro's Constant (the number of atoms in a mole) is on the order of  $10^{23}$ . There is a much better notation for this kind of product that says "multiply all the natural numbers from 52 down to 1", and you've probably seen it before, but we'll define it now.

Definition 8.2.12. Let  $n \in \mathbb{N}$ . The natural number  $n!$ , read as  $n$  factorial, is given by

$$
n! = \prod_{k \in [n]} k = k \cdot (k - 1) \cdot (k - 2) \dots 3 \cdot 2 \cdot 1
$$

By definition,  $0! = 1$ .

(Recall that we used computing factorials as an example of applying the principle of induction to recursive programming, way back in Section 2.5.1. Read that section again!)

Let's think about what we've accomplished, in fact. What was special about the number 52 in this case? Besides it being the number of cards in our deck, nothing! What if we had posed the question: how many ways are there to put the elements of  $[n]$  into an ordered list? If we replace  $n$  with 52, this is actually

the same questions as before! (We could just come up with a natural bijection between the set of cards and the set [52]. Can you do this? Do you see why this shows the questions are equivalent?)

# Permutations

This type of question—how many ways are there to arrange  $n$  objects into an ordered list—is so common that we have a specific term for these ordered lists. We define them rigorously in terms of functions, but note their relationship to other mathematical objects (ordered list, for instance).

Definition 8.2.13. Let  $n \in \mathbb{N}$ . A permutation of  $[n]$  is a function  $f:[n] \to [n]$  that is a bijection.

Equivalently, a permutation of  $[n]$  is an ordered  $n$ -tuple of elements from  $[n]$  such that every element appears exactly once.

Proposition 8.2.14. Let  $n \in \mathbb{N}$ . Let  $S$  be the set of all permutations on  $[n]$ . Then  $|S| = n!$ .

Proof. We construct an arbitrary permutation of  $[n]$  by selecting which element appears first in the ordered list. There are  $n$  options. Then, from all the elements except that one already chosen, select one to appear second in the list. There are  $n - 1$  options. In general, at step  $k$ , we choose from the  $n - (k - 1) = n - k + 1$  elements not already chosen and pick one to appear next. This goes until step  $n - 1$ , where we only have 1 option. By ROP, there are  $n(n - 1)(n - 2)\cdots 2 \cdot 1 = n!$  total outcomes.

(Note: this motivates the convention of choosing to define  $0!$  as 1. Since  $n!$  represents the number of ways to permute  $n$  objects, and there is exactly 1 way to permute all of the elements of the empty set—there, we just did it!—it makes sense that  $0! = 1$ . This idea will return when we define binomial coefficients shortly; it will be very helpful to have  $0! = 1$  for the corresponding formula.)

# Selections

This mathematically proves a general version of our observation about shuffling cards, and it brings us closer to answering our original question about ranking poker hands. Remember that we hope to identify how many distinct shufflings of the deck yield a certain type of five card hand among the top five cards, so let's attack a slightly more general problem, first. Think of a specific five card hand, five particular cards. We're thinking of  $T \clubsuit J \clubsuit Q \clubsuit K \clubsuit A \clubsuit$ , so let's use that. Now, let's count how many deck shufflings place this specific hand among the top five cards.

How could we have such a situation? We don't care about the order in which we receive the cards in our hand, and we don't care about the order of the other 47 cards in the deck. All that matters is whether those specific cards are on the top. So let's follow the same idea we used before and construct a shuffling

with this property. We want to use the Rule of Product, so we need to identify a particular process that constructs a shuffling with the desired property. How can we do this?

There are really only two properties we need to satisfy, so let's identify a two step process that ensures those properties hold. The first step should place the 47 cards not from our hand on the bottom of the deck in some order. The second step should place the five cards from our hand on top of that pile in some order. The Rule of Product applies because no matter how we shuffle the bottom 47 cards, this doesn't affect the number of ways we can shuffle the top five cards. (In general, be careful to note why the Rule of Product applies in a given situation before applying it; this is often subtle and not obvious!) Now, we just need to count the number of ways to perform each step.

The first step involves creating a permutation of 47 cards. Proposition 8.2.14 tells us there are 47! ways to do this. The second step involves creating a permutation of five cards. Proposition 8.2.14 tells us there are 5! ways to do this. Then, the Rule of Product tells us the number of ways to complete these steps in succession is  $47! \cdot 5!$ . That's it!

What was special about our choice of  $T \clubsuit J \clubsuit Q \clubsuit K \clubsuit A \clubsuit$  in this case? That's right, nothing! By applying the Rule of Product again, this fact will tell us something more about the number of shufflings of the deck. Specifically, let's say  $X$  is the number of ways to select a set of five cards as a poker hand. Now, consider the three step process of taking five particular cards from the deck, arranging them in some order, and then arranging the other 47 cards below it. The Rule of Product applies here because the number of ways to perform each step doesn't depend on the choices made in the previous steps. Furthermore, every shuffling of the deck arises from exactly one particular instance of this procedure. (Think about why this is true. Consider an arbitrary shuffling of the deck. The top five cards determine which hand we chose in the first step, the order of them determines how the second step was performed, and the order of the others determines how the third step was performed.) Thus, we have found two particular formulas for counting the same set of objects—that is, the shufflings of a deck of cards—and so it must be true that

$$
X \cdot 5! \cdot 4 7! = 5 2!
$$

and therefore

$$
X = \frac{52!}{5! \cdot 47!}
$$

Think about what this formula tells us. We let  $X$  designate the number of ways to choose a set of five cards from a set of 52 cards. What was special about five or 52? Again, that's right, nothing! We have essentially derived a formula for the number of ways to select any number of objects from a larger set of objects. It might not seem like it, but we are now very close to solving the poker hands problem. Before we finish that project, let's make one comment.

First, the type of argument we just made is a common and extremely useful proof technique in combinatorics. It is known as counting in two ways. What

we did was identify a particular set of objects—in this case, the set of shufflings of a deck of cards—and then describe two different procedures that allowed us to count the size of that set. Each procedure led to a different formula, and because we were counting the same set of objects, we know those formulas are equal. We will explore this type of argument more explicitly and see many examples in Section 8.4. For now, we hope that you can see why it is a valid argument type, especially because we will expect you to use it to prove Proposition 8.2.16 below! In doing so, you will be generalizing the argument we presented here. For illustration's sake, let's summarize what we did:

Argument Summary: We seek an expression for the number of ways to draw 5 cards from a deck of 52 cards. Let  $N$  be this number we are looking for. We will identify two different formulas for expressions that involve  $N$ . This will allow us to solve these algebraic expressions for a formula for  $N$ .

(1) Select an arbitrary and fixed five card hand. We will identify the number of ways to shuffle a deck of cards such that the top five cards are that fixed five card hand, in any order.

Note that there are  $N$  ways to do this step. We seek a formula for  $N$ .

(2) Count the number of permutations of the entire deck of 52 cards.  
(3) Count the number of permutations of the deck that yield those fixed five cards on the top. This is split into three steps:

(i) Count the number of ways to permute those five cards.  
(ii) Count the number of ways to permute the other 47 cards.  
(iii) Count the number of ways to put those 5 permuted cards on top of those 47 permuted cards. (Note: There is only one way to do this, but it's important to point out as a separate step.)

(4) Overall, notice that we have counted the number of permutations (i.e. shuffings) of the deck in two separate ways, so they must be the same number.  
(5) Simplify the expression (which involves  $N$ ) to find a formula for  $N$ .

Now, let's generalize the formula we just derived. First, we make a definition and introduce some notation, and then we state a formula.

Definition 8.2.15. Let  $k, n \in \mathbb{N}$  with  $n \geq k$ . A  $k$ -selection from  $[n]$  is an unordered set of  $k$  elements from  $[n]$ .

The number of  $k$ -selections from  $[n]$  is represented by  $\binom{n}{k}$ . This is known as a binomial coefficient, and is read as "n choose k".

Proposition 8.2.16. Let  $k, n \in \mathbb{N}$  with  $n \geq k$ . The number of  $k$ -selections from  $[n]$  is given by

$$
\binom{n}{k} = \frac{n!}{k! \cdot (n - k)!}
$$

Proof. Left for the reader as Exercise 2 in Section 8.2.4

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/2666110505ac9e580ef7e3661b005b2196970248431513bdc7f3b4ea01b1ec39.jpg)

# Binomial Coefficients

One thing you might find surprising about the above formula is that the fraction is actually a natural number, no matter what  $k$  and  $n$  are! This is proven by the fact that it represents a number of ways to complete a procedure, as described in the proof, and this must be a natural number.

We want to point out one special case of this formula which may not occur to you. What if  $k = 0$ , say? What number should  $\binom{n}{0}$  be? You might be surprised to find out that  $\binom{n}{0} = 1$ . Why does this make sense? Intuitively, we think of  $\binom{n}{k}$  as the number of ways to select  $k$  objects from a set of  $n$  objects; so, how many ways can we select 0 objects from, say, 3 objects? Put 3 pens on your desk. Now, select none of them. There! You just did it! That was one way—and the only way—to select none of the objects. This argument works just as well when  $n = 0$ , even! Put no pens on your desk. Now, select none of them. There! You just did it in one way again. Thus,

$$
\forall n \in \mathbb {N} \cup \{0 \}. \left( \begin{array}{c} n \\ 0 \end{array} \right) = 1
$$

There are "better", more mathematical reasons for this result, and we will point these out in the next section when we prove Pascal's Identity. For now, we hope that this heuristic explanation with selections makes sense and can convince you of this result.

Another fact is that  $\binom{n}{K}=0$  whenever  $K > n$ . This is because there are no ways to choose, for instance, 5 objects from a set of only 3 objects. This fact is borne out by our derivation above, because in one of the steps, we would be trying to (impossibly) draw more cards for a hand than there are cards in that deck, and there are 0 ways to do this. Then, when we apply ROP, the product would evaluate to 0.

If you play around with some values of  $k$  and  $n$ , you'll notice that the values of  $\binom{n}{k}$  obeys a so-called unimodal distribution. That is, if we fix  $n$  and let  $k$  increase from 0 to  $n$ , we find the numbers going up, reaching a peak at  $\left\lfloor \frac{n}{2} \right\rfloor$  and  $\left\lceil \frac{n}{2} \right\rceil$  (notice these are the same if  $n$  is even) and then decreasing again. Furthermore, the distribution is symmetric around that middle! Can you prove that these properties hold? Try it!

# Arrangements

We now have all of the tools necessary to count poker hands (and plenty of other objects, for that matter). We know how many ways there are to permute the elements of a set, and we know how many ways there are to choose a subset of a certain size from a larger set. Between these two tools, we know how to count any combinations of cards. For instance, to count an ordered subset of cards, we can count the number of ways to choose the subset and then permute its elements, applying the Rule of Product to this two-step process. In fact, this idea is common enough that we will give it a defined name.

Definition 8.2.17. Let  $k, n \in \mathbb{N}$  with  $n \geq k$ . A  $k$ -arrangement from  $[n]$  is an ordered  $k$ -tuple of elements from  $[n]$  with no repeated elements.

Equivalently, a  $k$ -arrangement from  $[n]$  is a function  $f:[k]\to [n]$  that is an injection.

Proposition 8.2.18. Let  $k, n \in \mathbb{N}$  with  $n \geq k$ . The number of  $k$ -arrangements from  $[n]$  is given by  $\binom{n}{k} \cdot k! = \frac{n!}{(n-k)!}$ .

Proof. Left for the reader as Exercise 3 in Section 8.2.4

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/26d8d90559cd2a4cc5ed273a7fee3a523770470166635991f582f309f8d9ea25.jpg)

# Repetition

Before we go on and count those poker hands, actually, we should point out that all of the standard counting formulas we have seen in this section only consider procedures where objects are not allowed to be repeated. That is, when we choose a five card hand from a deck, we can't have two  $A$ ♣s, for instance. There are situations where we will want to allow objects to be selected multiple times. Look back at the License Plates example in the previous section. We were allowed to repeat any digit/letter; for instance, 111AAA is a valid license plate. Let's see one more example here:

Example 8.2.19. Consider a standard, fair, two-sided coin. Flip the coin 6 times in a row and write down the outcomes, either  $H$  or  $T$  for each flip.

Question: How many possible sequences of outcomes are there?

To answer this question, we note that there are 2 possible outcomes on each flip, regardless of the outcomes on the previous flips. Thus, the Rule of Product applies, and we can say there are  $2 \cdot 2 \cdot 2 \cdot 2 = 2^4 = 16$  possible sequences of flips.

The reason this idea is related to selections and arrangements (beside using the Rule of Product, of course) is that we can also represent these sequences as arrangements of 4 objects from the set  $\{H,T\}$  where objects are allowed to appear more than once. (There is a natural correspondence between  $\{H,T\}$  and [2], so it is like we are arranging 4 objects from [2], where the objects can occur more than once.)

This general idea is conveyed by this definition:

Definition 8.2.20. Let  $k, n \in \mathbb{N}$ . A  $k$ -arrangement with repetition from  $[n]$  is a  $k$ -tuple of elements from  $[n]$  where elements are allowed to appear more than once.

Notice that there is no restriction on  $k$  because we are allowing elements to appear multiple times. Before, with  $k$ -arrangements without repetition, it wouldn't make sense to choose 10 objects from 8 objects if we couldn't repeat any! Here, though, this is allowed, so  $k$  and  $n$  can be any natural numbers.

Proposition 8.2.21. Let  $k, n \in \mathbb{N}$ . The number of  $k$ -arrangements with repetition from  $[n]$  is given by  $n^k$ .

Proof. Left for the reader as Exercise 4 in Section 8.2.4.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/a97359778671c8e4780345e3cacd0b8326820bcced714a28a7b665091268679a.jpg)

You might anticipate a definition and proposition for  $k$ -selections with repetition that are similar to the ones for arrangements with repetition. We will discuss these in Section 8.5, but the techniques used to count them are more advanced than the ones we have now, so we will address this later.

# Summarizing Counting Formulas

Let's summarize the standard counting objects and formulas we have defined and derived thus far: Say we have  $n$  objects and we want to select  $k$  of them. How many ways can we do this? The answer depends on two questions:

- Are repeats allowed?  
- Does order distinguish the outcome?

Each of these questions can be answer with Yes or No, and each of the four ways to answer them yields a different formulation of the original question.

$$
\begin{array}{c c c c} & & \text{Repeats?} \\ & \text{Yes} & & \text{No} \\ & \text{Yes} & n^{k} & \frac{n!}{(n - k)!} \\ \text{Order} & & & \\ \text{Matters?} & & & \\ & \text{No} & \ref{eq:1.2.3} \\ & & & \binom{n}{k} \end{array}
$$

(Note: Sometimes, the roles of  $n$  and  $k$  are reversed in a problem. Be careful about this! We'll try to stick to these conventions but, in general, the letters aren't important; it's what they represent.)

# Combinatorics Definitions in terms of Functions

Remember there are also equivalent formulations of these counting ideas in terms of functions, and it's helpful to have this in mind. Perhaps representing a problem in terms of functions will help us solve it. At the very least, it's a good mental exercise to work through and make sure you understand the relationship between, for instance, permutations and bijections. We will just state each of these formulations (and some corresponding formulas) and ask you to think about them on your own. Try to see exactly why and how the notions are related; try to explain them to a friend who only knows one of the interpretations; work with your classmates to perhaps come up with a different formulation!

- A permutation of  $n$  elements is a bijection  $f:[n] \to [n]$ .

There are  $n!$  possible bijections from the set  $[n]$  to itself.

- An arrangement of  $k$  elements from  $n$  elements is an injection  $f: [k] \to [n]$ .

There are  $\frac{n!}{(n - k)!}$  injections from  $[k]$  to  $[n]$ .

- An arrangement with repetition of  $k$  elements from  $n$  elements is a function  $f:[k] \to [n]$ .

There are  $n^k$  possible functions from  $[k]$  to  $[n]$ .

# 8.2.4 Questions & Exercises

# Remind Yourself

Answering the following questions briefly, either out loud or in writing. These are all based on the section you just read, so if you can't recall a specific definition or concept or example, go back and reread that part. Making sure you can confidently answer these before moving on will help your understanding and memory!

(1) What is the difference between a selection and an arrangement?  
(2) How might a permutation be defined in terms of selections and arrangements?  
(3) What is  $\binom{10}{15}$ ?  
(4) How is a permutation related to the concept of a bijection?

# Try It

Try answering the following short-answer questions. They require you to actually write something down, or describe something out loud (to a friend/classmate, perhaps). The goal is to get you to practice working with new concepts, definitions, and notation. They are meant to be easy, though; making sure you can work through them will help you!

(1) Verify algebraically that  $\binom{n}{k}=\binom{n}{n-k}$ .  
(2) Prove Proposition 8.2.16, i.e. prove that

$$
\binom{n}{k} = \frac{n!}{k! (n - k)!}
$$

Do this by adapting the argument we used for counting the number of 5 card hands from a standard deck.

(3) Prove Proposition 8.2.18. That is, prove there are

$$
\frac{n!}{(n - k)!}
$$

possible  $k$ -arrangements from  $[n]$ .

(4) Prove Proposition 8.2.21. That is, prove there are

$$
n^{k}
$$

possible  $k$ -arrangements with repetition from  $[n]$ .

# 8.3 Counting Arguments

Now we are fully ready to address the motivating problem of this chapter! We will employ the counting techniques we have developed—the Rules of Product and Sum—as well as the formulas for selections and arrangements. Importantly, we will show you some standard counting arguments and proof strategies. We will point out some general guidelines and proof techniques as we go, motivating and implementing these with several examples. These are the types of techniques we will expect you to use in the future.

# 8.3.1 Poker Hands

# Example 8.3.1. One Pair

Let's start near the bottom of the ranks and count the number of poker hands that correspond to one pair. We emphasize that we only want to count hands with exactly one pair, and exclude two pairs, three of a kinds, full houses and four of a kinds. This idea will surface soon enough in our counting argument. (It also hints at why counting "high card" hands is actually quite difficult, far more intricate than just selecting five random cards! How can we guarantee that a hand has no matching cards, isn't a straight, and isn't a flush? We will address this question later in this section.)

In this example—and in every other example we will explicate here, and every other exercise you will complete (do you get the sense this is important?)—we seek a process wherein we construct an object (in this case, a poker hand) with the desired properties (in this case, having exactly one pair and no other matching cards). By counting the number of options at each step in the process, and ensuring that every desired object can only be obtained via one set of options in the process, we can apply the Rule of Product and identify the number of objects with the desired properties!

Here's a useful strategy for coming up with these processes: pretend your friend is holding one of the objects you're counting in his/her hands, but you can't see it. What questions would you ask to identify the particular properties of the object he/she is holding? These can be yes/no questions or, more often than not, queries about the particular properties the object has. In our specific case, counting one-pair hands, we would likely ask the following questions: (1) "What are the two cards in the pair?" and (2) "What are the three cards not in the pair?" With the answers to those questions, we could fully specify the hand our friend is holding. Unfortunately, it's too hard to count the number of answers to those questions as they are posed. We should be more specific and

break our questions into smaller parts. That way, we can count the number of answers to each question and use those numbers in the Rule of Product.

How can we be more specific? How can we break question one into parts? Imagine the types of answers our friend might give us for question one. We might hear something like, "The Ace of Hearts and Ace of Spades" or "The Sevens of Diamonds and Clubs". This signals the important properties of an answer to question one: we need to know the rank of the pair cards (are they both Aces? Kings? Queens? etc.) and the two suits represented. We know there are 13 ranks and 4 suits in the deck. With this information, we can identify how to construct a pair and count the options.

1. Choose a rank for the two cards in the pair: 13 options  
2. Choose the two suits for those cards:  $\binom{4}{2}=6$  options

Notice that we have used the binomial coefficient  $\binom{4}{2}$  to signify that we are selecting 2 suits from a set of 4 suits, so there are  $\binom{4}{2}$  ways to do this.

Note:  $\binom{4}{2}$  is a NUMBER. It represents the number of ways to do something, and does not actually correspond to doing that action. That is, we don't say something silly like  $\binom{4}{2}$  selects 2 suits from the set of 4 suits. How can a number choose cards from a deck?

Also note: We wrote  $\binom{4}{2}=6$  in this case for illustration's sake but, in general, we do not expect (or even necessarily want) you to evaluate binomial coefficients. The arithmetic often involves very large numbers and, quite frankly, the number  $\binom{4}{2}$  is far more illustrative than 6. It indicates to a reader that this step in your process involves selecting 2 elements from a set of 4, whereas 6 could represent  $\binom{6}{1}$  or  $2 \cdot \binom{3}{2}$  and so on. With that observation made, we might as well write the number in the first step as  $\binom{13}{1}$ , right?

Now, we observe that any selections made in these steps produce a unique pair. That is, we can't possibly have a pair that could arise from two different versions of this process. Thus, the Rule of Product applies, and we can conclude that there are  $\binom{13}{1} \cdot \binom{4}{2}$  ways to select a pair of cards.

What if we had performed these two steps in the opposite order? We could just as well identify a pair of cards by asking which two suits are represented and then asking what their common rank is? (Of course, this only works if we know, a priori, that the cards have a common rank.) In that case, the Rule of Product would tell us there are  $\binom{4}{2} \cdot \binom{13}{1}$  such pairs. Hey, that's the same number! The commutativity of multiplication of real numbers (that is,  $x \cdot y = y \cdot x$  for any  $x, y \in \mathbb{R}$ ) confirms our intuition that these steps are reversible.

We aren't quite done constructing a poker hand with one pair. We need to choose three more cards. What property should they have? What more specific questions could we ask our friend, besides "What are they?" We need to know the three cards' ranks and their suits. Is there any restriction on their suits? No! (Because we have a pair already, there is no chance for a flush.) Is there any restriction on their ranks? Yes! We know the three cards all have different ranks, and none of them match the rank of the pair already chosen. With these observations, we can reverse the process and construct the rest of the hand.

1. Choose 3 ranks from the 12 remaining (i.e. not the same rank as the pair cards):  $\binom{12}{3}$  options  
2. Arrange those 3 ranks in increasing order: 1 option  
3. Choose a suit for the lowest-ranked card:  $\binom{4}{1}$  options  
4. Choose a suit for the middle-ranked card:  $\binom{4}{1}$  options  
5. Choose a suit for the highest-ranked card:  $\binom{4}{1}$  options

Why did we need step 2? Look back at the definition of selection; it is an unordered list, or a set. Thus, it wouldn't make sense to jump into step 2 by saying "Choose a suit for the 1st of those chosen cards" because, well, there is no 1st card! We need to impose some kind of ordering on the cards to refer to them individually. You might be tempted to order them as we remove them from the deck. This would break step 1 into 3 sub-steps: (a) choose the 1st card:  $\binom{12}{1}$  options; (b) choose the 2nd card:  $\binom{11}{1}$  options; (c) choose the 3rd card:  $\binom{10}{1}$  options. Applying the Rule of Product to this step yields a different number than step 1:

$$
\binom{12}{1} \cdot \binom{11}{1} \cdot \binom{10}{1} = 12 \cdot 11 \cdot 10 \neq \binom{12}{3} = \frac{12!}{3! \cdot 9!} = \frac{12 \cdot 11 \cdot 10}{6}
$$

This is because the (a)-(b)-(c) step imposes an order on those three cards that doesn't actually matter within our poker hand. When playing cards, you don't care how you receive your cards, only what they are! (However, notice that if we "divide out" by the number of ways to order 3 cards, namely 3!, we get the same number. This hints at an interesting concept, a kind of "inverse" of the Rule of Product. We will discuss this at the end of this section.) This is why we couldn't refer to "the 1st card" in step 2. Instead, we found an inherent ordering of the cards, a particular property they possess that allows us to refer to specific cards among them without applying an external ordering.

Again, the Rule of Product applies because any selection of 3 cards of different ranks could only come from one set of choices made in these steps. Furthermore, we can think of selecting a pair as Step 1 and selecting three other cards of different ranks as Step 2 and apply the Rule of Product to this entire process. This finally gives us an answer for the number of "one pair" poker hands:

$$
\left( \begin{array}{c} 1 3 \\ 1 \end{array} \right) \cdot \left( \begin{array}{c} 4 \\ 2 \end{array} \right) \cdot \left( \begin{array}{c} 1 2 \\ 3 \end{array} \right) \cdot \left( \begin{array}{c} 4 \\ 1 \end{array} \right)^{3}
$$

Notice that we have combined the three numbers from the last steps above into one coefficient raised to the third power. Now, this type of numerical answer is totally acceptable and is far better than just writing down 1,098,240. If you make a "typo" on your homework or make a calculator error, how can we identify the error and offer a comment?  $\odot$

We did previously note the commutativity of multiplication and the idea of doing steps in different orders. However, we hope you'll agree that explaining a product like

$$
\left( \begin{array}{c} 4 \\ 1 \end{array} \right)^{3} \cdot \left( \begin{array}{c} 1 3 \\ 1 \end{array} \right) \cdot \left( \begin{array}{c} 1 2 \\ 3 \end{array} \right) \cdot \left( \begin{array}{c} 4 \\ 2 \end{array} \right)
$$

even though it represents the same process, is far more intricate, and unnecessarily so, at that.

We chose to be particularly wordy with our explanation in the last subsection. We won't expect you to write nearly as much. We were just officially introducing a formal method that applies the counting rules and formulas we developed in the last section, while also mentioning some heuristic rules and strategies to approach problems. So with that said, let's present a typical solution to this problem, in more condensed form. This is the type of solution we will expect you to write:

Question: How many 5-card poker hands are "one pair" hands?

Answer: We claim there are

$$
\left( \begin{array}{c} 1 3 \\ 1 \end{array} \right) \cdot \left( \begin{array}{c} 4 \\ 2 \end{array} \right) \cdot \left( \begin{array}{c} 1 2 \\ 3 \end{array} \right) \cdot \left( \begin{array}{c} 4 \\ 1 \end{array} \right)^{3}
$$

such hands. To show this, we will identify a four-step process and apply ROP. An outcome of this process is a "one pair" poker hand:

(1) Select a rank to constitute the pair.

There are  $\binom{13}{1}$  ways to do this.

(2) Select which two suits of that card in (1) appear in the hand.

There are  $\binom{4}{2}$  ways to do this.

(3) Select three other ranks to appear.

There are  $\binom{12}{1}$  ways to do this.

(4) For each rank chosen in (3), select a suit of that card to appear in the hand.

There are  $\binom{4}{1}$  ways to do this, each of three times; thus, there are  $\binom{4}{1}^3$  ways in total.

Applying ROP, we find the answer given above.

Does this make sense? Notice how much shorter it is than our explanation above. This is fine! We will continue to sometimes write out some details in our written examples here (to help you understand how to approach these problems, before writing them up), but your written solutions can be a little more condensed, as long as they identify all the key elements of the problem's solution. Notice that we pointed out a use of the ROP, cited it, and identified all the steps in the process; for each step, we noted how many ways there are to do that step. It just so happens each of these steps are pretty simple, and

the number of ways to perform them is clear in each case. In general, we might expect a more thorough description. For instance, we would consider writing that the number of ways to do step (3) is  $\binom{12}{1}$  because we aren't allowed to re-select the rank chosen in step (1). However, we felt this was clear from the descriptions so we left it out. This is a judgment call, though, and we recommend (as always) setting aside your proofs and rereading them as if you didn't write them. If you can't remember, or aren't entirely sure, why something is true, consider adding a little extra description there.

Before doing another example, let's point out a different solution to this same problem!

Question: How many 5-card poker hands are "one pair" hands?

Answer: We claim there are

$$
\left( \begin{array}{c} 1 3 \\ 4 \end{array} \right) \left( \begin{array}{c} 4 \\ 1 \end{array} \right) \left( \begin{array}{c} 4 \\ 2 \end{array} \right) \left( \begin{array}{c} 4 \\ 1 \end{array} \right)^{3}
$$

"one pair" poker hands. We will identify a six-step process and apply ROP. The main idea is that a one pair hand can be identified by choosing all four ranks that appear and identifying which one is repeated twice (leaving the others to appear just once).

(1) Select 4 ranks that will appear in our hand.

There are  $\binom{13}{4}$  ways to do this.

(2) Of the 4 ranks selected in Step (1), select one of them. Two cards of that rank will appear in our hand.

There are  $\binom{4}{1}$  ways to do this.

(3) For that rank chosen in Step (2), select 2 suits. These will appear in our hand. There are  $\binom{4}{2}$  ways to do this.  
(4) For the lowest of those 3 ranks not chosen in Step (2), select a suit.

There are  $\binom{4}{1}$  ways to do this.

(5) For the middle of those 3 ranks not chosen in Step (2), select a suit.

There are  $\binom{4}{1}$  ways to do this.

(6) For the highest of those 3 ranks not chosen in Step (2), select a suit.

There are  $\binom{4}{1}$  ways to do this.

By ROP, and simplifying  $\binom{4}{1}\binom{4}{1}\binom{4}{1}=\binom{4}{1}^{3}$ , we have shown the expression above is correct.

Isn't that neat? We'll leave it to you to verify that

$$
\binom {1 3} {4} \binom {4} {1} \binom {4} {2} \binom {4} {1}^{3} = 1 0 9 8 2 4 0 = \binom {1 3} {1} \binom {4} {2} \binom {1 2} {3} \binom {4} {1}^{3}
$$

is true, numerically speaking. Without calculating that number in the middle, though, we could be sure that the two expressions, on the left and right, are absolutely equal representations of the same number because they count the same thing: the number of one pair poker hands. This is another instance of that idea of "counting in two ways" that we are building towards.

# Example 8.3.2. Flush

Let's jump right into another problem and solve it. Let's count the number of poker hands that are flushes. A flush hand is defined by two properties: the suit all 5 of its cards share, and the 5 ranks of those cards. Thus, a flush can be generated by a two-step process:

(1) Select a suit for all five cards of the hand.

There are  $\binom{4}{1}$  ways to do this.

(2) Select five of the cards from that suit to appear in the hand.

There are  $\binom{13}{5}$  ways to do this.

Since each flush hand is uniquely defined by these two steps, we can apply ROP and conclude that there are

$$
\left( \begin{array}{c} 4 \\ 1 \end{array} \right) \cdot \left( \begin{array}{c} 1 3 \\ 5 \end{array} \right) = 5 1 4 8
$$

poker hands that are flushes.

This proof given in this example (except for the final number 5148, which we only included here for sake of comparison to the "one pair" answer which was much larger), is completely correct and rigorous, and would receive full credit. Use this as a model for simple counting problems with the Rule of Product.

# Example 8.3.3. Straight

The ranks of the cards in a straight are uniquely determined by the "starting rank", the lowest card of the hand. If I told you I had a 5-card straight starting with 7, you'd know immediately I have a 789TJ straight. Since we can have a straight like A2345, or one like 23456, … all the way up to TJQKA (Note: There is no "going around the corner" in a straight, like QKA23), this means we have 10 possible lowest ranks in a straight. Thus, there are ten types of straight, and after picking which type we have, we just need to assign the suits so that they aren't all the same (in which case we'd have a straight flush).

We claim there are

$$
\binom {1 0} {1} \left[ \binom {4} {1}^{5} - \binom {4} {1} \right] = 1 0 \cdot (4^{5} - 4)
$$

5 card hands that are straights.

Proof. We will describe 5 card hands that are straights by a two-step process:

1. Select one of 10 ranks to be the lowest rank in the straight. These options are A,2,3,4,5,6,7,8,9,T, so there are 10 options in this step.

Note: This determines the other 4 ranks in the hand, since the 5 ranks must be consecutive and we know what the lowest one is.

2. Assign suits to the 5 cards so that they are not all the same suit.

Let's say  $X$  is the set of all possible ways to assign suits in this manner, so there are  $|X|$  options in this step.

We will now find  $|X|$  by establishing a partition. Let  $Y$  be the set of all assignments of 5 suits so that they are all the same. Notice that the sets  $X$  and  $Y$  form a partition of  $U$ , the set of all possible assignments of 5 suits. (That is, any assignment of 5 suits either selects all the same suit, or it does not.) Thus, by ROS, we have  $|U| = |X| + |Y|$ .

We can find  $|U|$  by a 5 step process, where in Step  $i$ , we select one of the 4 suits for the  $i$ -th highest rank in the hand. With 4 options at each of 5 steps, we have  $|U| = 4^5$ .

We can find  $|Y|$  by noticing that any such selection amounts to picking one of the 4 suits and assigning that suit to all 5 cards in the hand. Thus,  $|Y| = 4$ .

Accordingly, we can rearrange the above equality and write

$$
| X | = | U | - | Y | = 4^{5} - 4
$$

Since  $|X|$  is the number of options in Step (2) above, by ROP, we have proven the claim.

Note: In this proof, we came up with all of the relevant steps to show that there are  $10 \cdot 4 = 40$  possible straight flushes (straights of the same suit), only  $1 \cdot 4 = 4$  of which are royal straight flushes (TJQKA of the same suit). Try to write out those arguments for yourself!

# 8.3.2 Other Card-Counting Examples

Let's look at some related examples to broaden the class of techniques we're applying.

# Example 8.3.4. At least 3 Aces

For this example, let's count the number of poker hands that have at least three aces. Again, let's apply the technique we used above and think of the essential properties of such a hand. Try to think of a few questions yourself, with the goal being that the answers determine a unique hand and, given any answer, we can count exactly how many ways to construct a hand that yields that answer.

Did you notice the difficulty? One of the answers to the questions directly affects the nature of the other questions! This indicates some deeper mathematical issues at play. Perhaps it makes sense to have that determining question come first, and then consider what decisions must be made from there.

First, IF there are exactly 3 Aces in the hand, then we need to determine the characteristics of the other two cards. Those two cards are either (a) the same rank or (b) two different ranks. Thus, there are two sub-cases for this particular case. This yields the following procedure:

1. Choose 3 suits for the 3 Aces:  $\binom{4}{3}$  options

(a) The remaining two cards are of different ranks:

i. Choose 2 ranks from the remaining 12 for the other 2 cards:  $\binom{12}{2}$  options  
ii. Choose a suit for the lowest-rank card chosen in Step 2:  $\binom{4}{1}$  options  
iii. Choose a suit for the highest-rank card chosen in Step 2:  $\binom{4}{1}$  options

(b) The remaining two cards are of the same rank:

i. Choose 1 rank from the 12 non-Ace ranks:  $\binom{12}{1}$  options  
ii. Choose 2 suits for this rank:  $\binom{4}{2}$  options

Then, by the Rules of Product and Sum (since we have separate cases in a process), we find there are

$$
\left( \begin{array}{c} 4 \\ 3 \end{array} \right) \left[ \left( \begin{array}{c} 1 2 \\ 2 \end{array} \right) \left( \begin{array}{c} 4 \\ 1 \end{array} \right)^{2} + \left( \begin{array}{c} 1 2 \\ 1 \end{array} \right) \left( \begin{array}{c} 4 \\ 2 \end{array} \right) \right]
$$

hands with exactly 3 Aces.

Second, IF there are exactly 4 Aces in the hand, we need to determine the characteristic of the fifth card in the hand. This yields the following procedure

1. Choose 4 suits for the 4 Aces:  $\binom{4}{4}$  options  
2. Choose 1 rank from the remaining 12 for the other card:  $\binom{12}{1}$  options  
3. Choose a suit for the card chosen in Step 2:  $\binom{4}{1}$  options

We can apply the Rule of Product and conclude that there are then  $\binom{4}{4}\binom{12}{1}\binom{4}{1}$  hands with exactly 4 Aces. Now, we must apply the Rule of Sum! What we have here is a partition of the set of desired hands—those with at least three Aces—into two subsets—those with exactly three Aces and those with exactly four Aces. Since those subsets partition the larger set (i.e. every hand with at least three Aces has either three Aces or four Aces, not both and not neither), we may apply the rule of sum and conclude that there are

$$
\binom {4} {3} \left[ \binom {1 2} {2} \binom {4} {1}^{2} + \binom {1 2} {1} \binom {4} {2} \right] + \binom {4} {4} \binom {1 2} {1} \binom {4} {1}
$$

poker hands with at least three Aces.

Recall that the rigorous statement of the Rule of Sum concerned cardinalities of finite sets, and yet we didn't technically get into those details in the previous example. There is a certain amount of discretion and finesse required with these types of combinatorial arguments. Is it obvious to you that every poker hand with at least three Aces has either exactly three or exactly four Aces, not both and not neither? We are not saying it should be totally obvious and you're a dummy for not seeing it right away! Far from it! What we are saying is that this type of statement should probably suffice as an explanation in a proof. Yes, we could dive into further detail, reformulate poker hands in terms of sets, and completely rigorize the game of poker into set notation. What good would that really do, though? It seems far easier to explain it via the italicized statement above. If we were pressed for details by a confused reader, we could offer further explanation, but for a general audience, this argument would suffice. Hopefully, this rule of thumb—convincing a general audience, but being able to explain further when pressed further—should guide you into making decisions about how much detail to include in a counting argument. The essential observation here is that we indicated why our choices pertain to a partition of the set of hands in question. No, we didn't rigorously prove the two sets were disjoint, but we offered an explanation as to why.

Another approach to this problem does not involve considering the suits of the non-Ace cards. Instead, we can approach the process of constructing a poker hand with at least 3 Aces as follows:

1. If there are exactly 3 Aces:

(a) Choose 3 suits for the 3 Aces:  $\binom{4}{3}$  options  
(b) From the remaining 48 non-Ace cards, select 2 to "fill out" the 5 card hand:  $\binom{48}{2}$

2. If there are exactly 4 Aces:

(a) Choose 4 suits for the 4 Aces:  $\binom{4}{4}=1$  option  
(b) From the remaining 48 non-Ace cards, select 1 to "fill out" the 5 card hand:  $\binom{48}{1}$

Thus, by the Rule of Sum (since we have partitioned the hands based on how many Aces they have) and by the Rule of Product in each of the two cases, we have

$$
\left( \begin{array}{c} 4 \\ 3 \end{array} \right) \left( \begin{array}{c} 4 8 \\ 2 \end{array} \right) + \left( \begin{array}{c} 4 \\ 4 \end{array} \right) \left( \begin{array}{c} 4 8 \\ 1 \end{array} \right)
$$

total poker hands with at least 3 Aces. You will see (and use) this approach more often. The previous argument was more similar to the previous example involving flushes, so that's what we presented first. This argument is a bit shorter and "slicker", and is thus more commonly used. But wait a minute, these answers look different! We were counting the same set of poker hands, so

shouldn't we expect the same final number? Well, yes, and we recommend that you perform the requisite algebraic manipulations to convince yourself that

$$
\binom {4} {3} \binom {4 8} {2} + \binom {4 8} {1} = \binom {4} {3} \left[ \binom {1 2} {2} \binom {4} {1}^{2} + \binom {1 2} {1} \binom {4} {2} \right] + \binom {4} {4} \binom {1 2} {1} \binom {4} {1}
$$

It will only take a minute, and it is worthwhile.

Before moving on to another problem, let's look at a false argument about this one. It may seem strange to look at wrong answers, but we know from experience that it can be extremely helpful and instructive to try to find the flaw in a faulty argument. Sure, we could just compare two large integers and just say, "Hey, look, they're different!" but this is not enlightening. Rather, we want to follow a combinatorial argument and pinpoint the step that makes a logical flaw or alters the set of objects we are counting in a flawed way. We highly recommend this technique for several reasons. First, it gives you good practice with reading proofs and understanding others' arguments. This will help you as you learn more mathematics and read other books that might not explain things in exactly the same way. Second, it helps you become a better editor of your own proofs. After writing up a homework problem, set it aside for half an hour and come back to it with a fresh mind. Read it as if you didn't write it (as best you can, we understand you just can't pretend you didn't do it!). Does it make sense? Are there certain steps that seemed obvious when you wrote them but whose details escape you now? Is the answer even correct and are you convinced by it? Third, recognizing when a bad step is made in a proof solidifies your understanding of the principles underlying the argument. Going through combinatorics arguments and identifying flaws will really help your intuition and understanding of the Rules of Sum and Product. Trust us.

What do you make of this argument? Remember, this answer is incorrect, and we want to know why!

Example 8.3.5. Find the Flaw! How many 5-card poker hands have at least three Aces?

1. For hands that have three Aces:

(a) Choose 3 of the 4 Aces:  $\binom{4}{3}$  options  
(b) From the remaining 49 cards, choose 2 more:  $\binom{49}{2}$  options

2. For hands that have four Aces:

(a) Choose 4 of the 4 Aces:  $\binom{4}{4}=1$  option  
(b) From the remainign 48 cards, choose 1 more:  $\binom{48}{1}$  options

Thus, there are

$$
\left( \begin{array}{c} 4 \\ 3 \end{array} \right) \left( \begin{array}{c} 4 9 \\ 2 \end{array} \right) + \left( \begin{array}{c} 4 \\ 4 \end{array} \right) \left( \begin{array}{c} 4 8 \\ 1 \end{array} \right)
$$

poker hands with at least 3 Aces.

What's the problem here? Do you see any errors? Was the Rule of Product applied inappropriately? Was the Rule of Sum applied to something that isn't actually a partition? Did we overcount? Undercount? Did we count some hands that do not have the desired properties? Think about this before reading on.

Here's what we noticed: this answer is too large. We overcounted by including certain hands multiple times in our count. That is, every hand we sought to count is included at least once by the steps above, but some hands can be constructed in multiple ways via those steps. These observations guarantee that our number is too large.

How did we know this? We recommend actively trying to identify a hand that can be constructed in different ways by following the above steps. If you're reading through a proof and can do this, you know that the entire proof is now flawed. In this case, let's examine a hand that has exactly 4 Aces; specifically, let's look at the hand  $A \triangleleft A \triangleleft A \diamond A \otimes 2 \triangleleft$ . We can construct this hand by the following paths through the steps:

1. Choose 3 of the 4 Aces:  $A \triangleleft A \triangleleft A \diamond$  
2. From the remaining 49 cards, choose 2 more:  $A \heartsuit 2$

Or, we could take this path:

1. Choose 4 of the 4 Aces:  $A \triangleleft A \triangleleft A \diamond A \heartsuit$  
2. From the remaining 48 cards, choose 1 more: 2

Do you see the problem now? This exact same hand is produced in (at least) two distinct ways via the process outlined above. Thus, the answer is an overcount. Are there any other ways we could construct this same hand? How many? Try to identify another hand that is overcounted. Can we possibly identify how many times every hand is overcounted by and amend our answer that way? This is an interesting (and very challenging, actually!) idea that we'll return to later.

# Potential Flaws in Arguments

For now, we want to emphasize the technique of reading combinatorial proofs and looking for some standard flaws:

- Misuse of Rule of Product:

The proof incorrectly applies the Rule of Product to a situation that doesn't warrant it. Perhaps the number of options at each step of the procedure change somehow, depending on how the previous steps are completed. Or, perhaps different sequences of steps produce the same outcome.

- Misuse of Rule of Sum:

The proof incorrectly applies the Rule of Sum to a situation that doesn't warrant it. Perhaps the sets of the "partition" are not actually disjoint.

Or, perhaps the union the sets of the "partition" do not actually cover the entire set in question.

# Overcount:

Every desired object is counted at least once, but some are counted more than once. That is, some elements of the set in question can be counted in multiple ways via the steps of the proof.

# - Undercount:

Some desired objects are not counted at all. That is, some elements of the set in question are not counted by the steps of the proof.

# - Extraneous Count:

Some undesired objects are counted. That is, the steps of the proof count some objects that are not elements of the set in question.

We recommend reading over your written proofs and trying to identify these flaws, even if they aren't there. Perhaps by struggling to find an overcounting argument, say—by attempting to construct certain objects in multiple ways via your steps—you actually identify a flaw you didn't know was there! If you don't find any flaws, you can be more assured that your proof is fully correct.

Example 8.3.6. Here is a standard example of a naive overcount. We will show how it is an overcount and then fix it by counting in a different way! Here is the question:

How many 5-card hands have at least one card of each suit?

Here is an incorrect argument:

$$
\text{Th er ea re} \binom {1 3} {1}^{4} \cdot \binom {4 8} {1} = 1 3 7 0 9 2 8 \text{su ch ha nd s}.
$$

We can use a five-step process. In step 1, we select one of the 13 Hearts. In step 2, we select one of the 13 Diamonds. In step 3, we select one of the 13 Spades. In step 4, we select one of the 13 Clubs. There are  $\binom{13}{1}$  ways to do each of these steps.

Next, from the remaining 48 cards, we select one of them to complete our 5-card hand. By ROP, the claim above follows.

What's wrong with this? Think about it carefully before reading on. Look at the list of potential mistakes above; does one of them apply here? How would you show this?

We think that this is an overcount. To show this, we will exhibit a particular 5-card hand that should be counted only once but is, in fact, counted at least twice by the procedure outlined in the argument above.

Consider the hand  $A \heartsuit, A \diamondsuit, A \spadesuit, A \clubsuit, K \heartsuit$ . Notice that this hand can be achieved by the above procedure in two ways:

(1) Step 1: pick  $A \heartsuit$ . Step 2: pick  $A \diamondsuit$ . Step 3: pick  $A \spadesuit$ . Step 4: pick  $A \clubsuit$ . Step 5: pick  $K \heartsuit$ .  
(2) Step 1: pick  $K \heartsuit$ . Step 2: pick  $A \diamondsuit$ . Step 3: pick  $A \spadesuit$ . Step 4: pick  $A \spadesuit$ . Step 5: pick  $A \heartsuit$ .

Since a hand is unordered, these two procedures yield the same outcome. However, the argument above would count these two outcomes separately. Thus, the argument is an overcount.

To fix this argument, let's think more carefully about how many of each suit must appear. With 5 cards to be had, and only 4 suits, we see that requiring at least one of each suit means we have three suits that appear once and one suit that appears twice. That is the only way this could happen. Stated another way, the distribution of the suits has to look like  $(1,1,1,2)$ .

To count the number of such hands, we identify a process:

- Select which of the four suits will appear twice. (The other three are fixed to appear once each.)

There are  $\binom{4}{1}$  ways to do this.

From that suit, select two cards.

There are  $\binom{13}{2}$  ways to do this.

- From each of the other three suits, select one card.

There are  $\binom{13}{1}^3$  ways to do this.

By ROP, we find there are

$$
\binom {4} {1} \binom {1 3} {2} \binom {1 3} {1}^{3} = 6 8 5 4 6 4
$$

many 5-card hands with at least one card of each suit.

# Example 8.3.7. At most 2 Aces

Let's pose a similar problem now. How many 5-card poker hands have at most 2 Aces? Try this one on your own for a few minutes before reading on. If you're struggling, try to follow a similar argument to the one we made in the last problem. What are the similarities and differences of these two problems?

Here's how we handled this problem:

1. For hands with exactly 2 Aces:

(a) Select 2 of the 4 Aces:  $\binom{4}{2}$  options  
(b) From the 48 remaining non-Aces, select 3:  $\binom{48}{3}$  options

2. For hands with exactly 1 Aces:

(a) Select 1 of the 4 Aces:  $\binom{4}{1}$  options  
(b) From the 48 remaining non-Aces, select 4:  $\binom{48}{4}$  options

3. For hands with exactly 0 Aces:

(a) Select 0 of the 4 Aces:  $\binom{4}{0}=1$  options  
(b) From the 48 remaining non-Aces, select 5:  $\binom{48}{5}$  options

Since cases 1 and 2 and 3 don't overlap (i.e. a poker hand has a specific number of Aces), we may apply the Rule of Sum; also, we may apply the Rule of Product in each of the three cases because we perform the two steps in succession. Thus, there are

$$
\left( \begin{array}{c} 4 \\ 2 \end{array} \right) \left( \begin{array}{c} 4 8 \\ 3 \end{array} \right) + \left( \begin{array}{c} 4 \\ 1 \end{array} \right) \left( \begin{array}{c} 4 8 \\ 4 \end{array} \right) + \left( \begin{array}{c} 4 8 \\ 5 \end{array} \right)
$$

(Note: it is common to omit the  $\cdot$  multiplication symbol between binomial coefficients; the multiplication is implicitly assumed.)

Did you remember to count hands with 0 Aces? Forgetting this case is a common mistake! Did you also avoid the overcounting argument we saw in the last problem? We need to partition the set of hands in question by identifying three non-overlapping cases, depending on how many Aces are in the hand.

Another perfectly reasonable approach to this problem is to take advantage of the work that we've already done in the previous example. Perhaps you thought of this approach? If so, kudos for your cleverness! The main idea is to partition the set of all poker hands into two distinct cases. Every poker hand must either have at most 2 Aces or at least 3 Aces. Right? Let's let  $S$  be the set of all poker hands with at most 2 Aces,  $T$  be the set of poker hands with at least 3 Aces, and  $H$  be the set of all poker hands. Our explanation says that  $H = S \cup T$  and  $S \cap T = \emptyset$ . Thus, the Rule of Sum can be applied to deduce that  $|H| = |S| + |T|$ . Furthermore, since we need to identify  $|S|$ , we can write this as

$$
| S | = | H | - | T |
$$

and therefore

$$
| S | = \left( \begin{array}{c} 5 2 \\ 5 \end{array} \right) - \left(\left( \begin{array}{c} 4 \\ 3 \end{array} \right) \left( \begin{array}{c} 4 9 \\ 2 \end{array} \right) + \left( \begin{array}{c} 4 \\ 4 \end{array} \right) \left( \begin{array}{c} 4 8 \\ 1 \end{array} \right)\right)
$$

We were able to write down this solution without counting anything else! All we needed was that partition into two sets whose cardinalities were already known.

This strategy indicates a deeper principle at play. In essence, we applied the "Rule of Subtraction" to find the answer we cared about. This amounted to applying the Rule of Sum, as it was stated previously, and then manipulating an expression from there. Indeed, this is the "right" way to think about it, in the sense that this is the way the underlying mathematical principles are applied. However, it is common to see the "Rule of Subtraction" applied more directly, in a way, in mathematical proofs. A proof-writer might assume some familiarity, on the part of the reader, with the sophisticated workings of the Rule of Sum and "jump" to a conclusion without explicitly identifying a partition or

rigorously explaining how the Rule of Sum was applied. For instance, a higher level mathematician might offer a proof to this current example by writing the following:

From the set of all poker hands, remove those that have three or four Aces, yielding

$$
\binom {5 2} {5} - \binom {4} {3} \binom {4 8} {2} - \binom {4 8} {1}
$$

A fellow mathematician, after a moment's thought, would accept this proof. However, we agree with what you might be thinking: isn't that too short? Doesn't it make the reader think too hard? For now, at this point in your mathematical career, we strongly encourage (and require) you to provide more explicit details in a proof like this. We expect you to apply the Rule of Sum and indicate why there is a partition underlying that application, and then manipulate any algebraic expressions to draw a conclusion. Later on, outside of this course, feel free to use the "Rule of Subtraction" as you see fit. For now, though, we want you to get a proper handle on the underlying principles, and that is why the Rule of Sum is required.

Here is one final hand-counting question. It involves both the Rules of Sum and Product, and requires some careful thinking about the steps of your process

# Example 8.3.8. Exactly 1 Queen and exactly 1  $\spadesuit$

How many poker hands have exactly one Queen and exactly one Spade?

Try this on your own for a little while. Think about asking questions of your friend who is holding such a hand? Are there any questions that will determine your future line of questioning? How would you reverse those questions and identify a constructive process?

Here's our constructive procedure. How does it compare to yours? Is it exactly the same? Is it equivalent somehow? Did we just partition the set of hands in a different order? Did we get the same final answer? Why or why not? Seriously, do not be discouraged if we differ in steps or final answer. It will be far more instructive for you to sit down and think about why our answers are different than to just read our correct solution. Seriously.

1. $Q \spadesuit$  present:

(a) Choose the Queen of Spades: 1 option  
(b) From the remaining 51 cards that are not Queens (of which there are 3) and not Spades (of which there are 12 non-Queens), choose 4:  $\binom{51-3-12}{4} = \binom{36}{4}$

OR

2. $Q \spadesuit$  not present:

(a) Choose a non-Spade Queen:  $\binom{3}{1}$  options

(b) Choose a non-Queen Spade:  $\binom{12}{1}$  options  
(c) From the remaining 50 cards that are not Queens (of which there are 3) and not spades (of which there are 11 non-Queens and non-chosen), choose 3:  $\binom{50-3-11}{3} = \binom{36}{3}$  options

Since the selections at each step yield unique outcomes, the Rule of Product applies, and since every hand with these properties either has  $Q \spadesuit$  or doesn't, the Rule of Sum applies. Therefore, the number of hands with exactly one Queen and exactly one Spade is

$$
\binom {3 6} {4} + \binom {3} {1} \binom {1 2} {1} \binom {3 6} {3} = 5 8, 9 0 5 + 2 5 7, 0 4 0 = 3 1 5, 9 4 5
$$

This is a trickier problem than the previous examples, so we encourage you to read over this proof multiple times until you are fully comfortable with it. In fact, ask your friend if he/she can solve the problem, and then try to convince them of your answer by following the steps of this proof. Do you understand them well enough to be able to explain them to someone else? If so, you are a master of combinatorial arguments!

In the next subsection, we seek to further develop your comfort with combinatorial arguments and proofs. Along the way, we will also introduce some standard combinatorial objects, so that we can count something other than poker hands. Counting questions about a deck of cards are common and easy to ask, but we'd like to talk about other stuff, too!

# 8.3.3 Other Counting Objects

# $n$ -Tuples from  $[k]$

A deck of cards is a nice, standard, physical set of objects to count. Most people are familiar with them, and the fact that each card has two properties—suit and rank—allows for many interesting combinatorial problems to be posed. A more "abstract" example of a standard set of objects to count involves lists of natural numbers with specified lengths. We will make the following definition to allow us to refer to these sets in a concise form.

Definition 8.3.9. Let  $n, k \in \mathbb{N}$  be given. Then

$$
T_{k, n} = [ k ]^{n} = \left\{\left(a_{1}, a_{2}, \dots , a_{n}\right) \mid \forall i. a_{i} \in [ k ] \right\}
$$

That is,  $T_{k,n}$  is the set of all  $n$ -tuples whose elements belong to  $[k]$ .

Note: We chose the letter  $T$  because these objects are  $n$ -tuples, i.e. ordered lists of length  $n$ . We will also point out that when  $k$  is a small number, like 2 or 3, it is common to replace the set  $[k]$  with  $[k - 1] \cup \{0\}$ . For instance, the concept of a binary  $n$ -tuple is quite common in mathematics, in part due to its prevalence in computer science. With that in mind, the case where  $k = 2$  often considers ordered lists of length  $n$  whose elements are drawn from the set  $\{0,1\}$ ,

instead of  $\{1,2\}$ . Since we are interested in combinatorial aspects of these sets (i.e. "How many sequences with property  $P$  are there?") we don't, in fact, care which convention is chosen. It is actually a simple exercise to prove that

$$
\left| T_{k, n} \right| = \left| [ k ]^{n} \right| = k^{n} = \left| \left(\left[ k - 1 \right] \cup \{0 \}\right)^{n} \right|
$$

by establishing a bijection between the underlying sets,  $[k]$  and  $[k - 1] \cup \{0\}$ . We will leave this for you to do  $\odot$

Many counting arguments we will see in the next section can be conveniently phrased in this framework by identifying an appropriate  $k$  and  $n$  and an additional property that the ordered lists must have. For now, let's investigate a couple of simple cases and explore some applications. In each case, we will be looking at some subset,  $S \subseteq T_{k,n}$ , whose elements have a certain property (or properties); specifically, we will be looking to find  $|S|$  by counting the elements of  $S$ . We will study some very simple cases first, then progress into some more challenging ones. The exercises in this section will explore these ideas even further.

Example 8.3.10. Let  $n = 4$  and  $k = 3$ .

(1) What is  $|T_{3,4}|$ ?

To count all the elements of  $T_{3,4}$ , we can construct this set via a four step process, where the  $i$ -th step corresponds to selecting the  $i$ -th element in the 4-tuple. At each such step, we have 3 options (each element is one of  $\{1,2,3\}$ ), so the Rule of Product tells us there are  $3 \cdot 3 \cdot 3 \cdot 3 = 3^4 = 81$  total elements of  $T_{3,4}$ . (Note: See the exercises, which ask for a proof that  $|T_{n,k}| = n^k$ , in general.)

(2) How many elements of  $T_{3,4}$  have no 1s?

To count the elements of  $T_{3,4}$  with no 1s, we can alter our 4 step process by restricting the number of options in each step. That is, each of the 4 positions of any element of  $T_{3,4}$  with no 1 can only be filled from the set  $\{2,3\}$ . Thus, the Rule of Product says there are  $2 \cdot 2 \cdot 2 \cdot 2 = 2^4 = 16$  such elements.

(3) How many have exactly one 1? Exactly two 1s? Exactly three 1s? Exactly four 1s?

To count the elements of  $T_{3,4}$  with exactly one 1, can we use the same idea as the previous paragraph? Not exactly! The number of options available at each step in our process might change, depending on whether a 1 has already been placed in our 4-tuple. We must find a new approach. Instead, let's consider placing a 1 somewhere in our 4-tuple, then filling the remaining spots with elements from  $\{2,3\}$ . That is, our four step process to construct a 4-tuple with the property that it has exactly one 1 is as follows:

(a) Choose one of the 4 spots to be occupied by the 1:  $\binom{4}{1}=4$  options. Then, for the remaining 3 unfilled spots, read left to right.

(b) For the first unfilled spot, select an element from  $\{2,3\}$ : 2 options  
(c) For the second unfilled spot, select an element from  $\{2,3\}$ : 2 options  
(d) For the third unfilled spot, select an element from  $\{2,3\}$ : 2 options

Thus, there are  $4 \cdot 2^3 = 32$  such elements of  $T_{3,4}$ .

Perhaps we were a bit verbose in this argument. We could have had two steps, where the first identifies where the 1 is placed and the second chooses from  $\{2,3\}$  for each of the remaining 3 spots. This is just a matter of semantics, though, and amounts to the same proof of the same fact. We presented these extra details to ensure that you follow our argument and understand the underlying principles. This will help you adapt these ideas to your own proofs!

We can use a similar argument to count the number of elements of  $T_{3,4}$  with exactly 2 ones. The only difference is in Step 1: we must select 2 of the 4 spots to be filled with 1s. There are  $\binom{4}{2}$  ways to do this. Then, there are two spots to be filled from  $\{2,3\}$ . Thus, there are

$$
\left( \begin{array}{c} 4 \\ 2 \end{array} \right) \cdot 2^{2} = 2 4
$$

such elements of  $T_{3,4}$

We will leave it to you to verify that there are 8 elements of  $T_{3,4}$  with exactly three 1s, and 1 element with exactly four 1s. We will also leave it to you to verify and explain why it makes sense that  $16 + 32 + 24 + 8 + 1 = 81$ . (Challenge problem: can you generalize this result to any  $n$  and  $k$ ?)

Example 8.3.11. Let  $n \geq 3$ . Count the number of binary  $n$ -tuples that have (a) exactly three 1s; (b) at least three 1s; (c) an even number of 1s.

Our context here is the set  $\{0,1\}^n$  of all  $n$ -tuples whose elements are drawn from the base set  $\{0,1\}$ . (Notice that this is not exactly the set  $T_{2,n}$  as defined above, but we explained how these sets are equivalent, in the sense that we can find a bijection between them.)

To answer question (a), we employ the same technique as the previous example. First, we select 3 of the  $n$  total spots to be filled with 1s; second, we fill the remaining  $n - 3$  spots with 0s. There are  $\binom{n}{3}$  ways to complete the first step and, from there, the second step is deterministic (i.e. there is 1 way to do it), so there are  $\binom{n}{3}$  binary  $n$ -tuples with exactly three 1s. (Note: we only specified  $n \geq 3$  to ensure our answer is nonzero. If  $1 \leq n \leq 2$ , then we certainly can't have any such tuples! Indeed, this "verifies" that  $\binom{n}{\ell} = 0$  whenever  $\ell > n$ .)

To answer question (b), we employ the same technique as in (a), but generalize from 3 to an arbitrary natural number  $\ell$ . That is, we can count the number of binary  $n$ -tuples with exactly  $\ell$  1s, as follows: select  $\ell$  of the  $n$  spots to be filled with 1s, then fill the remaining spots with 0s. To have at least three 1s, we must have either exactly three 1s, or exactly four 1s, or …, or exactly  $n$  1s. More rigorously, for every  $\ell$  between 3 and  $n$  (inclusive), let  $A_{\ell}$  be the set

of binary  $n$ -tuples with exactly  $\ell$  1s. Every binary  $n$ -tuple with at least three ones belongs to exactly one of the  $A_{\ell}$  sets. Thus, we have identified a partition of the set of tuples we want to count, based on exactly how many 1s there are. Accordingly, the number we seek, by the Rule of Sum, is

$$
\sum_{\ell = 3}^{n} | A_{\ell} | = \sum_{\ell = 3}^{n} \binom {n} {\ell}
$$

You might be wondering whether this answer, in summation notation, is acceptable. In some sense, it is; not 10 minutes ago, we had no idea how many binary  $n$ -tuples there were with at least three 1s, and now we have a much better sense of that number. However, the solution, as presented, is more of a method for finding the precise number. If someone came up to you on the street and said, "Quick! Tell me the number of binary  $n$ -tuples with at least three 1s!", what would you do? You'd say, "Hold on, I just need to sum this series by evaluating each of the terms individually and then adding …" Not ideal, right? It would be nicer, more convenient, to have a simple form of the solution; perhaps we could write it as just one binomial coefficient, or a sum/difference/product/quotient of two or three or some small number of such coefficients. That way, no matter what  $n$  is (i.e. no matter how large it becomes), we know we can always calculate the answer efficiently in a few short steps; moreover, we want to know that the number of such steps does not increase as  $n$  increases. With the summation form above, the number of terms in the sum grows as  $n$  does. This is not ideal.

We will leave the details for you to verify and explain, but we claim that an appropriate partition of the set of all binary  $k$ -tuples can be established to prove that

$$
2^{n} = \left( \begin{array}{c} n \\ 0 \end{array} \right) + \left( \begin{array}{c} n \\ 1 \end{array} \right) + \left( \begin{array}{c} n \\ 2 \end{array} \right) + \sum_{\ell = 3}^{n} \left( \begin{array}{c} n \\ \ell \end{array} \right)
$$

by invoking the Rule of Sum. (In fact, the proof of this equality delves into some of the techniques we will discuss in the next section, but we believe you can understand what the terms of this equation mean and why the equality must hold.) What we want to emphasize, though, is that we can rearrange that equation to obtain a better, in some qualitative sense, form of the original solution we sought:

$$
\sum_{\ell = 3}^{n} \binom {n} {\ell} = 2^{n} - \binom {n} {0} - \binom {n} {1} - \binom {n} {2}
$$

Look at what we have achieved! No matter how large  $N$  is, we only have four terms to evaluate. The fact that this number is fixed is the main point. In fact, solutions of this form are given a name because we like them so much: closed form. The idea is that there is no "unnecessary" summation and the number of terms is fixed, regardless of the value of the variables contained therein.

In general, with combinatorics problems, we are always looking for a closed form of the solution, whenever possible. Sometimes, it is easy to come up with

a non-closed (some might say "open") form of a solution, but it might take some ingenuity to simplify this to a closed form. In this specific example, we relied on our observation that all binary  $n$ -tuples can be classified as having exactly zero or exactly one or exactly two or at least three 1s. This closed form of the solution not only allows us to evaluate the expression quicker and more easily, but it also provides some insight into even more of the underlying structure of the problem. For these reasons, we will always ask for closed form solutions.

Now, let's not forget about question (c)! To answer it, we employ a similar technique as in (b) and partition the set of binary  $n$ -tuples with an even number of 1s into those with exactly zero 1s (remember, 0 is an even number!), those with exactly two 1s, those with exactly four 1s, and so on. We have to be careful about the upper limit, though, because  $n$  is not necessarily even, itself! Recall the floor function that rounds a number down to the largest integer smaller than that number; an example is  $\lfloor 5.7 \rfloor = 5$ . With this in mind, we claim that there are

$$
\sum_{\ell = 0}^{\lfloor n / 2 \rfloor} \binom {n} {2 \ell}
$$

binary  $n$ -tuples with an even number of 1s. We will leave it to you to fill in a proper explanation of this claim. Try presenting it to your friend and convincing them it is correct. Don't give up until they're fully convinced! We will forgo trying to find a closed form of this solution because it is not within our grasp … or is it? See what you can deduce about this summation! What happens when  $n$  is even? When  $n$  is odd? Are there similar sums you can relate this expression to? What can you conclude?

Example 8.3.12. Count the number of binary 4-tuples whose 1s occur in pairs. To clarify, we would want to include  $(1,1,0,0)$  and  $(1,1,1,1)$  in our count, but neither  $(1,0,1,1)$  nor  $(0,1,1,1)$ , for instance. Adapt this argument to count the number of binary 5-tuple whose 1s occur in pairs. Can you continue and find a general pattern?

To have 1s in pairs in a 4-tuple, this means we can either have 0 or 2 or 4 1s, in total. Let's define the sets  $S_0, S_2$ , and  $S_4$  to be the sets of binary 4-tuples whose 1s occur in pairs and that have exactly 0 or 2 or 4 total 1s, respectively. (Note: we are not defining  $S_2$  to be the set of binary strings with exactly two 1s, only. That would erroneously count a string like  $(1,0,1,0)$ .) These sets form a partition of the set of elements we want to count, overall, so we merely need to count the elements of these three sets and add those numbers, by applying the Rule of Sum.

- To find  $|S_0|$ , we need to count the binary 4-tuples with no 1s, and there is only 1 such tuple:  $(0,0,0,0)$ .  
- To find  $|S_2|$ , we need to count the binary 4-tuples with two consecutive 1s and the remaining spots filled by 0s. Writing out the cases by hand,

$$
(1, 1, 0, 0) \qquad (0, 1, 1, 0) \qquad (0, 0, 1, 1)
$$

it is obvious that there are only 3 such tuples. (Can you identify a craftier argument for why there are 3? We'll come back to this when we look at 5-tuples.)

- To find  $|S_4|$ , we need to count the binary 4-tuples with four 1s. Certainly  $(1,1,1,1)$  is the only such tuple.

By the Rule of Sum, then, there are  $1 + 3 + 1 = 5$  binary 4-tuples whose 1s occur in pairs.

To answer this same query about 5-tuples requires a little bit more ingenuity. We will define the same sets,  $S_0, S_2, S_4$ , amending the definitions to include 5-tuples (instead of 4-tuples). Still, this collection of 3 sets forms a partition of the set of binary 5-tuples we seek to count. It suffices to count each set's elements and apply the Rule of Sum.

- $|S_0| = 1$  because only 1 binary 5-tuple has no 1s:  $(0,0,0,0,0)$ .
- To find  $|S_2|$ , we can again write out the cases by hand, but it would be nice to come up with an argument we can easily adapt to  $k$ -tuples, for any  $k \in \mathbb{N}$ . To have one pair of 1s and the remaining spots filled by 0s, we can think of the block "1, 1" as a single unit, placed amongst three 0s. Thus, we are really counting how many ways we can place a single, special unit into an ordered list of length 4 and then deterministically fill the remaining spots with another fixed element. Certainly, there are 4 ways to do this, and writing out the cases by hand verifies this claim. (What we are really doing is noting that a consecutive pair of 1s is determined by the index in the tuple of the first 1 of the pair; that index can be any of  $\{1, 2, 3, 4\}$ , so there are  $\binom{4}{1} = 4$  options.)
- This technique applies when we consider  $|S_4|$ , as well. Here, we have two separate, consecutive pairs of 1s, so we can treat each pair as a single block, "1,1". Thus, we really have two "1,1" blocks and one 0 to place in an ordered list of length 3. Since the 1,1 blocks are identical, we can count these ordered lists by selecting the two spots for the 1,1 blocks. Therefore, there are  $\binom{3}{2} = 3$  such tuples. (Equivalently, we can think of selecting the spot for the 0, i.e.  $\binom{3}{1} = 3$  options.)

Therefore, there are  $1 + 4 + 3 = 8$  binary 5-tuples whose 1s occur in pairs.

# Alphabets and Words

Related to the idea of  $k$ -tuples with elements drawn from  $[n]$  is the idea of creating words from a given alphabet. There is not much of a difference between these two concepts (and mathematically, they are really equivalent, so there's nothing new!) but it allows for different terminology and makes pertinent connections to some "real-world" concepts and problems. For this reason, and the fact that you might find it easier to work with one formulation or the other, we present this subsection and make connections to the previous subsection.

We will introduce and motivate the ideas of this subsection with some examples. In each example, we will specify an alphabet, whose elements are the allowable letters we can use to construct words. By "word", though, we really mean any ordered string of letters drawn from the given alphabet. So, for instance, we use the standard English alphabet in the first example; in that case, ZPQ is a perfectly acceptable three-letter word (but good luck trying to pronounce it!). The main reason we allow for this generality is to avoid any semantic or etymological arguments, like whether or not REALISE should be an acceptable variant of REALIZE or if ZZZ really belongs as an onomatopoetic interjection. This means we have to strip away some of the connotations around the word "word" and think of it as just a string of letters with no other inherent meaning besides its components and their order.

Example 8.3.13. Let's consider the standard, 26-letter English alphabet in this example.

1. How many 3-letter words can be made this alphabet?

Think about how this is identical to asking about  $T_{26,3}$ . We have 26 allowable letters and want to form ordered lists of length 3. By establishing a bijection between the sets  $\{A, B, C, \ldots, Z\}$  and [26] (which is actually a common and simple substitution cipher you might have played with as a child), we can rigorously show how this question is equivalent to asking what  $|T_{26,3}|$  is.

Without necessarily making this connection, though, we can easily count the 3-letter words by noting that constructing one amounts to a 3 step process (fill in 3 letters, left to right) with 26 options at each step. Thus, there are  $26^{3}$  three-letter words.

2. How many 4-letter words can be made?

By the same logic as the previous example, there are  $26^4$  four-letter words.

3. How many  $n$ -letter words?

We'll let you handle this one  $\odot$

4. How many 4-letter words start with a vowel?

Note: we consider  $\{\mathrm{A},\mathrm{E},\mathrm{I},\mathrm{O},\mathrm{U}\}$  to be the set of vowels (i.e. Y is never included, despite what the alphabet song might tell you). With that in mind, we can amend the four-step process of constructing a four-letter word to guarantee a vowel occurs in the first position on the left. There are 5 ways to complete that step, followed by 26 ways for each of the next 3 steps. Thus, there are  $5 \cdot 26^{3}$  four-letter words that start with a vowel.

5. How many 4-letter words have at most 2 consonants?

A consonant is a non-vowel, so there are  $26 - 5 = 21$  consonants in the alphabet, under our definitions. To have at most two consonants means we have exactly 0 or exactly 1 or exactly 2, so we can partition the set

of words in question into three corresponding sets,  $S_0, S_1, S_2$ , and count each separately. By applying the Rule of Product, we find that

$$
\begin{array}{l} | S_{0} | = 5^{4} \\ | S_{1} | = \left( \begin{array}{c} 4 \\ 1 \end{array} \right) \cdot 2 1 \cdot 5^{3} \\ | S_{2} | = \left( \begin{array}{c} 4 \\ 2 \end{array} \right) \cdot 2 1^{2} \cdot 5^{2} \\ \end{array}
$$

and, therefore, there are

$$
5^{4} + 4 \cdot 2 1 \cdot 5^{3} + \binom {4} {2} \cdot 2 1^{2} \cdot 5^{2}
$$

four-letter words with at most two consonants. (Challenge problem: How many four-letter words have at least three consonants? Use this to make a claim about the number  $26^4$ .)

What is wrong with the following argument about  $S_{2}$ : Construct a four-letter word with exactly two consonants by selecting two consonants, then selecting a position for the first consonant, then selecting a position for the second consonant, then filling the remaining two spots with vowels, yielding

$$
\left( \begin{array}{c} 2 1 \\ 2 \end{array} \right) \cdot 4 \cdot 3 \cdot 5^{2}
$$

such words.

Think carefully about this. Remember, these "find the flaw" questions are not merely looking for you to identify that there is an error, but also to explain why it is an error and how it could be fixed.

6. How many 4-letter words have 4 distinct letters?

Without any pre-thought, we can jump into answering this one by describing a four-step process of filling the four letters left to right, and reducing the number of options by one at each step. Thus, there are

$$
2 6 \cdot 2 5 \cdot 2 4 \cdot 2 3
$$

four-letter words with four distinct letters.

Does this look familiar, though? Look back to where we defined arrangements. This is precisely the idea we are using here! From a set of 26 elements, we want to construct an ordered list of length 4 with no repetition, i.e. a 4-arrangement from a set of 26 elements. The formula we derived tells us there are exactly

$$
\binom {2 6} {4} \cdot 4! = \frac{2 6 !}{4 ! 2 2 !} 4! = \frac{2 6 !}{2 2 !} = 2 6 \cdot 2 5 \cdot 2 4 \cdot 2 3
$$

such arrangements. That's the lesson of this example: by taking advantage of previously defined terms and derived formulas, and relating a current question to those ideas, we can "jump" to a solution.

7. How many 4-letter words have exactly one letter repeated twice?

To construct a word with these properties, we need to know which letter is repeated, and where its two instances occur, as well as the other two letters that appear in the word. Thus, we identify a three-step process: (1) select the repeated letter; (2) select 2 of the 4 open spots for that letter; (3) arrange two of the remaining 25 letters in the remaining two spots:

$$
\left( \begin{array}{c} 2 6 \\ 1 \end{array} \right) \left( \begin{array}{c} 4 \\ 2 \end{array} \right) \left( \begin{array}{c} 2 5 \\ 2 \end{array} \right) \cdot 2!
$$

8. How many 5-letter words have exactly two letters repeated twice each?

Following similar logic as the previous example, we can (1) select two letters to be repeated; (2) select two of the 5 open spots for the first (alphabetically speaking) repeated letter; (3) select two of the remaining 3 spots for the second (alphabetically) repeated letter; and (4) select one of the remaining 24 letters to fill the final, fifth spot. Thus, there are

$$
\left( \begin{array}{c} 2 6 \\ 2 \end{array} \right) \left( \begin{array}{c} 5 \\ 2 \end{array} \right) \left( \begin{array}{c} 3 \\ 2 \end{array} \right) \left( \begin{array}{c} 2 4 \\ 1 \end{array} \right)
$$

Example 8.3.14. How many rearrangements (i.e. permutations) of the alphabet put U and ME together?  $\odot$

You might think to approach this problem with a "subtraction" idea; that is, you might try to count all of the rearrangements of the alphabet that put the letter U not next to the letters ME (in that order). You should try working this out and see where it takes you. What we will do, though, is present a different and, we believe, shorter solution. The idea behind this solution will be useful in other problems, and it boils down to treating the two-letter word ME as a single block, just like any other single letter.

To reverse the question a little bit, instead of asking how many words there are of some type from a given alphabet, we might wonder how many rearrangements (i.e. anagrams) there are of a given word. Care must be taken in considering these questions because when letters are repeated, things can get tricky! For instance, how many anagrams are there of the word A? How about the wordAAAAA? How about AABBBCCCCD? Exactly!

Example 8.3.15. Let's start with a simple case. How many anagrams of the word HEART are there? Remember that we count all permutations of the letters as an acceptable word, so leave behind your Scrabble thought processes  $\odot$  (By the by, the Scrabble answer to this question is 4-HEART, HATER, EARTH, RATHE.) Since each letter is distinct in this word, the answer is simple: we merely count all of the permutations of the 5 letters. Accordingly, there are  $5! = 120$  anagrams of HEART.

Now, how many anagrams of APPLE are there? Notice that the letter P appears twice, so we can't really consider permutations of a five-element set. If we were to do that, each word would actually occur twice; that is, APPLE and APPLE would both be counted. Do you see the difference between those two words? We just switched the Ps! Of course, these are the same word, so we have to factor this in to our consideration of permutations.

How do we do this? One helpful trick is to "label" the repeated Ps. Reading left to right in APPLE, let's call the first one  $\mathrm{P_1}$  and the second one  $\mathrm{P_2}$ . This will help us to sort out the repeated permutations. We now have five distinct elements in our word-A,  $\mathrm{P_1,P_2,L,E}$  so we can consider all 5! permutations of these elements. We know that this overcounts, though, so we would like to figure out how by how much this overcounts. Define  $G$  to be the set of anagrams of APPLE (so we're trying to identify  $|G|$ ) and let  $M$  be the set of permutations of the five distinct elements listed above. How are  $|G|$  and  $|M|$  related?

To answer this question, we can think of constructing the elements of  $M$  from elements of  $G$ . Specifically, we can construct any element of  $M$  (a permutation of the 5 distinct elements) by first taking an element of  $G$  (an anagram of APPLE) and labeling the Ps. However, this won't generate all elements of  $M$ . To do this, we have to take elements of  $G$  and, from them, construct two elements; specifically, we must label the Ps and then consider both of the orderings of the Ps within the word. Let's see an example:

- Take an element of  $G$ , say PAPEL.  
- Label the Ps from left to right:  $\mathrm{P_1AP_2EL}$  
- Construct both orderings of the Ps and count both of those words as elements of  $M$ :  $\mathrm{P_1AP_2EL} \in M$  and  $\mathrm{P_2AP_1EL} \in M$

Since there are  $2! = 2$  ways to permute the two Ps within the word, we have shown that  $|G| \cdot 2! = |M|$ . We described a two-step process to generate elements of  $M$  and applied the Rule of Product. Accordingly, we can rearrange this equation to find the quantity we were looking for:

$$
| G | \cdot 2! = | M | \Rightarrow | G | = \frac{| M |}{2 !} = \frac{5 !}{2 !} = 6 0
$$

For a slightly harder example, let's count the anagrams of COMBINATORICS. We want to apply the same strategy as the previous example and label the repeated letters to relate the anagrams to permutations of, in this case, 13 distinct elements. Again, let's define  $G$  to be the set of anagrams of COMBINATORICS and  $M$  to be the set of permutations of the 13 distinct elements in  $\{\mathrm{C}_1\mathrm{O}_1\mathrm{MBI}_1\mathrm{NATO}_2\mathrm{RI}_2\mathrm{C}_2\mathrm{S}\}$ . We can describe a four-step process that generates elements of  $M$ :

1. Take an element of  $G$  and label the repeated letters, reading left to right:  $|G|$  options  
2. Permute the two repeated Cs: 2! options.
3. Permute the two repeated Os: 2! options.  
4. Permute the two repeated Is: 2! options.

Thus, by the Rule of Product, we may conclude

$$
| M | = | G | \cdot 2! \cdot 2! \cdot 2! \Rightarrow | G | = \frac{| M |}{2 ! \cdot 2 ! \cdot 2 !} = \frac{1 3 !}{2 ! \cdot 2 ! \cdot 2 !}
$$

You might wonder why we chose to write  $2! \cdot 2! \cdot 2!$  instead of just 8. We find it more enlightening and illustrative to leave our answer in terms of factorials because it indicates where those terms came from, too.

What happens if a letter is repeated more than twice? The only difference occurs when we consider permuting the repeated instances of that letter. We will let you fill in the details of the argument, but we claim that the word AABBBCCCDD has

$$
\frac{1 1 !}{2 ! \cdot 2 ! \cdot 3 ! \cdot 4 !}
$$

anagrams. Can you "see" why without going through the details completely yet? Can you fill in those details to confirm your intuition? Can you prove this fact and convince a friend? Try it!

There are several more anagram questions in the exercises. Later on, we will even prove a result that will generalize this technique of labeling repeated letters and accounting for their permutations.

Before moving on, we should point out an observation that is similar to something we've seen before. In some examples so far, we ended up subtracting a count from a total, and we pointed out that a sophisticated proof-writer would just state the subtraction idea directly, although we ask you to phrase it in terms of a partition and apply the Rule of Sum. Similarly, with the previous example we just did, we ended up dividing a count to eliminate some overcounting, but we made sure to phrase this in terms of a process and apply the Rule of Product; afterwards, we could algebraically divide to simplify. A sophisticated proof-writer would write probably write the same solution by taking the overcount and arguing that we can "divide out" to eliminate the overcounting. This is dangerous, we say, and we require you to not do this (for now, in our contexts). If you allow yourself to make these kinds of arguments, it's too easy to erroneously "divide out" in a situation where it is unwarranted and incorrect to do so! Forcing yourself to work out these arguments "from the ground up" will more firmly solidify these underlying principles and allow you to more confidently apply "subtraction" and "division" principles later on in your mathematical careers. Just remember that we ask you to use only ROS and ROP in our contexts!

Let's look at two quick examples of alphabets and words that aren't based on the standard English alphabet, per se.

Example 8.3.16. A phone number in the United States consists of an area code (3 digits) and a local number (7 digits). The digits are drawn from the set

$\{0,1,2,3,4,5,6,7,8,9\}$ , but neither the area code nor local number can begin with a 0. How many possible phone numbers are there?

This is easy to count by establishing a 10 step process, corresponding to the 10 total digits of a phone number. Eight of the digits have 10 options, and two of them have 9 options (no 0), so the Rule of Product tells us there are

$$
1 0^{8} \cdot 9^{2} = 8, 1 0 0, 0 0 0, 0 0 0
$$

possible phone numbers. This number is slightly larger than the current world population, so it seems like our system is safe, for now!

Example 8.3.17. Suppose a restaurant has a menu with three different categories: appetizers, entrees, and desserts. There are 5 appetizers, 9 entrees, and 4 desserts. You take your date to this restaurant and you pass the time waiting for your server t)o appear by figuring out how many possible orders you can make, imposing certain conditions. (Unfortunately, you forget to decide what to order and you end up choosing an order randomly, but that's beside the point.)

(1) How many possible orders can you make, assuming you must order one appetizer, one entree, and one dessert?

This is a simple application of ROP. There are  $5 \cdot 9 \cdot 4 = 180$  possible orders. How is this like alphabets and words? Well, you can think of it as constructing a three-letter word, but the alphabet for each "slot" in the word is different.

(2) How many possible orders can the two of you make, assuming you each order one app, one tree, and one zert, but you two can't order the same thing in any category?

Think of this as a 3-step process, with each step divided into 2 parts. First, you order an appetizer, and then your date does, too (making sure to pick from amongst the appetizers you didn't pick). Second, you order an entree, and then your date picks a different one. Third, you order a dessert, and then your date picks a different one. Clearly, then, there are

$$
(5 \cdot 4) \cdot (9 \cdot 8) \cdot (4 \cdot 3) = 2 0 \cdot 7 2 \cdot 1 2 = 1 7 2 8 0
$$

possibilities. Compare this to the number of possibilities without the restriction of ordering different items in each category, which we can find by using our work on question (1):

$$
1 8 0 \cdot 1 8 0 = 3 2 4 0 0
$$

Again, we can think of this as a restrictive alphabet/words problem.

# Balls and Bins

This is a common formulation of combinatorics problems in more advanced courses. It's particularly helpful when discussing probability and using combinatorics facts and ideas to explore probability. We would like to bring it up here

because it introduces the important distinctions between distinguishable and indistinguishable objects. To motivate this discussion, let's pose a seemingly simple question:

Consider a bin containing  $n$  balls; how many ways can we select  $k$  balls?

What's your answer? If you said  $\binom{n}{k}$ , you could be right. If you said "1", you could also be right. How is that possible?! Well, we didn't specify whether the  $n$  balls in the bin are distinguishable; that is, we didn't say whether or not they're all different, whether we can tell any two balls apart.

Imagine a bucket with 100 tennis balls in it. If we pulled out two balls and showed them to you, could you tell them apart? Maybe they have a different number of fuzzy yellow hairs on them, or maybe they're different brand names, or something like that … but maybe we can't do that. Maybe all of the balls are completely identical. In that case, it doesn't matter "which"  $k$  balls we pull out, because we can't tell them apart. All "possible" selections of  $k$  balls amount to the same thing, so the answer of "1" makes total sense. However, if all of the balls had a distinct number on them, or they were all different colors, or … imagine any distinguishing property you'd like. In any of those cases,  $\binom{n}{k}$  is the correct answer. For these reasons, the originally posed question was a poor one; we should have been specific about whether the balls are distinguishable or not.

This idea of distinguishability has come up before. Remember that grid of counting formulas we established back in Section 8.2.3? One of the essential questions in the grid was whether the order of a selection/arrangement distinguished the outcome. For example, a selection does not care about order. The selections  $\{1,3,4\}$  and  $\{3,4,1\}$  are identical (you should also think of them as sets to understand this) because the order in which the elements are written does not distinguish them. Conversely, the arrangements  $(1,3,4)$  and  $(3,4,1)$  are different because the order of the elements does distinguish them.

In the context of a "balls and bins" problem, we will specify the distinguishability of items by saying they are numbered or colored somehow. This might also involve a mix of distinguishable/indistinguishable features, though, so be careful! The next example illustrates this interplay.

Example 8.3.18. Suppose we have a bin containing balls that are colored red, blue, or green (i.e. each ball has one color of those three). There are 3 balls of each color in the bin, and any two balls of the same color are indistinguishable. We pull out four balls. How many possible outcomes are there?

Try playing around with this problem before reading our solution. You might come up with your own method of solving it!

A first approach here might be to just enumerate the possibilities and then

try to infer a pattern. We might start writing out the outcomes as:

3 Red and 1 Blue  
3 Red and 1 Green  
2 Red and 2 Blue  
2 Red and 2 Green  
2 Red and 1 Blue and 1 Green

：

and so on. Notice how we are keeping track of this information, though; every outcome is characterized by (a) how many red balls we picked, (b) how many blue balls, and (c) how many green balls. In essence, we can characterize every outcome by an ordered 3-tuple of the form  $(r,b,g)$  where  $r$  is the number of red balls, and similarly for  $b$  and  $g$ . The only condition we require is that  $r + b + g = 4$  and each value satisfies  $0 \leq r \leq 3$ ,  $0 \leq b \leq 3$ ,  $0 \leq g \leq 3$ . We really just need to count how many 3-tuples satisfy those conditions! We can split this count into how many nonzero terms there, and analyze each case separately.

- If two terms are 0, then the third term must be 4. There are  $\binom{3}{1} = 3$  choices for which term is nonzero, so there are 3 such possibilities.  
- If one term is 0, then the other two terms must sum to 4 and both be nonzero. There are 3 ways to do this:  $1 + 3$  and  $2 + 2$  and  $3 + 1$ . Since there are 3 choices for which term is 0, by ROP, there are  $3 \cdot 3 = 9$  such possibilities.  
- If all three terms are nonzero, then we see that the only such sum is  $1 + 1 + 2$ , in some order. There are 3 choices for which term is 2, and then the other terms must be 1. Thus, there are 3 such possibilities.

By ROS, there are  $3 + 9 + 3 = 15$  total possibilities.

# Lattice Paths

Consider the set  $\mathbb{N} \cup \{0\} \times \mathbb{N} \cup \{0\} = (\mathbb{N} \cup \{0\})^2$  consisting of all ordered pairs of natural numbers or 0. In fact, let's represent this set visually on the plane:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/46a9216c637d9232e4a37da9ea14ca95574405ae1a670de3d882128ad69dca71.jpg)

This "grid" of dots on the plane is known as a lattice. Here's a natural question: Given any point in the lattice, how many ways are there to "get there" from the origin,  $(0,0)$ ? Let's be more specific. Let's define a lattice path to be a path from  $(0,0)$  to a particular point that is only allowed to move rightwards or upwards at any step. This is what the next definition conveys:

Definition 8.3.19. Let  $(x,y) \in (\mathbb{N} \cup \{0\})^2$ . A lattice path to  $(x,y)$  is an ordered tuple of points in the plane lattice where the first element of the tuple is  $(0,0)$ , the last element of the tuple is  $(a,b)$ , and every element in the tuple only differs from the previous one by having exactly one coordinate that is exactly one larger than the corresponding coordinate of the previous element.

More rigorously, given  $(x,y)$  a lattice path is an  $n$ -tuple  $(P_{1},P_{2},\ldots ,P_{n})$ , for some  $n\in \mathbb{N}$ , where each  $P_{i} = (x_{i},y_{i})$  is a point in the lattice, and

$$
\forall i \in [ n - 1 ]. (x_{i + 1}, y_{i + 1}) = (x_{i} + 1, y_{i}) \vee (x_{i + 1}, y_{i + 1}) = (x_{i}, y_{i} + 1)
$$

and, furthermore,  $(x_{1},y_{1}) = (0,0)$  and  $(x_{n},y_{n}) = (x,y)$ .

That is, a lattice path is a sequence of points in the lattice from  $(0,0)$  to  $(n,n)$  where we are only allowed to move rightwards or upwards by one grid point at every step.

Example 8.3.20. Consider the point  $(2,4)$  in the plane lattice. In the diagram below, we plot a few sample lattice paths to  $(2,4)$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/ac9582a4aa4fc5cd892fd8c710383c4a9eb3733bb481065c089a4dd4cdca6694.jpg)

Our question is as follows:

Given  $(a,b) \in (\mathbb{N} \cup \{0\})^2$ , how many distinct lattice paths are there to  $(a,b)$ ?

To begin to answer this, let's look at a simple case with small values so we can actually enumerate all of the paths. Let's consider lattice paths to (2,2):

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/d24af755795d4edb2c5ee259397c477873966dea05bbef9f3f238aa9ead0a9d3.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/76acbe048201947584cfbd2751973fa59d3f5ee142c2862a0176ce87c514762b.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/03d8b09ea9a687bf5087088be607ede677730467df364704c40047964142a001.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/47088ac93e7e8c73a8e31800bfc3b25c3d465c7ea2753433d4ab34915b55e1c8.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/e77e22d02f28d19e9ba6516d683b771debad3b8d90b95587a7b14c8a3733487c.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/5e05cfee183accf72163896d86fa1b64e4a7cdc20b6f9ae845e4a2816ccde374.jpg)

How might we represent lattice paths in a combinatorial way? That is, how can we represent them in a way that allows us to conveniently count some objects? Think about the defining aspects of a lattice path: every "move" in the construction of a lattice path must be rightwards or upwards. It would make sense, then, to somehow represent when we make a "Right" move and when we make an "Up" move. Then, we just need to count how many sequences of choices of "Right" and "Up" actually bring us to the point  $(x,y)$  in question.

That's easy, though! What characterizes the point  $(x,y)$  on the plane? Well, it's  $x$  grid points to the right of  $(0,0)$  and  $y$  grid points up from  $(0,0)$ . Thus, no matter what our path looks like, we know there must be  $x$  rightward moves and  $y$  upward moves. Look back at the 6 lattice paths to  $(2,2)$  above. Think about following the path, starting at  $(0,0)$ , and writing down  $R$  or  $U$  at each grid point, depending on where we go next. This yields the following 6 sequences of  $R\mathrm{s}$  and  $U\mathrm{s}$

RRUU, RUUR, RURU, URRU, URUR, UURR

What properties do these sequences share? Each one has 2  $R_s$  and 2  $U_s$ , since we must end at (2, 2), and so each sequence has 4 terms, in total. Notice that this is much like a restricted alphabet/words problem: we want to find the number of words of length 4, drawn from the alphabet  $\{R, U\}$ , that contain exactly two of each letter!

In general, then, we know that any lattice path to  $(x,y)$  can be represented by a  $(x + y)$ -tuple of  $R\mathrm{s}$  and  $U\mathrm{s}$  with exactly  $x$ $R\mathrm{s}$  and  $y$ $U\mathrm{s}$ . To identify how many such sequences there are, we have a two step process:

1. From  $x + y$  empty slots, choose  $x$  of them to be filled with  $R_s: \binom{x+y}{x}$  options  
2. Fill the remaining  $(x + y) - x = y$  slots with  $U_{s}$ : 1 option (deterministic) Thus, we have the following result.

Proposition 8.3.21. For every  $(x,y) \in (\mathbb{N} \cup \{0\})^2$ , there are exactly  $\binom{x+y}{x}$  lattice paths from  $(0,0)$  to  $(x,y)$ .

We will explore some interesting applications and properties of lattice paths in the exercises. For now, we want to point out their existence and their relationship with sequences and selections. But here's one more observation about them: Why did we choose to count the number of sequences of length  $x + y$  with exactly  $x$  Rs? Would it be any different to count the the number of sequences of length  $x + y$  with exactly  $y$  Us? Think about it: every lattice path to  $(x,y)$  needs exactly  $x$  Rs and exactly  $y$  Us, and ensuring one of those properties holds guarantees the other will, as well. Thus, we could have presented the following result:

Proposition 8.3.22. For every  $(x,y) \in (\mathbb{N} \cup \{0\})^2$ , there are exactly  $\binom{x+y}{y}$  lattice paths from  $(0,0)$  to  $(x,y)$ .

This not only proves the following fact

$$
\left( \begin{array}{c} x + y \\ x \end{array} \right) = \left( \begin{array}{c} x + y \\ y \end{array} \right)
$$

but it also introduces us to a new and helpful proof strategy: Counting in Two Ways. We identified one set of objects (the set of lattice paths from  $(0,0)$  to  $(x,y))$  and proceeded to explain two different ways of counting that same set of objects. Each way yielded a different expression for the cardinality of that set, and we can therefore declare those two expressions to be equal. This first example illustrates the main idea behind Counting in Two Ways, and we will explore several more examples, and the general technique, in the following section.

# 8.3.4 Questions & Exercises

# Remind Yourself

Answering the following questions briefly, either out loud or in writing. These are all based on the section you just read, so if you can't recall a specific definition or concept or example, go back and reread that part. Making sure you can confidently answer these before moving on will help your understanding and memory!

# 8.3. COUNTING ARGUMENTS

(1) How can you identify that a proposed counting argument is an undercount? How can you show it is an overcount?  
(2) Explain the relationship between " $k$ -tuples from  $[n]$ " and "Alphabets and Words". How are they fundamentally the same?  
(3) Say we are selecting  $k$  balls from a bin with  $n$  balls. Why does it matter whether the balls are distinguishable?  
(4) Why is it that the number of lattice paths from  $(0,0)$  to  $(x,y)$  is equal to both  $\binom{x+y}{x}$  and  $\binom{x+y}{y}$ ?

# Try It

Try answering the following short-answer questions. They require you to actually write something down, or describe something out loud (to a friend/classmate, perhaps). The goal is to get you to practice working with new concepts, definitions, and notation. They are meant to be easy, though; making sure you can work through them will help you!

(1) Find the number of 5-card poker hands that are two pairs, and prove your claim.  
(2) Find the number of 5-card poker hands that are a full house, and prove your claim.  
(3) How many anagrams of the word COMBINATORICS are there? What about of MASSACHUSETTS?  
(4) Consider finding the number of 4-tuples from  $\{1,2,3\}$  that include at least one of each number. For each of the following proposed "proofs", show that it is incorrect by exhibiting such an object that has been counted twice by the proposed argument.

(a) Pick one of the 4 spots in the tuple for the 1, then pick a spot for the 2, then pick a spot for the 3. Then, pick one of the three elements to appear in the 4th empty spot.

$$
\left( \begin{array}{c} 4 \\ 1 \end{array} \right) \left( \begin{array}{c} 3 \\ 1 \end{array} \right) \left( \begin{array}{c} 2 \\ 1 \end{array} \right) \left( \begin{array}{c} 3 \\ 1 \end{array} \right) = 7 2
$$

(b) Pick 3 of the 4 spots to be filled with the elements 1,2,3. Permute those elements in those chosen spots. Pick a number for the 4th empty spot.

$$
\binom {4} {3} 3! \cdot 3 = 7 2
$$

(5) For this problem, consider a word to be any string of English letters, whether or not it actually spells something in the dictionary. For instance, ZYQFIB is a valid word of length 6.

(a) How many words of length 2 are there?

(Answer this question in two ways: with an exponential number, and with a sum of two terms.)

(b) How many words of length 7 have exactly 3 As?  
(c) How many words of length 7 have at most 2 vowels? (Note:  $A, E, I, O, U$  are vowels.  $Y$  is not.)

Consider the set  $S_{n}$  of all binary strings of length  $n$ . For each of the following stated properties, count how many elements of  $S_{n}$  have that property. (Note: Each property is separate; don't consider satisfying all of them at once, say.)

(a) Exactly 3 positions are 0s.  
(b) At most 3 positions are 0s.  
(c) At least 4 positions are 0s.

Note: Use the last two parts to write  $2^{n}$  as a sum of binomial coefficients!

(d) More positions are 0s than are 1s.

(6) Let  $n \in \mathbb{N}$  be given. How many lattice paths go from  $(0,0)$  to  $(2n,2n)$ ? How many such paths also go through  $(n,n)$ ?

(7) Consider the following explanation:

The number of 6-card hands, as dealt from a standard deck of cards, that have at least one card from each of the four suits is

$$
\left( \begin{array}{c} 1 3 \\ 1 \end{array} \right) \left( \begin{array}{c} 1 3 \\ 1 \end{array} \right) \left( \begin{array}{c} 1 3 \\ 1 \end{array} \right) \left( \begin{array}{c} 1 3 \\ 1 \end{array} \right) \left( \begin{array}{c} 4 8 \\ 2 \end{array} \right)
$$

because we select one card from each of the four suits and then, from the remaining 48 unused cards, select two more.

Is this count correct? If you think it is an overcount, exhibit a specific hand and show how it is counted in two ways. If you think it is an undercount, exhibit a specific hand and show how it is not counted.

# 8.4 Counting in Two Ways

If you're just jumping into this section, reread the last example from the previous section because it provides a perfect introduction to (and example of) Counting in Two Ways. In that example, we counted the number of lattice paths to a particular point in two different ways, deducing that the two expressions we found must be equal. Specifically, we deduced that  $\binom{x+y}{x}=\binom{x+y}{y}$ . With that example already under our belt, we will outline a general strategy here and apply it to several examples. Along the way, we will not only practice this technique, but we will also be proving some useful combinatorial results that we can apply to other problems!

Let's start by actually presenting an alternative proof of the example from the previous section. There is a much shorter argument that doesn't delve into lattice paths at all and is a more memorable and understandable explanation of this result.

Proposition 8.4.1. Let  $n, k \in \mathbb{N} \cup \{0\}$ . Then  $\binom{n}{k} = \binom{n}{n-k}$ .

Proof. Let  $S$  be the set of subsets of  $[n]$  with size  $k$ , i.e.

$$
S = \{T \subseteq [ n ] \mid | T | = k \}
$$

By the definition of  $k$ -selections,  $|S| = \binom{n}{k}$ , since constructing a set  $T \subseteq [n]$  with  $|T| = k$  amounts to selecting  $k$  elements from a set of  $n$  elements.

Equivalently, we can construct a set  $T \subseteq [n]$  with  $|T| = k$  by selecting  $n - k$  elements to not include in  $T$ ; this means  $n - (n - k) = k$  elements have been selected to belong to  $T$ . The number of ways to do this is  $\binom{n}{n-k}$ . Since every such set  $T$  can be constructed this way, we have shown  $|S| = \binom{n}{n-k}$ .

Therefore,  $\binom{n}{k}=\binom{n}{n-k}$ .

We find this to be a more memorable proof of this fact because we can summarize the entire proof in just one sentence rather nicely

"Count the  $k$ -element subsets of  $[n]$  by identifying the elements to include or the elements to omit."

This is the idea we remember; from it, we can reconstruct the proof. It doesn't make sense to try to "memorize" a proof sentence by sentence; rather, it is helpful to remember the kernel of the proof's main idea and then fill in the details.

# 8.4.1 Method Summary

# Why It Works

Let's abstract one level and discuss Counting in Two Ways as a proof technique. Let's talk about why it works and how to employ it. Then, we'll go through

several more examples. We touched on the why idea at the end of the previous section, so we will reiterate those ideas here. "Counting in Two Ways" is the best name for this proof technique because it explains the strategy in its own name! Any proof following this technique identifies a finite set of elements and offers two ways to count those elements. By using the Rules of Sum and Product, and other combinatorial results we have seen, those two ways yield different algebraic expressions for the same number, namely the cardinality of that set of elements in question.

A good proof clearly identifies the finite set to be counted and the two distinct ways of counting its elements, and then concludes by equating the two algebraic expressions. Thus, any result proved by this method will be some kind of identity or equation involving binomial coefficients, summations, and other algebraic expressions. The point of the proof is to explain those expressions clearly in terms of a counting argument, as opposed to a strict algebraic simplification of the terms.

Look at the result we just proved above: yes, we could directly verify that  $\binom{n}{k} = \frac{n!}{k!(n-k)!} = \binom{n}{n-k}$ , but where is the fun in that? That would not be an interesting proof, by any stretch of the word's meaning, nor does it provide any insight into why the result is true. Furthermore, as we investigate more and more challenging problems of this type, algebraic verification becomes rather difficult, and in some cases, pretty much impossible!

# How To Use It

We will go on to present several examples (and non-examples) later in this section, but we want to present an outline of the Counting in Two Ways method first. This will provide us with a standard by which to measure future proofs of this style; we can read through them and make sure they follow the important points of structure and clarity and correctness. We will hold ourselves to these standards and expect you to do the same. We also present you with some standard combinatorial objects that are used in Counting in Two Ways proofs, and as we proceed with the examples, we will point out when to consider using particular sets of objects to count.

Now, here is a skeleton structure of every good Counting in Two Ways proof!

1. State the result to be proven.  
(Note: remember to quantify any variables that appear in the expression!)  
2. Define a set—let's call it  $S$  —of objects to be counted.  
3. Count the elements of  $S$  in one way by following a proper combinatorial argument. Equate the derived expression with  $|S|$ .  
4. Count the elements of  $S$  in another way by following a proper combinatorial argument. Equate the derived expression with  $|S|$ .  
5. Conclude that since both derived expressions equal  $|S|$ , they must be equal, as well.

That's it! Like we said, the technique's name is the technique itself, so it should be easy to remember. However, after reading many of these proofs over the years, we have noticed that certain mistakes are commonly made. We've listed the most common here. Think about why doing any of these would amount to a "bad" proof in some sense. Which property of a good proof does each mistake fail to satisfy? Correctness? Clarity? Brevity?

# Common mistakes to avoid:

- Forgetting to define a set of objects to be counted.  
- Defining a set, but counting something else in two ways.  
- Counting one set of objects, but then counting a different set of objects in another way.  
- Failing to equate the two expressions in a conclusion

Other mistakes might arise in the actual combinatorial proofs, rather than the technique, as a whole. But be on the lookout for those, too!

# 8.4.2 Examples

Let's go through several examples in full detail. This will help you get a handle on how the Counting in Two Ways technique is applied, provide you with some canonical examples to look back on and re-read, and also provide you with some fundamental combinatorial results that can be applied in future problems. In each example, we attempt to not only prove the result in question, but also explain how we come up with the proof, what our thought processes might be in constructing the argument, and how you might try to approach problems like these on your own. One of the beautiful aspects of counting in two ways proofs is that, by the end of such a proof, we can usually neatly summarize the proof's main idea. We will do that for each of the proofs we present, and encourage you to attempt the same summary at the end of any such proof you write. This makes the proof idea easier to remember, and will allow you to reconstruct the entire proof from just one sentence.

Proposition 8.4.2 (Pascal's Identity). For any  $n, k \in \mathbb{N}$ ,

$$
\left( \begin{array}{c} n \\ k \end{array} \right) = \left( \begin{array}{c} n - 1 \\ k \end{array} \right) + \left( \begin{array}{c} n - 1 \\ k - 1 \end{array} \right)
$$

Proof strategy: Seeing binomial coefficients, like  $\binom{n}{k}$ , indicates that we might want to count subsets of  $[n]$  with particular sizes. The left-hand side of this identity is easy to represent (count all the subsets with size  $k$ ), but what about the right-hand side? Seeing a sum of two terms indicates a partition of some kind. We must identify a certain property of subsets of  $[n]$  with size  $k$  so that some subsets do have the property, and some of them don't. Noticing that the

only difference in the terms is in the "bottom coefficient", we can figure out a fruitful partition … See if you can come up with it on your own before reading on!

Proof. Let  $S = \{T \subseteq [n] \mid |T| = k\}$ . By the definition of  $k$ -selections, we know  $|S| = \binom{n}{k}$ . Next, define the sets

$$
A = \{T \subseteq [ n ] \mid | T | = k \wedge 1 \in T \}
$$

$$
B = \{T \subseteq [ n ] \mid | T | = k \wedge 1 \notin T \}
$$

Certainly,  $A \cap B = \varnothing$  since both  $1 \in T$  and  $1 \notin T$  cannot be true for any set  $T$ . Also,  $S = A \cup B$ , since either  $1 \in T$  or  $1 \notin T$  is true for any set  $T$ . Thus,  $\{A, B\}$  is a partition of  $S$ , and we know, then, that  $|S| = |A| + |B|$ .

To find  $|A|$ , we identify a two-step process for constructing elements  $T \in A$ : (1) include the element 1 in  $T$ ; (2) from the remaining  $n - 1$  elements, select  $k - 1$  more to make a set of  $k$  elements. By the Rule of Product, we conclude

$$
| A | = 1 \cdot \left( \begin{array}{c} n - 1 \\ k - 1 \end{array} \right) = \left( \begin{array}{c} n - 1 \\ k - 1 \end{array} \right)
$$

Similarly, to find  $|B|$ , we identify a two-step process for constructing elements  $T \in B$ : (1) omit the element 1 from  $T$ ; (2) from the remaining  $n - 1$  elements, select  $k$  elements. By the Rule of Product, we conclude

$$
| B | = \left( \begin{array}{c} n - 1 \\ k \end{array} \right)
$$

By the Rule of Sum, then, we conclude

$$
| S | = | A | + | B | = \left( \begin{array}{c} n - 1 \\ k - 1 \end{array} \right) + \left( \begin{array}{c} n - 1 \\ k \end{array} \right)
$$

By equating the two expressions for  $|S|$ , we conclude that

$$
\binom {n} {k} = \binom {n - 1} {k - 1} + \binom {n - 1} {k}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/dde9b7d3b956e179e8cb9e2ad6e9d4e3b4fef9d77009024819985794b57fdc0a.jpg)

Proof summary: Count the  $k$ -element subsets of  $[n]$  by partitioning based on whether or not a particular element (say, 1) belongs to the subset.

Question: What if we had used the element  $n$ , instead of 1, to construct our partition? Would the proof be any different, structurally? No! All that matters is we identified a specific element, and defined the partition sets,  $A$  and  $B$ , based on that element.

Historical note: This Proposition is named for the French mathematician Blaise Pascal. Perhaps you have heard of Pascal's Triangle, as well? This triangle of natural numbers is constructed by writing two rows of 1s, all 1s along the

perimeter, and then filling in every other number with the sum of the two above it. Based on this Proposition we just proved does that give you any indication as to what the numbers contained in the triangle actually are? That's right, they're binomial coefficients! The  $n$ -th row represents all the number of the form  $\binom{n}{k}$ , where the coefficient  $k$  is increasing when we read from left to right. There are plenty of interesting properties of Pascal's Triangle, and we will explore several of these in our examples and exercises.

$$
\begin{array}{c} 1 \\ 1 \\ 1 \\ 1 \\ 1 \\ 1 \\ 1 \\ 1 \\ 5 \\ 5 \end{array}
$$

Proposition 8.4.3 (Chairperson Identity). For any  $n, k \in \mathbb{N}$ ,

$$
k \binom {n} {k} = n \binom {n - 1} {k - 1}
$$

Proof strategy: Both sides of this equation are products of two terms, so we are looking for two two-step processes that construct the same set of elements. The term on the left can be thought of as  $\binom{n}{k} \cdot k$ , since multiplication is commutative. This indicates a selection of  $k$  items from  $[n]$ , and then … something else. If we rewrite  $k$  as  $\binom{k}{1}$ , this makes the second step clear: we are then selecting one element from the  $k$  elements chosen in the first step.

This brings up a new strategy for describing subsets and particular elements contained therein: committees and leaders. This is a rather popular strategy in combinatorial proofs, because it reduces the amount of technical, mathematical language and symbols used, and makes for a better, colloquial understanding of the key ideas of the proof. We will show you how to use this strategy in the proof below, and then we will compare it to a proof that is written in more mathematical language. Before reading on, see if you can anticipate how we describe the right-hand side of the identity in question …

Proof. Let  $k, n \in \mathbb{N}$  be given, and let  $S$  be the set of committee members of  $k$  people, chosen from  $n$  people, with one designated chairperson. One way to construct elements of  $S$  is to first select a committee of  $k$  people, and then select one member of the committee to serve as the chairperson. By the Rule of Product, we conclude that

$$
| S | = \left( \begin{array}{c} n \\ k \end{array} \right) \cdot \left( \begin{array}{c} k \\ 1 \end{array} \right) = k \binom {n} {k}
$$

Another way to construct elements of  $S$  is to first select the committee chairperson from the entire pool of  $n$  people, and then select  $k - 1$  people from the remaining  $n - 1$  to fill out the committee. By the Rule of Product, we conclude that

$$
| S | = \left( \begin{array}{c} n \\ 1 \end{array} \right) \cdot \left( \begin{array}{c} n - 1 \\ k - 1 \end{array} \right) = n \left( \begin{array}{c} n - 1 \\ k - 1 \end{array} \right)
$$

By equating these two expressions for  $|S|$ , we conclude that

$$
k \binom {n} {k} = n \binom {n - 1} {k - 1}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/9767b86ae2f0e965e467deea1db24aca565ce6b12a2230cc9c2dc0a41acf5359.jpg)

Proof summary: Count the  $k$ -committees from  $n$  people with a chairperson by selecting the committee and then the chair, or selecting the chair and the rest of the committee.

Comments: What if we had tried to describe this proof in purely mathematical terms, i.e. sets? What exactly does a "chairperson" correspond to in set-theoretical language? A committee of size  $k$  from  $n$  total people is just a set  $T \subseteq [n]$  with  $|T| = k$ , but how do we distinguish this set from all of the  $k$  different ways to choose one of its members as the chairperson? One reasonable way is to define an ordered pair where the first coordinate is the set of committee members, and the second coordinate is the particular chairperson. With this strategy in mind for the proof, we would define

$$
\hat {S} = \{(T, x) \mid T \subseteq [ n ] \wedge | T | = k \wedge x \in T \}
$$

This set  $\hat{S}$  is equivalent to the set  $S$  we defined in the proof above, in that it includes all of the ways to have a  $k$ -committee with one chairperson. In describing the two ways to count the elements of  $\hat{S}$ , though, we would likely find ourselves resorting to the same colloquial descriptions of committees and chairpeople! (Go ahead, try to count the elements of  $\hat{S}$  without doing so.) It's just more natural and easier to understand that way. In short, there is no real reason to rigorously write out these set-theoretic descriptions of the sets of committees; however, it is important to point out that we can. This verifies that our descriptions in the above proof really are rigorous enough; they are rooted in mathematical concepts, but are easier to understand and follow when described in other terms.

Several examples of counting in two ways proofs involving committees and subcommittees are explored in the exercises of this section. We will present one more example here, as practice.

Proposition 8.4.4 (Committees of all Sizes). Let  $n \in \mathbb{N}$ . Then,

$$
\sum_{k = 0}^{n} \binom {n} {k} = 2^{n}
$$

Proof strategy: The right-hand side could represent a number of things, but it seems likely that it involves an  $n$ -step process, where each step has 2 options. Let's re-examine that term in a minute. The left-hand side represents a partition, because we have a sum of several terms. Each individual term in the summation, of the form  $\binom{n}{k}$ , represents the number of ways to select a committee of  $k$  people, chosen from  $n$  total people. When we allow  $k$  to range from 0 to  $n$ , we are considering all possible sizes of committees. This indicates that we are counting all possible committees chosen from a set of  $n$  people. Now that we know what the right-hand side must count, we can construct an argument for that … Try to do that on your own before reading our proof!

Proof. Let  $n \in \mathbb{N}$  and let  $S$  be the set of all committees, of any size, chosen from a set of  $n$  people. Each element of  $S$  is a committee of a certain size from 0 to  $n$ , inclusive; for every  $k \in [n] \cup \{0\}$ , let  $S_k$  be the set of committees that have size exactly  $k$ . Then the set  $\{S_k \mid k \in [n] \cup \{0\}\}$  is a partition of  $S$ . Thus, by the Rule of Sum, we conclude that

$$
| S | = \sum_{k = 0}^{n} | S_{k} | = \sum_{k = 0}^{n} \binom {n} {k}
$$

where  $|S_k| = \binom{n}{k}$  because  $S_k$  is the set of all  $k$ -selections from  $[n]$ .

We can also count the elements of  $S$  as follows: take our set of  $n$  people and assign them numbers from 1 to  $n$ . (This can be done by giving everyone a t-shirt with their unique number on it, say.) To construct a committee, we line everyone up in numerical order and move along the line, saying "Yes" or "No" to each person, indicating whether or not they belong to the committee we are creating. Every sequence of  $n$  "Yes" and "No" assignments produces a unique committee. Since this is a  $n$ -step process with two choices at each step, the Rule of Product tells us there are  $2^n$  ways to complete this process, so  $|S| = n$ . By equating these two expressions for  $|S|$ , we conclude that

$$
\sum_{k = 0}^{n} \binom {n} {k} = 2^{n}
$$

Proof summary: Count all subsets of  $[n]$  by partitioning based on size. (Note: this summary is written in terms of sets, but the proof itself is easier to write and understand in terms of committees, we feel.)

Maybe this proof seems a little verbose to you, particularly since we already proved that  $|\mathcal{P}([n])| = 2^n$ , by induction. Since we are considering all committees of all sizes, we are equivalently saying "Let  $S = \mathcal{P}([n])$ " and then counting  $S$  in two ways. However, when we start writing the proof in terms of committees we can't switch to talking about subsets of  $[n]$  without writing a sentence or two about why those formulations are equivalent. As an exercise, try rewriting this proof entirely in set notation, without referencing committees. Which do you prefer?

# The Summation Identity

The next combinatorial identity is very useful, and will appear in subsequent proofs and exercises in this chapter, so we present the result here. Furthermore, we will present two different counting in two ways proofs, and a third is covered in the exercises, even! These two proofs we present cover more standard counting objects, as they appear in counting in two ways proofs. We encourage you to read through both proofs and try to understand how they are related. Perhaps you're wondering why we would even bother to present two proofs of the same fact. ("Isn't one enough, so we already know it's true?") By understanding the proof structures and how they are equivalent, you will gain a deeper understanding of these proof techniques and be able to apply them better. Trust us! In addition, we will compare these techniques to the committees approach we used in the previous problem, and investigate out how all three methods are related.

Theorem 8.4.5 (Summation Identity). Let  $n, k \in \mathbb{N}$ . Then,

$$
\sum_{i = 0}^{n} \binom {i} {k} = \binom {n + 1} {k + 1}
$$

Proof 1 strategy: Seeing a single binomial term on the right-hand side indicates that we are looking at subsets of  $[n + 1]$  with size exactly  $k + 1$ . With a summation on the left-hand side, we are partitioning the set of all such subsets based on some property. Since the binomial coefficient inside the summation has a  $k$ , instead of a  $k + 1$ , in the bottom term, this means the index  $i$  somehow represents a particular element being included in a subset. See if you can fill in the details of this partition before reading on …

Proof 1. Let  $n, k \in \mathbb{N}$  and define

$$
S = \{T \subseteq [ n + 1 ] \mid | T | = k + 1 \}
$$

By the definition of  $(k + 1)$ -selections from  $[n + 1]$ , we know that  $|S| = \binom{n+1}{k+1}$ . Next, for every  $i \in [n] \cup \{0\}$ , define the set

$$
S_{i} = \{T \in S \mid i + 1 \in T \wedge (\forall j \in T. j \leq i + 1) \}
$$

That is,  $S_{i}$  is the set of all subsets of  $[n + 1]$  with size  $k + 1$  whose maximally-indexed element is  $i + 1$ . We claim that  $\{S_{i} \mid i \in [n] \cup \{0\}\}$  is a partition of  $S$ .

First, observe that  $S_{i} \cap S_{j} = \emptyset$  whenever  $i \neq j$ . This is because  $T \in S_{i}$  implies  $i + 1 \in T$ ; further, if  $i > j$  then the maximally-indexed element of any  $U \in S_{j}$  is  $j + 1$  which is less than  $i + 1$ , and if  $i < j$  then any  $U \in S_{j}$  contains  $j + 1$  but  $j + 1 \notin T$ .

Second, notice that every  $T \in S$  has some maximally-indexed element between 1 and  $n + 1$ , and thus belongs to one of the  $S_{i}$  sets. (As a guide to this section of the proof, we have included a figure below that illustrates the case for  $n = 4$

and  $k = 2$ . Notice that several of the sets are empty. In general,  $S_{i} = \varnothing$  for every  $i \in [k - 1] \cup \{0\}$ , but this makes sense because  $\binom{i}{k} = 0$  for all of those values of  $i$ , as well.)

Next, we must identify  $|S_i|$  for every  $i \in [n] \cup \{0\}$ . To construct an element  $T \in S_i$ , we identify a two-step process: (1) we include the element  $i + 1 \in T$ , then (2) from the  $i$  smaller-indexed elements, we select  $k$  more to include. By the Rule of Product and the definition of selection, there are  $\binom{i}{k}$  ways to do this.

Thus, by the Rule of Sum, we conclude that

$$
| S | = \sum_{i = 0}^{n} | S_{i} | = \sum_{i = 0}^{n} \left( \begin{array}{c} i \\ k \end{array} \right)
$$

By equating these two expressions for  $|S|$ , we conclude that

$$
\sum_{i = 0}^{n} \binom {i} {k} = \binom {n + 1} {k + 1}
$$

□

Diagram for  $n = 4$  and  $k = 2$ :

$$
\begin{array}{l} S = \left\{\{1, 2, 3 \}, \{1, 2, 4 \}, \{1, 2, 5 \}, \{1, 3, 4 \}, \{1, 3, 5 \}, \right. \\ \left. \{1, 4, 5 \}, \{2, 3, 4 \}, \{2, 3, 5 \}, \{2, 4, 5 \}, \{3, 4, 5 \} \right\} \\ \end{array}
$$

$$
\begin{array}{l} S_{1} = \varnothing \\ S_{2} = \varnothing \\ S_{3} = \left\{\{1, 2, 3 \} \right\} \\ S_{4} = \left\{\{1, 2, 4 \}, \{1, 3, 4 \}, \{2, 3, 4 \} \right\} \\ S_{5} = \left\{\{1, 2, 5 \}, \{1, 3, 5 \}, \{1, 4, 5 \}, \{2, 3, 5 \}, \{2, 4, 5 \}, \{3, 4, 5 \} \right\} \\ \end{array}
$$

Proof 1 summary: Count the  $(k + 1)$ -element subsets of  $[n + 1]$  by partitioning based on the maximally-indexed element of any subset.

This proof strategy was developed from our initial observation that a binomial coefficient like  $\binom{n+1}{k+1}$  represents a selection, identifying a subset of  $[n+1]$ . However, we could have interpreted this coefficient via another standard set of counting objects: binary tuples. This would lead to a different consideration of the summation on the left-hand side. Let's dive into that proof now!

Proof 2. Let  $n, k \in \mathbb{N}$  and let  $S$  be the set of all binary  $(n + 1)$ -tuples with exactly  $k + 1$  1s. That is,  $S \subset \{0, 1\}^{n + 1}$ , and every  $T \in S$  consists of exactly  $k + 1$  1s and  $(n + 1) - (k + 1) = n - k$  0s.

We can identify  $|S|$  directly by noting that constructing an element of  $S$  amounts to selecting, from  $n + 1$  open positions,  $k + 1$  positions to be filled with 1s (and then deterministically filling the remaining positions with 0s). Thus,  $|S| = \binom{n+1}{k+1}$ .

Next, we can identify a partition of  $S$  by classifying the tuples based on where the right-most 1 appears. Specifically, for  $i \in [n + 1]$ , let  $S_i$  be the subset of  $S$  consisting of the tuples whose rightmost 1 occurs at position  $i$ , (as read from left to right, naturally). (See the diagram below the proof for an illustrated case with specific values of  $n$  and  $k$ .) To count the elements of  $S_i$ , we place a 1 in position  $i$ , then from the  $i - 1$  positions on the left, select  $k$  of them to be 1s. The remaining positions are deterministically filled with 0s. By the Rule of Product,  $|S_i| = \binom{i-1}{k}$ .

Now, we verify that  $\{S_i \mid i \in [n + 1]\}$  is a partition of  $S$ . First, observe that  $S_i \cap S_j = \emptyset$  whenever  $i \neq j$ ; if  $i < j$  then the  $j$ -th position of any element of  $S_i$  is 0 but the  $j$ -th position of any element of  $S_j$  is 1, so any  $(n + 1)$ -tuple cannot belong to both sets. Similarly, if  $j < i$ , the  $i$ -th position is either 1 (for elements of  $S_i$ ) or 0 (for elements of  $S_j$ ). Second, observe that any element of  $S$  has a rightmost 1, and that must occur in some position between 1 and  $n + 1$ , so every element of  $S$  belongs to one of the  $S_i$  sets.

Thus, by the Rule of Sum

$$
| S | = \sum_{j = 1}^{n + 1} | S_{j} | = \sum_{j = 1}^{n + 1} \left( \begin{array}{c} j - 1 \\ k \end{array} \right)
$$

By redefining the index of summation as  $i = j - 1$ , we can write

$$
| S | = \sum_{i = 0}^{n} \left( \begin{array}{c} i \\ k \end{array} \right)
$$

and equating the two expressions for  $|S|$ , we have proved the result.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/4e835ec6538fb69c009eaa0e03bce96cd458a54d044138926b3db3cf0d231dd8.jpg)

Diagram for  $n = 4$  and  $k = 2$ :

$$
S = \left\{\{1 1 1 0 0 \}, \{1 1 0 1 0 \}, \{1 1 0 0 1 \}, \{1 0 1 1 0 \}, \{1 0 1 0 1 \}, \right.
$$

$$
\left. \{1 0 0 1 1 \}, \{0 1 1 1 0 \}, \{0 1 1 0 1 \}, \{0 1 0 1 1 \}, \{0 0 1 1 1 \} \right\}
$$

$$
S_{1} = \varnothing
$$

$$
S_{2} = \varnothing
$$

$$
S_{3} = \left\{\{1 1 1 0 0 \} \right\}
$$

$$
S_{4} = \left\{\{1 1 0 1 0 \}, \{1 0 1 1 0 \}, \{0 1 1 1 0 \} \right\}
$$

$$
S_{5} = \left\{\{1 1 0 0 1 \}, \{1 0 1 0 1 \}, \{1 0 0 1 1 \}, \{0 1 1 0 1 \}, \{0 1 0 1 1 \}, \{0 0 1 1 1 \} \right\}
$$

Proof 2 summary: Count the binary  $(n + 1)$ -tuples with exactly  $k + 1$  ls by partitioning based on where the rightmost 1 occurs.

We hope that this has given you a good idea of how counting in two ways arguments are presented, and also how one tries to come up with such an argument by looking at the form of the identity. This subsection should give you some practice and let you attempt the exercises at the end of this section. If you find yourself needing more assistance, we suggest reading the next sections. It describes some heuristic methods to look at a counting in two ways problem and come up with an "appropriate" set  $S$  for a proof. These methods are based on the standard counting objects we presented earlier in this chapter, and their corresponding formulas.

Before we move on, though, we want to present one final counting in two ways: proof because we find it extremely enlightening and clever and elegant. We don't expect you to come up with this kind of argument—particularly because it doesn't fit exactly into our description of "counting in two ways" proofs that we have developed thus far—but we think it is worth reading and marveling at, so please do so.

Proposition 8.4.6 (Gauss' Sum by Pairs). For any  $n \in \mathbb{N}$ ,

$$
\sum_{k = 1}^{n} k = \frac{n (n + 1)}{2}
$$

Proof. First, observe that  $\frac{n(n + 1)}{2} = \binom{n + 1}{2}$ .

Now, consider a regular triangular array of dots consisting of  $n + 1$  rows, with  $k$  dots in the  $k$ -th row. The sum on the left represents the "area" of the first  $n$  rows of the array, i.e. the total number of dots in those  $n$  rows.

Next, we establish a bijection between those dots, and pairs of dots in the  $(n + 1)$ -th row. For any pair of dots, draw inwardly-pointing diagonal lines upwards

through the array to obtain a unique dot in an above row. Conversely, for any dot in the array, draw outwardly-pointing diagonal lines downward through the array to obtain a unique pair of dots in the bottom row. Thus, the number of pairs of dots in the  $(n + 1)$ -th row, which is  $\binom{n+1}{2}$ , is equal to the number of dots in the upper array, which is  $\sum_{k=1}^{n} k$ .

# 8.4.3 Standard Counting Objects

We have already discussed several standard combinatorial objects in the previous section. One of the difficulties of Counting in Two Ways proofs, though, is figuring out which objects to count! These exercises are very often posed as follows: "Here's an identity; prove it by Counting in Two Ways." This doesn't give you any idea of what to count, just that you need to count something! In this short section, we will do our best to provide a handy guide to "unraveling" a combinatorial identity and creating a Counting in Two Ways proof. These ideas are based on our experiences and some standard arguments used by combinatorialists.

# Binomial Coefficients and Multiple Interpretations

These objects and any corresponding counting formulas were covered in the previous section, so we encourage you to reread any part of that section that feels unfamiliar. What we can do here is emphasize when to recognize that a certain counting object is somehow "relevant" to a counting in tow ways problem. For instance, recall the Chairperson Identity, but pretend we haven't proved it yet:

$$
k \binom {n} {k} = n \binom {n - 1} {k - 1}
$$

Seeing that the identity only contains products of binomial coefficients (and remembering that we can always write  $k$  as  $\binom{k}{1}$ , for instance), indicates that we should try to count something that is easily describable by simple binomial coefficients. The most natural choice is subsets of  $[n]$ ; equivalently, we could use committees of a certain size chosen from a set of people, or binary  $n$ -tuples with  $k$  1s. Any of these three choices would provide us with fairly easy descriptions of the individual terms in the expression and allow us to relate them. At that point, we need to choose which interpretation we feel most comfortable with, the one with which we can most easily explain all of the terms.

If we choose to use people and committees, then we can follow the argument we used in the proof above. If we opt for the subsets of  $[n]$ , then we need to come up with a reasonable two-step process to describe the product of terms on both sides of the identity. After choosing a subset of size  $k$ , what might the  $\binom{k}{1}$  term represent? In essence, we are singling out a "special" element of the already chosen subset. This is similar to the  $\binom{n}{1}$  term on the right-hand side, where we single out a "special" element first, and then fill in the rest of the subset. However, when our context is subsets of  $[n]$ , we no longer have the terminology "chairperson of the committee". (This is why we feel

the committees interpretation is reasonable and easy to use. Just number all of the people uniquely, and then we can safely use any of this terminology.) Common interpretations of this term might involve, say, "circling" an element, to indicate it is special. That is, both sides of the equation would count subsets of  $[n]$  with size  $k$  with one element of the subset circled. On the left-hand side, we choose the subset and then assign the circle; on the right-hand side, we circle an element and include it in the subset, then fill out the rest of the subset. There are other simple and understandable ways to accomplish this argument, but we wanted to make sure to point out that the terminology of "committees" doesn't apply unless we choose that setting from the beginning of the proof. (Challenge problem: how would you approach this proof in the context of binary  $n$ -tuples? Hint: think about allowing that "special" position to be filled by some symbol other than a 0 or a 1.)

It is also common to find a product of binomial coefficients where the "top terms" are identical. For instance, think about how to describe a term like the following, in the context of a counting in two ways: (Pretend it is just one side of an equation; the other is irrelevant for this discussion.)

$$
\left( \begin{array}{c} n \\ k \end{array} \right) \left( \begin{array}{c} n \\ \ell \end{array} \right)
$$

There are two reasonable ways to describe this type of product, and deciding which one to use will depend on the other side of the equation, or the other terms involved. We will present both interpretations here and let you figure out which one to use by examining the context.

Consider the committees context, so each term somehow represents choosing a committee of a certain size ( $k$  or  $\ell$ ) from  $n$  total people. One interpretation is that we choose two committees from the same set of  $n$  total people. That is, perhaps we have  $n$  professors in a department and we need to choose  $k$  of them to oversee the budget and  $\ell$  of them to oversee the curricula, and professors are allowed to possibly serve on both committees. Another interpretation is that we choose two committees from different sets of people, but both of those sets have size  $n$ . That is, perhaps we have  $n$  boys and  $n$  girls in a class, and we want to choose  $k$  of the boys and  $\ell$  of the girls to form a club. Either of these interpretations is "correct" and reasonable to use, but the "right choice" will certainly depend on the rest of the problem in question.

One final term that is useful in committee-type arguments is the idea of a subcommittee. Since a committee of  $k$  people, chosen from  $n$  people, already represents a subset, a subcommittee really represents a subset of a subset. Thus, if we find a term like

$$
\left( \begin{array}{c} a \\ b \end{array} \right) \left( \begin{array}{c} b \\ c \end{array} \right)
$$

in an identity, we might choose to interpret this as choosing a committee of  $b$  people from  $a$  total people, and then choosing a subcommittee of  $c$  people from those  $b$  people. This can be described as choosing a club and then its officers, or a sports team and then its starting squad, or anything like that.

# Exponents and Processes

Other terms, beside binomial coefficients, that appear frequently in combinatorial identities are exponential terms:  $n^3$ ,  $2^n$ ,  $n^{k-1}$ , and so on. Oftentimes, the interpretation for these terms will already be dictated by how one has assigned a context, based on the other terms in the identity. What we present here are some standard, common, and easily-explainable ways to interpret terms like this. What's interesting is that the interpretation sometimes might depend on whether the base or the exponent is the larger number!

Consider a term like

$$
\left( \begin{array}{c} n \\ k \end{array} \right) 2^{k}
$$

Let's assume that we have assigned a "commitees" interpretation to the problem, based on the rest of the identity, and that we have declared that the binomial coefficient  $\binom{n}{k}$  represents a selection of a committee of  $k$  people from a class of  $n$  students. What does the  $2^k$  term then represent? Remember that this term could come from a  $k$ -step process, where each step can be done in one of two ways. Since  $k$  is the size of the committee chosen, then we can simply describe some 2-step decision process for every member of the committee. For instance, we could assign every committee member either a red hat or a blue hat; or, for each committee member, we could choose whether or not to give him/her a gold star; or, we could force the committee members to choose whether to become a Republican or a Democrat. Be creative, if you'd like! Of course, the chosen interpretation will have to work with the rest of the identity, so sometimes one interpretation is easier to explain than the other. Keep that in mind, and be willing to go back and change your interpretation if you find that it's hard to convey what you're thinking.

Now, consider a term like

$$
\left( \begin{array}{c} n \\ k \end{array} \right) 2^{n}
$$

Again, assume we have assigned a "committees" interpretation to the problem. How is this different from the above situation? In this case, the exponent matches the "top term" of the binomial coefficient. Thus, the selection of a committee doesn't necessarily have anything to do with the subsequent  $n$ -step process. This term might describe a selection of  $k$  class officers from an  $n$  student class, and then an assignment of every student into either Block A or Block B (regardless of the officer assignments). If we weren't using the "committees" interpretation, this term might describe a binary  $n$ -tuple with exactly  $k$  1s where some unknown number of the 0s and 1s are circled. The choice of interpretation will depend on the rest of the problem and how comfortable you feel explaining the terms.

Think about how to modify these interpretations with slightly different numbers. With a term like

$$
\left( \begin{array}{c} n \\ k \end{array} \right) 4^{n}
$$

we might describe a committee of  $k$  members, each of whom has a Red, Blue, Green, or Yellow hat. With a term like

$$
\left( \begin{array}{c} n \\ k \end{array} \right) 5^{n}
$$

we might describe a binary  $n$ -tuple with exactly  $k$  1s, where every 0 and 1 has either 1, 2, 3, 4 or 5 circles around it.

Next, let's examine some terms where the base is a variable and the exponent is fixed. For instance, consider a term like

$$
\left( \begin{array}{c} n \\ k \end{array} \right) k^{2}
$$

In this case, we are somehow selecting  $k$  objects from  $n$  total objects and performing a 2-step process with  $k$  choices at each step. That is, the selection of the  $k$  objects first affects the outcome of the second part, the 2-step process. If we are operating in a "commitees" context, we might interpret this term as selecting a committee of  $k$  people, and then choosing 2 officers of the committee—say, a speaker and a treasurer—where any person on the committee can be chosen as an officer and, furthermore, any member can potentially serve in both office positions.

If we wanted to use a "tuples" interpretation, we might describe this term as selecting a binary  $n$ -tuple with exactly  $k$  1s, where one 1 has a circle around it and one 1 has a box around it (and it's possible that the same 1 has a circle and a box). We also might describe this term using an "alphabet" interpretation. From an alphabet of  $n$  total letters, we can choose a subset of  $k$  letters and then construct two-letter words from just those  $k$  letters. Think about each of these three interpretations and why they all work, and how they relate to each other. Try to take one of our proofs and rewrite it using each of these interpretations. Also, think about how these interpretations would be different with a  $k^3$  or  $k^4$ , say.

Now, consider a term like

$$
\left( \begin{array}{c} n \\ k \end{array} \right) n^{3}
$$

in a "commitees" context. Since the base of the exponential term is the same as the "top term" of the binomial coefficient, there isn't necessarily a relationship between the committee that the  $\binom{n}{k}$  term represents and the subsequent 3-step process. Thus, we might describe a selection of a  $k$ -person committee, and then an assignment of one Red, one Blue, and one Green ribbon, where one person might receive multiple ribbons, and anyone (on or off the committee) may receive a ribbon (or ribbons). We will leave it to you to construct an appropriate interpretation of a term like this under a "binary  $n$ -tuples" interpretation. Do try it!

# Summation means Partition

It is quite common to find a summation in a combinatorial identity. Handling this in a counting in two ways proof is a little more intricate because a summation represents several terms at once. The most important rule, though, is this: a summation represents a partition. Always. In particular, it represents a partition and tells us what the cardinalities of all of the partition sets are. To explain this in a counting in two ways proof, there are always three properties we need to describe:

- What the sets of the partition are.  
- Why the limits on the index of the sum make sense in the context.  
- For an arbitrary index, why the size of the corresponding set is the term in the sum.

We will illustrate those through an example.

Example 8.4.7. Pro/Con Committee Identity:

$$
\binom {n} {k} 2^{n - k} = \sum_{i = k}^{n} \binom {n} {i} \binom {i} {k}
$$

Intuition: Create a committee of size  $k$  from  $n$  people. Then, determine whether the non-committee people are for or against the committee's decisions. We could also do this by first selecting at least  $k$  people who will be on/for the committee, and set everyone else to be off and against. Then, from that pool, we select  $k$  people to actually be on the committee, setting the others to be for it. (Note: It's important to say all of the steps we will perform in these constructions. Don't assume anything is obvious to the reader.)

Proof. Consider a set of  $n$  people. Let  $S$  be the set of ways to select  $k$  of the  $n$  people to be on a committee, with every person who isn't on the committee having a firm opinion to be For or Against the committee.

First, we can find  $|S|$  by a multi-step process:

- Select  $k$  of the  $n$  people to be on the committee.

$\binom{\mathbf{n}}{\mathbf{k}}$  options

- For each of the remaining  $n - k$  people, have them decide whether to be For or Against. This is a process with  $n - k$  steps and two choices at each step, so by ROP …

$2^{n - k}$  options

By ROP, we have  $|S| = \binom{n}{k} \cdot 2^{n-k}$ .

Second, we can find  $|S|$  by establishing a partition based on how many people are

For the committee. By the definition of  $S$ , anywhere from none to all of the  $n - k$  non-committee members could be For the committee. In total, then, between the committee members and their For supporters, we can have somewhere from  $k$  to  $k + (n - k) = n$  people, inclusive.

For each  $i$  that satisfies  $k \leq i \leq n$ , let  $S_i \subseteq S$  be the set of ways to have  $k$  committee members and  $i - k$  For supporters. (Notice that  $0 \leq i - k \leq n - k$ , which matches the restriction noted previously.)

Notice that  $\{S_i \mid k \leq i \leq n\}$  is a partition of  $S$ . This is because, for any element of  $S$ , that element can be characterized by how many For supporters of the committee there are, and that has to be some specific number. Now, we can find  $|S_i|$ , for each such  $i$ , by a multi-step process:

- From all  $n$  people, select  $i$  people. These are potential committee candidates.

$\binom{\mathbf{n}}{\mathbf{i}}$  options

- Designate the  $n - i$  other people to be decidedly Against the committee we are constructing.

(This step is deterministic, so there is only 1 way to do it, but we need to point this out to fully describe an outcome that is an element of  $S$ .)

- Of those  $i$  people chosen in the first step, select  $k$  to be actual committee members.

$\binom{\mathrm{i}}{\mathbf{k}}$  options

- Designate the  $i - k$  people not chosen in the previous step to be For supporters of the committee, but not committee members.

(Again, there is one way to do this, but it is required to fully describe the outcome.)

By ROP, we find that  $|S_i| = \binom{n}{i} \binom{i}{k}$ .

By ROS, then, we find that  $|S| = \sum_{i=k}^{n} |S_i| = \sum_{i=k}^{n} \binom{n}{i} \binom{i}{k}$ .

Since we found  $|S|$  in two ways, we can equate them. This proves the claim.

Notice that we did several things after identifying the partition in our proof. We explained why it is a partition. We explained how it was related to the index on the summation. We explained how the limits on the sum correspond to the partition and represent all possibilities. Then, for an arbitrary  $i$ , we explained why  $|S_i|$  is the corresponding term in the sum.

# 8.4.4 Binomial Theorem

We can prove a powerful and important theorem using this proof technique, counting in two ways. This will be an interesting application of this technique, but this is also a useful result in its own right, as we will see!

Theorem 8.4.8. Let  $x, y \in \mathbb{R}$  and  $n \in \mathbb{N}$ . Then,

$$
(x + y)^{n} = \sum_{k = 0}^{n} \binom {n} {k} x^{k} y^{n - k}
$$

We will explain a few different ways to prove this.

Proof 1. Consider proving this where we assume  $x, y \in \mathbb{N}$ .

In this case, think of having a set of  $x + y$  symbols; for instance, say we have  $x$  lowercase letters and  $y$  capital letters. Then  $(x + y)^n$  is the number of strings of length  $n$  made from those symbols.

On the right-hand side, we partition the set of all such length  $n$  strings based on how many positions in a string are filled with lowercase letters. There will be somewhere from 0 to  $n$  of the positions (inclusive) filled with choices from the set of  $x$  lowercase letters. For each such  $k$ , with  $0 \leq k \leq n$ , the number of length  $n$  strings with exactly  $k$  lowercase letters is  $\binom{n}{k} \cdot x^k \cdot y^{n-k}$  since we select those  $k$  positions for the lowercase letters, choose how to fill those positions, and then fill the remaining  $n-k$  positions with capital letters.

Proof 2. Let's prove this for general  $x, y \in \mathbb{R}$  by counting the number of terms in the "FOILed" expansion that correspond to  $k$  choices of  $x$  (and thus  $n - k$  choices of  $y$ ) from the factors in the product.

Consider the product

$$
(x + y)^{n} = \underbrace {(x + y) \cdot (x + y) \cdots (x + y)}_{n \text{fa ct or s}}
$$

Think about multiplying out these  $n$  factors by applying the Distributive Property over and over. For example, with  $n = 2$ , we have

$$
\begin{array}{l} (x + y)^{2} = (x + y) (x + y) = x (x + y) + y (x + y) = x \cdot x + x \cdot y + x \cdot y + y \cdot \\ = x^{2} + 2 x y + y^{2} \\ \end{array}
$$

and with  $n = 3$ , we have

$$
(x + y)^{3} = (x + y) (x + y) (x + y) = x (x + y) (x + y) + y (x + y) (x + y) = \dots
$$

The general idea is this: To find a term in the ultimate product, we select either an  $x$  or a  $y$  from each factor  $(x + y)$ . Every such term looks like  $x^k \cdot y^{n - k}$ , for some  $k$  between 0 and  $n$ . All we need to do is identify how many ways there are to create a term like  $x^k \cdot y^{n - k}$ . This amounts to finding the number of ways to select  $k$  of the  $n$  factors, and say that we chose "  $x$ " from those factors and "  $y$ " from the other  $n - k$  factors. By definition of selection, there are precisely  $\binom{n}{k}$  many ways to do this!

Proof 3. We could also prove this by induction! Pascal's Identity is essential in the Induction Step. This is presented to you in Exercise 8.9.14.  $\square$

Example 8.4.9. Let's show how this theorem is useful.

- Apply the Binomial Theorem to show

$$
2^{n} = \sum_{k = 0}^{n} \binom {n} {k}
$$

Proof. Use  $x = 1$  and  $y = 1$ .

□

That's it! A result we proved already by induction and then by a counting in two ways: argument now follows immediately from this powerful theorem.

- Prove that the number of odd-sized subsets of  $[n]$  is equal to the number of even-sized subsets of  $[n]$ ; that is,

$$
\sum_{k = 0}^{\lceil n / 2 \rceil - 1} \binom {n} {2 k + 1} = \sum_{k = 0}^{\lfloor n / 2 \rfloor} \binom {n} {2 k}
$$

One can prove this by finding a bijection between the set of even-sized subsets and the set of odd-sized subsets. We could even try to explain this with a counting argument.

Instead, let's subtract on both sides and rewrite the equality as

$$
\sum_{k = 0}^{n} (- 1)^{k} \binom {n} {k} = 0
$$

Notice that this is precisely what Binomial Theorem says, with  $x = -1$  and  $y = 1$ . Amazing!

# 8.4.5 Questions & Exercises

# Remind Yourself

Answering the following questions briefly, either out loud or in writing. These are all based on the section you just read, so if you can't recall a specific definition or concept or example, go back and reread that part. Making sure you can confidently answer these before moving on will help your understanding and memory!

(1) What is the overall method of a counting in two ways argument?  
(2) Write a short proof summary for each example proof of this section.  
(3) When there is a summation in a propose identity, what must we discuss in a subsequent counting in two ways proof?  
(4) What are the different ways that we proved the Summation Identity? How are they fundamentally the same?

# Try It

Try answering the following short-answer questions. They require you to actually write something down, or describe something out loud (to a friend/classmate, perhaps). The goal is to get you to practice working with new concepts, definitions, and notation. They are meant to be easy, though; making sure you can work through them will help you!

(1) Let  $\ell, k, n \in \mathbb{N}$  be given. Prove that

$$
\left( \begin{array}{c} n \\ k \end{array} \right) \left( \begin{array}{c} k \\ \ell \end{array} \right) = \left( \begin{array}{c} n \\ \ell \end{array} \right) \left( \begin{array}{c} n - \ell \\ - \ell \end{array} \right)
$$

by a counting in two ways argument.

(2) Prove that

$$
n \cdot 2^{n - 1} = \sum_{k = 1}^{n} \binom {n} {k} \cdot k
$$

by a counting in two ways argument.

(3) Prove

$$
3^{n} = \sum_{k = 0}^{n} \binom {n} {k} 2^{n - k} = \sum_{k = 0}^{n} \binom {n} {k} 2^{k}
$$

by a counting in two ways argument.

(Hint: Consider using the set of ternary strings.)

Then, explain how it follows from the Binomial Theorem, as well.

(4) Prove that  $k^2 = \binom{k}{1} + 2\binom{k}{2}$  by a counting in two ways argument.

Apply the Summation Identity to deduce that

$$
\sum_{k = 1}^{n} k^{2} = \frac{n (n + 1) (2 n + 1)}{6}
$$

(5) Prove the following Geometric Series Formula by a counting in two ways: proof:

$$
\forall q \in \mathbb {N} - \{1 \}. \forall n \in \mathbb {N}. \quad 1 + q + q^{2} + q^{3} + \dots + q^{n - 1} = \sum_{k = 0}^{n - 1} q^{k} = \frac{q^{n} - 1}{q - 1}
$$

(Note: This formula holds true, in fact, for any real number  $q \neq 1$ , but the counting in two ways proof we are asking for only applies to natural numbers  $q \neq 1$ . To prove the real-valued version, use induction.)

(Hint: Consider the set of all  $n$ -tuples made from  $q$  elements, except for a particular one…)

# 8.5 Selections with Repetition

# 8.5.1 Motivation

When we derived formulas for the number of arrangements and selections, we took care to point out whether we are allowed to repeat objects. At the time, we left off deriving a formula for the number of ways to select objects with repetition. Specifically, we needed to develop—and become comfortable with—the technique of counting in two ways before tackling this problem. Now, we're ready!

Example 8.5.1. Say I have a box of fruit on my kitchen counter. It has a bunch of apples and bananas and peaches in it. Let's say at least 10 of each. I reach in and grab 5 pieces of fruit to have throughout my day at school. How many different combinations could I have possibly grabbed?

For the sake of this example, we are assuming that any two apples, for instance, are indistinguishable to me. None of them are off-colored or far smaller than the others, or anything like that. With this assumption, this question is about selecting 5 objects from 3 types of objects. The outcome is unordered (so it's a selection, not an arrangement) and we are allowed to repeat objects from any type (i.e. I can pick several bananas).

For example, we could pick 4 apples and 1 peach, or 5 bananas, or 1 apple and 2 bananas and 2 peaches.

This represents the most general form of this kind of problem. Given a number of types, how many ways can I select some number of total objects from those types? Let's see another example before finding a formula for these kinds of problems. In fact, this is the interpretation that we will use to derive the formula!

Example 8.5.2. Suppose we have  $n$  indistinguishable (identical) gold coins to distribute amongst  $k$  distinguishable (distinct and labeled) pirates. How many ways can we do this?

Try working with this for small values of  $n$  and  $k$ . Actually, grab some nickels and some friends, and try to work it out. If you have  $n = 5$  coins and  $k = 3$  friends, how many ways can you distribute the coins?

Keep in mind that the pirates are distinguishable. For instance, giving Captain Redbeard 2 coins and Captain Blackbeard 10 coins is not the same outcome as giving Redbears 10 and Blackbeard 2. We should count those separately.

Also, keep in mind that the coins are indistinguishable. This means that it doesn't matter how we hand out the coins, or in what order, or anything like that. All that matters is the final outcome, where they all end up. For instance, giving Redbeard 5 coins, then Blackbeard 5, then Redbeard another 2…that's the same as just giving Redbeard 7 coins and Blackbeard 5. We should count these as the same outcome.

Try to work with these examples and come up with a formula that solves these problems. Can you generalize to any  $n$  and  $k$ ? Can you prove your claim?

Try it! Then, read the next section for our formula and proof.

# 8.5.2 Formula

We will derive a formula for the number of selections with repetition by considering the Pirates & Gold example. First, let's explain why this is like selection with repetition:

Pretend that we are the gold distributor in this scenario. We are sitting at a table with  $k$  pirates seated around us and a bag full of  $n$  gold coins at our side. We can choose how to distribute the coins by passing them out one by one. When we choose to give a gold coin to Pirate  $\# i$  (for some  $i \in [n]$ ), we are selecting that pirate from amongst the  $k$  different types of pirate. Ultimately, to pass out  $n$  pieces of gold, we need to make  $n$  selections. Thus, we are selecting  $n$  objects from  $k$  types, overall, and we are allowed to repeatedly select a type.

# Derivation

Think of having our  $n$  coins laid out on the table, all in a row. To distribute them amongst the  $k$  pirates, we need to lay down "dividers" or "bars" that separate the gold pieces into  $k$  piles. Then, Pirate 1 will take the pile on the left, Pirate 2 will take the next pile, etc.

This "dividers" argument allows us to count the number of ways to complete this process conveniently! To assign the  $n$  pieces of gold to  $k$  distinct pirates, we need to have  $n$  coins separated by  $k - 1$  dividers. Think about why we only need  $k - 1$  dividers here. It's easy to see why we only need 1 divider to split a row of coins into 2 piles. Then, we can see that 2 dividers split them into 3 piles. In general, once we have already laid down  $k - 1$  dividers, there are  $k$  piles established; we don't need to lay down a final divider at the end of the row to represent that the rightmost pile goes to Pirate  $\# k$ .

Example 8.5.3. For example, with  $k = 3$  and  $n = 7$ , we might have a distribution like this:

$$
\begin{array}{c c c c} \text{O} & \text{OO OO} & \text{OO} \end{array}
$$

In this case, Pirate 1 receives 1 gold, Pirate 2 receives 4 gold, and Pirate 3 receives 2 gold.

Notice that this is different from the following outcome:

$$
\begin{array}{c c c} \text{OO OO} & \text{OO} & \text{O} \end{array}
$$

In this case, Pirate 1 receives 4 gold, Pirate 2 receives 2 gold, and Pirate 3 receives 1 gold.

We could also have some pirates receive 0 gold:

$$
\begin{array}{c c c c c} \circ & \circ & \circ & \circ & \circ \\ \circ & \circ & \circ & \circ & \end{array} | \begin{array}{c c c c c} \circ & \circ & \circ & \circ \\ \circ & \circ & \circ & \circ & \end{array}
$$

Here, Pirate 1 receives 5 gold, Pirate 2 receives 2 gold, and Pirate 3 receives 0 gold.

What do these observations tell us? Well, this means that any assignment of the gold pieces corresponds to a string of length  $n + k - 1$  with exactly  $n$  coins and exactly  $k - 1$  dividers. There is a bijection between the sets of these two objects: gold distributions and divider placements. Given a gold distribution scheme, we can construct the corresponding divider arrangement. (For instance, if we were told Pirate 1 is to receive 5 gold, Pirate 2 is to receive 2 gold, and Pirate 3 is to receive 0 gold, we would construct the divider arrangement in the last example above.) Likewise, given a divider arrangement, we can read it off and determine what gold distribution scheme it corresponds to.

This bijection tells us that to count the number of ways to distribute the gold, we just need to count the number of possible divider arrangements there are. We can count these quite easily! A divider arrangements is just a string of length  $n + k - 1$  with exactly  $k - 1$  dividers. This is because we need  $n$  gold and  $k - 1$  dividers, so  $n + k - 1$  positions, in total. Thus, by the definition of selection, there are

$$
\left( \begin{array}{c} n + k - 1 \\ k - 1 \end{array} \right)
$$

ways to construct such an arrangement!

(You might have also heard of this argument as "Stars and Bars". This is just another common interpretation of this problem, where the gold pieces are replaced with Stars and the dividers are replaced with Bars.)

Because of that bijection between the set of such arrangements and the set of gold assignments, we conclude that  $\binom{n+k-1}{n}$  is the number of ways we can distribute the gold!

We already know that  $\binom{n}{k} = \text{binn} - k$ , in general, so we could apply that here and deduce that the number of gold assignments is also

$$
\left( \begin{array}{c} n + k - 1 \\ n \end{array} \right)
$$

But we could already have seen this in our derivation. We need to construct a string of length  $n + k - 1$  with  $k - 1$  dividers (and the remaining positions being gold pieces). Equivalently, we need a string of that length with  $n$  gold pieces (and the remaining positions being dividers).

# 8.5.3 Equivalent Forms

Before moving on to solve some problems with this new formula, let's consider some equivalent formulations of a fundamental selections with repetition problem. Whenever you face a problem that involves these concepts or formulations, you might consider applying the formal we just derived, somehow.

# Pirates & Gold

This is the original formulation we used to derive the formula, so certainly it is applicable in a context like this. In general, all we need to know is the number of pirates and the number of gold pieces.

The number of ways to distribute  $n$  identical pieces of gold amongst  $k$  distinguishable pirates is  $\binom{n+k-1}{k-1}$ .

Implicit in our derivation, mind you, is that pirates could conceivably receive 0 gold pieces, so keep that in mind. Some problems might ask you to consider other conditions on the distributions. For example, what if every pirates must receive at least one piece of gold?

# Integer Sums

Consider reformulating the Pirates & Gold problem as follows. Let's define  $x_{i} \in \mathbb{N} \cup \{0\}$  to be the number of gold pieces that Pirate  $\# i$  receives in the distribution. The conditions of the problem require that

$$
\forall i \in [ k ]. x_{i} \in \mathbb {N} \cup \{0 \}
$$

and that

$$
\sum_{i = 1}^{k} x_{i} = x_{1} + x_{2} + x_{3} + \dots + x_{k} = n
$$

Aha! What if we had asked about the number of solutions to such an equation? This corresponds exactly (in a bijective manner) with the ways to solve the Pirates & Gold problem. Given a solution to this equation, we just give Pirate  $\# i$  exactly  $x_{i}$  pieces of gold. This gives us a different way of stating the problem:

The number of solutions to the equation  $x_{1} + x_{2} + \dots +x_{k} = n$  that satisfy the condition  $\forall i\in [k]\cdot x_{i}\in \mathbb{N}\cup \{0\}$  is  $\binom{n+k-1}{k-1}$ .

# Balls and Bins

What if we were given  $n$  identical balls, and we were asked to place them in  $k$  different bins. (The bins are distinguishable, so let's say they are labeled from 1 to  $k$ .) How many ways can we do this? This is easy to relate to the previous formulation! Let  $x_{i} \in \mathbb{N} \cup \{0\}$  be the number of balls that end up in Bin  $\# i$ . Then the same exact conditions as the problem above apply here.

The number of ways to distribute  $n$  identical balls into  $k$  distinguishable bins is  $\binom{n+k-1}{k-1}$ .

# Indistinguishable Dice

Consider rolling  $n$  identical dice. How many outcomes are there? This is not the same as rolling distinguishable dice (where the dice are different colors, for example.) Instead, an outcome of this process is an unordered list of the numbers that are showing on the faces.

For example, if we rolled 3 indistinguishable 6-sided dice, an outcome of that process might be the unordered list (1, 3, 3). To think about this, pretend your friend went into another room and rolled 3 dice, then came back and told you what happened. If he says "I rolled a 1 and two 3s", then you didn't learn about which dice showed which number. (Contrast this with the case where he says "I rolled a 1 on the first die and then a 3 on each of the second and third dice.") By asking about the number of outcomes of indistinguishable dice, we are essentially asking about how many possible responses your friend could give you that do not indicate anything about the order in which the rolls appeared.

We can relate this to the "Balls and Bins" formulation by rolling all the dice and placing them into 6 numbered boxes based on what the faces show. Equivalently, to characterize an outcome of this process, we need to know how many dice showed 1, how many showed 2, etc. We don't care (nor could we know!) which dice showed which numbers; we only need to know how many showed each number.

The number of outcomes of rolling  $n$  indistinguishable  $k$ -sided dice is  $\binom{n+k-1}{k-1}$ .

# 8.5.4 Examples

Let's practice using this newly-derived formula to solve some problems! We'll examine a couple of different formulations of the fundamental result, in the process.

Example 8.5.4. Let's say we have  $n = 20$  pieces of gold to distribute amongst  $k = 3$  pirates. Let's say the pirates are Captain Redbeard (Khair ad Din, an Ottoman), Captain Blackbeard (Edward Teach, an Englishman), and Captain Kidd (a Scotsman).

Let's figure out how many ways there are to distribute the gold under certain conditions:

(1) How many ways are there total?

This is like selecting 20 objects from 3 types, with repetition allowed. Whenever we select a pirate, that means we give him a piece of gold.

By the above selection formula, there are

$$
\binom {2 0 + 3 - 1} {2 0} = \binom {2 2} {2 0} = \frac{2 2 \cdot 2 1}{2} = 2 3 1
$$

ways to do this.

(2) How many ways ensure every pirate gets at least 2 pieces?

Let's just give everyone two pieces of gold right away. Then, we have  $20 - 6 = 14$  pieces of gold left to distribute amongst all 3 pirates, so there are

$$
\binom {1 4 + 2} {1 4} = \binom {1 6} {1 4} = \frac{1 6 \cdot 1 5}{2} = 1 2 0
$$

ways to do this. Think about why this works. We are essentially re-defining what "getting 0 gold pieces" means. Instead of starting with 20 pieces and worrying about whether or not everyone gets at least two pieces, we can just ensure that condition is met right away, and then distribute what's left over.

(3) How many ways ensure Redbeard and Blackbeard get at least 2 and Kidd gets at least 6?

Just like the last one, let's give Redbear and Blackbeard 2 pieces each, and let's give Kidd 6 pieces. This leaves us with  $20 - 4 - 6 = 10$  pieces left to distribute amongst all 3 pirates, so there are

$$
\binom {1 0 + 2} {1 0} = \binom {1 2} {1 0} = \frac{1 2 \cdot 1 1}{2} = 6 6
$$

ways to do this.

(4) How many ways ensure Redbeard and Blackbeard get at least 2 while Kidd gets no more than 2?

There are a couple of ways to approach this one.

(i) Let's establish cases based on whether Kidd gets 0 or 1 or 2 golds. In each case, we will give Redbeard and Blackbeard 2 pieces each right away, and then give Kidd the corresponding amount (0 or 1 or 2). This leaves us with 16 or 15 or 14 pieces left to distribute only amongst the first two pirates, so there are

$$
\binom {1 6 + 1} {1 6} + \binom {1 5 + 1} {1 5} + \binom {1 4 + 1} {1 4} = 1 7 + 1 6 + 1 5 = 4 8
$$

(ii) Let's consider all of the ways to ensure Redbeard and Blackbeard get at least 2 golds each, and then remove from this the number of ways where Kidd gets too many, i.e. at least 3 golds.

If we give Red/Blackbeard 2 golds each, then we have 16 pieces left to distribute amongst all 3 of the pirates, so there are

$$
\binom {1 6 + 2} {1 6} = \binom {1 8} {1 6} = \frac{1 8 \cdot 1 7}{2} = 1 5 3
$$

ways to do this step.

Then, if we give Red/Blackbeard 2 golds each and give Kidd 3 pieces and then distribute the remaining 13 amongst all 3 of the pirates, there are

$$
\binom {1 3 + 2} {1 3} = \binom {1 5} {1 3} = \frac{1 5 \cdot 1 4}{2} = 1 0 5
$$

ways to do this step. We want to remove these possibilities from the previous count. Thus, in total, there are

$$
\binom {1 8} {1 6} - \binom {1 5} {1 3} = 1 5 3 - 1 0 5 = 4 8
$$

ways to give Redbeard and Blackbeard at least two each, but give Kidd no more than 2.

(Look, we get the same answer both ways!)

Example 8.5.5. Consider the following equation:

$$
x_{1} + x_{2} + x_{3} + x_{4} + x_{5} = 2 5
$$

Let's identify the number of solutions to this equation where each variable  $x_{i}$  is a non-negative integer. We'll impose certain conditions and count the number of solutions that satisfy them.

(1) How many solutions are there total?

Applying the formula we derived, we see there are

$$
\left( \begin{array}{c} 2 5 + (5 - 1) \\ 5 - 1 \end{array} \right) = \left( \begin{array}{c} 2 9 \\ 4 \end{array} \right)
$$

(2) How many solutions satisfy  $x_{1} \geq 4$ ?

This is exactly like asking for Captain Redbeard to get at least 4 gold pieces. We are going to "pre-distribute" 4 "counts" to the variable  $x_{1}$ , and then distribute the remaining 21 "counts" to all five variables.

More formally, we define  $y_{1} = x_{1} - 4$ . The condition requires only  $y_{1} \geq 0$ . Thus, we are trying to solve the equation

$$
\begin{array}{l} x_{1} + x_{2} + x_{3} + x_{4} + x_{5} = 2 5 \Longleftrightarrow (x_{1} - 4) + x_{2} + x_{3} + x_{4} + x_{5} = 2 1 \\ \Longleftrightarrow y_{1} + x_{2} + x_{3} + x_{4} + x_{5} = 2 1 \\ \end{array}
$$

Applying the formula, we see there are

$$
\left( \begin{array}{c} 2 1 + (5 - 1) \\ 5 - 1 \end{array} \right) = \left( \begin{array}{c} 2 5 \\ 4 \end{array} \right)
$$

such solutions.

(3) How many solutions satisfy  $x_{1}, x_{2} \geq 5$  and  $x_{3}, x_{4}, x_{5} \geq 2$ ?

Using a method exactly like the last one, we see that we're trying to solve

$$
y_{1} + y_{2} + y_{3} + y_{4} + y_{5} = 9
$$

where  $y_{i} = x_{i} - 5$  for  $i = 1,2$ , and  $y_{i} = x_{i} - 2$  for  $i = 3,4,5$ . The right-hand side has been changed to  $25 - 5 - 5 - 2 - 2 = 9$ . By the formula, we know there are

$$
\left( \begin{array}{c} 9 + (5 - 1) \\ 5 - 1 \end{array} \right)
$$

such solutions.

(4) How many solutions satisfy  $x_{2} \leq 5$ ?

We can do this in one of two ways. First, let's take the total number of solutions (found in the first part of this example) and remove the number of solutions that fail this desired condition. That is, let's take the number of solutions where  $x_{2} \geq 6$ , which is

$$
\binom {(2 5 - 6) + (5 - 1)} {5 - 1} = \binom {2 3} {4}
$$

and remove it from the total, yielding

$$
\left( \begin{array}{c} 2 9 \\ 4 \end{array} \right) - \left( \begin{array}{c} 2 3 \\ 4 \end{array} \right)
$$

Second, we could write this as a sum, finding the number of solutions that satisfy  $x_{2} = \ell$ , for  $0 \leq \ell \leq 5$ :

$$
\sum_{\ell = 0}^{5} \binom {2 8 - \ell} {3} = \binom {2 8} {3} + \binom {2 7} {3} + \binom {2 6} {3} + \binom {2 5} {3} + \binom {2 4} {3} + \binom {2 3} {3}
$$

Interestingly enough, if we had only thought to solve this in the second way, we could still reduce the expression to the first one. We just need to use the Summation Identity! Observe that

$$
\begin{array}{l} \sum_{\ell = 0}^{5} \binom {2 8 - \ell} {3} = \binom {2 8} {3} + \binom {2 7} {3} + \binom {2 6} {3} + \binom {2 5} {3} + \binom {2 4} {3} + \binom {2 3} {3} \\ = \sum_{k = 0}^{2 8} \binom {k} {3} - \sum_{k = 0}^{2 2} \binom {k} {3} \\ = \binom {2 9} {4} - \binom {2 3} {4} \\ \end{array}
$$

Neat, right?

# 8.5.5 Questions & Exercises

# Remind Yourself

Answering the following questions briefly, either out loud or in writing. These are all based on the section you just read, so if you can't recall a specific definition or concept or example, go back and reread that part. Making sure you can confidently answer these before moving on will help your understanding and memory!

(1) What is the difference between a selection and a selection with repetition?  
(2) What is the number of ways to select  $n$  objects from  $k$  objects? (Careful about letters here!)  
(3) What is the number of ways to select  $n$  objects from  $k$  types of objects?  
(4) How are the "Pirates & Gold" and "Integer Sums" formulations equivalent?  
(5) Adapt the argument we used to derive the formula  $\binom{n+k-1}{k-1}$  and use it to prove the same formula counts the number of solutions to the "Integer Sums" formulation.

# Try It

Try answering the following short-answer questions. They require you to actually write something down, or describe something out loud (to a friend/classmate, perhaps). The goal is to get you to practice working with new concepts, definitions, and notation. They are meant to be easy, though; making sure you can work through them will help you!

(1) A clothing store makes 5 different colors of shirts (red, green, blue, white, and black).

(a) We need to buy 10 shirts. How many ways can we do this, assuming we can order any number of shirts of each color (i.e. there's an unlimited supply of each color)?  
(b) We need to acquire some shirts, either 10 or 11 or 12, we're not sure yet. How many ways can we do this, again assuming an unlimited supply of each color?  
(c) We need to acquire 10 or 11 or 12 shirts, but in each case we need at least 1 shirt of each color. How many ways can we do this?  
(d) Now, we need to order 25 shirts, but we are told that there are only 3 red shirts left (while each other color still has an unlimited supply). How many ways can we do this?  
(e) Now, we still need to order 25 shirts, but we are told there are only 3 red shirts and 5 blue shirts left (while each other color still has an unlimited supply). How many ways can we do this?

(2) Consider rolling 20 indistinguishable dice.

(a) How many total outcomes are there?  
(b) How many have each number appearing at least twice?  
(c) How many have at most three 6s?  
(d) How many have at least four 6s?

(3) What is wrong with the "proof" of the following claim?

Consider 4 buckets of coins: one bucket contains pennies, one contains nickels, one contains dimes, and one contains quarters. There are over 50 coins in each bucket (so we don't have to worry about running out of any type of coin).

We want to select 50 coins from these buckets; we want to make sure that we select at least 10 pennies and at least 10 nickels but at most 10 dimes and at most 10 quarters.

Claim: The number of ways to do this is

$$
\binom {5 3} {3} - \binom {1 1} {3} = 2 3 2 6 1
$$

Proof: Consider the total number of ways to select 50 coins from 4 types, with no added restrictions. This is selecting  $k = 50$  objects from  $n = 4$  types, so there are  $\binom{53}{3}$  ways to do this.

Now, we want to remove from this total the number of ways to select the coins where we do pick at least 10 pennies and at least 10 nickels but also at least 11 dimes and at least 11 quarters. To count these selections, we just want to actually select all of those coins (there are 42 total) and then select 8 more from all four types. We know there are  $\binom{11}{3}$  ways to choose  $k = 8$  objects from  $n = 4$  types.

Subtracting the second number from the first, we get the number given in the claim.

# 8.6 Pigeonhole Principle

# 8.6.1 Motivation

This is a result we have hinted at before. We even proved a particular version of it way back when we studied proof techniques for the first time! (See Example 4.9.2.) The general idea is this:

If we have too much "stuff" to put into too few "boxes", then some box has a bunch of "stuff".

This is very informal, of course, but it should help you see where it might come in handy.

The Pigeonhole Principle is useful, for instance, when we have a bunch of objects that fall into a certain number of categories. If we know how many objects we have, and how many possible categories there are, then we can guarantee the existence of some category that has at least some certain number of objects in it.

Example 8.6.1. Here is a canonical example of the principle being applied:

# Of any 3 people, two must have the same sex.

Notice that this doesn't say which sex is represented at least twice. It just guarantees the existence of such a category. To convince yourself of this fact, you could enumerate the possibilities (where M means a male, and F means a female): MMM, MMF, MFF, FFF. In each case, at least one of the sexes appears twice (or more).

Here's a logically equivalent version of the above statement:

If we flip 3 coins, at least two must show the same face.

Here's a similar statement to the ones above:

If we roll 7 dice, at least two must show the same number.

Are you beginning to see the general idea? Here's one more version of these claims, and a transition to the next part, where we state and prove a generalized version.

If we have  $n + 1$  pieces of paper to stuff into  $n$  different drawers, some drawer will end up getting at least 2 pieces of paper.

This is, by the way, the etymological derivation of "pigeonhole": it's a term for the drawers you'd find on an old-fashioned rolltop desk. We'd rather not think about manhandling gentle creatures into tiny boxes!

# 8.6.2 Statement and Proof

There are two versions of this principle, so we'll state and prove them both. The first version is how we'll be using it in combinatorial problems.

Theorem 8.6.2 (Pigeonhole Principle). (1) If a set  $S$  with  $|S| = n$  is partitioned into  $k$  disjoint subsets whose union is  $S$ , and if  $k < n$ , then at least one of the subsets in the partition has more than one element. Furthermore, that part actually has at least  $\left\lceil \frac{n}{k} \right\rceil$  elements.

(That is, if we separate  $n$  objects into  $k$  piles, there must be one pile with at least  $\frac{n}{k}$  objects in it.)

(2) If  $x_1, x_2, \ldots, x_n$  are real numbers with the property that  $\sum_{i=1}^{n} x_i \geq z$ , then there is at least one index  $i$  such that  $x_i \geq \frac{z}{n}$ .

(That is, if we have  $n$  real numbers, there must be one number that is at least as large as the average).

Proof. AFSOC  $k < n$  and  $S$  is partitioned into  $S_{1},\ldots ,S_{k}$  that also satisfy  $|S_{i}| < \frac{n}{k}$  for every  $i$ . Since the sets form a partition of  $S$ , we have

$$
n = | S | = \sum_{i = 1}^{k} | S_{i} | <   \sum_{i = 1}^{k} \frac{n}{k} = n
$$

so  $n < n$ . This is a contradiction!  $\times$

AFSOC all of the numbers  $x_{i}$  satisfy  $x_{i} < \frac{z}{n}$ . Then,

$$
z = \sum_{i = 1}^{n} x_{i} <   \sum_{i = 1}^{n} \frac{z}{n} = n \cdot \frac{z}{n} = z
$$

so  $z <   z$  . This is a contradiction.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/ca7f6a28441d1d000508e3c6f01e390c62bdff2c9bd0cc2ea4754701f446426e.jpg)

Notice how similar these proofs are! They look identical, algebraically. Indeed, they represent the same underlying idea.

# 8.6.3 Examples

Let's dive right in and see how to use the Pigeonhole Principle in combinatorics problems. We'll show you how it works with some practice examples. In general, the hardest part about using the Pigeonhole Principle is in deciding what the "pigeonholes" actually are!

Example 8.6.3. Of 8 people, there must be two whose birthdays are on the same day of the week this year. Also, of 13 people, there must be two whose birthdays are in the same month.

For the first claim, we can take our "pigeonholes" to be the 7 days of the week. Taking 8 people and partitioning them based on the day of the week their birthday occurs on this year, we find there are 8 objects going into 7 parts. Thus, one part has at least  $\frac{8}{7}$  objects in it. Since we are working with whole objects, this actually means some part has at least 2 objects in it.

A similar argument applies for the second claim. We just use the 12 months of the years as our "pigeonholes".

Example 8.6.4. In New York City, there are at least 8 people with the exact same number of hairs on their head.

This follows from knowing a couple of facts. First, scientists estimate that there are between 100000 and 150000 hairs on the human head. Let's be conservative and widen that range to 0 to 1 million. Second, New York City has about 8

million people. By defining our "pigeonholes" to be the numbers 0 to 1 million (based on how many hairs are on each person's head), we get the result.

(In fact, this argument might not be necessary. I bet we could walk around the city and find 8 bald people pretty quickly!)

Example 8.6.5. Look back at Section 1.4.4 where we investigated finding a group of mutual friends amongst a larger group. In that problem's solution, we actually used the Pigeonhole Principle! We had 5 objects that were arbitrarily separated into 2 categories. This let us deduce that some category had at least 3 of the objects.

Example 8.6.6. Suppose  $n$  golfers ( $n \geq 2$ ) compete in a match play tournament, round robin style. How many matches are played? After those matches, must there exist two golfers with the exact same number of wins and losses? If not, can you impose conditions that guarantee that?

Using a counting argument, we find that  $\frac{n(n - 1)}{2}$  matches are played. (Why? Can you fill in the details? Try it!) However, we can't guarantee two people with the same record. For instance, suppose  $n = 3$  and that Player 1 lost to both others, Player 2 beat Player 1 but lost to Player 3, and that Player 3 beat both others. This yields records of 0-2 and 1-1 and 2-0, respectively, and we see that none are the same.

Now, if we impose the condition that no one is undefeated, then we can guarantee two players have the same record. Each player plays  $n - 1$  matches (one match against everyone except himself). Since no one is undefeated, no one has  $n - 1$  wins. Thus, the possible number of wins for each player is 0 or 1 or 2 or … or  $n - 2$ . There are  $n - 1$  options there. By the Pigeonhole Principle, amongst  $n$  players, there must be two of these win counts repeated!

Example 8.6.7. Proposed claim: "Amongst any set of  $m$  distinct natural numbers, there are at least two such numbers whose sum or difference is a multiple of 10."

Find the smallest value of  $m$  such that this claim is valid.

By trying out some small cases, we can see that  $m \leq 6$  will not work. Even with  $m = 6$ , we can pick the set of numbers  $\{1,2,3,4,5,10\}$ . Notice that no two of them have a sum/difference that is a multiple of 10. (Note: We aren't allowed to trivially pick the same number twice, like  $5 - 5 = 0$  or  $5 + 5 = 10$ , to get a multiple of 10.)

Might  $m = 7$  be the number we are looking for? Let's try to prove it!

Suppose we have an arbitrary set of 7 natural numbers. Let's assign them to the Pigeonhole Boxes that are categorized by their last digit (that is, place each number  $n$  in a box based on the smallest positive value of  $x$  satisfying  $x \equiv n \mod 10$ ) as follows:  $\{1,9\}, \{2,8\}, \{3,7\}, \{4,6\}, \{5\}, \{0\}$ . That is, we have 6 boxes.

Since we have 7 numbers, then some box has two numbers. That means those numbers either have last digits that sum to 0 modulo 10 (for example 2 and 8 or 5 and 5), or else those numbers have the same last digit so their difference is 0 modulo 10. Either way, we have a sum or difference that is 0 modulo 10, i.e. a multiple of 10.

# 8.6.4 Questions & Exercises

# Remind Yourself

Answering the following questions briefly, either out loud or in writing. These are all based on the section you just read, so if you can't recall a specific definition or concept or example, go back and reread that part. Making sure you can confidently answer these before moving on will help your understanding and memory!

(1) What are the two versions of the Pigeonhole Principle?  
(2) What proof technique did we use to prove the Pigeonhole Principle?

# Try It

Try answering the following short-answer questions. They require you to actually write something down, or describe something out loud (to a friend/classmate, perhaps). The goal is to get you to practice working with new concepts, definitions, and notation. They are meant to be easy, though; making sure you can work through them will help you!

(1) Suppose there are 5 professors in the math department. Every year, 2 are chosen to teach Concepts of Math. How many years can the department go without repeating the same selection of 2 professors? Prove this is optimal by exhibiting such a sequence of that length, as well as invoking the Pigeon-hole Principle to show that any longer sequence necessarily uses a pairing more than once.  
(2) Let  $n \in \mathbb{N}$  and consider the set  $[2n]$ . Suppose we have a set  $S \subseteq [2n]$  of size  $|S| = n + 1$ . Prove that there must be two elements  $x, y \in S$  that are relatively prime.  
(3) Suppose we have a square park with dimensions  $1\mathrm{km}\times 1\mathrm{km}$ . We want to build a golf course on the park, but we only have space for 5 holes. In particular, for safety reasons, we need to consider the distance between the locations of the actual cups (the holes in the ground).

Prove that no matter how we place 5 holes, there must exist two holes that are separated by a distance  $d$  that satisfies  $d \leq \frac{\sqrt{2}}{2}$  km.

(Note: We are allowed to place a hole on the boundary of the park.)

Next, prove that this bound is optimal; that is, exhibit a way to place 5

holes on the park grounds (again, the boundary is allowed) such that the distance between any two holes is greater than or equal to  $\frac{\sqrt{2}}{2} \mathrm{~km}$ .

# 8.7 Inclusion/Exclusion

# 8.7.1 Motivation

The Principle of Inclusion/Exclusion is a handy result that helps figure out how to remove sets from a large one and count the elements leftover. We have already seen this in action in a simple form. If we have  $A \subseteq U$ , and we want to find  $|U - A|$ , we can just count  $|U|$  and  $|A|$  and subtract them. This follows from the Rule of Sum, applied to the partition  $\{A, U - A\}$  of the set  $U$ .

What happens if we remove two sets from a larger one? What if they overlap somehow? Do we have to account for that? What if we remove three sets? Or four sets? Or  $n$  sets? Can we write an expression for the number of elements leftover that holds, in generality? Can we use it to solve counting problems?

Here are some expressions that describe what is going for "small cases". Suppose we have a universal set  $U$  and some subsets  $A_{1}, A_{2}, \ldots, A_{n} \subseteq U$ . We want to count the elements of  $U$  that are outside of all of the  $A_{i}$  sets. We can do this by writing:

$$
\left| U - A_{1} \right| = \left| U \right| - \left| A_{1} \right|
$$

$$
| U - (A_{1} \cup A) 2) | = | U | - | A_{1} | - | A_{2} | + | A_{1} \cap A_{2} |
$$

$$
\begin{array}{l} \left| U - \left(A_{1} \cup A_{2} \cup A_{3}\right) \right| = \left| U \right| - \left| A_{1} \right| - \left| A_{2} \right| - \left| A_{3} \right| \\ + \left| A_{1} \cap A_{2} \right| + \left| A_{1} \cap A_{3} \right| + \left| A_{2} \cap A_{3} \right| - \left| A_{1} \cap A_{2} \cap A_{3} \right| \\ \end{array}
$$

Do you see why these work? Try thinking of an element  $x \in U$  and considering how many of the  $A_i$  sets it belongs to. Where will this element get counted in the expressions on the leftand right-hand sides? Is it counted the appropriate number of times on both sides? Can you see how to generalize this idea?

It might help to think of these expressions as "guessing" at a correct count and then continually "fixing" to adjust for over/undercounting. For instance, we could derive the last expression above as follows:

Let's find  $|U - (A_1 \cup A_2 \cup A_3)|$ . Let's take the number of elements in  $U$  and remove the number of elements in the sets  $A_1, A_2, A_3$ .

Oh, shucks! What about the elements that belong to two of the sets. We have now removed those from our count too many times, so we should add back the number of elements that belong to the intersection of two sets.

Oh, shucks! What about the elements that belong to all three sets. We have now added those back in too many times, so we need to remove them again.

You might see now how to generalize these expressions, and prove them, for any number of sets. That is what we will do in the next section.

# 8.7.2 Statement and Proof

Theorem 8.7.1 (Inclusion/Exclusion). Suppose we have a universal set  $U$  and some subsets  $A_{1}, A_{2}, \ldots, A_{n} \subseteq U$ . Then,

$$
| U - (A_{1} \cup A_{2} \cup \dots \cup A_{n}) | = \sum_{S \subseteq [ n ]} (- 1)^{| S |} \left| \bigcap_{i \in S} A_{i} \right| \qquad w h e r e \quad \bigcap_{i \in \emptyset} A_{i} = U
$$

(Try writing out the above expression in the cases where  $n = 1$  and  $n = 2$  and  $n = 3$  to see why they're the same as the ones we wrote in the previous section.

To prove this theorem, we will apply a counting in two ways argument. Specifically, we will consider an element  $x \in U$  and argue that it is counted the correct number of times on both sides of the above equation.

Proof. Let  $x \in U$  be arbitrary and fixed. We'll consider two cases.

First, suppose  $x \notin A_i$  for every  $i \in [n]$ . Then the left-hand side counts  $x$  exactly once, since  $x$  is not an element of the union of the  $A_i$  sets. The right-hand side only counts  $x$  in the term where  $S = \varnothing$ , because  $x$  is not an element of any of the  $A_i$  sets, so it is not an element of any intersections thereof. Thus,  $x$  is counted exactly once on the right-hand side, as well.

Second, suppose  $x$  is an element of one (or more) of the  $A_{i}$  sets. This means  $x$  is not counted on the left-hand side. To help show that  $x$  is also counted zero times on the right-hand side, let's define  $B \subseteq [n]$  to be the set of indices  $i$  for which  $x \in A_{i}$ , i.e.  $\forall i \in B$ .  $x \in A_{i}$ . We have a few observations to make:

Consider the terms of the sum that will not count  $x$ . For any  $S \subseteq \mathbb{N}$ , if  $S \not\subseteq B$  then  $x \notin \bigcap_{i \in S} A_i$ . (This is because there is some  $j \in S$  such that  $j \notin B$ , but  $B$  is all of the indices for which  $x \in A_i$ .) This means  $x$  is counted 0 times in the terms of the sum for which  $S \not\subseteq B$ .

Next, by a result previously proven, we know that  $B$  has an equal number of subsets of odd size as it does of even size. For any such subset  $T \subseteq B$ , we know  $x \in \bigcap_{i \in T} A_i$ . Now, if  $|T|$  is even, that term will be positive, so  $x$  is counted once; if  $|T|$  is odd, that term will be negative, so  $x$  is removed from the count once. Since there are an equal number of each of these terms, we see that  $x$  is accounted for 0 times by these terms, as well.

Overall, we have shown that an arbitrary element is counted the same (and correct) number of times on both sides of the equation, in any case.  $\square$

Sometimes, it happens that all of the intersections of  $k$ -many of the  $A_{i}$  sets have the same size. This will be true of some of the examples we see in the next section. When that is the case, many of the terms in the expression above can be combined since they are identical. Specifically, rather than summing over subsets  $S \subseteq [n]$  to account for all possible intersections of the sets  $A_{i}$ , we can sum over the number of sets being intersected together, rather than which sets are intersected.

Corollary 8.7.2. Suppose we have a universal set  $U$ , and suppose we have some sets  $A_{1}, A_{2}, \ldots, A_{n}$  that are all subsets of  $U$ . Furthermore, suppose that the intersection of any  $k$  of the  $A_{i}$  sets has a fixed size—call it  $S(k)$ —independent of which sets are intersected. Then,

$$
| U - (A_{1} \cup A_{2} \cup \dots \cup A_{n}) | = \sum_{k = 0}^{n} (- 1)^{k} {\binom {n} {k}} S (k)
$$

Proof. This follows from the result of Theorem 8.7.1 by combining identical terms. Specifically, we know there are  $\binom{n}{k}$  sets  $S \subseteq [n]$  that satisfy  $|S| = k$ . By the assumption of this corollary, all such sets with  $|S| = k$  will yield

$$
\left| \bigcap_{i \in S} A_{i} \right| = S (k)
$$

Combining those terms together, and summing over the possible sizes of  $S$ , we obtain the above result.

This will be helpful in some examples we work through below!

# 8.7.3 Examples

# Example 8.7.3. Bridge hands:

Bridge deals out 13 cards per hand. How many such hands have at least one card from each suit?

Recall that with poker hands (i.e. 5 cards) this was easy! We just noticed the suit distribution must follow 1112, i.e. some suit appears twice and the others appear once each. (Look back at Example 8.3.6 for the details of this argument.)

With 13 cards, though, it's much harder to write down all of those cases, those partitions of 13 into nonzero terms: (1,1,1,10) and (1,1,2,9) and (1,2,3,7) and so on. There are lots of cases!

Let's use Inclusion/Exclusion to be more efficient.

Let  $U$  be the set of all 13 card hands from a standard deck of 52 cards.

Let  $A_H$  be the set of 13 card hands that don't have any Hearts.

Let  $A_S$  be the set of 13 card hands that don't have any Spades.

Let  $A_{C}$  be the set of 13 card hands that don't have any Clubs.

Let  $A_{D}$  be the set of 13 card hands that don't have any Diamonds.

Then we seek an expression for

$$
\circledast = \left| U - \left(A_{H} \cup A_{S} \cup A_{C} \cup A_{D}\right) \right|
$$

Accounting for all possible intersections, we have

$$
\begin{array}{l} \odot = | U | - | A_{H} | - | A_{S} | - | A_{C} | - | A_{D} | \\ + \left| A_{H} \cap A_{S} \right| + \left| A_{H} \cap A_{C} \right| + \left| A_{H} \cap A_{D} \right| \\ + \left| A_{S} \cap A_{C} \right| + \left| A_{S} \cap A_{D} \right| + \left| A_{C} \cap A_{D} \right| \\ - \left| A_{H} \cap A_{S} \cap A_{C} \right| - \left| A_{H} \cap A_{S} \cap A_{D} \right| \\ - \left| A_{S} \cap A_{C} \cap A_{D} \right| - \left| A_{H} \cap A_{D} \cap A_{C} \right| \\ + \left| A_{H} \cap A_{S} \cap A_{C} \cap A_{D} \right| \\ \end{array}
$$

Since there are 4 "bad sets", we need to consider all possible ways they can intersect. However, counting these intersections is actually quite convenient because the sizes of the intersection only depend on how many sets are intersected, not which ones they are.

Notice that  $|A_H| = |A_S| = |A_C| = |A_D| = \binom{39}{13}$ . To have a 13 card hand which avoids one set, we just have to select 13 cards from the other 39.

Likewise, notice that  $|A_H \cap A_S| = \binom{26}{13}$  because we need to avoid 2 suits. This holds for every intersection of two of these sets.

Likewise, notice that  $|A_H \cap A_S \cap A_D| = \binom{13}{13}$  because we need to avoid 3 suits, so we only have 13 cards to pick from (the 4th suit). This holds for every intersection of three of these sets.

Thus, we have

$$
\odot = \binom {5 2} {1 3} - \binom {4} {1} \binom {3 9} {1 3} + \binom {4} {2} \binom {2 6} {1 3} - \binom {4} {3} \binom {1 3} {1 3} + \binom {4} {4} \binom {0} {1 3}
$$

total such hands.

(Notice that the last term is 0; how can we have a 13 card hand with no suits represented in it?!)

One Lesson: Notice how we chose to define the sets  $U$  and  $A_{i}$  in this example. We wanted to count the number of hands with a certain property, so we defined sets of hands that do not have that property, and considered how to remove their counts from a total.

Example 8.7.4. Counting surjections: Count the number of functions  $f: [5] \to [3]$ . Count the number that are injections. Count the number that are surjections.

Let  $U$  be the set of all functions from [5] to [3].

We know  $|U| = 3^5$  because we have 3 choices of output for each of the 5 elements in the domain.

There are no such functions that are injective. If a function  $f: [5] \to A$  is injective, then  $|\operatorname{Im}_f([5])| = 5$ , but here, the codomain has size 3. Thus, this is not possible.

Now, let's count the surjections!

Let  $A_{1}$  be the set of all such functions with the property that  $1 \notin \operatorname{Im}_{f}([5])$ .

Let  $A_{2}$  be the set of all such functions with the property that  $2\notin \operatorname{Im}_{f}([5])$ .

Let  $A_{3}$  be the set of all such functions with the property that  $3 \notin \operatorname{Im}_{f}([5])$ .

Then we seek an expression for  $N = |U - (A_1 \cup A_2 \cup A_3)|$ . We have

$$
N = | U | - | A_{1} | - | A_{2} | - | A_{3} | + | A_{1} \cap A_{2} | + | A_{1} \cap A_{3} | + | A_{2} \cap A_{3} | - | A_{1} \cap A_{2} \cap A_{3} |
$$

Remembering that, generally, the number of functions  $f:[m] \to [n]$  is  $n^m$  ( $n$  choices of output for each of  $m$  inputs), we have

$$
N = 3^{5} - \binom {3} {1} 2^{5} + \binom {3} {2} 1^{5} - \binom {3} {3} 0^{5} = 3^{5} - 3 \cdot 2^{5} + 3 = 2 4 3 - 9 6 + 3 = 1 5 0
$$

Example 8.7.5. Find the number of natural numbers from 1 to 1000 that are neither perfect squares, cubes, nor fourth powers.

Let  $U = [1000]$ . For  $i \in \{2, 3, 4\}$ , let  $A_i$  be the set of elements of  $U$  that are perfect  $i$ -th powers of some natural number. That is, define

$$
A_{i} = \left\{x \in U \mid \exists b \in \mathbb {N}. x = b^{i} \right\}
$$

Then we seek the number  $M = |U - (A_{2} \cup A_{3} \cup A_{4})|$ .

Notice that  $|U| = 1000$ .

Notice that the largest square in  $U$  is  $31^2 = 961$  (since  $32^2 = 1024$ ). Thus,  $|A_2| = 31$ .

Notice that the largest cube in  $U$  is  $10^{3} = 1000$ . Thus,  $|A_{3}| = 10$ .

Notice that the largest fourth power in  $U$  is  $5^4 = 625$  (since  $6^4 = 1296$ ). Thus,  $|A_4| = 5$ .

Considering intersections, notice that, for instance,  $A_{2} \cap A_{3}$  is the set of sixth powers since  $\operatorname{LCM}(2, 3) = 6$ . (LCM is the Least Common Multiple.)

Notice that the largest sixth power in  $U$  is  $3^6 = 729$  (since  $4^6 = 4096$ ). Thus,  $|A_2 \cap A_3| = 3$ .

We already found the largest fourth power in  $U$  to be  $5^4$ , so  $|A_2 \cap A_4| = |A_4| = 5$ .

Notice that the largest 12th power in  $U$  is  $1^{12} = 1$  (since  $2^{12} = 4096$ ). Thus,  $|A_3 \cap A_4| = 1$ .

This also tells us that  $|A_{2} \cap A_{3} \cap A_{4}| = |A_{3} \cap A_{4}| = 1$ .

Putting this all together, we find

$$
N = 1 0 0 0 - 3 1 - 1 0 - 5 + 3 + 5 + 1 - 1 = 9 6 2
$$

# 8.7.4 Questions & Exercises

# Remind Yourself

Answering the following questions briefly, either out loud or in writing. These are all based on the section you just read, so if you can't recall a specific definition or concept or example, go back and reread that part. Making sure you can confidently answer these before moving on will help your understanding and memory!

(1) When is the Principle of Inclusion/Exclusion applicable?  
(2) What strategy did we use to prove the Principle of Inclusion/Exclusion?  
(3) Why did we require  $A_{i} \subseteq U$  for each  $i$ ? Do you think the result still holds if these conditions are not satisfied?

# Try It

Try answering the following short-answer questions. They require you to actually write something down, or describe something out loud (to a friend/classmate, perhaps). The goal is to get you to practice working with new concepts, definitions, and notation. They are meant to be easy, though; making sure you can work through them will help you!

(1) How many natural numbers less than 100 are not multiples of 2 or 5?  
(2) How many natural numbers less than 1000 are not perfect powers of 2 or 3 or 5?  
(3) How many lattice paths go from  $(0,0)$  to  $(10,10)$  without going through (3, 3)?  
(4) How many lattice paths go from  $(0,0)$  to  $(10,10)$  without going through either  $(3,3)$  or  $(6,8)$ ?  
(5) How many functions  $f:[6]\to [3]$  are surjections?

# 8.8 Summary

We have now developed several basic counting techniques and developed them into even more advanced techniques. We started by simply discussing the Rules of Sum and Product, which were based on results from the previous chapter about the cardinality of finite sets. We were able to use these to develop some fundamental counting objects and describe how to count them. This included the vastly useful binomial coefficients. We derived the formula for binomial coefficients for ourselves, implement a counting strategy. Then, we applied these principles to plenty of examples, to give ourselves practice with working through the nuances of counting arguments: sometimes there are many cases involved,

sometimes we have to be clever about applying the Rule of Product, sometimes we need to be worried about an over/undercount. On that note, we discussed how to take a proposed argument and demonstrate that it is incorrect.

The proof technique of counting in two ways is incredibly important, and you will see it appear in plenty of other mathematical areas. We saw some instructive examples—which were useful theorems in their own right—and have posed many problems of this kind in the exercises to give you sufficient practice. We used the counting in two ways technique to later prove some further results and techniques, including the Binomial Theorem, the formula for selections with repetition.

We briefly discussed some more advanced counting techniques, the Pigeon-hole Principle and Inclusion/Exclusion. These are considered to be more advanced partly because it can be difficult to see when and how to apply them. By working through some illustrative examples, we hope we have given you a better intuition for how these techniques can be useful, so that you will see when to use them in problem-solving.

# 8.9 Chapter Exercises

These problems incorporate all of the material covered in this chapter, as well as any previous material we've seen, and possibly some assumed mathematical knowledge. We don't expect you to work through all of these, of course, but the more you work on, the more you will learn! Remember that you can't truly learn mathematics without doing mathematics. Get your hands dirty working on a problem. Read a few statements and walk around thinking about them. Try to write a proof and show it to a friend, and see if they're convinced. Keep practicing your ability to take your thoughts and write them out in a clear, precise, and logical way. Write a proof and then edit it, to make it better. Most of all, just keep doing mathematics!

Short-answer problems, that only require an explanation or stated answer without a rigorous proof, have been marked with a  $\triangleright$ .

Particularly challenging problems have been marked with a  $\star$ .

Problem 8.9.1. In this problem, you will prove the Rule of Product (see Theorem 8.2.10).

Prove, by induction on  $n$ , that the Cartesian product of  $n$  finite sets has size equal to the product of the sizes of those sets.

Problem 8.9.2. Let  $n \in \mathbb{N}$  (with  $n \geq 3$ ) and let  $S$  be the set of all binary strings of length  $n$ .

Each of the following expressions is the size of some subset of  $S$ . For each one, identify such a subset and explain why it works.

For example, if I were presented with

$$
\binom {n} {3} + \binom {n} {4} + \binom {n} {5}
$$

I would say,

Let  $S_{1} \subseteq S$  be the set of all strings with either 3 or 4 or 5 positions that are 0s. We can partition this set into the set of strings with exactly  $k$  positions that are 0s, for each  $k = 3, 4, 5$ . In each case, we can find the size of that part by selecting  $k$  of the  $n$  total positions to be 0s, and fixing the rest to be 1s. By ROS, then, we find that  $|S_{1}|$  is the sum above.

(a)  $2^{n - 2}$  
(b)  $2^{n} - \binom{n}{n} - \binom{n}{n-1} - \binom{n}{n-2} - \binom{n}{n-3}$  
(c)  $\binom{n}{2}-\binom{n-1}{1}$  
(d)  $\sum_{k = 0}^{\lfloor n / 2\rfloor}\binom{n}{k}$

Problem 8.9.3. A student organization holds meetings every week, with one chosen leader and two assistants to run the meeting efficiently. If there are 14 weeks in the semester, how many students must be in the organization to guarantee that they can have a different set of leaders and assistants at every meeting?

Problem 8.9.4. Say we have 50 pieces of Halloween candy to distribute amongst 4 different children. How many ways can we do this? What if all of the pieces of candy are identical? What if there are 10 pieces each of 5 different kinds?

Problem 8.9.5. Let  $U$  be the set of all 5-card hands, as dealt from a standard deck of cards, that have exactly two Kings and exactly one Heart. Find  $|U|$ .

Problem 8.9.6. For each of the following conditions, consider drawing a 7-card hand from a standard deck of cards.

(a) How many 7 card hands are there?  
(b) How many 7 card hands have no cards ranked above 8? (Note:  $A$  is the highest rank.)  
(c) How many 7 card hands have exactly two Kings?  
(d) How many 7 card hands include contain exactly one pair? (That is, one pair and five other cards of different ranks.)

(e) How many 7 card hands have at least  $3 \text{♥} s$ ?

Problem 8.9.7. Find the number of ordered arrangements of 5 distinct digits from  $\{0,1,2,\ldots ,9\}$ . Then, find the number of such arrangements that do not place 5 and 6 adjacent to each other.

Problem 8.9.8. Let  $T_{5,4}$  be the set of all 5-tuples drawn from the set [4].

(For example,  $(1,4,4,1,2)\in T_{5,4}$ .)

(a) What is  $|T_{5,4}|$ ?  
(b) How many elements of  $T_{5,4}$  have no odd numbers?  
(c) How many elements of  $T_{5,4}$  have no repeated numbers?  
(d) How many elements of  $T_{5,4}$  have exactly 2 distinct numbers?

(For example,  $(1,2,2,1,2)$  should be counted but  $(1,1,1,1,1)$  should not, and neither should  $(1,2,3,3,3)$ .)

(e) How many elements of  $T_{5,4}$  have no adjacent identical numbers?

(For example,  $(1,3,1,3,4)$  should be counted but  $(2,3,1,1,3)$  should not, and neither should  $(1,1,1,4,3)$ .)

Problem 8.9.9. For each of the following properties, find the number of ways to roll 5 distinguishable dice so that the property holds. (Don't consider the combination of properties; each one is separate).

(a) No even numbers appear on the faces.  
(b) Exactly 2 even numbers appear on the faces.  
(c) The sum of all the faces is odd.  
(d) The numbers on the faces form a "full house". (That is, there are exactly three of one number and exactly two of another.)  
(e) The numbers on the faces form a "straight".

Problem 8.9.10. How many anagrams are there of the word MILLIMETER? How many such anagrams have the two Ms adjacent? How many such anagrams have the Ms non-adjacent?

Problem 8.9.11. How many natural numbers between 1 and 1000 (inclusive) have the property that none of the digits are even? How many have the property that no digits are repeated? How many have the property that the sum of the digits is even?

(Be careful: Remember that a string like 0011 is really the number 11.)

Problem 8.9.12. Consider drawing two cards in order from the top of a deck of cards. How many outcomes are such that the first card is an Ace and the second card is a Heart?

Problem 8.9.13. How many 15 card hands have at least one card from each rank?

Problem 8.9.14. Prove the Binomial Theorem (see Theorem 8.4.8) by induction on  $n$ .

Problem 8.9.15. Prove that

$$
\binom {n} {k} 2^{k} = \sum_{i = 0}^{k} \binom {n} {i} \binom {n - i} {k - i}
$$

Problem 8.9.16. Let  $a, b, k \in \mathbb{N}$  with  $a + b \geq k$ . Prove that

$$
\binom {a + b} {k} = \sum_{i = 0}^{k} \binom {a} {i} \binom {b} {k - i}
$$

Problem 8.9.17. Three men walk into the bathroom and find seven urinals in a row on the wall. In how many ways can the men arrange themselves so that they don't violate the "bro code"? (That is, they must make sure no two adjacent urinals are occupied.)

Problem 8.9.18. Let  $n \in \mathbb{N}$  be given. Prove the following identities by counting in two ways arguments.

(Hint: It's likely that you can use the same "story" or formulation in all parts; that is, try slightly modifying your argument from (a) to prove (b) and (c).)

(a)  $\sum_{i = 1}^{n}(i - 1) = \binom{n}{2}$  
(b)  $\sum_{i = 1}^{n}(i - 1)(n - i) = \binom{n}{3}$  
(c)  $\sum_{i=1}^{n}\binom{i-1}{2}\binom{n-i}{2}=\binom{n}{5}$

Problem 8.9.19. Prove that

$$
\sum_{i = 0}^{n} \left( \begin{array}{c} r + i \\ i \end{array} \right) = \left( \begin{array}{c} r + n + 1 \\ n \end{array} \right)
$$

by a counting in two ways argument.

Problem 8.9.20. Prove that

$$
\binom {n} {k} - \binom {n - 2} {k} = 2 \binom {n - 2} {k - 1} + \binom {n - 2} {k - 2}
$$

by a counting in two ways argument. Use the exact form given; do not simplify algebraically.

Problem 8.9.21. Prove that

$$
\binom {n} {k} - \binom {n - 2} {k} = \binom {n - 1} {k - 1} + \binom {n - 2} {k - 1}
$$

by a counting in two ways argument. Use the exact form given; do not simplify algebraically.

Problem 8.9.22. Prove that

$$
\binom {n} {k} - \binom {n - 3} {k} = \binom {n - 1} {k - 1} + \binom {n - 2} {k - 1} + \binom {n - 3} {k - 1}
$$

by a counting in two ways argument. Use the exact form given; do not simplify algebraically.

Problem 8.9.23. Prove that

$$
4^{n} = \sum_{k = 0}^{n} \binom {n} {k} 3^{k}
$$

by a counting in two ways argument.

Problem 8.9.24. Let  $p \in \mathbb{N}$  be prime. Let  $k \in \mathbb{N}$  be given with  $1 \leq k < p$ . Prove that  $\binom{p}{k}$  is divisible by  $p$ .

Problem 8.9.25. Let  $p \in \mathbb{N}$  be prime. Use the previous Problem 8.9.24 to prove that

$$
\forall x, y \in \mathbb {Z}. (x + y)^{p} \equiv x^{p} + y^{p} \mod p
$$

(Look back at Problem 6.7.22 where we investigated this before. You just proved it in generality!)

Problem 8.9.26. Let  $p \in \mathbb{N}$  be prime, and let  $a \in \mathbb{Z}$ . Use the result of Problem 8.9.24 and the Binomial Theorem to prove that

$$
a^{p} \equiv a \mod p
$$

This result is known as Fermat's Little Theorem.

Problem 8.9.27. Prove the Summation Identity (see Theorem 8.4.5) by a counting in two ways:  

1. Show that partitioning the set of lattice paths from  $(0,0)$  to  $(k + 1,n - k)$  based on where the first Rightwards step occurs.

Problem 8.9.28. In this problem, you will prove the following summation formula that you've proved by induction before!

$$
\forall n \in \mathbb {N}. \quad \sum_{k = 1}^{n} k^{3} = \left(\frac{n (n + 1)}{2}\right)^{2}
$$

(a) Let  $k \in \mathbb{N}$  be given. Prove the following equality by a counting in two ways argument:

$$
\forall k \in \mathbb {N}. \quad k^{3} = 6 \binom {k} {3} + 6 \binom {k} {2} + \binom {k} {1}
$$

(Hint: Consider counting words of length 3 from an alphabet of  $k$  letters.)

(b) Use the Summation Identity and the equality you just proved in (a) to prove the claim given above in the problem statement!

Bonus Can you generalize this method to find a formula for  $\sum k^4$ ?

Problem 8.9.29. Let  $n \in \mathbb{N}$  be given. How many lattice paths go from  $(0,0)$  to  $(3n,3n)$  without going through either of  $(n,n)$  or  $(2n,2n)$ ?

Problem 8.9.30. Let  $n \in \mathbb{N}$  be given. Suppose we have  $n$  CMU students and  $n$  Pitt students. (Assume, of course, that nobody attends both schools, so these two sets of  $n$  students are disjoint.)

(a) How many ways can we split these  $2n$  students into  $n$  pairs? (Note: There should be no ordering to the pairs, nor the people within the pairs.)  
(b) How many ways can we split these  $2n$  students into  $n$  pairs, where each pair must contain one CMU student and one Pitt student? (Again, there is no order amongst or within the pairs.)

Problem 8.9.31. Let  $n \in \mathbb{N}$ , and let  $S \subseteq \mathbb{N}$  be of size  $|S| = n + 1$ . Prove that  $\exists x, y \in S$  such that  $x \neq y$  and  $x - y$  is a multiple of  $n$ .

Problem 8.9.32. Consider the set [22]. Let  $S \subseteq [22]$  be given such that  $|S| = 7$ . Here, you will prove that there must exist two disjoint, non-empty subsets  $X, Y \subseteq S$  whose elements have the same sum.

1. How many non-empty subsets of  $S$  are there?  
2. Let  $T \subseteq S$  be given. What is the minimum possible value of the sum of the elements of  $T$ ? What is the maximum possible value?  
3. Use (a) and (b) to deduce that there are two sets  $X, Y \subseteq S$  whose elements have the same sum.  
4. Explain, further, that you can make  $X$  and  $Y$  be disjoint.

Problem 8.9.33. Consider an equilateral triangle with side length  $1\mathrm{cm}$ . Suppose 10 points have been placed inside the triangle (and not on the boundary). Prove that there must be two points separated by a distance  $d$  that is less than  $\frac{1}{3}$  cm.

Problem 8.9.34. Let  $n \in \mathbb{N}$  be given. Prove the following identity by a counting in two ways argument:

$$
\binom {2 n} {n} = \sum_{k = 0}^{n} \binom {n} {k}^{2}
$$

Problem 8.9.35. Let  $n \in \mathbb{N}$  be given. Consider the following identity:

$$
4^{n} = \sum_{k = 0}^{n} \binom {n} {k} 2^{n}
$$

Deduce it from the Binomial Theorem. Then, prove it by a counting in two ways argument.

Problem 8.9.36. Let  $n, k \in \mathbb{N}$  be given. Consider Equation  $\star$ :

$$
\sum_{i \in [ k ]} x_{i} = x_{1} + x_{2} + \dots + x_{k} = n
$$

In this problem, we will discuss solutions to  $\star$ , where a solution is an assignment of values for  $x_{1}, x_{2}, \ldots, x_{k}$  such that their sum is  $n$  and such that each one satisfies  $x_{i} \in \mathbb{N} \cup \{0\}$ .

(a) How many solutions to  $\star$  exist?  
(b) How many solutions to  $\star$  also satisfy  $x_{1}\geq 3?$  
(c) How many solutions to  $\star$  also satisfy  $\forall i\in [k].x_i\geq 2?$  
(d) How many solutions to  $\star$  also satisfy  $x_{1}\leq 4?$  
(e) Consider the following modification to  $\star$ :

$$
x_{1} + x_{2} + \dots + x_{k} \leq n
$$

How many solutions to this inequality exist? (Again, a solution requires  $x_{i} \in \mathbb{N} \cup \{0\}$ .)

Problem 8.9.37. Suppose we have 10 pirates who need to divvy up 100 pieces of gold.

Suppose Captains Redbeard and Blackbeard are among the 10 pirates.

(a) How many ways are there to divvy the gold so that Redbeard gets at least 5 pieces of gold but Blackbeard gets at most 5 pieces?  
(b) How many ways are there to divvy the gold so that Redbeard gets at least 10 pieces of gold but Blackbeard gets somewhere between 5 and 15 (inclusive) pieces of gold?  
(c) How many ways are there to divvy the gold so that Redbeard gets somewhere between 0 and 10 (inclusive) pieces of gold and Blackbeard gets somewhere between 10 and 20 (inclusive) pieces of gold?

(Hint: Use Inclusion/Exclusion.)

# 8.10 Lookahead

There isn't much to look ahead for, at this point! At least, there isn't anything else in this book. We hope this has only served to whet your appetite for mathematical knowledge and problem-solving. Think about where we started: we were doing nothing more than posing fun puzzles and trying to solve them by applying our current knowledge and logical techniques. In reality, that's all we are doing now, as well! It's just that we have developed so much mathematical

terminology and so many results and so many problem-solving skills that we are able to approach and discuss far more advanced problems. Did you think, when you started reading this book, that you would be solving problems like this? Do you feel like you have a better understanding, an appreciation, of what mathematicians work on and how they approach the world? We hope so! ©

We have also developed several essential skills that are applicable in life outside of mathematics, as well. It's likely that you won't encounter formal symbolic logic in your daily life, but you will certainly have to process complicated statements with conjunctions and disjunctions and conditionals. We do this on a daily basis, as human beings who converse with one another and convey complex thought processes. By working through some of the foundational aspects of formal logic, we are all better now at analyzing complicated statements and assessing their truth, as well as being able to write down or otherwise share our own thoughts.

Likewise, you might not face formal statements of combinatorial identities in your daily life, but our work with counting in two ways proofs will help your analytical thinking skills. We had to sometimes be creative about how to develop a "story" to describe a set of elements to be counted in two ways. This required some creativity and ingenuity, and exercising those brain muscles can only be helpful. Furthermore, the practice of reading a proposed "proof" and analyzing whether or not it is, in fact, an over/undercount has made us better at understanding and critiquing the arguments of others. Surely, this is something you do on a daily basis, but perhaps not in mathematical terms.

Overall, we have developed an ability to think in a mathematical way. We have learned: how to read and understand a problem; how to approach a problem from several angles, and be willing to pursue potential dead ends to further our understanding; how to identify common structures that underlie different problems and exploit these similarities with certain techniques; and ultimately, how to take everything we have figured out about a problem and formulate our ideas into a written, presentable argument to be read by others. This entire process will make us all not only better problem-solvers, but better communicators. In a rapidly-changing world where communication is more and more important (as it becomes easier and easier to connect to other people quickly), the ability to share our thoughts effectively, correctly, and clearly is an essential life skill.

But by all means, don't let this be the end of our mathematical journey! Go forth and prosper, and spread your knowledge and joy of mathematics. Work on these problems and more with other people. Seek out the areas of mathematics that inspire you. See if you can use these concepts to solve a real-world problem you're facing. Most of all, just get out there and do mathematics.

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
\mathbb {Q} = \left\{x \in \mathbb {R} \mid \exists a, b \in \mathbb {Z}. b \neq 0 \text{an d} \frac{a}{b} = x \right\}
$$

- The real numbers are denoted by  $\mathbb{R}$ . Every real number is either rational or irrational.  
- The empty set is the set that has no elements. We write it as  $\varnothing$  or  $\{\}$ .

# A.1.2 Set-Builder Notation

- If  $U$  is a set and  $P(x)$  is some property that either does or does not hold for any given  $x$ , then we can always define a new set by writing

$$
S = \{x \in U \mid P (x) \text{ho ld s} \}
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
S = T \text{if an do nl yi f} S \subseteq T \text{an d} T \subseteq S
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
S \cup T = \{x \in U \mid x \in S \text{or} x \in T \}
$$

It is the set of all elements that belong to at least one of the two sets,  $S$  and  $T$ .

- The intersection of two sets is defined by

$$
S \cap T = \{x \in U \mid x \in S \text{an d} x \in T \}
$$

It is the set of all elements that belong to both sets,  $S$  and  $T$ .

- The difference of two sets is defined by

$$
S - T = \{x \in U \mid x \in S \text{an d} x \notin T \}
$$

It is the set of all elements of  $S$  that are not elements of  $T$ .

- The complement of a set is defined by

$$
\overline {{S}} = \{x \in U \mid x \notin S \} = U - S
$$

It is the set of all elements of the universal set that are not elements of  $S$ .

- The Cartesian product of two sets is defined by

$$
S \times T = \{(x, y) \mid x \in S \text{an d} y \in T \}
$$

It is the set of all ordered pairs, where the first coordinate is an element of  $S$  and the second coordinate is an element of  $T$ .

# A.1.7 Indexed Set Operations

Suppose  $I$  is an index set and  $U$  is a universal set, and we have defined (for every  $i \in I$ ) some sets  $A_i \subseteq U$ .

- The indexed union of all of the  $A_{i}$  sets is defined by

$$
\bigcup_{i \in I} A_{i} = \left\{x \in U \mid \exists k \in I. x \in A_{k} \right\}
$$

It is the set of all elements  $x$  in the universal set such that  $x$  is an element of at least one of the indexed sets in the union.

- The indexed intersection of all of the  $A_{i}$  sets is defined by

$$
\bigcap_{i \in I} A_{i} = \left\{x \in U \mid \forall i \in I. x \in A_{i} \right\}
$$

It is the set of all elements  $x$  in the universal set such that  $x$  is an element of all of the indexed sets in the intersection.

# A.1.8 Partition

- Let  $S$  be a set. A partition of  $S$  is a collection of sets that are pairwise disjoint and whose union is  $S$ . That is, a partition is formed by an index set  $I$  and non-empty sets  $S_{i}$  (defined for every  $i \in I$ ) that satisfy:

$$
\begin{array}{l} - \forall i \in I. S_{i} \neq \emptyset \\ - \forall i \in I. S_{i} \subseteq S \\ - \forall i, j \in I. i \neq j \Rightarrow S_{i} \cap S_{j} = \varnothing \\ - \bigcup_{i \in I} S_{i} = S \\ \end{array}
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
[ x ]_{R} = \{y \in A \mid (x, y) \in R \}
$$

which is the set of all elements related to  $x$ .

- If  $R$  is an equivalence relation, then  $A / R$  is a modulo  $R$ ; it is the set of all equivalence classes:

$$
A / R = \left\{\left[ x \right]_{R} \mid x \in A \right\}
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
a + b \equiv r + s \mod n \qquad \text{an d} \qquad a \cdot b \equiv r \cdot s \mod n
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
\exists X \in \mathbb {Z}. \forall i \in [ r ]. X \equiv a_{i} \mod n_{i}
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
\operatorname{Im}_{f} (X) = \{b \in B \mid \exists a \in X, f (a) = b \}
$$

An equivalent way of writing this set is

$$
\operatorname{Im}_{f} (X) = \{f (a) \mid a \in X \}
$$

# A.5. FUNCTIONS

(Intuitively, this is the set of all codomain elements "hit" by elements of  $X$ .)

- Let  $f: A \to B$  be a function. Let  $Z \subseteq B$ . The pre-image of  $Z$  under the function  $f$  is

$$
\operatorname{Pr eI m}_{f} (Z) = \{a \in A \mid f (a) \in Z \}
$$

(Intuitively, this is the set of all "inputs" whose output "lands" in  $Z$ .)

Note:  $\operatorname{Im}_f(\varnothing) = \varnothing$  and  $\operatorname{Pre}\operatorname{Im}_f(\varnothing) = \varnothing$ .

# A.5.2 Jections

- Let  $f: A \to B$  be a function. If  $\operatorname{Im}_f(A) = B$ , then we say  $f$  is surjective, or it is a surjection.

The definition of image gives us this equivalent formulation of surjectivity:

$$
f \text{is} \quad \Longleftrightarrow \forall b \in B. \exists a \in A. f (a) = b
$$

(Intuitively,  $f$  is surjective when all of the codomain elements are "hit" by the function.)

- Let  $f: A \to B$  be a function. If  $f$  has the property that

$$
\forall a_{1}, a_{2} \in A. a_{1} \neq a_{2} \Rightarrow f (a_{1}) \neq f (a_{2})
$$

then we say  $f$  is injective, or it is an injection.

The contrapositive of this conditional statement yields an equivalent formulation of injectivity:

$$
\forall a_{1}, a_{2} \in A. f (a_{1}) = f (a_{2}) \Rightarrow a_{1} = a_{2}
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
| A | = \sum_{i = 1}^{n} | S_{i} | = | S_{1} | + | S_{2} | + \dots + | S_{n} |
$$

- **Rule Of Product:** Suppose we have a process that is completed in  $n$  steps. Suppose that step  $i$  (where  $1 \leq i \leq n$ ) can be completed in  $w_i$  ways, independent of the choices made in the previous step. Then the number of outcomes of this process is

$$
\prod_{i = 1}^{n} w_{i} = w_{1} \cdot w_{2} \dots w_{n}
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
\left| U - A_{1} \right| = \left| U \right| - \left| A_{1} \right|
$$

$$
\left| U - \left(A_{1} \cup A_{2}\right) \right| = \left| U \right| - \left| A_{1} \right| - \left| A_{2} \right| + \left| A_{1} \cap A_{2} \right|
$$

$$
\begin{array}{l} | U - \left(A_{1} \cup A_{2} \cup A_{3}\right) | = | U | - | A_{1} | - | A_{2} | - | A_{3} | \\ + \left| A_{1} \cap A_{2} \right| + \left| A_{1} \cap A_{3} \right| + \left| A_{2} \cap A_{3} \right| \\ - \left| A_{1} \cap A_{2} \cap A_{3} \right| \\ \end{array}
$$

and so on.

In general, for  $n$  many sets, we have

$$
| U - (A_{1} \cup A_{2} \cup \dots \cup A_{n}) | = \sum_{S \subseteq [ n ]} (- 1)^{| S |} \left| \bigcap_{i \in S} A_{i} \right| \quad \text{wh er e} \quad \bigcap_{i \in \emptyset} A_{i} = U
$$

In the (convenient) case where the size of the intersection of  $k$ -many sets only depends on that value  $k$  (and not which sets we are intersecting), then we can write

$$
| U - (A_{1} \cup A_{2} \cup \dots \cup A_{n}) | = \sum_{k = 0}^{n} (- 1)^{k} {\binom {n} {k}} | S_{1} \cap S_{2} \cap \dots \cap S_{k} |
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