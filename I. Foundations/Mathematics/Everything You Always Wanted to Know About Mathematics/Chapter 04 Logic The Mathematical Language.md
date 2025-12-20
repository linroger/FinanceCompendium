---
aliases: null
tags: null
key_concepts: null
parent_directory: null
cssclasses: academia
title: Chapter 4
linter-yaml-title-alias: Chapter 4
primary_tags:
- even natural numbers
- more complicated statements
- own truth value
- proof techniques
- specific examples
- quantifier notation
- all subsets
secondary_tags:
- some statements
- then and proof
- individual statements
- some examples
- mathematical induction
- specific example
- two types
- either all even natural numbers
- formal definitions
- fellow mathematician
- some templates
- truth value
- other connectives
- well-defined yet false mathematical statement
- some more examples
- (demorgan's laws
- only such a quantification
- other examples
- any fundamental mathematical claim
tags_extracted: '2025-12-18T17:56:53.063780'
tags_method: max_quality_v1
---

# Chapter 4

# Logic: The Mathematical Language

# 4.1 Introduction

We are moving on to learn about the language of mathematics! We will learn how to express our ideas formally and precisely and concisely. This will require learning some new terminology and notation, all the while thinking and writing in a more formal way. Ultimately, this will allow us to solve problems and write good, clear, and correct mathematical proofs.

# 4.1.1 Objectives

The following short sections in this introduction will show you how this chapter fits into the scheme of the book. They will describe how our previous work will be helpful, they will motivate why we would care to investigate the topics that appear in this chapter, and they will tell you our goals and what you should keep in mind while reading along to achieve those goals. Right now, we will summarize the main objectives of this chapter for you via a series of statements. These describe the skills and knowledge you should have gained by the conclusion of this chapter. The following sections will reiterate these ideas in more detail, but this will provide you with a brief list for future reference. When you finish working through this chapter, return to this list and see if you understand all of these objectives. Do you see why we outlined them here as being important? Can you define all the terminology we use? Can you apply the techniques we describe?

By the end of this chapter, you should be able to …

- Define variable propositions using proper notation.
- Define mathematical statements using quantifiers and other proper notation, and characterize sentences that are not proper mathematical statements.  
- Understand and explain the difference between two types of quantifiers, as well as how they are used.  
- Define and understand the meanings of several logical connectives, as well as use them to define more complicated mathematical statements.  
- Apply proof techniques to create formal arguments that demonstrate the truth of a mathematical statement.  
- Compare and contrast different types of proof techniques, as well as understand when and how to use them, depending on the situation.

# 4.1.2 Segue from previous chapter

We introduced sets to have some standard, fundamental mathematical objects to work with. You probably noticed, though, that we used a lot of phrases like "If …, then …" and "for every" and "there exists" and "for at least one" and "and" and "or" and True and False and so on and so forth … We relied on your intuitive understanding, and previous knowledge, of these concepts. As a living, breathing human being who converses with others, you have some kind of understanding of what logic is. Our goal now is to build upon those intuitions, and help you learn to read and write and speak mathematics.

# 4.1.3 Motivation

In mathematics, we are interested in identifying True claims and subsequently explaining to others how and why we know those claims are True. Thus far, we have already presumed some familiarity with logical terminology and truth. For instance, look back at the assumptions of the PMI (Principle of Mathematical Induction, Theorem 3.8.5). We needed to know that if  $P(k)$  is true then  $P(k + 1)$  is true. What does this mean? What does this say about how the statements  $P(k)$  and  $P(k + 1)$  are connected? What does it even mean for something to be True?!!!

Our goals for this section are many, but the major emphasis is on defining and identifying what types of statements in mathematics are meaningful and interesting. Once we do that, we can figure out how to express those statements in concise and precise terms. Ultimately, we will learn how to apply general techniques to prove that those statements are True (or False, as the case may be).

# 4.1.4 Goals andWarnings for the Reader

Keep this in mind throughout this chapter:

# You are learning a language.

Some of this material will seem difficult, some will seem boring, and some might seem both! But this is all essential.

Have you ever learned another language? Think back to a foreign language class you took in school, perhaps. How did you start? We bet that you didn't jump right in and try to write beautiful poetry. You learned the basic grammar and syntax and vocabulary. You learned important articles, like "the" and "an". You learned basic verbs like "to be" and "to have" and how to conjugate them. You learned some common nouns, like "apple" and "dog" and "friend". From there, you started to piece phrases together and, over time, you learned to create more complex sentences from all of the tools you developed. All along, you probably had some great ideas for wonderful sentences in mind, but you just didn't know how to express them in your new language until you learned the necessary words and grammar.

We will be doing exactly this in the current chapter, but here our language is mathematics. You might have some great ideas for wonderful mathematical sentences in mind, but you just aren't sure how to express them. Interestingly enough, as well, we've already been "speaking" a lot of mathematics with each other! We've solved some puzzles, we introduced a proof technique (induction), and we worked with some building blocks of mathematical objects (sets); all along, we've made sure that we've understood each other, being verbose with our writing and explaining lots of details. In a way, we've been communicating without setting down a common language. This is a lot like how you'd survive in a foreign country without knowing the language: you'd use a lot of hand gestures and charades, you'd try to listen to others speak and pick up some key words, you'd draw pictures and make noises, and so on. This is all well and good if you're just on a week-long vacation, say, but if you're going to live there, you'll have a lot more work ahead of you.

This is precisely the situation we face now. We'd like to inhabit this world of mathematics, so we need to settle down and really learn the language of its people. Once we get through that, we'll feel more at home, like native speakers. Then, we can maybe be a little less careful with our words and grammar, use some slang or abbreviations or common idioms. (Think of some English examples of phrases and sentences that technically make no sense, grammatically or in terms of vocabulary, but are still understood by your fellow speakers.) But only then can we do so.

In the meantime, we will be much more formal and pedantic with our language. If we don't force ourselves to do this now, we won't truly all speak the same mathematical language.

# 4.2 Mathematical Statements

Our first step is to discuss what types of sentences are even reasonable to consider as mathematical truths that need to be proven or disproven. Completing this step is actually quite difficult! Many authors tend to gloss over this subject

or offer a simple definition that ignores the many subtleties of mathematical language and logic. We feel tied, as well, because the time and space provided in this book/course are not sufficient to properly study the field of abstract logical theory. We encourage you to investigate some books or websites that contain relevant information. For the current context, we will have to sweep many details under the rug, so to speak. Suffice it to say, though, there is a very deep, rich, and fruitful field of mathematical research concerning exactly what we will be discussing here in a more heuristic way.

Remember that we mentioned we will have to assume the existence of the real numbers  $\mathbb{R}$  and their usual arithmetic properties. Likewise, we will assume many of the results and concepts of mathematical logic, often without even realizing it (until we point it out for you). These details can be studied more in-depth later on in your mathematical careers.

# 4.2.1 Definition

For now, let us discuss what we mean by a mathematical statement. We want this term to encapsulate the kinds of "things" that we can prove or disprove.

Mathematics is unique among the sciences in that the results of this field are proven rigorously, and not hypothesized and then "confirmed" via laboratory experiments or real-world observations. In mathematics, we assume a set of common axioms and then follow rigorous logical inferences to deduce truths from these axioms (and from other truths we have proven thus far). If we encounter a falsity, we would have to show or demonstrate that it is, indeed, False.

With these ideas in mind, we can now consider and agree on several examples of what such a mathematical statement or proposition could be. (We have even proven a few already!) For instance, the sentence

For any real numbers  $x, y \in \mathbb{R}$ , the inequality  $2xy \leq x^2 + y^2$  holds.

is a valid mathematical statement. In fact, it is True, and we will prove it later on in Section 4.9.2. (It is sometimes referred to as the AGM Inequality, short for the Arithmetic-Geometric Mean Inequality.) We should point out that the word "holds" is often used in mathematics to mean "holds true" or "is a true statement".

Here's another example of a mathematical statement:

For any sets  $S, T, U$ , if  $S \cap T \subseteq U$  then  $S \subseteq U$  or  $T \subseteq U$ .

This statement, however, is False, as the following counterexample demonstrates:

Let  $S = \{1,2,3\}$  and  $T = \{2,3,4\}$  and  $U = \{2,3,5\}$ .

Observe that  $S \cap T = \{2,3\} \subseteq U$  but  $S \nsubseteq U$  and  $T \nsubseteq U$ .

Why does this example disprove the statement? Do you understand? Can you explain it? We will discuss that in more detail later on in this chapter, but we

hope that, for now, we all somehow recognize that this example accomplishes exactly that.

We can also agree that a sentence like

Why do we have class at 9:00 am?!

is definitely not a mathematical statement. It's a perfectly valid English sentence, but it is not meaningful, mathematically speaking: we can't prove or disprove it.

Likewise, the sentence

$$
x^{2} - 1 = 0
$$

is not a mathematical statement, despite being composed entirely of mathematical symbols. The problem is that we cannot verify whether it is True or False purely from axioms and logical inferences. This statement depends on  $x$ , whatever that value is (i.e.  $x$  is a variable) and without imposing extra assumptions about it, we cannot declare whether this sentence is True or False. This type of sentence will be referred to later as a variable proposition: its truth depends on a variable inside the sentence.

All of these observations and examples/non-examples motivate the following definition:

Definition 4.2.1. A mathematical statement (or proposition or logical statement) is a grammatically correct sentence (or string of sentences), composed of English words/symbols and mathematical symbols that has exactly one truth value, either True or False.

# 4.2.2 Examples and Non-examples

By "grammatically-correct" we mean that the words and symbols contained in the sentence are used and combined correctly and make sense. This eliminates strings of symbols/words that are nonsensical when placed together, like

$$
1 + = 2 \quad , \quad \mathrm{Br en da n}^{2} = 1 \quad , \quad \{\{\emptyset \} \} - 7 > 5 \pi \quad , \quad \mathrm{Yo ua ms ma rt}
$$

For instance, the third one above is not a mathematical statement because  $\{\{\varnothing\}\}$  is not a number, so we don't know how to interpret "subtracting 7" from that set.

By "has exactly one truth value", we mean that the statement should be either True or False, but certainly cannot be both or neither or something else in between. This eliminates the " $x^2 - 1 = 0$ " example above, because it has no truth value. (Without a declaration of what  $x$  is, we cannot decide, either way.)

# Not Knowing the Truth Value

One strange/interesting/complicated aspect of our definition is that we might not know the truth value for a given statement, even though we can be sure that there is only one such value. By way of illustration, consider the following statement:

Any even natural number greater than or equal to 4 can be written as the sum of two prime numbers.

Is this statement True or False? If you have a proof or disproof, then the world of mathematics would love to see it! The statement above is known as the Goldbach Conjecture and it is a very famous unsolved (for now, we hope!) problem in mathematics. Nobody knows yet whether the claim is True or False, but it is certainly the case that only one of those truth values applies. That is, this statement cannot be both True and False, nor can it somehow be somewhere in between. Either all even natural numbers greater than or equal to 4 do have the stated property, or there is at least one that does not have the property. We can state this "either/or" property even without yet knowing which of the two possibilities is the correct one. As such, this sentence does actually satisfy our definition of mathematical statement.

(Terminology note: In general, a conjecture is a claim that someone believes to be true but has not yet been proven/disproven.)

# Paradoxical Sentences

One way to have a sentence that does not have a truth value is to create a paradox. Consider this sentence:

This sentence is False.

Pretty weird, right? The sentence itself is asserting something about its own truth value. Let's try to analyze what truth value it has:

- Let's say the sentence is True. Then, the sentence itself tells us that it is, in fact, False.  
- Let's say the sentence is False. Similarly, then, the sentence tells us that it is, in fact, True.

This cannot work! This sentence is somehow both True and False at the same time, or somehow neither, or … Whatever it is, it's a bad idea. We do not want to deal with strangeness like this in mathematics, so our definition disallows this sentence as a mathematical statement.

(Question: What happens if you do allow sentences like this to be proper mathematical statements? What if you don't adhere to the principle that every sentence we care about must be either True or False? Think about it! Is this somehow wrong, or is it just a different mathematical universe? … )

In general, self-referential sentences like the one above (that is, sentences that make reference to themselves) are quite bizarre and can produce some paradoxes that we want to disallow.

A variant of the above paradoxical claim is given in a cartoon drawing, wherein Pinocchio says, "My nose will grow now!" Does it then grow? If he's telling the truth, then it will grow, but that only happens when he's lying! If

he's lying, then his nose will grow (by definition), but then his statement is actually true! Yikes!

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/44fa662e-a015-46fb-8608-ecf0fb518d19/f2c8fefcf0b26089a6d585a597f3fe8a1d85add60f3d8147dd5de27a0c7329c8.jpg)  
Source: http://www.the-drone.com/magazine/wp-content/uploads/2010/04/BLA6.jpg

An even stranger example of this phenomenon is Quine's Paradox:

"Yields falsehood when preceded by its quotation" yields falsehood when preceded by its quotation.

We'll let you think about that one on your own. Suffice it to say that paradoxical claims like this are too ill-behaved for us to worry about. This is why our definition outlaws them.

# 4.2.3 Variable Propositions

Other examples of sentences that are not mathematical statements are sentences that involve unquantified variables. For instance, take the sentence

$$
“ x^{2} - 1 = 0 ”
$$

This is certainly grammatically correct and we can make sense of it, but what is its truth value? We don't know! If  $x = 1$ , then the sentence is True, but if  $x = 8$ , it is False, and if  $x = \mathbb{N}$  or  $x = \text{Brendan}$ , then the sentence doesn't even make sense! As such, we want to disallow sentences like this, as well. These types of sentences are useful and common, though; we will call them variable propositions because they make a claim that depends on some variable.

In the case of the above sentence, we might define  $P(x)$  to be the variable proposition " $x^2 - 1 = 0$ ". We would usually write this declaration as

Let  $P(x)$  be the statement " $x^2 - 1 = 0$ ".

It is common to use capital letters to denote variable propositions and mathematical statements, and lowercase letters to denote the variables contained therein. (This is not a requirement, though, merely a common convention.)

With this variable proposition now defined, we can create proper mathematical statements by assigning particular values to the variable  $x$  in the expression. We can say that  $P(1)$  is True and  $P(0)$  is False. We can also make quantified claims about  $P(x)$ . For instance, we claim that the following sentence is a True mathematical statement:

There exists an  $x\in \mathbb{R}$  such that the proposition  $P(x)$  is True.

whereas the following sentence is a False mathematical statement:

For every  $x\in \mathbb{R}$ , the proposition  $P(x)$  is True.

Think about why these statements have the truth values we have claimed. Can you see why they are mathematical statements to begin with? How would you prove these claims?

# Defining Variable Propositions

Notice the format we used to define variable propositions, like the one above: (1) We give the proposition a letter name (like  $P$ ); (2) we indicate its dependence on some number of variables, each of which has a letter (like  $x$  and  $y$ ); (3) we put quotes around the actual proposition itself; and (4) we don't include any new letters that have no meaning within the context of the proposition.

This format has been chosen carefully because it is precise and unambiguous. It assigns a meaning to every letter in the proposition and clearly distinguishes what is and isn't part of the proposition.

For example, the following are BAD "definitions" of variable propositions. We will give you some reasons as to why they are bad and provide some proper amendments of the propositions.

- Let  $Q(y)$  be the proposition " $x < 0$ ".

Reason: What is  $x$ ? Where is  $y$ ? We have no idea what  $x$  is, inside the context of the proposition, so this is a poor definition.

If we had said

Let  $Q(x)$  be the statement "  $x < 0$  ".

that would have been perfect. The variable inside the parentheses is the one that appears in the statement in quotes later. Great.

- Let  $P(x)$  be the proposition  $x^2 \geq 0$ , for every  $x \in \mathbb{R}$ .

Reason: Does the writer of this sentence want to assert that  $x^2 \geq 0$ , no matter what  $x \in \mathbb{R}$  is? Is that phrase "for every  $x \in \mathbb{R}$ " meant to be part of the proposition, or not?

If we interpret this to mean that  $P(x)$  is defined as " $x^2 \geq 0$ ", and this definition is made for every  $x \in \mathbb{R}$ , then … okay, that might be reasonable.

However, if we interpret this to mean that  $P(x)$  is defined as " $x^2 \geq 0$  for every  $x \in \mathbb{R}$ " then … well, this is certainly different. In fact, it's not even

a properly-defined proposition! The proposition  $P(x)$  should depend on the input value  $x$ , but it shouldn't be allowed to change or further quantify that variable inside the proposition!

The way this proposition was originally written, there are two possible interpretations and they are very different. Accordingly, this is a poor definition.

If we had said,

Let  $P(x)$  be the statement " $x^2 \geq 0$ ", defined for every  $x \in \mathbb{R}$ .

that would have been fine. As we mention below, as well, we don't technically have to tell the reader which values of  $x$  we want the proposition defined for. Perhaps this is just some helpful information to include, though, so it doesn't hurt.

- Let  $T(x, y) = \sqrt{x^2 - 7}$ .

Reason: Ugh! What does " $=$ " mean in this context? That symbol applies when we wish to compare two numbers and say they are equal in value (or two sets and say they are equal in terms of their elements). The object  $T(x, y)$  is meant to be a mathematical statement, something that is either True or False. Thus, it does not have a numerical value to compare with anything else.

Likewise, given a value for  $x$  and  $y$ , the statement " $x^2 - 7 = y$ " is either True or False, so it makes no sense to say that equation "equals" something else. It has a truth value, not a numerical value.

If we had said,

$$
\text{Le t} T (x, y) \text{be} “ x^{2} - 7 = y ”.
$$

that would have been perfect.

Okay, that's enough non-examples for now. We don't want to put any bad ideas in your head, really! However, from past experience, we know that these are common ways for students to write propositions (either accidentally, or without realizing why they're wrong), so we felt compelled to share.

One final note on variable propositions. It is not essential to say where the variables come from when defining a proposition. That can be filled in later when the proposition is invoked, or when a specific value of a variable is used or quantified. That is, we can make the definition

$$
\text{Le t} T (x, y) \text{be} “ x^{2} - 7 = y ”.
$$

without needing to specify whether  $x$  and  $y$  are natural numbers, or integers, or complex numbers, or anything like that. Later on, we can say that  $T(3,2)$  is True and  $T(\pi, -1)$  is False, and that  $T(\varnothing, \mathbb{N})$  has no meaning, but we wouldn't need to somehow anticipate any of those interpretations when defining  $T(x,y)$ .

# 4.2.4 Word Order Matters!

The notion of quantifying variables is something we will discuss in detail in the very next section. For now, we want to consider one more striking example of a mathematical statement that illustrates the importance of word order in sentences. Analyzing the structure of sentences like the following will be a major goal of the following section, as well.

There is a real number  $y$  such that  $y = x^3$  for every real number  $x$ .

What does this claim say? It says we can find a number  $y \in \mathbb{R}$  such that  $y = x^3$  is True, no matter what  $x \in \mathbb{R}$  is. This is ridiculous! How can there be a single number that is the cube of all numbers? This sentence is, indeed, a mathematical statement, but it is decidedly False. But what about the following claim?

For every real number  $x$  there is a real number  $y$  such that  $y = x^3$ .

This one is True! Do you see the difference between the two sentences? They contain exactly the same words and symbols, but in a different order. Whereas the former sentence asserts that there is some number that is the cube of every real number (which is False), the latter asserts that every real number has a cube root, which is True. This example emphasizes the importance of word order.

# 4.2.5 Questions & Exercises

# Remind Yourself

Answering the following questions briefly, either out loud or in writing. These are all based on the section you just read, so if you can't recall a specific definition or concept or example, go back and reread that part. Making sure you can confidently answer these before moving on will help your understanding and memory!

(1) What are the important, defining properties of a mathematical statement?  
(2) What is the difference between a mathematical statement and a variable proposition?  
(3) Why is the Goldbach Conjecture a mathematical statement?  
(4) What is wrong with the following attempt at defining a variable proposition?

$$
\text{Le t} Q (x, y, z) \text{be} 7 x - 5 y + z
$$

# Try It

Try answering the following short-answer questions. They require you to actually write something down, or describe something out loud (to a friend/classmate, perhaps). The goal is to get you to practice working with new concepts, definitions, and notation. They are meant to be easy, though; making sure you can work through them will help you!

(1) For each of the following sentences, decide whether it is a mathematical statement or not. If it is, decide whether it is True or False. If it is not, explain why.

(a)  $142857\cdot 5 = 714285$  
(b) For every  $n\in \mathbb{N}$ ,  $\sum_{k\in [n]}k = \frac{n(n + 1)}{2}$ .  
(c) For any sets  $A$  and  $B$ , if  $A \subseteq B$ , then  $B \subseteq A$ .  
(d) For any sets  $A$  and  $B$ , if  $A \subseteq B$ , then  $\mathcal{P}(A) \subseteq \mathcal{P}(B)$ .  
(e) Math is cool.  
(f)  $1 + 2 = 0$  
(g) For any  $x, y \in \mathbb{Z}$ , if  $x \cdot y$  is even, then  $x$  and  $y$  are both even.  
(h) For any  $x,y\in \mathbb{Z}$ , if  $x$  and  $y$  are both even, then  $x\cdot y$  is even.

(i)  $1 + = 2$  
(j)  $-5 + \mathbb{Z} \geq \pi$  
(k)  $x = 7$

(1) This sentence is not True.

(2) Look back through the first three chapters and identify some examples and non-examples of mathematical statements.

Can you also find any variable propositions? Are they written in the way we specified in this section? Can you amend them so that they are written properly?

(3) Write a proper definition of a variable proposition that is true when two inputted values have a non-negative sum.

Then, find two instances each of when the proposition is True and when it is False.

(4) Let  $S$  be the set  $\{1,2,3,6,8,10\}$ .

(a) Write a proper definition of a variable proposition that inputs two variables and decides whether the absolute value of their difference is an element of  $S$ . Then, find two instances each of when the proposition is True and when it is False.  
(b) Write a proper definition of a variable proposition that inputs two sets and determines whether their intersection is a subset of  $S$ . Then, find two instances each of when the proposition is True and when it is False.

(Note: Given any set  $X$  and any object  $x$ , it must be that either  $x \in X$  or  $x \notin X$ .)

(5) Come up with another mathematical statement that is True but becomes False when we switch the order of some words. (See the example in the last subsection for some inspiration.)  
(6) For each of the following attempts at defining a variable proposition, determine if it is correct or not. Note: This does not mean determine if it is True or False; rather, we want to know whether the statement is well-written and sensible.

If an attempt is incorrect for some reason, explain that reason and write a new statement that fixes that error.

(a) Let  $P(x)$  be " $x > 1$ "  
(b) Let  $Q(x)$  be the proposition " $x^2 - 1 > 0$ .  
(c) Let  $R(a, b)$  be " $a^3 = b$ ", for every  $a, b \in \mathbb{R}$ .  
(d) Let  $P(x)$  be  $x > 1$  
(e) Let  $T(z) =$  "z is prime".  
(f) Let  $Q(x)$  be the proposition " $x^2 - 1 > 0$ ", for every  $x \in \mathbb{R}$ .  
(g) For every  $x\in \mathbb{R}$ , let  $Q(x)$  be " $x^{2} - 1 > 0"$ .  
(h) Let  $S(a)$  be " $b^2 > 4$ ".  
(i) Let  $Q(x)$  be  $x^{2} - 1 > 0$  for every  $x\in \mathbb{R}$

# 4.3 Quantifiers: Existential and Universal

We will now introduce some convenient notation that allows us to shorten some statements we have seen so far and express wordy, language-based phrases with mathematical symbols. Another benefit of the forthcoming notation is that we will be able to more easily express and analyze mathematical statements. Specifically, we will now introduce the symbols " $\forall$ " and " $\exists$ ".

Definition 4.3.1. The symbol " $\forall$ " stands for the phrase "for all".

The symbol " $\exists$ " stands for the phrase "there exists".

We call " $\forall$ " the universal quantifier and " $\exists$ " the existential quantifier.

A mathematical statement beginning with " $\forall$ " is said to be "universally quantified", and one beginning with " $\exists$ " is said to be "existentially quantified".

# 4.3.1 Usage and notation

Other common phrases that " $\forall$ " replaces are "for every" and "for arbitrary" or "whenever" and "given any" and even "if".

Other common phrases that " $\exists$ " replaces are "for some" and "there is at least one" and "there is" and even "some".

Example 4.3.2. Let's consider some simple examples first, to get our feet wet. In each case, we are looking to express a mathematical thought using these symbols, or trying to interpret a quantified statement in a more "wordy" way.

- "Every real number squared is non-negative."

This is a straightforward statement that is, in fact, True. We would write it as:

$$
\forall x \in \mathbb {R}. x^{2} \geq 0
$$

The "big dot" separates the quantified part of the statement from the claim made about the variable  $x$  (which was introduced in the quantification).

Another way to write this would be:

Define  $S(x)$  to be " $x^2 \geq 0$ ". Then the claim is:  $\forall x \in \mathbb{R} \cdot S(x)$ .

- "There is a subset of  $\mathbb{N}$  that has 7 as an element."

This is an existence claim. It asserts that we can find an object with a particular property. We would write it as:

$$
\exists S \in \mathcal {P} (\mathbb {N}). 7 \in S
$$

Remember that  $\mathcal{P}(\mathbb{N})$  is the power set of  $\mathbb{N}$ , the set of all subsets of  $\mathbb{N}$ ; thus, saying  $S \in \mathcal{P}(\mathbb{N})$  means  $S \subseteq \mathbb{N}$ , as desired.

- "Every integer has an additive inverse (i.e. a number that, when added to the original number, yields 0)."

This idea of an "additive inverse" is a general concept that applies to some mathematical objects known as rings and fields. We won't discuss those objects in this book, but you will touch on them in any course on abstract algebra.

We would write this claim as

$$
\forall a \in \mathbb {Z}. \exists b \in \mathbb {Z}. a + b = 0
$$

and we would read this aloud as

For any integer  $a$ , there exists an integer  $b$  such that  $a + b = 0$ .

or perhaps

No matter what integer  $a$  we are given, we can find an integer  $b$  with the property that  $a + b = 0$ .

Again, we could shorten the notation slightly by defining  $I(a,b)$  to be " $a + b = 0$ ", and then writing the claim as

$$
\forall a \in \mathbb {Z}. \exists b \in \mathbb {Z}. I (a, b)
$$

Example 4.3.3. Here are some examples of proper usage of " $\forall$ ", and some equivalent formulations of how to use this symbol.

$\forall x\in \mathbb{R},x^2\geq 0$  

- For all real numbers  $x$ , we have  $x^2 \geq 0$ .  
- Every real number  $x$  satisfies  $x^2 \geq 0$ .  
- Whenever  $x$  is a real number, we know  $x^2 \geq 0$ .

Likewise, here are some examples of proper usage, and equivalent formulations, of the symbol " $\exists$ ".

- $\exists x \in \mathbb{R}$ .  $x^{2} - 4x + 4 = 0$  
- There exists a real number  $x$  such that  $x^2 - 4x + 4 = 0$ .  
- There is a real number  $x$  that satisfies  $x^{2} - 4x + 4 = 0$ .  
- Some real number  $x$  has the property that  $x^{2} - 4x + 4 = 0$ .

# Reading Quantified Statements Aloud

Example 4.3.4. Now for some harder examples. Let's look back at the phrases we wrote at the end of the last section and express them using this new notation. Consider this statement:

There is a real number  $y$  such that  $y = x^3$  for every real number  $x$ .

To express this in symbolic form, we will define  $P(x,y)$  to be the proposition "  $y = x^3$  " and then write the statement as

$$
\exists y \in \mathbb {R}. \forall x \in \mathbb {R}. P (x, y)
$$

This is correct, logically-speaking, but it is rather terse. For now, we will sometimes rewrite the statement using some "helping words" to aid our reading of the statement. In particular, we would say such words when reading the sentence aloud, so by occasionally writing them here, we provide you with some extra practice in interpreting logical notation verbally. We would read the above statement aloud as

There exists a real number  $y$  such that, for every real number  $x$ , the statement  $P(x,y)$  holds.

The phrase "such that" is a "helper phrase" that links an existential quantification to the rest of the phrase. The next subsection contains some important information about when and how to use this helper phrase!

The "big dot" between the quantified parts of the statement above just serves to separate the pieces of the statement and make it easier to read. It corresponds to a pause or rest in speaking, like a comma, but sometimes it has a vocalized meaning (like the "such that" after the " $\exists y \in \mathbb{R}$ " part).

We don't want to use commas, though, because we already use them for other meanings. For example, we write

$$
x, y \in S
$$

to mean "both  $x$  and  $y$  are elements of the set  $S$ ". The "big dot" is just a different symbol to use.

Since our mathematical careers are still young, relatively speaking, we encourage you to sometimes write the helping phrases like "such that" and "holds True" to guide your understanding, whenever possible. This reminds you what the sentences mean and helps you practice reading and writing statements like this in such a condensed form. Remember that you are learning a language here and you need to practice translating sentences from one language you know (English) to another (mathematics). For instance, you might want to write out the line above as

$$
\exists y \in \mathbb {R} \text{su ch th at} \forall x \in \mathbb {R}. P (x, y) \text{is Tr ue .}
$$

or, at least, say it this way in your head.

(By the way, when writing on a white/chalkboard or on paper, it's common to write "s.t." in place of "such that", to save a few moments of writing. That just goes to show how ubiquitous the phrase "such that" is in mathematical writing; we already have an agreed-upon abbreviation for it!)

# 4.3.2 The phrase "such that", and the order of quantifiers

Notice that the helping phrase "such that" always follows an existential quantification, and only such a quantification. This is because a claim with "  $\exists$  " asserts something about the existence of an object with a certain property, and the rest of the sentence is the description of that special property. Thus, "such that" makes sense and helps us read the sentence properly. Consider this mathematical statement:

$$
\exists y \in \mathbb {R}. \forall x \in \mathbb {R}. P (x, y)
$$

What would happen if we read it out loud but misplaced the phrase "such that" and used it after the " $\forall$  " instead of the " $\exists$ "? That would yield this sentence:

$$
\exists y \in \mathbb {R} \quad \forall x \in \mathbb {R} \text{su ch th at} P (x, y) \text{is Tr ue}.
$$

We claim that this can be interpreted in two ways, neither of which is really the correct intended meaning, which is why we've written in red!

On the one hand, one might argue that such a sentence is not grammatical at all and has no meaning, because "such that" does not belong after a universal quantification. This amounts to just throwing up one's hands and saying, "I have no idea what you meant there!"

On the other hand, one might read into the sentence a little bit and argue that what the writer really meant was

$$
\exists y \in \mathbb {R}, \forall x \in \mathbb {R}, \text{su ch th at} P (x, y) \text{is Tr ue}.
$$

or, writing out the words,

There exists an  $x\in \mathbb{R}$ , for each  $y\in \mathbb{R}$ , such that  $P(x,y)$  is True.

Here, the commas indicate an inversion of phrase order, as is common in English language. (For instance, consider the following sentence: "I laugh, at every episode of 30 Rock, wholeheartedly." This is the same as saying "I laugh wholeheartedly at every episode of 30 Rock.") This sentence would be equivalent, then, to writing

$$
\forall x \in \mathbb {R}. \exists y \in \mathbb {R} \text{su ch th at} P (x, y) \text{is Tr ue .}
$$

This is not the same as the original mathematical statement we considered and, in fact, it is actually the other statement we saw in the previous section (see Section 4.2.4), which was False! Recall that the other statement was similar but the phrases were reversed:

$$
\text{Th er ei sa re al nu mb er} x \text{su ch th at ,f or ev er yr ea ln um be r} y, \text{we ha ve}
$$

$$
y = x^{3}.
$$

which we can symbolize as

$$
\exists x \in \mathbb {R}. \forall y \in \mathbb {R} \text{su ch th at} P (x, y) \text{is tr ue}
$$

Look at that! The misplacement of the phrase "such that" led to a reasonable linguistic interpretation of the sentence that has the exact opposite meaning as what was originally intended. Yikes! This is why we must be careful to use "such that" always and only after an existential quantification. Remember that we will not always write that helper phrase, so you must remember to use it properly when reading a sentence to yourself in your head, or out loud to others, to make sure you have the correct, intended interpretation.

The point of this example in the previous section was to point out how important word order is. Now that we have symbols to replace some words and phrases, we want to emphasize how important the order of those symbols is, as well. The two mathematical statements we see above contain the exact same words and symbols, but in a different order, and one is False whereas the other is True. Clearly, order is extremely important!

# 4.3.3 "Fixed" Variables and Dependence

While we are on the topic of order of quantifiers, we will also mention the following example to emphasize that the order of quantifiers dictates when to consider variables as fixed in an expression.

Consider the statement "Any even natural number greater than or equal to 4 can be written as the sum of two primes." (Recall that this is the famous Goldbach Conjecture we discussed in the previous section.) To express this

statement logically and symbolically, we would write

Let  $X$  be the set of even natural numbers, except 2.

Let  $P$  be the set of prime numbers.

Define  $Q(n, a, b)$  to be " $n = a + b$ ".

Then the claim is:

$$
\forall n \in X. \exists a, b \in P. Q (n, a, b)
$$

Notice that we used some shorthand here. A phrase like " $\exists a, b \in P$ " really means "there exists some  $a \in P$  and there exists some  $b \in P$ ", and it would be perfectly acceptable to express the above statement instead as

$$
\forall n \in X. \exists a \in P. \exists b \in P. Q (n, a, b)
$$

When two variables are quantified as elements from the same set, though, and the quantifications follow one another immediately in a sentence, it is very common to combine them into one quantification. We might even see mathematical statements like,

$\forall x,y\in \mathbb{Z}$  .  $\exists a,b,c,d\in \mathbb{Z}$ $a + b + c + d = x + y$  and  $a + b\neq x$  and  $c + d\neq y$

(What is this statement asserting, by the way? Is it True or False? Does it depend on the context of  $\mathbb{Z}$ ? What if we used  $\mathbb{N}$  or  $\mathbb{R}$  instead in both places?)

# Quantification "Fixes" a Variable

Look back at the example above, where we defined  $Q(n,a,b)$ . The reason we brough up that example was to mention that the initial quantification " $\forall n \in X$ " serves to fix a particular value of  $n$  that will be used for the rest of the statement. After that, the assertion that " $\exists a,b \in P$ " with the subsequent property  $Q(n,a,b)$  depends on that fixed, but arbitrary, value of  $n$ .

The statement, as a whole, is saying that no matter what  $n$  is chosen, we can find values  $a, b$  that satisfy the property  $Q$ . (Notice that those values of  $a, b$  might depend on  $n$ , of course.) However, the order of quantification is telling us that those values  $a, b$  might depend on the chosen  $n$ . This is what we want to emphasize.

As an example, consider a particular value of the variable  $n$  in the statement. We know  $8 \in X$  because 8 is even and  $8 \geq 4$ . What happens when  $n = 8$ ? Can you find  $a, b \in P$  such that  $a + b = 8$ ? Sure, we can use  $a = 3$  and  $b = 5$ . Okay, what about when  $n = 14$ ? Can you find  $a, b \in P$  that satisfy  $a + b = 14$ ? Surely, your choices now have to be different than before. This is what we mean when we say  $a$  and  $b$  depend on  $n$ . (By the way, can you find  $a$  and  $b$  in this case, with  $n = 14$ ? We can think of a couple of choices that would work!)

To make sure you're understanding this discussion, think about the following question and answer it: What is the difference between the statement above and the following one?

$$
\exists n \in X. \exists a, b \in P. Q (n, a, b)
$$

Is this statement True or False? Why?

# 4.3.4 Specifying a quantification set

Another aspect of quantifiers we want to emphasize is that we must specify a set whenever we use quantifiers. The sentence

$$
\forall x. x^{2} \geq 0
$$

may "look true" but it is, in fact, meaningless. What is  $x$ ? Where does it come from? "For every  $x \ldots$ " from where? What if  $x$  is not a number?

We need to specify where the object  $x$  "comes from" so that we know whether  $x^2 \geq 0$  is even a well-defined, grammatical phrase, let alone whether it is True. If we amend the sentence to say

$$
\forall x \in \mathbb {R}. x^{2} \geq 0
$$

then this is a well-defined, grammatical (and True!) mathematical statement. However, if we amend the sentence to say

$$
\forall x \in \mathbb {C}. x^{2} \geq 0
$$

then this is a well-defined yet False mathematical statement! This is because  $i \in \mathbb{C}$  but  $i^2 = -1 < 0$ . (Remember, we will not make significant use of the set of complex numbers  $\mathbb{C}$  in this book, but it makes for interesting and enlightening examples, like this.)

The main lesson here is that context really matters. It can change the meaning of a statement, as well as its truth value. For this reason, we must always be sure to specify a set from which we draw variable values.

# One Exception

We sheepishly admit that there is one exception to this "always specify a quantification set" rule, but there's a good reason for the exception. Consider the following claim:

For any sets  $A, B, C$ , the equality  $(A \cup B) \cap C = (A \cap C) \cup (A \cap B)$  holds true.

This is a True mathematical statement. (Can you prove it? Try using a double-containment argument!)

How might we try to write this statement in symbolic form? This is a universal quantification ("for any …) so we need to use a " $\forall$ " symbol. The variables here (denoted by  $A$  and  $B$  and  $C$ ) are sets. Where do they come from? What is the set of objects we would draw them from?

We're pretty sure you're tempted to say "the set of all sets". Right? That's a big problem, though! Remember our discussion in the previous chapter about Russell's Paradox? (See Section 3.3.5 to remind yourself.) That object—the collection of all possible sets—is not, itself, a set! Thus, we cannot write this statement symbolically as

$$
\forall A, B, C \in \_ \cdot (A \cup B) \cap C = (A \cap C) \cup (A \cap B)
$$

because we don't know how to fill in the blank with a set.

Because of this issue, we will continue to use phrases like "For any sets  $A, B, C \ldots$ ", instead of a symbolic form. When taking notes on your own, or working out a problem on scratch paper, feel free to write " $\forall A, B, C$ " and know that it really represents a quantification of sets. However, when writing more formally (say, on written homework), you should stick to the phrasing used above.

# 4.3.5 Questions & Exercises

# Remind Yourself

Answering the following questions briefly, either out loud or in writing. These are all based on the section you just read, so if you can't recall a specific definition or concept or example, go back and reread that part. Making sure you can confidently answer these before moving on will help your understanding and memory!

(1) What is the difference between  $\forall$  and  $\exists$ ?  
(2) How would you read the following statement out loud?

$$
\forall x \in \mathbb {R}. \exists y \in \mathbb {R}. x = y^{3}
$$

(3) Why is the following sentence not a proper mathematical statement?

$$
\exists y. y + 3 > 1 0
$$

What is the difference, if anything, between the following two statements?

$$
\exists x \in \mathbb {N}. \exists y \in \mathbb {N}. x + y = 5
$$

$$
\exists x, y \in \mathbb {N}. x + y = 5
$$

Are they True or False?

(4) What is the difference, if anything, between the following two statements?

$$
\exists a, b \in \mathbb {Z}. a \cdot b = - 3
$$

$$
\exists \heartsuit , \diamondsuit \in \mathbb {Z}. \heartsuit \cdot \diamondsuit = - 3
$$

Are they True or False?

(5) Why are the following sentences not properly quantified statements?

- $\exists x.x > 7$  
- $\forall y\in \mathbb{Z}$  
$\forall z > 2,z^2 >4$  
- $\forall w \in \mathbb{Z}$ .  $w^2 = t$ .  $\exists t \in \mathbb{N}$

# Try It

Try answering the following short-answer questions. They require you to actually write something down, or describe something out loud (to a friend/classmate, perhaps). The goal is to get you to practice working with new concepts, definitions, and notation. They are meant to be easy, though; making sure you can work through them will help you!

(1) Look back at Section 4.3.3 where we expressed the Goldbach Conjecture in symbolic notation. We defined  $X$  to be the set of all even natural numbers except 2.

Write a definition of  $X$  using symbols, with quantifiers and set builder notation (and perhaps set operations, depending on how you do it).

(2) Write an example of a mathematical statement that starts with a quantifier, and such that the statement is True if that quantifier is " $\exists$ " but the statement is False if that quantifier is " $\forall$ ".

(3) Write an example of a variable proposition  $P(x)$  such that

$$
\forall x \in \mathbb {Z}. P (x)
$$

is True but

$$
\forall x \in \mathbb {N}. P (x)
$$

is False.

(4) For each of the following mathematical statements, write it in symbolic form using quantifiers. (Be sure to properly define any variable propositions you might need, first!) Then, determine whether the statement is True or False.

(a) There is a real number that is strictly bigger than every integer.  
(b) Each integer has the property that its square is less than or equal to its cube.  
(c) Every natural number's square root is a real number.  
(d) Every subset of  $\mathbb{N}$  has the number 3 as an element.

(5) For each of the following quantified statements, say it out loud by reading the symbolic notation. Then, determine whether the statement is True or False.

(a)  $\forall x\in \mathbb{N}$  .  $\exists y\in \mathbb{Z}$ $x + y <   0$  
(b)  $\exists x\in \mathbb{N}$ $\forall y\in \mathbb{Z}$ $x + y <   0$  
(c)  $\exists A\in \mathcal{P}(\mathbb{Z})$  .  $\mathbb{N}\subset A\subset \mathbb{Z}$

(Recall that  $\subset$  means "is a proper subset of".)

(d) Let  $P$  be the set of prime numbers.

$$
\forall x \in P. \exists t \in \mathbb {Z}. x = 2 t + 1
$$

(e)  $\forall a\in \mathbb{N}.\exists b\in \mathbb{Z}.\forall c\in \mathbb{N}.a + b <   c$  
(f)  $\exists b\in \mathbb{Z}$  .  $\forall a,c\in \mathbb{N}$ $a + b <   c$

# 4.4 Logical Negation of Quantified Statements

Let's return to those example statements we have used before. Define  $P(x, y)$  to be " $y = x^{3}$ " and then define  $Q_{1}$  to be the statement

$$
“ \exists y \in \mathbb {R}. \forall x \in \mathbb {R}. P (x, y) ”
$$

and  $Q_{2}$  to be

$$
“ \forall x \in \mathbb {R}. \exists y \in \mathbb {R}. P (x, y) ”
$$

Remember that  $Q_{1}$  is False and  $Q_{2}$  is True.

How is it that we know  $Q_{1}$  is False? It says that there is some real number with a certain property. To declare the entire statement to be False, we might have to verify that the property does not hold for every real number  $y$ , but that would take a long time! The set  $\mathbb{R}$  is infinitely large! A far more efficient approach is to show that the negation of this statement is True.

By "negation", we mean the logical negation, the statement that is the "opposite" of the original statement, in the logical sense. The logical negation of a mathematical statement has the exact opposite truth value as the original, so if we examine  $Q_{1}$ 's negation and show it is True, then we have proven that  $Q_{1}$  itself is False.

How do we negate this statement, though? We already had the right idea in mind when we noticed that we would somehow have to prove something about every real number  $y$ , since the original statement makes a claim of existence. In this section, we will explore how to properly negate statements like these.

We should note that there are some subtle, yet deep, mathematical concepts underlying what we have discussed thus far. Why is it that a mathematical statement is either True or False? Well, a cheeky (and completely correct, mind you) response would be, "Because you defined 'mathematical statement' to be that way, silly!" Yes, indeed, we did, but why did we do so? What is it about the duality of True/False that is somehow helpful to mathematics, or essential? These are meaningful and difficult questions, and are definitely worth thinking about. Discussions of these topics will necessarily delve into the philosophy of mathematics and human thought which are interesting and worthwhile pursuits, certainly, but beyond the scope and goals of this book/course. We will rely on our common, intuitive understandings of truth.

# 4.4.1 Negation of a universal quantification

In general, the negation of a universal (i.e. " $\forall$ ") claim is one of existence (i.e. " $\exists$ "), and vice versa. Before we tackle the larger problem of negating any quantified statement, let's look at a simple case.

Assume  $S$  is a set and  $R(x)$  is a mathematical statement, defined for every  $x \in S$ . The statement

$$
\forall x \in S. R (x)
$$

asserts the truth value of a variable proposition for every possible value of the variable  $x$  from the set  $S$ . It says that no matter what element  $x$  of the set  $S$  we

are referring to, we can necessarily conclude that the proposition  $R(x)$  is true. Now, how could this statement be False, and how could we prove that?

If it's False that every element  $x \in S$  satisfies a certain property, it must be that at least one element does not satisfy that property. To prove this, we would be expected to produce such a value; we would have to define (i.e. identify) an element  $x$  and explain why  $R(x)$  does not hold for that particular element. (Think about how we understand this negation linguistically. We do this all the time in everyday language without even thinking about it.) The conclusion, then, is that the negation of the original statement is

$$
\exists x \in S \text{su ch th at} R (x) \text{is Fa ls e}
$$

We now introduce the notational symbol  $\neg$  to mean "logical negation" or "not". With this in hand we can rewrite the negated statement

$$
\neg \left(\forall x \in S. R (x)\right)
$$

as

$$
\exists x \in S. \neg R (x)
$$

The concluding phrase of that statement,  $\neg R(x)$ , could be simplified, depending on what  $R(x)$  is.

For instance, if  $S = \mathbb{R}$  and  $R(x)$  is " $x^2 \geq 0$ ", then the negated statement would read

$$
“ \exists x \in \mathbb {R} \mathrm{su ch th at} x^{2} <   0 ”
$$

since  $x^2 < 0$  is logically equivalent to  $\neg (x^2 \geq 0)$ .

In general, though, we must leave it as " $\neg R(x)$ " without knowing anything further about the proposition  $R$ . We will also point out that, in general, the phrases " $R(x)$  is False" and " $\neg R(x)$  is True" are logically equivalent; they both assert that the proposition  $R(x)$  is not true.

This notion we are developing right now is what is meant by a counterexample, a term you have likely heard before. To disprove a universally quantified statement, we must prove an existentially quantified statement; that proof involves explicitly defining an element of a set that does not satisfy the specified property, whence the word counterexample.

# 4.4.2 Negation of an existential quantification

A statement like

$$
\exists x \in S. R (x)
$$

makes an existence claim. It says that there must be some element  $x$  that satisfies the property  $R(x)$ . To disprove a claim like this, we would seek to show that any value of  $x$  actually fails to satisfy the property  $R$ . Accordingly, we can say that the statement

$$
\neg \left(\exists x \in S. R (x)\right)
$$

is logically equivalent to the statement

$$
\forall x \in S. \neg R (x)
$$

This makes sense if we think about how to disprove such an existential claim. Pretend you are having a debate with a friend who told you that some kwyjibo has the property that it is a zooqa. How would you disprove him/her? You might say something like, "Nuh uh! Show me any kwyjibo you want to. I know it can't possibly be a zooqa because of the following reasons …" and then you would explain why the property fails, no matter what.

Now, when you say "show me any" you are really performing a universal quantification! You are saying that no matter which kwyjibo you consider, something is true; that is, for every kwyjibo, or  $\forall x\in K$  (where  $K$  is the set of all kwyjibos), something is True.

Think about this and consider why the logical negations we have discovered/defined make sense to you. Later on in the chapter, when we consider proof techniques, we will explain the strategy of considering an arbitrary kwyjibo and why this actually proves the logical negation we just wrote above. For now, we hope it is clear that

$$
\forall x \in S. \neg R (x)
$$

and

$$
\exists x \in S. R (x)
$$

have opposite truth values.

# 4.4.3 Negation of general quantified statements

The observations we have made so far motivate a general procedure for negating quantified statements. The statement  $A$  we defined above is of the form

$$
\exists y \in \mathbb {R}. C (y)
$$

where  $C(y)$  is the rest of the statement (which depends on the value of  $y$ , of course). We think of  $C(y)$  as some property of the quantified variable  $y$ ; that property might have other quantifiers and variables inside it, but at a fundamental level, it is merely asserting some truth about  $y$ .

To negate this statement, we follow the method discussed above and write

$$
\forall y \in \mathbb {R}. \neg C (y)
$$

Now, we know that  $C(y)$  is a universally quantified statement itself:

$$
\forall x \in \mathbb {R}. y = x^{3}
$$

We know how to negate that type of statement, too! That negation,  $\neg C(y)$ , is

$$
\exists x \in \mathbb {R}. y \neq x^{3}
$$

This step just uses the other negation procedure that we saw above. Then, putting it all together, we can say that  $\neg A$  is the statement

$$
\forall y \in \mathbb {R}. \exists x \in \mathbb {R}. y \neq x^{3}
$$

This claim we can prove to be true, thus showing that the original statement must be False.

(We leave this proof as an exercise. Hint: Given any  $y \in \mathbb{R}$ , define a value of  $x$  that will force  $y \neq x^3$  to be true. Notice that your choice of  $x$  will depend the value of  $y$ ; how does it?)

Look at how this negation came about: we recognized that the original statement was a sequence of nested quantifiers (i.e. a sequence of several quantified variables in a row) with a variable proposition at the end, and we saw that we could treat part of the sequence of quantifiers as its own statement. We then "passed the negation" from the outside quantifier to the inside one, and pieced those negations together.

Following this same idea, we can figure out how to identify a statement with a longer sequence of quantifiers. For instance, look at a statement like

$$
\forall a \in A. \exists b \in B. \exists c \in C. \forall d, e \in D. Q (a, b, c, d, e)
$$

To start negating it, we would break off the first quantification, and treat the rest as its own proposition,  $R(a)$ , that depends only on  $a$ :

$$
\forall a \in A. \left(\underbrace {\exists b \in B . \exists c \in C . \forall d , e \in D . Q (a , b , c , d , e)} _{R (a)}\right)
$$

The negation can therefore be written as

$$
\exists a \in A. \neg R (a)
$$

but we would then have to figure out another way to write  $\neg R(a)$ . But hey, we would just do the same thing! We would just separate " $\exists b \in B$ " from the rest and … you see where this is going. Try working out the steps on your own, and make sure that you end up with the following as the logical negation of the original statement:

$$
\exists a \in A. \forall b \in B. \forall c \in C. \exists d, e \in D. \neg Q (a, b, c, d, e)
$$

In general, we can say this: To negate a statement composed only of quantifiers and variable propositions, just switch every " $\forall$ " to " $\exists$ ", and vice-versa, and negate the propositions. Don't alter any of the sets over which we quantify, merely the quantifiers themselves and the ensuing propositions; it wouldn't make sense to change the universe of discourse. Later on, we will look at how to negate other types of statements, more complicated ones built from other connectives. Before we do that, we need to move on and define and discuss those other connectives.

# 4.4.4 Method Summary

Let's summarize what we have discovered in this section.

- Negating a universal quantification:

Let  $X$  be a set and let  $P(x)$  be a proposition. Then the negation of a universal quantification, like this,

$$
\neg \left(\forall x \in X. P (x)\right)
$$

is written as

$$
\exists x \in X. \neg P (x)
$$

In words, we have shown that saying

It is not the case that, for every  $x \in X$ ,  $P(x)$  holds.

is equivalent to saying

There exists an element  $x \in X$  such that  $P(x)$  fails.

- Negating an existential quantification:

Let  $X$  be a set and let  $Q(x)$  be a proposition. Then the negation of an existential quantification, like this,

$$
\neg \left(\exists x \in X \cdot Q (x)\right)
$$

is written as

$$
\forall x \in X. \neg Q (x)
$$

In words, we have shown that saying

It is not the case that there exists an  $x \in X$  such that  $Q(x)$  holds.

is equivalent to saying

For every element  $x \in X$ ,  $Q(x)$  fails.

# Don't Change the Quantification Set!

We mentioned above that it wouldn't make sense to change the universe of discourse when negating a statement. To think about why this makes sense, take a real-life example.

Suppose we said "Every book on this bookshelf is written in English." How would you prove to us that we are lying, that our statement is actually False? You would have to produce a book on this shelf that is written in a different language. You couldn't bring in a French novel from the room down the hall and say, "See, you were wrong!" That wouldn't prove anything about the claim we made; the realms of discourse are different, and we didn't make any claim

about what's going on in any bookshelves in other rooms. We only asserted something about this particular shelf.

For the same reason, when negate a statement like

$$
\forall b \in T. P (b)
$$

we obtain

$$
\exists b \in T. \neg P (b)
$$

without changing that realm of discourse, the set  $T$ . The original claim only asserts something about elements of  $T$ , so its negation does only that, as well.

# 4.4.5 The Law of the Excluded Middle

You know what? Let's actually discuss why we can talk about a statement and its logical negation. Built into our definition of mathematical/logical statement is the idea that such a sentence must have exactly one truth value, either True or False. Why can we do this? Well, we're in charge of the definitions here! Mathematicians have to set the ground rules—the axioms—of their systems and we want our logical system to ensure that every claim we make is decidedly True or False, and not both, and not neither.

This dichotomy is truly an axiom of our system. It is widely adopted in most of mathematics, and is famously known as The Law of the Excluded Middle. The name comes from this very idea, that every claim is True or False, so there is no middle ground between those two sides; that middle is excluded.

In essence, this makes what we do in mathematics fruitful: every claim has a truth value, and our goal is to find that truth value. Sometimes, though, we have to fall back on this axiom, this law we agreed upon, and just guarantee that some claim is either True or False, without knowing which truth value actually applies. We present an interesting and striking example of this idea here.

Proposition 4.4.1. There exist real numbers  $a$  and  $b$  that are both irrational such that  $a^b$  is rational.

(Remember that a rational number is one that can be expressed as a fraction of integers, and an irrational number is a real number that is not rational. Can you think of some examples of both rational and irrational numbers?)

Proof. We know  $\sqrt{2}$  is irrational. (Question: Why? Can you prove that? Try it now. We will prove this very soon, as well!)

The number  $\sqrt{2}^{\sqrt{2}}$  is either rational or irrational. (This is where the Excluded Middle is used.) Let's consider these two cases separately.

- Suppose that the number  $\sqrt{2}^{\sqrt{2}}$  is, indeed, rational. Then  $a = \sqrt{2}$  and  $b = \sqrt{2}$  is the example we seek, because  $a$  and  $b$  are both irrational and  $a^b$  is rational.
- Now, suppose that the number  $\sqrt{2}^{\sqrt{2}}$  is irrational. In this case, we can use  $a = \sqrt{2}^{\sqrt{2}}$  and  $b = \sqrt{2}$  as the example we seek, because  $a$  and  $b$  are both irrational and

$$
a^{b} = (\sqrt{2}^{\sqrt{2}})^{\sqrt{2}} = \sqrt{2}^{\sqrt{2} \cdot \sqrt{2}} = (\sqrt{2})^{2} = 2
$$

which is rational.

In either case, we have found an example of real numbers  $a, b \in \mathbb{R}$  such that both  $a$  and  $b$  are irrational and yet  $a^b$  is rational. This proves the claim.

This is an example of a non-constructive proof. It tells us something exists (and narrows it down to two possibilities, even) without actually telling us exactly which possibility is the one we sought all long. It is a direct use of the Law of the Excluded Middle that causes this.

(Question: Can you prove somehow that  $\sqrt{2}^{\sqrt{2}}$  is irrational? It is True, but there is no known "simple" proof of this fact. Maybe you can find one!)

Most of the proofs we do here will be of the constructive variety (but not all). These might be more satisfying to you, and we're inclined to agree. If we claim something exists, we should be able to show it to you, right? If we just talked for a while about why some such object exists somewhere else, without being able to point to it, you would have to believe us, but you might not feel great about it. Constructive proofs are subjectively better because of this, and we will always strive for one when we can. Sometimes, though, a constructive proof is not immediately clear, and we have to make a non-constructive one, like we did here.

# 4.4.6 Looking Back: Indexed Set Operations and Quantifiers

Look back at Section 3.6.2, where we defined set operations—union and intersection, in Definitions 3.6.3 and 3.6.4, respectively—performed over index sets. The main idea was that we could express the union/intersection of an entire class of sets all at once using a shorthand notation.

Look carefully at those definitions. What characterized whether an object actually is an element of an indexed union, for example? That object needed to be an element of at least one of the constituent sets of the union. That is, there needed to exist some set of which that object is an element. This sounds like an existential quantification, doesn't it?

Likewise, what characterized whether an object is an element of an indexed intersection? That object needed to be an element of all the constituent sets. That is, for all of those sets, that object must be an element thereof. This is a universal quantification.

With those observations now made, we can rewrite those definitions of indexed set operations using our new quantifier notation:

Definition 4.4.2. Suppose  $I$  is an index set and  $\forall i \in I$ .  $A_i \subseteq U$ , for some universal set  $U$ . Then

$$
\bigcup_{i \in I} A_{i} = \{x \in U \mid \exists k \in I. x \in A_{k} \}
$$

$$
\bigcap_{i \in I} A_{i} = \left\{x \in U \mid \forall i \in I. x \in A_{i} \right\}
$$

Try working with some of the examples and exercises in that Section 3.6.2 again. Do the definitions make more sense now?

# 4.4.7 Questions & Exercises

# Remind Yourself

Answering the following questions briefly, either out loud or in writing. These are all based on the section you just read, so if you can't recall a specific definition or concept or example, go back and reread that part. Making sure you can confidently answer these before moving on will help your understanding and memory!

(1) What is the negation of a mathematical statement? How are a statement and its negation related?  
(2) Why is the negation of a  $\forall$  claim an  $\exists$  one?

Why is the negation of an  $\exists$  claim a  $\forall$  one?

(3) What is a non-constructive proof? To what type of claim— $\exists$  or  $\forall$ —does this term apply?  
(4) Consider the claim

$$
\forall x \in S. P (x)
$$

Why is its negation neither of the following?

$$
\begin{array}{l} \forall x \notin S. P (x) \\ \exists x \notin S. \neg P (x) \\ \end{array}
$$

# Try It

Try answering the following short-answer questions. They require you to actually write something down, or describe something out loud (to a friend/classmate, perhaps). The goal is to get you to practice working with new concepts, definitions, and notation. They are meant to be easy, though; making sure you can work through them will help you!

(1) For each of the following statements, write its negation. Which one—the original or the negation—is True?

(a)  $\forall x\in \mathbb{R}$  .  $\exists n\in \mathbb{N}$ $n > x$  
(b)  $\exists n\in \mathbb{N}$ $\forall x\in \mathbb{R}$ $n > x$  
(c)  $\forall x\in \mathbb{R}.\exists y\in \mathbb{R}.y = x^3$  
(d)  $\exists y\in \mathbb{R}$  .  $\forall x\in \mathbb{R}$ $y = x^{3}$

(2) For each of the following statements, write its negation. Which one—the original or the negation—is True?

(a)  $\exists S\in \mathcal{P}(\mathbb{N})\cdot \forall x\in \mathbb{N}$ $x\in S$  
(b)  $\forall S\in \mathcal{P}(\mathbb{N}).\exists x\in \mathbb{N}.x\in S$  
(c)  $\forall x\in \mathbb{N}$  .  $\exists S\in \mathcal{P}(\mathbb{N})$ $x\in S$  
(d)  $\exists x\in \mathbb{N}$  .  $\forall S\in \mathcal{P}(\mathbb{N})$ $x\in S$

(3) Let  $I = \{x\in \mathbb{R}\mid 0 <   x <   1\}$

For each of the following defined sets, write out the defining condition that determines whether a number  $y \in \mathbb{R}$  is an element of the set, using quantifiers.

Then, determine what the set is, and write your answer using set-builder notation.

(Try to prove your claim, as well, using a double-containment argument!)

(a)

$$
S = \bigcup_{x \in I} \{y \in \mathbb {R} \mid x <   y <   2 \}
$$

(b)

$$
T = \bigcap_{x \in I} \left\{y \in \mathbb {R} \mid - x <   y <   x \right\}
$$

(c)

$$
V = \bigcup_{x \in I} \left\{y \in \mathbb {R} \mid - 3 x <   y <   4 x \right\}
$$

(4) Let  $P = \{y \in \mathbb{R} \mid y > 0\}$ . Consider this statement:

$$
\forall \varepsilon \in P. \exists \delta \in P. \forall x \in \left\{y \in \mathbb {R} \mid - \delta <   y <   \delta \right\}. | x^{3} | <   \varepsilon
$$

Write out the logical negation of this statement.

What does this statement say? What does its negation say?

Which one is True? Can you prove it?

(5) Let  $A, B, C, D$  be arbitrary sets.

Let  $P(x), Q(x,y), R(x,y,z)$  be arbitrary variable propositions.

Write the negation of each of the following statements.

(a)  $\forall a\in A.\exists b\in B.Q(a,b)$  
(b)  $\forall a\in A.\neg P(a)$  
(c)  $\forall c\in C.\forall d\in D.\neg Q(c,d)$  
(d)  $\exists a_{1},a_{2}\in A.\forall d\in D.R(a_{1},a_{2},d)$  
(e)  $\forall b_{1},b_{2},b_{3}\in B.\neg R(b_{1},b_{2},b_{3})$  
(f)  $\exists b\in B.\forall c\in C.\forall d\in D.R(d,b,c)$

# 4.5 Logical Connectives

To build mathematical statements from simpler ones (meaning ones composed of just quantifiers and propositions) we can connect several statements with certain words and phrases—such as "and", "or", and "implies"—to create more complicated statements and assert further claims and truths. We call these words and phrases logical connectives, and each of them has their own corresponding mathematical symbol and meaning. These meanings will make sense to you, based on our intuitive grasp of the English language and rational thought, but we emphasize that one of the major goals of introducing mathematical logic and its corresponding notation is to build these intuitions into rigorous and unambiguous concepts.

Throughout this section, let us assume that  $P$  and  $Q$  are arbitrary mathematical statements. These statements themselves can be composed of complicated combinations of quantifiers and other connectives and all sorts of mathematical notions. The point is that the way we combine  $P$  and  $Q$  into a larger statement is independent of their individual compositions. Before, we saw that " $\neg (\forall x \in X \cdot R(x))$ " is equivalent to " $\exists x \in X \cdot \neg R(x)$ ", regardless of what the statement  $R(x)$  was and how complicated it might have been. This idea continues here. We can talk about how to combine two statements without knowing what they are, individually.

We should also point out that these constituent statements,  $P$  and  $Q$ , may actually be variable propositions. For instance, we will consider how to connect two variable propositions,  $P(x)$  and  $Q(x)$ , that each depend on some variable  $x$ . The definitions and methods we develop in this section apply to these variable propositions even though these propositions, themselves, do not have truth values without being told what the value of the variable  $x$  is.

When we want to talk about those propositions meaningfully and mathematically, we will have to quantify the variable  $x$ . Thus, if we have variable propositions  $P(x)$  and  $Q(x)$ , we can still meaningfully define  $P(x) \wedge Q(x)$  (where  $\wedge$  means "and" as you'll see in the next section). We could then, in an example or a problem, talk about a claim of the form

$$
\exists x \in X. P (x) \land Q (x)
$$

This is a mathematical statement.

Essentially, the point we want to make is that these connectives still apply to variable propositions, but the relevant variables will have to be quantified

somewhere in an overall statement to make the variable proposition into a proper mathematical statement.

# 4.5.1 And

To say

$$
" P \text{an d} Q^{\prime \prime} \text{is Tr ue}
$$

means that both statements have the truth value: True. If either one of the statements  $P$  or  $Q$  were False, then the statement "  $P$  and  $Q$ " would be False, as well. This definition encapsulates this idea:

Definition 4.5.1. We use the symbol " $\wedge$ " between two mathematical statements to mean "and". For instance, we read " $P \wedge Q$ " as " $P$  and  $Q$ ".

This is referred to as the conjunction of  $P$  and  $Q$ .

The truth value of  $P \land Q$  is True when both  $P$  and  $Q$  are true, and the truth value is False otherwise.

Here are some examples to demonstrate this definition:

Example 4.5.2.

$$
(1 + 3 = 4) \wedge (\forall x \in \mathbb {R}. x^{2} \geq 0)
$$

True

$$
(1 + 3 = 5) \wedge (\forall x \in \mathbb {R} \cdot x^{2} \geq 0)
$$

False

$$
(1 + 3 = 5) \wedge (\exists x \in \mathbb {Q}. x^{2} = 2)
$$

False

# Notation: Parentheses

It's sometimes common to drop the parentheses that we used in the examples above. For example, the first line in the above example can be written equivalently as

$$
1 + 3 = 4 \land \forall x \in \mathbb {R}. x^{2} \geq 0
$$

Using the parentheses tends to make the statement more readable. Without them, we have to think for a few extra moments about where one part of the statement ends and the next one begins, but we can still eventually make sense of it. We will try to use parentheses whenever they make a statement more easily understandable.

# Notation: Sets and Logic

You might notice the similarity between the logical connective " $\land$ " and the set operator " $\cap$ ". This is not a coincidence!

As we will discuss below in Section 4.5.4, we can write the definition of " $\cap$ " using the connective " $\wedge$ " because of the underlying logic of that set operator. Try it now, and then glance ahead to that section briefly, if you'd like. In general, though, be careful to keep these two notations separate! If  $A$  and  $B$  are sets, the phrase " $A \wedge B"$  is not well-defined; what was meant is " $A \cap B$ ".

# 4.5.2 Or

To say

$$
" P \text{or} Q" \text{is Tr ue}
$$

means that " $P$  is True, or  $Q$  is True". We need to know that one of the statements is True to declare that the entire statement has the truth value True. We don't care whether both  $P$  and  $Q$  are true or not, merely that at least one of them is true.

This is in contrast with the so-called "exclusive OR" of computer science, also known as XOR, which declares " $P \lor Q$ " to be False when both  $P$  and  $Q$  are True. In mathematics, we use the inclusive "or". We only care whether at least one of the statements holds.

Definition 4.5.3. We use the symbol  $\vee$  between two mathematical statements to mean "or". For instance, we read " $P \lor Q$ " as " $P \text{ or } Q$ ".

This is referred to as the disjunction of  $P$  and  $Q$ .

The truth value of  $P \vee Q$  is True when at least one of  $P$  and  $Q$  is True (even when both are True), and the truth value is False otherwise.

Example 4.5.4.

$$
\begin{array}{l} (1 + 3 = 4) \vee (\forall x \in \mathbb {R}. x^{2} \geq 0) \quad \text{Tr ue} \\ (1 + 3 = 5) \vee (\forall x \in \mathbb {R}. x^{2} \geq 0) \quad \text{Tr ue} \\ (1 + 3 = 5) \vee (\exists x \in \mathbb {R}. x^{2} <   0) \quad \text{Fa ls e} \\ \end{array}
$$

# Notation

The same notes about notation that we mentioned in the previous subsection apply here, as well. First, the use of parentheses—like in the above examples—is helpful but not technically required. We will try to use them whenever it helps, though.

Second, you might notice the similarity between the logical connective " $\vee$ " and the set operator " $\cup$ ". Again, this is not a coincidence! Try rewriting the definition of " $\cup$ " using " $\vee$ ", and glance ahead briefly at Section 4.5.4. In general, though, be careful to keep these two notations separate! If  $A$  and  $B$  are sets, the phrase " $A \lor B$ " is not well-defined; what was meant is " $A \cup B$ ".

# 4.5.3 Conditional Statements

This is the hardest logical connective to work with and continually gives students some problems, so we want to be extra careful and clear about this one. We want the statement "If  $P$ , then  $Q$ " (sometimes written as "  $P$  implies  $Q$  " ) to have the truth value True when the truth of  $Q$  necessarily follows from the truth of  $P$ . That is, we want this statement to be True if the following holds:

Whenever  $P$  is True,  $Q$  is also True.

# Truth Table and Definition

Since this is the hardest connective to suss out, semantically, let's introduce the idea of a truth table to make the notation easier:

<table><tr><td>P</td><td>Q</td><td>¬P</td><td>P ∧ Q</td><td>P ∨ Q</td><td>P ⇒ Q</td><td>Q ⇒ P</td></tr><tr><td>T</td><td>T</td><td>F</td><td>T</td><td>T</td><td>T</td><td>T</td></tr><tr><td>T</td><td>F</td><td>F</td><td>F</td><td>T</td><td>F</td><td>T</td></tr><tr><td>F</td><td>T</td><td>T</td><td>F</td><td>T</td><td>T</td><td>F</td></tr><tr><td>F</td><td>F</td><td>T</td><td>F</td><td>F</td><td>T</td><td>T</td></tr></table>

You may have seen a truth table before, in other mathematics courses, but even if you haven't, don't worry! Here's the main idea: Each column corresponds to a particular mathematical statement and its corresponding truth values. Each row corresponds to a particular assignment of truth values to the constituent statements,  $P$  and  $Q$ .

Notice that there are 4 rows because  $P$  and  $Q$  can each have one of two different truth values, so there are 4 possible combinations of those choices. Reading across a particular row, we find the corresponding truth values for other statements, based on what the  $\mathsf{T}$  and  $\mathsf{F}$  assignments for  $P$  and  $Q$  are in the first two columns.

Notice that the columns for  $P \wedge Q$  and  $P \vee Q$  follow the definitions given above. The column for  $P \wedge Q$  has only one  $\mathsf{T}$ , and it corresponds to the case where both  $P$  and  $Q$  are True. All other cases make  $P \wedge Q$  a False statement. Likewise, the column for  $P \vee Q$  has only one  $\mathsf{F}$ , and it corresponds to the case where both  $P$  and  $Q$  are False. All other cases make  $P \vee Q$  a True statement.

Now, why are the last two columns the way they are? Let's say that I make the claim "If you work hard, then you will get an A in this course". Here,  $P$  is "You work hard" and  $Q$  is "You will get an A". When can you call me a liar? When can you declare I told the truth? Certainly, if you work hard and get an A, I told the truth. Also, if you work hard and don't get an A, then I lied to you. However, if you don't work hard, then no matter what happens, you don't get to call me a liar! My claim didn't cover your situation; I was assuming all along you would just work hard! Thus, I didn't speak an untruth and so, by the Law of the Excluded Middle, I did speak the truth. The negation of a lie is a truth.

This situation—where the third and fourth rows of the  $P \Rightarrow Q$  column are True—is known as a false hypothesis. When the statement on the left of the " $\Rightarrow$ " does not hold, then we are not in a situation that is meant to be addressed by the claim, so we cannot assert that the claim is False. Therefore, the claim must be True (again, by the Law of the Excluded Middle).

Let's make the proper definition of this symbol and then consider more examples to illustrate the definition.

Definition 4.5.5. We use the symbol " $\Longrightarrow$ " between to mathematical statements to mean "If … then" or "implies". For instance, we read " $P \Longrightarrow Q$ " as "If  $P$ , then  $Q$ " or " $P$  implies  $Q$ ".

This is referred to as a conditional statement.

The truth value of " $P \Rightarrow Q$ " is True assuming that  $Q$  holds whenever  $P$  holds.

The truth value is False only in the case where  $P$  is True and yet  $Q$  is False.

We refer to  $P$  as the hypothesis of the conditional statement and  $Q$  as the conclusion.

That key word "whenever" in the definition should indicate to you why the false hypothesis cases make sense. When we know  $P$  is true and can deduce that  $Q$  is also true, then we get to declare  $P \Rightarrow Q$  as True. If  $P$  wasn't true to begin with, we cannot declare  $P \Rightarrow Q$  to be False. We only get to say  $P \Rightarrow Q$  is false when  $Q$  did not necessarily follow from  $P$ , i.e., when there is an instance where the hypothesis  $P$  is True but the conclusion  $Q$  is False.

# Examples

Here are several examples to help you get the idea:

$$
(1 + 3 = 4) \Longrightarrow (\forall x \in \mathbb {R}. x^{2} \geq 0) \quad T r u e
$$

$$
(1 + 3 = 5) \Longrightarrow (\forall x \in \mathbb {R}. x^{2} \geq 0) \quad T r u e
$$

$$
(1 + 3 = 5) \Longrightarrow (\text{Ab ra ha mL in co ln is al iv e}) \quad \text{Tr ue}
$$

$$
(1 + 1 = 2) \Longrightarrow (0 = 1) \quad \text{Fa ls e}
$$

$$
(0 = 0) \Longrightarrow (\exists x \in \mathbb {R}. x^{2} <   0) \quad F a l s e
$$

$$
\text{(Py th ag or ea nT he or em)} \Longrightarrow (1 = 1) \quad \text{Tr ue}
$$

$$
(0 = 1) \Rightarrow (1 = 1) \quad \text{Tr ue}
$$

Notice that the second and third examples are True because they have the false hypothesis " $1 + 3 = 5$ ". Regardless of the conclusion, the entire conditional statement must be True because of this. It doesn't matter that " $\forall x \in \mathbb{R} \cdot x^2 \geq 0$ " happens to be True or that "Abraham Lincoln is alive" happens to be False; that false hypothesis determines the statement's truth value.

Also, notice that the second-to-last example is True, but it doesn't help us determine whether or not the Pythagorean Theorem itself is True! This is what we did in the False "spoof" of the theorem back in Chapter 1. Look back to Section 1.1.1, specifically "Proof 2". We assumed the Pythagorean Theorem was True and then logically derived a True statement from that assumption. That does not make the hypothesis valid, just because we derived a valid conclusion!

This idea is so important, that we will even show you again this striking example. Notice that it's logical form is exactly the same as that other spoof:

"Proof". Assume  $1 = 0$ . Then, by the symmetric property of  $=$ , it is also true that  $0 = 1$ . Adding these two equations tells us  $1 = 1$ , which is True. Therefore,  $0 = 1$ .

This is the main point here:

Knowing a conditional statement, overall, is True, doesn't tell us anything about the truth values of the constituent propositions.

This is also strikingly illustrated in the third and seventh statements above; both conditional claims are True, but we certainly don't get to conclude that Abraham Lincoln is alive, or that  $0 = 1$ .

# "Implies" is not the same as "Can be deduced from"

There is often some confusion with using the word "implies" to mean an "If … then …" statement, a conditional statement. We believe this arises because of some connotations surrounding the word "implies"; specifically, it seems to convey some sort of causality. For instance, consider this statement:

$$
1 + 3 = 4 \Longrightarrow 2 + 3 = 5
$$

This is a True conditional statement, and our minds probably recognize this because we can just take the hypothesis, namely  $1 + 3 = 4$ , and add 1 to both sides, yielding the equation in the conclusion. In this sense, it seems that the truth of the hypothesis has some influence on the truth of the conclusion: we can deduce one directly from the other. This does not have to be the case, in general!

Look back at the first example given above:

$$
(1 + 3 = 4) \Rightarrow (\forall x \in \mathbb {R}. x^{2} \geq 0)
$$

What does the fact that  $1 + 3 = 4$  have to do with the fact that any real number squared is non-negative? Does it even have any connection? We don't actually care! We can still identify this conditional statement as True, whether or not we can find a way to deduce the conclusion directly from the hypothesis (and whether or not such a deduction even exists). Only the truth values of the constituent statements matter.

Granted, when we work on proving conditional statements, we will likely try to deduce one statement directly from another. It's important to keep in mind, though, that this is a consequence of our proof strategy, and not an underlying part of how conditional statements are defined. For these reasons, we tend to write conditional statements using the "If … then …" form, instead of using "implies". We might sometimes use it, and we're sure you'll see it in other mathematical writings. For now, though, we'll try to avoid it as much as possible, while we're still learning about these logical statements and connectives.

# Quantifying Variables: Still Important!

In mathematics, we often want to prove conditional statements that involve variables. For instance, we might want to show that, in the context of the real numbers  $\mathbb{R}$ , the following conditional claim holds:

$$
x > 1 \Longrightarrow x^{2} - 1 > 0
$$

That sentence, written in the line above, is itself a variable proposition, and the definition of the symbol " $\Rightarrow$ " applies to it.

If we knew that  $x > 1$  and also  $x^2 - 1 > 0$ , then we could declare the conditional to be True. If we knew that  $x \leq 1$ , then we wouldn't even care whether  $x^2 - 1 > 0$  or not; we could declare the conditional to be True. This is how the definition of " $\Rightarrow$ " applies here.

Remember, though, that the conditional claim, as written above, is not technically a mathematical statement. We were making that claim in the context of the real numbers, so it would really make sense to write

$$
\forall x \in \mathbb {R}. (x > 1 \Rightarrow x^{2} - 1 > 0)
$$

This is, ultimately, what the writer was trying to claim, so they should just say so! We make the same recommendation to you. These logical connectives— $\land$  and  $\lor$  and  $\Rightarrow$ —make sense and can be applied to variable propositions. Outside of that scope, somewhere else in the statement you're putting together, there must be some kind of quantification on those variables. Only then can we be assured that the sentence is a mathematical statement with one truth value.

# Writing " $\Rightarrow$ " using " $\vee$ "

There is a useful and important idea worth mentioning. This is partly because we will use it later, but also partly because it might help you understand conditional statements and learn how to use them.

This idea hinges on the notion of a false hypothesis. Consider a conditional statement,  $P \Rightarrow Q$ . If  $P$  fails, then the entire statement is True, regardless of  $Q$ 's truth value. However, if  $P$  holds, then we definitely need  $Q$  to hold, as well, to declare the entire statement to be True.

These observations allow us to identify two ways in which a conditional statement can hold, and write these two ways in an "or" statement. Either  $\neg P$  holds (i.e. a false hypothesis), or else  $Q$  holds. In either of these situations, the conditional statement  $P \Rightarrow Q$  must hold! Let's state this claim outright for you to consider:

The conditional statement " $P \Rightarrow Q$ " and the statement " $\neg P \lor Q$ "

have the same truth value.

This is a good example of a logical equivalence, which is a topic we will discuss in the next section. For now, we will present the truth table for the two statements mentioned above. Notice that they have the same truth value, regardless of the truth values of the constituent statements,  $P$  and  $Q$ . This serves as further verification that the statements are equivalent, in addition to the description we provided above.

<table><tr><td>P</td><td>Q</td><td>¬P</td><td>¬P ∨ Q</td><td>P ⇒ Q</td></tr><tr><td>T</td><td>T</td><td>F</td><td>T</td><td>T</td></tr><tr><td>T</td><td>F</td><td>F</td><td>F</td><td>F</td></tr><tr><td>F</td><td>T</td><td>T</td><td>T</td><td>T</td></tr><tr><td>F</td><td>F</td><td>T</td><td>T</td><td>T</td></tr></table>

# Investigating More Examples

Let's consider some more examples of conditional claims and decide whether they are True or False. In so doing, we are helping you to better understand how  $\Rightarrow$  works.

Then, we'll move on to proof strategies and discuss how to formally and rigorously prove claims like these, with logical connectives and quantifiers.

Example 4.5.6. We will start here with a "real world" example, to get used to the logic involved. Throughout this example, pretend we are in a class that only has lectures officially scheduled on Mondays, Wednesdays, and Fridays.

You'll notice that we will take two statements,  $P$  and  $Q$ , and consider all four possible combinations of these statements and their negations to make conditional statements.

- "If we have lecture today, then it is a weekday."

(Note: There is some implicit quantification in this sentence. We are really saying that "For all days  $d$  in the weekly calendar, if we have lecture on day  $d$ , then  $d$  is a weekday." We think that the main idea is conveyed more succinctly by the sentence above, so we will use that version. Keep in mind that this is the meaning of the sentence and, in our discussion below, we will have to consider the different cases of that quantification.)

This can be written logically by defining  $P$  to be "We have lecture today" and  $Q$  to be "Today is a weekday"; then the claim is  $P \Rightarrow Q$ .

Is this True? Notice that the statements  $P$  and  $Q$  don't specify what day it is, so if we were to assert this claim to be True, that truth should be independent of the current day. That is, whatever day it is, we would have to show that  $P \Rightarrow Q$  holds. Let's do that by considering a few cases:

- Pretend today is Saturday or Sunday. Since we never have lecture on these days, the conditional claim is not a lie, so it is True.  
- Pretend today is Monday or Wednesday or Friday. If we do, indeed, have lecture today, then it is definitely a weekday, so the claim is True.  
- Pretend today is Tuesday or Thursday. We don't typically have lecture today, but even in the special case that we did (for some rescheduling reason), it would still be a weekday, so the claim is True.

In any of the possible cases, the claim holds. Thus,  $P \Rightarrow Q$  is True.

You might interject to say, "Why bother with the cases at all? Couldn't we just say that no matter what day it is, supposing we have lecture, then we conclude it is definitely a weekday?" Well, yes, we could! That's actually a better strategy, a more direct route, you might say.

This hints at how we will prove conditional claims in the future. Since we don't, in fact, care about the situations where we don't have lecture (the

false hypothesis) we only need to suppose we have lecture on day  $X$  and deduce that  $X$  is a weekday. This is the method we will use to directly prove a conditional claim.

- "If it is a weekday, then we have lecture today."

This is logically written as  $Q \Rightarrow P$ , using the same definitions of  $P$  and  $Q$  as the previous example.

Is this claim True? Definitely not! We didn't have lecture on the first Tuesday of the semester, yet that day was a weekday. Thus, the claim lies in that instance! On that Tuesday,  $Q$  was True but  $P$  was False. Thus,  $Q \Rightarrow P$  is False.

- "If it is not a weekday, then we don't have lecture today."

This is logically written as  $\neg Q \Rightarrow \neg P$ , using the same definitions of  $P$  and  $Q$  as the example above.

Is this claim True? Yes, and we can prove it directly. Suppose that it is not a weekday; that is, pretend today is Saturday or Sunday. Obviously, the university would not be so sadistic as to schedule a lecture on a weekend, so we can necessarily declare that we don't have lecture, i.e.  $\neg P$  holds. This shows that  $\neg Q \Rightarrow \neg P$  is a True statement.

(Question: Why did we not need to consider the case where today is a weekday?)

- "If we don't have lecture today, it is not a weekday."

This is logically written as  $\neg P \Rightarrow \neg Q$ , using the same definitions of  $P$  and  $Q$  as the example above.

Is this claim True? Well, let's think about it. What if we pretend we don't have lecture today. What can we necessarily say? Is it definitely not a weekday? I don't think so! Maybe it's a Tuesday, and we just don't have a scheduled lecture. This shows that the claim is False; we have an instance where the hypothesis  $(\neg P)$  holds, and yet the conclusion  $(\neg Q)$  does not hold.

Notice that there are situations where  $\neg P$  holds and  $\neg Q$  does, as well. For instance, if today were Saturday, then certainly we don't have lecture and it is not a weekday. This specific instance does not mean that the claim is True, though! We need to verify its truth for all instances.

Example 4.5.7. Let's do the same kind of analysis with a more "mathy" example. Throughout this example, let  $A$  and  $B$  be arbitrary sets. Also, let  $P$  be " $A \subseteq B$ ", and let  $Q$  be " $A - B = \varnothing$ ".

We will do what we did in the previous example and consider all four possible ways of combining  $P$  and  $Q$  and their negations to make conditional statements.

- Is  $P \Rightarrow Q$  True?

Yes! Let's pretend  $A$  and  $B$  satisfy the relationship  $A \subseteq B$ . This means every element of  $A$  is also an element of  $B$ . Therefore, we cannot possibly have an element of  $A$  that does not belong to  $B$ , Since  $A - B$  is the set of elements that belong to  $A$  and not  $B$ , we conclude that there are no such elements, so  $A - B = \emptyset$ .

- Is  $Q \Rightarrow P$  True?

Yes! Let's pretend  $A - B = \varnothing$ . This means there are no elements of  $A$  that are also not elements of  $B$ . (Think about this.) Put another way, any element  $x \in A$  cannot have the property that  $x \notin B$  (or else  $x \in A - B$  and so  $A - B \neq \varnothing$ ); thus,  $x \in B$ , necessarily. Hey, this is exactly what  $A \subseteq B$  means! Whenever  $x \in A$ , we conclude  $x \in B$ , too. This shows  $Q \Rightarrow P$  is true.

- Is  $\neg Q \Rightarrow \neg P$  True?

Hmm, this is harder to figure out. Let's pretend  $\neg Q$  holds; this means  $A - B \neq \emptyset$ . That is, there exists some element  $x$  that satisfies  $x \in A$  and  $x \notin B$ . Certainly, then  $A \nsubseteq B$ , because we have identified an element of  $A$  that is not an element of  $B$  (whereas the  $\subseteq$  relationship would dictate that every element of  $A$  is also an element of  $B$ ). Thus,  $\neg Q \Rightarrow \neg P$  is True.

- Is  $\neg P \Rightarrow \neg Q$  True?

Again, we need to think about this. Let's just write down what  $\neg P$  means. To say  $A \nsubseteq B$  means there exists some element  $x \in A$  that also satisfies  $x \notin B$ . (This is what we used in the previous case, too.) Okay, what does that tell us? Consider the set  $A - B$ . Does it have any elements? Yes, it has at least  $x$  as an element! Since  $x \in A \land x \notin B$ , we can say  $x \in A - B$ . Thus,  $A - B \neq \emptyset$ , so we conclude that  $\neg P \Rightarrow \neg Q$  is True.

# Observations and Facts About " $\Rightarrow$ "

Okay, now we have some practice working with conditional statements and determining their truth values. What you should notice from the examples we discussed is that knowing  $P \Rightarrow Q$  holds does not tell us anything about  $Q \Rightarrow P$ . In both of these examples above,  $P \Rightarrow Q$  was True; however,  $Q \Rightarrow P$  was True in one example and False in the other. There is nothing we can necessarily say, with certainty, about  $Q \Rightarrow P$ , even if we know the truth value of  $P \Rightarrow Q$ . This idea is so important, that we will touch on it in the next subsection.

For now, let's make a few more remarks about the " $\Longrightarrow$ " connective.

- Remember that, given mathematical statements  $P$  and  $Q$ , the sentence "  $P \Rightarrow Q$ " is, itself, another mathematical statement. It has a truth value. That truth value depends on  $P$  and  $Q$  (in the way we defined it

above), but it does not tell us anything about the truth values of  $P$  and  $Q$ . So, if you just write down the claim

$$
\text{Bl ah bl ah} \quad \Longrightarrow \quad \text{Ya da ya da}
$$

on your paper, we have no idea if you're trying to assert whether "Blah blah" or "Yada yada" are True or False! To a mathematician, this just says:

The conditional statement "'Blah blah' implies 'Yada yada'" is True.

If you wish to make some kind of inference or deduction, then use some helping words and sentences to indicate that. Write something like this:

$$
P \Rightarrow Q \text{be ca us e} \dots
$$

Also,  $P$  holds because  $\ldots$

Therefore,  $Q$  holds.

If you have studied formal logic before, or have seen this type of argument in a philosophy course, then you might recognize this as Modus Ponens.

- The idea of a false hypothesis yielding a True conditional is kind of weird; we realize this. It's a direct consequence of the Law of the Excluded Middle. Under a false hypothesis, we don't get to say the overall statement is False, so it must be True, since it must be one or the other.  
- Remember that we can always write a conditional statement without the " $\Rightarrow$ " symbol by converting it to an "or" statement.

The statements " $P \Rightarrow Q$ " and " $\neg P \lor Q$ " always have they always have the same truth value.

# Converse and Contrapositive

Let's give some names to the different types of conditional statements related to a given conditional statement. We will refer to these frequently later on.

Definition 4.5.8. Let  $P$  and  $Q$  be mathematical statements. Consider the "original" claim,  $P \Rightarrow Q$ .

We refer to  $Q \Longrightarrow P$  as the converse of the original claim.

We refer to  $\neg Q \Rightarrow \neg P$  as the contrapositive of the original claim.

By our observations in the previous subsection, we know that the converse does not necessarily have the same truth value as the original. What we will see (and prove) in the next section is that the contrapositive always has the same truth value as the original claim. (This is the notion of logical equivalence, which we will discuss in full detail in the next section.)

You might wonder why we need this terminology at all. Well, since the contrapositive can be shown to be logically equivalent to the original claim, it gives rise to a valid proof method when we try to prove conditional statements. We will develop that very soon. That's why we use the contrapositive.

The converse is interesting because its truth value is not necessarily tied to that of the original statement: even knowing the original is True, the converse might be True and it might be False. Thus, whenever we prove a claim  $P \Rightarrow Q$  to be true, a mathematician (probably) immediately wonders, "Hmm, does the converse also hold?" It's a natural question to ask, and worth thinking about whenever you face a conditional statement. (In fact, if you ever find yourself at a party with mathematicians, and you hear someone talking about an "If … then …" statement, you should ask, "Does the converse hold, as well?" You might impress your fellow guests.)

The converse is also the subject of a common logical fallacy you might encounter in everyday life. Perhaps you are trying to argue that  $A \Rightarrow B$  in a debate with a friend. What if they retort, "Well,  $B$  doesn't necessarily imply  $A!$  Your argument is wrong!" Have you ever been frustrated by that situation? You might have been tempted to shout, "So what? I wasn't trying to say anything about whether  $B \Rightarrow A$ . I was talking about  $A \Rightarrow B$ , you …" (We'll cut ourselves off before we get mean.) Whether or not your friend is right, knowing the truth value of the converse doesn't tell you anything about the truth value of your original claim. You should tell them that! Next time, just say, "You're talking about the converse, which is not necessarily logically connected to my claim."

Okay, now that we have defined all of the requisite logical symbols and seen some examples, it's time to move on and start proving things about them! But first, a short aside about set operations, and then a few practice problems.

# 4.5.4 Looking Back: Set Operations and Logical Connectives

Look back at Sections 3.4 and 3.5, where we defined subsets and set operations. All of those definitions made use of some logical ideas, but we wrote them in English back then, relying on our collective intuition and working knowledge of logic. We can rewrite them now using quantifiers and connectives!

First, recall the definition of subset. We write  $A \subseteq B$  if the following holds: whenever  $x \in A$ , we can also say  $x \in B$ . Notice that key word, "whenever", which signals both a universal quantification and a conditional statement. Think about how you would rewrite the definition of  $A \subseteq B$ , using this notion, then read on to see our version …

Definition 4.5.9. Let  $A, B, U$  be sets, where  $A, B \subseteq U$  (i.e.  $U$  is a universal set). We say  $A$  is a subset of  $B$ , and write  $A \subseteq B$ , if and only if

$$
\forall x \in U. x \in A \Longrightarrow x \in B
$$

This makes sense because it asserts that "whenever" statement we wrote in the above paragraph: whenever  $x \in A$ , we must also be able to conclude  $x \in B$ ; "if  $x \in A$ , then  $x \in B$ " must hold.

Look back again at the definitions of the set operations we gave. Try to write your own versions of those definitions using logical symbols and then read ours here. Think about how they make sense, how they express the same underlying ideas.

Definition 4.5.10. Let  $A, B, U$  be sets, where  $A, B \subseteq U$  (i.e.  $U$  is a universal set). Then,

$$
\begin{array}{l} A \cap B = \{x \in U \mid x \in A \wedge x \in B \} \\ A \cup B = \{x \in U \mid x \in A \vee x \in B \} \\ A - B = \{x \in U \mid x \in A \wedge \neg (x \in B) \} = \{x \in U \mid x \in A \wedge x \notin B \} \\ \bar {A} = \{x \in U \mid \neg (x \in A) \} = \{x \in U \mid x \notin A \} \\ \end{array}
$$

While we're here, we can also redefine a partition of a set. This will make use of logical connectives, but this also hearkens back to indexed sets and how they are defined in terms of quantifiers. Everything we've learned is coming together here!

Definition 4.5.11. Let  $A$  be a set. A partition of  $A$  is a collection of sets that are pairwise disjoint and whose union is  $A$ .

That is, a partition is formed by an index set  $I$  and non-empty sets  $S_{i}$  (defined for every  $i \in I$ ) that satisfy the following conditions:

(1)  $\forall i\in I\bullet S_i\subseteq A$  
(2)  $\forall i,j\in I\bullet i\neq j\Rightarrow S_i\cap S_j = \emptyset .$  
(3)  $\bigcup_{i\in I}S_{i} = A$

Look back to Definition 3.6.9 to see how we originally defined a partition. Do you see how we are saying the same thing here, just using logical symbols?

# 4.5.5 Questions & Exercises

# Remind Yourself

Answering the following questions briefly, either out loud or in writing. These are all based on the section you just read, so if you can't recall a specific definition or concept or example, go back and reread that part. Making sure you can confidently answer these before moving on will help your understanding and memory!

(1) What is the difference between  $\wedge$  and  $\vee$ ?

# 4.5. LOGICAL CONNECTIVES

(2) What is the difference between  $\wedge$  and  $\cap$ ?

What is the difference between  $\vee$  and  $\cup$ ?

(3) Write out a truth table for the statement  $P \Rightarrow Q$ .  
(4) Why are  $P \Rightarrow Q$  and  $\neg P \lor Q$  logically equivalent statements?  
(5) What is the converse of a conditional statement?

What is the contrapositive of a conditional statement?

(6) Are the truth values of a conditional statement and its converse related?

# Try It

Try answering the following short-answer questions. They require you to actually write something down, or describe something out loud (to a friend/classmate, perhaps). The goal is to get you to practice working with new concepts, definitions, and notation. They are meant to be easy, though; making sure you can work through them will help you!

(1) For each of the following sentences, rewrite it using logical notation and determine whether it is True or False.

(a) Every integer is either strictly positive or strictly negative.  
(b) For any given real number, there exists a natural number that is strictly bigger.  
(c) For every real number, if it is negative, then its cube is also negative.  
(d) There is a subset of  $\mathbb{Z}$  that has the property that whenever a number is an element of that set, so is its square.  
(e) There is a natural number that is both even and odd.

(2) Rewrite each of the following  $\forall$  claims as a conditional statement, and determine whether it is True or False.

(a)  $\forall x\in \{y\in \mathbb{N}\mid \exists k\in \mathbb{Z}.y = 2k\} .x^{2}\in \{y\in \mathbb{N}\mid \exists k\in \mathbb{Z}.y = 2k\}$  
(b)  $\forall x\in \{y\in \mathbb{N}\mid \exists k\in \mathbb{Z}.y = 2k + 1\} .x^{2}\in \{y\in \mathbb{N}\mid \exists k\in \mathbb{Z}.y = 2k + 1\}$  
(c)  $\forall t\in \{z\in \mathbb{R}\mid z^2 >4\} .t > 2$

(3) Rewrite each of the following conditional statements as a  $\forall$  claim, using set-builder notation, and determine whether it is True or False.

(a)  $\forall x\in \mathbb{R}.x > 3\Rightarrow x^2 <  9$  
(b)  $\forall x\in \mathbb{R}.x <   3\Rightarrow x^{2} <   9$  
(c)  $\forall t\in \mathbb{R}.t^2 -6t + 9\geq 0\Rightarrow t\geq 3$

(4) Let's define the following variable propositions:

$$
P (x) \text{is} “ \frac{1}{2} <   x ”
$$

$$
Q (x) \text{is} “ x <   \frac{3}{2} ”
$$

$$
R (x) \text{is} “ x^{2} = 4 ”
$$

$$
S (x) \text{is} “ x + 1 \in \mathbb {N} ”
$$

For each of the following statements, determine whether it is True or False.

(a)  $\forall x\in \mathbb{N}.P(x)$  
(b)  $\forall x\in \mathbb{N}$ $Q(x)\Rightarrow P(x)$  
(c)  $\forall x\in \mathbb{Z}$ $Q(x)\Rightarrow P(x)$  
(d)  $\exists x\in \mathbb{N}$  .  $\neg S(x)\lor R(x)$  
(e)  $\exists x\in \mathbb{Z}$ $R(x)\wedge \neg S(x)$  
(f)  $\forall x\in \mathbb{R}$ $R(x)\Rightarrow S(x)$  
(g)  $\exists x\in \mathbb{R}$ $P(x)\wedge S(x)$  
(h)  $\forall x\in \mathbb{Z}$ $R(x)\Rightarrow \big(P(x)\lor Q(x)\big)$

(5) For each of the following conditional statements, write it in logical notation, and use this write its converse and its contrapositive; then, determine the truth values of all three: the original statement, the converse, and the contrapositive.

(a) If a real number is strictly between 0 and 1, then so is its square.  
(b) If a natural number is even, then so is its cube.  
(c) Whenever an integer is a multiple of 10, it is a multiple of 5.

# 4.6 Logical Equivalence

In this section, the major goal is to introduce the idea of logical equivalence and prove a few fundamental claims. Essentially, we want to decide when some complicated logical statements are actually "the same", in the sense of truth values. Since mathematical statements may depend on some propositional variables, we might not be able to conclude anything specific about their truth values. However, we can sometimes prove that two mathematical statements will have the same truth value, for all possible values of the variables they contain. That's a really nice conclusion to make! We get to say that they have the same truth value, regardless of what it is. In that sense, we are proving the two statements to be equivalent, in a logical sense.

# 4.6.1 Definition and Uses

The following definition introduces a convenient symbol for the notion of logical equivalence described in the above paragraph:

Definition 4.6.1. Let  $P$  and  $Q$  be mathematical statements. We use the symbol " $\Longleftrightarrow$ " to mean "is logically equivalent to", or "has the same truth value as".

That is, we write " $P \Longleftrightarrow Q$ " when  $P$  and  $Q$  always have the same truth value, regardless of whether it is  $\mathsf{T}$  or  $\mathsf{F}$ .

We read " $P \Longleftrightarrow Q$ " aloud as " $P$  is logically equivalent to  $Q$ " or " $P$  if and only if  $Q$ ".

This type of statement is known as a biconditional (or a bi-implication).

Let's take the truth tables we saw in the last section and add a new column for this symbol:

<table><tr><td>P</td><td>Q</td><td>¬P</td><td>¬P ∨ Q</td><td>P ⇒ Q</td><td>Q ⇒ P</td><td>P ⇌ Q</td></tr><tr><td>T</td><td>T</td><td>F</td><td>T</td><td>T</td><td>T</td><td>T</td></tr><tr><td>T</td><td>F</td><td>F</td><td>F</td><td>F</td><td>T</td><td>F</td></tr><tr><td>F</td><td>T</td><td>T</td><td>T</td><td>T</td><td>F</td><td>F</td></tr><tr><td>F</td><td>F</td><td>T</td><td>T</td><td>T</td><td>T</td><td>T</td></tr></table>

In the column for  $P \Longleftrightarrow Q$ , an entry has the truth value  $\mathsf{T}$  when (and only when)  $P$  and  $Q$  have the same truth value. This happens in Row 1, where both are  $\mathsf{T}$ , and in Row 4, where both are  $\mathsf{F}$ . Notice, then, that  $P \Longleftrightarrow Q$  has the truth value  $\mathsf{T}$  if and only if

$$
(P \Rightarrow Q) \wedge (Q \Rightarrow P)
$$

is a True statement. This is the notion of logical equivalence:  $P \Longleftrightarrow Q$  means that both  $P \Longrightarrow Q$  and  $Q \Longrightarrow P$  hold. Whatever truth value  $P$  has,  $Q$  is guaranteed to have the same truth value, and vice-versa:

- Supposing that  $P$  is True, then  $P \Rightarrow Q$  tells us that  $Q$  must also be True.  
- Supposing that  $P$  is False, then  $Q \Rightarrow P$  tells us that  $Q$  cannot be True (since  $Q \Rightarrow P$  would be False, in that case), so  $Q$  must also be False.

Either way,  $P$  and  $Q$  have the same truth value.

# Examples

Example 4.6.2. Look again at the third and fourth columns in the truth table above. They prove the following logical equivalence:

$$
(P \Rightarrow Q) \Longleftrightarrow (\neg P \lor Q)
$$

Whatever the truth value of  $P \Rightarrow Q$  (which, of course, depends on  $P$  and  $Q$ ), it must be the same as the truth value of  $\neg P \lor Q$ . We've mentioned this equivalence before, and we will make use of it fairly often in the future.

Example 4.6.3. Look at this truth table:

<table><tr><td>P</td><td>Q</td><td>¬P</td><td>¬Q</td><td>P ⇒ Q</td><td>¬Q ⇒ ¬P</td></tr><tr><td>T</td><td>T</td><td>F</td><td>F</td><td>T</td><td>T</td></tr><tr><td>T</td><td>F</td><td>F</td><td>T</td><td>F</td><td>F</td></tr><tr><td>F</td><td>T</td><td>T</td><td>F</td><td>T</td><td>T</td></tr><tr><td>F</td><td>F</td><td>T</td><td>T</td><td>T</td><td>T</td></tr></table>

Regardless of the truth values of  $P$  and  $Q$ , we find that  $P \Rightarrow Q$  and  $\neg Q \Rightarrow \neg P$  have the same truth values. Thus, they are logically equivalent, and we can write:

$$
(P \Rightarrow Q) \Longleftrightarrow (\neg Q \Rightarrow \neg P)
$$

This is the fact that we stated (without proof) in the previous section:

The contrapositive of a conditional statement is logically equivalent to the original statement.

A different proof of this fact makes use of the way to express a conditional statement as a disjunction. Recall the logical equivalence

$$
\left(P \Rightarrow Q\right) \Longleftrightarrow \left(\neg P \lor Q\right)
$$

that we mentioned in the previous example. Now, think about the contrapositive of that original conditional statement:

$$
\neg Q \Rightarrow \neg P
$$

Applying the same disjunctive form to that statement yields the following equivalence:

$$
(\neg Q \Rightarrow \neg P) \iff (\neg (\neg Q) \lor \neg P)
$$

Now, noticing that  $\neg (\neg Q)$  is equivalent to just  $Q$ , and remembering that the order of a disjunction is irrelevant (i.e.  $P \lor Q$  and  $Q \lor P$  have the same truth value) we find that

$$
(\neg Q \Rightarrow \neg P) \iff (\neg P \lor Q) \iff (P \Rightarrow Q)
$$

This shows, in another way, that a conditional statement and its contrapositive have the same truth value!

Example 4.6.4. Later in this section, we will prove the following logical equivalences, which hold no matter what the propositions  $P$  and  $Q$  and  $R$  are:

$$
\begin{array}{l} \neg (P \wedge Q) \iff \neg P \vee \neg Q \\ (P \wedge Q) \wedge R \iff P \wedge (Q \wedge R) \\ P \vee (Q \wedge R) \iff (P \vee Q) \wedge (P \vee R) \\ \neg (P \Longrightarrow Q) \iff P \land \neg Q \\ \end{array}
$$

Each of these is an assertion that the expressions on both sides of the  $\Longleftrightarrow$  symbol have the same truth value. Can you see why these claims are True? Can you think of how to prove them?

# If and Only If

Logical equivalence has a nice relationship with the phrase "if and only if". To say " $P$  if and only if  $Q$ " means we are asserting that both " $P$  if  $Q$ " and " $P$  only if  $Q$ " hold. One of these corresponds to  $P \Rightarrow Q$  and the other corresponds to  $Q \Rightarrow P$ , so asserting both are true means exactly what we have described:

$$
P \Longleftrightarrow Q \quad \text{is th es am ea ss ay in g} \quad (P \Longrightarrow Q) \wedge (Q \Longrightarrow P)
$$

Now, which one is which, though? When we say " $P$  if  $Q$ , this means "If  $Q$ , then  $P$ ." That is,

$$
" P \text{if } Q^{\prime \prime} \quad \text{is th es am ea ss ay in g} \quad Q \Longrightarrow P
$$

Sussing out the other direction is a little harder! What does "  $P$  only if  $Q$  " really mean? This sentence is asserting that, in a situation where  $P$  holds, it must also be the case that  $Q$  holds. That is, knowing  $P$  holds means we also immediately know  $Q$  holds. Put even another way, whenever  $P$  is true, we necessarily know that  $Q$  is true. This is the same as saying  $P \Rightarrow Q$  holds!

Another way of thinking about it is as follows. Saying " $P$  only if  $Q$ " is the same as saying it cannot be the case that  $P$  holds and  $Q$  does not. Written logically, we have

$$
\neg (P \wedge \neg Q)
$$

Later on in this section, we will state and prove DeMorgan's Laws for Logic. One of those laws tells us how to negate that statement inside the parentheses. (You might already know these logical laws, in fact. If not, you can glance ahead at Sections 4.6.5 and 4.6.6 for a preview.) The conclusion is:

$$
\neg P \lor Q
$$

Hey look, that's logically equivalent to  $P \Rightarrow Q$ , as we observed already! Cool. Just further confirmation that "  $P$  only if  $Q$ " means  $P \Rightarrow Q$ .

# Using " $\Longleftrightarrow$ " in Definitions

We will also often use the " $\Longleftrightarrow$ " symbol in a definition to indicate that the term defined is an equivalent term for the property that is used in the definition. For example:

$$
\text{We} x \in \mathbb {Z} \text{is} \text{ev en} \Longleftrightarrow \exists k \in \mathbb {Z}. x = 2 k
$$

That is, the notion of an integer being even is equivalent to knowing that the number is twice an integer. Similarly, we can define odd:

$$
\text{We} x \in \mathbb {Z} \text{is} \mathbf {o d d} \Longleftrightarrow \exists k \in \mathbb {Z}. x = 2 k + 1
$$

These are formal definitions, mind you, and are the only way of guaranteeing an integer is even (or odd). We will use these definitions soon to rigorously prove some facts about integers and arithmetic. Every time we want to assert a particular integer (call it  $x$ ) is even, we need to show there exists an integer  $k$  that satisfies  $x = 2k$ . That is, we have to satisfy the definition by appealing to the logical equivalence given in the definition.

# Biconditional Statements: A Technical Distinction

We can also use the symbol " $\Longleftrightarrow$ " to express two conditional statements at once. Technically speaking, this is not exactly the same as asserting a logical equivalence, but it conveys a similar idea, so we allow the symbol to be used in both ways.

A logical equivalence involves some undefined propositions, and it asserts that the two statements will have the same truth value, regardless of the truth values of those propositions. For instance,

$$
(P \Rightarrow Q) \Longleftrightarrow (\neg P \vee Q)
$$

is a perfect example of a logical equivalence. Without telling you what  $P$  and  $Q$  are, we can't be sure exactly what  $P \Rightarrow Q$  and  $\neg P \lor Q$  mean. However, we don't need to know what  $P$  and  $Q$  are to know that those two statements definitely have the same truth value.

The situation is slightly different when the two statements on either side of the " $\Longleftrightarrow$ " are actually proper mathematical statements, with no undefined propositions. For instance, consider this statement:

$$
\forall x \in \mathbb {R}. (x > 0) \Longleftrightarrow \left(\frac{1}{x} > 0\right)
$$

This is a logical claim, and it asserts that, whenever  $x$  is a real number, knowing one of those two facts— $x > 0$  or  $\frac{1}{x} > 0$ —necessarily guarantees the other. That is, if I told you I have a real number in mind and it is positive, you get to conclude that its reciprocal is positive, too. Also, if I told you I have a real number in mind whose reciprocal is positive, you would get to conclude that the number itself is positive, too. It goes both ways. (Question: What if I told you I had a negative real number in mind? Could you conclude anything about its reciprocal? Why or why not?)

Do you see how this is different? Given an arbitrary  $x \in \mathbb{R}$ , the statement " $x > 0$ " is decidedly either True or False. Its truth value isn't left undetermined. This distinguishes it from the example given above, where the truth value of the individual statements is unknown, yet we can still declare those truth values must be identical.

For lack of a better, widespread term for these kinds of statements, we will refer to them as biconditionals. This is because they are really meant to represent two conditional statements that go "in opposite directions":

$$
\forall x \in \mathbb {R}. \left[ \left((x > 0) \Rightarrow \left(\frac{1}{x} > 0\right)\right) \wedge \left(\left(\frac{1}{x} > 0\right) \Rightarrow (x > 0)\right) \right]
$$

This is what the statement above says: each part of the statement implies the other one.

This term is not necessarily standard in other mathematical writing, but we wanted to point out this technical distinction so you are aware of it. You might approach a mathematical logician or set theorist and use the phrase "logical

equivalence", and they might be confused or take offense to the way in which you use it. This is not a big worry, mind you! Since we are learning about these fundamental ideas now for the first time, we don't necessarily have to keep in mind all of the technical details that lie underneath these concepts. Also, in the remainder of this book, we might use "logical equivalence" and "biconditional" interchangeably. This is fine and acceptable for now.

The main point behind using the " $\Longleftrightarrow$ " symbol is to assert that two statements have the same truth value. The only difference between a "logical equivalence" and a "biconditional" is whether or not those statements contained therein have any arbitrary, undefined propositions. This is a minor distinction to be made, in the grand scheme of things, so we will consider it only briefly here.

# 4.6.2 Necessary and Sufficient Conditions

There are two terms occasionally used in mathematics that convey the two directions of a biconditional statement: necessary and sufficient. They correspond exactly to the "only if" and "if" parts of the biconditional. These terms are motivated by the natural types of questions mathematicians ask.

# Sufficient:  $P$ , if  $Q$

If we identify some interesting fact or property—call it  $P$ —of a mathematical object, we might wonder, "When can we guarantee such a property holds? Is there some condition we can check that will give us a 'Yes' answer right away?" This is what a sufficient condition is, a property that guarantees  $P$  will also hold. It is "sufficient" in the sense that it is "enough" to conclude  $P$ ; we don't need any other outside information.

Let's say we have identified a proposition  $Q$  as a sufficient condition for  $P$ . How can we express this logically? Well, knowing  $Q$  is sufficient to conclude  $P$ , so we can easily write this as a conditional statement:

$$
Q \Rightarrow P \quad \text{me an s} Q \text{is as uf fi ci en tc on di ti on fo r} P
$$

Said another way, this conditional statement expresses: " $P$ , if  $Q$ ".

# Necessary:  $P$  only if  $Q$

We also might wonder, "How can we guarantee that  $P$  fails? Is there some condition we can check that will tell us this right away?" This is what a necessary condition is, a property that is necessary or essential for the property  $P$  to hold. This condition is not necessarily enough to conclude that  $P$  holds, but for  $P$  to even have a chance of holding, this condition better hold, too.

Think about the logical connections here. Say we have established a property  $Q$  that is a necessary condition for  $P$ . How can we express the relationship between  $P$  and  $Q$ , symbolically? That's right, we can use a conditional statement. Knowing  $P$  holds tells us that  $Q$  definitely holds; it was necessary for  $P$

to be true. This is expressed as

$$
P \Longrightarrow Q \quad \text{me an s} Q \text{is an ec es sa ry co nd it io nf or} P
$$

Said another way, this conditional statement expresses: "  $P$  only if  $Q$ ".

We could also think of this in terms of the contrapositive. If  $Q$  does not hold, then  $P$  cannot hold, either. That is,

$$
\neg Q \Rightarrow \neg P
$$

which is the contrapositive of the conditional statement above,  $P \Longrightarrow Q$ . We know these are logically equivalent forms of the same statement.

# Examples

Example 4.6.5. Let  $P(x)$  the proposition "  $x$  is an integer that is divisible by 6". For each of the following conditions, let's identify whether it is a necessary or sufficient condition (or possibly both!) for  $P(x)$  to hold.

(1) Let  $Q(x)$  be "  $x$  is an integer that is divisible by 3".

To determine whether  $Q(x)$  is a necessary condition, let's assume  $P(x)$  holds. Can we deduce  $Q(x)$  holds, too? Well, yes! To say an integer  $x$  is divisible by 6 means that it is divisible by both 2 and 3. Thus, it is certainly divisible by 3, so  $Q(x)$  holds.

To determine whether  $Q(x)$  is a sufficient condition, let's assume  $Q(x)$  holds. Can we deduce  $P(x)$  holds, too? Hmm … knowing that  $x$  is an integer divisible by 3, is it also definitely divisible by 2, allowing us to conclude it is divisible by 6? We think not! Consider  $x = 3$ ; notice  $Q(3)$  holds but  $P(3)$  does not.

This shows  $Q(x)$  is only a necessary condition, and not a sufficient one.

(2) Let  $R(x)$  be "  $x$  is an integer that is divisible by 12."

Following similar reasoning to the above example, we can conclude that  $R(x)$  is a sufficient condition for  $P(x)$ , but not a necessary one (because we can have  $x = 6$ , where  $P(6)$  holds but  $R(6)$  does not hold).

(3) Let  $S(x)$  be "  $x$  is an integer such that  $x^2$  is divisible by 6".

We'll let you work with this one on your own … Is  $S(x)$  a necessary condition for  $P(x)$ ? Is it a sufficient one?

Be careful, and notice that we specified  $x$ , itself, is an integer …

# 4.6.3 Proving Logical Equivalences: Associative Laws

Now, let's actually prove some logical equivalences! In doing so, we will be working on our ability to read and understand and write logical statements using quantifiers and connectives. We will also be developing some fundamental

logical results that we can apply in the near future to develop proof techniques. These techniques will be the foundation of the rest of our work, and everything else we do will involve implementing some combination of these proof strategies and logical concepts.

Let's start with some of the simpler symbolic logical laws. Showing something is associative essentially means we can "move around the parentheses" willy-nilly and end up with the same thing. You probably use the fact that addition is associative all the time! To add  $x$  to  $y + z$ , we can just add  $z$  to  $x + y$  instead and know we get the same answer. That is, we can rest assured that

$$
x + (y + z) = (x + y) + z
$$

We can move the parentheses around wherever we want to and so, ultimately, we can just pretend as if they aren't even there and just write

$$
x + y + z
$$

because the order in which we interpret the two additions is irrelevant. The same kind of result applies to conjunctions and disjunctions of logical statements, and that's what we will prove now.

Theorem 4.6.6. Let  $P, Q, R$  be logical statements. Then

$$
P \wedge (Q \wedge R) \Longleftrightarrow (P \wedge Q) \wedge R
$$

and

$$
P \vee (Q \vee R) \Longleftrightarrow (P \vee Q) \vee R
$$

We will actually prove these claims in two separate ways: (1) via truth tables, and (2) via semantics (i.e. words). They are both perfectly valid, but we want to show you both of them to let you decide which style you like better.

Proof 1. First, we will prove these claims via truth tables. Observe the table for conjunctions:

<table><tr><td>P</td><td>Q</td><td>R</td><td>P ∧ Q</td><td>Q ∧ R</td><td>P ∧ (Q ∧ R)</td><td>(P ∧ Q) ∧ R</td></tr><tr><td>T</td><td>T</td><td>T</td><td>T</td><td>T</td><td>T</td><td>T</td></tr><tr><td>T</td><td>T</td><td>F</td><td>T</td><td>F</td><td>F</td><td>F</td></tr><tr><td>T</td><td>F</td><td>T</td><td>F</td><td>F</td><td>F</td><td>F</td></tr><tr><td>T</td><td>F</td><td>F</td><td>F</td><td>F</td><td>F</td><td>F</td></tr><tr><td>F</td><td>T</td><td>T</td><td>F</td><td>T</td><td>F</td><td>F</td></tr><tr><td>F</td><td>T</td><td>F</td><td>F</td><td>F</td><td>F</td><td>F</td></tr><tr><td>F</td><td>F</td><td>T</td><td>F</td><td>F</td><td>F</td><td>F</td></tr><tr><td>F</td><td>F</td><td>F</td><td>F</td><td>F</td><td>F</td><td>F</td></tr></table>

Thus,  $P \wedge (Q \wedge R) \Longleftrightarrow (P \wedge Q) \wedge R$  because their corresponding columns are identical, in every case.

Next, observe the table for disjunctions:

<table><tr><td>P</td><td>Q</td><td>R</td><td>P ∨ Q</td><td>Q ∨ R</td><td>P ∨ (Q ∨ R)</td><td>(P ∨ Q) ∨ R</td></tr><tr><td>T</td><td>T</td><td>T</td><td>T</td><td>T</td><td>T</td><td>T</td></tr><tr><td>T</td><td>T</td><td>F</td><td>T</td><td>T</td><td>T</td><td>T</td></tr><tr><td>T</td><td>F</td><td>T</td><td>T</td><td>T</td><td>T</td><td>T</td></tr><tr><td>T</td><td>F</td><td>F</td><td>T</td><td>F</td><td>T</td><td>T</td></tr><tr><td>F</td><td>T</td><td>T</td><td>T</td><td>T</td><td>T</td><td>T</td></tr><tr><td>F</td><td>T</td><td>F</td><td>T</td><td>T</td><td>T</td><td>T</td></tr><tr><td>F</td><td>F</td><td>T</td><td>F</td><td>T</td><td>T</td><td>T</td></tr><tr><td>F</td><td>F</td><td>F</td><td>F</td><td>F</td><td>F</td><td>F</td></tr></table>

Thus,  $P \vee (Q \vee R) \Longleftrightarrow (P \vee Q) \vee R$  because their corresponding columns are identical, in every case.

Proof 2. Second, let's prove these claims by analyzing them, semantically. Consider the first claim,

$$
P \wedge (Q \wedge R) \Longleftrightarrow (P \wedge Q) \wedge R
$$

To show that the two sides are logically equivalent, we need to show both of the following conditional statements are True:

$$
P \wedge (Q \wedge R) \Rightarrow (P \wedge Q) \wedge R
$$

and

$$
(P \wedge Q) \wedge R \Rightarrow P \wedge (Q \wedge R)
$$

$(\Rightarrow)$  Let's prove the first conditional statement. Suppose  $P \land (Q \land R)$  is True. This means  $P$  is True and  $Q \land R$  is True. By definition, this means  $P$  is True and  $Q$  is True and  $R$  is True. Certainly, then  $P \land Q$  is True and  $R$  is True, by definition. Thus,  $(P \land Q) \land R$  is True, as well.

$(\Longleftarrow)$  Now, let's prove the second conditional statement. Suppose  $(P \land Q) \land R$  is True. This means  $P \land Q$  is True and  $R$  is True. By definition, this means  $P$  is True and  $Q$  is True and  $R$  is True. Certainly, then  $P$  is True and  $Q \land R$  is True, by definition. Thus,  $P \land (Q \land R)$  is True, as well.

Since we have shown both conditional statements, we conclude the two sides are, indeed, logically equivalent.

Next, consider the second claim of the theorem,

$$
P \vee (Q \vee R) \Longleftrightarrow (P \vee Q) \vee R
$$

To show that the two sides are logically equivalent, we need to show both of the following conditional statements are True:

$$
P \vee (Q \vee R) \Rightarrow (P \vee Q) \vee R
$$

and

$$
(P \vee Q) \vee R \Rightarrow P \vee (Q \vee R)
$$

$(\Rightarrow)$  Let's prove the first conditional statement. Suppose  $P \lor (Q \lor R)$  is True. This means either  $P$  is True or  $Q \lor R$  is True. This gives us two cases.

# 4.6. LOGICAL EQUIVALENCE

1. Suppose  $P$  is True. This means  $P \lor Q$  is True, by definition. Thus,  $(P \lor Q) \lor R$  is True, also by definition.  
2. Suppose  $Q \lor R$  is True. This means either  $Q$  is True or  $R$  is True. Again, this gives us two cases.

(a) Suppose  $Q$  is True. This means  $P \lor Q$  is True, by definition. Thus,  $(P \lor Q) \lor R$  is True, also by definition.  
(b) Suppose  $R$  is True. This means  $(P \lor Q) \lor R$  is True, by definition.

In any case, we find that  $(P \vee Q) \vee R$  is True. Thus, this conditional statement is True.

$(\Longleftarrow)$  Let's prove the second conditional statement. Suppose  $(P \lor Q) \lor R$  is True. This means either  $P \lor Q$  is True or  $R$  is True. This gives us two cases.

1. Suppose  $P \lor Q$  is True. This means either  $P$  is True or  $Q$  is True. This gives us two cases.

(a) Suppose  $P$  is True. This means  $P \vee (Q \lor R)$  is true, by definition.  
(b) Suppose  $Q$  is True. This means  $Q \lor R$  is True, by definition. Thus,  $P \lor (Q \lor R)$  is true, also by definition.

2. Suppose  $R$  is True. This means  $Q \lor R$  is True, by definition. Thus,  $P \lor (Q \lor R)$  is True, also by definition.

In any case, we conclude that  $P \vee (Q \vee R)$  is True. Thus, this conditional statement is True.

Since we have shown both conditional statements hold, we conclude the two sides are, indeed, logically equivalent.

Okay, what have we accomplished with these proofs? What have we proven, and how? Why did it work?

Let's mention a consequence of these proofs, before going on to discuss and compare the proofs, themselves. We proved that the " $\wedge$ " and " $\vee$ " connectives are associative, so the order in which we evaluate parenthetical statements involving only one such connective does not matter. For example, we now know that  $P \wedge (Q \wedge R)$  has the same meaning as " $P \wedge Q) \wedge R$ ". Accordingly, in the future, we will just write these statements without the parentheses: " $P \wedge Q \wedge R$ ".

# Reflecting: Truth Tables vs. Semantics

Let's talk about the truth tables first. Since  $P, Q$ , and  $R$  are logical statements, they are each, individually, True or False. The eight rows of the truth tables consider all possible assignments of truth values to those three constituent statements. The first three columns tell us whether  $P, Q, R$  are True or False. The next two columns correspond to the more complicated constituent parts of the logical statements in the claim, and the last two columns correspond to the two parts of the actual claim in the theorem. By comparing those last two columns,

we can decide whether or not those two statements are logically equivalent. (Remember that "logically equivalent" means "has the same truth value as, no matter the assignment of truth values to  $P$  and  $Q$  and  $R$ ". Thus, observing that the two columns have identical entries, row by row, is sufficient to show that the two statements are logically equivalent.)

Next, let's talk about the semantic proofs. How do you feel about them? They were certainly longer, right? Disregarding that, though, did they feel like good proofs? Were they clear? Correct, even? Reread the proofs above and think about these questions. We will emphasize that they are fully correct proofs. The use of cases is essential when trying to prove a disjunction (an "or" statement) holds. When we suppose something is True and deduce that something else is True, that's how we prove a conditional statement is True. We will further analyze these techniques very soon, but we hope that giving you a first example like this will help you later on.

For the remainder of this section, we will use a truth table to verify simple claims like these. The proofs are much shorter that way! We are sure that you can go through the details of a semantic proof, like the ones we gave above, if you need further convincing or extra practice with interpreting symbolic logical claims as English sentences.

# 4.6.4 Proving Logical Equivalences: Distributive Laws

In arithmetic, you've used the fact that multiplication distributes across addition. That is, we know that

$$
\forall x, y, z \in \mathbb {R} \cdot x \cdot (y + z) = x \cdot y + x \cdot z
$$

Hey, look, we wrote this in symbolic notation! Do you see why it says what you already know about the distributive property?

Here we will state and prove two similar laws. They will tell us that the logical connectives " $\land$ " and " $\lor$ " also distribute across each other.

Theorem 4.6.7. Let  $P, Q$ , and  $R$  be logical statements. Then

$$
P \wedge (Q \vee R) \Longleftrightarrow (P \wedge Q) \vee (P \wedge R)
$$

and

$$
P \vee (Q \wedge R) \Longleftrightarrow (P \vee Q) \wedge (P \vee R)
$$

Proof. We will use truth tables to verify these two claims. Observe, for the first

claim, that

<table><tr><td>P</td><td>Q</td><td>R</td><td>Q ∨ R</td><td>P ∧ Q</td><td>P ∧ R</td><td>P ∧ (Q ∨ R)</td><td>(P ∧ Q) ∨ (P ∧ R)</td></tr><tr><td>T</td><td>T</td><td>T</td><td>T</td><td>T</td><td>T</td><td>T</td><td>T</td></tr><tr><td>T</td><td>T</td><td>F</td><td>T</td><td>T</td><td>F</td><td>T</td><td>T</td></tr><tr><td>T</td><td>F</td><td>T</td><td>T</td><td>F</td><td>T</td><td>T</td><td>T</td></tr><tr><td>T</td><td>F</td><td>F</td><td>F</td><td>F</td><td>F</td><td>F</td><td>F</td></tr><tr><td>F</td><td>T</td><td>T</td><td>T</td><td>F</td><td>F</td><td>F</td><td>F</td></tr><tr><td>F</td><td>T</td><td>F</td><td>T</td><td>F</td><td>F</td><td>F</td><td>F</td></tr><tr><td>F</td><td>F</td><td>T</td><td>T</td><td>F</td><td>F</td><td>F</td><td>F</td></tr><tr><td>F</td><td>F</td><td>F</td><td>F</td><td>F</td><td>F</td><td>F</td><td>F</td></tr></table>

Notice that the last two columns are identical, thus proving the desired logical equivalence.

Observe, for the second claim, that

<table><tr><td>P</td><td>Q</td><td>R</td><td>Q ∧ R</td><td>P ∨ Q</td><td>P ∨ R</td><td>P ∨ (Q ∧ R)</td><td>(P ∨ Q) ∧ (P ∨ R)</td></tr><tr><td>T</td><td>T</td><td>T</td><td>T</td><td>T</td><td>T</td><td>T</td><td>T</td></tr><tr><td>T</td><td>T</td><td>F</td><td>F</td><td>T</td><td>T</td><td>T</td><td>T</td></tr><tr><td>T</td><td>F</td><td>T</td><td>F</td><td>T</td><td>T</td><td>T</td><td>T</td></tr><tr><td>T</td><td>F</td><td>F</td><td>F</td><td>T</td><td>T</td><td>T</td><td>T</td></tr><tr><td>F</td><td>T</td><td>T</td><td>T</td><td>T</td><td>T</td><td>T</td><td>T</td></tr><tr><td>F</td><td>T</td><td>F</td><td>F</td><td>T</td><td>F</td><td>F</td><td>F</td></tr><tr><td>F</td><td>F</td><td>T</td><td>F</td><td>F</td><td>T</td><td>F</td><td>F</td></tr><tr><td>F</td><td>F</td><td>F</td><td>F</td><td>F</td><td>F</td><td>F</td><td>F</td></tr></table>

Again, notice that the last two columns are identical, thus proving the desired logical equivalence.  $\square$

# 4.6.5 Proving Logical Equivalences: De Morgan's Laws (Logic)

Let's prove some logical equivalences involving negations. The following two laws are named for the British mathematician Augustus De Morgan. He is credited with establishing these logical laws, as well as introducing the term mathematical induction! We are grateful and indebted to his work in mathematics.

De Morgan's Laws for Logic state some logical equivalences about negating conjunctions and disjunctions.

Theorem 4.6.8. Let  $P$  and  $Q$  be logical statements. Then

$$
\neg (P \wedge Q) \Longleftrightarrow \neg P \vee \neg Q
$$

and

$$
\neg (P \vee Q) \iff \neg P \wedge \neg Q
$$

Proof. We prove the first claim by a truth table:

<table><tr><td>P</td><td>¬P</td><td>Q</td><td>¬Q</td><td>P ∧ Q</td><td>¬(P ∧ Q)</td><td>¬P ∨ ¬Q</td></tr><tr><td>T</td><td>F</td><td>T</td><td>F</td><td>T</td><td>F</td><td>F</td></tr><tr><td>T</td><td>F</td><td>F</td><td>T</td><td>F</td><td>T</td><td>T</td></tr><tr><td>F</td><td>T</td><td>T</td><td>F</td><td>F</td><td>T</td><td>T</td></tr><tr><td>F</td><td>T</td><td>F</td><td>T</td><td>F</td><td>T</td><td>T</td></tr></table>

And then we prove the second claim by a truth table:

<table><tr><td>P</td><td>¬P</td><td>Q</td><td>¬Q</td><td>P ∨ Q</td><td>¬(P ∨ Q)</td><td>¬P ∧ ¬Q</td></tr><tr><td>T</td><td>F</td><td>T</td><td>F</td><td>T</td><td>F</td><td>F</td></tr><tr><td>T</td><td>F</td><td>F</td><td>T</td><td>T</td><td>F</td><td>F</td></tr><tr><td>F</td><td>T</td><td>T</td><td>F</td><td>T</td><td>F</td><td>F</td></tr><tr><td>F</td><td>T</td><td>F</td><td>T</td><td>F</td><td>T</td><td>T</td></tr></table>

□

These two laws are extremely useful! In fact, we can use them to prove similar statements about sets.

# 4.6.6 Using Logical Equivalences: DeMorgan's Laws (Sets)

The following statements "look a lot like" the statements in DeMorgan's Laws for Logic we saw above. We will see exactly why they look so similar when we see the proof!

Theorem 4.6.9. Let  $A$  and  $B$  be any sets, and suppose that  $A, B \subseteq U$ , so the complement operation is defined in the context of  $U$ . Then,

$$
\overline {{A \cap B}} = \overline {{A}} \cup \overline {{B}}
$$

and

$$
\overline {{A \cup B}} = \overline {{A}} \cap \overline {{B}}
$$

We will prove these claims using logical equivalences and DeMorgan's Laws for Logic. Our method will be to show that, in either case, the property of being an element of the set on the left-hand side of the equation is logically equivalent to being an element of the set on the right-hand side. This proves both parts of a double-containment argument in one fell swoop.

Proof. Let's prove the first set equality. Let  $x \in U$  be arbitrary and fixed. Then,

$$
\begin{array}{l} x \in \overline {{A \cup B}} \iff x \notin A \cup B \quad \text{De fi ni ti on of co mp le me nt} \\ \iff \neg (x \in A \cup B) \quad \text{De fi ni ti on} \notin \\ \iff \neg [ (x \in A) \vee (x \in B) ] \quad \text{De fi ni ti on} \cup \text{an d} \vee \\ \Longleftrightarrow \neg (x \in A) \wedge \neg (x \in B) \quad \text{De Mo rg an 's La wf or Lo gi c} \\ \iff (x \notin A) \land (x \notin B) \quad \text{De fi ni ti on} \not \in \\ \Longleftrightarrow (x \in \bar {A}) \wedge (x \in \bar {B}) \quad \text{De fi ni ti on} \\ \iff x \in \bar {A} \cap \bar {B} \quad \text{De fi ni ti on} \wedge \text{an d} \cap \\ \end{array}
$$

Remember that " $\wedge$ " is a logical operation, while " $\cap$ " is a set operation. We had to be careful about which one made sense in every sentence we wrote. Also, notice that we used DeMorgan's Law for Logic in the middle of the proof, to convert a negation of a disjunction into the conjunction of two negations.

This chain of logical equivalences shows that

$$
x \in \overline {{A \cup B}} \iff x \in \overline {{A}} \cap \overline {{B}}
$$

so, in the context of  $U$ , the property of being an element of  $\overline{A \cup B}$  is logically equivalent to the property of being an element of  $\overline{A} \cap \overline{B}$ . Therefore,

$$
\overline {{A \cup B}} = \overline {{A}} \cap \overline {{B}}
$$

Let's prove the second equality now, with a similar method. Let  $x \in U$  be arbitrary and fixed. Then,

$$
x \in \overline {{A \cap B}} \iff x \notin A \cap B
$$

Definition of complement

$$
\iff \neg (x \in A \cap B)
$$

Definition of  $\notin$

$$
\Longleftrightarrow \neg [ (x \in A) \wedge (x \in B) ]
$$

Definition of  $\cap$  and  $\wedge$

$$
\iff \neg (x \in A) \vee \neg (x \in B)
$$

DeMorgan's Law for Logic

$$
\iff (x \notin A) \vee (x \notin B)
$$

Definition of  $\notin$

$$
\Longleftrightarrow (x \in \overline {{A}}) \vee (x \in \overline {{B}})
$$

Definition of complement

$$
\iff x \in \bar {A} \cup \bar {B}
$$

Definition of  $\vee$  and  $\cup$

This chain of logical equivalences shows that

$$
x \in \overline {{A \cap B}} \iff x \in \overline {{A}} \cup \overline {{B}}
$$

so, in the context of  $U$ , the property of being an element of  $\overline{A \cap B}$  is logically equivalent to the property of being an element of  $\overline{A} \cup \overline{B}$ . Therefore,

$$
\overline {{A \cap B}} = \overline {{A}} \cup \overline {{B}}
$$

Voilà! We have proven both equalities stated in the theorem.

Notice the striking similarities between the two proofs. They used exactly the same method, and the only real difference is flipping a " $\cap$ " to a " $\cup$ ", and vice-versa. Because we proved something about how to do this already (DeMorgan's Laws for Logic), we can cite that result and make this proof short and sweet. Wouldn't you agree this is far easier and more concise than writing out a full double-containment proof for these two claims? (Try it!)

# 4.6.7 Proving Set Containments via Conditional Statements

Whenever you can, go ahead and use the method we used in the previous section, with DeMorgan's Laws for Logic and Sets; that is, feel free to prove set

relationships via conditional statements and logical equivalences. In general, when you're proving an equality, you need to be sure that all of your claims really are " $\Longleftrightarrow$ " claims. In the previous section, we only applied definitions and a theorem about logical equivalences, so we were positive about all of the directions of the " $\Longleftrightarrow$ " arrows in the proof. Whenever you write a proof like this, read over it again once you're done and ask yourself at every line, "Does this actually work? Does the implication work both ways here?"

Let's see another example of this technique in action. It will be slightly more complicated, in that we have to define some variable propositions because the claim given is not fundamentally identical to DeMorgan's Laws for Logic. We will, though, invoke a logical law that we just proved, and use it to establish a sets law.

Proposition 4.6.10. Let  $A, B, C$  be any sets, with  $A, B, C \subseteq U$ , where  $U$  is a universal set. Then,

$$
A \cap (B - C) = (A \cap B) - C
$$

Much like the previous example, DeMorgan's Laws for Sets, we will establish a logical equivalence between being an element of the left-hand side and being an element of the right-hand side. (Again, this is like proving both sides of a double-containment proof all at once.) To do this, we will just establish some variable propositions that refer to the properties of being an element of  $A$ ,  $B$ , and  $C$ , respectively. From there, the result will follow from a logical law.

Proof. Let  $A, B, C$  be any sets, with  $A, B, C \subseteq U$ , where  $U$  is a universal set. We define the following variable propositions:

Let  $P(x)$  be " $x \in A$ "

Let  $Q(x)$  be " $x \in B$ "

Let  $R(x)$  be " $x \in C$ ".

Let  $x \in U$  be arbitrary and fixed. With these definitions, we can write the following chain of logical equivalences (where "Defn" is just space-saving shorthand for "Definition"):

$x\in A\cap (B - C)\iff x\in A\land (x\in B - C)$  Defn of  $\cap$

$\Longleftrightarrow x \in A \land (x \in B \land x \notin C)$  Defn of

$\Longleftrightarrow P(x)\wedge (Q(x)\wedge \neg R(x))$  Defn of  $P(x),Q(x),R(x),\notin$

$\Longleftrightarrow (P(x)\land Q(x))\land \neg R(x)$  Associative Law for  $\wedge$

$\Longleftrightarrow (x \in A \land x \in B) \land x \notin C$  Defn of  $P(x), Q(x), R(x)$

$\Longleftrightarrow x\in A\cap B\land x\notin C$  Defn of  $\cap$

$\Longleftrightarrow x \in (A \cap B) - C$  Defn of

This shows that

$$
x \in A \cap (B - C) \iff x \in (A \cap B) - C
$$

holds True for any element  $x$  in the universe  $U$ . Therefore,

$$
A \cap (B - C) = (A \cap B) - C
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/44fa662e-a015-46fb-8608-ecf0fb518d19/9a799a520e447779c486f23f506d7ed785ba118ca0567c0eee5f1b71833217e8.jpg)

Think about why we needed to make sure all of these claims are truly if and only if statements. We are ensuring that any element  $x$  that is an element of a set on one side of the equality is also necessarily an element of the set on the other side; but, furthermore, we are ensuring that any element  $x$  that is not an element of one set is also not an element of the other set. The biconditional statements "go both ways", so we prove both the "is an element of" and "is not an element of" parts of the claim all at once.

To illustrate our previous warnings, consider the following claim as an example of a proof where one "direction" of  $\mathrm{a} \Longleftrightarrow$  claim fails.

Proposition 4.6.11. Let  $X, Y, Z$  be any sets, with  $X, Y, Z \subseteq U$ , for some universal set  $U$ . Then, the following containment holds:

$$
(X \cup Y) - Z \subseteq X \cup (Y - Z)
$$

You might recognize this claim as Problem 3.11.17! In that problem, we asked you to prove this claim using a containment argument, taking an arbitrary  $x \in U$  and supposing it is an element of the left-hand side set, then deducing it must also be an element of the right-hand side set. We will do (essentially) the same thing here, but the argument will be recast in logical terms and symbols. We will do this to (1) give us more practice with making these types of arguments, but also (2) to recognize precisely where in the argument the "reverse" direction fails. Remember that, in Problem 3.11.17, we also asked you to find an example that shows that the  $\supseteq$  direction is not necessarily True. This means that the logical argument working in that direction would break down somewhere. We will see precisely where that is, and we can use it to help us come up with that required counterexample.

Proof. Let  $X, Y, Z$  be any sets, with  $X, Y, Z \subseteq U$ , for some universal set  $U$ . Let  $x \in U$  be arbitrary and fixed. We can write the following chain of logical equivalences:

$$
\begin{array}{l} x \in (X \cup Y) - Z \iff x \in X \cup Y \wedge x \notin Z \quad \text{De fn} - \\ \Longleftrightarrow (x \in X \vee x \in Y) \wedge x \notin Z \quad \text{De fn} \cup \\ \iff (x \in X \wedge x \notin Z) \vee (x \in Y \wedge x \notin Z) \quad \text{Di st r .L aw} \\ \end{array}
$$

Scratch work:

From here, what further logical equivalences could we assert? We could simplify the right-hand side and express it as

$$
x \in X - Z \vee x \in X - Z
$$

and, therefore,

$$
x \in (X - Z) \cup (Y - Z)
$$

This is not what the claim was, but this procedure so far would be a valid proof of a different claim, namely that

$$
(X \cup Y) - Z = (X - Z) \cup (Y - Z)
$$

However, our right-hand side is

$$
X \cup (Y - Z)
$$

but we are not trying to prove an equality, merely a containment. Thus, the goal of the rest of our proof is to prove this conditional claim:

$$
\left(\left(x \in X \wedge x \notin Z\right) \vee \left(x \in Y \wedge x \notin Z\right)\right) \Longrightarrow x \in X \cup (Y - Z)
$$

To help us figure out how to get there, let's do some scratch work here to rewrite the statement on the right-hand side; then, we can see how to get there from where we are already:

$$
\begin{array}{l} x \in X \cup (Y - Z) \iff x \in X \lor x \in Y - Z \quad \text{De fn} \\ \Longleftrightarrow x \in X \vee (x \in Y \wedge x \notin Z) \quad \text{De fn of} - \\ \end{array}
$$

This is similar to the last logical equivalence we derived up above, but this one differs in the term on the left. Can you see how the one up above implies this one? Think about it, and then read on for the rest of our proof, resumed.

Now, we want to show that

$$
\left(\left(x \in X \wedge x \notin Z\right) \vee \left(x \in Y \wedge x \notin Z\right)\right) \Longrightarrow x \in X \cup (Y - Z)
$$

To do this, let's suppose the expression on the left-hand side is True. This means either

$$
x \in X \wedge x \notin Z
$$

or

$$
x \in Y \wedge x \notin Z
$$

(or possibly both). Thus, we have two cases:

1. Suppose the first expression is True, so that  $x \in X \land x \notin Z$ . This certainly means that  $x \in X$ , and thus  $x \in X \lor x \in Y - Z$  holds.  
2. Suppose the second expression is True, so that  $x \in Y \land x \notin Z$ . This means that  $x \in Y - Z$ , and thus  $x \in X \lor x \in Y - Z$  holds.

In either case, we find that  $x \in X \lor x \in Y - Z$  holds, and therefore,

$$
x \in X \cup (Y - Z)
$$

holds, in either case, by the definition of  $\cup$ .

Overall, this shows that

$$
x \in (X \cup Y) - Z \Longrightarrow x \in X \cup (Y - Z)
$$

holds for every element  $x \in U$ . Therefore, by the definition of  $\subseteq$ , we have

$$
(X \cup Y) - Z \subseteq X \cup (Y - Z)
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/44fa662e-a015-46fb-8608-ecf0fb518d19/3b90085eb412bb64ba59d193b792367e86846e74a42b0e2ded5763897eec58dc.jpg)

Recognizing where we are, and where we wanted to go, helped us finish this proof. We had no hope of completing it using logical equivalences alone because, in fact, the sets given in the claim are not always equal! Looking back at the proof, can we identify the step whose logical equivalence was invalid, and can we use it to help construct a counterexample to the (False) claim that those sets are always equal?

We had reached as far as this valid statement

$$
(x \in X \land x \notin Z) \lor (x \in Y \land x \notin Z)
$$

and we used it to deduce this statement

$$
x \in X \vee (x \in Y \wedge x \notin Z)
$$

It seems clear, from our argument in the proof, that the first statement does imply the second one; that is, if we suppose the first statement holds, we can figure out that the second statement one holds, as well. The only difference between them is in the first term, and knowing two parts of an " $\wedge$ " statement hold certainly lets us conclude a particular one of them holds.

This deduction does not work in the other direction. Suppose that second statement holds. If it's the right term that is valid—that  $x \in Y \land x \notin Z$  then this also makes the first statement hold. However, since we have an " $\vee$ " statement, we have to consider the case where the left term is the one that holds. In that case, knowing only  $x \in X$  does not let us deduce that  $x \in X \land x \notin Z$  holds. Supposing an " $\wedge$ " holds lets us deduce either one of its parts holds, but just knowing only one part cannot tell us that both hold!

We can use this to construct a counterexample. We see that we just need to ensure that there is some particular element  $x \in U$  that satisfies the left term

in the second statement, namely  $x \in X$ , but does not satisfy the left term in the first statement, namely  $x \in X \land x \notin Z$ . Said another way, we just need to ensure that there is an element  $x \in X \cap Z$ . The following example accomplishes exactly that.

Example 4.6.12. We claim that

$$
(X \cup Y) - Z \subseteq X \cup (Y - Z)
$$

holds for any sets  $X, Y, Z$ , but equality need not hold. See the proof of Proposition 4.6.11 to see why the containment claimed above does hold.

Now, consider the following example. Let's define

$$
\begin{array}{l} X = \{1 \} \\ Y = \{2 \} \\ Z = \{1, 2 \} \\ \end{array}
$$

Notice that

$$
(X \cup Y) - Z = (\{1 \} \cup \{2 \}) - \{1, 2 \} = \{1, 2 \} - \{1, 2 \} = \varnothing
$$

and

$$
X \cup (Y - Z) = \{1 \} \cup (\{2 \} - \{1, 2 \}) = \{1 \} \cup \{\varnothing \} = \{1 \}
$$

Since  $\varnothing \subset \{1\}$  (a proper) subset, we conclude that

$$
(X \cup Y) - Z \neq X \cup (Y - Z)
$$

in this case. This shows that equality need not hold in the claim above.

This strategy now lets us go back and complete many proofs involving sets in a more efficient and rigorous manner! Rather than fumbling through the linguistics of "ands" and "ors", we can use our logical notation and laws that we have proven. Many of the exercises in this section deal with sets, specifically because of this. If you need to flip back to Chapter 3 and remind yourself of any relevant definitions, go right ahead!

# 4.6.8 Questions & Exercises

# Remind Yourself

Answering the following questions briefly, either out loud or in writing. These are all based on the section you just read, so if you can't recall a specific definition or concept or example, go back and reread that part. Making sure you can confidently answer these before moving on will help your understanding and memory!

(1) What are the Associative Laws for Logic?  
(2) What are the Distributive Laws for Logic?

(3) What are DeMorgan's Laws for Logic? What are DeMorgan's Laws for Sets? How are they related?  
(4) What is the difference between a necessary and a sufficient condition?  
(5) What happens when a condition is both necessary and sufficient?

# Try It

Try answering the following short-answer questions. They require you to actually write something down, or describe something out loud (to a friend/classmate, perhaps). The goal is to get you to practice working with new concepts, definitions, and notation. They are meant to be easy, though; making sure you can work through them will help you!

(1) We used Truth Tables to prove DeMorgan's Laws for Logic. Can you come up with a semantic proof? Can you explain DeMorgan's Laws to a nonmathematician friend and convince them they are valid?  
(2) Let  $P(x)$  be the variable proposition "  $x$  is an integer that is divisible by 10". Come up with two necessary conditions and two sufficient conditions for this statement.  
(3) Let  $A, B, C$  be any sets, where  $A, B, C \subseteq U$ , for some universal set  $U$ . Use logical equivalences and logical laws to prove the following claims.

(a)  $A\cap (B\cup C) = (A\cap B)\cup (A\cap C)$  
(b)  $(A\cup B)\cap \overline{A} = B - A$  
(c)  $\overline{A} \cup B = A \cap \overline{B}$  
(d)  $(A - B)\cap \overline{C} = A - (B\cup C)$

(4) Use conditional statements and logical equivalences to prove that the containment

$$
A - (B \cup C) \subseteq A \cap (\overline {{B \cap C}})
$$

holds for any sets  $A, B, C$ .

Then, find an example that shows that equality need not hold.

(Hint: In general, a helpful idea in constructing a strict set containment is to see if you can make one side the empty set.)

(5) Let  $D, E, F$  be any sets. Consider the sets

$$
D - (E - F)
$$

and

$$
(D - E) - F
$$

How do they compare? Are they always equal? Is one always a subset of the other, or vice-versa?

Clearly state your claims, then either prove them or provide relevant counterexamples.

# 4.7 Negation of Any Mathematical Statement

We saw already how to negate quantified statements. With DeMorgan's Laws in hand, we now know how to negate  $\land$  and  $\lor$  statements. What's left? Aha, conditional statements!

# 4.7.1 Negating Conditional Statements

Consider a claim of the form  $P \Rightarrow Q$ . It says that whenever  $P$  is true,  $Q$  is also true. How do we negate such a statement? What would the logical negation even mean? Think back to how we defined " $\Rightarrow$ " as a logical connective. In which cases did we get to call the speaker of the conditional statement a liar. Those are precisely the cases where we would say the logical negation is True. The only such case was when the hypothesis  $P$  was True but the conclusion  $Q$  was False.

To prove this equivalence, we need to remember the way to write  $P \Rightarrow Q$  as an " $\vee$ " statement:

$$
(P \Rightarrow Q) \iff (\neg P \lor Q)
$$

This will help us in the proof of the following claim.

Lemma 4.7.1. The logical negation of a conditional statement is given by

$$
\neg (P \Longrightarrow Q) \iff P \land \neg Q
$$

Proof. Observe that

$$
\begin{array}{l} \neg (P \Longrightarrow Q) \iff \neg (\neg P \lor Q) \quad \text{Lo gi ca le qu iv al en ce pr ov en al re ad y} \\ \Longleftrightarrow \neg (\neg P) \wedge \neg Q \quad \text{De Mo rg an 's La wf or Lo gi c} \\ \Longleftrightarrow P \wedge \neg Q \quad \text{si nc e} \neg (\neg P) \iff P \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/44fa662e-a015-46fb-8608-ecf0fb518d19/fe535268fe13d6633a6c4ca3923ef37803f993850ea2c27066d65ff3b7a853fb.jpg)

This makes intuitive sense: to show that a conditional claim is False, we need to find a case where the hypothesis holds but the conclusion fails.

Despite the risk of putting bad ideas into your head that weren't already there, we are going to point out some statements that are NOT logically equivalent to  $\neg (P \Rightarrow Q)$ . These are common mistakes that we see students use fairly often. Let's check them out and see why they don't actually work. For each of them, keep in mind that we want the logical negation  $\neg (P \Rightarrow Q)$  to

be guaranteed to have the exact opposite truth value of the original statement  $P \Rightarrow Q$ . In each of these cases, we can see that this relationship would not hold.

- P  $\Rightarrow Q$

This conditional statement has no logical connection to the original claim,  $P \Rightarrow Q$ . Remember that the statement  $P \Rightarrow Q$  makes no claim about whether  $Q$  is true or not in the cases where  $P$  is False. (Think about the "If it is raining, then I carry my umbrella" example. If it's not raining, who knows what I'm carrying!) Thus, why would we expect  $Q$  to be necessarily true in those cases, like this statement says?

$P\Rightarrow \neg Q$

Again, this conditional statement has no logical connection to the original claim. Think about the umbrella example again. This statement would say "If it is raining, then I will not be carrying an umbrella." Is that what it means for the original claim to be False? Definitely not!

$P \Rightarrow Q$

This one is more subtle. A mathematician would read " $P \Rightarrow Q$ " as " $P$  does not necessarily imply  $Q$ ". That is, it would say that there are assignments of truth values where  $P \Rightarrow Q$  is valid and there are assignments where  $P \Rightarrow Q$  is invalid; those cases would depend on what the individual statements  $P$  and  $Q$  are. This is a somewhat meaningful claim to make, depending on the situation, but it is not, strictly speaking, the logical negation of the original claim.

In particular, we run into an issue when we try to take the logical negation of this statement. What does it mean to say that "It is not the case that  $P$  does not necessarily imply  $Q$ ?" Does that mean there exists cases where  $P$  does not imply  $Q$  but there are also cases where  $P$  does imply  $Q$ ? That sounds an awful lot like the actual claim  $P \Rightarrow Q$ , itself …

For these reasons, we want to avoid using this notation:  $\Rightarrow$ . It does have some kind of meaning in mathematics, but it is not really well-defined in a symbolic logical sense. And in any event, it is definitely not the logical negation of  $\Rightarrow$ .

Now that we have these common errors out of the way, let's stress the correct negation of  $P \Rightarrow Q$ . We find that it's quite helpful to remember the "∨" version of a conditional statement; from there, it's easy to apply DeMorgan's Law and negate the statement:

$$
\neg (P \Rightarrow Q) \iff \neg (\neg P \lor Q) \iff P \land \neg Q
$$

# Negating " $\Longleftrightarrow$ "

To negate a biconditional statement, we just write it as a conjunction of two conditional statements:

$$
\neg (P \Longleftrightarrow Q) \Longleftrightarrow [ \neg (P \Longrightarrow Q) \vee \neg (Q \Longrightarrow P) ] \Longleftrightarrow (P \wedge \neg Q) \vee (Q \wedge \neg P)
$$

If you do any kind of comptuer programming, you might recognize the statement on the right as the XOR operator! It says that exactly one statement is True, either  $P$  or  $Q$ , but not both.

# 4.7.2 Negating Any Statement

That's it, right? We have now discussed how to negate any fundamental mathematical claim:  $\exists, \forall, \land, \lor$ , and  $\Rightarrow$ . Everything else we write will be a combination of these basic claims, so we should be able to just apply these techniques over and over and negate any statement we come across. Essentially, we just read the statement left to right and negate every piece in turn. Come across a " $\exists$ "? Just switch it to a " $\lor$ " and negate the property that comes after! Come across an " $\lor$ "? Negate both sides and switch it to and " $\land$ "! Come across a conditional? Apply the technique we just showed above!

Let's see several examples to get the idea.

Example 4.7.2. Find the logical negation of

$$
\forall x \in \mathbb {R}. x <   0 \vee x > 0
$$

This statement says "Every real number  $x$  satisfies either  $x < 0$  or  $x > 0$ ."

The logical negation is

$$
\neg (\forall x \in \mathbb {R} \cdot x <   0 \vee x > 0) \iff \exists x \in \mathbb {R} \cdot x \geq 0 \wedge x \leq 0
$$

Notice that we applied DeMorgan's Law for Logic to negate the  $\vee$  claim on the right-hand side, and we used the fact that  $x \neq 0$  is logically equivalent to  $x \leq 0$ .

We see that this negation is True because  $0 \in \mathbb{R}$  and  $0 \leq 0$  and  $0 \geq 0$ . Thus, the original statement was False.

Example 4.7.3. Find the logical negation of

$$
\exists n \in \mathbb {N}. n \geq 1 0 \wedge \sqrt{n} \leq 3
$$

This statement says "There exists a natural number  $n$  that satisfies both  $n \geq 10$  and  $\sqrt{n} \leq 3$ .

The logical negation is

$$
\forall n \in \mathbb {N}. n <   1 0 \vee \sqrt{n} > 3
$$

That is, the logical negation says "Every natural number  $n$  satisfies either  $n > 10$  or  $\sqrt{n} < 3$ .

Example 4.7.4. Find the logical negation of

$$
\exists x \in \mathbb {R}. \forall y \in \mathbb {R}. x \geq y \Longrightarrow x^{2} \geq y^{2}
$$

This statement says "There exists a real number  $x$  such that whenever we have a real number  $y$  that satisfies  $x \geq y$ , we may conclude that  $x^2 \geq y^2$ ".

The logical negation is

$$
\forall x \in \mathbb {R}. \exists y \in \mathbb {R}. x \geq y \wedge x^{2} <   y^{2}
$$

Can you prove that this logical negation is, in fact, the True statement? Try it!

Example 4.7.5. Find the logical negation of

$$
\forall X \in \mathcal {P} (\mathbb {Z}). (\forall x \in X. x \geq 1) \Rightarrow X \subseteq \mathbb {N}
$$

This statement says that "For every subset  $X$  of the integers  $\mathbb{Z}$ , if every element  $x$  of the set  $X$  satisfies  $x \geq 1$ , then  $X$  is a subset of the natural numbers  $\mathbb{N}$ ."

The logical negation is

$$
\exists X \in \mathcal {P} (\mathbb {Z}) \cdot (\forall x \in X \cdot x \geq 1) \wedge X \nsubseteq \mathbb {N}
$$

This statement says that "There is a subset  $X \subseteq \mathbb{Z}$  such that every element  $x \in X$  satisfies  $x \geq 1$  and yet  $X \not\subseteq \mathbb{N}$ ." We could even rewrite the last part further by noting that

$$
X \nsubseteqeq \mathbb {N} \iff \exists y \in X. y \notin \mathbb {N}
$$

although this wouldn't be totally essential.

Which statement (the original or the negation) is True? Can you prove it?

Compare the statement used in the example above with the following one:

$$
\forall X \in \mathcal {P} (\mathbb {Z}). \forall x \in X. (x \geq 1 \Rightarrow X \subseteq \mathbb {N})
$$

The only difference between them is the location of the parentheses, but this completely changes the statement's meaning!

The statement used in the example asserts something about every subset of the integers. That is, no matter what subset  $X \subseteq \mathbb{Z}$  is introduced, the statement says that if that set has the property that all of its elements are at least 1, then that set  $X$  is actually a subset of  $\mathbb{N}$ , as well.

The new statement written in this box says something else: no matter what subset  $X \subseteq \mathbb{Z}$  is introduced and, furthermore, no matter what element

$x$  of that set  $X$  is introduced, the statement says that if that element  $x$  is at least 1, then that set  $X$  is a subset of  $\mathbb{N}$ , as well.

Do you see why this is different? The issue is where the "if" happens: where does the quantification end and the conditional statement begin? The first statement, from the above example, puts the quantification over elements of  $X$  inside the "if" part of the conditional statement. The second statement, in this box, puts that quantification before the conditional statement entirely.

We claim that this second version, in this box, is False, and we encourage you to figure out why (if you haven't already).

Example 4.7.6. Let  $O(x)$  be the proposition "  $x$  is odd", and let  $E(x)$  be the proposition "  $x$  is even". Find the logical negation of the statement

$$
\forall x, y \in \mathbb {Z}. O (x \cdot y) \iff (O (x) \wedge O (y))
$$

This statement says that "For every two integers  $x$  and  $y$ , their product is odd if and only if they are both odd, themselves".

Before we find the logical negation, remember the  $\Longleftrightarrow$  means " $\Longrightarrow$  and  $\Longleftarrow$ ". Let's rewrite the claim that way first, so that we can negate it properly:

$$
\forall x, y \in \mathbb {Z}. [ O (x \cdot y) \Rightarrow (O (x) \land O (y)) ] \land [ (O (x) \land O (y)) \Rightarrow O (x \cdot y) ]
$$

The logical negation is

$$
\begin{array}{l} \neg \left(\forall x, y \in \mathbb {Z}. [ O (x \cdot y) \Rightarrow (O (x) \wedge O (y)) ] \wedge [ (O (x) \wedge O (y)) \Rightarrow O (x \cdot y) ]\right) \\ \Longleftrightarrow \exists x, y \in \mathbb {Z}. \neg [ O (x \cdot y) \Rightarrow (O (x) \wedge O (y)) ] \\ \vee \neg [ (O (x) \wedge O (y)) \Rightarrow O (x \cdot y) ] \\ \Longleftrightarrow \exists x, y \in \mathbb {Z}. [ O (x \cdot y) \wedge \neg (O (x) \wedge O (y)) ] \vee [ (O (x) \wedge O (y)) \wedge \neg O (x \cdot y) ] \\ \Longleftrightarrow \exists x, y \in \mathbb {Z}. [ O (x \cdot y) \wedge (E (x) \vee E (y)) ] \vee [ (O (x) \wedge O (y)) \wedge E (x \cdot y) ] \\ \end{array}
$$

That is, the logical negation says "There exist integers  $x$  and  $y$  such that either their product is odd and yet (at least) one of them is even, or they are both odd and yet their product is even.

Can you prove which one of these claims is True?

# 4.7.3 Questions & Exercises

# Remind Yourself

Answering the following questions briefly, either out loud or in writing. These are all based on the section you just read, so if you can't recall a specific definition or concept or example, go back and reread that part. Making sure you can confidently answer these before moving on will help your understanding and memory!

(1) How is a mathematical statement related to its logical negation?  
(2) What is the logical negation of a conditional statement?  
(3) Consider the statement  $P \Rightarrow Q$ . What is its contrapositive? What is the logical negation of that contrapositive? Can you see that it must have the same truth value as the logical negation of the original statement?  
(4) What is the logical negation of an if and only if statement,  $P \Longleftrightarrow Q$ ? Why does this make sense, considering what such a statement says about the truth values of  $P$  and  $Q$ ?

# Try It

Try answering the following short-answer questions. They require you to actually write something down, or describe something out loud (to a friend/classmate, perhaps). The goal is to get you to practice working with new concepts, definitions, and notation. They are meant to be easy, though; making sure you can work through them will help you!

(1) Write out the logical negation of each of the following mathematical statements.

Then, determine the truth value of each statement.

(If you're feeling ambitious, formally prove/disprove each statement!)

(a)  $\exists x\in \mathbb{N}.\forall y\in \mathbb{N}.y - x^2\geq 0$  
(b)  $\exists x\in \mathbb{Z}$ $\forall y\in \mathbb{R}$ $xy = 0$  
(c)  $\exists x\in \mathbb{Z}$ $\forall y\in \mathbb{Z}$ $(y\neq 0\Rightarrow xy > 0)$  
(d)  $\forall a,b\in \mathbb{Q}.ab\in \mathbb{Z}\Rightarrow (a\in \mathbb{Z}\lor b\in \mathbb{Z})$  
(e)  $\forall x\in \mathbb{R}.x > 0\Rightarrow (\exists y\in \mathbb{R}.y <   0\land xy > 0)$  
(f)  $\forall x\in \mathbb{R}$  .  $\left|x + \frac{1}{x}\right| = 2\Longleftrightarrow x = 1$

(2) Let  $A = \{1, 2, 3, 4\}$  and  $B = \{2, 3\}$ .

What is the difference between the following two statements? Determine the truth value of each one.

Then, negate each one, and explain how those negations also differ. What are their truth values?

(a)  $\forall x\in A.\forall y\in B.(x\geq y\Rightarrow x^2\geq 4)$  
(b)  $\forall x\in A.$ $(\forall y\in B.x\geq y)\Rightarrow x^{2}\geq 4$

(3) Let  $P = \{x \in \mathbb{R} \mid x > 0\}$ . Write the logical negation of each of the following statements, and determine their truth values.

(a)  $\forall \varepsilon \in P.\forall x\in P.\exists \delta \in P.\forall y\in \mathbb{R}.\left(|x - y| <   \delta \Rightarrow \left|\frac{1}{x} -\frac{1}{y}\right| <   \varepsilon\right)$

$$
\forall \varepsilon \in P. \exists \delta \in P. \forall x \in P. \forall y \in \mathbb {R}. \left(| x - y | <   \delta \Rightarrow \left| \frac{1}{x} - \frac{1}{y} \right| <   \varepsilon\right) \tag {b}
$$

Hint/suggestion: A statement like  $|a| < b$  can be written as  $-b < a < b$ . Also, a statement like  $a < b < c$  can be written as  $a < b \land b < c$ . This might help you rewrite the statements when determining their truth values.

(4) Let  $P(n)$  be the proposition "  $n$  is odd" and let  $Q(n)$  be the proposition "  $n^2 - 1$  is divisible by 8".

Write the logical negation of the statement

$$
\forall n \in \mathbb {N}. P (n) \Longleftrightarrow Q (n)
$$

and determine its truth value.

(5) Let  $P = \{x \in \mathbb{R} \mid x > 0\}$ . Write the logical negation of each of the following statements, and determine their truth values.

(a)  $\forall \varepsilon \in P.\exists \delta \in P.\forall x\in \mathbb{R}.0 <   x <   \delta \Rightarrow \frac{1}{x} >\frac{10}{\varepsilon}$  
(b)  $\forall \varepsilon \in P.\exists x\in \mathbb{R}.\forall n\in \mathbb{N}.\left(n > x\Rightarrow \frac{(-1)^n}{n} <  \varepsilon\right)$  
(c)  $\forall \varepsilon \in P.\exists x\in \mathbb{R}.\forall n\in \mathbb{N}.\left(n > x\Longleftrightarrow \frac{(-1)^n}{n} <  \varepsilon\right)$

# 4.8 [Optional Reading] Truth Values and Sets

There is a convenient and interesting relationship between sets (and their corresponding relationships and operations) and logical truth values (and their corresponding relationships and connectives). We will mention it here and demonstrate some examples, and leave it to you to investigate it further, if you'd like. We won't need these kinds of ideas in the rest of our work, but we believe that thinking about these ideas and sorting them out in your head will really help your understanding of the fundamentals of logic, as well as sets.

Suppose we have two variable propositions,  $P(x)$  and  $Q(x)$ . Further, suppose these propositions make sense for any input  $x$  that comes from some universal set  $U$ . (This set  $U$  depends on the specific statements inside  $P(x)$  and  $Q(x)$ , of course, but we don't really care what they are for this general discussion.) For each of these propositions, we can define a truth set; that is, we can consider the set of all instances  $x$  from the universe  $U$  that make those propositions evaluate as True. We define

$$
\begin{array}{l} T_{P} = \{x \in U \mid P (x) \text{is Tr ue} \} \\ T_{Q} = \{x \in U \mid Q (x) \text{is Tr ue} \} \\ \end{array}
$$

Perhaps the propositions  $P(x)$  and  $Q(x)$  are related somehow. Let's suppose that, in fact,

$$
\forall x \in U. P (x) \Rightarrow Q (x)
$$

holds. What does this say about those truth sets? This conditional statement says that any  $x$  that satisfies  $P(x)$  (i.e. makes  $P(x)$  True) must also satisfy  $Q(x)$ . Written another way, using those truth sets, we have

$$
\forall x \in U. x \in T_{P} \Rightarrow x \in T_{Q}
$$

This is precisely the definition of "subset"! What we have just discovered is that

$$
T_{P} \subseteq T_{Q}
$$

when that conditional statement above holds.

Let's suppose even further, now, that

$$
\forall x \in U. P (x) \Longleftrightarrow Q (x)
$$

holds. We just discovered that  $T_P \subseteq T_Q$ , and applying the exact same reasoning to the "other direction" of that  $\iff$  statement (that is, the  $Q(x) \Rightarrow P(x)$  part of it) will show us that  $T_Q \subseteq T_P$ , as well. By the definition of set equality, this means that

$$
T_{P} = T_{Q}
$$

when that biconditional statement above holds.

How else might we combine the propositions  $P(x)$  and  $Q(x)$ ? Let's consider the proposition  $P(x) \wedge Q(x)$ . What are the instances  $x$  that make this conjunction True? How can we characterize those instances in terms of the truth sets we defined? Think about it for a minute, and you'll see that all of those instances are characterized by the intersection of those sets; we need both  $P(x)$  and  $Q(x)$  to hold, so we need an instance that comes from both of the truth sets.

Similarly, we can consider the conjunction  $P(x) \lor Q(x)$ . An instance  $x$  makes this statement True when that  $x$  makes at least one of the propositions True. Thus, that  $x$  must come from at least one of the sets, so it must come from their union.

Let's summarize these relationships we have discovered:

$$
\forall x \in U. \left(P (x) \Longrightarrow Q (x)\right) \Longleftrightarrow \left(T_{P} \subseteq T_{Q}\right)
$$

$$
\forall x \in U. \left(P (x) \Longleftrightarrow Q (x)\right) \Longleftrightarrow \left(T_{P} = T_{Q}\right)
$$

$$
\forall x \in U. \left(P (x) \land Q (x)\right) \iff \left(x \in T_{P} \cap T_{Q}\right)
$$

$$
\forall x \in U. (P (x) \vee Q (x)) \iff (x \in T_{P} \cup T_{Q})
$$

Can you come up with some characterizations, using truth sets, for the following statements? Fill in the blanks!

$$
\forall x \in U. (P (x) \wedge \neg Q (x)) \iff
$$

$$
\left(\exists x \in U. P (x)\right) \iff \underline {{}}
$$

$$
\forall x \in U. (\neg P (x) \iff \quad)
$$

(Careful: how are the previous statement and the next one different?)

$$
(\forall x \in U. \neg P (x)) \iff
$$

# 4.9 Writing Proofs: Strategies and Examples

We are now prepared to fully tackle the goal we have been building towards all along: writing PROOFS!

In this section, we will apply all of these fundamental logical principles we have developed in this chapter. Specifically, we will learn how to use them to write formal arguments that demonstrate the truth (or falsity) of mathematical statements. In general, it's hard to describe how to figure out which mathematical statements are True and which are False. In a way, though, the strategies we develop here will help us discover truths. More importantly, though, they will provide us with templates and guidelines for how to actually present a truth to someone else and describe why it is, indeed, a truth.

As we have discussed, it is not enough to figure out some interesting fact and just hope that others will trust us about it. We need to be able to explain that fact; we need to present an argument that will convince someone else of its truth. We don't necessarily have to explain where it came from, or why we cared to investigate it in the first place (although sometimes you might want to answer these implicit questions, if you think it would help a potential reader). In general, we just need to make sure that someone else—a peer, a classmate, a fellow mathematician—can pick up our written proof, read it, and afterwards be fully convinced that what we claimed to be True is, indeed, True.

# Outline of this section

Mostly, we hope you will see how the ensuing strategies come directly from the underlying logical principles associated with propositions and quantifiers and connectives and negations. We have split the section into several subsections, each one corresponding to a particular quantifier or connective.

When you face a mathematical statement and have to prove it, just start reading the statement left to right. What do you encounter first? If it's a " $\exists$ " quantifier, look at Section 4.9.1. If it's a " $\lor$ " quantifier, look at Section 4.9.2. After that, what type of claim do you face? What form does the ensuing variable proposition take? Is it an " $\lor$ " statement? Look at Section 4.9.3. Is it a conditional statement? Look at section 4.9.5. Is it a conditional statement where the hypothesis is an " $\lor$ " statement and the conclusion is an " $\land$ " statement? Look at all three Sections—4.9.3 and 4.9.4 and 4.9.5—and combine them appropriately! In general, every proof we write from now on (except for induction proofs, which we will return to in the next chapter) will be a combination of these strategies. Which ones you use and how you combine them depends on the statement you're trying to prove and how you've decided to approach it.

Within each subsection, we have provided some templates and some examples. You might find the templates too restrictive, perhaps too formal; we understand, but we think that following our formats as closely as possible for now will help you in the long run. These templates—as well as how we've used them in the examples provided—are meant to emphasize the logical principles behind these proof strategies. Working with them closely will give you extra

practice with these logical concepts and, we strongly believe, help you adapt them for your own uses in the future.

For each example provided, we have boxed the proof strategy in blue and the example implementation in green and any necessary scratch work in red. Any other discussion of the strategy or the implementation appears outside of those boxes.

Also, several of the examples we consider in this section (and the next one) are interesting and useful results, in their own right. You'll notice that some of them have a name or a descriptive title, which is meant to indicate this fact. While the main emphasis of this section is on the proof strategies—developing them and seeing how to use them—we encourage you to also keep in mind these examples as interesting facts, themselves. We'll bring up this idea again when it's warranted, but we'll keep those discussions brief, so as not to distract from the overall structure of this section.

# Direct vs. Indirect methods

You will also notice that each subsection includes strategies for both direct and indirect methods. These terms might not be familiar to you yet. All they refer to is whether or not we try to prove a statement (1) directly by demonstrating that it is True, or (2) indirectly by invoking the Law of the Excluded Middle, by demonstrating that its logical negation is False.

Both forms of strategy are, in general, equally valid, but direct proofs are typically considered subjectively better by many readers. (Sometimes, you might write an indirect proof that is actually hiding a direct proof inside it!) These subjective ideas will be assessed and discussed as we work through examples and ask you to write proofs on your own, in the exercises.

You'll notice that all of our indirect proofs begin with the phrase "Assume for sake of contradiction", usually abbreviated as "AFSOC". This is an important and helpful phrase. It signals to the reader of our proof that we are going to make an assumption but we don't really think that the assumption is valid. Rather, we are going to use this assumption to derive something False, a contradiction. This will allow us to conclude that our original assumption was invalid, so its logical negation (i.e. our original statement that we hoped to prove) is actually True. You'll see that we use the symbol " $\text{※}$ " to indicate a contradiction, but we also make sure to point out why we have found a contradiction. We don't leave it to the reader to figure it out!

Alright, that's enough preamble. Let's dive right in and WRITE SOME PROOFS!

# 4.9.1 Proving  $\exists$  Claims

An " $\exists$ " claim is one of existence. It asserts that some particular object exists as an element of some set and that it has a certain property. To prove such a claim, we need to exhibit such an object and verify, for our reader, that (1)

that object is an element of the correct set and (2) that object has the correct property.

# Direct Method

# Strategy:

Claim:  $\exists x\in S\cdot P(x)$

Direct proof strategy:

Define a specific example,  $y =$

Prove that  $y \in S$ .

Prove that  $P(y)$  holds true.

Example 4.9.1. Solving a system of linear equations:

Statement: Fix  $a, b, c, d, e, f \in \mathbb{R}$  with the property that  $ad - bc \neq 0$ .

We claim that one can simultaneously solve

$$
a x + b y = e \tag {4.1}
$$

$$
c x + d y = f \tag {4.2}
$$

for some  $x,y\in \mathbb{R}$

Define  $S(x,y)$  to be the statement "  $x$  and  $y$  simultaneously satisfy both equations, (4.1) and (4.2), above". Then we claim

$$
\exists x, y \in \mathbb {R}. S (x, y)
$$

First, we must do some scratch work to construct the solution. Then, we can write a proof that defines the objects  $x$  and  $y$  and shows why they work.

# Scratch work:

We need  $ax + by = e$  and  $cx + dy = f$ , and we want to know which  $x$  and  $y$  make this work.

Let's multiply the first and second equations by the right coefficients (namely,  $d$  and  $-b$ , respectively) so we can cancel the  $y$  terms by adding

the two lines:

$$
a d x + b d y = d e
$$

$$
+ \left(- b c x - b d y = - b f\right)
$$

$$
(a d - b c) x = d e - b f
$$

Dividing tells us  $x = \frac{de - bf}{ad - bc}$ , which is okay because  $ad - bc \neq 0$ .

Doing something similar, canceling the  $x$  terms, tells us how to get  $y$ :

$$
a c x + b c y = c e
$$

$$
+ (- a c x - a d y = - a f)
$$

$$
(b c - a d) y = c e - a f
$$

Dividing tells us  $y = \frac{af - ce}{ad - bc}$ .

The main lesson here is that we do not need to show this scratch work in our proof below! We don't assume that a reader would care to wade through our messy notes about how we came up with the solution to the system of linear equations. Rather, we assume the reader only cares about what the solution is and why it's a solution. Also, this makes the proof much more concise, so it can be read more easily and quickly.

# Implementation:

Proof. Since  $ad - bc \neq 0$  (by assumption), we may define

$$
x = \frac{d e - b f}{a d - b c} \qquad \text{an d} \qquad y = \frac{a f - c e}{a d - b c}
$$

and know that  $x,y\in \mathbb{R}$  . Then,

$$
a x + b y = \frac{(a d e - a b f) + (a b f - b c e)}{a d - b c} = \frac{a d e - b c e}{a d - b c} = \frac{e (a d - b c)}{a d - b c} = e
$$

$$
c x + d y = \frac{(c d e - b c f) + (a d f - c d e)}{a d - b c} = \frac{a d f - b c d}{a d - b c} = \frac{f (a d - b c)}{a d - b c} = f
$$

so  $S(x,y)$  holds.

If you've studied some linear algebra before, you'll recognize the term  $ad - bc$  as the determinant of the matrix  $\begin{bmatrix} a & b \\ c & d \end{bmatrix}$ . The stipulation that  $ad - bc \neq 0$  means that we require this matrix of coefficients to have an inverse, to be "non-

singular". In that situation, we have a solution to the system for any  $e,f\in \mathbb{R}$

# Indirect Method (Proof by Contradiction)

This strategy relies on the logical negation of an  $\exists$  claim:

$$
\neg (\exists x \in S. P (x)) \Longleftrightarrow \forall x \in S. \neg P (x)
$$

We will assume this negation and deduce something contradictory from it, meaning the negation is False so the original is True.

Claim:  $\exists x\in S$ .  $P(x)$

Indirect proof strategy:

AFSOC that for every  $y \in S$ ,  $\neg P(y)$  holds.

Find a contradiction.

Example 4.9.2. A version of the Pigeonhole Principle:

Statement: Suppose  $n \in \mathbb{N}$  and we have  $n$  real numbers,  $a_1, a_2, \ldots, a_n \in \mathbb{R}$ .

We claim that one of the numbers is at least as large as their average. That is,

$$
\exists B \in [ n ] \cdot a_{B} \geq \frac{1}{n} \sum_{i = 1}^{n} a_{i}
$$

Proof. AFSOC none of the numbers are at least as large as the average, i.e.

$$
\forall i \in [ n ] \cdot a_{i} <   \frac{1}{n} \sum_{i = 1}^{n} a_{i}
$$

Define the constant  $S = \sum_{i=1}^{n} a_i$ , so that  $a_i < \frac{S}{n}$ .

Then we can sum all of the  $a_{i}$ s and observe that

$$
S = \sum_{i = 1}^{n} a_{i} <   \sum_{i = 1}^{n} \frac{S}{n} = n \cdot \frac{S}{n} = S
$$

This shows that the real number  $S$  is strictly less than itself:  $S < S$ . This is a contradiction.  $\text{※}$

Therefore, the original assumption was false, and the claim follows.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/44fa662e-a015-46fb-8608-ecf0fb518d19/091388a2bb0f145bdc432308b3d155085e0457039d9355067f491f4f95c35122.jpg)

As stated, this is a version of the Pigeonhole Principle. We will investigate and use this principle again in Section 8.6, when we study combinatorics.

# 4.9.2 Proving  $\forall$  Claims

A " $\forall$ " claim is one of universality. It asserts that all elements of a set have some common property. To prove such a claim, we need to show that every element of the set has that property. To accomplish this "all at once", we will consider an arbitrary and fixed element of the set, and prove that it has the desired property. Because this object is arbitrary, our argument applies to every element of the set. Because this object is fixed, we are allowed to refer to it by name throughout the proof.

# Direct Method

# Strategy:

Claim:  $\forall x\in S\cdot P(x)$

Direct proof strategy:

Let  $y \in S$  be arbitrary and fixed.

Prove that  $P(y)$  holds true.

Example 4.9.3. A version of the AGM Inequality:

Statement:  $\forall x, y \in \mathbb{R}$ .  $xy \leq \left(\frac{x + y}{2}\right)^2$

# Implementation:

Proof. Let  $x, y \in \mathbb{R}$  be arbitrary and fixed.

We know  $0 \leq (x - y)^2$ .

Multiplying out and rearranging, we get  $2xy \leq x^2 + y^2$ .

Adding  $2xy$  to both sides, we get  $4xy \leq x^2 + 2xy + y^2$ .

Factoring, we get  $4xy \leq (x + y)^2$ .

Dividing by 4 and putting that into the square, we get

$$
x y \leq \left(\frac{x + y}{2}\right)^{2}
$$

This result is known as the AGM Inequality because it deals with the Arithmetic Mean (AM) and the Geometric Mean (GM) of two real numbers.

The Arithmetic Mean of  $x$  and  $y$  is  $\frac{x + y}{2}$ .

The Geometric Mean of  $x$  and  $y$  is  $\sqrt{xy}$ . (Notice that this only applies when

$xy \geq 0$ , i.e. when  $x$  and  $y$  have the same sign be it positive or negative, or zero.)

The AGM Inequality asserts that the AM is always at least as large as the GM. A helpful mnemonic is to read "AGM" as "Arithmetic Mean Greater than Geometric Mean".

What we proved above is a slightly more general version, because it applies to all real numbers  $x$  and  $y$ , and not just those with the same sign. Supposing that  $xy \geq 0$ , though, one can simply take the square root of both sides and obtain the "usual" statement of the AGM Inequality:  $\sqrt{xy} \leq \frac{x + y}{2}$ .

# Indirect Method (Proof by Contradiction)

Claim:  $\forall x\in S$ $P(x)$

Indirect proof strategy:

AFSOC that  $\exists y\in S$  such that  $\neg P(y)$  holds.

Find a contradiction.

Example 4.9.4.  $\sqrt{2}$  is irrational:

Statement:  $\forall a,b\in \mathbb{Z}$  .  $\frac{a}{b}\neq \sqrt{2}$

(Note: This claim is appealing directly to the definition of the rational numbers  $\mathbb{Q}$ . It is saying that  $\sqrt{2} \notin \mathbb{Q}$  because that number has no representation as a ratio of integers.)

# Implementation:

Proof. AFSOC  $\exists a, b \in \mathbb{Z}$ .  $\frac{a}{b} = \sqrt{2}$ .

We may assume that  $\frac{a}{b}$  is given in reduced form, so that  $a$  and  $b$  have no common factors. (If this were not the case, we could just reduce the fraction and obtain such a form.)

Let such  $a, b \in \mathbb{Z}$  be given.

(Note: We discuss this phrase, "let such ______ be given", below in Section 4.9.8. It is meant to not only assert that such an  $a, b \in \mathbb{Z}$  exist, but also that we want some particular instances of those variables so that we can work with them for the rest of the proof.)

This means  $\frac{a}{b} = \sqrt{2}$ , so  $\frac{a^2}{b^2} = 2$ .

Thus,  $2b^{2} = a^{2}$ , so  $a^2$  is even, by definition.

Since  $a^2$  is even, this tells us  $a$  is even.

(Note: You should prove this. We will prove it in Section 4.9.6, but you should try to do it on your own now.)

Thus,  $\exists k\in \mathbb{Z}$ $a = 2k$  . Let such a  $k$  be given, so  $a^2 = 4k^2$

Then  $2b^{2} = 4k^{2}$ , so  $b^{2} = 2k^{2}$ .

Thus,  $b^2$  is even, by definition. By the same reasoning as above with  $a^2$  and  $a$ , we deduce here that  $b$  is even.

This shows both  $a$  and  $b$  are even so, in fact, they have a common factor of 2.

This contradicts our assumption that  $a$  and  $b$  have no common factors.

Therefore, the original assumption must be False, so the claim is True.

# 4.9.3 Proving  $\vee$  Claims

An " $\vee$ " claim asserts that at least one of two statements must be True. If it just so happens that one of the two statements is clearly False, then just try to prove the other one is True. This is what the direct method is here; it is straightforward, so we will not provide an example of implementation.

# Direct Method

Strategy:

Claim:  $P \vee Q$

Direct proof:

Prove that  $P$  is True, or else prove that  $Q$  is True.

This relies on you being able to decide ahead of time which one of the statements  $(P$  or  $Q)$  is True, of course. If you can do so, then this isn't even really a "strategy". Just implement whatever strategy applies to  $P$  (or  $Q$ , as the case may be).

# Indirect Method (Proof by "Otherwise")

This method is far more interesting than the direct one. In general, it is helpful when the statements  $P$  and  $Q$  are actually variable propositions, and for some instances  $P$  is True whereas for other instances  $Q$  is the True one. In that case, rather than characterize exactly which instances satisfy  $P$  and which satisfy  $Q$ , we can just say, "Well, if  $P$  is True, then our proof is already complete. Thus, all we need to worry about are the cases where  $P$  is False; for those cases, we need to show that  $Q$  is still True."

# Strategy:

Claim:  $P \vee Q$

Indirect proof strategy 1:

Suppose that  $\neg P$  holds. Prove that  $Q$  holds.

To reiterate the strategy: If  $P$  holds, then the claim holds, and in fact we don't care whether  $Q$  holds or not. Otherwise, in the case where  $P$  fails, we need to guarantee that  $Q$  holds.

Notice that  $P \lor Q \iff Q \lor P$  (i.e. the order is irrelevant in a logical disjunction) so we can rewrite our claim as  $Q \lor P$  and rewrite the above strategy as:

Suppose  $\neg Q$  holds. Prove that  $P$  holds.

This is the exact same strategy on the equivalent statement  $Q \lor P$ , i.e. with the roles of  $P$  and  $Q$  switched.

Example 4.9.5. When a real number is less than its square:

Statement: Suppose that  $x \in \mathbb{R}$  and  $x^2 \geq x$ .

We claim that  $x \geq 1$  or  $x \leq 0$ .

# Implementation:

Proof. Let  $x \in \mathbb{R}$  be arbitrary and fixed, and suppose that  $x^2 \geq x$ .

If it were the case that  $x \leq 0$ , we would be done; so, suppose otherwise.

That is, suppose  $x > 0$ .

By assumption,  $x^{2} \geq x$ . Since  $x > 0$ , we can divide both sides by  $x$ .

This yields  $x \geq 1$ .

This proves a necessary condition for a real number to be less than (or equal to) its square. Is this condition—namely,  $x \geq 1 \lor x \leq 0$ —also a sufficient condition? Prove it! It's easy, and once you've done so, we will have together proven this biconditional statement:

$$
\forall x \in \mathbb {R}. x^{2} \geq x \Longleftrightarrow (x \geq 1 \vee x \leq 0)
$$

# Indirect Method (Proof by Contradiction)

This method is more like the indirect methods considered above, in that we suppose the logical negation is valid and then deduce something absurd. We will illustrate this strategy by applying it to the same claim in the directly previous example.

# Strategy:

Claim:  $P \vee Q$

Indirect proof strategy 2:

AFSOC that  $\neg P\land \neg Q$  holds. Find a contradiction.

# Implementation:

Proof. Let  $x \in \mathbb{R}$  be arbitrary and fixed, and suppose that  $x^2 \geq x$ .

AFSOC that  $0 < x$  and  $x < 1$ .

Since  $x > 0$ , we can multiply both sides of these inequalities by  $x$  and preserve the sign.

Multiplying  $x < 1$  by  $x$ , then, we find that  $x^2 < x$ .

This contradicts our assumption that  $x^{2}\geq x$  1

Thus, our assumption was invalid, so the claim is True.

How does this compare to the previous implementation? We are proving the exact same claim, but the proofs are slightly different. Which do you think is better, in your opinion? Which do you think was easier to write? Furthermore, could you go back and rewrite the original claim using quantifiers and " $\Rightarrow$ "? After doing that, do you see what these two proofs accomplish? Try it!

# 4.9.4 Proving  $\wedge$  Claims

An " $\wedge$ " claim asserts that both of two statements are True. There's one obvious and direct way to do this: just prove one statement and then prove the other!

We will show you an example implementation of this method because the  $\wedge$  statement of our example comes after an  $\exists$  claim. Thus, there's actually some scratch work to be done to figure out how to define an object that will, indeed, satisfy both of the desired properties. This will be our first illustrative example of how these proof strategies can be combined to prove statements that use both quantifiers and connectives.

# Direct Method

# Strategy:

Claim:  $P\wedge Q$

Direct proof strategy:

Prove that  $P$  holds. Prove that  $Q$  holds.

Example 4.9.6. A smaller number whose square is bigger:

Statement:  $\forall x\in \mathbb{R}$  .  $\exists y\in \mathbb{R}$  .  $(x\geq y\land x^{2} <   y^{2})$

# Scratch work:

How does this work? Let's take a specific  $x$ , like  $x = 4$ . We need to find a smaller real number whose square is bigger than  $x^2 = 16$ .

The key is that we want  $y \in \mathbb{R}$ , so we can use negative numbers. In this case, picking a negative number with larger magnitude, like  $y = -5$ , will work.

Let's take a different  $x$ , like  $x = -2$ . This number is already negative, so just picking any smaller number, like  $y = -3$ , will work.

The proof we follow below splits into two cases, based on whether  $x$  is positive or non-positive.

Now we are ready to prove our claim.

# Implementation:

Proof 1. Let  $x \in \mathbb{R}$  be arbitrary and fixed. We consider two cases.

(1) Suppose  $x \leq 0$ .

Define  $y = x - 1$ . Notice  $y \in \mathbb{R}$ .

Notice  $y \leq x$ . Also, notice that

$$
y^{2} = (x - 1)^{2} = x^{2} - 2 x + 1 = x^{2} - (2 x - 1)
$$

Since  $x \leq 0$ , we know  $2x \leq 0$  and so  $2x - 1 \leq -1$ . Thus,

$$
x^{2} - (2 x - 1) \geq x^{2} - 1 > x^{2}
$$

and therefore,  $y^{2} > x^{2}$

(2) Now, suppose  $x > 0$

Define  $y = -x - 1$ . Notice  $y \in \mathbb{R}$ .

Notice  $y < 0$  and  $x > 0$ , so  $y \leq x$ . (In fact,  $y < x$ , even.)

Also, notice that

$$
y^{2} = (- x - 1)^{2} = x^{2} + 2 x + 1 = x^{2} + (2 x + 1)
$$

Since  $x > 0$ , we know  $2x + 1 > 0$ . Thus,

$$
x^{2} + (2 x + 1) > x^{2}
$$

and therefore,  $y^{2} > x^{2}$

In either case, we found a  $y$  with the desired properties, namely  $y \in \mathbb{R}$  and  $y \leq x$  and  $x^2 < y^2$ . Therefore, the claim is True.

Why did we call this "Proof 1"? We split the proof into two cases based on our observations in the scratch work. Specifically, we recognized that we will define  $y$  (in terms of  $x$ ) differently, depending on the sign of  $x$ . We claim that it is possible to rewrite this proof in a way that avoids these cases. This is what "Proof 2" will be, and we want you to write it! To reiterate the goal, we want you to rewrite the above proof so that  $y$  is defined in terms of  $x$  in one general way that works regardless of the sign of  $x$ .

(Hint: What is  $-x$  when  $x < 0$ ? Is this a function we've seen before?)

# Indirect Method (Proof by Contradiction)

This method is just like the other indirect methods. We just take the logical negation of a claim, assume it holds, and deduce something absurd. This means that the assumption was invalid, so the original statement is the True one.

We will leave it to you to try to apply this method to the claim used in the previous example. (Note: You might want to do this after finding the "second proof" we hinted at just above this.) Then, you can compare how the two methods played out and decide which one you prefer, in this case.

# Strategy:

Claim:  $P\wedge Q$

Indirect proof:

AFSOC that  $\neg P \lor \neg Q$  holds.

Consider the first case, where  $\neg P$  holds. Find a contradiction.

Consider the second case, where  $\neg Q$  holds. Find a contradiction.

# 4.9.5 Proving  $\Rightarrow$  Claims

It might help you to look back at Section 4.5.3, where we introduced the connective " $\Rightarrow$ ". Specifically, we want you to recall that  $P \Longrightarrow Q$  means that whenever  $P$  holds,  $Q$  also necessarily holds. This conditional statement is True

in the cases where  $P$  itself (the hypothesis) is False. Thus, our proof strategy does not need to consider such cases. All we need to do is suppose that  $P$  holds, and deduce that  $Q$  also holds. This takes care of the "whenever  $P$  holds, so does  $Q$ " consideration.

# Direct Method

# Strategy:

Claim:  $P \Longrightarrow Q$

Direct proof strategy:

Suppose  $P$  holds. Prove that  $Q$  holds.

Example 4.9.7. Monotonicity of squares:

Statement:  $\forall y\in \mathbb{R}.y > 1\Rightarrow y^2 -1 > 0$

# Implementation:

Proof. Let  $y \in \mathbb{R}$  be arbitrary and fixed.

Suppose  $y > 1$

Multiplying both sides by  $y$  (since  $y > 0$ ), we obtain  $y^2 > y$ .

Since  $y > 1$ , this tells us  $y^2 > y > 1$ , and so  $y^2 > 1$ .

Subtracting yields the desired conclusion:  $y^2 - 1 > 0$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/44fa662e-a015-46fb-8608-ecf0fb518d19/010b820a86ac72f6be95236709c7666bb5389825f90ad0c8dc4ea7fde2ebb5ef.jpg)

We called this "monotonicity of squares" because it states a particular property of real numbers that is monotone. This is a term that is used to indicate a certain inequality is preserved under an operation. In this case, the fact that some number being greater than 1 is preserved by the "squaring operation". That is, we proved that if  $y > 1$ , then  $y^2 > 1^2$ , as well.

Now, this was a pretty easy example to prove, but we wanted to include it to emphasize the proof strategy for conditional statements. Let's work with a more difficult example now.

(You'll also notice that Exercise 4.11.22 has a similar-looking problem statement. Perhaps you want to work on that one after following this example.)

Example 4.9.8. Working with inequalities:

Statement: We define the following variable propositions:

$$
P (x) \text{is} “ \frac{x - 3}{x + 2} > 1 - \frac{1}{x} ”
$$

$$
Q (x) \text{is} “ \frac{x + 3}{x + 2} <   1 + \frac{1}{x} ”
$$

Define  $S = \{x\in \mathbb{R}\mid x > 0\}$

We claim that

$$
\forall x \in S. P (x) \Longrightarrow Q (x)
$$

# Scratch work:

We're guessing that a direct method will work here, so let's try to manipulate the inequality stated inside  $P(x)$  and make it "look like" the inequality inside  $Q(x)$ .

So we start with that inequality

$$
\frac{x - 3}{x + 2} > 1 - \frac{1}{x}
$$

and we'll try multiplying both sides by  $x + 2$ . Can we do this? Oh right,  $x > 0$  and so  $x + 2 > 0$ , as well. Phew! This gives us

$$
x - 3 > (x + 2) - \frac{x + 2}{x} = x + 2 - 1 - \frac{2}{x} = x + 1 - \frac{2}{x}
$$

We want to see an  $x + 3$  somewhere, so we'll add/subtract on both sides:

$$
x - 1 + \frac{2}{x} > x + 3
$$

Can we divide by  $x + 2$  and make the right fraction? Hmm … Oh wait! We already simplified the fraction  $\frac{x + 2}{x}$  and moved it to one side. Maybe we shouldn't have simplified it first, so let's try undoing that:

$$
x + 3 <   x - 1 + \frac{2}{x} = (x + 2) + \frac{x + 2}{x} - 4 = (x + 2) \left(1 + \frac{1}{x}\right) - 4
$$

Aha, that looks better! We even have some "wiggle room" in the form of the negative 4 there. We know the right-hand side is less than what we wanted it to be, so the result holds.

Let's take these algebraic steps we worked on here, reorder them a bit and explain them, and wrap it all together in a formal proof.

# Implementation:

Proof. Let  $x \in S$  be arbitrary and fixed.

Suppose that  $P(x)$  holds; that is, suppose

$$
\frac{x - 3}{x + 2} > 1 - \frac{1}{x}
$$

We will show that the inequality

$$
\frac{x + 3}{x + 2} <   1 + \frac{1}{x}
$$

also holds, necessarily.

Since  $x \in S$ , we know  $x > 0$  and so, certainly,  $x + 2 > 0$ , as well. Thus, we can multiply both sides of the known inequality by  $x + 2$ , yielding

$$
x - 3 > (x + 2) \left(1 - \frac{1}{x}\right) = x + 2 - \frac{x + 2}{x}
$$

Adding  $3 + \frac{x + 2}{x}$  to both sides, subtracting 2 from both sides, and rewriting in the reverse direction (for ease of reading), we obtain

$$
x + 3 <   x - 2 + \frac{x + 2}{x}
$$

Since  $x - 2 < x + 2$ , we deduce that

$$
x + 3 <   x + 2 + \frac{x + 2}{x}
$$

and factoring tells us

$$
x + 3 <   (x + 2) \left(1 + \frac{1}{x}\right)
$$

Again, since  $x + 2 > 0$ , we can divide both sides by  $x + 2$ , obtaining

$$
\frac{x + 3}{x + 2} <   1 + \frac{1}{x}
$$

which was the desired inequality. This shows  $P(x) \Rightarrow Q(x)$ , and since  $x$  was arbitrary, we have proven the claim.

A key lesson here lies in how we took our scratch work and presented it in a different way in our proof. We cut out the unnecessary simplification and refactoring steps, but we also noted why each step was valid as we performed it. A more seasoned mathematician would likely skip several of these steps and leave it to the reader to verify the algebraic work, but since we are early on in our mathematical careers, we thought it would be prudent to show as many details as possible.

# Contrapositive Method

Look back to Section 4.6.1. There, we proved that a conditional statement is logically equivalent to its contrapositive. That is, the conditional statement

$$
P \Rightarrow Q
$$

necessarily has the same truth value as the statement

$$
\neg Q \Rightarrow \neg P
$$

For this reason, when we try to prove  $P \Rightarrow Q$  is valid, we can just prove that  $\neg Q \Rightarrow \neg P$  is valid, instead! Depending on what  $P$  and  $Q$  are, maybe this contrapositive is easier to understand, or we can spot a proof more quickly. In fact, the contrapositive strategy is particularly useful when  $P$  (or  $Q$ , or maybe both) has a "not" in it somewhere; by considering its negation, we can work instead with a "positive" assertion, instead of a negation.

# Strategy:

Claim:  $P \Longrightarrow Q$

Contrapositive proof strategy:

Suppose that  $\neg Q$  holds. Prove that  $\neg P$  holds.

(Notice that this is the direct proof strategy applied to  $\neg Q\Rightarrow \neg P.$ )

Example 4.9.9. Even products of integers:

Statement: Let  $E(x)$  be the proposition "  $x$  is even".

We claim that

$$
\forall m, n \in \mathbb {Z}. E (m \cdot n) \Rightarrow (E (m) \vee E (n))
$$

Said another way, whenever the product of two integers is even, this necessarily means that at least one of the integers is even.

# Implementation:

Proof. We prove this by contrapositive.

Let  $m, n \in \mathbb{Z}$  be arbitrary and fixed.

Suppose that  $\neg E(m) \land \neg E(n)$ .

This means that  $m$  is odd and  $n$  is odd.

This means  $\exists k, \ell \in \mathbb{Z}$ .  $m = 2k + 1 \wedge n = 2\ell + 1$ .

Let such  $k,\ell$  be given. Then,

$$
m \cdot n = (2 k + 1) (2 \ell + 1) = 4 k \ell + 2 k + 2 \ell + 1 = 2 (2 k \ell + k + \ell) + 1
$$

Since  $2k\ell + k + \ell \in \mathbb{Z}$ , as well, this shows that  $m \cdot n$  is odd.

Thus,  $\neg E(m\cdot n)$  holds, so we have shown that

$$
\left(\neg E (m) \wedge \neg E (n)\right) \Longrightarrow \neg E (m \cdot n)
$$

The claim follows by contrapositive.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/44fa662e-a015-46fb-8608-ecf0fb518d19/d13756b61caccc65ee799ac7a1d643222b07053cd9aecc3238f3e545abbe1aa6.jpg)

Notice that we pointed out for our reader, at the beginning of the proof, that we would be using the contrapositive method. If we don't do that, the reader might be confused! "Why are we supposing that  $\neg E(m)$  holds? What good is that?!", our reader might wonder. By revealing our strategy beforehand, we ensure that our reader will be able to follow along, avoiding unnecessary bewilderment.

# Indirect Method (Proof By Contradiction)

This method depends on the logical negation of conditional statements. Reread Section 4.7 to see where we proved that

$$
\neg (P \Rightarrow Q) \iff (P \land \neg Q)
$$

This proof technique makes use of this equivalence.

# Strategy:

Claim:  $P \Longrightarrow Q$

Indirect proof strategy:

AFSOC that  $P$  holds and suppose that  $Q$  fails. Find a contradiction.

Example 4.9.10. A surprising form of the AGM Inequality:

Statement:  $\forall x\in \mathbb{R}$ $x > 0\Rightarrow x + \frac{1}{x}\geq 2$

Let's jump right into this proof without doing any scratch work, because we think this proof reads fairly straightforwardly. Afterwards, we'll discuss an alternate strategy.

# Implementation:

Proof. Let  $x \in \mathbb{R}$  be arbitrary and fixed.

Suppose  $x > 0$

AFSOC that  $x + \frac{1}{x} < 2$ .

Since  $x > 0$ , we can multiply through this inequality by  $x$ , yielding

$$
x^{2} + 1 <   2 x
$$

Subtracting and factoring, we obtain

$$
(x - 1)^{2} <   0
$$

This is a contradiction, since  $(x - 1)^2 \geq 0$ .  $\times$

Thus, our original assumption is invalid, and the claim follows.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/44fa662e-a015-46fb-8608-ecf0fb518d19/8db7ec95ed7d99ece1d1e94fb4c5240f426039c05ff103840f4c11b8aa41ed7b.jpg)

Now, you might be wondering about the title for this example. What does this have to do with the AGM Inequality? (Recall that we proved that fact back in Section 4.9.2.) An astute reader will possibly recognize that not only is this fact here an inequality (like the AGM), but also a couple of steps in this proof are similar to what we did to prove the AGM Inequality. Specifically, to prove the AGM Inequality, we started by using the fact that a particular squared expression is non-negative. Likewise, in this proof, we appealed to the fact that a squared expression should be non-negative. This similarity between the proofs indicates some potential underlying relationship. Indeed, we can actually directly apply the AGM Inequality (in a clever way, mind you!) to prove the above fact in a different way.

Think about this for a few minutes and see if you can come up with the following proof, before we show you how it works. What does it mean to apply the AGM Inequality? That result holds for any  $x$  and  $y$ , but here we have just one  $x$ . Can we be crafty about choosing what  $y$  should be so that the result here just "falls out" immediately? Try it! Then, read on …

Proof. Let  $x \in \mathbb{R}$  be arbitrary and fixed. Suppose  $x > 0$ .

Define  $y = \frac{1}{x}$ , so  $y\in \mathbb{R}$ .

Then, the AGM inequality applies to  $x$  and  $y$  (since that fact holds for arbitrary  $x, y \in \mathbb{R}$ ). This tells us that

$$
x \cdot {\frac{1}{x}} \leq \left({\frac{x + {\frac{1}{x}}}{2}}\right)^{2}
$$

Simplifying both sides slightly yields

$$
1 \leq \frac{1}{4} \left(x + \frac{1}{x}\right)^{2}
$$

and then multiplying both sides by 4 yields

$$
4 \leq \left(x + \frac{1}{x}\right)^{2}
$$

Since both sides are non-negative, we can take the square root of both sides and deduce that

$$
2 \leq x + \frac{1}{x}
$$

This proves the claim.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/44fa662e-a015-46fb-8608-ecf0fb518d19/dc264bf04ef646bf33c4470d10fbe47f51d03cebb0ecdc6afa33ee4ba6dfe444.jpg)

There's a lesson here:

Always be on the lookout for similarities between arguments and proofs, not just the results that are proven.

You might be able to save yourself some work by applying another result that has already been proven! (In this case, we didn't save ourselves too much writing; however, we might have saved ourselves some time, if we hadn't already noticed that the contradiction method would be fruitful. In particular, we might not have thought of the factoring trick that comes up in our first proof.)

# 4.9.6 Proving  $\iff$  Claims

Recall that the " $\Longleftrightarrow$ " connective is defined entirely in terms of the " $\Longrightarrow$ " connective. That is, asserting that

$$
P \Longleftrightarrow Q
$$

is logically equivalent to asserting two conditional statements:

$$
\left(P \Rightarrow Q\right) \wedge \left(Q \Rightarrow P\right)
$$

This gives rise to an obvious strategy: prove one conditional statement, then prove the other! The most common mistake we notice is when someone simply proves one statement or the other, but not both. Always keep that in mind!

# Direct Method

# Strategy:

Claim:  $P \Longleftrightarrow Q$

Direct proof strategy:

Prove that  $P \Rightarrow Q$  (using one of the methods above).

Prove that  $Q \Longrightarrow P$  (using one of the methods above).

Example 4.9.11. Even squares of integers:

Statement: An integer is even if and only if its square is even.

Let's rewrite this claim using logical symbolic notation.

Let  $E(z)$  be the proposition "  $z$  is even". Then we claim that

$$
\forall z \in \mathbb {Z}. \left(E (z) \Longleftrightarrow E \left(z^{2}\right)\right)
$$

# Implementation:

Proof. Let  $z \in \mathbb{Z}$  be arbitrary and fixed.

$(\Rightarrow)$  First, assume  $z$  is even, so  $\exists k \in \mathbb{Z}$ .  $z = 2k$ . Let such a  $k$  be given.

Since  $z = 2k$ , we can square both sides and obtain

$$
z^{2} = (2 k)^{2} = 4 k^{2} = 2 (2 k^{2})
$$

Define  $\ell = 2k^2$ . Notice that  $\ell \in \mathbb{Z}$  and  $z^2 = 2\ell$

This shows that  $z^2$  is even.

Thus,  $E(z) \Rightarrow E(z^2)$ .

$(\Longleftarrow)$  Second, we will prove  $E(z^2) \Rightarrow E(z)$  by contrapositive.

Suppose  $z$  is odd, so  $\exists m\in \mathbb{Z}$ $z = 2m + 1$  . Let such an  $m$  be given.

Since  $z = 2m + 1$ , we can square both sides and obtain

$$
z^{2} = (2 m + 1)^{2} = 4 m^{2} + 4 m + 1 = 2 (2 m^{2} + 2 m) + 1
$$

Define  $n = 2m^2 + 2m$ . Notice that  $n \in \mathbb{Z}$  and  $z^2 = 2n + 1$ .

This shows that  $z^2$  is odd.

Thus,  $\neg E(z) \Rightarrow \neg E(z^2)$ ; by contrapositive, then,  $E(z^2) \Rightarrow E(z)$ .

Since we have shown both directions, we conclude that

$$
E (z) \Longleftrightarrow E (z^{2})
$$

and since  $z$  was arbitrary, this biconditional holds for all integers  $z$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/44fa662e-a015-46fb-8608-ecf0fb518d19/28d417b2e0aa71d2262093ac737280d5dcafd4ce51820650f9ccef686f199c25.jpg)

# Indirect Method (Proof by Contradiction)

# Strategy:

Claim:  $P \Longleftrightarrow Q$

Indirect proof strategy:

AFSOC that  $\neg (P\Rightarrow Q)\lor \neg (Q\Rightarrow P)$

Consider the first case, where  $P \wedge \neg Q$  holds. Find a contradiction.

Consider the second case, where  $Q \wedge \neg P$  holds. Find a contradiction.

Implementing this strategy—and deciding when to do so, even—depends on the actual statements  $P$  and  $Q$ . In general, a direct method will probably be better (not always), but if you find yourself getting stuck, consider looking at the negations  $P \land \neg Q$ , and  $Q \land \neg P$ —and see if that takes you anywhere. It's worth a try!

# Intermediary Method (TFAE)

For lack of a better term, we are going to call this strategy an intermediary method. As you'll see, it's not exactly a direct method, but neither is it an indirect method. In implementing this strategy, we don't have to look at any logical negations, but we also aren't directly linking the statements  $P$  and  $Q$ .

Rather, this method requires us to find some intermediary statement  $R$  and proving two biconditional statements: namely,  $P \Longleftrightarrow R$  and  $R \Longleftrightarrow Q$ . This yields the following chain of conditional statements

$$
P \Longleftrightarrow Q \Longleftrightarrow R
$$

which tells us that all three statements have the same truth value. In particular, then,  $P$  and  $Q$  must always have the same truth value, so we conclude that  $P \Longleftrightarrow Q$ .

The acronym TFAE stands for "the following are equivalent". We chose this name because it is a common phrase in mathematics; it is used in theorems that present a list of conditions/properties that all "imply each other". That

is, some theorems list several properties and assert that all of them are logically equivalent, whence "the following are equivalent". To prove such a theorem, one would implement the above strategies over and over and prove that the statements are, indeed, equivalent. The only difference here is that we have to come up with the intermediary statement to use. (But hey, whoever presented and proved a TFAE-style theorem probably had to come up with all of those statements to begin with, too!)

# Strategy:

Claim:  $P \Longleftrightarrow Q$

Intermediary strategy:

Define a statement  $R$ .

Prove that  $P \Longleftrightarrow R$  (using one of the methods above). Prove that  $Q \Longleftrightarrow R$  (using one of the methods above).

# 4.9.7 Disproving Claims

We have now discussed (and seen, in many examples) how to prove any kind of mathematical statement. Fantastic! But you might be saying, "Uh oh … What if I want to disprove a statement?" Our answer to that question is short and sweet: there's no difference.

To disprove a statement means you want to show its truth value is False. By the definition of logical negation, this means you want to show that the statement's negation has the truth value True. Accordingly, you can just find and write down that logical negation and prove that statement to be True, using any of the strategies we have explored in this section. Voilá!

Just for the sake of illustration let's see an example of this phenomenon in action. Specifically, we'll see an example where we want to disprove a " $\forall$ " claim, meaning we want to prove a " $\exists$ " claim. This is where the notion of a counterexample comes into play.

# Counterexamples

In general, a counterexample is an instance of a statement that disproves a universal quantification. It's an example because it works to prove an " $\exists$ " claim, and it's counter in the sense that it shows this specific examples does not have the claimed property.

Example 4.9.12. Look back to Example 4.9.8. In it, we defined the set

$$
S = \{x \in \mathbb {R} \mid x > 0 \}
$$

and then defined two variable propositions:

$$
P (x) \text{is} “ \frac{x - 3}{x + 2} > 1 - \frac{1}{x} ”
$$

$$
Q (x) \text{is} “ \frac{x + 3}{x + 2} <   1 + \frac{1}{x} ”
$$

Then, we proved that

$$
\forall x \in S. P (x) \Rightarrow Q (x)
$$

In this example, we will consider the statement

$$
\forall x \in S. Q (x) \Rightarrow P (x)
$$

Specifically, we will disprove it. Before we do that, though, play around with the statement on your own. Try to prove it, even though we essentially just told you it's False! Do you find your "proof" breaking down somewhere? Why is that happening? Can you use your observation to help you find a counterexample to the claim? See what you can find, then read on.

# Scratch work:

To start, we need the logical negation of the claim we are disproving:

$$
\exists x \in S. Q (x) \wedge \neg P (x)
$$

This means we need to find a specific real number  $x$  that satisfies three conditions: (1) the inequality  $x > 0$ , (2) the inequality

$$
\frac{x + 3}{x + 2} <   1 + \frac{1}{x}
$$

and (3) the inequality

$$
\frac{x - 3}{x + 2} \leq 1 - \frac{1}{x}
$$

There are a few strategies we could use. Like we mentioned above, we could try to (erroneously, of course) prove that the first inequality does, indeed, imply the second one, and ascertain where this breaks down. Alternatively, we could "try some values" using an "educated guess" method.

Knowing that  $x \in \mathbb{R}$  and  $x > 0$  indicates, to us anyway, that we might want to try "extreme" values of  $x$ . This means either "small"  $x$  (i.e.  $x$  close to 0) or "large"  $x$  (i.e. ever-increasing values of  $x$ , that grow larger until we find one that works).

It seems easier to first work with some "small" values, so let's try  $x = 1$ . We see that (1) holds because  $1 > 0$ , and (2) holds because  $\frac{4}{3} < 2$ , and (3) holds because  $-\frac{2}{3} < 0 \leq 0$ . Cool, that's it!

Proof. Here, we will disprove the claim that  $\forall x\in \mathbb{R}$ $Q(x)\Rightarrow P(x)$

Consider  $x = 1$ . Notice that  $x \in \mathbb{R}$  and  $x > 0$ .

Also, notice that  $Q(1)$  holds because

$$
\frac{1 + 3}{1 + 2} = \frac{4}{3} <   2 = 1 + \frac{1}{1}
$$

Also, notice that  $P(1)$  fails because

$$
\frac{1 - 3}{1 + 2} = - \frac{2}{3} \neq 0 = 1 - \frac{1}{1}
$$

Thus, we have shown that

$$
\exists x \in S. Q (x) \wedge \neg P (x)
$$

and this disproves the claim.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/44fa662e-a015-46fb-8608-ecf0fb518d19/7f6ecdbe25d382c31a1c188eecd0bef6f2a851f7acc40cf0da9ecdd501427c08.jpg)

# 4.9.8 Using assumptions in proofs

Another important aspect of creating and writing formal proofs is that we are sometimes given assumptions to use. When we state a theorem, it usually has some hypotheses and a conclusion. We get to temporarily add those assumptions to our mathematical toolkit; we can use them to get to the desired conclusion. Similarly, along the way, we might develop some further facts and observations, and we can keep those with us and use them to prove the conclusion, as well. In this short section, we want to point out three observations and issues that may come up while you are using an assumption in a proof.

# "  $P\vee Q$  " means Use Cases

If, at some point in a proof, you have assumed or deduced that  $P \lor Q$  holds, how can you proceed? Knowing this disjunction holds means that at least one of the constituent statements— $P$  or  $Q$ —holds. Thus, you can consider each of those two cases separately. For example, your proof might have this section in it:

Because  $P \vee Q$ , We have two cases.

Case 1: Suppose  $P$  holds. Then …

Case 2: Suppose  $Q$  holds. Then …

As long as you can achieve your desired goal in both cases, you can make that deduction.

Notice that there is no need to consider the case where both  $P$  and  $Q$  hold. For one, this might not necessarily even happen. But also, if you only end up using one or the other of the statements to deduce your desired conclusion, then there was no need to temporarily assume both of them.

We have been using cases all along in some of our proofs. Now, we see exactly why they work! We use cases when there is an underlying disjunction of statements.

"There exists …" vs. "Let … be given"

This is a subtle but important distinction. If you write down a claim like

$$
\exists x \in S. P (x)
$$

in the middle of a proof, what have you asserted? Technically speaking, you have really only stated that the line above is a True statement; you have asserted that there does exist some  $x \in S$  with the property  $P(x)$ . But, if you move and start referring to  $x$  afterwards … this is not valid! Nowhere in the assertion of existence did you introduce a particular instance of that claim. It might be the case that several such  $x$  elements exist. Do you want to talk about all of them? Or just a particular one? Don't leave it up to the reader of your proof to intuit exactly what you're doing!

If you know, or have assumed, some existence statement (like the line above) and you want to actually introduce a variable that satisfies that existence claim, use the following wonderful phrase:

"Let such an  $x$  be given."

This signals to the reader that not only are you saying such an  $x$  exists, but you are also bringing it into play in your proof. You want the letter  $x$ , for the rest of your written argument, to represent an element with that property. Thereafter, you get to refer to that object  $x$  by name.

If you assert the existence of several variables and want to introduce them, just use a similar phrase with a slightly different verb. For instance, you might write something like this:

… and so we deduce that  $\exists x, y, z \in \mathbb{Z}$  such that  $P(x, y, z)$  holds.

Let such  $x,y,z$  be given. Observe that …

$$
" P \Rightarrow Q" \text{vs .} " P, \text{th er ef or e} Q"
$$

This distinction hinges on an idea similar to the previous example we just mentioned. Specifically, there is a difference between writing a statement to assert its validity and writing a statement to show the reader you are making a conclusion from it. In the last example, this was the distinction between saying something exists versus introducing such an object.

Here, the distinction lies between asserting a conditional statement—like  $P \Rightarrow Q$  to say that this conditional relationship exists versus using this statement to deduce that  $Q$  holds. Technically speaking, just writing " $P \Rightarrow Q$ " on your paper does not assert that  $Q$  is valid. You must make it very clear to your reader that you also know  $P$  and are using the conditional statement to deduce  $Q$ .

Look back at our discussion in Section 4.5.6. There, we described this important distinction, and referred to the method of "Modus ponens". As we mentioned, if you want to actually deduce  $Q$ , you should write something like:

$P\Rightarrow Q$  because…

Also,  $P$  holds because  $\ldots$

Therefore,  $Q$  holds.

# 4.9.9 Questions & Exercises

# Remind Yourself

Answering the following questions briefly, either out loud or in writing. These are all based on the section you just read, so if you can't recall a specific definition or concept or example, go back and reread that part. Making sure you can confidently answer these before moving on will help your understanding and memory!

(1) What is the Direct Method for an  $\exists$  claim? What are the important steps in showing an object exists?  
(2) What is the Direct Method for an  $\Longrightarrow$  claim? How do we prove a  $\Longrightarrow$  claim by contradiction? How are these methods different?  
(3) How do we prove a  $\Longleftrightarrow$  claim?  
(4) What is the AGM Inequality? Where does the acronym come from?  
(5) To which type of claim does the Contrapositive Strategy apply? Why does it work?  
(6) What is a counterexample?  
(7) What is the difference between saying " $\exists a \in A$ .  $P(a)$ " and saying " $\exists a \in A$ .  $P(a)$  so let such an  $a$  be given"?

# Try It

Try answering the following short-answer questions. They require you to actually write something down, or describe something out loud (to a friend/classmate, perhaps). The goal is to get you to practice working with new concepts, definitions, and notation. They are meant to be easy, though; making sure you can work through them will help you!

(1) Prove that  $\forall x\in \mathbb{R}$ $x^{2}\neq 1\Rightarrow x\neq 1$  
(2) Prove that  $\forall n\in \mathbb{N}$ $n\geq 5\Rightarrow 2n^{2} > (n + 1)^{2}$  
(3) Express the following claim in logical symbols, and then prove it.

There exists an even natural number that can be written as the sum of two primes in two different ways.

(4) Prove that every natural number is either less than  $\sqrt{10}$  or bigger than 3. That is, prove

$$
\forall n \in \mathbb {N}. n <   \sqrt{1 0} \vee n > 3
$$

(5) Let  $A, B, C, D$  be sets. Prove that, if  $A \cup B \subseteq C \cup D$  and  $C \subseteq A$  and  $A \cap B = \emptyset$ , then  $B \subseteq D$ .  
(6) Define  $P = \{y\in \mathbb{R}\mid y > 0\}$ . Prove that

$$
\forall \varepsilon \in P. \forall x, y \in \mathbb {R}. \exists \delta \in P. | x - y | <   \delta \Longrightarrow | (3 x - 4) - (3 y - 4) | <   \varepsilon
$$

Can you also prove the following claim? How is it different than the one above?

$$
\forall \varepsilon \in P. \exists \delta \in P. \forall x, y \in \mathbb {R}. | x - y | <   \delta \Rightarrow | (3 x - 4) - (3 y - 4) | <   \varepsilon
$$

(7) Let  $E(x)$  be the proposition "  $x$  is even". Prove that

$$
\forall a, b \in \mathbb {Z}. E (a) \wedge E (b) \Longleftrightarrow E (a + b) \wedge E (a \cdot b)
$$

(8) Look back at the proof that  $\sqrt{2}$  is irrational. Modify it to provide a proof that  $\sqrt{3}$  is irrational, as well.

Try to do the same and prove that  $\sqrt{6}$  is irrational.

Challenge: Can you prove that  $\sqrt{p}$  is irrational for every prime number  $p$ ?

(9) Prove that there are infinitely many rational numbers.

Hint: Do this by contradiction. (Suppose there are finitely many …)

# 4.10 Summary

We now have a huge toolkit of mathematical proof strategies! We developed the necessary terminology and symbols to properly express mathematical claims. Then, we used the concepts underlying those to develop proof strategies and saw many examples of how they are used.

One of the more difficult aspects of writing a proof is figuring out the proof in the first place! This involves not only figuring out whether a claim is True or False, but also ultimately deciding which proof strategy to implement. We realize this is challenging because, well, it is … Furthermore, it's difficult to characterize exactly when to use certain strategies. We can offer guidelines and suggestions (and have done so as much as possible) but, in the long run, the best way to get better at implementing proof strategies and deciding which ones to use is to just do it. Approach an exercise problem. Try to play with the statement and see why it is True (or False, as the case may be). Try using a

proof strategy on it. Did it work? How? If it didn't, why and where did it break down? Can you use those observations to decide on a different approach to the problem? Ultimately, can you write down a good, formal argument? Working through these steps on as many problems as possible truly is the best practice. There is no substitute for simply doing mathematics.

# 4.11 Chapter Exercises

These problems incorporate all of the material covered in this chapter, as well as any previous material we've seen, and possibly some assumed mathematical knowledge. We don't expect you to work through all of these, of course, but the more you work on, the more you will learn! Remember that you can't truly learn mathematics without doing mathematics. Get your hands dirty working on a problem. Read a few statements and walk around thinking about them. Try to write a proof and show it to a friend, and see if they're convinced. Keep practicing your ability to take your thoughts and write them out in a clear, precise, and logical way. Write a proof and then edit it, to make it better. Most of all, just keep doing mathematics!

Short-answer problems, that only require an explanation or stated answer without a rigorous proof, have been marked with a  $\triangleright$ .

Particularly challenging problems have been marked with a  $\star$ .

Problem 4.11.1.  $\triangleright$  Consider the universal context to be  $U = \mathbb{Z}$

Let  $P(x)$  be the proposition "  $1\leq x\leq 3$

Let  $Q(x)$  be the proposition "  $\exists k\in \mathbb{Z},x = 2k$  .

Let  $R(x)$  be the proposition "  $x^{2} = 4$  ".

Let  $S(x)$  be the proposition " $x = 1$ "

For each of the following statements, write out an English sentence to describe what the statement means, then write the logical negation, and then decide which claim is True or False, and why.

(a)  $\forall x\in \mathbb{Z}$ $P(x)\Rightarrow Q(x)$  
(b)  $\exists x\in \mathbb{Z}$ $R(x)\wedge P(x)$  
(c)  $\forall x\in \mathbb{Z},R(x)\Rightarrow P(x)$  
(d)  $\forall x\in \mathbb{Z}$ $\exists y\in \mathbb{Z}$ $x\neq y\land P(x)\land R(y)$  
(e)  $\forall x\in \mathbb{Z}$  .  $\exists y\in \mathbb{Z}$  .  $(S(x)\lor Q(x))\land P(y)\land \neg Q(y)$  
(f)  $\exists x\in \mathbb{Z}$ $S(x)\Longleftrightarrow P(x)\wedge \neg Q(x)$  
(g)  $\exists x\in \mathbb{Z}$ $S(x)\Longleftrightarrow \neg P(x)\land Q(x)$

Problem 4.11.2. For each of the following claims, define some sets and variable propositions to express the claim in concise symbolic, logical notation. Then, write the logical negation, as well. Note which one is True or False.

(a) Every odd natural number is prime.  
(b) There is a real number that is strictly greater than any integer squared.  
(c) Some real number between  $-1$  and  $1$  has the property that it is equal to the cube of some different real number between  $-1$  and  $1$ .  
(d) The union of the sets of multiples of primes is the set of natural numbers itself.

Problem 4.11.3. Consider the following defined sets and questions about those sets. For each question, if your answer is No, provide an example to demonstrate this.

(a) Let  $S = \{1,2,3,4\}$  and  $T = \{3,4,5,6,7,8\}$ .

Is it true that  $\forall s\in S.\exists t\in T.s + t = 7?$

(b) Let  $S = \{2, 3, 4, 5, 6\}$  and  $T = \{3, 4, 5, 6\}$ .

Is it true that  $\forall s\in S.\exists t\in T.s + t = 7?$

(c) Let  $S = \mathbb{N}$  and  $T = \mathbb{Z}$ .

Is it true that  $\forall s\in S.\exists t\in T.s + t = 7?$

(d) Let  $S = \mathbb{Z}$  and  $T = \mathbb{N}$ .

Is it true that  $\forall s\in S.\exists t\in T$ $s + t = 7?$

Problem 4.11.4. Consider the following defined sets and questions about those sets. For each question, if your answer is No, provide an example to demonstrate this.

(a) Let  $S = \{1,2,3\}$ ,  $T = \{6,7,8,9\}$ , and  $V = \{7,8,9,10\}$ .

Is it true that  $\exists s\in S.\forall t\in T.\exists v\in V.s + t = v?$

(b) Let  $S = \{1,2,3\}$ ,  $T = \{4,5,6,7\}$ , and  $V = \{5,6,7,9,10,11\}$ .

Is it true that  $\exists s\in S.\forall t\in T.\exists v\in V.s + t = v?$

(c) Let  $S = T = V = \mathbb{N}$

Is it true that  $\exists s\in S.\forall t\in T.\exists v\in V.s + t = v?$

(d) Let  $S = \mathbb{N}$ ,  $T = \mathbb{Z}$ , and  $V = \mathbb{N}$ .

Is it true that  $\exists s\in S.\forall t\in T.\exists v\in V.s + t = v?$

Problem 4.11.5. Prove or disprove the following claim rigorously:

$$
\exists x \in \mathbb {R}. \forall y \in \mathbb {R}. x^{2} - y^{2} \geq 0
$$

Problem 4.11.6. Prove or disprove the following claim rigorously:

$$
\forall x, y \in \mathbb {Z}. \exists z \in \mathbb {N} \cup \{0 \}. ((x - y) = z) \vee ((y - x) = z)
$$

Problem 4.11.7. Prove that there are no integral solutions (i.e.  $x, y \in \mathbb{Z}$ ) to the equation  $x^{2} - y^{2} = 14$ .

Problem 4.11.8.

Problem 4.11.9.

Problem 4.11.10.

Problem 4.11.11.

Problem 4.11.12. Use logical equivalences to prove that

(a)  $(A\cup B)\cap \overline{A} = B - A$  
(b)  $A\cap (B - C) = (A\cap B) - (A\cap C)$

Problem 4.11.13. Define the sets

$$
A = \left\{(x, y) \in \mathbb {R} \times \mathbb {R} \mid \frac{x}{y} + \frac{y}{x} \geq 2 \right\}
$$

and

$$
B = \{(x, y) \in \mathbb {R} \times \mathbb {R} \mid (x > 0 \wedge y > 0) \vee (x <   0 \wedge y <   0) \}
$$

Is it the case that  $A \subseteq B$ ? If so, prove it. Otherwise, exhibit a counterexample.

Is it the case that  $B \subseteq A$ ? If so, prove it. Otherwise, exhibit a counterexample.

Problem 4.11.14. Let  $P = \{y \in \mathbb{R} \mid y > 0\}$  be the set of positive real numbers.

Prove the following claim:

$$
\forall \varepsilon \in P. \exists \delta \in P. \forall x \in \mathbb {R}. | x | <   \delta \Rightarrow | x^{2} | <   \varepsilon
$$

Problem 4.11.15. What is wrong with the following "proof" of the claim that  $\mathcal{P}(C \cup D) = \mathcal{P}(C) \cup \mathcal{P}(D)$ ?

Let  $X\in \mathcal{P}(C\cup D)$  be arbitrary and fixed.

This means  $X \subseteq C \cup D$ .

So,  $X\subseteq C\vee X\subseteq D$

Then,  $X\in \mathcal{P}(C)\lor X\in \mathcal{P}(D)$

Thus,  $X\in \mathcal{P}(C)\cup \mathcal{P}(D)$

Therefore,  $\mathcal{P}(C\cup D) = \mathcal{P}(C)\cup \mathcal{P}(D)$

Problem 4.11.16. Suppose  $x \in \mathbb{Z}$  and  $x^2$  is a multiple of 8. Prove that  $x$  is even.

Is the converse of this statement True? If so, prove it; otherwise, exhibit a counterexample.

Problem 4.11.17. Define the proposition  $E(z)$  to be " $z$  is even. Prove that

$$
\forall z \in \mathbb {Z}. E (z) \Longleftrightarrow E \left(z^{3}\right)
$$

Problem 4.11.18. Use the result of Problem 4.11.17 to prove that  $\sqrt[3]{2}$  is irrational.

Problem 4.11.19. Let  $P = \{y \in \mathbb{R} \mid y > 0\}$ . Prove that

$$
\bigcap_{x \in P} \left\{y \in \mathbb {R} \mid 1 - \frac{1}{x} <   y <   2 \right\} = \left\{z \in \mathbb {R} \mid 1 <   z <   2 \right\}
$$

Problem 4.11.20. Let  $A, B, C \subseteq U$  be sets. Define

$$
S = \left(\left(A \cap \bar {B}\right) \cup C\right) - A
$$

and

$$
T = C - (A \cup B)
$$

Is  $S \subseteq T$ ? If so, prove it; otherwise, find a counterexample.

Is  $T \subseteq S$ ? If so, prove it; otherwise, find a counterexample.

Problem 4.11.21. For each  $x \in \mathbb{R}$ , define the set

$$
S_{x} = \{y \in \mathbb {R} \mid - x \leq y \leq x \}
$$

Also, define the set

$$
P = \{y \in \mathbb {R} \mid y > 0 \}
$$

Prove each of the following claims.

$$
\bigcap_{x \in P} S_{x} = \{0 \}
$$

$$
\bigcap_{x \in \mathbb {N}} S_{x} = \{y \in \mathbb {R} \mid - 1 \leq y \leq 1 \}
$$

Problem 4.11.22. Let  $P(x)$  be the variable proposition

$$
“ \frac{x^{2} + 4}{x^{2} + 1} <   1 + \frac{1}{x} ”
$$

and let  $Q(x)$  be the variable proposition

$$
“ \frac{x^{2} - 4}{x^{2} + 1} > 1 - \frac{1}{x} ”
$$

Also, let  $S = \{x \in \mathbb{R} \mid x > 0\}$  be the set of positive real numbers.

For each of the following statements determine whether it is True (in which case, provide a proof) or False (in which case, provide a counterexample and demonstrate why it is valid).

(a)  $\forall x\in S,P(x)\Rightarrow Q(x)$  
(b)  $\forall x\in S.Q(x)\Rightarrow P(x)$

Problem 4.11.23. Let  $A$  and  $B$  be any two sets. Prove that

$$
A \times B = B \times A \Longleftrightarrow (A = B \vee A = \varnothing \vee B = \varnothing)
$$

(Don't forget that this is an if and only if claim!)

Problem 4.11.24. Let  $A, B, C, D$  be any sets. Prove that

$$
(A \times B) \cap (C \times D) = \varnothing \iff (A \times B = \varnothing \vee C \times D = \varnothing)
$$

Problem 4.11.25. Let  $B$  be any set. Let  $I$  be an index set, and let  $A_{i}$  be a set for every  $i \in I$ . Prove the following set equalities:

(a)  $\left(\bigcap_{i\in I}A_i\right) - B = \bigcap_{i\in I}(A_i - B)$  
(b)  $\left(\bigcup_{i\in I}A_i\right) - B = \bigcup_{i\in I}(A_i - B)$  
(c)  $\left(\bigcap_{i\in I}A_i\right)\times B = \bigcap_{i\in I}(A_i\times B)$  
(d)  $\left(\bigcup_{i\in I}A_i\right)\times B = \bigcup_{i\in I}(A_i\times B)$  
(e)  $B - \left(\bigcap_{i\in I}A_i\right) = \bigcup_{i\in I}(B - A_i)$  
(f)  $B - \left(\bigcup_{i\in I}A_i\right) = \bigcap_{i\in I}(B - A_i)$

Problem 4.11.26. In this problem, you will prove that the rational numbers  $\mathbb{Q}$  are dense. Namely, we want you to consider the following proposition:

Proposition. Strictly between any two distinct rational numbers lies another rational number.

Restate this claim using logical symbols, and then prove it.

Problem 4.11.27. This problem is meant to introduce the concept of uniqueness. We say an object with a certain property is unique if it has the desired property but no other object has that property.

That is, we would say  $x$  is the unique element of  $S$  with property  $P(x)$  if and only if

$$
\exists x \in S. P (x) \land (\forall y \in S. y \neq x \Rightarrow \neg P (y))
$$

Notice that this is logically equivalent to

$$
\exists x \in S. P (x) \wedge (\forall y \in S - \{x \}. \neg P (y))
$$

Also, we can write the contrapositive instead:

$$
\exists x \in S. P (x) \land (\forall y \in S. P (y) \Rightarrow x = y)
$$

Use this to restate the following claim in logical symbols. Then, prove it.

Claim: There is a unique natural root of the equation  $n^3 - n - 6 = 0$ .

Problem 4.11.28. This problem provides a definition of a new set operation (defined in terms of others) and asks you to prove several set containments and equalities, using this operation.

Definition: Let  $A, B$  be sets. The symmetric difference of  $A$  and  $B$  is denoted by  $A\Delta B$  and is defined as

$$
A \Delta B = (A - B) \cup (B - A)
$$

Now, let  $A,B,C$  be any sets. Prove the following:

(a)  $A\Delta A = \emptyset$  
(b)  $A\Delta B = B\Delta A$  
(c)  $A\Delta \emptyset = \emptyset$  
(d)  $A \subseteq B \Rightarrow A\Delta B = B - A$  
(e)  $A\Delta (B\Delta C) = (A\Delta B)\Delta C$  
(f)  $\overline{A}\Delta \overline{B} = A\Delta B$  (supposing  $A,B\subseteq U$  
(g)  $(A\Delta B)\cap C = (A\cap C)\Delta (B\cap C) = (A\Delta B) - C$

Problem 4.11.29. In this problem, you will prove a useful result about primality testing. Much of modern cryptography is based on factoring large composite numbers into its prime factors. The following proposition says that we only need to check up until  $\sqrt{p}$  for factors of  $p$ .

Proposition. Let  $p$  be a natural number that is at least 2. If none of the natural numbers between 2 and  $\sqrt{p}$  (inclusive) divide  $p$ , then  $p$  is prime.

Recall: The formal definition of "  $|$  " is

Given  $a, b \in \mathbb{Z}$ , we write  $a \mid b$  if and only if  $\exists k \in \mathbb{Z} \cdot b = ak$ .

Restate the above proposition using logical symbols. Then, prove it.

(Hint: Think about the contrapositive of the claim …

Problem 4.11.30. Let  $A, B$  be any sets. Prove the following claim:

$$
A \times B = B \times A \Longleftrightarrow (A = B \vee A = \emptyset \vee B = \emptyset)
$$

Problem 4.11.31. Let  $S, T$  be sets whose elements are also sets. For each of the following statements, either prove the statement holds in general, or provide a counterexample:

(a)  $\bigcup_{X\in S\cup T}X\subseteq \left(\bigcup_{Y\in S}Y\right)\cup \left(\bigcup_{Z\in T}Z\right)$  
(b)  $\bigcup_{X\in S\cup T}X\supseteq \left(\bigcup_{Y\in S}Y\right)\cup \left(\bigcup_{Z\in T}Z\right)$  
(c)  $\bigcap_{X\in S\cup T}X\subseteq \left(\bigcap_{Y\in S}Y\right)\cap \left(\bigcap_{Z\in T}Z\right)$  
(d)  $\bigcap_{X\in S\cup T}X\supseteq \left(\bigcap_{Y\in S}Y\right)\cap \left(\bigcap_{Z\in T}Z\right)$

# 4.12 Lookahead

Now that we have all of these mathematical tools—and we've put them to good use, honing our skills with lots of exercises—we are more equipped to step out into the mathematical wilderness. We will be exploring various branches of mathematics, learning some fundamental concepts and notation, and applying our proof strategies to new and wonderful results.

Before we do that, though, we need to take care of one lingering issue: we want to formalize induction. Before, we "waved our hands" a bit about what exactly induction is and how it works. We gave you the "Domino Analogy" and used it on some example. But now we have the requisite terminology and knowledge to properly describe mathematical induction and study its various forms. It might be a good idea to flip through Chapter 2 again to remind yourself of some of the illustrative examples where we used an inductive argument. Do you remember the Domino Analogy? Can you anticipate how we might formalize the Principle of Mathematical Induction? Can you explain that theorem to a friend and convince them? Try it! Then, read on!