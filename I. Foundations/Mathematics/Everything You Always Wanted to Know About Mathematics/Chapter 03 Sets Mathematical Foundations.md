---
title: Chapter 03 Sets Mathematical Foundations
parent_directory: Everything You Always Wanted to Know About Mathematics
formatted: 2025-12-21 12:00:00 PM
formatter_model: grok-code-fast-1
cli-tool: opencode
primary_tags:
  - set theory
  - mathematical foundations
  - set operations
  - mathematical induction
secondary_tags:
  - set builder notation
  - cartesian product
  - power set
  - equivalence relations
  - set cardinality
  - axiom of choice
cssclasses: academia
---

# Chapter 03 Sets Mathematical Foundations

# Sets: Mathematical Foundations

# 3.1 Introduction

It's now time for sets education! This might seem like a weird jump to make, after the last chapter. You'll have to trust us when we say that this is actually quite natural and, ultimately, essential. Everything we do in mathematics is built upon the foundation of sets, so we better get started talking about them and getting used to them.

# 3.1.1 Objectives

The following short sections in this introduction will show you how this chapter fits into the scheme of the book. They will describe how our previous work will be helpful, they will motivate why we would care to investigate the topics that appear in this chapter, and they will tell you our goals and what you should keep in mind while reading along to achieve those goals. Right now, we will summarize the main objectives of this chapter for you via a series of statements. These describe the skills and knowledge you should have gained by the conclusion of this chapter. The following sections will reiterate these ideas in more detail, but this will provide you with a brief list for future reference. When you finish working through this chapter, return to this list and see if you understand all of these objectives. Do you see why we outlined them here as being important? Can you define all the terminology we use? Can you apply the techniques we describe?

By the end of this chapter, you should be able to …

- Define what a set is, and identify several common examples.  
- Use proper notation to define a set and refer to its elements.
- Define and describe several ways to operate on sets; i.e. identify the ways to take two or more sets and create new sets from them.  
- Describe how two sets might be compared, as well as apply a proper technique to prove such claims.  
- Explain how the natural numbers are related to sets, and relate this to mathematical induction.

# 3.1.2 Segue from previous chapter

We are building towards a formal statement of mathematical induction as a theorem, which we will then prove. To get there, we need to have some fundamental objects to work with and talk about, logically. Sets are those objects! Historically speaking, mathematics was placed on the set theory foundation relatively recently, around the turn of the 20th century. Until then, mathematicians tended to "wave their hands" a bit about what was really going on underneath their work; they made a lot of "intuitive" assumptions and hadn't yet tried to rigorously and axiomatically describe everything they did. After the work of the mathematician Georg Cantor showed everyone some surprising and counter-intuitive results that were perfectly correct and consistent with our assumptions … well, we realized that we better decide what we've been talking about all along. This is not meant to discredit the work of mathematicians before 1900, of course! We just mean that they were playing a game all along where they hadn't really agreed on a set of rules yet. That's what the axioms of set theory are.

# 3.1.3 Motivation

We are, of course, motivated by our ongoing desire to learn about proofs, discover what they are and how they work, and, in particular, rigorize mathematical induction. More generally, though, we are interested in learning about what mathematicians really do, and we are sure that any mathematician in the world can tell you how important sets are in their work. They might do so begrudgingly, and say that they themselves could never work in pure set theory, but we doubt you'll find anyone who will deny the importance of sets.

Everything we do later on will involve making some claim about a set of objects; that is, we will attempt to say (and subsequently prove) that some fact is True about some particular objects. The way we specify those objects involves sets. The way in which we express such facts will involve mathematical logic, and we will get to that soon enough. For now, we need to learn how to express many types of mathematical objects in the first place, before we can even make claims about them.

# 3.1.4 Goals andWarnings for the Reader

This chapter will likely involve handling some mathematical ideas that are new to you, as opposed to the previous chapters where we focused on puzzles that only relied on some knowledge of numbers and algebra and arithmetic and critical thinking. These new ideas will require careful reading and thinking. As we introduce these concepts and results, we expect you to read through them carefully and do some thinking on the side. Mathematical exposition requires more of the reader than, say, a newspaper article; it expects an engaged reader, one who will think carefully about every sentence and sometimes have to pause for a few minutes to ensure full understanding of what has been said so far. Keep this in mind as you read on: reading mathematics can be difficult, but this is to be expected! Don't let it be discouraging; just think of every sentence as a single jigsaw piece in a larger puzzle to be solved.

In particular, don't be surprised if this chapter takes as long (if not longer) to read through (and work through in class) as the previous two chapters combined! The most baffling part of this, as we have observed over the years, is in the notation of sets. This is likely the first time in your mathematical careers where you are expected to be as precise and rigorous as possible with your writing. It is no longer okay to just "have the right idea" in your written work; we really care that you say exactly what you meant to say, and nothing else. As you read what we have written, ask yourself, "Why does that make sense, as opposed to … something else?" After you have written down an answer to a question or homework problem, read it again and ask yourself, "Does this actually make sense? Does it say what I meant to say, what was in my head? Is someone else guaranteed to read it in the same way I wrote it?"

Also, this chapter will involve some more abstract thinking than your typical mathematics course. This might be a shock for you, or maybe not. Either way, this is certainly not material that you can just skim through and expect to pick up on first glance. Now, more than ever, you should take the time and effort to internalize this material. Read some pages and then go think about the material while you eat dinner or shower or play basketball. Try to find examples in real life. Talk with your friends about sets. This may sound silly now but, ultimately, it will help you. Trust us.

# 3.2 The Idea of a "Set"

# A "Collection of Objects" with a Common Property

The intuitive notion of a set is probably not entirely new to you. If you're a baseball card collector, having a "complete set" means owning every single card from a particular printing run by a card manufacturer. If you play board games with friends, you agree on a "set of rules" before playing so there are no unresolved disputes later on. If you performed a laboratory experiment in biology or chemistry or physics class, you collect information into a "data set" and analyze those results to test a hypothesis.

Those are three different situations that each refer to the word set, so what is it about that word that relates those contexts and gives it a proper meaning? Essentially, a set refers to a collection of objects of some kind that are grouped together on the basis of having some common property. In the first example, a copy of every baseball card produced by Topp's in 1995 would belong to that particular set. In the second example, any agreed-upon convention would belong to your set of rules. In the third example, any data point gathered in your experiment would belong to your data set. In each case, there is a common property that lets us associate particular objects with each other and refer to them as one set.

# Sets in Mathematics

Sets are very common, popular, useful and fundamental in mathematics. Because mathematicians work with abstract objects and relationships between those objects, it can be quite difficult to describe exactly what one is thinking about without being able to refer to sets of mathematical objects. We have, in fact, already done so!

For instance, when investigating polynomials and the quadratic formula, we mentioned that a quadratic polynomial  $p(x) = ax^2 + bx + c$  with a negative discriminant (when  $\frac{b^2}{4a} - c < 0$ ) will have no roots in the set of real numbers. What did we mean? Did you understand that sentence? We were trying to convey the idea that no matter what real number  $x$  we choose from among the collection of all real numbers, it would be guaranteed that  $p(x) \neq 0$ . But what exactly is the set of real numbers? How is it defined? How can we be so sure it even exists? These are actually rather difficult questions to answer, and attempting to do so would take us far off course into the world of set theory.

In the language of mathematics, we aim to be precise and unambiguous with our sentences and statements, and we seek to establish truths based on certain fundamental assumptions. We need to make those assumptions as a starting point, or else we would have nothing to base our truths upon. These assumptions, that everyone agrees to be part of the "set of rules" before "playing the game" of mathematics, are known as axioms.

Perhaps, if you have studied some geometry or read about the Greek mathematician Euclid and his treatise, the Elements, then you have heard the word "axiom" before. All of the results of basic geometry that Euclid proved were founded upon some basic assumptions: that any two points can be joined by a line segment, that a circle with a given center point and radius must exist, that non-parallel lines intersect, and so on. These statements are simply agreed upon to be True at the outset.

Another place we find axioms is in the branch of mathematics known as set theory. The axioms of this branch place all of the results involving sets on firm foundations, and using those axioms and results derived from them, we can continue to discover new truths in the mathematical universe. Investigating these axioms and their consequences is better suited for a course devoted to set theory, though, and we will take many of the consequences of the set theoretic

axioms for granted without rigorously proving them. This is not because such proofs are impossible, but merely because they would take too much time and space in this book to accomplish.

What we will do is provide a definition of "set" that is satisfactory for the contexts in which we will be using sets in this book. We will also define some basic properties of sets, share some illustrative examples, and discuss different operations we can perform on sets to create new ones.

# 3.3 Definition and Examples

# 3.3.1 Definition of "Set"

Let's start with a definition. As we started to explain above, we often think of sets as being characterized by the objects that are grouped together into that set and the property that makes that grouping make sense. The following definition attempts to make that notion as precise as we possibly can, while also introducing some relevant notation and terminology.

Definition 3.3.1. A set is a collection of all objects that have a common, well-defined property. The objects contained in a set are called elements of the set. The mathematical symbol " $\in$ " represents the phrase "is an element of" (and " $\notin$ " represents "is not an element of").

# 3.3.2 Examples

Let's dive right in with some specific examples of sets (and non-sets, even) to illustrate this definition. It is common in mathematics to use capital letters to refer to sets and lowercase letters to refer to elements of sets, and we will frequently follow this convention (but not always). To define or describe a set, we need to identify that common, well-defined property that associates the elements of the set with each other. For instance, we could define  $B$  to be the set of all teams in Major League Baseball. Is this a well-defined property? If we present you with an object, is there a definite Yes/No answer to the question of "Does this object have this defining property?" Yes, this is the case here, so this is a property that characterizes a set. (To avoid confusion for readers in the future, let us be more specific and say  $B$  refers to MLB teams from the 2012 season.) In the language of mathematics, we would write

$$
B = \{\text{Ma jo rL ea gu eB as eb al lt ea ms fr om th e2 01 2s ea so n} \}
$$

The "curly braces"—{ and }—indicate that the description between them will identify a set, and the text inside is a description of the objects and their common, well-defined property. It now makes sense to say Pittsburgh Pirates  $\in$ $B$  and Pittsburgh Penguins  $\notin$ $B$ .

Common ways to read the mathematical symbol  $\in$  in English are "is an element of" or "is a member of" or "belongs to" or "is in". We will mostly

use "is an element of" because it is the least ambiguous of them, and uses the mathematical term element appropriately. Any of these other, equivalent, phrases may be used, depending on the context, but are less preferable. (In particular, "is in" can be confused with other set relationships, so we will avoid it entirely, and encourage you to do the same.)

We've also already seen some commonly-used sets of numbers. You know what they are from previous work with these numbers, but you might not usually think of them as sets, which is what they are!

$$
\begin{array}{l} \mathbb{N} = \{\text{naturalnumbers}\} = \{1, 2, 3, \dots \} \\ \mathbb{Z} = \{\text{integers}\} = \{\dots , - 2, - 1, 0, 1, 2, \dots \} \\ \mathbb{Q} = \{\text{rationalnumbers}\} \\ = \{\text{numbersoftheform} \frac{a}{b}, \text{where} a, b \in \mathbb{Z} \text{and} b \neq 0 \} \\ \mathbb{R} = \{\text{realnumbers}\} \\ \end{array}
$$

Think about how the second definition of  $\mathbb{Q}$  above makes sense. We will see, quite soon, a more condensed way to write out a phrase like "numbers of the form … blah blah … with the additional information that … blah blah". Also, notice that we can't really define  $\mathbb{R}$  except to just say they're the real numbers.

How do you even define what a real number is? Have you ever tried?

# 3.3.3 How To Define a Set

Another way of defining or describing a set is simply listing all of its elements. This is convenient when the number of elements in the set is small. For instance, the following definitions of the set  $V$  are all equivalent:

$$
\begin{array}{l} V = \{\mathrm{A}, \mathrm{E}, \mathrm{I}, \mathrm{O}, \mathrm{U} \} \\ V = \{\text{vo we ls in th eE ng li sh la ng ua ge} \} \\ V = \{\mathrm{U}, \mathrm{E}, \mathrm{I}, \mathrm{A}, \mathrm{O} \} \\ \end{array}
$$

By "equivalent", we mean that each line above defines the same set  $V$ , using different terms. (Note: we have adopted the convention that  $y$  is a consonant, so  $y \notin V$ .) The common, well-defined property that associated the objects A, E, I, O, and U is the fact that they are all vowels (exhibited in the second definition) and since there are only five such objects, it is simple and convenient to list them all (as in the first definition).

# Order and Repetition Don't Matter

Why do you think the third definition is the same as the others? It refers to the same collection of objects, and any set is completely characterized by its elements, so the order in which we write the elements does not matter. Is  $\mathrm{U} \in V$ ? The answer to this question is "Yes", regardless of whether  $\mathrm{U}$  is written first or last in the list of elements.

Not only does the order of elements not matter within a set, the repetition of elements does not matter! That is, the set  $A = \{a, a, a\}$  and the set  $A = \{a\}$  are exactly the same. Again, remember that a set is completely characterized by its elements; we only care about what is "in" a set. (We will mention this again in Section 3.4.4, when we talk about the "bag analogy" for sets.) Writing  $A = \{a, a, a\}$  is just a triply-redundant way of saying  $a \in A$  and that only  $a$  is an element of  $A$ . Thus,  $A = \{a\}$  is the most concise way of stating the same information.

# The Common Property Might Be Being an Element of That Set

Now, still following the idea that we can define a set by writing all of the elements, consider the following definition of a set  $A$ :

$$
A = \{2, 7, 1 2, 8 8 8 \}
$$

Surely, this is a set because we just defined it by listing its elements. What is the common, well-defined property that associates its elements, though? With the set  $V$  of vowels, we could list the elements and provide a linguistic definition, but for this set  $A$ , it seems as though we are relegated to listing the elements without knowing a way of describing their common property. Mathematically speaking, though, a common property uniting 2,7,12,888 is that they are all elements of this set  $A!$ . In the mathematical universe, we have a license for freedom of abstract thought, and merely by discussing this set  $A$  and its elements, we have given them that common property. Does this seem satisfactory to you? Can you come up with another common, well-defined property that would yield exactly the elements of  $A$ ? (Hint: identify a polynomial  $p(x)$  whose roots are exactly 2,7,12, and 888.) If the elements of a set have more than one property that associates them together, do you think it matters which property we have in mind when referring to the set? And what do you think about the set  $S := \{2,7,$  M, Boston Red Sox\}? Could there possibly be a common property other than the fact that we have listed them here?

# Ellipses Are Sometimes Okay, But Informal

Sometimes, when there is no confusion about the set in question, or it has been defined in another way and we wish to list a few elements as illustrative examples, then it is convenient to use ellipses to condense the listing of elements of a set. For instance, we might write

$$
E = \{\text{ev en na tu ra ln um be rs} \} = \{2, 4, 6, 8, 1 0, \dots \}
$$

This set is infinitely large, in fact, so we could not even list all of its elements if we tried, but it is clear enough from the first few elements listed that we are referring to even numbers, especially because we have already referred to  $E$  as "the set of even natural numbers". However, we cannot stress enough that this is not a precise definition of the set in question. It suffices in an informal context, but it is not mathematically rigorous, and this will become clear as we discuss the following proper way of defining sets.

# Set-Builder Notation

The best way to define or describing a set is to identify its elements as particular objects of another set that have a specific property. For instance, if we wished to refer to the set  $S$  of all natural numbers between 1 and 100 (inclusive), we could list all of those elements, but this requires a lot of unnecessary writing. We could also use the ellipsis notation  $S = \{1,2,3,\ldots ,100\}$  but, again, this is not precise without already having a formal definition of  $S$ . (Someone might misinterpret the ellipses in a different way.) It is much more precise and concise to write

$$
S = \{x \in \mathbb {N} \mid 1 \leq x \leq 1 0 0 \}
$$

We read this as "  $S$  is the set of all objects  $x$  in the set  $\mathbb{N}$  of natural numbers such that  $1\leq x\leq 100$ ".

The bar symbol | is read as "such that" and indicates that the information to the left tells us what "larger set" the objects come from, while the information to the right tells us the specific property that those objects should have.

(Caution: do not use | in other contexts to mean "such that". This is only acceptable in the context of defining sets. It is just used as a place-holder to separate the left side—the set we use to draw elements—from the right side—a description of the property those elements should have.)

This is an example of the very popular and useful set-builder notation. We call it this because we are building a set by drawing elements from a "larger" set of possibilities, and only including those that have a particular property. To do this, we need to tell the reader (1) what the larger set is, and (2) what the common property is. Let's illustrate this idea with a few examples:

$$
\begin{array}{l} S = \{x \in \mathbb {N} \mid 1 \leq x \leq 1 0 0 \} = \{1, 2, 3, \dots , 1 0 0 \} \\ T = \{z \in \mathbb {Z} \mid \text{we ca nf in ds om e} k \in \mathbb {Z} \text{su ch th at} z = 2 k \} \\ = \{\dots , - 4, - 2, 0, 2, 4, \dots \} \\ \end{array}
$$

$$
\begin{array}{l} U = \left\{x \in \mathbb{R} \mid x^{2} - 2 = 0 \right\} = \left\{- \sqrt{2}, \sqrt{2} \right\} \\ V = \left\{x \in \mathbb{N} \mid x^{2} - 2 = 0 \right\} = \{\quad \} \\ \end{array}
$$

The last two examples show how the context is extremely important. The same common property (satisfying  $x^{2} - 2 = 0$ ) can be satisfied by a different set of elements when we change the larger set from which we draw elements. Two real numbers satisfy that property, but no natural numbers satisfy it! Do any rational numbers satisfy that property? What do you think?

This is why it is absolutely essential to specify the larger set. A definition like " $U = \{x \mid x^2 - 2 = 0\}$  is meaningless because it is ambiguous and could yield completely different interpretations.

# Reading Notation Aloud

We are really learning a new language here, and these are some of the basic words and rules of grammar. We'll need some practice translating these sen

tences into English (in our heads and out loud) and vice-versa. For example, we can say the definition for  $S$  above as any of the following, reasonably:

$S$  is the set of all natural numbers  $x$  such that  $x$  is between 1 and 100, inclusive.

$S$  is the set of all natural numbers between 1 and 100, inclusive.

$S$  is the set of all natural numbers  $x$  that satisfy the inequality  $1 \leq x \leq 100$ .

$S$  is the set of natural numbers  $x$  with the property that  $1 \leq x \leq 100$ .

Notice that all of them identified the larger set and the common property; the only differences between them are linguistic/grammatical, and they do not alter the mathematical meanings.

Try to write similar sentences for the other definitions. Try getting a verbal definition of a set from a friend and writing down what they said in mathematical symbols.

Consider a definition of the rational numbers  $\mathbb{Q}$  that we saw before, and notice that we can rewrite it as:

$$
\begin{array}{l} \mathbb{Q} = \left\{\frac{a}{b} , \text{where} a, b \in \mathbb{Z} \text{and} b \neq 0 \right\} \\ = \left\{x \in \mathbb{R} \mid \text{wecanfind} a, b \in \mathbb{Z} \text{suchthat} \frac{a}{b} = x \text{and} b \neq 0 \right\} \\ \end{array}
$$

Notice the subtle difference between the two definitions. The upper one tells us that all rational numbers are of the form  $\frac{a}{b}$ , and then tells us the particular assumptions of  $a$  and  $b$  that must be satisfied. The lower one tells us that all rational numbers are real numbers with a particular property, namely that we can express that real number as a ratio of integers. We strongly prefer the lower definition, because it tells us more information.

In general, if  $P(x)$  represents a sentence (involving English and/or mathematical language) that describes a specific, well-defined property, and  $X$  is a given set, then the notation

$$
S = \{x \in X \mid P (x) \}
$$

is read as

"  $S$  is the set of all elements  $x$  of the set  $X$  such that the property  $P(x)$  is true".

In the notation  $P(x)$ , the letter  $x$  represents a variable object, and depending on the particular object we use as  $x$ , the property  $P(x)$  may hold (i.e.  $P(x)$  is true) or may fail (i.e.  $P(x)$  is false). If the property holds, then we include  $x$  in  $S$  (so  $x \in S$ ), and if it fails, we do not include  $x$  in  $S$  (so  $x \notin S$ ).

Returning to our example of the set  $E$  of even natural numbers, it is more precise to write

$$
\begin{array}{l} E = \{\mathrm{ev en na tu ra ln um be rs} \} \\ = \{x \in \mathbb {N} \mid \text{th er ei sa na tu ra ln um be r} n \text{su ch th at} x = 2 n \} \\ \end{array}
$$

Notice that there are two "layers" of properties here. A natural number is included in our set  $E$  if we can find another natural number  $n$  with the additional property that  $x = 2n$ . Try to write down a similar definition for the set of odd numbers, or the set of perfect squares. What about the set of primes? The set of palindromic numbers? The set of perfect numbers? Can you write definitions for these sets using set-builder notation?

# 3.3.4 The Empty Set

What if no elements satisfy a property  $P(x)$ ? What happens then? For instance, consider the definition

$$
S = \left\{x \in \mathbb{N} \mid x^{2} - 2 = 0 \right\}
$$

We know that the number  $x$  we are "looking for" with that property is  $\sqrt{2}$  (and  $-\sqrt{2}$ , too) but  $\sqrt{2} \notin \mathbb{N}$ . Thus, no matter what element of  $\mathbb{N}$  we let  $x$  represent, the property  $P(x)$  given by  $"x^2 - 2 = 0"$  actually fails. Thus, there are no elements of this set. Is this really a set?

Remember, a set is completely characterized by its elements, and a set having no elements, such as this one, is characterized by that fact. If we attempted to list its elements, we would end up writing  $\{\}$ . This set is so special, in fact, that we give it a name and symbol:

Definition 3.3.2. The empty set is the set which has no elements. It is denoted by the symbol  $\varnothing$ .

There are many ways to define the empty set using set-builder notation. (And yes, we do mean the empty set; there is only one set with no elements!) We saw one example above, and we're sure you can come up with many others. Consider for example, the following sets:

$$
\begin{array}{l} \left\{a \in \mathbb{N} \mid a <   0 \right\} \\ \left\{r \in \mathbb{R} \mid r^{2} <   0 \right\} \\ \{q \in \mathbb{Q} \mid q^{2} \notin \mathbb{Q} \} \\ \end{array}
$$

Do you see why these all define the same set, the one with no elements?

# Context Matters

We should also note again the significance of specifying the larger set  $X$  from which we draw our variable element  $x$  in a set-builder definition like the one above. For instance, consider the following two sets:

$$
\begin{array}{l} S_{1} = \{x \in \mathbb{N} \mid | x | = 5 \} = \{5 \} \\ S_{2} = \{x \in \mathbb{R} \mid | x | = 5 \} = \{- 5, 5 \} \\ \end{array}
$$

(Note: It is also quite common to index sets with the subscript notation you see above, allowing us to use the same letter many times.)

This specification is clearly important, in this case, because it yields two entirely different sets! For this reason, we must be precise and clear when defining a set in this way. A definition like  $S = \{x \mid |x| = 5\}$  should be regarded as ambiguous and undesirable, since it leads to issues like the one above.

# 3.3.5 Russell's Paradox

Perhaps it seems like we are picking nits here, but the reasoning behind our vehemence is rooted in some fundamental ideas of set theory. We wish to avoid some complex issues and paradoxes that might arise without this policy in place. There is a particularly famous example of a paradox involving sets that illustrates why we have the requirement described in the above paragraph, namely that we must specify a larger set when we use set-builder notation. This example is known as Russell's Paradox (after the British mathematician Bertrand Russell), and we will present and discuss it in this section.

# Sets Whose Elements Are Sets

First, we should point out that this discussion will introduce the notion that sets can also be elements of other sets. This may seem like a strange and far-fetchedly abstract idea right now, but it is a fundamental concept in mathematics.

For a concrete example, think back to our set  $B$  of all Major League Baseball Teams. We could also regard each team as a set, where its elements are the players on the team. Thus, it would make sense to say

$$
\mathrm{De re kJ et er} \in \mathrm{Ne wY or kY an ke es} \in B
$$

since Derek Jeter is an element of the set New York Yankees, which is itself an element of the set  $B$ . (Notice, however, that Derek Jeter  $\notin B$ . The relationship signified by " $\in$  " is not transitive. We will hold off on defining this term until much later. For now, we will point out that the relationship signified by " $\leq$  " on the set of real numbers is transitive. If we know  $x \leq y \leq z$ , then we can deduce  $x \leq z$ . This is not the case with the " $\in$  " relationship, though.)

Another example is  $S = \{1, 2, 3, \{10\}, \emptyset\}$ . Yes, the empty set itself can be an element of another set, as can the set  $\{10\}$ . Why couldn't they? As a thought exercise, we suggest thinking about the difference between  $\emptyset$ ,  $\{\emptyset\}$ ,  $\{\{\emptyset\}\}$ , and so on. Why are they different sets?

One final example involves the natural numbers  $\mathbb{N}$ . Let's use  $\mathbb{O}$  and  $\mathbb{E}$  to represent the odd and even natural numbers, respectively. What, then, is the set  $S = \{\mathbb{O},\mathbb{E}\}$ , and how does it differ, if at all, from  $\mathbb{N}$ ? This is a subtle question, so think about it carefully.

# The Paradoxical "Set"

Spend some time on the side thinking about this notion of sets whose elements are sets. For now, though, let us forge ahead with our explanation of Russell's Paradox. Consider the following definition of a "set". We say "set" because it

is actually not a properly-defined set, but it remains to be seen exactly why this is the case. When it becomes clear this is not a set, this will be an argument for requiring the specification of a larger set to draw from when we use set-builder notation; this is because the definition below does not specify a larger set. Here is that definition:

$$
\mathcal {R} = \{x \mid x \notin x \}
$$

That's it! Is this a set? What are the elements of  $\mathcal{R}$ ? Think about what the definition above says: the elements of  $\mathcal{R}$  are sets that also happen to not have themselves as elements. Can you identify any elements of  $\mathcal{R}$ ? Can you identify any objects that are not elements of  $\mathcal{R}$ ?

The first question is far easier to answer: any of the sets we have discussed so far would be elements of  $\mathcal{R}$ . For instance, the empty set  $\varnothing$  contains no elements, so it certainly doesn't have itself as an element. Thus,  $\varnothing \in \mathcal{R}$ . Also, notice that  $\mathbb{N} \notin \mathbb{N}$  (because the set of natural numbers is not a natural number, itself) and thus  $\mathbb{N} \in \mathcal{R}$ .

Identifying objects that are not elements of  $\mathcal{R}$  is a very tricky matter, and we will help you by asking the following question: Is  $\mathcal{R}$  an element of itself? Is it true or false that  $\mathcal{R} \in \mathcal{R}$ ? Think about this carefully before reading on. We will walk you through the appropriate considerations.

- Suppose  $\mathcal{R} \in \mathcal{R}$  is True.

The defining property of  $\mathcal{R}$  tells us that any of its elements is a set that does not have itself as an element. Thus, we can deduce that  $\mathcal{R} \notin \mathcal{R}$ .

Wait a minute! Knowing that  $\mathcal{R} \in \mathcal{R}$  led us to deduce that, in fact,  $\mathcal{R} \notin \mathcal{R}$ . Surely, these contradictory facts cannot both hold simultaneously. Accordingly, it must be that our original assumption was bad, so it must be the case that  $\mathcal{R} \notin \mathcal{R}$ , instead.

- Now, suppose  $\mathcal{R} \notin \mathcal{R}$  is True.

The defining property of  $\mathcal{R}$  tells us that any object that is not an element of  $\mathcal{R}$  must be an element of itself. (Otherwise, it would have been included as an element of  $\mathcal{R}$ .) Thus, we can deduce that  $\mathcal{R} \in \mathcal{R}$ .

Wait a minute! Knowing that  $\mathcal{R} \in \mathcal{R}$  led us to deduce that, in fact,  $\mathcal{R} \notin \mathcal{R}$ . This is also contradictory.

No matter which option we choose  $\mathcal{R} \in \mathcal{R}$  or  $\mathcal{R} \notin \mathcal{R}$  we find that the other must also be true, but certainly these contradictory options cannot both be true.

Therein lies the paradox. This is not a properly-defined set. If it were, we would find ourselves stuck in the two cases we just saw, and neither of them can be true. It is also not the case that  $\mathcal{R}$  is simply  $\varnothing$ ; no, it must be that  $\mathcal{R}$  does not exist as a set.

# The "Set of all Sets" is Not a Set

Could we amend the definition of  $\mathcal{R}$  somehow to produce the "set" that the definition is trying to convey? What "larger set" should we draw our objects  $x$  from so that the definition makes sense and properly identifies a set?

Look back at the English-language interpretation we wrote after the definition: "the elements of  $\mathcal{R}$  are sets that also happen to not have themselves as elements." The objects  $x$  that we wish to test for the desired property ( $x \notin x$ ) are really all sets. Perhaps, then, we should just define  $X$  to be the set of all sets, and use the phrase " $x \in X$ " as part of our definition of  $\mathcal{R}$ . That would fix it, right?

$$
\mathcal {R} = \{x \in X \mid x \notin x \}
$$

Well, no, not at all! The "set of all sets" is, itself, not a set. If it were, this would lead us to exactly the same paradox as before! Nothing would be different, except we would have explicitly stated the "larger set" from which we draw objects  $x$  that was previously left implicitly-specified.

The main issue is that not specifying a "larger set" from which to draw objects, or implicitly referring to the "set of all sets", results in this type of undesirable paradox. Accordingly, we must not allow such definitions. Any attempt to define a set that draws objects  $x$  from the "set of all sets", whether implicitly or explicitly, is not a proper definition of a set.

# Further Discussion

There is nothing inherently wrong with the property  $P(x)$  given by " $x \notin x$ ", though. The issue is with that "larger set" we use. For instance, take the set

$$
\mathcal{S} = \left\{x \in \left\{\frac{1}{2}, \frac{3}{4}, \frac{5}{2} \right\} \middle | x \notin x \right\}
$$

What are its elements? The only possibilities are those elements drawn from the larger set  $\left\{\frac{1}{2}, \frac{3}{4}, \frac{5}{2}\right\}$ . Notice that none of those numbers are sets that contain themselves as elements. Thus, this is a proper definition of the set  $\left\{\frac{1}{2}, \frac{3}{4}, \frac{5}{2}\right\}$ , itself! With the previous definition for  $\mathcal{R}$ , the object we were attempting to define was allowed as one of the variable objects  $x$  in its own definition, and that is where the issue arose.

We hope that we haven't led your thoughts too far astray from the original discussion of examples of sets, but we felt it was important to point out that it is possible to construct ill-defined "collections" that are not sets in the mathematical sense of the word. For the most part, we will not face any such issues with the sets we work with in this book, but to gloss over these issues or simply not mention them at all would be unfair to you, as a student. If you find yourself interested in these issues, seek out an introductory book on set theory.

There are other ways that definitions of "sets" can be ill-formed, as well, but the ensuing examples are based on (English) linguistic issues and not any mathematical underpinnings, as in Russell's Paradox. For instance, we could

say "Let  $N$  be the set of all classic novels from the 20th century." Being a "classic novel" is not a well-defined property, and cannot be used to identify elements of such a set. The notion of a "classic" is subjective and not rigorously precise. Also, we could say "Let  $B$  be the set of people who will be born tomorrow" but this temporal dependence in the definition ensures that we will never actually know what the elements of  $B$  are. When tomorrow arrives, the definition will then refer to the next day, and so on. Can you come up with some other examples of ill-formed "collections" of elements? Can you come up with any paradoxes like the one above?

In general, the following statement is the most important idea to take away from this discussion of Russel's Paradox:

Under the agreed-upon rules of sets (the axioms of set theory), there is no set of all sets.

# 3.3.6 Standard Sets and Their Notation

We have referred to and used some common sets of numbers already, so we will list now some sets and their standard symbols:

- The natural numbers:  $\mathbb{N} = \{1,2,3,4,\ldots\}$  
The first  $n$  natural numbers:  $[n] := \{1, 2, 3, \ldots, n - 1, n\}$  
The integers:  $\mathbb{Z} = \{\dots, -3, -2, -1, 0, 1, 2, 3, \dots\}$  
- The rational numbers:  $\mathbb{Q} = \left\{\frac{m}{n}\mid m,n\in \mathbb{Z}\text{and} n\neq 0\right\}$  
The real numbers:  $\mathbb{R}$  
The complex numbers:  $\mathbb{C}$

We have used  $\mathbb{N}$  and  $\mathbb{Z}$  a few times already. The rational numbers  $\mathbb{Q}$  (we use  $\mathbb{Q}$  since  $\mathbb{R}$  was already taken, and rational numbers are quotients) are all of the fractions, or ratios of integers, both positive and negative. The real numbers are harder to describe. Why could we not list a few elements, like we did with  $\mathbb{N}$  and  $\mathbb{Z}$ ? Why is it that  $\mathbb{R} \neq \mathbb{Q}$ ? For now, we essentially take for granted our collective knowledge of these sets of numbers, but think for a minute about that. (We mention the complex numbers  $\mathbb{C}$  because you might be familiar with them, but we will not have occasion to use them in this book.)

How do we know that a set like  $\mathbb{N}$  exists? Why is it that we think of  $\mathbb{R}$  as a number line? How many "more" elements are there in  $\mathbb{Z}$ , as compared to  $\mathbb{N}$ ? How many "more" elements are there in  $\mathbb{R}$ , as compared to  $\mathbb{Q}$ ? Can we even answer these questions? In the very near future, we will rigorously derive the set  $\mathbb{N}$  and prove that it exists as the only set with a particular property. This will be essential when we return to our investigation of mathematical induction. (Remember our goals from that chapter?)

# 3.3.7 Questions & Exercises

# Remind Yourself

Answering the following questions briefly, either out loud or in writing. These are all based on the section you just read, so if you can't recall a specific definition or concept or example, go back and reread that part. Making sure you can confidently answer these before moving on will help your understanding and memory!

(1) What does the symbol " $\in$ " mean?  
(2) How would you read the statement "  $x\in S$  "out loud?  
(3) Is it possible for a set to be an element of another set? If so, give an example. Is it possible for a set to be an element of itself?  
(4) How would read the statement " $\{x \in \mathbb{N} \mid x \leq 5\}$ " out loud? Can you list the elements of this set?  
(5) What is this set:  $\{z\in \mathbb{Z}\mid z\in \mathbb{N}\} ?$  
(6) What is this set:  $\{x\in [10]\mid x\geq 7\}$  
(7) For each of the following sets, state how many elements they have:

(a)  $\varnothing$  
(b)  $\{1,2,10\}$  
(c)  $\{1,\emptyset \}$  
(d)  $\{\varnothing\}$

(8) Is  $x \in \{1, 2, \{x\}\}$ ? Is  $\{x\} \in \{1, 2, \{x\}\}$ ?  
(9) Let  $A = \{a, b, c\}$  and  $B = \{b, c, a\}$  and  $C = \{a, a, b, c, a, b\}$ . Are these sets equal or not?  
(10) Is  $\mathbb{Z} = \mathbb{Q}$ ? Why or why not?

# Try It

Try answering the following short-answer questions. They require you to actually write something down, or describe something out loud (to a friend/classmate, perhaps). The goal is to get you to practice working with new concepts, definitions, and notation. They are meant to be easy, though; making sure you can work through them will help you!

(1) Write a definition of the set of natural numbers that are multiples of 4 using set-builder notation.  
(2) Consider the set  $S = \{3, 4, 5, 6\}$ . Define  $S$  in two different ways using set-builder notation.

(3) Give an example of a set  $X$  that satisfies  $\mathbb{N}\in X$  but  $\mathbb{Z}\notin X$  
(4) Give an example of a set with 100 elements.  
(5) Give an example of a sets  $A, B, C$  such that  $A \in B$  and  $B \in C$  but  $A \notin C$ .  
(6) Write a definition of the set of odd integers using set-builder notation.  
(7) Write a definition of the set of integers that are not natural numbers using set-builder notation.  
(8) Consider the following sets:

$$
A = \left\{x \in \mathbb{R} \mid x^{2} - 3 x + 2 \geq 0 \right\}
$$

$$
B = \{y \in \mathbb{R} \mid y \leq 1 \text{ or } y \geq 2 \}
$$

Explain why  $A = B$

(9) Consider the following sets:

$$
C = \left\{x \in \mathbb{R} \mid x^{2} - 4 \geq 0 \right\}
$$

$$
D = \{y \in \mathbb{R} \mid y \geq 2 \}
$$

Is  $C = D$ ? Why or why not? Write your explanation with good mathematical notation, using  $\in$  and  $\notin$ .

(10) Try explaining Russell's Paradox to a friend, even one who does not study mathematics. What do they understand about it? Do they object? Do their ideas make sense? Have a discussion!

# 3.4 Subsets

# 3.4.1 Definition and Examples

Let's discuss a topic whose basic idea we have already been using. Specifically, let's investigate the notion of subsets.

Definition 3.4.1. Given two sets  $A$  and  $B$ , if every element of  $A$  is also an element of  $B$ , then we say  $A$  is a subset of  $B$ .

The mathematical symbol for subset is  $\subseteq$ , so we would write  $A \subseteq B$ .

If we want to indicate that  $A$  is a subset of  $B$  but is also not equal to  $B$ , we would write  $A \subset B$  and say that  $A$  is a proper subset of  $B$ .

We can also write these relationships as  $B \supseteq A$ , or  $B \supset A$ , respectively. In these cases, we would say  $B$  is a superset of  $A$  or  $B$  is a proper superset of  $A$ , respectively.

Notice the similarities between these symbols and the inequality symbols we use to compare real numbers. We write inequalities like  $x \leq 2$  or  $5 > z > 0$  and understand what those mean based on the "direction" of the symbol and whether we put a bar underneath it. The symbols  $\subseteq, \subset, \supset, \supset$  work exactly the same way, except they refer to "containment of elements" as opposed to "magnitude of a number".

# Standard Sets of Numbers

The standard sets of numbers we mentioned in the last section are related via the subset relation quite nicely. Specifically, we can say

$$
\mathbb {N} \subset \mathbb {Z} \subset \mathbb {Q} \subset \mathbb {R} \subset \mathbb {C}
$$

Again, we take for granted our collective knowledge of these sets of numbers to allow us to make these claims. However, there are some profound and intricate mathematical concepts involved in describing exactly why, say, the set  $\mathbb{R}$  exists and is a proper superset of  $\mathbb{Q}$ . For now, though, we use these sets to illustrate the subset relationship.

Since we know the subset relationships above are proper, we used that corresponding symbol, " $\subseteq$ ". In general, it is common in mathematical writing to simply use the " $\subseteq$ " symbol, even if it is known that " $\subseteq$ " would apply. We might only resort to using the " $\subseteq$ " symbol when it is important, in context, to indicate that the two sets are not equal. If that information is not essential to the context at hand, then we might just use the " $\subseteq$ " symbol.

# Set-Builder Notation Creates Subsets

One way that we have already "used" the idea of a subset was in our use of set-builder notation. This is used to define a set to be all of the elements of a "larger" set that satisfy a certain property. We define a property  $P(x)$ , draw a variable object  $x$  from a larger set  $X$ , and include any elements  $x$  that satisfy the property  $P(x)$ . Notice that any element of this new set must be an element of  $X$ , simply based on the way we defined it. Thus, the following relationship holds

$$
\{x \in X \mid P (x) \} \subseteq X
$$

regardless of the set  $X$  and the property  $P(x)$ . Depending on the set  $X$  and the property  $P(x)$ , it may be that the proper subset symbol  $\subset$  applies but, in general, we can say for sure that  $\subseteq$  applies.

Try to come up with some examples of sets  $X$  and properties  $P(x)$  so that  $\subseteq$  applies, then try to come up with some examples where  $\subset$  applies. Try to come up with one set  $X$  and two different properties  $P_{1}(x)$  and  $P_{2}(x)$  so that  $\subset$  applies for  $P_{1}(x)$  and  $\subseteq$  applies for  $P_{2}(x)$ . Try to identify two different sets  $X_{1}$  and  $X_{2}$  and two different properties  $P_{1}(x)$  and  $P_{2}(x)$  so that

$$
\{x \in X_{1} \mid P_{1} (x) \} = \{x \in X_{2} \mid P_{2} (x) \}
$$

Can you do it?

# Examples

A set is a subset of another set if and only if every element of the first one is an element of the second one. For instance, this means that the following claims all hold:

$$
\{1 4 2, 8 5 7 \} \subseteq \mathbb {N}
$$

$$
\left\{\sqrt{3}, - \pi , 8. 2 \right\} \subseteq \mathbb {R}
$$

$$
\left\{x \in \mathbb{R} \mid x^{2} = 1 \right\} \subseteq \mathbb{Z}
$$

Do you see why these are True?

For a subset relationship to fail, then, we must be able to find an element of the first set that is not an element of the second set. For instance, this means that the following claims all hold:

$$
\{1 4 2, - 8 5 7 \} \not \subseteq \mathbb {N}
$$

$$
\left\{\sqrt{3}, - \pi , 8. 2 \right\} \not \subseteq \mathbb {Q}
$$

$$
\left\{x \in \mathbb{R} \mid x^{2} = 5 \right\} \not \subseteq \mathbb{Z}
$$

# Finding All Subsets of a Set

Let's work with a specific set for a little while. Define  $A = \{1,2,3\}$ . Can we identify all of the subsets of  $A$ ? Sure, why not?

$$
\{1 \} \subseteq A
$$

$$
\{2 \} \subseteq A
$$

$$
\{3 \} \subseteq A
$$

$$
\{1, 2 \} \subseteq A
$$

$$
\{1, 3 \} \subseteq A
$$

$$
\{2, 3 \} \subseteq A
$$

$$
A = \{1, 2, 3 \} \subseteq A
$$

$$
\varnothing \subseteq A
$$

Identifying the first six subsets was fairly straightforward, but it's important to remember that  $A$  and  $\varnothing$  are subsets, as well. (Notice: it is true, in general, that for any set  $S$ ,  $S \subseteq S$  and  $\varnothing \subseteq S$ . Think about this!)

Consider the set  $B$  whose elements are all of the sets we listed above:

$$
B = \left\{\{1 \}, \{2 \}, \{3 \}, \{1, 2 \}, \{1, 3 \}, \{2, 3 \}, A, \varnothing \right\}
$$

It is true that any element  $X \in B$  satisfies  $X \subseteq A$ . Do you see why?

# 3.4.2 The Power Set

This process of identifying all subsets of a given set is common and useful, so we identify the resulting set with a special name.

Definition 3.4.2. Given a set  $A$ , the power set of  $A$  is defined to be the set whose elements are all of the subsets of  $A$ . It is denoted by  $\mathcal{P}(A)$ .

Our parenthetical observation from the above paragraph tells us that  $S \in \mathcal{P}(S)$  and  $\varnothing \in \mathcal{P}(S)$ , for any set  $S$ .

Look back at our example set  $A = \{1,2,3\}$  above. What do you notice about the number of elements in  $\mathcal{P}(A)$ ? How does it relate to the number of elements in  $A$ ? Do you think there is a general relationship between the number of elements in  $S$  and  $\mathcal{P}(S)$ , for an arbitrary set  $S$ ?

Example 3.4.3. Let's find  $\mathcal{P}(\varnothing)$ . What are the subsets of the empty set? There is only one, the empty set itself! (That is,  $\varnothing \subseteq \varnothing$ , but no other set satisfies this.) Accordingly, the power set  $\mathcal{P}(\varnothing)$  has one element, the empty set:

$$
\mathcal {P} (\varnothing) = \{\varnothing \}
$$

Notice that this is different from the empty set itself:

$$
\varnothing \neq \{\varnothing \}
$$

Why is this true? Compare the elements! The empty set has no elements, but the set on the right has exactly one element. (In general, this can be a helpful way to compare two sets.) To give you some practice, we'll point out that would read the above line aloud as:

"The empty set and the set containing the empty set are two different sets."

Example 3.4.4. Let's try this process with another set, say  $A = \{\varnothing, \{1, \varnothing\}\}$ . We can list the elements of  $\mathcal{P}(A)$  as

$$
\mathcal {P} (A) = \{\{\varnothing \}, \{\{1, \varnothing \} \}, \{\varnothing , \{1, \varnothing \} \}, \varnothing , \}
$$

This may look strange, with all of the empty sets and curly braces, but it is important to keep the subset relationships straight. It is true, in this example, that

$$
\varnothing \in A, \quad \{\varnothing \} \subseteq A, \quad \{\varnothing \} \in \mathcal {P} (A), \quad \{\varnothing \} \subseteq \mathcal {P} (A)
$$

Why are these relationships true? Think carefully about them, and try to write a few more on your own. The distinction between " $\in$ " and " $\subseteq$ " is very important!

# 3.4.3 Set Equality

When are two sets equal? The main idea is that two sets are equal if they contain "the same elements", but this is not a precise definition of equality. How can we describe that property more explicitly and rigorously? To say that two sets,  $A$  and  $B$ , have "the same elements" means that any element of  $A$  is also an element of  $B$ , and every element of  $B$  is also an element of  $A$ . If both of these properties hold, then we can be guaranteed that the two sets contain precisely the same elements and are, thus, equal. If you think about it, you'll notice that we can phrase this in terms of subsets. How convenient!

Definition 3.4.5. We say two sets,  $A$  and  $B$ , are equal, and write  $A = B$ , if and only if  $A \subseteq B$  and  $B \subseteq A$ .

(What happens if we use the  $\subset$  symbol in the definition, instead of  $\subseteq$ ? Is this the same notion of set equality? Why or why not?)

This definition will be very useful in the future when we learn how to prove two sets are equal and we can't simply list the elements of each and compare them. By constructing two arguments and proving the subset relationship in "both directions", we can show that two sets are equal. For now, let's see this definition applied to a straightforward example.

Example 3.4.6. How can we use this to define an observe that the following equality holds?

$$
\{x \in \mathbb {Z} \mid x \geq 1 \} = \mathbb {N}
$$

We just need to see that the  $\subseteq$  and  $\supseteq$  relationship applies between the two sides. First, is it true that every integer that is at least 1 is a natural number? Yes! This explains why

$$
\left\{x \in \mathbb {Z} \mid x \geq 1 \right\} \subseteq \mathbb {N}
$$

Second, is it true that every natural number is a positive integer that is at least 1? Yes! This explains why

$$
\{x \in \mathbb {Z} \mid x \geq 1 \} \supseteq \mathbb {N}
$$

Together, this shows that the equality stated above is correct.

# 3.4.4 The "Bag" Analogy

It has been our experience that sets are a rather difficult notion to grasp when they are introduced. Specifically, the notation associated with sets throws students for a loop, and they end up writing down things that make no sense! It is essential to keep straight the differences between the symbols  $\in$  and  $\subseteq$ .

Here is a helpful analogy to keep in mind: a set is like a bag with some stuff in it. The bag itself is irrelevant; we just care about what kind of stuff inside (i.e. what the elements are). Think of the bag as a non-descript plastic bag you'd get at the grocery store, even. All those bags are identical; to distinguish between any two bags, we need to know what kind of things are inside them.

If I put an apple and an orange in a grocery bag, surely it doesn't matter in what order I put them in. All you would need to know is that I have some apples and oranges. It also doesn't matter how many apples or oranges I have in the bag, because we only care about what kind of stuff is in there. Think of it as answering questions of the form "Are there any _s in the bag? Yes or no?" It doesn't matter if I have two identical apples or seven or just one in my bag; if you ask me whether I have any apples, I'll just say "Yes". This is related to the notion that the order and repetition of elements in a set don't matter. A set is completely characterized by what its elements are.

This also helps when we think about sets as elements of other sets, themselves. Who's to stop me from just putting a whole bag inside another bag? Look at the set  $A$  we defined in the example above:

$$
A = \{\varnothing , \{1, \varnothing \} \}
$$

This set  $A$  is a bag. What's inside the bag? There are two objects inside the bag (i.e. there are two elements of  $A$ ). They both happen to be bags, themselves! One of them is a plain-old empty bag, with nothing inside it. (That's the empty set.) Okay, that's cool. The other one has two objects inside it. One of those objects is the number 1. Cool. The other such object is another empty bag.

# Distinguishing " $\in$ " and " $\subseteq$ "

This analogy also helps with understanding the differences between " $\in$ " and " $\subseteq$ ". Keep the example  $A$  in mind again. When we write  $x \in A$ , we mean  $x$  is an object inside the bag  $A$ . If we peeked into  $A$ , we would see an  $x$  sitting there at the bottom amongst the stuff. Let's use this idea to compare two examples.

- We see that  $\varnothing \in A$  is true here. If we look inside the bag  $A$ , we see an empty bag amongst the stuff (the elements).  
- We also see that  $\{\varnothing\} \notin A$  is true here. If we look inside the bag  $A$ , we don't see a bag containing only an empty bag. (This is what  $\{\varnothing\}$  is, mind you: an empty bag inside another bag.)

Do you see such an object? Where? I defy you to show me, amongst the stuff inside the bag  $A$ , a bag containing only an empty bag.

What do I see inside the bag  $A$ ? Well, I see two things: an empty bag, and a bag that has two objects inside it (an empty bag, and the number 1). Neither of those objects is what we were looking for!

When we write  $X \subseteq A$ , we mean that the two bags,  $X$  and  $A$ , are somehow comparable. Specifically, we are saying that all of the stuff inside  $X$  is also stuff inside  $A$ . We are really rooting through all of the objects inside  $X$ , taking them out one by one, and making sure we also see that object inside  $A$ . Let's use this idea to compare two examples.

- We see that  $\{\varnothing\} \subseteq A$  is true here. We are comparing the bag on the left with the bag on the right. What stuff is inside the bag on the left?

There's just one object in there, and it is an empty bag, itself. Now, we peek inside  $A$ . Do we also see an empty bag in there? Yes we do! Thus, the "  $\subseteq$  " symbol applies here.

- We also see that  $\{1\} \nsubseteq A$  is true here. To compare these two bags, we'll pull out an object from the bag on the left and see if it is also in the bag  $A$ . Here, we only have one object to pull out: the number 1. Now, let's peek inside the bag  $A$ . Do we see a 1 sitting in there amongst the stuff? No, we don't!

We would have to peek inside something at the bottom of the bag  $A$  to find the number 1; that number isn't just sitting out in plain sight. Thus,  $\{1\} \nsubseteq A$ .

Look back over some examples we have discussed already with this new analogy in mind. Does it help you understand the definitions and examples? Does it help you understand the difference between " $\in$ " and " $\subseteq$ " and " $\supseteq$ "? If not, can you think of another analogy that would help you?

# 3.4.5 Questions & Exercises

# Remind Yourself

Answering the following questions briefly, either out loud or in writing. These are all based on the section you just read, so if you can't recall a specific definition or concept or example, go back and reread that part. Making sure you can confidently answer these before moving on will help your understanding and memory!

(1) Is  $\mathbb{N} \subseteq \mathbb{R}$ ? Is  $\mathbb{R} \subseteq \mathbb{N}$ ? Is  $\mathbb{Q} \subseteq \mathbb{Z}$ ? Why or why not?  
(2) What is the difference between  $\subset$  and  $\subseteq$ ? Give an example of sets  $A, B$  such that  $A \subseteq B$  is True but  $A \subset B$  is False.  
(3) What is the difference between  $\in$  and  $\subseteq$ ? Give an example of sets  $C, D$  such that  $C \subseteq D$  but  $C \notin D$ .  
(4) Let  $S$  be any set. What is the power set of  $S$ ? What type of mathematical object is it? How is it defined?  
(5) Suppose  $S \subseteq T$ . Does this mean  $S = T$ ? Why or why not?  
(6) Explain why  $\varnothing \subseteq S$  and  $\varnothing \in \mathcal{P}(S)$  for any set  $S$ .  
(7) Suppose  $X \in \mathcal{P}(A)$ . How are  $X$  and  $A$  related, then?  
(8) Is it possible for  $A = \mathcal{P}(A)$  to be true? (This one is rather tricky, but think about it!)

# Try It

Try answering the following short-answer questions. They require you to actually write something down, or describe something out loud (to a friend/classmate, perhaps). The goal is to get you to practice working with new concepts, definitions, and notation. They are meant to be easy, though; making sure you can work through them will help you!

(1) Write out the elements of the set  $\mathcal{P}(\mathcal{P}(\emptyset))$  
(2) Write out the elements of the sets  $\mathcal{P}([1])$  and  $\mathcal{P}([2])$  and  $\mathcal{P}([3])$ . Can you make a conjecture about how many elements  $\mathcal{P}([n])$  has? (Can you prove it? We don't expect you to now, but soon enough; think about it!)  
(3) Let  $A = \{x, \heartsuit, \{4\}, \emptyset\}$ . For each of the following statements, decide whether it is True or False and briefly explain why.

(a)  $x\in A$  
(b)  $x\subseteq A$  
(c)  $\{x,\heartsuit \} \subseteq A$  
(d)  $\{x,\varnothing \} \subset A$  
(e)  $\{x,\heartsuit ,z,7\} \supseteq A$  
(f)  $\{x\} \in \mathcal{P}(A)$  
(g)  $\{x\} \subseteq \mathcal{P}(A)$  
(h)  $\{\heartsuit ,x\} \in \mathcal{P}(A)$  
(i)  $\{4\} \in \mathcal{P}(A)$  
(j)  $\{\varnothing\} \in \mathcal{P}(A)$  
(k)  $\{\varnothing\} \subseteq \mathcal{P}(A)$

Hint: 7 of these are True, and 4 are False.

(4) Give an example of sets  $A, B$  such that  $A \in B$  and  $A \subseteq B$  are both true.  
(5) Is  $\{1,2,12\} \subseteq \mathbb{R}$ ?  
(6) Is  $\{-5, 8, 12\} \subseteq \mathbb{N}$ ?  
(7) Is  $\{1,3,7\} \in \mathcal{P}(\mathbb{N})$ ?  
(8) Is  $\mathbb{N}\in \mathcal{P}(\mathbb{Z})$ ?  
(9) Is  $\mathcal{P}(\mathbb{N})\subseteq \mathcal{P}(\mathbb{Z})$ ? Are they equal sets? Why or why not?  
(10) Give an example of an infinite set  $T$  such that  $T \in \mathcal{P}(\mathbb{Z})$  but  $T \notin \mathcal{P}(\mathbb{N})$ .  
(11) Suppose  $G, H$  are sets and they satisfy  $\mathcal{P}(G) = \mathcal{P}(H)$ . Can we conclude that  $G = H$ ? Why or why not? (Don't try to formally prove this; just think about it and try to talk it out.)  
(12) Give an example of a set  $W$  such that  $W \subseteq \mathcal{P}(\mathbb{N})$  but  $W \notin \mathcal{P}(\mathbb{N})$ .

# 3.5 Set Operations

When you first learned about numbers, a natural next step was to learn about how to combine them: multiplication, addition, and so on. Thus, a natural next step for us now is to investigate how we can take two sets and operate on them to produce other sets. How can we combine sets in interesting ways? There are several such operations that have standard, notational symbols and we will introduce you to those operations now.

Throughout this section, we assume that we are given two sets  $A$  and  $B$  that are each subsets of a larger universal set  $U$ . That is, we assume  $A \subseteq U$  and  $B \subseteq U$ . The reason we make this assumption is that each operation involves defining another set by identifying elements of a larger set with a specific property, so we must have some set  $U$  that is guaranteed to contain all of the elements of  $A$  and  $B$  so we can even work with those elements. (Again, ensuring this may seem nit-picky, but it is meant to avoid nasty paradoxes like the one we investigated before.) Assuming those sets  $A, B, U$  exist, though, we can forge ahead with our definitions.

# 3.5.1 Intersection

This operation collects the elements common to two sets and includes them in a new set, called the intersection.

Definition 3.5.1. Let  $A$  and  $B$  be any sets. The intersection of  $A$  and  $B$  is the set of elements that belong to both  $A$  and  $B$ , and is denoted by  $A \cap B$ . Symbolically, we define

$$
A \cap B = \{x \in U \mid x \in A a n d x \in B \}
$$

Example 3.5.2. Define the following sets:

$$
\begin{array}{l} S_{1} = \{1, 2, 3, 4, 5 \} \\ S_{2} = \{1, 3, 7 \} \\ S_{3} = \{2, 4, 7 \} \\ U = \mathbb{N} \\ \end{array}
$$

Then, we see that, for example,

$$
\begin{array}{l} S_{1} \cap S_{2} = \{1, 3 \} \\ S_{1} \cap S_{3} = \{2, 4 \} \\ S_{2} \cap S_{3} = \{7 \} \\ \end{array}
$$

Also, since  $S_{1} \cap S_{2}$  is, itself, a set, it makes sense to consider  $(S_{1} \cap S_{2}) \cap S_{3}$ . However, those two sets share no elements, so we write

$$
\left(S_{1} \cap S_{2}\right) \cap S_{3} = \varnothing
$$

The situation where two sets have no common elements, as seen in the above example, is common enough that we have a specific term to describe such sets:

Definition 3.5.3. If  $A \cap B = \emptyset$ , then we say  $A$  and  $B$  are disjoint.

# Intersections and Subsets

You might have observed already that we can say  $A \cap B \subseteq A$  and  $A \cap B \subseteq B$ , no matter what  $A$  and  $B$  are. Let's prove this fact!

Proposition 3.5.4. Let  $A$  and  $B$  be any sets. Then,

$$
A \cap B \subseteq A
$$

and

$$
A \cap B \subseteq B
$$

By the way, a proposition like this is just a "mini result". It's not difficult or important enough to be called a theorem, but it does require a little proof.

Proof. Let's say we have two sets,  $A$  and  $B$ . To prove a subset relationship, like  $A \cap B \subseteq A$ , we need to show that every element of the set on the left ( $A \cap B$ ) is also an element of the set on the right ( $A$ ).

Let's consider an arbitrary element  $x \in A \cap B$ . By the definition of  $A \cap B$ , we know that  $x \in A$  and  $x \in B$ . Thus, we know that  $x \in A$ . This was our goal, so we have shown that  $A \cap B \subseteq A$ .

Also, we know that  $x \in B$ , so we have also shown that  $A \cap B \subseteq B$ .

This might seem like a simple observation and an easy proof, but we still need to go through these logical steps to rigorously explain why those subset relationships hold true. Also, notice the type of proof structure we used here. To prove a subset relationship holds true, we need to consider an arbitrary element of one set and deduce that it is also an element of the other set. This will be our method for proving any claim about subsets.

What if  $A \subseteq B$ ? What can we say about  $A \cap B$ , in relation to  $A$  and  $B$ ? Try to prove a statement about this!

# 3.5.2 Union

This operation collects the elements of either of two sets and includes them in a new set, called the union.

Definition 3.5.5. Let  $A$  and  $B$  be any sets. The union of  $A$  and  $B$  is the set of elements that belong to either  $A$  or  $B$ , and is denoted by  $A \cup B$ . Symbolically, we define

$$
A \cup B = \{x \in U \mid x \in A o r x \in B \}
$$

Notice that the "or" in the definition is an inclusive "or", meaning that  $A \cup B$  includes any element that belongs to  $A$  or  $B$  or possibly both sets.

Example 3.5.6. Returning to the sets  $S_{1}, S_{2}, S_{3}$  we defined above in Example 3.5.2, we can say

$$
\begin{array}{l} S_{1} \cup S_{2} = \{1, 2, 3, 4, 5, 7 \} \\ S_{1} \cup S_{3} = \{1, 2, 3, 4, 5, 7 \} \\ S_{2} \cup S_{3} = \{1, 2, 3, 4, 7 \} \\ \end{array}
$$

Also, since each of these unions are sets themselves, we could find their union with another set. For example,

$$
(S_{1} \cup S_{2}) \cup S_{3} = \{1, 2, 3, 4, 5, 7 \} \cup \{2, 4, 7 \} = \{1, 2, 3, 4, 5, 7 \}
$$

# Unions and Subsets

Notice that  $A \subseteq (A \cup B)$  and  $B \subseteq (A \cup B)$ , no matter what  $A$  and  $B$  are. Let's prove that!

Proposition 3.5.7. Let  $A$  and  $B$  be any sets. Then,

$$
A \subseteq (A \cup B)
$$

and

$$
B \subseteq (A \cup B)
$$

Proof. Let's say we have two sets,  $A$  and  $B$ . To prove  $A \subseteq (A \cup B)$ , we need to show that every element of  $A$  is also an element of  $A \cup B$ .

Let  $x \in A$  be arbitrary and fixed. Then it is certainly that  $x \in A$  or  $x \in B$  (since  $x \in A$ ). This shows  $x \in A \cup B$ . Since  $x$  was arbitrary, we have shown  $A \subseteq A \cup B$ .

Let  $y \in B$  be arbitrary and fixed. Then it is certainly true that  $y \in A$  or  $y \in B$  (since we already know  $y \in B$ ). This shows  $y \in A \cup B$ . Since  $y$  was arbitrary, we have shown  $B \subseteq A \cup B$ .

What can you say about the relationship between  $A \cap B$  and  $A \cup B$ ? If  $A \subseteq B$ , can we say anything about the relationship between  $B$  and  $A \cup B$ ? Try to prove your observations!

We should emphasize that claims like this—that  $A \subseteq A \cup B$  for any sets  $A$  and  $B$ —need to be proven; they do not hold by definition. The definition of the union of two sets is given above. Notice it says nothing about how  $A$  and  $A \cup B$  are related; it just tells us what the object  $A \cup B$  actually is. When you invoke or cite a definition and use it, be sure to do so; but also, be sure to explain any claim that isn't exactly a definition. Since we have proven these two little lemmas, we get to use them in the future by referencing them; had we not done so, we would have to re-explain these little facts every time we try to invoke them!

# 3.5.3 Difference

This operation takes the elements of one set and removes the elements that also belong to another set.

Definition 3.5.8. The difference between  $A$  and  $B$ , denoted by  $A - B$ , is the set of all elements of  $A$  that are not elements of  $B$ . Symbolically, we define

$$
A - B := \{x \in U \mid x \in A a n d x \notin B \}
$$

Example 3.5.9. Returning to the sets  $S_{1}, S_{2}, S_{3}$  we defined above in Example 3.5.2, we can say, for example, that

$$
\begin{array}{l} S_{1} - S_{2} = \{2, 4, 5 \} \\ S_{2} - S_{1} = \{7 \} \\ S_{2} - S_{3} = \{1, 3 \} \\ \end{array}
$$

# Set Difference Is Not Symmetric

Notice that  $S_{1} - S_{2} \neq S_{2} - S_{1}$  in the example above. In general, the operation "-", in the context of sets, is not symmetric, and this example here shows that. Can you find two sets  $A, B$  so that  $A - B = B - A$ ? Can you find two sets  $A, B$  so that  $A - B = B - A \neq \emptyset$ ?

Each of the other operations we have defined thus far is, in fact, symmetric. That is,  $A \cap B = B \cap A$  and  $A \cup B = B \cup A$ . Look back at the definitions for these operations and see why this makes sense. What is it about the language used in the property definition of the operation that makes this true?

# Notation Notes

One more comment on this set difference notation. Notice that we use the standard subtraction symbol, "-", but this has nothing to do with "subtraction" in the way we usually think of it, like with numbers. This might be the first time you've encountered this ambiguity, or perhaps not, but there is a larger point that is relevant to mathematical notation and terminology: many symbols have different meanings depending on the context.

When we write  $7 - 5$ , we clearly mean subtraction, i.e.  $7 - 5 = 2$ . However, when we write  $A - A$  where  $A$  has been identified as a set, we mean the set difference operation, i.e.  $A - A = \emptyset$ . Be sure to check the context of any statement to ensure that the symbols therein do mean what you think they mean!

# 3.5.4 Complement

This operation identifies all of the elements that lie "outside" a set. This operation depends on the context of the universal set  $U$ . You'll notice that this is evident in the definition, and we will illustrate this through examples, as well.

Definition 3.5.10. The complement of  $A$  is the set of all elements that are not elements of  $A$ , and is denoted by  $\bar{A}$ . Symbolically, we define

$$
\bar {A} = \{x \in U \mid x \notin A \}
$$

Remember that we assumed  $A, B, U$  are given sets that satisfy  $A \subseteq U$  and  $B \subseteq U$ . Within this context, the set  $\bar{A}$  is well-defined, but this set certainly depends on  $A$  and  $U$ !

Example 3.5.11. For instance, let's return to the sets  $S_{1}, S_{2}, S_{3}$  we defined above in Example 3.5.2. There, we used the context  $U = \mathbb{Z}$ . In that case,

$$
\overline{S}_{1} = \{6, 7, 8, 9, \dots \}
$$

However, what if we had used  $U = \{1,2,3,4,5,6,7\}$ ? In that case,

$$
\overline{S}_{1} = \{6, 7 \}
$$

Since the symbolic notation  $\bar{A}$  makes no indication of the set  $U$  that it depends on, it is important to make this set clear in whatever context we are working. Try identifying some sets  $A, U_1, U_2$  so that  $\bar{A}$  in  $U_1$  is different from  $\bar{A}$  in  $U_2$ , and try identifying some sets so that  $\bar{A}$  is the same in both cases.

# 3.5.5 Questions & Exercises

# Remind Yourself

Answering the following questions briefly, either out loud or in writing. These are all based on the section you just read, so if you can't recall a specific definition or concept or example, go back and reread that part. Making sure you can confidently answer these before moving on will help your understanding and memory!

(1) What is the difference between a union and intersection of two sets?  
(2) What does it mean for two sets to be disjoint?  
(3) What is  $\mathbb{Z}\cap \mathbb{N}$ ? What is  $\mathbb{Z}\cup \mathbb{N}$ ? What is  $\mathbb{Z} - \mathbb{N}$ ?  
(4) Is it possible for  $A - B = B - A$  to be true? How?  
(5) What is  $\overline{[3]}$  in the context of  $\mathbb{N}$ ? What about in the context of  $\mathbb{Z}$ ? Of  $\mathbb{R}$ ? Try writing your answers using good mathematical notation, and set-buidler notation, perhaps.  
(6) Is  $(A \cap B) \cap C = (A \cap B) \cap C$  always true? Why or why not? What about with  $\cup$  instead of  $\cap$ ?  
(7) What is the difference between the statements " $7 - 5$ " and "[7] - [5]?"?  
(8) Suppose  $x \in A$ . Does  $A - x$  make sense, notationally? How can you change it to make sense?  
(9) What is  $(\mathbb{Z} - \mathbb{N})\cup \mathbb{R}$ ?

# Try It

Try answering the following short-answer questions. They require you to actually write something down, or describe something out loud (to a friend/classmate, perhaps). The goal is to get you to practice working with new concepts, definitions, and notation. They are meant to be easy, though; making sure you can work through them will help you!

(1) List the elements of the following sets:

(a) [7]  $\cup$  [10]  
(b) [10]  $\cap$  [7]  
(c) [10] - [7]  
(d)  $([12] - [3])\cap [8]$  
(e)  $(\mathbb{N} - [3])\cap [7]$  
(f)  $(\mathbb{Z} - \mathbb{N})\cap \mathbb{N}$  
(g)  $\overline{\mathbb{N}}\cap \{0\}$  , in the context of  $\mathbb{Z}$

(2) Find an example of sets  $A, B, C$  such that  $(A - B) - C = A - (B - C)$ . Then, find an example where they are not equal.  
(3) State and prove a relationship between  $\overline{A}$  and  $U - A$  
(4) Let  $A = [12]$ , let  $E$  be the set of even integers, and let  $P$  be the set of prime natural numbers. What is  $A \cap E$ ? What is  $A \cap P$ ? What is  $(A \cap E) \cap P$ ? Is it the same as  $A \cap (E \cap P)$ ?

Suppose the context is  $U = \mathbb{N}$ . What are  $\overline{A\cap E}$  and  $\overline{A}\cap \overline{E}$ ?

(5) What is  $\{1\} \cap \mathcal{P}(\{1\})$ ?  
(6) Consider the sets  $\{1\}$  and  $\{2,3\}$ . Compare the sets  $\mathcal{P}(\{1\} \cup \{2,3\})$  and  $\mathcal{P}(\{1\}) \cup \mathcal{P}(\{2,3\})$ . What do you notice?

Repeat this exercise with " $\cap$ " instead of " $\cup$ ". What do you notice?

(7) Let  $A, U$  be sets, and suppose  $A \subseteq U$ . Let  $B = \overline{A}$ , in the context of  $U$ . What do you think  $\overline{B}$  is? Why?

# 3.6 Indexed Sets

# 3.6.1 Motivation

Let's discuss a notion that we referenced briefly before and have been using already: the concept of indexing a collection of sets. This type of notation is convenient when we wish to define or refer to a large number of sets without writing out all of them explicitly. Using similar notation with the set operations we have defined already, we will be able to "combine" and "operate on" a large

number of sets "all at once". There is really no new mathematical content in this section, but the notation involved in these ideas can be confusing and difficult to work with, at first, so we want to guide you through these ideas carefully.

# Relation to Summation Notation

We'll start with a related concept that we have seen before. Remember when we investigated sums of natural numbers in Chapter 1? We mentioned some special notation that allowed us to condense a long string of terms in a sum into one concise form, using the  $\sum$  symbol. For instance, we could write an informal sum ("informal" meaning "not rigorous" because of the use of ellipses) in the  $\sum$  notation as follows:

$$
1 + 2 + 3 + 4 + \dots + (n - 1) + n = \sum_{i = 1}^{n} i
$$

Why does this notation work and make sense? The index variable  $i$  is the key component of condensing the sum into this form. Writing " $i = 1$ " underneath the  $\sum$  symbol means that the value of the variable  $i$  should start at 1 and increase by 1 until it reaches the terminal value,  $n$ , written above the  $\sum$  symbol. For each allowable value of  $i$  in that range (from 1 to  $n$ ), we include a term in the sum of the form written to the right of the  $\sum$  symbol; in this case, that term is  $i$ . Thus, we should have the terms  $1, 2, 3, \ldots, n$  with  $a + sign$  between each.

We should point out that it is implicitly understood that writing  $i = 1$  and  $n$  as the limits on the index variable  $i$  means  $i$  assumes all values that are natural numbers between 1 and  $n$ .

# Example

Let's see the process of defining indexed sets via an example first. We will also see how to apply set operations to several sets by using an index variable.

Example 3.6.1. We can similarly condense some set operation notation. For instance, let's define the sets  $A_{1}, A_{2}, A_{3}, \ldots, A_{10}$  by

$$
A_{1} = \{1, 2 \}
$$

$$
A_{2} = \{2, 4 \}
$$

$$
A_{3} = \{3, 6 \}
$$

中 中

$$
A_{i} = \{i, 2 i \}
$$

中 中

$$
A_{1 0} = \{1 0, 2 0 \}
$$

We included the definition of  $A_{i}$  for an arbitrary value  $i$  to give these sets a rigorous definition. Without defining that set—which defines  $A_{i}$  for any relevant value of  $i$ —we would be leaving it up to the reader to interpret the pattern among the sets  $A_{1}, A_{2}, A_{3}, A_{10}$ , and there could be multiple ways of interpreting that. By defining the term  $A_{i}$  explicitly like this, there is no confusion as to what we want these ten sets to be.

Furthermore, we can more easily express the union of all of these sets, for instance. Remember that the union of two sets is the set containing all elements of both sets (i.e. an element is included in the union if it is in the first set or the second set, or possibly both). What is the union of more than two sets? It follows the same idea as the definition for just two sets; we want to include an element in the union if it is in any of the constituent sets we are combining via the union operation.

How can we write this union concisely and precisely? Let's follow the same motivation of the  $\sum$  notation. The index of these sets runs from 1 to 10, so we should write  $i = 1$  below a " $\cup$ " symbol and 10 above it. Each term in the union is of the form  $\{i, 2i\}$ , so we should write that to the right of the " $\cup$ " symbol. For indexed unions like this one, though, we use a slightly larger " $\bigcup$ " symbol, like so:

$$
A_{1} \cup A_{2} \cup A_{3} \cup \dots \cup A_{1 0} = \bigcup_{i = 1}^{1 0} A_{i} = \bigcup_{i = 1}^{1 0} \{i, 2 i \}
$$

This is far more concise than writing the elements of all 10 sets, so you can see how useful this notation is. We will keep reminding you of the imprecision of the ellipses in the union on the left and tell you that, in fact, an expression like the one on the right is a truly rigorous mathematical statement about this union. The expression on the left is more of an intuitive, heuristic way of describing the union operation applied to these ten sets.

# When The Index Set Is Not a Range of Numbers

Let's examine a more difficult example to motivate the next development in this notation technique. What if we asked you to write the following sum in summation notation: the sum of the squared reciprocals of all prime numbers. How can we accomplish this? (Note: We just want to express all the terms of the sum without evaluating the sum. That's a difficult endeavor left for another time!)

Unfortunately, we cannot use the exact same notation as above, because we don't want to sum over a range of index values between two natural numbers; rather, we want to only include terms in the sum corresponding to prime numbers. The solution to this is to define an index set  $I$  that will describe the allowable values of the index that we will then "plug into" the arbitrary term written to the right of the sum.

In this case, if we have a prime number  $i$ , we would like to include the term  $\frac{1}{i^2}$  in our sum, so this expression will be written to the right of the  $\sum$  symbol. We would like to express in our notation that the value  $i$  should be a prime

number and that all possible prime numbers should be included. The index set  $I$  of allowable values should, therefore, be the set of all prime numbers. That is, we can write this sum as

$$
\sum_{i \in I} \frac{1}{i^{2}} \quad , \text{wh er e} I = \{i \in \mathbb {N} \mid i \text{is pr im e} \}
$$

Look at what this notation accomplishes! Not only have we condensed an infinite number of terms into one expression, we have indicated that the values of the arbitrary index  $i$  should be restricted to prime numbers, which do not behave in the "usual" and convenient way as with a sum like  $\sum_{i=1}^{n} i$ .

Example 3.6.2. This concept of an index set is extremely useful and extends to arbitrary sets and even non-mathematical objects. For instance, in our discussion of sets above we used the set  $B$  of all Major League Baseball teams. How can we use this set to express the set  $P$  of all Major League Baseball players? Each team is, itself, a set whose elements are the players on that team, so a union of all of the teams (i.e., a union of all sets in  $B$ ) should produce exactly this set of all players! In this case, our index set is  $B$ , and for each element  $b \in B$ , we want to include  $b$  as a set in our union. Thus, we would write

$$
P = \bigcup_{b \in B} b
$$

The individual terms in this union are not even dependent on natural numbers, so there would have been no way to express this union without the use of an index set, like this. Also, this union is dependent on the fact that the terms of the union are elements of the index set  $B$ , but they are also sets themselves; thus, applying the union operation to them makes mathematical sense. This might still seem like an odd idea, so be sure to think carefully about this idea of sets having elements that are sets, themselves.

# Reading Indexed Expressions Aloud

To verbalize these types of expressions, and to help you think of them in your head, let's give you an example. We might read the expression up above as

"The sum, over all  $i$  that are prime, of  $\frac{1}{i^2}$ .

or

"The sum of  $\frac{1}{i^2}$ , where  $i$  ranges over all prime numbers."

Likewise, we might read the other expression above as

"The union, over all  $b$  that are MLB teams in the 2012 season, of those  $b$ ."

or

"The union of all sets  $b$ , where  $b$  ranges over all MLB teams from the 2012 season."

# 3.6.2 Indexed Unions and Intersections

Let's give a precise definition of this union operation for more than one set, since we have only rigorously defined the union of two sets.

Definition 3.6.3. The union of a collection of sets  $A_{i}$  indexed by the set  $I$  is

$$
\bigcup_{i \in I} A_{i} = \left\{x \in U \mid x \in A_{i} f o r s o m e (i. e. a t l e a s t o n e) i \in I \right\}
$$

where we assume there is a set  $U$  such that  $A_{i}\subseteq U$  for every  $i\in I$

In mathematical language, the phrase "for some  $i \in I$ " means that we want there to be at least one  $i \in I$  with the specified property. If an element  $x$  satisfies  $x \notin A_i$  for every  $i \in I$ , then this says  $x$  is not in any of the sets in our collection, so it should not be included in the union.

Following this idea, we can make a similar definition for set intersections.

Definition 3.6.4. The intersection of a collection of sets  $A_{i}$  indexed by the set  $I$  is

$$
\bigcap_{i \in I} A_{i} = \{x \in U \mid x \in A_{i} f o r e v e r y i \in I \}
$$

where we assume there is a set  $U$  such that  $A_{i}\subseteq U$  for every  $i\in I$

# 3.6.3 Examples

Let's return to a previous example and make these ideas clearer.

Example 3.6.5. Previously, in Example 3.6.1, we defined

$$
A_{i} = \{i, 2 i \}
$$

for every natural number  $i$  between 1 and 10. Another way of defining this collection is to consider the index set  $I = [10]$  (recall the notation  $[n] = \{i \in \mathbb{N} \mid 1 \leq i \leq n\}$ ) and define  $A$  to be the set

$$
A = \left\{A_{i} \mid i \in I \right\}, \text{wh er e} A_{i} = \left\{i, 2 i \right\} \text{fo re ve ry} i \in I
$$

This defines every set  $A_{i}$ , dependent on the index value  $i$  chosen from the index set  $I$ , and it "collects" all of these sets into one set  $A$ . Then, another way of writing that union we wrote before would be

$$
\bigcup_{i \in I} A_{i}
$$

with the given definitions of  $I$  and  $A_{i}$

(Think carefully about how this union differs from the set  $A$ . Also, what exactly is this union? How can we express its elements conveniently? Do we need to list every element? What if we change the index set  $I$  to be  $\mathbb{N}$ ? What is the union in that case?)

Example 3.6.6. Let  $I = \{1,2,3\}$  and, for every  $i \in I$ , define

$$
A_{i} = \{i - 2, i - 1, i, i + 1, i + 2 \}
$$

Let's identify and write out the elements of the following sets:

$$
\bigcup_{i \in I} A_{i} \qquad \text{an d} \qquad \bigcap_{i \in I} A_{i}
$$

Notice that we can write out the elements of each  $A_{i}$  set, as follows:

$$
\begin{array}{l} A_{1} = \{- 1, 0, 1, 2, 3 \} \\ A_{2} = \{0, 1, 2, 3, 4 \} \\ A_{3} = \{1, 2, 3, 4, 5 \} \\ \end{array}
$$

Thus,

$$
\bigcup_{i \in I} A_{i} = A_{1} \cup A_{2} \cup A_{3} = \{- 1, 0, 1, 2, 3, 4, 5 \}
$$

and

$$
\bigcap_{i \in I} A_{i} = A_{1} \cap A_{2} \cap A_{3} = \{1, 2, 3 \}
$$

Now, consider  $J = \{-1,0,1\}$ , with  $A_{j}$  defined in the same way as before. Let's identify the elements of the sets

$$
\bigcup_{j \in J} A_{j} \qquad \text{an d} \qquad \bigcap_{j \in J} A_{j}
$$

Writing out the elements of each set, we can determine that

$$
\bigcup_{j \in J} A_{j} = A_{- 1} \cup A_{0} \cup A_{1} = \{- 3, - 2, - 1, 0, 1, 2, 3 \}
$$

and

$$
\bigcap_{j \in J} A_{j} = A_{- 1} \cap A_{0} \cap A_{1} = \{- 1, 0, 1 \}
$$

Try answering the same questions with different index sets.

For instance, consider  $K = \{1,2,3,4,5\}$  or  $L = \{-3, - 2, - 1,0,1,2,3\}$ .

Example 3.6.7. Define the index set  $I = \mathbb{N}$ . For every  $i \in I$ , define the set

$$
C_{i} = \left\{x \in \mathbb {R} \mid 1 \leq x \leq \frac{i + 1}{i} \right\}
$$

Then we claim that

$$
\bigcup_{i \in I} C_{i} = \{y \in \mathbb {R} \mid 1 \leq y \leq 2 \} \quad \text{an d} \quad \bigcap_{i \in I} C_{i} = \{1 \}
$$

Can you see why these are true? We will discuss the techniques required to prove such equalities later on. For now, we ask you to just think about why these are true. Can you explain them to a classmate or a friend? What sort of techniques might you use to prove these claims?

Example 3.6.8. Let  $S$  be the set of students taking this course. For every  $s \in S$ , let  $C_s$  be the set of courses that student  $s$  is taking this semester. What do the following expressions represent?

$$
\bigcup_{s \in S} C_{s} \qquad \text{an d} \qquad \bigcap_{s \in S} C_{s}
$$

We bet you can identify at least one element of the set on the right!

# 3.6.4 Partitions

Now that we have a way of writing down a union of many sets, we can define a helpful notion: that of a partition. Linguistically speaking, a partition is a way of "breaking something apart into pieces", and that's pretty much what this word means, mathematically speaking.

To wit, a partition is just a collection of subsets of a set that do not overlap and whose union is the entire set. Let's write down that definition here and then see some examples and non-examples. We will have occasion to use this definition many times in the future, so let's get a handle on it now while we're talking about sets and indexed unions.

Definition 3.6.9. Let  $A$  be a set. A partition of  $A$  is a collection of sets that are pairwise disjoint and whose union is  $A$ .

That is, a partition is formed by an index set  $I$  and non-empty sets  $S_{i}$  (defined for every  $i \in I$ ) that satisfy the following conditions:

(1) For every  $i\in I$ $S_{i}\subseteq A$  
(2) For every  $i,j\in I$  with  $i\neq j$  , we have  $S_{i}\cap S_{j} = \varnothing$  
(3)  $\bigcup_{i\in I}S_{i} = A$

The sets  $S_{i}$  are called parts of the partition.

The idea here is that the sets  $S_{i}$  "carve up" the set  $A$  into non-overlapping, nonempty pieces.

Example 3.6.10. Let's see a couple of examples.

(1) Consider the set  $\mathbb{N}$ . Let  $O$  be the set of odd natural numbers, and let  $E$  be the set of even natural numbers. Then  $\{O,E\}$  is a partition of  $\mathbb{N}$ . This is because

- $E, O \neq \emptyset$ , and  
$E,O\subseteq \mathbb{N}$  , and  
$E\cap O = \emptyset$  , and  
$E\cup O = \mathbb{N}$

(2) Consider the set  $\mathbb{R}$ . For every  $z \in \mathbb{Z}$ , define the set  $S_z$  by

$$
S_{z} = \left\{r \in \mathbb {R} \mid z \leq r <   z + 1 \right\}
$$

We claim  $\{.,S_{-2},S_{-1},S_0,S_1,S_2,\ldots \}$  is a partition of  $\mathbb{R}$ . Can you see why? Try to write out the conditions required for this collection of sets to be a partition, and see if you can understand why they hold.

Specifically, remember that we need these sets to be pairwise disjoint. This means that any two sets must be disjoint. Notice that this is quite different from requiring the intersection of all the sets together to be empty.

For instance, consider the collection of sets

$$
\left\{\{1, 2 \}, \{2, 3 \}, \{3, 4 \} \right\}
$$

This collection is not pairwise disjoint because, for example,

$$
\{1, 2 \} \cap \{2, 3 \} = \{2 \} \neq \emptyset
$$

However, the intersection of all three sets is empty, because no element is common to all three of them together.

Example 3.6.11. Now, let's see a couple of non-examples.

(1) Consider the set  $\mathbb{R}$ . Let  $P$  be the set of positive real numbers and let  $N$  be the set of negative real numbers. Then  $\{N, P\}$  is not a partition because  $0 \notin N \cup P$ .

Can you modify the choices we made here to identify a partition of  $\mathbb{R}$  into two parts?

(2) Consider the set  $\mathbb{Z}$ . Let  $A_{2}$  be the set of integers that are multiples of 2, let  $A_{3}$  be the set of integers that are multiples of 3, and let  $A_{5}$  be the set of integers that are multiples of 5. The collection  $\{A_{2}, A_{3}, A_{5}\}$  is not a partition for two reasons.

First, these sets are not pairwise disjoint. Notice that  $6 \in A_2$  and  $6 \in A_3$ , since  $6 = 2 \cdot 3$ . Second, these sets do not "cover" all of  $\mathbb{Z}$ . Notice that  $7 \in \mathbb{Z}$  but  $7 \notin A_2 \cup A_3 \cup A_5$ .

As we mentioned, we will have occasion to use this definition frequently in the future, so keep it in mind.

# 3.6.5 Questions & Exercises

# Remind Yourself

Answering the following questions briefly, either out loud or in writing. These are all based on the section you just read, so if you can't recall a specific definition or concept or example, go back and reread that part. Making sure you can confidently answer these before moving on will help your understanding and memory!

(1) What is an index set?  
(2) Let  $I = \mathbb{N}$ , and for every  $i \in I$ , let  $A_i = \{i, -i\}$ . Why are the following sets all the same set?

$$
\bigcup_{i \in I} A_{i} \qquad \bigcup_{x \in \mathbb {N}} A_{x} \qquad \bigcup_{j \in I} A_{j}
$$

By the way, what are the elements of this set?

(3) List the elements of the following sets:

(a)  $\bigcup_{x\in \mathbb{N}}\{x\}$  
(b)  $\bigcap_{x\in \mathbb{N}}\{x\}$  
(c)  $\bigcup_{x\in \mathbb{N}}\{x,0, - x\}$

(4) Why do you think we didn't talk about an "indexed difference" or an "indexed complementation", and only talked about unions and intersections?  
(5) What is a partition? What conditions does a collection of sets have to satisfy to be a partition of a set?

# Try It

Try answering the following short-answer questions. They require you to actually write something down, or describe something out loud (to a friend/classmate, perhaps). The goal is to get you to practice working with new concepts, definitions, and notation. They are meant to be easy, though; making sure you can work through them will help you!

(1) Let  $A = \{-2, -1, 0, 1, 2\}$ . Let  $B = \{1, 3, 5\}$ .

For every  $i\in \mathbb{Z}$ , let  $S_{i} = \{i - 2,i,i + 2,i + 4\}$ .

What is  $\bigcup_{i\in A}S_i?$  What is  $\bigcap_{x\in B}S_x?$

(2) For every  $n \in \mathbb{N}$ , let  $A_{n} = [n]$ . What is  $\bigcap_{n \in \mathbb{N}} A_{n}$ ? What about  $\bigcup_{n \in \mathbb{N}} A_{n}$ ?  
(3) Find a way to write the set of all integers between -10 and 10 (inclusive) using set-builder notation. Then, define the same set using an indexed union. Can you do this in a way so that the sets in your union are pairwise disjoint (meaning that no two of them have any elements in common)? (Hint: Yes, you can.)

(4) For every  $n \in \mathbb{N}$ , let  $M_{n}$  be the set of all multiples of  $n$ . (For example,  $M_{3} = \{3, 6, 9, \ldots\}$ .) Write a definition for  $M_{n}$  using set-builder notation. Then, express  $\mathbb{N}$  as a union, using these sets.

(Challenge: Can you use these sets to define a partition of  $\mathbb{N}$ ?)

(5) Let  $X$  be any set. What is  $\bigcup_{S\in \mathcal{P}(X)}S?$  What about  $\bigcap_{S\in \mathcal{P}(X)}S?$

(It might help to try this with a specific set, like  $X = \{1,2\}$ , to see what happens, first.)

(6) Identify an index set and define some sets that allow you to express  $\mathbb{Q}$  as an indexed union.

Can you do this so that there are infinitely many elements in the index set?

(Challenge: Can you make this collection a partition of  $\mathbb{Q}$ ?)

# 3.7 Cartesian Products

There is one more way of "combining" sets to produce other sets that we want to investigate. This method is based on the idea of order. When we define sets by listing the elements, the order is irrelevant; that is, the sets  $\{1,2,3\}$  and  $\{3,1,2\}$  and  $\{2,1,3\}$  are all equal because they contain the same elements. (More specifically, they are all subsets of each other in both directions). Looking at mathematical objects where order is relevant, though, allows us to combine sets in new ways and produce new sets.

You are likely already familiar with the idea of the real plane,  $\mathbb{R}^2$  (also known as the Cartesian plane after the French mathematician René Descartes). Each "point" on the plane is described by two values, an  $x$ -coordinate and a  $y$ -coordinate, and the order in which we write those coordinates is important. We usually think of the  $x$ -coordinate as first and the  $y$ -coordinate as second, and this helps to distinguish two points based on this order. For instance, the point  $(1,0)$  lies on the  $x$ -axis but the point  $(0,1)$  lies on the  $y$ -axis. They are not the same point.

There is a deeper, mathematical idea underlying the Cartesian plane. Given any two sets,  $A$  and  $B$ , we can look at the set of all ordered pairs of elements from  $A$  and  $B$ . By pair we mean an expression  $(a, b)$  where  $a$  and  $b$  are elements of  $A$  and  $B$ , respectively. By ordered we mean that writing  $a$  first and  $b$  second is important. In the case of the real plane, it is especially important because any real number could appear as the  $x$ -coordinate or the  $y$ -coordinate of a point, but the point  $(x, y)$  is generally different from the point  $(y, x)$ . (When are they equal? Think carefully about this.)

# 3.7.1 Definition

Let's give an explicit definition of this new set before examining some examples.

Definition 3.7.1. Given two sets,  $A$  and  $B$ , the Cartesian product of  $A$  and  $B$  is written as  $A \times B$  and defined to be

$$
A \times B = \{(a, b) \mid a \in A a n d b \in B \}
$$

This definition tells us that the Cartesian product  $A \times B$  collects into a new set all of the ordered pairs  $(a, b)$ , where  $a$  is allowed to be any element of  $A$  and  $b$  is allowed to be any element of  $B$ .

# Some Technicalities

Notice that we have dropped the assumption of a universal set  $U$ . We have discussed some of the issues that arise when we do not specify a universal set, but from now on the sets we work with will not address any of these issues. Accordingly, we will only specify a universal set when not doing so would lead to ambiguity.

In the case of this definition, we could specify a universal set by defining the ordered pair  $(a,b)$  as a set. Specifically, we could define

$$
(a, b) = \{\{a \}, \{a, b \} \}
$$

This definition incorporates the order of the pair, as well, in the sense that

$$
(a, b) = (c, d) \text{if an do nl yi f} a = c \text{an d} b = d
$$

Checking the singleton element in the set tells us the first coordinate, and checking the other element in the set with two elements tells us the second coordinate. If we have the ordered pair  $(a, a)$ , then the set reduces to  $\{\{a\}\}$ , which tells us  $a$  appears in both coordinates.

Using this definition, we could use the universal set  $U = \mathcal{P}(\mathcal{P}(A \cup B))$ . We won't delve into the technical details of these sets and definitions, but we thought it prudent to point out that such definitions exist. The important point to remember from this section is given above:

Two ordered pairs are equal if and only if both of their coordinates are equal.

This is why we call them ordered pairs.

# 3.7.2 Examples

The Cartesian plane is  $\mathbb{R} \times \mathbb{R}$ , which is why we sometimes see this written as  $\mathbb{R}^2$ . Indeed, if  $A = B$ , then we sometimes write the Cartesian product as  $A \times A = A^2$ , if there is no confusion about the fact that  $A$  is a set (and not a number). Let's see some more examples where the two sets in the Cartesian product are not the same.

Example 3.7.2. Define the sets  $A = \{a, b, c\}$  and  $B = \{6, 7\}$  and  $C = \{b, c, d\}$ . Then we can list the elements of the following Cartesian products:

$$
A \times B = \{(a, 6), (a, 7), (b, 6), (b, 7), (c, 6), (c, 7) \}
$$

$$
B \times C = \{(6, b), (6, c), (6, d), (7, b), (7, c), (7, d) \}
$$

$$
A \times C = \{(a, b), (a, c), (a, d), (b, b), (b, c), (b, d), (c, b), (c, c), (c, d) \}
$$

$$
C \times B = \{(b, 6), (b, 7), (c, 6), (c, 7), (d, 6), (d, 7) \}
$$

Notice that, in general,  $B \times C \neq C \times B$ , as this example shows.

(Can you identify the situations where  $A \times B = B \times A$ ? What conditions must we impose on the sets  $A$  and  $B$  to make this equality true?)

# Ordered Triples and Beyond

This idea also extends to Cartesian products of three or more sets. We simply write ordered triples for a Cartesian product of three sets and, in general, for the Cartesian product of  $n$  sets, we write ordered  $n$ -tuples. (Again, we point out that there are set-theoretic ways of defining these ordered  $n$ -tuples, but we will not investigate those details.)

Example 3.7.3. The Cartesian product  $\mathbb{N} \times \mathbb{N} \times \mathbb{N}$  (sometimes written as  $\mathbb{N}^3$ ) is the set of all ordered triples of natural numbers. For instance,  $(1,2,3) \in \mathbb{N}^3$  and  $(7,7,100) \in \mathbb{N}^3$ , but  $(0,1,2) \notin \mathbb{N}^3$  and  $(1,2,3,4) \notin \mathbb{N}^3$ .

Notice the subtle distinction between  $\mathbb{N}^3$  and  $(\mathbb{N}\times \mathbb{N})\times \mathbb{N}$ . A typical element of  $\mathbb{N}^3$  is an ordered triple whose coordinates are each a natural number. A typical element of  $(\mathbb{N}\times \mathbb{N})\times \mathbb{N}$  is an ordered pair, the first coordinate of which is also an ordered pair (of natural numbers) and the second coordinate of which is a natural number. That is,  $((1,2),3)\in (\mathbb{N}\times \mathbb{N})\times \mathbb{N}$  but  $((1,2),3)\notin \mathbb{N}^3$ . This shows the two are different sets.

There is, however, a natural way of relating the two sets which essentially "drops the parentheses" around the first coordinate (the ordered pair). We will discuss this later on when we examine functions and bijections. For now, though, we just want you to notice the subtle differences between the two sets and remember that a Cartesian product of two sets is a set of ordered pairs, where each coordinate is drawn from the corresponding constituent set.

Example 3.7.4. What happens if  $B = \varnothing$ , say? Look back at the definition of  $A \times B$ . There are actually no elements of  $B$  to write as the second "coordinate" of the ordered pair, so we actually have no elements of  $A \times B$  to include! Thus,

$$
A \times \varnothing = \varnothing
$$

for any set  $A$ . Similarly,  $\varnothing \times B = \varnothing$ , for any set  $B$ .

# 3.7.3 Questions & Exercises

# Remind Yourself

Answering the following questions briefly, either out loud or in writing. These are all based on the section you just read, so if you can't recall a specific definition or concept or example, go back and reread that part. Making sure you can confidently answer these before moving on will help your understanding and memory!

(1) What is the difference between  $\mathbb{R} \times \mathbb{N}$  and  $\mathbb{N} \times \mathbb{R}$ ? Give an example of an ordered pair that is an element of one set, but not the other. Then, give an example of an ordered pair that is actually an element of both sets.  
(2) What is  $\varnothing \times \mathbb{Z}$ ?  
(3) Write out all the elements of the set  $\{\heartsuit, \diamond\} \times \{\odot, \square, \heartsuit\}$ .  
(4) What is the difference between  $(\mathbb{N} \times \mathbb{N}) \times \mathbb{N}$  and  $\mathbb{N} \times (\mathbb{N} \times \mathbb{N})$ ? Why aren't they technically the same set? Can you explain why they are "essentially" the same set?  
(5) Let  $A, B, C$  be sets. Suppose  $A \subseteq B$ . Do you think  $A \times C \subseteq B \times C$  is true? Why or why not?  
(6) Give an example of a set  $S$  such that  $\left(\frac{1}{2}, - 1\right)\in S$

# Try It

Try answering the following short-answer questions. They require you to actually write something down, or describe something out loud (to a friend/classmate, perhaps). The goal is to get you to practice working with new concepts, definitions, and notation. They are meant to be easy, though; making sure you can work through them will help you!

(1) Write out the elements of  $[3] \times [2]$ .

Can you make a conjecture about how many elements  $[m] \times [n]$  has, for any  $m, n \in \mathbb{N}$ ? (How might you try to prove your conjecture?)

(2) Give an example of an element of the set  $\mathbb{N}\times \mathcal{P}(\mathbb{Z})$  
(3) Give an example of an element of the set  $\left((\mathbb{R}\times \mathbb{N})\times \mathbb{Q}\right)\cap \left((\mathbb{Q}\times \mathbb{Z})\times \mathbb{N}\right)$ .  
(4) Give an example of sets  $C, D$  such that  $C \times D = D \times C$ .

Follow-up challenge: Can you characterize all possible situations like this one. What must be true about  $C$  and  $D$ ? Can you prove it?

(5) Write out the elements of  $\mathcal{P}\big([1]\times [2]\big)$ .

(6) For every  $n\in \mathbb{N}$ , let  $A_{n} = [n]\times [n]$ . Consider the set

$$
B = \bigcup_{n \in \mathbb {N}} A_{n}
$$

Is  $B = \mathbb{N}\times \mathbb{N}$  or not? Explain, with examples.

(7) If you know some simple computer programming, try writing code (in your favorite language) that will input  $m, n \in \mathbb{N}$  and print out all the elements of  $[m] \times [n]$ . (Use some pseudocode if you're not totally comfortable with programming.) How long do you think this takes to run, depending on  $m$  and  $n$ ?

# 3.8 [Optional Reading] Defining the Set of Natural Numbers

Our goal in this section is to put the natural numbers  $\mathbb{N}$  on a rigorous, mathematical foundation. Specifically, we will prove that the natural numbers exist, by defining and deriving them from the axioms and principles of set theory. We will then discuss a few of their properties. We will use some of those properties to define and prove the Principle of Mathematical Induction in Chapter 5, after discussing some basic principles and results of mathematical logic.

# 3.8.1 Definition

How do we define the natural numbers in terms of sets? We intuitively know what they are. We start with 1 and repeatedly add 1, obtaining all of the other natural numbers. Thus, we have to identify what we mean by "1" and what we mean by "add 1", in terms of sets. To do this, let's start by thinking about 0. We stated before that we will not include 0 in the set  $\mathbb{N}$ , but some authors do, and it will aid us in deriving  $\mathbb{N}$ , right now, to consider it. We know of exactly one set that contains no elements, the empty set. Thus, it makes sense to associate 0 with the empty set; in fact, we define  $0 = \emptyset$ . Next, we wish to define 1, and following our definition of 0, it makes sense to choose a set that has exactly one element. (A set with one element is also known as a singleton.) There are several such sets:

$$
\{\varnothing \}, \{\{\varnothing \} \}, \{\{\varnothing , \{\varnothing \} \} \} \}
$$

How do we choose a representative singleton to represent 1? Keeping in mind that we want to continue this process and eventually define 2 (and 3, and so on) in terms of previous numbers, it makes sense now to define 1 in terms of the only object we have at our disposal: 0. Thus, let us choose to define

$$
1 = \{0 \} = \{\varnothing \}
$$

This guarantees  $0 \neq 1$ .

Next to define 2, we consider sets containing two elements, like

$$
\{\varnothing , \{\varnothing \} \}, \{\varnothing , \{\{\varnothing \} \} \}, \{\{\varnothing \}, \{\{\varnothing \} \} \}
$$

and so on. We seek a natural representative, and we notice that the first set listed above contains the two objects, 0 and 1, that we have already defined! Thus, defining  $2 = \{0,1\}$  is a natural choice and, again, we know  $2 \neq 0$  and  $2 \neq 1$ .

# Successors

This gives us an intuitive idea of how to continue this process and define any natural number: for any  $n \in \mathbb{N}$ , we define

$$
n = \{0, 1, 2, \dots , n - 2, n - 1 \}
$$

However, given a set, it would be quite difficult to verify, using this definition, whether or not that set represents a natural number. We would like a better definition of the elements of  $\mathbb{N}$ ; we want to know, given any set, whether it belongs in  $\mathbb{N}$ . Look back at the element  $n$  above; we could also write

$$
n = \{0, 1, 2, \dots , n - 2, n - 1 \} = \{0, 1, 2, \dots , n - 2 \} \cup \{n - 1 \} = (n - 1) \cup \{n - 1 \}
$$

Look at that! We have a natural way of defining an element of  $\mathbb{N}$  in terms of the previous element and in terms of set operations. This motivates the following definition.

Definition 3.8.1. Given any set  $X$ , the successor of  $X$ , denoted by  $S(X)$ , is defined to be  $S(X) = X \cup \{X\}$ .

This definition applies to all sets, but in the context of natural numbers, it means that the successor of  $n$  is precisely that natural number we "know" intuitively to be one larger, namely  $n + 1$ .

# Inductive Sets

This brings us closer to our definition of  $\mathbb{N}$ . We certainly want  $1 \in \mathbb{N}$  and we also want  $S(n) \in \mathbb{N}$  for any element  $n \in \mathbb{N}$ . To codify this symbolically, we make the following definitions:

Definition 3.8.2. A set  $I$  is called inductive provided

1. $1 \in I$
2. If  $n \in I$ , then  $S(n) \in I$ , as well.

Certainly,  $\mathbb{N}$  itself (as we hope to define it) should be an inductive set. Are there other inductive sets? Think about this. What properties would they have? Would they contain elements that are not natural numbers? We don't want to address these questions in depth, but for the sake of our discussion here, we will point out that there are, indeed, other inductive sets. We don't want any of those sets to be  $\mathbb{N}$ , so we make this definition:

Definition 3.8.3. The set of all natural numbers is the set

$$
\mathbb {N} := \{x \mid f o r e v e r y i n d u c t i v e s e t I, x \in I \}
$$

Put another way,  $\mathbb{N}$  is the smallest inductive set, in the sense of set inclusion:

$$
\mathbb{N} = \bigcap_{I\in \{S|S\text{isinductive}\}}I
$$

This dictates that  $\mathbb{N}$  is a subset of every inductive set.

This gives us the "checking property" we desired. Any set  $x$  is a natural number (i.e.  $x \in \mathbb{N}$ ) if and only if it is an element of every inductive set (i.e.  $x \in I$  for every inductive set  $I$ ). This also tells us that  $\mathbb{N} \subseteq I$  for every inductive set  $I$ .

There are some other set theoretic discussions that could be made here: How do we know that such an infinite set exists? (In actuality, we need to make this an axiom of set theory! Assuming these types of sets exist, how do we characterize those other inductive sets that are not  $\mathbb{N}$ ? Addressing these questions lies outside the scope and goals of this course, so we will not address them. We will, however, mention a few properties of  $\mathbb{N}$  now, specifically ones that will be useful in setting mathematical induction on a rigorous foundation. (In case you're wondering, think about the set of integers,  $\mathbb{Z}$ . Try to explain why this set is, indeed, inductive. What about  $\mathbb{R}$ ? What about  $\mathbb{Z} - \mathbb{N}$ ?)

# Properties of  $\mathbb{N}$

Before we define the principle of induction, let's think about some of the common properties and uses of natural numbers: orderings and arithmetic. Given any two natural numbers, we can compare them and decide which one is larger and which one is smaller (or if they are equal). We usually write this with symbols like  $1 < 3$ ,  $1 \leq 5$ ,  $4 \not\leq 2$ ,  $3 = 3$ , etc.

Can we phrase these comparisons in terms of sets, knowing that we have now defined the elements of  $\mathbb{N}$  as sets, themselves? Yes, we can! Look back at the definition of successor. Built into that definition is the fact that  $X \in S(X)$ ! This observation gives us the following definition:

Definition 3.8.4. Given two natural numbers  $m, n \in \mathbb{N}$ , we write  $m < n$  if and only if  $m \in n$ .

This defines an order relation on the set  $\mathbb{N}$ . We will discuss the concepts of relations and orders later on in the book (in Section 6.3).

What about arithmetic? What is  $m + n$  in terms of the sets  $m$  and  $n$ ? How do we define this operation and its output? How do we know  $m + n$  is another natural number? Can we be sure that  $m + n = n + m$ ? These are questions we can address later on after discussing functions and relations.

# 3.8.2 Principle of Mathematical Induction

For now, let us present a more rigorous version of induction:

Theorem 3.8.5 (Principle of Mathematical Induction). Let  $P(n)$  be some "fact" or "observation" that depends on the natural number  $n$ . Assume that

1. $P(1)$  is a true statement.  
2. Given any  $k \in \mathbb{N}$ , if  $P(k)$  is true, then we can conclude necessarily that  $P(k + 1)$  is true.

Then the statement  $P(n)$  must be true for every natural number  $n \in \mathbb{N}$ .

Let us first prove this theorem before discussing its assumptions and consequences in detail.

Proof. Define the set  $S$  to be the natural numbers for which the statement  $P$  is true. That is, define  $S = \{n \in \mathbb{N} \mid P(n) \text{ istrue}\}$ . By definition,  $S \subseteq \mathbb{N}$ .

Furthermore, the assumptions of the theorem guarantee that  $1 \in S$  and that whenever  $k \in S$ , we know  $k + 1 \in S$ , as well. This means  $S$  is an inductive set. By the observation we made after defining  $\mathbb{N}$ , we know that  $\mathbb{N} \subseteq S$ .

Therefore  $S = \mathbb{N}$ , so the statement  $P(n)$  is true for every natural number  $n$ .

This is pretty slick, right? It seems that all of the desired conclusions "fell out of" our definitions! In this sense, the definitions and axioms are natural choices, because they accomplish what our intuition already "knew" about the set  $\mathbb{N}$  and its properties.

There are a few minor issues that we have left undiscussed. Specifically, what do we mean by a "fact" or "observation" that depends on a natural number  $n$ ? What does it mean to necessarily conclude that  $P(k + 1)$  is true when  $P(k)$  is true? What do we even mean by true? These are all deep mathematical questions and involve a thorough study of logic, and we will discuss these issues in the next chapter! Onward! Huzzah!

# 3.8.3 Questions & Exercises

# Remind Yourself

Answering the following questions briefly, either out loud or in writing. These are all based on the section you just read, so if you can't recall a specific definition or concept or example, go back and reread that part. Making sure you can confidently answer these before moving on will help your understanding and memory!

(1) What is an inductive set? Give an example of one that is not  $\mathbb{N}$  or  $\mathbb{Z}$ .  
(2) We defined  $S = \{n \in \mathbb{N} \mid P(n) \text{ istrue}\}$  in the proof of the Principle of Mathematical Induction. What does this mean? Describe this set in words.  
(3) Come up with your own analogy for how Induction works.

# Try It

Try answering the following short-answer questions. They require you to actually write something down, or describe something out loud (to a friend/classmate, perhaps). The goal is to get you to practice working with new concepts, definitions, and notation. They are meant to be easy, though; making sure you can work through them will help you!

(1) What if we changed the definition of successor to be  $S(X) = \{X\}$ . Using  $0 = \varnothing$ , what are 1, 2, 3, and 4 in terms of sets? Do they still satisfy the equality  $n = \{0, 1, \dots, n - 1\}$ ? If not, do they satisfy some other relationship? Explore!  
(2) Have a debate with a friend about whether or not infinite sets exist. Why do we need to assume the existence of an inductive set to define  $\mathbb{N}$ ? Does this seem valid to you? Does it make sense, physically? Mathematically?  
(3) Consider a simple arithmetic statement, like  $1 + 2 = 3$ . Write out the numbers 1, 2, and 3 in terms of sets, and see how this equation might make sense. What does "+" mean, in this context?  
(4) Investigate how one might define  $\mathbb{Z}$ , using  $\mathbb{N}$ . Do some exploring online or in books, or make up an idea on your own.

# 3.9 Proofs Involving Sets

Now that we've gone through many definitions and examples, to introduce what sets are and how to manipulate them, let's actually write up some rigorous, mathematically correct, and well-written proofs about sets. All of the propositions/lemmas contained here are useful facts that we can cite later on, and we would expect you to be able to prove claims like these. (Note: A lemma is just a small result that requires some proof, and can be cited later to prove more significant theorems.) Furthermore, all of these proofs are of the type of quality and rigor that we will expect from you in the future, the very near future … Use these as guidelines, if you'd like!

# 3.9.1 Logic and Rigor: Using Definitions

The main point we'd like to emphasize here—as we transition from descriptive, "wordy", and intuitive proofs into more rigorous, mathematically correct, and formally-written ones—is that formal definitions are very important. Fundamentally, they're essential because when we say, for example, " $A \cup B$ ", we need to know that you know exactly what that symbol means and how it operates on the sets  $A$  and  $B$ .

As another example, when we say "Prove  $A = B$ ", we have a very specific goal in mind, and you need to be on the same page. It always helps to have an intuitive understanding of the main concepts—"Oh, the statement  $A = B$  just

means that  $A$  and  $B$  have the same elements in them"—but this is not the type of language/ideas we want to use in a rigorous proof. To prove a statement like  $A = B$ , we need you to appeal to the definition of "=" in the context of sets:  $A = B$  if and only if  $A \subseteq B$  and  $B \subseteq A$ .

This is what we mean when we say "satisfy a definition" or "appeal to a definition": to prove that some mathematical object has a certain property, you must demonstrate that the object satisfies the formal definition of that property. If you aren't familiar with that definition, or have forgotten how to state it precisely … by all means, go look it up! We realize this is a lot of new information to ingest, and there's nothing wrong with forgetting something when it's still new to you. By doing this, you'll start to internalize these ideas more quickly and more solidly.

You'll see how we use the definitions of, for instance, " $\subseteq$ " and " $=$ " and " $\cap$ " and so on in the examples below. For each proposition/lemma, we will end up writing a formal proof, but we will also write a little bit about how we would approach coming up with such a proof. Oftentimes this is the difficult part! We think you'll notice that many of those explanations will amount to just recalling a relevant definition and thinking about what it means and how it applies in the given situation. In a way, that's what a lot of mathematics is. We just allow our definitions we use to get more and more complicated.

# 3.9.2 Proving " $\subseteq$ "

Recall the definition of subset, because we will use it frequently here:

Definition 3.9.1. Given two sets  $A$  and  $B$ , if every element of  $A$  is also an element of  $B$ , then we say  $A$  is a subset of  $B$ .

Say we are presented with the following problem:

Let  $A$  be the set … and let  $B$  be the set … Prove that  $A \subseteq B$ .

How can we satisfy the definition of  $A \subseteq B$  to prove this claim? Yes, the intuitive idea is that "every element of  $A$  is also an element of  $B$ ", but we shouldn't just try to dance around the issue and try to make that sentence our conclusion. Rather, we need to verify that every element of  $A$  is also necessarily an element of  $B$ . This is where the wonderful phrase "arbitrary and fixed" will come in handy!

# The Phrase "Arbitrary and Fixed"

How can we talk about all possible elements of  $A$  all at once? Of course, we might not need to do this if  $A$  has only, say, 3 elements; then, we can just work with them one by one. But what if  $A$  has 100 elements? Or 1 million? Or infinitely many? How can we prove something about all of them at once in a reasonable way?

What we will do is introduce an arbitrary and fixed element of  $A$  so we have something to work with. This element will be arbitrary in the sense that

we make no extra assumptions about what it is or what properties it has, only that it is an element of  $A$ . This element will be fixed in the sense that we will assign it some variable name (usually a letter, like  $a$  or  $x$  or  $t$  or something) and this letter will represent the same object throughout the remainder of our proof. As long as we can prove our goal for this element, then we will have simultaneously proven something about all elements of  $A$ . Voilà!

# Examples

Let's see this process in action to really get the point across. We'll begin with the statement to be proven, then describe our thought processes in coming up with a proof, and then present our formal, written proof.

Lemma 3.9.2. Let  $A, B, X$  be any sets.

If  $X \subseteq A$  and  $X \subseteq B$ , then  $X \subseteq A \cap B$ .

Intuition: Consider drawing a Venn diagram to represent this situation. To make sure the assumptions  $X \subseteq A$  and  $X \subseteq B$  both hold true, we need to make the set  $X$  "lie inside" both  $A$  and  $B$ . Accordingly, this means  $X$  must lie entirely "inside" where  $A$  and  $B$  overlap, which is what  $A \cap B$  represents. This helps us realize that this statement is, indeed, True. But it doesn't prove anything!

To prove the statement, we will introduce an arbitrary and fixed element  $x \in X$ . What do we know about it? Well, we assumed that  $X \subseteq A$ . The definition of " $\subseteq$ " means that any element of  $X$  is also an element of  $A$ . But we know  $x$  is an element of  $X$ ; this means it is also an element of  $A$ . How convenient! We can make some similar statements about  $x$  and  $X$  and  $B$  that will tell us  $x \in B$ . What does this mean, overall? Oh hey, the definition of " $\cap$ " applies, and tells us  $x \in A \cap B$ . Brilliant! Now, let's write it up.

Proof. Let  $x \in X$  be arbitrary and fixed.

By assumption  $X \subseteq A$ , so  $x \in A$ , as well, by the definition of  $\subseteq$ .

Similarly, by assumption  $X \subseteq B$ , so  $x \in B$ , as well.

Since  $x \in A$  and  $x \in B$ , this means that  $x \in A \cap B$ , by the definition of  $\cap$ .

Overall, we have shown that whenever  $x \in X$ , it is also true that  $x \in A \cap B$ . Since  $x \in X$  was arbitrary, we conclude that  $X \subseteq A \cap B$ .

Not so bad, right? Let's try another one, a slightly harder one, even.

Proposition 3.9.3. Let  $A$  and  $B$  be any sets. Then,  $\mathcal{P}(A) \cap \mathcal{P}(B) \subseteq \mathcal{P}(A \cap B)$ .

Whoa, is this really true? Look back at Problem 6 in Section 3.5, and you'll see an example. This claim states that it is true, in general, and not just for that example. Let's figure out why, and then prove it.

Intuition: There are several layers of definitions at work here. In particular, the power set operation might be confusing to you. The key is to just remember

that definition:  $\mathcal{P}(A)$  is the set of all subsets of  $A$ . Now, the main claim here is one of a subset relationship: whatever the set  $\mathcal{P}(A) \cap \mathcal{P}(B)$  is (we'll analyze it later, but it's important that you recognize immediately what type of object it is: a set), it is supposed to be a subset of whatever the set  $\mathcal{P}(A \cap B)$  is. That's it, and it's important to notice that this is really motivates the overarching form of the forthcoming proof.

Without even having to think about what  $\mathcal{P}(A) \cap \mathcal{P}(B)$  means, we can be sure that our proof will start with "Let  $X \in \mathcal{P}(A) \cap \mathcal{P}(B)$  be arbitrary and fixed". This is because we need to satisfy the definition of " $\subseteq$ " by taking any old element of the set on the left and deducing that it is also an element of the set on the right. This is what we mean by the structure of the proof.

What does an element  $X \in \mathcal{P}(A) \cap \mathcal{P}(B)$  "look like"? It's a set, and it's an element of both  $\mathcal{P}(A)$  and  $\mathcal{P}(B)$ . This means … well, we're actually going to skip ahead and jump right into the formal proof now, because we'll just find ourselves repeating the same words down below anyway. But before going ahead to read ours, we think you should go off and try to write your own proof. Then, when you're done, you can compare and see whether you are correct, whether it has the same steps as ours, whether it's written clearly, and so on. See what you can do!

Proof. Let  $X \in \mathcal{P}(A) \cap \mathcal{P}(B)$  be arbitrary and fixed.

By the definition of  $\cap$ , this means  $X \in \mathcal{P}(A)$  and  $X \in \mathcal{P}(B)$ .

Since  $X \in \mathcal{P}(A)$ , we know  $X \subseteq A$ , by the definition of power set.

Similarly, since  $X\in \mathcal{P}(B)$  , we know  $X\subseteq B$

Since  $X \subseteq A$  and  $X \subseteq B$ , we know that  $X \subseteq A \cap B$  by Lemma 3.9.2 that we just proved.

Now, since  $X \subseteq A \cap B$ , we know  $X \in \mathcal{P}(A \cap B)$ , by the definition of power set.

Since  $X$  was arbitrary, we conclude that  $\mathcal{P}(A)\cap \mathcal{P}(B)\subseteq \mathcal{P}(A\cap B)$

Did you do what we did? Did you also cite the previous lemma? Did you instead prove that result all over again without realizing it? Consider that a lesson learned! One of the major benefits of proving results is that we get to use them in later proofs! There's nothing technically wrong with proving the previous result again in the middle of this proof; it just might save a little bit of time and writing to not do so. If you find yourself working on a problem and thinking, "Hey, this feels familiar …", go back and look for related theorems or lemmas or examples. Maybe you can use some already-acquired knowledge to your advantage.

# 3.9.3 Proving "="

# Double-Containment Proofs

Again, we will need to recall the definition of " $=$ " (in the context of sets), since we will be using it frequently here.

Definition 3.9.4. We say two sets,  $A$  and  $B$ , are equal, and write  $A = B$ , if and only if  $A \subseteq B$  and  $B \subseteq A$ .

That's it! It's completely built up from a previous definition, that of " $\subseteq$ " (since that of " $\supseteq$ " is completely equivalent). Thus, this isn't really a new technique, per se, because it's really a repeated application of a previous technique. That is to say, to prove  $A = B$ , we just need to use the technique used in the last subsection and prove  $A \subseteq B$  and then prove  $B \subseteq A$ .

This technique is so common, in fact, that it is given a name: double-containment. When we prove two sets are subsets of each other, both ways, and conclude that they are equal, we call this a double-containment proof.

# Examples

Let's see an example of this double-containment technique in action.

Lemma 3.9.5. Let  $A$  and  $B$  be any sets. Then,  $A - (A \cap B) = A - B$ .

Intuition: As usual, we could draw a Venn diagram to convince ourselves of this truth, but that doesn't prove anything. Instead, we will follow a double-containment proof. If we take an element  $x \in A - (A \cap B)$ , we can apply the definition of "-" first, and then "∩", to deduce something about  $x$ . Hopefully, it will tell us that  $x \in A - B$ . Then, if we take an element  $y \in A - B$ , we can apply some definitions to hopefully deduce that  $x \in A - (A \cap B)$ . Maybe we aren't sure yet exactly how to do so, but by looking at that Venn diagram and using the definitions, we can surely figure it out. Why don't you try to do it first, then read our proof!

Proof. We will show  $A - (A \cap B) = A - B$  by a double-containment proof.

$(\underline{\underline{\mathbf{\Pi}}}\subseteq)$  First, let  $x\in A - (A\cap B)$  be arbitrary and fixed. By the definition of  $-$  , we know that  $x\in A$  and  $x\notin A\cap B$  . This means it is not true that  $x$  is an element of both  $A$  and  $B$  . We already know  $x\in A$  , so we deduce that  $x\notin B$

Thus,  $x \in A$  and  $x \notin B$ , so by the definition of "-", we deduce that  $x \in A - B$ . This shows  $A - (A \cap B) \subseteq A - B$ .

$(\supseteq)$  Second, let  $y \in A - B$  be arbitrary and fixed. By the definition of "-", this means  $y \in A$  and  $y \notin B$ . Now, since  $y$  is not an element of  $B$ , this means that certainly  $y$  is not an element of both  $A$  and  $B$ . That is,  $y \notin A \cap B$ , by the definition of " $\cap$ ".

Since we know  $y \in A$  and  $y \notin A \cap B$ , we deduce that  $y \in A - (A \cap B)$ . This

shows  $A - B\subseteq A - (A\cap B)$

Overall, a double-containment proof has shown that  $A - (A \cap B) = A - B$ .

Look at the overall structure of this proof. We knew there would be two parts to it, since it is a double-containment proof, but we were also kind enough to point this out ahead of time for our intrepid reader, and separate those two sections appropriately. It would be technically correct to ignore this and just dive right in to the proof, but this might leave a reader confused. The whole point of a proof is to convince someone else of a truth that you have already figured out, so you might as well make it as easy as possible for them to follow what you're doing.

Let's see another example of proving two sets are equal. This one will be a little different, because one of the parts of the double-containment will make use of the complement operation. As a preview, spend a minute now thinking about why the statements  $A \subseteq B$  and  $\overline{B} \subseteq \overline{A}$  are equivalent (supposing there is some universal set  $A, B \subseteq U$ ). Draw a Venn diagram and try some examples. Try to prove it, even!

Proposition 3.9.6.

$$
\left\{x \in \mathbb {N} \mid x + \frac{8}{x} \leq 6 \right\} = \{2, 3, 4 \}
$$

Proof. Let's define  $A = \{x \in \mathbb{N} \mid x + \frac{8}{x} \leq 6\}$ , and  $B = \{2,3,4\}$ .

To show  $A = B$ , we will show  $A \subseteq B$  and  $B \subseteq A$ .

First, we will show  $B \subseteq A$ . We can consider each of the three elements separately, and verify that they satisfy the defining inequality of  $B$ :

$$
2 + \frac{8}{2} = 6 \leq 6
$$

$$
3 + \frac{8}{3} = \frac{1 7}{3} \leq 6
$$

$$
4 + \frac{8}{4} = 6 \leq 6
$$

Since  $2,3,4\in \mathbb{N}$ , we deduce that  $2\in A$  and  $3\in A$  and  $4\in A$ , so  $B\subseteq A$ .

Next, to show  $A \subseteq B$ , we will show that  $\overline{B} \subseteq \overline{A}$ , where the complement is taken in the context of  $\mathbb{N}$ . That is, we will show that all of the natural numbers  $1, 5, 6, 7, \ldots$  are not elements of  $A$ .

To show this, we will verify that the defining inequality of  $A$  is not satisfied by any of those elements.

The first two cases can be considered easily:  $1 + \frac{8}{1} = 9 \not\leq 6$  and  $5 + \frac{8}{5} = \frac{33}{5} \not\leq 6$ .

To consider the other cases, we can take an arbitrary and fixed  $x \in \mathbb{N}$  with  $x \geq 6$ . Notice, then, that  $x + \frac{8}{x} \geq 6 + \frac{8}{x} > 6$ , since  $\frac{8}{x} > 0$ .

This shows that only 2,3,4 satisfy the defining inequality of  $A$ .

Overall, by a double-containment argument, we have proven that  $A = B$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/44fa662e-a015-46fb-8608-ecf0fb518d19/81e06e1dc9d91df35866db38d220dad976686f0f8b5469e3c743dd1f853e7ac1.jpg)

Think carefully, again, about why the method employed in the second half of the proof is valid. (It is actually an instance of using the contrapositive of a conditional statement, but we haven't yet defined any of those terms; we will do so in the next chapter on logic.)

Let's see another example of proving set equality. This one is only slightly different in that we are proving some set is actually the empty set and, to do so, we will prove that it has no elements.

Proposition 3.9.7. For every  $n \in \mathbb{N}$ , define  $S_{n} = \mathbb{N} - [n]$ . Then

$$
\bigcap_{n \in \mathbb {N}} S_{n} = \varnothing
$$

We suggest you play around with this statement first, if it doesn't make sense. For instance, try identifying the element of the sets  $S_{1}$ , and  $S_{1} \cap S_{2}$ , and  $S_{1} \cap S_{2} \cap S_{3}$ , and so on. Try to come up with a candidate element of the big intersection on the left, and then figure out why it actually is not an element of that set. After that, try to figure out a formal proof and write it out; then, look at ours below!

Proof. Let's define  $T = \bigcap_{n\in \mathbb{N}}S_n$ , so we can refer to it later.

To prove  $T = \varnothing$ , we will show that  $T$  does not contain any elements. Notice that  $T$  is formed by an intersection of many sets of natural numbers, so it's clear that the only possibilities for elements of  $T$  are natural numbers.

Consider an arbitrary and fixed  $x \in \mathbb{N}$ . We want to show that  $x \notin T$ .

Observe that  $x \in [x] = \{1, 2, \ldots, x\}$ . Thus,  $x \notin \mathbb{N} - [x]$ , by the definition of "-".

By definition,  $T$  contains the elements that belong to all of the sets of the form  $\mathbb{N} - [n]$ . We have identified (at least) one set,  $\mathbb{N} - [x]$ , of the intersection such that  $x$  does not belong to that set. Accordingly,  $x$  cannot be an element of  $T$ , since it does not belong to all such sets. Therefore,  $x \notin T$ .

Since  $x \in \mathbb{N}$  was arbitrary, we have proven that  $T$  contains no natural numbers as elements, and therefore it has no elements at all.

Summary: Let's make one more statement about why this technique works. We showed that there are no elements of  $T$ , i.e. that  $T \subseteq \varnothing$ . This completes the entire process, because it is trivially true, as well, that  $\varnothing \subseteq T$ . (This claim holds for any set.) Thus, one of the parts of the double-containment argument is already achieved, and we can conclude  $T = \varnothing$ .

Alright, one more example. We want to include this one because it gives us further practice in working with indexed set operations. You will find many

similar problems in the exercises for this section. We encourage you to work on as many of them as you can!

Proposition 3.9.8. For every  $n \in \mathbb{N}$ , define  $A_{n} = \left\{x \in \mathbb{R} \mid 0 \leq x < \frac{1}{n}\right\}$ . Then,

$$
\bigcap_{n \in \mathbb {N}} A_{n} = \{0 \}
$$

Think about what this claim means. Draw a picture of the  $A_{n}$  sets on a number line. What does the " $\bigcap$ " intersection accomplish? Why does it work out that 0 is an element of that intersection? Why is it the only element?

The definition of  $\bigcap$  will be crucial in this proof, so let's recall the definition here. The key phrase is for every:

Definition 3.9.9. The intersection of a collection of sets  $A_{i}$  indexed by the set  $I$  is

$$
\bigcap_{i \in I} A_{i} = \{x \in U \mid x \in A_{i} f o r e v e r y i \in I \}
$$

where we assume there is a set  $U$  such that  $A_{i}\subseteq U$  for every  $i\in I$

That is, remember that the indexed intersection of several sets collects together the elements that belong to all of the constituent sets. Thus, in our proof below, you will see that we need to prove that (1) 0 is, indeed, an element of all of the  $A_{n}$  sets, and (2) no other number is an element of all of them, i.e. for every nonzero real number, we can identify at least one of the  $A_{n}$  sets such that the number is not an element of that set.

Proof. First, we will prove that

$$
\{0 \} \subseteq \bigcap_{n \in \mathbb {N}} A_{n}
$$

This requires us to show that  $0 \in A_{n}$  for every  $n \in \mathbb{N}$ .

Let  $n \in \mathbb{N}$  be arbitrary and fixed. Notice that the inequality  $0 \leq 0 < \frac{1}{n}$  does, indeed hold.

(Note: You might be worried because "in the limit" 0 is not less than every fraction  $\frac{1}{n}$  "all at once", but that is not the point! Think of it this way: Is  $0 \in A_1$ ? Yes,  $0 \leq 0 < 1$ . Is  $0 \in A_2$ ? Yes,  $0 \leq 0 < \frac{1}{2}$ . Is  $0 \in A_3$ ? Yes,  $0 \leq 0 < \frac{1}{3}$ . And so on. The inequality holds for every  $n \in \mathbb{N}$  individually, so 0 is an element of every such set. If you weren't worried about this, never mind! Move right along!)

Thus,  $0 \in A_n$  for every  $n \in \mathbb{N}$ , and so  $0 \in \bigcap_{n \in \mathbb{N}} A_n$ , by the definition of "  $\bigcap$  ".

This shows that  $\{0\} \subseteq \bigcap_{n\in \mathbb{N}}A_n$

Second, we will prove that

$$
\bigcap_{n \in \mathbb {N}} A_{n} \subseteq \{0 \}
$$

We will do this by considering the complements of these sets, in the context of  $\mathbb{R}$ . Specifically, we will show that

$$
\overline {{\{0 \}}} \subseteq \overline {{\bigcap_{n \in \mathbb {N}} A_{n}}}
$$

which means we will show that every nonzero real number is not an element of every  $A_{n}$ .

Let  $x \in \mathbb{R}$  be arbitrary and fixed, with the property that  $x \neq 0$ . Either  $x > 0$  or  $x < 0$ , then, so let's consider each case separately.

Case 1: Suppose  $x > 0$ . Consider the number  $\frac{1}{x} \in \mathbb{R}$ . Since the natural numbers are infinite and unbounded in  $\mathbb{R}$ , we can choose a natural number  $M$  that is bigger than that real number. That is, we can choose  $M \in \mathbb{N}$  such that  $M > \frac{1}{x}$ .

(Note: Think about why this works. We haven't proven that  $\mathbb{N}$  is infinite, or that the numbers "go on forever" along the number line of  $\mathbb{R}$ , but we hope these ideas make sense to you, intuitively.)

Take such an  $M \in \mathbb{N}$  with  $M > \frac{1}{x}$ . Since  $x > 0$ , we can multiply the inequality on both sides by  $x$ ; since  $M > 0$  (so  $\frac{1}{M} > 0$ ) we can then multiply again by  $\frac{1}{M}$ . This yields  $x > \frac{1}{M}$ . Accordingly  $x \notin A_M$ , because  $-\frac{1}{M} < x < \frac{1}{M}$  is False.

Since  $x \notin A_M$ , then surely  $x$  is not an element of all such sets. Therefore,  $x \notin \bigcap_{n \in \mathbb{N}} A_n$ .

Case 2: Next, suppose that  $x < 0$ . We will make a similar argument as the previous case; this time, we will just consider  $-x$ , since  $-x > 0$ . Using the same logic as above, we can surely identify a natural number  $M \in \mathbb{N}$  that satisfies  $M > \frac{1}{-x} = -\frac{1}{x}$ . Manipulating the inequality tells us that  $x < -\frac{1}{M}$ . Thus,  $x \notin A_M$ , and so  $x \notin \bigcap_{n \in \mathbb{N}} A_n$ .

Therefore, we have shown that any  $x \in \mathbb{R}$  with  $x \neq 0$  is not an element of at least one of the  $A_{n}$  sets, so any such  $x$  is not an element of their intersection. Thus,  $\{0\} \subseteq \bigcap_{n \in \mathbb{N}} A_{n}$ , and we have proven the claim by a double-containment argument.

This proof is harder than the other ones, we think, so make sure to read it a couple times to make sure you see what happens in every step. In particular, think about how we came up with the step where we chose  $M \in \mathbb{N}$  that satisfies  $M > \frac{1}{x}$ . Do you think we magically intuited that choice? Or do we think we recognized that we wanted  $x < \frac{1}{M}$  to be true for some  $M$ , and manipulated the inequality backwards to figure out how to make that happen?

# 3.9.4 Disproving Claims

# Motivating Example

Consider the following proposed claim:

For any sets  $F,G,H$  , if  $F\subseteq G\cup H$  , then either  $F\subseteq G$  or  $F\subseteq H$

Is this claim True? If so, how would we prove it? Well, we'd take an arbitrary and fixed element  $x \in F$ . Since  $F \subseteq G \cup H$ , this would tell us  $x \in G \cup H$ , as well. Accordingly, either  $x \in G$  or  $x \in H$ . Is that it? Are we done with the proof?

We hope you recognize that this does not work! In particular, we have not satisfied the definition of " $\subseteq$ " at the end. If our goal is to prove "either  $F \subseteq G$  or  $F \subseteq H$ ", then we should conclude that one or the other of those claims holds: that every element of  $F$  is also an element of  $G$ , or else every element of  $F$  is also an element of  $H$ .

What we found was that every element of  $F$  is itself either an element of  $G$  or  $H$ , but we cannot decide collectively that all elements of  $F$  are elements of one or the other,  $G$  or  $H$ . Read through these last two paragraphs again to make sure you follow that logical observation. It might be easy to actually write up a "proof" for this claim and not realize that you've made a false step!

# Identifying Errors

This recognition of an error is one of the skills we are developing, and it will be helpful in several ways. You'll notice that many exercises (some thus far, but many more as we move onwards) ask you to find the flaw in a proposed "proof" of some claim. By pointing out that there exists a flaw, we are perhaps helping you to find it (or them, as the case may be). Reading a proposed proof for logical, factual, and clarity errors is an essential skill. What's more, this careful reading of others' writing will necessarily make you a more critical reader of your own writing, and it will help you to catch potential errors like the one in the preceding paragraphs. Do not worry if you didn't catch it; now that you've seen it, you'll be on the lookout for similar mistakes in the future! Like we said, as well, this skill is ongoing development, and by the end of this book, you will be a great reader of mathematical proofs, as well as a great writer.

# Counterexamples

So, now what do we do? We just recognized that our "proof" above did not work. Does this mean the claim is actually False? Actually, all this means (so far) is that our attempt at a proof failed. Maybe some other logical route will magically take us to the elusive conclusion.

Or, maybe the claim really is False. How could we show that? Think about the logical form of the claim: it says some statement holds true for any sets  $F, G, H$ . It says that the assumption  $F \subset G \cup H$  will always imply, necessarily,

that  $F \subseteq G$  or  $F \subseteq H$ . To show that this does not always happen, we need to find what's called a counterexample.

We will discuss all of these ideas again in the next chapter, when we formalize logic, but what you need to know for now is this: a counterexample is a specific, detailed, and described example that illustrates how a statement about "every …" or "any …" or "all possible …" does not actually hold for every case. A counterexample amounts to disproving a statement that a whole class of objects has a certain property, by exhibiting one object in that class without that property.

# Example

Let's see how the process of finding and stating a counterexample would work for our example above.

Example 3.9.10. Recall the claim:

$$
\text{Fo ra ny se ts} F, G, H, \text{if } F \subseteq G \cup H, \text{th en ei th er} F \subseteq G \text{or} F \subseteq H.
$$

This claim is supposed to work for any sets  $F, G, H$ , so when we describe our counterexample, we better describe exactly what those three sets are going to be. We can't just explain our way around the issue and argue about how there might exist three sets out there with a certain property. Nope, we have to tell a reader exactly what they are by explicitly defining them. This is what the first line of our disproof of the claim will be, but we can't just jump right into that, because we don't know how to define them yet!

This is where the fun/work is: we need to play around with the desired properties of these sets to help us come up with an example. Recall that we want these sets to satisfy some properties: we should make sure the assumption  $F \subseteq G \cup H$  holds True, but we want the conclusion—that either  $F \subseteq G$  or  $F \subseteq H$ —to be False.

What does this mean? Well, we think you'll agree that, logically speaking, the "opposite" or "negation" of a statement like that would be "both  $F \not\subseteq G$  and  $F \not\subseteq H$ ". (This concept of logical negation will return in the next chapter; for now, we think you can understand it by applying the logical principles that guide your daily life. Soon, we will formalize this idea.)

We now have a specific goal: to find three sets  $F, G, H$  that satisfy all three of the following:

$$
\begin{array}{l} F \subseteq G \cup H \\ F \not \subseteq G \\ F \not \subset H \\ \end{array}
$$

One thing left to consider is what " $\nsubseteq$ " means. We have a definition of " $\subseteq$ ", so what is the "opposite" or "negation" of that? For  $F \subseteq G$  to be true, we require that every element of  $F$  is also an element of  $G$ ; so, if this fails, then we must have at least one element of  $F$  that is not an element of  $G$ . The same

observation applies to  $F \nsubseteq H$ . Now, we can restate our goals in a helpful way, by applying definitions:

Every element of  $F$  is an element of either  $G$  or  $H$

There is at least one element of  $F$  that is not an element of  $G$

There is at least one element of  $F$  that is not an element of  $H$

This will be incredibly helpful in finally finding our counterexample! We've boiled down all the essential parts of the claim and have restated the properties in a more intuitive way. The rest of the work is to just play around on some scratch paper and see what we can come up with. One approach is to draw a sort of "empty" Venn diagram, for  $F$  and  $G$  and  $H$  and their potential "overlaps", and then fill in enough elements so that the three above properties are satisfied.

The first condition requires the set  $F$  to "lie inside" both  $G$  and  $H$ , entirely; but, the second and third conditions require the existence of two elements of  $F$ , one of whom is not an element of  $G$  and the other of whom is not an element of  $H$ . That's all we need! A simple example, you might say, but an effective one, we say. Let's jump in and write up our disproof now:

Proof. The following claim is False:

For any sets  $F,G,H$  , if  $F\subseteq G\cup H$  , then either  $F\subseteq G$  or  $F\subseteq H$

We will disprove it with a counterexample.

Define  $F = \{1,2\}$  and  $G = \{1\}$  and  $H = \{2\}$ .

Notice that  $G \cup H = \{1, 2\}$ . Since  $F = G \cup H$ , then certainly  $F \subseteq G \cup H$ . Thus, the hypothesis of the claim holds true.

However, notice that  $2 \in F$  but  $2 \notin G$ . Thus,  $F \not\subseteq G$ .

Likewise, notice that  $1 \in F$  but  $1 \notin H$ . Thus,  $F \nsubseteq H$ .

Therefore, the claim is False.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/44fa662e-a015-46fb-8608-ecf0fb518d19/642aee34bc603d41ae46b63f5e51acd863d4d8236795f8e8a1c510bf57d5efb3.jpg)

One important lesson from this example is the following:

Tour counterexample does not have to be the most interesting or complicated one, nor do you somehow need to characterize all possible counterexamples. We just need to see one counterexample, and we need to see how it works.

That's it! This is exactly what we did in the above proof: we defined all of the important objects (the three sets  $F, G, H$ ), and then we pointed out and described all the relevant properties they had. We did not leave it to the reader to check that the counterexample works; we showed them the details. We did not argue that some such sets exist somewhere out there in the universe; we defined them explicitly.

This is important, and we expect your counterexamples to have similar proof structure to ours above. Most of the work will go on "behind the scenes", before

the proof starts, when you try to come up with your examples. Once you have it, though, just write it up much like we did.

# 3.9.5 Questions & Exercises

# Remind Yourself

Answering the following questions briefly, either out loud or in writing. These are all based on the section you just read, so if you can't recall a specific definition or concept or example, go back and reread that part. Making sure you can confidently answer these before moving on will help your understanding and memory!

(1) What is the definition of  $\subseteq$ ? How do we use it to prove  $A \subseteq B$ ?  
(2) What does it mean for two sets to be equal?  
(3) What is a double-containment proof?  
(4) What is a counterexample?  
(5) Suppose  $A, B, U$  are sets and  $A, B \subseteq U$ . Why can we prove  $\overline{B} \subseteq \overline{A}$  to prove that  $A \subseteq B$ ? Try to convince a friend that this is a valid technique.

# Try It

Try answering the following short-answer questions. They require you to actually write something down, or describe something out loud (to a friend/classmate, perhaps). The goal is to get you to practice working with new concepts, definitions, and notation. They are meant to be easy, though; making sure you can work through them will help you!

(1) First, prove the following claim:

For any sets  $A, B, C$ , the subset relationship  $A - (B - C) \subseteq (A - B) \cup C$  holds.

Second, find a counterexample to the claim that those sets are actually always equal.

(2) Suppose  $A, B, C$  are sets and  $A \subseteq B$ . Prove that  $A \times C \subseteq B \times C$ .  
(3) Suppose  $A \subseteq C$  and  $B \subseteq D$ . Prove that  $A \times B \subseteq C \times D$ .  
(4) Let  $A = \{x \in \mathbb{R} \mid x^2 > 2x + 8\}$  and  $B = \{x \in \mathbb{R} \mid x > 4\}$ . For each of the following claims, either prove it is correct or provide a counterexample to show it is False.

(a)  $A\subseteq B$  
(b)  $B\subseteq A$

# 3.10. SUMMARY

(5) Let  $A, B, U$  be sets with  $A, B \subseteq U$ . Prove that  $A - B = A \cap \overline{B}$  by a double-containment argument.  
(6) Let  $S = \{x \in \mathbb{R} \mid -2 < x < 5\}$  and  $T = \{x \in \mathbb{R} \mid -4 \leq x \leq 3\}$ . What is  $S \cap \overline{T}$ , in the context of  $\mathbb{R}$ ? Identify a set and then prove it is correct, using a double-containment argument.  
(7) Prove the following claim: If  $A \subseteq B$ , then  $\mathcal{P}(A) \subseteq \mathcal{P}(B)$ .  
(8) For every  $n \in \mathbb{N}$  let  $S_{n} = \left\{x \in \mathbb{R} \mid -\frac{1}{n} < x < \frac{1}{n}\right\}$ . Prove that

$$
\bigcap_{n \in \mathbb {N}} S_{n} = \{0 \}
$$

(9) Let  $I = \{x \in \mathbb{R} \mid 0 < x < 1\}$ . For every  $x \in I$ , define  $S_x = \{y \in \mathbb{R} \mid x < y < x + 1\}$ . Prove that

$$
\bigcup_{x \in I} S_{x} = \left\{z \in \mathbb {R} \mid 0 <   z <   2 \right\}
$$

(10) For every  $n \in \mathbb{N}$ , define the sets  $A_{n}$  and  $B_{n}$  by

$$
A_{n} = \left\{x \in \mathbb {R} \mid 0 \leq x <   \frac{n - 1}{n} \right\}
$$

$$
B_{n} = \left\{y \in \mathbb {R} \mid - \frac{1}{n} <   y <   1 \right\}
$$

Prove the following set equality by a double-containment argument:

$$
\bigcup_{n \in \mathbb {N}} A_{n} = \bigcap_{n \in \mathbb {N}} B_{n}
$$

# 3.10 Summary

This was our first foray into some abstract concepts and results. We introduced the notion of a set, motivating it via several examples. We discussed the key relationships of being an element and being a subset, and pointed out how important is to distinguish the two! (Keeping the "Bag Analogy" in mind might help you in this regard.) We also discussed some notation, included set-builder notation. As we continue to move into more abstract mathematics, using correct, formal notation will be more important than ever to ensure that we are properly expressing our ideas. One key idea that came up is the notion of the power set, which represents a place where the element and subset relationships are both at work.

A discussion of set operations showed us how to combine sets and create new ones. All of these operations will be used throughout the remainder of our work in this book. We also showed how these operations can be indexed. This allows

us to use shorthand to write a union of several sets using just a few definitions and symbols. Again, these ideas will re-appear quite often throughout our work, so we will present many exercises relating to these ideas; we encourage you to attempt and work through as many as you can!

We saw a proof technique relating to sets: namely, double-containment arguments. This is a fundamental proof technique in mathematics. You will see us use it often, and you will find it appearing in other courses and studies, as well.

A couple of discussions came up that allowed us to touch upon some profound ideas in abstract set theory, although we couldn't completely dive into them. For one, Russell's Paradox showed us that there is no "set of all sets". For another, we talked about how the natural numbers can be formally defined in terms of sets. In practice, we won't use this definition, and will continue to rely on our intuitions about  $\mathbb{N}$ . However, we hope it was interesting and somehow informative to read such a discussion.

# 3.11 Chapter Exercises

These problems incorporate all of the material covered in this chapter, as well as any previous material we've seen, and possibly some assumed mathematical knowledge. We don't expect you to work through all of these, of course, but the more you work on, the more you will learn! Remember that you can't truly learn mathematics without doing mathematics. Get your hands dirty working on a problem. Read a few statements and walk around thinking about them. Try to write a proof and show it to a friend, and see if they're convinced. Keep practicing your ability to take your thoughts and write them out in a clear, precise, and logical way. Write a proof and then edit it, to make it better. Most of all, just keep doing mathematics!

Short-answer problems, that only require an explanation or stated answer without a rigorous proof, have been marked with a  $\triangleright$ .

Particularly challenging problems have been marked with a  $\star$ .

Problem 3.11.1. For each of the following statements about elements and subsets, state whether it is True or False. Be prepared to defend your choice to a skeptical friend!

Throughout this problem, we will use the following definitions:

$$
A = \{x \in \mathbb {Z} \mid - 3 \leq x \leq 3 \}
$$

$$
B = \{y \in \mathbb {Z} \mid - 5 <   y <   6 \}
$$

$$
C = \left\{x \in \mathbb {R} \mid x^{2} \geq 9 \right\}
$$

$$
D = \{x \in \mathbb {R} \mid x <   - 3 \}
$$

$$
E = \left\{n \in \mathbb {N} \mid n \text{is ev en} \right\}
$$

(a)  $A\subseteq B$  
(b)  $C\cap D = \emptyset$  
(c)  $4\in E\cap B$  
(d)  $\{4\} \subseteq A\cap E$  
(e)  $10\in C - D$  
(f)  $A\cup B\supseteq C$  
(g)  $3\in A\cap C$  
(h)  $0\in (A - B)\cup D$  
(i)  $E\cap C\subseteq \mathbb{Z}$  
(j)  $0 \notin B - C$

Problem 3.11.2. Let  $m, n \in \mathbb{N}$ . Suppose  $m \leq n$ . Explain why  $\mathcal{P}([m]) \subseteq \mathcal{P}([n])$ .

Problem 3.11.3. Look back at Problem 7 in Section 3.9. We proved that whenever two sets satisfy  $A \subseteq B$ , then they must also satisfy  $\mathcal{P}(A) \subseteq \mathcal{P}(B)$ . Read through that proof, too, to remind yourself of the details.

Now, does this claim "work the other way"? That is, suppose  $\mathcal{P}(A) \subseteq \mathcal{P}(B)$ . Can you prove that  $A \subseteq B$  is also true? Or can you find an example where this is not true?

Problem 3.11.4. Rewrite the following sentences using the "set-builder notation" to define a set. Then, if possible, write out all the elements of the set, using set braces; if not possible, explain why not and write out three example elements of the set.

(a) Let  $A$  be the set of all natural numbers whose squares are less than 39.  
(b) Let  $B$  be the set of all real numbers that are roots of the equation  $x^{2} - 3x - 10 = 0$ .  
(c) Let  $C$  be the set of pairs of integers whose sum is non-negative.  
(d) Let  $D$  be the set of pairs of real numbers whose first coordinate is positive and whose second coordinate is negative and whose sum is positive.

Problem 3.11.5. Define the following sets:

$$
A = \left\{x \in \mathbb {R} \mid x^{2} - x - 1 2 > 0 \right\}
$$

$$
B = \left\{y \in \mathbb {R} \mid - 3 <   y <   4 \right\}
$$

Prove that  $A = B$

Problem 3.11.6. Let  $X$  be the set of students at your school.

Identify a property  $P(x)$  such that  $A := \{x \in X \mid P(x)\}$  is a proper subset of  $X$  and  $A \neq \emptyset$ .

Then, identify a property  $Q(x)$  such that  $B := \{x \in X \mid Q(x)\}$  is a proper subset of  $A$  (i.e.  $B \subset A$ ) and  $B \neq \emptyset$ .

Problem 3.11.7. Let  $A$ ,  $B$ , and  $C$  be sets with  $A \subseteq C$  and  $B \subseteq C$ .

(a) Draw a Venn diagram for the sets  $\overline{A} \cap \overline{B}$  and  $\overline{(A \cap B)}$ .  
(b) Prove that  $\overline{A} \cap \overline{B} \subseteq (\overline{A \cap B})$ .  
(c) Define specific sets  $A, B, C$  such that the containment is strict, i.e.  $\overline{A} \cap \overline{B} \subset (A \cap B)$ .  
(d) Define specific sets  $A, B, C$  such that  $\overline{A} \cap \overline{B} = (\overline{A \cap B})$ .

Problem 3.11.8. Let  $S = \{(m,n) \in \mathbb{Z} \times \mathbb{Z} \mid m = n^2\}$ . How does  $S$  compare to the set  $T = \{(m,n) \in \mathbb{Z} \times \mathbb{Z} \mid n = m^2\}$ ? If one is a subset of the other, prove it. If not, provide examples to show this.

Problem 3.11.9. Let  $(a,b)$  be a point on the Cartesian plane, i.e.  $(a,b) \in \mathbb{R} \times \mathbb{R}$ . Let  $\varepsilon$  (the Greek letter epsilon) be a nonnegative real number, i.e.  $\varepsilon \in \mathbb{R}$  and  $\varepsilon \geq 0$ .

Let  $C_{(a,b),\varepsilon}$  be the set of real numbers that are "close" to  $(a,b)$ , defined as follows:

$$
C_{(a, b), \varepsilon} = \left\{(x, y) \in \mathbb {R} \times \mathbb {R} \mid \sqrt{(x - a)^{2} + (y - b)^{2}} <   \varepsilon \right\}
$$

1. Come up with a geometric description of the set  $C_{(a,b),\varepsilon}$ .

What happens to the set as we change  $a$  and  $b$ ?

What happens as we change  $\varepsilon$ ?

2. What is  $C_{(0,0),1} \cap C_{(0,0),2}$ ?  
3. What is  $C_{(0,0),1} \cup C_{(0,0),2}$ ?  
4. What is  $C_{(0,0),1} \cap C_{(2,2),1}$ ?

Problem 3.11.10. Consider the (false!) claim that

$$
\bigcup_{n \in \mathbb {N}} \mathcal {P} ([ n ]) = \mathcal {P} (\mathbb {N})
$$

(a) What is wrong with the following "proof" of the claim? Point out any error(s) and explain why it/they ruin the "proof".

First, we will show that

$$
\bigcup_{n \in \mathbb {N}} \mathcal {P} ([ n ]) \subseteq \mathcal {P} (\mathbb {N})
$$

Consider an arbitrary element  $X$  of the union on the left.

By the definition of an indexed union, we know there exists some  $k \in \mathbb{N}$  such that  $X \subseteq [k]$ .

Since  $[k] \subseteq \mathbb{N}$ , and  $X \subseteq [k]$ , we deduce that  $X \subseteq \mathbb{N}$ .

Thus,  $X\in \mathcal{P}(\mathbb{N})$

Second, we will prove the " $\subseteq$ " relationship holds in the other direction, as well.

Consider an arbitrary  $Y\subseteq \mathbb{N}$

By the definition of subset, and the fact that  $Y$  is a set of natural numbers, we know there exists some  $\ell \in \mathbb{N}$  such that  $Y \subseteq [\ell]$ .

By the definition of indexed union, we know  $Y \in \bigcup_{n \in \mathbb{N}} \mathcal{P}([n])$ .

Since we have shown  $\subseteq$  and  $\supseteq$ , we know the two sets are equal.

(b) Disprove the claim by defining an explicit example of a set  $S$  such that

$$
S \in \mathcal {P} (\mathbb {N}) \qquad \text{an d} \qquad S \notin \bigcup_{n \in \mathbb {N}} \mathcal {P} ([ n ])
$$

Problem 3.11.11. Let  $A = [3] \times [4]$ . (Remember that  $[n] = \{1,2,3,\ldots,n\}$ .)

Let  $B = \{(x,y)\in \mathbb{Z}\times \mathbb{Z}\mid 0\leq 3x - y + 1\leq 9\}$

(a) Prove that  $A\subseteq B$  
(b) Is it true that  $A = B$ ? Why or why not? Prove your claim.

Problem 3.11.12. Let  $n \in \mathbb{N}$  be a fixed natural number. Let  $S = [n] \times [n]$ . Let  $T$  be the set

$$
T = \left\{(x, y) \in \mathbb {Z} \times \mathbb {Z} \mid 0 \leq n x + y - (n + 1) \leq n^{2} - 1 \right\}
$$

Prove that  $S \subseteq T$  but  $S \neq T$ .

Problem 3.11.13. Suppose  $A$  and  $B$  are sets.

(a) Prove that

$$
\mathcal {P} (A) \cup \mathcal {P} (B) \subseteq \mathcal {P} (A \cup B)
$$

(b) Provide an explicit example of  $A$  and  $B$  where the containment in (a) is strict.

Problem 3.11.14. Let  $S$  and  $T$  be sets whose elements are sets, themselves. Suppose that  $S \subseteq T$ .

Prove that

$$
\bigcup_{X \in S} X \subseteq \bigcup_{Y \in T} Y
$$

Problem 3.11.15. Let  $A, B, C, D$  be sets.

(a) Prove that

$$
(A \times B) \cup (C \times D) \subseteq (A \cup C) \times (B \cup D)
$$

(b) Provide an explicit example of  $A, B, C, D$  where the containment in (a) is strict.

Problem 3.11.16. Let  $A, B, C$  be sets. Prove that

$$
A \times (B \cap C) = (A \times B) \cap (A \times C)
$$

and

$$
A \times (B - C) = (A \times B) - (A \times C)
$$

Problem 3.11.17. Let  $X, Y, Z$  be sets. Prove that  $(X \cup Y) - Z \subseteq X \cup (Y - Z)$  but equality need not hold.

Problem 3.11.18. Find an example of a set  $S$  such that  $S \in \mathcal{P}(\mathbb{N})$  and  $S$  contains exactly 4 elements.

Then, find an example of a set  $T$  such that  $T \subseteq \mathcal{P}(\mathbb{N})$  and  $T$  contains exactly 4 elements.

Problem 3.11.19. Find examples of sets  $R, S, T$  such that  $R \in S$  and  $S \in T$  and  $R \subseteq T$  but  $R \notin T$ .

Problem 3.11.20. Identify what each of the following sets are, and prove your claims.

$$
\bigcap_{n \in \mathbb {N}} [ n ] \qquad \text{an d} \qquad \bigcup_{n \in \mathbb {N}} [ n ]
$$

Problem 3.11.21. Let  $I = \{-1,0,1\}$ . For each  $i \in I$ , define  $A_{i} = \{i - 2,i - 1,i,i + 1,i + 2\}$  and  $B_{i} = \{-2i, - i,i,2i\}$ .

(a) Write out the elements of  $\bigcup_{i\in I}A_i$  
(b) Write out the elements of  $\bigcap_{i\in I}A_i$  
(c) Write out the elements of  $\bigcup_{i\in I}B_i$  
(d) Write out the elements of  $\bigcap_{i\in I}B_i$  
(e) Use your answers above to write out the elements of  $\left(\bigcup_{i\in I}A_i\right) - \left(\bigcup_{i\in I}B_i\right)$ .  
(f) Use your answers above to write out the elements of  $\left(\bigcap_{i\in I}A_i\right) - \left(\bigcap_{i\in I}B_i\right)$ .

(g) Write out the elements of  $\bigcup_{i\in I}(A_i - B_i)$ . How does this compare to your answer in (e)?  
(h) Write out the elements of  $\bigcap_{i\in I}(A_i - B_i)$ . How does this compare to your answer in (f)?

Problem 3.11.22. In this problem, we are going to "prove" the existence of the negative integers! We say "prove" because we won't really understand what we've done until later but, trust us, it's what we're doing.

Because of this goal, you cannot assume any integers strictly less than 0 exist, so your algebraic steps, especially in part (d), should not involve any terms that might be negative.

That is, if you consider an equation like

$$
x + y = x + z
$$

we can deduce that  $y = z$ , by subtracting  $x$  from both sides, since  $x - x = 0$ .

However, if we consider an equation like

$$
x + y = z + w
$$

we cannot deduce that  $x - z = w - y$ . Perhaps  $y > w$ , so  $w - y$  does not exist in our context …

Let  $P = \mathbb{N}\times \mathbb{N}$  . Define the set  $R$  by

$$
R = \left\{\left(\left(a, b\right), (c, d)\right) \in P \times P \mid a + d = b + c \right\}
$$

(a) Find three different pairs  $(c,d)$  such that  $((1,4),(c,d))\in R$  
(b) Let  $(a,b)\in P$ . Prove that  $((a,b),(a,b))\in R$ .  
(c) Let  $((a,b),(c,d))\in R$  . Prove that  $((c,d),(a,b))\in R$  , as well.  
(d) Assume  $((a,b),(c,d))\in R$  and  $((c,d),(e,f))\in R.$

Prove that  $((a,b),(e,f))\in R$  , as well.

# 3.12 Lookahead

Now that we've introduced sets, defined them, seen many examples, and talked about operations and how to manipulate sets, it's time to move on to logic. We've already previewed some important logical ideas, specifically in Section 3.9 on how to write proofs about sets. In the next Chapter, we will make all of these logical ideas more formal, explicit and rigorous. We will develop some

notation and grammar that will help us express logical ideas more precisely and concisely. We will use these to express our mathematical thoughts in a common language and communicate our ideas with others. In short, we will be able to confidently talk and write about mathematics!